// ApplyGroups (FUN_0027f4dc, 59 callers). Agent B, 2026-10-10.
typedef unsigned int u32;
typedef signed int s32;

// Declared throw() here: with --exceptions (inline unwind entry) the calls then match.
u32 W_277f60(u32 item, u32 arg, u32 flag) throw();       // FUN_00277f60 (src/gen/br_4.cpp)

struct Elem { u32 p0; u32 item; };                // item at +4
struct Node { u32 p0; Node* next; Elem* data; };  // next +4, data +8
struct List { u32 p0; Node head; };               // sentinel at +4 (first node = head.next, +8)
struct Group { u32 p0; u32 item; List* a; List* b; List* c; };   // +4, +8, +0xC, +0x10
struct Owner { u32 pad[9]; Group* groups[2]; };   // +0x24

inline void Notify(Elem* e, u32 arg) { if (e->item != 0) W_277f60(e->item, arg, 0); }

inline void ApplyList(List* l, u32 arg)
{
    if (l == 0) return;
    for (Node* n = l->head.next; n != &l->head; n = n->next) {
        Notify(n->data, arg);
    }
}

// NONMATCHING, score 20: arg and the node pointer swap r4/r5; permuter 50,000 variants, member forms worse.
// FUN_0027f4dc: for both groups at +0x24, notify the group's item, then every item in its three lists.
void ApplyGroups(Owner* o, u32 arg)
{
    for (s32 i = 0; i < 2; i++) {
        Group* g = o->groups[i];
        if (g == 0) continue;
        if (g->item != 0) W_277f60(g->item, arg, 0);
        ApplyList(g->a, arg);
        ApplyList(g->b, arg);
        ApplyList(g->c, arg);
    }
}
