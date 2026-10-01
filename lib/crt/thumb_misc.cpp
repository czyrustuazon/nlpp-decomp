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

// ---- Added 2026-09-30 (second pass). -O2 on ARMCC 4.1 b713+ also matches the wide-string
// routines below (WcsCmp needs -O2; the same text gives score 5 at -O1). WcsCpy is the reverse:
// -O1 matches, -O2 gives 2. So the runtime is not one flag set (see technical.md §6.1.1).

// FUN_00000c40: wcscmp for 16-bit characters
int WcsCmp(const u16* a, const u16* b)
{
    while (*a != 0 && *a == *b) { a++; b++; }
    return *a - *b;
}

// FUN_00000c5c: wcsncmp. The `goto` reproduces retail's loop layout (increment block first,
// entered by a branch to the n == 0 test); every `while`/`for` spelling gives a bottom-tested loop.
int WcsNCmp(const u16* a, const u16* b, int n)
{
    goto start;
    for (;;) {
        n--; a++; b++;
    start:
        if (n == 0) return 0;
        if (*a == 0 || *a != *b) return *a - *b;
    }
}

// FUN_00000bf4: wcscpy
u16* WcsCpy(u16* d, const u16* s)
{
    u16* r = d; u16 c;
    do { c = *s++; *d++ = c; } while (c != 0);
    return r;
}

// FUN_00000d1e: case-insensitive wcscmp. FUN_001fe260 is a Thumb 16-bit-char tolower (a plain
// `bl`, so `ToLower`'s address carries bit 0 in externs.toml). Retail copies `b` to a stack slot
// (`push {r3,...}; str r1,[sp]`) and reloads it each pass; a volatile local reproduces that.
extern int ToLower(int c);
int WcsICmp(const u16* a, const u16* b)
{
    int i = 0; int d;
    const u16* volatile bv = b;
    goto start;
    for (;;) {
        i++;
    start:
        d = ToLower(a[i]) - ToLower(bv[i]);
        if (d != 0) break;
        if (a[i] == 0) break;
    }
    return d;
}
