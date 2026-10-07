// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_4e27a8_1(u32);
u32 Fn_4e2860_1(u32);
u32 WeakCall0();
u32 Fn_4ef124_2(u32, u32);
u32 Fn_000d0c_2(u32, u32);
u32 Fn_684968_1(u32);
u32 WeakCall1(u32);
u32 Fn_4fad4c_1(u32);
u32 Fn_4faff0_1(u32);
extern char g_008aabb0[];
u32 Fn_501204_2(u32, u32);
u32 Fn_6854e8_3(u32, u32, u32);
u32 Fn_6855c4_4(u32, u32, u32, u32);
extern char g_009b0c7c[];
u32 Fn_512d84_1(u32);
u32 Fn_024788_2f1(u32, u32, float);
u32 Fn_024788_1f1(u32, float);
extern char g_008aae58[];
u32 Fn_51a5e4_2(u32, u32);
u32 Fn_01231c_1f1(u32, float);
u32 Fn_6617b0_4(u32, u32, u32, u32);
u32 Fn_6659b0_3f4(u32, u32, u32, float, float, float, float);

// FUN_00507290
u32 W_507290(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
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
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
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

// FUN_005421ec
void W_5421ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4u;
    { WeakCall1(r0); return; }
}

// FUN_005426f8
void W_5426f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 16);
    { WeakCall1(r0); return; }
}

// FUN_005461ac
void W_5461ac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0054c28c
void W_54c28c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0054e868
void W_54e868(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, f2, f3, ffa, ffb;
    r0 = *(u32*)(r0 + 128);
    f2 = *(float*)(r1 + 0);
    f3 = *(float*)(r1 + 4);
    r0 = *(u32*)(r0 + 436);
    f0 = *(float*)(r2 + 0);
    f1 = *(float*)(r2 + 4);
    r0 = Fn_6659b0_3f4(r0, r1, r2, f0, f1, f2, f3);
    r2 = 5123u;
    r3 = 0u;
    r1 = 6u;
    r0 = 4u;
    { Fn_6617b0_4(r0, r1, r2, r3); return; }
}

// FUN_0054f900
void W_54f900(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    { WeakCall1(r0); return; }
}

// FUN_005542d8
void W_5542d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 616);
    { WeakCall1(r0); return; }
}

// FUN_005545b8
u32 W_5545b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r0_3, r0_4, r0_5;
    r1_1 = *(u32*)(r0 + 68);
    r0_1 = *(u8*)(r0 + 93);
    r0_2 = r1_1 * r0_1;
    r0_3 = r0_2 + (r0_2 << 2);
    r0_4 = r0_3 << 7;
    r0_5 = r0_4 + 32u;
    return r0_5;
}

// FUN_005557fc
void W_5557fc(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    *(float*)(r0 + 180) = f0;
    return;
}

// FUN_00556438
void W_556438(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    float f0 = p0, f1, f1_1, f0_1, ffa, ffb;
    f1_1 = 10.0f;
    r1_1 = 0u;
    *(u8*)(r0) = r1_1;
    f0_1 = f0 * f1_1;
    *(float*)(r0 + 4) = f0_1;
    return;
}
