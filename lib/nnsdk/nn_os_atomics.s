@ nn::os atomics and the light semaphore (CTR SDK). Hand assembly: ARMCC cannot reproduce the register
@ choices around ldrex/strex (technical.md 6.1.1), so these are .s sources assembled with clang.
        .syntax unified
        .arm
        .arch   armv6k
        .text

@ FUN_0001611c: LightSemaphore_Acquire(sem). count at +0, waiter count (s16) at +4.
        .global _Z22LightSemaphore_AcquireP14LightSemaphore
        .type   _Z22LightSemaphore_AcquireP14LightSemaphore, %function
_Z22LightSemaphore_AcquireP14LightSemaphore:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        ldr     r5, 9f
        mov     r4, r0
1:
        ldrex   r0, [r4]
        cmp     r0, #0
        ble     2f
        sub     r0, r0, #1
        strex   r2, r0, [r4]
        cmp     r2, #0
        bne     1b
        add     sp, sp, #0xc
        mov     r0, #0
        pop     {r4, r5, pc}
2:
        clrex
        add     r0, r4, #4
3:
        ldrexh  r1, [r0]
        add     r1, r1, #1
        sxth    r1, r1
        strexh  r2, r1, [r0]
        cmp     r2, #0
        bne     3b
        mov     r2, #0
        strh    r1, [sp]
        uxth    r0, r1
        strh    r0, [sp]
        ldr     r0, [r5]
        mov     r3, r2
        strd    r2, r3, [sp]
        mov     r3, #1
        mov     r1, r4
        mov     r2, r3
        bl      _Z8SyncWaitjPviiii
        add     r0, r4, #4
4:
        ldrexh  r1, [r0]
        sub     r1, r1, #1
        sxth    r1, r1
        strexh  r2, r1, [r0]
        cmp     r2, #0
        bne     4b
        strh    r1, [sp]
        uxth    r0, r1
        strh    r0, [sp]
        b       1b
9:
        .word   g_SyncHandle
        .size   _Z22LightSemaphore_AcquireP14LightSemaphore, . - _Z22LightSemaphore_AcquireP14LightSemaphore

@ FUN_00016290: LightSemaphore_Init(sem, initial, max)
        .global LightSemaphore_Init
        .type   LightSemaphore_Init, %function
LightSemaphore_Init:
        push    {r4, r5, r6}
        mov     ip, #0
        str     ip, [r0]
        strh    ip, [r0, #4]
        cmp     r2, #0x80000000
        mvnhs   r2, #0x80000000
        cmp     r1, r2
        mov     r3, r0
        movhi   r1, r2
1:
        ldrex   r5, [r3]
        strex   r4, r1, [r3]
        cmp     r4, #0
        bne     1b
        add     r1, r3, #4
2:
        ldrexh  r4, [r1]
        sxth    r4, ip
        strexh  r6, r4, [r1]
        cmp     r6, #0
        bne     2b
        strh    r2, [r3, #6]
        pop     {r4, r5, r6}
        bx      lr
        .size   LightSemaphore_Init, . - LightSemaphore_Init

@ FUN_0001b4bc: AtomicSwap1(p): atomically store 1 (old value discarded in r2)
        .global AtomicSet1
        .type   AtomicSet1, %function
AtomicSet1:
        mov     r1, #1
1:
        ldrex   r2, [r0]
        strex   ip, r1, [r0]
        cmp     ip, #0
        bne     1b
        bx      lr
        .size   AtomicSet1, . - AtomicSet1

@ FUN_0001b240: SetFlagAndState(obj, on): AtomicSet1(&obj->f4); obj->f0 = on ? -2 : -1 (atomic)
        .global AtomicSetState
        .type   AtomicSetState, %function
AtomicSetState:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        add     r0, r0, #4
        bl      AtomicSet1
        cmp     r5, #0
        mvnne   r1, #1
        mvneq   r1, #0
1:
        ldrex   r0, [r4]
        strex   r3, r1, [r4]
        cmp     r3, #0
        bne     1b
        pop     {r4, r5, r6, pc}
        .size   AtomicSetState, . - AtomicSetState

@ FUN_004f4574: AtomicTryNegate(p): if *p > 0 then *p = -*p, return 1 else return 0
        .global AtomicTryNegate
        .type   AtomicTryNegate, %function
AtomicTryNegate:
1:
        ldrex   r1, [r0]
        cmp     r1, #0
        ble     2f
        rsb     r1, r1, #0
        strex   r3, r1, [r0]
        cmp     r3, #0
        bne     1b
        mov     r0, #1
        bx      lr
2:
        clrex
        mov     r0, #0
        bx      lr
        .size   AtomicTryNegate, . - AtomicTryNegate
