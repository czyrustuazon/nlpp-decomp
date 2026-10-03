// FUN_005db4b4 (115 callers): forward to FUN_005da0d4 with the global object, or return -1 (64-bit)
// when the global is not set. FUN_006111ec (83 callers): clear a 0x18-byte record at [index] and set
// its first word. Names are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef long long s64;

struct Obj;
extern Obj* g_8bfad4;                                  // VA 0x008BFAD4
s64 CallObj(Obj* o, u32 a, u32 b, u32 c);              // FUN_005da0d4

s64 CallGlobal(u32 a, u32 b, u32 c)
{
    if (g_8bfad4 == 0) return -1;
    return CallObj(g_8bfad4, a, b, c);
}

struct Rec { u32 w0; u32 w1; u32 w2; u32 w3; u32 w4; u32 w5; };
struct Pool { char p0[0xb8]; u32 count; Rec* recs; };

void InitRec(Pool* p, u32 i, u32 v)
{
    if (i >= p->count) return;
    Rec* base = p->recs;
    if (base == 0) return;
    u32 z = 0;
    base[i].w0 = v;
    u32* q = &p->recs[i].w2;
    q[0] = z;
    q[1] = z;
}
