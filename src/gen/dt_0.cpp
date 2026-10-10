// Exception-aware destructors with their cleanup pads (tools/wrapgen/dtorgen.py; technical.md section 8,
// "Exception cleanups"). Each compiles to the retail function and its .clean section; class, base and member
// names are placeholders (C_<offset>, B_<offset>, M_<destructor offset>, Wk_ = unresolved weak destructor).
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime --split_sections --exceptions
typedef unsigned u32;
struct Wk_066110_14 { ~Wk_066110_14(); u32 x_; };
struct Wk_066110_54 { ~Wk_066110_54(); u32 x_; };
struct M_5b2010 { ~M_5b2010(); u32 x_; };
struct Wk_0ce1d0_c8 { ~Wk_0ce1d0_c8(); u32 x_; };
struct Wk_0ce1d0_d4 { ~Wk_0ce1d0_d4(); u32 x_; };
struct Wk_0ce1d0_e0 { ~Wk_0ce1d0_e0(); u32 x_; };
struct Wk_0ce1d0_ec { ~Wk_0ce1d0_ec(); u32 x_; };
struct Wk_0ce1d0_f8 { ~Wk_0ce1d0_f8(); u32 x_; };
struct Wk_0ce1d0_104 { ~Wk_0ce1d0_104(); u32 x_; };
struct Wk_0ce1d0_110 { ~Wk_0ce1d0_110(); u32 x_; };
struct Wk_0ce1d0_11c { ~Wk_0ce1d0_11c(); u32 x_; };
struct Wk_0ce1d0_128 { ~Wk_0ce1d0_128(); u32 x_; };
struct Wk_0ce1d0_134 { ~Wk_0ce1d0_134(); u32 x_; };
struct Wk_0ce2d0_c8 { ~Wk_0ce2d0_c8(); u32 x_; };
struct Wk_0ce2d0_d4 { ~Wk_0ce2d0_d4(); u32 x_; };
struct Wk_0ce2d0_e0 { ~Wk_0ce2d0_e0(); u32 x_; };
struct Wk_0ce2d0_ec { ~Wk_0ce2d0_ec(); u32 x_; };
struct Wk_0ce2d0_f8 { ~Wk_0ce2d0_f8(); u32 x_; };
struct Wk_0ce2d0_104 { ~Wk_0ce2d0_104(); u32 x_; };
struct Wk_0ce2d0_110 { ~Wk_0ce2d0_110(); u32 x_; };
struct Wk_0ce2d0_11c { ~Wk_0ce2d0_11c(); u32 x_; };
struct Wk_0ce2d0_128 { ~Wk_0ce2d0_128(); u32 x_; };
struct Wk_0ce2d0_134 { ~Wk_0ce2d0_134(); u32 x_; };
struct Wk_0ce62c_c { ~Wk_0ce62c_c(); u32 x_; };
struct Wk_0ce62c_18 { ~Wk_0ce62c_18(); u32 x_; };
struct Wk_0ce62c_58 { ~Wk_0ce62c_58(); u32 x_; };
extern char g_008bfa60[];
static inline void IB_68a6e8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    r2_1 = (u32)g_008bfa60;
    r1_1 = 0u;
    *(u32*)(r2_1) = r1_1;
    return;
}
struct I_68a6e8 { ~I_68a6e8() { IB_68a6e8(); } };
struct Wk_0f4d84_60 { ~Wk_0f4d84_60(); u32 x_; };
struct Wk_0f4dc0_60 { ~Wk_0f4dc0_60(); u32 x_; };
struct Wk_11f4d4_8 { ~Wk_11f4d4_8(); u32 x_; };
struct Wk_11f4d4_14 { ~Wk_11f4d4_14(); u32 x_; };
struct M_68a2b8 { ~M_68a2b8(); u32 x_; };
struct Wk_12761c_1c { ~Wk_12761c_1c(); u32 x_; };
struct Wk_12761c_28 { ~Wk_12761c_28(); u32 x_; };
struct Wk_12761c_34 { ~Wk_12761c_34(); u32 x_; };
struct M_5a03e0 { ~M_5a03e0(); u32 x_; };
struct Wk_131904_94 { ~Wk_131904_94(); u32 x_; };
struct Wk_131904_a0 { ~Wk_131904_a0(); u32 x_; };
struct Wk_131958_94 { ~Wk_131958_94(); u32 x_; };
struct Wk_131958_a0 { ~Wk_131958_a0(); u32 x_; };
struct Wk_133a44_48 { ~Wk_133a44_48(); u32 x_; };
struct Wk_133a44_54 { ~Wk_133a44_54(); u32 x_; };
struct M_326758 { ~M_326758(); u32 x_; };
struct M_1699c8 { ~M_1699c8(); u32 x_; };
struct Wk_17b4f0_4 { ~Wk_17b4f0_4(); u32 x_; };
struct Wk_17b4f0_50 { ~Wk_17b4f0_50(); u32 x_; };
struct M_5c527c { ~M_5c527c(); u32 x_; };
struct Wk_1bc200_78 { ~Wk_1bc200_78(); u32 x_; };
struct Wk_1bc200_e0 { ~Wk_1bc200_e0(); u32 x_; };
struct Wk_1bc254_78 { ~Wk_1bc254_78(); u32 x_; };
struct Wk_1bc254_e0 { ~Wk_1bc254_e0(); u32 x_; };
struct M_2209b4 { ~M_2209b4(); u32 x_; };
struct Wk_1d36d0_78 { ~Wk_1d36d0_78(); u32 x_; };
struct Wk_1d36d0_e0 { ~Wk_1d36d0_e0(); u32 x_; };
struct M_2d57c8 { ~M_2d57c8(); u32 x_; };
struct Wk_1d36d0_124 { ~Wk_1d36d0_124(); u32 x_; };
struct M_5c8aa8 { ~M_5c8aa8(); u32 x_; };
struct Wk_1d376c_78 { ~Wk_1d376c_78(); u32 x_; };
struct Wk_1d376c_e0 { ~Wk_1d376c_e0(); u32 x_; };
struct Wk_1d376c_124 { ~Wk_1d376c_124(); u32 x_; };
struct M_1d59e8 { ~M_1d59e8(); u32 x_; };
struct M_2e57b0 { ~M_2e57b0(); u32 x_; };
struct M_2e35c0 { ~M_2e35c0(); u32 x_; };
struct M_2e5a74 { ~M_2e5a74(); u32 x_; };
struct M_2d1b48 { ~M_2d1b48(); u32 x_; };
struct Wk_2b267c_154 { ~Wk_2b267c_154(); u32 x_; };
struct Wk_2b26b8_154 { ~Wk_2b26b8_154(); u32 x_; };
struct M_2dc4ac { ~M_2dc4ac(); u32 x_; };
struct M_2d73fc { ~M_2d73fc(); u32 x_; };
struct Wk_326718_c { ~Wk_326718_c(); u32 x_; };
struct Wk_326718_48 { ~Wk_326718_48(); u32 x_; };
struct Wk_326758_c { ~Wk_326758_c(); u32 x_; };
struct Wk_326758_48 { ~Wk_326758_48(); u32 x_; };
struct Wk_343750_48 { ~Wk_343750_48(); u32 x_; };
struct Wk_34378c_48 { ~Wk_34378c_48(); u32 x_; };
struct Wk_344f54_6cc { ~Wk_344f54_6cc(); u32 x_; };
struct Wk_344f94_6cc { ~Wk_344f94_6cc(); u32 x_; };
struct Wk_34529c_48 { ~Wk_34529c_48(); u32 x_; };
struct Wk_3452d8_48 { ~Wk_3452d8_48(); u32 x_; };
extern char g_008bfaa0[];
static inline void IB_68a7b0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1;
    r2_1 = (u32)g_008bfaa0;
    r1_1 = 0u;
    *(u32*)(r2_1) = r1_1;
    return;
}
struct I_68a7b0 { ~I_68a7b0() { IB_68a7b0(); } };
struct M_3d26c4 { ~M_3d26c4(); u32 x_; };
struct Wk_452f04_18 { ~Wk_452f04_18(); u32 x_; };
struct Wk_452f04_24 { ~Wk_452f04_24(); u32 x_; };
struct Wk_4530a8_10 { ~Wk_4530a8_10(); u32 x_; };
struct Wk_4530a8_1c { ~Wk_4530a8_1c(); u32 x_; };
struct Wk_4740e8_28 { ~Wk_4740e8_28(); u32 x_; };
struct Wk_4740e8_34 { ~Wk_4740e8_34(); u32 x_; };
struct M_453ba4 { ~M_453ba4(); u32 x_; };
struct Wk_4bef84_9c { ~Wk_4bef84_9c(); u32 x_; };
struct M_11f760 { ~M_11f760(); u32 x_; };
struct Wk_4bef84_2a0 { ~Wk_4bef84_2a0(); u32 x_; };
struct M_125454 { ~M_125454(); u32 x_; };
struct M_5a0e90 { ~M_5a0e90(); u32 x_; };
struct Wk_4bef84_528 { ~Wk_4bef84_528(); u32 x_; };
struct Wk_4bef84_534 { ~Wk_4bef84_534(); u32 x_; };
struct Md_06a908 { ~Md_06a908(); u32 x_; };
struct Wk_4bef84_690 { ~Wk_4bef84_690(); u32 x_; };
struct Wk_4bef84_6a8 { ~Wk_4bef84_6a8(); u32 x_; };
struct Wk_4bef84_6b4 { ~Wk_4bef84_6b4(); u32 x_; };
struct Wk_4bef84_730 { ~Wk_4bef84_730(); u32 x_; };
struct Wk_56efc8_4 { ~Wk_56efc8_4(); u32 x_; };
struct Wk_56efc8_10 { ~Wk_56efc8_10(); u32 x_; };
struct M_02a080 { ~M_02a080(); u32 x_; };
struct Wk_5bb6dc_48 { ~Wk_5bb6dc_48(); u32 x_; };
struct Wk_5bb6dc_54 { ~Wk_5bb6dc_54(); u32 x_; };
struct Wk_5bb6dc_60 { ~Wk_5bb6dc_60(); u32 x_; };
struct Wk_5bb6dc_6c { ~Wk_5bb6dc_6c(); u32 x_; };
struct Wk_5bb6dc_78 { ~Wk_5bb6dc_78(); u32 x_; };
struct Wk_5bb6dc_84 { ~Wk_5bb6dc_84(); u32 x_; };
struct Wk_5bb6dc_90 { ~Wk_5bb6dc_90(); u32 x_; };
struct Wk_5bb6dc_9c { ~Wk_5bb6dc_9c(); u32 x_; };
struct Wk_5bb7c0_48 { ~Wk_5bb7c0_48(); u32 x_; };
struct Wk_5bb7c0_54 { ~Wk_5bb7c0_54(); u32 x_; };
struct Wk_5bb7c0_60 { ~Wk_5bb7c0_60(); u32 x_; };
struct Wk_5bb7c0_6c { ~Wk_5bb7c0_6c(); u32 x_; };
struct Wk_5bb7c0_78 { ~Wk_5bb7c0_78(); u32 x_; };
struct Wk_5bb7c0_84 { ~Wk_5bb7c0_84(); u32 x_; };
struct Wk_5bb7c0_90 { ~Wk_5bb7c0_90(); u32 x_; };
struct Wk_5bb7c0_9c { ~Wk_5bb7c0_9c(); u32 x_; };
struct Wk_5e14b8_8 { ~Wk_5e14b8_8(); u32 x_; };
struct Wk_5e14b8_14 { ~Wk_5e14b8_14(); u32 x_; };
struct M_6086c0 { ~M_6086c0(); u32 x_; };
struct Wk_60b24c_c { ~Wk_60b24c_c(); u32 x_; };
struct Wk_60b24c_18 { ~Wk_60b24c_18(); u32 x_; };
struct Wk_60c7b4_8 { ~Wk_60c7b4_8(); u32 x_; };
struct Wk_60c7b4_14 { ~Wk_60c7b4_14(); u32 x_; };
struct Wk_60c7b4_20 { ~Wk_60c7b4_20(); u32 x_; };
struct Wk_60c7b4_2c { ~Wk_60c7b4_2c(); u32 x_; };
struct Wk_60c7b4_38 { ~Wk_60c7b4_38(); u32 x_; };
struct Wk_61cad4_8 { ~Wk_61cad4_8(); u32 x_; };
struct Wk_61cad4_14 { ~Wk_61cad4_14(); u32 x_; };
struct Wk_61cb14_8 { ~Wk_61cb14_8(); u32 x_; };
struct Wk_61cb14_14 { ~Wk_61cb14_14(); u32 x_; };

// FUN_00066110 (cleanup pad 0x66130)
struct C_066110 { u32 pad_14[5]; Wk_066110_14 m_14; u32 pad_54[15]; Wk_066110_54 m_54; ~C_066110(); };
C_066110::~C_066110() {}

// FUN_0006d6b4 (cleanup pad 0x6d6dc)
struct B_06d6b4_0 { virtual ~B_06d6b4_0(); };
struct C_06d6b4 : B_06d6b4_0 { virtual void key_(); u32 pad_10c[66]; M_5b2010 m_10c; ~C_06d6b4(); };
C_06d6b4::~C_06d6b4() {}

// FUN_0006d6f0 (cleanup pad 0x6d718)
struct B_06d6f0_0 { virtual ~B_06d6f0_0(); };
struct C_06d6f0 : B_06d6f0_0 { virtual void key_(); u32 pad_10c[66]; M_5b2010 m_10c; ~C_06d6f0(); };
C_06d6f0::~C_06d6f0() {}

// FUN_000ce1d0 (cleanup pad 0xce25c)
struct C_0ce1d0 { virtual void key_(); u32 pad_c8[49]; Wk_0ce1d0_c8 m_c8; u32 pad_d4[2]; Wk_0ce1d0_d4 m_d4; u32 pad_e0[2]; Wk_0ce1d0_e0 m_e0; u32 pad_ec[2]; Wk_0ce1d0_ec m_ec; u32 pad_f8[2]; Wk_0ce1d0_f8 m_f8; u32 pad_104[2]; Wk_0ce1d0_104 m_104; u32 pad_110[2]; Wk_0ce1d0_110 m_110; u32 pad_11c[2]; Wk_0ce1d0_11c m_11c; u32 pad_128[2]; Wk_0ce1d0_128 m_128; u32 pad_134[2]; Wk_0ce1d0_134 m_134; virtual ~C_0ce1d0(); };
C_0ce1d0::~C_0ce1d0() {}

// FUN_000ce2d0 (cleanup pad 0xce35c)
struct C_0ce2d0 { virtual void key_(); u32 pad_c8[49]; Wk_0ce2d0_c8 m_c8; u32 pad_d4[2]; Wk_0ce2d0_d4 m_d4; u32 pad_e0[2]; Wk_0ce2d0_e0 m_e0; u32 pad_ec[2]; Wk_0ce2d0_ec m_ec; u32 pad_f8[2]; Wk_0ce2d0_f8 m_f8; u32 pad_104[2]; Wk_0ce2d0_104 m_104; u32 pad_110[2]; Wk_0ce2d0_110 m_110; u32 pad_11c[2]; Wk_0ce2d0_11c m_11c; u32 pad_128[2]; Wk_0ce2d0_128 m_128; u32 pad_134[2]; Wk_0ce2d0_134 m_134; virtual ~C_0ce2d0(); };
C_0ce2d0::~C_0ce2d0() {}

// FUN_000ce62c (cleanup pad 0xce658)
struct C_0ce62c { u32 pad_c[3]; Wk_0ce62c_c m_c; u32 pad_18[2]; Wk_0ce62c_18 m_18; u32 pad_58[15]; Wk_0ce62c_58 m_58; ~C_0ce62c(); };
C_0ce62c::~C_0ce62c() {}

// FUN_000f338c (cleanup pad 0xf33b0)
struct B_0f338c_0 { virtual ~B_0f338c_0(); };
struct C_0f338c : I_68a6e8, B_0f338c_0 { virtual void key_(); ~C_0f338c(); };
C_0f338c::~C_0f338c() {}

// FUN_000f33c4 (cleanup pad 0xf33e4)
struct B_0f33c4_0 { virtual ~B_0f33c4_0(); };
struct C_0f33c4 : I_68a6e8, B_0f33c4_0 { virtual void key_(); ~C_0f33c4(); };
C_0f33c4::~C_0f33c4() {}

// FUN_000f4d84 (cleanup pad 0xf4dac)
struct B_0f4d84_0 { virtual ~B_0f4d84_0(); };
struct C_0f4d84 : B_0f4d84_0 { virtual void key_(); u32 pad_60[23]; Wk_0f4d84_60 m_60; ~C_0f4d84(); };
C_0f4d84::~C_0f4d84() {}

// FUN_000f4dc0 (cleanup pad 0xf4de8)
struct B_0f4dc0_0 { virtual ~B_0f4dc0_0(); };
struct C_0f4dc0 : B_0f4dc0_0 { virtual void key_(); u32 pad_60[23]; Wk_0f4dc0_60 m_60; ~C_0f4dc0(); };
C_0f4dc0::~C_0f4dc0() {}

// FUN_0011f4d4 (cleanup pad 0x11f4f4)
struct C_11f4d4 { u32 pad_8[2]; Wk_11f4d4_8 m_8; u32 pad_14[2]; Wk_11f4d4_14 m_14; ~C_11f4d4(); };
C_11f4d4::~C_11f4d4() {}

// FUN_00120070 (cleanup pad 0x12009c)
struct C_120070 { u32 pad_10[4]; M_68a2b8 m_10; u32 pad_18[1]; M_68a2b8 m_18; u32 pad_20[1]; M_68a2b8 m_20; ~C_120070(); };
C_120070::~C_120070() {}

// FUN_0012761c (cleanup pad 0x127654)
struct C_12761c { virtual void key_(); u32 pad_1c[6]; Wk_12761c_1c m_1c; u32 pad_28[2]; Wk_12761c_28 m_28; u32 pad_34[2]; Wk_12761c_34 m_34; virtual ~C_12761c(); };
C_12761c::~C_12761c() {}

// FUN_00130374 (cleanup pad 0x13039c)
struct B_130374_0 { virtual ~B_130374_0(); };
struct C_130374 : B_130374_0 { virtual void key_(); u32 pad_48[17]; M_5a03e0 m_48; ~C_130374(); };
C_130374::~C_130374() {}

// FUN_001303b0 (cleanup pad 0x1303d8)
struct B_1303b0_0 { virtual ~B_1303b0_0(); };
struct C_1303b0 : B_1303b0_0 { virtual void key_(); u32 pad_48[17]; M_5a03e0 m_48; ~C_1303b0(); };
C_1303b0::~C_1303b0() {}

// FUN_00131904 (cleanup pad 0x131938)
struct B_131904_0 { virtual ~B_131904_0(); };
struct C_131904 : B_131904_0 { virtual void key_(); u32 pad_94[36]; Wk_131904_94 m_94; u32 pad_a0[2]; Wk_131904_a0 m_a0; ~C_131904(); };
C_131904::~C_131904() {}

// FUN_00131958 (cleanup pad 0x13198c)
struct B_131958_0 { virtual ~B_131958_0(); };
struct C_131958 : B_131958_0 { virtual void key_(); u32 pad_94[36]; Wk_131958_94 m_94; u32 pad_a0[2]; Wk_131958_a0 m_a0; ~C_131958(); };
C_131958::~C_131958() {}

// FUN_00133a44 (cleanup pad 0x133a78)
struct B_133a44_0 { virtual ~B_133a44_0(); };
struct C_133a44 : B_133a44_0 { virtual void key_(); u32 pad_48[17]; Wk_133a44_48 m_48; u32 pad_54[2]; Wk_133a44_54 m_54; ~C_133a44(); };
C_133a44::~C_133a44() {}

// FUN_0016c8ac (cleanup pad 0x16c8e0)
struct B_16c8ac_0 { virtual ~B_16c8ac_0(); };
struct C_16c8ac : B_16c8ac_0 { virtual void key_(); u32 pad_98[37]; M_326758 m_98; u32 pad_3cc[204]; M_1699c8 m_3cc; ~C_16c8ac(); };
C_16c8ac::~C_16c8ac() {}

// FUN_0016c900 (cleanup pad 0x16c934)
struct B_16c900_0 { virtual ~B_16c900_0(); };
struct C_16c900 : B_16c900_0 { virtual void key_(); u32 pad_98[37]; M_326758 m_98; u32 pad_3cc[204]; M_1699c8 m_3cc; ~C_16c900(); };
C_16c900::~C_16c900() {}

// FUN_0017b4f0 (cleanup pad 0x17b510)
struct C_17b4f0 { u32 pad_4[1]; Wk_17b4f0_4 m_4; u32 pad_50[18]; Wk_17b4f0_50 m_50; ~C_17b4f0(); };
C_17b4f0::~C_17b4f0() {}

// FUN_001959c0 (cleanup pad 0x1959e8)
struct B_1959c0_0 { virtual ~B_1959c0_0(); };
struct C_1959c0 : B_1959c0_0 { virtual void key_(); u32 pad_a8[41]; M_5c527c m_a8; ~C_1959c0(); };
C_1959c0::~C_1959c0() {}

// FUN_00195a00 (cleanup pad 0x195a28)
struct B_195a00_0 { virtual ~B_195a00_0(); };
struct C_195a00 : B_195a00_0 { virtual void key_(); u32 pad_a8[41]; M_5c527c m_a8; ~C_195a00(); };
C_195a00::~C_195a00() {}

// FUN_001bc200 (cleanup pad 0x1bc234)
struct B_1bc200_0 { virtual ~B_1bc200_0(); };
struct C_1bc200 : B_1bc200_0 { virtual void key_(); u32 pad_78[29]; Wk_1bc200_78 m_78; u32 pad_e0[25]; Wk_1bc200_e0 m_e0; ~C_1bc200(); };
C_1bc200::~C_1bc200() {}

// FUN_001bc254 (cleanup pad 0x1bc288)
struct B_1bc254_0 { virtual ~B_1bc254_0(); };
struct C_1bc254 : B_1bc254_0 { virtual void key_(); u32 pad_78[29]; Wk_1bc254_78 m_78; u32 pad_e0[25]; Wk_1bc254_e0 m_e0; ~C_1bc254(); };
C_1bc254::~C_1bc254() {}

// FUN_001c1614 (cleanup pad 0x1c163c)
struct B_1c1614_0 { virtual ~B_1c1614_0(); };
struct C_1c1614 : B_1c1614_0 { virtual void key_(); u32 pad_5c[22]; M_2209b4 m_5c; ~C_1c1614(); };
C_1c1614::~C_1c1614() {}

// FUN_001c1650 (cleanup pad 0x1c1678)
struct B_1c1650_0 { virtual ~B_1c1650_0(); };
struct C_1c1650 : B_1c1650_0 { virtual void key_(); u32 pad_5c[22]; M_2209b4 m_5c; ~C_1c1650(); };
C_1c1650::~C_1c1650() {}

// FUN_001d36d0 (cleanup pad 0x1d3728)
struct B_1d36d0_0 { virtual ~B_1d36d0_0(); };
struct C_1d36d0 : B_1d36d0_0 { virtual void key_(); u32 pad_78[29]; Wk_1d36d0_78 m_78; u32 pad_e0[25]; Wk_1d36d0_e0 m_e0; u32 pad_f4[4]; M_2d57c8 m_f4; u32 pad_124[11]; Wk_1d36d0_124 m_124; u32 pad_138[4]; M_5c8aa8 m_138; ~C_1d36d0(); };
C_1d36d0::~C_1d36d0() {}

// FUN_001d376c (cleanup pad 0x1d37c4)
struct B_1d376c_0 { virtual ~B_1d376c_0(); };
struct C_1d376c : B_1d376c_0 { virtual void key_(); u32 pad_78[29]; Wk_1d376c_78 m_78; u32 pad_e0[25]; Wk_1d376c_e0 m_e0; u32 pad_f4[4]; M_2d57c8 m_f4; u32 pad_124[11]; Wk_1d376c_124 m_124; u32 pad_138[4]; M_5c8aa8 m_138; ~C_1d376c(); };
C_1d376c::~C_1d376c() {}

// FUN_001d9cf4 (cleanup pad 0x1d9d1c)
struct B_1d9cf4_0 { virtual ~B_1d9cf4_0(); };
struct C_1d9cf4 : B_1d9cf4_0 { virtual void key_(); u32 pad_b4[44]; M_5c527c m_b4; ~C_1d9cf4(); };
C_1d9cf4::~C_1d9cf4() {}

// FUN_001d9d30 (cleanup pad 0x1d9d58)
struct B_1d9d30_0 { virtual ~B_1d9d30_0(); };
struct C_1d9d30 : B_1d9d30_0 { virtual void key_(); u32 pad_b4[44]; M_5c527c m_b4; ~C_1d9d30(); };
C_1d9d30::~C_1d9d30() {}

// FUN_002263e0 (cleanup pad 0x226408)
struct B_2263e0_0 { virtual ~B_2263e0_0(); };
struct C_2263e0 : B_2263e0_0 { virtual void key_(); u32 pad_98[37]; M_5c527c m_98; ~C_2263e0(); };
C_2263e0::~C_2263e0() {}

// FUN_0022641c (cleanup pad 0x226444)
struct B_22641c_0 { virtual ~B_22641c_0(); };
struct C_22641c : B_22641c_0 { virtual void key_(); u32 pad_98[37]; M_5c527c m_98; ~C_22641c(); };
C_22641c::~C_22641c() {}

// FUN_002274ac (cleanup pad 0x2274d4)
struct B_2274ac_0 { virtual ~B_2274ac_0(); };
struct C_2274ac : B_2274ac_0 { virtual void key_(); u32 pad_b4[44]; M_5c527c m_b4; ~C_2274ac(); };
C_2274ac::~C_2274ac() {}

// FUN_002274e8 (cleanup pad 0x227510)
struct B_2274e8_0 { virtual ~B_2274e8_0(); };
struct C_2274e8 : B_2274e8_0 { virtual void key_(); u32 pad_b4[44]; M_5c527c m_b4; ~C_2274e8(); };
C_2274e8::~C_2274e8() {}

// FUN_00232888 (cleanup pad 0x2328b0)
struct B_232888_0 { virtual ~B_232888_0(); };
struct C_232888 : B_232888_0 { virtual void key_(); u32 pad_1f0[123]; M_1d59e8 m_1f0; ~C_232888(); };
C_232888::~C_232888() {}

// FUN_002328c4 (cleanup pad 0x2328ec)
struct B_2328c4_0 { virtual ~B_2328c4_0(); };
struct C_2328c4 : B_2328c4_0 { virtual void key_(); u32 pad_1f0[123]; M_1d59e8 m_1f0; ~C_2328c4(); };
C_2328c4::~C_2328c4() {}

// FUN_002a8dac (cleanup pad 0x2a8df0)
struct C_2a8dac { virtual void key_(); u32 pad_34[12]; M_2e57b0 m_34; u32 pad_70[14]; M_2e35c0 m_70; u32 pad_ec[30]; M_2e5a74 m_ec; u32 pad_118[10]; M_2d1b48 m_118; virtual ~C_2a8dac(); };
C_2a8dac::~C_2a8dac() {}

// FUN_002a8e1c (cleanup pad 0x2a8e60)
struct C_2a8e1c { virtual void key_(); u32 pad_34[12]; M_2e57b0 m_34; u32 pad_70[14]; M_2e35c0 m_70; u32 pad_ec[30]; M_2e5a74 m_ec; u32 pad_118[10]; M_2d1b48 m_118; virtual ~C_2a8e1c(); };
C_2a8e1c::~C_2a8e1c() {}

// FUN_002b267c (cleanup pad 0x2b26a4)
struct B_2b267c_0 { virtual ~B_2b267c_0(); };
struct C_2b267c : B_2b267c_0 { virtual void key_(); u32 pad_154[84]; Wk_2b267c_154 m_154; ~C_2b267c(); };
C_2b267c::~C_2b267c() {}

// FUN_002b26b8 (cleanup pad 0x2b26e0)
struct B_2b26b8_0 { virtual ~B_2b26b8_0(); };
struct C_2b26b8 : B_2b26b8_0 { virtual void key_(); u32 pad_154[84]; Wk_2b26b8_154 m_154; ~C_2b26b8(); };
C_2b26b8::~C_2b26b8() {}

// FUN_002d9c60 (cleanup pad 0x2d9c8c)
struct C_2d9c60 { virtual void key_(); u32 pad_c[2]; M_2dc4ac m_c; u32 pad_24[5]; M_2d73fc m_24; virtual ~C_2d9c60(); };
C_2d9c60::~C_2d9c60() {}

// FUN_002d9ca0 (cleanup pad 0x2d9ccc)
struct C_2d9ca0 { virtual void key_(); u32 pad_c[2]; M_2dc4ac m_c; u32 pad_24[5]; M_2d73fc m_24; virtual ~C_2d9ca0(); };
C_2d9ca0::~C_2d9ca0() {}

// FUN_00326718 (cleanup pad 0x326744)
struct C_326718 { virtual void key_(); u32 pad_c[2]; Wk_326718_c m_c; u32 pad_48[14]; Wk_326718_48 m_48; virtual ~C_326718(); };
C_326718::~C_326718() {}

// FUN_00326758 (cleanup pad 0x326784)
struct C_326758 { virtual void key_(); u32 pad_c[2]; Wk_326758_c m_c; u32 pad_48[14]; Wk_326758_48 m_48; virtual ~C_326758(); };
C_326758::~C_326758() {}

// FUN_00343750 (cleanup pad 0x343778)
struct B_343750_0 { virtual ~B_343750_0(); };
struct C_343750 : B_343750_0 { virtual void key_(); u32 pad_48[17]; Wk_343750_48 m_48; ~C_343750(); };
C_343750::~C_343750() {}

// FUN_0034378c (cleanup pad 0x3437b4)
struct B_34378c_0 { virtual ~B_34378c_0(); };
struct C_34378c : B_34378c_0 { virtual void key_(); u32 pad_48[17]; Wk_34378c_48 m_48; ~C_34378c(); };
C_34378c::~C_34378c() {}

// FUN_00344f54 (cleanup pad 0x344f80)
struct B_344f54_0 { virtual ~B_344f54_0(); };
struct C_344f54 : B_344f54_0 { virtual void key_(); u32 pad_6cc[434]; Wk_344f54_6cc m_6cc; ~C_344f54(); };
C_344f54::~C_344f54() {}

// FUN_00344f94 (cleanup pad 0x344fc4)
struct B_344f94_0 { virtual ~B_344f94_0(); };
struct C_344f94 : B_344f94_0 { virtual void key_(); u32 pad_6cc[434]; Wk_344f94_6cc m_6cc; ~C_344f94(); };
C_344f94::~C_344f94() {}

// FUN_0034529c (cleanup pad 0x3452c4)
struct B_34529c_0 { virtual ~B_34529c_0(); };
struct C_34529c : B_34529c_0 { virtual void key_(); u32 pad_48[17]; Wk_34529c_48 m_48; ~C_34529c(); };
C_34529c::~C_34529c() {}

// FUN_003452d8 (cleanup pad 0x345300)
struct B_3452d8_0 { virtual ~B_3452d8_0(); };
struct C_3452d8 : B_3452d8_0 { virtual void key_(); u32 pad_48[17]; Wk_3452d8_48 m_48; ~C_3452d8(); };
C_3452d8::~C_3452d8() {}

// FUN_00366e98 (cleanup pad 0x366ecc)
struct B_366e98_0 { virtual ~B_366e98_0(); };
struct C_366e98 : B_366e98_0 { virtual void key_(); u32 pad_4c[18]; M_5b2010 m_4c; u32 pad_54[1]; M_5b2010 m_54; ~C_366e98(); };
C_366e98::~C_366e98() {}

// FUN_00366eec (cleanup pad 0x366f20)
struct B_366eec_0 { virtual ~B_366eec_0(); };
struct C_366eec : B_366eec_0 { virtual void key_(); u32 pad_4c[18]; M_5b2010 m_4c; u32 pad_54[1]; M_5b2010 m_54; ~C_366eec(); };
C_366eec::~C_366eec() {}

// FUN_00382018 (cleanup pad 0x38203c)
struct B_382018_0 { virtual ~B_382018_0(); };
struct C_382018 : I_68a7b0, B_382018_0 { virtual void key_(); ~C_382018(); };
C_382018::~C_382018() {}

// FUN_00382050 (cleanup pad 0x382070)
struct B_382050_0 { virtual ~B_382050_0(); };
struct C_382050 : I_68a7b0, B_382050_0 { virtual void key_(); ~C_382050(); };
C_382050::~C_382050() {}

// FUN_003cabf4 (cleanup pad 0x3cac1c)
struct B_3cabf4_0 { virtual ~B_3cabf4_0(); };
struct C_3cabf4 : B_3cabf4_0 { virtual void key_(); u32 pad_98[37]; M_3d26c4 m_98; ~C_3cabf4(); };
C_3cabf4::~C_3cabf4() {}

// FUN_00452f04 (cleanup pad 0x452f24)
struct C_452f04 { u32 pad_18[6]; Wk_452f04_18 m_18; u32 pad_24[2]; Wk_452f04_24 m_24; ~C_452f04(); };
C_452f04::~C_452f04() {}

// FUN_004530a8 (cleanup pad 0x4530c8)
struct C_4530a8 { u32 pad_10[4]; Wk_4530a8_10 m_10; u32 pad_1c[2]; Wk_4530a8_1c m_1c; ~C_4530a8(); };
C_4530a8::~C_4530a8() {}

// FUN_004740e8 (cleanup pad 0x474108)
struct C_4740e8 { u32 pad_28[10]; Wk_4740e8_28 m_28; u32 pad_34[2]; Wk_4740e8_34 m_34; ~C_4740e8(); };
C_4740e8::~C_4740e8() {}

// FUN_0047e8f0 (cleanup pad 0x47e90c)
struct B_47e8f0_0 { ~B_47e8f0_0(); };
struct C_47e8f0 : B_47e8f0_0 { u32 pad_48[18]; M_453ba4 m_48; ~C_47e8f0(); };
C_47e8f0::~C_47e8f0() {}

// FUN_004bef84 (cleanup pad 0x4bf050)
struct C_4bef84 { u32 pad_9c[39]; Wk_4bef84_9c m_9c; u32 pad_16c[51]; M_11f760 m_16c; u32 pad_2a0[76]; Wk_4bef84_2a0 m_2a0; u32 pad_2e8[17]; M_125454 m_2e8; u32 pad_4e8[127]; M_5a0e90 m_4e8; u32 pad_528[15]; Wk_4bef84_528 m_528; u32 pad_534[2]; Wk_4bef84_534 m_534; u32 pad_57c[17]; M_5a03e0 m_57c; u32 pad_590[4]; Md_06a908 m_590; u32 pad_690[63]; Wk_4bef84_690 m_690; u32 pad_6a8[5]; Wk_4bef84_6a8 m_6a8; u32 pad_6b4[2]; Wk_4bef84_6b4 m_6b4; u32 pad_6c8[4]; M_5b2010 m_6c8; u32 pad_730[25]; Wk_4bef84_730 m_730; ~C_4bef84(); };
C_4bef84::~C_4bef84() {}

// FUN_005433d4 (cleanup pad 0x5433fc)
struct B_5433d4_0 { virtual ~B_5433d4_0(); };
struct C_5433d4 : B_5433d4_0 { virtual void key_(); u32 pad_158[85]; M_5b2010 m_158; ~C_5433d4(); };
C_5433d4::~C_5433d4() {}

// FUN_00543410 (cleanup pad 0x543438)
struct B_543410_0 { virtual ~B_543410_0(); };
struct C_543410 : B_543410_0 { virtual void key_(); u32 pad_158[85]; M_5b2010 m_158; ~C_543410(); };
C_543410::~C_543410() {}

// FUN_0056efc8 (cleanup pad 0x56efe8)
struct C_56efc8 { u32 pad_4[1]; Wk_56efc8_4 m_4; u32 pad_10[2]; Wk_56efc8_10 m_10; ~C_56efc8(); };
C_56efc8::~C_56efc8() {}

// FUN_005b27a8 (cleanup pad 0x5b27c4)
struct B_5b27a8_0 { ~B_5b27a8_0(); };
struct C_5b27a8 : B_5b27a8_0 { u32 pad_4[1]; M_02a080 m_4; ~C_5b27a8(); };
C_5b27a8::~C_5b27a8() {}

// FUN_005bb6dc (cleanup pad 0x5bb758)
struct B_5bb6dc_0 { virtual ~B_5bb6dc_0(); };
struct C_5bb6dc : B_5bb6dc_0 { virtual void key_(); u32 pad_48[17]; Wk_5bb6dc_48 m_48; u32 pad_54[2]; Wk_5bb6dc_54 m_54; u32 pad_60[2]; Wk_5bb6dc_60 m_60; u32 pad_6c[2]; Wk_5bb6dc_6c m_6c; u32 pad_78[2]; Wk_5bb6dc_78 m_78; u32 pad_84[2]; Wk_5bb6dc_84 m_84; u32 pad_90[2]; Wk_5bb6dc_90 m_90; u32 pad_9c[2]; Wk_5bb6dc_9c m_9c; ~C_5bb6dc(); };
C_5bb6dc::~C_5bb6dc() {}

// FUN_005bb7c0 (cleanup pad 0x5bb83c)
struct B_5bb7c0_0 { virtual ~B_5bb7c0_0(); };
struct C_5bb7c0 : B_5bb7c0_0 { virtual void key_(); u32 pad_48[17]; Wk_5bb7c0_48 m_48; u32 pad_54[2]; Wk_5bb7c0_54 m_54; u32 pad_60[2]; Wk_5bb7c0_60 m_60; u32 pad_6c[2]; Wk_5bb7c0_6c m_6c; u32 pad_78[2]; Wk_5bb7c0_78 m_78; u32 pad_84[2]; Wk_5bb7c0_84 m_84; u32 pad_90[2]; Wk_5bb7c0_90 m_90; u32 pad_9c[2]; Wk_5bb7c0_9c m_9c; ~C_5bb7c0(); };
C_5bb7c0::~C_5bb7c0() {}

// FUN_005e14b8 (cleanup pad 0x5e14d8)
struct C_5e14b8 { u32 pad_8[2]; Wk_5e14b8_8 m_8; u32 pad_14[2]; Wk_5e14b8_14 m_14; ~C_5e14b8(); };
C_5e14b8::~C_5e14b8() {}

// FUN_005f5ab8 (cleanup pad 0x5f5ae0)
struct B_5f5ab8_0 { virtual ~B_5f5ab8_0(); };
struct C_5f5ab8 : B_5f5ab8_0 { virtual void key_(); u32 pad_3c[14]; M_6086c0 m_3c; ~C_5f5ab8(); };
C_5f5ab8::~C_5f5ab8() {}

// FUN_005f5af4 (cleanup pad 0x5f5b1c)
struct B_5f5af4_0 { virtual ~B_5f5af4_0(); };
struct C_5f5af4 : B_5f5af4_0 { virtual void key_(); u32 pad_3c[14]; M_6086c0 m_3c; ~C_5f5af4(); };
C_5f5af4::~C_5f5af4() {}

// FUN_005f5f34 (cleanup pad 0x5f5f5c)
struct B_5f5f34_0 { virtual ~B_5f5f34_0(); };
struct C_5f5f34 : B_5f5f34_0 { virtual void key_(); u32 pad_38[13]; M_6086c0 m_38; ~C_5f5f34(); };
C_5f5f34::~C_5f5f34() {}

// FUN_005f5f70 (cleanup pad 0x5f5f98)
struct B_5f5f70_0 { virtual ~B_5f5f70_0(); };
struct C_5f5f70 : B_5f5f70_0 { virtual void key_(); u32 pad_38[13]; M_6086c0 m_38; ~C_5f5f70(); };
C_5f5f70::~C_5f5f70() {}

// FUN_005fb910 (cleanup pad 0x5fb938)
struct B_5fb910_0 { virtual ~B_5fb910_0(); };
struct C_5fb910 : B_5fb910_0 { virtual void key_(); u32 pad_3c[14]; M_6086c0 m_3c; ~C_5fb910(); };
C_5fb910::~C_5fb910() {}

// FUN_005fb94c (cleanup pad 0x5fb974)
struct B_5fb94c_0 { virtual ~B_5fb94c_0(); };
struct C_5fb94c : B_5fb94c_0 { virtual void key_(); u32 pad_3c[14]; M_6086c0 m_3c; ~C_5fb94c(); };
C_5fb94c::~C_5fb94c() {}

// FUN_0060b24c (cleanup pad 0x60b26c)
struct C_60b24c { u32 pad_c[3]; Wk_60b24c_c m_c; u32 pad_18[2]; Wk_60b24c_18 m_18; ~C_60b24c(); };
C_60b24c::~C_60b24c() {}

// FUN_0060c7b4 (cleanup pad 0x60c7f8)
struct C_60c7b4 { u32 pad_8[2]; Wk_60c7b4_8 m_8; u32 pad_14[2]; Wk_60c7b4_14 m_14; u32 pad_20[2]; Wk_60c7b4_20 m_20; u32 pad_2c[2]; Wk_60c7b4_2c m_2c; u32 pad_38[2]; Wk_60c7b4_38 m_38; ~C_60c7b4(); };
C_60c7b4::~C_60c7b4() {}

// FUN_0061cad4 (cleanup pad 0x61cb00)
struct C_61cad4 { virtual void key_(); u32 pad_8[1]; Wk_61cad4_8 m_8; u32 pad_14[2]; Wk_61cad4_14 m_14; virtual ~C_61cad4(); };
C_61cad4::~C_61cad4() {}

// FUN_0061cb14 (cleanup pad 0x61cb40)
struct C_61cb14 { virtual void key_(); u32 pad_8[1]; Wk_61cb14_8 m_8; u32 pad_14[2]; Wk_61cb14_14 m_14; virtual ~C_61cb14(); };
C_61cb14::~C_61cb14() {}
