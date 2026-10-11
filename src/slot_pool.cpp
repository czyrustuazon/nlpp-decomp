// Slot pool allocator (FUN_002a457c, 11 callers). Plain flags (cantunwind). Agent B, 2026-10-10.
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

struct Slot {                  // 0x30 bytes
    u8  pad0[0xc];
    u8  used;                  // +0xC
    u8  pad1[0x11];
    u16 serial;                // +0x1E
    u16 next;                  // +0x20 (0xFFFF = none)
    u8  pad2[0xe];
};

struct SlotPool {
    u8    pad0[0xc];
    Slot* slots;               // +0xC (192 slots)
    u16   prev;                // +0x10
    u16   last;                // +0x12
    u16   hint;                // +0x14
    u8    enabled;             // +0x16
    u8    pad1;
    u16   count;               // +0x18
    u16 Alloc();
    void InitSlot(u16 i, u16 n) { if (slots != 0) { Slot* e = &slots[i]; e->serial = n; e->next = 0xFFFF; e->used = 1; } }
};

// NONMATCHING, score 45 (23 aligned lines). The copies (en/on, used, base/s) come from a permuter run and
// are what reproduce retail's register use; written plainly the function scores 70. Left: block order
// of the found/not-found exits.
// FUN_002a457c: take a free slot (searching from the hint, then wrapping), chain it after the last one.
u16 SlotPool::Alloc()
{
    u8 en = enabled;
    u8 on;
    on = en;
    if (!slots || on == 0) return 0xFFFF;
    if (last == 0xFFFF) return 0xFFFF;
    u16 idx = 0xFFFF;
    u16 h = hint;
    Slot* p = &slots[h];
    for (u16 i = h; 192 > i; i++, p++) {
        u16 used = p->used;
        if (0 == used) { idx = i; break; }
    }
    if (idx == 0xFFFF) {
        p = slots;
        for (u16 i = 0; h > i; i++, p++) {
            if (0 == p->used) { idx = i; break; }
        }
    }
    Slot* base = slots;
    Slot* s = base;
    if (idx == 0xFFFF) return 0xFFFF;
    s[last].next = idx;
    prev = last;
    last = idx;
    hint = (1 + idx) % 192;
    ++count;
    InitSlot(idx, count);
    return idx;
}
