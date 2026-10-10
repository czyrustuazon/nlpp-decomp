// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_2e3444_2(u32, u32);
u32 Fn_322034_1(u32);
extern char g_008bfa40[];
u32 Fn_1d22bc_0();
u32 Fn_1f826c_1(u32);
u32 Fn_219810_1(u32);
u32 Fn_2556cc_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_4a07f0_1(u32);
u32 Fn_5d1bf8_1(u32);
u32 Fn_2201a8_1(u32);
u32 Fn_243344_1(u32);
u32 Fn_312d4c_0();
extern char g_0081e334[];
u32 Fn_2024b0_1(u32);
u32 Fn_2024b0_3(u32, u32, u32);
extern char g_0081e374[];
extern char g_0081e394[];
extern char g_0081e3a4[];
extern char g_0081e3b4[];
extern char g_0081e3c4[];
extern char g_0081e458[];
extern char g_0081e468[];
extern char g_0089e184[];
u32 Fn_1fe040_0();
u32 Fn_3519ac_1(u32);
u32 Fn_351ab0_1(u32);
u32 Fn_351b6c_1(u32);
u32 Fn_3525c8_1(u32);
u32 Fn_352f88_1(u32);
extern char g_008a80a4[];
u32 Fn_5af1dc_3(u32, u32, u32);
u32 Fn_354610_1(u32);
u32 Fn_354e24_1(u32);
u32 Fn_355364_1(u32);
u32 Fn_3558c4_3(u32, u32, u32);
u32 Fn_356f88_3(u32, u32, u32);
extern char g_008bfa88[];
u32 Fn_2ad980_1(u32);
u32 Fn_2e94a8_1(u32);
u32 Fn_35c124_2(u32, u32);
extern char g_0081ed30[];
u32 Fn_4e019c_1(u32);
u32 Fn_5a579c_3(u32, u32, u32);
extern char g_0079e424[];
u32 Fn_5b12b8_1(u32);
extern char g_008bfa44[];
extern char g_0081f4f8[];
u32 Fn_1fcd88_3(u32, u32, u32);
extern char g_0089aa6c[];
u32 Fn_207c84_1(u32);
u32 Fn_365400_1(u32);
u32 Fn_4443e4_3(u32, u32, u32);
u32 Fn_444474_2(u32, u32);
u32 Fn_444548_2(u32, u32);
u32 Fn_386da0_2(u32, u32);
u32 Fn_38b014_2(u32, u32);
u32 Fn_38ac9c_3(u32, u32, u32);
extern char g_007b6d92[];
extern char g_007b6e14[];
extern char g_007b7164[];
extern char g_007b64d4[];
extern char g_007b6180[];
u32 Fn_202b20_4(u32, u32, u32, u32);

// FUN_0031d6bc
u32 W_31d6bc(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 140);
    if (r0 == 0u) goto L_31d6e0;
    r0 = *(u32*)(r0 + 24);
    r1 = 3u;
    r0 = Fn_2e3444_2(r0, r1);
    r0 = *(short*)(r0 + 4);
    L_31d6e0:;
    *(u32*)(r4 + 128) = r0;
    return r0;
}

// FUN_00323cd4
void W_323cd4(u32 a0) {
    u32 r0 = a0, r4, r5;
    r5 = r0;
    r4 = 0u;
    L_323ce0:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = Fn_322034_1(r0);
    r4 = r4 + 1u;
    if ((int)r4 < (int)3u) goto L_323ce0;
    return;
}

// FUN_00324798
u32 W_324798(u32 a0) {
    u32 r0 = a0, fa, fb;
    fa = r0; fb = 67u;
    if (fa == fb) r0 = 66u;
    if (fa == fb) goto L_3247d4;
    if ((int)fa > (int)fb) goto L_3247d8;
    fa = r0; fb = 53u;
    if (fa == fb) r0 = 370u;
    if (fa == fb) goto L_3247d4;
    fa = r0; fb = 57u;
    if (fa == fb) r0 = 55u;
    if (fa == fb) goto L_3247d4;
    fa = r0; fb = 62u;
    if (fa == fb) r0 = 61u;
    if (fa == fb) goto L_3247d4;
    if (r0 == 63u) r0 = 376u;
    L_3247d4:;
    return r0;
    L_3247d8:;
    fa = r0; fb = 70u;
    if (fa == fb) r0 = 69u;
    if (fa == fb) goto L_3247d4;
    fa = r0; fb = 71u;
    if (fa == fb) r0 = 382u;
    if (fa == fb) goto L_3247d4;
    if (r0 == 75u) r0 = 74u;
    return r0;
}

// FUN_003254f8
void W_3254f8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, fa, fb;
    if (r1 >= 3u) goto L_325524;
    r1 = r1 + r0;
    r0 = *(u8*)(r1 + 613);
    r0 = r0 + r2;
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) r0 = 0u;
    if ((int)fa < (int)fb) goto L_325520;
    if ((int)r0 > (int)128u) r0 = 128u;
    L_325520:;
    *(u8*)(r1 + 613) = r0;
    L_325524:;
    return;
}

// FUN_003258b0
void W_3258b0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) goto L_3258d4;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_3258d4;
    fa = r1; fb = 9u;
    if (fa == fb) r1 = 2u;
    if (fa != fb) goto L_3258e0;
    L_3258d4:;
    r1 = (r1 << 3) - r1;
    r1 = r1 << 1;
    *(u8*)(r0 + 795) = r1;
    L_3258e0:;
    return;
}

// FUN_0032a140
u32 W_32a140(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 3u;
    if (fa < fb) r0 = r0 + r1;
    if (fa < fb) r0 = *(u8*)(r0 + 44);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_0032adc8
u32 W_32adc8() {
    u32 r0, r1, r2, r4;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1d22bc_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_2556cc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1f826c_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_219810_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_0032c1d0
u32 W_32c1d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 124);
    if (fa == fb) goto L_32c1e8;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(u32*)(r0 + 128);
    if (fa != fb) r0 = 0u;
    L_32c1e8:;
    return r0;
}

// FUN_0032c1ec
u32 W_32c1ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 116);
    if (fa == fb) goto L_32c204;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(u32*)(r0 + 120);
    if (fa != fb) r0 = 0u;
    L_32c204:;
    return r0;
}

// FUN_0032c25c
u32 W_32c25c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 108);
    if (fa == fb) goto L_32c274;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = *(u32*)(r0 + 112);
    if (fa != fb) r0 = 0u;
    L_32c274:;
    return r0;
}

// FUN_0032cc7c
u32 W_32cc7c() {
    u32 r0, r1, r2;
    r2 = 16u;
    r1 = 0u;
    r0 = 272u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_32cca4;
    r0 = Fn_4a07f0_1(r0);
    if (r0 != 0u) r0 = Fn_5d1bf8_1(r0);
    L_32cca4:;
    r0 = 1u;
    return r0;
}

// FUN_00335264
void W_335264(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) goto L_33527c;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 4u;
    if (fa != fb) goto L_335280;
    L_33527c:;
    *(u32*)(r0 + 72) = r1;
    L_335280:;
    return;
}

// FUN_003358c0
u32 W_3358c0() {
    u32 r0, r1, r2, r4;
    r4 = (u32)g_008bfa40;
    r0 = Fn_1d22bc_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_2556cc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_243344_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_2201a8_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_219810_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_00336ad8
u32 W_336ad8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, fa, fb;
    fa = r1; fb = 5u;
    if (fa > fb) r0 = 0u;
    if (fa <= fb) r0 = 1u;
    return r0;
}

// FUN_0033bce8
u32 W_33bce8() {
    u32 r0, r1;
    r0 = Fn_312d4c_0();
    r0 = r0 + 9u;
    r1 = 4u;
    r0 = (r0 << 6) - r0;
    r0 = r1 + (r0 << 1);
    r0 = r0 + 32u;
    return r0;
}

// FUN_0033c82c
void W_33c82c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = *(u8*)(r0 + 16);
    if (r2 >= 50u) goto L_33c894;
    r2 = r2 + (r2 << 2);
    r3 = *(u8*)(r1 + 4);
    r2 = r0 + (r2 << 2);
    r2 = r2 + 244u;
    *(u8*)(r2 + 4) = r3;
    r3 = *(u32*)(r1 + 8);
    *(u32*)(r2 + 8) = r3;
    r3 = *(u8*)(r1 + 12);
    *(u8*)(r2 + 12) = r3;
    r3 = *(u8*)(r1 + 13);
    *(u8*)(r2 + 13) = r3;
    r3 = *(u8*)(r1 + 14);
    *(u8*)(r2 + 14) = r3;
    r3 = *(u8*)(r1 + 15);
    *(u8*)(r2 + 15) = r3;
    r1 = *(u16*)(r1 + 16);
    *(u16*)(r2 + 16) = r1;
    r1 = *(u8*)(r0 + 16);
    r1 = r1 + 1u;
    *(u8*)(r0 + 16) = r1;
    r1 = *(u8*)(r0 + 15);
    r1 = r1 | 2u;
    *(u8*)(r0 + 15) = r1;
    L_33c894:;
    return;
}

// FUN_0033c9cc
void W_33c9cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    r1 = *(u8*)(r0 + 15);
    if (fa != fb) r1 = r1 | 2u;
    if (fa == fb) r1 = r1 & ~2u;
    *(u8*)(r0 + 15) = r1;
    return;
}

// FUN_0033c9e4
void W_33c9e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    r1 = *(u8*)(r0 + 15);
    if (fa != fb) r1 = r1 | 1u;
    if (fa == fb) r1 = r1 & ~1u;
    *(u8*)(r0 + 15) = r1;
    return;
}

// FUN_0033c9fc
void W_33c9fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = *(u8*)(r0 + 17);
    if (r2 >= 36u) goto L_33ca1c;
    r3 = r0 + 18u;
    *(u8*)(r2 + r3) = r1;
    r1 = *(u8*)(r0 + 17);
    r1 = r1 + 1u;
    *(u8*)(r0 + 17) = r1;
    L_33ca1c:;
    return;
}

// FUN_0033f890
void W_33f890(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = 0u;
    r3 = 1u;
    if (r1 == 0u) goto L_33f8bc;
    if (r1 != 1u) goto L_33f8b8;
    *(u8*)(r0 + 76) = r3;
    r1 = 2u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    L_33f8b8:;
    return;
    L_33f8bc:;
    *(u8*)(r0 + 76) = r3;
    r1 = 4u;
    *(u8*)(r0 + 77) = r2;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_003401f0
void W_3401f0(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e334;
    r1 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_34021c;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_34021c:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00340a7c
void W_340a7c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e374;
    r1 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_340aa8;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_340aa8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00340d2c
void W_340d2c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e394;
    r1 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_340d58;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_340d58:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00340f74
void W_340f74(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e3a4;
    r1 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_340fa0;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_340fa0:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0034112c
void W_34112c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e3b4;
    r1 = *(u32*)(r0 + 12);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_341158;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_341158:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0034119c
void W_34119c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e3c4;
    r1 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_3411c8;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_3411c8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00342fc8
void W_342fc8(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e458;
    r1 = *(u32*)(r0 + 16);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_342ff4;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_342ff4:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_003430c8
void W_3430c8(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081e468;
    r1 = *(u32*)(r0 + 12);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_3430f4;
    r0 = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_3430f4:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_003433e0
u32 W_3433e0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = ~0u;
    *(u32*)(r0 + 68) = r1;
    r0 = 1u;
    return r0;
}

// FUN_0034368c
u32 W_34368c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 68);
    r0 = 0u;
    if (r1 == 0u) goto L_3436a4;
    if (r1 == 1u) r0 = 1u;
    L_3436a4:;
    return r0;
}

// FUN_0034561c
void W_34561c() {
    u32 r0, r1, r4;
    r4 = (u32)g_0089e184;
    r0 = *(u32*)(r4);
    if (r0 == 0u) goto L_345644;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_345644:;
    return;
}

// FUN_0034ac90
void W_34ac90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = r1 + 1u;
    if (r2 <= 3u) *(u8*)(r0 + 83) = r1;
    return;
}

// FUN_0034d028
u32 W_34d028() {
    u32 r0;
    r0 = Fn_1fe040_0();
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_00351358
void W_351358(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_351368:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 104);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_351388;
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 24);
    r1 = r6;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_351388:;
    r4 = r4 + 1u;
    fa = r4; fb = 23u;
    if (fa < fb) goto L_351368;
    *(u8*)(r5 + 85) = r6;
    return;
}

// FUN_00351d68
u32 W_351d68(u32 a0) {
    u32 r0 = a0, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 72);
    r5 = 1u;
    if (r0 == 0u) goto L_351db4;
    if (r0 != 1u) goto L_351db4;
    r0 = *(u8*)(r4 + 93);
    if (r0 == 0u) goto L_351db4;
    r0 = r4;
    r0 = Fn_351b6c_1(r0);
    r0 = r4;
    r0 = Fn_351ab0_1(r0);
    r0 = r4;
    r0 = Fn_3519ac_1(r0);
    r0 = 2u;
    *(u8*)(r4 + 72) = r0;
    L_351db4:;
    r0 = r5;
    return r0;
}

// FUN_00352d90
u32 W_352d90(u32 a0) {
    u32 r0 = a0, r4, r5, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 72);
    r5 = 1u;
    if (r0 == 0u) goto L_352de4;
    if (r0 == 1u) goto L_352dc8;
    if (r0 == 2u) goto L_352de4;
    fa = r0; fb = 3u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_352f88_1(r0);
    goto L_352de4;
    L_352dc8:;
    r0 = *(u8*)(r4 + 141);
    if (r0 == 0u) goto L_352de4;
    r0 = r4;
    r0 = Fn_3525c8_1(r0);
    r0 = 2u;
    *(u8*)(r4 + 72) = r0;
    L_352de4:;
    r0 = r5;
    return r0;
}

// FUN_00352e08
void W_352e08(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 104);
    *(u8*)(r0 + 155) = r1;
    if (r2 == 0u) goto L_352e3c;
    r0 = (u32)g_008a80a4;
    if (r1 == 0u) goto L_352e30;
    r1 = *(u32*)(r0 + 24);
    r0 = r2;
    { Fn_5af1dc_3(r0, r1, r2); return; }
    L_352e30:;
    r1 = *(u32*)(r0 + 20);
    r0 = r2;
    { Fn_5af1dc_3(r0, r1, r2); return; }
    L_352e3c:;
    return;
}

// FUN_00352e44
void W_352e44(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 96);
    *(u8*)(r0 + 154) = r1;
    if (r2 == 0u) goto L_352e78;
    r0 = (u32)g_008a80a4;
    if (r1 == 0u) goto L_352e6c;
    r1 = *(u32*)(r0 + 16);
    r0 = r2;
    { Fn_5af1dc_3(r0, r1, r2); return; }
    L_352e6c:;
    r1 = *(u32*)(r0 + 12);
    r0 = r2;
    { Fn_5af1dc_3(r0, r1, r2); return; }
    L_352e78:;
    return;
}

// FUN_003549d8
u32 W_3549d8(u32 a0) {
    u32 r0 = a0, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 72);
    r5 = 1u;
    if (r0 == 0u) goto L_354a14;
    if (r0 != 1u) goto L_354a14;
    r0 = *(u8*)(r4 + 90);
    if (r0 == 0u) goto L_354a14;
    r0 = r4;
    r0 = Fn_354610_1(r0);
    r0 = 2u;
    *(u8*)(r4 + 72) = r0;
    L_354a14:;
    r0 = r5;
    return r0;
}

// FUN_00355030
u32 W_355030(u32 a0) {
    u32 r0 = a0, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 72);
    r5 = 1u;
    if (r0 == 0u) goto L_35506c;
    if (r0 != 1u) goto L_35506c;
    r0 = *(u8*)(r4 + 93);
    if (r0 == 0u) goto L_35506c;
    r0 = r4;
    r0 = Fn_354e24_1(r0);
    r0 = 2u;
    *(u8*)(r4 + 72) = r0;
    L_35506c:;
    r0 = r5;
    return r0;
}

// FUN_00355670
u32 W_355670(u32 a0) {
    u32 r0 = a0, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 72);
    r5 = 1u;
    if (r0 == 0u) goto L_3556ac;
    if (r0 != 1u) goto L_3556ac;
    r0 = *(u8*)(r4 + 153);
    if (r0 == 0u) goto L_3556ac;
    r0 = r4;
    r0 = Fn_355364_1(r0);
    r0 = 2u;
    *(u8*)(r4 + 72) = r0;
    L_3556ac:;
    r0 = r5;
    return r0;
}

// FUN_00355c2c
u32 W_355c2c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r1 + 4);
    if (r2 != 16u) goto L_355c48;
    r1 = *(u32*)(r1 + 8);
    *(u8*)(r0 + 84) = r1;
    r0 = Fn_3558c4_3(r0, r1, r2);
    L_355c48:;
    r0 = 1u;
    return r0;
}

// FUN_00356370
void W_356370(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 112);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) *(u8*)(r0 + 84) = r1;
    return;
}

// FUN_00357788
u32 W_357788(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(signed char*)(r0 + 147);
    if (r2 == r1) goto L_3577a4;
    r2 = 1u;
    *(u8*)(r0 + 147) = r1;
    *(u8*)(r0 + 142) = r2;
    return Fn_356f88_3(r0, r1, r2);
    L_3577a4:;
    return r0;
}

// FUN_00357c94
void W_357c94() {
    u32 r0;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_357ca8;
    { Fn_2ad980_1(r0); return; }
    L_357ca8:;
    { Fn_2e94a8_1(r0); return; }
}

// FUN_0035c10c
u32 W_35c10c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 79);
    if (r1 != 0u) r0 = Fn_35c124_2(r0, r1);
    r0 = 1u;
    return r0;
}

// FUN_0035e32c
void W_35e32c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) goto L_35e344;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 5u;
    if (fa != fb) goto L_35e348;
    L_35e344:;
    *(u32*)(r0 + 128) = r1;
    L_35e348:;
    return;
}

// FUN_00361184
void W_361184(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081ed30;
    r1 = *(u32*)(r0 + 156);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_3611b0;
    r0 = r1;
    r0 = Fn_5a579c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 156) = r0;
    L_3611b0:;
    r0 = r4;
    r0 = Fn_4e019c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00362c04
void W_362c04(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, fa, fb;
    fa = r1; fb = 9u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u8*)(r0 + 120) = r1;
    if (fa == fb) goto L_362c38;
    fa = r1; fb = 10u;
    if (fa == fb) *(u32*)(r0 + 124) = r2;
    if (fa == fb) goto L_362c38;
    fa = r1; fb = 11u;
    if (fa == fb) r1 = 4096u;
    if (fa == fb) *(u32*)(r0 + 112) = r1;
    if (fa == fb) goto L_362c38;
    fa = r1; fb = 14u;
    if (fa == fb) *(u32*)(r0 + 128) = r2;
    L_362c38:;
    return;
}

// FUN_00365400
u32 W_365400(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0079e424;
    r0 = (r0 << 3) - r0;
    r0 = r1 + (r0 << 2);
    return r0;
}

// FUN_0036724c
void W_36724c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 136);
    if (r0 != 0u) *(u8*)(r0 + 24) = r1;
    return;
}

// FUN_0036769c
u32 W_36769c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 36);
    r0 = *(u32*)(r0 + 8);
    fa = r1; fb = r0;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00368f08
u32 W_368f08(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_5b12b8_1(r0);
    r0 = *(u32*)(r4 + 108);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) *(u32*)(r4 + 108) = r0;
    r0 = 1u;
    return r0;
}

// FUN_003692c8
u32 W_3692c8() {
    u32 r0;
    r0 = (u32)g_008bfa44;
    r0 = *(u32*)(r0);
    r0 = *(signed char*)(r0 + 44);
    r0 = r0 ^ 1u;
    return r0;
}

// FUN_003719e4
u32 W_3719e4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, fa, fb;
    r2 = 3625997305u;
    r0 = 0u;
    if (r1 == r2) goto L_371a18;
    r0 = r2 - 260046848u;
    if (r1 == r0) goto L_371a14;
    r0 = 3376435201u;
    fa = r1; fb = r0;
    if (fa != fb) r0 = 4183838722u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_371a18;
    L_371a14:;
    r0 = 2u;
    L_371a18:;
    return r0;
}

// FUN_00372870
void W_372870(u32 a0) {
    u32 r0 = a0, r1;
    r1 = ~0u;
    *(u32*)(r0 + 56) = r1;
    return;
}

// FUN_00376bc0
void W_376bc0(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081f4f8;
    r1 = *(u32*)(r0 + 8);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_376bec;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_376bec:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00376ebc
u32 W_376ebc() {
    u32 r0, r1, r2, r4, r5, fa, fb;
    r4 = ~0u;
    r5 = (u32)g_0089aa6c;
    r0 = *(u32*)(r5);
    if (r0 != 0u) goto L_376ef0;
    r2 = 16u;
    r1 = 0u;
    r0 = 132u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 != 0u) r0 = Fn_207c84_1(r0);
    *(u32*)(r5) = r0;
    L_376ef0:;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~1u;
    if (fa == fb) goto L_376f0c;
    r1 = *(u8*)(r0 + 129);
    if (r1 == 1u) r4 = *(u32*)(r0 + 120);
    r0 = r4;
    L_376f0c:;
    return r0;
}

// FUN_00381444
u32 W_381444(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 76);
    r0 = Fn_365400_1(r0);
    r0 = *(u32*)(r0 + 4);
    if (r0 != 1u) r0 = 0u;
    return r0;
}

// FUN_00383070
u32 W_383070(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_383088;
    r2 = r1 + (r1 << 2);
    r1 = r2 + (r1 << 3);
    r0 = r0 + (r1 << 4);
    L_383088:;
    return r0;
}

// FUN_003860f0
u32 W_3860f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 12);
    r0 = 0u;
    if (r2 == 0u) goto L_38610c;
    r0 = 487u;
    r0 = r1 * r0;
    r0 = r2 + (r0 << 4);
    L_38610c:;
    return r0;
}

// FUN_0038668c
u32 W_38668c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483667u;
    if (fa == fb) goto L_3866d0;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483668u;
    if (fa != fb) goto L_3866ec;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444474_2(r0, r1);
    L_3866d0:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444474_2(r0, r1);
    L_3866ec:;
    return r0;
}

// FUN_003866f0
u32 W_3866f0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483667u;
    if (fa == fb) goto L_386734;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483668u;
    if (fa != fb) goto L_386750;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444548_2(r0, r1);
    L_386734:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444548_2(r0, r1);
    L_386750:;
    return r0;
}

// FUN_00387124
u32 W_387124(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 19u;
    if (fa < fb) r1 = r1 + (r1 << 1);
    if (fa < fb) r0 = r0 + (r1 << 6);
    if (fa < fb) r0 = r0 + 12u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_00387198
void W_387198(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, fa, fb;
    fa = r1; fb = 8u;
    if (fa < fb) r0 = r0 + (r1 << 2);
    if (fa < fb) *(u32*)(r0 + 4092) = r2;
    return;
}

// FUN_003874dc
void W_3874dc(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r5 = r0;
    r4 = 0u;
    L_3874e8:;
    r1 = ~0u;
    r0 = r4 + (r4 << 1);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 12u;
    r0 = Fn_386da0_2(r0, r1);
    r4 = r4 + 1u;
    if (r4 < 15u) goto L_3874e8;
    return;
}

// FUN_00387fc0
u32 W_387fc0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r12, fa, fb;
    r2 = *(u32*)(r0 + 12);
    r0 = 0u;
    fa = r2; fb = 0u;
    if (fa != fb) r12 = *(u32*)(r1);
    if (fa != fb) r3 = 0u;
    if (fa == fb) goto L_387ffc;
    L_387fdc:;
    r4 = *(u32*)(r2);
    fa = r4; fb = r12;
    if (fa != fb) goto L_388004;
    r4 = *(u32*)(r2 + 4);
    r5 = *(u32*)(r1 + 4);
    fa = r4; fb = r5;
    if (fa != fb) goto L_388004;
    r0 = 1u;
    L_387ffc:;
    return r0;
    L_388004:;
    r3 = r3 + 1u;
    fa = r3; fb = 500u;
    r2 = r2 + 8u;
    if (fa < fb) goto L_387fdc;
    return r0;
}

// FUN_003884a4
u32 W_3884a4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    if (r0 == 0u) goto L_3884c0;
    if (r0 == 1u) goto L_3884d0;
    if (r0 == 2u) goto L_3884e0;
    goto L_3884ec;
    L_3884c0:;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = 3u;
    if (fa == fb) goto L_3884f0;
    goto L_3884ec;
    L_3884d0:;
    fa = r1; fb = 2u;
    if (fa == fb) r0 = 5u;
    if (fa == fb) goto L_3884f0;
    goto L_3884ec;
    L_3884e0:;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = 8u;
    if (fa == fb) goto L_3884f0;
    L_3884ec:;
    r0 = 0u;
    L_3884f0:;
    return r0;
}

// FUN_00389084
void W_389084(u32 a0) {
    u32 r0 = a0, r1, r2, r4, fa, fb;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 12u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) r0 = Fn_38b014_2(r0, r1);
    *(u32*)(r4 + 12) = r0;
    return;
}

// FUN_003895f8
u32 W_3895f8(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(u32*)(r0 + 12);
    r0 = 0u;
    if (r2 == 0u) goto L_389614;
    r1 = 0u;
    r0 = r2;
    return Fn_38ac9c_3(r0, r1, r2);
    L_389614:;
    return r0;
}

// FUN_00389e88
u32 W_389e88(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483652u;
    if (fa == fb) goto L_389ecc;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483653u;
    if (fa != fb) goto L_389ee8;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444474_2(r0, r1);
    L_389ecc:;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444474_2(r0, r1);
    L_389ee8:;
    return r0;
}

// FUN_00389eec
u32 W_389eec(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483652u;
    if (fa == fb) goto L_389f30;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483653u;
    if (fa != fb) goto L_389f4c;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444548_2(r0, r1);
    L_389f30:;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444548_2(r0, r1);
    L_389f4c:;
    return r0;
}

// FUN_0038a060
void W_38a060(u32 a0) {
    u32 r0 = a0, r1, r2, r4, fa, fb;
    r4 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 12u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 200u;
    if (fa != fb) r0 = Fn_38b014_2(r0, r1);
    *(u32*)(r4 + 12) = r0;
    return;
}

// FUN_0038ac9c
u32 W_38ac9c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 8);
    r0 = 0u;
    if (r2 == 0u) goto L_38acb8;
    r0 = (r1 << 4) - r1;
    r0 = r0 + (r1 << 6);
    r0 = r2 + (r0 << 3);
    L_38acb8:;
    return r0;
}

// FUN_0038b6d8
u32 W_38b6d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 12);
    r0 = 0u;
    if (r2 != 0u) r0 = r2 + (r1 << 1);
    return r0;
}

// FUN_0038b7d4
void W_38b7d4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_38b7ec;
    r2 = *(u16*)(r2);
    r0 = r0 + (r1 << 1);
    *(u16*)(r0) = r2;
    L_38b7ec:;
    return;
}

// FUN_0038ba58
void W_38ba58(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 16);
    if (r0 == 0u) goto L_38ba80;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 16) = r0;
    L_38ba80:;
    return;
}

// FUN_0038bb5c
u32 W_38bb5c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483663u;
    if (fa == fb) goto L_38bba8;
    if (r1 != 1u) goto L_38bbc4;
    r2 = *(u32*)(r4 + 16);
    fa = r2; fb = 0u;
    if (fa != fb) r1 = 2147483664u;
    if (fa == fb) goto L_38bbc4;
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444548_2(r0, r1);
    L_38bba8:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444548_2(r0, r1);
    L_38bbc4:;
    return r0;
}

// FUN_0038e26c
u32 W_38e26c(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    r0 = (u32)g_007b6d92;
    r0 = r0 + (r1 << 1);
    return r0;
}

// FUN_0038e424
u32 W_38e424(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 68);
    r0 = r0 + (r1 << 1);
    return r0;
}

// FUN_0038e6ac
u32 W_38e6ac(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    r0 = (u32)g_007b6e14;
    r0 = r0 + (r1 << 2);
    return r0;
}

// FUN_0038e6bc
u32 W_38e6bc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 64);
    r0 = r0 + (r1 << 1);
    return r0;
}

// FUN_0038ea98
u32 W_38ea98(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007b7164;
    r0 = r1 + (r0 << 1);
    r0 = *(u16*)(r0);
    r0 = r0 & 255u;
    return r0;
}

// FUN_0038f480
u32 W_38f480(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_007b64d4;
    r0 = r0 + (r0 << 3);
    r0 = r0 + r1;
    return r0;
}

// FUN_003902f8
u32 W_3902f8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) *(u8*)(r1) = r0;
    r0 = 0u;
    return r0;
}

// FUN_00390b38
void W_390b38(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = r0 + 12u;
    r0 = 0u;
    r2 = r0;
    L_390b44:;
    *(u8*)(r1 + r0) = r2;
    r0 = r0 + 1u;
    if (r0 < 8u) goto L_390b44;
    return;
}

// FUN_00391794
u32 W_391794(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    fa = r0; fb = 21u;
    if (fa < fb) r1 = (u32)g_007b6180;
    if (fa < fb) r0 = r0 + (r0 << 1);
    if (fa < fb) r0 = r1 + (r0 << 2);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_0039266c
u32 W_39266c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3;
    r0 = *(u32*)(r0 + 12);
    r3 = r2;
    if (r0 == 0u) goto L_392690;
    r1 = (r1 << 6) - r1;
    r2 = 126u;
    r1 = r0 + (r1 << 1);
    r0 = r3;
    return Fn_202b20_4(r0, r1, r2, r3);
    L_392690:;
    return r0;
}

// FUN_00392980
u32 W_392980(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483661u;
    if (fa == fb) goto L_3929c4;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483662u;
    if (fa != fb) goto L_3929e0;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444474_2(r0, r1);
    L_3929c4:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444474_2(r0, r1);
    L_3929e0:;
    return r0;
}

// FUN_003929e4
u32 W_3929e4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483661u;
    if (fa == fb) goto L_392a28;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483662u;
    if (fa != fb) goto L_392a44;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444548_2(r0, r1);
    L_392a28:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444548_2(r0, r1);
    L_392a44:;
    return r0;
}

// FUN_00392fac
u32 W_392fac(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_392fd4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    L_392fd4:;
    r0 = r4;
    return r0;
}

// FUN_00393adc
void W_393adc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r2 = *(u8*)(r2);
    r0 = r0 + (r1 << 4);
    *(u8*)(r0 + 22) = r2;
    return;
}

// FUN_00393d50
void W_393d50(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r2 = *(u8*)(r2);
    r0 = r0 + (r1 << 4);
    *(u8*)(r0 + 21) = r2;
    return;
}

// FUN_00393d60
void W_393d60(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r2 = *(u8*)(r2);
    r0 = r0 + (r1 << 4);
    *(u8*)(r0 + 23) = r2;
    return;
}

// FUN_00394d10
void W_394d10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = r1 + 1u;
    if (r2 < 4u) *(u32*)(r0 + 20) = r1;
    return;
}

// FUN_00394dbc
void W_394dbc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 < 7u) *(u8*)(r0 + 88) = r1;
    return;
}

// FUN_00395b24
u32 W_395b24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 12);
    r0 = 0u;
    if (r2 == 0u) goto L_395b40;
    r0 = 5153u;
    r0 = r1 * r0;
    r0 = r2 + (r0 << 2);
    L_395b40:;
    return r0;
}

// FUN_00395fb0
u32 W_395fb0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483659u;
    if (fa == fb) goto L_395ff4;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483660u;
    if (fa != fb) goto L_396010;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444474_2(r0, r1);
    L_395ff4:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444474_2(r0, r1);
    L_396010:;
    return r0;
}

// FUN_00396014
u32 W_396014(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, fa, fb;
    fa = r1; fb = 0u;
    r4 = r0;
    r5 = r2;
    r0 = 0u;
    if (fa == fb) r1 = 2147483659u;
    if (fa == fb) goto L_396058;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2147483660u;
    if (fa != fb) goto L_396074;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    return Fn_444548_2(r0, r1);
    L_396058:;
    r2 = *(u32*)(r4 + 20);
    r0 = r4;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    return Fn_444548_2(r0, r1);
    L_396074:;
    return r0;
}

// FUN_0039652c
u32 W_39652c(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 256u;
    r0 = *(signed char*)(r0 + 2);
    return r0;
}
