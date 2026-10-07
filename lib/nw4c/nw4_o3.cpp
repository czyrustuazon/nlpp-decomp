// NintendoWare for CTR functions placed between NW functions and NW-only inline-zone functions (tools/nw_classify.py layout/zone tiers, technical.md section 5 gap 3), matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_009a141c[];
extern char g_008b8530[];
extern char g_009b0c70[];
extern char g_009b1ccc[];
extern char g_009b0c7c[];
extern char g_009b99cc[];
extern char g_009b0ccc[];
extern char g_009b22d0[];
extern char g_0082c3bc[];
extern char g_008ab8e0[];
extern char g_0082c570[];
extern char g_0082c68c[];
extern char g_008ab268[];
extern char g_0082c88c[];
extern char g_0082ca98[];
extern char g_0082cb0c[];
extern char g_0082cbc8[];
extern char g_0082cbfc[];
u32 Fn_569db4_1(u32);
u32 Fn_559a30_2(u32, u32);
extern char g_0082cc90[];
extern char g_0082cca4[];
extern char g_0082cecc[];
extern char g_0082cf90[];
extern char g_0082cfb4[];
extern char g_0065c880[];
extern char g_0065c8a0[];
extern char g_0065c8bc[];
extern char g_0065c91c[];
extern char g_0065c920[];
extern char g_009df8d8[];
extern char g_008ab4f8[];
extern char g_0082d1ec[];
extern char g_0069d4a0[];
extern char g_0082d260[];
u32 Fn_684f28_1(u32);
u32 Fn_684f64_1(u32);
u32 Fn_5577c0_1(u32);
u32 Fn_513298_1(u32);
u32 Fn_55d7d8_4(u32, u32, u32, u32);
u32 Fn_0000ac_1(u32);
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_567ae0_3(u32, u32, u32);
extern char g_008a88e0[];
extern char g_008a88d8[];
extern char g_008ab298[];
extern char g_008ab320[];
extern char g_008ab2b0[];
extern char g_008b8618[];
extern char g_008a88d4[];
extern char g_008a88dc[];
extern char g_008bb6f0[];
extern char g_008bb724[];
extern char g_008bb4f8[];
extern char g_008bb74c[];
extern char g_007e9404[];
extern char g_008a833c[];
extern char g_008a88bc[];
extern char g_0089a341[];
extern char g_0089a344[];
extern char g_0089a417[];
u32 Fn_633e0c_1(u32);
extern char g_00824560[];
extern char g_0052a1ac[];
extern char g_00824a20[];
extern char g_00824f70[];
extern char g_008a5788[];
extern char g_008a5624[];
extern char g_008bfaac[];
extern char g_008a706c[];
extern char g_008bfa40[];
extern char g_008dabe4[];
extern char g_006ad804[];
extern char g_00827144[];
extern char g_00589bb0[];
extern char g_0058b2a8[];
extern char g_00592e14[];
extern char g_005a87e4[];
extern char g_008ab9e8[];
extern char g_007ebcb0[];
extern char g_007ebcbc[];
u32 Fn_65f090_2(u32, u32);
u32 Fn_660338_4(u32, u32, u32, u32);
u32 Fn_661d50_2(u32, u32);
extern char g_007ebe5c[];
extern char g_008b8664[];
extern char g_008b86ac[];
extern char g_009b3b74[];
extern char g_008b867c[];
extern char g_009b3b5e[];
extern char g_008b8680[];
extern char g_009b3b48[];
extern char g_0012a080[];
extern char g_006a0d1c[];
extern char g_0082da24[];
extern char g_008a8894[];
extern char g_0089a330[];
extern char g_0082e938[];
extern char g_008bfa54[];
extern char g_008bb5b8[];
extern char g_009d7ab8[];
extern char g_009d7ac8[];
extern char g_009d7ad8[];
u32 Fn_5574e4_3(u32, u32, u32);
extern char g_008aabb0[];
extern char g_0082bfc4[];
extern char g_008bb658[];
extern char g_009df8ac[];
extern char g_008aae48[];
extern char g_0082c37c[];
extern char g_0082c3d4[];
extern char g_008aab68[];
extern char g_00202bf8[];
extern char g_008ab948[];
extern char g_009ae8e0[];
extern char g_008aac08[];
extern char g_009a108c[];
extern char g_008b7cc8[];
extern char g_0082c594[];
u32 Fn_542230_3(u32, u32, u32);
extern char g_0082ca0c[];
extern char g_008bb4fc[];
extern char g_0082ca60[];
extern char g_0082ce4c[];
extern char g_009e0124[];
u32 Fn_5421f4_2(u32, u32);
u32 Fn_54e5ac_1(u32);
u32 Fn_0244c8_1(u32);
u32 Fn_024568_1(u32);
u32 Fn_55bca4_1(u32);
u32 Fn_55bd7c_2(u32, u32);
u32 Fn_55bfe4_2(u32, u32);
u32 Fn_5667ec_1(u32);
extern char g_008bfabc[];
extern char g_0079ee14[];
extern char g_0079ef0c[];
extern char g_0079ef84[];
extern char g_0079f184[];
extern char g_0079f1bc[];
extern char g_0082d370[];
extern char g_0082d3d0[];
extern char g_008b86a0[];
extern char g_008bb5ac[];
extern char g_0082d57c[];
extern char g_0082d58c[];
extern char g_0082d5ac[];
extern char g_008ab49c[];
extern char g_009a3d8c[];
extern char g_008ab4c4[];
extern char g_009a4970[];
extern char g_009a4798[];
extern char g_009a420c[];
u32 Fn_63b5d8_2(u32, u32);
u32 Fn_637c48_2(u32, u32);
u32 Fn_637e70_1(u32);
u32 Fn_638358_1(u32);
extern char g_008a75dc[];
extern char g_008273bc[];
extern char g_008db430[];
extern char g_008277e8[];
extern char g_00827938[];
extern char g_007d5314[];
extern char g_007d502c[];
extern char g_00827a30[];
extern char g_007dae24[];
extern char g_007dad7c[];
extern char g_007eb670[];
extern char g_008b8778[];
extern char g_007eb677[];
extern char g_008b877c[];
extern char g_008ab9ec[];
extern char g_009a0f74[];
extern char g_0082c13c[];
extern char g_007ebc5c[];
extern char g_007ebd54[];
u32 Fn_665970_3(u32, u32, u32);
extern char g_0082cad4[];
extern char g_007ffc84[];
extern char g_0082cd54[];
extern char g_00804b04[];
extern char g_0082d478[];
extern char g_0082d4e8[];
extern char g_008bfa10[];
extern char g_008bb588[];
extern char g_0082d8d0[];
extern char g_0082d82c[];
extern char g_009a5200[];
extern char g_0082d8b8[];
extern char g_009a3dcc[];
u32 Fn_550954_0();
u32 Fn_55c7fc_3(u32, u32, u32);
u32 Fn_5176a0_2(u32, u32);
u32 Fn_516a88_1(u32);
u32 Fn_565dbc_2(u32, u32);
u32 Fn_514390_3(u32, u32, u32);
u32 Fn_561a94_2(u32, u32);
extern char g_0082dae4[];
extern char g_0082df14[];
extern char g_008a8860[];
extern char g_007be1e4[];
extern char g_007e39cc[];
extern char g_007e3abc[];
extern char g_007e3b78[];
extern char g_007e3ac0[];
extern char g_0082ee38[];
extern char g_008bfa48[];
extern char g_0082ef70[];
extern char g_0082f0a0[];
extern char g_0082fc18[];
extern char g_007ccb6c[];
extern char g_0079e410[];
u32 Fn_637be8_4(u32, u32, u32, u32);
extern char g_0081cecc[];
extern char g_0082d5cc[];
extern char g_0082d5dc[];
extern char g_0082d5ec[];
extern char g_008ab848[];
extern char g_008bfa44[];
extern char g_0079ec00[];
extern char g_0079eb38[];
extern char g_0089a384[];
extern char g_00823b28[];
extern char g_00890d18[];
extern char g_008ab280[];
u32 Fn_542324_2(u32, u32);
u32 Fn_5423c8_2(u32, u32);
u32 Fn_566810_1(u32);
extern char g_008aab30[];
extern char g_0082c6b0[];
extern char g_009a42a8[];
u32 WeakCall2(u32, u32);
u32 WeakCall1(u32);
extern char g_009dfe08[];
u32 Fn_556abc_1(u32);
u32 Fn_556c04_1(u32);
u32 Fn_557434_1(u32);
u32 Fn_55c048_1(u32);
u32 Fn_55c0a4_1(u32);
u32 Fn_55e338_1(u32);
u32 Fn_55e9b4_1(u32);
u32 Fn_55ea24_1(u32);
u32 Fn_55ea50_1(u32);
u32 Fn_561354_1(u32);
u32 Fn_5614f4_1(u32);
u32 Fn_561ec4_1(u32);
u32 Fn_562bd4_1(u32);
u32 Fn_562e60_1(u32);
u32 Fn_684f18_1(u32);
extern char g_008aae58[];
u32 Fn_55c9a8_0();
extern char g_008aab98[];
extern char g_0082c328[];
extern char g_0082df04[];
extern char g_00671894[];
extern char g_0069cad4[];
extern char g_007e3f0c[];
extern char g_008bb520[];
extern char g_008bb528[];
extern char g_008ab420[];
extern char g_0082d9b4[];
extern char g_0082d9d4[];
extern char g_006b2bac[];
extern char g_0082de88[];
extern char g_008a834c[];
extern char g_008e0228[];
extern char g_008e0238[];
extern char g_008bfadc[];
extern char g_00550023[];
extern char g_008bfb40[];
extern char g_009b74b8[];
extern char g_008b8724[];
extern char g_008b872c[];
extern char g_008b8730[];
extern char g_008b8734[];
extern char g_008b8738[];
extern char g_008b8740[];
extern char g_008bfa50[];
extern char g_008bfa60[];
extern char g_008bfa64[];
extern char g_008bfbbc[];
extern char g_009a35d8[];
extern char g_00115600[];
extern char g_008b86d0[];
extern char g_007bcf24[];
extern char g_008bfac0[];
extern char g_0080af8c[];
extern char g_0080b5d8[];
extern char g_007c732c[];
extern char g_008a8348[];
extern char g_003aa718[];
extern char g_007cce12[];
extern char g_007ab854[];
extern char g_008bfa7c[];
extern char g_007c3672[];
extern char g_00823154[];
extern char g_00823b08[];
extern char g_00823ba4[];
extern char g_008bfa34[];
extern char g_008bfa3c[];
extern char g_008bfa2c[];
extern char g_00825a14[];
extern char g_00825a48[];
extern char g_00825ab0[];
extern char g_008d6b7c[];
extern char g_008a78ac[];
extern char g_009b74c8[];
extern char g_008bb5e0[];
extern char g_009dd034[];
extern char g_008aab50[];
u32 Fn_5613e8_2(u32, u32);
u32 Fn_562bd4_2(u32, u32);
u32 Fn_562d24_2(u32, u32);
extern char g_0082dab8[];
extern char g_00989680[];
extern char g_008bb610[];
extern char g_008ab81c[];
extern char g_008ab844[];
u32 Fn_55736c_1(u32);
u32 Fn_5576b8_1(u32);
u32 Fn_55bf1c_1(u32);
u32 Fn_0282dc_2(u32, u32);
u32 Fn_6467bc_2(u32, u32);
u32 Fn_648efc_2(u32, u32);
u32 Fn_65b8dc_2(u32, u32);
u32 Fn_678268_1(u32);
extern char g_008a6196[];
extern char g_008121e8[];
extern char g_007c7048[];
extern char g_00804a54[];
u32 Fn_544c68_3(u32, u32, u32);
extern char g_0089a430[];

// FUN_005421ec
void W_5421ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4u;
    { WeakCall1(r0); return; }
}

// FUN_005422e0
void W_5422e0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 12) = 0;
}

// FUN_005426f8
void W_5426f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 16);
    { WeakCall1(r0); return; }
}

// FUN_00543a9c
u32 W_543a9c(u32 a0) {
    u32 t1 = Fn_661d50_2(2, (a0 + 404));
    u32 t2 = *(u32*)((u32)(a0) + 404);
    u32 t3 = Fn_65f090_2(34963u, t2);
    u32 t4 = Fn_660338_4(34963u, 12, (u32)g_007ebcb0, (34963u + 81));
    u32 t5 = Fn_65f090_2(34963u, 0);
    u32 t6 = *(u32*)((u32)(a0) + 408);
    u32 t7 = Fn_65f090_2(((34963u + 81) - 82), t6);
    u32 t8 = Fn_660338_4(((34963u + 81) - 82), 16, (u32)g_007ebcbc, (34963u + 81));
    return Fn_65f090_2(((34963u + 81) - 82), 0);
}

// FUN_00543d80
void W_543d80(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082c570;
}

// FUN_00545594
void W_545594(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r2;
    r1 = r1 + 4u;
    r0 = r0 + 16u;
    r2 = r2 + 4u;
    r0 = Fn_542230_3(r0, r1, r2);
    *(u32*)(r4 + 12) = r5;
    return;
}

// FUN_005455b8
void W_5455b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r0 = r0 + 16u;
    r1 = r1 + 4u;
    r0 = Fn_5421f4_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 12) = r0;
    return;
}

// FUN_005481ac
void W_5481ac(u32 a0) {
    u32 t1 = Fn_569db4_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082c68c;
}

// FUN_0054851c
void W_54851c(u32 a0) {
    *(u32*)((u32)((u32)g_008ab268)) = a0;
}

// FUN_00548d44
void W_548d44(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r1 = (u32)g_0082c6b0;
    r2 = 0u;
    r3 = r0 + 8u;
    *(u32*)(r0) = r1;
    r1 = r0 + 4u;
    f0 = 0.0f;
    *(u32*)(r1) = r2; *(u32*)(r1 + 4) = r3;
    *(u32*)(r0 + 16) = r2;
    *(u32*)(r0 + 12) = r3;
    *(u32*)(r0 + 20) = r2;
    *(float*)(r0 + 24) = f0;
    *(float*)(r0 + 28) = f0;
    return;
}

// FUN_0054a02c
u32 W_54a02c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = r0;
    r5 = *(u32*)(r0 + 4);
    r4 = r2;
    r0 = Fn_544c68_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) goto L_54a058;
    r0 = r0 + (r0 << 1);
    r1 = *(u32*)(r5 + (r0 << 2));
    fx = r1 & 4278190080u;
    if (fx == 0) goto L_54a060;
    L_54a058:;
    r0 = 0u;
    return r0;
    L_54a060:;
    r0 = r5 + (r0 << 2);
    *(u32*)(r4) = r6;
    r1 = *(u32*)(r0 + 4);
    *(u32*)(r4 + 4) = r1;
    r0 = *(u32*)(r0 + 8);
    *(u32*)(r4 + 8) = r0;
    r0 = 1u;
    return r0;
}

// FUN_0054a080
void W_54a080(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = r0 + 336u;
    r0 = Fn_54e5ac_1(r0);
    r0 = *(u32*)(r4 + 316);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54a0a8;
    r1 = *(u8*)(r0 + 77);
    r1 = r1 & 251u;
    *(u8*)(r0 + 77) = r1;
    L_54a0a8:;
    return;
}

// FUN_0054ec40
void W_54ec40(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_007ebd54;
    r0 = *(u32*)(r0 + 724);
    r1 = *(u32*)(r2 + (r1 << 2));
    { Fn_665970_3(r0, r1, r2); return; }
}

// FUN_00550154
u32 W_550154() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb4fc;
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_00550164
u32 W_550164(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 12);
    r1 = *(u32*)(r4 + 24);
    r0 = r0 + r1;
    r1 = *(u32*)(r4 + 20);
    r7 = r0 + r1;
    r0 = Fn_562bd4_2(r0, r1);
    r5 = (u32)g_008bb4fc;
    r1 = *(u32*)(r5 + 4);
    r0 = Fn_562d24_2(r0, r1);
    r6 = r0;
    r0 = Fn_561354_1(r0);
    r1 = *(u32*)(r5 + 4);
    r0 = Fn_5613e8_2(r0, r1);
    r1 = *(u8*)(r4 + 28);
    r0 = r0 + r6;
    r0 = r0 + r7;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r4 + 8);
    if (fa == fb) r0 = r0 + r1;
    r1 = *(u32*)(r4 + 4);
    fa = r1; fb = 1u;
    if (fa != fb) goto L_5501d4;
    r1 = *(u8*)(r4 + 30);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r4 + 8);
    if (fa != fb) r0 = r0 + r1;
    L_5501d4:;
    r1 = *(u8*)(r4 + 29);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r4 + 32);
    if (fa != fb) { fa = r1; fb = 0u; }
    if ((int)fa > (int)fb) r0 = r0 + (r1 << 3);
    if ((int)fa <= (int)fb) goto L_5501ec;
    L_5501ec:;
    return r0;
}

// FUN_00550248
void W_550248() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bb4fc;
    r0 = *(u8*)(r4 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5502c8;
    r0 = Fn_557434_1(r0);
    r0 = WeakCall1(r0);
    r0 = Fn_556abc_1(r0);
    r0 = Fn_556c04_1(r0);
    r0 = Fn_557434_1(r0);
    r0 = Fn_684f18_1(r0);
    r0 = Fn_55e338_1(r0);
    r0 = Fn_55ea24_1(r0);
    r0 = Fn_55e338_1(r0);
    r0 = Fn_55e9b4_1(r0);
    r0 = Fn_561354_1(r0);
    r0 = Fn_5614f4_1(r0);
    r0 = Fn_562bd4_1(r0);
    r0 = Fn_562e60_1(r0);
    r0 = (u32)g_009dfe08;
    r0 = Fn_561ec4_1(r0);
    r0 = r4 + 8u;
    r0 = Fn_5577c0_1(r0);
    r0 = Fn_55e338_1(r0);
    r0 = Fn_55ea50_1(r0);
    r0 = Fn_55bca4_1(r0);
    r0 = Fn_55c0a4_1(r0);
    r0 = Fn_55c048_1(r0);
    r0 = Fn_55c0a4_1(r0);
    r0 = 0u;
    *(u8*)(r4 + 2) = r0;
    *(u8*)(r4 + 1) = r0;
    L_5502c8:;
    return;
}

// FUN_00551050
void W_551050(u32 a0) {
    u32 t1 = Fn_559a30_2(a0, 0);
    *(u32*)((u32)(t1)) = (u32)g_0082cb0c;
}

// FUN_00551ce4
u32 W_551ce4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_550954_0();
    r2 = (u32)g_0082cbc8;
    r1 = 0u;
    *(u32*)(r0) = r2; r0 = r0 + 284u;
    *(u32*)(r0) = r1; r0 = r0 + 4u;
    r0 = Fn_55c7fc_3(r0, r1, r2);
    r0 = r0 - 288u;
    return r0;
}

// FUN_005545ac
void W_5545ac(u32 a0) {
    *(u32*)((u32)(a0) + 28) = 0;
}

// FUN_005545b8
u32 W_5545b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r0_3, r0_4, r0_5;
    r1_1 = *(u32*)(r0 + 68);
    r0_1 = *(u8*)(r0 + 93);
    r0_2 = r1_1 * r0_1;
    r0_3 = r0_2 + (r0_2 << 2);
    r0_4 = r0_3 << 7;
    r0_5 = r0_4 + 32u;
    return r0_5;
}

// FUN_00554e40
void W_554e40(u32 a0) {
    *(u32*)((u32)(a0) + 48) = 0;
}

// FUN_00555704
void W_555704(u32 a0) {
    *(u8*)((u32)(a0) + 133) = 1;
}

// FUN_00556900
u32 W_556900(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r2 + r1;
    r1 = r1 + 31u;
    r1 = r1 & ~31u;
    fa = r1; fb = r2;
    if (fa > fb) r0 = 0u;
    if (fa > fb) goto L_556928;
    r3 = r0 + 12u;
    *(u32*)(r3 + 0) = r1; *(u32*)(r3 + 4) = r2;
    *(u32*)(r0 + 20) = r1;
    r0 = 1u;
    L_556928:;
    return r0;
}

// FUN_0055692c
void W_55692c(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = (u32)g_0082cc90;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u32*)((u32)(a0) + 24) = 0;
    *(u32*)((u32)(a0) + 28) = 0;
}

// FUN_00556a30
void W_556a30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u8*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_556ab8;
    L_556a44:;
    r0 = Fn_557434_1(r0);
    r0 = Fn_5576b8_1(r0);
    r0 = *(u8*)(r4 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_556ab8;
    r5 = r4 + 8u;
    r0 = r5;
    r0 = Fn_0244c8_1(r0);
    r0 = Fn_557434_1(r0);
    r0 = Fn_55736c_1(r0);
    r0 = r5;
    r0 = Fn_024568_1(r0);
    r0 = Fn_55c048_1(r0);
    r0 = Fn_55bf1c_1(r0);
    r0 = *(u8*)(r4 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_556a44;
    L_556ab8:;
    return;
}

// FUN_00557544
u32 W_557544(u32 a0) {
    u32 t1 = Fn_5574e4_3(a0, 2, 0);
    if (t1 == 0) {
        u32 t2 = Fn_5574e4_3(a0, 1, 0);
        if (t2 == 0) {
            return Fn_5574e4_3(a0, 0, 0);
        }
    }
}

// FUN_005577a4
u32 W_5577a4(u32 a0) {
    u32 t1 = Fn_684f28_1(a0);
    u32 t2 = Fn_684f64_1(a0);
    return (t2 - 56);
}

// FUN_005577c0
void W_5577c0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_005577d0
u32 W_5577d0(u32 a0) {
    u32 t1 = Fn_5577c0_1(a0);
    return a0;
}

// FUN_0055b780
void W_55b780(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082ce4c;
    r1 = 0u;
    r3 = 520u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    *(u16*)(r3 + r0) = r1;
    *(u8*)(r0 + 522) = r1;
    return;
}

// FUN_0055c0a4
void W_55c0a4(u32 a0) {
    u32 t1 = Fn_684f28_1(a0);
    u32 t2 = Fn_684f28_1((a0 + 180));
    *(u8*)((u32)(a0) + 397) = 0;
}

// FUN_0055c7d0
void W_55c7d0(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 60) = (a1 + 8);
}

// FUN_0055c7dc
void W_55c7dc(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 56) = (a1 + 8);
}

// FUN_0055c7fc
void W_55c7fc(u32 a0) {
    *(u32*)((u32)(a0) + 56) = 0;
    *(u32*)((u32)(a0) + 60) = 0;
    *(u32*)((u32)(a0) + 64) = 0;
}

// FUN_0055c880
float W_55c880() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    float f0, f1, f0_1, f1_1, f0_2, f0_3, ffa, ffb;
    r0_1 = Fn_55c9a8_0();
    f0_1 = u2f(r0_1);
    f1_1 = 1.52590219e-05f;
    f0_2 = (float)(u32)f2u(f0_1);
    f0_3 = f0_2 * f1_1;
    return f0_3;
}

// FUN_0055d214
void W_55d214(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 56);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55d234;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 56) = f0;
    r1 = r1 | 16u;
    *(u16*)(r0 + 32) = r1;
    L_55d234:;
    return;
}

// FUN_0055d74c
void W_55d74c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 52);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55d76c;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 52) = f0;
    r1 = r1 | 8u;
    *(u16*)(r0 + 32) = r1;
    L_55d76c:;
    return;
}

// FUN_0055d900
void W_55d900(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 8);
    r6 = r1;
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55d93c;
    L_55d91c:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_5176a0_2(r0, r1);
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55d91c;
    L_55d93c:;
    return;
}

// FUN_0055df60
void W_55df60(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 48);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55df80;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 48) = f0;
    r1 = r1 | 8u;
    *(u16*)(r0 + 32) = r1;
    L_55df80:;
    return;
}

// FUN_0055e23c
void W_55e23c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = *(float*)(r0 + 40);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55e25c;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 40) = f0;
    r1 = r1 | 4u;
    *(u16*)(r0 + 32) = r1;
    L_55e25c:;
    return;
}

// FUN_0055e260
void W_55e260(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    r1 = r0 + (r1 << 2);
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    f1 = *(float*)(r1 + 72);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55e294;
    *(float*)(r1 + 72) = f0;
    r1 = *(u16*)(r0 + 32);
    r1 = r1 | 8u;
    *(u16*)(r0 + 32) = r1;
    L_55e294:;
    return;
}

// FUN_0055e29c
void W_55e29c(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    f1 = *(float*)(r0 + 36);
    ffa = f1; ffb = f0;
    if (ffa == ffb) goto L_55e2cc;
    r1 = *(u16*)(r0 + 32);
    *(float*)(r0 + 36) = f0;
    r1 = r1 | 64u;
    *(u16*)(r0 + 32) = r1;
    L_55e2cc:;
    return;
}

// FUN_0055e2d4
void W_55e2d4(u32 a0) {
    *(u32*)((u32)(a0) + 12) = 0;
    *(u8*)((u32)(a0) + 20) = 0;
    *(u8*)((u32)(a0) + 21) = 0;
    *(u8*)((u32)(a0) + 22) = 0;
    *(u8*)((u32)(a0) + 23) = 0;
    *(u16*)((u32)(a0) + 32) = 0;
    *(u32*)((u32)(a0) + 88) = 0;
    *(u32*)((u32)(a0) + 92) = 0;
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_0055e304
u32 W_55e304(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = 0u;
    L_55e310:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_516a88_1(r0);
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if ((int)fa < (int)fb) goto L_55e310;
    r0 = r5;
    return r0;
}

// FUN_0055ea24
void W_55ea24(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 500);
    if (t1 != 0) {
        *(u8*)((u32)(a0) + 503) = 1;
        u32 t2 = Fn_513298_1(1);
        *(u8*)((u32)(a0) + 500) = 0;
    }
}

// FUN_005603a4
void W_5603a4(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 260) = f0;
    return;
}

// FUN_005603ac
void W_5603ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u32*)(r0 + 28) = r1;
    r1 = r1 + r2;
    *(u32*)(r0 + 32) = r1;
    return;
}

// FUN_00560450
void W_560450(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 24) = f0;
    return;
}

// FUN_00560458
void W_560458(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 131) = a1;
}

// FUN_00560460
void W_560460(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 244) = a1;
}

// FUN_005605cc
u32 W_5605cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 16u;
    if ((int)fa < (int)fb) r0 = r0 + (r1 << 1);
    if ((int)fa < (int)fb) r0 = r0 + 268u;
    if ((int)fa >= (int)fb) r0 = 0u;
    return r0;
}

// FUN_005605e0
void W_5605e0(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 20) = f0;
    return;
}

// FUN_0056063c
void W_56063c(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 264) = f0;
    *(u8*)(r0 + 254) = r1;
    return;
}

// FUN_00560648
void W_560648(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 1);
    r0 = r0 + 256u;
    *(u16*)(r0 + 12) = r2;
    return;
}

// FUN_00560658
void W_560658(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 240) = a1;
}

// FUN_00560b44
void W_560b44(u32 a0) {
    *(u8*)((u32)(a0) + 128) = 0;
    *(u8*)((u32)(a0) + 120) = 0;
    *(u32*)((u32)(a0) + 124) = 0;
    *(u8*)((u32)(a0) + 5) = 1;
}

// FUN_00560ee4
void W_560ee4(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 16) = f0;
    return;
}

// FUN_00560fb0
void W_560fb0(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 12) = f0;
    return;
}

// FUN_00561130
void W_561130(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 8) = f0;
    return;
}

// FUN_005612d0
u32 W_5612d0(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u32*)((u32)(a0) + 48);
    if (t1 != 0) {
        return Fn_55d7d8_4(t1, 0, a1, a2);
    }
}

// FUN_00561300
u32 W_561300(u32 a0) {
    u32 t1 = Fn_0000ac_1(a0);
    return (t1 - 52);
}

// FUN_005613b0
void W_5613b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = r0 + 8u; r4 = *(u32*)(r0);
    fa = r4; fb = r0;
    if (fa == fb) goto L_5613e4;
    L_5613c4:;
    r0 = r4;
    r4 = *(u32*)(r4);
    r0 = r0 - 424u;
    r1 = 1u;
    r0 = Fn_565dbc_2(r0, r1);
    r0 = r5 + 8u;
    fa = r4; fb = r0;
    if (fa != fb) goto L_5613c4;
    L_5613e4:;
    return;
}

// FUN_005613e8
u32 W_5613e8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r1_1, r0_2;
    return ((r1 + 1u) * 432u);
}

// FUN_00561ec4
void W_561ec4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = r0;
    r0 = *(u8*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r7 = r4;
    if (fa == fb) goto L_561f18;
    L_561ee0:;
    r1 = r4 & 255u;
    r0 = r6;
    r0 = Fn_561a94_2(r0, r1);
    r5 = r6 + (r4 << 2);
    r0 = (u32)(signed char)r4;
    r1 = *(u32*)(r5 + 108);
    r2 = *(u32*)(r5 + 628);
    r0 = Fn_514390_3(r0, r1, r2);
    r4 = r4 + 1u;
    *(u32*)(r5 + 108) = r7;
    fa = r4; fb = 2u;
    *(u32*)(r5 + 628) = r7;
    if ((int)fa < (int)fb) goto L_561ee0;
    *(u8*)(r6) = r7;
    L_561f18:;
    return;
}

// FUN_005627ac
void W_5627ac(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 40) = f0;
    *(u8*)(r0 + 44) = r1;
    return;
}

// FUN_00562838
void W_562838(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    float f0 = p0, ffa, ffb;
    r0_1 = r0 + (r1 << 2);
    *(float*)(r0_1 + 56) = f0;
    return;
}

// FUN_00562a50
void W_562a50(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
}

// FUN_00562d24
u32 W_562d24(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 + (r1 << 1);
    r0 = r0 << 5;
    return r0;
}

// FUN_00564bd0
u32 W_564bd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 16u;
    if ((int)fa < (int)fb) r0 = r0 + (r1 << 1);
    if ((int)fa < (int)fb) r0 = r0 + 208u;
    if ((int)fa < (int)fb) goto L_564bf4;
    fa = r1; fb = 32u;
    if ((int)fa < (int)fb) r0 = (u32)g_009e0124;
    if ((int)fa < (int)fb) r0 = r0 + (r1 << 1);
    if ((int)fa < (int)fb) r0 = r0 - 32u;
    if ((int)fa >= (int)fb) r0 = 0u;
    L_564bf4:;
    return r0;
}

// FUN_0056502c
void W_56502c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 136u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_005665a8
void W_5665a8() {
    u32 t1 = Fn_1fddd8_2((u32)g_009df8d8, 512);
    *(u32*)((u32)((u32)g_009df8d8)) = (u32)g_0065c920;
    *(u32*)((u32)((u32)g_009df8d8) + 4) = (u32)g_0065c8bc;
    *(u32*)((u32)((u32)g_009df8d8) + 8) = (u32)g_0065c91c;
    *(u32*)((u32)((u32)g_009df8d8) + 12) = (u32)g_0065c8a0;
    *(u32*)((u32)((u32)g_009df8d8) + 16) = (u32)g_0065c880;
}

// FUN_00566788
void W_566788(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8u;
    { WeakCall1(r0); return; }
}

// FUN_00566c40
u32 W_566c40(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r4); r1 = *(u32*)(r4 + 4);
    r0 = Fn_5423c8_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_566c84;
    r0 = r4;
    r0 = Fn_566810_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 4);
    if (fa != fb) r0 = r0 - 1u;
    if (fa != fb) goto L_566c84;
    r0 = *(u32*)(r4);
    r1 = 0u;
    r0 = Fn_542324_2(r0, r1);
    r0 = ~0u;
    L_566c84:;
    return r0;
}

// FUN_00567494
void W_567494(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5674e4;
    r5 = r4 + 4u;
    r0 = r5;
    r0 = Fn_0244c8_1(r0);
    r0 = r4 + 16u;
    r0 = Fn_5667ec_1(r0);
    r0 = r5;
    r0 = Fn_024568_1(r0);
    r0 = Fn_55bca4_1(r0);
    r4 = r0;
    r1 = 1u;
    r0 = Fn_55bd7c_2(r0, r1);
    r1 = r0;
    r0 = r4;
    { Fn_55bfe4_2(r0, r1); return; }
    L_5674e4:;
    return;
}

// FUN_0056799c
void W_56799c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    *(u16*)((u32)(t1) + 4) = 0;
    u32 t2 = *(u32*)((u32)(a0) + 68);
    *(u8*)((u32)(t2) + 8) = 0;
    *(u32*)((u32)(t2) + 28) = 0;
}

// FUN_00567ac0
void W_567ac0(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)((u32)g_008ab4f8));
    u32 t2 = Fn_567ae0_3(a0, t1, a1);
    *(u32*)((u32)((u32)g_008ab4f8)) = t2;
}

// FUN_00569bd4
u32 W_569bd4() {
    u32 t1 = *(u32*)((u32)((u32)g_008ab4f8));
    return t1;
}

// FUN_0056aa7c
void W_56aa7c(u32 a0) {
    *(u8*)((u32)(a0) + 18) = 0;
}

// FUN_0056af8c
u32 W_56af8c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0 + 8u;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56afd4;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    r0 = *(u32*)(r4);
    if (r1 != 0) goto L_56afd4;
    r1 = *(u32*)(r4 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_56afd4;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56afd4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_56afd4:;
    r4 = r4 + 4294967288u; r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56b014;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    r0 = *(u32*)(r4);
    if (r1 != 0) goto L_56b014;
    r1 = *(u32*)(r4 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_56b014;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56b014;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_56b014:;
    r0 = r4;
    return r0;
}

// FUN_00634270
u32 W_634270() {

    return (u32)g_008a88e0;
}

// FUN_00634710
void W_634710(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0) = r1;
    return;
}

// FUN_006347b8
u32 W_6347b8() {

    return (u32)g_008ab298;
}

// FUN_00634d54
void W_634d54(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r2 << 2);
    r1 = *(u32*)(r1 + 328);
    *(u32*)(r0) = r1;
    return;
}

// FUN_00634eb8
u32 W_634eb8() {

    return (u32)g_008ab320;
}

// FUN_00635d54
u32 W_635d54() {

    return (u32)g_008ab2b0;
}

// FUN_00636d1c
void W_636d1c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    { WeakCall1(r0); return; }
}

// FUN_006370c0
u32 W_6370c0() {

    return (u32)g_008bb6f0;
}

// FUN_00637134
u32 W_637134() {

    return (u32)g_008bb724;
}

// FUN_00637180
u32 W_637180(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 1280u;
    r0 = *(signed char*)(r0 + 106);
    return r0;
}

// FUN_0063718c
u32 W_63718c() {

    return (u32)g_008bb4f8;
}

// FUN_00637204
u32 W_637204(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    r0 = r0 + r1;
    return r0;
}

// FUN_00637634
u32 W_637634(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 8);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_63764c;
    r0 = *(u32*)(r0 + 4);
    return Fn_63b5d8_2(r0, r1);
    L_63764c:;
    return r0;
}

// FUN_00637be8
u32 W_637be8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 26625u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r1 = r0 + 20u;
    if (fa == fb) goto L_637c0c;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r1 = r0 + 32u;
    if (fa != fb) r1 = 0u;
    L_637c0c:;
    r1 = *(u32*)(r1 + 4);
    r0 = r0 + r1;
    return r0;
}

// FUN_00637c48
u32 W_637c48(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 26625u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637c6c;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 32u;
    if (fa != fb) r0 = 0u;
    L_637c6c:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637d3c
u32 W_637d3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 8194u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637d70;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637d70;
    r2 = *(u16*)(r0 + 44);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637d70:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637d7c
u32 W_637d7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 8193u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637db0;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637db0;
    r2 = *(u16*)(r0 + 44);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637db0:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00637df4
u32 W_637df4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u16*)(r0 + 20);
    fa = r1; fb = 8192u;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637e24;
    r1 = *(u16*)(r0 + 32);
    fa = r1; fb = 8192u;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637e24;
    r1 = *(u16*)(r0 + 44);
    fa = r1; fb = 8192u;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637e24:;
    r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_006383e8
u32 W_6383e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 36);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638400
u32 W_638400(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 12);
    r0 = r0 + r1;
    return r0;
}

// FUN_006389f0
u32 W_6389f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638a30
u32 W_638a30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 16);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638d2c
u32 W_638d2c() {

    return 0;
}

// FUN_0063930c
u32 W_63930c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u8*)(r0 + 12);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_639328;
    r2 = *(u32*)(r0 + 4);
    r3 = *(u32*)(r2);
    fa = r3; fb = r1;
    if (fa > fb) goto L_639330;
    L_639328:;
    r0 = 0u;
    return r0;
    L_639330:;
    r3 = *(u32*)(r0 + 8);
    fa = r3; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r3 + (r1 << 2));
    if (fa != fb) return r0;
    r1 = r1 + (r1 << 1);
    r1 = r2 + (r1 << 2);
    r0 = *(u32*)(r0);
    r4 = *(u32*)(r1 + 8);
    r0 = Fn_637be8_4(r0, r1, r2, r3);
    r0 = r0 + 8u;
    r0 = r0 + r4;
    return r0;
}

// FUN_0063938c
u32 W_63938c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_6393bc;
    r4 = *(u32*)(r0);
    r0 = r4;
    r0 = Fn_637c48_2(r0, r1);
    r1 = 1413568323u;
    r0 = *(u32*)(r4 + r0);
    fa = r0; fb = r1;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_6393c0;
    L_6393bc:;
    r0 = 0u;
    L_6393c0:;
    return r0;
}

// FUN_00639490
u32 W_639490(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 60);
    r4 = r2;
    r0 = Fn_637e70_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6394b4;
    r0 = *(u32*)(r0);
    *(u32*)(r4) = r0;
    r0 = 1u;
    L_6394b4:;
    return r0;
}

// FUN_0063977c
u32 W_63977c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 60);
    r4 = r2;
    r0 = Fn_638358_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_6397b4;
    r1 = *(u32*)(r0);
    *(u32*)(r4) = r1;
    r1 = *(u32*)(r0 + 4);
    *(u32*)(r4 + 4) = r1;
    r1 = *(u32*)(r0 + 12);
    r0 = r0 + r1;
    *(u32*)(r4 + 8) = r0;
    r0 = 1u;
    L_6397b4:;
    return r0;
}

// FUN_00639d9c
u32 W_639d9c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0));
    if (t1 != 0) {
        return Fn_633e0c_1(t1);
    }
}

// FUN_00639db0
u32 W_639db0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_639dcc;
    r0 = *(u8*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_639dcc:;
    return r0;
}

// FUN_00639e20
float W_639e20(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    float f0, f0_1, ffa, ffb;
    r0_1 = r0 + (r1 << 2);
    f0_1 = *(float*)(r0_1 + 56);
    return f0_1;
}

// FUN_0063b5d8
u32 W_63b5d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    r0 = r0 + r1;
    return r0;
}

// FUN_0063bb88
u32 W_63bb88() {

    return (u32)g_008bb74c;
}

// FUN_0065ba64
void W_65ba64() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab81c;
    r4 = *(u32*)(r0);
    r0 = *(u32*)(r4 + 4);
    fx = r0 & 8192u;
    if (fx != 0) r0 = Fn_678268_1(r0);
    r5 = (u32)g_008ab844;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r5);
    r1 = *(u32*)(r1);
    fx = r0 & r1;
    if (fx != 0) r0 = r4;
    if (fx != 0) r0 = Fn_65b8dc_2(r0, r1);
    r1 = *(u32*)(r5);
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r1 + 4);
    fx = r0 & r1;
    if (fx != 0) r0 = r4;
    if (fx != 0) r0 = Fn_6467bc_2(r0, r1);
    r1 = *(u32*)(r5);
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r1 + 8);
    fx = r0 & r1;
    if (fx != 0) r0 = r4;
    if (fx != 0) r0 = Fn_0282dc_2(r0, r1);
    r1 = *(u32*)(r5);
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r1 + 12);
    fx = r0 & r1;
    if (fx != 0) r0 = r4;
    if (fx != 0) r0 = Fn_648efc_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4) = r0;
    return;
}

// FUN_00675d80
void W_675d80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008ab848;
    r3 = r1 << 23;
    r3 = r3 >> 23;
    r2 = *(u32*)(r2);
    r2 = r2 + (r3 << 2);
    r3 = *(u32*)(r2 + 16);
    fa = r3; fb = 0u;
    if (fa == fb) *(u32*)(r2 + 16) = r0;
    if (fa == fb) goto L_675df8;
    r12 = *(u32*)(r3 + 8);
    fa = r12; fb = r1;
    if (fa > fb) *(u32*)(r0 + 12) = r3;
    if (fa > fb) *(u32*)(r2 + 16) = r0;
    if (fa > fb) goto L_675df8;
    r2 = *(u32*)(r3 + 12);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_675df4;
    L_675dc4:;
    r12 = *(u32*)(r2 + 8);
    fa = r12; fb = r1;
    if (fa <= fb) goto L_675de4;
    *(u32*)(r3 + 12) = r0;
    fa = r2; fb = 0u;
    *(u32*)(r0 + 12) = r2;
    if (fa != fb) goto L_675df8;
    goto L_675df4;
    L_675de4:;
    r3 = r2;
    r2 = *(u32*)(r2 + 12);
    fa = r2; fb = 0u;
    if (fa != fb) goto L_675dc4;
    L_675df4:;
    *(u32*)(r3 + 12) = r0;
    L_675df8:;
    return;
}

// FUN_00684e38
u32 W_684e38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 1u;
    *(u8*)(r0 + 40) = r1;
    r1 = 0u;
    r0 = r0 + 56u;
    return WeakCall2(r0, r1);
}

// FUN_00684f18
void W_684f18(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    r0 = r0 + 52u; *(u32*)(r0) = r1;
    r0 = r0 + 4u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00685818
void W_685818(u32 a0, u32 a1, u32 a2, u32 a3, float p0) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f16, ffa, ffb;
    r6 = r0;
    r4 = r1;
    r8 = r2;
    f16 = f0;
    r7 = r3;
    r5 = 0u;
    L_685838:;
    fa = r4; fb = 0u;
    if (fa == fb) goto L_68588c;
    fx = r4 & 1u;
    if (fx == 0) goto L_68587c;
    fa = r5; fb = 15u;
    if ((int)fa > (int)fb) goto L_68587c;
    r0 = r6 + (r5 << 2);
    r0 = *(u32*)(r0 + 144);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_68587c;
    r0 = r0 + ((u32)((int)r7 >> 1));
    fx = r7 & 1u;
    if (fx != 0) r1 = *(u32*)(r0);
    f0 = f16;
    if (fx == 0) r1 = r8;
    if (fx != 0) r1 = *(u32*)(r1 + r8);
    r0 = ((u32(*)(u32, float))r1)(r0, f0);
    L_68587c:;
    r5 = r5 + 1u;
    fa = r5; fb = 16u;
    r4 = r4 >> 1;
    if ((int)fa < (int)fb) goto L_685838;
    L_68588c:;
    return;
}
