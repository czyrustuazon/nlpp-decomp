"""tidy.py FILE [FILE ...]: readability pass over generated sources (src/gen, lib/*/..._o3.cpp from move_lib).

Per function: fold the lifter's flag pairs into their use (`fa = X; fb = Y; if (fa < fb)` -> `if (X < Y)`,
`fx = X & Y; if (fx == 0)` -> `if ((X & Y) == 0)`), drop flag pairs nothing reads, and drop unused locals from the
declarations. A rewrite is kept only when the function still compiles to the retail bytes (score 0); otherwise
the function falls back to dropping unused locals only, and if even that changes it, to its original text.
Byte-identical output means the source is equivalent to retail, so the folds need no data-flow proof.
Run `python -m ctrdecomp relink` afterwards, as after any mass change."""
import os, re, sys, tomllib
sys.path.insert(0, '.')
from ctrdecomp import config as c
from ctrdecomp.compare import compare

ID = r'[A-Za-z_]\w*'


def blocks(text):
    """-> header, [(comment_line, function_text)]"""
    parts = re.split(r'^(// FUN_[0-9a-f]{8}\n)', text, flags=re.M)
    return parts[0], [(parts[k], parts[k + 1]) for k in range(1, len(parts), 2)]


def drop_unused(fn):
    lines = fn.split('\n')
    h = next((k for k, l in enumerate(lines) if l.endswith('{') and not l.startswith(' ')), None)
    if h is None: return fn   # one-line template function
    decl = set()   # the declaration lines right after the signature (not inline `u64 t64 = ...` statements)
    for k in range(h + 1, len(lines)):
        if not re.fullmatch(r'    (u32|float|u64) [^=(]*(= a\d+[^(]*)*;', lines[k]) and not re.fullmatch(r'    (u32|float|u64) [\w, =\[\]]*;', lines[k]): break
        decl.add(k)
    body = '\n'.join(l for k, l in enumerate(lines) if k not in decl)
    out = []
    for k, l in enumerate(lines):
        m = re.match(r'(    (?:u32|float|u64) )(.*);$', l)
        if k not in decl or not m:
            out.append(l); continue
        keep = [v for v in m.group(2).split(', ') if re.search(r'\b%s\b' % re.escape(re.match(ID, v).group(0)), body)]
        if keep: out.append(m.group(1) + ', '.join(keep) + ';')
    return '\n'.join(out)


def paren(x):
    return x if re.fullmatch(r'\w+', x) else f'({x})'


def fold(fn, bold=False):
    """fold flag pairs into the next statement that reads them; drop pairs nothing reads.
    bold: look past labels and jumps too (the lifter writes each pair right before its use in address order;
    the compile check rejects the rare case where another path reads it)"""
    L = fn.split('\n')
    i = 0
    while i < len(L):
        m = re.fullmatch(r'    fa = (.+); fb = (.+);', L[i]) or re.fullmatch(r'    (fx) = (.+);', L[i])
        if not m:
            i += 1; continue
        pair = m.group(1) != 'fx'
        if pair:
            subs = {'fa': m.group(1), 'fb': m.group(2)}
        else:
            subs = {'fx': m.group(2)}
        used = set(re.findall(r'\b(r\d+(?:_\d+)?|a\d+|stk|f\d+(?:_\d+)?)\b', ' '.join(subs.values())))
        j = i + 1; reader = None; nofold = False
        while j < len(L):
            t = L[j]
            names = set(subs)
            if re.search(r'\b(%s)\b' % '|'.join(names), t):
                if re.fullmatch(r'    fa = .+; fb = .+;', t) and pair or re.fullmatch(r'    fx = .+;', t) and not pair:
                    reader = 'dead'
                else:
                    reader = j
                break
            if not bold and (re.match(r'\s*L_\w+:;', t) or 'goto' in t or 'switch' in t or 'return' in t or '{RET' in t or 'TAIL' in t):
                break   # control flow: leave the pair
            w = re.match(r'\s*(?:if \(.*\) )?\{?\s*(\w+) = ', t)
            if w and w.group(1) in used:
                nofold = True   # an operand changes before the read: the pair can still be dead, but not folded
            j += 1
        else:
            reader = 'dead'
        if reader == 'dead':
            del L[i]; continue
        if reader is None or nofold:
            i += 1; continue
        t = L[reader]
        # fold only into a plain `if (cond) ...` that reads the pair once each, then drop the pair
        mm = re.match(r'(\s*if \()(.*?)(\) .*)$', t)
        if not mm or any(len(re.findall(r'\b%s\b' % k, mm.group(2))) != 1 for k in subs) or any(re.search(r'\b%s\b' % k, mm.group(3)) for k in subs):
            i += 1; continue
        # the pair must not be read again after this use (next write or end without a read)
        later = None
        for t2 in L[reader + 1:]:
            if any(re.search(r'\b%s\b' % k, t2) for k in subs):
                later = t2; break
            if not bold and re.match(r'\s*L_\w+:;', t2):
                later = t2; break
        if later is not None and not (re.fullmatch(r'    fa = .+; fb = .+;', later) if pair else re.fullmatch(r'    fx = .+;', later)):
            i += 1; continue
        cond = mm.group(2)
        for k, v in subs.items():
            cond = re.sub(r'\b%s\b' % k, paren(v).replace('\\', '\\\\'), cond)
        L[reader] = mm.group(1) + cond + mm.group(3)
        del L[i]
    return '\n'.join(L)


def tidy_file(cfg, path, entries):
    text = open(path, encoding='utf-8').read()
    head, bl = blocks(text)
    if not bl: return 0, 0, [0] * 4
    orig = [f for _, f in bl]
    stages = [[drop_unused(fold(f, True)) for f in orig], [drop_unused(fold(f)) for f in orig], [drop_unused(f) for f in orig], orig]
    level = [0] * len(bl)
    while True:
        cur = [stages[level[k]][k] for k in range(len(bl))]
        open(path, 'w', encoding='utf-8', newline='\n').write(head + ''.join(cm + f for (cm, _), f in zip(bl, cur)))
        cache = {}; bad = []
        try:
            for k, (cm, _) in enumerate(bl):
                if level[k] == 3: continue
                e = entries.get(int(cm[7:15], 16))
                if e is None: level[k] = 3; continue
                try:
                    r = compare(cfg, path, e['symbol'], int(e['offset'], 16), int(e['size'], 16), e.get('flags') or None, cache=cache)
                    ok = r.score == 0
                except Exception:
                    ok = False
                if not ok: bad.append(k)
        finally:
            for o in cache.values():
                try: os.unlink(o)
                except OSError: pass
        if not bad: break
        for k in bad: level[k] = min(3, level[k] + 1)
    changed = sum(cur[k] != orig[k] for k in range(len(bl)))
    return len(bl), changed, [level.count(v) for v in range(4)]


if __name__ == '__main__':
    cfg = c.load()
    fns = tomllib.load(open('functions.toml', 'rb'))['function']
    for path in sys.argv[1:]:
        rel = path.replace('\\', '/')
        entries = {int(f['offset'], 16): f for f in fns if f['src'] == rel and f.get('generated') and int(f.get('score', 0)) == 0}
        n, ch, lv = tidy_file(cfg, path, entries)
        print(f'{rel}: {ch} of {n} functions tidied (bold/fold/decl/none {lv})', flush=True)
