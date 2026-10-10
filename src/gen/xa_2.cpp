// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_007a2f78[];
extern char g_008bfa88[];
u32 Fn_2ae160_2(u32, u32);
u32 Fn_2afd38_2(u32, u32);
extern char g_0089a341[];
extern char g_0089a344[];
u32 Fn_2c05ac_1(u32);
u32 WeakCall3(u32, u32, u32);
void Fn_4e019c();
void Fn_2d1b4c();
u32 WeakCall0();
u32 Fn_2f0d78_3(u32, u32, u32);
extern char g_008a57ea[];
u32 Fn_130db4_1(u32);
u32 Fn_0d2350_1(u32);
u32 Fn_2a7d6c_1(u32);
u32 Fn_130f98_1(u32);
u32 Fn_4b17b0_1(u32);
u32 Fn_13110c_1(u32);
u32 Fn_13cc7c_1(u32);
u32 Fn_13c7e4_1(u32);
u32 Fn_4b101c_1(u32);
u32 Fn_4b0ee4_1(u32);
u32 Fn_4b0ff8_1(u32);
u32 Fn_12e0a4_1(u32);
u32 Fn_12e0ac_2(u32, u32);
u32 Fn_2a6828_1(u32);
void Fn_305b50();
u32 Fn_31d3ec_4(u32, u32, u32, u32);
extern char g_007ab4b0[];
u32 WeakCall2f2(u32, u32, float, float);
u32 Fn_3544e0_2f2(u32, u32, float, float);
u32 Fn_354a38_1(u32);
u32 Fn_356f88_3(u32, u32, u32);
u32 Fn_356e80_2(u32, u32);
u32 WeakCall2(u32, u32);
extern char g_0079e948[];
extern char g_0079ec5c[];
extern char g_0079f344[];
extern char g_0079f39c[];
extern char g_0079eb10[];
extern char g_0079ea48[];
extern char g_0079ea70[];
u32 Fn_4440d0_2(u32, u32);
extern char g_007b6db4[];
extern char g_007b78b4[];
void Fn_3a5394();
extern char g_0089a388[];
void Fn_3e5318();
void Fn_3e537c();
void Fn_4491a8();
void Fn_44de4c();
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_5e7d18_3(u32, u32, u32);
u32 WeakCall1(u32);
void Fn_47de58();

// FUN_002ac640
u32 W_2ac640(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r12, fa, fb, stk[16];
    float f0, f1, f2, f3, f4, f5, f6, f7;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_2ac6d8;
    r2 = *(u32*)(r1 + 1116);
    fa = r0; fb = 4u;
    if (fa < fb) *(u32*)(r1 + 1116) = r0;
    if (fa < fb) goto L_2ac6c8;
    r3 = *(u32*)(r1 + 1112);
    if (r2 >= 4u) goto L_2ac6c8;
    if ((int)r3 < (int)0u) goto L_2ac6c8;
    if ((int)r3 >= (int)4u) goto L_2ac6c8;
    r0 = (u32)g_007a2f78;
    r12 = (u32)stk;
    r12 = r12 + (r2 << 4);
    f0 = *(float*)(r0 + 192);
    f1 = *(float*)(r0 + 196);
    f2 = *(float*)(r0 + 200);
    f3 = *(float*)(r0 + 204);
    f4 = *(float*)(r0 + 208);
    f5 = *(float*)(r0 + 212);
    f6 = *(float*)(r0 + 216);
    f7 = *(float*)(r0 + 220);
    r0 = r0 + 224u;
    *(float*)((u32)stk + 0) = f0;
    *(float*)((u32)stk + 4) = f1;
    *(float*)((u32)stk + 8) = f2;
    *(float*)((u32)stk + 12) = f3;
    *(float*)((u32)stk + 16) = f4;
    *(float*)((u32)stk + 20) = f5;
    *(float*)((u32)stk + 24) = f6;
    *(float*)((u32)stk + 28) = f7;
    f0 = *(float*)(r0 + 0);
    f1 = *(float*)(r0 + 4);
    f2 = *(float*)(r0 + 8);
    f3 = *(float*)(r0 + 12);
    f4 = *(float*)(r0 + 16);
    f5 = *(float*)(r0 + 20);
    f6 = *(float*)(r0 + 24);
    f7 = *(float*)(r0 + 28);
    r0 = (u32)stk + 32u;
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    *(float*)(r0 + 12) = f3;
    *(float*)(r0 + 16) = f4;
    *(float*)(r0 + 20) = f5;
    *(float*)(r0 + 24) = f6;
    *(float*)(r0 + 28) = f7;
    r0 = *(u32*)(r12 + (r3 << 2));
    *(u32*)(r1 + 1116) = r0;
    L_2ac6c8:;
    r0 = *(u32*)(r1 + 1116);
    fa = r0; fb = r2;
    if (fa != fb) r0 = 1u;
    if (fa != fb) goto L_2ac6dc;
    L_2ac6d8:;
    r0 = 0u;
    L_2ac6dc:;
    return r0;
}

// FUN_002ad2d8
u32 W_2ad2d8() {
    u32 r0, fa, fb;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 768u;
    if (fa != fb) r0 = *(short*)(r0 + 252);
    return r0;
}

// FUN_002ada7c
void W_2ada7c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ada94;
    { Fn_2ae160_2(r0, r1); return; }
    L_2ada94:;
    return;
}

// FUN_002adf64
u32 W_2adf64() {
    u32 r0, r1;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_2adf84;
    r0 = r0 + 1024u;
    r1 = *(short*)(r0 + 78);
    r0 = *(short*)(r0 + 76);
    r0 = r1 - r0;
    L_2adf84:;
    return r0;
}

// FUN_002ae5e4
void W_2ae5e4(u32 a0) {
    u32 r0 = a0, r1_1, r1_2;
    r1_1 = (u32)g_008bfa88;
    r1_2 = *(u32*)(r1_1);
    if (r1_2 != 0u) *(u16*)(r1_2 + 8) = r0;
    return;
}

// FUN_002ae824
u32 W_2ae824() {
    u32 r0, r1, fa, fb;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_2ae848;
    r0 = r0 + 1024u;
    r1 = *(short*)(r0 + 80);
    fa = r1; fb = 0u;
    if ((int)fa > (int)fb) r1 = r1 - 1u;
    if ((int)fa > (int)fb) *(u16*)(r0 + 80) = r1;
    L_2ae848:;
    return r0;
}

// FUN_002ae8cc
u32 W_2ae8cc() {
    u32 r0;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = *(u8*)(r0 + 1272);
    return r0;
}

// FUN_002aeb48
void W_2aeb48(u32 a0) {
    u32 r0 = a0, r1;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    if (r1 == 0u) goto L_2aeb60;
    if (r0 < 2u) *(u32*)(r1 + 1096) = r0;
    L_2aeb60:;
    return;
}

// FUN_002afae0
void W_2afae0(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2afaf8;
    { Fn_2afd38_2(r0, r1); return; }
    L_2afaf8:;
    return;
}

// FUN_002b4f24
u32 W_2b4f24() {

    return 59;
}

// FUN_002b9ba8
void W_2b9ba8(u32 a0) {
    u32 r0 = a0, r1;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_2b9bc0;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 24);
    { ((u32(*)(u32))r1)(r0); return; }
    L_2b9bc0:;
    return;
}

// FUN_002b9fe4
u32 W_2b9fe4(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_2ba000;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 8);
    return ((u32(*)(u32))r1)(r0);
    L_2ba000:;
    return r0;
}

// FUN_002c0e48
void W_2c0e48(u32 a0) {
    u32 r0 = a0, r1_1;
    r1_1 = 0u;
    *(u8*)(((u32)g_0089a341)) = r1_1;
    *(u8*)(((u32)g_0089a344)) = r1_1;
    { Fn_2c05ac_1(r0); return; }
}

// FUN_002c32b4
void W_2c32b4(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r12_1, r0_1;
    r12_1 = a4;
    *(u32*)(r0 + 148) = r1;
    r0_1 = r0 + 136u;
    *(u32*)(r0_1 + 0) = r2; *(u32*)(r0_1 + 4) = r3; *(u32*)(r0_1 + 8) = r12_1;
    return;
}

// FUN_002c3f14
u32 W_2c3f14() {

    return 40;
}

// FUN_002c5bb4
void W_2c5bb4(u32 a0) {
    *(u16*)((u32)(a0)) = 0;
    *(u16*)((u32)(a0) + 2) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u16*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 10) = 0;
    *(u8*)((u32)(a0) + 11) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u16*)((u32)(a0) + 16) = 0;
    *(u8*)((u32)(a0) + 18) = 0;
    *(u8*)((u32)(a0) + 19) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u16*)((u32)(a0) + 24) = 0;
    *(u8*)((u32)(a0) + 26) = 0;
    *(u8*)((u32)(a0) + 27) = 0;
    *(u32*)((u32)(a0) + 28) = 0;
    *(u16*)((u32)(a0) + 32) = 0;
    *(u8*)((u32)(a0) + 34) = 0;
    *(u8*)((u32)(a0) + 35) = 0;
    *(u32*)((u32)(a0) + 36) = 0;
}

// FUN_002c791c
void W_2c791c(u32 a0) {
    *(u8*)((u32)(a0) + 117) = 1;
}

// FUN_002cd974
void W_2cd974(u32 a0) {
    u32 r0 = a0, r1, r2;
    r2 = *(signed char*)(r0 + 9);
    r1 = *(signed char*)(r0 + 8);
    r0 = *(u32*)(r0 + 4);
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_002d975c
u32 W_2d975c() {

    return 1;
}

// FUN_002e3178
void W_2e3178() { Fn_4e019c(); }

// FUN_002e5a74
void W_2e5a74() { Fn_2d1b4c(); }

// FUN_002e958c
void W_2e958c() {
    { WeakCall0(); return; }
}

// FUN_002e96a8
void W_2e96a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(u32*)(r0 + 400);
    *(u8*)(r0 + 408) = r1;
    if (r2 < 3u) goto L_2e96bc;
    { Fn_2f0d78_3(r0, r1, r2); return; }
    L_2e96bc:;
    return;
}

// FUN_002ea8b4
u32 W_2ea8b4() {
    u32 r1_1, r0_1;
    r1_1 = (u32)g_008a57ea;
    r0_1 = 0u;
    *(u8*)(r1_1) = r0_1;
    return r0_1;
}

// FUN_002eb420
u32 W_2eb420(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 252);
    if (t1 != 0) {
        return Fn_130db4_1(t1);
    }
}

// FUN_002eb95c
void W_2eb95c(u32 a0) {
    *(u8*)((u32)(a0) + 790) = 0;
}

// FUN_002ebb18
void W_2ebb18() {
    { WeakCall0(); return; }
}

// FUN_002ec160
u32 W_2ec160(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 256);
    if (t1 != 0) {
        return Fn_0d2350_1(t1);
    }
}

// FUN_002ee38c
u32 W_2ee38c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 260);
    if (t1 != 0) {
        return Fn_2a7d6c_1(t1);
    }
}

// FUN_002ee414
void W_2ee414(u32 a0) {
    *(u8*)((u32)(a0) + 765) = 1;
}

// FUN_002ee478
u32 W_2ee478(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 252);
    if (t1 != 0) {
        return Fn_130f98_1(t1);
    }
}

// FUN_002ee4e0
u32 W_2ee4e0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 268);
    if (t1 != 0) {
        return Fn_4b17b0_1(t1);
    }
}

// FUN_002ee9b8
u32 W_2ee9b8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 252);
    if (t1 != 0) {
        return Fn_13110c_1(t1);
    }
}

// FUN_002eea1c
u32 W_2eea1c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 240);
    if (t1 != 0) {
        return Fn_13cc7c_1(t1);
    }
}

// FUN_002ef2d8
u32 W_2ef2d8(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 272);
    if (r0 != 0u) r0 = *(u32*)(r0 + 132);
    return r0;
}

// FUN_002ef508
u32 W_2ef508(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 240);
    if (t1 != 0) {
        return Fn_13c7e4_1(t1);
    }
}

// FUN_002efb3c
u32 W_2efb3c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 348);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u8*)(r0 + 88);
    if (fa == fb) r0 = 21u;
    return r0;
}

// FUN_002f09c4
void W_2f09c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 > 512u) r1 = 513u;
    r0 = r0 + 512u;
    *(u16*)(r0 + 154) = r1;
    return;
}

// FUN_002f19ec
void W_2f19ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    fa = r1; fb = 0u;
    r1 = 0u;
    if ((int)fa < (int)fb) r1 = ~0u;
    r2 = 1u;
    *(u32*)(r0 + 676) = r1;
    *(u8*)(r0 + 774) = r2;
    return;
}

// FUN_002f1c0c
u32 W_2f1c0c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 268);
    if (t1 != 0) {
        return Fn_4b101c_1(t1);
    }
}

// FUN_002f2760
u32 W_2f2760(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 268);
    if (t1 != 0) {
        return Fn_4b0ee4_1(t1);
    }
}

// FUN_002f2ed8
void W_2f2ed8() {
    { WeakCall0(); return; }
}

// FUN_002f2fbc
u32 W_2f2fbc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 268);
    if (t1 != 0) {
        return Fn_4b0ff8_1(t1);
    }
}

// FUN_002f3250
u32 W_2f3250(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0) + 252);
    if (t1 != 0) {
        return Fn_12e0a4_1(t1);
    }
    return Fn_12e0ac_2(a1, a1);
}

// FUN_002f3abc
u32 W_2f3abc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 648);
    r0 = 1u;
    fa = r1; fb = 1u;
    if (fa != fb) { fa = r1; fb = 3u; }
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_002f3c8c
u32 W_2f3c8c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 372);
    if (t1 != 0) {
        return Fn_2a6828_1(t1);
    }
}

// FUN_0030e14c
void W_30e14c() { Fn_305b50(); }

// FUN_0030e38c
void W_30e38c(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 4) = a1;
}

// FUN_003170f8
void W_3170f8(u32 a0) {
    u32 r0 = a0, r2_1, r1_1;
    r2_1 = ~0u;
    r1_1 = 0u;
    *(u16*)(r0) = r2_1;
    *(u8*)(r0 + 2) = r1_1;
    *(u8*)(r0 + 4) = r1_1;
    return;
}

// FUN_0031d79c
void W_31d79c(u32 a0, u32 a1, u32 a2, u32 a3) {
    *(u8*)((u32)(a0) + 56) = a1;
    *(u8*)((u32)(a0) + 57) = a2;
    *(u8*)((u32)(a0) + 58) = a3;
}

// FUN_00320448
void W_320448(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3;
    r1 = r1 - 1u;
    if (r1 >= 3u) goto L_320468;
    r1 = r0 + (r1 << 2);
    r2 = *(short*)(r1 + 96);
    r3 = *(u8*)(r1 + 98);
    r1 = 0u;
    { Fn_31d3ec_4(r0, r1, r2, r3); return; }
    L_320468:;
    return;
}

// FUN_00322924
u32 W_322924(u32 a0) {
    u32 r0 = a0, r1, r2, r3, fa, fb;
    r2 = (u32)g_007ab4b0;
    r1 = *(u32*)(r2);
    fa = r1; fb = r0;
    if (fa == fb) r0 = 0u;
    if (fa != fb) r1 = 1u;
    if (fa == fb) goto L_32294c;
    L_32293c:;
    r3 = *(u32*)(r2 + (r1 << 2));
    if (r3 != r0) goto L_322950;
    r0 = (u32)(short)r1;
    L_32294c:;
    return r0;
    L_322950:;
    r3 = r2 + (r1 << 2);
    r3 = *(u32*)(r3 + 4);
    if (r3 != r0) goto L_32296c;
    r0 = r1 + 1u;
    r0 = (u32)(short)r0;
    return r0;
    L_32296c:;
    r1 = r1 + 2u;
    if ((int)r1 < (int)109u) goto L_32293c;
    r0 = ~0u;
    return r0;
}

// FUN_00327cd4
u32 W_327cd4() {

    return 60;
}

// FUN_0032fa94
u32 W_32fa94() {

    return 60;
}

// FUN_003333a0
u32 W_3333a0() {

    return 132;
}

// FUN_00333cdc
u32 W_333cdc() {

    return 132;
}

// FUN_003544d4
void W_3544d4(u32 a0, float p0, float p1) {
    u32 r1;
    float f0 = p0, f1 = p1;
    r1 = a0 + 100u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    { WeakCall2f2(a0, r1, f0, f1); return; }
}

// FUN_00354830
void W_354830(u32 a0, float p0, float p1) {
    u32 r1;
    float f0 = p0, f1 = p1;
    r1 = a0 + 108u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    { Fn_3544e0_2f2(a0, r1, f0, f1); return; }
}

// FUN_00354acc
void W_354acc(u32 a0, float p0, float p1) {
    u32 r1;
    float f0 = p0, f1 = p1;
    r1 = a0 + 116u;
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    { Fn_3544e0_2f2(a0, r1, f0, f1); return; }
}

// FUN_003560b4
u32 W_3560b4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 116);
    if (t1 != 0) {
        return Fn_354a38_1(t1);
    }
}

// FUN_0035633c
u32 W_35633c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = *(signed char*)(r0 + 143);
    if (r2 == r1) goto L_356358;
    r2 = 1u;
    *(u8*)(r0 + 143) = r1;
    *(u8*)(r0 + 142) = r2;
    return Fn_356f88_3(r0, r1, r2);
    L_356358:;
    return r0;
}

// FUN_00356d00
u32 W_356d00(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 148);
    if (t1 == 0) {
        *(u8*)((u32)(a0) + 148) = 1;
        return Fn_356e80_2(a0, 1);
    }
}

// FUN_00356e78
u32 W_356e78(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 76);
    return t1;
}

// FUN_003570cc
void W_3570cc(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 80) = a1;
}

// FUN_003571b0
void W_3571b0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = 0u;
    *(u8*)(r0 + 148) = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_00357780
void W_357780(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 76) = a1;
}

// FUN_0035f668
void W_35f668(u32 a0) {
    u32 r0 = a0, r2_1, r0_1, r1_1, r2_2;
    r2_1 = (u32)g_0079e948;
    r0_1 = r0 + 120u;
    r1_1 = *(u32*)(r2_1 + 24);
    r2_2 = *(u32*)(r2_1 + 28);
    *(u32*)(r0_1 + 0) = r1_1; *(u32*)(r0_1 + 4) = r2_2;
    return;
}

// FUN_0035fb50
void W_35fb50(u32 a0) {
    u32 r0 = a0, r2_1, r0_1, r1_1, r2_2;
    r2_1 = (u32)g_0079e948;
    r0_1 = r0 + 120u;
    r1_1 = *(u32*)(r2_1 + 48);
    r2_2 = *(u32*)(r2_1 + 52);
    *(u32*)(r0_1 + 0) = r1_1; *(u32*)(r0_1 + 4) = r2_2;
    return;
}

// FUN_0036241c
void W_36241c(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r2 = *(u32*)(r0 + 140);
    r1 = *(u32*)(r0 + 144);
    if (r2 != 0u) goto L_36243c;
    if ((r1 & 1u) == 0) goto L_362460;
    if (r1 == 0u) goto L_362460;
    L_36243c:;
    r3 = (u32)g_0079ec5c;
    *(u32*)(r0 + 136) = r1;
    *(u32*)(r0 + 132) = r2;
    r1 = 0u;
    r2 = *(u32*)(r3 + 24); r3 = *(u32*)(r3 + 24 + 4);
    *(u32*)(r0 + 156) = r1;
    *(u32*)(r0 + 160) = r1;
    *(u32*)(r0 + 164) = r1;
    *(u32*)(r0 + 140) = r2; *(u32*)(r0 + 140 + 4) = r3;
    L_362460:;
    return;
}

// FUN_00366dc0
void W_366dc0(u32 a0) {
    *(u32*)((u32)(a0) + 68) = 2;
}

// FUN_003678ac
void W_3678ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r2 = *(u32*)(r0 + 116);
    r1 = *(u32*)(r0 + 120);
    if (r2 != 0u) goto L_3678cc;
    if ((r1 & 1u) == 0) goto L_3678f0;
    if (r1 == 0u) goto L_3678f0;
    L_3678cc:;
    r3 = (u32)g_0079f344;
    *(u32*)(r0 + 112) = r1;
    *(u32*)(r0 + 108) = r2;
    r1 = 0u;
    r2 = *(u32*)(r3 + 16); r3 = *(u32*)(r3 + 16 + 4);
    *(u32*)(r0 + 132) = r1;
    *(u32*)(r0 + 136) = r1;
    *(u32*)(r0 + 140) = r1;
    *(u32*)(r0 + 116) = r2; *(u32*)(r0 + 116 + 4) = r3;
    L_3678f0:;
    return;
}

// FUN_00368820
void W_368820(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r2 = *(u32*)(r0 + 136);
    r1 = *(u32*)(r0 + 140);
    if (r2 != 0u) goto L_368840;
    if ((r1 & 1u) == 0) goto L_368864;
    if (r1 == 0u) goto L_368864;
    L_368840:;
    r3 = (u32)g_0079f39c;
    *(u32*)(r0 + 132) = r1;
    *(u32*)(r0 + 128) = r2;
    r1 = 0u;
    r2 = *(u32*)(r3 + 16); r3 = *(u32*)(r3 + 16 + 4);
    *(u32*)(r0 + 152) = r1;
    *(u32*)(r0 + 156) = r1;
    *(u32*)(r0 + 160) = r1;
    *(u32*)(r0 + 136) = r2; *(u32*)(r0 + 136 + 4) = r3;
    L_368864:;
    return;
}

// FUN_00368d54
void W_368d54(u32 a0) {
    u32 r0 = a0, r2_1, r0_1, r1_1, r2_2;
    r2_1 = (u32)g_0079f39c;
    r0_1 = r0 + 136u;
    r1_1 = *(u32*)(r2_1 + 40);
    r2_2 = *(u32*)(r2_1 + 44);
    *(u32*)(r0_1 + 0) = r1_1; *(u32*)(r0_1 + 4) = r2_2;
    return;
}

// FUN_0036b890
void W_36b890(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = *(u32*)(r0 + 128);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 4096u;
    if (fa == fb) *(u32*)(r0 + 128) = r1;
    if (fa == fb) goto L_36b8bc;
    if (r1 != 4096u) goto L_36b8bc;
    r2 = (u32)g_0079eb10;
    r0 = r0 + 120u;
    r1 = *(u32*)(r2 + 0); r2 = *(u32*)(r2 + 4);
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    L_36b8bc:;
    return;
}

// FUN_0037a554
void W_37a554(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = *(u32*)(r0 + 128);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 4096u;
    if (fa == fb) *(u32*)(r0 + 128) = r1;
    if (fa == fb) goto L_37a580;
    if (r1 != 4096u) goto L_37a580;
    r2 = (u32)g_0079ea48;
    r0 = r0 + 120u;
    r1 = *(u32*)(r2 + 0); r2 = *(u32*)(r2 + 4);
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    L_37a580:;
    return;
}

// FUN_0037aa60
void W_37aa60(u32 a0) {
    u32 r0 = a0, r1, r2, r3;
    r2 = *(u32*)(r0 + 120);
    r1 = *(u32*)(r0 + 124);
    if (r2 != 0u) goto L_37aa80;
    if ((r1 & 1u) == 0) goto L_37aaa4;
    if (r1 == 0u) goto L_37aaa4;
    L_37aa80:;
    r3 = (u32)g_0079ea70;
    *(u32*)(r0 + 116) = r1;
    *(u32*)(r0 + 112) = r2;
    r1 = 0u;
    r2 = *(u32*)(r3 + 16); r3 = *(u32*)(r3 + 16 + 4);
    *(u32*)(r0 + 128) = r1;
    *(u32*)(r0 + 132) = r1;
    *(u32*)(r0 + 136) = r1;
    *(u32*)(r0 + 120) = r2; *(u32*)(r0 + 120 + 4) = r3;
    L_37aaa4:;
    return;
}

// FUN_0037ef6c
void W_37ef6c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = 0u;
    r0 = r0 + 156u; *(u32*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_0037f5ec
void W_37f5ec(u32 a0) {
    *(u32*)((u32)(a0) + 156) = 7;
}

// FUN_0037f800
void W_37f800(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = 2u;
    r0 = r0 + 156u; *(u32*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_003834b4
u32 W_3834b4(u32 a0) {
    return Fn_4440d0_2(a0, 0);
}

// FUN_0038485c
void W_38485c(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0) + 12);
    if (t1 != 0) {
        u32 t2 = *(u8*)((u32)(t1) + 4);
        *(u8*)((u32)(a1) + 4) = t2;
        u32 t3 = *(u32*)((u32)(t1) + 8);
        *(u32*)((u32)(a1) + 8) = t3;
        u32 t4 = *(u32*)((u32)(t1) + 12);
        *(u32*)((u32)(a1) + 12) = t4;
    }
}

// FUN_00388868
u32 W_388868() {

    return 37;
}

// FUN_0038e410
u32 W_38e410(u32 a0, u32 a1) {
    u32 r1 = a1;
    return (((u32)g_007b6db4) + ((r1 + (r1 << 1)) << 1));
}

// FUN_0038f27c
void W_38f27c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3_1, r0_1, r3_2, r0_2;
    r3_1 = *(u32*)(r0 + 4);
    r0_1 = *(u16*)(r0 + 14);
    r3_2 = *(u32*)(r3_1 + 52);
    r0_2 = r0_1 + r3_2;
    *(u8*)(r1 + r0_2) = r2;
    return;
}

// FUN_0038f5cc
u32 W_38f5cc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    fa = r0; fb = 20u;
    if (fa < fb) r1 = (u32)g_007b78b4;
    if (fa < fb) r0 = r1 + (r0 << 3);
    if (fa < fb) r0 = *(short*)(r0 + 6);
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_003905b4
u32 W_3905b4() {

    return 64;
}

// FUN_00390c18
u32 W_390c18() {

    return 32;
}

// FUN_0039146c
u32 W_39146c() {

    return 96;
}

// FUN_00392fdc
u32 W_392fdc(u32 a0) {
    u32 r0 = a0, r2_1, r1_1, r3_1;
    r2_1 = 0u;
    r1_1 = r0 + 8u;
    r3_1 = r2_1;
    *(u64*)(r1_1) = (u64)r2_1 | ((u64)r3_1 << 32);
    return r0;
}

// FUN_00396524
u32 W_396524() {

    return 276;
}

// FUN_003996c8
u32 W_3996c8() {

    return 253;
}

// FUN_003998cc
void W_3998cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 < 5u) *(u32*)(r0 + 172) = r1;
    return;
}

// FUN_0039cf6c
u32 W_39cf6c(u32 a0) {
    return Fn_4440d0_2(a0, 0);
}

// FUN_003a3ce8
void W_3a3ce8() { Fn_3a5394(); }

// FUN_003a43e0
void W_3a43e0() { Fn_3a5394(); }

// FUN_003a5700
void W_3a5700() { Fn_3a5394(); }

// FUN_003a5878
void W_3a5878(u32 a0, u32 a1) {
    u32 r1 = a1, r0_1;
    r0_1 = (u32)g_0089a388;
    *(u32*)(r0_1) = r1;
    return;
}

// FUN_003bc1bc
u32 W_3bc1bc() {

    return 0;
}

// FUN_003e5460
u32 W_3e5460() {

    return 1;
}

// FUN_003e5660
void W_3e5660() { Fn_3e5318(); }

// FUN_003e5718
void W_3e5718() { Fn_3e537c(); }

// FUN_003e5774
void W_3e5774() { Fn_3e5318(); }

// FUN_003e57f4
void W_3e57f4() { Fn_3e537c(); }

// FUN_003e5854
void W_3e5854() { Fn_3e5318(); }

// FUN_0044946c
void W_44946c() { Fn_4491a8(); }

// FUN_00449fe4
void W_449fe4() { Fn_4e019c(); }

// FUN_0044e850
void W_44e850() { Fn_44de4c(); }

// FUN_004506f4
void W_4506f4() { Fn_44de4c(); }

// FUN_00451e60
u32 W_451e60(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 124);
    fa = r1; fb = 27u;
    if (fa != fb) { fa = r1; fb = 18u; }
    if (fa != fb) goto L_451e80;
    r1 = *(u8*)(r0 + 136);
    fa = r1; fb = 1u;
    if (fa == fb) r1 = 2u;
    if (fa == fb) *(u8*)(r0 + 136) = r1;
    L_451e80:;
    r0 = 1u;
    return r0;
}

// FUN_00454e84
void W_454e84(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 16) = a1;
}

// FUN_004584dc
void W_4584dc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r3 = *(u32*)(r0 + 236);
    r2 = 65535u;
    r1 = r1 + r3;
    fa = r1; fb = r2;
    r3 = 0u;
    if ((int)fa >= (int)fb) r1 = r2;
    if ((int)fa >= (int)fb) goto L_458500;
    if ((int)r1 <= (int)0u) r1 = r3;
    L_458500:;
    *(u32*)(r0 + 236) = r1;
    return;
}

// FUN_004585bc
void W_4585bc(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r2 = a2, r3 = a3;
    *(u32*)(r0 + 248) = r2; *(u32*)(r0 + 248 + 4) = r3;
    return;
}

// FUN_00458864
void W_458864(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r0_1;
    r0_1 = r0 + r1;
    *(u8*)(r0_1 + 298) = r2;
    return;
}

// FUN_00458918
void W_458918(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 52) = a1;
}

// FUN_00458d08
void W_458d08(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 92) = a1;
}

// FUN_004599ac
void W_4599ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3;
    if ((int)r1 < (int)0u) goto L_4599fc;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 40);
    if (r2 == 0u) goto L_4599d4;
    r3 = 0u;
    r2 = r3;
    r1 = 6u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_4599d4:;
    r1 = *(u32*)(r0 + 44);
    if (r1 == 0u) goto L_4599fc;
    r1 = *(u32*)(r1 + 24);
    if (r1 != 6u) goto L_4599fc;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_4599fc:;
    return;
}

// FUN_0045adfc
void W_45adfc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r0 = r0 + (r1 << 2);
    r1 = 0u;
    *(u32*)(r0 + 120) = r2;
    r0 = r2 + 12u;
    { Fn_5e7d18_3(r0, r1, r2); return; }
}

// FUN_00460260
void W_460260(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 14) = a1;
}

// FUN_00461618
void W_461618(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 124u;
    { WeakCall1(r0); return; }
}

// FUN_00462cb8
void W_462cb8() { Fn_47de58(); }
