# Agent handoff — nlpp-decomp

Paste everything below the line into a new agent. Open this repository as the workspace if you can. The English patcher is a sibling repo, not this project.

---

You are continuing a matching decompilation of New Love Plus+ (3DS title `00040000000F4E00`). Read `technical.md` in this folder before any other work and follow it. It is the plan. This handoff is the state.

## Why this exists

The user plays the English patch on a real 3DS. The title screen frame rate is poor. That scene is a real-time 3D heroine on the PICA200. The English patch does not cause it. A Switch port of the retail binary would spend the extra hardware on 3DS emulation. A native Windows build needs a matching decomp first, then a new renderer. They chose to start the decomp in parallel with localization, in this separate folder.

## Trees

| Path | Role |
|------|------|
| this repository | This project. Matching C/C++ for vanilla `code.bin`. |
| `../NewLovePlusPlusEngPatcher/` (sibling checkout) | English patcher. Do not add decomp tooling here. Addresses and UI facts live in its `docs/technical.md`. |
| Vanilla dump (path in `ctrdecomp.local.toml`) | Read-only. `00040000000F4E00_v00.3ds` (decrypted) and `extracted/exefs/code.bin`. There is no extracted RomFS; read it from the `.3ds`. |

Ghidra image base is 0. Runtime VA = file offset + `0x100000`.

## Decisions already made

- Match vanilla `code.bin` only. `release/name_input_code.bin` contains English caves (name input, message speed, title-hub null-pane guard, CESA). Matching those bytes would bake the translation into the source.
- A function is done when it compiles with the original compiler to the same bytes. Plausible C is not a match.
- Compiler is expected to be ARMCC. Flags are unknown. Do not copy SEAD or another game’s flags and treat them as this title’s.
- Do not decompile the CTR SDK or NintendoWare again inside this game. Identify those functions and leave them as libraries, the way N64 projects include `libultra`.
- First match slice, in order: BCLIM upload (`FUN_00542828`, `FUN_00542c30`), text lookup (`FUN_005c0e7c`, `FUN_0056ed00`), MakeStr / DrawText (`FUN_005a1ec8`, `FUN_0054b880`), then the menu binders. Stay out of the title-scene renderer until those match.
- A Windows port is gap 7. Do not start it. Azahar running the patched CIA is the playable Windows build.
- This folder does not patch `img.bin`, ship a CIA, or replace Azahar.
- Localization bugs stay in the patcher. When a match explains a screen, add a short pointer in the patcher doc. Do not move patcher notes here.

## State as of 2026-10-01 (rewritten; per-pass update notes folded in, details are in `technical.md` §6.1 to §6.1.4)

**Numbers.** `functions.toml` has 9,124 entries (129 at the start of 2026-10-01); 7,440 are generated placeholders. `relink` rebuilds `code.bin` byte-identically (SHA-256 `a83d349d0a000a127f93f743c038921903a2aae111b4b9005aadd446324ab890`); run it after every mass pass because `check` score 0 hides branch cond/link bits. `check` and `relink` now take many minutes: run them in the background and write output to a file. Generated entries live in `src/gen/*.cpp` (`W_<offset>`, `generated = true`, from `tools/wrapgen/gen2.py`); 1,191 kernel `svc` stubs are assembly in `lib/ctrsvc/svc_wrappers.s`. Details: `technical.md` section 8 items 5 to 7.

**New this session.** `symbols/ipc_commands.csv` (from `tools/svc_table.py`) lists 1,071 IPC stubs with command header, caller count, handle global and, for 831, the service name (ac:i, APT:U, cam:u, cfg:i, frd, ptm, y2r:u, cecd, mic:u, srv:pm, ndm:u, ir:USER). Unnamed: 217 that take a session-handle pointer as an argument. Mass-pass yield: 1,089 (up to 0x40 bytes, above 0x500000) and 277 (up to 0x100 bytes). The lifter (`tools/wrapgen/lift.py`) only does straight-line code with `cmp #0; beq`, so the roughly 9,000 remaining 0x20-0x80 byte functions with real branches need lifter work (cmp reg,reg, conditional branches, loops, predicated ops) or hand matching. A tail call to a never-returning callee needs `__attribute__((noreturn))`, else ARMCC emits `b` instead of `bl`.

**Fixed facts.**
- Vanilla `extracted/exefs/code.bin` equals `.code` BLZ-decompressed from the `.3ds`. It differs from EngPatcher `release/name_input_code.bin` in 6,709 bytes; never match the patched one.
- Compiler: decomp.me's ARMCC builds, vendored into git-ignored `tools/armcc/` by `python -m ctrdecomp fetch-armcc`. Game and NW4C code: ARMCC 4.1 >= b713, `--cpu=MPCore --arm -O3 -Otime`. Thumb runtime/libc code is built differently (`--cpu=5TE --thumb`, `-O2` or `-O1`, per-function `flags` in `functions.toml`). No other ARMCC build or flag set improved the stuck near-misses (`technical.md` §6.1.1).
- Ghidra 12.1.2 path is in git-ignored `ctrdecomp.local.toml` (copy `ctrdecomp.local.toml.example`). `ghidra-decomp` reads the EngPatcher project read-only; `ghidra-import` builds `ghidra/`. Ghidra `FUN_` names are file offsets; VA = offset + 0x100000.
- `symbols/code.bin.csv`: 31,721 functions, 89.3% of `.text` (`technical.md` §5.1).
- Repo: `origin` is `git@github.com:czyrustuazon/nlpp-decomp.git` (private). `main` only, ahead of `origin/main`; the user pushes. No new branches. `.gitignore` covers `tools/armcc/`, `ghidra/`, `build/`, `ctrdecomp.local.toml`.

**Matched (score 0).** `ParseClim`, `IsValidBinaryFile` (`lib/nw4c/`); `GetText` and variants (`src/text_resource.cpp`); `LightSemaphore_Release` (`lib/nnsdk/`); 12 Thumb runtime functions and two CRC-32 tables (`lib/crt/`); a 7-slot function-pointer table (`src/vtable_data.cpp`, first `ABS32` data); font/glyph accessors, `Str`/`StrChar`/`TaggedStr`/`Label` ctors and dtors, `Str::Decode`, `Str::Set`, `Variant`, refcount, float helpers and about 96 small UI setters/forwarders (incl. `src/thunks_hi.cpp`, `src/misc_hi.cpp`; `src/*_small*.cpp`, `src/str_*.cpp`, `src/tagged_str.cpp`, `src/slot_table.cpp`, `src/flag_setters.cpp`, ...); `OptionMenu_BindBtnTextures` (`src/menu_bind.cpp`).

**Near-misses (registered with scores, all in `functions.toml`).** `DrawTextToPane` 463 (parked, see below); `TaggedStr::Parse` 158; `OptionMenu_BindPlateTextures` 120; `Utf8Decode` 53; `GetNextBlockHeader` 51; `LightSemaphore_Acquire` 33; `TaggedStr(const char*)` 23; `TaggedStr` ctor 17; `BindMSelBtnIconAndText` 13; `Panel::SetSlot`/`SetFirst` 12; `Pair::ApplyScaled` 11; `Lookup` 9; `Str::Str` 8; `Recs::SetAll` 4; `HolderUseD/E/F` 2/2/3; `CopyDerived` copy ctor 2; strrchr (0xbdc, unregistered) 2. Rejected attempts are in `handoff_drafts/` (README has the table).

**Tooling.** `check`, `diff --align`, `relink`, `objdiff`, `permute`, `rank` (call-graph ranking, `ctrdecomp/callgraph.py`), `ghidra-*`. `relink` models linker behaviour: `externs.toml` value `"weak"` turns a BL into `mov r0, r0` (unresolved weak ref, e.g. `__cxa_guard_release`); an unconditional `B` to the next instruction becomes `mov r0, r0`; ARM->Thumb BL becomes BLX; a Thumb callee's address carries bit 0. New sources need `functions.toml` entries (append only) and callees in `externs.toml`. `check` does not cover `[[data]]`; `relink` does.

**Hard-won lessons.**
- The compiler habits list is `technical.md` §6.1.1 to §6.1.4 (25 items). Read it before drafting. Highlights: a callee defined in the same file changes the prologue (`push {lr}`); out-of-line ctors/dtors must live in other files or `-O3` inlines them; loop updates in a `for` increment clause; early `return` for the null case; `ldrsb` = `signed char`; bool setters match as `if (b != 0) off = false; else off = true;`; init-list stores precede the base/member ctor call; vtable relocs are `ABS32` with addend 8.
- The permuter's cost (aligned-diff lines) rewards behavior-changing rewrites on large functions (`0 == ch == col || ch`, `bool line`, `u8 rectW`). Read every permuter result before keeping it. It is useful only on small functions.
- Retail has `mov r0, r0` and `blx` at guard sites because of the linker (weak reference, Thumb callee), not source.
- The `ldrex`/`strex` family (about 30 functions) fails the same way as `LightSemaphore_Acquire` (retail uses `ip`/`r3` for the status register). Not solvable from C with this toolchain (no `armasm` in the vendored zip). `strlen`/`strcmp` are hand assembly.

**PARKED: `DrawTextToPane` (`FUN_0054b880`, `src/draw_text.cpp`, 463; 468 vs 506 instructions, frame 0x5a0 vs 0x590).** Recovered: `Lines {count[32]; cols[32]; n}` built then copied twice with Memcpy 0x104; shared encode buffers; function-local static empty `StrChar` guard. Remaining gaps: retail keeps max-line in `fp`; per-glyph guard checks; predication/CSE of the inlined `CharAt` (same pattern as `TaggedStr::Parse`). Plan: finish `Parse` (read `m_chars`/`m_count` into per-iteration locals), then apply the same shape to `CharAt` here.

## Next job

1. **IPC surface: done except 3 stubs** (0x5338a8-0x533954). 214 of the 217 session-handle stubs are attributed to `fs:USER`, `boss`, `nwm::UDS`, `dsp::DSP` (inferred, `technical.md` §8 item 7). Next on this thread: name the SDK wrapper classes in 0x4e0000-0x54ffff that own those sessions (fs file layer at 0x4e9e60 first), then use the command ids to name the stubs.
2. **Lifter, round 3 done (599 more in `src/gen/r3_*`, relink identical; added predicated `cmp`, `[rN, #k]!`/`[rN], #k`, `[rN, rM, lsl #k]`, `uxth`/`sxth`/`uxtb`/`sxtb`, `mla`, `ldm`/`stm`, `bx rN` tail calls, hex shifts, register shifts; lift coverage 4,268 -> 6,602 of 11,761 candidates, about 9% of those compile to a match). Round 2 text follows; round 4 open: a `blx` imm site means the callee is Thumb, so set its extern +1 (the one relink diff this round).** `tools/wrapgen/lift2.py` (register variables, gotos, predication, flags as a compared pair) matched 1,820 more (`src/gen/br_*`), relink identical. Top remaining failure reasons over the ~10,600 unhandled 0x20-0x80 byte functions: stack use (`sp`, 1,531), predicated `cmp` chains (662), `stm`/`ldm`/`strd`/`ldrd`, VFP (`vldr`, `vpush`), `[rN], #k` / `!` addressing, `uxth`/`sxth`, `lr` pushes. Rerun: `gen2.py` with 14 parts, `apply2.py`, `relink` (about 18 min).
3. **Leftover near-misses and binders:** `TaggedStr::Parse` (158), `DrawTextToPane` (463, parked), `OptionMenu_BindPlateTextures` (120), `BindMSelBtnIconAndText` (13), then `rank`-driven breadth.
4. Do not start gap 7 (native port). Do not sink more time in the `ldrex` family or in permuting big functions.

**Parallel work convention (several Claude sessions share this working tree).** Another session ("nlpp-decomp-c3") owns file offsets below 0x500000 (leaves/callers, low SDK) and committed `slot_table.cpp`, `flag_setters.cpp`, `utf16_wrappers.cpp`, `static_strings.cpp`, `setters_low.cpp`, `ui_calls_low.cpp`. A session working above 0x500000 keeps the Str/TaggedStr/utf8/font/UI-binder families; the menu binders in `src/menu_bind.cpp` are also ours. Rules: new source file per family; never `git add -A`, stage only your own paths; append-only edits to `functions.toml`/`externs.toml`, and when committing, stage a toml built from HEAD plus only your own entries (via `git hash-object` + `git update-index --cacheinfo`) so each commit holds its sources next to its toml entries; re-read the toml before editing.

## Original job (gap 1, done)

Fill gap 1 in `technical.md` §5, and stop there unless it falls out for free.

1. Confirm vanilla `code.bin` on disk and that you are not looking at a patched EngPatcher binary.
2. See whether a local ARMCC exists (`armcc` / `ARMCC_PATH`). If it does not, say so and use decomp.me’s Nintendo 3DS (ARMv6K) target instead of inventing a compiler.
3. Disassemble one small function from the first slice (`FUN_00542c30` or `FUN_00542828`; EngPatcher `docs/technical.md` §5.4). Produce a decomp.me-ready assembly listing and try flag sets until one scores a match, or until you can report which sets got closest.
4. Update `technical.md` with the compiler build, the flags, the scratch URL, and whether relocation destinations were checked. If nothing matched, write the negative result. Do not leave it in chat only.

Do not export the whole symbol table, do not stand up 3DS-Decomp-Pipeline, and do not start the character renderer. Those are gaps 2 and 5. They wait on a pinned compiler.

## Tools

decomp.me, asm-differ, objdiff, 3DS-Decomp-Pipeline, Ghidra, Azahar. What each one is for is in `technical.md` §4. decomp-toolkit and splat are the GameCube and N64 analogues. They do not split this `code.bin`.

## When you finish

Report the flag result in a few sentences, the scratch link if one exists, and the next gap that is actually unblocked. Write the result into `technical.md` before stopping. Do not commit unless the user asks. Do not push unless the user asks. Do not create new branches.

## User preferences

Stated in the session that produced this handoff, and not already fixed by the decisions above:

- Commit only when asked. They asked once ("let's commit what we have for now"). When asked "want me to push?", they pushed that commit themselves. Leave pushes to them unless they ask. The GitHub repo is private. Keep it that way.
- Do not make new branches. Work directly on `main`.
- Machine paths stay out of tracked files. The vanilla `code.bin` path and the Ghidra install path live in git-ignored `ctrdecomp.local.toml`. Do not put Desktop paths, the username, or a drive letter back into `technical.md`, `AGENT_HANDOFF.md`, or `ctrdecomp.toml`.
- Ghidra 12.1.2 PUBLIC is installed on the Desktop. Point the local config at it. Do not vendor Ghidra.
- Third-party compiler binaries stay git-ignored. Recreate them with `python -m ctrdecomp fetch-armcc`. They asked for the ignore and the vendoring command together.
- Reusable tooling for later 3DS games is a goal they asked to add (`technical.md` §8). Do not drop it to move faster on this title.
- Thrown-away match attempts have to survive the session. The summary is `technical.md` §6.1. The sources are `handoff_drafts/`. They asked for those attempts to be written down, not left in a temp folder.
- They switch agents to save tokens. A result that exists only in chat is lost.
