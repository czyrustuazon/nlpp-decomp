"""sample.py PART NPARTS TAG: for each unhandled function in ONLY=<csv> (or all), lift it, compile every
variant and keep the best score with its aligned diff. Writes $S/sample_<TAG>_<PART>.json. Used to tally
which idiom classes block the remaining near-misses."""
import sys, os, json, csv
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gen as G
from ctrdecomp.compare import compile_obj, compare, read_function
from elftools.elf.elffile import ELFFile
import lift2 as L2
part, nparts = int(sys.argv[1]), int(sys.argv[2]); tag = sys.argv[3] if len(sys.argv) > 3 else 's'
S = G.S; NL = G.NL; PRE = G.PRE
def score(st, sz, decl, body):
    p = f'{S}/sm_{tag}_{st:06x}.cpp'
    open(p, 'w').write(PRE + decl + NL + body + NL)
    try:
        obj = compile_obj(G.cfg, p)
        tab = ELFFile(open(obj, 'rb')).get_section_by_name('.symtab')
        syms = [s.name for s in tab.iter_symbols() if s['st_shndx'] not in ('SHN_UNDEF', 'SHN_ABS') and s.name.startswith('_Z') and f'W_{st:06x}' in s.name]
        if not syms: return None
        z = len(read_function(obj, syms[0]).data)
        r = compare(G.cfg, p, syms[0], st, max(sz, z))
        return r.score, r.aligned
    except Exception:
        return None
    finally:
        try: os.unlink(p)
        except OSError: pass
only = {int(r['offset'], 16) for r in csv.DictReader(open(os.environ['ONLY']))} if os.environ.get('ONLY') else None
cands = [st for st, sz, th, n in G.funcs if not th and st not in G.handled and (only is None or st in only)]
out = []
for k, st in enumerate(cands):
    if k % nparts != part: continue
    sz = G.info[st][1]
    try: vs = L2.lift(G.ins_of(st, sz), G.word, f'W_{st:06x}')
    except Exception as e:
        out.append(dict(st=st, size=sz, fail=str(e)[:80])); continue
    best = None
    for decls, body, calls in vs:
        r = score(st, sz, NL.join(decls), body)
        if r and (best is None or r[0] < best[0]): best = (r[0], r[1], NL.join(decls), body)
        if best and best[0] == 0: break
    out.append(dict(st=st, size=sz, score=best[0], diff=best[1], decl=best[2], body=best[3]) if best else dict(st=st, size=sz, fail='nocompile'))
    json.dump(out, open(f'{S}/sample_{tag}_{part}.json', 'w'))
json.dump(out, open(f'{S}/sample_{tag}_{part}.json', 'w'))
print(f'part {part}: {len(out)}')
