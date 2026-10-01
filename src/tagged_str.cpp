// TaggedStr ctor / dtor (technical.md 6.1.3). ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
// Separate translation unit from src/str_small.cpp on purpose: the Str members are out of line
// (bl) in retail, and defining them in the same TU makes ARMCC inline them.
typedef unsigned int u32;
typedef signed int   s32;

void Free(void* p);                                // FUN_001fcd88

struct StrChar { u32 code; u32 kind; StrChar(); };  // FUN_0059e2e4

class Str {
public:
    void* m_buf; char* m_text; void* m_chars; s32 m_size; s32 m_count; s32 m_capacity;
    Str();              // FUN_005a1fb0
    ~Str();             // FUN_005a2024
    void Clear();       // FUN_005a1eb0
};

// 0x228 bytes: the Str base, 64 inline StrChars (a __aeabi_vec_ctor_nocookie_nodtor call into
// FUN_0059e2e4), then the pointer/count/flags that DrawTextToPane reads (+0x218 / +0x21C).
// Flag bit 0 = m_chars is a heap block that this object owns.
class TaggedStr : public Str {
public:
    StrChar  m_inline[64];  // +0x18
    StrChar* m_chars2;      // +0x218 (current character array: m_inline or a heap block)
    s32      m_count2;      // +0x21C
    u32      m_flags;       // +0x220
    u32      m_pad;         // +0x224

    TaggedStr();            // FUN_0059e380
    ~TaggedStr();           // FUN_005a1fd0

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

TaggedStr::TaggedStr()
{
    m_flags = 0;
    Reset();
}

// The tail `b Str::~Str` is a branch to the next instruction in retail (Str::~Str is linked
// immediately after), which armlink rewrites to `mov r0, r0`. relink models that rule.
TaggedStr::~TaggedStr()
{
    Reset();
}

// FUN_002d57c8: a polymorphic object with a Str at +0xC. The destructor stores the class vptr
// (VA 0x0081C9EC, a literal-pool word that relocates against _ZTV5Label + 8), then runs
// Str::~Str on the member, addressed with a post-incremented r0 (`str r1, [r0], #0xc`).
class Label {
public:
    u32 m_4, m_8;           // +4, +8 (after the vptr)
    Str m_str;              // +0xC .. +0x23
    u32 m_24, m_28, m_2c;
    Label();                // FUN_002d5774
    virtual ~Label();       // FUN_002d57c8 (complete), FUN_002d57a8 (deleting)
};

// m_4/m_8 are in the init list: their stores come before the Str constructor call.
Label::Label() : m_4(0), m_8(0)
{
    m_24 = 0;
    m_28 = 0;
    m_2c = 0;
}

Label::~Label()
{
}
