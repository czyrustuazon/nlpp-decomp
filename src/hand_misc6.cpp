// Hand-matched leaf from `rank`: FUN_00278094 (76 callers). Names and types are guesses.
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef unsigned char u8;

struct Child { char p0[0x10]; u32 weight; };          // +0x10
struct Mgr {
    virtual void m0(); virtual void m1(); virtual void m2(); virtual void m3(); virtual void m4();
    virtual void m5(); virtual void m6(); virtual void m7(); virtual void m8(); virtual void m9();
    virtual void m10();
    virtual void Select(Child* c, u32 on);            // vtable +0x2c
};
struct Group {
    u32 p0;
    Mgr* mgr;                                         // +4
    char p1[0x1c - 8];
    Child* kids[32];                                  // +0x1c
    u32 pad0[2];
    u32 sel;                                          // +0xa4
    int a8, ac;                                       // +0xa8, +0xac
    int count;                                        // +0xb0
    u32 pad;
    float weight;                                     // +0xb8
    char p2[0xc4 - 0xbc];
    u8 flag;                                          // +0xc4
};

void SelectChild(Group* g, int sel)
{
    g->a8 = -1;
    g->ac = -1;
    g->sel = sel;
    g->flag = 0;
    g->weight = 0.0f;
    for (int i = 0; i < g->count && i < 32; i++) {
        Child* c = g->kids[i];
        if (c != 0) {
            c->weight = *(u32*)&g->weight;
            g->mgr->Select(g->kids[i], i == sel);
        }
    }
}
