// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
void Fn_4e0050();
extern char g_00804ab0[];
u32 Fn_2024b0_1(u32);
u32 Fn_5b1548_2(u32, u32);
u32 Fn_551538_1(u32);
u32 Fn_551d28_1(u32);
u32 Fn_5542c8_1(u32);
u32 Fn_4e76c8_1(u32);
u32 Fn_4e7e64_1(u32);
u32 Fn_4e7fa8_1(u32);
extern char g_008bb928[];
extern char g_008bbb1c[];
extern char g_009b0c40[];
u32 Fn_024500_2(u32, u32);
u32 Fn_4f4b30_1(u32);
u32 Fn_024568_1(u32);
u32 Fn_4f652c_2(u32, u32);
extern char g_009b0c58[];
extern char g_008aae00[];
extern char g_008aae10[];
u32 Fn_4f69bc_1(u32);
u32 Fn_4f6984_1(u32);
u32 Fn_4f7320_1(u32);
u32 Fn_4f7500_1(u32);
u32 Fn_4fae50_1(u32);
extern char g_0082bf60[];
u32 Fn_4fa9c0_1(u32);
extern char g_008ab9ec[];

// FUN_004dffa0
u32 W_4dffa0() {

    return 1;
}

// FUN_004dffa8
u32 W_4dffa8() {

    return 1;
}

// FUN_004dffb0
u32 W_4dffb0() {

    return 1;
}

// FUN_004dffb8
u32 W_4dffb8() {

    return 1;
}

// FUN_004dffc0
u32 W_4dffc0() {

    return 1;
}

// FUN_004e00a8
void W_4e00a8() { Fn_4e0050(); }

// FUN_004e0110
u32 W_4e0110() {

    return 1;
}

// FUN_004e0118
u32 W_4e0118() {

    return 1;
}

// FUN_004e0120
u32 W_4e0120() {

    return 1;
}

// FUN_004e017c
u32 W_4e017c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_00804ab0;
    u32 t1 = Fn_5b1548_2(a0, (u32)g_00804ab0);
    return Fn_2024b0_1(t1);
}
