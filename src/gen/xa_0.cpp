// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008dda60[];
extern char g_008a7d8c[];
u32 WeakCall0();
u32 WeakCall2(u32, u32);
u32 WeakCall2f2(u32, u32, float, float);
void Fn_2024b0();
u32 Fn_4b8650_1(u32);
u32 WeakCall4(u32, u32, u32, u32);
void Fn_100a3c();
extern char g_008d576c[];
extern char g_007d14d8[];
extern char g_008a6540[];
extern char g_00132080[];
u32 Fn_0fcfe8_1(u32);
extern char g_007e3038[];
extern char g_007b1174[];
void Fn_5c4b08();
void Fn_5c527c();
extern char g_007c6f00[];
u32 Fn_384a9c_4(u32, u32, u32, u32);
extern char g_0089df44[];
extern char g_0089df64[];
extern char g_0089df84[];
extern char g_0089c578[];
u32 WeakCall3(u32, u32, u32);
void Fn_5c7c28();
void Fn_1c7d88();
void Fn_1c7d44();
void Fn_199290();
u32 Fn_19913c_2(u32, u32);
extern char g_0089cea0[];
extern char g_0089b5d0[];
extern char g_0089c6a0[];
void Fn_1c7e54();
void Fn_1c81e4();
void Fn_1e8810();
extern char g_007c5198[];
extern char g_007c5218[];
extern char g_007c3824[];
extern char g_0089ce80[];

// FUN_0004970c
u32 W_04970c() {
    u32 r0;
    r0 = (u32)g_008dda60;
    r0 = *(u32*)(r0 + 68);
    r0 = r0 & 4u;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00049b30
u32 W_049b30() {
    u32 r0_1, r0_2, r0_3;
    r0_1 = (u32)g_008a7d8c;
    r0_2 = *(u32*)(r0_1);
    r0_3 = *(u8*)(r0_2 + 388);
    return r0_3;
}

// FUN_0006af88
void W_06af88(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 1) = 0;
    *(u8*)((u32)(a0) + 2) = 0;
    *(u8*)((u32)(a0) + 3) = 4;
    *(u8*)((u32)(a0) + 4) = 4;
    *(u8*)((u32)(a0) + 5) = 0;
    *(u8*)((u32)(a0) + 6) = 0;
    *(u8*)((u32)(a0) + 7) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u32*)((u32)(a0) + 24) = 0;
    *(u32*)((u32)(a0) + 28) = 0;
    *(u32*)((u32)(a0) + 32) = 0;
}

// FUN_0006e660
void W_06e660(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 4) = t2;
}

// FUN_0006e714
void W_06e714() {
    { WeakCall0(); return; }
}

// FUN_0006eb98
void W_06eb98(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 4) = t2;
    u32 t3 = *(u32*)((u32)(a2));
    *(u32*)((u32)(a0) + 8) = t3;
    u32 t4 = *(u32*)((u32)(a3));
    *(u32*)((u32)(a0) + 12) = t4;
    u32 t5 = *(u32*)((u32)(a3) + 4);
    *(u32*)((u32)(a0) + 16) = t5;
}

// FUN_00074708
u32 W_074708(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 15);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 92);
    if (fa == fb) r0 = 0u;
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_7472c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    return ((u32(*)(u32))r1)(r0);
    L_7472c:;
    return r0;
}

// FUN_00075978
void W_075978(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 4) = t2;
}

// FUN_00076428
void W_076428(u32 a0) {
    u32 r1;
    r1 = *(u8*)(a0 + 16);
    { WeakCall2(a0, r1); return; }
}

// FUN_00078460
void W_078460(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 4) = t2;
}

// FUN_0007df4c
void W_07df4c() {
    { WeakCall0(); return; }
}

// FUN_0007e65c
void W_07e65c(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 4) = t2;
}

// FUN_0007f95c
void W_07f95c(u32 a0, float p0) {
    u32 r1;
    float f0 = p0, f1;
    r1 = *(u32*)(a0 + 128);
    if (r1 != 0u) *(float*)(r1 + 256) = f0;
    r1 = *(u32*)(a0 + 132);
    if (r1 != 0u) *(float*)(r1 + 256) = f0;
    r1 = *(u32*)(a0 + 136);
    if (r1 != 0u) *(float*)(r1 + 256) = f0;
    r1 = *(u32*)(a0 + 140);
    if (r1 != 0u) *(float*)(r1 + 256) = f0;
    r1 = a0 + 192u;
    f0 = *(float*)(r1 + 0);
    f1 = *(float*)(r1 + 4);
    { WeakCall2f2(a0, r1, f0, f1); return; }
}

// FUN_00081e04
void W_081e04() { Fn_2024b0(); }

// FUN_000860e0
u32 W_0860e0() {
    u32 r0_1;
    r0_1 = 1174u;
    return r0_1;
}

// FUN_00086200
u32 W_086200() {
    u32 r0_1;
    r0_1 = 1185u;
    return r0_1;
}

// FUN_00086374
void W_086374() { Fn_2024b0(); }

// FUN_00086604
u32 W_086604(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u16*)(r0 + 144);
    fa = r0; fb = 6u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_000866d8
void W_0866d8() {
    { WeakCall0(); return; }
}

// FUN_000d1e98
void W_0d1e98(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 76) = a1;
}

// FUN_000d25c8
void W_0d25c8(u32 a0, u32 a1, u32 a2) {
    u32 r0_1;
    r0_1 = a0 + 80u;
    *(u32*)(r0_1 + 0) = a1; *(u32*)(r0_1 + 4) = a2;
    return;
}

// FUN_000e335c
void W_0e335c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r3, fa, fb;
    r3 = *(u8*)(r0 + 360);
    fa = r3; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r0 + 352);
    if (fa != fb) *(u32*)(a1) = r3;
    if (fa != fb) r0 = *(u32*)(r0 + 344);
    if (fa == fb) r0 = 0u;
    if (fa == fb) *(u32*)(a1) = r0;
    *(u32*)(a2) = r0;
    return;
}

// FUN_000e5720
u32 W_0e5720() {

    return 0;
}

// FUN_000e5978
void W_0e5978() {

}

// FUN_000e5e60
void W_0e5e60() {

}

// FUN_000e60d0
u32 W_0e60d0(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u8*)(r0 + 68);
    fa = r0; fb = 2u;
    if (fa >= fb) r0 = 1u;
    if (fa < fb) r0 = 0u;
    return r0;
}

// FUN_000e7a10
void W_0e7a10(u32 a0, u32 a1) {
    u32 r2_1, r2_2, r2_3, r0_1;
    r2_1 = *(short*)(a0 + 78);
    r2_2 = r2_1 + (r2_1 << 6);
    r2_3 = (r2_2 << 3) - r2_2;
    r0_1 = a0 + (r2_3 << 2);
    *(u8*)(r0_1 + 3642) = a1;
    return;
}

// FUN_000e8dc4
u32 W_0e8dc4(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 512u;
    if (fa != fb) r0 = *(short*)(r0 + 182);
    return r0;
}

// FUN_000e90ac
u32 W_0e90ac(u32 a0) {
    u32 r1_1, r1_2, r1_3, r0_1, r0_2, r0_3;
    r1_1 = *(short*)(a0 + 78);
    r1_2 = r1_1 + (r1_1 << 6);
    r1_3 = (r1_2 << 3) - r1_2;
    r0_1 = a0 + (r1_3 << 2);
    r0_2 = r0_1 + 3584u;
    r0_3 = *(signed char*)(r0_2 + 26);
    return r0_3;
}

// FUN_000fb164
void W_0fb164(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    if (r1 >= 96u) goto L_fb180;
    r1 = r1 + r0;
    r0 = *(u8*)(r1 + 111);
    fa = r0; fb = 255u;
    if (fa < fb) r0 = r0 + 1u;
    if (fa < fb) *(u8*)(r1 + 111) = r0;
    L_fb180:;
    return;
}

// FUN_000fcaf8
void W_0fcaf8(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 368);
    if (fa != fb) { fa = r0; fb = 0u; }
    if (fa == fb) goto L_fcb10;
    { Fn_4b8650_1(r0); return; }
    L_fcb10:;
    return;
}

// FUN_000fd044
void W_0fd044(u32 a0, u32 a1) {
    u32 r0_1;
    r0_1 = *(u32*)(a0 + 72);
    if (r0_1 != 0u) *(u32*)(r0_1 + 376) = a1;
    return;
}

// FUN_000fd6d0
void W_0fd6d0(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r2 = a2, r12;
    r12 = 0u;
    *(u16*)(a0 + 16) = a1;
    if ((int)r2 < 0) r2 = 1000u;
    *(u8*)(a0 + 18) = r12;
    *(u64*)(a0 + 20) = (u64)r2 | ((u64)a3 << 32);
    { WeakCall4(a0, a1, r2, a3); return; }
}

// FUN_000fe7ac
void W_0fe7ac(u32 a0, u32 a1) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 72);
    if (r0 == 0u) goto L_fe7c0;
    if (a1 < 7u) *(u8*)(r0 + 416) = a1;
    L_fe7c0:;
    return;
}

// FUN_000ffce8
void W_0ffce8() { Fn_100a3c(); }

// FUN_001008c8
u32 W_1008c8(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 18);
    return t1;
}

// FUN_00101074
void W_101074() { Fn_100a3c(); }

// FUN_0010705c
void W_10705c(u32 a0, u32 a1) {
    u32 r0_1;
    r0_1 = (u32)g_008d576c;
    *(u32*)(r0_1 + 8) = a1;
    return;
}

// FUN_00107394
u32 W_107394() {
    u32 r0_1;
    r0_1 = (u32)g_008d576c;
    return r0_1;
}

// FUN_001138c8
void W_1138c8(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 r0_3;
    r0_3 = *(u32*)(((a0 + ((a1 + (a1 << 2)) << 5)) + (a2 << 2)) + 400);
    *(u32*)(a3) = r0_3;
    *(u32*)(a4) = (*(u32*)((((u32)g_007d14d8) + (r0_3 << 3)) + 4));
    return;
}

// FUN_00117088
u32 W_117088(u32 a0, u32 a1) {
    u32 r0_1, r0_2, r0_3;
    r0_1 = (u32)g_007d14d8;
    r0_2 = r0_1 + (a1 << 3);
    r0_3 = *(u32*)(r0_2 + 4);
    return r0_3;
}

// FUN_00117cfc
u32 W_117cfc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    r1 = r1 + (r1 << 2);
    r0 = r0 + (r1 << 5);
    r1 = (u32)g_008a6540;
    r0 = r0 + 256u;
    r0 = *(short*)(r0 + 48);
    r1 = *(u32*)(r1 + 4);
    fa = r1; fb = r0;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa > (int)fb) r0 = 0u;
    return r0;
}

// FUN_0011ff38
void W_11ff38(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
}

// FUN_001259a4
void W_1259a4(u32 a0) {
    *(u8*)((u32)(a0) + 140) = 1;
}

// FUN_001278e0
u32 W_1278e0() {
    u32 r0_1;
    r0_1 = (u32)g_00132080;
    return r0_1;
}

// FUN_00127cc4
u32 W_127cc4() {

    return 144;
}

// FUN_0013135c
void W_13135c(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 221) = a1;
}

// FUN_00131588
u32 W_131588(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    if (t1 != 0) {
        return Fn_0fcfe8_1(t1);
    }
}

// FUN_0013803c
void W_13803c(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 10) = 0;
    *(u8*)((u32)(a0) + 9) = 0;
    *(u8*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 11) = 255;
}

// FUN_0013ab44
void W_13ab44(u32 a0, u32 a1, u32 a2) {
    u32 r0_1;
    r0_1 = a0 + 72u;
    *(u32*)(r0_1 + 0) = a1; *(u32*)(r0_1 + 4) = a2;
    return;
}

// FUN_0013d7b8
void W_13d7b8(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 3533) = a1;
}

// FUN_0013de34
u32 W_13de34(u32 a0, u32 a1) {
    u32 r0, fa, fb;
    fa = a1; fb = 57u;
    if (fa < fb) r0 = (u32)g_007e3038;
    if (fa < fb) r0 = *(u32*)(r0 + (a1 << 2));
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_001449bc
void W_1449bc(u32 a0, u32 a1) {
    u32 r1 = a1;
    if (r1 >= 3u) r1 = 0u;
    *(u8*)(a0 + 268) = r1;
    return;
}

// FUN_00145c2c
void W_145c2c(u32 a0, u32 a1, u32 a2) {
    u32 r0_1;
    r0_1 = a0 + 72u;
    *(u32*)(r0_1 + 0) = a1; *(u32*)(r0_1 + 4) = a2;
    return;
}

// FUN_0015d164
u32 W_15d164() {

    return 772;
}

// FUN_0015da70
u32 W_15da70(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    fa = r0; fb = 4u;
    if (fa < fb) r1 = (u32)g_007b1174;
    if (fa < fb) r0 = *(u8*)(r1 + r0);
    if (fa >= fb) r0 = 15u;
    return r0;
}

// FUN_0015dd38
u32 W_15dd38(u32 a0, u32 a1) {
    u32 r0, fa, fb;
    fa = a1; fb = 4u;
    if (fa < fb) r0 = (u32)g_007b1174;
    if (fa < fb) r0 = *(u8*)(r0 + a1);
    if (fa >= fb) r0 = 15u;
    return r0;
}

// FUN_001606c8
void W_1606c8(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 12) = 0;
    *(u8*)((u32)(a0) + 13) = 0;
    *(u8*)((u32)(a0) + 14) = 0;
    *(u8*)((u32)(a0) + 15) = 0;
}

// FUN_001653e8
u32 W_1653e8(u32 a0) {

    return (a0 + 24);
}

// FUN_001687bc
void W_1687bc(u32 a0) {
    u32 r1, fa, fb;
    r1 = *(u32*)(a0 + 160);
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 3u;
    if (fa == fb) goto L_1687e4;
    fa = r1; fb = 4u;
    if (fa == fb) r1 = 5u;
    if (fa == fb) goto L_1687e4;
    fa = r1; fb = 6u;
    if (fa == fb) r1 = 7u;
    if (fa != fb) goto L_1687e8;
    L_1687e4:;
    *(u32*)(a0 + 160) = r1;
    L_1687e8:;
    return;
}

// FUN_001691d8
void W_1691d8(u32 a0) {
    u32 r1, fa, fb;
    r1 = *(u8*)(a0 + 1716);
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 3u;
    if (fa == fb) *(u8*)(a0 + 1716) = r1;
    return;
}

// FUN_00169bd0
void W_169bd0(u32 a0, u32 a1) {
    u32 r1 = a1, r2, fa, fb;
    r2 = *(u16*)(a0 + 106);
    r1 = r1 + r2;
    fa = r1; fb = 65536u;
    if (fa < fb) r1 = (u16)r1;
    if (fa >= fb) r1 = 65535u;
    *(u16*)(a0 + 106) = r1;
    return;
}

// FUN_0018ae44
u32 W_18ae44() {
    u32 r0_1;
    r0_1 = 20616u;
    return r0_1;
}

// FUN_0018f6b0
void W_18f6b0() { Fn_2024b0(); }

// FUN_0018fa74
void W_18fa74() { Fn_5c4b08(); }

// FUN_0018fc8c
void W_18fc8c() { Fn_5c527c(); }

// FUN_00196204
void W_196204(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r3;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_196228;
    r3 = (u32)g_007c6f00;
    r0 = *(u32*)(r0 + 20);
    r1 = r3 + (r1 << 1);
    r1 = *(u16*)(r1);
    r1 = r1 + a2;
    { Fn_384a9c_4(r0, r1, a2, r3); return; }
    L_196228:;
    return;
}

// FUN_00198b9c
void W_198b9c(u32 a0) {
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u32*)((u32)(a0) + 24) = 0;
    *(u8*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 1) = 0;
    *(u8*)((u32)(a0) + 2) = 0;
    *(u8*)((u32)(a0) + 3) = 0;
    *(u8*)((u32)(a0) + 4) = 0;
    *(u8*)((u32)(a0) + 5) = 0;
    *(u8*)((u32)(a0) + 6) = 0;
    *(u8*)((u32)(a0) + 7) = 0;
    *(u8*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u8*)((u32)(a0) + 28) = 0;
}

// FUN_00198ea8
void W_198ea8() {

}

// FUN_0019a290
u32 W_19a290() {
    u32 r0_1;
    r0_1 = (u32)g_0089df44;
    return r0_1;
}

// FUN_0019a34c
u32 W_19a34c() {
    u32 r0_1;
    r0_1 = (u32)g_0089df64;
    return r0_1;
}

// FUN_0019a474
u32 W_19a474() {
    u32 r0_1;
    r0_1 = (u32)g_0089df84;
    return r0_1;
}

// FUN_001a0d0c
u32 W_1a0d0c() {
    u32 r0_1;
    r0_1 = (u32)g_0089c578;
    return r0_1;
}

// FUN_001a79d0
void W_1a79d0() { Fn_5c527c(); }

// FUN_001ab6b8
void W_1ab6b8(u32 a0, u32 a1) {
    u32 r1 = a1, r2;
    *(u8*)(a0 + 376) = r1;
    r1 = a0 + 256u;
    r2 = *(signed char*)(r1 + 122);
    r1 = *(signed char*)(r1 + 121);
    { WeakCall3(a0, r1, r2); return; }
}

// FUN_001adf1c
void W_1adf1c(u32 a0) {
    *(u32*)(a0) = ~0u;
    *(u8*)(a0 + 8) = 0u;
    *(u32*)(a0 + 4) = ~0u;
    return;
}

// FUN_001aef74
void W_1aef74(u32 a0) {
    u32 r1_1;
    r1_1 = ~0u;
    *(u32*)(a0) = r1_1;
    return;
}

// FUN_001b50d4
void W_1b50d4() { Fn_5c7c28(); }

// FUN_001b5fcc
void W_1b5fcc() { Fn_1c7d88(); }

// FUN_001b8234
void W_1b8234() { Fn_1c7d44(); }

// FUN_001b84b8
void W_1b84b8() { Fn_5c527c(); }

// FUN_001bcfdc
void W_1bcfdc(u32 a0, u32 a1) {
    *(u8*)(a0 + 100) = a1;
    { WeakCall2(a0, a1); return; }
}

// FUN_001be740
void W_1be740(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 1;
}

// FUN_001c0350
void W_1c0350() { Fn_2024b0(); }

// FUN_001c0814
void W_1c0814() { Fn_2024b0(); }

// FUN_001c7a58
void W_1c7a58() { Fn_2024b0(); }

// FUN_001cdd68
void W_1cdd68() { Fn_199290(); }

// FUN_001ce624
void W_1ce624() { Fn_199290(); }

// FUN_001cef50
void W_1cef50() { Fn_199290(); }

// FUN_001cf858
void W_1cf858() { Fn_199290(); }

// FUN_001cfb60
void W_1cfb60(u32 a0, u32 a1) {
    u32 r1 = a1;
    r1 = r1 ^ 1u;
    *(u8*)(a0 + 92) = r1;
    { Fn_19913c_2(a0, r1); return; }
}

// FUN_001d13e8
void W_1d13e8() { Fn_2024b0(); }

// FUN_001d59e8
void W_1d59e8() { Fn_5c527c(); }

// FUN_001d5c44
void W_1d5c44() { Fn_1c7d44(); }

// FUN_001daf28
u32 W_1daf28() {
    u32 r0_1;
    r0_1 = (u32)g_0089cea0;
    return r0_1;
}

// FUN_001db388
void W_1db388() {

}

// FUN_001dc510
void W_1dc510() { Fn_2024b0(); }

// FUN_001dca88
void W_1dca88() { Fn_5c7c28(); }

// FUN_001dda04
void W_1dda04() { Fn_5c7c28(); }

// FUN_001dfcd0
u32 W_1dfcd0() {
    u32 r0_1;
    r0_1 = (u32)g_0089b5d0;
    return r0_1;
}

// FUN_001dfd04
void W_1dfd04() { Fn_5c7c28(); }

// FUN_001dfe70
u32 W_1dfe70() {
    u32 r0_1;
    r0_1 = (u32)g_0089c6a0;
    return r0_1;
}

// FUN_001e1f20
void W_1e1f20() {

}

// FUN_001e86f4
void W_1e86f4(u32 a0) {
    *(u32*)((u32)(a0) + 36) = 5;
}

// FUN_001e9af8
void W_1e9af8() { Fn_1c7e54(); }

// FUN_001ea720
void W_1ea720() { Fn_1c81e4(); }

// FUN_001ebf80
void W_1ebf80() { Fn_1c81e4(); }

// FUN_001eec94
void W_1eec94() { Fn_1c81e4(); }

// FUN_001eee68
void W_1eee68() { Fn_1e8810(); }

// FUN_001eef58
u32 W_1eef58() {

    return (u32)g_007c5198;
}

// FUN_001ef18c
void W_1ef18c() { Fn_2024b0(); }

// FUN_001ef298
u32 W_1ef298() {
    u32 r0_1;
    r0_1 = (u32)g_007c5218;
    return r0_1;
}

// FUN_001ef4cc
void W_1ef4cc() { Fn_2024b0(); }

// FUN_001ef734
void W_1ef734() { Fn_5c7c28(); }

// FUN_001f46f0
u32 W_1f46f0() {
    u32 r0_1;
    r0_1 = (u32)g_007c3824;
    return r0_1;
}

// FUN_001f6e6c
u32 W_1f6e6c() {
    u32 r0_1;
    r0_1 = (u32)g_0089ce80;
    return r0_1;
}

// FUN_001f741c
void W_1f741c() { Fn_5c7c28(); }

// FUN_001f8764
void W_1f8764(u32 a0) {
    u32 r1_1, r1_2, r2_1, r1_3;
    r1_1 = 3u;
    *(u32*)(a0 + 44) = r1_1;
    r1_2 = *(u32*)(a0);
    r2_1 = *(u32*)(r1_2 + 68);
    r1_3 = 0u;
    { ((u32(*)(u32, u32))r2_1)(a0, r1_3); return; }
}

// FUN_001fba14
void W_1fba14(u32 a0) {
    u32 r1_1, r2_1;
    r1_1 = 0u;
    *(u32*)(a0) = r1_1;
    *(u8*)(a0 + 4) = r1_1;
    *(u8*)(a0 + 5) = r1_1;
    *(u16*)(a0 + 6) = r1_1;
    r2_1 = ~0u;
    *(u16*)(a0 + 8) = r1_1;
    *(u32*)(a0 + 12) = r2_1;
    return;
}

// FUN_00200c78
void W_200c78() { Fn_2024b0(); }
