"""lift2: general ARM -> C++ lifter (register variables, gotos, predication, flags as a compared pair).
Same interface as lift.lift: returns [(decl_lines, body_text, calls)] or raises ValueError.
Every register is a `u32 rN` local; branches become `goto`, predicated ops become `if`. The caller verifies each
candidate by compiling it, so a lift only has to be plausible, not provably right."""
import os, re
REG = {'sp': None, 'lr': None, 'pc': None, 'ip': 12, 'fp': 11, 'sl': 10, 'sb': 9}
CONDS = ('eq', 'ne', 'hs', 'cs', 'lo', 'cc', 'mi', 'pl', 'hi', 'ls', 'ge', 'lt', 'gt', 'le')
BASES = ('mov', 'mvn', 'add', 'sub', 'rsb', 'and', 'orr', 'eor', 'bic', 'lsl', 'lsr', 'asr', 'mul', 'cmp', 'cmn', 'tst',
         'ldr', 'ldrb', 'ldrh', 'ldrsb', 'ldrsh', 'str', 'strb', 'strh', 'bl', 'blx', 'bx', 'b', 'nop', 'push', 'pop', 'orn',
         'uxth', 'sxth', 'uxtb', 'sxtb', 'mla', 'ldm', 'stm', 'ldrd', 'strd')
SETS = ('mov', 'mvn', 'add', 'sub', 'rsb', 'and', 'orr', 'eor', 'bic', 'lsl', 'lsr', 'asr', 'mul', 'orn', 'mla')

def split_mn(m):
    """-> (base, cond, setflags) or None"""
    if m in ('nop', 'bl', 'blx', 'bx', 'b', 'push', 'pop'): return m, None, False
    for b in sorted(BASES, key=len, reverse=True):
        if m.startswith(b):
            rest = m[len(b):]
            s = False
            if rest.startswith('s') and b in SETS and rest[1:] in ('',) + CONDS: s, rest = True, rest[1:]
            elif rest[-1:] == 's' and rest[:-1] in CONDS and b in SETS: s, rest = True, rest[:-1]
            if rest == '': return b, None, s
            if rest in CONDS: return b, rest, s
    return None

def fconst(w):
    """float literal for the 32-bit pattern w (decimal with 9 digits round-trips); u2f() for NaN/inf/-0"""
    import struct, math
    f = struct.unpack('<f', struct.pack('<I', w))[0]
    if math.isnan(f) or math.isinf(f) or (f == 0 and w != 0): return f'u2f({w}u)'
    t = '%.9g' % f
    if not any(ch in t for ch in '.eE'): t += '.0'
    return t + 'f'

PASS = [False]
SWAPS = [int(os.environ.get('LIFT_SWAPS', '0'))]   # base variants to expand with adjacent-statement swaps (+1.4% matches on samples, but 4x slower: off by default)
EXTRA = [0]  # minimum number of incoming register arguments (PASS variants)
CMN = [True]   # cmn lifted as an equality compare against the negated operand (else as `fx = a + b`)


def lift(I, word, fname, variants=True):
    res = []
    for cmn in (True, False):
        CMN[0] = cmn
        try:
            for v in _lift_all(I, word, fname, variants):
                if v not in res: res.append(v)
        except ValueError:
            if cmn is False and not res: raise
        finally: CMN[0] = True
    if not res: raise ValueError('no variants')
    return res

def _lift_all(I, word, fname, variants=True):
    """SSA-style variants first (a fresh variable per register write, straight-line code only), then the register-variable form."""
    res = []
    for p64 in (False, True):
        try: res += _lift(I, word, fname, True, p64)
        except ValueError: pass
    for p64 in (False, True):
        try: res += _lift(I, word, fname, False, p64)
        except ValueError:
            if not p64 and not res: raise
    for pas in (True,):
        PASS[0] = True
        try:
            for ssa in (True, False):
                try: res += _lift(I, word, fname, ssa, False)
                except ValueError: pass
        finally: PASS[0] = False
    # PASS with at least N incoming arguments: a retail temp in r2/r3/ip where r1 is free means the callee takes pass-through args
    PASS[0] = True
    try:
        for ex in (2, 3, 4):
            EXTRA[0] = ex
            for ssa in (True, False):
                try:
                    for v in _lift(I, word, fname, ssa, False):
                        if v not in res: res.append(v)
                except ValueError: pass
    finally: PASS[0] = False; EXTRA[0] = 0
    more = []
    for r in res:
        for v in (constprop(r), inline1(r)):
            if v: more.append(v)
        v = inline1(r)
        v = constprop(v) if v else None
        if v: more.append(v)
    more += [v for v in (reassoc(r) for r in res + more) if v]
    if SWAPS[0]:
        for r in (res + more)[:SWAPS[0]]: more += swaps(r)
    return res + more

def _lift(I, word, fname, ssa, p64=False):
    pool = set()   # literal-pool words decode as bogus instructions; drop them
    for m, o, a in I:
        mm = re.fullmatch(r'\w+, \[pc(?:, #(0x[0-9a-f]+|\d+))?\]', o)
        if mm and m.startswith('ldr'): pool.add(a + 8 + (int(mm.group(1), 0) if mm.group(1) else 0))
    if pool: I = [x for x in I if x[2] not in pool]
    n = len(I)
    if n == 0: raise ValueError('empty')
    start, end_addr = I[0][2], I[-1][2] + 4
    addr_idx = {a: i for i, (_, _, a) in enumerate(I)}
    targets = set()
    for m, o, a in I:
        sm = split_mn(m)
        if sm and sm[0] == 'b' and o.startswith('#'):
            t = int(o[1:], 0)
            if start <= t < end_addr: targets.add(t)
            elif t != end_addr and not (start <= t < end_addr): pass
    defined = set(); params = set(); decls = set(); calls = []; out = []; fregs = set(); fdef = set(); fparams = set(); fret = [False]; fcur = {}; fver = {}; fnew = []; lastcall = [None]
    params.update(range(EXTRA[0]))
    flags = [None]   # None | ('cmp', a, b) | ('nz', x)
    cur = {}; ver = {}; newvars = []; curpred = [None]
    if ssa and targets: raise ValueError('ssa labels')
    tmp = [0]

    def R(r):
        r = r.strip()
        if r in REG:
            if REG[r] is None: raise ValueError('reg ' + r)
            return REG[r]
        mm = re.fullmatch(r'r(\d+)', r)
        if not mm or int(mm.group(1)) > 12: raise ValueError('reg ' + r)
        return int(mm.group(1))

    frame = [0]

    def rd(r):
        if r.strip() == 'sp': return '(u32)stk'
        k = R(r)
        if k not in defined:
            if k > 3: raise ValueError('uninit r%d' % k)
            params.add(k); defined.add(k)
        return cur.get(k, 'r%d' % k) if ssa else 'r%d' % k

    wrote = set()

    def wr(r):
        k = R(r); defined.add(k); wrote.add(k)
        if not ssa: return 'r%d' % k
        if curpred[0]: raise ValueError('ssa predicated')
        ver[k] = ver.get(k, 0) + 1; cur[k] = f'r{k}_{ver[k]}'; newvars.append(cur[k]); return cur[k]

    def cname(r):
        k = R(r); return cur.get(k, 'r%d' % k) if ssa else 'r%d' % k

    def op2(s):
        s = s.strip()
        if s.startswith('#'):
            v = int(s[1:], 0)
            return str(v & 0xffffffff) + 'u'
        mm = re.fullmatch(r'(\w+), (lsl|lsr|asr) #(0x[0-9a-f]+|\d+)', s)
        if mm:
            r = rd(mm.group(1)); sh = int(mm.group(3), 0)
            if mm.group(2) == 'lsl': return f'({r} << {sh})'
            if mm.group(2) == 'lsr': return f'({r} >> {sh})'
            return f'((u32)((int){r} >> {sh}))'
        mm = re.fullmatch(r'(\w+), (lsl|lsr|asr) (r\d+|ip)', s)
        if mm:
            r = rd(mm.group(1)); sh = f'({rd(mm.group(3))} & 255)'
            if mm.group(2) == 'lsl': return f'({r} << {sh})'
            if mm.group(2) == 'lsr': return f'({r} >> {sh})'
            return f'((u32)((int){r} >> {sh}))'
        if ',' in s: raise ValueError('op2 ' + s)
        return rd(s)

    def cond(c):
        if c is None: return None
        if flags[0] is None: raise ValueError('noflags')
        if flags[0][0] == 'cmp':
            a, b = flags[0][1:]
            tab = {'eq': f'{a} == {b}', 'ne': f'{a} != {b}', 'hs': f'{a} >= {b}', 'cs': f'{a} >= {b}', 'lo': f'{a} < {b}',
                   'cc': f'{a} < {b}', 'hi': f'{a} > {b}', 'ls': f'{a} <= {b}',
                   'ge': f'(int){a} >= (int){b}', 'lt': f'(int){a} < (int){b}', 'gt': f'(int){a} > (int){b}',
                   'le': f'(int){a} <= (int){b}', 'mi': f'(int)({a} - {b}) < 0', 'pl': f'(int)({a} - {b}) >= 0'}
            return tab[c]
        if flags[0][0] == 'cmn':
            a, b = flags[0][1:]
            if c not in ('eq', 'ne'): raise ValueError('cmn cond ' + c)
            return f'{a} {"==" if c == "eq" else "!="} {b}'
        if flags[0][0] == 'fcmp':
            a, b = flags[0][1:]
            tab = {'eq': f'{a} == {b}', 'ne': f'{a} != {b}', 'hs': f'{a} >= {b}', 'cs': f'{a} >= {b}', 'lo': f'{a} < {b}',
                   'cc': f'{a} < {b}', 'hi': f'{a} > {b}', 'ls': f'{a} <= {b}', 'ge': f'{a} >= {b}', 'lt': f'{a} < {b}',
                   'gt': f'{a} > {b}', 'le': f'{a} <= {b}', 'mi': f'{a} < {b}', 'pl': f'{a} >= {b}'}
            return tab[c]
        x = flags[0][1]
        tab = {'eq': f'{x} == 0', 'ne': f'{x} != 0', 'mi': f'(int){x} < 0', 'pl': f'(int){x} >= 0'}
        if c not in tab: raise ValueError('flagcond ' + c)
        return tab[c]

    def mem(o):
        """-> (reg, address expr, pre stmt, post stmt)"""
        NUM = r'-?(?:0x[0-9a-f]+|\d+)'
        mm = re.fullmatch(r'(\w+), \[(\w+)(?:, #(%s))?\](!)?(?:, #(%s))?' % (NUM, NUM), o)
        if mm and mm.group(2) == 'sp' and (mm.group(4) or mm.group(5) is not None): raise ValueError('sp writeback')
        if mm:
            b = rd(mm.group(2))
            if mm.group(5) is not None:       # post-indexed
                k = int(mm.group(5), 0)
                return mm.group(1), b, '', f'{b} = {b} + {k}u;'
            off = int(mm.group(3), 0) if mm.group(3) else 0
            if mm.group(4):                   # pre-indexed writeback
                return mm.group(1), b, f'{b} = {b} + {off & 0xffffffff}u;', ''
            return mm.group(1), (f'{b} + {off}' if off > 0 else f'{b} - {-off}' if off < 0 else b), '', ''
        mm = re.fullmatch(r'(\w+), \[(\w+), (-?)(\w+)(?:, (lsl|lsr|asr) #(\d+))?\]', o)
        if mm:
            idx = rd(mm.group(4))
            if mm.group(5) == 'lsl': idx = f'({idx} << {mm.group(6)})'
            elif mm.group(5) == 'lsr': idx = f'({idx} >> {mm.group(6)})'
            elif mm.group(5) == 'asr': idx = f'((u32)((int){idx} >> {mm.group(6)}))'
            return mm.group(1), f'{rd(mm.group(2))} {"-" if mm.group(3) else "+"} {idx}', '', ''
        raise ValueError('mem ' + o)

    def call_args(extra=None):
        a = []
        if PASS[0]:   # arguments are the untouched incoming registers (a clobbered temp means the callee takes fewer)
            if 0 not in defined and defined & {1, 2, 3}: rd('r0')
            a = []
            for k in range(4):
                if k in params and k not in wrote: a.append(cur.get(k, 'r%d' % k) if ssa else 'r%d' % k)
                else: break
            return a
        for k in range(4):
            if k in defined: a.append(cur.get(k, 'r%d' % k) if ssa else 'r%d' % k)
            elif k == 0 and not defined & {0, 1, 2, 3}: break
            else: break
        # unread param r0 at function start counts as an argument only if some contiguous reg is defined
        return a

    def fargs():
        ks = sorted(k for k in fdef if k < 16)
        if ks != list(range(len(ks))): raise ValueError('float arg gap')
        return [fcur.get(k, f'f{k}') if ssa else f'f{k}' for k in ks]

    emitted_ret = []
    def emit(line, c=None):
        if c and line.count(';') > 1: line = '{ ' + line + ' }'
        out.append(f'if ({c}) {line}' if c else line)

    pending_label = None
    for i, (m, o, a) in enumerate(I):
        if a in targets: out.append(f'L_{a:x}:;')
        if m.startswith('v'):
            if re.fullmatch(r'(vpush|vpop)', m) and re.fullmatch(r'\{d\d+(, d\d+)*\}', o.strip()): continue   # callee-saved d8.. spill: not source
            vm = re.fullmatch(r'(vldr|vstr|vldmia|vstmia|vmov|vadd|vsub|vmul|vdiv|vmla|vmls|vnmls|vneg|vabs|vsqrt|vcmpe|vcmp|vcvt|vmrs)(eq|ne|hs|cs|lo|cc|mi|pl|hi|ls|ge|lt|gt|le)?(\.[\w.]+)?', m)
            if not vm: raise ValueError('vop ' + m)
            vb, vc, vt = vm.groups()
            if vt and ('f64' in vt): raise ValueError('f64')
            vcs = cond(vc) if vc else None
            curpred[0] = vcs
            def F(x, w=False):
                mm_ = re.fullmatch(r's(\d+)', x.strip())
                if not mm_: raise ValueError('freg ' + x)
                k_ = int(mm_.group(1)); fregs.add(k_)
                if w:
                    fdef.add(k_)
                    if ssa:
                        if curpred[0]: raise ValueError('ssa predicated')
                        fver[k_] = fver.get(k_, 0) + 1; fcur[k_] = f'f{k_}_{fver[k_]}'; fnew.append(fcur[k_])
                        return fcur[k_]
                elif k_ not in fdef:
                    if k_ == 0 and lastcall[0] and not curpred[0]:   # s0 right after a call: the callee returns float
                        idx_, nm__, expr_, argsig_ = lastcall[0]; lastcall[0] = None
                        v_ = F('s0', True); out[idx_] = f'{v_} = {expr_};'
                        decls.discard(f'u32 {nm__}({argsig_});'); decls.add(f'float {nm__}({argsig_});')
                        defined.discard(0); fret[0] = False
                        return v_
                    if k_ >= 16 or (k_ == 0 and fret[0]): raise ValueError('uninit float')
                    fparams.add(k_); fdef.add(k_)
                return fcur.get(k_, 'f' + mm_.group(1)) if ssa else 'f' + mm_.group(1)
            def FW(x): return F(x, True)
            ops = [x.strip() for x in o.split(',')] if vb not in ('vldr', 'vstr') else None
            if vb in ('vldr', 'vstr'):
                mm_ = re.fullmatch(r'(s\d+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]', o)
                if mm_ and vb == 'vldr':
                    w = word(a + 8 + (int(mm_.group(2), 0) if mm_.group(2) else 0))
                    emit(f'{FW(mm_.group(1))} = {fconst(w)};', vcs); continue
                d, addr, pre, post = mem(o)
                if ssa and (pre or post): raise ValueError('ssa writeback')
                if vb == 'vldr': emit(f'{pre} {FW(d)} = *(float*)({addr}); {post}'.replace('  ', ' ').strip(), vcs)
                else: emit(f'{pre} *(float*)({addr}) = {F(d)}; {post}'.replace('  ', ' ').strip(), vcs)
                continue
            if vb in ('vldmia', 'vstmia'):
                mm_ = re.fullmatch(r'(\w+)(!?), \{(s\d+(?:, s\d+)*)\}', o.strip())
                if not mm_ or mm_.group(2): raise ValueError('vop ' + m)
                regs_ = [int(x[1:]) for x in mm_.group(3).split(', ')]
                if regs_ != list(range(regs_[0], regs_[0] + len(regs_))): raise ValueError('vop ' + m)
                base_ = rd(mm_.group(1))
                for j_, k_ in enumerate(regs_):
                    if vb == 'vldmia': emit(f'{FW("s%d" % k_)} = *(float*)({base_} + {4 * j_});', vcs)
                    else: emit(f'*(float*)({base_} + {4 * j_}) = {F("s%d" % k_)};', vcs)
                continue
            if vb == 'vmrs':
                if flags[0] is None or flags[0][0] != 'fcmp': raise ValueError('vmrs flags')
                continue
            if vb in ('vcmp', 'vcmpe'):
                out.append(f'ffa = {F(ops[0])}; ffb = {F(ops[1]) if ops[1] != "#0.0" else "0.0f"};'); flags[0] = ('fcmp', 'ffa', 'ffb'); continue
            if vb == 'vmov':
                x, y = ops
                if x.startswith('s') and y.startswith('s'): yy_ = F(y); emit(f'{FW(x)} = {yy_};', vcs)
                elif x.startswith('s'): emit(f'{FW(x)} = u2f({rd(y)});', vcs)
                elif y.startswith('s'): emit(f'{wr(x)} = f2u({F(y)});', vcs)
                else: raise ValueError('vmov')
                continue
            if vb in ('vadd', 'vsub', 'vmul', 'vdiv'):
                if len(ops) != 3: raise ValueError('varith')
                sym = {'vadd': '+', 'vsub': '-', 'vmul': '*', 'vdiv': '/'}[vb]
                y1_, y2_ = F(ops[1]), F(ops[2]); emit(f'{FW(ops[0])} = {y1_} {sym} {y2_};', vcs); continue
            if vb in ('vmla', 'vmls', 'vnmls'):
                d_, x_, y_ = F(ops[0]), F(ops[1]), F(ops[2]); FW(ops[0])
                v_ = {'vmla': f'{d_} + {x_} * {y_}', 'vmls': f'{d_} - {x_} * {y_}', 'vnmls': f'{x_} * {y_} - {d_}'}[vb]
                emit(f'{d_} = {v_};', vcs); continue
            if vb in ('vneg', 'vabs', 'vsqrt'):
                x_ = F(ops[1])
                v_ = {'vneg': f'-{x_}', 'vabs': f'({x_} < 0 ? -{x_} : {x_})', 'vsqrt': f'__sqrtf({x_})'}[vb]
                if vb == 'vsqrt': decls.add('extern "C" float __sqrtf(float);')
                emit(f'{FW(ops[0])} = {v_};', vcs); continue
            if vb == 'vcvt':
                kinds = vt.split('.')[1:]
                if len(kinds) != 2: raise ValueError('vcvt')
                dk, sk = kinds; S_ = F(ops[1]); D_ = FW(ops[0])
                if dk == 'f32' and sk in ('s32', 'u32'): ty_ = 'int' if sk == 's32' else 'u32'; emit(f'{D_} = (float)({ty_})f2u({S_});', vcs)
                elif sk == 'f32' and dk in ('s32', 'u32'): ty_ = 'int' if dk == 's32' else 'u32'; emit(f'{D_} = u2f((u32)({ty_}){S_});', vcs)
                else: raise ValueError('vcvt kind')
                continue
            raise ValueError('vop2 ' + m)
        sm = split_mn(m)
        if not sm: raise ValueError('op ' + m)
        b, c, s = sm
        cs = cond(c) if (c and b not in ('b',)) or (c and b == 'b') else None
        curpred[0] = cs if b not in ('b', 'bx', 'pop') else None
        if b == 'push':
            frame[0] += 4 * sum(1 for r in re.findall(r'r\d+', o) if int(r[1:]) <= 3)   # caller-saved regs pushed as stack slots
            continue
        if b == 'nop': continue
        if b in ('add', 'sub') and re.fullmatch(r'sp, sp, #(0x[0-9a-f]+|\d+)', o.strip()):
            if b == 'sub': frame[0] += int(o.split('#')[1], 0)
            continue
        if b == 'str' and o.strip() == 'lr, [sp, #-4]!': continue
        if b == 'ldr' and o.strip() == 'lr, [sp], #4': continue
        if b == 'pop':
            if 'pc' not in o: continue
            out.append(f'{"if (" + cs + ") " if cs else ""}{{RET {cur.get(0, 'r0')}}}'); continue
        if b == 'bx' and o.strip() != 'lr' and re.fullmatch(r'(r\d+|ip|fp|sl|sb)', o.strip()):
            fp = rd(o.strip()); args = call_args()
            if fp in args: args = args[:args.index(fp)]
            fa_ = fargs(); sig = ', '.join(['u32'] * len(args) + ['float'] * len(fa_))
            out.append(f'{"if (" + cs + ") " if cs else ""}{{TAIL ((u32(*)({sig})){fp})({", ".join(args + fa_)})}}'); continue
        if b == 'bx':
            if o.strip() != 'lr': raise ValueError('bx ' + o)
            out.append(f'{"if (" + cs + ") " if cs else ""}{{RET {cur.get(0, 'r0')}}}'); continue
        if b == 'ldr' and o.startswith('pc,'): raise ValueError('ldrpc')
        if b == 'mov' and c is None and o.strip() == 'r0, r0':
            # `mov r0, r0` is a BL to an unresolved weak symbol that the linker turned into a nop
            args = call_args(); fa_ = fargs()
            nm_ = f'WeakCall{len(args)}' + (f'f{len(fa_)}' if fa_ else '')
            decls.add(f'u32 {nm_}({", ".join(["u32"] * len(args) + ["float"] * len(fa_))});')
            if i == len(I) - 1:   # last instruction: a `b` tail call to the weak symbol
                for k in args: rd(k)
                out.append(f'{{TAIL {nm_}({", ".join(args + fa_)})}}'); continue
            emit(f'{wr("r0")} = {nm_}({", ".join(args + fa_)});', cs)
            fdef.intersection_update(range(16, 32)); fret[0] = True
            for k in (1, 2, 3, 12): defined.discard(k)
            defined.add(0); continue
        if b in ('mov', 'mvn'):
            d, src = [x.strip() for x in o.split(',', 1)]
            v = op2(src)
            if b == 'mvn': v = f'~{v}'
            emit(f'{wr(d)} = {v};', cs)
            if s: flags[0] = ('nz', cname(d))
            continue
        if b in ('lsl', 'lsr', 'asr'):
            mm = re.fullmatch(r'(\w+), (\w+), #(0x[0-9a-f]+|\d+)', o)
            if not mm:
                mm = re.fullmatch(r'(\w+), (\w+), (r\d+)', o)
                if not mm: raise ValueError('shift ' + o)
                x = rd(mm.group(2)); sh = f'({rd(mm.group(3))} & 255)'
                v = {'lsl': f'{x} << {sh}', 'lsr': f'{x} >> {sh}', 'asr': f'(u32)((int){x} >> {sh})'}[b]
                emit(f'{wr(mm.group(1))} = {v};', cs)
                if s: flags[0] = ('nz', cname(mm.group(1)))
                continue
            x = rd(mm.group(2)); sh = int(mm.group(3), 0)
            v = {'lsl': f'{x} << {sh}', 'lsr': f'{x} >> {sh}', 'asr': f'(u32)((int){x} >> {sh})'}[b]
            emit(f'{wr(mm.group(1))} = {v};', cs)
            if s: flags[0] = ('nz', cname(mm.group(1)))
            continue
        if b in ('add', 'sub', 'rsb', 'and', 'orr', 'eor', 'bic', 'mul'):
            mm = re.fullmatch(r'(\w+), (\w+), (.+)', o)
            if mm: d, x, y = mm.groups()
            else:
                mm = re.fullmatch(r'(\w+), (.+)', o)
                if not mm: raise ValueError('arith ' + o)
                d, y = mm.groups(); x = d
            X = rd(x); Y = op2(y)
            if x.strip() == 'sp' and not Y.endswith('u'): raise ValueError('sp arith')
            sym = {'add': '+', 'sub': '-', 'and': '&', 'orr': '|', 'eor': '^', 'mul': '*'}
            if b == 'rsb': v = f'{Y} - {X}'
            elif b == 'bic': v = f'{X} & ~{Y}'
            else: v = f'{X} {sym[b]} {Y}'
            dd = wr(d)
            emit(f'{dd} = {v};', cs)
            if s: flags[0] = ('nz', dd)
            continue
        if b in ('cmp', 'cmn', 'tst'):
            mm = re.fullmatch(r'(\w+), (.+)', o)
            if not mm: raise ValueError('cmp ' + o)
            X = rd(mm.group(1)); Y = op2(mm.group(2))
            if cs:
                if b != 'cmp' or flags[0] is None: raise ValueError('predicated cmp')
                if flags[0][0] == 'nz': out.append(f'fa = {flags[0][1]}; fb = 0;')
                out.append(f'if ({cs}) {{ fa = {X}; fb = {Y}; }}'); flags[0] = ('cmp', 'fa', 'fb'); continue
            if b == 'cmp': flags[0] = ('cmp', 'fa', 'fb'); out.append(f'fa = {X}; fb = {Y};')
            elif b == 'tst': out.append(f'fx = {X} & {Y};'); flags[0] = ('nz', 'fx')
            elif CMN[0]: out.append(f'fa = {X}; fb = 0u - {Y};'); flags[0] = ('cmn', 'fa', 'fb')   # eq/ne only: `x == -1` compiles to cmn
            else: out.append(f'fx = {X} + {Y};'); flags[0] = ('nz', 'fx')
            continue
        if b in ('ldrd', 'strd'):
            mm = re.fullmatch(r'(\w+), (\w+), (\[.*)', o)
            if not mm: raise ValueError('ldrd ' + o)
            ra, rb = mm.group(1), mm.group(2)
            if R(rb) != R(ra) + 1: raise ValueError('ldrd pair')
            d, addr, pre, post = mem(f'{ra}, {mm.group(3)}')
            if ssa and (pre or post): raise ValueError('ssa writeback')
            if b == 'ldrd':
                if p64:
                    t = 'u64 t64'
                    emit(f'{pre} {t} = *(u64*)({addr}); {wr(ra)} = (u32)t64; {wr(rb)} = (u32)(t64 >> 32); {post}'.replace('  ', ' ').strip(), cs)
                else:
                    emit(f'{pre} {wr(ra)} = *(u32*)({addr}); {wr(rb)} = *(u32*)({addr} + 4); {post}'.replace('  ', ' ').strip(), cs)
            else:
                if p64: emit(f'{pre} *(u64*)({addr}) = (u64){rd(ra)} | ((u64){rd(rb)} << 32); {post}'.replace('  ', ' ').strip(), cs)
                else: emit(f'{pre} *(u32*)({addr}) = {rd(ra)}; *(u32*)({addr} + 4) = {rd(rb)}; {post}'.replace('  ', ' ').strip(), cs)
            continue
        if b in ('ldr', 'ldrb', 'ldrh', 'ldrsb', 'ldrsh'):
            mm = re.fullmatch(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]', o)
            if mm:
                off = int(mm.group(2), 0) if mm.group(2) else 0
                w = word(a + 8 + off)
                if 0x100000 <= w < 0xA00000:
                    decls.add(f'extern char g_{w:08x}[];'); v = f'(u32)g_{w:08x}'
                else: v = f'{w}u'
                emit(f'{wr(mm.group(1))} = {v};', cs); continue
            d, addr, pre, post = mem(o)
            if ssa and (pre or post): raise ValueError('ssa writeback')
            ty = {'ldr': 'u32', 'ldrb': 'u8', 'ldrh': 'u16', 'ldrsb': 'signed char', 'ldrsh': 'short'}[b]
            emit(f'{pre} {wr(d)} = *({ty}*)({addr}); {post}'.replace('  ', ' ').strip(), cs); continue
        if b in ('str', 'strb', 'strh'):
            d, addr, pre, post = mem(o)
            if ssa and (pre or post): raise ValueError('ssa writeback')
            ty = {'str': 'u32', 'strb': 'u8', 'strh': 'u16'}[b]
            emit(f'{pre} *({ty}*)({addr}) = {rd(d)}; {post}'.replace('  ', ' ').strip(), cs); continue
        if b in ('uxth', 'sxth', 'uxtb', 'sxtb'):
            mm = re.fullmatch(r'(\w+), (\w+)', o)
            if not mm: raise ValueError('ext ' + o)
            x = rd(mm.group(2))
            v = {'uxth': f'(u16){x}', 'uxtb': f'(u8){x}', 'sxth': f'(u32)(short){x}', 'sxtb': f'(u32)(signed char){x}'}[b]
            emit(f'{wr(mm.group(1))} = {v};', cs); continue
        if b == 'mla':
            r = [x.strip() for x in o.split(',')]
            if len(r) != 4: raise ValueError('mla')
            v = f'{rd(r[1])} * {rd(r[2])} + {rd(r[3])}'
            emit(f'{wr(r[0])} = {v};', cs)
            if s: flags[0] = ('nz', cname(r[0]))
            continue
        if b in ('ldm', 'stm'):
            mm = re.fullmatch(r'(\w+)(!)?, \{(.*)\}', o)
            if not mm: raise ValueError('ldm ' + o)
            base = rd(mm.group(1)); regs = [x.strip() for x in mm.group(3).split(',')]
            st = []
            for k, r in enumerate(regs):
                if b == 'ldm': st.append(f'{wr(r)} = *(u32*)({base} + {4 * k});')
                else: st.append(f'*(u32*)({base} + {4 * k}) = {rd(r)};')
            if mm.group(2): st.append(f'{base} = {base} + {4 * len(regs)};')
            emit(' '.join(st), cs); continue
        if b == 'blx' and re.fullmatch(r'(r\d+|ip|fp|sl|sb)', o.strip()):
            fp = rd(o.strip()); args = [x for x in call_args()]
            if fp in args: args = args[:args.index(fp)]
            fa_ = fargs(); sig = ', '.join(['u32'] * len(args) + ['float'] * len(fa_))
            emit(f'{wr("r0")} = ((u32(*)({sig})){fp})({", ".join(args + fa_)});', cs)
            fdef.intersection_update(range(16, 32)); fret[0] = True
            for k in (1, 2, 3, 12): defined.discard(k)
            defined.add(0); continue
        if b in ('bl', 'blx') and o.startswith('#'):
            t = int(o[1:], 0)
            args = call_args(); fa_ = fargs()
            nm_ = f'Fn_{t:06x}_{len(args)}' + (f'f{len(fa_)}' if fa_ else '')
            decls.add(f'u32 {nm_}({", ".join(["u32"] * len(args) + ["float"] * len(fa_))});'); calls.append((nm_, t))
            emit(f'{wr("r0")} = {nm_}({", ".join(args + fa_)});', cs)
            if not cs: lastcall[0] = (len(out) - 1, nm_, f'{nm_}({", ".join(args + fa_)})', ", ".join(["u32"] * len(args) + ["float"] * len(fa_)))
            fdef.intersection_update(range(16, 32)); fret[0] = True
            for k in (1, 2, 3, 12): defined.discard(k)
            defined.add(0); continue
        if b == 'b' and o.startswith('#'):
            t = int(o[1:], 0)
            if t in targets:
                emit(f'goto L_{t:x};', cs); continue
            if t == end_addr: raise ValueError('b end')
            args = call_args(); fa_ = fargs()
            nm = f'Fn_{t:06x}_{len(args)}' + (f'f{len(fa_)}' if fa_ else '')
            decls.add(f'u32 {nm}({", ".join(["u32"] * len(args) + ["float"] * len(fa_))});'); calls.append((nm, t))
            for k in args: rd(k)
            out.append(f'{"if (" + cs + ") " if cs else ""}{{TAIL {nm}({", ".join(args + fa_)})}}'); continue
        raise ValueError('op ' + m + ' ' + o)
    if not (I[-1][0] == 'mov' and I[-1][1].strip() == 'r0, r0') and I[-1][0] not in ('pop', 'bx', 'b') and not re.match(r'(pop|bx|b|ldr)', I[-1][0]): raise ValueError('falls off')
    if sorted(fparams) != list(range(len(fparams))): raise ValueError('float param gap')
    pl = ', '.join([f'u32 a{k}' for k in range(max(params) + 1)] if params else []) 
    if fparams: pl += (', ' if pl else '') + ', '.join(f'float p{k}' for k in sorted(fparams))
    pre = ''.join(f'    u32 r{k}{" = a%d" % k if k in params else ""};\n' for k in range(13) if True) if False else ''
    regdecl = ', '.join(f'r{k}' + (f' = a{k}' if k in params else '') for k in range(13)) + ", fa, fb, fx"
    fdecl = ('    float ' + ', '.join([f'f{k}' + (f' = p{k}' if k in fparams else '') for k in sorted(fregs)] + fnew) + ', ffa, ffb;' + chr(10)) if fregs else ''
    fl_ret = bool(fregs)
    if newvars: regdecl += ', ' + ', '.join(newvars)
    if frame[0] == 4:   # one slot: a scalar local schedules like a source-level `u32 v; f(&v)`
        regdecl += ', stk'; out = [l.replace('*(u32*)((u32)stk)', 'stk').replace('(u32)stk', '(u32)&stk') for l in out]
        if ssa:   # `rX_n = expr; stk = rX_n;` is source-level `v = expr;`
            o2 = []; i2 = 0
            while i2 < len(out):
                m1 = re.fullmatch(r'(r\d+_\d+) = (.*);', out[i2])
                if m1 and i2 + 1 < len(out) and out[i2 + 1] == f'stk = {m1.group(1)};':
                    o2.append(f'stk = {m1.group(2)};')
                    for j in range(i2 + 2, len(out)): out[j] = re.sub(r'%s' % m1.group(1), 'stk', out[j])
                    i2 += 2
                else: o2.append(out[i2]); i2 += 1
            out = o2
    elif frame[0]: regdecl += f', stk[{(frame[0] + 3) // 4}]'
    body = '\n'.join('    ' + l for l in out)
    res = []
    for ty in ('void', 'u32') + (('float',) if fl_ret else ()):
        txt = body
        txt = re.sub(r'\{RET (\w+)\}', (lambda m: 'return;') if ty == 'void' else (lambda m: 'return %s;' % m.group(1)) if ty == 'u32' else (lambda m: ('return %s;' % fcur.get(0, 'f0') if 0 in fregs else 'return u2f(%s);' % m.group(1))), txt)
        if ty == 'void': txt = re.sub(r'\{TAIL (.*?)\}$', r'{ \1; return; }', txt, flags=re.M)
        elif ty == 'u32': txt = re.sub(r'\{TAIL (.*?)\}$', r'return \1;', txt, flags=re.M)
        else: txt = re.sub(r'\{TAIL (.*?)\}$', r'return u2f(\1);', txt, flags=re.M)
        # TAIL under an if needs braces in both forms
        txt = re.sub(r'if \((.*)\) (return (?:u2f\()?Fn_[^;]*;)', r'if (\1) { \2 }', txt)
        if ty == 'void': txt = txt.replace('{ { ', '{ ').replace('; return; } }', '; return; }') if False else txt
        res.append((sorted(decls), f'{ty} {fname}({pl}) {{\n    u32 {regdecl};\n{fdecl}{txt}\n}}', calls))
    return res


def _keepdecl(orig, new):
    # the declaration line (`u32 r0 = a0, ... fx, ...;`) must keep its variable names
    NL = chr(10)
    o = orig.split(NL); n = new.split(NL)
    for l in o:
        if ' fa, fb, fx' in l:
            for j, l2 in enumerate(n):
                if ' fa, fb, fx' in l2: n[j] = l; break
    return NL.join(n)


def _sub(var, rep, txt):
    return re.sub(r'\b%s\b(?!_)' % re.escape(var), lambda m: rep, txt)


def constprop(r):
    """Variant with SSA constants (`rX_n = 0u;`) substituted into later uses: `Fn(a, 0, 0)` schedules differently from
    `r2_1 = 0; r1_1 = r2_1;` (retail sets r2 first and copies it, which only the literal form reproduces)."""
    decls, body, calls = r
    consts = {}; out = []
    for l in body.split('\n'):
        m = re.fullmatch(r'\s*(r\d+_\d+) = (\d+u|~0u|0x[0-9a-f]+u);', l)
        if m: consts[m.group(1)] = m.group(2); continue
        out.append(l)
    if not consts: return None
    txt = '\n'.join(out)
    for k, v in consts.items(): txt = _sub(k, v, txt)
    return (decls, txt.replace('fx, ' + ', '.join(consts.values()) + ', ', 'fx, '), calls) if False else (decls, _keepdecl(body, txt), calls)


def reassoc(r):
    """Variant computing a second `base + K2` from the earlier `base + K1` (`add r3, r2, #0xc` where we emit `add r3, r1, #0x190`)."""
    decls, body, calls = r
    pat = re.compile(r'(\s*)(r\d+_\d+) = (r\d+_\d+|a\d+) \+ (\d+)u;')
    seen = {}; out = []; changed = False
    for l in body.split('\n'):
        m = pat.fullmatch(l)
        if m:
            ind, d, b, k = m.group(1), m.group(2), m.group(3), int(m.group(4))
            prev = [(v, n) for (bb, v), n in seen.items() if bb == b and v < k]
            if prev:
                v, n = max(prev)
                out.append(f'{ind}{d} = {n} + {k - v}u;'); changed = True
                seen[(b, k)] = d; continue
            seen[(b, k)] = d
        out.append(l)
    return (decls, '\n'.join(out), calls) if changed else None


def swaps(r, limit=8):
    """Variants with one adjacent pair of independent SSA assignments exchanged (ARMCC schedules from source order: retail
    `mov r2, #0; mov r1, r2; mov r0, r4` needs the argument defs in that order)."""
    decls, body, calls = r
    lines = body.split('\n'); pat = re.compile(r'\s*(r\d+_\d+) = ([^;(]*);')
    out = []
    for i in range(len(lines) - 1):
        a, b = pat.fullmatch(lines[i]), pat.fullmatch(lines[i + 1])
        if not a or not b or '*' in a.group(2) + b.group(2) and False: continue
        if re.search(r'\b%s\b' % a.group(1), b.group(2)): continue
        if a.group(1) in b.group(2): continue
        ls = list(lines); ls[i], ls[i + 1] = ls[i + 1], ls[i]
        out.append((decls, '\n'.join(ls), calls))
        if len(out) >= limit: break
    return out


def inline1(r):
    """Variant with single-use SSA temporaries folded into their use (`t = *(u32*)(p); *(u8*)(t + 8) = 4;`):
    register choice follows the expression shape, not the temporary's name."""
    decls, body, calls = r
    lines = body.split('\n'); n = len(lines); changed = False
    pat = re.compile(r'\s*(r\d+_\d+) = (.*);')
    i = 0
    while i < n:
        m = pat.fullmatch(lines[i])
        if m and 'Fn_' not in m.group(2) and 'WeakCall' not in m.group(2):
            v = m.group(1)
            uses = [j for j in range(n) if j != i and ' fa, fb, fx' not in lines[j] and re.search(r'\b%s\b(?!_)' % v, lines[j])]
            if len(uses) == 1 and uses[0] > i and not any(l.lstrip().startswith(('L_', 'if', 'goto')) for l in lines[i + 1:uses[0] + 1]) \
               and not re.search(r'\b(fa|fb|fx)\b', lines[uses[0]]):
                rhs = m.group(2)
                lines[uses[0]] = _sub(v, rhs if re.fullmatch(r'\w+', rhs) else '(' + rhs + ')', lines[uses[0]])
                del lines[i]; n -= 1; changed = True; continue
        i += 1
    return (decls, '\n'.join(lines), calls) if changed else None
