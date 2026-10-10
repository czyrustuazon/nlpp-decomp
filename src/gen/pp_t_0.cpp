// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_15c33c_4(u32, u32, u32, u32);

// FUN_00152574
void W_152574(u32 a0, u32 a1, u32 a2, u32 a3) throw() {
    u32 r1_1, r0_1;
    r1_1 = *(u32*)(a3 + (a1 << 2));
    r0_1 = Fn_15c33c_4(a0, r1_1, a2, a3);
    return;
}

// FUN_002d1908
void W_2d1908(u32 a0, u32 a1) throw() {
    u32 r0 = a0, r1 = a1, r2, r3;
    r0 = r0 + 24u; r2 = *(u32*)(r0);
    r3 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + r3;
    r1 = (u32)(short)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}

// FUN_00399750
void W_399750(u32 a0) throw() {
    u32 r0 = a0, r1, r2;
    r0 = r0 + 60u; r2 = *(u32*)(r0);
    r1 = *(u16*)(r0 + 4);
    r2 = *(u32*)(r2 + 8);
    r1 = r1 + 1u;
    r1 = (u16)r1;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    return;
}
