// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_0082df04[];
u32 Fn_5b1514_3(u32, u32, u32);
u32 WeakCall0();
extern char g_007b431c[];
u32 Fn_443ac8_4(u32, u32, u32, u32);
u32 WeakCall1(u32);
u32 Fn_5b13a8_4(u32, u32, u32, u32);
extern char g_008a6da0[];
u32 Fn_13dd98_2f6(u32, u32, float, float, float, float, float, float);
u32 Fn_13f260_2(u32, u32);
u32 Fn_2d8874_3(u32, u32, u32);
u32 Fn_13de4c_3(u32, u32, u32);
u32 WeakCall2(u32, u32);
u32 Fn_4032b0_1f1(u32, float);

// FUN_00340170
void W_340170(u32 a0) {
    u32 r0 = a0, r2_1, r1_1, r0_1, r0_2, stk[3];
    r2_1 = (u32)g_0082df04;
    r1_1 = 73u;
    *(u32*)((u32)stk + 8) = r0;
    r0_1 = (u32)stk;
    *(u32*)((u32)stk + 4) = r1_1;
    *(u32*)((u32)stk) = r2_1;
    r0_2 = Fn_5b1514_3(r0_1, r1_1, r2_1);
    return;
}

// FUN_0034125c
void W_34125c() {
    { WeakCall0(); return; }
}

// FUN_003837bc
void W_3837bc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 32) = r1_1;
    *(u32*)(r0 + 36) = r2_1;
    return;
}

// FUN_00390c20
u32 W_390c20(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, fa, fb, stk;
    stk = r2;
    if (r1 > 5u) goto L_390c74;
    r1 = (u32)g_007b431c;
    fa = r2; fb = 0u;
    r3 = 8u;
    if (fa != fb) r1 = *(u32*)(r1);
    if (fa != fb) *(u32*)(r2) = r1;
    r1 = r2 + 4u;
    r2 = r0 + 12u;
    if (r2 == 0) r0 = 12u;
    stk = r1;
    if (r2 == 0) goto L_390c64;
    r1 = (u32)&stk;
    r0 = Fn_443ac8_4(r0, r1, r2, r3);
    r0 = r0 + 4u;
    L_390c64:;
    r0 = r0 + 20u;
    fa = r0; fb = 32u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_390c78;
    L_390c74:;
    r0 = 0u;
    L_390c78:;
    return r0;
}

// FUN_003911f0
void W_3911f0() {
    { WeakCall0(); return; }
}

// FUN_003933dc
void W_3933dc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 24) = r1_1;
    *(u32*)(r0 + 28) = r2_1;
    return;
}

// FUN_00394dc8
void W_394dc8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 40) = r1_1;
    *(u32*)(r0 + 44) = r2_1;
    return;
}

// FUN_00394e70
void W_394e70(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 104) = r1_1;
    *(u32*)(r0 + 108) = r2_1;
    return;
}

// FUN_00394e80
void W_394e80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 56) = r1_1;
    *(u32*)(r0 + 60) = r2_1;
    return;
}

// FUN_00394e90
void W_394e90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 32) = r1_1;
    *(u32*)(r0 + 36) = r2_1;
    return;
}

// FUN_00398ff8
void W_398ff8() {
    { WeakCall0(); return; }
}

// FUN_003996d0
void W_3996d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r1_1;
    r2_1 = *(u32*)(r1); r3_1 = *(u32*)(r1 + 4);
    r1_1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 152) = r1_1;
    *(u32*)(r0 + 144) = r2_1; *(u32*)(r0 + 144 + 4) = r3_1;
    return;
}

// FUN_0039bfc0
void W_39bfc0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0, f1, f2, f3;
    r2 = *(u32*)(r1);
    r3 = r0 + 64u;
    *(u32*)(r0 + 32) = r2;
    r2 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 36) = r2;
    r2 = *(u32*)(r1 + 12);
    *(u32*)(r0 + 44) = r2;
    r2 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 40) = r2;
    r2 = *(u32*)(r1 + 20);
    *(u32*)(r0 + 52) = r2;
    r2 = r1 + 32u;
    f0 = *(float*)(r2 + 0);
    f1 = *(float*)(r2 + 4);
    f2 = *(float*)(r2 + 8);
    f3 = *(float*)(r2 + 12);
    r2 = 0u;
    *(float*)(r3 + 0) = f0;
    *(float*)(r3 + 4) = f1;
    *(float*)(r3 + 8) = f2;
    *(float*)(r3 + 12) = f3;
    L_39bffc:;
    r12 = r1 + (r2 << 4);
    r12 = r12 + 48u;
    r3 = r0 + (r2 << 4);
    f0 = *(float*)(r12 + 0);
    f1 = *(float*)(r12 + 4);
    f2 = *(float*)(r12 + 8);
    f3 = *(float*)(r12 + 12);
    r3 = r3 + 80u;
    r2 = r2 + 1u;
    fa = r2; fb = 5u;
    *(float*)(r3 + 0) = f0;
    *(float*)(r3 + 4) = f1;
    *(float*)(r3 + 8) = f2;
    *(float*)(r3 + 12) = f3;
    if ((int)fa < (int)fb) goto L_39bffc;
    return;
}

// FUN_0039c338
void W_39c338(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 20) = r1_1;
    *(u32*)(r0 + 24) = r2_1;
    return;
}

// FUN_0039c40c
void W_39c40c(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 56u;
    { WeakCall1(r0); return; }
}

// FUN_0039c464
void W_39c464(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    if (r1 >= 32u) goto L_39c47c;
    r2 = *(u32*)(r0 + 12);
    r3 = 1u;
    r1 = r2 | (r3 << (r1 & 255));
    *(u32*)(r0 + 12) = r1;
    L_39c47c:;
    return;
}

// FUN_0039d0d4
void W_39d0d4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 24) = r1_1;
    *(u32*)(r0 + 28) = r2_1;
    return;
}

// FUN_003a2570
u32 W_3a2570(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb, stk[3];
    r1 = *(u32*)(r1 + 4);
    if (r1 == 16u) goto L_3a25bc;
    if (r1 != 23u) goto L_3a25e4;
    r1 = *(u32*)(r0 + 112);
    r1 = *(u32*)(r1 + 104);
    r1 = *(u32*)(r1 + 108);
    fa = r1; fb = 5u;
    if (fa == fb) r1 = *(u8*)(r0 + 104);
    if (fa == fb) { fa = r1; fb = 5u; }
    if (fa != fb) goto L_3a25e4;
    r2 = 6u;
    r1 = 2u;
    *(u8*)(r0 + 104) = r2;
    *(u8*)(r0 + 105) = r1;
    goto L_3a25e4;
    L_3a25bc:;
    r1 = *(u16*)(r0 + 26);
    r3 = (u32)g_0082df04;
    r2 = 18u;
    *(u32*)((u32)stk + 8) = r1;
    *(u32*)((u32)stk + 4) = r2;
    *(u32*)((u32)stk) = r3;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = (u32)stk;
    if (fa != fb) r0 = Fn_5b13a8_4(r0, r1, r2, r3);
    L_3a25e4:;
    r0 = 1u;
    return r0;
}

// FUN_003a5390
void W_3a5390() {
    { WeakCall0(); return; }
}

// FUN_003bd280
void W_3bd280(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r4, r5, fa, fb, stk[7];
    float f0, f1, f2, f3, f4, f5;
    fa = r1; fb = 0u;
    if (fa != fb) { fa = r2; fb = 0u; }
    if (fa == fb) return;
    r4 = *(u32*)(r2 + 20);
    r5 = r1;
    if (r4 == 0u) goto L_3bd2e0;
    r0 = *(u32*)(r4 + 12);
    r0 = Fn_2d8874_3(r0, r1, r2);
    r1 = r0;
    r0 = r5;
    r0 = Fn_13f260_2(r0, r1);
    r0 = (u32)g_008a6da0;
    r0 = *(u8*)(r0);
    if (r0 != 0u) goto L_3bd2e0;
    r4 = r4 + 52u;
    r1 = (u32)stk;
    f0 = *(float*)(r4 + 0);
    f1 = *(float*)(r4 + 4);
    f2 = *(float*)(r4 + 8);
    f3 = *(float*)(r4 + 12);
    f4 = *(float*)(r4 + 16);
    f5 = *(float*)(r4 + 20);
    r0 = r5;
    *(float*)((u32)stk + 0) = f0;
    *(float*)((u32)stk + 4) = f1;
    *(float*)((u32)stk + 8) = f2;
    *(float*)((u32)stk + 12) = f3;
    *(float*)((u32)stk + 16) = f4;
    *(float*)((u32)stk + 20) = f5;
    r0 = Fn_13dd98_2f6(r0, r1, f0, f1, f2, f3, f4, f5);
    L_3bd2e0:;
    return;
}

// FUN_003bd578
u32 W_3bd578(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r4, fa, fb, stk[6];
    float f0, f1, f2, f3, f4, f5;
    fa = r1; fb = 0u;
    if (fa != fb) { fa = r2; fb = 0u; }
    if (fa == fb) return r0;
    r4 = *(u32*)(r2 + 20);
    r0 = r1;
    if (r4 == 0u) goto L_3bd5b0;
    r1 = (u32)stk;
    r0 = Fn_13de4c_3(r0, r1, r2);
    f0 = *(float*)((u32)stk + 0);
    f1 = *(float*)((u32)stk + 4);
    f2 = *(float*)((u32)stk + 8);
    f3 = *(float*)((u32)stk + 12);
    f4 = *(float*)((u32)stk + 16);
    f5 = *(float*)((u32)stk + 20);
    r4 = r4 + 52u;
    *(float*)(r4 + 0) = f0;
    *(float*)(r4 + 4) = f1;
    *(float*)(r4 + 8) = f2;
    *(float*)(r4 + 12) = f3;
    *(float*)(r4 + 16) = f4;
    *(float*)(r4 + 20) = f5;
    L_3bd5b0:;
    return r0;
}

// FUN_003ca284
void W_3ca284(u32 a0) {
    u32 r0 = a0, r1;
    r1 = 0u;
    *(u32*)(r0 + 120) = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_003dc50c
void W_3dc50c() {
    { WeakCall0(); return; }
}

// FUN_003dc800
void W_3dc800() {
    { WeakCall0(); return; }
}

// FUN_003de79c
void W_3de79c() {
    { WeakCall0(); return; }
}

// FUN_003e16e4
void W_3e16e4() {
    { WeakCall0(); return; }
}

// FUN_003e3f84
void W_3e3f84() {
    { WeakCall0(); return; }
}

// FUN_003e5314
void W_3e5314() {
    { WeakCall0(); return; }
}

// FUN_003e5330
void W_3e5330() {
    { WeakCall0(); return; }
}

// FUN_003e5378
void W_3e5378() {
    { WeakCall0(); return; }
}

// FUN_003ea070
void W_3ea070() {
    { WeakCall0(); return; }
}

// FUN_003ee2c0
void W_3ee2c0(u32 a0, float p0) {
    u32 r0 = a0, r4, r5, fa, fb;
    float f0 = p0, f16;
    r5 = r0;
    r4 = 0u;
    f16 = f0;
    r0 = *(u32*)(r0 + 12);
    if ((int)r0 <= (int)0u) goto L_3ee304;
    L_3ee2e0:;
    r0 = *(u32*)(r5 + 20);
    r0 = *(u32*)(r0 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) f0 = f16;
    if (fa != fb) r0 = Fn_4032b0_1f1(r0, f0);
    r0 = *(u32*)(r5 + 12);
    r4 = r4 + 1u;
    if ((int)r0 > (int)r4) goto L_3ee2e0;
    L_3ee304:;
    return;
}

// FUN_003f1ed0
void W_3f1ed0() {
    { WeakCall0(); return; }
}

// FUN_003f1f28
void W_3f1f28() {
    { WeakCall0(); return; }
}

// FUN_003f1f44
void W_3f1f44() {
    { WeakCall0(); return; }
}

// FUN_003f2ebc
void W_3f2ebc() {
    { WeakCall0(); return; }
}

// FUN_003f2f14
void W_3f2f14() {
    { WeakCall0(); return; }
}

// FUN_003f2f30
void W_3f2f30() {
    { WeakCall0(); return; }
}

// FUN_003f979c
void W_3f979c() {
    { WeakCall0(); return; }
}

// FUN_003fa12c
void W_3fa12c() {
    { WeakCall0(); return; }
}
