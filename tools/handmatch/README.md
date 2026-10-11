# Hand-matching tools

These are helpers for matching single functions by hand. They complement `python -m ctrdecomp diff`, `sweep` and `permute`, which work on `functions.toml` entries with the configured flags. These tools also work on scratch sources that are not registered yet, and with the game's two flag sets:
- `plain`: `--cpu=MPCore --arm -O3 -Otime --split_sections`
- `exc`: the same plus `--exceptions`

Pick the set from the function's own `symbols/exidx.csv` entry (`technical.md` §8).

Run them from the repository root. Scratch output (temporary objects, the last aligned diff, permuter results) goes to `$HM_SCRATCH`, default `build/hm/`, which is git-ignored. The tools point ARMCC's `TMP`/`TEMP` there as well.

| Tool | Use |
|------|-----|
| `ready.py [--int] [--min 100] [--max 300] [--top N]` | Candidates: unhandled game functions (ARM, outside the library areas) whose callees are all matched, sorted by caller count, with their exidx kind. `--int` keeps integer-only functions with branches (no VFP, no jump table). |
| `rdis.py OFF SIZE [--thumb]` | Retail disassembly, with matched callees named. |
| `diff.py SRC SYMBOL OFF SIZE [plain\|exc] [--align] [--relocs] [--clean OFF]` | Score a source. It also prints the aligned `+`/`-` line count, which tracks progress better than the positional score once an instruction is missing or extra. The aligned diff goes to `$HM_SCRATCH/last_align.txt`. |
| `variants.py NAME VARIANTS.py [plain\|exc ...]` | Score source variants of a registered function. `VARIANTS.py` defines `V = {key: [(old, new), ...]}`. `THROW=1` adds `throw()` to the definition. Only a scratch copy is compiled. |
| `permute.py SRC SYMBOL OFF SIZE plain\|exc SECONDS [JOBS]` | ctrdecomp's permuter on a scratch source marked with `// PERMUTE-BEGIN` / `// PERMUTE-END`. It can "improve" a score by changing behaviour (dropping a store, reading an uninitialized copy), so read `best.cpp` first. Then fold its temporaries back one at a time; some of them (copies that steer register choice) are real. |
| `throw_sweep.py [NAME ...]` | Every registered near-miss rescored with `throw()` added, under `--exceptions`. |
| `toml_rows.py set\|add\|extern ...` | Edit or append `functions.toml` / `externs.toml` rows. Untouched lines stay byte-identical; both files have mixed CRLF/LF line endings. |
| `tidy_par.py [--round2] [JOBS]` | `tools/wrapgen/tidy.py` over the committed, unmodified `src/gen` files in parallel. |

## Habits that produced matches (2026-10-10)

See `technical.md` §8, "Hand-matching with exception flags" and "New functions over 0x100 bytes".

1. **Exception flags.** Under `--exceptions`, a non-tail last call needs `throw()` on the function. A callee declared `throw()` makes call sites compile like plain flags. `throw()` also changes code in functions that make no calls, so `cantunwind` on a leaf does not prove plain flags.
2. **Inline helpers.** When retail sets up argument registers before a null or kind test, the test is inside an inline callee.
3. **Inline `switch` helpers.** An explicit `default:` that repeats the first case keeps retail's `cmp 0 / cmpne 1 / cmp 2` chain.
4. **Allocators and placement new.** Class `operator new`/`new[]` and placement new declared `throw()` give retail's null checks. `delete[]` through the global operator is a single `__aeabi_vec_delete`.
5. **Writes to `*this`.** A member function that stores into `*this` keeps the store order around other memory accesses, where a returned local lets ARMCC merge the stores.
6. **Pool islands.** The listed size can stop inside a function: ARMCC places string literals in pools inside long functions. Extend the size to the next function and check that the tail is string bytes.
