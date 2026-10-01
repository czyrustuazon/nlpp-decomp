// Score 9 (13 ins): `Handle m_h` as a member at +4 stores the base vptr first (before the Handle
// copy); retail stores it after, which means the Handle is a non-polymorphic base class.
typedef unsigned int u32;
struct Handle { void* m_p; Handle(const Handle& o); };
class CopyBase {
public:
    Handle m_h;
    CopyBase(const CopyBase& o) : m_h(o.m_h) {}
    virtual ~CopyBase();
};
class CopyDerived : public CopyBase {
public:
    u32 m_8;
    CopyDerived(const CopyDerived& o);
    virtual ~CopyDerived();
};
CopyDerived::CopyDerived(const CopyDerived& o) : CopyBase(o) { m_8 = o.m_8; }
