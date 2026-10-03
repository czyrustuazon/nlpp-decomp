"""onlylist.py OUT.csv [--max HEX] [--min HEX] [--grep REGEX]: write the offsets of unhandled ARM functions that the
current lifter (lift2.py) can lift, for `ONLY=OUT.csv python tools/wrapgen/gen2.py 100 a00000 MAXSIZE PART NPARTS TAG`.
--grep keeps only functions with an instruction line `mnemonic operands` matching REGEX (e.g. 'mov r0, r0' for the weak-call
sites, 'ldrd|strd' for doubleword ops). Run from the repo root with S=build/scratch. Prints counts per lift failure reason."""
import sys, os, re, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gen as G, lift2 as L2
args = sys.argv[1:]
out = args[0]
mx = int(args[args.index('--max') + 1], 16) if '--max' in args else 0x80
mn = int(args[args.index('--min') + 1], 16) if '--min' in args else 0x10
rx = re.compile(args[args.index('--grep') + 1]) if '--grep' in args else None
handled = {int(f['offset'], 16) for f in __import__('tomllib').load(open('functions.toml', 'rb'))['function']}
rows = []; why = collections.Counter()
for st, sz, th, n in G.funcs:
    if th or st in handled or sz > mx or sz < mn or st < 0x100: continue
    I = G.ins_of(st, sz)
    if rx and not any(rx.search(f'{m} {o}') for m, o, a in I): continue
    try: L2.lift(I, G.word, 'W')
    except Exception as e: why[str(e)[:24]] += 1; continue
    rows.append(st)
open(out, 'w').write('offset\n' + '\n'.join('%x' % r for r in rows) + '\n')
print(len(rows), 'liftable;', 'failures:', why.most_common(8))
