// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_1e57e4_0();
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_1e8c00_0();
extern char g_007c4828[];
u32 Fn_1eb8f8_3(u32, u32, u32);
u32 Fn_1990d8_2(u32, u32);
u32 Fn_1e86f4_2(u32, u32);
u32 Fn_1efc7c_0();
u32 Fn_1f1544_0();
u32 Fn_1f5520_0();
extern char g_0080f200[];
u32 Fn_1941cc_1(u32);
u32 Fn_1fcd88_3(u32, u32, u32);
u32 Fn_2024b0_1(u32);
u32 Fn_5a2024_1(u32);
u32 Fn_1f877c_0();
u32 Fn_1f9c44_1(u32);
u32 Fn_1fb268_2(u32, u32);
u32 Fn_54b570_2(u32, u32);
u32 Fn_1fa2d0_0();
extern char g_0080f480[];
u32 Fn_1e8810_1(u32);
extern char g_0080f5e0[];
u32 Fn_1ebf38_0();
extern char g_0080f960[];
u32 Fn_22556c_0();
u32 Fn_209b28_0();
u32 Fn_5c7c28_0();
u32 Fn_1c7f68_1(u32);
extern char g_00810ec4[];
u32 Fn_5c9854_0();
u32 Fn_5db4b4_3(u32, u32, u32);
u32 Fn_214f64_3(u32, u32, u32);
extern char g_007c4598[];
u32 Fn_224d44_4(u32, u32, u32, u32);
u32 Fn_5c760c_3(u32, u32, u32);
u32 Fn_5c7c28_1(u32);
extern char g_007c5470[];
extern char g_007c5480[];
extern char g_0089e000[];
u32 Fn_199cb8_1(u32);
u32 Fn_5a4ebc_2(u32, u32);
u32 Fn_5af758_2(u32, u32);
u32 Fn_220b14_0();
u32 Fn_22198c_0();
extern char g_0080acf0[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_1bc878_1(u32);
u32 Fn_1c8110_0();
u32 Fn_22aa68_0();
extern char g_0080c380[];
u32 Fn_1e87e4_1(u32);
u32 Fn_22d4e4_0();
u32 Fn_21ebe0_0();
u32 Fn_1c7e34_2(u32, u32);
u32 Fn_2300a4_3(u32, u32, u32);
u32 Fn_1c7f68_2(u32, u32);
u32 Fn_232cb4_0();
u32 Fn_1c7d30_1(u32);
u32 Fn_23a6a8_0();
u32 Fn_23b240_0();
u32 Fn_23bc28_0();
u32 Fn_23c7e8_0();

// FUN_001e6d6c
u32 W_1e6d6c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1e57e4_0();
    r0 = 0u;
    return r0;
}

// FUN_001e8014
void W_1e8014(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_1e8020:;
    fa = r4; fb = 2u;
    r0 = r5 + (r4 << 2);
    r3 = 0u;
    r0 = *(u32*)(r0 + 56);
    if (fa == fb) r1 = 5u;
    if (fa != fb) r1 = 8u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r4 = r4 + 1u;
    fa = r4; fb = 5u;
    if ((int)fa < (int)fb) goto L_1e8020;
    return;
}

// FUN_001e9038
u32 W_1e9038(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 128);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1e906c;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_1e905c;
    fa = r0; fb = r1;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_1e9060;
    L_1e905c:;
    r1 = 0u;
    L_1e9060:;
    r3 = 0u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_1e906c:;
    r0 = 0u;
    return r0;
}

// FUN_001e9074
u32 W_1e9074(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1e8c00_0();
    r0 = 0u;
    return r0;
}

// FUN_001ebecc
u32 W_1ebecc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_1ebed8:;
    r2 = (u32)g_007c4828;
    r1 = r4;
    r0 = r5;
    r0 = Fn_1eb8f8_3(r0, r1, r2);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_1ebed8;
    return r0;
}

// FUN_001ebf08
u32 W_1ebf08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_1ebf14:;
    r2 = (u32)g_007c4828;
    r1 = r4;
    r0 = r5;
    r0 = Fn_1eb8f8_3(r0, r1, r2);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_1ebf14;
    return r0;
}

// FUN_001ec03c
u32 W_1ec03c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 188);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r0 + 32);
    return r0;
}

// FUN_001ec864
void W_1ec864(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 176) = r1;
    return;
}

// FUN_001ee7ec
u32 W_1ee7ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 116);
    fa = r2; fb = r1;
    if ((int)fa > (int)fb) r1 = r1 + (r1 << 1);
    if ((int)fa > (int)fb) r0 = r0 + (r1 << 2);
    if ((int)fa > (int)fb) r0 = *(u32*)(r0 + 120);
    if ((int)fa <= (int)fb) r0 = 0u;
    return r0;
}

// FUN_001eed80
void W_1eed80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 6u;
    if (fa == fb) r1 = 7u;
    *(u8*)(r0 + 92) = r1;
    { Fn_1990d8_2(r0, r1); return; }
}

// FUN_001eedcc
void W_1eedcc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 92);
    fa = r1; fb = 8u;
    if (fa == fb) goto L_1eeddc;
    { Fn_1e86f4_2(r0, r1); return; }
    L_1eeddc:;
    r1 = 0u;
    *(u8*)(r0 + 92) = r1;
    { Fn_1e86f4_2(r0, r1); return; }
}

// FUN_001ef030
u32 W_1ef030(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1ef070;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1ef070;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1ef070;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    *(u32*)(r4 + 24) = r0;
    L_1ef070:;
    r0 = 0u;
    return r0;
}

// FUN_001ef370
u32 W_1ef370(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1ef3b0;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1ef3b0;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1ef3b0;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    *(u32*)(r4 + 24) = r0;
    L_1ef3b0:;
    r0 = 0u;
    return r0;
}

// FUN_001f07d8
u32 W_1f07d8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1efc7c_0();
    r0 = 0u;
    return r0;
}

// FUN_001f0a9c
u32 W_1f0a9c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001f0fc8
u32 W_1f0fc8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1f0fe4;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1f0fec;
    L_1f0fe4:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1f0fec:;
    r0 = 0u;
    return r0;
}

// FUN_001f1e60
u32 W_1f1e60(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1f1544_0();
    r0 = 0u;
    return r0;
}

// FUN_001f2058
u32 W_1f2058(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001f4f8c
u32 W_1f4f8c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 1320);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1f4fc8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1f4fc8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1f4fc8;
    r3 = 0u;
    r1 = *(u32*)(r4 + 1308);
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 1320) = r0;
    L_1f4fc8:;
    r0 = 0u;
    return r0;
}

// FUN_001f5e68
u32 W_1f5e68(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1f5ea4;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1f5ea4;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1f5ea4;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 92) = r0;
    L_1f5ea4:;
    r0 = 0u;
    return r0;
}

// FUN_001f5eac
u32 W_1f5eac(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1f5520_0();
    r0 = 0u;
    return r0;
}

// FUN_001f6f48
u32 W_1f6f48(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 352);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1f6f84;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1f6f84;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1f6f84;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 352) = r0;
    L_1f6f84:;
    r0 = 0u;
    return r0;
}

// FUN_001f8198
void W_1f8198(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0080f200;
    r1 = *(u32*)(r0 + 392);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1f81c4;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 392) = r0;
    L_1f81c4:;
    r0 = r4 + 368u;
    r0 = Fn_5a2024_1(r0);
    r0 = r0 - 368u;
    r0 = Fn_1941cc_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_001f9540
u32 W_1f9540(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1f877c_0();
    r0 = 0u;
    return r0;
}

// FUN_001f99ac
void W_1f99ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u8*)(r0 + 1344);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_1f99ec;
    r1 = *(u32*)(r4 + 48);
    r0 = 1u;
    *(u8*)(r4 + 1344) = r0;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_1f99f0;
    r0 = *(u8*)(r4 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1f99f0;
    r0 = r4;
    r0 = Fn_1fb268_2(r0, r1);
    L_1f99e8:;
    *(u8*)(r4 + 1344) = r0;
    L_1f99ec:;
    return;
    L_1f99f0:;
    r0 = r4;
    r0 = Fn_1f9c44_1(r0);
    goto L_1f99e8;
}

// FUN_001fa7e8
void W_1fa7e8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_1fa7f8:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 84);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_54b570_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 60u;
    if ((int)fa < (int)fb) goto L_1fa7f8;
    return;
}

// FUN_001fb950
u32 W_1fb950(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_1fa2d0_0();
    r0 = 0u;
    return r0;
}

// FUN_001fc5c8
u32 W_1fc5c8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_001fda0c
u32 W_1fda0c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 108);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1fda40;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_1fda30;
    fa = r0; fb = r1;
    if (fa == fb) r1 = 3u;
    if (fa == fb) goto L_1fda34;
    L_1fda30:;
    r1 = 1u;
    L_1fda34:;
    r3 = 0u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_1fda40:;
    r0 = 0u;
    return r0;
}

// FUN_001fdb08
u32 W_1fdb08(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_1fdb20;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1fdb20:;
    r0 = 0u;
    return r0;
}

// FUN_001fe110
void W_1fe110(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0080f480;
    r1 = *(u32*)(r0 + 92);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1fe13c;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 92) = r0;
    L_1fe13c:;
    r0 = r4;
    r0 = Fn_1e8810_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_001ff428
u32 W_1ff428() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_1ebf38_0();
    r1 = (u32)g_0080f5e0;
    r2 = r1 + 204u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 112) = r2;
    return r0;
}

// FUN_001ff578
u32 W_1ff578() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_001ff5a4
u32 W_1ff5a4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_00200ec0
u32 W_200ec0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_200efc;
    fa = r0; fb = r1;
    if (fa != fb) goto L_200efc;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_200efc;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    L_200efc:;
    r0 = 0u;
    return r0;
}

// FUN_00204250
void W_204250() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_22556c_0();
    r1 = 0u;
    r2 = (u32)g_0080f960;
    *(u32*)(r0 + 188) = r1;
    *(u32*)(r0 + 192) = r1;
    *(u32*)(r0 + 196) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_00205ddc
u32 W_205ddc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_002067f4
u32 W_2067f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 115);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa == fb) r0 = 4u;
    return r0;
}

// FUN_002071d4
u32 W_2071d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 312);
    fa = r1; fb = 0u;
    if ((int)fa > (int)fb) r1 = 3u;
    if ((int)fa > (int)fb) *(u32*)(r0 + 136) = r1;
    r0 = 1u;
    return r0;
}

// FUN_00207c34
u32 W_207c34(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 129);
    fa = r0; fb = 4u;
    if (fa == fb) r0 = 2u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00208048
u32 W_208048(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_20807c;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_20806c;
    fa = r0; fb = r1;
    if (fa == fb) r1 = 2u;
    if (fa == fb) goto L_208070;
    L_20806c:;
    r1 = 1u;
    L_208070:;
    r3 = 0u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_20807c:;
    r0 = 0u;
    return r0;
}

// FUN_0020831c
u32 W_20831c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_002098dc
u32 W_2098dc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00209df4
u32 W_209df4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_209b28_0();
    r0 = 0u;
    return r0;
}

// FUN_0020b97c
u32 W_20b97c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_5c7c28_0();
    r0 = 0u;
    return r0;
}

// FUN_0020c584
u32 W_20c584(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_1c7f68_1(r0);
    r0 = *(u32*)(r4 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 112) = r0;
    r0 = 0u;
    return r0;
}

// FUN_0020f6ac
u32 W_20f6ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 320);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_20f6e8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_20f6e8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_20f6e8;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 320) = r0;
    L_20f6e8:;
    r0 = 0u;
    return r0;
}

// FUN_00210d90
u32 W_210d90(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_210dd8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_210dd8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_210dd8;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_210dd0;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_210dd0:;
    r0 = 0u;
    *(u32*)(r4 + 116) = r0;
    L_210dd8:;
    r0 = 0u;
    return r0;
}

// FUN_002146bc
u32 W_2146bc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2146f8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_2146f8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_2146f8;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    L_2146f8:;
    r0 = 0u;
    return r0;
}

// FUN_0021475c
u32 W_21475c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_214798;
    r2 = *(u32*)(r0 + 20);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 20) = r1;
    if (fa == fb) goto L_214794;
    r2 = *(u32*)(r0 + 24);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 24) = r1;
    if (fa == fb) goto L_214794;
    r2 = *(u32*)(r0 + 28);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 28) = r1;
    L_214794:;
    r0 = 1u;
    L_214798:;
    return r0;
}

// FUN_0021479c
void W_21479c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5c9854_0();
    r1 = 0u;
    r2 = (u32)g_00810ec4;
    *(u32*)(r0 + 20) = r1;
    *(u32*)(r0 + 24) = r1;
    *(u32*)(r0 + 28) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_00214880
u32 W_214880(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2148bc;
    fa = r0; fb = r1;
    if (fa != fb) goto L_2148bc;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_2148bc;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    L_2148bc:;
    r0 = 0u;
    return r0;
}

// FUN_0021493c
u32 W_21493c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r1;
    if (r0 == 0) goto L_21498c;
    r1 = *(u32*)(r4 + 20);
    fa = r1; fb = r0;
    if (fa != fb) goto L_214988;
    r1 = 0u;
    r3 = r1;
    r2 = r1;
    *(u32*)(r4 + 20) = r1;
    r1 = 2u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 1u;
    r2 = 0u;
    *(u8*)(r4 + 24) = r0;
    r0 = 16778010u;
    r1 = r2;
    r0 = Fn_5db4b4_3(r0, r1, r2);
    L_214988:;
    r0 = 0u;
    L_21498c:;
    return r0;
}

// FUN_00214994
u32 W_214994(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2149d0;
    fa = r0; fb = r1;
    if (fa != fb) goto L_2149d0;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_2149d0;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    L_2149d0:;
    r0 = 0u;
    return r0;
}

// FUN_00214e24
void W_214e24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 108);
    fa = r2; fb = 5u;
    if ((int)fa >= (int)fb) goto L_214e4c;
    r2 = r0 + (r2 << 2);
    *(u32*)(r2 + 112) = r1;
    r1 = *(u32*)(r0 + 108);
    r1 = r1 + 1u;
    *(u32*)(r0 + 108) = r1;
    r1 = r0 + 108u;
    { Fn_214f64_3(r0, r1, r2); return; }
    L_214e4c:;
    return;
}

// FUN_002155d0
u32 W_2155d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_2155e8;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_2155e8:;
    r0 = 0u;
    return r0;
}

// FUN_0021a0fc
u32 W_21a0fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_5c7c28_1(r0);
    r3 = (u32)g_007c4598;
    r0 = r4;
    r2 = r3 - 36u;
    r1 = r3 - 72u;
    r0 = Fn_224d44_4(r0, r1, r2, r3);
    r2 = 0u;
    r0 = r4;
    r1 = r2;
    return Fn_5c760c_3(r0, r1, r2);
}

// FUN_0021b740
u32 W_21b740(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_21b780;
    fa = r0; fb = r1;
    if (fa != fb) goto L_21b780;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_21b780;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    *(u32*)(r4 + 24) = r0;
    L_21b780:;
    r0 = 0u;
    return r0;
}

// FUN_0021bba8
u32 W_21bba8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_21bbe8;
    fa = r0; fb = r1;
    if (fa != fb) goto L_21bbe8;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_21bbe8;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    *(u32*)(r4 + 24) = r0;
    L_21bbe8:;
    r0 = 0u;
    return r0;
}

// FUN_0021c1dc
u32 W_21c1dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_21c1f0;
    fa = r0; fb = 1u;
    if (fa == fb) r0 = (u32)g_007c5480;
    if (fa == fb) goto L_21c1f4;
    L_21c1f0:;
    r0 = (u32)g_007c5470;
    L_21c1f4:;
    return r0;
}

// FUN_0021e370
u32 W_21e370(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 70);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0021e8cc
u32 W_21e8cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 84);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0021ebe0
u32 W_21ebe0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_0089e000;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_0021ef10
void W_21ef10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_199cb8_1(r0);
    r0 = *(u8*)(r4 + 148);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) *(u8*)(r4 + 148) = r0;
    return;
}

// FUN_0021f54c
u32 W_21f54c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_0021fde0
u32 W_21fde0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_002200b0
void W_2200b0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + r1;
    *(u8*)(r0 + 75) = r2;
    return;
}

// FUN_002209b8
u32 W_2209b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 44);
    r6 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2209f8;
    r0 = Fn_5a4ebc_2(r0, r1);
    r4 = 0u;
    L_2209d8:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 48);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_5a4ebc_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_2209d8;
    L_2209f8:;
    return r0;
}

// FUN_002209fc
u32 W_2209fc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00220e18
void W_220e18(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_220e28:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 48);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_5af758_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_220e28;
    return;
}

// FUN_00220f3c
u32 W_220f3c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_220b14_0();
    r0 = 0u;
    return r0;
}

// FUN_002229a8
u32 W_2229a8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_22198c_0();
    r0 = 0u;
    return r0;
}

// FUN_002244e0
u32 W_2244e0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u8*)(r0 + 455) = r1;
    r0 = 0u;
    return r0;
}

// FUN_002255b4
void W_2255b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 16u;
    r1 = 6u;
    r0 = 296u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_225620;
    r0 = Fn_1bc878_1(r0);
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
    L_225620:;
    return;
}

// FUN_002272d0
u32 W_2272d0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2272e4;
    r0 = Fn_1c8110_0();
    goto L_2272f0;
    L_2272e4:;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_2272f0:;
    r0 = 0u;
    return r0;
}

// FUN_0022a630
u32 W_22a630(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 114);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_22a654;
    fa = r1; fb = 1u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 113) = r1;
    if (fa != fb) r0 = ~0u;
    if (fa == fb) r0 = 2u;
    L_22a654:;
    return r0;
}

// FUN_0022a730
u32 W_22a730(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_1c7f68_1(r0);
    r0 = *(u32*)(r4 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 113) = r0;
    r0 = 0u;
    return r0;
}

// FUN_0022a7e8
u32 W_22a7e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 114);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_22a804;
    fa = r0; fb = 1u;
    if (fa != fb) r0 = ~0u;
    if (fa == fb) r0 = 3u;
    L_22a804:;
    return r0;
}

// FUN_0022a86c
u32 W_22a86c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0022add0
u32 W_22add0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_22aa68_0();
    r0 = 0u;
    return r0;
}

// FUN_0022c884
void W_22c884() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 16u;
    r1 = 6u;
    r0 = 100u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_22c8b8;
    r0 = Fn_1e87e4_1(r0);
    r2 = (u32)g_0080c380;
    r1 = ~0u;
    *(u32*)(r0 + 92) = r1;
    *(u32*)(r0) = r2;
    *(u32*)(r0 + 96) = r1;
    L_22c8b8:;
    return;
}

// FUN_0022dc8c
u32 W_22dc8c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_22d4e4_0();
    r0 = 0u;
    return r0;
}

// FUN_0022e60c
u32 W_22e60c(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = r2;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0022e61c
u32 W_22e61c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_21ebe0_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0022f624
u32 W_22f624(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_22f664;
    fa = r0; fb = r1;
    if (fa != fb) goto L_22f664;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_22f664;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    *(u32*)(r4 + 24) = r0;
    L_22f664:;
    r0 = 0u;
    return r0;
}

// FUN_0022f804
u32 W_22f804(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    r0 = r1;
    if (r0 == 0) goto L_22f838;
    r1 = *(u32*)(r0 + 36);
    r3 = 0u;
    fa = r1; fb = 2u;
    if ((int)fa < (int)fb) r1 = r2 + (r1 << 2);
    r2 = r3;
    if ((int)fa < (int)fb) *(u32*)(r1 + 20) = r0;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 1u;
    L_22f838:;
    return r0;
}

// FUN_00230048
u32 W_230048(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r1 + 36);
    fa = r0; fb = 4u;
    if (fa == fb) goto L_230068;
    r0 = r4;
    r0 = Fn_1c7e34_2(r0, r1);
    goto L_230078;
    L_230068:;
    r1 = r2;
    r0 = r4;
    r0 = Fn_2300a4_3(r0, r1, r2);
    *(u8*)(r4 + 149) = r0;
    L_230078:;
    r0 = ~0u;
    *(u32*)(r4 + 152) = r0;
    r0 = 0u;
    return r0;
}

// FUN_00230228
u32 W_230228(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r1 + 36);
    fa = r0; fb = 4u;
    if (fa == fb) goto L_230248;
    r0 = r4;
    r0 = Fn_1c7f68_2(r0, r1);
    goto L_230264;
    L_230248:;
    r0 = *(u32*)(r4 + 96);
    fa = r0; fb = 4u;
    if (fa != fb) goto L_230264;
    r1 = r2;
    r0 = r4;
    r0 = Fn_2300a4_3(r0, r1, r2);
    *(u8*)(r4 + 148) = r0;
    L_230264:;
    r0 = 0u;
    return r0;
}

// FUN_002320f4
u32 W_2320f4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 - 12u;
    fa = r0; fb = 4u;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_00232240
u32 W_232240(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 - 8u;
    fa = r0; fb = 4u;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_002332ec
u32 W_2332ec(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_232cb4_0();
    r0 = 0u;
    return r0;
}

// FUN_00233f30
u32 W_233f30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_1c7d30_1(r0);
    r1 = 0u;
    r0 = ~0u;
    *(u8*)(r4 + 129) = r1;
    *(u32*)(r4 + 120) = r0;
    *(u32*)(r4 + 124) = r0;
    return r0;
}

// FUN_00236130
u32 W_236130(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 32);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00237bec
u32 W_237bec(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00238a78
u32 W_238a78(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    r0 = r1;
    if (fa != fb) goto L_238ab8;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_238ab8;
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_238ab8;
    r1 = *(u32*)(r1 + 24);
    fa = r1; fb = 2u;
    if (fa != fb) goto L_238ab8;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_238ab8:;
    r0 = 0u;
    return r0;
}

// FUN_002398e8
u32 W_2398e8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 108);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 104) = r1;
    r0 = 0u;
    return r0;
}

// FUN_0023ae60
u32 W_23ae60(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_23a6a8_0();
    r0 = 0u;
    return r0;
}

// FUN_0023b86c
u32 W_23b86c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_23b240_0();
    r0 = 0u;
    return r0;
}

// FUN_0023c230
u32 W_23c230(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_23bc28_0();
    r0 = 0u;
    return r0;
}

// FUN_0023da98
u32 W_23da98(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_23c7e8_0();
    r0 = 0u;
    return r0;
}
