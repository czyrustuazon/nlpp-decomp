"""Vendor decomp.me's ARMCC builds into the configured armcc_root (git-ignored).

Downloads the pinned armcc.zip that decomp.me's compilers repo references
(values.yaml, anchor &3ds_armcc), checks its SHA-256, and unpacks it to
<armcc_root>/<ver>/<build>/bin/armcc.exe. The builds are Windows executables;
on Linux/macOS decomp.me runs them through wibo.
"""
import hashlib
import io
import os
import shutil
import urllib.request
import zipfile

URL = "https://github.com/decompme/compilers/releases/download/compilers/armcc.zip?2026-03-04"
SHA256 = "bda0cea5b13a9c3f08322fa76f9f9dcda59bda290f57f1a06e05cd80044fafdb"


def fetch(dest, zip_path=None, force=False):
    if os.path.isdir(dest) and os.listdir(dest):
        if not force:
            raise SystemExit(f"{dest} already exists; pass --force to replace it")
        shutil.rmtree(dest)

    if zip_path:
        with open(zip_path, "rb") as f:
            data = f.read()
    else:
        print(f"downloading {URL}")
        with urllib.request.urlopen(URL) as r:
            data = r.read()

    got = hashlib.sha256(data).hexdigest()
    if got != SHA256:
        raise SystemExit(f"sha256 mismatch: got {got}, want {SHA256}")

    zipfile.ZipFile(io.BytesIO(data)).extractall(dest)
    builds = sorted(os.path.relpath(os.path.dirname(os.path.dirname(os.path.join(d, f))), dest)
                    for d, _, fs in os.walk(dest) for f in fs if f.lower() == "armcc.exe")
    print(f"unpacked {len(builds)} builds into {dest}: {', '.join(b.replace(os.sep, '/') for b in builds)}")
