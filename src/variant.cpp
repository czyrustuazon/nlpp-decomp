// A small tagged value ("Variant"): payload at +0, type tag at +4. Setters FUN_005a0fe0..FUN_005a101c.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int u32;
typedef signed int   s32;
typedef unsigned char u8;

struct Variant {
    u32 value;      // +0 (a u8 for bools)
    s32 type;       // +4 tag: 0 none, 2 int, 3 uint, 5 bool, 6 copied word

    void SetCopy(const u32* src);   // FUN_005a0fe0
    void SetBool(u8 b);             // FUN_005a0ff4
    void SetUInt(u32 v);            // FUN_005a1004
    void SetInt(s32 v);             // FUN_005a1010
    void Clear();                   // FUN_005a101c
};

void Variant::SetCopy(const u32* src)
{
    type = 6;
    value = *src;
}

void Variant::SetBool(u8 b)
{
    *(u8*)&value = b;
    type = 5;
}

void Variant::SetUInt(u32 v)
{
    value = v;
    type = 3;
}

void Variant::SetInt(s32 v)
{
    value = v;
    type = 2;
}

void Variant::Clear()
{
    type = 0;
    value = 0;
}
