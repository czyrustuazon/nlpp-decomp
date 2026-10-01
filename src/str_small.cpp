// Str / StrChar leaf members (technical.md 6.1.3). ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
// Struct layout comes from src/str.cpp (Str::Str(const char*), FUN_005a1ec8).
typedef unsigned int u32;
typedef signed int   s32;

void HeapFree(void* p, u32 flags);                 // FUN_00029ed4

struct StrChar {
    u32 code;       // +0 decoded code point
    u32 kind;       // +4 0 = glyph, 1 = icon
    StrChar();      // FUN_0059e2e4
};

class Str {
public:
    void*  m_buf;       // +0x00 heap block (chars, then the UTF-8 copy)
    char*  m_text;      // +0x04
    void*  m_chars;     // +0x08
    s32    m_size;      // +0x0C
    s32    m_count;     // +0x10
    s32    m_capacity;  // +0x14

    Str();              // FUN_005a1fb0
    ~Str();             // FUN_005a2024
    void Clear();       // FUN_005a1eb0
};

// FUN_0059e2e4: two zero stores.
StrChar::StrChar()
{
    code = 0;
    kind = 0;
}

// FUN_005a1eb0: the stores are emitted in field order +0xC, +0x10, +4, +8 (not the source order).
void Str::Clear()
{
    m_size  = 0;
    m_count = 0;
    m_text  = 0;
    m_chars = 0;
}

// FUN_005a1fb0: m_buf, m_capacity, then an inlined Clear() (stores in the order +0, +0x14, +0xC, +0x10, +4, +8).
Str::Str()
{
    m_buf = 0;
    m_capacity = 0;
    m_size  = 0;
    m_count = 0;
    m_text  = 0;
    m_chars = 0;
}

// FUN_005a2024: destructor (returns `this` in r0 per the ARM C++ ABI).
Str::~Str()
{
    m_capacity = 0;
    if (m_buf != 0) {
        HeapFree(m_buf, 0);
        m_buf = 0;
    }
}
