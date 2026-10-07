// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
extern char g_008aab1c[];
extern char g_008ab850[];
u32 Fn_0226a0_1(u32);
u32 Fn_1fddd8_2(u32, u32);
extern char g_00890d18[];
extern char g_008bfa54[];
u32 Fn_5bc688_2(u32, u32);
extern char g_0079d450[];
u32 Fn_27792c_1(u32);
u32 Fn_13ddcc_2(u32, u32);
u32 Fn_60e24c_1(u32);
u32 Fn_236858_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_5c7c14_3(u32, u32, u32);
extern char g_008aabf8[];
u32 Fn_627d2c_1(u32);
u32 Fn_25eb98_3(u32, u32, u32);
extern char g_0082df04[];
extern char g_008bfa28[];
extern char g_008bfa44[];

// FUN_0005a0a8
void W_05a0a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r4 = r0;
    if (fa == fb) goto L_5a0d0;
    fa = r1; fb = 3u;
    if (fa == fb) goto L_5a0cc;
    fa = r1; fb = 4u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 101) = r0;
    L_5a0cc:;
    return;
    L_5a0d0:;
    r0 = (u32)g_008bfa54;
    r1 = (u32)g_00890d18;
    r0 = *(u32*)(r0);
    r5 = *(u32*)(r0 + 92);
    r0 = r5;
    r0 = Fn_5bc688_2(r0, r1);
    r0 = *(u32*)(r5);
    r1 = 0u;
    r2 = *(u32*)(r0 + 76);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 3u;
    *(u8*)(r4 + 100) = r0;
    r0 = *(u32*)(r4);
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r12 = *(u32*)(r0 + 84);
    r0 = r4;
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_000d706c
u32 W_0d706c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = *(u8*)(r0 + 172);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_d70b8;
    r0 = r4;
    r0 = Fn_27792c_1(r0);
    r2 = (u32)g_0079d450;
    *(u32*)(r4 + 96) = r0;
    r1 = 1u;
    r3 = (u32)stk + 4u;
    r2 = *(u32*)(r2);
    *(u32*)((u32)stk + 0) = r1; *(u32*)((u32)stk + 4) = r2;
    r1 = *(u32*)(r0);
    r2 = 0u;
    r12 = *(u32*)(r1 + 76);
    r1 = 271777792u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_d70b8:;
    return r0;
}

// FUN_000e4a10
u32 W_0e4a10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    r2 = r1;
    r3 = 9u;
    r1 = 2u;
    r12 = *(u32*)(r0 + 84);
    r0 = r4;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    r0 = 0u;
    *(u8*)(r4 + 102) = r0;
    return r0;
}

// FUN_0013de7c
void W_13de7c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = *(u8*)(r0 + 68);
    fa = r0; fb = r1;
    if (fa == fb) goto L_13deb8;
    r0 = r4;
    *(u8*)(r4 + 68) = r1;
    r0 = Fn_13ddcc_2(r0, r1);
    r0 = (u32)stk;
    r0 = Fn_60e24c_1(r0);
    r0 = *(u32*)((u32)stk); r1 = *(u32*)((u32)stk + 4);
    r4 = r4 + 3072u;
    r4 = r4 + 296u;
    *(u32*)(r4 + 0) = r0; *(u32*)(r4 + 4) = r1;
    L_13deb8:;
    return;
}

// FUN_001a12b0
u32 W_1a12b0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r1;
    r1 = *(u32*)(r1 + 36);
    r3 = 1u;
    r2 = *(u32*)(r4 + 180);
    r1 = r1 - 1u;
    r1 = r3 << (r1 & 255);
    r2 = r2 ^ r1;
    r1 = r1 & r2;
    r3 = 0u;
    *(u32*)(r4 + 180) = r2;
    if (r1 != 0) r1 = 1u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    u64 t64 = *(u64*)(r4 + 180); r0 = (u32)t64; r1 = (u32)(t64 >> 32);
    *(u32*)(r1 + 48) = r0;
    r0 = *(u32*)(r4 + 184);
    r0 = Fn_236858_2(r0, r1);
    r2 = 0u;
    r1 = r2;
    r0 = 2u;
    r0 = Fn_5c7c14_3(r0, r1, r2);
    r0 = 0u;
    return r0;
}

// FUN_001bb8ec
u32 W_1bb8ec(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1bb92c;
    fa = r2; fb = 0u;
    if (fa != fb) goto L_1bb92c;
    fa = r0; fb = r1;
    if (fa != fb) goto L_1bb92c;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r1 = 0u;
    r0 = ~0u;
    *(u32*)(r4 + 92) = r0; *(u32*)(r4 + 92 + 4) = r1;
    L_1bb92c:;
    r0 = 0u;
    return r0;
}

// FUN_00207c00
u32 W_207c00(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r2;
    r2 = *(u32*)(r0 + 96);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_207c30;
    r2 = *(u32*)(r0);
    r12 = *(u32*)(r2 + 84);
    r2 = r1;
    r1 = 2u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    r0 = 1u;
    L_207c30:;
    return r0;
}

// FUN_002575c4
u32 W_2575c4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_2575d4;
    fa = r1; fb = 53u;
    if (fa < fb) goto L_2575dc;
    L_2575d4:;
    r0 = 0u;
    return r0;
    L_2575dc:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00258100
void W_258100(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_627d2c_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_258120;
    r1 = (u32)g_008aabf8;
    r0 = *(u32*)(r1); r1 = *(u32*)(r1 + 4);
    *(u32*)(r4 + 16) = r0; *(u32*)(r4 + 16 + 4) = r1;
    L_258120:;
    return;
}

// FUN_002648b0
u32 W_2648b0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r2;
    r0 = r1;
    r0 = Fn_25eb98_3(r0, r1, r2);
    fa = r0; fb = 112u;
    if (fa >= fb) goto L_2648f0;
    r0 = r0 + (r0 << 1);
    r0 = r0 + r4;
    r0 = r0 + 12u;
    if (r0 == 0) goto L_2648f0;
    r0 = *(u8*)(r0);
    r1 = 1u;
    r0 = r0 & (r1 << (r5 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
    L_2648f0:;
    r0 = 0u;
    return r0;
}

// FUN_00276d00
void W_276d00(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r0_1, r3_1, r0_2, r2_2, r3_2, r2_3, r1_1, r0_3, stk[3];
    r2_1 = (u32)g_0082df04;
    *(u32*)((u32)stk + 8) = r0;
    r0_1 = (u32)g_008bfa28;
    r3_1 = 1u;
    *(u64*)((u32)stk) = (u64)r2_1 | ((u64)r3_1 << 32);
    r0_2 = *(u32*)(r0_1);
    r2_2 = *(u32*)(r0_2);
    r3_2 = *(u32*)(r2_2 + 12);
    r2_3 = r1;
    r1_1 = (u32)stk;
    r0_3 = ((u32(*)(u32, u32, u32))r3_2)(r0_2, r1_1, r2_3);
    return;
}

// FUN_002a4274
u32 W_2a4274(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r12 = *(u8*)(r0 + 22);
    if (fa != fb) { fa = r12; fb = 0u; }
    if (fa == fb) goto L_2a42ac;
    r0 = *(u16*)(r0 + 18);
    r12 = r0 - 65280u;
    r12 = r12 - 255u;
    if (r12 == 0) goto L_2a42ac;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 4);
    r1 = *(u8*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) { *(u32*)(r0 + 16) = r2; *(u32*)(r0 + 16 + 4) = r3; }
    L_2a42ac:;
    return r0;
}

// FUN_002bc630
u32 W_2bc630(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa44;
    r1 = *(u32*)(r1);
    r1 = *(u8*)(r1 + 44);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_2bc668;
    r1 = 1u;
    *(u32*)(r0 + 232) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 6u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_2bc668:;
    r0 = 1u;
    return r0;
}

// FUN_002bee38
u32 W_2bee38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa44;
    r1 = *(u32*)(r1);
    r1 = *(u8*)(r1 + 44);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_2bee70;
    r1 = 1u;
    *(u32*)(r0 + 128) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 5u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_2bee70:;
    r0 = 1u;
    return r0;
}

// FUN_002da430
void W_2da430(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2da450;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_2da470;
    fa = r1; fb = 4u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) *(u8*)(r0 + 108) = r1;
    return;
    L_2da450:;
    r1 = 2u;
    *(u32*)(r0 + 72) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 5u;
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
    L_2da470:;
    r1 = 9u;
    *(u32*)(r0 + 72) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 6u;
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_00327d68
u32 W_327d68(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_327d78;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_327d80;
    L_327d78:;
    r0 = 0u;
    return r0;
    L_327d80:;
    r0 = r0 + 32u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00327d9c
u32 W_327d9c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_327dac;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_327db4;
    L_327dac:;
    r0 = 0u;
    return r0;
    L_327db4:;
    r0 = r0 + 24u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00327dd0
u32 W_327dd0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_327de0;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_327de8;
    L_327de0:;
    r0 = 0u;
    return r0;
    L_327de8:;
    r0 = r0 + 16u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00327e04
u32 W_327e04(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_327e14;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_327e1c;
    L_327e14:;
    r0 = 0u;
    return r0;
    L_327e1c:;
    r0 = r0 + 28u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00327e38
u32 W_327e38(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_327e48;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_327e50;
    L_327e48:;
    r0 = 0u;
    return r0;
    L_327e50:;
    r0 = r0 + 20u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00327e6c
u32 W_327e6c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_327e7c;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_327e84;
    L_327e7c:;
    r0 = 0u;
    return r0;
    L_327e84:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032c368
u32 W_32c368(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32c378;
    fa = r1; fb = 85u;
    if (fa < fb) goto L_32c380;
    L_32c378:;
    r0 = 0u;
    return r0;
    L_32c380:;
    r0 = r0 + 92u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032c39c
u32 W_32c39c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32c3ac;
    fa = r1; fb = 85u;
    if (fa < fb) goto L_32c3b4;
    L_32c3ac:;
    r0 = 0u;
    return r0;
    L_32c3b4:;
    r0 = r0 + 60u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032c3d0
u32 W_32c3d0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32c3e0;
    fa = r1; fb = 85u;
    if (fa < fb) goto L_32c3e8;
    L_32c3e0:;
    r0 = 0u;
    return r0;
    L_32c3e8:;
    r0 = r0 + 28u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032c404
u32 W_32c404(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32c414;
    fa = r1; fb = 85u;
    if (fa < fb) goto L_32c41c;
    L_32c414:;
    r0 = 0u;
    return r0;
    L_32c41c:;
    r0 = r0 + 76u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032c438
u32 W_32c438(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32c448;
    fa = r1; fb = 85u;
    if (fa < fb) goto L_32c450;
    L_32c448:;
    r0 = 0u;
    return r0;
    L_32c450:;
    r0 = r0 + 44u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032c46c
u32 W_32c46c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32c47c;
    fa = r1; fb = 85u;
    if (fa < fb) goto L_32c484;
    L_32c47c:;
    r0 = 0u;
    return r0;
    L_32c484:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032fc44
u32 W_32fc44(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32fc54;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_32fc5c;
    L_32fc54:;
    r0 = 0u;
    return r0;
    L_32fc5c:;
    r0 = r0 + 32u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032fc78
u32 W_32fc78(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32fc88;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_32fc90;
    L_32fc88:;
    r0 = 0u;
    return r0;
    L_32fc90:;
    r0 = r0 + 24u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032fcac
u32 W_32fcac(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32fcbc;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_32fcc4;
    L_32fcbc:;
    r0 = 0u;
    return r0;
    L_32fcc4:;
    r0 = r0 + 16u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032fce0
u32 W_32fce0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32fcf0;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_32fcf8;
    L_32fcf0:;
    r0 = 0u;
    return r0;
    L_32fcf8:;
    r0 = r0 + 28u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032fd14
u32 W_32fd14(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32fd24;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_32fd2c;
    L_32fd24:;
    r0 = 0u;
    return r0;
    L_32fd2c:;
    r0 = r0 + 20u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0032fd48
u32 W_32fd48(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_32fd58;
    fa = r1; fb = 20u;
    if (fa < fb) goto L_32fd60;
    L_32fd58:;
    r0 = 0u;
    return r0;
    L_32fd60:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0033342c
u32 W_33342c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_33343c;
    fa = r1; fb = 42u;
    if (fa < fb) goto L_333444;
    L_33343c:;
    r0 = 0u;
    return r0;
    L_333444:;
    r0 = r0 + 92u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333460
u32 W_333460(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333470;
    fa = r1; fb = 42u;
    if (fa < fb) goto L_333478;
    L_333470:;
    r0 = 0u;
    return r0;
    L_333478:;
    r0 = r0 + 60u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333494
u32 W_333494(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_3334a4;
    fa = r1; fb = 39u;
    if (fa < fb) goto L_3334ac;
    L_3334a4:;
    r0 = 0u;
    return r0;
    L_3334ac:;
    r0 = r0 + 28u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_003334c8
u32 W_3334c8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_3334d8;
    fa = r1; fb = 42u;
    if (fa < fb) goto L_3334e0;
    L_3334d8:;
    r0 = 0u;
    return r0;
    L_3334e0:;
    r0 = r0 + 76u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_003334fc
u32 W_3334fc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_33350c;
    fa = r1; fb = 42u;
    if (fa < fb) goto L_333514;
    L_33350c:;
    r0 = 0u;
    return r0;
    L_333514:;
    r0 = r0 + 44u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333530
u32 W_333530(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333540;
    fa = r1; fb = 39u;
    if (fa < fb) goto L_333548;
    L_333540:;
    r0 = 0u;
    return r0;
    L_333548:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333d80
u32 W_333d80(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333d90;
    fa = r1; fb = 81u;
    if (fa < fb) goto L_333d98;
    L_333d90:;
    r0 = 0u;
    return r0;
    L_333d98:;
    r0 = r0 + 92u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333db4
u32 W_333db4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333dc4;
    fa = r1; fb = 81u;
    if (fa < fb) goto L_333dcc;
    L_333dc4:;
    r0 = 0u;
    return r0;
    L_333dcc:;
    r0 = r0 + 60u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333de8
u32 W_333de8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333df8;
    fa = r1; fb = 81u;
    if (fa < fb) goto L_333e00;
    L_333df8:;
    r0 = 0u;
    return r0;
    L_333e00:;
    r0 = r0 + 28u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333e1c
u32 W_333e1c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333e2c;
    fa = r1; fb = 81u;
    if (fa < fb) goto L_333e34;
    L_333e2c:;
    r0 = 0u;
    return r0;
    L_333e34:;
    r0 = r0 + 76u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333e50
u32 W_333e50(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333e60;
    fa = r1; fb = 81u;
    if (fa < fb) goto L_333e68;
    L_333e60:;
    r0 = 0u;
    return r0;
    L_333e68:;
    r0 = r0 + 44u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00333e84
u32 W_333e84(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_333e94;
    fa = r1; fb = 81u;
    if (fa < fb) goto L_333e9c;
    L_333e94:;
    r0 = 0u;
    return r0;
    L_333e9c:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0033a2d0
u32 W_33a2d0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_33a2e0;
    fa = r1; fb = 192u;
    if (fa < fb) goto L_33a2e8;
    L_33a2e0:;
    r0 = 0u;
    return r0;
    L_33a2e8:;
    r0 = r0 + 132u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0033a304
u32 W_33a304(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_33a314;
    fa = r1; fb = 192u;
    if (fa < fb) goto L_33a31c;
    L_33a314:;
    r0 = 0u;
    return r0;
    L_33a31c:;
    r0 = r0 + 84u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0033a338
u32 W_33a338(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_33a348;
    fa = r1; fb = 192u;
    if (fa < fb) goto L_33a350;
    L_33a348:;
    r0 = 0u;
    return r0;
    L_33a350:;
    r0 = r0 + 36u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0033a36c
u32 W_33a36c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_33a37c;
    fa = r1; fb = 192u;
    if (fa < fb) goto L_33a384;
    L_33a37c:;
    r0 = 0u;
    return r0;
    L_33a384:;
    r0 = r0 + 108u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}
