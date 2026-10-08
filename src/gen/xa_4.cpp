// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
void Fn_5a4d94();
void Fn_5f50d8();
u32 Fn_5f4d14_2(u32, u32);
u32 Fn_609ab0_2(u32, u32);
void Fn_4e019c();
u32 Fn_61a8f4_2(u32, u32);
u32 Fn_628a64_1(u32);
extern char g_007d5314[];
u32 Fn_626288_3(u32, u32, u32);
extern char g_0089c264[];
extern char g_0089c270[];
void Fn_6822a0();
void Fn_68282c();

// FUN_005f5e48
void W_5f5e48() { Fn_5a4d94(); }

// FUN_005f614c
void W_5f614c(u32 a0) {
    *(u8*)((u32)(a0) + 7) = 0;
}

// FUN_005f828c
void W_5f828c(u32 a0, u32 a1) {
    *(u8*)((u32)(a0) + 5) = a1;
}

// FUN_005f8584
void W_5f8584() { Fn_5f50d8(); }

// FUN_005f8c1c
void W_5f8c1c(u32 a0) {
    *(u8*)((u32)(a0) + 78) = 0;
}

// FUN_005fb814
void W_5fb814() { Fn_5a4d94(); }

// FUN_005fbd10
void W_5fbd10() { Fn_5f50d8(); }

// FUN_005fe42c
u32 W_5fe42c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 69);
    r2 = 0u;
    fa = r3; fb = 0u;
    if (fa != fb) r3 = *(u8*)(r0 + 70);
    if (fa != fb) { fa = r3; fb = 0u; }
    if (fa != fb) r3 = *(u8*)(r0 + 72);
    if (fa != fb) { fa = r3; fb = 0u; }
    if (fa == fb) goto L_5fe458;
    fa = r1; fb = 0u;
    if (fa == fb) r2 = *(u32*)(r0 + 604);
    if (fa != fb) r2 = *(u32*)(r0 + 1036);
    L_5fe458:;
    r0 = r2;
    return r0;
}

// FUN_005fe5b0
void W_5fe5b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 69);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u8*)(r0 + 70);
    if (fa != fb) { fa = r1; fb = 0u; }
    if (fa == fb) goto L_5fe5cc;
    r0 = r0 + 2320u;
    { Fn_5f4d14_2(r0, r1); return; }
    L_5fe5cc:;
    return;
}

// FUN_006084b8
void W_6084b8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 20);
    fa = r3; fb = 0u;
    if (fa != fb) r0 = r0 + 4u;
    if (fa != fb) { *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2; }
    return;
}

// FUN_006090b0
u32 W_6090b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 616);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_6090c8;
    r0 = r1;
    return Fn_609ab0_2(r0, r1);
    L_6090c8:;
    return r0;
}

// FUN_0060a67c
void W_60a67c(u32 a0) {
    *(u8*)((u32)(a0) + 7) = 0;
}

// FUN_0060b1ec
void W_60b1ec() { Fn_5f50d8(); }

// FUN_0060de04
void W_60de04(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 68) = a1;
}

// FUN_00611580
void W_611580() { Fn_4e019c(); }

// FUN_0061aa60
u32 W_61aa60(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0));
    if (t1 != 0) {
        return Fn_61a8f4_2(a0, t1);
    }
}

// FUN_0062535c
u32 W_62535c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 72);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_625388;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u - 1u;
    if (fa == fb) goto L_625384;
    r0 = *(u32*)(r0 + 448);
    fa = r0; fb = 15u;
    if ((int)fa < (int)fb) r0 = 0u;
    if ((int)fa < (int)fb) goto L_625388;
    L_625384:;
    r0 = 1u;
    L_625388:;
    return r0;
}

// FUN_006254f4
u32 W_6254f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = r0 + 768u;
    r0_2 = *(signed char*)(r0_1 + 217);
    return r0_2;
}

// FUN_00625964
u32 W_625964(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 72);
    fa = r1; fb = 0u;
    if ((int)fa < (int)fb) goto L_625980;
    r0 = *(u8*)(r0 + 68);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_625984;
    L_625980:;
    r0 = 0u;
    L_625984:;
    return r0;
}

// FUN_00626e88
u32 W_626e88(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 21);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_626ea4;
    r1 = *(u8*)(r0 + 23);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 12);
    if (fa == fb) goto L_626ea8;
    L_626ea4:;
    r0 = 0u;
    L_626ea8:;
    return r0;
}

// FUN_006289b8
u32 W_6289b8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 148);
    return Fn_628a64_1(t1);
}

// FUN_006290f0
u32 W_6290f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2;
    r0_1 = r0 + 512u;
    r0_2 = *(short*)(r0_1 + 92);
    return r0_2;
}

// FUN_006291ac
u32 W_6291ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 252);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(short*)(r0 + 124);
    if (fa == fb) r0 = ~0u;
    return r0;
}

// FUN_006308a8
u32 W_6308a8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 8u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_6308c4;
    r2 = (u32)g_007d5314;
    r0 = *(u32*)(r0 + 256);
    r1 = *(u32*)(r2 + (r1 << 2));
    return Fn_626288_3(r0, r1, r2);
    L_6308c4:;
    return r0;
}

// FUN_00642f30
u32 W_642f30(u32 a0) {

    return (a0 + 4);
}

// FUN_00654d58
void W_654d58() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r1_1, r0_2;
    r0_1 = (u32)g_0089c264;
    r1_1 = (u32)g_0089c270;
    r0_2 = *(u32*)(r0_1);
    *(u32*)(r1_1 + 4) = r0_2;
    return;
}

// FUN_00683a68
void W_683a68() { Fn_6822a0(); }

// FUN_00683dec
void W_683dec() { Fn_68282c(); }

// FUN_00689bd0
void W_689bd0(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
}

// FUN_0068a380
void W_68a380(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_0068adf4
u32 W_68adf4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 69);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0068aec0
u32 W_68aec0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 69);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}
