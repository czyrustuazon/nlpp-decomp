// Str::Set(const char*) (FUN_005a1dcc): (re)build the character array from a C string.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. Out-of-line callees live in other files.
typedef unsigned int u32;
typedef signed int   s32;

void* HeapAlloc(u32 size, u32 align, u32 flags);   // FUN_000152e0
void  HeapFree(void* p, u32 flags);                // FUN_00029ed4
void  FUN_0001a4d4(void* p, u32 n);
void  Memcpy(void* dst, const void* src, u32 n);   // FUN_000317dc
u32   Strlen(const char*);                         // FUN_00200e60

class Str {
public:
    char* m_buf;
    char* m_text;     // +4
    char* m_chars;    // +8
    s32   m_size;     // +0xC
    s32   m_count;    // +0x10
    s32   m_capacity; // +0x14
    s32 Decode();     // FUN_005a1c98
    Str(const char* s);
};

Str::Str(const char* s)
{
    m_buf = 0;
    m_capacity = 0;
    m_size = 0;
    m_count = 0;
    m_text = 0;
    m_chars = 0;
    if (s == 0) return;
    m_size = Strlen(s) + 1;
    if (m_size > m_capacity) {
        m_capacity = 0;
        if (m_buf != 0) {
            HeapFree(m_buf, 0);
            m_buf = 0;
        }
        m_capacity = (m_size + 63) & ~63;
        m_buf = (char*)HeapAlloc(m_capacity * 9, 0x10, 0);
        FUN_0001a4d4(m_buf, m_capacity);
        if (m_buf == 0) {
            m_size = 0;
            m_count = 0;
            m_text = 0;
            m_chars = 0;
            return;
        }
    }
    m_text = m_buf + m_capacity * 8;
    m_chars = m_buf;
    Memcpy(m_text, s, m_size);
    m_count = Decode();
}
