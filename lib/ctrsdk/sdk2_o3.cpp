// CTR SDK functions, second batch (tools/sdk_classify.py), matched by the lifter (tools/wrapgen).
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
extern char g_008bfa40[];
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
u32 Fn_50ef2c_1(u32);
u32 Fn_50ef2c_2(u32, u32);
u32 Fn_50f8c0_1(u32);
u32 Fn_50f98c_1(u32);
u32 Fn_50fa5c_1(u32);
u32 Fn_50fb98_1(u32);
u32 Fn_5142d4_2(u32, u32);
extern char g_008aae48[];
u32 Fn_024788_3(u32, u32, u32);
u32 Fn_024788_2(u32, u32);
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
u32 Fn_548334_1(u32);
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
extern char g_008aab1c[];
extern char g_008ab850[];
u32 Fn_0226a0_1(u32);
extern char g_00890d18[];
extern char g_0079d450[];
u32 Fn_13ddcc_2(u32, u32);
u32 Fn_60e24c_1(u32);
u32 Fn_236858_2(u32, u32);
u32 Fn_627d2c_1(u32);
u32 Fn_25eb98_3(u32, u32, u32);
extern char g_0082df04[];
extern char g_008bfa44[];
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
u32 Fn_0151c8_1(u32);
u32 Fn_402d58_3(u32, u32, u32);
u32 Fn_404d38_1f1(u32, float);
extern char g_008bfae4[];
u32 Fn_5fb988_2(u32, u32);
u32 Fn_433d3c_2f2(u32, u32, float, float);
extern char g_008b86e0[];
u32 Fn_008874_1(u32);
u32 Fn_011a60_1(u32);
u32 WeakCall1(u32);
extern char g_008bb860[];
u32 WeakCall2(u32, u32);
u32 Fn_06a7a4_1(u32);
u32 WeakCall0();
u32 Fn_011b7c_0();
u32 WeakCall3(u32, u32, u32);
u32 Fn_013150_1(u32);
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
u32 Fn_4d8f0c_1(u32);
u32 Fn_6312cc_1(u32);
u32 Fn_4d47a0_2(u32, u32);
u32 Fn_4d5ad4_3(u32, u32, u32);
u32 Fn_006134_1(u32);
extern char g_009b0c58[];
extern char g_008ab890[];
u32 Fn_02acc4_2(u32, u32);
float Fn_5bc920_0();
u32 Fn_5bc934_1(u32);
u32 Fn_5bc934_1f1(u32, float);
u32 Fn_0dc954_2(u32, u32);
u32 Fn_0dccdc_1(u32);
u32 Fn_0e1358_2(u32, u32);
u32 Fn_024730_1(u32);
u32 Fn_503bac_2(u32, u32);
extern char g_008b87d0[];
u32 Fn_011a60_2(u32, u32);
u32 Fn_011aa4_1(u32);
u32 Fn_01a174_2(u32, u32);
u32 Fn_01a2b8_2(u32, u32);
u32 Fn_020b18_3(u32, u32, u32);
u32 Fn_022840_2(u32, u32);
float Fn_6407a0_1(u32);
u32 Fn_0154f8_2(u32, u32);
u32 Fn_015600_1(u32);
u32 Fn_59cb38_2(u32, u32);
u32 WeakCall1f1(u32, float);
u32 Fn_0f4f30_2(u32, u32);
extern char g_008bfa68[];
extern char g_008084b8[];
u32 Fn_1e87e4_0();
extern char g_00808e60[];
u32 Fn_193fcc_0();
extern char g_0080923c[];
u32 Fn_5c515c_0();
extern char g_0080924c[];
u32 Fn_01a4d4_4(u32, u32, u32, u32);
u32 Fn_192d88_1(u32);
extern char g_00809e94[];
u32 Fn_1bae1c_1(u32);
u32 Fn_5c760c_3(u32, u32, u32);
extern char g_0080b404[];
extern char g_0080b53c[];
extern char g_0080b9e8[];
extern char g_0080bda4[];
extern char g_0080bf08[];
u32 Fn_1c819c_0();
extern char g_0080e1d8[];
u32 Fn_198eac_1f2(u32, float, float);
u32 Fn_198fb0_1f2(u32, float, float);
extern char g_0080fa0c[];
u32 Fn_646550_3(u32, u32, u32);
extern char g_0080faa8[];
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
u32 Fn_0000ac_4(u32, u32, u32, u32);
u32 Fn_0208f8_1(u32);
u32 Fn_02a070_0();
u32 Fn_020be8_4(u32, u32, u32, u32);
extern char g_008b86d0[];
u32 Fn_02aaa0_2(u32, u32);
u32 Fn_1fe040_2(u32, u32);
u32 Fn_1d22bc_0();
u32 Fn_229890_1(u32);
u32 Fn_229f48_1(u32);
u32 Fn_22a360_1(u32);
u32 Fn_2556cc_1(u32);
u32 Fn_192024_0();
u32 Fn_192868_1(u32);
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
u32 Fn_5c5ad8_3(u32, u32, u32);
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
extern char g_0080b5d8[];
u32 Fn_1fddd8_2f1(u32, u32, float);
u32 Fn_5c92d0_1(u32);
u32 Fn_5d5494_2(u32, u32);
u32 Fn_5db4b4_3(u32, u32, u32);
u32 Fn_22b538_2f2(u32, u32, float, float);
u32 Fn_22b68c_1(u32);
u32 Fn_5c6614_3(u32, u32, u32);
u32 Fn_5c67dc_2(u32, u32);
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
u32 Fn_444644_1(u32);
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
extern char g_008bfa34[];
u32 Fn_420358_2(u32, u32);
u32 Fn_427708_2(u32, u32);
u32 Fn_409208_1(u32);
u32 Fn_40921c_4(u32, u32, u32, u32);
u32 Fn_414eb8_4(u32, u32, u32, u32);
u32 Fn_4274c4_2(u32, u32);
u32 Fn_427c0c_1(u32);
u32 Fn_427c0c_2(u32, u32);
extern char g_008bfa3c[];
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
extern char g_008bfadc[];
u32 Fn_5df0d8_2(u32, u32);
u32 Fn_48ca04_1(u32);
u32 Fn_48f7c4_1(u32);
u32 Fn_4982c0_2(u32, u32);
extern char g_008a78ac[];
u32 Fn_483ed0_2(u32, u32);
u32 Fn_49dab0_3(u32, u32, u32);
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
extern char g_008bb5e0[];
extern char g_009dd034[];
u32 Fn_622434_2(u32, u32);
u32 Fn_512510_2(u32, u32);
u32 Fn_512590_3(u32, u32, u32);
u32 Fn_01d138_1(u32);
u32 Fn_01d604_1(u32);
u32 Fn_009028_2(u32, u32);
u32 Fn_012400_1(u32);
u32 Fn_01291c_1(u32);
u32 Fn_534c30_3(u32, u32, u32);
u32 Fn_536580_1(u32);
u32 Fn_561354_1(u32);
u32 Fn_5613e8_2(u32, u32);
u32 Fn_562bd4_2(u32, u32);
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
extern char g_00989680[];
u32 Fn_01b71c_2(u32, u32);
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

// FUN_00005308
u32 W_005308() {
    u32 t1 = *(u32*)((u32)(536346624u) + 64);
    return t1;
}

// FUN_0000536c
u32 W_00536c() {
    u32 t1 = *(u32*)((u32)((u32)g_008aadf4) + 4);
    return t1;
}

// FUN_0000545c
u32 W_00545c() {
    u32 t1 = *(u32*)((u32)((u32)g_008aadf4));
    return t1;
}

// FUN_00005518
void W_005518(u32 a0) {
    *(u8*)((u32)((u32)g_008aadf0)) = a0;
}

// FUN_00005528
u32 W_005528(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 32u;
    if (fa <= fb) r0 = r0 + 32u;
    if (fa <= fb) goto L_5558;
    r1 = 2935368448u;
    r1 = r1 + r0;
    fa = r1; fb = 39u;
    if (fa <= fb) r0 = r1 + 24u;
    if (fa <= fb) goto L_5558;
    r1 = 2473745152u;
    r0 = r0 + r1;
    fa = r0; fb = 64u;
    if (fa > fb) r0 = ~0u;
    L_5558:;
    return r0;
}

// FUN_0000557c
void W_00557c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_009a13f8;
    { Fn_006134_1(r0); return; }
}

// FUN_00005894
void W_005894() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_00105c5c;
    r1 = 0u;
    r0 = Fn_00645c_2(r0, r1);
    r0 = (u32)g_00105cec;
    r1 = 0u;
    r0 = Fn_006470_2(r0, r1);
    r0 = (u32)g_00105c24;
    r1 = 0u;
    r0 = Fn_006448_2(r0, r1);
    r0 = (u32)g_008ab450;
    r0 = Fn_01b404_1(r0);
    r0 = 1u;
    r0 = Fn_006768_1(r0);
    r0 = Fn_013240_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_58e4;
    r0 = Fn_012454_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_58f8;
    L_58e4:;
    r0 = (u32)g_008aab50;
    r1 = 0u;
    r2 = *(u32*)(r0);
    r0 = r1;
    r0 = Fn_006494_3(r0, r1, r2);
    L_58f8:;
    r0 = 1u;
    { Fn_008c18_1(r0); return; }
}

// FUN_00005918
void W_005918(u32 a0) {
    u32 t1 = Fn_00ec08_1(a0);
    *(u32*)((u32)(t1) + 48) = 0;
    *(u32*)((u32)(t1)) = (u32)g_0082d8f8;
    *(u32*)((u32)(t1) + 52) = 0;
    *(u32*)((u32)(t1) + 56) = 0;
    *(u32*)((u32)(t1) + 60) = 0;
}

// FUN_00005944
void W_005944(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = (u32)g_0082d8f8;
    r6 = (u32)g_009a3d00;
    r4 = 0u;
    *(u32*)(r5) = r0;
    L_595c:;
    r0 = r5 + (r4 << 2);
    r1 = *(u32*)(r0 + 48);
    fa = r1; fb = 0u;
    if (fa != fb) r0 = r6;
    if (fa != fb) r0 = Fn_015304_2(r0, r1);
    r4 = r4 + 1u;
    fa = r4; fb = 3u;
    if ((int)fa < (int)fb) goto L_595c;
    r0 = r5;
    { Fn_008010_1(r0); return; }
}

// FUN_00005a1c
void W_005a1c() {
    u32 t1 = Fn_007e08_1((u32)g_009a4780);
    u32 t2 = *(u32*)((u32)((u32)g_009a4780) + 4);
    if (t2 != 0) {
        u32 t3 = Fn_202758_2(t2, (u32)g_00107c6c);
        *(u32*)((u32)((u32)g_009a4780) + 4) = 0;
    }
    *(u32*)((u32)((u32)g_009a4780)) = 0;
}

// FUN_00005cec
void W_005cec() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_0135a4_0();
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5d14;
    r1 = (u32)g_008ab420;
    r0 = 1u;
    *(u8*)(r1 + 1) = r0;
    r0 = 0u;
    { Fn_008cdc_2(r0, r1); return; }
    L_5d14:;
    return;
}

// FUN_00005d1c
void W_005d1c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008bfa28;
    r0 = *(u32*)(r4);
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 16);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5d58;
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 4);
    r0 = ((u32(*)(u32))r1)(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_5d58:;
    return;
}

// FUN_00005e5c
u32 W_005e5c() {
    u32 t1 = *(u32*)((u32)((u32)g_008aadf4) + 8);
    return t1;
}

// FUN_00005f90
u32 W_005f90(u32 a0, u32 a1) {
    u32 t1 = *(u8*)((u32)((u32)g_008b84fc));
    if (t1 == 0) {
        *(u8*)((u32)((u32)g_008b84fc)) = 1;
        return Fn_00feb0_4((u32)g_009b0c40, a0, a1, 1);
    }
}

// FUN_00005fd0
u32 W_005fd0() {
    return Fn_00feb0_3((u32)g_009b99b4, 234881024, 33554432);
}

// FUN_00005fe4
void W_005fe4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_009b0c58;
    r2 = 67108864u;
    r1 = 268435456u;
    { Fn_00feb0_3(r0, r1, r2); return; }
}

// FUN_00006234
void W_006234() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_011b7c_0();
    { WeakCall1(r0); return; }
}

// FUN_00006448
void W_006448(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008ab948;
    r2 = r2 + 44u; *(u32*)(r2) = r0;
    *(u32*)(r2 + 64) = r1;
    return;
}

// FUN_0000645c
void W_00645c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008ab948;
    r2 = r2 + 32u; *(u32*)(r2) = r0;
    *(u32*)(r2 + 64) = r1;
    return;
}

// FUN_00006470
void W_006470(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_008ab948;
    r2 = r2 + 36u; *(u32*)(r2) = r0;
    *(u32*)(r2 + 64) = r1;
    return;
}

// FUN_00006484
u32 W_006484() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab8e0;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_00007538
u32 W_007538() {
    u32 t1 = *(u32*)((u32)((u32)g_009a3dcc) + 40);
    return t1;
}

// FUN_000079f8
u32 W_0079f8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab420;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_00007b90
void W_007b90() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00007e08
void W_007e08() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008b86e0;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_7e58;
    r0 = r0 + 5120u;
    r0 = r0 + 500u;
    r0 = WeakCall1(r0);
    r0 = r0 - 12u;
    r0 = WeakCall1(r0);
    r0 = r0 - 64u;
    r0 = WeakCall1(r0);
    r0 = r0 - 5376u;
    r0 = Fn_008874_1(r0);
    r0 = r0 - 88u;
    r0 = Fn_011a60_1(r0);
    r0 = r0 - 80u;
    r0 = Fn_2024b0_1(r0);
    r0 = 0u;
    *(u32*)(r4) = r0;
    L_7e58:;
    return;
}

// FUN_0000800c
void W_00800c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_000080a0
u32 W_0080a0() {
    return Fn_01b404_1((u32)g_008a8294);
}

// FUN_0000865c
u32 W_00865c() {

    return (u32)g_009a1410;
}

// FUN_00008668
u32 W_008668() {

    return (u32)g_009a1400;
}

// FUN_0000a130
void W_00a130(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_009ba094;
    r1 = *(u32*)(r1 + 4);
    r5 = r4 + 3072u;
    r5 = r5 + 1016u;
    r0 = r4 + 4096u;
    r0 = Fn_015d90_2(r0, r1);
    r0 = 1u;
    *(u32*)(r5 + 4) = r0;
    r0 = *(u32*)(r4 + 12);
    r0 = r0 | 1u;
    *(u32*)(r4 + 12) = r0;
    return;
}

// FUN_0000b2a4
void W_00b2a4(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 0u;
    r4 = (u32)g_009ba094;
    r2 = *(u32*)(r1);
    *(u8*)(r4 + 80) = r0;
    r0 = *(signed char*)(r1 + 20);
    r5 = (u16)r2;
    fa = r0; fb = 0u;
    *(u8*)(r4 + 81) = r0;
    if (fa == fb) goto L_b2f0;
    r2 = 16u;
    r1 = 0u;
    r0 = 96u;
    r0 = Fn_016d5c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_0123ec_1(r0);
    fa = r0; fb = 0u;
    *(u32*)(r4 + 580) = r0;
    if (fa != fb) r0 = Fn_01231c_1(r0);
    L_b2f0:;
    r0 = r4 + (r5 << 2);
    r0 = *(u32*)(r0 + 584);
    *(u32*)(r4 + 1608) = r0;
    return;
}

// FUN_0000d964
u32 W_00d964(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_009a5200;
    fa = r1; fb = 0u;
    *(u32*)(r2 + (r0 << 2)) = r1;
    if (fa != fb) *(u8*)(r1 + 72) = r0;
    r0 = 1u;
    return r0;
}

// FUN_0000dbc8
void W_00dbc8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, f2, f3, ffa, ffb;
    r6 = r0;
    r4 = (u32)g_009a35d8;
    r5 = 0u;
    r0 = r4 + 1824u;
    r0 = Fn_01611c_1(r0);
    r0 = r4 + 1808u;
    r0 = Fn_01611c_1(r0);
    r1 = *(u32*)(r4 + 4);
    r0 = 0u;
    r2 = *(u32*)(r1 + 20);
    fa = r2; fb = 0u;
    *(u32*)(r4 + 4) = r2;
    if (fa != fb) *(u32*)(r2 + 24) = r0;
    f0 = *(float*)(r6 + 0);
    f1 = *(float*)(r6 + 4);
    f2 = *(float*)(r6 + 8);
    f3 = *(float*)(r6 + 12);
    *(float*)(r1 + 0) = f0;
    *(float*)(r1 + 4) = f1;
    *(float*)(r1 + 8) = f2;
    *(float*)(r1 + 12) = f3;
    r3 = *(u32*)(r4 + 1800);
    r3 = r3 + 1u;
    *(u32*)(r4 + 1800) = r3;
    *(u32*)(r1 + 20) = r0;
    *(u32*)(r1 + 24) = r0;
    r0 = *(u32*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) *(u32*)(r4) = r1;
    if (fa == fb) goto L_dc8c;
    r2 = *(u32*)(r0 + 16);
    fa = r2; fb = 0u;
    if ((int)fa >= (int)fb) goto L_dc4c;
    *(u32*)(r1 + 20) = r0;
    r0 = *(u32*)(r4);
    *(u32*)(r0 + 24) = r1;
    *(u32*)(r4) = r1;
    goto L_dc8c;
    L_dc4c:;
    r2 = *(u32*)(r0 + 20);
    fa = r2; fb = 0u;
    if (fa == fb) goto L_dc84;
    L_dc58:;
    r2 = *(u32*)(r0 + 16);
    fa = r5; fb = r2;
    if ((int)fa > (int)fb) goto L_dc78;
    r0 = *(u32*)(r0 + 20);
    r2 = *(u32*)(r0 + 20);
    fa = r2; fb = 0u;
    if (fa != fb) goto L_dc58;
    goto L_dc84;
    L_dc78:;
    r2 = *(u32*)(r0 + 20);
    fa = r2; fb = 0u;
    if (fa != fb) *(u32*)(r2 + 24) = r1;
    L_dc84:;
    *(u32*)(r0 + 20) = r1;
    *(u32*)(r1 + 24) = r0;
    L_dc8c:;
    r0 = r4 + 1808u;
    r0 = Fn_016288_4f4(r0, r1, r2, r3, f0, f1, f2, f3);
    r0 = r4 + 1024u;
    r0 = r0 + 792u;
    { Fn_016288_1(r0); return; }
}

// FUN_0000e14c
void W_00e14c(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u8*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
}

// FUN_0000e3b0
u32 W_00e3b0(u32 a0, u32 a1) {
    return Fn_016384_3((u32)g_009b5194, a0, a1);
}

// FUN_00010058
void W_010058(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    r2 = r0 + 40u;
    r0 = r0 + 40u;
    r1 = r1 + 40u;
    { WeakCall3(r0, r1, r2); return; }
}

// FUN_00010558
u32 W_010558(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = 983313u;
    r1 = 1u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r3; r0 = r0 + 8;
    r2 = r3 & ~r1;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2; r0 = r0 + 8;
    return r0;
}

// FUN_0001097c
void W_01097c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_000123ec
void W_0123ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f0_1, ffa, ffb;
    f0_1 = 0.0f;
    *(float*)(r0 + 80) = f0_1;
    *(float*)(r0 + 92) = f0_1;
    return;
}

// FUN_000131b4
void W_0131b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = 0u;
    r0 = Fn_01d0f0_1(r0);
    r0 = 1u;
    r0 = Fn_013150_1(r0);
    { WeakCall1(r0); return; }
}

// FUN_00014a98
u32 W_014a98() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, r1_1, r3_1, r2_1, r0_4, r0_5, r0_6, r0_7, r0_8, r0_9, r0_10, r1_2, r3_2, r2_2;
    r0_1 = Fn_02a070_0();
    r0_3 = Fn_015600_1((r0_1 + 4u));
    r0_5 = Fn_0000ac_4((r0_3 + 12u), ((u32)g_00115600), 12u, 3u);
    r0_7 = Fn_015600_1((r0_5 + 36u));
    r0_9 = Fn_0208f8_1((r0_7 + 36u));
    r0_10 = r0_9 - 88u;
    r1_2 = 0u;
    *(u32*)(r0_10 + 64) = r1_2;
    *(u32*)(r0_10 + 68) = r1_2;
    *(u32*)(r0_10 + 72) = r1_2;
    *(u32*)(r0_10 + 76) = r1_2;
    *(u32*)(r0_10 + 80) = r1_2;
    *(u32*)(r0_10 + 84) = r1_2;
    *(u32*)(r0_10 + 96) = r1_2;
    *(u32*)(r0_10 + 100) = r1_2;
    *(u32*)(r0_10 + 104) = r1_2;
    *(u32*)(r0_10 + 108) = r1_2;
    *(u32*)(r0_10 + 112) = r1_2;
    *(u32*)((r0_10 + 116u) + 0) = r1_2; *(u32*)((r0_10 + 116u) + 4) = 1u;
    *(u32*)(r0_10 + 124) = r1_2;
    *(u32*)(r0_10 + 128) = r1_2;
    *(u32*)(r0_10 + 132) = r1_2;
    return r0_10;
}

// FUN_00014bb8
void W_014bb8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r2_1;
    *(u32*)(r0 + 0) = ~0u; *(u32*)(r0 + 4) = 0u;
    return;
}

// FUN_00014d6c
void W_014d6c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0 + 12) = r1;
    *(u32*)(r0 + 16) = r1;
    *(u32*)(r0 + 20) = r1;
    *(u32*)(r0 + 24) = r1;
    *(u32*)(r0 + 28) = r1;
    *(u32*)(r0 + 32) = r1;
    *(u32*)(r0 + 36) = r1;
    *(u32*)(r0 + 40) = r1;
    *(u32*)(r0 + 44) = r1;
    *(u32*)(r0 + 48) = r1;
    *(u32*)(r0 + 52) = r1;
    *(u32*)(r0 + 56) = r1;
    r0 = r0 + 60u; *(u32*)(r0) = r1;
    r0 = r0 + 4u;
    r2 = 8u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_000151c0
void W_0151c0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_00015490
void W_015490(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0)) = (u32)g_0082d924;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
}

// FUN_00015600
void W_015600(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f0_1, ffa, ffb;
    f0_1 = 0.0f;
    *(float*)(r0) = f0_1;
    *(float*)(r0 + 4) = f0_1;
    *(float*)(r0 + 8) = f0_1;
    return;
}

// FUN_00015664
u32 W_015664(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = *(u32*)(r0);
    return r0;
}

// FUN_00015674
u32 W_015674(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r0 + 8u;
    return r0;
}

// FUN_00015684
u32 W_015684(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 4);
    fa = r1; fb = 0u;
    if (fa != fb) r2 = *(u32*)(r1);
    if (fa != fb) { fa = r2; fb = 0u; }
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_156b0;
    r1 = r1 + 4u; r2 = *(u32*)(r1);
    r1 = r1 + 4u;
    r1 = r1 + r2;
    *(u32*)(r0 + 4) = r1;
    r0 = 1u;
    L_156b0:;
    return r0;
}

// FUN_00015c54
void W_015c54(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    r4 = r1;
    r5 = 0u;
    if (fa == fb) goto L_15cb0;
    fa = r0; fb = 196608u;
    if (fa != fb) goto L_15d04;
    r1 = *(u32*)(r4 + 4);
    r0 = 10515880u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_15d04;
    r2 = *(u32*)(r1 + 16);
    fa = r2; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r1 + 12);
    if (fa != fb) *(u32*)(r2 + 12) = r3;
    r2 = *(u32*)(r1 + 12);
    fa = r2; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r1 + 16);
    if (fa != fb) *(u32*)(r2 + 16) = r3;
    r3 = *(u32*)(r0);
    fa = r3; fb = r1;
    if (fa != fb) goto L_15cf4;
    goto L_15cec;
    L_15cb0:;
    r1 = *(u32*)(r4 + 4);
    r0 = 10515860u;
    fa = r1; fb = 0u;
    if (fa == fb) goto L_15d04;
    r2 = *(u32*)(r1 + 16);
    fa = r2; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r1 + 12);
    if (fa != fb) *(u32*)(r2 + 12) = r3;
    r2 = *(u32*)(r1 + 12);
    fa = r2; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r1 + 16);
    if (fa != fb) *(u32*)(r2 + 16) = r3;
    r3 = *(u32*)(r0);
    fa = r3; fb = r1;
    if (fa != fb) goto L_15cf4;
    L_15cec:;
    r2 = *(u32*)(r1 + 16);
    *(u32*)(r0) = r2;
    L_15cf4:;
    r2 = 0u;
    r0 = Fn_020be8_4(r0, r1, r2, r3);
    *(u32*)(r4 + 4) = r5;
    *(u32*)(r4) = r5;
    L_15d04:;
    return;
}

// FUN_00016030
void W_016030(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    { WeakCall2(r0, r1); return; }
}

// FUN_00017a48
u32 W_017a48() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab81c;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0) = r1;
    return r0;
}

// FUN_0001852c
u32 W_01852c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008ab850;
    r1 = 2132u;
    *(u32*)(r4) = r0;
    r0 = Fn_1fddd8_2(r0, r1);
    r0 = Fn_0226a0_1(r0);
    r3 = *(u32*)(r4);
    fa = r0; fb = 0u;
    *(u32*)(r3 + 2048) = r0;
    if (fa == fb) goto L_18564;
    r1 = 1u;
    r0 = 0u;
    *(u32*)(r4 + 4) = r1;
    return r0;
    L_18564:;
    r0 = (u32)g_008aab1c;
    r12 = *(u32*)(r0);
    fa = r12; fb = 0u;
    if (fa == fb) goto L_18584;
    r2 = 0u;
    r1 = 256u;
    r0 = 65536u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    L_18584:;
    r1 = 0u;
    r0 = ~0u;
    *(u32*)(r4) = r1;
    return r0;
}

// FUN_000185a0
u32 W_0185a0() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab844;
    r1 = *(u32*)(r0);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0) = r1;
    return r0;
}

// FUN_000185fc
u32 W_0185fc() {
    u32 t1 = *(u32*)((u32)((u32)g_008ab500));
    *(u32*)((u32)((u32)g_008ab500)) = 0;
    return t1;
}

// FUN_00018bb4
void W_018bb4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_009a0d28;
    r3 = *(u32*)(r2 + 292);
    r3 = r2 + (r3 << 2);
    *(u32*)(r3 + 308) = r0;
    r0 = *(u32*)(r2 + 292);
    r0 = r2 + (r0 << 2);
    *(u32*)(r0 + 320) = r1;
    return;
}

// FUN_0001902c
u32 W_01902c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    if (fa == fb) goto L_19050;
    fa = r0; fb = 196608u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_1904c;
    r0 = Fn_0258dc_1(r0);
    r0 = 526385151u;
    L_1904c:;
    return r0;
    L_19050:;
    r0 = Fn_0258dc_1(r0);
    r0 = 523239423u;
    return r0;
}

// FUN_00019068
u32 W_019068(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    if (fa == fb) goto L_19098;
    fa = r0; fb = 196608u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_19094;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 2621440u;
    if (fa != fb) goto L_19094;
    L_19090:;
    r0 = 3145728u;
    L_19094:;
    return r0;
    L_19098:;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1572864u;
    if (fa == fb) goto L_19090;
    return r0;
}

// FUN_000190b0
u32 W_0190b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 131072u;
    if (fa == fb) goto L_190dc;
    fa = r0; fb = 196608u;
    if (fa != fb) r0 = 0u;
    if (fa != fb) goto L_190d8;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 523763712u;
    if (fa == fb) r0 = 523239424u;
    L_190d8:;
    return r0;
    L_190dc:;
    r0 = Fn_0258dc_1(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 521666560u;
    if (fa == fb) r0 = 520093696u;
    return r0;
}

// FUN_00019100
void W_019100(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008ab4f8;
    r2 = *(u32*)(r1);
    r0 = r0 + r2;
    *(u32*)(r1) = r0;
    return;
}

// FUN_0001a170
void W_01a170() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0001a2b0
void W_01a2b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4u;
    { WeakCall1(r0); return; }
}

// FUN_0001b604
void W_01b604(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0 + 8) = r1;
    *(u32*)(r0) = r1;
    *(u16*)(r0 + 12) = r1;
    *(u8*)(r0 + 14) = r1;
    r0 = r0 + 16u;
    { WeakCall2(r0, r1); return; }
}

// FUN_0001b958
u32 W_01b958(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + 36u;
    r0 = *(u16*)(r0 + 52);
    *(u16*)(r2 + 16) = r1;
    return r0;
}

// FUN_0001ba44
u32 W_01ba44(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0 + 36u;
    r0 = *(signed char*)(r0 + 56);
    *(u8*)(r2 + 20) = r1;
    return r0;
}

// FUN_000203e8
u32 W_0203e8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_009a3dcc;
    r2 = r0 >> 16;
    r2 = r2 + (r2 << 2);
    r1 = *(u32*)(r1 + 12);
    r1 = r1 + (r2 << 2);
    r1 = *(u32*)(r1 + 4);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_2045c;
    r2 = *(u16*)(r1 + 6);
    r0 = (u16)r0;
    r0 = r0 - 1u;
    fa = r2; fb = r0;
    if (fa <= fb) r0 = (u32)g_008ab3a0;
    if (fa > fb) r0 = r1 + (r0 << 5);
    if (fa > fb) r0 = r0 + 32u;
    r0 = *(u32*)(r0 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_20460;
    fa = r1; fb = r0;
    if (fa > fb) goto L_2045c;
    r2 = *(u32*)(r1 + 16);
    r1 = r1 + r2;
    fa = r0; fb = r1;
    if (fa >= fb) goto L_2045c;
    r0 = *(u32*)(r0);
    r1 = 1230128467u;
    fa = r0; fb = r1;
    if (fa == fb) r0 = 1u;
    if (fa == fb) goto L_20460;
    L_2045c:;
    r0 = 0u;
    L_20460:;
    return r0;
}

// FUN_000208f8
void W_0208f8(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_00020ac8
void W_020ac8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = ~0u;
    *(u32*)(r0) = r1;
    return;
}

// FUN_00020b90
void W_020b90(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r5_1, r4_1, r6_1, r2_1, r1_1, r0_1, r0_2, r1_2, r5_2, r0_3, r0_4, r1_3, r0_5, r0_6, r1_4, r0_7, r0_8, stk[36];
    r0_1 = Fn_020b18_3(r0, ((u32)stk), 0u);
    *(u8*)((u32)stk + 12) = 3u;
    r0_4 = Fn_01a2b8_2(((u32)stk + 16u), r1);
    r0_6 = Fn_01a174_2((((u32)stk) + 80u), r2);
    r0_8 = Fn_022840_2(r0, ((u32)stk));
    return;
}

// FUN_00020ef4
u32 W_020ef4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_015490_0();
    r1 = (u32)g_0082df14;
    *(u32*)(r0) = r1; r0 = r0 + 28u;
    r0 = Fn_014bb8_2(r0, r1);
    r0 = r0 - 28u;
    r1 = 0u;
    *(u32*)(r0 + 20) = r1;
    *(u16*)(r0 + 24) = r1;
    *(u16*)(r0 + 26) = r1;
    return r0;
}

// FUN_00021bd4
float W_021bd4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, f2, f1_1, f2_1, f0_1, ffa, ffb;
    f1_1 = *(float*)(r0 + 92);
    f2_1 = *(float*)(r0 + 76);
    f0_1 = f1_1 / f2_1;
    return f0_1;
}

// FUN_00021d70
void W_021d70(u32 a0) {
    *(u32*)((u32)(a0)) = 1;
}

// FUN_00021e58
void W_021e58(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_008ab81c;
    r2 = 7168u;
    r1 = *(u32*)(r1);
    *(u32*)(r0) = r2;
    r0 = *(u32*)(r1 + 1904);
    r0 = r0 & ~8192u;
    r0 = r0 | 69632u;
    *(u32*)(r1 + 1904) = r0;
    { Fn_028208_3(r0, r1, r2); return; }
}

// FUN_00022100
void W_022100() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_000244b4
void W_0244b4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_513014_0();
    r0 = r0 + 52u;
    { WeakCall1(r0); return; }
}

// FUN_00024b70
void W_024b70(u32 a0, u32 a1) {
    *(u16*)((u32)(a0) + 10) = a1;
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u16*)((u32)(a0) + 8) = 0;
}

// FUN_00025398
void W_025398() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_000253e4
void W_0253e4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00025fa8
void W_025fa8(u32 a0, u32 a1, u32 a2) {
    u32 t1 = *(u8*)((u32)(a1));
    *(u8*)((u32)(a0)) = t1;
    u32 t2 = *(u8*)((u32)(a1) + 1);
    *(u8*)((u32)(a0) + 7) = t2;
    u32 t3 = *(u8*)((u32)(a1) + 2);
    *(u8*)((u32)(a0) + 8) = t3;
    u32 t4 = *(u8*)((u32)(a1) + 6);
    *(u8*)((u32)(a0) + 1) = t4;
    u32 t5 = *(u8*)((u32)(a1) + 7);
    *(u8*)((u32)(a0) + 2) = t5;
    u32 t6 = *(u8*)((u32)(a1) + 8);
    *(u8*)((u32)(a0) + 3) = t6;
    u32 t7 = *(u8*)((u32)(a1) + 3);
    *(u8*)((u32)(a0) + 4) = t7;
    u32 t8 = *(u8*)((u32)(a1) + 4);
    *(u8*)((u32)(a0) + 5) = t8;
    u32 t9 = *(u8*)((u32)(a1) + 5);
    *(u8*)((u32)(a0) + 6) = t9;
    u32 t10 = *(u8*)((u32)(a1) + 9);
    *(u8*)((u32)(a0) + 9) = t10;
    u32 t11 = *(u8*)((u32)(a1) + 10);
    *(u8*)((u32)(a0) + 16) = t11;
    u32 t12 = *(u8*)((u32)(a1) + 11);
    *(u8*)((u32)(a0) + 17) = t12;
    u32 t13 = *(u8*)((u32)(a1) + 15);
    *(u8*)((u32)(a0) + 10) = t13;
    u32 t14 = *(u8*)((u32)(a1) + 16);
    *(u8*)((u32)(a0) + 11) = t14;
    u32 t15 = *(u8*)((u32)(a1) + 17);
    *(u8*)((u32)(a0) + 12) = t15;
    u32 t16 = *(u8*)((u32)(a1) + 12);
    *(u8*)((u32)(a0) + 13) = t16;
    u32 t17 = *(u8*)((u32)(a1) + 13);
    *(u8*)((u32)(a0) + 14) = t17;
    u32 t18 = *(u8*)((u32)(a1) + 14);
    *(u8*)((u32)(a0) + 15) = t18;
    u32 t19 = *(u8*)((u32)(a2) + 3);
    *(u8*)((u32)(a0) + 18) = t19;
    u32 t20 = *(u8*)((u32)(a2) + 2);
    *(u8*)((u32)(a0) + 19) = t20;
    u32 t21 = *(u8*)((u32)(a2) + 1);
    *(u8*)((u32)(a0) + 20) = t21;
    u32 t22 = *(u8*)((u32)(a2));
    *(u8*)((u32)(a0) + 21) = t22;
}

// FUN_0002605c
void W_02605c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00026814
void W_026814(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r12_1, r3_1, r2_1;
    *(u32*)(r0) = (*(u32*)(r1));
    *(u32*)(r1 + 4) = 0u;
    *(u32*)(r0 + 4) = 1u;
    return;
}

// FUN_00026bc4
u32 W_026bc4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r1);
    fa = r1; fb = 0u - 1u;
    *(u32*)(r0) = r1;
    if (fa == fb) goto L_26bec;
    r2 = (u32)g_008b86d0;
    r2 = *(u32*)(r2);
    r1 = r2 + (r1 << 3);
    r2 = *(u32*)(r1 + 4);
    r2 = r2 + 1u;
    *(u32*)(r1 + 4) = r2;
    L_26bec:;
    return r0;
}

// FUN_00026bf4
void W_026bf4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 20);
    *(u32*)((u32)(a0) + 20) = (t1 + 1);
}

// FUN_00026c04
void W_026c04(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 8);
    r1 = r1 & 15u;
    r1 = r1 | r2;
    *(u32*)(r0 + 8) = r1;
    return;
}

// FUN_000282d0
void W_0282d0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 66u;
    *(u32*)(r0) = r1;
    { WeakCall2(r0, r1); return; }
}

// FUN_00029044
u32 W_029044(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = *(u32*)(r0);
    if (fa != fb) r0 = *(u16*)(r0 + 10);
    if (fa != fb) r1 = r1 + 4u;
    if (fa != fb) r0 = *(u32*)(r0 + r1);
    return r0;
}

// FUN_0002a054
u32 W_02a054(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r0_3;
    r4_1 = r0;
    *(u32*)(r0) = r1;
    r0_1 = r1;
    r0_2 = Fn_02acc4_2(r0_1, r1);
    r0_3 = r4_1;
    return r0_3;
}

// FUN_0002a07c
void W_02a07c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0002a210
void W_02a210(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 4u;
    { WeakCall1(r0); return; }
}

// FUN_0002a218
u32 W_02a218(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    r0 = Fn_02ac64_1(r0);
    r1 = *(u32*)(r4);
    r2 = r1 << 16;
    r2 = r2 >> 16;
    if (r2 == 0) goto L_2a24c;
    r0 = Fn_02ac3c_3(r0, r1, r2);
    r1 = *(u8*)(r0 + 18);
    fx = r1 & 8u;
    if (fx == 0) r0 = *(u32*)(r0 + 4);
    if (fx != 0) r0 = 0u;
    L_2a24c:;
    return r0;
}

// FUN_0002a298
u32 W_02a298(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u8*)(r0 + 4);
    fa = r1; fb = 97u;
    if (fa == fb) r0 = *(u32*)(r0 + 8);
    if (fa == fb) r0 = *(u16*)(r0 + 2);
    if (fa == fb) goto L_2a2c8;
    fa = r1; fb = 104u;
    if (fa == fb) r0 = *(u32*)(r0 + 8);
    if (fa == fb) r0 = *(u16*)(r0);
    if (fa == fb) goto L_2a2c8;
    fa = r1; fb = 120u;
    if (fa != fb) r0 = 1u;
    if (fa == fb) r0 = 0u;
    L_2a2c8:;
    return r0;
}

// FUN_0002a2cc
u32 W_02a2cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u8*)(r0 + 4);
    fa = r0; fb = 120u;
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_0002a724
void W_02a724(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082bfc4;
    *(u32*)(r0) = r1;
    r1 = *(u32*)(r0 + 36);
    fa = r1; fb = 0u;
    if (fa != fb) r1 = 0u;
    if (fa != fb) *(u32*)(r0 + 36) = r1;
    { Fn_02a948_2(r0, r1); return; }
}

// FUN_0002aaa0
u32 W_02aaa0(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa != fb) r0 = r0 + r1;
    return r0;
}

// FUN_0002aab0
u32 W_02aab0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r1 = *(u32*)(r0 + 8);
    r0 = Fn_02aaa0_2(r0, r1);
    *(u32*)(r4 + 8) = r0;
    r1 = *(u32*)(r4 + 12);
    r0 = r4;
    r0 = Fn_02aaa0_2(r0, r1);
    *(u32*)(r4 + 12) = r0;
    r1 = *(u32*)(r4 + 4);
    r0 = r4;
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = r0;
    r0 = *(u32*)(r4 + 12);
    *(u32*)(r4 + 4) = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ab54;
    r1 = *(u32*)(r0 + 4);
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1 + 4) = r0;
    r0 = *(u32*)(r4 + 12);
    r1 = *(u32*)(r0 + 8);
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1 + 8) = r0;
    r0 = *(u32*)(r4 + 12);
    r1 = *(u32*)(r0 + 12);
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1 + 12) = r0;
    r0 = *(u32*)(r4 + 12);
    r1 = *(u32*)(r0 + 16);
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1 + 16) = r0;
    r0 = *(u32*)(r4 + 12);
    r1 = *(u32*)(r0 + 20);
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = *(u32*)(r4 + 12);
    *(u32*)(r1 + 20) = r0;
    L_2ab54:;
    r0 = *(u32*)(r4 + 4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_2ab9c;
    r0 = *(u16*)(r4 + 18);
    r5 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa > (int)fb) r7 = 4u;
    if ((int)fa <= (int)fb) goto L_2ab9c;
    L_2ab74:;
    r0 = *(u32*)(r4 + 4);
    r6 = r7 + (r5 << 3);
    r1 = *(u32*)(r0 + r6);
    r0 = Fn_02aaa0_2(r0, r1);
    r1 = *(u32*)(r4 + 4);
    r5 = r5 + 1u;
    *(u32*)(r1 + r6) = r0;
    r0 = *(u16*)(r4 + 18);
    fa = r0; fb = r5;
    if ((int)fa > (int)fb) goto L_2ab74;
    L_2ab9c:;
    r0 = 1u;
    return r0;
}

// FUN_0002aca0
void W_02aca0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = *(u32*)(r0);
    r5 = r1;
    r0 = Fn_029b80_2(r0, r1);
    r0 = *(u32*)(r5);
    *(u32*)(r4) = r0;
    { WeakCall1(r0); return; }
}

// FUN_0002ae08
void W_02ae08(u32 a0) {
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u32*)((u32)(a0) + 16) = 0;
    *(u32*)((u32)(a0)) = 0;
    *(u8*)((u32)(a0) + 4) = 120;
}

// FUN_0002ae28
void W_02ae28(u32 a0, u32 a1, u32 a2, u32 a3) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3 = a3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r2_1, r12_1, r12_2, r12_3, r2_2, r2_3, r3_1, r3_2, r2_4, r3_3, r3_4, r1_1;
    r2_1 = r2 + 4u;
    *(u32*)(r1) = r2_1;
    fa = r3; fb = 0u;
    *(u32*)(r1 + 4) = ((*(u16*)(r2_1)) + r2_1);
    *(u32*)(r1 + 8) = (r2_1 + (*(u16*)(r2_1 + 2)));
    if (fa != fb) *(u32*)(r1 + 8) = r3;
    r2_3 = 0u;
    *(u32*)(r0 + 8) = r2_3;
    *(u32*)(r0 + 12) = r2_3;
    *(u32*)(r0 + 16) = r2_3;
    *(u32*)(r0) = r2_3;
    *(u8*)(r0 + 4) = 120u;
    *(u32*)(r0 + 8) = ((*(u32*)(r1)) + 4u);
    *(u32*)(r0 + 12) = (*(u32*)(r1 + 4));
    *(u32*)(r0 + 16) = (*(u32*)(r1 + 8));
    *(u8*)(r0 + 4) = 104u;
    return;
}

// FUN_0002ae94
void W_02ae94(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
}

// FUN_0002afac
u32 W_02afac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r1 = *(u32*)(r0 + 44);
    fa = r1; fb = r4;
    if (fa != fb) goto L_2b000;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_2afd8;
    r0 = *(u32*)(r0 + 68);
    fa = r0; fb = r2;
    if (fa == fb) goto L_2aff8;
    goto L_2b000;
    L_2afd8:;
    r0 = r4;
    r0 = Fn_02b010_3(r0, r1, r2);
    r5 = r0;
    r0 = r4;
    r0 = Fn_02b084_1(r0);
    fa = r5; fb = r0;
    if ((int)fa < (int)fb) goto L_2b000;
    L_2aff8:;
    r0 = 1u;
    return r0;
    L_2b000:;
    r0 = 0u;
    return r0;
}

// FUN_0002b00c
void W_02b00c() {

}

// FUN_000317c8
void W_0317c8(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1;
    r1 = *(u32*)(r0 + 8);
    r2 = r2 - 1u;
    r0 = r3;
    { WeakCall4(r0, r1, r2, r3); return; }
}

// FUN_004fd0c8
u32 W_4fd0c8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_4fd0e0;
    r0 = Fn_021ccc_2(r0, r1);
    goto L_4fd0e8;
    L_4fd0e0:;
    r0 = Fn_646540_1(r0);
    L_4fd0e8:;
    r0 = r4;
    return r0;
}

// FUN_004fd0f0
u32 W_4fd0f0(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r0;
    if (fa == fb) goto L_4fd108;
    r0 = Fn_021ccc_2(r0, r1);
    goto L_4fd110;
    L_4fd108:;
    r0 = Fn_646540_1(r0);
    L_4fd110:;
    r0 = r4;
    return r0;
}
