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
