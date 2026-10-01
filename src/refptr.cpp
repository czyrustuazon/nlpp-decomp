// Intrusive reference-counted pointer destructor (FUN_0059f0a8) and object factories.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int u32;
typedef signed int   s32;

// Referenced object: vptr at +0 (slot 1 is the deleting destructor), count at +8.
struct Counted {
    u32 pad4;
    s32 refs;               // +8 (the vptr is at +0)
    virtual ~Counted();
};

// FUN_0059f0a8
struct RefPtr {
    Counted* m_obj;         // +0
    s32      m_weak;        // +4 (nonzero keeps the object alive)
    ~RefPtr();
};

// `--m_obj->refs == 0` in the condition scores 5 (retail reloads m_obj before the m_weak test);
// a separate `m_obj->refs--;` statement followed by `if (m_obj->refs == 0 && ...)` matches.
// `delete m_obj` is the virtual call through vtable slot 1 (the deleting destructor).
RefPtr::~RefPtr()
{
    if (m_obj != 0) {
        m_obj->refs--;
        if (m_obj->refs == 0 && m_weak == 0) delete m_obj;
    }
}
