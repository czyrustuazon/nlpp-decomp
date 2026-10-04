// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_009b0ccc[];
u32 Fn_5154c4_2(u32, u32);
extern char g_008ab268[];
extern char g_00671894[];
extern char g_0069cad4[];
extern char g_007e3f0c[];
u32 Fn_000068_4(u32, u32, u32, u32);
extern char g_008bb520[];
u32 Fn_000bf4_2(u32, u32);
u32 Fn_000c24_2(u32, u32);
u32 Fn_58486c_1(u32);
u32 Fn_5848bc_1(u32);
u32 Fn_5854b8_2(u32, u32);
u32 Fn_5849d4_1(u32);
u32 Fn_585b84_1(u32);
extern char g_008bb528[];
u32 Fn_583d00_1(u32);
u32 Fn_0284f8_3(u32, u32, u32);
extern char g_008ab420[];
u32 Fn_01fd7c_1(u32);
u32 Fn_01fd88_2(u32, u32);
u32 Fn_01fd94_1(u32);
u32 WeakCall1(u32);
extern char g_0082d9b4[];
u32 Fn_02a054_2(u32, u32);
u32 Fn_02a080_1(u32);
u32 Fn_02a218_1(u32);
u32 Fn_02aca0_2(u32, u32);
u32 Fn_5a051c_0();
extern char g_0082d9d4[];
u32 Fn_5ac828_3(u32, u32, u32);
u32 Fn_5b194c_1(u32);
u32 Fn_5b0d88_2(u32, u32);
u32 Fn_5b2ad4_2(u32, u32);
u32 Fn_5b0e8c_2(u32, u32);
u32 Fn_5aeef4_3(u32, u32, u32);
u32 Fn_5b3340_1(u32);
extern char g_006b2bac[];
extern char g_0082de88[];
u32 Fn_0000ac_4(u32, u32, u32, u32);
u32 Fn_5ac8e0_1(u32);
u32 Fn_5b0820_1(u32);
u32 Fn_5ca9f4_1(u32);
u32 Fn_60d52c_1(u32);
u32 Fn_633428_2(u32, u32);
extern char g_008a834c[];
extern char g_008e0228[];
extern char g_008e0238[];
u32 Fn_00e0a4_4(u32, u32, u32, u32);
u32 Fn_020908_2(u32, u32);
extern char g_007e3abc[];
extern char g_008bfadc[];
u32 Fn_640040_4(u32, u32, u32, u32);
extern char g_007e3b78[];
extern char g_00550023[];
extern char g_007e3ac0[];
u32 Fn_5f508c_4(u32, u32, u32, u32);
extern char g_008bfb40[];
extern char g_009b74b8[];
u32 Fn_4df1d0_2(u32, u32);
u32 Fn_589e30_2(u32, u32);
u32 Fn_589e64_2(u32, u32);
u32 Fn_6405bc_2(u32, u32);
extern char g_0082cad4[];
extern char g_008b8724[];
extern char g_008b872c[];
extern char g_008b8730[];
extern char g_008b8734[];
extern char g_008b8738[];
extern char g_008b8740[];
u32 Fn_621a94_0();
extern char g_008bfa50[];
extern char g_008bfa60[];
extern char g_008bfa64[];

// FUN_005054ac
u32 W_5054ac(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 7u;
    *(u8*)((*(u32*)(r1)) + 10) = 3u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005054fc
u32 W_5054fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 17u;
    *(u8*)((*(u32*)(r1)) + 10) = 5u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505528
u32 W_505528(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r3_1, r2_1, r2_2, r3_2, r1_1, r2_3, r2_4, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    u64 t64 = *(u64*)(r0 + 12); r2_2 = (u32)t64; r3_2 = (u32)(t64 >> 32);
    *(u16*)((*(u32*)(r1)) + 10) = (*(u16*)((r2_2 + (r3_2 << 1))));
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505b74
u32 W_505b74(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r1_2, r1_3, r1_4, r1_5, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 4u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    *(u32*)(r0 + 24) = ((*(u32*)(r0 + 24)) - 1u);
    return 0u;
}

// FUN_00517724
u32 W_517724(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r0_2, r0_3, r0_4;
    r0_3 = Fn_5154c4_2(((u32)g_009b0ccc), ((*(u32*)(r0)) & 255u));
    r0_4 = 1u;
    *(u8*)(r0 + 12) = r0_4;
    return r0_4;
}

// FUN_00548588
void W_548588(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r2_1, r2_2;
    r0_2 = *(u32*)(((u32)g_008ab268) + 4);
    { ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r0_2)) + 12)))(r0_2, r0); return; }
}

// FUN_005613e8
u32 W_5613e8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r1_1, r0_2;
    return ((r1 + 1u) * 432u);
}

// FUN_005717b4
u32 W_5717b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r4_1, r1_2, r3_1, r2_1, r0_1, r0_2, r1_3, r3_2, r2_2, r0_3, r0_4, r0_5;
    r4_1 = r0 + 8u;
    *(u32*)(r0) = ((u32)g_007e3f0c);
    r0_2 = Fn_000068_4((r0 + 1936u), ((u32)g_0069cad4), 64u, 47u);
    r0_4 = Fn_000068_4((r4_1 + 4u), ((u32)g_00671894), 40u, 48u);
    return (r4_1 - 8u);
}

// FUN_00581218
void W_581218(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r3_1, r12_1, r2_2, r2_3, r3_2, r2_4, r1_1, r3_3, r2_5, r2_6, r1_2, r1_3;
    r2_4 = (((*(u32*)(r0 + 4)) & ~28672u) & ~4064u) | ((~2064384u) & ((*(u16*)(r1)) << 5));
    *(u32*)(r0 + 4) = r2_4;
    *(u32*)(r0 + 4) = (((~1610612736u) & ((*(u16*)(r1 + 2)) << 15)) | ((r2_4 & ~532676608u) & ~4161536u));
    return;
}

// FUN_00581570
void W_581570(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r3_1, r12_1, r2_2, r2_3, r3_2, r2_4, r1_1, r3_3, r2_5, r1_2, r1_3;
    r2_4 = (((*(u32*)(r0 + 12)) & ~1792u) & ~254u) | ((~129024u) & ((*(u16*)(r1)) << 1));
    *(u32*)(r0 + 12) = r2_4;
    *(u32*)(r0 + 12) = ((260096u & ((*(u16*)(r1 + 2)) << 11)) | (r2_4 & ~260096u));
    return;
}

// FUN_00583c4c
void W_583c4c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r1_2, r0_6, r0_7, r0_8, r1_3, r0_9, r0_10, r1_4, r0_11, r0_12, stk[11];
    r0_2 = Fn_5848bc_1(0u);
    r0_4 = Fn_5854b8_2(0u, r0_2);
    r0_5 = Fn_58486c_1(r0_4);
    r0_7 = Fn_000bf4_2(((u32)stk), r0_5);
    r0_10 = Fn_000c24_2(((u32)stk), (*(u32*)(((u32)g_008bb520))));
    r0_12 = Fn_5854b8_2(0u, ((u32)stk));
    return;
}

// FUN_00583ca0
void W_583ca0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r1_2, r0_6, r0_7, r0_8, r1_3, r0_9, r0_10, r1_4, r0_11, r0_12, stk[11];
    r0_2 = Fn_585b84_1(0u);
    r0_4 = Fn_5854b8_2(0u, r0_2);
    r0_5 = Fn_5849d4_1(r0_4);
    r0_7 = Fn_000bf4_2(((u32)stk), r0_5);
    r0_10 = Fn_000c24_2(((u32)stk), (*(u32*)(((u32)g_008bb520))));
    r0_12 = Fn_5854b8_2(0u, ((u32)stk));
    return;
}

// FUN_00588a34
void W_588a34() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r1_2, r0_6, r0_7, r0_8, r1_3, r0_9, r0_10, r1_4, r0_11, r0_12, stk[11];
    r0_2 = Fn_5848bc_1(1u);
    r0_4 = Fn_5854b8_2(1u, r0_2);
    r0_5 = Fn_583d00_1(r0_4);
    r0_7 = Fn_000bf4_2(((u32)stk), r0_5);
    r0_10 = Fn_000c24_2(((u32)stk), (*(u32*)(((u32)g_008bb528))));
    r0_12 = Fn_5854b8_2(1u, ((u32)stk));
    return;
}

// FUN_0058d948
void W_58d948(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r2_1, r1_1, r0_1, r0_2, r1_2, r0_3;
    r4_1 = r0;
    r0_2 = Fn_0284f8_3((r0 + 384u), 20u, 0u);
    *(u32*)(r4_1 + 528) = (r0_2 + (*(u32*)(r4_1 + 596)));
    return;
}

// FUN_0059a7c4
void W_59a7c4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, r0_4, r1_1, r1_2, r0_5, r0_6, r0_7, r0_8, stk;
    r0_2 = Fn_01fd94_1(((u32)&stk));
    r0_3 = Fn_01fd7c_1(r0_2);
    r0_4 = (u32)g_008ab420;
    r1_2 = (*(u32*)(r0_4 + 12)) + 1u;
    *(u32*)(r0_4 + 12) = r1_2;
    r0_6 = Fn_01fd88_2(((u32)&stk), r1_2);
    r0_8 = WeakCall1(((u32)&stk));
    return;
}

// FUN_005a0578
u32 W_5a0578(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r5_1, r0_1, r1_1, r4_1, r1_2, r0_2, r0_3, r1_3, r0_4, r0_5, r0_6, r0_7, r0_8, r0_9, r1_4, r0_10, stk;
    r0_1 = Fn_5a051c_0();
    r4_1 = r0_1;
    *(u32*)(r0_1) = ((u32)g_0082d9b4);
    r0_3 = Fn_02a054_2(((u32)&stk), r1);
    r0_5 = Fn_02aca0_2((r4_1 + 4u), r0_3);
    r0_7 = Fn_02a080_1(((u32)&stk));
    r0_9 = Fn_02a218_1((r4_1 + 4u));
    *(u32*)(r4_1 + 8) = r0_9;
    return r4_1;
}

// FUN_005a06b0
u32 W_5a06b0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r5_1, r0_1, r1_1, r4_1, r1_2, r0_2, r0_3, r1_3, r0_4, r0_5, r0_6, r0_7, r0_8, stk;
    r0_1 = Fn_5a051c_0();
    r4_1 = r0_1;
    *(u32*)(r0_1) = ((u32)g_0082d9d4);
    r0_3 = Fn_02a054_2(((u32)&stk), r1);
    r0_5 = Fn_02aca0_2((r4_1 + 4u), r0_3);
    r0_7 = Fn_02a080_1(((u32)&stk));
    return r4_1;
}

// FUN_005acf54
void W_5acf54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r2_1, r1_1, r0_3, r0_4, r0_5, r0_6, stk[4];
    r0_2 = Fn_5b194c_1(((u32)stk));
    r0_4 = Fn_5ac828_3(r0, ((u32)stk), 1u);
    r0_6 = Fn_02a080_1(((u32)stk + 4u));
    return;
}

// FUN_005ae54c
void W_5ae54c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r0_6, r0_7, r1_2, r2_1, r0_8, r0_9, stk[3];
    r4_1 = r0;
    r0_2 = Fn_5b2ad4_2(((u32)stk), r1);
    r0_4 = Fn_5b0d88_2((r4_1 + 312u), r0_2);
    r0_6 = Fn_02a080_1(((u32)stk + 4u));
    r0_9 = ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r4_1)) + 36)))(r4_1, r1);
    return;
}

// FUN_005ae594
u32 W_5ae594(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r5_1, r0_1, r0_2, r1_1, r0_3, r0_4, r1_2, r0_5, r0_6, r0_7, r0_8, r0_9, r1_3, r2_1, r0_10, r0_11, r0_12, stk[3];
    r4_1 = r0;
    r5_1 = r1;
    r0_2 = Fn_5b0e8c_2((r0 + 312u), r1);
    r0_4 = Fn_5b2ad4_2(((u32)stk), r5_1);
    r0_6 = Fn_5b0d88_2((r4_1 + 312u), r0_4);
    r0_8 = Fn_02a080_1(((u32)stk + 4u));
    r0_11 = ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r4_1)) + 36)))(r4_1, r5_1);
    return 1u;
}

// FUN_005af1dc
void W_5af1dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r1_1, r2_1, r0_3, r0_4, r0_5, r0_6, stk[2];
    r0_2 = Fn_5b3340_1(((u32)stk));
    r0_4 = Fn_5aeef4_3(r0, r0_2, 1u);
    r0_6 = Fn_02a080_1(((u32)stk + 4u));
    return;
}

// FUN_005b0784
void W_5b0784(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r5_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_1, r0_5;
    r4_1 = r0;
    r0_3 = ((u32(*)(u32))(*(u32*)((*(u32*)(r0)) + 20)))(r4_1);
    { ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r4_1)) + 12)))(r4_1, r1); return; }
}

// FUN_005b109c
u32 W_5b109c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r5_1, r3_1, r1_2, r2_1, r0_1, r0_2, r4_1, r0_3, r0_4, r0_5, r0_6, r0_7;
    r5_1 = 0u;
    *(u32*)(r0 + 0) = ((u32)g_0082de88); *(u32*)(r0 + 4) = r5_1;
    r0_2 = Fn_0000ac_4((r0 + 8u), ((u32)g_006b2bac), 8u, 16u);
    r4_1 = r0_2 - 8u;
    r0_4 = Fn_5ac8e0_1((r0_2 + 128u));
    r0_6 = Fn_5b0820_1((r4_1 + 144u));
    *(u8*)(r4_1 + 152) = r5_1;
    *(u16*)(r4_1 + 153) = r5_1;
    *(u8*)(r4_1 + 155) = r5_1;
    return r4_1;
}

// FUN_005d00cc
void W_5d00cc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, r1_1, r0_4, r0_5, r0_6, r0_7, stk[5];
    r0_2 = Fn_5ca9f4_1(((u32)stk + 8u));
    u64 t64 = *(u64*)((u32)stk + 8); r0_3 = (u32)t64; r1_1 = (u32)(t64 >> 32);
    *(u64*)((u32)stk) = (u64)r0_3 | ((u64)r1_1 << 32);
    r0_5 = Fn_633428_2(((u32)stk), r1_1);
    r0_7 = Fn_60d52c_1(((u32)(signed char)r0_5));
    return;
}

// FUN_005d6dac
void W_5d6dac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r3_1, r2_1, r1_1, r0_2, r0_3, r3_2, r2_2, r1_2, r0_4, r0_5, r1_3, r0_6, r0_7, r1_4, r0_8;
    r4_1 = (u32)g_008a834c;
    r0_2 = Fn_00e0a4_4(((u32)g_008e0228), 64u, 32768u, 5u);
    r0_4 = Fn_00e0a4_4(((u32)g_008e0238), 10u, 8192u, 6u);
    r0_6 = Fn_020908_2(((u32)g_008e0228), 16u);
    *(u32*)(r4_1) = r0_6;
    r0_8 = Fn_020908_2(((u32)g_008e0238), 16u);
    *(u32*)(r4_1 + 4) = r0_8;
    return;
}

// FUN_005e1f34
void W_5e1f34() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r3_1, r2_1, r0_3, r1_1, r0_4, r0_5, stk;
    stk = 5570560u;
    r0_5 = Fn_640040_4(((u32)&stk), (*(u32*)(((u32)g_007e3abc))), (*(u32*)(((u32)g_008bfadc))), 0u);
    return;
}

// FUN_005e2e0c
void W_5e2e0c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r3_1, r2_1, r0_3, r1_1, r0_4, r0_5, stk;
    stk = 5570560u;
    r0_5 = Fn_640040_4(((u32)&stk), (*(u32*)(((u32)g_007e3b78))), (*(u32*)(((u32)g_008bfadc))), 0u);
    return;
}

// FUN_005e3494
void W_5e3494() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r1_1, r3_1, r2_1, r0_3, r0_4, stk;
    stk = 5570560u;
    r0_4 = Fn_640040_4(((u32)&stk), ((u32)g_00550023), (*(u32*)(((u32)g_008bfadc))), 0u);
    return;
}

// FUN_005e66d4
void W_5e66d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r3_1, r2_1, r0_3, r1_1, r0_4, r0_5, stk;
    stk = 5570560u;
    r0_5 = Fn_640040_4(((u32)&stk), (*(u32*)(((u32)g_007e3ac0))), (*(u32*)(((u32)g_008bfadc))), 0u);
    return;
}

// FUN_005ff4d0
u32 W_5ff4d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r4_1, r3_1, r3_2, r0_1, r0_2, r0_3;
    r1_1 = 0u;
    *(u8*)(r0 + 70) = r1_1;
    r2_1 = 18000u;
    *(u8*)(r0 + 71) = r1_1;
    *(u8*)(r0 + 593) = r1_1;
    *(u8*)(r0 + 594) = r1_1;
    *(u32*)((r0 + 596u) + 0) = r1_1; *(u32*)((r0 + 596u) + 4) = r2_1;
    *(u8*)(r0 + 604) = r1_1;
    r3_2 = (r0 + 512u) + 1u;
    *(u32*)(r0 + 605) = r1_1;
    *(u32*)(r0 + 609) = r1_1;
    *(u16*)(r3_2 + 100) = r1_1;
    *(u8*)(r0 + 615) = r1_1;
    *(u8*)(r0 + 616) = r1_1;
    r0_2 = Fn_5f508c_4((r0 + 620u), r1_1, r2_1, r3_2);
    return 1u;
}

// FUN_0061d128
void W_61d128(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r3_1, r1_2;
    { ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(r0)) + 16)))(r0, ((u32)g_008bfb40), 4u); return; }
}

// FUN_006230e0
u32 W_6230e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r1_1, r0_2, r0_3, r0_4;
    r0_3 = Fn_4df1d0_2(((u32)g_009b74b8), ((*(u16*)(r0 + 36)) & 255u));
    return 1u;
}

// FUN_0063e718
u32 W_63e718(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r0_6, r1_2, r0_7, r0_8, r0_9, stk;
    r0_4 = Fn_589e64_2(((u32)&stk), (((*(u32*)(r0 + 12)) << 21) >> 22));
    r0_8 = Fn_589e30_2(((u32)&stk), (((*(u32*)(r0 + 12)) << 14) >> 25));
    return stk;
}

// FUN_00640d30
u32 W_640d30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r0_2 = Fn_02a218_1((r0 + 4u));
    f0_1 = *(float*)(r0_2 + 12);
    f1_1 = 0.0599999987f;
    f0_2 = f0_1 * f1_1;
    f0_3 = u2f((u32)(u32)f0_2);
    return (f2u(f0_3));
}

// FUN_00641528
float W_641528(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r0_3, r0_4, stk[3];
    float f0, f16, f16_1, f0_1, ffa, ffb;
    r0_2 = Fn_6405bc_2(((u32)stk), (r1 + 40u));
    f16_1 = *(float*)((u32)stk + 8);
    r0_4 = WeakCall1(((u32)stk));
    f0_1 = f16_1;
    return f0_1;
}

// FUN_00644270
u32 W_644270(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r3_1, r0_1, r2_1;
    r1_1 = (u32)g_0082cad4;
    *(u32*)((r0 - 4u) + 0) = r1_1; *(u32*)((r0 - 4u) + 4) = (r1_1 + 32u);
    return (r0 - 4u);
}

// FUN_0065b5d4
void W_65b5d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r1_1, r0_2, r1_2, r1_3, r1_4, r1_5, r1_6;
    float f0, f0_1, ffa, ffb;
    r0_1 = Fn_621a94_0();
    r0_2 = 0u;
    f0_1 = 1.0f;
    *(u8*)(((u32)g_008b8724)) = r0_2;
    *(float*)(((u32)g_008b872c)) = f0_1;
    *(float*)(((u32)g_008b8730)) = f0_1;
    *(float*)(((u32)g_008b8734)) = f0_1;
    *(float*)(((u32)g_008b8738)) = f0_1;
    *(u32*)(((u32)g_008b8740)) = r0_2;
    return;
}

// FUN_0068a6c0
u32 W_68a6c0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(((u32)g_008bfa50)) = 0u;
    return r0;
}

// FUN_0068a6e8
u32 W_68a6e8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(((u32)g_008bfa60)) = 0u;
    return r0;
}

// FUN_0068a6fc
u32 W_68a6fc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    *(u32*)(((u32)g_008bfa64)) = 0u;
    return r0;
}
