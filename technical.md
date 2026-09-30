# New Love Plus+ — matching decompilation notes

Working notes for a **matching decompilation** of title `00040000000F4E00` (New Love Plus+), kept in parallel with the English patcher.

| Tree | Role |
|------|------|
| `../NewLovePlusPlusEngPatcher/` | Localization. Text, UI textures, small `code.bin` caves, gold bake, Drop CIA. |
| `nlpp-decomp/` (this folder) | Reconstruct C/C++ that compiles back to the **vanilla** retail binary. |
| Vanilla dump (path in `ctrdecomp.local.toml`) | `00040000000F4E00_v00.3ds` (decrypted NCSD) and `extracted/exefs/code.bin`. There is no `extracted/romfs/` there; read RomFS from the `.3ds`. Treat as read-only. |

The match target is vanilla `code.bin`, not `release/name_input_code.bin`. The English caves (name input, message speed, title-hub null-pane guard, CESA) are patches on top of retail. Matching those patched bytes would bake the translation into the decomp.

A Windows program is a **second project**. It starts only after large parts of this binary match. Ship of Harkinian exists because Ocarina of Time was already matched. Azahar running the patched CIA is the playable Windows build until then.

Last updated 2026-09-29 (gaps 1–2 filled; 2 matches, 2 near-matches; `ctrdecomp` package).

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
| 3 | SDK not subtracted | Game functions and `nn::` / `nw::` are mixed together | Signature-scan `code.bin` against public `nnsdk` and NintendoWare matches. Name hits. Leave them as included library objects, the way N64 projects include `libultra`, instead of decompiling Nintendo’s OS again inside this game. |
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

`python -m ctrdecomp relink [-o build/relink/code.bin]` (`ctrdecomp/relink.py`) compiles every function in `functions.toml` with `score = 0`, resolves each relocation from a declared address (`functions.toml` for functions with source, `externs.toml` for everything else), writes the bytes over a copy of vanilla `code.bin`, and reports whether the image is byte-identical. Relocation bytes are computed, not masked, so a wrong callee or data address fails. Checked 2026-09-29: with a deliberately wrong `GetNextBlockHeader` address the rebuilt image differs by one byte at the branch. Resolves ARM `BL`/`B` (a `BL` to a Thumb callee becomes `BLX`), Thumb `BL`/`BLX`, and `ABS32`; a Thumb function’s address carries bit 0 set, in `externs.toml` and via `thumb = true` in `functions.toml`. `[[data]]` entries in `functions.toml` (`name`, `offset`, `size`, `src`, `symbol`; file offsets into `.rodata`/`.data`) place initialized data and pointer tables the same way; uninitialized (bss) symbols go in `externs.toml`. Thumb and data are covered by synthetic tests, not yet by a real function. `python -m pytest` runs it.

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
| `FUN_00542c30` (VA `0x00642C30`), 0xDC bytes incl. a 3-word pool | `ParseClim`. Likely an NW4C `nw::lyt` internal; the real NW name is unknown. | `src/lyt_clim.cpp` | ARMCC 4.1 b713–b1454, `--cpu=MPCore --arm -O3 -Otime` | None: decomp.me's API is blocked by Cloudflare, so it was matched locally (`python -m ctrdecomp diff`). To make a public scratch, paste `asm/FUN_00542c30.s` and pick compiler `armcc_41_1454`. | **Yes**, by mapping, not by link. `+0x54 R_ARM_CALL IsValidBinaryFile` → retail `BL 0x00541CE0`. `+0x80 R_ARM_CALL GetNextBlockHeader` → retail `BL 0x00541D60`. Both prototypes agree with the callees' disassembly. The pool has no relocations, and its three words match literally. A link-time check waits on gap 6. |
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

Callees named by this match (prototypes in `src/lyt_clim.cpp`): `FUN_00541ce0` = `IsValidBinaryFile(header, sig, version, minBlocks)` (EngPatcher §5.4 "shared NW4C header check"), and `FUN_00541d60` = `GetNextBlockHeader(header, prev)`, which takes a byte-swapped path when the BOM is not `0xFEFF`. Both are `nw::ut` in NintendoWare. Treat them as library functions (§5 gap 3) rather than matching them here.

Callees named by the text lookup (prototypes in `src/text_resource.cpp`): `FUN_0001611c` / `FUN_00016288` are an `nn::os` light-semaphore acquire (LDREX/STREX count, waits below 1) and release (`FUN_0001b58c(sem, 1)`), CTR SDK. `FUN_0056eb20` = `TextResource::Init`, which walks the TRB sections and fixes up pointers. `FUN_00200e60` strlen, `FUN_00202a48` strcpy, `FUN_00021ca0` alloc(size, 0, 0x10), `FUN_001fcd88` free, `FUN_005f1f08` a text logger (hooked only when `+0x1001C` is set). Statics: `g_TextSystem` VA `0x008AA7A4`, the node pool VA `0x009A0600` (free/used lists, count at `+0x708`, semaphores at `+0x710/+0x718/+0x720`), and the last-lookup record VA `0x009A04F4` `{offset, length, u16 type, u16 valid}`. TRB entry `type` 1 = plain string (strcpy), 2 = empty, anything else = codebook bytes (`0x80` flag → 15-bit code).

## 7. Parallel with the patcher

- Localization bugs stay in EngPatcher. This folder does not gain deploy scripts.
- New addresses discovered while matching stay here, and get a short pointer in the patcher doc when they explain a screen.
- Vanilla bytes only. Re-extract `code.bin` from the retail dump when a patcher backup might have been copied over the original.
- Azahar remains the way to play the English build on Windows. A matching decomp does not raise the title-screen frame rate. A later native renderer could. That renderer is step 7 in §5, and it waits on the match.

---

## 8. Reusable tooling (goal)

Added 2026-09-29. Anything built here should make the next 3DS decomp cheaper, not only this one.

1. **A game-agnostic package.** `ctrdecomp/` (installable, see `pyproject.toml`) holds extraction, the build/flag sweep, the diff with relocation-destination check, asm export, the Ghidra bridge, and `check`. It takes a `ctrdecomp.toml` rather than hardcoded paths, and handles ARM and Thumb (Thumb is covered by a round-trip test, since this game has only 200 Thumb functions and none matched yet). **Status: done, v0.1.** Game-specific data (`ctrdecomp.toml`, `functions.toml`, `src/`, `asm/`) stays outside the package.
2. **Library matches kept separate.** NintendoWare and CTR SDK functions go in their own source folder (`lib/nw4c/`, `lib/nnsdk/`) with their own function list, so another project can pull them in, or they can be contributed to the existing [nnsdk](https://github.com/3dsdecomp/nnsdk) and NW4C efforts. **Status: not started.** `src/lyt_clim.cpp` (NW4C) moves there when the second library function matches.
3. **Findings written up for Decompedia’s 3DS page**: the ARMCC 4.1 `-O3 -Otime --cpu=MPCore` result, `nop` as a compiler scheduling filler, “shared static base literal = same translation unit”, and inline-helper boundaries mattering more than expressions. **Status: not started.** Write it after gap 2, when the claims have been tested on more than a handful of functions.

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
