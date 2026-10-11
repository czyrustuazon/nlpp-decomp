"""tidy_par.py [--round2] [JOBS]: run tools/wrapgen/tidy.py over the committed, unmodified src/gen files,
one file per worker. Files with uncommitted changes (another agent may be writing them) are skipped.
Run `python -m ctrdecomp relink` afterwards, and never while a relink is running."""
import os
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor

import hm


def main():
    args = [a for a in sys.argv[1:] if a != "--round2"]
    jobs = int(args[0]) if args else 8
    extra = ["--round2"] if "--round2" in sys.argv else []
    git = lambda *a: subprocess.run(["git", *a], cwd=hm.ROOT, capture_output=True, text=True).stdout.split()
    tracked = [f for f in git("ls-files", "src/gen") if f.endswith(".cpp")]
    dirty = set(git("diff", "--name-only", "--", "src/gen"))
    files = [f for f in tracked if f not in dirty]
    print(f"{len(files)} files ({len(dirty)} with uncommitted changes skipped)", flush=True)

    def run(f):
        r = subprocess.run([sys.executable, os.path.join(hm.ROOT, "tools", "wrapgen", "tidy.py"), *extra, f],
                           cwd=hm.ROOT, capture_output=True, text=True)
        return r.stdout.strip() or r.stderr.strip()[-300:]

    with ThreadPoolExecutor(jobs) as ex:
        for out in ex.map(run, files):
            print(out, flush=True)


if __name__ == "__main__":
    main()
