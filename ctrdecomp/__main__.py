"""ctrdecomp: small, game-agnostic helpers for matching decompilation of 3DS ARMCC binaries.

  python -m ctrdecomp extract <image.3ds|.cxi> <outdir>
  python -m ctrdecomp fetch-armcc [--zip armcc.zip] [--force]
  python -m ctrdecomp diff <src> <symbol> <off> <size> [--build B] [--align] [-v] [-- armcc flags]
  python -m ctrdecomp sweep <src> <symbol> <off> <size> [--opts "-O3 -Otime" ...]
  python -m ctrdecomp asm <name> <off> <code_size> <pool_words> [--thumb] [-o out.s]
  python -m ctrdecomp check [name ...]
  python -m ctrdecomp relink [-o build/code.bin]
  python -m ctrdecomp objdiff [--out build/objdiff]
  python -m ctrdecomp permute <name> [--lines A-B] [--seconds N] [--jobs N]
  python -m ctrdecomp ghidra-decomp <out.c> <off> [...]
  python -m ctrdecomp ghidra-export <out.csv> [--own]
  python -m ctrdecomp ghidra-import <out.csv> [--log file]
  python -m ctrdecomp ghidra-seed <out.csv> [--log file]
  python -m ctrdecomp pipeline-symbols <functions.csv> <symbols/code.bin.csv>
  python -m ctrdecomp rank [symbols.csv] [--top N] [--ready-below ADDR]

Offsets and sizes are hex file offsets into the configured code image.
Game-specific settings live in ctrdecomp.toml (see ctrdecomp/config.py).
"""
import argparse
import json
import os
import sys

from . import config as config_mod

DEFAULT_OPTS = ["-O3 -Otime", "-O3 -Ospace", "-O2 -Otime", "-O2 -Ospace", "-O1"]


def hexint(s):
    return int(s, 16)


def _base_flags(cfg):
    """Configured flags minus -O / --arm / --thumb, for sweeping those separately."""
    return [f for f in cfg.flags if not f.startswith("-O")]


def cmd_extract(cfg, a):
    from .extract import extract
    info = extract(a.image, a.outdir, list_romfs=True)
    names = info.pop("romfs_files", [])
    exts = {}
    for n in names:
        e = n.rsplit(".", 1)[-1].lower() if "." in n else ""
        exts[e] = exts.get(e, 0) + 1
    info["romfs_file_count"] = len(names)
    info["romfs_extensions"] = dict(sorted(exts.items(), key=lambda x: -x[1]))
    info["cro_modules"] = [n for n in names if n.lower().endswith((".cro", ".crs", ".crr"))]
    print(json.dumps(info, indent=2))


def cmd_fetch(cfg, a):
    from .armcc import fetch
    fetch(cfg.armcc_root, a.zip, a.force)


def _print_result(r, align, verbose=False):
    if align:
        for line in r.aligned:
            print(line)
    else:
        for addr, t, m, same in r.rows:
            if verbose or not same:
                print(f"{addr:08x}  {'  ' if same else '!!'} T {t:40s} M {m}")
    for o, name, dest in r.relocs:
        print(f"reloc +0x{o:03X} {name} -> {dest}")
    print(f"score {r.score}  target {r.target_len} ins  mine {r.mine_len} ins")


def cmd_diff(cfg, a):
    from .compare import compare
    flags = a.flags or None
    r = compare(cfg, a.src, a.symbol, a.off, a.size, flags, a.build)
    _print_result(r, a.align, a.verbose)
    return 1 if r.score else 0


def cmd_sweep(cfg, a):
    from .compare import compare
    base = _base_flags(cfg)
    rows = []
    for b in (a.builds or cfg.builds()):
        for o in (a.opts or DEFAULT_OPTS):
            try:
                r = compare(cfg, a.src, a.symbol, a.off, a.size, base + o.split(), b)
                rows.append((r.score, b, o))
            except RuntimeError as e:
                rows.append((10**6, b, f"{o} (error: {str(e).splitlines()[0][:60]})"))
    for s, b, o in sorted(rows):
        print(f"{s:6d}  {b:12s} {o}")
    return 0


def cmd_asm(cfg, a):
    from .asm import listing
    text = listing(cfg.code(), a.name, a.off, a.code_size, a.pool_words, a.thumb)
    if a.o:
        with open(a.o, "w") as f:
            f.write(text)
    else:
        sys.stdout.write(text)


def cmd_check(cfg, a):
    """Re-verify every function listed in the functions file against its recorded status."""
    import tomllib
    from .compare import compare
    with open(cfg.functions_file, "rb") as f:
        fns = tomllib.load(f).get("function", [])
    bad = 0
    cache = {}                                   # one compile per source file, not per function
    for fn in fns:
        if a.names and fn["name"] not in a.names:
            continue
        r = compare(cfg, os.path.join(cfg.root, fn["src"]), fn["symbol"], int(fn["offset"], 16),
                    int(fn["size"], 16), fn.get("flags") or None, fn.get("build"), cache)
        want = int(fn.get("score", 0))
        ok = r.score == want
        bad += not ok
        print(f"{'ok  ' if ok else 'FAIL'} {fn['name']:28s} {fn['offset']:>10s}  score {r.score} (expected {want})")
    for obj in cache.values():
        try: os.unlink(obj)
        except OSError: pass
    return 1 if bad else 0


def cmd_relink(cfg, a):
    from .relink import relink
    r = relink(cfg, a.o)
    print(json.dumps(r, indent=2))
    return 0 if r["identical"] else 1


def cmd_objdiff(cfg, a):
    from .objdiff import export
    path, units = export(cfg, os.path.join(cfg.root, a.out))
    print(f"wrote {path} ({len(units)} units)")


def cmd_permute(cfg, a):
    from .permute import run
    return run(cfg, a.name, a.lines, a.seconds, a.jobs)


def cmd_ghidra_decomp(cfg, a):
    from .ghidra import decompile
    print(decompile(cfg, a.out, a.offsets, a.own))


def cmd_ghidra_export(cfg, a):
    from .ghidra import export_functions
    export_functions(cfg, a.out, a.own)
    print(f"wrote {a.out}")


def cmd_ghidra_import(cfg, a):
    from .ghidra import import_and_analyze
    import_and_analyze(cfg, a.out, a.log)
    print(f"wrote {a.out} (log {a.log})")


def cmd_ghidra_seed(cfg, a):
    from .ghidra import seed_and_export
    seed_and_export(cfg, a.out, a.log)
    print(f"wrote {a.out} (log {a.log})")


def cmd_pipeline_symbols(cfg, a):
    from .symbols import convert
    print(json.dumps(convert(cfg, a.inp, a.out), indent=2))


def cmd_rank(cfg, a):
    from .callgraph import cmd_rank as rank
    return rank(cfg, os.path.join(cfg.root, a.symbols), a.top, ready_below=a.ready_below)


def main(argv=None):
    ap = argparse.ArgumentParser(prog="ctrdecomp", description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--config", help="path to ctrdecomp.toml")
    sub = ap.add_subparsers(dest="cmd", required=True)

    p = sub.add_parser("extract"); p.add_argument("image"); p.add_argument("outdir"); p.set_defaults(fn=cmd_extract, needs_cfg=False)
    p = sub.add_parser("fetch-armcc"); p.add_argument("--zip"); p.add_argument("--force", action="store_true"); p.set_defaults(fn=cmd_fetch)

    p = sub.add_parser("diff")
    for n in ("src", "symbol"): p.add_argument(n)
    p.add_argument("off", type=hexint); p.add_argument("size", type=hexint)
    p.add_argument("--build"); p.add_argument("--align", action="store_true"); p.add_argument("-v", "--verbose", action="store_true")
    p.set_defaults(fn=cmd_diff)

    p = sub.add_parser("sweep")
    for n in ("src", "symbol"): p.add_argument(n)
    p.add_argument("off", type=hexint); p.add_argument("size", type=hexint)
    p.add_argument("--builds", nargs="*"); p.add_argument("--opts", nargs="*")
    p.set_defaults(fn=cmd_sweep)

    p = sub.add_parser("asm")
    p.add_argument("name"); p.add_argument("off", type=hexint); p.add_argument("code_size", type=hexint)
    p.add_argument("pool_words", type=int); p.add_argument("--thumb", action="store_true"); p.add_argument("-o")
    p.set_defaults(fn=cmd_asm)

    p = sub.add_parser("check"); p.add_argument("names", nargs="*"); p.set_defaults(fn=cmd_check)
    p = sub.add_parser("relink"); p.add_argument("-o"); p.set_defaults(fn=cmd_relink)
    p = sub.add_parser("objdiff"); p.add_argument("--out", default="build/objdiff"); p.set_defaults(fn=cmd_objdiff)
    p = sub.add_parser("permute"); p.add_argument("name"); p.add_argument("--lines"); p.add_argument("--seconds", type=int, default=300)
    p.add_argument("--jobs", type=int, default=max(1, (os.cpu_count() or 2) - 2)); p.set_defaults(fn=cmd_permute)
    p = sub.add_parser("ghidra-decomp"); p.add_argument("out"); p.add_argument("offsets", nargs="+", type=hexint)
    p.add_argument("--own", action="store_true", help="use this project's analysis, not the reference project"); p.set_defaults(fn=cmd_ghidra_decomp)
    p = sub.add_parser("ghidra-export"); p.add_argument("out"); p.add_argument("--own", action="store_true"); p.set_defaults(fn=cmd_ghidra_export)
    p = sub.add_parser("ghidra-seed"); p.add_argument("out"); p.add_argument("--log", default="build/ghidra-seed.log"); p.set_defaults(fn=cmd_ghidra_seed)
    p = sub.add_parser("pipeline-symbols"); p.add_argument("inp"); p.add_argument("out"); p.set_defaults(fn=cmd_pipeline_symbols)
    p = sub.add_parser("rank"); p.add_argument("symbols", nargs="?", default="symbols/code.bin.csv"); p.add_argument("--top", type=int, default=25); p.add_argument("--ready-below", type=hexint); p.set_defaults(fn=cmd_rank)
    p = sub.add_parser("ghidra-import"); p.add_argument("out"); p.add_argument("--log", default="build/ghidra-import.log"); p.set_defaults(fn=cmd_ghidra_import)

    argv = list(sys.argv[1:] if argv is None else argv)
    extra = []
    if "--" in argv:  # everything after -- is passed to armcc (diff only)
        i = argv.index("--")
        argv, extra = argv[:i], argv[i + 1:]
    a = ap.parse_args(argv)
    a.flags = extra
    cfg = None if getattr(a, "needs_cfg", True) is False else config_mod.load(a.config)
    return a.fn(cfg, a) or 0


if __name__ == "__main__":
    sys.exit(main())
