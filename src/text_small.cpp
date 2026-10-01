// Small game-code helpers around the text/Str/TaggedStr/Font family (callees of DrawTextToPane).
// ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime. technical.md 6.1.3.
typedef unsigned int   u32;
typedef unsigned short u16;
typedef signed int     s32;

struct FontInfo { u16 pad0[3]; u16 height; u16 lineHeight; };   // height +6, lineHeight +8
struct FontRes  { FontInfo* info; };                            // first word
struct Font     { u32 pad[2]; FontRes* res; };                  // res at +8

struct TaggedStr;
void TaggedStr_Init(TaggedStr*);

// FUN_006419d0
u32 FontHeight(Font* f)
{
    FontRes* r = f->res;
    if (r != 0) return r->info->height;
    return 0;
}

// FUN_006419e4
u32 FontLineHeight(Font* f)
{
    FontRes* r = f->res;
    if (r != 0) return r->info->lineHeight;
    return 0;
}

s32  FontRes_Advance(FontRes*, u32 code);                  // FUN_0063fe8c
void FontRes_DrawIcon(FontRes*);                           // FUN_0058e96c
void FontRes_DrawGlyph(FontRes*, s32, s32, s32, u32);      // FUN_0058eeb0
// FUN_005c04bc (0x154 bytes, UTF-8 lead-byte decode; not matched). It is DEFINED in the same
// translation unit as GlyphColumns in retail: ARMCC then knows the callee needs no 8-byte
// stack padding and emits `PUSH {lr}` (= `str lr, [sp, #-4]!`) instead of `push {r4, lr}`. A
// bare declaration gives push {r4, lr}. The body below is a stand-in so the compiler sees a
// definition; it is never linked (relink places only the functions in functions.toml).
__attribute__((noinline)) u32 GlyphWidthOf(const char* p);

// FUN_00641a70
s32 GlyphAdvance(Font* f, u32 code)
{
    FontRes* r = f->res;
    if (r != 0) return FontRes_Advance(r, code);
    return 0;
}

// FUN_005b2550
void DrawIcon(Font* f)
{
    FontRes* r = f->res;
    if (r != 0) FontRes_DrawIcon(r);
}

// FUN_005b2578
void DrawGlyph(Font* f, s32 x, s32 y, s32 glyph)
{
    FontRes* r = f->res;
    if (r != 0) FontRes_DrawGlyph(r, x, y, glyph, 0);
}

// FUN_005c0748
s32 GlyphColumns(const char* utf8)
{
    return GlyphWidthOf(utf8) < 0x80u ? 1 : 2;
}

__attribute__((noinline)) u32 GlyphWidthOf(const char* p) { return (unsigned char)*p; }
