// Static-initializer helpers: zero a global, construct it, and register its destructor with
// __cxa_atexit-style FUN_00203d78 (the third argument is the DSO handle, VA 0x00100000).
// Names and types are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
// Keeping the address in a local pointer (`G* p = &g`) makes ARMCC hold it in r4 across the
// calls like retail; using `g` directly rematerializes the literal (score 8).
typedef unsigned int u32;

struct G { u32 x; };
void Fn_01b624(G* p);                                        // FUN_0001b624
void Fn_203d78(G* obj, void (*dtor)(G*), void* dso);         // FUN_00203d78
extern char g_DsoHandle[];                                   // VA 0x00100000
void DtorF55f4(G*);                                          // VA 0x005F55F4
extern G g_9a0f68, g_9a0ec4, g_9aea08;

// FUN_0064d08c
void StaticInit64d08c()
{
    G* p = &g_9a0f68;
    *(u32*)p = 0;
    Fn_01b624(p);
    Fn_203d78(p, DtorF55f4, g_DsoHandle);
}
// FUN_0064fab0
void StaticInit64fab0()
{
    G* p = &g_9a0ec4;
    *(u32*)p = 0;
    Fn_01b624(p);
    Fn_203d78(p, DtorF55f4, g_DsoHandle);
}
// FUN_0065276c
void StaticInit65276c()
{
    G* p = &g_9aea08;
    *(u32*)p = 0;
    Fn_01b624(p);
    Fn_203d78(p, DtorF55f4, g_DsoHandle);
}

// FUN_00650860 and FUN_00653908 (Sub2a070 + vptr at r - 4 + atexit) score 3: retail uses the
// writeback `str r2, [r0, #-4]!` after the +4 store, ours stores the vptr first. Not registered.
