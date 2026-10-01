// Copy constructor of a derived polymorphic object (FUN_005b1ba8). Layout: vptr +0, a counted
// Handle at +4 (a non-polymorphic *base* class, which is why it sits after the vptr), one word
// at +8. Two levels are needed: CopyBase copies the Handle and the word and stores its own vptr
// in between; CopyDerived only adds the final vptr. With the word in CopyDerived the compiler
// drops CopyBase's vptr store (score 9); with it in CopyBase both stores survive (score 2).
// Virtual functions are declared but not defined so no vtable is emitted: both vptrs relocate
// against externs (_ZTV + 8). ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.4.
typedef unsigned int u32;

struct Handle {
    void* m_p;
    Handle(const Handle& o);     // FUN_005a221c (src/misc_small.cpp)
};

class CopyBase : public Handle {
public:
    u32 m_8;                     // +8
    CopyBase(const CopyBase& o) : Handle(o) { m_8 = o.m_8; }
    virtual ~CopyBase();
};

class CopyDerived : public CopyBase {
public:
    CopyDerived(const CopyDerived& o);
    virtual ~CopyDerived();
};

CopyDerived::CopyDerived(const CopyDerived& o) : CopyBase(o)
{
}
