# Exception-cleanup tools

These are helpers for matching functions built with `--exceptions` together with their cleanup pads (`technical.md` §8, "Exception cleanups"). The generator itself is `tools/wrapgen/dtorgen.py`. These tools are for looking at one function or one class of pads. For single hand matches, `tools/handmatch/` has the diff, variant and permuter tools.

Run them from anywhere; they work from the repository root. Scratch output goes to `$EH_SCRATCH`, default `build/eh/`, which is git-ignored. The tools point ARMCC's `TMP`/`TEMP` there as well. Flag sets, where a tool takes them:
- `plain`: `--cpu=MPCore --arm -O3 -Otime --split_sections`
- `exc`: the same plus `--exceptions` (the default here)

| Tool | Use |
|------|-----|
| `objdump.py SRC [plain\|exc\|"FLAGS"] [--section SUBSTR]` | Compile a source and disassemble every code section, including `.clean` (the cleanup pad), with relocation symbols. The quickest way to see whether a source shape produces a pad, and what it calls. |
| `liftvars.py OFF [plain\|exc\|"FLAGS"]` | Lift one function with `lift2.py` and score every variant, pad included. `lift2`'s environment options apply (`LIFT_GUARD=none,ptop,pcall,pcall1`, `LIFT_NOTHROW=1`). The best variant goes to `$EH_SCRATCH/liftvars.cpp`. |
| `padsurvey.py [TOP]` | Shapes of the pads of unhandled functions, with counts and one example each, then the unhandled parents by size. |
| `ctorsurvey.py [--show N] [--max HEXSIZE]` | Unhandled pad parents shaped like constructors, with every Nth one disassembled together with its pad. |

## Generator (`tools/wrapgen/dtorgen.py`)

| Command | Use |
|---------|-----|
| `run OUT.json [ONLY.csv]` | Stage 1: destructors that only call member and base destructors. |
| `run2 OUT.json [ONLY.csv]` | Stage 2: as stage 1, plus inline destructors lifted from the pads' out-of-line copies. |
| `run3 OUT.json [ONLY.csv]` | Stage 3: destructors with a body (`DT_MAX=<hex size>`, `DT_GUARDS`, `DTDEBUG=1`). |
| `merge OUT.json STAGE1.json STAGE2.json..` | Stage 2 results plus the stage 1 results whose pads call only destructors the body calls. |
| `apply OUT.json src/gen/dt_<n>.cpp` | Write the source and append `functions.toml` / `externs.toml` rows. Stops on an extern name clash. |

`run2` and `run3` shard with `PART=i NPARTS=n`. Results are written only at the end of a run, so after a crash rerun only that `PART`. Before `apply`, rescore every result inside the one combined file; after it, run `python -m ctrdecomp relink`. `compare` masks pad call targets, so only `relink` catches a wrong pad callee.

## What decides a pad (2026-10-10)

1. **Pads never inline.** A destructor that is inlined into the body is still called out of line from the pad. So a pad call to a target the body never calls names an inline destructor, and that target's code is its body.
2. **Bare pads** (`nop; blx __cxa_end_cleanup`) come from an object whose class has an inline empty *virtual* destructor. A non-virtual empty destructor, or an empty base subobject in a destructor, leaves no pad.
3. **Destructor bodies** must be written directly in `~C()`, not in an inline helper. Accesses through `this` must be typed members, and the lifter's flag pairs must be folded.
4. **Vtables.** Declare an undefined `virtual void key_();` first, so the class's vtable is not emitted. The vptr then relocates against `_ZTV<C>`, whose value is the retail vtable minus 8.
