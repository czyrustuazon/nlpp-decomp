"""ctorsurvey.py [--show N] [--max HEXSIZE]: list unhandled pad parents shaped like constructors (`this` copied to
r4 early, returned at the end) with their pads; --show prints the disassembly of every Nth one (default 12)."""
import sys
import _common as C
from ctrdecomp import config

code = config.load().code(); md = C.disasm()
done = C.handled(); size = C.sizes(); pads = C.pads()
step = int(sys.argv[sys.argv.index('--show') + 1]) if '--show' in sys.argv else 12
mx = int(sys.argv[sys.argv.index('--max') + 1], 16) if '--max' in sys.argv else 0x80
cands = []
for p in sorted(pads):
    if p in done or p not in size: continue
    ins = list(md.disasm(code[p:p + size[p]], p))
    if len(ins) < 3: continue
    ret_this = any(i.mnemonic == 'mov' and i.op_str == 'r0, r4' for i in ins[-4:]) and ins[-1].mnemonic == 'pop' and 'pc' in ins[-1].op_str
    if ret_this and any(i.mnemonic == 'mov' and i.op_str == 'r4, r0' for i in ins[:4]):
        cands.append((size[p], p))
cands.sort()
print(len(cands), 'constructor-like;', sum(1 for s, _ in cands if s <= mx), f'<= {mx:#x}')
for s, p in [c for c in cands if c[0] <= mx][::step]:
    print('====', hex(p), hex(s))
    for i in md.disasm(code[p:p + s], p): print('  %x %s %s' % (i.address, i.mnemonic, i.op_str))
    for po, psz in pads[p]:
        for i in md.disasm(code[po:po + psz], po):
            print('    pad %x %s %s' % (i.address, i.mnemonic, i.op_str))
