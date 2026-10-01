// A tiny handle class (word at +0) whose constructor and destructor live in their own object.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3. Kept separate from src/item.cpp:
// in the same translation unit ARMCC would inline both into Item's constructor and destructor.
typedef unsigned int u32;

void Release(u32 p);        // FUN_00029b80

struct Inner {
    u32 m_p;                // +0
    Inner();                // FUN_0002a070
    ~Inner();               // FUN_0002a080 (returns `this` in r0 per the ARM C++ ABI)
};

Inner::Inner()
{
    m_p = 0;
}

Inner::~Inner()
{
    Release(m_p);
}
