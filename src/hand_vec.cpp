// Hand-matched leaves from `rank`: vector/list helpers. FUN_002802c0 (54 callers), FUN_004c7904,
// FUN_00642e6c (52), FUN_00542230 (41), FUN_0059ced0 (44), FUN_001930d8. Names and types are guesses.
// Hard-float ABI: Vec3 is a homogeneous aggregate returned in s0-s2. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef int s32;

struct Vec3 { float x, y, z; };

// FUN_002802c0 and FUN_004c7904 (identical code, two copies)
struct VecArray { char p0[0xc0]; Vec3 v[1]; };
void SetVecA(VecArray* a, const Vec3* v, s32 i) { a->v[i] = *v; }
void SetVecB(VecArray* a, const Vec3* v, s32 i) { a->v[i] = *v; }

// FUN_00642e6c: vector at +0x34 of the object at +4, zero if there is none
struct VecSrc { char p0[0x34]; Vec3 v; };
struct VecHolder { u32 p0; VecSrc* src; };
Vec3 GetVec(VecHolder* h)
{
    float z = 0.0f;
    Vec3 r = { z, z, z };
    if (h->src != 0) r = h->src->v;
    return r;
}

// FUN_00542230: insert node n before pos in a counted circular list, return n
struct LNode { LNode* next; LNode* prev; };
struct LList { s32 count; };
// throw() with --exceptions: the exception specification changes this function's codegen too (2026-10-10).
LNode* ListInsert(LList* l, LNode* pos, LNode* n) throw()
{
    LNode* prev = pos->prev;
    n->next = pos;
    n->prev = prev;
    pos->prev = n;
    prev->next = n;
    l->count++;
    return n;
}

// FUN_0059ced0: normalise in place
extern "C" float __sqrtf(float);
void Normalize(Vec3* v)
{
    float x = v->x;
    float* yz = &v->y;
    float y = yz[0], z = yz[1];
    float inv = 1.0f / __sqrtf(x * x + y * y + z * z);
    v->x = x * inv;
    yz[0] = y * inv;
    yz[1] = z * inv;
}

// FUN_001930d8
struct Range2 { char p0[0x70]; s32 lo; s32 hi; char p1[0x84 - 0x78]; float f; };
void SetRange(Range2* r, s32 a, s32 b, float f)
{
    r->hi = a;
    r->lo = b;
    s32 lo = a;
    if (b <= a) lo = b;
    r->f = f;
    r->lo = lo;
}
