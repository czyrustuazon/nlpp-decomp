// Remove-by-value on a pointer vector owned at +0x10 of an object (66 callers). After the shift the
// removed object gets a virtual call (vtable slot 2, probably Release). Names and types are guesses.
// The shift is a std::vector::erase: an "assign" phase over the first slot (copied through a float
// register, so the element type is float-sized) then a "construct" phase with a null-guard.
// NONMATCHING (score 13): structure and instruction mix match; retail uses lr as a scratch register
// (push {r4, lr}) where this uses r4/r5. Build: ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime
typedef unsigned int u32;
struct Item;
struct ItemVtbl { void* slot0; void* slot1; void (*release)(Item*); };
struct Item { ItemVtbl* vt; };
struct PtrVec { u32 pad0; Item** begin; Item** end; };
struct Owner { char pad[0x10]; PtrVec* items; };
void RemoveItem(Owner* o, Item* x)
{
    PtrVec* v = o->items;
    if (v == 0) return;
    Item** end = v->end;
    for (Item** it = v->begin; it != end; ++it) {
        if (*it == x) {
            Item** dst = it; Item** dstEnd = it + 1; Item** src = it + 1;
            while (dst != dstEnd && src != v->end) {
                if (dst) { float t = *(float*)src; *(float*)dst = t; }
                ++src; ++dst;
            }
            if (dst == dstEnd) {
                while (src != v->end) { if (dst) *dst = *src; ++src; ++dst; }
            }
            v->end = dst;
            if (x) x->vt->release(x);
            return;
        }
    }
}
