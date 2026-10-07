// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_54f908_1(u32);
extern char g_0082cc90[];
extern char g_0082cca4[];
u32 Fn_2024b0_1(u32);
u32 Fn_560360_2(u32, u32);
u32 Fn_56469c_1(u32);
u32 Fn_01b274_1(u32);
u32 Fn_5572d4_2(u32, u32);
u32 Fn_684f28_1(u32);
u32 Fn_684f64_1(u32);
u32 Fn_5577c0_1(u32);
u32 Fn_557e3c_1(u32);
u32 Fn_559fdc_3(u32, u32, u32);
extern char g_0082cecc[];
u32 Fn_2024b0_2(u32, u32);
u32 Fn_513298_1(u32);
u32 Fn_557434_1(u32);
u32 Fn_557590_2(u32, u32);
u32 Fn_55d7d8_4(u32, u32, u32, u32);
u32 Fn_0000ac_1(u32);
u32 Fn_55e338_1(u32);
u32 Fn_55ea18_2(u32, u32);
u32 Fn_55ea04_2(u32, u32);
extern char g_0082cf90[];
extern char g_0082cfb4[];
u32 Fn_561138_1(u32);
u32 Fn_5656dc_1(u32);
u32 Fn_5421f4_2(u32, u32);
u32 Fn_562900_1(u32);
u32 Fn_5667d4_2(u32, u32);
u32 Fn_565778_1(u32);
u32 Fn_5657dc_2(u32, u32);
extern char g_0065c880[];
extern char g_0065c8a0[];
extern char g_0065c8bc[];
extern char g_0065c91c[];
extern char g_0065c920[];
extern char g_009df8d8[];
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_541ee0_2(u32, u32);
u32 Fn_5425a0_1(u32);
u32 Fn_56689c_1(u32);
extern char g_008ab4f8[];
u32 Fn_567ae0_3(u32, u32, u32);
u32 Fn_56a124_1(u32);
extern char g_0082d1ec[];
u32 Fn_56a010_1(u32);
u32 Fn_56b6d0_1(u32);
u32 Fn_1fcd88_1(u32);
void Fn_015648();
extern char g_0069d4a0[];
u32 Fn_000068_4(u32, u32, u32, u32);
u32 Fn_56d88c_1(u32);
extern char g_0082d260[];
u32 Fn_1fddd8_3(u32, u32, u32);
u32 Fn_5a4da0_1(u32);
u32 Fn_020510_3(u32, u32, u32);
u32 Fn_5a579c_1(u32);
u32 Fn_0152e0_3(u32, u32, u32);
u32 Fn_64651c_2(u32, u32);
u32 Fn_36721c_1(u32);
u32 Fn_3778d0_1(u32);

// FUN_0056bfd4
u32 W_56bfd4(u32 a0) {
    u32 t1 = Fn_56b6d0_1(a0);
    return a0;
}

// FUN_0056c024
u32 W_56c024(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        u32 t2 = Fn_1fcd88_1(t1);
        *(u32*)((u32)(a0) + 8) = 0;
    }
    u32 t3 = *(u32*)((u32)(a0) + 12);
    if (t3 != 0) {
        u32 t4 = Fn_1fcd88_1(t3);
        *(u32*)((u32)(a0) + 12) = 0;
    }
    return a0;
}

// FUN_0056c060
void W_56c060() { Fn_015648(); }

// FUN_0056cf40
u32 W_56cf40(u32 a0) {
    u32 t1 = Fn_000068_4((a0 + 12), (u32)g_0069d4a0, 48, 3);
    return a0;
}

// FUN_0056cf68
u32 W_56cf68(u32 a0) {
    u32 t1 = Fn_000068_4((a0 + 12), (u32)g_0069d4a0, 48, 3);
    return a0;
}

// FUN_0056d87c
u32 W_56d87c(u32 a0) {
    u32 t1 = Fn_56d88c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0056e10c
void W_56e10c() {

}

// FUN_0056e578
void W_56e578() {

}

// FUN_0056e57c
u32 W_56e57c() {

    return 1;
}

// FUN_0056e584
u32 W_56e584(u32 a0) {
    u32 t1 = Fn_5a4da0_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082d260;
    *(u8*)((u32)(t1) + 48) = 0;
    *(u32*)((u32)(t1) + 56) = 0;
    *(u32*)((u32)(t1) + 52) = 0;
    u32 t2 = Fn_1fddd8_3((t1 + 60), 4352, (u32)g_0082d260);
    return t1;
}

// FUN_00570884
u32 W_570884(u32 a0, u32 a1, u32 a2) {
    return Fn_020510_3(a1, a2, 0);
}

// FUN_00570894
void W_570894() {

}

// FUN_005711b4
u32 W_5711b4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        u32 t2 = Fn_5a579c_1(t1);
        *(u32*)((u32)(a0) + 8) = 0;
    }
    return a0;
}

// FUN_0057126c
u32 W_57126c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 40);
    if (t1 != 0) {
        u32 t2 = Fn_5a579c_1(t1);
        *(u32*)((u32)(a0) + 40) = 0;
    }
    return a0;
}

// FUN_005712bc
u32 W_5712bc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    if (t1 != 0) {
        u32 t2 = Fn_5a579c_1(t1);
        *(u32*)((u32)(a0) + 4) = 0;
    }
    return a0;
}

// FUN_00571328
u32 W_571328(u32 a0, u32 a1, u32 a2) {
    return Fn_0152e0_3(a1, a2, 0);
}

// FUN_00571338
void W_571338() {

}

// FUN_00571b4c
void W_571b4c(u32 a0, u32 a1, u32 a2) {
    *(u32*)((u32)(((a0 + 5120) + 860))) = a1;
    *(u32*)((u32)(((a0 + 4096) + 1888))) = a2;
}

// FUN_00572028
u32 W_572028(u32 a0) {
    *(u8*)((u32)(a0) + 3) = 0;
    *(u16*)((u32)(a0) + 10) = 0;
    *(u16*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 2) = 0;
    u32 t1 = Fn_64651c_2((a0 + 4), (a0 + 4));
    return a0;
}

// FUN_00572948
u32 W_572948() {

    return 1;
}

// FUN_00572c24
u32 W_572c24(u32 a0) {
    u32 t1 = Fn_36721c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00572ca0
u32 W_572ca0() {

    return 1;
}

// FUN_00572ca8
void W_572ca8() {

}

// FUN_00572cac
u32 W_572cac(u32 a0) {
    u32 t1 = Fn_3778d0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00572d18
u32 W_572d18(u32 a0) {
    u32 t1 = Fn_3778d0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00572e34
u32 W_572e34(u32 a0) {
    u32 t1 = Fn_36721c_1(a0);
    return Fn_2024b0_1(t1);
}
