// FUN_005a1408: initializes an object through a pointer to its Inner member at +8 (the incoming
// r0 is that member, the object starts 8 bytes earlier and is returned). The Inner constructor
// is out of line (FUN_0002a070, src/inner.cpp) and returns its argument.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int u32;
typedef signed int   s32;

struct Inner {
    u32 m_p;
};
Inner* InnerInit(Inner*);   // FUN_0002a070 (Inner::Inner), returns its argument

struct Obj {
    u32   m_0;
    u32   m_4;
    Inner m_8;
    float m_c;
    float m_10;
    s32   m_14;
    s32   m_18;
};

Obj* ObjInitFromInner(Inner* in)
{
    Obj* o = (Obj*)((char*)InnerInit(in) - 8);
    o->m_0 = 0;
    o->m_4 = 0;
    o->m_c = 1.0f;
    o->m_10 = 0.0f;
    o->m_14 = 2;
    o->m_18 = 0;
    return o;
}
