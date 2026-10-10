"""dtorgen.py: match exception-aware destructors with their cleanup pads (technical.md section 8, "Exception cleanups").

  python tools/wrapgen/dtorgen.py run OUT.json [ONLY.csv]      try every unhandled pad parent (symbols/cleanup_pads.csv)
  python tools/wrapgen/dtorgen.py apply OUT.json src/gen/dt_0.cpp   write the matches, functions.toml and externs.toml rows

A destructor built with --exceptions destroys its members in reverse order and then its base; if a member destructor
throws, the cleanup pad destroys the base (and any members still alive). Retail shape:
    [ldr r1, =vtable; str r1, [r0], #k]  vptr store, r0 -> member at +k
    bl ~M                                member destructor (returns this + k), or `mov r0, r0` when weak
    sub r0, r0, #k ...                   next member, down to the base at +0
    bl ~B                                base destructor (returns this)
    [b operator delete]                  deleting destructor (D0)
The generator rebuilds that as a class `C_<off>` with a base `B_<off>` and members of types with out-of-line
destructors at the called addresses, defines `C_<off>::~C_<off>() {}`, and keeps it only when the function and its
`.clean` section both match. Names are placeholders. The class declares an undefined virtual `key_()` first so its
vtable is not emitted here (the vptr relocates against `_ZTV<C>` = retail vtable address - 8, like other vtables).
"""
import csv, json, os, re, subprocess, sys, tomllib, collections
sys.path.insert(0, '.')
import capstone
from elftools.elf.elffile import ELFFile
from ctrdecomp import config as C
from ctrdecomp.compare import compile_obj, compare, read_function

FL = '--cpu=MPCore --arm -O3 -Otime --split_sections --exceptions'.split()
DELETE = 0x2024b0   # operator delete (_ZdlPv)
cfg = C.load(); code = cfg.code()
md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
size = {int(r['Location'], 16) - 0x100000: int(r['Size'], 16) for r in csv.DictReader(open('symbols/code.bin.csv'))}
THUMB = {int(r['Location'], 16) - 0x100000 for r in csv.DictReader(open('symbols/code.bin.csv')) if r['Mode'] == '$t'}
pads = collections.defaultdict(list)
for r in csv.DictReader(open('symbols/cleanup_pads.csv')): pads[int(r['parent'], 16)].append(int(r['offset'], 16))


def parse(p):
    """-> (vptrs [(off, value)], calls [(off, target or None if weak)], deleting) or None"""
    ins = list(md.disasm(code[p:p + size[p]], p))
    off = {'r0': 0}; lits = {}; vp = []; calls = []; dele = False
    for k, i in enumerate(ins):
        m, o = i.mnemonic, i.op_str
        if m in ('push', 'pop', 'nop'): continue
        if m == 'mov' and re.fullmatch(r'r\d+, r\d+', o):
            d, s = o.split(', ')
            if d == s == 'r0': calls.append((off.get('r0'), None)); continue   # weak destructor, nopped by the linker
            if s not in off: return None
            off[d] = off[s]; continue
        mm = re.fullmatch(r'(r\d+), \[pc, #(0x[0-9a-f]+|\d+)\]', o)
        if m == 'ldr' and mm:
            a = i.address + 8 + int(mm.group(2), 0)
            lits[mm.group(1)] = int.from_bytes(code[a:a + 4], 'little'); off.pop(mm.group(1), None); continue
        mm = re.fullmatch(r'(r\d+), (r\d+), #(0x[0-9a-f]+|\d+)', o)
        if m in ('add', 'sub') and mm and mm.group(2) in off:
            off[mm.group(1)] = off[mm.group(2)] + (1 if m == 'add' else -1) * int(mm.group(3), 0); continue
        mm = re.fullmatch(r'(r\d+), \[(r\d+)(?:, #(0x[0-9a-f]+|\d+))?\](?:, #(0x[0-9a-f]+|\d+))?', o)
        if m == 'str' and mm and mm.group(1) in lits and mm.group(2) in off:
            vp.append((off[mm.group(2)] + int(mm.group(3) or '0', 0), lits[mm.group(1)]))
            if mm.group(4): off[mm.group(2)] += int(mm.group(4), 0)
            continue
        if m in ('bl', 'b') and o.startswith('#'):
            t = int(o[1:], 0); last = k == len(ins) - 1
            if m == 'b' and t == DELETE and last: dele = True; continue
            if m == 'b' and not last: return None
            calls.append((off.get('r0'), t))
            for r in ('r1', 'r2', 'r3', 'ip'): off.pop(r, None); lits.pop(r, None)   # a destructor returns this
            continue
        return None
    if not calls or any(o is None or o < 0 or o % 4 for o, _ in calls): return None
    return vp, calls, dele


def source(p, vp, calls, dele, base_poly):
    """-> (decl lines, class/def text, symbol) for one layout guess, or None"""
    n = f'{p:06x}'
    offs = [o for o, _ in calls]
    if offs != sorted(offs, reverse=True) or len(set(offs)) != len(offs): return None   # members destroyed in reverse order
    if any(o != 0 for o, _ in vp): return None   # secondary vptrs (multiple polymorphic bases): not handled
    decls = []; tname = {}
    def ty(t, k):
        if t is None: nm = f'Wk_{n}_{k}'   # unresolved weak destructor
        else: nm = f'M_{t:06x}'
        if nm not in tname.values(): decls.append(f'struct {nm} {{ ~{nm}(); u32 x_; }};')
        tname[(t, k)] = nm; return nm
    base = [(o, t) for o, t in calls if o == 0]
    mems = sorted((o, t, k) for k, (o, t) in enumerate(calls) if o != 0)
    poly = bool(vp)
    lines = []
    if base:
        t = base[0][1]; bn = f'B_{n}'
        # the base is polymorphic when the class stores a vptr (it sits at +0 inside the base)
        if base_poly: lines.append(f'struct {bn} {{ virtual ~{bn}(); }};'); cur = 4
        else: lines.append(f'struct {bn} {{ ~{bn}(); u32 x_; }};'); cur = 4
        head = f'struct C_{n} : {bn} {{'
        if poly and not base_poly: return None   # vptr at +0 with a non-polymorphic base at +0 is impossible
    else:
        head = f'struct C_{n} {{'; cur = 4 if poly else 0
    body = []
    if poly: body.append('virtual void key_();')
    for o, t, k in mems:
        if o < cur: return None
        if o > cur: body.append(f'u32 pad_{o:x}[{(o - cur) // 4}];')
        body.append(f'{ty(t, k)} m_{o:x};'); cur = o + 4
    dt = ('virtual ' if poly and not base else '') + f'~C_{n}();'
    lines.append(head + ' ' + ' '.join(body + [dt]) + ' };')
    lines.append(f'C_{n}::~C_{n}() {{}}')
    sym = f'_ZN{len("C_" + n)}C_{n}D{0 if dele else 1}Ev'
    return decls, '\n'.join(lines), sym, base


def externs(obj_path, p, vp, calls):
    """undefined symbols of the object -> {name: value}"""
    out = {}
    with open(obj_path, 'rb') as fh:
        und = [s.name for s in ELFFile(fh).get_section_by_name('.symtab').iter_symbols() if s['st_shndx'] == 'SHN_UNDEF' and s.name]
    for u in und:
        m = re.fullmatch(r'_ZN\d+M_([0-9a-f]{6})D1Ev', u)
        if m: out[u] = 0x100000 + int(m.group(1), 16); continue
        if re.fullmatch(r'_ZN\d+Wk_[0-9a-f_]+D1Ev', u): out[u] = 'weak'; continue
        if re.fullmatch(r'_ZN\d+B_[0-9a-f]{6}D1Ev', u):
            t = [t for o, t in calls if o == 0][0]
            out[u] = 'weak' if t is None else 0x100000 + t; continue
        if re.fullmatch(r'_ZTV\d+C_[0-9a-f]{6}', u): out[u] = vp[0][1] - 8; continue
        if u.startswith('Lib$$') or u in ('_ZdlPv', '__cxa_end_cleanup', '__aeabi_unwind_cpp_pr0', '__aeabi_unwind_cpp_pr1', '__cxa_call_unexpected', '__gxx_personality_v0'): continue
        out[u] = None
    return out


PRE = '\n'.join(['typedef unsigned char u8;', 'typedef unsigned short u16;', 'typedef unsigned u32;', 'typedef unsigned long long u64;',
                 'static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }',
                 'static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }']) + '\n'   # the lifter's prelude


# ---- stage 2: destructors whose base or member destructor is inline ----
# Cleanup pads never inline: a destructor that is inlined into the body is called out of line from the pad (ARMCC
# emits that copy as a separate function; the shared inline zone 0x630000-0x690000 is full of them). So a pad call to
# a target the body never calls names an inline destructor, and the out-of-line copy's code is that destructor's body.
# Example 0xf338c: `C : S, X` where `S::~S() { g_inst = 0; }` is inline (copy at 0x68a6e8) and `X::~X` is 0x4e019c.

def parse2(p):
    """lenient parse: like parse(), but code between the destructor calls (the inlined destructors) is allowed.
    -> (vptrs, calls [(off, target or None)], deleting) or None"""
    ins = list(md.disasm(code[p:p + size[p]], p))
    off = {'r0': 0}; lits = {}; vp = []; calls = []; dele = False
    for k, i in enumerate(ins):
        m, o = i.mnemonic, i.op_str
        if m in ('push', 'pop', 'nop'): continue
        if m.startswith('b') and not (m in ('bl', 'b') and o.startswith('#')): return None   # conditional/indirect control flow
        if m == 'mov' and re.fullmatch(r'r\d+, r\d+', o):
            d, s = o.split(', ')
            if d == s == 'r0': calls.append((off.get('r0'), None)); continue
            if s in off: off[d] = off[s]
            else: off.pop(d, None)
            lits.pop(d, None); continue
        mm = re.fullmatch(r'(r\d+), \[pc, #(0x[0-9a-f]+|\d+)\]', o)
        if m == 'ldr' and mm:
            a = i.address + 8 + int(mm.group(2), 0)
            lits[mm.group(1)] = int.from_bytes(code[a:a + 4], 'little'); off.pop(mm.group(1), None); continue
        mm = re.fullmatch(r'(r\d+), (r\d+), #(0x[0-9a-f]+|\d+)', o)
        if m in ('add', 'sub') and mm and mm.group(2) in off:
            off[mm.group(1)] = off[mm.group(2)] + (1 if m == 'add' else -1) * int(mm.group(3), 0); lits.pop(mm.group(1), None); continue
        mm = re.fullmatch(r'(r\d+), \[(r\d+)(?:, #(0x[0-9a-f]+|\d+))?\](?:, #(0x[0-9a-f]+|\d+))?', o)
        if m == 'str' and mm and mm.group(1) in lits and mm.group(2) in off and not calls:
            vp.append((off[mm.group(2)] + int(mm.group(3) or '0', 0), lits[mm.group(1)]))
            if mm.group(4): off[mm.group(2)] += int(mm.group(4), 0)
            continue
        if m in ('bl', 'b'):
            t = int(o[1:], 0); last = k == len(ins) - 1
            if m == 'b' and t == DELETE and last: dele = True; continue
            if m == 'b' and not last: return None
            calls.append((off.get('r0'), t))
            for r in ('r0', 'r1', 'r2', 'r3', 'ip'):
                if r != 'r0': off.pop(r, None)
                lits.pop(r, None)
            continue
        # anything else is inlined destructor code: forget what it writes
        if not (m.startswith(('str', 'stm', 'cmp', 'cmn', 'tst', 'teq'))):
            d = o.split(',')[0].strip()
            off.pop(d, None); lits.pop(d, None)
        elif '!' in o or '], #' in o:
            off.pop(re.search(r'\[(\w+)', o).group(1), None)
    if any(o is None or o < 0 or o % 4 for o, _ in calls): return None
    return vp, calls, dele


def padcalls(p):
    """destructor calls of the parent's pads -> [(offset from this, target)] (this = r4 at the pad), or None"""
    out = []
    for po in pads[p]:
        reg = {'r4': 0}
        for i in md.disasm(code[po:po + 0x80], po):
            m, o = i.mnemonic, i.op_str
            if m == 'nop': continue
            if m in ('bl', 'blx') and o.startswith('#'):
                t = int(o[1:], 0)
                if t == 0x202080: break
                if 'r0' not in reg: return None
                out.append((reg['r0'], t)); continue
            mm = re.fullmatch(r'(r\d+), (r\d+)', o)
            if m == 'mov' and mm:
                if mm.group(2) in reg: reg[mm.group(1)] = reg[mm.group(2)]
                else: reg.pop(mm.group(1), None)
                continue
            mm = re.fullmatch(r'(r\d+), (r\d+), #(0x[0-9a-f]+|\d+)', o)
            if m in ('add', 'sub') and mm and mm.group(2) in reg:
                reg[mm.group(1)] = reg[mm.group(2)] + (1 if m == 'add' else -1) * int(mm.group(3), 0); continue
            if m == 'b': break   # shared tail
            return None
    return out


_inl = {}
def inline_body(t):
    """C++ for the out-of-line destructor copy at t: (decl lines, helper text, takes this) or None"""
    if t in _inl: return _inl[t]
    r = None
    try:
        sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
        os.environ.setdefault('S', 'build/a/g')
        import gen as G, lift2 as L2
        vs = L2.lift(G.ins_of(t, size[t]), G.word, f'IB_{t:06x}')
        for decls, body, _ in vs:
            mm = re.match(r'void IB_[0-9a-f]+\(((?:u32 a0)?)\)', body)
            if mm:
                r = ([d for d in decls], 'static inline ' + body, bool(mm.group(1))); break
    except Exception:
        r = None
    _inl[t] = r; return r


def source2(p, vp, calls, dele, pcalls, order, kinds):
    """order: destruction order of the items at +0 (indices into items0); kinds: per out-of-line base 'poly'/'empty'/'data'.
    -> (decl lines, text, symbol, externs {name: value}) or None"""
    n = f'{p:06x}'
    body_t = {t for _, t in calls}
    inl = [(o, t) for o, t in pcalls if t not in body_t]
    if len(set(inl)) != len(inl): return None
    mems = [(o, t, False) for o, t in calls if o != 0] + [(o, t, True) for o, t in inl if o != 0]
    mems.sort(key=lambda x: x[0])
    if len({o for o, _, _ in mems}) != len(mems): return None
    if [o for o, t in calls if o != 0] != sorted([o for o, t in calls if o != 0], reverse=True): return None
    if any(o != 0 for o, _ in vp): return None
    items0 = [(t, False) for o, t in calls if o == 0] + [(t, True) for o, t in inl if o == 0]
    if sorted(order) != list(range(len(items0))): return None
    # the out-of-line items at +0 keep their order from the body
    seq = [items0[k] for k in order]
    if [x for x in seq if not x[1]] != [x for x in items0 if not x[1]]: return None
    decls = []; ext = {}; helpers = []; lines = []; ldecls = []
    def mang(nm): return f'_ZN{len(nm)}{nm}D1Ev'
    def inline_type(t, member):
        ib = inline_body(t)
        if not ib: return None
        d, h, takes = ib
        for x in d:
            if x not in ldecls: ldecls.append(x)
        if h not in helpers: helpers.append(h)
        nm = f'I{"M" if member else ""}_{t:06x}'
        call = f'IB_{t:06x}({"(u32)this" if takes else ""});'
        decls.append(f'struct {nm} {{ ~{nm}() {{ {call} }}{" u32 x_;" if member else ""} }};') if f'struct {nm} ' not in ' '.join(decls) else None
        ext[mang(nm)] = 0x100000 + t
        return nm
    bases = []; nonempty = 0; poly_base = False; kk = 0
    for idx, (t, is_inl) in enumerate(seq):
        if is_inl:
            nm = inline_type(t, False)
            if not nm: return None
        else:
            kind = kinds[kk]; kk += 1
            nm = f'B_{n}_{idx}'
            if kind == 'poly': lines.append(f'struct {nm} {{ virtual ~{nm}(); }};'); nonempty += 1; poly_base = True
            elif kind == 'data': lines.append(f'struct {nm} {{ ~{nm}(); u32 x_; }};'); nonempty += 1
            else: lines.append(f'struct {nm} {{ ~{nm}(); }};')
            ext[mang(nm)] = 'weak' if t is None else 0x100000 + t
        bases.append(nm)
    if nonempty > 1: return None
    poly = bool(vp) or poly_base
    if dele and not poly: return None
    cur = 4 if nonempty or poly else 0
    body = ['virtual void key_();'] if poly else []
    for o, t, is_inl in mems:
        if o < cur: return None
        if o > cur: body.append(f'u32 pad_{o:x}[{(o - cur) // 4}];')
        if is_inl:
            nm = inline_type(t, True)
            if not nm: return None
        else:
            nm = f'Wk_{n}_{o:x}' if t is None else f'M_{t:06x}'
            dl = f'struct {nm} {{ ~{nm}(); u32 x_; }};'
            if dl not in decls: decls.append(dl)
            ext[mang(nm)] = 'weak' if t is None else 0x100000 + t
        body.append(f'{nm} m_{o:x};'); cur = o + 4
    head = f'struct C_{n}' + (' : ' + ', '.join(reversed(bases)) if bases else '') + ' {'
    dt = ('virtual ' if poly and not poly_base else '') + f'~C_{n}();'
    lines.append(head + ' ' + ' '.join(body + [dt]) + ' };')
    lines.append(f'C_{n}::~C_{n}() {{}}')
    if vp: ext[f'_ZTV{len("C_" + n)}C_{n}'] = vp[0][1] - 8
    sym = f'_ZN{len("C_" + n)}C_{n}D{0 if dele else 1}Ev'
    return ldecls + helpers + decls, '\n'.join(lines), sym, ext


def lifted_externs(und):
    """values for the lifter-style names the inline helpers use (Fn_<off>_<argc>, g_<VA>)"""
    out = {}
    for u in und:
        m = re.search(r'Fn_([0-9a-f]{6})', u)
        if m:
            t = int(m.group(1), 16); out[u] = 0x100000 + t + (1 if t in THUMB else 0); continue
        m = re.match(r'g_([0-9a-f]{8})$', u)
        if m: out[u] = int(m.group(1), 16)
    return out


def run2(out_json, only=None):
    import itertools
    done = {int(f['offset'], 16) for f in tomllib.load(open('functions.toml', 'rb'))['function']}
    res = []; tried = 0
    IGN = ('_ZdlPv', '__cxa_end_cleanup', '__aeabi_unwind_cpp_pr0', '__aeabi_unwind_cpp_pr1', '__cxa_call_unexpected', '__gxx_personality_v0')
    part, nparts = int(os.environ.get('PART', '0')), int(os.environ.get('NPARTS', '1'))   # sharding for parallel runs
    for k_, p in enumerate(sorted(pads)):
        if k_ % nparts != part: continue
        if p in done or p not in size or (only and p not in only): continue
        r = parse2(p); pc = padcalls(p)
        if not r or pc is None: continue
        vp, calls, dele = r
        body_t = {t for _, t in calls}
        n0 = len([1 for o, _ in calls if o == 0]) + len([1 for o, t in pc if o == 0 and t not in body_t])
        nout = len([1 for o, _ in calls if o == 0])
        if n0 > 4: continue
        tried += 1; hit = None
        for order in itertools.permutations(range(n0)):
            for kinds in itertools.product(('poly', 'empty', 'data'), repeat=nout):
                g = source2(p, vp, calls, dele, pc, list(order), kinds)
                if not g: continue
                decls, text, sym, ext = g
                src = f'build/a/tmp/dt2_{p:06x}.cpp'
                open(src, 'w').write(PRE + '\n'.join(decls) + '\n' + text + '\n')
                obj = None; sc = None
                try:
                    obj = compile_obj(cfg, src, FL)
                    z = len(read_function(obj, sym).data)
                    with open(obj, 'rb') as fh:
                        und = [s.name for s in ELFFile(fh).get_section_by_name('.symtab').iter_symbols() if s['st_shndx'] == 'SHN_UNDEF' and s.name and not s.name.startswith('Lib$$') and s.name not in IGN]
                    ext.update(lifted_externs([u for u in und if u not in ext]))
                    sc = compare(cfg, src, sym, p, z, FL, clean=pads[p][0]).score
                except Exception as e:
                    if os.environ.get('DTDEBUG'): print('  error', repr(e)[:300])
                    sc = None
                finally:
                    for q in (src, obj):
                        try:
                            if q: os.unlink(q)
                        except OSError: pass
                if os.environ.get('DTDEBUG'): print('  ', order, kinds, sc, sc == 0 and hex(z), sc == 0 and [u for u in und if u not in ext])
                if sc == 0 and size[p] <= z <= size[p] + 0x10 and all(u in ext for u in und):
                    hit = dict(st=p, size=z, sym=sym, decls=decls, text=text, clean=pads[p][0], ext=ext, name=f'C_{p:06x}::~C_{p:06x}')
                    break
            if hit: break
        print(f'{p:06x} {"match" if hit else "miss"}', flush=True)
        if hit: res.append(hit)
    json.dump(res, open(out_json, 'w'), indent=1)
    print(f'tried {tried}, matched {len(res)}')


def run(out_json, only=None):
    done = {int(f['offset'], 16) for f in tomllib.load(open('functions.toml', 'rb'))['function']}
    res = []; tried = 0
    for p in sorted(pads):
        if p in done or p not in size or (only and p not in only): continue
        r = parse(p)
        if not r: continue
        vp, calls, dele = r; tried += 1
        for base_poly in ((True, False) if vp else (False, True)):
            g = source(p, vp, calls, dele, base_poly)
            if not g: continue
            decls, text, sym, base = g
            src = f'build/a/dt_{p:06x}.cpp'
            open(src, 'w').write(PRE + '\n'.join(decls) + '\n' + text + '\n')
            obj = None
            try:
                obj = compile_obj(cfg, src, FL)
                z = len(read_function(obj, sym).data)
                ext = externs(obj, p, vp, calls)
                sc = compare(cfg, src, sym, p, z, FL, clean=pads[p][0]).score
            except Exception as e:
                sc = None
            finally:
                for q in (src, obj):
                    try:
                        if q: os.unlink(q)
                    except OSError: pass
            print(f'{p:06x} base_poly={base_poly} score={sc}', (hex(z), hex(size[p]), [k for k, v in ext.items() if v is None]) if sc == 0 else '', flush=True)
            if sc == 0 and size[p] <= z <= size[p] + 0x10 and None not in ext.values():
                res.append(dict(st=p, size=z, sym=sym, decls=decls, text=text, clean=pads[p][0], ext=ext,
                                name=f'C_{p:06x}::~C_{p:06x}'))
                break
    json.dump(res, open(out_json, 'w'), indent=1)
    print(f'tried {tried}, matched {len(res)}')


def apply(in_json, path):
    res = json.load(open(in_json))
    have = {int(f['offset'], 16) for f in tomllib.load(open('functions.toml', 'rb'))['function']}
    ext_have = tomllib.load(open('externs.toml', 'rb'))['symbols']
    res = [r for r in res if r['st'] not in have]
    decls = []; texts = []; toml = []; ext = {}
    for r in res:
        for d in r['decls']:
            if d not in decls: decls.append(d)
        texts.append(f"// FUN_{r['st']:08x} (cleanup pad 0x{r['clean']:x})\n{r['text']}")
        toml.append(f'\n[[function]]\nname = "{r["name"]}"\noffset = "{r["st"]:x}"\nsize = "{r["size"]:x}"\nsrc = "{path}"\n'
                    f'flags = [{", ".join(chr(34) + x + chr(34) for x in FL)}]\nsymbol = "{r["sym"]}"\nclean = "{r["clean"]:x}"\n'
                    f'generated = true\nscore = 0\n')
        ext.update(r['ext'])
    clash = {k: (ext_have[k], v) for k, v in ext.items() if k in ext_have and ext_have[k] != v}
    if clash:   # a placeholder type name already used elsewhere with another address (M_06a908 in eh_0.cpp was weak)
        raise SystemExit(f'extern name clash, rename the types first: {clash}')
    head =('// Exception-aware destructors with their cleanup pads (tools/wrapgen/dtorgen.py; technical.md section 8,\n'
            '// "Exception cleanups"). Each compiles to the retail function and its .clean section; class, base and member\n'
            '// names are placeholders (C_<offset>, B_<offset>, M_<destructor offset>, Wk_ = unresolved weak destructor).\n'
            '// Build: ARMCC 4.1 ' + ' '.join(FL) + '\n')
    open(path, 'w', newline='\n').write(head + PRE + '\n'.join(decls) + '\n\n' + '\n\n'.join(texts) + '\n')
    with open('functions.toml', 'a', encoding='utf-8', newline='') as f: f.write(''.join(toml))
    with open('externs.toml', 'a', encoding='utf-8', newline='') as f:
        f.write(f'\n# {path} destructors, vtables\n')
        for k, v in sorted(ext.items()):
            if k in ext_have: continue
            f.write(f'{k} = "weak"\n' if v == 'weak' else f'{k} = 0x{v:08X}\n')
    print(len(res), 'functions;', len(ext), 'externs')


# ---- stage 3: destructors with a body ----
# `C::~C() { if (m) { F(m, 0); m = 0; } }` and the like: the body is lifted with lift2 and wrapped in the destructor,
# so the vptr store at entry is the compiler's own (as a free function ARMCC schedules it differently). The lifted
# vptr store is removed, and for the deleting form (D0) the tail call to operator delete. Bare pads come from a
# polymorphic local (lift2 LIFT_GUARD=ptop/pcall/pcall1): its dead vptr store is removed, its empty pad is kept.

def vptr_at_entry(p):
    """the vtable value stored to [this] in the first instructions, or None"""
    ins = list(md.disasm(code[p:p + min(size[p], 0x30)], p))
    this = {'r0'}; lit = {}
    for i in ins:
        m, o = i.mnemonic, i.op_str
        mm = re.fullmatch(r'(r\d+), \[pc, #(0x[0-9a-f]+|\d+)\]', o)
        if m == 'ldr' and mm:
            a = i.address + 8 + int(mm.group(2), 0); lit[mm.group(1)] = int.from_bytes(code[a:a + 4], 'little'); continue
        mm = re.fullmatch(r'(r\d+), (r\d+)', o)
        if m == 'mov' and mm and mm.group(2) in this: this.add(mm.group(1)); continue
        mm = re.fullmatch(r'(r\d+), \[(r\d+)\](?:, #\w+)?', o)
        if m == 'str' and mm and mm.group(1) in lit and mm.group(2) in this:
            v = lit[mm.group(1)]
            return v if 0x790000 <= v < 0x889000 else None
        if m.startswith('b'): return None
    return None


def body_variants(p, vt, dele):
    """lifted body variants as (decl lines, helper text) for `static inline void Body_<p>(u32 a0)`"""
    os.environ['LIFT_GUARD'] = os.environ.get('DT_GUARDS', 'none,ptop,pcall,pcall1')
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    os.environ.setdefault('S', 'build/a/g')
    import gen as G, lift2 as L2
    L2.GUARDS[:] = [g for g in os.environ['LIFT_GUARD'].split(',') if g]
    L2.PGUARDS[:] = [g for g in L2.GUARDS if g in ('ptop', 'pcall', 'pcall1')]
    try: vs = L2.lift(G.ins_of(p, size[p]), G.word, f'Body_{p:06x}')
    except Exception: return []
    out = []; seen = set()
    vtn = f'g_{vt:08x}'
    for decls, body, _ in vs:
        mm = re.match(r'void Body_[0-9a-f]+\(((?:u32 a0)?)\)', body)
        if not mm: continue
        lines = body.split('\n')
        # the vptr store: `X = (u32)g_<vt>;` ... `*(u32*)(Y) = X;`, or the folded `*(u32*)(Y) = (u32)g_<vt>;`
        var = None; done_ = False; new = []
        for l in lines:
            m1 = re.fullmatch(r'\s*(\w+) = \(u32\)' + vtn + ';', l)
            if m1 and var is None: var = m1.group(1); new.append(l); continue
            m2 = re.fullmatch(r'\s*\*\(u32\*\)\((\w+)\) = (\w+|\(u32\)' + vtn + ');', l)
            if m2 and not done_ and (m2.group(2) == var or vtn in m2.group(2)): done_ = True; continue
            new.append(l)
        if not done_: continue
        txt = '\n'.join(new)
        if dele:
            txt2 = re.sub(r'(\{ )?(r\d+(?:_\d+)? = )?Fn_2024b0_\d+\([^;]*\); return;( \})?', 'return;', txt)
            if txt2 == txt: continue
            txt = txt2
        if 'Fn_2024b0' in txt: continue
        # `r4 = r0;` before r0 changes copies `this`; in a destructor `this` is one value, so use a0 for the copy
        tl = txt.split('\n')
        for j, l in enumerate(tl):
            m3 = re.fullmatch(r'\s*(\w+) = (r0|a0);', l)
            if m3:
                x = m3.group(1)
                if sum(1 for l2 in tl if re.match(r'\s*(?:\{ \w+ g_; )?' + re.escape(x) + r' = ', l2)) == 1:
                    tl[j] = ''
                    tl = [re.sub(r'\b%s\b' % re.escape(x), 'a0', l2) if k != j and not l2.lstrip().startswith(('u32 ', 'float ', 'u64 ')) else l2 for k, l2 in enumerate(tl)]
                break
            if re.match(r'\s*r0(_\d+)? = ', l) or 'goto' in l or l.strip().endswith(':;'): break
        tl = [l for l in tl if l != '']
        inner = '\n'.join(tl[1:-1])   # without the signature and the closing brace
        import tidy   # flag pairs folded into their `if` (a pair schedules differently in a destructor body)
        for fields, body_ in (fieldize(inner), (None, inner)):   # typed members first: they match far more often
            if body_ is None: continue
            for b2 in (tidy.fold(body_, bold=True), tidy.fold(body_), body_):
                if (fields, b2) in seen: continue
                seen.add((fields, b2)); out.append((list(decls), b2, fields))
    return out


FSIZE = {'u8': 1, 'signed char': 1, 'u16': 2, 'short': 2, 'u32': 4, 'float': 4, 'u64': 8}
_ACC = re.compile(r'\*\((u8|signed char|u16|short|u32|float|u64)\*\)\(a0(?: \+ (\d+))?\)')


def fieldize(inner):
    """accesses through `this` -> typed members (ARMCC schedules a member access, not a raw pointer access, across
    the destructor's own vptr store). -> (member declarations, body) or (None, None)"""
    lines = inner.split('\n')
    # the incoming r0 is `this` until it is first written (reads on that line's right-hand side still see it)
    for j, l in enumerate(lines):
        if j == 0: continue   # the declaration line
        if 'goto' in l or l.strip().endswith(':;'): break
        m = re.match(r'(\s*(?:\{ \w+ g_; )?)r0 = (.*)$', l)
        if m:
            lines[j] = m.group(1) + 'r0 = ' + re.sub(r'\br0\b', 'a0', m.group(2)); break
        lines[j] = re.sub(r'\br0\b', 'a0', l)
    body = '\n'.join(lines)
    acc = {}
    for m in _ACC.finditer(body):
        k = int(m.group(2) or 0); t = m.group(1)
        if acc.get(k, t) != t: return None, None
        acc[k] = t
    if not acc: return None, None
    cur = 4; decl = []
    for k in sorted(acc):
        t = acc[k]; z = FSIZE[t]
        if k < cur or k % z: return None, None
        if k > cur: decl.append(f'u8 pad_{k:x}[{k - cur}];')
        decl.append(f'{t} f_{k:x};'); cur = k + z
    body = _ACC.sub(lambda m: f'f_{int(m.group(2) or 0):x}', body)
    return ' '.join(decl), body


def run3(out_json, only=None):
    done = {int(f['offset'], 16) for f in tomllib.load(open('functions.toml', 'rb'))['function']}
    IGN = ('_ZdlPv', '__cxa_end_cleanup', '__aeabi_unwind_cpp_pr0', '__aeabi_unwind_cpp_pr1', '__cxa_call_unexpected', '__gxx_personality_v0')
    part, nparts = int(os.environ.get('PART', '0')), int(os.environ.get('NPARTS', '1'))
    mx = int(os.environ.get('DT_MAX', '100'), 16)
    res = []; tried = 0
    for k_, p in enumerate(sorted(pads)):
        if k_ % nparts != part: continue
        if p in done or p not in size or size[p] > mx or (only and p not in only): continue
        vt = vptr_at_entry(p)
        if vt is None: continue
        last = list(md.disasm(code[p + size[p] - 4:p + size[p]], p + size[p] - 4))
        dele = bool(last) and last[0].mnemonic == 'b' and last[0].op_str == '#0x2024b0'
        tried += 1; hit = None
        for decls, body_, fields in body_variants(p, vt, dele):
            n = f'{p:06x}'
            for base in ('poly', 'none'):
                lines = []
                mem = (fields + ' ') if fields else ''
                if base == 'poly':
                    lines.append(f'struct B_{n} {{ virtual ~B_{n}() {{}} }};')
                    lines.append(f'struct C_{n} : B_{n} {{ virtual void key_(); {mem}~C_{n}(); }};')
                else:
                    lines.append(f'struct C_{n} {{ virtual void key_(); {mem}virtual ~C_{n}(); }};')
                lines.append(f'C_{n}::~C_{n}() {{\n    u32 a0 = (u32)this;\n{body_}\n}}')
                text = '\n'.join(lines)
                helper = ''
                sym = f'_ZN{len("C_" + n)}C_{n}D{0 if dele else 1}Ev'
                src = f'build/a/tmp/dt3_{n}.cpp'
                open(src, 'w').write(PRE + '\n'.join(decls) + '\n' + text + '\n')
                obj = None; sc = None
                try:
                    obj = compile_obj(cfg, src, FL)
                    z = len(read_function(obj, sym).data)
                    with open(obj, 'rb') as fh:
                        und = [s.name for s in ELFFile(fh).get_section_by_name('.symtab').iter_symbols() if s['st_shndx'] == 'SHN_UNDEF' and s.name and not s.name.startswith('Lib$$') and s.name not in IGN]
                    ext = {f'_ZTV{len("C_" + n)}C_{n}': vt - 8}
                    ext.update(lifted_externs([u for u in und if u not in ext]))
                    sc = compare(cfg, src, sym, p, z, FL, clean=pads[p][0]).score
                except Exception as e:
                    if os.environ.get('DTDEBUG'): print('  error', repr(e)[:200])
                finally:
                    for q in (src, obj):
                        try:
                            if q: os.unlink(q)
                        except OSError: pass
                if os.environ.get('DTDEBUG'): print('  ', base, sc)
                if sc == 0 and size[p] <= z <= size[p] + 0x10 and all(u in ext for u in und):
                    hit = dict(st=p, size=z, sym=sym, decls=decls, text=text, clean=pads[p][0], ext=ext, name=f'C_{n}::~C_{n}')
                    break
            if hit: break
        print(f'{p:06x} {"match" if hit else "miss"}', flush=True)
        if hit: res.append(hit)
    json.dump(res, open(out_json, 'w'), indent=1)
    print(f'tried {tried}, matched {len(res)}')


def merge(out_json, stage2, stage1):
    """stage 2 results first; a stage 1 result only when its pads call nothing but destructors the body calls (else
    the pad calls an inline destructor's out-of-line copy, which stage 1 would have given a wrong name and address)"""
    res = []; seen = set()
    for f in stage2:
        for r in json.load(open(f)):
            if r['st'] not in seen: res.append(r); seen.add(r['st'])
    dropped = 0
    for f in stage1:
        for r in json.load(open(f)):
            if r['st'] in seen: continue
            body = {t for _, t in (parse(r['st']) or ([], [], 0))[1]}
            pc = padcalls(r['st'])
            if pc is None or any(t not in body for _, t in pc): dropped += 1; continue
            res.append(r); seen.add(r['st'])
    res.sort(key=lambda r: r['st'])
    json.dump(res, open(out_json, 'w'), indent=1)
    print(len(res), 'merged;', dropped, 'stage 1 results dropped')


if __name__ == '__main__':
    if sys.argv[1] == 'merge':   # merge OUT.json STAGE1.json STAGE2.json..
        merge(sys.argv[2], sys.argv[4:], [sys.argv[3]]); sys.exit()
    if sys.argv[1] in ('run', 'run2', 'run3'):
        only = {int(r['offset'], 16) for r in csv.DictReader(open(sys.argv[3]))} if len(sys.argv) > 3 else None
        {'run': run, 'run2': run2, 'run3': run3}[sys.argv[1]](sys.argv[2], only)
    else:
        apply(sys.argv[2], sys.argv[3])
