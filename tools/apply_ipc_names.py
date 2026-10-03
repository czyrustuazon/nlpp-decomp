"""apply_ipc_names.py: give IPC stubs and their callers real names.
Stubs (lib/ctrsvc/svc_wrappers.s, functions.toml): A_<off> -> <svc>_<cmd> when symbols/ipc_commands.csv names the command.
Callers (symbols/ipc_callers.csv): sourced ones (src/gen/*.cpp, W_<off>) are renamed in place; every caller also goes into
symbols/names.csv (offset,name), which `pipeline-symbols` uses for functions that have no source.
Names are unique: a clash or a *_Multi<n> label gets the offset appended. Idempotent only on a tree that still has A_/W_ names."""
import csv, re, sys, glob, collections

def san(s): return re.sub(r'\W+', '_', s.split(' (')[0]).strip('_')
stub = {}
rows = list(csv.DictReader(open('symbols/ipc_commands.csv')))
for r in rows:
    if r['command']:
        n = f"{san(r['service'])}_{san(r['command'])}"
        stub[r['offset']] = n
final, seen = {}, collections.Counter(stub.values())
for o, n in stub.items(): final[o] = n if seen[n] == 1 else f"{n}_{o}"
stub = final

call, c_used = {}, collections.Counter()
crow = list(csv.DictReader(open('symbols/ipc_callers.csv')))
for r in crow: c_used[r['label']] += 1
for r in crow:
    l = san(r['label'])
    call[r['offset']] = l if c_used[l] == 1 and '_Multi' not in l else f"{l}_{r['offset']}"

def sub(path, f):
    t = f(open(path, encoding='utf-8', newline='').read())
    open(path, 'w', encoding='utf-8', newline='').write(t)
# 1. stubs in asm + toml
def asm(t):
    for o, n in stub.items(): t = re.sub(rf'\bA_{o}\b', n, t)
    return t
sub('lib/ctrsvc/svc_wrappers.s', asm)
def tom(t):
    for o, n in stub.items(): t = re.sub(rf'\bA_{o}\b', n, t)
    for o, n in call.items():
        for pat in (rf'W_{int(o,16):06x}', rf'W_{o}'):
            t = re.sub(rf'name = "{pat}"', f'name = "{n}"', t)
            t = re.sub(rf'_Z\d+{pat}(?=[a-zA-Z])', f'_Z{len(n)}{n}', t)
    return t
sub('functions.toml', tom)
# 2. sourced callers
for p in glob.glob('src/*.cpp') + glob.glob('src/gen/*.cpp'):
    def cpp(t):
        for o, n in call.items():
            for pat in (rf'W_{int(o,16):06x}', rf'W_{o}'):
                t = re.sub(rf'\b{pat}\(', f'{n}(', t)
        return t
    sub(p, cpp)
with open('symbols/names.csv', 'w', newline='') as f:
    w = csv.writer(f); w.writerow(['offset', 'name'])
    w.writerows(sorted((o, n) for o, n in {**call, **stub}.items()))
print(len(stub), 'stubs,', len(call), 'callers')
