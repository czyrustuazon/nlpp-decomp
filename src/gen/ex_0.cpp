// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_2eb2d8_4(u32, u32, u32, u32);
u32 Fn_2eb420_4(u32, u32, u32, u32);
u32 Fn_2ee9b8_3(u32, u32, u32);
u32 Fn_2f0168_4(u32, u32, u32, u32);
u32 Fn_2f017c_4(u32, u32, u32, u32);
u32 Fn_2f0890_3(u32, u32, u32);
u32 Fn_2f4e68_4(u32, u32, u32, u32);
u32 WeakCall2(u32, u32);
extern char g_008a6196[];
u32 Fn_16ec1c_2(u32, u32);
u32 Fn_1c7c34_3(u32, u32, u32);
u32 Fn_1b6f2c_3(u32, u32, u32);
u32 Fn_1b74f8_3(u32, u32, u32);
extern char g_008121e8[];
u32 Fn_5c8040_3(u32, u32, u32);
extern char g_007c7048[];
extern char g_008a75dc[];
u32 Fn_3d6c5c_0();
extern char g_00804a54[];
u32 Fn_4e0128_3(u32, u32, u32);
u32 Fn_544c68_3(u32, u32, u32);
u32 WeakCall2f8(u32, u32, float, float, float, float, float, float, float, float);
extern char g_0089a430[];
u32 Fn_444420_0();
u32 Fn_642530_2(u32, u32);

// FUN_0006d498
u32 W_06d498(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 24);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0010f834
void W_10f834(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = *(u8*)(r0 + 804);
    fa = r12; fb = 0u;
    if (fa == fb) goto L_10f844;
    { Fn_2eb2d8_4(r0, r1, r2, r3); return; }
    L_10f844:;
    return;
}

// FUN_0010f848
void W_10f848(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = *(u8*)(r0 + 804);
    fa = r12; fb = 0u;
    if (fa == fb) goto L_10f858;
    { Fn_2eb420_4(r0, r1, r2, r3); return; }
    L_10f858:;
    return;
}

// FUN_0010f860
void W_10f860(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 804);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_10f870;
    { Fn_2ee9b8_3(r0, r1, r2); return; }
    L_10f870:;
    return;
}

// FUN_0010f874
void W_10f874(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = *(u8*)(r0 + 804);
    fa = r12; fb = 0u;
    if (fa == fb) goto L_10f884;
    { Fn_2f0168_4(r0, r1, r2, r3); return; }
    L_10f884:;
    return;
}

// FUN_0010f888
void W_10f888(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = *(u8*)(r0 + 804);
    fa = r12; fb = 0u;
    if (fa == fb) goto L_10f898;
    { Fn_2f017c_4(r0, r1, r2, r3); return; }
    L_10f898:;
    return;
}

// FUN_0010f89c
void W_10f89c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 804);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_10f8ac;
    { Fn_2f0890_3(r0, r1, r2); return; }
    L_10f8ac:;
    return;
}

// FUN_0010f8b0
void W_10f8b0(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = *(u8*)(r0 + 804);
    fa = r12; fb = 0u;
    if (fa == fb) goto L_10f8c0;
    { Fn_2f4e68_4(r0, r1, r2, r3); return; }
    L_10f8c0:;
    return;
}

// FUN_0016ec04
void W_16ec04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 156);
    fa = r2; fb = 0u;
    if (fa == fb) r2 = 1u;
    if (fa != fb) r2 = 0u;
    *(u8*)(r0 + 121) = r2;
    { WeakCall2(r0, r1); return; }
}

// FUN_0016f2f0
void W_16f2f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008a6196;
    r2 = *(u8*)(r2);
    fa = r2; fb = 0u;
    if (fa != fb) r2 = 1u;
    if (fa != fb) *(u8*)(r0 + 120) = r2;
    { Fn_16ec1c_2(r0, r1); return; }
}

// FUN_001e3638
u32 W_1e3638(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_1e3684;
    r3 = *(u32*)(r1 + 36);
    fa = r3; fb = 1u;
    if (fa == fb) r3 = 0u;
    if (fa == fb) goto L_1e3678;
    fa = r3; fb = 2u;
    if (fa == fb) r3 = 1u;
    if (fa == fb) goto L_1e3678;
    fa = r3; fb = 3u;
    if (fa == fb) r3 = 2u;
    if (fa == fb) goto L_1e3678;
    fa = r3; fb = 4u;
    if (fa != fb) r3 = ~0u;
    if (fa == fb) r3 = 3u;
    L_1e3678:;
    r12 = *(u32*)(r0 + 132);
    fa = r12; fb = r3;
    if (fa == fb) r0 = Fn_1c7c34_3(r0, r1, r2);
    L_1e3684:;
    r0 = 0u;
    return r0;
}

// FUN_001fe1c0
u32 W_1fe1c0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r1 + 36);
    fa = r3; fb = 1u;
    if (fa == fb) *(u32*)(r0 + 96) = r3;
    if (fa != fb) r0 = Fn_1c7c34_3(r0, r1, r2);
    r0 = 0u;
    return r0;
}

// FUN_0021cff4
void W_21cff4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r3_1, r3_2;
    r3_1 = *(u32*)(r0);
    r3_2 = *(u32*)(r3_1 + 44);
    { ((u32(*)(u32, u32, u32))r3_2)(r0, r1, r2); return; }
}

// FUN_0021f708
void W_21f708(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 376);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_21f718;
    { Fn_1b6f2c_3(r0, r1, r2); return; }
    L_21f718:;
    return;
}

// FUN_0021f8b4
void W_21f8b4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 376);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_21f8c4;
    { Fn_1b74f8_3(r0, r1, r2); return; }
    L_21f8c4:;
    return;
}

// FUN_002206e4
float W_2206e4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r4 = 0u;
    *(u32*)(r0) = r4;
    *(u32*)(r0 + 4) = r4;
    *(u32*)(r0 + 8) = r4;
    *(u32*)(r0 + 12) = r4;
    *(u32*)(r0 + 16) = r4;
    *(u32*)(r0 + 20) = r4;
    *(u32*)(r0 + 24) = r4;
    *(u32*)(r0 + 28) = r4;
    *(u32*)(r0 + 32) = r4;
    r0 = Fn_5c8040_3(r0, r1, r2);
    r1 = (u32)g_008121e8;
    f0 = 0.0f;
    r2 = r0 + 60u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 36) = r4;
    *(u32*)(r0 + 40) = r4;
    *(float*)(r0 + 44) = f0;
    *(float*)(r0 + 48) = f0;
    *(float*)(r0 + 52) = f0;
    r1 = ~0u;
    *(u8*)(r0 + 56) = r4;
    *(u32*)(r2 + 0) = r1; *(u32*)(r2 + 4) = r4;
    *(u8*)(r0 + 68) = r4;
    *(u32*)(r0 + 69) = r4;
    *(u32*)(r0 + 73) = r4;
    *(u8*)(r0 + 77) = r4;
    return f0;
}

// FUN_0022a690
void W_22a690(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 164);
    { ((u32(*)(u32, u32))r2_2)(r0, r1); return; }
}

// FUN_0026ca50
u32 W_26ca50(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26ca70;
    r0 = *(u32*)(r0 + 148);
    r2 = ~15u;
    r1 = r2 + (r1 << 4);
    r0 = r0 + r1;
    L_26ca70:;
    return r0;
}

// FUN_0026d054
u32 W_26d054(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d074;
    r0 = *(u32*)(r0 + 152);
    r2 = ~15u;
    r1 = r2 + (r1 << 4);
    r0 = r0 + r1;
    L_26d074:;
    return r0;
}

// FUN_0026d078
u32 W_26d078(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d098;
    r0 = *(u32*)(r0 + 156);
    r2 = ~15u;
    r1 = r2 + (r1 << 4);
    r0 = r0 + r1;
    L_26d098:;
    return r0;
}

// FUN_0026d100
u32 W_26d100(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d124;
    r0 = *(u32*)(r0 + 204);
    r1 = (r1 << 3) - r1;
    r2 = ~27u;
    r1 = r2 + (r1 << 2);
    r0 = r0 + r1;
    L_26d124:;
    return r0;
}

// FUN_0026d128
u32 W_26d128(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d148;
    r0 = *(u32*)(r0 + 124);
    r2 = ~63u;
    r1 = r2 + (r1 << 6);
    r0 = r0 + r1;
    L_26d148:;
    return r0;
}

// FUN_0026d178
u32 W_26d178(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d19c;
    r0 = *(u32*)(r0 + 116);
    r1 = (r1 << 3) - r1;
    r2 = ~111u;
    r1 = r2 + (r1 << 4);
    r0 = r0 + r1;
    L_26d19c:;
    return r0;
}

// FUN_0026d1d4
u32 W_26d1d4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d1f8;
    r0 = *(u32*)(r0 + 132);
    r1 = (r1 << 3) - r1;
    r2 = ~27u;
    r1 = r2 + (r1 << 2);
    r0 = r0 + r1;
    L_26d1f8:;
    return r0;
}

// FUN_0026d258
u32 W_26d258(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d280;
    r1 = (r1 << 4) - r1;
    r2 = 4294966936u;
    r0 = *(u32*)(r0 + 208);
    r1 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 3);
    r0 = r0 + r1;
    L_26d280:;
    return r0;
}

// FUN_0026d288
u32 W_26d288(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d2a8;
    r0 = *(u32*)(r0 + 212);
    r2 = ~31u;
    r1 = r2 + (r1 << 5);
    r0 = r0 + r1;
    L_26d2a8:;
    return r0;
}

// FUN_0026d2ac
u32 W_26d2ac(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d2cc;
    r0 = *(u32*)(r0 + 184);
    r2 = ~31u;
    r1 = r2 + (r1 << 5);
    r0 = r0 + r1;
    L_26d2cc:;
    return r0;
}

// FUN_0026d300
u32 W_26d300(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d324;
    r0 = *(u32*)(r0 + 120);
    r1 = r1 + (r1 << 4);
    r2 = ~135u;
    r1 = r2 + (r1 << 3);
    r0 = r0 + r1;
    L_26d324:;
    return r0;
}

// FUN_0026d328
u32 W_26d328(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d34c;
    r0 = *(u32*)(r0 + 168);
    r1 = r1 + (r1 << 4);
    r2 = ~67u;
    r1 = r2 + (r1 << 2);
    r0 = r0 + r1;
    L_26d34c:;
    return r0;
}

// FUN_0026d350
u32 W_26d350(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d370;
    r0 = *(u32*)(r0 + 192);
    r2 = ~15u;
    r1 = r2 + (r1 << 4);
    r0 = r0 + r1;
    L_26d370:;
    return r0;
}

// FUN_0026d374
u32 W_26d374(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d398;
    r0 = *(u32*)(r0 + 136);
    r1 = (r1 << 3) - r1;
    r2 = ~27u;
    r1 = r2 + (r1 << 2);
    r0 = r0 + r1;
    L_26d398:;
    return r0;
}

// FUN_0026d39c
u32 W_26d39c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d3bc;
    r0 = *(u32*)(r0 + 188);
    r2 = ~31u;
    r1 = r2 + (r1 << 5);
    r0 = r0 + r1;
    L_26d3bc:;
    return r0;
}

// FUN_0026d3c0
u32 W_26d3c0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 - 1u;
    fa = r2; fb = 3u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_26d3e8;
    r3 = r1 + (r1 << 1);
    r0 = *(u32*)(r0 + 180);
    r1 = r3 + (r1 << 4);
    r2 = ~151u;
    r1 = r2 + (r1 << 3);
    r0 = r0 + r1;
    L_26d3e8:;
    return r0;
}

// FUN_002c3f80
u32 W_2c3f80(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    if (fa > fb) r0 = 0u;
    if (fa > fb) goto L_2c3fac;
    r1 = (u32)g_007c7048;
    fa = r2; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r1);
    if (fa != fb) *(u32*)(r2) = r1;
    r0 = *(u32*)(r0 + 16);
    r1 = r2 + 4u;
    if (r1 != 0) *(u32*)(r1) = r0;
    r0 = 1u;
    L_2c3fac:;
    return r0;
}

// FUN_002f40e4
void W_2f40e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 816);
    fa = r2; fb = 0u;
    if ((int)fa > (int)fb) r2 = r2 - 1u;
    if ((int)fa > (int)fb) *(u32*)(r0 + 816) = r2;
    { WeakCall2(r0, r1); return; }
}

// FUN_0047e1d0
void W_47e1d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 76);
    { ((u32(*)(u32, u32))r2_2)(r0, r1); return; }
}

// FUN_00486b88
void W_486b88(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 16u; r12 = *(u32*)(r0);
    r12 = *(u32*)(r12 + 16);
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_0048f2cc
u32 W_48f2cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a75dc;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_48f2ec;
    r0 = Fn_3d6c5c_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    L_48f2ec:;
    return r0;
}

// FUN_00498f7c
void W_498f7c(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 16u; r12 = *(u32*)(r0);
    r12 = *(u32*)(r12 + 16);
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_0049f1e4
void W_49f1e4(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 12u; r12 = *(u32*)(r0);
    r12 = *(u32*)(r12 + 16);
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_004b2ec0
void W_4b2ec0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 80);
    { ((u32(*)(u32, u32))r2_2)(r0, r1); return; }
}

// FUN_004df510
void W_4df510(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r3_1, r1_1, r4_1, r2_1;
    r0_1 = Fn_4e0128_3(r0, r1, r2);
    r1_1 = ~2147483648u;
    *(u32*)(r0_1 + 68) = r1_1;
    *(u32*)(r0_1) = ((u32)g_00804a54);
    *(u32*)(r0_1 + 72) = r1_1;
    r2_1 = 0u;
    *(u32*)(r0_1 + 76) = r1_1;
    *(u32*)((r0_1 + 80u) + 0) = r1_1; *(u32*)((r0_1 + 80u) + 4) = r2_1;
    *(u32*)(r0_1 + 88) = r2_1;
    *(u8*)(r0_1 + 92) = r2_1;
    *(u8*)(r0_1 + 93) = r2_1;
    return;
}

// FUN_0054a02c
u32 W_54a02c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = r0;
    r5 = *(u32*)(r0 + 4);
    r4 = r2;
    r0 = Fn_544c68_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) goto L_54a058;
    r0 = r0 + (r0 << 1);
    r1 = *(u32*)(r5 + (r0 << 2));
    fx = r1 & 4278190080u;
    if (fx == 0) goto L_54a060;
    L_54a058:;
    r0 = 0u;
    return r0;
    L_54a060:;
    r0 = r5 + (r0 << 2);
    *(u32*)(r4) = r6;
    r1 = *(u32*)(r0 + 4);
    *(u32*)(r4 + 4) = r1;
    r0 = *(u32*)(r0 + 8);
    *(u32*)(r4 + 8) = r0;
    r0 = 1u;
    return r0;
}

// FUN_005af7d4
void W_5af7d4(u32 a0, u32 a1, float p0, float p1, float p2, float p3) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1 = p1, f2 = p2, f3 = p3, f4, f5, f6, f7, f6_1, f4_1, f7_1, f5_1, f2_1, ffa, ffb;
    f6_1 = f2;
    f4_1 = f2;
    f7_1 = f3;
    f5_1 = f1;
    f2_1 = f0;
    { WeakCall2f8(r0, r1, f0, f1, f2_1, f3, f4_1, f5_1, f6_1, f7_1); return; }
}

// FUN_005d4880
u32 W_5d4880(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_0089a430;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5d48a0;
    r0 = Fn_444420_0();
    r0 = r0 ^ 1u;
    L_5d48a0:;
    return r0;
}

// FUN_005d6140
void W_5d6140(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_642530_2(r0, r1);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) goto L_5d6168;
    r2 = *(u32*)(r4 + 4);
    r1 = 0u;
    *(u32*)(r2 + (r0 << 2)) = r1;
    r2 = *(u32*)(r4 + 8);
    *(u32*)(r2 + (r0 << 2)) = r1;
    L_5d6168:;
    return;
}

// FUN_00625b5c
u32 W_625b5c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 12u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_625b78;
    r1 = r1 + (r1 << 1);
    r0 = r0 + (r1 << 2);
    r0 = r0 + 256u;
    r0 = *(signed char*)(r0 + 53);
    L_625b78:;
    return r0;
}

// FUN_00636db0
void W_636db0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 20);
    { ((u32(*)(u32, u32))r2_2)(r0, r1); return; }
}

// FUN_0063bc74
u32 W_63bc74(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2, r0_1, r0_2, r0_3;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 60);
    r0_1 = ((u32(*)(u32, u32))r2_2)(r0, r1);
    r0_2 = r0_1 << 8;
    r0_3 = (u32)((int)r0_2 >> 24);
    return r0_3;
}

// FUN_00643b40
void W_643b40(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4294967284u; r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 16);
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
}
