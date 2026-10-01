// nn::os light semaphore (CTR SDK). FUN_0001611c acquire / FUN_00016288 release.
// Library code; matched here because relink needs it as an object.

typedef unsigned int   u32;
typedef unsigned short u16;
typedef short          s16;

struct LightSemaphore { int count; s16 waiters; s16 pad; };

extern u32 g_SyncHandle;   // VA 0x008B8500
extern int SyncWait(u32 handle, void* addr, int a, int b, int c, int d);   // FUN_00022a40
extern void SemRelease(LightSemaphore* sem, int n);                           // FUN_0001b58c

inline void AtomicAdd16(volatile unsigned short* p, int d)
{
    volatile unsigned short keep;
    s16 v;
    do { v = (s16)(__ldrexh(p) + d); } while (__strexh(v, p));
    keep = v;
    keep = (unsigned short)v;
}

// FUN_0001611c
// NONMATCHING (score 33): block layout matches retail; the two volatile stores of the
// atomic helper's result (strh [sp]) are dropped and a spare register (r5/r6) is used.
int LightSemaphore_Acquire(LightSemaphore* sem)
{
    for (;;) {
        int c = __ldrex(&sem->count);
        if (c > 0) {
            if (!__strex(c - 1, &sem->count)) return 0;
        } else {
            __clrex();
            AtomicAdd16((volatile unsigned short*)&sem->waiters, 1);
            SyncWait(g_SyncHandle, sem, 1, 1, 0, 0);
            AtomicAdd16((volatile unsigned short*)&sem->waiters, -1);
        }
    }
}

// FUN_00016288
void LightSemaphore_Release(LightSemaphore* sem) { SemRelease(sem, 1); }
