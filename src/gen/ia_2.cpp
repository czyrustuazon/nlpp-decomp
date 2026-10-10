// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00800214[];
extern char g_008bfa34[];
u32 Fn_420358_2(u32, u32);
u32 Fn_427708_2(u32, u32);
u32 Fn_428664_1(u32);
extern char g_007f09c4[];
u32 Fn_20004c_3(u32, u32, u32);
u32 Fn_5db4b4_3(u32, u32, u32);
extern char g_008bfa3c[];
u32 Fn_43d364_1(u32);
extern char g_0082553c[];
u32 Fn_58d5b8_0();
u32 Fn_44dd78_1(u32);
extern char g_00826228[];
u32 Fn_452140_0();
extern char g_008bfa54[];
u32 Fn_06c8f8_3(u32, u32, u32);
extern char g_008bfab0[];
u32 Fn_59dd18_1(u32);
u32 Fn_59dd2c_2(u32, u32);
extern char g_00826c6c[];
u32 Fn_5d6cc4_0();
u32 Fn_48f8b4_2(u32, u32);
u32 Fn_494418_1(u32);
extern char g_008a78ac[];
u32 Fn_026bf4_1(u32);
u32 Fn_484b08_1(u32);
u32 Fn_49dab0_3(u32, u32, u32);
u32 Fn_4ad938_3(u32, u32, u32);
u32 Fn_60c9cc_1(u32);
u32 Fn_01a8e4_1(u32);
u32 Fn_4edc70_3(u32, u32, u32);
u32 Fn_4edcf0_3(u32, u32, u32);
extern char g_007e91f8[];
u32 Fn_0313f8_3(u32, u32, u32);
u32 Fn_50e514_1(u32);
u32 Fn_4fea1c_1(u32);

// FUN_00408184
void W_408184(u32 a0) {
    u32 r0 = a0, r4_1, r0_4, r0_5, r0_7, r0_8, r0_9;
    r4_1 = r0;
    r0_4 = Fn_427708_2((*(u32*)((*(u32*)(((u32)g_008bfa34))) + 148)), 56u);
    *(u32*)(r4_1 + 184) = r0_4;
    r0_5 = Fn_420358_2(r0_4, r4_1);
    r0_7 = Fn_428664_1((*(u32*)(r4_1 + 184)));
    r0_8 = *(u32*)(r4_1 + 184);
    r0_9 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(r0_8)) + 40)))(r0_8, 0u, (*(u32*)(((u32)g_00800214) + 4)));
    *(u32*)(r4_1 + 24) = 19u;
    return;
}

// FUN_0041a250
void W_41a250(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1, r5_1, r0_2, r0_3;
    r0_1 = *(u32*)(r0 + 20);
    r5_1 = r1;
    r0_2 = ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r0_1)) + 28)))(r0_1, r5_1);
    r0_3 = *(u32*)(r0 + 32);
    { ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r0_3)) + 28)))(r0_3, r5_1); return; }
}

// FUN_00423a14
void W_423a14(u32 a0, u32 a1) {
    u32 r1 = a1, r0_2, r2_2, r0_4, stk[20];
    r0_2 = Fn_20004c_3(((u32)stk), ((u32)g_007f09c4), 76u);
    r2_2 = 0u;
    r0_4 = Fn_5db4b4_3((*(u32*)((u32)stk + (r1 << 2))), r2_2, r2_2);
    return;
}

// FUN_0042f6c0
u32 W_42f6c0(u32 a0) {
    u32 r0 = a0, r4_1, r0_3, r0_4, r0_5, r0_6;
    r4_1 = r0;
    r0_3 = Fn_43d364_1((*(u32*)(((u32)g_008bfa3c))));
    r0_4 = *(u32*)(r4_1 + 288);
    r0_5 = ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r0_4)) + 28)))(r0_4, 2u);
    r0_6 = 1u;
    *(u8*)(r4_1 + 281) = r0_6;
    return r0_6;
}

// FUN_00437ed0
void W_437ed0(u32 a0, u32 a1) {
    u32 r1 = a1, r0_1, r1_1;
    r0_1 = Fn_58d5b8_0();
    r1_1 = 0u;
    *(u32*)(r0_1) = ((u32)g_0082553c);
    *(u32*)((r0_1 + 68u) + 0) = r1_1; *(u32*)((r0_1 + 68u) + 4) = r1;
    *(u32*)(r0_1 + 76) = r1_1;
    return;
}

// FUN_004443e4
void W_4443e4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r0_1;
    *(u32*)(r0 + 12) = r2;
    r0_1 = r0 + 4u;
    *(u32*)(r0_1 + 0) = r1; *(u32*)(r0_1 + 4) = 2147483680u;
    return;
}

// FUN_0044bb54
void W_44bb54(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r3_1;
    r4_1 = r0;
    r0_1 = Fn_44dd78_1(r0);
    r3_1 = 27u;
    { ((u32(*)(u32, u32, u32, u32))(*(u32*)((*(u32*)(r4_1)) + 96)))(r4_1, 2u, r3_1, r3_1); return; }
}

// FUN_004523c4
void W_4523c4(u32 a0) {
    u32 r0 = a0;
    *(u32*)(r0 + 148) = ~0u;
    *(u8*)(r0 + 140) = 0u;
    return;
}

// FUN_004525b0
u32 W_4525b0() {
    u32 r0_1, r1_1;
    r0_1 = Fn_452140_0();
    r1_1 = 0u;
    *(u32*)(r0_1) = ((u32)g_00826228);
    *(u8*)(r0_1 + 140) = r1_1;
    *(u32*)((r0_1 + 144u) + 0) = r1_1; *(u32*)((r0_1 + 144u) + 4) = (~0u);
    return r0_1;
}

// FUN_004528ac
void W_4528ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r0_3;
    r0_3 = Fn_06c8f8_3((*(u32*)(((u32)g_008bfa54))), r1, r2);
    *(u32*)((r0 + 140u) + 0) = r1; *(u32*)((r0 + 140u) + 4) = r2;
    return;
}

// FUN_00459854
u32 W_459854() {
    u32 r0;
    *(u32*)(((u32)g_008bfab0)) = 0u;
    return r0;
}

// FUN_00477e48
void W_477e48() {
    u32 r0_2, r0_3, r1_1, r0_5, stk[5];
    r0_2 = Fn_59dd18_1(((u32)stk + 8u));
    u64 t64 = *(u64*)((u32)stk + 8); r0_3 = (u32)t64; r1_1 = (u32)(t64 >> 32);
    *(u64*)((u32)stk) = (u64)r0_3 | ((u64)r1_1 << 32);
    r0_5 = Fn_59dd2c_2(((u32)stk), r1_1);
    return;
}

// FUN_0047eb60
void W_47eb60() {
    u32 r0_1, r1_1;
    r0_1 = Fn_5d6cc4_0();
    r1_1 = 0u;
    *(u32*)(r0_1) = ((u32)g_00826c6c);
    *(u8*)(r0_1 + 40) = r1_1;
    *(u32*)(r0_1 + 48) = r1_1;
    *(u32*)(r0_1 + 44) = (~0u);
    *(u32*)(r0_1 + 52) = r1_1;
    return;
}

// FUN_0048939c
void W_48939c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r0_1, r5_1, r0_2, r0_3;
    r0_1 = *(u32*)(r0 + 8);
    r5_1 = r1;
    r0_2 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(r0_1)) + 12)))(r0_1, r5_1, r2);
    r0_3 = *(u32*)(r0 + 28);
    { ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(r0_3)) + 12)))(r0_3, r5_1, r2); return; }
}

// FUN_0048c884
void W_48c884(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r0_2, r0_3;
    r4_1 = r0;
    r2_1 = 0u;
    r0_2 = Fn_5db4b4_3(16778010u, r2_1, r2_1);
    r0_3 = *(u32*)(r4_1 + 16);
    { ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r0_3)) + 8)))(r0_3, r4_1); return; }
}

// FUN_00494b74
void W_494b74(u32 a0) {
    u32 r0 = a0, r4_1, r0_2, r0_4, r4_2, stk[2];
    float f16_1, f17_1;
    r4_1 = r0;
    r0_2 = Fn_48f8b4_2(((u32)stk), (*(u32*)(r0 + 16)));
    f16_1 = *(float*)((u32)stk + 0);
    f17_1 = *(float*)((u32)stk + 4);
    r0_4 = Fn_494418_1(r4_1);
    r4_2 = r4_1 + 232u;
    *(float*)(r4_2 + 0) = f16_1;
    *(float*)(r4_2 + 4) = f17_1;
    return;
}

// FUN_00497568
u32 W_497568(u32 a0) {
    u32 r0 = a0, r4_1, r0_5, r0_7, r0_9, r0_10;
    r4_1 = r0;
    r0_5 = Fn_49dab0_3(((*(u32*)((*(u32*)(((u32)g_008a78ac))) + 96)) + 756u), 1u, (~0u));
    r0_7 = Fn_484b08_1((*(u32*)(r4_1 + 684)));
    r0_9 = Fn_026bf4_1((*(u32*)(r4_1 + 684)));
    r0_10 = 13u;
    *(u8*)(r4_1 + 644) = r0_10;
    return r0_10;
}

// FUN_0049a7b8
void W_49a7b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    *(u8*)(r0) = 1u;
    *(u8*)(r0 + 1) = 0u;
    *(u32*)((r0 + 148u) + 0) = r1; *(u32*)((r0 + 148u) + 4) = (r1 + 20u);
    return;
}

// FUN_004aa7a0
void W_4aa7a0(u32 a0) {
    u32 r0 = a0, r4_1, r0_2, r0_3, r1_1, r0_5, r0_7, r0_9, r0_11, r0_13, stk[4];
    r4_1 = r0;
    r0_2 = Fn_60c9cc_1(((u32)stk + 8u));
    u64 t64 = *(u64*)((u32)stk + 8); r0_3 = (u32)t64; r1_1 = (u32)(t64 >> 32);
    *(u64*)((u32)stk) = (u64)r0_3 | ((u64)r1_1 << 32);
    r0_5 = Fn_4ad938_3(r4_1, 0u, ((u32)stk));
    r0_7 = Fn_4ad938_3(r4_1, 1u, ((u32)stk));
    r0_9 = Fn_4ad938_3(r4_1, 2u, ((u32)stk));
    r0_11 = Fn_4ad938_3(r4_1, 3u, ((u32)stk));
    r0_13 = Fn_4ad938_3(r4_1, 4u, ((u32)stk));
    return;
}

// FUN_004d8924
void W_4d8924(u32 a0) {
    u32 r0 = a0;
    *(u8*)(r0 + 68) = 0u;
    *(u8*)(r0 + 69) = 0u;
    *(u8*)(r0 + 70) = 0u;
    *(u8*)(r0 + 71) = 0u;
    *(u32*)(r0 + 104) = ~0u;
    *(u8*)(r0 + 108) = 0u;
    *(u8*)(r0 + 120) = 0u;
    return;
}
