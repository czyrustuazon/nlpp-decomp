// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_0244c8_1(u32);
u32 Fn_024568_1(u32);
u32 Fn_55bca4_1(u32);
u32 Fn_55bd7c_2(u32, u32);
u32 Fn_55bfe4_2(u32, u32);
u32 Fn_5667ec_1(u32);
u32 Fn_56a110_3(u32, u32, u32);
extern char g_008ab4f8[];
u32 Fn_6612ec_1(u32);
extern char g_0082d1ec[];
u32 Fn_2024b0_1(u32);
u32 Fn_569f9c_3(u32, u32, u32);
u32 Fn_56aa74_1(u32);
extern char g_008bfabc[];
u32 Fn_016338_1(u32);
u32 Fn_029ed4_2(u32, u32);
u32 Fn_036198_1(u32);
u32 Fn_5a579c_1(u32);
u32 Fn_573fe4_2(u32, u32);
extern char g_0079ee14[];
u32 Fn_36721c_1(u32);
u32 Fn_5a579c_3(u32, u32, u32);
extern char g_0079ef0c[];
u32 Fn_016030_3(u32, u32, u32);
extern char g_0079ef84[];
extern char g_0079f184[];
u32 Fn_3778d0_1(u32);
u32 Fn_3692c8_1(u32);
u32 Fn_369364_1(u32);
u32 Fn_3779cc_1(u32);
extern char g_0079f1bc[];
extern char g_008bfa40[];
u32 Fn_18ee58_0();
u32 Fn_21ba90_1(u32);
u32 Fn_5c6ae0_3(u32, u32, u32);
u32 Fn_128308_1(u32);
extern char g_0082d370[];
u32 Fn_5799a4_3(u32, u32, u32);
u32 Fn_583488_1(u32);
extern char g_0082d3d0[];
u32 Fn_5799a4_2(u32, u32);
u32 Fn_5799a4_1(u32);
u32 Fn_58964c_1(u32);
u32 Fn_5898dc_1(u32);
u32 Fn_57f690_1(u32);
extern char g_008b86a0[];
u32 Fn_4e7d30_1(u32);
u32 Fn_4e7d68_1(u32);
extern char g_008bb5ac[];
u32 Fn_63e370_1(u32);
u32 Fn_63e7c4_1(u32);
u32 Fn_63ebe4_2(u32, u32);
extern char g_0082d57c[];
extern char g_0082d58c[];
extern char g_0082d5ac[];
u32 Fn_0424fc_3(u32, u32, u32);
u32 Fn_6400a4_1(u32);
extern char g_008ab49c[];
extern char g_009a3d8c[];
extern char g_008ab4c4[];
u32 Fn_01a4d4_2(u32, u32);
u32 Fn_5b0358_2(u32, u32);
u32 Fn_59ab04_1(u32);
extern char g_009a4970[];
u32 Fn_0206d0_3(u32, u32, u32);
u32 Fn_5a579c_2(u32, u32);
extern char g_009a4798[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_02073c_3(u32, u32, u32);
u32 Fn_5a8268_2(u32, u32);
u32 Fn_5a880c_1(u32);
u32 Fn_5ac3fc_3(u32, u32, u32);
u32 Fn_5afec8_1(u32);
u32 Fn_5b0148_2(u32, u32);
u32 Fn_5b022c_3(u32, u32, u32);
extern char g_009a420c[];
u32 Fn_016038_2(u32, u32);
u32 Fn_6400a4_0();
u32 Fn_641be4_0();
u32 Fn_02a218_1(u32);
u32 Fn_02aca0_2(u32, u32);
u32 Fn_6663a4_4(u32, u32, u32, u32);
u32 Fn_5ad1d0_3(u32, u32, u32);
u32 Fn_5bac6c_1(u32);
u32 Fn_5bae94_1(u32);
u32 Fn_5bb228_1(u32);
u32 Fn_5bb488_1(u32);

// FUN_005667d4
u32 W_5667d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = *(u32*)(r0);
    if (fa != fb) *(u32*)(r1) = r2;
    return r0;
}

// FUN_005670a8
u32 W_5670a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 420);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
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

// FUN_00567cec
void W_567cec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 24);
    r1 = *(u8*)(r0 + 32);
    *(u32*)(r0 + 12) = r2;
    fa = r1; fb = 1u;
    if (fa == fb) r2 = 1u;
    if (fa != fb) r2 = 0u;
    fa = r1; fb = 2u;
    r2 = r0 + (r2 << 2);
    r2 = *(u32*)(r2 + 24);
    *(u32*)(r0 + 8) = r2;
    if (fa == fb) r2 = 1u;
    if (fa != fb) r2 = 0u;
    fa = r1; fb = 0u;
    r2 = r0 + (r2 << 2);
    r1 = *(u32*)(r2 + 24);
    *(u32*)(r0 + 16) = r1;
    if (fa != fb) r1 = 1u;
    if (fa == fb) r1 = 0u;
    r1 = r0 + (r1 << 2);
    r1 = *(u32*)(r1 + 24);
    *(u32*)(r0 + 20) = r1;
    return;
}

// FUN_00567d54
u32 W_567d54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 + 7u;
    r2 = r0 + (r0 << 1);
    r1 = r1 >> 3;
    r1 = r1 + 3u;
    r2 = r2 + (r0 << 3);
    r1 = r1 & ~3u;
    r1 = r1 + (r2 << 2);
    r1 = r1 + 55u;
    r4 = r1 & ~15u;
    r0 = Fn_56a110_3(r0, r1, r2);
    r0 = r4 + (r0 << 2);
    return r0;
}

// FUN_00569c8c
void W_569c8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r4 = (u32)g_008ab4f8;
    r2 = r1;
    r3 = *(u32*)(r3 + 24);
    r1 = *(u32*)(r4);
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    *(u32*)(r4) = r0;
    return;
}

// FUN_00569d8c
void W_569d8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r4 = (u32)g_008ab4f8;
    r2 = r1;
    r3 = *(u32*)(r3 + 16);
    r1 = *(u32*)(r4);
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    *(u32*)(r4) = r0;
    return;
}

// FUN_0056a110
u32 W_56a110(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 78u;
    r0 = r0 * r1;
    r0 = r0 + 57u;
    r0 = r0 & ~3u;
    return r0;
}

// FUN_0056a198
void W_56a198() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    L_56a1a0:;
    r0 = r4;
    r0 = Fn_6612ec_1(r0);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_56a1a0;
    return;
}

// FUN_0056ad4c
void W_56ad4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082d1ec;
    r1 = *(u32*)(r0 + 4);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = Fn_569f9c_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_56aa74_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0056e480
u32 W_56e480(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_036198_1(r0);
    r0 = *(u32*)(r4 + 1836);
    r5 = r4 + 1024u;
    r5 = r5 + 812u;
    fa = r0; fb = 0u;
    r6 = 0u;
    if (fa == fb) goto L_56e4b0;
    r1 = 0u;
    r0 = Fn_029ed4_2(r0, r1);
    *(u32*)(r5) = r6;
    L_56e4b0:;
    r0 = r4 + 1024u;
    r0 = r0 + 804u;
    r0 = Fn_016338_1(r0);
    r0 = r0 - 8u;
    r0 = Fn_016338_1(r0);
    r0 = r0 - 8u;
    r0 = Fn_016338_1(r0);
    r1 = (u32)g_008bfabc;
    r0 = r0 - 1024u;
    r0 = r0 - 788u;
    *(u32*)(r1) = r6;
    return r0;
}

// FUN_0056faa0
u32 W_56faa0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r6 = r0;
    r7 = r4;
    L_56fab0:;
    r5 = r6 + (r4 << 2);
    r0 = *(u32*)(r5 + 44);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56fac8;
    r0 = Fn_5a579c_1(r0);
    *(u32*)(r5 + 44) = r7;
    L_56fac8:;
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if (fa < fb) goto L_56fab0;
    r0 = r6;
    return r0;
}

// FUN_0056fb2c
u32 W_56fb2c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r6 = r0;
    r7 = r4;
    L_56fb3c:;
    r5 = r6 + (r4 << 2);
    r0 = *(u32*)(r5 + 44);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56fb54;
    r0 = Fn_5a579c_1(r0);
    *(u32*)(r5 + 44) = r7;
    L_56fb54:;
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if (fa < fb) goto L_56fb3c;
    r0 = r6;
    return r0;
}

// FUN_0056fbac
u32 W_56fbac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r6 = r0;
    r7 = r4;
    L_56fbbc:;
    r5 = r6 + (r4 << 2);
    r0 = *(u32*)(r5 + 28);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_56fbd4;
    r0 = Fn_5a579c_1(r0);
    *(u32*)(r5 + 28) = r7;
    L_56fbd4:;
    r4 = r4 + 1u;
    fa = r4; fb = 2u;
    if (fa < fb) goto L_56fbbc;
    r0 = r6;
    return r0;
}

// FUN_00570870
void W_570870(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1;
    if (r0 == 0) goto L_570880;
    r1 = 0u;
    { Fn_029ed4_2(r0, r1); return; }
    L_570880:;
    return;
}

// FUN_00571314
void W_571314(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1;
    if (r0 == 0) goto L_571324;
    r1 = 0u;
    { Fn_029ed4_2(r0, r1); return; }
    L_571324:;
    return;
}

// FUN_005735a8
u32 W_5735a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 1216);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = Fn_573fe4_2(r0, r1);
    r0 = 1u;
    return r0;
}

// FUN_00573f40
void W_573f40(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0079ee14;
    r1 = *(u32*)(r0 + 28);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_573f6c;
    r0 = r1;
    r0 = Fn_5a579c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 28) = r0;
    L_573f6c:;
    r0 = r4;
    r0 = Fn_36721c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00574914
void W_574914(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0079ef0c;
    r1 = *(u32*)(r0 + 24);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_574940;
    r0 = r1;
    r0 = Fn_016030_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 24) = r0;
    L_574940:;
    r0 = r4;
    r0 = Fn_36721c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00574ad0
void W_574ad0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0079ef84;
    r1 = *(u32*)(r0 + 24);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_574afc;
    r0 = r1;
    r0 = Fn_016030_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 24) = r0;
    L_574afc:;
    r0 = r4;
    r0 = Fn_36721c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00574f58
void W_574f58(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0079f184;
    r1 = *(u32*)(r0 + 1204);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_574f84;
    r0 = r1;
    r0 = Fn_5a579c_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 1204) = r0;
    L_574f84:;
    r0 = r4;
    r0 = Fn_3778d0_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00575848
u32 W_575848(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 24);
    r0 = Fn_3692c8_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_575870;
    r0 = *(u32*)(r4 + 24);
    r0 = Fn_369364_1(r0);
    r0 = Fn_3779cc_1(r0);
    r0 = 1u;
    L_575870:;
    return r0;
}

// FUN_00575b0c
void W_575b0c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0079f1bc;
    r1 = *(u32*)(r0 + 24);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_575b38;
    r0 = r1;
    r0 = Fn_016030_3(r0, r1, r2);
    r0 = 0u;
    *(u32*)(r4 + 24) = r0;
    L_575b38:;
    r0 = r4;
    r0 = Fn_36721c_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005769fc
u32 W_5769fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 84);
    return r0;
}

// FUN_00576c08
void W_576c08(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1;
    if (r0 == 0) goto L_576c18;
    r1 = 1u;
    { Fn_029ed4_2(r0, r1); return; }
    L_576c18:;
    return;
}

// FUN_00576ddc
u32 W_576ddc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa40;
    r0 = Fn_18ee58_0();
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c6ae0_3(r0, r1, r2);
    r0 = Fn_21ba90_1(r0);
    r2 = *(u32*)(r4);
    r1 = r0;
    r0 = r2;
    r0 = Fn_5c6ae0_3(r0, r1, r2);
    r0 = 1u;
    return r0;
}

// FUN_005770b4
u32 W_5770b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_128308_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4 + 132) = r0;
    if (fa == fb) r0 = 2u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00579634
void W_579634(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082d370;
    r1 = *(u32*)(r0 + 140);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_579668;
    r0 = Fn_5799a4_3(r0, r1, r2);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 140);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_579668:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005796b8
u32 W_5796b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1 + (r0 << 4);
    r0 = r0 + 55u;
    r0 = r0 & ~31u;
    return r0;
}

// FUN_00579b50
u32 W_579b50(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + (r0 << 1);
    r0 = r2 + (r0 << 4);
    r0 = r1 + (r0 << 3);
    r0 = r0 + 24u;
    return r0;
}

// FUN_0057a02c
void W_57a02c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 48);
    r2 = r2 & ~267386880u;
    r2 = r2 & ~1044480u;
    r1 = r2 | (r1 << 12);
    *(u32*)(r0 + 48) = r1;
    return;
}

// FUN_0057d1d4
u32 W_57d1d4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 3);
    r0 = r0 + (r1 << 1);
    r0 = r0 + 8u;
    return r0;
}

// FUN_0057d3e0
void W_57d3e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 24) = r1;
    return;
}

// FUN_0057d3f0
void W_57d3f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 24) = r1;
    return;
}

// FUN_0057fc78
void W_57fc78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_583488_1(r0);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1 + 24) = r0;
    r0 = *(u16*)(r1 + 22);
    r0 = r0 | 1u;
    *(u16*)(r1 + 22) = r0;
    return;
}

// FUN_0057fd30
void W_57fd30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082d3d0;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = Fn_5799a4_2(r0, r1);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 12);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0057fd68
u32 W_57fd68(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = (u32)g_0082d3d0;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 12);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    return r0;
}

// FUN_005811fc
void W_5811fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 4);
    r3 = 28u;
    r1 = r3 & (r1 << 2);
    r2 = r2 & ~28u;
    r1 = r1 | r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_00581258
void W_581258(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 4);
    r1 = r1 & 3u;
    r2 = r2 & ~3u;
    r1 = r1 | r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_0058167c
void W_58167c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = Fn_5898dc_1(r0);
    r4 = 0u;
    L_58168c:;
    r0 = r4 + (r4 << 3);
    r0 = r5 + (r0 << 1);
    r0 = r0 + 80u;
    r0 = Fn_58964c_1(r0);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_58168c;
    return;
}

// FUN_005816ac
void W_5816ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = Fn_57f690_1(r0);
    r4 = 0u;
    L_5816bc:;
    r0 = r4 + (r4 << 3);
    r0 = r5 + (r0 << 1);
    r0 = r0 + 80u;
    r0 = Fn_58964c_1(r0);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_5816bc;
    return;
}

// FUN_005816dc
u32 W_5816dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 7u;
    r0 = r0 & ~3u;
    return r0;
}

// FUN_00582c40
u32 W_582c40() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b86a0;
    r0 = *(signed char*)(r0 + 2);
    return r0;
}

// FUN_00582c94
u32 W_582c94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0);
    r0 = Fn_4e7d30_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 8u;
    if (fa == fb) goto L_582ce8;
    r0 = Fn_4e7d30_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_582cd4;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0 + 16);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 14u;
    if (fa == fb) goto L_582ce8;
    L_582cd4:;
    r0 = Fn_4e7d68_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 9u;
    if (fa != fb) r0 = 0u;
    L_582ce8:;
    return r0;
}

// FUN_00588e50
u32 W_588e50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = (u32)g_008bb5ac;
    r0 = *(u32*)(r5);
    r0 = Fn_63e7c4_1(r0);
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_588eac;
    fa = r4; fb = 0u;
    if ((int)fa < (int)fb) goto L_588eac;
    r0 = *(u32*)(r5);
    r0 = Fn_63e7c4_1(r0);
    fa = r0; fb = r4;
    if ((int)fa <= (int)fb) goto L_588eac;
    r0 = *(u32*)(r5);
    r1 = r4;
    r0 = Fn_63ebe4_2(r0, r1);
    r0 = Fn_63e370_1(r0);
    fa = r0; fb = 1u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_588eb0;
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_588eb0;
    L_588eac:;
    r0 = 2u;
    L_588eb0:;
    return r0;
}

// FUN_00589520
void W_589520(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = (u32)g_0082d57c;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 52);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = (u32)g_0082d3d0;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 12);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0058957c
u32 W_58957c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = (u32)g_0082d57c;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 52);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = (u32)g_0082d3d0;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 12);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    return r0;
}

// FUN_00589c4c
void W_589c4c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 44);
    r1 = r1 & 31u;
    r2 = r2 & ~31u;
    r1 = r1 | r2;
    *(u32*)(r0 + 44) = r1;
    return;
}

// FUN_00589c64
void W_589c64(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r1 = *(u32*)(r0 + 40);
    if (fa != fb) r1 = r1 | 1u;
    if (fa == fb) r1 = r1 & ~1u;
    *(u32*)(r0 + 40) = r1;
    return;
}

// FUN_00589cf4
void W_589cf4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 40);
    r2 = r2 & ~256u;
    r2 = r2 & ~254u;
    r1 = r2 | (r1 << 1);
    *(u32*)(r0 + 40) = r1;
    return;
}

// FUN_00589d0c
void W_589d0c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 44);
    r3 = 31457280u;
    r1 = r3 & (r1 << 21);
    r2 = r2 & ~31457280u;
    r1 = r1 | r2;
    *(u32*)(r0 + 44) = r1;
    return;
}

// FUN_00589e30
u32 W_589e30(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 9998u;
    fa = r1; fb = r2;
    if ((int)fa <= (int)fb) *(u16*)(r0 + 2) = r1;
    if ((int)fa > (int)fb) r0 = 0u;
    if ((int)fa <= (int)fb) r0 = 1u;
    return r0;
}

// FUN_00589e4c
u32 W_589e4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 9998u;
    fa = r0; fb = r1;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa > (int)fb) r0 = 0u;
    return r0;
}

// FUN_00589e78
u32 W_589e78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 900u;
    if ((int)fa < (int)fb) r0 = 1u;
    if ((int)fa >= (int)fb) r0 = 0u;
    return r0;
}

// FUN_0058a2dc
void W_58a2dc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = (u32)g_0082d58c;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 44);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = (u32)g_0082d3d0;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 12);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0058a338
u32 W_58a338(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = (u32)g_0082d58c;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 44);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = (u32)g_0082d3d0;
    *(u32*)(r4) = r0;
    r0 = Fn_5799a4_1(r0);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 12);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = r4;
    return r0;
}

// FUN_0058af78
void W_58af78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082d5ac;
    r1 = *(u32*)(r0 + 144);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_58afac;
    r0 = Fn_5799a4_3(r0, r1, r2);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r4 + 144);
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_58afac:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0058b0a8
u32 W_58b0a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 2);
    r0 = r0 + (r1 << 2);
    r0 = r0 + 212992u;
    r0 = *(u32*)(r0 + 168);
    return r0;
}

// FUN_0058b87c
u32 W_58b87c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 3);
    r0 = r0 + (r1 << 3);
    r0 = r0 + 212992u;
    r0 = r0 + 792u;
    r0 = *(signed char*)(r0 + 68);
    return r0;
}

// FUN_0058b9ac
void W_58b9ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 3);
    r0 = r0 + (r1 << 3);
    r4 = r0 + 212992u;
    r4 = r4 + 792u;
    r5 = r2;
    r0 = *(u32*)(r4 + 64);
    r1 = r2;
    r0 = Fn_0424fc_3(r0, r1, r2);
    *(u8*)(r4 + 68) = r5;
    return;
}

// FUN_0058c3f4
void W_58c3f4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 3);
    r0 = r0 + (r1 << 3);
    r0 = r0 + 212992u;
    *(u32*)(r0 + 832) = r2;
    return;
}

// FUN_0058c7d8
u32 W_58c7d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 196608u;
    r0 = r0 + 22016u;
    r0 = *(u8*)(r0 + 196);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_0058c7f4
void W_58c7f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 218112u;
    r0 = r0 + 708u;
    r1 = r1 ^ 1u;
    *(u8*)(r0) = r1;
    return;
}

// FUN_0058c808
u32 W_58c808(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + (r1 << 3);
    r0 = r0 + (r1 << 3);
    r0 = r0 + 212992u;
    r0 = *(u32*)(r0 + 836);
    return r0;
}

// FUN_00594a14
void W_594a14(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 120);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_594a38;
    r1 = *(u32*)(r0 + 112);
    fx = r1 & 4u;
    if (fx != 0) goto L_594a38;
    r1 = r1 & ~2u;
    r1 = r1 | 4u;
    *(u32*)(r0 + 112) = r1;
    L_594a38:;
    return;
}

// FUN_00596618
u32 W_596618(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0059670c
u32 W_59670c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0 + 24);
    r0 = *(u32*)(r4 + 40);
    r0 = Fn_6400a4_1(r0);
    r5 = r0;
    r0 = *(u32*)(r4 + 36);
    r0 = Fn_6400a4_1(r0);
    r0 = r0 + r5;
    return r0;
}

// FUN_00597f0c
u32 W_597f0c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab49c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_597f28;
    r0 = *(u32*)(r0 + 1876);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    L_597f28:;
    return r0;
}

// FUN_0059a920
u32 W_59a920(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_009a3d8c;
    fa = r0; fb = 2u;
    if (fa >= fb) r0 = 0u;
    r0 = r1 + (r0 << 5);
    return r0;
}

// FUN_0059ab04
void W_59ab04(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 4);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_59ab50;
    r2 = *(u32*)(r0 + 12);
    r1 = *(u32*)(r0 + 16);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_59ab30;
    fa = r1; fb = 0u;
    *(u32*)(r2 + 16) = r1;
    if (fa == fb) goto L_59ab40;
    goto L_59ab3c;
    L_59ab30:;
    fa = r1; fb = 0u;
    *(u32*)(r3 + 8) = r1;
    if (fa == fb) goto L_59ab40;
    L_59ab3c:;
    *(u32*)(r1 + 12) = r2;
    L_59ab40:;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 12) = r1;
    *(u32*)(r0 + 16) = r1;
    L_59ab50:;
    return;
}

// FUN_0059ab54
void W_59ab54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    L_59ab58:;
    fa = r1; fb = 0u;
    if ((int)fa <= (int)fb) goto L_59ab70;
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 16);
    if (fa != fb) r1 = r1 - 1u;
    if (fa != fb) goto L_59ab58;
    L_59ab70:;
    return;
}

// FUN_0059b540
u32 W_59b540(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_59b558;
    r1 = r0 - 1u;
    fx = r0 & r1;
    if (fx == 0) r0 = 1u;
    if (fx != 0) r0 = 0u;
    L_59b558:;
    return r0;
}

// FUN_005a38e0
void W_5a38e0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = (u32)g_008ab4c4;
    r4 = *(u32*)(r5);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5a3944;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5a3934;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    r0 = *(u32*)(r4);
    if (r1 != 0) goto L_5a3934;
    r1 = *(u32*)(r4 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_5a3934;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5a3934;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_5a3934:;
    r0 = r4;
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r5) = r0;
    L_5a3944:;
    return;
}

// FUN_005a4bc0
void W_5a4bc0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 8);
    r0 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 24);
    r1 = r1 << 2;
    { Fn_01a4d4_2(r0, r1); return; }
}

// FUN_005a4f7c
void W_5a4f7c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    *(u32*)(r0 + 228) = r1;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 32);
    r0 = ((u32(*)(u32))r1)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5a4fac;
    r0 = *(u32*)(r0);
    r1 = r4;
    { Fn_5b0358_2(r0, r1); return; }
    L_5a4fac:;
    return;
}

// FUN_005a506c
void W_5a506c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 140);
    r2 = r2 & ~1u;
    r1 = r1 | r2;
    *(u32*)(r0 + 140) = r1;
    return;
}

// FUN_005a54a4
void W_5a54a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5a54c8;
    L_5a54b4:;
    r4 = *(u32*)(r0 + 16);
    r0 = Fn_5a579c_1(r0);
    r0 = r4;
    if (r0 != 0) goto L_5a54b4;
    L_5a54c8:;
    return;
}

// FUN_005a5630
u32 W_5a5630(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0 + 8);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5a5670;
    L_5a5640:;
    r5 = *(u32*)(r4 + 16);
    r0 = r4;
    r0 = Fn_59ab04_1(r0);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5a5668;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0 + 4);
    r0 = r4;
    r0 = ((u32(*)(u32))r1)(r0);
    L_5a5668:;
    r4 = r5;
    if (r4 != 0) goto L_5a5640;
    L_5a5670:;
    return r0;
}

// FUN_005a579c
void W_5a579c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5a57c4;
    L_5a57b0:;
    r4 = *(u32*)(r0 + 16);
    r0 = Fn_5a579c_1(r0);
    r0 = r4;
    if (r0 != 0) goto L_5a57b0;
    L_5a57c4:;
    r0 = r5;
    r2 = 0u;
    r1 = (u32)g_009a4970;
    { Fn_0206d0_3(r0, r1, r2); return; }
}

// FUN_005a6fd0
void W_5a6fd0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 9u;
    if (fa >= fb) return;
    r4 = r0 + (r1 << 2);
    r0 = *(u32*)(r4 + 440);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5a6ff8;
    r0 = Fn_5a579c_2(r0, r1);
    r0 = 0u;
    *(u32*)(r4 + 440) = r0;
    L_5a6ff8:;
    return;
}

// FUN_005a83d8
u32 W_5a83d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = 2028u;
    r2 = 16u;
    r1 = 0u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_5a8420;
    r0 = Fn_5a880c_1(r0);
    r4 = r0;
    if (r4 == 0) goto L_5a8420;
    r1 = (u32)g_009a4798;
    r2 = ~0u;
    r0 = Fn_02073c_3(r0, r1, r2);
    r1 = r5;
    r0 = r4;
    r0 = Fn_5a8268_2(r0, r1);
    L_5a8420:;
    r0 = r4;
    return r0;
}

// FUN_005a87dc
void W_5a87dc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + r1;
    *(u8*)(r0 + 428) = r2;
    return;
}

// FUN_005acab8
void W_5acab8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 24);
    fa = r2; fb = r1;
    if (fa > fb) r0 = 0u;
    if (fa > fb) goto L_5acad0;
    r1 = r1 - r2;
    { Fn_5ac3fc_3(r0, r1, r2); return; }
    L_5acad0:;
    return;
}

// FUN_005aecf4
void W_5aecf4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r2 + 4);
    if (fa == fb) *(u32*)(r0 + 360) = r1;
    if (fa == fb) goto L_5aed10;
    fa = r1; fb = 2u;
    if (fa == fb) r1 = *(u32*)(r2 + 4);
    if (fa == fb) *(u32*)(r0 + 364) = r1;
    L_5aed10:;
    return;
}

// FUN_005afe78
u32 W_5afe78(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 328u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_5afeb8;
    r0 = Fn_5afec8_1(r0);
    r4 = r0;
    if (r4 == 0) goto L_5afeb8;
    r1 = (u32)g_009a4798;
    r2 = ~0u;
    r0 = Fn_02073c_3(r0, r1, r2);
    *(u32*)(r4 + 244) = r5;
    L_5afeb8:;
    r0 = r4;
    return r0;
}

// FUN_005b00f4
u32 W_5b00f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 304u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) r4 = 0u;
    if (fa == fb) goto L_5b0134;
    r1 = 1074462720u;
    r0 = Fn_5b0148_2(r0, r1);
    r4 = r0;
    if (r4 == 0) goto L_5b0134;
    r2 = ~0u;
    r1 = r5;
    r0 = Fn_02073c_3(r0, r1, r2);
    L_5b0134:;
    r0 = r4;
    return r0;
}

// FUN_005b0a24
void W_5b0a24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa > fb) r0 = 0u;
    if (fa > fb) goto L_5b0a3c;
    r1 = r1 - r2;
    { Fn_5b022c_3(r0, r1, r2); return; }
    L_5b0a3c:;
    return;
}

// FUN_005b1268
void W_5b1268() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a420c;
    r0 = *(u32*)(r4 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5b1290;
    L_5b127c:;
    r1 = r0;
    r0 = Fn_016038_2(r0, r1);
    r0 = *(u32*)(r4 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_5b127c;
    L_5b1290:;
    return;
}

// FUN_005b129c
u32 W_5b129c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_6400a4_0();
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) r0 = 1u;
    if ((int)fa > (int)fb) r0 = 0u;
    return r0;
}

// FUN_005b12b8
void W_5b12b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5b12e4;
    L_5b12cc:;
    r0 = *(u32*)(r4 + 8);
    r1 = r0;
    r0 = Fn_016038_2(r0, r1);
    r0 = *(u32*)(r4 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_5b12cc;
    L_5b12e4:;
    return;
}

// FUN_005b13fc
void W_5b13fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 20);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = r1 - 1u;
    if (fa != fb) *(u32*)(r0 + 20) = r1;
    return;
}

// FUN_005b1418
void W_5b1418(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if ((int)fa > (int)fb) *(u16*)(r0 + 24) = r1;
    return;
}

// FUN_005b1594
u32 W_5b1594(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 3);
    r0 = r0 + 12u;
    return r0;
}

// FUN_005b1b38
u32 W_5b1b38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 116);
    return r0;
}

// FUN_005b1fb8
u32 W_5b1fb8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_641be4_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5b1fd8;
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 48);
    if (fa != fb) r0 = r1;
    L_5b1fd8:;
    return r0;
}

// FUN_005b37dc
u32 W_5b37dc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r1;
    r0 = *(u32*)(r0 + 8);
    r4 = r0;
    if (r4 == 0) goto L_5b3830;
    r0 = *(u32*)(r4 + 28);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5b3808;
    r0 = *(u32*)(r4 + 596);
    fx = r0 & 2u;
    if (fx == 0) goto L_5b3830;
    L_5b3808:;
    r1 = r5 + 4u;
    r0 = r4 + 16u;
    r0 = Fn_02aca0_2(r0, r1);
    r0 = r5 + 4u;
    r0 = Fn_02a218_1(r0);
    *(u32*)(r4 + 28) = r0;
    r0 = *(u32*)(r4 + 596);
    r0 = r0 | 2u;
    *(u32*)(r4 + 596) = r0;
    L_5b3830:;
    return r0;
}

// FUN_005ba758
u32 W_5ba758(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 8);
    *(u32*)(r3 + 4) = r2;
    r2 = *(u32*)(r0 + 8);
    *(u32*)(r2) = r1;
    r0 = *(u32*)(r0 + 8);
    r1 = 0u;
    r0 = Fn_6663a4_4(r0, r1, r2, r3);
    fa = r0; fb = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_005ba9d8
u32 W_5ba9d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 88);
    r2 = *(u32*)(r1 + 8);
    fa = r3; fb = r2;
    if (fa != fb) goto L_5ba9f8;
    r3 = *(u32*)(r0 + 148);
    *(u32*)(r0 + 140) = r2;
    r2 = r3 - 1u;
    *(u32*)(r0 + 148) = r2;
    L_5ba9f8:;
    r1 = *(u32*)(r1 + 8);
    r2 = *(u32*)(r0 + 92);
    fa = r2; fb = r1;
    if (fa != fb) goto L_5baa18;
    r2 = *(u32*)(r0 + 148);
    *(u32*)(r0 + 144) = r1;
    r1 = r2 - 1u;
    *(u32*)(r0 + 148) = r1;
    L_5baa18:;
    r0 = 1u;
    return r0;
}

// FUN_005baa20
void W_5baa20(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r4 = r0 + (r1 << 2);
    if (fa >= fb) goto L_5baa40;
    r0 = r2;
    *(u32*)(r4 + 100) = r2;
    r0 = Fn_5ad1d0_3(r0, r1, r2);
    *(u32*)(r4 + 108) = r0;
    L_5baa40:;
    return;
}

// FUN_005bb1c4
u32 W_5bb1c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_5bb488_1(r0);
    r0 = r4;
    r0 = Fn_5bae94_1(r0);
    r0 = *(u8*)(r4 + 68);
    fa = r0; fb = 1u;
    if (fa == fb) goto L_5bb1fc;
    fa = r0; fb = 2u;
    if (fa == fb) goto L_5bb210;
    fa = r0; fb = 3u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_5bb228_1(r0);
    goto L_5bb220;
    L_5bb1fc:;
    r0 = *(u8*)(r4 + 176);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3u;
    if (fa == fb) *(u8*)(r4 + 68) = r0;
    goto L_5bb220;
    L_5bb210:;
    r0 = *(u8*)(r4 + 176);
    fa = r0; fb = 3u;
    if (fa == fb) r0 = r4;
    if (fa == fb) r0 = Fn_5bac6c_1(r0);
    L_5bb220:;
    r0 = 1u;
    return r0;
}
