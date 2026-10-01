// A polymorphic object with an Inner handle at +4: constructor, complete and deleting destructors
// (FUN_005a051c, FUN_005a055c, FUN_005a0538). ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.
// technical.md 6.1.3. The vptr is stored with a post-increment (`str r1, [r0], #4`), and Inner's
// constructor/destructor are called on r0 = this + 4 and the result is rebased with `sub r0, r0, #4`.
typedef unsigned int u32;

struct Inner {
    u32 m_p;
    Inner();
    ~Inner();
};

class Item {
public:
    Inner m_in;             // +4 (the vptr is at +0)
    Item();
    virtual ~Item();
};

Item::Item()
{
}

Item::~Item()
{
}
