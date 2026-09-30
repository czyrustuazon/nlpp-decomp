typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;
typedef signed int     s32;
struct BinaryFileHeader { u32 signature; u16 byteOrder; u16 headerSize; u32 version; u32 fileSize; u16 dataBlocks; u16 reserved; };
struct BinaryBlockHeader { u32 kind; u32 size; };
struct ClimResource { const void* file; const BinaryBlockHeader* imag; const u32* tail; };
bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u32 version, u16 minBlocks);
const BinaryBlockHeader* GetNextBlockHeader(const BinaryFileHeader* header, const BinaryBlockHeader* block);
inline u32 RoundUp(u32 x, u32 base) { return (x + (base - 1)) & ~(base - 1); }
inline const void* AddOffsetToPtr(const void* ptr, u32 offset) { return (const void*)((u32)ptr + offset); }

bool ParseClim(ClimResource* res, const void* data, u32 size)
{
    if (data != 0 && ((u32)data & 0x7F) == 0 && (size & 3) == 0 && size > 0x28) {
        const u32* tail = (const u32*)AddOffsetToPtr(data, size - 4);
        if (*tail < size) {
            u32 fileSize = RoundUp(*tail, 4); const BinaryFileHeader* header = (const BinaryFileHeader*)AddOffsetToPtr(data, fileSize);
            if (IsValidBinaryFile(header, 0x4D494C43, 0x02020000, 1)) {
                const BinaryBlockHeader* imag  = 0;
                const BinaryBlockHeader* block = 0;
                for (int i = 0; i < header->dataBlocks; i++) {
                    block = GetNextBlockHeader(header, block);
                    switch (block->kind) {
                    case 0x67616D69:
                        imag = block;
                        break;
                    }
                }
                if (imag != 0) {
                    res->file = data;
                    res->imag = imag;
                    res->tail = tail;
                    return true;
                }
            }
        }
    }
    res->file = 0;
    res->imag = 0;
    res->tail = 0;
    return false;
}
