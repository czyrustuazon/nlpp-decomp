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
extern char g_008aab98[];
u32 Fn_4fd0c8_2(u32, u32);
u32 Fn_4fd0f0_2(u32, u32);
u32 Fn_631e84_4(u32, u32, u32, u32);
u32 Fn_632948_1(u32);
extern char g_0082c328[];
u32 Fn_50c010_3(u32, u32, u32);
u32 Fn_63383c_2(u32, u32);
u32 Fn_5297dc_3(u32, u32, u32);
u32 Fn_636c7c_2(u32, u32);
u32 Fn_58570c_1(u32);
u32 Fn_5874b0_1(u32);
u32 Fn_589e30_2(u32, u32);
u32 Fn_589e64_2(u32, u32);
u32 Fn_0208cc_0f3(float, float, float);
extern char g_0082df04[];
u32 Fn_5b13a8_4(u32, u32, u32, u32);
u32 Fn_0244c8_2(u32, u32);
u32 Fn_024568_1(u32);
u32 Fn_632a78_2(u32, u32);

// FUN_00628a64
void W_628a64(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 12u;
    { WeakCall1(r0); return; }
}

// FUN_006295d0
void W_6295d0() {
    { WeakCall0(); return; }
}

// FUN_0062f408
void W_62f408(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    { WeakCall1(r0); return; }
}

// FUN_0062f4cc
void W_62f4cc() {
    { WeakCall0(); return; }
}

// FUN_00632174
u32 W_632174(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, fa, fb, stk[2];
    r4 = r0;
    r0 = r1;
    r1 = r2;
    r2 = r3;
    r0 = Fn_631e84_4(r0, r1, r2, r3);
    if (r0 == 0u) goto L_6321b4;
    r1 = r0 + 44u;
    r0 = (u32)stk;
    r0 = Fn_4fd0c8_2(r0, r1);
    r0 = (u32)stk;
    r0 = Fn_632948_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6321c8;
    L_6321b4:;
    r1 = (u32)g_008aab98;
    r0 = r4;
    r0 = Fn_4fd0f0_2(r0, r1);
    return r0;
    L_6321c8:;
    r0 = *(u32*)((u32)stk);
    *(u32*)(r4) = r0;
    r0 = *(u32*)((u32)stk + 4);
    *(u32*)(r4 + 4) = r0;
    return r0;
}

// FUN_00632a74
void W_632a74() {
    { WeakCall0(); return; }
}

// FUN_006338dc
void W_6338dc(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 8u;
    { WeakCall1(r0); return; }
}

// FUN_00633994
void W_633994() {
    { WeakCall0(); return; }
}

// FUN_00633e1c
u32 W_633e1c(u32 a0) {
    u32 r1_1, r1_2, r0_1, r2_1, r0_2, r1_3, r0_3, r0_4, stk[3];
    r1_1 = a0;
    r1_2 = *(u32*)(r1_1 + 4);
    r0_1 = (u32)stk;
    r2_1 = 0u;
    r0_2 = Fn_50c010_3(r0_1, r1_2, r2_1);
    r1_3 = (u32)g_0082c328;
    *(u32*)(r0_2) = r1_3;
    r0_3 = (u32)stk;
    r0_4 = Fn_63383c_2(r0_3, r1_3);
    return r0_4;
}

// FUN_00633fd0
void W_633fd0(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 8u;
    { WeakCall1(r0); return; }
}

// FUN_00634000
void W_634000(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 8u;
    { WeakCall1(r0); return; }
}

// FUN_00634030
u32 W_634030(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb, stk[3];
    r2 = r1;
    r1 = *(u8*)(r0 + 4);
    if (r1 == 0u) goto L_63406c;
    r1 = *(u32*)(r0);
    r0 = *(u8*)(r1 + 68);
    if (r0 != 0u) goto L_63406c;
    r0 = (u32)stk;
    r0 = Fn_5297dc_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)((u32)stk + 4);
    if (fa != fb) goto L_634070;
    L_63406c:;
    r0 = 0u;
    L_634070:;
    return r0;
}

// FUN_006340c4
u32 W_6340c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb, stk[3];
    r2 = r1;
    r1 = *(u8*)(r0 + 4);
    if (r1 == 0u) goto L_634100;
    r1 = *(u32*)(r0);
    r0 = *(u8*)(r1 + 68);
    if (r0 != 0u) goto L_634100;
    r0 = (u32)stk;
    r0 = Fn_5297dc_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)((u32)stk);
    if (fa != fb) goto L_634104;
    L_634100:;
    r0 = 0u;
    L_634104:;
    return r0;
}

// FUN_00637090
u32 W_637090(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r4, stk[8];
    r0 = r1;
    r4 = 0u;
    r1 = (u32)stk;
    r0 = Fn_636c7c_2(r0, r1);
    if (r0 != 0u) r4 = *(u32*)((u32)stk + 16);
    r0 = r4 + (r4 << 2);
    r0 = r0 << 13;
    return r0;
}

// FUN_0063e750
u32 W_63e750(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r0 = *(u8*)(r0 + 15);
    r2 = 1u;
    r0 = r0 & (r2 << (a1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0063f9fc
u32 W_63f9fc(u32 a0) {
    u32 r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r0_6, r1_2, r0_7, r0_8, r0_9, stk;
    r4_1 = a0;
    r0_1 = a0 + 4u;
    r0_2 = Fn_58570c_1(r0_1);
    r1_1 = r0_2 - 1u;
    r0_3 = (u32)&stk;
    r0_4 = Fn_589e30_2(r0_3, r1_1);
    r0_5 = r4_1 + 12u;
    r0_6 = Fn_5874b0_1(r0_5);
    r1_2 = r0_6 - 100u;
    r0_7 = (u32)&stk;
    r0_8 = Fn_589e64_2(r0_7, r1_2);
    r0_9 = stk;
    return r0_9;
}

// FUN_0063fa34
u32 W_63fa34(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r0 = *(u32*)(r0 + 40);
    r2 = 1u;
    r0 = r0 & 7680u;
    r0 = r0 >> 9;
    r0 = r0 & (r2 << (a1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_006404f0
void W_6404f0(u32 a0, u32 a1) {
    float f2_1, f1_1, f0_1;
    f2_1 = *(float*)(a1 + 32);
    f1_1 = *(float*)(a1 + 16);
    f0_1 = *(float*)(a1);
    { Fn_0208cc_0f3(f0_1, f1_1, f2_1); return; }
}

// FUN_00640500
void W_640500(u32 a0, u32 a1) {
    float f2_1, f1_1, f0_1;
    f2_1 = *(float*)(a1 + 36);
    f1_1 = *(float*)(a1 + 20);
    f0_1 = *(float*)(a1 + 4);
    { Fn_0208cc_0f3(f0_1, f1_1, f2_1); return; }
}

// FUN_00640510
void W_640510(u32 a0, u32 a1) {
    float f2_1, f1_1, f0_1;
    f2_1 = *(float*)(a1 + 40);
    f1_1 = *(float*)(a1 + 24);
    f0_1 = *(float*)(a1 + 8);
    { Fn_0208cc_0f3(f0_1, f1_1, f2_1); return; }
}

// FUN_006405bc
void W_6405bc(u32 a0, u32 a1) {
    float f2_1, f1_1, f0_1;
    f2_1 = *(float*)(a1 + 44);
    f1_1 = *(float*)(a1 + 28);
    f0_1 = *(float*)(a1 + 12);
    { Fn_0208cc_0f3(f0_1, f1_1, f2_1); return; }
}

// FUN_006406d8
float W_6406d8(u32 a0) {
    u32 r0 = a0;
    float f0, f1, f2;
    f0 = *(float*)(r0 + 0);
    f1 = *(float*)(r0 + 4);
    f2 = *(float*)(r0 + 8);
    f0 = f0 * f0;
    f0 = f0 + f1 * f1;
    f0 = f0 + f2 * f2;
    return f0;
}

// FUN_00641e20
void W_641e20(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 304u;
    { WeakCall1(r0); return; }
}

// FUN_00643054
void W_643054(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb, stk[3];
    r2 = *(u32*)(r0 + 12);
    if (r2 == 0u) goto L_643094;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u16*)(r1 + 26);
    r3 = (u32)g_0082df04;
    if (fa == fb) r1 = ~0u;
    r2 = 18u;
    *(u32*)((u32)stk + 8) = r1;
    *(u32*)((u32)stk + 4) = r2;
    *(u32*)((u32)stk) = r3;
    r0 = *(u32*)(r0 + 12);
    r1 = (u32)stk;
    r0 = Fn_5b13a8_4(r0, r1, r2, r3);
    L_643094:;
    return;
}

// FUN_00646510
void W_646510(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 256u;
    r0 = r0 + 42u;
    { WeakCall1(r0); return; }
}

// FUN_00646ee8
void W_646ee8() {
    { WeakCall0(); return; }
}

// FUN_00647280
void W_647280() {
    { WeakCall0(); return; }
}

// FUN_0064779c
void W_64779c() {
    { WeakCall0(); return; }
}

// FUN_00665930
void W_665930(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 720);
    { WeakCall1(r0); return; }
}

// FUN_00665968
void W_665968(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 716);
    { WeakCall1(r0); return; }
}

// FUN_0068229c
void W_68229c() {
    { WeakCall0(); return; }
}

// FUN_00682828
void W_682828() {
    { WeakCall0(); return; }
}

// FUN_0068a530
void W_68a530(u32 a0, u32 a1) {
    u32 r2_1, r3_1, r1_1, r2_2;
    r2_1 = *(u32*)(a0); r3_1 = *(u32*)(a0 + 4);
    r1_1 = a1 + r3_1;
    r2_2 = *(u32*)(r2_1 + 8);
    { ((u32(*)(u32, u32))r2_2)(a0, r1_1); return; }
}

// FUN_0068c1f8
u32 W_68c1f8(u32 a0, u32 a1) {
    u32 r5_1, r4_1, r6_1, r0_1, r0_2, r1_1, r0_3, r0_4, r5_2, r0_5, r0_6, r0_7;
    r5_1 = a0;
    r4_1 = a0 + 88u;
    r6_1 = a1;
    r0_1 = r4_1;
    r0_2 = Fn_0244c8_2(r0_1, a1);
    r1_1 = r6_1;
    r0_3 = r5_1;
    r0_4 = Fn_632a78_2(r0_3, r1_1);
    r5_2 = r0_4;
    r0_5 = r4_1;
    r0_6 = Fn_024568_1(r0_5);
    r0_7 = r5_2;
    return r0_7;
}
