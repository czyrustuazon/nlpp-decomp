typedef unsigned int   u32;
typedef unsigned short u16;
typedef unsigned char  u8;
typedef signed int     s32;

struct StrChar { u32 code; u32 kind; StrChar() { code = 0; kind = 0; } };

class Str {
public:
    void* m_buf; char* m_text; void* m_chars; s32 m_size; s32 m_count; s32 m_capacity;
    Str(const char*);       // FUN_005a1ec8
    ~Str();                 // FUN_005a2024
};
class TaggedStr : public Str {
public:
    StrChar  m_inline[64];
    StrChar* m_chars2;      // +0x218
    s32      m_count2;      // +0x21C
    u32      m_flags;
    TaggedStr();            // FUN_0059e380
    ~TaggedStr();           // FUN_005a1fd0
    bool Parse(const char*);  // FUN_0059dfc4
};

void Memset(void*, u32);                              // FUN_001fddd8
void Memcpy(void*, const void*, u32);                 // FUN_0020004c
void MemcpyN(void*, const void*, u32);                // FUN_0001026c
s32  GlyphColumns(const char*);                       // FUN_005c0748
s32  GlyphAdvance(void* font, u32 code);              // FUN_00641a70
s32  FontHeight(void* font);                          // FUN_006419d0
s32  FontLineHeight(void* font);                      // FUN_006419e4
void DrawIcon(void* font, s32 x, s32 y, u32 code);    // FUN_005b2550
void DrawGlyph(void* font, s32 x, s32 y, s32 glyph);  // FUN_005b2578

struct Lines { s32 count[32]; s32 cols[32]; s32 n; };

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
    if (i >= 0 && s.m_count2 > i && s.m_chars2 != 0) return s.m_chars2[i];
    return empty;
}

// UTF-8 bytes of a decoded code point, most significant first, NUL-terminated.
inline void Encode(char* out, s32 code)
{
    signed char b[8];
    *(u32*)&b[0] = 0; *(u32*)&b[4] = 0;
    b[0] = code >> 24; b[1] = code >> 16; b[2] = code >> 8; b[3] = code; b[4] = 0;
    for (s32 k = 0; k < 5; k++) {
        if (b[0] != 0) break;
        for (s32 j = 0; j < 4; j++) b[j] = b[j + 1];
    }
    MemcpyN(out, b, 8);
}

inline Lines SplitLines(const TaggedStr& ts, u32 maxLine)
{
    Lines l;
    l.n = 0;
    Memset(l.count, 0x80);
    Memset(l.cols, 0x80);
    s32 n = ts.m_count2;
    u32 col = 0;
    for (s32 i = 0; i < n; i++) {
        u32 ch = CharAt(ts, i).code;
        if (ch == 0 || ch == 10 || col == maxLine) {
            l.count[l.n] = col;
            col = 0;
            l.n++;
        } else {
            u32 out[2];
            out[0] = 0; out[1] = 0;
            Encode((char*)out, ch);
            col++;
            l.cols[l.n] += GlyphColumns((char*)out);
        }
    }
    if (col != 0) {
        l.count[l.n] = col;
        l.n++;
    }
    return l;
}

inline s32 Align(u8 align, s32 room, s32 n, s32 k, s32 unit, s32 spacing)
{
    switch (align) {
    case 0: return 0;
    case 1: return (room - ((n - 1) * spacing + unit * k)) / 2;
    case 2: return room - ((n - 1) * spacing + unit * k);
    }
    return 0;
}

// FUN_0054b880
u32 DrawTextToPane(Pane* pane, s32 x0, s32 y0, s32* src, u32 limit, u32 maxLine)
{
    u32 ok = 1;
    if (maxLine == 0) maxLine = 10000;
    Str str((const char*)src[1]);
    TaggedStr ts;
    ts.Parse(str.m_text);
    Lines L = SplitLines(ts, maxLine);

    s32 rectW = pane->layout->rect->w, rectH = pane->layout->rect->h;
    s32 paneW = pane->width, paneH = pane->height;
    s32 padX = (rectW - paneW) / 2;
    s32 padY = (rectH - paneH) / 2;
    s32 fontH = FontHeight(pane->font);
    s32 rowH = FontLineHeight(pane->font);

    s32 line = 0;
    s32 x = Align(pane->hAlign, paneW, L.count[0], L.cols[0], fontH / 2, pane->charSpacing) + x0 + padX;
    s32 y = padY + (Align(pane->vAlign, paneH, L.n, L.n, rowH, pane->lineSpacing) + y0);
    u32 drawn = 0;
    s32 end = ts.m_count2;
    if (limit != 0 && end > limit) end = limit;
    for (s32 i = 0; i < end; i++) {
        u32 ch = CharAt(ts, i).code;
        bool icon = CharAt(ts, i).kind == 1;
        if (ch == 0) break;
        if (ch == 10 || drawn == maxLine) {
            line++;
            drawn = 0;
            x = Align(pane->hAlign, paneW, L.count[line], L.cols[line], fontH / 2, pane->charSpacing) + x0 + padX;
            y = pane->lineSpacing + (rowH + y);
            if (ch == 10) continue;
        }
        s32 adv = GlyphAdvance(pane->font, ch);
        if (ok) ok = adv != 0;
        const StrChar& c = CharAt(ts, i);
        if (c.kind == 1) DrawIcon(pane->font, x, y, c.code);
        else DrawGlyph(pane->font, x, y, GlyphAdvance(pane->font, c.code));
        u32 out[2];
        out[0] = 0; out[1] = 0;
        Encode((char*)out, ch);
        if (icon) x = pane->charSpacing + (x + fontH);
        else      x = GlyphColumns((char*)out) * (fontH / 2) + pane->charSpacing + x;
        drawn++;
    }
    return ok;
}
