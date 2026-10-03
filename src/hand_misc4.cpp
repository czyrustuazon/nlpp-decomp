// Hand-matched leaf from `rank`: FUN_001f5a9c (60 callers). Names and types are guesses.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

struct Entry {                 // 0x34 bytes
    char p0[4];
    signed char prev;          // +4
    signed char cur;           // +5
    u8 changed;                // +6
    u8 f7;                     // +7
    u32 f8;                    // +8
    char p1[0x34 - 0xc];
};
struct Table { char p0[0x6c]; Entry e[1]; };

void Refresh(Table* t, u32 i, u32 flag);   // FUN_001f5b20 (r2 = 1)

void SetEntry(Table* t, u32 i, signed char v)
{
    Entry* e = &t->e[i];
    if (e->cur == v) return;
    if (e->prev == v) e->changed = 1;
    e->cur = v;
    e->f8 = 0;
    if (v == 0) return;
    e->f7 = 0;
    Refresh(t, i, 1);
}
