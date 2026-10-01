// Generated wrapper functions (low1): template matches found by the wrapper generator
// (technical.md section 8 item 5). Each is a few instructions that forward to another function;
// callee names are Fn_<file offset>, signatures are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned u32;
void Fn_0e1890(void*);
void Fn_100a98();
void Fn_12cb3c(void*);
void Fn_198eac(float, float);
void Fn_198fb0(float, float);
void Fn_199b78();
void Fn_1c7e78();
void Fn_198fac();
extern void* g_008bfac0;
void Fn_5bb940(void*);
void Fn_29bd6c();
void Fn_25c89c(char*);
void Fn_20004c(char*, unsigned, unsigned);
void Fn_313158(char*);
void Fn_01026c(char*, unsigned, unsigned);
char* Fn_39c688(char*);
void Fn_59a814(void*);
void Fn_3d5340(void*);
void Fn_3de5f0(void*);
void Fn_3fa630(void*);
char* Fn_5e828c(char*);
void Fn_492ccc(void*, int);
char* Fn_498c20(char*);
void Fn_202a48(void*);
char* Fn_554860(char*);
char* Fn_5552a8(char*);

// FUN_000e1384
int W_0e1384(void* a) { Fn_0e1890(a); return 1; }

// FUN_000ffd2c
void W_0ffd2c() { Fn_100a98(); }

// FUN_001010b8
void W_1010b8() { Fn_100a98(); }

// FUN_0012cb2c
int W_12cb2c(void* a) { Fn_12cb3c(a); return 1; }

// FUN_00199b84
void W_199b84() { Fn_198eac(0.0f, 1.0f); }

// FUN_00199c00
void W_199c00() { Fn_198fb0(1.0f, 0.0f); }

// FUN_001d4830
void W_1d4830() { Fn_198fb0(1.0f, 0.0f); }

// FUN_001e8394
void W_1e8394() { Fn_198eac(0.0f, 1.0f); }

// FUN_001e83a8
void W_1e83a8() { Fn_198eac(0.4000000059604645f, 1.0f); }

// FUN_001e844c
void W_1e844c() { Fn_198fb0(1.0f, 0.0f); }

// FUN_001e8460
void W_1e8460() { Fn_198fb0(1.0f, 0.4000000059604645f); }

// FUN_001e8810
void W_1e8810() { Fn_199b78(); }

// FUN_001e9c5c
void W_1e9c5c() { Fn_1c7e78(); }

// FUN_001f57dc
void W_1f57dc() { Fn_198fac(); }

// FUN_0022577c
void W_22577c() { Fn_198eac(0.0f, 1.0f); }

// FUN_00225aec
void W_225aec() { Fn_198fb0(1.0f, 0.0f); }

// FUN_0027b858
void W_27b858() { Fn_5bb940(g_008bfac0); }

// FUN_0029ec04
void W_29ec04() { Fn_29bd6c(); }

// FUN_002ef51c
void W_2ef51c(char* a) { Fn_25c89c(a + 480); }

// FUN_002f46d8
void W_2f46d8(char* a, unsigned b) { Fn_20004c(a + 76, b, 158); }

// FUN_0033c824
void W_33c824(char* a) { Fn_313158(a + 64); }

// FUN_00377730
void W_377730(char* a, unsigned b) { Fn_01026c(a + 160, b, 256); }

// FUN_003837ac
char* W_3837ac(char* a) { return Fn_39c688(a) + 84; }

// FUN_003bd2ec
void W_3bd2ec(void*, void* b) { Fn_59a814(b); }

// FUN_003d8b38
int W_3d8b38(void* a) { Fn_3d5340(a); return 1; }

// FUN_003ddf44
struct O3ddf44 { char p[96]; unsigned f; };
void W_3ddf44(O3ddf44* a) { a->f = 1; Fn_3de5f0(a); }

// FUN_003de7ac
struct O3de7ac { char p[96]; unsigned f; };
void W_3de7ac(O3de7ac* a) { a->f = 1; Fn_3de5f0(a); }

// FUN_003ef9f8
struct O3ef9f8 { char p[40]; unsigned f; };
void W_3ef9f8(O3ef9f8* a) { a->f = 2; Fn_3fa630(a); }

// FUN_003f5be4
struct O3f5be4 { char p[40]; unsigned f; };
void W_3f5be4(O3f5be4* a) { a->f = 2; Fn_3fa630(a); }

// FUN_004016cc
void W_4016cc(char* a, unsigned b) { Fn_20004c(a + 452, b, 100); }

// FUN_00415a64
void W_415a64(char* a, unsigned b) { Fn_20004c(a + 452, b, 128); }

// FUN_0043ec58
void W_43ec58(char* a, unsigned b) { Fn_20004c(a + 452, b, 100); }

// FUN_0045297c
char* W_45297c(char* a) { return Fn_5e828c(a) - 4; }

// FUN_00480954
struct O480954 { char p[60]; void* f; };
void W_480954(O480954* a) { Fn_492ccc(a->f, 1); }

// FUN_00486bd8
struct O486bd8 { char p[60]; void* f; };
void W_486bd8(O486bd8* a) { Fn_492ccc(a->f, 1); }

// FUN_00486be4
struct O486be4 { char p[60]; void* f; };
void W_486be4(O486be4* a) { Fn_492ccc(a->f, 2); }

// FUN_00487b28
struct O487b28 { char p[60]; void* f; };
void W_487b28(O487b28* a) { Fn_492ccc(a->f, 1); }

// FUN_00487b34
struct O487b34 { char p[60]; void* f; };
void W_487b34(O487b34* a) { Fn_492ccc(a->f, 0); }

// FUN_0048e4dc
struct O48e4dc { char p[76]; void* f; };
void W_48e4dc(O48e4dc* a) { Fn_492ccc(a->f, 3); }

// FUN_0048e4e8
struct O48e4e8 { char p[76]; void* f; };
void W_48e4e8(O48e4e8* a) { Fn_492ccc(a->f, 4); }

// FUN_00492e04
char* W_492e04(char* a) { return Fn_498c20(a) - 4; }

// FUN_004c3004
void W_4c3004() { Fn_5bb940(g_008bfac0); }

// FUN_004de72c
int W_4de72c(void* a) { Fn_202a48(a); return 1; }

// FUN_004e01f8
char* W_4e01f8(char* a) { return Fn_554860(a) - 12; }

// FUN_004e0294
char* W_4e0294(char* a) { return Fn_5552a8(a) - 12; }
