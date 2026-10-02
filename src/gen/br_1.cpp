// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_0e3540_2(u32, u32);
u32 Fn_12d038_2(u32, u32);
u32 Fn_12d1b4_2(u32, u32);
u32 Fn_12d4b4_1(u32);
u32 Fn_12d4b4_2(u32, u32);
u32 Fn_343208_1(u32);
extern char g_008bfa54[];
u32 Fn_130e94_1(u32);
u32 Fn_3432e4_1(u32);
u32 Fn_35771c_1(u32);
u32 Fn_4b0d74_2(u32, u32);
u32 Fn_6295d4_1(u32);
u32 Fn_0f2d50_1(u32);
u32 Fn_0f3134_1(u32);
extern char g_008bfa64[];
u32 Fn_5c0d4c_3(u32, u32, u32);
u32 Fn_4da388_2(u32, u32);
u32 Fn_4d7fcc_1(u32);
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_4b8ba8_1(u32);
u32 Fn_630cf4_2(u32, u32);
u32 Fn_4b8970_2(u32, u32);
u32 Fn_0fdf0c_1(u32);
u32 Fn_0fff68_1(u32);
u32 Fn_0ffb1c_2(u32, u32);
u32 Fn_10016c_3(u32, u32, u32);
u32 Fn_44b930_1(u32);
u32 Fn_4137a8_1(u32);
extern char g_008bfa40[];
u32 Fn_18b150_1(u32);
u32 Fn_1d22bc_0();
u32 Fn_207f08_1(u32);
u32 Fn_2556cc_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
extern char g_008a8348[];
u32 Fn_5ebc5c_4(u32, u32, u32, u32);
extern char g_00892a08[];
u32 Fn_00d980_2(u32, u32);
u32 Fn_598f14_1(u32);
extern char g_008a5c30[];
u32 Fn_029ed4_2(u32, u32);
u32 Fn_12428c_1(u32);
u32 Fn_12452c_1(u32);
extern char g_008bfa78[];
u32 Fn_12e17c_2(u32, u32);
u32 Fn_016030_1(u32);
u32 Fn_1279d8_1(u32);
u32 Fn_12d818_3(u32, u32, u32);
u32 Fn_625270_1(u32);
u32 Fn_1304fc_1(u32);
u32 Fn_13070c_1(u32);
u32 Fn_130fac_1(u32);
u32 Fn_131488_1(u32);
u32 Fn_32a120_0();
u32 Fn_1fe040_0();
u32 Fn_1909d8_1(u32);
u32 Fn_1b5a18_1(u32);
u32 Fn_1f1dbc_1(u32);
u32 Fn_257470_1(u32);
u32 Fn_06c990_3(u32, u32, u32);
u32 Fn_59935c_3(u32, u32, u32);
u32 Fn_5992a0_2(u32, u32);
u32 Fn_1373ec_2(u32, u32);
u32 Fn_6261e4_0();
extern char g_008927d4[];
u32 Fn_06cb78_2(u32, u32);
u32 Fn_5a8470_2(u32, u32);

// FUN_000e46bc
void W_0e46bc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r3 = 1u;
    if (fa == fb) *(u8*)(r0 + 122) = r3;
    if (fa == fb) goto L_e46e0;
    fa = r1; fb = 3u;
    if (fa != fb) goto L_e46e0;
    *(u8*)(r0 + 120) = r3;
    *(u16*)(r0 + 124) = r2;
    *(u8*)(r0 + 121) = r3;
    L_e46e0:;
    return;
}

// FUN_000e4a70
u32 W_0e4a70(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 2u;
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_000e4c14
u32 W_0e4c14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 2u;
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_000e4d84
u32 W_0e4d84(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 2u;
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_000e508c
u32 W_0e508c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u8*)(r0 + 168) = r1;
    r0 = *(u32*)(r0 + 84);
    r0 = Fn_0e3540_2(r0, r1);
    r0 = 1u;
    return r0;
}

// FUN_000e83ac
u32 W_0e83ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 20);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_e83d0;
    r1 = *(u16*)(r0 + 50);
    fa = r1; fb = 6u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u8*)(r0 + 60) = r1;
    r0 = *(signed char*)(r0 + 60);
    L_e83d0:;
    return r0;
}

// FUN_000e8410
u32 W_0e8410(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(signed char*)(r0 + 101);
    return r0;
}

// FUN_000e870c
u32 W_0e870c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(signed char*)(r0 + 56);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_000e8abc
u32 W_0e8abc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(signed char*)(r0 + 122);
    return r0;
}

// FUN_000e8c74
u32 W_0e8c74(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 512u;
    if (fa != fb) r0 = *(short*)(r0 + 180);
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_000e8c8c
void W_0e8c8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 512u;
    if (fa != fb) *(u16*)(r0 + 180) = r1;
    return;
}

// FUN_000e90c8
void W_0e90c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    fa = r1; fb = 0u;
    r0 = 0u;
    if (fa == fb) goto L_e90fc;
    r0 = Fn_12d4b4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_e9124;
    r1 = 1u;
    r0 = 0u;
    r0 = Fn_12d038_2(r0, r1);
    r0 = 1u;
    goto L_e9120;
    L_e90fc:;
    r0 = Fn_12d4b4_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_e9124;
    r1 = 1u;
    r0 = 0u;
    r0 = Fn_12d1b4_2(r0, r1);
    r0 = 0u;
    L_e9120:;
    *(u8*)(r4 + 26) = r0;
    L_e9124:;
    return;
}

// FUN_000e9484
u32 W_0e9484(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(signed char*)(r0 + 25);
    fa = r4; fb = 0u;
    if (fa != fb) r0 = Fn_343208_1(r0);
    r0 = r4;
    return r0;
}

// FUN_000ef664
void W_0ef664(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_3432e4_1(r0);
    r0 = *(u32*)(r4 + 124);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_130e94_1(r0);
    r0 = *(u32*)(r4 + 128);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) r0 = Fn_4b0d74_2(r0, r1);
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 140);
    r0 = Fn_35771c_1(r0);
    r0 = 2u;
    *(u8*)(r4 + 158) = r0;
    return;
}

// FUN_000f17c0
u32 W_0f17c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_f17d4;
    return Fn_6295d4_1(r0);
    L_f17d4:;
    return r0;
}

// FUN_000f3110
u32 W_0f3110(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_0f3134_1(r0);
    r0 = *(u8*)(r4 + 1004);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_0f2d50_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_000f41c0
u32 W_0f41c0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa64;
    r0 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 160);
    fa = r1; fb = 51u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_f41e4;
    r2 = 1u;
    r0 = 16384u;
    return Fn_5c0d4c_3(r0, r1, r2);
    L_f41e4:;
    return r0;
}

// FUN_000f4b40
u32 W_0f4b40(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_130e94_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_000f4dfc
u32 W_0f4dfc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 106);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_f4e1c;
    r0 = *(u32*)(r0 + 36);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_f4e1c;
    return Fn_4da388_2(r0, r1);
    L_f4e1c:;
    return r0;
}

// FUN_000f4e64
void W_0f4e64(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 120) = r1;
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 121) = r1;
    return;
}

// FUN_000f4efc
u32 W_0f4efc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 36);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_f4f18;
    r0 = Fn_4d7fcc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    L_f4f18:;
    return r0;
}

// FUN_000f5024
u32 W_0f5024(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 89);
    fa = r2; fb = r1;
    if (fa == fb) goto L_f5040;
    r0 = *(u8*)(r0 + 88);
    fa = r0; fb = r1;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_f5044;
    L_f5040:;
    r0 = 0u;
    L_f5044:;
    return r0;
}

// FUN_000f7408
u32 W_0f7408(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_f741c;
    return Fn_6295d4_1(r0);
    L_f741c:;
    return r0;
}

// FUN_000f810c
void W_0f810c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 152);
    r1 = 21600u;
    r0 = Fn_1fddd8_2(r0, r1);
    r5 = 0u;
    *(u16*)(r4 + 156) = r5;
    r0 = *(u32*)(r4 + 160);
    r1 = 1536u;
    r0 = Fn_1fddd8_2(r0, r1);
    *(u16*)(r4 + 164) = r5;
    return;
}

// FUN_000f9e94
u32 W_0f9e94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 68);
    fa = r0; fb = 2u;
    if (fa >= fb) r0 = 1u;
    if (fa < fb) r0 = 0u;
    return r0;
}

// FUN_000fa7ec
void W_0fa7ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 220);
    r1 = *(u16*)(r1 + 144);
    fa = r1; fb = 6u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) *(u8*)(r0 + 68) = r1;
    return;
}

// FUN_000fb100
void W_0fb100(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 90);
    r1 = r1 + 1u;
    fa = r1; fb = 256u;
    if (fa < fb) *(u8*)(r0 + 90) = r1;
    return;
}

// FUN_000fca10
void W_0fca10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0 + 453) = r1;
    return;
}

// FUN_000fca38
void W_0fca38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u8*)(r0 + 473) = r1;
    return;
}

// FUN_000fca4c
u32 W_0fca4c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0 + 72);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_fca78;
    r0 = *(u32*)(r4 + 368);
    r5 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_fca78;
    r1 = *(u8*)(r4 + 40);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_fca80;
    L_fca78:;
    r0 = 0u;
    L_fca7c:;
    return r0;
    L_fca80:;
    r0 = Fn_630cf4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_fcaa8;
    r0 = *(u8*)(r4 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_fca7c;
    goto L_fca78;
    L_fcaa8:;
    fa = r5; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 368);
    if (fa != fb) r0 = Fn_4b8ba8_1(r0);
    goto L_fca78;
}

// FUN_000fcb14
void W_0fcb14(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0 + 460) = r1;
    return;
}

// FUN_000fcb24
void W_0fcb24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 473) = r1;
    return;
}

// FUN_000fccf0
void W_0fccf0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0 + 452) = r1;
    return;
}

// FUN_000fceb0
void W_0fceb0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0 + 454) = r1;
    return;
}

// FUN_000fcf3c
void W_0fcf3c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0 + 471) = r1;
    return;
}

// FUN_000fd1e0
u32 W_0fd1e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1 + 4);
    fa = r1; fb = 29u;
    if (fa != fb) goto L_fd244;
    r1 = (u32)g_008bfa54;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 92);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_fd244;
    r1 = *(u8*)(r1 + 136);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_fd244;
    r5 = *(u32*)(r0 + 72);
    fa = r5; fb = 0u;
    if (fa == fb) goto L_fd244;
    r0 = *(u32*)(r5 + 368);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa == fb) goto L_fd244;
    L_fd22c:;
    r0 = *(u32*)(r5 + 368);
    r1 = r4 & 255u;
    r0 = Fn_4b8970_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 8u;
    if ((int)fa < (int)fb) goto L_fd22c;
    L_fd244:;
    r0 = 1u;
    return r0;
}

// FUN_000fd288
void W_0fd288(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0 + 456) = r1;
    return;
}

// FUN_000fe794
u32 W_0fe794(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_0fdf0c_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_000ff000
u32 W_0ff000(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 76);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_000ff010
u32 W_0ff010(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 80);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_000ff7dc
u32 W_0ff7dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_0fff68_1(r0);
    r0 = ~0u;
    *(u32*)(r4 + 32) = r0;
    return r0;
}

// FUN_000ffab4
void W_0ffab4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = r0;
    r0 = Fn_0ffb1c_2(r0, r1);
    r6 = r0;
    r0 = r5;
    r0 = Fn_44b930_1(r0);
    r1 = r0;
    r2 = r4;
    r0 = r6;
    { Fn_10016c_3(r0, r1, r2); return; }
}

// FUN_00100648
u32 W_100648(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = *(u8*)(r0 + 19);
    fa = r12; fb = 0u;
    if (fa != fb) goto L_10065c;
    fa = r1; fb = 41u;
    if (fa < fb) goto L_100664;
    L_10065c:;
    r0 = 0u;
    return r0;
    L_100664:;
    *(u8*)(r0 + 12) = r1;
    *(u16*)(r0 + 14) = r2;
    *(u16*)(r0 + 16) = r3;
    r0 = 1u;
    return r0;
}

// FUN_00100cbc
u32 W_100cbc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 38u;
    fa = r0; fb = 2u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_00100cd0
u32 W_100cd0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 2u;
    fa = r0; fb = 17u;
    if (fa <= fb) r0 = 0u;
    if (fa > fb) r0 = 1u;
    return r0;
}

// FUN_00100f44
u32 W_100f44(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_100f60;
    r0 = r0 - 3u;
    fa = r0; fb = 3u;
    if (fa <= fb) r0 = 2u;
    if (fa > fb) r0 = 0u;
    L_100f60:;
    return r0;
}

// FUN_0010666c
void W_10666c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 20u;
    if (fa == fb) goto L_106684;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 40u;
    if (fa != fb) goto L_106688;
    L_106684:;
    *(u32*)(r0 + 72) = r1;
    L_106688:;
    return;
}

// FUN_00106e14
u32 W_106e14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_4137a8_1(r0);
    r0 = *(u32*)(r4 + 696);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_106e58;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r4 + 696);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_106e58;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 696) = r0;
    L_106e58:;
    r0 = 1u;
    return r0;
}

// FUN_0010ef24
void W_10ef24(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) goto L_10ef54;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 6u;
    if (fa == fb) goto L_10ef54;
    fa = r1; fb = 2u;
    if (fa != fb) goto L_10ef50;
    r1 = 0u;
    *(u8*)(r0 + 79) = r1;
    *(u8*)(r0 + 80) = r2;
    L_10ef50:;
    return;
    L_10ef54:;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0010f6bc
u32 W_10f6bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1d22bc_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_18b150_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_207f08_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_2556cc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_00114788
u32 W_114788(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 2);
    r2 = r2 + (r2 << 2);
    r1 = r0 + (r1 << 5);
    r0 = r0 + (r2 << 5);
    r2 = *(u32*)(r1 + 292);
    r3 = *(u32*)(r0 + 292);
    r4 = 0u;
    fa = r2; fb = r3;
    if (fa != fb) goto L_1147c4;
    r1 = *(u32*)(r1 + 296);
    r0 = *(u32*)(r0 + 296);
    fa = r1; fb = r0;
    if (fa != fb) goto L_1147ec;
    goto L_1147e8;
    L_1147c4:;
    r0 = *(u32*)(r0 + 300);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1147e8;
    r0 = (u32)g_008a8348;
    r1 = 2u;
    r0 = Fn_5ebc5c_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 1u;
    goto L_1147ec;
    L_1147e8:;
    r4 = 2u;
    L_1147ec:;
    r0 = r4;
    return r0;
}

// FUN_0011d448
void W_11d448() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    r0 = 266534912u;
    r0 = Fn_00d980_2(r0, r1);
    r6 = (u32)g_00892a08;
    r7 = 1014u;
    r4 = 0u;
    L_11d464:;
    r5 = r6 + (r4 << 4);
    r0 = *(u32*)(r5 + 8);
    r0 = Fn_598f14_1(r0);
    r0 = *(u32*)(r0 + 4);
    r4 = r4 + 1u;
    fa = r4; fb = r7;
    *(u32*)(r5 + 12) = r0;
    if (fa < fb) goto L_11d464;
    return;
}

// FUN_0011d918
void W_11d918(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 68);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) *(u8*)(r0 + 68) = r1;
    return;
}

// FUN_0011dd5c
u32 W_11dd5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008a5c30;
    r0 = (r0 << 3) - r0;
    r0 = r1 + (r0 << 2);
    return r0;
}

// FUN_001219e8
void W_1219e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r6 = r0;
    r7 = r4;
    L_1219f8:;
    r5 = r6 + (r4 << 4);
    r0 = *(u32*)(r5 + 432);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_121a14;
    r1 = 1u;
    r0 = Fn_029ed4_2(r0, r1);
    *(u32*)(r5 + 432) = r7;
    L_121a14:;
    r4 = r4 + 1u;
    fa = r4; fb = 3u;
    *(u32*)(r5 + 440) = r7;
    if ((int)fa < (int)fb) goto L_1219f8;
    return;
}

// FUN_001239f4
void W_1239f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 504);
    fa = r0; fb = 0u;
    if (fa != fb) *(u32*)(r0 + 40) = r1;
    return;
}

// FUN_00124da8
u32 W_124da8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 504);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_124dd8;
    r0 = Fn_12428c_1(r0);
    r4 = r4 + 256u;
    r4 = r4 + 229u;
    r1 = *(signed char*)(r4);
    r0 = r0 | r1;
    if (r0 != 0) r0 = 1u;
    *(u8*)(r4) = r0;
    L_124dd8:;
    return r0;
}

// FUN_00124ddc
u32 W_124ddc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 504);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_124e0c;
    r0 = Fn_12452c_1(r0);
    r4 = r4 + 256u;
    r4 = r4 + 229u;
    r1 = *(signed char*)(r4);
    r0 = r0 | r1;
    if (r0 != 0) r0 = 1u;
    *(u8*)(r4) = r0;
    L_124e0c:;
    return r0;
}

// FUN_0012555c
void W_12555c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 6u;
    r2 = 1u;
    if (fa == fb) *(u8*)(r0 + 144) = r2;
    if (fa == fb) goto L_125574;
    fa = r1; fb = 7u;
    if (fa == fb) *(u8*)(r0 + 145) = r2;
    L_125574:;
    return;
}

// FUN_00126598
void W_126598(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 140);
    fa = r1; fb = 3u;
    if (fa >= fb) r1 = 4u;
    if (fa >= fb) *(u8*)(r0 + 140) = r1;
    return;
}

// FUN_00126698
u32 W_126698(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 140);
    fa = r0; fb = 3u;
    if (fa >= fb) r0 = 1u;
    if (fa < fb) r0 = 0u;
    return r0;
}

// FUN_0012d4f0
void W_12d4f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa78;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa != fb) *(u32*)(r1 + 116) = r0;
    return;
}

// FUN_0012df94
u32 W_12df94() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    r0 = r1;
    r0 = Fn_12e17c_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_12dfbc;
    r1 = 0u;
    r0 = r1;
    r0 = Fn_12e17c_2(r0, r1);
    r0 = r0 + 20u;
    L_12dfbc:;
    return r0;
}

// FUN_0012e0ac
void W_12e0ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa78;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa != fb) *(u8*)(r1 + 70) = r0;
    return;
}

// FUN_0012e0c4
void W_12e0c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa78;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_12e104;
    r2 = *(u32*)(r1 + 96);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 560) = r0;
    r2 = *(u32*)(r1 + 100);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 560) = r0;
    r2 = *(u32*)(r1 + 104);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 560) = r0;
    r1 = *(u32*)(r1 + 108);
    fa = r1; fb = 0u;
    if (fa != fb) *(u32*)(r1 + 560) = r0;
    L_12e104:;
    return;
}

// FUN_0012e17c
u32 W_12e17c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008bfa78;
    r2 = *(u32*)(r2);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_12e1a4;
    fa = r0; fb = 2u;
    if ((int)fa >= (int)fb) goto L_12e1a4;
    r0 = r2 + (r0 << 3);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 96);
    return r0;
    L_12e1a4:;
    r0 = 0u;
    return r0;
}

// FUN_0012e91c
u32 W_12e91c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa78;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_12e948;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_12e94c;
    r0 = *(u8*)(r0 + 576);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_12e94c;
    L_12e948:;
    r0 = 1u;
    L_12e94c:;
    return r0;
}

// FUN_0012f900
u32 W_12f900(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 + 1264u;
    r0 = *(u32*)(r0 + 1264);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r0 = r0 - 1u;
    if ((int)fa > (int)fb) *(u32*)(r1) = r0;
    r0 = 1u;
    return r0;
}

// FUN_0012f9b8
u32 W_12f9b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_12f9c4:;
    r0 = r4 + (r4 << 2);
    r0 = r5 + (r0 << 5);
    r0 = r0 + 72u;
    r0 = Fn_1279d8_1(r0);
    r4 = r4 + 1u;
    fa = r4; fb = 6u;
    if ((int)fa < (int)fb) goto L_12f9c4;
    r0 = *(u32*)(r5 + 1252);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_12f9f8;
    r0 = Fn_016030_1(r0);
    r0 = 0u;
    *(u32*)(r5 + 1252) = r0;
    L_12f9f8:;
    r0 = 1u;
    return r0;
}

// FUN_00130dc8
void W_130dc8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 120);
    *(u8*)(r0 + 220) = r1;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_130de0;
    r0 = r1;
    { Fn_12d818_3(r0, r1, r2); return; }
    L_130de0:;
    return;
}

// FUN_00130df8
u32 W_130df8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 108);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_130e0c;
    return Fn_625270_1(r0);
    L_130e0c:;
    return r0;
}

// FUN_00131678
u32 W_131678(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u8*)(r0 + 140);
    r5 = 1u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1316b4;
    fa = r0; fb = 2u;
    if (fa == fb) goto L_1316dc;
    fa = r0; fb = 3u;
    if (fa == fb) goto L_1316d4;
    r0 = r4;
    r0 = Fn_130fac_1(r0);
    r0 = r4;
    r0 = Fn_1304fc_1(r0);
    goto L_1316d4;
    L_1316b4:;
    r0 = r4;
    r0 = Fn_131488_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1316d4;
    r0 = r4;
    r0 = Fn_130fac_1(r0);
    L_1316d0:;
    *(u8*)(r4 + 140) = r5;
    L_1316d4:;
    r0 = 1u;
    return r0;
    L_1316dc:;
    r0 = r4;
    r0 = Fn_13070c_1(r0);
    goto L_1316d0;
}

// FUN_001327a8
u32 W_1327a8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_32a120_0();
    r0 = r0 >> 9;
    r0 = r0 + 1u;
    r0 = r0 << 9;
    return r0;
}

// FUN_001330c4
u32 W_1330c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(signed char*)(r0 + 138);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001330d8
u32 W_1330d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(u32*)(r0 + 148);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001330ec
u32 W_1330ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(signed char*)(r0 + 137);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00133100
u32 W_133100(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(u32*)(r0 + 140);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00133114
u32 W_133114(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00133268
u32 W_133268(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(signed char*)(r0 + 139);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00133bb8
u32 W_133bb8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_1fe040_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00133bd0
void W_133bd0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) *(u32*)(r0 + 84) = r2;
    if (fa == fb) goto L_133bec;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 11u;
    if (fa != fb) goto L_133bf0;
    L_133bec:;
    *(u32*)(r0 + 72) = r1;
    L_133bf0:;
    return;
}

// FUN_0013447c
u32 W_13447c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = r0 + 92u;
    r0 = Fn_257470_1(r0);
    r0 = Fn_1909d8_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1f1dbc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1b5a18_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_001345e0
u32 W_1345e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 0u;
    r0 = 356515845u;
    r1 = r2;
    r0 = Fn_59935c_3(r0, r1, r2);
    r6 = (u32)g_008bfa54;
    r4 = 0u;
    *(u32*)(r5 + 224) = r0;
    L_134604:;
    r1 = r4 & 255u;
    r0 = *(u32*)(r6);
    r2 = 28u;
    r0 = Fn_06c990_3(r0, r1, r2);
    r1 = r5 + (r4 << 2);
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    *(u32*)(r1 + 68) = r0;
    if ((int)fa < (int)fb) goto L_134604;
    r0 = 1u;
    return r0;
}

// FUN_00134e30
u32 W_134e30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r6 = r0;
    r7 = r4;
    L_134e40:;
    r5 = r6 + (r4 << 2);
    r0 = *(u32*)(r5 + 76);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_134e60;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r5 + 76) = r7;
    L_134e60:;
    r4 = r4 + 1u;
    fa = r4; fb = 32u;
    if ((int)fa < (int)fb) goto L_134e40;
    r1 = *(u32*)(r6 + 224);
    r0 = 356515845u;
    r0 = Fn_5992a0_2(r0, r1);
    r0 = 1u;
    return r0;
}

// FUN_0013506c
u32 W_13506c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_32a120_0();
    r0 = r0 >> 9;
    r0 = r0 + 1u;
    r0 = r0 << 9;
    return r0;
}

// FUN_00137cd0
void W_137cd0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_137cdc:;
    r1 = r4 & 255u;
    r0 = r5;
    r0 = Fn_1373ec_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 12u;
    if ((int)fa < (int)fb) goto L_137cdc;
    return;
}

// FUN_00139508
u32 W_139508(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    fa = r2; fb = 16u;
    if (fa == fb) r1 = *(u32*)(r1 + 8);
    if (fa == fb) *(u8*)(r0 + 72) = r1;
    r0 = 1u;
    return r0;
}

// FUN_0013c7cc
void W_13c7cc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + 1u;
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 3544) = r2;
    return;
}

// FUN_0013ccb4
void W_13ccb4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 3u;
    if (fa >= fb) r1 = 0u;
    *(u32*)(r0 + 3480) = r1;
    return;
}

// FUN_0013f260
void W_13f260(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    if (fa < fb) *(u32*)(r0 + 3484) = r1;
    return;
}

// FUN_00142ccc
void W_142ccc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 1228);
    fa = r1; fb = 4u;
    if (fa == fb) r1 = 3u;
    if (fa == fb) goto L_142cf0;
    fa = r1; fb = 5u;
    if (fa < fb) goto L_142cf4;
    fa = r1; fb = 11u;
    if (fa < fb) r1 = 11u;
    if (fa >= fb) goto L_142cf4;
    L_142cf0:;
    *(u32*)(r0 + 1228) = r1;
    L_142cf4:;
    return;
}

// FUN_00145f74
void W_145f74(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 684);
    fa = r1; fb = 3u;
    if (fa > fb) r1 = 8u;
    if (fa > fb) *(u32*)(r0 + 684) = r1;
    return;
}

// FUN_001480fc
u32 W_1480fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 - 2304u;
    r1 = r1 - 62u;
    if (r1 == 0) r0 = 414u;
    if (r1 == 0) goto L_148124;
    r1 = r1 - 256u;
    r1 = r1 - 249u;
    if (r1 == 0) r0 = 556u;
    if (r1 == 0) goto L_148124;
    fa = r1; fb = 20u;
    if (fa == fb) r0 = 1343u;
    L_148124:;
    return r0;
}

// FUN_00149668
void W_149668(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r2 = 0u;
    r3 = 1u;
    if (fa == fb) goto L_149694;
    fa = r1; fb = 1u;
    if (fa != fb) goto L_149690;
    *(u8*)(r0 + 76) = r3;
    r1 = 2u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    L_149690:;
    return;
    L_149694:;
    *(u8*)(r0 + 76) = r3;
    r1 = 4u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0015c2dc
u32 W_15c2dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 8u;
    if (fa != fb) r0 = 7756u;
    if (fa == fb) r0 = 6968u;
    return r0;
}

// FUN_0015c944
void W_15c944(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r2;
    r0 = Fn_6261e4_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_15c978;
    r1 = *(u8*)(r0);
    r1 = r1 + r4;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) r1 = 0u;
    if ((int)fa < (int)fb) goto L_15c974;
    fa = r1; fb = 255u;
    if ((int)fa > (int)fb) r1 = 255u;
    L_15c974:;
    *(u8*)(r0) = r1;
    L_15c978:;
    return;
}

// FUN_0015c9d0
void W_15c9d0(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r2;
    r0 = Fn_6261e4_0();
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r0) = r4;
    return;
}

// FUN_0015eaa4
void W_15eaa4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008927d4;
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) r0 = 9u;
    *(u32*)(r1) = r0;
    return;
}

// FUN_0015fdd4
u32 W_15fdd4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa54;
    fa = r0; fb = 0u;
    r4 = (u32)g_008927d4;
    r0 = *(u32*)(r1);
    if (fa != fb) r1 = 0u;
    if (fa == fb) r1 = 1u;
    r0 = Fn_06cb78_2(r0, r1);
    r1 = *(u32*)(r4);
    r0 = Fn_5a8470_2(r0, r1);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00160324
u32 W_160324(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0);
    fa = r2; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_160344;
    r2 = 1u;
    *(u32*)(r0 + 4) = r1;
    *(u8*)(r0) = r2;
    r0 = r2;
    L_160344:;
    return r0;
}
