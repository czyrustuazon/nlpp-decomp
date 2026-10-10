// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_011b7c_0();
u32 WeakCall1(u32);
u32 WeakCall3(u32, u32, u32);
u32 Fn_013150_1(u32);
u32 Fn_01d0f0_1(u32);
u32 WeakCall2(u32, u32);
u32 Fn_01d9f0_1(u32);
u32 Fn_513014_0();
u32 Fn_029b80_2(u32, u32);
u32 WeakCall4(u32, u32, u32, u32);
u32 Fn_073918_1(u32);
u32 Fn_06e718_1(u32);
u32 Fn_07a280_1(u32);
u32 Fn_07e3fc_1(u32);
u32 WeakCall3f1(u32, u32, u32, float);
u32 Fn_163f3c_0();
u32 Fn_165f44_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_187e94_2(u32, u32);
u32 Fn_5d5e34_2(u32, u32);
u32 WeakCall4f2(u32, u32, u32, u32, float, float);
u32 Fn_5d53d4_1(u32);
u32 Fn_199cc0_1(u32);
u32 Fn_04d578_0();
u32 Fn_5c7c28_1(u32);
u32 Fn_260c7c_3(u32, u32, u32);
u32 Fn_260cb0_3(u32, u32, u32);
u32 Fn_262d04_0();
u32 Fn_277f60_3(u32, u32, u32);
u32 Fn_27d300_1(u32);
u32 Fn_27e308_1(u32);
u32 Fn_2dc1f4_1(u32);
u32 Fn_4a97d0_1(u32);
u32 Fn_420308_1(u32);
u32 Fn_4443e4_3(u32, u32, u32);
u32 Fn_48fe70_1(u32);
u32 Fn_484b08_1(u32);
u32 Fn_48b0c4_1(u32);
u32 Fn_48f2b8_1(u32);
u32 Fn_4982c0_1(u32);
u32 Fn_3c5170_2(u32, u32);
u32 Fn_4d8f0c_1(u32);
u32 Fn_6312cc_1(u32);
u32 Fn_4d47a0_2(u32, u32);
u32 Fn_4d5ad4_3(u32, u32, u32);

// FUN_00073b14
void W_073b14(u32 a0) {
    u32 r0 = a0;
    if (r0 == 0u) goto L_73b20;
    { Fn_073918_1(r0); return; }
    L_73b20:;
    { WeakCall1(r0); return; }
}

// FUN_00079974
void W_079974(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    r0 = Fn_06e718_1(r0);
    r0 = r4;
    r0 = Fn_07a280_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_0007e1f4
void W_07e1f4(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = Fn_07e3fc_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_000ce0a4
void W_0ce0a4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    float f0;
    f0 = u2f(r1);
    *(u8*)(r0 + 20) = r2;
    r1 = 1u;
    f0 = (float)(int)f2u(f0);
    *(float*)(r0 + 28) = f0;
    { WeakCall3f1(r0, r1, r2, f0); return; }
}

// FUN_0013a1c4
void W_13a1c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r12;
    r2 = 0u;
    L_13a1c8:;
    r3 = *(u32*)(r1 + (r2 << 2));
    r12 = r0 + (r2 << 2);
    r2 = r2 + 1u;
    *(u32*)(r12 + 84) = r3;
    if ((int)r2 < (int)2u) goto L_13a1c8;
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_00162378
void W_162378() {
    u32 r0;
    r0 = Fn_163f3c_0();
    { WeakCall1(r0); return; }
}

// FUN_00167428
void W_167428(u32 a0) {
    u32 r0 = a0, r4, r5;
    r4 = r0;
    r0 = *(u32*)(r0);
    r5 = 0u;
    if (r0 == 0u) goto L_16744c;
    r0 = Fn_165f44_1(r0);
    r0 = Fn_2024b0_1(r0);
    *(u32*)(r4) = r5;
    L_16744c:;
    r0 = r4;
    *(u32*)(r4 + 216) = r5;
    { WeakCall1(r0); return; }
}

// FUN_00187bd0
void W_187bd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r4 = r0;
    *(u32*)(r0 + 68) = r1;
    r0 = Fn_187e94_2(r0, r1);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_0018fcc8
void W_18fcc8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r4 = r0;
    *(u8*)(r0 + 86) = r1;
    r0 = Fn_5d5e34_2(r0, r1);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_001b7878
void W_1b7878(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    *(u8*)(r0 + 376) = r1;
    r2 = 0u;
    r1 = 6u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_001be398
void W_1be398(u32 a0, u32 a1, u32 a2, u32 a3, float p0) {
    u32 r0 = a0, r1, r2 = a2, r3 = a3, r12;
    float f0 = p0, f1;
    r1 = r2;
    r12 = r0 + 96u;
    r2 = r3;
    *(u32*)(r12 + 0) = r1; *(u32*)(r12 + 4) = r2;
    *(float*)(r0 + 104) = f0;
    f1 = *(float*)(r0 + 108);
    { WeakCall4f2(r0, r1, r2, r3, f0, f1); return; }
}

// FUN_001c784c
void W_1c784c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u8*)(r1);
    *(u16*)(r0 + 216) = r2;
    r2 = *(u8*)(r1 + 1);
    *(u16*)(r0 + 218) = r2;
    r2 = *(u8*)(r1 + 2);
    *(u16*)(r0 + 220) = r2;
    r1 = *(u8*)(r1 + 3);
    *(u16*)(r0 + 222) = r1;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_001d1d58
void W_1d1d58(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa != fb) r1 = 0u;
    *(u8*)(r0 + 36) = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_001db474
void W_1db474(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_5d53d4_1(r0);
    r1 = r0;
    r0 = r4;
    { WeakCall2(r0, r1); return; }
}

// FUN_001eabd0
void W_1eabd0(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_199cc0_1(r0);
    r0 = r4;
    r1 = ~0u;
    { WeakCall2(r0, r1); return; }
}

// FUN_002024a0
void W_2024a0() {
    u32 r0;
    r0 = Fn_04d578_0();
    { WeakCall1(r0); return; }
}

// FUN_002251d0
u32 W_2251d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4;
    r4 = r0;
    r0 = Fn_5c7c28_1(r0);
    r3 = 1u;
    r0 = r4;
    r2 = 0u;
    r1 = r3;
    return WeakCall4(r0, r1, r2, r3);
}

// FUN_0025f814
void W_25f814(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(signed char*)(r0 + 85);
    r1 = *(signed char*)(r0 + 84);
    r0 = *(u32*)(r0 + 80);
    r0 = Fn_260c7c_3(r0, r1, r2);
    { WeakCall1(r0); return; }
}

// FUN_0025f86c
void W_25f86c(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(signed char*)(r0 + 85);
    r1 = *(signed char*)(r0 + 84);
    r0 = *(u32*)(r0 + 80);
    r0 = Fn_260cb0_3(r0, r1, r2);
    { WeakCall1(r0); return; }
}

// FUN_002624bc
void W_2624bc() {
    u32 r0;
    r0 = Fn_262d04_0();
    { WeakCall1(r0); return; }
}

// FUN_00279e98
void W_279e98(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5;
    r5 = r0;
    r0 = Fn_27d300_1(r0);
    r4 = 0u;
    L_279ea8:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 1264);
    if (r0 == 0u) goto L_279ec4;
    r2 = 0u;
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    L_279ec4:;
    r4 = r4 + 1u;
    if ((int)r4 < (int)2u) goto L_279ea8;
    r1 = *(u8*)(r5 + 816);
    r0 = r5;
    { WeakCall2(r0, r1); return; }
}

// FUN_0027cd7c
void W_27cd7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4;
    r4 = r0;
    r0 = Fn_27e308_1(r0);
    r3 = 0u;
    r0 = r4;
    r2 = r3;
    r1 = r3;
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_002cd3f4
void W_2cd3f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r3 = *(signed char*)(r0 + 9);
    r2 = *(signed char*)(r0 + 8);
    r1 = *(u32*)(r0 + 4);
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_002cdd70
void W_2cdd70(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r3 = *(signed char*)(r0 + 9);
    r2 = *(signed char*)(r0 + 8);
    r1 = *(u32*)(r0 + 4);
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_002d7158
void W_2d7158(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = r0 + 12u;
    r0 = Fn_2dc1f4_1(r0);
    r0 = r4 + 36u;
    { WeakCall1(r0); return; }
}

// FUN_002d75f4
void W_2d75f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r1 = 127u;
    r3 = r0 + 20u;
    *(u32*)(r0 + 12) = r1;
    r2 = 43u;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r3 + 0) = r1; *(u32*)(r3 + 4) = r2;
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_00318a50
void W_318a50(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(signed char*)(r0 + 17);
    r1 = *(signed char*)(r0 + 16);
    r0 = *(u32*)(r0 + 8);
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_003c5154
void W_3c5154(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 220);
    r0 = Fn_4a97d0_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_00406884
void W_406884(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r0 = *(u32*)(r0 + 100);
    r0 = *(u32*)(r0 + (r1 << 2));
    r1 = r2;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_0041788c
void W_41788c(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = Fn_420308_1(r0);
    r0 = *(u32*)(r4 + 76);
    { WeakCall1(r0); return; }
}

// FUN_00444450
void W_444450(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = *(u32*)(r0 + 16);
    r4 = r0;
    r1 = 2147483669u;
    r0 = Fn_4443e4_3(r0, r1, r2);
    r0 = r4;
    r1 = 0u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00488420
void W_488420(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r3 = *(u32*)(r0 + 68);
    r2 = r1;
    r1 = r0;
    r0 = r3;
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_00490ddc
void W_490ddc(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = Fn_48fe70_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_004972c4
void W_4972c4(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 684);
    r0 = Fn_484b08_1(r0);
    r0 = r4;
    r1 = 6u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00498a24
void W_498a24(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_48b0c4_1(r0);
    r0 = r4 + 136u;
    r1 = 2u;
    { WeakCall2(r0, r1); return; }
}

// FUN_0049efa0
void W_49efa0(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_4982c0_1(r0);
    r0 = Fn_48f2b8_1(r0);
    r2 = *(u32*)(r4 + 32);
    r1 = r0;
    r0 = r2;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_004a977c
void W_4a977c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5;
    r5 = r1;
    r4 = r0;
    r0 = Fn_3c5170_2(r0, r1);
    r0 = *(u32*)(r4 + 220);
    r1 = r5;
    { WeakCall2(r0, r1); return; }
}

// FUN_004c016c
void W_4c016c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u16*)(r0 + 106);
    if (r1 == 0u) goto L_4c0188;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = *(u8*)(r0 + 105);
    if (fa == fb) *(u8*)(r0 + 104) = r1;
    return;
    L_4c0188:;
    r1 = 1u;
    { WeakCall2(r0, r1); return; }
}

// FUN_004d45a8
u32 W_4d45a8(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 132);
    if (r0 != 0u) goto L_4d45e4;
    r0 = r4;
    r0 = Fn_4d8f0c_1(r0);
    if (r0 == 0u) goto L_4d45e8;
    r0 = *(u32*)(r4 + 152);
    if (r0 == 0u) goto L_4d45e4;
    r0 = Fn_6312cc_1(r0);
    if (r0 == 0u) goto L_4d45ec;
    L_4d45e4:;
    r0 = 0u;
    L_4d45e8:;
    return r0;
    L_4d45ec:;
    r0 = *(u32*)(r4 + 152);
    return WeakCall1(r0);
}

// FUN_004d4778
void W_4d4778(u32 a0) {
    u32 r0 = a0, r1, r4;
    if (r0 == 0u) return;
    r4 = r0;
    r1 = 0u;
    r0 = Fn_4d47a0_2(r0, r1);
    r0 = r4;
    r1 = 1u;
    { WeakCall2(r0, r1); return; }
}

// FUN_004d5aa4
void W_4d5aa4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4;
    r4 = r0;
    if (r1 == 0u) goto L_4d5ac0;
    r2 = 0u;
    r1 = 39u;
    r0 = Fn_4d5ad4_3(r0, r1, r2);
    L_4d5ac0:;
    r0 = r4;
    r2 = 0u;
    r1 = 41u;
    { WeakCall3(r0, r1, r2); return; }
}
