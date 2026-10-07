"""move_lib.py CSV LIB TAG [SKIP_SRC ...]: move generated C functions whose offsets are in CSV (`offset` column) out of
src/gen/*.cpp into LIB_o3.cpp / LIB_o2.cpp (split by per-function flags), and point their functions.toml entries there
(library = TAG). Files under src/gen that become empty are deleted. Sources listed in SKIP_SRC are left alone."""
import sys, os, re, csv, tomllib
csv_path, lib, tag = sys.argv[1], sys.argv[2], sys.argv[3]; skip = set(sys.argv[4:])
want = {int(r['offset'], 16) for r in csv.DictReader(open(csv_path))}
fs = tomllib.load(open('functions.toml', 'rb'))['function']
moving = [f for f in fs if int(f['offset'], 16) in want and f['src'].startswith('src/gen/') and f['src'] not in skip]
NL = '\n'
PRE = NL.join(['typedef unsigned char u8;', 'typedef unsigned short u16;', 'typedef unsigned u32;', 'typedef unsigned long long u64;',
               'static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }',
               'static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }'])
def parse(path):
    t = open(path, encoding='utf-8').read().split(NL)
    first = next(i for i, l in enumerate(t) if l.startswith('// FUN_'))
    head = t[:first]
    blocks = {}; order = []; cur = None
    for l in t[first:]:
        m = re.match(r'// FUN_([0-9a-f]{8})$', l)
        if m: cur = int(m.group(1), 16); order.append(cur); blocks[cur] = [l]; continue
        blocks[cur].append(l)
    return head, order, {k: NL.join(v).rstrip(NL) for k, v in blocks.items()}
srcs = sorted({f['src'] for f in moving})
parsed = {s: parse(s) for s in srcs}
out = {'o3': ([], []), 'o2': ([], [])}   # (decls, (offset, block))
newsrc = {}
for f in moving:
    off = int(f['offset'], 16); kind = 'o2' if f.get('flags') and '-O2' in f['flags'] else 'o3'
    head, order, blocks = parsed[f['src']]
    if off not in blocks: sys.exit(f'no block for {off:x} in {f["src"]}')
    decls, bodies = out[kind]
    for l in head:
        if l and not l.startswith('//') and l not in PRE.split(NL) and l not in decls: decls.append(l)
    bodies.append((off, blocks[off])); newsrc[off] = f'{lib}_{kind}.cpp'
for kind, (decls, bodies) in out.items():
    if not bodies: continue
    flags = '--cpu=MPCore --arm -O2 -Otime' if kind == 'o2' else '--cpu=MPCore --arm -O3 -Otime'
    hdr = ('// ' + os.environ.get('MOVE_DESC', 'CTR SDK functions, matched by the lifter (tools/wrapgen)') + '.' + NL
           + '// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.' + NL
           + f'// Build: ARMCC 4.1 {flags}' + NL)
    open(f'{lib}_{kind}.cpp', 'w', newline=NL, encoding='utf-8').write(
        hdr + PRE + NL + NL.join(decls) + NL + NL + (NL + NL).join(b for _, b in sorted(bodies)) + NL)
moved = {int(f['offset'], 16) for f in moving}
for s, (head, order, blocks) in parsed.items():
    keep = [o for o in order if o not in moved]
    if not keep: os.remove(s); continue
    open(s, 'w', newline=NL, encoding='utf-8').write(NL.join(head) + NL + (NL + NL).join(blocks[o] for o in keep) + NL)
# functions.toml: rewrite src (and add library) only inside the moved entries
t = open('functions.toml', encoding='utf-8', newline='').read()
parts = re.split(r'(?=\[\[function\]\])', t); n = 0
for i, p in enumerate(parts):
    m = re.search(r'offset = "([0-9a-f]+)"', p)
    if not m or int(m.group(1), 16) not in newsrc or 'src = "src/gen/' not in p: continue
    off = int(m.group(1), 16)
    p = re.sub(r'src = "[^"]*"', f'src = "{newsrc[off]}"', p, count=1)
    if 'library = ' not in p:   # the file mixes CRLF and LF entries: keep the line ending of the src line
        m2 = re.search(r'src = "[^"]*"(\r?\n)', p)
        p = p[:m2.end()] + f'library = "{tag}"' + m2.group(1) + p[m2.end():]
    parts[i] = p; n += 1
open('functions.toml', 'w', encoding='utf-8', newline='').write(''.join(parts))
print(len(moving), 'functions moved from', len(srcs), 'files;', n, 'toml entries updated')
