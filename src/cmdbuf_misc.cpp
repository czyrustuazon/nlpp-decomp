// FUN_00168f5c (90 callers): return the embedded record when it is the active slot.
// FUN_005924d4 (78 callers): begin a command record in a ring buffer, wrapping when fewer than
// 0x2004 bytes remain. Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

struct Slot { char p0[0x38]; int index; };
struct Holder {
    char p0[0x1f8];
    Slot slot;                         // +0x1f8
    char p1[0x6b4 - 0x1f8 - sizeof(Slot)];
    u8 mode;                           // +0x6b4
};

// Not registered: retail pushes {r4-r6} (18 vs 12 instructions), cause unknown.
Slot* ActiveSlot(Holder* h, int idx)
{
    int cur = h->slot.index;
    u8 m = h->mode;
    if (m == 2 || m == 3) {
        if (cur >= 0 && cur < 3 && cur == idx) return &h->slot;
    }
    return 0;
}

struct CmdBuf {
    u32* start;     // +0
    char* end;      // +4
    u32 p0;
    u32* cur;       // +0xc
    u32 arg;        // +0x10
    u32* rec;       // +0x14
    u32* next;      // +0x18
    u16 half;       // +0x1c
};

void BeginCmd(CmdBuf* b, u32 arg, u16 half)
{
    u32* cur = b->cur;
    if ((u32)(b->end - (char*)cur) <= 0x2003) {
        *cur = 0x1000000;
        u32* t = b->cur + 1;
        *t = (u32)b->start;
        cur = b->start;
        b->cur = cur;
    }
    b->arg = arg;
    b->half = half;
    b->cur = cur + 1;
    b->rec = cur;
    b->next = cur + 1;
}
