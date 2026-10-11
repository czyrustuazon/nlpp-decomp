"""diff.py SRC SYMBOL OFF SIZE [plain|exc] [--align] [--relocs] [--clean OFF]

Compile SRC and score SYMBOL against retail at file offset OFF (size incl. pool and string islands).
Prints the score, the aligned +/- line count (a better progress measure than the positional score once
an instruction is missing), and with --align the aligned diff. The diff is also saved to
$HM_SCRATCH/last_align.txt."""
import argparse

import hm


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src")
    ap.add_argument("symbol")
    ap.add_argument("off")
    ap.add_argument("size")
    ap.add_argument("mode", nargs="?", default="plain", choices=["plain", "exc"])
    ap.add_argument("--align", action="store_true")
    ap.add_argument("--relocs", action="store_true")
    ap.add_argument("--clean", help="file offset of the cleanup pad (scores the .clean section too)")
    a = ap.parse_args()
    c = hm.cfg()
    r, n = hm.score(c, a.src, a.symbol, int(a.off, 16), int(a.size, 16), a.mode,
                    int(a.clean, 16) if a.clean else None)
    hm.write_last_align(r)
    if a.align:
        for l in r.aligned:
            print(l.rstrip("\n"))
    if a.relocs:
        for o, name, dest in r.relocs:
            print(f"reloc +0x{o:03X} {name} -> {dest}")
    print(f"score {r.score}  target {r.target_len} ins  mine {r.mine_len} ins  aligned={n}")


if __name__ == "__main__":
    main()
