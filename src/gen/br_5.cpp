// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_0081bbc4[];
u32 Fn_029ed4_2(u32, u32);
u32 Fn_2024b0_1(u32);
u32 Fn_2a3940_4(u32, u32, u32, u32);
extern char g_0081bc34[];
u32 Fn_1fcd88_3(u32, u32, u32);
u32 Fn_4d43d4_2(u32, u32);
extern char g_008bfa88[];
u32 Fn_60d4d0_2(u32, u32);
u32 Fn_313158_2(u32, u32);
u32 Fn_2ac1d0_1(u32);
u32 Fn_2ac1e8_1(u32);
u32 Fn_2b1da8_0();
u32 Fn_048d8c_2(u32, u32);
u32 Fn_2b6ec8_1(u32);
u32 Fn_2b7b48_3(u32, u32, u32);
u32 Fn_2b7d6c_1(u32);
u32 Fn_1fe040_0();
extern char g_008bfa40[];
u32 Fn_191224_1(u32);
u32 Fn_1b5a18_0();
u32 Fn_5c5a78_3(u32, u32, u32);
u32 Fn_1bd900_1(u32);
u32 Fn_1be11c_1(u32);
u32 Fn_22e568_1(u32);
u32 Fn_5c6ae0_3(u32, u32, u32);
u32 Fn_1bd900_0();
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_2e914c_1(u32);
u32 Fn_30d58c_1(u32);
u32 Fn_323dac_1(u32);
extern char g_0081c55c[];
u32 Fn_2cfe1c_3(u32, u32, u32);
u32 Fn_1dc494_1(u32);
u32 Fn_1e34a8_1(u32);
u32 Fn_1e3a1c_1(u32);
u32 Fn_1e4108_1(u32);
u32 Fn_1f5bf4_0();
u32 Fn_23a1bc_1(u32);
u32 Fn_1d22bc_1(u32);
u32 Fn_1eb578_1(u32);
u32 Fn_20bc68_1(u32);
u32 Fn_2556cc_0();
u32 Fn_2d77ac_1(u32);
u32 Fn_2d8af4_1(u32);
u32 Fn_1bc160_1(u32);
u32 Fn_1d3260_1(u32);
u32 Fn_1d3fb8_1(u32);
extern char g_007c6cd4[];
extern char g_0081cecc[];
u32 Fn_2024b0_3(u32, u32, u32);
u32 Fn_0317dc_4(u32, u32, u32, u32);
u32 Fn_5d6140_1(u32);
u32 Fn_4b1714_1(u32);
u32 Fn_4b102c_3(u32, u32, u32);
u32 Fn_12d794_3(u32, u32, u32);
u32 Fn_2f3a54_1(u32);
u32 Fn_2a74b0_2(u32, u32);
u32 Fn_62e2e8_2(u32, u32);
u32 Fn_4a017c_3(u32, u32, u32);
u32 Fn_4a01a0_1(u32);
u32 Fn_5d5fb8_1(u32);
u32 Fn_5d6094_1(u32);
extern char g_0081d410[];
u32 Fn_305840_1(u32);
extern char g_0081d488[];
extern char g_0081d4b0[];
u32 Fn_305840_0();
extern char g_0081d528[];
extern char g_0081d5a0[];
u32 Fn_30c1f0_1(u32);
u32 Fn_30e3b0_1(u32);
extern char g_0081d5f0[];
u32 Fn_305b98_1(u32);
extern char g_0081d688[];
u32 Fn_16865c_2(u32, u32);
u32 Fn_168fa8_3(u32, u32, u32);
u32 Fn_1686f8_1(u32);
u32 Fn_168fa8_0();
u32 Fn_6268b0_1(u32);
extern char g_008a825c[];
u32 Fn_073a00_2(u32, u32);
u32 Fn_074824_1(u32);
extern char g_008bfa8c[];
u32 Fn_1c6e50_0();
u32 Fn_1ecf60_1(u32);
u32 Fn_1f5bf4_1(u32);
extern char g_0089272c[];
u32 Fn_5992a0_2(u32, u32);

// FUN_002a3ff0
void W_2a3ff0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0081bbc4;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2a401c;
    r1 = 0u;
    r0 = Fn_029ed4_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_2a401c:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_002a49cc
u32 W_2a49cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 12);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2a4a10;
    r1 = *(u8*)(r0 + 22);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_2a4a10;
    r1 = *(u16*)(r0 + 18);
    r3 = 65535u;
    fa = r1; fb = r3;
    if (fa == fb) goto L_2a4a10;
    r12 = r1 + (r1 << 1);
    *(u16*)(r0 + 16) = r1;
    r1 = r2 + (r12 << 4);
    r1 = *(u16*)(r1 + 32);
    fa = r1; fb = r3;
    *(u16*)(r0 + 18) = r1;
    if (fa != fb) goto L_2a4a18;
    L_2a4a10:;
    r0 = 0u;
    return r0;
    L_2a4a18:;
    r0 = *(u32*)(r0 + 28);
    r1 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u16*)(r1 + 28);
    if (fa != fb) r0 = Fn_2a3940_4(r0, r1, r2, r3);
    r0 = 1u;
    return r0;
}

// FUN_002a74e4
void W_2a74e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0081bc34;
    r1 = *(u32*)(r0 + 8);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2a7510;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_2a7510:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_002a7d6c
void W_2a7d6c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 100);
    fa = r1; fb = 4u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_2a7d90;
    fa = r1; fb = 5u;
    if (fa < fb) goto L_2a7d94;
    fa = r1; fb = 8u;
    if (fa < fb) r1 = 8u;
    if (fa >= fb) goto L_2a7d94;
    L_2a7d90:;
    *(u32*)(r0 + 100) = r1;
    L_2a7d94:;
    return;
}

// FUN_002a7fb4
u32 W_2a7fb4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    r4 = 0u;
    if (fa == fb) goto L_2a7fe0;
    r1 = 2u;
    r0 = Fn_4d43d4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2a7fe0;
    r0 = *(u8*)(r0 + 11);
    r0 = r0 & 2u;
    r4 = r0 >> 1;
    L_2a7fe0:;
    r0 = r4;
    return r0;
}

// FUN_002a8064
u32 W_2a8064(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    r4 = 12u;
    if (fa == fb) goto L_2a8084;
    r1 = 2u;
    r0 = Fn_4d43d4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = *(short*)(r0 + 8);
    L_2a8084:;
    r0 = r4;
    return r0;
}

// FUN_002a83f0
u32 W_2a83f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 13);
    fa = r2; fb = 0u;
    if (fa != fb) goto L_2a840c;
    fa = r1; fb = 49u;
    if (fa < fb) *(u8*)(r0 + 34) = r1;
    if (fa < fb) r0 = 1u;
    if (fa < fb) goto L_2a8410;
    L_2a840c:;
    r0 = 0u;
    L_2a8410:;
    return r0;
}

// FUN_002a88f8
void W_2a88f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 36);
    r1 = r1 | 33554432u;
    *(u32*)(r0 + 36) = r1;
    return;
}

// FUN_002a98f0
u32 W_2a98f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_002aaad8
u32 W_2aaad8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 28);
    r2 = 65535u;
    fa = r3; fb = 0u;
    if (fa == fb) goto L_2aaaf0;
    fa = r1; fb = 4u;
    if (fa < fb) goto L_2aaaf8;
    L_2aaaf0:;
    r0 = r2;
    return r0;
    L_2aaaf8:;
    r0 = *(u32*)(r0 + 32);
    r1 = r1 + (r1 << 1);
    r2 = 2u;
    r1 = r2 + (r1 << 1);
    r0 = *(u16*)(r0 + r1);
    return r0;
}

// FUN_002ac1d0
u32 W_2ac1d0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 960);
    return r0;
}

// FUN_002ac4a8
u32 W_2ac4a8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ac4cc;
    r0 = *(u32*)(r0 + 960);
    r0 = r0 - 10u;
    fa = r0; fb = 8u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    L_2ac4cc:;
    return r0;
}

// FUN_002ac780
u32 W_2ac780(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2ac7a8;
    fa = r0; fb = 16u;
    if (fa >= fb) goto L_2ac7a8;
    r0 = r0 + r1;
    r0 = r0 + 1024u;
    r0 = *(signed char*)(r0 + 55);
    return r0;
    L_2ac7a8:;
    r0 = 0u;
    return r0;
}

// FUN_002ac7b4
u32 W_2ac7b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_002ac804
void W_2ac804(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008bfa88;
    r2 = *(u32*)(r2);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2ac820;
    fa = r0; fb = 16u;
    if (fa < fb) r0 = r0 + r2;
    if (fa < fb) *(u8*)(r0 + 1079) = r1;
    L_2ac820:;
    return;
}

// FUN_002acaac
void W_2acaac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa != fb) *(u32*)(r1 + 1016) = r0;
    return;
}

// FUN_002ad1b4
u32 W_2ad1b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ad1d4;
    r0 = *(u32*)(r0 + 4);
    r1 = *(signed char*)(r0 + 66);
    r0 = *(signed char*)(r0 + 72);
    r0 = Fn_60d4d0_2(r0, r1);
    L_2ad1d4:;
    r0 = 1u;
    return r0;
}

// FUN_002ad2f4
u32 W_2ad2f4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 1024u;
    if (fa != fb) r0 = *(signed char*)(r0 + 237);
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_002ad79c
u32 W_2ad79c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 1280u;
    if (fa != fb) r0 = *(signed char*)(r0 + 11);
    return r0;
}

// FUN_002ad814
u32 W_2ad814() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 1024u;
    if (fa != fb) r0 = *(short*)(r0 + 76);
    return r0;
}

// FUN_002ad850
u32 W_2ad850(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_2ad870;
    r1 = r1 + 40u;
    r0 = Fn_313158_2(r0, r1);
    r0 = 1u;
    L_2ad870:;
    return r0;
}

// FUN_002adb44
u32 W_2adb44() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 968);
    return r0;
}

// FUN_002ae140
u32 W_2ae140() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 1280u;
    if (fa != fb) r0 = *(signed char*)(r0 + 10);
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_002afef8
u32 W_2afef8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2aff14;
    r1 = *(u8*)(r0 + 1106);
    r1 = r1 + 1u;
    *(u8*)(r0 + 1106) = r1;
    L_2aff14:;
    return r0;
}

// FUN_002b0020
u32 W_2b0020(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2b0048;
    fa = r0; fb = 24u;
    if (fa >= fb) goto L_2b0048;
    r0 = r0 + r1;
    r0 = r0 + 1024u;
    r0 = *(signed char*)(r0 + 31);
    return r0;
    L_2b0048:;
    r0 = 0u;
    return r0;
}

// FUN_002b20a0
void W_2b20a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_2b1da8_0();
    r0 = Fn_2ac1d0_1(r0);
    fa = r0; fb = 12u;
    if (fa == fb) goto L_2b20c8;
    fa = r0; fb = 21u;
    if (fa != fb) goto L_2b20d4;
    r0 = 22u;
    { Fn_2ac1e8_1(r0); return; }
    L_2b20c8:;
    r0 = 13u;
    { Fn_2ac1e8_1(r0); return; }
    L_2b20d4:;
    return;
}

// FUN_002b5bd4
u32 W_2b5bd4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 137);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_2b5bf8;
    r1 = *(u8*)(r0 + 138);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 139) = r1;
    r0 = 1u;
    L_2b5bf8:;
    return r0;
}

// FUN_002b5dd0
void W_2b5dd0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = 255u;
    r0 = Fn_048d8c_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 78) = r1;
    return;
}

// FUN_002b7970
u32 W_2b7970(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_2b7984;
    return Fn_2b6ec8_1(r0);
    L_2b7984:;
    return r0;
}

// FUN_002b7c38
u32 W_2b7c38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 128);
    return r0;
}

// FUN_002b7cec
u32 W_2b7cec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 129);
    return r0;
}

// FUN_002b7d44
u32 W_2b7d44(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 76);
    return r0;
}

// FUN_002b7d4c
u32 W_2b7d4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 130);
    return r0;
}

// FUN_002b7d54
void W_2b7d54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 76);
    fa = r2; fb = r1;
    if (fa == fb) goto L_2b7d68;
    fa = r1; fb = 4u;
    if (fa < fb) *(u8*)(r0 + 76) = r1;
    L_2b7d68:;
    return;
}

// FUN_002b8660
u32 W_2b8660(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 131);
    return r0;
}

// FUN_002b9a7c
u32 W_2b9a7c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    r4 = 1u;
    fa = r2; fb = 16u;
    r2 = *(u8*)(r0 + 76);
    if (fa != fb) goto L_2b9ab4;
    r1 = *(u32*)(r1 + 8);
    r1 = r1 & 255u;
    fa = r1; fb = r2;
    *(u8*)(r0 + 76) = r1;
    if (fa == fb) goto L_2b9ab4;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2b7b48_3(r0, r1, r2);
    L_2b9ab4:;
    r0 = r4;
    return r0;
}

// FUN_002ba004
u32 W_2ba004(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_2ba018;
    return Fn_2b7d6c_1(r0);
    L_2ba018:;
    return r0;
}

// FUN_002bad2c
u32 W_2bad2c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_1fe040_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_002beb40
u32 W_2beb40() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1b5a18_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_191224_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_002c5104
void W_2c5104(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 179u;
    if (fa >= fb) goto L_2c5120;
    r1 = r1 + (r1 << 2);
    r2 = 0u;
    r0 = r0 + (r1 << 3);
    *(u16*)(r0) = r2;
    *(u16*)(r0 + 2) = r2;
    L_2c5120:;
    return;
}

// FUN_002c5150
u32 W_2c5150(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2c5190;
    fa = r1; fb = 179u;
    if (fa < fb) r3 = 0u;
    if (fa < fb) r2 = r3;
    if (fa >= fb) goto L_2c5190;
    L_2c5168:;
    r12 = r2 + (r2 << 2);
    r12 = r0 + (r12 << 3);
    r12 = *(u16*)(r12);
    fx = r12 & 2u;
    if (fx == 0) goto L_2c5194;
    r3 = r3 + 1u;
    fa = r1; fb = r3;
    if (fa != fb) goto L_2c5194;
    r1 = r2 + (r2 << 2);
    r0 = r0 + (r1 << 3);
    L_2c5190:;
    return r0;
    L_2c5194:;
    r2 = r2 + 1u;
    fa = r2; fb = 179u;
    if ((int)fa < (int)fb) goto L_2c5168;
    return r0;
}

// FUN_002c5204
u32 W_2c5204(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2c5244;
    fa = r1; fb = 179u;
    if (fa < fb) r3 = 0u;
    if (fa < fb) r2 = r3;
    if (fa >= fb) goto L_2c5244;
    L_2c521c:;
    r12 = r2 + (r2 << 2);
    r12 = r0 + (r12 << 3);
    r12 = *(u16*)(r12);
    fx = r12 & 1u;
    if (fx == 0) goto L_2c5248;
    r3 = r3 + 1u;
    fa = r1; fb = r3;
    if (fa != fb) goto L_2c5248;
    r1 = r2 + (r2 << 2);
    r0 = r0 + (r1 << 3);
    L_2c5244:;
    return r0;
    L_2c5248:;
    r2 = r2 + 1u;
    fa = r2; fb = 179u;
    if ((int)fa < (int)fb) goto L_2c521c;
    return r0;
}

// FUN_002c54e0
void W_2c54e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0);
    r1 = r1 & ~1u;
    *(u16*)(r0) = r1;
    return;
}

// FUN_002c5a90
void W_2c5a90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u16*)(r0 + 2);
    r1 = r1 + r2;
    *(u16*)(r0 + 2) = r1;
    return;
}

// FUN_002c5c08
u32 W_2c5c08(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 179u;
    if (fa >= fb) r1 = 0u;
    r1 = r1 + (r1 << 2);
    r0 = r0 + (r1 << 3);
    return r0;
}

// FUN_002c5e2c
u32 W_2c5e2c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = (u32)g_008bfa40;
    r0 = Fn_1bd900_1(r0);
    r2 = *(u32*)(r5);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c6ae0_3(r0, r1, r2);
    r0 = Fn_1be11c_1(r0);
    r2 = *(u32*)(r5);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c6ae0_3(r0, r1, r2);
    r0 = Fn_22e568_1(r0);
    r2 = *(u32*)(r5);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c6ae0_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 0u;
    *(u32*)(r4 + 68) = r0;
    r0 = 1u;
    *(u32*)(r4 + 75) = r1;
    return r0;
}

// FUN_002c73a4
u32 W_2c73a4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1bd900_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1be11c_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_22e568_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_002c74b4
u32 W_2c74b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 188u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_30d58c_1(r0);
    *(u32*)(r4 + 84) = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 160u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2e914c_1(r0);
    *(u32*)(r4 + 88) = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 44u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_323dac_1(r0);
    *(u32*)(r4 + 104) = r0;
    r0 = 1u;
    return r0;
}

// FUN_002c7c54
u32 W_2c7c54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 68);
    fa = r0; fb = 4u;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_002cf904
void W_2cf904(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0081c55c;
    r1 = *(u32*)(r0 + 44);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2cf934;
    r0 = r1;
    r0 = Fn_2cfe1c_3(r0, r1, r2);
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 44) = r0;
    L_2cf934:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_002cfa3c
u32 W_2cfa3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 10);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_002d0068
void W_2d0068(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r2 = 0u;
    r3 = 1u;
    if (fa == fb) goto L_2d0094;
    fa = r1; fb = 1u;
    if (fa != fb) goto L_2d0090;
    *(u8*)(r0 + 80) = r3;
    r1 = 2u;
    *(u8*)(r0 + 81) = r2;
    *(u32*)(r0 + 72) = r1;
    L_2d0090:;
    return;
    L_2d0094:;
    *(u8*)(r0 + 80) = r3;
    r1 = 4u;
    *(u8*)(r0 + 81) = r2;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_002d1120
u32 W_2d1120() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1f5bf4_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1e34a8_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1e3a1c_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1e4108_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1dc494_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_002d1c10
void W_2d1c10(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r3 = 0u;
    r12 = 1u;
    if (fa == fb) goto L_2d1c38;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_2d1c4c;
    fa = r1; fb = 2u;
    if (fa == fb) *(u8*)(r0 + 85) = r3;
    if (fa == fb) *(u8*)(r0 + 86) = r2;
    return;
    L_2d1c38:;
    *(u8*)(r0 + 76) = r12;
    r1 = 4u;
    *(u8*)(r0 + 77) = r3;
    *(u32*)(r0 + 72) = r1;
    return;
    L_2d1c4c:;
    *(u8*)(r0 + 76) = r12;
    r1 = 2u;
    *(u8*)(r0 + 77) = r3;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_002d2e00
u32 W_2d2e00() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1f5bf4_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_23a1bc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1dc494_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_002d5878
void W_2d5878(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2d5890;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 6u;
    if (fa == fb) *(u32*)(r0 + 76) = r1;
    return;
    L_2d5890:;
    r1 = 2u;
    fa = r2; fb = 1u;
    *(u32*)(r0 + 76) = r1;
    if (fa != fb) r1 = 0u;
    if (fa == fb) r1 = 1u;
    *(u8*)(r0 + 72) = r1;
    return;
}

// FUN_002d5c18
u32 W_2d5c18() {
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
    r0 = Fn_1eb578_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_20bc68_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_002d7854
u32 W_2d7854(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 28u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2d77ac_1(r0);
    *(u32*)(r4 + 116) = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 28u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2d77ac_1(r0);
    *(u32*)(r4 + 120) = r0;
    r0 = 1u;
    return r0;
}

// FUN_002d8874
u32 W_2d8874(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 255u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_2d8898;
    fa = r0; fb = 170u;
    if (fa >= fb) r0 = 1u;
    if (fa >= fb) goto L_2d8898;
    fa = r0; fb = 85u;
    if (fa >= fb) r0 = 2u;
    if (fa < fb) r0 = 3u;
    L_2d8898:;
    return r0;
}

// FUN_002d8ce4
u32 W_2d8ce4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 80u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2d8af4_1(r0);
    *(u32*)(r4 + 124) = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 80u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2d8af4_1(r0);
    *(u32*)(r4 + 128) = r0;
    r0 = 1u;
    return r0;
}

// FUN_002da150
u32 W_2da150() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1f5bf4_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1d3260_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1d3fb8_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1bc160_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1dc494_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_002e0b98
void W_2e0b98(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 7u;
    if (fa < fb) r2 = (u32)g_007c6cd4;
    if (fa < fb) r1 = r2 + (r1 << 1);
    if (fa < fb) r1 = *(u16*)(r1);
    if (fa >= fb) r1 = 0u;
    *(u16*)(r0 + 4) = r1;
    return;
}

// FUN_002e0d64
void W_2e0d64(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0081cecc;
    r2 = r1 + 36u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 12) = r2;
    { Fn_2024b0_3(r0, r1, r2); return; }
}

// FUN_002e0d7c
u32 W_2e0d7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0081cecc;
    r2 = r1 + 36u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 12) = r2;
    return r0;
}

// FUN_002e3444
u32 W_2e3444(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 4u;
    if (fa < fb) r1 = (r1 << 3) - r1;
    if (fa < fb) r0 = r0 + (r1 << 2);
    r0 = r0 + 12u;
    return r0;
}

// FUN_002e3a04
void W_2e3a04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 16);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2e3a38;
    r3 = 0u;
    *(u32*)(r2) = r3;
    *(u32*)(r2 + 4) = r3;
    *(u32*)(r2 + 8) = r3;
    fa = r1; fb = 0u;
    *(u32*)(r2 + 12) = r3;
    if (fa == fb) goto L_2e3a38;
    r0 = *(u32*)(r0 + 16);
    r2 = 16u;
    { Fn_0317dc_4(r0, r1, r2, r3); return; }
    L_2e3a38:;
    return;
}

// FUN_002e3a3c
void W_2e3a3c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 12);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2e3a70;
    r3 = 0u;
    *(u32*)(r2) = r3;
    *(u32*)(r2 + 4) = r3;
    *(u32*)(r2 + 8) = r3;
    fa = r1; fb = 0u;
    *(u32*)(r2 + 12) = r3;
    if (fa == fb) goto L_2e3a70;
    r0 = *(u32*)(r0 + 12);
    r2 = 16u;
    { Fn_0317dc_4(r0, r1, r2, r3); return; }
    L_2e3a70:;
    return;
}

// FUN_002e3b00
void W_2e3b00(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 48u;
    if (fa < fb) *(u16*)(r0 + 44) = r1;
    return;
}

// FUN_002e53c4
void W_2e53c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    if (fa < fb) *(u32*)(r0 + 32) = r1;
    return;
}

// FUN_002e548c
void W_2e548c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    if (fa < fb) *(u8*)(r0 + 36) = r1;
    return;
}

// FUN_002e760c
void W_2e760c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 252u;
    if (fa == fb) r1 = 253u;
    *(u16*)(r0 + 162) = r1;
    return;
}

// FUN_002e924c
u32 W_2e924c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 120);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_002e934c
u32 W_2e934c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 396);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2e9364;
    r0 = Fn_5d6140_1(r0);
    r0 = 1u;
    L_2e9364:;
    return r0;
}

// FUN_002ec578
u32 W_2ec578(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 268);
    r0 = Fn_4b1714_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_2ec5b8;
    r0 = *(u32*)(r4 + 252);
    r0 = *(u8*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ec5bc;
    r0 = *(u32*)(r4 + 336);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ec5c0;
    r0 = *(u8*)(r0 + 94);
    fa = r0; fb = 4u;
    if (fa >= fb) goto L_2ec5c0;
    L_2ec5b8:;
    r0 = 0u;
    L_2ec5bc:;
    return r0;
    L_2ec5c0:;
    r0 = 1u;
    return r0;
}

// FUN_002ec680
void W_2ec680(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 4u;
    if (fa < fb) *(u32*)(r0 + 660) = r1;
    return;
}

// FUN_002ec68c
void W_2ec68c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 268);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2ec6a4;
    r1 = *(u32*)(r0 + 96);
    r0 = r2;
    { Fn_4b102c_3(r0, r1, r2); return; }
    L_2ec6a4:;
    return;
}

// FUN_002ef0d0
void W_2ef0d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 252);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ef0fc;
    r1 = *(short*)(r0 + 124);
    r2 = 0u;
    r0 = Fn_12d794_3(r0, r1, r2);
    r0 = r4;
    { Fn_2f3a54_1(r0); return; }
    L_2ef0fc:;
    return;
}

// FUN_002ef100
void W_2ef100(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 252);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ef12c;
    r1 = *(short*)(r0 + 124);
    r2 = 0u;
    r0 = Fn_12d794_3(r0, r1, r2);
    r0 = r4;
    { Fn_2f3a54_1(r0); return; }
    L_2ef12c:;
    return;
}

// FUN_002f2608
void W_2f2608(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 380);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f2630;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 380) = r0;
    L_2f2630:;
    r2 = 16u;
    r1 = 0u;
    r0 = 24u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) r0 = Fn_2a74b0_2(r0, r1);
    *(u32*)(r4 + 380) = r0;
    return;
}

// FUN_002f2ab4
void W_2f2ab4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 380);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f2adc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 380) = r0;
    L_2f2adc:;
    return;
}

// FUN_002f3204
u32 W_2f3204(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f324c;
    r6 = *(u32*)(r0 + 36);
    fa = r6; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa != fb) r5 = 0u;
    if (fa != fb) r4 = 1u;
    if (fa == fb) goto L_2f324c;
    L_2f322c:;
    r1 = r4 & 255u;
    r0 = r6;
    r0 = Fn_62e2e8_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    r5 = r5 + r0;
    if ((int)fa <= (int)fb) goto L_2f322c;
    r0 = r5;
    L_2f324c:;
    return r0;
}

// FUN_002f3704
void W_2f3704(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 376);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f372c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 376) = r0;
    L_2f372c:;
    return;
}

// FUN_002f3918
void W_2f3918(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 368);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f3940;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 368) = r0;
    L_2f3940:;
    return;
}

// FUN_002f3e20
u32 W_2f3e20(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 220);
    r4 = r1;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2f3e50;
    r0 = *(u8*)(r0 + 664);
    fa = r0; fb = 1u;
    if (fa == fb) goto L_2f3e58;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 1u;
    r0 = r2;
    r0 = Fn_4a017c_3(r0, r1, r2);
    L_2f3e50:;
    r0 = r4;
    return r0;
    L_2f3e58:;
    r0 = r2;
    r0 = Fn_4a01a0_1(r0);
    r4 = r0;
    goto L_2f3e50;
}

// FUN_002f46bc
u32 W_2f46bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 396);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f46d4;
    r0 = Fn_5d5fb8_1(r0);
    r0 = 1u;
    L_2f46d4:;
    return r0;
}

// FUN_002f4e4c
u32 W_2f4e4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 396);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2f4e64;
    r0 = Fn_5d6094_1(r0);
    r0 = 1u;
    L_2f4e64:;
    return r0;
}

// FUN_00304b5c
u32 W_304b5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 36u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_304b9c;
    r0 = Fn_305840_1(r0);
    r1 = (u32)g_0081d410;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 16);
    r1 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_304b9c:;
    r0 = r4;
    return r0;
}

// FUN_00304f10
u32 W_304f10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 36u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_304f50;
    r0 = Fn_305840_1(r0);
    r1 = (u32)g_0081d488;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 16);
    r1 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_304f50:;
    r0 = r4;
    return r0;
}

// FUN_00304ff4
u32 W_304ff4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_305840_0();
    r1 = (u32)g_0081d4b0;
    r2 = 84215045u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 36) = r2;
    return r0;
}

// FUN_003052e4
u32 W_3052e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 36u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_305324;
    r0 = Fn_305840_1(r0);
    r1 = (u32)g_0081d528;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 16);
    r1 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_305324:;
    r0 = r4;
    return r0;
}

// FUN_00305898
u32 W_305898(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 36u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_3058d8;
    r0 = Fn_305840_1(r0);
    r1 = (u32)g_0081d5a0;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 16);
    r1 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_3058d8:;
    r0 = r4;
    return r0;
}

// FUN_003059b8
void W_3059b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3059e8;
    r2 = 16u;
    r1 = 0u;
    r0 = 8u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_30e3b0_1(r0);
    *(u32*)(r4 + 4) = r0;
    L_3059e8:;
    r0 = *(u32*)(r4 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_305a14;
    r2 = 16u;
    r1 = 0u;
    r0 = 232u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_30c1f0_1(r0);
    *(u32*)(r4 + 8) = r0;
    L_305a14:;
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    return;
}

// FUN_00305eac
u32 W_305eac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 28u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_305eec;
    r0 = Fn_305b98_1(r0);
    r1 = (u32)g_0081d5f0;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 16);
    r1 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_305eec:;
    r0 = r4;
    return r0;
}

// FUN_0030c748
u32 W_30c748(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 28u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_30c788;
    r0 = Fn_305b98_1(r0);
    r1 = (u32)g_0081d688;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 16);
    r1 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_30c788:;
    r0 = r4;
    return r0;
}

// FUN_0030efa8
void W_30efa8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) return;
    fa = r1; fb = 3u;
    if (fa >= fb) return;
    r4 = r2;
    r0 = Fn_168fa8_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_30efd8;
    r1 = r4;
    { Fn_16865c_2(r0, r1); return; }
    L_30efd8:;
    return;
}

// FUN_0030efe8
void W_30efe8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_168fa8_0();
    r4 = r0;
    if (r4 == 0) goto L_30f010;
    r0 = Fn_6268b0_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_30f010;
    r0 = r4;
    { Fn_1686f8_1(r0); return; }
    L_30f010:;
    return;
}

// FUN_0031049c
u32 W_31049c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008a825c;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3104dc;
    r2 = 16u;
    r1 = 0u;
    r0 = 156u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_074824_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4) = r0;
    if (fa == fb) goto L_3104e0;
    r1 = 0u;
    r0 = Fn_073a00_2(r0, r1);
    L_3104dc:;
    r0 = 1u;
    L_3104e0:;
    return r0;
}

// FUN_00310da0
u32 W_310da0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa8c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_003115e4
u32 W_3115e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1c6e50_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1f5bf4_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1ecf60_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1dc494_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_00317d88
u32 W_317d88() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_0089272c;
    r1 = *(u32*)(r0);
    fa = r1; fb = 1u;
    if (fa > fb) r1 = r1 - 1u;
    if (fa > fb) *(u32*)(r0) = r1;
    if (fa > fb) goto L_317db0;
    r1 = 0u;
    *(u32*)(r0) = r1;
    r0 = 5701632u;
    return Fn_5992a0_2(r0, r1);
    L_317db0:;
    return r0;
}
