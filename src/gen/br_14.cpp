// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_5f12e8_3(u32, u32, u32);
u32 Fn_5f0f20_1(u32);
u32 Fn_016030_1(u32);
u32 Fn_5f3900_1(u32);
extern char g_0082f204[];
u32 Fn_2024b0_1(u32);
u32 Fn_511a28_3(u32, u32, u32);
u32 Fn_5f6494_2(u32, u32);
u32 Fn_5f6e28_1(u32);
u32 Fn_5f7080_1(u32);
u32 Fn_60ac1c_1(u32);
extern char g_008aa789[];
extern char g_008bfae4[];
u32 Fn_5f8588_2(u32, u32);
u32 Fn_5f8764_2(u32, u32);
u32 Fn_5faf10_2(u32, u32);
u32 Fn_5ff2e0_2(u32, u32);
u32 Fn_5ff2e8_2(u32, u32);
extern char g_0082f7d0[];
u32 Fn_029ed4_2(u32, u32);
u32 Fn_609a8c_2(u32, u32);
extern char g_007e4155[];
extern char g_0082f87c[];
u32 Fn_5114ac_3(u32, u32, u32);
extern char g_007e391a[];
u32 Fn_60de0c_1(u32);
extern char g_008aabf8[];
u32 Fn_0152e0_3(u32, u32, u32);
u32 Fn_597dec_2(u32, u32);
u32 Fn_597f0c_1(u32);
u32 Fn_56e744_1(u32);
u32 Fn_56e7b4_1(u32);
u32 Fn_622434_1(u32);
u32 Fn_6370cc_1(u32);
u32 Fn_54f908_1(u32);
u32 Fn_550694_0();
u32 Fn_5511ec_1(u32);
u32 Fn_551b34_1(u32);
u32 Fn_5542e0_1(u32);
u32 Fn_61e324_2(u32, u32);
u32 Fn_61ecac_1(u32);
u32 Fn_6223bc_2(u32, u32);
u32 Fn_6422c4_2(u32, u32);
u32 Fn_625988_1(u32);
u32 Fn_0fca4c_2(u32, u32);
u32 Fn_62535c_1(u32);
u32 Fn_625400_1(u32);
u32 Fn_626aa8_2(u32, u32);
extern char g_008c7c10[];
u32 Fn_626c0c_2(u32, u32);
extern char g_0089aa6c[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_207c84_1(u32);
u32 Fn_6423ac_1(u32);

// FUN_005f0570
void W_5f0570(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 4u;
    if (fa >= fb) goto L_5f0584;
    r3 = 383112u;
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + r3) = r2;
    L_5f0584:;
    return;
}

// FUN_005f0e68
u32 W_5f0e68(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    fa = r1; fb = 44u;
    r0 = 1u;
    if (fa >= fb) goto L_5f0ea0;
    r4 = r2 + (r1 << 2);
    r1 = *(u32*)(r4 + 12);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5f0ea0;
    r0 = r2;
    r0 = Fn_5f12e8_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r4 + 12) = r1;
    L_5f0ea0:;
    return r0;
}

// FUN_005f0ea4
u32 W_5f0ea4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r0;
    fa = r1; fb = 44u;
    r0 = 0u;
    if (fa >= fb) goto L_5f0ec8;
    r1 = r3 + (r1 << 2);
    r1 = *(u32*)(r1 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) *(u8*)(r1 + 32) = r2;
    L_5f0ec8:;
    return r0;
}

// FUN_005f2238
u32 W_5f2238(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r0 = ~0u;
    if (fa == fb) goto L_5f2264;
    r2 = *(u8*)(r1);
    r0 = 0u;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_5f2264;
    L_5f2254:;
    r0 = r0 + 1u;
    r2 = *(u8*)(r1 + r0);
    fa = r2; fb = 0u;
    if (fa != fb) goto L_5f2254;
    L_5f2264:;
    return r0;
}

// FUN_005f250c
u32 W_5f250c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_5f0f20_1(r0);
    fa = r0; fb = 11u;
    if (fa >= fb) r1 = 0u;
    if (fa >= fb) r0 = 4u;
    if (fa < fb) r0 = 0u;
    if (fa >= fb) *(u16*)(r4 + 8) = r1;
    return r0;
}

// FUN_005f2530
u32 W_5f2530(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_5f0f20_1(r0);
    fa = r0; fb = 11u;
    if (fa >= fb) r1 = 0u;
    if (fa >= fb) r0 = 11u;
    if (fa < fb) r0 = 0u;
    if (fa >= fb) *(u16*)(r4 + 22) = r1;
    return r0;
}

// FUN_005f481c
u32 W_5f481c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = 0u;
    r4 = r0 + 68u;
    r6 = r5;
    L_5f482c:;
    r0 = *(u32*)(r4 + 256);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5f4840;
    r0 = Fn_016030_1(r0);
    *(u32*)(r4 + 256) = r6;
    L_5f4840:;
    r5 = r5 + 1u;
    fa = r5; fb = 32u;
    r4 = r4 + 276u;
    if ((int)fa < (int)fb) goto L_5f482c;
    r0 = Fn_5f3900_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_005f508c
u32 W_5f508c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r0 + 8);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    return r0;
}

// FUN_005f681c
void W_5f681c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082f204;
    r1 = *(u32*)(r0 + 8);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5f684c;
    r0 = r1;
    r0 = Fn_511a28_3(r0, r1, r2);
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_5f684c:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005f6988
u32 W_5f6988(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r1 = *(u8*)(r0 + 4);
    r5 = 1u;
    r0 = r5;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5f69d0;
    r0 = *(u32*)(r4 + 172);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_5f6494_2(r0, r1);
    r0 = *(u32*)(r4 + 168);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_60ac1c_1(r0);
    r0 = r4;
    r0 = Fn_5f6e28_1(r0);
    r5 = r0;
    r0 = r4;
    r0 = Fn_5f7080_1(r0);
    L_5f69d0:;
    r0 = r0 | r5;
    return r0;
}

// FUN_005f969c
u32 W_5f969c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 71);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_005faf10
u32 W_5faf10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 77);
    r1 = 0u;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_5faf34;
    r2 = *(u8*)(r0 + 78);
    r1 = 1u;
    fa = r2; fb = 0u;
    if (fa != fb) r2 = 1u;
    if (fa != fb) *(u8*)(r0 + 78) = r2;
    L_5faf34:;
    r0 = r1;
    return r0;
}

// FUN_005fb6cc
u32 W_5fb6cc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aa789;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_005fbcd4
void W_5fbcd4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_5fbcf4;
    r1 = 0u;
    fa = r2; fb = 0u;
    *(u32*)(r0 + 8) = r1;
    if (fa == fb) r1 = 7u;
    if (fa == fb) *(u16*)(r0 + 4) = r1;
    L_5fbcf4:;
    return;
}

// FUN_005fcabc
u32 W_5fcabc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfae4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5fcadc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_5fcadc:;
    r0 = 1u;
    return r0;
}

// FUN_005fcb24
u32 W_5fcb24() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfae4;
    r1 = *(u32*)(r0);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5fcb40;
    r0 = r1;
    return Fn_5f8588_2(r0, r1);
    L_5fcb40:;
    return r0;
}

// FUN_005fcbf0
u32 W_5fcbf0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfae4;
    r1 = *(u32*)(r0);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5fcc0c;
    r0 = r1;
    return Fn_5f8764_2(r0, r1);
    L_5fcc0c:;
    return r0;
}

// FUN_005fcd44
u32 W_5fcd44() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfae4;
    r1 = *(u32*)(r0);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5fcd60;
    r0 = r1;
    return Fn_5faf10_2(r0, r1);
    L_5fcd60:;
    return r0;
}

// FUN_005fd298
u32 W_5fd298(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    r3 = r0 + 4u;
    r0 = 1u;
    r1 = *(u8*)(r3 + r1);
    *(u8*)(r2) = r1;
    return r0;
}

// FUN_005fd2e0
u32 W_5fd2e0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    r3 = r0 + 4u;
    r0 = 1u;
    r1 = *(u8*)(r3 + r1);
    *(u8*)(r2) = r1;
    return r0;
}

// FUN_005ffcb0
u32 W_5ffcb0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 72);
    r0 = 13u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5ffcc8;
    r0 = r1;
    return Fn_5ff2e0_2(r0, r1);
    L_5ffcc8:;
    return r0;
}

// FUN_005ffccc
u32 W_5ffccc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 72);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_5ffce4;
    r0 = r1;
    return Fn_5ff2e8_2(r0, r1);
    L_5ffce4:;
    return r0;
}

// FUN_00608658
void W_608658(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082f7d0;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u8*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_6086b0;
    r0 = *(u32*)(r4 + 12);
    r5 = 0u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_608690;
    r1 = 0u;
    r0 = Fn_029ed4_2(r0, r1);
    *(u32*)(r4 + 12) = r5;
    L_608690:;
    r0 = *(u32*)(r4 + 4);
    *(u32*)(r4 + 16) = r5;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6086ac;
    r1 = 0u;
    r0 = Fn_029ed4_2(r0, r1);
    *(u32*)(r4 + 4) = r5;
    L_6086ac:;
    *(u32*)(r4 + 8) = r5;
    L_6086b0:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00608f50
u32 W_608f50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 616);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_608f68;
    r0 = r1;
    return Fn_609a8c_2(r0, r1);
    L_608f68:;
    return r0;
}

// FUN_0060a4ac
u32 W_60a4ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_007e4155;
    r0 = r1 + (r0 << 3);
    return r0;
}

// FUN_0060ae50
void W_60ae50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082f87c;
    r1 = *(u32*)(r0 + 8);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_60ae80;
    r0 = r1;
    r0 = Fn_5114ac_3(r0, r1, r2);
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_60ae80:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0060d3f0
u32 W_60d3f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 7u;
    if (fa < fb) r1 = (u32)g_007e391a;
    if (fa < fb) r0 = *(signed char*)(r1 + r0);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_0060d52c
u32 W_60d52c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 - 1u;
    fa = r1; fb = 12u;
    if (fa >= fb) r0 = 4u;
    if (fa >= fb) goto L_60d56c;
    fa = r0; fb = 3u;
    if ((int)fa < (int)fb) goto L_60d568;
    fa = r0; fb = 6u;
    if ((int)fa < (int)fb) r0 = 0u;
    if ((int)fa < (int)fb) goto L_60d56c;
    fa = r0; fb = 9u;
    if ((int)fa < (int)fb) r0 = 1u;
    if ((int)fa < (int)fb) goto L_60d56c;
    fa = r0; fb = 12u;
    if ((int)fa < (int)fb) r0 = 2u;
    if ((int)fa < (int)fb) goto L_60d56c;
    L_60d568:;
    r0 = 3u;
    L_60d56c:;
    return r0;
}

// FUN_0060d570
u32 W_60d570(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_60de0c_1(r0);
    r1 = *(u32*)(r4 + 76);
    fa = r1; fb = r0;
    if (fa != fb) r0 = *(u32*)(r0 + 4);
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_0060d598
u32 W_60d598(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_60de0c_1(r0);
    r1 = *(u32*)(r4 + 76);
    fa = r1; fb = r0;
    if (fa != fb) r0 = r0 + 8u;
    if (fa == fb) r0 = (u32)g_008aabf8;
    return r0;
}

// FUN_0060de80
u32 W_60de80(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_60de0c_1(r0);
    r1 = *(u32*)(r4 + 76);
    fa = r1; fb = r0;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_0060e5e8
u32 W_60e5e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r2 = 0u;
    r1 = 4u;
    r0 = 16u;
    r0 = Fn_0152e0_3(r0, r1, r2);
    fa = r0; fb = 0u;
    *(u32*)(r4) = r0;
    if (fa == fb) goto L_60e620;
    r1 = 0u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    L_60e620:;
    r0 = r4;
    return r0;
}

// FUN_00610ef0
void W_610ef0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 176);
    fa = r2; fb = r1;
    if (fa > fb) *(u32*)(r0 + 180) = r1;
    return;
}

// FUN_006164a8
u32 W_6164a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 196);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_6164c4;
    r0 = *(u32*)(r0 + 304);
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) r0 = 0u;
    if ((int)fa <= (int)fb) goto L_6164c8;
    L_6164c4:;
    r0 = 1u;
    L_6164c8:;
    return r0;
}

// FUN_00617360
u32 W_617360(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u8*)(r0 + 198);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_6173b8;
    r1 = 2u;
    r0 = 0u;
    *(u8*)(r4 + 233) = r1;
    *(u32*)(r4 + 236) = r0;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0 + 76);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    r1 = r4;
    r0 = Fn_597dec_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6173b8;
    r2 = 7u;
    r1 = 1u;
    *(u8*)(r4 + 198) = r2;
    *(u8*)(r4 + 196) = r1;
    L_6173b8:;
    return r0;
}

// FUN_00617d08
u32 W_617d08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 196);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_617d24;
    r0 = Fn_597f0c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_617d28;
    L_617d24:;
    r0 = 1u;
    L_617d28:;
    return r0;
}

// FUN_0061d9a0
u32 W_61d9a0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 60);
    fa = r0; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa > fb) r0 = 2u;
    return r0;
}

// FUN_0061da24
u32 W_61da24(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_61da44;
    r3 = *(u32*)(r0 + 60);
    fa = r3; fb = r1;
    if (fa <= fb) r12 = 0u;
    if (fa > fb) r12 = 2u;
    fa = r12; fb = r2;
    if (fa >= fb) goto L_61da4c;
    L_61da44:;
    r0 = 140578772u;
    return r0;
    L_61da4c:;
    r0 = *(u32*)(r0 + 64);
    fa = r1; fb = r3;
    if (fa >= fb) r1 = 0u;
    r0 = r0 + (r1 << 4);
    r0 = r0 + (r2 << 2);
    r0 = *(u32*)(r0 - 4);
    return r0;
}

// FUN_0061dc9c
u32 W_61dc9c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 48);
    r0 = *(u32*)(r0 + 52);
    fa = r3; fb = r1;
    if (fa <= fb) r1 = 1u;
    r1 = r1 + (r1 << 1);
    r0 = r0 + (r1 << 2);
    r1 = *(u32*)(r0 + 4);
    fa = r1; fb = r2;
    if (fa > fb) r0 = *(u32*)(r0);
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = r0 + (r2 << 1);
    if (fa > fb) r0 = *(u16*)(r0);
    return r0;
}

// FUN_0061dcf4
u32 W_61dcf4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 48);
    r0 = *(u32*)(r0 + 52);
    fa = r2; fb = r1;
    if (fa <= fb) r1 = 1u;
    r2 = 4u;
    r1 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0 + r1);
    return r0;
}

// FUN_0061dd34
u32 W_61dd34(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 48);
    r0 = *(u32*)(r0 + 52);
    fa = r2; fb = r1;
    if (fa <= fb) r1 = 1u;
    r2 = 4u;
    r1 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0 + r1);
    return r0;
}

// FUN_0061efe0
u32 W_61efe0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_61f00c;
    r2 = *(u32*)(r1);
    *(u32*)(r0) = r2;
    r2 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 4) = r2;
    r2 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 8) = r2;
    r1 = *(u32*)(r1 + 12);
    *(u32*)(r0 + 12) = r1;
    r0 = 1u;
    L_61f00c:;
    return r0;
}

// FUN_0061f2d4
u32 W_61f2d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e744_1(r0);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_61f30c;
    r0 = Fn_6370cc_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_61f30c;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e7b4_1(r0);
    r0 = 1u;
    return r0;
    L_61f30c:;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e7b4_1(r0);
    r0 = 0u;
    return r0;
}

// FUN_0061f328
u32 W_61f328(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e744_1(r0);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_61f354;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e7b4_1(r0);
    r0 = 1u;
    return r0;
    L_61f354:;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e7b4_1(r0);
    r0 = 0u;
    return r0;
}

// FUN_0061f514
u32 W_61f514(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e744_1(r0);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_61f548;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 20);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 1u;
    if (fa != fb) goto L_61f54c;
    L_61f548:;
    r4 = 0u;
    L_61f54c:;
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e7b4_1(r0);
    r0 = r4;
    return r0;
}

// FUN_0061fb2c
u32 W_61fb2c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_550694_0();
    r4 = r0 - 16u;
    r0 = r0 - 4u;
    r0 = Fn_5511ec_1(r0);
    r0 = r4 + 8u;
    r0 = Fn_551b34_1(r0);
    r0 = r4 + 4u;
    r0 = Fn_5542e0_1(r0);
    r0 = r4;
    r0 = Fn_54f908_1(r0);
    r0 = r4;
    return r0;
}

// FUN_006233d8
u32 W_6233d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r8 = r0;
    r7 = r1;
    r0 = Fn_61e324_2(r0, r1);
    r6 = r0;
    r4 = 0u;
    L_6233f0:;
    r0 = r4 + (r4 << 1);
    r0 = r6 + (r0 << 5);
    r5 = r0;
    r0 = Fn_61ecac_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_623424;
    r0 = *(u16*)(r5 + 90);
    fa = r0; fb = r7;
    if (fa != fb) goto L_623424;
    r1 = *(u32*)(r8 + 44);
    r0 = r5;
    r0 = Fn_6223bc_2(r0, r1);
    L_623424:;
    r4 = r4 + 1u;
    fa = r4; fb = 120u;
    if ((int)fa < (int)fb) goto L_6233f0;
    r0 = 1u;
    return r0;
}

// FUN_00624258
u32 W_624258(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ((u32(*)())r1)();
    r0 = 1u;
    return r0;
}

// FUN_00624d68
u32 W_624d68(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_624d84;
    r2 = 1u;
    *(u32*)(r0 + 4) = r1;
    *(u8*)(r0) = r2;
    r0 = r2;
    L_624d84:;
    return r0;
}

// FUN_00624e80
u32 W_624e80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 8u;
    if (fa < fb) r0 = r0 + r1;
    if (fa < fb) r0 = *(signed char*)(r0 + 244);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_00624e94
u32 W_624e94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 108);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_624eb0;
    r0 = Fn_6422c4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_624eb4;
    L_624eb0:;
    r0 = 1u;
    L_624eb4:;
    return r0;
}

// FUN_00624f9c
u32 W_624f9c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 160);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_624fb8;
    r0 = Fn_625988_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_624fbc;
    L_624fb8:;
    r0 = 1u;
    L_624fbc:;
    return r0;
}

// FUN_00624fc0
void W_624fc0(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    if (fa >= fb) goto L_624fe8;
    r12 = *(u32*)(r2);
    fa = r12; fb = 16u;
    if ((int)fa > (int)fb) goto L_624fe8;
    r0 = r0 + (r1 << 3);
    r1 = *(u32*)(r0 + 28);
    *(u32*)(r2) = r1;
    r0 = *(u8*)(r0 + 32);
    goto L_624ff0;
    L_624fe8:;
    r0 = ~0u;
    *(u32*)(r2) = r0;
    L_624ff0:;
    *(u8*)(r3) = r0;
    return;
}

// FUN_006250b4
u32 W_6250b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_006250e0
u32 W_6250e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6250f8;
    r0 = *(u8*)(r0 + 360);
    fa = r0; fb = 1u;
    if (fa == fb) goto L_6250fc;
    L_6250f8:;
    r0 = 0u;
    L_6250fc:;
    return r0;
}

// FUN_00625194
u32 W_625194(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 256u;
    if (fa != fb) r0 = *(signed char*)(r0 + 201);
    return r0;
}

// FUN_006252b0
u32 W_6252b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6252cc;
    r0 = *(u8*)(r0 + 360);
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_6252d0;
    L_6252cc:;
    r0 = 0u;
    L_6252d0:;
    return r0;
}

// FUN_00625428
u32 W_625428(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_625444;
    r0 = *(u8*)(r0 + 465);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_625448;
    L_625444:;
    r0 = 0u;
    L_625448:;
    return r0;
}

// FUN_00625500
u32 W_625500(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u16*)(r0 + 52);
    r0 = r0 & 16u;
    r0 = r0 >> 4;
    return r0;
}

// FUN_006259e0
u32 W_6259e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 108);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_6259f8;
    r1 = 1u;
    return Fn_0fca4c_2(r0, r1);
    L_6259f8:;
    return r0;
}

// FUN_006259fc
u32 W_6259fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 108);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_625a10;
    return Fn_62535c_1(r0);
    L_625a10:;
    return r0;
}

// FUN_00625a14
u32 W_625a14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 108);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_625a28;
    return Fn_625400_1(r0);
    L_625a28:;
    return r0;
}

// FUN_00625acc
u32 W_625acc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 72);
    return r0;
}

// FUN_00625cdc
u32 W_625cdc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 3476);
    fa = r0; fb = 7u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00625f14
u32 W_625f14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 3476);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00625f40
u32 W_625f40(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 3476);
    fa = r0; fb = 7u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00626038
u32 W_626038(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 1024u;
    r0 = *(short*)(r0 + 218);
    return r0;
}

// FUN_00626064
u32 W_626064(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 1228);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062609c
u32 W_62609c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 684);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_006265ac
u32 W_6265ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 88);
    fa = r0; fb = 4u;
    if (fa < fb) r0 = 0u;
    if (fa >= fb) r0 = 1u;
    return r0;
}

// FUN_006265c0
u32 W_6265c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 88);
    fa = r0; fb = 4u;
    if (fa != fb) r0 = 0u;
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_006266fc
u32 W_6266fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 1u;
    if ((int)fa >= (int)fb) r0 = 1u;
    if ((int)fa < (int)fb) r0 = 0u;
    return r0;
}

// FUN_006268b0
u32 W_6268b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 160);
    fa = r0; fb = 7u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062693c
u32 W_62693c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 1716);
    fa = r1; fb = 2u;
    if (fa != fb) r0 = ~0u;
    if (fa != fb) goto L_626954;
    r0 = r0 + 504u;
    return Fn_626aa8_2(r0, r1);
    L_626954:;
    return r0;
}

// FUN_00626b50
u32 W_626b50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(short*)(r0 + 112);
    return r0;
}

// FUN_00626ba8
u32 W_626ba8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 20u;
    if (fa < fb) r0 = r0 + r1;
    if (fa < fb) r0 = *(signed char*)(r0 + 132);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_00626bbc
u32 W_626bbc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 + (r1 << 2);
    r1 = r2 + (r1 << 3);
    r0 = r0 + (r1 << 3);
    r0 = r0 + 160u;
    return r0;
}

// FUN_00626bd0
u32 W_626bd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if ((int)fa < (int)fb) goto L_626c00;
    r0 = Fn_626c0c_2(r0, r1);
    fa = r0; fb = 128u;
    if (fa >= fb) goto L_626c00;
    r1 = r0 + (r0 << 2);
    r0 = r1 + (r0 << 3);
    r0 = r4 + (r0 << 3);
    r0 = r0 + 160u;
    return r0;
    L_626c00:;
    r0 = (u32)g_008c7c10;
    return r0;
}

// FUN_00626ef8
u32 W_626ef8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_0089aa6c;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_626f28;
    r2 = 16u;
    r1 = 0u;
    r0 = 132u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_207c84_1(r0);
    *(u32*)(r4) = r0;
    L_626f28:;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(signed char*)(r0 + 130);
    return r0;
}

// FUN_00626f6c
u32 W_626f6c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 1u;
    if ((int)fa < (int)fb) goto L_626f84;
    fa = r0; fb = 4u;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa <= (int)fb) goto L_626f88;
    L_626f84:;
    r0 = 0u;
    L_626f88:;
    return r0;
}

// FUN_00626f8c
u32 W_626f8c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 5u;
    if ((int)fa < (int)fb) goto L_626fa4;
    fa = r0; fb = 8u;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa <= (int)fb) goto L_626fa8;
    L_626fa4:;
    r0 = 0u;
    L_626fa8:;
    return r0;
}

// FUN_00626fac
u32 W_626fac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_626fb8:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 40);
    r0 = Fn_6423ac_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_626fe0;
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    if ((int)fa < (int)fb) goto L_626fb8;
    r0 = 1u;
    L_626fe0:;
    return r0;
}

// FUN_00627068
u32 W_627068(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 6u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062707c
u32 W_62707c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 7u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00627090
u32 W_627090(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 5u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00627114
u32 W_627114(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_627120:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 56);
    r0 = Fn_6423ac_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_627148;
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    if ((int)fa < (int)fb) goto L_627120;
    r0 = 1u;
    L_627148:;
    return r0;
}

// FUN_0062719c
u32 W_62719c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 112);
    r1 = 0u;
    fa = r2; fb = 0u;
    if ((int)fa <= (int)fb) goto L_6271d8;
    L_6271ac:;
    r3 = r1 + (r1 << 3);
    r3 = r3 + (r1 << 4);
    r3 = r0 + (r3 << 3);
    r3 = *(u8*)(r3 + 265);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_6271cc;
    r0 = 1u;
    return r0;
    L_6271cc:;
    r1 = r1 + 1u;
    fa = r2; fb = r1;
    if ((int)fa > (int)fb) goto L_6271ac;
    L_6271d8:;
    r0 = 0u;
    return r0;
}

// FUN_006271e0
u32 W_6271e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 43);
    return r0;
}

// FUN_006271e8
u32 W_6271e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 40);
    return r0;
}

// FUN_006271f0
u32 W_6271f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 43);
    return r0;
}

// FUN_006271f8
u32 W_6271f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 40);
    return r0;
}

// FUN_00627200
u32 W_627200(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    L_627204:;
    r2 = r1 + (r1 << 2);
    r2 = r2 + (r1 << 3);
    r2 = r0 + (r2 << 2);
    r2 = *(u8*)(r2 + 113);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_627224;
    r0 = 1u;
    return r0;
    L_627224:;
    r1 = r1 + 1u;
    fa = r1; fb = 5u;
    if ((int)fa < (int)fb) goto L_627204;
    r0 = 0u;
    return r0;
}

// FUN_006273f8
u32 W_6273f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 51);
    return r0;
}

// FUN_00627400
u32 W_627400(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 48);
    return r0;
}

// FUN_00627408
u32 W_627408(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 59);
    return r0;
}

// FUN_00627410
u32 W_627410(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 56);
    return r0;
}

// FUN_00627578
u32 W_627578() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_00627580
u32 W_627580() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_00627588
u32 W_627588() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_00627600
u32 W_627600(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 114);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}
