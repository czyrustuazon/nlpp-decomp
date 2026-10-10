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
u32 Fn_5c4b08_2f3(u32, u32, float, float, float);
u32 Fn_5c4b08_2f4(u32, u32, float, float, float, float);
u32 Fn_1a5fd4_1f2(u32, float, float);
u32 WeakCall2(u32, u32);
u32 Fn_1c7870_1(u32);
u32 Fn_1c7870_2(u32, u32);
u32 Fn_5cf3b0_1(u32);
u32 Fn_54b570_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);

// FUN_00199cbc
void W_199cbc() {
    { WeakCall0(); return; }
}

// FUN_0019b8d8
void W_19b8d8(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1;
    f0_1 = -110.0f;
    f1_1 = 110.0f;
    f2_1 = 45.0f;
    r1_1 = (u32)stk;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 8) = f0_1;
    *(float*)((u32)stk + 12) = f2_1;
    r0_2 = Fn_5c4b08_2f3(r0_1, r1_1, f0_1, f1_1, f2_1);
    return;
}

// FUN_0019e1c0
void W_19e1c0(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -110.0f;
    f1_1 = 110.0f;
    f2_1 = -100.0f;
    f3_1 = 80.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_0019fe9c
void W_19fe9c(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -118.0f;
    f1_1 = 30.0f;
    f2_1 = -104.0f;
    f3_1 = 96.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 344u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_001a42dc
void W_1a42dc(u32 a0, u32 a1, u32 a2, u32 a3) {
    float f0_1, f1_1;
    f0_1 = 0.0f;
    *(u32*)(a0 + 36) = a3;
    f1_1 = f0_1;
    { Fn_1a5fd4_1f2(a0, f0_1, f1_1); return; }
}

// FUN_001a7c7c
void W_1a7c7c(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1;
    f0_1 = -100.0f;
    f1_1 = 100.0f;
    f2_1 = 40.0f;
    r1_1 = (u32)stk;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 8) = f0_1;
    *(float*)((u32)stk + 12) = f2_1;
    r0_2 = Fn_5c4b08_2f3(r0_1, r1_1, f0_1, f1_1, f2_1);
    return;
}

// FUN_001aa2cc
void W_1aa2cc() {
    { WeakCall0(); return; }
}

// FUN_001adedc
void W_1adedc(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1;
    f0_1 = -100.0f;
    f1_1 = 100.0f;
    f2_1 = 60.0f;
    r1_1 = (u32)stk;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 8) = f0_1;
    *(float*)((u32)stk + 12) = f2_1;
    r0_2 = Fn_5c4b08_2f3(r0_1, r1_1, f0_1, f1_1, f2_1);
    return;
}

// FUN_001bcbec
void W_1bcbec(u32 a0, u32 a1) {
    *(u8*)(a0 + 98) = a1;
    { WeakCall2(a0, a1); return; }
}

// FUN_001bcce0
void W_1bcce0(u32 a0, u32 a1) {
    *(u8*)(a0 + 99) = a1;
    { WeakCall2(a0, a1); return; }
}

// FUN_001bcdd4
void W_1bcdd4(u32 a0, u32 a1) {
    *(u8*)(a0 + 97) = a1;
    { WeakCall2(a0, a1); return; }
}

// FUN_001bcee8
void W_1bcee8(u32 a0, u32 a1) {
    *(u8*)(a0 + 96) = a1;
    { WeakCall2(a0, a1); return; }
}

// FUN_001bd6e8
void W_1bd6e8(u32 a0, u32 a1, u32 a2, u32 a3, float p0) {
    u32 r0 = a0;
    float f0 = p0;
    *(u32*)(r0 + 96) = a2; *(u32*)(r0 + 96 + 4) = a3;
    *(float*)(r0 + 104) = f0;
    r0 = 0u;
    L_1bd6f4:;
    r0 = r0 + 1u;
    if ((int)r0 < 2) goto L_1bd6f4;
    return;
}

// FUN_001bdf50
void W_1bdf50(u32 a0, u32 a1) {
    float f0_1;
    f0_1 = 1.0f;
    *(u32*)(a0 + 96) = a1;
    *(u32*)(a0 + 100) = a1;
    *(float*)(a0 + 104) = f0_1;
    return;
}

// FUN_001be628
void W_1be628(u32 a0, u32 a1) {
    float f0_1;
    f0_1 = 1.0f;
    *(u32*)(a0 + 96) = a1;
    *(u32*)(a0 + 100) = a1;
    *(float*)(a0 + 104) = f0_1;
    return;
}

// FUN_001c5680
void W_1c5680(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -110.0f;
    f1_1 = 110.0f;
    f2_1 = -100.0f;
    f3_1 = 80.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_001c6bf0
void W_1c6bf0(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -100.0f;
    f1_1 = 100.0f;
    f2_1 = -85.0f;
    f3_1 = 40.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_001c77fc
u32 W_1c77fc(u32 a0) {
    u32 r0 = a0, r1, r4, stk;
    r4 = r0;
    r0 = *(u8*)(r0 + 232);
    if (r0 == 0u) goto L_1c7848;
    r0 = (u32)&stk;
    r0 = Fn_5cf3b0_1(r0);
    r1 = *(u8*)((u32)&stk);
    r0 = r4;
    *(u16*)(r4 + 216) = r1;
    r1 = *(u8*)((u32)&stk + 1);
    *(u16*)(r4 + 218) = r1;
    r1 = *(u8*)((u32)&stk + 2);
    *(u16*)(r4 + 220) = r1;
    r1 = *(u8*)((u32)&stk + 3);
    *(u16*)(r4 + 222) = r1;
    r0 = Fn_1c7870_2(r0, r1);
    r0 = r4;
    r0 = Fn_1c7870_1(r0);
    L_1c7848:;
    return r0;
}

// FUN_001c7d24
void W_1c7d24(u32 a0) {
    u32 r1;
    r1 = 0u;
    *(u8*)(a0 + 148) = r1;
    { WeakCall2(a0, r1); return; }
}

// FUN_001c7d40
void W_1c7d40() {
    { WeakCall0(); return; }
}

// FUN_001c7e50
void W_1c7e50() {
    { WeakCall0(); return; }
}

// FUN_001c7e64
void W_1c7e64() {
    { WeakCall0(); return; }
}

// FUN_001c7e88
void W_1c7e88() {
    { WeakCall0(); return; }
}

// FUN_001c8050
void W_1c8050() {
    { WeakCall0(); return; }
}

// FUN_001c810c
void W_1c810c() {
    { WeakCall0(); return; }
}

// FUN_001c813c
void W_1c813c() {
    { WeakCall0(); return; }
}

// FUN_001c8fe4
void W_1c8fe4(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -110.0f;
    f1_1 = 110.0f;
    f2_1 = -100.0f;
    f3_1 = 80.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_001d0010
void W_1d0010(u32 a0) {
    u32 r0 = a0, r1, r4, r5, r6, fa, fb, stk;
    r5 = r0;
    r4 = 0u;
    r0 = *(u32*)(r0 + 148);
    r0 = *(u8*)(r0 + 6);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r6 = ~0u;
    if ((int)fa <= (int)fb) goto L_1d0058;
    L_1d0030:;
    r0 = r5 + (r4 << 3);
    stk = r6;
    r0 = *(u32*)(r0 + 108);
    r1 = (u32)&stk;
    r0 = Fn_54b570_2(r0, r1);
    r0 = *(u32*)(r5 + 148);
    r4 = r4 + 1u;
    r0 = *(u8*)(r0 + 6);
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_1d0030;
    L_1d0058:;
    r0 = 0u;
    *(u32*)(r5 + 144) = r0;
    return;
}

// FUN_001d01c4
u32 W_1d01c4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, fa, fb, stk;
    r5 = r0;
    r0 = *(u32*)(r0 + 144);
    if (r0 == 0u) goto L_1d023c;
    if (r2 == 0u) goto L_1d01ec;
    fa = r0; fb = r1;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_1d01f0;
    L_1d01ec:;
    r1 = 0u;
    L_1d01f0:;
    r3 = 0u;
    r2 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = *(u32*)(r5 + 148);
    r4 = 0u;
    r0 = *(u8*)(r0 + 6);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r6 = ~0u;
    if ((int)fa <= (int)fb) goto L_1d023c;
    L_1d0214:;
    r0 = r5 + (r4 << 3);
    stk = r6;
    r0 = *(u32*)(r0 + 108);
    r1 = (u32)&stk;
    r0 = Fn_54b570_2(r0, r1);
    r0 = *(u32*)(r5 + 148);
    r4 = r4 + 1u;
    r0 = *(u8*)(r0 + 6);
    if ((int)r0 > (int)r4) goto L_1d0214;
    L_1d023c:;
    r0 = 0u;
    return r0;
}

// FUN_001d8eb4
void W_1d8eb4(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -88.0f;
    f1_1 = 88.0f;
    f2_1 = -68.0f;
    f3_1 = 68.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 180u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_001e880c
void W_1e880c() {
    { WeakCall0(); return; }
}

// FUN_001e9840
void W_1e9840() {
    { WeakCall0(); return; }
}

// FUN_001e9de8
void W_1e9de8() {
    { WeakCall0(); return; }
}

// FUN_001eca90
void W_1eca90(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1;
    f0_1 = -100.0f;
    f1_1 = 100.0f;
    f2_1 = 80.0f;
    r1_1 = (u32)stk;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 8) = f0_1;
    *(float*)((u32)stk + 12) = f2_1;
    r0_2 = Fn_5c4b08_2f3(r0_1, r1_1, f0_1, f1_1, f2_1);
    return;
}

// FUN_001f7d48
void W_1f7d48(u32 a0) {
    u32 r1_1, r0_1, r0_2, stk[5];
    float f0_1, f1_1, f2_1, f3_1;
    f0_1 = -100.0f;
    f1_1 = 100.0f;
    f2_1 = -75.0f;
    f3_1 = 75.0f;
    r1_1 = (u32)stk;
    r0_1 = a0 + 196u;
    *(float*)((u32)stk + 0) = f0_1;
    *(float*)((u32)stk + 4) = f1_1;
    *(float*)((u32)stk + 8) = f2_1;
    *(float*)((u32)stk + 12) = f3_1;
    r0_2 = Fn_5c4b08_2f4(r0_1, r1_1, f0_1, f1_1, f2_1, f3_1);
    return;
}

// FUN_00212d14
void W_212d14() {
    { WeakCall0(); return; }
}

// FUN_0021e124
void W_21e124() {
    { WeakCall0(); return; }
}

// FUN_0021e3e8
void W_21e3e8() {
    { WeakCall0(); return; }
}

// FUN_0021e5c0
void W_21e5c0() {
    { WeakCall0(); return; }
}

// FUN_002259f8
void W_2259f8() {
    { WeakCall0(); return; }
}
