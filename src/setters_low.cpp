// Tiny setters that forward to the flag helpers (SetFlagBit1, SetChildFlagBit0). Owner types are
// guesses; only field offsets come from the disassembly. Each function has its own owner struct.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. Names are guesses.
typedef unsigned int u32;
typedef unsigned char u8;

struct Obj;
struct Holder { u32 a; u32 b; };
void SetFlagBit1(Obj*, bool);              // FUN_005a4ebc
void SetChildFlagBit0(Holder*, u32);       // FUN_005e7d18

// A widget whose Holder base sits at +0xc.
struct Widget { char pad[0xc]; Holder base; };

struct Link49e6b8 { u32 f0; Obj* obj; };
// FUN_0049e6b8
void ForwardFlag(Link49e6b8* a, bool on) { SetFlagBit1(a->obj, on); }

struct Own459fd4 { char pad[0x24]; Widget* w; };
// FUN_00459fd4
void SetWidget24On(Own459fd4* a, Widget* w) { a->w = w; Holder* h = &w->base; SetChildFlagBit0(h, 1); }

struct Own45a26c { char pad[0x58]; Widget* w; };
// FUN_0045a26c
void SetWidget58On(Own45a26c* a, Widget* w) { a->w = w; Holder* h = &w->base; SetChildFlagBit0(h, 1); }

struct Own45a688 { char pad[0x3c]; Widget* w; };
// FUN_0045a688
void SetWidget3cOn(Own45a688* a, Widget* w) { a->w = w; Holder* h = &w->base; SetChildFlagBit0(h, 1); }

struct Own45ab5c { char pad[0x54]; Widget* w; };
// FUN_0045ab5c
void SetWidget54Off(Own45ab5c* a, Widget* w) { a->w = w; Holder* h = &w->base; SetChildFlagBit0(h, 0); }

struct Own45a258 { char pad[0x70]; Widget* w[1]; };
// FUN_0045a258
void SetWidget70At(Own45a258* a, u32 i, Widget* w) { a->w[i] = w; SetChildFlagBit0((Holder*)((char*)w + 0xc), 0); }

struct Own45b0f4 { char pad[0x40]; Widget* w[1]; };
// FUN_0045b0f4
void SetWidget40At(Own45b0f4* a, u32 i, Widget* w) { a->w[i] = w; SetChildFlagBit0((Holder*)((char*)w + 0xc), 0); }

struct Own370ba4 { char pad[0x48]; u8 f48; char pad2[0x6c - 0x49]; Obj* obj; };
// FUN_00370ba4 (FUN_0037cc20 is the same body in another class)
void SetFlag48(Own370ba4* a, bool v) { a->f48 = v; if (a->obj) SetFlagBit1(a->obj, v); }

struct Own37cc20 { char pad[0x48]; u8 f48; char pad2[0x6c - 0x49]; Obj* obj; };
// FUN_0037cc20
void SetFlag48B(Own37cc20* a, bool v) { a->f48 = v; if (a->obj) SetFlagBit1(a->obj, v); }

struct Own47ea60 { char pad[0x28]; u8 f28; char pad2[0x34 - 0x29]; Obj* obj; };
// FUN_0047ea60
void SetFlag28(Own47ea60* a, bool v) { if (a->obj) { a->f28 = v; SetFlagBit1(a->obj, v); } }
