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
# handle global -> service, from the init function that passes the service-name string (see technical.md section 8 item 7)
SERVICE = {'008aab70': 'cam:u', '008aaeb4': 'y2r:u', '008b8778': 'cecd:u', '008b877c': 'cecd:s', '008b7d48': 'mic:u',
           '008b85f4': 'srv:pm', '008bb4e0': 'srv:pm', '008b8818': 'ndm:u', '008bf998': 'ir:USER',
           '008b8764': 'ac:i', '008ab858': 'ac (copy of the ac:i handle)',
           '008b7ccc': 'frd:u', '008b8790': 'frd:a', '008ab930': 'APT:U',
           '008b850c': 'ptm:u', '008b851c': 'ptm:s', '008b8514': 'ptm:sysm', '008b8510': 'ptm:play', '008b8518': 'ptm:gets',
           '008b7d20': 'hid:USER (hid:SPVR shares the init)', '008bb628': 'cfg:i', '008bb62c': 'cfg:i (copy)', '008b878c': 'cfg:i (copy)'}
# stubs that take a session-handle pointer (no global): attributed by the service init their address cluster follows and by
# command-id range (fs:USER ids 0x8xx; dsp ids < 0x40; nwm::UDS and boss follow their init strings). Inferred, so tagged.
def session_service(off, cmd):
    if 0x4ed000 <= off < 0x4f0000 or (off < 0x400000 and 0x800 <= cmd < 0x900): return 'fs:USER (session, inferred)'
    if 0x501000 <= off < 0x502000 or (off < 0x400000 and cmd < 0x40): return 'dsp::DSP (session, inferred)'
    if 0x51a000 <= off < 0x51c000: return 'nwm::UDS (session, inferred)'
    if 0x51f000 <= off < 0x523000: return 'boss (session, inferred)'
    return ''
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
    rows.append((hdr >> 16, (hdr >> 6) & 0x3f, hdr & 0x3f, f['name'], f['offset'], callers[st], handle, SERVICE.get(handle, '') or ('' if handle else session_service(st, hdr >> 16))))
rows.sort()
with open(sys.argv[1], 'w', newline='') as o:
    w = csv.writer(o); w.writerow(['cmd_id', 'normal', 'translate', 'name', 'offset', 'callers', 'handle_global', 'service']); w.writerows(rows)
print(len(rows), 'wrappers,', len({r[:3] for r in rows}), 'distinct headers')
