"""Rebuild code.bin from source and compare it with the retail image.

Every function in functions.toml that has no score (score = 0) is compiled, its
relocations are resolved from *addresses we declare* (functions.toml for functions we
have source for, externs.toml for everything else), and the resulting bytes are written
over a copy of the retail image at the function's offset. If every declared address is
right, the rebuilt image is byte-identical to retail. Unlike the per-function diff, this
cannot pass with a wrong callee or data address: relocation bytes are computed, not masked.

`[[data]]` entries (name, offset, size, src, symbol; hex file offsets into .rodata/.data) place
initialized data the same way; their ABS32 words (pointer tables) are resolved like a function's pool.

Functions that do not match yet (score != 0) are left as retail bytes and reported.
Resolved: ARM CALL/JUMP24 (BL/B, and BL to a Thumb target as BLX), Thumb CALL (BL/BLX), ABS32.
Addresses of Thumb functions carry bit 0 set, as in ELF: in externs.toml, and via `thumb = true`
in functions.toml.
"""
import hashlib
import os
import struct
import tomllib

from .compare import R_ARM_ABS32, R_ARM_CALL, R_ARM_JUMP24, R_ARM_THM_CALL, compile_obj, read_data, read_function


def load_externs(cfg):
    if not os.path.isfile(cfg.externs_file):
        return {}
    with open(cfg.externs_file, "rb") as f:
        # "weak" = unresolved weak reference: the ARM linker turns a BL to it into `mov r0, r0`.
        return {k: (v if v == "weak" else int(str(v), 0)) for k, v in tomllib.load(f).get("symbols", {}).items()}


def _thumb_call(word, place_va, target):
    """Thumb BL/BLX (two halfwords, hw1 in the low 16 bits). Bit 0 of `target` is the Thumb bit."""
    if word != 0xFFFEF7FF:
        raise RuntimeError(f"unexpected addend in Thumb call 0x{word:08X}")
    if target & 1:
        delta, op = (target & ~1) - (place_va + 4), 0xD000            # BL
    else:
        delta, op = target - ((place_va + 4) & ~3), 0xC000            # BLX (ARM target)
        if target & 3:
            raise RuntimeError(f"BLX target 0x{target:08X} is not word aligned")
    if not -(1 << 24) <= delta < (1 << 24):
        raise RuntimeError(f"call to 0x{target:08X} from 0x{place_va:08X} out of range")
    s = (delta >> 24) & 1
    i1, i2 = (delta >> 23) & 1, (delta >> 22) & 1
    hw1 = 0xF000 | (s << 10) | ((delta >> 12) & 0x3FF)
    hw2 = op | ((1 - (i1 ^ s)) << 13) | ((1 - (i2 ^ s)) << 11) | ((delta >> 1) & 0x7FF)
    return hw1 | (hw2 << 16)


def _arm_branch(word, rtype, place_va, target):
    if word & 0xFFFFFF != 0xFFFFFE:
        raise RuntimeError(f"unexpected addend in branch word 0x{word:08X}")
    if target & 1:                                   # ARM -> Thumb: BLX <imm>, unconditional BL only
        if rtype != R_ARM_CALL or word >> 24 != 0xEB:
            raise RuntimeError("ARM branch to a Thumb function needs an unconditional BL")
        delta = (target & ~1) - (place_va + 8)
        if not -(1 << 25) <= delta < (1 << 25):
            raise RuntimeError(f"call to 0x{target:08X} from 0x{place_va:08X} out of range")
        return 0xFA000000 | (((delta >> 1) & 1) << 24) | ((delta >> 2) & 0xFFFFFF)
    delta = target - (place_va + 8)
    if delta & 3 or not -(1 << 25) <= delta < (1 << 25):
        raise RuntimeError(f"branch to 0x{target:08X} from 0x{place_va:08X} out of range or unaligned")
    return (word & 0xFF000000) | ((delta >> 2) & 0xFFFFFF)


def _resolve(word, rtype, place_va, target):
    if rtype in (R_ARM_CALL, R_ARM_JUMP24):
        return _arm_branch(word, rtype, place_va, target)
    if rtype == R_ARM_THM_CALL:
        return _thumb_call(word, place_va, target)
    if rtype == R_ARM_ABS32:
        return (target + word) & 0xFFFFFFFF              # REL: the in-place word is the addend
    raise RuntimeError(f"relocation type {rtype} is not supported")


def resolve_function(mine, place_va, addr):
    """Return the function's bytes with every relocation resolved from `addr` (name -> VA)."""
    data = bytearray(mine.data)
    for o, (rtype, sym) in sorted(mine.relocs.items()):
        if sym not in addr:
            raise RuntimeError(f"no address for {sym!r} (add it to externs.toml)")
        word = struct.unpack_from("<I", data, o)[0]
        if addr[sym] == "weak" and rtype == R_ARM_CALL:
            struct.pack_into("<I", data, o, 0xE1A00000)
            continue
        struct.pack_into("<I", data, o, _resolve(word, rtype, place_va + o, addr[sym]))
    return bytes(data)


def relink(cfg, out=None):
    with open(cfg.functions_file, "rb") as f:
        toml = tomllib.load(f)
    fns, datas = toml.get("function", []), toml.get("data", [])
    externs = load_externs(cfg)
    base = cfg.load_base
    addr = {fn["symbol"]: base + int(fn["offset"], 16) + bool(fn.get("thumb")) for fn in fns}
    addr.update({d["symbol"]: base + int(d["offset"], 16) for d in datas})
    addr.update(externs)

    retail = cfg.code()
    image = bytearray(retail)
    placed, skipped, errors = [], [], []
    objs = {}
    try:
        for fn in fns:
            if int(fn.get("score", 0)) != 0:
                skipped.append(fn["name"])
                continue
            off, size = int(fn["offset"], 16), int(fn["size"], 16)
            src = os.path.join(cfg.root, fn["src"])
            try:
                key = (src, tuple(fn.get("flags") or ()), fn.get("build"))
                if key not in objs:
                    objs[key] = compile_obj(cfg, src, fn.get("flags") or None, fn.get("build"))
                mine = read_function(objs[key], fn["symbol"])
                if mine.thumb != bool(fn.get("thumb")):
                    raise RuntimeError(f"compiled as {'Thumb' if mine.thumb else 'ARM'}; set thumb = true/false in functions.toml")
                if len(mine.data) != size:
                    raise RuntimeError(f"size 0x{len(mine.data):X}, declared 0x{size:X}")
                data = resolve_function(mine, base + off, addr)
                image[off:off + size] = data
                placed.append(fn["name"])
            except RuntimeError as e:
                errors.append((fn["name"], str(e)))
        for d in datas:
            off, size = int(d["offset"], 16), int(d["size"], 16)
            src = os.path.join(cfg.root, d["src"])
            try:
                key = (src, tuple(d.get("flags") or ()), d.get("build"))
                if key not in objs:
                    objs[key] = compile_obj(cfg, src, d.get("flags") or None, d.get("build"))
                mine = read_data(objs[key], d["symbol"])
                if len(mine.data) != size:
                    raise RuntimeError(f"size 0x{len(mine.data):X}, declared 0x{size:X}")
                image[off:off + size] = resolve_function(mine, base + off, addr)
                placed.append(d["name"])
            except RuntimeError as e:
                errors.append((d["name"], str(e)))
    finally:
        for o in objs.values():
            os.unlink(o)

    diffs = [i for i in range(len(image)) if image[i] != retail[i]]
    if out:
        os.makedirs(os.path.dirname(out) or ".", exist_ok=True)
        with open(out, "wb") as f:
            f.write(image)
    return {
        "placed": placed, "skipped": skipped, "errors": errors,
        "sha256": hashlib.sha256(image).hexdigest(),
        "retail_sha256": hashlib.sha256(retail).hexdigest(),
        "identical": not diffs and not errors,
        "diff_bytes": len(diffs), "first_diffs": [f"0x{base + d:08X}" for d in diffs[:8]],
    }
