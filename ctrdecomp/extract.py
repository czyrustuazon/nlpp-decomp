"""Pull ExeFS (and a RomFS file list) out of a decrypted .3ds (NCSD) or a bare NCCH.

Only NoCrypto images are supported. Encrypted images fail loudly rather than
producing garbage; decrypt them first with a tool that has the keys.
"""
import hashlib
import os
import struct

MEDIA = 0x200


def blz_decompress(c: bytes) -> bytes:
    """Decompress a bottom-up LZ77 (.code) image as used by 3DS ExeFS."""
    enc_len_hdr, extra = struct.unpack_from("<II", c, len(c) - 8)
    hdr_len = enc_len_hdr >> 24
    enc_len = enc_len_hdr & 0xFFFFFF
    out = bytearray(len(c) + extra)
    out[: len(c)] = c
    base = len(c) - enc_len
    s = len(c) - hdr_len
    d = len(out)
    while s > base:
        s -= 1
        flags = out[s]
        for _ in range(8):
            if s <= base:
                break
            if flags & 0x80:
                s -= 2
                v = out[s] | (out[s + 1] << 8)
                n = (v >> 12) + 3
                disp = (v & 0xFFF) + 3
                for _ in range(n):
                    d -= 1
                    out[d] = out[d + disp]
            else:
                s -= 1
                d -= 1
                out[d] = out[s]
            flags <<= 1
    return bytes(out)


def _ncch_offset(f):
    f.seek(0x100)
    magic = f.read(4)
    if magic == b"NCSD":
        f.seek(0x120)
        return struct.unpack("<I", f.read(4))[0] * MEDIA
    if magic == b"NCCH":
        return 0
    raise SystemExit(f"not an NCSD or NCCH image (magic {magic!r}); CIA is not supported")


def extract(image: str, outdir: str, list_romfs: bool = True) -> dict:
    os.makedirs(outdir, exist_ok=True)
    info = {}
    with open(image, "rb") as f:
        off = _ncch_offset(f)
        f.seek(off)
        n = f.read(0x200)
        if n[0x100:0x104] != b"NCCH":
            raise SystemExit("partition 0 is not NCCH")
        info["program_id"] = n[0x118:0x120][::-1].hex()
        info["product_code"] = n[0x150:0x160].rstrip(b"\0").decode()
        if not n[0x18F] & 4:
            raise SystemExit("NCCH is encrypted (NoCrypto flag clear); decrypt it first")
        f.seek(off + 0x200)
        exh = f.read(0x400)
        if hashlib.sha256(exh).digest() != n[0x160:0x180]:
            raise SystemExit("exheader hash mismatch")
        compressed = bool(exh[0x0D] & 1)
        # SCI code set: text / rodata / data {address, max pages, size}, then bss size.
        for name, o in (("text", 0x10), ("rodata", 0x20), ("data", 0x30)):
            addr, _, size = struct.unpack_from("<III", exh, o)
            info[f"{name}_va"], info[f"{name}_size"] = f"0x{addr:08X}", f"0x{size:X}"
        info["bss_size"] = f"0x{struct.unpack_from('<I', exh, 0x3C)[0]:X}"
        exefs_off = struct.unpack_from("<I", n, 0x1A0)[0] * MEDIA
        f.seek(off + exefs_off)
        eh = f.read(0x200)
        for i in range(10):
            name, o, s = struct.unpack_from("<8sII", eh, i * 16)
            if s == 0:
                continue
            name = name.rstrip(b"\0").decode()
            f.seek(off + exefs_off + 0x200 + o)
            d = f.read(s)
            if hashlib.sha256(d).digest() != eh[0x200 - 32 * (i + 1): 0x200 - 32 * i]:
                raise SystemExit(f"ExeFS hash mismatch: {name}")
            if name == ".code":
                if compressed:
                    d = blz_decompress(d)
                name = "code.bin"
                info["code_sha256"] = hashlib.sha256(d).hexdigest()
                info["code_size"] = len(d)
            else:
                name = name + ".bin"
            with open(os.path.join(outdir, name), "wb") as o_:
                o_.write(d)
        if list_romfs:
            info["romfs_files"] = _romfs_names(f, off, n)
    return info


def _romfs_names(f, off, n):
    ro, rs = struct.unpack_from("<II", n, 0x1B0)
    if rs == 0:
        return []
    base = off + ro * MEDIA
    f.seek(base)
    iv = f.read(0x60)
    if iv[:4] != b"IVFC":
        return []
    master = struct.unpack_from("<I", iv, 8)[0]
    bs3 = 1 << struct.unpack_from("<I", iv, 0x4C)[0]
    l3 = base + ((0x60 + master + bs3 - 1) // bs3) * bs3
    f.seek(l3)
    v = struct.unpack("<10I", f.read(0x28))
    f.seek(l3 + v[7])
    meta = f.read(v[8])
    names, i = [], 0
    while i + 0x20 <= len(meta):
        nl = struct.unpack_from("<I", meta, i + 0x1C)[0]
        names.append(meta[i + 0x20: i + 0x20 + nl].decode("utf-16le", "replace"))
        i += (0x20 + nl + 3) & ~3
    return names
