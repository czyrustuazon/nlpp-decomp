"""asmify.py OUT.s TAG OFFSET:SIZE[:t] [OFFSET:SIZE[:t] ...]   (offsets and sizes are hex; `:t` = Thumb function)

Turns ARM functions of the retail image into a clang-assemblable .s source: branch targets inside
a function become labels, calls to other functions become `bl Fn_<file offset>` (add them to
externs.toml), literal-pool words stay as `.word`. For hand-written library code (CTR SDK atomics),
where there is no C to recover. Appends functions.toml entries (library = TAG) and externs.toml
callee addresses, like apply.py does for C++.
Thumb functions each get their own section (2 bytes of padding when retail starts them at 2 mod 4, so pc-relative
literal loads encode the same); calls are always `bl` (relink turns it into BLX for an ARM callee); undecodable
halfwords and branches out of the function stay as `.short` (relink places every function at its retail address).
"""
import sys, struct, re, os
sys.path.insert(0, '.')
from ctrdecomp import config as c
from capstone import *
cfg = c.load(); code = cfg.code()
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
mdt = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
out, tag = sys.argv[1], sys.argv[2]
specs = [(int(a.split(':')[0], 16), int(a.split(':')[1], 16), a.endswith(':t')) for a in sys.argv[3:]]
NAMES = {}   # ASM_NAMES=<csv with offset,name> (e.g. symbols/names.csv): use those names instead of A_<offset>
if os.environ.get('ASM_NAMES'):
    import csv
    NAMES = {int(r['offset'], 16): r['name'] for r in csv.DictReader(open(os.environ['ASM_NAMES']))}
HEAD = """@ Generated from the retail image by tools/wrapgen/asmify.py ({tag}): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text
"""
lines = HEAD.format(tag=tag).split('\n'); tags = [None] * len(lines); externs = {}; rows = []   # tags: (addr, external branch) per line
BCOND = ('b', 'beq', 'bne', 'bhs', 'bcs', 'blo', 'bcc', 'bmi', 'bpl', 'bvs', 'bvc', 'bhi', 'bls', 'bge', 'blt', 'bgt', 'ble')
import bisect, csv as _csv
STARTS = sorted(int(r['Location'], 16) - 0x100000 for r in _csv.DictReader(open('symbols/code.bin.csv')))
def short(a): return f'        .short  0x{struct.unpack_from("<H", code, a)[0]:04x}'
def thumb_fn(st, sz):
    """one Thumb function -> (name, head lines, body lines, body tags, size incl. trailing pool)"""
    ins = {}
    a = st
    while a < st + sz:   # decode halfword by halfword so data does not end the listing
        i = next(mdt.disasm(code[a:a + 4] if a + 4 <= st + sz else code[a:a + 2], a, 1), None)
        if i is None: a += 2; continue
        ins[a] = i; a += i.size
    pool = set()
    for i in ins.values():
        m = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', i.op_str)
        if i.mnemonic == 'ldr' and m: pool.add(((i.address + 4) & ~3) + (int(m.group(2), 0) if m.group(2) else 0))
    k = bisect.bisect_right(STARTS, st); nxt = STARTS[k] if k < len(STARTS) else st + sz + 0x400
    end = max([st + sz] + [p + 4 for p in pool if p + 4 <= nxt])   # a trailing pool, but never into the next function
    pool = {p for p in pool if p + 4 <= end}
    labels = set(pool)
    for i in ins.values():
        if i.mnemonic in BCOND and i.op_str.startswith('#'):
            t = int(i.op_str[1:], 0)
            if st <= t < end: labels.add(t)
    body = []; btag = []; a = st
    while a < end:
        if a in labels: body.append(f'L{a:x}:'); btag.append(None)
        if a in pool:
            body.append(f'        .word   0x{struct.unpack_from("<I", code, a)[0]:08x}'); btag.append(None); a += 4; continue
        i = ins.get(a)
        if i is None or a + i.size > end:
            body.append(short(a)); btag.append(None); a += 2; continue
        m, op, ext = i.mnemonic, i.op_str, False
        if m in ('bl', 'blx') and op.startswith('#'):
            t = int(op[1:], 0)
            if m == 'bl': op = f'Fn_{t:06x}_t'; externs[op] = 0x100000 + t + 1
            else: op = f'Fn_{t:06x}'; externs[op] = 0x100000 + t
            m = 'bl'; ext = True
        elif m in BCOND and op.startswith('#'):
            t = int(op[1:], 0)
            if not st <= t < end:
                for k in range(0, i.size, 2): body.append(short(a + k)); btag.append(None)
                a += i.size; continue
            op = f'L{t:x}'
        else:
            m2 = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', op)
            if m2 and m == 'ldr':
                t = ((a + 4) & ~3) + (int(m2.group(2), 0) if m2.group(2) else 0)
                if t not in pool:   # pool outside this function: keep the bytes
                    body.append(short(a)); btag.append(None); a += 2; continue
                op = f'{m2.group(1)}, L{t:x}'
        body.append(f'        {m:<7} {op}'.rstrip()); btag.append((a, ext, i.size))
        a += i.size
    name = NAMES.get(st, f'A_{st:06x}')
    head = ['', f'@ FUN_{st:08x} (Thumb)', f'        .section .text.{name},"ax",%progbits', '        .balign 4', '        .thumb']
    if st & 2: head.append('        .short  0          @ padding: retail starts this function at 2 mod 4')
    head += [f'        .global {name}', '        .thumb_func', f'        .type   {name}, %function', f'{name}:']
    return name, head, body, btag, end - st

for st, sz, th in specs:
    if th:
        name, head, body, btag, sz = thumb_fn(st, sz)
        lines += head + body + [f'        .size   {name}, . - {name}']; tags += [None] * len(head) + btag + [None]
        rows.append((name, st, sz, True)); continue
    ins = list(md.disasm(code[st:st + sz], st))
    end = st + sz
    # pool words: pc-relative load targets, plus anything after the last instruction we could not decode
    pool = set()
    for i in ins:
        m = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', i.op_str)
        if i.mnemonic.startswith(('ldr', 'vldr')) and m:
            pool.add(i.address + 8 + (int(m.group(2), 0) if m.group(2) else 0))
    for k, i in enumerate(ins):   # switch: `cmp rX, #N; ldrlo pc, [pc, rX, lsl #2]; b default; .word case0..caseN-1`
        m = re.match(r'pc, \[pc, (\w+), lsl #2\]$', i.op_str)
        if i.mnemonic.startswith('ldr') and m and k and ins[k - 1].mnemonic == 'cmp':
            m2 = re.match(r'%s, #(0x[0-9a-f]+|\d+)$' % m.group(1), ins[k - 1].op_str)
            if m2: pool.update(i.address + 8 + 4 * j for j in range(int(m2.group(1), 0)))
    if pool and max(pool) + 4 > end:                 # trailing literal pool is part of the function
        end = max(pool) + 4; sz = end - st
    labels = set(pool)
    for i in ins:
        if i.address in pool: continue
        if i.mnemonic.startswith('b') and i.op_str.startswith('#'):
            t = int(i.op_str[1:], 0)
            if st <= t < end: labels.add(t)
    body = []; btag = []
    a = st
    while a < end:
        if a in labels: body.append(f'L{a:x}:'); btag.append(None)
        i = next((x for x in ins if x.address == a), None)
        if a in pool or i is None:
            body.append(f'        .word   0x{struct.unpack_from("<I", code, a)[0]:08x}'); btag.append(None); a += 4; continue
        op = i.op_str; m = i.mnemonic; ext = False
        if m.startswith('b') and op.startswith('#') and not m.startswith(('bic', 'bfi', 'bfc', 'bkpt')):
            t = int(op[1:], 0)
            if st <= t < end: op = f'L{t:x}'
            else:
                # blx #imm targets Thumb: relink needs bit 0 set to emit BLX, so those get their own `_t` extern
                op = f'Fn_{t:06x}' + ('_t' if m == 'blx' else ''); ext = True; externs[op] = 0x100000 + t + (1 if m == 'blx' else 0)
        else:
            m2 = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', op)
            if m2 and m.startswith(('ldr', 'vldr')):
                op = f'{m2.group(1)}, L{a + 8 + (int(m2.group(2), 0) if m2.group(2) else 0):x}'
        body.append(f'        {m:<7} {op}'.rstrip()); btag.append((a, ext, 4))
        a += 4
    name = NAMES.get(st, f'A_{st:06x}')
    head = ['', f'@ FUN_{st:08x}', '        .text', '        .arm', f'        .global {name}', f'        .type   {name}, %function', f'{name}:']
    lines += head + body + [f'        .size   {name}, . - {name}']; tags += [None] * len(head) + btag + [None]
    rows.append((name, st, sz, False))

def roundtrip():
    """Data inside functions (strings, tables reached by `add rX, pc`) decodes as instructions that do not re-assemble
    to the same word. Replace every line clang rejects, then every line whose assembled bytes differ, by `.word`.
    Branches to external symbols are skipped: their bytes are relocations, checked by `relink`."""
    import subprocess, tempfile
    from elftools.elf.elffile import ELFFile
    clang = os.environ.get('CTRDECOMP_CLANG') or 'clang'
    def word(t):
        a, _, n = t
        if not thumb_at[a]: return f'        .word   0x{struct.unpack_from("<I", code, a)[0]:08x}'
        return '\n'.join(short(a + k) for k in range(0, n, 2))
    fn_of = {}; thumb_at = {}
    for n, st, sz, th in rows:
        fn_of.update({a: st for a in range(st, st + sz, 2)}); thumb_at.update({a: th for a in range(st, st + sz, 2)})
    for _ in range(20):
        open(out, 'w', newline='\n').write('\n'.join(lines) + '\n')
        fd, obj = tempfile.mkstemp(suffix='.o'); os.close(fd)
        r = subprocess.run([clang, '--target=armv6k-none-eabi', '-c', '-x', 'assembler', out, '-o', obj], capture_output=True, text=True)
        bad = {int(m) - 1 for m in re.findall(r'\.s:(\d+):\d+: error', r.stderr)}
        if r.returncode and not bad: sys.exit(r.stderr)
        if not bad:
            with open(obj, 'rb') as fh:
                elf = ELFFile(fh)
                syms = {s.name: (s['st_value'] & ~1, s['st_shndx']) for s in elf.get_section_by_name('.symtab').iter_symbols()}
                datas = {n: elf.get_section(syms[n][1]).data() for n, *_ in rows}
            base = {st: (syms[n][0], datas[n]) for n, st, *_ in rows}
            for k, t in enumerate(tags):
                if not t or t[1]: continue
                a, _, n = t; b0, data = base[fn_of[a]]; o = b0 + a - fn_of[a]
                if data[o:o + n] != code[a:a + n]: bad.add(k)
        if os.path.exists(obj): os.unlink(obj)   # clang removes it itself on errors
        if not bad: return
        for k in bad:
            if not tags[k]: sys.exit(f'line {k + 1} is not an instruction line: {lines[k]}')
            lines[k] = word(tags[k]); tags[k] = None
        print(f'roundtrip: {len(bad)} lines emitted as .word', file=sys.stderr)
    sys.exit('roundtrip did not converge')
roundtrip()
with open('functions.toml', 'a', encoding='utf-8', newline='') as f:
    for n, st, sz, th in rows:
        f.write(f'\n[[function]]\nname = "{n}"\noffset = "{st:x}"\nsize = "{sz:x}"\nsrc = "{out}"\nsymbol = "{n}"\n' + ('thumb = true\n' if th else '') + f'library = "{tag}"\nscore = 0\n')
import tomllib
have = tomllib.load(open('externs.toml', 'rb'))['symbols']
with open('externs.toml', 'a', encoding='utf-8', newline='') as f:
    f.write(f'\n# {out} callees\n')
    for k, v in sorted(externs.items()):
        if k not in have: f.write(f'{k} = 0x{v:08X}\n')
        elif have[k] != v: print(f'WARNING extern {k}: externs.toml has 0x{have[k]:08X}, this file needs 0x{v:08X}', file=sys.stderr)
print(len(rows), 'functions,', len(externs), 'callees')
