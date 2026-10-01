// Slot-table accessors: a base object holds groups 0x514 bytes apart; each group has an array of
// 0x28-byte slots at +0x104 (the first one is a header, 32 real slots follow). Three tiny leaves
// with 345-664 callers each (technical.md §8 item 4). Names are guesses; the layout comes from
// the disassembly.
//   FUN_005c5cb0 GetSlotField   FUN_005c5e00 GetSlotArrayItem   FUN_005c6e84 FindSlotByKey
// Build: ARMCC 4.1 (b713-b1454) --cpu=MPCore --arm -O3 -Otime

typedef unsigned int u32;

struct Slot {
    u32 f0;
    u32 table;     // +4: pointer to a u32 array, items start at +0xc
    u32 key;       // +8
    u32 value;     // +0xc
    u32 pad[6];
};
// 33 entries: groups are 0x514 apart but 0x104 + 33 * 0x28 is 0x62c, so the last ones overlap the next group
struct Group { char head[0x104]; Slot slot[33]; };
struct SlotOwner { char data[1]; };
inline Group* GroupAt(SlotOwner* o, u32 g) { return (Group*)(o->data + g * 0x514); }

// FUN_005c5cb0
u32 GetSlotField(SlotOwner* o, u32 g, u32 i)
{
    Slot* s = GroupAt(o, g)->slot;
    return i < 32 ? s[i + 1].f0 : 0;
}

// FUN_005c5e00
u32 GetSlotArrayItem(SlotOwner* o, u32 g, u32 i, u32 n)
{
    if (i >= 32) return 0;
    Slot* s = GroupAt(o, g)->slot;
    return ((u32*)s[i].table)[3 + n];
}

// FUN_005c6e84
u32 FindSlotByKey(SlotOwner* o, u32 g, u32 key)
{
    Slot* s = GroupAt(o, g)->slot;
    for (int i = 0; i < 32; i += 2) {
        if (s[i].key == key) return s[i].value;
        if (s[i + 1].key == key) return s[i + 1].value;
    }
    return 0;
}
