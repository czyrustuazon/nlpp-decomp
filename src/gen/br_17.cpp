// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_63e090_1(u32);
u32 Fn_02a218_2(u32, u32);
u32 Fn_02a218_1(u32);
extern char g_009ab338[];
u32 Fn_02a210_0();
u32 Fn_64159c_1(u32);
extern char g_008a8428[];
u32 Fn_0151c8_1(u32);
u32 Fn_6347a8_2(u32, u32);
extern char g_00807724[];
u32 Fn_2d16b4_3(u32, u32, u32);
extern char g_0081ce74[];
u32 Fn_5667c4_2(u32, u32);
extern char g_008b8668[];
u32 Fn_4efb28_1(u32);
u32 Fn_55e338_3(u32, u32, u32);
u32 Fn_55ea18_2(u32, u32);
extern char g_0082ca60[];
u32 Fn_2024b0_1(u32);
u32 Fn_54f870_1(u32);
u32 Fn_5504e0_3(u32, u32, u32);
extern char g_008ab848[];
extern char g_008aab30[];
u32 Fn_4e2680_1(u32);
u32 Fn_504394_1(u32);
u32 Fn_504590_1(u32);
u32 Fn_4e2280_1(u32);
extern char g_008aab18[];
u32 Fn_443b94_2(u32, u32);
extern char g_008bfa40[];
u32 Fn_5c5ad8_3(u32, u32, u32);
extern char g_0079f254[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_37783c_1(u32);
u32 Fn_59a7c4_2(u32, u32);
u32 Fn_59a938_1(u32);
extern char g_00582c40[];
extern char g_008274cc[];
u32 Fn_202758_2(u32, u32);
extern char g_0058a548[];
extern char g_008274dc[];
extern char g_0058e824[];
extern char g_008274ec[];
extern char g_008274fc[];
u32 Fn_1fcd88_2(u32, u32);
extern char g_0082750c[];
extern char g_0082d63c[];
extern char g_0082d64c[];
extern char g_0082d65c[];
extern char g_0082d66c[];
extern char g_0082d67c[];
extern char g_0082d68c[];
extern char g_0082d69c[];
extern char g_0082d6ac[];

// FUN_0063f24c
u32 W_63f24c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 4);
    r1 = r1 + (r1 << 3);
    r0 = r0 + (r1 << 2);
    return r0;
}

// FUN_0063f2b8
u32 W_63f2b8(u32 a0) {
    u32 r0 = a0;
    r0 = *(signed char*)(r0 + 8);
    return r0;
}

// FUN_0063f314
u32 W_63f314(u32 a0) {
    u32 r0 = a0;
    r0 = *(signed char*)(r0 + 8);
    return r0;
}

// FUN_0063f670
u32 W_63f670(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 28);
    r0 = r0 & 7u;
    return r0;
}

// FUN_0063f760
u32 W_63f760(u32 a0) {
    u32 r0 = a0;
    r0 = *(u16*)(r0);
    r0 = r0 & ~64512u;
    return r0;
}

// FUN_0063fa50
u32 W_63fa50(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 44);
    r0 = r0 & 31u;
    return r0;
}

// FUN_0063fa5c
u32 W_63fa5c(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 40);
    r0 = r0 & 1u;
    return r0;
}

// FUN_0063fafc
u32 W_63fafc(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 40);
    if ((r0 & 1u) == 0) goto L_63fb38;
    r0 = r4 + 20u;
    r0 = Fn_63e090_1(r0);
    if (r0 != 0u) goto L_63fb30;
    r0 = r4 + 28u;
    r0 = Fn_63e090_1(r0);
    if (r0 == 0u) goto L_63fb38;
    L_63fb30:;
    r0 = 0u;
    return r0;
    L_63fb38:;
    r0 = 1u;
    return r0;
}

// FUN_0063fc74
u32 W_63fc74(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 48);
    return r0;
}

// FUN_0063fc9c
u32 W_63fc9c(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u16*)(r0);
    fa = r0; fb = 900u;
    if (fa < fb) r0 = 1u;
    if (fa >= fb) r0 = 0u;
    return r0;
}

// FUN_0063fcb0
u32 W_63fcb0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, fa, fb;
    r2 = *(u16*)(r0);
    r3 = *(u16*)(r1);
    if (r2 != r3) goto L_63fcd4;
    r0 = *(u16*)(r0 + 2);
    r1 = *(u16*)(r1 + 2);
    fa = r0; fb = r1;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_63fcd8;
    L_63fcd4:;
    r0 = 0u;
    L_63fcd8:;
    return r0;
}

// FUN_0063fe78
u32 W_63fe78(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00640094
u32 W_640094(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_006400a4
u32 W_6400a4(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = r0;
    r0 = 0u;
    r1 = *(u32*)(r1 + 8);
    L_6400b0:;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r1 + 16);
    if (fa != fb) r0 = r0 + 1u;
    if (fa != fb) goto L_6400b0;
    return r0;
}

// FUN_006400c4
u32 W_6400c4(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r2 = r0;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_6400fc;
    r1 = *(u32*)(r0 + 8);
    r0 = 0u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_6400fc;
    L_6400e4:;
    if (r1 == r2) goto L_6400fc;
    r1 = *(u32*)(r1 + 16);
    r0 = r0 + 1u;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_6400e4;
    L_6400fc:;
    return r0;
}

// FUN_006409b4
u32 W_6409b4(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 8);
    if (r0 != 0u) r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_006409c4
u32 W_6409c4(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 8);
    if (r0 != 0u) r0 = *(u32*)(r0 + 16);
    return r0;
}

// FUN_0064107c
u32 W_64107c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r4 = r1;
    r0 = r0 + 4u;
    r0 = Fn_02a218_2(r0, r1);
    r0 = r0 + (r4 << 3);
    r0 = *(u32*)(r0 + 16);
    return r0;
}

// FUN_006411cc
u32 W_6411cc(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u16*)(r0 + 6);
    return r0;
}

// FUN_00641404
u32 W_641404(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 >= 2u) r1 = 0u;
    r1 = r1 + (r1 << 1);
    r0 = r0 + (r1 << 1);
    r0 = r0 + 500u;
    return r0;
}

// FUN_0064141c
u32 W_64141c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 >= 2u) r1 = 0u;
    r0 = r0 + (r1 << 3);
    r0 = r0 + 484u;
    return r0;
}

// FUN_00641430
u32 W_641430(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 >= 2u) r1 = 0u;
    r1 = r1 + (r1 << 4);
    r1 = r1 + (r1 << 1);
    r0 = r0 + (r1 << 2);
    r0 = r0 + 2048u;
    r0 = r0 + 788u;
    return r0;
}

// FUN_00641480
u32 W_641480(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    if (r1 >= 2u) r1 = 0u;
    r0 = r0 + (r1 << 10);
    r0 = r0 + 1792u;
    r0 = *(short*)(r0 + 16);
    return r0;
}

// FUN_00641a84
u32 W_641a84(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = (u32)g_009ab338;
    if (fa != fb) r0 = r0 + 64u;
    return r0;
}

// FUN_00641af8
u32 W_641af8() {
    u32 r0;
    r0 = Fn_02a210_0();
    if (r0 != 0u) r0 = *(u32*)(r0);
    return r0;
}

// FUN_00641b0c
u32 W_641b0c() {
    u32 r0;
    r0 = Fn_02a210_0();
    if (r0 != 0u) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00641b20
u32 W_641b20(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_00641b38
u32 W_641b38(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 12);
    return r0;
}

// FUN_00641b50
u32 W_641b50(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 == 0u) goto L_641b74;
    r0 = *(u32*)(r0 + 44);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    L_641b74:;
    return r0;
}

// FUN_00641b78
u32 W_641b78(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 32);
    return r0;
}

// FUN_00641b90
u32 W_641b90(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0);
    return r0;
}

// FUN_00641bcc
u32 W_641bcc(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00641e08
u32 W_641e08(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 32);
    return r0;
}

// FUN_00641e28
u32 W_641e28(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 4u;
    r0 = Fn_02a218_1(r0);
    if (r0 != 0u) r0 = *(u32*)(r0 + 4);
    return r0;
}

// FUN_00642274
u32 W_642274(u32 a0) {
    u32 r0 = a0;
    r0 = *(u8*)(r0 + 68);
    if (r0 != 1u) r0 = 0u;
    return r0;
}

// FUN_00642284
u32 W_642284(u32 a0) {
    u32 r0 = a0, r4, r5, r6;
    r6 = 0u;
    r5 = r0;
    r4 = r6;
    L_642294:;
    r0 = r5 + (r4 << 2);
    r0 = *(u32*)(r0 + 76);
    if (r0 == 0u) goto L_6422b0;
    r0 = Fn_64159c_1(r0);
    if (r0 != 0u) r6 = 1u;
    L_6422b0:;
    r4 = r4 + 1u;
    if ((int)r4 < (int)2u) goto L_642294;
    r0 = r6;
    return r0;
}

// FUN_006422c4
u32 W_6422c4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 108);
    if (r1 != 0u) goto L_6422e8;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 80);
    r0 = ((u32(*)(u32))r1)(r0);
    if (r0 == 0u) goto L_6422ec;
    L_6422e8:;
    r0 = 1u;
    L_6422ec:;
    return r0;
}

// FUN_00642504
u32 W_642504(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u8*)(r0 + 24);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = ~89u;
    if (fa == fb) goto L_64252c;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_64252c;
    fa = r1; fb = 2u;
    if (fa != fb) r0 = *(u32*)(r0 + 28);
    if (fa == fb) r0 = 90u;
    L_64252c:;
    return r0;
}

// FUN_00642638
u32 W_642638(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, fa, fb;
    r3 = *(u8*)(r0 + 447);
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_642664;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = r0 + 452u;
    if (fa != fb) *(u32*)(r1) = r0;
    fa = r2; fb = 0u;
    if (fa != fb) r0 = 16u;
    if (fa != fb) *(u32*)(r2) = r0;
    r0 = 1u;
    L_642664:;
    return r0;
}

// FUN_006428b0
u32 W_6428b0(u32 a0) {
    u32 r0 = a0;
    r0 = r0 + 256u;
    r0 = *(signed char*)(r0 + 193);
    return r0;
}

// FUN_00642a00
u32 W_642a00(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fa, fb;
    r2 = 445u;
    r2 = *(signed char*)(r2 + r0);
    if ((int)r2 < (int)0u) goto L_642a28;
    r2 = r2 + (r2 << 2);
    r0 = r0 + (r2 << 2);
    r0 = *(u32*)(r0 + 124);
    fa = r0; fb = r1;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_642a2c;
    L_642a28:;
    r0 = 0u;
    L_642a2c:;
    return r0;
}

// FUN_00642a64
u32 W_642a64(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_642a88;
    r0 = (u32)g_008a8428;
    r0 = *(u32*)(r0);
    r0 = Fn_0151c8_1(r0);
    if (r0 != 0u) r0 = 1u;
    L_642a88:;
    return r0;
}

// FUN_00642bbc
u32 W_642bbc(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 4);
    r0 = 0u;
    if (r1 != 0u) r0 = *(u32*)(r1 + 16);
    return r0;
}

// FUN_00642d80
u32 W_642d80(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 4);
    r0 = 0u;
    if (r1 == 0u) goto L_642d98;
    r0 = r1;
    return Fn_6347a8_2(r0, r1);
    L_642d98:;
    return r0;
}

// FUN_00642dd0
u32 W_642dd0(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = r0 + 184u;
    return r0;
}

// FUN_00642e00
u32 W_642e00(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 4);
    r0 = 0u;
    if (r1 != 0u) r0 = *(u8*)(r1 + 180);
    return r0;
}

// FUN_00642e90
u32 W_642e90(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 4);
    r0 = 0u;
    if (r1 == 0u) goto L_642eac;
    r0 = *(u8*)(r1 + 183);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    L_642eac:;
    return r0;
}

// FUN_0064357c
u32 W_64357c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, fa, fb;
    r3 = *(u32*)(r0 + 68);
    r0 = *(u32*)(r0 + 72);
    fa = r3; fb = r1;
    if (fa >= fb) r1 = r1 + (r1 << 1);
    if (fa >= fb) r0 = r0 + (r1 << 2);
    r0 = *(u8*)(r0 + 1);
    r0 = r0 & r2;
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0064389c
u32 W_64389c(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = (u32)g_00807724;
    r2 = r1 + 64u;
    *(u32*)(r0 - 12) = r1;
    *(u32*)(r0) = r2;
    r0 = Fn_2d16b4_3(r0, r1, r2);
    r0 = r0 - 12u;
    return r0;
}

// FUN_006438f8
u32 W_6438f8(u32 a0) {
    u32 r0 = a0, r1, r2;
    r1 = (u32)g_0081ce74;
    r2 = r1 + 56u;
    *(u32*)(r0 - 12) = r1;
    *(u32*)(r0) = r2;
    r0 = Fn_2d16b4_3(r0, r1, r2);
    r0 = r0 - 12u;
    return r0;
}

// FUN_006442d4
void W_6442d4(u32 a0) {
    u32 r0 = a0, r4;
    r4 = r0 - 4u;
    r0 = *(u8*)(r0 + 4);
    if (r0 == 0u) goto L_6442fc;
    r0 = (u32)g_008b8668;
    r0 = *(u32*)(r0);
    r0 = Fn_4efb28_1(r0);
    r0 = 0u;
    *(u8*)(r4 + 8) = r0;
    L_6442fc:;
    return;
}

// FUN_00644704
void W_644704(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, fa, fb;
    fa = r2; fb = 0u;
    r0 = r0 - 72u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u8*)(r0 + 775) = r1;
    return;
}

// FUN_006465a8
void W_6465a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r1 = r1 & 255u;
    r1 = r1 | (r1 << 8);
    r1 = r1 | (r1 << 16);
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_006465c4
void W_6465c4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r1 = r1 & 255u;
    r1 = r1 | (r1 << 8);
    *(u16*)(r0) = r1;
    *(u8*)(r0 + 2) = r1;
    return;
}

// FUN_006465d8
void W_6465d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r1 = r1 & 255u;
    r1 = r1 | (r1 << 8);
    r1 = r1 | (r1 << 16);
    *(u32*)(r0) = r1;
    return;
}

// FUN_006465ec
void W_6465ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r1 = r1 & 255u;
    r1 = r1 | (r1 << 8);
    r1 = r1 | (r1 << 16);
    *(u32*)(r0) = r1;
    *(u8*)(r0 + 4) = r1;
    return;
}

// FUN_00646604
void W_646604(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r1 = r1 & 255u;
    r1 = r1 | (r1 << 8);
    r1 = r1 | (r1 << 16);
    *(u32*)(r0) = r1;
    *(u16*)(r0 + 4) = r1;
    return;
}

// FUN_0064661c
void W_64661c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r1 = r1 & 255u;
    r1 = r1 | (r1 << 8);
    r1 = r1 | (r1 << 16);
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_0065b8ac
u32 W_65b8ac(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    if (r0 >= 32u) goto L_65b8d0;
    r1 = (u32)g_008ab848;
    r1 = *(u32*)(r1);
    r0 = r1 + (r0 << 2);
    r0 = *(u32*)(r0 + 2088);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0);
    if (fa != fb) goto L_65b8d4;
    L_65b8d0:;
    r0 = 0u;
    L_65b8d4:;
    return r0;
}

// FUN_0065baf4
u32 W_65baf4() {
    u32 r0;
    r0 = ~0u;
    return r0;
}

// FUN_0065bafc
u32 W_65bafc() {
    u32 r0;
    r0 = ~0u;
    return r0;
}

// FUN_0065bb04
u32 W_65bb04() {
    u32 r0;
    r0 = ~0u;
    return r0;
}

// FUN_0065bb0c
u32 W_65bb0c() {
    u32 r0;
    r0 = ~0u;
    return r0;
}

// FUN_0067b8e4
void W_67b8e4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) goto L_67b92c;
    r5 = 1u;
    r0 = 0u;
    *(u8*)(r4 + 69) = r5;
    *(u32*)(r4 + 72) = r0;
    *(u8*)(r4 + 196) = r1;
    if (r1 == 0u) goto L_67b92c;
    r0 = *(u32*)(r4 + 192);
    r1 = 6u;
    r0 = Fn_443b94_2(r0, r1);
    r0 = 10u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r5;
    L_67b92c:;
    return;
}

// FUN_0067b930
void W_67b930(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) goto L_67b978;
    r5 = 6u;
    r0 = 0u;
    *(u8*)(r4 + 69) = r5;
    *(u32*)(r4 + 72) = r0;
    *(u8*)(r4 + 196) = r1;
    if (r1 == 0u) goto L_67b978;
    r0 = *(u32*)(r4 + 192);
    r1 = 5u;
    r0 = Fn_443b94_2(r0, r1);
    r0 = 10u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r5;
    L_67b978:;
    return;
}

// FUN_0067cfd8
void W_67cfd8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5;
    r4 = r0;
    r0 = *(u8*)(r0 + 69);
    if (r0 != 0u) goto L_67d020;
    r5 = 6u;
    r0 = 0u;
    *(u8*)(r4 + 69) = r5;
    *(u32*)(r4 + 72) = r0;
    *(u8*)(r4 + 196) = r1;
    if (r1 == 0u) goto L_67d020;
    r0 = *(u32*)(r4 + 192);
    r1 = 5u;
    r0 = Fn_443b94_2(r0, r1);
    r0 = 10u;
    *(u8*)(r4 + 69) = r0;
    *(u8*)(r4 + 70) = r5;
    L_67d020:;
    return;
}

// FUN_00681e5c
u32 W_681e5c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa != fb) r0 = *(signed char*)(r0 + 58);
    if (fa != fb) goto L_681e84;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 24);
    if (fa != fb) r0 = *(signed char*)(r0 + 167);
    if (fa == fb) r0 = 0u;
    L_681e84:;
    return r0;
}

// FUN_00681f18
u32 W_681f18(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa != fb) r0 = *(signed char*)(r0 + 66);
    if (fa != fb) goto L_681f44;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 24);
    if (fa != fb) r0 = r0 + 256u;
    if (fa != fb) r0 = *(signed char*)(r0 + 15);
    if (fa == fb) r0 = 0u;
    L_681f44:;
    return r0;
}

// FUN_0068238c
u32 W_68238c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa != fb) r0 = *(signed char*)(r0 + 58);
    if (fa != fb) goto L_6823b4;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 24);
    if (fa != fb) r0 = *(signed char*)(r0 + 167);
    if (fa == fb) r0 = 0u;
    L_6823b4:;
    return r0;
}

// FUN_0068245c
u32 W_68245c(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u32*)(r0 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 20);
    if (fa != fb) r0 = *(signed char*)(r0 + 66);
    if (fa != fb) goto L_682488;
    r1 = *(u32*)(r0 + 12);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 24);
    if (fa != fb) r0 = r0 + 256u;
    if (fa != fb) r0 = *(signed char*)(r0 + 15);
    if (fa == fb) r0 = 0u;
    L_682488:;
    return r0;
}

// FUN_00682bbc
void W_682bbc(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 36);
    if (r0 != 5u) goto L_682bf4;
    r0 = (u32)g_008bfa40;
    r2 = 2u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 262144u;
    *(u32*)(r0 + 96) = r1;
    L_682bf4:;
    return;
}

// FUN_00683014
void W_683014(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 36);
    if (r0 != 5u) goto L_68304c;
    r0 = (u32)g_008bfa40;
    r2 = 7u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 262144u;
    *(u32*)(r0 + 96) = r1;
    L_68304c:;
    return;
}

// FUN_0068336c
void W_68336c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 36);
    if (r0 != 5u) goto L_6833a4;
    r0 = (u32)g_008bfa40;
    r2 = 2u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 262144u;
    *(u32*)(r0 + 96) = r1;
    L_6833a4:;
    return;
}

// FUN_00683670
void W_683670(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 36);
    if (r0 != 5u) goto L_6836a8;
    r0 = (u32)g_008bfa40;
    r2 = 7u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 262144u;
    *(u32*)(r0 + 96) = r1;
    L_6836a8:;
    return;
}

// FUN_006839d8
void W_6839d8(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 36);
    if (r0 != 5u) goto L_683a10;
    r0 = (u32)g_008bfa40;
    r2 = 2u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 262144u;
    *(u32*)(r0 + 96) = r1;
    L_683a10:;
    return;
}

// FUN_00683d5c
void W_683d5c(u32 a0) {
    u32 r0 = a0, r1, r2, r4;
    r4 = r0;
    r0 = *(u32*)(r0 + 28);
    r0 = *(u32*)(r0 + 36);
    if (r0 != 5u) goto L_683d94;
    r0 = (u32)g_008bfa40;
    r2 = 7u;
    r1 = 0u;
    r0 = *(u32*)(r0);
    r0 = Fn_5c5ad8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r1 = 262144u;
    *(u32*)(r0 + 96) = r1;
    L_683d94:;
    return;
}

// FUN_00683eb8
u32 W_683eb8() {
    u32 r0, r1, r2, r4;
    r0 = 1204u;
    r2 = 16u;
    r1 = 0u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 == 0u) goto L_683efc;
    r0 = Fn_37783c_1(r0);
    r4 = r0;
    r0 = (u32)g_0079f254;
    r1 = 0u;
    *(u32*)(r4) = r0;
    *(u32*)(r4 + 1196) = r1;
    *(u32*)(r4 + 1200) = r1;
    r0 = Fn_59a7c4_2(r0, r1);
    r0 = Fn_59a938_1(r0);
    r0 = r4;
    L_683efc:;
    return r0;
}

// FUN_006845bc
void W_6845bc(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r1 = (u32)g_008274cc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_6845f8;
    r0 = *(u32*)(r4 + 4);
    r5 = 0u;
    if (r0 == 0u) goto L_6845f4;
    r1 = (u32)g_00582c40;
    r0 = Fn_202758_2(r0, r1);
    *(u32*)(r4 + 4) = r5;
    L_6845f4:;
    *(u32*)(r4 + 8) = r5;
    L_6845f8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00684658
void W_684658(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r1 = (u32)g_008274dc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_684694;
    r0 = *(u32*)(r4 + 4);
    r5 = 0u;
    if (r0 == 0u) goto L_684690;
    r1 = (u32)g_0058a548;
    r0 = Fn_202758_2(r0, r1);
    *(u32*)(r4 + 4) = r5;
    L_684690:;
    *(u32*)(r4 + 8) = r5;
    L_684694:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_006846f4
void W_6846f4(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r1 = (u32)g_008274ec;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_684730;
    r0 = *(u32*)(r4 + 4);
    r5 = 0u;
    if (r0 == 0u) goto L_68472c;
    r1 = (u32)g_0058e824;
    r0 = Fn_202758_2(r0, r1);
    *(u32*)(r4 + 4) = r5;
    L_68472c:;
    *(u32*)(r4 + 8) = r5;
    L_684730:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00684790
void W_684790(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r1 = (u32)g_008274fc;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_6847c8;
    r0 = *(u32*)(r4 + 4);
    r5 = 0u;
    if (r0 == 0u) goto L_6847c4;
    r0 = Fn_1fcd88_2(r0, r1);
    *(u32*)(r4 + 4) = r5;
    L_6847c4:;
    *(u32*)(r4 + 8) = r5;
    L_6847c8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0068481c
void W_68481c(u32 a0) {
    u32 r0 = a0, r1, r4, r5;
    r1 = (u32)g_0082750c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 8);
    if (r0 == 0u) goto L_684854;
    r0 = *(u32*)(r4 + 4);
    r5 = 0u;
    if (r0 == 0u) goto L_684850;
    r0 = Fn_1fcd88_2(r0, r1);
    *(u32*)(r4 + 4) = r5;
    L_684850:;
    *(u32*)(r4 + 8) = r5;
    L_684854:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00684f28
void W_684f28(u32 a0) {
    u32 r0 = a0, r1;
    r1 = ~0u;
    *(u32*)(r0 + 28) = r1;
    return;
}

// FUN_00684f64
void W_684f64(u32 a0) {
    u32 r0 = a0, r1;
    r1 = ~0u;
    *(u32*)(r0 + 28) = r1;
    return;
}

// FUN_00688c50
void W_688c50(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d63c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 44);
    if (r0 == 0u) goto L_688c7c;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 44) = r0;
    *(u32*)(r4 + 36) = r0;
    L_688c7c:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00688e00
void W_688e00(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d64c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 68);
    if (r0 == 0u) goto L_688e30;
    r0 = r0 - 8u;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 68) = r0;
    *(u32*)(r4 + 60) = r0;
    L_688e30:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00688fa4
void W_688fa4(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d65c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 52);
    if (r0 == 0u) goto L_688fd0;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    *(u32*)(r4 + 44) = r0;
    L_688fd0:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00689018
void W_689018(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d66c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689044;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689044:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0068908c
void W_68908c(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d67c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_6890b8;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_6890b8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00689100
void W_689100(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d68c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_68912c;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_68912c:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00689174
void W_689174(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d69c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_6891a0;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_6891a0:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_006891e8
void W_6891e8(u32 a0) {
    u32 r0 = a0, r1, r4;
    r1 = (u32)g_0082d6ac;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 36);
    if (r0 == 0u) goto L_689214;
    r0 = Fn_1fcd88_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 36) = r0;
    *(u32*)(r4 + 28) = r0;
    L_689214:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}
