// Exception-aware destructors with their cleanup pads (tools/wrapgen/dtorgen.py; technical.md section 8,
// "Exception cleanups"). Each compiles to the retail function and its .clean section; class, base and member
// names are placeholders (C_<offset>, B_<offset>, M_<destructor offset>, Wk_ = unresolved weak destructor).
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008055bc[];
struct PGuard_ { virtual ~PGuard_() {} };
u32 Fn_029ed4_2(u32, u32);
extern char g_00805cb8[];
extern char g_00805ecc[];
extern char g_0080757c[];
u32 Fn_1fcd88_0();
u32 Fn_2024b0_0();
u32 Fn_1fcd88_1(u32);
extern char g_008075ac[];
extern char g_00807c98[];
extern char g_003aaf08[];
extern char g_0081bba4[];
u32 Fn_202758_2(u32, u32);
extern char g_0081bbc4[];
extern char g_0081d234[];
extern char g_0081f9f8[];
extern char g_0081fa30[];
extern char g_0081fa88[];
extern char g_0081fb00[];
extern char g_0081fb28[];
extern char g_0081fb60[];
extern char g_0081fc00[];
extern char g_0081fcd8[];
extern char g_0081fd00[];
extern char g_008200e0[];
extern char g_00820108[];
extern char g_008201c8[];
extern char g_008201f0[];
extern char g_00820248[];
extern char g_00820270[];
extern char g_008202a8[];
extern char g_008203c0[];
extern char g_00820468[];
extern char g_008204a0[];
extern char g_008204c8[];

// FUN_0007f79c (cleanup pad 0x7f7d4)
struct B_07f79c { virtual ~B_07f79c() {} };
struct C_07f79c : B_07f79c { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_07f79c(); };
C_07f79c::~C_07f79c() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008055bc;
    if (r0 == 0u) goto L_7f7c8;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_7f7c8:;
    r0 = a0;
    return;
}

// FUN_000e4608 (cleanup pad 0xe4640)
struct B_0e4608 { virtual ~B_0e4608() {} };
struct C_0e4608 : B_0e4608 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_0e4608(); };
C_0e4608::~C_0e4608() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_00805cb8;
    if (r0 == 0u) goto L_e4634;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_e4634:;
    r0 = a0;
    return;
}

// FUN_000ea1b4 (cleanup pad 0xea1ec)
struct B_0ea1b4 { virtual ~B_0ea1b4() {} };
struct C_0ea1b4 : B_0ea1b4 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_0ea1b4(); };
C_0ea1b4::~C_0ea1b4() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_00805ecc;
    if (r0 == 0u) goto L_ea1e0;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_ea1e0:;
    r0 = a0;
    return;
}

// FUN_0015c5f8 (cleanup pad 0x15c668)
struct B_15c5f8 { virtual ~B_15c5f8() {} };
struct C_15c5f8 : B_15c5f8 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_15c5f8(); };
C_15c5f8::~C_15c5f8() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    PGuard_ g_;
    r1 = (u32)g_0080757c;
    r0 = f_c;
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15c658;
    L_15c61c:;
    r0 = f_c;
    r0 = *(u32*)(r0 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa == fb) goto L_15c638;
    r0 = Fn_1fcd88_0();
    r0 = f_c;
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15c638:;
    r4 = r4 + 1u;
    if (r4 < 8u) goto L_15c61c;
    r0 = f_c;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_15c658;
    r0 = Fn_1fcd88_0();
    f_c = r6;
    L_15c658:;
    r0 = a0;
    return;
}

// FUN_0015c670 (cleanup pad 0x15c6dc)
struct B_15c670 { virtual ~B_15c670() {} };
struct C_15c670 : B_15c670 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_15c670(); };
C_15c670::~C_15c670() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    PGuard_ g_;
    r0 = (u32)g_0080757c;
    r0 = f_c;
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15c6d0;
    L_15c694:;
    r0 = f_c;
    r0 = *(u32*)(r0 + (r4 << 2));
    if (r0 == 0u) goto L_15c6b0;
    r0 = Fn_1fcd88_1(r0);
    r0 = f_c;
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15c6b0:;
    r4 = r4 + 1u;
    if (r4 < 8u) goto L_15c694;
    r0 = f_c;
    if (r0 == 0u) goto L_15c6d0;
    r0 = Fn_1fcd88_1(r0);
    f_c = r6;
    L_15c6d0:;
    r0 = a0;
    return;
}

// FUN_0015cbd8 (cleanup pad 0x15cc48)
struct B_15cbd8 { virtual ~B_15cbd8() {} };
struct C_15cbd8 : B_15cbd8 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_15cbd8(); };
C_15cbd8::~C_15cbd8() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    PGuard_ g_;
    r1 = (u32)g_008075ac;
    r0 = f_c;
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15cc38;
    L_15cbfc:;
    r0 = f_c;
    r0 = *(u32*)(r0 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa == fb) goto L_15cc18;
    r0 = Fn_1fcd88_0();
    r0 = f_c;
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15cc18:;
    r4 = r4 + 1u;
    if (r4 < 4u) goto L_15cbfc;
    r0 = f_c;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_15cc38;
    r0 = Fn_1fcd88_0();
    f_c = r6;
    L_15cc38:;
    r0 = a0;
    return;
}

// FUN_0015cc50 (cleanup pad 0x15ccbc)
struct B_15cc50 { virtual ~B_15cc50() {} };
struct C_15cc50 : B_15cc50 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_15cc50(); };
C_15cc50::~C_15cc50() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    PGuard_ g_;
    r0 = (u32)g_008075ac;
    r0 = f_c;
    fa = r0; fb = 0u;
    if (fa != fb) r4 = 0u;
    if (fa != fb) r6 = r4;
    if (fa == fb) goto L_15ccb0;
    L_15cc74:;
    r0 = f_c;
    r0 = *(u32*)(r0 + (r4 << 2));
    if (r0 == 0u) goto L_15cc90;
    r0 = Fn_1fcd88_1(r0);
    r0 = f_c;
    *(u32*)(r0 + (r4 << 2)) = r6;
    L_15cc90:;
    r4 = r4 + 1u;
    if (r4 < 4u) goto L_15cc74;
    r0 = f_c;
    if (r0 == 0u) goto L_15ccb0;
    r0 = Fn_1fcd88_1(r0);
    f_c = r6;
    L_15ccb0:;
    r0 = a0;
    return;
}

// FUN_0018b094 (cleanup pad 0x18b0cc)
struct B_18b094 { virtual ~B_18b094() {} };
struct C_18b094 : B_18b094 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_18b094(); };
C_18b094::~C_18b094() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_00807c98;
    if (r0 == 0u) goto L_18b0c0;
    r1 = 1u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_18b0c0:;
    r0 = a0;
    return;
}

// FUN_002a3764 (cleanup pad 0x2a37a0)
struct B_2a3764 { virtual ~B_2a3764() {} };
struct C_2a3764 : B_2a3764 { virtual void key_(); u8 pad_14[16]; u32 f_14; ~C_2a3764(); };
C_2a3764::~C_2a3764() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    PGuard_ g_;
    r0 = (u32)g_0081bba4;
    r0 = f_14;
    if (r0 == 0u) goto L_2a3790;
    r1 = (u32)g_003aaf08;
    r0 = Fn_202758_2(r0, r1);
    r0 = 0u;
    f_14 = r0;
    L_2a3790:;
    r0 = a0;
    return;
}

// FUN_002a4034 (cleanup pad 0x2a406c)
struct B_2a4034 { virtual ~B_2a4034() {} };
struct C_2a4034 : B_2a4034 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_2a4034(); };
C_2a4034::~C_2a4034() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    PGuard_ g_;
    r0 = (u32)g_0081bbc4;
    r0 = f_c;
    if (r0 == 0u) goto L_2a4060;
    r1 = 0u;
    r0 = Fn_029ed4_2(r0, r1);
    r0 = 0u;
    f_c = r0;
    L_2a4060:;
    r0 = a0;
    return;
}

// FUN_002e67f0 (cleanup pad 0x2e6828)
struct B_2e67f0 { virtual ~B_2e67f0() {} };
struct C_2e67f0 : B_2e67f0 { virtual void key_(); u8 pad_48[68]; u32 f_48; ~C_2e67f0(); };
C_2e67f0::~C_2e67f0() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_48;
    r1 = (u32)g_0081d234;
    if (r0 == 0u) goto L_2e681c;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_48 = r0;
    L_2e681c:;
    r0 = a0;
    return;
}

// FUN_003825bc (cleanup pad 0x3825f4)
struct B_3825bc { virtual ~B_3825bc() {} };
struct C_3825bc : B_3825bc { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_3825bc(); };
C_3825bc::~C_3825bc() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081f9f8;
    if (r0 == 0u) goto L_3825e8;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_3825e8:;
    r0 = a0;
    return;
}

// FUN_003833e4 (cleanup pad 0x38341c)
struct B_3833e4 { virtual ~B_3833e4() {} };
struct C_3833e4 : B_3833e4 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_3833e4(); };
C_3833e4::~C_3833e4() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fa30;
    if (r0 == 0u) goto L_383410;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_383410:;
    r0 = a0;
    return;
}

// FUN_003845f8 (cleanup pad 0x384630)
struct B_3845f8 { virtual ~B_3845f8() {} };
struct C_3845f8 : B_3845f8 { virtual void key_(); u8 pad_18[20]; u32 f_18; ~C_3845f8(); };
C_3845f8::~C_3845f8() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_18;
    r1 = (u32)g_0081fa88;
    if (r0 == 0u) goto L_384624;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_18 = r0;
    L_384624:;
    r0 = a0;
    return;
}

// FUN_00385d68 (cleanup pad 0x385da0)
struct B_385d68 { virtual ~B_385d68() {} };
struct C_385d68 : B_385d68 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_385d68(); };
C_385d68::~C_385d68() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fb00;
    if (r0 == 0u) goto L_385d94;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_385d94:;
    r0 = a0;
    return;
}

// FUN_00386528 (cleanup pad 0x386560)
struct B_386528 { virtual ~B_386528() {} };
struct C_386528 : B_386528 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_386528(); };
C_386528::~C_386528() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fb28;
    if (r0 == 0u) goto L_386554;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_386554:;
    r0 = a0;
    return;
}

// FUN_00386bc4 (cleanup pad 0x386bfc)
struct B_386bc4 { virtual ~B_386bc4() {} };
struct C_386bc4 : B_386bc4 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_386bc4(); };
C_386bc4::~C_386bc4() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fb60;
    if (r0 == 0u) goto L_386bf0;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_386bf0:;
    r0 = a0;
    return;
}

// FUN_00388300 (cleanup pad 0x388338)
struct B_388300 { virtual ~B_388300() {} };
struct C_388300 : B_388300 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_388300(); };
C_388300::~C_388300() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fc00;
    if (r0 == 0u) goto L_38832c;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_38832c:;
    r0 = a0;
    return;
}

// FUN_0038b534 (cleanup pad 0x38b56c)
struct B_38b534 { virtual ~B_38b534() {} };
struct C_38b534 : B_38b534 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_38b534(); };
C_38b534::~C_38b534() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fcd8;
    if (r0 == 0u) goto L_38b560;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_38b560:;
    r0 = a0;
    return;
}

// FUN_0038b964 (cleanup pad 0x38b99c)
struct B_38b964 { virtual ~B_38b964() {} };
struct C_38b964 : B_38b964 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_38b964(); };
C_38b964::~C_38b964() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_0081fd00;
    if (r0 == 0u) goto L_38b990;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_38b990:;
    r0 = a0;
    return;
}

// FUN_0039237c (cleanup pad 0x3923b4)
struct B_39237c { virtual ~B_39237c() {} };
struct C_39237c : B_39237c { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_39237c(); };
C_39237c::~C_39237c() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008200e0;
    if (r0 == 0u) goto L_3923a8;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_3923a8:;
    r0 = a0;
    return;
}

// FUN_0039288c (cleanup pad 0x3928c4)
struct B_39288c { virtual ~B_39288c() {} };
struct C_39288c : B_39288c { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_39288c(); };
C_39288c::~C_39288c() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_00820108;
    if (r0 == 0u) goto L_3928b8;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_3928b8:;
    r0 = a0;
    return;
}

// FUN_003958dc (cleanup pad 0x395914)
struct B_3958dc { virtual ~B_3958dc() {} };
struct C_3958dc : B_3958dc { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_3958dc(); };
C_3958dc::~C_3958dc() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008201c8;
    if (r0 == 0u) goto L_395908;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_395908:;
    r0 = a0;
    return;
}

// FUN_00395ebc (cleanup pad 0x395ef4)
struct B_395ebc { virtual ~B_395ebc() {} };
struct C_395ebc : B_395ebc { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_395ebc(); };
C_395ebc::~C_395ebc() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008201f0;
    if (r0 == 0u) goto L_395ee8;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_395ee8:;
    r0 = a0;
    return;
}

// FUN_00397190 (cleanup pad 0x3971c8)
struct B_397190 { virtual ~B_397190() {} };
struct C_397190 : B_397190 { virtual void key_(); u8 pad_c[8]; u32 f_c; u8 f_10; ~C_397190(); };
C_397190::~C_397190() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_00820248;
    if (r0 == 0u) goto L_3971bc;
    r1 = f_10;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_3971bc:;
    r0 = a0;
    return;
}

// FUN_003979b8 (cleanup pad 0x3979f0)
struct B_3979b8 { virtual ~B_3979b8() {} };
struct C_3979b8 : B_3979b8 { virtual void key_(); u8 pad_c[8]; u32 f_c; u8 f_10; ~C_3979b8(); };
C_3979b8::~C_3979b8() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_00820270;
    if (r0 == 0u) goto L_3979e4;
    r1 = f_10;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_3979e4:;
    r0 = a0;
    return;
}

// FUN_00398fb8 (cleanup pad 0x398ff0)
struct B_398fb8 { virtual ~B_398fb8() {} };
struct C_398fb8 : B_398fb8 { virtual void key_(); u8 pad_c[8]; u32 f_c; u8 f_10; ~C_398fb8(); };
C_398fb8::~C_398fb8() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008202a8;
    if (r0 == 0u) goto L_398fe4;
    r1 = f_10;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_398fe4:;
    r0 = a0;
    return;
}

// FUN_0039ce98 (cleanup pad 0x39ced0)
struct B_39ce98 { virtual ~B_39ce98() {} };
struct C_39ce98 : B_39ce98 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_39ce98(); };
C_39ce98::~C_39ce98() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008203c0;
    if (r0 == 0u) goto L_39cec4;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_39cec4:;
    r0 = a0;
    return;
}

// FUN_0039e394 (cleanup pad 0x39e3cc)
struct B_39e394 { virtual ~B_39e394() {} };
struct C_39e394 : B_39e394 { virtual void key_(); u8 pad_14[16]; u32 f_14; ~C_39e394(); };
C_39e394::~C_39e394() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_14;
    r1 = (u32)g_00820468;
    if (r0 == 0u) goto L_39e3c0;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_14 = r0;
    L_39e3c0:;
    r0 = a0;
    return;
}

// FUN_0039e9d8 (cleanup pad 0x39ea10)
struct B_39e9d8 { virtual ~B_39e9d8() {} };
struct C_39e9d8 : B_39e9d8 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_39e9d8(); };
C_39e9d8::~C_39e9d8() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008204a0;
    if (r0 == 0u) goto L_39ea04;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_39ea04:;
    r0 = a0;
    return;
}

// FUN_0039eeb0 (cleanup pad 0x39eee8)
struct B_39eeb0 { virtual ~B_39eeb0() {} };
struct C_39eeb0 : B_39eeb0 { virtual void key_(); u8 pad_c[8]; u32 f_c; ~C_39eeb0(); };
C_39eeb0::~C_39eeb0() {
    u32 a0 = (u32)this;
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = f_c;
    r1 = (u32)g_008204c8;
    if (r0 == 0u) goto L_39eedc;
    r1 = 0u;
    { PGuard_ g_; r0 = Fn_029ed4_2(r0, r1); }
    r0 = 0u;
    f_c = r0;
    L_39eedc:;
    r0 = a0;
    return;
}
