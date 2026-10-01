// Tiny flag-bit setters (technical.md §8 item 4). Names and owner types are guesses.
//   FUN_005e7d18 SetChildFlagBit0   FUN_005a4ebc SetFlagBit1
// Build: ARMCC 4.1 (b713-b1454) --cpu=MPCore --arm -O3 -Otime

typedef unsigned int u32;
typedef unsigned char u8;

struct Child { char pad[0xb7]; u8 flags; };
struct Holder { u32 f0; Child* child; };

// FUN_005e7d18
void SetChildFlagBit0(Holder* h, u32 value)
{
    Child* c = h->child;
    if (c) c->flags = (u8)(value | (c->flags & 0xfe));
}

struct Obj { char pad[0x8c]; u32 flags; };

// FUN_005a4ebc
void SetFlagBit1(Obj* o, bool on)
{
    u32 f = o->flags & ~2u;
    u32 v;
    if (on) v = 2; else v = 0;
    o->flags = f | v;
}
