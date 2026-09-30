"""Run Ghidra headless: bundled scripts against the reference project (read-only), or a full import into this project's own project."""
import os
import subprocess

SCRIPTS = os.path.join(os.path.dirname(os.path.abspath(__file__)), "ghidra_scripts")


def _headless(cfg):
    if not cfg.ghidra_home:
        raise SystemExit("set [ghidra] home in ctrdecomp.toml (or GHIDRA_HOME)")
    return os.path.join(cfg.ghidra_home, "support",
                        "analyzeHeadless.bat" if os.name == "nt" else "analyzeHeadless")


def _project(cfg, own):
    if own:
        return cfg.ghidra_own_project_dir, "code"
    if not cfg.ghidra_project_dir:
        raise SystemExit("set [ghidra] project_dir in ctrdecomp.toml")
    return cfg.ghidra_project_dir, cfg.ghidra_project_name


def run_script(cfg, script, args, readonly=True, own=False):
    pdir, pname = _project(cfg, own)
    cmd = [_headless(cfg), pdir, pname, "-process", "-noanalysis",
           "-scriptPath", SCRIPTS, "-postScript", script, *args]
    if readonly:
        cmd.insert(4, "-readOnly")
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode:
        raise SystemExit(r.stdout[-4000:] + r.stderr[-4000:])
    if "ERROR" in r.stdout and "REPORT: Execute script" not in r.stdout:
        raise SystemExit(r.stdout[-4000:])


def decompile(cfg, out, offsets, own=False):
    run_script(cfg, "DecompAt.java", [os.path.abspath(out), *[f"{o:x}" for o in offsets]], own=own)
    with open(out, encoding="utf-8") as f:
        return f.read()


def export_functions(cfg, out, own=False):
    run_script(cfg, "ExportFunctions.java", [os.path.abspath(out)], own=own)


def import_and_analyze(cfg, out_csv, log):
    """Import code.bin into this project's own Ghidra project (base 0, ARMv6 LE), split the
    segments, run full auto-analysis, and export the function list. Never touches the
    reference project named by [ghidra] project_dir."""
    pdir = cfg.ghidra_own_project_dir
    os.makedirs(pdir, exist_ok=True)
    cmd = [_headless(cfg), pdir, "code", "-import", cfg.code_bin, "-overwrite",
           "-loader", "BinaryLoader", "-loader-baseAddr", "0",
           "-processor", "ARM:LE:32:v6", "-cspec", "default",
           "-scriptPath", SCRIPTS,
           "-preScript", "SetupCtrCode.java", f"{cfg.rodata_offset:x}", f"{cfg.data_offset:x}",
           "-postScript", "ExportFunctions.java", os.path.abspath(out_csv)]
    with open(log, "w") as f:
        r = subprocess.run(cmd, stdout=f, stderr=subprocess.STDOUT)
    if r.returncode:
        raise SystemExit(f"Ghidra import failed; see {log}")


def seed_and_export(cfg, out_csv, log):
    """Add functions reached only through data pointers or found by prologue, then re-export.
    Runs against this project's own Ghidra project, which it modifies."""
    text_end = cfg.rodata_offset
    cmd = [_headless(cfg), cfg.ghidra_own_project_dir, "code", "-process", "-noanalysis",
           "-scriptPath", SCRIPTS,
           "-postScript", "SeedFunctions.java", f"{cfg.load_base:x}", f"{text_end:x}",
           "-postScript", "ExportFunctions.java", os.path.abspath(out_csv)]
    with open(log, "w") as f:
        r = subprocess.run(cmd, stdout=f, stderr=subprocess.STDOUT)
    if r.returncode:
        raise SystemExit(f"Ghidra seeding failed; see {log}")
