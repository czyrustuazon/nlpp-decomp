// Third batch of small UI/text leaves (technical.md 6.1.3). ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int   u32;
typedef unsigned short u16;
typedef signed int     s32;
typedef unsigned char  u8;
typedef signed char    s8;

struct UiContext;
extern UiContext* g_UiContext;                                   // VA 0x008BFA40

struct Entry { u32 pad[9]; s32 m_24; };                          // lookup result; s32 at +0x24
Entry* Table_Find(UiContext* ctx, u32 key, u32 kind);            // FUN_005c5cb0

struct Child;
void Child_SetFlag(Child* c, u32 flag);                          // FUN_005a4ebc

// ---- text ---------------------------------------------------------------------------------
// FUN_005c0e7c is GetText(buf, bufSize, id, index); the callers below pass a 5th stack argument
// (1) that GetText ignores, so it is declared with five parameters here.
bool GetText5(char* buf, u32 bufSize, u32 id, u32 index, u32 extra);    // FUN_005c0e7c
extern const u16 g_TextIds[];                                           // VA 0x007BD472 (u16 ids)

// FUN_00187454: id = g_TextIds[idx]; the first argument is ignored, `buf` is the 4th and `bufSize`
// comes from the stack.
bool GetTextIdx(u32 unused, u32 idx, u32 index, char* buf, u32 bufSize)
{
    return GetText5(buf, bufSize, g_TextIds[idx], index, 1);
}

// ---- lookups through a holder's first word ---------------------------------------------------
struct Holder { UiContext* m_ctx; };
void Entry_UseD(Entry* e, u32 arg);                                    // FUN_006278e0
void Entry_UseE(Entry* e, u32 arg);                                    // FUN_00627ce0
s32  Entry_UseF(Entry* e);                                             // FUN_00627b88

// FUN_0062d108 / FUN_0062d140 (score 2: retail emits `mov r2,#1` before `ldr r0,[r0]`, ours after): lookup (kind 1, key 0) then forward `arg` with a tail call.
void HolderUseD(Holder* h, u32 arg)
{
    Entry* e = Table_Find(h->m_ctx, 0, 1);
    if (e != 0) Entry_UseD(e, arg);
}

void HolderUseE(Holder* h, u32 arg)
{
    Entry* e = Table_Find(h->m_ctx, 0, 1);
    if (e != 0) Entry_UseE(e, arg);
}

// FUN_0062d178 (score 3, same load/constant order as above): same lookup; -1 when absent.
s32 HolderUseF(Holder* h)
{
    Entry* e = Table_Find(h->m_ctx, 0, 1);
    if (e == 0) return -1;
    return Entry_UseF(e);
}

// FUN_0036ef8c: lookup kind 2 with no null check; the entry goes straight on as the first argument.
void Entry_UseG(Entry* e, u32 a, bool off);                            // FUN_00204970
void UiUseG(void* unused, u32 a, u32 b)
{
    Entry* e = Table_Find(g_UiContext, 0, 2);
    bool off;                       // `b == 0` passed directly emits movne/moveq in the other order (score 3)
    if (b != 0) off = false;
    else        off = true;
    Entry_UseG(e, a, off);
}

// FUN_004b0124: kind 6; when the entry's word at +0x24 is 5, store it at +0x80 of the object.
struct Target { u32 pad[0x20]; s32 m_80; };
bool UiSync(Target* t)
{
    Entry* e = Table_Find(g_UiContext, 0, 6);
    if (e != 0) {
        if (e->m_24 == 5) t->m_80 = e->m_24;
    }
    return true;
}

// FUN_00106acc: kind 3; if found and `arg` is 0, call FUN_0018b15c(entry, 3).
void Entry_UseH(Entry* e, u32 which);                                  // FUN_0018b15c
void UiUseH(void* unused, u32 arg)
{
    Entry* e = Table_Find(g_UiContext, 0, 3);
    if (e != 0 && arg == 0) Entry_UseH(e, 3);
}

// ---- child flag setters -----------------------------------------------------------------------
// m_on at +0, slot[0] at +0x18. The Panel setters below are inlined calls to these members: retail
// moves idx/flag into place before testing m_on, which only an inline callee's arguments explain.
struct Sub {
    u8 m_on; u8 pad[3]; Child* m_child4; u32 pad2[4]; Child* m_slot[8];
    void SetSlot(u32 idx, u32 flag) { if (m_on != 0) Child_SetFlag(m_slot[idx], flag); }
    void SetFirst(u32 idx, u32 flag) { if (m_on != 0) { if (idx == 1) Child_SetFlag(m_child4, flag); } }
};

// FUN_0061a664 / FUN_0061b364, built with --exceptions (inline unwind entries): with it the last call
// is a `bl` inside push {r4, lr} / pop, not a tail call. If the sub-object at +4 exists and is on, set
// the flag on its slot[idx] (at +0x18), or (SetFirst) on the child at +4 when idx == 1.
struct Panel { u32 pad; Sub* m_sub; void SetSlot(u32 idx, u32 flag); void SetFirst(u32 idx, u32 flag); };
void Panel::SetSlot(u32 idx, u32 flag)
{
    if (m_sub != 0) m_sub->SetSlot(idx, flag);
}

void Panel::SetFirst(u32 idx, u32 flag)
{
    if (m_sub != 0) m_sub->SetFirst(idx, flag);
}

// FUN_0013cc7c: store the flag, apply it to the child at +0x50, then re-apply the stored (signed
// byte) value to the child at +0x64 as a tail call. The base register r5 = this + 0xD00 is hoisted.
struct Wide {
    u8     pad[0x50];
    Child* m_50;
    u8     pad2[0x64 - 0x54];
    Child* m_64;
    u8     pad3[0xdc4 - 0x68];
    s8     m_dc4;
    void Set(s8 f);
};

void Wide::Set(s8 f)
{
    m_dc4 = f;
    Child* a = m_50;                // the named local (and reading m_dc4 back) is what matches; 3 without
    if (a != 0) Child_SetFlag(a, m_dc4);
    if (m_64 != 0) Child_SetFlag(m_64, m_dc4);
}

// FUN_005e425c: store the flag byte at +0xB4 and apply it to the 8 child pointers at +0x54.
struct Eight {
    u8     pad[0x54];
    Child* m_c[8];
    u8     pad2[0xb4 - 0x74];
    u8     m_b4;
    void SetAll(u32 f);
};

void Eight::SetAll(u32 f)
{
    m_b4 = f;
    for (s32 i = 0; i < 8; i++) {
        if (m_c[i] != 0) Child_SetFlag(m_c[i], f);
    }
}
