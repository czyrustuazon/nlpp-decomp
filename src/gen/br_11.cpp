// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_021ccc_2(u32, u32);
u32 Fn_646540_1(u32);
extern char g_008aabb0[];
u32 Fn_028f24_2(u32, u32);
extern char g_0082bfc4[];
u32 Fn_02a948_2(u32, u32);
u32 Fn_2024b0_1(u32);
extern char g_008bb658[];
extern char g_009df8ac[];
u32 Fn_01b624_2(u32, u32);
u32 Fn_4f0efc_1(u32);
u32 Fn_4f0cf4_0();
u32 Fn_0244c8_1(u32);
u32 Fn_024568_1(u32);
u32 Fn_4f1320_1(u32);
u32 Fn_50e6e4_0();
u32 Fn_50e6e4_1(u32);
u32 Fn_50e7a4_2(u32, u32);
u32 Fn_50e7e8_1(u32);
u32 Fn_50e894_2(u32, u32);
u32 Fn_50f2a8_2(u32, u32);
u32 Fn_510f94_1(u32);
u32 Fn_50ea8c_1(u32);
u32 Fn_50eb34_1(u32);
u32 Fn_50ebb0_1(u32);
u32 Fn_50ec58_1(u32);
u32 Fn_50ef2c_1(u32);
u32 Fn_50ef2c_2(u32, u32);
u32 Fn_50f8c0_1(u32);
u32 Fn_50f98c_1(u32);
u32 Fn_50fa5c_1(u32);
u32 Fn_50fb98_1(u32);
u32 Fn_5142d4_2(u32, u32);
extern char g_008aae48[];
u32 Fn_024788_3(u32, u32, u32);
u32 Fn_024788_2(u32, u32);
u32 Fn_024788_1(u32);
extern char g_0082c37c[];
extern char g_0082c3d4[];
extern char g_008aab68[];
u32 Fn_504590_3(u32, u32, u32);
u32 Fn_52008c_1(u32);
extern char g_00202bf8[];
u32 Fn_0252f4_0();
u32 Fn_02962c_1(u32);
u32 Fn_533880_1(u32);
extern char g_008ab948[];
u32 Fn_01d390_1(u32);
u32 Fn_01d390_0();
u32 Fn_0135a4_0();
u32 Fn_01d0e0_1(u32);
u32 Fn_01d0f0_1(u32);
u32 Fn_01d5d0_1(u32);
u32 Fn_01d5f0_1(u32);
extern char g_008ab8e0[];
extern char g_009ae8e0[];
u32 Fn_5341bc_0();
extern char g_008aac08[];
extern char g_009a108c[];
extern char g_008b7cc8[];
extern char g_0082c594[];
u32 Fn_548334_1(u32);
u32 Fn_548334_2(u32, u32);
u32 Fn_542230_3(u32, u32, u32);
u32 Fn_5421f4_2(u32, u32);
u32 Fn_54e5ac_1(u32);
extern char g_0082ca0c[];
u32 Fn_665970_3(u32, u32, u32);
extern char g_008bb4fc[];
extern char g_0082ca60[];
u32 Fn_54f870_1(u32);
u32 Fn_5504e0_3(u32, u32, u32);
extern char g_0082ce4c[];
u32 Fn_2024b0_3(u32, u32, u32);
u32 Fn_565968_1(u32);
u32 Fn_5563ac_2(u32, u32);
u32 Fn_5606b4_2(u32, u32);
u32 Fn_5661a8_1(u32);
u32 Fn_5606b4_1(u32);
u32 Fn_56651c_1(u32);
u32 Fn_5667c4_2(u32, u32);
u32 Fn_565968_0();
u32 Fn_55d8b8_1(u32);
u32 Fn_562c3c_2(u32, u32);
extern char g_009e0124[];

// FUN_004fd0c8
u32 W_4fd0c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_4fd0e0;
    r0 = Fn_021ccc_2(r0, r1);
    goto L_4fd0e8;
    L_4fd0e0:;
    r0 = Fn_646540_1(r0);
    L_4fd0e8:;
    r0 = r4;
    return r0;
}

// FUN_004fd0f0
u32 W_4fd0f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_4fd108;
    r0 = Fn_021ccc_2(r0, r1);
    goto L_4fd110;
    L_4fd108:;
    r0 = Fn_646540_1(r0);
    L_4fd110:;
    r0 = r4;
    return r0;
}

// FUN_00500a4c
u32 W_500a4c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aabb0;
    r0 = 0u;
    r1 = *(u8*)(r4 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_500a74;
    r0 = *(u32*)(r4 + 8);
    r0 = Fn_028f24_2(r0, r1);
    r1 = 0u;
    *(u8*)(r4 + 1) = r1;
    L_500a74:;
    r1 = 1u;
    *(u8*)(r4 + 3) = r1;
    return r0;
}

// FUN_00500ce4
u32 W_500ce4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aabb0;
    r0 = 0u;
    r1 = *(u8*)(r4 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_500d0c;
    r0 = *(u32*)(r4 + 8);
    r0 = Fn_028f24_2(r0, r1);
    r1 = 0u;
    *(u8*)(r4 + 1) = r1;
    L_500d0c:;
    return r0;
}

// FUN_00501a84
void W_501a84(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082bfc4;
    *(u32*)(r0) = r1;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    r0 = Fn_02a948_2(r0, r1);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00501ab0
void W_501ab0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082bfc4;
    *(u32*)(r0) = r1;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    { Fn_02a948_2(r0, r1); return; }
}

// FUN_005031d4
void W_5031d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = (u32)g_008bb658;
    r1 = *(u8*)(r4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_503204;
    r0 = (u32)g_009df8ac;
    r0 = Fn_01b624_2(r0, r1);
    r0 = r5;
    r0 = Fn_4f0efc_1(r0);
    r0 = 1u;
    *(u8*)(r4) = r0;
    L_503204:;
    return;
}

// FUN_00503210
u32 W_503210() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_4f0cf4_0();
    fa = r0; fb = 4u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00503354
u32 W_503354() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bb658;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_50337c;
    r0 = (u32)g_009df8ac;
    r0 = Fn_0244c8_1(r0);
    r0 = Fn_4f1320_1(r0);
    r0 = (u32)g_009df8ac;
    r0 = Fn_024568_1(r0);
    L_50337c:;
    r2 = (u32)g_009df8ac;
    r1 = ~0u;
    r0 = 0u;
    *(u32*)(r2 + 8) = r1;
    *(u8*)(r4) = r0;
    return r0;
}

// FUN_00507448
u32 W_507448(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0050c2e4
u32 W_50c2e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 536350720u;
    r0 = *(u8*)(r0 + 133);
    r0 = r0 & 28u;
    r0 = r0 >> 2;
    return r0;
}

// FUN_0050c36c
u32 W_50c36c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 536350720u;
    r0 = *(u8*)(r0 + 133);
    r0 = r0 & 2u;
    r0 = r0 >> 1;
    return r0;
}

// FUN_0050e880
u32 W_50e880() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_50e6e4_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0050fdb4
u32 W_50fdb4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r2;
    r0 = Fn_50e6e4_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_50fdd8;
    r1 = *(u32*)(r4 + 24);
    r1 = r1 + r5;
    *(u32*)(r4 + 24) = r1;
    L_50fdd8:;
    return r0;
}

// FUN_0050fe28
void W_50fe28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 28);
    r4 = r0;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_50fe48;
    r1 = 0u;
    *(u8*)(r0 + 28) = r1;
    r0 = Fn_50e7a4_2(r0, r1);
    L_50fe48:;
    r0 = r4;
    { Fn_50e7e8_1(r0); return; }
}

// FUN_0050fe90
u32 W_50fe90(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r0 = r1 + 80u;
    r0 = Fn_50f2a8_2(r0, r1);
    r5 = 0u;
    *(u16*)(r4 + 64) = r5;
    r0 = Fn_510f94_1(r0);
    r1 = r0;
    *(u32*)(r4 + 68) = r0;
    r0 = r4 + 32u;
    r0 = Fn_50e894_2(r0, r1);
    r1 = *(u32*)(r4 + 68);
    r0 = 23920u;
    *(u32*)(r4 + 72) = r1;
    *(u32*)(r4 + 76) = r1;
    *(u32*)(r0 + r4) = r5;
    return r0;
}

// FUN_005113b0
u32 W_5113b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5113c4;
    return Fn_50ea8c_1(r0);
    L_5113c4:;
    return r0;
}

// FUN_005113cc
u32 W_5113cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5113e0;
    return Fn_50eb34_1(r0);
    L_5113e0:;
    return r0;
}

// FUN_005113e8
u32 W_5113e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5113fc;
    return Fn_50ebb0_1(r0);
    L_5113fc:;
    return r0;
}

// FUN_00511404
void W_511404(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511414;
    { Fn_50ec58_1(r0); return; }
    L_511414:;
    { Fn_50ef2c_1(r0); return; }
}

// FUN_00511474
void W_511474(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51149c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_51149c:;
    return;
}

// FUN_005114ac
u32 W_5114ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5114d4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_5114d4:;
    r0 = r4;
    return r0;
}

// FUN_00511604
void W_511604(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = r1 & 2147483648u;
    fa = r0; fb = 0u;
    r4 = r1;
    if ((int)fa < (int)fb) r0 = Fn_50ef2c_2(r0, r1);
    *(u32*)(r5 + 24) = r4;
    return;
}

// FUN_0051192c
u32 W_51192c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_511940;
    return Fn_50f8c0_1(r0);
    L_511940:;
    return r0;
}

// FUN_00511948
u32 W_511948(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_51195c;
    return Fn_50f98c_1(r0);
    L_51195c:;
    return r0;
}

// FUN_00511964
void W_511964(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511974;
    { Fn_50fa5c_1(r0); return; }
    L_511974:;
    { Fn_50ef2c_1(r0); return; }
}

// FUN_005119d4
u32 W_5119d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5119e8;
    return Fn_50fb98_1(r0);
    L_5119e8:;
    return r0;
}

// FUN_005119f0
void W_5119f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511a18;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_511a18:;
    return;
}

// FUN_00511a28
u32 W_511a28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511a50;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_511a50:;
    r0 = r4;
    return r0;
}

// FUN_005125b0
u32 W_5125b0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 1);
    r3 = 0u;
    *(u8*)(r0 + r2) = r3;
    r0 = 1u;
    return r0;
}

// FUN_00512a54
void W_512a54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 24) = r1;
    return;
}

// FUN_00512c5c
u32 W_512c5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 3);
    r4 = r0;
    r0 = 52600u;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 57100u;
    if (fa == fb) goto L_512c8c;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = 55600u;
    if (fa == fb) goto L_512c8c;
    fa = r1; fb = 2u;
    if (fa == fb) goto L_512cb0;
    L_512c8c:;
    r1 = *(u8*)(r4 + 2);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = r0 + 1024u;
    if (fa == fb) r0 = r0 + 476u;
    if (fa == fb) goto L_512cac;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = r0 + 8192u;
    if (fa == fb) r0 = r0 + 1808u;
    L_512cac:;
    return r0;
    L_512cb0:;
    r0 = Fn_5142d4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 199600u;
    if (fa == fb) r0 = 225600u;
    goto L_512c8c;
}

// FUN_00512d50
void W_512d50(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = *(u32*)(r0 + 20);
    *(u32*)(r2) = r1;
    r0 = *(u32*)(r0 + 28);
    *(u32*)(r3) = r0;
    return;
}

// FUN_005142d4
u32 W_5142d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aae48;
    r0 = *(signed char*)(r0 + 4);
    return r0;
}

// FUN_005148f8
u32 W_5148f8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r6 = r2;
    r0 = Fn_024788_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51495c;
    r0 = 4894u;
    fa = r4; fb = 0u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    r1 = r0 + 4u;
    r1 = r1 + (r4 << 1);
    *(u16*)(r1 + 36) = r6;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 256u;
    if (fa == fb) goto L_514954;
    fa = r4; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 512u;
    if (fa != fb) goto L_514958;
    L_514954:;
    *(u32*)(r0) = r1;
    L_514958:;
    r0 = 1u;
    L_51495c:;
    return r0;
}

// FUN_00514964
u32 W_514964(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5149ac;
    r0 = 4894u;
    fa = r4; fb = 32768u;
    if (fa > fb) r4 = 32768u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 34) = r4;
    r1 = *(u32*)(r0);
    r1 = r1 | 2147483648u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_5149ac:;
    return r0;
}

// FUN_00514d80
u32 W_514d80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514dc0;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 24) = r5;
    r1 = *(u32*)(r0);
    r1 = r1 | 134217728u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_514dc0:;
    return r0;
}

// FUN_00514e68
u32 W_514e68(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r6 = r2;
    r0 = Fn_024788_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514ecc;
    r0 = 4894u;
    fa = r4; fb = 0u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    r1 = r0 + 4u;
    r1 = r1 + (r4 << 1);
    *(u16*)(r1 + 32) = r6;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 64u;
    if (fa == fb) goto L_514ec4;
    fa = r4; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 128u;
    if (fa != fb) goto L_514ec8;
    L_514ec4:;
    *(u32*)(r0) = r1;
    L_514ec8:;
    r0 = 1u;
    L_514ecc:;
    return r0;
}

// FUN_00515028
u32 W_515028(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51507c;
    r0 = 4890u;
    r0 = *(u16*)(r0 + r4);
    r0 = r0 & 1u;
    r0 = r0 + (r0 << 1);
    r0 = r4 + (r0 << 5);
    r0 = r0 + (r5 << 2);
    r0 = r0 + 4096u;
    r1 = *(u32*)(r0 + 176);
    r0 = 1u;
    r2 = *(u16*)(r1 + 160);
    r2 = r2 & ~255u;
    *(u16*)(r1 + 160) = r2;
    r2 = *(u32*)(r1);
    r2 = r2 | 65536u;
    *(u32*)(r1) = r2;
    L_51507c:;
    return r0;
}

// FUN_005151d0
u32 W_5151d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_515210;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 22) = r5;
    r1 = *(u32*)(r0);
    r1 = r1 | 67108864u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_515210:;
    return r0;
}

// FUN_00515570
u32 W_515570(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_024788_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_5155a0;
    r0 = 4892u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 168);
    r0 = *(u16*)(r0 + 2);
    L_5155a0:;
    return r0;
}

// FUN_0051561c
void W_51561c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_515658;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 16) = r5;
    r1 = *(u32*)(r0);
    r1 = r1 | 32768u;
    *(u32*)(r0) = r1;
    L_515658:;
    return;
}

// FUN_005156a8
u32 W_5156a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5156f0;
    r0 = 4890u;
    r0 = *(u16*)(r0 + r4);
    r0 = r0 & 1u;
    r0 = r0 + (r0 << 1);
    r0 = r4 + (r0 << 5);
    r0 = r0 + (r5 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 176);
    r1 = *(u32*)(r0);
    r1 = r1 | 16u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_5156f0:;
    return r0;
}

// FUN_00519b54
u32 W_519b54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 536346624u;
    r0 = r0 & ~15728640u;
    r3 = *(u8*)(r2 + 20);
    r2 = 16u;
    fx = r3 & 1u;
    if (fx == 0) r2 = 144u;
    fa = r1; fb = 0u;
    if (fa != fb) r2 = r2 | 1u;
    r0 = r2 | (r0 << 8);
    return r0;
}

// FUN_0051c960
u32 W_51c960(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u16*)(r0 + 4);
    fa = r2; fb = r1;
    if (fa > fb) r0 = r0 + (r1 << 3);
    if (fa > fb) r0 = r0 + 12u;
    if (fa <= fb) r0 = 0u;
    return r0;
}

// FUN_0051c9e0
void W_51c9e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    r2 = (u32)g_0082c37c;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_0051e978
void W_51e978(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    r2 = (u32)g_0082c3d4;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_00522248
u32 W_522248() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008aab68;
    r0 = 0u;
    r2 = *(u8*)(r1);
    fa = r2; fb = 0u;
    if (fa == fb) return r0;
    r0 = 0u;
    *(u8*)(r1) = r0;
    r0 = Fn_504590_3(r0, r1, r2);
    return Fn_52008c_1(r0);
}

// FUN_005232a0
u32 W_5232a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 3028u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5232c4;
    fa = r0; fb = 4096u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_5232c8;
    r2 = r0 + (r0 << 5);
    r0 = r1 + (r0 << 4);
    r1 = r2 + r0;
    L_5232c4:;
    r0 = r1;
    L_5232c8:;
    return r0;
}

// FUN_00532574
u32 W_532574(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 1431655765u;
    r1 = 858993459u;
    r2 = r2 & (r0 >> 1);
    r0 = r0 - r2;
    r2 = r0 & r1;
    r0 = r1 & (r0 >> 2);
    r1 = 252645135u;
    r0 = r0 + r2;
    r0 = r0 + (r0 >> 4);
    r0 = r0 & r1;
    r0 = r0 + (r0 >> 8);
    r0 = r0 + (r0 >> 16);
    r0 = r0 & 63u;
    return r0;
}

// FUN_00533650
u32 W_533650() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_0252f4_0();
    fa = r0; fb = 0u;
    if (fa == fb) r0 = (u32)g_00202bf8;
    if (fa == fb) goto L_533670;
    r0 = Fn_02962c_1(r0);
    return Fn_533880_1(r0);
    L_533670:;
    return r0;
}

// FUN_005339dc
u32 W_5339dc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab948;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_00533c54
u32 W_533c54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 24);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 88);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    r0 = Fn_01d390_1(r0);
    r0 = 0u;
    return r0;
}

// FUN_00533da4
u32 W_533da4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_01d390_0();
    r0 = (u32)g_008ab948;
    r1 = *(u32*)(r0 + 28);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 92);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    return r0;
}

// FUN_00533edc
u32 W_533edc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_0135a4_0();
    r4 = r0;
    r0 = Fn_01d5d0_1(r0);
    r5 = r0;
    r0 = Fn_01d5f0_1(r0);
    r0 = (u32)g_008ab948;
    r3 = *(u32*)(r0 + 12);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_533f1c;
    r0 = *(u32*)(r0 + 76);
    r2 = r5;
    r1 = r4;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_533f54;
    L_533f1c:;
    fa = r4; fb = 0u;
    if (fa == fb) goto L_533f54;
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_533f54;
    r0 = r5;
    r0 = Fn_01d0f0_1(r0);
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 1u;
    if (fa != fb) r0 = Fn_01d0e0_1(r0);
    L_533f54:;
    r0 = 0u;
    return r0;
}

// FUN_005341bc
u32 W_5341bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(signed char*)(r0 + 13);
    return r0;
}

// FUN_00534440
void W_534440() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = (u32)g_009ae8e0;
    r0 = r5;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008ab948;
    r4 = *(u32*)(r0 + 4);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_53447c;
    L_534460:;
    r1 = *(u32*)(r4 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 12);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r4 = *(u32*)(r4 + 4);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_534460;
    L_53447c:;
    r0 = r5;
    { Fn_024568_1(r0); return; }
}

// FUN_00534564
u32 W_534564() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5341bc_0();
    fa = r0; fb = 0u;
    if (fa != fb) goto L_534580;
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_534584;
    L_534580:;
    r0 = 1u;
    L_534584:;
    return r0;
}

// FUN_0053d340
u32 W_53d340() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a108c;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008aac08;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = 1u;
    if (fa == fb) r5 = 0u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}

// FUN_0053e748
u32 W_53e748() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a108c;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008b7cc8;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = 1u;
    if (fa == fb) r5 = 0u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}

// FUN_005449b0
void W_5449b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c594;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_548334_2(r0, r1);
    r0 = *(u32*)(r4 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_548334_1(r0);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00545550
void W_545550(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = r0;
    r1 = r0 + 20u;
    r0 = r0 + 16u;
    r2 = r4 + 4u;
    r0 = Fn_542230_3(r0, r1, r2);
    *(u32*)(r4 + 12) = r5;
    return;
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

// FUN_00545e7c
void W_545e7c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0);
    r6 = r1;
    r2 = *(u32*)(r0 + 56);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u8*)(r5 + 183);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    r0 = r6 & ~r0;
    fx = r0 & 1u;
    if (fx != 0) goto L_545ee4;
    r4 = *(u32*)(r5 + 20);
    r0 = r5 + 20u;
    fa = r4; fb = r0;
    if (fa == fb) goto L_545ee4;
    L_545ec0:;
    r1 = *(u32*)(r4 - 4);
    r0 = r4 - 4u;
    r2 = *(u32*)(r1 + 52);
    r1 = r6;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r4 = *(u32*)(r4);
    r0 = r5 + 20u;
    fa = r4; fb = r0;
    if (fa != fb) goto L_545ec0;
    L_545ee4:;
    return;
}

// FUN_00549690
void W_549690(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 328) = r2;
    return;
}

// FUN_00549778
void W_549778(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 & ~3u;
    r0 = r0 + 328u;
    r1 = r1 & 3u;
    r0 = r0 + r3;
    *(u8*)(r0 + r1) = r2;
    return;
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

// FUN_0054a0ac
void W_54a0ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 320) = r2;
    return;
}

// FUN_0054a0bc
void W_54a0bc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 & ~3u;
    r0 = r0 + 320u;
    r1 = r1 & 3u;
    r0 = r0 + r3;
    *(u8*)(r0 + r1) = r2;
    return;
}

// FUN_0054a6a0
void W_54a6a0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 >> 1;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 216) = r2;
    return;
}

// FUN_0054aa34
void W_54aa34(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 >> 3;
    r1 = r1 & 3u;
    r0 = r0 + (r3 << 2);
    r0 = r0 + r1;
    *(u8*)(r0 + 216) = r2;
    return;
}

// FUN_0054e294
void W_54e294(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca0c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 12);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54e2c8;
    r0 = Fn_548334_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_54e2c8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0054e2d8
u32 W_54e2d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca0c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 12);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54e30c;
    r0 = Fn_548334_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_54e30c:;
    r0 = r4;
    return r0;
}

// FUN_0054edb0
void W_54edb0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = r2;
    r0 = *(u32*)(r0 + 464);
    { Fn_665970_3(r0, r1, r2); return; }
}

// FUN_00550154
u32 W_550154() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb4fc;
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_00550664
void W_550664(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca60;
    r4 = r0;
    r2 = r1 + 36u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 88) = r2;
    r0 = Fn_5504e0_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_54f870_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00551474
u32 W_551474(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 536);
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_551494;
    r0 = 4u;
    r1 = r0 + (r1 << 2);
    r0 = *(u32*)(r3 + r1);
    *(u32*)(r3 + r1) = r2;
    L_551494:;
    return r0;
}

// FUN_00551c78
void W_551c78(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_551ca0;
    fa = r2; fb = 1u;
    if (fa == fb) r2 = *(u32*)(r0 + 28);
    if (fa == fb) r1 = r1 + r2;
    if (fa == fb) goto L_551ca0;
    fa = r2; fb = 2u;
    if (fa == fb) r2 = *(u32*)(r0 + 24);
    if (fa == fb) r1 = r2 - r1;
    if (fa != fb) goto L_551ca4;
    L_551ca0:;
    *(u32*)(r0 + 28) = r1;
    L_551ca4:;
    return;
}

// FUN_005557b8
void W_5557b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 112);
    r2 = *(u32*)(r0 + 108);
    fa = r1; fb = r2;
    if ((int)fa < (int)fb) r1 = r1 + 1u;
    if ((int)fa < (int)fb) *(u32*)(r0 + 112) = r1;
    r1 = *(u32*)(r0 + 176);
    r2 = *(u32*)(r0 + 172);
    fa = r1; fb = r2;
    if ((int)fa < (int)fb) r1 = r1 + 1u;
    if ((int)fa < (int)fb) *(u32*)(r0 + 176) = r1;
    return;
}

// FUN_005558bc
u32 W_5558bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_005558fc
u32 W_5558fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00556fa8
u32 W_556fa8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8192u;
    r0 = r0 + 2512u;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00558cb8
u32 W_558cb8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 616);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
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

// FUN_0055b7a4
void W_55b7a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082ce4c;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    { Fn_2024b0_3(r0, r1, r2); return; }
}

// FUN_0055bd58
u32 W_55bd58(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 368);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 364) = r1;
    if (fa != fb) *(u32*)(r2) = r1;
    r2 = 0u;
    *(u32*)(r0 + 368) = r1;
    *(u32*)(r1) = r2;
    r0 = *(u32*)(r0 + 372);
    return r0;
}

// FUN_0055ea18
void W_55ea18(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 476u;
    r1 = r1 + 4u;
    { Fn_5421f4_2(r0, r1); return; }
}

// FUN_005603ac
void W_5603ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u32*)(r0 + 28) = r1;
    r1 = r1 + r2;
    *(u32*)(r0 + 32) = r1;
    return;
}

// FUN_00560598
void W_560598(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = *(u32*)(r0 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5605c0;
    L_5605ac:;
    r0 = r4;
    r0 = Fn_565968_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_5605ac;
    L_5605c0:;
    r0 = 0u;
    *(u32*)(r5 + 304) = r0;
    return;
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

// FUN_00560648
void W_560648(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 1);
    r0 = r0 + 256u;
    *(u16*)(r0 + 12) = r2;
    return;
}

// FUN_00560660
void W_560660(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r1;
    r4 = r0;
    r0 = Fn_5606b4_2(r0, r1);
    r4 = *(u32*)(r4 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5606b0;
    L_56067c:;
    r0 = *(u8*)(r4 + 305);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5606a4;
    fa = r5; fb = 0u;
    if ((int)fa < (int)fb) goto L_56069c;
    r1 = r5 & 255u;
    r0 = r4 + 144u;
    r0 = Fn_5563ac_2(r0, r1);
    L_56069c:;
    r0 = r4;
    r0 = Fn_5661a8_1(r0);
    L_5606a4:;
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_56067c;
    L_5606b0:;
    return;
}

// FUN_00560b60
void W_560b60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = Fn_5606b4_1(r0);
    r4 = *(u32*)(r5 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_560b94;
    L_560b78:;
    r0 = *(u8*)(r4 + 305);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_5661a8_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_560b78;
    L_560b94:;
    r4 = *(u32*)(r5 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_560bb4;
    L_560ba0:;
    r0 = r4;
    r0 = Fn_565968_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_560ba0;
    L_560bb4:;
    r0 = 0u;
    *(u32*)(r5 + 304) = r0;
    *(u8*)(r5 + 5) = r0;
    return;
}

// FUN_00561480
void W_561480(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 4u;
    r1 = r1 + 424u;
    r0 = Fn_5421f4_2(r0, r1);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5614b8;
    r0 = r4;
    r0 = Fn_56651c_1(r0);
    r1 = r4;
    r0 = r5;
    { Fn_5667c4_2(r0, r1); return; }
    L_5614b8:;
    return;
}

// FUN_00562480
void W_562480(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r4 = r2;
    if (fa == fb) r0 = Fn_565968_0();
    r0 = 0u;
    *(u32*)(r4 + 156) = r0;
    return;
}

// FUN_00562d24
u32 W_562d24(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 + (r1 << 1);
    r0 = r0 << 5;
    return r0;
}

// FUN_00562d30
void W_562d30(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 4u;
    r1 = r1 + 88u;
    r0 = Fn_5421f4_2(r0, r1);
    r0 = r5 + 16u;
    r1 = r5 + 20u;
    r2 = r4 + 88u;
    r0 = Fn_542230_3(r0, r1, r2);
    r1 = r4;
    r0 = r5;
    r0 = Fn_562c3c_2(r0, r1);
    r4 = r4 + 88u;
    r5 = r5 + 8u;
    fa = r4; fb = r5;
    if (fa != fb) r6 = 32767u;
    if (fa == fb) goto L_562d9c;
    L_562d78:;
    r0 = *(u32*)(r4 - 24);
    fa = r0; fb = 1u;
    if ((int)fa <= (int)fb) goto L_562d9c;
    fa = r0; fb = r6;
    if (fa != fb) r0 = r4 - 88u;
    if (fa != fb) r0 = Fn_55d8b8_1(r0);
    r4 = *(u32*)(r4);
    fa = r4; fb = r5;
    if (fa != fb) goto L_562d78;
    L_562d9c:;
    return;
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

// FUN_005657cc
void W_5657cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r1 = r0 + 4u;
    r2 = r2 + 4u;
    { Fn_542230_3(r0, r1, r2); return; }
}
