"""svc_table.py OUT.csv: tabulate the IPC command header of every svc 0x32 wrapper in lib/ctrsvc.
Header = cmd_id<<16 | normal_params<<6 | translate_params. Callers come from the call-graph ranker."""
import re, sys, csv, struct, tomllib, collections
sys.path.insert(0, '.')
from ctrdecomp import config as c, callgraph as cg
from capstone import *
cfg = c.load(); code = cfg.code(); md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
funcs = tomllib.load(open('functions.toml', 'rb'))['function']
try: graph = cg.build(cfg)  # may not exist; fall back to a raw BL scan
except Exception: graph = None
callers = collections.Counter()
for t in range(0, len(code) - 3, 4):
    w = struct.unpack_from('<I', code, t)[0]
    if (w >> 24) & 0xf == 0xb and (w >> 28) == 0xe:
        off = w & 0xffffff
        if off & 0x800000: off -= 1 << 24
        callers[t + 8 + off * 4] += 1
rows = []
for f in funcs:
    if f.get('library') != 'ctrsvc': continue
    st = int(f['offset'], 16); sz = int(f['size'], 16)
    ins = list(md.disasm(code[st:st + sz], st))
    if not any(i.mnemonic == 'svc' and i.op_str == '#0x32' for i in ins): continue
    hdr = None; regs = {}
    for i in ins:
        o = i.op_str
        m = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', o)
        if i.mnemonic == 'ldr' and m:
            regs[m.group(1)] = struct.unpack_from('<I', code, i.address + 8 + (int(m.group(2), 0) if m.group(2) else 0))[0]
        elif i.mnemonic == 'mov' and re.match(r'\w+, #', o):
            d, v = o.split(', #'); regs[d] = int(v, 0)
        elif i.mnemonic == 'movw': d, v = o.split(', #'); regs[d] = int(v, 0)
        elif i.mnemonic == 'movt':
            d, v = o.split(', #'); regs[d] = (regs.get(d, 0) & 0xffff) | (int(v, 0) << 16)
        elif i.mnemonic == 'str' and re.match(r'(\w+), \[r\d+(, #0x80)?\]!?$', o) and '#0x80' in o:
            hdr = regs.get(o.split(',')[0]); break
    if hdr is None: continue
    handle = ''
    for k, i in enumerate(ins):                       # `ldr rX, =g; ldr r0, [rX]` before the svc: per-service handle global
        if i.mnemonic == 'ldr' and re.match(r'r0, \[(r\d+)\]$', i.op_str):
            rx = i.op_str.split('[')[1].rstrip(']')
            for j in ins[:k]:
                m = re.match(rx + r', \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', j.op_str)
                if j.mnemonic == 'ldr' and m: handle = '%08x' % struct.unpack_from('<I', code, j.address + 8 + (int(m.group(1), 0) if m.group(1) else 0))[0]
    rows.append((hdr >> 16, (hdr >> 6) & 0x3f, hdr & 0x3f, f['name'], f['offset'], callers[st], handle))
rows.sort()
with open(sys.argv[1], 'w', newline='') as o:
    w = csv.writer(o); w.writerow(['cmd_id', 'normal', 'translate', 'name', 'offset', 'callers', 'handle_global']); w.writerows(rows)
print(len(rows), 'wrappers,', len({r[:3] for r in rows}), 'distinct headers')
