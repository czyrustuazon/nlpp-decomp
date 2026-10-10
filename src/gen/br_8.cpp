// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_409988_3(u32, u32, u32);
u32 Fn_42a4b4_1(u32);
u32 Fn_429538_2(u32, u32);
extern char g_00823ef0[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_3e9724_2(u32, u32);
u32 Fn_3e9fdc_2(u32, u32);
u32 Fn_411330_1(u32);
u32 Fn_41145c_2(u32, u32);
u32 Fn_4115e8_1(u32);
u32 Fn_414628_2(u32, u32);
u32 Fn_4149b4_2(u32, u32);
u32 Fn_42525c_2(u32, u32);
extern char g_00824088[];
u32 Fn_4178c8_0();
u32 Fn_410438_1(u32);
u32 Fn_410cb8_1(u32);
u32 Fn_410a2c_2(u32, u32);
u32 Fn_4202f4_1(u32);
u32 Fn_62f560_1(u32);
extern char g_0089aa6c[];
u32 Fn_207c84_1(u32);
u32 Fn_410c70_3(u32, u32, u32);
extern char g_00824480[];
u32 Fn_410f70_0();
u32 Fn_4274c4_3(u32, u32, u32);
u32 Fn_4040ac_2(u32, u32);
extern char g_008247d4[];
u32 Fn_4177b8_0();
extern char g_0082484c[];
u32 Fn_42064c_3(u32, u32, u32);
u32 Fn_407e94_3(u32, u32, u32);
u32 Fn_407cc4_1(u32);
u32 Fn_4274c4_2(u32, u32);
u32 Fn_414cac_1(u32);
u32 Fn_4276d4_1(u32);
u32 Fn_4274c4_1(u32);
u32 Fn_4178a4_1(u32);
u32 Fn_420358_2(u32, u32);
u32 Fn_2f5330_3(u32, u32, u32);
u32 Fn_304518_3(u32, u32, u32);
u32 Fn_3ea6ac_1(u32);
u32 Fn_42f514_1(u32);
u32 Fn_42f6c0_2(u32, u32);
u32 Fn_42f6f8_1(u32);
u32 Fn_433e4c_1(u32);
u32 Fn_43a590_2(u32, u32);
extern char g_00824fc8[];
extern char g_008bfa38[];
u32 Fn_2024b0_1(u32);
u32 Fn_4342b8_1(u32);
u32 Fn_4357ac_3(u32, u32, u32);
extern char g_00825024[];
extern char g_008bba3c[];
u32 Fn_4303e0_3(u32, u32, u32);
u32 Fn_021ca0_3(u32, u32, u32);
extern char g_00825424[];
extern char g_008bfa2c[];
u32 Fn_3eeb38_3(u32, u32, u32);
u32 Fn_44178c_3(u32, u32, u32);
u32 Fn_0151c8_1(u32);
u32 Fn_402d58_3(u32, u32, u32);
u32 Fn_43a468_2(u32, u32);
extern char g_00825560[];
extern char g_0082557c[];
u32 Fn_433d3c_2(u32, u32);
u32 Fn_433e4c_2(u32, u32);
extern char g_00825620[];
u32 Fn_2024b0_3(u32, u32, u32);
extern char g_008256f0[];
extern char g_008a8348[];
u32 Fn_5ebcb4_2(u32, u32);
extern char g_007c7d48[];
extern char g_008a5788[];
extern char g_007c7b38[];
extern char g_008bfa54[];
extern char g_007c76bc[];
extern char g_007c73a4[];
extern char g_008a5624[];
extern char g_007c4c2c[];

// FUN_00409e70
u32 W_409e70(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r2 = *(u32*)(r0 + 36);
    r1 = *(u32*)(r2 + 96);
    r1 = r1 + 10u;
    fa = r1; fb = 600u;
    *(u32*)(r2 + 96) = r1;
    r1 = *(u32*)(r0 + 36);
    if ((int)fa > (int)fb) r2 = 600u;
    if ((int)fa > (int)fb) *(u32*)(r1 + 96) = r2;
    r1 = *(u32*)(r0 + 36);
    r1 = *(u32*)(r1 + 96);
    if ((int)r1 >= 600) r0 = Fn_409988_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_00409f7c
u32 W_409f7c(u32 a0) {
    u32 r0 = a0, r4, r5, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 24);
    if (r0 == 6u) goto L_409fcc;
    r0 = *(u32*)(r4 + 8);
    r5 = 1u;
    fa = r0; fb = 0u;
    if (fa == fb) *(u8*)(r4 + 29) = r5;
    if (fa == fb) goto L_409fbc;
    r0 = Fn_42a4b4_1(r0);
    if (r0 != 0u) goto L_409fbc;
    r0 = 6u;
    *(u32*)(r4 + 24) = r0;
    *(u8*)(r4 + 29) = r5;
    L_409fbc:;
    r0 = *(u8*)(r4 + 29);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_409fd0;
    L_409fcc:;
    r0 = 1u;
    L_409fd0:;
    return r0;
}

// FUN_0040a3b4
void W_40a3b4(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = *(u32*)(r0 + 12);
    r2 = 1u;
    *(u32*)(r1 + 2196) = r2;
    r0 = *(u32*)(r0 + 8);
    *(u32*)(r0 + 140) = r2;
    return;
}

// FUN_0040a3e0
u32 W_40a3e0(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 24);
    if (r0 != 3u) goto L_40a418;
    r0 = *(u32*)(r4 + 12);
    r1 = 0u;
    *(u8*)(r4 + 80) = r1;
    *(u8*)(r4 + 81) = r1;
    if (r0 != 0u) r0 = Fn_429538_2(r0, r1);
    r0 = *(u32*)(r4 + 32);
    r0 = r0 + 1u;
    *(u32*)(r4 + 32) = r0;
    L_40a418:;
    return r0;
}

// FUN_0040a54c
u32 W_40a54c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 36);
    fa = r0; fb = 4u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0040a814
void W_40a814(u32 a0, u32 a1) {
    u32 r1 = a1, r2;
    r2 = *(u32*)(a0 + 76);
    if ((int)r2 >= (int)r1) r1 = r2;
    *(u32*)(a0 + 76) = r1;
    return;
}

// FUN_0040b104
void W_40b104(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4;
    r4 = r0;
    if (r1 == 2u) goto L_40b11c;
    { Fn_3e9724_2(r0, r1); return; }
    L_40b11c:;
    r2 = 16u;
    r1 = 0u;
    r0 = 32u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_40b148;
    r1 = r4;
    r0 = Fn_3e9fdc_2(r0, r1);
    r1 = (u32)g_00823ef0;
    *(u32*)(r0) = r1;
    L_40b148:;
    return;
}

// FUN_0040b4f0
u32 W_40b4f0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 52);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = r0 ^ 1u;
    return r0;
}

// FUN_0040b580
void W_40b580(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 152);
    if (r2 != a1) *(u32*)(a0 + 152) = a1;
    return;
}

// FUN_0040b624
u32 W_40b624(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 52);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = r0 ^ 1u;
    return r0;
}

// FUN_0040f720
u32 W_40f720(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 36);
    r0 = Fn_411330_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_40f754;
    r0 = *(u32*)(r4 + 36);
    r0 = Fn_4115e8_1(r0);
    r0 = *(u32*)(r4 + 36);
    r1 = 0u;
    r0 = Fn_41145c_2(r0, r1);
    r0 = 1u;
    L_40f754:;
    return r0;
}

// FUN_0040f758
void W_40f758(u32 a0) {
    u32 r0 = a0, r1, r4, r5, fa, fb;
    r5 = r0;
    r0 = *(u32*)(r0 + 36);
    r1 = *(u32*)(r0 + 212);
    fa = r1; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_40f784;
    r1 = *(u32*)(r0 + 36);
    r0 = *(u32*)(r0 + 432);
    { Fn_42525c_2(r0, r1); return; }
    L_40f784:;
    r0 = *(u32*)(r5 + 36);
    r1 = *(u32*)(r0 + 24);
    r0 = *(u32*)(r0 + 460);
    if (r1 == 3u) goto L_40f7b8;
    r0 = Fn_4149b4_2(r0, r1);
    L_40f79c:;
    r0 = *(u32*)(r5 + 36);
    r1 = r4;
    r0 = Fn_41145c_2(r0, r1);
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_40f784;
    return;
    L_40f7b8:;
    r1 = r4;
    r0 = Fn_414628_2(r0, r1);
    goto L_40f79c;
}

// FUN_0041019c
void W_41019c(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 36);
    r1 = (r1 << 4) - r1;
    r0 = r0 + (r1 << 2);
    r0 = r0 + (a2 << 2);
    *(u32*)(r0 + 40) = a3;
    return;
}

// FUN_004103f0
void W_4103f0() {
    u32 r0, r1, r2;
    r0 = Fn_4178c8_0();
    r1 = 0u;
    *(u32*)(r0 + 24) = r1;
    *(u32*)(r0 + 28) = r1;
    *(u8*)(r0 + 32) = r1;
    *(u8*)(r0 + 33) = r1;
    r2 = (u32)g_00824088;
    *(u8*)(r0 + 34) = r1;
    *(u8*)(r0 + 35) = r1;
    *(u32*)(r0 + 36) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_004105a8
u32 W_4105a8(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_410cb8_1(r0);
    r0 = *(u32*)(r4 + 24);
    if (r0 != 0u) goto L_4105d4;
    r0 = *(u32*)(r4 + 156);
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 2u;
    if ((int)fa >= (int)fb) r0 = r4;
    if ((int)fa >= (int)fb) r0 = Fn_410438_1(r0);
    L_4105d4:;
    r0 = 1u;
    return r0;
}

// FUN_00410714
void W_410714(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 160);
    if (r2 != a1) *(u32*)(a0 + 160) = a1;
    return;
}

// FUN_00410748
void W_410748(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 156);
    if (r2 != a1) *(u32*)(a0 + 156) = a1;
    return;
}

// FUN_00410a0c
u32 W_410a0c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 24);
    if (r1 == 0u) goto L_410a24;
    if (r1 == 1u) r0 = Fn_410a2c_2(r0, r1);
    L_410a24:;
    r0 = 1u;
    return r0;
}

// FUN_00410cb8
u32 W_410cb8(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_4202f4_1(r0);
    r0 = *(u32*)(r4 + 76);
    r0 = Fn_62f560_1(r0);
    if (r0 == 0u) goto L_410cfc;
    r0 = *(u32*)(r4 + 76);
    r1 = *(u32*)(r4 + 116);
    r0 = *(u32*)(r0 + 36);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 76);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    r0 = ((u32(*)(u32))r1)(r0);
    L_410cfc:;
    r0 = 1u;
    return r0;
}

// FUN_00410d88
u32 W_410d88(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_4202f4_1(r0);
    r0 = *(u32*)(r4 + 76);
    r0 = Fn_62f560_1(r0);
    if (r0 == 0u) goto L_410dcc;
    r0 = *(u32*)(r4 + 76);
    r1 = *(u32*)(r4 + 116);
    r0 = *(u32*)(r0 + 36);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 76);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    r0 = ((u32(*)(u32))r1)(r0);
    L_410dcc:;
    r0 = 1u;
    return r0;
}

// FUN_00410fdc
void W_410fdc(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 156);
    if (r2 != a1) *(u32*)(a0 + 156) = a1;
    return;
}

// FUN_00411194
u32 W_411194(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 2u;
    r2 = *(u32*)(r0 + 48);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 12u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_00411230
u32 W_411230(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_410cb8_1(r0);
    r0 = *(u32*)(r4 + 24);
    fa = r0; fb = 3u;
    if (fa != fb) r0 = 1u;
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_004125d8
u32 W_4125d8() {
    u32 r0, r1, r2, r4, fa, fb;
    r4 = (u32)g_0089aa6c;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_412600;
    L_4125ec:;
    r0 = *(u32*)(r0 + 120);
    fa = r0; fb = 1u;
    if (fa == fb) goto L_4125fc;
    L_4125f8:;
    r0 = 0u;
    L_4125fc:;
    return r0;
    L_412600:;
    r2 = 16u;
    r1 = 0u;
    r0 = 132u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_207c84_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4) = r0;
    if (fa == fb) goto L_4125f8;
    goto L_4125ec;
}

// FUN_00412630
u32 W_412630() {
    u32 r0, r1, r2, r4, fa, fb;
    r4 = (u32)g_0089aa6c;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_41264c;
    L_412644:;
    r0 = *(signed char*)(r0 + 130);
    return r0;
    L_41264c:;
    r2 = 16u;
    r1 = 0u;
    r0 = 132u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_207c84_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4) = r0;
    if (fa != fb) goto L_412644;
    return r0;
}

// FUN_00413dc4
void W_413dc4(u32 a0) {
    u32 r1, r2;
    r1 = *(u32*)(a0 + 48);
    r2 = *(u32*)(a0 + 156);
    r1 = r1 + r2;
    *(u32*)(a0 + 48) = r1;
    { Fn_410c70_3(a0, r1, r2); return; }
}

// FUN_00414e10
u32 W_414e10(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_4202f4_1(r0);
    r0 = *(u32*)(r4 + 76);
    r0 = Fn_62f560_1(r0);
    if (r0 == 0u) goto L_414e54;
    r0 = *(u32*)(r4 + 76);
    r1 = *(u32*)(r4 + 116);
    r0 = *(u32*)(r0 + 36);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 76);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    r0 = ((u32(*)(u32))r1)(r0);
    L_414e54:;
    r0 = 1u;
    return r0;
}

// FUN_00414f20
u32 W_414f20() {
    u32 r0, r1, r2;
    r0 = Fn_410f70_0();
    r1 = (u32)g_00824480;
    r2 = 0u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 76) = r2;
    return r0;
}

// FUN_0041622c
u32 W_41622c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 228);
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 12u;
    if (fa == fb) *(u32*)(r0 + 24) = r1;
    r0 = 1u;
    return r0;
}

// FUN_00416244
u32 W_416244(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 228);
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 14u;
    if (fa == fb) *(u32*)(r0 + 24) = r1;
    r0 = 1u;
    return r0;
}

// FUN_0041729c
void W_41729c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    L_41729c:;
    r2 = r0;
    r0 = *(u32*)(r0 + 152);
    fa = r0; fb = r1;
    if (fa == fb) goto L_4172bc;
    r0 = r1;
    *(u32*)(r2 + 152) = r1;
    r1 = r2;
    goto L_41729c;
    L_4172bc:;
    return;
}

// FUN_004172e8
void W_4172e8(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 156);
    if (r2 != a1) *(u32*)(a0 + 156) = a1;
    return;
}

// FUN_004172f8
void W_4172f8(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 160);
    if (r2 != a1) *(u32*)(a0 + 160) = a1;
    return;
}

// FUN_004178a4
u32 W_4178a4(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(u32*)(r0 + 16);
    if (r2 == 0u) goto L_4178bc;
    r1 = r0;
    r0 = r2;
    return Fn_4274c4_3(r0, r1, r2);
    L_4178bc:;
    return r0;
}

// FUN_0041c5a0
void W_41c5a0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, r7;
    r6 = r0;
    r7 = r1;
    r4 = 0u;
    L_41c5b0:;
    r5 = r6 + (r4 << 2);
    r0 = *(u32*)(r5 + 96);
    if (r0 == 0u) goto L_41c5e0;
    r1 = r4 + (r4 << 1);
    r1 = r7 + (r1 << 2);
    r0 = Fn_4040ac_2(r0, r1);
    r0 = *(u32*)(r5 + 96);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_41c5e0:;
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_41c5b0;
    r0 = 0u;
    *(u32*)(r6 + 108) = r0;
    return;
}

// FUN_0041e7a4
void W_41e7a4(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 180);
    if (r2 == 0u) *(u32*)(a0 + 180) = a1;
    return;
}

// FUN_00420184
u32 W_420184() {
    u32 r0, r1, r2;
    r0 = Fn_4177b8_0();
    r1 = (u32)g_008247d4;
    r2 = 1u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 168) = r2;
    return r0;
}

// FUN_0042060c
u32 W_42060c() {
    u32 r0, r1, r2;
    r0 = Fn_4177b8_0();
    r1 = (u32)g_0082484c;
    r2 = 0u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 168) = r2;
    return r0;
}

// FUN_0042063c
void W_42063c(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 36);
    if (r2 != a1) *(u32*)(a0 + 36) = a1;
    return;
}

// FUN_0042117c
void W_42117c(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 48);
    if (r2 != a1) *(u32*)(a0 + 48) = a1;
    return;
}

// FUN_00422428
u32 W_422428(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(u32*)(r0 + 36);
    r1 = *(u32*)(r2 + 96);
    r1 = r1 + 5u;
    *(u32*)(r2 + 96) = r1;
    if ((int)r1 > 600) r0 = Fn_42064c_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_00422d64
void W_422d64(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 156);
    if (r2 == a1) goto L_422d78;
    *(u32*)(a0 + 156) = a1;
    { Fn_407e94_3(a0, a1, r2); return; }
    L_422d78:;
    return;
}

// FUN_00422de8
u32 W_422de8(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 0u;
    r2 = *(u32*)(r0 + 48);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 19u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_00422ed4
void W_422ed4(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_407cc4_1(r0);
    r0 = *(u8*)(r4 + 121);
    if (r0 == 0u) goto L_422efc;
    r0 = *(u32*)(r4 + 76);
    r1 = 0u;
    r0 = *(u32*)(r0 + 36);
    *(u8*)(r0 + 132) = r1;
    L_422efc:;
    r0 = ~0u;
    *(u32*)(r4 + 156) = r0;
    return;
}

// FUN_00422fac
void W_422fac(u32 a0, u32 a1, u32 a2) {
    u32 r1 = a1, r2 = a2, r3;
    r3 = a0 + (r1 << 2);
    r1 = *(u32*)(r3 + 232);
    if ((int)r1 <= (int)r2) r1 = r2;
    *(u32*)(r3 + 232) = r1;
    r1 = *(u32*)(a0 + 260);
    if ((int)r1 > (int)r2) r2 = r1;
    *(u32*)(a0 + 260) = r2;
    return;
}

// FUN_00423164
void W_423164(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r4 = r0 + (r1 << 2);
    r0 = *(u32*)(r4 + 292);
    if (r0 == 0u) goto L_42318c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 292) = r0;
    L_42318c:;
    return;
}

// FUN_004233f0
void W_4233f0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r4, r5;
    r0 = r0 + (r1 << 2);
    r5 = *(u32*)(r0 + 8);
    if (r5 == 0u) goto L_423434;
    r4 = *(u32*)(r5);
    if (a2 == 0u) goto L_423448;
    goto L_423424;
    L_423414:;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 28);
    r0 = ((u32(*)(u32))r1)(r0);
    r4 = *(u32*)(r4 + 8);
    L_423424:;
    r1 = *(u32*)(r5);
    r0 = *(u32*)(r4 + 8);
    if (r0 != r1) goto L_423414;
    L_423434:;
    return;
    L_423438:;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 32);
    r0 = ((u32(*)(u32))r1)(r0);
    r4 = *(u32*)(r4 + 8);
    L_423448:;
    r1 = *(u32*)(r5);
    r0 = *(u32*)(r4 + 8);
    if (r0 != r1) goto L_423438;
    return;
}

// FUN_0042397c
void W_42397c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6, r7, fa, fb;
    r6 = 0u;
    r7 = r0;
    L_423988:;
    r0 = r7 + (r6 << 2);
    r5 = *(u32*)(r0 + 8);
    fa = r5; fb = 0u;
    if (fa != fb) r4 = *(u32*)(r5);
    if (fa == fb) goto L_4239cc;
    goto L_4239bc;
    L_4239a0:;
    r0 = *(u8*)(r1 + 34);
    if (r0 == 0u) goto L_4239b8;
    r0 = r5;
    r0 = Fn_4274c4_2(r0, r1);
    r4 = *(u32*)(r4 + 4);
    L_4239b8:;
    r4 = *(u32*)(r4 + 8);
    L_4239bc:;
    r0 = *(u32*)(r5);
    r1 = *(u32*)(r4 + 8);
    if (r1 != r0) goto L_4239a0;
    L_4239cc:;
    r6 = r6 + 1u;
    if ((int)r6 < 51) goto L_423988;
    return;
}

// FUN_004239dc
void W_4239dc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4;
    *(u32*)(r0 + 212) = r1;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 120u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 != 0u) r0 = Fn_414cac_1(r0);
    *(u32*)(r4 + 216) = r0;
    return;
}

// FUN_00423b44
void W_423b44(u32 a0) {
    u32 r0 = a0, r4, r5;
    r5 = r0;
    r4 = 0u;
    L_423b50:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 8);
    if (r0 != 0u) r0 = Fn_4276d4_1(r0);
    r4 = r4 + 1u;
    if ((int)r4 < 51) goto L_423b50;
    return;
}

// FUN_004244ac
void W_4244ac(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 36);
    if (r2 != a1) *(u32*)(a0 + 36) = a1;
    return;
}

// FUN_00424724
u32 W_424724(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 0u;
    r2 = *(u32*)(r0 + 48);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 1u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_0042474c
void W_42474c(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 164);
    if (r2 != a1) *(u32*)(a0 + 164) = a1;
    return;
}

// FUN_0042475c
u32 W_42475c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 4u;
    r2 = *(u32*)(r0 + 48);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 1u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_00424da4
void W_424da4(u32 a0, u32 a1) {
    u32 r1 = a1, r2;
    r2 = *(u32*)(a0 + 36);
    if (r2 == r1) goto L_424de4;
    *(u32*)(a0 + 36) = r1;
    r2 = *(u32*)(r1 + 36);
    r2 = *(u32*)(r2 + 448);
    *(u32*)(a0 + 64) = r2;
    r2 = *(u32*)(r1 + 40);
    r2 = *(u32*)(r2 + 448);
    *(u32*)(a0 + 68) = r2;
    r2 = *(u32*)(r1 + 36);
    r2 = *(u32*)(r2 + 440);
    *(u32*)(a0 + 72) = r2;
    r1 = *(u32*)(r1 + 40);
    r1 = *(u32*)(r1 + 440);
    *(u32*)(a0 + 76) = r1;
    L_424de4:;
    return;
}

// FUN_004262c4
void W_4262c4(u32 a0, u32 a1) {
    u32 r2;
    r2 = *(u32*)(a0 + 156);
    if (r2 != a1) *(u32*)(a0 + 156) = a1;
    return;
}

// FUN_00427600
void W_427600(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6;
    r6 = r1;
    r4 = *(u32*)(r0);
    r5 = r0;
    goto L_427630;
    L_427614:;
    r0 = *(u32*)(r1 + 12);
    if (r0 != r6) goto L_42762c;
    r0 = r5;
    r0 = Fn_4274c4_2(r0, r1);
    r4 = *(u32*)(r4 + 4);
    L_42762c:;
    r4 = *(u32*)(r4 + 8);
    L_427630:;
    r0 = *(u32*)(r5);
    r1 = *(u32*)(r4 + 8);
    if (r1 != r0) goto L_427614;
    return;
}

// FUN_004276d4
u32 W_4276d4(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r5 = r0;
    r4 = *(u32*)(r0);
    goto L_4276f4;
    L_4276e4:;
    r0 = r5;
    r0 = Fn_4274c4_1(r0);
    r0 = *(u32*)(r4 + 4);
    r4 = *(u32*)(r0 + 8);
    L_4276f4:;
    r0 = *(u32*)(r5);
    r1 = *(u32*)(r4 + 8);
    if (r1 != r0) goto L_4276e4;
    return r0;
}

// FUN_0042816c
void W_42816c(u32 a0) {
    u32 r0 = a0, r4, r5;
    r5 = r0;
    r4 = 0u;
    L_428178:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 40);
    if (r0 != 0u) r0 = Fn_4178a4_1(r0);
    r4 = r4 + 1u;
    if ((int)r4 < 8) goto L_428178;
    r0 = *(u32*)(r5 + 36);
    if (r0 == 0u) goto L_4281ac;
    r0 = Fn_4178a4_1(r0);
    r0 = 0u;
    *(u32*)(r5 + 36) = r0;
    L_4281ac:;
    return;
}

// FUN_004281b0
void W_4281b0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_4281c0:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 40);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_420358_2(r0, r1);
    r4 = r4 + 1u;
    if ((int)r4 < 8) goto L_4281c0;
    r0 = *(u32*)(r5 + 36);
    if (r0 == 0u) goto L_4281f8;
    r1 = r6;
    { Fn_420358_2(r0, r1); return; }
    L_4281f8:;
    return;
}

// FUN_0042863c
u32 W_42863c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 1u;
    r2 = *(u32*)(r0 + 48);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 11u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_00428664
u32 W_428664(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r1 = 0u;
    r2 = *(u32*)(r0 + 48);
    r0 = r4;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 10u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_0042b418
u32 W_42b418(u32 a0, u32 a1) {
    u32 r0, r2;
    r2 = a1 - 512u;
    r2 = r2 - 46u;
    if (r2 == 0) r0 = 1u;
    if (r2 == 0) goto L_42b42c;
    return Fn_2f5330_3(r0, a1, r2);
    L_42b42c:;
    return r0;
}

// FUN_0042b430
u32 W_42b430(u32 a0, u32 a1) {
    u32 r0, r2;
    r2 = a1 - 512u;
    r2 = r2 - 46u;
    if (r2 == 0) r0 = 1u;
    if (r2 == 0) goto L_42b444;
    return Fn_304518_3(r0, a1, r2);
    L_42b444:;
    return r0;
}

// FUN_0042f080
void W_42f080(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = *(u32*)(r0 + 328);
    r4 = r0;
    r0 = *(u32*)(r0 + 100);
    if (r1 == 0u) goto L_42f0ac;
    if (r1 == 1u) goto L_42f0c0;
    if (r1 == 2u) r0 = Fn_42f6c0_2(r0, r1);
    goto L_42f0c8;
    L_42f0ac:;
    r0 = Fn_42f514_1(r0);
    r0 = 0u;
    *(u8*)(r4 + 354) = r0;
    goto L_42f0c8;
    L_42f0c0:;
    r0 = Fn_42f6f8_1(r0);
    L_42f0c8:;
    r0 = r4;
    { Fn_3ea6ac_1(r0); return; }
}

// FUN_0042fc78
void W_42fc78(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r1 = 0u;
    r0 = Fn_43a590_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) *(u8*)(r4 + 8) = r0;
    if (fa != fb) goto L_42fca4;
    r0 = r4;
    { Fn_433e4c_1(r0); return; }
    L_42fca4:;
    return;
}

// FUN_0042fe2c
void W_42fe2c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_00824fc8;
    r1 = *(u32*)(r0 + 60);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_42fe6c;
    r0 = (u32)g_008bfa38;
    r0 = *(u32*)(r0);
    r0 = Fn_4357ac_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 60);
    if (r0 == 0u) goto L_42fe6c;
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 60) = r0;
    L_42fe6c:;
    r0 = r4;
    r0 = Fn_4342b8_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00430b38
void W_430b38(u32 a0) {
    u32 r1, r2;
    r2 = (u32)g_00825024;
    r1 = (u32)g_008bba3c;
    *(u32*)(a0) = r2;
    r2 = *(u32*)(r1);
    r2 = r2 - 1u;
    *(u32*)(r1) = r2;
    { Fn_4303e0_3(a0, r1, r2); return; }
}

// FUN_00433eac
void W_433eac(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r1 = 0u;
    r0 = Fn_43a590_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) *(u8*)(r4 + 8) = r0;
    if (fa != fb) goto L_433ed8;
    r0 = r4;
    { Fn_433e4c_1(r0); return; }
    L_433ed8:;
    return;
}

// FUN_00435848
void W_435848(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5;
    r4 = r0;
    r5 = r1;
    r0 = r1 << 2;
    r2 = 16u;
    r1 = 0u;
    r0 = Fn_021ca0_3(r0, r1, r2);
    r2 = 16u;
    *(u32*)(r4 + 4) = r0;
    r1 = 0u;
    r0 = r2;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_4358a8;
    r1 = *(u32*)(r4 + 4);
    r2 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    *(u32*)(r0 + 8) = r1;
    r1 = *(u32*)(r0 + 12);
    r1 = r1 & 3221225472u;
    r1 = r1 | r5;
    r1 = r1 & ~3221225472u;
    *(u32*)(r0 + 12) = r1;
    L_4358a8:;
    *(u32*)(r4 + 8) = r0;
    return;
}

// FUN_00435f3c
void W_435f3c(u32 a0) {
    u32 r1, r2;
    r2 = (u32)g_00825424;
    r1 = (u32)g_008bba3c;
    *(u32*)(a0) = r2;
    r2 = *(u32*)(r1 + 4);
    r2 = r2 - 1u;
    *(u32*)(r1 + 4) = r2;
    { Fn_4303e0_3(a0, r1, r2); return; }
}

// FUN_00435fe8
void W_435fe8(u32 a0) {
    u32 r0 = a0, r1, r2, r4, fa, fb;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 228u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_436014;
    r2 = *(u32*)(r4 + 4);
    r1 = 3u;
    r0 = Fn_44178c_3(r0, r1, r2);
    L_436014:;
    r1 = (u32)g_008bfa2c;
    *(u32*)(r4 + 8) = r0;
    r2 = *(u32*)(r1);
    r1 = r0;
    r0 = r2;
    { Fn_3eeb38_3(r0, r1, r2); return; }
}

// FUN_00437da4
void W_437da4(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = 8781824u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) goto L_437dcc;
    r0 = *(u32*)(r4 + 72);
    r2 = 1u;
    r1 = 8781824u;
    r0 = Fn_402d58_3(r0, r1, r2);
    L_437dcc:;
    r0 = 8912896u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) goto L_437df0;
    r0 = *(u32*)(r4 + 72);
    r2 = 1u;
    r1 = 8912896u;
    r0 = Fn_402d58_3(r0, r1, r2);
    L_437df0:;
    r0 = *(u32*)(r4 + 72);
    r2 = 14u;
    r1 = 0u;
    *(u8*)(r0 + 116) = r2;
    *(u32*)(r4 + 68) = r1;
    r0 = *(u32*)(r4 + 72);
    r1 = 1u;
    *(u8*)(r0 + 82) = r1;
    return;
}

// FUN_00438054
void W_438054(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r1 = 0u;
    r0 = Fn_43a468_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) *(u8*)(r4 + 8) = r0;
    if (fa != fb) goto L_438080;
    r0 = r4;
    { Fn_433e4c_1(r0); return; }
    L_438080:;
    return;
}

// FUN_004381dc
void W_4381dc(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_00825560;
    r1 = *(u32*)(r0 + 64);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_43821c;
    r0 = (u32)g_008bfa38;
    r0 = *(u32*)(r0);
    r0 = Fn_4357ac_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 64);
    if (r0 == 0u) goto L_43821c;
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 64) = r0;
    L_43821c:;
    r0 = r4;
    r0 = Fn_4342b8_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_004384e0
void W_4384e0(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0082557c;
    r1 = *(u32*)(r0 + 64);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_438520;
    r0 = (u32)g_008bfa38;
    r0 = *(u32*)(r0);
    r0 = Fn_4357ac_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 64);
    if (r0 == 0u) goto L_438520;
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 64) = r0;
    L_438520:;
    r0 = r4;
    r0 = Fn_4342b8_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00438590
void W_438590(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0 + 60);
    r1 = r1 + 1u;
    *(u32*)(a0 + 60) = r1;
    { Fn_433d3c_2(a0, r1); return; }
}

// FUN_004385a0
void W_4385a0(u32 a0) {
    u32 r1, fa, fb;
    r1 = *(u32*)(a0 + 60);
    fa = r1; fb = 30u;
    if ((int)fa > (int)fb) r1 = 0u;
    if ((int)fa > (int)fb) *(u8*)(a0 + 8) = r1;
    if ((int)fa > (int)fb) goto L_4385b8;
    { Fn_433e4c_2(a0, r1); return; }
    L_4385b8:;
    return;
}

// FUN_0043e7ec
u32 W_43e7ec(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = r0 + (a1 << 2);
    r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_0043e8f0
void W_43e8f0(u32 a0) {
    u32 r1, r2;
    r2 = (u32)g_00825620;
    r1 = 0u;
    *(u32*)(a0 + 4) = r1;
    *(u32*)(a0) = r2;
    { Fn_2024b0_3(a0, r1, r2); return; }
}

// FUN_0043f17c
void W_43f17c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_008256f0;
    r1 = *(u32*)(r0 + 72);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_43f1bc;
    r0 = (u32)g_008bfa38;
    r0 = *(u32*)(r0);
    r0 = Fn_4357ac_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 72);
    if (r0 == 0u) goto L_43f1bc;
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 72) = r0;
    L_43f1bc:;
    r0 = r4;
    r0 = Fn_4342b8_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00441964
u32 W_441964(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r4 = r0;
    r0 = (u32)g_008a8348;
    r1 = r1 - r4;
    r0 = Fn_5ebcb4_2(r0, r1);
    r0 = r0 + r4;
    return r0;
}

// FUN_00441e08
void W_441e08(u32 a0, u32 a1) {
    u32 r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) goto L_441e30;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 7u;
    if (fa == fb) goto L_441e30;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u8*)(a0 + 98) = r1;
    return;
    L_441e30:;
    *(u32*)(a0 + 72) = r1;
    return;
}

// FUN_00442dc0
u32 W_442dc0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008a5788;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_442ddc;
    r1 = r0 + 2147483648u;
    if (r1 < 15u) goto L_442de4;
    L_442ddc:;
    r0 = 0u;
    return r0;
    L_442de4:;
    r1 = (u32)g_007c7d48;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_004430e8
u32 W_4430e8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008a5788;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_443104;
    r1 = r0 + 2147483648u;
    if (r1 < 32u) goto L_44310c;
    L_443104:;
    r0 = 0u;
    return r0;
    L_44310c:;
    r1 = (u32)g_007c7b38;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_004433c8
u32 W_4433c8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007c7d48;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 12);
    return r0;
}

// FUN_00443594
u32 W_443594(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007c7b38;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 12);
    return r0;
}

// FUN_00443b84
void W_443b84(u32 a0, u32 a1) {
    u32 r1 = a1;
    if (r1 >= 13u) r1 = 9u;
    *(u8*)(a0 + 69) = r1;
    return;
}

// FUN_00443b94
void W_443b94(u32 a0, u32 a1) {
    if (a1 < 16u) *(u8*)(a0 + 68) = a1;
    return;
}

// FUN_004442a4
u32 W_4442a4() {
    u32 r0;
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 144);
    r0 = *(signed char*)(r0 + 240);
    return r0;
}

// FUN_00444a14
u32 W_444a14(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0 + 2147483648u;
    fa = r1; fb = 15u;
    if (fa >= fb) r0 = 2147483663u;
    if (fa >= fb) goto L_444a34;
    r1 = (u32)g_007c76bc;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u32*)(r0 + 16);
    L_444a34:;
    return r0;
}

// FUN_00444bb8
u32 W_444bb8(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0 + 2147483648u;
    fa = r1; fb = 32u;
    if (fa >= fb) r0 = 2147483680u;
    if (fa >= fb) goto L_444bd8;
    r1 = (u32)g_007c73a4;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u32*)(r0 + 16);
    L_444bd8:;
    return r0;
}

// FUN_00444cd8
u32 W_444cd8() {
    u32 r0;
    r0 = (u32)g_008a5624;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u32*)(r0 + 60);
    return r0;
}

// FUN_00444cf0
u32 W_444cf0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008a5624;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_444d0c;
    r1 = r0 + 2147483648u;
    if (r1 < 15u) goto L_444d14;
    L_444d0c:;
    r0 = 0u;
    return r0;
    L_444d14:;
    r1 = (u32)g_007c76bc;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00445020
u32 W_445020(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008a5624;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_44503c;
    r1 = r0 + 2147483648u;
    if (r1 < 32u) goto L_445044;
    L_44503c:;
    r0 = 0u;
    return r0;
    L_445044:;
    r1 = (u32)g_007c73a4;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00445060
u32 W_445060(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0 + 2147483648u;
    fa = r1; fb = 15u;
    if (fa >= fb) r0 = 5u;
    if (fa >= fb) goto L_445080;
    r1 = (u32)g_007c76bc;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u8*)(r0 + 20);
    L_445080:;
    return r0;
}

// FUN_00445334
u32 W_445334(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007c76bc;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u32*)(r0 + 12);
    return r0;
}

// FUN_00445398
u32 W_445398(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0 + 2147483648u;
    fa = r1; fb = 32u;
    if (fa >= fb) r0 = 5u;
    if (fa >= fb) goto L_4453b8;
    r1 = (u32)g_007c73a4;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u8*)(r0 + 20);
    L_4453b8:;
    return r0;
}

// FUN_0044552c
u32 W_44552c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007c73a4;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 3);
    r0 = *(u32*)(r0 + 12);
    return r0;
}

// FUN_00445c90
u32 W_445c90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    if (r0 == 2u) goto L_445ca4;
    if (r0 == 34u) goto L_445ccc;
    goto L_445cf0;
    L_445ca4:;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = 13u;
    if (fa == fb) goto L_445cf8;
    fa = r1; fb = 2u;
    if (fa == fb) r0 = 14u;
    if (fa == fb) goto L_445cf8;
    fa = r1; fb = 3u;
    if (fa == fb) r0 = 15u;
    if (fa == fb) goto L_445cf8;
    goto L_445cf0;
    L_445ccc:;
    fa = r1; fb = 4u;
    if (fa == fb) r0 = 35u;
    if (fa == fb) goto L_445cf8;
    fa = r1; fb = 5u;
    if (fa == fb) r0 = 36u;
    if (fa == fb) goto L_445cf8;
    fa = r1; fb = 6u;
    if (fa == fb) r0 = 37u;
    if (fa == fb) goto L_445cf8;
    L_445cf0:;
    r1 = (u32)g_007c4c2c;
    r0 = *(u8*)(r1 + r0);
    L_445cf8:;
    return r0;
}
