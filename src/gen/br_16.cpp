// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_633a54_1(u32);
u32 Fn_633ba8_1(u32);
u32 Fn_030c3c_4(u32, u32, u32, u32);
u32 Fn_639408_2(u32, u32);
u32 Fn_63b5d8_2(u32, u32);
u32 Fn_636770_1(u32);
u32 Fn_637b64_2(u32, u32);
u32 Fn_637c48_2(u32, u32);
u32 Fn_637e70_1(u32);
u32 Fn_637e50_2(u32, u32);
u32 Fn_6380dc_1(u32);
u32 Fn_638358_1(u32);
u32 Fn_6383dc_2(u32, u32);
u32 Fn_63bd28_1(u32);
u32 Fn_63e0ec_2(u32, u32);
u32 Fn_63e0fc_1(u32);
u32 Fn_63f760_1(u32);

// FUN_006338bc
u32 W_6338bc(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 8);
    if (r0 > 12u) r0 = r0 - 12u;
    return r0;
}

// FUN_00633a2c
u32 W_633a2c(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 20);
    r0 = *(u32*)(r0 + 24);
    r0 = r0 + r1;
    r0 = r0 + 1u;
    return r0;
}

// FUN_00633a40
u32 W_633a40(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00633bb8
u32 W_633bb8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + 12);
    r0 = r1 - r0;
    return r0;
}

// FUN_00633d40
u32 W_633d40(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 6u;
    if (fa == fb) goto L_633d54;
    return Fn_633a54_1(r0);
    L_633d54:;
    return r0;
}

// FUN_00633dd8
u32 W_633dd8(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u16*)(r0 + 14);
    r0 = *(u32*)(r0 + 16);
    if ((r1 & 8u) != 0) r0 = r0 + 1u;
    if ((r1 & 16u) != 0) r0 = r0 + 1u;
    return r0;
}

// FUN_00633df4
u32 W_633df4(u32 a0) {
    u32 r0 = a0, fa, fb;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 5u;
    if (fa == fb) goto L_633e08;
    return Fn_633ba8_1(r0);
    L_633e08:;
    return r0;
}

// FUN_00633ec4
u32 W_633ec4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, fa, fb;
    r4 = r0;
    r0 = *(u8*)(r0 + 63);
    r3 = r1;
    fa = r0; fb = r2;
    if (fa > fb) r0 = 0u;
    if (fa > fb) goto L_633ef4;
    r2 = r0;
    r1 = r4 + 64u;
    r0 = r3;
    r0 = Fn_030c3c_4(r0, r1, r2, r3);
    r0 = *(u8*)(r4 + 63);
    L_633ef4:;
    return r0;
}

// FUN_006345e8
u32 W_6345e8(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 12);
    r0 = *(u8*)(r0 + 10);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_006347cc
u32 W_6347cc(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 176);
    if (r0 != 0u) r0 = r0 + 12u;
    return r0;
}

// FUN_00635d24
u32 W_635d24(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, fa, fb;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0 + 316);
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00635d34
void W_635d34(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2;
    r1 = r1 + (r2 << 2);
    r1 = *(u32*)(r1 + 320);
    *(u32*)(r0) = r1;
    return;
}

// FUN_00635d44
u32 W_635d44(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 316);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_00635d60
u32 W_635d60(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2;
    r2 = r1 & ~3u;
    r1 = r1 & 3u;
    r0 = r0 + r2;
    r0 = r0 + r1;
    r0 = *(u8*)(r0 + 320);
    return r0;
}

// FUN_00636770
u32 W_636770(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_00636d90
u32 W_636d90(u32 a0, u32 a1) {
    u32 r0, r1 = a1;
    r0 = r1;
    r0 = Fn_639408_2(r0, r1);
    r1 = 4u;
    r0 = r1 + (r0 << 2);
    r0 = r0 + 3u;
    r0 = r0 & ~3u;
    return r0;
}

// FUN_00637984
u32 W_637984(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 8);
    if (r0 != 0u) r0 = *(u32*)(r0);
    return r0;
}

// FUN_00637cfc
u32 W_637cfc(u32 a0) {
    u32 r0 = a0, r1, r2, fa, fb;
    r1 = 8193u;
    r2 = *(u16*)(r0 + 20);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637d30;
    r2 = *(u16*)(r0 + 32);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637d30;
    r2 = *(u16*)(r0 + 44);
    fa = r2; fb = r1;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637d30:;
    r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_00637dbc
u32 W_637dbc(u32 a0) {
    u32 r0 = a0, r1, fa, fb;
    r1 = *(u16*)(r0 + 20);
    fa = r1; fb = 8192u;
    if (fa == fb) r0 = r0 + 20u;
    if (fa == fb) goto L_637dec;
    r1 = *(u16*)(r0 + 32);
    fa = r1; fb = 8192u;
    if (fa == fb) r0 = r0 + 32u;
    if (fa == fb) goto L_637dec;
    r1 = *(u16*)(r0 + 44);
    fa = r1; fb = 8192u;
    if (fa == fb) r0 = r0 + 44u;
    if (fa != fb) r0 = 0u;
    L_637dec:;
    r0 = *(u32*)(r0 + 8);
    return r0;
}

// FUN_006383d0
u32 W_6383d0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 52);
    r0 = r0 + r1;
    return r0;
}

// FUN_006383dc
u32 W_6383dc(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 60);
    r0 = r0 + r1;
    return r0;
}

// FUN_006383f4
u32 W_6383f4(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 44);
    r0 = r0 + r1;
    return r0;
}

// FUN_00638d34
u32 W_638d34(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    if (r0 == 0u) goto L_638d50;
    r0 = Fn_636770_1(r0);
    if (r0 != 0u) r0 = 1u;
    L_638d50:;
    return r0;
}

// FUN_00639674
u32 W_639674(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r4;
    r0 = *(u32*)(r0 + 60);
    r4 = r2;
    r0 = Fn_6380dc_1(r0);
    if (r0 == 0u) goto L_6396a0;
    r1 = *(u32*)(r0);
    *(u32*)(r4) = r1;
    r0 = Fn_637e50_2(r0, r1);
    *(u32*)(r4 + 4) = r0;
    r0 = 1u;
    L_6396a0:;
    return r0;
}

// FUN_00639ca8
u32 W_639ca8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r0 = *(u32*)(r0 + 60);
    r4 = r1;
    r0 = Fn_6383dc_2(r0, r1);
    if (r0 == 0u) goto L_639cfc;
    r1 = *(u16*)(r0);
    *(u32*)(r4) = r1;
    r1 = *(u16*)(r0 + 2);
    *(u32*)(r4 + 4) = r1;
    r1 = *(u16*)(r0 + 4);
    *(u32*)(r4 + 8) = r1;
    r1 = *(u16*)(r0 + 6);
    *(u32*)(r4 + 12) = r1;
    r1 = *(u16*)(r0 + 8);
    *(u32*)(r4 + 16) = r1;
    r1 = *(u16*)(r0 + 10);
    *(u32*)(r4 + 20) = r1;
    r0 = *(u16*)(r0 + 12);
    *(u32*)(r4 + 24) = r0;
    r0 = 1u;
    L_639cfc:;
    return r0;
}

// FUN_0063bd08
u32 W_63bd08(u32 a0) {
    u32 r0 = a0, r1, r4;
    r4 = r0;
    r0 = Fn_63bd28_1(r0);
    r1 = r0 - 65280u;
    r1 = r1 - 255u;
    if (r1 == 0) r0 = *(u32*)(r4 + 8);
    if (r1 == 0) r0 = *(u16*)(r0 + 2);
    return r0;
}

// FUN_0063d604
u32 W_63d604(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 3968u;
    r0 = r0 >> 7;
    return r0;
}

// FUN_0063d614
u32 W_63d614(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 48u;
    r0 = r0 >> 4;
    return r0;
}

// FUN_0063d624
u32 W_63d624(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 12u;
    r0 = r0 >> 2;
    return r0;
}

// FUN_0063d634
u32 W_63d634(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 64u;
    r0 = r0 >> 6;
    return r0;
}

// FUN_0063d654
u32 W_63d654(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 48);
    r0 = r0 & 3u;
    return r0;
}

// FUN_0063d814
void W_63d814(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r4;
    r1 = r1 + (r1 << 3);
    r4 = r0 + (r1 << 3);
    r0 = r4 + 8u;
    r0 = Fn_63e0ec_2(r0, r1);
    if (r0 == 0u) goto L_63d83c;
    r0 = r4 + 8u;
    { Fn_63e0fc_1(r0); return; }
    L_63d83c:;
    return;
}

// FUN_0063e0ec
u32 W_63e0ec(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0);
    if (r0 != 0u) r0 = 1u;
    return r0;
}

// FUN_0063e26c
u32 W_63e26c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 12);
    r1 = r1 + (r1 << 1);
    r0 = r0 + (r1 << 2);
    return r0;
}

// FUN_0063e2f0
u32 W_63e2f0(u32 a0) {
    u32 r0 = a0, r1;
    r1 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0 + 8);
    r1 = *(u32*)(r1 + 24);
    r0 = r0 + 4u;
    r0 = r0 + r1;
    return r0;
}

// FUN_0063e368
u32 W_63e368(u32 a0) {
    u32 r0 = a0;
    r0 = *(signed char*)(r0 + 8);
    return r0;
}

// FUN_0063e370
u32 W_63e370(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    r0 = r0 & 28u;
    r0 = r0 >> 2;
    return r0;
}

// FUN_0063e380
u32 W_63e380(u32 a0) {
    u32 r0 = a0;
    r0 = *(u32*)(r0 + 4);
    r0 = r0 & 3u;
    return r0;
}

// FUN_0063e764
u32 W_63e764(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = r0 + (r1 << 2);
    r0 = *(u32*)(r0 + 16);
    return r0;
}

// FUN_0063e788
u32 W_63e788(u32 a0) {
    u32 r0 = a0, r4, r5, r6;
    r5 = 0u;
    r6 = r0;
    r4 = r5;
    L_63e798:;
    r0 = r4 + (r4 << 3);
    r0 = r6 + (r0 << 1);
    r0 = r0 + 80u;
    r0 = Fn_63f760_1(r0);
    if (r0 != 0u) r5 = r5 + 1u;
    r4 = r4 + 1u;
    if ((int)r4 < (int)4u) goto L_63e798;
    r0 = r5;
    return r0;
}

// FUN_0063ebe4
u32 W_63ebe4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1;
    r0 = *(u32*)(r0 + 24);
    r0 = r0 + (r1 << 3);
    return r0;
}
