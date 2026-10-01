// First pointer-table [[data]] entry (technical.md §6.1.1): a real vtable-shaped table of seven
// ARM function pointers in .rodata (file 0x69edf0, VA 0x0079EDF0). Seven ABS32 relocations,
// checked by `relink`, which recomputes each word from externs.toml. The callees are not matched;
// they are declared by address only. Slots 1, 2, 4, 5 and 6 point at tiny shared stubs
// (VA 0x004671d4, 0x00467198, 0x004671dc, 0x00467190, 0x004671e4) that many vtables reuse
// (probably "pure virtual" / default handlers), and slots 0 and 3 are class-specific.

extern "C" {
void FUN_00572c24(void);
void FUN_003671d4(void);
void FUN_00367198(void);
void FUN_00572bd4(void);
void FUN_003671dc(void);
void FUN_00367190(void);
void FUN_003671e4(void);
}

typedef void (*Fn)(void);

extern "C" const Fn g_Vtbl_79EDF0[7] = {
    FUN_00572c24, FUN_003671d4, FUN_00367198, FUN_00572bd4,
    FUN_003671dc, FUN_00367190, FUN_003671e4,
};
