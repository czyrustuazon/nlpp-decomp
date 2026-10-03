// FUN_005eba00 (807 callers): look up a key through the owner's handler and hand the result to a
// sink. If `flag` is set, a sub-object of the handler is tried first.
// Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;

struct Sink {
    virtual void v0(); virtual void v1();
    virtual void Put(u32 r);              // vtable +8
};

struct Sub {
    virtual void s0(); virtual void s1(); virtual void s2(); virtual void s3(); virtual void s4();
    virtual void s5(); virtual void s6(); virtual void s7(); virtual void s8(); virtual void s9();
    virtual void s10();
    virtual u32 Find(u32 key, u32 n);     // vtable +0x2c
};

struct Handler {
    virtual void h0(); virtual void h1(); virtual void h2(); virtual void h3(); virtual void h4();
    virtual void h5(); virtual void h6(); virtual void h7(); virtual void h8(); virtual void h9();
    virtual void h10();
    virtual Sub* GetSub(u32 a, u32 n);         // vtable +0x2c
    virtual u32 Find(u32 key, u32 n);     // placeholder, same slot via cast below
};

struct Mid { u32 p0; u32 p1; u32 p2; u32 p3; Handler* h; };   // handler at +0x10
struct Owner { u32 p0; Mid* mid; };                           // +4

bool DispatchLookup(Owner* o, u32 key, Sink* out, u32 flag)
{
    bool ok = false;
    Mid* m = o->mid;
    Handler* h;
    if (m != 0 && (h = m->h) != 0) {
        if (flag != 0) {
            Sub* s = h->GetSub(flag, 1);
            if (s != 0) {
                u32 r = s->Find(key, 1);
                if (r != 0) {
                    out->Put(r);
                    return true;
                }
            }
        }
        u32 r = ((Sub*)h)->Find(key, 1);
        if (r != 0) {
            out->Put(r);
            ok = true;
        }
    }
    return ok;
}
