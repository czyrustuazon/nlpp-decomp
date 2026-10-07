"""sdk_classify.py: list CTR SDK candidates by call-graph and codegen evidence -> symbols/sdk_candidates.csv

Seeds are the functions already filed as CTR SDK in functions.toml (library ctrsvc / ctrsdk / ctr-sdk) plus every
IPC wrapper in symbols/ipc_callers.csv. Evidence per function (technical.md section 5 gap 3):
  sdk_callee        reachable by direct calls from the seeds. A library cannot call the app directly (only through
                    pointers or app-defined hooks such as nnMain, none of which are seeds), so callees are library code.
                    Exception: small inline/template functions are emitted by every object that uses them and the
                    linker keeps one copy anywhere, so a tiny callee outside the library blocks may be shared.
  only_sdk_callers  every direct caller is SDK (iterated to a fixed point; indirect calls are not seen)
  o2_check          the unpredicated -O2 result check `mov rX, pc; lsrs rY, rZ, #0x1f; blne`; the game's -O3 code would
                    predicate it (`movlt rX, pc; bllt`), and that -O3 form occurs nowhere in the binary
Tiers:
  strong      any evidence above
  block       inside a library block (span of seeds + strong, per window below) and calls only library/runtime code
  conflict    inside a library block but calls app code directly (not SDK, or the block edge is wrong)
Library/runtime targets for the block test: library-tagged functions (incl. crt), strong candidates, Thumb functions
(the RVCT runtime), and other block members. The hint `nop` (0xe320f000) occurs everywhere and is not evidence.
Run from the repo root: python tools/sdk_classify.py
"""
import sys, csv, tomllib
from collections import defaultdict, Counter
sys.path.insert(0, '.')
from ctrdecomp import config as c, callgraph as cg
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM

SDK_LIBS = {'ctrsvc', 'ctrsdk', 'ctr-sdk'}
WINDOWS = [(0x0, 0x40000), (0x4d0000, 0x541bc0)]   # where the seeds cluster (section 5 gap 3); spans are recomputed
# 0x541bc0 is where NintendoWare starts (IsValidBinaryFile 0x541ce0, GetNextBlockHeader 0x541d60, ParseClim 0x542c30
# in lib/nw4c): the stretch after it is called from all over the game and is not CTR SDK.
cfg = c.load(); code = cfg.code()
funcs = cg.load_symbols(cfg, 'symbols/code.bin.csv'); info = {f[0]: f for f in funcs}
graph = cg.build(cfg, funcs)
callers = defaultdict(set)
for a, cs in graph.items():
    for b in cs: callers[b].add(a)
fs = tomllib.load(open('functions.toml', 'rb'))['function']
handled = {int(f['offset'], 16): f for f in fs}
libf = {o for o, f in handled.items() if f.get('library')}
seed = {o for o, f in handled.items() if f.get('library') in SDK_LIBS}
seed |= {int(r['offset'], 16) for r in csv.DictReader(open('symbols/ipc_callers.csv'))}

md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
o2 = set()
for st, sz, th, _ in funcs:
    if th: continue
    ins = [(i.mnemonic, i.op_str) for i in md.disasm(code[st:st + sz], st)]
    for k in range(len(ins) - 2):
        if ins[k][0] == 'mov' and ins[k][1].endswith(', pc') and ins[k + 1][0] == 'lsrs' and ins[k + 1][1].endswith('#0x1f') and ins[k + 2][0] == 'blne':
            o2.add(st); break

sdk = set(seed) | o2; callee, only = set(), set()
changed = True
while changed:
    changed = False
    for st in list(sdk):                       # downward: callees of SDK are library
        for b in graph.get(st, ()):
            if b not in sdk: sdk.add(b); callee.add(b); changed = True
    for st in info:                            # upward: called only by SDK
        if st not in sdk and callers[st] and callers[st] <= sdk:
            sdk.add(st); only.add(st); changed = True
strong = sdk - seed

blocks = []
for lo, hi in WINDOWS:
    ks = [o for o in sdk if lo <= o < hi]
    if ks: b = max(ks); blocks.append((min(ks), b + info[b][1]))
inb = lambda o: any(a <= o < b for a, b in blocks)
okt = lambda t: inb(t) or t in libf or t in sdk or info[t][2]

rows = []; tiers = Counter()
for st in sorted(info):
    if st in seed: continue
    if st in strong:
        tier = 'strong'; ev = [n for n, s in (('sdk_callee', callee), ('only_sdk_callers', only), ('o2_check', o2)) if st in s]
        if not inb(st): ev.append('outside_blocks')
    elif inb(st):
        bad = [t for t in graph.get(st, ()) if not okt(t)]
        tier = 'conflict' if bad else 'block'; ev = [f'calls {t:x}' for t in bad[:3]]
    else: continue
    h = handled.get(st); tiers[tier] += 1
    rows.append(dict(offset=f'{st:x}', size=f'{info[st][1]:x}', thumb=int(info[st][2]), tier=tier, evidence='+'.join(ev),
                     callers=len(callers[st]), handled_src=h['src'] if h else ''))
with open('symbols/sdk_candidates.csv', 'w', newline='') as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0])); w.writeheader(); w.writerows(rows)
print('blocks:', ', '.join(f'{a:06x}-{b:06x}' for a, b in blocks))
print(f'seeds {len(seed)}; ' + ', '.join(f'{t} {n}' for t, n in tiers.items()))
for t in ('strong', 'block', 'conflict'):
    rs = [r for r in rows if r['tier'] == t]
    un = [r for r in rs if not r['handled_src']]
    print(f'  {t}: {len(rs)} ({len(un)} unhandled, {sum(int(r["size"], 16) for r in un) / 1024:.0f} KiB; '
          f'{sum(1 for r in rs if r["handled_src"].startswith("src/"))} already matched as C in src/)'
          + (f'; outside blocks {sum(1 for r in rs if "outside_blocks" in r["evidence"])}' if t == 'strong' else ''))
