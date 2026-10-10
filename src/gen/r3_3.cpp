// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_0082dae4[];
u32 Fn_2024b0_1(u32);
u32 Fn_59f340_2(u32, u32);
u32 Fn_5aea48_1(u32);
u32 Fn_5a6ffc_3(u32, u32, u32);
extern char g_0082df14[];
u32 Fn_0267bc_2(u32, u32);
u32 Fn_59ab78_1(u32);
u32 Fn_0190b0_1(u32);
u32 Fn_641be4_0();
u32 Fn_02a218_2(u32, u32);
extern char g_008a8860[];
u32 Fn_5c0d4c_3(u32, u32, u32);
u32 Fn_5a579c_1(u32);
u32 Fn_5e828c_1(u32);
u32 Fn_5e828c_2(u32, u32);
extern char g_0089a330[];
u32 Fn_6268c4_2(u32, u32);
u32 Fn_5ca800_2(u32, u32);
u32 Fn_3abfe0_4(u32, u32, u32, u32);
extern char g_007be1e4[];
u32 Fn_108b80_3(u32, u32, u32);
u32 Fn_01a4d4_4(u32, u32, u32, u32);
u32 Fn_0317dc_4(u32, u32, u32, u32);
u32 Fn_3901a4_4(u32, u32, u32, u32);
extern char g_007e39cc[];
extern char g_007e3abc[];
u32 Fn_5992a0_2(u32, u32);
u32 Fn_0151c8_1(u32);
extern char g_007e3b78[];
extern char g_007e3ac0[];
extern char g_0082ee38[];
extern char g_008bfa48[];
extern char g_0082ef70[];
u32 Fn_5ee074_3(u32, u32, u32);
extern char g_0082f0a0[];
u32 Fn_5333c0_4(u32, u32, u32, u32);
u32 Fn_01a4d4_3(u32, u32, u32);
u32 Fn_51d5e0_1(u32);
extern char g_0082fc18[];
u32 Fn_550604_1(u32);
u32 Fn_4dfbf0_1(u32);
u32 Fn_61ead4_0();
u32 Fn_0151c8_2(u32, u32);
u32 Fn_015564_2(u32, u32);
u32 Fn_121ad8_2(u32, u32);
extern char g_007ccb6c[];
extern char g_0079e410[];
u32 Fn_5ef980_2(u32, u32);
u32 Fn_62f560_1(u32);
extern char g_007d502c[];
u32 Fn_6295d4_2(u32, u32);
u32 Fn_637be8_4(u32, u32, u32, u32);
u32 Fn_628a64_3(u32, u32, u32);
extern char g_0081cecc[];
extern char g_0082cad4[];
u32 Fn_2024b0_4(u32, u32, u32, u32);
extern char g_0082d5cc[];
u32 Fn_2024b0_2(u32, u32);
extern char g_0082d5dc[];
extern char g_0082d5ec[];
u32 Fn_2c51d4_3(u32, u32, u32);
u32 Fn_2c51a4_3(u32, u32, u32);
u32 Fn_677e2c_1(u32);
extern char g_008ab848[];
u32 Fn_509960_2(u32, u32);
u32 Fn_685544_1(u32);

// FUN_005a4864
void W_5a4864(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r3;
    r3 = *(u32*)(r0 + 12);
    if (r3 <= a1) goto L_5a487c;
    r0 = *(u32*)(r0 + 16);
    r0 = r0 + (a1 << 1);
    *(u16*)(r0) = a2;
    L_5a487c:;
    return;
}

// FUN_005a6708
void W_5a6708(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082dae4;
    *(u32*)(r0) = r1; r0 = r0 + 508u;
    r0 = Fn_59f340_2(r0, r1);
    r0 = r0 - 508u;
    r0 = Fn_5aea48_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005a672c
void W_5a672c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082dae4;
    *(u32*)(r0) = r1; r0 = r0 + 508u;
    r0 = Fn_59f340_2(r0, r1);
    r0 = r0 - 508u;
    { Fn_5aea48_1(r0); return; }
}

// FUN_005a87b8
void W_5a87b8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r4, r5, r6;
    r4 = r1;
    r6 = a2;
    r5 = r0;
    r1 = r1 + 1u;
    r0 = Fn_5a6ffc_3(r0, r1, a2);
    r0 = *(u32*)(r5 + 480);
    *(u32*)(r0 + (r4 << 2)) = r6;
    return;
}

// FUN_005b1548
void W_5b1548(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082df14;
    *(u32*)(r0) = r1; r0 = r0 + 28u;
    r0 = Fn_0267bc_2(r0, r1);
    r0 = r0 - 28u;
    { Fn_59ab78_1(r0); return; }
}

// FUN_005b1b0c
u32 W_5b1b0c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 116);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_5b1b34;
    r2 = r1 + (r1 << 1);
    r0 = r0 + 48u;
    r1 = r1 << 2;
    r2 = r2 << 1;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    L_5b1b34:;
    return r0;
}

// FUN_005b1b48
void W_5b1b48(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 116);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_5b1b68;
    r1 = 0u;
    *(u32*)(r0 + 40) = r1;
    *(u32*)(r0 + 44) = r1;
    L_5b1b68:;
    return;
}

// FUN_005b1e24
void W_5b1e24() {
    u32 r0, fa, fb;
    r0 = Fn_641be4_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 48);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa != fb) goto L_5b1e48;
    r0 = 131072u;
    { Fn_0190b0_1(r0); return; }
    L_5b1e48:;
    return;
}

// FUN_005b2f44
void W_5b2f44(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, fa, fb;
    r4 = r1;
    r0 = r0 + 4u;
    r0 = Fn_02a218_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 44);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa != fb) *(u8*)(r0 + 53) = r4;
    if (fa == fb) goto L_5b2f68;
    L_5b2f68:;
    return;
}

// FUN_005ba7f4
void W_5ba7f4(u32 a0, u32 a1) {
    u32 r1 = a1, r2;
    *(u8*)(a0 + 69) = r1;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(r1 + 88);
    r1 = *(u8*)(a0 + 96);
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}

// FUN_005bbbd8
void W_5bbbd8(u32 a0) {
    u32 r1, r2;
    r2 = (u32)g_008a8860;
    r1 = *(u32*)(r2 + 0); r2 = *(u32*)(r2 + 4);
    *(u32*)(a0 + 0) = r1; *(u32*)(a0 + 4) = r2;
    return;
}

// FUN_005bbbf8
void W_5bbbf8(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    if (a1 >= 32u) goto L_5bbc10;
    r0 = *(u32*)(r0 + 136);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = 0u;
    if (fa != fb) *(u32*)(r0 + (a1 << 2)) = r2;
    L_5bbc10:;
    return;
}

// FUN_005be9f8
void W_5be9f8(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 16);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_005c0e6c
void W_5c0e6c(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = (u16)r0;
    r0 = r0 >> 16;
    r2 = 1u;
    { Fn_5c0d4c_3(r0, r1, r2); return; }
}

// FUN_005c2c1c
void W_5c2c1c(u32 a0) {
    u32 r0 = a0, r4, r5, r6;
    r4 = 0u;
    r5 = r0;
    r6 = r4;
    L_5c2c2c:;
    r0 = *(u32*)(r5 + (r4 << 2));
    if (r0 == 0u) goto L_5c2c40;
    r0 = Fn_5a579c_1(r0);
    *(u32*)(r5 + (r4 << 2)) = r6;
    L_5c2c40:;
    r4 = r4 + 1u;
    if ((int)r4 < 2) goto L_5c2c2c;
    r0 = r5;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005c39ac
u32 W_5c39ac(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = 0u;
    r1 = ~0u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r4; r0 = r0 + 8;
    r0 = Fn_5e828c_2(r0, r1);
    r0 = r0 + 8u;
    r0 = Fn_5e828c_1(r0);
    r0 = r0 - 16u;
    *(u32*)(r0 + 24) = r4;
    return r0;
}

// FUN_005c971c
void W_5c971c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 12u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_005ca800
u32 W_5ca800() {
    u32 r0, r1, fa, fb;
    r1 = (u32)g_0089a330;
    r0 = *(u32*)(r1 + 64);
    if (r0 == 0u) goto L_5ca814;
    return Fn_6268c4_2(r0, r1);
    L_5ca814:;
    r0 = *(u32*)(r1 + 48);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r1 + 52);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_5ca834;
    r0 = *(u32*)(r0 + 52);
    return Fn_6268c4_2(r0, r1);
    L_5ca834:;
    return r0;
}

// FUN_005cbc8c
u32 W_5cbc8c() {
    u32 r0, r1, fa, fb;
    r0 = (u32)g_0089a330;
    r1 = *(u32*)(r0 + 52);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 48);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) goto L_5cbcb4;
    r0 = *(u32*)(r0 + 44);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_5cbcb8;
    L_5cbcb4:;
    r0 = 0u;
    L_5cbcb8:;
    return r0;
}

// FUN_005cbd3c
u32 W_5cbd3c() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 60);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 181);
    if (fa != fb) { fa = r0; fb = 0u; }
    if ((int)fa <= (int)fb) r0 = 0u;
    if ((int)fa > (int)fb) r0 = 1u;
    return r0;
}

// FUN_005ccda8
u32 W_5ccda8(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = (u32)g_0089a330;
    r1 = *(u32*)(r0 + 52);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 48);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) goto L_5ccdd4;
    r0 = *(u32*)(r0 + 44);
    if (r0 != 0u) goto L_5ccde8;
    L_5ccdd4:;
    r0 = Fn_5ca800_2(r0, r1);
    fa = r0; fb = r4;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5ccdec;
    L_5ccde8:;
    r0 = 0u;
    L_5ccdec:;
    return r0;
}

// FUN_005cd834
void W_5cd834(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r12, fa, fb;
    r12 = r0;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 40);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5cd858;
    r3 = r2 & 255u;
    r2 = r1 & 255u;
    r1 = (u16)r12;
    { Fn_3abfe0_4(r0, r1, r2, r3); return; }
    L_5cd858:;
    return;
}

// FUN_005ce814
u32 W_5ce814() {
    u32 r0, r1, fa, fb;
    r0 = (u32)g_0089a330;
    r1 = *(u32*)(r0 + 52);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 48);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) goto L_5ce83c;
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) goto L_5ce840;
    L_5ce83c:;
    r1 = 0u;
    L_5ce840:;
    r0 = *(signed char*)(r0 + 23);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005cfaf4
u32 W_5cfaf4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007be1e4;
    r0 = *(u32*)(r1 + (r0 << 2));
    return r0;
}

// FUN_005d0a74
void W_5d0a74(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = (u32)g_0089a330;
    r2 = *(u32*)(r1 + 188);
    if (r2 == 0u) goto L_5d0a90;
    r1 = (u32)(signed char)r0;
    r0 = r2;
    { Fn_108b80_3(r0, r1, r2); return; }
    L_5d0a90:;
    return;
}

// FUN_005d0f7c
void W_5d0f7c(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) { fa = r1; fb = 1u; }
    if ((int)fa <= (int)fb) goto L_5d0fac;
    r2 = (u32)g_0089a330;
    r3 = *(u32*)(r2 + 168);
    if (r3 == 0u) goto L_5d0fa4;
    r2 = r1 - 1u;
    r1 = r3;
    { Fn_0317dc_4(a0, r1, r2, r3); return; }
    L_5d0fa4:;
    { Fn_01a4d4_4(a0, r1, r2, r3); return; }
    L_5d0fac:;
    return;
}

// FUN_005d1610
void W_5d1610(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = r0;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 36);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5d1644;
    r2 = *(u32*)(r0 + 216);
    fa = r2; fb = 0u;
    if (fa != fb) r1 = r2 - 1u;
    if (fa != fb) *(u32*)(r0 + 216) = r1;
    if (fa != fb) goto L_5d1644;
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 132);
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
    L_5d1644:;
    return;
}

// FUN_005d181c
void W_5d181c(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) { fa = r1; fb = 1u; }
    if ((int)fa <= (int)fb) goto L_5d184c;
    r2 = (u32)g_0089a330;
    r3 = *(u32*)(r2 + 164);
    if (r3 == 0u) goto L_5d1844;
    r2 = r1 - 1u;
    r1 = r3;
    { Fn_0317dc_4(a0, r1, r2, r3); return; }
    L_5d1844:;
    { Fn_01a4d4_4(a0, r1, r2, r3); return; }
    L_5d184c:;
    return;
}

// FUN_005d1854
void W_5d1854(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) { fa = r1; fb = 1u; }
    if ((int)fa <= (int)fb) goto L_5d1884;
    r2 = (u32)g_0089a330;
    r3 = *(u32*)(r2 + 180);
    if (r3 == 0u) goto L_5d187c;
    r2 = r1;
    r1 = r3;
    { Fn_0317dc_4(a0, r1, r2, r3); return; }
    L_5d187c:;
    { Fn_01a4d4_4(a0, r1, r2, r3); return; }
    L_5d1884:;
    return;
}

// FUN_005d1cdc
u32 W_5d1cdc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, fa, fb;
    r3 = (u32)g_0089a330;
    r1 = r0;
    r0 = 0u;
    r2 = *(u32*)(r3 + 48);
    if (r2 != 0u) r0 = r2;
    r2 = *(u32*)(r3 + 52);
    fa = r2; fb = 0u;
    if (fa != fb) r0 = r2;
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_5d1d14;
    r0 = *(u32*)(r0 + 44);
    r0 = *(u32*)(r0 + 12);
    return Fn_3901a4_4(r0, r1, r2, r3);
    L_5d1d14:;
    return r0;
}

// FUN_005d5ef8
u32 W_5d5ef8(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    if (r0 == 0u) goto L_5d5f20;
    L_5d5f00:;
    r1 = *(u32*)(r0 + 136);
    r1 = r1 & 16711680u;
    fa = r1; fb = 65536u;
    if (fa != fb) { fa = r1; fb = 1048576u; }
    if (fa == fb) goto L_5d5f28;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) goto L_5d5f00;
    L_5d5f20:;
    r0 = 0u;
    return r0;
    L_5d5f28:;
    if (r0 == 0u) goto L_5d5f20;
    return r0;
}

// FUN_005d67b4
u32 W_5d67b4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u32*)(r0 + 4);
    r3 = *(u32*)(r0);
    fa = r2; fb = r3;
    if ((int)fa >= (int)fb) r0 = 0u;
    if ((int)fa >= (int)fb) goto L_5d67e0;
    r3 = *(u32*)(r0 + 8);
    *(u32*)(r3 + (r2 << 2)) = r1;
    r1 = *(u32*)(r0 + 4);
    r1 = r1 + 1u;
    *(u32*)(r0 + 4) = r1;
    r0 = 1u;
    L_5d67e0:;
    return r0;
}

// FUN_005dea50
void W_5dea50(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 36);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_005df08c
u32 W_5df08c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3;
    r2 = *(u8*)(r1);
    r0 = r1;
    r1 = 0u;
    if ((int)r2 <= 0) goto L_5df0ac;
    if ((int)r2 < 15) goto L_5df0b4;
    L_5df0ac:;
    r0 = 0u;
    return r0;
    L_5df0b4:;
    r3 = (u32)g_007e39cc;
    r2 = *(u32*)(r3 + (r2 << 4));
    if (r2 == 0u) goto L_5df0cc;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r1 = r0;
    L_5df0cc:;
    r0 = r1;
    return r0;
}

// FUN_005df1a4
void W_5df1a4(u32 a0) {
    u32 r0 = a0, r1;
    if (r0 == 0u) goto L_5df1cc;
    if (r0 >= 15u) goto L_5df1cc;
    r1 = (u32)g_007e39cc;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_5df1cc;
    { ((u32(*)())r0)(); return; }
    L_5df1cc:;
    return;
}

// FUN_005df1ec
void W_5df1ec(u32 a0) {
    u32 r0 = a0, r1;
    if (r0 == 0u) goto L_5df214;
    if (r0 >= 15u) goto L_5df214;
    r1 = (u32)g_007e39cc;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_5df214;
    { ((u32(*)())r0)(); return; }
    L_5df214:;
    return;
}

// FUN_005df36c
u32 W_5df36c(u32 a0) {
    u32 r0 = a0, r1;
    if (r0 == 0u) goto L_5df394;
    if (r0 >= 15u) goto L_5df394;
    r1 = (u32)g_007e39cc;
    r0 = r1 + (r0 << 4);
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_5df394;
    return ((u32(*)())r0)();
    L_5df394:;
    r0 = 1u;
    return r0;
}

// FUN_005e1f18
void W_5e1f18() {
    u32 r0, r1;
    r0 = (u32)g_007e3abc;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = (u16)r0;
    r0 = r0 | 5570560u;
    { Fn_5992a0_2(r0, r1); return; }
}

// FUN_005e1f68
u32 W_5e1f68() {
    u32 r0;
    r0 = (u32)g_007e3abc;
    r0 = *(u32*)(r0);
    r0 = (u16)r0;
    r0 = r0 | 5570560u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_005e2df0
void W_5e2df0() {
    u32 r0, r1;
    r0 = (u32)g_007e3b78;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = (u16)r0;
    r0 = r0 | 5570560u;
    { Fn_5992a0_2(r0, r1); return; }
}

// FUN_005e2e40
u32 W_5e2e40() {
    u32 r0;
    r0 = (u32)g_007e3b78;
    r0 = *(u32*)(r0);
    r0 = (u16)r0;
    r0 = r0 | 5570560u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_005e66b8
void W_5e66b8() {
    u32 r0, r1;
    r0 = (u32)g_007e3ac0;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = (u16)r0;
    r0 = r0 | 5570560u;
    { Fn_5992a0_2(r0, r1); return; }
}

// FUN_005e6708
u32 W_5e6708() {
    u32 r0;
    r0 = (u32)g_007e3ac0;
    r0 = *(u32*)(r0);
    r0 = (u16)r0;
    r0 = r0 | 5570560u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_005e828c
void W_5e828c(u32 a0) {
    u32 r1, r2;
    r1 = (u32)g_0082ee38;
    r2 = 0u;
    *(u32*)(a0 + 0) = r1; *(u32*)(a0 + 4) = r2;
    return;
}

// FUN_005e8db8
void W_5e8db8(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 32);
    if ((int)r0 <= 0) goto L_5e8ddc;
    r0 = (u32)g_008bfa48;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 32);
    { ((u32(*)(u32))r1)(r0); return; }
    L_5e8ddc:;
    return;
}

// FUN_005e99b4
void W_5e99b4(u32 a0) {
    u32 r1, r2;
    r1 = (u32)g_0082ef70;
    r2 = 0u;
    *(u32*)(a0 + 0) = r1; *(u32*)(a0 + 4) = r2;
    return;
}

// FUN_005eab70
u32 W_5eab70(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r2 = r0;
    r0 = r1;
    r1 = *(u32*)(r2 + 4);
    r2 = 0u;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r1 + 16);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_5eaba4;
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 8);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r2 = 1u;
    L_5eaba4:;
    r0 = r2;
    return r0;
}

// FUN_005eb828
void W_5eb828(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = r0 + 16u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2;
    return;
}

// FUN_005edfe8
void W_5edfe8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4;
    r0 = r0 + 24u; r4 = *(u32*)(r0);
    r2 = r1;
    r1 = *(u32*)(r0 + 4);
    r0 = r2;
    r0 = Fn_5ee074_3(r0, r1, r2);
    r1 = *(u32*)(r4 + 20);
    r0 = r0 + r1;
    *(u32*)(r4 + 20) = r0;
    return;
}

// FUN_005f1164
void W_5f1164(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 24);
    *(u32*)(r0 + (a1 << 2)) = a2;
    return;
}

// FUN_005f281c
void W_5f281c(u32 a0) {
    u32 r1, r2;
    r1 = (u32)g_0082f0a0;
    r2 = 0u;
    *(u32*)(a0 + 0) = r1; *(u32*)(a0 + 4) = r2;
    return;
}

// FUN_005f6958
void W_5f6958(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r12, fa, fb;
    r12 = *(u8*)(a0 + 178);
    fa = r12; fb = 0u;
    if (fa == fb) r12 = *(u8*)(a0 + 179);
    if (fa == fb) { fa = r12; fb = 0u; }
    if (fa != fb) goto L_5f6984;
    r12 = 1u;
    *(u16*)(a0 + 186) = a1;
    *(u16*)(a0 + 184) = r12;
    *(u8*)(a0 + 188) = a2;
    *(u8*)(a0 + 176) = r12;
    *(u8*)(a0 + 189) = a3;
    L_5f6984:;
    return;
}

// FUN_005f7540
u32 W_5f7540(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 178);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u8*)(r0 + 179);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa != fb) r0 = 0u;
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_005f8af0
u32 W_5f8af0(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 71);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 77);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_005f96b0
void W_5f96b0(u32 a0, u32 a1) {
    u32 r1 = a1, r2, fa, fb;
    r2 = *(u8*)(a0 + 77);
    fa = r2; fb = 0u;
    if (fa != fb) { fa = r2; fb = 3u; }
    if (fa == fb) goto L_5f96e8;
    fa = r2; fb = 4u;
    if (fa != fb) { fa = r2; fb = 5u; }
    if (fa == fb) goto L_5f96e8;
    r2 = *(u8*)(a0 + 78);
    if (r2 != 3u) goto L_5f96e8;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa == fb) r1 = 2u;
    *(u8*)(a0 + 76) = r1;
    L_5f96e8:;
    return;
}

// FUN_005fd3b0
u32 W_5fd3b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r0 = r0 + 4u; r2 = *(u32*)(r0);
    r1 = *(u32*)(r0 + 8);
    r0 = 0u;
    r3 = r2 + 4u;
    r1 = r1 - 4u;
    if (r1 == 0) goto L_5fd3d4;
    r2 = ~0u;
    r0 = r3;
    return Fn_5333c0_4(r0, r1, r2, r3);
    L_5fd3d4:;
    return r0;
}

// FUN_005fea74
void W_5fea74(u32 a0) {
    u32 r1, fa, fb;
    r1 = *(u8*)(a0 + 69);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u8*)(a0 + 70);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(a0 + 71) = r1;
    if (fa == fb) goto L_5fea90;
    L_5fea90:;
    return;
}

// FUN_005ff2b4
void W_5ff2b4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r3;
    r0 = r0 + 176u;
    r3 = 0u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = a2; *(u32*)(r0 + 8) = r3;
    return;
}

// FUN_00608584
u32 W_608584(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 8);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_006085a0
u32 W_6085a0(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 16);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_006085bc
void W_6085bc(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r2 = *(u32*)(r0 + 4);
    fa = r2; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 8);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_6085d8;
    r0 = r2;
    { Fn_01a4d4_3(r0, r1, r2); return; }
    L_6085d8:;
    return;
}

// FUN_00609a8c
u32 W_609a8c() {
    u32 r0, r4;
    r4 = 0u;
    r0 = r4;
    r0 = Fn_51d5e0_1(r0);
    r0 = (u32)((int)r0 >> 31);
    r0 = r0 + 1u;
    if (r0 != 0) r4 = 1u;
    r0 = r4;
    return r0;
}

// FUN_00610a1c
void W_610a1c(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r0 = r0 + 176u;
    r2 = 0u;
    *(u32*)(r0 + 0) = a1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_00610a54
u32 W_610a54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r2 = *(u32*)(r0 + 184);
    fa = r2; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_610a78;
    r0 = *(u32*)(r0 + 188);
    if (r0 == 0u) goto L_610a78;
    r1 = r1 + (r1 << 1);
    r0 = *(u32*)(r0 + (r1 << 3));
    L_610a78:;
    return r0;
}

// FUN_00610b50
u32 W_610b50(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r2 = *(u32*)(r0 + 168);
    fa = r2; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_610b74;
    r0 = *(u32*)(r0 + 172);
    if (r0 == 0u) goto L_610b74;
    r1 = r1 + (r1 << 1);
    r0 = *(u32*)(r0 + (r1 << 3));
    L_610b74:;
    return r0;
}

// FUN_0061795c
void W_61795c(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 144);
    { ((u32(*)(u32))r1)(a0); return; }
}

// FUN_0061b6a0
void W_61b6a0(u32 a0) {
    u32 r1, r2;
    r1 = (u32)g_0082fc18;
    r2 = 0u;
    *(u32*)(a0 + 0) = r1; *(u32*)(a0 + 4) = r2;
    return;
}

// FUN_0061dd18
u32 W_61dd18(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 48);
    r0 = *(u32*)(r0 + 52);
    if (r2 <= r1) r1 = 1u;
    r1 = r1 + (r1 << 1);
    r0 = *(u32*)(r0 + (r1 << 2));
    return r0;
}

// FUN_0061fafc
u32 W_61fafc(u32 a0) {
    u32 r0 = a0, r4;
    r4 = 0u;
    *(u32*)(r0) = r4;
    *(u32*)(r0 + 4) = r4;
    *(u32*)(r0 + 8) = r4;
    r0 = r0 + 12u; *(u32*)(r0) = r4;
    r0 = r0 + 4u;
    r0 = Fn_550604_1(r0);
    r0 = r0 - 16u;
    *(u8*)(r0 + 148) = r4;
    return r0;
}

// FUN_00622308
u32 W_622308() {
    u32 r0, r4;
    r0 = Fn_61ead4_0();
    r4 = r0;
    r0 = Fn_4dfbf0_1(r0);
    r0 = r0 + r4;
    r0 = (u32)(short)r0;
    return r0;
}

// FUN_00624e28
u32 W_624e28(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = r0 + 512u;
    r1 = *(u8*)(r0 + 2);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u8*)(r0 + 3);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa != fb) goto L_624e58;
    r0 = 351797248u;
    r0 = Fn_0151c8_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_624e5c;
    L_624e58:;
    r0 = 1u;
    L_624e5c:;
    return r0;
}

// FUN_00625020
u32 W_625020(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 172);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 176);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa == fb) r1 = *(u32*)(r0 + 180);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) r0 = r1 + 236u;
    if (fa != fb) goto L_625054;
    r0 = *(u32*)(r0 + 184);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 236u;
    if (fa != fb) goto L_625054;
    return Fn_015564_2(r0, r1);
    L_625054:;
    return r0;
}

// FUN_00625058
u32 W_625058(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 172);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 176);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa == fb) r1 = *(u32*)(r0 + 180);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) r0 = r1 + 248u;
    if (fa != fb) goto L_62508c;
    r0 = *(u32*)(r0 + 184);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 248u;
    if (fa != fb) goto L_62508c;
    return Fn_015564_2(r0, r1);
    L_62508c:;
    return r0;
}

// FUN_006257d4
u32 W_6257d4(u32 a0, u32 a1) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = a1;
    r0 = Fn_121ad8_2(r0, a1);
    if (r0 == 0u) goto L_625828;
    r0 = *(u16*)(r0);
    r0 = r0 << 16;
    r0 = Fn_0151c8_1(r0);
    if (r0 == 0u) goto L_625824;
    r0 = *(u8*)(r4 + 482);
    if (r0 != 0u) goto L_625824;
    r0 = *(u8*)(r4 + 66);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = *(u8*)(r4 + 122);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_625828;
    L_625824:;
    r0 = 0u;
    L_625828:;
    return r0;
}

// FUN_006258c8
u32 W_6258c8(u32 a0) {
    u32 r0 = a0, r1, r4, r5, fa, fb;
    r5 = r0;
    r4 = 0u;
    L_6258d4:;
    r0 = r5 + (r4 << 4);
    r1 = *(u32*)(r0 + 432);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 440);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_6258fc;
    r0 = Fn_0151c8_2(r0, r1);
    r0 = r0 ^ 1u;
    if (r0 == 0) goto L_62590c;
    L_6258fc:;
    r4 = r4 + 1u;
    if ((int)r4 < 3) goto L_6258d4;
    r0 = 1u;
    L_62590c:;
    return r0;
}

// FUN_00625988
u32 W_625988(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u8*)(r0 + 96);
    fa = r0; fb = 15u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_6259a8;
    r1 = (u32)g_007ccb6c;
    r0 = r0 + (r0 << 2);
    r0 = *(u32*)(r1 + (r0 << 2));
    return Fn_0151c8_2(r0, r1);
    L_6259a8:;
    return r0;
}

// FUN_00626078
u32 W_626078(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 72);
    fa = r0; fb = 3u;
    if (fa != fb) { fa = r0; fb = 4u; }
    if (fa == fb) goto L_626094;
    fa = r0; fb = 5u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_626098;
    L_626094:;
    r0 = 1u;
    L_626098:;
    return r0;
}

// FUN_00627048
u32 W_627048(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 229);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u8*)(r0 + 228);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa == fb) r0 = *(u32*)(r0 + 224);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_006273dc
u32 W_6273dc(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 4);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00627418
u32 W_627418(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 72);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u8*)(r0 + 73);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa == fb) r0 = *(u8*)(r0 + 74);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00627878
u32 W_627878(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u8*)(r0 + 12);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) goto L_6278b0;
    r1 = *(u8*)(r0 + 24);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u8*)(r0 + 36);
    if (fa == fb) { fa = r1; fb = 0u; }
    if (fa != fb) goto L_6278b0;
    r0 = *(u8*)(r0 + 48);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_6278b4;
    L_6278b0:;
    r0 = 0u;
    L_6278b4:;
    return r0;
}

// FUN_00628c30
u32 W_628c30(u32 a0, u32 a1, u32 a2) {
    u32 r0, fa, fb;
    fa = a1; fb = 4u;
    if (fa < fb) { fa = a2; fb = 4u; }
    if (fa >= fb) goto L_628c44;
    if (a1 != a2) goto L_628c4c;
    L_628c44:;
    r0 = 0u;
    return r0;
    L_628c4c:;
    r0 = (u32)g_0079e410;
    r0 = r0 + (a1 << 2);
    r0 = *(u8*)(r0 + a2);
    return r0;
}

// FUN_00629200
u32 W_629200(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 280);
    r1 = 7u;
    r0 = Fn_5ef980_2(r0, r1);
    r0 = (u32)(short)r0;
    return r0;
}

// FUN_006295b4
void W_6295b4(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 236);
    if (r0 == 0u) goto L_6295cc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    { ((u32(*)(u32))r1)(r0); return; }
    L_6295cc:;
    return;
}

// FUN_0062e4f0
u32 W_62e4f0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, fa, fb;
    fa = r1; fb = 512u;
    if (fa > fb) r0 = 0u;
    if (fa > fb) goto L_62e514;
    r2 = *(u32*)(r0);
    r1 = r1 + 512u;
    r1 = r1 + 1u;
    r2 = *(u32*)(r2 + 36);
    r1 = (u32)(short)r1;
    return ((u32(*)(u32, u32))r2)(r0, r1);
    L_62e514:;
    return r0;
}

// FUN_0062ec2c
u32 W_62ec2c(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 124);
    r0 = *(u32*)(r0 + (a1 << 2));
    return r0;
}

// FUN_0062f694
u32 W_62f694(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 76);
    r0 = Fn_62f560_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_62f6c8;
    r0 = *(u32*)(r4 + 76);
    r0 = *(u32*)(r0 + 36);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    return ((u32(*)(u32))r1)(r0);
    L_62f6c8:;
    return r0;
}

// FUN_0062f6cc
u32 W_62f6cc(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    r2 = *(u32*)(r0 + 72);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 48);
    if (fa != fb) r0 = *(u32*)(r0 + 52);
    r0 = (u32)((int)r0 >> (a1 & 255));
    r0 = r0 & 1u;
    return r0;
}

// FUN_0062f6e8
u32 W_62f6e8(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    r2 = *(u32*)(r0 + 72);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 60);
    if (fa != fb) r0 = *(u32*)(r0 + 64);
    r0 = (u32)((int)r0 >> (a1 & 255));
    r0 = r0 & 1u;
    return r0;
}

// FUN_0062f704
u32 W_62f704(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 72);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 60);
    if (fa != fb) r1 = *(u32*)(r0 + 64);
    r1 = r1 << 28;
    r1 = r1 >> 31;
    if (r1 == 0) goto L_62f744;
    r1 = *(u32*)(r0 + 40);
    r1 = r1 + 1u;
    *(u32*)(r0 + 40) = r1;
    if ((int)r1 < 3) goto L_62f744;
    r1 = 0u;
    *(u32*)(r0 + 40) = r1;
    r0 = 1u;
    return r0;
    L_62f744:;
    r0 = 0u;
    return r0;
}

// FUN_0062f74c
u32 W_62f74c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 72);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 60);
    if (fa != fb) r1 = *(u32*)(r0 + 64);
    r1 = r1 << 30;
    r1 = r1 >> 31;
    if (r1 == 0) goto L_62f78c;
    r1 = *(u32*)(r0 + 44);
    r1 = r1 + 1u;
    *(u32*)(r0 + 44) = r1;
    if ((int)r1 < 3) goto L_62f78c;
    r1 = 0u;
    *(u32*)(r0 + 44) = r1;
    r0 = 1u;
    return r0;
    L_62f78c:;
    r0 = 0u;
    return r0;
}

// FUN_0062fac4
u32 W_62fac4(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 80);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u8*)(r0 + 81);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_006304b0
void W_6304b0(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00630624
u32 W_630624(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 17);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_006306f0
void W_6306f0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r3, fa, fb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r0 + 40);
    if (fa != fb) { fa = r3; fb = 0u; }
    if (fa == fb) goto L_630714;
    r3 = *(u32*)(r0 + 60);
    *(u32*)(a1) = r3;
    r0 = *(u8*)(r0 + 68);
    *(u8*)(a2) = r0;
    L_630714:;
    return;
}

// FUN_006308f8
u32 W_6308f8() {
    u32 r0, r4, r5;
    r4 = 0u;
    r5 = (u32)g_007d502c;
    L_630904:;
    r0 = *(u32*)(r5 + (r4 << 2));
    r0 = Fn_0151c8_1(r0);
    if (r0 == 0u) goto L_63092c;
    r4 = r4 + 1u;
    if (r4 < 2u) goto L_630904;
    r0 = 0u;
    return r0;
    L_63092c:;
    r0 = 1u;
    return r0;
}

// FUN_0063099c
u32 W_63099c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_6309d8;
    r1 = *(u8*)(r0 + 22);
    fa = r1; fb = 1u;
    if (fa != fb) { fa = r1; fb = 3u; }
    if (fa == fb) goto L_6309dc;
    r0 = *(u32*)(r0 + 232);
    if (r0 == 0u) goto L_6309d4;
    r0 = Fn_6295d4_2(r0, r1);
    if (r0 == 0u) goto L_6309dc;
    L_6309d4:;
    r0 = 0u;
    L_6309d8:;
    return r0;
    L_6309dc:;
    r0 = 1u;
    return r0;
}

// FUN_00630a20
u32 W_630a20(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 22);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00630a50
u32 W_630a50(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 88);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r1 + 518);
    if (fa != fb) goto L_630a80;
    r1 = *(u32*)(r0 + 92);
    if (r1 == 0u) goto L_630a7c;
    r0 = *(u32*)(r0 + 84);
    fa = r0; fb = 8u;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_630a80;
    L_630a7c:;
    r0 = 1u;
    L_630a80:;
    return r0;
}

// FUN_00636464
u32 W_636464(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 52);
    r0 = *(u32*)(r0 + 44);
    r0 = r0 << 30;
    r0 = r1 + (r0 >> 25);
    return r0;
}

// FUN_0063d644
u32 W_63d644(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 << 12;
    r0 = r0 >> 24;
    return r0;
}

// FUN_0063e38c
u32 W_63e38c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0);
    r0 = r0 >> 18;
    return r0;
}

// FUN_0063e398
u32 W_63e398(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0);
    r0 = r0 << 14;
    r0 = (u32)((int)r0 >> 14);
    return r0;
}

// FUN_0063e700
u32 W_63e700(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 10);
    fa = r0; fb = 0u;
    if (fa != fb) { fa = r0; fb = 1u; }
    if (fa != fb) r0 = 2u;
    if (fa == fb) goto L_63e714;
    L_63e714:;
    return r0;
}

// FUN_0063e770
u32 W_63e770(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 14);
    fa = r0; fb = 0u;
    if (fa != fb) { fa = r0; fb = 1u; }
    if (fa != fb) r0 = 2u;
    if (fa == fb) goto L_63e784;
    L_63e784:;
    return r0;
}

// FUN_0063fad0
u32 W_63fad0(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 40);
    r0 = r0 << 23;
    r0 = r0 >> 24;
    return r0;
}

// FUN_0063faec
u32 W_63faec(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 44);
    r0 = r0 & 31457280u;
    r0 = r0 >> 21;
    return r0;
}

// FUN_0063fb40
u32 W_63fb40(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 44);
    r0 = r0 << 19;
    r0 = r0 >> 24;
    return r0;
}

// FUN_00640d08
u32 W_640d08(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 12);
    if (fa != fb) r0 = *(u32*)(r0 + (a1 << 2));
    return r0;
}

// FUN_006419c8
void W_6419c8(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 20);
    { ((u32(*)())r0)(); return; }
}

// FUN_00643620
void W_643620(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, fa, fb;
    fa = a2; fb = 0u;
    if (fa != fb) r0 = *(u32*)(a2 + 12);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u8*)(r0) = r1;
    if (fa == fb) goto L_643638;
    L_643638:;
    return;
}

// FUN_0064363c
void W_64363c(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, fa, fb;
    fa = a2; fb = 0u;
    if (fa != fb) r0 = *(u32*)(a2 + 12);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0) = r1;
    if (fa == fb) goto L_643654;
    L_643654:;
    return;
}

// FUN_00643840
void W_643840(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r4, fa, fb;
    r0 = r0 - 128u;
    r4 = a2;
    if (r4 != 0) r0 = *(u32*)(r0 + 148);
    fa = r4; fb = 0;
    if (r4 != 0) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_643868;
    r1 = *(u32*)(r4 + 12);
    r0 = Fn_628a64_3(r0, r1, a2);
    r1 = *(u32*)(r4 + 16);
    *(u8*)(r1) = r0;
    L_643868:;
    return;
}

// FUN_00643944
u32 W_643944(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = (u32)g_0081cecc;
    r2 = r1 + 36u;
    *(u32*)(r0) = r2; r0 = r0 + -12u;
    *(u32*)(r0) = r1;
    return r0;
}

// FUN_00644304
void W_644304(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082d5cc;
    r0 = r0 + 4294967292u; *(u32*)(r0) = r1;
    { Fn_2024b0_2(r0, r1); return; }
}

// FUN_00644314
u32 W_644314(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082d5cc;
    r0 = r0 + 4294967292u; *(u32*)(r0) = r1;
    return r0;
}

// FUN_006443b8
void W_6443b8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082d5dc;
    r0 = r0 + 4294967292u; *(u32*)(r0) = r1;
    { Fn_2024b0_2(r0, r1); return; }
}

// FUN_006443c8
u32 W_6443c8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082d5dc;
    r0 = r0 + 4294967292u; *(u32*)(r0) = r1;
    return r0;
}

// FUN_0064445c
void W_64445c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082d5ec;
    r0 = r0 + 4294967292u; *(u32*)(r0) = r1;
    { Fn_2024b0_2(r0, r1); return; }
}

// FUN_0064446c
u32 W_64446c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082d5ec;
    r0 = r0 + 4294967292u; *(u32*)(r0) = r1;
    return r0;
}

// FUN_006446d4
void W_6446d4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = a2;
    r0 = r0 - 72u;
    if (r4 != 0) r1 = *(u32*)(r4 + 12);
    fa = r4; fb = 0;
    if (r4 != 0) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_644700;
    r0 = *(u32*)(r0 + 148);
    r0 = r0 + 12u;
    r0 = Fn_2c51d4_3(r0, r1, a2);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1) = r0;
    L_644700:;
    return;
}

// FUN_006460fc
void W_6460fc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = a2;
    r0 = r0 - 80u;
    if (r4 != 0) r1 = *(u32*)(r4 + 12);
    fa = r4; fb = 0;
    if (r4 != 0) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_646128;
    r0 = *(u32*)(r0 + 148);
    r0 = r0 + 12u;
    r0 = Fn_2c51a4_3(r0, r1, a2);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1) = r0;
    L_646128:;
    return;
}

// FUN_00646384
void W_646384(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1, fa, fb;
    fa = a2; fb = 0u;
    if (fa != fb) r0 = *(u32*)(a2 + 16);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u8*)(r0) = r1;
    if (fa == fb) goto L_64639c;
    L_64639c:;
    return;
}

// FUN_0064664c
u32 W_64664c(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = r0 << 1;
    r0 = r1 << 8;
    if (r0 != 0) r0 = 4u;
    r2 = r1 >> 24;
    if (r2 != 0) r0 = r0 | 1u;
    r2 = 4278190080u;
    r1 = r2 & ~r1;
    if (r1 == 0) r0 = r0 | 2u;
    if (r0 == 1u) r0 = 5u;
    return r0;
}

// FUN_0066af4c
u32 W_66af4c(u32 a0) {
    u32 r0 = a0, r4, r5;
    r4 = r0;
    r0 = *(u16*)(r0);
    r5 = 0u;
    if (r0 == 0u) goto L_66af80;
    L_66af64:;
    r0 = r4;
    r0 = Fn_677e2c_1(r0);
    r4 = r4 + (r0 << 1);
    r5 = r5 + 1u;
    r4 = r4 + 2u; r0 = *(u16*)(r4);
    if (r0 != 0u) goto L_66af64;
    L_66af80:;
    r0 = r5;
    return r0;
}

// FUN_00681db4
void W_681db4(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0 + 8);
    if (r1 == 0u) goto L_681dd0;
    r1 = *(u32*)(a0 + 16);
    r1 = *(u32*)(r1 + 36);
    if (r1 == 0u) goto L_681ddc;
    L_681dd0:;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 16);
    { ((u32(*)(u32))r1)(a0); return; }
    L_681ddc:;
    return;
}

// FUN_006822e4
void W_6822e4(u32 a0) {
    u32 r1;
    r1 = *(u32*)(a0 + 8);
    if (r1 == 0u) goto L_682300;
    r1 = *(u32*)(a0 + 16);
    r1 = *(u32*)(r1 + 36);
    if (r1 == 0u) goto L_68230c;
    L_682300:;
    r1 = *(u32*)(a0);
    r1 = *(u32*)(r1 + 16);
    { ((u32(*)(u32))r1)(a0); return; }
    L_68230c:;
    return;
}

// FUN_00682bac
void W_682bac(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 28);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 136);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00683004
void W_683004(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 28);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 136);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_0068335c
void W_68335c(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 28);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 136);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00683660
void W_683660(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 28);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 136);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_006839c8
void W_6839c8(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 28);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 136);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00683d4c
void W_683d4c(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 28);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 136);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_0068a5b8
void W_68a5b8(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3;
    r2 = *(u32*)(a0);
    r3 = *(u16*)(a0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + r3;
    r1 = (u32)(short)r1;
    { ((u32(*)(u32, u32))r2)(a0, r1); return; }
}
