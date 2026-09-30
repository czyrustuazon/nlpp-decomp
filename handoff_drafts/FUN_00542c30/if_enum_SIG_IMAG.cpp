// FUN_00542c30 (file 0x00542C30, VA 0x00642C30). BCLIM parse. See technical.md §6.
// Callees: FUN_00541ce0 (binary-file header check), FUN_00541d60 (next block).

typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;
typedef signed int     s32;

struct BinaryFileHeader {
    u32 signature;
    u16 byteOrder;
    u16 headerSize;
    u32 version;
    u32 fileSize;
    u16 dataBlocks;
    u16 reserved;
};

enum { SIG_IMAG = 0x67616D69 };
struct BinaryBlockHeader {
    u32 kind;
    u32 size;
};

struct ClimResource {
    const void*              file;
    const BinaryBlockHeader* imag;
    const u32*               tail;
};

bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u32 version, u16 minBlocks);
const BinaryBlockHeader* GetNextBlockHeader(const BinaryFileHeader* header, const BinaryBlockHeader* block);

bool ParseClim(ClimResource* res, const void* data, u32 size)
{
    if (data != 0 && ((u32)data & 0x7F) == 0 && (size & 3) == 0 && size > 0x28) {
        const u32* tail = (const u32*)((const u8*)data + size) - 1;
        if (*tail < size) {
            const BinaryFileHeader* header =
                (const BinaryFileHeader*)((const u8*)data + ((*tail + 3) & ~3));
            if (IsValidBinaryFile(header, 0x4D494C43 /* "CLIM" */, 0x02020000, 1)) {
                const BinaryBlockHeader* imag  = 0;
                const BinaryBlockHeader* block = 0;
                for (s32 i = 0; i < header->dataBlocks; i++) {
                    block = GetNextBlockHeader(header, block);
                    if (block->kind == SIG_IMAG) {
                        imag = block;
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
