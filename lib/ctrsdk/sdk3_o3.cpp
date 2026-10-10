// CTR SDK functions, matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
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
extern char g_007b6850[];
extern char g_007b7380[];
extern char g_007b7470[];
extern char g_007b7798[];
extern char g_007b895c[];
extern char g_008bfa54[];
u32 Fn_021ccc_3(u32, u32, u32);
extern char g_0082dae4[];
extern char g_0082df14[];
extern char g_008a8860[];
extern char g_0089a330[];
extern char g_007be1e4[];
extern char g_007e39cc[];
extern char g_007e3abc[];
extern char g_007e3b78[];
extern char g_007e3ac0[];
extern char g_0082ee38[];
extern char g_008bfa48[];
extern char g_0082ef70[];
extern char g_0082f0a0[];
extern char g_0082fc18[];
extern char g_007ccb6c[];
extern char g_0079e410[];
extern char g_007d502c[];
extern char g_0081cecc[];
extern char g_0082cad4[];
extern char g_008ab848[];
u32 Fn_509960_2(u32, u32);
u32 Fn_685544_1(u32);
extern char g_008aabb0[];
u32 Fn_6854e8_3(u32, u32, u32);
u32 Fn_6855c4_4(u32, u32, u32, u32);
extern char g_009b0c7c[];
extern char g_008aae58[];

// FUN_00507290
u32 W_507290(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, fa, fb, stk[2];
    r4 = r0;
    r0 = *(u32*)(r2);
    r6 = r1;
    r1 = r0 + 8u;
    r5 = r3;
    r0 = (u32)stk + 4u;
    r0 = Fn_6855c4_4(r0, r1, r2, r3);
    r0 = *(u32*)((u32)stk + 4);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_5072f0;
    r2 = *(u32*)(r5);
    r1 = (u32)stk;
    r0 = r0 + 8u;
    *(u32*)((u32)stk) = r2;
    r0 = Fn_6854e8_3(r0, r1, r2);
    r0 = *(u32*)(r5);
    *(u32*)(r6) = r0;
    r0 = *(u32*)(r4);
    r0 = *(u32*)(r0 + 4);
    *(u32*)(r4) = r0;
    r0 = 0u;
    L_5072f0:;
    return r0;
}

// FUN_0050745c
u32 W_50745c(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, fa, fb, stk[2];
    r4 = r0;
    r0 = *(u32*)(r3);
    r6 = r1;
    r1 = r0 + 8u;
    r5 = r2;
    r0 = (u32)stk + 4u;
    r0 = Fn_6855c4_4(r0, r1, r2, r3);
    r0 = *(u32*)((u32)stk + 4);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_5074bc;
    r2 = *(u32*)(r5);
    r1 = (u32)stk;
    r0 = r0 + 8u;
    *(u32*)((u32)stk) = r2;
    r0 = Fn_6854e8_3(r0, r1, r2);
    r0 = *(u32*)(r5);
    *(u32*)(r6) = r0;
    r0 = *(u32*)(r4);
    r0 = *(u32*)(r0 + 4);
    *(u32*)(r4) = r0;
    r0 = 0u;
    L_5074bc:;
    return r0;
}

// FUN_006329b0
void W_6329b0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = r1;
    r1 = r0;
    r0 = r2;
    { Fn_021ccc_3(r0, r1, r2); return; }
}

// FUN_0063384c
u32 W_63384c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u8*)(r0 + 5);
    return r0;
}

// FUN_00685330
void W_685330(u32 a0, u32 a1, u32 a2) {
    *(u8*)((u32)(a0) + 4) = 4;
    *(u8*)((u32)(a0) + 6) = a2;
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
}

// FUN_00685348
void W_685348(u32 a0, u32 a1, u32 a2) {
    *(u8*)((u32)(a0) + 4) = 3;
    *(u32*)((u32)(a0) + 16) = a2;
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
}

// FUN_00685360
void W_685360(u32 a0, u32 a1, u32 a2) {
    *(u8*)((u32)(a0) + 4) = 2;
    *(u16*)((u32)(a0) + 6) = a2;
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
}

// FUN_006854e8
void W_6854e8(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 4) = 1;
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
}

// FUN_006855c4
u32 W_6855c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6;
    r6 = r0;
    r0 = *(u32*)(r1 + 8);
    r5 = r1;
    r1 = 2u;
    r0 = Fn_509960_2(r0, r1);
    r4 = r0;
    if (r4 == 0) *(u32*)(r6) = r0;
    if (r4 == 0) goto L_685608;
    r0 = r4 + 8u;
    if (r0 != 0) r0 = Fn_685544_1(r0);
    r0 = *(u32*)(r5);
    *(u32*)(r4 + 0) = r0; *(u32*)(r4 + 4) = r5;
    *(u32*)(r5) = r4;
    r0 = *(u32*)(r4);
    *(u32*)(r0 + 4) = r4;
    *(u32*)(r6) = r4;
    L_685608:;
    return r0;
}
