// Hand-matched leaf from `rank`: FUN_00626a30 (55 callers). Names and types are guesses.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

struct Level { u32 p0[0x30 / 4]; u32 kind; char p1[0x48 - 0x34]; short value; };   // kind +0x30, value +0x48
extern u8 g_tiers[4][4];                // VA 0x007B9364: four rows of ascending thresholds

// returns the index of the first threshold in row `kind` above `value`, 4 if none, 0 if kind is out of range
u32 TierOf(Level* l)
{
    u32 kind = l->kind;
    int v = l->value;
    u32 r = 0;
    if (kind < 4) {
        const u8* t = g_tiers[kind];
        if (t[0] <= v) {
            if (t[1] > v) r = 1;
            else if (t[2] > v) r = 2;
            else if (t[3] > v) r = 3;
            else r = 4;
        }
    }
    return r;
}

// FUN_00598f14: resolve a 32-bit handle (table index << 16 | 1-based record) to a record pointer
typedef unsigned short u16;
struct Rec { char b[0x20]; };
struct Block { u32 magic; Block* data; u16 pad; u16 count; };   // data at +4 (a header with count at +6)
struct Slots { char p0[0xc]; char* base; u32 last; };           // base +0xc, last index +0x10
extern Block g_defaultBlock;            // VA 0x008AB3C0
extern Slots g_slots;                   // VA 0x009A3DCC
extern Rec g_nullRec;                   // VA 0x008AB3A0

Rec* ResolveHandle(u32 h)
{
    Block* blk = &g_defaultBlock;
    if (h != 0) {
        Slots* s = &g_slots;
        u32 idx = h >> 16;
        if (idx <= s->last) blk = (Block*)(s->base + idx * 20);
    }
    if (blk->magic != 0x204B4150) return &g_nullRec;
    char* hdr = (char*)blk->data;
    u32 i = (u16)h - 1;
    if (hdr != 0 && *(u16*)(hdr + 6) > i) return (Rec*)(hdr + i * 32 + 0x20);
    return &g_nullRec;
}
