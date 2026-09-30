"""Project configuration: ctrdecomp.toml at the project root, overridable by environment.

Everything game-specific lives in the config file, not in the tools. Keys:

[target]    code_bin (path), load_base (int, runtime VA of file offset 0),
            rodata_offset, data_offset (file offsets; `extract` prints the VAs)
[compiler]  armcc_root (dir with <ver>/<build>/bin/armcc.exe), build, flags (list)
[ghidra]    home, project_dir + project_name (reference project, opened read-only),
            own_project_dir (this project's analysis, created by `ghidra-import`)
[functions] file (path to the function list used by `check`)

Machine-specific values (where the game dump and Ghidra live) belong in
ctrdecomp.local.toml beside it, which is git-ignored and overrides it key by key.

Relative paths resolve against the directory holding ctrdecomp.toml.
Environment overrides: CTRDECOMP_CONFIG, CTRDECOMP_CODE_BIN, GHIDRA_HOME.
"""
import os
import tomllib
from dataclasses import dataclass, field


@dataclass
class Config:
    root: str
    code_bin: str
    load_base: int
    armcc_root: str
    build: str
    flags: list = field(default_factory=list)
    ghidra_home: str = ""
    ghidra_project_dir: str = ""
    ghidra_project_name: str = ""
    functions_file: str = ""
    rodata_offset: int = 0
    data_offset: int = 0
    ghidra_own_project_dir: str = ""

    def armcc(self, build=None):
        b = build or self.build
        exe = "armcc.exe" if os.name == "nt" else "armcc"
        return os.path.join(self.armcc_root, *b.split("/"), "bin", exe)

    def builds(self):
        out = []
        for ver in sorted(os.listdir(self.armcc_root)) if os.path.isdir(self.armcc_root) else []:
            vdir = os.path.join(self.armcc_root, ver)
            for b in sorted(os.listdir(vdir)):
                if os.path.isdir(os.path.join(vdir, b, "bin")):
                    out.append(f"{ver}/{b}")
        return out

    def code(self):
        if not self.code_bin or not os.path.isfile(self.code_bin):
            raise SystemExit(f"code_bin not found ({self.code_bin or 'unset'}); set [target] code_bin "
                             "in ctrdecomp.local.toml or CTRDECOMP_CODE_BIN")
        with open(self.code_bin, "rb") as f:
            return f.read()


def find_config(start=None):
    env = os.environ.get("CTRDECOMP_CONFIG")
    if env:
        return os.path.abspath(env)
    d = os.path.abspath(start or os.getcwd())
    while True:
        p = os.path.join(d, "ctrdecomp.toml")
        if os.path.isfile(p):
            return p
        parent = os.path.dirname(d)
        if parent == d:
            raise SystemExit("ctrdecomp.toml not found (set CTRDECOMP_CONFIG)")
        d = parent


def load(path=None):
    path = path or find_config()
    root = os.path.dirname(path)
    with open(path, "rb") as f:
        t = tomllib.load(f)
    local = os.path.join(root, "ctrdecomp.local.toml")
    if os.path.isfile(local):
        with open(local, "rb") as f:
            for section, values in tomllib.load(f).items():
                t.setdefault(section, {}).update(values)

    def rel(p):
        if not p:
            return ""
        p = os.path.expandvars(os.path.expanduser(p))
        return p if os.path.isabs(p) else os.path.normpath(os.path.join(root, p))

    tg, cc, gh, fn = t.get("target", {}), t.get("compiler", {}), t.get("ghidra", {}), t.get("functions", {})
    return Config(
        root=root,
        code_bin=os.environ.get("CTRDECOMP_CODE_BIN") or rel(tg.get("code_bin", "")),
        load_base=int(tg.get("load_base", 0x100000)),
        armcc_root=rel(cc.get("armcc_root", "tools/armcc")),
        build=cc.get("build", "4.1/b1454"),
        flags=list(cc.get("flags", [])),
        ghidra_home=os.environ.get("GHIDRA_HOME") or rel(gh.get("home", "")),
        ghidra_project_dir=rel(gh.get("project_dir", "")),
        ghidra_project_name=gh.get("project_name", ""),
        functions_file=rel(fn.get("file", "functions.toml")),
        rodata_offset=int(tg.get("rodata_offset", 0)),
        data_offset=int(tg.get("data_offset", 0)),
        ghidra_own_project_dir=rel(gh.get("own_project_dir", "ghidra")),
    )
