"""nw_classify.py: list NintendoWare functions by vtable and reference evidence -> symbols/nw_candidates.csv

NW code is interleaved with game code inside 0x541bc0-0x570000 (DrawTextToPane 0x54b880 is game), so it cannot be
filed by address range (technical.md section 5 gap 3). Evidence used here:
  seed      already filed as NintendoWare in functions.toml (library nw4c: the format-magic parsers and their callees)
  vtable    a slot of a vtable in the NW vtable band of .rodata (VA 0x82c450-0x82d268): a contiguous run of vtables
            whose slots lie in the NW window (0x541bc0-0x56b000) and the shared inline zone, in the same order as .text. NW is
            virtual-call heavy, so this reaches far more than the direct call graph.
  call / fnptr / vtref   reached from an NW function by a direct call, a literal-pool function pointer, or a
            literal-pool pointer to a vtable (every slot); a library cannot reference the app, so these are library.
Only window members are followed and listed. Then a filter drops every candidate that references app code
(anything outside the library areas below, the window past 0x56b000 counting as app, and not library-tagged in functions.toml) and, upward to a fixed point,
every candidate that references a dropped one: a game class whose vtable sits in the band is caught this way when it
calls game code. Dropped candidates are listed with tier `rejected`.
Zone stage: the shared inline zone 0x630000-0x690000 holds inline/template functions from every library and the game.
A zone function reached from the NW set (or a slot of a band vtable) is tier `zone` when everything that references it
is NW (or another accepted zone function), every vtable holding it is in the band, and it references no app code
(greatest fixed point). Reached zone functions with other users are tier `zone-shared`: library code, owner unknown.
Run from the repo root: python tools/nw_classify.py
"""
import sys, csv, re, struct, tomllib
from collections import Counter
sys.path.insert(0, '.')
from ctrdecomp import config as c, callgraph as cg
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM, CS_MODE_THUMB

WINDOW = (0x541bc0, 0x56b000)               # NW ends near 0x56af80: from 0x56b000 most functions reference game code
BAND = (0x82c450, 0x82d268)                 # VAs of the NW vtable band in .rodata; 0x82d268 is a game class (its ctor
                                            # 0x56e584 calls game 0x5a4da0)
# library areas: SDK low block, SDK upper block, NW window, shared inline zone, untagged ARM runtime
LIBAREA = [(0x0, 0x31854), (0x4e019c, 0x541bc0), WINDOW, (0x630000, 0x690000), (0x1fc000, 0x204000)]
cfg = c.load(); code = cfg.code(); base = cfg.load_base
RO = 0x690000                               # .rodata; .data starts at 0x789000 and runs to the end of the image
funcs = cg.load_symbols(cfg, 'symbols/code.bin.csv'); info = {f[0]: f for f in funcs}
graph = cg.build(cfg, funcs)
fs = tomllib.load(open('functions.toml', 'rb'))['function']
handled = {int(f['offset'], 16): f for f in fs}
# seeds exclude this script's own output files, so a rerun lists the same set with its evidence
OWN = ('lib/nw4c/nw2_o3.cpp', 'lib/nw4c/nw2.s', 'lib/nw4c/nw3_o3.cpp', 'lib/nw4c/nw3.s')
ZONE = (0x630000, 0x690000)
seed = {o for o, f in handled.items() if f.get('library') == 'nw4c' and f['src'] not in OWN}
word = lambda o: struct.unpack_from('<I', code, o)[0]
inw = lambda o: WINDOW[0] <= o < WINDOW[1]
isl = lambda o: any(a <= o < b for a, b in LIBAREA) or info[o][2] or bool(handled.get(o, {}).get('library'))

def fstart(va):
    """function start (file offset) for a code pointer value, or None"""
    o = (va & ~1) - base
    if not 0 <= o < RO or o not in info or bool(va & 1) != info[o][2]: return None
    return o

def vrun(o):
    """slots of a function-pointer run starting at data offset o"""
    out = []
    while o + 4 <= len(code):
        t = fstart(word(o))
        if t is None: break
        out.append(t); o += 4
    return out

arm, thumb = Cs(CS_ARCH_ARM, CS_MODE_ARM), Cs(CS_ARCH_ARM, CS_MODE_THUMB)
_refs = {}
def refs(st):
    """{target: kind} for direct calls and literal-pool code/vtable pointers of function st"""
    if st in _refs: return _refs[st]
    out = {t: 'call' for t in graph.get(st, ())}
    sz, th = info[st][1], info[st][2]
    for i in (thumb if th else arm).disasm(code[st:st + sz], st):
        if not i.mnemonic.startswith('ldr'): continue
        m = re.search(r'\[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', i.op_str)
        if not m: continue
        a = ((i.address + 4) & ~3 if th else i.address + 8) + (int(m.group(1), 0) if m.group(1) else 0)
        if a + 4 > len(code): continue
        v = word(a); t = fstart(v)
        if t is not None: out.setdefault(t, 'fnptr'); continue
        if RO <= v - base < len(code):
            for s in vrun(v - base): out.setdefault(s, 'vtref')
    out.pop(st, None); _refs[st] = out
    return out

why = {}
o = BAND[0] - base
while o < BAND[1] - base:                  # band vtables
    r = vrun(o)
    for s in r:
        if inw(s) and s not in seed: why.setdefault(s, ('vtable', f'{o + base:x}'))
    o += 4 * max(1, len(r))
todo = list(seed) + list(why)
while todo:                                # closure inside the window
    s = todo.pop()
    for t, kind in refs(s).items():
        if inw(t) and t not in seed and t not in why: why[t] = (kind, f'{s:x}'); todo.append(t)
bad = {s for s in why if any(not isl(t) for t in refs(s))}
ch = True
while ch:
    ch = False
    for s in set(why) - bad:
        if set(refs(s)) & bad: bad.add(s); ch = True

# zone stage
inz = lambda o: ZONE[0] <= o < ZONE[1]
nwf = (seed | set(why)) - bad
rev, holders = {}, {}
for s in info:
    for t in refs(s): rev.setdefault(t, set()).add(s)
o = RO
while o < len(code) - 4:                   # every pointer run of 2+ slots in .rodata/.data (vtables, callback tables)
    r = vrun(o)
    if len(r) >= 2:
        for s in r: holders.setdefault(s, set()).add(o + base)
        o += 4 * len(r)
    else: o += 4
bandslots = set(); o = BAND[0] - base
while o < BAND[1] - base:
    r = vrun(o); bandslots |= set(r); o += 4 * max(1, len(r))
zreach, zacc = {}, set()
while True:
    for s in sorted(nwf | zacc):
        for t, kind in refs(s).items():
            if inz(t) and t not in seed: zreach.setdefault(t, (kind, f'{s:x}'))
    for t in bandslots:
        if inz(t) and t not in seed: zreach.setdefault(t, ('vtable', 'band'))
    acc = {z for z in zreach if all(isl(t) for t in refs(z)) and all(BAND[0] <= v < BAND[1] for v in holders.get(z, ()))}
    ch = True
    while ch:
        ch = False
        for z in list(acc):
            if not rev.get(z, set()) <= nwf | acc: acc.discard(z); ch = True
    if acc == zacc: break
    zacc = acc
for z in zreach:
    why.setdefault(z, zreach[z])

rows = []
for s in sorted(why):
    h = handled.get(s, {})
    if h.get('library') and h['src'] not in OWN: continue
    app = [t for t in refs(s) if not isl(t) or t in bad]
    rows.append(dict(offset=f'{s:x}', size=f'{info[s][1]:x}', thumb=int(info[s][2]), tier=('zone' if s in zacc else 'zone-shared') if inz(s) else 'rejected' if s in bad else 'nw',
                     evidence=why[s][0], via=why[s][1], app_refs=' '.join(f'{t:x}' for t in sorted(app)[:4]),
                     handled_src=h.get('src', '')))
with open('symbols/nw_candidates.csv', 'w', newline='') as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0])); w.writeheader(); w.writerows(rows)
nw = [r for r in rows if r['tier'] == 'nw']; un = [r for r in nw if not r['handled_src']]
zr = [r for r in rows if r['tier'] == 'zone']; zu = [r for r in zr if not r['handled_src']]
print(f'zone: reached {len(zreach)}, nw-only {len(zr)} ({len(zu)} unhandled, {sum(int(r["size"], 16) for r in zu) / 1024:.0f} KiB, '
      f'{sum(1 for r in zr if r["handled_src"].startswith("src/gen/"))} generated C, {sum(1 for r in zr if r["thumb"])} Thumb), '
      f'shared {sum(1 for r in rows if r["tier"] == "zone-shared")}')
print(f'seeds {len(seed)}; candidates {len(why)} ({len(why) - len(rows)} already library); rejected {len(bad)}')
print(f'  nw {len(nw)}: {len(un)} unhandled ({sum(int(r["size"], 16) for r in un) / 1024:.0f} KiB), '
      f'{sum(1 for r in nw if r["handled_src"].startswith("src/gen/"))} generated C, '
      f'{sum(1 for r in nw if r["handled_src"] in OWN)} filed in {"/".join(OWN)}, '
      f'{sum(1 for r in nw if r["handled_src"] and r["handled_src"] not in OWN and not r["handled_src"].startswith("src/gen/"))} hand-written; '
      + ', '.join(f'{k} {n}' for k, n in Counter(r['evidence'] for r in nw).most_common()))
