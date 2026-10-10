// Generated shape matches (tools/wrapgen, technical.md section 8 item 5): each function compiles to the exact retail bytes,
// but names (W_<offset>, callees Fn_<offset>_<argc>) and types are placeholders, not recovered meaning.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
u32 Fn_494f2c_1(u32);
u32 Fn_624e64_1(u32);
u32 Fn_6311d8_2(u32, u32);
extern char g_008a88e0[];
extern char g_008a88d8[];
extern char g_008ab298[];
extern char g_008ab320[];
extern char g_008ab2b0[];
extern char g_008b8618[];
extern char g_008a88d4[];
extern char g_008a88dc[];
u32 Fn_639d00_1(u32);
extern char g_008bb6f0[];
extern char g_008bb724[];
extern char g_008bb4f8[];
u32 Fn_637f14_1(u32);
u32 Fn_638930_1(u32);
u32 Fn_633e0c_1(u32);
extern char g_008bb74c[];
extern char g_007e9404[];
u32 Fn_01a43c_4(u32, u32, u32, u32);
u32 Fn_587124_2(u32, u32);
void Fn_633fd8(char*);
void Fn_634008(char*);
u32 Fn_02a218_1(u32);
u32 Fn_00e020_1(u32);
void Fn_02a218(char*);
extern char g_008a833c[];
extern char g_008a88bc[];
u32 Fn_492d40_1(u32);
extern char g_0089a341[];
extern char g_0089a344[];
u32 Fn_5642f0_1(u32);
u32 Fn_563644_1(u32);
u32 Fn_2024b0_1(u32);
u32 Fn_56469c_1(u32);
u32 Fn_5656dc_1(u32);
extern char g_0089a417[];

// FUN_0062fb28
u32 W_62fb28(u32 a0) {
    u32 t1 = *(u16*)((u32)((a0 + 256)) + 32);
    return t1;
}

// FUN_00630098
u32 W_630098(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    u32 t2 = *(u32*)((u32)(t1) + 24);
    return t2;
}

// FUN_006300a4
u32 W_6300a4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    u32 t2 = *(u8*)((u32)(t1));
    return t2;
}

// FUN_006300b0
u32 W_6300b0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 68);
    u32 t2 = *(u8*)((u32)(t1) + 20);
    return t2;
}

// FUN_0063023c
u32 W_63023c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    if (t1 != 0) {
        return Fn_494f2c_1(t1);
    }
}

// FUN_00630260
u32 W_630260(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 96);
    u32 t2 = *(u32*)((u32)(t1) + 8);
    return t2;
}

// FUN_0063026c
u32 W_63026c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 60);
    u32 t2 = *(u8*)((u32)(t1) + 5);
    return t2;
}

// FUN_00630ad4
u32 W_630ad4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 88);
    if (t1 != 0) {
        return Fn_624e64_1(t1);
    }
}

// FUN_00631300
u32 W_631300(u32 a0) {
    return Fn_6311d8_2(a0, 3);
}

// FUN_006315c8
u32 W_6315c8() {

    return 3770697464u;
}

// FUN_006338cc
u32 W_6338cc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    return t1;
}

// FUN_006338d4
u32 W_6338d4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    return t1;
}

// FUN_00633bc8
u32 W_633bc8() {

    return 5;
}

// FUN_00633bd0
u32 W_633bd0() {

    return 2;
}

// FUN_00633bd8
u32 W_633bd8() {

    return 4;
}

// FUN_00633be0
u32 W_633be0() {

    return 1;
}

// FUN_00633be8
u32 W_633be8() {

    return 4;
}

// FUN_00633bf0
u32 W_633bf0() {

    return 1;
}

// FUN_00633bf8
u32 W_633bf8() {

    return 0;
}

// FUN_00633c00
u32 W_633c00() {

    return 3;
}

// FUN_00633c08
u32 W_633c08() {

    return 0;
}

// FUN_00633c10
u32 W_633c10() {

    return 3;
}

// FUN_00633c18
u32 W_633c18() {

    return 2;
}

// FUN_006345fc
u32 W_6345fc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 12);
    u32 t2 = *(u16*)((u32)(t1) + 8);
    return t2;
}

// FUN_00636398
u32 W_636398() {

    return (u32)g_008a88d4;
}

// FUN_00636d24
u32 W_636d24(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    return Fn_639d00_1(t1);
}

// FUN_006396f0
u32 W_6396f0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 60);
    u32 t2 = Fn_637f14_1(t1);
    if (t2 != 0) {
        return Fn_638930_1(t2);
    }
}

// FUN_0063d230
u32 W_63d230() {

    return 42;
}

// FUN_0063d238
u32 W_63d238() {

    return 42;
}

// FUN_0063e074
u32 W_63e074(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0));
    u32 t2 = *(u32*)((u32)(a0) + 4);
    return Fn_01a43c_4(t1, t2, 86400u, 0);
}

// FUN_0063fae0
u32 W_63fae0(u32 a0) {
    return Fn_587124_2((a0 + 4), 0);
}

// FUN_0063fde8
void W_63fde8(char* a) { Fn_633fd8(a + 8); }

// FUN_0063fdf0
void W_63fdf0(char* a) { Fn_634008(a + 8); }

// FUN_0064099c
u32 W_64099c() {

    return 0;
}

// FUN_006409a4
u32 W_6409a4() {

    return 0;
}

// FUN_006409ac
u32 W_6409ac() {

    return 0;
}

// FUN_00640d1c
u32 W_640d1c(u32 a0) {
    u32 t1 = Fn_02a218_1((a0 + 4));
    u32 t2 = *(u32*)((u32)(t1) + 8);
    return t2;
}

// FUN_006410cc
u32 W_6410cc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 40);
    if (t1 == 0) {
        return Fn_00e020_1(t1);
    }
}

// FUN_006415d0
u32 W_6415d0(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 20);
    return t1;
}

// FUN_00641824
u32 W_641824(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 16);
    return t1;
}

// FUN_00641be4
void W_641be4(char* a) { Fn_02a218(a + 4); }

// FUN_00641e00
void W_641e00(char* a) { Fn_02a218(a + 4); }

// FUN_00642314
u32 W_642314() {

    return 0;
}

// FUN_0064231c
u32 W_64231c() {

    return 256;
}

// FUN_0064235c
u32 W_64235c() {

    return 32;
}

// FUN_00642364
u32 W_642364() {

    return 32;
}

// FUN_0064236c
u32 W_64236c() {
    u32 t1 = *(u8*)((u32)((u32)g_008a833c));
    return t1;
}

// FUN_0064244c
u32 W_64244c() {

    return (u32)g_008a88bc;
}

// FUN_0064395c
u32 W_64395c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + -4);
    return t1;
}

// FUN_00643c58
u32 W_643c58(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 44);
    return Fn_492d40_1(t1);
}

// FUN_00643c60
u32 W_643c60(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 44);
    u32 t2 = *(u32*)((u32)(t1) + 8);
    return Fn_492d40_1(t2);
}

// FUN_00643c6c
void W_643c6c() {
    *(u8*)((u32)((u32)g_0089a341)) = 1;
}

// FUN_00643c80
void W_643c80() {
    *(u8*)((u32)((u32)g_0089a344)) = 1;
}

// FUN_00643cd8
u32 W_643cd8(u32 a0) {

    return (a0 - 28);
}

// FUN_00643d64
u32 W_643d64(u32 a0) {

    return (a0 - 32);
}

// FUN_0064447c
void W_64447c() {

}

// FUN_00644718
void W_644718() {
    *(u8*)((u32)((u32)g_0089a417)) = 1;
}
