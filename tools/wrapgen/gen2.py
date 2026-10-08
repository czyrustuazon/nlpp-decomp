"""gen2.py LO HI MAXSIZE PART NPARTS [TAG]: parallel-friendly driver over ALL unhandled ARM functions
in [LO, HI) up to MAXSIZE bytes (callees need only an extern address, not a match). Same templates and
lifter as gen.py; one compile + one compare per candidate. Writes $S/gen2_<TAG>_<PART>.json."""
import sys, os, json
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gen as G
from ctrdecomp.compare import compile_obj, compare, read_function
from elftools.elf.elffile import ELFFile
import lift as L
import lift2 as L2
lo, hi, mx, part, nparts = [int(x, 16) if i < 3 else int(x) for i, x in enumerate(sys.argv[1:6])]
tag = sys.argv[6] if len(sys.argv) > 6 else 'x'
S = G.S; NL = G.NL; PRE = G.PRE
FL = os.environ.get('GEN_FLAGS')   # e.g. "--cpu=MPCore --arm -O2 -Otime --split_sections" (SDK code is -O2, technical.md section 8 item 7)
FL = FL.split() if FL else None
def attempt(st, sz, decl, body):
    p = f'{S}/g2_{tag}_{st:06x}.cpp'
    open(p, 'w').write(PRE + decl + NL + body + NL)
    obj = None
    try:
        obj = compile_obj(G.cfg, p, FL)
        with open(obj, 'rb') as fh:   # closed before the unlink below (Windows cannot delete an open file)
            tab = ELFFile(fh).get_section_by_name('.symtab')
            syms = [s.name for s in tab.iter_symbols() if s['st_shndx'] not in ('SHN_UNDEF', 'SHN_ABS') and s.name.startswith('_Z') and f'W_{st:06x}' in s.name]
            undall = [s.name for s in tab.iter_symbols() if s['st_shndx'] == 'SHN_UNDEF' and s.name and not s.name.startswith('Lib$$')]
        if not syms: return None
        sym = syms[0]
        z = len(read_function(obj, sym).data)
        if z < sz or z > sz + 0x24: return None
        if compare(G.cfg, p, sym, st, z, FL).score == 0:
            return dict(st=st, size=z, sym=sym, decl=decl, body=body, und=undall, callee=sorted(G.graph[st]))
    except Exception:
        return None
    finally:
        for q in (p, obj):   # compile_obj leaves its object in the temp dir; leaking one per attempt slowed every run
            try:
                if q: os.unlink(q)
            except OSError: pass
    return None
d = __import__('tomllib').load(open('functions.toml', 'rb'))
handled = {int(f['offset'], 16) for f in d['function']}
cands = [st for st, sz, th, n in G.funcs if not th and st not in handled and lo <= st < hi and sz <= mx]
if os.environ.get('ONLY'):   # ONLY=<csv with an `offset` column (hex)>: restrict to those functions
    import csv
    only = {int(r['offset'], 16) for r in csv.DictReader(open(os.environ['ONLY']))}
    cands = [st for st in cands if st in only]
res = []; tried = 0; saved = [-1]
for k, st in enumerate(cands):
    if k % nparts != part: continue
    if len(res) != saved[0]: json.dump(res, open(f'{S}/gen2_{tag}_{part}.json', 'w')); saved[0] = len(res)   # partial results survive a kill
    sz = G.info[st][1]; tried += 1
    print(f'{tried} {st:06x} matched={len(res)}', flush=True)
    g = G.gen(st, sz)
    if g:
        r = attempt(st, sz, g[0], g[1])
        if r: res.append(r)
        continue
    try: vs = L.lift(G.ins_of(st, sz), G.word, f'W_{st:06x}')
    except Exception:
        try: vs = L2.lift(G.ins_of(st, sz), G.word, f'W_{st:06x}')
        except Exception: continue
    done = False
    for decls, body, calls in vs:
        r = attempt(st, sz, NL.join(decls), body)
        if r: res.append(r); done = True; break
    if not done:
        try: vs = L2.lift(G.ins_of(st, sz), G.word, f'W_{st:06x}')
        except Exception: continue
        for decls, body, calls in vs:
            r = attempt(st, sz, NL.join(decls), body)
            if r: res.append(r); break
json.dump(res, open(f'{S}/gen2_{tag}_{part}.json', 'w'))
print(f'part {part}: tried {tried}, matched {len(res)}')
