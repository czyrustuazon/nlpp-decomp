"""permute.py SRC SYMBOL OFF SIZE plain|exc SECONDS [JOBS]

Run ctrdecomp's permuter (ctrdecomp/permute.py) on a scratch source that is not in functions.toml yet,
with either flag set. The region is marked with // PERMUTE-BEGIN / // PERMUTE-END in SRC. Results go to
$HM_SCRATCH/permute/<symbol>/ (best.cpp, best_*.cpp). The permuter can "improve" a score by changing
behaviour (dropping a store, reading an uninitialized copy): read best.cpp before trusting it, and
reduce it back to plain C one rewrite at a time."""
import glob
import multiprocessing as mp
import os
import re
import sys
import tempfile

import hm
from ctrdecomp import permute


def main():
    src, sym, off, size, mode, secs = sys.argv[1:7]
    jobs = int(sys.argv[7]) if len(sys.argv) > 7 else 12
    c = hm.cfg()
    fn = {"symbol": sym, "offset": off, "size": size, "flags": hm.flags_for(mode)}
    with open(src) as f:
        text = f.read()
    span = permute.find_region(text.split("\n"), None)
    outdir = os.path.join(hm.SCRATCH, "permute", re.sub(r"\W+", "_", sym)[:60])
    os.makedirs(outdir, exist_ok=True)
    for old in glob.glob(os.path.join(outdir, "*")):
        os.unlink(old)
    with tempfile.TemporaryDirectory() as tmp:
        base = permute.evaluate(c, fn, *permute.split_source(text, span), tmp)
    print("start (cost, score):", base, flush=True)
    with mp.Pool(jobs) as pool:
        res = pool.map(permute.worker, [(c, fn, text, span, float(secs), s + 1, outdir) for s in range(jobs)])
    res.sort(key=lambda r: r[0])
    best, region, _, head, tail = res[0]
    with open(os.path.join(outdir, "best.cpp"), "w", newline="\n") as f:
        f.write(head + region + tail)
    print(f"evaluated {sum(r[2] for r in res)} variants; best (cost, score): {best} -> {outdir}")


if __name__ == "__main__":
    main()
