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
u32 Fn_55c9a8_0();
u32 WeakCall1(u32);
u32 Fn_57fa5c_2(u32, u32);
u32 WeakCall2(u32, u32);
float Fn_5924d4_3(u32, u32, u32);
u32 Fn_594500_2(u32, u32);
u32 Fn_5ba784_1(u32);

// FUN_0056caf0
void W_56caf0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = *(u32*)(r1); r3 = *(u32*)(r1 + 4);
    r1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 660) = r1;
    r0 = r0 + 652u;
    *(u32*)(r0 + 0) = r2; *(u32*)(r0 + 4) = r3;
    return;
}

// FUN_0056cf90
void W_56cf90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = *(u32*)(r1); r3 = *(u32*)(r1 + 4);
    r1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 696) = r1;
    r0 = r0 + 688u;
    *(u32*)(r0 + 0) = r2; *(u32*)(r0 + 4) = r3;
    return;
}

// FUN_00571404
void W_571404(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 376u;
    { WeakCall1(r0); return; }
}

// FUN_005789bc
void W_5789bc() {
    { WeakCall0(); return; }
}

// FUN_0057fa40
void W_57fa40(u32 a0) {
    u32 r0 = a0, r1_1, r0_1, r0_2, stk[3];
    r1_1 = r0;
    r0_1 = (u32)stk;
    r0_2 = Fn_57fa5c_2(r0_1, r1_1);
    return;
}

// FUN_0058149c
void W_58149c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r1_1, r2_1;
    r1_1 = *(u32*)(r1 + 0); r2_1 = *(u32*)(r1 + 4);
    *(u32*)(r0 + 64) = r1_1;
    *(u32*)(r0 + 68) = r2_1;
    return;
}

// FUN_005874a8
void W_5874a8(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 12u;
    { WeakCall1(r0); return; }
}

// FUN_005875f0
u32 W_5875f0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = 0u;
    r0 = r0 + 12u;
    return WeakCall2(r0, r1);
}

// FUN_0058ca54
void W_58ca54() {
    { WeakCall0(); return; }
}

// FUN_0058d61c
void W_58d61c() {
    { WeakCall0(); return; }
}

// FUN_0059063c
u32 W_59063c(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_2, r3_1, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10;
    float f0_1;
    r4_1 = r0;
    r2_1 = 0u;
    r1_1 = 33u;
    f0_1 = Fn_5924d4_3(r0, r1_1, r2_1);
    r0_2 = *(u32*)(r4_1 + 24);
    *(float*)(r0_2) = f0_1;
    r0_3 = *(u32*)(r4_1 + 24);
    r0_4 = r0_3 + 4u;
    *(u32*)(r4_1 + 24) = r0_4;
    r1_2 = *(u32*)(r4_1 + 20);
    r2_2 = *(u32*)(r4_1 + 16);
    r3_1 = *(u16*)(r4_1 + 28);
    r0_5 = r0_4 - r1_2;
    r0_6 = r0_5 >> 2;
    r0_7 = r0_6 << 16;
    r0_8 = r0_7 | (r2_2 << 24);
    r0_9 = r0_8 | r3_1;
    *(u32*)(r1_2) = r0_9;
    r0_10 = *(u32*)(r4_1 + 24);
    *(u32*)(r4_1 + 12) = r0_10;
    return r0_10;
}

// FUN_005927cc
u32 W_5927cc(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_2, r3_1, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10;
    float f0_1;
    r4_1 = r0;
    r2_1 = 0u;
    r1_1 = 27u;
    f0_1 = Fn_5924d4_3(r0, r1_1, r2_1);
    r0_2 = *(u32*)(r4_1 + 24);
    *(float*)(r0_2) = f0_1;
    r0_3 = *(u32*)(r4_1 + 24);
    r0_4 = r0_3 + 4u;
    *(u32*)(r4_1 + 24) = r0_4;
    r1_2 = *(u32*)(r4_1 + 20);
    r2_2 = *(u32*)(r4_1 + 16);
    r3_1 = *(u16*)(r4_1 + 28);
    r0_5 = r0_4 - r1_2;
    r0_6 = r0_5 >> 2;
    r0_7 = r0_6 << 16;
    r0_8 = r0_7 | (r2_2 << 24);
    r0_9 = r0_8 | r3_1;
    *(u32*)(r1_2) = r0_9;
    r0_10 = *(u32*)(r4_1 + 24);
    *(u32*)(r4_1 + 12) = r0_10;
    return r0_10;
}

// FUN_00592824
u32 W_592824(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_2, r3_1, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10;
    float f0_1;
    r4_1 = r0;
    r2_1 = 0u;
    r1_1 = 58u;
    f0_1 = Fn_5924d4_3(r0, r1_1, r2_1);
    r0_2 = *(u32*)(r4_1 + 24);
    *(float*)(r0_2) = f0_1;
    r0_3 = *(u32*)(r4_1 + 24);
    r0_4 = r0_3 + 4u;
    *(u32*)(r4_1 + 24) = r0_4;
    r1_2 = *(u32*)(r4_1 + 20);
    r2_2 = *(u32*)(r4_1 + 16);
    r3_1 = *(u16*)(r4_1 + 28);
    r0_5 = r0_4 - r1_2;
    r0_6 = r0_5 >> 2;
    r0_7 = r0_6 << 16;
    r0_8 = r0_7 | (r2_2 << 24);
    r0_9 = r0_8 | r3_1;
    *(u32*)(r1_2) = r0_9;
    r0_10 = *(u32*)(r4_1 + 24);
    *(u32*)(r4_1 + 12) = r0_10;
    return r0_10;
}

// FUN_005929d0
u32 W_5929d0(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_2, r3_1, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10;
    float f0_1;
    r4_1 = r0;
    r2_1 = 0u;
    r1_1 = 28u;
    f0_1 = Fn_5924d4_3(r0, r1_1, r2_1);
    r0_2 = *(u32*)(r4_1 + 24);
    *(float*)(r0_2) = f0_1;
    r0_3 = *(u32*)(r4_1 + 24);
    r0_4 = r0_3 + 4u;
    *(u32*)(r4_1 + 24) = r0_4;
    r1_2 = *(u32*)(r4_1 + 20);
    r2_2 = *(u32*)(r4_1 + 16);
    r3_1 = *(u16*)(r4_1 + 28);
    r0_5 = r0_4 - r1_2;
    r0_6 = r0_5 >> 2;
    r0_7 = r0_6 << 16;
    r0_8 = r0_7 | (r2_2 << 24);
    r0_9 = r0_8 | r3_1;
    *(u32*)(r1_2) = r0_9;
    r0_10 = *(u32*)(r4_1 + 24);
    *(u32*)(r4_1 + 12) = r0_10;
    return r0_10;
}

// FUN_00592a28
u32 W_592a28(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_2, r3_1, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10;
    float f0_1;
    r4_1 = r0;
    r2_1 = 0u;
    r1_1 = 26u;
    f0_1 = Fn_5924d4_3(r0, r1_1, r2_1);
    r0_2 = *(u32*)(r4_1 + 24);
    *(float*)(r0_2) = f0_1;
    r0_3 = *(u32*)(r4_1 + 24);
    r0_4 = r0_3 + 4u;
    *(u32*)(r4_1 + 24) = r0_4;
    r1_2 = *(u32*)(r4_1 + 20);
    r2_2 = *(u32*)(r4_1 + 16);
    r3_1 = *(u16*)(r4_1 + 28);
    r0_5 = r0_4 - r1_2;
    r0_6 = r0_5 >> 2;
    r0_7 = r0_6 << 16;
    r0_8 = r0_7 | (r2_2 << 24);
    r0_9 = r0_8 | r3_1;
    *(u32*)(r1_2) = r0_9;
    r0_10 = *(u32*)(r4_1 + 24);
    *(u32*)(r4_1 + 12) = r0_10;
    return r0_10;
}

// FUN_00593288
u32 W_593288(u32 a0) {
    u32 r0 = a0, r4_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, r2_2, r3_1, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10;
    float f0_1;
    r4_1 = r0;
    r2_1 = 0u;
    r1_1 = 29u;
    f0_1 = Fn_5924d4_3(r0, r1_1, r2_1);
    r0_2 = *(u32*)(r4_1 + 24);
    *(float*)(r0_2) = f0_1;
    r0_3 = *(u32*)(r4_1 + 24);
    r0_4 = r0_3 + 4u;
    *(u32*)(r4_1 + 24) = r0_4;
    r1_2 = *(u32*)(r4_1 + 20);
    r2_2 = *(u32*)(r4_1 + 16);
    r3_1 = *(u16*)(r4_1 + 28);
    r0_5 = r0_4 - r1_2;
    r0_6 = r0_5 >> 2;
    r0_7 = r0_6 << 16;
    r0_8 = r0_7 | (r2_2 << 24);
    r0_9 = r0_8 | r3_1;
    *(u32*)(r1_2) = r0_9;
    r0_10 = *(u32*)(r4_1 + 24);
    *(u32*)(r4_1 + 12) = r0_10;
    return r0_10;
}

// FUN_005952ac
u32 W_5952ac(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r0_2, r1_1, r0_3, r0_4, r0_5, stk;
    r4_1 = r0;
    r0_1 = r0 + 128u;
    r0_2 = Fn_5ba784_1(r0_1);
    r1_1 = *(u32*)(r4_1 + 116);
    r0_3 = (u32)&stk;
    r0_4 = Fn_594500_2(r0_3, r1_1);
    r0_5 = 1u;
    return r0_5;
}

// FUN_00598fec
void W_598fec(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0);
    { WeakCall1(r0); return; }
}
