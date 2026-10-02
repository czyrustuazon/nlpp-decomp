# nlpp-decomp

Matching decompilation of New Love Plus+ (3DS, title `00040000000F4E00`). The goal is C/C++ that compiles with the original compiler (ARMCC) to the same bytes as vanilla `code.bin`. See `technical.md` for the plan and `AGENT_HANDOFF.md` for current state.

## Progress

Measured 2026-10-01 from `functions.toml` (includes the 1,191 `svc` assembly stubs) against `symbols/code.bin.csv`. The denominator is the 31,721 known functions (6.14 MB), which cover 89.3% of `.text`, so the true size share is slightly lower.

| Measure | Estimate |
|---------|----------|
| Functions matched (by count) | 21.1% (6,705 of 31,721; 6,685 at score 0) |
| Code matched (by size) | 3.5% (213,598 of 6,144,874 bytes; 3.4% at score 0) |
| Of which hand-written source | 1,684 functions, 112,322 bytes (1.8%) |

The other 5,021 entries are generated wrappers (`src/gen/`), and the `svc` stubs overlap with the entries above.

The linked `code.bin` is byte-identical to retail.

### Function percentage vs size percentage

- **Function percentage** is matched functions divided by total functions. Every function counts as one, whether it is a 4-byte stub or a 4 KB routine.
- **Size percentage** is the bytes of matched functions divided by the total bytes of `.text`. Larger functions count for more.

The two diverge because most matched functions are tiny: thousands of auto-generated wrappers, thunks, setters and kernel `svc` stubs, often 0x20-0x40 bytes or less. They inflate the function count and add few bytes. The unmatched remainder is mostly mid-size and large functions, so most of the bytes are still unmatched. Size percentage is the better measure of real decompilation progress.

For example, with 90 sixteen-byte stubs and 10 four-thousand-byte routines, matching all the stubs gives 90% by function count but about 3.5% by size.

### What the number does not include

- Much of the binary is CTR SDK and NintendoWare code, which the plan leaves as libraries rather than re-decompiling.
- The roughly 9,000 mid-size functions with real branches are blocked on lifter work or hand matching.
- The `ldrex`/`strex` family (about 30 functions) cannot be matched from C with the vendored toolchain.
