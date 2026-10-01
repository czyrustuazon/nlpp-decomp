"""Symbolic lifter for tiny ARM functions -> C++ candidates (list of (decls, body))."""
import re,struct
M=lambda s,p: re.match(p,s)
def lift(I, word, fname, variants=True):
    """I: list of (mnemonic, op_str, addr). word(addr)->u32. Returns list of (decl_lines, body_text, calls) or []"""
    n=len(I)
    # map label addresses to index
    idx={a:i for i,(m,o,a) in enumerate(I)}
    end_addr=I[-1][2]+4 if I else 0
    params=set(); regs={}; lines=[]; decls=set(); calls=[]; tmp=[0]
    # reg state: value expr string; None = undefined (clobbered)
    def get(r):
        if r not in regs:
            k=int(r[1:])
            if k>3: raise ValueError('uninit '+r)
            params.add(k); regs[r]=f'a{k}'
        if regs[r] is None: raise ValueError('clobbered '+r)
        return regs[r]
    def new(expr):
        tmp[0]+=1; return f't{tmp[0]}'
    def addr_expr(base,off):
        return f'(u32)({base}) + {off}' if off else f'(u32)({base})'
    def parse_mem(o):
        m=M(o,r'(\w+), \[(\w+)(?:, #(-?(?:0x[0-9a-f]+|\d+)))?\]$')
        if not m: raise ValueError('mem '+o)
        return m.group(1),m.group(2),int(m.group(3),0) if m.group(3) else 0
    out=[]; indent=['    ']; pending=[]  # pending closes: (label_addr)
    i=0; ret=None; tail=None
    saved_regs=None
    def emit(s): out.append(indent[0]+s)
    def argn():
        a=[]
        for k in range(4):
            r=f'r{k}'
            if r in regs and regs[r] is not None or (r not in regs and False): a.append(regs[r])
            else: break
        return a
    while i<n:
        m,o,a=I[i]
        # close ifs at label
        while pending and pending[-1][0]==a:
            pending.pop(); indent[0]=indent[0][:-4]; emit('}')
        if m=='push':
            i+=1; continue
        if m=='pop' or (m=='ldr' and o.startswith('pc,')) or m=='bx':
            ret='r0'; i+=1
            if m=='pop' and i<n and False: pass
            continue
        if m=='mov':
            d,s=[x.strip() for x in o.split(',',1)]
            if s.startswith('#'): regs[d]=str(int(s[1:],0))
            elif d==s: pass
            else: regs[d]=get(s)
            i+=1; continue
        if m in('add','sub'):
            mm=M(o,r'(\w+), (\w+), #(0x[0-9a-f]+|\d+)$')
            if not mm: raise ValueError('addsub '+o)
            d,s,v=mm.group(1),mm.group(2),int(mm.group(3),0)
            regs[d]=f'({get(s)} {"+" if m=="add" else "-"} {v})'; i+=1; continue
        if m in('ldr','ldrb','ldrh'):
            mm=M(o,r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$')
            if mm:
                d=mm.group(1); off=int(mm.group(2),0) if mm.group(2) else 0
                w=word(a+8+off)
                if 0x100000<=w<0xA00000:
                    decls.add(f'extern char g_{w:08x}[];'); regs[d]=f'(u32)g_{w:08x}'
                else: regs[d]=f'{w}u'
                i+=1; continue
            d,s,off=parse_mem(o)
            ty={'ldr':'u32','ldrb':'u8','ldrh':'u16'}[m]
            t=new(None); emit(f'u32 {t} = *({ty}*)({addr_expr(get(s),off)});'); regs[d]=t; i+=1; continue
        if m in('str','strb','strh'):
            d,s,off=parse_mem(o)
            ty={'str':'u32','strb':'u8','strh':'u16'}[m]
            emit(f'*({ty}*)({addr_expr(get(s),off)}) = {get(d)};'); i+=1; continue
        if m in('bl','blx') and o.startswith('#'):
            t=int(o[1:],0); args=[]
            for k in range(4):
                r=f'r{k}'
                if r in regs and regs[r] is not None: args.append(regs[r])
                elif r not in regs and k==0: params.add(0); regs['r0']='a0'; args.append('a0')
                else: break
            # args beyond contiguous defined are dropped; params count as defined only if read
            nm=f'Fn_{t:06x}_{len(args)}'
            decls.add(f'u32 {nm}({", ".join(["u32"]*len(args))});'); calls.append((nm,t))
            tt=new(None); emit(f'u32 {tt} = {nm}({", ".join(args)});')
            for k in range(1,4): regs[f'r{k}']=None
            regs['r0']=tt; i+=1; continue
        if m=='b' and o.startswith('#'):
            t=int(o[1:],0)
            if t<I[0][2] or t>=end_addr:
                args=[]
                for k in range(4):
                    r=f'r{k}'
                    if r in regs and regs[r] is not None: args.append(regs[r])
                    elif r not in regs and k==0: params.add(0); args.append('a0')
                    else: break
                nm=f'Fn_{t:06x}_{len(args)}'
                decls.add(f'u32 {nm}({", ".join(["u32"]*len(args))});'); calls.append((nm,t))
                emit(f'return {nm}({", ".join(args)});'); tail=True; i+=1; continue
            raise ValueError('internal b')
        if m=='cmp':
            mm=M(o,r'(\w+), #0$')
            if mm and i+1<n and I[i+1][0] in('beq','bne') and I[i+1][1].startswith('#'):
                tgt=int(I[i+1][1][1:],0); cond=get(mm.group(1))
                if tgt>I[i+1][2] and tgt<=end_addr:
                    emit(f'if ({cond} {"!=" if I[i+1][0]=="beq" else "=="} 0) {{'); indent[0]+='    '; pending.append((tgt,)); i+=2; continue
            raise ValueError('cmp '+o)
        raise ValueError('op '+m+' '+o)
    while pending:
        pending.pop(); indent[0]=indent[0][:-4]; emit('}')
    plist=', '.join(f'u32 a{k}' for k in range(max(params)+1)) if params else ''
    body_stmts='\n'.join(out)
    res=[]
    base=f'u32 {fname}({plist}) {{\n{body_stmts}\n}}'
    if tail: res.append((sorted(decls),base,calls))
    else:
        r0=regs.get('r0')
        res.append((sorted(decls),f'void {fname}({plist}) {{\n{body_stmts}\n}}',calls))
        if r0 and not r0.startswith('a'):
            res.append((sorted(decls),f'u32 {fname}({plist}) {{\n{body_stmts}\n    return {r0};\n}}',calls))
        elif r0=='a0':
            res.append((sorted(decls),f'u32 {fname}({plist}) {{\n{body_stmts}\n    return a0;\n}}',calls))
    return res
