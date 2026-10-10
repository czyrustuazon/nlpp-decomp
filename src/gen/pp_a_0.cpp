// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00823db0[];
u32 Fn_410d04_5(u32, u32, u32, u32, u32);
u32 Fn_404ebc_4(u32, u32, u32, u32);
extern char g_008240c0[];
extern char g_00824100[];
extern char g_008242a8[];
extern char g_008243d0[];
extern char g_00824410[];
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_4178c8_2(u32, u32);
extern char g_00824794[];
extern char g_008248c0[];
extern char g_008249e0[];
u32 Fn_414e5c_5(u32, u32, u32, u32, u32);
extern char g_00824ad0[];
extern char g_0082d3e0[];
extern char g_008bb598[];
u32 Fn_5785cc_4(u32, u32, u32, u32);
extern char g_0082d4b8[];
extern char g_0082d4d0[];
extern char g_0082d550[];
extern char g_007ebe64[];
extern char g_008bb580[];
u32 Fn_00023c_5(u32, u32, u32, u32, u32);
u32 Fn_585070_4(u32, u32, u32, u32);
extern char g_007ebe84[];
u32 Fn_000bf4_2(u32, u32);
u32 Fn_58679c_4(u32, u32, u32, u32);
u32 Fn_63fa7c_3(u32, u32, u32);
u32 Fn_586940_2(u32, u32);
u32 Fn_58b248_4(u32, u32, u32, u32);
u32 Fn_02b184_3(u32, u32, u32);
u32 Fn_02b1c4_3(u32, u32, u32);
u32 Fn_011d7c_3f4(u32, u32, u32, float, float, float, float);
u32 Fn_00ff74_3(u32, u32, u32);
u32 Fn_02b128_3(u32, u32, u32);
u32 Fn_02b168_3(u32, u32, u32);
extern char g_0082dc64[];
u32 Fn_5a5870_3(u32, u32, u32);
extern char g_0082dfa4[];
extern char g_008ab4e0[];
u32 Fn_5a221c_2(u32, u32);
u32 Fn_5b31c4_6(u32, u32, u32, u32, u32, u32);

// FUN_0040807c
void W_40807c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r2_2, r1_1, r0_1, r1_2;
    r2_1 = 0u;
    r3_1 = r1;
    r2_2 = 17u;
    r1_1 = 35u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_2, r3_1, r2_1);
    r1_2 = (u32)g_00823db0;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_0040c92c
void W_40c92c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1, stk;
    stk = (*(u32*)(r0 + 68));
    r0_1 = Fn_404ebc_4(r0, r1, ((u32)&stk), 1u);
    return;
}

// FUN_004105f4
u32 W_4105f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4_1, r3_1, r2_1, r1_1, r0_1, r1_2;
    r4_1 = 0u;
    r3_1 = r1;
    r2_1 = 17u;
    r1_1 = 23u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_1, r3_1, r4_1);
    r1_2 = (u32)g_008240c0;
    *(u32*)(r0_1) = r1_2;
    *(u32*)(r0_1 + 156) = r4_1;
    return r0_1;
}

// FUN_00410650
void W_410650(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r2_2, r1_1, r0_1, r1_2;
    r2_1 = 0u;
    r3_1 = r1;
    r2_2 = 17u;
    r1_1 = 63u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_2, r3_1, r2_1);
    r1_2 = (u32)g_00824100;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_00411268
u32 W_411268(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4_1, r3_1, r2_1, r1_1, r0_1, r1_2;
    r4_1 = 0u;
    r3_1 = r1;
    r2_1 = 17u;
    r1_1 = 20u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_1, r3_1, r4_1);
    r1_2 = (u32)g_008242a8;
    *(u32*)(r0_1) = r1_2;
    *(u32*)(r0_1 + 156) = r4_1;
    return r0_1;
}

// FUN_00413edc
void W_413edc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1, r1_2;
    r0_1 = Fn_410d04_5(r0, 21u, 17u, r1, 1u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 156) = r1_2;
    *(u32*)(r0_1) = ((u32)g_008243d0);
    *(u32*)(r0_1 + 160) = r1_2;
    *(u32*)(r0_1 + 164) = r1_2;
    *(u32*)(r0_1 + 168) = r1_2;
    return;
}

// FUN_00414b24
u32 W_414b24(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r1 = 5u;
    r0 = Fn_4178c8_2(r0, r1);
    r5 = 0u;
    *(u32*)(r0 + 24) = r5;
    *(u32*)(r0 + 28) = r5;
    *(u8*)(r0 + 32) = r5;
    r1 = (u32)g_00824410;
    *(u8*)(r0 + 33) = r5;
    *(u8*)(r0 + 34) = r5;
    *(u8*)(r0 + 35) = r5;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 300) = r5;
    *(u32*)(r0 + 304) = r5;
    r4 = r0;
    *(u32*)(r0 + 308) = r5;
    r1 = 256u;
    r0 = r0 + 36u;
    r0 = Fn_1fddd8_2(r0, r1);
    *(u32*)(r4 + 292) = r5;
    *(u32*)(r4 + 296) = r5;
    *(u32*)(r4 + 312) = r5;
    *(u32*)(r4 + 316) = r5;
    r0 = r4;
    *(u32*)(r4 + 320) = r5;
    return r0;
}

// FUN_0041febc
void W_41febc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r2_2, r1_1, r0_1, r2_3, r1_2;
    r2_1 = 1u;
    r3_1 = r1;
    r2_2 = 17u;
    r1_1 = 18u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_2, r3_1, r2_1);
    r2_3 = (u32)g_00824794;
    r1_2 = 0u;
    *(u32*)(r0_1 + 156) = r1_2;
    *(u32*)(r0_1) = r2_3;
    *(u32*)(r0_1 + 160) = r1_2;
    return;
}

// FUN_00422f08
u32 W_422f08(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3_1, r2_1, r1_1, r0_1, r1_2, r2_2;
    r3_1 = r1;
    r2_1 = 17u;
    r1_1 = 57u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_1, r3_1, r2);
    r1_2 = (u32)g_008248c0;
    r2_2 = 0u;
    *(u32*)(r0_1) = r1_2;
    *(u32*)(r0_1 + 156) = r2_2;
    return r0_1;
}

// FUN_00425cd0
void W_425cd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r2_2, r1_1, r0_1, r1_2;
    r2_1 = 0u;
    r3_1 = r1;
    r2_2 = 17u;
    r1_1 = 72u;
    r0_1 = Fn_414e5c_5(r0, r1_1, r2_2, r3_1, r2_1);
    r1_2 = (u32)g_008249e0;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_004286ac
void W_4286ac(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r2_2, r1_1, r0_1, r1_2;
    r2_1 = 1u;
    r3_1 = r1;
    r2_2 = 17u;
    r1_1 = 56u;
    r0_1 = Fn_410d04_5(r0, r1_1, r2_2, r3_1, r2_1);
    r1_2 = (u32)g_00824ad0;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_0057fdd4
void W_57fdd4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4_1, r3_1, r2_1, r0_1, r1_1, r1_2;
    r4_1 = (u32)g_008bb598;
    r3_1 = 0u;
    r2_1 = *(u32*)(r4_1 + 4);
    r0_1 = Fn_5785cc_4(r0, r1, r2_1, r3_1);
    r1_1 = (u32)g_0082d3e0;
    *(u32*)(r0_1) = r1_1;
    r1_2 = *(u32*)(r4_1 + 4);
    *(u32*)(r0_1 + 48) = r1_2;
    return;
}

// FUN_0057fe04
u32 W_57fe04(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4_1, r3_1, r0_1, r1_1;
    r4_1 = r2;
    r3_1 = 0u;
    r0_1 = Fn_5785cc_4(r0, r1, r2, r3_1);
    r1_1 = (u32)g_0082d3e0;
    *(u32*)(r0_1) = r1_1;
    *(u32*)(r0_1 + 48) = r4_1;
    return r0_1;
}

// FUN_00581e6c
void W_581e6c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4_1, r3_1, r2_1, r0_1, r1_1, r1_2;
    r4_1 = (u32)g_008bb598;
    r3_1 = 0u;
    r2_1 = *(u32*)(r4_1 + 12);
    r0_1 = Fn_5785cc_4(r0, r1, r2_1, r3_1);
    r1_1 = (u32)g_0082d4b8;
    *(u32*)(r0_1) = r1_1;
    r1_2 = *(u32*)(r4_1 + 12);
    *(u32*)(r0_1 + 48) = r1_2;
    return;
}

// FUN_00581e9c
u32 W_581e9c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4_1, r3_1, r0_1, r1_1;
    r4_1 = r2;
    r3_1 = 0u;
    r0_1 = Fn_5785cc_4(r0, r1, r2, r3_1);
    r1_1 = (u32)g_0082d4b8;
    *(u32*)(r0_1) = r1_1;
    *(u32*)(r0_1 + 48) = r4_1;
    return r0_1;
}

// FUN_00582068
u32 W_582068(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4_1, r3_1, r2_1, r0_1, r1_1;
    r4_1 = r2;
    r3_1 = 1u;
    r2_1 = 131072u;
    r0_1 = Fn_5785cc_4(r0, r1, r2_1, r3_1);
    r1_1 = (u32)g_0082d4d0;
    *(u32*)(r0_1) = r1_1;
    *(u32*)(r0_1 + 48) = r4_1;
    return r0_1;
}

// FUN_00582aec
void W_582aec(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r0_1;
    r0_1 = Fn_5785cc_4(r0, r1, 131072u, 1u);
    *(u32*)(r0_1) = ((u32)g_0082d4d0);
    *(u32*)(r0_1 + 48) = (*(u32*)(((u32)g_008bb598) + 8));
    *(u32*)(r0_1) = ((u32)g_0082d550);
    *(u8*)(r0_1 + 52) = r2;
    *(u32*)(r0_1 + 56) = r3;
    *(u8*)(r0_1 + 60) = a4;
    return;
}

// FUN_00584840
void W_584840(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r0_1;
    r0_1 = Fn_00023c_5(r0, r1, ((u32)g_007ebe64), (*(u32*)(((u32)g_008bb580))), ((*(u16*)(r2 + 2)) + 1u));
    return;
}

// FUN_00585058
void W_585058(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r0_1, stk;
    stk = 0u;
    r0_1 = Fn_585070_4(r0, r1, r2, ((u32)&stk));
    return;
}

// FUN_005853f8
u32 W_5853f8(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 r5_1, r0_1, r4_1, r0_3, r4_2, r0_5;
    r5_1 = a0;
    r0_1 = Fn_58679c_4(a0, a1, a2, a4);
    r4_1 = r0_1;
    r0_3 = Fn_000bf4_2((r5_1 + (r4_1 << 1)), ((u32)g_007ebe84));
    r4_2 = r4_1 + 1u;
    r0_5 = Fn_63fa7c_3(a3, (r5_1 + (r4_2 << 1)), (a1 - r4_2));
    return (r0_5 + r4_2);
}

// FUN_00586928
void W_586928(u32 a0) {
    u32 r0 = a0, r0_1, stk;
    stk = 0u;
    r0_1 = Fn_586940_2(r0, ((u32)&stk));
    return;
}

// FUN_0058b124
void W_58b124(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r12_1, r0_1, stk[5];
    r12_1 = 0u;
    *(u32*)((u32)stk + 8) = r2; *(u32*)((u32)stk + 8 + 4) = r3;
    *(u32*)((u32)stk) = r12_1;
    *(u32*)((u32)stk + 4) = r12_1;
    r0_1 = Fn_58b248_4(r0, r1, ((u32)stk), r3);
    return;
}

// FUN_0059c140
u32 W_59c140(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_02b184_3(r0, r1, r0);
    return r0;
}

// FUN_0059ca90
u32 W_59ca90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_02b1c4_3(r0, r1, r0);
    return r0;
}

// FUN_0059d1bc
void W_59d1bc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r2_1, r0_1, stk[3];
    float f0_1, f1_1, f2_1, f3_1, f1_2, f2_2, f0_2;
    f0_1 = 57.2957764f;
    f1_1 = *(float*)(r2 + 0);
    f2_1 = *(float*)(r2 + 4);
    f3_1 = *(float*)(r2 + 8);
    r2_1 = (u32)stk;
    f1_2 = f1_1 * f0_1;
    f2_2 = f2_1 * f0_1;
    f0_2 = f3_1 * f0_1;
    *(float*)((u32)stk + 8) = f0_2;
    *(float*)((u32)stk + 0) = f1_2;
    *(float*)((u32)stk + 4) = f2_2;
    r0_1 = Fn_011d7c_3f4(r0, r1, r2_1, f0_2, f1_2, f2_2, f3_1);
    return;
}

// FUN_0059d2ac
u32 W_59d2ac(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_00ff74_3(r0, r1, r0);
    return r0;
}

// FUN_0059d2c4
u32 W_59d2c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_02b128_3(r0, r1, r0);
    return r0;
}

// FUN_0059d394
u32 W_59d394(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_02b168_3(r0, r1, r0);
    return r0;
}

// FUN_005ac3c4
void W_5ac3c4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5;
    r4 = r1;
    r5 = r2;
    r1 = 999424u;
    r0 = Fn_5a5870_3(r0, r1, r2);
    r1 = (u32)g_0082dc64;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 236) = r4; *(u32*)(r0 + 236 + 4) = r5;
    return;
}

// FUN_005b2cc0
void W_5b2cc0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r12;
    if (r1 == 0u) goto L_5b2cf0;
    r2 = *(u32*)(r1 + 0); r3 = *(u32*)(r1 + 4); r12 = *(u32*)(r1 + 8);
    r4 = 0u;
    r1 = r1 + 128u;
    r0 = Fn_5b31c4_6(r0, r1, r2, r3, r12, r4);
    return;
    L_5b2cf0:;
    r1 = (u32)g_008ab4e0;
    r0 = r0 + 4u;
    r0 = Fn_5a221c_2(r0, r1);
    r1 = (u32)g_0082dfa4;
    *(u32*)(r0 - 4) = r1;
    return;
}
