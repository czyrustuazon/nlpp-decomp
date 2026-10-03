// Hand-matched leaves from `rank`: FUN_006268c4 (65 callers), FUN_0027d220 (60), FUN_00642bd0 (71).
// Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

// FUN_006268c4: forward to FUN_00626aa8 with the embedded slot when the holder is in mode 2 or 3
struct Slot;
struct Holder2 {
    char p0[0x1f8];
    char slot[0x6b4 - 0x1f8];          // +0x1f8
    u8 mode;                           // +0x6b4
};
int SlotCall(Slot* s);                 // FUN_00626aa8

int HolderSlotCall(Holder2* h)
{
    if (h->mode == 2 || h->mode == 3) return SlotCall((Slot*)h->slot);
    return -1;
}

// FUN_0027d220: virtual call (vtable +0x4c) on the object at +0x34c with 0xc0000 and zeros
struct Target {
    virtual void t0(); virtual void t1(); virtual void t2(); virtual void t3(); virtual void t4();
    virtual void t5(); virtual void t6(); virtual void t7(); virtual void t8(); virtual void t9();
    virtual void t10(); virtual void t11(); virtual void t12(); virtual void t13(); virtual void t14();
    virtual void t15(); virtual void t16(); virtual void t17(); virtual void t18();
    virtual u32 Run(u32 a, u32 b, u32 c, u32 d);   // vtable +0x4c
};
struct Host { char p0[0x34c]; Target* target; };

u32 RunTarget(Host* h)
{
    Target* t = h->target;
    return t->Run(0xc0000, 0, 0, 0);
}

// FUN_00642bd0: send a pointer into the owner's buffer (4 before its end) to a sink
struct Sink2 {
    virtual void a0(); virtual void a1();
    virtual void Put(u32 p);           // vtable +8
};
struct Range { u32 head; u32 tail; };
struct Buf { char p0[0x10]; Range r; };              // range at +0x10
struct Owner2 { u32 p0; Buf* buf; };                 // +4

bool EmitBuf(Owner2* o, Sink2* out)
{
    bool ok = false;
    Buf* b = o->buf;
    if (b != 0) {
        Range* r = &b->r;
        u32 v = r->head;
        if (v != 0) v = r->tail - 4;
        Sink2* s = out;
        s->Put(v);
        ok = true;
    }
    return ok;
}
