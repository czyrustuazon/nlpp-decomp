// Habit: a `for (;; pos += len, out += 2, n++, p += len)` increment clause gives retail's schedule
// (no writeback store, `add r4, r4, #8` after the loop-bound compare); the same updates written at
// the end of a while body score 4.
// Str::Decode (FUN_005a1c98): decode the UTF-8 text into StrChar records (code, byte offset).
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef signed int   s32;

u32 Utf8Seq(const char* p, s32 n);   // FUN_0056b06c: decode n bytes

struct StrChar { u32 code; u32 offset; };

class Str {
public:
    void*    m_buf;
    char*    m_text;     // +4
    u32*     m_chars;    // +8 (code, offset pairs)
    s32      m_size;     // +0xC
    s32      m_count;    // +0x10
    s32      m_capacity; // +0x14
    s32 Decode();
};

s32 Str::Decode()
{
    const char* p = m_text;
    if (p == 0 || m_text[m_size - 1] != 0) return 0;
    u32* out = m_chars;
    s32 pos = 0;
    s32 n = 0;
    s32 len = 0;
    for (; pos < m_size - 1; pos += len, out += 2, n++, p += len) {
        s32 c = *(const signed char*)p;
        if (c == 0x0D) {
            len = (p[1] == 10) ? 2 : 1;
            out[0] = 10;
        } else if ((c & 0x80) == 0) {
            len = 1;
            out[0] = Utf8Seq(p, 1);
        } else if ((c & 0xE0) == 0xC0) {
            len = 2;
            out[0] = Utf8Seq(p, 2);
        } else if ((c & 0xF0) == 0xE0) {
            len = 3;
            out[0] = Utf8Seq(p, 3);
        } else if ((c & 0xF8) == 0xF0) {
            len = 4;
            out[0] = Utf8Seq(p, 4);
        } else {
            return n;
        }
        out[1] = pos;
    }
    return n;
}
