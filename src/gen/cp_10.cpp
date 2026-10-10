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
u32 WeakCall0();
extern char g_008bfa48[];
u32 Fn_5c5ad8_3(u32, u32, u32);
u32 Fn_5ea27c_2(u32, u32);
u32 WeakCall3(u32, u32, u32);
u32 Fn_5c7990_0f2(float, float);
u32 Fn_5c2fb4_2(u32, u32);
u32 Fn_5c849c_1f1(u32, float);
u32 Fn_5e7d74_1(u32);
u32 Fn_5e828c_1f1(u32, float);
extern char g_0089a330[];
u32 Fn_5dd7e4_2f1(u32, u32, float);
u32 Fn_5dd7e4_3f4(u32, u32, u32, float, float, float, float);
u32 Fn_5eb898_2f1(u32, u32, float);
u32 WeakCall2(u32, u32);
u32 Fn_611f78_4(u32, u32, u32, u32);

// FUN_005c2aac
void W_5c2aac(u32 a0, u32 a1, float p0) {
    u32 r0 = a0;
    float f0 = p0;
    if (a1 >= 2u) goto L_5c2ac0;
    r0 = *(u32*)(r0 + (a1 << 2));
    if (r0 != 0u) *(float*)(r0 + 244) = f0;
    L_5c2ac0:;
    return;
}

// FUN_005c2afc
void W_5c2afc(u32 a0, float p0) {
    u32 r1_1, r0_1;
    float f0 = p0;
    r1_1 = *(u32*)(a0);
    if (r1_1 != 0u) *(float*)(r1_1 + 256) = f0;
    r0_1 = *(u32*)(a0 + 4);
    if (r0_1 != 0u) *(float*)(r0_1 + 256) = f0;
    return;
}

// FUN_005c2b40
void W_5c2b40(u32 a0, float p0) {
    u32 r1_1, r0_1;
    float f0 = p0;
    r1_1 = *(u32*)(a0);
    if (r1_1 != 0u) *(float*)(r1_1 + 380) = f0;
    r0_1 = *(u32*)(a0 + 4);
    if (r0_1 != 0u) *(float*)(r0_1 + 380) = f0;
    return;
}

// FUN_005c32d0
void W_5c32d0(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 64);
    { WeakCall1(r0); return; }
}

// FUN_005c4b04
void W_5c4b04() {
    { WeakCall0(); return; }
}

// FUN_005c5278
void W_5c5278() {
    { WeakCall0(); return; }
}

// FUN_005c60ec
u32 W_5c60ec(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_1, r2_2, r1_2, r0_2, r0_3, r0_4, r1_3, r0_5, r0_6, r0_7, r0_8;
    r4_1 = r0;
    r2_1 = ~0u;
    r1_1 = 1u;
    r0_1 = Fn_5c5ad8_3(r0, r1_1, r2_1);
    r2_2 = ~0u;
    r1_2 = 0u;
    r0_2 = r4_1;
    r0_3 = Fn_5c5ad8_3(r0_2, r1_2, r2_2);
    r0_4 = (u32)g_008bfa48;
    r1_3 = *(u32*)(r4_1 + 2860);
    r0_5 = *(u32*)(r0_4);
    r0_6 = *(u32*)(r0_5 + 8);
    r0_7 = Fn_5ea27c_2(r0_6, r1_3);
    r0_8 = 0u;
    *(u32*)(r4_1 + 2860) = r0_8;
    *(u32*)(r4_1 + 260) = r0_8;
    *(u32*)(r4_1 + 1560) = r0_8;
    return r0_8;
}

// FUN_005c77a0
void W_5c77a0(u32 a0, u32 a1) {
    u32 r2;
    r2 = 0u;
    *(u8*)(a0 + 64) = a1;
    { WeakCall3(a0, a1, r2); return; }
}

// FUN_005c7ac4
void W_5c7ac4(u32 a0, u32 a1, u32 a2) {
    float f0_1, f1_1, f0_2, f0_3;
    f0_1 = u2f(a2);
    f1_1 = 0.0174532924f;
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    { Fn_5c7990_0f2(f0_3, f1_1); return; }
}

// FUN_005c7c24
void W_5c7c24() {
    { WeakCall0(); return; }
}

// FUN_005c8524
void W_5c8524(u32 a0, float p0) {
    u32 r4_1, r0_1, r0_2, r0_3, r1_1, r0_4, r0_5, r0_6, r0_7, r0_8, stk[2];
    float f0 = p0, f16_1, f0_1;
    r4_1 = a0;
    f16_1 = f0;
    r0_1 = (u32)stk;
    r0_2 = Fn_5e828c_1f1(r0_1, f0);
    r0_3 = *(u32*)(r4_1 + 32);
    r1_1 = (u32)stk;
    r0_4 = Fn_5c2fb4_2(r0_3, r1_1);
    f0_1 = f16_1;
    r0_5 = r4_1;
    r0_6 = Fn_5c849c_1f1(r0_5, f0_1);
    r0_7 = (u32)stk;
    r0_8 = Fn_5e7d74_1(r0_7);
    return;
}

// FUN_005ca524
void W_5ca524(u32 a0, u32 a1) {
    u32 r2_1;
    r2_1 = (u32)g_0089a330;
    *(u32*)(r2_1 + 140) = a0; *(u32*)(r2_1 + 140 + 4) = a1;
    return;
}

// FUN_005ccfbc
void W_5ccfbc() {
    { WeakCall0(); return; }
}

// FUN_005d6c60
void W_5d6c60(u32 a0, u32 a1) {
    u32 r0 = a0;
    float f0;
    r0 = *(u32*)(r0 + 28);
    if (r0 == 0u) goto L_5d6c78;
    f0 = u2f(a1);
    f0 = (float)(int)f2u(f0);
    *(float*)(r0 + 236) = f0;
    L_5d6c78:;
    return;
}

// FUN_005d6ca8
void W_5d6ca8(u32 a0, u32 a1) {
    u32 r0 = a0;
    float f0;
    r0 = *(u32*)(r0 + 28);
    if (r0 == 0u) goto L_5d6cc0;
    f0 = u2f(a1);
    f0 = (float)(int)f2u(f0);
    *(float*)(r0 + 240) = f0;
    L_5d6cc0:;
    return;
}

// FUN_005dd9c8
void W_5dd9c8(u32 a0, u32 a1) {
    u32 r1 = a1;
    float f0;
    if (r1 >= 2u) goto L_5dd9e0;
    r1 = a0 + (r1 << 4);
    f0 = 0.0f;
    *(float*)(r1 + 388) = f0;
    { Fn_5dd7e4_2f1(a0, r1, f0); return; }
    L_5dd9e0:;
    return;
}

// FUN_005de508
void W_5de508(u32 a0, u32 a1, u32 a2) {
    u32 r1 = a1;
    float f0, f1, f2, f3;
    if (r1 >= 2u) goto L_5de524;
    f0 = *(float*)(a2 + 0);
    f1 = *(float*)(a2 + 4);
    f2 = *(float*)(a2 + 8);
    f3 = *(float*)(a2 + 12);
    r1 = a0 + (r1 << 4);
    r1 = r1 + 376u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    *(float*)(r1 + 8) = f2;
    *(float*)(r1 + 12) = f3;
    { Fn_5dd7e4_3f4(a0, r1, a2, f0, f1, f2, f3); return; }
    L_5de524:;
    return;
}

// FUN_005dea34
void W_5dea34(u32 a0, u32 a1) {
    u32 r2_1, r3_1, r1_1;
    r2_1 = *(u32*)(a1); r3_1 = *(u32*)(a1 + 4);
    r1_1 = *(u32*)(a1 + 8);
    *(u32*)(a0 + 72) = r1_1;
    *(u32*)(a0 + 64) = r2_1; *(u32*)(a0 + 64 + 4) = r3_1;
    return;
}

// FUN_005e4a1c
void W_5e4a1c(u32 a0, u32 a1) {
    u32 r0_1;
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = *(float*)(a1 + 0);
    f1_1 = *(float*)(a1 + 4);
    f2_1 = *(float*)(a1 + 8);
    f3_1 = *(float*)(a1 + 12);
    r0_1 = a0 + 180u;
    *(float*)(r0_1 + 0) = f0_1;
    *(float*)(r0_1 + 4) = f1_1;
    *(float*)(r0_1 + 8) = f2_1;
    *(float*)(r0_1 + 12) = f3_1;
    return;
}

// FUN_005e7d0c
void W_5e7d0c(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1;
    r0 = a2;
    r1 = 0u;
    { WeakCall3(r0, r1, a2); return; }
}

// FUN_005e9e08
void W_5e9e08(u32 a0, float p0) {
    u32 r0 = a0, r1, r4, r5, fa, fb;
    float f0 = p0, f16;
    r1 = *(u32*)(r0 + 32);
    if ((int)r1 <= 0) return;
    r5 = r0 + 8u;
    f16 = f0;
    r4 = *(u32*)(r0 + 12);
    if (r4 == r5) goto L_5e9e50;
    L_5e9e30:;
    r0 = *(u32*)(r4 + 8);
    r1 = *(u8*)(r0 + 24);
    fa = r1; fb = 0u;
    if (fa != fb) f0 = f16;
    if (fa != fb) r0 = Fn_5eb898_2f1(r0, r1, f0);
    r4 = *(u32*)(r4 + 4);
    if (r4 != r5) goto L_5e9e30;
    L_5e9e50:;
    return;
}

// FUN_005f2328
void W_5f2328() {
    { WeakCall0(); return; }
}

// FUN_005f2870
void W_5f2870() {
    { WeakCall0(); return; }
}

// FUN_005f50d4
void W_5f50d4() {
    { WeakCall0(); return; }
}

// FUN_005fd564
void W_5fd564() {
    { WeakCall0(); return; }
}

// FUN_005ff8c8
void W_5ff8c8(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3;
    r1 = *(u32*)(r1 + 72);
    r2 = 0u;
    r3 = r2;
    if (r1 != 0u) { r2 = *(u32*)(r1 + 80); r3 = *(u32*)(r1 + 80 + 4); }
    *(u32*)(a0) = r2; *(u32*)(a0 + 4) = r3;
    return;
}

// FUN_005ff8fc
void W_5ff8fc(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3;
    r1 = *(u32*)(r1 + 72);
    r2 = 0u;
    r3 = r2;
    if (r1 != 0u) { r2 = *(u32*)(r1 + 80); r3 = *(u32*)(r1 + 80 + 4); }
    *(u32*)(a0) = r2; *(u32*)(a0 + 4) = r3;
    return;
}

// FUN_0060d4c4
void W_60d4c4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(signed char*)(r0 + 87);
    r0 = *(signed char*)(r0 + 84);
    { WeakCall2(r0, r1); return; }
}

// FUN_00614540
u32 W_614540(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 264);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 6u;
    if (fa != fb) goto L_614558;
    *(u32*)(r0 + 248) = a2; *(u32*)(r0 + 248 + 4) = a3;
    return Fn_611f78_4(r0, r1, a2, a3);
    L_614558:;
    return r0;
}

// FUN_0061d5b8
void W_61d5b8(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 140u;
    { WeakCall1(r0); return; }
}

// FUN_0061dc98
void W_61dc98() {
    { WeakCall0(); return; }
}

// FUN_0061dcf0
void W_61dcf0() {
    { WeakCall0(); return; }
}

// FUN_0061f0cc
void W_61f0cc(u32 a0, u32 a1) {
    u32 r0;
    r0 = a1;
    { WeakCall2(r0, a1); return; }
}

// FUN_0061ffa8
void W_61ffa8() {
    { WeakCall0(); return; }
}

// FUN_00620800
float W_620800(u32 a0) {
    float f0_1;
    f0_1 = *(float*)(a0 + 8);
    return f0_1;
}

// FUN_0062080c
void W_62080c() {
    { WeakCall0(); return; }
}

// FUN_00626eec
float W_626eec() {
    float f0_1;
    f0_1 = 0.0f;
    return f0_1;
}

// FUN_00626f38
float W_626f38(u32 a0, u32 a1) {
    u32 r0_1;
    float f0_1;
    r0_1 = a0 + (a1 << 2);
    f0_1 = *(float*)(r0_1 + 396);
    return f0_1;
}

// FUN_00626fe4
float W_626fe4(u32 a0, u32 a1) {
    u32 r0_1, r0_2;
    float f0_1;
    r0_1 = a0 + (a1 << 2);
    r0_2 = r0_1 + 8192u;
    f0_1 = *(float*)(r0_2 + 564);
    return f0_1;
}

// FUN_00628678
u32 W_628678(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r0 = *(u32*)(r0 + 36);
    r2 = 1u;
    r0 = r0 & (r2 << (a1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}
