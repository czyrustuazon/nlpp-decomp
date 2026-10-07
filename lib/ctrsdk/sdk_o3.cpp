// CTR SDK functions (tools/sdk_classify.py, symbols/sdk_candidates.csv), matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
extern char g_008aadf4[];
extern char g_008aadf0[];
extern char g_0082d8f8[];
u32 Fn_00ec08_1(u32);
extern char g_008aac58[];
extern char g_008b84fc[];
extern char g_009b0c40[];
u32 Fn_00feb0_4(u32, u32, u32, u32);
extern char g_009b99b4[];
u32 Fn_00feb0_3(u32, u32, u32);
extern char g_009a3dcc[];
extern char g_008a8294[];
u32 Fn_01b404_1(u32);
extern char g_009a1410[];
extern char g_009a1400[];
extern char g_009a13f8[];
extern char g_008b7cd0[];
extern char g_008ab8e0[];
extern char g_008ab8c8[];
extern char g_008ab910[];
extern char g_009ad8c0[];
extern char g_009b5194[];
u32 Fn_016384_3(u32, u32, u32);
extern char g_009a1408[];
extern char g_0082d924[];
extern char g_008ab500[];
extern char g_008aabb0[];
u32 Fn_024800_1(u32);
extern char g_009a4770[];
u32 Fn_0244c8_1(u32);
u32 Fn_024568_1(u32);
extern char g_008ab8a4[];
u32 Fn_01b4d4_1(u32);
u32 Fn_01b274_1(u32);
extern char g_008b7ce4[];
u32 Fn_030be8_2(u32, u32);
extern char g_008bb884[];
extern char g_008bb8c0[];
u32 Fn_03eb50_2(u32, u32);
extern char g_008bb88c[];
extern char g_008bb848[];
extern char g_009e37f8[];
u32 Fn_01a4d4_2(u32, u32);
extern char g_008a7db8[];
extern char g_009df3e0[];
u32 Fn_56e744_1(u32);
u32 Fn_56e7b4_1(u32);
u32 Fn_622434_1(u32);
u32 Fn_637090_2(u32, u32);
u32 Fn_2024b0_1(u32);
u32 Fn_4e019c_1(u32);
extern char g_00805088[];
u32 Fn_05ce0c_1(u32);
extern char g_00805104[];
u32 Fn_4e019c_2(u32, u32);
u32 Fn_067f10_1(u32);
u32 Fn_27792c_1(u32);
u32 Fn_06aa80_1(u32);
void Fn_06ba10(void*);
void Fn_06a954(void*);
u32 Fn_5bc8c0_1(u32);
u32 Fn_06d174_1(u32);
u32 Fn_06e93c_3(u32, u32, u32);
extern char g_00805330[];
u32 Fn_008010_2(u32, u32);
u32 Fn_072ba8_1(u32);
extern char g_008bfa58[];
u32 Fn_4e019c_3(u32, u32, u32);
extern char g_00805420[];
u32 Fn_29da8c_1(u32);
u32 Fn_29db28_1(u32);
extern char g_00805450[];
u32 Fn_07d9bc_1(u32);
extern char g_008054d8[];
u32 Fn_5a59ac_2(u32, u32);
u32 Fn_0841f0_1(u32);
u32 Fn_5bed38_1(u32);
u32 Fn_5bede8_1(u32);
u32 Fn_5bf014_1(u32);
extern char g_00805800[];
u32 Fn_0d92f8_4(u32, u32, u32, u32);
u32 Fn_0d9cf4_4(u32, u32, u32, u32);
u32 Fn_0da0d8_3(u32, u32, u32);
u32 Fn_0db568_3(u32, u32, u32);
u32 Fn_0db734_3(u32, u32, u32);
u32 Fn_0d281c_3(u32, u32, u32);
u32 Fn_0d3334_4(u32, u32, u32, u32);
u32 Fn_0d4394_4(u32, u32, u32, u32);
u32 Fn_0d4848_4(u32, u32, u32, u32);
u32 Fn_0d9090_4(u32, u32, u32, u32);
u32 Fn_0dc800_1(u32);
u32 Fn_5aeef0_1(u32);
u32 Fn_5f0788_1(u32);
u32 Fn_0de6d4_1(u32);
extern char g_00805a24[];
u32 Fn_304b18_1(u32);
u32 Fn_5f2870_1(u32);
extern char g_008918dc[];
u32 Fn_5be9ac_1(u32);
u32 Fn_5be9d8_1(u32);
u32 Fn_5bead0_1(u32);
u32 Fn_61d3a8_1(u32);
u32 Fn_0e3a80_1(u32);
u32 Fn_2f5190_1(u32);
u32 Fn_0e5e60_1(u32);
u32 Fn_0e5f38_1(u32);
extern char g_008bfa54[];
u32 Fn_357f74_2(u32, u32);
extern char g_008bfa5c[];
u32 Fn_2024b0_3(u32, u32, u32);
extern char g_008bfa6c[];
u32 Fn_12dfc0_1(u32);
u32 Fn_5d6758_1(u32);
u32 Fn_048d8c_2(u32, u32);
extern char g_008bfa70[];
u32 Fn_4e0198_3(u32, u32, u32);
u32 Fn_4b8f04_1(u32);
u32 Fn_4b8f58_1(u32);
u32 Fn_0ffb1c_1(u32);
u32 Fn_1001ec_2(u32, u32);
u32 Fn_44b930_1(u32);
u32 Fn_415c3c_1(u32);
void Fn_4e0050();
extern char g_00804ab0[];
u32 Fn_5b1548_2(u32, u32);
u32 Fn_551538_1(u32);
u32 Fn_551d28_1(u32);
u32 Fn_5542c8_1(u32);
u32 Fn_4e76c8_1(u32);
u32 Fn_4e7e64_1(u32);
u32 Fn_4e7fa8_1(u32);
extern char g_008bb928[];
extern char g_008bbb1c[];
u32 Fn_024500_2(u32, u32);
u32 Fn_4f4b30_1(u32);
u32 Fn_4f652c_2(u32, u32);
extern char g_009b0c58[];
extern char g_008aae00[];
extern char g_008aae10[];
u32 Fn_4f69bc_1(u32);
u32 Fn_4f6984_1(u32);
u32 Fn_4f7320_1(u32);
u32 Fn_4f7500_1(u32);
u32 Fn_4fae50_1(u32);
extern char g_0082bf60[];
u32 Fn_4fa9c0_1(u32);
extern char g_008ab9ec[];
u32 Fn_501e14_1(u32);
extern char g_009a141c[];
u32 Fn_50e6c4_1(u32);
u32 Fn_50ef2c_1(u32);
u32 Fn_50e7b0_1(u32);
extern char g_008b8530[];
extern char g_009b0c70[];
extern char g_009b1ccc[];
extern char g_009b0c7c[];
u32 Fn_512d50_4(u32, u32, u32, u32);
extern char g_009b99cc[];
u32 Fn_01b624_1(u32);
extern char g_009b0ccc[];
u32 Fn_024788_2(u32, u32);
u32 Fn_5151d0_2(u32, u32);
u32 Fn_513014_1(u32);
u32 Fn_512dc4_1(u32);
u32 Fn_512dcc_2(u32, u32);
u32 Fn_512df0_2(u32, u32);
u32 Fn_512e00_4(u32, u32, u32, u32);
extern char g_009b22d0[];
u32 Fn_512a60_2(u32, u32);
u32 Fn_5171f4_2(u32, u32);
u32 Fn_50c27c_1(u32);
u32 Fn_504394_1(u32);
u32 Fn_504590_1(u32);
u32 Fn_51a2a8_1(u32);
extern char g_0082c3bc[];
u32 Fn_51c918_1(u32);
u32 Fn_01d3e0_2(u32, u32);
u32 Fn_01d534_1(u32);
u32 Fn_5378d0_2(u32, u32);
u32 Fn_542118_1(u32);
u32 Fn_5461b0_1(u32);
extern char g_0082c570[];
extern char g_0082c68c[];
u32 Fn_569db4_1(u32);
u32 Fn_569e64_1(u32);
extern char g_008ab268[];
u32 Fn_548d90_1(u32);
extern char g_0082c88c[];
u32 Fn_545f70_1(u32);
void Fn_54ea00(char*);
void Fn_54e8f4(char*);
void Fn_54e934(char*);
u32 Fn_548334_1(u32);
extern char g_0082ca98[];
u32 Fn_2024b0_2(u32, u32);
extern char g_0082cb0c[];
u32 Fn_559a30_2(u32, u32);
extern char g_0082cbc8[];
u32 Fn_550998_2(u32, u32);
extern char g_0082cbfc[];
extern char g_00107c6c[];
extern char g_009a4780[];
u32 Fn_007e08_1(u32);
u32 Fn_202758_2(u32, u32);
extern char g_00112464[];
extern char g_008ab948[];
u32 Fn_0131a4_2(u32, u32);
u32 Fn_636f5c_3(u32, u32, u32);
extern char g_008bfa28[];
u32 Fn_276ac4_2(u32, u32);
u32 Fn_5a579c_1(u32);
extern char g_0016afd0[];
extern char g_008051cc[];
extern char g_008bfa50[];
u32 Fn_000068_4(u32, u32, u32, u32);
u32 Fn_06a954_1(u32);
u32 Fn_016030_1(u32);
u32 Fn_26c628_1(u32);
u32 Fn_196dc8_2(u32, u32);
u32 Fn_196f88_2(u32, u32);
extern char g_008a825c[];
u32 Fn_076da0_4(u32, u32, u32, u32);
u32 Fn_5992a0_2(u32, u32);
u32 Fn_07f5ec_2(u32, u32);
u32 Fn_0e5b94_2(u32, u32);
u32 Fn_356478_1(u32);
u32 Fn_357c48_2(u32, u32);
extern char g_008bfa64[];
u32 Fn_1fcd88_1(u32);
u32 Fn_0fd660_1(u32);
u32 Fn_358084_1(u32);
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_029ed4_2(u32, u32);
extern char g_0069cad8[];
extern char g_00806c3c[];
extern char g_008bfa78[];
u32 Fn_11dc34_1(u32);
u32 Fn_0fc468_1(u32);
u32 Fn_0fce94_2(u32, u32);
u32 Fn_12d4f0_2(u32, u32);
u32 Fn_59935c_3(u32, u32, u32);
extern char g_008bfac0[];
u32 Fn_5bb940_1(u32);
u32 Fn_5c2c1c_1(u32);
extern char g_0023a7d0[];
extern char g_00807334[];
u32 Fn_1436f0_1(u32);
u32 Fn_15c33c_3(u32, u32, u32);
extern char g_00115648[];
u32 Fn_15c944_3(u32, u32, u32);
u32 Fn_15c9d0_3(u32, u32, u32);
u32 Fn_165f44_1(u32);
u32 Fn_16745c_1(u32);
extern char g_008a6194[];
u32 Fn_16f148_2(u32, u32);
u32 Fn_4df458_3(u32, u32, u32);
extern char g_00896e4c[];
u32 Fn_00d980_2(u32, u32);
extern char g_0027573c[];
extern char g_00275900[];
extern char g_00807c88[];
u32 Fn_18a878_1(u32);
extern char g_00812804[];
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_199cfc_1(u32);
extern char g_00811130[];
extern char g_0080fd50[];
extern char g_00811ec0[];
extern char g_0080fe14[];
u32 Fn_1c819c_1(u32);
extern char g_0080ddc4[];
extern char g_0080ca28[];
extern char g_00808640[];
extern char g_00808a14[];
u32 Fn_1e87e4_1(u32);
extern char g_0080a494[];
u32 Fn_5c8040_1(u32);
u32 Fn_5c7c14_3(u32, u32, u32);
u32 Fn_1bcbf4_1(u32);
u32 Fn_1bcce8_1(u32);
u32 Fn_1bcddc_1(u32);
u32 Fn_1bcef0_2(u32, u32);
u32 Fn_1bcfe4_1(u32);
u32 Fn_199290_1(u32);
u32 Fn_1d6df8_1(u32);
u32 Fn_1d75e0_1(u32);
u32 Fn_1d8740_1(u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
u32 Fn_5c7b94_2(u32, u32);
extern char g_0080d7fc[];
extern char g_0080de88[];
u32 Fn_01a4d4_3(u32, u32, u32);
u32 Fn_199af8_1(u32);
extern char g_0080ea74[];
extern char g_00808118[];
extern char g_008081b4[];
u32 Fn_1f3c0c_4(u32, u32, u32, u32);
u32 Fn_1f3d98_4(u32, u32, u32, u32);
extern char g_0080ff98[];
u32 Fn_20e338_1(u32);
extern char g_00810940[];
u32 Fn_1bc878_1(u32);
extern char g_00809df8[];
extern char g_00809f30[];
extern char g_00809fcc[];
extern char g_0080a068[];
extern char g_0080a104[];
extern char g_0080a1a0[];
extern char g_0080a23c[];
extern char g_0080a814[];
extern char g_0080aa7c[];
extern char g_0080b7c0[];
u32 Fn_193fcc_1(u32);
extern char g_0080bb48[];
extern char g_0080bd08[];
extern char g_0080c688[];
u32 Fn_5c9854_1(u32);
extern char g_0080cc04[];
extern char g_0080d0e8[];
extern char g_0080d1a0[];
u32 Fn_22556c_1(u32);
extern char g_0080d24c[];
extern char g_0080d394[];
extern char g_007c4198[];
extern char g_007c41bc[];
extern char g_007c41e0[];
extern char g_007c4204[];
extern char g_007c4228[];
extern char g_007c424c[];
u32 Fn_5c2ec0_3(u32, u32, u32);
extern char g_0080e87c[];
extern char g_0080e8c8[];
extern char g_0080ead4[];
extern char g_00824560[];
u32 Fn_410f70_1(u32);
u32 Fn_402d58_3(u32, u32, u32);
u32 Fn_403f18_1(u32);
extern char g_0052a1ac[];
extern char g_00824a20[];
u32 Fn_420474_1(u32);
u32 Fn_511474_1(u32);
u32 Fn_5114ac_1(u32);
u32 Fn_5a4d94_1(u32);
extern char g_00824f70[];
u32 Fn_4054c8_1(u32);
extern char g_008a5788[];
extern char g_008a5624[];
extern char g_008bfaac[];
u32 Fn_457bb4_1(u32);
u32 Fn_457d20_1(u32);
u32 Fn_457e8c_1(u32);
u32 Fn_4756d0_1(u32);
u32 Fn_4757bc_1(u32);
extern char g_008a706c[];
extern char g_008bfa40[];
extern char g_008dabe4[];
u32 Fn_459868_1(u32);
u32 Fn_5c5ad8_3(u32, u32, u32);
extern char g_006ad804[];
extern char g_00827144[];
u32 Fn_496c8c_1(u32);
u32 Fn_5a7978_1(u32);
u32 Fn_480a70_3(u32, u32, u32);
u32 Fn_5994e8_3(u32, u32, u32);
extern char g_00589bb0[];
extern char g_0058b2a8[];
extern char g_00592e14[];
u32 Fn_497b20_2(u32, u32);
u32 Fn_497fb8_1(u32);
u32 Fn_313158_2(u32, u32);
u32 Fn_62c57c_2(u32, u32);
u32 Fn_3576a4_1(u32);
u32 Fn_5db2a8_1(u32);
u32 Fn_5db750_1(u32);
u32 Fn_4a8404_1(u32);
extern char g_005a87e4[];
u32 Fn_4a92c4_1(u32);
u32 Fn_4ad3a8_1(u32);
u32 Fn_4c0190_2(u32, u32);
u32 Fn_4fca20_3(u32, u32, u32);
u32 Fn_4fccb4_3(u32, u32, u32);
u32 Fn_4fccb4_1(u32);
extern char g_008ab9e8[];
u32 Fn_521750_3(u32, u32, u32);
u32 Fn_520c84_3(u32, u32, u32);
u32 Fn_521904_3(u32, u32, u32);
extern char g_007ebcb0[];
extern char g_007ebcbc[];
u32 Fn_65f090_2(u32, u32);
u32 Fn_660338_4(u32, u32, u32, u32);
u32 Fn_661d50_2(u32, u32);
u32 Fn_1fddd8_3(u32, u32, u32);
u32 Fn_54e638_3(u32, u32, u32);
u32 Fn_6612ec_1(u32);
u32 Fn_5574e4_3(u32, u32, u32);
u32 Fn_376f3c_1(u32);
u32 Fn_5f4d08_1(u32);
u32 Fn_5f8af0_1(u32);
u32 Fn_5f8c1c_1(u32);
extern char g_007ebe5c[];
extern char g_008b8664[];
extern char g_008b86ac[];
extern char g_009b3b74[];
u32 Fn_000bf4_2(u32, u32);
u32 Fn_000c24_2(u32, u32);
u32 Fn_000d0c_1(u32);
extern char g_008b867c[];
extern char g_009b3b5e[];
extern char g_008b8680[];
extern char g_009b3b48[];
extern char g_0069d4a0[];
extern char g_0012a080[];
extern char g_006a0d1c[];
extern char g_0082da24[];
u32 Fn_59202c_2(u32, u32);
u32 Fn_59a910_1(u32);
u32 Fn_5a4190_1(u32);
u32 Fn_5a4454_2(u32, u32);
u32 Fn_5bcb14_1(u32);
extern char g_008a8894[];
extern char g_0089a330[];
u32 Fn_3cb318_3(u32, u32, u32);
extern char g_0082e938[];
u32 Fn_5a4da0_1(u32);
u32 Fn_5f333c_4(u32, u32, u32, u32);
u32 Fn_5119f0_1(u32);
u32 Fn_511a28_1(u32);
u32 Fn_60846c_2(u32, u32);
u32 Fn_06c990_3(u32, u32, u32);
u32 Fn_06cb78_2(u32, u32);
u32 Fn_5a4ebc_2(u32, u32);
u32 Fn_5a87b8_3(u32, u32, u32);
u32 Fn_5ad1d0_1(u32);
u32 Fn_61b40c_1(u32);
extern char g_008bb5b8[];
extern char g_009d7ab8[];
extern char g_009d7ac8[];
extern char g_009d7ad8[];
u32 Fn_56e784_1(u32);
extern char g_00105c24[];
extern char g_00105c5c[];
extern char g_00105cec[];
extern char g_008aab50[];
extern char g_008ab450[];
u32 Fn_006448_2(u32, u32);
u32 Fn_00645c_2(u32, u32);
u32 Fn_006470_2(u32, u32);
u32 Fn_006494_3(u32, u32, u32);
u32 Fn_006768_1(u32);
u32 Fn_008c18_1(u32);
u32 Fn_012454_1(u32);
u32 Fn_013240_1(u32);
extern char g_009a3d00[];
u32 Fn_008010_1(u32);
u32 Fn_015304_2(u32, u32);
extern char g_008ab420[];
extern char g_008aab48[];
extern char g_009ba094[];
u32 Fn_015d90_2(u32, u32);
extern char g_009a0fe8[];
u32 Fn_010cfc_4(u32, u32, u32, u32);
extern char g_008ab81c[];
extern char g_008ab844[];
extern char g_009a0d28[];
u32 Fn_0258dc_1(u32);
extern char g_008ab4f8[];
u32 Fn_024788_1(u32);
u32 Fn_024798_1(u32);
u32 Fn_01b538_2(u32, u32);
extern char g_0082bfc4[];
u32 Fn_02a948_2(u32, u32);
u32 Fn_02b010_3(u32, u32, u32);
u32 Fn_02b084_1(u32);
u32 Fn_1fd674_2(u32, u32);
extern char g_008ab394[];
extern char g_009a2ddc[];
u32 Fn_00e0a4_4(u32, u32, u32, u32);
u32 Fn_00e14c_1(u32);
u32 Fn_016d5c_0();
u32 Fn_020908_2(u32, u32);
extern char g_008a7da8[];
u32 Fn_4dfd08_1(u32);
u32 Fn_553a58_1(u32);
u32 Fn_622434_0();
u32 Fn_04bac4_2(u32, u32);
u32 Fn_5d646c_1(u32);
u32 Fn_5d649c_1(u32);
u32 Fn_04bac4_4(u32, u32, u32, u32);
u32 Fn_04b6f4_3(u32, u32, u32);
u32 Fn_1d22bc_1(u32);
u32 Fn_21fca8_1(u32);
u32 Fn_230680_1(u32);
u32 Fn_2556cc_0();
u32 Fn_5c5a78_3(u32, u32, u32);
extern char g_008a65d8[];
u32 Fn_015564_1(u32);
u32 Fn_1f26f0_0();
u32 Fn_1f2d4c_1(u32);
u32 Fn_1f5bf4_1(u32);
u32 Fn_2060b8_1(u32);
u32 Fn_60bdc8_2(u32, u32);
u32 Fn_60bdc8_3(u32, u32, u32);
u32 Fn_59ceb4_1(u32);
u32 Fn_5a8470_3(u32, u32, u32);
u32 Fn_277f60_3(u32, u32, u32);
u32 Fn_278268_1(u32);
u32 Fn_07e2fc_2(u32, u32);
u32 Fn_1d6060_1(u32);
u32 Fn_20e698_1(u32);
u32 Fn_19ac4c_1(u32);
u32 Fn_1f5bf4_0();
u32 Fn_20004c_3(u32, u32, u32);
u32 Fn_358214_2(u32, u32);
u32 Fn_5bbb9c_2(u32, u32);
extern char g_0080574c[];
u32 Fn_1fcd88_3(u32, u32, u32);
extern char g_00826f70[];
extern char g_008a75dc[];
u32 Fn_3d5388_1(u32);
u32 Fn_3d53d0_1(u32);
u32 Fn_3d54b4_3(u32, u32, u32);
u32 Fn_3d5978_1(u32);
u32 Fn_3d644c_1(u32);
u32 Fn_3d6560_1(u32);
u32 Fn_3d6668_2(u32, u32);
u32 Fn_492274_1(u32);
extern char g_008dac9c[];
extern char g_008273bc[];
u32 Fn_495df8_3(u32, u32, u32);
extern char g_008db430[];
u32 Fn_49e798_1(u32);
u32 Fn_49a7d8_0();
u32 Fn_4935ec_2(u32, u32);
u32 Fn_480954_1(u32);
u32 Fn_48794c_2(u32, u32);
extern char g_00827740[];
u32 Fn_492d48_3(u32, u32, u32);
extern char g_007d4d88[];
u32 Fn_62f08c_1(u32);
u32 Fn_4a434c_1(u32);
u32 Fn_4a3ed0_1(u32);
u32 Fn_626288_2(u32, u32);
u32 Fn_262e80_0();
u32 Fn_4c71f8_3(u32, u32, u32);
u32 Fn_4c70a8_3(u32, u32, u32);
u32 Fn_4c74a4_3(u32, u32, u32);
u32 Fn_4c7370_3(u32, u32, u32);
u32 Fn_198e44_1(u32);
u32 Fn_227818_1(u32);
u32 Fn_0d0434_2(u32, u32);
u32 Fn_1219e8_1(u32);
u32 Fn_4b9dac_1(u32);
u32 Fn_6258c8_1(u32);
u32 Fn_4bd7e8_1(u32);
u32 Fn_192024_0();
u32 Fn_192868_1(u32);
u32 Fn_444644_1(u32);
u32 Fn_6173bc_1(u32);
u32 Fn_443ba8_1(u32);
u32 Fn_599d3c_1(u32);
u32 Fn_59a824_1(u32);
u32 Fn_277e68_1(u32);
extern char g_00827f98[];
u32 Fn_276ac4_3(u32, u32, u32);
u32 Fn_29e37c_3(u32, u32, u32);
u32 Fn_4cf01c_2(u32, u32);
u32 Fn_5a79c4_1(u32);
u32 Fn_4d43ec_0();
u32 Fn_4d6920_2(u32, u32);
u32 Fn_4d6ff8_1(u32);
u32 Fn_4d8f0c_1(u32);
u32 Fn_6312cc_1(u32);
extern char g_009b7668[];
u32 Fn_638d34_1(u32);
extern char g_009dfe08[];
u32 Fn_5619c8_2(u32, u32);
u32 Fn_622434_2(u32, u32);
extern char g_008bb5e0[];
extern char g_009dd034[];
u32 Fn_1fe040_2(u32, u32);
u32 Fn_024730_2(u32, u32);
u32 Fn_4ec684_1(u32);
extern char g_008aab30[];
extern char g_009a0ea8[];
u32 Fn_4e2280_1(u32);
extern char g_008ab860[];
u32 Fn_01b74c_1(u32);
u32 Fn_0246c0_1(u32);
u32 Fn_4e1760_1(u32);
u32 Fn_4fd248_1(u32);
extern char g_008aac2c[];
u32 Fn_024730_1(u32);
extern char g_008aab74[];
u32 Fn_4fad4c_1(u32);
u32 Fn_4fad4c_3(u32, u32, u32);
u32 Fn_504350_1(u32);
u32 Fn_504394_3(u32, u32, u32);
extern char g_008ab9f4[];
u32 Fn_4fb2e4_2(u32, u32);
extern char g_008b8778[];
u32 Fn_0313a4_1(u32);
extern char g_00989680[];
u32 Fn_01b71c_2(u32, u32);
extern char g_008b877c[];
u32 Fn_021ccc_2(u32, u32);
u32 Fn_646540_1(u32);
u32 Fn_028f24_2(u32, u32);
extern char g_008bb658[];
extern char g_009df8ac[];
u32 Fn_01b624_2(u32, u32);
u32 Fn_4f0efc_1(u32);
u32 Fn_4f0cf4_0();
u32 Fn_4f1320_1(u32);
u32 Fn_50e6e4_0();
u32 Fn_50e6e4_1(u32);
u32 Fn_50e7a4_2(u32, u32);
u32 Fn_50e7e8_1(u32);
u32 Fn_50e894_2(u32, u32);
u32 Fn_50f2a8_2(u32, u32);
u32 Fn_510f94_1(u32);
u32 Fn_50ea8c_1(u32);
u32 Fn_50eb34_1(u32);
u32 Fn_50ebb0_1(u32);
u32 Fn_50ec58_1(u32);
u32 Fn_50ef2c_2(u32, u32);
u32 Fn_50f8c0_1(u32);
u32 Fn_50f98c_1(u32);
u32 Fn_50fa5c_1(u32);
u32 Fn_50fb98_1(u32);
u32 Fn_5142d4_2(u32, u32);
extern char g_008aae48[];
u32 Fn_024788_3(u32, u32, u32);
extern char g_0082c37c[];
extern char g_0082c3d4[];
extern char g_008aab68[];
u32 Fn_504590_3(u32, u32, u32);
u32 Fn_52008c_1(u32);
extern char g_00202bf8[];
u32 Fn_0252f4_0();
u32 Fn_02962c_1(u32);
u32 Fn_533880_1(u32);
u32 Fn_01d390_1(u32);
u32 Fn_01d390_0();
u32 Fn_0135a4_0();
u32 Fn_01d0e0_1(u32);
u32 Fn_01d0f0_1(u32);
u32 Fn_01d5d0_1(u32);
u32 Fn_01d5f0_1(u32);
extern char g_009ae8e0[];
u32 Fn_5341bc_0();
extern char g_008aac08[];
extern char g_009a108c[];
extern char g_008b7cc8[];
extern char g_0082c594[];
u32 Fn_548334_2(u32, u32);
u32 Fn_542230_3(u32, u32, u32);
u32 Fn_5421f4_2(u32, u32);
u32 Fn_54e5ac_1(u32);
extern char g_0082ca0c[];
u32 Fn_665970_3(u32, u32, u32);
extern char g_008bb4fc[];
extern char g_0082ca60[];
u32 Fn_54f870_1(u32);
u32 Fn_5504e0_3(u32, u32, u32);
extern char g_0082ce4c[];
u32 Fn_565968_1(u32);
u32 Fn_5563ac_2(u32, u32);
u32 Fn_5606b4_2(u32, u32);
u32 Fn_5661a8_1(u32);
u32 Fn_5606b4_1(u32);
u32 Fn_56651c_1(u32);
u32 Fn_5667c4_2(u32, u32);
u32 Fn_565968_0();
u32 Fn_55d8b8_1(u32);
u32 Fn_562c3c_2(u32, u32);
extern char g_009e0124[];
u32 Fn_01231c_1(u32);
u32 Fn_0123ec_1(u32);
extern char g_009a5200[];
extern char g_009a0fb4[];
extern char g_008ab3a0[];
extern char g_0082df14[];
u32 Fn_014bb8_2(u32, u32);
u32 Fn_015490_0();
u32 Fn_02ac3c_3(u32, u32, u32);
u32 Fn_02ac64_1(u32);
extern char g_008000ea[];
u32 Fn_501e8c_3(u32, u32, u32);
u32 Fn_501e8c_4(u32, u32, u32, u32);
extern char g_00790f80[];
u32 Fn_06a954_2(u32, u32);
u32 Fn_50c2e4_1(u32);
u32 Fn_50c36c_0();
u32 Fn_5bc570_2(u32, u32);
u32 Fn_5bc688_2(u32, u32);
u32 Fn_5bc6c0_2(u32, u32);
u32 Fn_07df50_1(u32);
u32 Fn_07b750_3(u32, u32, u32);
u32 Fn_0f4788_1(u32);
u32 Fn_130da0_2(u32, u32);
u32 Fn_4b8638_1(u32);
u32 Fn_4b86f0_1(u32);
u32 Fn_4b8808_2(u32, u32);
u32 Fn_4b8820_1(u32);
u32 Fn_4b8898_1(u32);
u32 Fn_4b8970_2(u32, u32);
u32 Fn_4b8bbc_1(u32);
u32 Fn_4b8c90_1(u32);
u32 Fn_4b8e04_1(u32);
u32 Fn_4b8f48_1(u32);
u32 Fn_4b8f9c_1(u32);
u32 Fn_4b8fac_1(u32);
u32 Fn_4b8fe4_1(u32);
u32 Fn_4bf1cc_1(u32);
u32 Fn_4b90b4_1(u32);
u32 Fn_4b90e0_1(u32);
u32 Fn_0ffd30_0();
u32 Fn_2e3444_2(u32, u32);
extern char g_008aabf8[];
extern char g_007a4a40[];
extern char g_007ac024[];
u32 Fn_626138_4(u32, u32, u32, u32);
extern char g_007abc64[];
u32 Fn_157bb0_1(u32);
u32 Fn_15b168_1(u32);
extern char g_0025226c[];
extern char g_008075dc[];
u32 Fn_164ccc_3(u32, u32, u32);
extern char g_008929cc[];
u32 Fn_160810_3(u32, u32, u32);
u32 Fn_62693c_1(u32);
u32 Fn_15c33c_1(u32);
u32 Fn_15c9d0_1(u32);
extern char g_0089a698[];
extern char g_0089aa6c[];
u32 Fn_207c84_1(u32);
u32 Fn_19330c_2(u32, u32);
extern char g_00896e94[];
extern char g_007c4a14[];
u32 Fn_1bcabc_3(u32, u32, u32);
extern char g_007c4a20[];
extern char g_007c49fc[];
u32 Fn_199290_2(u32, u32);
u32 Fn_5c7b7c_2(u32, u32);
u32 Fn_5e8b54_2(u32, u32);
u32 Fn_1c7d30_1(u32);
u32 Fn_234604_2(u32, u32);
u32 Fn_235888_2(u32, u32);
u32 Fn_461760_2(u32, u32);
u32 Fn_3d6b28_4(u32, u32, u32, u32);
u32 Fn_5db4b4_3(u32, u32, u32);
u32 Fn_498c20_4(u32, u32, u32, u32);
extern char g_008277e8[];
extern char g_00827938[];
extern char g_007d5314[];
u32 Fn_15c9d0_4(u32, u32, u32, u32);
extern char g_007d502c[];
extern char g_00827a30[];
u32 Fn_137d64_3(u32, u32, u32);
extern char g_007dae24[];
extern char g_007dad7c[];
u32 Fn_567528_0();
u32 Fn_01b6ac_2(u32, u32);
u32 Fn_4f4b80_0();
u32 Fn_50e3c4_0();
extern char g_007eb670[];
u32 Fn_011b7c_0();
u32 Fn_011be4_4(u32, u32, u32, u32);
u32 Fn_200e60_2(u32, u32);
extern char g_007eb677[];
extern char g_009a0f74[];
u32 Fn_028f24_1(u32);
u32 Fn_5040d4_2(u32, u32);
u32 Fn_011b08_2(u32, u32);
extern char g_0082c13c[];
u32 Fn_50fe14_2(u32, u32);
u32 Fn_5117cc_0();
u32 Fn_51bd38_0();
u32 Fn_51bf20_0();
u32 Fn_51c024_0();
u32 Fn_51c060_0();
u32 Fn_51c0cc_0();
u32 Fn_51c108_0();
u32 Fn_51c21c_0();
u32 Fn_51c258_0();
u32 Fn_51c624_0();
u32 Fn_51c800_0();
u32 Fn_01b774_0();
u32 Fn_01d138_1(u32);
u32 Fn_539330_0();
u32 Fn_5394a4_0();
u32 Fn_5394ec_0();
u32 Fn_539668_0();
u32 Fn_5399c0_0();
u32 Fn_539a14_0();
u32 Fn_544c68_1(u32);
extern char g_007ebc5c[];
u32 Fn_665644_3(u32, u32, u32);
extern char g_007ebd54[];
extern char g_0082cad4[];
u32 Fn_550954_0();
u32 Fn_55c7fc_3(u32, u32, u32);
extern char g_007ffc84[];
extern char g_0082cd54[];
u32 Fn_55c284_2(u32, u32);
u32 Fn_55c998_1(u32);
u32 Fn_5656dc_1(u32);
u32 Fn_5558f0_2(u32, u32);
u32 Fn_5145f0_2(u32, u32);
u32 Fn_562bd4_2(u32, u32);
u32 Fn_562d30_2(u32, u32);
u32 Fn_517168_3(u32, u32, u32);
u32 Fn_517650_2(u32, u32);
u32 Fn_51766c_2(u32, u32);
u32 Fn_5176a0_2(u32, u32);
u32 Fn_562bd4_0();
u32 Fn_562f00_2(u32, u32);
u32 Fn_516a88_1(u32);
u32 Fn_562bd4_1(u32);
u32 Fn_517774_2(u32, u32);
u32 Fn_565dbc_2(u32, u32);
u32 Fn_514390_3(u32, u32, u32);
u32 Fn_561a94_2(u32, u32);
extern char g_00804b04[];
u32 Fn_63d2d0_3(u32, u32, u32);
u32 Fn_63d498_3(u32, u32, u32);
extern char g_0082d478[];
extern char g_0082d4e8[];
extern char g_008bfa10[];
extern char g_008bb588[];
u32 Fn_000c40_2(u32, u32);
extern char g_0082d8d0[];
u32 Fn_020ad4_2(u32, u32);
u32 Fn_5b1548_1(u32);
extern char g_0082d82c[];
u32 Fn_016338_1(u32);
u32 Fn_016338_2(u32, u32);
u32 Fn_595cd8_1(u32);
u32 Fn_005b2c_1(u32);
extern char g_0082d8b8[];
u32 Fn_0151c8_1(u32);
u32 Fn_5992a0_1(u32);
extern char g_008bfa44[];
extern char g_0079ec00[];
u32 Fn_361a68_3(u32, u32, u32);
u32 Fn_3767fc_1(u32);
extern char g_0079eb38[];
u32 Fn_37d4ac_2(u32, u32);
u32 Fn_380fd8_3(u32, u32, u32);
u32 Fn_36725c_1(u32);
u32 Fn_3673d8_3(u32, u32, u32);
u32 Fn_3675cc_2(u32, u32);
u32 Fn_3676b4_1(u32);
extern char g_0089a384[];
u32 Fn_021ccc_1(u32);
u32 Fn_021ccc_4(u32, u32, u32, u32);
extern char g_00823b28[];
u32 Fn_58d5b8_0();
u32 Fn_449244_1(u32);
u32 Fn_60e24c_2(u32, u32);
u32 Fn_6345e8_2(u32, u32);
extern char g_00890d18[];
u32 Fn_4ed8ac_1(u32);
u32 Fn_0238e8_4(u32, u32, u32, u32);
extern char g_008ab280[];
u32 Fn_660bf8_2(u32, u32);
u32 Fn_6691d0_2(u32, u32);
u32 Fn_542324_2(u32, u32);
u32 Fn_5423c8_2(u32, u32);
u32 Fn_566810_1(u32);
u32 Fn_59cb38_3(u32, u32, u32);
u32 Fn_5a4ebc_3(u32, u32, u32);
u32 Fn_2aa77c_4(u32, u32, u32, u32);
u32 Fn_60c938_3(u32, u32, u32);
u32 Fn_577bcc_3(u32, u32, u32);
u32 Fn_008cdc_2(u32, u32);
u32 Fn_01cf88_2(u32, u32);
u32 Fn_028208_3(u32, u32, u32);
extern char g_008a8348[];
u32 Fn_50c294_1(u32);
u32 Fn_5bf38c_2(u32, u32);
u32 Fn_5c1378_1(u32);
u32 Fn_5c1480_1(u32);
u32 Fn_5d6dac_0();
u32 Fn_5ebdb8_1(u32);
u32 Fn_5a4f7c_2(u32, u32);
u32 Fn_5ad118_2(u32, u32);
u32 Fn_5d649c_1f1(u32, float);
u32 Fn_5d65a4_1(u32);
u32 Fn_0fe7c4_1(u32);
extern char g_008bfad4[];
extern char g_008bfae0[];
u32 Fn_5d9848_2(u32, u32);
u32 Fn_5f3e2c_2(u32, u32);
extern char g_008918fc[];
u32 Fn_5d63c8_3f3(u32, u32, u32, float, float, float);
u32 Fn_4b8a94_4f1(u32, u32, u32, u32, float);
u32 Fn_4b8b10_4f1(u32, u32, u32, u32, float);
u32 Fn_236078_2(u32, u32);
u32 Fn_5c5cb0_3(u32, u32, u32);
u32 Fn_5c2a00_3f2(u32, u32, u32, float, float);
u32 Fn_165db4_1f9(u32, float, float, float, float, float, float, float, float, float);
u32 Fn_1c7e68_1(u32);
u32 Fn_5c4b44_1(u32);
u32 Fn_1c8140_2(u32, u32);
u32 Fn_59cf74_1f2(u32, float, float);
extern char g_007c6f00[];
u32 Fn_3850c0_4(u32, u32, u32, u32);
extern char g_007c6f12[];
u32 Fn_3850ec_4(u32, u32, u32, u32);
u32 Fn_5c4b44_2f1(u32, u32, float);
u32 Fn_1a43ac_2(u32, u32);
u32 Fn_1a5fd4_1f2(u32, float, float);
u32 Fn_1c7d40_1(u32);
u32 Fn_1e8700_1f2(u32, float, float);
u32 Fn_214f64_4f1(u32, u32, u32, u32, float);
u32 Fn_59cb30_2f3(u32, u32, float, float, float);
u32 Fn_27c030_2(u32, u32);
u32 Fn_27c1ec_2(u32, u32);
u32 Fn_27c1ec_2f1(u32, u32, float);
extern char g_008bfa88[];
u32 Fn_2af9d8_2(u32, u32);
u32 Fn_2b7578_2f2(u32, u32, float, float);
u32 Fn_2b779c_2(u32, u32);
u32 Fn_3fa630_2f3(u32, u32, float, float, float);
u32 Fn_404d38_1f1(u32, float);
extern char g_008bfae4[];
u32 Fn_5fb988_2(u32, u32);
u32 Fn_433d3c_2f2(u32, u32, float, float);
u32 Fn_616444_2(u32, u32);
u32 Fn_68f3c0_3(u32, u32, u32);
u32 Fn_68f3c0_2(u32, u32);
u32 Fn_48baa4_1(u32);
u32 Fn_5ae694_4(u32, u32, u32, u32);
u32 Fn_498c20_2f1(u32, u32, float);
u32 Fn_04d1ac_3f1(u32, u32, u32, float);
u32 Fn_4c32e0_2(u32, u32);
u32 Fn_4c34a4_2(u32, u32);
u32 Fn_4c34a4_2f1(u32, u32, float);
u32 Fn_4e2680_1(u32);
u32 Fn_4fb430_2(u32, u32);
u32 Fn_4fbce0_0();
u32 Fn_4fb7f8_2(u32, u32);
u32 Fn_4fc420_0();
u32 Fn_4fb8d4_2(u32, u32);
u32 Fn_4fc54c_0();
u32 Fn_008964_3(u32, u32, u32);
u32 Fn_5200a4_2(u32, u32);
extern char g_0082c6b0[];
extern char g_009a42a8[];
u32 Fn_633740_2f1(u32, u32, float);
extern char g_0082dae4[];
u32 Fn_59f2f4_2(u32, u32);
u32 Fn_5ae99c_0();
u32 Fn_5a934c_3f1(u32, u32, u32, float);
u32 Fn_5eb62c_3f1(u32, u32, u32, float);
u32 Fn_62e70c_2(u32, u32);
u32 Fn_6254f4_1(u32);
u32 Fn_02b848_3f1(u32, u32, u32, float);
u32 WeakCall1(u32);
u32 WeakCall3(u32, u32, u32);
u32 Fn_013150_1(u32);
u32 WeakCall2(u32, u32);
u32 Fn_01d9f0_1(u32);
u32 Fn_513014_0();
u32 Fn_029b80_2(u32, u32);
u32 WeakCall4(u32, u32, u32, u32);
u32 Fn_073918_1(u32);
u32 Fn_06e718_1(u32);
u32 Fn_07a280_1(u32);
u32 Fn_07e3fc_1(u32);
u32 WeakCall3f1(u32, u32, u32, float);
u32 Fn_163f3c_0();
u32 Fn_187e94_2(u32, u32);
u32 Fn_5d5e34_2(u32, u32);
u32 WeakCall4f2(u32, u32, u32, u32, float, float);
u32 Fn_5d53d4_1(u32);
u32 Fn_199cc0_1(u32);
u32 Fn_04d578_0();
u32 Fn_5c7c28_1(u32);
u32 Fn_260c7c_3(u32, u32, u32);
u32 Fn_260cb0_3(u32, u32, u32);
u32 Fn_262d04_0();
u32 Fn_27d300_1(u32);
u32 Fn_27e308_1(u32);
u32 Fn_2dc1f4_1(u32);
u32 Fn_4a97d0_1(u32);
u32 Fn_420308_1(u32);
u32 Fn_4443e4_3(u32, u32, u32);
u32 Fn_48fe70_1(u32);
u32 Fn_484b08_1(u32);
u32 Fn_48b0c4_1(u32);
u32 Fn_48f2b8_1(u32);
u32 Fn_4982c0_1(u32);
u32 Fn_3c5170_2(u32, u32);
u32 Fn_4d47a0_2(u32, u32);
u32 Fn_4d5ad4_3(u32, u32, u32);
u32 Fn_569cb4_1(u32);
u32 Fn_541ee0_2(u32, u32);
u32 Fn_56689c_1(u32);
u32 Fn_57f6b4_1(u32);
u32 Fn_630b6c_1(u32);
u32 Fn_59cb38_1(u32);
u32 Fn_633428_1(u32);
u32 Fn_261560_0();
u32 Fn_2c5c08_1(u32);
u32 Fn_684f28_1(u32);
u32 Fn_684f64_1(u32);
u32 Fn_006134_1(u32);
u32 WeakCall0();
extern char g_008ab890[];
u32 Fn_02acc4_2(u32, u32);
float Fn_5bc920_0();
u32 Fn_5bc934_1(u32);
u32 Fn_5bc934_1f1(u32, float);
u32 Fn_0dc954_2(u32, u32);
u32 Fn_0dccdc_1(u32);
u32 Fn_0e1358_2(u32, u32);
u32 Fn_503bac_2(u32, u32);
u32 Fn_4e27a8_1(u32);
u32 Fn_4e2860_1(u32);
u32 Fn_4ef124_2(u32, u32);
u32 Fn_000d0c_2(u32, u32);
u32 Fn_684968_1(u32);
u32 Fn_4faff0_1(u32);
u32 Fn_501204_2(u32, u32);
u32 Fn_6854e8_3(u32, u32, u32);
u32 Fn_6855c4_4(u32, u32, u32, u32);
u32 Fn_512d84_1(u32);
u32 Fn_024788_2f1(u32, u32, float);
u32 Fn_024788_1f1(u32, float);
extern char g_008aae58[];
u32 Fn_51a5e4_2(u32, u32);
u32 Fn_01231c_1f1(u32, float);
u32 Fn_6617b0_4(u32, u32, u32, u32);
u32 Fn_6659b0_3f4(u32, u32, u32, float, float, float, float);
extern char g_00800214[];
extern char g_008bfa34[];
u32 Fn_420358_2(u32, u32);
u32 Fn_427708_2(u32, u32);
u32 Fn_428664_1(u32);
extern char g_007f09c4[];
extern char g_008bfa3c[];
u32 Fn_43d364_1(u32);
extern char g_0082553c[];
u32 Fn_44dd78_1(u32);
extern char g_00826228[];
u32 Fn_452140_0();
u32 Fn_06c8f8_3(u32, u32, u32);
extern char g_008bfab0[];
u32 Fn_59dd18_1(u32);
u32 Fn_59dd2c_2(u32, u32);
extern char g_00826c6c[];
u32 Fn_5d6cc4_0();
u32 Fn_48f8b4_2(u32, u32);
u32 Fn_494418_1(u32);
extern char g_008a78ac[];
u32 Fn_026bf4_1(u32);
u32 Fn_49dab0_3(u32, u32, u32);
u32 Fn_4ad938_3(u32, u32, u32);
u32 Fn_60c9cc_1(u32);
u32 Fn_01a8e4_1(u32);
u32 Fn_4edc70_3(u32, u32, u32);
u32 Fn_4edcf0_3(u32, u32, u32);
extern char g_007e91f8[];
u32 Fn_0313f8_3(u32, u32, u32);
u32 Fn_50e514_1(u32);
u32 Fn_4fea1c_1(u32);
u32 Fn_5154c4_2(u32, u32);
extern char g_00671894[];
extern char g_0069cad4[];
extern char g_007e3f0c[];
extern char g_008bb520[];
u32 Fn_58486c_1(u32);
u32 Fn_5848bc_1(u32);
u32 Fn_5854b8_2(u32, u32);
u32 Fn_5849d4_1(u32);
u32 Fn_585b84_1(u32);
extern char g_008bb528[];
u32 Fn_583d00_1(u32);
u32 Fn_0284f8_3(u32, u32, u32);
u32 Fn_01fd7c_1(u32);
u32 Fn_01fd88_2(u32, u32);
u32 Fn_01fd94_1(u32);
extern char g_0082d9b4[];
u32 Fn_02a054_2(u32, u32);
u32 Fn_02a080_1(u32);
u32 Fn_02a218_1(u32);
u32 Fn_02aca0_2(u32, u32);
u32 Fn_5a051c_0();
extern char g_0082d9d4[];
u32 Fn_5ac828_3(u32, u32, u32);
u32 Fn_5b194c_1(u32);
u32 Fn_5b0d88_2(u32, u32);
u32 Fn_5b2ad4_2(u32, u32);
u32 Fn_5b0e8c_2(u32, u32);
u32 Fn_5aeef4_3(u32, u32, u32);
u32 Fn_5b3340_1(u32);
extern char g_006b2bac[];
extern char g_0082de88[];
u32 Fn_0000ac_4(u32, u32, u32, u32);
u32 Fn_5ac8e0_1(u32);
u32 Fn_5b0820_1(u32);
u32 Fn_5ca9f4_1(u32);
u32 Fn_60d52c_1(u32);
u32 Fn_633428_2(u32, u32);
extern char g_008a834c[];
extern char g_008e0228[];
extern char g_008e0238[];
extern char g_007e3abc[];
extern char g_008bfadc[];
u32 Fn_640040_4(u32, u32, u32, u32);
extern char g_007e3b78[];
extern char g_00550023[];
extern char g_007e3ac0[];
u32 Fn_5f508c_4(u32, u32, u32, u32);
extern char g_008bfb40[];
extern char g_009b74b8[];
u32 Fn_4df1d0_2(u32, u32);
u32 Fn_589e30_2(u32, u32);
u32 Fn_589e64_2(u32, u32);
u32 Fn_6405bc_2(u32, u32);
extern char g_008b8724[];
extern char g_008b872c[];
extern char g_008b8730[];
extern char g_008b8734[];
extern char g_008b8738[];
extern char g_008b8740[];
u32 Fn_621a94_0();
extern char g_008bfa60[];
u32 Fn_630e20_0();
u32 Fn_26e81c_0();
u32 Fn_26f0cc_0();
u32 Fn_2725e0_0();
u32 Fn_443e18_0();
u32 Fn_62fa8c_0();
u32 Fn_443cd8_0();
u32 Fn_427f9c_1(u32);
extern char g_00825024[];
extern char g_008bba3c[];
u32 Fn_2024b0_0();
u32 Fn_4303e0_1(u32);
extern char g_00825424[];
u32 Fn_02a218_3(u32, u32, u32);
u32 Fn_000024_1(u32);
u32 Fn_004f44_1(u32);
u32 Fn_005250_1(u32);
u32 Fn_004fb8_1(u32);
u32 Fn_000d48_1(u32);
u32 Fn_004f10_1(u32);
u32 Fn_004f98_1(u32);
extern char g_008bfbbc[];
extern char g_009a35d8[];
u32 Fn_01611c_1(u32);
u32 Fn_016288_1(u32);
u32 Fn_016288_4f4(u32, u32, u32, u32, float, float, float, float);
extern char g_00115600[];
u32 Fn_015600_1(u32);
u32 Fn_0208f8_1(u32);
u32 Fn_02a070_0();
u32 Fn_020be8_4(u32, u32, u32, u32);
extern char g_008b86d0[];
u32 Fn_02aaa0_2(u32, u32);
u32 Fn_1d22bc_0();
u32 Fn_229890_1(u32);
u32 Fn_229f48_1(u32);
u32 Fn_22a360_1(u32);
u32 Fn_2556cc_1(u32);
u32 Fn_1c8938_1(u32);
u32 Fn_1e77b0_1(u32);
u32 Fn_2089d8_1(u32);
u32 Fn_1a82e0_1(u32);
u32 Fn_1b9e44_1(u32);
u32 Fn_1ba408_1(u32);
u32 Fn_1bad44_1(u32);
u32 Fn_1c9a14_1(u32);
u32 Fn_1e7fec_1(u32);
u32 Fn_208a90_1(u32);
u32 Fn_5d8b58_2(u32, u32);
u32 Fn_06e694_3(u32, u32, u32);
u32 Fn_278094_3(u32, u32, u32);
u32 Fn_075aa0_2(u32, u32);
u32 Fn_07de40_3(u32, u32, u32);
u32 Fn_365400_1(u32);
u32 Fn_048d8c_2f3(u32, u32, float, float, float);
u32 Fn_5a579c_2(u32, u32);
u32 Fn_5afe78_2(u32, u32);
extern char g_007bcf24[];
u32 Fn_0e5f9c_4(u32, u32, u32, u32);
u32 Fn_598f14_2(u32, u32);
u32 Fn_18b150_1(u32);
u32 Fn_223f74_1(u32);
u32 Fn_18b48c_1(u32);
u32 Fn_61b29c_1(u32);
u32 Fn_61b364_3(u32, u32, u32);
u32 Fn_61b520_1(u32);
u32 Fn_61b6a0_1(u32);
u32 Fn_139520_1(u32);
u32 Fn_5bbbf8_2(u32, u32);
u32 Fn_19b350_1(u32);
u32 Fn_1b0830_1(u32);
u32 Fn_1b0f4c_1(u32);
u32 Fn_1bf5cc_1(u32);
u32 Fn_1dbc10_1(u32);
u32 Fn_1ff580_1(u32);
u32 Fn_200b08_1(u32);
u32 Fn_192fc4_1(u32);
extern char g_0080af8c[];
u32 Fn_193fcc_0();
extern char g_0080b5d8[];
u32 Fn_1fddd8_2f1(u32, u32, float);
u32 Fn_5c92d0_1(u32);
u32 Fn_5d5494_2(u32, u32);
u32 Fn_22b538_2f2(u32, u32, float, float);
u32 Fn_22b68c_1(u32);
u32 Fn_5c6614_3(u32, u32, u32);
u32 Fn_5c67dc_2(u32, u32);
u32 Fn_5c760c_3(u32, u32, u32);
extern char g_007c732c[];
u32 Fn_5ebc5c_2(u32, u32);
u32 Fn_5ebc5c_4(u32, u32, u32, u32);
extern char g_003aa718[];
u32 Fn_021ca0_3(u32, u32, u32);
u32 Fn_0ce678_1(u32);
u32 Fn_0ceba8_1(u32);
u32 Fn_2a90c8_1(u32);
u32 Fn_2a9bfc_1(u32);
u32 Fn_1d5c5c_1(u32);
u32 Fn_1dc494_1(u32);
u32 Fn_1ec858_1(u32);
u32 Fn_1fef90_1(u32);
u32 Fn_20ce80_1(u32);
u32 Fn_21a5c8_1(u32);
u32 Fn_1bc160_1(u32);
u32 Fn_1d3260_1(u32);
u32 Fn_1d3fb8_1(u32);
u32 Fn_1eb3a8_1(u32);
extern char g_007cce12[];
u32 Fn_610b80_2(u32, u32);
u32 Fn_610ef0_2(u32, u32);
u32 Fn_6111ec_3(u32, u32, u32);
u32 Fn_611234_1(u32);
u32 Fn_60da28_3(u32, u32, u32);
u32 Fn_04c72c_3(u32, u32, u32);
u32 Fn_0d0448_3(u32, u32, u32);
u32 Fn_12d794_3(u32, u32, u32);
u32 Fn_2ec174_1(u32);
u32 Fn_2f3a54_1(u32);
u32 Fn_5bb940_2(u32, u32);
u32 Fn_321f7c_2(u32, u32);
extern char g_007ab854[];
u32 Fn_1f826c_1(u32);
u32 Fn_219810_1(u32);
u32 Fn_5421a0_3(u32, u32, u32);
u32 Fn_5c6ae0_3(u32, u32, u32);
u32 Fn_5d2b94_2(u32, u32);
u32 Fn_5d4b4c_2(u32, u32);
u32 Fn_254014_2(u32, u32);
u32 Fn_2553e4_2(u32, u32);
u32 Fn_255764_2(u32, u32);
u32 Fn_5c0d4c_3(u32, u32, u32);
u32 Fn_22a724_1(u32);
u32 Fn_22ada4_1(u32);
u32 Fn_243344_1(u32);
u32 Fn_2518c0_1(u32);
u32 Fn_2402a0_1(u32);
u32 Fn_240a9c_1(u32);
u32 Fn_245398_1(u32);
u32 Fn_245944_1(u32);
u32 Fn_2460f8_1(u32);
u32 Fn_1dca8c_0();
u32 Fn_1dda08_1(u32);
u32 Fn_2011f4_1(u32);
u32 Fn_21c294_1(u32);
u32 Fn_21c79c_1(u32);
u32 Fn_227fd4_1(u32);
u32 Fn_24c070_1(u32);
u32 Fn_1c9398_1(u32);
u32 Fn_1c09e8_1(u32);
u32 Fn_1c0fe4_1(u32);
u32 Fn_1d927c_1(u32);
u32 Fn_1dfd08_1(u32);
u32 Fn_20a71c_1(u32);
u32 Fn_192024_1(u32);
u32 Fn_1e7560_1(u32);
u32 Fn_21d2b4_1(u32);
u32 Fn_1c5da8_1(u32);
u32 Fn_1df388_1(u32);
extern char g_008bfa7c[];
u32 Fn_196488_4(u32, u32, u32, u32);
u32 Fn_196ff8_2(u32, u32);
u32 Fn_1ef738_1(u32);
u32 Fn_1f04bc_1(u32);
u32 Fn_1c6818_1(u32);
u32 Fn_1c1ec4_1(u32);
u32 Fn_1c2a7c_1(u32);
u32 Fn_1f04bc_0();
u32 Fn_21cb00_1(u32);
u32 Fn_365400_3(u32, u32, u32);
u32 Fn_5b12b8_1(u32);
u32 Fn_2e1abc_1(u32);
u32 Fn_2e35fc_1(u32);
u32 Fn_2e3fd8_1(u32);
u32 Fn_399d44_1(u32);
u32 Fn_39a7b0_1(u32);
u32 Fn_44a3ec_1(u32);
u32 Fn_196f20_1(u32);
u32 Fn_3bc040_2(u32, u32);
u32 Fn_3bdbdc_1(u32);
u32 Fn_3bdec4_1(u32);
u32 Fn_60da28_2(u32, u32);
u32 Fn_0152e0_3(u32, u32, u32);
extern char g_007c3672[];
u32 Fn_626038_1(u32);
u32 Fn_626044_1(u32);
u32 Fn_626064_3(u32, u32, u32);
extern char g_00823154[];
u32 Fn_2f3590_2(u32, u32);
extern char g_00823b08[];
extern char g_00823ba4[];
u32 Fn_409208_1(u32);
u32 Fn_40921c_4(u32, u32, u32, u32);
u32 Fn_414eb8_4(u32, u32, u32, u32);
u32 Fn_4274c4_2(u32, u32);
u32 Fn_427c0c_1(u32);
u32 Fn_427c0c_2(u32, u32);
u32 Fn_430020_2(u32, u32);
u32 Fn_43016c_1(u32);
u32 Fn_43d2dc_1(u32);
u32 Fn_43e7ec_2(u32, u32);
extern char g_008bfa2c[];
u32 Fn_3eeb38_3(u32, u32, u32);
u32 Fn_4385bc_3f3(u32, u32, u32, float, float, float);
u32 Fn_43c9ac_1(u32);
u32 Fn_43d8cc_2(u32, u32);
u32 Fn_1d5124_1(u32);
extern char g_00825a14[];
u32 Fn_0ff96c_1(u32);
u32 Fn_2b36b4_2(u32, u32);
u32 Fn_44b1f8_0();
extern char g_00825a48[];
u32 Fn_0ffcec_1(u32);
u32 Fn_2b4830_2(u32, u32);
extern char g_00825ab0[];
u32 Fn_101078_1(u32);
u32 Fn_2b542c_2(u32, u32);
u32 Fn_457c48_2(u32, u32);
u32 Fn_5ebcb4_3(u32, u32, u32);
u32 Fn_4646a0_1(u32);
u32 Fn_47685c_1(u32);
extern char g_008d6b7c[];
u32 Fn_146e14_2(u32, u32);
u32 Fn_5b13a8_2(u32, u32);
u32 Fn_62fc64_1(u32);
u32 Fn_5df0d8_2(u32, u32);
u32 Fn_48ca04_1(u32);
u32 Fn_48f7c4_1(u32);
u32 Fn_4982c0_2(u32, u32);
u32 Fn_483ed0_2(u32, u32);
u32 Fn_6300a4_1(u32);
u32 Fn_4a4a5c_1(u32);
u32 Fn_4a5150_1(u32);
u32 Fn_5ae1c8_2(u32, u32);
u32 Fn_19a230_1(u32);
u32 Fn_19aedc_1(u32);
u32 Fn_19b088_1(u32);
u32 Fn_2166a0_1(u32);
extern char g_009b74c8[];
u32 Fn_4df8a4_1(u32);
u32 Fn_636d24_2(u32, u32);
u32 Fn_512510_2(u32, u32);
u32 Fn_512590_3(u32, u32, u32);
u32 Fn_01d604_1(u32);
u32 Fn_009028_2(u32, u32);
u32 Fn_012400_1(u32);
u32 Fn_01291c_1(u32);
u32 Fn_534c30_3(u32, u32, u32);
u32 Fn_536580_1(u32);
u32 Fn_561354_1(u32);
u32 Fn_5613e8_2(u32, u32);
u32 Fn_562d24_2(u32, u32);
u32 Fn_55736c_1(u32);
u32 Fn_557434_1(u32);
u32 Fn_5576b8_1(u32);
u32 Fn_55bf1c_1(u32);
u32 Fn_55c048_1(u32);
u32 Fn_5924d4_3(u32, u32, u32);
extern char g_008ab49c[];
u32 Fn_020ac8_1(u32);
u32 Fn_020ad4_1(u32);
u32 Fn_026b48_2(u32, u32);
u32 Fn_026bc4_2(u32, u32);
extern char g_0082dab8[];
u32 Fn_02a080_2(u32, u32);
u32 Fn_5ad5ec_1(u32);
u32 Fn_6415d8_2(u32, u32);
u32 Fn_64658c_2(u32, u32);
u32 Fn_500a4c_1(u32);
u32 Fn_5015ec_1(u32);
u32 Fn_516100_1(u32);
u32 Fn_620748_1(u32);
u32 Fn_623d18_1(u32);
u32 Fn_623d88_1(u32);
extern char g_008bb610[];
u32 Fn_58c7d8_1(u32);
u32 Fn_58c808_2(u32, u32);
u32 Fn_555704_1(u32);
u32 Fn_2e7d0c_1(u32);
u32 Fn_62515c_1(u32);
u32 Fn_630e44_1(u32);
u32 Fn_386d38_1(u32);
u32 Fn_386d38_3(u32, u32, u32);
u32 Fn_386d38_2(u32, u32);
u32 Fn_62f4d0_1(u32);
u32 Fn_631f88_0();
u32 Fn_63fa5c_3(u32, u32, u32);
u32 Fn_0282dc_2(u32, u32);
u32 Fn_6467bc_2(u32, u32);
u32 Fn_648efc_2(u32, u32);
u32 Fn_65b8dc_2(u32, u32);
u32 Fn_678268_1(u32);

// FUN_00005e4c
void W_005e4c(u32 a0) {
    *(u32*)((u32)((u32)g_008aac58)) = a0;
}

// FUN_000088ac
u32 W_0088ac() {

    return (u32)g_009a13f8;
}

// FUN_00008c04
void W_008c04() {
    *(u8*)((u32)((u32)g_008b7cd0) + 1) = 1;
}

// FUN_00008c38
u32 W_008c38() {
    u32 t1 = *(u32*)((u32)((u32)g_008ab8e0) + 24);
    return t1;
}

// FUN_00008c48
u32 W_008c48() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(u32*)(r0 + 24);
    r0 = r0 & 7u;
    fa = r0; fb = 6u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00008c68
void W_008c68(u32 a0) {
    *(u32*)((u32)((u32)g_008ab8e0) + 24) = a0;
}

// FUN_00008c78
u32 W_008c78() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(u32*)(r0 + 24);
    fx = r0 & 7u;
    if (fx == 0) r0 = 1u;
    if (fx != 0) r0 = 0u;
    return r0;
}

// FUN_00008c94
u32 W_008c94() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aab48;
    r0 = *(signed char*)(r0 + 2);
    return r0;
}

// FUN_00008ca4
void W_008ca4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008ab948;
    r1 = *(u32*)(r4 + 64);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 128);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r1 = *(u32*)(r4 + 68);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_8cd4;
    r0 = *(u32*)(r4 + 132);
    { ((u32(*)(u32))r1)(r0); return; }
    L_8cd4:;
    return;
}

// FUN_00008d20
void W_008d20() {
    u32 t1 = Fn_0131a4_2((u32)g_00112464, 0);
    *(u32*)((u32)((u32)g_008ab948) + 12) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 76) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 16) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 80) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 20) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 84) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 24) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 88) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 28) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 92) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 32) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 96) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 36) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 100) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 40) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 104) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 44) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 108) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 48) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 112) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 52) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 116) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 56) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 120) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 60) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 124) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 72) = 0;
    *(u32*)((u32)((u32)g_008ab948) + 136) = 0;
}

// FUN_00008db4
void W_008db4(u32 a0) {
    *(u32*)((u32)((u32)g_008ab8e0) + 20) = a0;
}

// FUN_00008e10
void W_008e10(u32 a0) {
    *(u32*)((u32)((u32)g_008ab8c8)) = a0;
}

// FUN_00008e20
void W_008e20(u32 a0) {
    *(u32*)((u32)((u32)g_008ab910) + 8) = a0;
}

// FUN_00008e30
void W_008e30() {
    *(u8*)((u32)((u32)g_008ab910)) = 1;
}

// FUN_00008e44
u32 W_008e44() {

    return (u32)g_009ad8c0;
}

// FUN_00008e50
void W_008e50(u32 a0) {
    *(u8*)((u32)((u32)g_008ab910) + 1) = a0;
}

// FUN_00009018
void W_009018(u32 a0) {
    *(u32*)((u32)((u32)g_008ab910) + 4) = a0;
}

// FUN_00010c84
void W_010c84() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = (u32)g_008aabb0;
    r0 = *(u8*)(r6 + 2);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = (u32)g_009a0fb4;
    if (fa != fb) r4 = 0u;
    if (fa == fb) goto L_10cc0;
    L_10ca0:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r0 = ((u32(*)())r0)();
    r4 = r4 + 1u;
    fa = r4; fb = 8u;
    if ((int)fa < (int)fb) goto L_10ca0;
    r0 = 0u;
    *(u8*)(r6 + 2) = r0;
    L_10cc0:;
    return;
}

// FUN_00010ccc
void W_010ccc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    r0 = (u32)g_009a0fe8;
    r12 = 52506u;
    r3 = 0u;
    *(u8*)(r0 + 1) = r3;
    *(u16*)(r0 + 2) = r12;
    *(u8*)(r0) = r3;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 4) = r2;
    { Fn_010cfc_4(r0, r1, r2, r3); return; }
}

// FUN_00011740
u32 W_011740() {

    return (u32)g_009a1408;
}

// FUN_00012400
u32 W_012400() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(u32*)(r0 + 24);
    r0 = r0 & 7u;
    return r0;
}

// FUN_00012414
u32 W_012414() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(u32*)(r0 + 24);
    r0 = r0 & 7u;
    fa = r0; fb = 2u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00012434
u32 W_012434() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 10);
    return t1;
}

// FUN_00012444
void W_012444(u32 a0) {
    *(u8*)((u32)((u32)g_008ab8e0) + 10) = a0;
}

// FUN_00012454
u32 W_012454() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(signed char*)(r0 + 9);
    return r0;
}

// FUN_0001291c
void W_01291c(u32 a0) {
    *(u8*)((u32)((u32)g_008ab8e0) + 13) = a0;
}

// FUN_0001292c
void W_01292c() {
    *(u8*)((u32)((u32)g_008ab8e0) + 9) = 1;
}

// FUN_00012c98
void W_012c98() {
    *(u8*)((u32)((u32)g_008ab8e0) + 1) = 0;
}

// FUN_0001317c
u32 W_01317c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aab48;
    r1 = *(u8*)(r0 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_1319c;
    r1 = 0u;
    *(u8*)(r0 + 1) = r1;
    return Fn_01cf88_2(r0, r1);
    L_1319c:;
    return r0;
}

// FUN_000131a4
void W_0131a4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1;
    r2_1 = (u32)g_008ab890;
    *(u32*)(r2_1 + 4) = r0; *(u32*)(r2_1 + 4 + 4) = r1;
    return;
}

// FUN_00013230
void W_013230(u32 a0) {
    *(u8*)((u32)((u32)g_008ab8e0) + 5) = a0;
}

// FUN_00013240
u32 W_013240() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 6);
    return t1;
}

// FUN_00013250
void W_013250(u32 a0) {
    *(u8*)((u32)((u32)g_008ab8e0) + 6) = a0;
}

// FUN_000135a4
u32 W_0135a4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_000135b4
void W_0135b4() {
    *(u8*)((u32)((u32)g_008ab8e0) + 1) = 1;
}

// FUN_0001b774
u32 W_01b774() {
    u32 t1 = *(u8*)((u32)((u32)g_008aabb0));
    if (t1 != 0) {
        return Fn_024800_1(t1);
    }
}

// FUN_0001c574
void W_01c574(u32 a0) {
    *(u8*)((u32)(a0) + 73) = 0;
}

// FUN_0001d0d0
void W_01d0d0(u32 a0) {
    *(u32*)((u32)((u32)g_008ab8e0) + 16) = a0;
}

// FUN_0001d0e0
u32 W_01d0e0() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 12);
    return t1;
}

// FUN_0001d0f0
void W_01d0f0(u32 a0) {
    *(u8*)((u32)((u32)g_008ab8e0) + 12) = a0;
}

// FUN_0001d138
void W_01d138(u32 a0) {
    *(u8*)((u32)((u32)g_008ab8e0) + 11) = a0;
}

// FUN_0001d180
u32 W_01d180() {
    u32 t1 = *(u32*)((u32)((u32)g_008ab8e0) + 20);
    return t1;
}

// FUN_0001d390
void W_01d390(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab48;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d3b8;
    r0 = *(u8*)(r4 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d3d8;
    r0 = Fn_024800_1(r0);
    r0 = 0u;
    goto L_1d3d4;
    L_1d3b8:;
    r0 = Fn_024788_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d3d8;
    r0 = Fn_024798_1(r0);
    r0 = 1u;
    L_1d3d4:;
    *(u8*)(r4 + 4) = r0;
    L_1d3d8:;
    return;
}

// FUN_0001d4fc
void W_01d4fc() {
    *(u8*)((u32)((u32)g_008ab8e0) + 3) = 0;
}

// FUN_0001d5d0
u32 W_01d5d0() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 2);
    return t1;
}

// FUN_0001d5f0
void W_01d5f0() {
    *(u8*)((u32)((u32)g_008ab8e0) + 2) = 0;
}

// FUN_0001d96c
void W_01d96c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_1d978;
    { Fn_01d9f0_1(r0); return; }
    L_1d978:;
    { WeakCall1(r0); return; }
}

// FUN_0001fd7c
u32 W_01fd7c() {
    return Fn_0244c8_1((u32)g_009a4770);
}

// FUN_0001fd88
u32 W_01fd88() {
    return Fn_024568_1((u32)g_009a4770);
}

// FUN_00024568
void W_024568(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 8);
    r1 = r1 - 1u;
    *(u32*)(r0 + 8) = r1;
    if (r1 != 0) goto L_24584;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    { Fn_01b538_2(r0, r1); return; }
    L_24584:;
    return;
}

// FUN_00024788
u32 W_024788() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aabb0;
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_000252f4
u32 W_0252f4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b7cd0;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_000258dc
u32 W_0258dc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b7cd0;
    r0 = *(signed char*)(r0 + 1);
    return r0;
}

// FUN_000258ec
u32 W_0258ec() {
    u32 t1 = *(u32*)((u32)((u32)g_008ab8e0) + 16);
    return t1;
}

// FUN_000258fc
u32 W_0258fc() {
    return Fn_01b4d4_1((u32)g_008ab8a4);
}

// FUN_00025908
u32 W_025908() {
    return Fn_01b274_1((u32)g_008ab8a4);
}

// FUN_0002960c
u32 W_02960c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b7cd0;
    r0 = *(signed char*)(r0 + 2);
    return r0;
}

// FUN_0002961c
u32 W_02961c() {
    u32 t1 = *(u32*)((u32)((u32)g_008b7cd0) + 28);
    return t1;
}

// FUN_0002962c
u32 W_02962c() {

    return (u32)g_008b7ce4;
}

// FUN_0002b008
void W_02b008() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004e019c
u32 W_4e019c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_00804ab0;
    return Fn_5b1548_2(a0, (u32)g_00804ab0);
}

// FUN_004e0660
u32 W_4e0660(u32 a0) {
    u32 t1 = Fn_551538_1(a0);
    u32 t2 = Fn_5542c8_1((t1 - 192));
    u32 t3 = Fn_551d28_1((t2 - 356));
    return (t3 - 64);
}

// FUN_004e08a8
u32 W_4e08a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r0 + 4u;
    r0 = *(u32*)(r0 + 4);
    r1 = r0 & ~1u;
    if (r1 == 0) goto L_4e08dc;
    fx = r0 & 1u;
    if (fx != 0) r0 = Fn_024730_2(r0, r1);
    r0 = *(u32*)(r4);
    r0 = r0 & ~1u;
    r0 = Fn_4ec684_1(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_4e08dc:;
    r0 = r5;
    return r0;
}

// FUN_004e0ebc
u32 W_4e0ebc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1 + (r0 << 3);
    r4 = r4 + 4u; r0 = *(u32*)(r4);
    r1 = r0 & ~1u;
    if (r1 == 0) goto L_4e0eec;
    fx = r0 & 1u;
    if (fx != 0) r0 = Fn_024730_2(r0, r1);
    r0 = *(u32*)(r4);
    r0 = r0 & ~1u;
    r0 = Fn_4ec684_1(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_4e0eec:;
    r0 = 1u;
    return r0;
}

// FUN_004e13a0
u32 W_4e13a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a0ea8;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008aab30;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = 1u;
    if (fa == fb) r5 = 0u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}

// FUN_004e1998
u32 W_4e1998(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3762331647u;
    if (fa == fb) goto L_4e19a8;
    return Fn_4e27a8_1(r0);
    L_4e19a8:;
    return r0;
}

// FUN_004e19b0
u32 W_4e19b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3762331647u;
    if (fa == fb) goto L_4e19c0;
    return Fn_4e2860_1(r0);
    L_4e19c0:;
    return r0;
}

// FUN_004e19c8
u32 W_4e19c8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a0ea8;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008ab860;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = 1u;
    if (fa == fb) r5 = 0u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}

// FUN_004e73d4
u32 W_4e73d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = Fn_01b74c_1(r0);
    r0 = Fn_4fd248_1(r0);
    r4 = r0;
    r0 = Fn_0246c0_1(r0);
    fa = r4; fb = 0u;
    if (fa == fb) r0 = 3374358404u;
    if (fa == fb) goto L_4e7404;
    r0 = r5;
    return Fn_4e1760_1(r0);
    L_4e7404:;
    return r0;
}

// FUN_004e76b8
u32 W_4e76b8(u32 a0) {
    u32 t1 = Fn_4e76c8_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_004e7728
u32 W_4e7728(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r0 + 8u;
    r0 = *(u32*)(r0 + 8);
    r1 = r0 & ~1u;
    if (r1 == 0) goto L_4e775c;
    fx = r0 & 1u;
    if (fx != 0) r0 = Fn_024730_2(r0, r1);
    r0 = *(u32*)(r4);
    r0 = r0 & ~1u;
    r0 = Fn_4ec684_1(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_4e775c:;
    r0 = r5;
    return r0;
}

// FUN_004e79a0
u32 W_4e79a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aac2c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_004e7d30
void W_4e7d30() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004e7d68
void W_4e7d68() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004e7e54
u32 W_4e7e54(u32 a0) {
    u32 t1 = Fn_4e7e64_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_004e7e64
u32 W_4e7e64(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r0 + 4u;
    r0 = *(u32*)(r0 + 4);
    r1 = r0 & ~1u;
    if (r1 == 0) goto L_4e7e98;
    fx = r0 & 1u;
    if (fx != 0) r0 = Fn_024730_2(r0, r1);
    r0 = *(u32*)(r4);
    r0 = r0 & ~1u;
    r0 = Fn_4ec684_1(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_4e7e98:;
    r0 = r5;
    return r0;
}

// FUN_004e7f98
u32 W_4e7f98(u32 a0) {
    u32 t1 = Fn_4e7fa8_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_004e7fa8
u32 W_4e7fa8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r0 + 4u;
    r0 = *(u32*)(r0 + 4);
    r1 = r0 & ~1u;
    if (r1 == 0) goto L_4e7fdc;
    fx = r0 & 1u;
    if (fx != 0) r0 = Fn_024730_2(r0, r1);
    r0 = *(u32*)(r4);
    r0 = r0 & ~1u;
    r0 = Fn_4ec684_1(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_4e7fdc:;
    r0 = r5;
    return r0;
}

// FUN_004e8b84
void W_4e8b84(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1;
    r12_1 = 0u;
    *(u16*)(r0 + 2) = r12_1;
    *(u8*)(r0) = r1;
    *(u8*)(r0 + 1) = r12_1;
    *(u32*)(r0 + 4) = r2; *(u32*)(r0 + 4 + 4) = r3;
    return;
}

// FUN_004e9194
u32 W_4e9194(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = (u32)&stk;
    r0 = Fn_4ed8ac_1(r0);
    r1 = r0 >> 31;
    if (r1 != 0) goto L_4e91bc;
    r0 = stk;
    r1 = ~0u;
    *(u32*)(r4) = r0; *(u32*)(r4 + 4) = r1;
    r0 = 0u;
    L_4e91bc:;
    return r0;
}

// FUN_004e9ee0
void W_4e9ee0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = *(u32*)(r1 + 16);
    stk = r1;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_4ef124_2(r0, r1);
    return;
}

// FUN_004eb0e4
u32 W_4eb0e4() {

    return 3770697464u;
}

// FUN_004eb0f0
u32 W_4eb0f0() {

    return 3770697464u;
}

// FUN_004eb0fc
u32 W_4eb0fc() {

    return 3770697464u;
}

// FUN_004eb294
u32 W_4eb294() {

    return 3770697464u;
}

// FUN_004eb2a0
u32 W_4eb2a0() {

    return 3770697464u;
}

// FUN_004eb314
u32 W_4eb314() {

    return 3770697464u;
}

// FUN_004eb320
u32 W_4eb320(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    *(u32*)((u32)(a1)) = t1;
    return 0;
}

// FUN_004eb454
u32 W_4eb454() {

    return 3770697464u;
}

// FUN_004eb460
u32 W_4eb460() {

    return 3770697464u;
}

// FUN_004eb6c4
u32 W_4eb6c4() {

    return 3770697464u;
}

// FUN_004eb6d0
u32 W_4eb6d0() {

    return 3770697464u;
}

// FUN_004eb6dc
void W_4eb6dc() {

}

// FUN_004eb9b4
u32 W_4eb9b4() {

    return 3770697464u;
}

// FUN_004ebd24
void W_4ebd24() {

}

// FUN_004ec028
void W_4ec028(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 40);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_004ec0b0
u32 W_4ec0b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[4];
    r4 = r0;
    r0 = Fn_684968_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3363849317u;
    if (fa != fb) r5 = r0;
    if (fa != fb) r6 = (u32)stk;
    if (fa == fb) goto L_4ec110;
    L_4ec0d4:;
    r0 = *(u16*)(r4); r4 = r4 + 2u;
    fa = r0; fb = 58u;
    if (fa != fb) goto L_4ec0d4;
    r1 = 4u;
    r0 = r4;
    *(u32*)((u32)stk + 0) = r1; *(u32*)((u32)stk + 4) = r4;
    r0 = Fn_000d0c_2(r0, r1);
    r0 = r0 + 1u;
    r1 = r6;
    r0 = r0 << 1;
    *(u32*)((u32)stk + 8) = r0;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 8);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_4ec110:;
    return r0;
}

// FUN_004ec238
void W_4ec238(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4ec24c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    { ((u32(*)(u32))r1)(r0); return; }
    L_4ec24c:;
    return;
}

// FUN_004ec27c
u32 W_4ec27c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3772794556u;
    if (fa == fb) goto L_4ec294;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 16);
    return ((u32(*)(u32))r1)(r0);
    L_4ec294:;
    return r0;
}

// FUN_004ec378
u32 W_4ec378(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[4];
    r4 = r0;
    r0 = Fn_684968_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3363849317u;
    if (fa != fb) r5 = r0;
    if (fa != fb) r6 = (u32)stk;
    if (fa == fb) goto L_4ec3d8;
    L_4ec39c:;
    r0 = *(u16*)(r4); r4 = r4 + 2u;
    fa = r0; fb = 58u;
    if (fa != fb) goto L_4ec39c;
    r1 = 4u;
    r0 = r4;
    *(u32*)((u32)stk + 0) = r1; *(u32*)((u32)stk + 4) = r4;
    r0 = Fn_000d0c_2(r0, r1);
    r0 = r0 + 1u;
    r1 = r6;
    r0 = r0 << 1;
    *(u32*)((u32)stk + 8) = r0;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 28);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_4ec3d8:;
    return r0;
}

// FUN_004ec3e4
u32 W_4ec3e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[4];
    r4 = r0;
    r0 = Fn_684968_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3363849317u;
    if (fa != fb) r5 = r0;
    if (fa != fb) r6 = (u32)stk;
    if (fa == fb) goto L_4ec444;
    L_4ec408:;
    r0 = *(u16*)(r4); r4 = r4 + 2u;
    fa = r0; fb = 58u;
    if (fa != fb) goto L_4ec408;
    r1 = 4u;
    r0 = r4;
    *(u32*)((u32)stk + 0) = r1; *(u32*)((u32)stk + 4) = r4;
    r0 = Fn_000d0c_2(r0, r1);
    r0 = r0 + 1u;
    r1 = r6;
    r0 = r0 << 1;
    *(u32*)((u32)stk + 8) = r0;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 16);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_4ec444:;
    return r0;
}

// FUN_004ec5e4
u32 W_4ec5e4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[4];
    r4 = r0;
    r0 = Fn_684968_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3363849317u;
    if (fa != fb) r5 = r0;
    if (fa != fb) r6 = (u32)stk;
    if (fa == fb) goto L_4ec644;
    L_4ec608:;
    r0 = *(u16*)(r4); r4 = r4 + 2u;
    fa = r0; fb = 58u;
    if (fa != fb) goto L_4ec608;
    r1 = 4u;
    r0 = r4;
    *(u32*)((u32)stk + 0) = r1; *(u32*)((u32)stk + 4) = r4;
    r0 = Fn_000d0c_2(r0, r1);
    r0 = r0 + 1u;
    r1 = r6;
    r0 = r0 << 1;
    *(u32*)((u32)stk + 8) = r0;
    r0 = *(u32*)(r5);
    r2 = *(u32*)(r0 + 20);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    L_4ec644:;
    return r0;
}

// FUN_004ec684
void W_4ec684(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4ec698;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 48);
    { ((u32(*)(u32))r1)(r0); return; }
    L_4ec698:;
    return;
}

// FUN_004ece80
u32 W_4ece80(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    return t1;
}

// FUN_004ecf0c
void W_4ecf0c(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_004edadc
u32 W_4edadc() {

    return 0;
}

// FUN_004edae4
void W_4edae4() {

}

// FUN_004edae8
u32 W_4edae8() {

    return 3770697464u;
}

// FUN_004edb4c
u32 W_4edb4c() {

    return 3770697464u;
}

// FUN_004ef7f0
u32 W_4ef7f0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aac58;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = Fn_024730_1(r0);
    r0 = *(u32*)(r4);
    return r0;
}

// FUN_004ef8f8
void W_4ef8f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8u;
    { WeakCall1(r0); return; }
}

// FUN_004efd84
u32 W_4efd84(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 573u;
    r2 = 1u;
    if (fa == fb) r1 = 572u;
    *(u32*)(r0) = r2; r0 = r0 + 4u;
    r1 = r1 | 983040u;
    *(u32*)(r0) = r1; r0 = r0 + 4u;
    return r0;
}

// FUN_004efe0c
void W_4efe0c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r1_1, r2_1, r3_1, r0_1, r0_2, r0_3, r0_4;
    r4_1 = r0;
    r1_1 = r0 + 676u;
    r2_1 = *(u32*)(r4_1); r3_1 = *(u32*)(r4_1 + 4);
    r0_1 = Fn_0238e8_4(r0, r1_1, r2_1, r3_1);
    r0_2 = r0_1 - r4_1;
    r0_3 = r0_2 - 676u;
    r0_4 = (u32)((int)r0_3 >> 2);
    *(u32*)(r4_1 + 868) = r0_4;
    return;
}

// FUN_004f0cf4
u32 W_4f0cf4() {
    u32 t1 = *(u8*)((u32)((u32)g_008bb928) + 3);
    return t1;
}

// FUN_004f2c6c
u32 W_4f2c6c() {
    u32 t1 = *(u32*)((u32)((u32)g_008bbb1c) + 12);
    u32 t2 = *(u8*)((u32)(t1) + 8);
    return t2;
}

// FUN_004f2cd4
u32 W_4f2cd4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    u32 t2 = *(u32*)((u32)(t1) + 8);
    return t2;
}

// FUN_004f4758
void W_4f4758() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004f47e4
void W_4f47e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_004f4b30
u32 W_4f4b30(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        return Fn_024500_2((u32)g_009b0c40, a0);
    }
}

// FUN_004f4b50
u32 W_4f4b50(u32 a0) {
    u32 t1 = Fn_4f4b30_1(a0);
    return a0;
}

// FUN_004f4b64
void W_4f4b64() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_4f4b80_0();
    r1 = r0 >> 31;
    if (r1 == 0) goto L_4f4b7c;
    { Fn_01b6ac_2(r0, r1); return; }
    L_4f4b7c:;
    return;
}

// FUN_004f5598
u32 W_4f5598(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0));
    u32 t2 = Fn_024568_1(t1);
    return a0;
}

// FUN_004f55f8
u32 W_4f55f8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r2_1, r1_1, r0_2, r0_3, r0_4, r1_2, stk[2];
    r0_3 = Fn_0313f8_3(((u32)stk), (*(u32*)(((u32)g_007e91f8))), 0u);
    u64 t64 = *(u64*)((u32)stk); r0_4 = (u32)t64; r1_2 = (u32)(t64 >> 32);
    *(u64*)(r0) = (u64)r0_4 | ((u64)r1_2 << 32);
    return r0_4;
}

// FUN_004f565c
u32 W_4f565c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    if (t1 != 0) {
        return Fn_4f652c_2(a0, t1);
    }
}

// FUN_004f58dc
void W_4f58dc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    *(u32*)(r1 + (r0 << 2)) = r2;
    return;
}

// FUN_004f5fb0
u32 W_4f5fb0(u32 a0) {

    return (a0 + 24);
}

// FUN_004f6508
void W_4f6508(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8u; r2 = *(u32*)(r0);
    r1 = *(u32*)(r0 + 4);
    r0 = r1;
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
}

// FUN_004f6518
void W_4f6518() {

}

// FUN_004f651c
u32 W_4f651c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b84fc;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_004f653c
u32 W_4f653c(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 8);
    return t1;
}

// FUN_004f6544
void W_4f6544(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 12u; r2 = *(u32*)(r0);
    r1 = *(u32*)(r0 + 4);
    r0 = r1;
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
}

// FUN_004f6554
void W_4f6554() {

}

// FUN_004f6558
u32 W_4f6558(u32 a0) {
    return Fn_024500_2((u32)g_009b0c58, a0);
}

// FUN_004f6568
u32 W_4f6568(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 32u;
    if ((int)fa >= (int)fb) r0 = r0 - 32u;
    if ((int)fa >= (int)fb) goto L_4f6588;
    fa = r0; fb = 24u;
    if ((int)fa >= (int)fb) r1 = 1359598848u;
    if ((int)fa < (int)fb) r1 = 1821222144u;
    if ((int)fa >= (int)fb) r0 = r0 - 24u;
    r0 = r0 + r1;
    L_4f6588:;
    return r0;
}

// FUN_004f65cc
u32 W_4f65cc() {
    u32 t1 = *(u32*)((u32)((u32)g_008aae00) + 4);
    return t1;
}

// FUN_004f6854
void W_4f6854() {
    u32 t1 = *(u8*)((u32)((u32)g_008aae10));
    if (t1 != 0) {
        u32 t2 = Fn_4f69bc_1(t1);
        *(u8*)((u32)((u32)g_008aae10)) = 0;
    }
}

// FUN_004f6958
void W_4f6958() {
    u32 t1 = *(u8*)((u32)((u32)g_008aae10));
    if (t1 == 0) {
        u32 t2 = Fn_4f6984_1(t1);
        u32 t3 = Fn_4f7320_1(t2);
        *(u8*)((u32)((u32)g_008aae10)) = 1;
    }
}

// FUN_004f74e0
u32 W_4f74e0(u32 a0) {
    u32 t1 = Fn_4fae50_1(a0);
    return Fn_4f7500_1(t1);
}

// FUN_004f7630
u32 W_4f7630(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = *(u8*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_4f764c;
    r0 = Fn_4fad4c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4f7674;
    L_4f764c:;
    r0 = (u32)&stk;
    r0 = Fn_4faff0_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_4f7670;
    r0 = *(u8*)((u32)&stk);
    fa = r0; fb = 1u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_4f7674;
    L_4f7670:;
    r0 = 1u;
    L_4f7674:;
    return r0;
}

// FUN_004f782c
u32 W_4f782c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aab74;
    r0 = *(u8*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_4f784c;
    r0 = Fn_4fad4c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4f7850;
    L_4f784c:;
    r0 = 1u;
    L_4f7850:;
    return r0;
}

// FUN_004f796c
u32 W_4f796c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 & ~15728640u;
    r0 = r1 | (r0 << 8);
    return r0;
}

// FUN_004f7b94
u32 W_4f7b94(u32 a0) {
    u32 t1 = Fn_4f7500_1(a0);
    return a0;
}

// FUN_004fab54
u32 W_4fab54(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082bf60;
    u32 t1 = Fn_4fa9c0_1(a0);
    return Fn_2024b0_1(a0);
}

// FUN_004fab7c
u32 W_4fab7c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082bf60;
    u32 t1 = Fn_4fa9c0_1(a0);
    return a0;
}

// FUN_004faba0
void W_4faba0(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9ec) + 4) = a0;
}

// FUN_004faff0
u32 W_4faff0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008b877c;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_4fb004;
    return Fn_4fbce0_0();
    L_4fb004:;
    r1 = (u32)g_008b8778;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 3766553592u;
    if (fa == fb) goto L_4fb01c;
    return Fn_4fb430_2(r0, r1);
    L_4fb01c:;
    return r0;
}

// FUN_004fb148
u32 W_4fb148() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b8778;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3766553592u;
    if (fa == fb) goto L_4fb160;
    return Fn_0313a4_1(r0);
    L_4fb160:;
    return r0;
}

// FUN_004fb1e0
u32 W_4fb1e0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008b8778;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_4fb20c;
    L_4fb1f4:;
    r0 = (u32)g_00989680;
    r1 = 0u;
    r0 = Fn_01b71c_2(r0, r1);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4fb1f4;
    L_4fb20c:;
    r0 = 0u;
    return r0;
}

// FUN_004fb21c
void W_4fb21c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_011b7c_0();
    r1 = r0 >> 31;
    if (r1 != 0) goto L_4fb24c;
    r0 = (u32)g_007eb670;
    r0 = Fn_200e60_2(r0, r1);
    r2 = r0;
    r1 = (u32)g_007eb670;
    r0 = (u32)g_008b8778;
    r3 = 0u;
    { Fn_011be4_4(r0, r1, r2, r3); return; }
    L_4fb24c:;
    return;
}

// FUN_004fb2c0
u32 W_4fb2c0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008b877c;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3766553592u;
    if (fa == fb) goto L_4fb2d8;
    return Fn_0313a4_1(r0);
    L_4fb2d8:;
    return r0;
}

// FUN_004fb2e4
void W_4fb2e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_011b7c_0();
    r1 = r0 >> 31;
    if (r1 != 0) goto L_4fb314;
    r0 = (u32)g_007eb677;
    r0 = Fn_200e60_2(r0, r1);
    r2 = r0;
    r1 = (u32)g_007eb677;
    r0 = (u32)g_008b877c;
    r3 = 0u;
    { Fn_011be4_4(r0, r1, r2, r3); return; }
    L_4fb314:;
    return;
}

// FUN_004fb320
u32 W_4fb320() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008b877c;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_4fb334;
    return Fn_4fc420_0();
    L_4fb334:;
    r1 = (u32)g_008b8778;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 3766553592u;
    if (fa == fb) goto L_4fb34c;
    return Fn_4fb7f8_2(r0, r1);
    L_4fb34c:;
    return r0;
}

// FUN_004fbb04
u32 W_4fbb04() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008b877c;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_4fbb18;
    return Fn_4fc54c_0();
    L_4fbb18:;
    r1 = (u32)g_008b8778;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 3766553592u;
    if (fa == fb) goto L_4fbb30;
    return Fn_4fb8d4_2(r0, r1);
    L_4fbb30:;
    return r0;
}

// FUN_004fcfa8
u32 W_4fcfa8(u32 a0, u32 a1, u32 a2) {
    *(u8*)((u32)(a0) + 304) = 0;
    *(u32*)((u32)(a0) + 312) = 0;
    *(u32*)((u32)(a0) + 324) = 0;
    *(u32*)((u32)(a0) + 328) = 0;
    *(u32*)((u32)(a0) + 332) = 0;
    *(u32*)((u32)(a0) + 336) = 0;
    *(u32*)((u32)(a0) + 340) = 0;
    *(u32*)((u32)(a0) + 344) = 0;
    *(u32*)((u32)(a0) + 348) = 0;
    *(u32*)((u32)(a0) + 352) = 0;
    *(u32*)((u32)(a0) + 316) = 0;
    *(u32*)((u32)(a0) + 320) = 0;
    u32 t1 = Fn_4fccb4_3(a0, a1, a2);
    u32 t2 = Fn_4fca20_3(a0, a1, a2);
    return a0;
}

// FUN_004fd00c
u32 W_4fd00c(u32 a0) {
    *(u8*)((u32)(a0) + 304) = 0;
    *(u32*)((u32)(a0) + 312) = 0;
    *(u32*)((u32)(a0) + 324) = 0;
    *(u32*)((u32)(a0) + 328) = 0;
    *(u32*)((u32)(a0) + 332) = 0;
    *(u32*)((u32)(a0) + 336) = 0;
    *(u32*)((u32)(a0) + 340) = 0;
    *(u32*)((u32)(a0) + 344) = 0;
    *(u32*)((u32)(a0) + 348) = 0;
    *(u32*)((u32)(a0) + 352) = 0;
    *(u32*)((u32)(a0) + 316) = 0;
    *(u32*)((u32)(a0) + 320) = 0;
    u32 t1 = Fn_4fccb4_1(a0);
    return a0;
}

// FUN_004fd058
void W_4fd058(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    if (r1 == 0) goto L_4fd07c;
    r0 = (u32)g_008ab9ec;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4fd07c;
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 4);
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
    L_4fd07c:;
    return;
}

// FUN_004fea58
void W_4fea58() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00500614
void W_500614(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u8*)((u32)(a0) + 12) = 0;
}

// FUN_0050085c
u32 W_50085c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)g_008aabb0;
    r1 = 1u;
    *(u8*)((u32)&stk) = r1;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = (u32)&stk;
    if (fa != fb) r0 = Fn_501204_2(r0, r1);
    r0 = *(signed char*)((u32)&stk);
    return r0;
}

// FUN_00500960
void W_500960() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_005019dc
void W_5019dc(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 24);
    if (t1 != 0) {
        u32 t2 = Fn_501e14_1((a0 + 24));
        *(u32*)((u32)(a0) + 24) = 0;
    }
}

// FUN_00501a84
void W_501a84(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082bfc4;
    *(u32*)(r0) = r1;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    r0 = Fn_02a948_2(r0, r1);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00501ab0
void W_501ab0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082bfc4;
    *(u32*)(r0) = r1;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    { Fn_02a948_2(r0, r1); return; }
}

// FUN_00501ad0
void W_501ad0() {

}

// FUN_00502490
void W_502490() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_005027c8
u32 W_5027c8() {

    return (u32)g_009a141c;
}

// FUN_005031d4
void W_5031d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = (u32)g_008bb658;
    r1 = *(u8*)(r4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_503204;
    r0 = (u32)g_009df8ac;
    r0 = Fn_01b624_2(r0, r1);
    r0 = r5;
    r0 = Fn_4f0efc_1(r0);
    r0 = 1u;
    *(u8*)(r4) = r0;
    L_503204:;
    return;
}

// FUN_00503210
u32 W_503210() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_4f0cf4_0();
    fa = r0; fb = 4u;
    if (fa == fb) r0 = 1u;
    if (fa != fb) r0 = 0u;
    return r0;
}

// FUN_00503354
u32 W_503354() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bb658;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_50337c;
    r0 = (u32)g_009df8ac;
    r0 = Fn_0244c8_1(r0);
    r0 = Fn_4f1320_1(r0);
    r0 = (u32)g_009df8ac;
    r0 = Fn_024568_1(r0);
    L_50337c:;
    r2 = (u32)g_009df8ac;
    r1 = ~0u;
    r0 = 0u;
    *(u32*)(r2 + 8) = r1;
    *(u8*)(r4) = r0;
    return r0;
}

// FUN_00503bac
void W_503bac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00503c2c
void W_503c2c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00504550
u32 W_504550(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 4u;
    if (fa >= fb) r0 = 3638586349u;
    if (fa >= fb) goto L_504568;
    r1 = 1u;
    r0 = r1 << (r0 & 255);
    return Fn_5040d4_2(r0, r1);
    L_504568:;
    return r0;
}

// FUN_00504570
u32 W_504570(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 4u;
    if (fa >= fb) r0 = 3638586349u;
    if (fa >= fb) goto L_504588;
    r1 = 1u;
    r0 = r1 << (r0 & 255);
    return Fn_011b08_2(r0, r1);
    L_504588:;
    return r0;
}

// FUN_00505060
u32 W_505060(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 17u;
    *(u8*)((*(u32*)(r1)) + 10) = 4u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_0050508c
u32 W_50508c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 17u;
    *(u8*)((*(u32*)(r1)) + 10) = 3u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005050b8
u32 W_5050b8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 8u;
    *(u8*)((*(u32*)(r1)) + 10) = 1u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505178
u32 W_505178(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 8u;
    *(u8*)((*(u32*)(r1)) + 10) = 2u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005051a4
u32 W_5051a4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 8u;
    *(u8*)((*(u32*)(r1)) + 10) = 3u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005051d0
u32 W_5051d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 17u;
    *(u8*)((*(u32*)(r1)) + 10) = 6u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005051fc
u32 W_5051fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    *(u16*)((*(u32*)(r1)) + 10) = 7u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505228
u32 W_505228(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 17u;
    *(u8*)((*(u32*)(r1)) + 10) = 2u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005052c0
u32 W_5052c0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 7u;
    *(u8*)((*(u32*)(r1)) + 10) = 1u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005052ec
u32 W_5052ec(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    *(u16*)((*(u32*)(r1)) + 10) = 27u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505318
u32 W_505318(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    *(u16*)((*(u32*)(r1)) + 10) = 12u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505344
u32 W_505344(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    *(u16*)((*(u32*)(r1)) + 10) = 10u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505404
u32 W_505404(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    *(u16*)((*(u32*)(r1)) + 10) = 13u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505430
u32 W_505430(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 7u;
    *(u8*)((*(u32*)(r1)) + 10) = 2u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_0050545c
u32 W_50545c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    *(u16*)((*(u32*)(r1)) + 10) = 9u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005054ac
u32 W_5054ac(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 7u;
    *(u8*)((*(u32*)(r1)) + 10) = 3u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005054fc
u32 W_5054fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1, r1_1, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 17u;
    *(u8*)((*(u32*)(r1)) + 10) = 5u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_00505528
u32 W_505528(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r3_1, r2_1, r2_2, r3_2, r1_1, r2_3, r2_4, r1_2, r1_3, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 0u;
    u64 t64 = *(u64*)(r0 + 12); r2_2 = (u32)t64; r3_2 = (u32)(t64 >> 32);
    *(u16*)((*(u32*)(r1)) + 10) = (*(u16*)((r2_2 + (r3_2 << 1))));
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    return 0u;
}

// FUN_005059a4
u32 W_5059a4() {

    return 5;
}

// FUN_00505b74
u32 W_505b74(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r1_1, r1_2, r1_3, r1_4, r1_5, r0_1;
    *(u8*)((*(u32*)(r1)) + 8) = 4u;
    *(u32*)(r0 + 16) = ((*(u32*)(r0 + 16)) + 1u);
    *(u32*)(r0 + 24) = ((*(u32*)(r0 + 24)) - 1u);
    return 0u;
}

// FUN_00506168
void W_506168(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_00506f54
u32 W_506f54(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 t1 = *(u32*)((u32)(a3));
    *(u32*)((u32)(a1)) = t1;
    return 1;
}

// FUN_005073bc
u32 W_5073bc(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u32*)((u32)(a2));
    *(u32*)((u32)(a1)) = t1;
    return 1;
}

// FUN_005073cc
u32 W_5073cc() {

    return 8;
}

// FUN_00507440
u32 W_507440() {

    return 5;
}

// FUN_00507448
u32 W_507448(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00507a08
u32 W_507a08() {

    return 4;
}

// FUN_00509aa0
void W_509aa0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
}

// FUN_0050bfcc
u32 W_50bfcc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_50c008;
    r2 = *(u32*)(r1 + 4);
    r2 = r2 + r1;
    r1 = *(u32*)(r0 + 8);
    fa = r2; fb = r1;
    if (fa <= fb) goto L_50c008;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_50c008;
    r2 = *(u32*)(r1);
    r1 = r1 + r2;
    *(u32*)(r0 + 8) = r1;
    r0 = r1;
    return r0;
    L_50c008:;
    r0 = 0u;
    return r0;
}

// FUN_0050c2e4
u32 W_50c2e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 536350720u;
    r0 = *(u8*)(r0 + 133);
    r0 = r0 & 28u;
    r0 = r0 >> 2;
    return r0;
}

// FUN_0050c36c
u32 W_50c36c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 536350720u;
    r0 = *(u8*)(r0 + 133);
    r0 = r0 & 2u;
    r0 = r0 >> 1;
    return r0;
}

// FUN_0050e6c4
void W_50e6c4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r12 = 0u;
    *(u32*)(r0) = r1;
    r3 = 1u;
    *(u32*)(r0 + 12) = r12;
    *(u8*)(r0 + 16) = r3;
    r0 = r0 + 4u; *(u32*)(r0) = r2;
    *(u32*)(r0 + 4) = r1;
    return;
}

// FUN_0050e7a4
void W_50e7a4(u32 a0) {
    *(u8*)((u32)(a0) + 16) = 0;
}

// FUN_0050e7b0
void W_50e7b0(u32 a0) {
    *(u8*)((u32)(a0) + 16) = 0;
}

// FUN_0050e7fc
u32 W_50e7fc(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 28);
    if (t1 != 0) {
        return Fn_50ef2c_1(t1);
    }
    u32 t2 = Fn_50e6c4_1(a0);
    *(u32*)((u32)(a0) + 24) = 0;
    *(u8*)((u32)(a0) + 28) = 1;
}

// FUN_0050e880
u32 W_50e880() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_50e6e4_0();
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0050e894
void W_50e894(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r2 = 0u;
    r0 = r0 + 8u; *(u32*)(r0) = r3;
    r0 = r0 + 4u; *(u32*)(r0) = r2;
    r0 = r0 + 8u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_0050e8cc
void W_50e8cc(u32 a0) {
    u32 t1 = Fn_50e7b0_1(a0);
    *(u8*)((u32)(t1) + 28) = 0;
}

// FUN_0050ef2c
u32 W_50ef2c() {
    u32 t1 = *(u32*)((u32)((u32)g_008b8530));
    return t1;
}

// FUN_0050f77c
void W_50f77c(u32 a0) {
    *(u8*)((u32)(a0)) = 0;
}

// FUN_0050fc9c
u32 W_50fc9c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5117cc_0();
    r1 = (u32)g_0082c13c;
    *(u32*)(r0) = r1; r0 = r0 + 32u;
    r0 = Fn_50fe14_2(r0, r1);
    r0 = r0 - 32u;
    r1 = 0u;
    *(u8*)(r0 + 64) = r1;
    return r0;
}

// FUN_0050fda4
void W_50fda4(u32 a0, u32 a1) {
    *(u32*)((u32)(a0) + 20) = a1;
    *(u32*)((u32)(a0) + 24) = a1;
}

// FUN_0050fdb4
u32 W_50fdb4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r2;
    r0 = Fn_50e6e4_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_50fdd8;
    r1 = *(u32*)(r4 + 24);
    r1 = r1 + r5;
    *(u32*)(r4 + 24) = r1;
    L_50fdd8:;
    return r0;
}

// FUN_0050fe14
void W_50fe14(u32 a0) {
    u32 t1 = Fn_50e7b0_1(a0);
    *(u8*)((u32)(t1) + 28) = 0;
}

// FUN_0050fe28
void W_50fe28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 28);
    r4 = r0;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_50fe48;
    r1 = 0u;
    *(u8*)(r0 + 28) = r1;
    r0 = Fn_50e7a4_2(r0, r1);
    L_50fe48:;
    r0 = r4;
    { Fn_50e7e8_1(r0); return; }
}

// FUN_0050fe54
void W_50fe54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_50ef2c_1(r0);
    fa = r0; fb = 0u - 1u;
    if (fa != fb) goto L_50fe74;
    r0 = r4 & 2147483648u;
    { Fn_50ef2c_1(r0); return; }
    L_50fe74:;
    return;
}

// FUN_0050fe78
void W_50fe78() {

}

// FUN_0050fe7c
void W_50fe7c() {

}

// FUN_0050fe80
void W_50fe80() {

}

// FUN_0050fe84
void W_50fe84() {

}

// FUN_0050fe88
void W_50fe88() {

}

// FUN_0050fe8c
void W_50fe8c() {

}

// FUN_0050fe90
u32 W_50fe90(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r0 = r1 + 80u;
    r0 = Fn_50f2a8_2(r0, r1);
    r5 = 0u;
    *(u16*)(r4 + 64) = r5;
    r0 = Fn_510f94_1(r0);
    r1 = r0;
    *(u32*)(r4 + 68) = r0;
    r0 = r4 + 32u;
    r0 = Fn_50e894_2(r0, r1);
    r1 = *(u32*)(r4 + 68);
    r0 = 23920u;
    *(u32*)(r4 + 72) = r1;
    *(u32*)(r4 + 76) = r1;
    *(u32*)(r0 + r4) = r5;
    return r0;
}

// FUN_0050ff7c
void W_50ff7c() {

}

// FUN_0051013c
void W_51013c() {

}

// FUN_00510300
void W_510300() {

}

// FUN_00510580
void W_510580() {

}

// FUN_005106b4
void W_5106b4() {

}

// FUN_00510984
void W_510984() {

}

// FUN_00510ae8
void W_510ae8() {

}

// FUN_00510b84
void W_510b84() {

}

// FUN_00510cd8
void W_510cd8() {

}

// FUN_00510f90
void W_510f90() {

}

// FUN_005112b0
void W_5112b0() {

}

// FUN_005112e0
void W_5112e0(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = 1313755728u;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
}

// FUN_005113b0
u32 W_5113b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5113c4;
    return Fn_50ea8c_1(r0);
    L_5113c4:;
    return r0;
}

// FUN_005113cc
u32 W_5113cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5113e0;
    return Fn_50eb34_1(r0);
    L_5113e0:;
    return r0;
}

// FUN_005113e8
u32 W_5113e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5113fc;
    return Fn_50ebb0_1(r0);
    L_5113fc:;
    return r0;
}

// FUN_00511404
void W_511404(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511414;
    { Fn_50ec58_1(r0); return; }
    L_511414:;
    { Fn_50ef2c_1(r0); return; }
}

// FUN_00511474
void W_511474(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51149c;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_51149c:;
    return;
}

// FUN_005114a0
void W_5114a0(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
}

// FUN_005114ac
u32 W_5114ac(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5114d4;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_5114d4:;
    r0 = r4;
    return r0;
}

// FUN_00511604
void W_511604(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = r1 & 2147483648u;
    fa = r0; fb = 0u;
    r4 = r1;
    if ((int)fa < (int)fb) r0 = Fn_50ef2c_2(r0, r1);
    *(u32*)(r5 + 24) = r4;
    return;
}

// FUN_0051192c
u32 W_51192c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_511940;
    return Fn_50f8c0_1(r0);
    L_511940:;
    return r0;
}

// FUN_00511948
u32 W_511948(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_51195c;
    return Fn_50f98c_1(r0);
    L_51195c:;
    return r0;
}

// FUN_00511964
void W_511964(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511974;
    { Fn_50fa5c_1(r0); return; }
    L_511974:;
    { Fn_50ef2c_1(r0); return; }
}

// FUN_005119d4
u32 W_5119d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3768634360u;
    if (fa == fb) goto L_5119e8;
    return Fn_50fb98_1(r0);
    L_5119e8:;
    return r0;
}

// FUN_005119f0
void W_5119f0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511a18;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_511a18:;
    return;
}

// FUN_00511a1c
void W_511a1c(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
}

// FUN_00511a28
u32 W_511a28(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_511a50;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_511a50:;
    r0 = r4;
    return r0;
}

// FUN_00511fe0
u32 W_511fe0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u8*)(r0 + 12);
    r4 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_512004;
    r0 = *(signed char*)(r5 + 13);
    fa = r0; fb = 0u - 1u;
    if (fa == fb) goto L_51200c;
    L_512004:;
    r0 = 0u;
    return r0;
    L_51200c:;
    fa = r4; fb = 0u;
    if (fa != fb) { fa = r4; fb = 1u; }
    if (fa != fb) goto L_512004;
    r0 = Fn_512510_2(r0, r1);
    r2 = r4;
    r1 = 1u;
    r0 = Fn_512590_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    if (fa != fb) *(u8*)(r5 + 13) = r4;
    return r0;
}

// FUN_00512510
u32 W_512510() {

    return (u32)g_009b0c70;
}

// FUN_005125b0
u32 W_5125b0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 1);
    r3 = 0u;
    *(u8*)(r0 + r2) = r3;
    r0 = 1u;
    return r0;
}

// FUN_005125c4
u32 W_5125c4() {
    u32 t1 = *(u32*)((u32)((u32)g_009b1ccc) + 812);
    return t1;
}

// FUN_00512a54
void W_512a54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0 + 24) = r1;
    return;
}

// FUN_00512c5c
u32 W_512c5c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 3);
    r4 = r0;
    r0 = 52600u;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 57100u;
    if (fa == fb) goto L_512c8c;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = 55600u;
    if (fa == fb) goto L_512c8c;
    fa = r1; fb = 2u;
    if (fa == fb) goto L_512cb0;
    L_512c8c:;
    r1 = *(u8*)(r4 + 2);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = r0 + 1024u;
    if (fa == fb) r0 = r0 + 476u;
    if (fa == fb) goto L_512cac;
    fa = r1; fb = 1u;
    if (fa == fb) r0 = r0 + 8192u;
    if (fa == fb) r0 = r0 + 1808u;
    L_512cac:;
    return r0;
    L_512cb0:;
    r0 = Fn_5142d4_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 199600u;
    if (fa == fb) r0 = 225600u;
    goto L_512c8c;
}

// FUN_00512d50
void W_512d50(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = *(u32*)(r0 + 20);
    *(u32*)(r2) = r1;
    r0 = *(u32*)(r0 + 28);
    *(u32*)(r3) = r0;
    return;
}

// FUN_00513298
void W_513298() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_513014_0();
    { WeakCall1(r0); return; }
}

// FUN_0051338c
void W_51338c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_513014_1(r0);
    r1 = r4;
    { WeakCall2(r0, r1); return; }
}

// FUN_0051369c
u32 W_51369c(u32 a0, u32 a1, u32 a2) {
    return Fn_512d50_4((u32)g_009b0c7c, a0, a1, a2);
}

// FUN_005139c4
void W_5139c4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_009b0c7c;
    { Fn_512d84_1(r0); return; }
}

// FUN_00513b90
u32 W_513b90() {

    return (u32)g_009b99cc;
}

// FUN_00513df0
void W_513df0(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0));
    if (t1 == 0) {
        u32 t2 = Fn_01b624_1((a0 + 52));
        *(u8*)((u32)(a0)) = 1;
    }
}

// FUN_0051418c
u32 W_51418c(u32 a0, u32 a1) {
    u32 t1 = Fn_024788_2(a0, a1);
    if (t1 != 0) {
        *(u8*)((u32)(a0) + 2) = a1;
        return Fn_5151d0_2((u32)g_009b0ccc, a1);
    }
}

// FUN_005142c0
u32 W_5142c0(u32 a0) {
    u32 t1 = Fn_513014_1(a0);
    return Fn_024568_1((t1 + 52));
}

// FUN_005142d4
u32 W_5142d4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008aae48;
    r0 = *(signed char*)(r0 + 4);
    return r0;
}

// FUN_005142e4
u32 W_5142e4() {
    return Fn_512dc4_1((u32)g_009b0c7c);
}

// FUN_0051434c
u32 W_51434c(u32 a0) {
    return Fn_512dcc_2((u32)g_009b0c7c, a0);
}

// FUN_0051435c
u32 W_51435c(u32 a0) {
    return Fn_512df0_2((u32)g_009b0c7c, a0);
}

// FUN_00514390
u32 W_514390(u32 a0, u32 a1, u32 a2) {
    return Fn_512e00_4((u32)g_009b0c7c, a0, a1, a2);
}

// FUN_0051443c
void W_51443c(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0) + 20) = 0;
    *(u8*)((u32)(a0) + 17) = 0;
}

// FUN_005148f8
u32 W_5148f8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r6 = r2;
    r0 = Fn_024788_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51495c;
    r0 = 4894u;
    fa = r4; fb = 0u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    r1 = r0 + 4u;
    r1 = r1 + (r4 << 1);
    *(u16*)(r1 + 36) = r6;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 256u;
    if (fa == fb) goto L_514954;
    fa = r4; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 512u;
    if (fa != fb) goto L_514958;
    L_514954:;
    *(u32*)(r0) = r1;
    L_514958:;
    r0 = 1u;
    L_51495c:;
    return r0;
}

// FUN_00514964
u32 W_514964(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5149ac;
    r0 = 4894u;
    fa = r4; fb = 32768u;
    if (fa > fb) r4 = 32768u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 34) = r4;
    r1 = *(u32*)(r0);
    r1 = r1 | 2147483648u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_5149ac:;
    return r0;
}

// FUN_00514d20
u32 W_514d20(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f16, ffa, ffb;
    r4 = r0;
    r5 = r1;
    f16 = f0;
    r0 = Fn_024788_2f1(r0, r1, f0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514d74;
    r0 = 4890u;
    r0 = *(u16*)(r0 + r4);
    r0 = r0 & 1u;
    r0 = r0 + (r0 << 1);
    r0 = r4 + (r0 << 5);
    r0 = r0 + (r5 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 176);
    *(float*)(r0 + 52) = f16;
    r1 = *(u32*)(r0);
    r1 = r1 | 262144u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_514d74:;
    return r0;
}

// FUN_00514d80
u32 W_514d80(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514dc0;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 24) = r5;
    r1 = *(u32*)(r0);
    r1 = r1 | 134217728u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_514dc0:;
    return r0;
}

// FUN_00514dc8
void W_514dc8(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f16, ffa, ffb;
    r4 = r0;
    f16 = f0;
    r0 = Fn_024788_1f1(r0, f0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514e08;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(float*)(r0 + 4) = f16;
    r1 = *(u32*)(r0);
    r1 = r1 | 65536u;
    *(u32*)(r0) = r1;
    L_514e08:;
    return;
}

// FUN_00514e14
u32 W_514e14(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514e5c;
    r0 = 4894u;
    fa = r4; fb = 32768u;
    if (fa >= fb) r4 = 32767u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 28) = r4;
    r1 = *(u32*)(r0);
    r1 = r1 | 536870912u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_514e5c:;
    return r0;
}

// FUN_00514e68
u32 W_514e68(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r6 = r2;
    r0 = Fn_024788_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_514ecc;
    r0 = 4894u;
    fa = r4; fb = 0u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    r1 = r0 + 4u;
    r1 = r1 + (r4 << 1);
    *(u16*)(r1 + 32) = r6;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 64u;
    if (fa == fb) goto L_514ec4;
    fa = r4; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 128u;
    if (fa != fb) goto L_514ec8;
    L_514ec4:;
    *(u32*)(r0) = r1;
    L_514ec8:;
    r0 = 1u;
    L_514ecc:;
    return r0;
}

// FUN_00514fb8
void W_514fb8(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f16, ffa, ffb;
    r5 = r0;
    r4 = r1;
    f16 = f0;
    r0 = Fn_024788_2f1(r0, r1, f0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51501c;
    r0 = 4894u;
    fa = r4; fb = 0u;
    r0 = *(u16*)(r0 + r5);
    r0 = r5 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    r1 = r0 + 4u;
    r1 = r1 + (r4 << 2);
    *(float*)(r1 + 4) = f16;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 16777216u;
    if (fa == fb) goto L_515018;
    fa = r4; fb = 1u;
    if (fa == fb) r1 = *(u32*)(r0);
    if (fa == fb) r1 = r1 | 33554432u;
    if (fa != fb) goto L_51501c;
    L_515018:;
    *(u32*)(r0) = r1;
    L_51501c:;
    return;
}

// FUN_00515028
u32 W_515028(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_51507c;
    r0 = 4890u;
    r0 = *(u16*)(r0 + r4);
    r0 = r0 & 1u;
    r0 = r0 + (r0 << 1);
    r0 = r4 + (r0 << 5);
    r0 = r0 + (r5 << 2);
    r0 = r0 + 4096u;
    r1 = *(u32*)(r0 + 176);
    r0 = 1u;
    r2 = *(u16*)(r1 + 160);
    r2 = r2 & ~255u;
    *(u16*)(r1 + 160) = r2;
    r2 = *(u32*)(r1);
    r2 = r2 | 65536u;
    *(u32*)(r1) = r2;
    L_51507c:;
    return r0;
}

// FUN_005151d0
u32 W_5151d0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_515210;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 22) = r5;
    r1 = *(u32*)(r0);
    r1 = r1 | 67108864u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_515210:;
    return r0;
}

// FUN_00515570
u32 W_515570(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_024788_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = ~0u;
    if (fa == fb) goto L_5155a0;
    r0 = 4892u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 168);
    r0 = *(u16*)(r0 + 2);
    L_5155a0:;
    return r0;
}

// FUN_0051561c
void W_51561c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_515658;
    r0 = 4894u;
    r0 = *(u16*)(r0 + r4);
    r0 = r4 + (r0 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 160);
    *(u16*)(r0 + 16) = r5;
    r1 = *(u32*)(r0);
    r1 = r1 | 32768u;
    *(u32*)(r0) = r1;
    L_515658:;
    return;
}

// FUN_005156a8
u32 W_5156a8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r5 = r1;
    r0 = Fn_024788_2(r0, r1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5156f0;
    r0 = 4890u;
    r0 = *(u16*)(r0 + r4);
    r0 = r0 & 1u;
    r0 = r0 + (r0 << 1);
    r0 = r4 + (r0 << 5);
    r0 = r0 + (r5 << 2);
    r0 = r0 + 4096u;
    r0 = *(u32*)(r0 + 176);
    r1 = *(u32*)(r0);
    r1 = r1 | 16u;
    *(u32*)(r0) = r1;
    r0 = 1u;
    L_5156f0:;
    return r0;
}

// FUN_005166b0
void W_5166b0(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 260);
    if (t1 != 0) {
        *(u8*)((u32)(a0) + 260) = 0;
        *(u32*)((u32)(a0) + 60) = 0;
        *(u32*)((u32)(a0) + 76) = 0;
        *(u32*)((u32)(a0) + 92) = 0;
        *(u32*)((u32)(a0) + 96) = 0;
        *(u32*)((u32)(a0) + 124) = 0;
        *(u32*)((u32)(a0) + 64) = 0;
        *(u32*)((u32)(a0) + 80) = 0;
        *(u32*)((u32)(a0) + 100) = 0;
        *(u32*)((u32)(a0) + 104) = 0;
        *(u32*)((u32)(a0) + 128) = 0;
    }
}

// FUN_00516a68
void W_516a68(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0 + 4);
    r1 = 1u;
    r0 = Fn_517774_2(r0, r1);
    r0 = *(u32*)(r4 + 4);
    { WeakCall1(r0); return; }
}

// FUN_00516a88
u32 W_516a88(u32 a0) {
    return Fn_512a60_2((u32)g_009b22d0, a0);
}

// FUN_00516d58
void W_516d58(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    r1_1 = ~0u;
    *(u16*)(r0 + 108) = r1_1;
    { WeakCall1(r0); return; }
}

// FUN_0051768c
u32 W_51768c(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 13);
    if (t1 == 0) {
        return Fn_5171f4_2(a0, t1);
    }
}

// FUN_00517724
u32 W_517724(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r1_1, r0_2, r0_3, r0_4;
    r0_3 = Fn_5154c4_2(((u32)g_009b0ccc), ((*(u32*)(r0)) & 255u));
    r0_4 = 1u;
    *(u8*)(r0 + 12) = r0_4;
    return r0_4;
}

// FUN_00518abc
u32 W_518abc(u32 a0) {
    u32 t1 = Fn_50c27c_1(a0);
    *(u8*)((u32)(a0)) = t1;
    return 0;
}

// FUN_005190bc
u32 W_5190bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[5];
    r1 = (u32)g_008aae58;
    r1 = *(u8*)(r1 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 3768652792u;
    if (fa == fb) return r0;
    r1 = (u32)stk;
    r0 = Fn_51a5e4_2(r0, r1);
    return r0;
}

// FUN_00519b54
u32 W_519b54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 536346624u;
    r0 = r0 & ~15728640u;
    r3 = *(u8*)(r2 + 20);
    r2 = 16u;
    fx = r3 & 1u;
    if (fx == 0) r2 = 144u;
    fa = r1; fb = 0u;
    if (fa != fb) r2 = r2 | 1u;
    r0 = r2 | (r0 << 8);
    return r0;
}

// FUN_0051bbe4
void W_51bbe4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0051c8dc
u32 W_51c8dc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008aab68;
    r0 = 0u;
    r2 = *(u8*)(r1);
    fa = r2; fb = 0u;
    if (fa != fb) return r0;
    r0 = 1u;
    *(u8*)(r1) = r0;
    r0 = Fn_008964_3(r0, r1, r2);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51c910;
    return Fn_5200a4_2(r0, r1);
    L_51c910:;
    return r0;
}

// FUN_0051c960
u32 W_51c960(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u16*)(r0 + 4);
    fa = r2; fb = r1;
    if (fa > fb) r0 = r0 + (r1 << 3);
    if (fa > fb) r0 = r0 + 12u;
    if (fa <= fb) r0 = 0u;
    return r0;
}

// FUN_0051c9a8
u32 W_51c9a8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = 125u;
    r4 = 1u;
    *(u8*)(r0 + 4) = r5;
    r3 = 0u;
    *(u8*)(r0 + 5) = r4;
    r12 = 2u;
    *(u32*)(r0 + 8) = r3;
    *(u8*)(r0 + 6) = r12;
    r0 = r0 + 12u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    r0 = r3;
    return r0;
}

// FUN_0051c9e0
void W_51c9e0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    r2 = (u32)g_0082c37c;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_0051ce38
void W_51ce38(u32 a0) {
    *(u16*)((u32)(a0) + 6) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
}

// FUN_0051ce48
u32 W_51ce48(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 12);
    fa = r2; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r0 + 16);
    if (fa != fb) { fa = r3; fb = 0u; }
    if (fa == fb) goto L_51ce6c;
    r0 = *(u16*)(r0 + 4);
    fa = r0; fb = r1;
    if (fa > fb) r0 = *(u32*)(r2 + (r1 << 2));
    if (fa > fb) goto L_51ce70;
    L_51ce6c:;
    r0 = ~0u;
    L_51ce70:;
    return r0;
}

// FUN_0051da3c
void W_51da3c(u32 a0) {
    u32 t1 = Fn_51c918_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082c3bc;
}

// FUN_0051e978
void W_51e978(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    r2 = (u32)g_0082c3d4;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r0) = r2;
    return;
}

// FUN_00520030
u32 W_520030(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = 1u;
    if (r1 != 0) r1 = *(u8*)(r1);
    fa = r1; fb = 0;
    if (r1 != 0) { fa = r1; fb = 0u; }
    if (fa == fb) r0 = 0u;
    return r0;
}

// FUN_005200e4
u32 W_5200e4(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_521750_3(0, a0, 1);
    u32 t2 = Fn_521750_3(1, (a0 + 1), 1);
    u32 t3 = Fn_521750_3(2, (a0 + 4), 4);
    u32 t4 = Fn_521750_3(3, (a0 + 8), 4);
    u32 t5 = Fn_521750_3(4, (a0 + 12), 4);
    u32 t6 = Fn_521750_3(5, (a0 + 2), 1);
    u32 t7 = *(u32*)((u32)((u32)g_008ab9e8));
    return t7;
}

// FUN_00520368
u32 W_520368(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_520c84_3(24, a0, 1);
    u32 t2 = Fn_520c84_3(25, (a0 + 1), 1);
    u32 t3 = Fn_520c84_3(26, (a0 + 2), 1);
    u32 t4 = Fn_520c84_3(27, (a0 + 4), 4);
    u32 t5 = Fn_520c84_3(28, (a0 + 8), 4);
    u32 t6 = *(u32*)((u32)((u32)g_008ab9e8));
    return t6;
}

// FUN_005203d8
u32 W_5203d8(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_520c84_3(0, a0, 1);
    u32 t2 = Fn_520c84_3(1, (a0 + 1), 1);
    u32 t3 = Fn_520c84_3(2, (a0 + 4), 4);
    u32 t4 = Fn_520c84_3(3, (a0 + 8), 4);
    u32 t5 = Fn_520c84_3(4, (a0 + 12), 4);
    u32 t6 = Fn_520c84_3(5, (a0 + 2), 1);
    u32 t7 = *(u32*)((u32)((u32)g_008ab9e8));
    return t7;
}

// FUN_00520454
u32 W_520454(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_521750_3(48, a0, 1);
    u32 t2 = Fn_521750_3(49, (a0 + 4), 4);
    u32 t3 = Fn_521750_3(50, (a0 + 8), 256);
    u32 t4 = *(u32*)((u32)((u32)g_008ab9e8));
    return t4;
}

// FUN_00520704
u32 W_520704(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_521750_3(24, a0, 1);
    u32 t2 = Fn_521750_3(25, (a0 + 1), 1);
    u32 t3 = Fn_521750_3(26, (a0 + 2), 1);
    u32 t4 = Fn_521750_3(27, (a0 + 4), 4);
    u32 t5 = Fn_521750_3(28, (a0 + 8), 4);
    u32 t6 = *(u32*)((u32)((u32)g_008ab9e8));
    return t6;
}

// FUN_00520ae8
u32 W_520ae8(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_521904_3(0, a0, 1);
    u32 t2 = Fn_521904_3(1, (a0 + 1), 1);
    u32 t3 = Fn_521904_3(2, (a0 + 4), 4);
    u32 t4 = Fn_521904_3(3, (a0 + 8), 4);
    u32 t5 = Fn_521904_3(4, (a0 + 12), 4);
    u32 t6 = Fn_521904_3(5, (a0 + 2), 1);
    u32 t7 = *(u32*)((u32)((u32)g_008ab9e8));
    return t7;
}

// FUN_00521590
u32 W_521590(u32 a0) {
    *(u32*)((u32)((u32)g_008ab9e8)) = 0;
    u32 t1 = Fn_521904_3(24, a0, 1);
    u32 t2 = Fn_521904_3(25, (a0 + 1), 1);
    u32 t3 = Fn_521904_3(26, (a0 + 2), 1);
    u32 t4 = Fn_521904_3(27, (a0 + 4), 4);
    u32 t5 = Fn_521904_3(28, (a0 + 8), 4);
    u32 t6 = *(u32*)((u32)((u32)g_008ab9e8));
    return t6;
}

// FUN_00522248
u32 W_522248() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008aab68;
    r0 = 0u;
    r2 = *(u8*)(r1);
    fa = r2; fb = 0u;
    if (fa == fb) return r0;
    r0 = 0u;
    *(u8*)(r1) = r0;
    r0 = Fn_504590_3(r0, r1, r2);
    return Fn_52008c_1(r0);
}

// FUN_00522c58
u32 W_522c58() {

    return 9072u;
}

// FUN_00522e60
void W_522e60(u32 a0) {
    *(u8*)((u32)(a0) + 4) = 0;
}

// FUN_005232a0
u32 W_5232a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 3028u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5232c4;
    fa = r0; fb = 4096u;
    if (fa >= fb) r0 = 0u;
    if (fa >= fb) goto L_5232c8;
    r2 = r0 + (r0 << 5);
    r0 = r1 + (r0 << 4);
    r1 = r2 + r0;
    L_5232c4:;
    r0 = r1;
    L_5232c8:;
    return r0;
}

// FUN_00523674
void W_523674(u32 a0) {
    *(u8*)((u32)(a0) + 4) = 0;
}

// FUN_00532574
u32 W_532574(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = 1431655765u;
    r1 = 858993459u;
    r2 = r2 & (r0 >> 1);
    r0 = r0 - r2;
    r2 = r0 & r1;
    r0 = r1 & (r0 >> 2);
    r1 = 252645135u;
    r0 = r0 + r2;
    r0 = r0 + (r0 >> 4);
    r0 = r0 & r1;
    r0 = r0 + (r0 >> 8);
    r0 = r0 + (r0 >> 16);
    r0 = r0 & 63u;
    return r0;
}

// FUN_005332e4
u32 W_5332e4(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 80) = f0;
    r4_1 = r0;
    *(float*)(r0 + 92) = f0;
    r0_1 = Fn_01231c_1f1(r0, f0);
    r0_2 = r4_1;
    return r0_2;
}

// FUN_00533650
u32 W_533650() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_0252f4_0();
    fa = r0; fb = 0u;
    if (fa == fb) r0 = (u32)g_00202bf8;
    if (fa == fb) goto L_533670;
    r0 = Fn_02962c_1(r0);
    return Fn_533880_1(r0);
    L_533670:;
    return r0;
}

// FUN_005339dc
u32 W_5339dc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab948;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_00533b40
void W_533b40() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_01b774_0();
    r4 = (u32)g_008ab948;
    r0 = *(u32*)(r4 + 44);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_533b7c;
    r0 = Fn_013240_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_533b7c;
    r0 = Fn_012454_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_533b7c;
    r4 = r4 + 44u; r1 = *(u32*)(r4);
    r0 = *(u32*)(r4 + 64);
    r0 = ((u32(*)(u32))r1)(r0);
    L_533b7c:;
    r0 = 5u;
    { Fn_01d138_1(r0); return; }
}

// FUN_00533c54
u32 W_533c54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 24);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 88);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    r0 = Fn_01d390_1(r0);
    r0 = 0u;
    return r0;
}

// FUN_00533da4
u32 W_533da4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_01d390_0();
    r0 = (u32)g_008ab948;
    r1 = *(u32*)(r0 + 28);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 92);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    return r0;
}

// FUN_00533edc
u32 W_533edc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_0135a4_0();
    r4 = r0;
    r0 = Fn_01d5d0_1(r0);
    r5 = r0;
    r0 = Fn_01d5f0_1(r0);
    r0 = (u32)g_008ab948;
    r3 = *(u32*)(r0 + 12);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_533f1c;
    r0 = *(u32*)(r0 + 76);
    r2 = r5;
    r1 = r4;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_533f54;
    L_533f1c:;
    fa = r4; fb = 0u;
    if (fa == fb) goto L_533f54;
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_533f54;
    r0 = r5;
    r0 = Fn_01d0f0_1(r0);
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 1u;
    if (fa != fb) r0 = Fn_01d0e0_1(r0);
    L_533f54:;
    r0 = 0u;
    return r0;
}

// FUN_00534038
u32 W_534038() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 11);
    return t1;
}

// FUN_005341bc
u32 W_5341bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(signed char*)(r0 + 13);
    return r0;
}

// FUN_00534264
void W_534264() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 4u;
    r0 = Fn_01d138_1(r0);
    r4 = (u32)g_008ab948;
    r0 = *(u32*)(r4 + 40);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5342a4;
    r0 = Fn_013240_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_5342a4;
    r0 = Fn_012454_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_5342a4;
    r1 = *(u32*)(r4 + 40);
    r0 = *(u32*)(r4 + 104);
    r0 = ((u32(*)(u32))r1)(r0);
    L_5342a4:;
    r5 = (u32)g_009ae8e0;
    r0 = r5;
    r0 = Fn_0244c8_1(r0);
    r4 = *(u32*)(r4 + 4);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5342d8;
    L_5342bc:;
    r1 = *(u32*)(r4 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 12);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r4 = *(u32*)(r4 + 4);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_5342bc;
    L_5342d8:;
    r0 = r5;
    r0 = Fn_024568_1(r0);
    { Fn_01d604_1(r0); return; }
}

// FUN_005342f4
void W_5342f4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008ab948;
    r0 = *(u32*)(r4 + 36);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_534330;
    r0 = Fn_013240_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_534330;
    r0 = Fn_012454_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_534330;
    r4 = r4 + 36u; r1 = *(u32*)(r4);
    r0 = *(u32*)(r4 + 64);
    { ((u32(*)(u32))r1)(r0); return; }
    L_534330:;
    return;
}

// FUN_00534440
void W_534440() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = (u32)g_009ae8e0;
    r0 = r5;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008ab948;
    r4 = *(u32*)(r0 + 4);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_53447c;
    L_534460:;
    r1 = *(u32*)(r4 + 8);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r4 + 12);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    r4 = *(u32*)(r4 + 4);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_534460;
    L_53447c:;
    r0 = r5;
    { Fn_024568_1(r0); return; }
}

// FUN_00534564
u32 W_534564() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5341bc_0();
    fa = r0; fb = 0u;
    if (fa != fb) goto L_534580;
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_534584;
    L_534580:;
    r0 = 1u;
    L_534584:;
    return r0;
}

// FUN_0053576c
u32 W_53576c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    r0 = Fn_5341bc_0();
    fa = r0; fb = 0u;
    if (fa != fb) goto L_53578c;
    r0 = Fn_01d0e0_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5357fc;
    L_53578c:;
    r0 = 0u;
    r0 = Fn_01291c_1(r0);
    r0 = Fn_012400_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5357bc;
    r0 = Fn_012400_1(r0);
    fa = r0; fb = 2u;
    if (fa != fb) goto L_5357dc;
    L_5357bc:;
    r1 = 0u;
    r0 = r1;
    r0 = Fn_009028_2(r0, r1);
    r0 = (u32)g_008ab948;
    r1 = *(u32*)(r0 + 56);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0 + 120);
    if (fa != fb) r0 = ((u32(*)(u32))r1)(r0);
    L_5357dc:;
    r0 = Fn_536580_1(r0);
    r0 = (u32)g_008aab50;
    r1 = 0u;
    r2 = *(u32*)(r0);
    r0 = r1;
    r0 = Fn_534c30_3(r0, r1, r2);
    r4 = 1u;
    L_5357fc:;
    r0 = r4;
    return r0;
}

// FUN_00535ea8
u32 W_535ea8() {
    u32 t1 = *(u8*)((u32)((u32)g_008ab8e0) + 5);
    return t1;
}

// FUN_0053aa6c
void W_53aa6c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0053d340
u32 W_53d340() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a108c;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008aac08;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = 1u;
    if (fa == fb) r5 = 0u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}

// FUN_0053e748
u32 W_53e748() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009a108c;
    r0 = r4;
    r0 = Fn_0244c8_1(r0);
    r0 = (u32)g_008b7cc8;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r5 = 1u;
    if (fa == fb) r5 = 0u;
    r0 = r4;
    r0 = Fn_024568_1(r0);
    r0 = r5;
    return r0;
}
