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
u32 Fn_60cbc0_1(u32);
u32 WeakCall1(u32);
u32 Fn_06e13c_2(u32, u32);
u32 Fn_06e3e4_2(u32, u32);
u32 Fn_06ea88_2(u32, u32);
u32 Fn_075258_2(u32, u32);
u32 Fn_0758a8_2(u32, u32);
u32 Fn_075ee0_2(u32, u32);
u32 Fn_076990_3(u32, u32, u32);
u32 Fn_077d08_2(u32, u32);
u32 Fn_078398_2(u32, u32);
u32 Fn_0796ec_2(u32, u32);
u32 Fn_07a594_3(u32, u32, u32);
u32 Fn_07ba14_2(u32, u32);
u32 Fn_07e58c_2(u32, u32);
u32 WeakCall2(u32, u32);
u32 Fn_07559c_2(u32, u32);
u32 Fn_278094_3(u32, u32, u32);
u32 WeakCall3(u32, u32, u32);
u32 Fn_5d6c08_1(u32);
extern char g_008bb4fc[];
extern char g_009dfe08[];
u32 Fn_556abc_1(u32);
u32 Fn_556c04_1(u32);
u32 Fn_557434_1(u32);
u32 Fn_5577c0_1(u32);
u32 Fn_55bca4_1(u32);
u32 Fn_55c048_1(u32);
u32 Fn_55c0a4_1(u32);
u32 Fn_55e338_1(u32);
u32 Fn_55e9b4_1(u32);
u32 Fn_55ea24_1(u32);
u32 Fn_55ea50_1(u32);
u32 Fn_561354_1(u32);
u32 Fn_5614f4_1(u32);
u32 Fn_561ec4_1(u32);
u32 Fn_562bd4_1(u32);
u32 Fn_562e60_1(u32);
u32 Fn_684f18_1(u32);
u32 Fn_55dcc4_0();
u32 Fn_55dcc4_1(u32);

// FUN_00062210
u32 W_062210(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 96);
    r5 = 0u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_62250;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = *(u32*)(r4 + 96);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_62250;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 96) = r5;
    L_62250:;
    r0 = *(u32*)(r4 + 272);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_62280;
    r0 = Fn_60cbc0_1(r0);
    r0 = *(u32*)(r4 + 272);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_62280;
    r0 = WeakCall1(r0);
    r0 = Fn_2024b0_1(r0);
    *(u32*)(r4 + 272) = r5;
    L_62280:;
    r0 = *(u32*)(r4 + 172);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6229c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 12);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 172) = r5;
    L_6229c:;
    r0 = 1u;
    return r0;
}

// FUN_00077e84
void W_077e84(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 40);
    r1 = 0u;
    r0 = Fn_06ea88_2(r0, r1);
    r0 = *(u32*)(r4 + 44);
    r1 = 0u;
    r0 = Fn_06e3e4_2(r0, r1);
    r0 = *(u32*)(r4 + 48);
    r1 = 0u;
    r0 = Fn_078398_2(r0, r1);
    r0 = *(u32*)(r4 + 20);
    r1 = 0u;
    r0 = Fn_077d08_2(r0, r1);
    r0 = *(u32*)(r4 + 24);
    r1 = 0u;
    r0 = Fn_075ee0_2(r0, r1);
    r0 = *(u32*)(r4 + 28);
    r1 = 0u;
    r0 = Fn_07ba14_2(r0, r1);
    r0 = *(u32*)(r4 + 32);
    r1 = 0u;
    r0 = Fn_0796ec_2(r0, r1);
    r0 = *(u32*)(r4 + 36);
    r1 = 0u;
    r0 = Fn_06e13c_2(r0, r1);
    r2 = 0u;
    r0 = *(u32*)(r4 + 52);
    r1 = r2;
    r0 = Fn_07a594_3(r0, r1, r2);
    r2 = 0u;
    r0 = *(u32*)(r4 + 64);
    r1 = r2;
    r0 = Fn_076990_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 68);
    r1 = 0u;
    r0 = Fn_075258_2(r0, r1);
    r0 = *(u32*)(r4 + 72);
    r1 = 0u;
    r0 = Fn_0758a8_2(r0, r1);
    r0 = *(u32*)(r4 + 76);
    r1 = 0u;
    r0 = Fn_07e58c_2(r0, r1);
    r0 = *(u32*)(r4 + 80);
    r1 = 0u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00277ff4
void W_277ff4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_278064;
    r1 = *(u8*)(r4 + 9);
    r0 = Fn_07559c_2(r0, r1);
    r0 = *(u32*)(r4 + 20);
    r2 = 0u;
    r0 = r0 + (r0 << 1);
    r5 = r0 - 3u;
    r0 = *(u32*)(r4);
    r1 = r5;
    r0 = Fn_278094_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r2 = 0u;
    r1 = r5;
    r0 = Fn_278094_3(r0, r1, r2);
    r0 = *(u8*)(r4 + 9);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_27805c;
    fa = r0; fb = 2u;
    if (fa != fb) r0 = 3u;
    if (fa != fb) *(u8*)(r4 + 8) = r0;
    if (fa == fb) r0 = 1u;
    if (fa != fb) goto L_278060;
    L_27805c:;
    *(u8*)(r4 + 8) = r0;
    L_278060:;
    return;
    L_278064:;
    r0 = *(u32*)(r4 + 20);
    r2 = 0u;
    r0 = r0 + (r0 << 1);
    r5 = r0 - 1u;
    r0 = *(u32*)(r4);
    r1 = r5;
    r0 = Fn_278094_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = r5;
    r2 = 0u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_0047fad4
u32 W_47fad4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 4);
    r5 = 0u;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 8);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_47fb2c;
    r0 = *(u32*)(r4 + 64);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47fb10;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 64) = r5;
    L_47fb10:;
    r0 = *(u32*)(r4 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47fb2c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    *(u32*)(r4 + 68) = r5;
    L_47fb2c:;
    r0 = *(u32*)(r4 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47fb4c;
    r0 = WeakCall1(r0);
    r0 = Fn_2024b0_1(r0);
    *(u32*)(r4 + 72) = r5;
    L_47fb4c:;
    r0 = *(u32*)(r4 + 76);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_47fb6c;
    r0 = Fn_5d6c08_1(r0);
    r0 = Fn_2024b0_1(r0);
    *(u32*)(r4 + 76) = r5;
    L_47fb6c:;
    r0 = r4;
    return r0;
}

// FUN_00550248
void W_550248() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bb4fc;
    r0 = *(u8*)(r4 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5502c8;
    r0 = Fn_557434_1(r0);
    r0 = WeakCall1(r0);
    r0 = Fn_556abc_1(r0);
    r0 = Fn_556c04_1(r0);
    r0 = Fn_557434_1(r0);
    r0 = Fn_684f18_1(r0);
    r0 = Fn_55e338_1(r0);
    r0 = Fn_55ea24_1(r0);
    r0 = Fn_55e338_1(r0);
    r0 = Fn_55e9b4_1(r0);
    r0 = Fn_561354_1(r0);
    r0 = Fn_5614f4_1(r0);
    r0 = Fn_562bd4_1(r0);
    r0 = Fn_562e60_1(r0);
    r0 = (u32)g_009dfe08;
    r0 = Fn_561ec4_1(r0);
    r0 = r4 + 8u;
    r0 = Fn_5577c0_1(r0);
    r0 = Fn_55e338_1(r0);
    r0 = Fn_55ea50_1(r0);
    r0 = Fn_55bca4_1(r0);
    r0 = Fn_55c0a4_1(r0);
    r0 = Fn_55c048_1(r0);
    r0 = Fn_55c0a4_1(r0);
    r0 = 0u;
    *(u8*)(r4 + 2) = r0;
    *(u8*)(r4 + 1) = r0;
    L_5502c8:;
    return;
}

// FUN_005613f8
void W_5613f8(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r2;
    r5 = 2u;
    if (fa == fb) goto L_561424;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_561438;
    fa = r1; fb = 2u;
    if (fa != fb) { fa = r1; fb = 3u; }
    if (fa == fb) r5 = 1u;
    goto L_561440;
    L_561424:;
    r0 = Fn_55dcc4_0();
    goto L_561440;
    L_561438:;
    r5 = 3u;
    r0 = Fn_55dcc4_1(r0);
    L_561440:;
    r3 = *(u32*)(r4 + 408);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_56145c;
    r2 = *(u32*)(r4 + 412);
    r1 = r5;
    r0 = r4;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_56145c:;
    r0 = 0u;
    *(u32*)(r4 + 416) = r0;
    *(u8*)(r4 + 304) = r0;
    *(u8*)(r4 + 305) = r0;
    *(u8*)(r4 + 306) = r0;
    r0 = Fn_561354_1(r0);
    r1 = r4;
    { WeakCall2(r0, r1); return; }
}
