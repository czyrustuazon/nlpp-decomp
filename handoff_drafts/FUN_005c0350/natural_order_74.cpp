typedef unsigned int u32;
typedef signed int s32;
typedef signed char s8;

// FUN_005c0350: encode c as UTF-8 (1 to 6 bytes) into out; returns the byte count, 0 for a null buffer.
s32 Utf8Encode(s8* out, u32 c)
{
    if (out == 0) return 0;
    if (c <= 0x7F) {
        out[0] = c;
        return 1;
    }
    u32 v = c >> 6;
    s8 last = (c & 0x3F) | 0x80;
    if (c < 0x800) {
        out[0] = (v & 0x1F) | 0xC0;
        out[1] = last;
        return 2;
    }
    if (c < 0x10000) {
        out[0] = ((v << 22) >> 28) | 0xE0;
        out[1] = (v & 0x3F) | 0x80;
        out[2] = last;
        return 3;
    }
    if (c < 0x200000) {
        out[0] = ((v << 17) >> 29) | 0xF0;
        out[1] = ((v >> 6) & 0x3F) | 0x80;
        out[2] = (v & 0x3F) | 0x80;
        out[3] = last;
        return 4;
    }
    if (c < 0x4000000) {
        out[0] = ((v << 12) >> 30) | 0xF8;
        out[1] = ((v >> 12) & 0x3F) | 0x80;
        out[2] = ((v >> 6) & 0x3F) | 0x80;
        out[3] = (v & 0x3F) | 0x80;
        out[4] = last;
        return 5;
    }
    out[0] = ((v << 7) >> 31) | 0xFC;
    out[1] = ((v >> 18) & 0x3F) | 0x80;
    out[2] = ((v >> 12) & 0x3F) | 0x80;
    out[3] = ((v >> 6) & 0x3F) | 0x80;
    out[4] = (v & 0x3F) | 0x80;
    out[5] = last;
    return 6;
}
