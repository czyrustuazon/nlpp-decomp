# Rejected match drafts

These are the source attempts from the 2026-09-29 session that were compiled and then thrown away. They lived in a Windows temp folder (`%TEMP%\v`). The kept source is still `src/`. Do not treat a file here as the current match.

Scores are differing instruction words against vanilla `code.bin`, ARMCC 4.1 b1454, `--cpu=MPCore --arm -O3 -Otime`, unless a row says otherwise. Lower is better. Zero is a match. "Aligned lines" is a separate count from the difflib view (`CMPFN_ALIGN=1`): one inserted instruction does not paint the rest of the function. Where only that count was printed, the word score is left blank.

`technical.md` §6.1 is the short version of what moved the score. This folder is the source those sentences came from.

## FUN_00542c30 ParseClim (kept: `lib/nw4c/lyt_clim.cpp`, score 0)

The `if (kind == …)` drafts are the shape §6.1 says lowers to `cmp` with the positive literal. Their individual word scores were not printed. The first source written into `src/` before these files existed scored 5. The `switch` drafts that fold `RoundUp` into the call score 1, on one `add` with the operands reversed (`add r5, r0, r8` instead of `add r5, r8, r0`). Naming the rounded size scores 0, and that file is what `lib/nw4c/lyt_clim.cpp` came from.

| File | What it changed | Score |
|------|-----------------|-------|
| `if_enum_SIG_IMAG.cpp` | `if (block->kind == SIG_IMAG)` | not printed |
| `if_s32_cast_kind.cpp` | `if ((s32)block->kind == 0x67616D69)` | not printed |
| `if_swapped_compare_operands.cpp` | `if (0x67616D69 == block->kind)` | not printed |
| `if_u32_kind_compare.cpp` | `if (block->kind == 0x67616D69)` | not printed |
| `switch_roundup_folded_into_call.cpp` | `switch (kind)`, `RoundUp` folded into `AddOffsetToPtr` | parent of the score-1 row |
| `switch_header_via_u8_pointer_add.cpp` | header = `(u8*)data + RoundUp(...)` | 1 |
| `switch_header_via_u32_add.cpp` | header = `RoundUp(...) + (u32)data` | 1 |
| `switch_AddOffsetToPtr_byte_add.cpp` | `AddOffsetToPtr` does `(u8*)ptr + offset`, call still folded | 1 |
| `switch_tail_as_pointer_arith.cpp` | tail = `((u32)data + size) - 1`, call still folded | 1 |
| `switch_size_compare_operands_swapped.cpp` | `if (size > *tail)` instead of `if (*tail < size)`, call still folded | 1 |
| `switch_named_fileSize_temporary.cpp` | `u32 fileSize = RoundUp(*tail, 4);` then the add | **0, kept** |

## FUN_005c0e7c GetText (kept: `src/text_resource.cpp`, score 0)

Only one draft survived. Ghidra's `void` prototype was the first `src/` version and scored 1; it was overwritten. `tb_GetText_bool_return.cpp` returns `bool` and scored 0 on the same 8 builds as ParseClim. That is the kept function.

## FUN_0056ed00 TextResource::Lookup (kept: `src/text_resource.cpp`, score 9)

Started at 111. The inline pool helper (`A`) and the `while (*src != 0)` loop (`QL2`) plus a named entry index (`R3`) got it to 9. `R3_entry_index_in_local.cpp` is the draft that was copied into `src/`. Everything after it in this table was an attempt to move those last 9 words. None of the printed word scores went below 9. `U2` went back up to 19.

| File | What it changed | Score |
|------|-----------------|-------|
| `initial_monolithic.cpp` | Pool walk and decode inline in `Lookup` | 111 |
| `A_pool_as_inline.cpp` | Pool block extracted to inline `Pool_MoveFreeToUsed` | 98 (101 aligned lines) |
| `B_u32_code_loop.cpp` | `A`, loop variable is `u32 code` truncated to `u8` | not printed |
| `C_valid_as_bool.cpp` | `r.valid = true/false` | 98 |
| `D_initialized_as_u8.cpp` | `initialized` is `u8`, assigned `1` | 98 |
| `E_shared_one_constant.cpp` | one local `const u16 one = 1` used for the flag and `valid` | 98 |
| `F_int_parameters.cpp` | `pack` / `slot` / `index` / `log` are `int` | 98 |
| `G_flag_set_after_Init.cpp` | `initialized = true` after `Init()`, not before | 72 |
| `H_flag_before_pool_move.cpp` | flag stored before the pool move | 127 |
| `I_valid_stored_before_fields.cpp` | `valid = 1` before offset/length/type | 101 |
| `J_entry_as_reference.cpp` | `const TextEntry&` | 98 |
| `K_result_through_pointer.cpp` | result accessed through a pointer | 98 |
| `L_counts_in_locals.cpp` | pack and slot counts copied to a local before the compare | 98 |
| `M_params_u8_u8_u32.cpp` | parameter widths `u8, u8, u32` | 101 aligned lines |
| `N_params_u8_u8_u16.cpp` | parameter widths `u8, u8, u16` | 101 aligned lines |
| `O_params_int_int_int.cpp` | parameter widths `int, int, int` | 101 aligned lines |
| `P_Find_returns_entry.cpp` | inline `Find` returns `const TextEntry*` | 78 aligned lines |
| `Q_Find_writes_TextResult.cpp` | inline `Find(TextResult*, …)` writes the result | 60 aligned lines |
| `Q2_Find_then_const_ref.cpp` | `Q`, then `const TextResult&` | 61 aligned lines |
| `QL1_u32_code_then_u8.cpp` | `Q` with `u32 code` / inner `u8` | 61 aligned lines |
| `QL2_while_src_nonzero.cpp` | `while (*src != 0) { u32 code = *src; … }` | 31 aligned lines |
| `QL3_u16_code_assigned_in_while.cpp` | `while ((code = *src) != 0)` with `u16 code` | 78 aligned lines |
| `QL4_u16_code_inside_loop.cpp` | `u16 code` declared inside the `u8` loop | 78 aligned lines |
| `QL5_u32_masked_0xff.cpp` | `u32 code = c & 0xFF` | 61 aligned lines |
| `R1_node_loaded_before_decrement.cpp` | `QL2`, load `freeHead` before `freeCount--` | 45 aligned lines |
| `R2_function_local_static_flag.cpp` | `QL2`, `static bool` instead of `g_TextSystem.initialized` | 31 aligned lines |
| `R3_entry_index_in_local.cpp` | `QL2`, `u32 idx = s->entry[index]` | 22 aligned lines; **kept, word score 9** |
| `R4_entry_reference.cpp` | `QL2`, `const TextEntry&` | 31 aligned lines |
| `R5_freeCount_minus_1.cpp` | `QL2`, `freeCount = freeCount - 1` | 31 aligned lines |
| `R6_count_compared_against_index.cpp` | `QL2`, `s->count > index` | 31 aligned lines |

`S_*.cpp` is a grid on top of `R3`. Every cell whose word score was printed scored 9. The print was `head -12` after a sort that did not order by score, so the other cells were compiled and saved but their scores were not recorded. §6.1 treats the whole grid as not moving the 9.

Flag axis (`S_<flag>__<count>.cpp`):

| Flag | Change |
|------|--------|
| `if_not_initialized` | `R3` unchanged (`if (!initialized)`) |
| `initialized_eq_false` | `if (initialized == false)` |
| `flag_via_TextSystem_ref` | `TextSystem& sys = g_TextSystem`, tests and stores through `sys` |
| `TextSystem_includes_resource_ptr` | struct padded with `u8 pad[0xF]; void* resource` |
| `valid_as_bool` | `valid = true/false` |

Count axis:

| Count | Change |
|-------|--------|
| `s32_postdec` | `s32 freeCount; freeCount--` |
| `u32_freeCount` | `freeCount` is `u32` |
| `minus_assign_1` | `freeCount -= 1` |
| `predec` | `--freeCount` |
| `int_plus_minus_1` | `int freeCount; freeCount += -1` |

| File | What it changed | Score |
|------|-----------------|-------|
| `T1_Mutex_Lock_returns_s32.cpp` | `Mutex_Lock` returns `s32` | 9 |
| `T2_Mutex_Lock_returns_bool.cpp` | `Mutex_Lock` returns `bool` | 9 |
| `T3_Mutex_Lock_returns_Result.cpp` | `Mutex_Lock` returns a `Result` struct | 9 |
| `T4_Mutex_Lock_and_Unlock_return_s32.cpp` | both lock and unlock return `s32` | 9 |
| `U1_EnsureInit_inline.cpp` | flag check and `Init` moved to inline `EnsureInit` | 9 |
| `U2_pool_split_pop_push.cpp` | pool body split into `Pool_PopFree` / `Pool_PushUsed` | 19 |
| `U3_EnsureInit_and_split_pool.cpp` | `U1` and `U2` together | 9 |
| `U4_pop_into_named_node.cpp` | `PoolNode* node = Pool_PopFree(pool)` | 9 |

No 4.1 build separated `A` from `G` on aligned-diff line count. Later sweeps of the kept source also agreed across all 8 builds.

## FUN_005a1ec8 Str::Str (kept: `src/str.cpp`, score 21)

The first constructor, with the allocation written out in the body, scored 18 and was overwritten in `src/` before these files existed. Pulling it into `Reserve(s32 size)` scored 46, because the size parameter stays in a register and retail re-reads `m_size`. `Reserve()` with no parameter, reading `m_size`, scored 21. `S1m_Reserve_reads_m_size.cpp` is the draft copied into `src/`. `--no_unaligned_access` left that 21 in place and did not disturb the two matches or Lookup's 9. No `-O3`/`-O2`/`-Otime`/`-Ospace` build separated `S1m`.

| File | What it changed | Score |
|------|-----------------|-------|
| `S1_Reserve_size_param_then_if.cpp` | `Reserve(s32 size)`, copy under `if (Reserve(m_size))` | 46 |
| `S2_Reserve_size_param_chars_before_text.cpp` | `S1`, `m_chars` assigned before `m_text` | 46 |
| `S3_Reserve_size_param_clear_on_failure_first.cpp` | `S1`, `if (!Reserve) Clear(); else copy` | 46 |
| `S1m_Reserve_reads_m_size.cpp` | `Reserve()` reads `m_size` | **21, kept** |
| `S2m_Reserve_reads_m_size_chars_before_text.cpp` | `S2` with `Reserve()` | 21 |
| `S3m_Reserve_reads_m_size_clear_first.cpp` | `S3` with `Reserve()` | 21 |
| `S1c_cstdlib_strlen_memcpy.cpp` | `S1m` using `<string.h>` `strlen` / `memcpy` | 21 |
| `W1_Set_member_called_from_ctor.cpp` | body moved to `Set()`, ctor calls it | 25 (18 aligned lines) |
| `W2_ctor_init_list.cpp` | `W1` with `: m_buf(0), m_capacity(0)` | 18 aligned lines |
| `W3_Set_returns_early_on_null.cpp` | `Set` returns on null instead of wrapping the body in `if (s != 0)` | 18 aligned lines |
| `W4_byte_pointer_text_offset.cpp` | `m_text = (char*)m_buf + m_capacity * sizeof(StrChar)` | 18 aligned lines |

## FUN_0020ad74 BindMSelBtnIconAndText and FUN_0020bcc0 OptionMenu_BindPlateTextures (kept: `src/menu_bind.cpp`)

`FUN_001eb3dc` OptionMenu_BindBtnTextures (same file) is score 0 with the callees declared by address. The two below are not matches (ARMCC 4.1 b1454, `--cpu=MPCore --arm -O3 -Otime`).

| File | What it changed | Score |
|------|-----------------|-------|
| `FUN_0020ad74/local_ctx_pointer.cpp` | `UiContext* c = g_UiContext;` for the first call | 30 (56 ins, count matches; retail loads `m_active` into r3 with `moveq/movne` first and the last call is a single `movne`, ours the reverse) |
| `FUN_0020ad74` (kept in `src/`) | slot via `(char*)m + index*8 + 0x78` | 30 (57 vs 56 ins). Local bool, u32 flag args, hoisted flag, ternary: all 30. Permuter 8,868 variants: best 27 (`build/permute/`, git-ignored) |
| `FUN_0020bcc0/if_chain_direct_calls_goto_done.cpp` | if-chain, each branch calls `BindPlate(...)` then `goto done` (strings duplicated per branch) | 111 (212 ins) |
| `FUN_0020bcc0` (kept in `src/`) | if-chain assigning `text`/`icon` locals, one shared call | 120 (191 vs 144 ins) |
| `switch` on slot | dense switch | 143 (jump table `ldrlo pc,[pc,r1,lsl #2]`; retail has a `cmp`/`beq` chain) |

## 2026-10-01 Str/TaggedStr family (kept sources in `src/`; scores in `functions.toml`)

| File | What it changed | Score |
|------|-----------------|-------|
| `FUN_005a1ec8/X1_ctor_inline_set_early_return.cpp` | `Str::Str(const char*)` as `m_buf = 0; m_capacity = 0;` plus the matched `Set` body inlined with early return | 19 |
| `FUN_0059dfc4/P1_inline_find_loop_explicit_null_check.cpp` | `Parse` with the `'>'` scan inline and `p = 0; if (mem) p = new ...` | about 168 |
| `FUN_005b1ba8/H0_handle_as_member.cpp`, `H1_handle_member_one_level.cpp` | `Handle` as a member; word in the derived class | 9, 9 (kept: two-level base, 2) |
| `FUN_005c04bc/U1_and_masks_named_locals.cpp` | notes on the Utf8Decode variants | 70, 68, 81 (kept 53) |
| `FUN_0059e380/Z1_zero_live_range_variants.txt` | TaggedStr ctor zero-register variants | 17 / 23 unchanged |
| `FUN_005a1a58/A1_float_reinterpret_variants.txt` | float reinterpret spellings | 11 |
| `FUN_0059dfc4` local `cnt`/`chars` per iteration (2026-10-02, not kept) | `AtL(chars, cnt, i)` helper with `m_count`/`m_chars` read once per iteration, for the `<` test, `=` test, `>` scan and 4 tag bytes | 192 (186 vs 200 ins; worse than 158). Retail drops the null check only on the `i+5` read and re-reads `m_chars` in the `>` scan while caching the count, so one cached pair does not model it |
