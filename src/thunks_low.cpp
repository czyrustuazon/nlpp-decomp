// Two small adjusting wrappers: the callee works on a sub-object at +4 and the wrapper converts
// back. Names and types are guesses. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
//   FUN_00029f74 AdjustedCall   FUN_00366a7c ConstructSub
typedef unsigned int u32;

char* Sub2a080(char* sub);                       // FUN_0002a080
char* Sub5a221c(char* sub, char* arg);           // FUN_005a221c
extern const char g_SubVtbl[];                   // VA 0x0082DF5C

// FUN_00029f74
char* AdjustedCall(char* p)
{
    return Sub2a080(p + 4) - 4;
}

// FUN_00366a7c
char* ConstructSub(char* p, char* arg)
{
    char* sub = p + 4;
    char* a = arg + 0x50;
    char* r = Sub5a221c(sub, a);
    *(const char**)(r - 4) = g_SubVtbl;
    return r;
}
