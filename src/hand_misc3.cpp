// Hand-matched leaves from `rank`: FUN_005e7f50 (58 callers), FUN_005421a0 (57).
// Names and types are guesses. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;

// FUN_005e7f50: ask the handler (vtable +0x2c) for a result and hand it to a sink (vtable +8)
struct Sink3 {
    virtual void v0(); virtual void v1();
    virtual void Put(u32 r);
};
struct Handler3 {
    virtual void h0(); virtual void h1(); virtual void h2(); virtual void h3(); virtual void h4();
    virtual void h5(); virtual void h6(); virtual void h7(); virtual void h8(); virtual void h9();
    virtual void h10();
    virtual u32 Get(u32 key, u32 arg);    // vtable +0x2c
};
struct Owner3 { u32 p0; Handler3* h; };   // +4

bool ForwardGet(Owner3* o, u32 key, Sink3* out, u32 arg)
{
    bool ok = false;
    Handler3* h = o->h;
    if (h != 0) {
        u32 r = h->Get(key, arg);
        if (r != 0) {
            out->Put(r);
            ok = true;
        }
    }
    return ok;
}

// FUN_005421a0: unlink nodes [first, end) from an intrusive doubly linked list, counting down
typedef int s32;
struct Node { Node* next; Node* prev; };
struct List { s32 count; };

Node* UnlinkRange(List* l, Node* first, Node* end)
{
    while (first != end) {
        Node* n = first->next;
        Node* p = first->prev;
        n->prev = p;
        p->next = n;
        l->count--;
        first->next = 0;
        first->prev = 0;
        first = n;
    }
    return end;
}
