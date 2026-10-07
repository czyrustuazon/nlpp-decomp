"""asmify.py OUT.s TAG OFFSET:SIZE [OFFSET:SIZE ...]   (offsets and sizes are hex)

Turns ARM functions of the retail image into a clang-assemblable .s source: branch targets inside
a function become labels, calls to other functions become `bl Fn_<file offset>` (add them to
externs.toml), literal-pool words stay as `.word`. For hand-written library code (CTR SDK atomics),
where there is no C to recover. Appends functions.toml entries (library = TAG) and externs.toml
callee addresses, like apply.py does for C++.
"""
import sys, struct, re, os
sys.path.insert(0, '.')
from ctrdecomp import config as c
from capstone import *
cfg = c.load(); code = cfg.code()
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
out, tag = sys.argv[1], sys.argv[2]
specs = [tuple(int(x, 16) for x in a.split(':')) for a in sys.argv[3:]]
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
for st, sz in specs:
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
        body.append(f'        {m:<7} {op}'.rstrip()); btag.append((a, ext))
        a += 4
    name = NAMES.get(st, f'A_{st:06x}')
    head = ['', f'@ FUN_{st:08x}', f'        .global {name}', f'        .type   {name}, %function', f'{name}:']
    lines += head + body + [f'        .size   {name}, . - {name}']; tags += [None] * len(head) + btag + [None]
    rows.append((name, st, sz))

def roundtrip():
    """Data inside functions (strings, tables reached by `add rX, pc`) decodes as instructions that do not re-assemble
    to the same word. Replace every line clang rejects, then every line whose assembled bytes differ, by `.word`.
    Branches to external symbols are skipped: their bytes are relocations, checked by `relink`."""
    import subprocess, tempfile
    from elftools.elf.elffile import ELFFile
    clang = os.environ.get('CTRDECOMP_CLANG') or 'clang'
    word = lambda a: f'        .word   0x{struct.unpack_from("<I", code, a)[0]:08x}'
    fn_of = {}
    for n, st, sz in rows: fn_of.update({a: st for a in range(st, st + sz, 4)})
    for _ in range(20):
        open(out, 'w', newline='\n').write('\n'.join(lines) + '\n')
        fd, obj = tempfile.mkstemp(suffix='.o'); os.close(fd)
        r = subprocess.run([clang, '--target=armv6k-none-eabi', '-c', '-x', 'assembler', out, '-o', obj], capture_output=True, text=True)
        bad = {int(m) - 1 for m in re.findall(r'\.s:(\d+):\d+: error', r.stderr)}
        if r.returncode and not bad: sys.exit(r.stderr)
        if not bad:
            with open(obj, 'rb') as fh:
                elf = ELFFile(fh); data = elf.get_section_by_name('.text').data()
                syms = {s.name: s['st_value'] for s in elf.get_section_by_name('.symtab').iter_symbols()}
            base = {st: syms[n] for n, st, _ in rows}
            for k, t in enumerate(tags):
                if not t or t[1]: continue
                a = t[0]; o = base[fn_of[a]] + a - fn_of[a]
                if data[o:o + 4] != code[a:a + 4]: bad.add(k)
        if os.path.exists(obj): os.unlink(obj)   # clang removes it itself on errors
        if not bad: return
        for k in bad:
            if not tags[k]: sys.exit(f'line {k + 1} is not an instruction line: {lines[k]}')
            lines[k] = word(tags[k][0]); tags[k] = None
        print(f'roundtrip: {len(bad)} lines emitted as .word', file=sys.stderr)
    sys.exit('roundtrip did not converge')
roundtrip()
with open('functions.toml', 'a', encoding='utf-8', newline='') as f:
    for n, st, sz in rows:
        f.write(f'\n[[function]]\nname = "{n}"\noffset = "{st:x}"\nsize = "{sz:x}"\nsrc = "{out}"\nsymbol = "{n}"\nlibrary = "{tag}"\nscore = 0\n')
import tomllib
have = tomllib.load(open('externs.toml', 'rb'))['symbols']
with open('externs.toml', 'a', encoding='utf-8', newline='') as f:
    f.write(f'\n# {out} callees\n')
    for k, v in sorted(externs.items()):
        if k not in have: f.write(f'{k} = 0x{v:08X}\n')
        elif have[k] != v: print(f'WARNING extern {k}: externs.toml has 0x{have[k]:08X}, this file needs 0x{v:08X}', file=sys.stderr)
print(len(rows), 'functions,', len(externs), 'callees')
