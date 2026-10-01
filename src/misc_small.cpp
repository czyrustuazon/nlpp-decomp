// Small game-code leaves found around the Str family (technical.md 6.1.3).
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef signed int   s32;

void Free(void* p);                                    // FUN_001fcd88

// FUN_005a2170: five fields, stores emitted in the order +8, +0, +0xC, +4, +0x10.
struct Ring {
    s32 a;      // +0 = 0
    s32 b;      // +4 = 0
    s32 c;      // +8 = 1
    s32 d;      // +0xC = 1
    s32 e;      // +0x10 = 0
    void Init();
};

void Ring::Init()
{
    c = 1;
    d = 1;
    a = 0;
    b = 0;
    e = 0;
}

// FUN_005a2190: destructor. The data pointer is 8 bytes past the allocation start.
struct Block {
    u32   pad[3];
    char* m_data;           // +0xC
    ~Block();
};

Block::~Block()
{
    if (m_data != 0) Free(m_data - 8);
}

// FUN_005a1aa8 (a named temporary Entry* e gives 5 to 10; re-indexing in each branch matches): set or clear bit 0 of the flags word of entry `idx` (entries at +0x14).
struct Entry { u32 pad[5]; u32 flags; };      // flags at +0x14
struct EntryTable {
    u32    pad[5];
    Entry* entries[8];                         // +0x14
    void SetEnabled(bool on, s32 idx);
};

void EntryTable::SetEnabled(bool on, s32 idx)
{
    if (on) entries[idx]->flags |= 1;
    else    entries[idx]->flags &= ~1u;
}

float Clamp(float x, float lo, float hi);              // FUN_0059b5d0 (src/float_small.cpp)

// FUN_005a14e4: store a value clamped to [0, 1] at +0x10. The float argument arrives in s0;
// hi is loaded into s2 first, then lo into s1, before the call (hard-float ABI).
struct Fader {
    u32   pad[4];
    float m_value;          // +0x10
    void SetValue(float v);
};

void Fader::SetValue(float v)
{
    m_value = Clamp(v, 0.0f, 1.0f);
}

// FUN_005a150c: forwards (a, c, f) to FUN_005a102c with the member at +0x14 as the receiver and
// ignores its second argument; the float stays in s0 across the call.
struct Sink;
void Sink_Send(Sink* s, u32 a, u32 c, float f);        // FUN_005a102c

struct Emitter {
    u32   pad[5];
    Sink* m_sink;           // +0x14
    bool  Send(u32 a, u32 unused, u32 c, float f);
};

bool Emitter::Send(u32 a, u32 unused, u32 c, float f)
{
    Sink_Send(m_sink, a, c, f);
    return true;
}

// FUN_005a221c: copy constructor of a counted handle: copy the pointer, then call
// FUN_0002acc4 (retain) with it; returns this.
void Retain(void* p);                                  // FUN_0002acc4

struct Handle {
    void* m_p;
    Handle(const Handle& o);
};

Handle::Handle(const Handle& o)
{
    m_p = o.m_p;
    Retain(m_p);
}

// FUN_005a0b28 / FUN_005a0c48: member-or-default accessors. Both fall back to the same global
// default object (VA 0x009AB520; the pointer sits in the literal pool right after `bx lr`).
struct Resource { u32 pad[4]; };
extern Resource g_NullResource;

struct Holder {
    u32       pad[7];
    Resource* m_1c;         // +0x1C
    Resource* m_20;         // +0x20
    Resource* Get20();
    Resource* Get1C();
};

Resource* Holder::Get20() { return m_20 != 0 ? m_20 : &g_NullResource; }
Resource* Holder::Get1C() { return m_1c != 0 ? m_1c : &g_NullResource; }

// FUN_0059f084: constructor that calls FUN_005a1618 as an ordinary function (a ctor call would let
// ARMCC reuse the returned `this` in r0; retail keeps `this` in r4 and reuses r0 as the zero),
// then zeroes three fields. Stores come out as +8, +0x10, +0xC.
struct Node {
    u32 pad[2];
    u32 m_8;                // +8
    u32 m_c;                // +0xC
    u32 m_10;               // +0x10
    Node();
};

void HandleInit(Node*);     // FUN_005a1618

Node::Node()
{
    HandleInit(this);
    m_8 = 0;
    m_10 = 0;
    m_c = 0;
}
