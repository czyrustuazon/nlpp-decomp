// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_01a2b8_1(u32);
u32 Fn_02b1e0_2(u32, u32);
u32 Fn_59b768_1(u32);
u32 Fn_00ff74_3(u32, u32, u32);
extern char g_009a42a8[];
extern char g_0069d10c[];
u32 Fn_000068_4(u32, u32, u32, u32);
u32 Fn_02a080_1(u32);
extern char g_006a031c[];
u32 Fn_202758_2(u32, u32);
u32 Fn_2024b0_1(u32);
u32 Fn_5a055c_1(u32);
void Fn_59ab78();
extern char g_006a1444[];
extern char g_0082da04[];
extern char g_008b86e0[];
u32 Fn_01c5fc_1(u32);
extern char g_009b5194[];
u32 Fn_025398_2(u32, u32);
u32 Fn_5a3aa8_1(u32);
u32 Fn_5a3acc_1(u32);
extern char g_009a4884[];
u32 Fn_5aea90_1(u32);
extern char g_0082db4c[];
u32 Fn_5aee5c_1(u32);
u32 Fn_5aeef0_1(u32);
u32 Fn_5a579c_1(u32);
u32 Fn_64156c_2(u32, u32);
u32 Fn_5a8b28_1(u32);
extern char g_0082dbac[];
extern char g_0082dbe0[];
u32 Fn_5a59ac_2(u32, u32);
u32 Fn_5ac184_1(u32);
u32 Fn_5a59ac_1(u32);
extern char g_0082dcd0[];
u32 Fn_5acb24_1(u32);
u32 Fn_5acbec_1(u32);
extern char g_0011564c[];
extern char g_0082dd68[];
u32 Fn_5ad5f0_1(u32);
u32 Fn_5b11ac_1(u32);
extern char g_009a420c[];
u32 Fn_5b12e8_2(u32, u32);
u32 Fn_58e210_1(u32);
u32 Fn_58ebf8_1(u32);
extern char g_006b686c[];
u32 Fn_1fcd88_1(u32);
extern char g_008b86c4[];
u32 Fn_667d48_1(u32);
extern char g_0082e180[];
u32 Fn_4e019c_2(u32, u32);
extern char g_008bfac4[];
u32 Fn_5bcb14_1(u32);
u32 Fn_4e019c_3(u32, u32, u32);
u32 Fn_4e019c_1(u32);
void Fn_61d5c0(char*);
u32 Fn_61d3a8_1(u32);
u32 Fn_5be7c0_1(u32);

// FUN_0059bd54
u32 W_59bd54(u32 a0) {
    u32 t1 = Fn_01a2b8_1(a0);
    return a0;
}

// FUN_0059c574
void W_59c574(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0) + 12) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 28) = t2;
    u32 t3 = *(u32*)((u32)(a1) + 8);
    *(u32*)((u32)(a0) + 44) = t3;
    u32 t4 = *(u32*)((u32)(a1) + 12);
    *(u32*)((u32)(a0) + 60) = t4;
}

// FUN_0059caa8
u32 W_59caa8(u32 a0) {
    u32 t1 = Fn_02b1e0_2(a0, a0);
    return a0;
}

// FUN_0059cac0
u32 W_59cac0(u32 a0) {
    u32 t1 = Fn_59b768_1(a0);
    return a0;
}

// FUN_0059cfb4
void W_59cfb4(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 4) = t2;
    u32 t3 = *(u32*)((u32)(a1) + 8);
    *(u32*)((u32)(a0) + 8) = t3;
    u32 t4 = *(u32*)((u32)(a1) + 12);
    *(u32*)((u32)(a0) + 12) = t4;
}

// FUN_0059d208
u32 W_59d208(u32 a0, u32 a1) {
    u32 t1 = Fn_00ff74_3(a0, a0, a1);
    return a0;
}

// FUN_0059d2dc
void W_59d2dc(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0)) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 16) = t2;
    u32 t3 = *(u32*)((u32)(a1) + 8);
    *(u32*)((u32)(a0) + 32) = t3;
}

// FUN_0059d2f8
void W_59d2f8(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0) + 4) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 20) = t2;
    u32 t3 = *(u32*)((u32)(a1) + 8);
    *(u32*)((u32)(a0) + 36) = t3;
}

// FUN_0059d314
void W_59d314(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0) + 8) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 24) = t2;
    u32 t3 = *(u32*)((u32)(a1) + 8);
    *(u32*)((u32)(a0) + 40) = t3;
}

// FUN_0059d378
void W_59d378(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a1));
    *(u32*)((u32)(a0) + 12) = t1;
    u32 t2 = *(u32*)((u32)(a1) + 4);
    *(u32*)((u32)(a0) + 28) = t2;
    u32 t3 = *(u32*)((u32)(a1) + 8);
    *(u32*)((u32)(a0) + 44) = t3;
}

// FUN_0059d4a4
void W_59d4a4() {
    *(u32*)((u32)((u32)g_009a42a8) + 32) = 0;
}

// FUN_005a031c
u32 W_5a031c(u32 a0) {
    u32 t1 = Fn_000068_4((a0 + 436), (u32)g_0069d10c, 24, 3);
    u32 t2 = Fn_000068_4((a0 + 188), (u32)g_0069d10c, 24, 3);
    u32 t3 = Fn_02a080_1((a0 + 4));
    return (t3 - 4);
}

// FUN_005a03e0
u32 W_5a03e0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 16);
    if (t1 != 0) {
        u32 t2 = Fn_202758_2(t1, (u32)g_006a031c);
        *(u32*)((u32)(a0) + 16) = 0;
    }
    u32 t3 = Fn_02a080_1((a0 + 8));
    return (t3 - 8);
}

// FUN_005a05cc
u32 W_5a05cc(u32 a0) {
    u32 t1 = Fn_5a055c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005a06f4
u32 W_5a06f4(u32 a0) {
    u32 t1 = Fn_5a055c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005a0d1c
void W_5a0d1c() { Fn_59ab78(); }

// FUN_005a0f58
void W_5a0f58(u32 a0, u32 a1) {
    *(u32*)((u32)(a0)) = a1;
    *(u32*)((u32)(a0) + 4) = a1;
}

// FUN_005a1c58
u32 W_5a1c58(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082da04;
    u32 t1 = Fn_000068_4((a0 + 28), (u32)g_006a1444, 28, 2);
    u32 t2 = Fn_02a080_1((a0 + 12));
    return (t2 - 12);
}

// FUN_005a2bd4
u32 W_5a2bd4() {
    u32 t1 = *(u32*)((u32)((u32)g_008b86e0));
    u32 t2 = Fn_59b768_1(((t1 + 5120) + 424));
    u32 t3 = *(u32*)((u32)((u32)g_008b86e0));
    return Fn_01c5fc_1((t3 + 80));
}

// FUN_005a3aa8
u32 W_5a3aa8() {
    u32 t1 = *(u32*)((u32)((u32)g_009b5194));
    return t1;
}

// FUN_005a3ab8
void W_5a3ab8() {
    *(u32*)((u32)((u32)g_009b5194) + 8) = 0;
}

// FUN_005a3acc
u32 W_5a3acc() {
    u32 t1 = *(u32*)((u32)((u32)g_009b5194) + 12);
    return t1;
}

// FUN_005a3d50
void W_5a3d50() {

}

// FUN_005a3d54
u32 W_5a3d54() {

    return 1;
}

// FUN_005a3d5c
u32 W_5a3d5c(u32 a0) {
    u32 t1 = Fn_5a3acc_1(a0);
    u32 t2 = Fn_5a3aa8_1(t1);
    return Fn_025398_2(t2, t1);
}

// FUN_005a4d48
void W_5a4d48() {

}

// FUN_005a4d94
void W_5a4d94(u32 a0) {
    *(u8*)((u32)(a0) + 24) = 0;
}

// FUN_005a5420
void W_5a5420() {

}

// FUN_005a54a0
void W_5a54a0() {

}

// FUN_005a54cc
u32 W_5a54cc() {

    return (u32)g_009a4884;
}

// FUN_005a5794
void W_5a5794() {

}

// FUN_005a5798
void W_5a5798() {

}

// FUN_005a5864
u32 W_5a5864() {

    return 0;
}

// FUN_005a586c
void W_5a586c() {

}

// FUN_005a6e48
void W_5a6e48(u32 a0) {
    u32 t1 = Fn_5aea90_1(a0);
    *(u32*)((u32)(a0) + 88) = 3;
}

// FUN_005a6ef0
void W_5a6ef0(u32 a0) {
    u32 t1 = Fn_5aee5c_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082db4c;
}

// FUN_005a6f08
u32 W_5a6f08(u32 a0) {
    u32 t1 = Fn_5aeef0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005a793c
void W_5a793c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 416);
    if (t1 != 0) {
        u32 t2 = Fn_64156c_2(t1, (a0 + 728));
        u32 t3 = *(u32*)((u32)(a0) + 416);
        if (t3 != 0) {
            u32 t4 = Fn_5a579c_1(t3);
            *(u32*)((u32)(a0) + 416) = 0;
        }
    }
}

// FUN_005a7974
void W_5a7974() {

}

// FUN_005a8458
void W_5a8458() {

}

// FUN_005a87e8
void W_5a87e8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 416);
    if (t1 != 0) {
        u32 t2 = Fn_5a579c_1(t1);
        *(u32*)((u32)(a0) + 416) = 0;
    }
}

// FUN_005a8b18
u32 W_5a8b18(u32 a0) {
    u32 t1 = Fn_5a8b28_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005a8e9c
void W_5a8e9c(u32 a0) {
    u32 t1 = Fn_5aee5c_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082dbac;
}

// FUN_005a8eb4
u32 W_5a8eb4(u32 a0) {
    u32 t1 = Fn_5aeef0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005a8f8c
void W_5a8f8c() {

}

// FUN_005a9008
u32 W_5a9008(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082dbe0;
    u32 t1 = Fn_5a59ac_2(a0, (u32)g_0082dbe0);
    return Fn_2024b0_1(t1);
}

// FUN_005a9024
u32 W_5a9024(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082dbe0;
    return Fn_5a59ac_2(a0, (u32)g_0082dbe0);
}

// FUN_005a9600
u32 W_5a9600(u32 a0) {

    return (a0 + 324);
}

// FUN_005aa9cc
u32 W_5aa9cc(u32 a0) {

    return (a0 + 448);
}

// FUN_005ac174
u32 W_5ac174(u32 a0) {
    u32 t1 = Fn_5ac184_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005ac3ec
u32 W_5ac3ec(u32 a0) {
    u32 t1 = Fn_5a59ac_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005acf88
void W_5acf88(u32 a0) {
    u32 t1 = Fn_5acb24_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082dcd0;
}

// FUN_005acfc0
u32 W_5acfc0(u32 a0) {
    u32 t1 = Fn_5acbec_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005ad038
void W_5ad038() {

}

// FUN_005ad03c
void W_5ad03c() {

}

// FUN_005ad040
void W_5ad040() {

}

// FUN_005ad3a4
void W_5ad3a4() {

}

// FUN_005ae798
u32 W_5ae798(u32 a0) {

    return (a0 + 456);
}

// FUN_005aea48
u32 W_5aea48(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082dd68;
    u32 t1 = Fn_000068_4((a0 + 472), (u32)g_0011564c, 16, 2);
    u32 t2 = Fn_5b11ac_1((a0 + 312));
    u32 t3 = Fn_02a080_1((t2 - 4));
    return Fn_5ad5f0_1((t3 - 308));
}

// FUN_005aee0c
void W_5aee0c() {

}

// FUN_005aeedc
u32 W_5aeedc(u32 a0) {
    u32 t1 = Fn_5ad5f0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005af748
u32 W_5af748(u32 a0) {

    return (a0 + 352);
}

// FUN_005afe74
void W_5afe74() {

}

// FUN_005afec4
void W_5afec4() {

}

// FUN_005b021c
u32 W_5b021c(u32 a0) {
    u32 t1 = Fn_5ad5f0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005b1264
void W_5b1264() {

}

// FUN_005b1514
u32 W_5b1514(u32 a0) {
    return Fn_5b12e8_2((u32)g_009a420c, a0);
}

// FUN_005b16dc
void W_5b16dc() {

}

// FUN_005b1ff4
u32 W_5b1ff4(u32 a0) {
    u32 t1 = Fn_02a080_1((a0 + 4));
    return Fn_2024b0_1((t1 - 4));
}

// FUN_005b2464
u32 W_5b2464(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        return Fn_58e210_1(t1);
    }
}

// FUN_005b2564
u32 W_5b2564(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        return Fn_58ebf8_1(t1);
    }
}

// FUN_005b7368
void W_5b7368(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0));
    if (t1 != 0) {
        u32 t2 = Fn_202758_2(t1, (u32)g_006b686c);
        *(u32*)((u32)(a0)) = 0;
    }
    u32 t3 = *(u32*)((u32)(a0) + 4);
    if (t3 != 0) {
        u32 t4 = Fn_1fcd88_1(t3);
        *(u32*)((u32)(a0) + 4) = 0;
    }
}

// FUN_005b8080
u32 W_5b8080() {
    u32 t1 = *(u32*)((u32)((u32)g_008b86c4));
    return t1;
}

// FUN_005ba784
void W_5ba784(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        u32 t2 = Fn_667d48_1(t1);
        u32 t3 = *(u32*)((u32)(a0) + 8);
        if (t3 != 0) {
            u32 t4 = Fn_2024b0_1(t3);
            *(u32*)((u32)(a0) + 8) = 0;
        }
    }
}

// FUN_005bb480
u32 W_5bb480() {

    return 1;
}

// FUN_005bb578
u32 W_5bb578() {

    return 1;
}

// FUN_005bb580
u32 W_5bb580() {

    return 1;
}

// FUN_005bb588
u32 W_5bb588() {

    return 1;
}

// FUN_005bbef8
u32 W_5bbef8() {

    return 1;
}

// FUN_005bbf00
u32 W_5bbf00() {

    return 1;
}

// FUN_005bbf08
u32 W_5bbf08() {

    return 1;
}

// FUN_005bbf10
u32 W_5bbf10() {

    return 1;
}

// FUN_005bc190
u32 W_5bc190() {

    return 1;
}

// FUN_005bc2f0
u32 W_5bc2f0() {

    return 1;
}

// FUN_005bc718
u32 W_5bc718() {

    return 1;
}

// FUN_005bc73c
u32 W_5bc73c() {

    return 1;
}

// FUN_005bc8a4
u32 W_5bc8a4(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082e180;
    u32 t1 = Fn_4e019c_2(a0, (u32)g_0082e180);
    return Fn_2024b0_1(t1);
}

// FUN_005bc8c0
u32 W_5bc8c0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082e180;
    return Fn_4e019c_2(a0, (u32)g_0082e180);
}

// FUN_005bc8d0
u32 W_5bc8d0() {
    u32 t1 = *(u32*)((u32)((u32)g_008bfac4));
    u32 t2 = *(u32*)((u32)(t1) + 88);
    return t2;
}

// FUN_005bd308
void W_5bd308(u32 a0) {
    u32 t1 = Fn_5bcb14_1(a0);
    *(u32*)((u32)(a0) + 68) = 0;
    *(u32*)((u32)(a0) + 72) = 0;
    *(u32*)((u32)(a0) + 76) = 0;
    *(u32*)((u32)(a0) + 80) = 0;
    *(u32*)((u32)(a0) + 84) = 0;
    *(u32*)((u32)(a0) + 88) = 0;
    *(u32*)((u32)(a0) + 92) = 0;
    *(u32*)((u32)(a0) + 96) = 0;
}

// FUN_005bd3d0
u32 W_5bd3d0(u32 a0) {
    *(u32*)((u32)((u32)g_008bfac4)) = 0;
    u32 t1 = Fn_4e019c_3(a0, 0, (u32)g_008bfac4);
    return Fn_2024b0_1(t1);
}

// FUN_005bd3f0
u32 W_5bd3f0() {
    u32 t1 = *(u32*)((u32)((u32)g_008bfac4));
    u32 t2 = *(u8*)((u32)(t1) + 124);
    return t2;
}

// FUN_005bda74
u32 W_5bda74() {

    return 1;
}

// FUN_005bdb0c
u32 W_5bdb0c() {

    return 2;
}

// FUN_005bdb14
u32 W_5bdb14() {

    return 1;
}

// FUN_005bdb1c
u32 W_5bdb1c(u32 a0) {
    u32 t1 = Fn_4e019c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005bdffc
void W_5bdffc(char* a) { Fn_61d5c0(a + 188); }

// FUN_005be11c
void W_5be11c(u32 a0) {
    u32 t1 = Fn_61d3a8_1((a0 + 188));
    *(u8*)((u32)(a0) + 48) = 1;
}

// FUN_005be7b0
u32 W_5be7b0(u32 a0) {
    u32 t1 = Fn_5be7c0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005bea04
void W_5bea04() {

}
