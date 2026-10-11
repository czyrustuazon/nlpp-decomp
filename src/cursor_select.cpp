// Cursor over a kind-dispatched element source (FUN_003945b0 / FUN_0039471c). Built with --exceptions
// (inline unwind entries). Agent B, 2026-10-10. The inline helpers need an explicit default that repeats
// the kind-0/1 call: with `case 0: case 1: default:` ARMCC drops the 0/1 tests, without a default it
// skips the call; retail tests 0, 1, 2 and falls into the 0/1 code.
typedef unsigned int u32;
typedef signed int s32;
typedef unsigned char u8;

u32 W_445020(u32 src);                  // kind 0/1 count
u32 W_444cf0(u32 src);                  // kind 2 count
u32 W_444fb8(u32 src, u32 idx);         // kind 0/1 element
u32 W_444c88(u32 src, u32 idx);         // kind 2 element
u32 W_44552c(u32 src);                  // kind 0/1 parameter
u32 W_445334(u32 src);                  // kind 2 parameter

struct Mgr {
    virtual void v0(); virtual void v1(); virtual void v2(); virtual void v3(); virtual void v4();
    virtual void v5(); virtual void v6(); virtual void v7(); virtual void v8(); virtual void v9();
    virtual void v10(); virtual void v11(); virtual void v12(); virtual void v13(); virtual void v14();
    virtual void v15(); virtual void v16(); virtual void v17(); virtual void v18(); virtual void v19();
    virtual void v20(); virtual void v21(); virtual void v22(); virtual void v23();
    virtual u32 ShowA(u32 cur);         // +0x60
    virtual u32 ShowB(u32 cur);         // +0x64
    virtual u32 PickA(u32 cur);         // +0x68
    virtual u32 PickB(u32 cur);         // +0x6c
};
struct B;
bool SetIfNot(B* b, u32 v);             // FUN_00610b80
u32 W_616b88(u32 m, u32 cur, u32 arg, u32 p);
u32 W_6164cc(u32 m, u32 cur, u32 arg, u32 p);
struct Ctx { u8 pad[0x90]; Mgr* mgr; };
extern Ctx* g_008bfa54;                 // VA 0x008BFA54 (UI context; manager at +0x90)

struct Cursor {
    u32 cur;            // +0
    u32 src;            // +4
    u8  kind;           // +8
    u32 Count()
    {
        u32 s = src;
        switch (kind) {
        case 0: case 1: return W_445020(s);
        case 2: return W_444cf0(s);
        default: return W_445020(s);
        }
    }
    u32 At(u32 i)
    {
        switch (kind) {
        case 0: case 1: return W_444fb8(src, i);
        case 2: return W_444c88(src, i);
        default: return W_444fb8(src, i);
        }
    }
    u32 Select(u32 idx, u32 arg);
    u32 Pick(u32 idx, u32 arg);

};

// FUN_003945b0: select element idx (0 if out of range): store it, hand it to the manager, then the
// manager's kind-specific show call (vtable +0x60 / +0x64).
u32 Cursor::Select(u32 idx, u32 arg)
{
    if (Count() <= idx) return 0;
    Mgr* m = g_008bfa54->mgr;
    cur = At(idx);
    switch (kind) {
    case 0: case 1: W_616b88((u32)m, cur, arg, W_44552c(src)); break;
    case 2: W_6164cc((u32)m, cur, arg, W_445334(src)); break;
    }
    if (!SetIfNot((B*)m, 0)) return 0;
    switch (kind) {
    case 0: case 1: return m->ShowA(cur);
    case 2: return m->ShowB(cur);
    }
    return 0;
}

// FUN_0039471c: the same with vtable +0x68 / +0x6c.
u32 Cursor::Pick(u32 idx, u32 arg)
{
    if (Count() <= idx) return 0;
    Mgr* m = g_008bfa54->mgr;
    cur = At(idx);
    switch (kind) {
    case 0: case 1: W_616b88((u32)m, cur, arg, W_44552c(src)); break;
    case 2: W_6164cc((u32)m, cur, arg, W_445334(src)); break;
    }
    if (!SetIfNot((B*)m, 0)) return 0;
    switch (kind) {
    case 0: case 1: return m->PickA(cur);
    case 2: return m->PickB(cur);
    }
    return 0;
}
