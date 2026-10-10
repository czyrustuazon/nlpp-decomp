// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_2024b0_1(u32);
u32 WeakCall0();
extern char g_00814f48[];
u32 Fn_02a080_1(u32);
u32 Fn_5a579c_3(u32, u32, u32);
u32 WeakCall1(u32);
extern char g_00814fbc[];
u32 Fn_1fcd88_2(u32, u32);
u32 Fn_250b94_1(u32);
extern char g_0081bd18[];
u32 WeakCall2(u32, u32);
u32 Fn_313150_2(u32, u32);
u32 Fn_630328_2(u32, u32);
extern char g_0081e448[];
extern char g_0081fa68[];
extern char g_008201a8[];
u32 Fn_60cbc0_3(u32, u32, u32);
extern char g_00820448[];
u32 Fn_168e74_4(u32, u32, u32, u32);
extern char g_00821c28[];
u32 Fn_016030_3(u32, u32, u32);

// FUN_0023767c
void W_23767c() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00238f90
void W_238f90() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0023b18c
void W_23b18c() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0023bb74
void W_23bb74() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0023c53c
void W_23c53c() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0023ea78
void W_23ea78() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0023fc70
void W_23fc70() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00243a94
void W_243a94() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_002445c0
void W_2445c0() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00244f04
void W_244f04() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0024858c
void W_24858c() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00249b00
void W_249b00() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0024a744
void W_24a744() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_002508c8
void W_2508c8(u32 a0) {
    u32 r0 = a0, r1, r2, r4, r5, fa, fb;
    r4 = r0;
    r2 = (u32)g_00814f48;
    r1 = *(u32*)(r0 + 56);
    r5 = 0u;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2508f4;
    r0 = r1;
    r0 = Fn_5a579c_3(r0, r1, r2);
    *(u32*)(r4 + 56) = r5;
    L_2508f4:;
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    r0 = r4 + 48u;
    if (fa != fb) *(u32*)(r4 + 52) = r5;
    r0 = Fn_02a080_1(r0);
    r0 = r0 - 48u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0025260c
void W_25260c(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_00814fbc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 648);
    if (r0 == 0u) goto L_252634;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 648) = r0;
    L_252634:;
    r0 = r4 + 652u;
    r0 = Fn_250b94_1(r0);
    r0 = r0 - 652u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00285990
u32 W_285990(u32 a0) {
    u32 r4_1, r0_1, r0_2;
    r4_1 = a0;
    r0_1 = WeakCall1(a0);
    r0_2 = 0u;
    *(u8*)(r4_1 + 1192) = r0_2;
    return r0_2;
}

// FUN_0029123c
u32 W_29123c(u32 a0) {
    u32 r4_1, r0_1, r0_2;
    r4_1 = a0;
    r0_1 = WeakCall1(a0);
    r0_2 = 0u;
    *(u8*)(r4_1 + 1192) = r0_2;
    return r0_2;
}

// FUN_00291cd0
u32 W_291cd0(u32 a0) {
    u32 r4_1, r0_1, r0_2;
    r4_1 = a0;
    r0_1 = WeakCall1(a0);
    r0_2 = 0u;
    *(u8*)(r4_1 + 1192) = r0_2;
    return r0_2;
}

// FUN_002a8ec4
u32 W_2a8ec4() {
    u32 r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 4u;
    return r0_2;
}

// FUN_002ab2c4
void W_2ab2c4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081bd18;
    *(u32*)(r0) = r1; r0 = r0 + 8u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_002ab2e4
u32 W_2ab2e4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081bd18;
    *(u32*)(r0) = r1; r0 = r0 + 8u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    return r0;
}

// FUN_002b2c98
u32 W_2b2c98() {
    u32 r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 24u;
    return r0_2;
}

// FUN_002f02c4
void W_2f02c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, stk[16];
    r4 = r1;
    r1 = *(u32*)(r0 + 220);
    if (r1 == 0u) goto L_2f0304;
    r0 = *(u8*)(r0 + 664);
    if (r0 != 1u) goto L_2f0304;
    r0 = (u32)stk;
    r0 = Fn_630328_2(r0, r1);
    r1 = (u32)stk;
    r0 = r4;
    r0 = Fn_313150_2(r0, r1);
    r0 = (u32)stk;
    r0 = WeakCall1(r0);
    L_2f0304:;
    return;
}

// FUN_0030c268
void W_30c268() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0030e3d0
void W_30e3d0() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00342f8c
void W_342f8c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081e448;
    *(u32*)(r0) = r1; r0 = r0 + 12u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00342fac
u32 W_342fac(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081e448;
    *(u32*)(r0) = r1; r0 = r0 + 12u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    return r0;
}

// FUN_003436ec
u32 W_3436ec(u32 a0) {
    u32 r0_1, r0_2, r0_3;
    r0_1 = a0 + 72u;
    r0_2 = WeakCall1(r0_1);
    r0_3 = 1u;
    return r0_3;
}

// FUN_00345238
u32 W_345238(u32 a0) {
    u32 r0_1, r0_2, r0_3;
    r0_1 = a0 + 72u;
    r0_2 = WeakCall1(r0_1);
    r0_3 = 1u;
    return r0_3;
}

// FUN_00376f64
void W_376f64() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_003778c0
void W_3778c0() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00383a94
void W_383a94(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081fa68;
    *(u32*)(r0) = r1; r0 = r0 + 56u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 56u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00383abc
u32 W_383abc(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081fa68;
    *(u32*)(r0) = r1; r0 = r0 + 56u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 56u;
    return r0;
}

// FUN_0038ed98
void W_38ed98() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0038ef50
void W_38ef50() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0038f2bc
void W_38f2bc() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0038f408
void W_38f408() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0038f5bc
void W_38f5bc() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0038f7b4
void W_38f7b4() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00390194
void W_390194() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00395318
void W_395318(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_008201a8;
    r1 = *(u32*)(r0 + 100);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_395358;
    r0 = r1;
    r0 = Fn_60cbc0_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 100);
    if (r0 == 0u) goto L_395358;
    r0 = WeakCall1(r0);
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 100) = r0;
    L_395358:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0039db94
void W_39db94(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_00820448;
    *(u32*)(r0) = r1; r0 = r0 + 12u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0039dbbc
u32 W_39dbbc(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_00820448;
    *(u32*)(r0) = r1; r0 = r0 + 12u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    return r0;
}

// FUN_003a33c8
void W_3a33c8() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_003a34ec
u32 W_3a34ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, fa, fb;
    r4 = r0;
    r0 = WeakCall1(r0);
    r3 = *(u32*)(r4 + 52);
    fa = r3; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 12);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_3a3520;
    r1 = *(u32*)(r0 + 52);
    r2 = 0u;
    r0 = r3;
    return Fn_168e74_4(r0, r1, r2, r3);
    L_3a3520:;
    return r0;
}

// FUN_003a3d24
void W_3a3d24() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_003a54a0
u32 W_3a54a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, fa, fb;
    r4 = r0;
    r0 = WeakCall1(r0);
    r3 = *(u32*)(r4 + 52);
    fa = r3; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 12);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_3a54d4;
    r1 = *(u32*)(r0 + 52);
    r2 = 0u;
    r0 = r3;
    return Fn_168e74_4(r0, r1, r2, r3);
    L_3a54d4:;
    return r0;
}

// FUN_003a5730
void W_3a5730() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_003d2254
void W_3d2254(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_00821c28;
    r1 = *(u32*)(r0 + 160);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_3d2280;
    r0 = r1;
    r0 = Fn_016030_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 160) = r0;
    L_3d2280:;
    r0 = r4;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_003d2d6c
void W_3d2d6c() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}
