// Hand-matched leaves from `rank`: FUN_00626b58, FUN_0026c9f4, FUN_005e8174, FUN_00629064.
// Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef int s32;

// FUN_00626b58: 1-based position of the first threshold above the value at +0x5c (23 if none)
struct Meter { char p0[0x5c]; u32 value; };
extern u32 g_limits[];                   // VA 0x007B93B8
short LimitIndex(Meter* m)
{
    u32 v = m->value;
    s32 i = 0;
    for (;;) {
        if (g_limits[i] > v) return (short)(i + 1);
        if (g_limits[i + 1] > v) return (short)(i + 2);
        i += 2;
        if (i >= 22) return 23;
    }
}

// FUN_0026c9f4: clear byte slot `i` (of 4) at +0x45
struct Slots4 { char p0[0x45]; u8 b[4]; };
void ClearSlot(Slots4* s, u32 i)
{
    if (i < 4) s->b[i] = 0;
}

// FUN_005e8174: set bit 1 of the flag byte at +0xb7 of the object at +4 (same record as SetPt)
struct FlagRec { char p0[0xb7]; u8 flags; };
struct FlagOwner { u32 p0; FlagRec* rec; };
void SetFlagBit1(FlagOwner* o, u32 b)
{
    FlagRec* r = o->rec;
    if (r != 0) {
        r->flags = (r->flags & 0xfd) | (b << 1);
    }
}

// FUN_00629064: slot value, where index 5 means "use the current index at +0x20"; -1 if out of range
struct SlotHost { char p0[0xc]; u32 v[5]; u32 cur; };
u32 SlotValue(SlotHost* h, u32 idx)
{
    if (idx == 5) idx = h->cur;
    if (idx >= 5) return (u32)-1;
    return h->v[idx];
}
