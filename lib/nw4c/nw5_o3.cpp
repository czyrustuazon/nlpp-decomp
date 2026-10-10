// CTR SDK functions, matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008a88e0[];
extern char g_008a88d8[];
extern char g_008ab298[];
extern char g_008ab320[];
extern char g_008ab2b0[];
extern char g_008b8618[];
extern char g_008a88d4[];
extern char g_008a88dc[];
extern char g_008bb6f0[];
extern char g_008bb724[];
extern char g_008bb4f8[];
extern char g_008bb74c[];
extern char g_007e9404[];
extern char g_008a833c[];
extern char g_008a88bc[];
extern char g_0089a341[];
extern char g_0089a344[];
extern char g_0089a417[];
extern char g_008a7db0[];
extern char g_008ab81c[];
extern char g_009ae9f8[];
extern char g_0080d148[];
extern char g_0081c7c4[];
extern char g_0081c7f8[];
extern char g_0081c8a0[];
extern char g_0081c8d4[];
extern char g_0081c908[];
extern char g_0081c93c[];
extern char g_0079edec[];
extern char g_0079ee9c[];
extern char g_0079f314[];
extern char g_0079f0ec[];
extern char g_0079efe4[];
extern char g_0079f0b4[];
extern char g_0079ee14[];
extern char g_0079f2b4[];
extern char g_0079f28c[];
extern char g_0079f2ec[];
extern char g_0079f08c[];
extern char g_0079ee64[];
extern char g_0079f21c[];
extern char g_0079ef0c[];
extern char g_0079ef84[];
extern char g_0079f184[];
extern char g_0079ef5c[];
extern char g_0079efac[];
extern char g_0079eed4[];
extern char g_0079f114[];
extern char g_0079f14c[];
extern char g_0079f1bc[];
extern char g_0079f1e4[];
extern char g_0079f01c[];
extern char g_0079ef34[];
extern char g_0079ee3c[];
extern char g_0082bfa0[];
extern char g_0082d5bc[];
extern char g_0082d5cc[];
extern char g_0082d5dc[];
extern char g_0082d5ec[];
extern char g_00826dc4[];
extern char g_00827110[];
extern char g_008a75dc[];
extern char g_008a78ac[];
extern char g_00827454[];
extern char g_008275f4[];
extern char g_00827740[];
extern char g_00827754[];
extern char g_008a6a10[];
extern char g_007d5314[];
extern char g_0082ba18[];
void Fn_5461b0();
extern char g_00804b04[];
extern char g_008aa798[];
extern char g_009a04c0[];
extern char g_008aa7a4[];
extern char g_0089a330[];
extern char g_0089a430[];

// FUN_0054c334
void W_54c334() { Fn_5461b0(); }

// FUN_00634608
u32 W_634608() {

    return (u32)g_008a88d8;
}

// FUN_00635d24
u32 W_635d24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 316);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00635d44
u32 W_635d44(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 316);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_00635d60
u32 W_635d60(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = r1 & ~3u;
    r1 = r1 & 3u;
    r0 = r0 + r2;
    r0 = r0 + r1;
    r0 = *(u8*)(r0 + 320);
    return r0;
}

// FUN_00686960
void W_686960() {

}

// FUN_00686c0c
void W_686c0c() {

}
