"""rdis.py OFF SIZE [--thumb]: disassemble retail code.bin at a file offset (code_bin from ctrdecomp config).
Each `bl` target is annotated with its functions.toml name when it has one."""
import argparse
import re

import capstone

import hm


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("off")
    ap.add_argument("size")
    ap.add_argument("--thumb", action="store_true")
    a = ap.parse_args()
    off, size = int(a.off, 16), int(a.size, 16)
    code = hm.cfg().code()
    names = {int(f["offset"], 16): f["name"] for f in hm.functions()}
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB if a.thumb else capstone.CS_MODE_ARM)
    md.skipdata = True
    for i in md.disasm(code[off:off + size], off):
        text = f"{i.mnemonic} {i.op_str}".strip()
        m = re.match(r"blx? #0x([0-9a-f]+)$", text)
        note = f"    ; {names[int(m.group(1), 16)]}" if m and int(m.group(1), 16) in names else ""
        print(f"{i.address:06x}: {text}{note}")


if __name__ == "__main__":
    main()
