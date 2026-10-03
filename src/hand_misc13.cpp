// Hand-matched leaves from `rank`: FUN_00640720, FUN_00642de0, FUN_001c7e34, FUN_00403294, FUN_0044afc8.
// Names and types are guesses. Hard-float ABI. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef signed char s8;

struct V3d { float x, y, z; };
struct V2d { float x, y; };

// FUN_00640720
float Dot3(const V3d* a, const V3d* b)
{
    return a->x * b->x + a->y * b->y + a->z * b->z;
}

// FUN_00642de0: 2D vector at +0x48 of the object at +4, zero if there is none
struct V2Src { char p0[0x48]; V2d v; };
struct V2Holder { u32 p0; V2Src* src; };
V2d GetVec2(V2Holder* h)
{
    float z = 0.0f;
    V2d r = { z, z };
    if (h->src != 0) r = h->src->v;
    return r;
}

// FUN_001c7e34: store a value at +0x6c and call a virtual (vtable +0xac) on the same object
struct Notify {
    virtual void n0(); virtual void n1(); virtual void n2(); virtual void n3(); virtual void n4();
    virtual void n5(); virtual void n6(); virtual void n7(); virtual void n8(); virtual void n9();
    virtual void n10(); virtual void n11(); virtual void n12(); virtual void n13(); virtual void n14();
    virtual void n15(); virtual void n16(); virtual void n17(); virtual void n18(); virtual void n19();
    virtual void n20(); virtual void n21(); virtual void n22(); virtual void n23(); virtual void n24();
    virtual void n25(); virtual void n26(); virtual void n27(); virtual void n28(); virtual void n29();
    virtual void n30(); virtual void n31(); virtual void n32(); virtual void n33(); virtual void n34();
    virtual void n35(); virtual void n36(); virtual void n37(); virtual void n38(); virtual void n39();
    virtual void n40(); virtual void n41(); virtual void n42();
    virtual void Changed(u32 v, u32 w);                 // vtable +0xac
    char p0[0x6c - 4];
    u32 value;                                   // +0x6c
};
int SetValue(Notify* n, u32 v, u32 w)
{
    n->value = v;
    n->Changed(v, w);
    return 0;
}

// FUN_00403294: tail-call virtual (vtable +0x10) on the child at +0xc if there is one
struct Kid { virtual void k0(); virtual void k1(); virtual void k2(); virtual void k3(); virtual void Go(u32 a); };
struct Parent { char p0[0xc]; Kid* kid; };
void GoKid(Parent* p, u32 a)
{
    if (p->kid != 0) p->kid->Go(a);
}

// FUN_0044afc8: signed byte at +0x20 of entry `i` in the table at +0x14, 1 if there is no table or entry
struct EntryB { char p0[0x20]; s8 v; };
struct TableHost { char p0[0x14]; EntryB** t; };
int EntryValue(TableHost* h, u32 i)
{
    EntryB** t = h->t;
    if (t != 0) {
        EntryB* e = t[i];
        if (e != 0) return e->v;
    }
    return 1;
}
