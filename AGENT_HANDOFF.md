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

## State as of 2026-09-29 (after gap 1)

- Vanilla confirmed: `extracted/exefs/code.bin` has SHA-256 `a83d349d0a000a127f93f743c038921903a2aae111b4b9005aadd446324ab890`, equal to `.code` BLZ-decompressed from the `.3ds` (ExeFS hashes verified). It differs from EngPatcher `release/name_input_code.bin` in 6,709 bytes.
- Compiler: decomp.me's ARMCC builds, vendored into `tools/armcc/` (git-ignored) by `python -m ctrdecomp fetch-armcc`, hash-checked. They run natively on Windows. decomp.me's API is blocked by a Cloudflare challenge, so matching runs locally.
- **Pinned flags:** ARMCC 4.1 ≥ b713, `--cpu=MPCore --arm -O3 -Otime`, on both NW4C and Konami code. The exact 4.1 build is not narrowed yet.
- **Matched:** `FUN_00542c30` (`src/lyt_clim.cpp`, NW4C) and `FUN_005c0e7c` `GetText` (`src/text_resource.cpp`, game). **Near-matches:** `FUN_0056ed00` `TextResource::Lookup` (score 9) and `FUN_005a1ec8` `Str::Str` / MakeStr (score 21, about 6 instructions aligned), both register choice only. Relocation destinations are checked for all three. Details are in `technical.md` §4.3 and §6.1.
- Ghidra 12.1.2; its install path is in `ctrdecomp.local.toml` (copy `ctrdecomp.local.toml.example` on a new machine). `python -m ctrdecomp ghidra-decomp` reads the EngPatcher project read-only; `ghidra-import` builds this folder's own project in `ghidra/`.
- Tooling is the `ctrdecomp/` package (`technical.md` §4.3, §8). `python -m pytest` runs the tool tests and `check`, which re-verifies every function in `functions.toml`.
- No CROs in RomFS. No `__FILE__`, mangled, or `nw::` strings in `code.bin` (`technical.md` §5 gap 4).
- **Gap 2 filled:** `symbols/code.bin.csv` (3DS-Decomp-Pipeline format), 31,721 functions, 89.3% of `.text`. Rebuild steps and caveats are in `technical.md` §5.1. It has not been run through the pipeline yet.
- This folder is still not a git repo. `.gitignore` excludes `tools/armcc/`, `ghidra/`, and `build/`.

## Next job

1. Run 3DS-Decomp-Pipeline on `symbols/code.bin.csv`: split and compare, then `--recreate-binaries` against the vanilla hash. That starts gap 6. It needs `ld`/`objcopy`. devkitARM is not installed; try LLVM's `ld.lld`/`llvm-objcopy` from the installed llvm-mingw first. It also needs a `cc.yaml` pointing at `tools/armcc/4.1/b1454/bin/armcc.exe` with the pinned flags. Record whether the split-and-relink round trip is byte-identical before writing more source.
2. Gap 3: signature-match CTR SDK / NintendoWare functions in the new list (for example `nn::os` light semaphore `FUN_0001611c`/`FUN_00016288`, `nw::ut` `FUN_00541ce0`/`FUN_00541d60`), and start `lib/` (§8 item 2).
3. The permuter for the register-allocation near-matches (§8).
4. DrawTextToPane `FUN_0054b880`, after the permuter exists.

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

Report the flag result in a few sentences, the scratch link if one exists, and the next gap that is actually unblocked. Do not commit unless the user asks. This folder is not a git repository yet.
