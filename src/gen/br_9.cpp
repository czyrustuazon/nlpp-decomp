// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_4471c8_2(u32, u32);
u32 Fn_447530_1(u32);
u32 Fn_1fcd88_1(u32);
u32 Fn_449244_1(u32);
u32 Fn_60de80_2(u32, u32);
u32 Fn_60d420_2(u32, u32);
u32 Fn_60d3f0_1(u32);
u32 Fn_60d420_0();
u32 Fn_44de4c_1(u32);
extern char g_00825ae4[];
u32 Fn_2024b0_1(u32);
u32 Fn_44e018_2(u32, u32);
extern char g_008bfa54[];
u32 Fn_06cb78_2(u32, u32);
u32 Fn_5bf148_0();
u32 Fn_5bf1ec_2(u32, u32);
u32 Fn_06cb78_3(u32, u32, u32);
u32 Fn_5a8470_2(u32, u32);
extern char g_0082605c[];
u32 Fn_44e018_1(u32);
extern char g_007d953c[];
u32 Fn_25f4d8_1(u32);
u32 Fn_25fd6c_1(u32);
u32 Fn_2624cc_1(u32);
u32 Fn_262d04_0();
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_5db4a8_1(u32);
u32 Fn_6423ac_1(u32);
extern char g_008bfaac[];
u32 Fn_454fb0_1(u32);
extern char g_008bfaa8[];
u32 Fn_457bb4_1(u32);
u32 Fn_457d20_1(u32);
u32 Fn_457e8c_1(u32);
extern char g_007d9ed5[];
extern char g_007d9ebd[];
u32 Fn_47cfd0_1(u32);
u32 Fn_47d004_1(u32);
u32 Fn_47e50c_1(u32);
u32 Fn_630068_1(u32);
u32 Fn_630080_1(u32);
extern char g_008a7000[];
extern char g_008bfac0[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_048d8c_2(u32, u32);
u32 Fn_464538_1(u32);
u32 Fn_46454c_1(u32);
u32 Fn_47678c_1(u32);
u32 Fn_5bb940_1(u32);
u32 Fn_5bbb9c_2(u32, u32);
extern char g_007d9eed[];
extern char g_008a706c[];
extern char g_008d6ca4[];
extern char g_008dabe4[];
u32 Fn_45ae10_1(u32);
u32 Fn_4607c4_1(u32);
extern char g_008d6ba0[];
u32 Fn_5b13a8_2(u32, u32);
u32 Fn_461134_1(u32);
extern char g_008d6b94[];
u32 Fn_1310f8_3(u32, u32, u32);
extern char g_008d6b88[];
u32 Fn_146c2c_1(u32);
u32 Fn_458dbc_1(u32);
u32 Fn_45fa48_2(u32, u32);
u32 Fn_467a3c_1(u32);
extern char g_008d6b7c[];
u32 Fn_46795c_3(u32, u32, u32);
u32 Fn_467ce0_3(u32, u32, u32);
u32 Fn_460f1c_1(u32);
u32 Fn_5df36c_1(u32);
u32 Fn_45850c_1(u32);
u32 Fn_016030_1(u32);
u32 Fn_466fd0_1(u32);
u32 Fn_62fba0_2(u32, u32);
u32 Fn_4748c4_2(u32, u32);
u32 Fn_45ff10_2(u32, u32);
u32 Fn_479b00_3(u32, u32, u32);
u32 Fn_458b14_1(u32);
u32 Fn_458b6c_1(u32);
u32 Fn_460e24_1(u32);
u32 Fn_46faa8_1(u32);
u32 Fn_46e9bc_1(u32);
u32 Fn_475780_1(u32);
extern char g_00826ccc[];
u32 Fn_5a579c_2(u32, u32);
u32 Fn_5d6d0c_1(u32);
u32 Fn_492ccc_2(u32, u32);
u32 Fn_4982f4_1(u32);
u32 Fn_49dba0_1(u32);
u32 Fn_49dcac_1(u32);
u32 Fn_5db4b4_3(u32, u32, u32);
extern char g_0059f938[];
extern char g_00826e34[];
u32 Fn_202758_3(u32, u32, u32);
u32 Fn_485ec4_4(u32, u32, u32, u32);
u32 Fn_48636c_4(u32, u32, u32, u32);

// FUN_004471a0
u32 W_4471a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 79);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_4471b8;
    r0 = Fn_4471c8_2(r0, r1);
    goto L_4471c0;
    L_4471b8:;
    r0 = Fn_447530_1(r0);
    L_4471c0:;
    r0 = 1u;
    return r0;
}

// FUN_004494a4
void W_4494a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_449244_1(r0);
    r4 = *(u32*)(r4 + 212);
    r5 = 0u;
    r6 = r5;
    L_4494bc:;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4494d0;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r4) = r6;
    L_4494d0:;
    r5 = r5 + 1u;
    fa = r5; fb = 4u;
    r4 = r4 + 4u;
    if ((int)fa < (int)fb) goto L_4494bc;
    return;
}

// FUN_00449cb8
u32 W_449cb8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r1 + 4);
    r5 = 1u;
    fa = r0; fb = 17u;
    if (fa != fb) goto L_449cfc;
    r0 = *(u32*)(r4 + 72);
    r1 = *(u32*)(r1 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_449cfc;
    r0 = Fn_60de80_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_449cfc;
    r0 = *(u32*)(r4 + 80);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u8*)(r0 + 20) = r1;
    L_449cfc:;
    r0 = r5;
    return r0;
}

// FUN_0044a9a4
u32 W_44a9a4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(signed char*)(r0 + r1);
    return r0;
}

// FUN_0044a9b4
void W_44a9b4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = 1u;
    if (fa != fb) *(u8*)(r0 + r1) = r2;
    return;
}

// FUN_0044b81c
u32 W_44b81c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 4u;
    if (fa < fb) r0 = r0 + 2u;
    if (fa >= fb) r0 = 7u;
    return r0;
}

// FUN_0044b82c
void W_44b82c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r1;
    r0 = Fn_60d420_2(r0, r1);
    r0 = r0 - 2u;
    fa = r0; fb = 3u;
    if (fa <= fb) r0 = r0 & 255u;
    if (fa > fb) r0 = 4u;
    *(u8*)(r4) = r0;
    return;
}

// FUN_0044b884
u32 W_44b884(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 2u;
    fa = r0; fb = 3u;
    if (fa <= fb) r0 = r0 & 255u;
    if (fa > fb) r0 = 4u;
    return r0;
}

// FUN_0044b898
void W_44b898(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 4u;
    if (fa < fb) r0 = r0 + 2u;
    if (fa >= fb) r0 = 7u;
    { Fn_60d3f0_1(r0); return; }
}

// FUN_0044b930
u32 W_44b930() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_60d420_0();
    r0 = r0 - 2u;
    fa = r0; fb = 3u;
    if (fa <= fb) r0 = r0 & 255u;
    if (fa > fb) r0 = 4u;
    return r0;
}

// FUN_0044ba20
u32 W_44ba20(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0);
    r1 = r1 + 1u;
    r1 = r1 & 255u;
    fa = r1; fb = 4u;
    *(u8*)(r0) = r1;
    if (fa >= fb) r1 = 4u;
    if (fa >= fb) *(u8*)(r0) = r1;
    if (fa >= fb) r0 = 0u;
    if (fa < fb) r0 = 1u;
    return r0;
}

// FUN_0044ba48
u32 W_44ba48(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0);
    fa = r0; fb = 4u;
    if (fa < fb) r0 = r0 + 2u;
    if (fa >= fb) r0 = 7u;
    return r0;
}

// FUN_0044bb80
u32 W_44bb80(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 3u;
    r2 = *(u32*)(r0 + 104);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    r0 = Fn_44de4c_1(r0);
    r0 = 0u;
    *(u8*)(r4 + 32) = r0;
    return r0;
}

// FUN_0044bbe0
void W_44bbe0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00825ae4;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 104);
    r1 = 3u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    r0 = Fn_44de4c_1(r0);
    r1 = 0u;
    r0 = r4;
    *(u8*)(r4 + 32) = r1;
    r0 = Fn_44e018_2(r0, r1);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0044d78c
void W_44d78c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa54;
    r0 = Fn_5bf148_0();
    r0 = *(u32*)(r4);
    r1 = 0u;
    r0 = Fn_06cb78_2(r0, r1);
    r1 = 0u;
    r0 = Fn_5bf1ec_2(r0, r1);
    r0 = *(u32*)(r4);
    r1 = 1u;
    r0 = Fn_06cb78_2(r0, r1);
    r1 = 1u;
    { Fn_5bf1ec_2(r0, r1); return; }
}

// FUN_0044de1c
u32 W_44de1c(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa54;
    r4 = r2;
    r1 = r1 & 255u;
    r0 = *(u32*)(r0);
    r0 = Fn_06cb78_3(r0, r1, r2);
    r1 = r4;
    r0 = Fn_5a8470_2(r0, r1);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_0044fac0
void W_44fac0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082605c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 104);
    r1 = 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    r0 = Fn_44de4c_1(r0);
    r0 = r4;
    r0 = Fn_44e018_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_004520d0
u32 W_4520d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = *(u32*)(r0 + 104);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = r1;
    if (fa == fb) goto L_4520f4;
    L_4520e4:;
    r1 = *(u32*)(r0 + 104);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = r1;
    if (fa != fb) goto L_4520e4;
    L_4520f4:;
    return r0;
}

// FUN_00453998
void W_453998(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u16*)(r0 + 48);
    r1 = r1 | r2;
    *(u16*)(r0 + 48) = r1;
    return;
}

// FUN_004539a8
u32 W_4539a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u16*)(r0 + 48);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_004539b8
void W_4539b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u16*)(r0 + 48);
    r1 = r2 & ~r1;
    *(u16*)(r0 + 48) = r1;
    return;
}

// FUN_00454150
u32 W_454150(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_454170;
    r0 = (u32)g_007d953c;
    r0 = *(u32*)(r0);
    fa = r0; fb = r1;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_454170:;
    return r0;
}

// FUN_00458430
u32 W_458430() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_262d04_0();
    r0 = Fn_2624cc_1(r0);
    r4 = r0;
    r0 = Fn_25fd6c_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_45845c;
    r0 = r4;
    r0 = Fn_25f4d8_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_458460;
    L_45845c:;
    r0 = 1u;
    L_458460:;
    return r0;
}

// FUN_00458778
u32 W_458778(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 188);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 60);
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_004587b4
u32 W_4587b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 228);
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa > (int)fb) r0 = 0u;
    return r0;
}

// FUN_004587c8
u32 W_4587c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + r1;
    r0 = r0 + 256u;
    r0 = *(signed char*)(r0 + 42);
    return r0;
}

// FUN_004587d8
void W_4587d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 284u;
    *(u16*)(r0) = r1;
    return;
}

// FUN_004587e4
void W_4587e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 256u;
    r0 = r0 + 30u;
    *(u16*)(r0) = r1;
    return;
}

// FUN_00458958
u32 W_458958(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 256u;
    r0 = *(signed char*)(r0 + 17);
    return r0;
}

// FUN_0045896c
void W_45896c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 241);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 241) = r1;
    return;
}

// FUN_00458aac
u32 W_458aac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 60);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(signed char*)(r0 + 64);
    return r0;
}

// FUN_00458abc
u32 W_458abc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 256u;
    r0 = *(short*)(r0 + 40);
    return r0;
}

// FUN_00458d88
void W_458d88(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 292);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 292) = r1;
    return;
}

// FUN_00458d98
void W_458d98(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_458db4;
    r2 = *(u8*)(r0 + 82);
    fa = r2; fb = 0u;
    if (fa == fb) r2 = *(signed char*)(r0 + 83);
    if (fa != fb) r2 = 1u;
    *(u8*)(r0 + 83) = r2;
    L_458db4:;
    *(u8*)(r0 + 82) = r1;
    return;
}

// FUN_00459034
void W_459034(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 263);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 263) = r1;
    return;
}

// FUN_00459094
u32 W_459094(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 82);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_4590b0;
    r0 = *(u8*)(r0 + 83);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_4590b4;
    L_4590b0:;
    r0 = 0u;
    L_4590b4:;
    return r0;
}

// FUN_004590cc
void W_4590cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 261);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 261) = r1;
    return;
}

// FUN_00459100
void W_459100(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 260);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 260) = r1;
    return;
}

// FUN_0045a328
void W_45a328(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_45a334:;
    r3 = 0u;
    r0 = r5 + (r4 << 2);
    r2 = r3;
    r0 = *(u32*)(r0 + 40);
    r1 = 5u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    if ((int)fa < (int)fb) goto L_45a334;
    r0 = 16778185u;
    { Fn_5db4a8_1(r0); return; }
}

// FUN_0045ab24
u32 W_45ab24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r6 = 1u;
    r4 = 0u;
    L_45ab34:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 40);
    r0 = Fn_6423ac_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r6 = 0u;
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    if ((int)fa < (int)fb) goto L_45ab34;
    r0 = r6;
    return r0;
}

// FUN_0045fe40
void W_45fe40(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 15);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 15) = r1;
    return;
}

// FUN_00460940
u32 W_460940(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = r2 + (r2 << 1);
    r0 = *(u32*)(r0 + 8);
    r1 = r1 + (r2 << 4);
    r0 = r0 + (r1 << 3);
    return r0;
}

// FUN_00460e24
u32 W_460e24() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfaac;
    r4 = *(u32*)(r0);
    fa = r4; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_460e4c;
    r0 = r4;
    r0 = Fn_454fb0_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    L_460e4c:;
    return r0;
}

// FUN_004611f8
u32 W_4611f8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = (u32)g_008bfaac;
    r4 = *(u32*)(r5);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_461224;
    r0 = r4;
    r0 = Fn_457bb4_1(r0);
    r0 = r4;
    r0 = Fn_457e8c_1(r0);
    r0 = r4;
    r0 = Fn_457d20_1(r0);
    L_461224:;
    r0 = (u32)g_008bfaa8;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_461240;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_461240:;
    r0 = *(u32*)(r5);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_461258;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_461258:;
    r0 = 1u;
    return r0;
}

// FUN_004613a0
u32 W_4613a0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 1);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_4613bc;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + (r1 << 3);
    L_4613bc:;
    return r0;
}

// FUN_004646c8
u32 W_4646c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4646e0;
    fa = r0; fb = 24u;
    if (fa < fb) r1 = (u32)g_007d9ed5;
    if (fa < fb) r0 = *(u8*)(r1 + r0);
    if (fa < fb) goto L_4646e4;
    L_4646e0:;
    r0 = 0u;
    L_4646e4:;
    return r0;
}

// FUN_0046470c
u32 W_46470c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_464724;
    fa = r0; fb = 24u;
    if (fa < fb) r1 = (u32)g_007d9ebd;
    if (fa < fb) r0 = *(signed char*)(r1 + r0);
    if (fa < fb) goto L_464728;
    L_464724:;
    r0 = 0u;
    L_464728:;
    return r0;
}

// FUN_004657fc
void W_4657fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_47e50c_1(r0);
    r0 = r4;
    r0 = Fn_630080_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_47d004_1(r0);
    r0 = r4;
    r0 = Fn_630068_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_465838;
    r0 = r4;
    { Fn_47cfd0_1(r0); return; }
    L_465838:;
    return;
}

// FUN_00466268
u32 W_466268() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a7000;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_00468140
void W_468140(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 1u;
    r1 = ~0u;
    *(u8*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_0046a0ac
void W_46a0ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_47e50c_1(r0);
    r0 = r4;
    r0 = Fn_630080_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_47d004_1(r0);
    r0 = r4;
    r0 = Fn_630068_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_46a0e8;
    r0 = r4;
    { Fn_47cfd0_1(r0); return; }
    L_46a0e8:;
    return;
}

// FUN_0046af68
u32 W_46af68(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 628);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_46af9c;
    r0 = 519568u;
    r2 = 16u;
    r1 = 0u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_46454c_1(r0);
    *(u32*)(r4 + 628) = r0;
    r0 = Fn_464538_1(r0);
    L_46af9c:;
    r0 = (u32)g_008bfac0;
    r5 = *(u32*)(r0);
    fa = r5; fb = 0u;
    if (fa == fb) goto L_46afc8;
    r1 = r4;
    r0 = r5;
    r0 = Fn_5bbb9c_2(r0, r1);
    *(u32*)(r4 + 84) = r0;
    r0 = r5;
    r0 = Fn_5bb940_1(r0);
    *(u8*)(r4 + 88) = r0;
    L_46afc8:;
    r0 = Fn_47678c_1(r0);
    r1 = r4;
    r0 = 216u;
    r0 = Fn_048d8c_2(r0, r1);
    *(u32*)(r4 + 632) = r0;
    r0 = 1u;
    return r0;
}

// FUN_00474e5c
void W_474e5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_47e50c_1(r0);
    r0 = r4;
    r0 = Fn_630080_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_47d004_1(r0);
    r0 = r4;
    r0 = Fn_630068_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_474e98;
    r0 = r4;
    { Fn_47cfd0_1(r0); return; }
    L_474e98:;
    return;
}

// FUN_00475750
u32 W_475750(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_475768;
    fa = r0; fb = 24u;
    if (fa < fb) r1 = (u32)g_007d9eed;
    if (fa < fb) r0 = *(u8*)(r1 + r0);
    if (fa < fb) goto L_47576c;
    L_475768:;
    r0 = 0u;
    L_47576c:;
    return r0;
}

// FUN_0047688c
void W_47688c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a706c;
    r0 = *(u8*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) return;
    r0 = (u32)g_008d6ca4;
    r0 = Fn_4607c4_1(r0);
    r0 = (u32)g_008dabe4;
    { Fn_45ae10_1(r0); return; }
}

// FUN_00478834
u32 W_478834(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478850;
    r1 = (u32)g_008d6ba0;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = 1u;
    L_478850:;
    return r0;
}

// FUN_00478864
u32 W_478864(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_478878;
    return Fn_461134_1(r0);
    L_478878:;
    return r0;
}

// FUN_0047893c
u32 W_47893c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478988;
    r0 = *(u32*)(r4 + 108);
    r5 = 0u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47896c;
    r1 = (u32)g_008d6ba0;
    r0 = Fn_5b13a8_2(r0, r1);
    *(u32*)(r4 + 108) = r5;
    L_47896c:;
    r0 = *(u32*)(r4 + 104);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478984;
    r1 = (u32)g_008d6ba0;
    r0 = Fn_5b13a8_2(r0, r1);
    *(u32*)(r4 + 104) = r5;
    L_478984:;
    r0 = 1u;
    L_478988:;
    return r0;
}

// FUN_00478990
u32 W_478990(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4789d4;
    r0 = *(u32*)(r0 + 36);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4789bc;
    r2 = 0u;
    r1 = 24u;
    r0 = Fn_1310f8_3(r0, r1, r2);
    L_4789bc:;
    r0 = *(u32*)(r4 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4789d4;
    r1 = (u32)g_008d6b94;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = 1u;
    L_4789d4:;
    return r0;
}

// FUN_00478a30
u32 W_478a30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478a5c;
    r1 = (u32)g_008d6b88;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = *(u32*)(r4 + 128);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_146c2c_1(r0);
    r0 = 1u;
    L_478a5c:;
    return r0;
}

// FUN_00478b10
u32 W_478b10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478b5c;
    r0 = *(u32*)(r4 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478b40;
    r1 = 0u;
    r0 = Fn_45fa48_2(r0, r1);
    r0 = *(u32*)(r4 + 88);
    r0 = Fn_458dbc_1(r0);
    L_478b40:;
    r0 = *(u32*)(r4 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478b58;
    r0 = Fn_467a3c_1(r0);
    r0 = 1u;
    *(u8*)(r4 + 85) = r0;
    L_478b58:;
    r0 = 1u;
    L_478b5c:;
    return r0;
}

// FUN_00478b60
u32 W_478b60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478b7c;
    r1 = (u32)g_008d6b7c;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = 1u;
    L_478b7c:;
    return r0;
}

// FUN_00478bc0
void W_478bc0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 85);
    fa = r2; fb = r1;
    if (fa == fb) goto L_478bf0;
    *(u8*)(r0 + 85) = r1;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_478bf0;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_478be8;
    { Fn_467ce0_3(r0, r1, r2); return; }
    L_478be8:;
    { Fn_46795c_3(r0, r1, r2); return; }
    L_478bf0:;
    return;
}

// FUN_0047922c
u32 W_47922c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = 12u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479284;
    r0 = 14u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479284;
    r0 = 13u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479284;
    r0 = *(u32*)(r4 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47927c;
    r0 = Fn_460f1c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479284;
    L_47927c:;
    r0 = 0u;
    return r0;
    L_479284:;
    r0 = 1u;
    return r0;
}

// FUN_0047928c
u32 W_47928c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 6u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4792c4;
    r0 = 8u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4792c4;
    r0 = 7u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_4792c8;
    L_4792c4:;
    r0 = 1u;
    L_4792c8:;
    return r0;
}

// FUN_004794b8
u32 W_4794b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4794d0;
    r0 = Fn_45850c_1(r0);
    r0 = 1u;
    L_4794d0:;
    return r0;
}

// FUN_00479614
u32 W_479614(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479658;
    r0 = *(u32*)(r4 + 120);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479654;
    r1 = (u32)g_008d6ba0;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = *(u32*)(r4 + 120);
    r5 = 0u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479654;
    r0 = Fn_016030_1(r0);
    *(u32*)(r4 + 120) = r5;
    L_479654:;
    r0 = 1u;
    L_479658:;
    return r0;
}

// FUN_004798b0
u32 W_4798b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4798c8;
    r0 = Fn_466fd0_1(r0);
    r0 = 1u;
    L_4798c8:;
    return r0;
}

// FUN_004798f4
u32 W_4798f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479910;
    r1 = (u32)g_008d6b94;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = 1u;
    L_479910:;
    return r0;
}

// FUN_00479988
void W_479988(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47999c;
    r1 = r1 & 255u;
    { Fn_62fba0_2(r0, r1); return; }
    L_47999c:;
    return;
}

// FUN_004799c8
u32 W_4799c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 120);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4799e4;
    r1 = r1 & 255u;
    r0 = Fn_4748c4_2(r0, r1);
    r0 = 1u;
    L_4799e4:;
    return r0;
}

// FUN_00479c00
u32 W_479c00(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479c1c;
    r1 = (u32)g_008d6b94;
    r0 = Fn_5b13a8_2(r0, r1);
    r0 = 1u;
    L_479c1c:;
    return r0;
}

// FUN_00479f10
u32 W_479f10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_479f2c;
    r1 = r1 & 255u;
    r0 = Fn_45ff10_2(r0, r1);
    r0 = 1u;
    L_479f2c:;
    return r0;
}

// FUN_0047a168
u32 W_47a168(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    fa = r2; fb = 16u;
    if (fa != fb) goto L_47a188;
    r1 = *(u32*)(r1 + 8);
    r1 = r1 & 255u;
    *(u8*)(r0 + 84) = r1;
    r0 = Fn_479b00_3(r0, r1, r2);
    L_47a188:;
    r0 = 1u;
    return r0;
}

// FUN_0047a190
u32 W_47a190(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a1a8;
    r0 = Fn_458b14_1(r0);
    r0 = 1u;
    L_47a1a8:;
    return r0;
}

// FUN_0047a1ac
u32 W_47a1ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a1c4;
    r0 = Fn_458b6c_1(r0);
    r0 = 1u;
    L_47a1c4:;
    return r0;
}

// FUN_0047a5d0
u32 W_47a5d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a5f8;
    r0 = Fn_460e24_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a5fc;
    r0 = Fn_454fb0_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a5fc;
    L_47a5f8:;
    r0 = 1u;
    L_47a5fc:;
    return r0;
}

// FUN_0047a600
u32 W_47a600(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a61c;
    r0 = *(u8*)(r0 + 77);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47a61c:;
    return r0;
}

// FUN_0047a67c
u32 W_47a67c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a698;
    r0 = *(u8*)(r0 + 79);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47a698:;
    return r0;
}

// FUN_0047a6ac
u32 W_47a6ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a6c4;
    r1 = 1u;
    *(u8*)(r0 + 68) = r1;
    r0 = r1;
    L_47a6c4:;
    return r0;
}

// FUN_0047a6c8
u32 W_47a6c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a6e0;
    r0 = Fn_46faa8_1(r0);
    r0 = 0u;
    L_47a6e0:;
    return r0;
}

// FUN_0047a6e4
u32 W_47a6e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a6fc;
    r0 = Fn_46e9bc_1(r0);
    r0 = 1u;
    L_47a6fc:;
    return r0;
}

// FUN_0047a700
u32 W_47a700(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 299);
    return r0;
}

// FUN_0047a7e8
u32 W_47a7e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a800;
    r0 = Fn_475780_1(r0);
    r0 = 1u;
    L_47a800:;
    return r0;
}

// FUN_0047a848
u32 W_47a848(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a864;
    r0 = *(u8*)(r0 + 80);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47a864:;
    return r0;
}

// FUN_0047a944
u32 W_47a944(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a960;
    r0 = *(u8*)(r0 + 81);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47a960:;
    return r0;
}

// FUN_0047a9a8
u32 W_47a9a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a9c4;
    r0 = *(u8*)(r0 + 75);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47a9c4:;
    return r0;
}

// FUN_0047a9c8
u32 W_47a9c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47a9e4;
    r0 = *(u8*)(r0 + 70);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47a9e4:;
    return r0;
}

// FUN_0047a9e8
u32 W_47a9e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47aa04;
    r0 = *(u8*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47aa04:;
    return r0;
}

// FUN_0047aad0
u32 W_47aad0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47aaec;
    r0 = *(u8*)(r0 + 76);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47aaec:;
    return r0;
}

// FUN_0047acd8
u32 W_47acd8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47acf4;
    r0 = *(u8*)(r0 + 73);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_47acf4:;
    return r0;
}

// FUN_0047ea58
u32 W_47ea58(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 40);
    return r0;
}

// FUN_0047ed70
u32 W_47ed70(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 40);
    return r0;
}

// FUN_0047ee24
void W_47ee24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00826ccc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 44);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47ee4c;
    r0 = Fn_5a579c_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 44) = r0;
    L_47ee4c:;
    r0 = r4;
    r0 = Fn_5d6d0c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_004808cc
void W_4808cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r2 = 0u;
    r0 = 16778010u;
    r1 = r2;
    r0 = Fn_5db4b4_3(r0, r1, r2);
    r0 = Fn_4982f4_1(r0);
    r0 = Fn_49dcac_1(r0);
    fa = r0; fb = 0u;
    r0 = *(u32*)(r4 + 60);
    if (fa == fb) r1 = 3u;
    if (fa != fb) r1 = 6u;
    r0 = Fn_492ccc_2(r0, r1);
    r1 = *(u32*)(r4 + 68);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 64);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r0 = Fn_4982f4_1(r0);
    { Fn_49dba0_1(r0); return; }
}

// FUN_00480920
void W_480920(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_4982f4_1(r0);
    r0 = Fn_49dcac_1(r0);
    fa = r0; fb = 0u;
    r0 = *(u32*)(r4 + 60);
    if (fa == fb) goto L_480948;
    r1 = 4u;
    { Fn_492ccc_2(r0, r1); return; }
    L_480948:;
    r1 = 1u;
    { Fn_492ccc_2(r0, r1); return; }
}

// FUN_00480f2c
void W_480f2c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00826e34;
    r2 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r1;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_480f5c;
    r1 = (u32)g_0059f938;
    r0 = r2;
    r0 = Fn_202758_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_480f5c:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00482a04
u32 W_482a04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(u32*)(r0 + 368);
    if (fa == fb) goto L_482a5c;
    fa = r1; fb = 2u;
    if (fa == fb) r0 = *(u32*)(r0 + 372);
    if (fa == fb) goto L_482a5c;
    fa = r1; fb = 3u;
    if (fa == fb) r0 = *(u32*)(r0 + 376);
    if (fa == fb) goto L_482a5c;
    r2 = *(u32*)(r0 + 292);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_482a40;
    fa = r1; fb = 4u;
    if (fa == fb) r0 = *(u32*)(r0 + 380);
    if (fa == fb) goto L_482a5c;
    L_482a40:;
    r2 = *(u32*)(r0 + 300);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_482a58;
    fa = r1; fb = 5u;
    if (fa == fb) r0 = *(u32*)(r0 + 384);
    if (fa == fb) goto L_482a5c;
    L_482a58:;
    r0 = 0u;
    L_482a5c:;
    return r0;
}

// FUN_004869d0
u32 W_4869d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 68);
    r2 = r1;
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_4869f0;
    r1 = *(u32*)(r0 + 4);
    r0 = r3;
    return Fn_485ec4_4(r0, r1, r2, r3);
    L_4869f0:;
    return r0;
}

// FUN_004869f4
u32 W_4869f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 68);
    r2 = r1;
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_486a14;
    r1 = *(u32*)(r0 + 4);
    r0 = r3;
    return Fn_48636c_4(r0, r1, r2, r3);
    L_486a14:;
    return r0;
}
