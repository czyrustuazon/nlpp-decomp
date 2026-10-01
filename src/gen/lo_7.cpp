// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_2024b0_1(u32);
u32 Fn_5f2574_1(u32);
extern char g_008bfa8c[];
u32 Fn_2024b0_3(u32, u32, u32);
u32 Fn_4e019c_1(u32);
extern char g_008bfa40[];
u32 Fn_1c6e50_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
extern char g_00892730[];
extern char g_0081daa4[];
u32 Fn_317d88_1(u32);
extern char g_0089272c[];
u32 Fn_00d980_2(u32, u32);
u32 Fn_318a60_4(u32, u32, u32, u32);
u32 Fn_016030_1(u32);
u32 Fn_444750_1(u32);
extern char g_0081db88[];
u32 Fn_2024b0_2(u32, u32);
u32 Fn_32a624_1(u32);
extern char g_0089a410[];
u32 Fn_444750_3(u32, u32, u32);
u32 Fn_32ca80_1(u32);
extern char g_0081dddc[];
extern char g_0081dec4[];
extern char g_0081deec[];
extern char g_0081e038[];
extern char g_0081e120[];
extern char g_0081e148[];
u32 Fn_4e019c_2(u32, u32);
extern char g_00413148[];
extern char g_0081e1ac[];
u32 Fn_000068_4(u32, u32, u32, u32);
extern char g_0043cf30[];
extern char g_0081e1d0[];
u32 Fn_3428c0_1(u32);
extern char g_008bfa90[];
u32 Fn_4e019c_3(u32, u32, u32);
extern char g_008bfa94[];
extern char g_008bfa98[];
extern char g_0081e6ec[];
u32 Fn_4440d0_2(u32, u32);
u32 Fn_4441b8_2(u32, u32);
extern char g_0089e188[];
extern char g_0081e724[];
u32 Fn_444474_2(u32, u32);
u32 Fn_444548_2(u32, u32);
u32 Fn_59935c_3(u32, u32, u32);
u32 Fn_3516c8_1(u32);
u32 Fn_3516f8_1(u32);
u32 Fn_1397f4_2(u32, u32);
u32 Fn_139884_1(u32);
u32 Fn_354acc_1(u32);
u32 Fn_139838_1(u32);
void Fn_073b14(void*);
u32 Fn_3544d4_1(u32);
u32 Fn_53895c_1(u32);
void Fn_5b12b8(void*);
u32 Fn_369040_1(u32);
u32 Fn_4df458_3(u32, u32, u32);
u32 Fn_5b12b8_1(u32);
u32 Fn_5a579c_1(u32);
u32 Fn_008010_1(u32);
void Fn_59a938(void*);
extern char g_0081f41c[];
u32 Fn_008010_2(u32, u32);
extern char g_00891630[];
extern char g_0081f554[];
extern char g_006b2010[];
extern char g_0081f7d8[];
u32 Fn_3808e4_2(u32, u32);

// FUN_0030ee1c
u32 W_30ee1c(u32 a0) {
    u32 t1 = Fn_5f2574_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00310fe4
u32 W_310fe4(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa8c)) = 0;
    return Fn_2024b0_3(a0, 0, (u32)g_008bfa8c);
}

// FUN_00311698
u32 W_311698(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00311888
u32 W_311888(u32 a0) {
    u32 t1 = Fn_1c6e50_1(a0);
    u32 t2 = *(u32*)((u32)((u32)g_008bfa40));
    u32 t3 = Fn_5c5a78_3(t2, t1, t2);
    return 1;
}

// FUN_003118fc
u32 W_3118fc(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00311f3c
void W_311f3c(u32 a0) {
    *(u8*)((u32)(a0) + 2940) = 1;
}

// FUN_00312d4c
u32 W_312d4c() {
    u32 t1 = *(u16*)((u32)((u32)g_00892730));
    return (t1 + 42);
}

// FUN_0031314c
void W_31314c() {

}

// FUN_003138bc
u32 W_3138bc(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081daa4;
    u32 t1 = Fn_317d88_1((u32)g_0081daa4);
    return Fn_2024b0_1(a0);
}

// FUN_003138e0
u32 W_3138e0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081daa4;
    u32 t1 = Fn_317d88_1((u32)g_0081daa4);
    return a0;
}

// FUN_0031910c
void W_31910c() {
    u32 t1 = *(u32*)((u32)((u32)g_0089272c));
    if (t1 == 0) {
        u32 t2 = Fn_00d980_2(5701632, 0);
    }
    u32 t3 = *(u32*)((u32)((u32)g_0089272c));
    *(u32*)((u32)((u32)g_0089272c)) = (t3 + 1);
}

// FUN_0031c768
void W_31c768(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 t1 = *(u32*)((u32)(a0) + 76);
    u32 t2 = Fn_318a60_4(t1, a3, a1, a3);
    *(u16*)((u32)(a0) + 52) = t2;
}

// FUN_00322034
void W_322034(u32 a0) {
    *(u8*)((u32)(a0) + 86) = 255;
    *(u8*)((u32)(a0) + 91) = 1;
    *(u8*)((u32)(a0) + 92) = 0;
    *(u8*)((u32)(a0) + 93) = 1;
    *(u8*)((u32)(a0) + 94) = 0;
    *(u8*)((u32)(a0) + 168) = 0;
}

// FUN_00326a54
u32 W_326a54() {

    return 1;
}

// FUN_00326ee8
u32 W_326ee8() {

    return 1;
}

// FUN_003276b8
u32 W_3276b8() {

    return 1;
}

// FUN_003276c0
u32 W_3276c0() {

    return 1;
}

// FUN_003277a0
u32 W_3277a0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 120);
    u32 t2 = Fn_444750_1(t1);
    u32 t3 = *(u32*)((u32)(a0) + 120);
    if (t3 != 0) {
        u32 t4 = Fn_016030_1(t3);
        *(u32*)((u32)(a0) + 120) = 0;
    }
    return 1;
}

// FUN_00327878
u32 W_327878(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00327d60
u32 W_327d60() {

    return 20;
}

// FUN_00328188
u32 W_328188(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081db88;
    return Fn_2024b0_2(a0, (u32)g_0081db88);
}

// FUN_00328198
void W_328198(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081db88;
}

// FUN_0032a614
u32 W_32a614(u32 a0) {
    u32 t1 = Fn_32a624_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0032ae7c
u32 W_32ae7c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0032ba54
u32 W_32ba54() {

    return 1;
}

// FUN_0032ba5c
u32 W_32ba5c() {

    return 1;
}

// FUN_0032ba64
u32 W_32ba64() {

    return 1;
}

// FUN_0032baf8
u32 W_32baf8(u32 a0) {
    *(u32*)((u32)((u32)g_0089a410)) = 0;
    u32 t1 = *(u32*)((u32)(a0) + 104);
    u32 t2 = Fn_444750_3(t1, 0, (u32)g_0089a410);
    return 1;
}

// FUN_0032bb74
u32 W_32bb74(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0032ca70
u32 W_32ca70(u32 a0) {
    u32 t1 = Fn_32ca80_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0032df48
u32 W_32df48() {

    return 1;
}

// FUN_0032e7c4
u32 W_32e7c4() {

    return 1;
}

// FUN_0032e7cc
u32 W_32e7cc() {

    return 1;
}

// FUN_0032ea58
u32 W_32ea58(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0032f5a8
u32 W_32f5a8(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00330118
u32 W_330118(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081dddc;
    return Fn_2024b0_2(a0, (u32)g_0081dddc);
}

// FUN_00330128
void W_330128(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081dddc;
}

// FUN_00331224
u32 W_331224() {

    return 1;
}

// FUN_00331c08
u32 W_331c08() {

    return 1;
}

// FUN_00331c10
u32 W_331c10() {

    return 1;
}

// FUN_00331edc
u32 W_331edc(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00332f20
u32 W_332f20(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00333870
u32 W_333870(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081dec4;
    return Fn_2024b0_2(a0, (u32)g_0081dec4);
}

// FUN_00333880
void W_333880(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081dec4;
}

// FUN_00333d68
u32 W_333d68() {

    return 81;
}

// FUN_00333d70
u32 W_333d70() {

    return 81;
}

// FUN_00333d78
u32 W_333d78() {

    return 81;
}

// FUN_003341a0
u32 W_3341a0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081deec;
    return Fn_2024b0_2(a0, (u32)g_0081deec);
}

// FUN_003341b0
void W_3341b0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081deec;
}

// FUN_00334824
u32 W_334824() {

    return 1;
}

// FUN_00335024
u32 W_335024() {

    return 1;
}

// FUN_0033502c
u32 W_33502c() {

    return 1;
}

// FUN_003350ec
u32 W_3350ec(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    u32 t2 = Fn_444750_1(t1);
    u32 t3 = *(u32*)((u32)(a0) + 108);
    if (t3 != 0) {
        u32 t4 = Fn_016030_1(t3);
        *(u32*)((u32)(a0) + 108) = 0;
    }
    return 1;
}

// FUN_003351b0
u32 W_3351b0(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00335994
u32 W_335994(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00336910
u32 W_336910() {

    return 1;
}

// FUN_00336918
u32 W_336918() {

    return 1;
}

// FUN_00336920
u32 W_336920() {

    return 1;
}

// FUN_00336a9c
u32 W_336a9c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00336b0c
u32 W_336b0c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e038;
    return Fn_2024b0_2(a0, (u32)g_0081e038);
}

// FUN_00336b1c
void W_336b1c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e038;
}

// FUN_003371a8
u32 W_3371a8() {

    return 1;
}

// FUN_003379b8
u32 W_3379b8() {

    return 1;
}

// FUN_003379c0
u32 W_3379c0() {

    return 1;
}

// FUN_00337a80
u32 W_337a80(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    u32 t2 = Fn_444750_1(t1);
    u32 t3 = *(u32*)((u32)(a0) + 108);
    if (t3 != 0) {
        u32 t4 = Fn_016030_1(t3);
        *(u32*)((u32)(a0) + 108) = 0;
    }
    return 1;
}

// FUN_00337b40
u32 W_337b40(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0033a6f0
u32 W_33a6f0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e120;
    return Fn_2024b0_2(a0, (u32)g_0081e120);
}

// FUN_0033a700
void W_33a700(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e120;
}

// FUN_0033ad84
u32 W_33ad84() {

    return 1;
}

// FUN_0033b4dc
u32 W_33b4dc() {

    return 1;
}

// FUN_0033b5e0
u32 W_33b5e0() {

    return 1;
}

// FUN_0033b5e8
u32 W_33b5e8() {

    return 1;
}

// FUN_0033b654
u32 W_33b654() {

    return 1;
}

// FUN_0033b6fc
u32 W_33b6fc(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e148;
    u32 t1 = Fn_4e019c_2(a0, (u32)g_0081e148);
    return Fn_2024b0_1(t1);
}

// FUN_0033bebc
u32 W_33bebc(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e1ac;
    u32 t1 = Fn_000068_4((a0 + 16), (u32)g_00413148, 80, 126);
    return a0;
}

// FUN_0033c538
u32 W_33c538(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e1d0;
    u32 t1 = Fn_000068_4((a0 + 16), (u32)g_0043cf30, 1376, 18);
    return a0;
}

// FUN_0033c9c0
void W_33c9c0(u32 a0) {
    *(u8*)((u32)(a0) + 12) = 2;
}

// FUN_0033cfec
void W_33cfec(u32 a0) {
    *(u8*)((u32)(a0) + 12) = 0;
    *(u8*)((u32)(a0) + 13) = 0;
    *(u8*)((u32)(a0) + 14) = 0;
    *(u8*)((u32)(a0) + 15) = 0;
    *(u16*)((u32)(a0) + 16) = 0;
}

// FUN_0033d0c8
void W_33d0c8(u32 a0, u32 a1, u32 a2, u32 a3) {
    *(u8*)((u32)(a0) + 12) = a1;
    *(u8*)((u32)(a0) + 13) = a2;
    *(u8*)((u32)(a0) + 14) = a3;
}

// FUN_0033d24c
void W_33d24c() {

}

// FUN_0033e7ec
u32 W_33e7ec() {

    return 1;
}

// FUN_0033fd1c
u32 W_33fd1c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00341254
u32 W_341254() {

    return 1;
}

// FUN_00341c04
u32 W_341c04() {

    return 1;
}

// FUN_00341c0c
u32 W_341c0c() {

    return 1;
}

// FUN_003428b0
u32 W_3428b0(u32 a0) {
    u32 t1 = Fn_3428c0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00343464
u32 W_343464() {

    return 1;
}

// FUN_0034346c
u32 W_34346c() {

    return 1;
}

// FUN_00343474
u32 W_343474() {

    return 1;
}

// FUN_0034347c
u32 W_34347c() {

    return 1;
}

// FUN_00343484
u32 W_343484() {

    return 1;
}

// FUN_0034348c
u32 W_34348c() {

    return 1;
}

// FUN_003434dc
u32 W_3434dc(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa90)) = 0;
    u32 t1 = Fn_4e019c_3(a0, 0, (u32)g_008bfa90);
    return Fn_2024b0_1(t1);
}

// FUN_003434fc
u32 W_3434fc(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa90)) = 0;
    return Fn_4e019c_3(a0, 0, (u32)g_008bfa90);
}

// FUN_003436d4
u32 W_3436d4() {

    return 1;
}

// FUN_003436dc
u32 W_3436dc() {

    return 1;
}

// FUN_003436e4
u32 W_3436e4() {

    return 1;
}

// FUN_0034388c
u32 W_34388c() {

    return 1;
}

// FUN_00343894
u32 W_343894() {

    return 1;
}

// FUN_0034389c
u32 W_34389c() {

    return 1;
}

// FUN_003438a4
u32 W_3438a4() {

    return 1;
}

// FUN_003438ac
u32 W_3438ac() {

    return 1;
}

// FUN_003438b4
u32 W_3438b4() {

    return 1;
}

// FUN_00343948
u32 W_343948(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa94)) = 0;
    u32 t1 = Fn_4e019c_3(a0, 0, (u32)g_008bfa94);
    return Fn_2024b0_1(t1);
}

// FUN_00343968
u32 W_343968(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa94)) = 0;
    return Fn_4e019c_3(a0, 0, (u32)g_008bfa94);
}

// FUN_00344314
void W_344314(u32 a0) {
    *(u32*)((u32)(a0) + 1828) = 3;
    *(u8*)((u32)(a0) + 1824) = 7;
    *(u8*)((u32)(a0) + 71) = 2;
}

// FUN_00344330
void W_344330(u32 a0) {
    *(u32*)((u32)(a0) + 1828) = 3;
    *(u8*)((u32)(a0) + 1824) = 6;
    *(u8*)((u32)(a0) + 71) = 1;
}

// FUN_003443a8
void W_3443a8(u32 a0) {
    *(u32*)((u32)(a0) + 1828) = 3;
    *(u8*)((u32)(a0) + 1824) = 5;
}

// FUN_00344ae8
void W_344ae8(u32 a0) {
    *(u32*)((u32)(a0) + 1828) = 3;
    *(u8*)((u32)(a0) + 1824) = 3;
}

// FUN_00344af8
void W_344af8(u32 a0) {
    *(u32*)((u32)(a0) + 1828) = 3;
    *(u8*)((u32)(a0) + 1824) = 4;
}

// FUN_00344d88
u32 W_344d88() {

    return 1;
}

// FUN_00344d90
u32 W_344d90() {

    return 1;
}

// FUN_00344d98
u32 W_344d98() {

    return 1;
}

// FUN_003451d8
u32 W_3451d8() {

    return 1;
}

// FUN_00345228
u32 W_345228() {

    return 1;
}

// FUN_00345230
u32 W_345230() {

    return 1;
}

// FUN_00345404
u32 W_345404() {

    return 1;
}

// FUN_0034540c
u32 W_34540c() {

    return 1;
}

// FUN_00345414
u32 W_345414() {

    return 1;
}

// FUN_0034541c
u32 W_34541c() {

    return 1;
}

// FUN_0034549c
u32 W_34549c() {

    return 1;
}

// FUN_003454a4
u32 W_3454a4() {

    return 1;
}

// FUN_00345580
u32 W_345580(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa98)) = 0;
    u32 t1 = Fn_4e019c_3(a0, 0, (u32)g_008bfa98);
    return Fn_2024b0_1(t1);
}

// FUN_003455a0
u32 W_3455a0(u32 a0) {
    *(u32*)((u32)((u32)g_008bfa98)) = 0;
    return Fn_4e019c_3(a0, 0, (u32)g_008bfa98);
}

// FUN_003483bc
u32 W_3483bc() {

    return 1;
}

// FUN_003483c4
u32 W_3483c4() {

    return 1;
}

// FUN_003491d4
u32 W_3491d4() {

    return 1;
}

// FUN_00349520
u32 W_349520(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0034a5a4
u32 W_34a5a4(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e6ec;
    return Fn_2024b0_2(a0, (u32)g_0081e6ec);
}

// FUN_0034a5b4
void W_34a5b4(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e6ec;
}

// FUN_0034a6d8
u32 W_34a6d8(u32 a0) {
    return Fn_4440d0_2(a0, 0);
}

// FUN_0034a6e0
u32 W_34a6e0(u32 a0) {
    return Fn_4441b8_2(a0, 0);
}

// FUN_0034a7cc
void W_34a7cc(u32 a0) {
    *(u8*)((u32)((u32)g_0089e188)) = a0;
}

// FUN_0034b1d0
u32 W_34b1d0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e724;
    return Fn_2024b0_2(a0, (u32)g_0081e724);
}

// FUN_0034b1e0
void W_34b1e0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081e724;
}

// FUN_0034b2d8
u32 W_34b2d8(u32 a0) {
    return Fn_444474_2(a0, 0);
}

// FUN_0034b2e0
u32 W_34b2e0(u32 a0) {
    return Fn_444548_2(a0, 0);
}

// FUN_0034bcbc
u32 W_34bcbc() {

    return 1;
}

// FUN_0034bcc4
u32 W_34bcc4() {

    return 1;
}

// FUN_0034c9ac
u32 W_34c9ac() {

    return 1;
}

// FUN_0034cd88
u32 W_34cd88(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00351328
u32 W_351328(u32 a0) {
    u32 t1 = Fn_59935c_3(351469568u, a0, 0);
    *(u32*)((u32)(a0) + 80) = t1;
    *(u8*)((u32)(a0) + 68) = 1;
    return 1;
}

// FUN_00351894
u32 W_351894(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00351f74
u32 W_351f74(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_003533d8
u32 W_3533d8(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00353c4c
u32 W_353c4c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_003543a8
u32 W_3543a8(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00354be4
u32 W_354be4(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00355184
u32 W_355184(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00355838
u32 W_355838(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00355e44
u32 W_355e44(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0035605c
u32 W_35605c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 112);
    if (t1 != 0) {
        return Fn_3516c8_1(t1);
    }
}

// FUN_00356070
u32 W_356070(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 112);
    if (t1 != 0) {
        return Fn_3516f8_1(t1);
    }
}

// FUN_00356084
u32 W_356084(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u32*)((u32)(a0) + 76);
    if (t1 != 0) {
        u32 t2 = Fn_139884_1(t1);
        u32 t3 = *(u32*)((u32)(a0) + 76);
        return Fn_1397f4_2(t3, a2);
    }
}

// FUN_003560c8
u32 W_3560c8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 116);
    if (t1 != 0) {
        return Fn_354acc_1(t1);
    }
}

// FUN_0035635c
u32 W_35635c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 76);
    if (t1 != 0) {
        return Fn_139838_1(t1);
    }
}

// FUN_0035783c
void W_35783c(void*, void* b) { Fn_073b14(b); }

// FUN_00357c80
u32 W_357c80(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 116);
    if (t1 != 0) {
        return Fn_3544d4_1(t1);
    }
}

// FUN_0035c96c
u32 W_35c96c(u32 a0) {
    *(u32*)((u32)(a0) + 144) = 1;
    return 1;
}

// FUN_0035d704
u32 W_35d704() {

    return 1;
}

// FUN_0035d70c
u32 W_35d70c() {

    return 1;
}

// FUN_0035e218
u32 W_35e218(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0035e4d8
u32 W_35e4d8() {

    return 1;
}

// FUN_0035e4e0
u32 W_35e4e0() {

    return 1;
}

// FUN_0035f2f8
u32 W_35f2f8(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0035f5e8
void W_35f5e8() {

}

// FUN_0035f934
u32 W_35f934() {

    return 1;
}

// FUN_0035fc28
void W_35fc28() {

}

// FUN_0035fc48
u32 W_35fc48() {

    return 1;
}

// FUN_00360674
u32 W_360674() {

    return 1;
}

// FUN_0036067c
u32 W_36067c() {

    return 1;
}

// FUN_003615bc
u32 W_3615bc() {

    return 1;
}

// FUN_00361a48
void W_361a48() {

}

// FUN_00361bb4
u32 W_361bb4() {

    return 1;
}

// FUN_003647b0
u32 W_3647b0() {

    return 1;
}

// FUN_00364b30
void W_364b30() {

}

// FUN_00364f00
u32 W_364f00() {

    return 1;
}

// FUN_00366468
u32 W_366468() {

    return 1;
}

// FUN_00366710
void W_366710() {

}

// FUN_00366730
u32 W_366730() {

    return 1;
}

// FUN_00366c2c
u32 W_366c2c() {

    return 1;
}

// FUN_00366da4
void W_366da4(u32 a0) {
    u32 t1 = Fn_53895c_1(0);
    *(u32*)((u32)(a0) + 68) = 2;
}

// FUN_00366dcc
void W_366dcc(u32 a0) {
    *(u32*)((u32)(a0) + 68) = 1;
}

// FUN_00366dd8
u32 W_366dd8() {

    return 1;
}

// FUN_00367038
u32 W_367038() {

    return 1;
}

// FUN_00367190
u32 W_367190() {

    return 1;
}

// FUN_00367198
u32 W_367198() {

    return 1;
}

// FUN_003671d4
u32 W_3671d4() {

    return 1;
}

// FUN_003671dc
u32 W_3671dc() {

    return 1;
}

// FUN_003671e4
u32 W_3671e4() {

    return 0;
}

// FUN_00367a64
void W_367a64() {

}

// FUN_00367ba0
u32 W_367ba0() {

    return 1;
}

// FUN_00367ea4
void W_367ea4() {

}

// FUN_00367ec4
u32 W_367ec4() {

    return 1;
}

// FUN_00367ffc
int W_367ffc(void* a) { Fn_5b12b8(a); return 1; }

// FUN_00368334
void W_368334() {

}

// FUN_00368338
u32 W_368338() {

    return 1;
}

// FUN_003683fc
void W_3683fc(u32 a0) {
    *(u32*)((u32)(a0) + 100) = 4096;
}

// FUN_003686a8
u32 W_3686a8() {

    return 1;
}

// FUN_003686b0
int W_3686b0(void* a) { Fn_5b12b8(a); return 1; }

// FUN_00368754
u32 W_368754(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00368990
void W_368990() {

}

// FUN_00368c6c
u32 W_368c6c() {

    return 1;
}

// FUN_00368e1c
void W_368e1c() {

}

// FUN_00368e3c
u32 W_368e3c() {

    return 1;
}

// FUN_00369030
u32 W_369030(u32 a0) {
    u32 t1 = Fn_369040_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00369798
u32 W_369798(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0036a824
u32 W_36a824() {

    return 1;
}

// FUN_0036a82c
u32 W_36a82c() {

    return 1;
}

// FUN_0036b284
void W_36b284() {

}

// FUN_0036b650
u32 W_36b650() {

    return 1;
}

// FUN_0036b980
void W_36b980() {

}

// FUN_0036b9a0
u32 W_36b9a0() {

    return 1;
}

// FUN_0036ba6c
u32 W_36ba6c(u32 a0) {
    u32 t1 = Fn_5b12b8_1(a0);
    u32 t2 = *(u32*)((u32)(a0) + 100);
    u32 t3 = Fn_4df458_3(a0, t2, 0);
    return 1;
}

// FUN_0036bf94
u32 W_36bf94() {

    return 1;
}

// FUN_0036bf9c
u32 W_36bf9c() {

    return 1;
}

// FUN_0036c758
u32 W_36c758(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0036cb6c
u32 W_36cb6c() {

    return 1;
}

// FUN_0036cb74
u32 W_36cb74() {

    return 1;
}

// FUN_0036cb7c
u32 W_36cb7c() {

    return 1;
}

// FUN_0036ce9c
u32 W_36ce9c(u32 a0) {
    *(u32*)((u32)(a0) + 184) = 3;
    return 1;
}

// FUN_0036d0d8
u32 W_36d0d8() {

    return 1;
}

// FUN_0036d56c
u32 W_36d56c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0036d900
u32 W_36d900() {

    return 1;
}

// FUN_0036df04
void W_36df04() {

}

// FUN_0036df24
u32 W_36df24() {

    return 1;
}

// FUN_0036f408
u32 W_36f408() {

    return 1;
}

// FUN_0036f410
u32 W_36f410() {

    return 1;
}

// FUN_00370b8c
u32 W_370b8c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00370b9c
u32 W_370b9c() {

    return 1;
}

// FUN_00370dac
u32 W_370dac() {

    return 1;
}

// FUN_00370f3c
u32 W_370f3c() {

    return 1;
}

// FUN_003710b4
u32 W_3710b4(u32 a0) {
    u32 t1 = Fn_5b12b8_1(a0);
    u32 t2 = *(u32*)((u32)(a0) + 108);
    if (t2 != 0) {
        u32 t3 = Fn_5a579c_1(t2);
        *(u32*)((u32)(a0) + 108) = 0;
    }
    return 1;
}

// FUN_00371768
void W_371768(u32 a0) {
    *(u32*)((u32)(a0) + 108) = 0;
}

// FUN_003719d4
u32 W_3719d4(u32 a0) {
    u32 t1 = Fn_008010_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00371a28
int W_371a28(void* a) { Fn_59a938(a); return 1; }

// FUN_003723c4
u32 W_3723c4() {

    return 1;
}

// FUN_00372458
u32 W_372458() {

    return 1;
}

// FUN_00372460
u32 W_372460() {

    return 1;
}

// FUN_00372924
u32 W_372924(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f41c;
    u32 t1 = Fn_008010_2(a0, (u32)g_0081f41c);
    return Fn_2024b0_1(t1);
}

// FUN_00372940
u32 W_372940(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f41c;
    return Fn_008010_2(a0, (u32)g_0081f41c);
}

// FUN_00373d34
u32 W_373d34() {

    return 1;
}

// FUN_00373d3c
u32 W_373d3c() {

    return 1;
}

// FUN_003758b4
void W_3758b4() {

}

// FUN_00375b44
u32 W_375b44() {

    return 1;
}

// FUN_00375f60
void W_375f60() {

}

// FUN_00375f80
u32 W_375f80() {

    return 1;
}

// FUN_003767ec
u32 W_3767ec(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_003767fc
u32 W_3767fc() {
    u32 t1 = *(u32*)((u32)((u32)g_00891630));
    return t1;
}

// FUN_003768ac
u32 W_3768ac(u32 a0) {
    u32 t1 = *(u32*)((u32)((a0 + 8192)) + 284);
    return t1;
}

// FUN_00376948
void W_376948(u32 a0) {
    u32 t1 = *(u32*)((u32)((a0 + 8192)) + 284);
    if (t1 != 0) {
        u32 t2 = Fn_2024b0_1(t1);
        *(u32*)((u32)((a0 + 8192)) + 284) = 0;
    }
}

// FUN_00376f30
u32 W_376f30(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    u32 t2 = *(u32*)((u32)(t1) + 48);
    return t2;
}

// FUN_00376f3c
u32 W_376f3c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    u32 t2 = *(u32*)((u32)(t1) + 48);
    u32 t3 = *(u32*)((u32)(t2) + 4);
    return t3;
}

// FUN_00377010
u32 W_377010(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f554;
    return Fn_2024b0_2(a0, (u32)g_0081f554);
}

// FUN_00377020
void W_377020(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f554;
}

// FUN_003771cc
u32 W_3771cc(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f554;
    return Fn_2024b0_2(a0, (u32)g_0081f554);
}

// FUN_003771dc
void W_3771dc(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f554;
}

// FUN_0037782c
void W_37782c() {

}

// FUN_00377830
void W_377830() {

}

// FUN_00377834
void W_377834() {

}

// FUN_00377838
void W_377838() {

}

// FUN_00377e50
void W_377e50() {

}

// FUN_0037846c
u32 W_37846c() {

    return 1;
}

// FUN_003790e0
void W_3790e0() {

}

// FUN_00379100
u32 W_379100() {

    return 1;
}

// FUN_0037a320
u32 W_37a320() {

    return 1;
}

// FUN_0037a66c
void W_37a66c() {

}

// FUN_0037a68c
u32 W_37a68c() {

    return 1;
}

// FUN_0037a7dc
u32 W_37a7dc(u32 a0) {
    u32 t1 = Fn_5b12b8_1(a0);
    u32 t2 = *(u32*)((u32)(a0) + 104);
    u32 t3 = Fn_4df458_3(a0, t2, 0);
    return 1;
}

// FUN_0037af84
void W_37af84() {

}

// FUN_0037b600
u32 W_37b600() {

    return 1;
}

// FUN_0037bd14
void W_37bd14() {

}

// FUN_0037bd34
u32 W_37bd34() {

    return 1;
}

// FUN_0037c5a8
u32 W_37c5a8() {

    return 1;
}

// FUN_0037c5b0
u32 W_37c5b0() {

    return 1;
}

// FUN_0037c89c
u32 W_37c89c(u32 a0) {
    *(u32*)((u32)(a0) + 136) = 3;
    return 1;
}

// FUN_0037cc18
u32 W_37cc18() {

    return 1;
}

// FUN_0037ce64
u32 W_37ce64() {

    return 1;
}

// FUN_0037cf54
void W_37cf54(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 136) = a1;
    *(u8*)((u32)(a0) + 73) = 1;
}

// FUN_0037cf64
u32 W_37cf64() {

    return 1;
}

// FUN_0037cff4
u32 W_37cff4(u32 a0) {
    u32 t1 = Fn_5b12b8_1(a0);
    u32 t2 = *(u32*)((u32)(a0) + 108);
    if (t2 != 0) {
        u32 t3 = Fn_5a579c_1(t2);
        *(u32*)((u32)(a0) + 108) = 0;
    }
    return 1;
}

// FUN_0037d840
u32 W_37d840() {

    return 1;
}

// FUN_0037d848
u32 W_37d848() {

    return 1;
}

// FUN_0037dee0
u32 W_37dee0(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0037e6ec
u32 W_37e6ec() {

    return 1;
}

// FUN_0037e6f4
void W_37e6f4(u32 a0) {
    *(u8*)((u32)(a0) + 68) = 0;
    *(u32*)((u32)(a0) + 72) = 256;
    *(u8*)((u32)(a0) + 69) = 0;
}

// FUN_0037f9a8
u32 W_37f9a8() {

    return 1;
}

// FUN_0037ff90
u32 W_37ff90(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0081f7d8;
    u32 t1 = Fn_000068_4((a0 + 84), (u32)g_006b2010, 8, 4);
    return Fn_4e019c_1(a0);
}

// FUN_00380554
u32 W_380554() {

    return 1;
}

// FUN_0038077c
u32 W_38077c(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 32) = a1;
    return Fn_3808e4_2(138, a1);
}

// FUN_00380a38
u32 W_380a38() {

    return 1;
}

// FUN_00380be8
u32 W_380be8() {

    return 1;
}

// FUN_00380ccc
u32 W_380ccc() {

    return 1;
}

// FUN_00380d78
u32 W_380d78() {

    return 1;
}

// FUN_00380d80
int W_380d80(void* a) { Fn_5b12b8(a); return 1; }

// FUN_00380dfc
u32 W_380dfc(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00380e0c
u32 W_380e0c() {

    return 1;
}

// FUN_003811fc
u32 W_3811fc() {

    return 1;
}

// FUN_00381460
u32 W_381460() {

    return 1;
}

// FUN_00381d34
u32 W_381d34(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}
