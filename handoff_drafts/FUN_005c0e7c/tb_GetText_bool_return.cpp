// FUN_005c0e7c (file 0x005C0E7C, VA 0x006C0E7C). Game-side text lookup wrapper, 71 callers.
// See technical.md §6.1 and EngPatcher docs/technical.md (TextResource pack+slot).

typedef unsigned int u32;
typedef unsigned char u8;

class TextResource;

// FUN_0056ed00
bool TextResource_Lookup(TextResource* res, char* buf, u32 bufSize, u32 pack, u32 slot, u32 index, bool log);

// VA 0x008AA7A4 (file 0x007AA7A4)
struct TextSystem {
    u8            unk00[0x10];
    TextResource* resource;
};
extern TextSystem g_TextSystem;

bool GetText(char* buf, u32 bufSize, u32 id, u32 index)
{
    if (g_TextSystem.resource != 0) {
        return TextResource_Lookup(g_TextSystem.resource, buf, bufSize, (id & 0xFF00) >> 8, id & 0xFF, index, true);
    }
    return false;
}
