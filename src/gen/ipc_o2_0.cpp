// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O2 -Otime --split_sections
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_01b790_3(u32, u32, u32);
u32 Fn_01d180_1(u32);
u32 Fn_01d3e0_0();
u32 Fn_01d854_1(u32);
u32 WeakCall1(u32);
u32 Fn_01d3e0_1(u32);
u32 Fn_01d534_1(u32);
u32 Fn_025b7c_2(u32, u32);
u32 Fn_025c4c_1(u32);
extern char g_008aab6b[];
u32 Fn_025c84_2(u32, u32);
u32 Fn_025cc0_2(u32, u32);
u32 Fn_025cfc_1(u32);
u32 Fn_025d38_2(u32, u32);
extern char g_008aa790[];
u32 Fn_503e68_3(u32, u32, u32);
u32 Fn_5db6f4_2(u32, u32);
u32 Fn_01a8e4_4(u32, u32, u32, u32);
u32 Fn_4ee544_2(u32, u32);
u32 Fn_6848a8_2(u32, u32);
extern char g_008aac38[];
u32 Fn_4ede58_4(u32, u32, u32, u32);
u32 Fn_010ccc_3(u32, u32, u32);
u32 Fn_01a8e4_0();
u32 Fn_4eecb8_1(u32);
u32 Fn_4eef74_1(u32);
extern char g_009a1098[];
u32 Fn_006308_2(u32, u32);
u32 Fn_5185a4_1(u32);
u32 Fn_517c38_1(u32);
u32 Fn_5182c4_1(u32);
u32 Fn_4ee8ac_4(u32, u32, u32, u32);
extern char g_009a10e8[];
u32 Fn_010ccc_2(u32, u32);
u32 Fn_4ef660_2(u32, u32);
extern char g_008bb928[];
u32 Fn_024670_3(u32, u32, u32);
u32 Fn_51ff14_2(u32, u32);
u32 Fn_520ba4_1(u32);
u32 Fn_520d3c_1(u32);

// FUN_0001d510
void W_01d510() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_01d3e0_0();
    r0 = Fn_01d180_1(r0);
    r0 = Fn_01d854_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_01b790_3(r0, r1, r2);
    { WeakCall1(r0); return; }
}

// FUN_0001d5a4
void W_01d5a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_01d3e0_1(r0);
    r0 = Fn_01d180_1(r0);
    r1 = r4;
    r0 = Fn_025b7c_2(r0, r1);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_01b790_3(r0, r1, r2);
    { Fn_01d534_1(r0); return; }
}

// FUN_0001d604
void W_01d604() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_01d3e0_0();
    r0 = Fn_01d180_1(r0);
    r0 = Fn_025c4c_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_01b790_3(r0, r1, r2);
    { Fn_01d534_1(r0); return; }
}

// FUN_0001d980
u32 W_01d980() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = (u32)g_008aab6b;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d9e0;
    r0 = (u32)stk;
    r0 = Fn_025cfc_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_1d9e0;
    r0 = (u32)stk + 4u;
    r0 = Fn_025c84_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_1d9e0;
    r0 = *(u8*)((u32)stk);
    r1 = *(u8*)((u32)stk + 4);
    r0 = r0 | r1;
    *(u8*)(r4 + 1) = r0;
    r0 = 0u;
    r0 = Fn_025d38_2(r0, r1);
    r1 = 3376435201u;
    fa = r0; fb = r1;
    if (fa == fb) r0 = 0u;
    if (fa == fb) r0 = Fn_025cc0_2(r0, r1);
    L_1d9e0:;
    return r0;
}

// FUN_002d7610
void W_2d7610(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r2_1, r0_2, r0_3, r0_4, r0_5, r0_6, r0_7, r1_2, r0_8, r0_9, r0_10, stk[2];
    r4_1 = r0;
    r0_1 = 127u;
    *(u8*)((u32)stk + 1) = r0_1;
    r1_1 = 75u;
    r2_1 = 1u;
    *(u8*)((u32)stk + 2) = r0_1;
    *(u8*)((u32)stk + 3) = r1_1;
    *(u8*)((u32)stk + 4) = r2_1;
    r0_2 = *(u32*)(r4_1 + 12);
    *(u8*)((u32)stk) = r0_2;
    r0_3 = *(u32*)(r4_1 + 16);
    *(u8*)((u32)stk + 1) = r0_3;
    r0_4 = *(u32*)(r4_1 + 20);
    *(u8*)((u32)stk + 2) = r0_4;
    r0_5 = *(u32*)(r4_1 + 24);
    r0_6 = r0_5 & 255u;
    r0_7 = Fn_503e68_3(r0_6, r1_1, r2_1);
    r1_2 = (u32)g_008aa790;
    r0_8 = *(u32*)(r4_1 + 24);
    *(u8*)(r1_2) = r0_8;
    r0_9 = (u32)stk;
    r0_10 = Fn_5db6f4_2(r0_9, r1_2);
    return;
}

// FUN_004e81bc
u32 W_4e81bc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[5];
    r3 = 0u;
    r2 = 1u;
    *(u16*)((u32)stk + 2) = r3;
    *(u8*)((u32)stk) = r2;
    *(u8*)((u32)stk + 1) = r3;
    *(u32*)((u32)stk + 4) = r0; *(u32*)((u32)stk + 4 + 4) = r1;
    r0 = Fn_01a8e4_4(r0, r1, r2, r3);
    *(u32*)((u32)stk + 12) = r0;
    r1 = (u32)stk;
    r0 = (u32)stk + 12u;
    r0 = Fn_4ee544_2(r0, r1);
    r1 = r0 & 261120u;
    r1 = r1 >> 10;
    fa = r1; fb = 17u;
    if (fa != fb) goto L_4e8218;
    r1 = r0 << 22;
    r1 = r1 >> 22;
    fa = r1; fb = 220u;
    if ((int)fa < (int)fb) goto L_4e8218;
    fa = r1; fb = 229u;
    if ((int)fa <= (int)fb) r0 = 3363849346u;
    L_4e8218:;
    r1 = r0 >> 31;
    if (r1 == 0) r0 = 0u;
    return r0;
}

// FUN_004e869c
u32 W_4e869c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r1;
    r0 = Fn_6848a8_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3363849317u;
    if (fa == fb) goto L_4e86cc;
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 44);
    r1 = r4;
    return ((u32(*)(u32, u32))r2)(r0, r1);
    L_4e86cc:;
    return r0;
}

// FUN_004e8970
void W_4e8970(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r1_2, r3_1, r2_1, r1_3, r0_2, r1_4, r0_3, stk[5];
    r1_1 = (u32)stk + 4u;
    *(u32*)(r1_1 + 0) = r0; *(u32*)(r1_1 + 4) = r2; *(u32*)(r1_1 + 8) = r3;
    r0_1 = 12u;
    r1_2 = (u32)g_008aac38;
    r3_1 = (u32)stk + 4u;
    r2_1 = 2u;
    r1_3 = *(u32*)(r1_2 + 16);
    *(u32*)((u32)stk) = r0_1;
    r0_2 = (u32)stk + 16u;
    *(u32*)((u32)stk + 16) = r1_3;
    r1_4 = 1450741938u;
    r0_3 = Fn_4ede58_4(r0_2, r1_4, r2_1, r3_1);
    return;
}

// FUN_004e8ff8
void W_4e8ff8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = Fn_01a8e4_0();
    stk = r0;
    r0 = (u32)&stk;
    r0 = Fn_4eecb8_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    return;
}

// FUN_004e93c8
void W_4e93c8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = *(u32*)(r0 + 16);
    stk = r0;
    r0 = (u32)&stk;
    r0 = Fn_4eef74_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    return;
}

// FUN_004e9820
void W_4e9820(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u32*)(r1 + 16) = r0;
    r0 = (u32)g_009a1098;
    r1 = 520u;
    r0 = Fn_006308_2(r0, r1);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = 520u;
    r0 = Fn_5185a4_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 == 0) goto L_4e985c;
    { Fn_010ccc_3(r0, r1, r2); return; }
    L_4e985c:;
    return;
}

// FUN_004e9bc4
void W_4e9bc4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 521u;
    r0 = r4;
    r0 = Fn_5182c4_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = r4;
    { Fn_517c38_1(r0); return; }
}

// FUN_004e9c84
void W_4e9c84() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 519u;
    r0 = r4;
    r0 = Fn_5182c4_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = r4;
    { Fn_517c38_1(r0); return; }
}

// FUN_004e9f50
void W_4e9f50(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[6];
    r5 = r1;
    r1 = 0u;
    r4 = r0;
    *(u16*)((u32)stk + 6) = r1;
    r0 = 294912u;
    *(u8*)((u32)stk + 4) = r1;
    r6 = r2;
    *(u8*)((u32)stk + 5) = r1;
    *(u32*)((u32)stk + 12) = r0;
    *(u32*)((u32)stk + 8) = r3;
    r0 = Fn_01a8e4_4(r0, r1, r2, r3);
    *(u32*)((u32)stk + 16) = r0;
    r0 = (u32)stk + 4u;
    *(u32*)((u32)stk) = r0;
    r3 = r6;
    r2 = r5;
    r1 = r4;
    r0 = (u32)stk + 16u;
    r0 = Fn_4ee8ac_4(r0, r1, r2, r3);
    return;
}

// FUN_004ea6ec
void W_4ea6ec() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 521u;
    r0 = (u32)g_009a10e8;
    r1 = r4;
    r0 = Fn_006308_2(r0, r1);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_5185a4_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 == 0) goto L_4ea728;
    { Fn_010ccc_3(r0, r1, r2); return; }
    L_4ea728:;
    return;
}

// FUN_004ed20c
void W_4ed20c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = *(u32*)(r0 + 4);
    r5 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768600282u;
    if (fa == fb) r1 = __current_pc();
    if (fa == fb) r0 = Fn_010ccc_2(r0, r1);
    r0 = *(u32*)(r4 + 4);
    r1 = r5;
    stk = r0;
    r0 = (u32)&stk;
    r0 = Fn_4ef660_2(r0, r1);
    return;
}

// FUN_004f3738
void W_4f3738() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 534u;
    r0 = r4;
    r0 = Fn_5182c4_1(r0);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_517c38_1(r0);
    r1 = (u32)g_008bb928;
    r0 = 0u;
    *(u32*)(r1 + 24) = r0;
    return;
}

// FUN_004fd2c8
u32 W_4fd2c8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[49];
    r2 = 786432u;
    r1 = 192u;
    r0 = (u32)stk;
    r0 = Fn_024670_3(r0, r1, r2);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = *(u32*)((u32)stk);
    r0 = r0 & 32u;
    r0 = r0 >> 5;
    return r0;
}

// FUN_004fd3e4
u32 W_4fd3e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[49];
    r2 = 786432u;
    r1 = 192u;
    r0 = (u32)stk;
    r0 = Fn_024670_3(r0, r1, r2);
    r1 = __current_pc();
    r2 = r0 >> 31;
    if (r2 != 0) r0 = Fn_010ccc_3(r0, r1, r2);
    r0 = *(u32*)((u32)stk);
    r0 = r0 & 8u;
    r0 = r0 >> 3;
    return r0;
}

// FUN_0051e040
u32 W_51e040(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51e070;
    r4 = *(u32*)(r0);
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51e06c;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51ff14_2(r0, r1);
    L_51e06c:;
    return r0;
    L_51e070:;
    r0 = 77u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}
