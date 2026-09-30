// DrawTextToPane (FUN_0054b880): lays out a UTF-8 string into a pane, one glyph at a time.
// First draft from the Ghidra decompile (build/dtp.c). technical.md §6.1.
//
// Structure recovered so far:
//   * Str (src/str.cpp) decodes the source text; a second Str-derived "TaggedStr" (0x228 bytes)
//     expands <..> tags into a StrChar list at +0x218 (count at +0x21C).
//   * Pass 1 splits that list into lines (max 32): line start indices, line widths.
//   * Pass 2 walks the characters again and draws each one at (x, y), advancing by the glyph
//     width, or by the font height for an "icon" char (kind == 1).

typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;
typedef signed int     s32;

struct StrChar { u32 code; u32 kind; StrChar() { code = 0; kind = 0; } };

extern "C" int __cxa_guard_acquire_stub(void*);   // FUN_00203d64

class Str { public: char pad[0x18]; Str(const char*); };
class TaggedStr { public: u8 pad[0x218]; StrChar* m_chars; s32 m_count; u32 m_flags; };

void TaggedStr_Init(TaggedStr*);                      // FUN_0059e380
void TaggedStr_Parse(TaggedStr*, const char*);        // FUN_0059dfc4
void TaggedStr_Free(TaggedStr*);                      // FUN_005a1fd0
void Str_Free(Str*);                                  // FUN_005a2024
void Memset(void*, int, u32);                         // FUN_001fddd8
void Memcpy(void*, const void*, u32);                 // FUN_0020004c
void MemcpyN(void*, const void*, u32);                // FUN_0001026c
s32  GlyphColumns(const char*);                       // FUN_005c0748
s32  GlyphAdvance(void* font, u32 code);              // FUN_00641a70
s32  FontHeight(void* font);                          // FUN_006419d0
s32  FontLineHeight(void* font);                      // FUN_006419e4
void DrawIcon(void* font, s32 x, s32 y, u32 code);    // FUN_005b2550
void DrawGlyph(void* font, s32 x, s32 y, s32 glyph);  // FUN_005b2578

struct Lines { u32 count[32]; s32 cols[32]; s32 n; };

struct Pane {
    u8   pad0[0x13C];
    struct { u8 pad[0x34]; struct { u8 pad[8]; u16 w; u16 h; }* rect; }* layout;   // +0x13C
    u8   pad1[0x160 - 0x140];
    u8   font[0x0C];                 // +0x160
    u16  width, height;              // +0x16C, +0x16E
    u8   pad2[0x178 - 0x170];
    s32  charSpacing;                // +0x178
    s32  lineSpacing;                // +0x17C
    u8   hAlign, vAlign;             // +0x180, +0x181
};

inline const StrChar& CharAt(const TaggedStr& s, s32 i)
{
    static StrChar empty;
    if (i >= 0 && i < s.m_count && s.m_chars != 0) return s.m_chars[i];
    return empty;
}

// Encode a decoded code point as up to 4 bytes, most significant non-zero byte first.
inline void Encode(char* out, u32* tmp, u32 code)
{
    tmp[0] = 0; tmp[1] = 0;
    char* p = (char*)tmp;
    if ((code >> 24) != 0)      { p[0] = code >> 24; p[1] = code >> 16; p[2] = code >> 8; p[3] = code; }
    else if ((code >> 16 & 0xFF) != 0) { p[0] = code >> 16; p[1] = code >> 8; p[2] = code; }
    else if ((code >> 8 & 0xFF) != 0)  { p[0] = code >> 8; p[1] = code; }
    else                        { p[0] = code; }
    MemcpyN(out, tmp, 8);
}

inline s32 AlignOffset(u8 align, s32 room, s32 lines, s32 width, s32 spacing, s32 cell)
{
    s32 used = (lines - 1) * spacing + cell * width;
    if (align == 1) return (room - used) / 2;
    if (align == 2) return room - used;
    return 0;
}

// FUN_0054b880
u32 DrawTextToPane(Pane* pane, s32 x0, s32 y0, s32* src, u32 limit, u32 maxLine)
{
    u32 ok = 1;
    char buf[8];
    u32 tmp[2];
    if (maxLine == 0) maxLine = 10000;

    Str str((const char*)src[1]);
    TaggedStr ts;
    TaggedStr_Init(&ts);
    TaggedStr_Parse(&ts, (const char*)((s32*)&str)[5]);

    Lines built;
    built.n = 0;
    Memset(built.count, 0, 0x80);
    Memset(built.cols, 0, 0x80);

    s32 n = ts.m_count;
    u32 col = 0, next = 0;
    if (n > 0) {
        for (s32 i = 0; i < n; i++) {
            u32 ch = CharAt(ts, i).code;
            if (ch == 0 || ch == 10 || col == maxLine) {
                next = 0;
                built.count[built.n++] = col;
            } else {
                Encode(buf, tmp, ch);
                next = col + 1;
                built.cols[built.n] += GlyphColumns(buf);
            }
            col = next;
        }
        if (next != 0) built.count[built.n++] = next;
    }

    Lines ret, L;
    Memcpy(&ret, &built, 0x104);
    Memcpy(&L, &ret, 0x104);
    s32 nLines = L.n;

    s32 paneW = pane->width, paneH = pane->height;
    s32 rectW = pane->layout->rect->w, rectH = pane->layout->rect->h;
    s32 cell = FontHeight(pane->font) / 2;
    s32 rowH = FontLineHeight(pane->font);
    s32 padX = (rectW - paneW) / 2;

    s32 line = 0;
    s32 x = AlignOffset(pane->hAlign, paneW, L.count[0], L.cols[0], pane->charSpacing, cell) + x0 + padX;
    s32 y = (rectH - paneH) / 2 + AlignOffset(pane->vAlign, paneH, nLines, rowH, pane->lineSpacing, 1) + y0;

    s32 end = n;
    if (limit != 0 && (s32)limit < n) end = limit;
    u32 drawn = 0;
    for (s32 i = 0; i < end; i++) {
        u32 ch = CharAt(ts, i).code;
        bool icon = CharAt(ts, i).kind == 1;
        if (ch == 0) break;
        if (ch == 10 || drawn == maxLine) {
            line++;
            drawn = 0;
            x = AlignOffset(pane->hAlign, paneW, L.count[line], L.cols[line], pane->charSpacing, cell) + x0 + padX;
            y += pane->lineSpacing + rowH;
            if (ch == 10) continue;
        }
        if (ok) ok = GlyphAdvance(pane->font, ch) != 0;
        if (CharAt(ts, i).kind == 1) DrawIcon(pane->font, x, y, CharAt(ts, i).code);
        else DrawGlyph(pane->font, x, y, GlyphAdvance(pane->font, CharAt(ts, i).code));
        Encode(buf, tmp, ch);
        if (!icon) x += GlyphColumns(buf) * cell + pane->charSpacing;
        else       x += pane->charSpacing + FontHeight(pane->font);
        drawn++;
    }
    TaggedStr_Free(&ts);
    Str_Free(&str);
    return ok;
}
