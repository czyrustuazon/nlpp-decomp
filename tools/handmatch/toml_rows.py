"""toml_rows.py: edit or append functions.toml / externs.toml rows without disturbing anything else.

Both files have mixed CRLF/LF line endings (the agents' tools write different ones), so a normal
read-modify-write shows the whole file as changed. These helpers keep every untouched line byte-identical
and give new lines the ending of their neighbour.

  python tools/handmatch/toml_rows.py set OFFSET key=value [key=value ...]
      Change keys of the [[function]] with that offset (score, size, flags, clean, ...); a missing key is
      inserted before `score`. Values are written verbatim (quote strings yourself: size='"33c"').
  python tools/handmatch/toml_rows.py add NAME OFFSET SIZE SRC SYMBOL SCORE [plain|exc] [COMMENT]
      Append a [[function]] entry (refuses an offset that is already listed).
  python tools/handmatch/toml_rows.py extern SYMBOL VALUE [COMMENT]
      Append an externs.toml entry (refuses a symbol that is already listed).

Re-read the files before every edit: the other agent appends to them too."""
import os
import sys

import hm

EXC_FLAGS = 'flags = ["' + '", "'.join(hm.EXC) + '"]'


def _read(path):
    with open(path, "rb") as f:
        raw = f.read().decode("utf-8")
    lines = raw.splitlines(keepends=True)
    body = [l.rstrip("\r\n") for l in lines]
    ends = [l[len(b):] for l, b in zip(lines, body)]
    return body, ends


def _write(path, body, ends):
    with open(path, "wb") as f:
        f.write("".join(b + e for b, e in zip(body, ends)).encode("utf-8"))


def _append(path, new_lines):
    body, ends = _read(path)
    nl = ends[-1] if ends and ends[-1] else "\n"
    if ends and not ends[-1]:
        ends[-1] = nl
    body += new_lines
    ends += [nl] * len(new_lines)
    _write(path, body, ends)


def set_keys(offset, pairs):
    path = os.path.join(hm.ROOT, "functions.toml")
    body, ends = _read(path)
    try:
        i = body.index(f'offset = "{offset}"')
    except ValueError:
        raise SystemExit(f"offset {offset} not found")
    j = i
    while j + 1 < len(body) and body[j + 1] and not body[j + 1].startswith("[["):
        j += 1
    for key, value in pairs:
        line = f"{key} = {value}"
        for k in range(i, j + 1):
            if body[k].startswith(key + " = "):
                body[k] = line
                break
        else:
            at = next((k for k in range(i, j + 1) if body[k].startswith("score = ")), j + 1)
            body.insert(at, line)
            ends.insert(at, ends[at - 1])
            j += 1
    _write(path, body, ends)


def add_function(name, offset, size, src, symbol, score, mode="plain", comment=""):
    path = os.path.join(hm.ROOT, "functions.toml")
    body, _ = _read(path)
    if f'offset = "{offset}"' in body:
        raise SystemExit(f"offset {offset} is already in functions.toml")
    lines = ["", "[[function]]", f'name = "{name}"', f'offset = "{offset}"', f'size = "{size}"', f'src = "{src}"']
    if mode == "exc":
        lines.append(EXC_FLAGS)
    lines += [f'symbol = "{symbol}"', f"score = {score}" + (f"   # {comment}" if comment else "")]
    _append(path, lines)


def add_extern(symbol, value, comment=""):
    path = os.path.join(hm.ROOT, "externs.toml")
    body, _ = _read(path)
    if any(l.startswith(symbol + " = ") for l in body):
        raise SystemExit(f"{symbol} is already in externs.toml")
    _append(path, ([f"# {comment}"] if comment else []) + [f"{symbol} = {value}"])


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    cmd, args = sys.argv[1], sys.argv[2:]
    if cmd == "set":
        set_keys(args[0], [tuple(a.split("=", 1)) for a in args[1:]])
    elif cmd == "add":
        add_function(*args)
    elif cmd == "extern":
        add_extern(*args)
    else:
        raise SystemExit(__doc__)


if __name__ == "__main__":
    main()
