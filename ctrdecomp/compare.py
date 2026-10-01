"""Compile one function with ARMCC and diff it against the retail code image.

Works for ARM and Thumb. Bytes covered by a relocation in the compiled object are
masked, and each relocation is reported with the retail address it lands on, which
is the destination check. The score is the number of target instructions whose
bytes differ after masking, plus the difference in instruction count.
"""
import difflib
import os
import re
import shutil
import subprocess
import tempfile
from dataclasses import dataclass, field

import capstone
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

R_ARM_ABS32, R_ARM_THM_CALL, R_ARM_CALL, R_ARM_JUMP24, R_ARM_THM_JUMP24 = 2, 10, 28, 29, 30


@dataclass
class Obj:
    data: bytes                    # function bytes plus its literal pool
    thumb: bool
    relocs: dict = field(default_factory=dict)   # offset -> (type, symbol)


@dataclass
class Result:
    score: int
    target_len: int
    mine_len: int
    rows: list                      # (offset, target_text, mine_text, same)
    relocs: list                    # (offset, symbol, destination text)
    aligned: list


def compile_obj(cfg, src, flags=None, build=None):
    fd, obj = tempfile.mkstemp(suffix=".o")
    os.close(fd)
    if src.endswith(".s"):
        # Hand-written assembly (C runtime routines): assembled with clang, since armasm is not vendored.
        clang = os.environ.get("CTRDECOMP_CLANG") or shutil.which("clang")
        if not clang:
            os.unlink(obj)
            raise RuntimeError("clang not found (set CTRDECOMP_CLANG) for .s sources")
        cmd = [clang, "--target=armv6k-none-eabi", "-c", "-x", "assembler", src, "-o", obj]
    else:
        cmd = [cfg.armcc(build), "-c", *(cfg.flags if flags is None else flags), "-o", obj, src]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode:
        os.unlink(obj)
        raise RuntimeError((r.stdout + r.stderr).strip())
    return obj


def read_function(obj, symbol):
    """Return the named function's bytes and relocations. `symbol` matches a substring of
    the (possibly mangled) name; exactly one defined function must match."""
    with open(obj, "rb") as f:
        elf = ELFFile(f)
        symtab = elf.get_section_by_name(".symtab")
        funcs = [s for s in symtab.iter_symbols()
                 if s["st_info"]["type"] == "STT_FUNC" and s["st_shndx"] != "SHN_UNDEF"]
        hits = [s for s in funcs if s.name == symbol] or [s for s in funcs if symbol in s.name]
        # C1/C2 (complete/base) constructors and destructors are aliases at one address.
        uniq = {}
        for h in hits:
            uniq.setdefault((h["st_shndx"], h["st_value"]), h)
        hits = list(uniq.values())
        if len(hits) != 1:
            raise RuntimeError(f"symbol {symbol!r} matched {[s.name for s in hits] or 'nothing'}")
        sym = hits[0]
        shndx = sym["st_shndx"]
        data = elf.get_section(shndx).data()
        start = sym["st_value"] & ~1
        same_sec = sorted(s["st_value"] & ~1 for s in funcs if s["st_shndx"] == shndx)
        nxt = [v for v in same_sec if v > start]
        end = nxt[0] if nxt else len(data)   # include the literal pool up to the next function
        return Obj(data[start:end], bool(sym["st_value"] & 1), _section_relocs(elf, shndx, start, end))


def _section_relocs(elf, shndx, start, end):
    relocs = {}
    for rs in elf.iter_sections():
        if isinstance(rs, RelocationSection) and rs["sh_info"] == shndx:
            names = elf.get_section(rs["sh_link"])
            for r in rs.iter_relocations():
                o = r["r_offset"]
                if start <= o < end:
                    relocs[o - start] = (r.entry["r_info_type"], names.get_symbol(r["r_info_sym"]).name)
    return relocs


def read_data(obj, symbol):
    """Return the named data object's initialized bytes (`st_size` of it) and its relocations.
    `symbol` must match one defined object exactly."""
    with open(obj, "rb") as f:
        elf = ELFFile(f)
        symtab = elf.get_section_by_name(".symtab")
        hits = [s for s in symtab.iter_symbols()
                if s.name == symbol and s["st_info"]["type"] == "STT_OBJECT" and s["st_shndx"] != "SHN_UNDEF"]
        if len(hits) != 1:
            raise RuntimeError(f"data symbol {symbol!r} matched {len(hits)} objects")
        sym = hits[0]
        sec = elf.get_section(sym["st_shndx"])
        if sec["sh_type"] == "SHT_NOBITS":
            raise RuntimeError(f"{symbol!r} is uninitialized (bss); declare its address in externs.toml")
        start, end = sym["st_value"], sym["st_value"] + sym["st_size"]
        return Obj(sec.data()[start:end], False, _section_relocs(elf, sym["st_shndx"], start, end))


def _reloc_width(rtype):
    return 4


def _disasm(md, b, addr):
    """Instruction stream as (offset, size, text), falling back to .word/.short for data."""
    out, i = [], 0
    while i < len(b):
        ins = next(md.disasm(b[i:i + 4], addr + i, 1), None)
        if ins is None:
            n = 2 if md.mode & capstone.CS_MODE_THUMB else 4
            n = min(n, len(b) - i)
            out.append((i, n, f".word {int.from_bytes(b[i:i+n], 'little'):0{n*2}x}"))
            i += n
        else:
            out.append((i, ins.size, f"{ins.mnemonic} {ins.op_str}".strip()))
            i += ins.size
    return out


def _thumb_bl_target(hw1, hw2, pc):
    s = (hw1 >> 10) & 1
    j1, j2 = (hw2 >> 13) & 1, (hw2 >> 11) & 1
    i1, i2 = 1 - (j1 ^ s), 1 - (j2 ^ s)
    imm = (s << 24) | (i1 << 23) | (i2 << 22) | ((hw1 & 0x3FF) << 12) | ((hw2 & 0x7FF) << 1)
    if s:
        imm -= 1 << 25
    t = pc + 4 + imm
    return t & ~3 if not (hw2 & 0x1000) else t   # BLX targets are word-aligned


def compare(cfg, src, symbol, off, size, flags=None, build=None, cache=None):
    code = cfg.code()
    target = code[off:off + size]
    key = (src, tuple(flags or ()), build)
    if cache is not None and key in cache:
        obj = cache[key]
    else:
        obj = compile_obj(cfg, src, flags, build)
        if cache is not None:
            cache[key] = obj
    try:
        mine = read_function(obj, symbol)
    finally:
        if cache is None:
            os.unlink(obj)
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB if mine.thumb else capstone.CS_MODE_ARM)

    masked = set()
    for o, (rtype, _) in mine.relocs.items():
        masked.update(range(o, o + _reloc_width(rtype)))

    tins = _disasm(md, target, off)
    mins = {o: (n, t) for o, n, t in _disasm(md, mine.data, off)}
    rows, score = [], 0
    for o, n, t in tins:
        tb = target[o:o + n]
        mb = mine.data[o:o + n]
        same = len(mb) == n and all(tb[k] == mb[k] or (o + k) in masked for k in range(n))
        score += not same
        rows.append((off + o, t, mins.get(o, (0, "-"))[1], same))
    tcount, mcount = len(tins), len(mins)
    score += max(0, mcount - tcount)

    relocs = []
    for o, (rtype, name) in sorted(mine.relocs.items()):
        if o + 4 > len(target):
            relocs.append((o, name, "past end of target"))
            continue
        tw = int.from_bytes(target[o:o + 4], "little")
        mw = int.from_bytes(mine.data[o:o + 4], "little")
        if rtype in (R_ARM_CALL, R_ARM_JUMP24):
            dest = f"file 0x{off + o + 8 + ((((tw & 0xFFFFFF) ^ 0x800000) - 0x800000) * 4):08X}"
        elif rtype in (R_ARM_THM_CALL, R_ARM_THM_JUMP24):
            dest = f"file 0x{_thumb_bl_target(tw & 0xFFFF, tw >> 16, off + o):08X}"
        elif rtype == R_ARM_ABS32:
            dest = f"VA 0x{(tw - mw) & 0xFFFFFFFF:08X} (addend 0x{mw:X})"
        else:
            dest = f"type {rtype}, retail word 0x{tw:08X}"
        relocs.append((o, name, dest))

    def norm(lines):
        return [re.sub(r"#0x[0-9a-f]{5,}|\[pc, #0x[0-9a-f]+\]", "X", t) for _, _, t in lines]
    aligned = list(difflib.unified_diff(norm(tins), norm(_disasm(md, mine.data, off)),
                                        "target", "mine", n=2, lineterm=""))
    return Result(score, tcount, mcount, rows, relocs, aligned)
