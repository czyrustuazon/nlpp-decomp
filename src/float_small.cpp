// Float leaves (technical.md 6.1.3). Hard-float ABI is the default for these flags: float
// arguments arrive in s0..s2, no --fpu flag is needed. ARMCC 4.1 --cpu=MPCore --arm -O3 -Otime.

float SinIndex(float idx);          // FUN_005325b8 (table sine/cosine on a 256-per-turn index)

// FUN_0059b5d0: clamp x into [lo, hi]. hi is tested first (vmovge + bge), then lo (vmovls).
float Clamp(float x, float lo, float hi)
{
    if (x >= hi) return hi;
    if (x <= lo) return lo;
    return x;
}

// FUN_0059b5f0: radians -> 256-per-turn index (256 / 2pi = 40.7436654), then a tail call.
float RadToSinIndex(float rad)
{
    return SinIndex(rad * 40.7436637878418f);
}
