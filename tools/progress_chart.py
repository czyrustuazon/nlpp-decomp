"""progress_chart.py: measure matching progress and draw docs/progress.svg for the README.

Denominator: the ARM/Thumb functions of `.text` in symbols/code.bin.csv (which covers 92.3% of `.text`).
A function counts when functions.toml has an entry for it at score 0. Categories:
  library, assembly   library-tagged, src is .s (CTR SDK, svc stubs, C runtime)
  library, C          library-tagged, src is C/C++
  generated C         src/gen/*.cpp (lifter output: byte-exact, placeholder names and types)
  hand-written C      everything else at score 0 (game code written by hand)
Prints the table rows for README.md. Run from the repo root: python tools/progress_chart.py
"""
import csv, tomllib, os
from collections import defaultdict

funcs = {}
for r in csv.DictReader(open('symbols/code.bin.csv')):
    if r['Segment'] == '.text' and r['Mode'] in ('$a', '$t'):
        funcs[int(r['Location'], 16) - 0x100000] = int(r['Size'], 16)
N, B = len(funcs), sum(funcs.values())
CATS = ['library, assembly', 'library, C', 'generated C', 'hand-written C']
cnt = defaultdict(lambda: [0, 0]); seen = set(); near = [0, 0]
for f in tomllib.load(open('functions.toml', 'rb'))['function']:
    o = int(f['offset'], 16)
    if o in seen or o not in funcs: continue
    seen.add(o); sz = funcs[o]
    if f.get('score', 0) != 0: near[0] += 1; near[1] += sz; continue
    if f.get('library'): k = CATS[0] if f['src'].endswith('.s') else CATS[1]
    elif f['src'].startswith('src/gen/'): k = CATS[2]
    else: k = CATS[3]
    cnt[k][0] += 1; cnt[k][1] += sz
mn = sum(cnt[k][0] for k in CATS); mb = sum(cnt[k][1] for k in CATS)

for k in CATS: print(f'| {k} | {cnt[k][0]:,} | {100 * cnt[k][0] / N:.1f}% | {cnt[k][1] / 1024:,.0f} KiB | {100 * cnt[k][1] / B:.1f}% |')
print(f'| **Total byte-exact** | **{mn:,}** | **{100 * mn / N:.1f}%** | **{mb / 1024:,.0f} KiB** | **{100 * mb / B:.1f}%** |')
print(f'near-misses: {near[0]} functions, {near[1] / 1024:.1f} KiB; denominator {N:,} functions, {B / 1024:,.0f} KiB')

# ---- SVG: two 100% stacked bars (code size, function count), same categories; legend carries the numbers ----
W, X0, BW, BH = 780, 96, 600, 26
ROWS = [('Code size', 1, B), ('Functions', 0, N)]
COLORS = ['--s1', '--s2', '--s3', '--s4']
def bar(y, idx, total):
    parts = []; x = X0
    segs = [(cnt[k][idx] / total * BW, COLORS[i]) for i, k in enumerate(CATS)]
    segs.append((BW - sum(w for w, _ in segs), '--rest'))
    segs = [(w, c) for w, c in segs if w > 0]
    for j, (w, c) in enumerate(segs):
        gap = 2 if j < len(segs) - 1 else 0                      # 2px surface gap between fills
        ww = max(w - gap, 1)
        first, last = j == 0, j == len(segs) - 1
        r = 4
        if first and last: d = f'<rect x="{x:.1f}" y="{y}" width="{ww:.1f}" height="{BH}" rx="{r}"/>'
        elif first: d = (f'<path d="M{x + r:.1f},{y} H{x + ww:.1f} V{y + BH} H{x + r:.1f} '
                         f'Q{x:.1f},{y + BH} {x:.1f},{y + BH - r} V{y + r} Q{x:.1f},{y} {x + r:.1f},{y} Z"/>')
        elif last: d = (f'<path d="M{x:.1f},{y} H{x + ww - r:.1f} Q{x + ww:.1f},{y} {x + ww:.1f},{y + r} '
                        f'V{y + BH - r} Q{x + ww:.1f},{y + BH} {x + ww - r:.1f},{y + BH} H{x:.1f} Z"/>')
        else: d = f'<rect x="{x:.1f}" y="{y}" width="{ww:.1f}" height="{BH}"/>'
        parts.append(d.replace('/>', f' style="fill:var({c})"/>', 1))
        x += w
    return '\n  '.join(parts)

y = 58; body = []
for label, idx, total in ROWS:
    pct = 100 * (mb if idx else mn) / total
    body.append(f'<text x="0" y="{y + 17}" class="t1">{label}</text>')
    body.append(bar(y, idx, total))
    body.append(f'<text x="{X0 + BW + 8}" y="{y + 17}" class="t1 b">{pct:.1f}%</text>')
    y += BH + 18
# legend: swatch + name + both shares (identity never by color alone)
ly = y + 14; lx = [0, 380]
items = [(k, COLORS[i], f'{100 * cnt[k][1] / B:.1f}% of code · {cnt[k][0]:,} functions') for i, k in enumerate(CATS)]
items.append(('not yet matched', '--rest', f'{100 * (B - mb) / B:.1f}% of code · {N - mn:,} functions'))
for i, (name, c, val) in enumerate(items):
    cx, cy = lx[i % 2], ly + (i // 2) * 40
    body.append(f'<rect x="{cx}" y="{cy}" width="12" height="12" rx="3" style="fill:var({c})"/>')
    body.append(f'<text x="{cx + 20}" y="{cy + 10}" class="t1">{name}</text>')
    body.append(f'<text x="{cx + 20}" y="{cy + 27}" class="t2">{val}</text>')
H = ly + ((len(items) + 1) // 2) * 40 + 4
svg = f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" width="{W}" height="{H}" role="img" aria-labelledby="t d">
<title id="t">nlpp-decomp matching progress</title>
<desc id="d">Byte-exact share of the mapped code: {100 * mb / B:.1f}% by size, {100 * mn / N:.1f}% by function count. Breakdown in README.md.</desc>
<style>
  svg {{ --surface:#fcfcfb; --ink:#0b0b0b; --ink2:#52514e; --s1:#2a78d6; --s2:#eb6834; --s3:#1baf7a; --s4:#eda100; --rest:#e2e1dc; }}
  @media (prefers-color-scheme: dark) {{
    svg {{ --surface:#1a1a19; --ink:#ffffff; --ink2:#c3c2b7; --s1:#3987e5; --s2:#d95926; --s3:#199e70; --s4:#c98500; --rest:#383835; }}
  }}
  text {{ font: 13px -apple-system, "Segoe UI", Helvetica, Arial, sans-serif; }}
  .t1 {{ fill: var(--ink); }} .t2 {{ fill: var(--ink2); font-size: 12px; }} .b {{ font-weight: 600; }}
  .h {{ fill: var(--ink); font-size: 16px; font-weight: 600; }}
</style>
<rect width="100%" height="100%" rx="8" style="fill:var(--surface)"/>
<g transform="translate(16,0)">
<text x="0" y="26" class="h">Byte-exact against retail code.bin</text>
<text x="0" y="44" class="t2">{N:,} mapped functions, {B / 1024:,.0f} KiB ({100 * B / 0x68F7FC:.1f}% of .text) · relink identical</text>
{chr(10).join(body)}
</g>
</svg>
'''
os.makedirs('docs', exist_ok=True)
open('docs/progress.svg', 'w', newline='\n', encoding='utf-8').write(svg)
print('wrote docs/progress.svg')
