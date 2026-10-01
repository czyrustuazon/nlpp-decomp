// UTF-8 lead-byte decoder used by GlyphColumns (FUN_005c0748) and the string classes.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int  u32;
typedef unsigned char u8;

// FUN_005c04bc: decode the first character of a UTF-8 string (1 to 6 byte forms, the old
// 31-bit scheme), 0 for a null pointer or an invalid lead byte. Retail masks the lead byte of
// the 3..6 byte forms as `(c << n) >> m` (lsl/lsr), not `and`, and loads every continuation
// byte of a form before it combines any of them: named locals per form do that.
u32 Utf8Decode(const u8* s)
{
    if (s == 0) return 0;
    u32 c = s[0];
    if (c <= 0x7F) return c;
    if ((c & 0xE0) == 0xC0) {
        return ((c & 0x1F) << 6) | (s[1] & 0x3F);
    }
    if ((c & 0xF0) == 0xE0) {
        u32 b2 = s[2], b1 = s[1];
        return ((c << 28) >> 16) | ((b1 & 0x3F) << 6) | (b2 & 0x3F);
    }
    if ((c & 0xF8) == 0xF0) {
        u32 b1 = s[1], b2 = s[2], b3 = s[3];
        return ((c << 29) >> 11) | ((b1 & 0x3F) << 12) | ((b2 & 0x3F) << 6) | (b3 & 0x3F);
    }
    if ((c & 0xFC) == 0xF8) {
        u32 b1 = s[1], b2 = s[2], b3 = s[3], b4 = s[4];
        return ((c << 30) >> 6) | ((b1 & 0x3F) << 18) | ((b2 & 0x3F) << 12) | ((b3 & 0x3F) << 6) | (b4 & 0x3F);
    }
    if ((c & 0xFE) == 0xFC) {
        u32 b1 = s[1], b2 = s[2], b3 = s[3], b4 = s[4], b5 = s[5];
        return ((c << 31) >> 1) | ((b1 & 0x3F) << 24) | ((b2 & 0x3F) << 18) | ((b3 & 0x3F) << 12) | ((b4 & 0x3F) << 6) | (b5 & 0x3F);
    }
    return 0;
}
