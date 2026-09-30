// UI string object ("MakeStr" in EngPatcher docs). One heap block holds the decoded
// characters (8 bytes each) followed by a copy of the UTF-8 source text.
// See technical.md §6.1.

typedef unsigned int u32;
typedef signed int   s32;
typedef unsigned char u8;

void* HeapAlloc(u32 size, u32 align, u32 flags);   // FUN_000152e0
void  HeapFree(void* p, u32 flags);                // FUN_00029ed4
void  FUN_0001a4d4(void* p, u32 n);
void  Memcpy(void* dst, const void* src, u32 n);   // FUN_000317dc
u32   Strlen(const char*);                         // FUN_00200e60

struct StrChar { u32 code; u32 kind; };

class Str {
public:
    StrChar* m_buf;      // +0x00 heap block; chars first
    char*    m_text;     // +0x04 UTF-8 copy, at m_buf + m_capacity * 8
    StrChar* m_chars;    // +0x08 == m_buf
    s32      m_size;     // +0x0C strlen + 1
    s32      m_count;    // +0x10 decoded characters
    s32      m_capacity; // +0x14 rounded to 64

    Str(const char* s);
    s32 Decode();        // FUN_005a1c98

    bool Reserve(s32 size) {
        if (size > m_capacity) {
            m_capacity = 0;
            if (m_buf != 0) {
                HeapFree(m_buf, 0);
                m_buf = 0;
            }
            m_capacity = (size + 63) & ~63;
            m_buf = (StrChar*)HeapAlloc(m_capacity * 9, 0x10, 0);
            FUN_0001a4d4(m_buf, m_capacity);
            if (m_buf == 0) {
                return false;
            }
        }
        return true;
    }

    void Clear() {
        m_size  = 0;
        m_count = 0;
        m_text  = 0;
        m_chars = 0;
    }
};

// FUN_005a1ec8
Str::Str(const char* s)
{
    m_buf = 0;
    m_capacity = 0;
    Clear();
    if (s != 0) {
        m_size = Strlen(s) + 1;
        if (Reserve(m_size)) {
            m_text  = (char*)(m_buf + m_capacity);
            m_chars = m_buf;
            Memcpy(m_text, s, m_size);
            m_count = Decode();
        } else {
            Clear();
        }
    }
}
