// UTF-8 lead-byte decoder used by GlyphColumns (FUN_005c0748) and the string classes.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int  u32;
typedef unsigned char u8;

// FUN_005c04bc: decode the first character of a UTF-8 string (1 to 6 byte forms, the old
// 31-bit scheme), 0 for a null pointer or an invalid lead byte.
u32 Utf8Decode(const u8* s)
{
    if (s == 0) return 0;
    u32 c = s[0];
    if (c <= 0x7F) return c;
    if ((c & 0xE0) == 0xC0) {
        return ((c & 0x1F) << 6) | (s[1] & 0x3F);
    }
    if ((c & 0xF0) == 0xE0) {
        return ((c & 0x0F) << 12) | ((s[1] & 0x3F) << 6) | (s[2] & 0x3F);
    }
    if ((c & 0xF8) == 0xF0) {
        return ((c & 0x07) << 18) | ((s[1] & 0x3F) << 12) | ((s[2] & 0x3F) << 6) | (s[3] & 0x3F);
    }
    if ((c & 0xFC) == 0xF8) {
        return ((c & 0x03) << 24) | ((s[1] & 0x3F) << 18) | ((s[2] & 0x3F) << 12) | ((s[3] & 0x3F) << 6) | (s[4] & 0x3F);
    }
    if ((c & 0xFE) == 0xFC) {
        return ((c & 0x01) << 30) | ((s[1] & 0x3F) << 24) | ((s[2] & 0x3F) << 18) | ((s[3] & 0x3F) << 12) | ((s[4] & 0x3F) << 6) | (s[5] & 0x3F);
    }
    return 0;
}
