"""Shared helpers for the hand-matching tools (tools/handmatch/README.md).

Scratch files (temporary objects, the last aligned diff, permuter output) go under HM_SCRATCH,
default build/hm (git-ignored). Run every tool from the repository root."""
import os
import sys
import tomllib

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
sys.path.insert(0, ROOT)

from ctrdecomp import config as _config          # noqa: E402
from ctrdecomp.compare import compare            # noqa: E402

SCRATCH = os.path.abspath(os.environ.get("HM_SCRATCH", os.path.join(ROOT, "build", "hm")))
TMP = os.path.join(SCRATCH, "tmp")
os.makedirs(TMP, exist_ok=True)
os.environ["TMP"] = os.environ["TEMP"] = TMP      # ARMCC and tempfile write here, not to %TEMP%

PLAIN = ["--cpu=MPCore", "--arm", "-O3", "-Otime", "--split_sections"]
EXC = PLAIN + ["--exceptions"]


def cfg():
    return _config.load()


def flags_for(mode):
    """'plain' or 'exc' (the two flag sets this title uses for game code; technical.md section 8)."""
    return {"plain": PLAIN, "exc": EXC}[mode]


def functions():
    with open(os.path.join(ROOT, "functions.toml"), "rb") as f:
        return tomllib.load(f)["function"]


def entry(name_or_offset):
    """A functions.toml entry by name or hex offset."""
    for f in functions():
        if f["name"] == name_or_offset or f["offset"] == name_or_offset.lower().lstrip("0x").rjust(len(f["offset"]), "0"):
            return f
    raise SystemExit(f"{name_or_offset!r} is not in functions.toml")


def score(c, src, symbol, off, size, mode, clean=None):
    """Compile and compare; returns the ctrdecomp Result plus the aligned +/- line count."""
    r = compare(c, src, symbol, off, size, flags_for(mode), clean=clean)
    n = sum(1 for l in r.aligned if l[:1] in "+-" and not l.startswith(("+++", "---")))
    return r, n


def write_last_align(r):
    path = os.path.join(SCRATCH, "last_align.txt")
    with open(path, "w") as f:
        f.write("".join(l if l.endswith("\n") else l + "\n" for l in r.aligned))
    return path
