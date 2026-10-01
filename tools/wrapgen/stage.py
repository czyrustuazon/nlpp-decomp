"""stage.py SRC [SRC ...]: stage only the functions.toml / externs.toml blocks that belong to the
given source files (HEAD plus those blocks), so a commit does not sweep in another agent's
uncommitted entries. A block in externs.toml belongs to SRC when it starts with a "# SRC" comment."""
import subprocess, re, sys
srcs = sys.argv[1:]
def sh(*a, inp=None): return subprocess.run(a, capture_output=True, input=inp, check=True).stdout
def put(path, data):
    h = sh('git', 'hash-object', '-w', '--stdin', inp=data).decode().strip()
    sh('git', 'update-index', '--cacheinfo', f'100644,{h},{path}')
head = sh('git', 'show', 'HEAD:functions.toml'); cur = open('functions.toml', 'rb').read()
blocks = re.split(rb'(?=\r?\n\[\[function\]\])', cur)
mine = [b for b in blocks if any(('src = "%s"' % s).encode() in b for s in srcs)]
put('functions.toml', head.rstrip(b'\r\n') + b'\n' + b''.join(m.rstrip(b'\r\n') + b'\n' for m in mine))
head = sh('git', 'show', 'HEAD:externs.toml'); cur = open('externs.toml', 'rb').read()
new = head.rstrip(b'\r\n') + b'\n'; found = 0
for s in srcs:
    m = re.search(rb'\r?\n# ' + re.escape(s.encode()) + rb'[^\n]*\n((?:[^#\r\n][^\n]*\n)*)', cur)
    if m: new += m.group(0).lstrip(b'\r\n'); found += 1
put('externs.toml', new)
print(len(mine), 'function blocks;', found, 'externs blocks')
