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
text = HEAD.format(tag=tag); externs = {}; rows = []
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
    body = []
    a = st
    while a < end:
        if a in labels: body.append(f'L{a:x}:')
        i = next((x for x in ins if x.address == a), None)
        if a in pool or i is None:
            body.append(f'        .word   0x{struct.unpack_from("<I", code, a)[0]:08x}'); a += 4; continue
        op = i.op_str; m = i.mnemonic
        if m.startswith('b') and op.startswith('#') and not m.startswith(('bic', 'bfi', 'bfc', 'bkpt')):
            t = int(op[1:], 0)
            if st <= t < end: op = f'L{t:x}'
            else:
                op = f'Fn_{t:06x}'; externs[op] = 0x100000 + t
        else:
            m2 = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', op)
            if m2 and m.startswith(('ldr', 'vldr')):
                op = f'{m2.group(1)}, L{a + 8 + (int(m2.group(2), 0) if m2.group(2) else 0):x}'
        body.append(f'        {m:<7} {op}'.rstrip())
        a += 4
    name = NAMES.get(st, f'A_{st:06x}')
    text += f'\n@ FUN_{st:08x}\n        .global {name}\n        .type   {name}, %function\n{name}:\n' + '\n'.join(body) + f'\n        .size   {name}, . - {name}\n'
    rows.append((name, st, sz))
open(out, 'w', newline='\n').write(text)
with open('functions.toml', 'a', encoding='utf-8', newline='') as f:
    for n, st, sz in rows:
        f.write(f'\n[[function]]\nname = "{n}"\noffset = "{st:x}"\nsize = "{sz:x}"\nsrc = "{out}"\nsymbol = "{n}"\nlibrary = "{tag}"\nscore = 0\n')
import tomllib
have = tomllib.load(open('externs.toml', 'rb'))['symbols']
with open('externs.toml', 'a', encoding='utf-8', newline='') as f:
    f.write(f'\n# {out} callees\n')
    for k, v in sorted(externs.items()):
        if k not in have: f.write(f'{k} = 0x{v:08X}\n')
print(len(rows), 'functions,', len(externs), 'callees')
