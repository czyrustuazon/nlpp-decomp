"""padsurvey.py [TOP]: tally the shapes of the cleanup pads of unhandled functions (symbols/cleanup_pads.csv).
Registers become rX, constants #k, any call bl; each shape is printed with its count and one example
(parent, pad). Ends with the unhandled parents by size."""
import collections, sys
import _common as C
from ctrdecomp import config

code = config.load().code(); md = C.disasm()
done = C.handled(); size = C.sizes(); pads = C.pads()
todo = [p for p in pads if p not in done]
print('parents', len(pads), 'unhandled', len(todo), 'matched', len(pads) - len(todo))


def norm(t):
    t = t.strip()
    if 'sp' in t: return 'sp'
    if t.startswith('r') or t in ('sl', 'fp', 'ip'): return 'rX'
    return '#k' if '#' in t else t


shapes = collections.Counter(); ex = {}
for p in todo:
    for o, sz in pads[p]:
        sh = []
        for i in md.disasm(code[o:o + sz], o):
            if i.mnemonic in ('bl', 'blx'): sh.append('bl')
            elif i.mnemonic != 'nop': sh.append(i.mnemonic + ' ' + ' '.join(norm(t) for t in i.op_str.split(',')))
        k = ' ; '.join(sh); shapes[k] += 1; ex.setdefault(k, (p, o))
for k, n in shapes.most_common(int(sys.argv[1]) if len(sys.argv) > 1 else 15):
    print(n, hex(ex[k][0]), hex(ex[k][1]), '|', k[:200])
by = collections.Counter()
for p in todo:
    s = size.get(p, 0)
    by['<=0x40' if s <= 0x40 else '<=0x100' if s <= 0x100 else '<=0x200' if s <= 0x200 else 'larger'] += 1
print(dict(by))
