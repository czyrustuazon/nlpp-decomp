// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 WeakCall0();
extern char g_007d9f08[];
u32 WeakCall1(u32);
u32 WeakCall2(u32, u32);
extern char g_007e0fb8[];
extern char g_008a75dc[];
u32 Fn_3d58e0_1(u32);
u32 Fn_48f8b4_2(u32, u32);
u32 Fn_494418_1(u32);
float Fn_59b594_0f2(float, float);
float Fn_59b624_0f2(float, float);
float Fn_59b624_1f2(u32, float, float);
u32 Fn_4a0ec0_1f1(u32, float);
u32 Fn_4a13dc_1(u32);

// FUN_004521b8
void W_4521b8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00458d10
void W_458d10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, f2, f3, f4, f5, f6, ffa, ffb;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_458d24;
    f0 = *(float*)(r1 + 0);
    f1 = *(float*)(r1 + 4);
    f2 = *(float*)(r1 + 8);
    f3 = *(float*)(r1 + 12);
    f4 = *(float*)(r1 + 16);
    f5 = *(float*)(r1 + 20);
    f6 = *(float*)(r1 + 24);
    r0 = r0 + 96u;
    *(float*)(r0 + 0) = f0;
    *(float*)(r0 + 4) = f1;
    *(float*)(r0 + 8) = f2;
    *(float*)(r0 + 12) = f3;
    *(float*)(r0 + 16) = f4;
    *(float*)(r0 + 20) = f5;
    *(float*)(r0 + 24) = f6;
    L_458d24:;
    return;
}

// FUN_00458d54
void W_458d54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_458d6c;
    r2 = *(u32*)(r1); r3 = *(u32*)(r1 + 4);
    r1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 184) = r1;
    *(u32*)(r0 + 176) = r2; *(u32*)(r0 + 176 + 4) = r3;
    L_458d6c:;
    return;
}

// FUN_00458f3c
void W_458f3c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_458f54;
    r2 = *(u32*)(r1); r3 = *(u32*)(r1 + 4);
    r1 = *(u32*)(r1 + 8);
    *(u32*)(r0 + 172) = r1;
    *(u32*)(r0 + 164) = r2; *(u32*)(r0 + 164 + 4) = r3;
    L_458f54:;
    return;
}

// FUN_0045ba54
void W_45ba54() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004646ec
float W_4646ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    float f0, f1, f2, f3, f0_1, f1_1, f2_1, f3_1, ffa, ffb;
    r1_1 = (u32)g_007d9f08;
    f0_1 = 0.850000024f;
    f1_1 = *(float*)(r1_1 + 0);
    f2_1 = *(float*)(r1_1 + 4);
    f3_1 = *(float*)(r1_1 + 8);
    *(float*)(r0 + 12) = f0_1;
    *(float*)(r0 + 0) = f1_1;
    *(float*)(r0 + 4) = f2_1;
    *(float*)(r0 + 8) = f3_1;
    return f0_1;
}

// FUN_00466ac0
void W_466ac0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 360u;
    { WeakCall1(r0); return; }
}

// FUN_00467200
void W_467200(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 364u;
    { WeakCall1(r0); return; }
}

// FUN_0047505c
u32 W_47505c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r1 = 0u;
    f0 = 1.0f;
    *(u8*)(r0 + 68) = r1;
    *(float*)(r0 + 96) = f0;
    r0 = 1u;
    return r0;
}

// FUN_00477e3c
void W_477e3c(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    float f0 = p0, ffa, ffb;
    r0_1 = r0 + (r1 << 2);
    *(float*)(r0_1 + 128) = f0;
    return;
}

// FUN_0047b698
void W_47b698(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 72u;
    { WeakCall1(r0); return; }
}

// FUN_0047ba14
void W_47ba14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 72u;
    { WeakCall1(r0); return; }
}

// FUN_0047c9f4
void W_47c9f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 72u;
    { WeakCall1(r0); return; }
}

// FUN_0047de54
void W_47de54() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00482100
void W_482100(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    *(u8*)(r0 + 184) = r1;
    r0 = r0 + 44u;
    { WeakCall2(r0, r1); return; }
}

// FUN_00484b08
void W_484b08(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 68);
    { WeakCall1(r0); return; }
}

// FUN_0048782c
void W_48782c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 4u;
    { WeakCall1(r0); return; }
}

// FUN_00487ba8
void W_487ba8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0048b9d4
void W_48b9d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0048ed3c
void W_48ed3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 2048u;
    r0 = r0 + 680u;
    { WeakCall1(r0); return; }
}

// FUN_0048f508
u32 W_48f508(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[3];
    r0 = (u32)g_008a75dc;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_48f52c;
    r0 = Fn_3d58e0_1(r0);
    return r0;
    L_48f52c:;
    r2 = (u32)g_007e0fb8;
    fa = r1; fb = 7u;
    r0 = *(u32*)(r2 + 0); r2 = *(u32*)(r2 + 4);
    *(u32*)((u32)stk + 0) = r0; *(u32*)((u32)stk + 4) = r2;
    if ((int)fa < (int)fb) r0 = *(signed char*)((u32)stk + r1);
    if ((int)fa >= (int)fb) r0 = 1u;
    return r0;
}

// FUN_0048f728
u32 W_48f728(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[3];
    r4 = *(signed char*)(r1);
    r5 = r1;
    fa = r4; fb = 0u;
    if (fa == fb) goto L_48f758;
    r1 = r0;
    r0 = (u32)stk;
    r0 = Fn_48f8b4_2(r0, r1);
    r0 = *(u32*)(r5 + 16);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    L_48f758:;
    r0 = r4;
    return r0;
}

// FUN_00490a9c
void W_490a9c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    { WeakCall1(r0); return; }
}

// FUN_00492bcc
void W_492bcc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 60);
    { WeakCall1(r0); return; }
}

// FUN_00493f30
void W_493f30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    float f16, f17, ffa, ffb;
    r4 = *(u32*)(r0 + 4);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_493f68;
    r1 = *(u32*)(r4 + 16);
    r0 = (u32)stk;
    r0 = Fn_48f8b4_2(r0, r1);
    f16 = *(float*)((u32)stk + 0);
    f17 = *(float*)((u32)stk + 4);
    r0 = r4;
    r0 = Fn_494418_1(r0);
    r4 = r4 + 232u;
    *(float*)(r4 + 0) = f16;
    *(float*)(r4 + 4) = f17;
    L_493f68:;
    return;
}

// FUN_00498b88
u32 W_498b88(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 1u;
    r0 = r0 + 24u;
    return WeakCall2(r0, r1);
}

// FUN_00499794
void W_499794(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r3_1, r2_1, r3_2, r2_2, r3_3, r2_3;
    r3_1 = *(u32*)(r1 + 8);
    r2_1 = *(u32*)(r0 + 8);
    *(u32*)(r0 + 8) = r3_1;
    *(u32*)(r1 + 8) = r2_1;
    r3_2 = *(u32*)(r1 + 12);
    r2_2 = *(u32*)(r0 + 12);
    *(u32*)(r0 + 12) = r3_2;
    *(u32*)(r1 + 12) = r2_2;
    r3_3 = *(u32*)(r1 + 28);
    r2_3 = *(u32*)(r0 + 28);
    *(u32*)(r0 + 28) = r3_3;
    *(u32*)(r1 + 28) = r2_3;
    return;
}

// FUN_0049992c
u32 W_49992c(u32 a0, u32 a1, u32 a2, float p0) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r3_1;
    float f0 = p0, ffa, ffb;
    r3_1 = r0 + 8u;
    *(u32*)(r3_1 + 0) = r1; *(u32*)(r3_1 + 4) = r2;
    *(float*)(r0 + 28) = f0;
    return r0;
}

// FUN_00499b3c
u32 W_499b3c(u32 a0, u32 a1, u32 a2, float p0) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r3_1;
    float f0 = p0, ffa, ffb;
    r3_1 = r0 + 8u;
    *(u32*)(r3_1 + 0) = r1; *(u32*)(r3_1 + 4) = r2;
    *(float*)(r0 + 28) = f0;
    return r0;
}

// FUN_0049a4c0
void W_49a4c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 4u;
    { WeakCall1(r0); return; }
}

// FUN_0049b268
float W_49b268(float p0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = -f0;
    return f0;
}

// FUN_0049be78
void W_49be78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 4u;
    { WeakCall1(r0); return; }
}

// FUN_0049ccd4
void W_49ccd4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 4u;
    { WeakCall1(r0); return; }
}

// FUN_0049d53c
void W_49d53c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 4u;
    { WeakCall1(r0); return; }
}

// FUN_0049e794
void W_49e794() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0049ea70
void W_49ea70(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, ffa, ffb;
    f0 = *(float*)(r0 + 24);
    r4 = r0;
    f1 = *(float*)(r0 + 16);
    f0 = -f0;
    f0 = Fn_59b624_1f2(r0, f0, f1);
    r0 = *(u32*)(r4 + 4);
    *(float*)(r0 + 252) = f0;
    f0 = *(float*)(r4 + 16);
    f1 = *(float*)(r4 + 24);
    f0 = f0 * f0;
    f0 = f0 + f1 * f1;
    f0 = Fn_59b594_0f2(f0, f1);
    f1 = f0;
    f0 = *(float*)(r4 + 20);
    f0 = Fn_59b624_0f2(f0, f1);
    r0 = *(u32*)(r4 + 4);
    *(float*)(r0 + 256) = f0;
    return;
}

// FUN_0049ed70
void W_49ed70() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004a0e10
void W_4a0e10(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f16, ffa, ffb;
    r4 = r0;
    f16 = f0;
    r0 = *(u8*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4a0e64;
    r0 = *(u8*)(r4 + 2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4a0e58;
    fa = r0; fb = 1u;
    if (fa == fb) goto L_4a0e50;
    fa = r0; fb = 2u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_4a0ec0_1f1(r0, f0);
    goto L_4a0e58;
    L_4a0e50:;
    r0 = r4;
    r0 = Fn_4a13dc_1(r0);
    L_4a0e58:;
    f0 = *(float*)(r4 + 8);
    f0 = f0 + f16;
    *(float*)(r4 + 8) = f0;
    L_4a0e64:;
    return;
}

// FUN_004c1528
void W_4c1528() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004e0198
void W_4e0198() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}
