// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_009a13f8[];
u32 Fn_006134_1(u32);
extern char g_009b0c58[];
u32 Fn_00feb0_3(u32, u32, u32);
u32 WeakCall0();
extern char g_008ab890[];
u32 WeakCall2(u32, u32);
u32 WeakCall1(u32);
u32 Fn_02acc4_2(u32, u32);
float Fn_5bc920_0();
u32 Fn_5bc934_1(u32);
u32 Fn_5bc934_1f1(u32, float);
u32 Fn_0dc954_2(u32, u32);
u32 Fn_0dccdc_1(u32);
u32 Fn_5aeef0_1(u32);
extern char g_008918dc[];
u32 Fn_0e1358_2(u32, u32);
u32 Fn_024730_1(u32);
u32 Fn_503bac_2(u32, u32);

// FUN_000325c0
void W_0325c0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0004c53c
u32 W_04c53c(u32 a0, float p0, float p1, float p2, float p3) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1;
    float f0 = p0, f1 = p1, f2 = p2, f3 = p3, ffa, ffb;
    r1_1 = r0 + 528u;
    r0_1 = r0 + 540u;
    *(float*)(r1_1 + 0) = f0;
    *(float*)(r1_1 + 4) = f1;
    *(float*)(r0_1 + 0) = f2;
    *(float*)(r0_1 + 4) = f3;
    return r0_1;
}

// FUN_00064428
float W_064428() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f16, f17, ffa, ffb;
    f0 = Fn_5bc920_0();
    f16 = f0;
    r0 = 64u;
    r0 = Fn_5bc934_1f1(r0, f0);
    f17 = 1.0f;
    fa = r0; fb = 0u;
    if (fa != fb) f16 = f16 + f17;
    if (fa != fb) goto L_64460;
    r0 = 128u;
    r0 = Fn_5bc934_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) f16 = f16 - f17;
    L_64460:;
    r0 = 8u;
    r0 = Fn_5bc934_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) f0 = 0.100000001f;
    if (fa != fb) f16 = f16 * f0;
    f0 = f16;
    return f0;
}

// FUN_0006a950
void W_06a950() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0006dd44
void W_06dd44(u32 a0, float p0, float p1) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    float f0 = p0, f1 = p1, ffa, ffb;
    r0_1 = r0 + 60u;
    *(float*)(r0_1 + 0) = f0;
    *(float*)(r0_1 + 4) = f1;
    return;
}

// FUN_0006e504
void W_06e504(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 1u;
    *(u8*)(r0 + 16) = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_00075c9c
void W_075c9c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_000771ec
void W_0771ec() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_000dc910
void W_0dc910(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r0_6, stk[96];
    r4_1 = r0;
    r0_1 = (u32)stk;
    r0_2 = Fn_0dccdc_1(r0_1);
    r1_1 = (u32)stk;
    r0_3 = r4_1;
    r0_4 = Fn_0dc954_2(r0_3, r1_1);
    r0_5 = (u32)stk;
    r0_6 = Fn_5aeef0_1(r0_5);
    return;
}

// FUN_000df68c
void W_0df68c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008918dc;
    r1 = *(signed char*)(r0 + 1);
    r0 = *(signed char*)(r0);
    { Fn_0e1358_2(r0, r1); return; }
}

// FUN_000e34b4
u32 W_0e34b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = 0u;
    *(u8*)((u32)&stk) = r1;
    r0 = *(u8*)(r0 + 48);
    fa = r0; fb = 3u;
    if (fa != fb) goto L_e34dc;
    r0 = (u32)&stk;
    r0 = Fn_503bac_2(r0, r1);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    L_e34dc:;
    r0 = *(signed char*)((u32)&stk);
    return r0;
}

// FUN_000e4a40
u32 W_0e4a40(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r2 = r1;
    r1 = 5u;
    r12 = *(u32*)(r3 + 84);
    r3 = 0u;
    return ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
}

// FUN_000e4d6c
void W_0e4d6c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r3_1, r2_1, r12_1, r1_2;
    r1_1 = *(u32*)(r0);
    r3_1 = 0u;
    r2_1 = r3_1;
    r12_1 = *(u32*)(r1_1 + 84);
    r1_2 = 1u;
    { ((u32(*)(u32, u32, u32, u32))r12_1)(r0, r1_2, r2_1, r3_1); return; }
}

// FUN_000f4f1c
u32 W_0f4f1c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 70);
    r2 = 1u;
    r0 = r1 & (r2 << (r0 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_000fc874
void W_0fc874(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 68u;
    { WeakCall1(r0); return; }
}

// FUN_000fff64
void W_0fff64() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00100168
void W_100168() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_001001e8
void W_1001e8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}
