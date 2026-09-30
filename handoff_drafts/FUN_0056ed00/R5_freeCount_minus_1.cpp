typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;
typedef signed int     s32;

struct TextEntry { u32 offset; u16 length; u16 type; };
struct TextSlot  { u32 count; u16 entry[1]; };
struct TextPack  { u32 count; TextSlot* slot[1]; };

class TextLogger;
struct TextResult { u32 offset; u32 length; u16 type; u16 valid; };
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

    void Init();
    void Find(TextResult* r, u32 pack, u32 slot, u32 index) const {
        r->valid = 0;
        TextPack* p = packs[pack];
        if (p != 0 && slot < p->count) {
            TextSlot* s = p->slot[slot];
            if (index < s->count) {
                const TextEntry* e = &entries[s->entry[index]];
                r->offset = e->offset;
                r->length = e->length;
                r->type   = e->type;
                r->valid  = 1;
            }
        }
    }                // FUN_0056eb20
    bool Lookup(char* buf, u32 bufSize, u32 pack, u32 slot, u32 index, bool log);
};


struct PoolNode { u8 unk00[0x14]; PoolNode* next; PoolNode* prev; };
struct Mutex { u32 unk[2]; };
void Mutex_Lock(Mutex*);        // FUN_0001611c
void Mutex_Unlock(Mutex*);      // FUN_00016288
struct Pool {
    PoolNode* freeHead;         // +0x000
    PoolNode* usedHead;         // +0x004
    u8        unk008[0x708 - 8];
    s32       freeCount;        // +0x708
    u32       unk70C;
    Mutex     m710;
    Mutex     m718;
    Mutex     m720;
};

inline void Pool_MoveFreeToUsed(Pool* pool)
{
    Mutex_Lock(&pool->m718);
    Mutex_Lock(&pool->m710);
    pool->freeCount = pool->freeCount - 1;
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
    Mutex_Unlock(&pool->m710);
    Mutex_Unlock(&pool->m720);
}

struct TextSystem { bool initialized; };

extern TextSystem g_TextSystem;   // VA 0x008AA7A4
extern Pool       g_Pool;         // VA 0x009A0600
extern TextResult g_TextResult;   // VA 0x009A04F4

u32   Strlen(const char*);                        // FUN_00200e60
void* Alloc(u32 size, u32 heap, u32 align);       // FUN_00021ca0
char* Strcpy(char* dst, const char* src);         // FUN_00202a48
s32   TextLogger_Log(TextLogger*, const char*, u32, char*); // FUN_005f1f08
void  Free(void*);                                // FUN_001fcd88

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
