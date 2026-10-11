"""ready.py [--min 100] [--max 300] [--int] [--lo OFF] [--hi OFF] [--top N]

Candidates for hand-matching: unhandled game functions (outside the library areas, ARM) whose direct
callees are all handled (score 0 in functions.toml), sorted by caller count. Columns: offset, size,
callees, callers, exidx kind ('~' = covered by an earlier entry, not its own). --int keeps
integer-only functions (no VFP, no jump table) with at least 3 branches, the easiest kind to match."""
import argparse
import bisect
import csv
import os

import capstone

import hm
from ctrdecomp import callgraph as cg

LIB = [(0xac, 0x31854), (0x4e019c, 0x56b000), (0x630000, 0x690000), (0x1fc000, 0x204000)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--min", default="100")
    ap.add_argument("--max", default="300")
    ap.add_argument("--lo", default="0")
    ap.add_argument("--hi", default="ffffffff")
    ap.add_argument("--int", action="store_true")
    ap.add_argument("--top", type=int, default=50)
    a = ap.parse_args()
    lo_sz, hi_sz, lo, hi = (int(x, 16) for x in (a.min, a.max, a.lo, a.hi))
    c = hm.cfg()
    funcs = cg.load_symbols(c, os.path.join(hm.ROOT, "symbols", "code.bin.csv"))
    graph = cg.build(c, funcs)
    entries = hm.functions()
    handled = {int(f["offset"], 16) for f in entries if int(f.get("score", 0)) == 0}
    listed = {int(f["offset"], 16) for f in entries}
    size = {f[0]: f[1] for f in funcs}
    thumb = {f[0] for f in funcs if f[2]}
    with open(os.path.join(hm.ROOT, "symbols", "exidx.csv")) as f:
        ex = list(csv.reader(f))[1:]
    eo = [int(r[0], 16) for r in ex]

    def kind(o):
        i = bisect.bisect_right(eo, o) - 1
        return ex[i][1] + ("" if eo[i] == o else "~")

    callers = {}
    for s, cs in graph.items():
        for t in cs:
            callers.setdefault(t, set()).add(s)
    code = c.code()
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
    md.skipdata = True
    rows = []
    for st, cs in graph.items():
        if st in listed or st in thumb or not (lo <= st < hi):
            continue
        if any(x <= st < y for x, y in LIB) or not (lo_sz < size[st] <= hi_sz):
            continue
        if not all(x in handled for x in cs):
            continue
        if a.int:
            ins = list(md.disasm(code[st:st + size[st]], st))
            if any(i.mnemonic.startswith("v") for i in ins) or any(i.op_str.startswith("pc,") for i in ins):
                continue
            if sum(1 for i in ins if i.mnemonic.startswith("b") and not i.mnemonic.startswith("bl")
                   and i.mnemonic != "bx") < 3:
                continue
        rows.append((len(callers.get(st, ())), st, size[st], len(cs), kind(st)))
    rows.sort(key=lambda r: (-r[0], r[1]))
    print(f"{len(rows)} candidates")
    for ncl, st, sz, nc, k in rows[:a.top]:
        print(f"{st:06x} {sz:4x} callees={nc:2d} callers={ncl:3d} {k}")


if __name__ == "__main__":
    main()
