// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
u32 Fn_277e4c_2(u32, u32);
u32 Fn_081a64_4(u32, u32, u32, u32);
u32 Fn_1ca6d4_3(u32, u32, u32);
extern char g_007c4148[];
extern char g_007c4158[];
u32 Fn_1fe040_3(u32, u32, u32);
u32 Fn_1fe040_4(u32, u32, u32, u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_007c1748[];
extern char g_007c1790[];
extern char g_007c17d8[];
extern char g_007c1820[];
extern char g_007c1868[];
extern char g_007c18b0[];
extern char g_007c18f8[];
extern char g_007c1940[];
extern char g_007c1988[];
u32 Fn_224d44_4(u32, u32, u32, u32);
u32 Fn_1994e0_3(u32, u32, u32);

// FUN_00051934
void W_051934(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 7u;
    r3 = 1u;
    switch (r1) { case 0: goto L_51960; case 1: goto L_51974; case 2: goto L_51980; case 3: goto L_51988; case 4: goto L_51980; case 5: goto L_51980; case 6: goto L_51980; }
    return;
    L_51960:;
    r2 = 0u;
    *(u8*)(r0 + 80) = r3;
    r1 = 5u;
    *(u8*)(r0 + 81) = r2;
    goto L_51978;
    L_51974:;
    r1 = 3u;
    L_51978:;
    *(u32*)(r0 + 72) = r1;
    return;
    L_51980:;
    *(u32*)(r0 + 88) = r3;
    return;
    L_51988:;
    r1 = r2 + 1u;
    *(u32*)(r0 + 88) = r1;
    return;
}

// FUN_00077504
void W_077504(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = (u32)"Camera_PV00.bclim";
    r0 = *(u32*)(r0 + 52);
    { Fn_277e4c_2(r0, r1); return; }
}

// FUN_00081bc4
u32 W_081bc4(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 5u;
    r0 = 0u;
    switch (r2) { case 0: goto L_81c04; case 1: goto L_81be8; case 2: goto L_81bf0; case 3: goto L_81bf8; case 4: goto L_81c00; default: goto L_81c04; }
    goto L_81c04;
    L_81be8:;
    r0 = 1u;
    goto L_81c04;
    L_81bf0:;
    r0 = 2u;
    goto L_81c04;
    L_81bf8:;
    r0 = 3u;
    goto L_81c04;
    L_81c00:;
    r0 = 4u;
    L_81c04:;
    fa = r1; fb = 1u;
    if (fa > fb) goto L_81c18;
    fa = r0; fb = 2u;
    if (fa >= fb) r0 = 1u;
    L_81c14:;
    return r0;
    L_81c18:;
    fa = r1; fb = 3u;
    if (fa > fb) goto L_81c14;
    fa = r0; fb = 4u;
    if (fa >= fb) r0 = 3u;
    return r0;
}

// FUN_00081c2c
void W_081c2c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1;
    fa = r2; fb = 5u;
    r1 = 0u;
    switch (r2) { case 0: goto L_81c70; case 1: goto L_81c54; case 2: goto L_81c5c; case 3: goto L_81c64; case 4: goto L_81c6c; default: goto L_81c70; }
    goto L_81c70;
    L_81c54:;
    r1 = 1u;
    goto L_81c70;
    L_81c5c:;
    r1 = 2u;
    goto L_81c70;
    L_81c64:;
    r1 = 3u;
    goto L_81c70;
    L_81c6c:;
    r1 = 4u;
    L_81c70:;
    fa = r3; fb = 1u;
    if (fa > fb) goto L_81c84;
    fa = r1; fb = 2u;
    if (fa >= fb) r1 = 1u;
    goto L_81c94;
    L_81c84:;
    fa = r3; fb = 3u;
    if (fa > fb) goto L_81c94;
    fa = r1; fb = 4u;
    if (fa >= fb) r1 = 3u;
    L_81c94:;
    { Fn_081a64_4(r0, r1, r2, r3); return; }
}

// FUN_00100128
u32 W_100128(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_100160; case 1: goto L_100160; case 2: goto L_100160; case 3: goto L_100160; case 4: goto L_100160; case 5: goto L_100160; case 6: goto L_100138; case 7: goto L_100138; case 8: goto L_100160; }
    L_100138:;
    return r0;
    L_100160:;
    r0 = 55u;
    return r0;
}

// FUN_0010fa90
u32 W_10fa90(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 12u;
    switch (r0) { case 0: goto L_10fb78; case 1: goto L_10facc; case 2: goto L_10fad8; case 3: goto L_10fae8; case 4: goto L_10faf8; case 5: goto L_10fb08; case 6: goto L_10fb18; case 7: goto L_10fb28; case 8: goto L_10fb38; case 9: goto L_10fb48; case 10: goto L_10fb58; case 11: goto L_10fb68; default: goto L_10fb78; }
    goto L_10fb78;
    L_10facc:;
    fa = r1; fb = 0u;
    if (fa != fb) goto L_10fb80;
    goto L_10fb88;
    L_10fad8:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 47u;
    if (fa == fb) r0 = 48u;
    return r0;
    L_10fae8:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 50u;
    if (fa == fb) r0 = 51u;
    return r0;
    L_10faf8:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 53u;
    if (fa == fb) r0 = 54u;
    return r0;
    L_10fb08:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 56u;
    if (fa == fb) r0 = 57u;
    return r0;
    L_10fb18:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 59u;
    if (fa == fb) r0 = 60u;
    return r0;
    L_10fb28:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 62u;
    if (fa == fb) r0 = 63u;
    return r0;
    L_10fb38:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 65u;
    if (fa == fb) r0 = 66u;
    return r0;
    L_10fb48:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 68u;
    if (fa == fb) r0 = 69u;
    return r0;
    L_10fb58:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 71u;
    if (fa == fb) r0 = 72u;
    return r0;
    L_10fb68:;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = 74u;
    if (fa == fb) r0 = 75u;
    return r0;
    L_10fb78:;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_10fb88;
    L_10fb80:;
    r0 = 44u;
    return r0;
    L_10fb88:;
    r0 = 45u;
    return r0;
}

// FUN_001100f4
u32 W_1100f4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 37u;
    fa = r0; fb = 15u;
    switch (r0) { case 0: goto L_1101b0; case 1: goto L_110140; case 2: goto L_110148; case 3: goto L_110150; case 4: goto L_110158; case 5: goto L_110160; case 6: goto L_110168; case 7: goto L_110170; case 8: goto L_110178; case 9: goto L_110180; case 10: goto L_110188; case 11: goto L_110190; case 12: goto L_110198; case 13: goto L_1101a0; case 14: goto L_1101a8; default: goto L_1101b0; }
    goto L_1101b0;
    L_110140:;
    r0 = 197u;
    return r0;
    L_110148:;
    r0 = 198u;
    return r0;
    L_110150:;
    r0 = 199u;
    return r0;
    L_110158:;
    r0 = 200u;
    return r0;
    L_110160:;
    r0 = 201u;
    return r0;
    L_110168:;
    r0 = 202u;
    return r0;
    L_110170:;
    r0 = 203u;
    return r0;
    L_110178:;
    r0 = 204u;
    return r0;
    L_110180:;
    r0 = 205u;
    return r0;
    L_110188:;
    r0 = 206u;
    return r0;
    L_110190:;
    r0 = 207u;
    return r0;
    L_110198:;
    r0 = 208u;
    return r0;
    L_1101a0:;
    r0 = 209u;
    return r0;
    L_1101a8:;
    r0 = 210u;
    return r0;
    L_1101b0:;
    r0 = 196u;
    return r0;
}

// FUN_0012f0e8
u32 W_12f0e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 - 1000u;
    fa = r1; fb = 21u;
    r0 = 6u;
    switch (r1) { case 0: goto L_12f150; case 1: goto L_12f158; case 2: goto L_12f160; case 3: goto L_12f0f8; case 4: goto L_12f168; case 5: goto L_12f170; case 6: goto L_12f178; case 7: goto L_12f150; case 8: goto L_12f158; case 9: goto L_12f160; case 10: goto L_12f0f8; case 11: goto L_12f168; case 12: goto L_12f170; case 13: goto L_12f178; case 14: goto L_12f150; case 15: goto L_12f158; case 16: goto L_12f160; case 17: goto L_12f0f8; case 18: goto L_12f168; case 19: goto L_12f170; case 20: goto L_12f178; }
    L_12f0f8:;
    return r0;
    L_12f150:;
    r0 = 0u;
    return r0;
    L_12f158:;
    r0 = 1u;
    return r0;
    L_12f160:;
    r0 = 2u;
    return r0;
    L_12f168:;
    r0 = 3u;
    return r0;
    L_12f170:;
    r0 = 4u;
    return r0;
    L_12f178:;
    r0 = 5u;
    return r0;
}

// FUN_001935c8
u32 W_1935c8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"";
    return r0_1;
}

// FUN_00195a3c
u32 W_195a3c(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r2 << 16;
    r1 = r1 - 2u;
    r0 = r0 + (r3 << 8);
    fa = r1; fb = 5u;
    r0 = r0 & ~4026531840u;
    switch (r1) { case 0: goto L_195a6c; case 1: goto L_195a74; case 2: goto L_195a7c; case 3: goto L_195a84; case 4: goto L_195a8c; default: goto L_195a94; }
    goto L_195a94;
    L_195a6c:;
    r0 = r0 + 268435456u;
    return r0;
    L_195a74:;
    r0 = r0 + 805306368u;
    return r0;
    L_195a7c:;
    r0 = r0 + 1073741824u;
    return r0;
    L_195a84:;
    r0 = r0 + 1342177280u;
    return r0;
    L_195a8c:;
    r0 = r0 + 1610612736u;
    return r0;
    L_195a94:;
    r0 = ~4026531840u;
    r0 = r0 & (r2 << 8);
    r0 = r0 + 1342177280u;
    return r0;
}

// FUN_0019bc08
u32 W_19bc08() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_list";
    return r0_1;
}

// FUN_0019e594
u32 W_19e594() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_IN301_LL";
    return r0_1;
}

// FUN_001bc14c
u32 W_1bc14c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_Opt_Gyr";
    return r0_1;
}

// FUN_001c29a4
u32 W_1c29a4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 11u;
    switch (r1) { case 0: goto L_1c2a00; case 1: goto L_1c29dc; case 2: goto L_1c29dc; case 3: goto L_1c29e4; case 4: goto L_1c29dc; case 5: goto L_1c29e4; case 6: goto L_1c29ec; case 7: goto L_1c29dc; case 8: goto L_1c29e4; case 9: goto L_1c29ec; case 10: goto L_1c29f4; default: goto L_1c2a00; }
    goto L_1c2a00;
    L_1c29dc:;
    r1 = 1u;
    goto L_1c29f8;
    L_1c29e4:;
    r1 = 2u;
    goto L_1c29f8;
    L_1c29ec:;
    r1 = 3u;
    goto L_1c29f8;
    L_1c29f4:;
    r1 = 4u;
    L_1c29f8:;
    *(u32*)(r0 + 132) = r1;
    goto L_1c2a08;
    L_1c2a00:;
    r1 = 0u;
    *(u32*)(r0 + 132) = r1;
    L_1c2a08:;
    r0 = 0u;
    return r0;
}

// FUN_001c5d8c
u32 W_1c5d8c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_De_list_0320";
    return r0_1;
}

// FUN_001c6d64
u32 W_1c6d64() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_De_list_0522";
    return r0_1;
}

// FUN_001c9380
u32 W_1c9380() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_List_Pnl";
    return r0_1;
}

// FUN_001ca890
void W_1ca890(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)"";
    r1 = 1u;
    { Fn_1ca6d4_3(r0, r1, r2); return; }
}

// FUN_001d324c
u32 W_1d324c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_Opt_Scn";
    return r0_1;
}

// FUN_001d3d44
u32 W_1d3d44() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_Opt_Sound";
    return r0_1;
}

// FUN_001d51b0
u32 W_1d51b0(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r1 + 36);
    r4 = r1;
    fa = r0; fb = 11u;
    switch (r0) { case 0: goto L_1d51c4; case 1: goto L_1d51f4; case 2: goto L_1d51f4; case 3: goto L_1d51f4; case 4: goto L_1d51f4; case 5: goto L_1d51f4; case 6: goto L_1d5224; case 7: goto L_1d5224; case 8: goto L_1d5224; case 9: goto L_1d5224; case 10: goto L_1d5224; }
    L_1d51c4:;
    return r0;
    L_1d51f4:;
    r1 = (u32)g_007c4148;
    r0 = r2;
    r0 = Fn_1fe040_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_1d51c4;
    L_1d520c:;
    r3 = 0u;
    r0 = r4;
    r2 = r3;
    r1 = 2u;
    return Fn_5c31cc_4(r0, r1, r2, r3);
    L_1d5224:;
    r1 = (u32)g_007c4158;
    r0 = r2;
    r0 = Fn_1fe040_4(r0, r1, r2, r3);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d520c;
    return r0;
}

// FUN_001e756c
void W_1e756c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 11u;
    switch (r1) { case 0: goto L_1e75a4; case 1: goto L_1e75b4; case 2: goto L_1e75c4; case 3: goto L_1e75d4; case 4: goto L_1e75e4; case 5: goto L_1e75f4; case 6: goto L_1e7604; case 7: goto L_1e7614; case 8: goto L_1e7574; case 9: goto L_1e7574; case 10: goto L_1e7624; }
    L_1e7574:;
    return;
    L_1e75a4:;
    r3 = (u32)g_007c1748;
    r2 = r3 - 36u;
    r1 = r3 - 72u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e75b4:;
    r3 = (u32)g_007c1790;
    r2 = r3 - 108u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e75c4:;
    r3 = (u32)g_007c17d8;
    r2 = r3 - 180u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e75d4:;
    r3 = (u32)g_007c1820;
    r2 = r3 - 252u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e75e4:;
    r3 = (u32)g_007c1868;
    r2 = r3 - 324u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e75f4:;
    r3 = (u32)g_007c18b0;
    r2 = r3 - 396u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e7604:;
    r3 = (u32)g_007c18f8;
    r2 = r3 - 468u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e7614:;
    r3 = (u32)g_007c1940;
    r2 = r3 - 540u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
    L_1e7624:;
    r3 = (u32)g_007c1988;
    r2 = r3 - 612u;
    r1 = r3 - 36u;
    { Fn_224d44_4(r0, r1, r2, r3); return; }
}

// FUN_001e918c
void W_1e918c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)"Anm_Com_Btn";
    { Fn_1994e0_3(r0, r1, r2); return; }
}

// FUN_001ef6e4
u32 W_1ef6e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Pos_ComWinTutIMG";
    return r0_1;
}

// FUN_001f2d34
u32 W_1f2d34() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1;
    r0_1 = (u32)"Anm_ItemPnl02";
    return r0_1;
}

// FUN_001f6084
void W_1f6084(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)"Anm_C_Com02_icon";
    { Fn_1994e0_3(r0, r1, r2); return; }
}

// FUN_0020b4ac
void W_20b4ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r2 + 4);
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r1 + 24);
    if (fa == fb) r1 = ~0u;
    fa = r1; fb = 11u;
    switch (r1) { case 0: goto L_20b4cc; case 1: goto L_20b4fc; case 2: goto L_20b50c; case 3: goto L_20b4cc; case 4: goto L_20b51c; case 5: goto L_20b51c; case 6: goto L_20b52c; case 7: goto L_20b4cc; case 8: goto L_20b53c; case 9: goto L_20b4cc; case 10: goto L_20b53c; }
    L_20b4cc:;
    return;
    L_20b4fc:;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_20b50c:;
    r3 = 0u;
    r2 = r3;
    r1 = 3u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_20b51c:;
    r3 = 0u;
    r2 = r3;
    r1 = 5u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_20b52c:;
    r3 = 0u;
    r2 = r3;
    r1 = 7u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_20b53c:;
    r0 = 1u;
    *(u8*)(r2) = r0;
    return;
}

// FUN_00236ea4
u32 W_236ea4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 9u;
    switch (r1) { case 0: goto L_236ed4; case 1: goto L_236edc; case 2: goto L_236eec; case 3: goto L_236efc; case 4: goto L_236f0c; case 5: goto L_236f1c; case 6: goto L_236f2c; case 7: goto L_236f3c; case 8: goto L_236f4c; default: goto L_236f5c; }
    goto L_236f5c;
    L_236ed4:;
    r0 = 1u;
    return r0;
    L_236edc:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 2u;
    r0 = r0 >> 1;
    return r0;
    L_236eec:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 4u;
    r0 = r0 >> 2;
    return r0;
    L_236efc:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 8u;
    r0 = r0 >> 3;
    return r0;
    L_236f0c:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 16u;
    r0 = r0 >> 4;
    return r0;
    L_236f1c:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 32u;
    r0 = r0 >> 5;
    return r0;
    L_236f2c:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 64u;
    r0 = r0 >> 6;
    return r0;
    L_236f3c:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 128u;
    r0 = r0 >> 7;
    return r0;
    L_236f4c:;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 256u;
    r0 = r0 >> 8;
    return r0;
    L_236f5c:;
    r0 = 0u;
    return r0;
}

// FUN_002432b0
void W_2432b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r2 + 4);
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r1 + 24);
    if (fa == fb) r1 = ~0u;
    fa = r1; fb = 9u;
    switch (r1) { case 0: goto L_2432d0; case 1: goto L_2432f8; case 2: goto L_243308; case 3: goto L_2432d0; case 4: goto L_243318; case 5: goto L_243318; case 6: goto L_243328; case 7: goto L_2432d0; case 8: goto L_243338; }
    L_2432d0:;
    return;
    L_2432f8:;
    r3 = 0u;
    r2 = r3;
    r1 = 1u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_243308:;
    r3 = 0u;
    r2 = r3;
    r1 = 3u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_243318:;
    r3 = 0u;
    r2 = r3;
    r1 = 5u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_243328:;
    r3 = 0u;
    r2 = r3;
    r1 = 7u;
    { Fn_5c31cc_4(r0, r1, r2, r3); return; }
    L_243338:;
    r0 = 1u;
    *(u8*)(r2) = r0;
    return;
}

// FUN_00260ad0
u32 W_260ad0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 8u;
    r0 = ~0u;
    switch (r1) { case 0: goto L_260b24; case 1: goto L_260b04; case 2: goto L_260b0c; case 3: goto L_260b14; case 4: goto L_260b1c; case 5: goto L_260b24; case 6: goto L_260b2c; case 7: goto L_260b34; }
    return r0;
    L_260b04:;
    r0 = 47u;
    return r0;
    L_260b0c:;
    r0 = 72u;
    return r0;
    L_260b14:;
    r0 = 97u;
    return r0;
    L_260b1c:;
    r0 = 120u;
    return r0;
    L_260b24:;
    r0 = 0u;
    return r0;
    L_260b2c:;
    r0 = 408u;
    return r0;
    L_260b34:;
    r0 = 177u;
    return r0;
}

// FUN_00260b3c
u32 W_260b3c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = 11001u;
    fa = r1; fb = 6u;
    switch (r1) { case 0: goto L_260b4c; case 1: goto L_260b68; case 2: goto L_260b70; case 3: goto L_260b78; case 4: goto L_260b80; case 5: goto L_260b88; }
    L_260b4c:;
    return r0;
    L_260b68:;
    r0 = 11002u;
    return r0;
    L_260b70:;
    r0 = 11003u;
    return r0;
    L_260b78:;
    r0 = 11004u;
    return r0;
    L_260b80:;
    r0 = 11005u;
    return r0;
    L_260b88:;
    r0 = 11006u;
    return r0;
}

// FUN_00260e28
u32 W_260e28(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    r0 = 11201u;
    fa = r1; fb = 2u;
    if (fa != fb) { fa = r1; fb = 4u; }
    if (fa != fb) goto L_260e48;
    r1 = r2 - 3u;
    fa = r1; fb = 10u;
    switch (r1) { case 0: goto L_260e74; case 1: goto L_260e74; case 2: goto L_260e74; case 3: goto L_260e48; case 4: goto L_260e48; case 5: goto L_260e48; case 6: goto L_260e48; case 7: goto L_260e74; case 8: goto L_260e74; case 9: goto L_260e74; }
    L_260e48:;
    return r0;
    L_260e74:;
    r0 = 11202u;
    return r0;
}

// FUN_00290320
void W_290320(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 6u;
    switch (r1) { case 0: goto L_290344; case 1: goto L_290344; case 2: goto L_290360; case 3: goto L_290360; case 4: goto L_29037c; case 5: goto L_29037c; }
    return;
    L_290344:;
    r2 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa == fb) r1 = 1u;
    if (fa != fb) r1 = 0u;
    r3 = *(u32*)(r2 + 340);
    r2 = 0u;
    { ((u32(*)(u32, u32, u32))r3)(r0, r1, r2); return; }
    L_290360:;
    r2 = *(u32*)(r0);
    fa = r1; fb = 2u;
    if (fa == fb) r1 = 1u;
    if (fa != fb) r1 = 0u;
    r3 = *(u32*)(r2 + 340);
    r2 = 1u;
    { ((u32(*)(u32, u32, u32))r3)(r0, r1, r2); return; }
    L_29037c:;
    r2 = *(u32*)(r0);
    fa = r1; fb = 4u;
    if (fa == fb) r1 = 1u;
    if (fa != fb) r1 = 0u;
    r3 = *(u32*)(r2 + 340);
    r2 = 2u;
    { ((u32(*)(u32, u32, u32))r3)(r0, r1, r2); return; }
}

// FUN_002a44f8
u32 W_2a44f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_2a4530; case 1: goto L_2a4530; case 2: goto L_2a4530; case 3: goto L_2a4530; case 4: goto L_2a4530; case 5: goto L_2a4530; case 6: goto L_2a4508; case 7: goto L_2a4508; case 8: goto L_2a4530; }
    L_2a4508:;
    return r0;
    L_2a4530:;
    r0 = 5202u;
    return r0;
}

// FUN_002d13b4
u32 W_2d13b4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_2d13ec; case 1: goto L_2d13ec; case 2: goto L_2d13ec; case 3: goto L_2d13ec; case 4: goto L_2d13ec; case 5: goto L_2d13ec; case 6: goto L_2d13c4; case 7: goto L_2d13c4; case 8: goto L_2d13ec; }
    L_2d13c4:;
    return r0;
    L_2d13ec:;
    r0 = 28u;
    return r0;
}

// FUN_002d728c
u32 W_2d728c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_2d72c4; case 1: goto L_2d72c4; case 2: goto L_2d72c4; case 3: goto L_2d72c4; case 4: goto L_2d72c4; case 5: goto L_2d72c4; case 6: goto L_2d729c; case 7: goto L_2d729c; case 8: goto L_2d72c4; }
    L_2d729c:;
    return r0;
    L_2d72c4:;
    r0 = 31u;
    return r0;
}

// FUN_002d752c
u32 W_2d752c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_2d7564; case 1: goto L_2d7564; case 2: goto L_2d7564; case 3: goto L_2d7564; case 4: goto L_2d7564; case 5: goto L_2d7564; case 6: goto L_2d753c; case 7: goto L_2d753c; case 8: goto L_2d7564; }
    L_2d753c:;
    return r0;
    L_2d7564:;
    r0 = 28u;
    return r0;
}

// FUN_002d8764
u32 W_2d8764(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 9u;
    r0 = 0u;
    switch (r1) { case 0: goto L_2d879c; case 1: goto L_2d879c; case 2: goto L_2d879c; case 3: goto L_2d879c; case 4: goto L_2d879c; case 5: goto L_2d879c; case 6: goto L_2d8774; case 7: goto L_2d8774; case 8: goto L_2d879c; }
    L_2d8774:;
    return r0;
    L_2d879c:;
    r0 = 81u;
    return r0;
}

// FUN_0030be90
u32 W_30be90(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    fa = r1; fb = 87u;
    r0 = ~0u;
    switch (r1) { case 0: goto L_30c080; case 1: goto L_30c000; case 2: goto L_30c068; case 3: goto L_30c008; case 4: goto L_30c070; case 5: goto L_30c010; case 6: goto L_30c018; case 7: goto L_30c020; case 8: goto L_30c028; case 9: goto L_30c030; case 10: goto L_30c078; case 11: goto L_30c038; case 12: goto L_30c040; case 13: goto L_30c048; case 14: goto L_30c0c8; case 15: goto L_30c050; case 16: goto L_30c0f8; case 17: goto L_30c108; case 18: goto L_30c058; case 19: goto L_30bea0; case 20: goto L_30bea0; case 21: goto L_30bea0; case 22: goto L_30bea0; case 23: goto L_30c060; case 24: goto L_30c068; case 25: goto L_30c068; case 26: goto L_30c068; case 27: goto L_30c068; case 28: goto L_30c068; case 29: goto L_30c068; case 30: goto L_30c070; case 31: goto L_30c070; case 32: goto L_30c070; case 33: goto L_30c070; case 34: goto L_30c070; case 35: goto L_30c070; case 36: goto L_30c070; case 37: goto L_30c078; case 38: goto L_30c078; case 39: goto L_30c078; case 40: goto L_30c078; case 41: goto L_30c078; case 42: goto L_30c078; case 43: goto L_30c080; case 44: goto L_30c088; case 45: goto L_30c090; case 46: goto L_30c098; case 47: goto L_30c0a0; case 48: goto L_30c0a8; case 49: goto L_30c0b0; case 50: goto L_30c0b8; case 51: goto L_30c0c0; case 52: goto L_30c0c8; case 53: goto L_30c0d0; case 54: goto L_30c0d8; case 55: goto L_30c0e0; case 56: goto L_30c0e8; case 57: goto L_30c0f0; case 58: goto L_30c0f8; case 59: goto L_30c100; case 60: goto L_30c108; case 61: goto L_30c108; case 62: goto L_30c108; case 63: goto L_30c110; case 64: goto L_30c118; case 65: goto L_30c120; case 66: goto L_30c128; case 67: goto L_30c130; case 68: goto L_30c138; case 69: goto L_30c140; case 70: goto L_30c148; case 71: goto L_30c150; case 72: goto L_30c158; case 73: goto L_30c160; case 74: goto L_30c168; case 75: goto L_30c170; case 76: goto L_30c178; case 77: goto L_30c180; case 78: goto L_30c188; case 79: goto L_30c190; case 80: goto L_30c198; case 81: goto L_30c1a0; case 82: goto L_30c1a8; case 83: goto L_30c1b0; case 84: goto L_30c1b8; case 85: goto L_30c1c0; case 86: goto L_30c1c8; }
    L_30bea0:;
    return r0;
    L_30c000:;
    r0 = 25u;
    return r0;
    L_30c008:;
    r0 = 23u;
    return r0;
    L_30c010:;
    r0 = 61u;
    return r0;
    L_30c018:;
    r0 = 75u;
    return r0;
    L_30c020:;
    r0 = 85u;
    return r0;
    L_30c028:;
    r0 = 91u;
    return r0;
    L_30c030:;
    r0 = 94u;
    return r0;
    L_30c038:;
    r0 = 108u;
    return r0;
    L_30c040:;
    r0 = 116u;
    return r0;
    L_30c048:;
    r0 = 110u;
    return r0;
    L_30c050:;
    r0 = 101u;
    return r0;
    L_30c058:;
    r0 = 125u;
    return r0;
    L_30c060:;
    r0 = 127u;
    return r0;
    L_30c068:;
    r0 = 19u;
    return r0;
    L_30c070:;
    r0 = 54u;
    return r0;
    L_30c078:;
    r0 = 100u;
    return r0;
    L_30c080:;
    r0 = 2u;
    return r0;
    L_30c088:;
    r0 = 77u;
    return r0;
    L_30c090:;
    r0 = 80u;
    return r0;
    L_30c098:;
    r0 = 79u;
    return r0;
    L_30c0a0:;
    r0 = 78u;
    return r0;
    L_30c0a8:;
    r0 = 112u;
    return r0;
    L_30c0b0:;
    r0 = 115u;
    return r0;
    L_30c0b8:;
    r0 = 113u;
    return r0;
    L_30c0c0:;
    r0 = 114u;
    return r0;
    L_30c0c8:;
    r0 = 105u;
    return r0;
    L_30c0d0:;
    r0 = 107u;
    return r0;
    L_30c0d8:;
    r0 = 102u;
    return r0;
    L_30c0e0:;
    r0 = 103u;
    return r0;
    L_30c0e8:;
    r0 = 104u;
    return r0;
    L_30c0f0:;
    r0 = 170u;
    return r0;
    L_30c0f8:;
    r0 = 123u;
    return r0;
    L_30c100:;
    r0 = 124u;
    return r0;
    L_30c108:;
    r0 = 132u;
    return r0;
    L_30c110:;
    r0 = 129u;
    return r0;
    L_30c118:;
    r0 = 130u;
    return r0;
    L_30c120:;
    r0 = 131u;
    return r0;
    L_30c128:;
    r0 = 419u;
    return r0;
    L_30c130:;
    r0 = 420u;
    return r0;
    L_30c138:;
    r0 = 421u;
    return r0;
    L_30c140:;
    r0 = 57u;
    return r0;
    L_30c148:;
    r0 = 59u;
    return r0;
    L_30c150:;
    r0 = 60u;
    return r0;
    L_30c158:;
    r0 = 70u;
    return r0;
    L_30c160:;
    r0 = 64u;
    return r0;
    L_30c168:;
    r0 = 66u;
    return r0;
    L_30c170:;
    r0 = 68u;
    return r0;
    L_30c178:;
    r0 = 427u;
    return r0;
    L_30c180:;
    r0 = 425u;
    return r0;
    L_30c188:;
    r0 = 354u;
    return r0;
    L_30c190:;
    r0 = 355u;
    return r0;
    L_30c198:;
    r0 = 356u;
    return r0;
    L_30c1a0:;
    r0 = 364u;
    return r0;
    L_30c1a8:;
    r0 = 367u;
    return r0;
    L_30c1b0:;
    r0 = 363u;
    return r0;
    L_30c1b8:;
    r0 = 88u;
    return r0;
    L_30c1c0:;
    r0 = 89u;
    return r0;
    L_30c1c8:;
    r0 = 90u;
    return r0;
}

// FUN_0031321c
u32 W_31321c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 256u;
    r0 = r0 - 41u;
    fa = r0; fb = 27u;
    switch (r0) { case 0: goto L_31329c; case 1: goto L_31329c; case 2: goto L_31329c; case 3: goto L_3132a4; case 4: goto L_3132a4; case 5: goto L_3132a4; case 6: goto L_3132ac; case 7: goto L_3132ac; case 8: goto L_3132ac; case 9: goto L_31329c; case 10: goto L_31329c; case 11: goto L_31329c; case 12: goto L_3132a4; case 13: goto L_3132a4; case 14: goto L_3132a4; case 15: goto L_3132ac; case 16: goto L_3132ac; case 17: goto L_3132ac; case 18: goto L_31329c; case 19: goto L_31329c; case 20: goto L_31329c; case 21: goto L_3132a4; case 22: goto L_3132a4; case 23: goto L_3132a4; case 24: goto L_3132ac; case 25: goto L_3132ac; case 26: goto L_3132ac; default: goto L_3132b4; }
    goto L_3132b4;
    L_31329c:;
    r0 = 21u;
    return r0;
    L_3132a4:;
    r0 = 22u;
    return r0;
    L_3132ac:;
    r0 = 23u;
    return r0;
    L_3132b4:;
    r0 = ~0u;
    return r0;
}
