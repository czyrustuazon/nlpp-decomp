// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_021ccc_2(u32, u32);
u32 Fn_646540_1(u32);
extern char g_008aabb0[];
u32 Fn_028f24_2(u32, u32);
extern char g_0082bfc4[];
u32 Fn_02a948_2(u32, u32);
u32 Fn_2024b0_1(u32);
extern char g_008bb658[];
extern char g_009df8ac[];
u32 Fn_01b624_2(u32, u32);
u32 Fn_4f0efc_1(u32);
u32 Fn_4f0cf4_0();
u32 Fn_0244c8_1(u32);
u32 Fn_024568_1(u32);
u32 Fn_4f1320_1(u32);
u32 Fn_50e6e4_0();
u32 Fn_50e6e4_1(u32);
u32 Fn_50e7a4_2(u32, u32);
u32 Fn_50e7e8_1(u32);
u32 Fn_50e894_2(u32, u32);
u32 Fn_50f2a8_2(u32, u32);
u32 Fn_510f94_1(u32);
u32 Fn_50ea8c_1(u32);
u32 Fn_50eb34_1(u32);
u32 Fn_50ebb0_1(u32);
u32 Fn_50ec58_1(u32);
u32 Fn_50ef2c_1(u32);
u32 Fn_50ef2c_2(u32, u32);
u32 Fn_50f8c0_1(u32);
u32 Fn_50f98c_1(u32);
u32 Fn_50fa5c_1(u32);
u32 Fn_50fb98_1(u32);
u32 Fn_5142d4_2(u32, u32);
extern char g_008aae48[];
u32 Fn_024788_3(u32, u32, u32);
u32 Fn_024788_2(u32, u32);
u32 Fn_024788_1(u32);
extern char g_0082c37c[];
extern char g_0082c3d4[];
extern char g_008aab68[];
u32 Fn_504590_3(u32, u32, u32);
u32 Fn_52008c_1(u32);
extern char g_00202bf8[];
u32 Fn_0252f4_0();
u32 Fn_02962c_1(u32);
u32 Fn_533880_1(u32);
extern char g_008ab948[];
u32 Fn_01d390_1(u32);
u32 Fn_01d390_0();
u32 Fn_0135a4_0();
u32 Fn_01d0e0_1(u32);
u32 Fn_01d0f0_1(u32);
u32 Fn_01d5d0_1(u32);
u32 Fn_01d5f0_1(u32);
extern char g_008ab8e0[];
extern char g_009ae8e0[];
u32 Fn_5341bc_0();
extern char g_008aac08[];
extern char g_009a108c[];
extern char g_008b7cc8[];
extern char g_0082c594[];
u32 Fn_548334_1(u32);
u32 Fn_548334_2(u32, u32);
u32 Fn_542230_3(u32, u32, u32);
u32 Fn_5421f4_2(u32, u32);
u32 Fn_54e5ac_1(u32);
extern char g_0082ca0c[];
u32 Fn_665970_3(u32, u32, u32);
extern char g_008bb4fc[];
extern char g_0082ca60[];
u32 Fn_54f870_1(u32);
u32 Fn_5504e0_3(u32, u32, u32);
extern char g_0082ce4c[];
u32 Fn_2024b0_3(u32, u32, u32);
u32 Fn_565968_1(u32);
u32 Fn_5563ac_2(u32, u32);
u32 Fn_5606b4_2(u32, u32);
u32 Fn_5661a8_1(u32);
u32 Fn_5606b4_1(u32);
u32 Fn_56651c_1(u32);
u32 Fn_5667c4_2(u32, u32);
u32 Fn_565968_0();
u32 Fn_55d8b8_1(u32);
u32 Fn_562c3c_2(u32, u32);
extern char g_009e0124[];

// FUN_004fd0c8
u32 W_4fd0c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_4fd0e0;
    r0 = Fn_021ccc_2(r0, r1);
    goto L_4fd0e8;
    L_4fd0e0:;
    r0 = Fn_646540_1(r0);
    L_4fd0e8:;
    r0 = r4;
    return r0;
}

// FUN_004fd0f0
u32 W_4fd0f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_4fd108;
    r0 = Fn_021ccc_2(r0, r1);
    goto L_4fd110;
    L_4fd108:;
    r0 = Fn_646540_1(r0);
    L_4fd110:;
    r0 = r4;
    return r0;
}

// FUN_005449b0
void W_5449b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c594;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_548334_2(r0, r1);
    r0 = *(u32*)(r4 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_548334_1(r0);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00545550
void W_545550(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = r0;
    r1 = r0 + 20u;
    r0 = r0 + 16u;
    r2 = r4 + 4u;
    r0 = Fn_542230_3(r0, r1, r2);
    *(u32*)(r4 + 12) = r5;
    return;
}

// FUN_00545594
void W_545594(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r2;
    r1 = r1 + 4u;
    r0 = r0 + 16u;
    r2 = r2 + 4u;
    r0 = Fn_542230_3(r0, r1, r2);
    *(u32*)(r4 + 12) = r5;
    return;
}

// FUN_005455b8
void W_5455b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r0 = r0 + 16u;
    r1 = r1 + 4u;
    r0 = Fn_5421f4_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    return;
}

// FUN_00545e7c
void W_545e7c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0);
    r6 = r1;
    r2 = *(u32*)(r0 + 56);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u8*)(r5 + 183);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    r0 = r6 & ~r0;
    fx = r0 & 1u;
    if (fx != 0) goto L_545ee4;
    r4 = *(u32*)(r5 + 20);
    r0 = r5 + 20u;
    fa = r4; fb = r0;
    if (fa == fb) goto L_545ee4;
    L_545ec0:;
    r1 = *(u32*)(r4 - 4);
    r0 = r4 - 4u;
    r2 = *(u32*)(r1 + 52);
    r1 = r6;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r4 = *(u32*)(r4);
    r0 = r5 + 20u;
    fa = r4; fb = r0;
    if (fa != fb) goto L_545ec0;
    L_545ee4:;
    return;
}

// FUN_00549690
void W_549690(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 328) = r2;
    return;
}

// FUN_00549778
void W_549778(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 & ~3u;
    r0 = r0 + 328u;
    r1 = r1 & 3u;
    r0 = r0 + r3;
    *(u8*)(r0 + r1) = r2;
    return;
}

// FUN_0054a080
void W_54a080(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r0 + 336u;
    r0 = Fn_54e5ac_1(r0);
    r0 = *(u32*)(r4 + 316);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54a0a8;
    r1 = *(u8*)(r0 + 77);
    r1 = r1 & 251u;
    *(u8*)(r0 + 77) = r1;
    L_54a0a8:;
    return;
}

// FUN_0054a0ac
void W_54a0ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 320) = r2;
    return;
}

// FUN_0054a0bc
void W_54a0bc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 & ~3u;
    r0 = r0 + 320u;
    r1 = r1 & 3u;
    r0 = r0 + r3;
    *(u8*)(r0 + r1) = r2;
    return;
}

// FUN_0054a6a0
void W_54a6a0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 >> 1;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 216) = r2;
    return;
}

// FUN_0054aa34
void W_54aa34(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 >> 3;
    r1 = r1 & 3u;
    r0 = r0 + (r3 << 2);
    r0 = r0 + r1;
    *(u8*)(r0 + 216) = r2;
    return;
}

// FUN_0054e294
void W_54e294(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca0c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 12);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54e2c8;
    r0 = Fn_548334_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_54e2c8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0054e2d8
u32 W_54e2d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca0c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 12);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54e30c;
    r0 = Fn_548334_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_54e30c:;
    r0 = r4;
    return r0;
}

// FUN_0054edb0
void W_54edb0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = r2;
    r0 = *(u32*)(r0 + 464);
    { Fn_665970_3(r0, r1, r2); return; }
}

// FUN_00550154
u32 W_550154() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb4fc;
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_00550664
void W_550664(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca60;
    r4 = r0;
    r2 = r1 + 36u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 88) = r2;
    r0 = Fn_5504e0_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_54f870_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00551474
u32 W_551474(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 536);
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_551494;
    r0 = 4u;
    r1 = r0 + (r1 << 2);
    r0 = *(u32*)(r3 + r1);
    *(u32*)(r3 + r1) = r2;
    L_551494:;
    return r0;
}

// FUN_00551c78
void W_551c78(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_551ca0;
    fa = r2; fb = 1u;
    if (fa == fb) r2 = *(u32*)(r0 + 28);
    if (fa == fb) r1 = r1 + r2;
    if (fa == fb) goto L_551ca0;
    fa = r2; fb = 2u;
    if (fa == fb) r2 = *(u32*)(r0 + 24);
    if (fa == fb) r1 = r2 - r1;
    if (fa != fb) goto L_551ca4;
    L_551ca0:;
    *(u32*)(r0 + 28) = r1;
    L_551ca4:;
    return;
}

// FUN_005557b8
void W_5557b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 112);
    r2 = *(u32*)(r0 + 108);
    fa = r1; fb = r2;
    if ((int)fa < (int)fb) r1 = r1 + 1u;
    if ((int)fa < (int)fb) *(u32*)(r0 + 112) = r1;
    r1 = *(u32*)(r0 + 176);
    r2 = *(u32*)(r0 + 172);
    fa = r1; fb = r2;
    if ((int)fa < (int)fb) r1 = r1 + 1u;
    if ((int)fa < (int)fb) *(u32*)(r0 + 176) = r1;
    return;
}

// FUN_005558bc
u32 W_5558bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_005558fc
u32 W_5558fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00556fa8
u32 W_556fa8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8192u;
    r0 = r0 + 2512u;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00558cb8
u32 W_558cb8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 616);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0055b780
void W_55b780(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082ce4c;
    r1 = 0u;
    r3 = 520u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    *(u16*)(r3 + r0) = r1;
    *(u8*)(r0 + 522) = r1;
    return;
}

// FUN_0055b7a4
void W_55b7a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082ce4c;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    { Fn_2024b0_3(r0, r1, r2); return; }
}

// FUN_0055bd58
u32 W_55bd58(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 368);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 364) = r1;
    if (fa != fb) *(u32*)(r2) = r1;
    r2 = 0u;
    *(u32*)(r0 + 368) = r1;
    *(u32*)(r1) = r2;
    r0 = *(u32*)(r0 + 372);
    return r0;
}

// FUN_0055ea18
void W_55ea18(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 476u;
    r1 = r1 + 4u;
    { Fn_5421f4_2(r0, r1); return; }
}

// FUN_005603ac
void W_5603ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u32*)(r0 + 28) = r1;
    r1 = r1 + r2;
    *(u32*)(r0 + 32) = r1;
    return;
}

// FUN_00560598
void W_560598(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = *(u32*)(r0 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5605c0;
    L_5605ac:;
    r0 = r4;
    r0 = Fn_565968_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_5605ac;
    L_5605c0:;
    r0 = 0u;
    *(u32*)(r5 + 304) = r0;
    return;
}

// FUN_005605cc
u32 W_5605cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 16u;
    if ((int)fa < (int)fb) r0 = r0 + (r1 << 1);
    if ((int)fa < (int)fb) r0 = r0 + 268u;
    if ((int)fa >= (int)fb) r0 = 0u;
    return r0;
}

// FUN_00560648
void W_560648(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 1);
    r0 = r0 + 256u;
    *(u16*)(r0 + 12) = r2;
    return;
}

// FUN_00560660
void W_560660(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r1;
    r4 = r0;
    r0 = Fn_5606b4_2(r0, r1);
    r4 = *(u32*)(r4 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5606b0;
    L_56067c:;
    r0 = *(u8*)(r4 + 305);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5606a4;
    fa = r5; fb = 0u;
    if ((int)fa < (int)fb) goto L_56069c;
    r1 = r5 & 255u;
    r0 = r4 + 144u;
    r0 = Fn_5563ac_2(r0, r1);
    L_56069c:;
    r0 = r4;
    r0 = Fn_5661a8_1(r0);
    L_5606a4:;
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_56067c;
    L_5606b0:;
    return;
}

// FUN_00560b60
void W_560b60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = Fn_5606b4_1(r0);
    r4 = *(u32*)(r5 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_560b94;
    L_560b78:;
    r0 = *(u8*)(r4 + 305);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_5661a8_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_560b78;
    L_560b94:;
    r4 = *(u32*)(r5 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_560bb4;
    L_560ba0:;
    r0 = r4;
    r0 = Fn_565968_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_560ba0;
    L_560bb4:;
    r0 = 0u;
    *(u32*)(r5 + 304) = r0;
    *(u8*)(r5 + 5) = r0;
    return;
}

// FUN_00561480
void W_561480(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 4u;
    r1 = r1 + 424u;
    r0 = Fn_5421f4_2(r0, r1);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5614b8;
    r0 = r4;
    r0 = Fn_56651c_1(r0);
    r1 = r4;
    r0 = r5;
    { Fn_5667c4_2(r0, r1); return; }
    L_5614b8:;
    return;
}

// FUN_00562480
void W_562480(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r4 = r2;
    if (fa == fb) r0 = Fn_565968_0();
    r0 = 0u;
    *(u32*)(r4 + 156) = r0;
    return;
}

// FUN_00562d24
u32 W_562d24(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 + (r1 << 1);
    r0 = r0 << 5;
    return r0;
}

// FUN_00562d30
void W_562d30(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 4u;
    r1 = r1 + 88u;
    r0 = Fn_5421f4_2(r0, r1);
    r0 = r5 + 16u;
    r1 = r5 + 20u;
    r2 = r4 + 88u;
    r0 = Fn_542230_3(r0, r1, r2);
    r1 = r4;
    r0 = r5;
    r0 = Fn_562c3c_2(r0, r1);
    r4 = r4 + 88u;
    r5 = r5 + 8u;
    fa = r4; fb = r5;
    if (fa != fb) r6 = 32767u;
    if (fa == fb) goto L_562d9c;
    L_562d78:;
    r0 = *(u32*)(r4 - 24);
    fa = r0; fb = 1u;
    if ((int)fa <= (int)fb) goto L_562d9c;
    fa = r0; fb = r6;
    if (fa != fb) r0 = r4 - 88u;
    if (fa != fb) r0 = Fn_55d8b8_1(r0);
    r4 = *(u32*)(r4);
    fa = r4; fb = r5;
    if (fa != fb) goto L_562d78;
    L_562d9c:;
    return;
}

// FUN_00564bd0
u32 W_564bd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 16u;
    if ((int)fa < (int)fb) r0 = r0 + (r1 << 1);
    if ((int)fa < (int)fb) r0 = r0 + 208u;
    if ((int)fa < (int)fb) goto L_564bf4;
    fa = r1; fb = 32u;
    if ((int)fa < (int)fb) r0 = (u32)g_009e0124;
    if ((int)fa < (int)fb) r0 = r0 + (r1 << 1);
    if ((int)fa < (int)fb) r0 = r0 - 32u;
    if ((int)fa >= (int)fb) r0 = 0u;
    L_564bf4:;
    return r0;
}

// FUN_005657cc
void W_5657cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r1 = r0 + 4u;
    r2 = r2 + 4u;
    { Fn_542230_3(r0, r1, r2); return; }
}
