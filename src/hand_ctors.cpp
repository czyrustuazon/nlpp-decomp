// Hand-matched constructors from `rank`: FUN_004178c8, FUN_0015c5d0, FUN_004445f8. Names and types are
// guesses; each class declares one virtual function that is not defined here, so the vtable is an
// external `_ZTV<n>` (value = vptr - 8, see externs.toml). ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

// FUN_004178c8: circular list head (next and prev point at itself)
struct ListHead {
    virtual void Dtor();
    ListHead* next;
    ListHead* prev;
    u32 owner;
    u32 a;
    u32 b;
    ListHead(u32 o);
};
ListHead::ListHead(u32 o)
    : next(this), prev(this), owner(o), a(0), b(0)
{
}

// FUN_0015c5d0: object with a flag byte, a callback pointer (FUN_0015c2dc) and a zeroed word
void Callback15c2dc();                         // FUN_0015c2dc
struct CbBase {
    virtual void Dtor();
    u8 flag;                                   // +4
    void (*cb)();                              // +8
    u32 x;                                     // +0xc
    CbBase() : flag(0), cb(Callback15c2dc), x(0) {}
};
struct CbObj : CbBase {
    virtual void Dtor2();
    CbObj();
};
CbObj::CbObj()
{
}

// FUN_004445f8: two words preset to 0x80000020 and a zeroed word
struct FlagPair {
    virtual void Dtor();
    u32 a;                                     // +4
    u32 b;                                     // +8
    u32 c;                                     // +0xc
    FlagPair();
};
FlagPair::FlagPair()
    : a(0x80000020), b(0x80000020), c(0)
{
}
