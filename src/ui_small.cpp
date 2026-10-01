// Small UI/game helpers: table lookups with a tail call, shrink-wrapped setters, a double-math
// easing function. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int  u32;
typedef signed int    s32;
typedef unsigned char u8;

struct UiContext;
extern UiContext* g_UiContext;                                   // VA 0x008BFA40

struct Entry;
Entry* Table_Find(UiContext* ctx, u32 key, u32 kind);            // FUN_005c5cb0 (368 callers)
void   Entry_UseA(Entry* e);                                     // FUN_00219f74
void   Entry_UseB(Entry* e);                                     // FUN_0021a054
void   Entry_UseC(Entry* e, u32 arg);                            // FUN_001da498

// FUN_005c9624 / FUN_005c9650: look up kind 0x19 for `key`; if found, tail-call a user. The first
// argument is ignored, so `key` is still in r1 when it reaches Table_Find.
void UiUseA(void* unused, u32 key)
{
    Entry* e = Table_Find(g_UiContext, key, 0x19);
    if (e != 0) Entry_UseA(e);
}

void UiUseB(void* unused, u32 key)
{
    Entry* e = Table_Find(g_UiContext, key, 0x19);
    if (e != 0) Entry_UseB(e);
}

// FUN_005c95ec: same lookup keyed by the third argument; the second is passed to the user.
void UiUseC(void* unused, u32 arg, u32 key)
{
    Entry* e = Table_Find(g_UiContext, key, 0x19);
    if (e != 0) Entry_UseC(e, arg);
}

// FUN_005d646c / FUN_005d649c: store a flag byte at +0x34, then forward it to the child at +0xC.
// ARMCC shrink-wraps: the early `bxeq lr` for a null child comes before the push.
struct Child;
void Child_SetFlag(Child* c, u32 flag);                          // FUN_005a4ebc

struct Switch {
    u32    pad[3];
    Child* m_child;         // +0xC
    u32    pad2[0x34 / 4 - 4];
    u8     m_flag;          // +0x34
    bool Off();
    bool On();
};

bool Switch::Off()
{
    m_flag = 0;
    if (m_child == 0) return false;
    Child_SetFlag(m_child, 0);
    return true;
}

bool Switch::On()
{
    m_flag = 1;
    if (m_child == 0) return false;
    Child_SetFlag(m_child, 1);
    return true;
}

// FUN_005a4e8c: three releases; the last is a tail call to the function linked right after it,
// which armlink turns into `mov r0, r0` (relink models this).
struct Trio {
    u32    pad[0x74 / 4];
    Child* m_74;
    Child* m_78;
    Child* m_7c;
    void ClearAll();
};

void Trio::ClearAll()
{
    Child_SetFlag(m_74, 0);
    Child_SetFlag(m_78, 0);
    Child_SetFlag(m_7c, 0);
}

// FUN_005c2b5c: apply `flag` to each non-null child of a two-element array.
void ClearPair(Child** arr, u32 flag)
{
    for (s32 i = 0; i < 2; i++) {
        if (arr[i] != 0) Child_SetFlag(arr[i], flag);
    }
}

// FUN_005d6d54: ease-out sine: clamp to [0, 1], scale by pi / 2, call a double-precision sin
// (FUN_0059b56c) and narrow the result.
float Clamp(float x, float lo, float hi);                        // FUN_0059b5d0
double SinD(double x);                                           // FUN_0059b56c

float EaseSin(float t)
{
    float c = Clamp(t, 0.0f, 1.0f);
    return (float)SinD((double)(c * 3.1415927f * 0.5f));
}
