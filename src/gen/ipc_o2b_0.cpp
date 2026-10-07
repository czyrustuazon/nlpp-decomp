// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O2 -Otime --split_sections
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008bb928[];
u32 Fn_010ccc_3(u32, u32, u32);
u32 Fn_517c38_1(u32);
u32 Fn_5182c4_1(u32);
extern char g_007eb688[];
u32 Fn_024670_3(u32, u32, u32);
extern char g_008aae58[];
extern char g_009a158c[];
u32 Fn_0244c8_1(u32);
u32 Fn_024568_1(u32);
u32 Fn_51b050_2(u32, u32);
u32 Fn_200e60_2(u32, u32);
u32 Fn_51f860_3(u32, u32, u32);
u32 Fn_520ba4_1(u32);
u32 Fn_520d3c_1(u32);
u32 Fn_51f958_3(u32, u32, u32);
extern char g_008aa790[];
extern char g_008e1000[];
u32 Fn_0101e0_2(u32, u32);
u32 Fn_01b6ac_2(u32, u32);
u32 Fn_024730_1(u32);
u32 Fn_503610_1(u32);
u32 Fn_5039b8_1(u32);
u32 Fn_503bec_1(u32);
u32 Fn_503e68_1(u32);
u32 Fn_503fa0_2(u32, u32);

// FUN_004f387c
void W_4f387c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 533u;
    r0 = r4;
    r0 = Fn_5182c4_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_517c38_1(r0);
    r1 = (u32)g_008bb928;
    r0 = 0u;
    *(u32*)(r1 + 28) = r0;
    return;
}

// FUN_004fd15c
u32 W_4fd15c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)g_007eb688;
    r2 = 655362u;
    r1 = 1u;
    r0 = *(u8*)(r0);
    *(u8*)((u32)&stk) = r0;
    r0 = (u32)&stk;
    r0 = Fn_024670_3(r0, r1, r2);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = *(u8*)((u32)&stk);
    return r0;
}

// FUN_004fd328
void W_4fd328(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = 0u;
    r1 = r0;
    *(u64*)((u32)stk) = (u64)r0 | ((u64)r1 << 32);
    r2 = 196609u;
    r1 = 8u;
    r0 = (u32)stk;
    r0 = Fn_024670_3(r0, r1, r2);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    u64 t64 = *(u64*)((u32)stk); r0 = (u32)t64; r1 = (u32)(t64 >> 32);
    *(u64*)(r4) = (u64)r0 | ((u64)r1 << 32);
    return;
}

// FUN_004fd3ac
u32 W_4fd3ac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[49];
    r2 = 786432u;
    r1 = 192u;
    r0 = (u32)stk;
    r0 = Fn_024670_3(r0, r1, r2);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = *(u32*)((u32)stk);
    r0 = r0 & 64u;
    r0 = r0 >> 6;
    return r0;
}

// FUN_0051aab0
u32 W_51aab0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = (u32)g_009a158c;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008aae58;
    r1 = *(u8*)(r0 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_51aaf8;
    r0 = *(u32*)(r0 + 12);
    r1 = 0u;
    stk = r0;
    r0 = (u32)&stk;
    r0 = Fn_51b050_2(r0, r1);
    r5 = r0;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
    L_51aaf8:;
    r5 = 3768652792u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}

// FUN_0051d8e0
void W_51d8e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51d918;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d914;
    r0 = r4;
    r0 = Fn_200e60_2(r0, r1);
    r2 = r0 + 1u;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51f860_3(r0, r1, r2);
    L_51d914:;
    return;
    L_51d918:;
    r0 = 25u;
    r0 = Fn_520d3c_1(r0);
    return;
}

// FUN_0051dac4
void W_51dac4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51dafc;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51daf8;
    r0 = r4;
    r0 = Fn_200e60_2(r0, r1);
    r2 = r0 + 1u;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51f958_3(r0, r1, r2);
    L_51daf8:;
    return;
    L_51dafc:;
    r0 = 24u;
    r0 = Fn_520d3c_1(r0);
    return;
}

// FUN_0061d3a8
void W_61d3a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = Fn_503610_1(r0);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = (u32)g_008e1000;
    r1 = 770048u;
    r0 = Fn_503fa0_2(r0, r1);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = (u32)stk + 4u;
    r0 = Fn_5039b8_1(r0);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(u32*)((u32)stk + 4);
    r0 = r0 >> 1;
    *(u32*)(r4 + 4) = r0;
    r0 = (u32)g_008aa790;
    r0 = *(u8*)(r0);
    r0 = Fn_503e68_1(r0);
    r0 = 1u;
    r0 = Fn_503bec_1(r0);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r1 = 0u;
    *(u32*)((u32)stk) = r1;
    r4 = r4 + 24u; r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 3768588347u;
    if (fa != fb) goto L_61d440;
    r0 = (u32)stk;
    r0 = Fn_0101e0_2(r0, r1);
    r1 = r0 >> 31;
    if (r1 != 0) goto L_61d440;
    r1 = *(u32*)((u32)stk);
    r0 = 0u;
    *(u32*)(r4) = r1;
    L_61d440:;
    r1 = r0 >> 31;
    if (r1 != 0) r0 = Fn_01b6ac_2(r0, r1);
    return;
}
