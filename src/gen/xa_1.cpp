// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
void Fn_2024b0();
void Fn_5c7c28();
void Fn_1c7d30();
void Fn_1e8810();
void Fn_1c7d44();
void Fn_1990d8();
extern char g_007c53d0[];
void Fn_1e858c();
u32 Fn_1990d8_2(u32, u32);
u32 Fn_19913c_2(u32, u32);
extern char g_007c51d8[];
void Fn_198f20();
void Fn_21e3ec();
void Fn_5c4b08();
void Fn_5c527c();
void Fn_1c7d40();
void Fn_1c81e4();
u32 Fn_5c31cc_4(u32, u32, u32, u32);
void Fn_199290();
extern char g_007c51b8[];
extern char g_0089b618[];
extern char g_0089d2ec[];
u32 WeakCall2(u32, u32);
void Fn_2259fc();
u32 WeakCall3(u32, u32, u32);
extern char g_007dfb7c[];
extern char g_008a725c[];
u32 WeakCall0();
void Fn_265a90();
extern char g_00815494[];
u32 Fn_626138_3(u32, u32, u32);
u32 Fn_278094_3(u32, u32, u32);
void Fn_279fb8();
void Fn_27de38();
void Fn_27e308();
void Fn_27b440();
void Fn_29c084();
extern char g_008bfa88[];

// FUN_00200d48
void W_200d48() { Fn_2024b0(); }

// FUN_00200f94
void W_200f94() { Fn_2024b0(); }

// FUN_0020114c
void W_20114c() { Fn_5c7c28(); }

// FUN_00208230
void W_208230() { Fn_1c7d30(); }

// FUN_0020b854
void W_20b854() { Fn_1e8810(); }

// FUN_0020bc64
void W_20bc64() { Fn_5c7c28(); }

// FUN_0020c03c
void W_20c03c() { Fn_1c7d44(); }

// FUN_00212f4c
void W_212f4c() { Fn_1990d8(); }

// FUN_00214604
void W_214604() { Fn_2024b0(); }

// FUN_00214724
void W_214724() { Fn_2024b0(); }

// FUN_002147c4
void W_2147c4() { Fn_2024b0(); }

// FUN_0021480c
u32 W_21480c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)g_007c53d0;
    return r0_1;
}

// FUN_002148e8
void W_2148e8() { Fn_2024b0(); }

// FUN_002149fc
void W_2149fc() { Fn_2024b0(); }

// FUN_002157b0
void W_2157b0() { Fn_1e8810(); }

// FUN_00219c48
void W_219c48() { Fn_1e858c(); }

// FUN_00219f74
u32 W_219f74(u32 a0) {
    *(u8*)((u32)(a0) + 92) = 15;
    return Fn_1990d8_2(a0, 15);
}

// FUN_0021a054
u32 W_21a054(u32 a0) {
    *(u8*)((u32)(a0) + 92) = 16;
    return Fn_19913c_2(a0, 16);
}

// FUN_0021a0f8
void W_21a0f8() { Fn_1e8810(); }

// FUN_0021b648
u32 W_21b648() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)g_007c51d8;
    return r0_1;
}

// FUN_0021b8a4
void W_21b8a4() { Fn_2024b0(); }

// FUN_0021c234
void W_21c234() { Fn_2024b0(); }

// FUN_0021c710
void W_21c710() { Fn_198f20(); }

// FUN_0021e3e0
void W_21e3e0() { Fn_2024b0(); }

// FUN_0021e5b8
void W_21e5b8() { Fn_21e3ec(); }

// FUN_0021e944
void W_21e944() { Fn_2024b0(); }

// FUN_00220770
void W_220770() { Fn_5c4b08(); }

// FUN_002209b4
void W_2209b4() { Fn_5c527c(); }

// FUN_00228b58
void W_228b58() { Fn_1c7d40(); }

// FUN_002291fc
void W_2291fc() { Fn_1c81e4(); }

// FUN_0022b4b0
void W_22b4b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r0 + 44);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_22b4e0;
    r1 = *(u32*)(r1 + 24);
    fa = r1; fb = 1u;
    if (fa != fb) goto L_22b4e0;
    r3 = 0u;
    r2 = r3;
    r1 = r3;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_22b4e0:;
    return;
}

// FUN_0022e748
void W_22e748() { Fn_199290(); }

// FUN_0022f538
u32 W_22f538() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)g_007c51b8;
    return r0_1;
}

// FUN_0022f784
void W_22f784() { Fn_2024b0(); }

// FUN_0022f860
void W_22f860() { Fn_2024b0(); }

// FUN_0022f97c
u32 W_22f97c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)g_0089b618;
    return r0_1;
}

// FUN_0022fbe8
void W_22fbe8() {

}

// FUN_00230044
void W_230044() { Fn_1c7d40(); }

// FUN_0023067c
void W_23067c() { Fn_5c7c28(); }

// FUN_00232238
void W_232238() {

}

// FUN_002357f0
void W_2357f0() { Fn_2024b0(); }

// FUN_00236068
void W_236068() { Fn_2024b0(); }

// FUN_0023616c
void W_23616c() { Fn_2024b0(); }

// FUN_00239954
u32 W_239954() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)g_0089d2ec;
    return r0_1;
}

// FUN_0023cf1c
void W_23cf1c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 44);
    { WeakCall2(r0, r1); return; }
}

// FUN_00246f24
void W_246f24() { Fn_2259fc(); }

// FUN_0024ab50
void W_24ab50() { Fn_2024b0(); }

// FUN_0024e248
void W_24e248() { Fn_2024b0(); }

// FUN_00250038
void W_250038(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 96) = f0;
    return;
}

// FUN_00250b94
void W_250b94() { Fn_5c527c(); }

// FUN_002530c8
void W_2530c8(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
}

// FUN_002579d0
u32 W_2579d0() {

    return 132;
}

// FUN_002580f8
u32 W_2580f8() {

    return 25;
}

// FUN_002585c4
u32 W_2585c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 80);
    fa = r0; fb = 3u;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa > (int)fb) r0 = 0u;
    return r0;
}

// FUN_00260ca0
void W_260ca0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(signed char*)(r0 + 85);
    r1 = *(signed char*)(r0 + 84);
    r0 = *(u32*)(r0 + 80);
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_00261130
u32 W_261130(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_007dfb7c;
    r3 = 0u;
    L_261138:;
    r12 = *(short*)(r2);
    fa = r12; fb = r0;
    if (fa != fb) goto L_261154;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(short*)(r2 + 4);
    if (fa == fb) r0 = *(short*)(r2 + 2);
    return r0;
    L_261154:;
    r3 = r3 + 1u;
    fa = r3; fb = 62u;
    r2 = r2 + 8u;
    if ((int)fa < (int)fb) goto L_261138;
    r0 = ~0u;
    return r0;
}

// FUN_00263648
u32 W_263648() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008a725c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 10u;
    return r0;
}

// FUN_002650c0
u32 W_2650c0() {

    return 1824;
}

// FUN_00265404
void W_265404(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 1) = 0;
    *(u8*)((u32)(a0) + 2) = 0;
}

// FUN_00265a8c
void W_265a8c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00268f44
void W_268f44() { Fn_265a90(); }

// FUN_00269a00
void W_269a00() { Fn_265a90(); }

// FUN_00274d74
void W_274d74(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    r1_1 = 0u;
    *(u32*)(r0 + 8) = r1_1;
    *(u32*)(r0) = ((u32)g_00815494);
    *(u32*)(r0 + 4) = r1_1;
    return;
}

// FUN_00278f08
u32 W_278f08(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_278f54;
    fa = r2; fb = 20u;
    if (fa >= fb) goto L_278f50;
    fa = r2; fb = 10u;
    if (fa >= fb) goto L_278f38;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_278f58;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_278f64;
    fa = r1; fb = 2u;
    if (fa == fb) goto L_278f70;
    L_278f38:;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_278f7c;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_278f88;
    fa = r1; fb = 2u;
    if (fa == fb) goto L_278f94;
    L_278f50:;
    r0 = 0u;
    L_278f54:;
    return r0;
    L_278f58:;
    r1 = 2483030189u;
    r1 = r1 + r2;
    return Fn_626138_3(r0, r1, r2);
    L_278f64:;
    r1 = 2332035231u;
    r1 = r1 + r2;
    return Fn_626138_3(r0, r1, r2);
    L_278f70:;
    r1 = 2164263071u;
    r1 = r1 + r2;
    return Fn_626138_3(r0, r1, r2);
    L_278f7c:;
    r1 = 2483033455u;
    r1 = r1 + r2;
    return Fn_626138_3(r0, r1, r2);
    L_278f88:;
    r1 = 2332038494u;
    r1 = r1 + r2;
    return Fn_626138_3(r0, r1, r2);
    L_278f94:;
    r1 = 2164266336u;
    r1 = r1 + r2;
    return Fn_626138_3(r0, r1, r2);
}

// FUN_0027c290
void W_27c290(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_27c2ac;
    r2 = 1u;
    r1 = 0u;
    *(u8*)(r0 + 1166) = r2;
    *(u32*)(r0 + 1168) = r1;
    return;
    L_27c2ac:;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_0027fce8
void W_27fce8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 44);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = *(u32*)(r0 + 164);
    if (fa != fb) { fa = r2; fb = r1; }
    if (fa == fb) goto L_27fd04;
    r2 = 0u;
    { Fn_278094_3(r0, r1, r2); return; }
    L_27fd04:;
    return;
}

// FUN_00280150
void W_280150(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r0_1;
    r1_1 = *(u32*)(r0 + 36);
    r2_1 = 1u;
    fa = r1_1; fb = 0u;
    if (fa != fb) *(u8*)(r1_1 + 48) = r2_1;
    r0_1 = *(u32*)(r0 + 40);
    fa = r0_1; fb = 0u;
    if (fa != fb) *(u8*)(r0_1 + 48) = r2_1;
    return;
}

// FUN_0028248c
void W_28248c() { Fn_279fb8(); }

// FUN_00282dc0
void W_282dc0() { Fn_279fb8(); }

// FUN_0028341c
void W_28341c() { Fn_279fb8(); }

// FUN_00284a90
void W_284a90() { Fn_279fb8(); }

// FUN_002850e0
void W_2850e0() { Fn_279fb8(); }

// FUN_0028596c
void W_28596c() { Fn_279fb8(); }

// FUN_00286240
void W_286240() { Fn_27de38(); }

// FUN_00286360
void W_286360() { Fn_279fb8(); }

// FUN_00286ad4
void W_286ad4() { Fn_279fb8(); }

// FUN_00287020
void W_287020() { Fn_279fb8(); }

// FUN_002875f0
void W_2875f0() { Fn_279fb8(); }

// FUN_00287b00
void W_287b00() { Fn_27de38(); }

// FUN_00287b80
void W_287b80() { Fn_279fb8(); }

// FUN_002880c8
void W_2880c8() { Fn_27e308(); }

// FUN_00288178
void W_288178() { Fn_279fb8(); }

// FUN_00288934
void W_288934() { Fn_279fb8(); }

// FUN_0028db9c
void W_28db9c() { Fn_279fb8(); }

// FUN_0028e0d0
void W_28e0d0() { Fn_279fb8(); }

// FUN_0028e414
void W_28e414() { Fn_279fb8(); }

// FUN_0028eb08
void W_28eb08() { Fn_27de38(); }

// FUN_0028f0e4
void W_28f0e4() { Fn_279fb8(); }

// FUN_0028f84c
void W_28f84c() { Fn_279fb8(); }

// FUN_0028fde4
void W_28fde4() { Fn_279fb8(); }

// FUN_00290418
void W_290418() { Fn_27de38(); }

// FUN_002904bc
void W_2904bc() { Fn_279fb8(); }

// FUN_00290b60
void W_290b60() { Fn_279fb8(); }

// FUN_002910a0
void W_2910a0() { Fn_27de38(); }

// FUN_00291218
void W_291218() { Fn_279fb8(); }

// FUN_00291cac
void W_291cac() { Fn_279fb8(); }

// FUN_00292398
void W_292398() { Fn_27de38(); }

// FUN_0029529c
void W_29529c() { Fn_27b440(); }

// FUN_00297028
void W_297028() { Fn_279fb8(); }

// FUN_00297c58
void W_297c58() { Fn_279fb8(); }

// FUN_00298330
void W_298330() { Fn_279fb8(); }

// FUN_00298c1c
void W_298c1c() { Fn_279fb8(); }

// FUN_00299378
void W_299378() { Fn_279fb8(); }

// FUN_002997fc
void W_2997fc() { Fn_279fb8(); }

// FUN_00299e54
void W_299e54() { Fn_27e308(); }

// FUN_00299ef8
void W_299ef8() { Fn_279fb8(); }

// FUN_0029a42c
void W_29a42c() { Fn_279fb8(); }

// FUN_0029a950
void W_29a950() { Fn_279fb8(); }

// FUN_0029ae7c
void W_29ae7c() { Fn_279fb8(); }

// FUN_0029b544
void W_29b544() { Fn_279fb8(); }

// FUN_0029c130
void W_29c130(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 332) = a1;
}

// FUN_0029f3f8
void W_29f3f8() { Fn_29c084(); }

// FUN_002a1cd0
void W_2a1cd0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = r0 + 72u;
    *(u32*)(r0_1 + 0) = r1; *(u32*)(r0_1 + 4) = r2;
    return;
}

// FUN_002a51a8
u32 W_2a51a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2a51c0;
    r0 = *(u32*)(r0 + 112);
    r0 = r0 & 16u;
    r0 = r0 >> 4;
    L_2a51c0:;
    return r0;
}

// FUN_002a79f8
void W_2a79f8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = r0 + 72u;
    *(u32*)(r0_1 + 0) = r1; *(u32*)(r0_1 + 4) = r2;
    return;
}

// FUN_002aa718
void W_2aa718(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1, r3_1;
    r1_1 = 0u;
    r2_1 = 5u;
    *(u8*)(r0) = r1_1;
    r3_1 = ~0u;
    *(u8*)(r0 + 1) = r2_1;
    *(u16*)(r0 + 2) = r3_1;
    *(u8*)(r0 + 4) = r1_1;
    return;
}

// FUN_002ac1b4
void W_2ac1b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = r1 + 1024u;
    if (fa != fb) *(u16*)(r1 + 132) = r0;
    return;
}

// FUN_002ac348
u32 W_2ac348() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bfa88;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(short*)(r0 + 8);
    if (fa == fb) r0 = 1u;
    return r0;
}

// FUN_002ac3d8
u32 W_2ac3d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008bfa88;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2ac400;
    fa = r0; fb = 8u;
    if (fa >= fb) goto L_2ac400;
    r0 = r1 + (r0 << 1);
    r0 = r0 + 768u;
    r0 = *(u16*)(r0 + 46);
    return r0;
    L_2ac400:;
    r0 = 0u;
    return r0;
}

// FUN_002ac538
void W_2ac538(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008bfa88;
    r2 = *(u32*)(r2);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2ac55c;
    fa = r0; fb = 8u;
    if (fa >= fb) goto L_2ac55c;
    r0 = r2 + (r0 << 1);
    r0 = r0 + 768u;
    *(u16*)(r0 + 46) = r1;
    L_2ac55c:;
    return;
}
