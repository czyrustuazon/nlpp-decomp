// FUN_005bc6c0 (141 callers): store a mode byte and derive four float weights from it.
// Names are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned char u8;
typedef unsigned int u32;

struct Mode {
    char p0[0x5c];
    float a, b, c, d;      // +0x5c..+0x68
    char p1[3];
    u8 mode;               // +0x6f
};

void SetMode(Mode* m, u32 v)
{
    if (v >= 6) v = 0;
    m->mode = v;
    if (v == 2) {
        m->a = 1.0f; m->b = 1.0f; m->c = 1.0f;
    } else {
        m->a = 0.0f; m->b = 0.0f;
        if (v == 3) { m->c = 1.0f; m->d = 1.0f; return; }
        m->c = 0.0f;
    }
    m->d = 1.0f;
}
