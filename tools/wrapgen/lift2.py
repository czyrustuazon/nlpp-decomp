"""lift2: general ARM -> C++ lifter (register variables, gotos, predication, flags as a compared pair).
Same interface as lift.lift: returns [(decl_lines, body_text, calls)] or raises ValueError.
Every register is a `u32 rN` local; branches become `goto`, predicated ops become `if`. The caller verifies each
candidate by compiling it, so a lift only has to be plausible, not provably right."""
import re
REG = {'sp': None, 'lr': None, 'pc': None, 'ip': 12, 'fp': 11, 'sl': 10, 'sb': 9}
CONDS = ('eq', 'ne', 'hs', 'cs', 'lo', 'cc', 'mi', 'pl', 'hi', 'ls', 'ge', 'lt', 'gt', 'le')
BASES = ('mov', 'mvn', 'add', 'sub', 'rsb', 'and', 'orr', 'eor', 'bic', 'lsl', 'lsr', 'asr', 'mul', 'cmp', 'cmn', 'tst',
         'ldr', 'ldrb', 'ldrh', 'ldrsb', 'ldrsh', 'str', 'strb', 'strh', 'bl', 'blx', 'bx', 'b', 'nop', 'push', 'pop', 'orn',
         'uxth', 'sxth', 'uxtb', 'sxtb', 'mla', 'ldm', 'stm')
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

def lift(I, word, fname, variants=True):
    """SSA-style variants first (a fresh variable per register write, straight-line code only), then the register-variable form."""
    res = []
    try: res += _lift(I, word, fname, True)
    except ValueError: pass
    return res + _lift(I, word, fname, False)

def _lift(I, word, fname, ssa):
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
    defined = set(); params = set(); decls = set(); calls = []; out = []
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

    def wr(r):
        k = R(r); defined.add(k)
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
        mm = re.fullmatch(r'(\w+), \[(\w+), (-?)(\w+)(?:, (lsl) #(\d+))?\]', o)
        if mm:
            idx = rd(mm.group(4))
            if mm.group(5): idx = f'({idx} << {mm.group(6)})'
            return mm.group(1), f'{rd(mm.group(2))} {"-" if mm.group(3) else "+"} {idx}', '', ''
        raise ValueError('mem ' + o)

    def call_args(extra=None):
        a = []
        for k in range(4):
            if k in defined: a.append(cur.get(k, 'r%d' % k) if ssa else 'r%d' % k)
            elif k == 0 and not defined & {0, 1, 2, 3}: break
            else: break
        # unread param r0 at function start counts as an argument only if some contiguous reg is defined
        return a

    emitted_ret = []
    def emit(line, c=None):
        if c and line.count(';') > 1: line = '{ ' + line + ' }'
        out.append(f'if ({c}) {line}' if c else line)

    pending_label = None
    for i, (m, o, a) in enumerate(I):
        if a in targets: out.append(f'L_{a:x}:;')
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
        if b == 'bx' and o.strip() != 'lr' and re.fullmatch(r'r\d+', o.strip()):
            fp = rd(o.strip()); args = call_args()
            if fp in args: args = args[:args.index(fp)]
            sig = ', '.join(['u32'] * len(args))
            out.append(f'{"if (" + cs + ") " if cs else ""}{{TAIL ((u32(*)({sig})){fp})({", ".join(args)})}}'); continue
        if b == 'bx':
            if o.strip() != 'lr': raise ValueError('bx ' + o)
            out.append(f'{"if (" + cs + ") " if cs else ""}{{RET {cur.get(0, 'r0')}}}'); continue
        if b == 'ldr' and o.startswith('pc,'): raise ValueError('ldrpc')
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
            else: out.append(f'fx = {X} + {Y};'); flags[0] = ('nz', 'fx')
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
        if b == 'blx' and re.fullmatch(r'r\d+', o.strip()):
            fp = rd(o.strip()); args = [x for x in call_args()]
            if fp in args: args = args[:args.index(fp)]
            sig = ', '.join(['u32'] * len(args))
            emit(f'{wr("r0")} = ((u32(*)({sig})){fp})({", ".join(args)});', cs)
            for k in (1, 2, 3, 12): defined.discard(k)
            defined.add(0); continue
        if b in ('bl', 'blx') and o.startswith('#'):
            t = int(o[1:], 0)
            args = call_args()
            nm_ = f'Fn_{t:06x}_{len(args)}'
            decls.add(f'u32 {nm_}({", ".join(["u32"] * len(args))});'); calls.append((nm_, t))
            emit(f'{wr("r0")} = {nm_}({", ".join(args)});', cs)
            for k in (1, 2, 3, 12): defined.discard(k)
            defined.add(0); continue
        if b == 'b' and o.startswith('#'):
            t = int(o[1:], 0)
            if t in targets:
                emit(f'goto L_{t:x};', cs); continue
            if t == end_addr: raise ValueError('b end')
            args = call_args()
            nm = f'Fn_{t:06x}_{len(args)}'
            decls.add(f'u32 {nm}({", ".join(["u32"] * len(args))});'); calls.append((nm, t))
            for k in args: rd(k)
            out.append(f'{"if (" + cs + ") " if cs else ""}{{TAIL {nm}({", ".join(args)})}}'); continue
        raise ValueError('op ' + m + ' ' + o)
    if I[-1][0] not in ('pop', 'bx', 'b') and not re.match(r'(pop|bx|b|ldr)', I[-1][0]): raise ValueError('falls off')
    pl = ', '.join(f'u32 a{k}' for k in range(max(params) + 1)) if params else ''
    pre = ''.join(f'    u32 r{k}{" = a%d" % k if k in params else ""};\n' for k in range(13) if True) if False else ''
    regdecl = ', '.join(f'r{k}' + (f' = a{k}' if k in params else '') for k in range(13)) + ", fa, fb, fx"
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
    for ty in ('void', 'u32'):
        txt = body
        txt = re.sub(r'\{RET (\w+)\}', (lambda m: 'return;') if ty == 'void' else (lambda m: 'return %s;' % m.group(1)), txt)
        if ty == 'void': txt = re.sub(r'\{TAIL (.*?)\}$', r'{ \1; return; }', txt, flags=re.M)
        else: txt = re.sub(r'\{TAIL (.*?)\}$', r'return \1;', txt, flags=re.M)
        # TAIL under an if needs braces in both forms
        txt = re.sub(r'if \((.*)\) (return Fn_[^;]*;)', r'if (\1) { \2 }', txt)
        if ty == 'void': txt = txt.replace('{ { ', '{ ').replace('; return; } }', '; return; }') if False else txt
        res.append((sorted(decls), f'{ty} {fname}({pl}) {{\n    u32 {regdecl};\n{txt}\n}}', calls))
    return res
