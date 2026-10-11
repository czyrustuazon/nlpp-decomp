"""variants.py NAME VARIANTS.py [plain|exc ...]

Score source variants of a functions.toml entry. VARIANTS.py defines V = {key: [(old, new), ...]}:
each key's replacements are applied to the entry's source file (a copy under $HM_SCRATCH; the real file
is not touched) and the result is scored. THROW=1 also adds throw() to the function's definition."""
import os
import re
import sys

import hm


def main():
    name, vfile = sys.argv[1], sys.argv[2]
    modes = sys.argv[3:] or ["plain", "exc"]
    f = hm.entry(name)
    with open(os.path.join(hm.ROOT, f["src"])) as fh:
        src = fh.read()
    ns = {}
    with open(vfile) as fh:
        exec(fh.read(), ns)
    m = re.match(r"_Z(?:N\d+\w+?)?(\d+)(\w+)", f["symbol"])
    fname = m.group(2)[:int(m.group(1))] if m else name
    c = hm.cfg()
    out = os.path.join(hm.SCRATCH, "variant.cpp")
    for k, reps in ns["V"].items():
        t = src
        for o, n in reps:
            if o not in t:
                raise SystemExit(f"{k}: pattern not found: {o[:60]!r}")
            t = t.replace(o, n)
        if os.environ.get("THROW"):
            t = re.sub(r"^([^\s/#][^\n;]*\b%s\([^;{]*\))(\s*(?:\n\{|\{))" % re.escape(fname),
                       lambda mm: mm.group(1) + " throw()" + mm.group(2), t, flags=re.M)
        with open(out, "w") as fh:
            fh.write(t)
        for md in modes:
            try:
                r, n = hm.score(c, out, f["symbol"], int(f["offset"], 16), int(f["size"], 16), md)
                print(f"{k:24s} {md:5s} score {r.score:4d}  aligned={n}")
            except Exception as e:  # compile error: show the first line
                print(f"{k:24s} {md:5s} error: {str(e).splitlines()[0][:100]}")


if __name__ == "__main__":
    main()
