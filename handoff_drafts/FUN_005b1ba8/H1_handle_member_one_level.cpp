// Score 9 (target 14 ins, mine 11): Handle as a base of CopyBase would store only the derived vptr
// (the compiler drops the inlined base's vptr store) when the word at +8 lives in CopyDerived.
typedef unsigned int u32;
struct Handle { void* m_p; Handle(const Handle& o); };
class CopyBase : public Handle {
public:
    CopyBase(const CopyBase& o) : Handle(o) {}
    virtual ~CopyBase();
};
class CopyDerived : public CopyBase {
public:
    u32 m_8;
    CopyDerived(const CopyDerived& o);
    virtual ~CopyDerived();
};
CopyDerived::CopyDerived(const CopyDerived& o) : CopyBase(o) { m_8 = o.m_8; }
