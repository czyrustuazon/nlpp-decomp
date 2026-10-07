// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_00105c24[];
extern char g_00105c5c[];
extern char g_00105cec[];
extern char g_008aab50[];
extern char g_008ab450[];
u32 Fn_006448_2(u32, u32);
u32 Fn_00645c_2(u32, u32);
u32 Fn_006470_2(u32, u32);
u32 Fn_006494_3(u32, u32, u32);
u32 Fn_006768_1(u32);
u32 Fn_008c18_1(u32);
u32 Fn_012454_1(u32);
u32 Fn_013240_1(u32);
u32 Fn_01b404_1(u32);
extern char g_0082d8f8[];
extern char g_009a3d00[];
u32 Fn_008010_1(u32);
u32 Fn_015304_2(u32, u32);
extern char g_008bfa28[];
extern char g_008ab8e0[];
extern char g_008ab420[];
extern char g_008aab48[];
extern char g_009ba094[];
u32 Fn_015d90_2(u32, u32);
extern char g_009a0fe8[];
u32 Fn_010cfc_4(u32, u32, u32, u32);
extern char g_008ab81c[];
extern char g_008ab844[];
extern char g_009a0d28[];
u32 Fn_0258dc_1(u32);
extern char g_008ab4f8[];
u32 Fn_024788_1(u32);
u32 Fn_024798_1(u32);
u32 Fn_024800_1(u32);
u32 Fn_01b538_2(u32, u32);
extern char g_008aabb0[];
extern char g_008b7cd0[];
extern char g_0082bfc4[];
u32 Fn_02a948_2(u32, u32);
u32 Fn_02b010_3(u32, u32, u32);
u32 Fn_02b084_1(u32);
u32 Fn_1fd674_2(u32, u32);
extern char g_008ab394[];
extern char g_009a2ddc[];
u32 Fn_00e0a4_4(u32, u32, u32, u32);
u32 Fn_00e14c_1(u32);
u32 Fn_016d5c_0();
u32 Fn_020908_2(u32, u32);
extern char g_008a7da8[];
extern char g_009df3e0[];
u32 Fn_4dfd08_1(u32);
u32 Fn_553a58_1(u32);
u32 Fn_56e744_1(u32);
u32 Fn_56e7b4_1(u32);
u32 Fn_622434_0();
u32 Fn_622434_1(u32);
u32 Fn_04bac4_2(u32, u32);
u32 Fn_5d646c_1(u32);
u32 Fn_5d649c_1(u32);
u32 Fn_04bac4_4(u32, u32, u32, u32);
u32 Fn_04b6f4_3(u32, u32, u32);
extern char g_008bfa40[];
u32 Fn_1d22bc_1(u32);
u32 Fn_21fca8_1(u32);
u32 Fn_230680_1(u32);
u32 Fn_2556cc_0();
u32 Fn_5c5a78_3(u32, u32, u32);
extern char g_008a65d8[];
u32 Fn_015564_1(u32);
u32 Fn_1f26f0_0();
u32 Fn_1f2d4c_1(u32);
u32 Fn_1f5bf4_1(u32);
u32 Fn_2060b8_1(u32);
u32 Fn_60bdc8_2(u32, u32);
u32 Fn_60bdc8_3(u32, u32, u32);
u32 Fn_59ceb4_1(u32);
u32 Fn_5a8470_3(u32, u32, u32);
u32 Fn_277f60_3(u32, u32, u32);
u32 Fn_278268_1(u32);
u32 Fn_07e2fc_2(u32, u32);
u32 Fn_1d6060_1(u32);
u32 Fn_20e698_1(u32);
u32 Fn_5992a0_2(u32, u32);
u32 Fn_5a579c_1(u32);
u32 Fn_19ac4c_1(u32);
u32 Fn_1f5bf4_0();
u32 Fn_20004c_3(u32, u32, u32);
extern char g_008a825c[];
extern char g_008bfa54[];
extern char g_008bfac0[];
u32 Fn_358214_2(u32, u32);
u32 Fn_5bbb9c_2(u32, u32);
extern char g_0080574c[];
u32 Fn_1fcd88_3(u32, u32, u32);
u32 Fn_2024b0_1(u32);

// FUN_00005894
void W_005894() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_00105c5c;
    r1 = 0u;
    r0 = Fn_00645c_2(r0, r1);
    r0 = (u32)g_00105cec;
    r1 = 0u;
    r0 = Fn_006470_2(r0, r1);
    r0 = (u32)g_00105c24;
    r1 = 0u;
    r0 = Fn_006448_2(r0, r1);
    r0 = (u32)g_008ab450;
    r0 = Fn_01b404_1(r0);
    r0 = 1u;
    r0 = Fn_006768_1(r0);
    r0 = Fn_013240_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_58e4;
    r0 = Fn_012454_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_58f8;
    L_58e4:;
    r0 = (u32)g_008aab50;
    r1 = 0u;
    r2 = *(u32*)(r0);
    r0 = r1;
    r0 = Fn_006494_3(r0, r1, r2);
    L_58f8:;
    r0 = 1u;
    { Fn_008c18_1(r0); return; }
}

// FUN_00005944
void W_005944(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = (u32)g_0082d8f8;
    r6 = (u32)g_009a3d00;
    r4 = 0u;
    *(u32*)(r5) = r0;
    L_595c:;
    r0 = r5 + (r4 << 2);
    r1 = *(u32*)(r0 + 48);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = r6;
    if (fa != fb) r0 = Fn_015304_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 3u;
    if ((int)fa < (int)fb) goto L_595c;
    r0 = r5;
    { Fn_008010_1(r0); return; }
}

// FUN_00005d1c
void W_005d1c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa28;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5d58;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_5d58:;
    return;
}

// FUN_00006484
u32 W_006484() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_000079f8
u32 W_0079f8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab420;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_0000a130
void W_00a130(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009ba094;
    r1 = *(u32*)(r1 + 4);
    r5 = r4 + 3072u;
    r5 = r5 + 1016u;
    r0 = r4 + 4096u;
    r0 = Fn_015d90_2(r0, r1);
    r0 = 1u;
    *(u32*)(r5 + 4) = r0;
    r0 = *(u32*)(r4 + 12);
    r0 = r0 | 1u;
    *(u32*)(r4 + 12) = r0;
    return;
}

// FUN_00015664
u32 W_015664(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0);
    return r0;
}

// FUN_00015674
u32 W_015674(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 8u;
    return r0;
}

// FUN_00017a48
u32 W_017a48() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab81c;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0) = r1;
    return r0;
}

// FUN_000185a0
u32 W_0185a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab844;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0) = r1;
    return r0;
}

// FUN_00018bb4
void W_018bb4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_009a0d28;
    r3 = *(u32*)(r2 + 292);
    r3 = r2 + (r3 << 2);
    *(u32*)(r3 + 308) = r0;
    r0 = *(u32*)(r2 + 292);
    r0 = r2 + (r0 << 2);
    *(u32*)(r0 + 320) = r1;
    return;
}

// FUN_0001902c
u32 W_01902c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    if (fa == fb) goto L_19050;
    fa = r0; fb = 196608u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_1904c;
    r0 = Fn_0258dc_1(r0);
    r0 = 526385151u;
    L_1904c:;
    return r0;
    L_19050:;
    r0 = Fn_0258dc_1(r0);
    r0 = 523239423u;
    return r0;
}

// FUN_00019068
u32 W_019068(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    if (fa == fb) goto L_19098;
    fa = r0; fb = 196608u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_19094;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 2621440u;
    if (fa != fb) goto L_19094;
    L_19090:;
    r0 = 3145728u;
    L_19094:;
    return r0;
    L_19098:;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1572864u;
    if (fa == fb) goto L_19090;
    return r0;
}

// FUN_000190b0
u32 W_0190b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    if (fa == fb) goto L_190dc;
    fa = r0; fb = 196608u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_190d8;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 523763712u;
    if (fa == fb) r0 = 523239424u;
    L_190d8:;
    return r0;
    L_190dc:;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 521666560u;
    if (fa == fb) r0 = 520093696u;
    return r0;
}

// FUN_00019100
void W_019100(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008ab4f8;
    r2 = *(u32*)(r1);
    r0 = r0 + r2;
    *(u32*)(r1) = r0;
    return;
}

// FUN_0001b958
u32 W_01b958(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + 36u;
    r0 = *(u16*)(r0 + 52);
    *(u16*)(r2 + 16) = r1;
    return r0;
}

// FUN_0001ba44
u32 W_01ba44(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + 36u;
    r0 = *(signed char*)(r0 + 56);
    *(u8*)(r2 + 20) = r1;
    return r0;
}

// FUN_00020ac8
void W_020ac8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0) = r1;
    return;
}

// FUN_00026c04
void W_026c04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 8);
    r1 = r1 & 15u;
    r1 = r1 | r2;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_00029044
u32 W_029044(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0);
    if (fa != fb) r0 = *(u16*)(r0 + 10);
    if (fa != fb) r1 = r1 + 4u;
    if (fa != fb) r0 = *(u32*)(r0 + r1);
    return r0;
}

// FUN_0002a298
u32 W_02a298(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 4);
    fa = r1; fb = 97u;
    if (fa == fb) r0 = *(u32*)(r0 + 8);
    if (fa == fb) r0 = *(u16*)(r0 + 2);
    if (fa == fb) goto L_2a2c8;
    fa = r1; fb = 104u;
    if (fa == fb) r0 = *(u32*)(r0 + 8);
    if (fa == fb) r0 = *(u16*)(r0);
    if (fa == fb) goto L_2a2c8;
    fa = r1; fb = 120u;
    if (fa != fb) r0 = 1u;
    if (fa == fb) r0 = 0u;
    L_2a2c8:;
    return r0;
}

// FUN_0002a2cc
u32 W_02a2cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 4);
    fa = r0; fb = 120u;
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0002a724
void W_02a724(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082bfc4;
    *(u32*)(r0) = r1;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    { Fn_02a948_2(r0, r1); return; }
}

// FUN_0002aaa0
u32 W_02aaa0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = r0 + r1;
    return r0;
}

// FUN_0002afac
u32 W_02afac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = r4;
    if (fa != fb) goto L_2b000;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2afd8;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = r2;
    if (fa == fb) goto L_2aff8;
    goto L_2b000;
    L_2afd8:;
    r0 = r4;
    r0 = Fn_02b010_3(r0, r1, r2);
    r5 = r0;
    r0 = r4;
    r0 = Fn_02b084_1(r0);
    fa = r5; fb = r0;
    if ((int)fa < (int)fb) goto L_2b000;
    L_2aff8:;
    r0 = 1u;
    return r0;
    L_2b000:;
    r0 = 0u;
    return r0;
}

// FUN_00035814
u32 W_035814(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    return r0;
}

// FUN_000358d8
u32 W_0358d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0);
    if (fa != fb) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00040154
u32 W_040154(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = r1;
    if (fa <= fb) r0 = r1;
    return r0;
}

// FUN_00040160
u32 W_040160(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = r1;
    if (fa >= fb) r0 = r1;
    return r0;
}

// FUN_0004016c
u32 W_04016c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 8);
    r0 = r0 + (r1 << 2);
    r0 = r0 + 24u;
    return r0;
}

// FUN_0004017c
u32 W_04017c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 18);
    r0 = r0 + r1;
    return r0;
}

// FUN_000420a0
void W_0420a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_420bc;
    r1 = 5224u;
    r1 = *(u32*)(r1 + r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_420bc;
    { Fn_1fd674_2(r0, r1); return; }
    L_420bc:;
    return;
}

// FUN_00042440
u32 W_042440(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 5120u;
    r0 = r0 + 72u;
    r0 = *(u32*)(r0);
    r0 = (u32)((int)r0 >> 3);
    return r0;
}

// FUN_000427c4
void W_0427c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + 3072u;
    r0 = *(u32*)(r0 + 3972);
    r2 = r2 + 900u;
    r0 = r0 | r1;
    *(u32*)(r2) = r0;
    return;
}

// FUN_000428d0
u32 W_0428d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 20);
    r0 = *(u32*)(r0 + 24);
    r0 = r0 + r1;
    return r0;
}

// FUN_000493b8
void W_0493b8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_016d5c_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_00e14c_1(r0);
    r4 = (u32)g_008ab394;
    fa = r0; fb = 0u;
    *(u32*)(r4) = r0;
    if (fa == fb) goto L_49400;
    r1 = (u32)g_009a2ddc;
    r3 = 0u;
    r1 = *(u32*)(r1 + 128);
    r2 = r1 << 4;
    r1 = 1u;
    r0 = Fn_00e0a4_4(r0, r1, r2, r3);
    r0 = *(u32*)(r4);
    r1 = 16u;
    r0 = Fn_020908_2(r0, r1);
    *(u32*)(r4 + 4) = r0;
    L_49400:;
    return;
}

// FUN_000495e8
u32 W_0495e8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008a7da8;
    r2 = *(u32*)(r2);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_49614;
    r3 = *(u32*)(r2 + 24);
    r2 = *(u32*)(r2 + 28);
    r0 = r0 & r3;
    r1 = r1 & r2;
    r0 = r0 | r1;
    if (r0 != 0) r0 = 1u;
    if (r0 != 0) goto L_49618;
    L_49614:;
    r0 = 0u;
    L_49618:;
    return r0;
}

// FUN_00049724
u32 W_049724() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a7da8;
    r0 = *(u32*)(r0);
    r0 = *(signed char*)(r0 + 204);
    return r0;
}

// FUN_00049ea8
u32 W_049ea8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_622434_0();
    r0 = Fn_56e744_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_49ecc;
    r0 = (u32)g_009df3e0;
    r0 = Fn_553a58_1(r0);
    r0 = Fn_622434_1(r0);
    r0 = Fn_56e7b4_1(r0);
    L_49ecc:;
    r0 = Fn_4dfd08_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_0004b2cc
void W_04b2cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    *(u8*)(r0 + 152) = r1;
    r6 = r1;
    r4 = 0u;
    *(u8*)(r0 + 568) = r1;
    L_4b2e4:;
    r1 = r4 & 255u;
    r0 = r5;
    r0 = Fn_04bac4_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if ((int)fa < (int)fb) goto L_4b2e4;
    r0 = *(u32*)(r5 + 552);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4b320;
    fa = r6; fb = 0u;
    if (fa == fb) goto L_4b318;
    { Fn_5d649c_1(r0); return; }
    L_4b318:;
    { Fn_5d646c_1(r0); return; }
    L_4b320:;
    return;
}

// FUN_0004c72c
void W_04c72c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r0 + r1;
    *(u8*)(r3 + 524) = r2;
    { Fn_04bac4_4(r0, r1, r2, r3); return; }
}

// FUN_0004d1dc
void W_04d1dc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 522u;
    *(u16*)(r2 + r0) = r1;
    r1 = *(u8*)(r0 + 518);
    r2 = 1u;
    { Fn_04b6f4_3(r0, r1, r2); return; }
}

// FUN_00054c24
u32 W_054c24() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_2556cc_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1d22bc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_21fca8_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_230680_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_0005f968
u32 W_05f968(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008a65d8;
    r0 = *(u32*)(r0 + 232);
    r1 = *(u32*)(r1 + 4);
    fa = r0; fb = r1;
    if (fa >= fb) r0 = r1;
    return r0;
}

// FUN_00064058
u32 W_064058(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 636);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 52u;
    if (fa != fb) goto L_6406c;
    return Fn_015564_1(r0);
    L_6406c:;
    return r0;
}

// FUN_000683f4
void W_0683f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) goto L_6840c;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 6u;
    if (fa != fb) goto L_68410;
    L_6840c:;
    *(u32*)(r0 + 136) = r1;
    L_68410:;
    return;
}

// FUN_00068cb0
u32 W_068cb0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1f26f0_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1f2d4c_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_2060b8_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1f5bf4_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_00069310
void W_069310(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 8u;
    if (fa >= fb) goto L_6932c;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6932c;
    { Fn_60bdc8_2(r0, r1); return; }
    L_6932c:;
    return;
}

// FUN_00069b1c
void W_069b1c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 8u;
    if (fa >= fb) return;
    r5 = r0 + r2;
    r4 = r1;
    r1 = *(u8*)(r5 + 244);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_69b54;
    fa = r4; fb = 0u;
    if (fa == fb) goto L_69b54;
    r0 = r0 + (r2 << 2);
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_60bdc8_3(r0, r1, r2);
    L_69b54:;
    *(u8*)(r5 + 244) = r4;
    return;
}

// FUN_00069b5c
void W_069b5c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r2 << 2);
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_69b70;
    { Fn_59ceb4_1(r0); return; }
    L_69b70:;
    return;
}

// FUN_0006c880
void W_06c880(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) r1 = 0u;
    *(u32*)(r0 + 188) = r1;
    return;
}

// FUN_0006c990
u32 W_06c990(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    if (fa < fb) r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 104);
    r1 = r2;
    r0 = Fn_5a8470_3(r0, r1, r2);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_0006d68c
void W_06d68c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 280);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_6d6b0;
    r1 = *(u32*)(r0 + 276);
    r1 = r1 + 1u;
    fa = r1; fb = 5u;
    *(u32*)(r0 + 276) = r1;
    if ((int)fa > (int)fb) r1 = 1u;
    if ((int)fa > (int)fb) *(u8*)(r0 + 280) = r1;
    L_6d6b0:;
    return;
}

// FUN_0006da60
void W_06da60(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) r1 = 0u;
    if ((int)fa < (int)fb) goto L_6da74;
    fa = r1; fb = 4u;
    if ((int)fa > (int)fb) r1 = 4u;
    L_6da74:;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0006e13c
void W_06e13c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 104);
    fa = r2; fb = r1;
    if (fa == fb) goto L_6e164;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 104) = r1;
    r1 = *(u8*)(r0 + 94);
    if (fa == fb) goto L_6e168;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_6e174;
    L_6e164:;
    return;
    L_6e168:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    if (fa == fb) goto L_6e164;
    L_6e174:;
    *(u8*)(r0 + 97) = r1;
    return;
}

// FUN_0006e1b8
void W_06e1b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = r0;
    r7 = 0u;
    *(u8*)(r0 + 104) = r7;
    *(u8*)(r0 + 96) = r7;
    *(u8*)(r0 + 97) = r7;
    r5 = r7;
    *(u32*)(r0 + 100) = r7;
    L_6e1d8:;
    r4 = r6 + (r5 << 3);
    r2 = 0u;
    r0 = *(u32*)(r4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r4);
    r0 = Fn_278268_1(r0);
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_278268_1(r0);
    r5 = r5 + 1u;
    fa = r5; fb = 7u;
    if ((int)fa < (int)fb) goto L_6e1d8;
    *(u8*)(r6 + 94) = r7;
    return;
}

// FUN_00074268
void W_074268(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 19u;
    if (fa < fb) *(u32*)(r0 + 20) = r1;
    return;
}

// FUN_0007441c
u32 W_07441c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = *(u32*)(r0 + 20);
    L_74424:;
    r0 = r0 + 1u;
    fa = r0; fb = 19u;
    if ((int)fa < (int)fb) goto L_74438;
    r0 = 0u;
    return r0;
    L_74438:;
    r2 = r1 + r0;
    r2 = *(u8*)(r2 + 38);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_74424;
    return r0;
}

// FUN_0007444c
u32 W_07444c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = *(u32*)(r0 + 20);
    L_74454:;
    r0 = r0 - 1u;
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) r0 = 18u;
    if (fa == fb) goto L_74474;
    r2 = r1 + r0;
    r2 = *(u8*)(r2 + 38);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_74454;
    L_74474:;
    return r0;
}

// FUN_00074498
void W_074498(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + 38u;
    L_7449c:;
    r1 = *(u32*)(r0 + 20);
    r1 = r1 + 1u;
    fa = r1; fb = 19u;
    *(u32*)(r0 + 20) = r1;
    if ((int)fa < (int)fb) goto L_744bc;
    r1 = 0u;
    *(u32*)(r0 + 20) = r1;
    return;
    L_744bc:;
    r1 = *(u8*)(r1 + r2);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_7449c;
    return;
}

// FUN_00074c04
u32 W_074c04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1 + 4);
    fa = r1; fb = 16u;
    if (fa != fb) goto L_74c20;
    r2 = 1u;
    r1 = 0u;
    *(u8*)(r0 + 81) = r2;
    *(u32*)(r0 + 84) = r1;
    L_74c20:;
    r0 = 1u;
    return r0;
}

// FUN_000758a8
void W_0758a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 16);
    fa = r2; fb = r1;
    if (fa == fb) goto L_758d0;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 16) = r1;
    r1 = *(u8*)(r0 + 8);
    if (fa == fb) goto L_758d4;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_758e0;
    L_758d0:;
    return;
    L_758d4:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    if (fa == fb) goto L_758d0;
    L_758e0:;
    *(u8*)(r0 + 11) = r1;
    return;
}

// FUN_00075924
void W_075924(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = 0u;
    *(u8*)(r0 + 16) = r5;
    *(u8*)(r0 + 10) = r5;
    *(u8*)(r0 + 11) = r5;
    r4 = r0;
    *(u32*)(r0 + 12) = r5;
    r0 = *(u32*)(r0);
    r2 = r5;
    r1 = r5;
    r0 = Fn_277f60_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r4);
    r0 = Fn_278268_1(r0);
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_278268_1(r0);
    *(u8*)(r4 + 8) = r5;
    return;
}

// FUN_00075ee0
void W_075ee0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 56);
    fa = r2; fb = r1;
    if (fa == fb) goto L_75f08;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 56) = r1;
    r1 = *(u8*)(r0 + 48);
    if (fa == fb) goto L_75f0c;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_75f18;
    L_75f08:;
    return;
    L_75f0c:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    if (fa == fb) goto L_75f08;
    L_75f18:;
    *(u8*)(r0 + 51) = r1;
    return;
}

// FUN_00075f5c
void W_075f5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = r0;
    r7 = 0u;
    *(u8*)(r0 + 56) = r7;
    *(u8*)(r0 + 50) = r7;
    *(u8*)(r0 + 51) = r7;
    r5 = r7;
    *(u32*)(r0 + 52) = r7;
    L_75f7c:;
    r4 = r6 + (r5 << 3);
    r2 = 0u;
    r0 = *(u32*)(r4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r4);
    r0 = Fn_278268_1(r0);
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_278268_1(r0);
    r5 = r5 + 1u;
    fa = r5; fb = 5u;
    if ((int)fa < (int)fb) goto L_75f7c;
    *(u8*)(r6 + 48) = r7;
    return;
}

// FUN_00076890
u32 W_076890(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 28);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_768ac;
    r0 = *(u8*)(r0 + 17);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_768b0;
    L_768ac:;
    r0 = 0u;
    L_768b0:;
    return r0;
}

// FUN_00077d08
void W_077d08(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 48);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 48) = r1;
    return;
}

// FUN_00077f40
void W_077f40(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 13);
    fa = r2; fb = r1;
    if (fa != fb) *(u8*)(r0 + 13) = r1;
    return;
}

// FUN_0007840c
void W_07840c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = 0u;
    *(u8*)(r0 + 16) = r5;
    *(u8*)(r0 + 10) = r5;
    *(u8*)(r0 + 11) = r5;
    r4 = r0;
    *(u32*)(r0 + 12) = r5;
    r0 = *(u32*)(r0);
    r2 = r5;
    r1 = r5;
    r0 = Fn_277f60_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r4);
    r0 = Fn_278268_1(r0);
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_278268_1(r0);
    *(u8*)(r4 + 8) = r5;
    return;
}

// FUN_000786f8
void W_0786f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 56) = r1;
    return;
}

// FUN_000796ec
void W_0796ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 60);
    fa = r2; fb = r1;
    if (fa == fb) goto L_79714;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 60) = r1;
    r1 = *(u8*)(r0 + 40);
    if (fa == fb) goto L_79718;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_79724;
    L_79714:;
    return;
    L_79718:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    if (fa == fb) goto L_79714;
    L_79724:;
    *(u8*)(r0 + 43) = r1;
    return;
}

// FUN_0007a260
void W_07a260(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 60);
    fa = r1; fb = 3u;
    if (fa > fb) r1 = 3u;
    fa = r2; fb = r1;
    if (fa != fb) r2 = 3u;
    if (fa != fb) *(u8*)(r0 + 76) = r2;
    *(u32*)(r0 + 60) = r1;
    return;
}

// FUN_0007ba14
void W_07ba14(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 24);
    fa = r2; fb = r1;
    if (fa == fb) goto L_7ba5c;
    r2 = 0u;
    *(u8*)(r0 + 29) = r2;
    *(u8*)(r0 + 30) = r2;
    *(u8*)(r0 + 31) = r2;
    *(u8*)(r0 + 32) = r2;
    *(u8*)(r0 + 25) = r2;
    *(u8*)(r0 + 26) = r2;
    *(u8*)(r0 + 27) = r2;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 24) = r1;
    r1 = *(u8*)(r0 + 15);
    if (fa == fb) goto L_7ba60;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_7ba6c;
    L_7ba5c:;
    return;
    L_7ba60:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    if (fa == fb) goto L_7ba5c;
    L_7ba6c:;
    *(u8*)(r0 + 19) = r1;
    return;
}

// FUN_0007e550
void W_07e550(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 9);
    r4 = r0;
    r0 = Fn_07e2fc_2(r0, r1);
    r0 = *(u8*)(r4 + 9);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_7e584;
    fa = r0; fb = 2u;
    if (fa != fb) r0 = 3u;
    if (fa != fb) *(u8*)(r4 + 8) = r0;
    if (fa == fb) r0 = 1u;
    if (fa != fb) goto L_7e588;
    L_7e584:;
    *(u8*)(r4 + 8) = r0;
    L_7e588:;
    return;
}

// FUN_0007e58c
void W_07e58c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 16);
    fa = r2; fb = r1;
    if (fa == fb) goto L_7e5b4;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 16) = r1;
    r1 = *(u8*)(r0 + 8);
    if (fa == fb) goto L_7e5b8;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_7e5c4;
    L_7e5b4:;
    return;
    L_7e5b8:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 2u;
    if (fa == fb) goto L_7e5b4;
    L_7e5c4:;
    *(u8*)(r0 + 11) = r1;
    return;
}

// FUN_0007e608
void W_07e608(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = 0u;
    *(u8*)(r0 + 16) = r5;
    *(u8*)(r0 + 10) = r5;
    *(u8*)(r0 + 11) = r5;
    r4 = r0;
    *(u32*)(r0 + 12) = r5;
    r0 = *(u32*)(r0);
    r2 = r5;
    r1 = r5;
    r0 = Fn_277f60_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r0 = *(u32*)(r4);
    r0 = Fn_278268_1(r0);
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_278268_1(r0);
    *(u8*)(r4 + 8) = r5;
    return;
}

// FUN_0007e7e0
void W_07e7e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r2 = 0u;
    r3 = 1u;
    if (fa == fb) goto L_7e80c;
    fa = r1; fb = 1u;
    if (fa != fb) goto L_7e808;
    *(u8*)(r0 + 76) = r3;
    r1 = 2u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    L_7e808:;
    return;
    L_7e80c:;
    *(u8*)(r0 + 76) = r3;
    r1 = 4u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0007f054
u32 W_07f054(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = (u32)g_008bfa40;
    r0 = Fn_1f5bf4_1(r0);
    r2 = *(u32*)(r5);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_20e698_1(r0);
    r2 = *(u32*)(r5);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1d6060_1(r0);
    r2 = *(u32*)(r5);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 88);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r4 + 92);
    if (fa != fb) r0 = Fn_5992a0_2(r0, r1);
    r0 = *(u32*)(r4 + 84);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_7f0c4;
    r0 = Fn_5a579c_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 84) = r0;
    L_7f0c4:;
    r0 = 1u;
    return r0;
}

// FUN_0007f188
void W_07f188(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r2 = 0u;
    r3 = 1u;
    if (fa == fb) goto L_7f1b4;
    fa = r1; fb = 1u;
    if (fa != fb) goto L_7f1b0;
    *(u8*)(r0 + 76) = r3;
    r1 = 2u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    L_7f1b0:;
    return;
    L_7f1b4:;
    *(u8*)(r0 + 76) = r3;
    r1 = 4u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0007f444
u32 W_07f444() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1f5bf4_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_19ac4c_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_0007f5ec
void W_07f5ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    r0 = r1;
    if (r0 == 0) goto L_7f604;
    r1 = *(u32*)(r2 + 12);
    r2 = 1736u;
    { Fn_20004c_3(r0, r1, r2); return; }
    L_7f604:;
    return;
}

// FUN_0008023c
u32 W_08023c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 172);
    fa = r1; fb = 1u;
    if (fa != fb) goto L_80254;
    r1 = *(u32*)(r0 + 164);
    r1 = r1 - 1u;
    *(u32*)(r0 + 164) = r1;
    L_80254:;
    r0 = 1u;
    return r0;
}

// FUN_00081e08
u32 W_081e08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = (u32)g_008bfac0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_81e2c;
    r1 = r4;
    r0 = Fn_5bbb9c_2(r0, r1);
    *(u32*)(r4 + 100) = r0;
    L_81e2c:;
    r0 = (u32)g_008a825c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_81e58;
    r0 = (u32)g_008bfa54;
    r1 = 24u;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 140);
    r0 = Fn_358214_2(r0, r1);
    r0 = 1u;
    L_81e58:;
    return r0;
}

// FUN_00086668
void W_086668(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0080574c;
    r1 = *(u32*)(r0 + 32);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_86694;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 32) = r0;
    L_86694:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_000d2364
u32 W_0d2364(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1 + 8);
    r2 = *(u32*)(r0 + 156);
    fa = r1; fb = r2;
    if (fa == fb) r1 = 1u;
    if (fa == fb) *(u8*)(r0 + 160) = r1;
    r0 = 1u;
    return r0;
}

// FUN_000e1370
u32 W_0e1370(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 9u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}
