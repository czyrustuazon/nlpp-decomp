// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O2 -Otime --split_sections
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_01a8e4_2(u32, u32);
u32 Fn_4edc30_3(u32, u32, u32);
u32 Fn_4edcb0_3(u32, u32, u32);
u32 Fn_01a8e4_3(u32, u32, u32);
u32 Fn_4ee1ec_4(u32, u32, u32, u32);
u32 Fn_4ef2c0_4(u32, u32, u32, u32);
u32 Fn_4ee62c_4(u32, u32, u32, u32);

// FUN_004e7764
void W_4e7764(u32 a0, u32 a1) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r0_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_2(a0, a1);
    r0_3 = Fn_4edc30_3(((u32)&stk), a0, a1);
    return;
}

// FUN_004e77b0
void W_4e77b0(u32 a0, u32 a1) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r0_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_2(a0, a1);
    r0_3 = Fn_4edcb0_3(((u32)&stk), a0, a1);
    return;
}

// FUN_004e7da0
void W_4e7da0(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r6_1, r0_1, r3_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_3(a0, a1, a2);
    r0_3 = Fn_4ee1ec_4(((u32)&stk), a0, a1, a2);
    return;
}

// FUN_004e8dac
void W_4e8dac(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r6_1, r0_1, r3_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_3(a0, a1, a2);
    r0_3 = Fn_4ef2c0_4(((u32)&stk), a0, a1, a2);
    return;
}

// FUN_004ef780
void W_4ef780(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r6_1, r0_1, r3_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_3(a0, a1, a2);
    r0_3 = Fn_4ee62c_4(((u32)&stk), a0, a1, a2);
    return;
}
