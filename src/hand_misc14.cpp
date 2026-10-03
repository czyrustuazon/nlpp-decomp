// Hand-matched leaves from `rank`: FUN_0059cf74, FUN_0044dfc0, FUN_0050992c, FUN_0063e2a0, FUN_005ca954,
// FUN_006411e4. Names and types are guesses. Hard-float ABI. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;

extern "C" float __fabsf(float);

// FUN_0059cf74: |a - b| <= (|a| + |b| + 1) * 2^-23
bool NearlyEqual(float a, float b)
{
    float d = __fabsf(a - b);
    float tol = (__fabsf(a) + __fabsf(b) + 1.0f) * 1.1920929e-7f;
    return !(d > tol);
}

// FUN_0044dfc0: object with a vptr, an owner at +4 and six zeroed words
struct Owned {
    virtual void Dtor();
    u32 owner;                         // +4
    u32 a, b, c, d, e, f;              // +8 .. +0x1c
    Owned(u32 o);
};
Owned::Owned(u32 o)
    : owner(o), a(0), b(0), c(0), d(0), e(0), f(0)
{
}

// FUN_0050992c: zero n bytes of `data` starting at the 16-byte unit index of (p - origin)
struct ByteMap { u8* data; u8* origin; };
void ClearRun(ByteMap* m, u8* p, u32 n)
{
    u32 d = (u32)(p - m->origin);
    u8* data = m->data;
    u32 i = d >> 4;
    n += i;
    for (; n > i; i++) data[i] = 0;
}

// FUN_0063e2a0: element `index` (16 bytes) of the table behind the box at +4, 0 if the box has none
struct HdrB { char p0[0x16]; u16 off; };
struct BoxB { char p0[0x34]; u32 present; char p1[0x40 - 0x38]; HdrB* hdr; };
struct ElemB { char b[16]; };
struct OwnerB { u32 p0; BoxB* box; u32 index; };
ElemB* TableElemB(OwnerB* o)
{
    BoxB* b = o->box;
    if (b->present == 0) return 0;
    HdrB* h = b->hdr;
    u32 i = o->index;
    char* base = (char*)h + h->off;
    return (ElemB*)(base + i * 16);
}

// FUN_005ca954: global state: no pointer at +0x34 and something at +0x30
struct GState { char p0[0x30]; u32 a; u32 b; };
extern GState g_gstate;                // VA 0x0089A330
bool OnlyA()
{
    if (g_gstate.b == 0 && g_gstate.a != 0) return true;
    return false;
}

// FUN_006411e4: float at +0x10 of item `i` (table at +0x14) as an unsigned integer, 0 if the item is empty
struct ItemC { u32 head; char p0[0xc]; float val; };
struct ItemsHost { char p0[0x14]; ItemC* items[1]; };
u32 ItemValue(ItemsHost* h, u32 i)
{
    ItemC* it = h->items[i];
    if (it->head == 0) return 0;
    return (u32)it->val;
}
