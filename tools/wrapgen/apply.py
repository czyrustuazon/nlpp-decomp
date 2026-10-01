import json,re,sys,os
sys.path.insert(0,'.')
S=os.environ['S']
from ctrdecomp import config as c, callgraph as cg
cfg=c.load(); funcs=cg.load_symbols(cfg,'symbols/code.bin.csv'); info={f[0]:f for f in funcs}
out=sys.argv[1]; tag=sys.argv[2]
res=json.load(open(f'{S}/gen_out.json'))
import tomllib
have={f['symbol'] for f in tomllib.load(open('functions.toml','rb'))['function']}
ext=tomllib.load(open('externs.toml','rb'))['symbols']
decls=[]; bodies=[]; fn_rows=[]; ext_rows={}
for r in res:
    for line in r['decl'].split('\n'):
        if line not in decls: decls.append(line)
    bodies.append(f"// FUN_{r['st']:08x}\n"+r['body'])
    fn_rows.append((f"W_{r['st']:06x}",r['st'],r['size'],r['sym']))
    for u in r['und']:
        m=re.search(r'Fn_([0-9a-f]{6})',u)
        if m:
            t=int(m.group(1),16); th=next((f[2] for f in funcs if f[0]<=t<f[0]+f[1]),False); ext_rows[u]=0x100000+t+(1 if th else 0); (print('NOTSTART %x'%t,file=sys.stderr) if t not in info else None)
        else:
            m=re.match(r'g_([0-9a-f]{8})$',u)
            if m: ext_rows[u]=int(m.group(1),16)
            else: print('UNRESOLVED',u,file=sys.stderr)
src=f"""// Generated wrapper functions ({tag}): template matches found by the wrapper generator
// (technical.md section 8 item 5). Each is a few instructions that forward to another function;
// callee names are Fn_<file offset>, signatures are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
"""+"\n".join(decls)+"\n\n"+"\n\n".join(bodies)+"\n"
open(out,'w',newline='\n').write(src)
with open('functions.toml','a',encoding='utf-8',newline='') as f:
    for n,st,z,sym in fn_rows:
        f.write(f'\n[[function]]\nname = "{n}"\noffset = "{st:x}"\nsize = "{z:x}"\nsrc = "{out}"\nsymbol = "{sym}"\nscore = 0\n')
with open('externs.toml','a',encoding='utf-8',newline='') as f:
    f.write(f"\n# {out} callees and globals\n")
    for k,v in sorted(ext_rows.items()):
        if k not in ext: f.write(f'{k} = 0x{v:08X}\n')
print(len(fn_rows),'functions',len(ext_rows),'externs')
