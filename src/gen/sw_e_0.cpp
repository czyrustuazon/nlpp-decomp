// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00804ce8[];
u32 Fn_5c80f0_3(u32, u32, u32);
extern char g_00804fc8[];
u32 Fn_5c8154_3(u32, u32, u32);
extern char g_008a825c[];
u32 Fn_070734_2(u32, u32);
u32 Fn_340260_2(u32, u32);
extern char g_008053cc[];
extern char g_008bfa58[];
u32 Fn_4e0128_3(u32, u32, u32);
u32 Fn_07565c_1(u32);
u32 Fn_278094_3(u32, u32, u32);
u32 Fn_50c2e4_1(u32);
extern char g_00805504[];
extern char g_00805560[];
extern char g_00805e04[];
extern char g_0080608c[];
extern char g_0080627c[];
extern char g_00806448[];
extern char g_008a8348[];
u32 Fn_5ebc5c_2(u32, u32);
extern char g_00806c90[];
u32 Fn_13b890_1(u32);
extern char g_008074a4[];
u32 Fn_01a4d4_3(u32, u32, u32);
u32 Fn_5c967c_3(u32, u32, u32);
extern char g_00807df0[];
u32 Fn_1fddd8_4(u32, u32, u32, u32);
u32 Fn_1c7f68_3(u32, u32, u32);
u32 Fn_1fe040_2(u32, u32);
u32 Fn_5c7c14_3(u32, u32, u32);
u32 Fn_000200_4(u32, u32, u32, u32);
u32 Fn_1eb8f8_3(u32, u32, u32);
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_000b40_2(u32, u32);
extern char g_00814c74[];
u32 Fn_5bffa4_3(u32, u32, u32);
extern char g_0081c6a8[];
extern char g_0081d030[];
u32 Fn_2e3138_3(u32, u32, u32);
extern char g_0081d264[];
extern char g_0081d9cc[];
extern char g_0081dc90[];
extern char g_0081e298[];
extern char g_0081ef0c[];
u32 Fn_4df510_3(u32, u32, u32);
extern char g_0079ea08[];
u32 Fn_3767fc_3(u32, u32, u32);
extern char g_008206dc[];
u32 Fn_4df458_3(u32, u32, u32);
extern char g_00820b48[];
extern char g_00820c64[];
extern char g_008218f0[];
extern char g_00821c58[];
extern char g_00821ed8[];
u32 Fn_3d729c_3(u32, u32, u32);
extern char g_00822b58[];
extern char g_00822c74[];
u32 Fn_3e5468_2(u32, u32);

// FUN_0005371c
void W_05371c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"DataManageDataImportUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00804ce8);
    *(u32*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 80) = r1_2;
    *(u8*)(r0_1 + 81) = r1_2;
    *(u8*)(r0_1 + 82) = r1_2;
    *(u8*)(r0_1 + 83) = r1_2;
    *(u32*)(r0_1 + 84) = r1_2;
    *(u32*)(r0_1 + 88) = r1_2;
    *(u32*)(r0_1 + 92) = r1_2;
    *(u32*)(r0_1 + 96) = r1_2;
    *(u32*)(r0_1 + 100) = r1_2;
    *(u32*)(r0_1 + 104) = r1_2;
    return;
}

// FUN_0005a518
void W_05a518(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c8154_3(r0, ((u32)"Sequence"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_00804fc8);
    *(u8*)(r0_1 + 100) = r1_2;
    *(u8*)(r0_1 + 101) = r1_2;
    *(u32*)(r0_1 + 104) = r1_2;
    return;
}

// FUN_000732c8
u32 W_0732c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r0 = Fn_070734_2(r0, r1);
    r0 = (u32)g_008a825c;
    r0 = *(u32*)(r0);
    r1 = *(u8*)(r0 + 4);
    fa = r1; fb = 7u;
    switch (r1) { case 0: goto L_73308; case 1: goto L_73308; case 2: goto L_73308; case 3: goto L_7331c; case 4: goto L_7331c; case 5: goto L_73338; case 6: goto L_73308; default: goto L_73338; }
    goto L_73338;
    L_73308:;
    r0 = *(u8*)(r0 + 15);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = Fn_340260_2(r0, r1);
    r0 = 3u;
    return r0;
    L_7331c:;
    r1 = *(u8*)(r0 + 37);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_73338;
    r1 = 0u;
    *(u8*)(r0 + 37) = r1;
    r0 = 5u;
    return r0;
    L_73338:;
    r0 = r4;
    return r0;
}

// FUN_00074fc8
void W_074fc8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r1_2, r1_3;
    r0_1 = Fn_4e0128_3(r0, ((u32)"VRCameraEventView"), 0u);
    *(u32*)(((u32)g_008bfa58)) = r0_1;
    *(u32*)(r0_1) = ((u32)g_008053cc);
    return;
}

// FUN_0007580c
void W_07580c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_07565c_1(r0);
    r0 = Fn_50c2e4_1(r0);
    fa = r0; fb = 6u;
    switch (r0) { case 0: goto L_75840; case 1: goto L_75840; case 2: goto L_75840; case 3: goto L_75848; case 4: goto L_75850; case 5: goto L_75858; default: goto L_75860; }
    goto L_75860;
    L_75840:;
    r0 = 1u;
    goto L_7585c;
    L_75848:;
    r0 = 2u;
    goto L_7585c;
    L_75850:;
    r0 = 3u;
    goto L_7585c;
    L_75858:;
    r0 = 4u;
    L_7585c:;
    *(u32*)(r4 + 20) = r0;
    L_75860:;
    r0 = *(u8*)(r4 + 16);
    fa = r0; fb = 0u;
    if (fa != fb) { r0 = *(u32*)(r4 + 20); r1 = *(u32*)(r4 + 20 + 4); }
    if (fa != fb) { fa = r1; fb = r0; }
    if (fa == fb) goto L_758a4;
    r0 = r0 + (r0 << 1);
    r5 = r0 - 2u;
    r0 = *(u32*)(r4);
    r2 = 0u;
    r1 = r5;
    r0 = Fn_278094_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 4);
    r2 = 0u;
    r1 = r5;
    r0 = Fn_278094_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 20);
    *(u32*)(r4 + 24) = r0;
    L_758a4:;
    return;
}

// FUN_0007f0d0
void W_07f0d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"MeetingDateUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00805504);
    *(u8*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    *(u32*)(r0_1 + 84) = r1_2;
    *(u32*)(r0_1 + 88) = r1_2;
    *(u32*)(r0_1 + 92) = r1_2;
    return;
}

// FUN_0007f480
void W_07f480(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"MeetingTimeUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00805560);
    *(u8*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    return;
}

// FUN_000e4eb0
void W_0e4eb0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r2_2;
    r0_1 = Fn_5c8154_3(r0, ((u32)"IntroQuestionSequence"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_00805e04);
    *(u8*)(r0_1 + 100) = r1_2;
    *(u8*)(r0_1 + 101) = r1_2;
    *(u16*)(r0_1 + 102) = (~0u);
    *(u32*)(r0_1 + 104) = r1_2;
    return;
}

// FUN_000f6e7c
u32 W_0f6e7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r4_1, r2_2;
    r0_1 = Fn_4e0128_3(r0, ((u32)"LoveplusModeObject"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 68) = r1_2;
    *(u32*)(r0_1) = ((u32)g_0080608c);
    *(u32*)((r0_1 + 72u) + 0) = r1_2; *(u32*)((r0_1 + 72u) + 4) = (~0u);
    return r0_1;
}

// FUN_000ff774
void W_0ff774(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r2_2;
    r0_1 = Fn_4e0128_3(r0, ((u32)"TouchManager"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 68) = r1_2;
    *(u32*)(r0_1) = ((u32)g_0080627c);
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1 + 76) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    *(u8*)(r0_1 + 84) = r1_2;
    *(u32*)(r0_1 + 88) = 1u;
    *(u8*)(r0_1 + 92) = r1_2;
    *(u8*)(r0_1 + 93) = r1_2;
    return;
}

// FUN_00106bb0
void W_106bb0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r4_1, r2_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"CommunicationSaveSelectUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00806448);
    *(u32*)(r0_1 + 76) = r1_2;
    *(u32*)((r0_1 + 80u) + 0) = r1_2; *(u32*)((r0_1 + 80u) + 4) = (~0u);
    *(u8*)(r0_1 + 92) = r1_2;
    return;
}

// FUN_0010fb90
u32 W_10fb90(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 302u;
    r0 = r0 - 116u;
    fa = r0; fb = 8u;
    switch (r0) { case 0: goto L_10fbc8; case 1: goto L_10fbe8; case 2: goto L_10fbe8; case 3: goto L_10fbe8; case 4: goto L_10fbf0; case 5: goto L_10fbf0; case 6: goto L_10fbf0; case 7: goto L_10fbf0; default: goto L_10fbe0; }
    goto L_10fbe0;
    L_10fbc8:;
    r0 = (u32)g_008a8348;
    r1 = 2u;
    r0 = Fn_5ebc5c_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 303u;
    if (fa == fb) goto L_10fbe4;
    L_10fbe0:;
    r0 = r4;
    L_10fbe4:;
    return r0;
    L_10fbe8:;
    r0 = 304u;
    return r0;
    L_10fbf0:;
    r0 = 305u;
    return r0;
}

// FUN_0012ef94
u32 W_12ef94(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r1_2, r2_2;
    r0_1 = Fn_4e0128_3(r0, ((u32)"MenuBridgeProcess"), 0u);
    r1_2 = (u32)g_00806c90;
    *(u32*)(r0_1) = r1_2;
    *(u32*)(r0_1 + 68) = (r1_2 + 88u);
    return r0_1;
}

// FUN_0013ddcc
void W_13ddcc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 3476);
    r0 = r0 - 3u;
    fa = r0; fb = 7u;
    switch (r0) { case 0: goto L_13de20; case 1: goto L_13dde4; case 2: goto L_13de04; case 3: goto L_13de04; case 4: goto L_13de04; case 5: goto L_13de0c; case 6: goto L_13de0c; }
    L_13dde4:;
    return;
    L_13de04:;
    r0 = 10u;
    goto L_13de18;
    L_13de0c:;
    r0 = r4;
    r0 = Fn_13b890_1(r0);
    r0 = 8u;
    L_13de18:;
    *(u32*)(r4 + 3476) = r0;
    return;
    L_13de20:;
    r0 = r4;
    r0 = Fn_13b890_1(r0);
    r0 = 3u;
    *(u32*)(r4 + 3476) = r0;
    return;
}

// FUN_0014a31c
u32 W_14a31c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2, r4_1, r1_3, r0_2, r0_3, r0_4;
    r0_1 = Fn_5c967c_3(r0, ((u32)"WebUIOperator"), 0u);
    r2_2 = (u32)g_008074a4;
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = r2_2;
    *(u8*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    *(u32*)(r0_1 + 84) = r1_2;
    *(u32*)(r0_1 + 88) = r1_2;
    *(u8*)(r0_1 + 92) = r1_2;
    *(u32*)(r0_1 + 128) = r1_2;
    r0_3 = Fn_01a4d4_3((r0_1 + 96u), 32u, r2_2);
    return r0_1;
}

// FUN_0018cd4c
u32 W_18cd4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r2_2, r1_2, r4_1, r1_3, r0_2, r0_3, r0_4;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"MenuLocalMatchingControl"), 0u);
    r3_1 = (u32)g_00807df0;
    r2_2 = 1u;
    r1_2 = 0u;
    *(u32*)(r0_1) = r3_1;
    *(u8*)(r0_1 + 104) = r2_2;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1 + 76) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    *(u32*)(r0_1 + 84) = r1_2;
    *(u8*)(r0_1 + 88) = r1_2;
    *(u32*)(r0_1 + 92) = r1_2;
    *(u8*)(r0_1 + 97) = r1_2;
    *(u8*)(r0_1 + 98) = r1_2;
    *(u32*)(r0_1 + 100) = r1_2;
    *(u32*)(r0_1 + 116) = r1_2;
    r4_1 = r0_1;
    *(u32*)(r0_1 + 376) = r1_2;
    *(u32*)(r4_1 + 108) = r1_2;
    *(u32*)(r4_1 + 112) = r1_2;
    r0_3 = Fn_1fddd8_4((r4_1 + 120u), 256u, r2_2, r3_1);
    return r4_1;
}

// FUN_001c2038
void W_1c2038(u32 a0) {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r2_1, r1_1, r3_1, r0_3, r0_4, r0_5, r2_2, r1_2, r3_2, r0_6, r0_7, r0_8, r2_3, r1_3, r3_3, r0_9, r0_10, r0_11, r2_4, r1_4, r3_4, r0_12, r0_13, r0_14, r2_5, r1_5, r3_5, r0_15, r0_16, r0_17, r2_6, r1_6, r3_6, r0_18;
    *(u8*)(a0 + 143) = 0u;
    r0_4 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(a0)) + 80)))(a0, 0u, ((u32)"Pos_Ture_01"));
    r0_7 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(a0)) + 80)))(a0, 0u, ((u32)"Pos_Win01"));
    r0_10 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(a0)) + 80)))(a0, 0u, ((u32)"Pos_Win02"));
    r0_13 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(a0)) + 80)))(a0, 0u, ((u32)"Pos_Win03"));
    r0_16 = ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(a0)) + 80)))(a0, 0u, ((u32)"Pos_Win04"));
    { ((u32(*)(u32, u32, u32))(*(u32*)((*(u32*)(a0)) + 80)))(a0, 0u, ((u32)"Pos_Win05")); return; }
}

// FUN_001d5ce8
u32 W_1d5ce8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r2;
    r0 = Fn_1c7f68_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 92);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_1d5d44;
    r1 = (u32)"Bod_Que_01";
    r0 = r5;
    r0 = Fn_1fe040_2(r0, r1);
    fa = r0; fb = 0u;
    r6 = 1u;
    if (fa == fb) *(u8*)(r4 + 112) = r6;
    if (fa == fb) goto L_1d5d34;
    r1 = (u32)"Bod_Que_02";
    r0 = r5;
    r0 = Fn_1fe040_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) *(u8*)(r4 + 113) = r6;
    L_1d5d34:;
    r2 = 0u;
    r1 = r2;
    r0 = 3u;
    r0 = Fn_5c7c14_3(r0, r1, r2);
    L_1d5d44:;
    r0 = 0u;
    return r0;
}

// FUN_001ebe80
void W_1ebe80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r5_1, r4_1, r1_1, r0_1, r0_2, r3_1, r2_1, r1_2, r0_3, r0_4, r2_2, r1_3, r0_5, r0_6, stk[129];
    r0_2 = Fn_1fddd8_2(((u32)stk), 512u);
    r0_4 = Fn_000200_4(((u32)stk), 512u, ((u32)"%s"), r1);
    r0_6 = Fn_1eb8f8_3(r0, 3u, ((u32)stk));
    return;
}

// FUN_001f898c
u32 W_1f898c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    r0 = r1;
    *(u32*)(r2 + 92) = r1;
    r1 = *(u32*)(r1 + 36);
    fa = r1; fb = 7u;
    switch (r1) { case 0: goto L_1f89d8; case 1: goto L_1f89d8; case 2: goto L_1f89d8; case 3: goto L_1f89d8; case 4: goto L_1f89d8; case 5: goto L_1f89d8; case 6: goto L_1f89c8; default: goto L_1f89d8; }
    goto L_1f89d8;
    L_1f89c8:;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    L_1f89d8:;
    r0 = 0u;
    return r0;
}

// FUN_00206aa0
u32 W_206aa0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r2;
    r0 = Fn_1c7f68_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 92);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_206b14;
    r1 = (u32)"Bod_Wall_01";
    r0 = r5;
    r0 = Fn_1fe040_2(r0, r1);
    fa = r0; fb = 0u;
    r6 = 1u;
    if (fa == fb) *(u8*)(r4 + 112) = r6;
    if (fa == fb) goto L_206b04;
    r1 = (u32)"Bod_Wall_02";
    r0 = r5;
    r0 = Fn_1fe040_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) *(u8*)(r4 + 113) = r6;
    if (fa == fb) goto L_206b04;
    r1 = (u32)"Bod_Wall_03";
    r0 = r5;
    r0 = Fn_1fe040_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) *(u8*)(r4 + 114) = r6;
    L_206b04:;
    r2 = 0u;
    r1 = r2;
    r0 = 3u;
    r0 = Fn_5c7c14_3(r0, r1, r2);
    L_206b14:;
    r0 = 0u;
    return r0;
}

// FUN_002288cc
u32 W_2288cc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r2;
    r0 = Fn_1c7f68_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 92);
    fa = r0; fb = 0u - 1u;
    if (fa == fb) goto L_228900;
    r1 = (u32)"Bod_Pop";
    r0 = r5;
    r0 = Fn_000b40_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa == fb) *(u8*)(r4 + 148) = r0;
    L_228900:;
    r0 = 0u;
    return r0;
}

// FUN_0024dfe4
void W_24dfe4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"CardTradeUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_00814c74);
    *(u8*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1 + 76) = r1_2;
    return;
}

// FUN_0024ee1c
u32 W_24ee1c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) return r0;
    r2 = 0u;
    r1 = r2;
    r0 = Fn_5bffa4_3(r0, r1, r2);
    r1 = r0 - 2u;
    fa = r1; fb = 8u;
    r0 = 0u;
    switch (r1) { case 0: goto L_24ee68; case 1: goto L_24ee70; case 2: goto L_24ee78; case 3: goto L_24ee80; case 4: goto L_24ee80; case 5: goto L_24ee80; case 6: goto L_24ee88; case 7: goto L_24ee88; }
    return r0;
    L_24ee68:;
    r0 = 25u;
    return r0;
    L_24ee70:;
    r0 = 10u;
    return r0;
    L_24ee78:;
    r0 = 5u;
    return r0;
    L_24ee80:;
    r0 = 2u;
    return r0;
    L_24ee88:;
    r0 = 1u;
    return r0;
}

// FUN_002d2e50
void W_2d2e50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r2_2;
    r0_1 = Fn_5c967c_3(r0, ((u32)"OptionAdjustTimeUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_0081c6a8);
    *(u8*)(r0_1 + 76) = 1u;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    *(u8*)(r0_1 + 84) = r1_2;
    *(u8*)(r0_1 + 85) = r1_2;
    *(u8*)(r0_1 + 86) = r1_2;
    *(u32*)(r0_1 + 88) = r1_2;
    *(u32*)(r0_1 + 92) = r1_2;
    *(u32*)(r0_1 + 352) = r1_2;
    return;
}

// FUN_002e2ff8
void W_2e2ff8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r2_2;
    r0_1 = Fn_2e3138_3(r0, ((u32)"Player Spot RTM"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 92) = r1_2;
    *(u32*)(r0_1 + 88) = (~0u);
    *(u32*)(r0_1) = ((u32)g_0081d030);
    *(u32*)(r0_1 + 96) = r1_2;
    *(u32*)(r0_1 + 100) = r1_2;
    *(u32*)(r0_1 + 104) = r1_2;
    *(u32*)(r0_1 + 108) = r1_2;
    *(u8*)(r0_1 + 112) = r1_2;
    return;
}

// FUN_002e6eb8
void W_2e6eb8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_4e0128_3(r0, ((u32)"ScriptInputDevice"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_0081d264);
    *(u8*)(r0_1 + 68) = r1_2;
    *(u16*)(r0_1 + 70) = r1_2;
    *(u16*)(r0_1 + 72) = r1_2;
    *(u16*)(r0_1 + 74) = r1_2;
    *(u32*)(r0_1 + 76) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    return;
}

// FUN_003118b0
void W_3118b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c967c_3(r0, ((u32)"StatusUnitUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_0081d9cc);
    *(u8*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    return;
}

// FUN_0032bb1c
void W_32bb1c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c8154_3(r0, ((u32)"GalleryHome"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_0081dc90);
    *(u8*)(r0_1 + 100) = r1_2;
    *(u8*)(r0_1 + 101) = r1_2;
    *(u8*)(r0_1 + 102) = r1_2;
    *(u32*)(r0_1 + 104) = r1_2;
    *(u32*)(r0_1 + 108) = r1_2;
    *(u32*)(r0_1 + 112) = r1_2;
    *(u32*)(r0_1 + 116) = r1_2;
    *(u32*)(r0_1 + 120) = r1_2;
    *(u32*)(r0_1 + 124) = r1_2;
    *(u32*)(r0_1 + 128) = r1_2;
    return;
}

// FUN_0033fcc8
void W_33fcc8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"KareshiUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_0081e298);
    *(u8*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    *(u8*)(r0_1 + 79) = r1_2;
    *(u8*)(r0_1 + 80) = r1_2;
    *(u32*)(r0_1 + 84) = r1_2;
    return;
}

// FUN_0036712c
void W_36712c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r2_2, r1_2;
    r0_1 = Fn_4df510_3(r0, ((u32)"DateEditLocalCommManager"), 0u);
    *(u32*)(r0_1 + 96) = (~0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_0081ef0c);
    *(u8*)(r0_1 + 100) = r1_2;
    *(u32*)(r0_1 + 104) = r1_2;
    *(u32*)(r0_1 + 108) = r1_2;
    return;
}

// FUN_0037a470
u32 W_37a470(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 128);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 16u;
    if (fa == fb) goto L_37a52c;
    fa = r0; fb = 16u;
    r5 = 1u;
    if (fa == fb) goto L_37a4b4;
    fa = r0; fb = 32u;
    if (fa == fb) goto L_37a534;
    fa = r0; fb = 4096u;
    if (fa != fb) goto L_37a4b0;
    r1 = (u32)g_0079ea08;
    r0 = *(u32*)(r1 + 64); r1 = *(u32*)(r1 + 64 + 4);
    *(u32*)(r4 + 120) = r0; *(u32*)(r4 + 120 + 4) = r1;
    L_37a4b0:;
    return r0;
    L_37a4b4:;
    r0 = *(u32*)(r4 + 136);
    r2 = 0u;
    fa = r0; fb = 5u;
    switch (r0) { case 0: goto L_37a4dc; case 1: goto L_37a4dc; case 2: goto L_37a4f8; case 3: goto L_37a500; case 4: goto L_37a508; default: goto L_37a50c; }
    goto L_37a50c;
    L_37a4dc:;
    r0 = Fn_3767fc_3(r0, r1, r2);
    r0 = *(u8*)(r0 + 13);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = 166u;
    if (fa == fb) r2 = 169u;
    goto L_37a50c;
    L_37a4f8:;
    r2 = 182u;
    goto L_37a50c;
    L_37a500:;
    r2 = 171u;
    goto L_37a50c;
    L_37a508:;
    r2 = 174u;
    L_37a50c:;
    *(u8*)(r4 + 166) = r5;
    r0 = *(u32*)(r4);
    r3 = 0u;
    r1 = 11u;
    r12 = *(u32*)(r0 + 84);
    r0 = r4;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    r0 = 32u;
    L_37a52c:;
    *(u32*)(r4 + 128) = r0;
    return r0;
    L_37a534:;
    r0 = *(u8*)(r4 + 166);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_37a4b0;
    r0 = 4096u;
    *(u8*)(r4 + 165) = r5;
    *(u32*)(r4 + 128) = r0;
    return r0;
}

// FUN_003a1a64
u32 W_3a1a64(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r4_1, r0_2, r1_2, r2_2, r1_3, r0_3, r0_4, r0_5;
    r0_1 = Fn_4df510_3(r0, ((u32)"Standby"), 0u);
    r4_1 = r0_1;
    r1_2 = 0u;
    r2_2 = 0u;
    *(u32*)(r4_1) = ((u32)g_008206dc);
    *(u16*)(r4_1 + 94) = r1_2;
    *(u8*)(r4_1 + 96) = r1_2;
    *(u8*)(r4_1 + 97) = r1_2;
    *(u8*)(r4_1 + 94) = r1_2;
    *(u8*)(r4_1 + 95) = r1_2;
    *(u32*)(r4_1 + 100) = r1_2;
    *(u32*)(r4_1 + 104) = r1_2;
    *(u32*)(r4_1 + 108) = r1_2;
    *(u32*)(r4_1 + 112) = r1_2;
    *(u32*)(r4_1 + 116) = r1_2;
    *(u32*)(r4_1 + 120) = r1_2;
    *(u32*)(r4_1 + 124) = r1_2;
    *(u32*)(r4_1 + 128) = r1_2;
    *(u32*)(r4_1 + 132) = r1_2;
    *(u32*)(r4_1 + 136) = r1_2;
    *(u32*)(r4_1 + 140) = r1_2;
    r0_4 = Fn_4df458_3(r4_1, r2_2, r2_2);
    return r4_1;
}

// FUN_003aca84
void W_3aca84(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c8154_3(r0, ((u32)"PhotoExhibitionSequence"), 0u);
    *(u32*)(r0_1) = ((u32)g_00820b48);
    *(u8*)(r0_1 + 100) = 0u;
    return;
}

// FUN_003ad828
u32 W_3ad828(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r2_2, r1_2, r3_2;
    r0_1 = Fn_5c8154_3(r0, ((u32)"ItemSelectSequence"), 0u);
    r2_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_00820c64);
    *(u8*)(r0_1 + 100) = r2_2;
    *(u32*)((r0_1 + 104u) + 0) = (~0u); *(u32*)((r0_1 + 104u) + 4) = r2_2;
    return r0_1;
}

// FUN_003cc1c4
u32 W_3cc1c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r1_2, r2_2, r3_2;
    r0_1 = Fn_4df510_3(r0, ((u32)"AlbumPhoto"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_008218f0);
    *(u8*)(r0_1 + 94) = r1_2;
    *(u32*)(r0_1 + 96) = r1_2;
    *(u32*)(r0_1 + 100) = r1_2;
    *(u32*)((r0_1 + 104u) + 0) = r1_2; *(u32*)((r0_1 + 104u) + 4) = 7u;
    return r0_1;
}

// FUN_003d2e74
u32 W_3d2e74(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r4_1, r0_2, r2_2, r1_2, r0_3, r0_4, r0_5;
    r0_1 = Fn_4df510_3(r0, ((u32)"Standby"), 0u);
    r4_1 = r0_1;
    r2_2 = 0u;
    *(u32*)(r4_1) = ((u32)g_00821c58);
    r0_4 = Fn_4df458_3(r4_1, r2_2, r2_2);
    return r4_1;
}

// FUN_003d8e54
u32 W_3d8e54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r3_1, r2_2, r1_2, r3_2;
    r0_1 = Fn_3d729c_3(r0, ((u32)"TownMapSpot"), 0u);
    r2_2 = 0u;
    *(u32*)(r0_1) = ((u32)g_00821ed8);
    *(u8*)(r0_1 + 340) = r2_2;
    *(u32*)((r0_1 + 344u) + 0) = (~0u); *(u32*)((r0_1 + 344u) + 4) = r2_2;
    return r0_1;
}

// FUN_003e48c4
void W_3e48c4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_4df510_3(r0, ((u32)"GameMode"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 96) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00822b58);
    *(u32*)(r0_1 + 100) = r1_2;
    return;
}

// FUN_003e561c
void W_3e561c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r2_1, r1_2;
    r0_1 = Fn_3e5468_2(r0, ((u32)"ExecEventTown"));
    *(u32*)(r0_1 + 136) = 0u;
    *(u32*)(r0_1) = ((u32)g_00822c74);
    return;
}
