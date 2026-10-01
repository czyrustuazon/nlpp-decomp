// Small callers of the slot accessor GetSlotField (the UI context at VA 0x008BFA40 is a
// SlotOwner) and a few tail-calling wrappers. Names and owner types are guesses; offsets come
// from the disassembly. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef signed char s8;

struct SlotOwner;
u32 GetSlotField(SlotOwner*, u32 g, u32 i);          // FUN_005c5cb0
extern SlotOwner* g_UiContext;                       // VA 0x008BFA40

struct UiObj;
struct UiVtbl {
    void* pad[17];
    void (*f44)(UiObj*, u32);                        // vtable +0x44
    void (*f48)(UiObj*, u32);
    void (*f4c)(UiObj*, u32);                        // vtable +0x4c
};
struct UiObj { UiVtbl* vt; };

void UiTailCall236084(UiObj*, u32);                  // FUN_00236084
bool Pred5d65a4(void*);                              // FUN_005d65a4
void Act5d646c(void*);                               // FUN_005d646c
void Act3544a8(void*, u32);                          // FUN_003544a8
void Reset5c2b5c(void*, u32);                        // FUN_005c2b5c
void ZeroFill(void*, u32);                           // FUN_001fddd8

struct Own1393f8 { char pad[0x4b]; s8 slot; char pad2[0x5c - 0x4c]; u32 value; };
// FUN_001393f8
void SetValue5c(Own1393f8* a, u32 v)
{
    UiObj* o = (UiObj*)GetSlotField(g_UiContext, a->slot, 0x1c);
    if (o) o->vt->f44(o, v);
    a->value = v;
}

struct Own139480 { char pad[0x4a]; u8 mode; };
// FUN_00139480
void ForwardUnlessMode4(Own139480* a, u32 v)
{
    if (a->mode != 4) {
        UiObj* o = (UiObj*)GetSlotField(g_UiContext, 0, 0x1b);
        if (o) UiTailCall236084(o, v);
    }
}

struct Own13995c { char pad[0x64]; u32 value; };
// FUN_0013995c
void SetValue64(Own13995c* a, u32 v)
{
    UiObj* o = (UiObj*)GetSlotField(g_UiContext, 1, 0x1d);
    if (o) o->vt->f4c(o, v);
    a->value = v;
}

struct Owndd928 { char pad[0x33c]; void* target; };
// FUN_000dd928
void ActIfReady(Owndd928* a)
{
    if (a->target != 0 && Pred5d65a4(a->target)) Act5d646c(a->target);
}

// FUN_000dd958
bool ActIfReadyBool(Owndd928* a)
{
    if (a->target != 0 && Pred5d65a4(a->target)) {
        Act5d646c(a->target);
        return true;
    }
    return false;
}

struct Own3579b4 { char pad[0x74]; void* child; char pad2[0x88 - 0x78]; u32 flags; char pad3[0x94 - 0x8c]; u8 lock; };
// FUN_003579b4
void SetFlag100(Own3579b4* a, bool on)
{
    void* c = a->child;
    if (c) {
        if (on) a->flags |= 0x100; else a->flags &= ~0x100u;
        if (a->lock) on = false;
        Act3544a8(c, on);
    }
}

struct Own29edc0 { char pad[0x1b4]; void* p[2]; char buf[0x200]; };
// FUN_0029edc0
void ResetAll(Own29edc0* a)
{
    for (int i = 0; i < 2; i++) {
        if (a->p[i]) Reset5c2b5c(a->p[i], 0);
    }
    ZeroFill(a->buf, 0x200);
}
