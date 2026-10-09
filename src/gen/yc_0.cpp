// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008a825c[];
u32 Fn_06da60_2(u32, u32);
u32 Fn_075028_3(u32, u32, u32);
u32 Fn_07512c_2(u32, u32);

// FUN_000713f0
u32 W_0713f0(u32 a0) throw() {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = (u32)g_008a825c;
    r0 = *(u32*)(r5);
    r0 = r0 + 120u; r1 = *(u8*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_714f4;
    r1 = 0u;
    *(u8*)(r0) = r1;
    r0 = *(u32*)(r4 + 68);
    r0 = Fn_07512c_2(r0, r1);
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 124);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_71438;
    r0 = *(u32*)(r4 + 68);
    r1 = 0u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_71438:;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 128);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_71454;
    r0 = *(u32*)(r4 + 68);
    r1 = 1u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_71454:;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 132);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_71470;
    r0 = *(u32*)(r4 + 68);
    r1 = 2u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_71470:;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 136);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_7148c;
    r0 = *(u32*)(r4 + 68);
    r1 = 3u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_7148c:;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 140);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_714a8;
    r0 = *(u32*)(r4 + 68);
    r1 = 4u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_714a8:;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 144);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_714c4;
    r0 = *(u32*)(r4 + 68);
    r1 = 5u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_714c4:;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 148);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_714e0;
    r0 = *(u32*)(r4 + 68);
    r1 = 6u;
    r0 = Fn_075028_3(r0, r1, r2);
    L_714e0:;
    r0 = *(u32*)(r5);
    r1 = *(u32*)(r0 + 140);
    r0 = *(u32*)(r4 + 36);
    r1 = 4u - r1;
    r0 = Fn_06da60_2(r0, r1);
    L_714f4:;
    return r0;
}
