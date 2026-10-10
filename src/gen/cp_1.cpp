// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 WeakCall0();
extern char g_008bfa78[];
u32 Fn_015600_1(u32);
u32 Fn_59cb38_2(u32, u32);
u32 Fn_59cc28_1f1(u32, float);
extern char g_005b0002[];
u32 Fn_02a054_2(u32, u32);
u32 Fn_02a080_1(u32);
u32 Fn_02a218_1(u32);
u32 Fn_576d70_2(u32, u32);
u32 Fn_61e090_0();
u32 WeakCall1(u32);
u32 Fn_165db4_2f9(u32, u32, float, float, float, float, float, float, float, float, float);
extern char g_007b9430[];
u32 WeakCall2(u32, u32);
u32 Fn_1805c4_2(u32, u32);
u32 Fn_5c7dac_1(u32);
u32 Fn_5e8b54_1(u32);
u32 Fn_18e890_2f1(u32, u32, float);
extern char g_008bfa40[];
u32 Fn_5c5e38_2(u32, u32);
u32 Fn_5323cc_2(u32, u32);

// FUN_00100a38
void W_100a38() {
    { WeakCall0(); return; }
}

// FUN_0012d4d8
void W_12d4d8(u32 a0, u32 a1) {
    u32 r2_1, r2_2;
    r2_1 = (u32)g_008bfa78;
    r2_2 = *(u32*)(r2_1);
    if (r2_2 != 0u) { *(u32*)(r2_2 + 128) = a0; *(u32*)(r2_2 + 128 + 4) = a1; }
    return;
}

// FUN_0012d508
void W_12d508(u32 a0, u32 a1) {
    u32 r2_1, r2_2;
    r2_1 = (u32)g_008bfa78;
    r2_2 = *(u32*)(r2_1);
    if (r2_2 != 0u) { *(u32*)(r2_2 + 120) = a0; *(u32*)(r2_2 + 120 + 4) = a1; }
    return;
}

// FUN_0012d8d0
float W_12d8d0() {
    u32 r0, fa, fb;
    float f0;
    r0 = (u32)g_008bfa78;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) f0 = 0.0f;
    if (fa != fb) f0 = *(float*)(r0 + 720);
    return f0;
}

// FUN_0012dd48
float W_12dd48() {
    u32 r0, fa, fb;
    float f0;
    r0 = (u32)g_008bfa78;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) f0 = 0.0f;
    if (fa != fb) f0 = *(float*)(r0 + 696);
    return f0;
}

// FUN_0012e918
void W_12e918() {
    { WeakCall0(); return; }
}

// FUN_00131158
void W_131158(u32 a0, u32 a1) {
    u32 r0_1;
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = *(float*)(a1 + 0);
    f1_1 = *(float*)(a1 + 4);
    f2_1 = *(float*)(a1 + 8);
    f3_1 = *(float*)(a1 + 12);
    r0_1 = a0 + 88u;
    *(float*)(r0_1 + 0) = f0_1;
    *(float*)(r0_1 + 4) = f1_1;
    *(float*)(r0_1 + 8) = f2_1;
    *(float*)(r0_1 + 12) = f3_1;
    return;
}

// FUN_001378fc
u32 W_1378fc(u32 a0) {
    u32 r0 = a0, r1, r4;
    float f0, f16;
    f16 = 0.0f;
    *(float*)(r0) = f16;
    *(float*)(r0 + 4) = f16;
    *(float*)(r0 + 8) = f16;
    *(float*)(r0 + 12) = f16;
    *(float*)(r0 + 16) = f16;
    *(float*)(r0 + 20) = f16;
    *(float*)(r0 + 24) = f16;
    *(float*)(r0 + 28) = f16;
    r0 = r0 + 32u;
    r0 = Fn_015600_1(r0);
    f0 = 1.0f;
    r4 = r0 - 32u;
    *(float*)(r0 - 32) = f0;
    *(float*)(r0 - 28) = f0;
    *(float*)(r0 - 24) = f0;
    *(float*)(r0 - 20) = f0;
    *(float*)(r0 - 16) = f0;
    *(float*)(r0 - 12) = f0;
    *(float*)(r0 - 8) = f0;
    *(float*)(r0 - 4) = f0;
    r0 = Fn_59cc28_1f1(r0, f0);
    r1 = r0;
    r0 = r4 + 32u;
    r0 = Fn_59cb38_2(r0, r1);
    *(float*)(r4 + 44) = f16;
    r0 = r4;
    return r0;
}

// FUN_0013a320
void W_13a320(u32 a0, float p0, float p1) {
    u32 r1_1, r0_1;
    float f0 = p0, f1 = p1;
    r1_1 = *(u32*)(a0 + 8);
    *(float*)(r1_1 + 236) = f0;
    r0_1 = *(u32*)(a0 + 8);
    *(float*)(r0_1 + 240) = f1;
    return;
}

// FUN_0015b164
void W_15b164() {
    { WeakCall0(); return; }
}

// FUN_0015b95c
void W_15b95c() {
    { WeakCall0(); return; }
}

// FUN_0015bfd8
void W_15bfd8() {
    { WeakCall0(); return; }
}

// FUN_0015c6e4
void W_15c6e4() {
    { WeakCall0(); return; }
}

// FUN_0015ccc4
void W_15ccc4() {
    { WeakCall0(); return; }
}

// FUN_0015e1e4
u32 W_15e1e4() {
    u32 r0_1, r4_1, r1_1, r0_2, r0_3, r0_4, r0_5, r1_2, r0_6, r0_7, r0_8, r0_9, r0_10, stk;
    r0_1 = Fn_61e090_0();
    r4_1 = r0_1;
    r1_1 = (u32)g_005b0002;
    r0_2 = (u32)&stk;
    r0_3 = Fn_02a054_2(r0_2, r1_1);
    r0_4 = (u32)&stk;
    r0_5 = Fn_02a218_1(r0_4);
    r1_2 = r0_5;
    r0_6 = r4_1;
    r0_7 = Fn_576d70_2(r0_6, r1_2);
    r0_8 = (u32)&stk;
    r0_9 = Fn_02a080_1(r0_8);
    r0_10 = r4_1;
    return r0_10;
}

// FUN_00164c70
void W_164c70(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 8);
    { WeakCall1(r0); return; }
}

// FUN_001657a4
u32 W_1657a4(u32 a0) {
    u32 r1_1, r0_1;
    float f0_1, f1_1, f2_1, f3_1, f4_1, f5_1, f6_1, f7_1, f8_1;
    r1_1 = a0 + 48u;
    r0_1 = a0 + 88u;
    f0_1 = *(float*)(r1_1 + 0);
    f1_1 = *(float*)(r1_1 + 4);
    f2_1 = *(float*)(r1_1 + 8);
    f3_1 = *(float*)(r1_1 + 12);
    f4_1 = *(float*)(r1_1 + 16);
    f5_1 = *(float*)(r1_1 + 20);
    f6_1 = *(float*)(r1_1 + 24);
    f7_1 = *(float*)(r1_1 + 28);
    f8_1 = *(float*)(r1_1 + 32);
    *(float*)(r0_1 + 0) = f0_1;
    *(float*)(r0_1 + 4) = f1_1;
    *(float*)(r0_1 + 8) = f2_1;
    *(float*)(r0_1 + 12) = f3_1;
    *(float*)(r0_1 + 16) = f4_1;
    *(float*)(r0_1 + 20) = f5_1;
    *(float*)(r0_1 + 24) = f6_1;
    *(float*)(r0_1 + 28) = f7_1;
    *(float*)(r0_1 + 32) = f8_1;
    return r0_1;
}

// FUN_00167b9c
void W_167b9c(u32 a0, float p0) {
    u32 r0 = a0, r1;
    float f0 = p0, f1, f2, f3, f4, f5, f6, f7, f8;
    f2 = f0;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_167bd0;
    r1 = r0 + 16u;
    f6 = 1.0f;
    f3 = 0.0f;
    f8 = f6;
    f7 = f6;
    f5 = f3;
    f4 = f3;
    f0 = *(float*)(r1 + 0);
    f1 = *(float*)(r1 + 4);
    { Fn_165db4_2f9(r0, r1, f0, f1, f2, f3, f4, f5, f6, f7, f8); return; }
    L_167bd0:;
    return;
}

// FUN_00169df0
u32 W_169df0(u32 a0) {
    u32 r0 = a0, r1, fa, fb, stk;
    fa = r0; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_169e10;
    r1 = (u32)g_007b9430;
    r1 = *(u32*)(r1);
    stk = r1;
    r0 = *(u8*)((u32)&stk + r0);
    L_169e10:;
    return r0;
}

// FUN_0016b5dc
void W_16b5dc(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0 + 44);
    { WeakCall2(a0, r1); return; }
}

// FUN_00174b78
u32 W_174b78(u32 a0) {
    u32 r0 = a0, r1, r4, stk[6];
    r4 = r0;
    r0 = *(u16*)(r0 + 28);
    r1 = (u32)stk;
    r0 = Fn_1805c4_2(r0, r1);
    r0 = *(u8*)((u32)stk + 16);
    if (r0 == 3u) r0 = *(u8*)(r4 + 44);
    return r0;
}

// FUN_0018d0fc
u32 W_18d0fc(u32 a0) {
    u32 r4_1, r0_1, r0_2, r0_3, r0_4, r0_5, stk[4];
    r4_1 = a0;
    r0_1 = (u32)stk;
    r0_2 = Fn_5e8b54_1(r0_1);
    r0_3 = r4_1;
    r0_4 = Fn_5c7dac_1(r0_3);
    r0_5 = 0u;
    return r0_5;
}

// FUN_0018e9f4
void W_18e9f4(u32 a0) {
    u32 r1;
    float f0;
    r1 = 0u;
    f0 = 0.0f;
    *(u8*)(a0 + 386) = r1;
    *(float*)(a0 + 388) = f0;
    { Fn_18e890_2f1(a0, r1, f0); return; }
}

// FUN_0018ea0c
void W_18ea0c(u32 a0) {
    u32 r1;
    float f0;
    r1 = 1u;
    f0 = 0.0f;
    *(u8*)(a0 + 386) = r1;
    *(float*)(a0 + 388) = f0;
    { Fn_18e890_2f1(a0, r1, f0); return; }
}

// FUN_001928d4
void W_1928d4() {
    { WeakCall0(); return; }
}

// FUN_00192d0c
void W_192d0c() {
    { WeakCall0(); return; }
}

// FUN_00192d84
void W_192d84() {
    { WeakCall0(); return; }
}

// FUN_00192e18
void W_192e18() {
    { WeakCall0(); return; }
}

// FUN_00193078
void W_193078() {
    { WeakCall0(); return; }
}

// FUN_001932f0
void W_1932f0() {
    { WeakCall0(); return; }
}

// FUN_001941c8
void W_1941c8() {
    { WeakCall0(); return; }
}

// FUN_00194248
void W_194248() {
    { WeakCall0(); return; }
}

// FUN_00194470
void W_194470() {
    { WeakCall0(); return; }
}

// FUN_00195328
void W_195328() {
    { WeakCall0(); return; }
}

// FUN_001959fc
void W_1959fc() {
    { WeakCall0(); return; }
}

// FUN_00196960
void W_196960() {
    u32 r0, r1;
    r0 = (u32)g_008bfa40;
    r1 = ~0u;
    r0 = *(u32*)(r0);
    { Fn_5c5e38_2(r0, r1); return; }
}

// FUN_00198d34
void W_198d34(u32 a0, u32 a1) {
    u32 r5_1, r4_1, r0_1;
    float f0_1, f1_1, f2_1, f3_1, f4_1, f5_1, f6_1, f7_1, f8_1;
    r5_1 = a0;
    r4_1 = a1;
    r0_1 = Fn_5323cc_2(a0, a1);
    f0_1 = *(float*)(r4_1 + 0);
    f1_1 = *(float*)(r4_1 + 4);
    f2_1 = *(float*)(r4_1 + 8);
    f3_1 = *(float*)(r4_1 + 12);
    f4_1 = *(float*)(r4_1 + 16);
    f5_1 = *(float*)(r4_1 + 20);
    f6_1 = *(float*)(r4_1 + 24);
    f7_1 = *(float*)(r4_1 + 28);
    f8_1 = *(float*)(r4_1 + 32);
    *(float*)(r5_1) = f0_1;
    *(float*)(r5_1 + 4) = f3_1;
    *(float*)(r5_1 + 8) = f6_1;
    *(float*)(r5_1 + 12) = f1_1;
    *(float*)(r5_1 + 16) = f4_1;
    *(float*)(r5_1 + 20) = f7_1;
    *(float*)(r5_1 + 24) = f2_1;
    *(float*)(r5_1 + 28) = f5_1;
    *(float*)(r5_1 + 32) = f8_1;
    return;
}

// FUN_00198f1c
void W_198f1c() {
    { WeakCall0(); return; }
}

// FUN_00199020
void W_199020() {
    { WeakCall0(); return; }
}

// FUN_0019928c
void W_19928c() {
    { WeakCall0(); return; }
}
