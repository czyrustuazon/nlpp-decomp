// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_008ab948[];
extern char g_009ba094[];
u32 Fn_01231c_1(u32);
u32 Fn_0123ec_1(u32);
u32 Fn_016d5c_3(u32, u32, u32);
extern char g_009a5200[];
extern char g_008aabb0[];
extern char g_009a0fb4[];
extern char g_008ab3a0[];
extern char g_009a3dcc[];
extern char g_0082df14[];
u32 Fn_014bb8_2(u32, u32);
u32 Fn_015490_0();
u32 Fn_02ac3c_3(u32, u32, u32);
u32 Fn_02ac64_1(u32);
extern char g_008000ea[];
u32 Fn_1fd674_2(u32, u32);
extern char g_008a7db8[];
u32 Fn_501e8c_3(u32, u32, u32);
u32 Fn_501e8c_4(u32, u32, u32, u32);
extern char g_00790f80[];
u32 Fn_06a954_2(u32, u32);
u32 Fn_50c2e4_1(u32);
u32 Fn_50c36c_0();
u32 Fn_5bc570_2(u32, u32);
u32 Fn_5bc688_2(u32, u32);
u32 Fn_5bc6c0_2(u32, u32);
u32 Fn_07df50_1(u32);
u32 Fn_277f60_3(u32, u32, u32);
u32 Fn_278268_1(u32);
extern char g_008a825c[];
u32 Fn_07b750_3(u32, u32, u32);
u32 Fn_0f4788_1(u32);
u32 Fn_130da0_2(u32, u32);
u32 Fn_4b8638_1(u32);
u32 Fn_4b86f0_1(u32);
u32 Fn_4b8808_2(u32, u32);
u32 Fn_4b8820_1(u32);
u32 Fn_4b8898_1(u32);
u32 Fn_4b8970_2(u32, u32);
u32 Fn_4b8bbc_1(u32);
u32 Fn_4b8c90_1(u32);
u32 Fn_4b8e04_1(u32);
u32 Fn_4b8f48_1(u32);
u32 Fn_4b8f9c_1(u32);
u32 Fn_4b8fac_1(u32);
u32 Fn_4b8fe4_1(u32);
u32 Fn_4bf1cc_1(u32);
u32 Fn_4b90b4_1(u32);
u32 Fn_4b90e0_1(u32);
u32 Fn_0ffd30_0();
u32 Fn_2e3444_2(u32, u32);
extern char g_008aabf8[];
extern char g_007a4a40[];
extern char g_007ac024[];
u32 Fn_626138_4(u32, u32, u32, u32);
extern char g_007abc64[];
u32 Fn_157bb0_1(u32);
u32 Fn_15b168_1(u32);
u32 Fn_15c33c_3(u32, u32, u32);
u32 Fn_1fcd88_1(u32);
extern char g_0025226c[];
u32 Fn_202758_2(u32, u32);
extern char g_008075dc[];
u32 Fn_2024b0_1(u32);
u32 Fn_164ccc_3(u32, u32, u32);
extern char g_008929cc[];
u32 Fn_160810_3(u32, u32, u32);
u32 Fn_62693c_1(u32);
u32 Fn_15c33c_1(u32);
u32 Fn_15c9d0_1(u32);
extern char g_00896e4c[];
u32 Fn_5992a0_2(u32, u32);
extern char g_0089a698[];
extern char g_0089aa6c[];
u32 Fn_207c84_1(u32);
u32 Fn_19330c_2(u32, u32);
extern char g_00896e94[];
extern char g_007c4a14[];
u32 Fn_1bcabc_3(u32, u32, u32);
extern char g_007c4a20[];
extern char g_007c49fc[];
u32 Fn_199290_2(u32, u32);
u32 Fn_5c7b7c_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_5c7c14_3(u32, u32, u32);
u32 Fn_5e8b54_2(u32, u32);
u32 Fn_1c7d30_1(u32);
u32 Fn_234604_2(u32, u32);
u32 Fn_235888_2(u32, u32);
u32 Fn_461760_2(u32, u32);

// FUN_00035c1c
u32 W_035c1c(u32 a0) {
    u32 r0 = a0, r1, r2;
    if (r0 == 0u) goto L_35c5c;
    r2 = r0 & ~127u;
    r1 = 0u;
    if (r2 == 0) goto L_35c44;
    L_35c30:;
    r1 = r1 + 1u;
    r0 = r0 >> 1;
    r1 = (u32)(short)r1;
    r2 = r0 & ~127u;
    if (r2 != 0) goto L_35c30;
    L_35c44:;
    r2 = (u32)g_008000ea;
    r0 = (u32)(short)r0;
    r0 = r2 + (r0 << 1);
    r0 = *(u16*)(r0);
    r0 = r0 + (r1 << 10);
    r0 = (u32)(short)r0;
    L_35c5c:;
    return r0;
}

// FUN_000420c4
void W_0420c4(u32 a0) {
    u32 r1, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(a0 + 3980);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_420d8;
    { Fn_1fd674_2(a0, r1); return; }
    L_420d8:;
    return;
}

// FUN_00042898
void W_042898(u32 a0, u32 a1, u32 a2) {
    if (a0 != 0u) { *(u32*)(a0 + 0) = a1; *(u32*)(a0 + 4) = a2; }
    return;
}

// FUN_00049470
u32 W_049470(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5;
    r4 = r0;
    r0 = *(u32*)(r1 + 0); r3 = *(u32*)(r1 + 4);
    r2 = *(u32*)(r1 + 8);
    r1 = r3;
    r0 = Fn_501e8c_4(r0, r1, r2, r3);
    r5 = r0;
    r0 = *(u32*)(r4 + 0); r1 = *(u32*)(r4 + 4); r2 = *(u32*)(r4 + 8);
    r0 = Fn_501e8c_3(r0, r1, r2);
    r0 = r0 - r5;
    if ((int)r0 >= 0) goto L_494a8;
    r1 = (u32)g_008a7db8;
    r1 = *(u32*)(r1 + 4);
    r0 = r0 + r1;
    L_494a8:;
    return r0;
}

// FUN_0006b884
void W_06b884(u32 a0, u32 a1) {
    u32 r0 = a0, r4, r5, fa, fb;
    r5 = r0;
    r4 = a1;
    if (a1 >= 21u) goto L_6b8a8;
    r0 = (u32)g_00790f80;
    r0 = *(u32*)(r0 + (r4 << 3));
    if (r0 != 0u) goto L_6b8ac;
    L_6b8a8:;
    r4 = 0u;
    L_6b8ac:;
    r0 = *(u32*)(r5 + 84);
    if (r0 == r4) goto L_6b8c8;
    fa = r0; fb = 0u;
    if ((int)fa >= (int)fb) r0 = r5;
    if ((int)fa >= (int)fb) r0 = Fn_06a954_2(r0, a1);
    *(u32*)(r5 + 84) = r4;
    L_6b8c8:;
    return;
}

// FUN_0006c9b0
u32 W_06c9b0() {
    u32 r0, r4, fa, fb;
    r0 = Fn_50c36c_0();
    r4 = r0;
    r0 = Fn_50c2e4_1(r0);
    if (r4 == 1u) goto L_6c9d4;
    fa = r0; fb = 1u;
    if (fa <= fb) r0 = 1u;
    if (fa <= fb) goto L_6c9d8;
    L_6c9d4:;
    r0 = 0u;
    L_6c9d8:;
    return r0;
}

// FUN_0006d48c
void W_06d48c(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 36);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_00074774
void W_074774(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 15);
    r5 = r1;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 92);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_747b8;
    r1 = 2u;
    r0 = Fn_5bc6c0_2(r0, r1);
    r0 = *(u32*)(r4 + 92);
    r1 = r5;
    r0 = Fn_5bc688_2(r0, r1);
    r0 = *(u32*)(r4 + 92);
    r1 = 1u;
    { Fn_5bc570_2(r0, r1); return; }
    L_747b8:;
    return;
}

// FUN_000750e8
u32 W_0750e8(u32 a0) {
    u32 r0 = a0, r4, r5, r6;
    r6 = r0;
    r0 = *(u32*)(r0 + 28);
    r5 = r0 + 4u;
    r4 = *(u32*)(r0 + 8);
    if (r4 == r5) goto L_75128;
    L_75104:;
    r0 = *(u8*)(r4 + 8);
    if (r0 >= 7u) goto L_7511c;
    r0 = *(u32*)(r6 + (r0 << 2));
    if (r0 != 0u) r0 = Fn_07df50_1(r0);
    L_7511c:;
    r4 = *(u32*)(r4 + 4);
    if (r4 != r5) goto L_75104;
    L_75128:;
    return r0;
}

// FUN_00075214
u32 W_075214(u32 a0) {
    u32 r0 = a0, r4, r5, r6;
    r6 = r0;
    r0 = *(u32*)(r0 + 28);
    r5 = r0 + 4u;
    r4 = *(u32*)(r0 + 8);
    if (r4 == r5) goto L_75254;
    L_75230:;
    r0 = *(u8*)(r4 + 8);
    if (r0 >= 7u) goto L_75248;
    r0 = *(u32*)(r6 + (r0 << 2));
    if (r0 != 0u) r0 = Fn_07df50_1(r0);
    L_75248:;
    r4 = *(u32*)(r4 + 4);
    if (r4 != r5) goto L_75230;
    L_75254:;
    return r0;
}

// FUN_00077ff4
u32 W_077ff4(u32 a0) {
    u32 r0 = a0, r1, r4, r5, r6;
    r4 = 0u;
    r5 = r0;
    r6 = r4;
    L_78004:;
    r0 = *(u32*)(r5 + (r4 << 2));
    if (r0 == 0u) goto L_78020;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r5 + (r4 << 2)) = r6;
    L_78020:;
    r4 = r4 + 1u;
    if ((int)r4 < 2) goto L_78004;
    r0 = r5;
    return r0;
}

// FUN_0007974c
void W_07974c(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5, r6;
    r6 = 0u;
    *(u8*)(r0 + 61) = r6;
    *(u8*)(r0 + 62) = r6;
    *(u8*)(r0 + 63) = r6;
    *(u8*)(r0 + 60) = r6;
    *(u8*)(r0 + 42) = r6;
    *(u8*)(r0 + 43) = r6;
    r5 = r0;
    r4 = r6;
    *(u32*)(r0 + 44) = r6;
    L_79778:;
    r2 = 0u;
    r0 = *(u32*)(r5 + (r4 << 2));
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r5 + (r4 << 2));
    r0 = Fn_278268_1(r0);
    r4 = r4 + 1u;
    if ((int)r4 < 10) goto L_79778;
    *(u8*)(r5 + 40) = r6;
    return;
}

// FUN_0007b2fc
void W_07b2fc(u32 a0, u32 a1) {
    u32 r1 = a1, r2, fa, fb;
    r2 = (u32)g_008a825c;
    *(u8*)(a0 + 28) = r1;
    r2 = *(u32*)(r2);
    r2 = *(u8*)(r2 + 4);
    fa = r2; fb = 4u;
    if (fa != fb) { fa = r2; fb = 3u; }
    if (fa != fb) goto L_7b320;
    r1 = r1 ^ 1u;
    { Fn_07b750_3(a0, r1, r2); return; }
    L_7b320:;
    return;
}

// FUN_0007ba9c
void W_07ba9c(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5, r6;
    r6 = 0u;
    *(u8*)(r0 + 29) = r6;
    *(u8*)(r0 + 30) = r6;
    *(u8*)(r0 + 31) = r6;
    *(u8*)(r0 + 32) = r6;
    *(u8*)(r0 + 24) = r6;
    *(u8*)(r0 + 25) = r6;
    *(u8*)(r0 + 26) = r6;
    *(u8*)(r0 + 27) = r6;
    *(u8*)(r0 + 18) = r6;
    *(u8*)(r0 + 19) = r6;
    r5 = r0;
    r4 = r6;
    *(u32*)(r0 + 20) = r6;
    L_7bad8:;
    r2 = 0u;
    r0 = *(u32*)(r5 + (r4 << 2));
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r5 + (r4 << 2));
    r0 = Fn_278268_1(r0);
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_7bad8;
    *(u8*)(r5 + 15) = r6;
    return;
}

// FUN_00084f1c
void W_084f1c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 4u; *(u32*)(r0) = a2;
    *(u32*)(r0 + 4) = a1;
    return;
}

// FUN_000d2350
void W_0d2350(u32 a0) {
    u32 r1, fa, fb;
    r1 = *(u32*)(a0 + 68);
    fa = r1; fb = 5u;
    if (fa >= fb) r1 = 6u;
    if (fa >= fb) *(u32*)(a0 + 68) = r1;
    return;
}

// FUN_000f2008
void W_0f2008(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r1 = *(u32*)(r1 + 4);
    r2 = *(u32*)(r1); r1 = r1 + 4u;
    r0 = r0 + 16u; *(u32*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_000f4094
void W_0f4094(u32 a0, u32 a1) {
    u32 r1 = a1, r2;
    r1 = *(u32*)(r1 + 4);
    r2 = *(u32*)(r1); r1 = r1 + 4u;
    *(u32*)(a0 + 4) = r1;
    *(u32*)(a0) = r2;
    return;
}

// FUN_000f41ec
void W_0f41ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r1 = *(u32*)(r1 + 4);
    r2 = *(u32*)(r1); r1 = r1 + 4u;
    r0 = r0 + 8u; *(u32*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_000f4630
void W_0f4630(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = Fn_0f4788_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 72);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_f4658;
    r1 = r4 + 96u;
    { Fn_130da0_2(r0, r1); return; }
    L_f4658:;
    return;
}

// FUN_000f5e38
void W_0f5e38(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r1 = *(u32*)(r1 + 4);
    r0 = r0 + 8u;
    r2 = *(u32*)(r1); r1 = r1 + 4u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_000f5f44
void W_0f5f44(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r1 = *(u32*)(r1 + 4);
    r0 = r0 + 16u;
    r2 = *(u32*)(r1); r1 = r1 + 4u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_000f8140
void W_0f8140(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r1 = *(u32*)(r1 + 4);
    r2 = *(u32*)(r1); r1 = r1 + 4u;
    r0 = r0 + 128u; *(u32*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_000fc2e8
void W_0fc2e8(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fc300;
    { Fn_4b8638_1(r0); return; }
    L_fc300:;
    return;
}

// FUN_000fc4d4
void W_0fc4d4(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fc4ec;
    { Fn_4b86f0_1(r0); return; }
    L_fc4ec:;
    return;
}

// FUN_000fc530
void W_0fc530(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) { fa = a1; fb = 0u; }
    if (fa == fb) goto L_fc550;
    r0 = *(u32*)(r0 + 368);
    if (r0 == 0u) goto L_fc550;
    { Fn_4b8808_2(r0, a1); return; }
    L_fc550:;
    return;
}

// FUN_000fc554
void W_0fc554(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fc56c;
    { Fn_4b8820_1(r0); return; }
    L_fc56c:;
    return;
}

// FUN_000fc570
void W_0fc570(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fc588;
    { Fn_4b8898_1(r0); return; }
    L_fc588:;
    return;
}

// FUN_000fcac0
void W_0fcac0(u32 a0) {
    u32 r0 = a0, r1, r4, r5, fa, fb;
    r5 = *(u32*)(r0 + 72);
    fa = r5; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r5 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa != fb) r4 = 0u;
    if (fa == fb) goto L_fcaf4;
    L_fcadc:;
    r0 = *(u32*)(r5 + 368);
    r1 = r4 & 255u;
    r0 = Fn_4b8970_2(r0, r1);
    r4 = r4 + 1u;
    if ((int)r4 < 8) goto L_fcadc;
    L_fcaf4:;
    return;
}

// FUN_000fcb38
void W_0fcb38(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcb50;
    { Fn_4b8bbc_1(r0); return; }
    L_fcb50:;
    return;
}

// FUN_000fcc74
void W_0fcc74(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcc8c;
    { Fn_4b8c90_1(r0); return; }
    L_fcc8c:;
    return;
}

// FUN_000fcd00
void W_0fcd00(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcd18;
    { Fn_4b8e04_1(r0); return; }
    L_fcd18:;
    return;
}

// FUN_000fcd1c
void W_0fcd1c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcd34;
    { Fn_4b8f48_1(r0); return; }
    L_fcd34:;
    return;
}

// FUN_000fce94
void W_0fce94(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fceac;
    { Fn_4b8f9c_1(r0); return; }
    L_fceac:;
    return;
}

// FUN_000fcf4c
void W_0fcf4c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcf64;
    { Fn_4b8fac_1(r0); return; }
    L_fcf64:;
    return;
}

// FUN_000fcfcc
void W_0fcfcc(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcfe4;
    { Fn_4b8fe4_1(r0); return; }
    L_fcfe4:;
    return;
}

// FUN_000fd1c4
void W_0fd1c4(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fd1dc;
    { Fn_4bf1cc_1(r0); return; }
    L_fd1dc:;
    return;
}

// FUN_000fd250
void W_0fd250(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fd268;
    { Fn_4b90b4_1(r0); return; }
    L_fd268:;
    return;
}

// FUN_000fd26c
void W_0fd26c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fd284;
    { Fn_4b90e0_1(r0); return; }
    L_fd284:;
    return;
}

// FUN_000ff9b4
void W_0ff9b4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r4, r5, fa, fb;
    r5 = r1;
    r0 = Fn_0ffd30_0();
    r4 = 0u;
    L_ff9c4:;
    r1 = r4;
    r0 = r5;
    r0 = Fn_2e3444_2(r0, r1);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r0);
    r1 = r1 + (r1 << 1);
    r2 = *(u32*)(r2 + 8);
    r1 = (u32)(short)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if (fa < fb) goto L_ff9c4;
    return;
}

// FUN_000fff68
void W_0fff68(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = 0u;
    *(u8*)(r0 + 12) = r1;
    *(u16*)(r0 + 14) = r1;
    r2 = 5u;
    *(u16*)(r0 + 16) = r1;
    *(u8*)(r0 + 18) = r2;
    r2 = (u32)g_008aabf8;
    *(u8*)(r0 + 19) = r1;
    r0 = r0 + 24u;
    r1 = *(u32*)(r2 + 0); r2 = *(u32*)(r2 + 4);
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_00100f64
void W_100f64(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5;
    r5 = r1;
    r0 = Fn_0ffd30_0();
    r4 = 0u;
    L_100f74:;
    r1 = r4;
    r0 = r5;
    r0 = Fn_2e3444_2(r0, r1);
    r1 = *(short*)(r0 + 4);
    r2 = *(u32*)(r0);
    r1 = r1 + (r1 << 1);
    r2 = *(u32*)(r2 + 8);
    r3 = (u32)((int)r1 >> 31);
    r1 = r1 + (r3 >> 30);
    r1 = (u32)((int)r1 >> 2);
    r1 = (u32)(short)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r4 = r4 + 1u;
    if (r4 < 4u) goto L_100f74;
    return;
}

// FUN_00101468
u32 W_101468(u32 a0) {
    u32 r0 = a0, fa, fb;
    fa = r0; fb = 0u;
    if (fa != fb) { fa = r0; fb = 1u; }
    if (fa == fb) goto L_101480;
    fa = r0; fb = 2u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_101484;
    L_101480:;
    r0 = 1u;
    L_101484:;
    return r0;
}

// FUN_00121230
u32 W_121230(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    r0 = *(u32*)(r0 + 504);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 80);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_121254;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 68) = r1;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u8*)(r0 + 67) = r1;
    L_121254:;
    return r0;
}

// FUN_001218f0
void W_1218f0(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 504);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 80);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 66) = r1;
    if (fa == fb) goto L_12190c;
    L_12190c:;
    return;
}

// FUN_00137d64
void W_137d64(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 728u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_0013cae0
void W_13cae0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 72u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_00140dfc
void W_140dfc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 72u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_001493f0
u32 W_1493f0(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    fa = r0; fb = 24u;
    if (fa < fb) r1 = (u32)g_007a4a40;
    if (fa < fb) r0 = *(u32*)(r1 + (r0 << 2));
    if (fa >= fb) r0 = ~0u;
    return r0;
}

// FUN_0015bfa4
u32 W_15bfa4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r3 = (u32)g_007ac024;
    r2 = 0u;
    if (r1 >= 3u) goto L_15bfcc;
    if (r0 == 0u) goto L_15bfcc;
    r1 = *(u32*)(r3 + (r1 << 2));
    r0 = Fn_626138_4(r0, r1, r2, r3);
    r2 = r0;
    L_15bfcc:;
    r0 = r2;
    return r0;
}

// FUN_0015c254
void W_15c254(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_157bb0_1(r0);
    if (r0 >= 3u) goto L_15c288;
    r1 = (u32)g_007abc64;
    r2 = 1u;
    r1 = *(u32*)(r1 + (r0 << 2));
    r0 = r4;
    r0 = Fn_15c33c_3(r0, r1, r2);
    r0 = r4;
    { Fn_15b168_1(r0); return; }
    L_15c288:;
    return;
}

// FUN_0015c3ec
u32 W_15c3ec(u32 a0) {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r5 = r0;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15c444;
    L_15c408:;
    r0 = *(u32*)(r5 + 12);
    r0 = *(u32*)(r0 + (r4 << 2));
    if (r0 == 0u) goto L_15c424;
    r0 = Fn_1fcd88_1(r0);
    r0 = *(u32*)(r5 + 12);
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15c424:;
    r4 = r4 + 1u;
    if (r4 < 8u) goto L_15c408;
    r0 = *(u32*)(r5 + 12);
    if (r0 == 0u) goto L_15c444;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r5 + 12) = r6;
    L_15c444:;
    return r0;
}

// FUN_0015c9e8
u32 W_15c9e8(u32 a0) {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r5 = r0;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15ca40;
    L_15ca04:;
    r0 = *(u32*)(r5 + 12);
    r0 = *(u32*)(r0 + (r4 << 2));
    if (r0 == 0u) goto L_15ca20;
    r0 = Fn_1fcd88_1(r0);
    r0 = *(u32*)(r5 + 12);
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15ca20:;
    r4 = r4 + 1u;
    if (r4 < 4u) goto L_15ca04;
    r0 = *(u32*)(r5 + 12);
    if (r0 == 0u) goto L_15ca40;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r5 + 12) = r6;
    L_15ca40:;
    return r0;
}

// FUN_0015d4a4
u32 W_15d4a4(u32 a0) {
    u32 r0 = a0, r1, r4, r5, r6, fa, fb;
    r5 = r0;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15d500;
    L_15d4c0:;
    r0 = *(u32*)(r5 + 12);
    r0 = *(u32*)(r0 + (r4 << 2));
    if (r0 == 0u) goto L_15d4e0;
    r1 = (u32)g_0025226c;
    r0 = Fn_202758_2(r0, r1);
    r0 = *(u32*)(r5 + 12);
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15d4e0:;
    r4 = r4 + 1u;
    if (r4 < 4u) goto L_15d4c0;
    r0 = *(u32*)(r5 + 12);
    if (r0 == 0u) goto L_15d500;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r5 + 12) = r6;
    L_15d500:;
    return r0;
}

// FUN_0015d6ac
void W_15d6ac(u32 a0) {
    u32 r0 = a0, r1, r4, r5, r6, fa, fb;
    r1 = (u32)g_008075dc;
    r5 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15d710;
    L_15d6d0:;
    r0 = *(u32*)(r5 + 12);
    r0 = *(u32*)(r0 + (r4 << 2));
    if (r0 == 0u) goto L_15d6f0;
    r1 = (u32)g_0025226c;
    r0 = Fn_202758_2(r0, r1);
    r0 = *(u32*)(r5 + 12);
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15d6f0:;
    r4 = r4 + 1u;
    if (r4 < 4u) goto L_15d6d0;
    r0 = *(u32*)(r5 + 12);
    if (r0 == 0u) goto L_15d710;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r5 + 12) = r6;
    L_15d710:;
    r0 = r5;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00165858
u32 W_165858(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, fa, fb;
    r5 = r0;
    r0 = *(u32*)(r0 + 8);
    r6 = r1;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r5 + 20);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_1658c8;
    r0 = *(u32*)(r5 + 4);
    if ((int)r6 < 0) r6 = 0u;
    if ((int)r0 < (int)r6) r6 = r0;
    r4 = 0u;
    *(u32*)(r5 + 84) = r6;
    if ((int)r0 <= 0) goto L_1658c8;
    L_16589c:;
    r0 = *(u32*)(r5 + 20);
    r2 = 1u;
    if ((int)r4 < (int)r6) r2 = 0u;
    r1 = *(u32*)(r0 + (r4 << 2));
    r0 = *(u32*)(r5 + 8);
    r0 = Fn_164ccc_3(r0, r1, r2);
    r0 = *(u32*)(r5 + 4);
    r4 = r4 + 1u;
    if ((int)r0 > (int)r4) goto L_16589c;
    L_1658c8:;
    return r0;
}

// FUN_00165c40
u32 W_165c40(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + (a1 << 2));
    return r0;
}

// FUN_00165d28
void W_165d28(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    *(u32*)(r0 + (a1 << 2)) = a2;
    return;
}

// FUN_00167a8c
void W_167a8c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r4, r5, r6, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) return;
    r5 = r1;
    r6 = (u32)g_008929cc;
    r4 = 0u;
    L_167aa4:;
    r2 = 1u;
    r0 = r5;
    r1 = *(u32*)(r6 + (r4 << 2));
    r0 = Fn_160810_3(r0, r1, r2);
    r4 = r4 + 1u;
    fa = r4; fb = 13u;
    if (fa < fb) goto L_167aa4;
    return;
}

// FUN_00169748
void W_169748(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 24);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_0016abc0
void W_16abc0(u32 a0) {
    u32 r1, r2;
    r2 = *(u32*)(a0);
    r1 = *(u32*)(a0 + 56);
    r2 = *(u32*)(r2 + 24);
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0016abfc
void W_16abfc(u32 a0) {
    u32 r1, r2;
    r2 = *(u32*)(a0);
    r1 = *(u32*)(a0 + 56);
    r2 = *(u32*)(r2 + 24);
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0016b134
void W_16b134(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 24);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_0017df90
u32 W_17df90(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 52);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_17dfac;
    return Fn_62693c_1(r0);
    L_17dfac:;
    return r0;
}

// FUN_0017e454
void W_17e454(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 56);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_17e46c;
    { Fn_15c33c_1(r0); return; }
    L_17e46c:;
    return;
}

// FUN_00180120
void W_180120(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 60);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_180138;
    { Fn_15c9d0_1(r0); return; }
    L_180138:;
    return;
}

// FUN_00180d80
void W_180d80() {
    u32 r0, r1, fa, fb;
    r0 = (u32)g_00896e4c;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u8*)(r0 + 140);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_180db4;
    r1 = r1 - 1u;
    r1 = r1 & 255u;
    *(u8*)(r0 + 140) = r1;
    if (r1 != 0) goto L_180db4;
    r1 = 0u;
    r0 = 6094848u;
    { Fn_5992a0_2(r0, r1); return; }
    L_180db4:;
    return;
}

// FUN_0018b0d4
u32 W_18b0d4(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r2 = (u32)g_0089a698;
    r0 = r2 + (r0 << 3);
    r0 = *(u32*)(r0 + (a1 << 2));
    return r0;
}

// FUN_0018ca5c
void W_18ca5c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r3;
    r3 = 10u;
    r0 = r0 + 72u; *(u32*)(r0) = r3;
    *(u32*)(r0 + 8) = a1;
    *(u32*)(r0 + 28) = a2;
    return;
}

// FUN_00190038
void W_190038(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0019037c
void W_19037c(u32 a0) {
    u32 r1, r2;
    r1 = 3u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001944b4
void W_1944b4(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = ~0u;
    *(u32*)(r0 + 132) = r1;
    *(u32*)(r0 + 136) = r1;
    r0 = r0 + 140u; *(u32*)(r0) = r1;
    r2 = 0u;
    *(u32*)(r0 + 8) = r2;
    return;
}

// FUN_00196f88
u32 W_196f88(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r4, r5, fa, fb;
    r4 = r1;
    r5 = (u32)g_0089aa6c;
    r0 = *(u32*)(r5);
    if (r0 != 0u) goto L_196fbc;
    r2 = 16u;
    r1 = 0u;
    r0 = 132u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 != 0u) r0 = Fn_207c84_1(r0);
    *(u32*)(r5) = r0;
    L_196fbc:;
    fa = r0; fb = 0u;
    if (fa != fb) { fa = r4; fb = 0u; }
    if (fa == fb) goto L_196fec;
    r1 = *(u32*)(r0 + 124);
    if (r1 != r4) goto L_196fe4;
    r0 = *(u8*)(r0 + 129);
    fa = r0; fb = 1u;
    if (fa != fb) { fa = r0; fb = 3u; }
    if (fa == fb) goto L_196fec;
    L_196fe4:;
    r0 = 0u;
    return r0;
    L_196fec:;
    r0 = 1u;
    return r0;
}

// FUN_0019ce00
void W_19ce00(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 52) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0019d158
void W_19d158(u32 a0) {
    u32 r1, r2;
    r1 = 3u;
    *(u32*)(a0 + 52) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0019e754
void W_19e754(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 52) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0019eaf4
void W_19eaf4(u32 a0) {
    u32 r1, r2;
    r1 = 3u;
    *(u32*)(a0 + 52) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0019f3ec
void W_19f3ec(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0019f5e0
void W_19f5e0(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001a0fcc
void W_1a0fcc(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r1, r2;
    r2 = *(u32*)(a0);
    r1 = a3;
    r2 = *(u32*)(r2 + 56);
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001a1ec8
void W_1a1ec8(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0;
    r0 = r0 + 288u; *(u32*)(r0) = a2;
    r0 = r0 + 4u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a3;
    return;
}

// FUN_001a90cc
void W_1a90cc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 36u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_001ac710
void W_1ac710(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 256);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001b02e0
void W_1b02e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5;
    r4 = r0;
    r0 = *(u32*)(r0 + 168);
    r5 = 0u;
    if ((int)r0 <= 0) goto L_1b0338;
    L_1b02f8:;
    r0 = *(u32*)(r4 + 192);
    r0 = *(u32*)(r0 + (r5 << 2));
    r1 = *(u32*)(r0 + 36);
    r0 = r4;
    r0 = Fn_19330c_2(r0, r1);
    r2 = r0;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r4 + 192);
    r3 = *(u32*)(r0 + 252);
    r1 = *(u32*)(r1 + (r5 << 2));
    r0 = r4;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    r0 = *(u32*)(r4 + 168);
    r5 = r5 + 1u;
    if ((int)r0 > (int)r5) goto L_1b02f8;
    L_1b0338:;
    return;
}

// FUN_001b04a0
void W_1b04a0(u32 a0, u32 a1) {
    u32 r1 = a1;
    *(u32*)(a0 + 376) = r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 256);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001b2afc
void W_1b2afc(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001b2d6c
void W_1b2d6c(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001b3790
void W_1b3790(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001b3a00
void W_1b3a00(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001b4444
void W_1b4444(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001b46b4
void W_1b46b4(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001b72d8
u32 W_1b72d8(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = *(u32*)(r0 + 320);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 324);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_1b7300;
    r2 = *(u32*)(r1 + 36);
    r1 = (u32)g_00896e94;
    *(u32*)(r1 + 36) = r2;
    r0 = *(u32*)(r0 + 36);
    *(u32*)(r1 + 40) = r0;
    L_1b7300:;
    r0 = (u32)g_00896e94;
    return r0;
}

// FUN_001bc8a8
void W_1bc8a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6;
    r5 = r0;
    r6 = (u32)g_007c4a14;
    r4 = 0u;
    *(u8*)(r0 + 94) = r1;
    L_1bc8bc:;
    r2 = 0u;
    r1 = *(u32*)(r6 + (r4 << 2));
    r0 = r5;
    r0 = Fn_1bcabc_3(r0, r1, r2);
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_1bc8bc;
    return;
}

// FUN_001bca38
u32 W_1bca38(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r2 = *(u8*)(r0 + 101);
    fa = r2; fb = 0u;
    if (fa == fb) r2 = *(u8*)(r0 + 102);
    if (fa == fb) { fa = r2; fb = 0u; }
    if (fa != fb) goto L_1bca7c;
    r2 = *(u8*)(r0 + 103);
    fa = r2; fb = 0u;
    if (fa == fb) r2 = *(u8*)(r0 + 104);
    if (fa == fb) { fa = r2; fb = 0u; }
    if (fa == fb) r2 = *(u8*)(r0 + 105);
    if (fa == fb) { fa = r2; fb = 0u; }
    if (fa != fb) goto L_1bca7c;
    *(u32*)(r0 + 112) = r1;
    r1 = *(u32*)(r1 + 36);
    r2 = 1u;
    r0 = Fn_1bcabc_3(r0, r1, r2);
    L_1bca7c:;
    r0 = 0u;
    return r0;
}

// FUN_001bca84
void W_1bca84(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6;
    r5 = r0;
    r6 = (u32)g_007c4a20;
    r4 = 0u;
    *(u8*)(r0 + 95) = r1;
    L_1bca98:;
    r2 = 0u;
    r1 = *(u32*)(r6 + (r4 << 2));
    r0 = r5;
    r0 = Fn_1bcabc_3(r0, r1, r2);
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_1bca98;
    return;
}

// FUN_001bcba8
void W_1bcba8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6;
    r5 = r0;
    r6 = (u32)g_007c49fc;
    r4 = 0u;
    *(u8*)(r0 + 93) = r1;
    L_1bcbbc:;
    r2 = 0u;
    r1 = *(u32*)(r6 + (r4 << 2));
    r0 = r5;
    r0 = Fn_1bcabc_3(r0, r1, r2);
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_1bcbbc;
    return;
}

// FUN_001be5e0
u32 W_1be5e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 120);
    r5 = r1;
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u8*)(r4 + 93);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_1be614;
    r1 = *(u32*)(r0 + 36);
    *(u32*)(r4 + 112) = r1;
    r0 = Fn_5c7b7c_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 120) = r0;
    L_1be614:;
    r1 = r5;
    r0 = r4;
    r0 = Fn_199290_2(r0, r1);
    r0 = 0u;
    return r0;
}

// FUN_001c5608
void W_1c5608(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 256);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001c7ae0
void W_1c7ae0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 100u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_001cf3a8
u32 W_1cf3a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = r1;
    if (r0 == 0) goto L_1cf408;
    r2 = *(u32*)(r4 + 96);
    r1 = *(u32*)(r0 + 36);
    r6 = ~0u;
    fa = r2; fb = r1;
    if (fa != fb) *(u32*)(r4 + 96) = r6;
    if (fa != fb) goto L_1cf404;
    r5 = r1 - 9u;
    if (r5 > 7u) goto L_1cf404;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r4 = r4 + 92u;
    r2 = 0u;
    r1 = r2;
    r0 = 2u;
    *(u32*)(r4 + 0) = r5; *(u32*)(r4 + 4) = r6;
    r0 = Fn_5c7c14_3(r0, r1, r2);
    L_1cf404:;
    r0 = 0u;
    L_1cf408:;
    return r0;
}

// FUN_001d632c
void W_1d632c(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 156);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001d6338
void W_1d6338(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 160);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001d6344
void W_1d6344(u32 a0) {
    u32 r1;
    r1 = 1u;
    *(u8*)(a0 + 93) = r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 156);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001d6358
void W_1d6358(u32 a0) {
    u32 r1;
    r1 = 0u;
    *(u8*)(a0 + 93) = r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 156);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001d636c
void W_1d636c(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 160);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001e1efc
u32 W_1e1efc(u32 a0, u32 a1) {
    u32 r0 = a0;
    *(u8*)(r0) = a1;
    *(u8*)(r0 + 1) = a1;
    *(u32*)(r0 + 4) = a1;
    r0 = r0 + 8u; *(u32*)(r0) = a1;
    r0 = r0 + 4u;
    r0 = Fn_5e8b54_2(r0, a1);
    r0 = r0 - 12u;
    return r0;
}

// FUN_001e3c78
void W_1e3c78(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_1c7d30_1(r0);
    r4 = r4 + 356u;
    r0 = 0u;
    r1 = ~0u;
    *(u32*)(r4 + 0) = r0; *(u32*)(r4 + 4) = r1;
    return;
}

// FUN_001e858c
void W_1e858c(u32 a0) {
    u32 r1, r2;
    r1 = 3u;
    *(u32*)(a0 + 36) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 1u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001ebf84
void W_1ebf84(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 256);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_001f12bc
void W_1f12bc(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001f152c
void W_1f152c(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001f98b8
void W_1f98b8(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 44) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001f9c2c
void W_1f9c2c(u32 a0) {
    u32 r1, r2;
    r1 = 3u;
    *(u32*)(a0 + 44) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_001ff568
void W_1ff568(u32 a0) {
    u32 r1, r2;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 116);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0020a4d8
void W_20a4d8(u32 a0) {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 40u;
    r1 = 2u;
    r2 = 0u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_0020a6c8
void W_20a6c8(u32 a0) {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 40u;
    r1 = 3u;
    r2 = 0u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_0020c780
void W_20c780(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 256);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_00221560
void W_221560(u32 a0, u32 a1) {
    u32 r1 = a1, r2;
    r2 = 1u;
    *(u32*)(a0 + 44) = r2;
    *(u8*)(a0 + 48) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_00221e24
u32 W_221e24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = r0;
    r0 = r1;
    *(u32*)(r2 + 2300) = r1;
    r1 = *(u32*)(r1 + 36);
    fa = r1; fb = 13u;
    if (fa != fb) { fa = r1; fb = 27u; }
    if (fa != fb) goto L_221e54;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_221e54:;
    r0 = 0u;
    return r0;
}

// FUN_0022c140
void W_22c140(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 44) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0022d220
void W_22d220(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0022d4cc
void W_22d4cc(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0022edf0
u32 W_22edf0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 104);
    if (r0 == 0u) goto L_22ee44;
    if (r2 != 0u) goto L_22ee44;
    if (r0 != r1) goto L_22ee44;
    r1 = *(u32*)(r0 + 36);
    if (r1 == 1u) goto L_22ee2c;
    fa = r1; fb = 2u;
    if (fa != fb) { fa = r1; fb = 4u; }
    if (fa != fb) goto L_22ee3c;
    L_22ee2c:;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_22ee3c:;
    r0 = 0u;
    *(u32*)(r4 + 104) = r0;
    L_22ee44:;
    r0 = 0u;
    return r0;
}

// FUN_0022faac
void W_22faac(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r1, r2;
    r2 = *(u32*)(a0);
    r1 = a3;
    r2 = *(u32*)(r2 + 56);
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_002320dc
u32 W_2320dc(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    r0 = r1 - 8u;
    r1 = (u32)((int)r0 >> 31);
    r1 = r0 + (r1 >> 30);
    r1 = r1 & ~3u;
    r0 = r0 - r1;
    return r0;
}

// FUN_002329e8
void W_2329e8(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_00232c9c
void W_232c9c(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_00234de4
void W_234de4(u32 a0) {
    u32 r1, fa, fb;
    r1 = *(u8*)(a0 + 144);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u8*)(a0 + 128);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) goto L_234dfc;
    { Fn_234604_2(a0, r1); return; }
    L_234dfc:;
    return;
}

// FUN_00235f30
u32 W_235f30(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 113);
    r5 = r1;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 80);
    if (fa != fb) { fa = r0; fb = r5; }
    if (fa == fb) goto L_235f84;
    r0 = Fn_461760_2(r0, r1);
    r1 = 4u - r5;
    r0 = r0 + (r0 << 2);
    r1 = r1 + r0;
    r3 = 0u;
    r0 = *(u32*)(r4 + 44);
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = r4;
    *(u32*)(r4 + 80) = r5;
    r1 = 1u;
    return Fn_235888_2(r0, r1);
    L_235f84:;
    return r0;
}

// FUN_0023a148
u32 W_23a148(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 114);
    if (r0 == 0u) goto L_23a1a0;
    r0 = *(u32*)(r4 + 108);
    if (r0 != 0u) goto L_23a1a0;
    r5 = 0u;
    if (r1 == 0u) goto L_23a180;
    r0 = *(u32*)(r1 + 36);
    if (r0 == 10u) goto L_23a1a8;
    L_23a180:;
    r0 = *(u32*)(r4 + 104);
    if (r0 == 0u) goto L_23a1a0;
    L_23a18c:;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    *(u32*)(r4 + 104) = r5;
    L_23a1a0:;
    r0 = 0u;
    return r0;
    L_23a1a8:;
    r0 = *(u32*)(r4 + 104);
    fa = r0; fb = 0u;
    if (fa != fb) { fa = r0; fb = r1; }
    if (fa == fb) goto L_23a1a0;
    goto L_23a18c;
}

// FUN_0023a5d4
void W_23a5d4(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 44) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0023a690
void W_23a690(u32 a0) {
    u32 r1, r2;
    r1 = 3u;
    *(u32*)(a0 + 44) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0023bb84
void W_23bb84(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0023bc10
void W_23bc10(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0023c54c
void W_23c54c(u32 a0) {
    u32 r1, r2;
    r1 = 1u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_0023c7d0
void W_23c7d0(u32 a0) {
    u32 r1, r2;
    r1 = 2u;
    *(u32*)(a0 + 40) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 68);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}
