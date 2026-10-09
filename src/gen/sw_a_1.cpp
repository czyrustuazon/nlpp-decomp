// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_3e98a8_2(u32, u32);
u32 Fn_3e9b88_2(u32, u32);
u32 Fn_3e9fdc_2(u32, u32);
u32 Fn_3ea154_2(u32, u32);
u32 Fn_3ea534_2(u32, u32);
u32 Fn_3ea83c_2(u32, u32);
u32 Fn_016d5c_4(u32, u32, u32, u32);
u32 Fn_3f1324_4(u32, u32, u32, u32);
u32 Fn_3f710c_2(u32, u32);
u32 Fn_3f8398_2(u32, u32);
u32 Fn_3f8ae8_2(u32, u32);
u32 Fn_3f9130_2(u32, u32);
u32 Fn_3f9654_2(u32, u32);
u32 Fn_402908_4(u32, u32, u32, u32);
u32 Fn_4058e0_2(u32, u32);
u32 Fn_405ea8_4(u32, u32, u32, u32);
extern char g_00823c8c[];
u32 Fn_4e0128_3(u32, u32, u32);
u32 Fn_007ed4_3(u32, u32, u32);
u32 Fn_3ea238_2(u32, u32);
u32 Fn_419778_2(u32, u32);
u32 Fn_419b64_2(u32, u32);
u32 Fn_41a080_2(u32, u32);
u32 Fn_41b218_2(u32, u32);
u32 Fn_41ba28_2(u32, u32);
u32 Fn_41c370_2(u32, u32);
u32 Fn_41d3b0_2(u32, u32);
u32 Fn_41e56c_2(u32, u32);
u32 Fn_3ea238_1(u32);
u32 Fn_42f43c_4(u32, u32, u32, u32);
u32 Fn_437648_2(u32, u32);
u32 Fn_437bd0_2(u32, u32);
u32 Fn_437ed0_2(u32, u32);
u32 Fn_5a1010_4(u32, u32, u32, u32);
u32 Fn_0001cc_3(u32, u32, u32);
u32 Fn_014b20_1(u32);
u32 Fn_02a080_1(u32);
u32 Fn_1fcd88_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_58dcfc_1(u32);
u32 Fn_58dd98_1(u32);
u32 Fn_58f378_1(u32);
u32 Fn_58f4e0_1(u32);
u32 Fn_5a4454_2(u32, u32);
u32 WeakCall2(u32, u32);
u32 Fn_50c2e4_0();
extern char g_0089a330[];
u32 Fn_01026c_3(u32, u32, u32);

// FUN_00322608
u32 W_322608(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 - 256u;
    r1 = r1 - 175u;
    fa = r1; fb = 35u;
    switch (r1) { case 0: goto L_3226a8; case 1: goto L_3226b0; case 2: goto L_3226b8; case 3: goto L_322618; case 4: goto L_3226c0; case 5: goto L_3226c8; case 6: goto L_3226d0; case 7: goto L_322618; case 8: goto L_3226d8; case 9: goto L_3226e0; case 10: goto L_3226e8; case 11: goto L_322618; case 12: goto L_3226f0; case 13: goto L_3226f8; case 14: goto L_3226f8; case 15: goto L_322618; case 16: goto L_322708; case 17: goto L_322700; case 18: goto L_322708; case 19: goto L_322618; case 20: goto L_322710; case 21: goto L_322718; case 22: goto L_322720; case 23: goto L_322618; case 24: goto L_322730; case 25: goto L_322728; case 26: goto L_322730; case 27: goto L_322618; case 28: goto L_322738; case 29: goto L_322740; case 30: goto L_322740; case 31: goto L_322618; case 32: goto L_322750; case 33: goto L_322748; case 34: goto L_322750; }
    L_322618:;
    return r0;
    L_3226a8:;
    r0 = 331u;
    return r0;
    L_3226b0:;
    r0 = 330u;
    return r0;
    L_3226b8:;
    r0 = 9u;
    return r0;
    L_3226c0:;
    r0 = 338u;
    return r0;
    L_3226c8:;
    r0 = 340u;
    return r0;
    L_3226d0:;
    r0 = 339u;
    return r0;
    L_3226d8:;
    r0 = 342u;
    return r0;
    L_3226e0:;
    r0 = 343u;
    return r0;
    L_3226e8:;
    r0 = 345u;
    return r0;
    L_3226f0:;
    r0 = 350u;
    return r0;
    L_3226f8:;
    r0 = 348u;
    return r0;
    L_322700:;
    r0 = 354u;
    return r0;
    L_322708:;
    r0 = 353u;
    return r0;
    L_322710:;
    r0 = 47u;
    return r0;
    L_322718:;
    r0 = 360u;
    return r0;
    L_322720:;
    r0 = 361u;
    return r0;
    L_322728:;
    r0 = 367u;
    return r0;
    L_322730:;
    r0 = 370u;
    return r0;
    L_322738:;
    r0 = 376u;
    return r0;
    L_322740:;
    r0 = 373u;
    return r0;
    L_322748:;
    r0 = 379u;
    return r0;
    L_322750:;
    r0 = 382u;
    return r0;
}

// FUN_0034ac50
u32 W_34ac50(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_34ac88; case 1: goto L_34ac88; case 2: goto L_34ac60; case 3: goto L_34ac88; case 4: goto L_34ac88; case 5: goto L_34ac88; case 6: goto L_34ac60; case 7: goto L_34ac60; case 8: goto L_34ac88; }
    L_34ac60:;
    return r0;
    L_34ac88:;
    r0 = 107u;
    return r0;
}

// FUN_003822b0
u32 W_3822b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_3822e8; case 1: goto L_3822e8; case 2: goto L_3822c0; case 3: goto L_3822e8; case 4: goto L_3822e8; case 5: goto L_3822e8; case 6: goto L_3822c0; case 7: goto L_3822c0; case 8: goto L_3822e8; }
    L_3822c0:;
    return r0;
    L_3822e8:;
    r0 = 445u;
    return r0;
}

// FUN_00383fdc
u32 W_383fdc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_384014; case 1: goto L_384014; case 2: goto L_383fec; case 3: goto L_384014; case 4: goto L_384014; case 5: goto L_384014; case 6: goto L_383fec; case 7: goto L_383fec; case 8: goto L_384014; }
    L_383fec:;
    return r0;
    L_384014:;
    r0 = 2609u;
    return r0;
}

// FUN_00385898
u32 W_385898(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_3858d0; case 1: goto L_3858d0; case 2: goto L_3858a8; case 3: goto L_3858d0; case 4: goto L_3858d0; case 5: goto L_3858d0; case 6: goto L_3858a8; case 7: goto L_3858a8; case 8: goto L_3858d0; }
    L_3858a8:;
    return r0;
    L_3858d0:;
    r0 = 97922u;
    return r0;
}

// FUN_0038b2d4
u32 W_38b2d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_38b30c; case 1: goto L_38b30c; case 2: goto L_38b2e4; case 3: goto L_38b30c; case 4: goto L_38b30c; case 5: goto L_38b30c; case 6: goto L_38b2e4; case 7: goto L_38b2e4; case 8: goto L_38b30c; }
    L_38b2e4:;
    return r0;
    L_38b30c:;
    r0 = 1047570u;
    return r0;
}

// FUN_0038dc08
u32 W_38dc08(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 7u;
    switch (r1) { case 0: goto L_38dc30; case 1: goto L_38dc38; case 2: goto L_38dc40; case 3: goto L_38dc48; case 4: goto L_38dc50; case 5: goto L_38dc58; case 6: goto L_38dc60; default: goto L_38dc68; }
    goto L_38dc68;
    L_38dc30:;
    r0 = *(u32*)(r0 + 12);
    return r0;
    L_38dc38:;
    r0 = *(u32*)(r0 + 16);
    return r0;
    L_38dc40:;
    r0 = *(u32*)(r0 + 20);
    return r0;
    L_38dc48:;
    r0 = *(u32*)(r0 + 24);
    return r0;
    L_38dc50:;
    r0 = *(u32*)(r0 + 28);
    return r0;
    L_38dc58:;
    r0 = *(u32*)(r0 + 32);
    return r0;
    L_38dc60:;
    r0 = *(u32*)(r0 + 36);
    return r0;
    L_38dc68:;
    r0 = 0u;
    return r0;
}

// FUN_0038ee38
u32 W_38ee38(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 - 30u;
    fa = r1; fb = 6u;
    r0 = ~0u;
    switch (r1) { case 0: goto L_38ee64; case 1: goto L_38ee6c; case 2: goto L_38ee74; case 3: goto L_38ee7c; case 4: goto L_38ee84; case 5: goto L_38ee8c; }
    return r0;
    L_38ee64:;
    r0 = 0u;
    return r0;
    L_38ee6c:;
    r0 = 1u;
    return r0;
    L_38ee74:;
    r0 = 2u;
    return r0;
    L_38ee7c:;
    r0 = 3u;
    return r0;
    L_38ee84:;
    r0 = 4u;
    return r0;
    L_38ee8c:;
    r0 = 5u;
    return r0;
}

// FUN_003920d8
u32 W_3920d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_392110; case 1: goto L_392110; case 2: goto L_3920e8; case 3: goto L_392110; case 4: goto L_392110; case 5: goto L_392110; case 6: goto L_3920e8; case 7: goto L_3920e8; case 8: goto L_392110; }
    L_3920e8:;
    return r0;
    L_392110:;
    r0 = 972942u;
    return r0;
}

// FUN_0039257c
u32 W_39257c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_3925b4; case 1: goto L_3925b4; case 2: goto L_39258c; case 3: goto L_3925b4; case 4: goto L_3925b4; case 5: goto L_3925b4; case 6: goto L_39258c; case 7: goto L_39258c; case 8: goto L_3925b4; }
    L_39258c:;
    return r0;
    L_3925b4:;
    r0 = 31512u;
    return r0;
}

// FUN_003955f4
u32 W_3955f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_39562c; case 1: goto L_39562c; case 2: goto L_395604; case 3: goto L_39562c; case 4: goto L_39562c; case 5: goto L_39562c; case 6: goto L_395604; case 7: goto L_395604; case 8: goto L_39562c; }
    L_395604:;
    return r0;
    L_39562c:;
    r0 = 993426u;
    return r0;
}

// FUN_00398708
u32 W_398708(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_398740; case 1: goto L_398740; case 2: goto L_398718; case 3: goto L_398740; case 4: goto L_398740; case 5: goto L_398740; case 6: goto L_398718; case 7: goto L_398718; case 8: goto L_398740; }
    L_398718:;
    return r0;
    L_398740:;
    r0 = 945664u;
    return r0;
}

// FUN_0039b2c0
u32 W_39b2c0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_39b2f8; case 1: goto L_39b2f8; case 2: goto L_39b2f8; case 3: goto L_39b2f8; case 4: goto L_39b2f8; case 5: goto L_39b2f8; case 6: goto L_39b2d0; case 7: goto L_39b2d0; case 8: goto L_39b2f8; }
    L_39b2d0:;
    return r0;
    L_39b2f8:;
    r0 = 732u;
    return r0;
}

// FUN_0039c938
u32 W_39c938(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 9u;
    switch (r0) { case 0: goto L_39c970; case 1: goto L_39c970; case 2: goto L_39c970; case 3: goto L_39c970; case 4: goto L_39c970; case 5: goto L_39c970; case 6: goto L_39c968; case 7: goto L_39c968; case 8: goto L_39c970; default: goto L_39c968; }
    goto L_39c968;
    L_39c968:;
    r0 = 0u;
    return r0;
    L_39c970:;
    r0 = 107u;
    return r0;
}

// FUN_0039dab4
u32 W_39dab4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 8u;
    switch (r0) { case 0: goto L_39dae8; case 1: goto L_39dae8; case 2: goto L_39dae8; case 3: goto L_39dae8; case 4: goto L_39dae8; case 5: goto L_39dae8; case 6: goto L_39dae0; case 7: goto L_39dae0; default: goto L_39dae8; }
    goto L_39dae8;
    L_39dae0:;
    r0 = 0u;
    return r0;
    L_39dae8:;
    r0 = 8192u;
    return r0;
}

// FUN_0039e75c
u32 W_39e75c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_39e794; case 1: goto L_39e794; case 2: goto L_39e76c; case 3: goto L_39e794; case 4: goto L_39e794; case 5: goto L_39e794; case 6: goto L_39e76c; case 7: goto L_39e76c; case 8: goto L_39e794; }
    L_39e76c:;
    return r0;
    L_39e794:;
    r0 = 993426u;
    return r0;
}

// FUN_003e9724
u32 W_3e9724(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 6u;
    r4 = r0;
    switch (r1) { case 0: goto L_3e9750; case 1: goto L_3e9778; case 2: goto L_3e97a0; case 3: goto L_3e97c8; case 4: goto L_3e97f0; case 5: goto L_3e9818; default: goto L_3e9840; }
    goto L_3e9840;
    L_3e9750:;
    r2 = 16u;
    r1 = 0u;
    r0 = r2;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9844;
    r1 = r4;
    return Fn_3e9b88_2(r0, r1);
    L_3e9778:;
    r2 = 16u;
    r1 = 0u;
    r0 = r2;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9844;
    r1 = r4;
    return Fn_3e98a8_2(r0, r1);
    L_3e97a0:;
    r2 = 16u;
    r1 = 0u;
    r0 = 32u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9844;
    r1 = r4;
    return Fn_3e9fdc_2(r0, r1);
    L_3e97c8:;
    r2 = 16u;
    r1 = 0u;
    r0 = 28u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9844;
    r1 = r4;
    return Fn_3ea83c_2(r0, r1);
    L_3e97f0:;
    r2 = 16u;
    r1 = 0u;
    r0 = 12u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9844;
    r1 = r4;
    return Fn_3ea154_2(r0, r1);
    L_3e9818:;
    r2 = 16u;
    r1 = 0u;
    r0 = r2;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3e9844;
    r1 = r4;
    return Fn_3ea534_2(r0, r1);
    L_3e9840:;
    r0 = 0u;
    L_3e9844:;
    return r0;
}

// FUN_003f3b8c
u32 W_3f3b8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 10u;
    r4 = r0;
    switch (r1) { case 0: goto L_3f3bc8; case 1: goto L_3f3bf0; case 2: goto L_3f3c20; case 3: goto L_3f3c48; case 4: goto L_3f3c70; case 5: goto L_3f3c98; case 6: goto L_3f3d50; case 7: goto L_3f3cc0; case 8: goto L_3f3cf0; case 9: goto L_3f3d20; default: goto L_3f3d50; }
    goto L_3f3d50;
    L_3f3bc8:;
    r2 = 16u;
    r1 = 0u;
    r0 = 76u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    return Fn_3f710c_2(r0, r1);
    L_3f3bf0:;
    r2 = 16u;
    r1 = 0u;
    r0 = 168u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    r3 = 0u;
    r2 = 2u;
    return Fn_405ea8_4(r0, r1, r2, r3);
    L_3f3c20:;
    r2 = 16u;
    r1 = 0u;
    r0 = 112u;
    r0 = Fn_016d5c_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    return Fn_3f9130_2(r0, r1);
    L_3f3c48:;
    r2 = 16u;
    r1 = 0u;
    r0 = 616u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    return Fn_3f8398_2(r0, r1);
    L_3f3c70:;
    r2 = 16u;
    r1 = 0u;
    r0 = 104u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    return Fn_3f8ae8_2(r0, r1);
    L_3f3c98:;
    r2 = 16u;
    r1 = 0u;
    r0 = 108u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    return Fn_3f9654_2(r0, r1);
    L_3f3cc0:;
    r2 = 16u;
    r1 = 0u;
    r0 = 268u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    r3 = 0u;
    r2 = 2u;
    return Fn_402908_4(r0, r1, r2, r3);
    L_3f3cf0:;
    r2 = 16u;
    r1 = 0u;
    r0 = 268u;
    r0 = Fn_016d5c_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    r3 = 1u;
    r2 = ~0u;
    return Fn_402908_4(r0, r1, r2, r3);
    L_3f3d20:;
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_3f1324_4(r0, r1, r2, r3);
    r2 = 16u;
    r1 = 0u;
    r0 = 92u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_3f3d54;
    r1 = *(u32*)(r4 + 4);
    return Fn_4058e0_2(r0, r1);
    L_3f3d50:;
    r0 = 0u;
    L_3f3d54:;
    return r0;
}

// FUN_00406fcc
u32 W_406fcc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r2_1, r1_1, r0_1, r1_2;
    r0_1 = Fn_4e0128_3(r0, ((u32)"texloadcheck"), 0u);
    *(u32*)(r0_1) = ((u32)g_00823c8c);
    *(u32*)(r0_1 + 68) = r1;
    return r0_1;
}

// FUN_0040ae5c
void W_40ae5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 8);
    r2 = (u32)"SndThread";
    r1 = 0u;
    r0 = Fn_007ed4_3(r0, r1, r2);
    r0 = *(u32*)(r4 + 12);
    r2 = (u32)"RcvThread";
    r1 = 0u;
    { Fn_007ed4_3(r0, r1, r2); return; }
}

// FUN_0040b214
void W_40b214(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + r1;
    r2 = *(u8*)(r2 + 341);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_40b230;
    fa = r1; fb = 7u;
    r2 = 1u;
    switch (r1) { case 0: goto L_40b258; case 1: goto L_40b250; case 2: goto L_40b258; case 3: goto L_40b260; case 4: goto L_40b260; case 5: goto L_40b260; case 6: goto L_40b260; }
    L_40b230:;
    return;
    L_40b250:;
    *(u8*)(r0 + 340) = r2;
    return;
    L_40b258:;
    { Fn_3ea238_2(r0, r1); return; }
    L_40b260:;
    *(u8*)(r0 + 332) = r2;
    return;
}

// FUN_0040ce94
u32 W_40ce94(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 12u;
    r4 = r0;
    switch (r1) { case 0: goto L_40ced8; case 1: goto L_40cf00; case 2: goto L_40cf20; case 3: goto L_40cf5c; case 4: goto L_40cf84; case 5: goto L_40cfa4; case 6: goto L_40cfc4; case 7: goto L_40cfec; case 8: goto L_40d014; case 9: goto L_40d03c; case 10: goto L_40d064; case 11: goto L_40d08c; default: goto L_40d0b4; }
    goto L_40d0b4;
    L_40ced8:;
    r2 = 16u;
    r1 = 0u;
    r0 = 76u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_41a080_2(r0, r1);
    L_40cf00:;
    r2 = 16u;
    r1 = 0u;
    r0 = 88u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_40d008;
    L_40cf1c:;
    return r0;
    L_40cf20:;
    r2 = 16u;
    r1 = 0u;
    r0 = 168u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) r2 = 452u;
    if (fa == fb) r3 = 0u;
    if (fa != fb) r3 = *(signed char*)(r2 + r1);
    r2 = 3u;
    return Fn_405ea8_4(r0, r1, r2, r3);
    L_40cf5c:;
    r2 = 16u;
    r1 = 0u;
    r0 = 120u;
    r0 = Fn_016d5c_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_41b218_2(r0, r1);
    L_40cf84:;
    r2 = 16u;
    r1 = 0u;
    r0 = 88u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_40d008;
    return r0;
    L_40cfa4:;
    r2 = 16u;
    r1 = 0u;
    r0 = 88u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_40d008;
    return r0;
    L_40cfc4:;
    r2 = 16u;
    r1 = 0u;
    r0 = 264u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_419778_2(r0, r1);
    L_40cfec:;
    r2 = 16u;
    r1 = 0u;
    r0 = 88u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    L_40d008:;
    r1 = *(u32*)(r4 + 4);
    return Fn_41e56c_2(r0, r1);
    L_40d014:;
    r2 = 16u;
    r1 = 0u;
    r0 = 112u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_41d3b0_2(r0, r1);
    L_40d03c:;
    r2 = 16u;
    r1 = 0u;
    r0 = 152u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_41ba28_2(r0, r1);
    L_40d064:;
    r2 = 16u;
    r1 = 0u;
    r0 = 404u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_41c370_2(r0, r1);
    L_40d08c:;
    r2 = 16u;
    r1 = 0u;
    r0 = 92u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_40cf1c;
    r1 = *(u32*)(r4 + 4);
    return Fn_419b64_2(r0, r1);
    L_40d0b4:;
    r0 = 0u;
    return r0;
}

// FUN_0042ef2c
void W_42ef2c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0 + r1;
    r4 = r0;
    r0 = *(u8*)(r5 + 355);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_42efb0;
    fa = r1; fb = 5u;
    r6 = 1u;
    r0 = r4 + 256u;
    switch (r1) { case 0: goto L_42ef6c; case 1: goto L_42ef8c; case 2: goto L_42ef78; case 3: goto L_42ef9c; case 4: goto L_42ef9c; default: goto L_42ef78; }
    goto L_42ef78;
    L_42ef6c:;
    r0 = *(u8*)(r0 + 98);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_42efa8;
    L_42ef78:;
    r0 = r4;
    r0 = Fn_3ea238_2(r0, r1);
    goto L_42efa8;
    L_42ef8c:;
    r0 = *(u8*)(r0 + 96);
    fa = r0; fb = 0u;
    if (fa != fb) *(u8*)(r4 + 353) = r6;
    goto L_42efa8;
    L_42ef9c:;
    r0 = r4;
    r0 = Fn_3ea238_1(r0);
    *(u8*)(r4 + 332) = r6;
    L_42efa8:;
    r0 = 0u;
    *(u8*)(r5 + 355) = r0;
    L_42efb0:;
    return;
}

// FUN_004314e0
u32 W_4314e0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 7u;
    r4 = r0;
    switch (r1) { case 0: goto L_431510; case 1: goto L_431538; case 2: goto L_431568; case 3: goto L_431590; case 4: goto L_4315b8; case 5: goto L_4315e8; case 6: goto L_431618; default: goto L_431648; }
    goto L_431648;
    L_431510:;
    r2 = 16u;
    r1 = 0u;
    r0 = 76u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    return Fn_437648_2(r0, r1);
    L_431538:;
    r2 = 16u;
    r1 = 0u;
    r0 = 168u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    r3 = 0u;
    r2 = 2u;
    return Fn_405ea8_4(r0, r1, r2, r3);
    L_431568:;
    r2 = 16u;
    r1 = 0u;
    r0 = 128u;
    r0 = Fn_016d5c_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    return Fn_437bd0_2(r0, r1);
    L_431590:;
    r2 = 16u;
    r1 = 0u;
    r0 = 80u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    return Fn_437ed0_2(r0, r1);
    L_4315b8:;
    r2 = 16u;
    r1 = 0u;
    r0 = 268u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    r3 = 0u;
    r2 = 2u;
    return Fn_402908_4(r0, r1, r2, r3);
    L_4315e8:;
    r2 = 16u;
    r1 = 0u;
    r0 = 268u;
    r0 = Fn_016d5c_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    r3 = 1u;
    r2 = ~0u;
    return Fn_402908_4(r0, r1, r2, r3);
    L_431618:;
    r0 = *(u32*)(r4 + 4);
    r0 = Fn_42f43c_4(r0, r1, r2, r3);
    r2 = 16u;
    r1 = 0u;
    r0 = 92u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_43164c;
    r1 = *(u32*)(r4 + 4);
    return Fn_4058e0_2(r0, r1);
    L_431648:;
    r0 = 0u;
    L_43164c:;
    return r0;
}

// FUN_0047442c
u32 W_47442c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 7u;
    fa = r0; fb = 17u;
    switch (r0) { case 0: goto L_474480; case 1: goto L_474498; case 2: goto L_474498; case 3: goto L_474488; case 4: goto L_474490; case 5: goto L_474488; case 6: goto L_474490; case 7: goto L_474488; case 8: goto L_474490; case 9: goto L_474488; case 10: goto L_474490; case 11: goto L_474488; case 12: goto L_474490; case 13: goto L_474488; case 14: goto L_474490; case 15: goto L_474488; case 16: goto L_474490; default: goto L_474498; }
    goto L_474498;
    L_474480:;
    r0 = 1u;
    return r0;
    L_474488:;
    r0 = 2u;
    return r0;
    L_474490:;
    r0 = 3u;
    return r0;
    L_474498:;
    r0 = 0u;
    return r0;
}

// FUN_0048729c
u32 W_48729c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_SP_Win01";
    return r0_1;
}

// FUN_00487684
u32 W_487684() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_SP_Win03";
    return r0_1;
}

// FUN_004966fc
u32 W_4966fc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_ComWin01";
    return r0_1;
}

// FUN_0049b4bc
u32 W_49b4bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_SP_Win00";
    return r0_1;
}

// FUN_0049c7a0
u32 W_49c7a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_Win_List";
    return r0_1;
}

// FUN_0049d4c8
u32 W_49d4c8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_SP_Win02";
    return r0_1;
}

// FUN_0049ef88
u32 W_49ef88() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Nul_Belt_Quest";
    return r0_1;
}

// FUN_00572058
void W_572058(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = r2 + (r2 << 2);
    r0 = r1 + (r0 << 2);
    r0 = r0 + 172u;
    r0 = r0 + r3;
    r0 = *(u8*)(r0 + 6);
    fa = r0; fb = 14u;
    switch (r0) { case 0: goto L_572104; case 1: goto L_5720bc; case 2: goto L_5720c4; case 3: goto L_5720cc; case 4: goto L_5720d4; case 5: goto L_5720dc; case 6: goto L_572104; case 7: goto L_572104; case 8: goto L_5720e4; case 9: goto L_5720ec; case 10: goto L_572104; case 11: goto L_572104; case 12: goto L_5720f4; case 13: goto L_5720fc; default: goto L_572104; }
    goto L_572104;
    L_5720bc:;
    r1 = 1u;
    goto L_572108;
    L_5720c4:;
    r1 = 2u;
    goto L_572108;
    L_5720cc:;
    r1 = 3u;
    goto L_572108;
    L_5720d4:;
    r1 = 4u;
    goto L_572108;
    L_5720dc:;
    r1 = 5u;
    goto L_572108;
    L_5720e4:;
    r1 = 6u;
    goto L_572108;
    L_5720ec:;
    r1 = 7u;
    goto L_572108;
    L_5720f4:;
    r1 = 8u;
    goto L_572108;
    L_5720fc:;
    r1 = 9u;
    goto L_572108;
    L_572104:;
    r1 = 0u;
    L_572108:;
    r0 = (u32)stk;
    r0 = Fn_5a1010_4(r0, r1, r2, r3);
    u64 t64 = *(u64*)(r0); r0 = (u32)t64; r1 = (u32)(t64 >> 32);
    *(u64*)(r4) = (u64)r0 | ((u64)r1 << 32);
    return;
}

// FUN_00572288
void W_572288(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = a2 + (a2 << 2);
    r0 = r1 + (r0 << 2);
    r0 = r0 + 172u;
    r0 = r0 + a3;
    r0 = *(u8*)(r0 + 15);
    fa = r0; fb = 8u;
    switch (r0) { case 0: goto L_57230c; case 1: goto L_5722d4; case 2: goto L_5722dc; case 3: goto L_5722e4; case 4: goto L_5722ec; case 5: goto L_5722f4; case 6: goto L_5722fc; case 7: goto L_572304; default: goto L_57230c; }
    goto L_57230c;
    L_5722d4:;
    r1 = 3u;
    goto L_572310;
    L_5722dc:;
    r1 = 4u;
    goto L_572310;
    L_5722e4:;
    r1 = 5u;
    goto L_572310;
    L_5722ec:;
    r1 = 6u;
    goto L_572310;
    L_5722f4:;
    r1 = 7u;
    goto L_572310;
    L_5722fc:;
    r1 = 8u;
    goto L_572310;
    L_572304:;
    r1 = 9u;
    goto L_572310;
    L_57230c:;
    r1 = 2u;
    L_572310:;
    r0 = (u32)stk;
    r0 = Fn_5a1010_4(r0, r1, a2, a3);
    u64 t64 = *(u64*)(r0); r0 = (u32)t64; r1 = (u32)(t64 >> 32);
    *(u64*)(r4) = (u64)r0 | ((u64)r1 << 32);
    return;
}

// FUN_00572328
void W_572328(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = r2 + (r2 << 2);
    r0 = r1 + (r0 << 2);
    r0 = r0 + 172u;
    r0 = r0 + r3;
    r0 = *(u8*)(r0 + 12);
    fa = r0; fb = 16u;
    switch (r0) { case 0: goto L_5723dc; case 1: goto L_572394; case 2: goto L_57239c; case 3: goto L_5723a4; case 4: goto L_5723ac; case 5: goto L_5723b4; case 6: goto L_5723bc; case 7: goto L_5723dc; case 8: goto L_5723dc; case 9: goto L_5723dc; case 10: goto L_5723dc; case 11: goto L_5723dc; case 12: goto L_5723dc; case 13: goto L_5723c4; case 14: goto L_5723cc; case 15: goto L_5723d4; default: goto L_5723dc; }
    goto L_5723dc;
    L_572394:;
    r1 = 1u;
    goto L_5723e0;
    L_57239c:;
    r1 = 2u;
    goto L_5723e0;
    L_5723a4:;
    r1 = 3u;
    goto L_5723e0;
    L_5723ac:;
    r1 = 4u;
    goto L_5723e0;
    L_5723b4:;
    r1 = 5u;
    goto L_5723e0;
    L_5723bc:;
    r1 = 6u;
    goto L_5723e0;
    L_5723c4:;
    r1 = 7u;
    goto L_5723e0;
    L_5723cc:;
    r1 = 8u;
    goto L_5723e0;
    L_5723d4:;
    r1 = 9u;
    goto L_5723e0;
    L_5723dc:;
    r1 = 0u;
    L_5723e0:;
    r0 = (u32)stk;
    r0 = Fn_5a1010_4(r0, r1, r2, r3);
    u64 t64 = *(u64*)(r0); r0 = (u32)t64; r1 = (u32)(t64 >> 32);
    *(u64*)(r4) = (u64)r0 | ((u64)r1 << 32);
    return;
}

// FUN_00589c10
u32 W_589c10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r2_1, r1_1, r0_1, r0_2, r0_3, r0_4, r0_5, stk;
    r4_1 = r0;
    r2_1 = r1;
    r1_1 = (u32)"%03d";
    r0_1 = (u32)&stk;
    r0_2 = Fn_0001cc_3(r0_1, r1_1, r2_1);
    r0_3 = *(u8*)((u32)&stk);
    *(u8*)(r4_1 + 12) = r0_3;
    r0_4 = *(u8*)((u32)&stk + 1);
    *(u8*)(r4_1 + 13) = r0_4;
    r0_5 = *(u8*)((u32)&stk + 2);
    *(u8*)(r4_1 + 14) = r0_5;
    return r0_5;
}

// FUN_00593b10
void W_593b10(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) return;
    r4 = r0;
    r0 = r1 << 16;
    r0 = r0 >> 16;
    if (r0 != 0) goto L_593b3c;
    r0 = (u32)((int)r1 >> 16);
    r0 = r0 - 128u;
    fa = r0; fb = 8u;
    switch (r0) { case 0: goto L_593b60; case 1: goto L_593b3c; case 2: goto L_593b80; case 3: goto L_593bac; case 4: goto L_593bcc; case 5: goto L_593c30; case 6: goto L_593c44; case 7: goto L_593c58; }
    L_593b3c:;
    return;
    L_593b60:;
    r0 = r4;
    r0 = WeakCall2(r0, r1);
    r0 = r4;
    r0 = Fn_58f378_1(r0);
    { Fn_2024b0_1(r0); return; }
    L_593b80:;
    r0 = r4;
    r0 = Fn_58f4e0_1(r0);
    r0 = r4 + 20u;
    r0 = Fn_02a080_1(r0);
    r0 = r0 - 12u;
    r0 = Fn_02a080_1(r0);
    r0 = r0 - 8u;
    { Fn_2024b0_1(r0); return; }
    L_593bac:;
    r0 = r4;
    r0 = Fn_58dd98_1(r0);
    r0 = r4;
    r0 = Fn_02a080_1(r0);
    { Fn_2024b0_1(r0); return; }
    L_593bcc:;
    r0 = *(u32*)(r4 + 44);
    r5 = 0u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_593be4;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r4 + 44) = r5;
    L_593be4:;
    r0 = *(u32*)(r4 + 48);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_593bf8;
    r0 = Fn_1fcd88_1(r0);
    *(u32*)(r4 + 48) = r5;
    L_593bf8:;
    r0 = *(u32*)(r4 + 16);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_593c1c;
    r0 = *(u8*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_593c1c;
    r1 = *(u32*)(r4 + 20);
    r0 = r4 + 16u;
    r0 = Fn_5a4454_2(r0, r1);
    L_593c1c:;
    r0 = r4 + 36u;
    r0 = Fn_02a080_1(r0);
    r0 = r0 - 36u;
    { Fn_2024b0_1(r0); return; }
    L_593c30:;
    r0 = r4;
    r0 = Fn_58dcfc_1(r0);
    { Fn_2024b0_1(r0); return; }
    L_593c44:;
    r0 = r4;
    r0 = Fn_014b20_1(r0);
    { Fn_2024b0_1(r0); return; }
    L_593c58:;
    r0 = r4 + 4u;
    r0 = Fn_02a080_1(r0);
    r0 = r0 - 4u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_005a21b0
float W_5a21b0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, ffa, ffb;
    r0 = Fn_50c2e4_0();
    f0 = 1.0f;
    fa = r0; fb = 5u;
    switch (r0) { case 0: goto L_5a21dc; case 1: goto L_5a21e4; case 2: goto L_5a21ec; case 3: goto L_5a21f4; case 4: goto L_5a21fc; }
    return f0;
    L_5a21dc:;
    f0 = 0.0f;
    return f0;
    L_5a21e4:;
    f0 = 0.0500000007f;
    return f0;
    L_5a21ec:;
    f0 = 0.100000001f;
    return f0;
    L_5a21f4:;
    f0 = 0.300000012f;
    return f0;
    L_5a21fc:;
    f0 = 0.5f;
    return f0;
}

// FUN_005d040c
void W_5d040c(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = (u32)g_0089a330;
    fa = r1; fb = 0u;
    *(u8*)(r12 + 2) = r0;
    if (fa != fb) *(u32*)(r12 + 148) = r1;
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r12 + 152) = r2;
    fa = r3; fb = 53u;
    switch (r3) { case 0: goto L_5d0504; case 1: goto L_5d050c; case 2: goto L_5d0514; case 3: goto L_5d0504; case 4: goto L_5d050c; case 5: goto L_5d0514; case 6: goto L_5d0504; case 7: goto L_5d050c; case 8: goto L_5d0514; case 9: goto L_5d0504; case 10: goto L_5d050c; case 11: goto L_5d0514; case 12: goto L_5d051c; case 13: goto L_5d051c; case 14: goto L_5d051c; case 15: goto L_5d051c; case 16: goto L_5d051c; case 17: goto L_5d051c; case 18: goto L_5d0524; case 19: goto L_5d051c; case 20: goto L_5d0504; case 21: goto L_5d050c; case 22: goto L_5d0514; case 23: goto L_5d0524; case 24: goto L_5d051c; case 25: goto L_5d051c; case 26: goto L_5d051c; case 27: goto L_5d051c; case 28: goto L_5d051c; case 29: goto L_5d051c; case 30: goto L_5d0524; case 31: goto L_5d0524; case 32: goto L_5d0524; case 33: goto L_5d052c; case 34: goto L_5d052c; case 35: goto L_5d052c; case 36: goto L_5d052c; case 37: goto L_5d052c; case 38: goto L_5d052c; case 39: goto L_5d052c; case 40: goto L_5d052c; case 41: goto L_5d051c; case 42: goto L_5d051c; case 43: goto L_5d051c; case 44: goto L_5d051c; case 45: goto L_5d051c; case 46: goto L_5d051c; case 47: goto L_5d051c; case 48: goto L_5d051c; case 49: goto L_5d051c; case 50: goto L_5d051c; case 51: goto L_5d051c; case 52: goto L_5d051c; default: goto L_5d052c; }
    goto L_5d052c;
    L_5d0504:;
    r0 = 8u;
    goto L_5d0530;
    L_5d050c:;
    r0 = 9u;
    goto L_5d0530;
    L_5d0514:;
    r0 = 10u;
    goto L_5d0530;
    L_5d051c:;
    r0 = 11u;
    goto L_5d0530;
    L_5d0524:;
    r0 = 12u;
    goto L_5d0530;
    L_5d052c:;
    r0 = ~0u;
    L_5d0530:;
    *(u16*)(r12 + 26) = r0;
    return;
}

// FUN_005d191c
void W_5d191c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r1 = (u32)"\343\203\241\343\203\203\343\202\273\343\203\274\343\202\270\351\200\237\345\272\246\343\203\206\343\202\271\343\203\210\343\201\247\343\201\231\343\200\202";
    { Fn_01026c_3(r0, r1, r2); return; }
}
