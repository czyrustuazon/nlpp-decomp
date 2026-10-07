// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008b86e0[];
u32 Fn_008874_1(u32);
u32 Fn_011a60_1(u32);
u32 Fn_2024b0_1(u32);
u32 WeakCall1(u32);
extern char g_008bb860[];
u32 WeakCall2(u32, u32);
u32 Fn_06a7a4_1(u32);
u32 WeakCall0();

// FUN_0003af04
u32 W_03af04() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r0_3;
    r1_1 = (u32)g_008bb860;
    r0_1 = 10494460u;
    *(u32*)(r1_1) = r0_1;
    r0_2 = WeakCall2(r0_1, r1_1);
    r0_3 = 0u;
    return r0_3;
}

// FUN_0006a908
u32 W_06a908(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r0_3, r0_4;
    r4_1 = r0;
    r0_1 = Fn_06a7a4_1(r0);
    r0_2 = r4_1 + 4u;
    r0_3 = WeakCall1(r0_2);
    r0_4 = r0_3 - 4u;
    return r0_4;
}

// FUN_000fee4c
void W_0fee4c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_000ff9a4
void W_0ff9a4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_000ffd1c
void W_0ffd1c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001010a8
void W_1010a8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00137998
u32 W_137998() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 32u;
    return r0_2;
}

// FUN_0018d2b0
void W_18d2b0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0018dc38
void W_18dc38() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00190d80
void W_190d80() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00198e68
void W_198e68() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00199b68
void W_199b68() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0019df98
void W_19df98() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0019f3dc
void W_19f3dc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001a9780
void W_1a9780() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001b3780
void W_1b3780() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001b4434
void W_1b4434() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001b50c4
void W_1b50c4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001b5fbc
void W_1b5fbc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001b9718
void W_1b9718() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001babc8
void W_1babc8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001bb244
void W_1bb244() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001bb5c8
void W_1bb5c8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001d2db8
void W_1d2db8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001dc914
void W_1dc914() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001dfcf4
void W_1dfcf4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001e0150
void W_1e0150() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001e8324
void W_1e8324() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001e8384
void W_1e8384() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001f0a88
void W_1f0a88() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001f2048
void W_1f2048() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001f98a8
void W_1f98a8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_001fc4a4
void W_1fc4a4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00208ae0
void W_208ae0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_002090a8
void W_2090a8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0020a444
void W_20a444() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0020bc54
void W_20bc54() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0021cb24
void W_21cb24() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00220760
void W_220760() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_002286d0
void W_2286d0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022b188
void W_22b188() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022bef0
void W_22bef0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022c6c0
void W_22c6c0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022d138
void W_22d138() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022de28
void W_22de28() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022f9a0
void W_22f9a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0022fef4
void W_22fef4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00230f64
void W_230f64() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_002334b0
void W_2334b0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}
