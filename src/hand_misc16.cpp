// Hand-matched leaves from `rank`: FUN_004b1170, FUN_004c6f24, FUN_0059b51c, FUN_005bcc90, FUN_00630e20,
// FUN_0012d4b4, FUN_0048fa64, FUN_0016aaf8. Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef unsigned short u16;
typedef signed char s8;
typedef int s32;

// FUN_004b1170: when the id at +0x54 is -1 and a target exists at +0x58, forward to FUN_0004c850
struct Tgt;
struct IdHost { char p0[0x54]; s32 id; Tgt* tgt; };
void Release4c850(Tgt* t, u32 x, u32 y, u32 z);                // FUN_0004c850
void ReleaseIfUnset(IdHost* h, u32 x, u32 y, u32 z)
{
    if (h->tgt != 0 && h->id == -1) Release4c850(h->tgt, x, y, z);
}

// FUN_004c6f24: copy three words into +0x124
struct W3 { u32 w[3]; };
struct P2 { u32 a, b; };
struct W3Host { char p0[0x124]; P2 p; u32 c; };
void SetW3(W3Host* h, const W3* s)
{
    u32 a = s->w[0], b = s->w[1], c = s->w[2];
    h->c = c;
    h->p.a = a;
    h->p.b = b;
}

// FUN_0059b51c: identity quaternion
struct Quat { float x, y, z, w; };
Quat* SetIdentity(Quat* q)
{
    q->x = 0.0f;
    q->y = 0.0f;
    q->z = 0.0f;
    q->w = 1.0f;
    return q;
}

// FUN_005bcc90: gather three words from +0x58, +0x54, +0x60 into +0x3c4
struct Gather { char p0[0x54]; u32 a; u32 b; char p1[4]; u32 c; char p2[0x3c4 - 0x64]; W3 out; };
W3* GatherW3(Gather* g)
{
    g->out.w[0] = g->b;
    g->out.w[1] = g->a;
    g->out.w[2] = g->c;
    return &g->out;
}

// FUN_00630e20: does the object at +0x44 have either of two fields set?
struct TwoF { char p0[0xc]; u32 a; u32 b; };
struct TwoFHost { char p0[0x44]; TwoF* p; };
bool AnySet(TwoFHost* h)
{
    TwoF* p = h->p;
    if (p == 0) return false;
    return p->a != 0 || p->b != 0;
}

// FUN_0012d4b4: signed byte at (index + 0x1b0) of the object, index from a global (0 -> 0)
extern s32 g_index;                              // VA 0x008BFA78
s8 ByteAtIndex(char* o)
{
    s32 i = g_index;
    if (i == 0) return 0;
    return *(s8*)(o + i + 0x100 + 0xb0);
}

// FUN_0048fa64: ask the global manager (vtable +0x60) if there is one, else read +0x20
struct Mgr {
    virtual void m0(); virtual void m1(); virtual void m2(); virtual void m3();
    virtual void m4(); virtual void m5(); virtual void m6(); virtual void m7();
    virtual void m8(); virtual void m9(); virtual void m10(); virtual void m11();
    virtual void m12(); virtual void m13(); virtual void m14(); virtual void m15();
    virtual void m16(); virtual void m17(); virtual void m18(); virtual void m19();
    virtual void m20(); virtual void m21(); virtual void m22(); virtual void m23();
    virtual u32 Get();                               // vtable +0x60
};
struct MgrHost { char p0[0x20]; u32 fallback; };
extern Mgr* g_mgr;                               // VA 0x008A75DC
u32 MgrOrFallback(MgrHost* h)
{
    Mgr* m = g_mgr;
    if (m == 0) return h->fallback;
    return m->Get();
}

// FUN_0016aaf8: call vtable +8 of the embedded object at +0x44 with its own halfword (+4) added
struct Emb {
    virtual void e0(); virtual void e1();
    virtual int Move(short v);                      // vtable +8
    u16 base;                                        // +4
};
struct EmbHost { char p0[0x44]; Emb emb; };
void MoveEmb(EmbHost* h, short d)
{
    Emb* e = &h->emb;
    e->Move((short)(d + e->base));
}
