"""liftvars.py OFF [plain|exc|"FLAGS"]: lift one function with tools/wrapgen/lift2.py and score every variant against
retail, its cleanup pad included when symbols/cleanup_pads.csv lists one. Default flags: exc. lift2's environment
options apply (LIFT_GUARD=none,ptop,pcall,pcall1, LIFT_NOTHROW=1, ...). The best variant is written to
$EH_SCRATCH/liftvars.cpp; diff it with `python -m ctrdecomp diff` or tools/handmatch/diff.py."""
import os, sys
import _common as C
if len(sys.argv) < 2: sys.exit(__doc__)
import gen as G, lift2 as L2
from ctrdecomp.compare import compile_obj, compare, read_function
from elftools.elf.elffile import ELFFile

st = int(sys.argv[1], 16); sz = G.info[st][1]
fl = C.flags(sys.argv[2]) if len(sys.argv) > 2 else C.FLAGS['exc']
pad = C.pads().get(st, [(None, 0)])[0][0]
out = os.path.join(C.SCRATCH, 'liftvars.cpp')
try: vs = L2.lift(G.ins_of(st, sz), G.word, f'W_{st:06x}')
except Exception as e: sys.exit(f'lift failed: {e}')
best = None
for k, (decls, body, _) in enumerate(vs):
    p = os.path.join(C.SCRATCH, 'liftvars_try.cpp'); open(p, 'w').write(G.PRE + '\n'.join(decls) + '\n' + body + '\n')
    try: obj = compile_obj(G.cfg, p, fl)
    except Exception as e: print(f'{k}: compile failed: {str(e)[:200]}'); continue
    try:
        with open(obj, 'rb') as fh:
            sym = [s.name for s in ELFFile(fh).get_section_by_name('.symtab').iter_symbols() if f'W_{st:06x}' in s.name and s.name.startswith('_Z')][0]
        mine = read_function(obj, sym)
    finally:
        os.unlink(obj)
    r = compare(G.cfg, p, sym, st, len(mine.data), fl, clean=pad)
    print(f'{k}: score {r.score}, size {len(mine.data):#x} (listed {sz:#x}), pad {mine.clean.data.hex() if mine.clean else None}')
    if best is None or r.score < best[0]: best = (r.score, decls, body, sym)
if best:
    open(out, 'w').write(G.PRE + '\n'.join(best[1]) + '\n' + best[2] + '\n')
    print(f'best {best[0]} ({best[3]}) -> {out}')
