// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008ab420[];
u32 Fn_008cdc_2(u32, u32);
u32 Fn_0135a4_0();
extern char g_008aab48[];
u32 Fn_01cf88_2(u32, u32);
extern char g_008ab81c[];
u32 Fn_028208_3(u32, u32, u32);
extern char g_008a8348[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_048d8c_2(u32, u32);
u32 Fn_50c294_1(u32);
u32 Fn_5bf38c_2(u32, u32);
u32 Fn_5c1378_1(u32);
u32 Fn_5c1480_1(u32);
u32 Fn_5d6dac_0();
u32 Fn_5ebdb8_1(u32);
u32 Fn_5a4f7c_2(u32, u32);
u32 Fn_5ad118_2(u32, u32);
u32 Fn_5d649c_1f1(u32, float);
u32 Fn_5d65a4_1(u32);
u32 Fn_0fe7c4_1(u32);
extern char g_008bfad4[];
extern char g_008bfae0[];
u32 Fn_5d9848_2(u32, u32);
u32 Fn_5f3e2c_2(u32, u32);
extern char g_008918fc[];
u32 Fn_5d63c8_3f3(u32, u32, u32, float, float, float);
u32 Fn_4b8a94_4f1(u32, u32, u32, u32, float);
u32 Fn_4b8b10_4f1(u32, u32, u32, u32, float);
extern char g_008bfa78[];
extern char g_008bfa40[];
u32 Fn_236078_2(u32, u32);
u32 Fn_5c5cb0_3(u32, u32, u32);
u32 Fn_5c2a00_3f2(u32, u32, u32, float, float);
u32 Fn_165db4_1f9(u32, float, float, float, float, float, float, float, float, float);
u32 Fn_1c7e68_1(u32);
u32 Fn_5c4b44_1(u32);
u32 Fn_1c8140_2(u32, u32);
u32 Fn_59cf74_1f2(u32, float, float);
extern char g_007c6f00[];
u32 Fn_3850c0_4(u32, u32, u32, u32);
extern char g_007c6f12[];
u32 Fn_3850ec_4(u32, u32, u32, u32);
u32 Fn_5c4b44_2f1(u32, u32, float);
u32 Fn_1a43ac_2(u32, u32);
u32 Fn_1a5fd4_1f2(u32, float, float);
u32 Fn_1c7d40_1(u32);
u32 Fn_1e8700_1f2(u32, float, float);
u32 Fn_214f64_4f1(u32, u32, u32, u32, float);
u32 Fn_59cb30_2f3(u32, u32, float, float, float);
u32 Fn_27c030_2(u32, u32);
u32 Fn_27c1ec_2(u32, u32);
u32 Fn_27c1ec_2f1(u32, u32, float);
extern char g_008bfa88[];
u32 Fn_2af9d8_2(u32, u32);
u32 Fn_2b7578_2f2(u32, u32, float, float);
u32 Fn_2b779c_2(u32, u32);
u32 Fn_3fa630_2f3(u32, u32, float, float, float);
u32 Fn_0151c8_1(u32);
u32 Fn_402d58_3(u32, u32, u32);
u32 Fn_404d38_1f1(u32, float);
extern char g_008bfae4[];
u32 Fn_5fb988_2(u32, u32);
u32 Fn_433d3c_2f2(u32, u32, float, float);

// FUN_00048e9c
void W_048e9c() {
    u32 r0, r1, r2;
    r0 = Fn_5d6dac_0();
    r1 = 0u;
    r0 = 166u;
    r0 = Fn_048d8c_2(r0, r1);
    r1 = 0u;
    r0 = 157u;
    r0 = Fn_048d8c_2(r0, r1);
    r2 = 16u;
    r1 = 6u;
    r0 = 188u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 != 0u) r0 = Fn_5c1378_1(r0);
    r1 = r0;
    r0 = 0u;
    r0 = Fn_5bf38c_2(r0, r1);
    r1 = 0u;
    r0 = 174u;
    r0 = Fn_048d8c_2(r0, r1);
    r1 = 0u;
    r0 = 172u;
    r0 = Fn_048d8c_2(r0, r1);
    r0 = (u32)g_008a8348;
    r0 = Fn_5ebdb8_1(r0);
    r1 = 0u;
    r0 = r1;
    r0 = Fn_048d8c_2(r0, r1);
    r0 = Fn_50c294_1(r0);
    { Fn_5c1480_1(r0); return; }
}

// FUN_000dd730
u32 W_0dd730(u32 a0) {
    u32 r0 = a0, r1, r4;
    float f0;
    r4 = r0;
    r0 = *(u32*)(r0 + 828);
    if (r0 == 0u) goto L_dd78c;
    r0 = Fn_5d65a4_1(r0);
    if (r0 == 0u) goto L_dd78c;
    r0 = *(u32*)(r4 + 828);
    r1 = 0u;
    r0 = *(u32*)(r0 + 12);
    r0 = Fn_5a4f7c_2(r0, r1);
    r0 = *(u32*)(r4 + 828);
    r1 = 0u;
    r0 = *(u32*)(r0 + 12);
    r0 = Fn_5ad118_2(r0, r1);
    r0 = *(u32*)(r4 + 828);
    f0 = -0.5f;
    r0 = *(u32*)(r0 + 12);
    *(float*)(r0 + 36) = f0;
    r0 = *(u32*)(r4 + 828);
    return Fn_5d649c_1f1(r0, f0);
    L_dd78c:;
    return r0;
}

// FUN_000ddd58
void W_0ddd58(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r0_2, r0_3, r1_1, r0_4, r0_5, r0_6, r0_7;
    float f0_1;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 252);
    r0_2 = *(u32*)(r0_1 + 108);
    r0_3 = Fn_0fe7c4_1(r0_2);
    r1_1 = 0u;
    r0_4 = Fn_5ad118_2(r0_3, r1_1);
    r0_5 = *(u32*)(r4_1 + 252);
    r0_6 = *(u32*)(r0_5 + 108);
    r0_7 = Fn_0fe7c4_1(r0_6);
    f0_1 = 0.100000001f;
    *(float*)(r0_7 + 36) = f0_1;
    return;
}

// FUN_000ddd90
void W_0ddd90(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r4;
    r0 = (u32)g_008bfae0;
    r4 = r1;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = Fn_5f3e2c_2(r0, r1);
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_dddc4;
    r1 = r4;
    { Fn_5d9848_2(r0, r1); return; }
    L_dddc4:;
    return;
}

// FUN_000de3e0
void W_0de3e0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2;
    float f0, f1, f2;
    if (r2 == 0u) goto L_de420;
    r1 = *(u32*)(r2 + 8);
    if (r1 >= 3u) goto L_de420;
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
    { Fn_5d63c8_3f3(r0, r1, r2, f0, f1, f2); return; }
    L_de420:;
    return;
}

// FUN_000fcfe8
void W_0fcfe8(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4;
    float f0;
    r4 = *(u32*)(r0 + 72);
    if (r4 == 0u) goto L_fd024;
    *(u32*)(r4 + 396) = r1;
    if ((int)r3 > (int)0u) goto L_fd028;
    r0 = *(u32*)(r4 + 368);
    if (r0 == 0u) goto L_fd01c;
    f0 = u2f(r2);
    f0 = (float)(int)f2u(f0);
    r0 = Fn_4b8a94_4f1(r0, r1, r2, r3, f0);
    L_fd01c:;
    r0 = 0u;
    *(u8*)(r4 + 468) = r0;
    L_fd024:;
    return;
    L_fd028:;
    f0 = u2f(r2);
    r0 = 1u;
    *(u32*)(r4 + 400) = r3;
    *(u8*)(r4 + 468) = r0;
    f0 = (float)(int)f2u(f0);
    *(float*)(r4 + 404) = f0;
    return;
}

// FUN_000fd054
void W_0fd054(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4;
    float f0;
    r4 = *(u32*)(r0 + 72);
    if (r4 == 0u) goto L_fd090;
    *(u32*)(r4 + 384) = r1;
    if ((int)r3 > (int)0u) goto L_fd094;
    r0 = *(u32*)(r4 + 368);
    if (r0 == 0u) goto L_fd088;
    f0 = u2f(r2);
    f0 = (float)(int)f2u(f0);
    r0 = Fn_4b8b10_4f1(r0, r1, r2, r3, f0);
    L_fd088:;
    r0 = 0u;
    *(u8*)(r4 + 467) = r0;
    L_fd090:;
    return;
    L_fd094:;
    f0 = u2f(r2);
    r0 = 1u;
    *(u32*)(r4 + 388) = r3;
    *(u8*)(r4 + 467) = r0;
    f0 = (float)(int)f2u(f0);
    *(float*)(r4 + 392) = f0;
    return;
}

// FUN_0012d520
void W_12d520(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, fa, fb;
    float f0 = p0;
    r1 = (u32)g_008bfa78;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_12d574;
    f0 = u2f((u32)(int)f0);
    r2 = *(u32*)(r1 + 96);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = r2 + (r0 << 2);
    if (fa != fb) *(float*)(r2 + 496) = f0;
    r2 = *(u32*)(r1 + 100);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = r2 + (r0 << 2);
    if (fa != fb) *(float*)(r2 + 496) = f0;
    r2 = *(u32*)(r1 + 104);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = r2 + (r0 << 2);
    if (fa != fb) *(float*)(r2 + 496) = f0;
    r1 = *(u32*)(r1 + 108);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = r1 + (r0 << 2);
    if (fa != fb) *(float*)(r0 + 496) = f0;
    L_12d574:;
    return;
}

// FUN_0012dd68
void W_12dd68(float p0) {
    u32 r0, r1;
    float f0 = p0;
    r0 = (u32)g_008bfa78;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_12dd90;
    r1 = *(u32*)(r0 + 96);
    if (r1 != 0u) *(float*)(r1 + 628) = f0;
    r0 = *(u32*)(r0 + 100);
    if (r0 != 0u) *(float*)(r0 + 628) = f0;
    L_12dd90:;
    return;
}

// FUN_0012dff0
void W_12dff0(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, fa, fb;
    float f0 = p0;
    r1 = (u32)g_008bfa78;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_12e040;
    r2 = *(u32*)(r1 + 96);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 552) = r0;
    if (fa != fb) *(float*)(r2 + 556) = f0;
    r2 = *(u32*)(r1 + 100);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 552) = r0;
    if (fa != fb) *(float*)(r2 + 556) = f0;
    r2 = *(u32*)(r1 + 104);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 552) = r0;
    if (fa != fb) *(float*)(r2 + 556) = f0;
    r1 = *(u32*)(r1 + 108);
    fa = r1; fb = 0u;
    if (fa != fb) *(u32*)(r1 + 552) = r0;
    if (fa != fb) *(float*)(r1 + 556) = f0;
    L_12e040:;
    return;
}

// FUN_0012e048
void W_12e048(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, fa, fb;
    float f0 = p0;
    r1 = (u32)g_008bfa78;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_12e09c;
    f0 = u2f((u32)(int)f0);
    r2 = *(u32*)(r1 + 96);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = r2 + (r0 << 2);
    if (fa != fb) *(float*)(r2 + 520) = f0;
    r2 = *(u32*)(r1 + 100);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = r2 + (r0 << 2);
    if (fa != fb) *(float*)(r2 + 520) = f0;
    r2 = *(u32*)(r1 + 104);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = r2 + (r0 << 2);
    if (fa != fb) *(float*)(r2 + 520) = f0;
    r1 = *(u32*)(r1 + 108);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = r1 + (r0 << 2);
    if (fa != fb) *(float*)(r0 + 520) = f0;
    L_12e09c:;
    return;
}

// FUN_0012e10c
void W_12e10c() {
    u32 r0, r1;
    float f0;
    r0 = (u32)g_008bfa78;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_12e138;
    r1 = *(u32*)(r0 + 96);
    f0 = 100.0f;
    if (r1 != 0u) *(float*)(r1 + 628) = f0;
    r0 = *(u32*)(r0 + 100);
    if (r0 != 0u) *(float*)(r0 + 628) = f0;
    L_12e138:;
    return;
}

// FUN_0013943c
void W_13943c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4;
    r0 = *(u8*)(r0 + 74);
    r4 = r1;
    if (r0 == 4u) goto L_139478;
    r0 = (u32)g_008bfa40;
    r2 = 27u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5cb0_3(r0, r1, r2);
    if (r0 == 0u) goto L_139478;
    r1 = r4;
    { Fn_236078_2(r0, r1); return; }
    L_139478:;
    return;
}

// FUN_0013e880
void W_13e880(u32 a0, float p0) {
    u32 r0 = a0, r1;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    if (ffa < ffb) goto L_13e8a0;
    r1 = f2u(f0);
    if ((int)r1 > (int)1065353216u) f0 = 1.0f;
    L_13e8a0:;
    r0 = *(u32*)(r0 + 192);
    if (r0 != 0u) *(float*)(r0 + 32) = f0;
    return;
}

// FUN_00142428
u32 W_142428(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    float f0;
    r2 = *(u32*)(r1 + 4);
    r3 = 1u;
    if (r2 != 16u) goto L_142490;
    r1 = *(u32*)(r1 + 8);
    r2 = r1 & 255u;
    *(u8*)(r0 + 69) = r2;
    r1 = *(u32*)(r0 + 1228);
    fa = r1; fb = 4u;
    if (fa <= fb) *(u8*)(r0 + 68) = r2;
    if (fa <= fb) goto L_142490;
    fa = r1; fb = 5u;
    if (fa != fb) { fa = r1; fb = 6u; }
    if (fa == fb) goto L_142488;
    fa = r1; fb = 8u;
    if (fa != fb) { fa = r1; fb = 9u; }
    if (fa != fb) goto L_142490;
    r1 = *(u32*)(r0 + 96);
    f0 = 0.0f;
    if (r1 != 0u) *(float*)(r1 + 240) = f0;
    r1 = *(u32*)(r0 + 100);
    if (r1 != 0u) *(float*)(r1 + 240) = f0;
    L_142488:;
    r1 = 7u;
    *(u32*)(r0 + 1228) = r1;
    L_142490:;
    r0 = r3;
    return r0;
}

// FUN_00143200
void W_143200(u32 a0, float p0) {
    u32 r0 = a0, r1, r2;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    if (ffa < ffb) goto L_143220;
    r1 = f2u(f0);
    if ((int)r1 > (int)1065353216u) f0 = 1.0f;
    L_143220:;
    r1 = 0u;
    L_143224:;
    r2 = r0 + (r1 << 2);
    r1 = r1 + 1u;
    r2 = *(u32*)(r2 + 92);
    if (r2 != 0u) *(float*)(r2 + 32) = f0;
    if ((int)r1 < (int)11u) goto L_143224;
    r0 = *(u32*)(r0 + 136);
    if (r0 == 0u) goto L_143250;
    { Fn_5c2a00_3f2(r0, r1, r2, f0, f1); return; }
    L_143250:;
    return;
}

// FUN_00146c2c
void W_146c2c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    float f0;
    r1 = *(u32*)(r0 + 152);
    f0 = 10000.0f;
    *(float*)(r0 + 168) = f0;
    if ((int)r1 >= (int)1065353216u) goto L_146c58;
    r1 = *(u8*)(r0 + 68);
    if (r1 < 2u) goto L_146c58;
    fa = r1; fb = 3u;
    if (fa != fb) r1 = 3u;
    if (fa != fb) *(u8*)(r0 + 68) = r1;
    L_146c58:;
    return;
}

// FUN_00167b5c
void W_167b5c(u32 a0, float p0) {
    u32 r0 = a0;
    float f0 = p0, f1, f2, f3, f4, f5, f6, f7, f8;
    f1 = f0;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_167b90;
    f2 = *(float*)(r0 + 24);
    f6 = 1.0f;
    f3 = 0.0f;
    f0 = *(float*)(r0 + 16);
    f8 = f6;
    f7 = f6;
    f5 = f3;
    f4 = f3;
    { Fn_165db4_1f9(r0, f0, f1, f2, f3, f4, f5, f6, f7, f8); return; }
    L_167b90:;
    return;
}

// FUN_001930f8
void W_1930f8(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r0_2, r0_3;
    float f0_1;
    r4_1 = r0;
    r0_1 = Fn_1c7e68_1(r0);
    r0_2 = r4_1 + 196u;
    r0_3 = Fn_5c4b44_1(r0_2);
    f0_1 = 0.0f;
    *(float*)(r4_1 + 180) = f0_1;
    return;
}

// FUN_00193f64
void W_193f64(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, fa, fb;
    float f0, f1;
    r4 = r0;
    r0 = *(u32*)(r0);
    r5 = r1;
    r1 = *(u32*)(r0 + 272);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0 + 276);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0 + 280);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    f0 = *(float*)(r4 + 180);
    f1 = 0.0f;
    r0 = Fn_59cf74_1f2(r0, f0, f1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) *(u8*)(r4 + 364) = r0;
    r1 = r5;
    r0 = r4;
    { Fn_1c8140_2(r0, r1); return; }
}

// FUN_0019675c
void W_19675c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_196780;
    r3 = (u32)g_007c6f00;
    r0 = *(u32*)(r0 + 20);
    r1 = r3 + (r1 << 1);
    r1 = *(u16*)(r1);
    r1 = r1 + r2;
    { Fn_3850c0_4(r0, r1, r2, r3); return; }
    L_196780:;
    return;
}

// FUN_00196818
void W_196818(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3;
    if ((int)r1 >= (int)36u) goto L_196844;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_196844;
    r3 = (u32)g_007c6f12;
    r0 = *(u32*)(r0 + 20);
    r1 = r3 + (r1 << 1);
    r1 = *(u16*)(r1);
    r1 = r1 + r2;
    { Fn_3850ec_4(r0, r1, r2, r3); return; }
    L_196844:;
    return;
}

// FUN_001a0698
void W_1a0698(u32 a0) {
    u32 r0 = a0, r1;
    float f0;
    r1 = 0u;
    *(u32*)(r0 + 48) = r1;
    f0 = 0.0f;
    *(u32*)(r0 + 288) = r1;
    *(u32*)(r0 + 284) = r1;
    *(float*)(r0 + 336) = f0;
    *(float*)(r0 + 340) = f0;
    r0 = r0 + 344u;
    { Fn_5c4b44_2f1(r0, r1, f0); return; }
}

// FUN_001a619c
u32 W_1a619c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    float f0, f1;
    r4 = r0;
    if (r1 == 0u) goto L_1a61b4;
    L_1a61ac:;
    r0 = 0u;
    return r0;
    L_1a61b4:;
    r0 = Fn_1a43ac_2(r0, r1);
    f1 = 1000.0f;
    f0 = 0.0f;
    r0 = r4;
    r0 = Fn_1a5fd4_1f2(r0, f0, f1);
    goto L_1a61ac;
}

// FUN_001d59ec
void W_1d59ec(u32 a0) {
    u32 r0 = a0, r4;
    float f0, f1;
    r4 = r0;
    r0 = Fn_1c7d40_1(r0);
    r0 = r4;
    f1 = 240.0f;
    f0 = 320.0f;
    { Fn_1e8700_1f2(r0, f0, f1); return; }
}

// FUN_001d6498
void W_1d6498(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    r3 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r2 = ~89u;
    if (fa != fb) r2 = 0u;
    r12 = *(u32*)(r3 + 60);
    r3 = r1;
    f0 = 1.0f;
    r1 = 10u;
    { ((u32(*)(u32, u32, u32, u32, float))r12)(r0, r1, r2, r3, f0); return; }
}

// FUN_001d8b00
void W_1d8b00(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    *(u32*)(r0 + 100) = r1;
    r3 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r2 = ~89u;
    if (fa != fb) r2 = 0u;
    r12 = *(u32*)(r3 + 60);
    r3 = r1;
    f0 = 1.0f;
    r1 = 0u;
    { ((u32(*)(u32, u32, u32, u32, float))r12)(r0, r1, r2, r3, f0); return; }
}

// FUN_001ede14
void W_1ede14(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    r3 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r2 = ~89u;
    if (fa != fb) r2 = 0u;
    r12 = *(u32*)(r3 + 60);
    r3 = r1;
    f0 = 1.0f;
    r1 = 0u;
    { ((u32(*)(u32, u32, u32, u32, float))r12)(r0, r1, r2, r3, f0); return; }
}

// FUN_0020e908
void W_20e908(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    float f0, f1;
    fa = r1; fb = 0u;
    if (fa != fb) f1 = 200.0f;
    if (fa == fb) f1 = -200.0f;
    f0 = 0.0f;
    *(float*)(r0 + 64) = f1;
    *(float*)(r0 + 68) = f0;
    *(float*)(r0 + 72) = f0;
    *(float*)(r0 + 76) = f0;
    r0 = r0 + 56u;
    r1 = 0u;
    r2 = 255u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_00210e64
void W_210e64(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    r3 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r2 = ~89u;
    if (fa != fb) r2 = 0u;
    r12 = *(u32*)(r3 + 60);
    r3 = r1;
    f0 = 1.0f;
    r1 = 10u;
    { ((u32(*)(u32, u32, u32, u32, float))r12)(r0, r1, r2, r3, f0); return; }
}

// FUN_00214e50
void W_214e50(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    r2 = *(u32*)(r0 + 108);
    if ((int)r2 < (int)r1) goto L_214ea4;
    r3 = r2 - r1;
    r2 = r3 - 1u;
    fa = r2; fb = 0u;
    if ((int)fa > (int)fb) r2 = 0u;
    if ((int)fa > (int)fb) r3 = r3 - 1u;
    if ((int)fa <= (int)fb) goto L_214e90;
    L_214e74:;
    r12 = r1 + r2;
    r3 = r3 - 1u;
    r12 = r0 + (r12 << 2);
    r2 = r2 + 1u;
    f0 = *(float*)(r12 + 116);
    *(float*)(r12 + 112) = f0;
    if (r3 != 0) goto L_214e74;
    L_214e90:;
    r1 = *(u32*)(r0 + 108);
    r1 = r1 - 1u;
    *(u32*)(r0 + 108) = r1;
    r1 = r0 + 108u;
    { Fn_214f64_4f1(r0, r1, r2, r3, f0); return; }
    L_214ea4:;
    return;
}

// FUN_0021b398
void W_21b398(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    r3 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r2 = ~89u;
    if (fa != fb) r2 = 0u;
    r12 = *(u32*)(r3 + 60);
    r3 = r1;
    f0 = 1.0f;
    r1 = 0u;
    { ((u32(*)(u32, u32, u32, u32, float))r12)(r0, r1, r2, r3, f0); return; }
}

// FUN_00221378
void W_221378(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    float f0, f1, f2;
    r0 = *(u32*)(r0 + 44);
    if (r0 == 0u) goto L_2213a4;
    f0 = u2f(r1);
    f1 = 0.0174532924f;
    r0 = r0 + 248u;
    f0 = (float)(int)f2u(f0);
    f2 = f0 * f1;
    f0 = 0.0f;
    f1 = f0;
    { Fn_59cb30_2f3(r0, r1, f0, f1, f2); return; }
    L_2213a4:;
    return;
}

// FUN_0023d9d8
void W_23d9d8(u32 a0) {
    u32 r0 = a0, r1;
    float f0;
    r1 = 0u;
    *(u32*)(r0 + 48) = r1;
    f0 = 0.0f;
    *(u32*)(r0 + 360) = r1;
    *(u32*)(r0 + 356) = r1;
    *(float*)(r0 + 408) = f0;
    *(float*)(r0 + 412) = f0;
    r0 = r0 + 416u;
    { Fn_5c4b44_2f1(r0, r1, f0); return; }
}

// FUN_00240e1c
void W_240e1c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12, fa, fb;
    float f0;
    r3 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r2 = ~89u;
    if (fa != fb) r2 = 0u;
    r12 = *(u32*)(r3 + 60);
    r3 = r1;
    f0 = 1.0f;
    r1 = 0u;
    { ((u32(*)(u32, u32, u32, u32, float))r12)(r0, r1, r2, r3, f0); return; }
}

// FUN_002507d0
void W_2507d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    float f0, f1, f2;
    r0 = *(u32*)(r0 + 56);
    if (r0 == 0u) goto L_2507fc;
    f0 = u2f(r1);
    f1 = 0.0174532924f;
    r0 = r0 + 248u;
    f0 = (float)(int)f2u(f0);
    f2 = f0 * f1;
    f0 = 0.0f;
    f1 = f0;
    { Fn_59cb30_2f3(r0, r1, f0, f1, f2); return; }
    L_2507fc:;
    return;
}

// FUN_0027a1cc
u32 W_27a1cc(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6;
    float f0_1;
    r4_1 = r0;
    r0_1 = 0u;
    *(u8*)(r4_1 + 1057) = r0_1;
    r1_1 = r0_1;
    *(u8*)(r4_1 + 1058) = r0_1;
    r0_2 = r4_1;
    r0_3 = Fn_27c030_2(r0_2, r1_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 220);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_1 = -10000.0f;
    *(float*)(r4_1 + 992) = f0_1;
    *(float*)(r4_1 + 996) = f0_1;
    return r0_6;
}

// FUN_0027a9cc
u32 W_27a9cc(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6, r1_3;
    float f0_1;
    r4_1 = r0;
    r0_1 = 0u;
    *(u8*)(r4_1 + 1060) = r0_1;
    r1_1 = r0_1;
    *(u8*)(r4_1 + 1058) = r0_1;
    r0_2 = r4_1;
    r0_3 = Fn_27c030_2(r0_2, r1_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 220);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_1 = -10000.0f;
    *(float*)(r4_1 + 1008) = f0_1;
    *(float*)(r4_1 + 1012) = f0_1;
    r1_3 = *(u32*)(r4_1 + 1008);
    *(u32*)(r4_1 + 1000) = r1_3;
    *(float*)(r4_1 + 1004) = f0_1;
    return r0_6;
}

// FUN_0027aa20
u32 W_27aa20(u32 a0) {
    u32 r0 = a0, r4_1, r1_1, r0_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6;
    float f0_1;
    r4_1 = r0;
    r1_1 = 0u;
    r0_1 = 1u;
    *(u8*)(r4_1 + 1060) = r1_1;
    *(u8*)(r4_1 + 1057) = r0_1;
    r0_2 = r4_1;
    r0_3 = Fn_27c1ec_2(r0_2, r1_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 216);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_1 = -10000.0f;
    *(float*)(r4_1 + 992) = f0_1;
    *(float*)(r4_1 + 996) = f0_1;
    return r0_6;
}

// FUN_0027b9b8
u32 W_27b9b8(u32 a0) {
    u32 r0 = a0, r4_1, r1_1, r0_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5, r0_6, r1_3;
    float f0_1, f0_2;
    r4_1 = r0;
    r1_1 = 0u;
    r0_1 = 1u;
    *(u8*)(r4_1 + 1057) = r1_1;
    f0_1 = 0.0f;
    *(u8*)(r4_1 + 1060) = r0_1;
    *(float*)(r4_1 + 924) = f0_1;
    r0_2 = r4_1;
    r0_3 = Fn_27c1ec_2f1(r0_2, r1_1, f0_1);
    r0_4 = *(u32*)(r4_1);
    r1_2 = *(u8*)(r4_1 + 816);
    r2_1 = *(u32*)(r0_4 + 216);
    r0_5 = r4_1;
    r0_6 = ((u32(*)(u32, u32))r2_1)(r0_5, r1_2);
    f0_2 = -10000.0f;
    *(float*)(r4_1 + 1008) = f0_2;
    *(float*)(r4_1 + 1012) = f0_2;
    r1_3 = *(u32*)(r4_1 + 1008);
    *(u32*)(r4_1 + 1000) = r1_3;
    *(float*)(r4_1 + 1004) = f0_2;
    return r0_6;
}

// FUN_002af2fc
void W_2af2fc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2af314;
    { Fn_2af9d8_2(r0, r1); return; }
    L_2af314:;
    return;
}

// FUN_002b768c
u32 W_2b768c(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    float f0, f1;
    r4 = r0;
    r0 = *(u32*)(r0 + 12);
    if (r0 == 0u) goto L_2b76e0;
    if (r0 != 1u) goto L_2b76dc;
    f0 = *(float*)(r4 + 32);
    f1 = *(float*)(r4 + 28);
    r1 = 1077936128u;
    f0 = f0 + f1;
    r0 = f2u(f0);
    *(float*)(r4 + 32) = f0;
    if ((int)r0 < (int)r1) goto L_2b76dc;
    r0 = r4;
    r0 = Fn_2b7578_2f2(r0, r1, f0, f1);
    r1 = 0u;
    *(u32*)(r4 + 12) = r1;
    *(u8*)(r4 + 1) = r1;
    L_2b76dc:;
    return r0;
    L_2b76e0:;
    r0 = r4;
    r0 = Fn_2b779c_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) *(u32*)(r4 + 12) = r0;
    return r0;
}

// FUN_003f2ddc
void W_3f2ddc(u32 a0) {
    u32 r0 = a0, r1;
    float f0, f1, f2;
    r1 = *(u32*)(r0 + 40);
    if ((int)r1 <= (int)0u) goto L_3f2e2c;
    r1 = *(u32*)(r0 + 36);
    f0 = 4.0f;
    if (r1 == 0u) goto L_3f2e04;
    if (r1 == 1u) goto L_3f2e18;
    goto L_3f2e2c;
    L_3f2e04:;
    f2 = *(float*)(r0 + 44);
    f1 = *(float*)(r0 + 16);
    f2 = (float)(int)f2u(f2);
    f1 = f1 + f2 * f0;
    goto L_3f2e28;
    L_3f2e18:;
    f2 = *(float*)(r0 + 44);
    f1 = *(float*)(r0 + 16);
    f2 = (float)(int)f2u(f2);
    f1 = f1 - f2 * f0;
    L_3f2e28:;
    *(float*)(r0 + 16) = f1;
    L_3f2e2c:;
    { Fn_3fa630_2f3(r0, r1, f0, f1, f2); return; }
}

// FUN_003f8cb8
void W_3f8cb8(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    float f0;
    r4 = r0;
    r0 = *(u32*)(r0 + 68);
    f0 = 240.0f;
    r0 = Fn_404d38_1f1(r0, f0);
    r0 = 10158080u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) goto L_3f8cec;
    r0 = *(u32*)(r4 + 68);
    r2 = 1u;
    r1 = 10158080u;
    r0 = Fn_402d58_3(r0, r1, r2);
    L_3f8cec:;
    r0 = 6356992u;
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) goto L_3f8d10;
    r0 = *(u32*)(r4 + 68);
    r2 = 1u;
    r1 = 6356992u;
    r0 = Fn_402d58_3(r0, r1, r2);
    L_3f8d10:;
    r0 = *(u32*)(r4 + 68);
    r2 = 14u;
    r1 = 0u;
    *(u8*)(r0 + 116) = r2;
    *(u32*)(r4 + 80) = r1;
    return;
}

// FUN_004125b8
void W_4125b8() {
    u32 r0, r1;
    r0 = (u32)g_008bfae4;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_4125d0;
    r1 = 0u;
    { Fn_5fb988_2(r0, r1); return; }
    L_4125d0:;
    return;
}

// FUN_00436a94
void W_436a94(u32 a0) {
    u32 r0 = a0, r1;
    float f0, f1;
    r1 = *(u8*)(r0 + 64);
    if (r1 == 5u) goto L_436ab4;
    f0 = *(float*)(r0 + 52);
    f1 = 0.0799999982f;
    f0 = f0 + f1;
    *(float*)(r0 + 52) = f0;
    { Fn_433d3c_2f2(r0, r1, f0, f1); return; }
    L_436ab4:;
    f0 = *(float*)(r0 + 28);
    f1 = 1.0f;
    f0 = f0 - f1;
    *(float*)(r0 + 28) = f0;
    return;
}

// FUN_00437674
u32 W_437674(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r0_2, r0_3, r2_1, r1_1, r0_4, r0_5, r2_2, r1_2, r0_6, r1_3, r2_3, r0_7;
    float f0_1;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 72);
    f0_1 = 240.0f;
    r0_2 = Fn_404d38_1f1(r0_1, f0_1);
    r0_3 = *(u32*)(r4_1 + 72);
    r2_1 = 1u;
    r1_1 = 8978432u;
    r0_4 = Fn_402d58_3(r0_3, r1_1, r2_1);
    r0_5 = *(u32*)(r4_1 + 72);
    r2_2 = 1u;
    r1_2 = 6356992u;
    r0_6 = Fn_402d58_3(r0_5, r1_2, r2_2);
    r1_3 = *(u32*)(r4_1 + 72);
    r2_3 = 14u;
    r0_7 = 0u;
    *(u8*)(r1_3 + 116) = r2_3;
    *(u32*)(r4_1 + 68) = r0_7;
    *(u32*)(r4_1 + 112) = r0_7;
    *(u32*)(r4_1 + 120) = r0_7;
    return r0_7;
}
