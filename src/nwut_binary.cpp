// nw::ut binary file helpers (NintendoWare for CTR). FUN_00541ce0 / FUN_00541d60.
// Library code; matched here because relink needs it as an object. technical.md §6.1.

typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;

struct BinaryFileHeader { u32 signature; u16 byteOrder; u16 headerSize; u32 version; u32 fileSize; u16 dataBlocks; u16 reserved; };
struct BinaryBlockHeader { u32 kind; u32 size; };

inline u32 Major(u32 v) { return v >> 24; }
inline u32 Minor(u32 v) { return (v & 0xFFFFFF) >> 16; }
inline u32 Micro(u32 v) { return (v & 0xFFFF) >> 8; }
inline u32 Rev(u32 v)   { return v & 0xFF; }

// FUN_00541ce0
bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u32 version, u16 minBlocks)
{
    if (header->signature != signature) return false;
    if (header->byteOrder != 0xFEFF) return false;
    if (Major(version) != Major(header->version)) return false;
    if (Minor(version) < Minor(header->version)) return false;
    if (Rev(version) > Rev(header->version)) return false;
    if (header->fileSize < sizeof(BinaryFileHeader) + minBlocks * sizeof(BinaryBlockHeader)) return false;
    if (header->dataBlocks < minBlocks) return false;
    return true;
}

inline u16 Swap16(u16 v) { return (u16)((v >> 8) | ((v & 0xFF) << 8)); }
inline u32 Swap32(u32 v) { return (v << 24) | (((v & 0xFFFF) >> 8) << 16) | (((v & 0xFFFFFF) >> 16) << 8) | (v >> 24); }

// FUN_00541d60. NONMATCHING, score 51: retail does not use rev/rev16 (big-endian swap is done with
// lsl/lsr/orr) and keeps two separate `return 0` tails; every Swap16/Swap32 spelling tried (about 30,
// 2026-09-30) either becomes rev/rev16 or spills to r4/r5. Sequential `|=` gets 53 instructions vs 56.
const BinaryBlockHeader* GetNextBlockHeader(const BinaryFileHeader* header, const BinaryBlockHeader* block)
{
    u32 next;
    u32 fileSize;
    if (header->byteOrder == 0xFEFF) {
        if (block == 0) {
            if (header->dataBlocks == 0) return 0;
            next = (u32)header + header->headerSize;
        } else {
            next = (u32)block + block->size;
        }
        fileSize = header->fileSize;
    } else {
        if (block == 0) {
            if (header->dataBlocks == 0) return 0;
            next = (u32)header + Swap16(header->headerSize);
        } else {
            next = (u32)block + Swap32(block->size);
        }
        fileSize = Swap32(header->fileSize);
    }
    if (next < (u32)header + fileSize) return (const BinaryBlockHeader*)next;
    return 0;
}
