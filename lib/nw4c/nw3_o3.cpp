// NintendoWare for CTR inline/template functions from the shared inline zone, used only by NW (tools/nw_classify.py, technical.md section 5 gap 3), matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008a88e0[];
extern char g_008a88d8[];
extern char g_008ab298[];
extern char g_008ab320[];
extern char g_008ab2b0[];
extern char g_008b8618[];
extern char g_008a88d4[];
extern char g_008a88dc[];
extern char g_008bb6f0[];
extern char g_008bb724[];
extern char g_008bb4f8[];
extern char g_008bb74c[];
extern char g_007e9404[];
extern char g_008a833c[];
extern char g_008a88bc[];
extern char g_0089a341[];
extern char g_0089a344[];
extern char g_0089a417[];
u32 Fn_5642f0_1(u32);
u32 Fn_563644_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_56469c_1(u32);
u32 Fn_5656dc_1(u32);
extern char g_008a7db0[];
extern char g_008ab81c[];
extern char g_009ae9f8[];
extern char g_0080d148[];
extern char g_0081c7c4[];
extern char g_0081c7f8[];
extern char g_0081c8a0[];
extern char g_0081c8d4[];
extern char g_0081c908[];
extern char g_0081c93c[];
extern char g_0079edec[];
extern char g_0079ee9c[];
extern char g_0079f314[];
extern char g_0079f0ec[];
extern char g_0079efe4[];
extern char g_0079f0b4[];
extern char g_0079ee14[];
extern char g_0079f2b4[];
extern char g_0079f28c[];
extern char g_0079f2ec[];
extern char g_0079f08c[];
extern char g_0079ee64[];
extern char g_0079f21c[];
extern char g_0079ef0c[];
extern char g_0079ef84[];
extern char g_0079f184[];
extern char g_0079ef5c[];
extern char g_0079efac[];
extern char g_0079eed4[];
extern char g_0079f114[];
extern char g_0079f14c[];
extern char g_0079f1bc[];
extern char g_0079f1e4[];
extern char g_0079f01c[];
extern char g_0079ef34[];
extern char g_0079ee3c[];
extern char g_0082bfa0[];
extern char g_0082d5bc[];
extern char g_0082d5cc[];
extern char g_0082d5dc[];
extern char g_0082d5ec[];
u32 Fn_637b64_2(u32, u32);
extern char g_009ab338[];
extern char g_008a8428[];
extern char g_00807724[];
extern char g_0081ce74[];
extern char g_008b8668[];
extern char g_0082ca60[];
extern char g_008ab848[];
extern char g_008aab30[];
extern char g_008aab18[];
extern char g_008bfa40[];
extern char g_0079f254[];
extern char g_00582c40[];
extern char g_008274cc[];
extern char g_0058a548[];
extern char g_008274dc[];
extern char g_0058e824[];
extern char g_008274ec[];
extern char g_008274fc[];
extern char g_0082750c[];
extern char g_0082d63c[];
extern char g_0082d64c[];
extern char g_0082d65c[];
extern char g_0082d66c[];
extern char g_0082d67c[];
extern char g_0082d68c[];
extern char g_0082d69c[];
extern char g_0082d6ac[];
u32 Fn_5667c4_2(u32, u32);
u32 Fn_55e338_3(u32, u32, u32);
u32 Fn_55ea18_2(u32, u32);
u32 Fn_54f870_1(u32);
u32 Fn_5504e0_3(u32, u32, u32);
extern char g_0082dae4[];
extern char g_0082df14[];
extern char g_008a8860[];
extern char g_0089a330[];
extern char g_007be1e4[];
extern char g_007e39cc[];
extern char g_007e3abc[];
extern char g_007e3b78[];
extern char g_007e3ac0[];
extern char g_0082ee38[];
extern char g_008bfa48[];
extern char g_0082ef70[];
extern char g_0082f0a0[];
extern char g_0082fc18[];
extern char g_007ccb6c[];
extern char g_0079e410[];
extern char g_007d502c[];
extern char g_0081cecc[];
extern char g_0082cad4[];
u32 Fn_2024b0_4(u32, u32, u32, u32);
extern char g_008bfa54[];
extern char g_008b8778[];
extern char g_008b877c[];
extern char g_008aab68[];
extern char g_0082c6b0[];
extern char g_009a42a8[];
u32 WeakCall4(u32, u32, u32, u32);
u32 WeakCall3(u32, u32, u32);
extern char g_009b0ccc[];
extern char g_008ab268[];
extern char g_00671894[];
extern char g_0069cad4[];
extern char g_007e3f0c[];
extern char g_008bb520[];
extern char g_008bb528[];
extern char g_008ab420[];
extern char g_0082d9b4[];
extern char g_0082d9d4[];
extern char g_006b2bac[];
extern char g_0082de88[];
extern char g_008a834c[];
extern char g_008e0228[];
extern char g_008e0238[];
extern char g_008bfadc[];
extern char g_00550023[];
extern char g_008bfb40[];
extern char g_009b74b8[];
extern char g_008b8724[];
extern char g_008b872c[];
extern char g_008b8730[];
extern char g_008b8734[];
extern char g_008b8738[];
extern char g_008b8740[];
extern char g_008bfa50[];
extern char g_008bfa60[];
extern char g_008bfa64[];
extern char g_008a6196[];
extern char g_008121e8[];
extern char g_007c7048[];
extern char g_008a75dc[];
extern char g_00804a54[];
extern char g_0089a430[];

// FUN_00634218
u32 W_634218() {

    return 0;
}

// FUN_00634494
u32 W_634494(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u16*)(r0 + 10);
    return r0;
}

// FUN_006344a4
u32 W_6344a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 16);
    if (fa != fb) r0 = r0 + r1;
    return r0;
}

// FUN_006345a8
u32 W_6345a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6345c0;
    r0 = *(u8*)(r0 + 24);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    L_6345c0:;
    return r0;
}

// FUN_006345c4
u32 W_6345c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u16*)(r0 + 12);
    return r0;
}

// FUN_006345d4
u32 W_6345d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 8);
    if (fa != fb) r0 = r0 + r1;
    return r0;
}

// FUN_00634614
u32 W_634614() {

    return 0;
}

// FUN_0063471c
u32 W_63471c() {

    return 0;
}

// FUN_006347c4
u32 W_6347c4() {

    return 255;
}

// FUN_006347dc
u32 W_6347dc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1;
    return r0;
}

// FUN_00634d1c
u32 W_634d1c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 356);
    if (fa == fb) goto L_634d50;
    r1 = r1 - 1u;
    r2 = *(u8*)(r0 + 360);
    r1 = r1 & 255u;
    fa = r2; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_634d50;
    r0 = *(u32*)(r0 + 352);
    r2 = 4u;
    r1 = r2 + (r1 << 3);
    r0 = *(u32*)(r0 + r1);
    L_634d50:;
    return r0;
}

// FUN_00634ea8
u32 W_634ea8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 360);
    r0 = r0 + 1u;
    r0 = r0 & 255u;
    return r0;
}

// FUN_00634ec4
u32 W_634ec4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 & ~3u;
    r1 = r1 & 3u;
    r0 = r0 + r2;
    r0 = r0 + r1;
    r0 = *(u8*)(r0 + 328);
    return r0;
}

// FUN_00635f90
u32 W_635f90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 256);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00635fa0
void W_635fa0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r2 >> 1;
    r1 = r1 + (r2 << 2);
    r1 = *(u32*)(r1 + 216);
    *(u32*)(r0) = r1;
    return;
}

// FUN_00636074
u32 W_636074(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 256);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_006362d0
u32 W_6362d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1 >> 3;
    r1 = r1 & 3u;
    r0 = r0 + (r2 << 2);
    r0 = r0 + r1;
    r0 = *(u8*)(r0 + 216);
    return r0;
}

// FUN_0063638c
u32 W_63638c() {

    return (u32)g_008b8618;
}

// FUN_006363a4
u32 W_6363a4() {

    return (u32)g_008a88dc;
}

// FUN_00636db0
void W_636db0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 20);
    { ((u32(*)(u32, u32))r2_2)(r0, r1); return; }
}

// FUN_00636dbc
u32 W_636dbc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 536);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_636de4;
    r2 = *(u32*)(r0);
    fa = r2; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_636de4;
    r2 = 4u;
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0 + r1);
    L_636de4:;
    return r0;
}

// FUN_00636de8
u32 W_636de8() {

    return 0;
}

// FUN_00636df0
u32 W_636df0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 28);
    return t1;
}

// FUN_00636df8
u32 W_636df8() {

    return 1;
}

// FUN_00636e00
u32 W_636e00() {

    return 1;
}

// FUN_00636e08
u32 W_636e08(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 24);
    return t1;
}

// FUN_00636e10
u32 W_636e10() {

    return 0;
}

// FUN_00636e18
u32 W_636e18() {

    return 0;
}

// FUN_00636e20
u32 W_636e20() {

    return 1;
}

// FUN_00637140
u32 W_637140(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 60);
    r0 = *(u32*)(r0 + 64);
    r0 = r1 - r0;
    return r0;
}

// FUN_00637150
u32 W_637150() {

    return 1;
}

// FUN_00637158
u32 W_637158() {

    return 1;
}

// FUN_00637160
u32 W_637160(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    return t1;
}

// FUN_00637168
u32 W_637168() {

    return 0;
}

// FUN_00637170
u32 W_637170() {

    return 0;
}

// FUN_00637178
u32 W_637178() {

    return 0;
}

// FUN_00637280
u32 W_637280(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    r0 = r0 + r1;
    return r0;
}

// FUN_00637a28
u32 W_637a28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 20);
    fa = r1; fb = 16384u;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637a58;
    r1 = *(u16*)(r0 + 32);
    fa = r1; fb = 16384u;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637a58;
    r1 = *(u16*)(r0 + 44);
    fa = r1; fb = 16384u;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637a58:;
    r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_00637a60
u32 W_637a60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 16386u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637a94;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637a94;
    r2 = *(u16*)(r0 + 44);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637a94:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637aa0
u32 W_637aa0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 20);
    fa = r1; fb = 16384u;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637ad0;
    r1 = *(u16*)(r0 + 32);
    fa = r1; fb = 16384u;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637ad0;
    r1 = *(u16*)(r0 + 44);
    fa = r1; fb = 16384u;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637ad0:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637ad8
u32 W_637ad8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 16385u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637b0c;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637b0c;
    r2 = *(u16*)(r0 + 44);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637b0c:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637b18
u32 W_637b18(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0);
    fa = r1; fb = 768u;
    if (fa == fb) r1 = *(u32*)(r0 + 4);
    if (fa == fb) r0 = r0 + r1;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00637c1c
u32 W_637c1c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 20);
    fa = r1; fb = 26624u;
    if (fa == fb) r1 = r0 + 20u;
    if (fa == fb) goto L_637c3c;
    r1 = *(u16*)(r0 + 32);
    fa = r1; fb = 26624u;
    if (fa == fb) r1 = r0 + 32u;
    if (fa != fb) r1 = 0u;
    L_637c3c:;
    r1 = *(u32*)(r1 + 4);
    r0 = r0 + r1;
    return r0;
}

// FUN_00637c78
u32 W_637c78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 20);
    fa = r1; fb = 26624u;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637c98;
    r1 = *(u16*)(r0 + 32);
    fa = r1; fb = 26624u;
    if (fa == fb) r0 = r0 + 32u;
    if (fa != fb) r0 = 0u;
    L_637c98:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637ca0
u32 W_637ca0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 24);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 28);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa != fb) r0 = *(u32*)(r0 + 36);
    if (fa != fb) goto L_637cc8;
    r0 = *(u32*)(r0 + 20);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    return ((u32(*)(u32))r1)(r0);
    L_637cc8:;
    return r0;
}

// FUN_00637ccc
void W_637ccc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 20);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00637cdc
void W_637cdc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 20);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 76);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00637cec
void W_637cec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 20);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 60);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_0063840c
u32 W_63840c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 28);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638490
u32 W_638490(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 20);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638a24
u32 W_638a24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638a3c
u32 W_638a3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    r0 = r0 + r1;
    return r0;
}

// FUN_00639098
u32 W_639098(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 376);
    fa = r0; fb = r1;
    if (fa >= fb) goto L_6390b4;
    r0 = r1 - r0;
    fa = r0; fb = 1073741824u;
    if (fa >= fb) goto L_6390c0;
    goto L_6390c8;
    L_6390b4:;
    r0 = r0 - r1;
    fa = r0; fb = 1073741824u;
    if (fa >= fb) goto L_6390c8;
    L_6390c0:;
    r0 = 1u;
    return r0;
    L_6390c8:;
    r0 = 0u;
    return r0;
}

// FUN_00639150
u32 W_639150(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) return r0;
    r0 = *(u32*)(r0 + 8);
    r0 = Fn_637b64_2(r0, r1);
    r0 = *(u32*)(r0);
    return r0;
}

// FUN_0063929c
u32 W_63929c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    r1 = 33619968u;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = r1;
    if (fa <= fb) r0 = 1u;
    if (fa > fb) r0 = 0u;
    return r0;
}

// FUN_00639364
u32 W_639364(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 12);
    fa = r2; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_639388;
    r0 = *(u32*)(r0 + 4);
    r1 = r1 + (r1 << 1);
    r2 = 12u;
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0 + r1);
    L_639388:;
    return r0;
}

// FUN_00639dd0
u32 W_639dd0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 80);
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_0063ad94
void W_63ad94(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 308);
    r2 = r1;
    r1 = r0;
    r0 = r3;
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_0063b594
u32 W_63b594(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 12);
    r2 = r2 + r0;
    r3 = r2 + (r1 << 3);
    r0 = *(u16*)(r3 + 4);
    fa = r0; fb = 22784u;
    if (fa == fb) goto L_63b5bc;
    r0 = r0 - 22784u;
    r0 = r0 - 3u;
    if (r0 == 0) goto L_63b5d4;
    goto L_63b5d0;
    L_63b5bc:;
    r0 = *(u32*)(r2);
    fa = r0; fb = r1;
    if (fa > fb) r0 = *(u32*)(r3 + 8);
    if (fa > fb) r0 = r0 + r2;
    if (fa > fb) goto L_63b5d4;
    L_63b5d0:;
    r0 = 0u;
    L_63b5d4:;
    return r0;
}

// FUN_0063b5e4
u32 W_63b5e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 12);
    r0 = r0 + r1;
    return r0;
}

// FUN_0063ba08
u32 W_63ba08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 12);
    r0 = r0 + r1;
    return r0;
}

// FUN_0063ba14
u32 W_63ba14(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    r0 = r0 + r1;
    return r0;
}

// FUN_0063ba20
u32 W_63ba20(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 20u; r2 = *(u32*)(r0);
    fa = r2; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_63ba3c;
    r1 = r0 + (r1 << 3);
    r1 = *(u32*)(r1 + 8);
    r0 = r0 + r1;
    L_63ba3c:;
    return r0;
}

// FUN_0063bb7c
u32 W_63bb7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 1024u;
    r0 = *(signed char*)(r0 + 106);
    return r0;
}

// FUN_0063bb94
float W_63bb94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r1_2, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 60);
    r1_1 = *(u32*)(r0_1);
    r1_2 = *(u32*)(r1_1 + 8);
    r0_2 = ((u32(*)(u32))r1_2)(r0_1);
    f0_1 = u2f(r0_2);
    f1_1 = *(float*)(r4_1 + 36);
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0063bbec
float W_63bbec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r1_2, r0_2;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 60);
    r1_1 = *(u32*)(r0_1);
    r1_2 = *(u32*)(r1_1 + 12);
    r0_2 = ((u32(*)(u32))r1_2)(r0_1);
    f0_1 = u2f(r0_2);
    f1_1 = *(float*)(r4_1 + 40);
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0063bc18
u32 W_63bc18() {

    return (u32)g_007e9404;
}

// FUN_0063bc54
u32 W_63bc54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    r1 = *(u8*)(r0 + 20);
    r0 = *(u8*)(r0 + 22);
    r0 = r1 - r0;
    return r0;
}

// FUN_0063bc68
u32 W_63bc68(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_0063bc74
u32 W_63bc74(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r2_2, r0_1, r0_2, r0_3;
    r2_1 = *(u32*)(r0);
    r2_2 = *(u32*)(r2_1 + 60);
    r0_1 = ((u32(*)(u32, u32))r2_2)(r0, r1);
    r0_2 = r0_1 << 8;
    r0_3 = (u32)((int)r0_2 >> 24);
    return r0_3;
}

// FUN_0063be28
u32 W_63be28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    r0 = *(u32*)(r0 + 8);
    r0 = *(signed char*)(r0 + 2);
    return r0;
}

// FUN_0063be38
u32 W_63be38(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u8*)((u32)(t1) + 7);
    return t2;
}

// FUN_0063be44
u32 W_63be44(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u32*)((u32)(t1) + 8);
    u32 t3 = *(u16*)((u32)(t2) + 10);
    return t3;
}

// FUN_0063be54
u32 W_63be54(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u32*)((u32)(t1) + 8);
    u32 t3 = *(u16*)((u32)(t2) + 8);
    return t3;
}

// FUN_0063bfb4
u32 W_63bfb4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 16);
    return t1;
}

// FUN_0063bfbc
u32 W_63bfbc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 16);
    r0 = r0 & 2u;
    r0 = r0 >> 1;
    return r0;
}

// FUN_0063bfcc
u32 W_63bfcc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 16);
    r0 = r0 & 4u;
    r0 = r0 >> 2;
    return r0;
}

// FUN_0063bfdc
u32 W_63bfdc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u8*)((u32)(t1) + 21);
    return t2;
}

// FUN_0063c004
u32 W_63c004(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u8*)((u32)(t1) + 22);
    return t2;
}

// FUN_0063c010
u32 W_63c010(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u8*)((u32)(t1) + 20);
    return t2;
}

// FUN_00643964
u32 W_643964(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 524);
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_643984;
    r0 = 4u;
    r1 = r0 + (r1 << 2);
    r0 = *(u32*)(r3 + r1);
    *(u32*)(r3 + r1) = r2;
    L_643984:;
    return r0;
}

// FUN_00643b14
u32 W_643b14(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 524);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_643b3c;
    r2 = *(u32*)(r0);
    fa = r2; fb = r1;
    if (fa <= fb) r0 = 0u;
    if (fa <= fb) goto L_643b3c;
    r2 = 4u;
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0 + r1);
    L_643b3c:;
    return r0;
}

// FUN_00643b40
void W_643b40(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4294967284u; r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 16);
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
}

// FUN_006441ec
void W_6441ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r0 = r0 + 4u;
    if (fa == fb) goto L_6441fc;
    { Fn_5667c4_2(r0, r1); return; }
    L_6441fc:;
    return;
}

// FUN_00644254
void W_644254(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082cad4;
    r3 = r0 - 4u;
    r0 = r0 - 4u;
    r2 = r1 + 32u;
    *(u32*)(r3 + 0) = r1; *(u32*)(r3 + 4) = r2;
    { Fn_2024b0_4(r0, r1, r2, r3); return; }
}

// FUN_00644270
u32 W_644270(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r3_1, r0_1, r2_1;
    r1_1 = (u32)g_0082cad4;
    *(u32*)((r0 - 4u) + 0) = r1_1; *(u32*)((r0 - 4u) + 4) = (r1_1 + 32u);
    return (r0 - 4u);
}

// FUN_0064454c
void W_64454c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0 - 68u;
    r0 = *(u8*)(r0 - 56);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_644594;
    r0 = *(u32*)(r4 + 100);
    fa = r1; fb = r0;
    if (fa > fb) goto L_644594;
    fa = r0; fb = r2;
    if (fa > fb) goto L_644594;
    r0 = *(u8*)(r4 + 13);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_644594;
    r0 = Fn_55e338_3(r0, r1, r2);
    r1 = r4 + 80u;
    r0 = Fn_55ea18_2(r0, r1);
    r0 = 0u;
    *(u8*)(r4 + 13) = r0;
    L_644594:;
    return;
}

// FUN_00644598
void W_644598(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4294967228u; r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 20);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_006445a4
u32 W_6445a4(u32 a0) {
    return Fn_5642f0_1((a0 - 68));
}

// FUN_006445ac
u32 W_6445ac(u32 a0) {
    return Fn_563644_1((a0 - 68));
}

// FUN_006445b4
u32 W_6445b4(u32 a0) {
    u32 t1 = Fn_56469c_1((a0 - 68));
    return Fn_2024b0_1(t1);
}

// FUN_00644668
u32 W_644668(u32 a0) {
    u32 t1 = Fn_5656dc_1((a0 - 68));
    return Fn_2024b0_1(t1);
}

// FUN_0064612c
void W_64612c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4294967216u; r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 20);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_006461dc
void W_6461dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4294967216u; r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 20);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_00646278
u32 W_646278(u32 a0) {
    u32 t1 = Fn_5656dc_1((a0 - 80));
    return Fn_2024b0_1(t1);
}

// FUN_0064628c
u32 W_64628c(u32 a0) {
    return Fn_5656dc_1((a0 - 80));
}

// FUN_0064631c
void W_64631c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca60;
    r4 = r0 - 88u;
    r2 = r1 + 36u;
    *(u32*)(r4) = r1;
    r0 = r4;
    *(u32*)(r4 + 88) = r2;
    r0 = Fn_5504e0_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_54f870_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00646350
void W_646350(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca60;
    r0 = r0 - 88u;
    r2 = r1 + 36u;
    *(u32*)(r0) = r1;
    r4 = r0;
    *(u32*)(r0 + 88) = r2;
    r0 = Fn_5504e0_3(r0, r1, r2);
    r0 = r4;
    { Fn_54f870_1(r0); return; }
}

// FUN_0065ee6c
void W_65ee6c(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008ab81c));
    *(u32*)((u32)(t1) + 88) = ((a0 - 32768) - 1216);
}

// FUN_006659e4
void W_6659e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r0 = *(u32*)(r0 + 92);
    r1 = 3u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_006691d0
void W_6691d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008aab18;
    fa = r0; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r2);
    if (fa != fb) *(u32*)(r0) = r3;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r2 + 4);
    if (fa != fb) *(u32*)(r1) = r0;
    return;
}
