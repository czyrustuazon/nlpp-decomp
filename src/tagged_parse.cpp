// TaggedStr::Parse (FUN_0059dfc4): expand "<IMG =XXXX>" style tags in the decoded string into
// (code, kind) records. A literal character becomes {ch, 0}; a tag whose bytes 1..4 spell "IMG "
// (0x20474D49 with the first byte in the low bits) and which has a '>' after the '=' becomes
// {hex value, 1}; any other '<...>' is skipped up to and including the '>'.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. Out-of-line callees live in other files.
typedef unsigned int u32;
typedef signed int   s32;

void  Free(void* p);                    // FUN_001fcd88
void* PoolAlloc(u32 size, u32 a, u32 b);   // FUN_00021ca0

inline void* operator new[](unsigned, void* p) { return p; }

struct StrChar { u32 code; u32 kind; StrChar(); };   // FUN_0059e2e4
struct StrEntry { u32 code; u32 offset; };

class Str {
public:
    void*     m_buf;
    char*     m_text;     // +4
    StrEntry* m_chars;    // +8
    s32       m_size;     // +0xC
    s32       m_count;    // +0x10
    s32       m_capacity; // +0x14
    Str();
    ~Str();
    void Clear();                // FUN_005a1eb0
    bool Set(const char* s);     // FUN_005a1dcc

    u32 At(s32 i) const {
        if (i >= 0 && m_count > i && m_chars != 0) return m_chars[i].code;
        return 0;
    }
    const char* TextAt(s32 i) const {
        if (i >= 0 && m_count > i && m_chars != 0) return m_text + m_chars[i].offset;
        return 0;
    }
};

class TaggedStr : public Str {
public:
    StrChar  m_inline[64];
    StrChar* m_chars2;
    s32      m_count2;
    u32      m_flags;
    u32      m_pad;
    bool Parse(const char* s);   // FUN_0059dfc4

    void Reset()
    {
        Clear();
        if (m_flags & 1) {
            if (m_chars2 != 0) {
                Free(m_chars2);
                m_chars2 = 0;
            }
            m_flags &= ~1u;
        }
        m_chars2 = m_inline;
        m_count2 = 0;
    }
};

inline s32 FindChar(const Str* s, s32 from, s32 end, u32 ch)
{
    for (s32 k = from; k < end; k++) {
        if (s->At(k) == ch) return k;
    }
    return 0;
}

bool TaggedStr::Parse(const char* s)
{
    Reset();
    Set(s);
    u32 n = m_count;
    if (n > 0x40) {
        void* mem = PoolAlloc(n << 3, 0, 0x10);
        m_chars2 = mem ? new (mem) StrChar[n] : 0;
        if (m_chars2 == 0) return false;
        m_flags |= 1;
    }
    s32 out = 0;
    for (s32 i = 0; i < (s32)n; i++) {
        u32 ch = At(i);
        if (ch == '<' && m_count >= i + 7) {
            s32 j = 0;
            if (At(i + 5) == '=') j = FindChar(this, i + 6, m_count, '>');
            if (j > 0) {
                u32 c4 = At(i + 4);
                u32 c3 = At(i + 3);
                u32 c2 = At(i + 2);
                u32 c1 = At(i + 1);
                if ((c4 << 24 | c3 << 16 | c2 << 8 | c1) != 0x20474D49) {
                    i = j;
                    continue;
                }
                s32 start = i + 6;
                const char* hex = TextAt(start);
                u32 val = 0;
                if (hex != 0) {
                    u32 len = j - start;
                    for (u32 k = 0; k < len; k++) {
                        s32 c = hex[k];
                        if (c == 0) break;
                        u32 d;
                        if ((u32)(c - 0x30) <= 9) d = c - 0x30;
                        else if ((u32)(c - 0x61) <= 5) d = c - 0x57;
                        else if ((u32)(c - 0x41) <= 5) d = c - 0x37;
                        else { val = 0; break; }
                        val = d + val * 16;
                    }
                }
                m_chars2[out].kind = 1;
                m_chars2[out].code = val;
                out++;
                i = j;
                continue;
            }
        }
        m_chars2[out].kind = 0;
        m_chars2[out].code = ch;
        out++;
    }
    m_count2 = out;
    return true;
}
