// Three getters that build a static UTF-16 string on first use: copy a global string, append a
// shared suffix, return the buffer. The three init flags are consecutive bytes (VA 0x008B86AC),
// the buffers sit in .bss. Names are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
//   FUN_005849d4 GetStringA   FUN_0058486c GetStringB   FUN_00583d00 GetStringC
typedef unsigned short u16;
typedef unsigned char  u8;

u16* WcsCpy(u16* d, const u16* s);          // FUN_00000bf4 (Thumb)
u16* WcsCat(u16* d, const u16* s);          // FUN_00000c24 (Thumb)

extern u8 g_StringInit[];                    // VA 0x008B86AC
extern const u16 g_StringSuffix[];           // VA 0x007EBE5C
extern const u16* g_BaseStringA;             // VA 0x008B8680
extern const u16* g_BaseStringB;             // VA 0x008B867C
extern const u16* g_BaseStringC;             // VA 0x008B8664
extern u16 g_StringBufA[];                   // VA 0x009B3B48
extern u16 g_StringBufB[];                   // VA 0x009B3B5E
extern u16 g_StringBufC[];                   // VA 0x009B3B74

// FUN_005849d4
u16* GetStringA()
{
    if (!g_StringInit[0]) {
        WcsCpy(g_StringBufA, g_BaseStringA);
        WcsCat(g_StringBufA, g_StringSuffix);
        g_StringInit[0] = 1;
    }
    return g_StringBufA;
}

// FUN_0058486c
u16* GetStringB()
{
    if (!g_StringInit[1]) {
        WcsCpy(g_StringBufB, g_BaseStringB);
        WcsCat(g_StringBufB, g_StringSuffix);
        g_StringInit[1] = 1;
    }
    return g_StringBufB;
}

// FUN_00583d00
u16* GetStringC()
{
    if (!g_StringInit[2]) {
        WcsCpy(g_StringBufC, g_BaseStringC);
        WcsCat(g_StringBufC, g_StringSuffix);
        g_StringInit[2] = 1;
    }
    return g_StringBufC;
}
