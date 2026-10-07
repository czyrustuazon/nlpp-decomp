// NintendoWare for CTR functions (NW vtable band and references, tools/nw_classify.py, technical.md section 5 gap 3), matched by the lifter (tools/wrapgen).
// SDK code is kept as a library (technical.md section 5 gap 3, section 8 item 2); names and types are placeholders.
// Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned u32;
typedef unsigned long long u64;
static inline float u2f(u32 v) { union { u32 u; float f; } x; x.u = v; return x.f; }
static inline u32 f2u(float f) { union { u32 u; float f; } x; x.f = f; return x.u; }
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
u32 Fn_024568_1(u32);
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
extern char g_008ab8e0[];
u32 Fn_01d3e0_2(u32, u32);
u32 Fn_01d534_1(u32);
u32 Fn_5378d0_2(u32, u32);
u32 Fn_542118_1(u32);
u32 Fn_2024b0_1(u32);
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
u32 Fn_54f908_1(u32);
extern char g_0082cc90[];
extern char g_0082cca4[];
u32 Fn_560360_2(u32, u32);
u32 Fn_56469c_1(u32);
u32 Fn_01b274_1(u32);
u32 Fn_5572d4_2(u32, u32);
u32 Fn_684f28_1(u32);
u32 Fn_684f64_1(u32);
u32 Fn_5577c0_1(u32);
u32 Fn_557e3c_1(u32);
u32 Fn_559fdc_3(u32, u32, u32);
extern char g_0082cecc[];
u32 Fn_513298_1(u32);
u32 Fn_557434_1(u32);
u32 Fn_557590_2(u32, u32);
u32 Fn_55d7d8_4(u32, u32, u32, u32);
u32 Fn_0000ac_1(u32);
u32 Fn_55e338_1(u32);
u32 Fn_55ea18_2(u32, u32);
u32 Fn_55ea04_2(u32, u32);
extern char g_0082cf90[];
extern char g_0082cfb4[];
u32 Fn_561138_1(u32);
u32 Fn_5656dc_1(u32);
u32 Fn_5421f4_2(u32, u32);
u32 Fn_562900_1(u32);
u32 Fn_5667d4_2(u32, u32);
u32 Fn_565778_1(u32);
u32 Fn_5657dc_2(u32, u32);
extern char g_0065c880[];
extern char g_0065c8a0[];
extern char g_0065c8bc[];
extern char g_0065c91c[];
extern char g_0065c920[];
extern char g_009df8d8[];
u32 Fn_1fddd8_2(u32, u32);
u32 Fn_541ee0_2(u32, u32);
u32 Fn_5425a0_1(u32);
u32 Fn_56689c_1(u32);
extern char g_008ab4f8[];
u32 Fn_567ae0_3(u32, u32, u32);
u32 Fn_56a124_1(u32);
extern char g_0082d1ec[];
u32 Fn_56a010_1(u32);
u32 Fn_56b6d0_1(u32);
u32 Fn_1fcd88_1(u32);
void Fn_015648();
extern char g_0069d4a0[];
u32 Fn_000068_4(u32, u32, u32, u32);
u32 Fn_56d88c_1(u32);
extern char g_0082d260[];
u32 Fn_1fddd8_3(u32, u32, u32);
u32 Fn_5a4da0_1(u32);
u32 Fn_020510_3(u32, u32, u32);
u32 Fn_5a579c_1(u32);
u32 Fn_0152e0_3(u32, u32, u32);
u32 Fn_64651c_2(u32, u32);
u32 Fn_36721c_1(u32);
u32 Fn_3778d0_1(u32);
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
u32 Fn_029ed4_2(u32, u32);
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
u32 Fn_202758_2(u32, u32);
extern char g_0012a080[];
extern char g_006a0d1c[];
extern char g_0082da24[];
u32 Fn_59202c_2(u32, u32);
u32 Fn_59a910_1(u32);
u32 Fn_5a4190_1(u32);
u32 Fn_5a4454_2(u32, u32);
u32 Fn_048d8c_2(u32, u32);
u32 Fn_5bcb14_1(u32);
extern char g_008a8894[];
u32 Fn_016d5c_3(u32, u32, u32);
extern char g_0089a330[];
u32 Fn_3cb318_3(u32, u32, u32);
extern char g_0082e938[];
u32 Fn_5f333c_4(u32, u32, u32, u32);
u32 Fn_5119f0_1(u32);
u32 Fn_511a28_1(u32);
u32 Fn_60846c_2(u32, u32);
extern char g_008bfa54[];
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
u32 Fn_56e744_1(u32);
u32 Fn_56e784_1(u32);
u32 Fn_56e7b4_1(u32);
u32 Fn_021ccc_2(u32, u32);
u32 Fn_646540_1(u32);
extern char g_008aabb0[];
u32 Fn_028f24_2(u32, u32);
extern char g_0082bfc4[];
u32 Fn_02a948_2(u32, u32);
extern char g_008bb658[];
extern char g_009df8ac[];
u32 Fn_01b624_2(u32, u32);
u32 Fn_4f0efc_1(u32);
u32 Fn_4f0cf4_0();
u32 Fn_0244c8_1(u32);
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
u32 Fn_024788_1(u32);
extern char g_0082c37c[];
extern char g_0082c3d4[];
extern char g_008aab68[];
u32 Fn_504590_3(u32, u32, u32);
u32 Fn_52008c_1(u32);
extern char g_00202bf8[];
u32 Fn_0252f4_0();
u32 Fn_02962c_1(u32);
u32 Fn_533880_1(u32);
extern char g_008ab948[];
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
u32 Fn_54e5ac_1(u32);
extern char g_0082ca0c[];
u32 Fn_665970_3(u32, u32, u32);
extern char g_008bb4fc[];
extern char g_0082ca60[];
u32 Fn_54f870_1(u32);
u32 Fn_5504e0_3(u32, u32, u32);
extern char g_0082ce4c[];
u32 Fn_2024b0_3(u32, u32, u32);
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
u32 Fn_55bca4_1(u32);
u32 Fn_55bd7c_2(u32, u32);
u32 Fn_55bfe4_2(u32, u32);
u32 Fn_5667ec_1(u32);
u32 Fn_56a110_3(u32, u32, u32);
u32 Fn_569f9c_3(u32, u32, u32);
u32 Fn_56aa74_1(u32);
extern char g_008bfabc[];
u32 Fn_016338_1(u32);
u32 Fn_036198_1(u32);
u32 Fn_573fe4_2(u32, u32);
extern char g_0079ee14[];
u32 Fn_5a579c_3(u32, u32, u32);
extern char g_0079ef0c[];
u32 Fn_016030_3(u32, u32, u32);
extern char g_0079ef84[];
extern char g_0079f184[];
u32 Fn_3692c8_1(u32);
u32 Fn_369364_1(u32);
u32 Fn_3779cc_1(u32);
extern char g_0079f1bc[];
u32 Fn_18ee58_0();
u32 Fn_21ba90_1(u32);
u32 Fn_5c6ae0_3(u32, u32, u32);
u32 Fn_128308_1(u32);
extern char g_0082d370[];
u32 Fn_5799a4_3(u32, u32, u32);
u32 Fn_583488_1(u32);
extern char g_0082d3d0[];
u32 Fn_5799a4_2(u32, u32);
u32 Fn_5799a4_1(u32);
u32 Fn_58964c_1(u32);
u32 Fn_5898dc_1(u32);
u32 Fn_57f690_1(u32);
extern char g_008b86a0[];
u32 Fn_4e7d30_1(u32);
u32 Fn_4e7d68_1(u32);
extern char g_008bb5ac[];
u32 Fn_63e370_1(u32);
u32 Fn_63e7c4_1(u32);
u32 Fn_63ebe4_2(u32, u32);
extern char g_0082d57c[];
extern char g_0082d58c[];
extern char g_0082d5ac[];
u32 Fn_0424fc_3(u32, u32, u32);
u32 Fn_6400a4_1(u32);
extern char g_008ab49c[];
extern char g_009a3d8c[];
extern char g_008ab4c4[];
u32 Fn_01a4d4_2(u32, u32);
u32 Fn_5b0358_2(u32, u32);
u32 Fn_59ab04_1(u32);
extern char g_009a4970[];
u32 Fn_0206d0_3(u32, u32, u32);
u32 Fn_5a579c_2(u32, u32);
extern char g_009a4798[];
u32 Fn_02073c_3(u32, u32, u32);
u32 Fn_5a8268_2(u32, u32);
u32 Fn_5a880c_1(u32);
u32 Fn_5ac3fc_3(u32, u32, u32);
u32 Fn_5afec8_1(u32);
u32 Fn_5b0148_2(u32, u32);
u32 Fn_5b022c_3(u32, u32, u32);
extern char g_009a420c[];
u32 Fn_016038_2(u32, u32);
u32 Fn_6400a4_0();
u32 Fn_641be4_0();
u32 Fn_02a218_1(u32);
u32 Fn_02aca0_2(u32, u32);
u32 Fn_6663a4_4(u32, u32, u32, u32);
u32 Fn_5ad1d0_3(u32, u32, u32);
u32 Fn_5bac6c_1(u32);
u32 Fn_5bae94_1(u32);
u32 Fn_5bb228_1(u32);
u32 Fn_5bb488_1(u32);
extern char g_008a75dc[];
u32 Fn_3d6b28_4(u32, u32, u32, u32);
extern char g_008273bc[];
extern char g_008db430[];
u32 Fn_5db4b4_3(u32, u32, u32);
u32 Fn_498c20_4(u32, u32, u32, u32);
extern char g_008277e8[];
extern char g_00827938[];
extern char g_007d5314[];
u32 Fn_15c9d0_4(u32, u32, u32, u32);
u32 Fn_626288_2(u32, u32);
extern char g_007d502c[];
u32 Fn_59935c_3(u32, u32, u32);
u32 Fn_5992a0_2(u32, u32);
extern char g_00827a30[];
u32 Fn_137d64_3(u32, u32, u32);
extern char g_007dae24[];
extern char g_007dad7c[];
u32 Fn_567528_0();
u32 Fn_024730_2(u32, u32);
u32 Fn_4ec684_1(u32);
u32 Fn_01b6ac_2(u32, u32);
u32 Fn_4f4b80_0();
u32 Fn_024730_1(u32);
u32 Fn_50e3c4_0();
extern char g_007eb670[];
extern char g_008b8778[];
u32 Fn_011b7c_0();
u32 Fn_011be4_4(u32, u32, u32, u32);
u32 Fn_200e60_2(u32, u32);
extern char g_007eb677[];
extern char g_008b877c[];
extern char g_008ab9ec[];
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
u32 Fn_012454_1(u32);
u32 Fn_013240_1(u32);
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
u32 Fn_008010_1(u32);
u32 Fn_016338_2(u32, u32);
extern char g_009a5200[];
u32 Fn_595cd8_1(u32);
u32 Fn_005b2c_1(u32);
extern char g_0082d8b8[];
extern char g_009a3dcc[];
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
u32 Fn_5bc688_2(u32, u32);
extern char g_00890d18[];
u32 Fn_5bc570_2(u32, u32);
u32 Fn_5bc6c0_2(u32, u32);
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
extern char g_00823d7c[];
extern char g_008bfa30[];
u32 Fn_403a5c_3(u32, u32, u32);
u32 WeakCall1(u32);
u32 WeakCall0();
extern char g_008bfa34[];
u32 Fn_422f60_2(u32, u32);
extern char g_008bfa3c[];
u32 Fn_43d514_2(u32, u32);
extern char g_008252f8[];
extern char g_008272c8[];
u32 Fn_492d48_3(u32, u32, u32);
extern char g_0082c5bc[];
u32 Fn_543028_1(u32);
u32 Fn_543ecc_2(u32, u32);
extern char g_0082c5e0[];
u32 Fn_5421a0_3(u32, u32, u32);
u32 Fn_543ecc_1(u32);
extern char g_00100000[];
extern char g_00784f34[];
extern char g_008bb6f8[];
extern char g_009dfad8[];
u32 Fn_203d64_1(u32);
u32 Fn_55c0c4_1(u32);
u32 WeakCall3(u32, u32, u32);
extern char g_008bb6fc[];
extern char g_009dfc68[];
extern char g_0065eb58[];
extern char g_008bb50c[];
extern char g_009b9aa8[];
u32 Fn_55eab8_1(u32);
extern char g_0082fc80[];
u32 WeakCall2(u32, u32);
extern char g_007e3e44[];
u32 Fn_02a080_1(u32);
u32 Fn_5b2010_1(u32);
extern char g_0082d8e8[];
u32 Fn_1fcd88_3(u32, u32, u32);
extern char g_008ab420[];
u32 Fn_01fd7c_1(u32);
u32 Fn_01fd88_1(u32);
u32 Fn_01fd94_1(u32);
u32 Fn_01fd88_2(u32, u32);
extern char g_0082da8c[];
u32 Fn_59ab78_1(u32);
extern char g_0082dd10[];
u32 Fn_5a59ac_1(u32);
extern char g_0082dd3c[];
u32 Fn_5ad5f0_1(u32);
extern char g_0082df14[];
u32 Fn_0267bc_2(u32, u32);
u32 Fn_569cb4_1(u32);
u32 Fn_57f6b4_1(u32);
u32 Fn_630b6c_1(u32);
u32 Fn_59cb38_1(u32);
u32 Fn_5c7c28_1(u32);
u32 Fn_633428_1(u32);
u32 Fn_261560_0();
u32 Fn_2c5c08_1(u32);
u32 WeakCall4(u32, u32, u32, u32);
u32 Fn_60cbc0_1(u32);
u32 Fn_06e13c_2(u32, u32);
u32 Fn_06e3e4_2(u32, u32);
u32 Fn_06ea88_2(u32, u32);
u32 Fn_075258_2(u32, u32);
u32 Fn_0758a8_2(u32, u32);
u32 Fn_075ee0_2(u32, u32);
u32 Fn_076990_3(u32, u32, u32);
u32 Fn_077d08_2(u32, u32);
u32 Fn_078398_2(u32, u32);
u32 Fn_0796ec_2(u32, u32);
u32 Fn_07a594_3(u32, u32, u32);
u32 Fn_07ba14_2(u32, u32);
u32 Fn_07e58c_2(u32, u32);
u32 Fn_07559c_2(u32, u32);
u32 Fn_278094_3(u32, u32, u32);
u32 Fn_5d6c08_1(u32);
extern char g_009dfe08[];
u32 Fn_556abc_1(u32);
u32 Fn_556c04_1(u32);
u32 Fn_55c048_1(u32);
u32 Fn_55c0a4_1(u32);
u32 Fn_55e9b4_1(u32);
u32 Fn_55ea24_1(u32);
u32 Fn_55ea50_1(u32);
u32 Fn_561354_1(u32);
u32 Fn_5614f4_1(u32);
u32 Fn_561ec4_1(u32);
u32 Fn_562e60_1(u32);
u32 Fn_684f18_1(u32);
u32 Fn_55dcc4_0();
u32 Fn_55dcc4_1(u32);
u32 Fn_4e27a8_1(u32);
u32 Fn_4e2860_1(u32);
u32 Fn_4ef124_2(u32, u32);
u32 Fn_000d0c_2(u32, u32);
u32 Fn_684968_1(u32);
u32 Fn_4fad4c_1(u32);
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
u32 Fn_55c9a8_0();
u32 Fn_57fa5c_2(u32, u32);
float Fn_5924d4_3(u32, u32, u32);
u32 Fn_594500_2(u32, u32);
u32 Fn_5ba784_1(u32);
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
extern char g_0082d9b4[];
u32 Fn_02a054_2(u32, u32);
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
u32 Fn_00e0a4_4(u32, u32, u32, u32);
u32 Fn_020908_2(u32, u32);
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
extern char g_008bfa50[];
extern char g_008bfa60[];
extern char g_008bfa64[];
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
u32 Fn_1fe040_2(u32, u32);
u32 Fn_1d22bc_0();
u32 Fn_229890_1(u32);
u32 Fn_229f48_1(u32);
u32 Fn_22a360_1(u32);
u32 Fn_230680_1(u32);
u32 Fn_2556cc_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
u32 Fn_192024_0();
u32 Fn_192868_1(u32);
u32 Fn_1c8938_1(u32);
u32 Fn_1d22bc_1(u32);
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
u32 Fn_075aa0_2(u32, u32);
u32 Fn_277f60_3(u32, u32, u32);
u32 Fn_278268_1(u32);
u32 Fn_07de40_3(u32, u32, u32);
u32 Fn_365400_1(u32);
u32 Fn_048d8c_2f3(u32, u32, float, float, float);
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
extern char g_008bfac0[];
u32 Fn_139520_1(u32);
u32 Fn_5bbbf8_2(u32, u32);
u32 Fn_19b350_1(u32);
u32 Fn_1b0830_1(u32);
u32 Fn_1b0f4c_1(u32);
u32 Fn_1bf5cc_1(u32);
u32 Fn_1dbc10_1(u32);
u32 Fn_1f5bf4_0();
u32 Fn_1ff580_1(u32);
u32 Fn_200b08_1(u32);
u32 Fn_192fc4_1(u32);
u32 Fn_5c31cc_4(u32, u32, u32, u32);
extern char g_0080af8c[];
u32 Fn_01a4d4_3(u32, u32, u32);
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
extern char g_008a8348[];
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
u32 Fn_2556cc_0();
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
u32 Fn_5d2b94_2(u32, u32);
u32 Fn_5d4b4c_2(u32, u32);
u32 Fn_254014_2(u32, u32);
u32 Fn_2553e4_2(u32, u32);
u32 Fn_255764_2(u32, u32);
u32 Fn_5c0d4c_3(u32, u32, u32);
u32 Fn_5c5cb0_3(u32, u32, u32);
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
u32 Fn_196f88_2(u32, u32);
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
extern char g_007c3672[];
u32 Fn_626038_1(u32);
u32 Fn_626044_1(u32);
u32 Fn_626064_3(u32, u32, u32);
extern char g_00823154[];
u32 Fn_016030_1(u32);
u32 Fn_2f3590_2(u32, u32);
extern char g_00823b08[];
extern char g_00823ba4[];
u32 Fn_420358_2(u32, u32);
u32 Fn_427708_2(u32, u32);
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
extern char g_008a78ac[];
u32 Fn_483ed0_2(u32, u32);
u32 Fn_49dab0_3(u32, u32, u32);
u32 Fn_6300a4_1(u32);
u32 Fn_27792c_1(u32);
u32 Fn_4a4a5c_1(u32);
u32 Fn_4a5150_1(u32);
u32 Fn_5ae1c8_2(u32, u32);
u32 Fn_19a230_1(u32);
u32 Fn_19ac4c_1(u32);
u32 Fn_19aedc_1(u32);
u32 Fn_19b088_1(u32);
u32 Fn_2166a0_1(u32);
extern char g_009b74c8[];
u32 Fn_4df8a4_1(u32);
u32 Fn_622434_1(u32);
u32 Fn_636d24_2(u32, u32);
extern char g_008bb5e0[];
extern char g_009dd034[];
u32 Fn_553a58_1(u32);
u32 Fn_622434_2(u32, u32);
u32 Fn_512510_2(u32, u32);
u32 Fn_512590_3(u32, u32, u32);
u32 Fn_01d604_1(u32);
extern char g_008aab50[];
u32 Fn_009028_2(u32, u32);
u32 Fn_012400_1(u32);
u32 Fn_01291c_1(u32);
u32 Fn_534c30_3(u32, u32, u32);
u32 Fn_536580_1(u32);
u32 Fn_5613e8_2(u32, u32);
u32 Fn_562d24_2(u32, u32);
u32 Fn_55736c_1(u32);
u32 Fn_5576b8_1(u32);
u32 Fn_55bf1c_1(u32);
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
extern char g_008ab81c[];
extern char g_008ab844[];
u32 Fn_0282dc_2(u32, u32);
u32 Fn_6467bc_2(u32, u32);
u32 Fn_648efc_2(u32, u32);
u32 Fn_65b8dc_2(u32, u32);
u32 Fn_678268_1(u32);
u32 Fn_2eb2d8_4(u32, u32, u32, u32);
u32 Fn_2eb420_4(u32, u32, u32, u32);
u32 Fn_2ee9b8_3(u32, u32, u32);
u32 Fn_2f0168_4(u32, u32, u32, u32);
u32 Fn_2f017c_4(u32, u32, u32, u32);
u32 Fn_2f0890_3(u32, u32, u32);
u32 Fn_2f4e68_4(u32, u32, u32, u32);
extern char g_008a6196[];
u32 Fn_16ec1c_2(u32, u32);
u32 Fn_1c7c34_3(u32, u32, u32);
u32 Fn_1b6f2c_3(u32, u32, u32);
u32 Fn_1b74f8_3(u32, u32, u32);
extern char g_008121e8[];
u32 Fn_5c8040_3(u32, u32, u32);
extern char g_007c7048[];
u32 Fn_3d6c5c_0();
extern char g_00804a54[];
u32 Fn_4e0128_3(u32, u32, u32);
u32 Fn_544c68_3(u32, u32, u32);
u32 WeakCall2f8(u32, u32, float, float, float, float, float, float, float, float);
extern char g_0089a430[];
u32 Fn_444420_0();
u32 Fn_642530_2(u32, u32);

// FUN_00541c30
u32 W_541c30() {

    return 1;
}

// FUN_00541cdc
void W_541cdc() {

}

// FUN_005421f4
u32 W_5421f4(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r0;
    r0 = *(u32*)(r1 + 0); r3 = *(u32*)(r1 + 4);
    r12 = 0u;
    *(u32*)(r0 + 4) = r3;
    *(u32*)(r3) = r0;
    r3 = *(u32*)(r2);
    r3 = r3 - 1u;
    *(u32*)(r2) = r3;
    *(u32*)(r1) = r12;
    *(u32*)(r1 + 4) = r12;
    return r0;
}

// FUN_005425a0
u32 W_5425a0(u32 a0) {
    u32 t1 = Fn_542118_1(a0);
    return a0;
}

// FUN_00542c20
u32 W_542c20(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00542d2c
u32 W_542d2c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_544c68_1(r0);
    r1 = *(u32*)(r4 + 4);
    fa = r0; fb = 0u;
    if ((int)fa < (int)fb) goto L_542d5c;
    r2 = r0 + (r0 << 1);
    r1 = *(u32*)(r1 + (r2 << 2));
    fx = r1 & 4278190080u;
    if (fx != 0) *(u32*)(r4 + 24) = r0;
    if (fx != 0) r0 = 1u;
    if (fx != 0) goto L_542d60;
    L_542d5c:;
    r0 = 0u;
    L_542d60:;
    return r0;
}

// FUN_00542e80
void W_542e80() {

}

// FUN_00542ed4
void W_542ed4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = (u32)g_008ab280;
    r4 = *(u32*)(r0);
    r1 = *(u8*)(r1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_542f08;
    fa = r4; fb = 0u;
    stk = r4;
    if (fa == fb) goto L_542f04;
    r1 = (u32)&stk;
    r0 = 1u;
    r0 = Fn_660bf8_2(r0, r1);
    L_542f04:;
    return;
    L_542f08:;
    fa = r4; fb = 0u;
    if (fa == fb) goto L_542f04;
    r0 = 0u;
    r1 = (u32)&stk;
    stk = r0;
    r0 = Fn_6691d0_2(r0, r1);
    r12 = stk;
    r0 = r4 << 30;
    r1 = 257u;
    r3 = r4 & ~3u;
    r0 = r0 >> 14;
    r2 = 0u;
    r0 = ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3);
    return;
}

// FUN_005439a8
void W_5439a8(u32 a0) {
    *(u8*)((u32)(a0) + 735) = 1;
}

// FUN_005449b0
void W_5449b0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c594;
    r4 = r0;
    *(u32*)(r0) = r1;
    r0 = *(u32*)(r0 + 24);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_548334_2(r0, r1);
    r0 = *(u32*)(r4 + 20);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = Fn_548334_1(r0);
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00544bd8
void W_544bd8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c5bc;
    *(u32*)(r0) = r1; r0 = r0 + 48u;
    r0 = Fn_543ecc_2(r0, r1);
    r0 = r0 - 12u;
    r0 = Fn_543028_1(r0);
    r0 = r0 - 36u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_00545220
void W_545220(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082c5e0;
    r4 = r0;
    *(u32*)(r0) = r1; r0 = r0 + 4u;
    r2 = r0 + 4u;
    r1 = *(u32*)(r0 + 4);
    r0 = Fn_5421a0_3(r0, r1, r2);
    r0 = r4 + 28u;
    r0 = Fn_543ecc_1(r0);
    r0 = r0 - 12u;
    r0 = Fn_543028_1(r0);
    r0 = r0 - 16u;
    r0 = WeakCall1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_005455d8
void W_5455d8() {

}

// FUN_00545a4c
void W_545a4c(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 16u;
    if (fa == fb) *(u8*)(r0 + 180) = r2;
    if (fa == fb) goto L_545a64;
    r3 = *(u32*)(r0);
    r3 = *(u32*)(r3 + 32);
    { ((u32(*)(u32, u32, u32))r3)(r0, r1, r2); return; }
    L_545a64:;
    return;
}

// FUN_00545c68
void W_545c68() {

}

// FUN_00545c6c
u32 W_545c6c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r2 = r1;
    r1 = 0u;
    r3 = *(u32*)(r3 + 64);
    return ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
}

// FUN_00545e7c
void W_545e7c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0);
    r6 = r1;
    r2 = *(u32*)(r0 + 56);
    r0 = r5;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u8*)(r5 + 183);
    r0 = r0 & 1u;
    if (r0 != 0) r0 = 1u;
    r0 = r6 & ~r0;
    fx = r0 & 1u;
    if (fx != 0) goto L_545ee4;
    r4 = *(u32*)(r5 + 20);
    r0 = r5 + 20u;
    fa = r4; fb = r0;
    if (fa == fb) goto L_545ee4;
    L_545ec0:;
    r1 = *(u32*)(r4 - 4);
    r0 = r4 - 4u;
    r2 = *(u32*)(r1 + 52);
    r1 = r6;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r4 = *(u32*)(r4);
    r0 = r5 + 20u;
    fa = r4; fb = r0;
    if (fa != fb) goto L_545ec0;
    L_545ee4:;
    return;
}

// FUN_00545f6c
void W_545f6c() {

}

// FUN_0054619c
u32 W_54619c(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005461ac
void W_5461ac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_005481c4
u32 W_5481c4(u32 a0) {
    u32 t1 = Fn_569e64_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00548570
void W_548570(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = *(u32*)(r0 + 1656);
    r0 = Fn_569cb4_1(r0);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_00548588
void W_548588(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r0_1, r0_2, r2_1, r2_2;
    r0_2 = *(u32*)(((u32)g_008ab268) + 4);
    { ((u32(*)(u32, u32))(*(u32*)((*(u32*)(r0_2)) + 12)))(r0_2, r0); return; }
}

// FUN_0054891c
void W_54891c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0);
    r2 = *(u32*)(r1 + 32);
    r1 = 0u;
    { ((u32(*)(u32, u32))r2)(r0, r1); return; }
}

// FUN_00548d80
u32 W_548d80(u32 a0) {
    u32 t1 = Fn_548d90_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00549690
void W_549690(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 328) = r2;
    return;
}

// FUN_00549778
void W_549778(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 & ~3u;
    r0 = r0 + 328u;
    r1 = r1 & 3u;
    r0 = r0 + r3;
    *(u8*)(r0 + r1) = r2;
    return;
}

// FUN_0054a0ac
void W_54a0ac(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 320) = r2;
    return;
}

// FUN_0054a0bc
void W_54a0bc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 & ~3u;
    r0 = r0 + 320u;
    r1 = r1 & 3u;
    r0 = r0 + r3;
    *(u8*)(r0 + r1) = r2;
    return;
}

// FUN_0054a6a0
void W_54a6a0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 >> 1;
    r2 = *(u32*)(r2);
    r0 = r0 + (r1 << 2);
    *(u32*)(r0 + 216) = r2;
    return;
}

// FUN_0054aa34
void W_54aa34(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r1 >> 3;
    r1 = r1 & 3u;
    r0 = r0 + (r3 << 2);
    r0 = r0 + r1;
    *(u8*)(r0 + 216) = r2;
    return;
}

// FUN_0054b2f8
void W_54b2f8() {

}

// FUN_0054b314
u32 W_54b314(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0054c324
u32 W_54c324(u32 a0) {
    u32 t1 = Fn_5461b0_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_0054c5d8
u32 W_54c5d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 52);
    r0 = *(u32*)(r0 + 44);
    r0 = r0 << 30;
    r0 = r1 + (r0 >> 25);
    return r0;
}

// FUN_0054d9f0
void W_54d9f0(char* a) { Fn_54ea00(a + 4); }

// FUN_0054da08
void W_54da08(char* a) { Fn_54e8f4(a + 4); }

// FUN_0054da10
void W_54da10(char* a) { Fn_54e934(a + 4); }

// FUN_0054dad0
void W_54dad0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r2;
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 24);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r4 ^ 1u;
    if (fa != fb) *(u8*)(r0 + 14) = r1;
    return;
}

// FUN_0054daf4
void W_54daf4(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r2;
    r2 = *(u32*)(r0);
    r2 = *(u32*)(r2 + 28);
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r4 ^ 1u;
    if (fa != fb) *(u8*)(r0 + 14) = r1;
    return;
}

// FUN_0054e294
void W_54e294(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca0c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 12);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54e2c8;
    r0 = Fn_548334_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_54e2c8:;
    r0 = r4;
    { Fn_2024b0_1(r0); return; }
}

// FUN_0054e2d8
u32 W_54e2d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca0c;
    r4 = r0;
    *(u32*)(r0) = r1;
    r2 = *(u32*)(r1 + 12);
    r1 = 0u;
    r0 = ((u32(*)(u32, u32))r2)(r0, r1);
    r0 = *(u32*)(r4 + 52);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_54e30c;
    r0 = Fn_548334_1(r0);
    r0 = 0u;
    *(u32*)(r4 + 52) = r0;
    L_54e30c:;
    r0 = r4;
    return r0;
}

// FUN_0054e3b8
void W_54e3b8(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 4);
    if (t1 != 0) {
        u32 t2 = Fn_548334_1(t1);
        *(u32*)((u32)(a0) + 4) = 0;
        *(u8*)((u32)(a0)) = 0;
        *(u8*)((u32)(a0) + 1) = 0;
    }
}

// FUN_0054e7f8
u32 W_54e7f8(u32 a0, u32 a1, u32 a2) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
    *(u32*)((u32)(a0) + 8) = 0;
    *(u32*)((u32)(a0) + 12) = 0;
    *(u16*)((u32)(a0) + 18) = 0;
    *(u16*)((u32)(a0) + 16) = 0;
    *(u8*)((u32)(a0) + 38) = 0;
    u32 t1 = Fn_1fddd8_3((a0 + 20), 18, a2);
    u32 t2 = Fn_54e638_3(a0, a1, a2);
    return a0;
}

// FUN_0054e868
void W_54e868(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0, f1, f2, f3, ffa, ffb;
    r0 = *(u32*)(r0 + 128);
    f2 = *(float*)(r1 + 0);
    f3 = *(float*)(r1 + 4);
    r0 = *(u32*)(r0 + 436);
    f0 = *(float*)(r2 + 0);
    f1 = *(float*)(r2 + 4);
    r0 = Fn_6659b0_3f4(r0, r1, r2, f0, f1, f2, f3);
    r2 = 5123u;
    r3 = 0u;
    r1 = 6u;
    r0 = 4u;
    { Fn_6617b0_4(r0, r1, r2, r3); return; }
}

// FUN_0054e89c
u32 W_54e89c() {
    u32 t1 = Fn_6612ec_1(0);
    u32 t2 = Fn_6612ec_1(1);
    u32 t3 = Fn_6612ec_1(2);
    u32 t4 = Fn_6612ec_1(3);
    u32 t5 = Fn_6612ec_1(4);
    u32 t6 = Fn_65f090_2(34962u, 0);
    return Fn_65f090_2(34963u, 0);
}

// FUN_0054ec04
void W_54ec04(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_007ebc5c;
    r2 = *(u32*)(r0 + (r1 << 2));
    r0 = 3553u;
    r1 = 10240u;
    { Fn_665644_3(r0, r1, r2); return; }
}

// FUN_0054ec20
void W_54ec20(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_007ebc5c;
    r2 = *(u32*)(r0 + (r1 << 2));
    r1 = 10241u;
    r0 = 3553u;
    { Fn_665644_3(r0, r1, r2); return; }
}

// FUN_0054edb0
void W_54edb0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + (r1 << 2);
    r1 = r2;
    r0 = *(u32*)(r0 + 464);
    { Fn_665970_3(r0, r1, r2); return; }
}

// FUN_0054f900
void W_54f900(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    { WeakCall1(r0); return; }
}

// FUN_0054f9d8
void W_54f9d8(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 12u;
    r1 = r1 + 244u;
    r0 = Fn_5421f4_2(r0, r1);
    r1 = r4;
    r0 = r5;
    { WeakCall2(r0, r1); return; }
}

// FUN_00550664
void W_550664(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ca60;
    r4 = r0;
    r2 = r1 + 36u;
    *(u32*)(r0) = r1;
    *(u32*)(r0 + 88) = r2;
    r0 = Fn_5504e0_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_54f870_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0055093c
void W_55093c(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
    *(u8*)((u32)(a0) + 12) = 47;
    *(u8*)((u32)(a0) + 13) = 0;
}

// FUN_00550988
u32 W_550988(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ca98;
    return Fn_2024b0_2(a0, (u32)g_0082ca98);
}

// FUN_00550998
void W_550998(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082ca98;
}

// FUN_00550cac
void W_550cac() {

}

// FUN_00550efc
void W_550efc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082cad4;
    r2 = r1 + 32u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    { Fn_2024b0_3(r0, r1, r2); return; }
}

// FUN_00550f10
void W_550f10(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082cad4;
    r2 = r1 + 32u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_00551474
u32 W_551474(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0 + 536);
    fa = r3; fb = 0u;
    if (fa == fb) r0 = 0u;
    if (fa == fb) goto L_551494;
    r0 = 4u;
    r1 = r0 + (r1 << 2);
    r0 = *(u32*)(r3 + r1);
    *(u32*)(r3 + r1) = r2;
    L_551494:;
    return r0;
}

// FUN_00551b24
void W_551b24(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8192u;
    r0 = r0 + 2512u;
    r0 = *(u32*)(r0);
    { WeakCall1(r0); return; }
}

// FUN_00551c78
void W_551c78(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r2; fb = 0u;
    if (fa == fb) goto L_551ca0;
    fa = r2; fb = 1u;
    if (fa == fb) r2 = *(u32*)(r0 + 28);
    if (fa == fb) r1 = r1 + r2;
    if (fa == fb) goto L_551ca0;
    fa = r2; fb = 2u;
    if (fa == fb) r2 = *(u32*)(r0 + 24);
    if (fa == fb) r1 = r2 - r1;
    if (fa != fb) goto L_551ca4;
    L_551ca0:;
    *(u32*)(r0 + 28) = r1;
    L_551ca4:;
    return;
}

// FUN_00551ca8
void W_551ca8(u32 a0) {
    *(u32*)((u32)(a0) + 20) = 0;
    *(u32*)((u32)(a0) + 24) = 0;
    *(u32*)((u32)(a0) + 28) = 0;
}

// FUN_00551d0c
u32 W_551d0c(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbc8;
    u32 t1 = Fn_550998_2(a0, (u32)g_0082cbc8);
    return Fn_2024b0_1(t1);
}

// FUN_00551d28
u32 W_551d28(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbc8;
    return Fn_550998_2(a0, (u32)g_0082cbc8);
}

// FUN_005542b8
u32 W_5542b8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbfc;
    return Fn_2024b0_2(a0, (u32)g_0082cbfc);
}

// FUN_005542c8
void W_5542c8(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cbfc;
}

// FUN_005542d8
void W_5542d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 616);
    { WeakCall1(r0); return; }
}

// FUN_005543e8
void W_5543e8() {

}

// FUN_005554f8
void W_5554f8(u32 a0, u32 a1, u32 a2) {
    *(u32*)((u32)(a0) + 80) = a2;
    *(u8*)((u32)(a0) + 156) = a1;
}

// FUN_005557b8
void W_5557b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = *(u32*)(r0 + 112);
    r2 = *(u32*)(r0 + 108);
    fa = r1; fb = r2;
    if ((int)fa < (int)fb) r1 = r1 + 1u;
    if ((int)fa < (int)fb) *(u32*)(r0 + 112) = r1;
    r1 = *(u32*)(r0 + 176);
    r2 = *(u32*)(r0 + 172);
    fa = r1; fb = r2;
    if ((int)fa < (int)fb) r1 = r1 + 1u;
    if ((int)fa < (int)fb) *(u32*)(r0 + 176) = r1;
    return;
}

// FUN_005557e4
void W_5557e4(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_005557f0
void W_5557f0(u32 a0) {
    *(u32*)((u32)(a0) + 20) = 0;
}

// FUN_005557fc
void W_5557fc(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, f1, ffa, ffb;
    f1 = 0.0f;
    ffa = f0; ffb = f1;
    if (ffa < ffb) f0 = f1;
    *(float*)(r0 + 180) = f0;
    return;
}

// FUN_00555888
void W_555888(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = r0;
    r0 = *(u32*)(r0);
    r2 = r1;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5558ac;
    r1 = *(u32*)(r0);
    r12 = *(u32*)(r1 + 12);
    r1 = *(u32*)(r3 + 12);
    { ((u32(*)(u32, u32, u32, u32))r12)(r0, r1, r2, r3); return; }
    L_5558ac:;
    return;
}

// FUN_005558b0
void W_5558b0() {

}

// FUN_005558b4
u32 W_5558b4(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0) + 12);
    return Fn_54f908_1(t1);
}

// FUN_005558bc
u32 W_5558bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 8);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_005558cc
void W_5558cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r1;
    r5 = r0;
    r1 = r1 + 252u;
    r0 = Fn_5421f4_2(r0, r1);
    r1 = r5;
    r0 = r4;
    { WeakCall2(r0, r1); return; }
}

// FUN_005558f0
void W_5558f0(u32 a0) {
    *(u32*)((u32)(a0) + 24) = 0;
}

// FUN_005558fc
u32 W_5558fc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 12);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00556244
void W_556244() {

}

// FUN_00556438
void W_556438(u32 a0, float p0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1;
    float f0 = p0, f1, f1_1, f0_1, ffa, ffb;
    f1_1 = 10.0f;
    r1_1 = 0u;
    *(u8*)(r0) = r1_1;
    f0_1 = f0 * f1_1;
    *(float*)(r0 + 4) = f0_1;
    return;
}

// FUN_00556564
void W_556564(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r1 + 1u;
    r1 = r1 * r1;
    r2 = (u32)((int)r1 >> 31);
    r1 = r1 + (r2 >> 30);
    r1 = r1 << 14;
    r1 = r1 >> 16;
    *(u16*)(r0 + 20) = r1;
    return;
}

// FUN_005565fc
void W_5565fc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_007ffc84;
    r1 = *(u32*)(r2 + (r1 << 2));
    *(u32*)(r0 + 16) = r1;
    return;
}

// FUN_00556870
void W_556870(u32 a0) {
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_00556fa0
u32 W_556fa0(u32 a0) {

    return (a0 + 260);
}

// FUN_00556fa8
u32 W_556fa8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 8192u;
    r0 = r0 + 2512u;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_005571f4
u32 W_5571f4(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cca4;
    u32 t1 = Fn_560360_2(((a0 + 7168) + 412), (u32)g_0082cca4);
    u32 t2 = Fn_56469c_1(((t1 - 7168) - 152));
    return Fn_2024b0_1((t2 - 260));
}

// FUN_00557228
u32 W_557228(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cca4;
    u32 t1 = Fn_560360_2(((a0 + 7168) + 412), (u32)g_0082cca4);
    u32 t2 = Fn_56469c_1(((t1 - 7168) - 152));
    return (t2 - 260);
}

// FUN_005572b0
u32 W_5572b0(u32 a0, u32 a1) {
    u32 t1 = Fn_5572d4_2(a0, a1);
    if (t1 == 0) {
        return Fn_01b274_1((a1 + 12));
    }
}

// FUN_00557e6c
u32 W_557e6c(u32 a0) {
    u32 t1 = Fn_557e3c_1(a0);
    return a0;
}

// FUN_00558cb0
u32 W_558cb0(u32 a0) {

    return (a0 + 260);
}

// FUN_00558cb8
u32 W_558cb8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 616);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00559158
void W_559158(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082cd54;
    *(u32*)(r0) = r1; r0 = r0 + 728u;
    r0 = Fn_55c284_2(r0, r1);
    r0 = r0 - 92u;
    r0 = Fn_55c998_1(r0);
    r0 = r0 - 376u;
    r0 = Fn_5656dc_1(r0);
    r0 = r0 - 260u;
    { Fn_2024b0_1(r0); return; }
}

// FUN_00559188
u32 W_559188(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082cd54;
    *(u32*)(r0) = r1; r0 = r0 + 728u;
    r0 = Fn_55c284_2(r0, r1);
    r0 = r0 - 92u;
    r0 = Fn_55c998_1(r0);
    r0 = r0 - 376u;
    r0 = Fn_5656dc_1(r0);
    r0 = r0 - 260u;
    return r0;
}

// FUN_00559208
void W_559208(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 8);
    if (t1 != 0) {
        *(u32*)((u32)(a0)) = 0;
        *(u32*)((u32)(a0) + 4) = 0;
        *(u8*)((u32)(a0) + 8) = 0;
    }
}

// FUN_005592a0
u32 W_5592a0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r0; fb = 0u;
    if (fa != fb) { fa = r0; fb = 1u; }
    if (fa != fb) r0 = 3u;
    if (fa == fb) goto L_5592b0;
    L_5592b0:;
    return r0;
}

// FUN_0055935c
void W_55935c() {

}

// FUN_00559360
void W_559360() {

}

// FUN_005595cc
void W_5595cc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 20);
    r1 = *(u32*)(r0);
    r1 = *(u32*)(r1 + 56);
    { ((u32(*)(u32))r1)(r0); return; }
}

// FUN_0055961c
void W_55961c() {

}

// FUN_00559b60
void W_559b60() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0055b7a4
void W_55b7a4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082ce4c;
    r1 = 0u;
    *(u32*)(r0 + 4) = r1;
    *(u32*)(r0) = r2;
    { Fn_2024b0_3(r0, r1, r2); return; }
}

// FUN_0055b7bc
void W_55b7bc(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = (u32)g_0082ce4c;
    r2 = 0u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    return;
}

// FUN_0055b7d0
void W_55b7d0() {

}

// FUN_0055b7d4
void W_55b7d4() {

}

// FUN_0055ba30
u32 W_55ba30(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = r0 + 4u; r4 = *(u32*)(r0);
    fa = r4; fb = r0;
    if (fa == fb) goto L_55ba64;
    L_55ba44:;
    r0 = r4;
    r4 = *(u32*)(r4);
    r0 = r0 - 252u;
    r1 = r5;
    r0 = Fn_5558f0_2(r0, r1);
    r0 = r5 + 4u;
    fa = r4; fb = r0;
    if (fa != fb) goto L_55ba44;
    L_55ba64:;
    r0 = r5;
    return r0;
}

// FUN_0055bca4
u32 W_55bca4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb6f8;
    r0 = *(u32*)(r0);
    fx = r0 & 1u;
    if (fx != 0) goto L_55bce4;
    r0 = (u32)g_008bb6f8;
    r0 = Fn_203d64_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55bce4;
    r0 = (u32)g_009dfad8;
    r0 = Fn_55c0c4_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_00784f34;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008bb6f8;
    r0 = WeakCall1(r0);
    L_55bce4:;
    r0 = (u32)g_009dfad8;
    return r0;
}

// FUN_0055bd58
u32 W_55bd58(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 368);
    fa = r2; fb = 0u;
    if (fa == fb) *(u32*)(r0 + 364) = r1;
    if (fa != fb) *(u32*)(r2) = r1;
    r2 = 0u;
    *(u32*)(r0 + 368) = r1;
    *(u32*)(r1) = r2;
    r0 = *(u32*)(r0 + 372);
    return r0;
}

// FUN_0055c048
u32 W_55c048() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb6f8;
    r0 = *(u32*)(r0 + 4);
    fx = r0 & 1u;
    if (fx != 0) goto L_55c088;
    r0 = (u32)g_008bb6fc;
    r0 = Fn_203d64_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55c088;
    r0 = (u32)g_009dfc68;
    r0 = Fn_55c0c4_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_00784f34;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008bb6fc;
    r0 = WeakCall1(r0);
    L_55c088:;
    r0 = (u32)g_009dfc68;
    return r0;
}

// FUN_0055c150
u32 W_55c150(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = 0u;
    L_55c154:;
    r12 = r0 + (r3 << 3);
    r12 = *(u32*)(r12 + 536);
    fa = r12; fb = r1;
    if (fa != fb) goto L_55c174;
    r1 = r0 + (r3 << 3);
    r0 = *(u32*)(r1 + 540);
    *(u32*)(r1 + 540) = r2;
    return r0;
    L_55c174:;
    r3 = r3 + 1u;
    fa = r3; fb = 9u;
    if ((int)fa < (int)fb) goto L_55c154;
    r3 = 0u;
    L_55c184:;
    r12 = r0 + (r3 << 3);
    r12 = *(u32*)(r12 + 536);
    fa = r12; fb = 0u - 1u;
    if (fa == fb) goto L_55c1a8;
    r3 = r3 + 1u;
    fa = r3; fb = 9u;
    if ((int)fa < (int)fb) goto L_55c184;
    r0 = 0u;
    return r0;
    L_55c1a8:;
    r0 = r0 + (r3 << 3);
    r0 = r0 + 536u;
    *(u32*)(r0 + 0) = r1; *(u32*)(r0 + 4) = r2;
    r0 = 0u;
    return r0;
}

// FUN_0055c1bc
u32 W_55c1bc(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 609);
    if (t1 == 0) {
        *(u8*)((u32)(a0) + 608) = 0;
        *(u8*)((u32)(a0) + 609) = 1;
        return Fn_559fdc_3((a0 + 12), 0, 0);
    }
}

// FUN_0055c538
void W_55c538(u32 a0) {
    *(u32*)((u32)(a0)) = 0;
    *(u32*)((u32)(a0) + 4) = 0;
}

// FUN_0055c5f0
u32 W_55c5f0(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u8*)(r0 + 12);
    fa = r3; fb = 0u;
    if (fa != fb) r3 = *(u32*)(r0 + 8);
    if (fa != fb) { fa = r3; fb = 0u; }
    if (fa == fb) goto L_55c61c;
    r0 = *(u32*)(r0 + 4);
    r0 = *(u32*)(r0);
    fa = r0; fb = r1;
    if (fa > fb) r0 = *(u32*)(r3 + (r1 << 2));
    if (fa > fb) *(u32*)(r3 + (r1 << 2)) = r2;
    if (fa > fb) goto L_55c620;
    L_55c61c:;
    r0 = 0u;
    L_55c620:;
    return r0;
}

// FUN_0055c674
void W_55c674(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 12);
    if (t1 != 0) {
        *(u32*)((u32)(a0)) = 0;
        *(u32*)((u32)(a0) + 4) = 0;
        *(u32*)((u32)(a0) + 8) = 0;
        *(u8*)((u32)(a0) + 12) = 0;
    }
}

// FUN_0055c7e8
void W_55c7e8(u32 a0) {
    *(u32*)((u32)(a0) + 56) = 0;
    *(u32*)((u32)(a0) + 60) = 0;
    *(u32*)((u32)(a0) + 64) = 0;
}

// FUN_0055c984
u32 W_55c984(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cecc;
    return Fn_2024b0_2(a0, (u32)g_0082cecc);
}

// FUN_0055c994
void W_55c994() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_0055c998
void W_55c998(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cecc;
}

// FUN_0055d328
void W_55d328(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    *(u32*)(r0 + 64) = r1;
    r0 = Fn_562bd4_2(r0, r1);
    r1 = r5;
    r0 = Fn_562d30_2(r0, r1);
    r0 = *(u32*)(r5 + 64);
    fa = r0; fb = 1u;
    if (fa != fb) goto L_55d37c;
    r0 = *(u32*)(r5 + 8);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55d37c;
    L_55d35c:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) r0 = Fn_5145f0_2(r0, r1);
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55d35c;
    L_55d37c:;
    return;
}

// FUN_0055d6fc
void W_55d6fc(u32 a0, u32 a1, u32 a2) {
    u32 r0 = a0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + (r1 << 2));
    r1 = r2;
    { Fn_517168_3(r0, r1, r2); return; }
}

// FUN_0055d708
void W_55d708(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 8);
    r6 = r1;
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55d744;
    L_55d724:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r1 = r6;
    if (fa != fb) r0 = Fn_517650_2(r0, r1);
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55d724;
    L_55d744:;
    *(u8*)(r5 + 35) = r6;
    return;
}

// FUN_0055d854
void W_55d854(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 8);
    r6 = r1;
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55d8b4;
    L_55d870:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55d8a4;
    fa = r6; fb = 0u;
    r1 = 0u;
    if (fa == fb) goto L_55d89c;
    fa = r6; fb = 1u;
    if (fa == fb) r1 = 1u;
    if (fa == fb) goto L_55d89c;
    fa = r6; fb = 2u;
    if (fa == fb) r1 = 2u;
    L_55d89c:;
    r0 = Fn_51766c_2(r0, r1);
    L_55d8a4:;
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55d870;
    L_55d8b4:;
    return;
}

// FUN_0055d8b8
void W_55d8b8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u32*)(r0 + 64);
    fa = r0; fb = 1u;
    if (fa == fb) goto L_55d8fc;
    r0 = *(u32*)(r5 + 8);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55d8fc;
    L_55d8dc:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r1 = *(u32*)(r5 + 64);
    if (fa != fb) r0 = Fn_5145f0_2(r0, r1);
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55d8dc;
    L_55d8fc:;
    return;
}

// FUN_0055d940
void W_55d940(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = 0u;
    *(u32*)(r1) = r5;
    *(u8*)(r1 + 23) = r5;
    *(u8*)(r1 + 21) = r5;
    r4 = r1;
    *(u32*)(r1 + 8) = r5;
    r0 = Fn_562bd4_0();
    r1 = r4;
    r0 = Fn_562f00_2(r0, r1);
    r3 = *(u32*)(r4 + 12);
    *(u8*)(r4 + 20) = r5;
    fa = r3; fb = 0u;
    if (fa == fb) goto L_55d98c;
    r2 = *(u32*)(r4 + 16);
    r0 = r4;
    r1 = 3u;
    { ((u32(*)(u32, u32, u32))r3)(r0, r1, r2); return; }
    L_55d98c:;
    return;
}

// FUN_0055dcc4
u32 W_55dcc4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u8*)(r0 + 20);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55dd28;
    r0 = *(u32*)(r5 + 8);
    r6 = 0u;
    r4 = r6;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55dd10;
    L_55dcec:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55dd00;
    r0 = Fn_516a88_1(r0);
    *(u32*)(r5 + (r4 << 2)) = r6;
    L_55dd00:;
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55dcec;
    L_55dd10:;
    *(u32*)(r5 + 8) = r6;
    r0 = Fn_562bd4_1(r0);
    r1 = r5;
    r0 = Fn_562f00_2(r0, r1);
    *(u8*)(r5 + 20) = r6;
    L_55dd28:;
    return r0;
}

// FUN_0055dd2c
void W_55dd2c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = *(u8*)(r0 + 22);
    r6 = 0u;
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55dd78;
    r0 = *(u32*)(r5 + 8);
    r4 = 0u;
    fa = r0; fb = 0u;
    if ((int)fa <= (int)fb) goto L_55dd74;
    L_55dd54:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r1 = 1u;
    if (fa != fb) r0 = Fn_517774_2(r0, r1);
    r0 = *(u32*)(r5 + 8);
    r4 = r4 + 1u;
    fa = r0; fb = r4;
    if ((int)fa > (int)fb) goto L_55dd54;
    L_55dd74:;
    *(u8*)(r5 + 22) = r6;
    L_55dd78:;
    *(u8*)(r5 + 24) = r6;
    *(u8*)(r5 + 23) = r6;
    *(u8*)(r5 + 21) = r6;
    return;
}

// FUN_0055e338
u32 W_55e338() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008bb50c;
    r0 = *(u32*)(r0);
    fx = r0 & 1u;
    if (fx != 0) goto L_55e378;
    r0 = (u32)g_008bb50c;
    r0 = Fn_203d64_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_55e378;
    r0 = (u32)g_009b9aa8;
    r0 = Fn_55eab8_1(r0);
    r2 = (u32)g_00100000;
    r1 = (u32)g_0065eb58;
    r0 = WeakCall3(r0, r1, r2);
    r0 = (u32)g_008bb50c;
    r0 = WeakCall1(r0);
    L_55e378:;
    r0 = (u32)g_009b9aa8;
    return r0;
}

// FUN_0055e570
void W_55e570() {

}

// FUN_0055ea18
void W_55ea18(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 + 476u;
    r1 = r1 + 4u;
    { Fn_5421f4_2(r0, r1); return; }
}

// FUN_0055f5e8
u32 W_55f5e8(u32 a0) {
    u32 t1 = Fn_557434_1(a0);
    return Fn_557590_2(t1, a0);
}

// FUN_00560598
void W_560598(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = *(u32*)(r0 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5605c0;
    L_5605ac:;
    r0 = r4;
    r0 = Fn_565968_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_5605ac;
    L_5605c0:;
    r0 = 0u;
    *(u32*)(r5 + 304) = r0;
    return;
}

// FUN_00560660
void W_560660(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r1;
    r4 = r0;
    r0 = Fn_5606b4_2(r0, r1);
    r4 = *(u32*)(r4 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5606b0;
    L_56067c:;
    r0 = *(u8*)(r4 + 305);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_5606a4;
    fa = r5; fb = 0u;
    if ((int)fa < (int)fb) goto L_56069c;
    r1 = r5 & 255u;
    r0 = r4 + 144u;
    r0 = Fn_5563ac_2(r0, r1);
    L_56069c:;
    r0 = r4;
    r0 = Fn_5661a8_1(r0);
    L_5606a4:;
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_56067c;
    L_5606b0:;
    return;
}

// FUN_00560b60
void W_560b60(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r0 = Fn_5606b4_1(r0);
    r4 = *(u32*)(r5 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_560b94;
    L_560b78:;
    r0 = *(u8*)(r4 + 305);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = r4;
    if (fa != fb) r0 = Fn_5661a8_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_560b78;
    L_560b94:;
    r4 = *(u32*)(r5 + 304);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_560bb4;
    L_560ba0:;
    r0 = r4;
    r0 = Fn_565968_1(r0);
    r4 = *(u32*)(r4 + 420);
    fa = r4; fb = 0u;
    if (fa != fb) goto L_560ba0;
    L_560bb4:;
    r0 = 0u;
    *(u32*)(r5 + 304) = r0;
    *(u8*)(r5 + 5) = r0;
    return;
}

// FUN_00561254
void W_561254() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_005613f8
void W_5613f8(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 0u;
    r4 = r2;
    r5 = 2u;
    if (fa == fb) goto L_561424;
    fa = r1; fb = 1u;
    if (fa == fb) goto L_561438;
    fa = r1; fb = 2u;
    if (fa != fb) { fa = r1; fb = 3u; }
    if (fa == fb) r5 = 1u;
    goto L_561440;
    L_561424:;
    r0 = Fn_55dcc4_0();
    goto L_561440;
    L_561438:;
    r5 = 3u;
    r0 = Fn_55dcc4_1(r0);
    L_561440:;
    r3 = *(u32*)(r4 + 408);
    fa = r3; fb = 0u;
    if (fa == fb) goto L_56145c;
    r2 = *(u32*)(r4 + 412);
    r1 = r5;
    r0 = r4;
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    L_56145c:;
    r0 = 0u;
    *(u32*)(r4 + 416) = r0;
    *(u8*)(r4 + 304) = r0;
    *(u8*)(r4 + 305) = r0;
    *(u8*)(r4 + 306) = r0;
    r0 = Fn_561354_1(r0);
    r1 = r4;
    { WeakCall2(r0, r1); return; }
}

// FUN_00561480
void W_561480(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 4u;
    r1 = r1 + 424u;
    r0 = Fn_5421f4_2(r0, r1);
    fa = r4; fb = 0u;
    if (fa == fb) goto L_5614b8;
    r0 = r4;
    r0 = Fn_56651c_1(r0);
    r1 = r4;
    r0 = r5;
    { Fn_5667c4_2(r0, r1); return; }
    L_5614b8:;
    return;
}

// FUN_00562480
void W_562480(u32 a0, u32 a1, u32 a2) {
    u32 r0, r1 = a1, r2 = a2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    fa = r1; fb = 2u;
    r4 = r2;
    if (fa == fb) r0 = Fn_565968_0();
    r0 = 0u;
    *(u32*)(r4 + 156) = r0;
    return;
}

// FUN_00562540
void W_562540(u32 a0) {
    u32 t1 = *(u8*)((u32)(a0) + 13);
    if (t1 != 0) {
        u32 t2 = Fn_55e338_1(t1);
        u32 t3 = Fn_55ea18_2(t2, (a0 + 80));
        *(u8*)((u32)(a0) + 13) = 0;
    }
}

// FUN_005625a8
void W_5625a8(u32 a0) {
    u32 t1 = Fn_55e338_1(a0);
    u32 t2 = Fn_55ea04_2(t1, (a0 + 80));
    *(u8*)((u32)(a0) + 13) = 1;
}

// FUN_005628e0
u32 W_5628e0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cf90;
    return Fn_2024b0_2(a0, (u32)g_0082cf90);
}

// FUN_005628f0
void W_5628f0(u32 a0) {
    *(u32*)((u32)(a0)) = (u32)g_0082cf90;
}

// FUN_00562900
void W_562900(u32 a0) {
    u32 t1 = Fn_561138_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082cfb4;
}

// FUN_00562d30
void W_562d30(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r5 = r0;
    r4 = r1;
    r0 = r0 + 4u;
    r1 = r1 + 88u;
    r0 = Fn_5421f4_2(r0, r1);
    r0 = r5 + 16u;
    r1 = r5 + 20u;
    r2 = r4 + 88u;
    r0 = Fn_542230_3(r0, r1, r2);
    r1 = r4;
    r0 = r5;
    r0 = Fn_562c3c_2(r0, r1);
    r4 = r4 + 88u;
    r5 = r5 + 8u;
    fa = r4; fb = r5;
    if (fa != fb) r6 = 32767u;
    if (fa == fb) goto L_562d9c;
    L_562d78:;
    r0 = *(u32*)(r4 - 24);
    fa = r0; fb = 1u;
    if ((int)fa <= (int)fb) goto L_562d9c;
    fa = r0; fb = r6;
    if (fa != fb) r0 = r4 - 88u;
    if (fa != fb) r0 = Fn_55d8b8_1(r0);
    r4 = *(u32*)(r4);
    fa = r4; fb = r5;
    if (fa != fb) goto L_562d78;
    L_562d9c:;
    return;
}

// FUN_00563640
void W_563640() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_005642ec
void W_5642ec() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00564684
u32 W_564684(u32 a0) {
    u32 t1 = Fn_56469c_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_00564694
void W_564694(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 68u;
    { WeakCall1(r0); return; }
}

// FUN_00564aac
void W_564aac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00564c14
void W_564c14() {

}

// FUN_005651ec
void W_5651ec(u32 a0) {
    u32 t1 = Fn_55e338_1(a0);
    u32 t2 = Fn_55ea04_2(t1, (a0 + 80));
    *(u8*)((u32)(a0) + 13) = 1;
}

// FUN_005656c4
u32 W_5656c4(u32 a0) {
    u32 t1 = Fn_5656dc_1(a0);
    return Fn_2024b0_1(t1);
}

// FUN_005656d4
void W_5656d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = r0 - 68u;
    { WeakCall1(r0); return; }
}

// FUN_005657cc
void W_5657cc(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = r1;
    r1 = r0 + 4u;
    r2 = r2 + 4u;
    { Fn_542230_3(r0, r1, r2); return; }
}

// FUN_005657dc
u32 W_5657dc(u32 a0, u32 a1) {
    return Fn_5421f4_2(a0, (a1 + 4));
}

// FUN_005658f4
void W_5658f4(u32 a0, u32 a1) {
    u32 t1 = Fn_5667d4_2((a0 + 8), a1);
    if (t1 != 0) {
        u32 t2 = Fn_562900_1(t1);
        if (t2 != 0) {
            *(u32*)((u32)(t2) + 300) = a1;
            u32 t3 = *(u32*)((u32)(a0) + 4);
            *(u32*)((u32)(t2) + 308) = t3;
        }
    }
}

// FUN_00565968
void W_565968(u32 a0) {
    if (a0 != 0) {
        *(u32*)((u32)(a0) + 408) = 0;
        *(u32*)((u32)(a0) + 412) = 0;
    }
}

// FUN_00565a40
void W_565a40(u32 a0, u32 a1, float p0) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    float f0 = p0, ffa, ffb;
    *(float*)(r0 + 332) = f0;
    *(u8*)(r0 + 310) = r1;
    return;
}

// FUN_0056651c
u32 W_56651c(u32 a0) {
    u32 t1 = Fn_565778_1(a0);
    u32 t2 = Fn_5657dc_2(t1, (a0 + 128));
    return a0;
}

// FUN_005667c4
void W_5667c4(u32 a0, u32 a1) {
    u32 t1 = *(u32*)((u32)(a0));
    *(u32*)((u32)(a1)) = t1;
    *(u32*)((u32)(a0)) = a1;
}

// FUN_005667d4
u32 W_5667d4(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0;
    r0 = *(u32*)(r0);
    fa = r0; fb = 0u;
    if (fa != fb) r2 = *(u32*)(r0);
    if (fa != fb) *(u32*)(r1) = r2;
    return r0;
}

// FUN_005667ec
void W_5667ec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = r0;
    r0 = Fn_56689c_1(r0);
    r0 = *(u32*)(r4);
    r1 = 3u;
    r0 = Fn_541ee0_2(r0, r1);
    r0 = r4;
    { WeakCall1(r0); return; }
}

// FUN_00566b28
void W_566b28(u32 a0) {
    u32 t1 = *(u32*)((u32)(a0));
    if (t1 != 0) {
        u32 t2 = Fn_56689c_1(a0);
        u32 t3 = *(u32*)((u32)(a0));
        u32 t4 = Fn_541ee0_2(t3, 3);
        u32 t5 = *(u32*)((u32)(a0));
        u32 t6 = Fn_5425a0_1(t5);
        *(u32*)((u32)(a0)) = 0;
    }
}

// FUN_0056709c
void W_56709c() {

}

// FUN_005670a0
u32 W_5670a0(u32 a0) {

    return (a0 + 260);
}

// FUN_005670a8
u32 W_5670a8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = *(u32*)(r0 + 420);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 1u;
    return r0;
}

// FUN_00567cec
void W_567cec(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = *(u32*)(r0 + 24);
    r1 = *(u8*)(r0 + 32);
    *(u32*)(r0 + 12) = r2;
    fa = r1; fb = 1u;
    if (fa == fb) r2 = 1u;
    if (fa != fb) r2 = 0u;
    fa = r1; fb = 2u;
    r2 = r0 + (r2 << 2);
    r2 = *(u32*)(r2 + 24);
    *(u32*)(r0 + 8) = r2;
    if (fa == fb) r2 = 1u;
    if (fa != fb) r2 = 0u;
    fa = r1; fb = 0u;
    r2 = r0 + (r2 << 2);
    r1 = *(u32*)(r2 + 24);
    *(u32*)(r0 + 16) = r1;
    if (fa != fb) r1 = 1u;
    if (fa == fb) r1 = 0u;
    r1 = r0 + (r1 << 2);
    r1 = *(u32*)(r1 + 24);
    *(u32*)(r0 + 20) = r1;
    return;
}

// FUN_00567d44
u32 W_567d44(u32 a0) {
    if (a0 != 0) {
        return Fn_56a124_1(a0);
    }
}

// FUN_00567d54
u32 W_567d54(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = r0 + 7u;
    r2 = r0 + (r0 << 1);
    r1 = r1 >> 3;
    r1 = r1 + 3u;
    r2 = r2 + (r0 << 3);
    r1 = r1 & ~3u;
    r1 = r1 + (r2 << 2);
    r1 = r1 + 55u;
    r4 = r1 & ~15u;
    r0 = Fn_56a110_3(r0, r1, r2);
    r0 = r4 + (r0 << 2);
    return r0;
}

// FUN_00569c88
void W_569c88() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00569c8c
void W_569c8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r4 = (u32)g_008ab4f8;
    r2 = r1;
    r3 = *(u32*)(r3 + 24);
    r1 = *(u32*)(r4);
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    *(u32*)(r4) = r0;
    return;
}

// FUN_00569cb4
void W_569cb4(u32 a0) {
    *(u32*)((u32)(a0) + 1656) = 0;
    *(u32*)((u32)(a0) + 1660) = 0;
}

// FUN_00569d88
void W_569d88() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    { WeakCall0(); return; }
}

// FUN_00569d8c
void W_569d8c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r3 = *(u32*)(r0);
    r4 = (u32)g_008ab4f8;
    r2 = r1;
    r3 = *(u32*)(r3 + 16);
    r1 = *(u32*)(r4);
    r0 = ((u32(*)(u32, u32, u32))r3)(r0, r1, r2);
    *(u32*)(r4) = r0;
    return;
}

// FUN_0056a110
u32 W_56a110(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r1 = 78u;
    r0 = r0 * r1;
    r0 = r0 + 57u;
    r0 = r0 & ~3u;
    return r0;
}

// FUN_0056a198
void W_56a198() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = 0u;
    L_56a1a0:;
    r0 = r4;
    r0 = Fn_6612ec_1(r0);
    r4 = r4 + 1u;
    fa = r4; fb = 4u;
    if ((int)fa < (int)fb) goto L_56a1a0;
    return;
}

// FUN_0056ad34
void W_56ad34(u32 a0) {
    u32 t1 = Fn_56a010_1(a0);
    *(u32*)((u32)(t1)) = (u32)g_0082d1ec;
}

// FUN_0056ad4c
void W_56ad4c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r2 = (u32)g_0082d1ec;
    r1 = *(u32*)(r0 + 4);
    r4 = r0;
    *(u32*)(r0) = r2;
    fa = r1; fb = 0u;
    if (fa != fb) r0 = Fn_569f9c_3(r0, r1, r2);
    r0 = r4;
    r0 = Fn_56aa74_1(r0);
    { Fn_2024b0_1(r0); return; }
}

// FUN_0056e578
void W_56e578() {

}

// FUN_0056e57c
u32 W_56e57c() {

    return 1;
}
