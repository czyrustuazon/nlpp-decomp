// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_501e14_1(u32);
extern char g_009a141c[];
u32 Fn_50e6c4_1(u32);
u32 Fn_50ef2c_1(u32);
u32 Fn_50e7b0_1(u32);
extern char g_008b8530[];
extern char g_009b0c70[];
extern char g_009b1ccc[];
extern char g_009b0c7c[];
u32 Fn_512d50_4(u32, u32, u32, u32);
extern char g_009b99cc[];
u32 Fn_01b624_1(u32);
extern char g_009b0ccc[];
u32 Fn_024788_2(u32, u32);
u32 Fn_5151d0_2(u32, u32);
u32 Fn_024568_1(u32);
u32 Fn_513014_1(u32);
u32 Fn_512dc4_1(u32);
u32 Fn_512dcc_2(u32, u32);
u32 Fn_512df0_2(u32, u32);
u32 Fn_512e00_4(u32, u32, u32, u32);
extern char g_009b22d0[];
u32 Fn_512a60_2(u32, u32);
u32 Fn_5171f4_2(u32, u32);
u32 Fn_50c27c_1(u32);
u32 Fn_504394_1(u32);
u32 Fn_504590_1(u32);
u32 Fn_51a2a8_1(u32);
extern char g_0082c3bc[];
u32 Fn_51c918_1(u32);
extern char g_008ab8e0[];
u32 Fn_01d3e0_2(u32, u32);
u32 Fn_01d534_1(u32);
u32 Fn_5378d0_2(u32, u32);
u32 Fn_542118_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_5461b0_1(u32);
extern char g_0082c570[];
extern char g_0082c68c[];
u32 Fn_569db4_1(u32);
u32 Fn_569e64_1(u32);
extern char g_008ab268[];
u32 Fn_548d90_1(u32);
extern char g_0082c88c[];
u32 Fn_545f70_1(u32);
void Fn_54ea00(char*);
void Fn_54e8f4(char*);
void Fn_54e934(char*);
u32 Fn_548334_1(u32);
extern char g_0082ca98[];
u32 Fn_2024b0_2(u32, u32);
extern char g_0082cb0c[];
u32 Fn_559a30_2(u32, u32);
extern char g_0082cbc8[];
u32 Fn_550998_2(u32, u32);
extern char g_0082cbfc[];

// FUN_00500614
void W_500614(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 12) = 0;
}

// FUN_005019dc
void W_5019dc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 24);
    if (t1 != 0) {
        u32 t2 = Fn_501e14_1((a0 + 24));
        *(u32*)((u32)(a0) + 24) = 0;
    }
}

// FUN_00501ad0
void W_501ad0() {

}

// FUN_005027c8
u32 W_5027c8() {

    return (u32)g_009a141c;
}

// FUN_005059a4
u32 W_5059a4() {

    return 5;
}

// FUN_00506168
void W_506168(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_00506f54
u32 W_506f54(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 t1 = *(u32*)((u32)(a3));
    *(u32*)((u32)(a1)) = t1;
    return 1;
}

// FUN_005073bc
u32 W_5073bc(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u32*)((u32)(a2));
    *(u32*)((u32)(a1)) = t1;
    return 1;
}

// FUN_005073cc
u32 W_5073cc() {

    return 8;
}

// FUN_00507440
u32 W_507440() {

    return 5;
}

// FUN_00507a08
u32 W_507a08() {

    return 4;
}

// FUN_00509aa0
void W_509aa0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
}

// FUN_0050e7a4
void W_50e7a4(u32 a0) {
    *(u8*)((u32)(a0) + 16) = 0;
}

// FUN_0050e7b0
void W_50e7b0(u32 a0) {
    *(u8*)((u32)(a0) + 16) = 0;
}

// FUN_0050e7fc
u32 W_50e7fc(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 28);
    if (t1 != 0) {
        return Fn_50ef2c_1(t1);
    }
    u32 t2 = Fn_50e6c4_1(a0);
    *(u32*)((u32)(a0) + 24) = 0;
    *(u8*)((u32)(a0) + 28) = 1;
}

// FUN_0050e8cc
void W_50e8cc(u32 a0) {
    u32 t1 = Fn_50e7b0_1(a0);
    *(u8*)((u32)(t1) + 28) = 0;
}

// FUN_0050ef2c
u32 W_50ef2c() {
    u32 t1 = *(u32*)((u32)((u32)g_008b8530));
    return t1;
}

// FUN_0050f77c
void W_50f77c(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
}

// FUN_0050fda4
void W_50fda4(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 20) = a1;
    *(u32*)((u32)(a0) + 24) = a1;
}

// FUN_0050fe14
void W_50fe14(u32 a0) {
    u32 t1 = Fn_50e7b0_1(a0);
    *(u8*)((u32)(t1) + 28) = 0;
}

// FUN_0050fe78
void W_50fe78() {

}

// FUN_0050fe7c
void W_50fe7c() {

}

// FUN_0050fe80
void W_50fe80() {

}

// FUN_0050fe84
void W_50fe84() {

}

// FUN_0050fe88
void W_50fe88() {

}

// FUN_0050fe8c
void W_50fe8c() {

}

// FUN_0050ff7c
void W_50ff7c() {

}

// FUN_0051013c
void W_51013c() {

}

// FUN_00510300
void W_510300() {

}

// FUN_00510580
void W_510580() {

}

// FUN_005106b4
void W_5106b4() {

}

// FUN_00510984
void W_510984() {

}

// FUN_00510ae8
void W_510ae8() {

}

// FUN_00510b84
void W_510b84() {

}

// FUN_00510cd8
void W_510cd8() {

}

// FUN_00510f90
void W_510f90() {

}

// FUN_005112b0
void W_5112b0() {

}

// FUN_005112e0
void W_5112e0(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = 1313755728u;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
}

// FUN_005114a0
void W_5114a0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
}

// FUN_00511a1c
void W_511a1c(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
}

// FUN_00512510
u32 W_512510() {

    return (u32)g_009b0c70;
}

// FUN_005125c4
u32 W_5125c4() {
    u32 t1 = *(u32*)((u32)((u32)g_009b1ccc) + 812);
    return t1;
}

// FUN_0051369c
u32 W_51369c(u32 a0, u32 a1, u32 a2) {
    return Fn_512d50_4((u32)g_009b0c7c, a0, a1, a2);
}

// FUN_00513b90
u32 W_513b90() {

    return (u32)g_009b99cc;
}

// FUN_00513df0
void W_513df0(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0));
    if (t1 == 0) {
        u32 t2 = Fn_01b624_1((a0 + 52));
        *(u8*)((u32)(a0)) = 1;
    }
}

// FUN_0051418c
u32 W_51418c(u32 a0, u32 a1) {
    u32 t1 = Fn_024788_2(a0, a1);
    if (t1 != 0) {
        *(u8*)((u32)(a0) + 2) = a1;
        return Fn_5151d0_2((u32)g_009b0ccc, a1);
    }
}

// FUN_005142c0
u32 W_5142c0(u32 a0) {
    u32 t1 = Fn_513014_1(a0);
    return Fn_024568_1((t1 + 52));
}

// FUN_005142e4
u32 W_5142e4() {
    return Fn_512dc4_1((u32)g_009b0c7c);
}

// FUN_0051434c
u32 W_51434c(u32 a0) {
    return Fn_512dcc_2((u32)g_009b0c7c, a0);
}

// FUN_0051435c
u32 W_51435c(u32 a0) {
    return Fn_512df0_2((u32)g_009b0c7c, a0);
}

// FUN_00514390
u32 W_514390(u32 a0, u32 a1, u32 a2) {
    return Fn_512e00_4((u32)g_009b0c7c, a0, a1, a2);
}

// FUN_0051443c
void W_51443c(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u8*)((u32)(a0) + 17) = 0;
}

// FUN_005166b0
void W_5166b0(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 260);
    if (t1 != 0) {
        *(u8*)((u32)(a0) + 260) = 0;
        *(u32*)((u32)(a0) + 60) = 0;
        *(u32*)((u32)(a0) + 76) = 0;
        *(u32*)((u32)(a0) + 92) = 0;
        *(u32*)((u32)(a0) + 96) = 0;
        *(u32*)((u32)(a0) + 124) = 0;
        *(u32*)((u32)(a0) + 64) = 0;
        *(u32*)((u32)(a0) + 80) = 0;
        *(u32*)((u32)(a0) + 100) = 0;
        *(u32*)((u32)(a0) + 104) = 0;
        *(u32*)((u32)(a0) + 128) = 0;
    }
}

// FUN_00516a88
u32 W_516a88(u32 a0) {
    return Fn_512a60_2((u32)g_009b22d0, a0);
}

// FUN_0051768c
u32 W_51768c(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 13);
    if (t1 == 0) {
        return Fn_5171f4_2(a0, t1);
    }
}

// FUN_00518abc
u32 W_518abc(u32 a0) {
    u32 t1 = Fn_50c27c_1(a0);
    *(u8*)((u32)(a0)) = t1;
    return 0;
}

// FUN_0051b8b4
u32 W_51b8b4(u32 a0) {
    u32 t1 = Fn_51a2a8_1(a0);
    u32 t2 = Fn_504394_1(t1);
    return Fn_504590_1(t2);
}

// FUN_0051ce38
void W_51ce38(u32 a0) {
    *(u16*)((u32)(a0) + 6) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
}

// FUN_0051da3c
void W_51da3c(u32 a0) {
    u32 t1 = Fn_51c918_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082c3bc;
}

// FUN_00522c58
u32 W_522c58() {

    return 9072u;
}

// FUN_00522e60
void W_522e60(u32 a0) {
    *(u8*)((u32)(a0) + 4) = 0;
}

// FUN_00523674
void W_523674(u32 a0) {
    *(u8*)((u32)(a0) + 4) = 0;
}

// FUN_00534038
u32 W_534038() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 11);
    return t1;
}

// FUN_00535ea8
u32 W_535ea8() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 5);
    return t1;
}

// FUN_00536408
u32 W_536408(u32 a0, u32 a1) {
    u32 t1 = Fn_01d3e0_2(a0, a1);
    u32 t2 = Fn_5378d0_2(a0, a1);
    u32 t3 = Fn_01d534_1(t2);
    return t2;
}

// FUN_00541c30
u32 W_541c30() {

    return 1;
}

// FUN_00541cdc
void W_541cdc() {

}

// FUN_005422e0
void W_5422e0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 12) = 0;
}

// FUN_005425a0
u32 W_5425a0(u32 a0) {
    u32 t1 = Fn_542118_1(a0);
    return a0;
}

// FUN_00542c20
u32 W_542c20(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00542e80
void W_542e80() {

}

// FUN_005439a8
void W_5439a8(u32 a0) {
    *(u8*)((u32)(a0) + 735) = 1;
}

// FUN_00543d80
void W_543d80(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082c570;
}

// FUN_005455d8
void W_5455d8() {

}

// FUN_00545c68
void W_545c68() {

}

// FUN_00545f6c
void W_545f6c() {

}

// FUN_0054619c
u32 W_54619c(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005481ac
void W_5481ac(u32 a0) {
    u32 t1 = Fn_569db4_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082c68c;
}

// FUN_005481c4
u32 W_5481c4(u32 a0) {
    u32 t1 = Fn_569e64_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0054851c
void W_54851c(u32 a0) {
    *(u32*)((u32)((u32)g_008ab268)) = a0;
}

// FUN_00548d80
u32 W_548d80(u32 a0) {
    u32 t1 = Fn_548d90_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0054b2f8
void W_54b2f8() {

}

// FUN_0054b2fc
void W_54b2fc(u32 a0) {
    u32 t1 = Fn_545f70_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082c88c;
}

// FUN_0054b314
u32 W_54b314(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0054c324
u32 W_54c324(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0054d9f0
void W_54d9f0(char* a) { Fn_54ea00(a + 4); }

// FUN_0054da08
void W_54da08(char* a) { Fn_54e8f4(a + 4); }

// FUN_0054da10
void W_54da10(char* a) { Fn_54e934(a + 4); }

// FUN_0054e3b8
void W_54e3b8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    if (t1 != 0) {
        u32 t2 = Fn_548334_1(t1);
        *(u32*)((u32)(a0) + 4) = 0;
        *(u8*)((u32)(a0)) = 0;
        *(u8*)((u32)(a0) + 1) = 0;
    }
}

// FUN_0054e624
void W_54e624(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 1) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_0055093c
void W_55093c(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u8*)((u32)(a0) + 12) = 47;
    *(u8*)((u32)(a0) + 13) = 0;
}

// FUN_00550988
u32 W_550988(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ca98;
    return Fn_2024b0_2(a0, (u32)g_0082ca98);
}

// FUN_00550998
void W_550998(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ca98;
}

// FUN_00550cac
void W_550cac() {

}

// FUN_00551050
void W_551050(u32 a0) {
    u32 t1 = Fn_559a30_2(a0, 0);
    *(u32*)((u32)(t1)) = (u32)g_0082cb0c;
}

// FUN_00551ca8
void W_551ca8(u32 a0) {
    *(u32*)((u32)(a0) + 20) = 0;
    *(u32*)((u32)(a0) + 24) = 0;
    *(u32*)((u32)(a0) + 28) = 0;
}

// FUN_00551d0c
u32 W_551d0c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbc8;
    u32 t1 = Fn_550998_2(a0, (u32)g_0082cbc8);
    return Fn_2024b0_1(t1);
}

// FUN_00551d28
u32 W_551d28(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbc8;
    return Fn_550998_2(a0, (u32)g_0082cbc8);
}

// FUN_005542b8
u32 W_5542b8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbfc;
    return Fn_2024b0_2(a0, (u32)g_0082cbfc);
}

// FUN_005542c8
void W_5542c8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbfc;
}
