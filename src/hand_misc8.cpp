// Hand-matched leaves from `rank`: FUN_00611398, FUN_0053218c, FUN_0043a468, FUN_00020510, FUN_0060d47c.
// Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef int s32;
typedef signed char s8;

// FUN_00611398: same shape as InitRec (src/lookup_fwd.cpp) with the pool at +0xa8/+0xac
struct Rec8 { u32 w0; u32 w1; u32 w2; u32 w3; u32 w4; u32 w5; };
struct Pool8 { char p0[0xa8]; u32 count; Rec8* recs; };
void InitRec8(Pool8* p, u32 i, u32 v)
{
    if (i >= p->count) return;
    Rec8* base = p->recs;
    if (base == 0) return;
    u32 z = 0;
    base[i].w0 = v;
    u32* q = &p->recs[i].w2;
    q[0] = z;
    q[1] = z;
}

// FUN_0053218c: normalise src into dst
struct Vec3n { float x, y, z; };
extern "C" float __sqrtf(float);
void NormalizeTo(Vec3n* dst, const Vec3n* src)
{
    const float* p = &src->x;
    float x = p[0], y = p[1], z = p[2];
    float inv = 1.0f / __sqrtf(x * x + y * y + z * z);
    float* d = &dst->y;
    dst->x = x * inv;
    d[0] = y * inv;
    d[1] = z * inv;
}

// FUN_0043a468: the field at +0x1c holds float bits; compare against 240.0 / 260.0 as signed ints
struct Gauge { char p0[0x1c]; s32 bits; };
bool OverLimit(Gauge* g, s32 tight)
{
    s32 v = g->bits;
    if (tight != 0) return v > 0x43700000;
    return v > 0x43820000;
}

// FUN_00020510: call FUN_00020574 with the 20-byte entry `index` of the table at 0x9a3d00
struct Ent20 { u32 w[5]; };
extern Ent20 g_ents[];                     // VA 0x009A3D00
void EntCall(Ent20* e, u32 a, u32 b);      // FUN_00020574
void CallEnt(u32 a, u32 b, u32 index)
{
    EntCall(&g_ents[index], a, b);
}

// FUN_0060d47c: first pair of thresholds in a signed-byte table (3 pairs) that brackets v; 6 if none
extern s8 g_thresh[];                      // VA 0x007E391A
s32 BracketOf(s32 v)
{
    s32 i = 0;
    for (;;) {
        if (g_thresh[i + 1] > v) return i;
        if (v < g_thresh[i + 2]) return i + 1;
        i += 2;
        if (i >= 6) return 6;
    }
}
