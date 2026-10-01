// nn::os light semaphore (CTR SDK). FUN_0001611c acquire / FUN_00016288 release.
// Library code; matched here because relink needs it as an object.

typedef unsigned int   u32;
typedef unsigned short u16;
typedef short          s16;

struct LightSemaphore { int count; s16 waiters; s16 pad; };

extern u32 g_SyncHandle;   // VA 0x008B8500
extern int SyncWait(u32 handle, void* addr, int a, int b, int c, int d);   // FUN_00022a40
extern void SemRelease(LightSemaphore* sem, int n);                           // FUN_0001b58c

// FUN_0001611c LightSemaphore_Acquire is hand assembly now: lib/nnsdk/nn_os_atomics.s (the C version
// with __ldrex/__strex intrinsics reached score 33 and could not match).

// FUN_00016288
void LightSemaphore_Release(LightSemaphore* sem) { SemRelease(sem, 1); }
