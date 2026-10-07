// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_513014_1(u32);
u32 WeakCall2(u32, u32);
u32 Fn_517774_2(u32, u32);
u32 WeakCall1(u32);
u32 WeakCall3(u32, u32, u32);
u32 Fn_569cb4_1(u32);
u32 Fn_5421f4_2(u32, u32);
u32 Fn_541ee0_2(u32, u32);
u32 Fn_56689c_1(u32);
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_57f6b4_1(u32);
u32 Fn_630b6c_1(u32);
u32 Fn_59cb38_1(u32);
u32 Fn_5c7c28_1(u32);
u32 Fn_633428_1(u32);
u32 Fn_261560_0();
u32 Fn_2c5c08_1(u32);
u32 WeakCall4(u32, u32, u32, u32);
u32 Fn_684f28_1(u32);
u32 Fn_684f64_1(u32);

// FUN_00548570
void W_548570(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0 + 1656);
    r0 = Fn_569cb4_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_0054f9d8
void W_54f9d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 12u;
    r1 = r1 + 244u;
    r0 = Fn_5421f4_2(r0, r1);
    r1 = r4;
    r0 = r5;
    { WeakCall2(r0, r1); return; }
}

// FUN_00551b24
void W_551b24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8192u;
    r0 = r0 + 2512u;
    r0 = *(u32*)(r0);
    { WeakCall1(r0); return; }
}

// FUN_005558cc
void W_5558cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = r0;
    r1 = r1 + 252u;
    r0 = Fn_5421f4_2(r0, r1);
    r1 = r5;
    r0 = r4;
    { WeakCall2(r0, r1); return; }
}

// FUN_005667ec
void W_5667ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_56689c_1(r0);
    r0 = *(u32*)(r4);
    r1 = 3u;
    r0 = Fn_541ee0_2(r0, r1);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_0057f690
void W_57f690(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r1 = 80u;
    r0 = Fn_1fddd8_2(r0, r1);
    r0 = r4 + 20u;
    r0 = Fn_57f6b4_1(r0);
    r0 = r4 + 28u;
    { WeakCall1(r0); return; }
}

// FUN_005899c4
u32 W_5899c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r1 = 8u;
    r0 = r0 + 4u;
    return WeakCall3(r0, r1, r2);
}

// FUN_005919f0
void W_5919f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r1 = r0 + 12u;
    r0 = r2;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_00597e64
void W_597e64(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 0u;
    r1 = 1u;
    *(u8*)(r0 + 198) = r2;
    *(u8*)(r0 + 196) = r1;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_0059b748
void W_59b748(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_59b760;
    { Fn_630b6c_1(r0); return; }
    L_59b760:;
    r0 = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_0059ceb4
void W_59ceb4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r0 + 56u;
    r0 = Fn_59cb38_1(r0);
    r0 = r4 + 56u;
    { WeakCall1(r0); return; }
}

// FUN_005a845c
void W_5a845c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    if (fa < fb) r0 = r0 + (r1 << 2);
    r1 = r2;
    r0 = *(u32*)(r0 + 104);
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_005c0d3c
void W_5c0d3c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 1u;
    r1 = 0u;
    r0 = 16384u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_005c75ec
u32 W_5c75ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_5c7c28_1(r0);
    r2 = 0u;
    r0 = r4;
    r1 = r2;
    return WeakCall3(r0, r1, r2);
}

// FUN_005c7c04
void W_5c7c04() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 0u;
    r1 = r2;
    r0 = 3u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_0060d3dc
void W_60d3dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0);
    fa = r0; fb = 4u;
    if (fa < fb) r0 = r0 + 2u;
    if (fa >= fb) r0 = 7u;
    { WeakCall1(r0); return; }
}

// FUN_0060d514
void W_60d514(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 128u;
    r0 = Fn_633428_1(r0);
    r0 = (u32)(signed char)r0;
    { WeakCall1(r0); return; }
}

// FUN_00627fc0
void W_627fc0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_261560_0();
    r1 = 308u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00628b6c
void W_628b6c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 148);
    r0 = r0 + 12u;
    r0 = Fn_2c5c08_1(r0);
    { WeakCall1(r0); return; }
}

// FUN_00628b94
void W_628b94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 148);
    r0 = r0 + 12u;
    r0 = Fn_2c5c08_1(r0);
    { WeakCall1(r0); return; }
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

// FUN_006659e4
void W_6659e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r0 = *(u32*)(r0 + 92);
    r1 = 3u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_00684e38
u32 W_684e38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 1u;
    *(u8*)(r0 + 40) = r1;
    r1 = 0u;
    r0 = r0 + 56u;
    return WeakCall2(r0, r1);
}

// FUN_00684f18
void W_684f18(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    r0 = r0 + 52u; *(u32*)(r0) = r1;
    r0 = r0 + 4u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00684f38
void W_684f38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_684f28_1(r0);
    r0 = r4;
    r0 = Fn_684f64_1(r0);
    r0 = r0 - 180u;
    r4 = r0;
    r0 = Fn_684f28_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}
