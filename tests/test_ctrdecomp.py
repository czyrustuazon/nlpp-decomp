"""Tests for ctrdecomp that do not need a game image (except the last, which skips without one).

Run: python -m pytest tests
"""
import os
import struct
import subprocess
import tempfile

import pytest

from ctrdecomp import config as config_mod
from ctrdecomp.compare import compare, compile_obj, read_function
from ctrdecomp.extract import blz_decompress

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def test_blz_literals_and_backrefs():
    # One flag byte: 3 literals then 5 back-references of length 18, displacement 3.
    backref = struct.pack("<H", ((18 - 3) << 12) | (3 - 3))
    body = backref * 5 + b"AAA" + bytes([0b00011111])
    comp = body + struct.pack("<II", (8 << 24) | (len(body) + 8), 93 - (len(body) + 8))
    assert blz_decompress(comp) == b"A" * 93


def test_blz_keeps_uncompressed_prefix():
    backref = struct.pack("<H", ((18 - 3) << 12) | (3 - 3))
    body = backref * 5 + b"AAA" + bytes([0b00011111])
    comp = b"prefix!!" + body + struct.pack("<II", (8 << 24) | (len(body) + 8), 93 - (len(body) + 8))
    assert blz_decompress(comp) == b"prefix!!" + b"A" * 93


def _thumb_bl(pc, target):
    """Encode Thumb-2 BL at pc to target."""
    imm = target - (pc + 4)
    s = (imm >> 24) & 1
    i1, i2 = (imm >> 23) & 1, (imm >> 22) & 1
    j1, j2 = 1 - (i1 ^ s), 1 - (i2 ^ s)
    hw1 = 0xF000 | (s << 10) | ((imm >> 12) & 0x3FF)
    hw2 = 0xD000 | (j1 << 13) | (j2 << 11) | ((imm >> 1) & 0x7FF)
    return hw1 | (hw2 << 16)


@pytest.fixture
def cfg():
    c = config_mod.load(os.path.join(ROOT, "ctrdecomp.toml"))
    if not os.path.isfile(c.armcc()):
        pytest.skip("ARMCC not vendored (python -m ctrdecomp fetch-armcc)")
    return c


def test_thumb_roundtrip_and_reloc_destinations(cfg, tmp_path):
    src = os.path.join(ROOT, "src", "lyt_clim.cpp")
    flags = ["--cpu=MPCore", "--thumb", "-O3", "-Otime", "--split_sections"]
    obj = compile_obj(cfg, src, flags)
    try:
        fn = read_function(obj, "ParseClim")
    finally:
        os.unlink(obj)
    assert fn.thumb

    # Fake code image: the function at 0x1000 with each call resolved to a known target.
    off = 0x1000
    image = bytearray(0x4000)
    image[off:off + len(fn.data)] = fn.data
    targets = {}
    for i, (o, (rtype, name)) in enumerate(sorted(fn.relocs.items())):
        assert rtype == 10, "expected R_ARM_THM_CALL"
        t = 0x2000 + 0x100 * i
        targets[o] = t
        struct.pack_into("<I", image, off + o, _thumb_bl(off + o, t))
    code = tmp_path / "code.bin"
    code.write_bytes(image)

    cfg.code_bin = str(code)
    r = compare(cfg, src, "ParseClim", off, len(fn.data), flags)
    assert r.score == 0
    assert [d for _, _, d in r.relocs] == [f"file 0x{t:08X}" for _, t in sorted(targets.items())]


def test_game_functions_still_match(cfg):
    if not os.path.isfile(cfg.code_bin):
        pytest.skip("game code.bin not present")
    r = subprocess.run(["python", "-m", "ctrdecomp", "check"], cwd=ROOT, capture_output=True, text=True)
    assert r.returncode == 0, r.stdout + r.stderr


def test_game_relink_is_byte_identical(cfg):
    if not os.path.isfile(cfg.code_bin):
        pytest.skip("game code.bin not present")
    r = subprocess.run(["python", "-m", "ctrdecomp", "relink"], cwd=ROOT, capture_output=True, text=True)
    assert r.returncode == 0, r.stdout + r.stderr


@pytest.mark.parametrize("thumb_target", [True, False])
def test_relink_resolves_thumb_calls(cfg, thumb_target):
    from ctrdecomp.relink import resolve_function
    from ctrdecomp.compare import _thumb_bl_target
    src = os.path.join(ROOT, "src", "lyt_clim.cpp")
    obj = compile_obj(cfg, src, ["--cpu=MPCore", "--thumb", "-O3", "-Otime", "--split_sections"])
    try:
        fn = read_function(obj, "ParseClim")
    finally:
        os.unlink(obj)
    place = 0x100000 + 0x1000
    names = sorted({n for _, n in fn.relocs.values()})
    addr = {n: 0x00200000 + 0x100 * i + int(thumb_target) for i, n in enumerate(names)}
    data = resolve_function(fn, place, addr)
    for o, (_, n) in fn.relocs.items():
        w = struct.unpack_from("<I", data, o)[0]
        got = _thumb_bl_target(w & 0xFFFF, w >> 16, place + o)
        assert got == addr[n] & ~1
        assert bool(w >> 28 & 1) == thumb_target      # bit 12 of hw2: BL vs BLX


def test_relink_places_data_and_pointer_tables(cfg, tmp_path):
    import dataclasses
    from ctrdecomp.relink import relink
    (tmp_path / "t.cpp").write_text(
        "extern int Ext(int);\n"
        "const int kTable[4] = {1, 2, 3, 0x11223344};\n"
        "typedef int (*Fn)(int);\n"
        "extern const Fn kFns[1]; const Fn kFns[1] = { Ext };\n"
        "int Get(int i) { return kTable[i & 3] + Ext(i); }\n")
    (tmp_path / "f.toml").write_text(
        '[[function]]\nname="Get"\noffset="100"\nsize="0"\nsrc="t.cpp"\nsymbol="_Z3Geti"\nscore=99\n'
        '[[data]]\nname="kTable"\noffset="2000"\nsize="10"\nsrc="t.cpp"\nsymbol="kTable"\n'
        '[[data]]\nname="kFns"\noffset="2010"\nsize="4"\nsrc="t.cpp"\nsymbol="kFns"\n')
    (tmp_path / "e.toml").write_text("[symbols]\n_Z3Exti = 0x00300000\n")
    code = tmp_path / "code.bin"
    code.write_bytes(bytes(0x3000))
    c = dataclasses.replace(cfg, root=str(tmp_path), code_bin=str(code), functions_file=str(tmp_path / "f.toml"),
                            externs_file=str(tmp_path / "e.toml"))
    r = relink(c, str(tmp_path / "out.bin"))
    assert not r["errors"], r
    assert r["placed"] == ["kTable", "kFns"] and r["skipped"] == ["Get"]
    out = (tmp_path / "out.bin").read_bytes()
    assert struct.unpack_from("<4I", out, 0x2000) == (1, 2, 3, 0x11223344)
    assert struct.unpack_from("<I", out, 0x2010)[0] == 0x00300000


def test_objdiff_targets_reproduce_retail_bytes(cfg, tmp_path):
    import shutil
    if not os.path.isfile(cfg.code_bin) or not shutil.which("clang"):
        pytest.skip("needs the game code.bin and clang")
    r = subprocess.run(["python", "-m", "ctrdecomp", "objdiff", "--out", str(tmp_path)], cwd=ROOT, capture_output=True, text=True)
    assert r.returncode == 0, r.stdout + r.stderr
    assert (tmp_path / "lyt_clim.target.o").is_file()


def test_permuter_mutations_produce_different_valid_looking_source():
    import random
    from ctrdecomp.permute import MUTATIONS, mutate, type_table
    region = "\n".join([
        "    u32 n = p->count;",
        "    if (n > limit) {",
        "        total += 1;",
        "    }",
        "    p->count = n - 1;",
        "    q->x = q->y;",
    ])
    ctx = {"types": type_table("struct S { u32 count; };\nu32 total;\n"), "n": 0}
    rng = random.Random(1)
    seen = {mutate(region, rng, ctx) for _ in range(200)}
    assert len(seen) > 20
    # a statement inside the if block is never moved out of it
    assert all("total += 1;" not in m.split("if (n > limit) {")[0] for m in seen if "if (n > limit) {" in m)
    for fn in MUTATIONS:                      # none of them may raise on ordinary input
        fn(region.split("\n"), rng, ctx)
