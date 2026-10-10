@ Generated from the retail image by tools/wrapgen/asmify.py (ctrsdk): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text


@ FUN_006315d4
        .text
        .arm
        .global A_6315d4
        .type   A_6315d4, %function
A_6315d4:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        ldreq   r0, L6315f8
        moveq   r1, pc
        bleq    Fn_010ccc
        ldr     r0, [r4, #4]
        pop     {r4, pc}
L6315f8:
        .word   0xe0a046da
        .size   A_6315d4, . - A_6315d4

@ FUN_0063161c
        .text
        .arm
        .global A_63161c
        .type   A_63161c, %function
A_63161c:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        ldreq   r0, L631640
        moveq   r1, pc
        bleq    Fn_010ccc
        ldr     r0, [r4, #4]
        pop     {r4, pc}
L631640:
        .word   0xe0a046da
        .size   A_63161c, . - A_63161c

@ FUN_00632534
        .text
        .arm
        .global A_632534
        .type   A_632534, %function
A_632534:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        mov     r1, #0
        str     r1, [sp]
        str     r1, [sp, #4]
        ldr     r1, [r0]
        mov     r3, #1
        mov     r2, #2
        ldr     ip, [r1, #0x2c]
        add     r1, sp, #8
        blx     ip
        ands    r1, r0, #0x80000000
        bmi     L6325ac
        mov     r1, #4
        mov     r0, #0x36c0
        bl      Fn_4fd12c
        movs    r4, r0
        ldreq   r0, L6325f8
        beq     L6325ac
        bl      Fn_4e79a0
        cmp     r0, #0
        mov     r0, r4
        beq     L6325b4
        bl      Fn_4eadcc
        ldr     r5, L6325fc
        ands    r0, r0, #0x80000000
        bpl     L6325c8
        mov     r0, r4
        bl      Fn_4fd058
        mov     r0, r5
L6325ac:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L6325b4:
        nop
        bl      Fn_4fd058
        add     sp, sp, #0x10
        ldr     r0, L632600
        pop     {r4, r5, r6, pc}
L6325c8:
        add     r1, r4, #0x2000
        ldrb    r0, [r1, #0x2c]
        ldrb    r1, [r1, #0x2d]
        orr     r6, r0, r1, lsl #8
        mov     r0, r4
        bl      Fn_4fd058
        ldrh    r0, [sp, #8]
        add     sp, sp, #0x10
        cmp     r0, r6
        movhs   r0, #0
        movlo   r0, r5
        pop     {r4, r5, r6, pc}
L6325f8:
        .word   0xc8610bf3
L6325fc:
        .word   0xe0a1086c
L632600:
        .word   0xe0810bf8
        .size   A_632534, . - A_632534

@ FUN_006327d0
        .text
        .arm
        .global A_6327d0
        .type   A_6327d0, %function
A_6327d0:
        mov     ip, #0x130
        push    {r4, r5, r6, r7}
        ldrsb   r4, [ip, r0]
        ldr     r6, L632848
        mov     r7, #0
        cmp     r4, #0
        movne   ip, #0
        ble     L632838
L6327f0:
        add     r5, ip, ip, lsl #1
        add     r5, r0, r5, lsl #2
        ldr     r5, [r5, #0x70]
        cmp     r5, r1
        bne     L63282c
        add     ip, ip, ip, lsl #1
        mov     r1, #0
        add     ip, r0, ip, lsl #2
        mov     r0, r1
        ldr     r4, [ip, #0x74]
        str     r4, [r2]
        ldr     r1, [ip, #0x78]
        str     r1, [r3]
        pop     {r4, r5, r6, r7}
        bx      lr
L63282c:
        add     ip, ip, #1
        cmp     r4, ip
        bgt     L6327f0
L632838:
        mov     r0, r6
        str     r7, [r2]
        pop     {r4, r5, r6, r7}
        bx      lr
L632848:
        .word   0xc8810bef
        .size   A_6327d0, . - A_6327d0

@ FUN_0063287c
        .text
        .arm
        .global A_63287c
        .type   A_63287c, %function
A_63287c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r0, r1
        mov     r5, r1
        mov     r2, #0x70
        mov     r1, r4
        bl      Fn_202b20
        mov     r1, #0x130
        add     r5, r5, #0x70
        ldrsb   r8, [r1, r4]
        mov     r6, #0
        cmp     r8, #0
        bls     L6328f4
L6328b0:
        add     r0, r6, r6, lsl #1
        add     r7, r4, r0, lsl #2
        add     r1, r7, #0x70
        mov     r0, r5
        bl      Fn_021ccc
        add     r5, r5, #8
        ldr     r1, [r7, #0x78]
        ldr     r2, [r7, #0x74]
        mov     r0, r5
        bl      Fn_202b20
        ldr     r0, [r7, #0x74]
        add     r6, r6, #1
        cmp     r8, r6
        add     r0, r0, #3
        bic     r0, r0, #3
        add     r5, r5, r0
        bhi     L6328b0
L6328f4:
        ldr     r1, [r4, #0x138]
        cmp     r1, #0
        beq     L632914
        ldr     r2, [r4, #0x134]
        mov     r0, r5
        bl      Fn_202b20
        ldr     r0, [r4, #0x134]
        add     r5, r5, r0
L632914:
        ldr     r1, [r4, #0x13c]
        cmp     r1, #0
        beq     L63292c
        mov     r2, #0x20
        mov     r0, r5
        bl      Fn_202b20
L63292c:
        ldr     r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_63287c, . - A_63287c

@ FUN_0063379c
        .text
        .arm
        .global A_63379c
        .type   A_63379c, %function
A_63379c:
        push    {r4, r5}
        ldr     r2, [r0, #4]
        ldr     r3, [r1, #4]
L6337a8:
        cmp     r2, r0
        cmpne   r3, r1
        beq     L6337d8
        ldrh    ip, [r2, #8]
        ldrh    r4, [r3, #8]
        cmp     ip, r4
        bhi     L6337e4
        ldrh    ip, [r2, #0xa]
        cmp     r4, ip
        ldrhi   r2, [r2, #4]
        bhi     L6337a8
        b       L6337f4
L6337d8:
        pop     {r4, r5}
        mov     r0, #0
        bx      lr
L6337e4:
        ldrh    r4, [r3, #0xa]
        cmp     ip, r4
        ldrhi   r3, [r3, #4]
        bhi     L6337a8
L6337f4:
        pop     {r4, r5}
        mov     r0, #1
        bx      lr
        .size   A_63379c, . - A_63379c

@ FUN_006848a8
        .text
        .arm
        .global A_6848a8
        .type   A_6848a8, %function
A_6848a8:
        mov     r2, #0
        push    {r4, r5, r6}
        mov     r1, r2
        mov     r3, r2
L6848b8:
        ldrsb   ip, [r0, r3]
        cmp     ip, #0x3a
        beq     L6848ec
        lsl     r5, r1, #8
        lsr     r1, r2, #0x18
        add     r3, r3, #1
        orr     r1, r1, r5
        cmp     r3, #8
        orr     r2, ip, r2, lsl #8
        orr     r1, r1, ip, asr #31
        blt     L6848b8
        mov     r2, #0
        mov     r1, r2
L6848ec:
        orrs    r0, r2, r1
        ldrne   r3, L684964
        movne   ip, #0
        beq     L684958
L6848fc:
        add     r4, r3, ip, lsl #4
        ldm     r4, {r0, r5}
        eor     r6, r2, r0
        eor     r0, r1, r5
        orrs    r0, r0, r6
        bne     L68491c
        add     r0, r3, ip, lsl #4
        b       L68493c
L68491c:
        ldr     r5, [r4, #0x10]!
        ldr     r0, [r4, #4]
        eor     r4, r2, r5
        eor     r0, r0, r1
        orrs    r0, r0, r4
        bne     L68494c
        add     r0, r3, ip, lsl #4
        add     r0, r0, #0x10
L68493c:
        cmp     r0, #0
        ldrne   r0, [r0, #8]
        bne     L68495c
        b       L684958
L68494c:
        add     ip, ip, #2
        cmp     ip, #0x20
        blt     L6848fc
L684958:
        mov     r0, #0
L68495c:
        pop     {r4, r5, r6}
        bx      lr
L684964:
        .word   0x009a11f8
        .size   A_6848a8, . - A_6848a8

@ FUN_00684968
        .text
        .arm
        .global A_684968
        .type   A_684968, %function
A_684968:
        mov     r1, #0
        mov     r2, r1
        mov     r3, r1
        push    {r4, r5}
L684978:
        add     ip, r0, r3, lsl #1
        ldrh    ip, [ip]
        cmp     ip, #0x3a
        beq     L6849b4
        lsl     r4, r2, #8
        lsr     r2, r1, #0x18
        sxtb    ip, ip
        add     r3, r3, #1
        orr     r2, r2, r4
        cmp     r3, #8
        orr     r1, ip, r1, lsl #8
        orr     r2, r2, ip, asr #31
        blt     L684978
        mov     r1, #0
        mov     r2, r1
L6849b4:
        orrs    r0, r1, r2
        ldrne   r3, L684a30
        movne   r0, #0
        beq     L684a24
L6849c4:
        add     r5, r3, r0, lsl #4
        ldr     ip, [r5]
        ldr     r4, [r5, #4]
        eor     ip, ip, r1
        eor     r4, r4, r2
        orrs    ip, ip, r4
        bne     L6849e8
        add     r0, r3, r0, lsl #4
        b       L684a08
L6849e8:
        add     r5, r5, #0x10
        ldm     r5, {r4, ip}
        eor     r4, r4, r1
        eor     ip, ip, r2
        orrs    ip, ip, r4
        bne     L684a18
        add     r0, r3, r0, lsl #4
        add     r0, r0, #0x10
L684a08:
        cmp     r0, #0
        ldrne   r0, [r0, #8]
        bne     L684a28
        b       L684a24
L684a18:
        add     r0, r0, #2
        cmp     r0, #0x20
        blt     L6849c4
L684a24:
        mov     r0, #0
L684a28:
        pop     {r4, r5}
        bx      lr
L684a30:
        .word   0x009a11f8
        .size   A_684968, . - A_684968

@ FUN_00685378
        .text
        .arm
        .global A_685378
        .type   A_685378, %function
A_685378:
        mov     r2, #0
        mov     r1, #1
        str     r2, [r0]
        strb    r1, [r0, #4]
        add     r1, r0, #8
        str     r1, [r0, #8]
        str     r2, [r0, #0x10]
        str     r1, [r0, #0xc]
        bx      lr
        .size   A_685378, . - A_685378

@ FUN_006854cc
        .text
        .arm
        .global A_6854cc
        .type   A_6854cc, %function
A_6854cc:
        push    {r3, lr}
        ldr     ip, [r1]
        mov     r3, r2
        mov     r2, sp
        str     ip, [sp]
        bl      Fn_68539c
        pop     {r3, pc}
        .size   A_6854cc, . - A_6854cc

@ FUN_0068c258
        .text
        .arm
        .global A_68c258
        .type   A_68c258, %function
A_68c258:
        ldrb    r2, [r0, #4]
        cmp     r2, #2
        beq     L68c270
        cmp     r2, #3
        bne     L68c284
        b       L68c28c
L68c270:
        ldrh    r0, [r0, #6]
        cmp     r0, r1
        bne     L68c284
L68c27c:
        mov     r0, #1
        bx      lr
L68c284:
        mov     r0, #0
        bx      lr
L68c28c:
        add     r2, r0, #8
        ldr     r0, [r0, #0xc]
        cmp     r0, r2
        beq     L68c284
L68c29c:
        ldrh    ip, [r0, #8]
        add     r3, r0, #8
        cmp     ip, r1
        ldrhls  ip, [r3, #2]
        cmpls   r1, ip
        bls     L68c27c
        ldr     r0, [r0, #4]
        cmp     r0, r2
        bne     L68c29c
        b       L68c284
        .size   A_68c258, . - A_68c258

@ FUN_0068c2c4
        .text
        .arm
        .global A_68c2c4
        .type   A_68c2c4, %function
A_68c2c4:
        ldrb    r2, [r0, #4]
        cmp     r2, #2
        beq     L68c2dc
        cmp     r2, #3
        bne     L68c2f0
        b       L68c2f8
L68c2dc:
        ldrh    r0, [r0, #6]
        cmp     r0, r1
        bne     L68c2f0
L68c2e8:
        mov     r0, #1
        bx      lr
L68c2f0:
        mov     r0, #0
        bx      lr
L68c2f8:
        add     r2, r0, #8
        ldr     r0, [r0, #0xc]
        cmp     r0, r2
        beq     L68c2f0
L68c308:
        ldrh    ip, [r0, #8]
        add     r3, r0, #8
        cmp     ip, r1
        ldrhls  ip, [r3, #2]
        cmpls   r1, ip
        bls     L68c2e8
        ldr     r0, [r0, #4]
        cmp     r0, r2
        bne     L68c308
        b       L68c2f0
        .size   A_68c2c4, . - A_68c2c4
