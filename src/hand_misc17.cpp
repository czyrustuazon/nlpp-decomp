// Hand-matched leaves from `rank`: FUN_00542154 (sibling of UnlinkRange, src/hand_misc3.cpp),
// FUN_00640748, FUN_0043a548, FUN_002e846c. Names and types are guesses.
// Hard-float ABI. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
typedef unsigned int u32;
typedef int s32;

// FUN_00542154: unlink every node from `node` up to (not including) node->next
struct LNode2 { LNode2* next; LNode2* prev; };
struct LList2 { s32 count; };
// throw() with --exceptions: the exception specification changes this function's codegen too (2026-10-10).
LNode2* UnlinkAll(LList2* l, LNode2* node) throw()
{
    LNode2* end = node->next;
    for (; node != end; ) {
        LNode2* n = node->next;
        LNode2* p = node->prev;
        n->prev = p;
        p->next = n;
        s32 c = l->count;
        l->count = c - 1;
        node->next = 0;
        node->prev = 0;
        node = n;
    }
    return end;
}
