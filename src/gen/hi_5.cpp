// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
extern char g_0089a330[];
extern char g_0089a430[];
u32 Fn_395b8c_1(u32);
u32 Fn_5d5bec_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_5d6300_1(u32);
extern char g_008e0238[];
u32 Fn_020908_2(u32, u32);
u32 Fn_029d94_2(u32, u32);
extern char g_008bfad4[];
u32 Fn_5d8ea4_1(u32);
u32 Fn_5d8fb4_1(u32);
u32 Fn_5d790c_1(u32);
u32 Fn_5d94dc_2(u32, u32);
u32 Fn_5d9650_1(u32);
u32 Fn_5d9764_2(u32, u32);
u32 Fn_5d96ec_2(u32, u32);
u32 Fn_5d9950_2(u32, u32);
u32 Fn_5da940_4(u32, u32, u32, u32);
u32 Fn_642a34_2(u32, u32);
u32 Fn_5dad64_2(u32, u32);
void Fn_5db934(void*);
u32 Fn_008010_1(u32);
void Fn_59a938(void*);
extern char g_0082e9a8[];
u32 Fn_008010_2(u32, u32);
extern char g_0082ea24[];
extern char g_008bfadc[];
u32 Fn_4e019c_2(u32, u32);
u32 Fn_5df578_1(u32);
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_5dfad8_2(u32, u32);
u32 Fn_5e045c_2(u32, u32);
u32 Fn_5e0ffc_2(u32, u32);
u32 Fn_5e1b4c_2(u32, u32);
u32 Fn_5e1e10_1(u32);
u32 Fn_5e2274_2(u32, u32);
u32 Fn_5e298c_2(u32, u32);
u32 Fn_5e3060_2(u32, u32);
extern char g_00550023[];
u32 Fn_0151c8_1(u32);
u32 Fn_5e372c_2(u32, u32);
u32 Fn_5e3ee0_2(u32, u32);
u32 Fn_5e4600_2(u32, u32);
u32 Fn_5e4df4_2(u32, u32);
u32 Fn_5e54b0_2(u32, u32);
u32 Fn_5e60a0_2(u32, u32);
u32 Fn_5e684c_2(u32, u32);
u32 Fn_5acbe8_1(u32);
extern char g_0082ee10[];
u32 Fn_545f2c_1(u32);
extern char g_0082ee64[];
u32 Fn_5e828c_1(u32);
extern char g_0082eed4[];
extern char g_0082ef04[];
extern char g_0082ef70[];
u32 Fn_2024b0_2(u32, u32);
u32 Fn_546b30_3(u32, u32, u32);
u32 Fn_6695f8_1(u32);
u32 Fn_59935c_3(u32, u32, u32);
void Fn_0317dc(char*, unsigned, unsigned);
u32 Fn_5992a0_2(u32, u32);
u32 Fn_545260_1(u32);
extern char g_008a8888[];
u32 Fn_020510_3(u32, u32, u32);
u32 Fn_5ef2d4_1(u32);
extern char g_006ef2d4[];
extern char g_0082f048[];
u32 Fn_000068_4(u32, u32, u32, u32);
u32 Fn_029ed4_2(u32, u32);
extern char g_0082f074[];
extern char g_0082f084[];

// FUN_005d3814
void W_5d3814(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u8*)((u32)((u32)g_0089a330) + 3);
    *(u8*)((u32)(a0)) = t1;
    u32 t2 = *(u8*)((u32)((u32)g_0089a330) + 4);
    *(u8*)((u32)(a1)) = t2;
    u32 t3 = *(u8*)((u32)((u32)g_0089a330) + 5);
    *(u8*)((u32)(a2)) = t3;
}

// FUN_005d39b4
void W_5d39b4(u32 a0, u32 a1, u32 a2) {
    *(u8*)((u32)((u32)g_0089a330) + 3) = a0;
    *(u8*)((u32)((u32)g_0089a330) + 4) = a1;
    *(u8*)((u32)((u32)g_0089a330) + 5) = a2;
}

// FUN_005d39cc
void W_5d39cc(u32 a0) {
    *(u8*)((u32)((u32)g_0089a330) + 15) = a0;
}

// FUN_005d3f60
u32 W_5d3f60() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a430) + 12);
    if (t1 != 0) {
        u32 t2 = *(u32*)((u32)(t1) + 20);
        return Fn_395b8c_1(t2);
    }
}

// FUN_005d40b8
void W_5d40b8(u32 a0) {
    *(u8*)((u32)((u32)g_0089a330) + 25) = a0;
}

// FUN_005d459c
void W_5d459c(u32 a0) {
    *(u32*)((u32)((u32)g_0089a330) + 196) = a0;
}

// FUN_005d4670
u32 W_5d4670() {
    u32 t1 = *(u32*)((u32)((u32)g_0089a330) + 196);
    return t1;
}

// FUN_005d5e34
void W_5d5e34(u32 a0) {
    u32 t1 = Fn_5d5bec_1(a0);
    *(u8*)((u32)(a0) + 65) = 0;
}

// FUN_005d62f0
u32 W_5d62f0(u32 a0) {
    u32 t1 = Fn_5d6300_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005d67e4
void W_5d67e4(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_005d6c34
u32 W_5d6c34() {

    return 1;
}

// FUN_005d6c3c
u32 W_5d6c3c() {

    return 0;
}

// FUN_005d6c7c
u32 W_5d6c7c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 32);
    return t1;
}

// FUN_005d6ca0
u32 W_5d6ca0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 36);
    return t1;
}

// FUN_005d6cfc
u32 W_5d6cfc(u32 a0) {
    u32 t1 = Fn_5d6300_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005d6e24
u32 W_5d6e24(u32 a0) {
    return Fn_020908_2((u32)g_008e0238, a0);
}

// FUN_005d6e34
u32 W_5d6e34(u32 a0) {
    return Fn_029d94_2((u32)g_008e0238, a0);
}

// FUN_005d6eb8
u32 W_5d6eb8() {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d8ea4_1(t1);
    }
}

// FUN_005d8b3c
u32 W_5d8b3c() {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d8fb4_1(t1);
    }
}

// FUN_005d9830
u32 W_5d9830(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    if (t1 != 0) {
        u32 t2 = *(u32*)((u32)(t1) + 1444);
        return Fn_5d790c_1(t2);
    }
}

// FUN_005db38c
u32 W_5db38c(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d94dc_2(t1, a0);
    }
}

// FUN_005db3d8
u32 W_5db3d8() {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d9650_1(t1);
    }
}

// FUN_005db414
u32 W_5db414(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d9764_2(t1, a0);
    }
}

// FUN_005db434
u32 W_5db434(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d96ec_2(t1, a0);
    }
}

// FUN_005db454
u32 W_5db454(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5d9950_2(t1, a0);
    }
}

// FUN_005db650
u32 W_5db650(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5da940_4(t1, a0, a1, a0);
    }
}

// FUN_005db678
u32 W_5db678(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_642a34_2(t1, a0);
    }
}

// FUN_005db6f4
u32 W_5db6f4(u32 a0) {
    u32 t1 = *(u32*)((u32)((u32)g_008bfad4));
    if (t1 != 0) {
        return Fn_5dad64_2(t1, a0);
    }
}

// FUN_005dbb18
int W_5dbb18(void* a) { Fn_5db934(a); return 1; }

// FUN_005dc898
u32 W_5dc898(u32 a0) {
    u32 t1 = Fn_008010_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005dc8ec
int W_5dc8ec(void* a) { Fn_59a938(a); return 1; }

// FUN_005dd254
u32 W_5dd254() {

    return 1;
}

// FUN_005dd2e8
u32 W_5dd2e8() {

    return 1;
}

// FUN_005dd2f0
u32 W_5dd2f0() {

    return 1;
}

// FUN_005dd7d4
u32 W_5dd7d4(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082e9a8;
    return Fn_008010_2(a0, (u32)g_0082e9a8);
}

// FUN_005dea2c
void W_5dea2c() {

}

// FUN_005dea30
void W_5dea30() {

}

// FUN_005dea48
void W_5dea48() {

}

// FUN_005dea4c
void W_5dea4c() {

}

// FUN_005df70c
u32 W_5df70c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ea24;
    u32 t1 = Fn_5df578_1(a0);
    *(u32*)((u32)((u32)g_008bfadc)) = 0;
    u32 t2 = Fn_4e019c_2(a0, (u32)g_008bfadc);
    return Fn_2024b0_1(t2);
}

// FUN_005df764
u32 W_5df764(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ea24;
    u32 t1 = Fn_5df578_1(a0);
    *(u32*)((u32)((u32)g_008bfadc)) = 0;
    return Fn_4e019c_2(a0, (u32)g_008bfadc);
}

// FUN_005df9d0
u32 W_5df9d0(u32 a0) {
    u32 t1 = Fn_016d5c_3(108, 0, 16);
    if (t1 != 0) {
        return Fn_5dfad8_2(t1, a0);
    }
}

// FUN_005dfa00
void W_5dfa00() {

}

// FUN_005e03c0
u32 W_5e03c0(u32 a0) {
    u32 t1 = Fn_016d5c_3(204, 0, 16);
    if (t1 != 0) {
        return Fn_5e045c_2(t1, a0);
    }
}

// FUN_005e0fbc
u32 W_5e0fbc(u32 a0) {
    u32 t1 = Fn_016d5c_3(176, 0, 16);
    if (t1 != 0) {
        return Fn_5e0ffc_2(t1, a0);
    }
}

// FUN_005e1af8
u32 W_5e1af8(u32 a0) {
    u32 t1 = Fn_016d5c_3(272, 0, 16);
    if (t1 != 0) {
        return Fn_5e1b4c_2(t1, a0);
    }
}

// FUN_005e1e00
u32 W_5e1e00(u32 a0) {
    u32 t1 = Fn_5e1e10_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005e2218
u32 W_5e2218(u32 a0) {
    u32 t1 = Fn_016d5c_3(468, 0, 16);
    if (t1 != 0) {
        return Fn_5e2274_2(t1, a0);
    }
}

// FUN_005e2958
u32 W_5e2958(u32 a0) {
    u32 t1 = Fn_016d5c_3(120, 0, 16);
    if (t1 != 0) {
        return Fn_5e298c_2(t1, a0);
    }
}

// FUN_005e2988
void W_5e2988() {

}

// FUN_005e302c
u32 W_5e302c(u32 a0) {
    u32 t1 = Fn_016d5c_3(116, 0, 16);
    if (t1 != 0) {
        return Fn_5e3060_2(t1, a0);
    }
}

// FUN_005e305c
void W_5e305c() {

}

// FUN_005e34c4
u32 W_5e34c4() {
    return Fn_0151c8_1((u32)g_00550023);
}

// FUN_005e365c
u32 W_5e365c(u32 a0) {
    u32 t1 = Fn_016d5c_3(152, 0, 16);
    if (t1 != 0) {
        return Fn_5e372c_2(t1, a0);
    }
}

// FUN_005e36cc
void W_5e36cc() {

}

// FUN_005e3eac
u32 W_5e3eac(u32 a0) {
    u32 t1 = Fn_016d5c_3(96, 0, 16);
    if (t1 != 0) {
        return Fn_5e3ee0_2(t1, a0);
    }
}

// FUN_005e3edc
void W_5e3edc() {

}

// FUN_005e45a4
u32 W_5e45a4(u32 a0) {
    u32 t1 = Fn_016d5c_3(184, 0, 16);
    if (t1 != 0) {
        return Fn_5e4600_2(t1, a0);
    }
}

// FUN_005e4dc0
u32 W_5e4dc0(u32 a0) {
    u32 t1 = Fn_016d5c_3(232, 0, 16);
    if (t1 != 0) {
        return Fn_5e4df4_2(t1, a0);
    }
}

// FUN_005e4df0
void W_5e4df0() {

}

// FUN_005e547c
u32 W_5e547c(u32 a0) {
    u32 t1 = Fn_016d5c_3(92, 0, 16);
    if (t1 != 0) {
        return Fn_5e54b0_2(t1, a0);
    }
}

// FUN_005e54ac
void W_5e54ac() {

}

// FUN_005e5f44
u32 W_5e5f44(u32 a0) {
    u32 t1 = Fn_016d5c_3(164, 0, 16);
    if (t1 != 0) {
        return Fn_5e60a0_2(t1, a0);
    }
}

// FUN_005e6818
u32 W_5e6818(u32 a0) {
    u32 t1 = Fn_016d5c_3(116, 0, 16);
    if (t1 != 0) {
        return Fn_5e684c_2(t1, a0);
    }
}

// FUN_005e6848
void W_5e6848() {

}

// FUN_005e6c30
u32 W_5e6c30(u32 a0) {
    u32 t1 = Fn_5acbe8_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005e6c44
u32 W_5e6c44(u32 a0) {
    u32 t1 = Fn_5acbe8_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005e77f4
void W_5e77f4() {

}

// FUN_005e77f8
void W_5e77f8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ee10;
}

// FUN_005e81d0
u32 W_5e81d0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    if (t1 != 0) {
        return Fn_545f2c_1(t1);
    }
}

// FUN_005e81e4
void W_5e81e4(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 4) = a1;
}

// FUN_005e82a4
void W_5e82a4() {

}

// FUN_005e83ac
void W_5e83ac(u32 a0) {
    u32 t1 = Fn_5e828c_1(a0);
    *(u32*)((u32)(t1) + 8) = 0;
    *(u32*)((u32)(t1)) = (u32)g_0082ee64;
}

// FUN_005e83d0
u32 W_5e83d0() {

    return 0;
}

// FUN_005e8b54
void W_5e8b54(u32 a0) {
    u32 t1 = Fn_5e828c_1(a0);
    *(u32*)((u32)(t1) + 8) = 0;
    *(u32*)((u32)(t1)) = (u32)g_0082eed4;
}

// FUN_005e8b78
void W_5e8b78() {

}

// FUN_005e8c80
void W_5e8c80(u32 a0) {
    u32 t1 = Fn_5e828c_1(a0);
    *(u32*)((u32)(t1) + 8) = 0;
    *(u32*)((u32)(t1)) = (u32)g_0082ef04;
}

// FUN_005e9978
void W_5e9978(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    *(u32*)((u32)(a0) + 4) = (t1 + 1);
}

// FUN_005e99c8
u32 W_5e99c8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ef70;
    return Fn_2024b0_2(a0, (u32)g_0082ef70);
}

// FUN_005e99d8
void W_5e99d8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ef70;
}

// FUN_005e9cfc
void W_5e9cfc(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0) + 52);
    *(u32*)((u32)(t1) + 128) = a1;
    u32 t2 = *(u32*)((u32)(a0) + 56);
    u32 t3 = Fn_546b30_3(t2, a1, 0);
    u32 t4 = Fn_6695f8_1(16383u);
    *(u8*)((u32)(a0) + 292) = 1;
}

// FUN_005ea0c4
u32 W_5ea0c4() {
    return Fn_59935c_3(271843328u, 0, 0);
}

// FUN_005ea0d8
void W_5ea0d8(char* a, unsigned b) { Fn_0317dc(a + 4, b, 63); }

// FUN_005ea3d8
u32 W_5ea3d8() {
    return Fn_5992a0_2(271843328u, 0);
}

// FUN_005ea590
u32 W_5ea590(u32 a0) {
    u32 t1 = Fn_545260_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005ea5a0
void W_5ea5a0() {
    u32 t1 = Fn_020510_3(4096, 4, 1);
    *(u32*)((u32)((u32)g_008a8888)) = t1;
}

// FUN_005ebe4c
void W_5ebe4c(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
}

// FUN_005ef2c4
u32 W_5ef2c4(u32 a0) {
    u32 t1 = Fn_5ef2d4_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005efbd8
u32 W_5efbd8(u32 a0) {
    u32 t1 = *(u16*)((u32)(((a0 + 262144) + 120832)) + 170);
    return t1;
}

// FUN_005eff90
void W_5eff90(u32 a0) {
    *(u8*)((u32)(((a0 + 7424) + 170))) = 0;
}

// FUN_005f0560
u32 W_5f0560(u32 a0) {
    u32 t1 = *(u8*)((u32)(((a0 + 380928) + 2256)));
    return t1;
}

// FUN_005f0788
u32 W_5f0788(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082f048;
    u32 t1 = Fn_000068_4(((a0 + 4096) + 3536), (u32)g_006ef2d4, 37488u, 10);
    return a0;
}

// FUN_005f0dbc
void W_5f0dbc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 12);
    if (t1 != 0) {
        u32 t2 = Fn_029ed4_2(t1, 0);
        *(u32*)((u32)(a0) + 12) = 0;
    }
    u32 t3 = *(u32*)((u32)(a0) + 8);
    if (t3 != 0) {
        u32 t4 = Fn_029ed4_2(t3, 0);
        *(u32*)((u32)(a0) + 8) = 0;
    }
}

// FUN_005f1264
void W_5f1264(u32 a0) {
    *(u16*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u32*)((u32)(a0) + 24) = 0;
}

// FUN_005f2268
void W_5f2268(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = (u32)g_0082f074;
    *(u32*)((u32)(a0) + 8) = 0;
}

// FUN_005f2554
void W_5f2554() {

}

// FUN_005f2558
void W_5f2558() {

}

// FUN_005f255c
u32 W_5f255c() {

    return 1;
}

// FUN_005f2564
void W_5f2564(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082f084;
}

// FUN_005f257c
u32 W_5f257c() {

    return 0;
}
