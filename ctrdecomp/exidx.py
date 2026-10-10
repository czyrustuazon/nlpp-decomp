"""ARM EHABI unwind index (.ARM.exidx): find it, parse it, and repair a function list with it.

ARMCC with --exceptions (and armlink, for objects without unwind data) emits one 8-byte entry per
function: a prel31 offset to the function start, then EXIDX_CANTUNWIND (1), inline unwind data
(bit 31 set) or a prel31 pointer into .ARM.extab. The linker sorts the table by address and merges
adjacent entries with identical data, so every entry is a real function start, but a function
without its own entry may still be a real function (it shares its neighbour's entry).

Repairs applied to a symbol CSV (symbols/code.bin.csv format, see symbols.py):
  split  an entry strictly inside a known function cuts it there (Ghidra ran one function into the
         next, typically after a tail call the linker turned into `mov r0, r0`)
  add    an entry in a gap between known functions becomes a new function that runs to the next
         start (known or entry); ARM when word-aligned with condition AL, else Thumb
  pads   cleanup landing pads are not functions: with --exceptions ARMCC emits a function's cleanups (destructors
         of locals and members on the unwind path) as a separate section `<fn>.clean`, placed right after the
         function. Each pad never pushes, uses the parent's callee-saved registers and ends with a call to
         __cxa_end_cleanup (found as the most common such last call right after an extab function); one listed
         entry may hold several pads and their pool, never a return. Pads are
         removed from the list and written to symbols/cleanup_pads.csv (offset, size, parent; hex file offsets);
         consecutive pads belong to the function before them.
Known starts without an entry are never removed: a stretch built without unwind tables (assembly,
the C runtime, a library built without --exceptions) sits under one cantunwind entry. Boundaries
inside such stretches are fixed by hand in symbols/boundaries.csv (offset, size, note; hex file
offsets): the function at offset gets that size and every known start inside it is dropped.

Seen in New Love Plus+ (technical.md section 8): table at VA 0x860998-0x8881a8, 20,226 entries.
"""
import bisect
import csv
import os
import struct

FIELDS = ["Name", "Location", "Mode", "Size", "Segment"]


def _prel31(code, o):
    w = struct.unpack_from("<I", code, o)[0] & 0x7FFFFFFF
    if w & 0x40000000:
        w -= 0x80000000
    return o + w


def find_table(code, text_end, ro_start):
    """Return (lo, hi) file offsets of the longest run of plausible exidx entries in .rodata/.data."""
    best, n = (0, 0), len(code) - 8
    o = ro_start & ~3
    while o < n:
        start, prev = o, -1
        while o < n:
            w0, w1 = struct.unpack_from("<II", code, o)
            if w0 & 0x80000000:
                break
            fn = _prel31(code, o)
            if not (0 <= fn < text_end) or fn <= prev:
                break
            if w1 != 1 and not w1 & 0x80000000 and not (ro_start <= _prel31(code, o + 4) < len(code)):
                break
            prev, o = fn, o + 8
        if o - start > best[1] - best[0]:
            best = (start, o)
        o = start + 4 if o == start else o
    return best


def parse(code, lo, hi):
    """[(function offset, kind, data)] with kind cant / inline / extab (data = extab file offset)."""
    out = []
    for o in range(lo, hi, 8):
        d = struct.unpack_from("<I", code, o + 4)[0]
        if d == 1:
            out.append((_prel31(code, o), "cant", 1))
        elif d & 0x80000000:
            out.append((_prel31(code, o), "inline", d))
        else:
            out.append((_prel31(code, o), "extab", _prel31(code, o + 4)))
    return out


def table(cfg, code):
    lo, hi = find_table(code, cfg.rodata_offset, cfg.rodata_offset)
    return lo, hi, parse(code, lo, hi)


def _is_arm(code, o):
    return o % 4 == 0 and struct.unpack_from("<I", code, o)[0] >> 28 == 0xE


def repair(cfg, code, rows, entries):
    """Return (new rows, stats). rows are symbol-CSV dicts; Location is a VA."""
    base = cfg.load_base
    fns = sorted(((int(r["Location"], 16) - base, int(r["Size"], 16), r) for r in rows if r["Mode"] in ("$a", "$t")),
                 key=lambda f: f[0])
    starts = [f[0] for f in fns]
    known = set(starts)
    ent = sorted({fn & ~1 for fn, _, _ in entries})
    names = {r["Name"] for r in rows}
    stats = {"entries": len(entries), "on_known_start": 0, "split": 0, "added": 0, "added_thumb": 0,
             "added_bytes": 0, "name_clash": 0}

    def new_row(o, size):
        name = f"FUN_{o:08x}"
        if name in names:
            stats["name_clash"] += 1
            name = f"FUN_{o:08x}_x"
        names.add(name)
        thumb = not _is_arm(code, o)
        return {"Name": name, "Location": f"{o + base:08X}", "Mode": "$t" if thumb else "$a",
                "Size": f"{size:X}", "Segment": ".text"}

    cuts = {}   # known start -> sorted entries strictly inside it
    added = []
    for e in ent:
        if e in known:
            stats["on_known_start"] += 1
            continue
        i = bisect.bisect_right(starts, e) - 1
        if i >= 0 and e < starts[i] + fns[i][1]:
            cuts.setdefault(starts[i], []).append(e)
            continue
        j = bisect.bisect_right(starts, e)
        k = bisect.bisect_right(ent, e)
        end = min(starts[j] if j < len(starts) else cfg.rodata_offset, ent[k] if k < len(ent) else cfg.rodata_offset)
        r = new_row(e, end - e)
        stats["added"] += 1
        stats["added_thumb"] += r["Mode"] == "$t"
        stats["added_bytes"] += end - e
        added.append(r)

    out = []
    for st, sz, r in fns:
        if st not in cuts:
            out.append(r)
            continue
        pts = [st] + cuts[st] + [st + sz]
        out.append(dict(r, Size=f"{pts[1] - st:X}"))
        for a, b in zip(pts[1:], pts[2:]):
            out.append(new_row(a, b - a))
            stats["split"] += 1
    out += [r for r in rows if r["Mode"] not in ("$a", "$t")] + added
    out.sort(key=lambda r: int(r["Location"], 16))
    return out, stats


def overrides(cfg, code, rows, path):
    """Apply symbols/boundaries.csv; return (rows, number of known starts dropped)."""
    base, dropped = cfg.load_base, 0
    with open(path, newline="") as f:
        fixes = [(int(r["offset"], 16), int(r["size"], 16)) for r in csv.DictReader(f)]
    for off, size in fixes:
        keep, found = [], False
        for r in rows:
            o = int(r["Location"], 16) - base
            if o == off:
                found = True
                keep.append(dict(r, Size=f"{size:X}"))
            elif off < o < off + size:
                dropped += 1
            else:
                keep.append(r)
        if not found:
            keep.append({"Name": f"FUN_{off:08x}", "Location": f"{off + base:08X}",
                         "Mode": "$a" if _is_arm(code, off) else "$t", "Size": f"{size:X}", "Segment": ".text"})
        rows = sorted(keep, key=lambda r: int(r["Location"], 16))
    return rows, dropped


def cleanup_pads(cfg, code, rows, entries):
    """-> (rows without pads, [(pad offset, size, parent offset)], __cxa_end_cleanup offset or None)"""
    from collections import Counter
    import capstone
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
    base = cfg.load_base
    kind = {fn: k for fn, k, _ in entries}
    fns = [(int(r["Location"], 16) - base, int(r["Size"], 16), r) for r in rows if r["Mode"] == "$a"]
    fns.sort(key=lambda x: x[0])
    last = {}   # offset -> target of the final bl/blx, for functions that never push
    for o, sz, _ in fns:
        ins = list(md.disasm(code[o:o + sz], o))
        if not ins or any(i.mnemonic in ("push", "stmdb") for i in ins):
            continue
        # one listed entry may hold several pads (branches to a shared tail) and their literal pool, but no return
        if any(i.mnemonic in ("pop", "bx") or (i.mnemonic.startswith("ldm") and "pc" in i.op_str) for i in ins):
            continue
        calls = [i for i in ins if i.mnemonic in ("bl", "blx") and i.op_str.startswith("#")]
        if calls:
            last[o] = int(calls[-1].op_str[1:], 0)
    votes = Counter(last[o] for k, (o, _, _) in enumerate(fns) if o in last and k and kind.get(fns[k - 1][0]) == "extab")
    if not votes:
        return rows, [], None
    end = votes.most_common(1)[0][0]
    pads, parent = [], None
    for o, sz, _ in fns:
        if last.get(o) == end:
            if parent is not None:
                pads.append((o, sz, parent))
        else:
            parent = o
    drop = {o for o, _, _ in pads}
    return [r for r in rows if int(r["Location"], 16) - base not in drop], pads, end


def repair_csv(cfg, path, out_path=None):
    code = cfg.code()
    lo, hi, entries = table(cfg, code)
    with open(path, newline="") as f:
        rows = list(csv.DictReader(f))
    new, stats = repair(cfg, code, rows, entries)
    fix = os.path.join(cfg.root, "symbols", "boundaries.csv")
    if os.path.isfile(fix):
        new, stats["override_dropped"] = overrides(cfg, code, new, fix)
    new, pads, end = cleanup_pads(cfg, code, new, entries)
    stats["cleanup_pads"] = len(pads)
    stats["cxa_end_cleanup"] = f"0x{end:x}" if end is not None else None
    if out_path:
        with open(os.path.join(os.path.dirname(out_path), "cleanup_pads.csv"), "w", newline="") as f:
            w = csv.writer(f, lineterminator="\n")
            w.writerow(["offset", "size", "parent"])
            for o, sz, p in pads:
                w.writerow([f"{o:x}", f"{sz:x}", f"{p:x}"])
    stats = {"table": f"0x{lo + cfg.load_base:X}-0x{hi + cfg.load_base:X}", **stats, "functions_before": len(rows),
             "functions_after": len(new)}
    if out_path:
        with open(out_path, "w", newline="") as f:
            w = csv.DictWriter(f, fieldnames=FIELDS)
            w.writeheader()
            w.writerows(new)
    return stats


def dump(cfg, out_path):
    """Write the parsed table: offset, kind, data (inline word or extab offset), all hex file offsets."""
    code = cfg.code()
    lo, hi, entries = table(cfg, code)
    with open(out_path, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["offset", "kind", "data"])
        for fn, kind, d in entries:
            w.writerow([f"{fn:x}", kind, f"{d:x}"])
    return {"table": f"0x{lo + cfg.load_base:X}-0x{hi + cfg.load_base:X}", "entries": len(entries)}
