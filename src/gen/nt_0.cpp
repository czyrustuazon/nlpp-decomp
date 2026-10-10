// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00805104[];
u32 Fn_4e019c_2(u32, u32);
extern char g_00805330[];
u32 Fn_008010_2(u32, u32);
u32 Fn_0e3540_2(u32, u32);
extern char g_00896ac4[];
u32 Fn_4b8708_1(u32);
u32 Fn_4b8798_1(u32);
u32 Fn_0fd488_1(u32);
u32 Fn_4b8988_3(u32, u32, u32);
u32 Fn_4b8970_2(u32, u32);
u32 Fn_631168_1(u32);
u32 Fn_4b8e14_1(u32);
u32 Fn_121ad8_2(u32, u32);
u32 Fn_5992a0_2(u32, u32);
u32 Fn_0151c8_1(u32);
u32 Fn_12d1dc_5(u32, u32, u32, u32, u32);
u32 Fn_12761c_0();
u32 Fn_61d968_5(u32, u32, u32, u32, u32);
u32 Fn_61d8f0_5(u32, u32, u32, u32, u32);
u32 Fn_15d1c4_5(u32, u32, u32, u32, u32);
u32 Fn_59cb38_2(u32, u32);
u32 Fn_59cb38_2f3(u32, u32, float, float, float);
u32 Fn_4e019c_0();
extern char g_007c32a4[];
u32 Fn_24e4ec_2(u32, u32);
u32 Fn_5eaf04_5(u32, u32, u32, u32, u32);
u32 Fn_277f60_3(u32, u32, u32);
u32 Fn_277e68_2(u32, u32);
u32 Fn_2783d8_1(u32);
u32 Fn_27df00_5(u32, u32, u32, u32, u32);
u32 Fn_3996a8_0();
u32 Fn_399704_0();
u32 Fn_399750_0();
extern char g_008bfa88[];
u32 Fn_313158_3(u32, u32, u32);
u32 Fn_2ab640_2(u32, u32);
extern char g_0081c130[];
u32 Fn_01a4d4_2(u32, u32);
u32 Fn_4e019c_1(u32);
extern char g_0081c6a8[];
extern char g_0089d42c[];
u32 Fn_5c888c_5f3(u32, u32, u32, u32, u32, float, float, float);
u32 Fn_12d794_3(u32, u32, u32);
u32 Fn_2ec174_1(u32);
u32 Fn_2f3a54_1(u32);
extern char g_0081e148[];
extern char g_0041314c[];
extern char g_0081e23c[];
u32 Fn_000068_4(u32, u32, u32, u32);
u32 Fn_343e70_4(u32, u32, u32, u32);
u32 Fn_5fcc74_1(u32);
u32 Fn_367224_5(u32, u32, u32, u32, u32);
u32 Fn_02aca0_2(u32, u32);
extern char g_00820cc8[];
u32 Fn_33c104_3(u32, u32, u32);
u32 Fn_626288_2(u32, u32);
u32 Fn_3d2324_5(u32, u32, u32, u32, u32);
extern char g_00822188[];
extern char g_008bfa7c[];
u32 Fn_196960_1(u32);
extern char g_008d6ca4[];
u32 Fn_460600_5(u32, u32, u32, u32, u32);
u32 Fn_460958_5(u32, u32, u32, u32, u32);
u32 Fn_460d60_1(u32);
u32 Fn_461134_1(u32);
u32 Fn_46776c_2(u32, u32);
u32 Fn_5f4bb4_3(u32, u32, u32);
u32 Fn_48f590_1(u32);
u32 Fn_496c60_1(u32);
u32 Fn_498144_1(u32);
u32 Fn_498f88_2(u32, u32);
u32 Fn_498264_2(u32, u32);
u32 Fn_498f88_3(u32, u32, u32);
u32 Fn_49fa00_0();
extern char g_005883a4[];
extern char g_00588408[];
u32 Fn_487940_3(u32, u32, u32);
u32 Fn_487b40_1(u32);
u32 Fn_4941e8_3(u32, u32, u32);
u32 Fn_496db8_1(u32);
u32 Fn_4982f4_1(u32);
u32 Fn_49dab0_3(u32, u32, u32);
u32 Fn_5a4ebc_2(u32, u32);
u32 Fn_630260_1(u32);
u32 Fn_498144_2(u32, u32);
u32 Fn_496714_1(u32);

// FUN_000623e4
void W_0623e4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r0_1;
    r1_1 = (u32)g_00805104;
    *(u32*)(r0) = r1_1;
    r0_1 = Fn_4e019c_2(r0, r1_1);
    return;
}

// FUN_0006f774
void W_06f774(u32 a0) throw() {
    u32 r0 = a0, r1_1, r0_1;
    r1_1 = (u32)g_00805330;
    *(u32*)(r0) = r1_1;
    r0_1 = Fn_008010_2(r0, r1_1);
    return;
}

// FUN_000e5960
void W_0e5960(u32 a0) throw() {
    u32 r0 = a0, r0_1, r1_1, r0_2;
    r0_1 = *(u32*)(r0 + 84);
    r1_1 = 1u;
    r0_2 = Fn_0e3540_2(r0_1, r1_1);
    return;
}

// FUN_000e5ee8
void W_0e5ee8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r1_4, r0_2;
    r1_1 = *(u8*)(r0 + 68);
    if (r1_1 != 3u) return;
    *(u16*)(r0 + 72) = 30001u;
    r1_4 = *(u32*)(((u32)g_00896ac4));
    if (r1_4 == 0u) return;
    r0_2 = Fn_0e3540_2((*(u32*)(r0 + 84)), 1u);
    return;
}

// FUN_000fc4f0
void W_0fc4f0(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fc50c;
    r0 = Fn_4b8708_1(r0);
    L_fc50c:;
    return;
}

// FUN_000fc510
void W_0fc510(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fc52c;
    r0 = Fn_4b8798_1(r0);
    L_fc52c:;
    return;
}

// FUN_000fc638
void W_0fc638(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, fa, fb;
    r4 = *(u32*)(r0 + 72);
    fa = r4; fb = 0u;
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_fc66c;
    r0 = r4 + (r2 << 2);
    *(u32*)(r0 + 8) = r1;
    r0 = *(u32*)(r4 + 368);
    if (r0 == 0u) goto L_fc66c;
    r0 = Fn_4b8988_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_0fd488_1(r0);
    L_fc66c:;
    return;
}

// FUN_000fcc90
void W_0fcc90(u32 a0) throw() {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fccb0;
    r1 = 2u;
    r0 = Fn_4b8970_2(r0, r1);
    L_fccb0:;
    return;
}

// FUN_000fe7c4
void W_0fe7c4(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fe7e0;
    r0 = Fn_631168_1(r0);
    L_fe7e0:;
    return;
}

// FUN_000fe7e4
void W_0fe7e4(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fe800;
    r0 = Fn_4b8e14_1(r0);
    L_fe800:;
    return;
}

// FUN_001216a4
void W_1216a4(u32 a0, u32 a1) throw() {
    u32 r0, r1 = a1, fa, fb;
    r0 = r1;
    r0 = Fn_121ad8_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa == fb) goto L_1216c8;
    r0 = *(u16*)(r0);
    r0 = r0 << 16;
    r0 = Fn_5992a0_2(r0, r1);
    L_1216c8:;
    return;
}

// FUN_00123074
void W_123074(u32 a0, u32 a1) throw() {
    u32 r0, r1 = a1;
    r0 = r1;
    r0 = Fn_121ad8_2(r0, r1);
    if (r0 == 0u) goto L_123094;
    r0 = *(u16*)(r0);
    r0 = r0 << 16;
    r0 = Fn_0151c8_1(r0);
    L_123094:;
    return;
}

// FUN_00131130
void W_131130(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5) throw() {
    u32 r0_2;
    r0_2 = Fn_12d1dc_5(a1, a2, a3, a4, a5);
    return;
}

// FUN_00132cf4
void W_132cf4() throw() {
    u32 r0_1;
    r0_1 = Fn_12761c_0();
    return;
}

// FUN_001335e8
void W_1335e8() throw() {
    u32 r0_1;
    r0_1 = Fn_12761c_0();
    return;
}

// FUN_0015da88
void W_15da88(u32 a0, u32 a1, u32 a2) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r3_1, r0_1;
    r3_1 = 0u;
    r0_1 = Fn_61d968_5(r0, r1, r2, r3_1, r3_1);
    return;
}

// FUN_0015dbcc
void W_15dbcc(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r0_1;
    r0_1 = Fn_61d8f0_5(r0, r1, r2, r3, a4);
    return;
}

// FUN_00162150
void W_162150(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r1_1, r2_2, r0_1;
    r2_1 = 5u;
    r3_1 = r1 + 30u;
    r1_1 = 67108883u;
    r2_2 = 0u;
    r0_1 = Fn_15d1c4_5(r0, r1_1, r2_2, r3_1, r2_1);
    return;
}

// FUN_0016540c
void W_16540c(u32 a0, float p0, float p1, float p2) throw() {
    u32 r0 = a0, r1, r4;
    float f0 = p0, f1 = p1, f2 = p2;
    r4 = r0;
    r0 = r0 + 48u;
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    r0 = *(u32*)(r4 + 36);
    if (r0 == 0u) goto L_165454;
    r0 = r0 + 236u;
    r1 = r4 + 48u;
    r0 = Fn_59cb38_2f3(r0, r1, f0, f1, f2);
    r0 = *(u32*)(r4 + 36);
    r1 = r4 + 60u;
    r0 = r0 + 248u;
    r0 = Fn_59cb38_2(r0, r1);
    r0 = *(u32*)(r4 + 36);
    r1 = r4 + 72u;
    r0 = r0 + 260u;
    r0 = Fn_59cb38_2(r0, r1);
    L_165454:;
    return;
}

// FUN_00165968
void W_165968(u32 a0, float p0, float p1, float p2) throw() {
    u32 r0 = a0, r1, r4;
    float f0 = p0, f1 = p1, f2 = p2;
    r4 = r0;
    r0 = r0 + 60u;
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    r0 = *(u32*)(r4 + 36);
    if (r0 == 0u) goto L_1659b0;
    r0 = r0 + 236u;
    r1 = r4 + 48u;
    r0 = Fn_59cb38_2f3(r0, r1, f0, f1, f2);
    r0 = *(u32*)(r4 + 36);
    r1 = r4 + 60u;
    r0 = r0 + 248u;
    r0 = Fn_59cb38_2(r0, r1);
    r0 = *(u32*)(r4 + 36);
    r1 = r4 + 72u;
    r0 = r0 + 260u;
    r0 = Fn_59cb38_2(r0, r1);
    L_1659b0:;
    return;
}

// FUN_0016f268
void W_16f268() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_001d00e4
void W_1d00e4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r0_1, r0_2;
    r1_1 = (u32)g_007c32a4;
    r0_1 = *(u32*)(r0 + 104);
    r0_2 = Fn_24e4ec_2(r0_1, r1_1);
    return;
}

// FUN_0024e6ec
void W_24e6ec(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r0_1;
    if (r0 == 0u) return;
    r2_1 = 0u;
    r3_1 = 1u;
    r0_1 = Fn_5eaf04_5(r0, r1, r2_1, r3_1, r2_1);
    return;
}

// FUN_00274618
void W_274618(u32 a0) throw() {
    u32 r0 = a0, r1, r2, r4;
    r4 = *(u32*)(r0 + 4);
    if (r4 == 0u) goto L_274648;
    r2 = 0u;
    r0 = *(u32*)(r4 + 4);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 8);
    r1 = r2;
    r0 = Fn_277f60_3(r0, r1, r2);
    L_274648:;
    return;
}

// FUN_00274794
u32 W_274794(u32 a0) throw() {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_2747d8;
    r1 = *(u8*)(r0 + 12);
    if (r1 == 1u) goto L_2747c0;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_2747d8;
    goto L_2747cc;
    L_2747c0:;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_2747d8;
    L_2747cc:;
    r0 = Fn_277e68_2(r0, r1);
    return r0;
    L_2747d8:;
    r0 = 1u;
    return r0;
}

// FUN_002802d8
void W_2802d8(u32 a0) throw() {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 40);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 4);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_2802f4;
    r0 = Fn_2783d8_1(r0);
    L_2802f4:;
    return;
}

// FUN_00280f28
void W_280f28(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787968u;
    r2_1 = r1_1;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002815e8
void W_2815e8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787968u;
    r2_1 = 1677721600u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00281f14
void W_281f14(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787968u;
    r2_1 = 3355443200u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00282490
void W_282490(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787969u;
    r2_1 = 738197504u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00282968
void W_282968(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787969u;
    r2_1 = 2415919104u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00282dc4
void W_282dc4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787969u;
    r2_1 = 4093640704u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00283420
void W_283420(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787970u;
    r2_1 = 1476395008u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00283ab8
void W_283ab8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787970u;
    r2_1 = 3154116608u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00283fd0
void W_283fd0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787971u;
    r2_1 = 536870912u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00284558
void W_284558(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16787971u;
    r2_1 = 2214592512u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00284a94
void W_284a94(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799232u;
    r2_1 = r1_1;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002850e4
void W_2850e4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799232u;
    r2_1 = 1677721600u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00285970
void W_285970(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799232u;
    r2_1 = 3355443200u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00286364
void W_286364(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799233u;
    r2_1 = 738197504u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00286ad8
void W_286ad8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799233u;
    r2_1 = 2415919104u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00287024
void W_287024(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799233u;
    r2_1 = 4093640704u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002875f4
void W_2875f4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799234u;
    r2_1 = 1476395008u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00287b84
void W_287b84(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799234u;
    r2_1 = 3154116608u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028817c
void W_28817c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799235u;
    r2_1 = 536870912u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00288938
void W_288938(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 16799235u;
    r2_1 = 2214592512u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00289430
void W_289430(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560128u;
    r2_1 = r1_1;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028989c
void W_28989c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560128u;
    r2_1 = 1677721600u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00289f2c
void W_289f2c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560128u;
    r2_1 = 3355443200u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028af10
void W_28af10(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560129u;
    r2_1 = 738197504u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028ba38
void W_28ba38(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560129u;
    r2_1 = 2415919104u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028bf40
void W_28bf40(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560129u;
    r2_1 = 4093640704u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028c354
void W_28c354(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560130u;
    r2_1 = 1476395008u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028c878
void W_28c878(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560130u;
    r2_1 = 3154116608u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028cf08
void W_28cf08(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560131u;
    r2_1 = 536870912u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028d58c
void W_28d58c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184560131u;
    r2_1 = 2214592512u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028dba0
void W_28dba0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571392u;
    r2_1 = r1_1;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028e0d4
void W_28e0d4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571392u;
    r2_1 = 1677721600u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028e418
void W_28e418(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571392u;
    r2_1 = 3355443200u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028f0e8
void W_28f0e8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571393u;
    r2_1 = 738197504u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028f850
void W_28f850(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571393u;
    r2_1 = 2415919104u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0028fde8
void W_28fde8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571393u;
    r2_1 = 4093640704u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002904c0
void W_2904c0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571394u;
    r2_1 = 1476395008u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00290b64
void W_290b64(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571394u;
    r2_1 = 3154116608u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029121c
void W_29121c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571395u;
    r2_1 = 536870912u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00291cb0
void W_291cb0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 184571395u;
    r2_1 = 2214592512u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002924d0
void W_2924d0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555072u;
    r2_1 = r1_1;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00292ce8
void W_292ce8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555072u;
    r2_1 = 1677721600u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002931f8
void W_2931f8(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555072u;
    r2_1 = 3355443200u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00293654
void W_293654(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555073u;
    r2_1 = 738197504u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00293f68
void W_293f68(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555073u;
    r2_1 = 2415919104u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00294454
void W_294454(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555073u;
    r2_1 = 4093640704u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002963a4
void W_2963a4(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555074u;
    r2_1 = 1476395008u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002968b0
void W_2968b0(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555074u;
    r2_1 = 3154116608u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029702c
void W_29702c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555075u;
    r2_1 = 536870912u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00297624
void W_297624(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335555075u;
    r2_1 = 2214592512u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00297c5c
void W_297c5c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566336u;
    r2_1 = r1_1;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00298334
void W_298334(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566336u;
    r2_1 = 1677721600u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00298c20
void W_298c20(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566336u;
    r2_1 = 3355443200u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029937c
void W_29937c(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566337u;
    r2_1 = 738197504u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00299800
void W_299800(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566337u;
    r2_1 = 2415919104u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_00299efc
void W_299efc(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566337u;
    r2_1 = 4093640704u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029a430
void W_29a430(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566338u;
    r2_1 = 1476395008u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029a954
void W_29a954(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566338u;
    r2_1 = 3154116608u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029ae80
void W_29ae80(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566339u;
    r2_1 = 536870912u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_0029b548
void W_29b548(u32 a0) throw() {
    u32 r0 = a0, r1_1, r3_1, r2_1, r0_1;
    r1_1 = 0u;
    r3_1 = 335566339u;
    r2_1 = 2214592512u;
    r0_1 = Fn_27df00_5(r0, r1_1, r2_1, r3_1, r1_1);
    return;
}

// FUN_002ac338
void W_2ac338() throw() {
    u32 r0_1;
    r0_1 = Fn_3996a8_0();
    return;
}

// FUN_002ac928
void W_2ac928() throw() {
    u32 r0_1;
    r0_1 = Fn_399704_0();
    return;
}

// FUN_002ad0d0
void W_2ad0d0() throw() {
    u32 r0_1;
    r0_1 = Fn_399750_0();
    return;
}

// FUN_002ad958
u32 W_2ad958(u32 a0) throw() {
    u32 r2_1, r0_2;
    r2_1 = *(u32*)(((u32)g_008bfa88));
    if (r2_1 == 0u) return a0;
    r0_2 = Fn_313158_3((r2_1 + 40u), a0, r2_1);
    return r0_2;
}

// FUN_002ae7f4
void W_2ae7f4() throw() {
    u32 r1_1, r0_4;
    r1_1 = *(u32*)(((u32)g_008bfa88));
    if (r1_1 == 0u) return;
    r0_4 = Fn_2ab640_2((*(u32*)((*(u32*)(r1_1 + 4)) + 12)), ((r1_1 + 1024u) + 116u));
    return;
}

// FUN_002be354
void W_2be354(u32 a0) throw() {
    u32 r0_3, r0_6, r0_8;
    *(u32*)(a0) = ((u32)g_0081c130);
    r0_3 = Fn_01a4d4_2((a0 + 296u), 12404u);
    r0_6 = Fn_01a4d4_2(((a0 + 12288u) + 536u), 2044u);
    r0_8 = Fn_4e019c_1(a0);
    return;
}

// FUN_002d2eec
void W_2d2eec(u32 a0) throw() {
    u32 r0 = a0, r0_1;
    *(u32*)(r0) = ((u32)g_0081c6a8);
    *(u32*)(((u32)g_0089d42c)) = 0u;
    r0_1 = Fn_4e019c_1(r0);
    return;
}

// FUN_002d5370
void W_2d5370(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) throw() {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r12_1, r0_1;
    float f0_1, f1_1, f2_1;
    f0_1 = 0.0f;
    f1_1 = 6.0f;
    r12_1 = a4;
    f2_1 = f0_1;
    r0_1 = Fn_5c888c_5f3(r0, r1, r2, r3, r12_1, f0_1, f1_1, f2_1);
    return;
}

// FUN_002eaa0c
void W_2eaa0c(u32 a0) throw() {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = Fn_2ec174_1(r0);
    r0 = *(u32*)(r4 + 252);
    if (r0 == 0u) goto L_2eaa38;
    r1 = *(short*)(r0 + 124);
    r2 = 0u;
    r0 = Fn_12d794_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_2f3a54_1(r0);
    L_2eaa38:;
    return;
}

// FUN_0033b718
void W_33b718(u32 a0) throw() {
    u32 r0 = a0, r1_1, r0_1;
    r1_1 = (u32)g_0081e148;
    *(u32*)(r0) = r1_1;
    r0_1 = Fn_4e019c_2(r0, r1_1);
    return;
}

// FUN_0033f374
void W_33f374(u32 a0) throw() {
    u32 r0_3, r0_5;
    *(u32*)(a0) = ((u32)g_0081e23c);
    r0_3 = Fn_000068_4((a0 + 292u), ((u32)g_0041314c), 60u, 3u);
    r0_5 = Fn_4e019c_1(a0);
    return;
}

// FUN_0034488c
void W_34488c(u32 a0) throw() {
    u32 r0 = a0, r4_1, r0_3, r0_4, r0_6, r0_8;
    r4_1 = r0;
    r0_3 = Fn_5fcc74_1(((r0 + 1024u) + 716u));
    r0_4 = 0u;
    *(u8*)(r4_1 + 71) = r0_4;
    *(u32*)(r4_1 + 1828) = r0_4;
    r0_6 = Fn_343e70_4(r4_1, 4u, 20u, r0_4);
    r0_8 = Fn_343e70_4(r4_1, 2u, 1u, 0u);
    return;
}

// FUN_00376f14
void W_376f14(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) throw() {
    u32 r0_1, r12_1, r0_2, r0_3;
    r0_1 = *(u32*)(a0 + 4);
    r12_1 = a4;
    r0_2 = *(u32*)(r0_1 + 48);
    r0_3 = Fn_367224_5(r0_2, a1, a2, a3, r12_1);
    return;
}

// FUN_0037fdb8
void W_37fdb8(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r0_1, r1_1, r0_2;
    r0_1 = r0 + 88u;
    r1_1 = r1 + 4u;
    r0_2 = Fn_02aca0_2(r0_1, r1_1);
    return;
}

// FUN_003b0674
void W_3b0674(u32 a0) throw() {
    u32 r0 = a0, r1_1, r0_1;
    r1_1 = (u32)g_00820cc8;
    *(u32*)(r0) = r1_1;
    r0_1 = Fn_4e019c_2(r0, r1_1);
    return;
}

// FUN_003c2144
u32 W_3c2144(u32 a0) throw() {
    u32 r0 = a0, r1, r2, r4, r5, fa, fb;
    r4 = *(u32*)(r0 + 96);
    fa = r4; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_3c2188;
    r0 = *(u32*)(r4 + 168);
    r1 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 60);
    r5 = *(u32*)(r1 + 40);
    r1 = 67111049u;
    r0 = Fn_626288_2(r0, r1);
    if (r0 >= 6u) r0 = 0u;
    r2 = r0;
    r1 = *(u32*)(r4 + 40);
    r0 = r5;
    r0 = Fn_33c104_3(r0, r1, r2);
    L_3c2188:;
    return r0;
}

// FUN_003ca990
void W_3ca990() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_003cceb8
void W_3cceb8() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_003d22f8
void W_3d22f8(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r0_2;
    r0_2 = Fn_3d2324_5(a1, a2, a3, (*(u32*)(a0 + 4)), (*(u32*)(a0 + 16)));
    return;
}

// FUN_003dcbbc
void W_3dcbbc(u32 a0) throw() {
    u32 r0_4, r0_6;
    *(u32*)(a0) = ((u32)g_00822188);
    r0_4 = Fn_196960_1((*(u32*)(((u32)g_008bfa7c))));
    r0_6 = Fn_4e019c_1(a0);
    return;
}

// FUN_003de7a0
void W_3de7a0() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_003e16e8
void W_3e16e8() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_003e3f88
void W_3e3f88() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_004521bc
void W_4521bc() throw() {
    u32 r0_1;
    r0_1 = Fn_4e019c_0();
    return;
}

// FUN_00478128
void W_478128(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r0_2;
    r0_2 = Fn_460600_5(((u32)g_008d6ca4), a0, a1, a2, a3);
    return;
}

// FUN_004781b4
void W_4781b4(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r0_2;
    r0_2 = Fn_460958_5(((u32)g_008d6ca4), a0, a1, a2, a3);
    return;
}

// FUN_0047aa08
u32 W_47aa08(u32 a0) throw() {
    u32 r0 = a0, r1, r4, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 149);
    if (r0 != 3u) goto L_47aa38;
    r0 = *(u32*)(r4 + 100);
    r1 = 0u;
    if (r0 == 0u) goto L_47aa38;
    r0 = Fn_46776c_2(r0, r1);
    r0 = 0u;
    *(u8*)(r4 + 85) = r0;
    L_47aa38:;
    r0 = *(u32*)(r4 + 96);
    if (r0 == 0u) goto L_47aa5c;
    r0 = Fn_461134_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 96);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_47aa5c;
    r0 = Fn_460d60_1(r0);
    L_47aa5c:;
    return r0;
}

// FUN_0047f61c
void W_47f61c(u32 a0) throw() {
    u32 r0_1, r0_2, r1_1, r2_1, r0_3, r0_4, r0_5, r1_2, r2_2, r0_6, r0_7;
    r0_1 = 0u;
    *(u32*)(a0 + 40) = r0_1;
    r0_2 = *(u32*)(a0);
    r1_1 = 2013559730u;
    r2_1 = 1u;
    r0_3 = *(u32*)(r0_2 + 4);
    r0_4 = Fn_5f4bb4_3(r0_3, r1_1, r2_1);
    r0_5 = *(u32*)(a0);
    r1_2 = 2055213343u;
    r2_2 = 1u;
    r0_6 = *(u32*)(r0_5 + 4);
    r0_7 = Fn_5f4bb4_3(r0_6, r1_2, r2_2);
    return;
}

// FUN_00484cd8
void W_484cd8(u32 a0) throw() {
    u32 r0 = a0, r1, r4, fa, fb;
    r1 = 0u;
    r4 = r0;
    *(u8*)(r0 + 453) = r1;
    r0 = r0 + 308u;
    r0 = Fn_498f88_2(r0, r1);
    r0 = *(u32*)(r4 + 292);
    r0 = Fn_48f590_1(r0);
    fa = r0; fb = 0u - 1u;
    r0 = *(u32*)(r4 + 288);
    if (fa == fb) goto L_484d0c;
    r0 = Fn_498144_1(r0);
    return;
    L_484d0c:;
    r0 = Fn_496c60_1(r0);
    return;
}

// FUN_00485b40
void W_485b40(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4, r5;
    r2 = 0u;
    r4 = r0;
    *(u8*)(r0 + 453) = r2;
    r5 = r1;
    r0 = r0 + 308u;
    r0 = Fn_498f88_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 52);
    r1 = r5 + (r5 << 1);
    r0 = r0 + (r1 << 5);
    r1 = *(u32*)(r0 + 16);
    r0 = *(u32*)(r4 + 288);
    r0 = Fn_498264_2(r0, r1);
    return;
}

// FUN_004872c4
void W_4872c4() throw() {
    u32 r0_1;
    r0_1 = Fn_49fa00_0();
    return;
}

// FUN_00487cdc
void W_487cdc(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r4, r5;
    r5 = r1;
    r4 = *(u32*)(r0 + 68);
    *(u8*)(r4 + 12) = r1;
    r0 = *(u32*)(r4 + 8);
    if (r0 != 0u) r0 = Fn_5a4ebc_2(r0, r1);
    if (r5 == 0u) goto L_487d40;
    r0 = Fn_4982f4_1(r0);
    r2 = *(u32*)(r4 + 32);
    r1 = 1u;
    r0 = Fn_49dab0_3(r0, r1, r2);
    r0 = Fn_496db8_1(r0);
    r2 = (u32)g_005883a4;
    r1 = r4;
    r0 = Fn_4941e8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 1800);
    r0 = Fn_630260_1(r0);
    r0 = Fn_487b40_1(r0);
    r0 = *(u32*)(r4 + 1800);
    r0 = Fn_630260_1(r0);
    r2 = (u32)g_00588408;
    r1 = r4;
    r0 = Fn_487940_3(r0, r1, r2);
    L_487d40:;
    return;
}

// FUN_0048840c
void W_48840c(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1;
    *(u8*)(r0 + 1812) = r1;
    r0 = *(u32*)(r0 + 1800);
    r0 = Fn_498144_2(r0, r1);
    return;
}

// FUN_00488794
void W_488794(u32 a0) throw() {
    u32 r0 = a0, r4_1, r0_1, r0_2, r0_3, r0_4, r0_5;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 1808);
    r0_2 = Fn_496714_1(r0_1);
    r0_3 = *(u32*)(r4_1 + 1800);
    r0_4 = Fn_630260_1(r0_3);
    r0_5 = Fn_487b40_1(r0_4);
    return;
}
