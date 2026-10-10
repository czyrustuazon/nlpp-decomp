// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 WeakCall1(u32);
u32 Fn_5325b8_0f2(float, float);
u32 Fn_532620_0f2(float, float);
extern "C" float __sqrtf(float);
float Fn_532860_0();
u32 Fn_5a1b18_2f1(u32, u32, float);
u32 WeakCall0();
u32 Fn_020b18_3(u32, u32, u32);
u32 Fn_022840_2(u32, u32);
u32 Fn_02a054_1(u32);
u32 Fn_02a080_1(u32);
u32 Fn_02aca0_2(u32, u32);
u32 WeakCall2(u32, u32);
extern char g_0082dbe0[];
u32 Fn_5a5870_0();
u32 Fn_5b0c0c_2(u32, u32);
u32 Fn_5b2ad4_1(u32);
extern char g_008bfac4[];
extern char g_008a8894[];

// FUN_005993d4
void W_5993d4(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0);
    { WeakCall1(r0); return; }
}

// FUN_0059a80c
void W_59a80c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 216);
    { WeakCall1(r0); return; }
}

// FUN_0059b574
void W_59b574(float p0) {
    float f0 = p0, f1_1, f0_1;
    f1_1 = 40.7436638f;
    f0_1 = f0 * f1_1;
    { Fn_5325b8_0f2(f0_1, f1_1); return; }
}

// FUN_0059b584
void W_59b584(float p0) {
    float f0 = p0, f1_1, f0_1;
    f1_1 = 40.7436638f;
    f0_1 = f0 * f1_1;
    { Fn_532620_0f2(f0_1, f1_1); return; }
}

// FUN_0059b600
float W_59b600(float p0) {
    float f0 = p0, f2_1, f1_1, f0_1;
    f2_1 = __sqrtf(f0);
    f1_1 = 1.0f;
    f0_1 = f1_1 / f2_1;
    return f0_1;
}

// FUN_0059b614
void W_59b614(float p0) {
    float f0 = p0, f1_1, f0_1;
    f1_1 = 40.7436638f;
    f0_1 = f0 * f1_1;
    { Fn_532620_0f2(f0_1, f1_1); return; }
}

// FUN_0059b624
float W_59b624() {
    float f1_1, f0_1, f0_2;
    f0_1 = Fn_532860_0();
    f1_1 = 0.0245436933f;
    f0_2 = f0_1 * f1_1;
    return f0_2;
}

// FUN_0059cf10
float W_59cf10() {
    float f1_1, f0_1, f0_2;
    f0_1 = Fn_532860_0();
    f1_1 = 0.0245436933f;
    f0_2 = f0_1 * f1_1;
    return f0_2;
}

// FUN_0059d074
void W_59d074(u32 a0, float p0, float p1) {
    float f0 = p0, f1 = p1, f3_1, f2_1, f0_1, f1_1;
    f3_1 = *(float*)(a0);
    f2_1 = *(float*)(a0 + 16);
    f0_1 = f3_1 * f0;
    f1_1 = f2_1 * f1;
    *(float*)(a0) = f0_1;
    *(float*)(a0 + 16) = f1_1;
    return;
}

// FUN_0059d0dc
void W_59d0dc(u32 a0, float p0, float p1) {
    float f0 = p0, f1 = p1;
    *(float*)(a0 + 8) = f0;
    *(float*)(a0 + 20) = f1;
    return;
}

// FUN_0059f2a8
void W_59f2a8(u32 a0, float p0) {
    u32 r0 = a0, r1, r4;
    float f0 = p0, f16;
    f16 = f0;
    r4 = *(u32*)(r0 + 20);
    if (r4 == 0u) goto L_59f2ec;
    L_59f2c0:;
    f0 = f16;
    r0 = *(u32*)(r4);
    r1 = 0u;
    r0 = Fn_5a1b18_2f1(r0, r1, f0);
    f0 = f16;
    r0 = *(u32*)(r4);
    r1 = 1u;
    r0 = Fn_5a1b18_2f1(r0, r1, f0);
    r4 = *(u32*)(r4 + 16);
    if (r4 != 0u) goto L_59f2c0;
    L_59f2ec:;
    return;
}

// FUN_005a0558
void W_5a0558() {
    { WeakCall0(); return; }
}

// FUN_005a3584
void W_5a3584(u32 a0, u32 a1) {
    u32 r4_1, r5_1, r2_1, r1_1, r0_1, r1_2, r0_2, r0_3, stk[35];
    r4_1 = a1;
    r5_1 = a0;
    r2_1 = 0u;
    r1_1 = (u32)stk;
    r0_1 = Fn_020b18_3(a0, r1_1, r2_1);
    r1_2 = (u32)stk;
    r0_2 = r5_1;
    *(u8*)((u32)stk + 12) = r4_1;
    r0_3 = Fn_022840_2(r0_2, r1_2);
    return;
}

// FUN_005a5a5c
u32 W_5a5a5c(u32 a0) {
    u32 r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r0_6, r0_7, stk;
    r4_1 = a0;
    r0_1 = (u32)&stk;
    r0_2 = Fn_02a054_1(r0_1);
    r1_1 = r0_2;
    r0_3 = r4_1 + 320u;
    r0_4 = Fn_02aca0_2(r0_3, r1_1);
    r0_5 = (u32)&stk;
    r0_6 = Fn_02a080_1(r0_5);
    r0_7 = r4_1;
    return r0_7;
}

// FUN_005a79b8
void W_5a79b8(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = r0 + (a1 << 2);
    r0 = *(u32*)(r0 + 12);
    { WeakCall2(r0, a1); return; }
}

// FUN_005a8ec4
void W_5a8ec4(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    float f0, f1, f2, f3;
    r2 = *(u32*)(a1 + 16);
    *(u32*)(r0 + 252) = r2;
    r2 = *(u32*)(a1 + 20);
    *(u32*)(r0 + 256) = r2;
    r0 = r0 + 236u;
    f0 = *(float*)(a1 + 0);
    f1 = *(float*)(a1 + 4);
    f2 = *(float*)(a1 + 8);
    f3 = *(float*)(a1 + 12);
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    *(float*)(r0 + 12) = f3;
    return;
}

// FUN_005a8fc8
void W_5a8fc8() {
    u32 r0, r1;
    float f0, f1;
    r0 = Fn_5a5870_0();
    r1 = (u32)g_0082dbe0;
    f0 = 1.0f;
    f1 = 10000.0f;
    *(u32*)(r0) = r1;
    r1 = r0 + 252u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    *(float*)(r0 + 236) = f0;
    *(float*)(r0 + 240) = f0;
    *(float*)(r0 + 244) = f0;
    *(float*)(r0 + 248) = f0;
    return;
}

// FUN_005aaca8
void W_5aaca8(u32 a0, u32 a1) {
    u32 r0_1;
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = *(float*)(a1 + 0);
    f1_1 = *(float*)(a1 + 4);
    f2_1 = *(float*)(a1 + 8);
    f3_1 = *(float*)(a1 + 12);
    r0_1 = a0 + 20u;
    *(float*)(r0_1 + 0) = f0_1;
    *(float*)(r0_1 + 4) = f1_1;
    *(float*)(r0_1 + 8) = f2_1;
    *(float*)(r0_1 + 12) = f3_1;
    return;
}

// FUN_005acbe8
void W_5acbe8() {
    { WeakCall0(); return; }
}

// FUN_005ad258
void W_5ad258() {
    { WeakCall0(); return; }
}

// FUN_005ad5ec
void W_5ad5ec() {
    { WeakCall0(); return; }
}

// FUN_005ae51c
void W_5ae51c(u32 a0) {
    u32 r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r0_6, stk[2];
    r4_1 = a0;
    r0_1 = (u32)stk;
    r0_2 = Fn_5b2ad4_1(r0_1);
    r1_1 = r0_2;
    r0_3 = r4_1 + 312u;
    r0_4 = Fn_5b0c0c_2(r0_3, r1_1);
    r0_5 = (u32)stk + 4u;
    r0_6 = Fn_02a080_1(r0_5);
    return;
}

// FUN_005aec58
void W_5aec58() {
    { WeakCall0(); return; }
}

// FUN_005af2a8
void W_5af2a8() {
    { WeakCall0(); return; }
}

// FUN_005af750
void W_5af750(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 136);
    { WeakCall1(r0); return; }
}

// FUN_005b1010
void W_5b1010(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 312u;
    { WeakCall1(r0); return; }
}

// FUN_005b200c
void W_5b200c() {
    { WeakCall0(); return; }
}

// FUN_005bb1a0
void W_5bb1a0(u32 a0, float p0, float p1) {
    float f0 = p0, f1 = p1;
    *(float*)(a0 + 132) = f0;
    *(float*)(a0 + 144) = f1;
    return;
}

// FUN_005bb1ac
void W_5bb1ac(u32 a0, float p0, float p1) {
    float f0 = p0, f1 = p1;
    *(float*)(a0 + 136) = f0;
    *(float*)(a0 + 148) = f1;
    return;
}

// FUN_005bb1b8
void W_5bb1b8(u32 a0, float p0, float p1) {
    float f0 = p0, f1 = p1;
    *(float*)(a0 + 140) = f0;
    *(float*)(a0 + 152) = f1;
    return;
}

// FUN_005bbae4
void W_5bbae4(u32 a0, u32 a1, u32 a2, u32 a3) {
    if ((int)a3 >= 0) { *(u32*)(a0 + 80) = a2; *(u32*)(a0 + 80 + 4) = a3; }
    return;
}

// FUN_005bbbec
float W_5bbbec() {
    float f0_1;
    f0_1 = 0.600000024f;
    return f0_1;
}

// FUN_005bc90c
float W_5bc90c() {
    u32 r0_1, r0_2;
    float f0_1;
    r0_1 = (u32)g_008bfac4;
    r0_2 = *(u32*)(r0_1);
    f0_1 = *(float*)(r0_2 + 108);
    return f0_1;
}

// FUN_005bc920
float W_5bc920() {
    u32 r0_1, r0_2;
    float f0_1;
    r0_1 = (u32)g_008bfac4;
    r0_2 = *(u32*)(r0_1);
    f0_1 = *(float*)(r0_2 + 112);
    return f0_1;
}

// FUN_005be8f0
void W_5be8f0() {
    { WeakCall0(); return; }
}

// FUN_005be9d8
void W_5be9d8(u32 a0) {
    u32 r2_1, r1_1;
    float f0_1;
    r2_1 = ~0u;
    r1_1 = 0u;
    f0_1 = 0.0f;
    *(u16*)(a0) = r2_1;
    *(u16*)(a0 + 2) = r1_1;
    *(float*)(a0 + 4) = f0_1;
    return;
}

// FUN_005bf1a8
u32 W_5bf1a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    float f0, f1, f2, f3;
    r2 = (u32)g_008a8894;
    r2 = *(u32*)(r2);
    if (r2 == 0u) goto L_5bf1e0;
    if (r1 >= 2u) goto L_5bf1e0;
    r3 = r2 + (r1 << 2);
    r3 = *(u32*)(r3 + 16);
    if (r3 == 0u) goto L_5bf1e0;
    r1 = *(u32*)(r2 + (r1 << 2));
    f0 = *(float*)(r0 + 0);
    f1 = *(float*)(r0 + 4);
    f2 = *(float*)(r0 + 8);
    f3 = *(float*)(r0 + 12);
    r1 = r1 + 328u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    *(float*)(r1 + 8) = f2;
    *(float*)(r1 + 12) = f3;
    L_5bf1e0:;
    r0 = 0u;
    return r0;
}

// FUN_005c034c
void W_5c034c() {
    { WeakCall0(); return; }
}

// FUN_005c1ad8
void W_5c1ad8(u32 a0, float p0, float p1) {
    u32 r1_1, r0_1;
    float f0 = p0, f1 = p1;
    r1_1 = *(u32*)(a0 + 12);
    *(float*)(r1_1 + 236) = f0;
    r0_1 = *(u32*)(a0 + 12);
    *(float*)(r0_1 + 240) = f1;
    return;
}

// FUN_005c2a44
void W_5c2a44(u32 a0, float p0) {
    u32 r1_1, r0_1;
    float f0 = p0;
    r1_1 = *(u32*)(a0);
    if (r1_1 != 0u) *(float*)(r1_1 + 384) = f0;
    r0_1 = *(u32*)(a0 + 4);
    if (r0_1 != 0u) *(float*)(r0_1 + 384) = f0;
    return;
}
