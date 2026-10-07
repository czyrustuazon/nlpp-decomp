// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008bfa54[];
u32 Fn_616444_2(u32, u32);
u32 Fn_68f3c0_3(u32, u32, u32);
u32 Fn_68f3c0_2(u32, u32);
u32 Fn_48baa4_1(u32);
u32 Fn_5a4ebc_2(u32, u32);
u32 Fn_5ae694_4(u32, u32, u32, u32);
u32 Fn_498c20_2f1(u32, u32, float);
u32 Fn_04d1ac_3f1(u32, u32, u32, float);
u32 Fn_4c32e0_2(u32, u32);
u32 Fn_4c34a4_2(u32, u32);
u32 Fn_4c34a4_2f1(u32, u32, float);
extern char g_008aab30[];
u32 Fn_4e2680_1(u32);
u32 Fn_504394_1(u32);
u32 Fn_504590_1(u32);
extern char g_008b8778[];
extern char g_008b877c[];
u32 Fn_4fb430_2(u32, u32);
u32 Fn_4fbce0_0();
u32 Fn_4fb7f8_2(u32, u32);
u32 Fn_4fc420_0();
u32 Fn_4fb8d4_2(u32, u32);
u32 Fn_4fc54c_0();
extern char g_008aab68[];
u32 Fn_008964_3(u32, u32, u32);
u32 Fn_5200a4_2(u32, u32);
extern char g_0082c6b0[];
extern char g_009a42a8[];
u32 Fn_633740_2f1(u32, u32, float);
extern char g_0082dae4[];
u32 Fn_59f2f4_2(u32, u32);
u32 Fn_5ae99c_0();
u32 Fn_5a934c_3f1(u32, u32, u32, float);
u32 Fn_5eb62c_3f1(u32, u32, u32, float);
extern char g_0089a330[];
u32 Fn_62e70c_2(u32, u32);
u32 Fn_6254f4_1(u32);
u32 Fn_02b848_3f1(u32, u32, u32, float);

// FUN_004443f8
u32 W_4443f8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 144);
    r1 = *(u8*)(r0 + 240);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_444418;
    return Fn_616444_2(r0, r1);
    L_444418:;
    return r0;
}

// FUN_00477e14
float W_477e14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, ffa, ffb;
    r2_1 = *(u32*)(r0);
    r1_1 = *(u32*)(r0 + 4);
    r0_1 = r2_1;
    r0_2 = Fn_68f3c0_3(r0_1, r1_1, r2_1);
    f0_1 = u2f(r0_2);
    f1_1 = 9.99999972e-10f;
    f0_2 = f0_1 * f1_1;
    return f0_2;
}

// FUN_00477ef4
float W_477ef4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r1_2, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, ffa, ffb;
    r1_1 = r0 + (r1 << 3);
    r0_1 = *(u32*)(r1_1 + 16); r1_2 = *(u32*)(r1_1 + 16 + 4);
    r0_2 = Fn_68f3c0_2(r0_1, r1_2);
    f0_1 = u2f(r0_2);
    f1_1 = 9.99999972e-10f;
    f0_2 = f0_1 * f1_1;
    return f0_2;
}

// FUN_0048baa4
void W_48baa4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    float f0, f0_1, ffa, ffb;
    r1_1 = 1u;
    f0_1 = 1.0f;
    *(u8*)(r0 + 470) = r1_1;
    *(float*)(r0 + 20) = f0_1;
    *(float*)(r0 + 24) = f0_1;
    *(float*)(r0 + 28) = f0_1;
    *(float*)(r0 + 32) = f0_1;
    return;
}

// FUN_00493f10
void W_493f10(u32 a0, float p0, float p1) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1 = p1, ffa, ffb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_493f2c;
    *(float*)(r0 + 64) = f0;
    *(float*)(r0 + 76) = f0;
    *(float*)(r0 + 72) = f1;
    *(float*)(r0 + 84) = f1;
    L_493f2c:;
    return;
}

// FUN_0049ae90
void W_49ae90(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r3_1, r0_1, r1_1, r0_2, r0_3, r1_2, r0_4, r0_5, r0_6, r0_7, r0_8;
    float f0, f0_1, ffa, ffb;
    r4_1 = r0;
    r3_1 = r1;
    r0_1 = 1u;
    *(u8*)(r4_1 + 4) = r0_1;
    r1_1 = r2;
    r0_2 = r3_1;
    r0_3 = Fn_5ae694_4(r0_2, r1_1, r2, r3_1);
    r1_2 = 1u;
    *(u32*)(r4_1 + 8) = r0_3;
    r0_4 = Fn_5a4ebc_2(r0_3, r1_2);
    r0_5 = *(u32*)(r4_1 + 8);
    r0_6 = Fn_48baa4_1(r0_5);
    r0_7 = *(u32*)(r4_1 + 8);
    f0_1 = 1.0f;
    r0_8 = r0_7 + 20u;
    *(float*)(r0_8) = f0_1;
    *(float*)(r0_8 + 4) = f0_1;
    *(float*)(r0_8 + 8) = f0_1;
    *(float*)(r0_8 + 12) = f0_1;
    return;
}

// FUN_0049c194
u32 W_49c194(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    f0 = 0.0f;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r0 + 20) = r1;
    *(float*)(r0 + 24) = f0;
    r0 = r0 + 28u;
    r0 = Fn_498c20_2f1(r0, r1, f0);
    r0 = r0 - 28u;
    return r0;
}

// FUN_004b0ee4
void W_4b0ee4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r2 = *(u32*)(r0 + 88);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_4b0f0c;
    *(u8*)(r2 + 569) = r1;
    f0 = 0.0f;
    *(float*)(r2 + 572) = f0;
    r2 = 0u;
    r0 = *(u32*)(r0 + 88);
    r1 = r2;
    { Fn_04d1ac_3f1(r0, r1, r2, f0); return; }
    L_4b0f0c:;
    return;
}

// FUN_004b8798
void W_4b8798(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4b87bc;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) *(float*)(r1 + 252) = f0;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if (fa != fb) *(float*)(r0 + 252) = f0;
    L_4b87bc:;
    return;
}

// FUN_004c1728
u32 W_4c1728(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6;
    float f0, f0_1, ffa, ffb;
    r4_1 = r0;
    r0_1 = 0u;
    *(u8*)(r4_1 + 1065) = r0_1;
    r1_1 = r0_1;
    *(u8*)(r4_1 + 1066) = r0_1;
    r0_2 = r4_1;
    r0_3 = Fn_4c32e0_2(r0_2, r1_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 264);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_1 = -10000.0f;
    *(float*)(r4_1 + 1000) = f0_1;
    *(float*)(r4_1 + 1004) = f0_1;
    return r0_6;
}

// FUN_004c1ed4
u32 W_4c1ed4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6, r0_7;
    float f0, f0_1, ffa, ffb;
    r4_1 = r0;
    r0_1 = 0u;
    *(u8*)(r4_1 + 1068) = r0_1;
    r1_1 = r0_1;
    *(u8*)(r4_1 + 1066) = r0_1;
    r0_2 = r4_1;
    r0_3 = Fn_4c32e0_2(r0_2, r1_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 264);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_1 = -10000.0f;
    *(float*)(r4_1 + 1016) = f0_1;
    *(float*)(r4_1 + 1020) = f0_1;
    r0_7 = *(u32*)(r4_1 + 1016);
    *(u32*)(r4_1 + 1008) = r0_7;
    *(float*)(r4_1 + 1012) = f0_1;
    return r0_7;
}

// FUN_004c1f28
u32 W_4c1f28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r1_1, r0_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6;
    float f0, f0_1, ffa, ffb;
    r4_1 = r0;
    r1_1 = 0u;
    r0_1 = 1u;
    *(u8*)(r4_1 + 1068) = r1_1;
    *(u8*)(r4_1 + 1065) = r0_1;
    r0_2 = r4_1;
    r0_3 = Fn_4c34a4_2(r0_2, r1_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 260);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_1 = -10000.0f;
    *(float*)(r4_1 + 1000) = f0_1;
    *(float*)(r4_1 + 1004) = f0_1;
    return r0_6;
}

// FUN_004c312c
u32 W_4c312c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r1_1, r0_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6, r0_7;
    float f0, f0_1, f0_2, ffa, ffb;
    r4_1 = r0;
    r1_1 = 0u;
    r0_1 = 1u;
    *(u8*)(r4_1 + 1065) = r1_1;
    f0_1 = 0.0f;
    *(u8*)(r4_1 + 1068) = r0_1;
    *(float*)(r4_1 + 932) = f0_1;
    r0_2 = r4_1;
    r0_3 = Fn_4c34a4_2f1(r0_2, r1_1, f0_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 260);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_2 = -10000.0f;
    *(float*)(r4_1 + 1016) = f0_2;
    *(float*)(r4_1 + 1020) = f0_2;
    r0_7 = *(u32*)(r4_1 + 1016);
    *(u32*)(r4_1 + 1008) = r0_7;
    *(float*)(r4_1 + 1012) = f0_2;
    return r0_7;
}

// FUN_00548d44
void W_548d44(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r1 = (u32)g_0082c6b0;
    r2 = 0u;
    r3 = r0 + 8u;
    *(u32*)(r0) = r1;
    r1 = r0 + 4u;
    f0 = 0.0f;
    *(u32*)(r1) = r2; *(u32*)(r1 + 4) = r3;
    *(u32*)(r0 + 16) = r2;
    *(u32*)(r0 + 12) = r3;
    *(u32*)(r0 + 20) = r2;
    *(float*)(r0 + 24) = f0;
    *(float*)(r0 + 28) = f0;
    return;
}

// FUN_0055d214
void W_55d214(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 56);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55d234;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 56) = f0;
    r1 = r1 | 16u;
    *(u16*)(r0 + 32) = r1;
    L_55d234:;
    return;
}

// FUN_0055d74c
void W_55d74c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 52);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55d76c;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 52) = f0;
    r1 = r1 | 8u;
    *(u16*)(r0 + 32) = r1;
    L_55d76c:;
    return;
}

// FUN_0055df60
void W_55df60(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 48);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55df80;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 48) = f0;
    r1 = r1 | 8u;
    *(u16*)(r0 + 32) = r1;
    L_55df80:;
    return;
}

// FUN_0055e23c
void W_55e23c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 40);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55e25c;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 40) = f0;
    r1 = r1 | 4u;
    *(u16*)(r0 + 32) = r1;
    L_55e25c:;
    return;
}

// FUN_0055e260
void W_55e260(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    r1 = r0 + (r1 << 2);
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    f1 = *(float*)(r1 + 72);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55e294;
    *(float*)(r1 + 72) = f0;
    r1 = *(u16*)(r0 + 32);
    r1 = r1 | 8u;
    *(u16*)(r0 + 32) = r1;
    L_55e294:;
    return;
}

// FUN_0055e29c
void W_55e29c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    f1 = *(float*)(r0 + 36);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55e2cc;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 36) = f0;
    r1 = r1 | 64u;
    *(u16*)(r0 + 32) = r1;
    L_55e2cc:;
    return;
}

// FUN_0059c4ac
float W_59c4ac(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2, r1_1;
    float f0, f0_1, ffa, ffb;
    r2_1 = *(u32*)(r1);
    f0_1 = 0.0f;
    *(u32*)(r0) = r2_1;
    r2_2 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 16) = r2_2;
    r1_1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 32) = r1_1;
    *(float*)(r0 + 48) = f0_1;
    return f0_1;
}

// FUN_0059c4d4
float W_59c4d4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2, r1_1;
    float f0, f0_1, ffa, ffb;
    r2_1 = *(u32*)(r1);
    f0_1 = 0.0f;
    *(u32*)(r0 + 4) = r2_1;
    r2_2 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 20) = r2_2;
    r1_1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 36) = r1_1;
    *(float*)(r0 + 52) = f0_1;
    return f0_1;
}

// FUN_0059c4fc
float W_59c4fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2, r1_1;
    float f0, f0_1, ffa, ffb;
    r2_1 = *(u32*)(r1);
    f0_1 = 0.0f;
    *(u32*)(r0 + 8) = r2_1;
    r2_2 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 24) = r2_2;
    r1_1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 40) = r1_1;
    *(float*)(r0 + 56) = f0_1;
    return f0_1;
}

// FUN_0059dc94
void W_59dc94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, ffa, ffb;
    r1 = (u32)g_009a42a8;
    f1 = 0.0f;
    f0 = *(float*)(r1 + 28);
    ffa = f0; ffb = f1;
    if (ffa > ffb) goto L_59dcb4;
    fa = r0; fb = 4u;
    if (fa < fb) *(u8*)(r1 + 37) = r0;
    L_59dcb4:;
    return;
}

// FUN_005a2dfc
float W_5a2dfc(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r0_3, stk;
    float f0 = p0, f0_1, ffa, ffb;
    r1_1 = (u32)&stk;
    *(float*)((u32)&stk) = f0;
    r0_1 = *(u32*)(r0);
    r0_2 = r0_1 + 168u;
    r0_3 = Fn_633740_2f1(r0_2, r1_1, f0);
    f0_1 = *(float*)((u32)&stk);
    return f0_1;
}

// FUN_005a66d0
void W_5a66d0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r0 = Fn_5ae99c_0();
    r1 = (u32)g_0082dae4;
    *(u32*)(r0) = r1; r0 = r0 + 508u;
    r0 = Fn_59f2f4_2(r0, r1);
    r0 = r0 - 508u;
    f0 = 1.0f;
    r1 = 0u;
    *(float*)(r0 + 504) = f0;
    *(u8*)(r0 + 860) = r1;
    *(u8*)(r0 + 861) = r1;
    return;
}

// FUN_005bbaf0
void W_5bbaf0(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) goto L_5bbb0c;
    r1 = f2u(f0);
    fa = r1; fb = 1065353216u;
    if ((int)fa <= (int)fb) *(float*)(r0 + 72) = f0;
    L_5bbb0c:;
    return;
}

// FUN_005bc75c
void W_5bc75c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[4];
    float f0, ffa, ffb;
    fa = r1; fb = 2u;
    if (fa >= fb) return;
    r4 = r0 + (r1 << 2);
    r0 = *(u32*)(r4 + 76);
    *(u32*)(r4 + 68) = r2;
    fa = r0; fb = 0u;
    if (fa != fb) goto L_5bc7ac;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_5bc7ac;
    r1 = (u32)stk;
    f0 = 1.0f;
    *(float*)((u32)stk) = f0;
    *(float*)((u32)stk + 4) = f0;
    *(float*)((u32)stk + 8) = f0;
    *(float*)((u32)stk + 12) = f0;
    r0 = *(u32*)(r4 + 68);
    r0 = Fn_5a934c_3f1(r0, r1, r2, f0);
    *(u32*)(r4 + 76) = r0;
    L_5bc7ac:;
    return;
}

// FUN_005c2a00
void W_5c2a00(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    if (ffa < ffb) goto L_5c2a20;
    r1 = f2u(f0);
    fa = r1; fb = 1065353216u;
    if ((int)fa > (int)fb) f0 = 1.0f;
    L_5c2a20:;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) *(float*)(r1 + 32) = f0;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) *(float*)(r0 + 32) = f0;
    return;
}

// FUN_005c2d4c
void W_5c2d4c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r0_1;
    float f0 = p0, ffa, ffb;
    r1_1 = *(u32*)(r0);
    r2_1 = 1u;
    fa = r1_1; fb = 0u;
    if (fa != fb) *(float*)(r1_1 + 388) = f0;
    if (fa != fb) *(u8*)(r1_1 + 476) = r2_1;
    r0_1 = *(u32*)(r0 + 4);
    fa = r0_1; fb = 0u;
    if (fa != fb) *(float*)(r0_1 + 388) = f0;
    if (fa != fb) *(u8*)(r0_1 + 476) = r2_1;
    return;
}

// FUN_005c2dd0
void W_5c2dd0(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r0_1;
    float f0 = p0, ffa, ffb;
    r1_1 = *(u32*)(r0);
    r2_1 = 1u;
    fa = r1_1; fb = 0u;
    if (fa != fb) *(float*)(r1_1 + 392) = f0;
    if (fa != fb) *(u8*)(r1_1 + 476) = r2_1;
    r0_1 = *(u32*)(r0 + 4);
    fa = r0_1; fb = 0u;
    if (fa != fb) *(float*)(r0_1 + 392) = f0;
    if (fa != fb) *(u8*)(r0_1 + 476) = r2_1;
    return;
}

// FUN_005c305c
void W_5c305c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r2 = *(u32*)(r0 + 44);
    fa = r2; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r2 + 4);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_5c3080;
    f0 = u2f(r1);
    r1 = *(u32*)(r2);
    f0 = (float)(int)f2u(f0);
    { Fn_5eb62c_3f1(r0, r1, r2, f0); return; }
    L_5c3080:;
    return;
}

// FUN_005ce308
u32 W_5ce308() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0089a330;
    r0 = *(u32*)(r1 + 44);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = *(u8*)(r1 + 22);
    if (fa == fb) goto L_5ce324;
    r0 = *(u32*)(r0 + 36);
    return Fn_62e70c_2(r0, r1);
    L_5ce324:;
    return r0;
}

// FUN_005d076c
u32 W_5d076c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 188);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_5d0784;
    return Fn_6254f4_1(r0);
    L_5d0784:;
    return r0;
}

// FUN_0060b7d4
u32 W_60b7d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r5 = r0;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_60b838;
    r0 = *(u32*)(r5 + 32);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_60b838;
    L_60b7f8:;
    r0 = *(u32*)(r5 + 24);
    r0 = *(u32*)(r0 + (r4 << 2));
    r1 = *(u8*)(r0 + 76);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_60b828;
    r2 = *(u32*)(r5 + 100);
    r1 = r4 + (r4 << 1);
    f0 = *(float*)(r0 + 68);
    r2 = r2 + (r1 << 2);
    r1 = r0 + 8u;
    r0 = r0 + 56u;
    r0 = Fn_02b848_3f1(r0, r1, r2, f0);
    L_60b828:;
    r0 = *(u32*)(r5 + 32);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_60b7f8;
    L_60b838:;
    return r0;
}

// FUN_0061d184
float W_61d184(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, ffa, ffb;
    r4 = r0;
    L_61d18c:;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0 + 20);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = r0 >> 7;
    fa = r0; fb = 16777216u;
    if (fa > fb) goto L_61d18c;
    f0 = u2f(r0);
    f1 = 5.96046448e-08f;
    f0 = (float)(u32)f2u(f0);
    f0 = f0 * f1;
    return f0;
}

// FUN_0061d1c0
float W_61d1c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r1_2, r0_1, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r1_1 = *(u32*)(r0);
    r1_2 = *(u32*)(r1_1 + 20);
    r0_1 = ((u32(*)(u32))r1_2)(r0);
    r0_2 = r0_1 >> 8;
    f0_1 = u2f(r0_2);
    f1_1 = 5.96046448e-08f;
    f0_2 = (float)(u32)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0061d1ec
float W_61d1ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r1_2, r0_1, r0_2, r0_3;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r1_1 = *(u32*)(r0);
    r1_2 = *(u32*)(r1_1 + 20);
    r0_1 = ((u32(*)(u32))r1_2)(r0);
    r0_2 = r0_1 >> 8;
    r0_3 = r0_2 + 1u;
    f0_1 = u2f(r0_3);
    f1_1 = 5.96046448e-08f;
    f0_2 = (float)(u32)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0061d330
void W_61d330(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1;
    float f0, f0_1, ffa, ffb;
    r1_1 = 0u;
    r2_1 = 1u;
    *(u32*)(r0) = r1_1;
    f0_1 = 1.0f;
    *(u32*)(r0 + 16) = r2_1;
    *(u32*)(r0 + 4) = r1_1;
    *(float*)(r0 + 8) = f0_1;
    *(float*)(r0 + 12) = f0_1;
    return;
}

// FUN_00625d30
u32 W_625d30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, ffa, ffb;
    r2 = *(u8*)(r0 + 3532);
    r1 = r0 + 3328u;
    fa = r2; fb = 0u;
    if (fa == fb) r2 = *(u8*)(r1 + 193);
    if (fa == fb) { fa = r2; fb = 0u; }
    if (fa != fb) goto L_625d70;
    r2 = *(u8*)(r1 + 207);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_625d70;
    r0 = r0 + 3072u;
    f1 = 0.0f;
    f0 = *(float*)(r0 + 464);
    ffa = f0; ffb = f1;
    if (ffa == ffb) r0 = *(signed char*)(r1 + 195);
    if (ffa == ffb) goto L_625d74;
    L_625d70:;
    r0 = 0u;
    L_625d74:;
    return r0;
}

// FUN_0063bb94
float W_63bb94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r1_2, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 60);
    r1_1 = *(u32*)(r0_1);
    r1_2 = *(u32*)(r1_1 + 8);
    r0_2 = ((u32(*)(u32))r1_2)(r0_1);
    f0_1 = u2f(r0_2);
    f1_1 = *(float*)(r4_1 + 36);
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0063bbc0
float W_63bbc0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r1_2, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 60);
    r1_1 = *(u32*)(r0_1);
    r1_2 = *(u32*)(r1_1 + 16);
    r0_2 = ((u32(*)(u32))r1_2)(r0_1);
    f0_1 = u2f(r0_2);
    f1_1 = *(float*)(r4_1 + 40);
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0063bbec
float W_63bbec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r1_2, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 60);
    r1_1 = *(u32*)(r0_1);
    r1_2 = *(u32*)(r1_1 + 12);
    r0_2 = ((u32(*)(u32))r1_2)(r0_1);
    f0_1 = u2f(r0_2);
    f1_1 = *(float*)(r4_1 + 40);
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_00642324
u32 W_642324(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, ffa, ffb;
    r1 = *(u32*)(r0 + 8);
    r2 = 3u;
    r1 = *(u32*)(r1 + 140);
    r1 = r2 & ~r1;
    if (r1 != 0) goto L_642350;
    f0 = *(float*)(r0 + 28);
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa > ffb) r0 = 1u;
    if (ffa > ffb) goto L_642354;
    L_642350:;
    r0 = 0u;
    L_642354:;
    return r0;
}
