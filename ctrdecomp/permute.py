"""A permuter for ARMCC: random source rewrites, kept when the compiled function gets closer to retail.

Hand edits stop paying off once only register choice or scheduling differs. This mutates a marked
region of a source file (statement order, temporaries, comparison direction, `x != 0` vs `x`,
increment forms, local integer types, operand order), recompiles each variant with the configured
ARMCC build, and hill-climbs on the aligned diff size. Any variant whose bytes equal retail (score 0)
is written out and stops the search. A match by bytes is correct by definition; the rewrites only
have to produce compilable C++.

  python -m ctrdecomp permute <name in functions.toml> [--lines A-B] [--seconds 300] [--jobs N]

The region is --lines (1-based, inclusive) or the lines between `// PERMUTE-BEGIN` and
`// PERMUTE-END` in the source. Output goes to build/permute/<name>/ (git-ignored).
"""
import glob
import multiprocessing as mp
import os
import random
import re
import tempfile
import time
import tomllib

from .compare import compare

SCALARS = ["u8", "u16", "u32", "s32", "int", "bool"]
NOT_STMT = ("return", "break", "continue", "case", "default", "else", "goto", "typedef", "struct",
            "class", "public", "private", "//", "#", "for", "while", "if", "do", "switch")
CHAIN = re.compile(r"[A-Za-z_]\w*(?:(?:->|\.)[A-Za-z_]\w*|\[[^\[\]]+\])+")
TOKEN = r"[A-Za-z_][\w]*(?:(?:->|\.)\w+|\[\w+\])*|0x[0-9A-Fa-f]+|\d+"
CMP = re.compile(rf"({TOKEN})\s*(<=|>=|<|>|==|!=)\s*({TOKEN})")
MIRROR = {"<": ">", ">": "<", "<=": ">=", ">=": "<=", "==": "==", "!=": "!="}
COMM = re.compile(rf"({TOKEN})\s*([+*&|^])\s*({TOKEN})")
DECL = re.compile(r"^(\s+)((?:const\s+)?[A-Za-z_][\w:]*(?:\s*\*+)?)\s+(\w+)\s*=\s*(.+);\s*$")
DECL_ONLY = re.compile(r"^(\s+)((?:const\s+)?[A-Za-z_][\w:]*(?:\s*\*+)?)\s+(\w+)\s*;\s*$")
INCR = re.compile(r"^(\s*)(\w+(?:(?:->|\.)\w+)*)\s*(\+\+|--|\+=\s*1|-=\s*1|=\s*\2\s*[+-]\s*1)\s*;\s*$")


def simple_stmt(l):
    s = l.strip()
    return s.endswith(";") and "{" not in s and "}" not in s and not s.startswith(NOT_STMT)


def type_table(text):
    t = {}
    for m in re.finditer(r"^\s*((?:const\s+)?[A-Za-z_][\w:]*(?:\s*\*+)?)\s+(\w+)\s*(?:\[[^\]]*\])?\s*[;=,)]", text, re.M):
        t[m.group(2)] = m.group(1).strip()
    for m in re.finditer(r"[(,]\s*((?:const\s+)?[A-Za-z_]\w*(?:\s*\*+)?)\s+(\w+)\s*(?=[,)])", text):
        t.setdefault(m.group(2), m.group(1).strip())
    return t


def mut_swap(lines, rng, ctx):
    idx = [i for i in range(len(lines) - 1) if simple_stmt(lines[i]) and simple_stmt(lines[i + 1])]
    if not idx:
        return None
    i = rng.choice(idx)
    lines[i], lines[i + 1] = lines[i + 1], lines[i]
    return lines


def mut_move(lines, rng, ctx):
    idx = [i for i in range(len(lines)) if simple_stmt(lines[i])]
    if not idx:
        return None
    i = rng.choice(idx)
    j = max(0, min(len(lines) - 1, i + rng.choice([-3, -2, 2, 3])))
    lo, hi = min(i, j), max(i, j)
    if not all(simple_stmt(l) for l in lines[lo:hi + 1]):      # never cross a brace or a control line
        return None
    lines.insert(j, lines.pop(i))
    return lines


KEYWORDS = {"if", "else", "return", "while", "for", "true", "false", "this", "sizeof", "const", "void"}


def _hoist_candidates(line, types):
    out = [m for m in CHAIN.finditer(line)]
    out += [m for m in re.finditer(r"(?<![\w.>])[A-Za-z_]\w*(?![\w(])", line)
            if m.group(0) in types and m.group(0) not in KEYWORDS]
    return out


def mut_hoist(lines, rng, ctx):
    idx = [i for i, l in enumerate(lines)
           if (simple_stmt(l) or l.strip().startswith("if")) and _hoist_candidates(l, ctx["types"])]
    if not idx:
        return None
    i = rng.choice(idx)
    m = rng.choice(_hoist_candidates(lines[i], ctx["types"]))
    expr = m.group(0)
    last = re.split(r"->|\.", expr)[-1]
    ty = ctx["types"].get(last) if "[" not in last else None
    ty = ty or rng.choice(SCALARS)
    ctx["n"] += 1
    name = f"t{ctx['n']}"
    indent = re.match(r"\s*", lines[i]).group(0)
    lines[i] = lines[i][:m.start()] + name + lines[i][m.end():]
    j = max(0, i - rng.choice([0, 0, 0, 1, 2, 3, 4]))    # the load may also move up
    lines.insert(j, f"{indent}{ty} {name} = {expr};")
    return lines


def mut_unhoist(lines, rng, ctx):
    idx = [i for i, l in enumerate(lines) if DECL.match(l)]
    rng.shuffle(idx)
    for i in idx:
        m = DECL.match(lines[i])
        name, expr = m.group(3), m.group(4)
        uses = [j for j in range(i + 1, len(lines)) if re.search(rf"\b{name}\b", lines[j])]
        if len(uses) == 1 and len(re.findall(rf"\b{name}\b", lines[uses[0]])) == 1:
            sub = expr if re.fullmatch(r"[\w.\->\[\]]+", expr) else f"({expr})"
            lines[uses[0]] = re.sub(rf"\b{name}\b", lambda _: sub, lines[uses[0]])
            del lines[i]
            return lines
    return None


def mut_split_decl(lines, rng, ctx):
    idx = [i for i, l in enumerate(lines) if DECL.match(l) and not l.strip().startswith("const")]
    if not idx:
        return None
    i = rng.choice(idx)
    ind, ty, name, expr = DECL.match(lines[i]).groups()
    lines[i:i + 1] = [f"{ind}{ty} {name};", f"{ind}{name} = {expr};"]
    return lines


def mut_merge_decl(lines, rng, ctx):
    idx = [i for i in range(len(lines) - 1) if DECL_ONLY.match(lines[i])]
    rng.shuffle(idx)
    for i in idx:
        ind, ty, name = DECL_ONLY.match(lines[i]).groups()
        m = re.match(rf"^\s*{name}\s*=\s*(.+);\s*$", lines[i + 1])
        if m:
            lines[i:i + 2] = [f"{ind}{ty} {name} = {m.group(1)};"]
            return lines
    return None


def _regex_line(lines, rng, rx, fn):
    idx = [i for i, l in enumerate(lines) if rx.search(l)]
    if not idx:
        return None
    i = rng.choice(idx)
    m = rng.choice(list(rx.finditer(lines[i])))
    lines[i] = lines[i][:m.start()] + fn(m) + lines[i][m.end():]
    return lines


def mut_cmp_flip(lines, rng, ctx):
    return _regex_line(lines, rng, CMP, lambda m: f"{m.group(3)} {MIRROR[m.group(2)]} {m.group(1)}")


def mut_commute(lines, rng, ctx):
    return _regex_line(lines, rng, COMM, lambda m: f"{m.group(3)} {m.group(2)} {m.group(1)}")


def mut_zero_cmp(lines, rng, ctx):
    forms = [(re.compile(rf"({TOKEN})\s*!=\s*0(?![\w.])"), lambda m: m.group(1)),
             (re.compile(rf"({TOKEN})\s*==\s*0(?![\w.])"), lambda m: f"!{m.group(1)}"),
             (re.compile(rf"(?<=if \()({TOKEN})(?=\))"), lambda m: f"{m.group(1)} != 0"),
             (re.compile(rf"!({TOKEN})"), lambda m: f"{m.group(1)} == 0")]
    rx, fn = rng.choice(forms)
    return _regex_line(lines, rng, rx, fn)


def mut_incr(lines, rng, ctx):
    idx = [i for i, l in enumerate(lines) if INCR.match(l)]
    if not idx:
        return None
    i = rng.choice(idx)
    ind, v, op = INCR.match(lines[i]).groups()
    plus = "+" in op
    forms = [f"{v}{'++' if plus else '--'}", f"{'++' if plus else '--'}{v}", f"{v} {'+=' if plus else '-='} 1",
             f"{v} = {v} {'+' if plus else '-'} 1"]
    lines[i] = f"{ind}{rng.choice(forms)};"
    return lines


def mut_type(lines, rng, ctx):
    rx = re.compile(r"^(\s{4,})(u8|u16|u32|s32|int|bool)(\s+\w+\s*(?:=|;))")
    idx = [i for i, l in enumerate(lines) if rx.match(l)]
    if not idx:
        return None
    i = rng.choice(idx)
    m = rx.match(lines[i])
    new = rng.choice([t for t in SCALARS if t != m.group(2)])
    lines[i] = m.group(1) + new + lines[i][m.end(2):]
    return lines


MUTATIONS = [mut_swap, mut_move, mut_hoist, mut_unhoist, mut_split_decl, mut_merge_decl, mut_cmp_flip,
             mut_commute, mut_zero_cmp, mut_incr, mut_type]


def mutate(region, rng, ctx):
    lines = region.split("\n")
    for _ in range(rng.choice([1, 1, 2, 3])):
        for _try in range(10):
            out = rng.choice(MUTATIONS)(list(lines), rng, ctx)
            if out is not None:
                lines = out
                break
    return "\n".join(lines)


def cost(res):
    """Aligned diff size (a replaced instruction counts twice) plus a quarter of the positional score.
    The positional term keeps a variant that changed behavior (and so shifted the code) from looking
    better than it is; the raw score is the tiebreak."""
    n = sum(1 for l in res.aligned if l[:1] in "+-" and not l.startswith(("+++", "---")))
    return n + res.score / 4, res.score


def evaluate(cfg, fn, head, region, tail, tmp):
    path = os.path.join(tmp, "p.cpp")
    with open(path, "w", newline="\n") as f:
        f.write(head + region + tail)
    try:
        res = compare(cfg, path, fn["symbol"], int(fn["offset"], 16), int(fn["size"], 16),
                      fn.get("flags") or None, fn.get("build"))
    except Exception:
        return None
    return cost(res)


def split_source(text, span):
    lines = text.split("\n")
    a, b = span
    return "\n".join(lines[:a]) + "\n", "\n".join(lines[a:b]), "\n" + "\n".join(lines[b:])


def find_region(lines, spec):
    if spec:
        a, b = spec.split("-")
        return int(a) - 1, int(b)
    try:
        a = next(i for i, l in enumerate(lines) if "PERMUTE-BEGIN" in l)
        b = next(i for i, l in enumerate(lines) if "PERMUTE-END" in l)
        return a + 1, b
    except StopIteration:
        raise SystemExit("no region: pass --lines A-B or add // PERMUTE-BEGIN / // PERMUTE-END to the source")


def worker(args):
    cfg, fn, text, span, seconds, seed, outdir = args
    rng = random.Random(seed)
    head, region, tail = split_source(text, span)
    ctx = {"types": type_table(text), "n": seed * 1000}
    stop = os.path.join(outdir, "MATCH")
    with tempfile.TemporaryDirectory() as tmp:
        cur = evaluate(cfg, fn, head, region, tail, tmp)
        best_cost, best, evals, cur_region = cur, region, 0, region
        end = time.time() + seconds
        while time.time() < end and not os.path.exists(stop):
            cand = mutate(cur_region, rng, ctx)
            if cand == cur_region:
                continue
            c = evaluate(cfg, fn, head, cand, tail, tmp)
            evals += 1
            if c is None:
                continue
            if c <= cur:
                cur_region, cur = cand, c
                if c < best_cost:
                    best_cost, best = c, cand
                    with open(os.path.join(outdir, f"best_{c[0]:06.2f}_{c[1]:03d}_{seed}.cpp"), "w", newline="\n") as f:
                        f.write(head + cand + tail)
                    if c[1] == 0:
                        open(stop, "w").close()
                        break
            elif rng.random() < 0.002:               # occasional restart from the best
                cur_region, cur = best, best_cost
    return best_cost, best, evals, head, tail


def run(cfg, name, lines_spec, seconds, jobs):
    with open(cfg.functions_file, "rb") as f:
        fns = tomllib.load(f).get("function", [])
    fn = next((x for x in fns if x["name"] == name), None)
    if not fn:
        raise SystemExit(f"{name!r} is not in functions.toml")
    with open(os.path.join(cfg.root, fn["src"])) as f:
        text = f.read()
    span = find_region(text.split("\n"), lines_spec)
    outdir = os.path.join(cfg.root, "build", "permute", re.sub(r"\W+", "_", name))
    os.makedirs(outdir, exist_ok=True)
    for old in glob.glob(os.path.join(outdir, "*")):
        os.unlink(old)
    with tempfile.TemporaryDirectory() as tmp:
        base = evaluate(cfg, fn, *split_source(text, span), tmp)
    if base is None:
        raise SystemExit("the unmodified source does not compile/score")
    print(f"start: cost {base[0]:.2f}, score {base[1]}; {jobs} jobs x {seconds}s", flush=True)
    with mp.Pool(jobs) as pool:
        results = pool.map(worker, [(cfg, fn, text, span, seconds, s + 1, outdir) for s in range(jobs)])
    results.sort(key=lambda r: r[0])
    c, region, _, head, tail = results[0]
    out = os.path.join(outdir, "best.cpp")
    with open(out, "w", newline="\n") as f:
        f.write(head + region + tail)
    print(f"evaluated {sum(r[2] for r in results)} variants; best: cost {c[0]:.2f}, score {c[1]} -> {out}")
    return 0 if c[1] == 0 else 1
