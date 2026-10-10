// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_4e27a8_1(u32);
u32 Fn_4e2860_1(u32);
u32 WeakCall0();
u32 Fn_4ef124_2(u32, u32);
u32 Fn_000d0c_2(u32, u32);
u32 Fn_684968_1(u32);
u32 WeakCall1(u32);
u32 Fn_4fad4c_1(u32);
u32 Fn_4faff0_1(u32);
extern char g_008aabb0[];
u32 Fn_501204_2(u32, u32);
u32 Fn_6854e8_3(u32, u32, u32);
u32 Fn_6855c4_4(u32, u32, u32, u32);
extern char g_009b0c7c[];
u32 Fn_512d84_1(u32);
u32 Fn_024788_2f1(u32, u32, float);
u32 Fn_024788_1f1(u32, float);
extern char g_008aae58[];
u32 Fn_51a5e4_2(u32, u32);
u32 Fn_01231c_1f1(u32, float);
u32 Fn_6617b0_4(u32, u32, u32, u32);
u32 Fn_6659b0_3f4(u32, u32, u32, float, float, float, float);

// FUN_0054c28c
void W_54c28c() {
    { WeakCall0(); return; }
}
