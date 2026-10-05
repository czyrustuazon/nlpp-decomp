"""apply2.py TAG PREFIX CHUNK: merge $S/gen2_<TAG>_*.json, write PREFIX_<n>.cpp files of CHUNK functions each,
and append functions.toml (generated = true) / externs.toml entries. See apply.py for the single-file form."""
import json, re, sys, os, glob
sys.path.insert(0, '.')
S = os.environ['S']
from ctrdecomp import config as c, callgraph as cg
import tomllib
tag, prefix, chunk = sys.argv[1], sys.argv[2], int(sys.argv[3])
os.makedirs(os.path.dirname(prefix), exist_ok=True)
cfg = c.load(); funcs = cg.load_symbols(cfg, 'symbols/code.bin.csv')
res = []
for f in sorted(glob.glob(f'{S}/gen2_{tag}_*.json')): res += json.load(open(f))
res.sort(key=lambda r: r['st'])
ext = tomllib.load(open('externs.toml', 'rb'))['symbols']
have = {int(f['offset'], 16) for f in tomllib.load(open('functions.toml', 'rb'))['function']}
res = [r for r in res if r['st'] not in have and r['st'] >= 0x24]   # 0x0-0x23 is the vector table, not code
thumb_at = lambda t: next((f[2] for f in funcs if f[0] <= t < f[0] + f[1]), False)
NL = chr(10)
PRE = NL.join(['typedef unsigned char u8;', 'typedef unsigned short u16;', 'typedef unsigned u32;', 'typedef unsigned long long u64;', 'static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }', 'static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }']) + NL
toml = []; ext_rows = {}
for n in range(0, len(res), chunk):
    part = res[n:n + chunk]; path = f'{prefix}_{n // chunk}.cpp'
    decls = []; bodies = []
    for r in part:
        for line in r['decl'].split(NL):
            if line and line not in decls: decls.append(line)
        bodies.append(f"// FUN_{r['st']:08x}" + NL + r['body'])
        toml.append(f'{NL}[[function]]{NL}name = "W_{r["st"]:06x}"{NL}offset = "{r["st"]:x}"{NL}size = "{r["size"]:x}"{NL}src = "{path}"{NL}symbol = "{r["sym"]}"{NL}generated = true{NL}score = 0{NL}')
        for u in r['und']:
            if re.search(r'WeakCall\d', u):
                ext_rows[u] = 'weak'; continue
            m = re.search(r'Fn_([0-9a-f]{6})', u)
            if m:
                t = int(m.group(1), 16); ext_rows[u] = 0x100000 + t + (1 if thumb_at(t) else 0)
            else:
                m = re.match(r'g_([0-9a-f]{8})$', u)
                if m: ext_rows[u] = int(m.group(1), 16)
                else: print('UNRESOLVED', u, file=sys.stderr)
    head = ('// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,'
            + NL + '// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.' + NL
            + '// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime' + NL)
    open(path, 'w', newline='\n').write(head + PRE + NL.join(decls) + NL + NL + (NL + NL).join(bodies) + NL)
with open('functions.toml', 'a', encoding='utf-8', newline='') as f: f.write(''.join(toml))
with open('externs.toml', 'a', encoding='utf-8', newline='') as f:
    f.write(f'{NL}# {prefix}_*.cpp callees and globals{NL}')
    for k, v in sorted(ext_rows.items()):
        if k not in ext: f.write(f'{k} = "weak"{NL}' if v == 'weak' else f'{k} = 0x{v:08X}{NL}')
print(len(res), 'functions in', (len(res) + chunk - 1) // chunk, 'files;', len(ext_rows), 'externs')
