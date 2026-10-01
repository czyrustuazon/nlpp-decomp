// More small forwarding wrappers, zeroing constructors and guarded copies above 0x500000.
// Names and types are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

void  Fn_01b624(char* p);                       // FUN_0001b624
void  Fn_20004c(char* d, const char* s, u32 n); // FUN_0020004c
void  Fn_202b20(char* d, char* s, u32 n);       // FUN_00202b20
void  ZeroFill(void* p, u32 n);                 // FUN_001fddd8
u32   Fn_637d3c(u32 v);                         // FUN_00537d3c
char* Fn_5f2268(char* p);                       // FUN_005f2268
extern char g_9a1074[];
extern u8   g_8aac08;
extern char g_8c5cb0[];
extern const char g_Vtbl82C36C[], g_Vtbl82C38C[], g_Vtbl82C404[], g_Vtbl82F060[];

// FUN_005114dc
void Copy5114dc(char* p, char* s, u32 n)
{
    Fn_202b20(p + 0x18, s, n);
    *(u32*)(p + 0x10) = n;
}

// FUN_00540650
void Reset540650()
{
    Fn_01b624(g_9a1074);
    g_8aac08 = 0;
}

// FUN_00648e24
void GuardedCopy648e24(char* a, char* b, u32 n)
{
    if (n != 0) Fn_202b20(b, a, n);
}

// FUN_005d1470
void SaveIfSet5d1470(char* p)
{
    if (*(int*)g_8c5cb0 != -1) Fn_20004c(p, g_8c5cb0, 0x1944);
}

// FUN_00611360
void GuardedCopy611360(char* p, char* s)
{
    char* d = *(char**)(p + 0x48);
    if (d != 0) Fn_202b20(d, s, 4);
}

// FUN_0051c978, FUN_0051cc94, FUN_005223b8
char* ZeroCtor51c978(char* p)
{
    *(const char**)p = g_Vtbl82C36C;
    ZeroFill(p + 4, 0x408);
    return p;
}
char* ZeroCtor51cc94(char* p)
{
    *(const char**)p = g_Vtbl82C38C;
    ZeroFill(p + 8, 0x78);
    return p;
}
char* ZeroCtor5223b8(char* p)
{
    *(const char**)p = g_Vtbl82C404;
    ZeroFill(p + 4, 0x108);
    return p;
}

// FUN_0053140c
void Init53140c(char* p)
{
    ZeroFill(p + 0xb10, 0xb4);
    *(u32*)(p + 0xa9c) = *(u32*)(p + 0xa78) + 1;
}

// FUN_005506f0 (Set5506f0, score 2: retail stores +4 before copying v to r0) is not matched.

// FUN_005db894
bool Clear5db894(char* p)
{
    ZeroFill(p + 0x44, 0x50);
    *(u16*)(p + 0x9c) = 0;
    return true;
}

// FUN_005f0ef8
char* NewZeroed5f0ef8(char* p)
{
    char* r = Fn_5f2268(p);
    *(const char**)r = g_Vtbl82F060;
    ZeroFill(r + 0xc, 0xb0);
    return r;
}
