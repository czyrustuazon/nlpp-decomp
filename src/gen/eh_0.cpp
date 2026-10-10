// Exception-aware matches (technical.md section 8, "Exception cleanups"): the retail function has an .ARM.extab entry
// and a cleanup pad right after it. The pad is ARMCC's `.clean` section for locals/members with destructors, so the
// source declares those objects instead of calling the destructors by hand. Names are placeholders (<kind>_<offset>).
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned u32;
void Fn_06a7a4(void*);

// FUN_0006a908 (cleanup pad 0x6a924): destructor; the member at +4 has an unresolved weak destructor (`mov r0, r0`)
struct M_06a908 { ~M_06a908(); u32 x; };
struct C_06a908 { u32 a; M_06a908 m; ~C_06a908(); };
C_06a908::~C_06a908() { Fn_06a7a4(this); }
