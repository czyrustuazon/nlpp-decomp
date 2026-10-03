// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00823d7c[];
extern char g_008bfa30[];
u32 Fn_2024b0_1(u32);
u32 Fn_403a5c_3(u32, u32, u32);
u32 WeakCall1(u32);
u32 WeakCall0();
extern char g_008bfa34[];
u32 Fn_422f60_2(u32, u32);
extern char g_008bfa3c[];
u32 Fn_43d514_2(u32, u32);
extern char g_008252f8[];
extern char g_008272c8[];
u32 Fn_492d48_3(u32, u32, u32);
extern char g_0082c5bc[];
u32 Fn_543028_1(u32);
u32 Fn_543ecc_2(u32, u32);
extern char g_0082c5e0[];
u32 Fn_5421a0_3(u32, u32, u32);
u32 Fn_543ecc_1(u32);
extern char g_00100000[];
extern char g_00784f34[];
extern char g_008bb6f8[];
extern char g_009dfad8[];
u32 Fn_203d64_1(u32);
u32 Fn_55c0c4_1(u32);
u32 WeakCall3(u32, u32, u32);
extern char g_008bb6fc[];
extern char g_009dfc68[];
extern char g_0065eb58[];
extern char g_008bb50c[];
extern char g_009b9aa8[];
u32 Fn_55eab8_1(u32);
extern char g_0082fc80[];
u32 WeakCall2(u32, u32);
extern char g_007e3e44[];
u32 Fn_02a080_1(u32);
u32 Fn_1fcd88_1(u32);
u32 Fn_5b2010_1(u32);
extern char g_0082d8e8[];
u32 Fn_1fcd88_3(u32, u32, u32);
extern char g_008ab420[];
u32 Fn_01fd7c_1(u32);
u32 Fn_01fd88_1(u32);
u32 Fn_01fd94_1(u32);
u32 Fn_01fd88_2(u32, u32);
extern char g_0082da8c[];
u32 Fn_59ab78_1(u32);
extern char g_0082dd10[];
u32 Fn_5a59ac_1(u32);
extern char g_0082dd3c[];
u32 Fn_5ad5f0_1(u32);
extern char g_0082df14[];
u32 Fn_0267bc_2(u32, u32);

// FUN_00407f08
void W_407f08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_00823d7c;
    r1 = *(u32*)(r0 + 36);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_407f38;
    r0 = (u32)g_008bfa30;
    r0 = *(u32*)(r0);
    r0 = Fn_403a5c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    L_407f38:;
    r0 = r4;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00409f6c
void W_409f6c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0040c6d0
void W_40c6d0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    r0 = (u32)g_008bfa34;
    r1 = 15u;
    r0 = *(u32*)(r0);
    { Fn_422f60_2(r0, r1); return; }
}

// FUN_0040f454
void W_40f454() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00410428
void W_410428() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00410c5c
void W_410c5c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00410fcc
void W_410fcc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00411bd0
void W_411bd0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00414b90
void W_414b90() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00414f40
void W_414f40() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_004159b4
void W_4159b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_004160d0
void W_4160d0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0041616c
void W_41616c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0041fd98
void W_41fd98() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00420464
void W_420464() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00422d54
void W_422d54() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00424714
void W_424714() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_004251b4
void W_4251b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00425b9c
void W_425b9c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_004282b4
void W_4282b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00428618
void W_428618() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0042f724
void W_42f724(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, r1_2, r2_1, r1_3;
    r4_1 = r0;
    r0_1 = WeakCall1(r0);
    r0_2 = (u32)g_008bfa3c;
    r1_1 = 1u;
    r0_3 = *(u32*)(r0_2);
    r0_4 = Fn_43d514_2(r0_3, r1_1);
    r0_5 = *(u32*)(r4_1 + 288);
    r1_2 = *(u32*)(r0_5);
    r2_1 = *(u32*)(r1_2 + 28);
    r1_3 = 2u;
    { ((u32(*)(u32, u32))r2_1)(r0_5, r1_3); return; }
}

// FUN_0043426c
void W_43426c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008252f8;
    r1 = *(u32*)(r0 + 36);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_43429c;
    r0 = (u32)g_008bfa30;
    r0 = *(u32*)(r0);
    r0 = Fn_403a5c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    L_43429c:;
    r0 = r4;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_004892c4
u32 W_4892c4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 20u;
    return r0_2;
}

// FUN_0048e7b0
void W_48e7b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008272c8;
    r1 = *(u32*)(r0 + 76);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_48e7e0;
    r0 = r1;
    r0 = Fn_492d48_3(r0, r1, r2);
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 76) = r0;
    L_48e7e0:;
    r0 = r4 + 24u;
    r0 = WeakCall1(r0);
    r0 = r0 - 24u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0049f93c
u32 W_49f93c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 28u;
    return r0_2;
}

// FUN_00544bd8
void W_544bd8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c5bc;
    *(u32*)(r0) = r1; r0 = r0 + 48u;
    r0 = Fn_543ecc_2(r0, r1);
    r0 = r0 - 12u;
    r0 = Fn_543028_1(r0);
    r0 = r0 - 36u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00545220
void W_545220(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c5e0;
    r4 = r0;
    *(u32*)(r0) = r1; r0 = r0 + 4u;
    r2 = r0 + 4u;
    r1 = *(u32*)(r0 + 4);
    r0 = Fn_5421a0_3(r0, r1, r2);
    r0 = r4 + 28u;
    r0 = Fn_543ecc_1(r0);
    r0 = r0 - 12u;
    r0 = Fn_543028_1(r0);
    r0 = r0 - 16u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0055bca4
u32 W_55bca4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb6f8;
    r0 = *(u32*)(r0);
    fx = r0 & 1u;
    if (fx != 0) goto L_55bce4;
    r0 = (u32)g_008bb6f8;
    r0 = Fn_203d64_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55bce4;
    r0 = (u32)g_009dfad8;
    r0 = Fn_55c0c4_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_00784f34;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008bb6f8;
    r0 = WeakCall1(r0);
    L_55bce4:;
    r0 = (u32)g_009dfad8;
    return r0;
}

// FUN_0055c048
u32 W_55c048() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb6f8;
    r0 = *(u32*)(r0 + 4);
    fx = r0 & 1u;
    if (fx != 0) goto L_55c088;
    r0 = (u32)g_008bb6fc;
    r0 = Fn_203d64_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55c088;
    r0 = (u32)g_009dfc68;
    r0 = Fn_55c0c4_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_00784f34;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008bb6fc;
    r0 = WeakCall1(r0);
    L_55c088:;
    r0 = (u32)g_009dfc68;
    return r0;
}

// FUN_0055e338
u32 W_55e338() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb50c;
    r0 = *(u32*)(r0);
    fx = r0 & 1u;
    if (fx != 0) goto L_55e378;
    r0 = (u32)g_008bb50c;
    r0 = Fn_203d64_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55e378;
    r0 = (u32)g_009b9aa8;
    r0 = Fn_55eab8_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_0065eb58;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008bb50c;
    r0 = WeakCall1(r0);
    L_55e378:;
    r0 = (u32)g_009b9aa8;
    return r0;
}

// FUN_0056c084
u32 W_56c084(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082fc80;
    *(u32*)(r0) = r1; r0 = r0 + 8u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    return r0;
}

// FUN_005706a4
void W_5706a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_007e3e44;
    *(u32*)(r0) = r1; r0 = r0 + 4u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 4u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005706c4
u32 W_5706c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_007e3e44;
    *(u32*)(r0) = r1; r0 = r0 + 4u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 4u;
    return r0;
}

// FUN_0058d6b4
u32 W_58d6b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 8u;
    return r0_2;
}

// FUN_0058f378
u32 W_58f378(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 80u;
    r0 = WeakCall1(r0);
    r0 = r0 - 12u;
    r0 = Fn_02a080_1(r0);
    r0 = r0 - 20u;
    r0 = Fn_5b2010_1(r0);
    r4 = r0 - 40u;
    r0 = *(u32*)(r0 - 32);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_58f3b0;
    r0 = Fn_1fcd88_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 8) = r0;
    L_58f3b0:;
    r0 = r4 - 8u;
    return r0;
}

// FUN_00593600
void W_593600() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_005970f8
void W_5970f8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00598de8
void W_598de8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082d8e8;
    r1 = *(u32*)(r0 + 28);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_598e14;
    r0 = r1;
    r0 = Fn_1fcd88_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 28) = r0;
    L_598e14:;
    r0 = r4;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0059a54c
u32 W_59a54c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)&stk;
    r0 = Fn_01fd94_1(r0);
    r0 = Fn_01fd7c_1(r0);
    r0 = (u32)g_008ab420;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r4 = 1u;
    if ((int)fa <= (int)fb) r4 = 0u;
    r0 = (u32)&stk;
    r0 = Fn_01fd88_1(r0);
    r0 = (u32)&stk;
    r0 = WeakCall1(r0);
    r0 = r4;
    return r0;
}

// FUN_0059a59c
u32 W_59a59c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)&stk;
    r0 = Fn_01fd94_1(r0);
    r0 = Fn_01fd7c_1(r0);
    r0 = (u32)g_008ab420;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r4 = 1u;
    if ((int)fa <= (int)fb) r4 = 0u;
    r0 = (u32)&stk;
    r0 = Fn_01fd88_1(r0);
    r0 = (u32)&stk;
    r0 = WeakCall1(r0);
    r0 = r4;
    return r0;
}

// FUN_0059a824
void W_59a824() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)&stk;
    r0 = Fn_01fd94_1(r0);
    r0 = Fn_01fd7c_1(r0);
    r1 = (u32)g_008ab420;
    r0 = *(u32*)(r1 + 12);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r0 = r0 - 1u;
    if ((int)fa > (int)fb) *(u32*)(r1 + 12) = r0;
    r0 = (u32)&stk;
    r0 = Fn_01fd88_2(r0, r1);
    r0 = (u32)&stk;
    r0 = WeakCall1(r0);
    return;
}

// FUN_005a4074
u32 W_5a4074() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, r0_4;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 16u;
    r0_3 = WeakCall1(r0_2);
    r0_4 = r0_3 - 48u;
    return r0_4;
}

// FUN_005a5988
void W_5a5988(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082da8c;
    *(u32*)(r0) = r1; r0 = r0 + 40u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 40u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005a59ac
void W_5a59ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082da8c;
    *(u32*)(r0) = r1; r0 = r0 + 40u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 40u;
    { Fn_59ab78_1(r0); return; }
}

// FUN_005ad5b8
void W_5ad5b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082dd10;
    *(u32*)(r0) = r1; r0 = r0 + 260u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 236u;
    r0 = Fn_5a59ac_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005ad5f0
void W_5ad5f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082dd10;
    *(u32*)(r0) = r1; r0 = r0 + 260u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 236u;
    { Fn_5a59ac_1(r0); return; }
}

// FUN_005add84
void W_5add84(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082dd3c;
    *(u32*)(r0) = r1; r0 = r0 + 316u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 304u;
    r0 = Fn_5ad5f0_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005addb0
void W_5addb0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082dd3c;
    *(u32*)(r0) = r1; r0 = r0 + 316u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 304u;
    { Fn_5ad5f0_1(r0); return; }
}

// FUN_005b1524
void W_5b1524(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082df14;
    *(u32*)(r0) = r1; r0 = r0 + 28u;
    r0 = Fn_0267bc_2(r0, r1);
    r0 = r0 - 28u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}
