# nlpp-decomp

Matching decompilation of New Love Plus+ (3DS, title `00040000000F4E00`). The goal is C/C++ that compiles with the original compiler (ARMCC) to the same bytes as vanilla `code.bin`. See `technical.md` for the plan and `AGENT_HANDOFF.md` for current state.

## Progress

![Matching progress: 12.3% of code and 39.3% of functions are byte-exact](docs/progress.svg)

Measured 2026-10-07 from `functions.toml` against `symbols/code.bin.csv`; regenerate the chart and this table with `python tools/progress_chart.py`. The denominator is the 31,721 known functions (6,001 KiB), which cover 89.3% of `.text`, so the true size share is slightly lower. A function counts when it compiles (or assembles) to the retail bytes, score 0.

| Category | Functions | Share | Code | Share |
|----------|----------:|------:|-----:|------:|
| Library, assembly (CTR SDK, `svc` stubs, C runtime) | 3,161 | 10.0% | 478 KiB | 8.0% |
| Library, C | 560 | 1.8% | 20 KiB | 0.3% |
| Generated C (`src/gen/`, lifter output) | 8,290 | 26.1% | 226 KiB | 3.8% |
| Hand-written game C | 462 | 1.5% | 16 KiB | 0.3% |
| **Total byte-exact** | **12,473** | **39.3%** | **740 KiB** | **12.3%** |

Another 47 functions (7.4 KiB) are registered near-misses with a nonzero score. The linked `code.bin` is byte-identical to retail.

- **Library** code is identified CTR SDK and runtime code under `lib/` (`technical.md` §5 gap 3). It is kept as a library, not decompiled: C where the lifter already matched it, assembly otherwise. A native port replaces it anyway.
- **Generated C** is byte-exact but not yet readable: names are placeholders (`W_<offset>`, `Fn_<offset>_<argc>`) and every value is `u32`.
- **Hand-written game C** is the part that reads like source. Leaving the library out, about 4% of the game's own code matches.

### Function percentage vs size percentage

- **Function percentage** is matched functions divided by total functions. Every function counts as one, whether it is a 4-byte stub or a 4 KB routine.
- **Size percentage** is the bytes of matched functions divided by the total bytes of `.text`. Larger functions count for more.

The two diverge because most matched functions are tiny: thousands of auto-generated wrappers, thunks, setters and kernel `svc` stubs, often 0x20-0x40 bytes or less. They inflate the function count and add few bytes. The unmatched remainder is mostly mid-size and large functions, so most of the bytes are still unmatched. Size percentage is the better measure of real decompilation progress.

For example, with 90 sixteen-byte stubs and 10 four-thousand-byte routines, matching all the stubs gives 90% by function count but about 3.5% by size.

### What the number does not include

- More CTR SDK code than the 2026-10-06/07 batches: the candidates not yet filed are listed in `symbols/sdk_candidates.csv` (`tools/sdk_classify.py`). NintendoWare (from 0x541bc0 on) is not classified yet.
- The mid-size and large functions with real branches; the lifter mostly clears small ones, so the unmatched remainder averages about 280 bytes per function against about 60 for the matched ones.
- The `ldrex`/`strex` family (about 30 functions) cannot be matched from C with the vendored toolchain.
