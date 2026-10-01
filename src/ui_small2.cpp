// More small UI leaves, mostly callers of the widget "set flag" function FUN_005a4ebc and the
// table lookup FUN_005c5cb0. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int  u32;
typedef signed int    s32;
typedef unsigned char u8;
typedef signed char   s8;

struct UiContext;
extern UiContext* g_UiContext;                                   // VA 0x008BFA40

struct Entry { u8 pad[0x8d]; s8 m_8d; };                         // lookup result; s8 at +0x8D
Entry* Table_Find(UiContext* ctx, u32 key, u32 kind);            // FUN_005c5cb0

struct Child;
void Child_SetFlag(Child* c, u32 flag);                          // FUN_005a4ebc
void Child_Show(Child* c);                                       // FUN_005b0144

// FUN_00164f84: flag byte at +0x28, child at +0.
struct FlagA { Child* m_child; u32 pad[9]; u8 m_flag; void Set(u32 f); };
void FlagA::Set(u32 f)
{
    m_flag = f;
    if (m_child != 0) Child_SetFlag(m_child, f);
}

// FUN_003558a0: same shape, child at +0x4C, flag byte at +0x56.
struct FlagB { u32 pad[0x13]; Child* m_child; u32 pad2; u8 pad3[2]; u8 m_flag; void Set(u32 f); };
void FlagB::Set(u32 f)
{
    m_flag = f;
    if (m_child != 0) Child_SetFlag(m_child, f);
}

// FUN_0047ed78: stores the flag but always clears the child (`mov r1, #0` before the tail call).
struct FlagC { u32 pad[0xa]; u8 m_flag; u8 pad2[3]; Child* m_child; void Set(u32 f); };
void FlagC::Set(u32 f)
{
    m_flag = f;
    if (m_child != 0) Child_SetFlag(m_child, 0);
}

// FUN_00215a94: child at +0x48 gets (a && byte at +0x50).
struct Gate { u32 pad[0x12]; Child* m_child; u32 pad2[1]; u8 m_50; void Apply(bool a); };
void Gate::Apply(bool a)
{
    if (m_child != 0) Child_SetFlag(m_child, a && m_50 != 0);
}

// FUN_003544a8: child call keeps the incoming flag in r1; then a dependent byte is cleared.
struct Latch { u32 pad[0x14]; Child* m_child; u8 pad2[0xd]; u8 m_61; u8 m_62; void Set(u32 f); };
void Latch::Set(u32 f)
{
    m_61 = f;
    if (m_child != 0) Child_SetFlag(m_child, f);
    if (m_61 != 0) m_62 = 0;
}

// FUN_0049a9a0: three 0x30-byte records starting at +4, each with a child pointer at +4.
struct Rec { u32 pad; Child* m_child; u32 pad2[10]; };
struct Recs { u32 pad; Rec r[3]; void SetAll(u32 f); };
void Recs::SetAll(u32 f)
{
    for (Rec* p = &r[0]; p != &r[3]; p++) Child_SetFlag(p->m_child, f);   // an index loop gives 11
}

// FUN_0037d4ac: look up kind 1, key 0; return the signed byte at +0x8D, or 0 when absent.
s32 UiGetByte()
{
    Entry* e = Table_Find(g_UiContext, 0, 1);
    if (e != 0) return e->m_8d;
    return 0;
}

// FUN_005de4dc: when bits 1 and 2 of the flag byte at +0x198 are both set and the value at +0x19C
// (compared as raw float bits, as an integer) is >= 1.0f, show; otherwise clear.
struct Fade { u8 pad[0x198]; u8 m_flags; u8 pad2[3]; s32 m_bits; void Update(); };
void Fade::Update()
{
    if ((m_flags & 6) != 6 || m_bits < 0x3F800000) Child_SetFlag((Child*)this, 0);
    else Child_Show((Child*)this);
}
