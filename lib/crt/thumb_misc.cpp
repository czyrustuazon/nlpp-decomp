// Small Thumb-mode functions from the CTR SDK / runtime (the low addresses of .text are mostly
// Thumb). First real Thumb matches for `ctrdecomp relink` (technical.md §5.2, §6.1).
// Build: ARMCC 4.1, `--cpu=5TE --thumb -O1`. Not the game's ARM flags: this code has no v6 `mov`
// (`movs r0, r1`) and uses plain `blx`, so it is older than MPCore. `-O2 -Ospace` also works for
// most of it, but only `-O1` gets CopyU16 right.

typedef unsigned short u16;
typedef unsigned char  u8;
typedef unsigned int   u32;

// FUN_00000d0c: length of a UTF-16 string
int Utf16Len(const u16* s)
{
    int n = 0;
    while (*s != 0) { n++; s++; }
    return n;
}

// FUN_00000b06: strchr (the terminator also matches when c == 0)
char* StrChr(const char* s, int c)
{
    u8 ch = c;
    u8 d;
    s--;
    do {
        d = *++s;
        if (ch == d) return (char*)s;
    } while (d != 0);
    return 0;
}

struct Obj6b0 { u32 a, b, c, flags; };
// FUN_000006b0
u32 HasFlag80(const Obj6b0* o) { return o->flags & 0x80; }

// FUN_00000718: true when the pointer or what it points to is null
int IsNullOrEmpty(const u32* p)
{
    if (p == 0 || *p == 0) return 1;
    return 0;
}

extern void CopyWords(void* dst, const void* src, int bytes);    // FUN_001fe154 (ARM)
extern void CopyWords2(void* dst, const void* src, int bytes);   // FUN_00031848 (ARM)

// FUN_00000c10 / FUN_00000c1a: element count of 16-bit units to byte count
void CopyU16(void* dst, const void* src, int count) { CopyWords(dst, src, count * 2); }
void CopyU16b(void* dst, const void* src, int count) { CopyWords2(dst, src, count * 2); }

// FUN_00000b1c: strncat
char* StrNCat(char* d, const char* s, int n)
{
    char* p = d - 1;
    while (*++p) ;
    while (n-- != 0) {
        char c = *s++;
        *p++ = c;
        if (c == 0) return d;
    }
    *p = 0;
    return d;
}

// FUN_00000c24: wcscat for 16-bit characters
u16* WcsCat(u16* d, const u16* s)
{
    u16* r = d;
    while (*d) d++;
    u16 c;
    do { c = *s++; *d++ = c; } while (c);
    return r;
}
