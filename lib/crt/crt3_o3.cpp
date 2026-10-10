// CTR SDK functions, matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_0080d4cc[];
extern char g_0089b83c[];
extern char g_0080d530[];
extern char g_0089aa54[];
extern char g_0089a468[];
extern char g_0089a474[];
extern char g_0089a49c[];
extern char g_0089a4a0[];
extern char g_0089a4c8[];
extern char g_0089a4d4[];
extern char g_0089a4e4[];
extern char g_0089a630[];
extern char g_0089a688[];
extern char g_0080db18[];
extern char g_0089ac84[];
extern char g_0080dbb4[];
extern char g_0089ba64[];
extern char g_007c23dc[];
extern char g_007c2488[];
extern char g_0080dd28[];
extern char g_0089c67c[];
extern char g_0089c680[];
extern char g_0080ddc4[];
extern char g_0089c8f4[];
extern char g_0089cc84[];
extern char g_0089cca0[];
extern char g_0089cd0c[];
extern char g_0089cd10[];
extern char g_0089d3f4[];
extern char g_0080e0a0[];
extern char g_0089d2cc[];
extern char g_0080e13c[];
extern char g_0089d734[];
extern char g_0089d76c[];
extern char g_0089d784[];
extern char g_0089d794[];
extern char g_0089de7c[];
extern char g_0089deac[];
extern char g_0089debc[];
extern char g_0089df00[];
extern char g_006e8b78[];
extern char g_0080e50c[];
extern char g_0089db30[];
extern char g_0089dff4[];
extern char g_0089a1d0[];
extern char g_0080e914[];
extern char g_0089b6b8[];
extern char g_0080e9d8[];
extern char g_0089b6f4[];
extern char g_0089bf74[];
extern char g_0080ead4[];
extern char g_0089c534[];
extern char g_0080eb70[];
extern char g_0089c5a0[];
extern char g_0089c6c8[];
extern char g_0080ec6c[];
extern char g_0089c6f4[];
extern char g_0089c704[];
extern char g_0080ed08[];
extern char g_0089aa0c[];
extern char g_0089a608[];
extern char g_0080f0c8[];
extern char g_0089ae48[];
extern char g_0080f164[];
extern char g_0089ae68[];
extern char g_0089ae6c[];
extern char g_0089ae7c[];
extern char g_0089baec[];
extern char g_0080f324[];
extern char g_0089c9e8[];
extern char g_0089cd30[];
extern char g_0089cd34[];
extern char g_0089d6fc[];
extern char g_0089d714[];
extern char g_0089a29c[];
extern char g_0080f6bc[];
extern char g_0089a2ec[];
extern char g_0080f758[];
extern char g_007c5440[];
extern char g_0089a820[];
extern char g_0089b364[];
extern char g_0089b404[];
extern char g_0089c73c[];
extern char g_0080fbe0[];
extern char g_00896fa4[];
extern char g_00896fac[];
extern char g_0080fc8c[];
extern char g_00896fd4[];
extern char g_00896fd8[];
extern char g_00897064[];
extern char g_00897068[];
extern char g_0080fe14[];
extern char g_00808554[];
extern char g_0089aae8[];
extern char g_0089ab38[];
extern char g_0089ab3c[];
extern char g_0089aca4[];
extern char g_008100f8[];
extern char g_0089ba74[];
extern char g_00899ea8[];
extern char g_00899f00[];
extern char g_0089bf28[];
extern char g_0089d074[];
extern char g_0089d194[];
extern char g_00810420[];
extern char g_0089d3cc[];
extern char g_00810480[];
extern char g_0089bf48[];
extern char g_0089bf4c[];
extern char g_0089d7d4[];
extern char g_0089d7ec[];
extern char g_0089d7fc[];
extern char g_0089d898[];
extern char g_0089d944[];
extern char g_0081082c[];
extern char g_007c4b78[];
extern char g_0089d984[];
extern char g_0089d98c[];
extern char g_0089d99c[];
extern char g_0089d9dc[];
extern char g_0089d9e4[];
extern char g_0089da0c[];
extern char g_0089da18[];
extern char g_0089dab8[];
extern char g_0089dac0[];
extern char g_008087c8[];
extern char g_0080888c[];
extern char g_00808950[];
extern char g_00808ab0[];
extern char g_00808b74[];
extern char g_00808c38[];
extern char g_007c5330[];
extern char g_007c5350[];
extern char g_007c5390[];
extern char g_007c5420[];
extern char g_0089b42c[];
extern char g_00809070[];
extern char g_00896f68[];
extern char g_00896f6c[];
extern char g_00811130[];
extern char g_0089aa2c[];
extern char g_0089ab80[];
extern char g_0089aba0[];
extern char g_0089aba4[];
extern char g_008113cc[];
extern char g_007c4828[];
extern char g_0080f200[];
extern char g_0080f480[];
extern char g_0080f5e0[];
extern char g_0080f960[];
extern char g_00810ec4[];
extern char g_007c4598[];
extern char g_007c5470[];
extern char g_007c5480[];
extern char g_0089e000[];
extern char g_0080acf0[];
extern char g_0080c380[];

// FUN_001fdb28
u32 W_1fdb28() {

    return 10989716u;
}

// FUN_001ff578
u32 W_1ff578() {
    u32 r0;
    r0 = ~0u;
    return r0;
}

// FUN_001ff5a4
u32 W_1ff5a4() {
    u32 r0;
    r0 = ~0u;
    return r0;
}
