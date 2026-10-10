// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_496714_2(u32, u32);
u32 Fn_498144_1(u32);
u32 Fn_492ccc_2(u32, u32);
u32 Fn_4821b4_1(u32);
u32 Fn_4972e4_2(u32, u32);
extern char g_008273e8[];
extern char g_008a78ac[];
u32 Fn_4e019c_1(u32);
u32 Fn_48f2b8_1(u32);
u32 Fn_4982c0_2(u32, u32);
u32 Fn_49efc4_3(u32, u32, u32);
u32 Fn_49fa00_0();
u32 Fn_4a30ac_3(u32, u32, u32);
u32 Fn_3061ec_5(u32, u32, u32, u32, u32);
u32 Fn_4a8b4c_1(u32);
u32 Fn_4a908c_3(u32, u32, u32);
u32 Fn_4c74a4_3(u32, u32, u32);
extern char g_00827c60[];
u32 Fn_4e019c_2(u32, u32);
extern char g_008bfdf4[];
u32 Fn_4ba2d0_4(u32, u32, u32, u32);
u32 Fn_4c5c18_5(u32, u32, u32, u32, u32);
u32 Fn_015600_0();
u32 Fn_3671a0_5(u32, u32, u32, u32, u32);
u32 Fn_376f14_5(u32, u32, u32, u32, u32);
u32 Fn_623730_5(u32, u32, u32, u32, u32);
u32 Fn_688300_1(u32);
u32 Fn_68839c_2(u32, u32);
u32 Fn_58353c_5(u32, u32, u32, u32, u32);
u32 Fn_586280_5(u32, u32, u32, u32, u32);
u32 Fn_5321cc_0f4(float, float, float, float);
u32 Fn_531f08_0f2(float, float);
u32 Fn_5321cc_0f3(float, float, float);
u32 Fn_531f08_0();
u32 Fn_01c820_0();
u32 Fn_5b1800_5(u32, u32, u32, u32, u32);
extern char g_009ab304[];
u32 Fn_029f88_5(u32, u32, u32, u32, u32);
u32 Fn_5c7990_1f2(u32, float, float);
extern char g_006c9d44[];
u32 Fn_5eb828_4(u32, u32, u32, u32);
u32 Fn_4e019c_0();
u32 Fn_5d6300_0();
extern char g_00550023[];
u32 Fn_5992a0_2(u32, u32);
u32 Fn_608520_1(u32);
u32 Fn_60ad48_1(u32);
u32 Fn_5f65d0_1(u32);
u32 Fn_005b2c_1(u32);
u32 Fn_5f5d48_1(u32);
u32 Fn_5f5e48_1(u32);
u32 Fn_5fb6dc_1(u32);
u32 Fn_5fb814_1(u32);
u32 Fn_5fc78c_1(u32);
u32 Fn_6018d0_5(u32, u32, u32, u32, u32);
u32 Fn_6028a4_5(u32, u32, u32, u32, u32);
u32 Fn_6029f8_5(u32, u32, u32, u32, u32);
extern char g_0082f6f0[];
extern char g_0082f700[];
u32 Fn_5fd468_1(u32);
u32 Fn_5fd568_1(u32);
extern char g_0082f710[];
extern char g_0082f780[];
u32 Fn_597d58_0();
u32 Fn_61ba38_0();
extern char g_008a86f0[];
u32 Fn_56cfa8_5(u32, u32, u32, u32, u32);
extern char g_008a865c[];
u32 Fn_61c41c_0();
u32 Fn_61ca0c_0();
u32 Fn_61a8f4_2(u32, u32);
u32 Fn_630cc4_1f1(u32, float);
u32 Fn_630d20_1(u32);
u32 Fn_630df0_1(u32);

// FUN_004888e8
void W_4888e8(u32 a0) throw() {
    u32 r0 = a0, r1, r4;
    r1 = 0u;
    r4 = r0;
    *(u8*)(r0 + 1812) = r1;
    r0 = *(u32*)(r0 + 1808);
    r0 = Fn_496714_2(r0, r1);
    r0 = *(u32*)(r4 + 1800);
    r0 = Fn_498144_1(r0);
    return;
}

// FUN_0048b4d8
void W_48b4d8(u32 a0) throw() {
    u32 r0 = a0, r0_1, r1_1, r0_2;
    r0_1 = *(u32*)(r0 + 40);
    r1_1 = 3u;
    r0_2 = Fn_492ccc_2(r0_1, r1_1);
    return;
}

// FUN_0048b4ec
void W_48b4ec(u32 a0) throw() {
    u32 r0 = a0, r4_1, r0_1, r0_2, r0_3, r1_1, r0_4;
    r4_1 = r0;
    r0_1 = r0 + 44u;
    r0_2 = Fn_4821b4_1(r0_1);
    r0_3 = *(u32*)(r4_1 + 40);
    r1_1 = 1u;
    r0_4 = Fn_492ccc_2(r0_3, r1_1);
    return;
}

// FUN_0048b50c
void W_48b50c(u32 a0) throw() {
    u32 r0 = a0, r0_1, r1_1, r0_2;
    r0_1 = *(u32*)(r0 + 40);
    r1_1 = 5u;
    r0_2 = Fn_492ccc_2(r0_1, r1_1);
    return;
}

// FUN_00496c60
void W_496c60(u32 a0) throw() {
    u32 r0 = a0, r0_1, r1_1, r0_2;
    r0_1 = *(u32*)(r0 + 96);
    r1_1 = 12u;
    r0_2 = Fn_4972e4_2(r0_1, r1_1);
    return;
}

// FUN_00498144
void W_498144(u32 a0) throw() {
    u32 r0 = a0, r0_1, r1_1, r0_2;
    r0_1 = *(u32*)(r0 + 96);
    r1_1 = 10u;
    r0_2 = Fn_4972e4_2(r0_1, r1_1);
    return;
}

// FUN_004983b0
void W_4983b0(u32 a0) throw() {
    u32 r0 = a0, r0_1;
    *(u32*)(r0) = ((u32)g_008273e8);
    *(u32*)(((u32)g_008a78ac)) = 0u;
    r0_1 = Fn_4e019c_1(r0);
    return;
}

// FUN_0049d76c
void W_49d76c(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4;
    r4 = r0;
    *(u8*)(r0 + 2964) = r1;
    if (r1 == 0u) goto L_49d798;
    r0 = Fn_4982c0_2(r0, r1);
    r0 = Fn_48f2b8_1(r0);
    r2 = *(u32*)(r4 + 2992);
    r1 = r0;
    r0 = r2;
    r0 = Fn_49efc4_3(r0, r1, r2);
    L_49d798:;
    return;
}

// FUN_0049f200
void W_49f200() throw() {
    u32 r0_1;
    r0_1 = Fn_49fa00_0();
    return;
}

// FUN_004a19ac
void W_4a19ac(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = *(u32*)(r0 + 48);
    if (fa != fb) { fa = r2; fb = r1; }
    if ((int)fa <= (int)fb) goto L_4a19c8;
    r0 = Fn_4a30ac_3(r0, r1, r2);
    L_4a19c8:;
    return;
}

// FUN_004a6ec0
void W_4a6ec0(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r0_1;
    r0_1 = Fn_3061ec_5(r0, r1, r2, r3, a4);
    return;
}

// FUN_004a97d0
void W_4a97d0(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_4a97f8;
    r2 = *(u8*)(r0 + 3);
    *(u8*)(r0 + 1) = r1;
    if (r2 == 0u) goto L_4a97fc;
    if (r2 == 1u) r0 = Fn_4a908c_3(r0, r1, r2);
    L_4a97f8:;
    return;
    L_4a97fc:;
    r0 = Fn_4a8b4c_1(r0);
    return;
}

// FUN_004aa4d0
void W_4aa4d0(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_4aa4f0;
    r1 = *(u32*)(r0 + 76);
    r0 = *(u32*)(r0 + 224);
    r2 = 1u;
    r0 = Fn_4c74a4_3(r0, r1, r2);
    L_4aa4f0:;
    return;
}

// FUN_004b7fc4
void W_4b7fc4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r0_1;
    r1_1 = (u32)g_00827c60;
    *(u32*)(r0) = r1_1;
    r0_1 = Fn_4e019c_2(r0, r1_1);
    return;
}

// FUN_004b87c0
void W_4b87c0(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_4b87ec;
    r2 = *(u32*)(r0 + 740);
    r3 = (u32)g_008bfdf4;
    if (r1 > 3u) r1 = 2u;
    r2 = r3 + (r2 << 6);
    r1 = r2 + (r1 << 4);
    r0 = Fn_4ba2d0_4(r0, r1, r2, r3);
    L_4b87ec:;
    return;
}

// FUN_004c8db8
void W_4c8db8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16792832u;
    r2_1 = 3019898881u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004c9090
void W_4c9090(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16792832u;
    r2_1 = 3019898882u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004c938c
void W_4c938c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16792832u;
    r2_1 = 3019898883u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004c96b0
void W_4c96b0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16796930u;
    r2_1 = 1476395008u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004c99d4
void W_4c99d4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16796930u;
    r2_1 = 1493172224u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004c9cf8
void W_4c9cf8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16796930u;
    r2_1 = 1509949440u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ca01c
void W_4ca01c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16796930u;
    r2_1 = 1526726656u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ca340
void W_4ca340(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16796930u;
    r2_1 = 1543503872u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ca664
void W_4ca664(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16796930u;
    r2_1 = 3154116608u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ca988
void W_4ca988(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184564992u;
    r2_1 = 3019898881u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cad18
void W_4cad18(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184564992u;
    r2_1 = 3019898882u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cb0a8
void W_4cb0a8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184564992u;
    r2_1 = 3019898883u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cb438
void W_4cb438(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184569090u;
    r2_1 = 1476395008u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cb7c8
void W_4cb7c8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184569090u;
    r2_1 = 1493172224u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cbb58
void W_4cbb58(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184569090u;
    r2_1 = 1509949440u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cbee8
void W_4cbee8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184569090u;
    r2_1 = 1526726656u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cc278
void W_4cc278(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184569090u;
    r2_1 = 1543503872u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cc608
void W_4cc608(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184569090u;
    r2_1 = 3154116608u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cc998
void W_4cc998(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335559936u;
    r2_1 = 3019898881u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ccde0
void W_4ccde0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335559936u;
    r2_1 = 3019898882u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cd228
void W_4cd228(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335559936u;
    r2_1 = 3019898883u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cd670
void W_4cd670(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335564034u;
    r2_1 = 1476395008u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cdab8
void W_4cdab8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335564034u;
    r2_1 = 1493172224u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cdf00
void W_4cdf00(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335564034u;
    r2_1 = 1509949440u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ce348
void W_4ce348(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335564034u;
    r2_1 = 1526726656u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004ce790
void W_4ce790(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335564034u;
    r2_1 = 1543503872u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_004cebd8
void W_4cebd8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335564034u;
    r2_1 = 3154116608u;
    r0_1 = Fn_4c5c18_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0056c9c8
void W_56c9c8() throw() {
    u32 r0_1;
    r0_1 = Fn_015600_0();
    return;
}

// FUN_00572c80
void W_572c80(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00572cf8
void W_572cf8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00572e7c
void W_572e7c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00572f04
void W_572f04(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00573410
void W_573410(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00573524
void W_573524(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 23u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00573544
void W_573544(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00574060
void W_574060(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00574238
void W_574238(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_005742a8
void W_5742a8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00574348
void W_574348(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_005753dc
void W_5753dc(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_005754c0
void W_5754c0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 1u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_0057577c
void W_57577c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 15u;
    r0_1 = Fn_3671a0_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00575be4
void W_575be4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00575c74
void W_575c74(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 3u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00575e1c
void W_575e1c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 10u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00575f20
void W_575f20(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r1_2, r0_1;
    r1_1 = 0u;
    r3_1 = r1_1;
    r2_1 = r1_1;
    r1_2 = 11u;
    r0_1 = Fn_376f14_5(r0, r1_2, r2_1, r3_1, r1_1);
    return;
}

// FUN_00577a64
void W_577a64(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) throw() {
    u32 r0 = a0, r2 = a2, r3 = a3, r1_1, r0_1;
    r1_1 = a4;
    r0_1 = Fn_623730_5(r0, r1_1, r2, r3, r1_1);
    return;
}

// FUN_005817a4
void W_5817a4(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r4, fa, fb;
    r4 = r0 + 8u;
    r0 = *(u32*)(r0 + 16);
    *(u32*)(r4 + 12) = r1;
    fa = r0; fb = r1;
    if (fa < fb) r0 = r4;
    if (fa < fb) r0 = Fn_68839c_2(r0, r1);
    r0 = r4;
    r0 = Fn_688300_1(r0);
    return;
}

// FUN_005839e8
void W_5839e8(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r0_1;
    r0_1 = Fn_58353c_5(r0, r1, r2, ((1u << (r3 & 255)) & 255u), a4);
    return;
}

// FUN_00586264
void W_586264(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r0_1;
    r0_1 = Fn_586280_5(a0, 0u, a1, a2, a3);
    return;
}

// FUN_0059b904
void W_59b904(u32 a0, u32 a1) throw() {
    u32 r1 = a1, r0_1;
    float f2_1, f3_1, f0_1, f1_1, f0_2, f1_2, f2_2;
    f2_1 = 40.7436638f;
    f3_1 = *(float*)(r1 + 8);
    f0_1 = *(float*)(r1 + 0);
    f1_1 = *(float*)(r1 + 4);
    f0_2 = f0_1 * f2_1;
    f1_2 = f1_1 * f2_1;
    f2_2 = f3_1 * f2_1;
    r0_1 = Fn_5321cc_0f4(f0_2, f1_2, f2_2, f3_1);
    return;
}

// FUN_0059ba40
void W_59ba40(float p0) throw() {
    u32 r0_1;
    float f0 = p0, f1_1, f0_1;
    f1_1 = 40.7436638f;
    f0_1 = f0 * f1_1;
    r0_1 = Fn_531f08_0f2(f0_1, f1_1);
    return;
}

// FUN_0059baa0
void W_59baa0(u32 a0, u32 a1) throw() {
    u32 r1 = a1, r0_1;
    float f2_1, f3_1, f0_1, f1_1, f0_2, f1_2, f2_2;
    f2_1 = 0.711111128f;
    f3_1 = *(float*)(r1 + 8);
    f0_1 = *(float*)(r1 + 0);
    f1_1 = *(float*)(r1 + 4);
    f0_2 = f0_1 * f2_1;
    f1_2 = f1_1 * f2_1;
    f2_2 = f3_1 * f2_1;
    r0_1 = Fn_5321cc_0f4(f0_2, f1_2, f2_2, f3_1);
    return;
}

// FUN_0059bb54
void W_59bb54(float p0) throw() {
    u32 r0_1;
    float f0 = p0, f1_1, f0_1;
    f1_1 = 0.711111128f;
    f0_1 = f0 * f1_1;
    r0_1 = Fn_531f08_0f2(f0_1, f1_1);
    return;
}

// FUN_0059bb6c
void W_59bb6c(u32 a0, u32 a1) throw() {
    u32 r1 = a1, r0_1;
    float f0_1, f1_1, f2_1;
    f0_1 = *(float*)(r1 + 0);
    f1_1 = *(float*)(r1 + 4);
    f2_1 = *(float*)(r1 + 8);
    r0_1 = Fn_5321cc_0f3(f0_1, f1_1, f2_1);
    return;
}

// FUN_0059bb7c
void W_59bb7c() throw() {
    u32 r0_1;
    r0_1 = Fn_531f08_0();
    return;
}

// FUN_0059d1b0
void W_59d1b0() throw() {
    u32 r0_1;
    r0_1 = Fn_01c820_0();
    return;
}

// FUN_005b1a58
void W_5b1a58(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r0_1;
    r0_1 = Fn_5b1800_5(r0, (r1 << 2), ((r1 + (r1 << 1)) << 1), r2, r3);
    return;
}

// FUN_005b2444
void W_5b2444(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r0_1;
    r0_1 = Fn_029f88_5(a0, ((u32)g_009ab304), a1, a2, a3);
    return;
}

// FUN_005c7970
void W_5c7970(u32 a0) throw() {
    u32 r0 = a0, r0_1;
    float f0_1, f1_1, f0_2, f0_3;
    f0_1 = *(float*)(r0 + 28);
    f1_1 = 0.0174532924f;
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    r0_1 = Fn_5c7990_1f2(r0, f0_3, f1_1);
    return;
}

// FUN_005c7b94
void W_5c7b94(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r3_1, r2_1, r0_1, r1_1, r0_2;
    r3_1 = (u32)g_006c9d44;
    r2_1 = r1;
    r0_1 = *(u32*)(r0 + 8);
    r1_1 = r3_1;
    r0_2 = Fn_5eb828_4(r0_1, r1_1, r2_1, r3_1);
    return;
}

// FUN_005c8184
void W_5c8184() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_005c96a4
void W_5c96a4() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_005d6d0c
void W_5d6d0c() throw() {
    u32 r0_1;
    r0_1 = Fn_5d6300_0();
    return;
}

// FUN_005e347c
void W_5e347c() throw() {
    u32 r0_1, r1_1, r0_2;
    r0_1 = (u32)g_00550023;
    r1_1 = 0u;
    r0_2 = Fn_5992a0_2(r0_1, r1_1);
    return;
}

// FUN_005f6ba0
void W_5f6ba0(u32 a0) throw() {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u8*)(r0 + 4);
    if (r0 == 0u) goto L_5f6bf8;
    r0 = *(u32*)(r4 + 168);
    if (r0 == 0u) goto L_5f6be4;
    r0 = Fn_60ad48_1(r0);
    r0 = *(u32*)(r4 + 168);
    if (r0 == 0u) goto L_5f6be4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 168) = r0;
    L_5f6be4:;
    r0 = r4 + 32u;
    r0 = Fn_608520_1(r0);
    r0 = r4 + 80u;
    r0 = Fn_608520_1(r0);
    L_5f6bf8:;
    return;
}

// FUN_005f6dcc
void W_5f6dcc(u32 a0) throw() {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u8*)(r0 + 4);
    if (r0 == 0u) goto L_5f6e24;
    r0 = *(u32*)(r4 + 172);
    if (r0 == 0u) goto L_5f6e10;
    r0 = Fn_5f65d0_1(r0);
    r0 = *(u32*)(r4 + 172);
    if (r0 == 0u) goto L_5f6e10;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4 + 172) = r0;
    L_5f6e10:;
    r0 = r4 + 8u;
    r0 = Fn_608520_1(r0);
    r0 = r4 + 56u;
    r0 = Fn_608520_1(r0);
    L_5f6e24:;
    return;
}

// FUN_005f7d1c
u32 W_5f7d1c(u32 a0) throw() {
    u32 r0 = a0, r1, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 4);
    if (r0 == 0u) goto L_5f7ddc;
    r0 = *(u32*)(r4 + 124);
    r5 = 0u;
    if (r0 == 0u) goto L_5f7d84;
    r0 = Fn_5f5d48_1(r0);
    r0 = *(u32*)(r4 + 124);
    r0 = Fn_5f5e48_1(r0);
    r0 = *(u32*)(r4 + 124);
    r0 = Fn_005b2c_1(r0);
    r0 = *(u32*)(r4 + 124);
    if (r0 == 0u) goto L_5f7d70;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 124) = r5;
    L_5f7d70:;
    r0 = r4 + 88u;
    r0 = Fn_5fc78c_1(r0);
    r0 = r4 + 32u;
    r0 = Fn_608520_1(r0);
    L_5f7d84:;
    r0 = *(u32*)(r4 + 120);
    if (r0 == 0u) goto L_5f7ddc;
    r0 = Fn_5fb6dc_1(r0);
    r0 = *(u32*)(r4 + 120);
    r0 = Fn_5fb814_1(r0);
    r0 = *(u32*)(r4 + 120);
    r0 = Fn_005b2c_1(r0);
    r0 = *(u32*)(r4 + 120);
    if (r0 == 0u) goto L_5f7dc8;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 120) = r5;
    L_5f7dc8:;
    r0 = r4 + 56u;
    r0 = Fn_5fc78c_1(r0);
    r0 = r4 + 8u;
    r0 = Fn_608520_1(r0);
    L_5f7ddc:;
    return r0;
}

// FUN_00602104
void W_602104(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_6018d0_5(r0, r1, ((r1 + 768u) + 178u), (r1 + 952u), (r1 + 1088u));
    return;
}

// FUN_006031f8
void W_6031f8(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_6028a4_5(r0, r1, (r1 + 624u), ((r1 + 20480u) + 792u), ((r1 + 20480u) + 928u));
    return;
}

// FUN_0060321c
void W_60321c(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r0_1;
    r0_1 = Fn_6029f8_5(r0, r1, (r1 + 624u), ((r1 + 20480u) + 792u), ((r1 + 20480u) + 928u));
    return;
}

// FUN_006059c8
void W_6059c8(u32 a0) throw() {
    u32 r0_3, r0_6, r0_8;
    *(u32*)(a0) = ((u32)g_0082f700);
    r0_3 = Fn_5fd468_1(a0);
    *(u32*)(a0) = ((u32)g_0082f6f0);
    r0_6 = Fn_5fd468_1(a0);
    r0_8 = Fn_5fd568_1(a0);
    return;
}

// FUN_00605b88
void W_605b88(u32 a0) throw() {
    u32 r0 = a0, r0_3, r0_5;
    *(u32*)(r0) = ((u32)g_0082f710);
    r0_3 = Fn_5fd468_1(r0);
    r0_5 = Fn_5fd568_1(r0);
    return;
}

// FUN_00606ac0
void W_606ac0(u32 a0) throw() {
    u32 r0 = a0, r0_3, r0_5;
    *(u32*)(r0) = ((u32)g_0082f780);
    r0_3 = Fn_5fd468_1(r0);
    r0_5 = Fn_5fd568_1(r0);
    return;
}

// FUN_00617cfc
void W_617cfc() throw() {
    u32 r0_1;
    r0_1 = Fn_597d58_0();
    return;
}

// FUN_006185ec
void W_6185ec() throw() {
    u32 r0_1;
    r0_1 = Fn_61ba38_0();
    return;
}

// FUN_006185f8
void W_6185f8(u32 a0, u32 a1) throw() {
    u32 r0_1;
    r0_1 = Fn_56cfa8_5(a0, ((*(u32*)(a1 + 24))), a1, (a1 + 12u), ((u32)g_008a86f0));
    return;
}

// FUN_00618620
void W_618620(u32 a0, u32 a1) throw() {
    u32 r0_1;
    r0_1 = Fn_56cfa8_5(a0, ((*(u32*)(a1 + 24))), a1, (a1 + 12u), ((u32)g_008a865c));
    return;
}

// FUN_0061864c
void W_61864c(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0_1;
    r0_1 = Fn_56cfa8_5(a0, ((*(u32*)(a1 + 24))), a1, (a1 + 12u), a2);
    return;
}

// FUN_00618c80
void W_618c80() throw() {
    u32 r0_1;
    r0_1 = Fn_61c41c_0();
    return;
}

// FUN_00619338
void W_619338() throw() {
    u32 r0_1;
    r0_1 = Fn_61ca0c_0();
    return;
}

// FUN_0061a4d8
void W_61a4d8() throw() {
    u32 r0_1;
    r0_1 = Fn_61ba38_0();
    return;
}

// FUN_0061adf4
void W_61adf4(u32 a0) throw() {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u8*)(r0);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_61ae10;
    r0 = Fn_61a8f4_2(r0, r1);
    L_61ae10:;
    return;
}

// FUN_0061b290
void W_61b290() throw() {
    u32 r0_1;
    r0_1 = Fn_61c41c_0();
    return;
}

// FUN_0061bfd8
void W_61bfd8() throw() {
    u32 r0_1;
    r0_1 = Fn_61ba38_0();
    return;
}

// FUN_00625134
void W_625134(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    float f0;
    r0 = *(u32*)(r0 + 72);
    f0 = 0.0f;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_625154;
    r0 = Fn_630cc4_1f1(r0, f0);
    L_625154:;
    return;
}

// FUN_00625174
void W_625174(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_625190;
    r0 = Fn_630d20_1(r0);
    L_625190:;
    return;
}

// FUN_006253e0
void W_6253e0(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_6253fc;
    r0 = Fn_630df0_1(r0);
    L_6253fc:;
    return;
}
