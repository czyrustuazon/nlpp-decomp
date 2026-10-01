// Small functions above 0x500000 (flag/byte pickers, a table lookup). Names and types are guesses.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

struct W { char p0[0x45]; u8 f45; u8 f46; char p1[0x8c - 0x47]; u8 f8c; };

// FUN_005bb940
u32 PickByte(W* w)
{
    if (w->f8c == 0 || w->f46 == 4) return w->f45;
    return w->f46;
}

struct X { char p0[0x6c]; u8 f6c; u8 f6d; };

// FUN_006422f0
bool BothFlags(X* x)
{
    if (x->f6d != 0) {
        if (x->f6c == 0) return true;
    }
    return false;
}

struct Tbl { u32 n; char* base; };
extern Tbl g_t9a4780;   // VA 0x009A4780

// FUN_005a2844: 1-based entry, entries are 0x1e9 * 8 bytes, base biased by -0xf48
char* TableEntry(u32 i)
{
    if (i == 0 || i > g_t9a4780.n) i = 1;
    return g_t9a4780.base + i * 0x1e9 * 8 - 0xf48;
}

// Raw vtable access: slots are called through a function-pointer cast, since only the slot
// offset is known.
struct VT { void* s[64]; };
struct B { VT* vt; char p[0xdc]; u32 fe0; };

// FUN_00610b80: calls vtable slot 0x78 (index 30); when it returns 0, stores v at +0xe0
bool SetIfNot(B* b, u32 v)
{
    bool r;
    if (((u32(*)(B*))b->vt->s[30])(b) != 0) r = false; else r = true;
    if (r) b->fe0 = v;
    return r;
}

u32 Utf8Decode(const unsigned char* p);   // FUN_005c04bc (src/utf8.cpp)

// FUN_005c032c: first UTF-8 character as a 16-bit code, or the replacement 0x25A0 (a square) when
// the decoded value does not fit. The default is loaded before the call (push {r4, lr}).
u32 DecodeOrDefault(const unsigned char* p)
{
    u32 d = 0x25A0;
    u32 r = Utf8Decode(p);
    if ((r >> 16) == 0) d = (unsigned short)r;
    return d;
}
