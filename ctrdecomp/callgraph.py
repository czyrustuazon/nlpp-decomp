"""Call graph and match-order ranking.

`python -m ctrdecomp rank` reads the symbol list (Name,Location,Mode,Size,Segment, hex VAs),
disassembles every function, and follows direct `bl`/`blx` and tail-call `b` targets.
Indirect calls (vtables, function pointers) are not seen, so fan-in of virtual methods is
undercounted. Functions with a `[[function]]` entry in the functions file count as handled.

It reports: leaf functions by fan-in (matching them helps the most callers), functions whose
callees are all leaves or handled (nothing blocks them but themselves), and direct callers of
already-handled functions with no unhandled non-leaf callees (cheap next steps).
"""
import bisect
import csv
import tomllib
from collections import Counter

import capstone


def load_symbols(cfg, path):
    funcs = []
    with open(path, newline="") as f:
        for r in csv.DictReader(f):
            if r["Mode"] not in ("$a", "$t"):
                continue
            funcs.append((int(r["Location"], 16) - cfg.load_base, int(r["Size"], 16),
                          r["Mode"] == "$t", r["Name"]))
    funcs.sort()
    return funcs


def build(cfg, funcs):
    """Return {start: set(callee starts)} (file offsets), calls to self dropped."""
    code = cfg.code()
    starts = [f[0] for f in funcs]
    arm = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
    thumb = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB)
    graph = {}
    for st, sz, is_thumb, _ in funcs:
        md = thumb if is_thumb else arm
        out = set()
        for ins in md.disasm(code[st:st + sz], st):
            m = ins.mnemonic
            if not (m.startswith("b") and ins.op_str.startswith("#")):
                continue
            try:
                t = int(ins.op_str[1:], 0)
            except ValueError:
                continue
            is_call = m.startswith("bl")
            if not is_call and (st <= t < st + sz or m not in ("b", "b.w")):
                continue                                   # conditional/internal branch
            i = bisect.bisect_right(starts, t) - 1
            if i >= 0 and funcs[i][0] <= t < funcs[i][0] + funcs[i][1] and funcs[i][0] != st:
                out.add(funcs[i][0])
        graph[st] = out
    return graph


def cmd_rank(cfg, symbols, top=25, min_size=0x18, max_size=0x100):
    with open(cfg.functions_file, "rb") as f:
        handled = {int(fn["offset"], 16) for fn in tomllib.load(f).get("function", [])}
    funcs = load_symbols(cfg, symbols)
    info = {f[0]: f for f in funcs}
    graph = build(cfg, funcs)
    callers = {}
    for a, s in graph.items():
        for b in s:
            callers.setdefault(b, set()).add(a)
    todo = [st for st in graph if st not in handled]
    leaves = [st for st in todo if not graph[st]]
    ok = set(leaves) | handled          # callees that no longer block anything
    ready = [st for st in todo if graph[st] and graph[st] <= ok]
    print(f"{len(funcs)} functions, {sum(map(len, graph.values()))} direct call edges, "
          f"{len(handled)} handled")
    print(f"{len(todo)} unhandled: {len(leaves)} leaves, {len(ready)} more whose callees are "
          "all leaves/handled")
    print("leaf sizes (x64 bytes):", dict(sorted(Counter(min(info[s][1] // 64, 8) for s in leaves).items())))
    print(f"\nLeaves of size {min_size:#x}..{max_size:#x} by fan-in:")
    for st in sorted((s for s in leaves if min_size <= info[s][1] <= max_size),
                     key=lambda s: -len(callers.get(s, ())))[:top]:
        print(f"  {st:06x} size={info[st][1]:#x} {'thumb' if info[st][2] else 'arm  '} callers={len(callers.get(st, ()))}")
    print("\nDirect callers of handled functions with no unhandled non-leaf callee:")
    cand = {}
    for h in handled:
        for c in callers.get(h, ()):
            if c not in handled and not (graph[c] - ok):
                cand.setdefault(c, 0)
                cand[c] += 1
    for st, n in sorted(cand.items(), key=lambda x: (info[x[0]][1], x[0]))[:top]:
        print(f"  {st:06x} size={info[st][1]:#x} {'thumb' if info[st][2] else 'arm  '} handled-callees={n}")
    return 0
