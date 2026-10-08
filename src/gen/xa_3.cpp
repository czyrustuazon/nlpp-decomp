// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
void Fn_47de58();
void Fn_47e670();
u32 Fn_460274_1(u32);
u32 Fn_62fb00_1(u32);
u32 Fn_458d70_1(u32);
extern char g_00826dc4[];
u32 WeakCall0();
u32 WeakCall1(u32);
void Fn_487bac();
void Fn_498c60();
extern char g_00827110[];
void Fn_48b9d8();
extern char g_008a75dc[];
u32 Fn_3d54f8_1(u32);
u32 Fn_3d6c5c_1(u32);
u32 WeakCall2(u32, u32);
extern char g_008a78ac[];
u32 Fn_4972e4_2(u32, u32);
extern char g_00827454[];
u32 Fn_49926c_2(u32, u32);
void Fn_49ed74();
extern char g_008275f4[];
extern char g_00827740[];
extern char g_00827754[];
u32 Fn_4a1ef8_1(u32);
u32 Fn_4a2db8_1(u32);
u32 Fn_4a30ac_3(u32, u32, u32);
extern char g_008a6a10[];
extern char g_007d5314[];
u32 Fn_15c9d0_3(u32, u32, u32);
u32 Fn_0cecf4_1(u32);
u32 Fn_4ba12c_1(u32);
u32 Fn_4ba2d0_1(u32);
u32 Fn_4bd7e8_1(u32);
void Fn_2e9590();
void Fn_5be8f4();
void Fn_2f08a8();
void Fn_4c152c();
void Fn_4c5ba8();
u32 Fn_4dca94_2(u32, u32);
extern char g_0082ba18[];
void Fn_4e019c();
void Fn_5461b0();
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_00804b04[];
extern char g_008aa798[];
extern char g_009a04c0[];
extern char g_008aa7a4[];
u32 Fn_56e8ec_2(u32, u32);
u32 Fn_5c3e24_2f2(u32, u32, float, float);
u32 Fn_5c3e24_4(u32, u32, u32, u32);
extern char g_0089a330[];
u32 Fn_05845c_1(u32);
u32 Fn_0317dc_4(u32, u32, u32, u32);
u32 WeakCall3(u32, u32, u32);
extern char g_0089a430[];
void Fn_51bbe8();
void Fn_5acbe8();
void Fn_2024b0();
void Fn_5a4d94();

// FUN_004657f8
void W_4657f8() { Fn_47de58(); }

// FUN_00468128
void W_468128(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    r2_1 = 1u;
    r1_1 = ~0u;
    *(u8*)(r0) = r2_1;
    *(u32*)(r0 + 4) = r1_1;
    *(u32*)(r0 + 8) = r1_1;
    return;
}

// FUN_0046a0a8
void W_46a0a8() { Fn_47de58(); }

// FUN_00474d1c
u32 W_474d1c(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 369);
    return t1;
}

// FUN_00474e58
void W_474e58() { Fn_47de58(); }

// FUN_00474f54
void W_474f54() { Fn_47e670(); }

// FUN_004794a4
u32 W_4794a4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 88);
    if (t1 != 0) {
        return Fn_460274_1(t1);
    }
}

// FUN_00479c4c
u32 W_479c4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 299);
    return r0;
}

// FUN_0047a31c
u32 W_47a31c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 88);
    if (t1 != 0) {
        return Fn_62fb00_1(t1);
    }
}

// FUN_0047a658
u32 W_47a658(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 88);
    if (t1 != 0) {
        return Fn_458d70_1(t1);
    }
}

// FUN_00480428
u32 W_480428() {

    return 48;
}

// FUN_0048077c
void W_48077c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1;
    r1_1 = (u32)g_00826dc4;
    r2_1 = 0u;
    *(u32*)(r0 + 0) = r1_1; *(u32*)(r0 + 4) = r2_1;
    return;
}

// FUN_00484244
void W_484244() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00484e38
void W_484e38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    { WeakCall1(r0); return; }
}

// FUN_00486c00
void W_486c00() { Fn_487bac(); }

// FUN_004896c0
void W_4896c0() { Fn_498c60(); }

// FUN_00489b84
void W_489b84(u32 a0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(a0 + 4) = 0u;
    *(u32*)(a0) = ((u32)g_00827110);
    *(u32*)(a0 + 8) = 0u;
    *(u32*)(a0 + 12) = 0u;
    *(u32*)(a0 + 16) = 0u;
    *(u32*)(a0 + 20) = 0u;
    *(u32*)(a0 + 24) = 0u;
    return;
}

// FUN_0048a714
void W_48a714() { Fn_48b9d8(); }

// FUN_0048a7c4
void W_48a7c4() { Fn_487bac(); }

// FUN_0048b2a8
void W_48b2a8() { Fn_498c60(); }

// FUN_0048f43c
u32 W_48f43c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a75dc;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 5u;
    if (fa == fb) goto L_48f454;
    return Fn_3d54f8_1(r0);
    L_48f454:;
    return r0;
}

// FUN_0048f878
u32 W_48f878() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a75dc;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_48f890;
    return Fn_3d6c5c_1(r0);
    L_48f890:;
    return r0;
}

// FUN_0048fcbc
void W_48fcbc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = *(u32*)(r0 + 4);
    r1 = r1 + 308u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00496c50
u32 W_496c50() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = (u32)g_008a78ac;
    r0_2 = *(u32*)(r0_1);
    return r0_2;
}

// FUN_00497350
u32 W_497350(u32 a0) {
    return Fn_4972e4_2(a0, 5);
}

// FUN_00497560
u32 W_497560(u32 a0) {
    return Fn_4972e4_2(a0, 12);
}

// FUN_00497a10
u32 W_497a10(u32 a0) {
    return Fn_4972e4_2(a0, 10);
}

// FUN_00498c1c
void W_498c1c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00498c5c
void W_498c5c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00498da4
void W_498da4(u32 a0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(a0 + 4) = 0u;
    *(u32*)(a0) = ((u32)g_00827454);
    *(u32*)(a0 + 8) = 0u;
    *(u32*)(a0 + 12) = 0u;
    return;
}

// FUN_00499104
void W_499104(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 5);
    fa = r1; fb = 3u;
    if (fa != fb) goto L_499118;
    r1 = 0u;
    { Fn_49926c_2(r0, r1); return; }
    L_499118:;
    return;
}

// FUN_00499b7c
void W_499b7c() { Fn_49ed74(); }

// FUN_0049a6b8
void W_49a6b8() { Fn_49ed74(); }

// FUN_0049b228
void W_49b228(u32 a0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(a0 + 4) = 0u;
    *(u32*)(a0) = ((u32)g_008275f4);
    *(u32*)(a0 + 8) = 0u;
    *(u32*)(a0 + 12) = 0u;
    return;
}

// FUN_0049f5cc
void W_49f5cc() { Fn_498c60(); }

// FUN_0049f63c
void W_49f63c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1;
    r1_1 = (u32)g_00827740;
    r2_1 = 0u;
    *(u32*)(r0 + 0) = r1_1; *(u32*)(r0 + 4) = r2_1;
    return;
}

// FUN_0049f814
void W_49f814(u32 a0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(a0) = ((u32)g_00827754);
    *(u8*)(a0 + 4) = 0u;
    *(u32*)(a0 + 8) = 0u;
    *(u32*)(a0 + 12) = 0u;
    *(u32*)(a0 + 16) = 0u;
    *(u32*)(a0 + 20) = 0u;
    *(u32*)(a0 + 24) = 0u;
    *(u32*)(a0 + 28) = 0u;
    *(u32*)(a0 + 32) = 0u;
    return;
}

// FUN_004a19cc
u32 W_4a19cc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    if (t1 != 0) {
        return Fn_4a1ef8_1(t1);
    }
}

// FUN_004a1a78
u32 W_4a1a78(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    if (t1 != 0) {
        return Fn_4a2db8_1(t1);
    }
}

// FUN_004a1ee4
void W_4a1ee4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 48);
    fa = r2; fb = r1;
    if ((int)fa <= (int)fb) goto L_4a1ef4;
    { Fn_4a30ac_3(r0, r1, r2); return; }
    L_4a1ef4:;
    return;
}

// FUN_004a65e4
u32 W_4a65e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r3_1;
    r2_1 = 0u;
    *(u32*)(r0 + 8) = r2_1;
    *(u32*)(r0 + 12) = r2_1;
    r3_1 = r2_1;
    *(u32*)(r0 + 16) = r2_1;
    *(u64*)(r0) = (u64)r2_1 | ((u64)r3_1 << 32);
    *(u8*)(r0 + 20) = r2_1;
    return r0;
}

// FUN_004aa564
u32 W_4aa564(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2;
    r1_1 = (u32)g_008a6a10;
    r0_1 = r0 << 1;
    r0_2 = *(u32*)(r1_1 + (r0_1 << 2));
    return r0_2;
}

// FUN_004ac2f0
void W_4ac2f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 8u;
    if (fa >= fb) goto L_4ac30c;
    r2 = (u32)g_007d5314;
    r0 = *(u32*)(r0 + 256);
    r1 = *(u32*)(r2 + (r1 << 2));
    r2 = 0u;
    { Fn_15c9d0_3(r0, r1, r2); return; }
    L_4ac30c:;
    return;
}

// FUN_004b0eb8
u32 W_4b0eb8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 92);
    if (t1 != 0) {
        return Fn_0cecf4_1(t1);
    }
}

// FUN_004b2a54
void W_4b2a54(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 100) = a1;
}

// FUN_004b56e4
u32 W_4b56e4() {

    return 1;
}

// FUN_004b87f4
u32 W_4b87f4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    if (t1 != 0) {
        return Fn_4ba12c_1(t1);
    }
}

// FUN_004b88b0
u32 W_4b88b0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    if (t1 != 0) {
        return Fn_4ba2d0_1(t1);
    }
}

// FUN_004b8e04
void W_4b8e04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = *(u32*)(r0 + 68);
    fa = r0_1; fb = 0u;
    if (fa != fb) *(u8*)(r0_1 + 1941) = r1;
    return;
}

// FUN_004bf168
u32 W_4bf168(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    if (t1 != 0) {
        return Fn_4bd7e8_1(t1);
    }
}

// FUN_004c1900
void W_4c1900() { Fn_2e9590(); }

// FUN_004c1eb8
void W_4c1eb8() { Fn_5be8f4(); }

// FUN_004c531c
void W_4c531c() { Fn_2f08a8(); }

// FUN_004c908c
void W_4c908c() { Fn_4c152c(); }

// FUN_004c9388
void W_4c9388() { Fn_4c152c(); }

// FUN_004c96ac
void W_4c96ac() { Fn_4c152c(); }

// FUN_004c99d0
void W_4c99d0() { Fn_4c152c(); }

// FUN_004c9cf4
void W_4c9cf4() { Fn_4c152c(); }

// FUN_004ca018
void W_4ca018() { Fn_4c152c(); }

// FUN_004ca33c
void W_4ca33c() { Fn_4c152c(); }

// FUN_004ca660
void W_4ca660() { Fn_4c152c(); }

// FUN_004ca984
void W_4ca984() { Fn_4c152c(); }

// FUN_004cad14
void W_4cad14() { Fn_4c152c(); }

// FUN_004cb0a4
void W_4cb0a4() { Fn_4c152c(); }

// FUN_004cb434
void W_4cb434() { Fn_4c152c(); }

// FUN_004cb7c4
void W_4cb7c4() { Fn_4c152c(); }

// FUN_004cbb54
void W_4cbb54() { Fn_4c152c(); }

// FUN_004cbee4
void W_4cbee4() { Fn_4c152c(); }

// FUN_004cc274
void W_4cc274() { Fn_4c152c(); }

// FUN_004cc604
void W_4cc604() { Fn_4c152c(); }

// FUN_004cc994
void W_4cc994() { Fn_4c152c(); }

// FUN_004ccd50
void W_4ccd50() { Fn_4c5ba8(); }

// FUN_004ccddc
void W_4ccddc() { Fn_4c152c(); }

// FUN_004cd224
void W_4cd224() { Fn_4c152c(); }

// FUN_004cd66c
void W_4cd66c() { Fn_4c152c(); }

// FUN_004cdab4
void W_4cdab4() { Fn_4c152c(); }

// FUN_004cdefc
void W_4cdefc() { Fn_4c152c(); }

// FUN_004ce344
void W_4ce344() { Fn_4c152c(); }

// FUN_004ce78c
void W_4ce78c() { Fn_4c152c(); }

// FUN_004cebd4
void W_4cebd4() { Fn_4c152c(); }

// FUN_004daa34
u32 W_4daa34(u32 a0) {
    return Fn_4dca94_2(a0, 3);
}

// FUN_004db770
void W_4db770(u32 a0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(a0 + 4) = 0u;
    *(u32*)(a0) = ((u32)g_0082ba18);
    *(u32*)(a0 + 8) = 0u;
    *(u32*)(a0 + 12) = 0u;
    *(u32*)(a0 + 16) = 0u;
    *(u32*)(a0 + 20) = 0u;
    *(u32*)(a0 + 24) = 0u;
    return;
}

// FUN_004df50c
void W_4df50c() {

}

// FUN_004df560
void W_4df560() { Fn_4e019c(); }

// FUN_005432f8
u32 W_5432f8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 316);
    r0 = *(u32*)(r1);
    r0 = r0 & ~4278190080u;
    *(u32*)(r2 + 16) = r0;
    return r0;
}

// FUN_0054b808
void W_54b808() {

}

// FUN_0054c334
void W_54c334() { Fn_5461b0(); }

// FUN_0056c9e0
u32 W_56c9e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    fa = r0; fb = r1;
    if (fa == fb) r0 = 0u;
    if (fa < fb) r0 = ~0u;
    if (fa > fb) r0 = 1u;
    return r0;
}

// FUN_005712e4
void W_5712e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_571310;
    r1 = *(u32*)(r1 + 24);
    fa = r1; fb = 1u;
    if (fa != fb) goto L_571310;
    r3 = 0u;
    r2 = r3;
    r1 = 2u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_571310:;
    return;
}

// FUN_00571fa0
void W_571fa0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u8*)(r0) = r1;
    *(u8*)(r0 + 1) = r1;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    r2 = r1;
    *(u32*)(r0 + 16) = r1;
    L_571fc0:;
    r3 = r0 + (r2 << 2);
    r2 = r2 + 1u;
    fa = r2; fb = 3u;
    *(u32*)(r3 + 20) = r1;
    if (fa < fb) goto L_571fc0;
    return;
}

// FUN_00576988
void W_576988(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u16*)((u32)(a0) + 4) = 0;
    *(u16*)((u32)(a0) + 6) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
}

// FUN_005769e0
u32 W_5769e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    fa = r0; fb = r1;
    if (fa > fb) r0 = 1u;
    if (fa == fb) r0 = 0u;
    if (fa < fb) r0 = ~0u;
    return r0;
}

// FUN_00576db4
void W_576db4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1;
    r2_1 = (u32)g_00804b04;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2_1;
    return;
}

// FUN_0059cb30
void W_59cb30(u32 a0, float p0, float p1, float p2) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1 = p1, f2 = p2, ffa, ffb;
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    return;
}

// FUN_005b2cb4
void W_5b2cb4(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
}

// FUN_005baa44
u32 W_5baa44() {

    return 1;
}

// FUN_005be294
void W_5be294() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r2_1;
    r1_1 = (u32)g_009a04c0;
    r0_1 = 0u;
    r2_1 = (u32)g_008aa798;
    *(u32*)(r1_1) = r0_1;
    *(u32*)(r1_1 + 4) = r0_1;
    *(u32*)(r1_1 + 8) = r0_1;
    *(u32*)(r1_1 + 12) = r0_1;
    *(u32*)(r1_1 + 16) = r0_1;
    *(u32*)(r1_1 + 20) = r0_1;
    *(u32*)(r1_1 + 24) = r0_1;
    *(u32*)(r1_1 + 28) = r0_1;
    *(u32*)(r1_1 + 32) = r0_1;
    *(u32*)(r1_1 + 36) = r0_1;
    *(u16*)(r2_1) = r0_1;
    *(u32*)(r1_1 + 40) = r0_1;
    *(u32*)(r1_1 + 44) = r0_1;
    *(u32*)(r1_1 + 48) = r0_1;
    *(u16*)(r2_1 + 2) = r0_1;
    return;
}

// FUN_005c0ad4
void W_5c0ad4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = (u32)g_008aa7a4;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5c0aec;
    { Fn_56e8ec_2(r0, r1); return; }
    L_5c0aec:;
    return;
}

// FUN_005c1ba8
u32 W_5c1ba8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = 377094145u;
    return r0_1;
}

// FUN_005c3f08
void W_5c3f08(u32 a0, float p0, float p1) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1 = p1, ffa, ffb;
    r1 = a0 + 72u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    { Fn_5c3e24_2f2(a0, r1, f0, f1); return; }
}

// FUN_005c45b8
void W_5c45b8(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1;
    *(u32*)(r0 + 24) = r2;
    *(u32*)((r0 + 16u) + 0) = r1; *(u32*)((r0 + 16u) + 4) = r3;
    { Fn_5c3e24_4(r0, r1, r2, r3); return; }
}

// FUN_005c8120
void W_5c8120() { Fn_4e019c(); }

// FUN_005cbf64
void W_5cbf64(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r1_2;
    r1_1 = (u32)g_0089a330;
    r2_1 = *(u32*)(r1_1 + 140);
    *(u8*)(r0 + 7) = r2_1;
    r1_2 = *(u32*)(r1_1 + 144);
    *(u8*)(r0 + 8) = r1_2;
    return;
}

// FUN_005cf2b8
u32 W_5cf2b8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0089a330;
    r0 = *(u32*)(r1 + 76);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_5cf2e4;
    r0 = *(u32*)(r1 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r1 + 48);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa == fb) r0 = *(u32*)(r1 + 44);
    if (fa == fb) { fa = r0; fb = 0u; }
    if (fa != fb) r0 = *(u32*)(r0 + 12);
    L_5cf2e4:;
    return r0;
}

// FUN_005cf45c
u32 W_5cf45c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 60);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 181);
    return r0;
}

// FUN_005d02e8
u32 W_5d02e8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_0089a330;
    r0 = *(u32*)(r0 + 132);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_5d0300;
    return Fn_05845c_1(r0);
    L_5d0300:;
    return r0;
}

// FUN_005d28c8
void W_5d28c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5d28f4;
    r2 = (u32)g_0089a330;
    r3 = *(u32*)(r2 + 172);
    fa = r3; fb = 0u;
    if (fa == fb) r1 = 0u;
    if (fa == fb) *(u8*)(r0) = r1;
    if (fa == fb) goto L_5d28f4;
    r2 = r1 - 1u;
    r1 = r3;
    { Fn_0317dc_4(r0, r1, r2, r3); return; }
    L_5d28f4:;
    return;
}

// FUN_005d39a4
void W_5d39a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 94);
    r1 = *(signed char*)(r0 + 93);
    r0 = *(signed char*)(r0 + 92);
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_005d4660
void W_5d4660(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    r1_1 = (u32)g_0089a430;
    *(u32*)(r1_1 + 12) = r0;
    return;
}

// FUN_005d4bd8
u32 W_5d4bd8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = (u32)g_0089a330;
    r0_2 = *(signed char*)(r0_1 + 21);
    return r0_2;
}

// FUN_005d4d20
void W_5d4d20(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    r1_1 = (u32)g_0089a330;
    *(u8*)(r1_1 + 21) = r0;
    return;
}

// FUN_005d517c
u32 W_5d517c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = (u32)g_0089a330;
    r0_2 = *(u8*)(r0_1 + 14);
    return r0_2;
}

// FUN_005d9650
u32 W_5d9650(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 68);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) r1 = r1 + 8u;
    if (fa == fb) goto L_5d9688;
    L_5d9664:;
    r2 = *(u32*)(r1 + 8);
    fa = r2; fb = 0u - 1u;
    if (fa == fb) goto L_5d9678;
    r0 = 1u;
    return r0;
    L_5d9678:;
    r0 = r0 + 1u;
    fa = r0; fb = 16u;
    r1 = r1 + 56u;
    if ((int)fa < (int)fb) goto L_5d9664;
    L_5d9688:;
    r0 = 0u;
    return r0;
}

// FUN_005d9750
u32 W_5d9750(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 1424);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_005dc610
void W_5dc610() { Fn_51bbe8(); }

// FUN_005e6c40
void W_5e6c40() { Fn_5acbe8(); }

// FUN_005e83cc
void W_5e83cc() { Fn_2024b0(); }

// FUN_005e8b74
void W_5e8b74() { Fn_2024b0(); }

// FUN_005e8ca0
void W_5e8ca0() { Fn_2024b0(); }

// FUN_005f5964
void W_5f5964() { Fn_5a4d94(); }
