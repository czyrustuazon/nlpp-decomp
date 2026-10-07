// CTR SDK IPC wrappers (callers of the svc 0x32 stubs in lib/ctrsvc), matched by the lifter (tools/wrapgen).
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
extern char g_00826f70[];
u32 Fn_1fcd88_3(u32, u32, u32);
extern char g_008a75dc[];
u32 Fn_3d5388_1(u32);
u32 Fn_3d53d0_1(u32);
u32 Fn_3d54b4_3(u32, u32, u32);
u32 Fn_3d5978_1(u32);
u32 Fn_3d644c_1(u32);
u32 Fn_3d6560_1(u32);
u32 Fn_3d6668_2(u32, u32);
u32 Fn_016d5c_3(u32, u32, u32);
u32 Fn_492274_1(u32);
extern char g_008dac9c[];
extern char g_008273bc[];
u32 Fn_495df8_3(u32, u32, u32);
extern char g_008db430[];
u32 Fn_49e798_1(u32);
u32 Fn_5a4ebc_2(u32, u32);
u32 Fn_49a7d8_0();
u32 Fn_4935ec_2(u32, u32);
u32 Fn_480954_1(u32);
u32 Fn_48794c_2(u32, u32);
extern char g_00827740[];
u32 Fn_492d48_3(u32, u32, u32);
extern char g_007d4d88[];
u32 Fn_62f08c_1(u32);
u32 Fn_3576a4_1(u32);
u32 Fn_4a434c_1(u32);
u32 Fn_4a3ed0_1(u32);
u32 Fn_626288_2(u32, u32);
u32 Fn_262e80_0();
u32 Fn_4c71f8_3(u32, u32, u32);
u32 Fn_4c70a8_3(u32, u32, u32);
u32 Fn_4c74a4_3(u32, u32, u32);
u32 Fn_4c7370_3(u32, u32, u32);
u32 Fn_4ad3a8_1(u32);
extern char g_008bfa40[];
u32 Fn_198e44_1(u32);
u32 Fn_1f5bf4_0();
u32 Fn_227818_1(u32);
u32 Fn_5c5a78_3(u32, u32, u32);
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
u32 Fn_20004c_3(u32, u32, u32);
u32 Fn_4c0190_2(u32, u32);
u32 Fn_277e68_1(u32);
extern char g_00827f98[];
extern char g_008bfa28[];
u32 Fn_276ac4_3(u32, u32, u32);
u32 Fn_29e37c_3(u32, u32, u32);
u32 Fn_4cf01c_2(u32, u32);
extern char g_008bfa54[];
u32 Fn_06cb78_2(u32, u32);
u32 Fn_5a79c4_1(u32);
u32 Fn_4d43ec_0();
u32 Fn_4d6920_2(u32, u32);
u32 Fn_4d6ff8_1(u32);
u32 Fn_4d8f0c_1(u32);
u32 Fn_6312cc_1(u32);
extern char g_009b7668[];
u32 Fn_56e744_1(u32);
u32 Fn_56e7b4_1(u32);
u32 Fn_622434_0();
u32 Fn_622434_1(u32);
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
u32 Fn_0244c8_1(u32);
u32 Fn_4e2280_1(u32);
extern char g_008ab860[];
u32 Fn_01b74c_1(u32);
u32 Fn_0246c0_1(u32);
u32 Fn_4e1760_1(u32);
u32 Fn_4fd248_1(u32);
extern char g_008aac2c[];
extern char g_008aac58[];
u32 Fn_024730_1(u32);
extern char g_008b84fc[];
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
extern char g_008aabb0[];
u32 Fn_028f24_2(u32, u32);
extern char g_0082bfc4[];
u32 Fn_02a948_2(u32, u32);
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
u32 Fn_5421f4_2(u32, u32);
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
u32 Fn_63e090_1(u32);
u32 Fn_02a218_2(u32, u32);
u32 Fn_02a218_1(u32);
extern char g_009ab338[];
u32 Fn_02a210_0();
u32 Fn_64159c_1(u32);
extern char g_008a8428[];
u32 Fn_0151c8_1(u32);
u32 Fn_6347a8_2(u32, u32);
extern char g_00807724[];
u32 Fn_2d16b4_3(u32, u32, u32);
extern char g_0081ce74[];
extern char g_008b8668[];
u32 Fn_4efb28_1(u32);
u32 Fn_55e338_3(u32, u32, u32);
u32 Fn_55ea18_2(u32, u32);
extern char g_008ab848[];
u32 Fn_4e2680_1(u32);
extern char g_008aab18[];
u32 Fn_443b94_2(u32, u32);
u32 Fn_5c5ad8_3(u32, u32, u32);
extern char g_0079f254[];
u32 Fn_37783c_1(u32);
u32 Fn_59a7c4_2(u32, u32);
u32 Fn_59a938_1(u32);
extern char g_00582c40[];
extern char g_008274cc[];
u32 Fn_202758_2(u32, u32);
extern char g_0058a548[];
extern char g_008274dc[];
extern char g_0058e824[];
extern char g_008274ec[];
extern char g_008274fc[];
u32 Fn_1fcd88_2(u32, u32);
extern char g_0082750c[];
extern char g_0082d63c[];
extern char g_0082d64c[];
extern char g_0082d65c[];
extern char g_0082d66c[];
extern char g_0082d67c[];
extern char g_0082d68c[];
extern char g_0082d69c[];
extern char g_0082d6ac[];
u32 Fn_3d6b28_4(u32, u32, u32, u32);
u32 Fn_5db4b4_3(u32, u32, u32);
u32 Fn_498c20_4(u32, u32, u32, u32);
extern char g_008277e8[];
extern char g_00827938[];
extern char g_007d5314[];
u32 Fn_15c9d0_4(u32, u32, u32, u32);
extern char g_007d502c[];
u32 Fn_59935c_3(u32, u32, u32);
u32 Fn_5992a0_2(u32, u32);
extern char g_00827a30[];
u32 Fn_048d8c_2(u32, u32);
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
u32 Fn_008010_1(u32);
u32 Fn_016338_1(u32);
u32 Fn_016338_2(u32, u32);
extern char g_009a5200[];
u32 Fn_595cd8_1(u32);
u32 Fn_005b2c_1(u32);
extern char g_0082d8b8[];
extern char g_009a3dcc[];
u32 Fn_5992a0_1(u32);
extern char g_008aac38[];
u32 Fn_00831c_2(u32, u32);
u32 Fn_01a8e4_1(u32);
u32 Fn_02a7d4_2(u32, u32);
u32 Fn_4edbb4_1(u32);
u32 Fn_005e1c_2(u32, u32);
u32 Fn_01a8e4_0();
u32 Fn_4edea4_1(u32);
u32 Fn_4edecc_1(u32);
u32 Fn_4ee0f8_1(u32);
u32 Fn_4ee22c_2(u32, u32);
u32 Fn_4ee3f4_2(u32, u32);
u32 Fn_4ee42c_2(u32, u32);
u32 Fn_4ee464_2(u32, u32);
u32 Fn_4ee580_2(u32, u32);
u32 Fn_4ee5b8_2(u32, u32);
u32 Fn_4ee6ec_2(u32, u32);
u32 Fn_4ee844_2(u32, u32);
u32 Fn_4eec8c_1(u32);
u32 Fn_4ef300_2(u32, u32);
u32 Fn_4ef0ec_2(u32, u32);
u32 Fn_4ef458_2(u32, u32);
u32 Fn_63161c_0();
u32 Fn_4ef428_2(u32, u32);
u32 Fn_4eeb08_2(u32, u32);
extern char g_008aadc8[];
extern char g_009a1464[];
u32 Fn_4f5c0c_1(u32);
u32 Fn_503b40_2(u32, u32);
u32 Fn_503bb0_1(u32);
u32 Fn_51c168_1(u32);
u32 Fn_51f47c_2(u32, u32);
u32 Fn_520160_1(u32);
u32 Fn_520ba4_1(u32);
u32 Fn_520d3c_1(u32);
u32 Fn_521ca0_2(u32, u32);
u32 Fn_51f4b0_3(u32, u32, u32);
u32 Fn_520ba4_2(u32, u32);
u32 Fn_51f618_2(u32, u32);
u32 Fn_521dfc_3(u32, u32, u32);
u32 Fn_51f7e4_3(u32, u32, u32);
u32 Fn_51f8a0_2(u32, u32);
u32 Fn_522004_2(u32, u32);
u32 Fn_51f8d4_3(u32, u32, u32);
u32 Fn_51fcf0_2(u32, u32);
u32 Fn_51fd78_2(u32, u32);
u32 Fn_5200b0_1(u32);
u32 Fn_521a14_2(u32, u32);
u32 Fn_5393c0_3(u32, u32, u32);
u32 Fn_539938_2(u32, u32);
u32 Fn_53a3d4_2(u32, u32);
u32 Fn_4ef5c0_2(u32, u32);
u32 Fn_4ef3a4_2(u32, u32);
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
extern char g_0089a330[];
u32 Fn_62e70c_2(u32, u32);
u32 Fn_6254f4_1(u32);
u32 Fn_02b848_3f1(u32, u32, u32, float);
extern char g_008b87d0[];
u32 Fn_011a60_2(u32, u32);
u32 Fn_011aa4_1(u32);
u32 Fn_01a174_2(u32, u32);
u32 Fn_01a2b8_2(u32, u32);
u32 Fn_020b18_3(u32, u32, u32);
u32 Fn_022840_2(u32, u32);
u32 Fn_1fddd8_2(u32, u32);
float Fn_6407a0_1(u32);
u32 Fn_0154f8_2(u32, u32);
u32 Fn_015600_1(u32);
u32 Fn_59cb38_2(u32, u32);
u32 WeakCall1f1(u32, float);
extern char g_008bfa5c[];
extern char g_008bfa6c[];
u32 Fn_0f4f30_2(u32, u32);
extern char g_008bfa68[];
extern char g_008084b8[];
u32 Fn_1e87e4_0();
u32 Fn_1c7e68_1(u32);
extern char g_00808e60[];
u32 Fn_193fcc_0();
u32 Fn_5c7c28_1(u32);
extern char g_0080923c[];
u32 Fn_5c515c_0();
extern char g_0080924c[];
u32 Fn_01a4d4_2(u32, u32);
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
u32 Fn_1c7d30_1(u32);
extern char g_0080e1d8[];
u32 Fn_198eac_1f2(u32, float, float);
u32 Fn_198fb0_1f2(u32, float, float);
extern char g_0080fa0c[];
u32 Fn_646550_3(u32, u32, u32);
extern char g_0080faa8[];
extern char g_00800214[];
extern char g_008bfa34[];
u32 Fn_420358_2(u32, u32);
u32 Fn_427708_2(u32, u32);
u32 Fn_428664_1(u32);
extern char g_007f09c4[];
extern char g_008bfa3c[];
u32 Fn_43d364_1(u32);
extern char g_0082553c[];
u32 Fn_58d5b8_0();
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
u32 Fn_484b08_1(u32);
u32 Fn_49dab0_3(u32, u32, u32);
u32 Fn_4ad938_3(u32, u32, u32);
u32 Fn_60c9cc_1(u32);
u32 Fn_4edc70_3(u32, u32, u32);
u32 Fn_4edcf0_3(u32, u32, u32);
extern char g_007e91f8[];
u32 Fn_0313f8_3(u32, u32, u32);
u32 Fn_50e514_1(u32);
u32 Fn_4fea1c_1(u32);

// FUN_00005df0
u32 fs_USER_Initialize_5df0(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r1_1, r1_2, r0_1, r0_2, r0_3, stk;
    r1_1 = (u32)g_008aac38;
    *(u32*)(r1_1 + 16) = r0;
    stk = r0;
    r1_2 = 100729032u;
    r0_1 = (u32)&stk;
    r0_2 = Fn_00831c_2(r0_1, r1_2);
    r0_3 = 0u;
    return r0_3;
}

// FUN_00008874
u32 W_008874(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r0_2, r1_1, r1_2, r0_3, r0_4, r0_5, r0_6, r0_7;
    r0_1 = Fn_011aa4_1(r0);
    r0_2 = (u32)g_008b87d0;
    r1_2 = (*(u32*)(r0_2)) - 1u;
    *(u32*)(r0_2) = r1_2;
    r0_5 = Fn_011a60_2(((r0 + 1024u) + 904u), r1_2);
    return ((r0_5 - 1024u) - 904u);
}

// FUN_00028d98
u32 fs_USER_GetPriority(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_02a7d4_2(r0, r1);
    return r0;
}

// FUN_004e161c
void ac_Multi2_4e161c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab30;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4e1640;
    r0 = Fn_504394_1(r0);
    r0 = 0u;
    *(u8*)(r4) = r0;
    r0 = Fn_504590_1(r0);
    L_4e1640:;
    { Fn_4e2280_1(r0); return; }
}

// FUN_004e1730
void W_4e1730() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab30;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4e1754;
    r0 = Fn_504394_1(r0);
    r0 = 0u;
    *(u8*)(r4) = r0;
    r0 = Fn_504590_1(r0);
    L_4e1754:;
    { Fn_4e2680_1(r0); return; }
}

// FUN_004e766c
void fs_USER_CreateSeed(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = *(u32*)(r0 + 16);
    r0_2 = (u32)&stk;
    r0_3 = Fn_4edbb4_1(r0_2);
    return;
}

// FUN_004e778c
void W_4e778c(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_1(r0);
    r0_3 = Fn_4edc70_3(((u32)&stk), r0, 36u);
    return;
}

// FUN_004e77d8
void W_4e77d8(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r4_1, r0_1, r2_1, r1_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_1(r0);
    r0_3 = Fn_4edcf0_3(((u32)&stk), r0, 36u);
    return;
}

// FUN_004e7820
u32 fs_USER_SetPriority_4e7820(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_005e1c_2(r0, r1);
    return r0;
}

// FUN_004e7840
void fs_USER_ClearNandLog() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_0();
    r0_2 = (u32)&stk;
    r0_3 = Fn_4edea4_1(r0_2);
    return;
}

// FUN_004e7858
void fs_USER_ClearSdmcLog() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = Fn_01a8e4_0();
    r0_2 = (u32)&stk;
    r0_3 = Fn_4edecc_1(r0_2);
    return;
}

// FUN_004e7bd8
void fs_USER_DeleteSdmcRoot(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = *(u32*)(r0 + 16);
    r0_2 = (u32)&stk;
    r0_3 = Fn_4ee0f8_1(r0_2);
    return;
}

// FUN_004e7dd0
u32 fs_USER_CardSlotPowerOn(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee22c_2(r0, r1);
    return r0;
}

// FUN_004e7f48
u32 fs_USER_CardSlotPowerOff(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee3f4_2(r0, r1);
    return r0;
}

// FUN_004e7ff4
u32 fs_USER_GetNandSpeedInfo(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee42c_2(r0, r1);
    return r0;
}

// FUN_004e8014
u32 fs_USER_GetSdmcSpeedInfo(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee464_2(r0, r1);
    return r0;
}

// FUN_004e8278
u32 fs_USER_GetSdmcFatfsError(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee580_2(r0, r1);
    return r0;
}

// FUN_004e83e4
u32 fs_USER_SetCardSpiBusMode(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee5b8_2(r0, r1);
    return r0;
}

// FUN_004e853c
u32 fs_USER_Multi3_4e853c(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = *(u32*)(r1 + 16);
    stk = r1;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_4ee6ec_2(r0, r1);
    r1 = r0 >> 31;
    if (r1 == 0) r0 = 0u;
    return r0;
}

// FUN_004e864c
u32 fs_USER_SetCardSpiBaudRate(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ee844_2(r0, r1);
    return r0;
}

// FUN_004e8d90
void fs_USER_cmd874(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, stk;
    stk = *(u32*)(r0 + 16);
    r0_2 = (u32)&stk;
    r0_3 = Fn_4eec8c_1(r0_2);
    return;
}

// FUN_004e96a8
u32 fs_USER_CardNorDirectSectorEraseWithoutVerify(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef300_2(r0, r1);
    return r0;
}

// FUN_004e9cb0
u32 fs_USER_CardSlotGetCardIFPowerStatus(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef0ec_2(r0, r1);
    return r0;
}

// FUN_004ece88
void fs_USER_File_OpenLinkFile_4ece88(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef458_2(r0, r1);
    return;
}

// FUN_004ecea8
void fs_USER_File_SetPriority_4ecea8(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef428_2(r0, r1);
    return;
}

// FUN_004efae0
u32 fs_USER_CardNorDirectCommand(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r0 = Fn_01a8e4_1(r0);
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4eeb08_2(r0, r1);
    return r0;
}

// FUN_004f6784
void ptm_u_GetStepHistory() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_50e3c4_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_4f679c;
    { Fn_024730_1(r0); return; }
    L_4f679c:;
    return;
}

// FUN_004f693c
u32 W_4f693c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, r0_4, stk;
    stk = 0u;
    r0_3 = Fn_50e514_1(((u32)&stk));
    return stk;
}

// FUN_004f7978
u32 ndm_u_EnterExclusiveState() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab74;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_4f7998;
    r0 = Fn_4fad4c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4f799c;
    L_4f7998:;
    r0 = 1u;
    L_4f799c:;
    r1 = *(signed char*)(r4 + 1);
    r2 = *(signed char*)(r4 + 3);
    r0 = r0 & r1;
    r0 = r0 & ~r2;
    if (r0 == 0) goto L_4f79e8;
    r0 = *(u8*)(r4 + 4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_4f79cc;
    r0 = Fn_4fad4c_3(r0, r1, r2);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4f79e8;
    L_4f79cc:;
    r0 = 4u;
    r0 = Fn_504350_1(r0);
    r1 = r0 & 2147483648u;
    fa = r1; fb = 0u;
    if ((int)fa >= (int)fb) r1 = 1u;
    if ((int)fa >= (int)fb) *(u8*)(r4 + 3) = r1;
    return r0;
    L_4f79e8:;
    r0 = 3766553592u;
    return r0;
}

// FUN_004f79f8
u32 ndm_u_LeaveExclusiveState_4f79f8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab74;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa != fb) goto L_4f7a18;
    r0 = Fn_4fad4c_1(r0);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_4f7a1c;
    L_4f7a18:;
    r0 = 1u;
    L_4f7a1c:;
    r1 = *(signed char*)(r4 + 1);
    r2 = *(signed char*)(r4 + 3);
    r0 = r0 & r1;
    fx = r0 & r2;
    if (fx == 0) r0 = 3766553592u;
    if (fx == 0) goto L_4f7a48;
    r0 = Fn_504394_3(r0, r1, r2);
    r1 = r0 & 2147483648u;
    fa = r1; fb = 0u;
    if ((int)fa >= (int)fb) r1 = 0u;
    if ((int)fa >= (int)fb) *(u8*)(r4 + 3) = r1;
    L_4f7a48:;
    return r0;
}

// FUN_004fad4c
u32 cecd_s_cmd417() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = (u32)g_008ab9f4;
    r0 = *(signed char*)(r0);
    return r0;
}

// FUN_004fad80
u32 cecd_s_cmd416() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008ab9f4;
    r0 = 0u;
    r1 = *(u8*)(r4);
    fa = r1; fb = 0u;
    if (fa != fb) goto L_4fadac;
    r0 = Fn_4fb2e4_2(r0, r1);
    r1 = r0 & 2147483648u;
    fa = r1; fb = 0u;
    if ((int)fa >= (int)fb) r1 = 1u;
    if ((int)fa >= (int)fb) *(u8*)(r4) = r1;
    L_4fadac:;
    return r0;
}

// FUN_004fea5c
u32 W_4fea5c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, r0_1, r0_2, r0_3, r0_4, stk;
    *(u8*)((u32)&stk) = 0u;
    r0_3 = Fn_4fea1c_1(((u32)&stk));
    return (*(u8*)((u32)&stk));
}

// FUN_00500a4c
u32 dsp__DSP_Multi3_500a4c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aabb0;
    r0 = 0u;
    r1 = *(u8*)(r4 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_500a74;
    r0 = *(u32*)(r4 + 8);
    r0 = Fn_028f24_2(r0, r1);
    r1 = 0u;
    *(u8*)(r4 + 1) = r1;
    L_500a74:;
    r1 = 1u;
    *(u8*)(r4 + 3) = r1;
    return r0;
}

// FUN_00500ce4
u32 dsp__DSP_UnloadComponent_500ce4() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aabb0;
    r0 = 0u;
    r1 = *(u8*)(r4 + 1);
    fa = r1; fb = 0u;
    if (fa == fb) goto L_500d0c;
    r0 = *(u32*)(r4 + 8);
    r0 = Fn_028f24_2(r0, r1);
    r1 = 0u;
    *(u8*)(r4 + 1) = r1;
    L_500d0c:;
    return r0;
}

// FUN_00500fa8
void dsp__DSP_UnloadComponent_500fa8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r6 = (u32)g_008aabb0;
    r0 = *(signed char*)(r6 + 1);
    r1 = *(signed char*)(r6 + 2);
    r0 = r0 & ~r1;
    if (r0 != 0) r5 = (u32)g_009a0f74;
    if (r0 != 0) r4 = 0u;
    if (r0 == 0) goto L_501008;
    L_500fc8:;
    r0 = *(u32*)(r5 + (r4 << 2));
    fa = r0; fb = 0u;
    if (fa != fb) r0 = ((u32(*)())r0)();
    r4 = r4 + 1u;
    fa = r4; fb = 8u;
    if ((int)fa < (int)fb) goto L_500fc8;
    r0 = *(u8*)(r6 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_500ffc;
    r0 = *(u32*)(r6 + 8);
    r0 = Fn_028f24_1(r0);
    r0 = 0u;
    *(u8*)(r6 + 1) = r0;
    L_500ffc:;
    r1 = 1u;
    r0 = r1;
    *(u8*)(r6 + 2) = r1;
    L_501008:;
    *(u8*)(r6) = r0;
    return;
}

// FUN_005036bc
u32 mic_u_Multi2_5036bc() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = (u32)g_008aadc8;
    r0 = *(u8*)(r4 + 1);
    fa = r0; fb = 0u;
    if (fa == fb) r0 = 3626012664u;
    if (fa == fb) goto L_503710;
    r0 = (u32)&stk;
    r0 = Fn_503bb0_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_503710;
    r0 = *(u8*)((u32)&stk);
    fa = r0; fb = 0u;
    if (fa != fb) r0 = 3357577200u;
    if (fa != fb) goto L_503710;
    r0 = Fn_503b40_2(r0, r1);
    r5 = r0;
    r0 = (u32)g_009a1464;
    r0 = Fn_4f5c0c_1(r0);
    r1 = 0u;
    r0 = r5;
    *(u8*)(r4 + 1) = r1;
    L_503710:;
    return r0;
}

// FUN_0051b8b4
u32 ndm_u_LeaveExclusiveState_51b8b4(u32 a0) {
    u32 t1 = Fn_51a2a8_1(a0);
    u32 t2 = Fn_504394_1(t1);
    return Fn_504590_1(t2);
}

// FUN_0051b8cc
void y2r_u_cmd5() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51bd38_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51b8e4;
    { Fn_024730_1(r0); return; }
    L_51b8e4:;
    return;
}

// FUN_0051ba14
void y2r_u_cmd1c() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51bf20_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51ba2c;
    { Fn_024730_1(r0); return; }
    L_51ba2c:;
    return;
}

// FUN_0051bb14
void y2r_u_cmd1() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c024_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51bb2c;
    { Fn_024730_1(r0); return; }
    L_51bb2c:;
    return;
}

// FUN_0051bb30
void y2r_u_cmd27() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c060_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51bb48;
    { Fn_024730_1(r0); return; }
    L_51bb48:;
    return;
}

// FUN_0051bb4c
void y2r_u_cmd3() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c0cc_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51bb64;
    { Fn_024730_1(r0); return; }
    L_51bb64:;
    return;
}

// FUN_0051bb68
u32 y2r_u_cmd26() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c108_0();
    r1 = 3376435201u;
    fa = r0; fb = r1;
    if (fa == fb) goto L_51bb88;
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_2(r0, r1);
    r0 = 0u;
    L_51bb88:;
    return r0;
}

// FUN_0051bb90
u32 y2r_u_cmd28() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r0 = (u32)&stk;
    r0 = Fn_51c168_1(r0);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(signed char*)((u32)&stk);
    return r0;
}

// FUN_0051bbac
void y2r_u_cmd7() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c21c_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51bbc4;
    { Fn_024730_1(r0); return; }
    L_51bbc4:;
    return;
}

// FUN_0051bbc8
void y2r_u_cmd1a() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c258_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51bbe0;
    { Fn_024730_1(r0); return; }
    L_51bbe0:;
    return;
}

// FUN_0051bca4
void y2r_u_cmd20() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c624_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51bcbc;
    { Fn_024730_1(r0); return; }
    L_51bcbc:;
    return;
}

// FUN_0051c83c
void y2r_u_cmd22() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_51c800_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_51c854;
    { Fn_024730_1(r0); return; }
    L_51c854:;
    return;
}

// FUN_0051d274
u32 boss_GetOptoutFlag(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    if (r4 == 0) goto L_51d2a8;
    r0 = (u32)stk;
    r0 = Fn_520ba4_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_51d2b8;
    r0 = *(u32*)((u32)stk);
    r1 = r4;
    r0 = Fn_51f47c_2(r0, r1);
    L_51d2a0:;
    return r0;
    L_51d2a8:;
    r0 = 12u;
    r0 = Fn_520d3c_1(r0);
    return r0;
    L_51d2b8:;
    r0 = (u32)stk + 4u;
    r0 = Fn_520160_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d2a0;
    r0 = *(u32*)((u32)stk + 4);
    r1 = r4;
    r0 = Fn_521ca0_2(r0, r1);
    return r0;
}

// FUN_0051d2e0
u32 boss_GetSprelayUrl(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r5 = r1;
    if (r4 == 0) goto L_51d314;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d310;
    r0 = stk;
    r2 = r5;
    r1 = r4;
    r0 = Fn_51f4b0_3(r0, r1, r2);
    L_51d310:;
    return r0;
    L_51d314:;
    r0 = 25u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051d588
void boss_SetOptoutFlag(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    r0 = (u32)stk;
    r0 = Fn_520ba4_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_51d5b8;
    r0 = *(u32*)((u32)stk);
    r1 = r4;
    r0 = Fn_51f618_2(r0, r1);
    L_51d5b0:;
    return;
    L_51d5b8:;
    r0 = (u32)stk + 4u;
    r0 = Fn_520160_1(r0);
    r2 = r0 & 2147483648u;
    if ((int)r2 < 0) goto L_51d5b0;
    r0 = *(u32*)((u32)stk + 4);
    r1 = r4;
    r0 = Fn_521dfc_3(r0, r1, r2);
    return;
}

// FUN_0051d8a0
u32 boss_GetPolicyListUrl(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r5 = r1;
    if (r4 == 0) goto L_51d8d4;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d8d0;
    r0 = stk;
    r2 = r5;
    r1 = r4;
    r0 = Fn_51f7e4_3(r0, r1, r2);
    L_51d8d0:;
    return r0;
    L_51d8d4:;
    r0 = 25u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051d924
u32 boss_GetNewArrivalFlag(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk[2];
    r4 = r0;
    if (r4 == 0) goto L_51d958;
    r0 = (u32)stk;
    r0 = Fn_520ba4_1(r0);
    r0 = r0 & 2147483648u;
    if ((int)r0 < 0) goto L_51d968;
    r0 = *(u32*)((u32)stk);
    r1 = r4;
    r0 = Fn_51f8a0_2(r0, r1);
    L_51d950:;
    return r0;
    L_51d958:;
    r0 = 11u;
    r0 = Fn_520d3c_1(r0);
    return r0;
    L_51d968:;
    r0 = (u32)stk + 4u;
    r0 = Fn_520160_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51d950;
    r0 = *(u32*)((u32)stk + 4);
    r1 = r4;
    r0 = Fn_522004_2(r0, r1);
    return r0;
}

// FUN_0051da84
u32 boss_GetPolicyListEnvId(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    r5 = r1;
    if (r4 == 0) goto L_51dab8;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_2(r0, r1);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51dab4;
    r0 = stk;
    r2 = r5;
    r1 = r4;
    r0 = Fn_51f8d4_3(r0, r1, r2);
    L_51dab4:;
    return r0;
    L_51dab8:;
    r0 = 24u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051dfd0
u32 boss_GetTestModeAvailability(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51dffc;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51dff8;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51fcf0_2(r0, r1);
    L_51dff8:;
    return r0;
    L_51dffc:;
    r0 = 21u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051e008
u32 boss_cmd41e(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51e034;
    r0 = (u32)&stk;
    r0 = Fn_520ba4_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51e030;
    r0 = stk;
    r1 = r4;
    r0 = Fn_51fd78_2(r0, r1);
    L_51e030:;
    return r0;
    L_51e034:;
    r0 = 20u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_0051e0a4
u32 boss_cmd6(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r0;
    if (r4 == 0) goto L_51e0d0;
    r0 = (u32)&stk;
    r0 = Fn_5200b0_1(r0);
    r1 = r0 & 2147483648u;
    if ((int)r1 < 0) goto L_51e0cc;
    r0 = stk;
    r1 = r4;
    r0 = Fn_521a14_2(r0, r1);
    L_51e0cc:;
    return r0;
    L_51e0d0:;
    r0 = 18u;
    r0 = Fn_520d3c_1(r0);
    return r0;
}

// FUN_00536408
u32 APT_U_SendCaptureBufferInfo(u32 a0, u32 a1) {
    u32 t1 = Fn_01d3e0_2(a0, a1);
    u32 t2 = Fn_5378d0_2(a0, a1);
    u32 t3 = Fn_01d534_1(t2);
    return t2;
}

// FUN_00538574
void cam_u_ClearBuffer() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_539330_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_53858c;
    { Fn_024730_1(r0); return; }
    L_53858c:;
    return;
}

// FUN_00538590
u32 cam_u_GetMaxLines(u32 a0, u32 a1) {
    u32 r0 = a0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r2 = r1;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_5393c0_3(r0, r1, r2);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(short*)((u32)&stk);
    return r0;
}

// FUN_005385b4
void cam_u_SetTrimming() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5394a4_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_5385cc;
    { Fn_024730_1(r0); return; }
    L_5385cc:;
    return;
}

// FUN_005385d0
void cam_u_StopCapture() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5394ec_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_5385e8;
    { Fn_024730_1(r0); return; }
    L_5385e8:;
    return;
}

// FUN_00538718
void cam_u_StartCapture() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_539668_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_538730;
    { Fn_024730_1(r0); return; }
    L_538730:;
    return;
}

// FUN_0053893c
u32 cam_u_GetTransferBytes(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_539938_2(r0, r1);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = stk;
    return r0;
}

// FUN_005389b4
void cam_u_SetTransferBytes() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_5399c0_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_5389cc;
    { Fn_024730_1(r0); return; }
    L_5389cc:;
    return;
}

// FUN_005389d0
void cam_u_SetTransferLines() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r0 = Fn_539a14_0();
    r0 = r0 >> 31;
    if (r0 == 0) goto L_5389e8;
    { Fn_024730_1(r0); return; }
    L_5389e8:;
    return;
}

// FUN_0053a510
u32 cam_u_IsBusy(u32 a0) {
    u32 r0 = a0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r1 = r0;
    r0 = (u32)&stk;
    r0 = Fn_53a3d4_2(r0, r1);
    r0 = r0 >> 31;
    if (r0 != 0) r0 = Fn_024730_1(r0);
    r0 = *(signed char*)((u32)&stk);
    return r0;
}

// FUN_006315fc
void fs_USER_File_GetSize_6315fc(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef5c0_2(r0, r1);
    return;
}

// FUN_00631644
void fs_USER_File_GetPriority_631644(u32 a0, u32 a1) {
    u32 r0, r1 = a1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx, stk;
    r4 = r1;
    r0 = Fn_63161c_0();
    stk = r0;
    r1 = r4;
    r0 = (u32)&stk;
    r0 = Fn_4ef3a4_2(r0, r1);
    return;
}

// FUN_00668cf8
void ndm_u_LeaveExclusiveState_668cf8() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab30;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_668d1c;
    r0 = Fn_504394_1(r0);
    r0 = 0u;
    *(u8*)(r4) = r0;
    r0 = Fn_504590_1(r0);
    L_668d1c:;
    { Fn_4e2680_1(r0); return; }
}

// FUN_00668dac
void ac_Multi2_668dac() {
    u32 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, fa, fb, fx;
    r4 = (u32)g_008aab30;
    r0 = *(u8*)(r4);
    fa = r0; fb = 0u;
    if (fa == fb) goto L_668dd0;
    r0 = Fn_504394_1(r0);
    r0 = 0u;
    *(u8*)(r4) = r0;
    r0 = Fn_504590_1(r0);
    L_668dd0:;
    { Fn_4e2280_1(r0); return; }
}
