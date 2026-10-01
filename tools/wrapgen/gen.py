"""Template wrapper generator. usage: gen.py LO HI MAXSIZE  -> writes $S/gen_out.json with verified entries"""
import sys,re,json,struct,os,tomllib
sys.path.insert(0,'.')
from ctrdecomp import config as c, callgraph as cg
from ctrdecomp.compare import compile_obj, compare
from elftools.elf.elffile import ELFFile
from capstone import *
S=os.environ['S']
cfg=c.load()
funcs=cg.load_symbols(cfg,'symbols/code.bin.csv'); info={f[0]:f for f in funcs}
graph=cg.build(cfg,funcs)
ft=tomllib.load(open('functions.toml','rb'))
handled={int(f['offset'],16) for f in ft['function']}
todo=[s for s in graph if s not in handled]
leaves=[s for s in todo if not graph[s]]
ok=set(leaves)|handled
ready=[s for s in todo if graph[s] and graph[s]<=ok]
code=cfg.code()
md=Cs(CS_ARCH_ARM,CS_MODE_ARM)
def ins_of(st,sz): return [(i.mnemonic,i.op_str,i.address) for i in md.disasm(code[st:st+sz],st)]
def pool(addr_ins):
    m,o,a=addr_ins
    mm=re.match(r'(?:ldr|vldr) \S+, \[pc(?:, #(0x[0-9a-f]+|\d+))?\]',f'{m} {o}')
    d=int(mm.group(1),0) if mm and mm.group(1) else 0
    return a+8+d
def word(a): return struct.unpack_from('<I',code,a)[0]
def fl(w): return struct.unpack('<f',struct.pack('<I',w))[0]
def tgt(i): return int(i[1].lstrip('#'),0)
def gen(st,sz):
    """return (src_body, decl_lines) or None. callee name Fn_<hex>."""
    I=ins_of(st,sz)
    sig=' ; '.join(f'{m} {o}' for m,o,a in I if True)
    T=lambda i:f'Fn_{tgt(i):06x}'
    n=[m for m,o,a in I]
    if len(I)==1 and I[0][0]=='b':
        t=T(I[0]); return (f'void {t}();', f'void W_{st:06x}() {{ {t}(); }}', 'v')
    if n==['push','bl','pop'] and I[0][1]=='{r4, lr}' and I[2][1]=='{r4, pc}':
        t=T(I[1]); return (f'int {t}(void*);', f'void* W_{st:06x}(void* a) {{ {t}(a); return a; }}','x') if False else None
    if n==['push','bl','mov','pop'] and I[0][1]=='{r4, lr}' and I[2][1]=='r0, #1':
        t=T(I[1]); return (f'void {t}(void*);', f'int W_{st:06x}(void* a) {{ {t}(a); return 1; }}','v')
    if n==['push','bl','sub','pop'] and I[2][1].startswith('r0, r0, #'):
        k=int(I[2][1].split('#')[1],0); t=T(I[1]); return (f'char* {t}(char*);', f'char* W_{st:06x}(char* a) {{ return {t}(a) - {k}; }}','v')
    if n==['push','bl','add','pop'] and I[2][1].startswith('r0, r0, #'):
        k=int(I[2][1].split('#')[1],0); t=T(I[1]); return (f'char* {t}(char*);', f'char* W_{st:06x}(char* a) {{ return {t}(a) + {k}; }}','v')
    if n==['vldr','vldr','b']:
        a0,a1=word(pool(I[0])),word(pool(I[1]))   # I[0]=s1, I[1]=s0
        if I[0][1].startswith('s1') and I[1][1].startswith('s0'):
            t=T(I[2]); return (f'void {t}(float, float);', f'void W_{st:06x}() {{ {t}({fl(a1)!r}f, {fl(a0)!r}f); }}','v')
    if n==['ldr','mov','b'] and re.match(r'r0, \[r0, #(0x[0-9a-f]+)\]',I[0][1]) and re.match(r'r1, #(\d+)$',I[1][1]):
        k=int(re.match(r'r0, \[r0, #(0x[0-9a-f]+)\]',I[0][1]).group(1),0); v=int(I[1][1].split('#')[1]); t=T(I[2])
        return (f'void {t}(void*, int);', f'struct O{st:06x} {{ char p[{k}]; void* f; }};\nvoid W_{st:06x}(O{st:06x}* a) {{ {t}(a->f, {v}); }}','v')
    if n==['mov','str','b'] and re.match(r'r1, #(\d+)$',I[0][1]) and re.match(r'r1, \[r0, #(0x[0-9a-f]+)\]$',I[1][1]):
        v=int(I[0][1].split('#')[1]); k=int(re.match(r'r1, \[r0, #(0x[0-9a-f]+)\]$',I[1][1]).group(1),0); t=T(I[2])
        return (f'void {t}(void*);', f'struct O{st:06x} {{ char p[{k}]; unsigned f; }};\nvoid W_{st:06x}(O{st:06x}* a) {{ a->f = {v}; {t}(a); }}','v')
    if n==['mov','add','b'] and re.match(r'r2, #(\w+)$',I[0][1]) and re.match(r'r0, r0, #(\w+)$',I[1][1]):
        v=int(I[0][1].split('#')[1],0); k=int(I[1][1].split('#')[1],0); t=T(I[2])
        return (f'void {t}(char*, unsigned, unsigned);', f'void W_{st:06x}(char* a, unsigned b) {{ {t}(a + {k}, b, {v}); }}','v')
    if n==['add','b'] and re.match(r'r0, r0, #(\w+)$',I[0][1]):
        k=int(I[0][1].split('#')[1],0); t=T(I[1])
        return (f'void {t}(char*);', f'void W_{st:06x}(char* a) {{ {t}(a + {k}); }}','v')
    if n==['ldr','ldr','b'] and I[0][1].startswith('r0, [pc') and I[1][1]=='r0, [r0]':
        g=word(pool(I[0])); t=T(I[2])
        return (f'extern void* g_{g:08x};\nvoid {t}(void*);', f'void W_{st:06x}() {{ {t}(g_{g:08x}); }}','g:%d'%g)
    if n==['mov','b'] and I[0][1]=='r0, r1':
        t=T(I[1]); return (f'void {t}(void*);', f'void W_{st:06x}(void*, void* b) {{ {t}(b); }}','v')
    return None

NL = chr(10)
PRE = NL.join(['typedef unsigned char u8;', 'typedef unsigned short u16;', 'typedef unsigned u32;']) + NL
sys.path.insert(0, S)
import lift as L
def attempt(st, sz, decl, body):
    src = PRE + decl + NL + body + NL
    p = f'{S}/g_{st:06x}.cpp'; open(p, 'w').write(src)
    try:
        obj = compile_obj(cfg, p)
        tab = ELFFile(open(obj, 'rb')).get_section_by_name('.symtab')
        syms = [s.name for s in tab.iter_symbols() if s['st_shndx'] not in ('SHN_UNDEF', 'SHN_ABS') and s.name.startswith('_Z') and f'W_{st:06x}' in s.name]
        if not syms: return None
        sym = syms[0]
        for z in range(sz, sz + 0x24, 4):
            try:
                if compare(cfg, p, sym, st, z).score == 0:
                    und = [s.name for s in tab.iter_symbols() if s['st_shndx'] == 'SHN_UNDEF' and s.name and not s.name.startswith('Lib$$')]
                    return dict(st=st, size=z, sym=sym, decl=decl, body=body, und=und, callee=sorted(graph[st]))
            except Exception: pass
    except Exception: return None
    return None
if __name__ == '__main__':
    lo, hi, mx = [int(x, 16) for x in sys.argv[1:4]]
    use_lift = len(sys.argv) > 4 and sys.argv[4] == 'lift'
    res = []; unk = 0; lifted = 0
    for st in sorted(ready):
        if not (lo <= st < hi) or info[st][2] or info[st][1] > mx: continue
        sz = info[st][1]
        g = gen(st, sz)
        if g:
            r = attempt(st, sz, g[0], g[1])
            if r: res.append(r)
            continue
        if not use_lift: unk += 1; continue
        try: vs = L.lift(ins_of(st, sz), word, f'W_{st:06x}')
        except Exception as e: unk += 1; continue
        for decls, body, calls in vs:
            r = attempt(st, sz, NL.join(decls), body)
            if r: res.append(r); lifted += 1; break
        else: unk += 1
    json.dump(res, open(f'{S}/gen_out.json', 'w'))
    print('matched', len(res), '(lifted %d)' % lifted, 'unrecognized/failed', unk)
