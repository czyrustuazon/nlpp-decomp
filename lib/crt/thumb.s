@ Generated from the retail image by tools/wrapgen/asmify.py (crt): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text


@ FUN_0000004c (Thumb)
        .section .text.A_00004c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00004c
        .thumb_func
        .type   A_00004c, %function
A_00004c:
        cmp     r0, #0
        push    {r4, lr}
        beq     L5c
        movs    r2, r0
        subs    r2, #8
        ldm     r2, {r2, r3}
        bl      Fn_000068_t
L5c:
        pop     {r4, pc}
        .size   A_00004c, . - A_00004c

@ FUN_00000068 (Thumb)
        .section .text.A_000068,"ax",%progbits
        .balign 4
        .thumb
        .global A_000068
        .thumb_func
        .type   A_000068, %function
A_000068:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r5, r0
        movs    r6, r1
        movs    r7, r2
        cmp     r3, #0
        beq     L9c
        movs    r0, r7
        muls    r0, r3, r0
        adds    r4, r0, r5
L7c:
        subs    r4, r4, r7
        movs    r0, r4
        blx     r6
        cmp     r5, r4
        bne     L7c
        b       L9c
        bl      Fn_1fcdbc_t
        movs    r3, r6
        movs    r2, r7
        movs    r1, r5
        movs    r0, r4
        bl      Fn_1fd314_t
        bl      Fn_1fd340_t
L9c:
        movs    r0, r5
        subs    r0, #8
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_000068, . - A_000068

@ FUN_000000ac (Thumb)
        .section .text.A_0000ac,"ax",%progbits
        .balign 4
        .thumb
        .global A_0000ac
        .thumb_func
        .type   A_0000ac, %function
A_0000ac:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r3
        movs    r6, r1
        movs    r7, r2
        cmp     r1, #0
        beq     Lc8
        ldr     r5, [sp, #4]
        b       Lc4
Lbe:
        movs    r0, r5
        blx     r6
        adds    r5, r5, r7
Lc4:
        subs    r4, r4, #1
        bhs     Lbe
Lc8:
        ldr     r0, [sp, #4]
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_0000ac, . - A_0000ac

@ FUN_000000ce (Thumb)
        .section .text.A_0000ce,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0000ce
        .thumb_func
        .type   A_0000ce, %function
A_0000ce:
        ldr     r2, [r0, #8]
        cmp     r2, #0
        beq     Lda
        movs    r1, r0
        movs    r0, #1
        bx      r2
Lda:
        bx      lr
        .size   A_0000ce, . - A_0000ce

@ FUN_000000dc (Thumb)
        .section .text.A_0000dc,"ax",%progbits
        .balign 4
        .thumb
        .global A_0000dc
        .thumb_func
        .type   A_0000dc, %function
A_0000dc:
        push    {r4, r5}
        ldr     r1, L110
        ldr     r4, [r1]
        ldr     r2, [r1, #4]
        ldr     r3, [r4]
        ldr     r0, [r2]
        adds    r0, r0, r3
        str     r0, [r2]
        adds    r4, r4, #4
        adds    r2, r2, #4
        cmp     r4, r1
        bhs     L104
        cmp     r2, r1
        bhs     L10a
Lf8:
        str     r4, [r1]
        str     r2, [r1, #4]
        pop     {r4, r5}
        lsls    r0, r0, #1
        lsrs    r0, r0, #1
        bx      lr
L104:
        movs    r4, r1
        subs    r4, #0xdc
        b       Lf8
L10a:
        movs    r2, r1
        subs    r2, #0xdc
        b       Lf8
L110:
        .word   0x00a7b294
        .size   A_0000dc, . - A_0000dc

@ FUN_00000114 (Thumb)
        .section .text.A_000114,"ax",%progbits
        .balign 4
        .thumb
        .global A_000114
        .thumb_func
        .type   A_000114, %function
A_000114:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_1fd738
        .size   A_000114, . - A_000114

@ FUN_0000011c (Thumb)
        .section .text.A_00011c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00011c
        .thumb_func
        .type   A_00011c, %function
A_00011c:
        ldr     r0, [r0]
        ldrb    r0, [r0, r4]
        lsls    r0, r0, #0x1b
        bpl     L12a
        movs    r0, r4
        adds    r0, #0x20
        pop     {r4, pc}
L12a:
        movs    r0, r4
        pop     {r4, pc}
        .size   A_00011c, . - A_00011c

@ FUN_00000130 (Thumb)
        .section .text.A_000130,"ax",%progbits
        .balign 4
        .thumb
        .global A_000130
        .thumb_func
        .type   A_000130, %function
A_000130:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r5, r2
        movs    r4, r1
        movs    r2, r3
        cmp     r1, #0
        str     r0, [sp]
        beq     L142
        adds    r0, r0, r4
        subs    r0, r0, #1
L142:
        ldr     r3, L164
        add     r3, pc
        mov     r1, sp
        str     r0, [sp, #4]
        movs    r0, r5
        bl      Fn_1fd756_t
        movs    r5, r0
        cmp     r4, #0
        beq     L15e
        mov     r1, sp
        movs    r0, #0
        bl      Fn_1fd77c_t
L15e:
        movs    r0, r5
        pop     {r2, r3, r4, r5, r6, pc}
        .short  0x0000
L164:
        .word   0x00001059
        .size   A_000130, . - A_000130

@ FUN_00000168 (Thumb)
        .section .text.A_000168,"ax",%progbits
        .balign 4
        .thumb
        .global A_000168
        .thumb_func
        .type   A_000168, %function
A_000168:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r5, r2
        movs    r4, r1
        movs    r2, r3
        cmp     r1, #0
        str     r0, [sp]
        beq     L17c
        lsls    r1, r4, #1
        adds    r0, r1, r0
        subs    r0, r0, #2
L17c:
        ldr     r3, L1ac
        add     r3, pc
        mov     r1, sp
        str     r0, [sp, #4]
        movs    r0, r5
        bl      Fn_1fd792_t
        movs    r5, r0
        cmp     r4, #0
        beq     L19e
        mov     r1, sp
        ldr     r0, [sp, #4]
        adds    r0, r0, #2
        str     r0, [sp, #4]
        movs    r0, #0
        bl      Fn_1fd7b8_t
L19e:
        cmp     r5, r4
        blo     L1a8
        movs    r0, #0
        mvns    r0, r0
        pop     {r2, r3, r4, r5, r6, pc}
L1a8:
        movs    r0, r5
        pop     {r2, r3, r4, r5, r6, pc}
L1ac:
        .word   0x001fd637
        .size   A_000168, . - A_000168

@ FUN_000001b0 (Thumb)
        .section .text.A_0001b0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0001b0
        .thumb_func
        .type   A_0001b0, %function
A_0001b0:
        push    {r0, r1, r2, r3}
        ldr     r1, L1c8
        push    {r4, lr}
        add     r2, sp, #0xc
        ldr     r0, [sp, #8]
        bl      Fn_0011e8_t
        pop     {r4}
        pop     {r3}
        add     sp, #0x10
        bx      r3
        .short  0x0000
L1c8:
        .word   0x00a7b0e8
        .size   A_0001b0, . - A_0001b0

@ FUN_000001cc (Thumb)
        .section .text.A_0001cc,"ax",%progbits
        .balign 4
        .thumb
        .global A_0001cc
        .thumb_func
        .type   A_0001cc, %function
A_0001cc:
        push    {r0, r1, r2, r3}
        push    {r2, r3, r4, lr}
        ldr     r3, L1f4
        add     r2, sp, #0x18
        add     r3, pc
        mov     r1, sp
        str     r0, [sp]
        ldr     r0, [sp, #0x14]
        bl      Fn_1fd756_t
        movs    r4, r0
        mov     r1, sp
        movs    r0, #0
        bl      Fn_1fd77c_t
        movs    r0, r4
        pop     {r2, r3, r4}
        pop     {r3}
        add     sp, #0x10
        bx      r3
L1f4:
        .word   0x001fd5a5
        .size   A_0001cc, . - A_0001cc

@ FUN_00000200 (Thumb)
        .section .text.A_000200,"ax",%progbits
        .balign 4
        .thumb
        .global A_000200
        .thumb_func
        .type   A_000200, %function
A_000200:
        push    {r0, r1, r2, r3}
        push    {r2, r3, r4, r5, r6, lr}
        movs    r4, r1
        add     r2, sp, #0x24
        str     r0, [sp]
        beq     L210
        adds    r0, r0, r4
        subs    r0, r0, #1
L210:
        ldr     r3, L238
        add     r3, pc
        mov     r1, sp
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x20]
        bl      Fn_1fd756_t
        movs    r5, r0
        cmp     r4, #0
        beq     L22c
        mov     r1, sp
        movs    r0, #0
        bl      Fn_1fd77c_t
L22c:
        movs    r0, r5
        pop     {r2, r3, r4, r5, r6}
        pop     {r3}
        add     sp, #0x10
        bx      r3
        .short  0x0000
L238:
        .word   0x00000f8b
        .size   A_000200, . - A_000200

@ FUN_0000023c (Thumb)
        .section .text.A_00023c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00023c
        .thumb_func
        .type   A_00023c, %function
A_00023c:
        push    {r0, r1, r2, r3}
        push    {r2, r3, r4, r5, r6, lr}
        movs    r4, r1
        add     r2, sp, #0x24
        str     r0, [sp]
        beq     L24e
        lsls    r1, r4, #1
        adds    r0, r1, r0
        subs    r0, r0, #2
L24e:
        ldr     r3, L284
        add     r3, pc
        mov     r1, sp
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x20]
        bl      Fn_1fd792_t
        movs    r5, r0
        cmp     r4, #0
        beq     L270
        mov     r1, sp
        ldr     r0, [sp, #4]
        adds    r0, r0, #2
        str     r0, [sp, #4]
        movs    r0, #0
        bl      Fn_1fd7b8_t
L270:
        cmp     r5, r4
        blo     L280
        movs    r0, #0
        mvns    r0, r0
L278:
        pop     {r2, r3, r4, r5, r6}
        pop     {r3}
        add     sp, #0x10
        bx      r3
L280:
        movs    r0, r5
        b       L278
L284:
        .word   0x001fd565
        .size   A_00023c, . - A_00023c

@ FUN_00000288 (Thumb)
        .section .text.A_000288,"ax",%progbits
        .balign 4
        .thumb
        .global A_000288
        .thumb_func
        .type   A_000288, %function
A_000288:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        movs    r4, r1
        cmp     r2, #1
        beq     L29e
        ldr     r0, [r5]
        lsls    r0, r0, #0x1a
        bpl     L29a
        ldr     r2, [r5, #0x1c]
L29a:
        movs    r3, #0
        b       L2a4
L29e:
        movs    r3, #1
        b       L2ae
L2a2:
        adds    r3, r3, #1
L2a4:
        cmp     r3, r2
        bhs     L2ae
        ldrb    r0, [r4, r3]
        cmp     r0, #0
        bne     L2a2
L2ae:
        ldr     r0, [r5, #0x18]
        adds    r6, r4, r3
        subs    r0, r0, r3
        str     r0, [r5, #0x18]
        ldr     r0, [r5, #0x20]
        adds    r0, r0, r3
        str     r0, [r5, #0x20]
        movs    r0, r5
        bl      Fn_1fd7c8_t
        b       L2ce
L2c4:
        ldr     r2, [r5, #4]
        ldrb    r0, [r4]
        ldr     r1, [r5, #8]
        adds    r4, r4, #1
        blx     r2
L2ce:
        cmp     r4, r6
        blo     L2c4
        movs    r0, r5
        bl      Fn_1fd7f4_t
        pop     {r4, r5, r6, pc}
        .size   A_000288, . - A_000288

@ FUN_00000374 (Thumb)
        .section .text.A_000374,"ax",%progbits
        .balign 4
        .thumb
        .global A_000374
        .thumb_func
        .type   A_000374, %function
A_000374:
        stm     r1!, {r0, r2}
        b       L37c
        lsls    r2, r2, #0x19
        str     r0, [r1]
L37c:
        movs    r0, #1
        bx      lr
        .size   A_000374, . - A_000374

@ FUN_00000380 (Thumb)
        .section .text.A_000380,"ax",%progbits
        .balign 4
        .thumb
        .global A_000380
        .thumb_func
        .type   A_000380, %function
A_000380:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r5, r2
        ldr     r1, L438
        sub     sp, #0x18
        add     r1, pc
        movs    r7, #0
        ldm     r1, {r0, r1}
        movs    r6, r7
        str     r0, [sp]
        str     r1, [sp, #4]
        b       L3bc
L398:
        ldr     r0, [sp, #0x1c]
        mov     r2, sp
        lsls    r1, r6, #1
        ldrh    r1, [r0, r1]
        add     r0, sp, #8
        bl      Fn_1fd920_t
        adds    r1, r0, #1
        beq     L3ba
        ldr     r1, [r4]
        lsls    r1, r1, #0x1a
        bpl     L3b8
        ldr     r2, [r4, #0x1c]
        adds    r1, r7, r0
        cmp     r1, r2
        bhi     L3d6
L3b8:
        adds    r7, r7, r0
L3ba:
        adds    r6, r6, #1
L3bc:
        ldr     r0, [r4]
        lsls    r0, r0, #0x1a
        bpl     L3c8
        ldr     r0, [r4, #0x1c]
        cmp     r0, r7
        ble     L3d6
L3c8:
        cmp     r6, r5
        blt     L398
        ldr     r0, [sp, #0x1c]
        lsls    r1, r6, #1
        ldrh    r0, [r0, r1]
        cmp     r0, #0
        bne     L398
L3d6:
        ldr     r0, [r4, #0x18]
        subs    r0, r0, r7
        str     r0, [r4, #0x18]
        movs    r0, r4
        bl      Fn_1fd7c8_t
        ldr     r1, L438
        add     r1, pc
        subs    r1, #0x5a
        ldm     r1, {r0, r1}
        str     r0, [sp]
        movs    r0, #0
        str     r1, [sp, #4]
        b       L420
L3f2:
        lsls    r1, r0, #1
        mov     r2, sp
        ldr     r0, [sp, #0x1c]
        ldrh    r1, [r0, r1]
        add     r0, sp, #8
        bl      Fn_1fd920_t
        str     r0, [sp, #0x14]
        adds    r0, r0, #1
        beq     L41c
        movs    r5, #0
        b       L416
L40a:
        ldr     r2, [r4, #4]
        add     r0, sp, #8
        ldr     r1, [r4, #8]
        ldrb    r0, [r0, r5]
        blx     r2
        adds    r5, r5, #1
L416:
        ldr     r0, [sp, #0x14]
        cmp     r5, r0
        blo     L40a
L41c:
        ldr     r0, [sp, #0x10]
        adds    r0, r0, #1
L420:
        cmp     r0, r6
        str     r0, [sp, #0x10]
        blt     L3f2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, r7
        str     r0, [r4, #0x20]
        movs    r0, r4
        bl      Fn_1fd7f4_t
        add     sp, #0x24
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
L438:
        .word   0x007034c6
        .size   A_000380, . - A_000380

@ FUN_0000043c (Thumb)
        .section .text.A_00043c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00043c
        .thumb_func
        .type   A_00043c, %function
A_00043c:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        movs    r4, r1
        cmp     r2, #1
        beq     L452
        ldr     r0, [r5]
        lsls    r0, r0, #0x1a
        bpl     L44e
        ldr     r2, [r5, #0x1c]
L44e:
        movs    r3, #0
        b       L458
L452:
        movs    r3, #1
        b       L464
L456:
        adds    r3, r3, #1
L458:
        cmp     r3, r2
        bhs     L464
        lsls    r0, r3, #1
        ldrh    r0, [r4, r0]
        cmp     r0, #0
        bne     L456
L464:
        ldr     r0, [r5, #0x18]
        subs    r0, r0, r3
        str     r0, [r5, #0x18]
        ldr     r0, [r5, #0x20]
        adds    r0, r0, r3
        str     r0, [r5, #0x20]
        lsls    r0, r3, #1
        adds    r6, r0, r4
        movs    r0, r5
        bl      Fn_1fd7c8_t
        b       L486
L47c:
        ldr     r2, [r5, #4]
        ldrh    r0, [r4]
        ldr     r1, [r5, #8]
        adds    r4, r4, #2
        blx     r2
L486:
        cmp     r4, r6
        blo     L47c
        movs    r0, r5
        bl      Fn_1fd7f4_t
        pop     {r4, r5, r6, pc}
        .size   A_00043c, . - A_00043c

@ FUN_0000058c (Thumb)
        .section .text.A_00058c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00058c
        .thumb_func
        .type   A_00058c, %function
A_00058c:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r7, r1
        ldr     r1, [r0]
        lsls    r1, r1, #0x14
        .size   A_00058c, . - A_00058c

@ FUN_00000624 (Thumb)
        .section .text.A_000624,"ax",%progbits
        .balign 4
        .thumb
        .global A_000624
        .thumb_func
        .type   A_000624, %function
A_000624:
        push    {r4, r5, r6, lr}
        movs    r6, r0
        bl      Fn_1fdb28
        ldr     r4, [r0]
        movs    r5, r0
        movs    r2, #0xa
        movs    r1, #0
        movs    r0, r6
        bl      Fn_000640_t
        str     r4, [r5]
        pop     {r4, r5, r6, pc}
        .size   A_000624, . - A_000624

@ FUN_00000640 (Thumb)
        .section .text.A_000640,"ax",%progbits
        .balign 4
        .thumb
        .global A_000640
        .thumb_func
        .type   A_000640, %function
A_000640:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r7, r1
        movs    r6, #0
        ldr     r4, [sp]
L648:
        ldrb    r5, [r4]
        adds    r4, r4, #1
        cmp     r5, #0
        beq     L65c
        bl      Fn_1fd738
        ldr     r0, [r0]
        ldrb    r0, [r0, r5]
        lsls    r0, r0, #0x1f
        bne     L648
L65c:
        cmp     r5, #0x2b
        beq     L666
        cmp     r5, #0x2d
        beq     L696
        subs    r4, r4, #1
L666:
        ldr     r2, [sp, #8]
        movs    r1, r7
        movs    r0, r4
        bl      Fn_001318_t
        cmp     r7, #0
        beq     L67e
        ldr     r1, [r7]
        cmp     r1, r4
        bne     L67e
        ldr     r1, [sp]
        str     r1, [r7]
L67e:
        lsls    r1, r6, #0x15
        movs    r4, #2
        cmp     r1, #0
        bge     L69e
        rsbs    r0, r0, #0
        cmp     r0, #0
        ble     L694
        bl      Fn_1fdb28
        str     r4, [r0]
        lsls    r0, r4, #0x1e
L694:
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L696:
        movs    r0, #1
        lsls    r0, r0, #0xa
        orrs    r6, r0
        b       L666
L69e:
        cmp     r0, #0
        bge     L694
        bl      Fn_1fdb28
        str     r4, [r0]
        ldr     r0, L6ac
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L6ac:
        .word   0x7fffffff
        .size   A_000640, . - A_000640

@ FUN_000006b8 (Thumb)
        .section .text.A_0006b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0006b8
        .thumb_func
        .type   A_0006b8, %function
A_0006b8:
        push    {r4, lr}
        ldr     r0, L6c4
        bl      Fn_0015f0_t
        ldr     r0, L6c4
        pop     {r4, pc}
L6c4:
        .word   0x00a7b188
        .size   A_0006b8, . - A_0006b8

@ FUN_000006c8 (Thumb)
        .section .text.A_0006c8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0006c8
        .thumb_func
        .type   A_0006c8, %function
A_0006c8:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r5, r0
        movs    r6, r1
        movs    r7, r2
        movs    r1, #2
        movs    r0, #0
        mov     r8, r8
        mov     r8, r8
        movs    r4, #0
        str     r0, [sp, #4]
        b       L708
L6de:
        ldrb    r1, [r6]
        mov     r0, sp
        ldr     r2, [sp, #4]
        adds    r6, r6, #1
        bl      Fn_1fdf14_t
        adds    r1, r0, #1
        beq     L712
        adds    r0, r0, #2
        beq     L708
        cmp     r5, #0
        beq     L6fe
        mov     r0, sp
        ldrh    r0, [r0]
        lsls    r1, r4, #1
        strh    r0, [r5, r1]
L6fe:
        mov     r0, sp
        adds    r4, r4, #1
        ldrh    r0, [r0]
        cmp     r0, #0
        beq     L714
L708:
        cmp     r5, #0
        beq     L6de
        cmp     r4, r7
        blo     L6de
L710:
        movs    r0, r4
L712:
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L714:
        subs    r4, r4, #1
        b       L710
        .size   A_0006c8, . - A_0006c8

@ FUN_0000072a (Thumb)
        .section .text.A_00072a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00072a
        .thumb_func
        .type   A_00072a, %function
A_00072a:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        movs    r5, r1
        movs    r0, r2
        bne     L73a
        movs    r1, #4
        mov     r8, r8
        mov     r8, r8
L73a:
        movs    r3, r0
        movs    r2, r5
        movs    r1, r4
        movs    r0, #0
        bl      Fn_000748_t
        pop     {r4, r5, r6, pc}
        .size   A_00072a, . - A_00072a

@ FUN_00000748 (Thumb)
        .section .text.A_000748,"ax",%progbits
        .balign 4
        .thumb
        .global A_000748
        .thumb_func
        .type   A_000748, %function
A_000748:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r4, r1
        movs    r7, r2
        movs    r6, #0
        cmp     r1, #0
        sub     sp, #4
        bne     L75e
        movs    r0, #0
        movs    r7, #1
        adr     r4, #0x5c
        str     r0, [sp, #4]
L75e:
        ldr     r0, [sp, #0x10]
        cmp     r0, #0
        bne     L7ae
        movs    r1, #5
        mov     r8, r8
        mov     r8, r8
        str     r0, [sp, #0x10]
        b       L7ae
L76e:
        ldrb    r1, [r4]
        mov     r0, sp
        ldr     r2, [sp, #0x10]
        adds    r4, r4, #1
        bl      Fn_1fdf14_t
        movs    r5, r0
        adds    r6, r6, #1
        adds    r0, r0, #1
        beq     L7a2
        adds    r5, r5, #2
        beq     L7ae
        ldr     r0, [sp, #4]
        cmp     r0, #0
        beq     L794
        mov     r0, sp
        ldrh    r1, [r0]
        ldr     r0, [sp, #4]
        strh    r1, [r0]
L794:
        mov     r0, sp
        ldrh    r0, [r0]
        cmp     r0, #0
        beq     L79e
        movs    r0, r6
L79e:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L7a2:
        bl      Fn_1fdb28
        movs    r1, #4
        str     r1, [r0]
        movs    r0, r5
        b       L79e
L7ae:
        subs    r7, r7, #1
        bhs     L76e
        movs    r0, #1
        mvns    r0, r0
        b       L79e
        .size   A_000748, . - A_000748

@ FUN_000007fc (Thumb)
        .section .text.A_0007fc,"ax",%progbits
        .balign 4
        .thumb
        .global A_0007fc
        .thumb_func
        .type   A_0007fc, %function
A_0007fc:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r4, r1
        sub     sp, #0x10c
        movs    r6, r2
        movs    r1, #1
        str     r1, [sp, #0x104]
        str     r4, [sp, #0x80]
        str     r0, [sp]
L80c:
        mov     r2, sp
        ldr     r0, [sp, #0x104]
        subs    r1, r0, #1
        str     r1, [sp, #0x104]
        lsls    r1, r0, #2
        subs    r1, r1, #4
        lsls    r0, r0, #2
        ldr     r5, [r2, r1]
        subs    r0, r0, #4
        add     r1, sp, #0x80
        ldr     r0, [r1, r0]
        str     r0, [sp, #0x108]
L824:
        asrs    r0, r0, #1
        ldr     r1, [sp, #0x108]
        muls    r0, r6, r0
        adds    r4, r5, r0
        lsls    r1, r1, #0x1f
        bne     L832
        subs    r0, r0, r6
L832:
        ldr     r2, [sp, #0x118]
        adds    r7, r4, r0
        movs    r1, r4
        movs    r0, r5
        blx     r2
        cmp     r0, #0
        ble     L85e
        movs    r0, r6
        movs    r1, r0
        orrs    r1, r5
        lsls    r1, r1, #0x1e
        beq     L914
L84a:
        ldrb    r2, [r4]
        ldrb    r1, [r5]
        strb    r2, [r5]
        strb    r1, [r4]
        adds    r5, r5, #1
        adds    r4, r4, #1
        subs    r0, r0, #1
        bne     L84a
L85a:
        subs    r5, r5, r6
        subs    r4, r4, r6
L85e:
        ldr     r2, [sp, #0x118]
        movs    r1, r7
        movs    r0, r4
        blx     r2
        cmp     r0, #0
        ble     L8b2
        ldr     r2, [sp, #0x118]
        movs    r1, r7
        movs    r0, r5
        blx     r2
        cmp     r0, #0
        ble     L894
        movs    r0, r6
        movs    r1, r0
        orrs    r1, r5
        lsls    r1, r1, #0x1e
        beq     L922
L880:
        ldrb    r2, [r7]
        ldrb    r1, [r5]
        strb    r2, [r5]
        strb    r1, [r7]
        adds    r5, r5, #1
        adds    r7, r7, #1
        subs    r0, r0, #1
        bne     L880
L890:
        subs    r5, r5, r6
        subs    r7, r7, r6
L894:
        movs    r0, r6
        movs    r1, r0
        orrs    r1, r4
        lsls    r1, r1, #0x1e
        beq     L930
L89e:
        ldrb    r2, [r7]
        ldrb    r1, [r4]
        strb    r2, [r4]
        strb    r1, [r7]
        adds    r4, r4, #1
        adds    r7, r7, #1
        subs    r0, r0, #1
        bne     L89e
L8ae:
        subs    r4, r4, r6
        subs    r7, r7, r6
L8b2:
        movs    r1, r6
        movs    r2, r1
        orrs    r2, r4
        subs    r0, r7, r6
        lsls    r2, r2, #0x1e
        beq     L93e
L8be:
        ldrb    r3, [r0]
        ldrb    r2, [r4]
        strb    r3, [r4]
        strb    r2, [r0]
        adds    r4, r4, #1
        adds    r0, r0, #1
        subs    r1, r1, #1
        bne     L8be
L8ce:
        subs    r7, r0, r6
        movs    r4, r5
        str     r7, [sp, #0x100]
L8d4:
        ldr     r2, [sp, #0x118]
        adds    r4, r4, r6
        ldr     r1, [sp, #0x100]
        movs    r0, r4
        blx     r2
        cmp     r0, #0
        blt     L8d4
L8e2:
        ldr     r2, [sp, #0x118]
        subs    r7, r7, r6
        ldr     r1, [sp, #0x100]
        movs    r0, r7
        blx     r2
        cmp     r0, #0
        bgt     L8e2
        cmp     r7, r4
        bls     L95a
        movs    r0, r6
        movs    r1, r0
        orrs    r1, r4
        lsls    r1, r1, #0x1e
        beq     L94c
L8fe:
        ldrb    r2, [r7]
        ldrb    r1, [r4]
        strb    r2, [r4]
        strb    r1, [r7]
        adds    r4, r4, #1
        adds    r7, r7, #1
        subs    r0, r0, #1
        bne     L8fe
L90e:
        subs    r4, r4, r6
        subs    r7, r7, r6
        b       L8d4
L914:
        ldr     r2, [r4]
        ldr     r1, [r5]
        subs    r0, r0, #4
        stm     r5!, {r2}
        stm     r4!, {r1}
        bne     L914
        b       L85a
L922:
        ldr     r2, [r7]
        ldr     r1, [r5]
        subs    r0, r0, #4
        stm     r5!, {r2}
        stm     r7!, {r1}
        bne     L922
        b       L890
L930:
        ldr     r2, [r7]
        ldr     r1, [r4]
        subs    r0, r0, #4
        stm     r4!, {r2}
        stm     r7!, {r1}
        bne     L930
        b       L8ae
L93e:
        ldr     r3, [r0]
        ldr     r2, [r4]
        subs    r1, r1, #4
        stm     r4!, {r3}
        stm     r0!, {r2}
        bne     L93e
        b       L8ce
L94c:
        ldr     r2, [r7]
        ldr     r1, [r4]
        subs    r0, r0, #4
        stm     r4!, {r2}
        stm     r7!, {r1}
        bne     L94c
        b       L90e
L95a:
        movs    r0, r6
        movs    r1, r0
        orrs    r1, r4
        lsls    r1, r1, #0x1e
        beq     L9aa
L964:
        ldr     r2, [sp, #0x100]
        ldrb    r1, [r4]
        ldrb    r2, [r2]
        strb    r2, [r4]
        ldr     r2, [sp, #0x100]
        adds    r4, r4, #1
        strb    r1, [r2]
        ldr     r1, [sp, #0x100]
        adds    r1, r1, #1
        subs    r0, r0, #1
        str     r1, [sp, #0x100]
        bne     L964
L97c:
        subs    r4, r4, r6
        subs    r0, r4, r5
        movs    r1, r6
        bl      Fn_022d48
        ldr     r1, [sp, #0x108]
        subs    r0, r0, #1
        subs    r1, r1, r0
        subs    r1, r1, #1
        cmp     r0, r1
        ble     L9ca
        cmp     r1, #0xa
        ble     L9c2
        mov     r3, sp
        ldr     r2, [sp, #0x104]
        lsls    r2, r2, #2
        str     r5, [r3, r2]
        add     r3, sp, #0x80
        str     r0, [r3, r2]
        ldr     r0, [sp, #0x104]
        adds    r0, r0, #1
        str     r0, [sp, #0x104]
        b       L9e6
L9aa:
        ldr     r2, [sp, #0x100]
        ldr     r1, [r4]
        ldr     r2, [r2]
        stm     r4!, {r2}
        ldr     r2, [sp, #0x100]
        str     r1, [r2]
        ldr     r1, [sp, #0x100]
        adds    r1, r1, #4
        subs    r0, r0, #4
        str     r1, [sp, #0x100]
        bne     L9aa
        b       L97c
L9c2:
        cmp     r0, #0xa
        ble     L9ee
L9c6:
        str     r0, [sp, #0x108]
        b       L824
L9ca:
        cmp     r0, #0xa
        ble     L9e2
        mov     r3, sp
        ldr     r2, [sp, #0x104]
        lsls    r2, r2, #2
        str     r4, [r3, r2]
        add     r3, sp, #0x80
        str     r1, [r3, r2]
        ldr     r1, [sp, #0x104]
        adds    r1, r1, #1
        str     r1, [sp, #0x104]
        b       L9c6
L9e2:
        cmp     r1, #0xa
        ble     L9ee
L9e6:
        str     r1, [sp, #0x108]
        ldr     r0, [sp, #0x108]
        movs    r5, r4
        b       L824
L9ee:
        ldr     r0, [sp, #0x104]
        cmp     r0, #0
        beq     L9f6
        b       L80c
L9f6:
        add     sp, #0x11c
        pop     {r4, r5, r6, r7, pc}
        .size   A_0007fc, . - A_0007fc

@ FUN_000009fa (Thumb)
        .section .text.A_0009fa,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0009fa
        .thumb_func
        .type   A_0009fa, %function
A_0009fa:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r7, r0
        movs    r6, r1
        movs    r4, r2
        sub     sp, #4
        beq     La7e
        cmp     r6, #0
        beq     La7e
        cmp     r6, #0xa
        bls     La14
        ldr     r3, [sp, #0x10]
        bl      Fn_0007fc_t
La14:
        subs    r6, r6, #1
        movs    r5, r7
        muls    r6, r4, r6
        adds    r0, r6, r5
        str     r0, [sp]
        b       La78
La20:
        movs    r6, r5
        adds    r5, r5, r4
        b       La28
La26:
        subs    r6, r6, r4
La28:
        cmp     r6, r7
        blo     La38
        ldr     r2, [sp, #0x10]
        movs    r1, r5
        movs    r0, r6
        blx     r2
        cmp     r0, #0
        bgt     La26
La38:
        movs    r0, r4
        orrs    r0, r5
        adds    r1, r6, r4
        lsls    r0, r0, #0x1e
        beq     La5a
        movs    r0, #0
        b       La74
La46:
        adds    r2, r5, r0
        ldr     r3, [r2]
        b       La50
La4c:
        ldr     r6, [r2]
        str     r6, [r2, r4]
La50:
        subs    r2, r2, r4
        cmp     r2, r1
        bhs     La4c
        adds    r0, r0, #4
        str     r3, [r2, r4]
La5a:
        cmp     r0, r4
        bhs     La78
        b       La46
La60:
        adds    r2, r5, r0
        ldrb    r3, [r2]
        b       La6a
La66:
        ldrb    r6, [r2]
        strb    r6, [r2, r4]
La6a:
        subs    r2, r2, r4
        cmp     r2, r1
        bhs     La66
        adds    r0, r0, #1
        strb    r3, [r2, r4]
La74:
        cmp     r0, r4
        blo     La60
La78:
        ldr     r0, [sp]
        cmp     r5, r0
        blo     La20
La7e:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_0009fa, . - A_0009fa

@ FUN_00000a82 (Thumb)
        .section .text.A_000a82,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_000a82
        .thumb_func
        .type   A_000a82, %function
A_000a82:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r6, r1
        movs    r4, r2
        sub     sp, #4
La8a:
        cmp     r4, #0
        beq     Lab8
        cmp     r4, #1
        beq     Laac
        ldr     r0, [sp, #0x10]
        lsrs    r5, r4, #1
        ldr     r2, [sp, #0x28]
        muls    r0, r5, r0
        adds    r7, r0, r6
        ldr     r0, [sp, #4]
        movs    r1, r7
        blx     r2
        cmp     r0, #0
        beq     Lac2
        bge     Lac6
        movs    r4, r5
        b       La8a
Laac:
        ldr     r2, [sp, #0x28]
        ldr     r0, [sp, #4]
        movs    r1, r6
        blx     r2
        cmp     r0, #0
        beq     Labe
Lab8:
        movs    r0, #0
Laba:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
Labe:
        movs    r0, r6
        b       Laba
Lac2:
        movs    r0, r7
        b       Laba
Lac6:
        ldr     r0, [sp, #0x10]
        subs    r4, r4, r5
        adds    r6, r7, r0
        subs    r4, r4, #1
        b       La8a
        .size   A_000a82, . - A_000a82

@ FUN_00000ad0 (Thumb)
        .section .text.A_000ad0,"ax",%progbits
        .balign 4
        .thumb
        .global A_000ad0
        .thumb_func
        .type   A_000ad0, %function
A_000ad0:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        movs    r5, r1
        bl      Fn_1fe034
        ldr     r1, [r0]
        ldr     r0, [r1]
        cmp     r0, #0
        beq     Lafc
        adds    r1, r1, r0
Lae4:
        ldrb    r0, [r4]
        ldrb    r3, [r5]
        adds    r4, r4, #1
        adds    r5, r5, #1
        ldrb    r2, [r1, r0]
        ldrb    r3, [r1, r3]
        cmp     r0, #0
        beq     Laf8
        cmp     r2, r3
        beq     Lae4
Laf8:
        subs    r0, r2, r3
        pop     {r4, r5, r6, pc}
Lafc:
        movs    r1, r5
        movs    r0, r4
        bl      Fn_1fe040
        pop     {r4, r5, r6, pc}
        .size   A_000ad0, . - A_000ad0

@ FUN_00000b40 (Thumb)
        .section .text.A_000b40,"ax",%progbits
        .balign 4
        .thumb
        .global A_000b40
        .thumb_func
        .type   A_000b40, %function
A_000b40:
        push    {r4, r5, lr}
        movs    r5, r0
Lb44:
        movs    r2, r5
        movs    r3, r1
Lb48:
        ldrb    r0, [r2]
        ldrb    r4, [r3]
        adds    r2, r2, #1
        adds    r3, r3, #1
        cmp     r0, #0
        beq     Lb58
        cmp     r0, r4
        beq     Lb48
Lb58:
        cmp     r4, #0
        beq     Lb64
        cmp     r0, #0
        beq     Lb66
        adds    r5, r5, #1
        b       Lb44
Lb64:
        movs    r0, r5
Lb66:
        pop     {r4, r5, pc}
        .size   A_000b40, . - A_000b40

@ FUN_00000b68 (Thumb)
        .section .text.A_000b68,"ax",%progbits
        .balign 4
        .thumb
        .global A_000b68
        .thumb_func
        .type   A_000b68, %function
A_000b68:
        movs    r3, r0
        orrs    r3, r1
        push    {r4, lr}
        lsls    r3, r3, #0x1e
        bne     Lbac
Lb72:
        cmp     r2, #4
        blo     Lbac
        ldm     r0!, {r3}
        ldm     r1!, {r4}
        subs    r2, r2, #4
        cmp     r3, r4
        beq     Lb72
        lsls    r0, r3, #0x18
        lsls    r1, r4, #0x18
        lsrs    r0, r0, #0x18
        lsrs    r1, r1, #0x18
        subs    r0, r0, r1
        bne     Lbaa
        lsls    r0, r3, #0x10
        lsls    r1, r4, #0x10
        lsrs    r0, r0, #0x10
        lsrs    r1, r1, #0x10
        subs    r0, r0, r1
        bne     Lbaa
        lsls    r0, r3, #8
        lsls    r1, r4, #8
        lsrs    r0, r0, #8
        lsrs    r1, r1, #8
        subs    r0, r0, r1
        bne     Lbaa
        lsrs    r0, r3, #0x18
        lsrs    r1, r4, #0x18
        subs    r0, r0, r1
Lbaa:
        pop     {r4, pc}
Lbac:
        cmp     r2, #0
        beq     Lbb8
        lsls    r3, r2, #0x1f
        beq     Lbbc
        adds    r2, r2, #1
        b       Lbc8
Lbb8:
        movs    r0, #0
        pop     {r4, pc}
Lbbc:
        ldrb    r3, [r0]
        ldrb    r4, [r1]
        adds    r0, r0, #1
        adds    r1, r1, #1
        subs    r3, r3, r4
        bne     Lbd8
Lbc8:
        ldrb    r3, [r0]
        ldrb    r4, [r1]
        adds    r0, r0, #1
        adds    r1, r1, #1
        subs    r3, r3, r4
        bne     Lbd8
        subs    r2, r2, #2
        bne     Lbbc
Lbd8:
        movs    r0, r3
        pop     {r4, pc}
        .size   A_000b68, . - A_000b68

@ FUN_00000bdc (Thumb)
        .section .text.A_000bdc,"ax",%progbits
        .balign 4
        .thumb
        .global A_000bdc
        .thumb_func
        .type   A_000bdc, %function
A_000bdc:
        lsls    r3, r1, #0x18
        movs    r2, #0
        lsrs    r3, r3, #0x18
Lbe2:
        ldrb    r1, [r0]
        adds    r0, r0, #1
        cmp     r1, r3
        bne     Lbec
        subs    r2, r0, #1
Lbec:
        cmp     r1, #0
        bne     Lbe2
        movs    r0, r2
        bx      lr
        .size   A_000bdc, . - A_000bdc

@ FUN_00000c46 (Thumb)
        .section .text.A_000c46,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_000c46
        .thumb_func
        .type   A_000c46, %function
A_000c46:
        ldrh    r2, [r0]
        cmp     r2, #0
        beq     Lc52
        ldrh    r3, [r1]
        cmp     r2, r3
        .short  0xd0f7
Lc52:
        ldrh    r1, [r1]
        lsls    r0, r2, #0x10
        lsrs    r0, r0, #0x10
        subs    r0, r0, r1
        bx      lr
        .size   A_000c46, . - A_000c46

@ FUN_00000c84 (Thumb)
        .section .text.A_000c84,"ax",%progbits
        .balign 4
        .thumb
        .global A_000c84
        .thumb_func
        .type   A_000c84, %function
A_000c84:
        push    {r4, r5, r6, r7, lr}
        movs    r5, #0
        cmp     r0, #0
        bne     Lcb2
        ldr     r0, [r2]
        cmp     r0, #0
        beq     Lcca
        b       Lcb2
Lc94:
        movs    r3, #0
        b       Lc9e
Lc98:
        cmp     r4, r6
        beq     Lca8
        adds    r3, r3, #1
Lc9e:
        lsls    r4, r3, #1
        ldrh    r4, [r1, r4]
        cmp     r4, #0
        bne     Lc98
        b       Lcba
Lca8:
        lsls    r3, r3, #1
        ldrh    r3, [r1, r3]
        cmp     r3, #0
        beq     Lcba
        adds    r0, r0, #2
Lcb2:
        ldrh    r6, [r0]
        cmp     r6, #0
        bne     Lc94
        b       Lcc6
Lcba:
        lsls    r3, r6, #0x10
        lsrs    r3, r3, #0x10
        beq     Lcc6
        movs    r6, r0
Lcc2:
        movs    r3, #0
        b       Lcd4
Lcc6:
        movs    r0, #0
        str     r5, [r2]
Lcca:
        pop     {r4, r5, r6, r7, pc}
Lccc:
        ldrh    r7, [r0]
        cmp     r4, r7
        beq     Lcde
        adds    r3, r3, #1
Lcd4:
        lsls    r4, r3, #1
        ldrh    r4, [r1, r4]
        cmp     r4, #0
        bne     Lccc
        b       Lcf4
Lcde:
        lsls    r3, r3, #1
        ldrh    r3, [r1, r3]
        cmp     r3, #0
        beq     Lcf4
        lsls    r1, r7, #0x10
        lsrs    r1, r1, #0x10
        beq     Lcfc
        strh    r5, [r0]
        adds    r0, r0, #2
        str     r0, [r2]
        b       Lcfe
Lcf4:
        adds    r0, r0, #2
        ldrh    r3, [r0]
        cmp     r3, #0
        bne     Lcc2
Lcfc:
        str     r5, [r2]
Lcfe:
        movs    r0, r6
        pop     {r4, r5, r6, r7, pc}
        .size   A_000c84, . - A_000c84

@ FUN_00000d48 (Thumb)
        .section .text.A_000d48,"ax",%progbits
        .balign 4
        .thumb
        .global A_000d48
        .thumb_func
        .type   A_000d48, %function
A_000d48:
        push    {r4, r5, r6, lr}
        ldr     r4, Ld64
        add     r4, pc
        ldr     r5, Ld68
        add     r5, pc
        b       Ld5c
Ld54:
        ldr     r0, [r4]
        adds    r0, r0, r4
        blx     r0
        adds    r4, r4, #4
Ld5c:
        cmp     r4, r5
        bne     Ld54
        pop     {r4, r5, r6, pc}
        .short  0x0000
Ld64:
        .word   0x00748d40
Ld68:
        .word   0x00749344
        .size   A_000d48, . - A_000d48

@ FUN_00000d8c (Thumb)
        .section .text.A_000d8c,"ax",%progbits
        .balign 4
        .thumb
        .global A_000d8c
        .thumb_func
        .type   A_000d8c, %function
A_000d8c:
        push    {r0, r4, r5, r6, r7, lr}
        sub     sp, #0x10
        movs    r6, r0
        ldr     r0, [r0, #0x28]
        str     r0, [sp, #4]
        ldr     r0, [r6, #0x30]
        str     r0, [sp, #8]
        ldr     r5, [r6, #0x34]
        bl      Fn_1fd390_t
        movs    r4, r0
        movs    r7, r6
        subs    r7, #0x20
        movs    r0, r6
        bl      Fn_1fcdbc_t
        movs    r0, r6
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        beq     Ldba
        ldr     r0, [r4, #4]
        b       Ldbc
Ldba:
        ldr     r0, [r7, #8]
Ldbc:
        str     r0, [r4, #0x10]
        bl      Fn_001668_t
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_000d8c, . - A_000d8c

@ FUN_00000e7a (Thumb)
        .section .text.A_000e7a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_000e7a
        .thumb_func
        .type   A_000e7a, %function
A_000e7a:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_1fdb28
        str     r4, [r0]
        pop     {r4, pc}
        .size   A_000e7a, . - A_000e7a

@ FUN_00000e88 (Thumb)
        .section .text.A_000e88,"ax",%progbits
        .balign 4
        .thumb
        .global A_000e88
        .thumb_func
        .type   A_000e88, %function
A_000e88:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r5, r2
        movs    r4, r1
        movs    r2, r3
        cmp     r1, #0
        str     r0, [sp]
        beq     Le9a
        adds    r0, r0, r4
        subs    r0, r0, #1
Le9a:
        ldr     r3, Lebc
        add     r3, pc
        mov     r1, sp
        str     r0, [sp, #4]
        movs    r0, r5
        bl      Fn_1fd756_t
        movs    r5, r0
        cmp     r4, #0
        beq     Leb6
        mov     r1, sp
        movs    r0, #0
        bl      Fn_1fd77c_t
Leb6:
        movs    r0, r5
        pop     {r2, r3, r4, r5, r6, pc}
        .short  0x0000
Lebc:
        .word   0x00000301
        .size   A_000e88, . - A_000e88

@ FUN_000011b8 (Thumb)
        .section .text.A_0011b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0011b8
        .thumb_func
        .type   A_0011b8, %function
A_0011b8:
        push    {r4, lr}
        ldr     r3, [r0, #0x14]
        cmp     r3, #0
        beq     L11c6
        bl      Fn_001210_t
        b       L11ca
L11c6:
        bl      Fn_000288_t
L11ca:
        movs    r0, #1
        pop     {r4, pc}
        .size   A_0011b8, . - A_0011b8

@ FUN_000011e8 (Thumb)
        .section .text.A_0011e8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0011e8
        .thumb_func
        .type   A_0011e8, %function
A_0011e8:
        ldr     r3, L120c
        push    {r4, r5, r6, lr}
        movs    r4, r1
        add     r3, pc
        bl      Fn_1fd756_t
        movs    r5, r0
        movs    r0, r4
        bl      Fn_0006b0_t
        cmp     r0, #0
        beq     L1206
        movs    r0, #0
        mvns    r0, r0
        pop     {r4, r5, r6, pc}
L1206:
        movs    r0, r5
        pop     {r4, r5, r6, pc}
        .short  0x0000
L120c:
        .word   0x00003423
        .size   A_0011e8, . - A_0011e8

@ FUN_00001210 (Thumb)
        .section .text.A_001210,"ax",%progbits
        .balign 4
        .thumb
        .global A_001210
        .thumb_func
        .type   A_001210, %function
A_001210:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r7, r1
        ldr     r1, L129c
        sub     sp, #0x10
        add     r1, pc
        movs    r6, #0
        ldm     r1, {r0, r1}
        movs    r5, r6
        str     r0, [sp]
        str     r1, [sp, #4]
        b       L123a
L1228:
        ldrb    r1, [r7, r5]
        mov     r2, sp
        add     r0, sp, #8
        bl      Fn_1fdf14_t
        cmp     r0, #1
        bne     L1238
        adds    r6, r6, #1
L1238:
        adds    r5, r5, #1
L123a:
        ldr     r0, [r4]
        lsls    r0, r0, #0x1a
        bpl     L1246
        ldr     r0, [r4, #0x1c]
        cmp     r0, r6
        ble     L1252
L1246:
        ldr     r0, [sp, #0x18]
        cmp     r5, r0
        blt     L1228
        ldrb    r0, [r7, r5]
        cmp     r0, #0
        bne     L1228
L1252:
        ldr     r0, [r4, #0x18]
        subs    r0, r0, r6
        str     r0, [r4, #0x18]
        movs    r0, r4
        bl      Fn_1fd7c8_t
        ldr     r1, L129c
        add     r1, pc
        subs    r1, #0x46
        movs    r6, #0
        ldm     r1, {r0, r1}
        str     r0, [sp]
        str     r1, [sp, #4]
        b       L128e
L126e:
        ldrb    r1, [r7, r6]
        mov     r2, sp
        add     r0, sp, #8
        bl      Fn_1fdf14_t
        cmp     r0, #1
        bne     L128c
        mov     r0, sp
        ldr     r2, [r4, #4]
        ldrh    r0, [r0, #8]
        ldr     r1, [r4, #8]
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        str     r0, [r4, #0x20]
L128c:
        adds    r6, r6, #1
L128e:
        cmp     r6, r5
        blt     L126e
        movs    r0, r4
        bl      Fn_1fd7f4_t
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L129c:
        .word   0x007028e2
        .size   A_001210, . - A_001210

@ FUN_000012a8 (Thumb)
        .section .text.A_0012a8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0012a8
        .thumb_func
        .type   A_0012a8, %function
A_0012a8:
        push    {r4, lr}
        ldr     r3, [r0, #0x14]
        cmp     r3, #0
        beq     L12b6
        bl      Fn_00043c_t
        b       L12ba
L12b6:
        bl      Fn_000380_t
L12ba:
        movs    r0, #1
        pop     {r4, pc}
        .size   A_0012a8, . - A_0012a8

@ FUN_000012d8 (Thumb)
        .section .text.A_0012d8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0012d8
        .thumb_func
        .type   A_0012d8, %function
A_0012d8:
        push    {r0, r1, r2, r3}
        push    {lr}
        sub     sp, #0x34
        add     r1, sp, #0x40
        str     r0, [sp, #0x24]
        str     r0, [sp, #0x2c]
        movs    r0, #0
        mvns    r0, r0
        str     r1, [sp]
        str     r0, [sp, #0x28]
        movs    r0, #0
        str     r0, [sp, #0x30]
        ldr     r0, L1310
        add     r0, pc
        str     r0, [sp, #0x18]
        ldr     r0, L1314
        add     r0, pc
        mov     r2, sp
        str     r0, [sp, #0x1c]
        ldr     r1, [sp, #0x3c]
        add     r0, sp, #0x24
        bl      Fn_001a1c_t
        add     sp, #0x34
        pop     {r3}
        add     sp, #0x10
        bx      r3
        .short  0x0000
L1310:
        .word   0x0000074f
L1314:
        .word   0x00000769
        .size   A_0012d8, . - A_0012d8

@ FUN_00001318 (Thumb)
        .section .text.A_001318,"ax",%progbits
        .balign 4
        .thumb
        .global A_001318
        .thumb_func
        .type   A_001318, %function
A_001318:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        sub     sp, #8
        movs    r7, #0
        ldr     r4, [sp, #8]
        movs    r5, r2
        ldrb    r0, [r4]
        adds    r4, r4, #1
        str     r7, [sp, #4]
        cmp     r0, #0x30
        beq     L1332
        cmp     r5, #0
        beq     L135c
        b       L135e
L1332:
        ldrb    r0, [r4]
        movs    r7, #1
        adds    r4, r4, #1
        cmp     r0, #0x78
        beq     L1346
        cmp     r0, #0x58
        beq     L1346
        cmp     r5, #0
        beq     L1358
        b       L135e
L1346:
        cmp     r5, #0
        beq     L134e
        cmp     r5, #0x10
        bne     L135e
L134e:
        ldrb    r0, [r4]
        movs    r7, #0
        movs    r5, #0x10
        adds    r4, r4, #1
        b       L135e
L1358:
        movs    r5, #8
        b       L135e
L135c:
        movs    r5, #0xa
L135e:
        movs    r6, #0
        str     r6, [sp]
        b       L1388
L1364:
        ldr     r1, [sp]
        movs    r7, #1
        muls    r1, r5, r1
        adds    r0, r1, r0
        movs    r1, r5
        lsrs    r2, r0, #0x10
        muls    r1, r6, r1
        lsls    r0, r0, #0x10
        lsrs    r0, r0, #0x10
        str     r0, [sp]
        adds    r6, r1, r2
        lsls    r0, r7, #0x10
        cmp     r6, r0
        blo     L1384
        movs    r0, #1
        str     r0, [sp, #4]
L1384:
        ldrb    r0, [r4]
        adds    r4, r4, #1
L1388:
        movs    r1, r5
        bl      Fn_1ff540_t
        cmp     r0, #0
        bge     L1364
        ldr     r0, [sp, #0xc]
        cmp     r0, #0
        beq     L13a4
        cmp     r7, #0
        beq     L13a0
        subs    r4, r4, #1
        b       L13a2
L13a0:
        ldr     r4, [sp, #8]
L13a2:
        str     r4, [r0]
L13a4:
        ldr     r0, [sp, #4]
        cmp     r0, #0
        beq     L13b8
        bl      Fn_1fdb28
        movs    r1, #2
        str     r1, [r0]
        subs    r0, r1, #3
L13b4:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L13b8:
        ldr     r1, [sp]
        lsls    r0, r6, #0x10
        orrs    r0, r1
        b       L13b4
        .size   A_001318, . - A_001318

@ FUN_000013c0 (Thumb)
        .section .text.A_0013c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0013c0
        .thumb_func
        .type   A_0013c0, %function
A_0013c0:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        ldr     r7, [r0, #0x14]
        ldr     r0, [r0, #0xc]
        movs    r5, r1
        movs    r6, r2
        lsls    r0, r0, #0x1e
        beq     L1432
        movs    r0, r7
        bl      Fn_1ff578
        cmp     r0, #0
        bne     L1432
        movs    r2, r6
        movs    r6, #0x10
        cmp     r2, #0
        beq     L142e
        cmp     r2, #1
        beq     L13ec
        cmp     r2, #2
        bne     L1432
        b       L13f6
L13ec:
        movs    r0, r4
        bl      Fn_001d54_t
        adds    r5, r0, r5
        b       L142e
L13f6:
        movs    r0, r7
        bl      Fn_1ff5a4
        ldr     r1, [r4, #0xc]
        orrs    r1, r6
        cmp     r0, #0
        str     r1, [r4, #0xc]
        bge     L1410
        movs    r0, r4
        bl      Fn_1ff5ac_t
        movs    r0, #1
        pop     {r3, r4, r5, r6, r7, pc}
L1410:
        lsls    r1, r1, #0xf
        bpl     L142c
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #0x2c]
        cmp     r1, r2
        bhi     L141e
        movs    r1, r2
L141e:
        ldr     r2, [r4, #0x18]
        adds    r1, r1, r2
        ldr     r2, [r4, #0x10]
        subs    r1, r1, r2
        cmp     r1, r0
        ble     L142c
        movs    r0, r1
L142c:
        adds    r5, r5, r0
L142e:
        cmp     r5, #0
        bge     L1436
L1432:
        movs    r0, #2
        pop     {r3, r4, r5, r6, r7, pc}
L1436:
        ldr     r1, [r4, #0x2c]
        ldr     r0, [r4, #4]
        ldr     r2, [r4, #0xc]
        cmp     r1, r0
        bhs     L144e
        lsls    r1, r2, #0xe
        str     r0, [r4, #0x2c]
        bpl     L144e
        movs    r1, #1
        lsls    r1, r1, #0x11
        bics    r2, r1
        orrs    r2, r6
L144e:
        ldr     r6, [r4, #0x18]
        cmp     r6, r5
        bgt     L1478
        ldr     r1, [r4, #0x2c]
        cmp     r1, r0
        bls     L145e
        movs    r3, r1
        b       L1460
L145e:
        movs    r3, r0
L1460:
        adds    r7, r3, r6
        ldr     r3, [r4, #0x10]
        subs    r7, r7, r3
        cmp     r7, r5
        ble     L1478
        cmp     r1, r0
        bls     L1472
        movs    r7, r1
        b       L1474
L1472:
        movs    r7, r0
L1474:
        cmp     r7, r3
        bne     L1486
L1478:
        movs    r0, #0x20
        orrs    r2, r0
        movs    r0, #0
        str     r0, [r4, #8]
        str     r5, [r4, #0x28]
        str     r0, [r4]
        b       L14a2
L1486:
        subs    r5, r5, r6
        ldr     r6, [r4, #0x1c]
        subs    r6, r5, r6
        cmp     r1, r0
        str     r6, [r4, #8]
        bls     L1494
        movs    r0, r1
L1494:
        subs    r0, r0, r3
        subs    r0, r5, r0
        str     r0, [r4]
        adds    r0, r3, r5
        str     r0, [r4, #4]
        movs    r0, #0x20
        bics    r2, r0
L14a2:
        ldr     r0, L14b0
        ands    r2, r0
        movs    r0, #0
        str     r2, [r4, #0xc]
        adds    r4, #0x40
        strb    r0, [r4, #4]
        pop     {r3, r4, r5, r6, r7, pc}
L14b0:
        .word   0xffd7cfbf
        .size   A_0013c0, . - A_0013c0

@ FUN_000015f0 (Thumb)
        .section .text.A_0015f0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0015f0
        .thumb_func
        .type   A_0015f0, %function
A_0015f0:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_1fe034
        ldr     r2, [r0, #0xc]
        ldr     r1, [r0, #8]
        ldr     r0, [r2]
        adds    r0, r0, r2
        str     r0, [r4]
        ldr     r0, [r2, #4]
        adds    r0, r0, r2
        str     r0, [r4, #4]
        ldr     r0, [r2, #8]
        adds    r0, r0, r2
        str     r0, [r4, #8]
        ldr     r0, [r1, #8]
        adds    r0, r0, r1
        str     r0, [r4, #0xc]
        ldr     r0, [r1, #0xc]
        adds    r0, r0, r1
        str     r0, [r4, #0x10]
        ldr     r0, [r1, #0x10]
        adds    r0, r0, r1
        str     r0, [r4, #0x14]
        ldr     r0, [r1, #0x14]
        adds    r0, r0, r1
        str     r0, [r4, #0x18]
        ldr     r0, [r1, #0x18]
        adds    r0, r0, r1
        str     r0, [r4, #0x1c]
        ldr     r0, [r1, #0x1c]
        adds    r0, r0, r1
        str     r0, [r4, #0x20]
        ldr     r0, [r1, #0x20]
        adds    r0, r0, r1
        str     r0, [r4, #0x24]
        ldrb    r0, [r1]
        adds    r4, #0x20
        strb    r0, [r4, #8]
        ldrb    r0, [r1, #1]
        strb    r0, [r4, #9]
        ldrb    r0, [r1, #2]
        strb    r0, [r4, #0xa]
        ldrb    r0, [r1, #3]
        strb    r0, [r4, #0xb]
        ldrb    r0, [r1, #4]
        strb    r0, [r4, #0xc]
        ldrb    r0, [r1, #5]
        strb    r0, [r4, #0xd]
        ldrb    r0, [r1, #6]
        strb    r0, [r4, #0xe]
        ldrb    r0, [r1, #7]
        strb    r0, [r4, #0xf]
        pop     {r4, pc}
        .size   A_0015f0, . - A_0015f0

@ FUN_00001668 (Thumb)
        .section .text.A_001668,"ax",%progbits
        .balign 4
        .thumb
        .global A_001668
        .thumb_func
        .type   A_001668, %function
A_001668:
        push    {r4, lr}
        bl      Fn_1fd390_t
        ldr     r1, [r0, #0x10]
        cmp     r1, #0
        beq     L167c
        movs    r2, #0
        str     r2, [r0, #0x10]
        blx     r1
        b       L1680
L167c:
        ldr     r0, [r0, #4]
        blx     r0
L1680:
        bl      Fn_1fd5dc
        .size   A_001668, . - A_001668

@ FUN_00001684 (Thumb)
        .section .text.A_001684,"ax",%progbits
        .balign 4
        .thumb
        .global A_001684
        .thumb_func
        .type   A_001684, %function
A_001684:
        push    {r4, lr}
        bl      Fn_1fd454_t
        pop     {r4, pc}
        .size   A_001684, . - A_001684

@ FUN_0000168c (Thumb)
        .section .text.A_00168c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00168c
        .thumb_func
        .type   A_00168c, %function
A_00168c:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_1fd738
        ldr     r0, [r0]
        ldrb    r0, [r0, r4]
        lsls    r0, r0, #0x1f
        lsrs    r0, r0, #0x1f
        pop     {r4, pc}
        .size   A_00168c, . - A_00168c

@ FUN_0000169e (Thumb)
        .section .text.A_00169e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00169e
        .thumb_func
        .type   A_00169e, %function
A_00169e:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r5, #0
        movs    r4, r3
        mvns    r5, r5
        sub     sp, #0xc
        movs    r0, #0
        str     r0, [sp]
        str     r0, [sp, #4]
        ldr     r7, [r3, #8]
        ldr     r6, [r3, #4]
L16b2:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        str     r0, [sp, #8]
        ldr     r1, [r4, #0x20]
        blx     r1
        cmp     r0, #0
        bne     L16b2
        ldr     r0, [sp, #8]
        adds    r0, r0, #1
        beq     L16e4
        movs    r0, #3
        lsls    r0, r0, #9
        bics    r6, r0
        cmp     r7, #0
        ble     L1708
        lsls    r0, r6, #0x19
        bpl     L1702
        ldr     r0, [sp, #8]
        cmp     r0, #0x2b
        beq     L16f2
        cmp     r0, #0x2d
        bne     L1702
        b       L16ec
L16e4:
        movs    r0, #0
        mvns    r0, r0
L16e8:
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L16ec:
        movs    r0, #1
        lsls    r0, r0, #0xa
        orrs    r6, r0
L16f2:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        subs    r7, r7, #1
        cmp     r7, #0
        str     r0, [sp, #8]
        ble     L1708
L1702:
        ldr     r0, [sp, #8]
        cmp     r0, #0x30
        beq     L1710
L1708:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L175a
        b       L178a
L1710:
        movs    r0, #1
        ldr     r1, [r4, #0x18]
        lsls    r0, r0, #9
        orrs    r6, r0
        subs    r7, r7, #1
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        cmp     r7, #0
        str     r0, [sp, #8]
        ble     L172e
        cmp     r0, #0x78
        beq     L1736
        cmp     r0, #0x58
        beq     L1736
L172e:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L1756
        b       L178a
L1736:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L1740
        cmp     r0, #0x10
        bne     L178a
L1740:
        movs    r0, #1
        ldr     r1, [r4, #0x18]
        lsls    r0, r0, #9
        bics    r6, r0
        subs    r7, r7, #1
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        str     r0, [sp, #8]
        movs    r0, #0x10
        b       L175c
L1756:
        movs    r0, #8
        b       L175c
L175a:
        movs    r0, #0xa
L175c:
        str     r0, [sp, #0x14]
        b       L178a
L1760:
        ldr     r2, [sp, #0x14]
        movs    r0, #1
        ldr     r1, [sp, #4]
        lsls    r0, r0, #9
        orrs    r6, r0
        ldr     r0, [sp]
        subs    r7, r7, #1
        asrs    r3, r2, #0x1f
        bl      Fn_200ad0
        ldr     r2, [sp, #8]
        asrs    r3, r2, #0x1f
        adds    r0, r0, r2
        adcs    r1, r3
        str     r1, [sp, #4]
        str     r0, [sp]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        str     r0, [sp, #8]
L178a:
        cmp     r7, #0
        ble     L179c
        ldr     r1, [sp, #0x14]
        ldr     r0, [sp, #8]
        bl      Fn_1ff540_t
        cmp     r0, #0
        str     r0, [sp, #8]
        bge     L1760
L179c:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x10]
        blx     r1
        lsls    r0, r6, #0x16
        bmi     L17ac
        movs    r0, #1
        mvns    r0, r0
        b       L16e8
L17ac:
        lsls    r0, r6, #0x1f
        bne     L17d0
        lsls    r0, r6, #0x19
        bpl     L17d4
        ldr     r1, [sp]
        lsls    r0, r6, #0x15
        bpl     L17c4
        ldr     r0, [sp, #4]
        movs    r2, #0
        rsbs    r1, r1, #0
        sbcs    r2, r0
        b       L17c6
L17c4:
        ldr     r2, [sp, #4]
L17c6:
        ldr     r0, [r4]
        adds    r3, r0, #4
        str     r3, [r4]
        ldr     r0, [r0]
L17ce:
        stm     r0!, {r1, r2}
L17d0:
        movs    r0, r5
        b       L16e8
L17d4:
        ldr     r0, [r4]
        adds    r1, r0, #4
        str     r1, [r4]
        ldr     r0, [r0]
        ldr     r2, [sp, #4]
        ldr     r1, [sp]
        b       L17ce
        .size   A_00169e, . - A_00169e

@ FUN_000017e2 (Thumb)
        .section .text.A_0017e2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0017e2
        .thumb_func
        .type   A_0017e2, %function
A_0017e2:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r7, #0
        movs    r5, r3
        mvns    r7, r7
        sub     sp, #0xc
        ldr     r4, [r3, #4]
        movs    r0, #0
        str     r0, [sp, #4]
        ldr     r6, [r3, #8]
L17f4:
        ldr     r1, [r5, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r7, r7, #1
        blx     r1
        str     r0, [sp]
        ldr     r1, [r5, #0x20]
        blx     r1
        cmp     r0, #0
        bne     L17f4
        ldr     r0, [sp]
        adds    r0, r0, #1
        beq     L1826
        movs    r0, #3
        lsls    r0, r0, #9
        bics    r4, r0
        cmp     r6, #0
        ble     L184a
        lsls    r0, r4, #0x19
        bpl     L1844
        ldr     r0, [sp]
        cmp     r0, #0x2b
        beq     L1834
        cmp     r0, #0x2d
        bne     L1844
        b       L182e
L1826:
        movs    r0, #0
        mvns    r0, r0
L182a:
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L182e:
        movs    r0, #1
        lsls    r0, r0, #0xa
        orrs    r4, r0
L1834:
        ldr     r1, [r5, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r7, r7, #1
        blx     r1
        subs    r6, r6, #1
        cmp     r6, #0
        str     r0, [sp]
        ble     L184a
L1844:
        ldr     r0, [sp]
        cmp     r0, #0x30
        beq     L1852
L184a:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L189c
        b       L18be
L1852:
        movs    r0, #1
        ldr     r1, [r5, #0x18]
        lsls    r0, r0, #9
        orrs    r4, r0
        subs    r6, r6, #1
        ldr     r0, [sp, #0x10]
        adds    r7, r7, #1
        blx     r1
        cmp     r6, #0
        str     r0, [sp]
        ble     L1870
        cmp     r0, #0x78
        beq     L1878
        cmp     r0, #0x58
        beq     L1878
L1870:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L1898
        b       L18be
L1878:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L1882
        cmp     r0, #0x10
        bne     L18be
L1882:
        movs    r0, #1
        ldr     r1, [r5, #0x18]
        lsls    r0, r0, #9
        bics    r4, r0
        subs    r6, r6, #1
        ldr     r0, [sp, #0x10]
        adds    r7, r7, #1
        blx     r1
        str     r0, [sp]
        movs    r0, #0x10
        b       L189e
L1898:
        movs    r0, #8
        b       L189e
L189c:
        movs    r0, #0xa
L189e:
        str     r0, [sp, #0x14]
        b       L18be
L18a2:
        movs    r1, #1
        ldr     r2, [sp, #0x14]
        lsls    r1, r1, #9
        orrs    r4, r1
        ldr     r1, [sp, #4]
        subs    r6, r6, #1
        muls    r1, r2, r1
        adds    r0, r1, r0
        str     r0, [sp, #4]
        ldr     r1, [r5, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r7, r7, #1
        blx     r1
        str     r0, [sp]
L18be:
        cmp     r6, #0
        ble     L18ce
        ldr     r1, [sp, #0x14]
        ldr     r0, [sp]
        bl      Fn_1ff540_t
        cmp     r0, #0
        bge     L18a2
L18ce:
        ldr     r1, [r5, #0x1c]
        ldr     r0, [sp, #0x10]
        blx     r1
        lsls    r0, r4, #0x16
        bmi     L18de
        movs    r0, #1
        mvns    r0, r0
        b       L182a
L18de:
        lsls    r0, r4, #0x1f
        bne     L1928
        lsls    r0, r4, #0x19
        bpl     L190a
        lsls    r0, r4, #0x15
        ldr     r0, [sp, #4]
        bpl     L18ee
        rsbs    r0, r0, #0
L18ee:
        ldr     r1, [r5]
        adds    r2, r1, #4
        str     r2, [r5]
        ldr     r1, [r1]
        lsls    r2, r4, #0x14
        bpl     L18fe
        strb    r0, [r1]
        b       L1928
L18fe:
        lsls    r2, r4, #0x1c
        bpl     L1906
        strh    r0, [r1]
        b       L1928
L1906:
        str     r0, [r1]
        b       L1928
L190a:
        ldr     r0, [r5]
        adds    r1, r0, #4
        str     r1, [r5]
        ldr     r0, [r0]
        lsls    r1, r4, #0x14
        bpl     L191c
        ldr     r1, [sp, #4]
        strb    r1, [r0]
        b       L1928
L191c:
        lsls    r1, r4, #0x1c
        ldr     r1, [sp, #4]
        bpl     L1926
        strh    r1, [r0]
        b       L1928
L1926:
        str     r1, [r0]
L1928:
        movs    r0, r7
        b       L182a
        .size   A_0017e2, . - A_0017e2

@ FUN_0000192c (Thumb)
        .section .text.A_00192c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00192c
        .thumb_func
        .type   A_00192c, %function
A_00192c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0xc
        movs    r4, r2
        movs    r7, #0
        ldr     r0, [r2, #4]
        movs    r6, r7
        str     r0, [sp, #4]
        ldr     r0, [r2, #8]
        str     r0, [sp]
        ldr     r1, [r2, #0x18]
        ldr     r0, [sp, #0x10]
        blx     r1
        movs    r5, r0
        ldr     r1, [sp, #0x30]
        ldr     r0, [sp, #0x18]
        orrs    r0, r1
        beq     L195a
        b       L1964
L1950:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r6, r6, #1
        blx     r1
        movs    r5, r0
L195a:
        ldr     r1, [r4, #0x20]
        movs    r0, r5
        blx     r1
        cmp     r0, #0
        bne     L1950
L1964:
        adds    r0, r5, #1
        beq     L1970
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        beq     L1978
        b       L199c
L1970:
        movs    r0, #0
        mvns    r0, r0
L1974:
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L1978:
        ldr     r0, [r4]
        adds    r1, r0, #4
        str     r1, [r4]
        ldr     r7, [r0]
        b       L199c
L1982:
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        bne     L198c
        strb    r5, [r7]
        adds    r7, r7, #1
L198c:
        ldr     r0, [sp]
        subs    r0, r0, #1
        str     r0, [sp]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r6, r6, #1
        blx     r1
        movs    r5, r0
L199c:
        ldr     r0, [sp]
        cmp     r0, #0
        ble     L19dc
        adds    r0, r5, #1
        beq     L19dc
        ldr     r0, [sp, #0x18]
        cmp     r0, #0
        beq     L19cc
        asrs    r0, r5, #0x1f
        lsrs    r0, r0, #0x1b
        adds    r0, r0, r5
        asrs    r1, r0, #5
        lsrs    r0, r0, #5
        lsls    r2, r1, #2
        ldr     r1, [sp, #0x18]
        lsls    r0, r0, #5
        adds    r1, r2, r1
        subs    r2, r5, r0
        ldr     r1, [r1]
        movs    r0, #1
        lsls    r0, r2
        tst     r1, r0
        bne     L1982
        b       L19dc
L19cc:
        ldr     r0, [sp, #0x30]
        cmp     r0, #0
        bne     L1982
        ldr     r1, [r4, #0x20]
        movs    r0, r5
        blx     r1
        cmp     r0, #0
        beq     L1982
L19dc:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x10]
        blx     r1
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #0x30]
        lsls    r0, r0, #0x1f
        lsrs    r0, r0, #0x1f
        orrs    r0, r1
        bne     L19f0
        strb    r0, [r7]
L19f0:
        ldr     r1, [r4, #8]
        ldr     r0, [sp]
        cmp     r1, r0
        ble     L1a04
        ldr     r0, [sp, #0x30]
        cmp     r0, #0
        beq     L1a0a
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L1a0a
L1a04:
        movs    r0, #1
        mvns    r0, r0
        b       L1974
L1a0a:
        movs    r0, r6
        b       L1974
        .size   A_00192c, . - A_00192c

@ FUN_00001a1c (Thumb)
        .section .text.A_001a1c,"ax",%progbits
        .balign 4
        .thumb
        .global A_001a1c
        .thumb_func
        .type   A_001a1c, %function
A_001a1c:
        movs    r3, r1
        push    {r4, lr}
        movs    r1, r2
        str     r3, [r2, #0xc]
        ldr     r2, L1a3c
        add     r2, pc
        str     r2, [r1, #0x14]
        ldr     r2, L1a40
        add     r2, pc
        str     r2, [r1, #0x20]
        movs    r2, #0
        str     r2, [r1, #0x10]
        bl      Fn_001d98_t
        pop     {r4, pc}
        .short  0x0000
L1a3c:
        .word   0xffffffe7
L1a40:
        .word   0xfffffc5d
        .size   A_001a1c, . - A_001a1c

@ FUN_00001a8a (Thumb)
        .section .text.A_001a8a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_001a8a
        .thumb_func
        .type   A_001a8a, %function
A_001a8a:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x1c
        movs    r7, #0
        movs    r4, r2
        ldr     r0, [r2, #4]
        movs    r6, r7
        str     r0, [sp, #4]
        ldr     r0, [r2, #8]
        str     r7, [sp, #8]
        str     r7, [sp, #0xc]
        str     r7, [sp, #0x10]
        str     r0, [sp]
        ldr     r1, [r2, #0x18]
        ldr     r0, [sp, #0x20]
        blx     r1
        movs    r5, r0
        ldr     r1, [sp, #0x40]
        ldr     r0, [sp, #0x28]
        orrs    r0, r1
        beq     L1abe
        b       L1ac8
L1ab4:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x20]
        adds    r6, r6, #1
        blx     r1
        movs    r5, r0
L1abe:
        ldr     r1, [r4, #0x20]
        movs    r0, r5
        blx     r1
        cmp     r0, #0
        bne     L1ab4
L1ac8:
        adds    r0, r5, #1
        beq     L1ad4
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        beq     L1adc
        b       L1b2c
L1ad4:
        movs    r0, #0
        mvns    r0, r0
L1ad8:
        add     sp, #0x2c
        pop     {r4, r5, r6, r7, pc}
L1adc:
        ldr     r0, [r4]
        adds    r1, r0, #4
        str     r1, [r4]
        ldr     r7, [r0]
        b       L1b2c
L1ae6:
        lsls    r1, r5, #0x18
        add     r2, sp, #0xc
        lsrs    r1, r1, #0x18
        add     r0, sp, #0x14
        bl      Fn_1fdf14_t
        adds    r1, r0, #1
        beq     L1b06
        adds    r0, r0, #2
        beq     L1b0e
        movs    r0, #0
        str     r0, [sp, #8]
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        beq     L1b14
        b       L1b1c
L1b06:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x20]
        blx     r1
        b       L1b9a
L1b0e:
        movs    r0, #1
        str     r0, [sp, #8]
        b       L1b22
L1b14:
        mov     r0, sp
        ldrh    r0, [r0, #0x14]
        strh    r0, [r7]
        adds    r7, r7, #2
L1b1c:
        ldr     r0, [sp]
        subs    r0, r0, #1
        str     r0, [sp]
L1b22:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x20]
        adds    r6, r6, #1
        blx     r1
        movs    r5, r0
L1b2c:
        ldr     r0, [sp]
        cmp     r0, #0
        ble     L1b6c
        adds    r0, r5, #1
        beq     L1b6c
        ldr     r0, [sp, #0x28]
        cmp     r0, #0
        beq     L1b5c
        asrs    r0, r5, #0x1f
        lsrs    r0, r0, #0x1b
        adds    r0, r0, r5
        asrs    r1, r0, #5
        lsrs    r0, r0, #5
        lsls    r2, r1, #2
        ldr     r1, [sp, #0x28]
        lsls    r0, r0, #5
        adds    r1, r2, r1
        subs    r2, r5, r0
        ldr     r1, [r1]
        movs    r0, #1
        lsls    r0, r2
        tst     r1, r0
        bne     L1ae6
        b       L1b6c
L1b5c:
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        bne     L1ae6
        ldr     r1, [r4, #0x20]
        movs    r0, r5
        blx     r1
        cmp     r0, #0
        beq     L1ae6
L1b6c:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x20]
        blx     r1
        ldr     r0, [sp, #8]
        cmp     r0, #0
        bne     L1b9a
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #0x40]
        lsls    r0, r0, #0x1f
        lsrs    r0, r0, #0x1f
        orrs    r0, r1
        bne     L1b86
        strh    r0, [r7]
L1b86:
        ldr     r1, [r4, #8]
        ldr     r0, [sp]
        cmp     r1, r0
        ble     L1b9a
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        beq     L1ba0
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L1ba0
L1b9a:
        movs    r0, #1
        mvns    r0, r0
        b       L1ad8
L1ba0:
        movs    r0, r6
        b       L1ad8
        .size   A_001a8a, . - A_001a8a

@ FUN_00001ba4 (Thumb)
        .section .text.A_001ba4,"ax",%progbits
        .balign 4
        .thumb
        .global A_001ba4
        .thumb_func
        .type   A_001ba4, %function
A_001ba4:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x14
        movs    r0, #0
        movs    r4, r2
        str     r0, [sp]
        ldr     r0, [r2, #4]
        str     r0, [sp, #4]
        ldr     r6, [r2, #8]
        movs    r0, #0
        str     r0, [sp, #8]
        str     r0, [sp, #0xc]
        ldr     r1, [r2, #0x18]
        movs    r5, r0
        ldr     r0, [sp, #0x18]
        blx     r1
        movs    r7, r0
        ldr     r1, [sp, #0x40]
        ldr     r0, [sp, #0x20]
        orrs    r0, r1
        beq     L1bd8
        b       L1be2
L1bce:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x18]
        adds    r5, r5, #1
        blx     r1
        movs    r7, r0
L1bd8:
        ldr     r1, [r4, #0x20]
        movs    r0, r7
        blx     r1
        cmp     r0, #0
        bne     L1bce
L1be2:
        adds    r0, r7, #1
        beq     L1bee
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        beq     L1bf6
        b       L1c2a
L1bee:
        movs    r0, #0
        mvns    r0, r0
L1bf2:
        add     sp, #0x24
        pop     {r4, r5, r6, r7, pc}
L1bf6:
        ldr     r0, [r4]
        adds    r1, r0, #4
        str     r1, [r4]
        ldr     r0, [r0]
        str     r0, [sp]
        b       L1c2a
L1c02:
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        bne     L1c1e
        lsls    r1, r7, #0x10
        ldr     r0, [sp]
        lsrs    r1, r1, #0x10
        add     r2, sp, #8
        bl      Fn_1fd920_t
        adds    r1, r0, #1
        beq     L1c7e
        ldr     r1, [sp]
        adds    r0, r1, r0
        str     r0, [sp]
L1c1e:
        ldr     r1, [r4, #0x18]
        subs    r6, r6, #1
        ldr     r0, [sp, #0x18]
        adds    r5, r5, #1
        blx     r1
        movs    r7, r0
L1c2a:
        cmp     r6, #0
        ble     L1c58
        adds    r0, r7, #1
        beq     L1c58
        ldr     r0, [sp, #0x20]
        cmp     r0, #0
        beq     L1c48
        ldr     r2, [sp, #0x3c]
        ldr     r1, [sp, #0x38]
        movs    r3, r7
        bl      Fn_200d10_t
        cmp     r0, #0
        bne     L1c02
        b       L1c58
L1c48:
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        bne     L1c02
        ldr     r1, [r4, #0x20]
        movs    r0, r7
        blx     r1
        cmp     r0, #0
        beq     L1c02
L1c58:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x18]
        blx     r1
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #0x40]
        lsls    r0, r0, #0x1f
        lsrs    r0, r0, #0x1f
        orrs    r0, r1
        bne     L1c6e
        ldr     r1, [sp]
        strb    r0, [r1]
L1c6e:
        ldr     r0, [r4, #8]
        cmp     r0, r6
        ble     L1c7e
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        beq     L1c84
        cmp     r6, #0
        beq     L1c84
L1c7e:
        movs    r0, #1
        mvns    r0, r0
        b       L1bf2
L1c84:
        movs    r0, r5
        b       L1bf2
        .size   A_001ba4, . - A_001ba4

@ FUN_00001c88 (Thumb)
        .section .text.A_001c88,"ax",%progbits
        .balign 4
        .thumb
        .global A_001c88
        .thumb_func
        .type   A_001c88, %function
A_001c88:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0xc
        movs    r4, r2
        movs    r6, #0
        ldr     r0, [r2, #4]
        movs    r5, r6
        str     r0, [sp, #4]
        ldr     r1, [r2, #0x18]
        ldr     r7, [r2, #8]
        ldr     r0, [sp, #0x10]
        blx     r1
        str     r0, [sp]
        ldr     r1, [sp, #0x38]
        ldr     r0, [sp, #0x18]
        orrs    r0, r1
        beq     L1cb4
        b       L1cbe
L1caa:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        str     r0, [sp]
L1cb4:
        ldr     r1, [r4, #0x20]
        ldr     r0, [sp]
        blx     r1
        cmp     r0, #0
        bne     L1caa
L1cbe:
        ldr     r0, [sp]
        adds    r0, r0, #1
        beq     L1ccc
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        beq     L1cd4
        b       L1cf6
L1ccc:
        movs    r0, #0
        mvns    r0, r0
L1cd0:
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L1cd4:
        ldr     r0, [r4]
        adds    r1, r0, #4
        str     r1, [r4]
        ldr     r6, [r0]
        b       L1cf6
L1cde:
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x1f
        bne     L1cea
        ldr     r0, [sp]
        strh    r0, [r6]
        adds    r6, r6, #2
L1cea:
        ldr     r1, [r4, #0x18]
        subs    r7, r7, #1
        ldr     r0, [sp, #0x10]
        adds    r5, r5, #1
        blx     r1
        str     r0, [sp]
L1cf6:
        cmp     r7, #0
        ble     L1d26
        ldr     r0, [sp]
        adds    r0, r0, #1
        beq     L1d26
        ldr     r0, [sp, #0x18]
        cmp     r0, #0
        beq     L1d16
        ldr     r3, [sp]
        ldr     r2, [sp, #0x34]
        ldr     r1, [sp, #0x30]
        bl      Fn_200d10_t
        cmp     r0, #0
        bne     L1cde
        b       L1d26
L1d16:
        ldr     r0, [sp, #0x38]
        cmp     r0, #0
        bne     L1cde
        ldr     r1, [r4, #0x20]
        ldr     r0, [sp]
        blx     r1
        cmp     r0, #0
        beq     L1cde
L1d26:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x10]
        blx     r1
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #0x38]
        lsls    r0, r0, #0x1f
        lsrs    r0, r0, #0x1f
        orrs    r0, r1
        bne     L1d3a
        strh    r0, [r6]
L1d3a:
        ldr     r0, [r4, #8]
        cmp     r0, r7
        ble     L1d4a
        ldr     r0, [sp, #0x38]
        cmp     r0, #0
        beq     L1d50
        cmp     r7, #0
        beq     L1d50
L1d4a:
        movs    r0, #1
        mvns    r0, r0
        b       L1cd0
L1d50:
        movs    r0, r5
        b       L1cd0
        .size   A_001c88, . - A_001c88

@ FUN_00001d98 (Thumb)
        .section .text.A_001d98,"ax",%progbits
        .balign 4
        .thumb
        .global A_001d98
        .thumb_func
        .type   A_001d98, %function
A_001d98:
        push    {r0, r1, r4, r5, r6, r7, lr}
        sub     sp, #0x3c
        movs    r0, #0
        str     r0, [sp, #0x30]
        movs    r0, #1
        str     r0, [sp, #0x38]
        movs    r4, r1
        movs    r6, #0
        movs    r0, r1
        adds    r0, #0xc
        str     r0, [sp, #0xc]
L1dae:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        movs    r5, r0
        beq     L1e18
        cmp     r5, #0x25
        beq     L1e1a
        ldr     r1, [r4, #0x20]
        blx     r1
        cmp     r0, #0
        beq     L1df8
L1dc6:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        ldr     r1, [r4, #0x20]
        blx     r1
        cmp     r0, #0
        bne     L1dc6
        ldr     r2, [r4, #0x14]
        subs    r1, r0, #1
        ldr     r0, [sp, #0xc]
        blx     r2
        b       L1de2
L1de0:
        adds    r6, r6, #1
L1de2:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x3c]
        blx     r1
        ldr     r1, [r4, #0x20]
        blx     r1
        cmp     r0, #0
        bne     L1de0
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x3c]
        blx     r1
        b       L1dae
L1df8:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x3c]
        blx     r1
        movs    r7, r0
        cmp     r0, r5
        bne     L1e08
L1e04:
        adds    r6, r6, #1
        b       L1dae
L1e08:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x3c]
        blx     r1
        adds    r7, r7, #1
        bne     L1e18
L1e12:
        ldr     r0, [sp, #0x30]
        cmp     r0, #0
        beq     L1f08
L1e18:
        b       L2108
L1e1a:
        ldr     r2, [r4, #0x14]
        movs    r7, #0
        movs    r5, r7
        ldr     r0, [sp, #0xc]
        movs    r1, r7
        blx     r2
        cmp     r0, #0x2a
        bne     L1e44
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        movs    r5, #1
        b       L1e44
L1e36:
        movs    r1, #0xa
        muls    r7, r1, r7
        adds    r7, r7, r0
        subs    r7, #0x30
        bmi     L1e18
        movs    r0, #0x10
        orrs    r5, r0
L1e44:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        movs    r1, r0
        subs    r1, #0x30
        cmp     r1, #0xa
        bhs     L1e5c
        ldr     r1, L2120
        cmp     r7, r1
        bgt     L1e18
        b       L1e36
L1e5c:
        lsls    r1, r5, #0x1b
        bmi     L1e62
        ldr     r7, L2124
L1e62:
        cmp     r0, #0x6c
        beq     L1e7c
        cmp     r0, #0x4c
        beq     L1e8c
        cmp     r0, #0x68
        beq     L1eb8
        cmp     r0, #0x6a
        beq     L1ed0
        cmp     r0, #0x74
        beq     L1e90
        cmp     r0, #0x7a
        beq     L1e90
        b       L1e98
L1e7c:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        cmp     r0, #0x6c
        beq     L1ed0
        movs    r1, #4
        b       L1ec6
L1e8c:
        movs    r0, #0x20
L1e8e:
        orrs    r5, r0
L1e90:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
L1e98:
        str     r7, [r4, #8]
        cmp     r0, #0x65
        str     r5, [r4, #4]
        beq     L1f44
        bgt     L1ef0
        cmp     r0, #0x58
        beq     L1f1a
        bgt     L1ede
        cmp     r0, #0x45
        beq     L1f44
        bgt     L1ed4
        cmp     r0, #0x25
        beq     L1f1c
        cmp     r0, #0x41
L1eb4:
        bne     L1e18
        b       L1f44
L1eb8:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        cmp     r0, #0x68
        beq     L1eca
        movs    r1, #8
L1ec6:
        orrs    r5, r1
        b       L1e98
L1eca:
        movs    r0, #1
        lsls    r0, r0, #0xb
        b       L1e8e
L1ed0:
        movs    r0, #2
        b       L1e8e
L1ed4:
        cmp     r0, #0x46
        beq     L1f44
        cmp     r0, #0x47
        bne     L1e18
        b       L1f44
L1ede:
        cmp     r0, #0x5b
        beq     L1fc4
        cmp     r0, #0x61
        beq     L1f44
        cmp     r0, #0x63
        beq     L1fc4
        cmp     r0, #0x64
        bne     L1e18
        b       L1fb6
L1ef0:
        cmp     r0, #0x6f
        beq     L1f94
        bgt     L1f0a
        cmp     r0, #0x66
        beq     L1f44
        cmp     r0, #0x67
        beq     L1f44
        cmp     r0, #0x69
        beq     L1f54
        cmp     r0, #0x6e
        bne     L1e18
        b       L1f6c
L1f08:
        b       L2100
L1f0a:
        cmp     r0, #0x70
        beq     L1fac
        cmp     r0, #0x73
        beq     L1ff2
        cmp     r0, #0x75
        beq     L1fb6
        cmp     r0, #0x78
        bne     L1eb4
L1f1a:
        b       L1fc6
L1f1c:
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x3c]
        blx     r1
        movs    r5, r0
        cmp     r0, #0x25
        bne     L1f2a
        b       L1e04
L1f2a:
        ldr     r1, [r4, #0x1c]
        ldr     r0, [sp, #0x3c]
        blx     r1
        adds    r5, r5, #1
        bne     L1f36
        b       L1e12
L1f36:
        b       L2108
L1f38:
        movs    r3, r4
        movs    r2, #0xa
        b       L1fd6
L1f3e:
        movs    r3, r4
        movs    r2, #0xa
        b       L1fe6
L1f44:
        movs    r0, #1
        mov     r2, sp
        ldr     r1, [sp, #0x3c]
        movs    r3, r4
        mvns    r0, r0
        bl      Fn_200fe4
        b       L20f2
L1f54:
        movs    r0, r5
        movs    r1, #0x40
        orrs    r0, r1
        str     r0, [r4, #4]
        lsls    r0, r5, #0x1e
        bpl     L1f66
        movs    r3, r4
        movs    r2, #0
        b       L1fd6
L1f66:
        movs    r3, r4
        movs    r2, #0
        b       L1fe6
L1f6c:
        ldr     r0, [r4]
        adds    r1, r0, #4
        str     r1, [r4]
        ldr     r0, [r0]
        lsls    r1, r5, #0x14
        bpl     L1f7c
        strb    r6, [r0]
        b       L1dae
L1f7c:
        lsls    r1, r5, #0x1c
        bpl     L1f84
        strh    r6, [r0]
        b       L1dae
L1f84:
        lsls    r1, r5, #0x1e
        bpl     L1f90
        asrs    r1, r6, #0x1f
        str     r6, [r0]
        str     r1, [r0, #4]
        b       L1dae
L1f90:
        str     r6, [r0]
        b       L1dae
L1f94:
        movs    r0, r5
        movs    r1, #0x40
        orrs    r0, r1
        str     r0, [r4, #4]
        lsls    r0, r5, #0x1e
        bpl     L1fa6
        movs    r3, r4
        movs    r2, #8
        b       L1fd6
L1fa6:
        movs    r3, r4
        movs    r2, #8
        b       L1fe6
L1fac:
        ldr     r1, L2128
        movs    r0, r5
        ands    r0, r1
        str     r0, [r4, #4]
        b       L1fe2
L1fb6:
        movs    r0, r5
        movs    r1, #0x40
        orrs    r0, r1
        str     r0, [r4, #4]
        lsls    r0, r5, #0x1e
        bpl     L1f3e
        b       L1f38
L1fc4:
        b       L1ff2
L1fc6:
        movs    r0, r5
        movs    r1, #0x40
        orrs    r0, r1
        str     r0, [r4, #4]
        lsls    r0, r5, #0x1e
        bpl     L1fe2
        movs    r3, r4
        movs    r2, #0x10
L1fd6:
        movs    r0, #1
        ldr     r1, [sp, #0x3c]
        mvns    r0, r0
        bl      Fn_00169e_t
        b       L20f2
L1fe2:
        movs    r3, r4
        movs    r2, #0x10
L1fe6:
        movs    r0, #1
        ldr     r1, [sp, #0x3c]
        mvns    r0, r0
        bl      Fn_0017e2_t
        b       L20f2
L1ff2:
        movs    r1, #0
        movs    r3, r1
        cmp     r0, #0x63
        str     r1, [sp, #4]
        str     r1, [sp]
        str     r1, [sp, #8]
        str     r1, [sp, #0x34]
        beq     L2008
        cmp     r0, #0x5b
        beq     L2016
        b       L2070
L2008:
        lsls    r0, r5, #0x1b
        bmi     L2010
        movs    r0, #1
        str     r0, [r4, #8]
L2010:
        movs    r0, #1
        str     r0, [sp]
        b       L2070
L2016:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        cmp     r0, #0x5e
        bne     L202e
        movs    r0, #1
        str     r0, [sp, #4]
        ldr     r2, [r4, #0x14]
        movs    r1, r0
        ldr     r0, [sp, #0xc]
        blx     r2
L202e:
        ldr     r1, [r4, #0x10]
        cmp     r1, #0
        beq     L2096
        ldr     r1, [r4, #0xc]
        subs    r1, r1, #2
        str     r1, [sp, #0x34]
L203a:
        cmp     r0, #0
        beq     L2108
        ldr     r1, [r4, #0x10]
        cmp     r1, #0
        beq     L20a6
        ldr     r0, [sp, #8]
        adds    r0, r0, #1
        str     r0, [sp, #8]
L204a:
        ldr     r2, [r4, #0x14]
        ldr     r0, [sp, #0xc]
        movs    r1, #1
        blx     r2
        cmp     r0, #0x5d
        bne     L203a
        ldr     r0, [sp, #4]
        cmp     r0, #0
        beq     L206e
        movs    r0, #0
        add     r3, sp, #0x10
L2060:
        lsls    r1, r0, #2
        adds    r0, r0, #1
        ldr     r2, [r3, r1]
        mvns    r2, r2
        cmp     r0, #8
        str     r2, [r3, r1]
        blt     L2060
L206e:
        add     r3, sp, #0x10
L2070:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        ldr     r0, [r4, #4]
        beq     L20c6
        lsls    r0, r0, #0x1d
        cmp     r0, #0
        ldr     r2, [sp, #8]
        ldr     r0, [sp]
        ldr     r3, [sp, #0x34]
        str     r2, [sp]
        str     r0, [sp, #8]
        bge     L20e6
        movs    r0, #1
        ldr     r1, [sp, #0x3c]
        movs    r2, r4
        mvns    r0, r0
        bl      Fn_001c88_t
        b       L20f2
L2096:
        movs    r3, #0
        add     r2, sp, #0x10
L209a:
        lsls    r7, r1, #2
        adds    r1, r1, #1
        cmp     r1, #8
        str     r3, [r2, r7]
        blt     L209a
        b       L203a
L20a6:
        asrs    r1, r0, #0x1f
        lsrs    r1, r1, #0x1b
        adds    r1, r1, r0
        asrs    r2, r1, #5
        lsrs    r1, r1, #5
        lsls    r3, r2, #2
        add     r2, sp, #0x10
        adds    r2, r3, r2
        lsls    r1, r1, #5
        subs    r1, r0, r1
        ldr     r3, [r2]
        movs    r0, #1
        lsls    r0, r1
        orrs    r3, r0
        str     r3, [r2]
        b       L204a
L20c6:
        lsls    r0, r0, #0x1d
        bpl     L20d8
        movs    r0, #1
        ldr     r1, [sp, #0x3c]
        movs    r2, r4
        mvns    r0, r0
        bl      Fn_001a8a_t
        b       L20f2
L20d8:
        movs    r0, #1
        ldr     r1, [sp, #0x3c]
        movs    r2, r4
        mvns    r0, r0
        bl      Fn_00192c_t
        b       L20f2
L20e6:
        movs    r0, #1
        ldr     r1, [sp, #0x3c]
        movs    r2, r4
        mvns    r0, r0
        bl      Fn_001ba4_t
L20f2:
        cmp     r0, #0
        bge     L210c
        adds    r0, r0, #1
        bne     L2108
        ldr     r0, [sp, #0x38]
        cmp     r0, #0
        beq     L2108
L2100:
        movs    r0, #0
        mvns    r0, r0
L2104:
        add     sp, #0x44
        pop     {r4, r5, r6, r7, pc}
L2108:
        ldr     r0, [sp, #0x30]
        b       L2104
L210c:
        lsls    r1, r5, #0x1f
        bne     L2116
        ldr     r1, [sp, #0x30]
        adds    r1, r1, #1
        str     r1, [sp, #0x30]
L2116:
        adds    r6, r6, r0
        movs    r0, #0
        str     r0, [sp, #0x38]
        b       L1dae
        .short  0x0000
L2120:
        .word   0x0ccccccc
L2124:
        .word   0x7fffffff
L2128:
        .word   0xfffff7f1
        .size   A_001d98, . - A_001d98

@ FUN_000025f0 (Thumb)
        .section .text.A_0025f0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0025f0
        .thumb_func
        .type   A_0025f0, %function
A_0025f0:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r5, r0
        ldr     r0, [r1, #0xc]
        movs    r4, r1
        movs    r1, #5
        lsls    r1, r1, #0x13
        bics    r0, r1
        movs    r1, #1
        lsls    r1, r1, #0x16
        orrs    r0, r1
        str     r0, [r4, #0xc]
        lsls    r0, r0, #0x1a
        bpl     L2610
        movs    r0, r4
        bl      Fn_1ff658_t
L2610:
        ldr     r1, L27dc
        ldr     r0, [r4, #0xc]
        ands    r1, r0
        cmp     r1, #2
        beq     L2622
        movs    r0, r4
        bl      Fn_1ff5ac_t
        b       L27a2
L2622:
        movs    r1, #5
        movs    r2, #1
        lsls    r1, r1, #0xd
        ands    r1, r0
        lsls    r2, r2, #0xf
        cmp     r1, r2
        bne     L2650
        lsls    r0, r0, #0xf
        bpl     L2642
        ldr     r1, [r4, #4]
        ldr     r0, [r4, #0x2c]
        cmp     r0, r1
        bhi     L263e
        movs    r0, r1
L263e:
        str     r0, [r4, #4]
        b       L2650
L2642:
        ldr     r0, [r4, #0x10]
        str     r0, [r4, #0x2c]
        str     r0, [r4, #4]
        ldr     r0, [r4, #0x14]
        bl      Fn_1ff5a4
        str     r0, [r4, #0x18]
L2650:
        ldr     r1, [r4, #8]
        lsls    r6, r5, #0x18
        movs    r2, #0
        lsrs    r6, r6, #0x18
        cmp     r1, #0
        bge     L267a
        ldr     r0, [r4, #0xc]
        lsls    r3, r0, #0x16
        bmi     L267a
        mvns    r1, r1
        str     r1, [r4, #8]
        movs    r1, #9
        str     r2, [r4]
        lsls    r1, r1, #0xd
        orrs    r0, r1
        str     r0, [r4, #0xc]
        ldr     r0, [r4, #4]
        adds    r1, r0, #1
        str     r1, [r4, #4]
        strb    r6, [r0]
        b       L27d8
L267a:
        ldr     r0, [r4, #0xc]
        movs    r1, #1
        lsls    r1, r1, #0xd
        orrs    r0, r1
        str     r0, [r4, #0xc]
        movs    r0, #0
        str     r0, [r4]
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        bne     L26f6
        ldr     r0, [r4, #0x14]
        bl      Fn_1ff578
        movs    r5, r4
        adds    r5, #0x24
        movs    r7, #1
        cmp     r0, #0
        beq     L26ce
        ldr     r0, [r4, #0xc]
        lsls    r0, r0, #0x16
        lsrs    r0, r0, #0x1e
        beq     L26bc
        ldr     r0, [r4, #0x1c]
        bl      Fn_1fd52c
        cmp     r0, #0
        str     r0, [r4, #0x10]
        beq     L26bc
        ldr     r1, [r4, #0xc]
        lsls    r0, r7, #0xb
        orrs    r1, r0
        str     r1, [r4, #0xc]
        b       L26f2
L26bc:
        str     r7, [r4, #0x1c]
        str     r5, [r4, #0x10]
        ldr     r0, [r4, #0xc]
        movs    r1, #3
        lsls    r1, r1, #8
        bics    r0, r1
        movs    r1, #1
        lsls    r1, r1, #0xa
        b       L26ee
L26ce:
        ldr     r0, [r4, #0x1c]
        bl      Fn_1fd52c
        cmp     r0, #0
        str     r0, [r4, #0x10]
        beq     L26bc
        ldr     r0, [r4, #0xc]
        movs    r1, #1
        lsls    r1, r1, #0xb
        orrs    r0, r1
        str     r0, [r4, #0xc]
        lsls    r1, r0, #0x16
        lsrs    r1, r1, #0x1e
        bne     L26f2
        movs    r1, #0xff
        adds    r1, #1
L26ee:
        orrs    r0, r1
        str     r0, [r4, #0xc]
L26f2:
        ldr     r0, [r4, #0x10]
        str     r0, [r4, #4]
L26f6:
        ldr     r2, [r4, #0xc]
        ldr     r7, L27e0
        ldr     r5, [r4, #0x10]
        lsls    r0, r2, #0x17
        bpl     L2740
        ldr     r1, [r4, #4]
        ldr     r0, [r4, #0x2c]
        cmp     r0, r1
        bhi     L270a
        movs    r0, r1
L270a:
        subs    r1, r0, r5
        beq     L271a
        movs    r2, r4
        movs    r0, r5
        bl      Fn_1ff5c0_t
        cmp     r0, #0
        bne     L27a2
L271a:
        ldr     r0, [r4, #0xc]
        lsls    r1, r0, #8
        bpl     L272a
        str     r5, [r4, #0x2c]
        movs    r0, #0
        str     r5, [r4, #4]
        str     r0, [r4, #8]
        b       L27d2
L272a:
        adds    r1, r5, #1
        str     r1, [r4, #0x2c]
        str     r1, [r4, #4]
        ldr     r1, [r4, #0x1c]
        orrs    r0, r7
        subs    r1, r1, #1
        str     r1, [r4, #8]
        str     r0, [r4, #0xc]
        movs    r0, r6
        strb    r6, [r5]
        pop     {r3, r4, r5, r6, r7, pc}
L2740:
        lsls    r0, r2, #8
        bpl     L2748
        ands    r2, r7
        b       L275c
L2748:
        ldr     r0, [r4, #4]
        adds    r1, r0, #1
        str     r1, [r4, #4]
        strb    r6, [r0]
        ldr     r0, [r4, #0xc]
        orrs    r0, r7
        cmp     r6, #0xa
        str     r0, [r4, #0xc]
        beq     L2768
        movs    r2, #0
L275c:
        ldr     r1, [r4, #0x2c]
        ldr     r0, [r4, #4]
        cmp     r1, r0
        bls     L276c
        movs    r3, r1
        b       L276e
L2768:
        movs    r2, #1
        b       L275c
L276c:
        movs    r3, r0
L276e:
        ldr     r7, [r4, #0xc]
        subs    r3, r3, r5
        lsls    r7, r7, #0x15
        bmi     L2780
        ldr     r7, [r4, #0x1c]
        cmp     r7, r3
        ble     L2780
        cmp     r2, #0
        beq     L27be
L2780:
        cmp     r1, r0
        bhi     L2786
        movs    r1, r0
L2786:
        subs    r7, r1, r0
        movs    r0, #0
        str     r5, [r4, #0x2c]
        str     r5, [r4, #4]
        cmp     r3, #0
        str     r0, [r4, #8]
        ble     L27a8
        movs    r2, r4
        movs    r1, r3
        movs    r0, r5
        bl      Fn_1ff5c0_t
        cmp     r0, #0
        beq     L27a8
L27a2:
        movs    r0, #0
        mvns    r0, r0
        pop     {r3, r4, r5, r6, r7, pc}
L27a8:
        cmp     r7, #0
        beq     L27be
        ldr     r0, [r4, #0x18]
        str     r5, [r4, #0x2c]
        str     r5, [r4, #4]
        subs    r0, r0, r7
        str     r0, [r4, #0x18]
        ldr     r0, [r4, #0xc]
        movs    r1, #0x10
        orrs    r0, r1
        str     r0, [r4, #0xc]
L27be:
        ldr     r0, [r4, #0xc]
        lsls    r0, r0, #8
        bpl     L27d8
        ldr     r1, [r4, #4]
        ldr     r0, [r4, #0x18]
        str     r5, [r4, #0x2c]
        subs    r1, r1, r5
        adds    r0, r0, r1
        str     r5, [r4, #4]
        str     r0, [r4, #0x18]
L27d2:
        movs    r0, #1
        mvns    r0, r0
        pop     {r3, r4, r5, r6, r7, pc}
L27d8:
        movs    r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L27dc:
        .word   0x00001082
L27e0:
        .word   0x00010000
        .size   A_0025f0, . - A_0025f0

@ FUN_00002c78 (Thumb)
        .section .text.A_002c78,"ax",%progbits
        .balign 4
        .thumb
        .global A_002c78
        .thumb_func
        .type   A_002c78, %function
A_002c78:
        push    {r3, r4, r5, lr}
        movs    r4, r0
        mov     r0, sp
        mov     r8, r8
        mov     r8, r8
        movs    r1, r0
        movs    r0, r4
        bl      Fn_2020a0_t
        pop     {r3, r4, r5, pc}
        .size   A_002c78, . - A_002c78

@ FUN_00002c8c (Thumb)
        .section .text.A_002c8c,"ax",%progbits
        .balign 4
        .thumb
        .global A_002c8c
        .thumb_func
        .type   A_002c8c, %function
A_002c8c:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r5, r0
        movs    r6, r1
        ldr     r0, [r2, #0x14]
        movs    r4, r2
        bl      Fn_1fe27c
        movs    r7, #1
        cmp     r0, #0
        beq     L2ca6
        str     r7, [r4, #0xc]
        str     r5, [r4, #0x20]
L2ca4:
        pop     {r3, r4, r5, r6, r7, pc}
L2ca6:
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        beq     L2ca4
        ldr     r0, [r4, #0x1c]
        cmp     r0, r5
        bne     L2ca4
        ldr     r1, [r4, #0x18]
        movs    r0, r6
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L2ca4
        ldr     r0, [r4, #0x24]
        cmp     r0, #0
        beq     L2ccc
        movs    r0, #0
        str     r7, [r4, #0x10]
        str     r0, [r4, #0x24]
        pop     {r3, r4, r5, r6, r7, pc}
L2ccc:
        ldr     r0, [r4, #0x20]
        str     r0, [r4, #0x24]
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_002c8c, . - A_002c8c

@ FUN_00002cd2 (Thumb)
        .section .text.A_002cd2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_002cd2
        .thumb_func
        .type   A_002cd2, %function
A_002cd2:
        push    {r4, lr}
        ldr     r0, [r2, #0x14]
        movs    r4, r2
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L2ce6
        movs    r0, #0
        str     r0, [r4, #0x20]
        str     r0, [r4, #0xc]
L2ce6:
        pop     {r4, pc}
        .size   A_002cd2, . - A_002cd2

@ FUN_00002ce8 (Thumb)
        .section .text.A_002ce8,"ax",%progbits
        .balign 4
        .thumb
        .global A_002ce8
        .thumb_func
        .type   A_002ce8, %function
A_002ce8:
        push    {r3, r4, r5, lr}
        mov     r0, sp
        bl      Fn_2020b0_t
        movs    r0, #4
        bl      Fn_1fd4d0_t
        mov     r1, sp
        bl      Fn_2020c0_t
        movs    r4, r0
        mov     r0, sp
        bl      Fn_2020d0_t
        ldr     r2, L2d10
        ldr     r1, L2d14
        movs    r0, r4
        bl      Fn_1fe38a_t
        movs    r0, r0
L2d10:
        .word   0x003020d1
L2d14:
        .word   0x0080418c
        .size   A_002ce8, . - A_002ce8

@ FUN_00002d18 (Thumb)
        .section .text.A_002d18,"ax",%progbits
        .balign 4
        .thumb
        .global A_002d18
        .thumb_func
        .type   A_002d18, %function
A_002d18:
        push    {r0, r1, r2, r3, r4, lr}
        movs    r4, r3
        bl      Fn_202444_t
        ldr     r1, L2d34
        ldr     r1, [r1, #4]
        b       L2d2e
        bl      Fn_1fcdbc_t
        bl      Fn_1fd340_t
L2d2e:
        movs    r0, r4
        add     sp, #0x10
        pop     {r4, pc}
L2d34:
        .word   0x008bf9e8
        .size   A_002d18, . - A_002d18

@ FUN_00002d38 (Thumb)
        .section .text.A_002d38,"ax",%progbits
        .balign 4
        .thumb
        .global A_002d38
        .thumb_func
        .type   A_002d38, %function
A_002d38:
        push    {r0, r1, r4, lr}
        movs    r4, #0
        movs    r0, #1
        bl      Fn_202478_t
        movs    r4, r0
        b       L2d4e
        bl      Fn_1fcdbc_t
        bl      Fn_1fd340_t
L2d4e:
        movs    r0, r4
        .size   A_002d38, . - A_002d38

@ FUN_00002d5c (Thumb)
        .section .text.A_002d5c,"ax",%progbits
        .balign 4
        .thumb
        .global A_002d5c
        .thumb_func
        .type   A_002d5c, %function
A_002d5c:
        push    {r4, r5, r6, lr}
        bl      Fn_202444_t
        ldr     r5, L2db0
        movs    r4, r0
        ldr     r0, [r5, #4]
        movs    r1, #0
        mvns    r1, r1
        cmp     r0, r4
        bls     L2dac
        ldr     r0, [r5]
        lsls    r1, r4, #2
        adds    r0, r0, r1
        ldr     r0, [r0]
        bl      Fn_2024b0
        ldr     r0, [r5]
        adds    r4, r4, #1
        b       L2d8a
L2d82:
        subs    r1, r1, #4
        adds    r1, r0, r1
        adds    r4, r4, #1
        str     r2, [r1]
L2d8a:
        lsls    r1, r4, #2
        adds    r2, r0, r1
        ldr     r2, [r2]
        cmp     r2, #0
        beq     L2d9a
        ldr     r3, [r5, #4]
        cmp     r3, r4
        bhi     L2d82
L2d9a:
        ldr     r1, [r5, #4]
        cmp     r1, r4
        bls     L2da8
        lsls    r1, r4, #2
        adds    r0, r0, r1
        movs    r1, #0
        str     r1, [r0]
L2da8:
        movs    r0, #0
        pop     {r4, r5, r6, pc}
L2dac:
        movs    r0, r1
        pop     {r4, r5, r6, pc}
L2db0:
        .word   0x008bf9e8
        .size   A_002d5c, . - A_002d5c

@ FUN_00002db4 (Thumb)
        .section .text.A_002db4,"ax",%progbits
        .balign 4
        .thumb
        .global A_002db4
        .thumb_func
        .type   A_002db4, %function
A_002db4:
        push    {r0, r1, r4, lr}
        movs    r4, #0
        bl      Fn_202478_t
        movs    r4, r0
        b       L2dc8
        bl      Fn_1fcdbc_t
        bl      Fn_1fd340_t
L2dc8:
        cmp     r4, #0
        bne     L2dd2
        movs    r0, #3
        bl      Fn_2024e4_t
L2dd2:
        movs    r0, r4
        pop     {r2, r3, r4, pc}
        .size   A_002db4, . - A_002db4

@ FUN_00002dd8 (Thumb)
        .section .text.A_002dd8,"ax",%progbits
        .balign 4
        .thumb
        .global A_002dd8
        .thumb_func
        .type   A_002dd8, %function
A_002dd8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x2c
        ldr     r6, L2f24
        ldr     r0, [r6]
        cmp     r0, #0
        bne     L2ebc
        adr     r0, #0x140
        movs    r0, #0
        mov     r8, r8
        movs    r5, r0
        bne     L2df2
        movs    r5, r6
        adds    r5, #0xc
L2df2:
        movs    r0, r5
        movs    r1, #0x3a
        bl      Fn_000bdc_t
        cmp     r0, #0
        beq     L2e1c
        movs    r1, #0
        ldr     r2, L2f24
        strb    r1, [r0]
        adds    r0, r0, #1
        adds    r2, r2, #4
        adr     r1, #0x128
        bl      Fn_0012d8_t
        cmp     r0, #1
        bne     L2e18
        ldr     r0, [r6, #4]
        cmp     r0, #0
        bgt     L2e1c
L2e18:
        movs    r0, #1
        str     r0, [r6, #4]
L2e1c:
        ldr     r1, L2f38
        movs    r0, #0x14
        str     r1, [sp, #0x14]
        movs    r0, r1
        mov     r8, r8
        movs    r7, r0
        beq     L2e68
        movs    r1, #1
        lsls    r1, r1, #9
        str     r1, [r0, #4]
        movs    r1, #0
        str     r1, [r0, #8]
        str     r1, [r0, #0xc]
        ldr     r1, L2f3c
        movs    r0, r7
        adds    r0, #0x10
        str     r1, [r7]
        str     r0, [sp, #0x18]
        movs    r4, r7
        add     r0, sp, #0x24
        mov     r8, r8
        mov     r8, r8
        movs    r2, r0
        adr     r1, #0xf4
        add     r0, sp, #0x10
        bl      Fn_20254c_t
        movs    r1, r0
        ldr     r0, [sp, #0x18]
        bl      Fn_202584_t
        movs    r4, r0
        subs    r4, #0x10
        add     r0, sp, #0x10
        bl      Fn_2025c0_t
        ldr     r0, L2f44
        str     r0, [r4]
L2e68:
        ldr     r4, L2f38
        add     r0, sp, #0x20
        mov     r8, r8
        mov     r8, r8
        movs    r2, r0
        movs    r1, r5
        add     r0, sp, #4
        bl      Fn_20254c_t
        movs    r7, r0
        mov     r0, sp
        bl      Fn_004220_t
        movs    r2, r0
        ldr     r0, [r4]
        movs    r1, r7
        ldr     r3, [r0, #0xc]
        movs    r0, r4
        blx     r3
        str     r0, [r6, #8]
        ldr     r4, [sp]
        cmp     r4, #0
        beq     L2eb4
        ldr     r0, [r4, #0x1c]
        subs    r0, r0, #1
        str     r0, [r4, #0x1c]
        bne     L2eb4
        ldr     r0, [r4, #0x18]
        bl      Fn_1fcd88
        ldr     r0, [r4, #8]
        bl      Fn_1fcd88
        movs    r0, r4
        bl      Fn_2025cc_t
        bl      Fn_2024b0
L2eb4:
        add     r0, sp, #4
        bl      Fn_2025c0_t
        str     r5, [r6]
L2ebc:
        ldr     r4, [r6, #8]
        adds    r0, r4, #1
        beq     L2f14
        add     r0, sp, #8
        str     r0, [sp, #0x10]
        ldr     r7, [r6, #4]
        ldr     r5, L2f38
        ldr     r6, [sp, #0x34]
        add     r0, sp, #0x1c
        mov     r8, r8
        mov     r8, r8
        movs    r2, r0
        adr     r1, #0x58
        add     r0, sp, #0xc
        bl      Fn_20254c_t
        str     r6, [sp]
        str     r0, [sp, #4]
        ldr     r0, [r5]
        movs    r3, r7
        ldr     r6, [r0, #0x10]
        movs    r2, r4
        ldr     r0, [sp, #0x10]
        movs    r1, r5
        blx     r6
        add     r0, sp, #0xc
        bl      Fn_2025c0_t
        ldr     r2, [sp, #8]
        movs    r0, r2
        subs    r0, #0xc
        ldr     r0, [r0, #8]
        cmp     r0, #0
        beq     L2f18
        ldr     r3, [sp, #0x38]
        ldr     r1, [sp, #0x30]
        ldr     r0, [sp, #0x2c]
        bl      Fn_2025e0_t
        movs    r4, r0
        add     r0, sp, #8
        bl      Fn_2025c0_t
        movs    r0, r4
L2f14:
        add     sp, #0x3c
        pop     {r4, r5, r6, r7, pc}
L2f18:
        add     r0, sp, #8
        bl      Fn_2025c0_t
        movs    r0, #0
        b       L2f14
        .short  0x0000
L2f24:
        .word   0x008bf9a8
        .short  0x5752
        .short  0x5453
        .short  0x4544
        .short  0x5252
        .short  0x0000
        .short  0x0000
        .short  0x6425
        .short  0x0000
L2f38:
        .word   0x00a7b2a0
L2f3c:
        .word   0x0082fcb8
        .short  0x0043
        .short  0x0000
L2f44:
        .word   0x0082fea8
        .size   A_002dd8, . - A_002dd8

@ FUN_00002f48 (Thumb)
        .section .text.A_002f48,"ax",%progbits
        .balign 4
        .thumb
        .global A_002f48
        .thumb_func
        .type   A_002f48, %function
A_002f48:
        add     r0, sp, #0x10
        bl      Fn_2025c0_t
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        b       L2f70
        ldr     r1, [sp, #0x14]
        movs    r0, r7
        mov     r8, r8
        mov     r8, r8
        b       L2f70
        mov     r0, sp
        bl      Fn_202638_t
        add     r0, sp, #4
        b       L2f6c
        add     r0, sp, #0xc
L2f6c:
        bl      Fn_2025c0_t
L2f70:
        bl      Fn_202080_t
        add     r0, sp, #8
        bl      Fn_2025c0_t
        b       L2f70
        .size   A_002f48, . - A_002f48

@ FUN_00002f7c (Thumb)
        .section .text.A_002f7c,"ax",%progbits
        .balign 4
        .thumb
        .global A_002f7c
        .thumb_func
        .type   A_002f7c, %function
A_002f7c:
        push    {r4, lr}
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_002f7c, . - A_002f7c

@ FUN_00002f84 (Thumb)
        .section .text.A_002f84,"ax",%progbits
        .balign 4
        .thumb
        .global A_002f84
        .thumb_func
        .type   A_002f84, %function
A_002f84:
        bx      lr
        .size   A_002f84, . - A_002f84

@ FUN_00002fcc (Thumb)
        .section .text.A_002fcc,"ax",%progbits
        .balign 4
        .thumb
        .global A_002fcc
        .thumb_func
        .type   A_002fcc, %function
A_002fcc:
        push    {r2, r3, r4, lr}
        movs    r2, r0
        movs    r4, r1
        movs    r0, #0
        movs    r3, r2
        bl      Fn_201eb4
        .short  0xfe18
        .short  0x1d0d
        subs    r7, #0x2f
        str     r7, [r1, #0x24]
        ldrh    r5, [r6, #2]
        add     r6, sp, #0x26c
        .short  0xd4c1
        .short  0xfde7
        .short  0xfbfc
        .size   A_002fcc, . - A_002fcc

@ FUN_00003354 (Thumb)
        .section .text.A_003354,"ax",%progbits
        .balign 4
        .thumb
        .global A_003354
        .thumb_func
        .type   A_003354, %function
A_003354:
        mov     r0, sp
        bl      Fn_2029e0_t
        b       L33ba
        mov     r0, sp
        bl      Fn_2029e8_t
        b       L33ba
        mov     r0, sp
        bl      Fn_2029f0_t
        b       L33ba
        mov     r0, sp
        bl      Fn_2029f8_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a00_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a08_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a10_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a18_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a20_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a28_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a30_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a38_t
        b       L33ba
        mov     r0, sp
        bl      Fn_202a40_t
L33ba:
        bl      Fn_202080_t
        .short  0xffff
        .size   A_003354, . - A_003354

@ FUN_000033c0 (Thumb)
        .section .text.A_0033c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0033c0
        .thumb_func
        .type   A_0033c0, %function
A_0033c0:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r4, r0
        movs    r1, r0
        movs    r2, #8
        mov     r0, sp
        bl      Fn_202ab0_t
        ldr     r2, [sp, #4]
        cmp     r2, #0
        bne     L33e0
        movs    r3, r4
        movs    r0, #0x14
        adr     r2, #0x68
        adr     r1, #0x68
        bl      Fn_2024e4_t
L33e0:
        bl      Fn_0006b8_t
        movs    r5, r0
        ldr     r0, [r0, #8]
        bl      Fn_200e60
        adds    r0, #0x1c
        bl      Fn_202544_t
        movs    r4, r0
        movs    r6, r0
        movs    r0, #1
        strb    r0, [r4]
        ldr     r0, [r5]
        adds    r6, #0x10
        ldrb    r0, [r0]
        strb    r0, [r4, #1]
        ldr     r0, [r5, #4]
        ldrb    r0, [r0]
        strb    r0, [r4, #2]
        ldr     r1, [r5, #8]
        movs    r0, r6
        bl      Fn_202a48
        str     r0, [r4, #4]
        movs    r0, r6
        bl      Fn_200e60
        adds    r0, r0, r6
        adds    r0, r0, #1
        movs    r5, r0
        adr     r1, #0x28
        bl      Fn_202a48
        str     r0, [r4, #8]
        movs    r0, r5
        bl      Fn_200e60
        adds    r0, r0, r5
        adds    r0, r0, #1
        adr     r1, #0x1c
        bl      Fn_202a48
        str     r0, [r4, #0xc]
        mov     r0, sp
        bl      Fn_202ae8_t
        movs    r0, r4
        pop     {r2, r3, r4, r5, r6, pc}
        movs    r0, r0
        movs    r0, r0
        movs    r0, r0
        strb    r4, [r6, #9]
        str     r5, [r6, #0x54]
        movs    r0, r0
        movs    r0, r0
        str     r6, [r4, #0x14]
        strb    r4, [r5, #0xd]
        lsls    r5, r4, #1
        movs    r0, r0
        .size   A_0033c0, . - A_0033c0

@ FUN_00003458 (Thumb)
        .section .text.A_003458,"ax",%progbits
        .balign 4
        .thumb
        .global A_003458
        .thumb_func
        .type   A_003458, %function
A_003458:
        mov     r0, sp
        bl      Fn_202ae8_t
        bl      Fn_202080_t
        .size   A_003458, . - A_003458

@ FUN_00003462 (Thumb)
        .section .text.A_003462,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_003462
        .thumb_func
        .type   A_003462, %function
A_003462:
        push    {r4, lr}
        movs    r4, r0
        adds    r0, #0xc
        bl      Fn_2025c0_t
        movs    r4, r0
        subs    r4, #0xc
        subs    r0, r0, #4
        bl      Fn_2025c0_t
        subs    r0, #8
        bl      Fn_202b02_t
        pop     {r4, pc}
        .size   A_003462, . - A_003462

@ FUN_0000347e (Thumb)
        .section .text.A_00347e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00347e
        .thumb_func
        .type   A_00347e, %function
A_00347e:
        movs    r0, r4
        adds    r0, #8
        bl      Fn_2025c0_t
        movs    r4, r0
        subs    r4, #8
        movs    r0, r4
        bl      Fn_202b02_t
        bl      Fn_202080_t
        .size   A_00347e, . - A_00347e

@ FUN_00003494 (Thumb)
        .section .text.A_003494,"ax",%progbits
        .balign 4
        .thumb
        .global A_003494
        .thumb_func
        .type   A_003494, %function
A_003494:
        ldr     r0, [r0, #4]
        bx      lr
        .size   A_003494, . - A_003494

@ FUN_00003498 (Thumb)
        .section .text.A_003498,"ax",%progbits
        .balign 4
        .thumb
        .global A_003498
        .thumb_func
        .type   A_003498, %function
A_003498:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x1fc
        sub     sp, #0x10
        movs    r5, r2
        movs    r2, #1
        ldr     r1, [r0, #0x14]
        ldr     r4, [sp, #0x230]
        add     r0, sp, #0x200
        bl      Fn_202ab0_t
        ldr     r0, [sp, #0x210]
        movs    r2, #1
        subs    r5, r5, r0
        ldr     r0, [sp, #0x218]
        lsls    r2, r2, #9
        subs    r6, r4, r0
        adds    r0, r5, r6
        movs    r7, r0
        adds    r1, r0, #2
        cmp     r1, r2
        blo     L34cc
        adds    r0, r7, #2
        bl      Fn_202544_t
        movs    r4, r0
        b       L34ce
L34cc:
        mov     r4, sp
L34ce:
        ldr     r1, [sp, #0x210]
        movs    r2, r5
        movs    r0, r4
        bl      Fn_202b20
        movs    r0, #0
        strb    r0, [r4, r5]
        adds    r5, r4, r5
        ldr     r1, [sp, #0x218]
        adds    r0, r5, #1
        movs    r2, r6
        bl      Fn_202b20
        movs    r0, #0
        adds    r1, r7, r4
        strb    r0, [r1, #1]
        adds    r1, r5, #1
        movs    r0, r4
        bl      Fn_000ad0_t
        movs    r5, r0
        mov     r0, sp
        cmp     r4, r0
        beq     L3504
        movs    r0, r4
        bl      Fn_1fcd88
L3504:
        cmp     r5, #0
        beq     L3514
        ble     L350e
        movs    r4, #1
        b       L3516
L350e:
        movs    r4, #0
        mvns    r4, r4
        b       L3516
L3514:
        movs    r4, #0
L3516:
        add     r0, sp, #0x200
        bl      Fn_202ae8_t
        add     sp, #0x1fc
        movs    r0, r4
        add     sp, #0x20
        pop     {r4, r5, r6, r7, pc}
        .size   A_003498, . - A_003498

@ FUN_00003524 (Thumb)
        .section .text.A_003524,"ax",%progbits
        .balign 4
        .thumb
        .global A_003524
        .thumb_func
        .type   A_003524, %function
A_003524:
        add     r0, sp, #0x200
        bl      Fn_202ae8_t
        bl      Fn_202080_t
        .size   A_003524, . - A_003524

@ FUN_0000352e (Thumb)
        .section .text.A_00352e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00352e
        .thumb_func
        .type   A_00352e, %function
A_00352e:
        push    {r4, r5, r6, r7, lr}
        movs    r6, r2
        movs    r7, r0
        sub     sp, #0x10c
        ldr     r1, [r1, #0x14]
        movs    r4, r3
        movs    r2, #1
        .size   A_00352e, . - A_00352e

@ FUN_000035a2 (Thumb)
        .section .text.A_0035a2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0035a2
        .thumb_func
        .type   A_0035a2, %function
A_0035a2:
        movs    r0, r4
        bl      Fn_2025c0_t
        add     r0, sp, #0x100
        bl      Fn_202ae8_t
        bl      Fn_202080_t
        .size   A_0035a2, . - A_0035a2

@ FUN_000035b2 (Thumb)
        .section .text.A_0035b2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0035b2
        .thumb_func
        .type   A_0035b2, %function
A_0035b2:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r5, r1
        movs    r7, r2
        ldr     r1, [r0]
        movs    r4, #0
        mvns    r4, r4
        movs    r2, #6
        mov     r0, sp
        bl      Fn_202ab0_t
        ldr     r0, [r5]
        movs    r1, r4
        bl      Fn_002d38_t
        movs    r6, r0
        adds    r0, r0, #1
        beq     L35fa
        bl      Fn_202cd0_t
        ldr     r1, [r0, #4]
        ldr     r4, [r0]
        movs    r5, r0
        lsls    r0, r1, #3
        adds    r0, r4, r0
L35e2:
        cmp     r0, r4
        bne     L3604
        adds    r1, r1, #1
        movs    r0, r5
        bl      Fn_00469c_t
        ldr     r1, [r5, #4]
        ldr     r0, [r5]
        lsls    r1, r1, #3
        adds    r4, r0, r1
        subs    r4, #8
        b       L360e
L35fa:
        mov     r0, sp
        bl      Fn_202ae8_t
        movs    r0, r4
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L3604:
        ldr     r2, [r4]
        adds    r2, r2, #1
        beq     L360e
        adds    r4, #8
        b       L35e2
L360e:
        movs    r1, r7
        adds    r0, r4, #4
        str     r6, [r4]
        bl      Fn_202e5c_t
        ldr     r0, [r5]
        subs    r0, r4, r0
        asrs    r4, r0, #3
        b       L35fa
        .size   A_0035b2, . - A_0035b2

@ FUN_00003620 (Thumb)
        .section .text.A_003620,"ax",%progbits
        .balign 4
        .thumb
        .global A_003620
        .thumb_func
        .type   A_003620, %function
A_003620:
        mov     r0, sp
        bl      Fn_202ae8_t
        bl      Fn_202080_t
        .size   A_003620, . - A_003620

@ FUN_0000362a (Thumb)
        .section .text.A_00362a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00362a
        .thumb_func
        .type   A_00362a, %function
A_00362a:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        bl      Fn_202cd0_t
        movs    r4, r0
        ldr     r0, [r0, #4]
        cmp     r0, r5
        .short  0xdd14
        ldr     r0, [r4]
        lsls    r5, r5, #3
        adds    r0, r0, r5
        ldr     r0, [r0]
        adds    r1, r0, #1
        .short  0xd00e
        bl      Fn_002d5c_t
        ldr     r0, [r4]
        movs    r1, #0
        adds    r0, r0, r5
        mvns    r1, r1
        str     r1, [r0]
        bl      Fn_202e90_t
        movs    r1, r0
        ldr     r0, [r4]
        .size   A_00362a, . - A_00362a

@ FUN_0000365c (Thumb)
        .section .text.A_00365c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00365c
        .thumb_func
        .type   A_00365c, %function
A_00365c:
        adds    r0, r0, r5
        adds    r0, r0, #4
        bl      Fn_202e5c_t
        pop     {r4, r5, r6, pc}
        .size   A_00365c, . - A_00365c

@ FUN_00003666 (Thumb)
        .section .text.A_003666,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_003666
        .thumb_func
        .type   A_003666, %function
A_003666:
        push    {r4, lr}
        movs    r4, r1
        bl      Fn_202cd0_t
        ldr     r1, [r0, #4]
        cmp     r1, r4
        ble     L367e
        ldr     r0, [r0]
        lsls    r1, r4, #3
        adds    r0, r0, r1
        adds    r0, r0, #4
        pop     {r4, pc}
L367e:
        bl      Fn_202e90_t
        pop     {r4, pc}
        .size   A_003666, . - A_003666

@ FUN_00003684 (Thumb)
        .section .text.A_003684,"ax",%progbits
        .balign 4
        .thumb
        .global A_003684
        .thumb_func
        .type   A_003684, %function
A_003684:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r4, r2
        movs    r6, r1
        movs    r5, r3
        bl      Fn_202cd0_t
        ldr     r1, [r0, #4]
        cmp     r1, r6
        ble     L36b6
        ldr     r0, [r0]
        lsls    r1, r6, #3
        adds    r0, r0, r1
        ldr     r0, [r0]
        adds    r1, r0, #1
        beq     L36b6
        movs    r1, #0
        str     r1, [sp]
        movs    r2, r5
        movs    r1, r4
        mov     r3, sp
        bl      Fn_002d18_t
        mov     r1, sp
        cmp     r0, r1
        bne     L36b8
L36b6:
        movs    r0, #0
L36b8:
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_003684, . - A_003684

@ FUN_000036ba (Thumb)
        .section .text.A_0036ba,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0036ba
        .thumb_func
        .type   A_0036ba, %function
A_0036ba:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        movs    r4, r1
        movs    r6, r2
        b       L36e0
L36c4:
        ldrb    r2, [r4]
        movs    r1, #8
        movs    r0, r5
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L36de
        ldrb    r0, [r4]
        ldr     r1, [r5, #0x24]
        subs    r0, r0, r1
        ldr     r1, [r5, #0x30]
        ldrb    r0, [r1, r0]
        strb    r0, [r4]
L36de:
        adds    r4, r4, #1
L36e0:
        cmp     r4, r6
        blo     L36c4
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_0036ba, . - A_0036ba

@ FUN_000036e8 (Thumb)
        .section .text.A_0036e8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0036e8
        .thumb_func
        .type   A_0036e8, %function
A_0036e8:
        push    {r4, r5, r6, lr}
        movs    r4, r1
        movs    r2, r1
        movs    r5, r0
        movs    r1, #8
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3704
        ldr     r1, [r5, #0x24]
        ldr     r0, [r5, #0x30]
        subs    r1, r4, r1
        ldrb    r0, [r0, r1]
        pop     {r4, r5, r6, pc}
L3704:
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_0036e8, . - A_0036e8

@ FUN_00003708 (Thumb)
        .section .text.A_003708,"ax",%progbits
        .balign 4
        .thumb
        .global A_003708
        .thumb_func
        .type   A_003708, %function
A_003708:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        movs    r4, r1
        movs    r6, r2
        b       L372e
L3712:
        ldrb    r2, [r4]
        movs    r1, #0x10
        movs    r0, r5
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L372c
        ldrb    r0, [r4]
        ldr     r1, [r5, #0x1c]
        subs    r0, r0, r1
        ldr     r1, [r5, #0x2c]
        ldrb    r0, [r1, r0]
        strb    r0, [r4]
L372c:
        adds    r4, r4, #1
L372e:
        cmp     r4, r6
        blo     L3712
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_003708, . - A_003708

@ FUN_00003736 (Thumb)
        .section .text.A_003736,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_003736
        .thumb_func
        .type   A_003736, %function
A_003736:
        push    {r4, r5, r6, lr}
        movs    r4, r1
        movs    r2, r1
        movs    r5, r0
        movs    r1, #0x10
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3752
        ldr     r1, [r5, #0x1c]
        ldr     r0, [r5, #0x2c]
        subs    r1, r4, r1
        ldrb    r0, [r0, r1]
        pop     {r4, r5, r6, pc}
L3752:
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_003736, . - A_003736

@ FUN_00003758 (Thumb)
        .section .text.A_003758,"ax",%progbits
        .balign 4
        .thumb
        .global A_003758
        .thumb_func
        .type   A_003758, %function
A_003758:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r6, r0
        movs    r5, r3
        ldr     r0, [r0]
        ldr     r1, [r0, #0x14]
        tst     r1, r5
        beq     L376c
        movs    r4, #0
        b       L377a
L376c:
        ldr     r1, [r0, #0x10]
        ldr     r0, L3858
        tst     r1, r5
        beq     L3778
        ldr     r4, [r0, #0xc]
        b       L377a
L3778:
        ldr     r4, [r0, #8]
L377a:
        cmp     r4, #0
        beq     L37a4
        ldr     r0, [sp, #8]
        ldr     r7, [r0]
        ldr     r0, [r4, #0xc]
        cmp     r0, r7
        bhi     L3798
        movs    r0, #0
        str     r0, [sp]
        movs    r0, r4
        adds    r1, r7, #1
        adds    r0, #8
        mov     r2, sp
        bl      Fn_202ee6_t
L3798:
        ldr     r0, [r4, #8]
        lsls    r1, r7, #2
        adds    r0, r0, r1
        ldr     r7, [r0]
        cmp     r7, #0
        bne     L3846
L37a4:
        ldr     r0, [sp, #0xc]
        cmp     r0, #0
        bne     L37b0
        movs    r0, #4
        bl      Fn_2024e4_t
L37b0:
        cmp     r4, #0
        beq     L37da
        ldr     r0, [sp, #8]
        ldr     r7, [r0]
        ldr     r0, [r4, #0xc]
        cmp     r0, r7
        bhi     L37ce
        movs    r0, #0
        str     r0, [sp]
        movs    r0, r4
        adds    r1, r7, #1
        adds    r0, #8
        mov     r2, sp
        bl      Fn_202ee6_t
L37ce:
        ldr     r0, [r4, #8]
        lsls    r1, r7, #2
        adds    r0, r0, r1
        ldr     r7, [r0]
        cmp     r7, #0
        bne     L3846
L37da:
        ldr     r2, [r6]
        movs    r3, #0
        ldr     r0, [r2, #0x14]
        adr     r1, #0x78
        tst     r0, r5
        beq     L3808
        movs    r3, #2
        movs    r1, #0x10
        movs    r0, #0
L37ec:
        movs    r7, r5
        tst     r7, r1
        beq     L37fc
        ldr     r1, [r2]
        lsls    r0, r0, #2
        adds    r0, r1, r0
        ldr     r1, [r0]
        b       L3810
L37fc:
        adds    r0, r0, #1
        lsls    r1, r1, #1
        cmp     r0, #6
        blo     L37ec
        adr     r1, #0x54
        b       L3810
L3808:
        ldr     r0, [r2, #0x10]
        tst     r0, r5
        beq     L3810
        movs    r3, #1
L3810:
        movs    r2, #0
        movs    r0, r3
        ldr     r3, [sp, #0x28]
        blx     r3
        movs    r7, r0
        cmp     r4, #0
        beq     L3846
        ldr     r0, [r6]
        cmp     r0, r4
        beq     L3846
        movs    r1, r4
        mov     r0, sp
        bl      Fn_202f30_t
        ldr     r2, [sp, #8]
        movs    r1, r7
        mov     r0, sp
        bl      Fn_202f54_t
        movs    r0, #0
        str     r0, [sp]
        ldr     r0, [r4, #0x1c]
        subs    r0, r0, #1
        str     r0, [r4, #0x1c]
        mov     r0, sp
        bl      Fn_202638_t
L3846:
        ldr     r2, [sp, #8]
        movs    r1, r7
        movs    r0, r6
        bl      Fn_202f54_t
        movs    r0, r7
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
L3858:
        .word   0x008bf9c8
        .size   A_003758, . - A_003758

@ FUN_00003860 (Thumb)
        .section .text.A_003860,"ax",%progbits
        .balign 4
        .thumb
        .global A_003860
        .thumb_func
        .type   A_003860, %function
A_003860:
        mov     r0, sp
        bl      Fn_202638_t
        bl      Fn_202080_t
        .short  0xffff
        .size   A_003860, . - A_003860

@ FUN_0000386c (Thumb)
        .section .text.A_00386c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00386c
        .thumb_func
        .type   A_00386c, %function
A_00386c:
        push    {r4, lr}
        bl      Fn_202794_t
        ldr     r1, L3878
        str     r1, [r0]
        pop     {r4, pc}
L3878:
        .word   0x0082fd1c
        .size   A_00386c, . - A_00386c

@ FUN_0000387c (Thumb)
        .section .text.A_00387c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00387c
        .thumb_func
        .type   A_00387c, %function
A_00387c:
        push    {r4, lr}
        bl      Fn_202788_t
        ldr     r1, L3888
        str     r1, [r0]
        pop     {r4, pc}
L3888:
        .word   0x0082fd1c
        .size   A_00387c, . - A_00387c

@ FUN_0000388c (Thumb)
        .section .text.A_00388c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00388c
        .thumb_func
        .type   A_00388c, %function
A_00388c:
        push    {r4, lr}
        bl      Fn_200ac8_t
        .size   A_00388c, . - A_00388c

@ FUN_00003898 (Thumb)
        .section .text.A_003898,"ax",%progbits
        .balign 4
        .thumb
        .global A_003898
        .thumb_func
        .type   A_003898, %function
A_003898:
        push    {r4, lr}
        bl      Fn_2029e0_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003898, . - A_003898

@ FUN_000038c4 (Thumb)
        .section .text.A_0038c4,"ax",%progbits
        .balign 4
        .thumb
        .global A_0038c4
        .thumb_func
        .type   A_0038c4, %function
A_0038c4:
        push    {r4, lr}
        bl      Fn_202a10_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_0038c4, . - A_0038c4

@ FUN_000038d0 (Thumb)
        .section .text.A_0038d0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0038d0
        .thumb_func
        .type   A_0038d0, %function
A_0038d0:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        adr     r1, #0xb8
        movs    r4, r0
        bl      Fn_1fe040
        cmp     r0, #0
        beq     L3982
        movs    r0, r4
        adr     r1, #0xac
        bl      Fn_1fe040
        cmp     r0, #0
        beq     L3982
        movs    r0, #1
        lsls    r0, r0, #9
        bl      Fn_202544_t
        movs    r7, r0
        movs    r2, #2
        movs    r1, r4
        mov     r0, sp
        bl      Fn_202ab0_t
        movs    r4, #0
        movs    r6, #0x10
        movs    r5, #0x40
        bl      Fn_1fd738
        movs    r3, r0
L390a:
        ldr     r0, [r3]
        movs    r1, #0
        ldrb    r0, [r0, r4]
        lsls    r2, r0, #0x1f
        lsrs    r2, r2, #0x1f
        beq     L3918
        movs    r1, #1
L3918:
        movs    r2, #0x3e
        tst     r0, r2
        beq     L3922
        movs    r2, #2
        orrs    r1, r2
L3922:
        movs    r2, r0
        tst     r2, r5
        beq     L392c
        movs    r2, #4
        orrs    r1, r2
L392c:
        movs    r2, r0
        tst     r2, r6
        beq     L3936
        movs    r2, #8
        orrs    r1, r2
L3936:
        movs    r2, #8
        tst     r0, r2
        beq     L393e
        orrs    r1, r6
L393e:
        movs    r2, #0x98
        tst     r0, r2
        beq     L3948
        movs    r2, #0x20
        orrs    r1, r2
L3948:
        cmp     r0, #0x20
        beq     L3986
        movs    r2, #0
L394e:
        cmp     r2, #0
        beq     L3954
        orrs    r1, r5
L3954:
        movs    r2, #2
        tst     r0, r2
        beq     L395e
        movs    r2, #0x80
        orrs    r1, r2
L395e:
        lsls    r2, r0, #2
        eors    r2, r0
        movs    r0, #0x80
        tst     r2, r0
        beq     L396c
        lsls    r0, r0, #1
        orrs    r1, r0
L396c:
        lsls    r0, r4, #1
        adds    r4, r4, #1
        strh    r1, [r7, r0]
        subs    r0, r4, #7
        subs    r0, #0xf9
        bne     L390a
        mov     r0, sp
        bl      Fn_202ae8_t
        movs    r0, r7
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L3982:
        ldr     r0, L3998
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L3986:
        movs    r2, #1
        b       L394e
        movs    r0, r0
        lsls    r3, r0, #1
        movs    r0, r0
        .short  0x4f50
        .short  0x4953
        lsls    r0, r3, #1
        movs    r0, r0
L3998:
        .word   0x00803b08
        .size   A_0038d0, . - A_0038d0

@ FUN_0000399c (Thumb)
        .section .text.A_00399c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00399c
        .thumb_func
        .type   A_00399c, %function
A_00399c:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r5, r2
        movs    r6, r0
        movs    r4, r1
        movs    r0, r1
        bl      Fn_0038d0_t
        movs    r1, r0
        movs    r3, r5
        movs    r2, #0
        movs    r0, r6
        bl      Fn_20318c_t
        ldr     r1, L3ad4
        str     r1, [r0]
        movs    r6, r0
        ldr     r0, [r0, #0x14]
        ldr     r1, L3ad8
        cmp     r0, r1
        beq     L3aba
        movs    r0, #1
        strb    r0, [r6, #0x18]
        movs    r2, #2
        movs    r1, r4
        mov     r0, sp
        bl      Fn_202ab0_t
        movs    r4, #0
        movs    r5, #0xff
L39d6:
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L39fa
        b       L3a00
L39e8:
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3a06
        subs    r5, r5, #1
L39fa:
        cmp     r5, r4
        bhi     L39e8
        b       L3a06
L3a00:
        adds    r4, r4, #1
        cmp     r4, r5
        blo     L39d6
L3a06:
        str     r5, [r6, #0x20]
        str     r4, [r6, #0x1c]
        ldr     r7, [r6, #0x2c]
        b       L3a48
L3a0e:
        movs    r0, r4
        subs    r0, #0x61
        cmp     r0, #0x19
        bhi     L3a40
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3a40
        movs    r0, r4
        subs    r0, #0x20
        lsls    r2, r0, #0x18
        str     r0, [sp, #8]
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3a40
        ldr     r0, [sp, #8]
        b       L3a42
L3a40:
        movs    r0, r4
L3a42:
        strb    r0, [r7]
        adds    r7, r7, #1
        adds    r4, r4, #1
L3a48:
        cmp     r4, r5
        bls     L3a0e
        movs    r4, #0
        movs    r5, #0xff
L3a50:
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3a74
        b       L3a7a
L3a62:
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3a80
        subs    r5, r5, #1
L3a74:
        cmp     r5, r4
        bhi     L3a62
        b       L3a80
L3a7a:
        adds    r4, r4, #1
        cmp     r4, r5
        blo     L3a50
L3a80:
        str     r5, [r6, #0x28]
        str     r4, [r6, #0x24]
        ldr     r7, [r6, #0x30]
        b       L3ac4
L3a88:
        movs    r0, r4
        subs    r0, #0x41
        cmp     r0, #0x19
        bhi     L3abc
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3abc
        movs    r0, r4
        adds    r0, #0x20
        lsls    r2, r0, #0x18
        str     r0, [sp, #8]
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3abc
        ldr     r0, [sp, #8]
        b       L3abe
L3aba:
        b       L3ace
L3abc:
        movs    r0, r4
L3abe:
        strb    r0, [r7]
        adds    r7, r7, #1
        adds    r4, r4, #1
L3ac4:
        cmp     r4, r5
        bls     L3a88
        mov     r0, sp
        bl      Fn_202ae8_t
L3ace:
        movs    r0, r6
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        movs    r0, r0
L3ad4:
        .word   0x0082fd58
L3ad8:
        .word   0x00803b08
        .size   A_00399c, . - A_00399c

@ FUN_00003adc (Thumb)
        .section .text.A_003adc,"ax",%progbits
        .balign 4
        .thumb
        .global A_003adc
        .thumb_func
        .type   A_003adc, %function
A_003adc:
        mov     r0, sp
        bl      Fn_202ae8_t
        movs    r0, r6
        bl      Fn_203358_t
        bl      Fn_202080_t
        .size   A_003adc, . - A_003adc

@ FUN_00003aec (Thumb)
        .section .text.A_003aec,"ax",%progbits
        .balign 4
        .thumb
        .global A_003aec
        .thumb_func
        .type   A_003aec, %function
A_003aec:
        push    {r4, lr}
        bl      Fn_203358_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003aec, . - A_003aec

@ FUN_00003af8 (Thumb)
        .section .text.A_003af8,"ax",%progbits
        .balign 4
        .thumb
        .global A_003af8
        .thumb_func
        .type   A_003af8, %function
A_003af8:
        push    {r4, lr}
        bl      Fn_203358_t
        pop     {r4, pc}
        .size   A_003af8, . - A_003af8

@ FUN_00003b00 (Thumb)
        .section .text.A_003b00,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b00
        .thumb_func
        .type   A_003b00, %function
A_003b00:
        push    {r4, lr}
        bl      Fn_2027a8_t
        ldr     r1, L3b0c
        str     r1, [r0]
        pop     {r4, pc}
L3b0c:
        .word   0x0082fd8c
        push    {r4, lr}
        bl      Fn_202808_t
        ldr     r1, L3b1c
        str     r1, [r0]
        pop     {r4, pc}
L3b1c:
        .word   0x0082fd8c
        .size   A_003b00, . - A_003b00

@ FUN_00003b20 (Thumb)
        .section .text.A_003b20,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b20
        .thumb_func
        .type   A_003b20, %function
A_003b20:
        push    {r4, lr}
        bl      Fn_2029e8_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003b20, . - A_003b20

@ FUN_00003b4c (Thumb)
        .section .text.A_003b4c,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b4c
        .thumb_func
        .type   A_003b4c, %function
A_003b4c:
        push    {r4, lr}
        bl      Fn_2029f8_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003b4c, . - A_003b4c

@ FUN_00003b78 (Thumb)
        .section .text.A_003b78,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b78
        .thumb_func
        .type   A_003b78, %function
A_003b78:
        push    {r4, lr}
        bl      Fn_202a00_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003b78, . - A_003b78

@ FUN_00003b84 (Thumb)
        .section .text.A_003b84,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b84
        .thumb_func
        .type   A_003b84, %function
A_003b84:
        push    {r4, lr}
        bl      Fn_1fe2dc_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003b84, . - A_003b84

@ FUN_00003b90 (Thumb)
        .section .text.A_003b90,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b90
        .thumb_func
        .type   A_003b90, %function
A_003b90:
        push    {r4, lr}
        bl      Fn_202a08_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003b90, . - A_003b90

@ FUN_00003b9c (Thumb)
        .section .text.A_003b9c,"ax",%progbits
        .balign 4
        .thumb
        .global A_003b9c
        .thumb_func
        .type   A_003b9c, %function
A_003b9c:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r3, r2
        movs    r5, #0
        movs    r4, r0
        movs    r2, r1
        movs    r1, r5
        movs    r0, r5
        bl      Fn_2025e0_t
        movs    r5, r0
        ldr     r0, [r4, #4]
        cmp     r0, #0
        beq     L3be6
        bl      Fn_200e60
        movs    r6, r0
        movs    r0, r5
        bl      Fn_200e60
        adds    r0, r6, r0
        adds    r0, r0, #4
        bl      Fn_202544_t
        ldr     r1, [r4, #4]
        movs    r6, r0
        bl      Fn_202a48
        movs    r1, r5
        bl      Fn_203b48_t
        ldr     r0, [r4, #4]
        bl      Fn_1fcd88
        movs    r0, r5
        bl      Fn_1fcd88
        movs    r5, r6
L3be6:
        str     r5, [r4, #4]
        b       L3bf8
        bl      Fn_1fcdbc_t
        movs    r0, r5
        bl      Fn_1fcd88
        bl      Fn_1fd340_t
L3bf8:
        movs    r0, r4
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .size   A_003b9c, . - A_003b9c

@ FUN_00003bfc (Thumb)
        .section .text.A_003bfc,"ax",%progbits
        .balign 4
        .thumb
        .global A_003bfc
        .thumb_func
        .type   A_003bfc, %function
A_003bfc:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r3, r2
        movs    r4, #0
        movs    r7, r2
        movs    r6, r0
        movs    r5, r1
        movs    r2, r1
        movs    r1, r4
        movs    r0, r4
        bl      Fn_002dd8_t
        movs    r4, r0
        bne     L3c32
        cmp     r5, #0
        blt     L3c1e
        cmp     r5, #0x17
        blo     L3c20
L3c1e:
        movs    r5, #0
L3c20:
        ldr     r1, L3c80
        lsls    r0, r5, #2
        ldr     r2, [r1, r0]
        movs    r1, #0
        movs    r3, r7
        movs    r0, r1
        bl      Fn_2025e0_t
        movs    r4, r0
L3c32:
        ldr     r0, [r6, #4]
        cmp     r0, #0
        beq     L3c68
        bl      Fn_200e60
        movs    r5, r0
        movs    r0, r4
        bl      Fn_200e60
        adds    r0, r5, r0
        adds    r0, r0, #1
        bl      Fn_202544_t
        ldr     r1, [r6, #4]
        bl      Fn_202a48
        movs    r1, r4
        bl      Fn_203b48_t
        movs    r5, r0
        ldr     r0, [r6, #4]
        bl      Fn_1fcd88
        movs    r0, r4
        bl      Fn_1fcd88
        movs    r4, r5
L3c68:
        str     r4, [r6, #4]
        b       L3c7a
        bl      Fn_1fcdbc_t
        movs    r0, r4
        bl      Fn_1fcd88
        bl      Fn_1fd340_t
L3c7a:
        movs    r0, r6
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .short  0x0000
L3c80:
        .word   0x00803898
        .size   A_003bfc, . - A_003bfc

@ FUN_00003c84 (Thumb)
        .section .text.A_003c84,"ax",%progbits
        .balign 4
        .thumb
        .global A_003c84
        .thumb_func
        .type   A_003c84, %function
A_003c84:
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        bl      Fn_202080_t
        .short  0xffff
        push    {r4, r5, r6, lr}
        movs    r5, r1
        bl      Fn_202788_t
        movs    r4, r0
        movs    r1, #0
        ldr     r0, L3cb4
        str     r1, [r4, #4]
        str     r0, [r4]
        ldr     r1, [r5]
        movs    r0, r1
        subs    r0, #0xc
        ldr     r2, [r0, #8]
        movs    r0, r4
        bl      Fn_2027b8_t
        movs    r0, r4
        pop     {r4, r5, r6, pc}
L3cb4:
        .word   0x0082fdf0
        .size   A_003c84, . - A_003c84

@ FUN_00003cb8 (Thumb)
        .section .text.A_003cb8,"ax",%progbits
        .balign 4
        .thumb
        .global A_003cb8
        .thumb_func
        .type   A_003cb8, %function
A_003cb8:
        push    {r4, lr}
        bl      Fn_202788_t
        ldr     r1, L3cc8
        str     r1, [r0]
        movs    r1, #0
        str     r1, [r0, #4]
        pop     {r4, pc}
L3cc8:
        .word   0x0082fdf0
        .size   A_003cb8, . - A_003cb8

@ FUN_00003ccc (Thumb)
        .section .text.A_003ccc,"ax",%progbits
        .balign 4
        .thumb
        .global A_003ccc
        .thumb_func
        .type   A_003ccc, %function
A_003ccc:
        push    {r4, lr}
        bl      Fn_203170_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003ccc, . - A_003ccc

@ FUN_00003cd8 (Thumb)
        .section .text.A_003cd8,"ax",%progbits
        .balign 4
        .thumb
        .global A_003cd8
        .thumb_func
        .type   A_003cd8, %function
A_003cd8:
        push    {r4, lr}
        bl      Fn_003ce4_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003cd8, . - A_003cd8

@ FUN_00003ce4 (Thumb)
        .section .text.A_003ce4,"ax",%progbits
        .balign 4
        .thumb
        .global A_003ce4
        .thumb_func
        .type   A_003ce4, %function
A_003ce4:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, L3cf8
        str     r0, [r4]
        movs    r0, r4
        adds    r0, #0x14
        bl      Fn_2025c0_t
        subs    r0, #0x14
        pop     {r4, pc}
L3cf8:
        .word   0x0082fe04
        .size   A_003ce4, . - A_003ce4

@ FUN_00003cfc (Thumb)
        .section .text.A_003cfc,"ax",%progbits
        .balign 4
        .thumb
        .global A_003cfc
        .thumb_func
        .type   A_003cfc, %function
A_003cfc:
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        bl      Fn_202080_t
        .short  0xffff
        .short  0xb510
        bl      Fn_202818_t
        ldr     r1, L3d14
        str     r1, [r0]
        pop     {r4, pc}
L3d14:
        .word   0x0082fe24
        push    {r4, lr}
        bl      Fn_202828_t
        ldr     r1, L3d24
        str     r1, [r0]
        pop     {r4, pc}
L3d24:
        .word   0x0082fe24
        .size   A_003cfc, . - A_003cfc

@ FUN_00003d28 (Thumb)
        .section .text.A_003d28,"ax",%progbits
        .balign 4
        .thumb
        .global A_003d28
        .thumb_func
        .type   A_003d28, %function
A_003d28:
        push    {r4, lr}
        bl      Fn_202a18_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003d28, . - A_003d28

@ FUN_00003d54 (Thumb)
        .section .text.A_003d54,"ax",%progbits
        .balign 4
        .thumb
        .global A_003d54
        .thumb_func
        .type   A_003d54, %function
A_003d54:
        push    {r4, lr}
        bl      Fn_202a20_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003d54, . - A_003d54

@ FUN_00003d80 (Thumb)
        .section .text.A_003d80,"ax",%progbits
        .balign 4
        .thumb
        .global A_003d80
        .thumb_func
        .type   A_003d80, %function
A_003d80:
        push    {r4, lr}
        bl      Fn_2029f0_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003d80, . - A_003d80

@ FUN_00003d8c (Thumb)
        .section .text.A_003d8c,"ax",%progbits
        .balign 4
        .thumb
        .global A_003d8c
        .thumb_func
        .type   A_003d8c, %function
A_003d8c:
        push    {r4, lr}
        movs    r4, r0
        movs    r0, #0
        mvns    r0, r0
        str     r0, [r4]
        bl      Fn_202e90_t
        movs    r1, r0
        adds    r0, r4, #4
        bl      Fn_00405e_t
        subs    r0, r0, #4
        pop     {r4, pc}
        .size   A_003d8c, . - A_003d8c

@ FUN_00003db2 (Thumb)
        .section .text.A_003db2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_003db2
        .thumb_func
        .type   A_003db2, %function
A_003db2:
        push    {r4, r5, r6, r7, lr}
        movs    r6, r0
        sub     sp, #0x14
        add     r0, sp, #8
        bl      Fn_203b60_t
        ldr     r1, [sp, #8]
        movs    r2, #2
        mov     r0, sp
        bl      Fn_202ab0_t
        add     r0, sp, #8
        bl      Fn_2025c0_t
        movs    r4, #0
        movs    r5, #0xff
L3dd2:
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3df6
        b       L3dfc
L3de4:
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3e02
        subs    r5, r5, #1
L3df6:
        cmp     r5, r4
        bhi     L3de4
        b       L3e02
L3dfc:
        adds    r4, r4, #1
        cmp     r4, r5
        blo     L3dd2
L3e02:
        str     r5, [r6, #0x20]
        str     r4, [r6, #0x1c]
        ldr     r7, [r6, #0x2c]
        b       L3e44
L3e0a:
        movs    r0, r4
        subs    r0, #0x61
        cmp     r0, #0x19
        bhi     L3e3c
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3e3c
        movs    r0, r4
        subs    r0, #0x20
        lsls    r2, r0, #0x18
        str     r0, [sp, #0xc]
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3e3c
        ldr     r0, [sp, #0xc]
        b       L3e3e
L3e3c:
        movs    r0, r4
L3e3e:
        strb    r0, [r7]
        adds    r7, r7, #1
        adds    r4, r4, #1
L3e44:
        cmp     r4, r5
        bls     L3e0a
        movs    r4, #0
        movs    r5, #0xff
L3e4c:
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3e70
        b       L3e76
L3e5e:
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L3e7c
        subs    r5, r5, #1
L3e70:
        cmp     r5, r4
        bhi     L3e5e
        b       L3e7c
L3e76:
        adds    r4, r4, #1
        cmp     r4, r5
        blo     L3e4c
L3e7c:
        str     r5, [r6, #0x28]
        str     r4, [r6, #0x24]
        ldr     r7, [r6, #0x30]
        b       L3ebe
L3e84:
        movs    r0, r4
        subs    r0, #0x41
        cmp     r0, #0x19
        bhi     L3eb6
        lsls    r2, r4, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3eb6
        movs    r0, r4
        adds    r0, #0x20
        lsls    r2, r0, #0x18
        str     r0, [sp, #0xc]
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r6
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L3eb6
        ldr     r0, [sp, #0xc]
        b       L3eb8
L3eb6:
        movs    r0, r4
L3eb8:
        strb    r0, [r7]
        adds    r7, r7, #1
        adds    r4, r4, #1
L3ebe:
        cmp     r4, r5
        bls     L3e84
        mov     r0, sp
        bl      Fn_202ae8_t
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_003db2, . - A_003db2

@ FUN_00003ecc (Thumb)
        .section .text.A_003ecc,"ax",%progbits
        .balign 4
        .thumb
        .global A_003ecc
        .thumb_func
        .type   A_003ecc, %function
A_003ecc:
        mov     r0, sp
        bl      Fn_202ae8_t
L3ed2:
        bl      Fn_202080_t
        add     r0, sp, #8
        bl      Fn_2025c0_t
        b       L3ed2
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        bl      Fn_202080_t
        .size   A_003ecc, . - A_003ecc

@ FUN_00003ee8 (Thumb)
        .section .text.A_003ee8,"ax",%progbits
        .balign 4
        .thumb
        .global A_003ee8
        .thumb_func
        .type   A_003ee8, %function
A_003ee8:
        push    {r4, lr}
        bl      Fn_203358_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003ee8, . - A_003ee8

@ FUN_00003ef4 (Thumb)
        .section .text.A_003ef4,"ax",%progbits
        .balign 4
        .thumb
        .global A_003ef4
        .thumb_func
        .type   A_003ef4, %function
A_003ef4:
        push    {r4, lr}
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_003ef4, . - A_003ef4

@ FUN_00003efc (Thumb)
        .section .text.A_003efc,"ax",%progbits
        .balign 4
        .thumb
        .global A_003efc
        .thumb_func
        .type   A_003efc, %function
A_003efc:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r7, r0
        ldr     r0, [r1]
        movs    r6, r1
        ldr     r1, [r0, #0x1c]
        adds    r1, r1, #1
        str     r1, [r0, #0x1c]
        ldr     r1, L3f68
        ldr     r4, [r1, #0x10]
        ldr     r0, [r4, #0x1c]
        subs    r0, r0, #1
        str     r0, [r4, #0x1c]
        ldr     r0, [r6]
        str     r0, [r1, #0x10]
        ldr     r0, [r0, #0x18]
        cmp     r0, #0
        beq     L3f5c
        movs    r1, r6
        mov     r0, sp
        bl      Fn_203b60_t
        ldr     r1, [sp]
        movs    r0, #0x1f
        bl      Fn_20265c_t
        cmp     r0, #0
        beq     L3f36
        movs    r5, #1
        b       L3f38
L3f36:
        movs    r5, #0
L3f38:
        mov     r0, sp
        bl      Fn_2025c0_t
        cmp     r5, #0
        bne     L3f5c
        movs    r1, r6
        mov     r0, sp
        bl      Fn_203b60_t
        ldr     r3, [sp]
        movs    r0, #0x14
        adr     r2, #0x1c
        adr     r1, #0x18
        bl      Fn_2024e4_t
        mov     r0, sp
        bl      Fn_2025c0_t
L3f5c:
        movs    r1, r4
        movs    r0, r7
        bl      Fn_202f30_t
        pop     {r3, r4, r5, r6, r7, pc}
        movs    r0, r0
L3f68:
        .word   0x008bf9c8
        movs    r0, r0
        movs    r0, r0
        .size   A_003efc, . - A_003efc

@ FUN_00003f70 (Thumb)
        .section .text.A_003f70,"ax",%progbits
        .balign 4
        .thumb
        .global A_003f70
        .thumb_func
        .type   A_003f70, %function
A_003f70:
        mov     r0, sp
        bl      Fn_2025c0_t
        bl      Fn_202080_t
        movs    r0, r4
        bl      Fn_2024b0
L3f80:
        bl      Fn_202080_t
        movs    r0, r4
        bl      Fn_2024b0
        bl      Fn_202080_t
        bl      Fn_1fd340_t
        b       L3f80
        ldr     r0, L3fa0
        movs    r1, #0
        str     r1, [r0]
        bl      Fn_202080_t
        movs    r0, r0
L3fa0:
        .word   0x008bf9c8
        .size   A_003f70, . - A_003f70

@ FUN_00003fa4 (Thumb)
        .section .text.A_003fa4,"ax",%progbits
        .balign 4
        .thumb
        .global A_003fa4
        .thumb_func
        .type   A_003fa4, %function
A_003fa4:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        movs    r5, r1
        bne     L3fb8
        movs    r3, r1
        movs    r0, #0x17
        adr     r2, #0x8c
        adr     r1, #0x8c
        bl      Fn_2024e4_t
L3fb8:
        ldr     r6, L4044
        ldr     r0, [r6, #0x10]
        cmp     r0, #0
        bne     L3fc4
        bl      Fn_203cdc_t
L3fc4:
        movs    r1, r5
        adr     r0, #0x80
        bl      Fn_1fe040
        cmp     r0, #0
        beq     L4008
        movs    r1, r5
        adr     r0, #0x78
        bl      Fn_1fe040
        cmp     r0, #0
        beq     L4008
        movs    r1, r5
        adr     r0, #0x60
        bl      Fn_1fe040
        cmp     r0, #0
        beq     L400c
        movs    r0, #0x20
        bl      Fn_202478_t
        movs    r6, r0
        movs    r3, #0
        movs    r2, #0xa
        movs    r1, r5
        bl      Fn_203bd0_t
        movs    r1, r5
        str     r0, [r4]
        bl      Fn_203d7c_t
        cmp     r0, #0
        beq     L4012
        b       L402c
L4008:
        ldr     r0, [r6, #8]
        b       L400e
L400c:
        ldr     r0, [r6, #0xc]
L400e:
        str     r0, [r4]
        b       L4036
L4012:
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L4020
        bl      Fn_203cc0_t
        bl      Fn_2024b0
L4020:
        movs    r3, r5
        movs    r0, #0x14
        adr     r2, #0x18
        adr     r1, #0x18
        bl      Fn_2024e4_t
L402c:
        ldr     r1, [r4]
        movs    r0, #0x3f
        lsls    r0, r0, #4
        str     r0, [r1, #0x14]
        ldr     r0, [r4]
L4036:
        ldr     r1, [r0, #0x1c]
        adds    r1, r1, #1
        str     r1, [r0, #0x1c]
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        movs    r0, r0
        movs    r0, r0
L4044:
        .word   0x008bf9c8
        lsls    r3, r0, #1
        movs    r0, r0
        .short  0x4f50
        .short  0x4953
        lsls    r0, r3, #1
        movs    r0, r0
        .size   A_003fa4, . - A_003fa4

@ FUN_00004054 (Thumb)
        .section .text.A_004054,"ax",%progbits
        .balign 4
        .thumb
        .global A_004054
        .thumb_func
        .type   A_004054, %function
A_004054:
        movs    r0, r6
        bl      Fn_2024b0
        bl      Fn_202080_t
        .size   A_004054, . - A_004054

@ FUN_0000405e (Thumb)
        .section .text.A_00405e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00405e
        .thumb_func
        .type   A_00405e, %function
A_00405e:
        ldr     r1, [r1]
        str     r1, [r0]
        ldr     r2, [r1, #0x1c]
        adds    r2, r2, #1
        str     r2, [r1, #0x1c]
        bx      lr
        .size   A_00405e, . - A_00405e

@ FUN_0000406c (Thumb)
        .section .text.A_00406c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00406c
        .thumb_func
        .type   A_00406c, %function
A_00406c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0xc
        movs    r6, r0
        movs    r0, #0
        str     r0, [r6]
        ldr     r0, [sp, #0x14]
        movs    r5, r1
        movs    r7, r3
        cmp     r0, #0
        bne     L408c
        movs    r3, r0
        movs    r0, #0x17
        adr     r2, #0x94
        adr     r1, #0x94
        bl      Fn_2024e4_t
L408c:
        movs    r0, #0x20
        bl      Fn_202478_t
        ldr     r1, [r5]
        movs    r4, r0
        movs    r3, #1
        movs    r2, #0
        bl      Fn_203e48_t
        str     r0, [r6]
        lsls    r0, r7, #0x1c
        beq     L40ac
        movs    r0, r7
        bl      Fn_203b94_t
        movs    r7, r0
L40ac:
        movs    r1, r7
        movs    r0, r6
        bl      Fn_203efc_t
        ldr     r0, [r6]
        ldr     r4, [r0, #4]
        cmp     r4, #0
        beq     L40ca
        ldr     r3, L4120
        ldr     r2, L4124
        movs    r1, r4
        movs    r0, #4
        bl      Fn_202700_t
        b       L40cc
L40ca:
        movs    r0, #0
L40cc:
        str     r0, [sp]
        ldr     r1, [sp, #0x14]
        mov     r0, sp
        str     r4, [sp, #4]
        bl      Fn_203d7c_t
        cmp     r0, #0
        bne     L40e8
        ldr     r3, [sp, #0x14]
        movs    r0, #0x14
        adr     r2, #0x38
        adr     r1, #0x38
        bl      Fn_2024e4_t
L40e8:
        ldr     r0, [r6]
        movs    r4, #0x10
        ldr     r1, [r0, #0x14]
        orrs    r1, r7
        movs    r5, #0
        str     r1, [r0, #0x14]
L40f4:
        movs    r0, r4
        tst     r0, r7
        beq     L4108
        ldr     r0, [r6]
        movs    r1, r5
        bl      Fn_203cb8_t
        ldr     r1, [sp, #0x14]
        bl      Fn_2026b0_t
L4108:
        adds    r5, r5, #1
        lsls    r4, r4, #1
        cmp     r5, #6
        bne     L40f4
        mov     r0, sp
        bl      Fn_2025cc_t
        movs    r0, r6
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
        .short  0x0000
L4120:
        .word   0x003025c1
L4124:
        .word   0x00102c79
        .size   A_00406c, . - A_00406c

@ FUN_00004128 (Thumb)
        .section .text.A_004128,"ax",%progbits
        .balign 4
        .thumb
        .global A_004128
        .thumb_func
        .type   A_004128, %function
A_004128:
        movs    r0, r4
        bl      Fn_2024b0
L412e:
        bl      Fn_202080_t
        mov     r0, sp
        bl      Fn_2025cc_t
        b       L412e
        .size   A_004128, . - A_004128

@ FUN_0000413a (Thumb)
        .section .text.A_00413a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00413a
        .thumb_func
        .type   A_00413a, %function
A_00413a:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r5, r0
        movs    r0, #0
        str     r0, [r5]
        movs    r7, r1
        movs    r6, r2
        movs    r4, r3
        movs    r0, #0x20
        bl      Fn_202478_t
        str     r0, [sp]
        ldr     r1, [r7]
        movs    r3, #1
        movs    r2, #0
        bl      Fn_203e48_t
        str     r0, [r5]
        lsls    r0, r4, #0x1c
        beq     L4168
        movs    r0, r4
        bl      Fn_203b94_t
        movs    r4, r0
L4168:
        ldr     r0, [r5]
        ldr     r2, [r6]
        ldr     r1, [r0, #0x14]
        ldr     r2, [r2, #0x14]
        bics    r1, r4
        ands    r2, r4
        orrs    r1, r2
        str     r1, [r0, #0x14]
        ldr     r0, [r5]
        ldr     r2, [r6]
        ldr     r1, [r0, #0x10]
        ldr     r2, [r2, #0x10]
        bics    r1, r4
        ands    r2, r4
        orrs    r1, r2
        str     r1, [r0, #0x10]
        movs    r0, #0
        movs    r7, #0x10
        str     r0, [sp]
L418e:
        movs    r0, r7
        tst     r0, r4
        beq     L41b2
        ldr     r0, [r6]
        ldr     r1, [r0, #0x14]
        tst     r1, r7
        beq     L41b2
        ldr     r1, [sp]
        bl      Fn_203cb8_t
        str     r0, [sp, #4]
        ldr     r0, [r5]
        ldr     r1, [sp]
        bl      Fn_203cb8_t
        ldr     r1, [sp, #4]
        bl      Fn_202714_t
L41b2:
        ldr     r0, [sp]
        lsls    r7, r7, #1
        adds    r0, r0, #1
        cmp     r0, #6
        str     r0, [sp]
        blo     L418e
        movs    r1, r4
        movs    r0, r5
        bl      Fn_203efc_t
        ldr     r0, [r6]
        movs    r7, #0
        ldr     r0, [r0, #0xc]
        str     r0, [sp]
        b       L420e
L41d0:
        ldr     r0, [r6]
        movs    r1, r7
        adds    r0, #8
        bl      Fn_203010_t
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L420a
        ldr     r1, [r0, #4]
        tst     r1, r4
        beq     L420a
        ldr     r1, [r0, #0xc]
        adds    r1, r1, #1
        str     r1, [r0, #0xc]
        ldr     r0, [r5]
        movs    r1, r7
        adds    r0, #8
        bl      Fn_203010_t
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L420a
        ldr     r1, [r0, #0xc]
        subs    r1, r1, #1
        str     r1, [r0, #0xc]
        bne     L420a
        ldr     r1, [r0]
        ldr     r1, [r1, #4]
        blx     r1
L420a:
        ldr     r0, [sp]
        adds    r7, r7, #1
L420e:
        cmp     r7, r0
        bne     L41d0
        movs    r0, r5
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .size   A_00413a, . - A_00413a

@ FUN_00004216 (Thumb)
        .section .text.A_004216,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_004216
        .thumb_func
        .type   A_004216, %function
A_004216:
        ldr     r0, [sp]
        bl      Fn_2024b0
        bl      Fn_202080_t
        .size   A_004216, . - A_004216

@ FUN_00004220 (Thumb)
        .section .text.A_004220,"ax",%progbits
        .balign 4
        .thumb
        .global A_004220
        .thumb_func
        .type   A_004220, %function
A_004220:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        ldr     r4, L4240
        ldr     r0, [r4]
        cmp     r0, #0
        bne     L4230
        bl      Fn_203cdc_t
L4230:
        ldr     r1, [r4]
        str     r1, [r5]
        ldr     r0, [r1, #0x1c]
        adds    r0, r0, #1
        str     r0, [r1, #0x1c]
        movs    r0, r5
        pop     {r4, r5, r6, pc}
        .short  0x0000
L4240:
        .word   0x008bf9d8
        .size   A_004220, . - A_004220

@ FUN_00004244 (Thumb)
        .section .text.A_004244,"ax",%progbits
        .balign 4
        .thumb
        .global A_004244
        .thumb_func
        .type   A_004244, %function
A_004244:
        push    {r4, lr}
        bl      Fn_202794_t
        ldr     r1, L4250
        str     r1, [r0]
        pop     {r4, pc}
L4250:
        .word   0x0082fe94
        push    {r4, lr}
        bl      Fn_202788_t
        ldr     r1, L4260
        str     r1, [r0]
        pop     {r4, pc}
L4260:
        .word   0x0082fe94
        .size   A_004244, . - A_004244

@ FUN_00004264 (Thumb)
        .section .text.A_004264,"ax",%progbits
        .balign 4
        .thumb
        .global A_004264
        .thumb_func
        .type   A_004264, %function
A_004264:
        push    {r4, lr}
        bl      Fn_2027a0_t
        bl      Fn_2024b0
        .size   A_004264, . - A_004264

@ FUN_00004280 (Thumb)
        .section .text.A_004280,"ax",%progbits
        .balign 4
        .thumb
        .global A_004280
        .thumb_func
        .type   A_004280, %function
A_004280:
        push    {r4, lr}
        bl      Fn_202a30_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_004280, . - A_004280

@ FUN_0000429c (Thumb)
        .section .text.A_00429c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00429c
        .thumb_func
        .type   A_00429c, %function
A_00429c:
        push    {r4, lr}
        bl      Fn_202a38_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_00429c, . - A_00429c

@ FUN_000042b8 (Thumb)
        .section .text.A_0042b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0042b8
        .thumb_func
        .type   A_0042b8, %function
A_0042b8:
        push    {r4, lr}
        bl      Fn_202a28_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_0042b8, . - A_0042b8

@ FUN_000042c4 (Thumb)
        .section .text.A_0042c4,"ax",%progbits
        .balign 4
        .thumb
        .global A_0042c4
        .thumb_func
        .type   A_0042c4, %function
A_0042c4:
        push    {r4, lr}
        bl      Fn_202a40_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_0042c4, . - A_0042c4

@ FUN_000042d0 (Thumb)
        .section .text.A_0042d0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0042d0
        .thumb_func
        .type   A_0042d0, %function
A_0042d0:
        push    {r4, lr}
        bl      Fn_0042dc_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_0042d0, . - A_0042d0

@ FUN_000042dc (Thumb)
        .section .text.A_0042dc,"ax",%progbits
        .balign 4
        .thumb
        .global A_0042dc
        .thumb_func
        .type   A_0042dc, %function
A_0042dc:
        push    {r4, lr}
        movs    r4, r0
        adds    r0, #0x10
        bl      Fn_2025c0_t
        subs    r0, #0x10
        pop     {r4, pc}
        .size   A_0042dc, . - A_0042dc

@ FUN_000042ea (Thumb)
        .section .text.A_0042ea,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0042ea
        .thumb_func
        .type   A_0042ea, %function
A_0042ea:
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        bl      Fn_202080_t
        .size   A_0042ea, . - A_0042ea

@ FUN_000042f4 (Thumb)
        .section .text.A_0042f4,"ax",%progbits
        .balign 4
        .thumb
        .global A_0042f4
        .thumb_func
        .type   A_0042f4, %function
A_0042f4:
        push    {r4, lr}
        bl      Fn_004300_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_0042f4, . - A_0042f4

@ FUN_00004300 (Thumb)
        .section .text.A_004300,"ax",%progbits
        .balign 4
        .thumb
        .global A_004300
        .thumb_func
        .type   A_004300, %function
A_004300:
        push    {r4, lr}
        movs    r4, r0
        adds    r0, #0x10
        bl      Fn_003462_t
        subs    r0, #0x10
        pop     {r4, pc}
        .size   A_004300, . - A_004300

@ FUN_0000430e (Thumb)
        .section .text.A_00430e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00430e
        .thumb_func
        .type   A_00430e, %function
A_00430e:
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        bl      Fn_202080_t
        .size   A_00430e, . - A_00430e

@ FUN_00004318 (Thumb)
        .section .text.A_004318,"ax",%progbits
        .balign 4
        .thumb
        .global A_004318
        .thumb_func
        .type   A_004318, %function
A_004318:
        push    {r4, lr}
        bl      Fn_2020d0_t
        bl      Fn_2024b0
        pop     {r4, pc}
        .size   A_004318, . - A_004318

@ FUN_00004324 (Thumb)
        .section .text.A_004324,"ax",%progbits
        .balign 4
        .thumb
        .global A_004324
        .thumb_func
        .type   A_004324, %function
A_004324:
        bx      lr
        .size   A_004324, . - A_004324

@ FUN_00004338 (Thumb)
        .section .text.A_004338,"ax",%progbits
        .balign 4
        .thumb
        .global A_004338
        .thumb_func
        .type   A_004338, %function
A_004338:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r0, #1
        str     r0, [sp]
        ldr     r6, [sp, #4]
        ldr     r0, [sp, #8]
        ldr     r1, [sp, #0x2c]
        muls    r6, r0, r6
        cmp     r6, #0
        bne     L434e
        movs    r6, #1
L434e:
        ldr     r4, [sp, #0xc]
        adds    r0, r6, r4
        cmp     r1, #0
        beq     L435e
        blx     r1
        cmp     r0, #0
        beq     L4366
        b       L4362
L435e:
        bl      Fn_202544_t
L4362:
        adds    r5, r0, r4
        b       L4368
L4366:
        movs    r5, #0
L4368:
        cmp     r5, #0
        beq     L439c
        ldr     r0, [sp, #0xc]
        cmp     r0, #0
        beq     L437e
        movs    r0, r5
        ldr     r1, [sp, #8]
        subs    r0, #0x40
        str     r1, [r0, #0x38]
        ldr     r1, [sp, #4]
        str     r1, [r0, #0x3c]
L437e:
        ldr     r0, [sp, #0x10]
        cmp     r0, #0
        beq     L439c
        movs    r4, #0
        movs    r7, r5
        b       L4396
L438a:
        ldr     r1, [sp, #0x10]
        movs    r0, r7
        blx     r1
        ldr     r0, [sp, #8]
        adds    r4, r4, #1
        adds    r7, r7, r0
L4396:
        ldr     r0, [sp, #4]
        cmp     r4, r0
        blt     L438a
L439c:
        movs    r0, r5
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_004338, . - A_004338

@ FUN_000043dc (Thumb)
        .section .text.A_0043dc,"ax",%progbits
        .balign 4
        .thumb
        .global A_0043dc
        .thumb_func
        .type   A_0043dc, %function
A_0043dc:
        bl      Fn_1fd340_t
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        .size   A_0043dc, . - A_0043dc

@ FUN_000043e8 (Thumb)
        .section .text.A_0043e8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0043e8
        .thumb_func
        .type   A_0043e8, %function
A_0043e8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r1
        movs    r6, r2
        movs    r7, r3
        subs    r5, r0, r6
        b       L440a
L43f6:
        movs    r0, r5
        blx     r7
        b       L4408
        bl      Fn_1fcdbc_t
        bl      Fn_1fd454_t
        bl      Fn_1fd340_t
L4408:
        subs    r5, r5, r6
L440a:
        subs    r4, r4, #1
        bhs     L43f6
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_0043e8, . - A_0043e8

@ FUN_00004412 (Thumb)
        .section .text.A_004412,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_004412
        .thumb_func
        .type   A_004412, %function
A_004412:
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        .size   A_004412, . - A_004412

@ FUN_00004422 (Thumb)
        .section .text.A_004422,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_004422
        .thumb_func
        .type   A_004422, %function
A_004422:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r3
        movs    r6, r1
        movs    r7, r2
        ldr     r0, [sp, #0x28]
        cmp     r0, #0
        beq     L4446
        ldr     r5, [sp, #4]
        b       L4442
L4436:
        ldr     r2, [sp, #0x28]
        movs    r1, r6
        movs    r0, r5
        blx     r2
        adds    r5, r5, r7
        adds    r6, r6, r7
L4442:
        subs    r4, r4, #1
        bhs     L4436
L4446:
        ldr     r0, [sp, #4]
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_004422, . - A_004422

@ FUN_0000444c (Thumb)
        .section .text.A_00444c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00444c
        .thumb_func
        .type   A_00444c, %function
A_00444c:
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        .size   A_00444c, . - A_00444c

@ FUN_0000445c (Thumb)
        .section .text.A_00445c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00445c
        .thumb_func
        .type   A_00445c, %function
A_00445c:
        movs    r1, #0
        str     r1, [r0]
        bx      lr
        .size   A_00445c, . - A_00445c

@ FUN_0000446e (Thumb)
        .section .text.A_00446e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00446e
        .thumb_func
        .type   A_00446e, %function
A_00446e:
        movs    r0, #0
        push    {r4, lr}
        bl      Fn_00165c_t
        pop     {r4, pc}
        .size   A_00446e, . - A_00446e

@ FUN_00004478 (Thumb)
        .section .text.A_004478,"ax",%progbits
        .balign 4
        .thumb
        .global A_004478
        .thumb_func
        .type   A_004478, %function
A_004478:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r2
        movs    r6, r1
        movs    r7, r3
        ldr     r0, [sp, #0x28]
        cmp     r0, #0
        beq     L44b2
        ldr     r5, [sp, #4]
        b       L44ae
L448c:
        ldr     r2, [sp, #0x28]
        movs    r1, r6
        movs    r0, r5
        blx     r2
        b       L44aa
        bl      Fn_1fcdbc_t
        ldr     r3, [sp, #0x2c]
        ldr     r1, [sp, #4]
        movs    r2, r7
        movs    r0, r5
        bl      Fn_1fd314_t
        bl      Fn_1fd340_t
L44aa:
        adds    r5, r5, r7
        adds    r6, r6, r7
L44ae:
        subs    r4, r4, #1
        bhs     L448c
L44b2:
        ldr     r0, [sp, #4]
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_004478, . - A_004478

@ FUN_000044b8 (Thumb)
        .section .text.A_0044b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0044b8
        .thumb_func
        .type   A_0044b8, %function
A_0044b8:
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        .size   A_0044b8, . - A_0044b8

@ FUN_000044c0 (Thumb)
        .section .text.A_0044c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_0044c0
        .thumb_func
        .type   A_0044c0, %function
A_0044c0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r1
        movs    r6, r0
        movs    r7, r2
        movs    r5, r0
        b       L44ec
L44ce:
        ldr     r1, [sp, #0x10]
        movs    r0, r5
        blx     r1
        b       L44ea
        bl      Fn_1fcdbc_t
        ldr     r3, [sp, #0x28]
        movs    r2, r7
        movs    r1, r6
        movs    r0, r5
        bl      Fn_1fd314_t
        bl      Fn_1fd340_t
L44ea:
        adds    r5, r5, r7
L44ec:
        subs    r4, r4, #1
        bhs     L44ce
        movs    r0, r6
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_0044c0, . - A_0044c0

@ FUN_000044f6 (Thumb)
        .section .text.A_0044f6,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0044f6
        .thumb_func
        .type   A_0044f6, %function
A_0044f6:
        bl      Fn_1fd340_t
        bl      Fn_202080_t
        .short  0xffff
        .size   A_0044f6, . - A_0044f6

@ FUN_00004500 (Thumb)
        .section .text.A_004500,"ax",%progbits
        .balign 4
        .thumb
        .global A_004500
        .thumb_func
        .type   A_004500, %function
A_004500:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r5, #0
        mov     r7, sp
        ldr     r6, L4514
        ldr     r4, [sp, #0x20]
        stm     r7!, {r4, r5, r6}
        bl      Fn_004338_t
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .short  0x0000
L4514:
        .word   0x002fcd88
        .size   A_004500, . - A_004500

@ FUN_00004518 (Thumb)
        .section .text.A_004518,"ax",%progbits
        .balign 4
        .thumb
        .global A_004518
        .thumb_func
        .type   A_004518, %function
A_004518:
        push    {r4, r5, r6, r7, lr}
        sub     sp, #0x34
        movs    r5, r1
        str     r0, [sp, #0x28]
        ldr     r1, [r0]
        movs    r4, r2
        subs    r1, #0x40
        ldr     r2, [r1, #0x38]
        adds    r7, r2, r0
        str     r7, [sp, #0x2c]
        ldr     r6, [r1, #0x3c]
        cmp     r4, #0
        beq     L455a
        movs    r1, #0
        str     r1, [sp, #8]
        str     r1, [sp, #0xc]
        str     r1, [sp, #0x10]
        str     r1, [sp, #0x20]
        str     r1, [sp, #0x24]
        ldr     r1, L45b0
        str     r1, [sp]
        ldr     r1, L45b4
        str     r5, [sp, #0x18]
        str     r1, [sp, #4]
        str     r0, [sp, #0x1c]
        movs    r3, #0
        movs    r1, r6
        movs    r0, r7
        mov     r2, sp
        str     r4, [sp, #0x14]
        bl      Fn_2020d8_t
        ldr     r7, [sp, #0x24]
L455a:
        cmp     r7, #0
        bne     L45aa
        movs    r0, #1
        cmp     r6, r5
        str     r0, [sp, #8]
        beq     L4580
        movs    r0, #0
        str     r0, [sp, #8]
        add     r0, sp, #8
        str     r0, [sp]
        ldr     r1, [sp, #0x28]
        ldr     r0, [sp, #0x2c]
        movs    r3, r5
        movs    r2, r6
        bl      Fn_202180_t
        ldr     r0, [sp, #8]
        cmp     r0, #0
        beq     L45aa
L4580:
        movs    r1, r4
        movs    r0, r6
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L4590
        ldr     r7, [sp, #0x2c]
        b       L45aa
L4590:
        movs    r0, #0
        str     r0, [sp, #0xc]
        str     r0, [sp]
        str     r0, [sp, #4]
        movs    r3, r4
        movs    r2, r6
        add     r1, sp, #0xc
        add     r0, sp, #0x2c
        bl      Fn_1fe684_t
        cmp     r0, #0
        beq     L45aa
        ldr     r7, [sp, #0xc]
L45aa:
        add     sp, #0x34
        movs    r0, r7
        pop     {r4, r5, r6, r7, pc}
L45b0:
        .word   0x00102c8d
L45b4:
        .word   0x00102cd3
        .size   A_004518, . - A_004518

@ FUN_000045b8 (Thumb)
        .section .text.A_0045b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0045b8
        .thumb_func
        .type   A_0045b8, %function
A_0045b8:
        ldr     r0, L45c4
        movs    r1, #0
        str     r1, [r0]
        adds    r0, r0, #4
        str     r1, [r0]
        bx      lr
L45c4:
        .word   0x008bf9dc
        .size   A_0045b8, . - A_0045b8

@ FUN_000045c8 (Thumb)
        .section .text.A_0045c8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0045c8
        .thumb_func
        .type   A_0045c8, %function
A_0045c8:
        push    {r4, r5, r6, lr}
        movs    r4, #2
        ldr     r5, L45f8
        movs    r6, #0
        movs    r0, #8
        bl      Fn_202544_t
        str     r4, [r5, #4]
        str     r0, [r5]
L45da:
        movs    r0, r4
        lsls    r0, r0, #2
        ldr     r1, [r5]
        subs    r0, r0, #4
        subs    r4, r4, #1
        cmp     r4, #0
        str     r6, [r1, r0]
        bne     L45da
        ldr     r2, L45fc
        ldr     r1, L4600
        movs    r0, r5
        bl      Fn_203d78
        pop     {r4, r5, r6, pc}
        movs    r0, r0
L45f8:
        .word   0x008bf9e8
L45fc:
        .word   0x00100000
L4600:
        .word   0x0010468d
        .size   A_0045c8, . - A_0045c8

@ FUN_00004604 (Thumb)
        .section .text.A_004604,"ax",%progbits
        .balign 4
        .thumb
        .global A_004604
        .thumb_func
        .type   A_004604, %function
A_004604:
        ldr     r0, L4610
        movs    r1, #0
        str     r1, [r0]
        adds    r0, r0, #4
        str     r1, [r0]
        bx      lr
L4610:
        .word   0x008bf9c0
        push    {r4, lr}
        ldr     r2, [r1, #8]
        cmp     r2, #0
        bgt     L4622
        bl      Fn_0025f0_t
        pop     {r4, pc}
L4622:
        subs    r2, r2, #1
        str     r2, [r1, #8]
        ldr     r2, [r1, #4]
        lsls    r0, r0, #0x18
        lsrs    r0, r0, #0x18
        adds    r3, r2, #1
        str     r3, [r1, #4]
        strb    r0, [r2]
        pop     {r4, pc}
        .size   A_004604, . - A_004604

@ FUN_00004634 (Thumb)
        .section .text.A_004634,"ax",%progbits
        .balign 4
        .thumb
        .global A_004634
        .thumb_func
        .type   A_004634, %function
A_004634:
        push    {r4, r5, r6, lr}
        cmp     r0, #0
        beq     L4654
        cmp     r0, #1
        beq     L4668
        movs    r4, r1
        movs    r5, r2
        movs    r0, #0x34
        bl      Fn_202478_t
        movs    r6, r0
        movs    r2, r5
        movs    r1, r4
        bl      Fn_00399c_t
        pop     {r4, r5, r6, pc}
L4654:
        movs    r0, #0x34
        bl      Fn_202478_t
        movs    r3, #0
        movs    r4, r0
        movs    r2, r3
        movs    r1, r3
        bl      Fn_20318c_t
        pop     {r4, r5, r6, pc}
L4668:
        movs    r0, #0x34
        bl      Fn_202478_t
        movs    r2, #0
        movs    r4, r0
        movs    r3, #1
        movs    r1, r2
        bl      Fn_20318c_t
        pop     {r4, r5, r6, pc}
        .size   A_004634, . - A_004634

@ FUN_0000467c (Thumb)
        .section .text.A_00467c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00467c
        .thumb_func
        .type   A_00467c, %function
A_00467c:
        b       L467e
L467e:
        movs    r0, r4
        b       L4684
        movs    r0, r6
L4684:
        bl      Fn_2024b0
        bl      Fn_202080_t
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0]
        bl      Fn_1fcd88
        movs    r0, r4
        pop     {r4, pc}
        .short  0xffff
        .size   A_00467c, . - A_00467c

@ FUN_0000469c (Thumb)
        .section .text.A_00469c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00469c
        .thumb_func
        .type   A_00469c, %function
A_00469c:
        push    {r4, r5, r6, r7, lr}
        movs    r5, r0
        sub     sp, #0x1c
        movs    r7, r1
        mov     r0, sp
        bl      Fn_003d8c_t
        str     r0, [sp, #0x10]
        ldr     r3, L4714
        ldr     r2, L4718
        movs    r1, r7
        movs    r0, #8
        bl      Fn_202700_t
        str     r0, [sp, #8]
        ldr     r4, [r5, #4]
        cmp     r4, r7
        blo     L46c2
        movs    r4, r7
L46c2:
        ldr     r6, [r5]
        str     r0, [sp, #0xc]
        lsls    r0, r4, #3
        str     r0, [sp, #0x14]
        b       L46dc
L46cc:
        ldr     r0, [sp, #0xc]
        movs    r1, r6
        bl      Fn_204160_t
        ldr     r0, [sp, #0xc]
        adds    r6, #8
        adds    r0, #8
        str     r0, [sp, #0xc]
L46dc:
        ldr     r1, [r5]
        ldr     r0, [sp, #0x14]
        adds    r0, r1, r0
        cmp     r0, r6
        bne     L46cc
        b       L46f6
L46e8:
        ldr     r0, [sp, #8]
        lsls    r1, r4, #3
        adds    r0, r1, r0
        ldr     r1, [sp, #0x10]
        adds    r4, r4, #1
        bl      Fn_204160_t
L46f6:
        cmp     r4, r7
        blo     L46e8
        ldr     r1, L4714
        ldr     r0, [r5]
        bl      Fn_202758_t
        str     r7, [r5, #4]
        ldr     r4, [sp, #8]
        add     r0, sp, #4
        str     r4, [r5]
        bl      Fn_202638_t
        movs    r0, r4
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L4714:
        .word   0x00103da7
L4718:
        .word   0x00103d8d
        .size   A_00469c, . - A_00469c

@ FUN_0000471c (Thumb)
        .section .text.A_00471c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00471c
        .thumb_func
        .type   A_00471c, %function
A_00471c:
        mov     r0, sp
        bl      Fn_003da6_t
        bl      Fn_202080_t
        .short  0xffff
        .size   A_00471c, . - A_00471c

@ FUN_00004728 (Thumb)
        .section .text.A_004728,"ax",%progbits
        .balign 4
        .thumb
        .global A_004728
        .thumb_func
        .type   A_004728, %function
A_004728:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0]
        ldr     r1, L4738
        bl      Fn_202758_t
        movs    r0, r4
        pop     {r4, pc}
L4738:
        .word   0x00103da7
        .size   A_004728, . - A_004728

@ FUN_0000473c (Thumb)
        .section .text.A_00473c,"ax",%progbits
        .balign 4
        .thumb
        .global A_00473c
        .thumb_func
        .type   A_00473c, %function
A_00473c:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r4, r1
        movs    r5, r3
        ldr     r1, [sp, #0x20]
        subs    r6, r2, r4
        subs    r1, r1, r5
        cmp     r6, r1
        str     r1, [sp]
        bhs     L4750
        movs    r1, r6
L4750:
        adds    r0, #0x10
        str     r1, [sp, #4]
        str     r0, [sp, #8]
        b       L4778
L4758:
        ldrb    r1, [r4]
        ldr     r0, [sp, #8]
        bl      Fn_204172_t
        movs    r7, r0
        ldrb    r1, [r5]
        ldr     r0, [sp, #8]
        bl      Fn_204172_t
        subs    r0, r7, r0
        beq     L4774
        cmp     r0, #0
        blt     L4788
        b       L4792
L4774:
        adds    r4, r4, #1
        adds    r5, r5, #1
L4778:
        ldr     r0, [sp, #4]
        subs    r0, r0, #1
        str     r0, [sp, #4]
        adds    r0, r0, #1
        bne     L4758
        ldr     r0, [sp]
        cmp     r6, r0
        bhs     L478e
L4788:
        movs    r0, #0
        mvns    r0, r0
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L478e:
        cmp     r0, r6
        bhs     L4796
L4792:
        movs    r0, #1
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L4796:
        movs    r0, #0
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .size   A_00473c, . - A_00473c

@ FUN_0000479a (Thumb)
        .section .text.A_00479a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_00479a
        .thumb_func
        .type   A_00479a, %function
A_00479a:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r2
        movs    r5, r0
        movs    r7, r1
        movs    r6, r3
        mov     r0, sp
        mov     r8, r8
        mov     r8, r8
        movs    r3, r0
        subs    r2, r6, r4
        movs    r1, #0
        movs    r0, r5
        bl      Fn_202bfc_t
        str     r0, [sp, #4]
        bl      Fn_202c5c_t
        movs    r5, r0
        adds    r7, #0x10
        b       L47d2
L47c4:
        ldrb    r1, [r4]
        movs    r0, r7
        bl      Fn_204172_t
        strb    r0, [r5]
        adds    r5, r5, #1
        adds    r4, r4, #1
L47d2:
        cmp     r4, r6
        bne     L47c4
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   A_00479a, . - A_00479a

@ FUN_000047da (Thumb)
        .section .text.A_0047da,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0047da
        .thumb_func
        .type   A_0047da, %function
A_0047da:
        ldr     r0, [sp, #4]
        bl      Fn_2025c0_t
        bl      Fn_202080_t
        .size   A_0047da, . - A_0047da

@ FUN_000047e4 (Thumb)
        .section .text.A_0047e4,"ax",%progbits
        .balign 4
        .thumb
        .global A_0047e4
        .thumb_func
        .type   A_0047e4, %function
A_0047e4:
        push    {r3, r4, r5, lr}
        movs    r5, r1
        ldr     r1, [r0]
        movs    r3, r2
        ldr     r4, [r1, #0x10]
        movs    r2, r5
        movs    r1, r0
        mov     r0, sp
        blx     r4
        ldr     r0, [sp]
        movs    r1, r0
        subs    r1, #0xc
        ldr     r1, [r1, #8]
        adds    r2, r1, r0
        movs    r4, #0
        b       L481a
L4804:
        ldrb    r3, [r0]
        lsls    r1, r4, #4
        adds    r4, r1, r3
        lsrs    r1, r4, #0x1c
        lsls    r1, r1, #0x1c
        beq     L4818
        asrs    r1, r1, #0x18
        eors    r1, r4
        lsls    r4, r1, #4
        lsrs    r4, r4, #4
L4818:
        adds    r0, r0, #1
L481a:
        cmp     r0, r2
        bne     L4804
        mov     r0, sp
        bl      Fn_2025c0_t
        movs    r0, r4
        pop     {r3, r4, r5, pc}
        .size   A_0047e4, . - A_0047e4

@ FUN_00004828 (Thumb)
        .section .text.A_004828,"ax",%progbits
        .balign 4
        .thumb
        .global A_004828
        .thumb_func
        .type   A_004828, %function
A_004828:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0xc
        movs    r4, r1
        movs    r6, r2
        movs    r2, r3
        adds    r4, #0x10
        ldr     r7, [sp, #0x34]
        ldr     r3, [sp, #0x30]
        movs    r1, r6
        movs    r0, r4
        bl      Fn_003684_t
        movs    r5, r0
        beq     L48a0
        movs    r1, r6
        movs    r0, r4
        bl      Fn_003666_t
        movs    r4, r0
        ldr     r1, L48ac
        ldr     r2, [r4]
        movs    r0, #1
        mov     ip, r0
        ldr     r0, [r1]
        ldr     r7, [r2, #0xc]
        ldr     r6, L48b0
        movs    r3, #0x20
        cmp     r7, r0
        bls     L486c
        ldr     r2, [r2, #8]
        lsls    r0, r0, #2
        adds    r0, r2, r0
        ldr     r0, [r0]
        b       L486e
L486c:
        movs    r0, #0
L486e:
        cmp     r0, #0
        bne     L487c
        movs    r0, r4
        mov     r2, ip
        str     r6, [sp]
        bl      Fn_003758_t
L487c:
        ldr     r4, [sp, #0xc]
        add     r0, sp, #8
        mov     r8, r8
        mov     r8, r8
        movs    r2, r0
        movs    r1, r5
        add     r0, sp, #4
        bl      Fn_20254c_t
        movs    r1, r0
        movs    r0, r4
        bl      Fn_202584_t
        add     r0, sp, #4
        bl      Fn_2025c0_t
L489c:
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L48a0:
        ldr     r0, [sp, #0xc]
        movs    r1, r7
        bl      Fn_202584_t
        b       L489c
        .short  0x0000
L48ac:
        .word   0x008bf9c0
L48b0:
        .word   0x00104635
        .size   A_004828, . - A_004828

@ FUN_000048b4 (Thumb)
        .section .text.A_0048b4,"ax",%progbits
        .balign 4
        .thumb
        .global A_0048b4
        .thumb_func
        .type   A_0048b4, %function
A_0048b4:
        add     r0, sp, #4
        bl      Fn_2025c0_t
        bl      Fn_202080_t
        .size   A_0048b4, . - A_0048b4

@ FUN_000048be (Thumb)
        .section .text.A_0048be,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_0048be
        .thumb_func
        .type   A_0048be, %function
A_0048be:
        adds    r0, #0x10
        push    {r4, lr}
        bl      Fn_0035b2_t
        pop     {r4, pc}
        .size   A_0048be, . - A_0048be

@ FUN_000048e8 (Thumb)
        .section .text.A_0048e8,"ax",%progbits
        .balign 4
        .thumb
        .global A_0048e8
        .thumb_func
        .type   A_0048e8, %function
A_0048e8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x14
        movs    r4, r1
        movs    r5, r0
        ldr     r0, [r0]
        ldr     r6, [sp, #0x38]
        subs    r0, #0xc
        ldr     r0, [r0, #8]
        cmp     r0, r4
        blo     L4902
        ldr     r1, [sp, #0x3c]
        cmp     r1, r6
        bls     L4922
L4902:
        cmp     r0, r6
        bls     L490a
        movs    r1, r0
        b       L490c
L490a:
        movs    r1, r6
L490c:
        cmp     r0, r4
        bhs     L4914
        movs    r3, r4
        b       L4916
L4914:
        ldr     r3, [sp, #0x3c]
L4916:
        str     r1, [sp]
        movs    r0, #9
        adr     r2, #0x140
        adr     r1, #0x13c
        bl      Fn_2024e4_t
L4922:
        ldr     r0, [r5]
        ldr     r1, [sp, #0x1c]
        subs    r0, #0xc
        ldr     r0, [r0, #8]
        subs    r7, r0, r4
        cmp     r1, r7
        bhs     L4932
        movs    r7, r1
L4932:
        ldr     r1, [sp, #0x3c]
        subs    r6, r6, r1
        ldr     r1, [sp, #0x40]
        cmp     r1, r6
        bhs     L493e
        movs    r6, r1
L493e:
        subs    r3, r0, r7
        movs    r0, #0xe
        mvns    r0, r0
        subs    r0, r0, r6
        cmp     r3, r0
        bls     L4956
        str     r0, [sp]
        movs    r0, #8
        adr     r2, #0x10c
        adr     r1, #0x108
        bl      Fn_2024e4_t
L4956:
        ldr     r0, [r5]
        movs    r1, r0
        subs    r1, #0xc
        mov     lr, r1
        ldr     r1, [r1, #8]
        mov     ip, r1
        subs    r1, r1, r7
        adds    r7, r1, r6
        beq     L4a0e
        subs    r1, r1, r4
        str     r1, [sp]
        ldr     r2, [sp, #0x1c]
        mov     r1, lr
        ldr     r1, [r1]
        adds    r2, r4, r2
        str     r2, [sp, #0xc]
        ldr     r3, [sp, #0x20]
        ldr     r2, [sp, #0x3c]
        adds    r1, r1, #1
        adds    r2, r3, r2
        cmp     r1, #1
        str     r2, [sp, #0x10]
        bhi     L499c
        mov     r1, lr
        ldr     r1, [r1, #4]
        cmp     r1, r7
        blo     L499c
        cmp     r3, #0
        beq     L4a1a
        cmp     r0, r3
        bhi     L4a1a
        mov     r1, ip
        adds    r2, r0, r1
        cmp     r2, r3
        bls     L4a1a
L499c:
        mov     r0, ip
        lsrs    r1, r0, #1
        adds    r1, r1, r0
        lsrs    r2, r0, #3
        adds    r1, r1, r2
        adds    r0, #0x80
        cmp     r0, r1
        bls     L49ae
        movs    r1, r0
L49ae:
        str     r1, [sp, #4]
        add     r1, sp, #8
        add     r0, sp, #4
        str     r7, [sp, #8]
        bl      Fn_204244_t
        ldr     r1, [r0]
        movs    r2, r7
        movs    r0, r5
        bl      Fn_204278_t
        movs    r7, r0
        cmp     r4, #0
        beq     L49d6
        movs    r0, r7
        ldr     r1, [r5]
        adds    r0, #0xc
        movs    r2, r4
        bl      Fn_2026a2_t
L49d6:
        cmp     r6, #0
        beq     L49e8
        movs    r0, r7
        adds    r0, #0xc
        ldr     r1, [sp, #0x10]
        adds    r0, r0, r4
        movs    r2, r6
        bl      Fn_2026a2_t
L49e8:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4a02
        ldr     r2, [r5]
        ldr     r1, [sp, #0xc]
        movs    r0, r7
        adds    r0, #0xc
        adds    r0, r0, r4
        adds    r1, r2, r1
        ldr     r2, [sp]
        adds    r0, r0, r6
        bl      Fn_2026a2_t
L4a02:
        movs    r0, r5
        bl      Fn_2042f8_t
        adds    r7, #0xc
        str     r7, [r5]
        b       L4a52
L4a0e:
        movs    r0, r5
        bl      Fn_2042f8_t
        ldr     r0, L4a60
        str     r0, [r5]
        b       L4a52
L4a1a:
        ldr     r1, [sp]
        cmp     r1, #0
        beq     L4a30
        adds    r1, r4, r6
        adds    r3, r0, r1
        ldr     r1, [sp, #0xc]
        ldr     r2, [sp]
        adds    r1, r0, r1
        movs    r0, r3
        bl      Fn_2044b8
L4a30:
        cmp     r6, #0
        beq     L4a40
        ldr     r0, [r5]
        ldr     r1, [sp, #0x10]
        adds    r0, r0, r4
        movs    r2, r6
        bl      Fn_2044b8
L4a40:
        ldr     r0, [r5]
        mov     r2, sp
        subs    r0, #0xc
        str     r7, [r0, #8]
        ldr     r0, [r5]
        adds    r1, r7, r0
        movs    r0, #0
        strb    r0, [r2]
        strb    r0, [r1]
L4a52:
        ldr     r0, [r5]
        add     sp, #0x24
        adds    r0, r0, r4
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
        .short  0x0000
        .short  0x0000
L4a60:
        .word   0x00a7b304
        .size   A_0048e8, . - A_0048e8

@ FUN_00004a64 (Thumb)
        .section .text.A_004a64,"ax",%progbits
        .balign 4
        .thumb
        .global A_004a64
        .thumb_func
        .type   A_004a64, %function
A_004a64:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r4, r0
        movs    r5, #0
        ldr     r0, [r0]
        ldr     r1, [r0, #0xc]
        movs    r0, r4
        blx     r1
        strb    r0, [r4, #0x10]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x10]
        movs    r0, r4
        blx     r1
        strb    r0, [r4, #0x11]
        ldr     r0, [r4]
        movs    r1, r4
        ldr     r2, [r0, #0x14]
        add     r0, sp, #4
        blx     r2
        movs    r0, r4
        adds    r0, #0x14
        add     r1, sp, #4
        bl      Fn_202714_t
        add     r0, sp, #4
        bl      Fn_2025c0_t
        ldr     r0, [r4]
        movs    r1, r4
        ldr     r2, [r0, #0x1c]
        mov     r0, sp
        blx     r2
        movs    r0, r4
        adds    r0, #0x1c
        mov     r1, sp
        bl      Fn_202714_t
        mov     r0, sp
        bl      Fn_2025c0_t
        ldr     r0, [r4]
        movs    r1, r4
        ldr     r2, [r0, #0x18]
        mov     r0, sp
        blx     r2
        movs    r0, r4
        adds    r0, #0x18
        mov     r1, sp
        bl      Fn_202714_t
        mov     r0, sp
        bl      Fn_2025c0_t
        adds    r4, #0x10
        ldr     r0, [r4, #8]
        str     r0, [r4, #0x10]
        movs    r0, #1
        str     r0, [r4, #0x14]
        ldr     r0, [r4, #0xc]
        str     r5, [r4, #0x1c]
        str     r0, [r4, #0x18]
        movs    r0, #2
        str     r0, [r4, #0x20]
        movs    r0, r4
        adds    r0, #0x10
        str     r0, [r4, #0x24]
        pop     {r2, r3, r4, r5, r6, pc}
        .size   A_004a64, . - A_004a64

@ FUN_001fcdbc (Thumb)
        .section .text.A_1fcdbc,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fcdbc
        .thumb_func
        .type   A_1fcdbc, %function
A_1fcdbc:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        ldr     r6, [r0, #0x24]
        bl      Fn_1fd390_t
        movs    r4, r0
        movs    r0, r5
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        beq     L1fcddc
        ldr     r0, [r4, #0x14]
        movs    r1, r5
        bl      Fn_1fd40c_t
        b       L1fcdec
L1fcddc:
        movs    r0, r5
        subs    r0, #0x20
        ldr     r1, [r0, #0x1c]
        subs    r1, r1, #1
        str     r1, [r0, #0x1c]
        ldr     r1, [r4]
        subs    r1, r1, #1
        str     r1, [r4]
L1fcdec:
        ldr     r1, [r0, #0x14]
        adds    r1, r1, #1
        str     r1, [r0, #0x14]
        ldr     r1, [r0, #0x10]
        cmp     r1, #0
        bne     L1fcdfe
        ldr     r1, [r4, #0x14]
        str     r1, [r0, #0x10]
        str     r0, [r4, #0x14]
L1fcdfe:
        movs    r0, r5
        bl      Fn_20044a_t
        movs    r0, r6
        pop     {r4, r5, r6, pc}
        .size   A_1fcdbc, . - A_1fcdbc

@ FUN_001fce08 (Thumb)
        .section .text.A_1fce08,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fce08
        .thumb_func
        .type   A_1fce08, %function
A_1fce08:
        push    {r4, r5, r6, lr}
        bl      Fn_1fd390_t
        ldr     r4, [r0, #0x14]
        movs    r5, r0
        cmp     r4, #0
        bne     L1fce1c
        movs    r0, #0
        bl      Fn_1fd48e_t
L1fce1c:
        ldr     r0, [r4, #0x1c]
        movs    r6, r4
        adds    r0, r0, #1
        adds    r6, #0x20
        str     r0, [r4, #0x1c]
        movs    r0, r6
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        beq     L1fce34
        ldr     r6, [r4]
        b       L1fce3a
L1fce34:
        ldr     r1, [r5]
        adds    r1, r1, #1
        str     r1, [r5]
L1fce3a:
        cmp     r0, #0
        beq     L1fce42
        movs    r2, #0
        b       L1fce44
L1fce42:
        ldr     r2, [r4]
L1fce44:
        movs    r1, #0
        movs    r0, r6
        bl      Fn_1fd4cc_t
        movs    r0, r6
        bl      Fn_1fffa4_t
        movs    r0, r6
        bl      Fn_1fd4ba_t
        .size   A_1fce08, . - A_1fce08

@ FUN_001fd314 (Thumb)
        .section .text.A_1fd314,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd314
        .thumb_func
        .type   A_1fd314, %function
A_1fd314:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r4, r0
        movs    r6, r1
        movs    r7, r2
        movs    r5, r3
        bne     L1fd338
        b       L1fd33c
L1fd324:
        subs    r4, r4, r7
        movs    r0, r4
        blx     r5
        b       L1fd338
        bl      Fn_1fcdbc_t
        bl      Fn_1fd454_t
        bl      Fn_1fd340_t
L1fd338:
        cmp     r6, r4
        blo     L1fd324
L1fd33c:
        bl      Fn_1fce08_t
        .size   A_1fd314, . - A_1fd314

@ FUN_001fd340 (Thumb)
        .section .text.A_1fd340,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd340
        .thumb_func
        .type   A_1fd340, %function
A_1fd340:
        push    {r4, r5, r6, lr}
        bl      Fn_1fd390_t
        ldr     r4, [r0, #0x14]
        movs    r5, r0
        cmp     r4, #0
        bne     L1fd352
        bl      Fn_1fd454_t
L1fd352:
        ldr     r0, [r4, #0x14]
        subs    r0, r0, #1
        str     r0, [r4, #0x14]
        bne     L1fd388
        movs    r6, r4
        adds    r6, #0x20
        movs    r0, r6
        bl      Fn_1fd3f8_t
        ldr     r1, [r4, #0x10]
        str     r1, [r5, #0x14]
        ldr     r5, [r4, #0x1c]
        cmp     r0, #0
        beq     L1fd37a
        movs    r0, r4
        ldr     r6, [r4]
        adds    r0, #0x78
        bl      Fn_1fd470_t
        b       L1fd37e
L1fd37a:
        movs    r0, #0
        str     r0, [r4, #0x10]
L1fd37e:
        cmp     r5, #0
        bne     L1fd388
        movs    r0, r6
        bl      Fn_0000ce_t
L1fd388:
        pop     {r4, r5, r6, pc}
        .size   A_1fd340, . - A_1fd340

@ FUN_001fd390 (Thumb)
        .section .text.A_1fd390,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd390
        .thumb_func
        .type   A_1fd390, %function
A_1fd390:
        push    {r4, r5, r6, lr}
        bl      Fn_027920
        ldr     r4, [r0]
        movs    r5, r0
        cmp     r4, #0
        bne     L1fd3ca
        movs    r0, #0x20
        bl      Fn_1fd52c
        movs    r4, r0
        beq     L1fd3ce
        ldr     r1, L1fd3d4
        str     r4, [r5]
        str     r1, [r4, #4]
        movs    r0, #0
        ldr     r1, L1fd3d8
        str     r0, [r4]
        str     r1, [r4, #8]
        strb    r0, [r4, #0xc]
        ldr     r1, L1fd3dc
        str     r0, [r4, #0x10]
        str     r0, [r4, #0x14]
        cmp     r1, #0
        str     r0, [r4, #0x18]
        beq     L1fd3c8
        bl      Fn_1fd598_t
L1fd3c8:
        str     r0, [r4, #0x1c]
L1fd3ca:
        movs    r0, r4
        pop     {r4, r5, r6, pc}
L1fd3ce:
        bl      Fn_1fd5dc
        movs    r0, r0
L1fd3d4:
        .word   0x00101685
L1fd3d8:
        .word   0x002fd38d
L1fd3dc:
        .word   0x00000000
        .size   A_1fd390, . - A_1fd390

@ FUN_001fd3e0 (Thumb)
        .section .text.A_1fd3e0,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd3e0
        .thumb_func
        .type   A_1fd3e0, %function
A_1fd3e0:
        ldr     r2, [r0]
        ldr     r3, [r1]
        cmp     r2, r3
        bne     L1fd3f4
        ldr     r0, [r0, #4]
        ldr     r1, [r1, #4]
        cmp     r0, r1
        bne     L1fd3f4
        movs    r0, #1
        bx      lr
L1fd3f4:
        movs    r0, #0
        bx      lr
        .size   A_1fd3e0, . - A_1fd3e0

@ FUN_001fd3f8 (Thumb)
        .section .text.A_1fd3f8,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd3f8
        .thumb_func
        .type   A_1fd3f8, %function
A_1fd3f8:
        ldr     r1, L1fd408
        push    {r4, lr}
        bl      Fn_1fd3e0_t
        movs    r1, #1
        eors    r0, r1
        pop     {r4, pc}
        .short  0x0000
L1fd408:
        .word   0x00803d08
        .size   A_1fd3f8, . - A_1fd3f8

@ FUN_001fd40c (Thumb)
        .section .text.A_1fd40c,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd40c
        .thumb_func
        .type   A_1fd40c, %function
A_1fd40c:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        movs    r5, r1
        cmp     r0, #0
        beq     L1fd42c
        movs    r0, r4
        adds    r0, #0x20
        bl      Fn_1fd3e0_t
        cmp     r0, #0
        beq     L1fd42c
        ldr     r0, [r4]
        cmp     r0, r5
        bne     L1fd42c
        movs    r0, r4
        pop     {r4, r5, r6, pc}
L1fd42c:
        movs    r0, #0
        bl      Fn_1fd4d0_t
        ldr     r3, [r5, #4]
        ldr     r2, [r5]
        subs    r0, #0x78
        str     r3, [r0, #0x24]
        str     r2, [r0, #0x20]
        movs    r2, #0
        str     r2, [r0, #0x1c]
        str     r2, [r0, #0x14]
        str     r5, [r0]
        str     r2, [r0, #0x10]
        pop     {r4, r5, r6, pc}
        .size   A_1fd40c, . - A_1fd40c

@ FUN_001fd454 (Thumb)
        .section .text.A_1fd454,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd454
        .thumb_func
        .type   A_1fd454, %function
A_1fd454:
        push    {r4, lr}
        bl      Fn_1fd390_t
        ldr     r1, [r0, #0x10]
        cmp     r1, #0
        beq     L1fd468
        movs    r2, #0
        str     r2, [r0, #0x10]
        blx     r1
        b       L1fd46c
L1fd468:
        ldr     r0, [r0, #8]
        blx     r0
L1fd46c:
        bl      Fn_1fd5dc
        .size   A_1fd454, . - A_1fd454

@ FUN_001fd470 (Thumb)
        .section .text.A_1fd470,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd470
        .thumb_func
        .type   A_1fd470, %function
A_1fd470:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_1fd390_t
        subs    r4, #0x78
        ldr     r0, [r0, #0x1c]
        movs    r1, r4
        bl      Fn_1fd5c4_t
        cmp     r0, #0
        bne     L1fd48c
        movs    r0, r4
        bl      Fn_1fd674
L1fd48c:
        pop     {r4, pc}
        .size   A_1fd470, . - A_1fd470

@ FUN_001fd48e (Thumb)
        .section .text.A_1fd48e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_1fd48e
        .thumb_func
        .type   A_1fd48e, %function
A_1fd48e:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        bl      Fn_1fd390_t
        movs    r4, r0
        cmp     r5, #0
        beq     L1fd4a6
        movs    r0, r5
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        beq     L1fd4aa
L1fd4a6:
        ldr     r0, [r4, #8]
        b       L1fd4ae
L1fd4aa:
        subs    r5, #0x20
        ldr     r0, [r5, #0xc]
L1fd4ae:
        str     r0, [r4, #0x10]
        movs    r0, #1
        strb    r0, [r4, #0xc]
        bl      Fn_1fd454_t
        pop     {r4, r5, r6, pc}
        .size   A_1fd48e, . - A_1fd48e

@ FUN_001fd4ba (Thumb)
        .section .text.A_1fd4ba,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_1fd4ba
        .thumb_func
        .type   A_1fd4ba, %function
A_1fd4ba:
        push    {r4, lr}
        movs    r4, r0
        beq     L1fd4c4
        bl      Fn_1fcdbc_t
L1fd4c4:
        movs    r0, r4
        bl      Fn_1fd48e_t
        pop     {r4, pc}
        .size   A_1fd4ba, . - A_1fd4ba

@ FUN_001fd4cc (Thumb)
        .section .text.A_1fd4cc,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd4cc
        .thumb_func
        .type   A_1fd4cc, %function
A_1fd4cc:
        bx      lr
        .size   A_1fd4cc, . - A_1fd4cc

@ FUN_001fd4d0 (Thumb)
        .section .text.A_1fd4d0,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd4d0
        .thumb_func
        .type   A_1fd4d0, %function
A_1fd4d0:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        bl      Fn_1fd390_t
        adds    r4, #0x78
        movs    r5, r0
        movs    r6, r4
        movs    r0, r4
        bl      Fn_1fd52c
        movs    r4, r0
        bne     L1fd4f8
        ldr     r0, [r5, #0x1c]
        movs    r1, r6
        bl      Fn_1fd5aa_t
        movs    r4, r0
        bne     L1fd4f8
        bl      Fn_1fd48e_t
L1fd4f8:
        adr     r2, #0x20
        ldm     r2, {r1, r2}
        str     r2, [r4, #0x24]
        str     r1, [r4, #0x20]
        movs    r1, #0
        str     r1, [r4, #0x28]
        str     r1, [r4, #0x2c]
        str     r1, [r4, #0x14]
        str     r1, [r4, #0x10]
        str     r1, [r4, #0x18]
        str     r1, [r4, #0x1c]
        ldr     r0, [r5, #8]
        str     r0, [r4, #0xc]
        ldr     r0, [r5, #4]
        str     r0, [r4, #8]
        movs    r0, r4
        adds    r0, #0x78
        pop     {r4, r5, r6, pc}
        .size   A_1fd4d0, . - A_1fd4d0

@ FUN_001fd598 (Thumb)
        .section .text.A_1fd598,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd598
        .thumb_func
        .type   A_1fd598, %function
A_1fd598:
        movs    r0, #0x88
        push    {r4, lr}
        bl      Fn_1fd52c
        cmp     r0, #0
        beq     L1fd5a8
        movs    r1, #0
        strb    r1, [r0]
L1fd5a8:
        pop     {r4, pc}
        .size   A_1fd598, . - A_1fd598

@ FUN_001fd5aa (Thumb)
        .section .text.A_1fd5aa,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_1fd5aa
        .thumb_func
        .type   A_1fd5aa, %function
A_1fd5aa:
        cmp     r1, #0x80
        bhi     L1fd5b8
        cmp     r0, #0
        beq     L1fd5b8
        ldrb    r1, [r0]
        cmp     r1, #0
        beq     L1fd5bc
L1fd5b8:
        movs    r0, #0
        bx      lr
L1fd5bc:
        movs    r1, #1
        strb    r1, [r0]
        adds    r0, #8
        bx      lr
        .size   A_1fd5aa, . - A_1fd5aa

@ FUN_001fd5c4 (Thumb)
        .section .text.A_1fd5c4,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd5c4
        .thumb_func
        .type   A_1fd5c4, %function
A_1fd5c4:
        cmp     r0, #0
        beq     L1fd5d0
        movs    r2, r0
        adds    r2, #8
        cmp     r1, r2
        beq     L1fd5d4
L1fd5d0:
        movs    r0, #0
        bx      lr
L1fd5d4:
        movs    r1, #0
        strb    r1, [r0]
        bx      lr
        .size   A_1fd5c4, . - A_1fd5c4

@ FUN_001fd6b4 (Thumb)
        .section .text.A_1fd6b4,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd6b4
        .thumb_func
        .type   A_1fd6b4, %function
A_1fd6b4:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        bl      Fn_1fd390_t
        movs    r4, r0
        movs    r0, r5
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        beq     L1fd6d8
        ldr     r0, [r4, #0x18]
        movs    r1, r5
        bl      Fn_1fd40c_t
        ldr     r1, [r0, #0x1c]
        adds    r1, r1, #1
        str     r1, [r0, #0x1c]
        b       L1fd6de
L1fd6d8:
        movs    r0, r5
        subs    r0, #0x20
        ldr     r1, [r0, #0x1c]
L1fd6de:
        cmp     r1, #1
        bne     L1fd6e8
        ldr     r1, [r4, #0x18]
        str     r1, [r0, #0x18]
        str     r0, [r4, #0x18]
L1fd6e8:
        movs    r0, #1
        pop     {r4, r5, r6, pc}
        .size   A_1fd6b4, . - A_1fd6b4

@ FUN_001fd6ec (Thumb)
        .section .text.A_1fd6ec,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd6ec
        .thumb_func
        .type   A_1fd6ec, %function
A_1fd6ec:
        push    {r4, r5, r6, lr}
        bl      Fn_1fd390_t
        ldr     r4, [r0, #0x18]
        movs    r5, r0
        cmp     r4, #0
        bne     L1fd6fe
        bl      Fn_1fd454_t
L1fd6fe:
        movs    r6, r4
        adds    r6, #0x20
        movs    r0, r6
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        beq     L1fd728
        ldr     r0, [r4, #0x1c]
        ldr     r6, [r4]
        cmp     r0, #1
        beq     L1fd71a
        subs    r0, r0, #1
        str     r0, [r4, #0x1c]
        b       L1fd732
L1fd71a:
        ldr     r1, [r4, #0x18]
        movs    r0, r4
        adds    r0, #0x78
        str     r1, [r5, #0x18]
        bl      Fn_1fd470_t
        b       L1fd732
L1fd728:
        ldr     r0, [r4, #0x1c]
        cmp     r0, #1
        bne     L1fd732
        ldr     r0, [r4, #0x18]
        str     r0, [r5, #0x18]
L1fd732:
        movs    r0, r6
        pop     {r4, r5, r6, pc}
        .size   A_1fd6ec, . - A_1fd6ec

@ FUN_001fd756 (Thumb)
        .section .text.A_1fd756,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_1fd756
        .thumb_func
        .type   A_1fd756, %function
A_1fd756:
        push    {lr}
        sub     sp, #0x3c
        str     r1, [sp, #8]
        movs    r1, #0
        str     r1, [sp, #0x14]
        ldr     r1, L1fd778
        str     r3, [sp, #4]
        add     r1, pc
        str     r1, [sp, #0xc]
        movs    r1, r2
        str     r0, [sp, #0x10]
        mov     r0, sp
        bl      Fn_1ff298_t
        add     sp, #0x3c
        pop     {pc}
        .short  0x0000
L1fd778:
        .word   0xffffffe5
        .size   A_1fd756, . - A_1fd756

@ FUN_001fd77c (Thumb)
        .section .text.A_1fd77c,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd77c
        .thumb_func
        .type   A_1fd77c, %function
A_1fd77c:
        ldr     r2, [r1]
        strb    r0, [r2]
        adds    r2, r2, #1
        str     r2, [r1]
        bx      lr
        .size   A_1fd77c, . - A_1fd77c

@ FUN_001fd792 (Thumb)
        .section .text.A_1fd792,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_1fd792
        .thumb_func
        .type   A_1fd792, %function
A_1fd792:
        push    {lr}
        sub     sp, #0x3c
        str     r1, [sp, #8]
        movs    r1, #1
        str     r1, [sp, #0x14]
        ldr     r1, L1fd7b4
        str     r3, [sp, #4]
        add     r1, pc
        str     r1, [sp, #0xc]
        movs    r1, r2
        str     r0, [sp, #0x10]
        mov     r0, sp
        bl      Fn_1ff298_t
        add     sp, #0x3c
        pop     {pc}
        .short  0x0000
L1fd7b4:
        .word   0xffffffe5
        .size   A_1fd792, . - A_1fd792

@ FUN_001fd7b8 (Thumb)
        .section .text.A_1fd7b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd7b8
        .thumb_func
        .type   A_1fd7b8, %function
A_1fd7b8:
        ldr     r3, [r1, #4]
        ldr     r2, [r1]
        cmp     r2, r3
        bhs     L1fd7c6
        adds    r3, r2, #2
        str     r3, [r1]
        strh    r0, [r2]
L1fd7c6:
        bx      lr
        .size   A_1fd7b8, . - A_1fd7b8

@ FUN_001fd7c8 (Thumb)
        .section .text.A_1fd7c8,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd7c8
        .thumb_func
        .type   A_1fd7c8, %function
A_1fd7c8:
        push    {r4, r5, r6, lr}
        ldr     r5, [r0, #0x18]
        movs    r4, r0
        ldr     r0, [r0]
        lsls    r1, r0, #0x1b
        bpl     L1fd7d8
        movs    r6, #0x30
        b       L1fd7da
L1fd7d8:
        movs    r6, #0x20
L1fd7da:
        lsls    r0, r0, #0x1f
        beq     L1fd7ee
        pop     {r4, r5, r6, pc}
L1fd7e0:
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        movs    r0, r6
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        str     r0, [r4, #0x20]
L1fd7ee:
        subs    r5, r5, #1
        bpl     L1fd7e0
        pop     {r4, r5, r6, pc}
        .size   A_1fd7c8, . - A_1fd7c8

@ FUN_001fd7f4 (Thumb)
        .section .text.A_1fd7f4,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd7f4
        .thumb_func
        .type   A_1fd7f4, %function
A_1fd7f4:
        push    {r4, r5, r6, lr}
        ldr     r5, [r0, #0x18]
        movs    r4, r0
        ldr     r0, [r0]
        lsls    r0, r0, #0x1f
        bne     L1fd810
        pop     {r4, r5, r6, pc}
L1fd802:
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        movs    r0, #0x20
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        str     r0, [r4, #0x20]
L1fd810:
        subs    r5, r5, #1
        bpl     L1fd802
        pop     {r4, r5, r6, pc}
        .size   A_1fd7f4, . - A_1fd7f4

@ FUN_001fd870 (Thumb)
        .section .text.A_1fd870,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd870
        .thumb_func
        .type   A_1fd870, %function
A_1fd870:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        sub     sp, #4
        adds    r0, #0x24
        movs    r5, r1
        str     r0, [sp]
        ldr     r1, [r4]
        lsls    r0, r1, #0x1a
        bpl     L1fd88c
        movs    r2, #0x10
        ldr     r0, [r4, #0x1c]
        bics    r1, r2
        str     r1, [r4]
        b       L1fd88e
L1fd88c:
        movs    r0, #1
L1fd88e:
        cmp     r0, r5
        ble     L1fd896
        subs    r7, r0, r5
        b       L1fd898
L1fd896:
        movs    r7, #0
L1fd898:
        ldr     r0, [sp, #0x10]
        ldr     r1, [r4, #0x18]
        adds    r2, r7, r5
        adds    r0, r2, r0
        subs    r0, r1, r0
        str     r0, [r4, #0x18]
        ldr     r0, [r4]
        lsls    r0, r0, #0x1b
        bmi     L1fd8b0
        movs    r0, r4
        bl      Fn_1fd7c8_t
L1fd8b0:
        movs    r6, #0
        b       L1fd8c6
L1fd8b4:
        ldr     r0, [sp, #0xc]
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        ldrb    r0, [r0, r6]
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        adds    r6, r6, #1
        str     r0, [r4, #0x20]
L1fd8c6:
        ldr     r0, [sp, #0x10]
        cmp     r6, r0
        blt     L1fd8b4
        ldr     r0, [r4]
        lsls    r0, r0, #0x1b
        bpl     L1fd8e8
        movs    r0, r4
        bl      Fn_1fd7c8_t
        b       L1fd8e8
L1fd8da:
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        movs    r0, #0x30
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        str     r0, [r4, #0x20]
L1fd8e8:
        movs    r0, r7
        subs    r7, r7, #1
        cmp     r0, #0
        bgt     L1fd8da
        b       L1fd902
L1fd8f2:
        ldr     r0, [sp]
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        ldrb    r0, [r0, r5]
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        str     r0, [r4, #0x20]
L1fd902:
        movs    r0, r5
        subs    r5, r5, #1
        cmp     r0, #0
        bgt     L1fd8f2
        movs    r0, r4
        bl      Fn_1fd7f4_t
        ldr     r0, [r4]
        lsls    r0, r0, #0x18
        bpl     L1fd91c
        movs    r0, #2
L1fd918:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L1fd91c:
        movs    r0, #1
        b       L1fd918
        .size   A_1fd870, . - A_1fd870

@ FUN_001fd920 (Thumb)
        .section .text.A_1fd920,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fd920
        .thumb_func
        .type   A_1fd920, %function
A_1fd920:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        movs    r4, r1
        movs    r6, r2
        bl      Fn_1fd738
        ldr     r3, [r0]
        movs    r0, #0xff
        adds    r0, #2
        ldrb    r0, [r0, r3]
        cmp     r0, #1
        beq     L1fd948
        cmp     r4, #0xff
        bhi     L1fd95e
        ldrb    r0, [r3, r4]
        cmp     r0, #0
        beq     L1fd95e
        movs    r0, #1
        strb    r4, [r5]
        pop     {r4, r5, r6, pc}
L1fd948:
        movs    r0, #0xff
        adds    r0, #8
        movs    r2, r6
        ldr     r0, [r0, r3]
        movs    r1, r4
        adds    r3, r3, r0
        adds    r3, #0xff
        adds    r3, #8
        movs    r0, r5
        blx     r3
        pop     {r4, r5, r6, pc}
L1fd95e:
        movs    r0, #0
        mvns    r0, r0
        pop     {r4, r5, r6, pc}
        .size   A_1fd920, . - A_1fd920

@ FUN_001fdaf0 (Thumb)
        .section .text.A_1fdaf0,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fdaf0
        .thumb_func
        .type   A_1fdaf0, %function
A_1fdaf0:
        subs    r0, #0x30
        cmp     r0, #0xa
        bhs     L1fdafa
        movs    r0, #1
        bx      lr
L1fdafa:
        movs    r0, #0
        bx      lr
        .size   A_1fdaf0, . - A_1fdaf0

@ FUN_001fdd70 (Thumb)
        .section .text.A_1fdd70,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fdd70
        .thumb_func
        .type   A_1fdd70, %function
A_1fdd70:
        push    {r1, r2, r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        ldr     r6, [r0, #0x14]
        ldr     r0, [r0, #0x10]
        ldr     r7, L1fddb8
        str     r0, [sp]
        ldr     r5, [r4, #0xc]
        movs    r0, #0
        str     r0, [sp, #4]
        lsls    r0, r5, #0x1e
        beq     L1fdd96
        movs    r0, r4
        bl      Fn_1ff60c_t
        movs    r0, r6
        bl      Fn_3023b8
        cmp     r0, #0
        bge     L1fdd9a
L1fdd96:
        movs    r0, r7
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L1fdd9a:
        lsls    r0, r5, #0x14
        bpl     L1fdda4
        ldr     r0, [sp]
        bl      Fn_1fd674
L1fdda4:
        movs    r1, #0x48
        movs    r0, r4
        bl      Fn_1fddd8
        ldr     r0, [r4, #0x4c]
        lsrs    r0, r0, #1
        lsls    r0, r0, #1
        str     r0, [r4, #0x4c]
        ldr     r0, [sp, #4]
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L1fddb8:
        .word   0xffffffff
        .size   A_1fdd70, . - A_1fdd70

@ FUN_001fde2c (Thumb)
        .section .text.A_1fde2c,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fde2c
        .thumb_func
        .type   A_1fde2c, %function
A_1fde2c:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r4, r1
        movs    r6, r2
        movs    r0, r2
        bl      Fn_1fdd70_t
        ldrb    r0, [r4]
        adds    r1, r4, #1
        cmp     r0, #0x61
        beq     L1fde56
        cmp     r0, #0x72
        beq     L1fde4a
        cmp     r0, #0x77
        bne     L1fdebc
        b       L1fde50
L1fde4a:
        movs    r5, #1
        movs    r4, #0
        b       L1fde5a
L1fde50:
        movs    r5, #2
        movs    r4, #4
        b       L1fde5a
L1fde56:
        ldr     r5, L1fdf0c
        movs    r4, #8
L1fde5a:
        movs    r2, #2
        movs    r3, #3
        movs    r7, #1
L1fde60:
        ldrb    r0, [r1]
        adds    r1, r1, #1
        cmp     r0, #0x2b
        beq     L1fde76
        cmp     r0, #0x62
        beq     L1fde7c
        subs    r1, #0x20
        ldrb    r0, [r1, #0x1f]
        cmp     r0, #0x74
        beq     L1fde84
        b       L1fde88
L1fde76:
        orrs    r5, r3
        orrs    r4, r2
        b       L1fde60
L1fde7c:
        movs    r0, #4
        orrs    r5, r0
        orrs    r4, r7
        b       L1fde60
L1fde84:
        movs    r0, #0x10
        orrs    r4, r0
L1fde88:
        ldr     r0, [sp]
        movs    r1, r4
        bl      Fn_3023bc
        adds    r1, r0, #1
        beq     L1fdebc
        movs    r1, #0
        str     r1, [r6, #0x10]
        str     r1, [r6, #4]
        movs    r1, #1
        str     r5, [r6, #0xc]
        lsls    r1, r1, #9
        str     r1, [r6, #0x1c]
        str     r0, [r6, #0x14]
        lsls    r0, r4, #0x1c
        bpl     L1fdeb2
        movs    r2, #2
        movs    r1, #0
        movs    r0, r6
        bl      Fn_0013c0_t
L1fdeb2:
        ldr     r0, [r6, #0x4c]
        orrs    r0, r7
        str     r0, [r6, #0x4c]
        movs    r0, r6
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L1fdebc:
        movs    r0, #0
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .short  0xb5f8
        .short  0x0005
        .short  0x4c12
        .short  0x000e
        .short  0x6ce0
        .short  0x07c1
        .short  0xd004
        .short  0x0841
        .short  0xd004
        .short  0x0844
        .short  0x0064
        .short  0xe7f7
        .short  0x0022
        .short  0xe010
        .short  0x2050
        .short  0xf7ff
        .short  0xeb26
        .short  0x0007
        .short  0xd010
        .short  0x0879
        .short  0x6ce0
        .short  0x0049
        .short  0x2201
        .short  0x4311
        .short  0x4308
        .short  0x64e0
        .short  0x2150
        .short  0x0038
        .short  0xf7ff
        .short  0xef6e
        .short  0x003a
        .short  0x0031
        .short  0x0028
        .short  0xf7ff
        .short  0xff93
        .short  0xbdf8
        .short  0x2000
        .short  0xbdf8
L1fdf0c:
        .word   0x00008002
        .size   A_1fde2c, . - A_1fde2c

@ FUN_001fdf14 (Thumb)
        .section .text.A_1fdf14,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fdf14
        .thumb_func
        .type   A_1fdf14, %function
A_1fdf14:
        push    {r4, r5, r6, lr}
        movs    r5, r0
        movs    r4, r1
        movs    r6, r2
        bl      Fn_1fd738
        ldr     r3, [r0]
        movs    r0, #0xff
        adds    r0, #2
        ldrb    r0, [r0, r3]
        cmp     r0, #1
        beq     L1fdf38
        ldrb    r0, [r3, r4]
        cmp     r0, #0
        beq     L1fdf4e
        movs    r0, #1
        strh    r4, [r5]
        pop     {r4, r5, r6, pc}
L1fdf38:
        movs    r0, #0xff
        adds    r0, #4
        movs    r2, r6
        ldr     r0, [r0, r3]
        movs    r1, r4
        adds    r3, r3, r0
        adds    r3, #0xff
        adds    r3, #4
        movs    r0, r5
        blx     r3
        pop     {r4, r5, r6, pc}
L1fdf4e:
        movs    r0, #0
        mvns    r0, r0
        pop     {r4, r5, r6, pc}
        .size   A_1fdf14, . - A_1fdf14

@ FUN_001fe260 (Thumb)
        .section .text.A_1fe260,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe260
        .thumb_func
        .type   A_1fe260, %function
A_1fe260:
        push    {r4, lr}
        cmp     r0, #0x7f
        bhi     L1fe26a
        bl      Fn_000114_t
L1fe26a:
        pop     {r4, pc}
        .size   A_1fe260, . - A_1fe260

@ FUN_001fe2dc (Thumb)
        .section .text.A_1fe2dc,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe2dc
        .thumb_func
        .type   A_1fe2dc, %function
A_1fe2dc:
        push    {r4, lr}
        mov     r8, r8
        mov     r8, r8
        pop     {r4, pc}
        .size   A_1fe2dc, . - A_1fe2dc

@ FUN_001fe348 (Thumb)
        .section .text.A_1fe348,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe348
        .thumb_func
        .type   A_1fe348, %function
A_1fe348:
        push    {r0, r1, r4, r5, r6, lr}
        movs    r4, r1
        bl      Fn_1fd390_t
        subs    r4, #0x20
        ldr     r1, [r4, #0x14]
        cmp     r1, #0
        beq     L1fe366
        ldr     r1, [r4, #0x1c]
        subs    r1, r1, #1
        str     r1, [r4, #0x1c]
        ldr     r1, [r0]
        subs    r1, r1, #1
        str     r1, [r0]
        pop     {r2, r3, r4, r5, r6, pc}
L1fe366:
        ldr     r1, [r4, #4]
        movs    r5, r4
        adds    r5, #0x78
        cmp     r1, #0
        beq     L1fe374
        movs    r0, r5
        blx     r1
L1fe374:
        movs    r0, r5
        bl      Fn_1fd470_t
        pop     {r2, r3, r4, r5, r6, pc}
        bl      Fn_1fcdbc_t
        movs    r0, r5
        bl      Fn_1fd470_t
        bl      Fn_1fce08_t
        .size   A_1fe348, . - A_1fe348

@ FUN_001fe38a (Thumb)
        .section .text.A_1fe38a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_1fe38a
        .thumb_func
        .type   A_1fe38a, %function
A_1fe38a:
        push    {r4, r5, r6, lr}
        subs    r0, #0x78
        movs    r5, r1
        str     r5, [r0]
        .short  0x4951
        str     r2, [r0, #4]
        str     r1, [r0, #0x28]
        movs    r4, r0
        movs    r1, #1
        adds    r4, #0x20
        str     r1, [r0, #0x1c]
        bl      Fn_1fd390_t
        ldr     r1, [r0]
        movs    r2, r5
        adds    r1, r1, #1
        str     r1, [r0]
        movs    r1, #0
        movs    r0, r4
        bl      Fn_1fd4cc_t
        movs    r0, r4
        bl      Fn_1fffa4_t
        movs    r0, r4
        bl      Fn_1fd4ba_t
        .size   A_1fe38a, . - A_1fe38a

@ FUN_001fe3c0 (Thumb)
        .section .text.A_1fe3c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe3c0
        .thumb_func
        .type   A_1fe3c0, %function
A_1fe3c0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x14
        movs    r4, r0
        movs    r6, r1
        bl      Fn_1fd3f8_t
        cmp     r0, #0
        bne     L1fe476
        movs    r1, r4
        movs    r0, r4
        subs    r1, #0x20
        movs    r7, #1
        movs    r4, #0
        ldr     r5, [r1]
        adds    r0, #0x58
        str     r0, [sp, #0xc]
        b       L1fe466
L1fe3e2:
        movs    r1, r6
        movs    r0, r5
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L1fe3f6
L1fe3ee:
        ldr     r1, [sp, #0x20]
        ldr     r0, [sp, #0xc]
        str     r0, [r1]
        b       L1fe4d0
L1fe3f6:
        movs    r0, r5
        bl      Fn_1fe550_t
        str     r0, [sp, #4]
        movs    r0, r6
        bl      Fn_1fe550_t
        str     r0, [sp]
        ldr     r1, L1fe4dc
        ldr     r0, [sp, #4]
        bl      Fn_1fe27c
        cmp     r0, #0
        bne     L1fe41e
        ldr     r1, L1fe4dc
        ldr     r0, [sp]
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L1fe42a
L1fe41e:
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        bl      Fn_3023c0
        cmp     r0, #0
        bne     L1fe4d4
L1fe42a:
        ldr     r1, L1fe4dc
        ldr     r0, [sp, #4]
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L1fe46a
        ldr     r0, [r6, #8]
        ldr     r1, [r5, #8]
        lsls    r0, r0, #0x1e
        adds    r4, r4, #1
        lsrs    r0, r0, #0x1e
        lsls    r1, r1, #0x1e
        lsrs    r1, r1, #0x1e
        movs    r2, r1
        bics    r2, r0
        bne     L1fe4d4
        movs    r2, r0
        bics    r2, r1
        beq     L1fe454
        cmp     r7, #0
        beq     L1fe4d4
L1fe454:
        lsls    r0, r0, #0x1f
        bne     L1fe45a
        movs    r7, #0
L1fe45a:
        ldr     r0, [sp, #8]
        ldr     r5, [r5, #0xc]
        ldr     r6, [r6, #0xc]
        cmp     r0, #0
        beq     L1fe3e2
        ldr     r0, [r0]
L1fe466:
        str     r0, [sp, #8]
        b       L1fe3e2
L1fe46a:
        cmp     r4, #1
        beq     L1fe478
        cmp     r4, #0
        beq     L1fe492
        cmp     r4, #1
        beq     L1fe48c
L1fe476:
        b       L1fe4d4
L1fe478:
        ldr     r1, L1fe4e0
        movs    r0, r6
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L1fe48c
        ldr     r0, [sp, #0x1c]
        cmp     r0, #0
        bne     L1fe4d4
        b       L1fe3ee
L1fe48c:
        ldr     r0, [sp, #0x1c]
        cmp     r0, #0
        bne     L1fe4d4
L1fe492:
        ldr     r1, L1fe4e4
        ldr     r0, [sp, #4]
        bl      Fn_1fe27c
        cmp     r0, #0
        bne     L1fe4aa
        ldr     r1, L1fe4e8
        ldr     r0, [sp, #4]
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L1fe4d4
L1fe4aa:
        movs    r0, #0
        str     r0, [sp]
        str     r0, [sp, #4]
        movs    r3, r6
        movs    r2, r5
        add     r1, sp, #0x10
        add     r0, sp, #8
        bl      Fn_1fe684_t
        cmp     r0, #0
        beq     L1fe4cc
        ldr     r0, [sp, #0x20]
        ldr     r1, [sp, #0x10]
        cmp     r4, #0
        str     r1, [r0]
        beq     L1fe4d0
        movs    r0, #2
L1fe4cc:
        add     sp, #0x24
        pop     {r4, r5, r6, r7, pc}
L1fe4d0:
        movs    r0, #1
        b       L1fe4cc
L1fe4d4:
        movs    r0, #0
        b       L1fe4cc
        .short  0xe349
        .short  0x002f
L1fe4dc:
        .word   0x00803f28
L1fe4e0:
        .word   0x008041c0
L1fe4e4:
        .word   0x00803f34
L1fe4e8:
        .word   0x00803f40
        .size   A_1fe3c0, . - A_1fe3c0

@ FUN_001fe4ec (Thumb)
        .section .text.A_1fe4ec,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe4ec
        .thumb_func
        .type   A_1fe4ec, %function
A_1fe4ec:
        eors    r0, r6
        .short  0xe92d
        .short  0x5001
        .short  0xe1a0
        .size   A_1fe4ec, . - A_1fe4ec

@ FUN_001fe550 (Thumb)
        .section .text.A_1fe550,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe550
        .thumb_func
        .type   A_1fe550, %function
A_1fe550:
        cmp     r0, #0
        push    {r4, lr}
        beq     L1fe568
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L1fe568
        subs    r0, #0x40
        ldr     r4, [r0, #0x3c]
        cmp     r4, #0
        beq     L1fe570
L1fe564:
        movs    r0, r4
        pop     {r4, pc}
L1fe568:
        bl      Fn_203f50_t
        movs    r0, #0
        pop     {r4, pc}
L1fe570:
        bl      Fn_203f50_t
        b       L1fe564
        .size   A_1fe550, . - A_1fe550

@ FUN_001fe684 (Thumb)
        .section .text.A_1fe684,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe684
        .thumb_func
        .type   A_1fe684, %function
A_1fe684:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x2c
        movs    r4, #0
        movs    r6, #1
        movs    r7, r2
        movs    r5, r4
        cmp     r0, #0
        str     r6, [sp, #0x20]
        str     r4, [sp, #0x28]
        beq     L1fe69a
        ldr     r0, [r0]
L1fe69a:
        str     r0, [sp, #0x24]
        ldr     r0, [sp, #0x30]
        str     r5, [r0]
        movs    r0, r2
        bl      Fn_1fe550_t
        ldr     r1, L1fe6f0
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L1fe6b4
        ldr     r0, [r7, #8]
        b       L1fe6b6
L1fe6b4:
        movs    r0, #3
L1fe6b6:
        mov     r1, sp
        str     r5, [sp, #0x18]
        strb    r5, [r1, #0x1c]
        add     r1, sp, #0x20
        str     r1, [sp, #0x14]
        add     r2, sp, #0x1c
        str     r2, [sp, #0x10]
        add     r3, sp, #0x18
        add     r1, sp, #0x28
        str     r6, [sp, #8]
        str     r3, [sp, #0xc]
        str     r1, [sp, #4]
        str     r0, [sp]
        ldr     r3, [sp, #0x38]
        ldr     r1, [sp, #0x30]
        ldr     r0, [sp, #0x24]
        movs    r2, r7
        bl      Fn_202248_t
        cmp     r0, #0
        beq     L1fe6e8
        ldr     r0, [sp, #0x20]
        cmp     r0, #0
        beq     L1fe6e8
        movs    r4, #1
L1fe6e8:
        movs    r0, r4
        add     sp, #0x3c
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
L1fe6f0:
        .word   0x00803f40
        .size   A_1fe684, . - A_1fe684

@ FUN_001fe778 (Thumb)
        .section .text.A_1fe778,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe778
        .thumb_func
        .type   A_1fe778, %function
A_1fe778:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r6, r2
        sub     sp, #0x28
        ldr     r0, L1fe848
        add     r0, pc
        mov     r4, sp
        movs    r3, r0
        adds    r3, #0x7c
        ldr     r0, [r0, #0x7c]
        ldr     r2, [r3, #4]
        ldr     r3, [r3, #8]
        stm     r4!, {r0, r2, r3}
        ldr     r3, L1fe848
        add     r3, pc
        adds    r3, #0x6e
        adds    r3, #8
        add     r4, sp, #0xc
        ldm     r3, {r0, r2, r3}
        stm     r4!, {r0, r2, r3}
        movs    r0, #0x37
        lsls    r0, r0, #7
        adds    r0, r1, r0
        movs    r1, #0x37
        adds    r0, #0x1b
        bl      Fn_1ff06c
        movs    r5, r0
        subs    r5, #0x80
        movs    r4, r1
        subs    r4, #0x1b
        bpl     L1fe7bc
        rsbs    r4, r4, #0
        movs    r0, #1
        b       L1fe7be
L1fe7bc:
        movs    r0, #0
L1fe7be:
        movs    r7, #0
        str     r0, [sp, #0x24]
        b       L1fe7e4
L1fe7c4:
        lsls    r0, r4, #0x1f
        beq     L1fe7e0
        movs    r0, #0xc
        ldr     r1, L1fe848
        muls    r0, r7, r0
        add     r1, pc
        subs    r1, #0x4e
        adds    r1, r0, r1
        mov     r0, sp
        movs    r2, r6
        bl      Fn_1fe87c
        mov     r3, sp
        stm     r3!, {r0, r1, r2}
L1fe7e0:
        asrs    r4, r4, #1
        adds    r7, r7, #1
L1fe7e4:
        cmp     r4, #0
        bne     L1fe7c4
        ldr     r7, L1fe848
        add     r7, pc
        subs    r7, #0x2e
        b       L1fe81e
L1fe7f0:
        lsls    r0, r5, #0x1f
        beq     L1fe81a
        lsls    r0, r4, #4
        adds    r0, r0, r7
        movs    r1, r0
        ldm     r1, {r1, r2, r3}
        str     r1, [sp, #0x18]
        str     r3, [sp, #0x20]
        str     r2, [sp, #0x1c]
        ldr     r0, [r0, #0xc]
        cmn     r0, r6
        bne     L1fe80c
        adds    r0, r3, r6
        str     r0, [sp, #0x20]
L1fe80c:
        movs    r2, r6
        add     r1, sp, #0x18
        add     r0, sp, #0xc
        bl      Fn_1fe87c
        add     r3, sp, #0xc
        stm     r3!, {r0, r1, r2}
L1fe81a:
        asrs    r5, r5, #1
        adds    r4, r4, #1
L1fe81e:
        cmp     r5, #0
        bne     L1fe7f0
        ldr     r0, [sp, #0x24]
        cmp     r0, #0
        beq     L1fe834
        mov     r1, sp
        movs    r2, r6
        add     r0, sp, #0xc
        bl      Fn_1fe84c
        b       L1fe83e
L1fe834:
        movs    r2, r6
        mov     r1, sp
        add     r0, sp, #0xc
        bl      Fn_1fe87c
L1fe83e:
        ldr     r3, [sp, #0x28]
        stm     r3!, {r0, r1, r2}
        add     sp, #0x34
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
L1fe848:
        .word   0x005056d4
        .size   A_1fe778, . - A_1fe778

@ FUN_001fe944 (Thumb)
        .section .text.A_1fe944,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fe944
        .thumb_func
        .type   A_1fe944, %function
A_1fe944:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        ldr     r0, [r0]
        movs    r7, r3
        movs    r3, #1
        movs    r1, r0
        lsls    r3, r3, #0xb
        movs    r6, #3
        ands    r0, r3
        cmp     r2, #7
        blt     L1fe966
        cmp     r0, #0
        beq     L1fe962
        adr     r5, #0x5c
        b       L1fe970
L1fe962:
        adr     r5, #0x5c
        b       L1fe970
L1fe966:
        cmp     r0, #0
        beq     L1fe96e
        adr     r5, #0x58
        b       L1fe970
L1fe96e:
        adr     r5, #0x58
L1fe970:
        movs    r0, #0x10
        bics    r1, r0
        str     r1, [r4]
        ldr     r0, [r4, #0x18]
        subs    r0, r0, #3
        cmp     r7, #0
        str     r0, [r4, #0x18]
        beq     L1fe984
        subs    r0, r0, #1
        str     r0, [r4, #0x18]
L1fe984:
        movs    r0, r4
        bl      Fn_1fd7c8_t
        cmp     r7, #0
        beq     L1fe9a2
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        movs    r0, r7
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
        str     r0, [r4, #0x20]
L1fe99c:
        adds    r0, r0, #3
        str     r0, [r4, #0x20]
        b       L1fe9b0
L1fe9a2:
        ldr     r0, [r4, #0x20]
        b       L1fe99c
L1fe9a6:
        ldr     r2, [r4, #4]
        ldrb    r0, [r5]
        ldr     r1, [r4, #8]
        adds    r5, r5, #1
        blx     r2
L1fe9b0:
        subs    r6, r6, #1
        bhs     L1fe9a6
        movs    r0, r4
        bl      Fn_1fd7f4_t
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_1fe944, . - A_1fe944

@ FUN_001ff298 (Thumb)
        .section .text.A_1ff298,"ax",%progbits
        .balign 4
        .thumb
        .global A_1ff298
        .thumb_func
        .type   A_1ff298, %function
A_1ff298:
        push    {r0, r1, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r0, #0
        sub     sp, #4
        b       L1ff414
L1ff2a2:
        ldr     r1, [r4, #0xc]
        movs    r0, r4
        blx     r1
        cmp     r0, #0
        beq     L1ff392
        cmp     r0, #0x25
        beq     L1ff2b6
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        b       L1ff40e
L1ff2b6:
        ldr     r7, L1ff41c
        movs    r6, #0
        add     r7, pc
L1ff2bc:
        ldr     r1, [r4, #0xc]
        movs    r0, r4
        blx     r1
        movs    r5, r0
        cmp     r0, #0x20
        blt     L1ff2da
        cmp     r5, #0x31
        bhs     L1ff2da
        adds    r0, r7, r5
        subs    r0, #0x20
        ldrb    r0, [r0]
        cmp     r0, #0
        beq     L1ff2da
        orrs    r6, r0
        b       L1ff2bc
L1ff2da:
        lsls    r0, r6, #0x1e
        bpl     L1ff2e2
        movs    r0, #4
        bics    r6, r0
L1ff2e2:
        movs    r0, #0
        str     r0, [r4, #0x1c]
        movs    r7, r0
        str     r0, [r4, #0x18]
L1ff2ea:
        cmp     r5, #0x2a
        beq     L1ff304
        movs    r0, r5
        bl      Fn_1fdaf0_t
        cmp     r0, #0
        beq     L1ff348
        subs    r5, #0x30
        lsls    r0, r7, #2
        adds    r0, r0, r4
        str     r0, [sp]
        str     r5, [r0, #0x18]
        b       L1ff338
L1ff304:
        ldr     r0, [sp, #8]
        lsls    r2, r7, #2
        adds    r2, r2, r4
        ldm     r0!, {r1}
        str     r1, [r2, #0x18]
        str     r0, [sp, #8]
        ldr     r1, [r4, #0xc]
        movs    r0, r4
        blx     r1
        movs    r5, r0
        cmp     r7, #1
        bne     L1ff34c
        ldr     r0, [r4, #0x1c]
        cmp     r0, #0
        bge     L1ff362
        movs    r0, #0x20
        bics    r6, r0
        b       L1ff362
L1ff328:
        ldr     r0, [sp]
        movs    r1, #0xa
        ldr     r0, [r0, #0x18]
        muls    r0, r1, r0
        ldr     r1, [sp]
        adds    r0, r0, r5
        subs    r0, #0x30
        str     r0, [r1, #0x18]
L1ff338:
        ldr     r1, [r4, #0xc]
        movs    r0, r4
        blx     r1
        movs    r5, r0
        bl      Fn_1fdaf0_t
        cmp     r0, #0
        bne     L1ff328
L1ff348:
        cmp     r7, #1
        beq     L1ff362
L1ff34c:
        cmp     r5, #0x2e
        bne     L1ff362
        ldr     r1, [r4, #0xc]
        movs    r0, r4
        blx     r1
        movs    r5, r0
        movs    r0, #0x20
        orrs    r6, r0
        adds    r7, r7, #1
        cmp     r7, #2
        blt     L1ff2ea
L1ff362:
        ldr     r0, [r4, #0x18]
        cmp     r0, #0
        bge     L1ff370
        rsbs    r0, r0, #0
        str     r0, [r4, #0x18]
        movs    r0, #1
        orrs    r6, r0
L1ff370:
        lsls    r0, r6, #0x1f
        beq     L1ff378
        movs    r0, #0x10
        bics    r6, r0
L1ff378:
        cmp     r5, #0x6c
        beq     L1ff394
        cmp     r5, #0x68
        beq     L1ff394
        cmp     r5, #0x4c
        beq     L1ff3fe
        cmp     r5, #0x6a
        beq     L1ff3fa
        cmp     r5, #0x74
        beq     L1ff3fe
        cmp     r5, #0x7a
        beq     L1ff3fe
        b       L1ff3c0
L1ff392:
        b       L1ff418
L1ff394:
        ldr     r1, [r4, #0xc]
        movs    r7, r5
        movs    r0, r4
        blx     r1
        movs    r5, r0
        cmp     r0, r7
        bne     L1ff3b6
        cmp     r7, #0x6c
        beq     L1ff3fa
        movs    r0, #1
        lsls    r0, r0, #0xa
L1ff3aa:
        ldr     r1, [r4, #0xc]
        orrs    r6, r0
        movs    r0, r4
        blx     r1
        movs    r5, r0
        b       L1ff3c0
L1ff3b6:
        cmp     r7, #0x6c
        beq     L1ff3f6
        movs    r0, #0xff
        adds    r0, #1
L1ff3be:
        orrs    r6, r0
L1ff3c0:
        cmp     r5, #0
        beq     L1ff418
        movs    r0, r5
        subs    r0, #0x41
        cmp     r0, #0x19
        bhi     L1ff3d4
        movs    r0, #1
        lsls    r0, r0, #0xb
        orrs    r6, r0
        adds    r5, #0x20
L1ff3d4:
        str     r6, [r4]
        ldr     r2, [sp, #8]
        movs    r1, r5
        movs    r0, r4
        movs    r6, r2
        bl      Fn_004af8
        cmp     r0, #0
        beq     L1ff408
        cmp     r0, #1
        beq     L1ff402
        adds    r6, r6, #7
        lsrs    r0, r6, #3
        lsls    r0, r0, #3
        adds    r0, #8
        str     r0, [sp, #8]
        b       L1ff2a2
L1ff3f6:
        movs    r0, #0x40
        b       L1ff3be
L1ff3fa:
        movs    r0, #0x80
        b       L1ff3aa
L1ff3fe:
        movs    r0, #0
        b       L1ff3aa
L1ff402:
        adds    r6, r6, #4
        str     r6, [sp, #8]
        b       L1ff2a2
L1ff408:
        ldr     r2, [r4, #4]
        ldr     r1, [r4, #8]
        movs    r0, r5
L1ff40e:
        blx     r2
        ldr     r0, [r4, #0x20]
        adds    r0, r0, #1
L1ff414:
        str     r0, [r4, #0x20]
        b       L1ff2a2
L1ff418:
        ldr     r0, [r4, #0x20]
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
L1ff41c:
        .word   0x005045c6
        .size   A_1ff298, . - A_1ff298

@ FUN_001ff540 (Thumb)
        .section .text.A_1ff540,"ax",%progbits
        .balign 4
        .thumb
        .global A_1ff540
        .thumb_func
        .type   A_1ff540, %function
A_1ff540:
        cmp     r0, #0x3a
        bhs     L1ff546
        subs    r0, #0x30
L1ff546:
        movs    r3, #0x20
        movs    r2, r0
        bics    r2, r3
        cmp     r2, #0x41
        blo     L1ff554
        movs    r0, r2
        subs    r0, #0x37
L1ff554:
        cmp     r0, r1
        blo     L1ff55c
        movs    r0, #0
        mvns    r0, r0
L1ff55c:
        bx      lr
        .size   A_1ff540, . - A_1ff540

@ FUN_001ff5ac (Thumb)
        .section .text.A_1ff5ac,"ax",%progbits
        .balign 4
        .thumb
        .global A_1ff5ac
        .thumb_func
        .type   A_1ff5ac, %function
A_1ff5ac:
        ldr     r1, [r0, #0xc]
        movs    r2, #0x80
        orrs    r1, r2
        lsls    r2, r2, #0xe
        bics    r1, r2
        str     r1, [r0, #0xc]
        movs    r1, #0
        str     r1, [r0, #8]
        str     r1, [r0]
        bx      lr
        .size   A_1ff5ac, . - A_1ff5ac

@ FUN_001ff5c0 (Thumb)
        .section .text.A_1ff5c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_1ff5c0
        .thumb_func
        .type   A_1ff5c0, %function
A_1ff5c0:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r6, r1
        movs    r4, r2
        .short  0x4833
        ldr     r5, [r2, #0xc]
        ldr     r7, [r2, #0x14]
        tst     r5, r0
        beq     L1ff5e4
        ldr     r1, [r4, #0x18]
        movs    r0, r7
        bl      Fn_3023c4
        cmp     r0, #0
        blt     L1ff600
        .short  0x482d
        mvns    r0, r0
        ands    r5, r0
        str     r5, [r4, #0xc]
L1ff5e4:
        ldr     r1, [sp]
        movs    r3, r5
        movs    r2, r6
        movs    r0, r7
        bl      Fn_3023c8
        lsls    r2, r0, #1
        ldr     r1, [r4, #0x18]
        lsrs    r2, r2, #1
        subs    r2, r6, r2
        adds    r1, r1, r2
        cmp     r0, #0
        str     r1, [r4, #0x18]
        beq     L1ff60a
L1ff600:
        movs    r0, r4
        bl      Fn_1ff5ac_t
        movs    r0, #0
        mvns    r0, r0
L1ff60a:
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .size   A_1ff5c0, . - A_1ff5c0

@ FUN_001ff60c (Thumb)
        .section .text.A_1ff60c,"ax",%progbits
        .balign 4
        .thumb
        .global A_1ff60c
        .thumb_func
        .type   A_1ff60c, %function
A_1ff60c:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        ldr     r5, [r0, #0x10]
        ldr     r0, [r0, #0x2c]
        ldr     r1, [r4, #4]
        cmp     r0, r1
        bhi     L1ff61c
        movs    r0, r1
L1ff61c:
        ldr     r1, [r4, #0xc]
        movs    r2, #5
        lsls    r2, r2, #0x13
        bics    r1, r2
        str     r1, [r4, #0xc]
        lsls    r1, r1, #0xf
        bpl     L1ff654
        cmp     r0, r5
        beq     L1ff642
        subs    r1, r0, r5
        movs    r2, r4
        movs    r0, r5
        bl      Fn_1ff5c0_t
        cmp     r0, #0
        beq     L1ff642
        movs    r0, #0
        mvns    r0, r0
        pop     {r4, r5, r6, pc}
L1ff642:
        str     r5, [r4, #0x2c]
        movs    r0, #0
        str     r5, [r4, #4]
        str     r0, [r4, #8]
        ldr     r0, [r4, #0xc]
        movs    r1, #1
        lsls    r1, r1, #0x10
        bics    r0, r1
        str     r0, [r4, #0xc]
L1ff654:
        movs    r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_1ff60c, . - A_1ff60c

@ FUN_001ff658 (Thumb)
        .section .text.A_1ff658,"ax",%progbits
        .balign 4
        .thumb
        .global A_1ff658
        .thumb_func
        .type   A_1ff658, %function
A_1ff658:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0, #0xc]
        movs    r1, #0x20
        bics    r0, r1
        str     r0, [r4, #0xc]
        ldr     r1, [r4, #0x28]
        ldr     r0, [r4, #0x18]
        cmp     r0, r1
        beq     L1ff68a
        movs    r0, r4
        bl      Fn_1ff60c_t
        ldr     r0, [r4, #0xc]
        movs    r1, #3
        lsls    r1, r1, #0xc
        bics    r0, r1
        movs    r1, #0x10
        orrs    r0, r1
        str     r0, [r4, #0xc]
        ldr     r0, [r4, #0x28]
        str     r0, [r4, #0x18]
        ldr     r0, [r4, #0x10]
        str     r0, [r4, #0x2c]
        str     r0, [r4, #4]
L1ff68a:
        ldr     r1, L1ff698
        ldr     r0, [r4, #0xc]
        ands    r0, r1
        str     r0, [r4, #0xc]
        pop     {r4, pc}
        .short  0x0010
        .short  0x0002
L1ff698:
        .word   0xffffbfbf
        .size   A_1ff658, . - A_1ff658

@ FUN_001fff5c (Thumb)
        .section .text.A_1fff5c,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fff5c
        .thumb_func
        .type   A_1fff5c, %function
A_1fff5c:
        bx      pc
        .size   A_1fff5c, . - A_1fff5c

@ FUN_001fff74 (Thumb)
        .section .text.A_1fff74,"ax",%progbits
        .balign 4
        .thumb
        .global A_1fff74
        .thumb_func
        .type   A_1fff74, %function
A_1fff74:
        bx      pc
        .size   A_1fff74, . - A_1fff74

@ FUN_0020002e (Thumb)
        .section .text.A_20002e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_20002e
        .thumb_func
        .type   A_20002e, %function
A_20002e:
        .short  0xe594
        .size   A_20002e, . - A_20002e

@ FUN_002000c0 (Thumb)
        .section .text.A_2000c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2000c0
        .thumb_func
        .type   A_2000c0, %function
A_2000c0:
        push    {r4, lr}
        cmp     r1, #0
        ldr     r4, [sp, #8]
        beq     L2000d6
        cmp     r1, #1
        beq     L2000ea
        cmp     r1, #3
        beq     L2000ea
        cmp     r1, #4
        bne     L2000ee
        b       L2000ea
L2000d6:
        cmp     r3, #0
        bne     L2000ee
        cmp     r2, #0xf
        bhi     L2000ee
        ldr     r1, [r4]
        lsls    r2, r2, #2
        adds    r0, r2, r0
        str     r1, [r0, #4]
        movs    r0, #0
        pop     {r4, pc}
L2000ea:
        movs    r0, #1
        pop     {r4, pc}
L2000ee:
        movs    r0, #2
        pop     {r4, pc}
        .size   A_2000c0, . - A_2000c0

@ FUN_002000f2 (Thumb)
        .section .text.A_2000f2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_2000f2
        .thumb_func
        .type   A_2000f2, %function
A_2000f2:
        push    {r4, lr}
        cmp     r1, #0
        ldr     r4, [sp, #8]
        beq     L200108
        cmp     r1, #1
        beq     L20011c
        cmp     r1, #3
        beq     L20011c
        cmp     r1, #4
        bne     L200120
        b       L20011c
L200108:
        cmp     r3, #0
        bne     L200120
        cmp     r2, #0xf
        bhi     L200120
        lsls    r1, r2, #2
        adds    r0, r1, r0
        ldr     r0, [r0, #4]
        str     r0, [r4]
        movs    r0, #0
        pop     {r4, pc}
L20011c:
        movs    r0, #1
        pop     {r4, pc}
L200120:
        movs    r0, #2
        pop     {r4, pc}
        .size   A_2000f2, . - A_2000f2

@ FUN_00200124 (Thumb)
        .section .text.A_200124,"ax",%progbits
        .balign 4
        .thumb
        .global A_200124
        .thumb_func
        .type   A_200124, %function
A_200124:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        lsls    r5, r2, #0x10
        movs    r4, r0
        lsrs    r5, r5, #0x10
        cmp     r1, #0
        sub     sp, #0x10c
        beq     L200140
        cmp     r1, #1
        beq     L20016c
        cmp     r1, #3
        beq     L200226
        cmp     r1, #4
        bne     L20022a
        b       L200226
L200140:
        ldr     r0, [sp, #0x118]
        cmp     r0, #0
        bne     L20022a
        movs    r2, #1
        adds    r1, r4, #4
        lsls    r2, r2, #0xd
        movs    r3, r5
        ldr     r0, [r4, #0x38]
        ands    r3, r2
        b       L200160
L200154:
        lsls    r2, r5, #0x1f
        beq     L20015c
        ldm     r0!, {r2}
        str     r2, [r1]
L20015c:
        adds    r1, r1, #4
        lsrs    r5, r5, #1
L200160:
        cmp     r5, #0
        bne     L200154
        cmp     r3, #0
        bne     L20021e
        str     r0, [r4, #0x38]
        b       L20021e
L20016c:
        lsrs    r6, r2, #0x10
        cmp     r6, #0x10
        bhs     L200176
        movs    r0, #1
        b       L200178
L200176:
        movs    r0, #0
L200178:
        str     r0, [sp]
        adds    r0, r6, r5
        cmp     r0, #0x10
        bls     L200184
        movs    r7, #1
        b       L200186
L200184:
        movs    r7, #0
L200186:
        ldr     r1, [sp, #0x118]
        cmp     r1, #1
        beq     L200192
        cmp     r1, #5
        bne     L20022a
        b       L200198
L200192:
        cmp     r7, #0
        bne     L20022a
        b       L20019c
L200198:
        cmp     r0, #0x20
        bhi     L20022a
L20019c:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L2001b4
        ldrb    r0, [r4]
        cmp     r0, #1
        bne     L2001b4
        movs    r0, #0
        strb    r0, [r4]
        movs    r0, r4
        adds    r0, #0x48
        bl      Fn_1fff50_t
L2001b4:
        cmp     r7, #0
        beq     L2001ca
        ldrb    r0, [r4, #1]
        cmp     r0, #1
        bne     L2001ca
        movs    r0, #0
        strb    r0, [r4, #1]
        movs    r0, r4
        adds    r0, #0xc8
        bl      Fn_1fff5c_t
L2001ca:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L2001d6
        add     r0, sp, #8
        bl      Fn_1fff50_t
L2001d6:
        add     r0, sp, #0x88
        cmp     r7, #0
        str     r0, [sp, #4]
        beq     L2001e2
        bl      Fn_1fff5c_t
L2001e2:
        ldr     r0, [r4, #0x38]
        b       L2001f6
L2001e6:
        lsls    r2, r6, #3
        add     r1, sp, #8
        adds    r2, r2, r1
        movs    r1, r0
        adds    r6, r6, #1
        ldm     r1, {r1, r3}
        adds    r0, #8
        stm     r2!, {r1, r3}
L2001f6:
        subs    r5, r5, #1
        bhs     L2001e6
        ldr     r1, [sp, #0x118]
        cmp     r1, #1
        beq     L200202
        movs    r1, #0
L200202:
        lsls    r1, r1, #2
        adds    r0, r1, r0
        str     r0, [r4, #0x38]
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L200214
        add     r0, sp, #8
        bl      Fn_1fff68_t
L200214:
        cmp     r7, #0
        beq     L20021e
        ldr     r0, [sp, #4]
        bl      Fn_1fff74_t
L20021e:
        movs    r0, #0
L200220:
        add     sp, #0x11c
        pop     {r4, r5, r6, r7, pc}
        b       L20022a
L200226:
        movs    r0, #1
        b       L200220
L20022a:
        movs    r0, #2
        b       L200220
        .size   A_200124, . - A_200124

@ FUN_0020022e (Thumb)
        .section .text.A_20022e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_20022e
        .thumb_func
        .type   A_20022e, %function
A_20022e:
        push    {r4, lr}
        ldr     r4, [r0]
        .short  0x4897
        movs    r2, r1
        adds    r2, #8
        add     r0, pc
        ldr     r3, [r0, #4]
        adds    r3, r3, r0
        movs    r0, #0
        mvns    r0, r0
        cmp     r3, r2
        beq     L200250
        ldr     r3, [r2]
        lsls    r3, r3, #1
        asrs    r3, r3, #1
        adds    r3, r3, r2
        b       L200252
L200250:
        movs    r3, r0
L200252:
        ldr     r2, [r1]
        lsls    r2, r2, #1
        asrs    r2, r2, #1
        adds    r1, r2, r1
        cmp     r1, r4
        bhi     L200264
        cmp     r4, r3
        blo     L200266
        movs    r0, #1
L200264:
        pop     {r4, pc}
L200266:
        movs    r0, #0
        pop     {r4, pc}
        .size   A_20022e, . - A_20022e

@ FUN_0020026a (Thumb)
        .section .text.A_20026a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_20026a
        .thumb_func
        .type   A_20026a, %function
A_20026a:
        push    {r0, r1, r4, lr}
        movs    r4, r0
        .short  0x4888
        sub     sp, #8
        add     r0, pc
        subs    r0, #0x3a
        ldr     r1, [r0]
        ldr     r2, [r0, #4]
        adds    r1, r1, r0
        adds    r0, r2, r0
        subs    r0, r0, r1
        asrs    r2, r0, #3
        ldr     r0, [sp, #0xc]
        subs    r0, r0, #2
        str     r0, [sp, #0xc]
        .short  0x4882
        add     r0, pc
        str     r0, [sp]
        movs    r3, #8
        add     r0, sp, #0xc
        bl      Fn_000a82_t
        .short  0x4980
        movs    r3, #0
        cmp     r0, #0
        beq     L2002bc
        ldr     r2, [r0]
        lsls    r2, r2, #1
        asrs    r2, r2, #1
        adds    r2, r2, r0
        str     r2, [r4, #0x48]
        ldr     r2, [r0, #4]
        cmp     r2, #1
        beq     L2002c2
        cmp     r2, #0
        bge     L2002c8
        adds    r0, r0, #4
        str     r0, [r4, #0x4c]
        movs    r0, #1
        str     r0, [r4, #0x50]
        b       L2002d4
L2002bc:
        movs    r2, #4
        str     r3, [r4, #0x14]
        b       L2002ee
L2002c2:
        movs    r2, #2
        str     r3, [r4, #0x14]
        b       L2002ee
L2002c8:
        lsls    r2, r2, #1
        adds    r0, r0, #4
        asrs    r2, r2, #1
        adds    r0, r2, r0
        str     r3, [r4, #0x50]
        str     r0, [r4, #0x4c]
L2002d4:
        ldr     r2, [r4, #0x4c]
        ldr     r0, [r2]
        cmp     r0, #0
        bge     L200310
        lsls    r0, r0, #4
        lsrs    r0, r0, #0x1c
        beq     L2002fa
        cmp     r0, #1
        beq     L200300
        cmp     r0, #2
        beq     L20030a
        movs    r2, #1
        str     r3, [r4, #0x14]
L2002ee:
        movs    r0, r4
        bl      Fn_1fd4cc_t
        movs    r0, #9
L2002f6:
        add     sp, #0x10
        pop     {r4, pc}
L2002fa:
        .short  0x4868
        add     r0, pc
        b       L200304
L200300:
        .short  0x4867
        add     r0, pc
L200304:
        str     r0, [r4, #0x14]
        movs    r0, #0
        b       L2002f6
L20030a:
        .short  0x4866
        add     r0, pc
        b       L200304
L200310:
        lsls    r0, r0, #1
        asrs    r0, r0, #1
        adds    r0, r0, r2
        b       L200304
        .size   A_20026a, . - A_20026a

@ FUN_00200318 (Thumb)
        .section .text.A_200318,"ax",%progbits
        .balign 4
        .thumb
        .global A_200318
        .thumb_func
        .type   A_200318, %function
A_200318:
        movs    r5, r0
        movs    r4, r1
L20031c:
        movs    r0, r5
        ldr     r1, [r4, #0x40]
        bl      Fn_20026a_t
        cmp     r0, #0
        bne     L20033e
        ldr     r0, [r4, #0x40]
        movs    r2, r4
        movs    r1, r5
        str     r0, [r5, #0x10]
        ldr     r3, [r5, #0x14]
        movs    r0, #1
        blx     r3
        cmp     r0, #7
        beq     L200342
        cmp     r0, #8
        beq     L20031c
L20033e:
        bl      Fn_1fd5dc
L200342:
        adds    r0, r4, #4
        bl      Fn_1fff80_t
        .size   A_200318, . - A_200318

@ FUN_00200348 (Thumb)
        .section .text.A_200348,"ax",%progbits
        .balign 4
        .thumb
        .global A_200348
        .thumb_func
        .type   A_200348, %function
A_200348:
        push    {r4, r5, r6, r7, lr}
        movs    r4, r0
        ldr     r0, [r0, #0xc]
        movs    r6, r1
        movs    r7, #1
        cmp     r0, #0
        sub     sp, #0x14c
        beq     L2003b2
        movs    r0, #0x58
        bl      Fn_1fd52c
        movs    r5, r0
        beq     L2003b6
        movs    r1, r4
        movs    r0, r5
        movs    r2, #0x14
        adds    r1, #0xc
        adds    r0, #0xc
        bl      Fn_20004c
        movs    r1, r4
        movs    r0, r5
        movs    r2, #0x18
        adds    r1, #0x20
        adds    r0, #0x20
        bl      Fn_20004c
        movs    r0, r4
        adds    r0, #0x38
        adds    r5, #0x38
        ldm     r0, {r0, r1, r2, r3}
        stm     r5!, {r0, r1, r2, r3}
        subs    r5, #0x48
        str     r5, [r4, #0xc]
L20038c:
        ldr     r0, [r6, #0x3c]
        movs    r2, #0x40
        adds    r1, r6, #4
        str     r0, [r6, #0x40]
        add     r0, sp, #4
        bl      Fn_20004c
        mov     r0, sp
        add     r5, sp, #0x48
        strb    r7, [r0]
        strb    r7, [r0, #1]
        add     r7, sp, #0xc8
L2003a4:
        ldr     r1, [sp, #0x40]
        movs    r0, r4
        bl      Fn_20026a_t
        cmp     r0, #0
        bne     L2003e8
        b       L2003d6
L2003b2:
        str     r7, [r4, #0xc]
        b       L20038c
L2003b6:
        .short  0x4938
        movs    r2, #5
        movs    r0, r4
        bl      Fn_1fd4cc_t
        b       L2003d0
L2003c2:
        mov     r0, sp
        ldrb    r0, [r0, #1]
        cmp     r0, #0
        bne     L2003d0
        movs    r0, r7
        bl      Fn_1fff74_t
L2003d0:
        movs    r0, #9
        add     sp, #0x14c
        .short  0xe725
L2003d6:
        ldr     r3, [r4, #0x14]
        mov     r2, sp
        movs    r1, r4
        movs    r0, #0
        blx     r3
        cmp     r0, #6
        beq     L2003f8
        cmp     r0, #8
        beq     L2003a4
L2003e8:
        mov     r0, sp
        ldrb    r0, [r0]
        cmp     r0, #0
        bne     L2003c2
        movs    r0, r5
        bl      Fn_1fff68_t
        b       L2003c2
L2003f8:
        mov     r0, sp
        ldrb    r0, [r0]
        cmp     r0, #0
        beq     L200402
        b       L200408
L200402:
        movs    r0, r5
        bl      Fn_1fff68_t
L200408:
        mov     r0, sp
        ldrb    r0, [r0, #1]
        cmp     r0, #0
        bne     L200416
        movs    r0, r7
        bl      Fn_1fff74_t
L200416:
        movs    r1, r6
        movs    r0, r4
        bl      Fn_200318_t
        movs    r5, r0
        ldr     r0, [r0, #0x10]
        movs    r4, r1
        movs    r2, r1
        str     r0, [r1, #0x40]
        ldr     r3, [r5, #0x14]
        movs    r1, r5
        movs    r0, #2
        blx     r3
        cmp     r0, #7
        beq     L20043c
        cmp     r0, #8
        beq     L200442
        bl      Fn_1fd5dc
L20043c:
        adds    r0, r4, #4
        bl      Fn_1fff80_t
L200442:
        movs    r1, r4
        movs    r0, r5
        bl      Fn_200318_t
        .size   A_200348, . - A_200348

@ FUN_0020044a (Thumb)
        .section .text.A_20044a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_20044a
        .thumb_func
        .type   A_20044a, %function
A_20044a:
        push    {r4, r5, r6, lr}
        ldr     r1, [r0, #0xc]
        movs    r5, r0
        cmp     r1, #0
        beq     L200486
        cmp     r1, #1
        beq     L20048a
        movs    r4, r1
        movs    r0, r5
        movs    r2, #0x14
        adds    r1, #0xc
        adds    r0, #0xc
        bl      Fn_20004c
        movs    r1, r4
        movs    r0, r5
        movs    r2, #0x18
        adds    r1, #0x20
        adds    r0, #0x20
        bl      Fn_20004c
        movs    r0, r4
        adds    r0, #0x38
        adds    r5, #0x38
        ldm     r0, {r0, r1, r2, r3}
        stm     r5!, {r0, r1, r2, r3}
        movs    r0, r4
        bl      Fn_1fd674
        pop     {r4, r5, r6, pc}
L200486:
        bl      Fn_1fd5dc
L20048a:
        movs    r0, #0
        str     r0, [r5, #0xc]
        pop     {r4, r5, r6, pc}
        .size   A_20044a, . - A_20044a

@ FUN_002004a8 (Thumb)
        .section .text.A_2004a8,"ax",%progbits
        .balign 4
        .thumb
        .global A_2004a8
        .thumb_func
        .type   A_2004a8, %function
A_2004a8:
        ldrb    r1, [r0, #8]
        cmp     r1, #0
        bne     L2004c6
        ldrb    r1, [r0, #9]
        cmp     r1, #0
        beq     L2004da
        subs    r1, r1, #1
        strb    r1, [r0, #9]
        ldr     r1, [r0, #4]
        adds    r2, r1, #4
        str     r2, [r0, #4]
        ldr     r1, [r1]
        str     r1, [r0]
        movs    r1, #4
        strb    r1, [r0, #8]
L2004c6:
        lsls    r1, r1, #0x18
        lsrs    r1, r1, #0x18
        subs    r1, r1, #1
        strb    r1, [r0, #8]
        ldr     r1, [r0]
        lsrs    r2, r1, #0x18
        lsls    r1, r1, #8
        str     r1, [r0]
        movs    r0, r2
        bx      lr
L2004da:
        movs    r0, #0xb0
        bx      lr
        .size   A_2004a8, . - A_2004a8

@ FUN_002004de (Thumb)
        .section .text.A_2004de,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_2004de
        .thumb_func
        .type   A_2004de, %function
A_2004de:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x34
        movs    r0, #0
        movs    r5, r1
        str     r0, [sp, #0x20]
        str     r0, [sp, #0x28]
        str     r0, [sp, #0x1c]
        str     r0, [sp, #0x24]
        ldr     r0, [sp, #0x34]
        movs    r6, r2
        cmp     r0, #0
        beq     L20050e
        cmp     r0, #1
        beq     L20050e
        cmp     r0, #2
        beq     L200502
L2004fe:
        movs    r2, #0
        b       L20091c
L200502:
        ldr     r0, [r5, #0x38]
        str     r0, [r5, #0x48]
        ldr     r0, [r5, #0x3c]
        str     r0, [sp, #0x14]
        ldr     r4, [r5, #0x40]
        b       L20052e
L20050e:
        ldr     r0, [r5, #0x50]
        lsls    r0, r0, #0x1f
        ldr     r0, [r5, #0x4c]
        str     r0, [sp, #0x14]
        bne     L20060c
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        beq     L200526
        ldr     r0, [sp, #0x14]
        ldr     r0, [r0]
        lsls    r0, r0, #8
        lsrs    r0, r0, #0x18
L200526:
        lsls    r1, r0, #2
        ldr     r0, [sp, #0x14]
        adds    r4, r1, r0
        b       L2005b4
L20052e:
        ldr     r0, [sp, #0x40]
        cmp     r0, #2
        beq     L200558
        ldrh    r7, [r4]
        cmp     r7, #0
L200538:
        beq     L20060c
        ldrh    r0, [r4, #2]
        adds    r4, r4, #4
L20053e:
        lsls    r2, r7, #0x1f
        lsls    r1, r0, #0x1f
        lsrs    r1, r1, #0x1e
        lsrs    r2, r2, #0x1f
        orrs    r1, r2
        beq     L200564
        cmp     r1, #1
        beq     L2005b8
        cmp     r1, #2
        beq     L200650
        cmp     r1, #3
        bne     L20052e
        b       L2007cc
L200558:
        ldr     r7, [r4]
        cmp     r7, #0
        beq     L200538
        ldr     r0, [r4, #4]
        adds    r4, #8
        b       L20053e
L200564:
        ldr     r1, [sp, #0x34]
        cmp     r1, #0
        beq     L2005b4
        ldr     r1, [r5, #0x48]
        movs    r3, #0
        movs    r2, #0xf
        adds    r1, r1, r0
        str     r1, [sp, #0x10]
        add     r1, sp, #0x18
        str     r1, [sp]
        movs    r0, r6
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r1, [sp, #0x10]
        ldr     r0, [sp, #0x18]
        cmp     r1, r0
        bhi     L2005b4
        adds    r1, r1, r7
        cmp     r1, r0
        bls     L2005b4
        ldr     r1, [r5, #0x48]
        adds    r0, r4, #4
        str     r1, [r5, #0x38]
        ldr     r1, [sp, #0x14]
        str     r1, [r5, #0x3c]
        str     r0, [r5, #0x40]
        movs    r0, r5
        bl      Fn_1fd6b4_t
        cmp     r0, #0
        beq     L2004fe
        ldr     r0, [r4]
        lsls    r0, r0, #1
        asrs    r0, r0, #1
        adds    r4, r0, r4
        movs    r0, r6
        movs    r2, #0xf
        str     r4, [sp, #0x10]
        b       L2005fc
L2005b4:
        adds    r4, r4, #4
        b       L20052e
L2005b8:
        ldr     r1, [sp, #0x34]
        cmp     r1, #0
        beq     L20060e
        add     r1, sp, #0x10
        movs    r3, #0
        str     r1, [sp]
        movs    r0, r6
        movs    r2, #0xd
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x10]
        ldr     r1, [r5, #0x20]
        cmp     r0, r1
        bne     L2006b4
        ldr     r0, [r5, #0x2c]
        cmp     r0, r4
        bne     L2006b4
        ldr     r0, [r4]
        add     r1, sp, #0x10
        movs    r3, #0
        str     r1, [sp]
        lsls    r0, r0, #1
        movs    r2, #0xf
        asrs    r0, r0, #1
        adds    r4, r0, r4
        movs    r0, r6
        movs    r1, r3
        str     r4, [sp, #0x10]
        bl      Fn_2000c0_t
        movs    r0, r6
        movs    r2, #0
        str     r5, [sp, #0x10]
L2005fc:
        add     r1, sp, #0x10
        movs    r3, #0
        str     r1, [sp]
        movs    r1, r3
        bl      Fn_2000c0_t
        movs    r2, r4
        b       L200aa8
L20060c:
        b       L2007d0
L20060e:
        ldr     r1, [r5, #0x48]
        movs    r3, #0
        movs    r2, #0xf
        adds    r1, r1, r0
        str     r1, [sp, #0x18]
        add     r1, sp, #0x2c
        str     r1, [sp]
        movs    r0, r6
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r1, [sp, #0x18]
        ldr     r0, [sp, #0x2c]
        subs    r7, r7, #1
        cmp     r1, r0
        bhi     L2006b4
        adds    r1, r1, r7
        cmp     r1, r0
        bls     L2006b4
        ldr     r7, [r4, #4]
        adds    r0, r7, #2
        beq     L20065a
        adds    r0, r7, #1
        beq     L20065e
        ldr     r0, [r4]
        movs    r1, r7
        add     r3, sp, #0x10
        lsrs    r2, r0, #0x1f
        movs    r0, r5
        bl      Fn_1fe3c0_t
        cmp     r0, #0
        b       L200652
L200650:
        b       L2006b8
L200652:
        beq     L2006b4
        cmp     r0, #2
        beq     L200694
        b       L200664
L20065a:
        movs    r2, #2
        b       L20091c
L20065e:
        movs    r0, r5
        adds    r0, #0x58
        str     r0, [sp, #0x10]
L200664:
        add     r1, sp, #0x14
        movs    r3, #0
        str     r1, [sp]
        movs    r0, r6
        movs    r2, #0xd
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x14]
        str     r4, [r5, #0x2c]
        str     r0, [r5, #0x20]
        ldr     r0, [sp, #0x10]
L20067c:
        movs    r1, #2
        str     r0, [r5, #0x24]
        ldr     r0, [r4]
        lsls    r0, r0, #1
        asrs    r0, r0, #1
        adds    r2, r0, r4
        movs    r0, r5
        bl      Fn_1fd4cc_t
        movs    r2, r7
        movs    r1, #0x80
        b       L20075e
L200694:
        add     r1, sp, #0x14
        movs    r3, #0
        str     r1, [sp]
        movs    r0, r6
        movs    r2, #0xd
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x14]
        str     r4, [r5, #0x2c]
        str     r0, [r5, #0x20]
        ldr     r0, [sp, #0x10]
        str     r0, [r5, #0x28]
        movs    r0, r5
        adds    r0, #0x28
        b       L20067c
L2006b4:
        adds    r4, #8
        b       L20052e
L2006b8:
        ldr     r1, [r4]
        str     r1, [sp, #0x18]
        lsls    r1, r1, #1
        lsrs    r1, r1, #1
        str     r1, [sp, #0x10]
        ldr     r1, [sp, #0x34]
        cmp     r1, #0
        beq     L2006ea
        add     r1, sp, #0x2c
        movs    r3, #0
        str     r1, [sp]
        movs    r0, r6
        movs    r2, #0xd
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x2c]
        ldr     r1, [r5, #0x20]
        cmp     r0, r1
        bne     L20076a
        ldr     r0, [r5, #0x2c]
        cmp     r0, r4
        bne     L20076a
        movs    r0, #1
        b       L20076c
L2006ea:
        ldr     r1, [r5, #0x48]
        subs    r0, r0, #1
        movs    r3, #0
        adds    r1, r1, r0
        str     r1, [sp, #0x2c]
        add     r1, sp, #0x30
        str     r1, [sp]
        movs    r0, r6
        movs    r2, #0xf
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r1, [sp, #0x2c]
        ldr     r0, [sp, #0x30]
        cmp     r1, r0
        bhi     L20078c
        adds    r1, r1, r7
        cmp     r1, r0
        bls     L20078c
        adds    r0, r4, #4
        movs    r7, #0
        str     r0, [sp]
        b       L200732
L200718:
        ldr     r0, [sp]
        movs    r2, #0
        add     r3, sp, #0x2c
        ldr     r1, [r0]
        movs    r0, r5
        bl      Fn_1fe3c0_t
        cmp     r0, #0
        bne     L200738
        ldr     r0, [sp]
        adds    r0, r0, #4
        adds    r7, r7, #1
        str     r0, [sp]
L200732:
        ldr     r0, [sp, #0x10]
        cmp     r7, r0
        blo     L200718
L200738:
        ldr     r0, [sp, #0x10]
        cmp     r7, r0
        bne     L20078c
        add     r1, sp, #0x10
        movs    r3, #0
        str     r1, [sp]
        movs    r0, r6
        movs    r2, #0xd
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x10]
        ldr     r2, L200ab8
        str     r4, [r5, #0x2c]
        str     r0, [r5, #0x20]
        movs    r0, #0
        add     r2, pc
        movs    r1, #2
        str     r0, [r5, #0x24]
L20075e:
        movs    r0, r5
        bl      Fn_1fd4cc_t
        movs    r0, #6
L200766:
        add     sp, #0x44
        pop     {r4, r5, r6, r7, pc}
L20076a:
        movs    r0, #0
L20076c:
        cmp     r0, #0
        beq     L20078c
        ldr     r0, [sp, #0x10]
        str     r0, [r5, #0x28]
        movs    r0, #0
        str     r0, [r5, #0x2c]
        movs    r0, #4
        str     r0, [r5, #0x30]
        adds    r0, r4, #4
        str     r0, [r5, #0x34]
        ldr     r1, [sp, #0x10]
        ldr     r0, [sp, #0x18]
        cmp     r0, r1
        bne     L20079c
        movs    r0, #1
        str     r0, [sp, #0x20]
L20078c:
        ldr     r0, [sp, #0x10]
        ldr     r1, [sp, #0x10]
        lsls    r2, r0, #2
        ldr     r0, [sp, #0x18]
        cmp     r0, r1
        bne     L2007c4
        movs    r0, #0
        b       L2007c6
L20079c:
        lsls    r0, r1, #2
        adds    r0, r0, r4
        adds    r0, r0, #4
        movs    r2, #0
        ldr     r1, [r0]
        movs    r3, r2
        str     r5, [sp, #0x10]
        lsls    r1, r1, #1
        asrs    r1, r1, #1
        adds    r4, r1, r0
        add     r1, sp, #0x10
        str     r1, [sp]
        movs    r0, r6
        movs    r1, r2
        bl      Fn_2000c0_t
        movs    r0, r6
        movs    r2, #0xf
        str     r4, [sp, #0x10]
        b       L200a96
L2007c4:
        movs    r0, #4
L2007c6:
        adds    r0, r2, r0
        adds    r4, r0, r4
        b       L2005b4
L2007cc:
        movs    r2, #1
        b       L20091c
L2007d0:
        ldr     r0, [sp, #0x14]
        ldr     r0, [r0]
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x14]
        adds    r0, r0, #4
        str     r0, [sp, #8]
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        beq     L200822
        mov     r1, sp
        ldr     r0, [sp, #4]
        lsrs    r0, r0, #0x10
        strb    r0, [r1, #0xd]
        ldr     r0, [sp, #4]
        lsls    r0, r0, #0x10
        str     r0, [sp, #4]
        movs    r0, #2
L2007f2:
        strb    r0, [r1, #0xc]
L2007f4:
        add     r0, sp, #4
        bl      Fn_2004a8_t
        movs    r4, r0
        cmp     r0, #0xb0
        beq     L200832
        cmp     r4, #0x3f
        bhi     L200886
        lsls    r0, r0, #0x1a
        add     r1, sp, #0x14
        lsrs    r4, r0, #0x18
        movs    r7, #0xd
        movs    r3, #0
        str     r1, [sp]
        adds    r4, r4, #4
        movs    r0, r6
        movs    r2, r7
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x14]
        adds    r0, r0, r4
        b       L2008a6
L200822:
        mov     r1, sp
        movs    r0, #0
        strb    r0, [r1, #0xd]
        ldr     r0, [sp, #4]
        lsls    r0, r0, #8
        str     r0, [sp, #4]
        movs    r0, #3
        b       L2007f2
L200832:
        ldr     r0, [sp, #0x28]
        cmp     r0, #0
        bne     L200866
        ldr     r0, [sp, #0x1c]
        cmp     r0, #0
        beq     L2007cc
        add     r0, sp, #0x10
        movs    r3, #0
        str     r0, [sp]
        movs    r2, #0xe
        movs    r1, r3
        movs    r0, r6
        bl      Fn_2000f2_t
        ldr     r1, [sp, #0x10]
        movs    r3, #0
        movs    r0, r6
        str     r1, [sp, #0x14]
        add     r1, sp, #0x14
        str     r1, [sp]
        movs    r2, #0xf
        movs    r1, r3
        bl      Fn_2000c0_t
        movs    r0, #1
        str     r0, [sp, #0x24]
L200866:
        ldr     r0, [sp, #0x20]
        cmp     r0, #0
        beq     L20094e
        movs    r2, #0
        add     r1, sp, #0x10
        str     r1, [sp]
        movs    r0, r6
        movs    r3, r2
        movs    r1, r2
        str     r5, [sp, #0x10]
        bl      Fn_2000c0_t
        ldr     r0, [sp, #0x24]
        cmp     r0, #0
        beq     L200976
        b       L200a8c
L200886:
        cmp     r4, #0x7f
        bhi     L2008ba
        lsls    r0, r0, #0x1a
        add     r1, sp, #0x14
        lsrs    r4, r0, #0x18
        movs    r7, #0xd
        movs    r3, #0
        str     r1, [sp]
        adds    r4, r4, #4
        movs    r0, r6
        movs    r2, r7
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x14]
        subs    r0, r0, r4
L2008a6:
        str     r0, [sp, #0x10]
        movs    r3, #0
        add     r0, sp, #0x10
        movs    r2, r7
        str     r0, [sp]
L2008b0:
        movs    r1, #0
        movs    r0, r6
        bl      Fn_2000c0_t
        b       L2007f4
L2008ba:
        cmp     r4, #0x8f
        bhi     L2008f6
        lsls    r0, r0, #0x1c
        lsrs    r7, r0, #0x10
        add     r0, sp, #4
        bl      Fn_2004a8_t
        lsls    r4, r0, #4
        orrs    r4, r7
        bne     L2008d0
        b       L20065a
L2008d0:
        movs    r3, #0
        movs    r2, r4
        movs    r1, r3
        movs    r0, r6
        bl      Fn_200124_t
        cmp     r0, #0
        beq     L2008e4
L2008e0:
        movs    r2, #3
        b       L20091c
L2008e4:
        lsls    r0, r4, #0x10
        bpl     L2008ec
        movs    r0, #1
        str     r0, [sp, #0x28]
L2008ec:
        lsls    r0, r4, #0x11
        bpl     L2007f4
        movs    r0, #1
        str     r0, [sp, #0x1c]
        b       L2007f4
L2008f6:
        cmp     r4, #0x9f
        bhi     L200928
        lsls    r2, r0, #0x1c
        lsrs    r2, r2, #0x1c
        cmp     r2, #0xd
        beq     L20091a
        cmp     r2, #0xf
        beq     L20091a
        add     r1, sp, #0x14
        movs    r3, #0
        str     r1, [sp]
        movs    r4, #0xd
        movs    r0, r6
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x14]
        b       L2009c0
L20091a:
        movs    r2, #4
L20091c:
        movs    r1, #1
        movs    r0, r5
        bl      Fn_1fd4cc_t
        movs    r0, #9
        b       L200766
L200928:
        cmp     r4, #0xaf
        bhi     L200950
        lsls    r0, r4, #0x1d
        movs    r1, #1
        lsrs    r0, r0, #0x1d
        adds    r0, r0, #1
        lsls    r1, r0
        lsls    r2, r1, #4
        subs    r2, #0x10
        lsls    r0, r4, #0x1c
        bpl     L200948
        movs    r0, #1
        lsls    r0, r0, #0xe
        orrs    r2, r0
        movs    r0, #1
        str     r0, [sp, #0x1c]
L200948:
        movs    r3, #0
        movs    r1, r3
        b       L200a08
L20094e:
        b       L200ab4
L200950:
        cmp     r4, #0xb7
        bhi     L2009cc
        cmp     r4, #0xb1
        beq     L200978
        cmp     r4, #0xb2
        beq     L200988
        cmp     r0, #0xb3
        bne     L20091a
        add     r0, sp, #4
        bl      Fn_2004a8_t
        movs    r1, #0xf0
        ands    r1, r0
        lsls    r0, r0, #0x1c
        lsls    r2, r1, #0xc
        lsrs    r0, r0, #0x1c
        adds    r0, r0, #1
        orrs    r2, r0
        b       L2009d8
L200976:
        b       L200a68
L200978:
        add     r0, sp, #4
        bl      Fn_2004a8_t
        movs    r2, r0
        beq     L20091a
        cmp     r2, #0xf
        bls     L200948
L200986:
        b       L20091a
L200988:
        movs    r7, #0
        movs    r4, r7
L20098c:
        add     r0, sp, #4
        bl      Fn_2004a8_t
        lsls    r1, r0, #0x19
        lsrs    r1, r1, #0x19
        lsls    r1, r4
        orrs    r7, r1
        lsls    r0, r0, #0x18
        bpl     L2009a2
        adds    r4, r4, #7
        b       L20098c
L2009a2:
        add     r1, sp, #0x14
        movs    r4, #0xd
        movs    r3, #0
        str     r1, [sp]
        movs    r0, r6
        movs    r2, r4
        movs    r1, r3
        bl      Fn_2000f2_t
        ldr     r0, [sp, #0x14]
        lsls    r1, r7, #2
        adds    r0, r0, r1
        adds    r0, #0xff
        adds    r0, #0xff
        adds    r0, #6
L2009c0:
        str     r0, [sp, #0x10]
        movs    r3, #0
        add     r0, sp, #0x10
        movs    r2, r4
        str     r0, [sp]
        b       L2008b0
L2009cc:
        cmp     r4, #0xbf
        bhi     L2009de
        lsls    r1, r0, #0x1d
        ldr     r0, L200abc
        lsrs    r1, r1, #0x1d
        adds    r2, r1, r0
L2009d8:
        movs    r3, #1
L2009da:
        movs    r1, #1
        b       L200a08
L2009de:
        cmp     r4, #0xc7
        bhi     L200a2c
        beq     L2009f6
        cmp     r4, #0xc6
        beq     L200a16
        ldr     r1, L200ac0
        lsls    r0, r0, #0x1d
        lsrs    r0, r0, #0x1d
        adds    r2, r0, r1
L2009f0:
        movs    r3, #3
        movs    r1, r3
        b       L200a08
L2009f6:
        add     r0, sp, #4
        bl      Fn_2004a8_t
        movs    r2, r0
        beq     L20091a
        cmp     r2, #0xf
        bhi     L20091a
        movs    r3, #0
        movs    r1, #4
L200a08:
        movs    r0, r6
        bl      Fn_200124_t
        cmp     r0, #0
        bne     L200a14
        b       L2007f4
L200a14:
        b       L2008e0
L200a16:
        add     r0, sp, #4
        bl      Fn_2004a8_t
        movs    r1, #0xf0
        ands    r1, r0
        lsls    r0, r0, #0x1c
        lsls    r2, r1, #0xc
        lsrs    r0, r0, #0x1c
        adds    r0, r0, #1
        orrs    r2, r0
        b       L2009f0
L200a2c:
        cmp     r4, #0xc8
        beq     L200a46
        cmp     r4, #0xc9
        beq     L200a46
        cmp     r4, #0xcf
        bls     L200986
        cmp     r4, #0xd7
        bhi     L200986
        lsls    r1, r0, #0x1d
        ldr     r0, L200abc
        lsrs    r1, r1, #0x1d
        adds    r2, r1, r0
        b       L200a64
L200a46:
        add     r0, sp, #4
        bl      Fn_2004a8_t
        movs    r1, #0xf0
        ands    r1, r0
        lsls    r0, r0, #0x1c
        lsls    r2, r1, #0xc
        lsrs    r0, r0, #0x1c
        adds    r0, r0, #1
        orrs    r2, r0
        cmp     r4, #0xc8
        bne     L200a64
        movs    r0, #1
        lsls    r0, r0, #0x14
        adds    r2, r2, r0
L200a64:
        movs    r3, #5
        b       L2009da
L200a68:
        add     r0, sp, #0x10
        movs    r3, #0
        str     r0, [sp]
        movs    r2, #0xf
        movs    r1, r3
        movs    r0, r6
        bl      Fn_2000f2_t
        ldr     r1, [sp, #0x10]
        movs    r3, #0
        movs    r0, r6
        str     r1, [sp, #0x14]
        add     r1, sp, #0x14
        str     r1, [sp]
        movs    r2, #0xe
        movs    r1, r3
        bl      Fn_2000c0_t
L200a8c:
        ldr     r1, L200ac4
        movs    r0, r6
        movs    r2, #0xf
        add     r1, pc
        str     r1, [sp, #0x10]
L200a96:
        add     r1, sp, #0x10
        movs    r3, #0
        str     r1, [sp]
        movs    r1, r3
        bl      Fn_2000c0_t
        ldr     r2, L200ac4
        add     r2, pc
        subs    r2, #0x12
L200aa8:
        movs    r1, #3
        movs    r0, r5
        bl      Fn_1fd4cc_t
        movs    r0, #7
        b       L200766
L200ab4:
        movs    r0, #8
        b       L200766
L200ab8:
        .word   0xffe00631
L200abc:
        .word   0x00080001
L200ac0:
        .word   0x000a0001
L200ac4:
        .word   0xffe002f7
        .size   A_2004de, . - A_2004de

@ FUN_00200ac8 (Thumb)
        .section .text.A_200ac8,"ax",%progbits
        .balign 4
        .thumb
        .global A_200ac8
        .thumb_func
        .type   A_200ac8, %function
A_200ac8:
        push    {r4, lr}
        mov     r8, r8
        mov     r8, r8
        pop     {r4, pc}
        .size   A_200ac8, . - A_200ac8

@ FUN_00200d10 (Thumb)
        .section .text.A_200d10,"ax",%progbits
        .balign 4
        .thumb
        .global A_200d10
        .thumb_func
        .type   A_200d10, %function
A_200d10:
        push    {r4, lr}
        b       L200d28
L200d14:
        ldrh    r4, [r0]
        adds    r0, r0, #2
        cmp     r4, r3
        bne     L200d28
        cmp     r2, #0
        beq     L200d24
        movs    r0, #0
        pop     {r4, pc}
L200d24:
        movs    r0, #1
        pop     {r4, pc}
L200d28:
        subs    r1, r1, #1
        bhs     L200d14
        movs    r0, r2
        pop     {r4, pc}
        .size   A_200d10, . - A_200d10

@ FUN_00201eb8 (Thumb)
        .section .text.A_201eb8,"ax",%progbits
        .balign 4
        .thumb
        .global A_201eb8
        .thumb_func
        .type   A_201eb8, %function
A_201eb8:
        push    {r4, r5, r6, lr}
        movs    r6, r0
        rsbs    r2, r1, #0
        movs    r0, r1
        bics    r0, r2
        beq     L201ee4
        movs    r0, #0x2a
        adds    r4, r6, #1
        movs    r5, #0
        strb    r0, [r6]
        bl      Fn_1fe034
        movs    r3, r0
L201ed2:
        lsls    r1, r5, #2
        movs    r0, #0
        ldr     r2, [r3, r1]
L201ed8:
        lsrs    r1, r2, #0x1c
        lsls    r2, r2, #4
        cmp     r1, #9
        bls     L201f3c
        adds    r1, #0x57
        b       L201f3e
L201ee4:
        cmp     r1, #4
        beq     L201f10
        bgt     L201ef4
        cmp     r1, #1
        beq     L201f00
        cmp     r1, #2
        bne     L201efc
        b       L201f08
L201ef4:
        cmp     r1, #8
        beq     L201f18
        cmp     r1, #0x10
        beq     L201f20
L201efc:
        movs    r0, #0
        pop     {r4, r5, r6, pc}
L201f00:
        bl      Fn_1fe034
        ldr     r0, [r0]
        b       L201f26
L201f08:
        bl      Fn_1fe034
        ldr     r0, [r0, #4]
        b       L201f26
L201f10:
        bl      Fn_1fe034
        ldr     r0, [r0, #8]
        b       L201f26
L201f18:
        bl      Fn_1fe034
        ldr     r0, [r0, #0xc]
        b       L201f26
L201f20:
        bl      Fn_1fe034
        ldr     r0, [r0, #0x10]
L201f26:
        cmp     r0, #0
        beq     L201f38
        lsrs    r0, r0, #2
        lsls    r0, r0, #2
        movs    r1, r0
        subs    r1, #0x40
        ldr     r1, [r1, #0x3c]
        adds    r0, r1, r0
        pop     {r4, r5, r6, pc}
L201f38:
        adr     r0, #0x114
        pop     {r4, r5, r6, pc}
L201f3c:
        adds    r1, #0x30
L201f3e:
        strb    r1, [r4]
        adds    r4, r4, #1
        adds    r0, r0, #1
        cmp     r0, #8
        blt     L201ed8
        adds    r5, r5, #1
        cmp     r5, #5
        blt     L201ed2
        movs    r0, #0
        strb    r0, [r4]
        movs    r0, r6
        pop     {r4, r5, r6, pc}
        .size   A_201eb8, . - A_201eb8

@ FUN_00201f56 (Thumb)
        .section .text.A_201f56,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_201f56
        .thumb_func
        .type   A_201f56, %function
A_201f56:
        push    {r3, r4, r5, r6, r7, lr}
        cmp     r1, #0
        beq     L201f60
        lsrs    r3, r1, #5
        beq     L201f64
L201f60:
        movs    r0, #0
        pop     {r3, r4, r5, r6, r7, pc}
L201f64:
        cmp     r2, #0
        beq     L201f74
        ldrb    r3, [r2]
        cmp     r3, #0x2a
        beq     L201f7a
        bl      Fn_201fba_t
        pop     {r3, r4, r5, r6, r7, pc}
L201f74:
        bl      Fn_201eb8_t
        pop     {r3, r4, r5, r6, r7, pc}
L201f7a:
        movs    r7, r1
        adds    r5, r2, #1
        movs    r4, #0
        str     r0, [sp]
L201f82:
        movs    r6, #0
        movs    r1, r6
L201f86:
        ldrb    r0, [r5]
        adds    r5, r5, #1
        cmp     r0, #0x39
        bhi     L201f92
        subs    r0, #0x30
        b       L201f94
L201f92:
        subs    r0, #0x57
L201f94:
        lsls    r6, r6, #4
        orrs    r6, r0
        adds    r1, r1, #1
        cmp     r1, #8
        blt     L201f86
        movs    r0, #1
        lsls    r0, r4
        tst     r0, r7
        beq     L201fae
        bl      Fn_1fe034
        lsls    r1, r4, #2
        str     r6, [r0, r1]
L201fae:
        adds    r4, r4, #1
        cmp     r4, #5
        blt     L201f82
        ldr     r0, [sp]
        movs    r1, r7
        b       L201f74
        .size   A_201f56, . - A_201f56

@ FUN_00201fba (Thumb)
        .section .text.A_201fba,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_201fba
        .thumb_func
        .type   A_201fba, %function
A_201fba:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r6, r0
        movs    r4, r1
        movs    r5, r2
        lsls    r0, r1, #0x1e
        bpl     L201fdc
        ldr     r0, L202054
        movs    r1, r2
        add     r0, pc
        bl      Fn_005b58
        movs    r7, r0
        beq     L20204c
        bl      Fn_1fe034
        adds    r7, r7, #1
        str     r7, [r0, #4]
L201fdc:
        lsls    r0, r4, #0x1f
        beq     L201ff6
        ldr     r0, L202054
        movs    r1, r5
        add     r0, pc
        subs    r0, #0x1a
        bl      Fn_3023cc
        movs    r7, r0
        beq     L20204c
        bl      Fn_1fe034
        str     r7, [r0]
L201ff6:
        lsls    r0, r4, #0x1d
        bpl     L202010
        ldr     r0, L202054
        movs    r1, r5
        add     r0, pc
        subs    r0, #0x34
        bl      Fn_3023d0
        movs    r7, r0
        beq     L20204c
        bl      Fn_1fe034
        str     r7, [r0, #8]
L202010:
        lsls    r0, r4, #0x1c
        bpl     L20202a
        ldr     r0, L202054
        movs    r1, r5
        add     r0, pc
        subs    r0, #0x4e
        bl      Fn_005ba0
        movs    r7, r0
        beq     L20204c
        bl      Fn_1fe034
        str     r7, [r0, #0xc]
L20202a:
        lsls    r0, r4, #0x1b
        bpl     L202044
        ldr     r0, L202054
        movs    r1, r5
        add     r0, pc
        subs    r0, #0x68
        mov     r8, r8
        mov     r8, r8
        movs    r5, r0
        beq     L20204c
        bl      Fn_1fe034
        str     r5, [r0, #0x10]
L202044:
        movs    r1, r4
        movs    r0, r6
        bl      Fn_201eb8_t
L20204c:
        pop     {r3, r4, r5, r6, r7, pc}
        .short  0x0000
        .short  0x0043
        .short  0x0000
L202054:
        .word   0x00547abe
        .size   A_201fba, . - A_201fba

@ FUN_00202080 (Thumb)
        .section .text.A_202080,"ax",%progbits
        .balign 4
        .thumb
        .global A_202080
        .thumb_func
        .type   A_202080, %function
A_202080:
        push    {r1, r2, r3, r4, r5, r6, r7}
        mov     r2, r8
        mov     r3, sb
        mov     r4, sl
        mov     r5, fp
        push    {r1, r2, r3, r4, r5}
        bl      Fn_1fd6ec_t
        pop     {r1, r2, r3, r4, r5}
        mov     r8, r2
        mov     sb, r3
        mov     sl, r4
        mov     fp, r5
        pop     {r1, r2, r3, r4, r5, r6, r7}
        bl      Fn_1fffe0_t
        .size   A_202080, . - A_202080

@ FUN_002020a0 (Thumb)
        .section .text.A_2020a0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2020a0
        .thumb_func
        .type   A_2020a0, %function
A_2020a0:
        push    {r4, lr}
        mov     r8, r8
        mov     r8, r8
        ldr     r1, L2020ac
        str     r1, [r0]
        pop     {r4, pc}
L2020ac:
        .word   0x00a7b304
        .size   A_2020a0, . - A_2020a0

@ FUN_002020b0 (Thumb)
        .section .text.A_2020b0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2020b0
        .thumb_func
        .type   A_2020b0, %function
A_2020b0:
        push    {r4, lr}
        bl      Fn_202788_t
        ldr     r1, L2020bc
        str     r1, [r0]
        pop     {r4, pc}
L2020bc:
        .word   0x0082fec8
        .size   A_2020b0, . - A_2020b0

@ FUN_002020c0 (Thumb)
        .section .text.A_2020c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2020c0
        .thumb_func
        .type   A_2020c0, %function
A_2020c0:
        push    {r4, lr}
        bl      Fn_202794_t
        ldr     r1, L2020cc
        str     r1, [r0]
        pop     {r4, pc}
L2020cc:
        .word   0x0082fec8
        .size   A_2020c0, . - A_2020c0

@ FUN_002020d0 (Thumb)
        .section .text.A_2020d0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2020d0
        .thumb_func
        .type   A_2020d0, %function
A_2020d0:
        push    {r4, lr}
        mov     r8, r8
        mov     r8, r8
        pop     {r4, pc}
        .size   A_2020d0, . - A_2020d0

@ FUN_002020d8 (Thumb)
        .section .text.A_2020d8,"ax",%progbits
        .balign 4
        .thumb
        .global A_2020d8
        .thumb_func
        .type   A_2020d8, %function
A_2020d8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r5, r1
        movs    r7, r0
        ldr     r4, [r2]
        ldr     r3, [sp, #0x10]
        movs    r6, r2
        blx     r4
        movs    r0, r5
        bl      Fn_1fe550_t
        ldr     r1, L202178
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L202106
        ldr     r1, [r5, #8]
        movs    r3, #0
        movs    r2, r6
        movs    r0, r7
        bl      Fn_2020d8_t
        b       L202162
L202106:
        movs    r0, r5
        bl      Fn_1fe550_t
        ldr     r1, L20217c
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L202162
        movs    r4, r5
        adds    r4, #0x10
        b       L202156
L20211c:
        ldr     r0, [r6, #0xc]
        cmp     r0, #0
        beq     L202128
        ldr     r0, [r4, #4]
        lsls    r0, r0, #0x1e
        bpl     L202154
L202128:
        cmp     r4, #0
        beq     L20213e
        ldr     r0, [r4, #4]
        lsls    r1, r0, #0x1f
        lsrs    r1, r1, #0x1f
        beq     L20213e
        ldr     r1, [r7]
        asrs    r0, r0, #8
        adds    r0, r0, r1
        ldr     r0, [r0]
        b       L202142
L20213e:
        ldr     r0, [r4, #4]
        asrs    r0, r0, #8
L202142:
        ldr     r1, [r4]
        adds    r0, r0, r7
        movs    r3, r4
        movs    r2, r6
        bl      Fn_2020d8_t
        ldr     r0, [r6, #0x10]
        cmp     r0, #0
        bne     L202172
L202154:
        adds    r4, #8
L202156:
        ldr     r0, [r5, #0xc]
        lsls    r1, r0, #3
        adds    r0, r1, r5
        adds    r0, #0x10
        cmp     r0, r4
        bhi     L20211c
L202162:
        ldr     r4, [r6, #4]
        cmp     r4, #0
        beq     L202172
        movs    r2, r6
        movs    r1, r5
        ldr     r3, [sp, #0x10]
        movs    r0, r7
        blx     r4
L202172:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
L202178:
        .word   0x00803f34
L20217c:
        .word   0x00803f40
        .size   A_2020d8, . - A_2020d8

@ FUN_00202180 (Thumb)
        .section .text.A_202180,"ax",%progbits
        .balign 4
        .thumb
        .global A_202180
        .thumb_func
        .type   A_202180, %function
A_202180:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0xc
        movs    r4, r2
        movs    r5, r0
        movs    r0, #0
        str     r0, [sp]
        ldr     r6, [sp, #0x30]
        movs    r0, r2
        bl      Fn_1fe550_t
        ldr     r1, L202240
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L2021c2
        ldr     r0, [sp, #0x10]
        cmp     r5, r0
        bne     L2021b0
        ldr     r0, [r4, #8]
        ldr     r1, [sp, #0x18]
        bl      Fn_1fe27c
        cmp     r0, #0
        bne     L202208
L2021b0:
        str     r6, [sp]
        ldr     r2, [r4, #8]
        ldr     r3, [sp, #0x18]
        ldr     r1, [sp, #0x10]
        movs    r0, r5
        bl      Fn_202180_t
        str     r0, [sp]
        b       L202238
L2021c2:
        movs    r0, r4
        bl      Fn_1fe550_t
        ldr     r1, L202244
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L202238
        movs    r7, r4
        adds    r4, #0x10
        b       L20222c
L2021d8:
        ldr     r0, [r4, #4]
        lsls    r1, r0, #0x1f
        beq     L2021e8
        ldr     r1, [r5]
        asrs    r0, r0, #8
        adds    r0, r0, r1
        ldr     r0, [r0]
        b       L2021ea
L2021e8:
        asrs    r0, r0, #8
L2021ea:
        ldr     r1, [sp, #0x10]
        adds    r0, r0, r5
        cmp     r0, r1
        str     r0, [sp, #4]
        bne     L20220e
        ldr     r0, [r4]
        ldr     r1, [sp, #0x18]
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L20220e
        str     r4, [sp]
        ldr     r0, [r4, #4]
        lsls    r0, r0, #0x1e
        bpl     L202238
L202208:
        movs    r0, #1
        str     r0, [r6]
        b       L202238
L20220e:
        ldr     r0, [r4, #4]
        lsls    r0, r0, #0x1e
        bpl     L20222a
        str     r6, [sp]
        ldr     r2, [r4]
        ldr     r3, [sp, #0x18]
        ldr     r1, [sp, #0x10]
        ldr     r0, [sp, #4]
        bl      Fn_202180_t
        str     r0, [sp]
        ldr     r0, [r6]
        cmp     r0, #0
        bne     L202238
L20222a:
        adds    r4, #8
L20222c:
        ldr     r0, [r7, #0xc]
        lsls    r0, r0, #3
        adds    r0, r0, r7
        adds    r0, #0x10
        cmp     r0, r4
        bhi     L2021d8
L202238:
        ldr     r0, [sp]
        add     sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .short  0x0000
L202240:
        .word   0x00803f34
L202244:
        .word   0x00803f40
        .size   A_202180, . - A_202180

@ FUN_00202248 (Thumb)
        .section .text.A_202248,"ax",%progbits
        .balign 4
        .thumb
        .global A_202248
        .thumb_func
        .type   A_202248, %function
A_202248:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x34
        movs    r4, r2
        movs    r0, r2
        movs    r7, #0
        ldr     r6, [sp, #0x68]
        ldr     r5, [sp, #0x5c]
        bl      Fn_1fe550_t
        ldr     r1, L20243c
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L2022d4
        ldr     r0, [r4, #8]
        ldr     r1, [sp, #0x40]
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L2022a8
        ldr     r0, [sp, #0x38]
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L20227e
        ldr     r1, [sp, #0x34]
        cmp     r0, r1
        bne     L20228a
L20227e:
        ldrb    r0, [r6]
        cmp     r0, #2
        beq     L20228a
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L202296
L20228a:
        movs    r0, #1
        str     r0, [r5]
        ldr     r1, [sp, #0x38]
        movs    r0, #0
        str     r0, [r1]
L202294:
        b       L20242a
L202296:
        movs    r0, #1
        strb    r0, [r6]
        ldr     r0, [sp, #0x6c]
        ldr     r1, [sp, #0x60]
        str     r1, [r0]
        ldr     r1, [sp, #0x38]
        ldr     r0, [sp, #0x34]
        str     r0, [r1]
        b       L2022d0
L2022a8:
        ldr     r2, [sp, #0x64]
        ldr     r1, [sp, #0x60]
        ldr     r0, [sp, #0x6c]
        add     r3, sp, #8
        stm     r3!, {r1, r2, r6}
        str     r0, [sp, #0x14]
        ldr     r0, [sp, #0x58]
        str     r5, [sp, #4]
        str     r0, [sp]
        ldr     r2, [r4, #8]
        ldr     r3, [sp, #0x40]
        ldr     r1, [sp, #0x38]
        ldr     r0, [sp, #0x34]
        bl      Fn_202248_t
        cmp     r0, #0
        beq     L202294
        ldr     r0, [r5]
        cmp     r0, #0
        bne     L202294
L2022d0:
        movs    r7, #1
        b       L20242a
L2022d4:
        movs    r0, r4
        bl      Fn_1fe550_t
        ldr     r1, L202440
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L2023c8
        ldr     r0, [sp, #0x58]
        str     r4, [sp, #0x24]
        lsls    r0, r0, #0x1e
        asrs    r0, r0, #0x1f
        str     r0, [sp, #0x2c]
        ldr     r0, [sp, #0x58]
        adds    r4, #0x10
        lsls    r0, r0, #0x1f
        asrs    r0, r0, #0x1f
        str     r0, [sp, #0x30]
        b       L202418
L2022fa:
        ldr     r0, [r4, #4]
        lsls    r1, r0, #0x1f
        lsrs    r1, r1, #0x1f
        str     r1, [sp, #0x28]
        ldr     r1, [sp, #0x34]
        cmp     r1, #0
        beq     L202320
        ldr     r1, [sp, #0x28]
        cmp     r1, #0
        beq     L20231a
        ldr     r1, [sp, #0x34]
        asrs    r2, r0, #8
        ldr     r1, [r1]
        adds    r1, r2, r1
        ldr     r2, [r1]
        b       L20231c
L20231a:
        asrs    r2, r0, #8
L20231c:
        ldr     r1, [sp, #0x34]
        adds    r1, r2, r1
L202320:
        str     r1, [sp, #0x20]
        ldr     r1, [sp, #0x60]
        cmp     r1, #0
        beq     L202330
        lsls    r0, r0, #0x1e
        bpl     L202330
        movs    r0, #1
        b       L202332
L202330:
        movs    r0, #0
L202332:
        str     r0, [sp]
        ldr     r0, [r4]
        ldr     r1, [sp, #0x40]
        bl      Fn_1fe27c
        cmp     r0, #0
        beq     L202394
        ldr     r0, [sp, #0x38]
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L20234e
        ldr     r1, [sp, #0x20]
        cmp     r0, r1
        bne     L202360
L20234e:
        ldr     r0, [r4, #4]
        lsls    r1, r0, #0x1f
        beq     L20235a
        ldrb    r1, [r6]
        cmp     r1, #1
        beq     L202360
L20235a:
        ldr     r1, [r5]
        cmp     r1, #0
        beq     L20236c
L202360:
        movs    r0, #1
        str     r0, [r5]
        ldr     r1, [sp, #0x38]
        movs    r0, #0
        str     r0, [r1]
        b       L2023c6
L20236c:
        lsls    r0, r0, #0x1f
        beq     L202374
        movs    r0, #2
        b       L202376
L202374:
        movs    r0, #1
L202376:
        strb    r0, [r6]
        ldr     r1, [sp, #0x6c]
        ldr     r0, [sp]
        str     r0, [r1]
        ldr     r1, [sp, #0x38]
        ldr     r0, [sp, #0x20]
        str     r0, [r1]
        b       L20240c
L202386:
        ldr     r0, [sp, #0x28]
        cmp     r0, #0
        beq     L202430
        ldr     r0, [sp, #0x2c]
L20238e:
        adds    r0, r0, #1
        bne     L20242a
        b       L202416
L202394:
        movs    r0, #0
        mov     r1, sp
        str     r0, [sp, #0x18]
        strb    r0, [r1, #0x1c]
        ldr     r3, [sp, #0x6c]
        ldr     r0, [sp]
        str     r3, [sp, #0x14]
        add     r2, sp, #0x1c
        add     r1, sp, #0x18
        add     r3, sp, #8
        stm     r3!, {r0, r1, r2}
        ldr     r0, [sp, #0x58]
        str     r5, [sp, #4]
        str     r0, [sp]
        ldr     r2, [r4]
        ldr     r3, [sp, #0x40]
        ldr     r1, [sp, #0x38]
        ldr     r0, [sp, #0x20]
        bl      Fn_202248_t
        cmp     r0, #0
        ldr     r0, [r5]
        beq     L2023ca
        cmp     r0, #0
        beq     L2023d0
L2023c6:
        movs    r7, #0
L2023c8:
        b       L20242a
L2023ca:
        cmp     r0, #0
        bne     L2023c6
        b       L202416
L2023d0:
        ldr     r0, [sp, #0x18]
        cmp     r0, #0
        bne     L2023e0
        ldr     r0, [r4, #4]
        lsls    r0, r0, #0x1f
        beq     L2023e0
        ldr     r0, [r4]
        str     r0, [sp, #0x18]
L2023e0:
        ldrb    r0, [r6]
        cmp     r0, #0
        beq     L202400
        mov     r1, sp
        ldrb    r1, [r1, #0x1c]
        cmp     r1, #2
        bne     L2023f2
        cmp     r0, #2
        beq     L202400
L2023f2:
        ldr     r0, [sp, #0x64]
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L202434
        ldr     r1, [sp, #0x18]
        cmp     r0, r1
        bne     L202434
L202400:
        mov     r0, sp
        ldrb    r0, [r0, #0x1c]
        strb    r0, [r6]
        ldr     r0, [sp, #0x64]
        ldr     r1, [sp, #0x18]
        str     r1, [r0]
L20240c:
        ldr     r0, [sp, #0x6c]
        movs    r7, #1
        ldr     r0, [r0]
        cmp     r0, #0
        bne     L202386
L202416:
        adds    r4, #8
L202418:
        ldr     r0, [sp, #0x24]
        ldr     r0, [r0, #0xc]
        lsls    r1, r0, #3
        ldr     r0, [sp, #0x24]
        adds    r0, r1, r0
        adds    r0, #0x10
        cmp     r0, r4
        bls     L20242a
        b       L2022fa
L20242a:
        movs    r0, r7
        add     sp, #0x44
        pop     {r4, r5, r6, r7, pc}
L202430:
        ldr     r0, [sp, #0x30]
        b       L20238e
L202434:
        movs    r0, #1
        str     r0, [r5]
        b       L2023c6
        .short  0x0000
L20243c:
        .word   0x00803f34
L202440:
        .word   0x00803f40
        .size   A_202248, . - A_202248

@ FUN_00202444 (Thumb)
        .section .text.A_202444,"ax",%progbits
        .balign 4
        .thumb
        .global A_202444
        .thumb_func
        .type   A_202444, %function
A_202444:
        push    {r4, lr}
        ldr     r1, L202474
        movs    r4, r0
        ldr     r3, [r1]
        ldr     r2, [r1, #4]
        movs    r0, #0
        b       L202454
L202452:
        adds    r0, r0, #1
L202454:
        cmp     r2, r0
        bls     L202466
        lsls    r1, r0, #2
        adds    r1, r3, r1
        ldr     r1, [r1]
        cmp     r1, #0
        beq     L202466
        cmp     r1, r4
        bne     L202452
L202466:
        lsls    r1, r0, #2
        adds    r1, r3, r1
        ldr     r1, [r1]
        cmp     r1, #0
        bne     L202472
        movs    r0, r2
L202472:
        pop     {r4, pc}
L202474:
        .word   0x008bf9e8
        .size   A_202444, . - A_202444

@ FUN_00202478 (Thumb)
        .section .text.A_202478,"ax",%progbits
        .balign 4
        .thumb
        .global A_202478
        .thumb_func
        .type   A_202478, %function
A_202478:
        push    {r4, lr}
        movs    r4, r0
        bne     L202490
        movs    r4, #1
        b       L202490
L202482:
        bl      Fn_031854
        ldr     r0, [r0]
        cmp     r0, #0
        bne     L20248e
        ldr     r0, L20249c
L20248e:
        blx     r0
L202490:
        movs    r0, r4
        bl      Fn_1fd52c
        cmp     r0, #0
        beq     L202482
        pop     {r4, pc}
L20249c:
        .word   0x00102ce9
        .size   A_202478, . - A_202478

@ FUN_002024e4 (Thumb)
        .section .text.A_2024e4,"ax",%progbits
        .balign 4
        .thumb
        .global A_2024e4
        .thumb_func
        .type   A_2024e4, %function
A_2024e4:
        push    {r0, r1, r2, r3}
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, L202540
        ldr     r2, [r5]
        cmp     r2, #0
        beq     L2024fa
        ldr     r0, [sp, #0x20]
        cmp     r0, #3
        bgt     L202502
        movs    r1, #0
        blx     r2
L2024fa:
        pop     {r0, r1, r2, r3, r4, r5, r6}
        pop     {r3}
        add     sp, #0x10
        bx      r3
L202502:
        movs    r0, #8
        add     r6, sp, #0x24
        mov     r1, sp
        movs    r0, r1
        mov     r8, r8
        cmp     r0, #0
        beq     L202518
        bl      Fn_003cb8_t
        movs    r4, r0
        b       L20251a
L202518:
        movs    r4, #0
L20251a:
        ldr     r1, [sp, #0x20]
        movs    r2, r6
        movs    r0, r4
        bl      Fn_003bfc_t
        ldr     r0, [r4]
        ldr     r1, [r0, #8]
        movs    r0, r4
        blx     r1
        ldr     r2, [r5]
        movs    r1, r0
        ldr     r0, [sp, #0x20]
        blx     r2
        ldr     r0, [r4]
        ldr     r1, [r0]
        movs    r0, r4
        blx     r1
        b       L2024fa
        .short  0x0000
L202540:
        .word   0x008bf9e4
        .size   A_2024e4, . - A_2024e4

@ FUN_00202544 (Thumb)
        .section .text.A_202544,"ax",%progbits
        .balign 4
        .thumb
        .global A_202544
        .thumb_func
        .type   A_202544, %function
A_202544:
        push    {r4, lr}
        bl      Fn_202478_t
        pop     {r4, pc}
        .size   A_202544, . - A_202544

@ FUN_0020254c (Thumb)
        .section .text.A_20254c,"ax",%progbits
        .balign 4
        .thumb
        .global A_20254c
        .thumb_func
        .type   A_20254c, %function
A_20254c:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        movs    r1, r2
        mov     r8, r8
        mov     r8, r8
        movs    r6, r0
        movs    r0, r5
        bl      Fn_200e60
        movs    r4, r0
        beq     L202570
        movs    r3, r0
        movs    r2, r3
        movs    r1, #0
        movs    r0, r6
        bl      Fn_202670_t
        b       L202572
L202570:
        ldr     r0, L202580
L202572:
        movs    r2, r4
        movs    r1, r5
        str     r0, [r6]
        bl      Fn_2026a2_t
        movs    r0, r6
        pop     {r4, r5, r6, pc}
L202580:
        .word   0x00a7b304
        .size   A_20254c, . - A_20254c

@ FUN_00202584 (Thumb)
        .section .text.A_202584,"ax",%progbits
        .balign 4
        .thumb
        .global A_202584
        .thumb_func
        .type   A_202584, %function
A_202584:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        movs    r5, r1
        mov     r8, r8
        mov     r8, r8
        ldr     r0, [r5]
        movs    r1, r0
        subs    r1, #0xc
        ldr     r2, [r1]
        adds    r2, r2, #1
        beq     L2025a4
        str     r0, [r4]
        subs    r0, #0xc
        bl      Fn_204584_t
        b       L2025bc
L2025a4:
        ldr     r6, [r1, #8]
        movs    r0, r4
        movs    r2, r6
        movs    r1, r6
        bl      Fn_204278_t
        adds    r0, #0xc
        str     r0, [r4]
        ldr     r1, [r5]
        movs    r2, r6
        bl      Fn_2026a2_t
L2025bc:
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_202584, . - A_202584

@ FUN_002025c0 (Thumb)
        .section .text.A_2025c0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2025c0
        .thumb_func
        .type   A_2025c0, %function
A_2025c0:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_2042f8_t
        movs    r0, r4
        pop     {r4, pc}
        .size   A_2025c0, . - A_2025c0

@ FUN_002025cc (Thumb)
        .section .text.A_2025cc,"ax",%progbits
        .balign 4
        .thumb
        .global A_2025cc
        .thumb_func
        .type   A_2025cc, %function
A_2025cc:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0]
        ldr     r1, L2025dc
        bl      Fn_202758_t
        movs    r0, r4
        pop     {r4, pc}
L2025dc:
        .word   0x003025c1
        .size   A_2025cc, . - A_2025cc

@ FUN_002025e0 (Thumb)
        .section .text.A_2025e0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2025e0
        .thumb_func
        .type   A_2025e0, %function
A_2025e0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r6, r0
        movs    r5, r1
        movs    r7, r3
        cmp     r1, #0
        beq     L2025f2
        movs    r4, r1
        b       L2025f4
L2025f2:
        movs    r4, #0x40
L2025f4:
        cmp     r6, #0
        bne     L202600
L2025f8:
        movs    r0, r4
        bl      Fn_202544_t
        movs    r6, r0
L202600:
        ldr     r2, [sp, #0xc]
        movs    r3, r7
        movs    r1, r4
        bl      Fn_000e88_t
        cmp     r0, #0
        bge     L202614
        movs    r0, #0
        strb    r0, [r6]
        b       L202634
L202614:
        cmp     r4, r0
        bge     L20261c
        adds    r4, r0, #1
        b       L202622
L20261c:
        cmp     r4, r0
        bne     L202634
        lsls    r4, r4, #1
L202622:
        cmp     r5, #0
        beq     L20262c
        movs    r0, #0
L202628:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L20262c:
        movs    r0, r6
        bl      Fn_1fcd88
        b       L2025f8
L202634:
        movs    r0, r6
        b       L202628
        .size   A_2025e0, . - A_2025e0

@ FUN_00202638 (Thumb)
        .section .text.A_202638,"ax",%progbits
        .balign 4
        .thumb
        .global A_202638
        .thumb_func
        .type   A_202638, %function
A_202638:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L202658
        ldr     r1, [r0, #0x1c]
        subs    r1, r1, #1
        str     r1, [r0, #0x1c]
        bne     L202658
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L202658
        bl      Fn_203cc0_t
        bl      Fn_2024b0
L202658:
        movs    r0, r4
        pop     {r4, pc}
        .size   A_202638, . - A_202638

@ FUN_0020265c (Thumb)
        .section .text.A_20265c,"ax",%progbits
        .balign 4
        .thumb
        .global A_20265c
        .thumb_func
        .type   A_20265c, %function
A_20265c:
        movs    r2, r1
        movs    r1, r0
        push    {r4, lr}
        ldr     r0, L20266c
        bl      Fn_201f56_t
        pop     {r4, pc}
        .short  0x0000
L20266c:
        .word   0x00a7b2bc
        .size   A_20265c, . - A_20265c

@ FUN_00202670 (Thumb)
        .section .text.A_202670,"ax",%progbits
        .balign 4
        .thumb
        .global A_202670
        .thumb_func
        .type   A_202670, %function
A_202670:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        lsrs    r2, r1, #3
        sub     sp, #8
        movs    r6, r0
        lsrs    r0, r1, #1
        adds    r0, r0, r1
        movs    r5, r3
        adds    r4, r0, r2
        adds    r1, #0x20
        cmp     r1, r4
        bls     L202688
        movs    r4, r1
L202688:
        add     r1, sp, #0x10
        mov     r0, sp
        str     r4, [sp]
        bl      Fn_204244_t
        ldr     r1, [r0]
        movs    r2, r5
        movs    r0, r6
        bl      Fn_204278_t
        adds    r0, #0xc
        add     sp, #0x18
        pop     {r4, r5, r6, pc}
        .size   A_202670, . - A_202670

@ FUN_002026a2 (Thumb)
        .section .text.A_2026a2,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_2026a2
        .thumb_func
        .type   A_2026a2, %function
A_2026a2:
        push    {r4, lr}
        movs    r4, r0
        bl      Fn_202b20
        movs    r0, r4
        pop     {r4, pc}
        .size   A_2026a2, . - A_2026a2

@ FUN_002026b0 (Thumb)
        .section .text.A_2026b0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2026b0
        .thumb_func
        .type   A_2026b0, %function
A_2026b0:
        push    {r3, r4, r5, lr}
        movs    r4, r0
        movs    r5, r1
        movs    r0, r1
        bl      Fn_200e60
        cmp     r0, #0
        beq     L2026d4
        ldr     r1, [r4]
        movs    r3, r5
        subs    r1, #0xc
        ldr     r2, [r1, #8]
        str     r0, [sp]
        movs    r1, #0
        movs    r0, r4
        bl      Fn_2045a8_t
        pop     {r3, r4, r5, pc}
L2026d4:
        ldr     r0, [r4]
        subs    r0, #0xc
        ldr     r1, [r0]
        adds    r1, r1, #1
        cmp     r1, #1
        beq     L2026ee
        movs    r0, r4
        bl      Fn_2042f8_t
        ldr     r0, L2026fc
        str     r0, [r4]
L2026ea:
        movs    r0, r4
        pop     {r3, r4, r5, pc}
L2026ee:
        movs    r1, #0
        str     r1, [r0, #8]
        ldr     r0, [r4]
        mov     r2, sp
        strb    r1, [r2]
        strb    r1, [r0]
        b       L2026ea
L2026fc:
        .word   0x00a7b304
        .size   A_2026b0, . - A_2026b0

@ FUN_00202700 (Thumb)
        .section .text.A_202700,"ax",%progbits
        .balign 4
        .thumb
        .global A_202700
        .thumb_func
        .type   A_202700, %function
A_202700:
        push    {r3, r4, r5, lr}
        movs    r4, r0
        str     r3, [sp]
        movs    r0, r1
        movs    r3, r2
        movs    r2, #8
        movs    r1, r4
        bl      Fn_004500_t
        pop     {r3, r4, r5, pc}
        .size   A_202700, . - A_202700

@ FUN_00202714 (Thumb)
        .section .text.A_202714,"ax",%progbits
        .balign 4
        .thumb
        .global A_202714
        .thumb_func
        .type   A_202714, %function
A_202714:
        push    {r3, r4, r5, lr}
        movs    r4, r0
        ldr     r0, [r1]
        movs    r5, r1
        movs    r3, r0
        subs    r0, #0xc
        ldr     r1, [r0]
        adds    r1, r1, #1
        beq     L202736
        bl      Fn_204584_t
        movs    r0, r4
        bl      Fn_2042f8_t
        ldr     r0, [r5]
        str     r0, [r4]
        b       L20274c
L202736:
        cmp     r4, r5
        beq     L20274c
        ldr     r1, [r4]
        ldr     r0, [r0, #8]
        subs    r1, #0xc
        ldr     r2, [r1, #8]
        str     r0, [sp]
        movs    r1, #0
        movs    r0, r4
        bl      Fn_2045a8_t
L20274c:
        movs    r0, r4
        pop     {r3, r4, r5, pc}
        .size   A_202714, . - A_202714

@ FUN_00202758 (Thumb)
        .section .text.A_202758,"ax",%progbits
        .balign 4
        .thumb
        .global A_202758
        .thumb_func
        .type   A_202758, %function
A_202758:
        push    {r0, r1, r4, lr}
        movs    r4, r0
        bl      Fn_00004c_t
        bl      Fn_1fcd88
        pop     {r2, r3, r4, pc}
        .size   A_202758, . - A_202758

@ FUN_0020277a (Thumb)
        .section .text.A_20277a,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_20277a
        .thumb_func
        .type   A_20277a, %function
A_20277a:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0]
        bl      Fn_1fcd88
        movs    r0, r4
        pop     {r4, pc}
        .size   A_20277a, . - A_20277a

@ FUN_00202788 (Thumb)
        .section .text.A_202788,"ax",%progbits
        .balign 4
        .thumb
        .global A_202788
        .thumb_func
        .type   A_202788, %function
A_202788:
        ldr     r1, L202790
        str     r1, [r0]
        bx      lr
        .short  0x0000
L202790:
        .word   0x0082fedc
        .size   A_202788, . - A_202788

@ FUN_00202794 (Thumb)
        .section .text.A_202794,"ax",%progbits
        .balign 4
        .thumb
        .global A_202794
        .thumb_func
        .type   A_202794, %function
A_202794:
        ldr     r1, L20279c
        str     r1, [r0]
        bx      lr
        .short  0x0000
L20279c:
        .word   0x0082fedc
        .size   A_202794, . - A_202794

@ FUN_002027a0 (Thumb)
        .section .text.A_2027a0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2027a0
        .thumb_func
        .type   A_2027a0, %function
A_2027a0:
        push    {r4, lr}
        mov     r8, r8
        mov     r8, r8
        pop     {r4, pc}
        .size   A_2027a0, . - A_2027a0

@ FUN_002027b8 (Thumb)
        .section .text.A_2027b8,"ax",%progbits
        .balign 4
        .thumb
        .global A_2027b8
        .thumb_func
        .type   A_2027b8, %function
A_2027b8:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r4, r1
        movs    r6, r0
        ldr     r0, [r0, #4]
        cmp     r0, r4
        beq     L202804
        movs    r5, #0
        cmp     r4, #0
        beq     L2027f2
        ldrb    r0, [r4]
        cmp     r0, #0
        beq     L2027f2
        cmp     r2, #0
        beq     L2027f0
        adds    r0, r2, #1
        bne     L2027e0
        movs    r0, r1
        bl      Fn_200e60
        movs    r2, r0
L2027e0:
        adds    r0, r2, #1
        bl      Fn_202544_t
        movs    r5, r0
        movs    r1, r4
        bl      Fn_202a48
        b       L2027f2
L2027f0:
        movs    r5, r1
L2027f2:
        ldr     r0, [r6, #4]
        bl      Fn_1fcd88
        str     r5, [r6, #4]
        b       L202804
        bl      Fn_1fcdbc_t
        bl      Fn_1fd340_t
L202804:
        movs    r0, r6
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .size   A_2027b8, . - A_2027b8

@ FUN_00202808 (Thumb)
        .section .text.A_202808,"ax",%progbits
        .balign 4
        .thumb
        .global A_202808
        .thumb_func
        .type   A_202808, %function
A_202808:
        push    {r4, lr}
        bl      Fn_203074_t
        ldr     r1, L202814
        str     r1, [r0]
        pop     {r4, pc}
L202814:
        .word   0x0082fd30
        .size   A_202808, . - A_202808

@ FUN_00202818 (Thumb)
        .section .text.A_202818,"ax",%progbits
        .balign 4
        .thumb
        .global A_202818
        .thumb_func
        .type   A_202818, %function
A_202818:
        push    {r4, lr}
        bl      Fn_203050_t
        ldr     r1, L202824
        str     r1, [r0]
        pop     {r4, pc}
L202824:
        .word   0x0082fddc
        .size   A_202818, . - A_202818

@ FUN_00202848 (Thumb)
        .section .text.A_202848,"ax",%progbits
        .balign 4
        .thumb
        .global A_202848
        .thumb_func
        .type   A_202848, %function
A_202848:
        push    {r4, lr}
        bl      Fn_203074_t
        ldr     r1, L202854
        str     r1, [r0]
        pop     {r4, pc}
L202854:
        .word   0x0082fd08
        .size   A_202848, . - A_202848

@ FUN_002029e0 (Thumb)
        .section .text.A_2029e0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2029e0
        .thumb_func
        .type   A_2029e0, %function
A_2029e0:
        push    {r4, lr}
        bl      Fn_203170_t
        pop     {r4, pc}
        .size   A_2029e0, . - A_2029e0

@ FUN_002029e8 (Thumb)
        .section .text.A_2029e8,"ax",%progbits
        .balign 4
        .thumb
        .global A_2029e8
        .thumb_func
        .type   A_2029e8, %function
A_2029e8:
        push    {r4, lr}
        bl      Fn_2029e0_t
        pop     {r4, pc}
        .size   A_2029e8, . - A_2029e8

@ FUN_002029f0 (Thumb)
        .section .text.A_2029f0,"ax",%progbits
        .balign 4
        .thumb
        .global A_2029f0
        .thumb_func
        .type   A_2029f0, %function
A_2029f0:
        push    {r4, lr}
        bl      Fn_2029e0_t
        pop     {r4, pc}
        .size   A_2029f0, . - A_2029f0

@ FUN_002029f8 (Thumb)
        .section .text.A_2029f8,"ax",%progbits
        .balign 4
        .thumb
        .global A_2029f8
        .thumb_func
        .type   A_2029f8, %function
A_2029f8:
        push    {r4, lr}
        bl      Fn_2029e0_t
        pop     {r4, pc}
        .size   A_2029f8, . - A_2029f8

@ FUN_00202a00 (Thumb)
        .section .text.A_202a00,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a00
        .thumb_func
        .type   A_202a00, %function
A_202a00:
        push    {r4, lr}
        bl      Fn_2029e0_t
        pop     {r4, pc}
        .size   A_202a00, . - A_202a00

@ FUN_00202a08 (Thumb)
        .section .text.A_202a08,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a08
        .thumb_func
        .type   A_202a08, %function
A_202a08:
        push    {r4, lr}
        bl      Fn_203170_t
        pop     {r4, pc}
        .size   A_202a08, . - A_202a08

@ FUN_00202a10 (Thumb)
        .section .text.A_202a10,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a10
        .thumb_func
        .type   A_202a10, %function
A_202a10:
        push    {r4, lr}
        bl      Fn_202a08_t
        pop     {r4, pc}
        .size   A_202a10, . - A_202a10

@ FUN_00202a18 (Thumb)
        .section .text.A_202a18,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a18
        .thumb_func
        .type   A_202a18, %function
A_202a18:
        push    {r4, lr}
        bl      Fn_202a08_t
        pop     {r4, pc}
        .size   A_202a18, . - A_202a18

@ FUN_00202a20 (Thumb)
        .section .text.A_202a20,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a20
        .thumb_func
        .type   A_202a20, %function
A_202a20:
        push    {r4, lr}
        bl      Fn_202a08_t
        pop     {r4, pc}
        .size   A_202a20, . - A_202a20

@ FUN_00202a28 (Thumb)
        .section .text.A_202a28,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a28
        .thumb_func
        .type   A_202a28, %function
A_202a28:
        push    {r4, lr}
        .size   A_202a28, . - A_202a28

@ FUN_00202a30 (Thumb)
        .section .text.A_202a30,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a30
        .thumb_func
        .type   A_202a30, %function
A_202a30:
        push    {r4, lr}
        bl      Fn_202a40_t
        pop     {r4, pc}
        .size   A_202a30, . - A_202a30

@ FUN_00202a38 (Thumb)
        .section .text.A_202a38,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a38
        .thumb_func
        .type   A_202a38, %function
A_202a38:
        push    {r4, lr}
        bl      Fn_202a40_t
        pop     {r4, pc}
        .size   A_202a38, . - A_202a38

@ FUN_00202a40 (Thumb)
        .section .text.A_202a40,"ax",%progbits
        .balign 4
        .thumb
        .global A_202a40
        .thumb_func
        .type   A_202a40, %function
A_202a40:
        push    {r4, lr}
        bl      Fn_203170_t
        pop     {r4, pc}
        .size   A_202a40, . - A_202a40

@ FUN_00202ab0 (Thumb)
        .section .text.A_202ab0,"ax",%progbits
        .balign 4
        .thumb
        .global A_202ab0
        .thumb_func
        .type   A_202ab0, %function
A_202ab0:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r5, r1
        movs    r6, r2
        movs    r0, r2
        movs    r1, #0
        str     r2, [r4]
        bl      Fn_20265c_t
        cmp     r0, #0
        str     r0, [r4, #4]
        beq     L202adc
        bl      Fn_200e60
        adds    r0, r0, #1
        bl      Fn_202544_t
        ldr     r1, [r4, #4]
        movs    r7, r0
        bl      Fn_202a48
        str     r7, [r4, #4]
L202adc:
        movs    r1, r5
        movs    r0, r6
        bl      Fn_20265c_t
        movs    r0, r4
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_202ab0, . - A_202ab0

@ FUN_00202ae8 (Thumb)
        .section .text.A_202ae8,"ax",%progbits
        .balign 4
        .thumb
        .global A_202ae8
        .thumb_func
        .type   A_202ae8, %function
A_202ae8:
        push    {r4, lr}
        ldr     r1, [r0, #4]
        movs    r4, r0
        cmp     r1, #0
        beq     L202afe
        ldr     r0, [r4]
        bl      Fn_20265c_t
        ldr     r0, [r4, #4]
        bl      Fn_1fcd88
L202afe:
        movs    r0, r4
        pop     {r4, pc}
        .size   A_202ae8, . - A_202ae8

@ FUN_00202b02 (Thumb)
        .section .text.A_202b02,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_202b02
        .thumb_func
        .type   A_202b02, %function
A_202b02:
        adds    r0, r0, #4
        push    {r4, lr}
        bl      Fn_2025c0_t
        subs    r0, r0, #4
        pop     {r4, pc}
        .size   A_202b02, . - A_202b02

@ FUN_00202ba8 (Thumb)
        .section .text.A_202ba8,"ax",%progbits
        .balign 4
        .thumb
        .global A_202ba8
        .thumb_func
        .type   A_202ba8, %function
A_202ba8:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r5, r0
        movs    r4, r2
        movs    r6, r1
        movs    r0, r1
        bl      Fn_200e60
        movs    r7, r0
        bl      Fn_1fe034
        ldr     r1, [r0]
        ldr     r0, [r1]
        cmp     r0, #0
        beq     L202be0
        adds    r1, r1, r0
        cmp     r4, #0
        beq     L202bdc
L202bca:
        ldrb    r0, [r6]
        adds    r6, r6, #1
        cmp     r0, #0
        beq     L202bf4
        ldrb    r0, [r1, r0]
        strb    r0, [r5]
        adds    r5, r5, #1
        subs    r4, r4, #1
        bne     L202bca
L202bdc:
        movs    r0, r7
        pop     {r3, r4, r5, r6, r7, pc}
L202be0:
        cmp     r4, #0
        beq     L202bdc
        ldrb    r0, [r6]
        adds    r6, r6, #1
        strb    r0, [r5]
        adds    r5, r5, #1
        cmp     r0, #0
        beq     L202bdc
        subs    r4, r4, #1
        b       L202be0
L202bf4:
        movs    r0, #0
        strb    r0, [r5]
        b       L202bdc
        .size   A_202ba8, . - A_202ba8

@ FUN_00202bfc (Thumb)
        .section .text.A_202bfc,"ax",%progbits
        .balign 4
        .thumb
        .global A_202bfc
        .thumb_func
        .type   A_202bfc, %function
A_202bfc:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r4, r2
        movs    r6, r1
        movs    r1, r3
        mov     r8, r8
        mov     r8, r8
        movs    r5, r0
        movs    r0, #0xe
        mvns    r0, r0
        cmp     r4, r0
        bls     L202c20
        str     r0, [sp]
        movs    r3, r4
        movs    r0, #8
        adr     r2, #0x38
        adr     r1, #0x38
        bl      Fn_2024e4_t
L202c20:
        cmp     r4, #0
        beq     L202c50
        movs    r0, #0x20
        str     r0, [sp, #4]
        mov     r1, sp
        add     r0, sp, #4
        str     r4, [sp]
        bl      Fn_204244_t
        ldr     r1, [r0]
        movs    r2, r4
        movs    r0, r5
        bl      Fn_204278_t
L202c3c:
        adds    r0, #0xc
        cmp     r6, #0
        str     r0, [r5]
        beq     L202c4c
        movs    r2, r4
        movs    r1, r6
        bl      Fn_2026a2_t
L202c4c:
        movs    r0, r5
        pop     {r2, r3, r4, r5, r6, pc}
L202c50:
        ldr     r0, L202c58
        b       L202c3c
        .short  0x0000
        .short  0x0000
L202c58:
        .word   0x00a7b2f8
        .size   A_202bfc, . - A_202bfc

@ FUN_00202c5c (Thumb)
        .section .text.A_202c5c,"ax",%progbits
        .balign 4
        .thumb
        .global A_202c5c
        .thumb_func
        .type   A_202c5c, %function
A_202c5c:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r6, #0
        ldr     r0, [r0]
        mvns    r6, r6
        subs    r0, #0xc
        ldr     r1, [r0]
        adds    r1, r1, #1
        cmp     r1, #1
        bls     L202c9a
        ldr     r1, [r0, #8]
        movs    r5, r4
        movs    r2, r1
        cmp     r1, r6
        bls     L202c7c
        movs    r2, r6
L202c7c:
        movs    r0, r4
        bl      Fn_204278_t
        ldr     r1, [r5]
        adds    r0, #0xc
        movs    r2, r1
        subs    r2, #0xc
        ldr     r2, [r2, #8]
        movs    r7, r0
        bl      Fn_2026a2_t
        movs    r0, r5
        bl      Fn_2042f8_t
        str     r7, [r5]
L202c9a:
        ldr     r0, [r4]
        ldr     r1, L202cac
        subs    r0, #0xc
        cmp     r0, r1
        beq     L202ca6
        str     r6, [r0]
L202ca6:
        ldr     r0, [r4]
        pop     {r3, r4, r5, r6, r7, pc}
        .short  0x0000
L202cac:
        .word   0x00a7b2f8
        .size   A_202c5c, . - A_202c5c

@ FUN_00202cd0 (Thumb)
        .section .text.A_202cd0,"ax",%progbits
        .balign 4
        .thumb
        .global A_202cd0
        .thumb_func
        .type   A_202cd0, %function
A_202cd0:
        ldr     r0, L202d00
        push    {r4, lr}
        ldr     r0, [r0]
        lsls    r0, r0, #0x1f
        bne     L202cfa
        ldr     r0, L202d00
        bl      Fn_203d64_t
        cmp     r0, #0
        beq     L202cfa
        ldr     r0, L202d04
        movs    r1, #0
        str     r1, [r0]
        str     r1, [r0, #4]
        ldr     r2, L202d08
        ldr     r1, L202d0c
        bl      Fn_203d78
        ldr     r0, L202d00
        mov     r8, r8
        mov     r8, r8
L202cfa:
        ldr     r0, L202d04
        pop     {r4, pc}
        .short  0x0000
L202d00:
        .word   0x008bfb70
L202d04:
        .word   0x008bfb74
L202d08:
        .word   0x00100000
L202d0c:
        .word   0x00104729
        .size   A_202cd0, . - A_202cd0

@ FUN_00202e5c (Thumb)
        .section .text.A_202e5c,"ax",%progbits
        .balign 4
        .thumb
        .global A_202e5c
        .thumb_func
        .type   A_202e5c, %function
A_202e5c:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        ldr     r1, [r0]
        movs    r4, r0
        ldr     r0, [r5]
        cmp     r1, r0
        beq     L202e8c
        ldr     r1, [r0, #0x1c]
        adds    r1, r1, #1
        str     r1, [r0, #0x1c]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x1c]
        subs    r1, r1, #1
        str     r1, [r0, #0x1c]
        bne     L202e88
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L202e88
        bl      Fn_203cc0_t
        bl      Fn_2024b0
L202e88:
        ldr     r0, [r5]
        str     r0, [r4]
L202e8c:
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_202e5c, . - A_202e5c

@ FUN_00202e90 (Thumb)
        .section .text.A_202e90,"ax",%progbits
        .balign 4
        .thumb
        .global A_202e90
        .thumb_func
        .type   A_202e90, %function
A_202e90:
        push    {r4, lr}
        ldr     r4, L202ecc
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        bne     L202e9e
        bl      Fn_203cdc_t
L202e9e:
        ldr     r0, [r4]
        lsls    r0, r0, #0x1f
        bne     L202ec6
        ldr     r0, L202ecc
        bl      Fn_203d64_t
        cmp     r0, #0
        beq     L202ec6
        ldr     r0, L202ecc
        ldr     r1, [r4, #8]
        adds    r0, r0, #4
        bl      Fn_202f30_t
        ldr     r2, L202ed0
        ldr     r1, L202ed4
        bl      Fn_203d78
        ldr     r0, L202ecc
        mov     r8, r8
        mov     r8, r8
L202ec6:
        ldr     r0, L202ecc
        adds    r0, r0, #4
        pop     {r4, pc}
L202ecc:
        .word   0x008bf9c8
L202ed0:
        .word   0x00100000
L202ed4:
        .word   0x00302639
        .size   A_202e90, . - A_202e90

@ FUN_00202ed8 (Thumb)
        .section .text.A_202ed8,"ax",%progbits
        .balign 4
        .thumb
        .global A_202ed8
        .thumb_func
        .type   A_202ed8, %function
A_202ed8:
        ldr     r0, [r0, #0x14]
        lsls    r2, r2, #1
        ldrh    r0, [r0, r2]
        ands    r0, r1
        beq     L202ee4
        movs    r0, #1
L202ee4:
        bx      lr
        .size   A_202ed8, . - A_202ed8

@ FUN_00202ee6 (Thumb)
        .section .text.A_202ee6,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_202ee6
        .thumb_func
        .type   A_202ee6, %function
A_202ee6:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r5, r1
        lsls    r0, r1, #2
        bl      Fn_202544_t
        ldr     r2, [r4, #4]
        movs    r6, r0
        cmp     r2, r5
        blo     L202efc
        movs    r2, r5
L202efc:
        movs    r1, r6
        ldr     r0, [r4]
        lsls    r3, r2, #2
        b       L202f08
L202f04:
        ldm     r0!, {r7}
        stm     r1!, {r7}
L202f08:
        ldr     r7, [r4]
        adds    r7, r7, r3
        cmp     r7, r0
        bne     L202f04
        b       L202f1c
L202f12:
        ldr     r0, [sp, #8]
        lsls    r1, r2, #2
        ldr     r0, [r0]
        adds    r2, r2, #1
        str     r0, [r6, r1]
L202f1c:
        cmp     r2, r5
        blo     L202f12
        ldr     r0, [r4]
        bl      Fn_1fcd88
        str     r6, [r4]
        movs    r0, r6
        str     r5, [r4, #4]
        pop     {r1, r2, r3, r4, r5, r6, r7, pc}
        .size   A_202ee6, . - A_202ee6

@ FUN_00202f30 (Thumb)
        .section .text.A_202f30,"ax",%progbits
        .balign 4
        .thumb
        .global A_202f30
        .thumb_func
        .type   A_202f30, %function
A_202f30:
        push    {r4, lr}
        movs    r4, r0
        str     r1, [r0]
        ldr     r0, L202f50
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        bne     L202f42
        bl      Fn_203cdc_t
L202f42:
        ldr     r1, [r4]
        ldr     r0, [r1, #0x1c]
        adds    r0, r0, #1
        str     r0, [r1, #0x1c]
        movs    r0, r4
        pop     {r4, pc}
        .short  0x0000
L202f50:
        .word   0x008bf9c8
        .size   A_202f30, . - A_202f30

@ FUN_00202f54 (Thumb)
        .section .text.A_202f54,"ax",%progbits
        .balign 4
        .thumb
        .global A_202f54
        .thumb_func
        .type   A_202f54, %function
A_202f54:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r5, r0
        movs    r4, r1
        ldr     r0, [r1, #8]
        movs    r6, r2
        lsls    r0, r0, #0x1f
        bne     L202f84
        ldr     r0, [r6]
        cmp     r0, #0
        bne     L202f72
        ldr     r1, L202fd0
        ldr     r0, [r1]
        adds    r0, r0, #1
        str     r0, [r1]
        str     r0, [r6]
L202f72:
        ldr     r0, [r4]
        movs    r1, r5
        ldr     r2, [r0, #8]
        movs    r0, r4
        blx     r2
        ldr     r0, [r4, #8]
        movs    r1, #1
        orrs    r0, r1
        str     r0, [r4, #8]
L202f84:
        ldr     r0, [r5]
        ldr     r6, [r6]
        adds    r0, #8
        ldr     r1, [r0, #4]
        cmp     r1, r6
        bhi     L202f9c
        movs    r1, #0
        str     r1, [sp]
        adds    r1, r6, #1
        mov     r2, sp
        bl      Fn_202ee6_t
L202f9c:
        ldr     r0, [r5]
        movs    r1, r6
        adds    r0, #8
        bl      Fn_203010_t
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L202fba
        ldr     r1, [r0, #0xc]
        subs    r1, r1, #1
        str     r1, [r0, #0xc]
        bne     L202fba
        ldr     r1, [r0]
        ldr     r1, [r1, #4]
        blx     r1
L202fba:
        ldr     r0, [r4, #0xc]
        movs    r1, r6
        adds    r0, r0, #1
        str     r0, [r4, #0xc]
        ldr     r0, [r5]
        adds    r0, #8
        bl      Fn_203010_t
        str     r4, [r0]
        pop     {r3, r4, r5, r6, r7, pc}
        .short  0x0000
L202fd0:
        .word   0x008bfb6c
        .size   A_202f54, . - A_202f54

@ FUN_00203010 (Thumb)
        .section .text.A_203010,"ax",%progbits
        .balign 4
        .thumb
        .global A_203010
        .thumb_func
        .type   A_203010, %function
A_203010:
        ldr     r0, [r0]
        lsls    r1, r1, #2
        adds    r0, r0, r1
        bx      lr
        .size   A_203010, . - A_203010

@ FUN_00203050 (Thumb)
        .section .text.A_203050,"ax",%progbits
        .balign 4
        .thumb
        .global A_203050
        .thumb_func
        .type   A_203050, %function
A_203050:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        bl      Fn_202788_t
        movs    r4, r0
        ldr     r0, L203070
        str     r0, [r4]
        movs    r0, #0
        subs    r2, r0, #1
        str     r0, [r4, #4]
        movs    r1, r5
        movs    r0, r4
        bl      Fn_2027b8_t
        movs    r0, r4
        pop     {r4, r5, r6, pc}
L203070:
        .word   0x0082fdf0
        .size   A_203050, . - A_203050

@ FUN_00203074 (Thumb)
        .section .text.A_203074,"ax",%progbits
        .balign 4
        .thumb
        .global A_203074
        .thumb_func
        .type   A_203074, %function
A_203074:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        bl      Fn_202794_t
        movs    r4, r0
        ldr     r0, L2030a0
        str     r0, [r4]
        movs    r0, #0
        str     r0, [r4, #4]
        ldr     r0, [r5]
        ldr     r1, [r0, #8]
        movs    r0, r5
        blx     r1
        movs    r1, r0
        movs    r2, #0
        mvns    r2, r2
        movs    r0, r4
        bl      Fn_2027b8_t
        movs    r0, r4
        pop     {r4, r5, r6, pc}
        .short  0x0000
L2030a0:
        .word   0x0082fdf0
        .size   A_203074, . - A_203074

@ FUN_00203170 (Thumb)
        .section .text.A_203170,"ax",%progbits
        .balign 4
        .thumb
        .global A_203170
        .thumb_func
        .type   A_203170, %function
A_203170:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, L203188
        str     r0, [r4]
        ldr     r0, [r4, #4]
        bl      Fn_1fcd88
        movs    r0, r4
        mov     r8, r8
        mov     r8, r8
        pop     {r4, pc}
        .short  0x0000
L203188:
        .word   0x0082fdf0
        .size   A_203170, . - A_203170

@ FUN_0020318c (Thumb)
        .section .text.A_20318c,"ax",%progbits
        .balign 4
        .thumb
        .global A_20318c
        .thumb_func
        .type   A_20318c, %function
A_20318c:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r4, r0
        movs    r0, #0x20
        str     r0, [r4, #4]
        movs    r0, #0
        str     r3, [r4, #0xc]
        .short  0x4b47
        str     r0, [r4, #8]
        str     r3, [r4]
        str     r1, [r4, #0x14]
        cmp     r1, #0
        strb    r2, [r4, #0x18]
        bne     L2031ac
        .short  0x4945
        str     r1, [r4, #0x14]
        strb    r0, [r4, #0x18]
L2031ac:
        movs    r5, #0
        movs    r6, #0xff
L2031b0:
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L2031d4
        b       L2031da
L2031c2:
        lsls    r2, r6, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L2031e0
        subs    r6, r6, #1
L2031d4:
        cmp     r6, r5
        bhi     L2031c2
        b       L2031e0
L2031da:
        adds    r5, r5, #1
        cmp     r5, r6
        blo     L2031b0
L2031e0:
        subs    r0, r6, r5
        str     r6, [r4, #0x20]
        adds    r0, r0, #1
        str     r5, [r4, #0x1c]
        bl      Fn_202544_t
        movs    r7, r0
        str     r0, [r4, #0x2c]
        b       L20322c
L2031f2:
        movs    r0, r5
        subs    r0, #0x61
        cmp     r0, #0x19
        bhi     L203224
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L203224
        movs    r0, r5
        subs    r0, #0x20
        lsls    r2, r0, #0x18
        str     r0, [sp]
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L203224
        ldr     r0, [sp]
        b       L203226
L203224:
        movs    r0, r5
L203226:
        strb    r0, [r7]
        adds    r7, r7, #1
        adds    r5, r5, #1
L20322c:
        cmp     r5, r6
        bls     L2031f2
        movs    r5, #0
        movs    r6, #0xff
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        bne     L203258
        .short  0xe00b
L203246:
        lsls    r2, r6, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        .short  0xd106
        subs    r6, r6, #1
L203258:
        cmp     r6, r5
        bhi     L203246
        .short  0xe002
        .size   A_20318c, . - A_20318c

@ FUN_0020325e (Thumb)
        .section .text.A_20325e,"ax",%progbits
        .balign 4
        .thumb
        .short  0          @ padding: retail starts this function at 2 mod 4
        .global A_20325e
        .thumb_func
        .type   A_20325e, %function
A_20325e:
        adds    r5, r5, #1
        cmp     r5, r6
        .short  0xd3e7
        subs    r0, r6, r5
        str     r6, [r4, #0x28]
        adds    r0, r0, #1
        str     r5, [r4, #0x24]
        bl      Fn_202544_t
        movs    r7, r0
        str     r0, [r4, #0x30]
        b       L2032b0
L203276:
        movs    r0, r5
        subs    r0, #0x41
        cmp     r0, #0x19
        bhi     L2032a8
        lsls    r2, r5, #0x18
        lsrs    r2, r2, #0x18
        movs    r1, #8
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L2032a8
        movs    r0, r5
        adds    r0, #0x20
        lsls    r2, r0, #0x18
        str     r0, [sp]
        lsrs    r2, r2, #0x18
        movs    r1, #0x10
        movs    r0, r4
        bl      Fn_202ed8_t
        cmp     r0, #0
        beq     L2032a8
        ldr     r0, [sp]
        b       L2032aa
L2032a8:
        movs    r0, r5
L2032aa:
        strb    r0, [r7]
        adds    r7, r7, #1
        adds    r5, r5, #1
L2032b0:
        cmp     r5, r6
        bls     L203276
        movs    r0, r4
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_20325e, . - A_20325e

@ FUN_00203358 (Thumb)
        .section .text.A_203358,"ax",%progbits
        .balign 4
        .thumb
        .global A_203358
        .thumb_func
        .type   A_203358, %function
A_203358:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, L20337c
        str     r0, [r4]
        ldrb    r0, [r4, #0x18]
        cmp     r0, #0
        beq     L20336c
        ldr     r0, [r4, #0x14]
        bl      Fn_1fcd88
L20336c:
        ldr     r0, [r4, #0x2c]
        bl      Fn_1fcd88
        ldr     r0, [r4, #0x30]
        bl      Fn_1fcd88
        movs    r0, r4
        pop     {r4, pc}
L20337c:
        .word   0x0082fe60
        .size   A_203358, . - A_203358

@ FUN_00203b48 (Thumb)
        .section .text.A_203b48,"ax",%progbits
        .balign 4
        .thumb
        .global A_203b48
        .thumb_func
        .type   A_203b48, %function
A_203b48:
        subs    r2, r0, #1
L203b4a:
        adds    r2, r2, #1
        ldrb    r3, [r2]
        cmp     r3, #0
        bne     L203b4a
L203b52:
        ldrb    r3, [r1]
        adds    r1, r1, #1
        strb    r3, [r2]
        adds    r2, r2, #1
        cmp     r3, #0
        bne     L203b52
        bx      lr
        .size   A_203b48, . - A_203b48

@ FUN_00203b60 (Thumb)
        .section .text.A_203b60,"ax",%progbits
        .balign 4
        .thumb
        .global A_203b60
        .thumb_func
        .type   A_203b60, %function
A_203b60:
        push    {r2, r3, r4, r5, r6, lr}
        movs    r4, r1
        movs    r5, r0
        ldr     r0, [r1]
        ldr     r0, [r0, #0x18]
        cmp     r0, #0
        beq     L203b82
        mov     r0, sp
        mov     r8, r8
        mov     r8, r8
        movs    r2, r0
        ldr     r0, [r4]
        ldr     r1, [r0, #0x18]
L203b7a:
        movs    r0, r5
        bl      Fn_20254c_t
        pop     {r2, r3, r4, r5, r6, pc}
L203b82:
        add     r0, sp, #4
        mov     r8, r8
        mov     r8, r8
        movs    r2, r0
        adr     r1, #4
        b       L203b7a
        .size   A_203b60, . - A_203b60

@ FUN_00203b94 (Thumb)
        .section .text.A_203b94,"ax",%progbits
        .balign 4
        .thumb
        .global A_203b94
        .thumb_func
        .type   A_203b94, %function
A_203b94:
        cmp     r0, #8
        beq     L203bc6
        bgt     L203ba8
        cmp     r0, #1
        beq     L203bbe
        cmp     r0, #2
        beq     L203bba
        cmp     r0, #4
        bne     L203bb0
        b       L203bc2
L203ba8:
        cmp     r0, #0x10
        beq     L203bca
        cmp     r0, #0x1f
        beq     L203bb4
L203bb0:
        movs    r0, #0
        bx      lr
L203bb4:
        movs    r0, #0x3f
        lsls    r0, r0, #4
        bx      lr
L203bba:
        movs    r0, #0x20
        bx      lr
L203bbe:
        movs    r0, #0x10
        bx      lr
L203bc2:
        movs    r0, #0x40
        bx      lr
L203bc6:
        movs    r0, #0x80
        bx      lr
L203bca:
        movs    r0, #0xff
        adds    r0, #1
        bx      lr
        .size   A_203b94, . - A_203b94

@ FUN_00203bd0 (Thumb)
        .section .text.A_203bd0,"ax",%progbits
        .balign 4
        .thumb
        .global A_203bd0
        .thumb_func
        .type   A_203bd0, %function
A_203bd0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #0x1c
        movs    r4, r2
        movs    r7, r0
        movs    r0, #0
        movs    r5, r7
        adds    r5, #8
        movs    r6, r0
        str     r0, [r7]
        cmp     r2, #0
        str     r0, [r7, #4]
        beq     L203bf0
        lsls    r0, r4, #2
        bl      Fn_202544_t
        b       L203bf2
L203bf0:
        movs    r0, #0
L203bf2:
        str     r4, [r5, #4]
        str     r0, [r5]
        b       L203c04
L203bf8:
        movs    r0, r4
        ldr     r1, [r5]
        subs    r4, r4, #1
        lsls    r0, r0, #2
        subs    r0, r0, #4
        str     r6, [r1, r0]
L203c04:
        cmp     r4, #0
        bne     L203bf8
        movs    r0, #0
        str     r0, [r5, #8]
        str     r0, [r5, #0xc]
        str     r0, [r5, #0x10]
        ldr     r0, [sp, #0x28]
        str     r0, [r5, #0x14]
        ldr     r0, [sp, #0x20]
        movs    r4, r5
        subs    r4, #8
        cmp     r0, #0
        beq     L203c34
        bl      Fn_200e60
        adds    r5, r0, #1
        movs    r0, r5
        bl      Fn_202544_t
        ldr     r1, [sp, #0x20]
        movs    r2, r5
        bl      Fn_1fe154
        str     r0, [r4, #0x18]
L203c34:
        movs    r0, #6
        str     r0, [sp]
        add     r0, sp, #0x14
        mov     r8, r8
        mov     r8, r8
        movs    r1, r0
        add     r0, sp, #8
        bl      Fn_2020a0_t
        str     r0, [sp, #0xc]
        ldr     r3, L203cb0
        ldr     r2, L203cb4
        ldr     r1, [sp]
        movs    r0, #4
        bl      Fn_202700_t
        ldr     r5, [r4, #4]
        movs    r7, r0
        cmp     r5, #6
        blo     L203c5e
        ldr     r5, [sp]
L203c5e:
        ldr     r6, [r4]
        lsls    r0, r5, #2
        str     r7, [sp, #4]
        str     r0, [sp, #0x10]
        b       L203c78
L203c68:
        ldr     r0, [sp, #4]
        movs    r1, r6
        bl      Fn_202714_t
        ldr     r0, [sp, #4]
        adds    r6, r6, #4
        adds    r0, r0, #4
        str     r0, [sp, #4]
L203c78:
        ldr     r1, [r4]
        ldr     r0, [sp, #0x10]
        adds    r0, r1, r0
        cmp     r0, r6
        bne     L203c68
        b       L203c90
L203c84:
        lsls    r0, r5, #2
        ldr     r1, [sp, #0xc]
        adds    r0, r0, r7
        adds    r5, r5, #1
        bl      Fn_202714_t
L203c90:
        ldr     r0, [sp]
        cmp     r5, r0
        blo     L203c84
        ldr     r1, L203cb0
        ldr     r0, [r4]
        bl      Fn_202758_t
        ldr     r0, [sp]
        str     r7, [r4]
        str     r0, [r4, #4]
        add     r0, sp, #8
        bl      Fn_2025c0_t
        movs    r0, r4
        add     sp, #0x2c
        pop     {r4, r5, r6, r7, pc}
L203cb0:
        .word   0x003025c1
L203cb4:
        .word   0x00102c79
        .size   A_203bd0, . - A_203bd0

@ FUN_00203cb8 (Thumb)
        .section .text.A_203cb8,"ax",%progbits
        .balign 4
        .thumb
        .global A_203cb8
        .thumb_func
        .type   A_203cb8, %function
A_203cb8:
        ldr     r0, [r0]
        lsls    r1, r1, #2
        adds    r0, r0, r1
        bx      lr
        .size   A_203cb8, . - A_203cb8

@ FUN_00203cc0 (Thumb)
        .section .text.A_203cc0,"ax",%progbits
        .balign 4
        .thumb
        .global A_203cc0
        .thumb_func
        .type   A_203cc0, %function
A_203cc0:
        push    {r4, lr}
        movs    r4, r0
        ldr     r0, [r0, #0x18]
        bl      Fn_1fcd88
        movs    r0, r4
        adds    r0, #8
        bl      Fn_20277a_t
        subs    r0, #8
        bl      Fn_2025cc_t
        pop     {r4, pc}
        .size   A_203cc0, . - A_203cc0

@ FUN_00203cdc (Thumb)
        .section .text.A_203cdc,"ax",%progbits
        .balign 4
        .thumb
        .global A_203cdc
        .thumb_func
        .type   A_203cdc, %function
A_203cdc:
        push    {r4, r5, r6, lr}
        ldr     r6, L203d58
        ldr     r0, [r6, #0x10]
        cmp     r0, #0
        bne     L203d38
        movs    r0, #0x20
        bl      Fn_202478_t
        movs    r4, r0
        movs    r3, #2
        movs    r2, #0xa
        adr     r1, #0x68
        bl      Fn_203bd0_t
        movs    r5, #0
        movs    r4, #0x10
        str     r0, [r6, #8]
        b       L203d14
L203d00:
        ldr     r0, [r6, #8]
        movs    r1, r5
        bl      Fn_203cb8_t
        ldr     r1, [r6, #8]
        ldr     r1, [r1, #0x18]
        bl      Fn_2026b0_t
        adds    r5, r5, #1
        lsls    r4, r4, #1
L203d14:
        lsls    r0, r4, #0x16
        lsrs    r0, r0, #0x1a
        bne     L203d00
        movs    r0, #0x20
        bl      Fn_202478_t
        movs    r4, r0
        movs    r3, #1
        movs    r2, #0xa
        adr     r1, #0x38
        bl      Fn_203bd0_t
        movs    r1, #0x3f
        lsls    r1, r1, #4
        str     r0, [r6, #0xc]
        str     r1, [r0, #0x10]
        ldr     r0, [r6, #8]
        str     r0, [r6, #0x10]
L203d38:
        pop     {r4, r5, r6, pc}
        .short  0xf7f9
        .short  0xf83f
        .short  0x68b0
        .short  0x2800
        .short  0xd003
        .short  0xf7ff
        .short  0xffbc
        .short  0xf7fe
        .short  0xebb2
        .short  0x2000
        .short  0x6130
        .short  0x60b0
        .short  0xf7f9
        .short  0xfaf5
        .short  0xbd70
L203d58:
        .word   0x008bf9c8
        .size   A_203cdc, . - A_203cdc

@ FUN_00203d64 (Thumb)
        .section .text.A_203d64,"ax",%progbits
        .balign 4
        .thumb
        .global A_203d64
        .thumb_func
        .type   A_203d64, %function
A_203d64:
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L203d6e
        movs    r0, #0
        bx      lr
L203d6e:
        movs    r1, #1
        str     r1, [r0]
        movs    r0, r1
        bx      lr
        .size   A_203d64, . - A_203d64

@ FUN_00203d7c (Thumb)
        .section .text.A_203d7c,"ax",%progbits
        .balign 4
        .thumb
        .global A_203d7c
        .thumb_func
        .type   A_203d7c, %function
A_203d7c:
        push    {r0, r1, r4, r5, r6, r7, lr}
        movs    r4, r0
        sub     sp, #0xc
        movs    r1, #0
        movs    r0, #0x1f
        mov     r5, sp
        bl      Fn_20265c_t
        movs    r6, r0
        add     r0, sp, #4
        mov     r8, r8
        mov     r8, r8
        movs    r1, r0
        movs    r0, r5
        mov     r8, r8
        mov     r8, r8
        movs    r7, r0
        movs    r0, r6
        bl      Fn_200e60
        movs    r5, r0
        beq     L203db6
        movs    r3, r0
        movs    r2, r3
        movs    r1, #0
        movs    r0, r7
        bl      Fn_202670_t
        b       L203db8
L203db6:
        ldr     r0, L203e44
L203db8:
        movs    r2, r5
        movs    r1, r6
        str     r0, [r7]
        bl      Fn_2026a2_t
        ldr     r1, [sp, #0x10]
        movs    r0, #0x1f
        bl      Fn_20265c_t
        cmp     r0, #0
        beq     L203e3a
        ldr     r1, [sp, #0x10]
        movs    r0, #1
        bl      Fn_20265c_t
        movs    r1, r0
        ldr     r0, [r4]
        bl      Fn_2026b0_t
        ldr     r1, [sp, #0x10]
        movs    r0, #2
        bl      Fn_20265c_t
        movs    r1, r0
        ldr     r0, [r4]
        adds    r0, r0, #4
        bl      Fn_2026b0_t
        ldr     r1, [sp, #0x10]
        movs    r0, #4
        bl      Fn_20265c_t
        movs    r1, r0
        ldr     r0, [r4]
        adds    r0, #8
        bl      Fn_2026b0_t
        ldr     r1, [sp, #0x10]
        movs    r0, #8
        bl      Fn_20265c_t
        movs    r1, r0
        ldr     r0, [r4]
        adds    r0, #0xc
        bl      Fn_2026b0_t
        ldr     r1, [sp, #0x10]
        movs    r0, #0x10
        bl      Fn_20265c_t
        movs    r1, r0
        ldr     r0, [r4]
        adds    r0, #0x10
        bl      Fn_2026b0_t
        ldr     r1, [sp]
        movs    r0, #0x1f
        bl      Fn_20265c_t
        mov     r0, sp
        bl      Fn_2025c0_t
        movs    r0, #1
L203e36:
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L203e3a:
        mov     r0, sp
        bl      Fn_2025c0_t
        movs    r0, #0
        b       L203e36
L203e44:
        .word   0x00a7b304
        .size   A_203d7c, . - A_203d7c

@ FUN_00203e48 (Thumb)
        .section .text.A_203e48,"ax",%progbits
        .balign 4
        .thumb
        .global A_203e48
        .thumb_func
        .type   A_203e48, %function
A_203e48:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, lr}
        sub     sp, #4
        movs    r5, r1
        movs    r7, r0
        ldr     r1, [r1, #4]
        movs    r6, r2
        cmp     r1, #0
        beq     L203e64
        ldr     r3, L203ef4
        ldr     r2, L203ef8
        movs    r0, #4
        bl      Fn_202700_t
        b       L203e66
L203e64:
        movs    r0, #0
L203e66:
        str     r0, [r7]
        ldr     r4, [r5, #4]
        str     r4, [r7, #4]
        b       L203e7c
L203e6e:
        ldr     r1, [r5]
        ldr     r2, [r7]
        lsls    r0, r4, #2
        adds    r1, r1, r0
        adds    r0, r2, r0
        bl      Fn_202714_t
L203e7c:
        subs    r4, r4, #1
        bhs     L203e6e
        ldr     r0, [r5, #0xc]
        movs    r4, r7
        adds    r4, #8
        cmp     r0, #0
        beq     L203e90
        lsls    r0, r0, #2
        bl      Fn_202544_t
L203e90:
        str     r0, [r4]
        ldr     r0, [r5, #0xc]
        str     r0, [r4, #4]
        b       L203ea2
L203e98:
        ldr     r2, [r5, #8]
        ldr     r3, [r4]
        lsls    r1, r0, #2
        ldr     r2, [r2, r1]
        str     r2, [r3, r1]
L203ea2:
        subs    r0, r0, #1
        bhs     L203e98
        ldr     r0, [r5, #0x10]
        subs    r4, #8
        str     r0, [r4, #0x10]
        ldr     r0, [r5, #0x14]
        str     r0, [r4, #0x14]
        movs    r0, #0
        str     r0, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        cmp     r6, #0
        str     r0, [r4, #0x1c]
        beq     L203ed4
        movs    r0, r6
        bl      Fn_200e60
        adds    r0, r0, #1
        movs    r5, r0
        bl      Fn_202544_t
        movs    r2, r5
        movs    r1, r6
        bl      Fn_1fe154
        str     r0, [r4, #0x18]
L203ed4:
        ldr     r0, [r4, #0xc]
        b       L203eea
L203ed8:
        ldr     r1, [r4, #8]
        lsls    r2, r0, #2
        adds    r1, r1, r2
        ldr     r1, [r1]
        cmp     r1, #0
        beq     L203eea
        ldr     r2, [r1, #0xc]
        adds    r2, r2, #1
        str     r2, [r1, #0xc]
L203eea:
        subs    r0, r0, #1
        bhs     L203ed8
        movs    r0, r4
        add     sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L203ef4:
        .word   0x003025c1
L203ef8:
        .word   0x00102c79
        .size   A_203e48, . - A_203e48

@ FUN_00203efc (Thumb)
        .section .text.A_203efc,"ax",%progbits
        .balign 4
        .thumb
        .global A_203efc
        .thumb_func
        .type   A_203efc, %function
A_203efc:
        push    {r3, r4, r5, r6, r7, lr}
        movs    r5, r1
        movs    r6, r0
        lsls    r0, r1, #0x1c
        beq     L203f0e
        movs    r0, r1
        bl      Fn_203b94_t
        movs    r5, r0
L203f0e:
        ldr     r0, [r6]
        movs    r4, #0
        ldr     r7, [r0, #0xc]
        b       L203f4a
L203f16:
        ldr     r0, [r6]
        movs    r1, r4
        adds    r0, #8
        bl      Fn_203010_t
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L203f48
        ldr     r1, [r0, #4]
        tst     r1, r5
        beq     L203f48
        ldr     r1, [r0, #0xc]
        subs    r1, r1, #1
        str     r1, [r0, #0xc]
        bne     L203f3a
        ldr     r1, [r0]
        ldr     r1, [r1, #4]
        blx     r1
L203f3a:
        ldr     r0, [r6]
        movs    r1, r4
        adds    r0, #8
        bl      Fn_203010_t
        movs    r1, #0
        str     r1, [r0]
L203f48:
        adds    r4, r4, #1
L203f4a:
        cmp     r4, r7
        bne     L203f16
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_203efc, . - A_203efc

@ FUN_00203f50 (Thumb)
        .section .text.A_203f50,"ax",%progbits
        .balign 4
        .thumb
        .global A_203f50
        .thumb_func
        .type   A_203f50, %function
A_203f50:
        push    {r3, r4, r5, lr}
        mov     r0, sp
        bl      Fn_00387c_t
        movs    r0, #4
        bl      Fn_1fd4d0_t
        mov     r1, sp
        bl      Fn_00386c_t
        movs    r4, r0
        mov     r0, sp
        bl      Fn_200ac8_t
        ldr     r2, L203f78
        ldr     r1, L203f7c
        movs    r0, r4
        bl      Fn_1fe38a_t
        movs    r0, r0
L203f78:
        .word   0x00300ac9
L203f7c:
        .word   0x008040f0
        .size   A_203f50, . - A_203f50
