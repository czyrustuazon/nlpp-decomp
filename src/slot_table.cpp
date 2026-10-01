// Slot-table accessors: a base object holds an array of 0x514-byte groups; each group has 0x28-byte
// slots starting at +0x104 (at most 32). Three tiny leaves with 345-664 callers each (technical.md §8
// item 4). Names are guesses; the layout comes from the disassembly.
//   FUN_005c5cb0 GetSlotField   FUN_005c5e00 GetSlotArrayItem   FUN_005c6e84 FindSlotByKey
// Build: ARMCC 4.1 (b713-b1454) --cpu=MPCore --arm -O3 -Otime

typedef unsigned int u32;

struct Slot {
    u32 f0;
    u32 table;     // pointer to a u32 array, items start at +0xc
    u32 key;       // +8
    u32 value;     // +0xc
    u32 pad[6];
};
struct Group { char head[0x104]; Slot slot[32]; };   // groups are 0x514 apart, so slot 31 overlaps the next group
struct SlotOwner { char data[1]; };
inline Group* GroupAt(SlotOwner* o, u32 g) { return (Group*)(o->data + g * 0x514); }

// FUN_005c5cb0
u32 GetSlotField(SlotOwner* o, u32 g, u32 i)
{
    if (i >= 32) return 0;
    return *(u32*)((char*)&GroupAt(o, g)->slot[i] + 0x28);
}

// FUN_005c5e00
u32 GetSlotArrayItem(SlotOwner* o, u32 g, u32 i, u32 n)
{
    if (i >= 32) return 0;
    return ((u32*)GroupAt(o, g)->slot[i].table)[3 + n];
}

// FUN_005c6e84
u32 FindSlotByKey(SlotOwner* o, u32 g, u32 key)
{
    for (int i = 0; i < 32; i += 2) {
        if (GroupAt(o, g)->slot[i].key == key) return GroupAt(o, g)->slot[i].value;
        if (GroupAt(o, g)->slot[i + 1].key == key) return GroupAt(o, g)->slot[i + 1].value;
    }
    return 0;
}
