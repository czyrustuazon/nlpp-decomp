// Small functions above 0x500000: sub-object adjusters (callee works on the member at +4),
// sub-object constructors that store a vptr, a Vec3 copy, and two vec3 setters on a child object.
// Names and types are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

char* Sub2a080(char* sub);      // FUN_0002a080
char* Sub2a070(char* sub);      // FUN_0002a070
extern const char g_Vtbl82DF84[];
extern const char g_Vtbl82DFA4[];
extern const char g_Vtbl82DFC4[];
extern const char g_Vtbl82DF74[];
extern const char g_Vtbl82DFB4[];

// FUN_005b1be0, FUN_005b2010, FUN_005b28a8, FUN_005b2ca0, FUN_005b340c, FUN_005b5aac
char* AdjustedCall5b1be0(char* p) { return Sub2a080(p + 4) - 4; }
char* AdjustedCall5b2010(char* p) { return Sub2a080(p + 4) - 4; }
char* AdjustedCall5b28a8(char* p) { return Sub2a080(p + 4) - 4; }
char* AdjustedCall5b2ca0(char* p) { return Sub2a080(p + 4) - 4; }
char* AdjustedCall5b340c(char* p) { return Sub2a080(p + 4) - 4; }
char* AdjustedCall5b5aac(char* p) { return Sub2a080(p + 4) - 4; }

// FUN_005b2bb0: the callee is passed p itself, the vptr goes at p - 4 (so p was a sub-object)
char* VptrCtor5b2bb0(char* p)
{
    char* r = Sub2a070(p);
    *(const char**)(r - 4) = g_Vtbl82DF84;
    return r - 4;
}

// FUN_005b33f0, FUN_005b5ca0
char* VptrCtor5b33f0(char* p)
{
    char* r = Sub2a070(p + 4);
    *(const char**)(r - 4) = g_Vtbl82DFA4;
    return r - 4;
}
char* VptrCtor5b5ca0(char* p)
{
    char* r = Sub2a070(p + 4);
    *(const char**)(r - 4) = g_Vtbl82DFC4;
    return r - 4;
}

struct Vec3 { u32 x, y, z; };

// FUN_0059cb38
void CopyVec3(Vec3* dst, const Vec3* src)
{
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

struct Node { char pad0[0x28]; float v28[3]; char pad1[0xb7 - 0x34]; u8 flags; };
struct NodeOwner { u32 f0; Node* node; };

// FUN_005e7d74: float args arrive in s0..s2 and are stored with one vstm
void SetNodePos(NodeOwner* o, float x, float y, float z)
{
    Node* n = o->node;
    if (n) {
        n->v28[0] = x;
        n->v28[1] = y;
        n->v28[2] = z;
        u8 f = n->flags;
        n->flags = f & 0xcf;
    }
}

struct Node2 { char pad0[0x34]; float v34[3]; char pad1[0xb7 - 0x40]; u8 flags; };
struct NodeOwner2 { u32 f0; Node2* node; };

// FUN_005e8254
void SetNodeScale(NodeOwner2* o, float x, float y, float z)
{
    Node2* n = o->node;
    if (n) {
        n->v34[0] = x;
        n->v34[1] = y;
        n->v34[2] = z;
        u8 f = n->flags;
        n->flags = f & 0xcf;
    }
}

// FUN_005b2884, FUN_005b5a88: sub-object ctor that also zeroes the word after the sub-object
char* VptrCtor5b2884(char* p)
{
    char* r = Sub2a070(p + 4);
    *(u32*)(r + 4) = 0;
    *(const char**)(r - 4) = g_Vtbl82DF74;
    return r - 4;
}
char* VptrCtor5b5a88(char* p)
{
    char* r = Sub2a070(p + 4);
    *(u32*)(r + 4) = 0;
    *(const char**)(r - 4) = g_Vtbl82DFB4;
    return r - 4;
}

// FUN_005b2788: two nested sub-object constructors, then a zeroed word at +8
char* NestedCtor5b2788(char* p)
{
    char* r = Sub2a070(Sub2a070(p) + 4) - 4;
    *(u32*)(r + 8) = 0;
    return r;
}
