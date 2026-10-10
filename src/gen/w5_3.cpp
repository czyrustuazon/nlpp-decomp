// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_0082dff8[];
extern char g_0082e040[];
u32 Fn_2024b0_1(u32);
u32 Fn_5b7d8c_2(u32, u32);
u32 Fn_5b8080_1(u32);
u32 WeakCall1(u32);
u32 WeakCall2(u32, u32);
extern char g_0082e498[];
u32 WeakCall0();
extern char g_008aa79c[];
u32 Fn_01fd7c_1(u32);
u32 Fn_01fd88_1(u32);
u32 Fn_01fd94_1(u32);
u32 Fn_4e9c84_1(u32);
extern char g_0082fc80[];
extern char g_00100000[];
extern char g_006a0e90[];
extern char g_00890f98[];
extern char g_00890fa8[];
extern char g_008bfd9c[];
u32 Fn_203d64_1(u32);
u32 Fn_5a0e3c_1(u32);
u32 WeakCall3(u32, u32, u32);
extern char g_0081c8a0[];
extern char g_0081c8d4[];

// FUN_005ba43c
void W_5ba43c(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r1 = (u32)g_0082e040;
    *(u32*)(r0) = r1; r0 = r0 + 28u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r4 = r0 - 16u;
    r0 = (u32)g_0082dff8;
    *(u32*)(r4) = r0;
    r0 = Fn_5b8080_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r4;
    if (fa != fb) r0 = Fn_5b7d8c_2(r0, r1);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005ba484
u32 W_5ba484(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r1 = (u32)g_0082e040;
    *(u32*)(r0) = r1; r0 = r0 + 28u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r4 = r0 - 16u;
    r0 = (u32)g_0082dff8;
    *(u32*)(r4) = r0;
    r0 = Fn_5b8080_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r4;
    if (fa != fb) r0 = Fn_5b7d8c_2(r0, r1);
    r0 = r4;
    return r0;
}

// FUN_005c525c
void W_5c525c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082e498;
    *(u32*)(r0) = r1;
    r0 = WeakCall2(r0, r1);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005f3064
void W_5f3064() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_005f5634
void W_5f5634() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_0060b208
u32 W_60b208() {
    u32 r0_1, r0_2;
    r0_1 = WeakCall0();
    r0_2 = r0_1 - 8u;
    return r0_2;
}

// FUN_0060f0b4
void W_60f0b4() {
    u32 r0;
    r0 = WeakCall0();
    { Fn_2024b0_1(r0); return; }
}

// FUN_00616cb0
u32 W_616cb0() {
    u32 r0, r4, stk;
    r0 = (u32)&stk;
    r0 = Fn_01fd94_1(r0);
    r0 = (u32)&stk;
    r0 = Fn_01fd7c_1(r0);
    r4 = (u32)g_008aa79c;
    r0 = *(u8*)(r4);
    if (r0 == 0u) goto L_616ce0;
    r0 = Fn_4e9c84_1(r0);
    r0 = 0u;
    *(u8*)(r4) = r0;
    L_616ce0:;
    r0 = (u32)&stk;
    r0 = Fn_01fd88_1(r0);
    r0 = (u32)&stk;
    r0 = WeakCall1(r0);
    r0 = 1u;
    return r0;
}

// FUN_0061cbb0
u32 W_61cbb0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082fc80;
    *(u32*)(r0) = r1; r0 = r0 + 8u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    return r0;
}

// FUN_00630c24
u32 W_630c24(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 1024u;
    if (fa != fb) r0 = r0 + 232u;
    if (fa != fb) goto L_630c7c;
    r0 = (u32)g_00890f98;
    r0 = *(u32*)(r0 + 16);
    if ((r0 & 1u) != 0) goto L_630c78;
    r0 = (u32)g_00890fa8;
    r0 = Fn_203d64_1(r0);
    if (r0 == 0u) goto L_630c78;
    r0 = (u32)g_008bfd9c;
    r0 = Fn_5a0e3c_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_006a0e90;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_00890fa8;
    r0 = WeakCall1(r0);
    L_630c78:;
    r0 = (u32)g_008bfd9c;
    L_630c7c:;
    return r0;
}

// FUN_00643cb8
u32 W_643cb8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082fc80;
    *(u32*)(r0 - 28) = r1;
    r0 = r0 - 20u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    return r0;
}

// FUN_00682c5c
void W_682c5c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081c8a0;
    *(u32*)(r0) = r1;
    r0 = WeakCall2(r0, r1);
    { Fn_2024b0_1(r0); return; }
}

// FUN_006830b4
void W_6830b4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0081c8d4;
    *(u32*)(r0) = r1;
    r0 = WeakCall2(r0, r1);
    { Fn_2024b0_1(r0); return; }
}
