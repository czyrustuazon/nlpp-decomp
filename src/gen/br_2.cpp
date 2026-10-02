// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_626138_2(u32, u32);
u32 Fn_626288_2(u32, u32);
u32 Fn_15c33c_4(u32, u32, u32, u32);
u32 Fn_1636d0_2(u32, u32);
u32 Fn_164f84_2(u32, u32);
u32 Fn_5ad044_4(u32, u32, u32, u32);
u32 Fn_0206d0_3(u32, u32, u32);
u32 Fn_165d34_2(u32, u32);
u32 Fn_16810c_2(u32, u32);
extern char g_007b933c[];
extern char g_00896e6c[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_01b74c_1(u32);
u32 Fn_4e9658_1(u32);
u32 Fn_5789fc_1(u32);
u32 Fn_58a24c_1(u32);
extern char g_00807934[];
u32 Fn_16e3e0_1(u32);
u32 Fn_16e440_2(u32, u32);
u32 Fn_2024b0_1(u32);
extern char g_007bd7a2[];
u32 Fn_1800fc_2(u32, u32);
u32 Fn_1889ec_1(u32);
u32 Fn_4d43d4_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_007c6f5c[];
u32 Fn_384fc4_4(u32, u32, u32, u32);
extern char g_007c6f12[];
u32 Fn_384b08_4(u32, u32, u32, u32);
u32 Fn_384f60_4(u32, u32, u32, u32);
extern char g_0089aa6c[];
u32 Fn_207c84_1(u32);
u32 Fn_19f5f8_0();
u32 Fn_5c77ac_3(u32, u32, u32);
u32 Fn_5c7cb4_2(u32, u32);
extern char g_007c3478[];
u32 Fn_1ee808_2(u32, u32);
u32 Fn_5c760c_3(u32, u32, u32);
u32 Fn_5cd860_1(u32);
u32 Fn_1b2d84_0();
u32 Fn_1b3a18_0();
u32 Fn_1b46cc_0();
u32 Fn_1b52e4_0();
u32 Fn_1b6638_3(u32, u32, u32);
u32 Fn_1b88d0_3(u32, u32, u32);
extern char g_0080acf0[];
u32 Fn_1bc878_0();
u32 Fn_1bf9d8_1(u32);
u32 Fn_1bfc34_1(u32);
u32 Fn_1bffbc_1(u32);
u32 Fn_1c0354_2(u32, u32);
u32 Fn_1c2038_1(u32);
u32 Fn_5a2844_1(u32);
u32 Fn_641404_2(u32, u32);
u32 Fn_193f64_1(u32);
u32 Fn_1cb1e0_1(u32);
extern char g_0080c380[];
u32 Fn_1e87e4_0();
u32 Fn_1d14e0_0();
u32 Fn_1c8110_0();
extern char g_0080d1a0[];
u32 Fn_22556c_0();
extern char g_0080d24c[];
u32 Fn_1c7d30_1(u32);

// FUN_00160348
u32 W_160348(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_16036c;
    r1 = *(u32*)(r0 + 28);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 6u;
    if (fa != fb) *(u8*)(r0) = r1;
    r0 = 1u;
    L_16036c:;
    return r0;
}

// FUN_001613c8
u32 W_1613c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = r0;
    r5 = 0u;
    r4 = 67108943u;
    r7 = r4 + 105u;
    L_1613dc:;
    r1 = r4;
    r0 = r6;
    r0 = Fn_626138_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = r5 + 1u;
    r4 = r4 + 1u;
    fa = r4; fb = r7;
    if ((int)fa <= (int)fb) goto L_1613dc;
    r0 = r5;
    return r0;
}

// FUN_00161cbc
u32 W_161cbc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) return r0;
    r4 = r0;
    r1 = 67108903u;
    r0 = Fn_626288_2(r0, r1);
    r5 = r0;
    r1 = 67108904u;
    r0 = r4;
    r0 = Fn_626288_2(r0, r1);
    r0 = r0 + r5;
    return r0;
}

// FUN_001622dc
u32 W_1622dc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1;
    if (r3 == 0) goto L_162310;
    fa = r0; fb = 600u;
    r2 = 0u;
    if ((int)fa >= (int)fb) goto L_162300;
    r1 = r0 + 67108866u;
    r1 = r1 + 932u;
    r0 = r3;
    return Fn_15c33c_4(r0, r1, r2, r3);
    L_162300:;
    r1 = 67109898u;
    r1 = r1 + r0;
    r0 = r3;
    return Fn_15c33c_4(r0, r1, r2, r3);
    L_162310:;
    return r0;
}

// FUN_00163554
u32 W_163554(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_163568;
    r1 = 67110649u;
    return Fn_626288_2(r0, r1);
    L_163568:;
    return r0;
}

// FUN_00163778
u32 W_163778(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) return r0;
    r5 = 0u;
    r6 = r0;
    r4 = r5;
    L_163790:;
    r1 = r4 + 67108865u;
    r1 = r1 + 316u;
    r0 = r6;
    r0 = Fn_626138_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = r5 + 1u;
    r4 = r4 + 1u;
    fa = r4; fb = 600u;
    if ((int)fa < (int)fb) goto L_163790;
    r4 = 600u;
    r7 = r4 + 30u;
    L_1637bc:;
    r1 = r4 + 67108864u;
    r1 = r1 + 1004u;
    r0 = r6;
    r0 = Fn_626138_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = r5 + 1u;
    r4 = r4 + 1u;
    fa = r4; fb = r7;
    if ((int)fa < (int)fb) goto L_1637bc;
    r0 = r5;
    return r0;
}

// FUN_00163aec
u32 W_163aec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 1u;
    L_163af8:;
    r1 = r4;
    r0 = r5;
    r0 = Fn_1636d0_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_163b18;
    r0 = r4;
    return r0;
    L_163b18:;
    r4 = r4 + 1u;
    fa = r4; fb = 27u;
    if ((int)fa < (int)fb) goto L_163af8;
    r0 = 1u;
    return r0;
}

// FUN_00164c78
void W_164c78(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 4);
    r6 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_164cc8;
    r0 = *(u32*)(r5);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_164cc8;
    L_164ca0:;
    r0 = *(u32*)(r5 + 4);
    r1 = (r4 << 3) - r4;
    r1 = r1 + (r4 << 4);
    r0 = r0 + (r1 << 2);
    r1 = r6;
    r0 = Fn_164f84_2(r0, r1);
    r0 = *(u32*)(r5);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_164ca0;
    L_164cc8:;
    return;
}

// FUN_0016593c
void W_16593c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    *(u32*)(r0 + 124) = r1;
    if ((int)fa >= (int)fb) goto L_165964;
    r0 = *(u32*)(r0 + 40);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_165964;
    r2 = 1u;
    r3 = 0u;
    r1 = r2;
    { Fn_5ad044_4(r0, r1, r2, r3); return; }
    L_165964:;
    return;
}

// FUN_00166c48
u32 W_166c48(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0);
    r6 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_166ca0;
    r0 = Fn_165d34_2(r0, r1);
    r0 = *(u32*)(r5 + 4);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_166ca0;
    L_166c74:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_166c90;
    r2 = ~0u;
    r1 = r6;
    r0 = Fn_0206d0_3(r0, r1, r2);
    L_166c90:;
    r0 = *(u32*)(r5 + 4);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_166c74;
    L_166ca0:;
    return r0;
}

// FUN_00168ddc
void W_168ddc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 1716);
    fa = r1; fb = 3u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) *(u8*)(r0 + 1716) = r1;
    return;
}

// FUN_001690e0
void W_1690e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    r5 = r0;
    r4 = r1;
    *(u8*)(r0 + 1716) = r1;
    L_1690f4:;
    r0 = r4 + (r4 << 3);
    r0 = r0 + (r4 << 5);
    r1 = r4;
    r0 = r5 + (r0 << 2);
    r0 = r0 + 12u;
    r0 = Fn_16810c_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 3u;
    if ((int)fa < (int)fb) goto L_1690f4;
    r0 = 1u;
    *(u8*)(r5 + 1716) = r0;
    return;
}

// FUN_00169234
void W_169234(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 3u;
    if (fa < fb) *(u32*)(r0 + 1720) = r1;
    return;
}

// FUN_0016abd0
void W_16abd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 56);
    fa = r2; fb = 3u;
    if (fa >= fb) goto L_16abf0;
    r3 = (u32)g_007b933c;
    r2 = r3 + (r2 << 1);
    r2 = *(u16*)(r2);
    fa = r1; fb = r2;
    if (fa >= fb) r1 = 0u;
    L_16abf0:;
    *(u8*)(r0 + 80) = r1;
    return;
}

// FUN_0016c478
u32 W_16c478(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 20u;
    if (fa >= fb) goto L_16c490;
    r0 = r0 + r1;
    r1 = *(signed char*)(r0 + 132);
    fa = r1; fb = r2;
    if (fa != fb) *(u8*)(r0 + 132) = r2;
    L_16c490:;
    return r0;
}

// FUN_0016e184
u32 W_16e184(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_01b74c_1(r0);
    r0 = (u32)g_00896e6c;
    r0 = Fn_5789fc_1(r0);
    r2 = 16u;
    r1 = 6u;
    r0 = 48u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_58a24c_1(r0);
    *(u32*)(r4 + 52) = r0;
    r0 = r4 + 80u;
    r0 = Fn_4e9658_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_0016e1c8
void W_16e1c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_01b74c_1(r0);
    r0 = (u32)g_00896e6c;
    r0 = Fn_5789fc_1(r0);
    r2 = 16u;
    r1 = 6u;
    r0 = 48u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_58a24c_1(r0);
    *(u32*)(r4 + 52) = r0;
    r0 = r4 + 80u;
    { Fn_4e9658_1(r0); return; }
}

// FUN_0016e79c
void W_16e79c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00807934;
    r5 = 0u;
    *(u32*)(r0) = r1;
    r4 = r0;
    *(u8*)(r0 + 8) = r5;
    r0 = Fn_16e440_2(r0, r1);
    *(u32*)(r4 + 32) = r5;
    r0 = Fn_16e3e0_1(r0);
    *(u32*)(r4 + 36) = r5;
    r0 = r4;
    *(u8*)(r4 + 8) = r5;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0016f078
u32 W_16f078(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 157);
    fa = r1; fb = 2u;
    if (fa != fb) goto L_16f090;
    r1 = *(u32*)(r0 + 148);
    r1 = r1 - 1u;
    *(u32*)(r0 + 148) = r1;
    L_16f090:;
    r0 = 1u;
    return r0;
}

// FUN_00176090
u32 W_176090(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_007bd7a2;
    r0 = r0 + (r0 << 2);
    r0 = r2 + (r0 << 2);
    r0 = r0 + (r1 << 1);
    r0 = *(short*)(r0);
    return r0;
}

// FUN_00180014
void W_180014(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    r1 = 8u;
    r0 = r0 + 16384u;
    *(u8*)(r0 + 290) = r1;
    { Fn_1800fc_2(r0, r1); return; }
}

// FUN_00180028
void W_180028(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    r1 = 9u;
    r0 = r0 + 16384u;
    *(u8*)(r0 + 290) = r1;
    { Fn_1800fc_2(r0, r1); return; }
}

// FUN_0018003c
void W_18003c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    r1 = 10u;
    r0 = r0 + 16384u;
    *(u8*)(r0 + 290) = r1;
    { Fn_1800fc_2(r0, r1); return; }
}

// FUN_00187e20
u32 W_187e20(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = 17u;
    r0 = Fn_1889ec_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_187e64;
    r0 = *(u32*)(r4 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_187e68;
    r1 = 0u;
    r0 = Fn_4d43d4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_187e64;
    r0 = *(u8*)(r0 + 10);
    fa = r0; fb = 6u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_187e68;
    L_187e64:;
    r0 = 0u;
    L_187e68:;
    return r0;
}

// FUN_0018f378
u32 W_18f378(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_18f3c8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_18f3c8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_18f3c8;
    r1 = *(u32*)(r1 + 36);
    r1 = r4 + (r1 << 2);
    r1 = *(u32*)(r1 + 84);
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_18f3bc;
    r3 = 0u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_18f3bc:;
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    *(u32*)(r4 + 24) = r0;
    L_18f3c8:;
    r0 = 0u;
    return r0;
}

// FUN_00190124
u32 W_190124(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001909e4
u32 W_1909e4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_190a00;
    r2 = *(u32*)(r2 + 96);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_190a08;
    L_190a00:;
    r1 = *(u32*)(r2 + 100);
    r0 = ((u32(*)(u32))r1)(r0);
    L_190a08:;
    r0 = 0u;
    return r0;
}

// FUN_00190d94
u32 W_190d94(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00191564
u32 W_191564(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_191580;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_191588;
    L_191580:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_191588:;
    r0 = 0u;
    return r0;
}

// FUN_0019307c
u32 W_19307c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 188);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r0 + 32);
    return r0;
}

// FUN_001932f4
u32 W_1932f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 188);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r0 + 36);
    return r0;
}

// FUN_00196730
void W_196730(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_196754;
    r3 = (u32)g_007c6f5c;
    r0 = *(u32*)(r0 + 20);
    r1 = r3 + (r1 << 1);
    r1 = *(u16*)(r1);
    r1 = r1 + r2;
    { Fn_384fc4_4(r0, r1, r2, r3); return; }
    L_196754:;
    return;
}

// FUN_00196788
u32 W_196788(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 36u;
    if ((int)fa >= (int)fb) r0 = 0u;
    if ((int)fa >= (int)fb) goto L_1967b8;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1967b8;
    r3 = (u32)g_007c6f12;
    r0 = *(u32*)(r0 + 20);
    r1 = r3 + (r1 << 1);
    r1 = *(u16*)(r1);
    r1 = r1 + r2;
    return Fn_384b08_4(r0, r1, r2, r3);
    L_1967b8:;
    return r0;
}

// FUN_001967ec
void W_1967ec(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_196810;
    r3 = (u32)g_007c6f12;
    r0 = *(u32*)(r0 + 20);
    r1 = r3 + (r1 << 1);
    r1 = *(u16*)(r1);
    r1 = r1 + r2;
    { Fn_384f60_4(r0, r1, r2, r3); return; }
    L_196810:;
    return;
}

// FUN_00196ff8
u32 W_196ff8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = (u32)g_0089aa6c;
    r0 = *(u32*)(r5);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_19702c;
    r2 = 16u;
    r1 = 0u;
    r0 = 132u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_207c84_1(r0);
    *(u32*)(r5) = r0;
    L_19702c:;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_197050;
    fa = r4; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_197054;
    r1 = *(u32*)(r0 + 124);
    fa = r1; fb = r4;
    if (fa == fb) r0 = *(u32*)(r0 + 120);
    if (fa == fb) goto L_197054;
    L_197050:;
    r0 = ~0u;
    L_197054:;
    return r0;
}

// FUN_00197200
u32 W_197200(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00197e48
u32 W_197e48(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_197e60;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_197e60:;
    r0 = 0u;
    return r0;
}

// FUN_0019dc90
u32 W_19dc90(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_19dcac;
    r2 = *(u32*)(r2 + 88);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_19dcb4;
    L_19dcac:;
    r1 = *(u32*)(r2 + 92);
    r0 = ((u32(*)(u32))r1)(r0);
    L_19dcb4:;
    r0 = 0u;
    return r0;
}

// FUN_0019f0cc
u32 W_19f0cc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_19f0e8;
    r2 = *(u32*)(r2 + 88);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_19f0f0;
    L_19f0e8:;
    r1 = *(u32*)(r2 + 92);
    r0 = ((u32(*)(u32))r1)(r0);
    L_19f0f0:;
    r0 = 0u;
    return r0;
}

// FUN_001a0758
u32 W_1a0758(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_19f5f8_0();
    r0 = 0u;
    return r0;
}

// FUN_001a498c
u32 W_1a498c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 512u;
    r0 = *(signed char*)(r0 + 108);
    return r0;
}

// FUN_001a882c
void W_1a882c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    if (fa == fb) *(u8*)(r0 + 453) = r1;
    { Fn_5c77ac_3(r0, r1, r2); return; }
}

// FUN_001a9524
u32 W_1a9524(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = r0 + 256u;
    if (fa == fb) r0 = *(signed char*)(r0 + 197);
    if (fa == fb) goto L_1a9538;
    return Fn_5c7cb4_2(r0, r1);
    L_1a9538:;
    return r0;
}

// FUN_001ad4c0
void W_1ad4c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 600) = r1;
    *(u32*)(r0 + 92) = r1;
    return;
}

// FUN_001ad8b4
void W_1ad8b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = 0u;
    r0 = Fn_5cd860_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1ad8d8;
    r1 = (u32)g_007c3478;
    r0 = r4;
    r0 = Fn_1ee808_2(r0, r1);
    L_1ad8d8:;
    r0 = 1u;
    r0 = Fn_5cd860_1(r0);
    r5 = (u32)g_007c3478;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1ad8f8;
    r1 = r5 + 16u;
    r0 = r4;
    r0 = Fn_1ee808_2(r0, r1);
    L_1ad8f8:;
    r0 = 2u;
    r0 = Fn_5cd860_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1ad918;
    r1 = r5 + 32u;
    r0 = r4;
    r0 = Fn_1ee808_2(r0, r1);
    L_1ad918:;
    r0 = r4;
    r2 = 0u;
    r1 = r2;
    { Fn_5c760c_3(r0, r1, r2); return; }
}

// FUN_001adbe4
void W_1adbe4(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 20u;
    if (fa == fb) *(u32*)(r0 + 708) = r3;
    return;
}

// FUN_001ae86c
void W_1ae86c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 596) = r1;
    return;
}

// FUN_001b081c
u32 W_1b081c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 92);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 96) = r1;
    r0 = 0u;
    return r0;
}

// FUN_001b0ad0
u32 W_1b0ad0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 96);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_1b0af0;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1b0af0;
    fa = r3; fb = r1;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u32*)(r0 + 96) = r1;
    L_1b0af0:;
    r0 = 0u;
    return r0;
}

// FUN_001b0fd0
u32 W_1b0fd0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1b100c;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1b100c;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1b100c;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 100) = r0;
    L_1b100c:;
    r0 = 0u;
    return r0;
}

// FUN_001b1158
u32 W_1b1158(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001b166c
u32 W_1b166c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001b1944
u32 W_1b1944(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001b1ccc
u32 W_1b1ccc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001b2220
u32 W_1b2220(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001b25a8
u32 W_1b25a8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001b3514
u32 W_1b3514(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1b2d84_0();
    r0 = 0u;
    return r0;
}

// FUN_001b41a8
u32 W_1b41a8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1b3a18_0();
    r0 = 0u;
    return r0;
}

// FUN_001b4e5c
u32 W_1b4e5c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1b46cc_0();
    r0 = 0u;
    return r0;
}

// FUN_001b5d30
u32 W_1b5d30(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1b52e4_0();
    r0 = 0u;
    return r0;
}

// FUN_001b7170
void W_1b7170(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 156);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_1b71a8;
    L_1b7188:;
    r2 = 1u;
    r1 = r4;
    r0 = r5;
    r0 = Fn_1b6638_3(r0, r1, r2);
    r0 = *(u32*)(r5 + 156);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_1b7188;
    L_1b71a8:;
    return;
}

// FUN_001b927c
u32 W_1b927c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1b9298;
    r2 = *(u32*)(r1 + 36);
    fa = r2; fb = 4u;
    if (fa == fb) *(u32*)(r0 + 152) = r1;
    goto L_1b92a0;
    L_1b9298:;
    r0 = Fn_1b88d0_3(r0, r1, r2);
    L_1b92a0:;
    r0 = 0u;
    return r0;
}

// FUN_001bad50
void W_1bad50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_1bad5c:;
    fa = r4; fb = 2u;
    r0 = r5 + (r4 << 2);
    r3 = 0u;
    r0 = *(u32*)(r0 + 40);
    if (fa == fb) r1 = 3u;
    if (fa != fb) r1 = 6u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    if ((int)fa < (int)fb) goto L_1bad5c;
    return;
}

// FUN_001bd61c
void W_1bd61c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_1bc878_0();
    r3 = (u32)g_0080acf0;
    r2 = 1u;
    r1 = 0u;
    *(u32*)(r0) = r3;
    *(u8*)(r0 + 93) = r2;
    *(u8*)(r0 + 94) = r2;
    *(u8*)(r0 + 95) = r2;
    *(u8*)(r0 + 96) = r1;
    *(u8*)(r0 + 97) = r1;
    *(u8*)(r0 + 98) = r1;
    *(u8*)(r0 + 99) = r1;
    *(u8*)(r0 + 100) = r1;
    *(u8*)(r0 + 101) = r1;
    *(u8*)(r0 + 102) = r1;
    *(u8*)(r0 + 103) = r1;
    *(u8*)(r0 + 104) = r1;
    *(u8*)(r0 + 105) = r1;
    *(u32*)(r0 + 108) = r1;
    *(u32*)(r0 + 112) = r1;
    return;
}

// FUN_001bd90c
u32 W_1bd90c(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = r2;
    if ((int)fa >= (int)fb) r0 = 1u;
    if ((int)fa < (int)fb) r0 = 0u;
    return r0;
}

// FUN_001be388
u32 W_1be388(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = r2;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001be59c
u32 W_1be59c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1be5d8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1be5d8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1be5d8;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 116) = r0;
    L_1be5d8:;
    r0 = 0u;
    return r0;
}

// FUN_001c02b0
u32 W_1c02b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u8*)(r0 + 168);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1c02e8;
    r0 = r4;
    r0 = Fn_1bf9d8_1(r0);
    r0 = *(u8*)(r4 + 169);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_1bfc34_1(r0);
    r0 = r4;
    r0 = Fn_1bffbc_1(r0);
    r0 = 0u;
    L_1c02e8:;
    return r0;
}

// FUN_001c0634
u32 W_1c0634(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 104);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = Fn_1c0354_2(r0, r1);
    r0 = 0u;
    return r0;
}

// FUN_001c0818
u32 W_1c0818(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_1c0838;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_1c083c;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 3u;
    if (fa != fb) goto L_1c083c;
    L_1c0838:;
    *(u32*)(r0 + 132) = r1;
    L_1c083c:;
    r0 = 0u;
    return r0;
}

// FUN_001c28f4
void W_1c28f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = 1u;
    r0 = Fn_5a2844_1(r0);
    r1 = 0u;
    r0 = Fn_641404_2(r0, r1);
    r0 = *(u8*)(r0 + 5);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1c2934;
    r0 = *(u8*)(r4 + 142);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_1c2934;
    r0 = *(u8*)(r4 + 143);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_1c2038_1(r0);
    L_1c2934:;
    r0 = 0u;
    *(u8*)(r4 + 142) = r0;
    return;
}

// FUN_001c7d30
void W_1c7d30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 92) = r1;
    *(u32*)(r0 + 96) = r1;
    return;
}

// FUN_001c8110
u32 W_1c8110(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1c812c;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1c8134;
    L_1c812c:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1c8134:;
    r0 = 0u;
    return r0;
}

// FUN_001c9da4
u32 W_1c9da4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1c9de8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1c9de8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1c9de8;
    r1 = *(u8*)(r4 + 94);
    r3 = 0u;
    r2 = r3;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 112) = r0;
    L_1c9de8:;
    r0 = 0u;
    return r0;
}

// FUN_001ca2a8
u32 W_1ca2a8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1ca2f4;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1ca2f4;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1ca2f4;
    r1 = *(u32*)(r0 + 36);
    r3 = 0u;
    r2 = r3;
    r1 = r1 + r4;
    r1 = *(u8*)(r1 + 93);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 4u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 100) = r0;
    L_1ca2f4:;
    r0 = 0u;
    return r0;
}

// FUN_001cab34
void W_1cab34(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 20u;
    if (fa == fb) *(u32*)(r0 + 484) = r3;
    return;
}

// FUN_001cbd48
u32 W_1cbd48(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_193f64_1(r0);
    r0 = *(u8*)(r4 + 376);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_1cb1e0_1(r0);
    r0 = 0u;
    return r0;
}

// FUN_001cbeb0
u32 W_1cbeb0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001ccc90
u32 W_1ccc90(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1cccac;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1cccb4;
    L_1cccac:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1cccb4:;
    r0 = 0u;
    return r0;
}

// FUN_001ccf38
u32 W_1ccf38(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001cdd3c
u32 W_1cdd3c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1cdd58;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1cdd60;
    L_1cdd58:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1cdd60:;
    r0 = 0u;
    return r0;
}

// FUN_001ce038
u32 W_1ce038(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001ce5f8
u32 W_1ce5f8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1ce614;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1ce61c;
    L_1ce614:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1ce61c:;
    r0 = 0u;
    return r0;
}

// FUN_001ce944
u32 W_1ce944(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001cef24
u32 W_1cef24(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1cef40;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1cef48;
    L_1cef40:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1cef48:;
    r0 = 0u;
    return r0;
}

// FUN_001cf2e8
u32 W_1cf2e8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001cf418
u32 W_1cf418(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r1;
    if (r0 == 0) goto L_1cf45c;
    r1 = *(u32*)(r4 + 96);
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_1cf458;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1cf458;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = ~0u;
    *(u32*)(r4 + 92) = r0;
    *(u32*)(r4 + 96) = r0;
    L_1cf458:;
    r0 = 0u;
    L_1cf45c:;
    return r0;
}

// FUN_001cf8d4
void W_1cf8d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_1e87e4_0();
    r2 = (u32)g_0080c380;
    r1 = ~0u;
    *(u32*)(r0 + 92) = r1;
    *(u32*)(r0) = r2;
    *(u32*)(r0 + 96) = r1;
    return;
}

// FUN_001d118c
u32 W_1d118c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d11c8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1d11c8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1d11c8;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    L_1d11c8:;
    r0 = 0u;
    return r0;
}

// FUN_001d2ab4
u32 W_1d2ab4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1d14e0_0();
    r0 = 0u;
    return r0;
}

// FUN_001d5564
u32 W_1d5564(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1d5580;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1d5588;
    L_1d5580:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1d5588:;
    r0 = 0u;
    return r0;
}

// FUN_001d6a0c
u32 W_1d6a0c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d6a54;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1d6a54;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1d6a54;
    r1 = *(u8*)(r4 + 94);
    r3 = 0u;
    r2 = r3;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa == fb) r1 = 2u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 100) = r0;
    L_1d6a54:;
    r0 = 0u;
    return r0;
}

// FUN_001d9b18
u32 W_1d9b18(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1d9b2c;
    r0 = Fn_1c8110_0();
    goto L_1d9b38;
    L_1d9b2c:;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1d9b38:;
    r0 = 0u;
    return r0;
}

// FUN_001dd868
void W_1dd868() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_22556c_0();
    r1 = 0u;
    r2 = (u32)g_0080d1a0;
    *(u32*)(r0 + 188) = r1;
    *(u32*)(r0 + 192) = r1;
    *(u32*)(r0 + 196) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_001ddfa4
void W_1ddfa4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_22556c_0();
    r1 = 0u;
    r2 = (u32)g_0080d24c;
    *(u32*)(r0 + 108) = r1;
    *(u32*)(r0 + 112) = r1;
    *(u32*)(r0 + 116) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_001dfd78
u32 W_1dfd78(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001dfdbc
u32 W_1dfdbc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = r1;
    if (r0 == 0) goto L_1dfdf0;
    r4 = *(u32*)(r0 + 36);
    fa = r4; fb = 5u;
    if (fa > fb) goto L_1dfdec;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    *(u32*)(r5 + 40) = r4;
    L_1dfdec:;
    r0 = 0u;
    L_1dfdf0:;
    return r0;
}

// FUN_001e1b98
u32 W_1e1b98(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1e1bd4;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1e1bd4;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1e1bd4;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 112) = r0;
    L_1e1bd4:;
    r0 = 0u;
    return r0;
}

// FUN_001e36a4
u32 W_1e36a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_1c7d30_1(r0);
    r0 = ~0u;
    *(u32*)(r4 + 136) = r0;
    *(u32*)(r4 + 140) = r0;
    return r0;
}

// FUN_001e3b6c
u32 W_1e3b6c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 108);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1e3b84;
    fa = r2; fb = 0u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u32*)(r0 + 108) = r1;
    L_1e3b84:;
    r0 = 0u;
    return r0;
}
