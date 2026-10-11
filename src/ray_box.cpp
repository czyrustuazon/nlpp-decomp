// Ray vs oriented box (FUN_005b7534). Plain flags (cantunwind). Agent B, 2026-10-10.
typedef unsigned int u32;
typedef signed int s32;
extern "C" float __fabsf(float);

// nn::math-style 3-vector; the members are out of line in the low SDK block, the destructor is weak.
struct Vec3 {
    float x, y, z;
    Vec3();                              // FUN_00015600 (zero)
    Vec3(const Vec3& v);                 // FUN_000155e0
    ~Vec3();                             // weak (calls nopped)
    Vec3& operator-=(const Vec3& v);     // FUN_000154f8
    Vec3& operator+=(const Vec3& v);     // FUN_000154c4
    Vec3& operator*=(float f);           // FUN_000155b8
};
float Dot(const Vec3* a, const Vec3* b);  // FUN_00640720

struct Ray { Vec3 origin; Vec3 dir; };
struct OBox { u32 pad[4]; Vec3 center; Vec3 axis[3]; float extent[3]; };   // +0x10, +0x1c, +0x40

// NONMATCHING, score 72: float register choice. Retail keeps h, e, f in s18-s20 and 1.0 in s21 (all
// callee-saved) and copies e to s0 before vabs, as if fabs were a call; fabsf, inline Abs, hoisted
// declarations and the permuter did not reproduce it. Vec3 dtor calls are weak (nopped in retail).
// FUN_005b7534: slab test of a ray against an oriented box; on a hit stores the entry point and t.
bool RayHitsBox(Vec3* hit, float* tOut, const Ray* ray, const OBox* box)
{
    float tmin = 0.0f;
    float tmax = 3.4028235e38f;
    Vec3 d(ray->origin);
    d -= box->center;
    for (s32 i = 0; i < 3; i++) {
        Dot(&box->axis[i], &ray->dir);
        float e = Dot(&box->axis[i], &ray->dir);
        float f = Dot(&box->axis[i], &d);
        float h = box->extent[i];
        if (__fabsf(e) < 1.0e-5f) {
            if (__fabsf(f) > h) return false;
        } else {
            float inv = 1.0f / e;
            float t1 = (h - f) * inv;
            float t2 = -(h + f) * inv;
            if (t1 < t2) { float t = t1; t1 = t2; t2 = t; }
            if (tmin < t2) tmin = t2;
            if (tmax > t1) tmax = t1;
            if (tmin > tmax) return false;
        }
    }
    Vec3 p;
    Vec3 v(ray->dir);
    v *= tmin;
    p = ray->origin;
    p += v;
    *hit = p;
    *tOut = tmin;
    return true;
}
