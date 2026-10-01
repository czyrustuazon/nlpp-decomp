// Tiny tail-call and forwarding wrappers above 0x500000. Names and types are guesses.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;

void  Fn_01b624(char* p);                       // FUN_0001b624
void  Fn_01b404(char* p);                       // FUN_0001b404
void  Fn_024380(char* p);                       // FUN_00024380
void  Fn_01b4d4(char* p);                       // FUN_0001b4d4
void  Fn_20004c(char* d, const char* s, u32 n); // FUN_0020004c (memcpy-like)
void  Fn_202b20(char* d, char* s, u32 n);       // FUN_00202b20
void  Fn_44d370(char* p, u32 v);                // FUN_0044d370
char* Fn_01a174(char* p);                       // FUN_0001a174
void  ZeroFill(void* p, u32 n);                 // FUN_001fddd8
char* TableEntry(u32 i);                        // FUN_005a2844 (src/misc_hi.cpp)
char* VptrCtor5b33f0(char* p);                  // FUN_005b33f0 (src/thunks_hi.cpp)
extern char g_8a8294[];
extern char g_8c2440[];
extern char g_8c54b4[];
extern char g_8c5cb0[];
extern const char g_SubVtbl[];                  // VA 0x0082DF5C

// FUN_0055e330, FUN_00562830, FUN_0068560c
void Fwd55e330(char* p) { Fn_01b624(p + 0x1c4); }
void Fwd562830(char* p) { Fn_01b404(p + 4); }
void Fwd68560c(char* p) { Fn_01b404(*(char**)(p + 0x10)); }

// FUN_005d6e4c, FUN_005d6e58
void FwdGlobal5d6e4c() { Fn_024380(g_8a8294); }
void FwdGlobal5d6e58() { Fn_01b4d4(g_8a8294); }

// FUN_005cb758, FUN_005cfee4: copy a static table into p; FUN_005cbd84, FUN_005d03f4, FUN_005d1690: out of it
void CopyIn5cb758(char* p) { Fn_20004c(p, g_8c2440, 0x3074); }
void CopyIn5cfee4(char* p) { Fn_20004c(p, g_8c54b4, 0x7fc); }
void CopyOut5cbd84(char* p) { Fn_20004c(g_8c2440, p, 0x3074); }
void CopyOut5d03f4(char* p) { Fn_20004c(g_8c54b4, p, 0x7fc); }
void CopyOut5d1690(char* p) { Fn_20004c(g_8c5cb0, p, 0x1944); }

// FUN_005dbdf4
void Clear5dbdf4(char* p) { ZeroFill(p + 0x44, 0x50); }

// FUN_0062ec20, FUN_0062ec38
void Fwd62ec20(char* p) { Fn_44d370(*(char**)(p + 0xd0), 0); }
void Fwd62ec38(char* p) { Fn_44d370(*(char**)(p + 0xd0), 10); }

// FUN_0059d1f4
char* ReturnThis59d1f4(char* p) { Fn_01a174(p); return p; }

// FUN_005b1fdc
char* VptrCtor5b1fdc(char* p)
{
    char* r = VptrCtor5b33f0(p);
    *(const char**)r = g_SubVtbl;
    return r;
}

// FUN_005dd710
bool Fwd5dd710(char* p) { Fn_01b624(p + 0x30); return true; }

// FUN_0062f4b8
char* TableEntry54(void) { return TableEntry(1) + 0x54; }

// FUN_00632934, FUN_00642a50
void Fwd632934(char* a, char* b) { Fn_202b20(b, a, 0x70); }
void Fwd642a50(char* a, char* b) { Fn_20004c(b, a + 4, 0x39); }
