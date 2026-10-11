"""objdump.py SRC [plain|exc|"FLAGS"] [--section SUBSTR]: compile SRC and disassemble every code section,
`.clean` sections (cleanup pads) included, with relocation symbols. Default flags: exc."""
import os, sys
import _common as C
from ctrdecomp import config
from ctrdecomp.compare import compile_obj
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

args = [a for a in sys.argv[1:] if not a.startswith('--')]
want = sys.argv[sys.argv.index('--section') + 1] if '--section' in sys.argv else None
if want in args: args.remove(want)
if not args: sys.exit(__doc__)
fl = C.flags(args[1]) if len(args) > 1 else C.FLAGS['exc']
obj = compile_obj(config.load(), C.user_path(args[0]), fl)
md = C.disasm()
try:
    with open(obj, 'rb') as fh:
        e = ELFFile(fh); syms = e.get_section_by_name('.symtab')
        for k, s in enumerate(e.iter_sections()):
            if not (s.name.startswith('i.') or s.name.startswith('.text')) or (want and want not in s.name): continue
            rel = {}
            for rs in e.iter_sections():
                if isinstance(rs, RelocationSection) and rs['sh_info'] == k:
                    for r in rs.iter_relocations(): rel[r['r_offset']] = syms.get_symbol(r['r_info_sym']).name
            print(s.name, hex(len(s.data())))
            for i in md.disasm(s.data(), 0): print('    %3x %-8s %-28s %s' % (i.address, i.mnemonic, i.op_str, rel.get(i.address, '')))
finally:
    os.unlink(obj)
