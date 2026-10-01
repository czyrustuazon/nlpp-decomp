// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_0099d000[];
extern char g_008aa794[];
u32 Fn_5be194_2(u32, u32);
extern char g_008bfac8[];
u32 Fn_2024b0_1(u32);
u32 Fn_4e019c_3(u32, u32, u32);
extern char g_008aa7a4[];
u32 Fn_029ed4_2(u32, u32);
extern char g_0082e324[];
extern char g_008bfacc[];
u32 Fn_5f0ef8_1(u32);
extern char g_008a8850[];
u32 Fn_4f687c_1(u32);
extern char g_008bfac0[];
u32 Fn_5bbb9c_2(u32, u32);
u32 Fn_4e019c_1(u32);
u32 Fn_5c207c_2(u32, u32);
u32 Fn_5c22f0_1(u32);
extern char g_008a833c[];
u32 Fn_5eab70_1(u32);
extern char g_0082e498[];
u32 Fn_5d5ee0_2(u32, u32);
extern char g_0082e518[];
u32 Fn_4e0128_1(u32);
extern char g_0082e574[];
u32 Fn_4df510_1(u32);
extern char g_0082e620[];
u32 Fn_5c92d0_1(u32);
extern char g_0082e634[];
u32 Fn_5c80f0_1(u32);
extern char g_0082e690[];
extern char g_0089a330[];
u32 Fn_345684_4(u32, u32, u32, u32);
u32 Fn_3456cc_2(u32, u32);
extern char g_008c2420[];
u32 Fn_4b052c_2(u32, u32);
u32 Fn_01026c_3(u32, u32, u32);
u32 Fn_262d04_2(u32, u32);
u32 Fn_264468_3(u32, u32, u32);
extern char g_008c75f4[];
u32 Fn_0317dc_3(u32, u32, u32);
u32 Fn_3cad8c_2(u32, u32);
u32 Fn_4d7058_1(u32);
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_5db608_1(u32);
u32 Fn_6311d8_2(u32, u32);
u32 Fn_5c0d4c_3(u32, u32, u32);
extern char g_0089a430[];
u32 Fn_4a07b8_1(u32);
u32 Fn_4d7fdc_1(u32);
u32 Fn_3a2498_4(u32, u32, u32, u32);
u32 Fn_4d8088_1(u32);
u32 Fn_4d80c0_1(u32);
u32 Fn_4d45a8_1(u32);
u32 Fn_0584d0_2(u32, u32);
u32 Fn_3a2554_1(u32);
u32 Fn_4d821c_1(u32);

// FUN_005bea08
void W_5bea08() {

}

// FUN_005beba8
u32 W_5beba8() {

    return 1;
}

// FUN_005bebb0
void W_5bebb0(u32 a0) {
    *(u8*)((u32)(a0) + 152) = 0;
}

// FUN_005bebbc
u32 W_5bebbc() {

    return (u32)g_0099d000;
}

// FUN_005bed38
u32 W_5bed38(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008aa794));
    if (t1 != 0) {
        u32 t2 = *(u32*)((u32)(a0) + 148);
        return Fn_5be194_2(t2, 1);
    }
}

// FUN_005bf00c
u32 W_5bf00c() {

    return 1;
}

// FUN_005bf128
u32 W_5bf128(u32 a0) {
    *(u32*)((u32)((u32)g_008bfac8)) = 0;
    u32 t1 = Fn_4e019c_3(a0, 0, (u32)g_008bfac8);
    return Fn_2024b0_1(t1);
}

// FUN_005c0f24
void W_5c0f24() {
    u32 t1 = *(u32*)((u32)((u32)g_008aa7a4) + 16);
    if (t1 != 0) {
        u32 t2 = *(u32*)((u32)(t1));
        if (t2 != 0) {
            u32 t3 = Fn_029ed4_2(t2, 0);
            *(u32*)((u32)(t1)) = 0;
        }
        u32 t4 = Fn_2024b0_1(t1);
        *(u32*)((u32)((u32)g_008aa7a4) + 16) = 0;
    }
}

// FUN_005c1378
void W_5c1378(u32 a0) {
    u32 t1 = Fn_5f0ef8_1(a0);
    *(u32*)((u32)((u32)g_008bfacc)) = t1;
    *(u32*)((u32)(t1)) = (u32)g_0082e324;
}

// FUN_005c1474
u32 W_5c1474() {
    return Fn_4f687c_1((u32)g_008a8850);
}

// FUN_005c1498
u32 W_5c1498() {
    u32 t1 = *(u16*)((u32)((u32)g_008a8850));
    return t1;
}

// FUN_005c14dc
u32 W_5c14dc(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfac0));
    if (t1 != 0) {
        u32 t2 = Fn_5bbb9c_2(t1, a0);
        *(u32*)((u32)(a0) + 68) = t2;
    }
    return 1;
}

// FUN_005c1f7c
u32 W_5c1f7c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005c23b4
u32 W_5c23b4(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u8*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 9) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    u32 t1 = Fn_5c207c_2(a0, 0);
    return a0;
}

// FUN_005c23e8
u32 W_5c23e8(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u8*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 9) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    u32 t1 = Fn_5c207c_2(a0, 0);
    return a0;
}

// FUN_005c241c
u32 W_5c241c(u32 a0) {
    u32 t1 = Fn_5c22f0_1(a0);
    return a0;
}

// FUN_005c2430
u32 W_5c2430(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfac0));
    if (t1 != 0) {
        u32 t2 = Fn_5bbb9c_2(t1, a0);
        *(u32*)((u32)((u32)g_008a833c) + 8) = t2;
    }
    return 1;
}

// FUN_005c26c0
u32 W_5c26c0() {

    return 1;
}

// FUN_005c27c0
u32 W_5c27c0() {

    return 1;
}

// FUN_005c2e20
void W_5c2e20() {

}

// FUN_005c2e24
void W_5c2e24() {

}

// FUN_005c2e28
void W_5c2e28() {

}

// FUN_005c2fb4
u32 W_5c2fb4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        return Fn_5eab70_1(t1);
    }
}

// FUN_005c3084
void W_5c3084() {

}

// FUN_005c330c
void W_5c330c() {

}

// FUN_005c33a4
void W_5c33a4() {

}

// FUN_005c35b0
void W_5c35b0() {

}

// FUN_005c3a5c
void W_5c3a5c() {

}

// FUN_005c3a60
u32 W_5c3a60() {

    return 0;
}

// FUN_005c3b88
void W_5c3b88() {

}

// FUN_005c3b8c
void W_5c3b8c() {

}

// FUN_005c4a54
void W_5c4a54() {

}

// FUN_005c527c
u32 W_5c527c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082e498;
    return Fn_5d5ee0_2(a0, (u32)g_0082e498);
}

// FUN_005c7910
u32 W_5c7910() {

    return 0;
}

// FUN_005c7918
void W_5c7918() {

}

// FUN_005c7da8
void W_5c7da8() {

}

// FUN_005c80d0
void W_5c80d0() {

}

// FUN_005c80f0
void W_5c80f0(u32 a0) {
    u32 t1 = Fn_4e0128_1(a0);
    *(u32*)((u32)(t1) + 68) = 0;
    *(u32*)((u32)(t1)) = (u32)g_0082e518;
}

// FUN_005c8110
u32 W_5c8110(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005c8124
void W_5c8124() {

}

// FUN_005c8154
void W_5c8154(u32 a0) {
    u32 t1 = Fn_4df510_1(a0);
    *(u32*)((u32)(t1) + 96) = 0;
    *(u32*)((u32)(t1)) = (u32)g_0082e574;
}

// FUN_005c8174
u32 W_5c8174(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005c93dc
void W_5c93dc(u32 a0) {
    u32 t1 = Fn_5c92d0_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082e620;
}

// FUN_005c967c
void W_5c967c(u32 a0) {
    u32 t1 = Fn_5c80f0_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082e634;
}

// FUN_005c9694
u32 W_5c9694(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005c96b0
u32 W_5c96b0() {

    return 0;
}

// FUN_005c96b8
u32 W_5c96b8() {

    return 0;
}

// FUN_005c9714
u32 W_5c9714() {

    return 0;
}

// FUN_005c980c
u32 W_5c980c() {

    return 0;
}

// FUN_005c9814
u32 W_5c9814() {

    return 0;
}

// FUN_005c981c
u32 W_5c981c() {

    return 0;
}

// FUN_005c9824
u32 W_5c9824() {

    return 0;
}

// FUN_005c982c
u32 W_5c982c() {

    return 0;
}

// FUN_005c9834
u32 W_5c9834() {

    return 0;
}

// FUN_005c983c
u32 W_5c983c() {

    return 0;
}

// FUN_005c9844
u32 W_5c9844() {

    return 0;
}

// FUN_005c984c
u32 W_5c984c() {

    return 0;
}

// FUN_005c9854
void W_5c9854(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = (u32)g_0082e690;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
}

// FUN_005ca780
u32 W_5ca780(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 128);
    if (t1 != 0) {
        return Fn_345684_4(t1, a0, a1, a2);
    }
}

// FUN_005ca7ac
u32 W_5ca7ac(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 128);
    if (t1 != 0) {
        return Fn_3456cc_2(t1, a0);
    }
}

// FUN_005caf88
u32 W_5caf88() {

    return (u32)g_008c2420;
}

// FUN_005cb0bc
u32 W_5cb0bc(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 156);
    if (t1 != 0) {
        return Fn_4b052c_2(t1, a0);
    }
}

// FUN_005cb1c8
u32 W_5cb1c8(u32 a0) {
    if (a0 != 0) {
        return Fn_01026c_3((u32)g_008c2420, a0, 32);
    }
}

// FUN_005cb980
u32 W_5cb980(u32 a0, u32 a1) {
    *(u8*)((u32)(a0)) = 0;
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 88);
    if (t1 != 0) {
        u32 t2 = Fn_262d04_2(t1, a1);
        return Fn_264468_3(t2, a0, a1);
    }
}

// FUN_005cbc1c
void W_5cbc1c(u32 a0) {
    u32 t1 = *(u8*)((u32)((u32)g_008c75f4));
    *(u8*)((u32)(a0)) = t1;
    u32 t2 = Fn_0317dc_3((a0 + 1), ((u32)g_008c75f4 + 1), 128);
    u32 t3 = *(u32*)((u32)((u32)g_008c75f4) + 132);
    *(u32*)((u32)(a0) + 132) = t3;
}

// FUN_005cbc50
u32 W_5cbc50(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 116);
    if (t1 != 0) {
        return Fn_3cad8c_2(t1, a0);
    }
}

// FUN_005cbc70
u32 W_5cbc70() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 72);
    if (t1 != 0) {
        return Fn_4d7058_1(t1);
    }
}

// FUN_005cbe00
void W_5cbe00(u32 a0) {
    u32 t1 = Fn_1fddd8_2((u32)g_008c75f4, 136);
    u32 t2 = *(u8*)((u32)(a0));
    *(u8*)((u32)((u32)g_008c75f4)) = t2;
    u32 t3 = Fn_0317dc_3(((u32)g_008c75f4 + 1), (a0 + 1), 128);
    u32 t4 = *(u32*)((u32)(a0) + 132);
    *(u32*)((u32)((u32)g_008c75f4) + 132) = t4;
}

// FUN_005ccfc0
u32 W_5ccfc0() {
    return Fn_5db608_1(200);
}

// FUN_005cd50c
u32 W_5cd50c() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 192);
    return t1;
}

// FUN_005cd9b8
u32 W_5cd9b8() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 68);
    if (t1 != 0) {
        return Fn_6311d8_2(t1, 0);
    }
}

// FUN_005cdca8
void W_5cdca8(u32 a0) {
    *(u32*)((u32)((u32)g_0089a330) + 192) = a0;
}

// FUN_005cf000
u32 W_5cf000(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 128);
    return Fn_5c0d4c_3(266u, t1, 1);
}

// FUN_005cf2ec
void W_5cf2ec(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 184);
    *(u32*)((u32)(a0)) = t1;
}

// FUN_005cf300
void W_5cf300(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 84);
    if (t1 != 0) {
        u32 t2 = *(u16*)((u32)(t1) + 8);
        *(u8*)((u32)(a0)) = t2;
        u32 t3 = *(u32*)((u32)((u32)g_0089a330) + 84);
        u32 t4 = *(u16*)((u32)(t3) + 10);
        *(u8*)((u32)(a0) + 1) = t4;
        u32 t5 = *(u32*)((u32)((u32)g_0089a330) + 84);
        u32 t6 = *(u16*)((u32)(t5) + 12);
        *(u8*)((u32)(a0) + 2) = t6;
        u32 t7 = *(u32*)((u32)((u32)g_0089a330) + 84);
        u32 t8 = *(u16*)((u32)(t7) + 14);
        *(u8*)((u32)(a0) + 3) = t8;
    }
}

// FUN_005cf664
u32 W_5cf664() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 68);
    if (t1 != 0) {
        return Fn_6311d8_2(t1, 1);
    }
}

// FUN_005cf85c
void W_5cf85c(u32 a0) {
    *(u32*)((u32)((u32)g_0089a330) + 184) = a0;
}

// FUN_005d053c
u32 W_5d053c() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a430) + 16);
    if (t1 != 0) {
        return Fn_4a07b8_1(t1);
    }
}

// FUN_005d0918
void W_5d0918(u32 a0) {
    u32 t1 = *(u16*)((u32)((u32)g_0089a330) + 28);
    *(u16*)((u32)(a0)) = t1;
}

// FUN_005d0a98
void W_5d0a98(u32 a0, u32 a1) {
    *(u8*)((u32)((u32)g_0089a330) + 11) = a0;
    *(u8*)((u32)((u32)g_0089a330) + 12) = a1;
}

// FUN_005d0aac
void W_5d0aac(u32 a0) {
    *(u16*)((u32)((u32)g_0089a330) + 28) = a0;
}

// FUN_005d0abc
void W_5d0abc(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 84);
    if (t1 != 0) {
        u32 t2 = *(u8*)((u32)(a0));
        *(u16*)((u32)(t1)) = t2;
        u32 t3 = *(u8*)((u32)(a0) + 1);
        *(u16*)((u32)(t1) + 2) = t3;
        u32 t4 = *(u8*)((u32)(a0) + 2);
        *(u16*)((u32)(t1) + 4) = t4;
        u32 t5 = *(u8*)((u32)(a0) + 3);
        *(u16*)((u32)(t1) + 6) = t5;
    }
}

// FUN_005d0f68
void W_5d0f68(u32 a0) {
    u32 t1 = *(u8*)((u32)((u32)g_0089a330) + 13);
    *(u8*)((u32)(a0)) = t1;
}

// FUN_005d1498
void W_5d1498(u32 a0) {
    *(u8*)((u32)(a0)) = 1;
}

// FUN_005d1554
u32 W_5d1554() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 72);
    if (t1 != 0) {
        return Fn_4d7fdc_1(t1);
    }
}

// FUN_005d165c
void W_5d165c(u32 a0) {
    *(u8*)((u32)((u32)g_0089a330) + 13) = a0;
}

// FUN_005d18ac
u32 W_5d18ac() {
    return Fn_5c0d4c_3((1 + 25088), 18, 1);
}

// FUN_005d18bc
u32 W_5d18bc(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 160);
    if (t1 != 0) {
        return Fn_3a2498_4(t1, a0, a1, a0);
    }
}

// FUN_005d1a64
u32 W_5d1a64() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a430) + 16);
    return t1;
}

// FUN_005d1a74
u32 W_5d1a74() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 72);
    if (t1 != 0) {
        return Fn_4d8088_1(t1);
    }
}

// FUN_005d1a90
u32 W_5d1a90() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 72);
    if (t1 != 0) {
        return Fn_4d80c0_1(t1);
    }
}

// FUN_005d1b14
u32 W_5d1b14() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 72);
    if (t1 != 0) {
        return Fn_4d45a8_1(t1);
    }
}

// FUN_005d1bf8
void W_5d1bf8(u32 a0) {
    *(u32*)((u32)((u32)g_0089a430) + 16) = a0;
}

// FUN_005d20ac
void W_5d20ac(u32 a0) {
    *(u8*)((u32)((u32)g_0089a330)) = a0;
}

// FUN_005d2760
u32 W_5d2760(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 132);
    if (t1 != 0) {
        return Fn_0584d0_2(t1, a0);
    }
}

// FUN_005d27d8
u32 W_5d27d8() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 160);
    if (t1 != 0) {
        return Fn_3a2554_1(t1);
    }
}

// FUN_005d282c
void W_5d282c(u32 a0) {
    *(u16*)((u32)((u32)g_0089a330) + 32) = a0;
}

// FUN_005d29b0
void W_5d29b0(u32 a0) {
    *(u16*)((u32)((u32)g_0089a330) + 30) = a0;
}

// FUN_005d2b14
u32 W_5d2b14() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 72);
    if (t1 != 0) {
        return Fn_4d821c_1(t1);
    }
}

// FUN_005d3804
void W_5d3804(u32 a0) {
    *(u8*)((u32)((u32)g_0089a330) + 10) = a0;
}
