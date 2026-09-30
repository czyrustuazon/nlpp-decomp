"""Write a decomp.me / asm-differ style listing of one function (ARM or Thumb)."""
import re

import capstone

_BRANCH = re.compile(r"^(b|bl|blx|cbz|cbnz)(eq|ne|cs|hs|cc|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le|al)?(\.w|\.n)?$")


def listing(code: bytes, name: str, off: int, code_size: int, pool_words: int, thumb=False) -> str:
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB if thumb else capstone.CS_MODE_ARM)
    ins = list(md.disasm(code[off:off + code_size], off))
    pool_start = (off + code_size + 3) & ~3
    end = pool_start + 4 * pool_words
    labels = set()
    for i in ins:
        if _BRANCH.match(i.mnemonic) and "#" in i.op_str:
            t = int(i.op_str.split("#")[-1], 16)
            if off <= t < end:
                labels.add(t)
    out = [f"\t.{'thumb' if thumb else 'arm'}", f"\t.global {name}", f"{name}: @ file 0x{off:08X}"]
    for i in ins:
        if i.address in labels:
            out.append(f".L{i.address:08X}:")
        op = i.op_str
        if _BRANCH.match(i.mnemonic) and "#" in op:
            head, t = op.rsplit("#", 1)
            t = int(t, 16)
            op = head + (f".L{t:08X}" if t in labels else f"FUN_{t:08x}")
        elif "[pc, #" in op:
            disp = int(op.split("[pc, #")[1].rstrip("]"), 16)
            pc = (i.address + 4) & ~3 if thumb else i.address + 8
            t = pc + disp
            op = op.split("[pc")[0] + f".L{t:08X} @ 0x{int.from_bytes(code[t:t+4], 'little'):08X}"
            labels.add(t)
        out.append(f"\t{i.mnemonic} {op}".rstrip())
    if pool_words and pool_start != off + code_size:
        out.append("\t.align 2")
    for k in range(pool_words):
        a = pool_start + 4 * k
        out.append(f".L{a:08X}:\n\t.word 0x{int.from_bytes(code[a:a+4], 'little'):08X}")
    return "\n".join(out) + "\n"
