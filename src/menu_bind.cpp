// Menu binders (technical.md §6 item 4). Small UI helpers that bind BCLIM file names to
// layout panes; callers are menu setup functions, callees are layout (nw::lyt-like) code that
// is not matched. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
//   FUN_0020ad74 BindMSelBtnIconAndText
//   FUN_001eb3dc OptionMenu_BindBtnTextures

typedef unsigned int u32;
typedef int          s32;

// Global UI context, VA 0x008BFA40 (the pointer itself; +0xB2C is a resource/archive handle).
struct UiContext { u32 pad[0x2CB]; void* resource; };      // resource at +0xB2C
extern UiContext* g_UiContext;

// 16-byte lookup result, polymorphic: its ctor (FUN_005e8b54) runs a base ctor (FUN_005e828c) and
// stores a vptr. A base with an inline empty virtual destructor gives BindMSelBtnIconAndText retail's
// bare cleanup pad at 0x20ae54 (`nop; blx __cxa_end_cleanup`); key_() keeps the vtables out of the TU.
struct PaneRefBase { virtual ~PaneRefBase() {} virtual void key_(); u32 w1, w2, w3; };
struct PaneRef : PaneRefBase { PaneRef(); };
struct BtnSlot { struct BtnLayout* layout; u32 unk4; };     // 8 bytes, array at menu+0x78
struct BtnLayout { u32 unk0; u32 unk4; void* root; };       // root at +8

struct MSelMenu {
    u32     unk0;
    s32     active;                  // +0x04
    u32     pad[0x1C];
    BtnSlot slots[4];                // +0x78
};

void UiContext_Begin(UiContext*, bool, u32);                // FUN_005c6614
void UiContext_End(UiContext*, bool);                       // FUN_005c67dc
void FindPane(void* root, const char* name, PaneRef* out, u32 flag);   // FUN_005eba00
void BindBclim(PaneRef*, u32, void* resource, const char* file);       // FUN_005e8720

void MSelMenu_Prepare(MSelMenu*, u32 count);                // FUN_0020b160
void MSelMenu_Finish1(MSelMenu*, u32, u32);                 // FUN_005c760c
void MSelMenu_Finish2(MSelMenu*);                           // FUN_005c7c28

inline void Find(BtnLayout* l, const char* name, PaneRef* ref) { FindPane(l->root, name, ref, 0); }

// --exceptions (extab entry). The inline Find puts `mov r3, #0` after the name as in retail.
// NONMATCHING, score 9: prologue register choice only (retail copies `text` to r7 first and loads
// `active` into r3; ours loads it into r0). handoff_drafts/FUN_0020ad74.
void BindMSelBtnIconAndText(MSelMenu* m, s32 index, const char* icon, const char* text)
{
    UiContext_Begin(g_UiContext, m->active != 0, 0);
    PaneRef ref;
    Find(m->slots[index].layout, "Pic_Btn_Icon", &ref);
    BindBclim(&ref, 0, g_UiContext->resource, icon);
    Find(m->slots[index].layout, "Pic_Btn_Text", &ref);
    BindBclim(&ref, 0, g_UiContext->resource, text);
    // A named local for the context here (not at Begin or Bind) fixes the epilogue (retail loads
    // active straight into r1, `ldr r1,[r4,#4]; ldr r0,[r8]; cmp; movne`).
    UiContext* ce = g_UiContext;
    UiContext_End(ce, m->active != 0);
}

void OptionMenu_BindBtnTextures(MSelMenu* m)
{
    MSelMenu_Prepare(m, 4);
    BindMSelBtnIconAndText(m, 0, "Com_M_Sel_Btn_Icon03_01_00.bclim", "Com_M_Sel_Btn_Text03_01_00.bclim");
    BindMSelBtnIconAndText(m, 1, "Com_M_Sel_Btn_Icon03_02_00.bclim", "Com_M_Sel_Btn_Text03_02_00.bclim");
    BindMSelBtnIconAndText(m, 2, "Com_M_Sel_Btn_Icon03_03_00.bclim", "Com_M_Sel_Btn_Text04_04_00.bclim");
    BindMSelBtnIconAndText(m, 3, "Com_M_Sel_Btn_Icon03_05_00.bclim", "Com_M_Sel_Btn_Text03_05_00.bclim");
    MSelMenu_Finish1(m, 0, 0);
    MSelMenu_Finish2(m);
}

// FUN_0020bcc0 OptionMenu_BindPlateTextures: slot -> (text, icon) plate BCLIM names, the
// shared "Obj" plate, then finish. Slot 6 is the clock title (EngPatcher docs).
void MSelMenu_BindPlate(MSelMenu*, const char* icon, const char* obj, const char* text);  // FUN_00224d44
void MSelMenu_SetFlag(MSelMenu*, u32);                                                    // FUN_002253e4

// --exceptions (inline unwind entry). One call per slot: ARMCC cross-jumps the eight calls into one
// `bl` and pools the shared Obj literal once. The literals sit in two islands inside the function,
// the second running to 0x20bffc, so the size is 0x33c.
void OptionMenu_BindPlateTextures(MSelMenu* m, s32 slot)
{
    if (slot == 0)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_00_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_00_00.bclim");
    else if (slot == 1)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_01_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_01_00.bclim");
    else if (slot == 2)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_02_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_02_00.bclim");
    else if (slot == 3)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_03_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_03_00.bclim");
    else if (slot == 4)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_04_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_04_00.bclim");
    else if (slot == 5)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_05_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_05_00.bclim");
    else if (slot == 6)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_06_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_06_00.bclim");
    else if (slot == 7)
        MSelMenu_BindPlate(m, "Com_M_Sel_Plate_Icon03_06_00.bclim", "Com_M_Sel_Plate_Obj03_00_00.bclim", "Com_M_Sel_Plate_Text03_06_01.bclim");
    MSelMenu_Finish1(m, 0, 0);
    if (slot == 0)
        MSelMenu_SetFlag(m, 1);
}
