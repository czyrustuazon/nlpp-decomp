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

// FUN_00550154
u32 W_550154() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb4fc;
    r0 = *(signed char*)(r0 + 1);
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

// FUN_005603ac
void W_5603ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u32*)(r0 + 28) = r1;
    r1 = r1 + r2;
    *(u32*)(r0 + 32) = r1;
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

// FUN_00562d24
u32 W_562d24(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 + (r1 << 1);
    r0 = r0 << 5;
    return r0;
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
