// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_07c208_1(u32);
u32 Fn_4b8668_4(u32, u32, u32, u32);
extern char g_00890e68[];
u32 Fn_25ec7c_1(u32);
u32 Fn_25f030_1(u32);
extern char g_00807ffc[];
u32 Fn_5d5e4c_0();
extern char g_00811490[];
u32 Fn_5992a0_2(u32, u32);
u32 WeakCall1(u32);
extern char g_0031d624[];
extern char g_00811cc8[];
u32 Fn_000068_4(u32, u32, u32, u32);
extern char g_00324334[];
extern char g_0081231c[];
u32 Fn_5c4b44_1(u32);
u32 Fn_5c7b3c_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_003530e0[];
extern char g_0081503c[];
u32 Fn_2209b4_1(u32);
u32 Fn_278094_3(u32, u32, u32);
u32 Fn_277f60_3(u32, u32, u32);
extern char g_008bfa54[];
u32 Fn_2aa77c_2(u32, u32);
u32 WeakCall0();
u32 Fn_3cdcb0_0();
u32 Fn_5b13a8_1(u32);
extern char g_008bfab0[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_459638_1(u32);
extern char g_008bfab4[];
u32 Fn_474258_1(u32);
extern char g_006e82a4[];
extern char g_00826aa0[];
u32 Fn_45884c_1(u32);
u32 Fn_460e54_2(u32, u32);
u32 Fn_5df1ec_1(u32);
u32 Fn_5df36c_1(u32);
extern char g_00598e08[];
extern char g_0082734c[];
u32 Fn_49367c_1(u32);
u32 Fn_4bc07c_1(u32);
extern char g_008a8850[];
u32 Fn_4f687c_1(u32);
u32 Fn_4f6958_0();
extern char g_0082e60c[];
u32 Fn_0151c8_1(u32);
u32 Fn_625510_1(u32);
extern char g_00807724[];
u32 Fn_2024b0_1(u32);
u32 Fn_2d16b4_3(u32, u32, u32);
extern char g_0081ce74[];
extern char g_0081cecc[];
u32 Fn_2024b0_3(u32, u32, u32);
u32 Fn_2c5a90_2(u32, u32);
u32 Fn_2c5c08_3(u32, u32, u32);
extern char g_0082fc80[];
u32 WeakCall2(u32, u32);
u32 Fn_49fa00_1(u32);
u32 Fn_1667c4_3(u32, u32, u32);
u32 Fn_47c9fc_1(u32);
u32 Fn_2c2e9c_3(u32, u32, u32);
u32 Fn_2c5204_3(u32, u32, u32);
extern char g_008918fc[];
u32 Fn_5d63c8_3f3(u32, u32, u32, float, float, float);
u32 Fn_2c5150_3(u32, u32, u32);
u32 Fn_4e76c8_2(u32, u32);
u32 Fn_443ba8_1(u32);
u32 Fn_599d3c_3(u32, u32, u32);
u32 Fn_59a824_1(u32);

// FUN_0007c158
u32 W_07c158(u32 a0) throw() {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 560);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_7c19c;
    r0 = *(u32*)(r4 + 552);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_7c198;
    r0 = r4;
    r0 = Fn_07c208_1(r0);
    r0 = 1u;
    *(u8*)(r4 + 560) = r0;
    L_7c198:;
    r0 = 0u;
    L_7c19c:;
    return r0;
}

// FUN_000fc304
void W_0fc304(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r3, fa, fb;
    r3 = *(u32*)(r0 + 72);
    if (r3 == 0u) goto L_fc338;
    fa = a2; fb = 2u;
    if (fa < fb) r0 = r3 + a2;
    if (fa < fb) *(u8*)(r0 + 461) = a1;
    r0 = *(u32*)(r3 + 368);
    if (r0 == 0u) goto L_fc338;
    r3 = *(u8*)(r3 + 463);
    if (r3 == 0u) r0 = Fn_4b8668_4(r0, a1, a2, r3);
    L_fc338:;
    return;
}

// FUN_00100a9c
u32 W_100a9c(u32 a0) throw() {
    u32 r0 = a0, r1, r2, r4, r5, fa, fb;
    r4 = r0;
    r0 = Fn_25ec7c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_100b04;
    r5 = 0u;
    r0 = r4;
    r0 = Fn_25f030_1(r0);
    fa = r0; fb = 8u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_100b04;
    r1 = (u32)g_00890e68;
    r1 = *(u32*)(r1 + (r0 << 2));
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa == fb) goto L_100b00;
    L_100adc:;
    r2 = r1 + (r0 << 1);
    r2 = *(short*)(r2);
    fa = r2; fb = r4;
    if (fa != fb) goto L_100af4;
    r5 = (u16)r0;
    goto L_100b00;
    L_100af4:;
    r0 = r0 + 1u;
    fa = r0; fb = 10u;
    if ((int)fa < (int)fb) goto L_100adc;
    L_100b00:;
    r0 = r5;
    L_100b04:;
    return r0;
}

// FUN_00168618
void W_168618(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 148u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u32)(short)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_0016c0b4
void W_16c0b4(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r0_1, r2_1, r3_1, r1_1, r2_2, r0_2;
    r0_1 = r0 + 88u;
    r2_1 = *(u32*)(r0_1); r3_1 = *(u32*)(r0_1 + 4);
    r1_1 = r1 + r3_1;
    r2_2 = *(u32*)(r2_1 + 8);
    r0_2 = ((u32(*)(u32, u32))r2_2)(r0_1, r1_1);
    return;
}

// FUN_0018fe80
float W_18fe80() throw() {
    u32 r0_1, r2_1, r1_1;
    float f0_1;
    r0_1 = Fn_5d5e4c_0();
    r2_1 = (u32)g_00807ffc;
    f0_1 = 0.0f;
    r1_1 = 0u;
    *(u32*)(r0_1) = r2_1;
    *(float*)(r0_1 + 72) = f0_1;
    *(float*)(r0_1 + 76) = f0_1;
    *(u16*)(r0_1 + 80) = r1_1;
    *(u8*)(r0_1 + 82) = r1_1;
    *(u16*)(r0_1 + 84) = r1_1;
    *(u8*)(r0_1 + 86) = r1_1;
    return f0_1;
}

// FUN_002196fc
void W_2196fc(u32 a0) throw() {
    u32 r0_3, r0_5;
    *(u32*)(a0) = ((u32)g_00811490);
    r0_3 = Fn_5992a0_2(351076352u, 0u);
    r0_5 = WeakCall1(a0);
    return;
}

// FUN_0021de04
void W_21de04(u32 a0) throw() {
    u32 r0_3, r0_5;
    *(u32*)(a0) = ((u32)g_00811cc8);
    r0_3 = Fn_000068_4((a0 + 40u), ((u32)g_0031d624), 72u, 3u);
    r0_5 = WeakCall1(a0);
    return;
}

// FUN_00224ccc
void W_224ccc(u32 a0) throw() {
    u32 r0_3, r0_5;
    *(u32*)(a0) = ((u32)g_0081231c);
    r0_3 = Fn_000068_4((a0 + 40u), ((u32)g_00324334), 136u, 3u);
    r0_5 = WeakCall1(a0);
    return;
}

// FUN_002345e0
void W_2345e0(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r4, r5;
    r5 = r0;
    r4 = r1;
    r0 = Fn_5c7b3c_2(r0, r1);
    r0 = r5 + 160u;
    *(u8*)(r5 + 238) = r4;
    if (r4 == 0u) r0 = Fn_5c4b44_1(r0);
    return;
}

// FUN_0023aad0
u32 W_23aad0(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = r0;
    r0 = r1;
    r1 = *(u32*)(r1 + 36);
    *(u32*)(r2 + 72) = r0;
    if (r1 > 6u) goto L_23ab04;
    r3 = 0u;
    r1 = r1 + r2;
    r2 = r3;
    *(u8*)(r1 + 56) = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_23ab04:;
    r0 = 0u;
    return r0;
}

// FUN_00254f14
void W_254f14(u32 a0) throw() {
    u32 r0_3, r0_5, r0_7;
    *(u32*)(a0) = ((u32)g_0081503c);
    r0_3 = Fn_000068_4((a0 + 344u), ((u32)g_003530e0), 16u, 9u);
    r0_5 = Fn_2209b4_1((a0 + 40u));
    r0_7 = WeakCall1((r0_5 - 40u));
    return;
}

// FUN_0027bfdc
u32 W_27bfdc(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_27bfec:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 832);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_27c008;
    r2 = 0u;
    r1 = r6;
    r0 = Fn_278094_3(r0, r1, r2);
    L_27c008:;
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if ((int)fa < (int)fb) goto L_27bfec;
    return r0;
}

// FUN_0029bd2c
u32 W_29bd2c(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_29bd3c:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 340);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_29bd58;
    r2 = 0u;
    r1 = r6;
    r0 = Fn_277f60_3(r0, r1, r2);
    L_29bd58:;
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if ((int)fa < (int)fb) goto L_29bd3c;
    return r0;
}

// FUN_0029bda8
u32 W_29bda8(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_29bdb8:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 340);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_29bdd4;
    r2 = 0u;
    r1 = r6;
    r0 = Fn_278094_3(r0, r1, r2);
    L_29bdd4:;
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if ((int)fa < (int)fb) goto L_29bdb8;
    return r0;
}

// FUN_002d18e8
void W_2d18e8(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = r0 + 12u; r2 = *(u32*)(r0);
    r3 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + r3;
    r1 = (u32)(short)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_002e1164
void W_2e1164(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r0_1, r2_1, r3_1, r1_1, r2_2, r0_2;
    r0_1 = r0 + 28u;
    r2_1 = *(u32*)(r0_1); r3_1 = *(u32*)(r0_1 + 4);
    r1_1 = r1 + r3_1;
    r2_2 = *(u32*)(r2_1 + 8);
    r0_2 = ((u32(*)(u32, u32))r2_2)(r0_1, r1_1);
    return;
}

// FUN_002e1190
void W_2e1190(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 48u; r2 = *(u32*)(r0);
    r1 = *(u32*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_003779a0
void W_3779a0() throw() {
    u32 r0_1, r0_2, r0_3, r1_1, r1_2, r0_4;
    r0_1 = (u32)g_008bfa54;
    r0_2 = *(u32*)(r0_1);
    r0_3 = *(u32*)(r0_2 + 92);
    if (r0_3 == 0u) return;
    r1_1 = *(u32*)(r0_3);
    r1_2 = *(u32*)(r1_1 + 84);
    r0_4 = ((u32(*)(u32))r1_2)(r0_3);
    return;
}

// FUN_003996a8
void W_3996a8(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 36u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u16)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_00399704
void W_399704(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 48u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u16)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_00399730
void W_399730(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 12u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u16)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_003998ac
void W_3998ac(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 96u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u16)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_003998d8
void W_3998d8(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 84u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u16)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_0039b070
u32 W_39b070(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 40);
    r6 = r1;
    if (r0 == 0u) goto L_39b0f0;
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r5 = *(u32*)(r0 + 144);
    r0 = *(u32*)(r5);
    r1 = *(u32*)(r0 + 120);
    r0 = r5;
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_39b0f4;
    r0 = *(u8*)(r5 + 197);
    if (r0 == 0u) goto L_39b0d0;
    r1 = *(u32*)(r4 + 52);
    if (r1 == 0u) goto L_39b0f0;
    r0 = r6;
    r0 = Fn_2aa77c_2(r0, r1);
    L_39b0d0:;
    r0 = *(u32*)(r4 + 52);
    if (r0 == 0u) goto L_39b0f0;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_39b0f0:;
    r0 = 1u;
    L_39b0f4:;
    return r0;
}

// FUN_003a3e80
void W_3a3e80() throw() {
    u32 r0_1;
    r0_1 = WeakCall0();
    return;
}

// FUN_003ccca8
u32 W_3ccca8(u32 a0) throw() {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 116);
    if (r0 == 0u) goto L_3cccc8;
    r0 = Fn_3cdcb0_0();
    if (r0 == 0u) goto L_3cccd0;
    L_3cccc8:;
    r0 = 7u;
    *(u8*)(r4 + 94) = r0;
    L_3cccd0:;
    r0 = 1u;
    return r0;
}

// FUN_003dbe6c
void W_3dbe6c(u32 a0) throw() {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = Fn_5b13a8_1(r0);
    return;
}

// FUN_004594e0
u32 W_4594e0() throw() {
    u32 r0, r1, r2;
    r2 = 16u;
    r1 = 0u;
    r0 = 304u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_45951c;
    r0 = Fn_459638_1(r0);
    if (r0 == 0u) goto L_45951c;
    r0 = (u32)g_008bfab0;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = 1u;
    return r0;
    L_45951c:;
    r0 = 0u;
    return r0;
}

// FUN_00473b40
u32 W_473b40() throw() {
    u32 r0, r1, r2;
    r2 = 16u;
    r1 = 0u;
    r0 = 240u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_473b7c;
    r0 = Fn_474258_1(r0);
    if (r0 == 0u) goto L_473b7c;
    r0 = (u32)g_008bfab4;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = 1u;
    return r0;
    L_473b7c:;
    r0 = 0u;
    return r0;
}

// FUN_00477784
void W_477784(u32 a0) throw() {
    u32 r0_3, r0_5;
    *(u32*)(a0) = ((u32)g_00826aa0);
    r0_3 = Fn_000068_4((a0 + 36u), ((u32)g_006e82a4), 8u, 2u);
    r0_5 = WeakCall1(a0);
    return;
}

// FUN_00478f54
u32 W_478f54(u32 a0) throw() {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 144);
    if (r0 != 0u) goto L_478fa4;
    r0 = 12u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 12u;
    if (fa == fb) r0 = Fn_5df1ec_1(r0);
    r0 = 14u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 14u;
    if (fa == fb) r0 = Fn_5df1ec_1(r0);
    r0 = 13u;
    r0 = Fn_5df36c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 13u;
    if (fa == fb) r0 = Fn_5df1ec_1(r0);
    L_478fa4:;
    r1 = *(u32*)(r4 + 144);
    r0 = *(u32*)(r4 + 96);
    r1 = r1 + 1u;
    *(u32*)(r4 + 144) = r1;
    if (r0 != 0u) r0 = Fn_460e54_2(r0, r1);
    r0 = *(u32*)(r4 + 88);
    if (r0 != 0u) r0 = Fn_45884c_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_0047f67c
u32 W_47f67c(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4;
    r4 = r0;
    r2 = 0u;
    *(u32*)(r4 + 40) = r1;
    r0 = r1;
    *(u32*)(r4 + 60) = r2;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 8);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 44) = r0;
    r0 = *(u32*)(r4 + 40);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 48) = r0;
    return r0;
}

// FUN_00493868
void W_493868(u32 a0) throw() {
    u32 r0_3, r0_5, r0_7;
    *(u32*)(a0) = ((u32)g_0082734c);
    r0_3 = Fn_49367c_1(a0);
    r0_5 = Fn_000068_4((a0 + 36u), ((u32)g_00598e08), 16u, 2u);
    r0_7 = WeakCall1(a0);
    return;
}

// FUN_004b8afc
void W_4b8afc(u32 a0) throw() {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 68);
    if (r0 != 0u) r0 = Fn_4bc07c_1(r0);
    return;
}

// FUN_005c1480
void W_5c1480() throw() {
    u32 r0_1, r0_2, r0_3;
    r0_1 = Fn_4f6958_0();
    r0_2 = (u32)g_008a8850;
    r0_3 = Fn_4f687c_1(r0_2);
    return;
}

// FUN_005c92d0
float W_5c92d0() throw() {
    u32 r0_1, r2_1, r1_1;
    float f0_1;
    r0_1 = Fn_5d5e4c_0();
    r2_1 = (u32)g_0082e60c;
    f0_1 = 0.0f;
    r1_1 = 0u;
    *(u32*)(r0_1) = r2_1;
    *(float*)(r0_1 + 72) = f0_1;
    *(float*)(r0_1 + 76) = f0_1;
    *(u16*)(r0_1 + 80) = r1_1;
    *(u8*)(r0_1 + 82) = r1_1;
    *(u16*)(r0_1 + 84) = r1_1;
    *(u32*)(r0_1 + 88) = r1_1;
    *(u32*)(r0_1 + 92) = r1_1;
    *(u32*)(r0_1 + 96) = r1_1;
    *(u32*)(r0_1 + 100) = r1_1;
    *(u8*)(r0_1 + 104) = r1_1;
    return f0_1;
}

// FUN_00625910
u32 W_625910(u32 a0) throw() {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 156);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_625960;
    r0 = *(u32*)(r4 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_625940;
    r0 = Fn_0151c8_1(r0);
    r0 = r0 ^ 1u;
    if (r0 == 0) goto L_625960;
    L_625940:;
    r0 = *(u32*)(r4 + 24);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_62595c;
    r0 = Fn_0151c8_1(r0);
    r0 = r0 ^ 1u;
    if (r0 == 0) goto L_625960;
    L_62595c:;
    r0 = 1u;
    L_625960:;
    return r0;
}

// FUN_00630cf4
u32 W_630cf4(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 744u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = Fn_625510_1(r0);
    return r0;
}

// FUN_0064386c
void W_64386c(u32 a0) throw() {
    u32 r1_1, r2_1, r0_1, r0_2, r0_3;
    r1_1 = (u32)g_00807724;
    r2_1 = r1_1 + 64u;
    *(u32*)(a0 - 12) = r1_1;
    *(u32*)(a0) = r2_1;
    r0_1 = Fn_2d16b4_3(a0, r1_1, r2_1);
    r0_2 = r0_1 - 12u;
    r0_3 = Fn_2024b0_1(r0_2);
    return;
}

// FUN_006438c8
void W_6438c8(u32 a0) throw() {
    u32 r1_1, r2_1, r0_1, r0_2, r0_3;
    r1_1 = (u32)g_0081ce74;
    r2_1 = r1_1 + 56u;
    *(u32*)(a0 - 12) = r1_1;
    *(u32*)(a0) = r2_1;
    r0_1 = Fn_2d16b4_3(a0, r1_1, r2_1);
    r0_2 = r0_1 - 12u;
    r0_3 = Fn_2024b0_1(r0_2);
    return;
}

// FUN_00643924
void W_643924(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r1 = (u32)g_0081cecc;
    r2 = r1 + 36u;
    *(u32*)(r0) = r2; r0 = r0 + -12u;
    *(u32*)(r0) = r1;
    r0 = Fn_2024b0_3(r0, r1, r2);
    return;
}

// FUN_00643bac
void W_643bac(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1, r4;
    r4 = a2;
    r0 = r0 - 132u;
    if (r4 == 0) goto L_643bd4;
    r0 = *(u32*)(r0 + 148);
    r1 = *(u32*)(r4 + 12);
    r0 = r0 + 12u;
    r0 = Fn_2c5c08_3(r0, r1, a2);
    r1 = *(u32*)(r4 + 16);
    r0 = Fn_2c5a90_2(r0, r1);
    L_643bd4:;
    return;
}

// FUN_00643c94
void W_643c94(u32 a0) throw() {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082fc80;
    *(u32*)(r0 - 28) = r1;
    r0 = r0 - 20u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    r0 = Fn_2024b0_1(r0);
    return;
}

// FUN_0064411c
void W_64411c(u32 a0) throw() {
    u32 r0_1, r0_2, r0_3;
    r0_1 = a0 - 4u;
    r0_2 = Fn_49fa00_1(r0_1);
    r0_3 = Fn_2024b0_1(r0_2);
    return;
}

// FUN_00644480
void W_644480(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1, r2 = a2;
    r0 = *(u32*)(r0 + 24);
    r1 = r2;
    if (r0 == 0u) goto L_6444a0;
    r2 = *(u32*)(r1 + 76);
    r1 = r1 + 12u;
    r0 = Fn_1667c4_3(r0, r1, r2);
    L_6444a0:;
    return;
}

// FUN_00645464
void W_645464(u32 a0) throw() {
    u32 r0_1, r0_2;
    r0_1 = a0 - 72u;
    r0_2 = Fn_47c9fc_1(r0_1);
    return;
}

// FUN_00645fac
void W_645fac(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1, r2 = a2, r4, r5, fa, fb;
    r4 = r2;
    r5 = r0 - 76u;
    if (r4 != 0) r0 = *(u32*)(r4 + 16);
    fa = r4; fb = 0;
    if (r4 != 0) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_645fe8;
    r0 = *(u32*)(r5 + 148);
    r1 = *(u32*)(r4 + 12);
    r0 = r0 + 12u;
    r1 = r1 + 1u;
    r0 = Fn_2c5204_3(r0, r1, r2);
    r1 = *(u32*)(r0 + 4);
    r2 = *(u32*)(r4 + 16);
    r0 = r5;
    r0 = Fn_2c2e9c_3(r0, r1, r2);
    L_645fe8:;
    return;
}

// FUN_00646038
void W_646038(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1, r2 = a2;
    float f0, f1, f2;
    r0 = r0 - 804u;
    if (r2 == 0u) goto L_646080;
    r1 = *(u32*)(r2 + 8);
    if (r1 >= 3u) goto L_646080;
    r2 = (u32)g_008918fc;
    r1 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 2);
    f0 = *(float*)(r1);
    *(float*)(r0 + 832) = f0;
    f1 = *(float*)(r1 + 4);
    *(float*)(r0 + 836) = f1;
    f2 = *(float*)(r1 + 8);
    *(float*)(r0 + 840) = f2;
    r0 = *(u32*)(r0 + 828);
    r0 = Fn_5d63c8_3f3(r0, r1, r2, f0, f1, f2);
    L_646080:;
    return;
}

// FUN_00646294
void W_646294(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1, r2 = a2, r4, r5, fa, fb;
    r4 = r2;
    r5 = r0 - 84u;
    if (r4 != 0) r0 = *(u32*)(r4 + 16);
    fa = r4; fb = 0;
    if (r4 != 0) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_6462cc;
    r0 = *(u32*)(r5 + 148);
    r1 = *(u32*)(r4 + 12);
    r0 = r0 + 12u;
    r0 = Fn_2c5150_3(r0, r1, r2);
    r1 = *(u32*)(r0 + 4);
    r2 = *(u32*)(r4 + 16);
    r0 = r5;
    r0 = Fn_2c2e9c_3(r0, r1, r2);
    L_6462cc:;
    return;
}

// FUN_006463a0
void W_6463a0(u32 a0) throw() {
    u32 r1_1, r1_2, r0_1, r0_2, r0_3;
    r1_1 = *(u32*)(a0);
    r1_2 = *(u32*)(r1_1 - 12);
    r0_1 = a0 + r1_2;
    r0_2 = Fn_4e76c8_2(r0_1, r1_2);
    r0_3 = Fn_2024b0_1(r0_2);
    return;
}

// FUN_006799bc
u32 W_6799bc(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_6799ec;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_6799ec:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_679a10;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_679a10:;
    return r0;
}

// FUN_0067ae18
u32 W_67ae18(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_67ae48;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_67ae48:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_67ae6c;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_67ae6c:;
    return r0;
}

// FUN_0067c5d0
u32 W_67c5d0(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_67c600;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_67c600:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_67c624;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_67c624:;
    return r0;
}

// FUN_0067dbc8
u32 W_67dbc8(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_67dbf8;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_67dbf8:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_67dc1c;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_67dc1c:;
    return r0;
}

// FUN_0067f024
u32 W_67f024(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_67f054;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_67f054:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_67f078;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_67f078:;
    return r0;
}

// FUN_00680480
u32 W_680480(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_6804b0;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_6804b0:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_6804d4;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_6804d4:;
    return r0;
}

// FUN_0068191c
u32 W_68191c(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 197);
    r6 = 0u;
    *(u32*)(r4 + 200) = a1;
    fa = r0; fb = 0u;
    r5 = a2;
    *(u32*)(r4 + 72) = r6;
    if (fa == fb) goto L_68194c;
    r0 = Fn_599d3c_3(r0, a1, a2);
    r0 = Fn_59a824_1(r0);
    *(u8*)(r4 + 197) = r6;
    L_68194c:;
    fa = r5; fb = 0u;
    r6 = 12u;
    if (fa == fb) *(u8*)(r4 + 69) = r6;
    if (fa == fb) goto L_681970;
    r0 = *(u32*)(r4 + 192);
    r0 = Fn_443ba8_1(r0);
    r0 = 11u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r6;
    L_681970:;
    return r0;
}
