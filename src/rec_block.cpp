// RecRef::Create (FUN_005b08b8): a refcounted block of 12-byte records, Str/text family (plain flags,
// the block 0x578230-0x5b1ba8 has no exception tables). technical.md section 8 (Agent B, 2026-10-10).
// The fallback is a guarded static empty block whose atexit/guard-release calls are weak (nopped).
// Create is a member writing *this: the return object may alias the static block, which is why retail
// stores {obj, 0}, bumps refs, then stores weak = 1 (a returned local merges the stores).
typedef unsigned int u32;
typedef signed int s32;

void* PoolAlloc(u32 size, u32 a, u32 align);          // FUN_00021ca0 (array new)
void* ObjAlloc(u32 size, u32 a, u32 align);           // FUN_00016d5c (object new)

// 12-byte element: vptr, an Inner at +4, a word at +8. ctor FUN_005b5a88, dtor FUN_005b5aac.
struct Rec12 {
    u32 m_0, m_4, m_8;
    Rec12();
    ~Rec12();
    static void* operator new[](unsigned size) throw() { return PoolAlloc(size, 0, 0x10); }
};

// Refcounted owner of a Rec12 array: vptr, -1, refs, array, 0, count. dtor FUN_005b0b40.
class RecBlock {
public:
    s32    m_id;        // +4
    s32    m_refs;      // +8
    Rec12* m_recs;      // +0xC
    u32    m_10;
    u32    m_count;     // +0x14
    RecBlock() : m_id(-1), m_refs(0), m_recs(0), m_10(0), m_count(0) {}
    RecBlock(Rec12* recs, u32 n) : m_id(-1), m_refs(0), m_recs(recs), m_10(0), m_count(n) {}
    virtual ~RecBlock();
    static void* operator new(unsigned size) throw() { return ObjAlloc(size, 0, 0x10); }
};

struct RecRef {
    RecBlock* m_obj;
    u32       m_weak;
    void Set(RecBlock* o) { m_obj = o; m_weak = 0; o->m_refs++; }
    void SetEmpty()
    {
        static RecBlock s_empty;
        Set(&s_empty);
        m_weak = 1;
    }
    void Create(u32 n);
};

// NONMATCHING, score 13: register rotation only (retail: n in r4, vptr in r5, this in r6).
// FUN_005b08b8: a refcounted block of n records (8 if n is 0); the shared empty block, marked
// weak, when an allocation fails.
void RecRef::Create(u32 n)
{
    if (n == 0) n = 8;
    Rec12* recs = new Rec12[n];
    if (recs == 0) {
        SetEmpty();
        return;
    }
    RecBlock* b = new RecBlock(recs, n);
    if (b == 0) {
        delete[] recs;
        SetEmpty();
        return;
    }
    Set(b);
}
