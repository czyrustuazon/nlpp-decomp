// Growable word array push (FUN_004356a4, 12 callers). Plain flags (cantunwind). Agent B, 2026-10-10.
typedef unsigned int u32;
typedef signed int s32;

inline void* operator new(unsigned, void* p) throw() { return p; }

struct Allocator {
    virtual void v0(); virtual void v1();
    virtual void* Alloc(u32 size, u32 align);    // +8
    virtual void Free(void* p);                  // +0xC
};

// Growable array of words (nw::ut::MoveArray-like): capacity in the low 30 bits of +0xC, the top bits
// are the kind; only kind 1 (0x40000000, allocator-owned) can grow.
struct PtrArray {
    Allocator* m_alloc;
    u32*       m_begin;
    u32*       m_end;
    u32        m_cap;
    s32 Size() const { return m_end - m_begin; }
    s32 Capacity() const { return m_cap & ~0xC0000000; }
    bool Reserve(s32 n)
    {
        if (n <= Capacity()) return true;
        if (m_alloc == 0 || (m_cap & 0xC0000000) != 0x40000000) return false;
        u32* buf = (u32*)m_alloc->Alloc(n * 4, 0x20);
        s32 count = 0;
        if (m_begin != m_end) {
            u32* d = buf;
            for (u32* s = m_begin; s != m_end; s++, d++) new (d) u32(*s);
            count = Size();
        }
        if (m_begin != 0) m_alloc->Free(m_begin);
        m_end = buf + count;
        m_begin = buf;
        m_cap = (m_cap & 0xC0000000) | n;
        return true;
    }
    void PushBack(u32 v)
    {
        if (Capacity() <= Size()) {
            if (!Reserve(Capacity() != 0 ? Capacity() * 2 : 1)) return;
        }
        new (m_end) u32(v);
        m_end++;
    }
};

struct ArrHolder { u32 p0, p4; PtrArray* arr; };

// NONMATCHING, score 36. Left: the copy loop re-reads m_end (retail keeps it in a register), and ARMCC
// loads m_cap before storing m_end/m_begin (retail stores them first). Placement new must be throw()
// for retail's null check on each destination.
// FUN_004356a4: append v to the array held at +8.
void ArrHolder_Push(ArrHolder* h, u32 v)
{
    h->arr->PushBack(v);
}
