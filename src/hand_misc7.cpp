// Hand-matched leaves from `rank`: FUN_004c48c8, FUN_00548334, FUN_00548350, FUN_0063e2cc, FUN_005cd99c,
// FUN_006407a0, FUN_005e8230. Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

// FUN_004c48c8: same as RunTarget (src/hand_misc2.cpp) with the object at +0x350
struct Target4 {
    virtual void t0(); virtual void t1(); virtual void t2(); virtual void t3(); virtual void t4();
    virtual void t5(); virtual void t6(); virtual void t7(); virtual void t8(); virtual void t9();
    virtual void t10(); virtual void t11(); virtual void t12(); virtual void t13(); virtual void t14();
    virtual void t15(); virtual void t16(); virtual void t17(); virtual void t18();
    virtual u32 Run(u32 a, u32 b, u32 c, u32 d);   // vtable +0x4c
};
struct Host4 { char p0[0x350]; Target4* target; };
u32 RunTarget350(Host4* h)
{
    Target4* t = h->target;
    return t->Run(0xc0000, 0, 0, 0);
}

// FUN_00548334 / FUN_00548350: forward to a method of the global singleton at 0x8ab268
struct Single {
    virtual void s0(); virtual void s1();
    virtual u32 Call2(u32 a, u32 b);      // vtable +8
    virtual u32 Call3(u32 a);             // vtable +0xc
};
extern Single* g_single;                  // VA 0x008AB268
u32 SingleCall3(u32 a) { return g_single->Call3(a); }
u32 SingleCall2(u32 a, u32 b) { return g_single->Call2(a, b); }

// FUN_0063e2cc: address of element `index` (0x98 bytes each) in the table that follows a header
struct TblHdr { char p0[0x16]; u16 off; };
struct TblOwner { u32 p0; struct TblBox* box; u32 index; };
struct TblBox { char p0[0x2c]; TblHdr* hdr; };
struct Elem { char b[0x98]; };
Elem* TableElem(TblOwner* o)
{
    TblHdr* h = o->box->hdr;
    return (Elem*)((char*)h + h->off) + o->index;
}

// FUN_005cd99c: global flag (non-null pointer at +0x34 of the object at 0x89a330)
struct Flags { char p0[0x34]; void* ptr; };
extern Flags g_flags;                     // VA 0x0089A330
bool HasPtr() { return g_flags.ptr != 0; }

// FUN_006407a0
struct V3 { float x, y, z; };
extern "C" float __sqrtf(float);
float Length(const V3* v)
{
    return __sqrtf(v->x * v->x + v->y * v->y + v->z * v->z);
}

// FUN_005e8230: store two floats at +0x40 of the object at +4 and clear two flag bits
struct Pt { char p0[0x40]; float x, y; char p1[0xb7 - 0x48]; u8 flags; };
struct PtOwner { u32 p0; Pt* pt; };
void SetPt(PtOwner* o, float x, float y)
{
    Pt* p = o->pt;
    if (p != 0) {
        float* xy = &p->x;
        xy[0] = x;
        xy[1] = y;
        p->flags &= 0xcf;
    }
}
