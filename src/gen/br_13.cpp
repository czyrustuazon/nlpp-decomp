// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_008bfac4[];
extern char g_008a833c[];
extern char g_008bfa44[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_5c3b90_3(u32, u32, u32);
extern char g_0089a330[];
extern char g_008a8348[];
u32 Fn_3caeb8_1(u32);
u32 Fn_5ebcb4_2(u32, u32);
u32 Fn_2d75b8_2(u32, u32);
u32 Fn_5db4b4_3(u32, u32, u32);
extern char g_007be0b0[];
u32 Fn_2d767c_2(u32, u32);
u32 Fn_4d43d4_2(u32, u32);
u32 Fn_185834_2(u32, u32);
u32 Fn_20004c_4(u32, u32, u32, u32);
u32 Fn_3caf00_1(u32);
u32 Fn_3e49d0_1(u32);
u32 Fn_5c0d4c_3(u32, u32, u32);
u32 Fn_4d7fcc_1(u32);
u32 Fn_5ca800_1(u32);
u32 Fn_5cc4d0_3(u32, u32, u32);
u32 Fn_626138_3(u32, u32, u32);
u32 Fn_058464_1(u32);
u32 Fn_5bd3f0_0();
u32 Fn_3cb56c_2(u32, u32);
u32 Fn_05860c_1(u32);
extern char g_0089a430[];
u32 Fn_395b24_3(u32, u32, u32);
u32 Fn_058614_1(u32);
u32 Fn_60cac8_1(u32);
u32 Fn_1fcd88_1(u32);
extern char g_008a82b8[];
u32 Fn_5d742c_4(u32, u32, u32, u32);
extern char g_008bfad4[];
u32 Fn_5d9690_2(u32, u32);
u32 Fn_5d93e0_1(u32);
u32 Fn_5d9750_1(u32);
u32 Fn_5da6dc_2(u32, u32);
u32 Fn_5da7b4_2(u32, u32);
u32 Fn_5da87c_2(u32, u32);
u32 Fn_5daee0_2(u32, u32);
extern char g_007e39cc[];
u32 Fn_5df578_2(u32, u32);
u32 Fn_5af758_2(u32, u32);
u32 Fn_5ea28c_1(u32);
u32 Fn_5455b8_4(u32, u32, u32, u32);
extern char g_008bfa48[];
u32 Fn_5e7a20_1(u32);
u32 Fn_569be4_3(u32, u32, u32);
u32 Fn_6695f8_1(u32);
u32 Fn_029ed4_2(u32, u32);
u32 Fn_5e9988_2(u32, u32);
extern char g_0082f004[];
u32 Fn_5451d0_0();

// FUN_005bbb9c
u32 W_5bbb9c(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3, fa, fb;
    r2 = *(u32*)(r0 + 136);
    fa = r2; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa == fb) goto L_5bbbc8;
    L_5bbbac:;
    r3 = *(u32*)(r2);
    if (r3 == 0u) goto L_5bbbd0;
    r0 = r0 + 1u;
    r2 = r2 + 4u;
    if ((int)r0 < 32) goto L_5bbbac;
    L_5bbbc8:;
    r0 = ~0u;
    return r0;
    L_5bbbd0:;
    *(u32*)(r2) = a1;
    return r0;
}

// FUN_005bc2e0
void W_5bc2e0(u32 a0, u32 a1) {
    u32 r1 = a1;
    if (r1 >= 5u) r1 = 3u;
    *(u8*)(a0 + 110) = r1;
    return;
}

// FUN_005bc8e4
u32 W_5bc8e4() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = *(short*)(r0 + 120);
    return r0;
}

// FUN_005bc8f8
u32 W_5bc8f8() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = *(short*)(r0 + 122);
    return r0;
}

// FUN_005bc934
u32 W_5bc934(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfac4;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 88);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005bc950
u32 W_5bc950(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfac4;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 96);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005bc96c
u32 W_5bc96c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfac4;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 92);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005bc988
u32 W_5bc988(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfac4;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 84);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005bc9a4
u32 W_5bc9a4() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = r0 + 768u;
    r0 = *(short*)(r0 + 106);
    return r0;
}

// FUN_005bc9bc
u32 W_5bc9bc() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = r0 + 768u;
    r0 = *(short*)(r0 + 108);
    return r0;
}

// FUN_005bd404
u32 W_5bd404() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = *(u8*)(r0 + 126);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_005bd420
u32 W_5bd420() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = *(u8*)(r0 + 125);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_005bd43c
u32 W_5bd43c() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = *(short*)(r0 + 116);
    return r0;
}

// FUN_005bd450
u32 W_5bd450() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = *(short*)(r0 + 118);
    return r0;
}

// FUN_005bd464
u32 W_5bd464() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = r0 + 768u;
    r0 = *(short*)(r0 + 102);
    return r0;
}

// FUN_005bd47c
u32 W_5bd47c() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = r0 + 768u;
    r0 = *(short*)(r0 + 104);
    return r0;
}

// FUN_005bd494
u32 W_5bd494(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfac4;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 72);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005bd4b0
u32 W_5bd4b0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfac4;
    r1 = *(u32*)(r1);
    r1 = *(u32*)(r1 + 68);
    r0 = r0 & r1;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_005bd4cc
u32 W_5bd4cc() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = r0 + 768u;
    r0 = *(short*)(r0 + 114);
    return r0;
}

// FUN_005bd4e4
u32 W_5bd4e4() {
    u32 r0;
    r0 = (u32)g_008bfac4;
    r0 = *(u32*)(r0);
    r0 = r0 + 768u;
    r0 = *(short*)(r0 + 116);
    return r0;
}

// FUN_005befe8
u32 W_5befe8(u32 a0, u32 a1) {
    u32 r0 = a0, r2, fa, fb;
    r2 = *(u8*)(r0 + 152);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_5bf008;
    fa = a1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 156);
    if (fa != fb) *(u32*)(a1) = r0;
    r0 = 1u;
    L_5bf008:;
    return r0;
}

// FUN_005c26c8
void W_5c26c8() {
    u32 r0, r1;
    r0 = (u32)g_008a833c;
    r1 = *(u8*)(r0);
    *(u8*)(r0 + 1) = r1;
    return;
}

// FUN_005c2b18
void W_5c2b18(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3, fa, fb;
    r2 = *(u32*)(r0);
    r3 = 1u;
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 416) = a1;
    if (fa != fb) *(u8*)(r2 + 476) = r3;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) *(u32*)(r0 + 416) = a1;
    if (fa != fb) *(u8*)(r0 + 476) = r3;
    return;
}

// FUN_005c2ca0
void W_5c2ca0(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3, fa, fb;
    r2 = *(u32*)(r0);
    r3 = 1u;
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 408) = a1;
    if (fa != fb) *(u8*)(r2 + 476) = r3;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) *(u32*)(r0 + 408) = a1;
    if (fa != fb) *(u8*)(r0 + 476) = r3;
    return;
}

// FUN_005c2df8
void W_5c2df8(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3, fa, fb;
    r2 = *(u32*)(r0);
    r3 = 1u;
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 412) = a1;
    if (fa != fb) *(u8*)(r2 + 476) = r3;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) *(u32*)(r0 + 412) = a1;
    if (fa != fb) *(u8*)(r0 + 476) = r3;
    return;
}

// FUN_005c6ab8
u32 W_5c6ab8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, fa, fb;
    r1 = r1 + (r1 << 6);
    fa = a2; fb = 32u;
    r1 = r1 + (r1 << 2);
    r0 = r0 + (r1 << 2);
    if (fa < fb) r1 = a2 + (a2 << 2);
    r0 = r0 + 260u;
    if (fa < fb) r0 = r0 + (r1 << 3);
    if (fa < fb) r0 = *(signed char*)(r0 + 32);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_005c7388
u32 W_5c7388() {
    u32 r0;
    r0 = (u32)g_008bfa44;
    r0 = *(u32*)(r0);
    r0 = *(signed char*)(r0 + 44);
    return r0;
}

// FUN_005c8144
void W_5c8144(u32 a0, u32 a1) {
    *(u32*)(a0 + 96) = a1;
    if (a1 != 0u) *(u32*)(a1 + 68) = a0;
    return;
}

// FUN_005c9d98
u32 W_5c9d98(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5;
    r4 = r0;
    r5 = r1;
    r0 = 0u;
    if (r2 != 0u) goto L_5c9dd8;
    r2 = 16u;
    r1 = 5u;
    r0 = 1440u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_5c9dd8;
    r2 = r5;
    r1 = r4;
    return Fn_5c3b90_3(r0, r1, r2);
    L_5c9dd8:;
    return r0;
}

// FUN_005ca83c
u32 W_5ca83c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = (u32)g_0089a330;
    r1 = *(u32*)(r1 + 60);
    if (r1 == 0u) goto L_5ca864;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = *(u8*)(r1 + 169);
    if (fa == fb) goto L_5ca868;
    fa = r0; fb = 1u;
    if (fa == fb) r0 = *(u8*)(r1 + 175);
    if (fa == fb) goto L_5ca868;
    L_5ca864:;
    r0 = 0u;
    L_5ca868:;
    return r0;
}

// FUN_005cafc8
u32 W_5cafc8() {
    u32 r0, r1;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 116);
    if (r0 == 0u) goto L_5cafe4;
    r0 = Fn_3caeb8_1(r0);
    goto L_5caff0;
    L_5cafe4:;
    r0 = (u32)g_008a8348;
    r1 = 39u;
    r0 = Fn_5ebcb4_2(r0, r1);
    L_5caff0:;
    r0 = r0 & 255u;
    return r0;
}

// FUN_005cb1e8
void W_5cb1e8(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = r0;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r1 << 3;
    if (fa != fb) r0 = Fn_2d75b8_2(r0, r1);
    r2 = 0u;
    r0 = 16778010u;
    r1 = r2;
    { Fn_5db4b4_3(r0, r1, r2); return; }
}

// FUN_005cbcf0
u32 W_5cbcf0(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = (u32)g_0089a330;
    r2 = *(u32*)(r1 + 60);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_5cbd2c;
    fa = r0; fb = 0u;
    r1 = 0u;
    if ((int)fa >= (int)fb) r1 = (u32)g_007be0b0;
    if ((int)fa >= (int)fb) r1 = *(u8*)(r1 + r0);
    fa = r1; fb = 6u;
    if (fa >= fb) goto L_5cbd2c;
    r0 = r2 + r1;
    r0 = *(u8*)(r0 + 181);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_5cbd30;
    L_5cbd2c:;
    r0 = 0u;
    L_5cbd30:;
    return r0;
}

// FUN_005cbd60
void W_5cbd60(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 92);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5cbd7c;
    r1 = r1 << 3;
    { Fn_2d767c_2(r0, r1); return; }
    L_5cbd7c:;
    return;
}

// FUN_005cccd0
u32 W_5cccd0() {
    u32 r0, r1, r4;
    r4 = (u32)g_0089a330;
    r0 = *(u32*)(r4 + 68);
    if (r0 == 0u) goto L_5ccd28;
    r1 = 0u;
    r0 = Fn_4d43d4_2(r0, r1);
    if (r0 == 0u) goto L_5ccd00;
    r0 = *(u8*)(r0 + 10);
    if (r0 == 6u) goto L_5ccd2c;
    L_5ccd00:;
    r0 = *(u32*)(r4 + 68);
    r1 = 1u;
    r0 = Fn_4d43d4_2(r0, r1);
    if (r0 == 0u) goto L_5ccd24;
    r0 = *(u8*)(r0 + 10);
    if (r0 == 6u) goto L_5ccd2c;
    L_5ccd24:;
    r0 = 0u;
    L_5ccd28:;
    return r0;
    L_5ccd2c:;
    r0 = 1u;
    return r0;
}

// FUN_005ccd60
u32 W_5ccd60(u32 a0) {
    u32 r0 = a0, r1, r4, fx;
    r4 = (u32)g_0089a330;
    r1 = r0;
    r0 = *(u32*)(r4 + 60);
    if (r0 == 0u) goto L_5ccda0;
    r0 = Fn_185834_2(r0, r1);
    r0 = *(u32*)(r4 + 60);
    r0 = *(u32*)(r0 + 136);
    if (r0 == 0u) goto L_5ccd9c;
    r0 = *(u8*)(r0 + 45);
    fx = r0 & 4u;
    if (fx != 0) r0 = 1u;
    if (fx != 0) goto L_5ccda0;
    L_5ccd9c:;
    r0 = 0u;
    L_5ccda0:;
    return r0;
}

// FUN_005ccfa4
void W_5ccfa4(u32 a0) {
    u32 r1;
    r1 = (u32)g_0089a330;
    r1 = *(u32*)(r1 + 120);
    if (r1 != 0u) *(u32*)(r1 + 116) = a0;
    return;
}

// FUN_005cdefc
u32 W_5cdefc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = r0;
    r0 = (u32)g_0089a330;
    r3 = r1;
    r0 = *(u32*)(r0 + 188);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5cdf48;
    r1 = r0 + r2;
    r1 = *(u8*)(r1 + 188);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_5cdf48;
    r1 = r2 + (r2 << 3);
    r2 = 144u;
    r0 = r0 + (r1 << 4);
    r1 = r0 + 192u;
    r0 = r3;
    r0 = Fn_20004c_4(r0, r1, r2, r3);
    r0 = 1u;
    L_5cdf48:;
    return r0;
}

// FUN_005ce040
u32 W_5ce040() {
    u32 r0, r1, r2, r3;
    r0 = (u32)g_0089a330;
    r1 = *(u32*)(r0 + 60);
    r0 = 0u;
    if (r1 == 0u) goto L_5ce08c;
    L_5ce054:;
    r2 = r0 & 255u;
    if (r2 >= 10u) goto L_5ce08c;
    r3 = *(u32*)(r1 + 136);
    if (r3 == 0u) goto L_5ce08c;
    r2 = r1 + (r2 << 1);
    r2 = *(u16*)(r2 + 148);
    if (r2 == 0u) goto L_5ce08c;
    r0 = r0 + 1u;
    if ((int)r0 < 10) goto L_5ce054;
    r0 = 10u;
    L_5ce08c:;
    return r0;
}

// FUN_005ce270
u32 W_5ce270() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 116);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 30u;
    if (fa == fb) goto L_5ce288;
    return Fn_3caf00_1(r0);
    L_5ce288:;
    return r0;
}

// FUN_005cf42c
void W_5cf42c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = 6400u;
    if (r0 == 37u) r4 = 45569u;
    r0 = r0 & 255u;
    r0 = Fn_3e49d0_1(r0);
    r1 = r0;
    r0 = r4;
    r2 = 1u;
    { Fn_5c0d4c_3(r0, r1, r2); return; }
}

// FUN_005d000c
u32 W_5d000c() {
    u32 r0, r4;
    r4 = (u32)g_0089a330;
    r0 = *(u32*)(r4 + 72);
    if (r0 == 0u) goto L_5d0050;
    r0 = Fn_4d7fcc_1(r0);
    if (r0 == 0u) goto L_5d0050;
    r0 = *(u32*)(r4 + 52);
    if (r0 != 0u) goto L_5d0058;
    r0 = *(u32*)(r4 + 48);
    if (r0 != 0u) goto L_5d0058;
    r0 = *(u32*)(r4 + 44);
    if (r0 == 0u) goto L_5d0058;
    L_5d0050:;
    r0 = ~0u;
    return r0;
    L_5d0058:;
    return Fn_5ca800_1(r0);
}

// FUN_005d01ac
u32 W_5d01ac(u32 a0, u32 a1) {
    u32 r0 = a0, r2;
    r2 = r0;
    r0 = ~0u;
    if (r2 == 0) r0 = a1;
    if (r2 == 0) goto L_5d01c4;
    if (r2 == 1u) r0 = a1 + 3u;
    L_5d01c4:;
    return r0;
}

// FUN_005d08fc
void W_5d08fc(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3;
    r2 = (u32)g_0089a330;
    r3 = *(u8*)(r2 + 11);
    *(u8*)(r0) = r3;
    r0 = *(u8*)(r2 + 12);
    *(u8*)(a1) = r0;
    return;
}

// FUN_005d092c
u32 W_5d092c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, r6, r7;
    r5 = 0u;
    r7 = r0;
    r6 = r1;
    r4 = r5;
    L_5d0940:;
    r2 = r6;
    r1 = r4;
    r0 = r7;
    r0 = Fn_5cc4d0_3(r0, r1, r2);
    if (r0 == 0u) goto L_5d096c;
    r4 = r4 + 1u;
    r5 = r5 + 1u;
    if ((int)r4 < 5) goto L_5d0940;
    L_5d096c:;
    r0 = r5;
    return r0;
}

// FUN_005d09dc
u32 W_5d09dc() {
    u32 r0, r1, r2, fa, fb;
    r1 = (u32)g_0089a330;
    r0 = 0u;
    r2 = *(u32*)(r1 + 48);
    r1 = *(u32*)(r1 + 52);
    if (r2 != 0u) r0 = *(u32*)(r2 + 56);
    if (r1 != 0u) r0 = *(u32*)(r1 + 56);
    if (r0 == 0u) goto L_5d0a1c;
    r1 = 67110462u;
    r0 = Fn_626138_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 38u;
    if (fa != fb) goto L_5d0a20;
    L_5d0a1c:;
    r0 = 37u;
    L_5d0a20:;
    return r0;
}

// FUN_005d0a2c
u32 W_5d0a2c() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5d0a44;
    return Fn_058464_1(r0);
    L_5d0a44:;
    return r0;
}

// FUN_005d0a5c
u32 W_5d0a5c() {
    u32 r0, fa, fb;
    r0 = Fn_5bd3f0_0();
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_005d166c
void W_5d166c(u32 a0) {
    u32 r1, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) r1 = (u32)g_0089a330;
    if (fa != fb) *(u32*)(r1 + 168) = a0;
    return;
}

// FUN_005d18f4
void W_5d18f4(u32 a0) {
    u32 r1, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) r1 = (u32)g_0089a330;
    if (fa != fb) *(u32*)(r1 + 164) = a0;
    return;
}

// FUN_005d1908
void W_5d1908(u32 a0) {
    u32 r1, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) r1 = (u32)g_0089a330;
    if (fa != fb) *(u32*)(r1 + 180) = a0;
    return;
}

// FUN_005d1b78
u32 W_5d1b78() {
    u32 r0;
    r0 = (u32)g_0089a330;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_005d1d68
u32 W_5d1d68() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(signed char*)(r0 + 132);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_005d1e18
void W_5d1e18(u32 a0, u32 a1) {
    u32 r0 = a0, fa, fb;
    fa = r0; fb = 1u;
    if (fa == fb) r0 = 18u;
    if (fa == fb) goto L_5d1e48;
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 12u;
    if (fa == fb) goto L_5d1e48;
    fa = r0; fb = 3u;
    if (fa == fb) r0 = 6u;
    if (fa == fb) goto L_5d1e48;
    fa = r0; fb = 4u;
    if (fa == fb) r0 = 0u;
    if (fa != fb) goto L_5d1e4c;
    L_5d1e48:;
    *(u32*)(a1) = r0;
    L_5d1e4c:;
    return;
}

// FUN_005d27b4
void W_5d27b4(u32 a0) {
    u32 r1, r2;
    r1 = (u32)g_0089a330;
    r2 = 5188u;
    r1 = *(u16*)(r1 + 32);
    if (r1 >= r2) r1 = ~0u;
    *(u32*)(a0) = r1;
    return;
}

// FUN_005d27f4
u32 W_5d27f4() {
    u32 r0, r1;
    r0 = (u32)g_0089a330;
    r1 = *(u32*)(r0 + 116);
    r0 = 1u;
    if (r1 == 0u) goto L_5d2810;
    r0 = r1;
    return Fn_3cb56c_2(r0, r1);
    L_5d2810:;
    return r0;
}

// FUN_005d2818
void W_5d2818(u32 a0) {
    u32 r1, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) r1 = (u32)g_0089a330;
    if (fa != fb) *(u32*)(r1 + 176) = a0;
    return;
}

// FUN_005d28fc
void W_5d28fc(u32 a0) {
    u32 r1, r2;
    r1 = (u32)g_0089a330;
    r2 = 5188u;
    r1 = *(u16*)(r1 + 30);
    if (r1 >= r2) r1 = ~0u;
    *(u32*)(a0) = r1;
    return;
}

// FUN_005d299c
void W_5d299c(u32 a0) {
    u32 r1, fa, fb;
    fa = a0; fb = 0u;
    if (fa != fb) r1 = (u32)g_0089a330;
    if (fa != fb) *(u32*)(r1 + 172) = a0;
    return;
}

// FUN_005d2c90
u32 W_5d2c90() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5d2ca8;
    return Fn_05860c_1(r0);
    L_5d2ca8:;
    return r0;
}

// FUN_005d2cb0
u32 W_5d2cb0() {
    u32 r0;
    r0 = (u32)g_0089a330;
    r0 = *(signed char*)(r0 + 15);
    return r0;
}

// FUN_005d3d80
u32 W_5d3d80() {
    u32 r0;
    r0 = (u32)g_0089a330;
    r0 = *(signed char*)(r0 + 25);
    return r0;
}

// FUN_005d3f80
u32 W_5d3f80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, fa, fb;
    r2 = r0;
    r0 = (u32)g_0089a430;
    r4 = r1;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5d3fb0;
    r0 = *(u32*)(r0 + 20);
    r1 = r2;
    r0 = Fn_395b24_3(r0, r1, r2);
    *(u32*)(r4) = r0;
    r0 = 1u;
    L_5d3fb0:;
    return r0;
}

// FUN_005d457c
u32 W_5d457c() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5d4594;
    return Fn_058614_1(r0);
    L_5d4594:;
    return r0;
}

// FUN_005d4f6c
u32 W_5d4f6c() {
    u32 r0, fa, fb;
    r0 = (u32)g_0089a430;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_005d53d4
u32 W_5d53d4() {
    u32 r0, r1, fa, fb;
    r0 = (u32)g_0089a330;
    r1 = *(u32*)(r0 + 52);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_5d5408;
    r1 = *(u32*)(r0 + 48);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_5d5408;
    r0 = *(u32*)(r0 + 44);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 2u;
    if (fa == fb) r0 = 3u;
    L_5d5408:;
    return r0;
}

// FUN_005d5494
u32 W_5d5494() {
    u32 r0;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 52);
    if (r0 == 0u) return r0;
    r0 = *(u32*)(r0 + 36);
    r0 = *(u32*)(r0 + 100);
    r0 = Fn_60cac8_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_005d5f34
void W_5d5f34(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    L_5d5f34:;
    if (r0 == 0u) goto L_5d5f54;
    r1 = *(u32*)(r0 + 136);
    r1 = r1 & 16711680u;
    fa = r1; fb = 1048576u;
    if (fa != fb) r0 = *(u32*)(r0 + 4);
    if (fa != fb) goto L_5d5f34;
    L_5d5f54:;
    return;
}

// FUN_005d6c08
u32 W_5d6c08(u32 a0) {
    u32 r0 = a0, r4, r5;
    r5 = 0u;
    r4 = r0;
    *(u32*)(r0 + 4) = r5;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_5d6c2c;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r4 + 8) = r5;
    L_5d6c2c:;
    r0 = r4;
    return r0;
}

// FUN_005d7a54
u32 W_5d7a54(u32 a0) {
    u32 r0 = a0, r1;
    if ((int)r0 <= 0) goto L_5d7a64;
    if ((int)r0 < 5) goto L_5d7a6c;
    L_5d7a64:;
    r0 = 0u;
    return r0;
    L_5d7a6c:;
    r1 = (u32)g_008a82b8;
    r0 = r0 + (r0 << 2);
    r0 = r1 + (r0 << 2);
    return r0;
}

// FUN_005d7a80
u32 W_5d7a80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = *(u8*)(r0 + 444);
    if (r2 != 0u) goto L_5d7a9c;
    if ((int)r1 <= 0) goto L_5d7a9c;
    if ((int)r1 < 5) goto L_5d7aa4;
    L_5d7a9c:;
    r0 = 0u;
    return r0;
    L_5d7aa4:;
    r3 = (u32)g_008a82b8;
    r2 = r1 + (r1 << 2);
    *(u8*)(r0 + 445) = r1;
    r3 = r3 + (r2 << 2);
    r2 = r1;
    r1 = r3;
    return Fn_5d742c_4(r0, r1, r2, r3);
}

// FUN_005db2a8
u32 W_5db2a8(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5db2c4;
    return Fn_5d9690_2(r0, r1);
    L_5db2c4:;
    return r0;
}

// FUN_005db340
u32 W_5db340(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = Fn_5d93e0_1(r0);
    r0 = 1u;
    return r0;
}

// FUN_005db3f4
u32 W_5db3f4() {
    u32 r0, fa, fb;
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_5db40c;
    return Fn_5d9750_1(r0);
    L_5db40c:;
    return r0;
}

// FUN_005db5cc
u32 W_5db5cc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5db5e8;
    return Fn_5da6dc_2(r0, r1);
    L_5db5e8:;
    return r0;
}

// FUN_005db608
u32 W_5db608(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5db624;
    return Fn_5da7b4_2(r0, r1);
    L_5db624:;
    return r0;
}

// FUN_005db62c
u32 W_5db62c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5db648;
    return Fn_5da87c_2(r0, r1);
    L_5db648:;
    return r0;
}

// FUN_005db750
u32 W_5db750(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfad4;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5db76c;
    return Fn_5daee0_2(r0, r1);
    L_5db76c:;
    return r0;
}

// FUN_005dbdd0
void W_5dbdd0(u32 a0, u32 a1, u32 a2) {
    u32 r1 = a1, r2 = a2;
    if (r2 == 1u) goto L_5dbde4;
    if (r2 != 2u) *(u32*)(a0 + 152) = r1;
    return;
    L_5dbde4:;
    r2 = *(u32*)(a0 + 152);
    r1 = r1 + r2;
    *(u32*)(a0 + 152) = r1;
    return;
}

// FUN_005dc8a8
u32 W_5dc8a8(u32 a0, u32 a1) {
    u32 r0, r2, fa, fb;
    r2 = 3625997305u;
    r0 = 0u;
    if (a1 == r2) goto L_5dc8dc;
    r0 = r2 - 260046848u;
    if (a1 == r0) goto L_5dc8d8;
    r0 = 3376435201u;
    fa = a1; fb = r0;
    if (fa != fb) r0 = 4183838722u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5dc8dc;
    L_5dc8d8:;
    r0 = 2u;
    L_5dc8dc:;
    return r0;
}

// FUN_005dd704
void W_5dd704(u32 a0) {
    u32 r1;
    r1 = ~0u;
    *(u32*)(a0 + 56) = r1;
    return;
}

// FUN_005deb1c
u32 W_5deb1c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_5deb30;
    if (r1 < 4u) goto L_5deb38;
    L_5deb30:;
    r0 = 0u;
    return r0;
    L_5deb38:;
    r2 = 12u;
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0 + r1);
    return r0;
}

// FUN_005df298
void W_5df298() {
    u32 r0, r4, r5;
    r4 = 1u;
    r5 = (u32)g_007e39cc;
    L_5df2a4:;
    r0 = r5 + (r4 << 4);
    r0 = *(u32*)(r0 + 8);
    if (r0 != 0u) r0 = ((u32(*)())r0)();
    r4 = r4 + 1u;
    if ((int)r4 < 15) goto L_5df2a4;
    return;
}

// FUN_005df6b0
u32 W_5df6b0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 68);
    if (r1 != 0u) r0 = Fn_5df578_2(r0, r1);
    r0 = 1u;
    return r0;
}

// FUN_005e36d0
void W_5e36d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6, fa, fb;
    r5 = r0;
    r6 = r1;
    r4 = 0u;
    L_5e36e0:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 88);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_5af758_2(r0, r1);
    r4 = r4 + 1u;
    if ((int)r4 < 4) goto L_5e36e0;
    return;
}

// FUN_005e7aa0
u32 W_5e7aa0(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u8*)(r0 + 20);
    if (r0 != 0u) goto L_5e7ae0;
    r0 = *(u32*)(r4 + 4);
    if (r0 == 0u) goto L_5e7acc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    r0 = ((u32(*)(u32))r1)(r0);
    L_5e7acc:;
    r0 = *(u32*)(r4 + 8);
    if (r0 == 0u) goto L_5e7ae0;
    return Fn_5ea28c_1(r0);
    L_5e7ae0:;
    return r0;
}

// FUN_005e7d38
u32 W_5e7d38(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = *(u32*)(r0 + 4);
    r2 = 0u;
    if (r0 == 0u) goto L_5e7d64;
    r1 = *(u32*)(r1 + 4);
    r3 = *(u32*)(r1 + 12);
    if (r3 != r0) goto L_5e7d64;
    r0 = Fn_5455b8_4(r0, r1, r2, r3);
    r2 = 1u;
    L_5e7d64:;
    r0 = r2;
    return r0;
}

// FUN_005e8198
void W_5e8198(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_5e81cc;
    r1 = *(u8*)(r0 + 183);
    if ((r1 & 8u) == 0) goto L_5e81cc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 4) = r0;
    L_5e81cc:;
    return;
}

// FUN_005e8220
void W_5e8220(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) *(u8*)(r0 + 180) = a1;
    return;
}

// FUN_005e8318
void W_5e8318(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_5e834c;
    r1 = *(u8*)(r0 + 183);
    if ((r1 & 8u) == 0) goto L_5e834c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_5e834c:;
    return;
}

// FUN_005e8ac0
void W_5e8ac0(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_5e8af4;
    r1 = *(u8*)(r0 + 183);
    if ((r1 & 8u) == 0) goto L_5e8af4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_5e8af4:;
    return;
}

// FUN_005e8bec
void W_5e8bec(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_5e8c20;
    r1 = *(u8*)(r0 + 183);
    if ((r1 & 8u) == 0) goto L_5e8c20;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_5e8c20:;
    return;
}

// FUN_005e9100
void W_5e9100(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 32);
    if ((int)r0 <= 0) goto L_5e9118;
    r0 = (u32)g_008bfa48;
    r0 = *(u32*)(r0);
    { Fn_5e7a20_1(r0); return; }
    L_5e9118:;
    return;
}

// FUN_005e9e58
void W_5e9e58(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = *(u32*)(r0 + 32);
    if ((int)r1 <= 0) return;
    r1 = *(u8*)(r0 + 292);
    if (r1 == 0u) return;
    r1 = *(u32*)(r0 + 52);
    r0 = *(u32*)(r0 + 56);
    r2 = 0u;
    r0 = Fn_569be4_3(r0, r1, r2);
    r0 = 16383u;
    { Fn_6695f8_1(r0); return; }
}

// FUN_005ea064
void W_5ea064(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    r0 = r1;
    if (r0 == 0) goto L_5ea074;
    r1 = 1u;
    { Fn_029ed4_2(r0, r1); return; }
    L_5ea074:;
    return;
}

// FUN_005ea27c
void W_5ea27c(u32 a0, u32 a1) {
    u32 r0;
    r0 = a1;
    if (r0 == 0) goto L_5ea288;
    { Fn_5e9988_2(r0, a1); return; }
    L_5ea288:;
    return;
}

// FUN_005ea54c
void W_5ea54c() {
    u32 r0, r1, r2, r3, r4, r12;
    r0 = Fn_5451d0_0();
    r1 = (u32)g_0082f004;
    r2 = 58u;
    *(u32*)(r0) = r1;
    r1 = 0u;
    r3 = r1;
    L_5ea568:;
    r12 = r0 + (r1 << 1);
    r4 = r0 + (r1 << 2);
    r12 = r12 + 256u;
    *(u32*)(r4 + 168) = r3;
    r2 = r2 - 1u;
    r1 = r1 + 1u;
    *(u16*)(r12 + 144) = r3;
    if (r2 != 0) goto L_5ea568;
    return;
}

// FUN_005ebe58
u32 W_5ebe58(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_5ebe80;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_5ebe80:;
    r0 = r4;
    return r0;
}

// FUN_005efe64
u32 W_5efe64(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3;
    r2 = 0u;
    if (a1 == 0u) goto L_5efe84;
    r3 = 7592u;
    r2 = r0 + 7168u;
    r2 = r2 + 296u;
    r0 = *(u8*)(r3 + r0);
    *(u32*)(a1) = r0;
    L_5efe84:;
    r0 = r2;
    return r0;
}

// FUN_005efe90
u32 W_5efe90(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3;
    r2 = 0u;
    if (a1 == 0u) goto L_5efeb0;
    r3 = 7594u;
    r2 = r0 + 7168u;
    r2 = r2 + 40u;
    r0 = *(u8*)(r3 + r0);
    *(u32*)(a1) = r0;
    L_5efeb0:;
    r0 = r2;
    return r0;
}
