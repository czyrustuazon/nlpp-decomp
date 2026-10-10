// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_0082d6bc[];
u32 Fn_1fcd88_2(u32, u32);
u32 Fn_2024b0_1(u32);
extern char g_0082d6cc[];
extern char g_0082d6dc[];
extern char g_0082d6ec[];
extern char g_0082d6fc[];
extern char g_0082d70c[];
extern char g_0082d71c[];
u32 Fn_016d5c_3(u32, u32, u32);

// FUN_0068925c
void W_68925c(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d6bc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689288;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689288:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_006893d4
void W_6893d4(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d6cc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689400;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689400:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0068954c
void W_68954c(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d6dc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689578;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689578:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_006895c0
void W_6895c0(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d6ec;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_6895ec;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_6895ec:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00689634
void W_689634(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d6fc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689660;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689660:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_006896a8
void W_6896a8(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d70c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_6896d4;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_6896d4:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0068971c
void W_68971c(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d71c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689748;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689748:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00689964
void W_689964(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = *(u32*)(r0 + 8);
    r2 = 16u;
    r1 = r1 + 1u;
    *(u32*)(r0 + 8) = r1;
    r1 = 0u;
    r0 = r2;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_6899ac;
    r2 = ~0u;
    r1 = 0u;
    *(u16*)(r0) = r2;
    *(u16*)(r0 + 2) = r1;
    *(u8*)(r0 + 4) = r1;
    *(u8*)(r0 + 5) = r1;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    L_6899ac:;
    return;
}

// FUN_00689ec4
void W_689ec4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u32*)(r0 + 12);
    r3 = 0u;
    *(u32*)(r0 + 12) = r1;
    fa = r2; fb = 0u;
    *(u32*)(r1 + 40) = r3;
    if (fa == fb) *(u32*)(r1 + 44) = r3;
    if (fa != fb) r3 = *(u32*)(r0 + 12);
    if (fa != fb) *(u32*)(r3 + 44) = r2;
    if (fa != fb) *(u32*)(r2 + 40) = r1;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_00689fb4
void W_689fb4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u32*)(r0 + 12);
    r3 = 0u;
    *(u32*)(r0 + 12) = r1;
    fa = r2; fb = 0u;
    *(u32*)(r1 + 140) = r3;
    if (fa == fb) *(u32*)(r1 + 144) = r3;
    if (fa != fb) r3 = *(u32*)(r0 + 12);
    if (fa != fb) *(u32*)(r3 + 144) = r2;
    if (fa != fb) *(u32*)(r2 + 140) = r1;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_0068a044
void W_68a044(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u32*)(r0 + 12);
    r3 = 0u;
    *(u32*)(r0 + 12) = r1;
    fa = r2; fb = 0u;
    *(u32*)(r1 + 4) = r3;
    if (fa == fb) *(u32*)(r1 + 8) = r3;
    if (fa != fb) r3 = *(u32*)(r0 + 12);
    if (fa != fb) *(u32*)(r3 + 8) = r2;
    if (fa != fb) *(u32*)(r2 + 4) = r1;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_0068a18c
void W_68a18c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u32*)(r0 + 12);
    r3 = 0u;
    *(u32*)(r0 + 12) = r1;
    fa = r2; fb = 0u;
    *(u32*)(r1 + 4) = r3;
    if (fa == fb) *(u32*)(r1 + 8) = r3;
    if (fa != fb) r3 = *(u32*)(r0 + 12);
    if (fa != fb) *(u32*)(r3 + 8) = r2;
    if (fa != fb) *(u32*)(r2 + 4) = r1;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_0068a600
void W_68a600(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, fa, fb;
    fa = r1; fb = r2;
    if ((int)fa > (int)fb) r1 = 0u;
    if ((int)fa > (int)fb) r2 = 255u;
    *(u16*)(r0 + 8) = r1;
    *(u16*)(r0 + 10) = r2;
    return;
}

// FUN_0068b06c
u32 W_68b06c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0068b218
u32 W_68b218(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0068b308
u32 W_68b308(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0068b3f8
u32 W_68b3f8(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0068b428
u32 W_68b428(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0068e3dc
u32 W_68e3dc(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_68e3fc;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_68e3fc:;
    r0 = r4;
    return r0;
}

// FUN_0068e404
u32 W_68e404(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = *(u32*)(r0);
    if (r0 == 0u) goto L_68e424;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_68e424:;
    r0 = r4;
    return r0;
}
