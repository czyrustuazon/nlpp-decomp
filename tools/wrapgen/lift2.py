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
    tmp = [0]

    def R(r):
        r = r.strip()
        if r in REG:
            if REG[r] is None: raise ValueError('reg ' + r)
            return REG[r]
        mm = re.fullmatch(r'r(\d+)', r)
        if not mm or int(mm.group(1)) > 12: raise ValueError('reg ' + r)
        return int(mm.group(1))

    def rd(r):
        k = R(r)
        if k not in defined:
            if k > 3: raise ValueError('uninit r%d' % k)
            params.add(k); defined.add(k)
        return 'r%d' % k

    def wr(r):
        k = R(r); defined.add(k); return 'r%d' % k

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
            if k in defined: a.append('r%d' % k)
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
        if b in ('push', 'nop'): continue
        if b == 'pop':
            if 'pc' not in o: continue
            out.append(f'{"if (" + cs + ") " if cs else ""}{{RET}}'); continue
        if b == 'bx' and o.strip() != 'lr' and re.fullmatch(r'r\d+', o.strip()):
            fp = rd(o.strip()); args = call_args()
            if fp in args: args = args[:args.index(fp)]
            sig = ', '.join(['u32'] * len(args))
            out.append(f'{"if (" + cs + ") " if cs else ""}{{TAIL ((u32(*)({sig})){fp})({", ".join(args)})}}'); continue
        if b == 'bx':
            if o.strip() != 'lr': raise ValueError('bx ' + o)
            out.append(f'{"if (" + cs + ") " if cs else ""}{{RET}}'); continue
        if b == 'ldr' and o.startswith('pc,'): raise ValueError('ldrpc')
        if b in ('mov', 'mvn'):
            d, src = [x.strip() for x in o.split(',', 1)]
            v = op2(src)
            if b == 'mvn': v = f'~{v}'
            emit(f'{wr(d)} = {v};', cs)
            if s: flags[0] = ('nz', 'r%d' % R(d))
            continue
        if b in ('lsl', 'lsr', 'asr'):
            mm = re.fullmatch(r'(\w+), (\w+), #(0x[0-9a-f]+|\d+)', o)
            if not mm:
                mm = re.fullmatch(r'(\w+), (\w+), (r\d+)', o)
                if not mm: raise ValueError('shift ' + o)
                x = rd(mm.group(2)); sh = f'({rd(mm.group(3))} & 255)'
                v = {'lsl': f'{x} << {sh}', 'lsr': f'{x} >> {sh}', 'asr': f'(u32)((int){x} >> {sh})'}[b]
                emit(f'{wr(mm.group(1))} = {v};', cs)
                if s: flags[0] = ('nz', 'r%d' % R(mm.group(1)))
                continue
            x = rd(mm.group(2)); sh = int(mm.group(3), 0)
            v = {'lsl': f'{x} << {sh}', 'lsr': f'{x} >> {sh}', 'asr': f'(u32)((int){x} >> {sh})'}[b]
            emit(f'{wr(mm.group(1))} = {v};', cs)
            if s: flags[0] = ('nz', 'r%d' % R(mm.group(1)))
            continue
        if b in ('add', 'sub', 'rsb', 'and', 'orr', 'eor', 'bic', 'mul'):
            mm = re.fullmatch(r'(\w+), (\w+), (.+)', o)
            if mm: d, x, y = mm.groups()
            else:
                mm = re.fullmatch(r'(\w+), (.+)', o)
                if not mm: raise ValueError('arith ' + o)
                d, y = mm.groups(); x = d
            X = rd(x); Y = op2(y)
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
            ty = {'ldr': 'u32', 'ldrb': 'u8', 'ldrh': 'u16', 'ldrsb': 'signed char', 'ldrsh': 'short'}[b]
            emit(f'{pre} {wr(d)} = *({ty}*)({addr}); {post}'.replace('  ', ' ').strip(), cs); continue
        if b in ('str', 'strb', 'strh'):
            d, addr, pre, post = mem(o)
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
            if s: flags[0] = ('nz', 'r%d' % R(r[0]))
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
            emit(f'r0 = ((u32(*)({sig})){fp})({", ".join(args)});', cs)
            for k in (1, 2, 3, 12): defined.discard(k)
            defined.add(0); continue
        if b in ('bl', 'blx') and o.startswith('#'):
            t = int(o[1:], 0)
            args = call_args()
            nm = f'Fn_{t:06x}_{len(args)}'
            decls.add(f'u32 {nm}({", ".join(["u32"] * len(args))});'); calls.append((nm, t))
            for k in args:
                kk = int(k[1:]); rd(k)
            emit(f'r0 = {nm}({", ".join(args)});', cs)
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
    body = '\n'.join('    ' + l for l in out)
    res = []
    for ty in ('void', 'u32'):
        txt = body
        txt = re.sub(r'\{RET\}', 'return;' if ty == 'void' else 'return r0;', txt)
        if ty == 'void': txt = re.sub(r'\{TAIL (.*?)\}$', r'{ \1; return; }', txt, flags=re.M)
        else: txt = re.sub(r'\{TAIL (.*?)\}$', r'return \1;', txt, flags=re.M)
        # TAIL under an if needs braces in both forms
        txt = re.sub(r'if \((.*)\) (return Fn_[^;]*;)', r'if (\1) { \2 }', txt)
        if ty == 'void': txt = txt.replace('{ { ', '{ ').replace('; return; } }', '; return; }') if False else txt
        res.append((sorted(decls), f'{ty} {fname}({pl}) {{\n    u32 {regdecl};\n{txt}\n}}', calls))
    return res
