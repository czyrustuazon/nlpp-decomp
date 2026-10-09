// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_1422e0_4(u32, u32, u32, u32);
u32 Fn_1425cc_4(u32, u32, u32, u32);
extern char g_00892808[];
u32 Fn_261560_2(u32, u32);
u32 Fn_627fd4_2(u32, u32);
extern char g_007b119a[];
extern char g_003c5bb4[];
u32 Fn_0000ac_4(u32, u32, u32, u32);
u32 Fn_358150_3(u32, u32, u32);
u32 Fn_44d370_2(u32, u32);
u32 Fn_4b1714_1(u32);
u32 Fn_5f3578_2(u32, u32);
u32 Fn_5fd2e0_3(u32, u32, u32);
u32 Fn_5fd2e0_4(u32, u32, u32, u32);

// FUN_0014249c
void W_14249c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r4 = r1;
    r3 = ~0u;
    r0 = Fn_1422e0_4(r0, r1, r2, r3);
    f0 = 0.5f;
    r0 = 0u;
    L_1424b4:;
    r1 = *(u32*)(r4 + (r0 << 2));
    r0 = r0 + 1u;
    fa = r1; fb = 0u;
    if (fa != fb) *(float*)(r1 + 32) = f0;
    fa = r0; fb = 6u;
    if ((int)fa < (int)fb) goto L_1424b4;
    return;
}

// FUN_00142598
void W_142598(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r3_1, r0_1, r0_2, r0_3;
    float f0, f0_1, ffa, ffb;
    r4_1 = r1;
    r3_1 = ~0u;
    r0_1 = Fn_1425cc_4(r0, r1, r2, r3_1);
    r0_2 = *(u32*)(r4_1);
    f0_1 = 0.5f;
    fa = r0_2; fb = 0u;
    if (fa != fb) *(float*)(r0_2 + 32) = f0_1;
    r0_3 = *(u32*)(r4_1 + 4);
    fa = r0_3; fb = 0u;
    if (fa != fb) *(float*)(r0_3 + 32) = f0_1;
    return;
}

// FUN_00161f10
u32 W_161f10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 2u;
    r0 = Fn_261560_2(r0, r1);
    r7 = (u32)g_00892808;
    r5 = 0u;
    r6 = r0;
    r4 = r5;
    L_161f2c:;
    r0 = r7 + (r4 << 1);
    r1 = *(short*)(r0);
    r0 = r6;
    r0 = Fn_627fd4_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 6u;
    r5 = r5 + r0;
    if (fa < fb) goto L_161f2c;
    r0 = r5;
    return r0;
}

// FUN_00161f5c
u32 W_161f5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 2u;
    r0 = Fn_261560_2(r0, r1);
    r6 = (u32)g_007b119a;
    r5 = r0;
    r4 = 0u;
    L_161f74:;
    r0 = r6 + (r4 << 1);
    r1 = *(short*)(r0);
    r0 = r5;
    r0 = Fn_627fd4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_161fa0;
    r4 = r4 + 1u;
    fa = r4; fb = 61u;
    if (fa < fb) goto L_161f74;
    r0 = 1u;
    L_161fa0:;
    return r0;
}

// FUN_002c5df0
void W_2c5df0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_003c5bb4;
    r3 = 179u;
    r2 = 40u;
    r0 = Fn_0000ac_4(r0, r1, r2, r3);
    r1 = 0u;
    L_2c5e08:;
    r2 = r1;
    r3 = r1 + (r1 << 2);
    r1 = r1 + 1u;
    r3 = r0 + (r3 << 3);
    fa = r1; fb = 179u;
    *(u32*)(r3 + 4) = r2;
    if ((int)fa < (int)fb) goto L_2c5e08;
    return;
}

// FUN_00357c24
u32 W_357c24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    fa = r2; fb = 16u;
    if (fa != fb) goto L_357c40;
    r1 = *(u32*)(r1 + 8);
    r1 = r1 & 255u;
    r0 = Fn_358150_3(r0, r1, r2);
    L_357c40:;
    r0 = 1u;
    return r0;
}

// FUN_0044e2f8
u32 W_44e2f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 1u;
    r1 = 0u;
    r0 = Fn_44d370_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_44e31c;
    r0 = Fn_4b1714_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    L_44e31c:;
    r0 = r4;
    return r0;
}

// FUN_005f38e4
void W_5f38e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r1_1, r0_1;
    r4_1 = r1;
    r1_1 = 1u;
    r0_1 = Fn_5f3578_2(r0, r1_1);
    fa = r0_1; fb = 0u;
    if (fa != fb) *(u8*)(r0_1 + 2) = r4_1;
    return;
}

// FUN_005fbd14
u32 W_5fbd14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r0_1, r0_2, stk;
    r1_1 = 0u;
    r2_1 = (u32)&stk;
    *(u8*)((u32)&stk) = r1_1;
    r0_1 = Fn_5fd2e0_3(r0, r1_1, r2_1);
    r0_2 = *(u8*)((u32)&stk);
    return r0_2;
}

// FUN_006060f8
u32 W_6060f8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r3_1, r4_1, r2_2, r1_1, r0_1, r1_2, stk;
    *(u8*)(r1) = 1u;
    r3_1 = 0u;
    *(u8*)((u32)&stk) = r3_1;
    r0_1 = Fn_5fd2e0_4(r0, r3_1, ((u32)&stk), r3_1);
    *(u8*)(r1 + 1) = (*(u8*)((u32)&stk));
    return r0_1;
}
