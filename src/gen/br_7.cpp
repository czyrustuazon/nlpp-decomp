// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_00820248[];
u32 Fn_029ed4_3(u32, u32, u32);
u32 Fn_2024b0_1(u32);
extern char g_00820270[];
extern char g_008202a8[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_2a9c98_1(u32);
u32 Fn_2aae18_1(u32);
u32 Fn_4443e4_3(u32, u32, u32);
u32 Fn_4443e4_4(u32, u32, u32, u32);
u32 Fn_444474_2(u32, u32);
u32 Fn_444548_2(u32, u32);
extern char g_008bfa40[];
u32 Fn_1f5bf4_0();
u32 Fn_20c578_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
extern char g_008bfa54[];
u32 Fn_5c25e0_2(u32, u32);
u32 Fn_06ccc4_1(u32);
u32 Fn_26c628_1(u32);
u32 Fn_357f74_2(u32, u32);
u32 Fn_3bc040_2(u32, u32);
u32 Fn_62ec44_1(u32);
extern char g_008a672c[];
extern char g_0089a388[];
extern char g_008a725c[];
u32 Fn_263fd8_2(u32, u32);
u32 Fn_2e914c_1(u32);
u32 Fn_323dac_1(u32);
u32 Fn_3c2474_1(u32);
u32 Fn_3c5708_1(u32);
extern char g_008213e0[];
u32 Fn_4e019c_1(u32);
u32 Fn_5a579c_3(u32, u32, u32);
u32 Fn_443e18_1(u32);
extern char g_00821830[];
u32 Fn_1fcd88_3(u32, u32, u32);
u32 Fn_643054_3(u32, u32, u32);
extern char g_00896a00[];
u32 Fn_3d5a08_1(u32);
u32 Fn_39e31c_1(u32);
u32 Fn_3d5340_1(u32);
extern char g_008bfac0[];
u32 Fn_3d7240_1(u32);
u32 Fn_5b12b8_1(u32);
u32 Fn_5bbbf8_2(u32, u32);
u32 Fn_4df458_3(u32, u32, u32);
u32 Fn_12d130_2(u32, u32);
u32 Fn_643054_2(u32, u32);
u32 Fn_60cac8_1(u32);
u32 Fn_3e5334_3(u32, u32, u32);
u32 Fn_45254c_2(u32, u32);
extern char g_007c3650[];
u32 Fn_5c5ad8_4(u32, u32, u32, u32);
u32 Fn_021ca0_3(u32, u32, u32);
extern char g_008232a8[];
u32 Fn_3e9724_2(u32, u32);
u32 Fn_3e9fdc_2(u32, u32);
u32 Fn_3f0bf8_2(u32, u32);
u32 Fn_3e98fc_2(u32, u32);
u32 Fn_3e9904_2(u32, u32);
u32 Fn_5db51c_2(u32, u32);
u32 Fn_0151c8_1(u32);
u32 Fn_402d58_3(u32, u32, u32);
u32 Fn_3fd63c_1(u32);
u32 Fn_3ff2c0_1(u32);
extern char g_0082394c[];
extern char g_008bfa30[];
u32 Fn_4018a4_1(u32);
u32 Fn_403a5c_3(u32, u32, u32);
u32 Fn_402f84_1(u32);
u32 Fn_5db3d8_2(u32, u32);
extern char g_00823af0[];
extern char g_00823cf8[];
u32 Fn_2024b0_3(u32, u32, u32);
u32 Fn_4202f4_1(u32);
u32 Fn_62f560_1(u32);
extern char g_00823d7c[];
u32 Fn_4178c8_0();

// FUN_00397148
void W_397148(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00820248;
    r2 = *(u32*)(r0 + 12);
    r4 = r0;
    *(u32*)(r0) = r1;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_397178;
    r1 = *(u8*)(r4 + 16);
    r0 = r2;
    r0 = Fn_029ed4_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_397178:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00397554
u32 W_397554(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 12);
    r0 = 0u;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_397570;
    r0 = r1 + (r1 << 1);
    r0 = r0 + (r1 << 7);
    r0 = r2 + (r0 << 6);
    L_397570:;
    return r0;
}

// FUN_00397970
void W_397970(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00820270;
    r2 = *(u32*)(r0 + 12);
    r4 = r0;
    *(u32*)(r0) = r1;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_3979a0;
    r1 = *(u8*)(r4 + 16);
    r0 = r2;
    r0 = Fn_029ed4_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_3979a0:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00398f70
void W_398f70(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008202a8;
    r2 = *(u32*)(r0 + 12);
    r4 = r0;
    *(u32*)(r0) = r1;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_398fa0;
    r1 = *(u8*)(r4 + 16);
    r0 = r2;
    r0 = Fn_029ed4_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_398fa0:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00399724
void W_399724(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    if (fa < fb) *(u32*)(r0 + 176) = r1;
    return;
}

// FUN_00399770
void W_399770(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    if (fa < fb) *(u32*)(r0 + 180) = r1;
    return;
}

// FUN_0039a41c
u32 W_39a41c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 8u;
    if (fa != fb) r0 = 333u;
    if (fa == fb) r0 = 60u;
    return r0;
}

// FUN_0039a4c8
void W_39a4c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = r1 - 1u;
    *(u32*)(r0 + 296) = r1;
    return;
}

// FUN_0039a4dc
void W_39a4dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u16*)(r0 + 114);
    r1 = *(u32*)(r0 + 76);
    fa = r2; fb = r1;
    if (fa >= fb) goto L_39a4fc;
    r2 = 65535u;
    fa = r1; fb = r2;
    if (fa >= fb) r1 = r2 - 1u;
    *(u16*)(r0 + 114) = r1;
    L_39a4fc:;
    return;
}

// FUN_0039ba7c
void W_39ba7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_39bac4;
    r2 = 16u;
    r1 = 0u;
    r0 = 56u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2aae18_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4 + 12) = r0;
    if (fa == fb) goto L_39bac4;
    r0 = Fn_2a9c98_1(r0);
    r0 = *(u32*)(r4 + 12);
    r1 = 1u;
    *(u8*)(r0 + 12) = r1;
    L_39bac4:;
    return;
}

// FUN_0039c688
u32 W_39c688(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 8u;
    if (fa != fb) r0 = 86u;
    if (fa == fb) r0 = 87u;
    return r0;
}

// FUN_0039c698
void W_39c698(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 4u;
    if (fa < fb) r0 = r0 + (r1 << 2);
    if (fa < fb) *(u32*)(r0 + 48) = r2;
    return;
}

// FUN_0039efa4
u32 W_39efa4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1;
    r4 = r0;
    r5 = r2;
    r1 = 2147483680u;
    r0 = 0u;
    if (r3 == 0) goto L_39efe4;
    fa = r3; fb = 1u;
    if (fa != fb) goto L_39f000;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_4(r0, r1, r2, r3);
    r1 = r5;
    r0 = r4;
    return Fn_444474_2(r0, r1);
    L_39efe4:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444474_2(r0, r1);
    L_39f000:;
    return r0;
}

// FUN_0039f004
u32 W_39f004(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1;
    r4 = r0;
    r5 = r2;
    r1 = 2147483680u;
    r0 = 0u;
    if (r3 == 0) goto L_39f044;
    fa = r3; fb = 1u;
    if (fa != fb) goto L_39f060;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_4(r0, r1, r2, r3);
    r1 = r5;
    r0 = r4;
    return Fn_444548_2(r0, r1);
    L_39f044:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444548_2(r0, r1);
    L_39f060:;
    return r0;
}

// FUN_0039f4d0
void W_39f4d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r3 = 0u;
    r2 = 1u;
    if (fa == fb) goto L_39f4f4;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_39f508;
    fa = r1; fb = 2u;
    if (fa == fb) *(u8*)(r0 + 92) = r2;
    return;
    L_39f4f4:;
    *(u8*)(r0 + 84) = r2;
    r1 = 3u;
    *(u8*)(r0 + 85) = r3;
    *(u32*)(r0 + 72) = r1;
    return;
    L_39f508:;
    *(u8*)(r0 + 84) = r2;
    r1 = 6u;
    *(u8*)(r0 + 85) = r3;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0039f7d4
u32 W_39f7d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1f5bf4_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_20c578_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_0039f87c
u32 W_39f87c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 120);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) r0 = Fn_5c25e0_2(r0, r1);
    r0 = 1u;
    return r0;
}

// FUN_003a0cc8
u32 W_3a0cc8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 + 94u;
    r0 = *(u8*)(r0 + 97);
    r2 = 1u;
    *(u8*)(r1 + r0) = r2;
    r0 = *(u8*)(r1 + 3);
    r0 = r0 + 1u;
    fa = r0; fb = 3u;
    if (fa < fb) r2 = 0u;
    if (fa >= fb) goto L_3a0cfc;
    L_3a0cec:;
    *(u8*)(r1 + r0) = r2;
    r0 = r0 + 1u;
    fa = r0; fb = 3u;
    if (fa < fb) goto L_3a0cec;
    L_3a0cfc:;
    r0 = 1u;
    return r0;
}

// FUN_003a444c
u32 W_3a444c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 1u;
    r0 = r0 & 255u;
    return r0;
}

// FUN_003a4458
void W_3a4458() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa54;
    r0 = *(u32*)(r4);
    r0 = *(u32*)(r0 + 168);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_26c628_1(r0);
    r0 = *(u32*)(r4);
    { Fn_06ccc4_1(r0); return; }
}

// FUN_003a7e0c
u32 W_3a7e0c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    fa = r2; fb = 35u;
    if (fa != fb) goto L_3a7e28;
    r2 = 1u;
    *(u8*)(r0 + 288) = r2;
    r1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 292) = r1;
    L_3a7e28:;
    r0 = 1u;
    return r0;
}

// FUN_003b2258
void W_3b2258(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_62ec44_1(r0);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3b22a0;
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 140);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 9u;
    if (fa != fb) r0 = Fn_357f74_2(r0, r1);
    r0 = r4;
    r1 = 10u;
    { Fn_3bc040_2(r0, r1); return; }
    L_3b22a0:;
    return;
}

// FUN_003b3248
u32 W_3b3248() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a672c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 220);
    return r0;
}

// FUN_003bc780
u32 W_3bc780(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 368);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_003bcb38
u32 W_3bcb38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 368) = r1;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_003bcc24
u32 W_3bcc24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3bcc98;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 92);
    r0 = ((u32(*)(u32))r1)(r0);
    r2 = 16u;
    r1 = 0u;
    r0 = 160u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_2e914c_1(r0);
    *(u32*)(r4 + 100) = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 44u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_323dac_1(r0);
    *(u32*)(r4 + 212) = r0;
    r1 = *(u32*)(r4 + 100);
    *(u32*)(r1 + 108) = r0;
    r0 = Fn_263fd8_2(r0, r1);
    r0 = (u32)g_008a725c;
    r1 = (u32)g_0089a388;
    r0 = *(u32*)(r0);
    *(u32*)(r1) = r0;
    L_3bcc98:;
    return r0;
}

// FUN_003bce78
u32 W_3bce78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3bcea0;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 120);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_3bcea4;
    L_3bcea0:;
    r0 = 1u;
    L_3bcea4:;
    return r0;
}

// FUN_003bd548
u32 W_3bd548(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3bd570;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 120);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_3bd574;
    L_3bd570:;
    r0 = 1u;
    L_3bd574:;
    return r0;
}

// FUN_003c2190
u32 W_3c2190(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 552u;
    return r0;
}

// FUN_003c21c4
u32 W_3c21c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_3c2474_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_003c762c
u32 W_3c762c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_3c7640;
    return Fn_3c5708_1(r0);
    L_3c7640:;
    return r0;
}

// FUN_003c85d8
void W_3c85d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008213e0;
    r1 = *(u32*)(r0 + 160);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_3c8604;
    r0 = r1;
    r0 = Fn_5a579c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 160) = r0;
    L_3c8604:;
    r0 = r4;
    r0 = Fn_4e019c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_003ca5bc
void W_3ca5bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ca5e4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 120);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3ca5ec;
    L_3ca5e4:;
    r0 = 7u;
    *(u8*)(r4 + 104) = r0;
    L_3ca5ec:;
    return;
}

// FUN_003ca8c8
void W_3ca8c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 132);
    r0 = Fn_443e18_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 16u;
    if (fa != fb) *(u8*)(r4 + 104) = r0;
    return;
}

// FUN_003cad58
void W_3cad58(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 3u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) *(u8*)(r0 + 107) = r1;
    if (fa == fb) goto L_3cad88;
    fa = r1; fb = 4u;
    if (fa == fb) r1 = 7u;
    if (fa == fb) goto L_3cad84;
    fa = r1; fb = 5u;
    if (fa == fb) r1 = 4u;
    if (fa == fb) *(u32*)(r0 + 124) = r2;
    if (fa != fb) goto L_3cad88;
    L_3cad84:;
    *(u8*)(r0 + 106) = r1;
    L_3cad88:;
    return;
}

// FUN_003cba68
void W_3cba68(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_00821830;
    r1 = *(u32*)(r0 + 140);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_3cba94;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 140) = r0;
    L_3cba94:;
    r0 = r4;
    r0 = Fn_4e019c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_003cc194
u32 W_3cc194(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3cc1bc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 96) = r0;
    L_3cc1bc:;
    r0 = 1u;
    return r0;
}

// FUN_003ccdd0
u32 W_3ccdd0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 312);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ccdf8;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 312) = r0;
    L_3ccdf8:;
    r0 = 1u;
    return r0;
}

// FUN_003cd6e0
u32 W_3cd6e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    r4 = 1u;
    fa = r2; fb = 16u;
    if (fa != fb) goto L_3cd710;
    r2 = *(u32*)(r0 + 4);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_3cd710;
    r2 = r1;
    r1 = r0;
    r0 = r2;
    r0 = Fn_643054_3(r0, r1, r2);
    L_3cd710:;
    r0 = r4;
    return r0;
}

// FUN_003cfa8c
u32 W_3cfa8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_00896a00;
    r2 = *(u32*)(r2);
    r3 = r1 & ~r2;
    if (r3 != 0) r1 = r1 & r2;
    r0 = r0 | (r1 << 8);
    return r0;
}

// FUN_003d3144
u32 W_3d3144(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1 + 4);
    fa = r1; fb = 23u;
    if (fa != fb) goto L_3d3170;
    r1 = *(u32*)(r0 + 116);
    r1 = *(u32*)(r1 + 144);
    r1 = *(u32*)(r1 + 108);
    fa = r1; fb = 4u;
    if (fa == fb) goto L_3d3170;
    fa = r1; fb = 5u;
    if (fa == fb) r1 = 12u;
    if (fa == fb) *(u8*)(r0 + 104) = r1;
    L_3d3170:;
    r0 = 1u;
    return r0;
}

// FUN_003d38a4
u32 W_3d38a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 120);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3d38cc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 120) = r0;
    L_3d38cc:;
    r0 = 1u;
    return r0;
}

// FUN_003d5378
u32 W_3d5378() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_003d5380
u32 W_3d5380() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_003d5b3c
u32 W_3d5b3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u8*)(r0 + 195);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3d5b68;
    r0 = r4;
    r0 = Fn_3d5a08_1(r0);
    r1 = *(u32*)(r4 + 200);
    fa = r0; fb = 100u;
    if (fa >= fb) r0 = 0u;
    r0 = r1 - r0;
    L_3d5b68:;
    return r0;
}

// FUN_003d75e8
u32 W_3d75e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_3d5340_1(r0);
    r0 = *(u32*)(r4 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3d7614;
    L_3d7600:;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 24);
    r0 = ((u32(*)(u32))r1)(r0);
    L_3d760c:;
    r0 = 1u;
    return r0;
    L_3d7614:;
    r2 = 16u;
    r1 = 0u;
    r0 = 24u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_39e31c_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4 + 96) = r0;
    if (fa == fb) goto L_3d760c;
    goto L_3d7600;
}

// FUN_003d8250
u32 W_3d8250(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    fa = r2; fb = 35u;
    if (fa == fb) r1 = *(u32*)(r1 + 8);
    if (fa == fb) *(u32*)(r0 + 364) = r1;
    r0 = 1u;
    return r0;
}

// FUN_003d851c
u32 W_3d851c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 148);
    r0 = r0 & 255u;
    return r0;
}

// FUN_003d8530
u32 W_3d8530(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 360);
    fa = r1; fb = 5u;
    if (fa == fb) r1 = 6u;
    if (fa == fb) *(u8*)(r0 + 360) = r1;
    r0 = 1u;
    return r0;
}

// FUN_003d8718
u32 W_3d8718(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_3d5340_1(r0);
    r0 = *(u32*)(r4 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3d8744;
    L_3d8730:;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 24);
    r0 = ((u32(*)(u32))r1)(r0);
    L_3d873c:;
    r0 = 1u;
    return r0;
    L_3d8744:;
    r2 = 16u;
    r1 = 0u;
    r0 = 24u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_39e31c_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4 + 96) = r0;
    if (fa == fb) goto L_3d873c;
    goto L_3d8730;
}

// FUN_003d8a4c
u32 W_3d8a4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 148);
    r0 = r0 & 255u;
    return r0;
}

// FUN_003d8a60
u32 W_3d8a60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 352);
    fa = r1; fb = 5u;
    if (fa == fb) r1 = 6u;
    if (fa == fb) *(u8*)(r0 + 352) = r1;
    r0 = 1u;
    return r0;
}

// FUN_003d8d54
u32 W_3d8d54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 340);
    fa = r0; fb = 5u;
    if (fa > fb) r0 = 1u;
    if (fa <= fb) r0 = 0u;
    return r0;
}

// FUN_003d8e0c
u32 W_3d8e0c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_3d7240_1(r0);
    r0 = r4;
    r0 = Fn_5b12b8_1(r0);
    r0 = (u32)g_008bfac0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3d8e48;
    r1 = *(u32*)(r4 + 344);
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_3d8e48;
    r0 = Fn_5bbbf8_2(r0, r1);
    r0 = ~0u;
    *(u32*)(r4 + 344) = r0;
    L_3d8e48:;
    r0 = 1u;
    return r0;
}

// FUN_003d928c
u32 W_3d928c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = (u32)g_008bfa54;
    r4 = 1u;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3d92cc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3d92cc;
    r0 = *(u8*)(r5 + 127);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 2u;
    L_3d92cc:;
    r0 = r4;
    return r0;
}

// FUN_003db930
u32 W_3db930(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = (u32)g_008bfa54;
    r4 = 1u;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3db970;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3db970;
    r0 = *(u8*)(r5 + 127);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 2u;
    L_3db970:;
    r0 = r4;
    return r0;
}

// FUN_003dbe80
u32 W_3dbe80(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 132);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_3dbe9c;
    r0 = *(u32*)(r0 + 140);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) r0 = 0u;
    if ((int)fa < (int)fb) goto L_3dbea0;
    L_3dbe9c:;
    r0 = 1u;
    L_3dbea0:;
    return r0;
}

// FUN_003dcef8
u32 W_3dcef8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = (u32)g_008bfa54;
    r4 = 1u;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3dcf38;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3dcf38;
    r0 = *(u8*)(r5 + 127);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 2u;
    L_3dcf38:;
    r0 = r4;
    return r0;
}

// FUN_003de610
u32 W_3de610(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r1 + 4);
    r4 = 1u;
    fa = r2; fb = 16u;
    if (fa == fb) goto L_3de65c;
    fa = r2; fb = 35u;
    if (fa == fb) goto L_3de63c;
    fa = r2; fb = 39u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u8*)(r0 + 116) = r1;
    goto L_3de66c;
    L_3de63c:;
    r2 = 1u;
    *(u8*)(r0 + 117) = r2;
    r1 = *(u32*)(r1 + 8);
    r2 = 0u;
    r0 = Fn_4df458_3(r0, r1, r2);
    goto L_3de66c;
    L_3de65c:;
    r2 = r1;
    r1 = r0;
    r0 = r2;
    r0 = Fn_643054_3(r0, r1, r2);
    L_3de66c:;
    r0 = r4;
    return r0;
}

// FUN_003e1250
u32 W_3e1250() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = ~0u;
    return r0;
}

// FUN_003e12f4
u32 W_3e12f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + r1;
    r0 = *(u8*)(r0 + 136);
    return r0;
}

// FUN_003e1398
u32 W_3e1398(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(signed char*)(r0 + 162);
    return r0;
}

// FUN_003e1574
u32 W_3e1574(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 96);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = r1 - 1u;
    if (fa != fb) *(u32*)(r0 + 96) = r1;
    r0 = 1u;
    return r0;
}

// FUN_003e3548
void W_3e3548(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 3u;
    r2 = 1u;
    if (fa == fb) *(u8*)(r0 + 208) = r2;
    if (fa == fb) goto L_3e3560;
    fa = r1; fb = 4u;
    if (fa == fb) *(u8*)(r0 + 211) = r2;
    L_3e3560:;
    return;
}

// FUN_003e3c98
u32 W_3e3c98(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r1;
    r1 = *(u32*)(r1 + 4);
    r4 = r0;
    r6 = 1u;
    fa = r1; fb = 16u;
    if (fa == fb) goto L_3e3ce4;
    fa = r1; fb = 32u;
    r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 209) = r0;
    if (fa == fb) goto L_3e3cdc;
    fa = r1; fb = 33u;
    if (fa == fb) *(u8*)(r4 + 210) = r0;
    if (fa == fb) goto L_3e3cdc;
    fa = r1; fb = 39u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) *(u8*)(r4 + 136) = r0;
    L_3e3cdc:;
    r0 = r6;
    return r0;
    L_3e3ce4:;
    r0 = 0u;
    r0 = Fn_12d130_2(r0, r1);
    r0 = r5;
    r1 = r4;
    r0 = Fn_643054_2(r0, r1);
    goto L_3e3cdc;
}

// FUN_003e5318
u32 W_3e5318(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_60cac8_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_003e5a10
u32 W_3e5a10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 136);
    fa = r0; fb = 3u;
    if (fa >= fb) r0 = 1u;
    if (fa < fb) r0 = 0u;
    return r0;
}

// FUN_003e5a24
u32 W_3e5a24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    fa = r1; fb = 0u;
    r0 = 1u;
    if (fa == fb) goto L_3e5a3c;
    r0 = r2;
    return Fn_3e5334_3(r0, r1, r2);
    L_3e5a3c:;
    return r0;
}

// FUN_003e6510
void W_3e6510(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 3u;
    r4 = r0;
    if (fa == fb) r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 139) = r0;
    if (fa == fb) goto L_3e6548;
    fa = r1; fb = 4u;
    if (fa != fb) goto L_3e6548;
    r0 = *(u32*)(r4 + 116);
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 3u;
    if (fa == fb) r0 = Fn_45254c_2(r0, r1);
    r0 = 13u;
    *(u8*)(r4 + 112) = r0;
    L_3e6548:;
    return;
}

// FUN_003e7a14
u32 W_3e7a14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 76);
    r3 = (u32)g_007c3650;
    fa = r1; fb = 0u;
    r1 = *(signed char*)(r0 + 101);
    if (fa == fb) goto L_3e7a40;
    r2 = 0u;
    r12 = 1u;
    *(u8*)(r0 + 76) = r2;
    *(u8*)(r0 + 78) = r12;
    *(u8*)(r0 + 77) = r2;
    L_3e7a40:;
    fa = r1; fb = 33u;
    if (fa >= fb) goto L_3e7a68;
    r0 = *(signed char*)(r3 + r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e7a68;
    r0 = (u32)g_008bfa40;
    r2 = 1u;
    r1 = r2;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_4(r0, r1, r2, r3);
    L_3e7a68:;
    r0 = 1u;
    return r0;
}

// FUN_003e9d34
void W_3e9d34(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r6 = r0;
    r7 = r4;
    L_3e9d44:;
    r5 = r6 + (r4 << 2);
    r0 = *(u32*)(r5 + 240);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9d64;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 8);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r5 + 240) = r7;
    L_3e9d64:;
    r4 = r4 + 1u;
    fa = r4; fb = 8u;
    if ((int)fa < (int)fb) goto L_3e9d44;
    return;
}

// FUN_003ea2f0
void W_3ea2f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    *(u8*)(r0 + 320) = r1;
    if (fa == fb) r1 = ~0u;
    if (fa == fb) *(u32*)(r0 + 324) = r1;
    return;
}

// FUN_003ee8a8
void W_3ee8a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = r1 << 2;
    r2 = 16u;
    r1 = 0u;
    r0 = Fn_021ca0_3(r0, r1, r2);
    r2 = 16u;
    *(u32*)(r4 + 8) = r0;
    r1 = 0u;
    r0 = r2;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3ee908;
    r1 = *(u32*)(r4 + 8);
    r2 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    *(u32*)(r0 + 8) = r1;
    r1 = *(u32*)(r0 + 12);
    r1 = r1 & 3221225472u;
    r1 = r1 | r5;
    r1 = r1 & ~3221225472u;
    *(u32*)(r0 + 12) = r1;
    L_3ee908:;
    *(u32*)(r4 + 4) = r0;
    return;
}

// FUN_003eeb38
void W_3eeb38(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r2 + 8);
    r3 = r0 + 4u;
    fa = r0; fb = 0u;
    *(u32*)(r2 + 8) = r3;
    if (fa != fb) *(u32*)(r0) = r1;
    return;
}

// FUN_003f036c
void W_3f036c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r4 = r0;
    if (fa == fb) goto L_3f038c;
    fa = r1; fb = 7u;
    if (fa == fb) goto L_3f03bc;
    { Fn_3e9724_2(r0, r1); return; }
    L_3f038c:;
    r2 = 16u;
    r1 = 0u;
    r0 = 32u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f03b8;
    r1 = r4;
    r0 = Fn_3e9fdc_2(r0, r1);
    r1 = (u32)g_008232a8;
    *(u32*)(r0) = r1;
    L_3f03b8:;
    return;
    L_3f03bc:;
    r2 = 16u;
    r1 = 0u;
    r0 = 28u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f03b8;
    r1 = r4;
    { Fn_3f0bf8_2(r0, r1); return; }
}

// FUN_003f0414
void W_3f0414(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 100);
    r1 = *(u32*)(r1 + 2252);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_3f042c;
    r1 = 13u;
    { Fn_3e9904_2(r0, r1); return; }
    L_3f042c:;
    { Fn_3e98fc_2(r0, r1); return; }
}

// FUN_003f64d4
u32 W_3f64d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 24);
    r1 = 200u;
    r0 = Fn_5db51c_2(r0, r1);
    r1 = ~0u;
    r0 = 1u;
    *(u32*)(r4 + 24) = r1;
    *(u8*)(r4 + 16) = r0;
    return r0;
}

// FUN_003f86ac
void W_3f86ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = 9175040u;
    r0 = Fn_0151c8_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3f86d4;
    r0 = *(u32*)(r4 + 68);
    r2 = 1u;
    r1 = 9175040u;
    r0 = Fn_402d58_3(r0, r1, r2);
    L_3f86d4:;
    r0 = 6356992u;
    r0 = Fn_0151c8_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3f86f8;
    r0 = *(u32*)(r4 + 68);
    r2 = 1u;
    r1 = 6356992u;
    r0 = Fn_402d58_3(r0, r1, r2);
    L_3f86f8:;
    r0 = *(u32*)(r4 + 68);
    r2 = 14u;
    r1 = 0u;
    *(u8*)(r0 + 116) = r2;
    *(u32*)(r4 + 100) = r1;
    return;
}

// FUN_003faa78
u32 W_3faa78(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 48);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + (r1 << 2);
    if (fa != fb) r0 = *(u32*)(r0 + 88);
    return r0;
}

// FUN_003fc20c
void W_3fc20c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 40);
    r0 = Fn_3ff2c0_1(r0);
    r5 = r0;
    r0 = *(u32*)(r4 + 40);
    r0 = *(u32*)(r0 + 56);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_3fc244;
    r0 = *(u32*)(r4 + 128);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_3fc244:;
    fa = r5; fb = 0u;
    if (fa == fb) goto L_3fc268;
    r0 = *(u32*)(r4 + 40);
    r0 = *(u32*)(r0 + 584);
    fa = r0; fb = 4u;
    if (fa != fb) goto L_3fc268;
    r0 = r4;
    { Fn_3fd63c_1(r0); return; }
    L_3fc268:;
    return;
}

// FUN_003ff280
void W_3ff280(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 40);
    r1 = r1 + 1u;
    fx = r1 & 1u;
    *(u32*)(r0 + 40) = r1;
    r1 = *(u32*)(r0 + 48);
    if (fx == 0) r1 = r1 + 1u;
    if (fx == 0) *(u32*)(r0 + 48) = r1;
    fa = r1; fb = 2u;
    if ((int)fa < (int)fb) goto L_3ff2b0;
    r1 = 0u;
    *(u32*)(r0 + 48) = r1;
    *(u32*)(r0 + 40) = r1;
    L_3ff2b0:;
    r1 = *(u32*)(r0 + 48);
    r1 = r1 + 25u;
    *(u32*)(r0 + 36) = r1;
    return;
}

// FUN_003ff424
u32 W_3ff424(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r0 = r0 + 1024u;
    r0 = r0 + 72u;
    return r0;
}

// FUN_003ff434
u32 W_3ff434(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r0 = r0 + 968u;
    return r0;
}

// FUN_00401530
void W_401530(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082394c;
    r1 = *(u32*)(r0 + 652);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_401560;
    r0 = (u32)g_008bfa30;
    r0 = *(u32*)(r0);
    r0 = Fn_403a5c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 652) = r0;
    L_401560:;
    r0 = r4;
    r0 = Fn_4018a4_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00402e54
u32 W_402e54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 108);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_402ea4;
    r1 = *(u8*)(r4 + 444);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_402e88;
    r0 = Fn_5db3d8_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_402f84_1(r0);
    goto L_402ea4;
    L_402e88:;
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 8);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) *(u8*)(r4 + 444) = r0;
    L_402ea4:;
    r0 = 1u;
    return r0;
}

// FUN_00403424
void W_403424(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_00823af0;
    r1 = *(u32*)(r0 + 12);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_403454;
    r0 = (u32)g_008bfa30;
    r0 = *(u32*)(r0);
    r0 = Fn_403a5c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_403454:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_004048d0
u32 W_4048d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 56);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 28);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 56);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 60);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 28);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 60);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = 1u;
    *(u32*)(r4 + 64) = r0;
    return r0;
}

// FUN_00404a68
u32 W_404a68(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u32*)(r0 + 76) = r1;
    r4 = r0;
    *(u32*)(r0 + 72) = r1;
    r0 = *(u32*)(r0 + 68);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 108);
    r0 = r0 | 2u;
    *(u32*)(r4 + 108) = r0;
    return r0;
}

// FUN_00404c70
void W_404c70(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_404c98;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_404c98:;
    return;
}

// FUN_00404c9c
void W_404c9c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 100);
    r4 = r0 + (r1 << 2);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_404cc8;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_404cc8:;
    return;
}

// FUN_00407a28
void W_407a28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_00823cf8;
    r1 = 0u;
    *(u32*)(r0 + 108) = r1;
    *(u32*)(r0) = r2;
    { Fn_2024b0_3(r0, r1, r2); return; }
}

// FUN_00407a40
u32 W_407a40(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_00823cf8;
    r2 = 0u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 108) = r2;
    return r0;
}

// FUN_00407ba0
u32 W_407ba0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_4202f4_1(r0);
    r0 = *(u32*)(r4 + 76);
    r0 = Fn_62f560_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_407be4;
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
    L_407be4:;
    r0 = 1u;
    return r0;
}

// FUN_00407ed0
void W_407ed0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_4178c8_0();
    r1 = 0u;
    *(u32*)(r0 + 24) = r1;
    *(u32*)(r0 + 28) = r1;
    *(u8*)(r0 + 32) = r1;
    *(u8*)(r0 + 33) = r1;
    r2 = (u32)g_00823d7c;
    *(u8*)(r0 + 34) = r1;
    *(u8*)(r0 + 35) = r1;
    *(u32*)(r0 + 36) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_00408038
u32 W_408038(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    r2 = 0u;
    r1 = 300u;
    r3 = *(u32*)(r0 + 40);
    r0 = r4;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    r0 = 10u;
    *(u32*)(r4 + 24) = r0;
    return r0;
}

// FUN_00408d64
void W_408d64(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 184);
    fa = r1; fb = 1u;
    if (fa == fb) goto L_408d7c;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 0u;
    if (fa != fb) goto L_408d80;
    L_408d7c:;
    *(u32*)(r0 + 168) = r1;
    L_408d80:;
    return;
}

// FUN_00408ebc
void W_408ebc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 184);
    fa = r1; fb = 1u;
    if (fa == fb) goto L_408ed4;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 0u;
    if (fa != fb) goto L_408ed8;
    L_408ed4:;
    *(u32*)(r0 + 168) = r1;
    L_408ed8:;
    return;
}

// FUN_00409520
void W_409520(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 36);
    fa = r2; fb = r1;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    return;
}

// FUN_00409a84
void W_409a84(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 48);
    fa = r2; fb = r1;
    if (fa != fb) *(u32*)(r0 + 48) = r1;
    return;
}

// FUN_00409a94
void W_409a94(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 52);
    fa = r2; fb = r1;
    if (fa != fb) *(u32*)(r0 + 52) = r1;
    return;
}
