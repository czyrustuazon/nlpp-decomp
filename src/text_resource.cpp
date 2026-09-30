// Text resource lookup (textresource_jpn.trb runtime). See technical.md §6.1 and
// EngPatcher docs/technical.md (TextResource pack+slot, TRB layout).
//
// GetText and TextResource::Lookup share one static data block at VA 0x008AA7A4
// (initialized flag at +0x00, resource pointer at +0x10), so they are one translation unit.
//
// Build: ARMCC 4.1 (b713-b1454) --cpu=MPCore --arm -O3 -Otime --split_sections
//   FUN_005c0e7c GetText               MATCH (score 0)
//   FUN_0056ed00 TextResource::Lookup  NONMATCHING (score 9, register allocation only; §6.1)

typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;
typedef signed int     s32;

// ---- nn::os (CTR SDK, library; not matched here) ----

struct LightSemaphore { s32 count; s32 waiters; };
s32  LightSemaphore_Acquire(LightSemaphore*);   // FUN_0001611c
void LightSemaphore_Release(LightSemaphore*);   // FUN_00016288 (tail-calls FUN_0001b58c(sem, 1))

// ---- runtime helpers ----

u32   Strlen(const char*);                                   // FUN_00200e60
char* Strcpy(char* dst, const char* src);                    // FUN_00202a48
void* Alloc(u32 size, u32 heap, u32 align);                  // FUN_00021ca0
void  Free(void*);                                           // FUN_001fcd88

// ---- TRB data ----

struct TextEntry { u32 offset; u16 length; u16 type; };      // type 1 = plain string, 2 = empty, else codebook
struct TextSlot  { u32 count; u16 entry[1]; };
struct TextPack  { u32 count; TextSlot* slot[1]; };

// Last lookup result, VA 0x009A04F4. Only `valid` is reset per call.
struct TextResult { u32 offset; u32 length; u16 type; u16 valid; };

class TextLogger;
s32 TextLogger_Log(TextLogger*, const char* text, u32 bufSize, char* copy);  // FUN_005f1f08

class TextResource {
public:
    u32         unk00;
    TextPack**  packs;          // +0x04
    TextEntry*  entries;        // +0x08
    const u8*   strings;        // +0x0C
    const u16*  codeOffsets;    // +0x10
    const char* codeStrings;    // +0x14
    u8          unk18[0x1001C - 0x18];
    TextLogger* logger;         // +0x1001C

    void Init();                // FUN_0056eb20
    bool Lookup(char* buf, u32 bufSize, u32 pack, u32 slot, u32 index, bool log);

    void Find(TextResult* r, u32 pack, u32 slot, u32 index) const {
        r->valid = 0;
        TextPack* p = packs[pack];
        if (p != 0 && slot < p->count) {
            TextSlot* s = p->slot[slot];
            if (index < s->count) {
                u32 idx = s->entry[index];
                const TextEntry* e = entries + idx;
                r->offset = e->offset;
                r->length = e->length;
                r->type   = e->type;
                r->valid  = 1;
            }
        }
    }
};

// ---- node pool, VA 0x009A0600 ----

struct PoolNode { u8 unk00[0x14]; PoolNode* next; PoolNode* prev; };
struct Pool {
    PoolNode*      freeHead;    // +0x000
    PoolNode*      usedHead;    // +0x004
    u8             unk008[0x708 - 8];
    s32            freeCount;   // +0x708
    u32            unk70C;
    LightSemaphore sem710;
    LightSemaphore sem718;
    LightSemaphore sem720;
};

inline void Pool_MoveFreeToUsed(Pool* pool)
{
    LightSemaphore_Acquire(&pool->sem718);
    LightSemaphore_Acquire(&pool->sem710);
    pool->freeCount--;
    PoolNode* node = pool->freeHead;
    pool->freeHead = node->next;
    if (node->next != 0) node->next->prev = node->prev;
    if (node->prev != 0) node->prev->next = node->next;
    node->next = 0;
    node->prev = 0;
    if (pool->usedHead == 0) {
        pool->usedHead = node;
    } else {
        node->next = pool->usedHead;
        pool->usedHead->prev = node;
        pool->usedHead = node;
    }
    LightSemaphore_Release(&pool->sem710);
    LightSemaphore_Release(&pool->sem720);
}

// ---- statics ----

struct TextSystem {
    bool          initialized;  // +0x00
    u8            unk01[0xF];
    TextResource* resource;     // +0x10
};

extern TextSystem g_TextSystem;   // VA 0x008AA7A4
extern Pool       g_Pool;         // VA 0x009A0600
extern TextResult g_TextResult;   // VA 0x009A04F4

// FUN_0056ed00. NONMATCHING, score 9: retail keeps 1 in sl and &g_TextSystem in fp (swapped
// here), and uses r1 rather than r0 for freeCount--. Everything else matches.
bool TextResource::Lookup(char* buf, u32 bufSize, u32 pack, u32 slot, u32 index, bool log)
{
    if (!g_TextSystem.initialized) {
        Pool_MoveFreeToUsed(&g_Pool);
        g_TextSystem.initialized = true;
        Init();
    }

    if (buf == 0) {
        return false;
    }

    TextResult& r = g_TextResult;
    Find(&r, pack, slot, index);

    if (r.length + 1 > bufSize) {
        if (bufSize != 0) {
            buf[0] = 0;
        }
        return false;
    }

    const u8* src = strings + r.offset;
    if (r.type == 1) {
        Strcpy(buf, (const char*)src);
    } else if (r.type == 2) {
        buf[0] = 0;
    } else {
        char* out = buf;
        while (*src != 0) {
            u32 code = *src;
            if (code & 0x80) {
                code = ((code & 0x7F) << 8) | src[1];
                src += 2;
            } else {
                src += 1;
            }
            const char* w = codeStrings + codeOffsets[code];
            while (*w != 0) {
                *out++ = *w++;
            }
            *out = 0;
        }
    }

    if (log && logger != 0) {
        char* copy = (char*)Alloc(Strlen(buf) + 1, 0, 0x10);
        Strcpy(copy, buf);
        s32 ret = TextLogger_Log(logger, buf, bufSize, copy);
        Free(copy);
        if (ret < 0) {
            return false;
        }
    }
    return true;
}

// FUN_005c0e7c. Returns bool: callers test r0 after the call (Ghidra shows void).
// id = (pack << 8) | slot.
bool GetText(char* buf, u32 bufSize, u32 id, u32 index)
{
    if (g_TextSystem.resource != 0) {
        return g_TextSystem.resource->Lookup(buf, bufSize, (id & 0xFF00) >> 8, id & 0xFF, index, true);
    }
    return false;
}
