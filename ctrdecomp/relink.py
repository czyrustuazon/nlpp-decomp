"""Rebuild code.bin from source and compare it with the retail image.

Every function in functions.toml that has no score (score = 0) is compiled, its
relocations are resolved from *addresses we declare* (functions.toml for functions we
have source for, externs.toml for everything else), and the resulting bytes are written
over a copy of the retail image at the function's offset. If every declared address is
right, the rebuilt image is byte-identical to retail. Unlike the per-function diff, this
cannot pass with a wrong callee or data address: relocation bytes are computed, not masked.

Functions that do not match yet (score != 0) are left as retail bytes and reported.
Only ARM CALL/JUMP24 and ABS32 relocations are resolved; Thumb ones raise.
"""
import hashlib
import os
import struct
import tomllib

from .compare import R_ARM_ABS32, R_ARM_CALL, R_ARM_JUMP24, compile_obj, read_function


def load_externs(cfg):
    if not os.path.isfile(cfg.externs_file):
        return {}
    with open(cfg.externs_file, "rb") as f:
        return {k: int(str(v), 0) for k, v in tomllib.load(f).get("symbols", {}).items()}


def _resolve(word, rtype, place_va, target_va):
    if rtype in (R_ARM_CALL, R_ARM_JUMP24):
        if word & 0xFFFFFF != 0xFFFFFE:
            raise RuntimeError(f"unexpected addend in branch word 0x{word:08X}")
        delta = target_va - (place_va + 8)
        if delta & 3 or not -(1 << 25) <= delta < (1 << 25):
            raise RuntimeError(f"branch to 0x{target_va:08X} from 0x{place_va:08X} out of range or unaligned")
        return (word & 0xFF000000) | ((delta >> 2) & 0xFFFFFF)
    if rtype == R_ARM_ABS32:
        return (target_va + word) & 0xFFFFFFFF          # REL: the in-place word is the addend
    raise RuntimeError(f"relocation type {rtype} is not supported")


def relink(cfg, out=None):
    with open(cfg.functions_file, "rb") as f:
        fns = tomllib.load(f).get("function", [])
    externs = load_externs(cfg)
    base = cfg.load_base
    addr = {fn["symbol"]: base + int(fn["offset"], 16) for fn in fns}
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
                if mine.thumb:
                    raise RuntimeError("Thumb functions are not supported yet")
                if len(mine.data) != size:
                    raise RuntimeError(f"size 0x{len(mine.data):X}, declared 0x{size:X}")
                data = bytearray(mine.data)
                for o, (rtype, sym) in sorted(mine.relocs.items()):
                    if sym not in addr:
                        raise RuntimeError(f"no address for {sym!r} (add it to externs.toml)")
                    word = struct.unpack_from("<I", data, o)[0]
                    struct.pack_into("<I", data, o, _resolve(word, rtype, base + off + o, addr[sym]))
                image[off:off + size] = data
                placed.append(fn["name"])
            except RuntimeError as e:
                errors.append((fn["name"], str(e)))
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
