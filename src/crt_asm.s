@ Hand-written C runtime routines (ARM assembly) used by hundreds of callers. Assembled with clang
@ (ctrdecomp compile_obj handles .s sources); the bytes must equal retail. Names are guesses.
        .syntax unified
        .arm
        .text

@ FUN_001fddd8: zero-fill; r0 = destination, r1 = byte count
        .global MemZero
        .type   MemZero, %function
MemZero:
        mov     r2, #0
        stmdb   sp!, {lr}
        mov     r3, r2
        mov     ip, r2
        mov     lr, r2
        subs    r1, r1, #0x20
1:
        stmhs   r0!, {r2, r3, ip, lr}
        stmhs   r0!, {r2, r3, ip, lr}
        subshs  r1, r1, #0x20
        bhs     1b
        lsls    r1, r1, #28
        stmhs   r0!, {r2, r3, ip, lr}
        stmmi   r0!, {r2, r3}
        ldm     sp!, {lr}
        lsls    r1, r1, #2
        strhs   r2, [r0], #4
        bxeq    lr
        strhmi  r2, [r0], #2
        tst     r1, #0x40000000
        strbne  r2, [r0], #1
        bx      lr
        .size   MemZero, . - MemZero

@ FUN_0020004c: copy for word-aligned src and dst; r0 = dst, r1 = src, r2 = byte count
        .global MemCopyAligned
        .type   MemCopyAligned, %function
MemCopyAligned:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        subs    r2, r2, #0x20
        blo     3f
        ldm     r1!, {r3, r4, r5, r6}
        pld     [r1, #0x40]
        ldm     r1!, {r7, r8, sb, sl}
2:
        stm     r0!, {r3, r4, r5, r6}
        subs    r2, r2, #0x20
        stm     r0!, {r7, r8, sb, sl}
        ldmhs   r1!, {r3, r4, r5, r6}
        pld     [r1, #0x40]
        ldmhs   r1!, {r7, r8, sb, sl}
        bhs     2b
3:
        lsls    ip, r2, #28
        ldmhs   r1!, {r3, r4, ip, lr}
        stmhs   r0!, {r3, r4, ip, lr}
        ldmmi   r1!, {r3, r4}
        stmmi   r0!, {r3, r4}
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        lsls    ip, r2, #30
        ldrhs   r3, [r1], #4
        strhs   r3, [r0], #4
        bxeq    lr
        lsls    r2, r2, #31
        ldrhhs  r3, [r1], #2
        ldrbmi  r2, [r1], #1
        strhhs  r3, [r0], #2
        strbmi  r2, [r0], #1
        bx      lr
        .size   MemCopyAligned, . - MemCopyAligned

@ FUN_00202b20: memcpy for any alignment (r0 = dst, r1 = src, r2 = byte count); falls into
@ MemCopyAligned when src is word aligned
        .global MemCopy
        .type   MemCopy, %function
MemCopy:
        cmp     r2, #3
        bls     3f
        ands    ip, r0, #3
        beq     1f
        ldrb    r3, [r1], #1
        cmp     ip, #2
        add     r2, r2, ip
        ldrbls  ip, [r1], #1
        strb    r3, [r0], #1
        ldrblo  r3, [r1], #1
        strbls  ip, [r0], #1
        sub     r2, r2, #4
        strblo  r3, [r0], #1
1:
        ands    r3, r1, #3
        beq     MemCopyAligned
        subs    r2, r2, #8
4:
        blo     2f
        ldr     r3, [r1], #4
        subs    r2, r2, #8
        ldr     ip, [r1], #4
        stm     r0!, {r3, ip}
        b       4b
2:
        adds    r2, r2, #4
        ldrpl   r3, [r1], #4
        strpl   r3, [r0], #4
        mov     r0, r0
3:
        lsls    r2, r2, #31
        ldrbhs  r3, [r1], #1
        ldrbhs  ip, [r1], #1
        ldrbmi  r2, [r1], #1
        strbhs  r3, [r0], #1
        strbhs  ip, [r0], #1
        strbmi  r2, [r0], #1
        bx      lr
        .size   MemCopy, . - MemCopy

@ FUN_00200e60: strlen; r0 = string. Word-at-a-time scan with uqsub8 against 0x01010101.
        .global StrLen
        .type   StrLen, %function
        .arch   armv6k
StrLen:
        add     r3, r0, #1
        b       2f
1:
        ldrb    r1, [r0], #1
        cmp     r1, #0
        subeq   r0, r0, r3
        bxeq    lr
2:
        tst     r0, #3
        ldreq   r2, 5f
        bne     1b
3:
        ldr     r1, [r0], #4
        uqsub8  r1, r2, r1
        cmp     r1, #0
        beq     3b
        lsls    r2, r1, #24
        sub     r0, r0, r3
        subne   r0, r0, #3
        bxne    lr
        lsls    r2, r1, #16
        subne   r0, r0, #2
        bxne    lr
        lsls    r1, r1, #8
        subne   r0, r0, #1
        bx      lr
5:
        .word   0x01010101
        .size   StrLen, . - StrLen
