// Hand-matched leaves from `rank`: FUN_004b1714, FUN_0068a2b8, FUN_005325b8 / FUN_00532620 (table
// interpolation). Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned short u16;
typedef int s32;

// FUN_004b1714: true if either of two child objects answers its vtable +0x50 query
struct Q {
    virtual void q0(); virtual void q1(); virtual void q2(); virtual void q3(); virtual void q4();
    virtual void q5(); virtual void q6(); virtual void q7(); virtual void q8(); virtual void q9();
    virtual void q10(); virtual void q11(); virtual void q12(); virtual void q13(); virtual void q14();
    virtual void q15(); virtual void q16(); virtual void q17(); virtual void q18(); virtual void q19();
    virtual u32 Query();                     // vtable +0x50
};
struct Pair2 { char p0[0x58]; Q* a; Q* b; };
bool EitherQuery(Pair2* p)
{
    if (p->a != 0 && p->a->Query() != 0) return true;
    if (p->b != 0 && p->b->Query() != 0) return true;
    return false;
}

// FUN_0068a2b8: drop one reference; destroy the object (vtable +4) when it was the last and no extra
struct RefObj {
    virtual void r0(); virtual void Destroy();
    s32 pad; s32 count;                      // count at +8
};
struct RefHandle { RefObj* obj; u32 extra; };
RefHandle* ReleaseRef(RefHandle* h)
{
    if (h->obj != 0) {
        s32 r = h->obj->count - 1;
        h->obj->count = r;
        RefObj* o = h->obj;
        if (r == 0 && h->extra == 0 && o != 0) o->Destroy();
    }
    return h;
}

// FUN_005325b8 / FUN_00532620: wrap |x| below 65536, split into table index and fraction, interpolate
struct Seg { float a, b, c, d; };
extern Seg g_segs[256];                      // VA 0x007E8060

extern "C" float __fabsf(float);
static inline s32 bitsOf(float f) { union { float f; s32 u; } x; x.f = f; return x.u; }

float SegInterpB(float x)
{
    x = __fabsf(x);
    if (bitsOf(x) >= 0x47800000) {
        do {
            x -= 65536.0f;
        } while (bitsOf(x) >= 0x47800000);
    }
    u16 i = (u16)(u32)x;
    float frac = x - (float)(u32)i;
    const Seg* s = &g_segs[i & 0xff];
    return s->b + frac * s->d;
}

float SegInterpA(float x)
{
    float ax = __fabsf(x);
    if (bitsOf(ax) >= 0x47800000) {
        do {
            ax -= 65536.0f;
        } while (bitsOf(ax) >= 0x47800000);
    }
    u32 i = (u16)(u32)ax;
    float frac = ax - (float)i;
    const Seg* s = &g_segs[i & 0xff];
    float r = s->a + frac * s->c;
    if (x < 0.0f) r = -r;
    return r;
}
