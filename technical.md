# New Love Plus+ — matching decompilation notes

Working notes for a **matching decompilation** of title `00040000000F4E00` (New Love Plus+), kept in parallel with the English patcher.

| Tree | Role |
|------|------|
| `../NewLovePlusPlusEngPatcher/` | Localization. Text, UI textures, small `code.bin` caves, gold bake, Drop CIA. |
| `nlpp-decomp/` (this folder) | Reconstruct C/C++ that compiles back to the **vanilla** retail binary. |
| Vanilla dump (path in `ctrdecomp.local.toml`) | `00040000000F4E00_v00.3ds` (decrypted NCSD) and `extracted/exefs/code.bin`. There is no `extracted/romfs/` there; read RomFS from the `.3ds`. Treat as read-only. |

The match target is vanilla `code.bin`, not `release/name_input_code.bin`. The English caves (name input, message speed, title-hub null-pane guard, CESA) are patches on top of retail. Matching those patched bytes would bake the translation into the decomp.

A Windows program is a **second project**. It starts only after large parts of this binary match. Ship of Harkinian exists because Ocarina of Time was already matched. Azahar running the patched CIA is the playable Windows build until then.

Last updated 2026-10-01 (gaps 1–2 filled; `lib/` started; first real Thumb and data through `relink`; see §6.1.1; text/Str/UI leaves §6.1.3).

---

## 0. What this is

A matching decomp is source that, compiled with the **same compiler and flags the studio used**, reproduces the retail machine code. A function is done when the bytes match, not when the C looks plausible.

The loop used on N64 and GameCube:

1. Split the binary into functions and data.
2. Disassemble one function.
3. Write C or C++. Compile with the original compiler.
4. Diff the instructions against the retail function.
5. Change a type, a temporary, or a flag until the diff is clean.
6. Relink matched objects beside the slices that are still original bytes. The linked image has to match the retail hash.

Naming and comments come after the match. A byte match does not by itself explain why the function exists. Call sites, string xrefs, and in-game behavior do that. The patcher repo already has that layer for UI text.

This folder does not patch `img.bin`, ship a CIA, or replace Azahar.

---

## 1. Why N64 and GameCube projects got there

Those consoles are tractable for specific reasons. The method transfers. The head start does not.

**The compiler is frozen and known.**

- N64 games are mostly C, built with SGI IDO 5.3 or 7.1, sometimes GCC 2.7 or 2.8. Super Mario 64’s matching build uses IDO 5.3. Flags differ per file (`-g` on some translation units, `-O2` on others). The compiler has been rehosted so it runs on a modern PC.
- GameCube and Wii games are C and C++, built with Metrowerks CodeWarrior (`mwcceppc`). [decomp-toolkit](https://github.com/encounter/decomp-toolkit) splits the DOL into relocatable objects. Matched objects are relinked next to original slices. [dtk-template](https://github.com/encounter/dtk-template) is the usual project scaffold.

**The binaries are small, and a lot of each one is a shared SDK.**

- N64 game code is often a few hundred kilobytes to a couple of megabytes. Nintendo’s `libultra` is the same OS, controller, graphics, and audio library across the library of games, so one matched SDK unlocks the next title.
- Ocarina of Time shipped a debug ROM whose `__FILE__` strings named the original source files. Padding and DMA tables made file boundaries visible.
- GameCube’s decomp-toolkit ships a signature database for the Metrowerks runtime and the Dolphin SDK, so those functions get named before anyone touches game logic.

**The check is mechanical, and the tools are shared.**

- Split: [splat](https://github.com/ethteck/splat) (N64), decomp-toolkit (GameCube / Wii).
- Diff: [asm-differ](https://github.com/simonlindholm/asm-differ), [objdiff](https://github.com/encounter/objdiff).
- One function at a time, in public: [decomp.me](https://decomp.me). A scratch compiles your C on the server and scores it against the target assembly. Lower score is better. Zero is a match.
- Progress hubs: [decomp.dev](https://decomp.dev).

Mario 64 took years and was one of the easy cases: plain C, light optimization, a known compiler. Ocarina of Time was harder because optimizations were on. Background: [Ars Technica, 2020](https://arstechnica.com/gaming/2020/05/beyond-emulation-the-massive-effort-to-reverse-engineer-n64-source-code/).

---

## 2. What changes on 3DS

[Decompedia’s 3DS page](https://decomp.wiki/platforms/nintendo-3ds) describes the matching scene as early. Tooling is still mostly project-local Python. That is the gap this folder has to close before game logic can be matched at scale.

Retail 3DS games are usually **C++ built with ARMCC** (ARM Compiler / RVCT), statically linked against the CTR SDK and NintendoWare, and stripped. Code size on the platform runs from under a megabyte (small indies) to more than 13 MB (*Super Smash Bros. for Nintendo 3DS*). New Love Plus+ sits in that world: Thumb and ARM mixed, C++ inlined, no symbol table in the retail ExeFS.

Decompedia also notes two structural facts worth testing on this title. They are platform defaults, not yet confirmed here:

- Many games are linked with `--split_sections`, so each function is its own translation unit and the linker sorts those units. When any names survive, alphabetical order hints at the names of neighbors.
- Modules are **CRO** files (relocatable, like a DLL) rather than N64-style overlays. A CRO export table sometimes still has function names.

**Checked on this title (2026-09-29):** RomFS has 3,808 files and **no** `.cro` / `.crs` / `.crr`. All code is in the static `code.bin`. Whether the final link used `--split_sections` is still open, because the flag does not change a function's own bytes (§6.1). Leftover symbols are §5 gap 4.

Libraries other 3DS projects are matching, separately from any one game:

| Library | Notes |
|---------|--------|
| [CTR SDK / `nnsdk`](https://github.com/3dsdecomp/nnsdk) | `nn::` — FS, HID, GPU, the OS layer. ARM11 MPCore, ARMCC. |
| [NintendoWare for CTR](https://decomp.wiki/platforms/nintendo-3ds/libraries/nw4c) | `nw::lyt` layout, fonts, graphics. This is the system behind BCLYT / BCLIM. |
| [SEAD](https://github.com/3dsdecomp/sead) | Framework used by some first-party games. Its published flags (`--cpu=MPCore`, `--no_rtti`, `--no_exceptions`, `-O3 -Otime`, `--split_sections`) are a **hypothesis to test**, not this title’s flags. |
| PIA, NEX, CTR Face Library, Mobiclip | Present on Decompedia. Use them only if a signature actually hits `code.bin`. |

`--no_rtti` is common. Do not count on C++ typeinfo strings being present. Assert paths and `__FILE__` leftovers are the thing to hunt first; they are this platform’s version of Ocarina’s debug strings.

---

## 3. What the patcher already established

Source of truth for addresses: `NewLovePlusPlusEngPatcher/docs/technical.md`. Ghidra image base is **0**. Runtime VA = file offset + `0x100000`. Pointers stored in the binary are usually runtime VAs.

The patcher work is a localization map. It is the right kind of head start for the text and 2D UI layer, and it leaves the engine untouched.

### 3.1 Specified well enough to keep using

| Area | Where it lives | Use in a decomp |
|------|----------------|-----------------|
| Dialog scripts | `.dbin2`, NLPTextTool XML schema | Data format. The scene player that runs them is still unnamed code. |
| Text table | `textresource_jpn.trb` (`STRI` / `STRB` / `INDX` / codebook) | Runtime lookup is `FUN_005c0e7c` → `FUN_0056ed00`. Resident/TOP runtime blob is `img.bin` pkg **5508**. The loose `textresource_resident_jpn.trb` is unused. |
| 2D UI textures | BCLIM (A8, RGBA4444, ETC1A4, RGB565) inside DARC packages in `img.bin` (~712 MB) | Container and a set of menu packages. Not a scene graph. |
| A few BCLYT layouts | Clock, copyright / Eng Patch pane, headers | Individual files. Not a layout runtime. |
| UI call sites | See the table below | First functions worth matching, because behavior is already known. |

Known call sites (file offsets, Ghidra base 0):

| Role | Address |
|------|---------|
| TextResource pack+slot | `FUN_005c0e7c` → `FUN_0056ed00` |
| MakeStr | `FUN_005a1ec8` |
| DrawTextToPane | `FUN_0054b880` |
| Header pane draw | `FUN_0024842c` |
| BCLIM accept / upload | `FUN_00542c30` / `FUN_00542828` (format table `0x006E9964`, GPU target `0x0DE1`) |
| Options button bind | `OptionMenu_BindBtnTextures` @ `001eb3dc` |
| MSel icon+text bind | `BindMSelBtnIconAndText` @ `0020ad74` |
| Options/clock plate bind | `OptionMenu_BindPlateTextures` @ `0020bcc0` |
| Softkey enable m / o / t | `FUN_001d2498` / `001d1c70` / `001d2080` |
| Message Speed | `FUN_005d1e18` @ `005D1E18`; TalkWindow table `0x006E3024` |
| FindPaneByName loop | `0x005459D8` … `0x00545A48` |

### 3.2 Not specified

These are the actual game, and they are why the title screen is slow on a real 3DS:

- Character mesh, skeleton, hair, clothing, lighting, and PICA200 shaders. No format spec, no loader.
- The schedule and relationship simulation.
- The scene player that consumes `.dbin2`.
- Audio.
- Save data, beyond the SpotPass / extra-data notes in the patcher (`docs/technical.md` §16, §10).
- The statically linked CTR SDK and NintendoWare. They have not been sliced out of `code.bin`.
- Compiler version and per-file flags.
- Function boundaries, a symbol list, and a link order.

The named functions in §3.1 are a short list beside thousands that are still `FUN_`.

---

## 4. Tools

Use these. Do not invent a second diff loop.

### 4.1 Already in the patcher workflow

| Tool | Role here |
|------|-----------|
| Ghidra (`user-ghidra`, image base 0) | Navigate `code.bin`. ASCII anchors, then xrefs. String search misses UTF-8 Japanese; scan the file in Python for that. |
| Azahar | Behavioral oracle. If a matched function’s C disagrees with what the game does, the C is wrong even when a later port would “fix” it. |
| EngPatcher `docs/technical.md` | Do not rediscover clock chrome, TRB layout, or the BCLIM loader. Link to it. |

### 4.2 Matching toolchain

| Tool | What it is for |
|------|----------------|
| [decomp.me](https://decomp.me) | One function. Platform **Nintendo 3DS (ARMv6K)**. Paste the target assembly, pick the ARMCC build and flags, iterate. This is the place to learn codegen before a local toolchain exists. |
| [asm-differ](https://github.com/simonlindholm/asm-differ) | Local instruction diff. decomp.me’s score is based on it. |
| [objdiff](https://github.com/encounter/objdiff) | Diffs relocatable `.o` files. Supports ARM, including 3DS. Watches the source and rebuilds. Progress reporting can feed decomp.dev. |
| [decomp-toolkit](https://github.com/encounter/decomp-toolkit) | GameCube / Wii DOL splitter. Read it to understand the relink model. It does not split a 3DS `code.bin`. |
| [splat](https://github.com/ethteck/splat) | N64 (and other) ROM splitter. Same idea, different container. |
| [3DS-Decomp-Pipeline](https://github.com/AlgebraManiacABC/3DS-Decomp-Pipeline) | The closest public 3DS equivalent of splat + relink. **Not used here:** no LICENSE file (§5.2). Splits `code.bin` and CRO modules into per-symbol ELF objects from a **Ghidra symbol list**, compiles sources, compares with relocation bytes masked out, and can relink toward a byte-identical image. Emits `objdiff.json`. Depends on Python 3.10+, PyYAML, and a linker (`devkitARM`’s `arm-none-eabi-ld` or any `ld` / `objcopy`). The **compiler is yours to supply.** |
| [decomp.dev](https://decomp.dev) | Progress board, once objdiff output exists. |
| [Decompedia](https://decomp.wiki/platforms/nintendo-3ds) | Platform notes, library list, compiler page. |
| [Copetti, 3DS architecture](https://www.copetti.org/writings/consoles/nintendo-3ds/) | Hardware picture (ARM11, PICA200). Useful when a matched function is clearly a GPU upload. |

### 4.3 Compiler

ARMCC (`armcc`, `armasm`, `armar`, `armlink`) is the expected compiler. decomp.me’s [compilers repository](https://github.com/decompme/compilers) is where the builds that the scratch site runs are tracked. A local `ARMCC_PATH` is required before this folder can compile anything.

**Pinned (2026-09-29).** decomp.me's API is behind a Cloudflare challenge, so scratches cannot be scripted from here. decomp.me publishes the same compiler builds as one zip, [`armcc.zip`](https://github.com/decompme/compilers/releases/download/compilers/armcc.zip?2026-03-04) (73 MB, SHA-256 `bda0cea5…fafdb`, referenced from its `values.yaml`). The `.exe` files run natively on Windows. `tools/armcc/` is git-ignored; vendor it with `python -m ctrdecomp fetch-armcc` (downloads and checks the hash) or `python -m ctrdecomp fetch-armcc --zip <armcc.zip>` (offline). It is unpacked at `tools/armcc/<ver>/<build>/bin/armcc.exe` for 4.0 b771/821/865/902, 4.1 b561/713/791/844/894/921/1049/1440/1454, and 5.04 b82. These are the builds behind decomp.me's `armcc_40_*`, `armcc_41_*` and `armcc_504_82` (Nintendo 3DS platform). The zip has no armlink, armasm, or fromelf.

| Flag set | Result on `FUN_00542c30` (score = differing words) |
|----------|--------------------------|
| **ARMCC 4.1 b713 … b1454, `--cpu=MPCore --arm -O3 -Otime`** | **Match (0)** on all 8 of those builds. The same 8, and only they, also match game-side `FUN_005c0e7c`. |
| ARMCC 4.1 b561 and all 4.0 builds, `-O3 -Otime` | 23 |
| ARMCC 5.04 b82, any `-O` | 52 or more |
| Any build, `-O2` / `-Ospace` / `-O1` | 31 or more |
| `--cpu=6K` instead of `MPCore` | 15 |
| `--thumb` | No match (the function is ARM) |
| `--split_sections`, `--no_rtti`, `--no_exceptions` | No effect on this function's bytes |

So the pin is **ARMCC 4.1 ≥ b713, `--cpu=MPCore --arm -O3 -Otime`**, for both NintendoWare (`FUN_00542c30`) and Konami game code (`FUN_005c0e7c`). The build is not narrowed inside that range; `FUN_0056ed00` drafts also score identically on all 8. Use b1454 as the working default.

`nop` (`0xE320F000`, 33,895 of them in `code.bin`) is **compiler output**, not a link-time rewrite: with `--cpu=MPCore` ARMCC puts a `nop` in front of a `bl` when it has nothing to schedule into that slot. A `nop` that moves between drafts tells you the statement order around a call is wrong.

Local loop, no decomp.me needed. Everything is `python -m ctrdecomp …` from this folder (§8); game-specific paths and flags live in `ctrdecomp.toml`.

- `diff <src> <symbol> <off> <size incl. pool> [--build B] [--align] [-v] [-- armcc flags]` compiles the source, pulls the function and its literal pool from the `.o`, and diffs it against vanilla `code.bin`. Bytes under a relocation are masked. The score is the number of target instructions that differ, plus any extra instructions. `--align` gives a difflib view, so one inserted instruction does not turn the rest of the function red; pool words show there as diffs even when they are masked, and the `score` line is authoritative.
- `diff` prints every relocation with the retail address it lands on (`BL`/Thumb `BL` target, or `ABS32` VA minus addend). That is the destination check.
- `sweep <src> <symbol> <off> <size>` scores every vendored build under `-O3`/`-O2` × `-Otime`/`-Ospace`, plus `-O1`.
- `check` recompiles every function in `functions.toml` and fails if any score drifts from the recorded one. `python -m pytest` runs it along with the tool tests.
- `asm <name> <off> <code size> <pool words> [--thumb] -o asm/FUN_xxxxxxxx.s` writes a listing that can be pasted into decomp.me.
- `ghidra-decomp <out.c> <off> …` runs `DecompAt.java` headless against the **EngPatcher** Ghidra project (`-readOnly -noanalysis`, so it never writes to the patcher): bounds, ARM/Thumb, callees, Ghidra’s C. `--own` uses this folder’s project instead. Ghidra’s prototypes are a starting point: it called `FUN_005c0e7c` `void`, and the callers prove it returns `bool`.
- `ghidra-import <out.csv>` imports `code.bin` into this folder’s own project (`ghidra/`, git-ignored), splits `.text`/`.rodata`/`.data` (`SetupCtrCode.java`), turns on ARM’s aggressive instruction finder, runs full analysis (about 7 minutes here), and exports the function list.
- `ghidra-seed <out.csv>` adds functions that auto-analysis misses (`SeedFunctions.java`): every word in `.rodata`/`.data` that points into `.text` (vtables, callback tables; an odd value is a Thumb entry), and every `push {…, lr}` not already inside a function. Then it re-exports. It modifies only `ghidra/`.
- `pipeline-symbols <functions.csv> symbols/code.bin.csv` writes the 3DS-Decomp-Pipeline symbol file (`Name,Location,Mode,Size,Segment`, absolute VAs). It makes names unique, uses the `functions.toml` symbol name for every function that has source, and extends a function with a split body over its mid-function literal pool, capped at the next function’s start.
- `extract <rom.3ds> <dir>` rebuilds `code.bin` from a decrypted `.3ds`/NCCH, checks every hash, and prints the segment layout and RomFS summary.

## 5. Gaps, in the order they block everything else

| # | Gap | Why it blocks | How to fill it |
|---|-----|----------------|----------------|
| 1 | ~~No pinned compiler or flags~~ **Filled, 2026-09-29:** ARMCC 4.1 ≥ b713, `--cpu=MPCore --arm -O3 -Otime`, confirmed on NW4C and on Konami code (§4.3). The exact 4.1 build is still open. | Nothing can be scored | Done: local ARMCC (`python -m ctrdecomp fetch-armcc`); `FUN_00542c30` and `FUN_005c0e7c` match. A function that separates the 4.1 builds would pin the build; none has yet. |
| 2 | ~~No function boundary list~~ **Filled, 2026-09-29:** `symbols/code.bin.csv`, 31,721 functions (379 Thumb), 89.3% of `.text`, no overlaps, unique names. The 4 functions with source have exact sizes. Not needed by our own tooling (§5.2). | A pipeline cannot split `code.bin` | Export symbols from Ghidra (name, start, size, Thumb vs ARM). Feed that list to 3DS-Decomp-Pipeline. Fix bad boundaries when a split object will not compile or will not compare. |
| 3 | SDK not subtracted (**started 2026-09-30**: `lib/` exists; 12 Thumb runtime functions, a pointer table, 2 `nw::ut`, 2 `nn::os` identified/matched, §6.1.1) | Game functions and `nn::` / `nw::` are mixed together | Signature-scan `code.bin` against public `nnsdk` and NintendoWare matches. Name hits. Leave them as included library objects, the way N64 projects include `libultra`, instead of decompiling Nintendo’s OS again inside this game. |
| 4 | No leftover symbols confirmed | Naming is guesswork | Search `code.bin` for path-like assert strings, `__FILE__` fragments, and CRO export names anywhere in RomFS. Log hits in this file. Absence is a result; write it down. **First pass, 2026-09-29:** no CROs in RomFS. `code.bin` has no `.cpp` / `.h` paths, no drive or Unix build paths, no Itanium-mangled names (`_Z…`), and no `nw::` strings. The only named functions are five `nn::camera::CTR::*()` strings (`SetPackageParameterWithContext`, `SetFrameRate`, `SetSize`, `Activate`, `Initialize`), each present twice (`0x00371C94…` and `0x005DCB74…`), plus the `MODULE_NN_*` result-module name table at `0x004FF0A0`. Names have to come from SDK signatures (gap 3). |
| 5 | 3D and simulation formats unknown | The title scene and the dating sim are opaque | Do this **after** the text/layout functions match. Follow xrefs out of the BCLIM upload path and out of the script loader. One format at a time, same as the patcher did for BCLIM. |
| 6 | ~~No relink~~ **Started, 2026-09-29:** `ctrdecomp relink` rebuilds the image from our matched sources and it is byte-identical (§5.2). Thumb, data objects and objdiff export are in (§5.2); the open part is exercising them on real functions. | A function match can still be a wrong callee | Once a translation unit matches, relink it into a full image and compare the hash to vanilla `code.bin`. |
| 7 | No PC backend | Matching ARMCC output is still a 3DS binary | Out of scope until (6) is real for a subsystem. The port replaces `nn::` and the PICA200 path. It does not replace the matched game logic. |

---

### 5.1 Function list (gap 2)

Rebuild with `python -m ctrdecomp ghidra-import build/functions.csv`, then `ghidra-seed build/functions.csv`, then `pipeline-symbols build/functions.csv symbols/code.bin.csv`.

| Source | Functions in `.text` | `.text` covered |
|--------|----------------------|-----------------|
| EngPatcher project (read-only reference; analyzed only as far as localization needed) | 16,886 | 45.2% |
| Own project after full analysis + aggressive instruction finder | 22,156 | 59.4% |
| + `ghidra-seed`: 16,879 pointer seeds and 3,511 prologue seeds; 9,955 functions created, 12 failed, 17 skipped as ARM/Thumb conflicts | 31,721 | 71.0% |
| + functions extended across mid-function literal pools (1,592) | 31,721 | **89.3%** |

Things learned doing it:

- **ARMCC puts literal pools in the middle of long functions.** Ghidra’s body stops at the pool, and the rest of the function shows up as a separate range. Most of the “ARM-looking gaps” in the first counts were this, not missing functions. The split objects must keep a function, its mid-function pools, and its continuation together.
- The remaining 10.7% is mostly the pool after each function’s last instruction, plus alignment padding. The pipeline makes those `$d` objects. Some real code is surely still unfound. Leaf functions without `push {lr}` that are reached only by a computed branch will not be seeded.
- `.text` is file `0x000000–0x68F7FC` (VA `0x00100000`), `.rodata` file `0x690000` (VA `0x00790000`, `0xF81A8` bytes), `.data` file `0x789000` (VA `0x00889000`, `0x36BBC` bytes), `.bss` `0x1BB824` bytes. EngPatcher’s DrawText cave at `0x68F7FC` sits exactly at the end of `.text`.
- 

### 5.2 Relink (gap 6)

`python -m ctrdecomp relink [-o build/relink/code.bin]` (`ctrdecomp/relink.py`) compiles every function in `functions.toml` with `score = 0`, resolves each relocation from a declared address (`functions.toml` for functions with source, `externs.toml` for everything else), writes the bytes over a copy of vanilla `code.bin`, and reports whether the image is byte-identical. Relocation bytes are computed, not masked, so a wrong callee or data address fails. Checked 2026-09-29: with a deliberately wrong `GetNextBlockHeader` address the rebuilt image differs by one byte at the branch. Resolves ARM `BL`/`B` (a `BL` to a Thumb callee becomes `BLX`), Thumb `BL`/`BLX`, and `ABS32`; a Thumb function’s address carries bit 0 set, in `externs.toml` and via `thumb = true` in `functions.toml`. `[[data]]` entries in `functions.toml` (`name`, `offset`, `size`, `src`, `symbol`; file offsets into `.rodata`/`.data`) place initialized data and pointer tables the same way; uninitialized (bss) symbols go in `externs.toml`. Thumb and data were first exercised on real code 2026-09-30: twelve Thumb functions, two CRC-32 tables and one seven-word pointer table (ABS32) relink byte-identically (§6.1.1). `check` does not cover `[[data]]` entries; only `relink` does. `python -m pytest` runs it. `relink` also applies armlink's branch-to-next rule (an unconditional `B` to the next instruction becomes `mov r0, r0`; §6.1.3 habit 3). `objdiff` export handles the Thumb unit; it currently fails on `DrawTextToPane` (its `functions.toml` symbol is `DrawTextToPane`, not the mangled name in the object).

**Result, 2026-09-29:** `ParseClim` and `GetText` are placed, the two near-matches are left as retail, and the image is identical (SHA-256 `a83d349d…ab890`).

Decision: 3DS-Decomp-Pipeline (AlgebraManiacABC) is not used. It has no LICENSE file, so it cannot be vendored, and we do not want to depend on it. A one-off trial of it (2026-09-29) split all 31,721 symbols and relinked the whole image with llvm-mingw `ld.lld` to the vanilla hash, so `symbols/code.bin.csv` reassembles cleanly. That is recorded here as a check on the symbol list only; none of its code is in this repo. Whole-image linking from per-symbol objects is not needed to verify matches: placing a function at its declared offset and comparing the image does the same job. `python -m ctrdecomp objdiff` writes `objdiff.json` (git-ignored) and, under `build/objdiff/`, one unit per source file: our ARMCC object as base, and a target ELF assembled with `clang` from the retail bytes with relocations by symbol name (checked: target bytes equal retail outside relocation words for all four functions). It is untested in the objdiff GUI itself; objdiff is not installed here.

Adding a function: put its source in `src/`, add it to `functions.toml`, run `relink`. An unresolved symbol is reported by name; add its address to `externs.toml`, ideally from Ghidra or an SDK signature rather than from the retail bytes, so the check stays independent.

## 6. First slice to match

Start where behavior is already proven in game, so a wrong match is obvious.

1. `FUN_00542828` and `FUN_00542c30` — BCLIM header check and GPU upload. Small, pure, and documented in EngPatcher §5.4.
2. `FUN_005c0e7c` / `FUN_0056ed00` — text lookup. The TRB layout is known, so struct fields can be checked against the file format.
3. `FUN_005a1ec8` and `FUN_0054b880` — MakeStr and DrawTextToPane. These sit on top of (2) and the layout system.
4. Only then the binders (`OptionMenu_BindBtnTextures`, `OptionMenu_BindPlateTextures`, `BindMSelBtnIconAndText`). They are larger and mostly call (1) and (3).

Stay out of the title-scene renderer until those four are matched. That renderer is the performance problem from the 3DS, and it is also the part with no format notes. Matching it blind is how a decomp stalls.

When a function matches, record in this file: address, proposed name, compiler flags, scratch URL, and whether the relocation destinations were checked. If the result also matters to localization, add a pointer in EngPatcher `docs/technical.md` rather than moving the patcher notes here.

---

### 6.1 Matched functions

| Address (file) | Proposed name | Source | Compiler / flags | Scratch | Relocs checked |
|----------------|---------------|--------|------------------|---------|----------------|
| `FUN_00542c30` (VA `0x00642C30`), 0xDC bytes incl. a 3-word pool | `ParseClim`. Likely an NW4C `nw::lyt` internal; the real NW name is unknown. | `lib/nw4c/lyt_clim.cpp` | ARMCC 4.1 b713–b1454, `--cpu=MPCore --arm -O3 -Otime` | None: decomp.me's API is blocked by Cloudflare, so it was matched locally (`python -m ctrdecomp diff`). To make a public scratch, paste `asm/FUN_00542c30.s` and pick compiler `armcc_41_1454`. | **Yes**, by mapping, not by link. `+0x54 R_ARM_CALL IsValidBinaryFile` → retail `BL 0x00541CE0`. `+0x80 R_ARM_CALL GetNextBlockHeader` → retail `BL 0x00541D60`. Both prototypes agree with the callees' disassembly. The pool has no relocations, and its three words match literally. A link-time check waits on gap 6. |
| `FUN_005c0e7c` (VA `0x006C0E7C`), 0x4C bytes incl. 1-word pool | `GetText(buf, bufSize, id, index)`, where `id = pack << 8 \| slot`. **Konami code.** 89 `BL` sites. | `src/text_resource.cpp` | Same 8 builds, same flags (all other builds and `-O` levels score 1 or worse) | None (API blocked). `asm/FUN_005c0e7c.s`. | **Yes**: `+0x3C` → `BL 0x0056ED00`; `+0x48 g_TextSystem` → VA `0x008AA7A4`, addend 0. Returns `bool`: 14 of the 89 call sites test `r0` right after the call. |
| `FUN_0056ed00` (VA `0x0066ED00`), 0x288 bytes incl. 3-word pool | `TextResource::Lookup(buf, bufSize, pack, slot, index, log)` | `src/text_resource.cpp` | Same | `asm/FUN_0056ed00.s` | **NONMATCHING, score 9 of 162 words.** All 14 relocations land on the right retail targets. The 9 are register choice only: retail keeps constant `1` in `sl` and `&g_TextSystem` in `fp` (swapped in the draft), and uses `r1` instead of `r0` as the scratch for `freeCount--`. Not moved by: bool vs u8 flag, local static, flag-reference alias, `u32`/`int` counter, `--`/`-= 1`, acquire return type, parameter widths, or splitting the pool helper. |
| `FUN_005a1ec8` (VA `0x006A1EC8`), 0xE8 bytes, no pool | `Str::Str(const char*)`, the “MakeStr” string object: one heap block of `capacity × 9` bytes, 8-byte decoded chars then the UTF-8 copy. 222 callers. | `src/str.cpp` | Same | `asm/FUN_005a1ec8.s` | **NONMATCHING, score 21**, which is about 6 instructions once aligned (one extra instruction shifts the rest). All call targets are right. Retail loads `m_capacity` into `r2`, not `r1`, before the size compare, and holds `m_buf` in `r2`, so `m_text`/`m_chars` go out as `add r1, r4, #4; stm r1, {r0, r2}` where the draft emits `strd`. Not moved by: `--no_unaligned_access`, real `<string.h>` `strlen`/`memcpy`, an inline `Set()`, an init list, or byte-pointer arithmetic. No build separates it. |

The source of each rejected attempt, and the score it got, is in `handoff_drafts/`. Read that before trying another shape on `FUN_0056ed00` or `FUN_005a1ec8`. The notes below are the short version.

What moved the score (useful for the next function):

- The block walk is `switch (block->kind) { case 'imag': … }`, not `if (==)`. ARMCC lowers a one-case switch to `adds rX, rX, sl` with a negated literal (`0x989E9297`). Writing `==` gives `cmp` with the positive literal.
- `u32 fileSize = RoundUp(*tail, 4);` is a named temporary, followed by `AddOffsetToPtr(data, fileSize)`. Folding that expression inline reverses the `add` operands.
- `RoundUp` and `AddOffsetToPtr` are NW-style inline helpers. The library code here reads like NintendoWare source, which supports the NW4C attribution.
- `FUN_0056ed00`: from 111 down to 9. Most of that came from **inline helper boundaries**, not from expressions. The semaphore/pool block as an inline function made the compiler address every pool field from one base register. The TRB entry search as an inline `Find(TextResult*, …)` member got the `0`/`1` constants hoisted and `index` left on the stack. After that, `while (*src != 0) { u32 code = *src; … }` produced the `and r0, #0xff` loop, and `u32 idx = s->entry[index];` stopped a pre-indexed writeback load.
- `Str::Str`: `Reserve()` has to read `m_size` from the object. A `size` parameter gets cached in a register (score 46). The copy has to sit under `if (Reserve())`, so the allocation-failure path shares the epilogue instead of returning early.
- Three near-matches now fail the same way: every build agrees, and only register choice differs. Hand edits have stopped paying off there. A permuter that randomizes statement order and temporaries against ARMCC (§8) is the next lever, not more hand edits.
- One translation unit per data block. `GetText` and `Lookup` address the same literal, VA `0x008AA7A4` (Lookup’s flag at `+0x00`, GetText’s resource pointer at `+0x10`). ARMCC addresses a TU’s statics from one base, so a shared base literal means a shared source file. Use this to group functions into files before gap 2.

Callees named by this match (prototypes in `lib/nw4c/lyt_clim.cpp`): `FUN_00541ce0` = `IsValidBinaryFile(header, sig, version, minBlocks)` (EngPatcher §5.4 "shared NW4C header check"), and `FUN_00541d60` = `GetNextBlockHeader(header, prev)`, which takes a byte-swapped path when the BOM is not `0xFEFF`. Both are `nw::ut` in NintendoWare. Treat them as library functions (§5 gap 3) rather than matching them here.

Callees named by the text lookup (prototypes in `src/text_resource.cpp`): `FUN_0001611c` / `FUN_00016288` are an `nn::os` light-semaphore acquire (LDREX/STREX count, waits below 1) and release (`FUN_0001b58c(sem, 1)`), CTR SDK. `FUN_0056eb20` = `TextResource::Init`, which walks the TRB sections and fixes up pointers. `FUN_00200e60` strlen, `FUN_00202a48` strcpy, `FUN_00021ca0` alloc(size, 0, 0x10), `FUN_001fcd88` free, `FUN_005f1f08` a text logger (hooked only when `+0x1001C` is set). Statics: `g_TextSystem` VA `0x008AA7A4`, the node pool VA `0x009A0600` (free/used lists, count at `+0x708`, semaphores at `+0x710/+0x718/+0x720`), and the last-lookup record VA `0x009A04F4` `{offset, length, u16 type, u16 valid}`. TRB entry `type` 1 = plain string (strcpy), 2 = empty, anything else = codebook bytes (`0x80` flag → 15-bit code).

### 6.1.1 Library matches and flag experiments (2026-09-30)

**Thumb runtime = different flags.** The Thumb functions (379 in the symbol list; the first at file `0x4c`, dense below about `0x4300`, a few later) that were sampled are C/C++ runtime (libc string routines, stream/locale helpers), not game code. It is **not** built like the game: `--cpu=5TE --thumb -O1` matches (score 0) where the game's `--cpu=MPCore -O3 -Otime` does not. Evidence: Thumb `movs r0, r1` (ARMv5) where MPCore would emit `mov`, plain `blx` to ARM callees, and `-O2 -Ospace` or `-O1` both give the loop shapes. `-O1` is the one that also gets `CopyU16` right (`-O2 -Ospace` hoists the `lsls` above the `push`). `--cpu=4T` scores the same as `5TE` on these. Per-function `flags = [...]` in `functions.toml` carries this; `relink` resolved the Thumb `BL` into ARM callees (as `BLX`) correctly.

| File offset | Name (mine) | Score | Notes |
|-------------|-------------|-------|-------|
| `0xd0c` | `Utf16Len` | 0 | wcslen on 16-bit chars |
| `0xb06` | `StrChr` | 0 | needs `d = *++s; if (ch == d)` with a `u8 d`; other spellings score 1 to 9 |
| `0x6b0` | `HasFlag80` | 0 | `o->flags & 0x80`, flags at `+0xC` |
| `0x718` | `IsNullOrEmpty` | 0 | |
| `0xc10`, `0xc1a` | `CopyU16`, `CopyU16b` | 0 | `Copy(dst, src, n * 2)` to two ARM callees |
| `0xb1c` | `StrNCat` | 0 | |
| `0xc24` | `WcsCat` | 0 | |
| `0xc40` | `WcsCmp` | 0 | **`-O2`**, ARMCC 4.1 b713+ (same 8 builds as the game; `-O1` gives 5). Plain `while (*a != 0 && *a == *b) {a++;b++;} return *a - *b;` |
| `0xc5c` | `WcsNCmp` | 0 | `-O2`; retail's loop has the increment block first and is entered by a branch to the `n == 0` test. Only a `goto start` into a `for(;;)` reproduces it (every `while`/`for` form scores 17 to 19). The body is the plain one; the "extra" `lsls/lsrs` is just what `-O2` does with `return *a - *b` |
| `0xbf4` | `WcsCpy` | 0 | `-O1` (not `-O2`, which gives 2) |
| `0xd1e` | `WcsICmp` | 0 | `-O2`; case-insensitive wcscmp over a Thumb `ToLower` (`FUN_001fe260`, address `0x002FE261` with bit 0 set). Retail spills `b` to a stack slot (`push {r3,..}; str r1,[sp]`); a `const u16* volatile` local copy reproduces it (6 without) |
| `0xbdc` | strrchr | not added, score 2 | only `movs r2,#0` vs `lsls r3` order differs. Tried ~25 spellings at `-O1`/`-O2`/`-O3`/`-Ospace`, 9 builds, `--cpu=4T`/`5TE`; always 2 |
| `0xb40` | strstr | not added, 19 | retail keeps the outer `s` in `r5` and the compare char in `r0` (returns `r0` = 0); ARMCC puts `s` in `r0` and `c`,`d` in `r4`,`r5` for every spelling |
| `0xa82` | bsearch | not added, 5 | `-O2` (Ospace default); `for(;;)` with `n == 0` then `n == 1` tests; only `sub sp,#4` and `muls` position differ |
| `0xad0` | strcoll-like (locale table, `FUN_001fe034` returns `const u32* const*`, fallback `FUN_001fe040`) | not added, 5 | `-O1`; retail keeps the table base in `r1`, offset in `r0` and loads `*b` before incrementing `a` |
| `0xb68`, `0xc84` | memcmp (word loop, 2-way byte unroll), wcs set/pbrk-like | not attempted | |

**Correction to the line above (2026-10-01):** the Thumb runtime was not all `-O1`. `WcsCmp`, `WcsNCmp`, `WcsICmp` match at `-O2` on 4.1 b713+, `WcsCpy` at `-O1`. So per-function `flags` matter, and a near-miss at one `-O` level should be tried at the other.

**Pointer table.** `g_Vtbl_79EDF0` (`src/vtable_data.cpp`, file `0x69edf0`, 7 words) is a real vtable-shaped table: seven ARM function pointers, five of them tiny shared stubs (VA `0x004671d4`, `0x00467198`, `0x004671dc`, `0x00467190`, `0x004671e4`) that many vtables repeat. Registered as `[[data]]`; the seven ABS32 words are recomputed from `externs.toml` by `relink`, image hash unchanged. A wrong extern address makes the image differ (checked: first run with addresses off by `0x100000` reported diffs at every word). 3,707 runs of 3 or more `.text` pointers exist in `.rodata`/`.data` (mostly vtables), so this approach scales once the callees are named. Note: Ghidra `FUN_` names are file offsets, the table words are VAs.

**nn::os atomics (negative in C; solved 2026-10-01 as assembly, see section 8 item 6 and `lib/nnsdk/nn_os_atomics*.s`).** `FUN_0001b4bc` (swap to 1), `FUN_0001b240` (store -1/-2 then call it), `FUN_0004f4574` (try-negate), `FUN_00016290` (`LightSemaphore` init) and 31 more ARM functions with `ldrex` all differ the same way as `LightSemaphore_Acquire`: retail uses `ip`/`r3` for the `strex` status and keeps the `ldrex` result in its own register, while ARMCC reuses a register. Not fixed by `-O0..-O3`, `-Otime`/`-Ospace`, any `--cpu` from `6` to `MPCore`, a status variable, inline `__asm {}` blocks (physical register names are treated as variable names, still scores 2 to 3), or intrinsics; a whole-function `__asm void f()` needs `armasm`, which the vendored zip lacks. Best near-misses: `__ldrex`/`__strex` with `v = -v; if (!__strex(v,p)) return 1;` scores 2 on try-negate. libc string primitives (`strlen` `FUN_00200e60` uses `uqsub8`, `strcmp` `FUN_001fe040`) are hand assembly, not C-matchable.

**Data.** Two byte-identical standard CRC-32 tables (reflected, polynomial `0xEDB88320`, 1 KiB each) at file `0x6ed4dc` and `0x6ee810` (`.rodata`), `lib/crt/crc_table.cpp`, registered as `[[data]]` and placed by `relink` (image hash unchanged). The first is referenced from a literal pool at `0x28570`, the second from `0x65d770`/`0x65dd28`. Two separate copies mean two upstream objects (zlib plus another).

**Flag hypotheses from outside hints, tested with scores (not trusted beforehand):**

| Hint | `GetNextBlockHeader` | `LightSemaphore_Acquire` |
|------|----------------------|--------------------------|
| `-O2`, `-Ospace`, `-O1`, `-O0` instead of `-O3 -Otime` | 51 in all three forms | 33 baseline; `-O2` 40, `-Ospace` 38, `-O1` 37, `-O0` 41 |
| `--no_inline` | 53 | 39 |
| `--no_autoinline`, `--forceinline`, `--no_hide_all` | no change | no change (34 without `--split_sections`) |
| `--split_sections` | no effect on bytes (as in §4.3) | same |
| `--no_strict_aliasing`, `--auto_inline` | not options in this ARMCC (`C3900U: Unrecognized option`) | same |
| All 4.0/4.1/5.04 builds | not swept, same result on 4.1 builds | 4.1 b713..b1454 33, 4.1 b561 35, 4.0 b902 35, 5.04 b82 39 |
| `--cpu=6K`, `ARM1136J-S` | 51 | 40 (6K) |
| `--cpu=5TE`/`4T`/`5T` | 51, **no `rev`/`rev16`/`uxtah`**: Swap16 becomes exactly retail's `lsr/and/orr` triple | not tried |

So no flag set fixes either. One real lead on `GetNextBlockHeader`: it does **not** contain `rev`, `rev16` or `uxtah`, although other retail code does (36 `rev`, 35 `rev16`). Under `--cpu=5TE` the 16-bit swap is already byte-exact, but `IsValidBinaryFile` (same file) needs `MPCore` (5TE gives 10), so the file is ARMCC MPCore and the swap is written in a form MPCore's `rev` recogniser misses. Under MPCore the spelling `u8 b0=(u8)v, b1=(u8)(v>>8), b2=(u8)(v>>16), b3=(u8)(v>>24); return (b0<<24)|(b1<<16)|(b2<<8)|b3;` with a `Swap16` of `(b0<<8)|b1` (`b0 = v & 0xFF`, `b1 = v >> 8`) avoids `rev` (53-55 instructions against 56) but adds an `r4` spill; the retail schedule uses only `r2`, `r3`, `ip`. Remaining differences are instruction order inside the swap, two separate `return 0` tails (retail uses compare plus `bls`, not a conditional move), and operand order in `add`. The `score` field stays 51 because `score` counts positional mismatches, so a structurally closer variant can score worse; compare the `--align` line count instead. The source still carries the old `rev` spelling; replace it once a full match exists.

`LightSemaphore_Acquire`: flags, builds and `--no_inline` did not move it, so the two dropped `strh [sp]` spills are a source-shape problem (retail keeps a volatile temporary of the atomic result), not a flag.

### 6.1.2 Menu binders (2026-10-01)

Ghidra addresses are file offsets (VA = file + 0x100000); the EngPatcher doc's `001eb3dc` etc. are those. None of the three binders in EngPatcher section 12.4 calls `GetText`, `DrawTextToPane` or `ParseClim`: they bind BCLIM file names to layout panes by name and call unmatched layout code (all callees are declared by address only in `externs.toml`). Source: `src/menu_bind.cpp`.

| Function | File off / size | Score | Notes |
|----------|-----------------|-------|-------|
| `OptionMenu_BindBtnTextures` (FUN_001eb3dc) | 1eb3dc / 19c | **0**, relinks byte-identical | Calls `MSelMenu_Prepare(m, 4)`, four `BindMSelBtnIconAndText`, `Finish1(m,0,0)`, tail `Finish2(m)`. The 8 BCLIM names sit after the code as inline `add rN, pc, #` string pool, so the size includes them. |
| `BindMSelBtnIconAndText` (FUN_0020ad74) | 20ad74 / e0 | 13 (was 30: a named `UiContext* ce` before the last call fixed the epilogue, and a `bool act` loaded first, kept from a read permuter run, gives 13; see 6.1.3) | 56 target instructions. Differences are only the first `m->active` load (retail: `ldr r3` early, then `movne`/`moveq`; the last call is a single `movne` on a freshly loaded `r1`; ours is the reverse) and one extra instruction. Source-shape variants (local flag, u32 args, ternary, hoisting, `UiContext*` local) do not move it. |
| `OptionMenu_BindPlateTextures` (FUN_0020bcc0) | 20bcc0 / 240 | 120 (111 with per-branch calls) | Retail: `cmp`/`beq` chain, one block per slot loading all three string addresses (the shared `Obj03_00_00` name appears once in the pool), pool placed mid-function. Ours: if-converted `addeq`, or duplicated Obj strings (191/212 vs 144 instructions); a `switch` becomes a jump table (143). |

Struct findings (names are guesses): the menu object has `s32 active` at +4 and an array of 8-byte slots from +0x78 whose first word is a layout pointer with the pane root at +8. The global at VA 0x8BFA40 points to a UI context with a resource handle at +0xB2C. Lookups use a 16-byte `PaneRef` filled by `FUN_005e8b54`, then `FUN_005eba00(root, name, ref, 0)` and `FUN_005e8720(ref, 0, resource, file)` bind the BCLIM. `BindMSelBtnIconAndText` has 10 callers. Rejected attempts: `handoff_drafts/FUN_0020ad74`, `FUN_0020bcc0`.

### 6.1.3 Text/Str/UI leaves (2026-10-01, game code, flags `--cpu=MPCore --arm -O3 -Otime`)

59 functions at score 0 (all relink byte-identically; `check`, `relink`, `pytest` green), plus 8 near-misses. Sources: `src/text_small.cpp`, `str_small.cpp`, `tagged_str.cpp`, `variant.cpp`, `misc_small.cpp`, `float_small.cpp`, `refptr.cpp`, `factory_small.cpp`, `inner.cpp`, `item.cpp`, `ui_small.cpp`, `ui_small2.cpp`, `ui_small3.cpp`, `utf8.cpp`. Picked with `python -m ctrdecomp rank` (there is no separate `callgraph` command; `callgraph.py` is the module behind `rank`): small callers of already-handled functions around `0x59e000`-`0x5a2000`, `0x5c95..`, `0x5d64..`, `0x1393..`. Symbol sizes in `symbols/code.bin.csv` are hex and **exclude** the literal pool: pass `size + 4 * pool words` to `diff`.

**Matched.** Font/glyph: `FontHeight` 6419d0, `FontLineHeight` 6419e4, `GlyphAdvance` 641a70, `DrawIcon` 5b2550, `DrawGlyph` 5b2578, `GlyphColumns` 5c0748 (six DrawTextToPane callees). Str family: `StrChar::StrChar` 59e2e4, `Str::Str()` 5a1fb0, `Str::Clear` 5a1eb0, `Str::~Str` 5a2024, `TaggedStr::~TaggedStr` 5a1fd0, `Label` ctor/D1/D0 2d5774/2d57c8/2d57a8. `Variant` setters 5a0fe0..5a101c (5). Float: `Clamp` 59b5d0, `RadToSinIndex` 59b5f0, `Fader::SetValue` 5a14e4, `EaseSin` 5d6d54. Others: `RefPtr::~RefPtr` 59f0a8, `Widget` ctor 5a0ce8, `Pair::Apply` 5a1adc, `Inner` ctor/dtor 2a070/2a080, `Item` ctor/D1/D0 5a051c/5a055c/5a0538, `Ring::Init` 5a2170, `Block::~Block` 5a2190, `EntryTable::SetEnabled` 5a1aa8, `Emitter::Send` 5a150c, `Handle` copy ctor 5a221c, `Holder::Get20/Get1C` 5a0b28/5a0c48, `Node` ctor 59f084, `UiUseA/B/C` 5c9624/5c9650/5c95ec, `Switch::On/Off` 5d649c/5d646c, `Trio::ClearAll` 5a4e8c, `ClearPair` 5c2b5c, `FlagA/B/C::Set`, `Gate::Apply`, `Latch::Set`, `UiGetByte`, `Fade::Update` (`ui_small2.cpp`), `GetTextIdx` 187454, `UiUseG/H`, `UiSync`, `Wide::Set`, `Eight::SetAll` (`ui_small3.cpp`).

**Near-misses (registered with their scores).** `TaggedStr` ctor 59e380 (17: retail rematerializes the flags `0` in `r1` and loads `r5 = 0` after the `m_flags` load; ours hoists one `r5`), `Recs::SetAll` 49a9a0 (4: flag in r5 and loop end in r6 swapped), `HolderUseD/E/F` 62d108/62d140/62d178 (2/2/3: retail emits `mov r2,#1` before `ldr r0,[r0]`; our order matches only when the first argument comes from a global), `Panel::SetSlot/SetFirst` 61a664/61b364 (12 each: retail does not tail-call, push/bl/pop, unpredicated compares; a non-void callee did not help), `Utf8Decode` 5c04bc (70: 6-byte UTF-8 decoder; retail loads all continuation bytes early), `BindMSelBtnIconAndText` 30 -> 13.

**Compiler habits learned (add to the §6.1 list).**

1. *A callee defined in the same translation unit changes the frame.* `GlyphColumns` is `push {lr}` (assembled as `str lr, [sp, #-4]!`), not `push {r4, lr}`, because ARMCC saw its callee `FUN_005c04bc` defined in the same TU and knows it needs no 8-byte pad. A bare declaration gives `push {r4, lr}`. A stand-in `__attribute__((noinline))` body in the TU reproduces it (never linked; `relink` places only `functions.toml` entries). About 330 `str lr` prologues exist in retail, so this is common: the callee is in the same file.
2. *The opposite: keep out-of-line callees in other files.* A ctor, dtor or helper defined in the same TU is inlined at `-O3`. `Inner` (`src/inner.cpp`) versus `Item` (`src/item.cpp`), and `Str` members versus `TaggedStr`, are separate files for this reason.
3. *armlink branch-to-next.* A tail call `b f` where `f` is linked at the very next address becomes `mov r0, r0` (`TaggedStr::~TaggedStr` -> `Str::~Str`, `Trio::ClearAll` -> `FUN_005a4ebc`). The object file still has the `b`; `ctrdecomp relink` now applies the rule (unconditional `B` whose target is `place + 4`), so these relink identically. `diff` shows `b X` against `mov r0, r0`; the score masks it.
4. *Independent stores are reordered by the scheduler.* `Ring::Init` stores `+8, +0xC, +0, +4, +0x10` in retail and is matched only by source order `c, d, a, b, e`; found by compiling all 120 permutations (about a minute with 8 workers). Do that before guessing.
5. *Named temporaries change schedule and register choice, in both directions.* `EntryTable::SetEnabled` wants `entries[idx]->flags |= 1` repeated in each branch (an `Entry* e` temp scores 5 to 10); `Wide::Set` wants `Child* a = m_50; if (a) ...` (3 without); `BindMSelBtnIconAndText` wants a named `UiContext* ce = g_UiContext;` before the last call only (30 -> 15) and a `bool act` loaded first (-> 13).
6. *Decrement as a statement, then re-read.* `RefPtr`: `m_obj->refs--; if (m_obj->refs == 0 && m_weak == 0) delete m_obj;` matches; `if (--m_obj->refs == 0 ...)` scores 5 (the `m_obj` reload lands on the other side of the `bne`). `delete p` is the vtable slot-1 call.
7. *Bool normalization order.* `Entry_UseG(e, a, b == 0)` gives `moveq/movne` in the opposite order from retail; `bool off; if (b != 0) off = false; else off = true;` matches.
8. *Constructor init list versus body.* Stores in the init list (`m_4(0), m_8(0)`) come before the base/member constructor call, stores in the body after it: `Label` ctor. Retail's `str vptr, [r0], #4` post-increment form appears for a class whose subobject sits at `+4` or `+0xC`.
9. *ARM C++ ABI: ctors and dtors return `this`.* ARMCC then reuses `r0` after a constructor call (TaggedStr, Item, Label). If retail keeps `this` in `r4` and ignores `r0` after the `bl`, that callee is an ordinary void function (`Node` ctor calls `HandleInit(this)`), not a base constructor.
10. *Hard float is the default for these flags*: float arguments arrive in `s0..s2`, and `vldr s2` (hi) precedes `vldr s1` (lo) in the `Clamp(v, 0, 1)` call; `Clamp` itself is `vcmpe/vmrs/vmovge`, then `vmovls`. A raw float compared as an integer (`cmp r1, #0x3f800000`) means the field is declared `s32`.
11. *Shrink-wrapping.* `Switch::Off` returns `moveq r0, #0; bxeq lr` before it pushes, so a null guard in front of a call needs no source trick.
12. *Loop shapes.* Arrays of pointers (`Eight`, `ClearPair`) are `for (i = 0; i < N; i++)` with `blne` on the non-null test; arrays of 0x30-byte records (`Recs`) are pointer loops `p != end`, and an index loop adds 2 instructions.
13. *Comparison literal.* Retail `cmp r1, #0x7f; movls` means `c <= 0x7F` (not `< 0x80`).
14. *Vtable references are `ABS32` with addend 8*: `externs.toml` stores `_ZTV<Class>` as vptr - 8 (`_ZTV6Widget = 0x0082D9EC`, `_ZTV5Label = 0x0081C9E4`, `_ZTV4Item = 0x0082D98C`). A destructor emits both the complete (D1) and deleting (D0, a tail call to `operator delete` `FUN_002024b0`) forms; both were matched for `Label` and `Item`.
15. *A wrapper may pass extra stack arguments.* `GetTextIdx` (`FUN_00187454`) calls `GetText` with a fifth argument (`1`, at `[sp]`) that `GetText` ignores, so call sites use a five-parameter prototype (`GetText5`, same address).

**Struct findings (names are guesses).**

- `Font`: word at `+8` points to a resource `FontRes`; `FontRes[0]` points to a `FontInfo` with `u16 height` at `+6` and `u16 lineHeight` at `+8`. `FontHeight`/`FontLineHeight` return 0 when `+8` is null. `FontRes` calls: advance `FUN_0063fe8c(res, code)`, icon draw `FUN_0058e96c(res)`, glyph draw `FUN_0058eeb0(res, x, y, glyph, 0)`. `GlyphColumns` is `Utf8Decode(s) < 0x80 ? 1 : 2` (`FUN_005c04bc` decodes the first character, 1 to 6 byte UTF-8, 0 for null or invalid).
- `Str` (0x18 bytes): `m_buf +0, m_text +4, m_chars +8, m_size +0xC, m_count +0x10, m_capacity +0x14`; the default ctor zeroes `+0, +0x14, +0xC, +0x10, +4, +8`; `Clear()` zeroes `+0xC, +0x10, +4, +8`; the destructor zeroes `m_capacity`, frees `m_buf` with `FUN_00029ed4(buf, 0)` and nulls it. `StrChar` is `{code, kind}`; its constructor zeroes both (`FUN_0059e2e4`).
- `TaggedStr : Str` (0x228): 64 inline `StrChar` at `+0x18` (built with `__aeabi_vec_ctor_nocookie_nodtor`, Thumb `FUN_000000ac`), then `m_chars +0x218`, `m_count +0x21C`, `m_flags +0x220` (bit 0 = `m_chars` is an owned heap block, freed with `FUN_001fcd88`), pad `+0x224`. Constructor and destructor share a `Reset()`: `Clear(); if (flags & 1) { free; chars = 0; flags &= ~1; } chars = inline; count = 0`. The destructor then tail-calls `Str::~Str`.
- `Variant`: `value +0`, `type +4`; type tags 2 int, 3 uint, 5 bool (byte store), 6 copied word, 0 cleared.
- Reference counting: object with vptr (slot 1 = deleting destructor) and `refs` at `+8`; `RefPtr { obj +0, weak +4 }` deletes when the count reaches 0 and `weak == 0`. `Handle` copies the pointer then calls retain `FUN_0002acc4`. `Inner { word +0 }`: ctor sets 0, dtor calls `FUN_00029b80(word)`.
- Widget family: `FUN_005a4ebc(child, flag)` is the common "set flag" (enable/visible-like) call; 20+ small setters just store a flag byte and forward it to one or more children (`Switch`, `FlagA/B/C`, `Latch`, `Eight`, `ClearPair`). `FUN_005b0144(child)` is its "show" counterpart (`Fade::Update`). `Fade`: flag byte `+0x198` (bits 1 and 2), float bits `+0x19C`.
- UI table lookup `Table_Find(g_UiContext, key, kind)` = `FUN_005c5cb0` (368 callers; the slot-table family matched by the parallel pass). Kinds seen: 1, 2, 3, 6, 0x19. Entry fields: `s32 +0x24`, `s8 +0x8D`. Holder objects whose first word is the context pointer exist too. `UiUseA/B/C` pass kind `0x19` and tail-call `FUN_00219f74` / `FUN_0021a054` / `FUN_001da498`.
- Math: `SinIndex(idx)` `FUN_005325b8` is a table sine over a 256-per-turn index (`RadToSinIndex` multiplies by `40.7436654 = 256 / 2pi`); `SinD` `FUN_0059b56c` is a double-precision sine (`EaseSin(t) = sin(clamp(t, 0, 1) * pi / 2)`). The default object `g_NullResource` (VA `0x009AB520`) is returned by accessors when the member is null (`Holder::Get20/Get1C`).
- `g_TextIds` VA `0x007BD472` is a `u16` id table that `GetTextIdx` indexes before calling `GetText` (`id = (pack << 8) | slot`).

**For DrawTextToPane (parked).** Habits 1, 2, 5, 6, 7 and 9 apply directly: look for same-TU callees (frame and prologue), local temporaries for the `CharAt` iterator results, and pre- versus post-decrement/increment spellings in its two loops. `Str::~Str`, `TaggedStr::~TaggedStr`, the Font accessors and `GlyphColumns` it calls are now matched and in `functions.toml`; `src/draw_text.cpp` was not touched.

### 6.1.4 Str / TaggedStr family and exotic shapes (2026-10-01, same flags)

Matched at score 0: `Str::Decode` `FUN_005a1c98` (`src/str_decode.cpp`), `Str::Set(const char*)` `FUN_005a1dcc` (`src/str_set.cpp`), `FUN_005a1408` (`src/obj_init.cpp`). Near-misses registered with scores: `TaggedStr::Parse` `FUN_0059dfc4` 158 (`src/tagged_parse.cpp`), `TaggedStr(const char*)` `FUN_0059e2f4` 23, `Pair::ApplyScaled` `FUN_005a1a58` 11, `CopyDerived` copy ctor `FUN_005b1ba8` 2 (`src/handle_obj.cpp`), `Utf8Decode` 70 -> 53. Unchanged: `TaggedStr` ctor 17, `Str::Str` 8, `Lookup` 9. `FUN_005a1fd0` (`TaggedStr::~TaggedStr`) was already 0.

**New habits (16 onward).**

16. *Increment clause of a `for`.* `Str::Decode` was 4 with the pointer/index updates at the end of a `while` body (the compiler emitted a writeback store `str r5, [r4, #4]!`); the same updates in `for (; pos < size - 1; pos += len, out += 2, n++, p += len)` are 0. Try this before reordering statements in any pointer-walking loop.
17. *Early `return` for the null/empty case.* `Str::Set` is 43 with `if (s != 0) { ... } return true;` and 0 with `if (s == 0) return true;` first: retail's `movs r5, r1 ... moveq r0, #1 ... beq epilogue` is the early return.
18. *Signed char.* `ldrsb` in retail means `*(const signed char*)p` (ARMCC plain `char` loads as `ldrb` here).
19. *Placement array new with a null guard.* `m_chars2 = mem ? new (mem) StrChar[n] : 0;` gives retail's `cmp r0, #0 ; nop ; beq` and the `blx __aeabi_vec_ctor_nocookie_nodtor` (Thumb callee, address `0x1000AD`) with no extra store. `p = 0; if (mem) p = new ...` (adds a `streq`) and a bare `new (PoolAlloc(..)) StrChar[n]` (null check removed) are both worse. `operator new[](unsigned, void*)` must be declared inline in the TU.
20. *The `nop` before a `bl` is ARMCC's own.* `mov r0, r4 ; nop ; bl X` (Set, Str::Str) and `cmp r0, #0 ; nop ; beq` (Parse) are emitted by the compiler (ours has them too), not linker branch-to-next or weak-call rewrites.
21. *Lead-byte mask as shifts.* Retail masks the lead byte of the 3 to 6 byte UTF-8 forms as `(c << 28) >> 16`, `(c << 29) >> 11`, `(c << 30) >> 6`, `(c << 31) >> 1` (lsl/lsr), and the 2-byte form as `and #0x1f`. Writing the shifts gives retail's instruction count (85 = 85) and lowered `Utf8Decode` 70 -> 54; named per-form locals for the continuation bytes help; still 53.
22. *A non-polymorphic base sits after the vptr.* `FUN_005b1ba8` has vptr +0, a `Handle` at +4 and a word at +8 and stores two vptrs (`0x82DF74`, then `0x82DF4C`). That is `class CopyBase : public Handle { u32 m_8; ... virtual ~CopyBase(); }` and `class CopyDerived : public CopyBase {}`: the inlined base copy ctor stores its own vptr between the Handle copy and the word copy. With the word in the derived class the base's vptr store is dropped (score 9). A `Handle` member instead of a base stores the vptr first (9). Declare the virtual dtors without a definition so no vtable is emitted; vptrs relocate against `_ZTV<Class>` externs (value = vptr - 8).
23. *A function can take a pointer to a member.* `FUN_005a1408` receives `&obj->m_8` in r0, calls the `Inner` ctor `FUN_0002a070` on it, uses its returned r0 (the ARM ctor-returns-this ABI) and returns `r0 - 8`. A free function `Inner* InnerInit(Inner*)` plus `(Obj*)((char*)InnerInit(in) - 8)` is score 0; placement-new of the member (score 15) throws the return value away. Same lesson as habit 9: use the callee's return value, do not re-derive `this`.
24. *Live-range split of a zero (not solved).* Both `TaggedStr` constructors store the flags `0` from `r1` right after the vec-ctor call and then recreate the zero for `Reset()` in `r5`/`r6` (`mov r6, r1`); ours keeps one callee-saved register. Init-list stores, swapped stores, `m_flags &= 0` and moving `m_chars2 = 0` did not move it.
25. *Argument copies before a loop hint at an inline helper's parameters.* In `Parse`, the `'>'` search loop has `mov r1, r4 ; mov r3, r6 ; mov ip, r6` before it: copies of `this` and `m_count` for an inlined helper `FindChar(const Str*, from, end, ch)`. Writing the loop as that inline function matched the shape (it reloads `m_chars` per iteration); it did not close the score.

**Batch 2026-10-01 (above 0x500000, all score 0).** `src/thunks_hi.cpp`: six `AdjustedCall` wrappers (`Sub2a080(p + 4) - 4`: `FUN_005b1be0/2010/28a8/2ca0/340c/5aac`), three vptr-storing sub-object ctors (`FUN_005b2bb0/33f0/5ca0`; `r = Sub2a070(p [+4]); *(r - 4) = vtbl; return r - 4`), `CopyVec3` `FUN_0059cb38`, `SetNodePos`/`SetNodeScale` `FUN_005e7d74`/`5e8254`. `src/misc_hi.cpp`: `PickByte` `FUN_005bb940`, `BothFlags` `FUN_006422f0`, `TableEntry` `FUN_005a2844`, `SetIfNot` `FUN_00610b80`. Habits: (26) a flag read-modify-write after float stores needs `u8 f = n->flags; n->flags = f & 0xcf;` so `vstm` is scheduled before the `ldrb` (`n->flags &= 0xcf` hoists the load: score 3); (27) `cmp r1,#0 ; ldrbne ; cmpne ; ldrbeq ; movne` is `if (a == 0 || b == 4) return c; return b;`; (28) a call through a raw vtable slot is `((u32(*)(B*))b->vt->s[N])(b)`; a bool result matches as `if (call() != 0) r = false; else r = true;` (the `r = call() == 0` form swaps `movne`/`moveq`, score 2). `TaggedStr::Parse` re-tried with nested ifs and an inline `TagEnd` helper: 158 -> 160, no gain; retail does not hoist the `0x20474D49` literal or the `4` offset out of the loop (more register pressure than ours), still unexplained. Near-miss: `FUN_005eab70` (12; retail keeps `this` copy in `r2` and the bool result in `r2`).

Later 2026-10-01: `DecodeOrDefault` `FUN_005c032c` and `GetNodePos` `FUN_00642b98` matched (zero vec built as `z = y = x = 0.0f`; default loaded before the call gives `push {r4, lr}`). Near-misses not registered: `FUN_006111ec` (5; retail keeps `8` in `r2` after the first store and the record pointer in `r4`), `FUN_00642bd0` (18; retail passes `q` in place in `r1` via `&in->q` writeback), `FUN_006511c8` (3; retail pool has an unused word `0x008B86F8`, and `0x100000` is loaded from the pool, i.e. an address, not an immediate).

**Struct findings.**

- `Str` (0x18): `m_chars +8` points to records `{u32 code, u32 offset}` (8 bytes); `offset` is the byte offset of the character inside the UTF-8 copy at `m_text +4` (so `m_text + offset` is the pointer to it). `Str::Decode()` fills them: 1 to 4 byte sequences via `FUN_0056b06c(p, n)` (decode n bytes); `\r` (0x0D) becomes code 10 and consumes `\r\n` as 2 bytes; any other lead byte ends the decode. `Str::Set(const char*)` (the body of `Str::Str(const char*)` without the `m_buf`/`m_capacity` zeroing) returns `bool` (false on allocation failure). `At(i)` is `i >= 0 && m_count > i && m_chars ? m_chars[i].code : 0`; `TextAt(i)` is `m_text + m_chars[i].offset` (null for an invalid index).
- `TaggedStr::Parse(const char*)` (`FUN_0059dfc4`): `Reset(); Set(s);` then, if `m_count > 0x40`, a heap array `PoolAlloc(n << 3, 0, 0x10)` (`FUN_00021ca0`) with placement array-new of `StrChar`, and flag bit 0 set. It scans the `Str` characters: a `<` at `i` with `=` at `i+5`, a `>` somewhere after `i+6`, and characters `i+1..i+4` spelling `"IMG "` (`c4 << 24 | c3 << 16 | c2 << 8 | c1 == 0x20474D49`) becomes ONE record `{hex value of the characters between '=' and '>', kind 1}` (digits 0-9, a-f, A-F; an invalid digit gives 0, a NUL ends the number); any other `<...>` with a `>` is skipped through its `>`; everything else is `{ch, kind 0}`. So `kind 1` records are inline icons (`<IMG =XXXX>`), which `DrawTextToPane` draws with `DrawIcon`. It returns `true` and sets `m_count2`, `false` only if the heap array failed.
- `FUN_0059e2f4` is `TaggedStr::TaggedStr(const char* s)`: `Str::Str()` + the 64-element vec ctor, `m_flags = 0; m_chars2 = 0;` (stores use the vec-ctor's returned pointer, +0x200/+0x208), `Reset(); Parse(s);`, returns `this`.
- `FUN_005a1408`: object with words at `+0, +4` zero, an `Inner` at `+8`, floats `+0xC = 1.0, +0x10 = 0.0`, ints `+0x14 = 2, +0x18 = 0`.
- `FUN_005a1a58`: like `Pair::Apply`, but scales a raw integer in `s0` by `0.06` (`0x3D75C28F`, `vcvt.f32.u32` in place) before applying it to both channels; the second argument (r1) is unused, `a` is r2.

**Parse (158) status.** Matches: prologue, `Reset`, `Set` call, the `n > 0x40` allocation block (including the `nop`). Differs: ours merges the `i + 7 <= count` test and the `At(i+5)` bounds check into one predicated chain (`addge/cmpge/cmpge`) and drops the redundant `m_chars != 0` tests; retail keeps separate branches and re-tests `r8 != 0`; retail keeps `m_chars` in `r8` and `m_count` in `r6` across the body and reloads `m_chars` through a copy of `this` in the `'>'` loop. Tried: named `FindChar`, `u32*`/`s32*`/`unsigned char*` element pointer (no effect), `m_count` as `u32`, several alloc spellings (`handoff_drafts/FUN_0059dfc4`). Next idea: read `m_chars`/`m_count` once into locals per iteration and run the `At` checks on the locals, which would explain the `r8`/`r6` caching and the repeated non-null tests.

## 7. Parallel with the patcher

- Localization bugs stay in EngPatcher. This folder does not gain deploy scripts.
- New addresses discovered while matching stay here, and get a short pointer in the patcher doc when they explain a screen.
- Vanilla bytes only. Re-extract `code.bin` from the retail dump when a patcher backup might have been copied over the original.
- Azahar remains the way to play the English build on Windows. A matching decomp does not raise the title-screen frame rate. A later native renderer could. That renderer is step 7 in §5, and it waits on the match.

---

## 8. Reusable tooling (goal)

Added 2026-09-29. Anything built here should make the next 3DS decomp cheaper, not only this one.

1. **A game-agnostic package.** `ctrdecomp/` (installable, see `pyproject.toml`) holds extraction, the build/flag sweep, the diff with relocation-destination check, asm export, the Ghidra bridge, and `check`. It takes a `ctrdecomp.toml` rather than hardcoded paths, and handles ARM and Thumb (Thumb is covered by a round-trip test, since this game has only 200 Thumb functions and none matched yet). **Status: done, v0.1.** Game-specific data (`ctrdecomp.toml`, `functions.toml`, `src/`, `asm/`) stays outside the package.
2. **Library matches kept separate.** NintendoWare and CTR SDK functions go in their own source folder (`lib/nw4c/`, `lib/nnsdk/`) with their own function list, so another project can pull them in, or they can be contributed to the existing [nnsdk](https://github.com/3dsdecomp/nnsdk) and NW4C efforts. **Status: not started.** `lib/nw4c/lyt_clim.cpp` (NW4C) moves there when the second library function matches.
3. **Findings written up for Decompedia’s 3DS page**: the ARMCC 4.1 `-O3 -Otime --cpu=MPCore` result, `nop` as a compiler scheduling filler, “shared static base literal = same translation unit”, and inline-helper boundaries mattering more than expressions. **Status: not started.** Write it after gap 2, when the claims have been tested on more than a handful of functions.
4. **Match-order ranking (2026-10-01):** `python -m ctrdecomp rank [symbols.csv] [--top N]` (`ctrdecomp/callgraph.py`) builds a direct call graph from `symbols/code.bin.csv` (`bl`/`blx` and tail-call `b`; vtable and function-pointer calls are invisible, so a "leaf" may still call virtually) and lists what to match next. Result on the 31,721-function list with 23 handled: 10,158 leaves, and 4,004 more functions whose callees are all leaves or handled, so about 45% of the binary has nothing blocking it but itself. Highest fan-in small leaves: `0x5c6e84` (664 callers, table lookup by key), `0x5c5e00` (588) and `0x5c5cb0` (368), which index one structure (groups `0x514` apart, 0x28-byte slots from `+0x104`, 32 slots) and are best matched together (**matched 2026-10-01**, `src/slot_table.cpp`, all score 0: the spelling that works is `Slot* s = group->slot;` then `i < 32 ? s[i + 1].f0 : 0`, i.e. ARMCC folds the `+0x104` into the load unless the slot pointer is a local); `0x5e7d18` (310, sets bits in the flag byte at `+0xb7`; **matched**, `src/flag_setters.cpp`, as is `0x5a4ebc` `SetFlagBit1`, where the schedule only matched with `u32 f = flags & ~2; u32 v; if (on) v = 2; else v = 0; flags = f | v;` and not with `?:` or compound assignment); `0x1fddd8` (564, hand-written zero-fill, probably CTR SDK assembly and likely unmatchable from C like the `nn::os` atomics); `0x5eba00` (807, only indirect calls through vtable slot `+0x2c`). Cheap next steps: about 30 small callers of already-handled functions around `0x4ec0b0`-`0x4ec5e4`, `0x5849d4`-`0x585cb8`, `0x38be2c`-`0x38bec8`. Suggested order: the `0x5c5cb0` family, then those callers, then the 4,004 ready functions, with assembly leaves last. **Status: done.**
5. **Mass-matching tiny functions (2026-10-01):** `tools/wrapgen/` (see its README) matches "ready" functions (all callees leaves or handled) automatically: fixed templates for tail-call/forwarding shapes plus `lift.py`, a symbolic lifter that turns straight-line ARM (calls, stores, pool constants, `cmp #0; beq` null checks) into C++ and keeps a candidate only when it scores 0. `python -m ctrdecomp rank --ready-below ADDR` lists the candidates. First runs below 0x500000: 45 template matches, then 175 lifted matches for functions up to 0x30 bytes, all score 0 and byte-identical after `relink`. They are compiler-checked shapes with placeholder names (`W_<offset>`, callees `Fn_<offset>_<argc>`, data `g_<VA>`), not recovered semantics. Exception-vector entries (file offsets below 0x100) must be excluded: score 0 ignores the branch's condition and link bits and `relink` catches it. **Status: running; 2,504 ready functions below 0x500000 when started.**
6. **Assembly sources (2026-10-01):** `.s` files in `functions.toml` are assembled with `clang --target=armv6k-none-eabi` (`compile_obj`), because ARMCC's embedded `__asm` needs `armasm`, which is not vendored. `src/crt_asm.s` holds the hand-written C runtime routines `MemZero` (0x1fddd8, 564 callers), `MemCopyAligned` (0x20004c, 422), `MemCopy` (0x202b20, 240) and `StrLen` (0x200e60, 150) and `StrCmp` (0x1fe040, 182), all byte-identical. The same route should work for the `nn::os` atomics that failed in C (0x1b4bc, 0x4f4574, 0x16290, `LightSemaphore_Acquire`). `src/core_small.cpp` has engine helpers with 90-125 callers: `Vec3Copy`, `Vec3Sub`, two bounds-checked pointer-array getters (`ArrayAtU`/`ArrayAtS`, differing only in signed vs unsigned index) and `Mtx34Copy` (score 7: retail loads both 6-float halves before storing). **Status: done for these.** The `nn::os` atomics and light semaphore (`LightSemaphore_Acquire`, `_Init`, `AtomicSet1`, `AtomicSetState`, `AtomicTryNegate`) went the same route in `lib/nnsdk/nn_os_atomics.s`, byte-identical including the relocated `bl` and literal-pool pointer; `tools/wrapgen/asmify.py` emitted 16 more small SDK atomics (`lib/nnsdk/nn_os_atomics2.s`) straight from the retail bytes. Those are placeholders (`A_<offset>`), kept as assembly because it is hand-written library code with no C to recover.
7. **Kernel/IPC wrappers and mass passes (2026-10-01):** `gen2.py` over every unhandled ARM function up to 0x40 bytes above 0x500000 matched 1,089 (`src/gen/hi_*`); over everything up to 0x100 bytes it matched 277 more (`src/gen/big_*`). Yield falls because the lifter only handles straight-line code with `cmp #0; beq`; the large unmatched mass is about 9,000 functions of 0x20-0x80 bytes with real branches. `tools/wrapgen/asmify.py` took the 1,191 leaf functions that contain `svc` (1,119 are `svc 0x32` SendSyncRequest IPC stubs) into `lib/ctrsvc/svc_wrappers.s`, byte-identical. `tools/svc_table.py` writes `symbols/ipc_commands.csv`: for 1,071 of them the IPC header (cmd id, normal and translate word counts), direct caller count and the service-handle global (24 distinct handle globals, e.g. 0x8b8764 with 223 stubs). Service names come from the service-name strings (`cam:u`, `y2r:u`, `cecd:u/s`, `mic:u`, `srv:pm`, `ndm:u`, `ir:USER`, `ac:u/i`, `fs:USER`, `dsp::DSP`, `boss:*`, `hid:*`, `ptm:*`, `cfg:*`, `gsp::*`, ...) whose init function stores the handle global next to the string pool word: 269 stubs are named in the CSV `service` column (cam:u 0x8aab70, y2r:u 0x8aaeb4, cecd:u 0x8b8778, cecd:s 0x8b877c, mic:u 0x8b7d48, srv:pm 0x8b85f4, ndm:u 0x8b8818, ir:USER likely 0x8bf998, ac 0x8ab858 ambiguous). Not yet named: the 223 stubs on 0x8b8764 and 217 with the handle passed as an argument; the `fs:USER`/`dsp`/`gsp`/`hid` globals are not used by the stubs found so far. The `gsp`/`hid`/`ptm`/`cfg` names sit in a table read by `FUN_0068f668`. Gotcha: a tail call to a function that never returns must be declared `__attribute__((noreturn))` or ARMCC emits `b` where retail has `bl`; score 0 does not see it, `relink` does, so always run `relink` after a mass pass.

Rules for this work:

- Do not grow a parallel toolchain beyond what is missing. objdiff does the diff UI and progress reporting; use it (or asm-differ) rather than writing a viewer. 3DS-Decomp-Pipeline is not a dependency (no LICENSE, §5.2); `ctrdecomp relink` replaces its split/relink role for this project. Anything generally useful (the destination check, the build/flag sweep, pointer/prologue seeding and pool-aware sizing as a Ghidra script) stays in `ctrdecomp` for reuse on other 3DS games.
- **Permuter (built 2026-09-30):** `python -m ctrdecomp permute <name> --lines A-B` (`ctrdecomp/permute.py`). It is our own hill-climber, not decomp-permuter: it rewrites a marked source region (statement order, temporaries including hoisted member loads, comparison direction, `x != 0` vs `x`, increment forms, local integer types, operand order), recompiles each variant with ARMCC (about 0.3 s each, 14 jobs ≈ 150 variants/s), and keeps a variant when `aligned diff lines + score/4` does not get worse. The positional term matters: without it the search accepts rewrites that change behavior. Anything that reaches score 0 is written to `build/permute/<name>/` and stops the run. First results: `Str::Str` 21 → 8 in about 4 minutes; `TextResource::Lookup` aligned diff 22 → 18, score still 9 (the sl/fp swap needs a rewrite the mutators do not make yet). Later the same day it gained if/else branch swap with a negated condition, `&&`/`||` operand order, compound assignment forms and shift-for-multiply; another 5 minutes on both functions (about 40,000 variants each) found nothing new, so both stay near-matches. Not built: inlining `Find`/`Reserve` differently, `for`/`while` swaps.

---

## 9. TODO: native port and frame rate (added 2026-09-30)

Not started. This is the design intent for gap 7 (§5), recorded so the questions are not lost. Nothing here blocks matching.

**Goal.** A native build (PC first, Android after) that runs the matched game logic with the `nn::` and PICA200 layers replaced, at 60fps. Android is the same port plus touch input, app pause/resume and packaging. The user supplies their own game dump; no Konami assets go in the repo or the app.

**Frame-rate goals.**

| Target | Goal | Status |
|--------|------|--------|
| Real 3DS | Stable 30fps in heroine scenes (now about 20fps), by disabling or cheapening specific render passes | Not started. Needs the renderer named first (gap 3) and hardware timing runs. |
| Native port (PC, Android) | 60fps in heroine scenes with the full original visuals | Not started. Depends on questions 2 and 3 below. |
| Native port (PC, Android) | 60fps everywhere | Not started. Same dependencies. |

60fps in heroine scenes on a real 3DS is not a goal. Getting there would mean drawing about a third of what the game draws now, so it would no longer be the same game. 60fps in light scenes and menus on the 3DS is a possible stretch goal if the frame interval turns out to be a single tunable value (question 1).

**3DS optimization notes.**

- The GPU cost of a render pass cannot be measured in an emulator; Azahar runs PICA200 commands on the host GPU. Test each change on real hardware, one pass per build, and watch the frame rate.
- Do not NOP a `bl` blindly. Skipping a call that returns a value or sets up state leaves garbage in registers and can crash on hardware. Make the function return immediately with a valid value, or branch past the call and its result handling.
- The ARM NOP is `0xE320F000` (`0x00000000` is `andeq r0, r0, r0`, not a NOP). The Thumb NOP is `0xBF00`.
- Because the game falls to the next vblank divisor when it misses a deadline, a small saving can move a scene from 20 to 30fps.

**Observed frame rate (reported from play on hardware, not yet confirmed in code).** About 20fps while a heroine model is on screen, about 30fps when none is. Both are exact divisors of the 60Hz refresh (every 3rd and every 2nd vblank).

**Hypothesis to test.** The game waits a set number of vblanks per frame and lengthens that interval when rendering is heavy. If so, the 20fps drop is a PICA200 load limit, not a design limit, and the interval is probably one tunable value.

**Open questions, in order:**

1. **Find the vblank wait / swap-interval code.** Look for the frame-end call into `nn::gx` (or the GSP wait-for-vblank event) in the main loop, and where its interval comes from. Check whether the interval is chosen per scene, per frame from measured load, or fixed.
2. **How does logic and animation advance: per rendered frame, or per unit of time?** Per frame means the game runs slower at 20fps than at 30fps (visible as slowdown in heroine scenes) and 60fps needs a fixed logic tick with interpolated rendering. Per unit of time makes raising the frame rate much easier. Confirm on hardware or Azahar by timing a fixed scripted animation in both cases.
3. **What is the authored rate of character animation data?** If it is 30fps keyframes, 60fps rendering needs interpolation between keyframes. This depends on the (still unspecified) mesh/skeleton format, gap 5.
4. **How much of the matched code is portable?** Code that matched ARMCC output may assume 32-bit pointers, struct packing, and endianness of layouts. Compile one small matched module natively (`GetText`/`Lookup` is the smallest self-contained candidate) and record what breaks before committing to the port.
5. **How much of rendering is PICA200-specific state?** If the renderer sets up shader, combiner and command-list state directly, the graphics layer is most of the work. Look at how Azahar's renderer consumes GPU command lists before choosing OpenGL ES or Vulkan.

**Emulator caveat.** Azahar is not a reference for hardware behavior. Mods that ran there have crashed on real 3DS hardware (likely causes: memory limits, uninitialized memory, cache coherency, timing, lenient service emulation). Use the matched code as the reference for the port, and real hardware (Luma3DS GDB stub and crash dumps) for anything subtle.

**Repo boundary and portability rule (decided 2026-09-30).** The port does not live in this repo. This repo's definition of done is byte-identical ARMCC output, and the port needs changes (pointer width, platform calls, a new renderer) that would un-match functions or force `#ifdef`s into matched code. When the port starts, it goes in a separate repo that pulls the matched sources in as a submodule or vendored copy and adds a shim layer for the `nn::` calls and the renderer. Portability fixes live there as wrapper headers or patches; carry one back here only if it still matches.

Until then, keep matched source portable where it costs nothing:

- Prefer fixed-width types (`u8`/`u16`/`u32`) for data that mirrors a file or memory layout.
- Do not write code that depends on undefined behavior beyond what the match itself forces. Where a match does force a non-portable idiom, mark it with a short comment.
- Keep `nn::` and hardware calls behind the existing extern prototypes rather than inlining register or address constants into game logic.
- Never trade a match for portability. If they conflict, the match wins and the port repo deals with it (question 4 above records what breaks).

**Distribution note.** An app that asks the user for their own game files avoids shipping assets, but Play Store acceptance is not guaranteed; sideloading an APK is the dependable route. iOS distribution is much harder and is a later maybe.
