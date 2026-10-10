// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
extern char g_008bfa44[];
extern char g_0079ec00[];
u32 Fn_361a68_3(u32, u32, u32);
u32 Fn_3767fc_1(u32);
extern char g_0079eb38[];
u32 Fn_37d4ac_2(u32, u32);
u32 Fn_380fd8_3(u32, u32, u32);
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_36725c_1(u32);
u32 Fn_3673d8_3(u32, u32, u32);
u32 Fn_3675cc_2(u32, u32);
u32 Fn_3676b4_1(u32);
extern char g_0089a384[];
u32 Fn_021ccc_1(u32);
u32 Fn_021ccc_4(u32, u32, u32, u32);
extern char g_00823b28[];
u32 Fn_58d5b8_0();
u32 Fn_1fcd88_1(u32);
u32 Fn_449244_1(u32);
u32 Fn_60e24c_2(u32, u32);
u32 Fn_5db4b4_3(u32, u32, u32);
u32 Fn_6345e8_2(u32, u32);
u32 Fn_5bc688_2(u32, u32);
extern char g_00890d18[];
u32 Fn_5bc570_2(u32, u32);
u32 Fn_5bc6c0_2(u32, u32);
u32 Fn_4ed8ac_1(u32);
u32 Fn_0238e8_4(u32, u32, u32, u32);
extern char g_008ab280[];
u32 Fn_660bf8_2(u32, u32);
u32 Fn_6691d0_2(u32, u32);
u32 Fn_542324_2(u32, u32);
u32 Fn_5423c8_2(u32, u32);
u32 Fn_566810_1(u32);
u32 Fn_59cb38_3(u32, u32, u32);
u32 Fn_5a4ebc_3(u32, u32, u32);
u32 Fn_2aa77c_4(u32, u32, u32, u32);
u32 Fn_60c938_3(u32, u32, u32);
u32 Fn_577bcc_3(u32, u32, u32);

// FUN_0033a3a0
u32 W_33a3a0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_33a3b0;
    if (r1 < 192u) goto L_33a3b8;
    L_33a3b0:;
    r0 = 0u;
    return r0;
    L_33a3b8:;
    r0 = r0 + 60u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0033a3d4
u32 W_33a3d4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_33a3e4;
    if (r1 < 192u) goto L_33a3ec;
    L_33a3e4:;
    r0 = 0u;
    return r0;
    L_33a3ec:;
    r0 = r0 + 12u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0035d714
u32 W_35d714(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r12;
    r1 = (u32)g_008bfa44;
    r1 = *(u32*)(r1);
    r1 = *(u8*)(r1 + 44);
    if (r1 != 0u) goto L_35d74c;
    r1 = 1u;
    *(u32*)(r0 + 144) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 6u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_35d74c:;
    r0 = 1u;
    return r0;
}

// FUN_00361544
u32 W_361544(u32 a0) {
    u32 r0 = a0, r1, r2, r4, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 160);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 16u;
    if (fa == fb) goto L_3615b0;
    if (r0 == 16u) goto L_361590;
    r2 = (u32)g_0079ec00;
    fa = r0; fb = 4096u;
    if (fa == fb) { r0 = *(u32*)(r2 + 24); r1 = *(u32*)(r2 + 24 + 4); }
    if (fa == fb) goto L_361588;
    if (r0 != 8192u) goto L_36158c;
    r0 = 140u;
    *(u32*)(r4 + 112) = r0;
    r0 = *(u32*)(r2 + 32); r1 = *(u32*)(r2 + 32 + 4);
    L_361588:;
    *(u32*)(r4 + 152) = r0; *(u32*)(r4 + 152 + 4) = r1;
    L_36158c:;
    return r0;
    L_361590:;
    r0 = r4;
    r0 = Fn_361a68_3(r0, r1, r2);
    r0 = Fn_3767fc_1(r0);
    r1 = 1u;
    *(u8*)(r0 + 20) = r1;
    r0 = 8192u;
    L_3615b0:;
    *(u32*)(r4 + 160) = r0;
    return r0;
}

// FUN_00365de4
void W_365de4(u32 a0, u32 a1, u32 a2) {
    u32 r1 = a1, r2 = a2, r3, r12, fa, fb;
    if (r1 == 8u) goto L_365e14;
    fa = r1; fb = 9u;
    if (fa == fb) *(u32*)(a0 + 148) = r2;
    if (fa == fb) goto L_365e10;
    fa = r1; fb = 10u;
    if (fa == fb) r1 = 4096u;
    if (fa == fb) *(u32*)(a0 + 136) = r1;
    if (fa == fb) goto L_365e10;
    fa = r1; fb = 11u;
    if (fa == fb) *(u32*)(a0 + 156) = r2;
    L_365e10:;
    return;
    L_365e14:;
    r1 = 0u;
    *(u8*)(a0 + 144) = r1;
    r1 = *(u32*)(a0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 84);
    r1 = r3;
    { ((u32(*)(u32, u32, u32, u32))r12)(a0, r1, r2, r3); return; }
}

// FUN_003663cc
u32 W_3663cc(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r1_1, r0_2, r0_3, r2_1, r1_2, r0_4, r0_5, r0_6, r3_1, r2_2, r1_3, r12_1, r0_7, r0_8, r1_4, r0_9, r1_5;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 100);
    r1_1 = 1u;
    *(u8*)(r0_1 + 76) = r1_1;
    r0_2 = *(u32*)(r4_1 + 96);
    r0_3 = Fn_37d4ac_2(r0_2, r1_1);
    r2_1 = *(u32*)(r4_1 + 108);
    r1_2 = r0_3;
    r0_4 = r2_1;
    r0_5 = Fn_380fd8_3(r0_4, r1_2, r2_1);
    r0_6 = *(u32*)(r4_1);
    r3_1 = 0u;
    r2_2 = r3_1;
    r1_3 = r3_1;
    r12_1 = *(u32*)(r0_6 + 84);
    r0_7 = r4_1;
    r0_8 = ((u32(*)(u32, u32, u32, u32))r12_1)(r0_7, r1_3, r2_2, r3_1);
    r1_4 = (u32)g_0079eb38;
    r0_9 = *(u32*)(r1_4 + 48); r1_5 = *(u32*)(r1_4 + 48 + 4);
    *(u32*)(r4_1 + 180) = r0_9; *(u32*)(r4_1 + 180 + 4) = r1_5;
    return r0_9;
}

// FUN_00366f40
u32 W_366f40(u32 a0) {
    u32 r0 = a0, r1, r2, r4, fa, fb;
    r4 = r0;
    r0 = 954232u;
    r2 = 16u;
    r1 = 0u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 != 0u) r0 = Fn_36725c_1(r0);
    *(u32*)(r4 + 108) = r0;
    r2 = 16u;
    r1 = 0u;
    r0 = 52u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    if (r0 != 0u) r0 = Fn_3676b4_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4 + 104) = r0;
    if (fa == fb) r0 = 2u;
    if (fa == fb) goto L_366fb4;
    r2 = 1u;
    r1 = 0u;
    r0 = Fn_3673d8_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 104); r1 = *(u32*)(r4 + 104 + 4);
    *(u32*)(r0 + 48) = r1;
    r0 = *(u32*)(r4 + 104);
    r0 = Fn_3675cc_2(r0, r1);
    r0 = *(u32*)(r4 + 104); r1 = *(u32*)(r4 + 104 + 4);
    *(u32*)(r1) = r0;
    r0 = 1u;
    L_366fb4:;
    return r0;
}

// FUN_00384a9c
u32 W_384a9c(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_384aac;
    if (r1 < 122u) goto L_384ab4;
    L_384aac:;
    r0 = 0u;
    return r0;
    L_384ab4:;
    r0 = r0 + 212u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00384ad0
u32 W_384ad0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_384ae0;
    if (r1 < 180u) goto L_384ae8;
    L_384ae0:;
    r0 = 0u;
    return r0;
    L_384ae8:;
    r0 = r0 + 256u;
    r0 = r0 + 11u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00384ea0
u32 W_384ea0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_384eb0;
    if (r1 < 180u) goto L_384eb8;
    L_384eb0:;
    r0 = 0u;
    return r0;
    L_384eb8:;
    r0 = r0 + 244u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_00384fc4
u32 W_384fc4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_384fd4;
    if (r1 <= 484u) goto L_384fdc;
    L_384fd4:;
    r0 = 0u;
    return r0;
    L_384fdc:;
    r0 = r0 + 90u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0038899c
u32 W_38899c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, fx;
    r0 = r0 + 12u;
    if (r1 >= 4u) goto L_3889c0;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    fx = r0 & (r2 << (r1 & 255));
    if (fx != 0) r0 = 1u;
    if (fx != 0) goto L_3889c4;
    L_3889c0:;
    r0 = 0u;
    L_3889c4:;
    return r0;
}

// FUN_0039c648
u32 W_39c648(u32 a0, u32 a1) {
    u32 r0, r2, fa, fb;
    fa = a1; fb = 32u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_39c664;
    r0 = *(u32*)(r0 + 12);
    r2 = 1u;
    r0 = r0 & (r2 << (a1 & 255));
    if (r0 != 0) r0 = 1u;
    L_39c664:;
    return r0;
}

// FUN_0039d050
void W_39d050(u32 a0, u32 a1) {
    u32 r1 = a1, r2, r3;
    if (r1 == 0u) goto L_39d070;
    r2 = *(u32*)(r1); r3 = *(u32*)(r1 + 4);
    *(u32*)(a0 + 8) = r2; *(u32*)(a0 + 8 + 4) = r3;
    r2 = *(u8*)(r1 + 8);
    *(u8*)(a0 + 16) = r2;
    r1 = *(u8*)(r1 + 9);
    *(u8*)(a0 + 17) = r1;
    L_39d070:;
    return;
}

// FUN_003a5888
void W_3a5888(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1, r2 = a2, r3 = a3, r4, r5, r6;
    r4 = r0;
    r5 = r2;
    r6 = r3;
    r0 = r0 + 100u;
    r0 = Fn_021ccc_1(r0);
    r2 = *(u32*)(r4 + 100); r3 = *(u32*)(r4 + 100 + 4);
    r0 = r4 + 116u;
    r1 = r5;
    *(u32*)(r4 + 108) = r2; *(u32*)(r4 + 108 + 4) = r3;
    r0 = Fn_021ccc_4(r0, r1, r2, r3);
    r1 = (u32)g_0089a384;
    r0 = r4 + 100u;
    *(u32*)(r4 + 124) = r6;
    *(u32*)(r1) = r0;
    return;
}

// FUN_003ee870
void W_3ee870(u32 a0) {
    u32 r0 = a0, r1, r4, r5, fa, fb;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) { r4 = *(u32*)(r0 + 4); r5 = *(u32*)(r0 + 4 + 4); }
    if (fa != fb) { fa = r4; fb = r5; }
    if (fa == fb) goto L_3ee8a4;
    L_3ee888:;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r4 = r4 + 4u;
    if (r4 != r5) goto L_3ee888;
    L_3ee8a4:;
    return;
}

// FUN_003ff854
void W_3ff854(u32 a0, u32 a1) {
    u32 r2_1, r3_1, r2_2, r2_3, r2_4, r2_5, r2_6, r2_7, r2_8, r2_9, r2_10, r2_11, r2_12, r2_13, r2_14, r0_1;
    r2_1 = *(u32*)(a0 + 16); r3_1 = *(u32*)(a0 + 16 + 4);
    *(u32*)(a1) = r2_1; *(u32*)(a1 + 4) = r3_1;
    r2_2 = *(u32*)(a0 + 28);
    *(u32*)(a1 + 8) = r2_2;
    r2_3 = *(u32*)(a0 + 640);
    *(u32*)(a1 + 12) = r2_3;
    r2_4 = *(u32*)(a0 + 32);
    *(u32*)(a1 + 16) = r2_4;
    r2_5 = *(u32*)(a0 + 36);
    *(u32*)(a1 + 20) = r2_5;
    r2_6 = *(u32*)(a0 + 648);
    *(u32*)(a1 + 24) = r2_6;
    r2_7 = *(u32*)(a0 + 656);
    *(u32*)(a1 + 28) = r2_7;
    r2_8 = *(u32*)(a0 + 40);
    *(u32*)(a1 + 32) = r2_8;
    r2_9 = *(u32*)(a0 + 44);
    *(u32*)(a1 + 36) = r2_9;
    r2_10 = *(u32*)(a0 + 48);
    *(u32*)(a1 + 40) = r2_10;
    r2_11 = *(u32*)(a0 + 52);
    *(u32*)(a1 + 44) = r2_11;
    r2_12 = *(u32*)(a0 + 56);
    *(u32*)(a1 + 48) = r2_12;
    r2_13 = *(u32*)(a0 + 580);
    *(u32*)(a1 + 52) = r2_13;
    r2_14 = *(u32*)(a0 + 1240);
    *(u32*)(a1 + 56) = r2_14;
    r0_1 = *(u32*)(a0 + 584);
    *(u32*)(a1 + 60) = r0_1;
    return;
}

// FUN_003ff9f8
void W_3ff9f8(u32 a0, u32 a1) {
    u32 r2_1, r3_1, r2_2, r2_3, r2_4, r2_5, r2_6, r2_7, r2_8, r2_9, r2_10, r2_11, r2_12, r2_13, r2_14, r1_1;
    r2_1 = *(u32*)(a1); r3_1 = *(u32*)(a1 + 4);
    *(u32*)(a0 + 16) = r2_1; *(u32*)(a0 + 16 + 4) = r3_1;
    r2_2 = *(u32*)(a1 + 8);
    *(u32*)(a0 + 28) = r2_2;
    r2_3 = *(u32*)(a1 + 12);
    *(u32*)(a0 + 640) = r2_3;
    r2_4 = *(u32*)(a1 + 16);
    *(u32*)(a0 + 32) = r2_4;
    r2_5 = *(u32*)(a1 + 20);
    *(u32*)(a0 + 36) = r2_5;
    r2_6 = *(u32*)(a1 + 24);
    *(u32*)(a0 + 648) = r2_6;
    r2_7 = *(u32*)(a1 + 28);
    *(u32*)(a0 + 656) = r2_7;
    r2_8 = *(u32*)(a1 + 32);
    *(u32*)(a0 + 40) = r2_8;
    r2_9 = *(u32*)(a1 + 36);
    *(u32*)(a0 + 44) = r2_9;
    r2_10 = *(u32*)(a1 + 40);
    *(u32*)(a0 + 48) = r2_10;
    r2_11 = *(u32*)(a1 + 44);
    *(u32*)(a0 + 52) = r2_11;
    r2_12 = *(u32*)(a1 + 48);
    *(u32*)(a0 + 56) = r2_12;
    r2_13 = *(u32*)(a1 + 52);
    *(u32*)(a0 + 580) = r2_13;
    r2_14 = *(u32*)(a1 + 56);
    *(u32*)(a0 + 1240) = r2_14;
    r1_1 = *(u32*)(a1 + 60);
    *(u32*)(a0 + 584) = r1_1;
    return;
}

// FUN_00403c60
void W_403c60(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4, r5, r6, fa, fb;
    r6 = r1;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if (fa != fb) { r4 = *(u32*)(r0 + 4); r5 = *(u32*)(r0 + 4 + 4); }
    if (fa != fb) { fa = r4; fb = r5; }
    if (fa == fb) goto L_403cc8;
    L_403c7c:;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 44);
    r0 = ((u32(*)(u32))r1)(r0);
    if (r0 != r6) goto L_403cbc;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 48);
    r0 = ((u32(*)(u32))r1)(r0);
    if (r0 != 0u) goto L_403cbc;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 40);
    r0 = ((u32(*)(u32))r1)(r0);
    L_403cbc:;
    r4 = r4 + 4u;
    if (r4 != r5) goto L_403c7c;
    L_403cc8:;
    return;
}

// FUN_00403ccc
void W_403ccc(u32 a0) {
    u32 r0 = a0, r1, r4, r5, fa, fb;
    r0 = *(u32*)(r0 + 16);
    fa = r0; fb = 0u;
    if (fa != fb) { r4 = *(u32*)(r0 + 4); r5 = *(u32*)(r0 + 4 + 4); }
    if (fa != fb) { fa = r4; fb = r5; }
    if (fa == fb) goto L_403d00;
    L_403ce4:;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 24);
    r0 = ((u32(*)(u32))r1)(r0);
    r4 = r4 + 4u;
    if (r4 != r5) goto L_403ce4;
    L_403d00:;
    return;
}

// FUN_00403f80
void W_403f80(u32 a0, u32 a1, u32 a2) {
    u32 r4_1, r5_1, r0_1, r1_1;
    r4_1 = a1;
    r5_1 = a2;
    r0_1 = Fn_58d5b8_0();
    r1_1 = (u32)g_00823b28;
    *(u32*)(r0_1) = r1_1;
    *(u32*)(r0_1 + 68) = r4_1; *(u32*)(r0_1 + 68 + 4) = r5_1;
    return;
}

// FUN_00448254
void W_448254(u32 a0) {
    u32 r0 = a0, r4, r5, r6, r7;
    r5 = r0;
    r0 = Fn_449244_1(r0);
    r4 = *(u32*)(r5 + 212); r5 = *(u32*)(r5 + 212 + 4);
    r6 = 0u;
    r7 = r6;
    L_44826c:;
    r0 = *(u32*)(r4);
    if (r0 == 0u) goto L_448280;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r4) = r7;
    L_448280:;
    r0 = *(u32*)(r5);
    if (r0 == 0u) goto L_448294;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r5) = r7;
    L_448294:;
    r6 = r6 + 1u;
    r4 = r4 + 4u;
    r5 = r5 + 4u;
    if ((int)r6 < 4) goto L_44826c;
    return;
}

// FUN_00452520
void W_452520(u32 a0) {
    u32 r1, r2, r3, r12;
    r1 = *(u32*)(a0);
    r2 = *(u32*)(a0 + 148);
    r3 = 0u;
    r12 = *(u32*)(r1 + 84);
    if (r2 == 12u) goto L_452540;
    r1 = 3u;
    { ((u32(*)(u32, u32, u32, u32))r12)(a0, r1, r2, r3); return; }
    L_452540:;
    r2 = 8u;
    r1 = 3u;
    { ((u32(*)(u32, u32, u32, u32))r12)(a0, r1, r2, r3); return; }
}

// FUN_00464730
void W_464730(u32 a0) {
    u32 r1_1, r2_1, r3_1, r12_1;
    r1_1 = 0u;
    *(u8*)(a0) = r1_1;
    *(u8*)(a0 + 1) = r1_1;
    *(u8*)(a0 + 2) = r1_1;
    *(u8*)(a0 + 3) = r1_1;
    *(u8*)(a0 + 4) = r1_1;
    r2_1 = 4u;
    r3_1 = 5u;
    *(u32*)(a0 + 8) = r1_1;
    r12_1 = 1u;
    *(u32*)(a0 + 12) = r2_1; *(u32*)(a0 + 12 + 4) = r3_1;
    *(u16*)(a0 + 20) = r12_1;
    *(u32*)(a0 + 24) = r1_1;
    return;
}

// FUN_00464768
void W_464768(u32 a0) {
    u32 r1_1, r2_1, r3_1, r12_1;
    r1_1 = 0u;
    *(u8*)(a0) = r1_1;
    *(u8*)(a0 + 1) = r1_1;
    *(u8*)(a0 + 2) = r1_1;
    *(u8*)(a0 + 3) = r1_1;
    *(u8*)(a0 + 4) = r1_1;
    r2_1 = 4u;
    r3_1 = 5u;
    *(u32*)(a0 + 8) = r1_1;
    r12_1 = 1u;
    *(u32*)(a0 + 12) = r2_1; *(u32*)(a0 + 12 + 4) = r3_1;
    *(u16*)(a0 + 20) = r12_1;
    *(u32*)(a0 + 24) = r1_1;
    return;
}

// FUN_00471a6c
void W_471a6c(u32 a0, u32 a1) {
    u32 r4_1, r0_1, r0_2, r0_3, r1_1, stk[2];
    r4_1 = a0 + 8u;
    *(u8*)(a0 + 72) = a1;
    r0_1 = (u32)stk;
    r0_2 = Fn_60e24c_2(r0_1, a1);
    r0_3 = *(u32*)((u32)stk); r1_1 = *(u32*)((u32)stk + 4);
    *(u32*)(r4_1) = r0_3; *(u32*)(r4_1 + 4) = r1_1;
    return;
}

// FUN_00472320
void W_472320(u32 a0, u32 a1) {
    u32 r4_1, r0_1, r0_2, r0_3, r1_1, stk[2];
    r4_1 = a0 + 8u;
    *(u8*)(a0 + 73) = a1;
    r0_1 = (u32)stk;
    r0_2 = Fn_60e24c_2(r0_1, a1);
    r0_3 = *(u32*)((u32)stk); r1_1 = *(u32*)((u32)stk + 4);
    *(u32*)(r4_1) = r0_3; *(u32*)(r4_1 + 4) = r1_1;
    return;
}

// FUN_00496594
void W_496594(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, r5, fa, fb;
    r4 = r0;
    r0 = r0 + 16u;
    r5 = r1;
    fa = r0; fb = r5;
    if (fa != fb) goto L_4965c4;
    r2 = 0u;
    r0 = 16778010u;
    r1 = r2;
    r0 = Fn_5db4b4_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 176); r1 = *(u32*)(r4 + 176 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    L_4965c4:;
    r0 = r4 + 72u;
    fa = r0; fb = r5;
    if (fa != fb) goto L_4965f4;
    r2 = 0u;
    r0 = 16778011u;
    r1 = r2;
    r0 = Fn_5db4b4_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 184); r1 = *(u32*)(r4 + 184 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u8*)(r4 + 168) = r0;
    L_4965f4:;
    return;
}

// FUN_004989ec
u32 W_4989ec(u32 a0) {
    u32 r0 = a0, r1, r4, fa, fb;
    r1 = *(u32*)(r0 + 8);
    r0 = *(u32*)(r0 + 16);
    r4 = r1 + (r0 << 4);
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_6345e8_2(r0, r1);
    if (r0 != 0u) goto L_498a1c;
    r0 = *(u32*)(r4 + 8); r1 = *(u32*)(r4 + 8 + 4);
    fa = r0; fb = r1;
    if ((int)fa >= (int)fb) r0 = 1u;
    if ((int)fa >= (int)fb) goto L_498a20;
    L_498a1c:;
    r0 = 0u;
    L_498a20:;
    return r0;
}

// FUN_0049afcc
void W_49afcc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r12;
    r4 = r0;
    r0 = *(u32*)(r0 + 16);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 68);
    r1 = 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r4 = r4 + 16u; r0 = *(u32*)(r4);
    r3 = 0u;
    r1 = *(u32*)(r4 + 8);
    r2 = *(u32*)(r0);
    r12 = *(u32*)(r2 + 60);
    r2 = 1u;
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
}

// FUN_0049b008
void W_49b008(u32 a0) {
    u32 r0 = a0, r4_1, r0_1, r1_1, r2_1, r1_2, r0_2, r0_3, r1_3, r3_1, r2_2, r12_1, r2_3;
    r4_1 = r0;
    r0_1 = *(u32*)(r0 + 16);
    r1_1 = *(u32*)(r0_1);
    r2_1 = *(u32*)(r1_1 + 68);
    r1_2 = 1u;
    r0_2 = ((u32(*)(u32, u32))r2_1)(r0_1, r1_2);
    r0_3 = *(u32*)(r4_1 + 16); r1_3 = *(u32*)(r4_1 + 16 + 4);
    r3_1 = 0u;
    r2_2 = *(u32*)(r0_3);
    r12_1 = *(u32*)(r2_2 + 60);
    r2_3 = 1u;
    { ((u32(*)(u32, u32, u32, u32))r12_1)(r0_3, r1_3, r2_3, r3_1); return; }
}

// FUN_004a0aa8
void W_4a0aa8(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1, r2 = a2, r4, stk[2];
    r4 = r0;
    *(u32*)((u32)stk) = r2; *(u32*)((u32)stk + 4) = a3;
    r0 = *(u32*)(r0 + 4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    if (r0 != 0u) goto L_4a0ae0;
    r0 = *(u32*)(r4 + 4);
    r0 = *(u8*)(r0 + 136);
    if (r0 != 0u) goto L_4a0b00;
    L_4a0ae0:;
    r0 = *(u32*)(r4 + 4);
    r1 = (u32)stk;
    r0 = Fn_5bc688_2(r0, r1);
    r0 = *(u32*)(r4 + 4);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 76);
    r1 = 1u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_4a0b00:;
    return;
}

// FUN_004a0c48
void W_4a0c48(u32 a0) {
    u32 r0 = a0, r1, r4, r5, stk[3];
    r1 = (u32)g_00890d18;
    r4 = r0;
    r0 = *(u32*)(r1); r1 = *(u32*)(r1 + 4);
    r5 = 2u;
    *(u32*)((u32)stk) = r0; *(u32*)((u32)stk + 4) = r1;
    r0 = *(u32*)(r4 + 4);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 84);
    r0 = ((u32(*)(u32))r1)(r0);
    if (r0 != 0u) goto L_4a0c8c;
    r0 = *(u32*)(r4 + 4);
    r0 = *(u8*)(r0 + 136);
    if (r0 == 0u) goto L_4a0cb0;
    L_4a0c8c:;
    r0 = *(u32*)(r4 + 4);
    r1 = r5;
    r0 = Fn_5bc6c0_2(r0, r1);
    r0 = *(u32*)(r4 + 4);
    r1 = (u32)stk;
    r0 = Fn_5bc688_2(r0, r1);
    r0 = *(u32*)(r4 + 4);
    r1 = 1u;
    r0 = Fn_5bc570_2(r0, r1);
    L_4a0cb0:;
    return;
}

// FUN_004afff4
u32 W_4afff4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r12;
    r1 = (u32)g_008bfa44;
    r1 = *(u32*)(r1);
    r1 = *(u8*)(r1 + 44);
    if (r1 != 0u) goto L_4b002c;
    r1 = 1u;
    *(u32*)(r0 + 128) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 3u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_4b002c:;
    r0 = 1u;
    return r0;
}

// FUN_004bf3fc
u32 W_4bf3fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r12;
    r1 = (u32)g_008bfa44;
    r1 = *(u32*)(r1);
    r1 = *(u8*)(r1 + 44);
    if (r1 != 0u) goto L_4bf434;
    r1 = 1u;
    *(u32*)(r0 + 144) = r1;
    r1 = *(u32*)(r0);
    r3 = 0u;
    r2 = r3;
    r12 = *(u32*)(r1 + 76);
    r1 = 4u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_4bf434:;
    r0 = 1u;
    return r0;
}

// FUN_005e72dc
void W_5e72dc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r4, r5;
    r5 = r1 + 1u;
    r4 = r0;
    if (r5 >= 4u) goto L_5e7334;
    r0 = r1 + (r1 << 1);
    r1 = r2;
    r0 = r4 + (r0 << 2);
    r0 = r0 + 316u;
    r0 = Fn_59cb38_3(r0, r1, r2);
    r0 = *(u8*)(r4 + 384);
    r2 = 1u;
    r0 = r0 | (r2 << (r5 & 255));
    r0 = r0 & 255u;
    r1 = 6u;
    r1 = r1 & ~r0;
    *(u8*)(r4 + 384) = r0;
    if (r1 != 0) goto L_5e7334;
    r0 = r4;
    r1 = 1u;
    { Fn_5a4ebc_3(r0, r1, r2); return; }
    L_5e7334:;
    return;
}

// FUN_0061dcd0
u32 W_61dcd0(u32 a0, u32 a1) {
    u32 r0 = a0, r2, r3, fa, fb;
    u64 t64 = *(u64*)(r0 + 24); r2 = (u32)t64; r3 = (u32)(t64 >> 32);
    fa = r3; fb = a1;
    if (fa >= fb) r0 = *(u32*)(r0 + 32);
    if (fa < fb) r0 = r2;
    if (fa >= fb) r0 = *(u8*)(r0 + a1);
    if (fa >= fb) r0 = (r0 << 4) - r0;
    if (fa >= fb) r0 = r2 + (r0 << 2);
    return r0;
}

// FUN_00628398
u32 W_628398(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, fa, fb;
    r4 = r0;
    r0 = *(u32*)(r0 + 20);
    r5 = r1;
    r6 = r2;
    if (r0 == 0u) goto L_6283ec;
    r0 = *(u32*)(r4 + 12); r1 = *(u32*)(r4 + 12 + 4);
    r1 = (u32)(signed char)r1;
    r0 = Fn_60c938_3(r0, r1, r2);
    fa = r0; fb = r5;
    if ((int)fa < (int)fb) r0 = 0u;
    if ((int)fa < (int)fb) goto L_6283ec;
    r1 = *(u32*)(r4 + 20);
    r3 = (r5 << 3) - r5;
    r2 = ~55u;
    r2 = r2 + (r3 << 3);
    r0 = r6;
    r1 = r1 + r2;
    r0 = Fn_2aa77c_4(r0, r1, r2, r3);
    r0 = 1u;
    L_6283ec:;
    return r0;
}

// FUN_0062e714
u32 W_62e714(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_62e724;
    if (r1 < 512u) goto L_62e72c;
    L_62e724:;
    r0 = 0u;
    return r0;
    L_62e72c:;
    r0 = r0 + 108u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}

// FUN_0062e748
u32 W_62e748(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, fx;
    r2 = r0;
    r0 = r1;
    if (r0 == 0) goto L_62e788;
    if (r0 > 191u) goto L_62e788;
    r4 = r2 + 12u;
    r0 = Fn_577bcc_3(r0, r1, r2);
    if (r0 >= 256u) goto L_62e788;
    r1 = *(u8*)(r4 + (r0 >> 3));
    r0 = r0 & 7u;
    r2 = 1u;
    fx = r1 & (r2 << (r0 & 255));
    if (fx != 0) r0 = 1u;
    if (fx != 0) goto L_62e78c;
    L_62e788:;
    r0 = 0u;
    L_62e78c:;
    return r0;
}

// FUN_0062e790
u32 W_62e790(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, fx;
    r2 = r0;
    r0 = r1 & 255u;
    if (r0 == 0) goto L_62e7d0;
    if (r0 > 191u) goto L_62e7d0;
    r4 = r2 + 12u;
    r0 = Fn_577bcc_3(r0, r1, r2);
    if (r0 >= 256u) goto L_62e7d0;
    r1 = *(u8*)(r4 + (r0 >> 3));
    r0 = r0 & 7u;
    r2 = 1u;
    fx = r1 & (r2 << (r0 & 255));
    if (fx != 0) r0 = 1u;
    if (fx != 0) goto L_62e7d4;
    L_62e7d0:;
    r0 = 0u;
    L_62e7d4:;
    return r0;
}

// FUN_0062e82c
u32 W_62e82c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r4, fx;
    r2 = r0;
    r0 = r1;
    if (r0 == 0) goto L_62e86c;
    if (r0 > 191u) goto L_62e86c;
    r4 = r2 + 76u;
    r0 = Fn_577bcc_3(r0, r1, r2);
    if (r0 >= 256u) goto L_62e86c;
    r1 = *(u8*)(r4 + (r0 >> 3));
    r0 = r0 & 7u;
    r2 = 1u;
    fx = r1 & (r2 << (r0 & 255));
    if (fx != 0) r0 = 1u;
    if (fx != 0) goto L_62e870;
    L_62e86c:;
    r0 = 0u;
    L_62e870:;
    return r0;
}

// FUN_0062e874
u32 W_62e874(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2;
    if ((int)r1 < 0) goto L_62e884;
    if (r1 < 191u) goto L_62e88c;
    L_62e884:;
    r0 = 0u;
    return r0;
    L_62e88c:;
    r0 = r0 + 44u;
    r0 = *(u8*)(r0 + (r1 >> 3));
    r1 = r1 & 7u;
    r2 = 1u;
    r0 = r0 & (r2 << (r1 & 255));
    if (r0 != 0) r0 = 1u;
    return r0;
}
