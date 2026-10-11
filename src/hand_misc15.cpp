// Hand-matched leaves from `rank`: FUN_002783b8, FUN_005df344, FUN_005ca7cc, FUN_006242d8, FUN_00522228,
// FUN_0058d5b8. Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef int s32;

// FUN_002783b8: put the value in the first of two slots that is still unset (negative)
struct TwoSlots { char p0[0xa8]; s32 a, b; };
void FillSlot(TwoSlots* t, s32 v)
{
    if (t->a <= -1) t->a = v;
    else if (t->b <= -1) t->b = v;
}

// FUN_005df344: item `i` of the list at +0x44 (count is a signed short at +0xa), 0 if out of range
struct ListOwner { char p0[0x44]; struct ListBody* body; };
struct ListBody { u32* items; char p0[6]; short count; };
u32 ItemAt(ListOwner* o, s32 i)
{
    ListBody* b = o->body;
    if (b == 0) return 0;
    if (i >= 0 && i < b->count) return b->items[i];
    return 0;
}

// FUN_005ca7cc: field at +0x38 of the first of three global slots that is set (+0x34, +0x30, +0x2c)
struct Node38 { char p0[0x38]; u32 v; };
struct GSlots { char p0[0x2c]; Node38* c; Node38* b; Node38* a; };
extern GSlots g_gslots;                 // VA 0x0089A330
u32 FirstValue()
{
    u32 r = 0;
    Node38* n = g_gslots.a;
    if (n == 0) n = g_gslots.b;
    if (n != 0) {
        r = n->v;
    } else {
        Node38* c = g_gslots.c;
        if (c != 0) r = c->v;
    }
    return r;
}

// FUN_006242d8: run the global callback at +8 if the global is armed and `go` is set
struct Hook { u8 armed; char p0[7]; void (*fn)(); };
extern Hook g_hook;                     // VA 0x008BB5F0
bool RunHook(u32 go)
{
    if (g_hook.armed == 0 || g_hook.fn == 0) return false;   // `go` in its own test: retail clears r0
    if (go == 0) return false;                               // (moveq) before testing it
    g_hook.fn();
    return true;
}

// FUN_00522228: strnlen
u32 StrNLen(const u8* s, u32 n)
{
    u32 i = 0;
    while (s[i] != 0 && n > i) i++;
    return i;
}

// FUN_0058d5b8: zero-initialised object of sixteen words behind a vptr
struct Zeroed {
    virtual void Dtor();
    u32 w[16];
    Zeroed();
};
Zeroed::Zeroed()
{
    for (int i = 0; i < 16; i++) w[i] = 0;
}
