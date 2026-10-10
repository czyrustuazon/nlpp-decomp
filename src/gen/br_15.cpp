// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_6281a8_1(u32);
u32 Fn_625a90_2(u32, u32);
u32 Fn_60d52c_1(u32);
extern char g_007b6850[];
extern char g_007b7380[];
extern char g_007b7470[];
extern char g_007b7798[];
extern char g_007b895c[];
u32 Fn_62f0bc_1(u32);
u32 Fn_62f410_1(u32);
extern char g_008bfa54[];
u32 Fn_626ef8_1(u32);
u32 Fn_12d4b4_1(u32);
u32 Fn_6304b0_1(u32);
u32 Fn_015564_1(u32);
u32 Fn_631e84_0();
u32 Fn_021ccc_3(u32, u32, u32);

// FUN_00627614
u32 W_627614(u32 a0) {
    u32 r0 = a0;
    r0 = *(signed char*)(r0 + 47);
    return r0;
}

// FUN_0062761c
u32 W_62761c(u32 a0) {
    u32 r0 = a0;
    r0 = *(signed char*)(r0 + 44);
    return r0;
}

// FUN_00627624
u32 W_627624(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00627798
u32 W_627798(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 5u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_6277b4;
    fa = r0; fb = 6u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = ~0u;
    L_6277b4:;
    return r0;
}

// FUN_00627eb8
u32 W_627eb8(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 52);
    if (r0 != 0u) r0 = *(u8*)(r0 + a1);
    return r0;
}

// FUN_00627fa8
u32 W_627fa8(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    fa = a1; fb = 3u;
    if (fa < fb) r0 = r0 + a1;
    if (fa < fb) r0 = *(u8*)(r0 + 135);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_006280a8
u32 W_6280a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 7u;
    if (fa >= fb) r0 = r0 + 12u;
    if (fa >= fb) goto L_6280c4;
    r1 = (r1 << 3) - r1;
    r1 = r1 + (r1 << 2);
    r0 = r0 + (r1 << 2);
    r0 = r0 + 12u;
    L_6280c4:;
    return r0;
}

// FUN_006280c8
u32 W_6280c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    fa = r1; fb = 200u;
    if (fa < fb) r1 = r0 + (r1 << 1);
    if (fa < fb) r1 = r1 + 35328u;
    if (fa >= fb) r1 = r0 + 35328u;
    r1 = *(short*)(r1 + 102);
    r2 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 3);
    r0 = r0 + (r1 << 4);
    r0 = r0 + 224u;
    return r0;
}

// FUN_006280f0
u32 W_6280f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    fa = r1; fb = 200u;
    if (fa < fb) r1 = r0 + (r1 << 1);
    if (fa < fb) r1 = r1 + 35328u;
    if (fa >= fb) r1 = r0 + 35328u;
    r1 = *(short*)(r1 + 102);
    fa = r1; fb = 200u;
    if (fa >= fb) r0 = r0 + 224u;
    if (fa >= fb) goto L_628120;
    r2 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 3);
    r0 = r0 + (r1 << 4);
    r0 = r0 + 224u;
    L_628120:;
    return r0;
}

// FUN_00628328
u32 W_628328(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_6281a8_1(r0);
    if (r0 == 0u) goto L_62834c;
    r0 = *(u8*)(r4 + 2036);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_628350;
    L_62834c:;
    r0 = 0u;
    L_628350:;
    return r0;
}

// FUN_00628354
u32 W_628354(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = r0;
    r0 = Fn_6281a8_1(r0);
    if (r0 == 0u) goto L_628378;
    r0 = *(u8*)(r4 + 2036);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_62837c;
    L_628378:;
    r0 = 0u;
    L_62837c:;
    return r0;
}

// FUN_00628388
u32 W_628388(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 108);
    if (r0 != 1u) r0 = 0u;
    return r0;
}

// FUN_00628638
u32 W_628638(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 100);
    if (r0 != 1u) r0 = 0u;
    return r0;
}

// FUN_006286bc
u32 W_6286bc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r0 = *(u32*)(r0 + 32);
    if (r0 == 0u) goto L_6286d0;
    if (r1 < 4u) goto L_6286d8;
    L_6286d0:;
    r0 = 5u;
    return r0;
    L_6286d8:;
    r1 = r1 + (r1 << 1);
    r2 = 1u;
    r1 = r2 + (r1 << 1);
    r0 = *(u8*)(r0 + r1);
    return r0;
}

// FUN_00628878
u32 W_628878(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 420);
    fa = r0; fb = 11u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062888c
u32 W_62888c(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    r2 = *(u32*)(r0 + 84);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = *(short*)(r0 + 48);
    if (fa == fb) goto L_6288b8;
    if ((int)a1 < 1) goto L_6288b4;
    fa = r2; fb = a1;
    if (fa >= fb) r0 = r0 + (a1 << 1);
    if (fa >= fb) r0 = *(short*)(r0 + 46);
    if (fa >= fb) goto L_6288b8;
    L_6288b4:;
    r0 = ~0u;
    L_6288b8:;
    return r0;
}

// FUN_006288f8
u32 W_6288f8(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 78);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062890c
u32 W_62890c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_628928;
    r0 = *(u8*)(r0 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_628928:;
    return r0;
}

// FUN_00628b84
u32 W_628b84(u32 a0) {
    u32 r0 = a0;
    r0 = *(u16*)(r0);
    r0 = r0 & 2u;
    r0 = r0 >> 1;
    return r0;
}

// FUN_00628bac
u32 W_628bac(u32 a0) {
    u32 r0 = a0;
    r0 = *(u16*)(r0);
    r0 = r0 & 1u;
    return r0;
}

// FUN_00628c0c
u32 W_628c0c(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    if ((int)a1 < 0) goto L_628c28;
    r2 = *(u32*)(r0 + 68);
    fa = r2; fb = a1;
    if (fa > fb) r0 = r0 + a1;
    if (fa > fb) r0 = *(u8*)(r0 + 4);
    if (fa > fb) goto L_628c2c;
    L_628c28:;
    r0 = 0u;
    L_628c2c:;
    return r0;
}

// FUN_00628da0
u32 W_628da0(u32 a0) {
    u32 r0 = a0;
    r0 = *(short*)(r0 + 16);
    return r0;
}

// FUN_00628da8
u32 W_628da8(u32 a0) {
    u32 r0 = a0;
    r0 = *(short*)(r0 + 28);
    return r0;
}

// FUN_00628eec
u32 W_628eec(u32 a0) {
    u32 r0 = a0, r1, fx;
    r1 = *(u8*)(r0 + 89);
    fx = r1 & 8u;
    if (fx != 0) r0 = *(short*)(r0 + 18);
    if (fx == 0) r0 = ~0u;
    return r0;
}

// FUN_00628f00
u32 W_628f00(u32 a0) {
    u32 r0 = a0, r1, fx;
    r1 = *(u8*)(r0 + 89);
    fx = r1 & 4u;
    if (fx != 0) r0 = *(short*)(r0 + 16);
    if (fx == 0) r0 = ~0u;
    return r0;
}

// FUN_00629034
u32 W_629034(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 52);
    fa = r0; fb = 3u;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_00629050
u32 W_629050(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 56);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 32);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00629598
u32 W_629598(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 252);
    r0 = 0u;
    if (r1 == 0u) goto L_6295b0;
    r0 = r1;
    return Fn_625a90_2(r0, r1);
    L_6295b0:;
    return r0;
}

// FUN_006295d4
u32 W_6295d4(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 400);
    if (r0 != 1u) r0 = 0u;
    return r0;
}

// FUN_006295e4
void W_6295e4(u32 a0) {
    u32 r0 = a0;
    r0 = *(signed char*)(r0 + 84);
    { Fn_60d52c_1(r0); return; }
}

// FUN_0062d314
u32 W_62d314(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r2 = *(u8*)(r0 + 16);
    fa = r2; fb = r1;
    if (fa > fb) r1 = r1 + (r1 << 2);
    if (fa > fb) r0 = r0 + (r1 << 2);
    if (fa > fb) r0 = r0 + 244u;
    if (fa <= fb) r0 = 0u;
    return r0;
}

// FUN_0062d40c
u32 W_62d40c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 15);
    r0 = r0 & 2u;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0062d41c
u32 W_62d41c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 15);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0062d42c
u32 W_62d42c(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    r2 = *(u8*)(r0 + 17);
    fa = r2; fb = a1;
    if (fa > fb) r0 = r0 + a1;
    if (fa > fb) r0 = *(u8*)(r0 + 18);
    if (fa <= fb) r0 = 0u;
    return r0;
}

// FUN_0062d460
u32 W_62d460(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 1792u;
    r0 = *(signed char*)(r0 + 34);
    return r0;
}

// FUN_0062d46c
u32 W_62d46c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 146);
    if (r1 != 0u) goto L_62d488;
    r0 = *(u8*)(r0 + 144);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_62d48c;
    L_62d488:;
    r0 = 0u;
    L_62d48c:;
    return r0;
}

// FUN_0062d4b4
u32 W_62d4b4(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = *(u32*)(r0 + 116);
    r0 = 0u;
    if (r1 == 0u) goto L_62d4d0;
    r0 = *(signed char*)(r1 + 98);
    r2 = 0u;
    *(u8*)(r1 + 98) = r2;
    L_62d4d0:;
    return r0;
}

// FUN_0062d544
u32 W_62d544(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 104);
    fa = r0; fb = 4096u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062d558
u32 W_62d558(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 100);
    fa = r0; fb = 4096u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062d56c
u32 W_62d56c(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r12, fa, fb;
    r12 = *(u8*)(r0 + 92);
    if (r12 != 0u) goto L_62d5bc;
    r12 = *(u8*)(r0 + 136);
    if ((r12 & 1u) == 0) goto L_62d5bc;
    r12 = *(u32*)(r0 + 108);
    if (r12 == 0u) goto L_62d5bc;
    fa = r1; fb = 0u;
    if (fa != fb) r12 = *(u16*)(r0 + 132);
    if (fa != fb) *(u16*)(r1) = r12;
    fa = a2; fb = 0u;
    if (fa != fb) r1 = *(u16*)(r0 + 134);
    if (fa != fb) *(u16*)(a2) = r1;
    fa = a3; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 104);
    if (fa != fb) *(u32*)(a3) = r1;
    r0 = *(u32*)(r0 + 100);
    return r0;
    L_62d5bc:;
    r0 = 0u;
    return r0;
}

// FUN_0062da00
u32 W_62da00(u32 a0, u32 a1) {
    u32 r0;
    if (a1 >= 36u) goto L_62da1c;
    r0 = (u32)g_007b6850;
    r0 = r0 + (a1 << 3);
    r0 = *(u16*)(r0);
    if (r0 == 1u) goto L_62da20;
    L_62da1c:;
    r0 = 0u;
    L_62da20:;
    return r0;
}

// FUN_0062da28
u32 W_62da28(u32 a0, u32 a1) {
    u32 r0, fa, fb;
    fa = a1; fb = 36u;
    if (fa < fb) r0 = (u32)g_007b6850;
    if (fa < fb) r0 = r0 + (a1 << 3);
    if (fa < fb) r0 = *(u32*)(r0 + 4);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_0062da4c
u32 W_62da4c(u32 a0, u32 a1) {
    u32 r0, fa, fb;
    fa = a1; fb = 0u;
    if (fa == fb) r0 = (u32)g_007b7380;
    if (fa == fb) goto L_62da64;
    fa = a1; fb = 1u;
    if (fa == fb) r0 = (u32)g_007b7470;
    if (fa != fb) r0 = 0u;
    L_62da64:;
    return r0;
}

// FUN_0062da78
u32 W_62da78(u32 a0, u32 a1) {
    u32 r0, fa, fb;
    fa = a1; fb = 0u;
    if (fa == fb) r0 = (u32)g_007b7798;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062e520
u32 W_62e520(u32 a0, u32 a1) {
    u32 r0, fa, fb;
    fa = a1; fb = 0u;
    if (fa == fb) r0 = (u32)g_007b895c;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062e6c0
u32 W_62e6c0(u32 a0, u32 a1) {
    u32 r0, r2, fa, fb;
    fa = a1; fb = 512u;
    if (fa > fb) r0 = 33u;
    if (fa > fb) goto L_62e6e0;
    r2 = *(u32*)(r0 + 4);
    r0 = *(u16*)(r0 + 14);
    r2 = *(u32*)(r2 + 52);
    r0 = r0 + r2;
    r0 = *(u8*)(a1 + r0);
    L_62e6e0:;
    return r0;
}

// FUN_0062ec58
u32 W_62ec58(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 144);
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 132);
    return r0;
}

// FUN_0062ec68
u32 W_62ec68(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 96);
    if (r0 != 0u) r0 = *(u32*)(r0 + 152);
    return r0;
}

// FUN_0062f410
u32 W_62f410(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 260);
    if (r0 != 1u) r0 = 0u;
    return r0;
}

// FUN_0062f480
u32 W_62f480(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 104);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = r0 ^ 1u;
    return r0;
}

// FUN_0062f49c
u32 W_62f49c(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 104);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = r0 ^ 1u;
    return r0;
}

// FUN_0062f510
u32 W_62f510(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = *(u8*)(r0 + 237);
    if (r0 == 0u) goto L_62f534;
    r0 = *(u32*)(r4 + 44);
    r0 = Fn_62f0bc_1(r0);
    if (r0 == 0u) goto L_62f540;
    L_62f534:;
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_62f410_1(r0);
    r0 = r0 ^ 1u;
    L_62f540:;
    return r0;
}

// FUN_0062f544
u32 W_62f544(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 172);
    fa = r0; fb = a1;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_0062f560
u32 W_62f560(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 36);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0062f58c
u32 W_62f58c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 8);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0062f7d8
u32 W_62f7d8(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    r0 = r0 + (a1 << 2);
    r0 = *(u32*)(r0 + 272);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa != fb) r0 = *(u32*)(r0 + 76);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_0062fa8c
u32 W_62fa8c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 72);
    if (r0 == 0u) goto L_62fab0;
    r0 = (u32)g_008bfa54;
    r0 = *(u32*)(r0);
    r0 = *(u32*)(r0 + 136);
    if (r0 == 0u) goto L_62fab0;
    return Fn_626ef8_1(r0);
    L_62fab0:;
    r0 = 1u;
    return r0;
}

// FUN_0062fadc
u32 W_62fadc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 81);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 76);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062fc50
u32 W_62fc50(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0062fc90
u32 W_62fc90(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 1);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 12);
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_0062fca4
u32 W_62fca4(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 573);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 396);
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_0062fd14
u32 W_62fd14(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 149);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0063003c
u32 W_63003c() {
    u32 r0;
    r0 = 0u;
    r0 = Fn_12d4b4_1(r0);
    if (r0 != 0u) goto L_630060;
    r0 = 1u;
    r0 = Fn_12d4b4_1(r0);
    if (r0 == 0u) goto L_630064;
    L_630060:;
    r0 = 1u;
    L_630064:;
    return r0;
}

// FUN_006301ec
u32 W_6301ec(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u8*)(r0 + 20);
    return r0;
}

// FUN_006301fc
u32 W_6301fc(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u32*)(r0 + 24);
    return r0;
}

// FUN_0063020c
u32 W_63020c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u32*)(r0 + 32);
    return r0;
}

// FUN_0063021c
u32 W_63021c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u32*)(r0 + 28);
    return r0;
}

// FUN_0063022c
u32 W_63022c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00630250
u32 W_630250(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u8*)(r0);
    return r0;
}

// FUN_006304cc
u32 W_6304cc(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_6304f4;
    r1 = *(u8*)(r0 + 2);
    if (r1 == 1u) goto L_6304f0;
    r0 = *(u8*)(r0 + 1);
    if (r0 == 0u) goto L_6304f4;
    L_6304f0:;
    r0 = 1u;
    L_6304f4:;
    return r0;
}

// FUN_006304f8
u32 W_6304f8(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_630514;
    r0 = *(u8*)(r0 + 2);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_630514:;
    return r0;
}

// FUN_00630640
u32 W_630640(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 68);
    if (r0 != 0u) r0 = *(signed char*)(r0 + 3);
    return r0;
}

// FUN_006307cc
u32 W_6307cc(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u16*)(r0 + 108);
    return r0;
}

// FUN_006309e4
u32 W_6309e4(u32 a0) {
    u32 r0 = a0, r4, fa, fb;
    r4 = *(u32*)(r0 + 4);
    fa = r4; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_630a1c;
    r0 = *(u32*)(r4 + 244);
    r0 = Fn_6304b0_1(r0);
    if (r0 != 0u) goto L_630a18;
    r0 = *(u32*)(r4 + 240);
    r0 = Fn_6304b0_1(r0);
    if (r0 == 0u) goto L_630a1c;
    L_630a18:;
    r0 = 1u;
    L_630a1c:;
    return r0;
}

// FUN_00630a3c
u32 W_630a3c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 492);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_00630cac
u32 W_630cac(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 1840u;
    if (fa != fb) goto L_630cc0;
    return Fn_015564_1(r0);
    L_630cc0:;
    return r0;
}

// FUN_00630d10
u32 W_630d10(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 68);
    if (r0 != 0u) r0 = *(u32*)(r0 + 1360);
    return r0;
}

// FUN_00630e44
u32 W_630e44(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 768u;
    if (fa != fb) r0 = *(short*)(r0 + 160);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_00630e5c
u32 W_630e5c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 768u;
    if (fa != fb) r0 = *(short*)(r0 + 200);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_00630f9c
u32 W_630f9c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 768u;
    if (fa != fb) r0 = *(signed char*)(r0 + 42);
    return r0;
}

// FUN_006311d8
u32 W_6311d8(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r2 = *(u32*)(r0 + 100);
    if (r2 == 0u) goto L_63121c;
    if (a1 == 1u) goto L_631238;
    if (a1 == 3u) goto L_631208;
    r0 = *(u8*)(r0 + 90);
    r0 = r0 - 1u;
    if (r0 < 3u) goto L_631230;
    goto L_631238;
    L_631208:;
    r0 = *(u8*)(r0 + 74);
    r0 = r0 - 1u;
    if (r0 < 3u) goto L_631230;
    goto L_631238;
    L_63121c:;
    r0 = r0 + (a1 << 4);
    r0 = *(u8*)(r0 + 26);
    r0 = r0 - 1u;
    if (r0 >= 3u) goto L_631238;
    L_631230:;
    r0 = 1u;
    return r0;
    L_631238:;
    r0 = 0u;
    return r0;
}

// FUN_006314a0
u32 W_6314a0(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 84);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_006315b4
u32 W_6315b4(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    fa = a1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 24);
    if (fa != fb) *(u32*)(a1) = r0;
    r0 = 0u;
    return r0;
}

// FUN_00631f40
u32 W_631f40() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u16*)(r0 + 110);
    return r0;
}

// FUN_00631f74
u32 W_631f74() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_006322d0
u32 W_6322d0() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u32*)(r0 + 24);
    return r0;
}

// FUN_006322e4
u32 W_6322e4() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u32*)(r0 + 12);
    return r0;
}

// FUN_006322f8
u32 W_6322f8() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u8*)(r0 + 55);
    return r0;
}

// FUN_006323d4
u32 W_6323d4() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u8*)(r0 + 53);
    return r0;
}

// FUN_006323e8
u32 W_6323e8() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u8*)(r0 + 52);
    return r0;
}

// FUN_00632494
u32 W_632494() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u8*)(r0 + 108);
    return r0;
}

// FUN_006324a8
u32 W_6324a8() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u32*)(r0 + 28);
    return r0;
}

// FUN_00632520
u32 W_632520() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u8*)(r0 + 54);
    return r0;
}

// FUN_00632604
u32 W_632604() {
    u32 r0;
    r0 = Fn_631e84_0();
    if (r0 != 0u) r0 = *(u8*)(r0 + 109);
    return r0;
}

// FUN_00632948
u32 W_632948(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = 0u;
    L_63294c:;
    r2 = *(u8*)(r0 + r1);
    if (r2 != 0u) goto L_632968;
    r2 = r0 + r1;
    r2 = *(u8*)(r2 + 1);
    if (r2 == 0u) goto L_632970;
    L_632968:;
    r0 = 0u;
    return r0;
    L_632970:;
    r1 = r1 + 2u;
    if ((int)r1 < 8) goto L_63294c;
    r0 = 1u;
    return r0;
}

// FUN_0063383c
u32 W_63383c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_0063385c
u32 W_63385c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = *(short*)(r0 + 6);
    return r0;
}

// FUN_006338ac
u32 W_6338ac(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = r0 + 12u;
    return r0;
}
