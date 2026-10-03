// Hand-matched leaves from `rank`: FUN_000154c4 (59 callers), FUN_00611234. Names and types are guesses.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef unsigned long long u64;

struct Vec3a { float x, y, z; };
void AddAssign(Vec3a* a, const Vec3a* b)
{
    a->x += b->x;
    a->y += b->y;
    a->z += b->z;
}

// FUN_00611234: arm a timer-like state if it is idle and has a 64-bit value pending
struct Armer {
    char p0[0x48]; u32 src;           // +0x48
    char p1[4];
    u64 pending;                      // +0x50
    char p2[0xc4 - 0x58];
    u8 armed;                         // +0xc4
    u8 cleared;                       // +0xc5
    u8 state;                         // +0xc6
    char p3[0xc8 - 0xc7];
    u32 c8;                           // +0xc8
    char p4[0xd4 - 0xcc];
    u32 d4;                           // +0xd4
};

bool Arm(Armer* a)
{
    a->cleared = 0;
    if (a->state != 0) return false;
    if (a->src == 0) return false;
    if (a->pending == 0) return false;
    a->armed = 1;
    a->c8 = 0;
    a->d4 = 0;
    a->state = 4;
    return true;
}
