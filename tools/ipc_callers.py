"""ipc_callers.py OUT.csv: join symbols/ipc_commands.csv to the functions that call each stub.
One row per caller function (symbols/code.bin.csv): address, size, services, distinct command names and a suggested label.
The label is only a hint for naming: <svc>_<cmd> when the caller issues a single named command, else <svc>_Multi<n>."""
import csv, struct, sys, collections, bisect
sys.path.insert(0, '.')
from ctrdecomp import config as c

cfg = c.load(); code = cfg.code()
stubs = {}
for x in csv.DictReader(open('symbols/ipc_commands.csv')):
    stubs[int(x['offset'], 16)] = (x['service'].split(' (')[0], x['command'], int(x['cmd_id']))
funcs = sorted((int(r['Location'], 16) - 0x100000, int(r['Size'], 16), r['Mode'])
               for r in csv.DictReader(open('symbols/code.bin.csv')))
starts = [f[0] for f in funcs]
calls = collections.defaultdict(list)       # caller func start -> [(stub off, call site)]
for t in range(0, len(code) - 3, 4):
    w = struct.unpack_from('<I', code, t)[0]
    if (w >> 28) != 0xe or (w >> 25) & 7 != 5: continue          # unconditional b/bl only
    off = w & 0xffffff
    if off & 0x800000: off -= 1 << 24
    d = t + 8 + off * 4
    if d not in stubs: continue
    i = bisect.bisect_right(starts, t) - 1
    if i < 0 or funcs[i][0] in stubs: continue                    # a stub calling a stub is not a wrapper
    calls[funcs[i][0]].append((d, t))
size = {f[0]: f[1] for f in funcs}
rows = []
for fn, cs in sorted(calls.items()):
    svcs = sorted({stubs[d][0] for d, _ in cs})
    names = []
    for d, _ in cs:
        n = stubs[d][1] or 'cmd%x' % stubs[d][2]
        if n not in names: names.append(n)
    s0 = svcs[0].replace(':', '_').replace('::', '_')
    label = f'{s0}_{names[0]}' if len(names) == 1 else f'{s0}_Multi{len(names)}'
    rows.append((f'{fn:x}', f'{size[fn]:x}', '+'.join(svcs), len(cs), ';'.join(names), label))
with open(sys.argv[1], 'w', newline='') as o:
    w = csv.writer(o); w.writerow(['offset', 'size', 'services', 'calls', 'commands', 'label']); w.writerows(rows)
print(len(rows), 'caller functions,', sum(1 for r in rows if '_Multi' not in r[5]), 'single-command')
