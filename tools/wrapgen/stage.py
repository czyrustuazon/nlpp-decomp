"""stage.py SRC: stage only the functions.toml/externs.toml blocks that belong to SRC (HEAD + my block)."""
import subprocess,re,sys
src=sys.argv[1]
def sh(*a,inp=None): return subprocess.run(a,capture_output=True,input=inp,check=True).stdout
# functions.toml
head=sh('git','show','HEAD:functions.toml'); cur=open('functions.toml','rb').read()
blocks=re.split(rb'(?=\r?\n\[\[function\]\])',cur)
mine=[b for b in blocks if b('src = "%s"'%src if False else ('src = "%s"'%src).encode()) if False] if False else [b for b in blocks if ('src = "%s"'%src).encode() in b]
new=head.rstrip(b'\r\n')+b'\n'+b''.join(m.rstrip(b'\r\n')+b'\n' for m in mine)
sh('git','update-index','--cacheinfo','100644,'+sh('git','hash-object','-w','--stdin',inp=new).decode().strip()+',functions.toml')
# externs.toml: the block introduced by a "# SRC" comment line through the next blank-comment boundary
head=sh('git','show','HEAD:externs.toml'); cur=open('externs.toml','rb').read()
m=re.search(rb'\r?\n# '+re.escape(src.encode())+rb'[^\n]*\n((?:[^#\r\n][^\n]*\n)*)',cur)
if m:
    new=head.rstrip(b'\r\n')+b'\n'+m.group(0).lstrip(b'\r\n')
    sh('git','update-index','--cacheinfo','100644,'+sh('git','hash-object','-w','--stdin',inp=new).decode().strip()+',externs.toml')
print(len(mine),'function blocks staged;','externs block' if m else 'NO externs block')
