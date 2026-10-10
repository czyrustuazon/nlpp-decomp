// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008a7eb8[];
u32 Fn_3534f8_1f1(u32, float);
u32 Fn_3579ec_2(u32, u32);
u32 Fn_5af1dc_2(u32, u32);
u32 Fn_62fba0_2(u32, u32);

// FUN_00353984
void W_353984(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, fa, fb;
    float f0;
    r4 = r0;
    *(u8*)(r0 + 100) = r1;
    r0 = *(u8*)(r0 + 101);
    r5 = (u32)g_008a7eb8;
    fa = r0; fb = 0u;
    r0 = *(u32*)(r4 + 84);
    if (fa != fb) r1 = *(u32*)(r5 + 4);
    if (fa == fb) r1 = *(u32*)(r5);
    if (r0 != 0u) r0 = Fn_5af1dc_2(r0, r1);
    r0 = *(u8*)(r4 + 100);
    fa = r0; fb = 0u;
    r0 = *(u32*)(r4 + 88);
    if (fa != fb) r1 = *(u32*)(r5 + 12);
    if (fa == fb) r1 = *(u32*)(r5 + 8);
    if (r0 != 0u) r0 = Fn_5af1dc_2(r0, r1);
    r0 = *(u8*)(r4 + 100);
    fa = r0; fb = 0u;
    if (fa != fb) f0 = 0.0f;
    if (fa == fb) f0 = 6.0f;
    r0 = r4;
    *(float*)(r4 + 104) = f0;
    r0 = Fn_3534f8_1f1(r0, f0);
    r0 = *(u32*)(r4 + 68);
    if (r0 == 0u) goto L_353a00;
    r1 = *(signed char*)(r4 + 100);
    { Fn_3579ec_2(r0, r1); return; }
    L_353a00:;
    return;
}

// FUN_0062fb34
u32 W_62fb34(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r4 = r0;
    r5 = *(short*)(r0 + 10);
    r1 = 1u;
    r0 = Fn_62fba0_2(r0, r1);
    r5 = r5 + r0;
    r1 = 2u;
    r0 = r4;
    r0 = Fn_62fba0_2(r0, r1);
    r1 = 1374389535u;
    r0 = r0 + r5;
    { u64 t_ = (u64)((long long)(int)r1 * (int)r0); r1 = (u32)t_; r0 = (u32)(t_ >> 32); }
    r1 = (u32)((int)r0 >> 5);
    r0 = r1 - ((u32)((int)r0 >> 31));
    return r0;
}
