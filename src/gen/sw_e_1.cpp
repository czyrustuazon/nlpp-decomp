// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_00822cd0[];
u32 Fn_3e5468_2(u32, u32);
extern char g_00822d2c[];
extern char g_00822d88[];
extern char g_00822e40[];
u32 Fn_4520a8_2(u32, u32);
u32 Fn_4525f4_2(u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_0082643c[];
u32 Fn_4e0128_3(u32, u32, u32);
u32 Fn_25debc_1(u32);
u32 Fn_25ded4_1(u32);
u32 Fn_25fd04_1(u32);
u32 Fn_25ff24_1(u32);
u32 Fn_25ffec_1(u32);
u32 Fn_260010_1(u32);
u32 Fn_260c30_1(u32);
u32 Fn_260dc0_1(u32);
u32 Fn_2611b4_1(u32);
u32 Fn_261e40_1(u32);
u32 Fn_262e80_2(u32, u32);
u32 Fn_4c6ba8_3(u32, u32, u32);
extern char g_00827a40[];
u32 Fn_5c967c_3(u32, u32, u32);
extern char g_00827cbc[];
u32 Fn_502494_1(u32);
extern char g_00827e1c[];
u32 Fn_5c80f0_3(u32, u32, u32);
u32 Fn_0e0f2c_0();
extern char g_008bfa48[];
u32 Fn_5ea0d8_2(u32, u32);
u32 Fn_5ea204_2(u32, u32);
u32 Fn_50c2e4_0();
u32 Fn_502114_2(u32, u32);
u32 Fn_62d5d8_4(u32, u32, u32, u32);
u32 Fn_2ae4b8_1(u32);
u32 Fn_2ae4b8_2(u32, u32);

// FUN_003e5738
void W_3e5738(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r1_2;
    r1_1 = (u32)"ExecEventReplay";
    r0_1 = Fn_3e5468_2(r0, r1_1);
    r1_2 = (u32)g_00822cd0;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_003e5814
void W_3e5814(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r1_2;
    r1_1 = (u32)"ExecEventCommand";
    r0_1 = Fn_3e5468_2(r0, r1_1);
    r1_2 = (u32)g_00822d2c;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_003e5944
void W_3e5944(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r1_2;
    r1_1 = (u32)"ExecEventStartUp";
    r0_1 = Fn_3e5468_2(r0, r1_1);
    r1_2 = (u32)g_00822d88;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_003e5d7c
void W_3e5d7c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r1_2;
    r1_1 = (u32)"ExecEventMonologue";
    r0_1 = Fn_3e5468_2(r0, r1_1);
    r1_2 = (u32)g_00822e40;
    *(u32*)(r0_1) = r1_2;
    return;
}

// FUN_0045225c
u32 W_45225c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 144);
    r6 = r1;
    fa = r0; fb = 0u;
    if (fa != fb) goto L_45227c;
    fa = r6; fb = 32u;
    switch (r6) { case 0: goto L_452300; case 1: goto L_452310; case 2: goto L_452318; case 3: goto L_45227c; case 4: goto L_45227c; case 5: goto L_45227c; case 6: goto L_45227c; case 7: goto L_45227c; case 8: goto L_452308; case 9: goto L_452328; case 10: goto L_452330; case 11: goto L_452390; case 12: goto L_452320; case 13: goto L_452358; case 14: goto L_452300; case 15: goto L_452350; case 16: goto L_452338; case 17: goto L_452340; case 18: goto L_452348; case 19: goto L_45227c; case 20: goto L_45227c; case 21: goto L_45227c; case 22: goto L_45227c; case 23: goto L_452360; case 24: goto L_452300; case 25: goto L_452378; case 26: goto L_452380; case 27: goto L_452370; case 28: goto L_452388; case 29: goto L_452368; case 30: goto L_45227c; case 31: goto L_452300; }
    L_45227c:;
    return r0;
    L_452300:;
    r4 = 18u;
    goto L_452394;
    L_452308:;
    r4 = 21u;
    goto L_452394;
    L_452310:;
    r4 = 20u;
    goto L_452394;
    L_452318:;
    r4 = 19u;
    goto L_452394;
    L_452320:;
    r4 = 27u;
    goto L_452394;
    L_452328:;
    r4 = 23u;
    goto L_452394;
    L_452330:;
    r4 = 22u;
    goto L_452394;
    L_452338:;
    r4 = 31u;
    goto L_452394;
    L_452340:;
    r4 = 32u;
    goto L_452394;
    L_452348:;
    r4 = 33u;
    goto L_452394;
    L_452350:;
    r4 = 30u;
    goto L_452394;
    L_452358:;
    r4 = 28u;
    goto L_452394;
    L_452360:;
    r4 = 35u;
    goto L_452394;
    L_452368:;
    r4 = 42u;
    goto L_452394;
    L_452370:;
    r4 = 41u;
    goto L_452394;
    L_452378:;
    r4 = 38u;
    goto L_452394;
    L_452380:;
    r4 = 39u;
    goto L_452394;
    L_452388:;
    r4 = 40u;
    goto L_452394;
    L_452390:;
    r4 = 26u;
    L_452394:;
    r0 = r5;
    r0 = Fn_4520a8_2(r0, r1);
    r1 = r4;
    r0 = Fn_4525f4_2(r0, r1);
    fa = r0; fb = 0u;
    *(u32*)(r5 + 144) = r0;
    if (fa == fb) goto L_45227c;
    r0 = 0u;
    *(u32*)(r5 + 148) = r6;
    *(u8*)(r5 + 140) = r0;
    return r0;
}

// FUN_00459fe4
void W_459fe4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 5u;
    r4 = r0;
    switch (r1) { case 0: goto L_45a00c; case 1: goto L_45a038; case 2: goto L_45a064; case 3: goto L_45a090; case 4: goto L_45a0bc; }
    return;
    L_45a00c:;
    r3 = 0u;
    r0 = *(u32*)(r4 + 112);
    r2 = r3;
    r1 = 12u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = *(u32*)(r4 + 116);
    r3 = 0u;
    r2 = r3;
    r1 = 4u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_45a038:;
    r3 = 0u;
    r0 = *(u32*)(r4 + 112);
    r2 = r3;
    r1 = 9u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = *(u32*)(r4 + 116);
    r3 = 0u;
    r2 = r3;
    r1 = 3u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_45a064:;
    r3 = 0u;
    r0 = *(u32*)(r4 + 112);
    r2 = r3;
    r1 = 6u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = *(u32*)(r4 + 116);
    r3 = 0u;
    r2 = r3;
    r1 = 2u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_45a090:;
    r3 = 0u;
    r0 = *(u32*)(r4 + 112);
    r2 = r3;
    r1 = 3u;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r0 = *(u32*)(r4 + 116);
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_45a0bc:;
    r3 = 0u;
    r0 = *(u32*)(r4 + 112);
    r2 = r3;
    r1 = r3;
    r0 = Fn_5c31cc_4(r0, r1, r2, r3);
    r3 = 0u;
    r0 = *(u32*)(r4 + 116);
    r2 = r3;
    r1 = r3;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
}

// FUN_00461268
void W_461268(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r1_2;
    r0_1 = Fn_4e0128_3(r0, ((u32)"SkinshipReaction"), 0u);
    *(u32*)(r0_1) = ((u32)g_0082643c);
    return;
}

// FUN_004a8664
u32 W_4a8664(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r0 = Fn_262e80_2(r0, r1);
    fa = r4; fb = 10u;
    switch (r4) { case 0: goto L_4a86a4; case 1: goto L_4a86ac; case 2: goto L_4a86b4; case 3: goto L_4a86bc; case 4: goto L_4a86c4; case 5: goto L_4a86cc; case 6: goto L_4a86d4; case 7: goto L_4a86dc; case 8: goto L_4a86e4; case 9: goto L_4a86ec; default: goto L_4a86f4; }
    goto L_4a86f4;
    L_4a86a4:;
    return Fn_261e40_1(r0);
    L_4a86ac:;
    return Fn_25fd04_1(r0);
    L_4a86b4:;
    return Fn_25ff24_1(r0);
    L_4a86bc:;
    return Fn_25ded4_1(r0);
    L_4a86c4:;
    return Fn_25debc_1(r0);
    L_4a86cc:;
    return Fn_260010_1(r0);
    L_4a86d4:;
    return Fn_260dc0_1(r0);
    L_4a86dc:;
    return Fn_260c30_1(r0);
    L_4a86e4:;
    return Fn_25ffec_1(r0);
    L_4a86ec:;
    return Fn_2611b4_1(r0);
    L_4a86f4:;
    r0 = 0u;
    return r0;
}

// FUN_004aa284
void W_4aa284(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0 + 4);
    fa = r4; fb = 0u;
    if (fa != fb) r5 = r1;
    if (fa == fb) goto L_4aa2fc;
    r1 = *(u32*)(r4 + 60);
    r0 = 0u;
    fa = r1; fb = 7u;
    switch (r1) { case 0: goto L_4aa2d4; case 1: goto L_4aa2c8; case 2: goto L_4aa2d0; case 3: goto L_4aa2d0; case 4: goto L_4aa2d4; case 5: goto L_4aa2c8; case 6: goto L_4aa2d0; default: goto L_4aa2d4; }
    goto L_4aa2d4;
    L_4aa2c8:;
    r0 = 1u;
    goto L_4aa2d4;
    L_4aa2d0:;
    r0 = 2u;
    L_4aa2d4:;
    fa = r0; fb = 1u;
    if (fa == fb) r5 = 5u;
    if (fa == fb) goto L_4aa2e8;
    fa = r0; fb = 2u;
    if (fa == fb) r5 = 6u;
    L_4aa2e8:;
    r0 = *(u32*)(r4 + 224);
    r2 = *(u32*)(r4 + 76);
    r1 = r5;
    r0 = Fn_4c6ba8_3(r0, r1, r2);
    *(u32*)(r4 + 84) = r5;
    L_4aa2fc:;
    return;
}

// FUN_004afe24
void W_4afe24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c967c_3(r0, ((u32)"TutorialUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00827a40);
    *(u8*)(r0_1 + 76) = r1_2;
    *(u8*)(r0_1 + 77) = r1_2;
    *(u8*)(r0_1 + 78) = r1_2;
    *(u32*)(r0_1 + 80) = r1_2;
    return;
}

// FUN_004b8084
u32 W_4b8084(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r5_1, r2_1, r1_1, r0_1, r4_1, r0_2, r0_3, r0_4, r0_5, r1_2, r2_2, r0_6, stk[3];
    r5_1 = 0u;
    r0_1 = Fn_4e0128_3(r0, ((u32)"BootCheckDemoProcess"), r5_1);
    r4_1 = r0_1;
    *(u32*)(r4_1) = ((u32)g_00827cbc);
    *(u32*)(r4_1 + 68) = r5_1;
    *(u32*)(r4_1 + 72) = r5_1;
    r0_4 = Fn_502494_1(((u32)stk));
    u64 t64 = *(u64*)((u32)stk); r0_5 = (u32)t64; r1_2 = (u32)(t64 >> 32);
    *(u32*)((r4_1 + 80u) + 0) = r0_5; *(u32*)((r4_1 + 80u) + 4) = r1_2; *(u32*)((r4_1 + 80u) + 8) = r5_1;
    return r4_1;
}

// FUN_004bfef8
void W_4bfef8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r0_1, r2_2, r1_2;
    r0_1 = Fn_5c80f0_3(r0, ((u32)"ManualBGUIOperator"), 0u);
    r1_2 = 0u;
    *(u32*)(r0_1 + 72) = r1_2;
    *(u32*)(r0_1) = ((u32)g_00827e1c);
    *(u32*)(r0_1 + 76) = r1_2;
    return;
}

// FUN_00576a58
u32 W_576a58() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_0e0f2c_0();
    r1 = *(signed char*)(r0 + 8);
    r0 = 0u;
    fa = r1; fb = 30u;
    switch (r1) { case 0: goto L_576aec; case 1: goto L_576aec; case 2: goto L_576aec; case 3: goto L_576aec; case 4: goto L_576aec; case 5: goto L_576aec; case 6: goto L_576aec; case 7: goto L_576aec; case 8: goto L_576aec; case 9: goto L_576aec; case 10: goto L_576aec; case 11: goto L_576aec; case 12: goto L_576aec; case 13: goto L_576aec; case 14: goto L_576af4; case 15: goto L_576afc; case 16: goto L_576b04; case 17: goto L_576b0c; case 18: goto L_576b14; case 19: goto L_576b1c; case 20: goto L_576b24; case 21: goto L_576b2c; case 22: goto L_576b34; case 23: goto L_576b3c; case 24: goto L_576b44; case 25: goto L_576b4c; case 26: goto L_576b54; case 27: goto L_576b5c; case 28: goto L_576b64; case 29: goto L_576aec; }
    return r0;
    L_576aec:;
    r0 = 435u;
    return r0;
    L_576af4:;
    r0 = 450u;
    return r0;
    L_576afc:;
    r0 = 98u;
    return r0;
    L_576b04:;
    r0 = 121u;
    return r0;
    L_576b0c:;
    r0 = 285u;
    return r0;
    L_576b14:;
    r0 = 324u;
    return r0;
    L_576b1c:;
    r0 = 448u;
    return r0;
    L_576b24:;
    r0 = 449u;
    return r0;
    L_576b2c:;
    r0 = 338u;
    return r0;
    L_576b34:;
    r0 = 451u;
    return r0;
    L_576b3c:;
    r0 = 452u;
    return r0;
    L_576b44:;
    r0 = 447u;
    return r0;
    L_576b4c:;
    r0 = 446u;
    return r0;
    L_576b54:;
    r0 = 437u;
    return r0;
    L_576b5c:;
    r0 = 393u;
    return r0;
    L_576b64:;
    r0 = 117u;
    return r0;
}

// FUN_005c602c
void W_5c602c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r0_2, r5_1, r0_3, r0_4, r1_2, r0_5, r0_6;
    r5_1 = *(u32*)((*(u32*)(((u32)g_008bfa48))) + 8);
    r0_4 = Fn_5ea0d8_2(r5_1, ((u32)"."));
    r0_6 = Fn_5ea204_2(r5_1, 0u);
    *(u32*)(r0 + 2860) = r0_6;
    return;
}

// FUN_005cee4c
u32 W_5cee4c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r0 = Fn_50c2e4_0();
    fa = r0; fb = 5u;
    switch (r0) { case 0: goto L_5cee78; case 1: goto L_5cee78; case 2: goto L_5cee80; case 3: goto L_5cee88; case 4: goto L_5cee90; default: goto L_5cee94; }
    goto L_5cee94;
    L_5cee78:;
    r4 = 4u;
    goto L_5cee94;
    L_5cee80:;
    r4 = 3u;
    goto L_5cee94;
    L_5cee88:;
    r4 = 2u;
    goto L_5cee94;
    L_5cee90:;
    r4 = 1u;
    L_5cee94:;
    r0 = r4;
    return r0;
}

// FUN_005d00fc
u32 W_5d00fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 13u;
    switch (r1) { case 0: goto L_5d0160; case 1: goto L_5d0158; case 2: goto L_5d0140; case 3: goto L_5d0158; case 4: goto L_5d0160; case 5: goto L_5d0158; case 6: goto L_5d0160; case 7: goto L_5d0158; case 8: goto L_5d0158; case 9: goto L_5d0160; case 10: goto L_5d0158; case 11: goto L_5d0160; case 12: goto L_5d0158; default: goto L_5d0160; }
    goto L_5d0160;
    L_5d0140:;
    r0 = Fn_502114_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 29u;
    if (fa == fb) r0 = 28u;
    return r0;
    L_5d0158:;
    r0 = 31u;
    return r0;
    L_5d0160:;
    r0 = 30u;
    return r0;
}

// FUN_0062c110
u32 W_62c110(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1;
    r12 = *(u32*)(r3 + 76);
    r5 = r2;
    r4 = 0u;
    fa = r12; fb = 0u;
    if (fa == fb) goto L_62c274;
    fa = r0; fb = 18u;
    r1 = ~0u;
    r2 = 8u;
    switch (r0) { case 0: goto L_62c188; case 1: goto L_62c194; case 2: goto L_62c19c; case 3: goto L_62c1a8; case 4: goto L_62c1b4; case 5: goto L_62c1bc; case 6: goto L_62c1c8; case 7: goto L_62c1d4; case 8: goto L_62c1dc; case 9: goto L_62c1e8; case 10: goto L_62c1f4; case 11: goto L_62c1fc; case 12: goto L_62c208; case 13: goto L_62c214; case 14: goto L_62c21c; case 15: goto L_62c228; case 16: goto L_62c234; case 17: goto L_62c23c; default: goto L_62c244; }
    goto L_62c244;
    L_62c188:;
    r1 = 0u;
    r2 = r1;
    goto L_62c244;
    L_62c194:;
    r1 = 1u;
    goto L_62c1a0;
    L_62c19c:;
    r1 = 2u;
    L_62c1a0:;
    r2 = 0u;
    goto L_62c244;
    L_62c1a8:;
    r1 = 0u;
    r2 = 1u;
    goto L_62c244;
    L_62c1b4:;
    r1 = 1u;
    goto L_62c1c0;
    L_62c1bc:;
    r1 = 2u;
    L_62c1c0:;
    r2 = 1u;
    goto L_62c244;
    L_62c1c8:;
    r1 = 0u;
    r2 = 2u;
    goto L_62c244;
    L_62c1d4:;
    r1 = 1u;
    goto L_62c1e0;
    L_62c1dc:;
    r1 = 2u;
    L_62c1e0:;
    r2 = 2u;
    goto L_62c244;
    L_62c1e8:;
    r1 = 0u;
    r2 = 3u;
    goto L_62c244;
    L_62c1f4:;
    r1 = 1u;
    goto L_62c200;
    L_62c1fc:;
    r1 = 2u;
    L_62c200:;
    r2 = 3u;
    goto L_62c244;
    L_62c208:;
    r1 = 0u;
    r2 = 4u;
    goto L_62c244;
    L_62c214:;
    r1 = 1u;
    goto L_62c220;
    L_62c21c:;
    r1 = 2u;
    L_62c220:;
    r2 = 4u;
    goto L_62c244;
    L_62c228:;
    r1 = 0u;
    r2 = 5u;
    goto L_62c244;
    L_62c234:;
    r1 = 1u;
    goto L_62c240;
    L_62c23c:;
    r1 = 2u;
    L_62c240:;
    r2 = 5u;
    L_62c244:;
    fa = r1; fb = 0u - 1u;
    r0 = 0u;
    if (fa == fb) goto L_62c268;
    r3 = r3 + 8u;
    r0 = r12;
    r0 = Fn_62d5d8_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) goto L_62c270;
    L_62c268:;
    fa = r5; fb = r0;
    if ((int)fa >= (int)fb) goto L_62c274;
    L_62c270:;
    r4 = 1u;
    L_62c274:;
    r0 = r4;
    return r0;
}

// FUN_0062fba0
u32 W_62fba0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r7 = r1;
    r6 = 0u;
    r0 = 24u;
    r0 = Fn_2ae4b8_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r6 = 1u;
    fa = r7; fb = 5u;
    r4 = 0u;
    switch (r7) { case 0: goto L_62fc48; case 1: goto L_62fbfc; case 2: goto L_62fbe4; case 3: goto L_62fc3c; case 4: goto L_62fc14; default: goto L_62fc48; }
    goto L_62fc48;
    L_62fbe4:;
    r4 = *(short*)(r5 + 6);
    fa = r6; fb = 0u;
    if (fa == fb) goto L_62fc48;
    fa = r4; fb = 127u;
    if ((int)fa >= (int)fb) goto L_62fc48;
    goto L_62fc34;
    L_62fbfc:;
    r4 = *(short*)(r5 + 4);
    fa = r6; fb = 0u;
    if (fa == fb) goto L_62fc48;
    fa = r4; fb = 127u;
    if ((int)fa >= (int)fb) goto L_62fc48;
    goto L_62fc34;
    L_62fc14:;
    r0 = *(signed char*)(r5 + 8);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) r4 = 0u - r0;
    r0 = 24u;
    r0 = Fn_2ae4b8_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_62fc48;
    L_62fc34:;
    r4 = 127u;
    goto L_62fc48;
    L_62fc3c:;
    r0 = *(signed char*)(r5 + 8);
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r4 = r0;
    L_62fc48:;
    r0 = r4;
    return r0;
}
