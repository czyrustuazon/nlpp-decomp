// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00890fd8[];
u32 Fn_27cca0_3f2(u32, u32, u32, float, float);
u32 Fn_45ff88_4(u32, u32, u32, u32);

// FUN_00151e34
u32 W_151e34(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    u64 fa64, fb64;
    if ((int)r1 < (int)0u) goto L_151e48;
    fa64 = (((u64)r1 << 32) | r0); fb64 = (((u64)0u << 32) | 64u); r2 = (u32)(fa64 - fb64); r1 = (u32)((fa64 - fb64) >> 32);
    if ((long long)fa64 < (long long)fb64) goto L_151e50;
    L_151e48:;
    r0 = 1u;
    return r0;
    L_151e50:;
    r1 = (u32)g_00890fd8;
    r0 = r1 + (r0 << 4);
    r0 = *(signed char*)(r0 + 3);
    return r0;
}

// FUN_00151e64
u32 W_151e64(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    u64 fa64, fb64;
    if ((int)r1 < (int)0u) goto L_151e78;
    fa64 = (((u64)r1 << 32) | r0); fb64 = (((u64)0u << 32) | 64u); r2 = (u32)(fa64 - fb64); r1 = (u32)((fa64 - fb64) >> 32);
    if ((long long)fa64 < (long long)fb64) goto L_151e80;
    L_151e78:;
    r0 = 0u;
    return r0;
    L_151e80:;
    r1 = (u32)g_00890fd8;
    r0 = r1 + (r0 << 4);
    r0 = *(signed char*)(r0 + 2);
    return r0;
}

// FUN_00151ec4
u32 W_151ec4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    u64 fa64, fb64;
    if ((int)r1 < (int)0u) goto L_151ed8;
    fa64 = (((u64)r1 << 32) | r0); fb64 = (((u64)0u << 32) | 64u); r2 = (u32)(fa64 - fb64); r1 = (u32)((fa64 - fb64) >> 32);
    if ((long long)fa64 < (long long)fb64) goto L_151ee0;
    L_151ed8:;
    r0 = 0u;
    return r0;
    L_151ee0:;
    r1 = (u32)g_00890fd8;
    r0 = r1 + (r0 << 4);
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_00151ef4
u32 W_151ef4(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r12;
    u64 fa64, fb64;
    if ((int)r1 < (int)0u) goto L_151f70;
    fa64 = (((u64)r1 << 32) | r0); fb64 = (((u64)0u << 32) | 64u); r12 = (u32)(fa64 - fb64); r1 = (u32)((fa64 - fb64) >> 32);
    if ((long long)fa64 >= (long long)fb64) goto L_151f70;
    r12 = (u32)g_00890fd8;
    r0 = r12 + (r0 << 4);
    r1 = r12 + 1024u;
    r0 = *(signed char*)(r0 + 1);
    r12 = r2 | r3;
    if (r12 == 0) goto L_151f78;
    r12 = r2 ^ 1u;
    r12 = r12 | r3;
    if (r12 == 0) goto L_151f88;
    r12 = r2 ^ 2u;
    r12 = r12 | r3;
    if (r12 == 0) goto L_151f98;
    r12 = r2 ^ 3u;
    r12 = r12 | r3;
    if (r12 == 0) goto L_151fa8;
    r12 = r2 ^ 4u;
    r12 = r12 | r3;
    if (r12 == 0) goto L_151fb8;
    r2 = r2 ^ 5u;
    r2 = r2 | r3;
    if (r2 != 0) goto L_151f70;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0 + 5);
    L_151f68:;
    if (r0 < 25u) goto L_151f74;
    L_151f70:;
    r0 = 0u;
    L_151f74:;
    return r0;
    L_151f78:;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0);
    goto L_151f68;
    L_151f88:;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0 + 1);
    goto L_151f68;
    L_151f98:;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0 + 2);
    goto L_151f68;
    L_151fa8:;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0 + 3);
    goto L_151f68;
    L_151fb8:;
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0 + 4);
    goto L_151f68;
}

// FUN_00151fcc
u32 W_151fcc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    u64 fa64, fb64;
    if ((int)r1 < (int)0u) goto L_152004;
    fa64 = (((u64)r1 << 32) | r0); fb64 = (((u64)0u << 32) | 64u); r2 = (u32)(fa64 - fb64); r1 = (u32)((fa64 - fb64) >> 32);
    if ((long long)fa64 >= (long long)fb64) goto L_152004;
    r1 = (u32)g_00890fd8;
    r0 = r1 + (r0 << 4);
    r1 = r1 + 1024u;
    r0 = *(signed char*)(r0 + 1);
    r0 = r0 + (r0 << 1);
    r0 = r1 + (r0 << 1);
    r0 = *(signed char*)(r0);
    if (r0 < 25u) goto L_152008;
    L_152004:;
    r0 = 0u;
    L_152008:;
    return r0;
}

// FUN_0027c6a0
void W_27c6a0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    float f0, f1;
    fa = r1; fb = 0u;
    if (fa == fb) f0 = 144.0f;
    if (fa == fb) f1 = -98.0f;
    if (fa == fb) goto L_27c6cc;
    fa = r1; fb = 1u;
    if (fa == fb) f0 = 112.0f;
    if (fa == fb) f1 = 84.0f;
    if (fa == fb) goto L_27c6cc;
    fa = r1; fb = 2u;
    if (fa == fb) f0 = -112.0f;
    if (fa == fb) f1 = -84.0f;
    L_27c6cc:;
    r2 = 0u;
    { Fn_27cca0_3f2(r0, r1, r2, f0, f1); return; }
}

// FUN_0045850c
void W_45850c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r2 = *(u8*)(r0 + 80);
    if (r2 == 0u) goto L_458530;
    r3 = 150u;
    r2 = 1374389535u;
    r1 = r1 * r3;
    { u64 t_ = (u64)((long long)(int)r2 * (int)r1); r2 = (u32)t_; r1 = (u32)(t_ >> 32); }
    r2 = (u32)((int)r1 >> 5);
    r1 = r2 - ((u32)((int)r1 >> 31));
    L_458530:;
    { Fn_45ff88_4(r0, r1, r2, r3); return; }
}

// FUN_00458704
void W_458704(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u8*)(r0 + 81);
    if (r2 == 0u) goto L_458728;
    r3 = 150u;
    r2 = 1374389535u;
    r1 = r1 * r3;
    { u64 t_ = (u64)((long long)(int)r2 * (int)r1); r2 = (u32)t_; r1 = (u32)(t_ >> 32); }
    r2 = (u32)((int)r1 >> 5);
    r1 = r2 - ((u32)((int)r1 >> 31));
    L_458728:;
    r0 = r0 + 256u;
    r0 = r0 + 30u;
    r2 = 65535u;
    r3 = *(u16*)(r0);
    r1 = r1 + r3;
    fa = r1; fb = r2;
    r3 = 0u;
    if ((int)fa >= (int)fb) r1 = r2;
    if ((int)fa >= (int)fb) goto L_458754;
    if ((int)r1 <= (int)0u) r1 = r3;
    L_458754:;
    *(u16*)(r0) = r1;
    return;
}
