// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_365400_0();
u32 Fn_0f4f30_2(u32, u32);
extern char g_007e28e8[];
u32 Fn_5af1dc_4(u32, u32, u32, u32);
u32 Fn_144758_2(u32, u32);
u32 Fn_1e77e4_1(u32);
u32 Fn_5c760c_3(u32, u32, u32);
u32 Fn_5c7c28_1(u32);
extern char g_0080f8b4[];
u32 Fn_22556c_0();
u32 Fn_1c7d30_1(u32);
u32 Fn_313158_2(u32, u32);
extern char g_0081eb5c[];
u32 Fn_016030_3(u32, u32, u32);
u32 Fn_2024b0_1(u32);
u32 Fn_4e019c_1(u32);
u32 Fn_4df458_3(u32, u32, u32);
u32 Fn_5b12b8_1(u32);
extern char g_008bfa40[];
u32 Fn_1c3358_2(u32, u32);
u32 Fn_5c5cb0_3(u32, u32, u32);
u32 Fn_3a5934_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_5e7d18_2(u32, u32);
u32 Fn_5c305c_2(u32, u32);
u32 Fn_5a4ebc_2(u32, u32);
u32 Fn_46738c_1(u32);
u32 Fn_4a0ec0_1f1(u32, float);
u32 Fn_4a13dc_1(u32);
u32 Fn_4c5960_3(u32, u32, u32);
u32 Fn_4c5fb0_1(u32);
extern char g_0082fc80[];
u32 WeakCall2(u32, u32);
u32 Fn_5c2fb4_2(u32, u32);
u32 Fn_5c849c_1f1(u32, float);
u32 Fn_5e7d74_1(u32);
u32 Fn_5e828c_1f1(u32, float);
extern char g_00100000[];
extern char g_0041314c[];
extern char g_008915d8[];
extern char g_008915f4[];
extern char g_008c00d4[];
u32 Fn_203d64_1(u32);
u32 Fn_312d60_2(u32, u32);
u32 Fn_31309c_1(u32);
u32 WeakCall1(u32);
u32 WeakCall3(u32, u32, u32);

// FUN_000e1358
u32 W_0e1358(u32 a0, u32 a1) {
    u32 r1 = a1, r4_1, r0_1, r0_2, r0_3;
    r4_1 = r1;
    r0_1 = Fn_365400_0();
    r0_2 = r0_1 + (r4_1 << 2);
    r0_3 = *(signed char*)(r0_2 + 6);
    return r0_3;
}

// FUN_000f5408
void W_0f5408(u32 a0) {
    u32 r0 = a0, r1_1, r0_1, r0_2, stk[3];
    r1_1 = r0;
    r0_1 = (u32)stk;
    r0_2 = Fn_0f4f30_2(r0_1, r1_1);
    return;
}

// FUN_0013e8b8
void W_13e8b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6;
    r5 = r0;
    r6 = (u32)g_007e28e8;
    r4 = 0u;
    *(u8*)(r0 + 3540) = r1;
    L_13e8cc:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 124);
    if (r0 == 0u) goto L_13e8f8;
    r1 = *(u8*)(r5 + 3540);
    r2 = r4 + (r4 << 1);
    r3 = (r1 << 3) - r1;
    r1 = r3 + (r1 << 5);
    r1 = r6 + (r1 << 3);
    r1 = *(u32*)(r1 + (r2 << 3));
    r0 = Fn_5af1dc_4(r0, r1, r2, r3);
    L_13e8f8:;
    r4 = r4 + 1u;
    if (r4 <= 5u) goto L_13e8cc;
    return;
}

// FUN_00144e58
u32 W_144e58(u32 a0) {
    u32 r0 = a0, r1_1, r0_1, r0_2, r0_3, stk[3];
    r1_1 = r0;
    r0_1 = (u32)stk;
    r0_2 = Fn_144758_2(r0_1, r1_1);
    r0_3 = *(u32*)((u32)stk + 4);
    return r0_3;
}

// FUN_001e7c94
void W_1e7c94(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r2_1, r0_3, r0_5;
    r4_1 = r0;
    r0_1 = Fn_1e77e4_1(r0);
    r2_1 = 0u;
    r0_3 = Fn_5c760c_3(r4_1, r2_1, r2_1);
    r0_5 = Fn_5c7c28_1(r4_1);
    { ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r4_1)) + 68)))(r4_1, 0u); return; }
}

// FUN_001e87b8
u32 W_1e87b8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r2 = *(u32*)(r0);
    if (r1 == 0u) goto L_1e87d4;
    r2 = *(u32*)(r2 + 140);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    goto L_1e87dc;
    L_1e87d4:;
    r1 = *(u32*)(r2 + 144);
    r0 = ((u32(*)(u32))r1)(r0);
    L_1e87dc:;
    r0 = 0u;
    return r0;
}

// FUN_00203018
void W_203018() {
    u32 r0_1, r1_1, r2_1;
    r0_1 = Fn_22556c_0();
    r1_1 = 0u;
    r2_1 = (u32)g_0080f8b4;
    *(u32*)(r0_1 + 188) = r1_1;
    *(u32*)(r0_1 + 192) = r1_1;
    *(u32*)(r0_1 + 196) = r1_1;
    *(u32*)(r0_1) = r2_1;
    return;
}

// FUN_00225b38
void W_225b38(u32 a0) {
    u32 t1 = Fn_1c7d30_1(a0);
    *(u8*)((u32)(a0) + 148) = 0;
    *(u8*)((u32)(a0) + 149) = 0;
}

// FUN_002a2c10
void W_2a2c10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6, fa, fb;
    r4 = *(u32*)(r1 + 12);
    r5 = *(u32*)(r0 + 12);
    fa = r4; fb = 0u;
    if (fa != fb) { fa = r5; fb = 0u; }
    if (fa != fb) r6 = 0u;
    if (fa == fb) goto L_2a2c4c;
    L_2a2c2c:;
    r1 = r4 + 4u;
    r0 = r5 + 4u;
    r0 = Fn_313158_2(r0, r1);
    r0 = *(u32*)(r4); r4 = r4 + 64u;
    r6 = r6 + 1u;
    *(u32*)(r5) = r0; r5 = r5 + 64u;
    if (r6 < 32u) goto L_2a2c2c;
    L_2a2c4c:;
    return;
}

// FUN_0035c5f4
void W_35c5f4(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r2 = (u32)g_0081eb5c;
    r1 = *(u32*)(r0 + 3528);
    r4 = r0;
    *(u32*)(r0) = r2;
    if (r1 == 0u) goto L_35c620;
    r0 = r1;
    r0 = Fn_016030_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 3528) = r0;
    L_35c620:;
    r0 = r4;
    r0 = Fn_4e019c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00364fd8
u32 W_364fd8(u32 a0) {
    u32 t1 = Fn_5b12b8_1(a0);
    u32 t2 = *(u32*)((u32)(a0) + 104);
    u32 t3 = Fn_4df458_3(a0, t2, 0);
    return 1;
}

// FUN_0036e784
u32 W_36e784(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfa40));
    u32 t2 = Fn_5c5cb0_3(t1, 0, 1);
    if (t2 != 0) {
        return Fn_1c3358_2(t2, a1);
    }
}

// FUN_003a58cc
u32 W_3a58cc(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r1 = *(u8*)(r0 + 1412);
    r4 = 1u;
    if (r1 == 0u) goto L_3a592c;
    if (r1 == 1u) goto L_3a58fc;
    if (r1 == 2u) goto L_3a5910;
    if (r1 == 3u) r4 = 2u;
    goto L_3a592c;
    L_3a58fc:;
    r0 = Fn_3a5934_2(r0, r1);
    goto L_3a592c;
    L_3a5910:;
    r1 = *(u8*)(r0 + 1420);
    if (r1 != 0u) goto L_3a592c;
    r2 = 1u;
    r1 = 0u;
    *(u8*)(r0 + 1412) = r2;
    *(u8*)(r0 + 1413) = r1;
    L_3a592c:;
    r0 = r4;
    return r0;
}

// FUN_0045a2f4
u32 W_45a2f4(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0) + 36);
    u32 t2 = Fn_5c31cc_4(t1, a1, 0, 0);
    u32 t3 = *(u32*)((u32)(a0) + 88);
    return Fn_5c31cc_4(t3, a1, 0, 0);
}

// FUN_0045a434
void W_45a434(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 140);
    u32 t2 = Fn_5c31cc_4(t1, 1, 0, 0);
    u32 t3 = *(u32*)((u32)(a0) + 152);
    u32 t4 = Fn_5e7d18_2((t3 + 12), 1);
    u32 t5 = *(u32*)((u32)(a0) + 152);
    u32 t6 = Fn_5c31cc_4(t5, 0, 0, 0);
    *(u8*)((u32)(a0) + 160) = 1;
}

// FUN_0045a4c8
void W_45a4c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4;
    r2 = r1 - 1u;
    r4 = r0 + (r1 << 2);
    if (r2 > 4u) goto L_45a500;
    r3 = 0u;
    r0 = *(u32*)(r4 + 36);
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = *(u32*)(r4 + 36);
    r1 = 118u;
    { Fn_5c305c_2(r0, r1); return; }
    L_45a500:;
    return;
}

// FUN_004752ac
void W_4752ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5, r6, fa, fb;
    r6 = r2;
    r4 = 0u;
    r5 = r0 + (r1 << 3);
    L_4752bc:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_5a4ebc_2(r0, r1);
    r4 = r4 + 1u;
    if ((int)r4 < (int)2u) goto L_4752bc;
    return;
}

// FUN_00479894
u32 W_479894(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 100);
    if (r0 == 0u) goto L_4798ac;
    r0 = Fn_46738c_1(r0);
    r0 = 1u;
    L_4798ac:;
    return r0;
}

// FUN_004a1794
void W_4a1794(u32 a0, float p0) {
    u32 r0 = a0, r4, fa, fb;
    float f0 = p0, f16;
    r4 = *(u32*)(r0 + 4);
    if (r4 == 0u) goto L_4a17f0;
    f16 = f0;
    r0 = *(u8*)(r4);
    if (r0 == 0u) goto L_4a17f0;
    r0 = *(u8*)(r4 + 2);
    if (r0 == 0u) goto L_4a17e4;
    if (r0 == 1u) goto L_4a17dc;
    fa = r0; fb = 2u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_4a0ec0_1f1(r0, f0);
    goto L_4a17e4;
    L_4a17dc:;
    r0 = r4;
    r0 = Fn_4a13dc_1(r0);
    L_4a17e4:;
    f0 = *(float*)(r4 + 8);
    f0 = f0 + f16;
    *(float*)(r4 + 8) = f0;
    L_4a17f0:;
    return;
}

// FUN_004ceb4c
u32 W_4ceb4c(u32 a0) {
    u32 t1 = Fn_4c5fb0_1(a0);
    return Fn_4c5960_3(a0, 0, 12);
}

// FUN_0056c064
void W_56c064(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082fc80;
    *(u32*)(r0) = r1; r0 = r0 + 8u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005c8838
void W_5c8838(u32 a0, float p0) {
    u32 r0 = a0, r4_1, r0_1, r0_2, r0_3, r1_1, r0_4, r0_5, r0_6, r0_7, r0_8, stk[2];
    float f0 = p0, f16_1, f0_1;
    r4_1 = r0;
    f16_1 = f0;
    *(float*)(r0 + 68) = f0;
    r0_1 = (u32)stk;
    r0_2 = Fn_5e828c_1f1(r0_1, f0);
    r0_3 = *(u32*)(r4_1 + 32);
    r1_1 = (u32)stk;
    r0_4 = Fn_5c2fb4_2(r0_3, r1_1);
    f0_1 = f16_1;
    r0_5 = r4_1;
    r0_6 = Fn_5c849c_1f1(r0_5, f0_1);
    r0_7 = (u32)stk;
    r0_8 = Fn_5e7d74_1(r0_7);
    return;
}

// FUN_0061cb90
void W_61cb90(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_0082fc80;
    *(u32*)(r0) = r1; r0 = r0 + 8u;
    r0 = WeakCall2(r0, r1);
    r0 = r0 - 8u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_006251a8
u32 W_6251a8(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 300u;
    if (fa != fb) goto L_625208;
    r0 = (u32)g_008915d8;
    r0 = *(u32*)(r0 + 28);
    if ((r0 & 1u) != 0) goto L_6251f8;
    r0 = (u32)g_008915f4;
    r0 = Fn_203d64_1(r0);
    if (r0 == 0u) goto L_6251f8;
    r0 = (u32)g_008c00d4;
    r0 = Fn_31309c_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_0041314c;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008915f4;
    r0 = WeakCall1(r0);
    L_6251f8:;
    r0 = (u32)g_008c00d4;
    r1 = 0u;
    r0 = Fn_312d60_2(r0, r1);
    r0 = (u32)g_008c00d4;
    L_625208:;
    return r0;
}
