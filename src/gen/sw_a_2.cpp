// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }


// FUN_005d1a58
u32 W_5d1a58() {
    u32 r0_1;
    r0_1 = (u32)"";
    return r0_1;
}

// FUN_005f905c
u32 W_5f905c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u8*)(r0 + 68);
    r0 = 0u;
    switch (r1) { case 0: goto L_5f906c; case 1: goto L_5f90ac; case 2: goto L_5f90b4; case 3: goto L_5f90bc; case 4: goto L_5f90bc; case 5: goto L_5f90c4; case 6: goto L_5f90cc; case 7: goto L_5f90bc; case 8: goto L_5f90c4; case 9: goto L_5f90d4; case 10: goto L_5f90dc; case 11: goto L_5f90dc; case 12: goto L_5f90b4; case 13: goto L_5f90e4; case 14: goto L_5f90e4; }
    L_5f906c:;
    return r0;
    L_5f90ac:;
    r0 = 1u;
    return r0;
    L_5f90b4:;
    r0 = 2u;
    return r0;
    L_5f90bc:;
    r0 = 4u;
    return r0;
    L_5f90c4:;
    r0 = 5u;
    return r0;
    L_5f90cc:;
    r0 = 3u;
    return r0;
    L_5f90d4:;
    r0 = 6u;
    return r0;
    L_5f90dc:;
    r0 = 7u;
    return r0;
    L_5f90e4:;
    r0 = 8u;
    return r0;
}

// FUN_0061d8c8
u32 W_61d8c8() {
    u32 r0_1;
    r0_1 = (u32)"Nocomment";
    return r0_1;
}

// FUN_00629c04
u32 W_629c04(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0, fa, fb;
    r0 = 0u;
    switch (a2) { case 0: goto L_629c34; case 1: goto L_629c40; case 2: goto L_629c4c; case 3: goto L_629c58; case 4: goto L_629c70; case 5: goto L_629c80; case 6: goto L_629c90; case 7: goto L_629ca0; default: goto L_629c64; }
    goto L_629c64;
    L_629c34:;
    if (a1 == 3u) goto L_629cac;
    goto L_629c60;
    L_629c40:;
    if (a1 == 0u) goto L_629cac;
    goto L_629c60;
    L_629c4c:;
    if (a1 == 1u) goto L_629cac;
    goto L_629c60;
    L_629c58:;
    if (a1 == 2u) goto L_629cac;
    L_629c60:;
    r0 = 0u;
    L_629c64:;
    if (a3 != 0u) r0 = r0 ^ 1u;
    return r0;
    L_629c70:;
    fa = a1; fb = 0u;
    if (fa != fb) { fa = a1; fb = 2u; }
    if (fa == fb) goto L_629cac;
    goto L_629c60;
    L_629c80:;
    fa = a1; fb = 1u;
    if (fa != fb) { fa = a1; fb = 3u; }
    if (fa == fb) goto L_629cac;
    goto L_629c60;
    L_629c90:;
    fa = a1; fb = 0u;
    if (fa != fb) { fa = a1; fb = 1u; }
    if (fa == fb) goto L_629cac;
    goto L_629c60;
    L_629ca0:;
    fa = a1; fb = 2u;
    if (fa != fb) { fa = a1; fb = 3u; }
    if (fa != fb) goto L_629c60;
    L_629cac:;
    r0 = 1u;
    goto L_629c64;
}

// FUN_0062b3e4
u32 W_62b3e4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r3, r12, fa, fb;
    r12 = *(u32*)(r0 + 172);
    r3 = 13u;
    r0 = 0u;
    if (r12 != 0u) r3 = *(u8*)(r12 + 4);
    switch (a1) { case 0: goto L_62b444; case 1: goto L_62b45c; case 2: goto L_62b450; case 3: goto L_62b4ac; case 4: goto L_62b4a0; case 5: goto L_62b484; case 6: goto L_62b478; case 7: goto L_62b4b8; case 8: goto L_62b4c4; case 9: goto L_62b4dc; case 10: goto L_62b4d0; case 11: goto L_62b4d0; case 12: goto L_62b4d0; case 13: goto L_62b4d0; case 14: goto L_62b468; case 15: goto L_62b490; default: goto L_62b4d0; }
    goto L_62b4d0;
    L_62b444:;
    if (r3 == 0u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b450:;
    if (r3 == 2u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b45c:;
    if (r3 == 1u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b468:;
    fa = r3; fb = 2u;
    if (fa != fb) { fa = r3; fb = 1u; }
    if (fa == fb) goto L_62b4e8;
    goto L_62b4cc;
    L_62b478:;
    if (r3 == 6u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b484:;
    if (r3 == 5u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b490:;
    fa = r3; fb = 6u;
    if (fa != fb) { fa = r3; fb = 5u; }
    if (fa == fb) goto L_62b4e8;
    goto L_62b4cc;
    L_62b4a0:;
    if (r3 == 4u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b4ac:;
    if (r3 == 3u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b4b8:;
    if (r3 == 7u) goto L_62b4e8;
    goto L_62b4cc;
    L_62b4c4:;
    if (r3 == 8u) goto L_62b4e8;
    L_62b4cc:;
    r0 = 0u;
    L_62b4d0:;
    if (a2 != 0u) r0 = r0 ^ 1u;
    return r0;
    L_62b4dc:;
    fa = r3; fb = 11u;
    if (fa != fb) { fa = r3; fb = 12u; }
    if (fa != fb) goto L_62b4cc;
    L_62b4e8:;
    r0 = 1u;
    goto L_62b4d0;
}
