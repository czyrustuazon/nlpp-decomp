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
u32 WeakCall1(u32);
extern char g_008bfa34[];
u32 Fn_423c6c_2(u32, u32);
u32 Fn_4232f4_3(u32, u32, u32);
extern char g_007fd610[];
u32 Fn_4040c8_3f3(u32, u32, u32, float, float, float);
extern char g_008bfa3c[];
u32 Fn_43d2c8_1(u32);

// FUN_003fa30c
void W_3fa30c() {
    { WeakCall0(); return; }
}

// FUN_003fa62c
void W_3fa62c() {
    { WeakCall0(); return; }
}

// FUN_003ff0e0
void W_3ff0e0() {
    { WeakCall0(); return; }
}

// FUN_003ff27c
void W_3ff27c() {
    { WeakCall0(); return; }
}

// FUN_003ff510
void W_3ff510() {
    { WeakCall0(); return; }
}

// FUN_003ffd58
void W_3ffd58() {
    { WeakCall0(); return; }
}

// FUN_00400030
void W_400030() {
    { WeakCall0(); return; }
}

// FUN_00400e0c
void W_400e0c() {
    { WeakCall0(); return; }
}

// FUN_00401058
void W_401058() {
    { WeakCall0(); return; }
}

// FUN_00402d58
void W_402d58(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    { WeakCall1(r0); return; }
}

// FUN_004030a0
void W_4030a0(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    { WeakCall1(r0); return; }
}

// FUN_0040409c
void W_40409c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    float f0_1, f0_2;
    f0_1 = u2f(r1);
    f0_2 = (float)(int)f2u(f0_1);
    *(float*)(r0 + 4) = f0_2;
    return;
}

// FUN_004040c8
void W_4040c8(u32 a0, float p0, float p1, float p2) {
    u32 r0 = a0, r0_1;
    float f0 = p0, f1 = p1, f2 = p2;
    r0_1 = r0 + 24u;
    *(float*)(r0_1 + 0) = f0;
    *(float*)(r0_1 + 4) = f1;
    *(float*)(r0_1 + 8) = f2;
    return;
}

// FUN_00404804
void W_404804() {
    { WeakCall0(); return; }
}

// FUN_004048cc
void W_4048cc() {
    { WeakCall0(); return; }
}

// FUN_00404b74
void W_404b74() {
    { WeakCall0(); return; }
}

// FUN_00405768
void W_405768() {
    { WeakCall0(); return; }
}

// FUN_00405a14
float W_405a14(u32 a0) {
    u32 r0 = a0;
    float f0_1;
    f0_1 = *(float*)(r0 + 12);
    return f0_1;
}

// FUN_00407cc0
void W_407cc0() {
    { WeakCall0(); return; }
}

// FUN_0040a828
void W_40a828(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r0_1;
    r0_1 = r0 + (r1 << 3);
    *(u32*)(r0_1 + 40) = r2; *(u32*)(r0_1 + 40 + 4) = r3;
    return;
}

// FUN_0040c43c
void W_40c43c() {
    u32 r0, r1;
    r0 = (u32)g_008bfa34;
    r1 = 1u;
    r0 = *(u32*)(r0);
    { Fn_423c6c_2(r0, r1); return; }
}

// FUN_0040c760
void W_40c760() {
    u32 r0, r1, r2;
    r0 = (u32)g_008bfa34;
    r2 = 0u;
    r1 = 1u;
    r0 = *(u32*)(r0);
    { Fn_4232f4_3(r0, r1, r2); return; }
}

// FUN_0040d0f0
u32 W_40d0f0(u32 a0, u32 a1) {
    u32 r1 = a1, r0_1, r0_2, stk[6];
    float f0_1, f1_1, f2_1, f3_1, f4_1, f5_1;
    r0_1 = (u32)g_007fd610;
    f0_1 = *(float*)(r0_1 + 0);
    f1_1 = *(float*)(r0_1 + 4);
    f2_1 = *(float*)(r0_1 + 8);
    f3_1 = *(float*)(r0_1 + 12);
    f4_1 = *(float*)(r0_1 + 16);
    f5_1 = *(float*)(r0_1 + 20);
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    *(float*)((u32)stk + 16) = f4_1;
    *(float*)((u32)stk + 20) = f5_1;
    r0_2 = *(u32*)((u32)stk + (r1 << 2));
    return r0_2;
}

// FUN_00410c6c
void W_410c6c() {
    { WeakCall0(); return; }
}

// FUN_00410dd4
void W_410dd4() {
    { WeakCall0(); return; }
}

// FUN_00414dc4
void W_414dc4() {
    { WeakCall0(); return; }
}

// FUN_00420474
void W_420474() {
    { WeakCall0(); return; }
}

// FUN_00423600
void W_423600(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    float f0, f1, f2;
    r0 = r0 + (r1 << 2);
    f0 = *(float*)(r2 + 0);
    f1 = *(float*)(r2 + 4);
    r0 = *(u32*)(r0 + 280);
    f2 = 0.0f;
    { Fn_4040c8_3f3(r0, r1, r2, f0, f1, f2); return; }
}

// FUN_00427bf8
void W_427bf8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2_1, r3_1, r1_1;
    r2_1 = *(u32*)(r1); r3_1 = *(u32*)(r1 + 4);
    r1_1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 56) = r1_1;
    *(u32*)(r0 + 48) = r2_1; *(u32*)(r0 + 48 + 4) = r3_1;
    return;
}

// FUN_0042b83c
void W_42b83c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1;
    float f0_1, f0_2, f0_3, f0_4;
    r1_1 = 0u - r1;
    f0_1 = u2f(r1_1);
    f0_2 = (float)(int)f2u(f0_1);
    f0_3 = u2f((u32)(int)f0_2);
    f0_4 = (float)(int)f2u(f0_3);
    *(float*)(r0 + 4) = f0_4;
    return;
}

// FUN_0042f514
void W_42f514() {
    u32 r0;
    r0 = (u32)g_008bfa3c;
    r0 = *(u32*)(r0);
    { Fn_43d2c8_1(r0); return; }
}

// FUN_004303dc
void W_4303dc() {
    { WeakCall0(); return; }
}

// FUN_00433d38
void W_433d38() {
    { WeakCall0(); return; }
}

// FUN_00437548
void W_437548() {
    { WeakCall0(); return; }
}

// FUN_0043bb58
void W_43bb58(u32 a0, float p0, float p1, float p2) {
    u32 r0 = a0, r0_1;
    float f0 = p0, f1 = p1, f2 = p2;
    r0_1 = r0 + 24u;
    *(float*)(r0_1 + 0) = f0;
    *(float*)(r0_1 + 4) = f1;
    *(float*)(r0_1 + 8) = f2;
    return;
}

// FUN_004491a4
void W_4491a4() {
    { WeakCall0(); return; }
}

// FUN_0044b814
void W_44b814(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 122);
    { WeakCall1(r0); return; }
}

// FUN_0044de48
void W_44de48() {
    { WeakCall0(); return; }
}

// FUN_004507a8
void W_4507a8() {
    { WeakCall0(); return; }
}

// FUN_00450820
void W_450820() {
    { WeakCall0(); return; }
}
