// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_23e0dc_0();
u32 Fn_23f1ac_0();
extern char g_0080f5e0[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_1ebf38_1(u32);
u32 Fn_199cb8_1(u32);
extern char g_0080fa0c[];
u32 Fn_1e87e4_1(u32);
u32 Fn_646550_2(u32, u32);
u32 Fn_2430d8_0();
u32 Fn_243c6c_0();
u32 Fn_244644_0();
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_00814380[];
u32 Fn_1941cc_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_247984_0();
u32 Fn_249114_0();
u32 Fn_249fd4_0();
extern char g_008bfa40[];
u32 Fn_1d22bc_1(u32);
u32 Fn_1dc650_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
u32 Fn_5c5ad8_3(u32, u32, u32);
u32 Fn_5d34a4_3(u32, u32, u32);
extern char g_0089be98[];
u32 Fn_253200_0();
u32 Fn_5c22e8_1(u32);
u32 Fn_5c22f0_1(u32);
u32 Fn_5c241c_1(u32);
extern char g_008a8348[];
u32 Fn_258e04_1(u32);
u32 Fn_5ebc5c_2(u32, u32);
u32 Fn_25c684_1(u32);
u32 Fn_25c8a4_2(u32, u32);
u32 Fn_25f504_0();
extern char g_007dfaac[];
u32 Fn_2cd984_0();
extern char g_008a725c[];
u32 Fn_2624cc_1(u32);
u32 Fn_3935bc_2(u32, u32);
u32 Fn_3935f8_3(u32, u32, u32);
u32 Fn_5a2844_1(u32);
u32 Fn_641404_2(u32, u32);
u32 Fn_5be8f4_0();
u32 Fn_277e68_1(u32);
extern char g_0081578c[];
extern char g_008bfa28[];
u32 Fn_276ac4_3(u32, u32, u32);
extern char g_008bfac0[];
u32 Fn_2762e0_1(u32);
u32 Fn_5bbb14_3(u32, u32, u32);
u32 Fn_2760b8_3(u32, u32, u32);
u32 Fn_27de38_1(u32);
u32 Fn_27fb40_3(u32, u32, u32);
u32 Fn_27fc1c_2(u32, u32);
u32 Fn_27ffe0_2(u32, u32);
u32 Fn_5db3d8_1(u32);
u32 Fn_27e308_1(u32);
u32 Fn_279fa0_0();
u32 Fn_2efa98_2(u32, u32);
u32 Fn_26f0cc_1(u32);
u32 Fn_2725e0_2(u32, u32);
u32 Fn_6281ac_0();
extern char g_0081b994[];
u32 Fn_278abc_2(u32, u32);
u32 Fn_29e810_2(u32, u32);
extern char g_008bfa54[];
u32 Fn_06cb78_2(u32, u32);
u32 Fn_5a79c4_1(u32);
extern char g_003aaf08[];
extern char g_0081bba4[];
u32 Fn_202758_2(u32, u32);

// FUN_0023e880
u32 W_23e880(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_23e0dc_0();
    r0 = 0u;
    return r0;
}

// FUN_0023fa3c
u32 W_23fa3c(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_23f1ac_0();
    r0 = 0u;
    return r0;
}

// FUN_0023fc80
u32 W_23fc80() {
    u32 r0, r1, r2;
    r2 = 16u;
    r1 = 6u;
    r0 = 136u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_23fcb0;
    r0 = Fn_1ebf38_1(r0);
    r1 = (u32)g_0080f5e0;
    r2 = r1 + 204u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 112) = r2;
    L_23fcb0:;
    return r0;
}

// FUN_0024137c
void W_24137c(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_199cb8_1(r0);
    r0 = *(u8*)(r4 + 308);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 308) = r0;
    return;
}

// FUN_00242b2c
u32 W_242b2c() {
    u32 r0, r1, r2, r4;
    r2 = 16u;
    r1 = 6u;
    r0 = 104u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_242b64;
    r0 = Fn_1e87e4_1(r0);
    r1 = (u32)g_0080fa0c;
    r4 = r0;
    r0 = r0 + 92u;
    *(u32*)(r4) = r1;
    r0 = Fn_646550_2(r0, r1);
    r0 = r4;
    L_242b64:;
    return r0;
}

// FUN_00242ecc
void W_242ecc(u32 a0) {
    u32 r0 = a0, r1;
    r1 = ~0u;
    *(u32*)(r0 + 72) = r1;
    return;
}

// FUN_0024302c
u32 W_24302c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00243598
u32 W_243598(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_2430d8_0();
    r0 = 0u;
    return r0;
}

// FUN_00244188
u32 W_244188(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_243c6c_0();
    r0 = 0u;
    return r0;
}

// FUN_00244b0c
u32 W_244b0c(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_244644_0();
    r0 = 0u;
    return r0;
}

// FUN_00245638
u32 W_245638(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 104);
    if (r0 == 0u) goto L_245674;
    if (r2 != 0u) goto L_245674;
    if (r0 != r1) goto L_245674;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = 0u;
    *(u32*)(r4 + 104) = r0;
    L_245674:;
    r0 = 0u;
    return r0;
}

// FUN_00245cc4
void W_245cc4(u32 a0) {
    u32 r0 = a0, r1, r4, r5, r6, r7, fa, fb;
    r6 = r0;
    r4 = 0u;
    r0 = (u32)g_00814380;
    r7 = r4;
    *(u32*)(r6) = r0;
    L_245cdc:;
    r5 = r6 + (r4 << 3);
    r0 = *(u32*)(r5 + 368);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_245cfc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r5 + 368) = r7;
    L_245cfc:;
    r0 = *(u32*)(r5 + 372);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_245d18;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r5 + 372) = r7;
    L_245d18:;
    r4 = r4 + 1u;
    fa = r4; fb = 18u;
    if ((int)fa < (int)fb) goto L_245cdc;
    r0 = r6;
    r0 = Fn_1941cc_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00248030
u32 W_248030(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_247984_0();
    r0 = 0u;
    return r0;
}

// FUN_002497e0
u32 W_2497e0(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_249114_0();
    r0 = 0u;
    return r0;
}

// FUN_0024a584
u32 W_24a584(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_249fd4_0();
    r0 = 0u;
    return r0;
}

// FUN_0024ab04
u32 W_24ab04(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 40);
    if (r0 != 0u) r0 = 0u;
    return r0;
}

// FUN_0024ddbc
void W_24ddbc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 20u;
    if (fa == fb) goto L_24ddec;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 50u;
    if (fa == fb) goto L_24ddec;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 30u;
    if (fa == fb) goto L_24ddec;
    fa = r1; fb = 3u;
    if (fa == fb) r1 = 40u;
    if (fa != fb) goto L_24ddf0;
    L_24ddec:;
    *(u32*)(r0 + 76) = r1;
    L_24ddf0:;
    return;
}

// FUN_0024df98
u32 W_24df98() {
    u32 r0, r1, r2, r4;
    r4 = (u32)g_008bfa40;
    r2 = 1u;
    r1 = r2;
    r0 = *(u32*)(r4);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = Fn_1d22bc_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = Fn_1dc650_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c5a78_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_0024f3b0
u32 W_24f3b0(u32 a0) {
    u32 r0 = a0, fa, fb;
    fa = r0; fb = 12u;
    if ((int)fa < (int)fb) r0 = 1u;
    if ((int)fa >= (int)fb) r0 = 0u;
    return r0;
}

// FUN_002515c4
void W_2515c4(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5, fa, fb;
    r5 = r0;
    r4 = 0u;
    L_2515d0:;
    r0 = *(u32*)(r5 + 128);
    if ((int)r4 >= (int)r0) goto L_251600;
    r0 = *(u32*)(r5 + 648);
    r2 = r4 + (r4 << 3);
    r1 = *(u32*)(r5 + 140);
    r0 = r0 + (r2 << 4);
    r2 = r4;
    r0 = Fn_5d34a4_3(r0, r1, r2);
    r4 = r4 + 1u;
    fa = r4; fb = 6u;
    if ((int)fa < (int)fb) goto L_2515d0;
    L_251600:;
    return;
}

// FUN_00253188
u32 W_253188(u32 a0, u32 a1) {
    u32 r0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00254014
u32 W_254014(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = (u32)g_0089be98;
    r0 = r0 + (r0 << 1);
    r0 = r2 + (r0 << 4);
    r0 = r0 + (r1 << 4);
    return r0;
}

// FUN_0025481c
u32 W_25481c(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    if (r1 == 0u) r0 = Fn_253200_0();
    r0 = 0u;
    return r0;
}

// FUN_002561c0
void W_2561c0(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5;
    r4 = r0;
    r5 = (u32)g_008bfa40;
    r2 = *(u8*)(r4 + 3);
    r1 = 0u;
    r0 = *(u32*)(r5);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r5);
    r2 = *(u8*)(r4 + 2);
    r1 = 0u;
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r5);
    r2 = *(u8*)(r4 + 5);
    r1 = 0u;
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r5);
    r2 = *(u8*)(r4 + 4);
    r1 = 0u;
    { Fn_5c5ad8_3(r0, r1, r2); return; }
}

// FUN_00257160
u32 W_257160(u32 a0) {
    u32 r0 = a0, fa, fb;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_257170;
    return Fn_5c22e8_1(r0);
    L_257170:;
    return r0;
}

// FUN_002571b0
void W_2571b0(u32 a0) {
    u32 r0 = a0, r4;
    if (r0 == 0u) return;
    r4 = r0;
    r0 = Fn_5c22f0_1(r0);
    r0 = r4;
    r0 = Fn_5c241c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00258288
void W_258288(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u8*)(r0 + 72);
    if (r0 != 9u) goto L_2582a8;
    r0 = (u32)g_008a8348;
    r1 = 5u;
    r0 = Fn_5ebc5c_2(r0, r1);
    L_2582a8:;
    *(u8*)(r4 + 84) = r0;
    r0 = r4;
    r0 = Fn_258e04_1(r0);
    *(u16*)(r4 + 86) = r0;
    return;
}

// FUN_0025c75c
void W_25c75c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 >= 4u) r1 = 2u;
    *(u32*)(r0 + 20) = r1;
    return;
}

// FUN_0025c904
void W_25c904(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r4 = r0;
    r0 = *(short*)(r0 + 24);
    if (r0 == r1) goto L_25c930;
    r0 = r4;
    *(u16*)(r4 + 24) = r1;
    r0 = Fn_25c8a4_2(r0, r1);
    r0 = r4;
    { Fn_25c684_1(r0); return; }
    L_25c930:;
    return;
}

// FUN_0025dea0
u32 W_25dea0() {
    u32 r0, r4;
    r4 = 0u;
    r0 = Fn_25f504_0();
    if (r0 < 8u) r4 = 1u;
    r0 = r4;
    return r0;
}

// FUN_0025f9f4
u32 W_25f9f4(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = 1076u;
    r0 = r0 - 9984u;
    r0 = r0 - 17u;
    fa = r0; fb = r1;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_0025fd3c
u32 W_25fd3c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 16384u;
    r0 = r0 - 3616u;
    fa = r0; fb = 196u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_0025fdf4
u32 W_25fdf4(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 11008u;
    r0 = r0 - 70u;
    fa = r0; fb = 15u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_0025fe0c
u32 W_25fe0c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = 466u;
    fa = r0; fb = r1;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_0025ff38
u32 W_25ff38(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 24576u;
    r0 = r0 - 424u;
    fa = r0; fb = 5u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_0025ff50
u32 W_25ff50(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 4096u;
    r0 = r0 - 904u;
    fa = r0; fb = 170u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_00260010
u32 W_260010(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 4864u;
    r0 = r0 - 185u;
    fa = r0; fb = 12u;
    if (fa > fb) r0 = 0u;
    if (fa <= fb) r0 = 1u;
    return r0;
}

// FUN_00260028
u32 W_260028(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 256u;
    r0 = r0 - 211u;
    fa = r0; fb = 15u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_00260c58
u32 W_260c58(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 - 8000u;
    fa = r0; fb = 5u;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_00260c7c
u32 W_260c7c() {
    u32 r0, r1;
    r0 = Fn_2cd984_0();
    r1 = (u32)g_007dfaac;
    if (r0 > 52u) r0 = r0 - 52u;
    r0 = r1 + (r0 << 2);
    r0 = *(signed char*)(r0 - 4);
    return r0;
}

// FUN_00260cb0
u32 W_260cb0() {
    u32 r0, r1;
    r0 = Fn_2cd984_0();
    r1 = (u32)g_007dfaac;
    if (r0 > 52u) r0 = r0 - 52u;
    r0 = r1 + (r0 << 2);
    r0 = *(signed char*)(r0 - 3);
    return r0;
}

// FUN_00261088
u32 W_261088(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0, r1, r3 = a3, r4, fa, fb;
    r4 = r3;
    r0 = Fn_2cd984_0();
    r1 = (u32)g_007dfaac;
    if (r0 > 52u) r0 = r0 - 52u;
    fa = r4; fb = 1u;
    r0 = r1 + (r0 << 2);
    r0 = r0 - 4u;
    if (fa == fb) r0 = *(signed char*)(r0 + 3);
    if (fa != fb) r0 = *(signed char*)(r0 + 2);
    return r0;
}

// FUN_00261560
u32 W_261560(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 7u;
    if (fa >= fb) r0 = r0 + 12u;
    if (fa >= fb) goto L_26157c;
    r1 = (r1 << 3) - r1;
    r1 = r1 + (r1 << 2);
    r0 = r0 + (r1 << 2);
    r0 = r0 + 12u;
    L_26157c:;
    return r0;
}

// FUN_00262d04
u32 W_262d04() {
    u32 r0, fa, fb;
    r0 = (u32)g_008a725c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(short*)(r0 + 8);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_00262e80
u32 W_262e80() {
    u32 r0, fa, fb;
    r0 = (u32)g_008a725c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_262e9c;
    r0 = *(short*)(r0 + 8);
    return Fn_2624cc_1(r0);
    L_262e9c:;
    return r0;
}

// FUN_00264078
void W_264078() {
    u32 r0, r1, r4, fa, fb;
    r4 = (u32)g_008a725c;
    r0 = *(u32*)(r4);
    if (r0 == 0u) goto L_2640b4;
    r1 = *(u8*)(r0 + 18);
    fa = r1; fb = 1u;
    if (fa > fb) r1 = r1 - 1u;
    if (fa > fb) *(u8*)(r0 + 18) = r1;
    if (fa > fb) goto L_2640b4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_2640b4:;
    return;
}

// FUN_002640bc
u32 W_2640bc() {
    u32 r0;
    r0 = (u32)g_008a725c;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00268ed4
void W_268ed4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, r6;
    r5 = r2;
    r2 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 3);
    r6 = 0u;
    r0 = r0 + (r1 << 4);
    r4 = r0 + 224u;
    *(u8*)(r0 + 226) = r6;
    r0 = *(u32*)(r5 + 40);
    r1 = r4 + 13u;
    *(u32*)(r4 + 4) = r0;
    r0 = *(u32*)(r5 + 44);
    *(u32*)(r4 + 8) = r0;
    r0 = r5;
    r0 = Fn_3935f8_3(r0, r1, r2);
    r1 = r4 + 77u;
    r0 = r5;
    r0 = Fn_3935bc_2(r0, r1);
    r0 = *(u32*)(r5 + 48);
    *(u32*)(r4 + 152) = r0;
    r0 = *(u32*)(r5 + 52);
    *(u32*)(r4 + 156) = r0;
    r0 = *(u32*)(r5 + 56);
    *(u32*)(r4 + 160) = r0;
    r0 = *(u32*)(r5 + 60);
    *(u32*)(r4 + 164) = r0;
    *(u8*)(r4 + 12) = r6;
    return;
}

// FUN_0026a8a0
u32 W_26a8a0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    fa = r1; fb = 200u;
    if (fa < fb) r1 = r0 + (r1 << 1);
    if (fa < fb) r1 = r1 + 35328u;
    if (fa >= fb) r1 = r0 + 35328u;
    r1 = *(short*)(r1 + 102);
    fa = r1; fb = 200u;
    if (fa >= fb) r0 = r0 + 224u;
    if (fa >= fb) goto L_26a8d0;
    r2 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 3);
    r0 = r0 + (r1 << 4);
    r0 = r0 + 224u;
    L_26a8d0:;
    return r0;
}

// FUN_0026c9ac
u32 W_26c9ac(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = *(u8*)(r0 + 91);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa != fb) goto L_26c9e4;
    L_26c9bc:;
    r2 = r1 & 255u;
    if (r2 >= 4u) goto L_26c9ec;
    r2 = r2 + r0;
    r2 = *(u8*)(r2 + 69);
    if (r2 == 0u) goto L_26c9ec;
    r1 = r1 + 1u;
    if ((int)r1 < (int)4u) goto L_26c9bc;
    L_26c9e4:;
    r0 = 1u;
    return r0;
    L_26c9ec:;
    r0 = 0u;
    return r0;
}

// FUN_0026ca0c
u32 W_26ca0c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 91);
    if (r1 == 0u) goto L_26ca20;
    L_26ca18:;
    r0 = 1u;
    return r0;
    L_26ca20:;
    r1 = *(u8*)(r0 + 69);
    if (r1 == 0u) goto L_26ca48;
    r1 = *(u8*)(r0 + 92);
    if (r1 >= 4u) goto L_26ca48;
    r0 = r0 + r1;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) goto L_26ca18;
    L_26ca48:;
    r0 = 0u;
    return r0;
}

// FUN_0026d6cc
u32 W_26d6cc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 76);
    if (r1 == 0u) goto L_26d6e8;
    r0 = *(u8*)(r0 + 73);
    fa = r0; fb = 4u;
    if (fa < fb) r0 = 1u;
    if (fa < fb) goto L_26d6ec;
    L_26d6e8:;
    r0 = 0u;
    L_26d6ec:;
    return r0;
}

// FUN_002762e0
u32 W_2762e0(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 40);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0027776c
u32 W_27776c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = ~0u;
    *(u32*)(r0 + 12) = r1;
    r0 = 1u;
    return r0;
}

// FUN_00277d94
u32 W_277d94(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5;
    r5 = r0;
    r4 = 0u;
    L_277da0:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_277dc4;
    r1 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 80);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_277dc4:;
    r4 = r4 + 1u;
    if (r4 < 64u) goto L_277da0;
    r0 = 1u;
    return r0;
}

// FUN_00277f60
void W_277f60(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4;
    r0 = *(u32*)(r0 + 4);
    r4 = r1;
    r1 = r2;
    r0 = *(u32*)(r0 + 16);
    if (r1 == 0) goto L_277f88;
    r2 = *(u32*)(r0);
    r3 = *(u32*)(r2 + 44);
    r2 = 1u;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_277f88:;
    if (r0 == 0u) goto L_277fa0;
    r1 = *(u8*)(r0 + 183);
    r1 = r1 & 254u;
    r1 = r1 | r4;
    *(u8*)(r0 + 183) = r1;
    L_277fa0:;
    return;
}

// FUN_00277fc8
u32 W_277fc8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + 16);
    if (r1 == 0u) goto L_277fec;
    r2 = *(u32*)(r0);
    r3 = *(u32*)(r2 + 44);
    r2 = 1u;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_277fec:;
    r0 = r0 + 72u;
    return r0;
}

// FUN_002783d8
u32 W_2783d8(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = 1u;
    r0 = Fn_5a2844_1(r0);
    r1 = 0u;
    r0 = Fn_641404_2(r0, r1);
    r0 = *(u8*)(r0 + 4);
    if (r0 != 0u) goto L_278408;
    r0 = *(u32*)(r4 + 12);
    if (r0 != 0u) goto L_27840c;
    L_278408:;
    r0 = 0u;
    L_27840c:;
    return r0;
}

// FUN_002787e4
u32 W_2787e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + 16);
    if (r1 == 0u) goto L_278808;
    r2 = *(u32*)(r0);
    r3 = *(u32*)(r2 + 44);
    r2 = 1u;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_278808:;
    r0 = r0 + 80u;
    return r0;
}

// FUN_00278810
u32 W_278810(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + 16);
    if (r1 == 0u) goto L_278834;
    r2 = *(u32*)(r0);
    r3 = *(u32*)(r2 + 44);
    r2 = 1u;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_278834:;
    r0 = r0 + 40u;
    return r0;
}

// FUN_00278a88
void W_278a88(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4;
    r0 = *(u32*)(r0 + 4);
    r4 = r1;
    r1 = r2;
    r0 = *(u32*)(r0 + 16);
    if (r1 == 0) goto L_278ab0;
    r2 = *(u32*)(r0);
    r3 = *(u32*)(r2 + 44);
    r2 = 1u;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_278ab0:;
    if (r0 != 0u) *(u8*)(r0 + 180) = r4;
    return;
}

// FUN_00278abc
u32 W_278abc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + 16);
    if (r1 == 0u) goto L_278ae0;
    r2 = *(u32*)(r0);
    r3 = *(u32*)(r2 + 44);
    r2 = 1u;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_278ae0:;
    if (r0 == 0u) goto L_278af4;
    r0 = *(u8*)(r0 + 183);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    L_278af4:;
    return r0;
}

// FUN_00279fa0
u32 W_279fa0() {
    u32 r0;
    r0 = Fn_5be8f4_0();
    if ((int)r0 < (int)20u) r0 = 0u;
    return r0;
}

// FUN_0027a254
void W_27a254(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = *(u32*)(r0);
    r4 = *(u32*)(r0 + 804);
    r1 = *(u32*)(r1 + 336);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u8*)(r4 + 290) = r0;
    return;
}

// FUN_0027a270
u32 W_27a270(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 908);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0027a280
void W_27a280(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 908);
    r1 = r2 & ~r1;
    *(u32*)(r0 + 908) = r1;
    return;
}

// FUN_0027cfd0
u32 W_27cfd0(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 812);
    fa = r0; fb = 4u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0027e090
u32 W_27e090(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 884);
    r0 = *(u32*)(r0 + 904);
    r0 = r1 - r0;
    fa = r0; fb = 15u;
    if ((int)fa < (int)fb) r0 = 1u;
    if ((int)fa >= (int)fb) r0 = 0u;
    return r0;
}

// FUN_0027e3d8
void W_27e3d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 908);
    r1 = r1 | r2;
    *(u32*)(r0 + 908) = r1;
    return;
}

// FUN_0027eaec
u32 W_27eaec(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 164);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_0027eb00
u32 W_27eb00(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_27eb14;
    return Fn_277e68_1(r0);
    L_27eb14:;
    return r0;
}

// FUN_0027ed44
void W_27ed44(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081578c;
    r1 = *(u32*)(r0 + 4);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_27ed74;
    r0 = (u32)g_008bfa28;
    r0 = *(u32*)(r0);
    r0 = Fn_276ac4_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 4) = r0;
    L_27ed74:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00281c04
u32 W_281c04(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r0 = *(u32*)(r0 + 1168);
    r4 = 1u;
    if (r0 == 0u) goto L_281c24;
    r0 = Fn_2762e0_1(r0);
    r4 = r0 ^ 1u;
    if (r4 == 0) goto L_281c38;
    L_281c24:;
    r0 = (u32)g_008bfac0;
    r2 = 4u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5bbb14_3(r0, r1, r2);
    L_281c38:;
    r0 = r4;
    return r0;
}

// FUN_00281d78
u32 W_281d78(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5, fa, fb;
    r4 = r0;
    r0 = Fn_27de38_1(r0);
    r5 = r0;
    r0 = *(u32*)(r4 + 1168);
    r2 = r4;
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u8*)(r2 + 816);
    if (fa != fb) r0 = Fn_2760b8_3(r0, r1, r2);
    r0 = r5;
    return r0;
}

// FUN_00282388
u32 W_282388(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5;
    r4 = r0;
    r0 = Fn_27de38_1(r0);
    r5 = r0;
    r0 = *(u8*)(r4 + 817);
    if (r0 != 12u) goto L_282400;
    r0 = *(u32*)(r4 + 804);
    if (r0 == 0u) goto L_282400;
    r1 = 0u;
    r0 = Fn_27ffe0_2(r0, r1);
    if (r0 == 0u) goto L_282400;
    r0 = Fn_5db3d8_1(r0);
    if (r0 == 0u) goto L_282400;
    r0 = *(u32*)(r4 + 804);
    r1 = 1u;
    r0 = Fn_27fc1c_2(r0, r1);
    if (r0 == 0u) goto L_282400;
    r2 = 0u;
    r0 = *(u32*)(r4 + 804);
    r1 = r2;
    r0 = Fn_27fb40_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 804);
    r2 = 0u;
    r1 = 1u;
    r0 = Fn_27fb40_3(r0, r1, r2);
    L_282400:;
    r0 = r5;
    return r0;
}

// FUN_00282408
void W_282408(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa == fb) r0 = 12u;
    if (fa == fb) *(u8*)(r4 + 818) = r0;
    return;
}

// FUN_002849f4
void W_2849f4(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    fa = r0; fb = 8u;
    if (fa == fb) r0 = 12u;
    if (fa == fb) *(u8*)(r4 + 818) = r0;
    return;
}

// FUN_00286244
u32 W_286244(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 1024u;
    r0 = *(signed char*)(r0 + 168);
    return r0;
}

// FUN_00287464
u32 W_287464() {
    u32 r0, r4;
    r4 = 0u;
    r0 = Fn_279fa0_0();
    if ((int)r0 > (int)0u) r4 = 88u;
    r0 = r4;
    return r0;
}

// FUN_00291ab4
void W_291ab4(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 1200);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa != fb) r1 = 0u;
    *(u8*)(r0 + 1200) = r1;
    return;
}

// FUN_00292dd4
void W_292dd4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    if ((int)r1 <= (int)0u) goto L_292dfc;
    fa = r1; fb = 1u;
    r2 = 0u;
    r3 = 1u;
    r1 = r0 + 1024u;
    if (fa == fb) goto L_292e00;
    *(u8*)(r0 + 1176) = r2;
    *(u8*)(r0 + 1177) = r3;
    *(u16*)(r1 + 154) = r2;
    L_292dfc:;
    return;
    L_292e00:;
    *(u8*)(r0 + 1176) = r3;
    r12 = 255u;
    *(u8*)(r0 + 1177) = r2;
    *(u16*)(r1 + 154) = r12;
    return;
}

// FUN_002955a8
u32 W_2955a8(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 817);
    fa = r0; fb = 12u;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_00295700
u32 W_295700(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 1024u;
    r0 = *(signed char*)(r0 + 228);
    return r0;
}

// FUN_00296130
void W_296130(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    if (r0 != 8u) goto L_296178;
    r0 = *(u32*)(r4 + 1168);
    if (r0 == 0u) goto L_296164;
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 88);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_296164:;
    r1 = *(u32*)(r4 + 1172);
    r0 = r4;
    r0 = Fn_2efa98_2(r0, r1);
    r0 = 12u;
    *(u8*)(r4 + 818) = r0;
    L_296178:;
    return;
}

// FUN_00296f14
void W_296f14(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    if (r0 != 8u) goto L_296f54;
    r0 = *(u32*)(r4 + 1168);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    if (r0 != 0u) r0 = Fn_2725e0_2(r0, r1);
    r0 = *(u32*)(r4 + 1172);
    if (r0 == 0u) goto L_296f54;
    { Fn_26f0cc_1(r0); return; }
    L_296f54:;
    return;
}

// FUN_0029819c
u32 W_29819c() {
    u32 r0, r4;
    r4 = 0u;
    r0 = Fn_279fa0_0();
    if (r0 != 0u) r4 = 88u;
    r0 = r4;
    return r0;
}

// FUN_0029bc00
void W_29bc00(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r0 = *(u8*)(r4 + 817);
    if (r0 != 8u) goto L_29bc40;
    r0 = *(u32*)(r4 + 1172);
    r1 = 12u;
    *(u8*)(r4 + 818) = r1;
    if (r0 != 0u) r0 = Fn_2725e0_2(r0, r1);
    r0 = *(u32*)(r4 + 1176);
    if (r0 == 0u) goto L_29bc40;
    { Fn_26f0cc_1(r0); return; }
    L_29bc40:;
    return;
}

// FUN_0029be60
u32 W_29be60() {
    u32 r0;
    r0 = Fn_6281ac_0();
    r0 = r0 ^ 1u;
    return r0;
}

// FUN_0029c084
u32 W_29c084(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 104);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 1u;
    return r0;
}

// FUN_0029dae4
void W_29dae4(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081b994;
    r1 = *(u32*)(r0 + 4);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_29db14;
    r0 = (u32)g_008bfa28;
    r0 = *(u32*)(r0);
    r0 = Fn_276ac4_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 4) = r0;
    L_29db14:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0029dd4c
u32 W_29dd4c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 4);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 164);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_0029de80
void W_29de80(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 4);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_29de9c;
    r1 = 0u;
    { Fn_278abc_2(r0, r1); return; }
    L_29de9c:;
    return;
}

// FUN_0029e054
void W_29e054(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_29e064:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_29e810_2(r0, r1);
    r4 = r4 + 1u;
    if ((int)r4 < (int)16u) goto L_29e064;
    return;
}

// FUN_0029e4f8
void W_29e4f8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r1 = *(u32*)(r0 + 4);
    if (fa != fb) r1 = 12u;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_0029e52c
u32 W_29e52c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 8);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 164);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_0029e630
void W_29e630(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 8);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_29e64c;
    r1 = 0u;
    { Fn_278abc_2(r0, r1); return; }
    L_29e64c:;
    return;
}

// FUN_002a0bcc
void W_2a0bcc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r4, fa, fb;
    r0 = (u32)g_008bfa54;
    r4 = r1;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_06cb78_2(r0, r1);
    if (r0 == 0u) goto L_2a0c0c;
    r0 = Fn_5a79c4_1(r0);
    if (r0 == 0u) goto L_2a0c0c;
    r1 = 376u;
    r1 = *(signed char*)(r1 + r0);
    fa = r1; fb = r4;
    if (fa != fb) r1 = r4;
    if (fa != fb) *(u8*)(r0 + 376) = r1;
    L_2a0c0c:;
    return;
}

// FUN_002a13f8
u32 W_2a13f8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 132);
    return r0;
}

// FUN_002a2c50
u32 W_2a2c50(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_2a2c84;
    fa = r1; fb = 32u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_2a2c84;
    r1 = r0 + (r1 << 6);
    r0 = *(u32*)(r1);
    if (r0 == 0u) goto L_2a2c84;
    r2 = r0 - 1u;
    r0 = 1u;
    *(u32*)(r1) = r2;
    L_2a2c84:;
    return r0;
}

// FUN_002a371c
void W_2a371c(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0081bba4;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 20);
    if (r0 == 0u) goto L_2a3748;
    r1 = (u32)g_003aaf08;
    r0 = Fn_202758_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 20) = r0;
    L_2a3748:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}
