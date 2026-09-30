"""Turn an ExportFunctions.java CSV into a 3DS-Decomp-Pipeline symbol CSV.

Pipeline format (symbols/code.bin.csv): Name, Location (absolute VA, hex), Mode ($a/$t/$d),
Size (hex), Segment. The pipeline fills gaps between symbols with $d objects itself and
names split objects after symbols, so names must be unique.

Functions listed in functions.toml take their source symbol name, so a compiled object
and its split counterpart line up.

A function whose Ghidra body has several ranges (code after a mid-function literal pool)
is extended to the end of its body, capped at the next function's start, so the pool and
the continuation stay in the same split object.
"""
import csv
import re
import tomllib

_GENERIC = re.compile(r"^(FUN|caseD|switchD|thunk_FUN|LAB)_")


def load_functions(path):
    with open(path, "rb") as f:
        return tomllib.load(f).get("function", [])


def convert(cfg, in_csv, out_csv):
    rows = sorted(csv.DictReader(open(in_csv, newline="")), key=lambda r: int(r["start"], 16))
    known = {int(fn["offset"], 16): fn["symbol"] for fn in load_functions(cfg.functions_file)}
    text_end = cfg.rodata_offset or None

    out, seen, stats = [], set(), {"functions": 0, "renamed": 0, "from_source": 0, "split_bodies": 0,
                                   "overlaps_dropped": 0, "outside_text": 0, "extended": 0}
    starts = [int(r["start"], 16) for r in rows]
    prev_end = 0
    for k, r in enumerate(rows):
        start, size = int(r["start"], 16), int(r["size"], 16)
        if text_end is not None and start >= text_end:
            stats["outside_text"] += 1
            continue
        if start < prev_end:  # Ghidra overlap; keep the earlier function
            stats["overlaps_dropped"] += 1
            continue
        if int(r.get("ranges", "1")) > 1:
            stats["split_bodies"] += 1
            nxt = next((x for x in starts[k + 1:] if x > start), text_end or 1 << 32)
            end = min(int(r.get("end", "0"), 16), nxt)
            if end > start + size:
                size = end - start
                stats["extended"] += 1
        name = known.get(start)
        if name:
            stats["from_source"] += 1
        else:
            name = r["name"]
            if _GENERIC.match(name) or name in seen:
                name = f"FUN_{start:08x}"
                stats["renamed"] += name != r["name"]
        seen.add(name)
        out.append({"Name": name, "Location": f"{start + cfg.load_base:08X}",
                    "Mode": "$t" if r["mode"] == "THUMB" else "$a",
                    "Size": f"{size:X}", "Segment": ".text"})
        prev_end = start + size
        stats["functions"] += 1

    with open(out_csv, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["Name", "Location", "Mode", "Size", "Segment"])
        w.writeheader()
        w.writerows(out)
    covered = sum(int(o["Size"], 16) for o in out)
    stats["covered_bytes"] = f"0x{covered:X}"
    if text_end:
        stats["text_coverage"] = f"{covered / text_end:.1%}"
    return stats
