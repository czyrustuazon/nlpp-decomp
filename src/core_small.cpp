// Core engine helpers with hundreds of callers (technical.md section 8 item 4): 3-vector and 3x4
// matrix copies, a vector subtract, and two bounds-checked array getters. Names are guesses.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned int u32;
typedef int s32;

struct Vec3 { float x, y, z; };
struct Vec3Bits { u32 x, y, z; };
struct Half { float f[6]; };
struct Mtx34 { Half a, b; };
struct PtrArray { u32 pad0; u32 pad4; s32 count; void** data; };      // count at +8, data at +0xc
struct PtrArrayU { u32 pad0; u32 pad4; u32 count; void** data; };

// FUN_001155e0 is at file 0x155e0
void Vec3Copy(Vec3Bits* d, const Vec3Bits* s)
{
    d->x = s->x;
    d->y = s->y;
    d->z = s->z;
}

// FUN_001154f8
void Vec3Sub(Vec3* d, const Vec3* s)
{
    d->x -= s->x;
    d->y -= s->y;
    d->z -= s->z;
}

// FUN_0011a174
void Mtx34Copy(Mtx34* d, const Mtx34* s)
{
    if (s == d) return;
    Half a = s->a;
    Half b = s->b;
    d->a = a;
    d->b = b;
}

// FUN_0054d370 is file 0x44d370: unsigned index
void* ArrayAtU(PtrArrayU* a, u32 i)
{
    if (a->data != 0 && i < a->count) return a->data[i];
    return 0;
}

// file 0x406894: signed count and index
void* ArrayAtS(PtrArray* a, s32 i)
{
    if (a->count > i) return a->data[i];
    return 0;
}
