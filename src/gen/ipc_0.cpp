// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_008aac38[];
u32 Fn_00831c_2(u32, u32);
u32 Fn_01a8e4_1(u32);
u32 Fn_02a7d4_2(u32, u32);
u32 Fn_4edbb4_1(u32);
u32 Fn_005e1c_2(u32, u32);
u32 Fn_01a8e4_0();
u32 Fn_4edea4_1(u32);
u32 Fn_4edecc_1(u32);
u32 Fn_4ee0f8_1(u32);
u32 Fn_4ee22c_2(u32, u32);
u32 Fn_4ee3f4_2(u32, u32);
u32 Fn_4ee42c_2(u32, u32);
u32 Fn_4ee464_2(u32, u32);
u32 Fn_4ee580_2(u32, u32);
u32 Fn_4ee5b8_2(u32, u32);
u32 Fn_4ee6ec_2(u32, u32);
u32 Fn_4ee844_2(u32, u32);
u32 Fn_4eec8c_1(u32);
u32 Fn_4ef300_2(u32, u32);
u32 Fn_4ef0ec_2(u32, u32);
u32 Fn_4ef458_2(u32, u32);
u32 Fn_63161c_0();
u32 Fn_4ef428_2(u32, u32);
u32 Fn_4eeb08_2(u32, u32);
extern char g_008aadc8[];
extern char g_009a1464[];
u32 Fn_4f5c0c_1(u32);
u32 Fn_503b40_2(u32, u32);
u32 Fn_503bb0_1(u32);
u32 Fn_024730_1(u32);
u32 Fn_51c168_1(u32);
u32 Fn_51f47c_2(u32, u32);
u32 Fn_520160_1(u32);
u32 Fn_520ba4_1(u32);
u32 Fn_520d3c_1(u32);
u32 Fn_521ca0_2(u32, u32);
u32 Fn_51f4b0_3(u32, u32, u32);
u32 Fn_520ba4_2(u32, u32);
u32 Fn_51f618_2(u32, u32);
u32 Fn_521dfc_3(u32, u32, u32);
u32 Fn_51f7e4_3(u32, u32, u32);
u32 Fn_51f8a0_2(u32, u32);
u32 Fn_522004_2(u32, u32);
u32 Fn_51f8d4_3(u32, u32, u32);
u32 Fn_51fcf0_2(u32, u32);
u32 Fn_51fd78_2(u32, u32);
u32 Fn_5200b0_1(u32);
u32 Fn_521a14_2(u32, u32);
u32 Fn_5393c0_3(u32, u32, u32);
u32 Fn_539938_2(u32, u32);
u32 Fn_53a3d4_2(u32, u32);
u32 Fn_4ef5c0_2(u32, u32);
u32 Fn_4ef3a4_2(u32, u32);

// FUN_00005df0
u32 fs_USER_Initialize_5df0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r1_2, r0_1, r0_2, r0_3, stk;
    r1_1 = (u32)g_008aac38;
    *(u32*)(r1_1 + 16) = r0;
    stk = r0;
    r1_2 = 100729032u;
    r0_1 = (u32)&stk;
    r0_2 = Fn_00831c_2(r0_1, r1_2);
    r0_3 = 0u;
    return r0_3;
}

// FUN_00028d98
u32 fs_USER_GetPriority(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_02a7d4_2(r0, r1);
    return r0;
}

// FUN_004e766c
void fs_USER_CreateSeed(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = *(u32*)(r0 + 16);
    r0_2 = (u32)&stk;
    r0_3 = Fn_4edbb4_1(r0_2);
    return;
}

// FUN_004e7820
u32 fs_USER_SetPriority_4e7820(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_005e1c_2(r0, r1);
    return r0;
}

// FUN_004e7840
void fs_USER_ClearNandLog() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_0();
    r0_2 = (u32)&stk;
    r0_3 = Fn_4edea4_1(r0_2);
    return;
}

// FUN_004e7858
void fs_USER_ClearSdmcLog() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_0();
    r0_2 = (u32)&stk;
    r0_3 = Fn_4edecc_1(r0_2);
    return;
}

// FUN_004e7bd8
void fs_USER_DeleteSdmcRoot(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = *(u32*)(r0 + 16);
    r0_2 = (u32)&stk;
    r0_3 = Fn_4ee0f8_1(r0_2);
    return;
}

// FUN_004e7dd0
u32 fs_USER_CardSlotPowerOn(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee22c_2(r0, r1);
    return r0;
}

// FUN_004e7f48
u32 fs_USER_CardSlotPowerOff(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee3f4_2(r0, r1);
    return r0;
}

// FUN_004e7ff4
u32 fs_USER_GetNandSpeedInfo(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee42c_2(r0, r1);
    return r0;
}

// FUN_004e8014
u32 fs_USER_GetSdmcSpeedInfo(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee464_2(r0, r1);
    return r0;
}

// FUN_004e8278
u32 fs_USER_GetSdmcFatfsError(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee580_2(r0, r1);
    return r0;
}

// FUN_004e83e4
u32 fs_USER_SetCardSpiBusMode(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee5b8_2(r0, r1);
    return r0;
}

// FUN_004e853c
u32 fs_USER_Multi3_4e853c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = *(u32*)(r1 + 16);
    stk = r1;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_4ee6ec_2(r0, r1);
    r1 = r0 >> 31;
    if (r1 == 0) r0 = 0u;
    return r0;
}

// FUN_004e864c
u32 fs_USER_SetCardSpiBaudRate(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee844_2(r0, r1);
    return r0;
}

// FUN_004e8d90
void fs_USER_cmd874(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = *(u32*)(r0 + 16);
    r0_2 = (u32)&stk;
    r0_3 = Fn_4eec8c_1(r0_2);
    return;
}

// FUN_004e96a8
u32 fs_USER_CardNorDirectSectorEraseWithoutVerify(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef300_2(r0, r1);
    return r0;
}

// FUN_004e9cb0
u32 fs_USER_CardSlotGetCardIFPowerStatus(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef0ec_2(r0, r1);
    return r0;
}

// FUN_004ece88
void fs_USER_File_OpenLinkFile_4ece88(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef458_2(r0, r1);
    return;
}

// FUN_004ecea8
void fs_USER_File_SetPriority_4ecea8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef428_2(r0, r1);
    return;
}

// FUN_004efae0
u32 fs_USER_CardNorDirectCommand(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4eeb08_2(r0, r1);
    return r0;
}

// FUN_005036bc
u32 mic_u_Multi2_5036bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = (u32)g_008aadc8;
    r0 = *(u8*)(r4 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3626012664u;
    if (fa == fb) goto L_503710;
    r0 = (u32)&stk;
    r0 = Fn_503bb0_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_503710;
    r0 = *(u8*)((u32)&stk);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 3357577200u;
    if (fa != fb) goto L_503710;
    r0 = Fn_503b40_2(r0, r1);
    r5 = r0;
    r0 = (u32)g_009a1464;
    r0 = Fn_4f5c0c_1(r0);
    r1 = 0u;
    r0 = r5;
    *(u8*)(r4 + 1) = r1;
    L_503710:;
    return r0;
}

// FUN_0051bb90
u32 y2r_u_cmd28() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)&stk;
    r0 = Fn_51c168_1(r0);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(signed char*)((u32)&stk);
    return r0;
}

// FUN_0051d274
u32 boss_GetOptoutFlag(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    if (r4 == 0) goto L_51d2a8;
    r0 = (u32)stk;
    r0 = Fn_520ba4_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_51d2b8;
    r0 = *(u32*)((u32)stk);
    r1 = r4;
    r0 = Fn_51f47c_2(r0, r1);
    L_51d2a0:;
    return r0;
    L_51d2a8:;
    r0 = 12u;
    r0 = Fn_520d3c_1(r0);
    return r0;
    L_51d2b8:;
    r0 = (u32)stk + 4u;
    r0 = Fn_520160_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d2a0;
    r0 = *(u32*)((u32)stk + 4);
    r1 = r4;
    r0 = Fn_521ca0_2(r0, r1);
    return r0;
}

// FUN_0051d2e0
u32 boss_GetSprelayUrl(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r5 = r1;
    if (r4 == 0) goto L_51d314;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d310;
    r0 = stk;
    r2 = r5;
    r1 = r4;
    r0 = Fn_51f4b0_3(r0, r1, r2);
    L_51d310:;
    return r0;
    L_51d314:;
    r0 = 25u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051d588
void boss_SetOptoutFlag(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = (u32)stk;
    r0 = Fn_520ba4_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_51d5b8;
    r0 = *(u32*)((u32)stk);
    r1 = r4;
    r0 = Fn_51f618_2(r0, r1);
    L_51d5b0:;
    return;
    L_51d5b8:;
    r0 = (u32)stk + 4u;
    r0 = Fn_520160_1(r0);
    r2 = r0 & 2147483648u;
    if ((int)r2 < 0) goto L_51d5b0;
    r0 = *(u32*)((u32)stk + 4);
    r1 = r4;
    r0 = Fn_521dfc_3(r0, r1, r2);
    return;
}

// FUN_0051d8a0
u32 boss_GetPolicyListUrl(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r5 = r1;
    if (r4 == 0) goto L_51d8d4;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d8d0;
    r0 = stk;
    r2 = r5;
    r1 = r4;
    r0 = Fn_51f7e4_3(r0, r1, r2);
    L_51d8d0:;
    return r0;
    L_51d8d4:;
    r0 = 25u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051d924
u32 boss_GetNewArrivalFlag(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    if (r4 == 0) goto L_51d958;
    r0 = (u32)stk;
    r0 = Fn_520ba4_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_51d968;
    r0 = *(u32*)((u32)stk);
    r1 = r4;
    r0 = Fn_51f8a0_2(r0, r1);
    L_51d950:;
    return r0;
    L_51d958:;
    r0 = 11u;
    r0 = Fn_520d3c_1(r0);
    return r0;
    L_51d968:;
    r0 = (u32)stk + 4u;
    r0 = Fn_520160_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d950;
    r0 = *(u32*)((u32)stk + 4);
    r1 = r4;
    r0 = Fn_522004_2(r0, r1);
    return r0;
}

// FUN_0051da84
u32 boss_GetPolicyListEnvId(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r5 = r1;
    if (r4 == 0) goto L_51dab8;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51dab4;
    r0 = stk;
    r2 = r5;
    r1 = r4;
    r0 = Fn_51f8d4_3(r0, r1, r2);
    L_51dab4:;
    return r0;
    L_51dab8:;
    r0 = 24u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051dfd0
u32 boss_GetTestModeAvailability(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51dffc;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51dff8;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51fcf0_2(r0, r1);
    L_51dff8:;
    return r0;
    L_51dffc:;
    r0 = 21u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051e008
u32 boss_cmd41e(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51e034;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51e030;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51fd78_2(r0, r1);
    L_51e030:;
    return r0;
    L_51e034:;
    r0 = 20u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051e0a4
u32 boss_cmd6(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51e0d0;
    r0 = (u32)&stk;
    r0 = Fn_5200b0_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51e0cc;
    r0 = stk;
    r1 = r4;
    r0 = Fn_521a14_2(r0, r1);
    L_51e0cc:;
    return r0;
    L_51e0d0:;
    r0 = 18u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_00538590
u32 cam_u_GetMaxLines(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r2 = r1;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_5393c0_3(r0, r1, r2);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(short*)((u32)&stk);
    return r0;
}

// FUN_0053893c
u32 cam_u_GetTransferBytes(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_539938_2(r0, r1);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = stk;
    return r0;
}

// FUN_0053a510
u32 cam_u_IsBusy(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_53a3d4_2(r0, r1);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(signed char*)((u32)&stk);
    return r0;
}

// FUN_006315fc
void fs_USER_File_GetSize_6315fc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef5c0_2(r0, r1);
    return;
}

// FUN_00631644
void fs_USER_File_GetPriority_631644(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef3a4_2(r0, r1);
    return;
}
