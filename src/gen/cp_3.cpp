// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 WeakCall0();
u32 Fn_5c4b08_2f4(u32, u32, float, float, float, float);
extern char g_0081298c[];
u32 Fn_1c819c_0();
u32 Fn_22e398_2f1(u32, u32, float);
extern char g_0089db44[];
u32 WeakCall1(u32);
u32 WeakCall2(u32, u32);
u32 Fn_5befe8_2(u32, u32);
extern char g_008bfa88[];
u32 Fn_2acc68_1(u32);
u32 Fn_2e846c_2(u32, u32);
u32 Fn_340aec_3(u32, u32, u32);
u32 Fn_31309c_0();

// FUN_00225b54
void W_225b54() {
    { WeakCall0(); return; }
}

// FUN_0022669c
void W_22669c(u32 a0) {
    u32 r0 = a0, r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -88.0f;
    f1_1 = 88.0f;
    f2_1 = -68.0f;
    f3_1 = 68.0f;
    r1_1 = (u32)stk;
    r0_1 = r0 + 180u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_002291a4
void W_2291a4() {
    u32 r0, r1, r2, r3;
    float f0, f1;
    r0 = Fn_1c819c_0();
    r3 = (u32)g_0081298c;
    r1 = ~0u;
    *(u32*)(r0 + 112) = r1;
    r2 = 0u;
    *(u32*)(r0) = r3;
    *(u8*)(r0 + 116) = r2;
    f0 = -160.0f;
    f1 = 120.0f;
    r1 = r0 + 120u;
    *(u8*)(r0 + 117) = r2;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    *(u8*)(r0 + 128) = r2;
    return;
}

// FUN_0022e74c
void W_22e74c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    float f0_1;
    f0_1 = 1.0f;
    *(u32*)(r0 + 96) = r1;
    *(u32*)(r0 + 100) = r1;
    *(float*)(r0 + 104) = f0_1;
    { Fn_22e398_2f1(r0, r1, f0_1); return; }
}

// FUN_0023cedc
void W_23cedc(u32 a0) {
    u32 r0 = a0, r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -118.0f;
    f1_1 = 30.0f;
    f2_1 = -104.0f;
    f3_1 = 96.0f;
    r1_1 = (u32)stk;
    r0_1 = r0 + 416u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_0024a7c8
void W_24a7c8() {
    { WeakCall0(); return; }
}

// FUN_002501a4
void W_2501a4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 104) = r1_1;
    *(u32*)(r0 + 108) = r2_1;
    return;
}

// FUN_0025c230
void W_25c230(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    float f0, f1, f2, f3, f4;
    fa = r1; fb = 39u;
    if (fa >= fb) r1 = 0u;
    if (fa < fb) r1 = r1 + 1u;
    r2 = (u32)g_0089db44;
    r1 = r1 + (r1 << 2);
    r1 = r2 + (r1 << 2);
    f0 = *(float*)(r1 + 0);
    f1 = *(float*)(r1 + 4);
    f2 = *(float*)(r1 + 8);
    f3 = *(float*)(r1 + 12);
    f4 = *(float*)(r1 + 16);
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    *(float*)(r0 + 12) = f3;
    *(float*)(r0 + 16) = f4;
    return;
}

// FUN_0025c754
void W_25c754(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 480u;
    { WeakCall1(r0); return; }
}

// FUN_0025c89c
void W_25c89c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    *(u32*)(r0 + 16) = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_00261a1c
u32 W_261a1c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r0 = *(u8*)(r0 + 1341);
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00279fb4
void W_279fb4() {
    { WeakCall0(); return; }
}

// FUN_0027b964
u32 W_27b964(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb, stk;
    r4 = r0;
    r0 = 0u;
    stk = r0;
    r0 = *(u32*)(r4 + 808);
    r1 = (u32)&stk;
    r0 = *(u32*)(r0 + 120);
    r0 = Fn_5befe8_2(r0, r1);
    if (r0 == 0u) goto L_27b99c;
    r0 = stk;
    r0 = r0 + 1u;
    stk = r0;
    return r0;
    L_27b99c:;
    r0 = *(u32*)(r4 + 864);
    r0 = r0 - 1u;
    fa = r0; fb = 0u;
    *(u32*)(r4 + 864) = r0;
    if ((int)fa <= (int)fb) r0 = 99u;
    if ((int)fa > (int)fb) r0 = 0u;
    return r0;
}

// FUN_0027de34
void W_27de34() {
    { WeakCall0(); return; }
}

// FUN_0027e304
void W_27e304() {
    { WeakCall0(); return; }
}

// FUN_0029be70
void W_29be70(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r1_1, r0_1, r0_2;
    float f0_1, f1_1, f2_1;
    r1_1 = r1 + (r1 << 1);
    f0_1 = *(float*)(r2 + 0);
    f1_1 = *(float*)(r2 + 4);
    f2_1 = *(float*)(r2 + 8);
    r0_1 = r0 + (r1_1 << 2);
    r0_2 = r0_1 + 360u;
    *(float*)(r0_2 + 0) = f0_1;
    *(float*)(r0_2 + 4) = f1_1;
    *(float*)(r0_2 + 8) = f2_1;
    return;
}

// FUN_0029c080
void W_29c080() {
    { WeakCall0(); return; }
}

// FUN_002a6694
void W_2a6694(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 115);
    r0 = *(u8*)(r0 + 114);
    { WeakCall2(r0, r1); return; }
}

// FUN_002aa030
void W_2aa030(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 16) = r1_1;
    *(u32*)(r0 + 20) = r2_1;
    return;
}

// FUN_002ac7e8
void W_2ac7e8() {
    u32 r0;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_2ac7fc;
    { Fn_2acc68_1(r0); return; }
    L_2ac7fc:;
    return;
}

// FUN_002b4798
void W_2b4798(u32 a0) {
    u32 r0 = a0, r2_1, r3_1;
    r2_1 = 0u;
    *(u8*)(r0 + 12) = r2_1;
    r3_1 = r2_1;
    *(u8*)(r0 + 13) = r2_1;
    *(u64*)(r0 + 24) = (u64)r2_1 | ((u64)r3_1 << 32);
    *(u8*)(r0 + 32) = r2_1;
    return;
}

// FUN_002b4fd8
void W_2b4fd8() {
    { WeakCall0(); return; }
}

// FUN_002b5008
void W_2b5008() {
    { WeakCall0(); return; }
}

// FUN_002b500c
void W_2b500c(u32 a0) {
    u32 r0 = a0, r2_1, r3_1;
    r2_1 = 0u;
    *(u8*)(r0 + 12) = r2_1;
    r3_1 = r2_1;
    *(u8*)(r0 + 13) = r2_1;
    *(u64*)(r0 + 24) = (u64)r2_1 | ((u64)r3_1 << 32);
    *(u8*)(r0 + 32) = r2_1;
    return;
}

// FUN_002ca568
void W_2ca568(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r12;
    r1 = *(u32*)(r0);
    r3 = *(signed char*)(r0 + 9);
    r2 = *(signed char*)(r0 + 8);
    r12 = *(u32*)(r1 + 20);
    r1 = *(u32*)(r0 + 4);
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_002d16c4
void W_2d16c4() {
    { WeakCall0(); return; }
}

// FUN_002d1b48
void W_2d1b48() {
    { WeakCall0(); return; }
}

// FUN_002d8754
void W_2d8754(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r0_1;
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = *(float*)(r1 + 0);
    f1_1 = *(float*)(r1 + 4);
    f2_1 = *(float*)(r1 + 8);
    f3_1 = *(float*)(r1 + 12);
    r0_1 = r0 + 16u;
    *(float*)(r0_1 + 0) = f0_1;
    *(float*)(r0_1 + 4) = f1_1;
    *(float*)(r0_1 + 8) = f2_1;
    *(float*)(r0_1 + 12) = f3_1;
    return;
}

// FUN_002e39e4
void W_2e39e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 32) = r1_1;
    *(u32*)(r0 + 36) = r2_1;
    return;
}

// FUN_002e39f4
void W_2e39f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 56) = r1_1;
    *(u32*)(r0 + 60) = r2_1;
    return;
}

// FUN_002e42f8
void W_2e42f8() {
    { WeakCall0(); return; }
}

// FUN_002efa8c
void W_2efa8c() {
    { WeakCall0(); return; }
}

// FUN_002efa98
void W_2efa98() {
    { WeakCall0(); return; }
}

// FUN_002f08a4
void W_2f08a4() {
    { WeakCall0(); return; }
}

// FUN_00305a98
void W_305a98() {
    { WeakCall0(); return; }
}

// FUN_00305b4c
void W_305b4c() {
    { WeakCall0(); return; }
}

// FUN_00305c58
void W_305c58() {
    { WeakCall0(); return; }
}

// FUN_0030f2c8
void W_30f2c8(u32 a0) {
    u32 r0 = a0, r2_1, r1_1, r0_1, r0_2, r1_2, r0_3, r0_4, stk[65];
    r2_1 = r0;
    r1_1 = 255u;
    r0_1 = (u32)stk;
    r0_2 = Fn_340aec_3(r0_1, r1_1, r2_1);
    r1_2 = (u32)stk;
    r0_3 = 34u;
    r0_4 = Fn_2e846c_2(r0_3, r1_2);
    return;
}

// FUN_00313150
void W_313150(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    { WeakCall1(r0); return; }
}

// FUN_0033bb48
u32 W_33bb48() {
    u32 r0_1, r2_1, r1_1, r3_1;
    r0_1 = Fn_31309c_0();
    r2_1 = 0u;
    r1_1 = r0_1 + 64u;
    r3_1 = r2_1;
    *(u64*)(r1_1) = (u64)r2_1 | ((u64)r3_1 << 32);
    return r0_1;
}
