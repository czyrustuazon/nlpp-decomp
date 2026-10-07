// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_630e20_0();
u32 Fn_26e81c_0();
u32 Fn_27e308_1(u32);
u32 Fn_26f0cc_0();
u32 Fn_2725e0_0();
u32 Fn_443e18_0();
u32 Fn_62fa8c_0();
u32 Fn_443cd8_0();
u32 Fn_427f9c_1(u32);
extern char g_00825024[];
extern char g_008bba3c[];
u32 Fn_2024b0_0();
u32 Fn_4303e0_1(u32);
extern char g_00825424[];
u32 WeakCall1(u32);
u32 Fn_02a218_3(u32, u32, u32);

// FUN_000e11e4
void W_0e11e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_e1204;
    r0 = Fn_630e20_0();
    fa = r0; fb = 0u;
    if (fa != fb) goto L_e120c;
    L_e1204:;
    r0 = 4u;
    *(u32*)(r4 + 68) = r0;
    L_e120c:;
    return;
}

// FUN_00283328
void W_283328(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_28335c;
    r0 = *(u32*)(r4 + 1172);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_28335c;
    { Fn_26e81c_0(); return; }
    L_28335c:;
    return;
}

// FUN_00285010
void W_285010(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_285044;
    r0 = *(u32*)(r4 + 1168);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_285044;
    { Fn_26f0cc_0(); return; }
    L_285044:;
    return;
}

// FUN_00289e60
void W_289e60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_289e94;
    r0 = *(u32*)(r4 + 1168);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_289e94;
    { Fn_2725e0_0(); return; }
    L_289e94:;
    return;
}

// FUN_0028ce3c
void W_28ce3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_28ce70;
    r0 = *(u32*)(r4 + 1168);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_28ce70;
    { Fn_2725e0_0(); return; }
    L_28ce70:;
    return;
}

// FUN_00290a94
void W_290a94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_290ac8;
    r0 = *(u32*)(r4 + 1168);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_290ac8;
    { Fn_2725e0_0(); return; }
    L_290ac8:;
    return;
}

// FUN_002930d4
void W_2930d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_293108;
    r0 = *(u32*)(r4 + 1172);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_293108;
    { Fn_2725e0_0(); return; }
    L_293108:;
    return;
}

// FUN_00298b38
void W_298b38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa != fb) goto L_298b6c;
    r0 = *(u32*)(r4 + 1168);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_298b6c;
    { Fn_2725e0_0(); return; }
    L_298b6c:;
    return;
}

// FUN_003c97c0
void W_3c97c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3c97e0;
    r0 = Fn_443e18_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3c97e8;
    L_3c97e0:;
    r0 = 11u;
    *(u8*)(r4 + 104) = r0;
    L_3c97e8:;
    return;
}

// FUN_003c9a3c
void W_3c9a3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3c9a5c;
    r0 = Fn_443e18_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3c9a64;
    L_3c9a5c:;
    r0 = *(u8*)(r4 + 105);
    *(u8*)(r4 + 104) = r0;
    L_3c9a64:;
    return;
}

// FUN_003c9a68
void W_3c9a68(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3c9a88;
    r0 = Fn_62fa8c_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3c9a90;
    L_3c9a88:;
    r0 = *(u8*)(r4 + 105);
    *(u8*)(r4 + 104) = r0;
    L_3c9a90:;
    return;
}

// FUN_003ca2ec
void W_3ca2ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca30c;
    r0 = Fn_443cd8_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca314;
    L_3ca30c:;
    r0 = 5u;
    *(u8*)(r4 + 104) = r0;
    L_3ca314:;
    return;
}

// FUN_003ca4a0
void W_3ca4a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca4c0;
    r0 = Fn_443e18_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca4c8;
    L_3ca4c0:;
    r0 = 15u;
    *(u8*)(r4 + 104) = r0;
    L_3ca4c8:;
    return;
}

// FUN_003ca6bc
void W_3ca6bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca6dc;
    r0 = Fn_443e18_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca6e4;
    L_3ca6dc:;
    r0 = *(u8*)(r4 + 105);
    *(u8*)(r4 + 104) = r0;
    L_3ca6e4:;
    return;
}

// FUN_003ca6e8
void W_3ca6e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca708;
    r0 = Fn_62fa8c_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca710;
    L_3ca708:;
    r0 = *(u8*)(r4 + 105);
    *(u8*)(r4 + 104) = r0;
    L_3ca710:;
    return;
}

// FUN_00427f18
u32 W_427f18(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 212);
    r1 = *(u8*)(r1 + 452);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_427f9c_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_00430b08
void W_430b08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r2_2, r2_3, r0_1;
    r1_1 = (u32)g_008bba3c;
    *(u32*)(r0) = ((u32)g_00825024);
    *(u32*)(r1_1) = ((*(u32*)(r1_1)) - 1u);
    r0_1 = Fn_4303e0_1(r0);
    { Fn_2024b0_0(); return; }
}

// FUN_00435f0c
void W_435f0c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r2_2, r2_3, r0_1;
    r1_1 = (u32)g_008bba3c;
    *(u32*)(r0) = ((u32)g_00825424);
    *(u32*)(r1_1 + 4) = ((*(u32*)(r1_1 + 4)) - 1u);
    r0_1 = Fn_4303e0_1(r0);
    { Fn_2024b0_0(); return; }
}

// FUN_0059def0
u32 W_59def0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = r2;
    r6 = 0u;
    if (r4 == 0) goto L_59df60;
    r0 = Fn_02a218_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_59df64;
    r1 = *(u32*)(r0 + 4);
    r3 = r0 + 12u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_59df60;
    r12 = 4u;
    r0 = r3;
    r2 = 0u;
    r7 = r12 + (r5 << 2);
    L_59df30:;
    r12 = *(u32*)(r0);
    fa = r12; fb = r4;
    if (fa != fb) goto L_59df50;
    r12 = r3 + (r2 << 3);
    r12 = *(u32*)(r12 + 4);
    r8 = *(u32*)(r12);
    fa = r8; fb = r5;
    if (fa > fb) r6 = *(u32*)(r12 + r7);
    L_59df50:;
    r1 = r1 - 1u;
    r0 = r0 + 8u;
    r2 = r2 + 1u;
    if (r1 != 0) goto L_59df30;
    L_59df60:;
    r0 = r6;
    L_59df64:;
    return r0;
}
