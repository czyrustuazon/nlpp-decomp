// Hand-matched constructor from `rank`: FUN_003938d8. Names and types are guesses; one virtual function
// is declared and not defined, so the vtable is an external `_ZTV10TimedState` (value = vptr - 8).
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;
typedef unsigned long long u64;

void Cb3933ec();                       // FUN_003933ec
extern u64 g_stamp;                    // VA 0x008AABF8: 8-byte value copied into the object

struct TimedState {
    virtual void Dtor();
    u8 flag;                           // +4
    void (*cb)();                      // +8
    u32 a, b, c;                       // +0xc, +0x10, +0x14
    u64 stamp;                         // +0x18
    u32 d;                             // +0x20
    u32 w0, w1, w2, w3, w4, w5, w6;    // +0x24 .. +0x3c
    u8 f0, f1, f2;                     // +0x40 .. +0x42
    TimedState();
};

TimedState::TimedState()
    : flag(0), cb(Cb3933ec), a(0), b(0), c(0), stamp(g_stamp), d(0),
      w0(0), w1(0), w2(0), w3(0), w4(0), w5(0), w6(0), f0(0), f1(0), f2(0)
{
}
