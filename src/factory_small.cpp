// Constructors that call a base constructor and zero a run of fields (technical.md 6.1.3).
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef signed int   s32;

// FUN_005a0ce8: derived constructor of a 0x2C-byte polymorphic object. Base constructor is
// FUN_00015490; the derived vptr is VA 0x0082D9F4 (a literal-pool load).
struct Base20 {
    u32 pad[4];
    u32 m_14;               // +0x14 (zeroed by the derived constructor, stored before the vptr)
    Base20();               // FUN_00015490
    virtual ~Base20();
};

struct Widget : Base20 {
    u32 m_18, m_1c, m_20, m_24, m_28;
    Widget();
    virtual ~Widget();
};

Widget::Widget()
{
    m_14 = 0;
    m_18 = 0;
    m_1c = 0;
    m_20 = 0;
    m_24 = 0;
    m_28 = 0;
}

// FUN_005a1adc: apply the same (a, f) to the objects at +0x14 and +0x18 through FUN_005a131c and
// return the first result. f stays in s0 (saved in s16 across the first call, vpush {d8}).
struct Chan;
s32 Chan_Apply(Chan* c, s32 a, float f);        // FUN_005a131c

struct Pair {
    u32   pad[5];
    Chan* m_a;              // +0x14
    Chan* m_b;              // +0x18
    s32   Apply(s32 a, float f);
};

s32 Pair::Apply(s32 a, float f)
{
    s32 r = Chan_Apply(m_a, a, f);
    Chan_Apply(m_b, a, f);
    return r;
}
