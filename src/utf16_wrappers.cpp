// Small wrappers that pass a UTF-16 string's length along (callers of Utf16Len, FUN_00000d0c).
// Names are guesses. The two tail calls to unresolved weak symbols are `mov r0, r0` in retail
// (externs.toml "weak"), so the target is unknown. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
//   FUN_00504c98 WithLenArg3   FUN_0054a6b4 WithLenArg2   FUN_00585ae8 IfLen8Forward
typedef unsigned int   u32;
typedef unsigned short u16;

u32 Utf16Len(const u16*);                                        // FUN_00000d0c (Thumb)
u32 WeakTarget504cc4(void* a, const u16* b, const u16* c, u32 len);   // unresolved weak in retail
u32 WeakTarget54a6e0(void* a, const u16* b, u32 c, u32 len);         // unresolved weak in retail
u32 Forward587748(const u16* s, u32 b);                          // FUN_00587748

// FUN_00504c98
u32 WithLenArg3(void* a, const u16* b, const u16* c)
{
    return WeakTarget504cc4(a, b, c, Utf16Len(c));
}

// FUN_0054a6b4
u32 WithLenArg2(void* a, const u16* b, u32 c)
{
    return WeakTarget54a6e0(a, b, c, Utf16Len(b));
}

// FUN_00585ae8
u32 IfLen8Forward(const u16* s, u32 b)
{
    if (Utf16Len(s) != 8) return 0;
    return Forward587748(s, b);
}
