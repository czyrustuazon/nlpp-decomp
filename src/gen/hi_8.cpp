// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_029ed4_2(u32, u32);
u32 Fn_2024b0_1(u32);
u32 Fn_610840_1(u32);
u32 Fn_4e019c_1(u32);
u32 Fn_0317dc_3(u32, u32, u32);
u32 Fn_646500_2(u32, u32);
u32 Fn_616f38_1(u32);
extern char g_008bfafc[];
u32 Fn_611580_3(u32, u32, u32);
extern char g_008a8570[];
u32 Fn_56c24c_4(u32, u32, u32, u32);
extern char g_008a8534[];
u32 Fn_61aa74_1(u32);
void Fn_015648();
extern char g_00804b48[];
u32 Fn_576dc8_1(u32);
extern char g_009d96e8[];
extern char g_008bb5b8[];
extern char g_009d7ab8[];
u32 Fn_56e744_2(u32, u32);
u32 Fn_56e7b4_2(u32, u32);
extern char g_009d7ac8[];
u32 Fn_58b9ac_1(u32);
extern char g_008b8724[];
extern char g_009b74a8[];
void Fn_624da4(void*);
u32 Fn_630dc0_1(u32);
u32 Fn_6411e4_2(u32, u32);
u32 Fn_6251a8_1(u32);
u32 Fn_62532c_1(u32);
u32 Fn_0151c8_1(u32);
void Fn_626c50();
u32 Fn_2c5c08_1(u32);
u32 Fn_168d84_1(u32);
u32 Fn_168f5c_1(u32);
u32 Fn_13f0c8_2(u32, u32);
u32 Fn_625cdc_1(u32);
u32 Fn_629048_1(u32);
extern char g_008bfa54[];
u32 Fn_6304b0_1(u32);
u32 Fn_62f87c_1(u32);

// FUN_0060dea0
u32 W_60dea0() {

    return 1;
}

// FUN_0060dea8
u32 W_60dea8() {

    return 1;
}

// FUN_0060df6c
u32 W_60df6c() {

    return 1;
}

// FUN_0060e628
u32 W_60e628(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0));
    if (t1 != 0) {
        u32 t2 = Fn_029ed4_2(t1, 0);
        *(u32*)((u32)(a0)) = 0;
    }
    return a0;
}

// FUN_0060ee58
void W_60ee58() {

}

// FUN_0060ee5c
u32 W_60ee5c() {

    return 1;
}

// FUN_00610830
u32 W_610830(u32 a0) {
    u32 t1 = Fn_610840_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00610b78
u32 W_610b78() {

    return 256;
}

// FUN_006111e4
u32 W_6111e4() {

    return 1;
}

// FUN_00611390
u32 W_611390() {

    return 1;
}

// FUN_006113e0
u32 W_6113e0() {

    return 1;
}

// FUN_00611570
u32 W_611570(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0061381c
u32 W_61381c() {

    return 1;
}

// FUN_0061450c
u32 W_61450c(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0) + 292);
    if (t1 != 0) {
        u32 t2 = Fn_646500_2(t1, a1);
        u32 t3 = *(u32*)((u32)(a0) + 292);
        return Fn_0317dc_3(t3, a1, 4);
    }
}

// FUN_006145f8
u32 W_6145f8() {

    return 0;
}

// FUN_006154e8
void W_6154e8(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 296) = a1;
}

// FUN_00616f28
u32 W_616f28(u32 a0) {
    u32 t1 = Fn_616f38_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00617954
u32 W_617954() {

    return 1;
}

// FUN_00617968
u32 W_617968() {

    return 0;
}

// FUN_0061805c
u32 W_61805c(u32 a0) {
    *(u32*)((u32)((u32)g_008bfafc)) = 0;
    u32 t1 = Fn_611580_3(a0, 0, (u32)g_008bfafc);
    return Fn_2024b0_1(t1);
}

// FUN_00618140
u32 W_618140(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    return Fn_56c24c_4(a0, t1, (a1 + 4), (u32)g_008a8570);
}

// FUN_00618158
u32 W_618158(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    return Fn_56c24c_4(a0, t1, (a1 + 4), (u32)g_008a8534);
}

// FUN_0061ade0
u32 W_61ade0(u32 a0) {
    u32 t1 = Fn_61aa74_1(a0);
    return a0;
}

// FUN_0061ae14
void W_61ae14(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    if (t1 != 0) {
        u32 t2 = Fn_61aa74_1(t1);
        u32 t3 = *(u32*)((u32)(a0) + 4);
        if (t3 != 0) {
            u32 t4 = Fn_61aa74_1(t3);
            u32 t5 = Fn_2024b0_1(t3);
            *(u32*)((u32)(a0) + 4) = 0;
        }
    }
}

// FUN_0061ba34
void W_61ba34() { Fn_015648(); }

// FUN_0061c6f8
void W_61c6f8() {

}

// FUN_0061e090
void W_61e090(u32 a0) {
    u32 t1 = Fn_576dc8_1(a0);
    *(u32*)((u32)(t1) + 8) = 0;
    *(u32*)((u32)(t1)) = (u32)g_00804b48;
    *(u32*)((u32)(t1) + 48) = 0;
}

// FUN_0061e324
u32 W_61e324() {

    return (u32)g_009d96e8;
}

// FUN_0061e56c
u32 W_61e56c(u32 a0, u32 a1) {
    u32 t1 = Fn_56e744_2((u32)g_009d7ab8, a1);
    u32 t2 = *(u16*)((u32)((u32)g_008bb5b8) + 2);
    *(u16*)((u32)(a0)) = t2;
    u32 t3 = *(u16*)((u32)((u32)g_008bb5b8) + 4);
    *(u16*)((u32)(a1)) = t3;
    return Fn_56e7b4_2((u32)g_009d7ab8, t2);
}

// FUN_0061e6a0
u32 W_61e6a0(u32 a0, u32 a1) {
    u32 t1 = Fn_56e744_2((u32)g_009d7ac8, a1);
    u32 t2 = *(u16*)((u32)((u32)g_008bb5b8) + 6);
    *(u16*)((u32)(a0)) = t2;
    u32 t3 = *(u16*)((u32)((u32)g_008bb5b8) + 8);
    *(u16*)((u32)(a1)) = t3;
    return Fn_56e7b4_2((u32)g_009d7ac8, t2);
}

// FUN_0061efc8
u32 W_61efc8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 12);
    u32 t2 = Fn_58b9ac_1(t1);
    return 1;
}

// FUN_00620810
u32 W_620810() {
    u32 t1 = *(u8*)((u32)((u32)g_008b8724) + 1);
    return t1;
}

// FUN_00622434
u32 W_622434() {

    return (u32)g_009b74a8;
}

// FUN_00623580
int W_623580(void* a) { Fn_624da4(a); return 1; }

// FUN_00624da4
u32 W_624da4(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    return 1;
}

// FUN_00624db8
u32 W_624db8(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    return 1;
}

// FUN_00624dcc
u32 W_624dcc(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    return 1;
}

// FUN_00624ff8
void W_624ff8(u32 a0, u32 a1, u32 a2) {
    *(u32*)((u32)(a1)) = 0;
    u32 t1 = *(u8*)((u32)(a0) + 68);
    *(u8*)((u32)(a2)) = t1;
}

// FUN_0062500c
void W_62500c(u32 a0, u32 a1, u32 a2) {
    *(u32*)((u32)(a1)) = 15;
    u32 t1 = *(u8*)((u32)(a0) + 70);
    *(u8*)((u32)(a2)) = t1;
}

// FUN_00625238
u32 W_625238(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 72);
    if (t1 != 0) {
        u32 t2 = *(u32*)((u32)(t1) + 368);
        return Fn_630dc0_1(t2);
    }
}

// FUN_0062582c
u32 W_62582c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        return Fn_6411e4_2(t1, 0);
    }
}

// FUN_006259b0
u32 W_6259b0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    if (t1 != 0) {
        return Fn_6251a8_1(t1);
    }
}

// FUN_006259cc
u32 W_6259cc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    if (t1 != 0) {
        return Fn_62532c_1(t1);
    }
}

// FUN_00625ad8
u32 W_625ad8() {
    return Fn_0151c8_1(356515845u);
}

// FUN_00626778
u32 W_626778() {

    return 0;
}

// FUN_00626a98
u32 W_626a98() {

    return 0;
}

// FUN_00626aa0
u32 W_626aa0() {

    return 3;
}

// FUN_00626c64
void W_626c64() { Fn_626c50(); }

// FUN_006276bc
u32 W_6276bc() {

    return 1;
}

// FUN_006276c4
u32 W_6276c4() {

    return 4;
}

// FUN_00627770
u32 W_627770() {

    return 1;
}

// FUN_00627778
u32 W_627778() {

    return 7;
}

// FUN_00627780
u32 W_627780() {

    return 1;
}

// FUN_00627788
u32 W_627788() {

    return 4;
}

// FUN_00627790
u32 W_627790() {

    return 3;
}

// FUN_006277b8
u32 W_6277b8() {

    return 10;
}

// FUN_006277d4
u32 W_6277d4() {

    return 0;
}

// FUN_006277dc
u32 W_6277dc() {

    return 0;
}

// FUN_006277e4
u32 W_6277e4() {

    return 1;
}

// FUN_006277ec
u32 W_6277ec() {

    return 4;
}

// FUN_006277f4
u32 W_6277f4() {

    return 1;
}

// FUN_006277fc
u32 W_6277fc() {

    return 5;
}

// FUN_00627804
u32 W_627804() {

    return 4;
}

// FUN_0062780c
u32 W_62780c() {

    return 6;
}

// FUN_00627814
u32 W_627814() {

    return 1;
}

// FUN_0062781c
u32 W_62781c() {

    return 4;
}

// FUN_00628380
u32 W_628380() {

    return 0;
}

// FUN_006289a0
u32 W_6289a0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 148);
    u32 t2 = Fn_2c5c08_1((t1 + 12));
    u32 t3 = *(u32*)((u32)(t2) + 20);
    return t3;
}

// FUN_00628a34
u32 W_628a34(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 148);
    u32 t2 = Fn_2c5c08_1((t1 + 12));
    u32 t3 = *(u32*)((u32)(t2) + 28);
    return t3;
}

// FUN_00628a4c
u32 W_628a4c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 148);
    u32 t2 = Fn_2c5c08_1((t1 + 12));
    u32 t3 = *(u16*)((u32)(t2) + 2);
    return t3;
}

// FUN_006290fc
u32 W_6290fc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 116);
    if (t1 != 0) {
        return Fn_168d84_1(t1);
    }
}

// FUN_00629218
u32 W_629218(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 116);
    if (t1 != 0) {
        return Fn_168f5c_1(t1);
    }
}

// FUN_006293ec
u32 W_6293ec(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 240);
    if (t1 != 0) {
        u32 t2 = Fn_625cdc_1(t1);
        if (t2 == 0) {
            u32 t3 = *(u32*)((u32)(a0) + 240);
            return Fn_13f0c8_2(t3, 0);
        }
    }
}

// FUN_0062d444
void W_62d444(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 t1 = *(u8*)((u32)(a0) + 12);
    *(u8*)((u32)(a1)) = t1;
    u32 t2 = *(u8*)((u32)(a0) + 13);
    *(u8*)((u32)(a2)) = t2;
    u32 t3 = *(u8*)((u32)(a0) + 14);
    *(u8*)((u32)(a3)) = t3;
}

// FUN_0062d9e8
u32 W_62d9e8() {

    return 0;
}

// FUN_0062d9f0
u32 W_62d9f0() {

    return 30;
}

// FUN_0062d9f8
u32 W_62d9f8() {

    return 36;
}

// FUN_0062da44
u32 W_62da44() {

    return 60;
}

// FUN_0062da70
u32 W_62da70() {

    return 71;
}

// FUN_0062e2cc
u32 W_62e2cc() {

    return 64;
}

// FUN_0062e2d4
u32 W_62e2d4() {

    return 20;
}

// FUN_0062e2dc
u32 W_62e2dc() {

    return 513u;
}

// FUN_0062e518
u32 W_62e518() {

    return 468;
}

// FUN_0062eb98
u32 W_62eb98(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 92);
    return t1;
}

// FUN_0062eba0
u32 W_62eba0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 96);
    return t1;
}

// FUN_0062eba8
u32 W_62eba8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 100);
    return t1;
}

// FUN_0062ebb0
u32 W_62ebb0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 92);
    if (t1 != 0) {
        return Fn_629048_1(t1);
    }
}

// FUN_0062ebc4
u32 W_62ebc4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    return t1;
}

// FUN_0062ebcc
u32 W_62ebcc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 112);
    return t1;
}

// FUN_0062ebd4
u32 W_62ebd4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 116);
    return t1;
}

// FUN_0062ebdc
u32 W_62ebdc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 108);
    if (t1 != 0) {
        return Fn_629048_1(t1);
    }
}

// FUN_0062ec44
u32 W_62ec44() {
    u32 t1 = *(u32*)((u32)((u32)g_008bfa54));
    u32 t2 = *(u32*)((u32)(t1) + 92);
    return t2;
}

// FUN_0062f074
u32 W_62f074(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 96);
    if (t1 != 0) {
        u32 t2 = *(u32*)((u32)(t1) + 196);
        return Fn_6304b0_1(t2);
    }
}

// FUN_0062f0a8
u32 W_62f0a8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 104);
    if (t1 != 0) {
        return Fn_62f87c_1(t1);
    }
}

// FUN_0062f478
u32 W_62f478() {

    return 0;
}

// FUN_0062f558
u32 W_62f558(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 124);
    return t1;
}

// FUN_0062f86c
u32 W_62f86c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 136);
    return t1;
}

// FUN_0062f874
u32 W_62f874() {

    return 0;
}

// FUN_0062f8a0
u32 W_62f8a0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 216);
    return t1;
}

// FUN_0062fb1c
u32 W_62fb1c(u32 a0) {
    u32 t1 = *(u16*)((u32)((a0 + 256)) + 34);
    return t1;
}
