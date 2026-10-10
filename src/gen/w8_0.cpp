// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 WeakCall2f1(u32, u32, float);
u32 Fn_5c7c14_3f1(u32, u32, u32, float);
u32 WeakCall1f1(u32, float);

// FUN_00199614
void W_199614(u32 a0, float p0) {
    u32 r0 = a0, r1, r4;
    float f0 = p0, f16;
    r4 = r0;
    f16 = f0;
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r0 + 148);
    r0 = r4;
    r0 = ((u32(*)(u32, float))r1)(r0, f0);
    f0 = f16;
    r1 = r0;
    r0 = r4;
    { WeakCall2f1(r0, r1, f0); return; }
}

// FUN_005c45c8
void W_5c45c8(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r4;
    float f0 = p0, f16;
    r4 = r0;
    f16 = f0;
    r2 = 0u;
    r1 = r2;
    r0 = 2u;
    r0 = Fn_5c7c14_3f1(r0, r1, r2, f0);
    f0 = f16;
    r0 = r4;
    { WeakCall1f1(r0, f0); return; }
}
