"""Write objdiff inputs: one unit per source file.

base   = our ARMCC object for the source file.
target = an ELF built from the retail bytes of every function in functions.toml that comes from that
         source, with a relocation wherever our object has one (same symbol names), so calls and
         data references diff by name instead of by raw branch offsets. Built with `clang` (any
         clang with an ARM target; override with CTRDECOMP_CLANG).

The retail bytes are only placed in build/, which is git-ignored. Output: build/objdiff/objdiff.json.
"""
import json
import os
import shutil
import struct
import subprocess
import tomllib

from elftools.elf.elffile import ELFFile

from .compare import R_ARM_ABS32, R_ARM_CALL, R_ARM_JUMP24, R_ARM_THM_CALL, compile_obj, read_function

CONDS = ["eq", "ne", "hs", "lo", "mi", "pl", "vs", "vc", "hi", "ls", "ge", "lt", "gt", "le", "", "nv"]


def _markers(obj, symbol):
    """Mapping symbols ($a/$t/$d) inside the function's section: sorted [(offset, kind)]."""
    with open(obj, "rb") as f:
        elf = ELFFile(f)
        syms = list(elf.get_section_by_name(".symtab").iter_symbols())
        fn = next(s for s in syms if s.name == symbol and s["st_info"]["type"] == "STT_FUNC")
        return sorted((s["st_value"], s.name[1]) for s in syms
                      if s.name in ("$a", "$t", "$d") and s["st_shndx"] == fn["st_shndx"])


def _asm_function(fn, obj, code, off, size, mine):
    marks = _markers(obj, fn["symbol"])
    start = 0
    with open(obj, "rb") as f:                                   # section-relative start of the function
        elf = ELFFile(f)
        sym = next(s for s in elf.get_section_by_name(".symtab").iter_symbols() if s.name == fn["symbol"])
        start = sym["st_value"] & ~1
    lines = [f'.section .text.{fn["symbol"]},"ax",%progbits',
             f'.global {fn["symbol"]}', f'.type {fn["symbol"]},%function',
             ".thumb" if mine.thumb else ".arm"]
    if mine.thumb:
        lines.append(f'.thumb_func')
    lines.append(f'{fn["symbol"]}:')
    data = code[off:off + size]

    def kind_at(o):
        k = "t" if mine.thumb else "a"
        for m, kk in marks:
            if m - start <= o:
                k = kk
        return k

    o = 0
    while o < size:
        k = kind_at(o)
        rel = mine.relocs.get(o)
        if k == "d":
            w = struct.unpack_from("<I", data, o)[0] if o + 4 <= size else data[o]
            if rel and rel[0] == R_ARM_ABS32:
                add = struct.unpack_from("<I", mine.data, o)[0]
                lines.append(f".word {rel[1]}{'+%d' % add if add else ''}")
            elif o + 4 <= size:
                lines.append(f".word 0x{w:08x}")
            else:
                lines.append(f".byte 0x{w:02x}")
                o += 1
                continue
            o += 4
        elif k == "t":
            if rel and rel[0] == R_ARM_THM_CALL:
                lines.append(f"bl {rel[1]}")
                o += 4
            else:
                lines.append(f".inst.n 0x{struct.unpack_from('<H', data, o)[0]:04x}")
                o += 2
        else:
            w = struct.unpack_from("<I", data, o)[0]
            if rel and rel[0] in (R_ARM_CALL, R_ARM_JUMP24):
                op = "bl" if (w >> 24) & 1 else "b"
                lines.append(f"{op}{CONDS[w >> 28]} {rel[1]}")
            else:
                lines.append(f".inst 0x{w:08x}")
            o += 4
    lines.append(f'.size {fn["symbol"]}, {size}')
    return "\n".join(lines) + "\n"


def _rel(cfg, p):
    try:
        return os.path.relpath(p, cfg.root).replace(os.sep, "/")
    except ValueError:                      # different drive on Windows
        return p.replace(os.sep, "/")


def export(cfg, outdir):
    with open(cfg.functions_file, "rb") as f:
        fns = tomllib.load(f).get("function", [])
    code = cfg.code()
    clang = os.environ.get("CTRDECOMP_CLANG") or shutil.which("clang")
    if not clang:
        raise SystemExit("clang not found (set CTRDECOMP_CLANG)")
    os.makedirs(outdir, exist_ok=True)
    by_src = {}
    for fn in fns:
        by_src.setdefault((fn["src"], tuple(fn.get("flags") or ()), fn.get("build")), []).append(fn)
    units = []
    for (src, flags, build), group in by_src.items():
        name = os.path.splitext(os.path.basename(src))[0]
        obj = compile_obj(cfg, os.path.join(cfg.root, src), list(flags) or None, build)
        try:
            base = os.path.join(outdir, f"{name}.base.o")
            shutil.copy(obj, base)
            asm = ""
            for fn in group:
                mine = read_function(obj, fn["symbol"])
                asm += _asm_function(fn, obj, code, int(fn["offset"], 16), int(fn["size"], 16), mine)
        finally:
            os.unlink(obj)
        s_path = os.path.join(outdir, f"{name}.target.s")
        with open(s_path, "w") as f:
            f.write(asm)
        target = os.path.join(outdir, f"{name}.target.o")
        subprocess.run([clang, "--target=armv6k-none-eabi", "-c", "-x", "assembler", s_path, "-o", target], check=True)
        os.unlink(s_path)
        units.append({"name": name,
                      "target_path": _rel(cfg, target),
                      "base_path": _rel(cfg, base)})
    conf = {"$schema": "https://raw.githubusercontent.com/encounter/objdiff/main/config.schema.json",
            "custom_make": "python", "custom_args": ["-m", "ctrdecomp", "objdiff"],
            "build_target": False, "build_base": True, "units": units}
    path = os.path.join(cfg.root, "objdiff.json")
    with open(path, "w") as f:
        json.dump(conf, f, indent=2)
    return path, units
