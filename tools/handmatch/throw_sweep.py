"""throw_sweep.py [NAME ...]: score every near-miss (score > 0 in functions.toml, outside lib/) with throw()
added to its definition and declarations, under --exceptions. technical.md section 8 (2026-10-10): an
exception specification changes code even in functions without calls, and a non-tail last call needs it.
Only scratch copies are compiled; nothing in src/ changes."""
import os
import re
import sys

import hm


def name_of(sym):
    m = re.match(r"_ZN(\d+)\w+?(\d+)(\w+?)E", sym)
    if m:
        n = int(m.group(2))
        return m.group(3)[:n] if len(m.group(3)) >= n else None
    m = re.match(r"_Z(\d+)(\w+)", sym)
    return m.group(2)[:int(m.group(1))] if m else None


def main():
    only = set(sys.argv[1:])
    c = hm.cfg()
    out = os.path.join(hm.SCRATCH, "throw_sweep.cpp")
    for f in hm.functions():
        if int(f.get("score", 0)) == 0 or f["src"].startswith("lib/") or (only and f["name"] not in only):
            continue
        name = name_of(f["symbol"])
        if not name:
            print(f"{f['name']:28s} skipped (symbol not parsed)")
            continue
        with open(os.path.join(hm.ROOT, f["src"])) as fh:
            s = fh.read()
        pat = re.compile(r"^([^\s/#][^\n;]*\b%s\([^;{]*\))(\s*(?:\n\{|\{))" % re.escape(name), re.M)
        t, n = pat.subn(lambda m: m.group(1) + " throw()" + m.group(2), s)
        if n == 0:
            print(f"{f['name']:28s} skipped (definition not found)")
            continue
        t = re.sub(r"(\b%s\([^;{)]*\))(\s*;)" % re.escape(name), r"\1 throw()\2", t)
        with open(out, "w") as fh:
            fh.write(t)
        try:
            r, al = hm.score(c, out, f["symbol"], int(f["offset"], 16), int(f["size"], 16), "exc")
            print(f"{f['name']:28s} recorded {f.get('score'):>4}  throw+exc {r.score:4d}  aligned={al}")
        except Exception as e:
            print(f"{f['name']:28s} error: {str(e).splitlines()[0][:90]}")


if __name__ == "__main__":
    main()
