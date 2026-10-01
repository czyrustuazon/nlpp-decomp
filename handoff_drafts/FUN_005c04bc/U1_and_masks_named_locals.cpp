// Score 70 before this session: `(c & 0x0F) << 12` etc. with continuation bytes read inline.
// Retail masks the lead byte of the 3..6 byte forms with lsl/lsr (`(c << 28) >> 16`): 54 with
// that alone and named per-form locals (kept in src/utf8.cpp, 53 with b2 declared before b1).
// Named locals for the 6-byte form only: 68. Reversed local order for 6 bytes: 68. A hoisted
// `u32 e1 = s[1]` before the branches: 81.
