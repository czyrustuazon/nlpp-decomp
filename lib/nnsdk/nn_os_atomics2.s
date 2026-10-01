@ Generated from the retail image by tools/wrapgen/asmify.py (ctr-sdk): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .text

@ FUN_00025744
        .global A_025744
        .type   A_025744, %function
A_025744:
        ldr     r2, [r0, #4]
        cmp     r2, #0
        beq     L2577c
L25750:
        ldr     r3, [r0, #4]
        cmp     r1, #0
        ldrex   r2, [r3]
        lsr     ip, r2, #0x18
        orrne   ip, ip, #1
        biceq   ip, ip, #1
        bic     r2, r2, #0xff000000
        orr     r2, r2, ip, lsl #24
        strex   ip, r2, [r3]
        cmp     ip, #0
        bne     L25750
L2577c:
        bx      lr
        .size   A_025744, . - A_025744

@ FUN_000162e8
        .global A_0162e8
        .type   A_0162e8, %function
A_0162e8:
        push    {r4, r5, r6}
        mov     r3, #0
        str     r3, [r0]
        strh    r3, [r0, #4]
        mov     r2, #1
        mov     r1, r0
        mov     r4, r2
L16304:
        ldrex   r5, [r1]
        strex   r6, r2, [r1]
        cmp     r6, #0
        bne     L16304
        add     r2, r1, #4
L16318:
        ldrexh  ip, [r2]
        sxth    ip, r3
        strexh  r6, ip, [r2]
        cmp     r6, #0
        bne     L16318
        strh    r4, [r1, #6]
        pop     {r4, r5, r6}
        bx      lr
        .size   A_0162e8, . - A_0162e8

@ FUN_00024380
        .global A_024380
        .type   A_024380, %function
A_024380:
        push    {r4, r5}
        ldr     r1, [r0]
        cmp     r1, #1
        movne   r2, #0
        mvnne   r1, #0
        beq     L243c4
L24398:
        ldrex   r3, [r0]
        cmp     r3, r2
        bne     L243b4
        strex   r5, r1, [r0]
        cmp     r5, #0
        bne     L24398
        b       L243b8
L243b4:
        clrex
L243b8:
        cmp     r3, #0
        movne   r0, #0
        bne     L243c8
L243c4:
        mov     r0, #1
L243c8:
        pop     {r4, r5}
        bx      lr
        .size   A_024380, . - A_024380

@ FUN_000290dc
        .global A_0290dc
        .type   A_0290dc, %function
A_0290dc:
        str     r4, [sp, #-4]!
        str     r1, [r0]
        mov     r1, #0
L290e8:
        ldr     r3, [r0]
        ldrex   r2, [r3]
        and     ip, r2, #0xff
        cmp     ip, #0xf
        lsl     ip, r1, #8
        bichs   r2, r2, #0xff
        and     r4, ip, #0xff00
        orrhs   r2, r2, r1
        bic     r2, r2, #0xff00
        lsl     ip, r1, #0x10
        orr     r2, r2, r4
        and     ip, ip, #0xff0000
        bic     r2, r2, #0xff0000
        orr     r2, r2, ip
        bic     r2, r2, #0xff000000
        orr     r2, r2, r1, lsl #24
        strex   ip, r2, [r3]
        cmp     ip, #0
        bne     L290e8
        pop     {r4}
        bx      lr
        .size   A_0290dc, . - A_0290dc

@ FUN_0002913c
        .global A_02913c
        .type   A_02913c, %function
A_02913c:
        mov     r2, #0
        str     r4, [sp, #-4]!
L29144:
        ldr     r3, [r0]
        ldrex   r1, [r3]
        and     ip, r1, #0xff
        cmp     ip, #0xf
        lsl     ip, r2, #8
        bichs   r1, r1, #0xff
        and     r4, ip, #0xff00
        orrhs   r1, r1, r2
        bic     r1, r1, #0xff00
        lsl     ip, r2, #0x10
        orr     r1, r1, r4
        and     ip, ip, #0xff0000
        bic     r1, r1, #0xff0000
        orr     r1, r1, ip
        bic     r1, r1, #0xff000000
        orr     r1, r1, r2, lsl #24
        strex   ip, r1, [r3]
        cmp     ip, #0
        bne     L29144
        str     r2, [r0]
        pop     {r4}
        bx      lr
        .size   A_02913c, . - A_02913c

@ FUN_0001b58c
        .global A_01b58c
        .type   A_01b58c, %function
A_01b58c:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r5, r0
        ldrsh   ip, [r0, #6]
        sub     r6, ip, r1
L1b5a0:
        ldrex   r4, [r0]
        cmp     r6, r4
        movlt   r2, ip
        addge   r2, r4, r1
        strex   r7, r2, [r0]
        cmp     r7, #0
        bne     L1b5a0
        cmp     r4, #0
        ble     L1b5d0
        ldrsh   r0, [r5, #4]
        cmp     r0, #0
        ble     L1b5f4
L1b5d0:
        ldr     r0, L1b600
        mov     r2, #0
        mov     r3, r1
        mov     r1, r2
        ldr     r0, [r0]
        mov     ip, r2
        stm     sp, {r1, ip}
        mov     r1, r5
        bl      Fn_022a40
L1b5f4:
        add     sp, sp, #0xc
        mov     r0, r4
        pop     {r4, r5, r6, r7, pc}
L1b600:
        .word   0x008b8500
        .size   A_01b58c, . - A_01b58c

@ FUN_00025304
        .global A_025304
        .type   A_025304, %function
A_025304:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, r0
        add     r0, sp, #0x28
        mov     r8, #0
        mov     r7, r1
        ldm     r0, {sb, sl, fp}
        mov     r4, r2
        mov     r5, r3
        bl      Fn_02961c
        cmp     r6, #2
        add     r1, r0, #0x5c
        bhs     L25394
        ldr     r2, [r1, r6, lsl #2]
        mov     r3, #4
        ldrb    r0, [r2]
        rsb     r0, r0, #1
        and     r0, r0, #0xff
        rsb     lr, r0, r0, lsl #3
        add     r3, r3, lr, lsl #2
        str     r7, [r2, r3]!
        add     r3, r2, #4
        str     r8, [r2, #0x18]
        stm     r3, {r4, r5, sb, sl, fp}
        mcr     p15, #0, r8, c7, c10, #4
        mov     ip, #1
L25368:
        ldr     r2, [r1, r6, lsl #2]
        ldrex   r3, [r2]
        bic     r3, r3, #0xff
        lsl     r4, ip, #8
        orr     r3, r3, r0
        and     r4, r4, #0xff00
        bic     r3, r3, #0xff00
        orr     r3, r3, r4
        strex   r4, r3, [r2]
        cmp     r4, #0
        bne     L25368
L25394:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
        .size   A_025304, . - A_025304

@ FUN_004f54e4
        .global A_4f54e4
        .type   A_4f54e4, %function
A_4f54e4:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #8
        ldr     r6, L4f5594
        mov     r5, r0
L4f54f4:
        mov     r4, r5
L4f54f8:
        ldrex   r0, [r4]
        cmp     r0, #0
        ble     L4f551c
        sub     r0, r0, #1
        strex   r2, r0, [r4]
        cmp     r2, #0
        bne     L4f54f8
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L4f551c:
        clrex
        add     r0, r5, #4
L4f5524:
        ldrexh  r1, [r0]
        add     r1, r1, #1
        sxth    r1, r1
        strexh  r2, r1, [r0]
        cmp     r2, #0
        bne     L4f5524
        mov     r2, #0
        strh    r1, [sp]
        uxth    r0, r1
        strh    r0, [sp]
        ldr     r0, [r6]
        mov     r3, r2
        strd    r2, r3, [sp]
        mov     r3, #1
        mov     r1, r5
        mov     r2, r3
        bl      Fn_022a40
        add     r0, r5, #4
L4f556c:
        ldrexh  r1, [r0]
        sub     r1, r1, #1
        sxth    r1, r1
        strexh  r2, r1, [r0]
        cmp     r2, #0
        bne     L4f556c
        strh    r1, [sp]
        uxth    r0, r1
        strh    r0, [sp]
        b       L4f54f4
L4f5594:
        .word   0x008b8500
        .size   A_4f54e4, . - A_4f54e4

@ FUN_004f6044
        .global A_4f6044
        .type   A_4f6044, %function
A_4f6044:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        ldr     r5, [r0, #8]
        ldr     r6, [r0, #0xc]
        mov     r0, sp
        add     r3, r4, #0x10
        mov     r7, #0
L4f6060:
        ldrex   ip, [r3]
        sxtb    r1, ip
        cmp     r1, #0
        strb    ip, [r0]
        bne     L4f6080
        lsl     r8, ip, #0x10
        asrs    r8, r8, #0x18
        beq     L4f60cc
L4f6080:
        lsl     ip, ip, #0x10
        bic     r2, r2, #0xff
        asr     ip, ip, #0x18
        orr     r1, r1, r2
        lsl     ip, ip, #8
        and     r2, ip, #0xff00
        bic     r1, r1, #0xff00
        orr     r1, r1, r2
        lsl     ip, r7, #0x10
        and     r2, ip, #0xff0000
        bic     r1, r1, #0xff0000
        orr     r2, r2, r1
        strex   r8, r2, [r3]
        cmp     r8, #0
        bne     L4f6060
        ldrsb   r1, [sp]
        mov     r0, r6
        blx     r5
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L4f60cc:
        clrex
        ldrsb   r1, [sp]
        mov     r0, r6
        blx     r5
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r2, [r1, #0xc]
        mov     r1, r4
        blx     r2
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
        .size   A_4f6044, . - A_4f6044

@ FUN_0001b404
        .global A_01b404
        .type   A_01b404, %function
A_01b404:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0]
        sub     sp, sp, #8
        ldr     r5, L1b4b8
        cmn     r0, #1
        moveq   r3, #0
        beq     L1b480
        ldr     r0, [r4]
        cmn     r0, #2
        bne     L1b4b0
        add     r6, r4, #4
        mov     r0, r6
        bl      Fn_0243d0
        mov     r3, #1
L1b440:
        ldrex   r2, [r4]
        strex   r2, r3, [r4]
        cmp     r2, #0
        bne     L1b440
        mov     r2, #0
        mov     r1, r4
        ldr     r0, [r5]
        mov     r4, r2
        mov     ip, r2
        mvn     r3, #0
        stm     sp, {r4, ip}
        bl      Fn_022a40
        add     sp, sp, #8
        mov     r0, r6
        pop     {r4, r5, r6, lr}
        b       Fn_01b538
L1b480:
        ldrex   r2, [r4]
        strex   r2, r3, [r4]
        cmp     r2, #0
        bne     L1b480
        mov     r2, #0
        mov     r1, r4
        ldr     r0, [r5]
        mov     r4, r2
        mov     ip, r2
        mov     r3, #1
        stm     sp, {r4, ip}
        bl      Fn_022a40
L1b4b0:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L1b4b8:
        .word   0x008b8500
        .size   A_01b404, . - A_01b404

@ FUN_0001b4d4
        .global A_01b4d4
        .type   A_01b4d4, %function
A_01b4d4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #1
        beq     L1b50c
        ldr     r0, [r4]
        cmp     r0, #0
        mvneq   r1, #0
        bne     L1b508
L1b4f8:
        ldrex   r0, [r4]
        strex   r3, r1, [r4]
        cmp     r3, #0
        bne     L1b4f8
L1b508:
        pop     {r4, r5, r6, pc}
L1b50c:
        add     r0, r4, #4
        mov     r5, r0
        bl      Fn_0243d0
        mvn     r1, #1
L1b51c:
        ldrex   r0, [r4]
        strex   r3, r1, [r4]
        cmp     r3, #0
        bne     L1b51c
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        push    {r4, lr}
        sub     sp, sp, #8
L1b540:
        ldrex   r2, [r0]
        rsb     r2, r2, #0
        strex   r1, r2, [r0]
        cmp     r1, #0
        bne     L1b540
        cmp     r2, #1
        ble     L1b580
        mov     r1, r0
        ldr     r0, L1b588
        mov     r2, #0
        mov     r4, r2
        mov     ip, r2
        ldr     r0, [r0]
        mov     r3, #1
        stm     sp, {r4, ip}
        bl      Fn_022a40
L1b580:
        add     sp, sp, #8
        pop     {r4, pc}
L1b588:
        .word   0x008b8500
        .size   A_01b4d4, . - A_01b4d4

@ FUN_0001b274
        .global A_01b274
        .type   A_01b274, %function
A_01b274:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r6, r0
        ldr     r5, L1b338
L1b284:
        ldr     r0, [r6]
        cmn     r0, #2
        beq     L1b2b0
        cmn     r0, #1
        beq     L1b30c
        cmp     r0, #0
        beq     L1b2d8
        cmp     r0, #1
        bne     L1b30c
L1b2a8:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L1b2b0:
        mov     r3, #0
        ldr     r0, [r5]
        mov     r4, r3
        mov     ip, r3
        mov     r1, r6
        mov     r2, #1
        stm     sp, {r4, ip}
        bl      Fn_022a40
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L1b2d8:
        mov     r0, r6
        mov     r2, #0
        mvn     r4, #0
L1b2e4:
        ldrex   r3, [r0]
        cmp     r3, r2
        bne     L1b300
        strex   r7, r4, [r0]
        cmp     r7, #0
        bne     L1b2e4
        b       L1b304
L1b300:
        clrex
L1b304:
        cmp     r3, #0
        beq     L1b2a8
L1b30c:
        mov     r3, #0
        ldr     r0, [r5]
        mov     r4, r3
        mov     ip, r3
        mov     r1, r6
        mov     r2, #1
        stm     sp, {r4, ip}
        bl      Fn_022a40
        nop
        nop
        b       L1b284
L1b338:
        .word   0x008b8500
        .size   A_01b274, . - A_01b274

@ FUN_000243d0
        .global A_0243d0
        .type   A_0243d0, %function
A_0243d0:
L243d0:
        ldrex   r2, [r0]
        cmp     r2, #0
        ble     L243f0
        rsb     r2, r2, #0
        strex   r1, r2, [r0]
        cmp     r1, #0
        bne     L243d0
        bx      lr
L243f0:
        clrex
        mov     r0, r0
        push    {r4, r5, r6, lr}
        sub     sp, sp, #8
        mov     r4, r0
L24404:
        mov     r0, r4
L24408:
        ldrex   r3, [r0]
        cmp     r3, #0
        bge     L2442c
        sub     r1, r3, #1
        strex   r3, r1, [r0]
        cmp     r3, #0
        bne     L24408
        ldr     r5, L244b0
        b       L24460
L2442c:
        clrex
        mov     r0, r4
L24434:
        ldrex   r2, [r0]
        cmp     r2, #0
        ble     L24458
        rsb     r1, r2, #0
        strex   r2, r1, [r0]
        cmp     r2, #0
        bne     L24434
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L24458:
        clrex
        b       L24404
L24460:
        mov     r3, #0
        ldr     r0, [r5]
        mov     r6, r3
        mov     ip, r3
        mov     r2, #1
        mov     r1, r4
        stm     sp, {r6, ip}
        bl      Fn_022a40
        mov     r0, r4
L24484:
        ldrex   r3, [r0]
        cmp     r3, #0
        ble     L244a8
        rsb     r1, r3, #1
        strex   r3, r1, [r0]
        cmp     r3, #0
        bne     L24484
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L244a8:
        clrex
        b       L24460
L244b0:
        .word   0x008b8500
        .size   A_0243d0, . - A_0243d0

@ FUN_0002a9a8
        .global A_02a9a8
        .type   A_02a9a8, %function
A_02a9a8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        ldr     r3, [r0]
        cmp     r3, #0
        ldreq   r0, L2aa94
        beq     L2aa90
        ldrb    r2, [r3, #1]
        cmp     r2, #0xf
        ldrhs   r0, L2aa98
        bhs     L2aa90
        ldrex   r2, [r3]
        lsl     lr, r2, #0x10
        ldr     r4, L2aa9c
        and     ip, r2, #0xff
        lsr     lr, lr, #0x18
        add     ip, ip, lr
        mov     r8, #0x20
        umull   r5, r4, r4, ip
        lsr     r4, r4, #3
        sub     r4, r4, r4, lsl #4
        add     ip, ip, r4
        add     r8, r8, ip, lsl #5
        ldm     r1, {r4, r5, r6, r7, ip}
        add     r3, r3, r8
        ldrd    r8, sb, [r1, #0x14]
        ldr     r1, [r1, #0x1c]
        str     r1, [r3, #0x1c]
        stm     r3, {r4, r5, r6, r7, ip}
        mov     r1, #0
        strd    r8, sb, [r3, #0x14]
        mcr     p15, #0, r1, c7, c10, #4
        add     r1, lr, #1
        bic     r2, r2, #0xff00
        lsl     r1, r1, #8
        and     r1, r1, #0xff00
        orr     r1, r1, r2
L2aa34:
        ldr     r3, [r0]
        strex   r2, r1, [r3]
        cmp     r2, #0
        beq     L2aa6c
        ldr     r1, [r0]
        ldrex   r1, [r1]
        lsl     r2, r1, #0x10
        bic     r3, r1, #0xff00
        lsr     r1, r2, #0x18
        add     r1, r1, #1
        lsl     r1, r1, #8
        and     r1, r1, #0xff00
        orr     r1, r1, r3
        b       L2aa34
L2aa6c:
        lsl     r0, r1, #0x10
        lsr     r0, r0, #0x18
        cmp     r0, #1
        bne     L2aa8c
        bl      Fn_02962c
        nop
        nop
        bl      Fn_02af84
L2aa8c:
        mov     r0, #0
L2aa90:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L2aa94:
        .word   0xd8a02bf8
L2aa98:
        .word   0xd8a02a02
L2aa9c:
        .word   0x88888889
        .size   A_02a9a8, . - A_02a9a8

@ FUN_00029340
        .global A_029340
        .type   A_029340, %function
A_029340:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        ldr     r6, L29488
        ldr     r8, L2948c
        ldr     r7, L29490
        ldr     r5, L29494
L29358:
        mvn     r2, #0
        ldr     r0, [r4, #0x2c]
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r0, [r4, #0x2c]
        nop
        svc     #0x19
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldrb    r0, [r4, #0x77]
        cmp     r0, #0
        bne     L29484
L29398:
        ldr     r0, [r4, #0x34]
        cmp     r0, #0
        moveq   r0, r6
        beq     L29430
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        moveq   r0, r5
        beq     L29430
        ldrb    r1, [r0]
        add     r0, r0, r1
        ldrb    ip, [r0, #0xc]
L293c4:
        ldr     r2, [r4, #0x34]
        ldrex   r1, [r2]
        and     r0, r1, #0xff
        add     r0, r0, #1
        bic     sb, r1, #0xff
        umull   sl, r1, r8, r0
        mvn     r3, #0xc
        lsr     r1, r1, #4
        mul     r1, r1, r3
        add     r0, r0, r1, lsl #2
        and     r0, r0, #0xff
        orr     r0, r0, sb
        lsl     r1, r0, #0x10
        bic     r0, r0, #0xff00
        lsr     r1, r1, #0x18
        sub     r1, r1, #1
        lsl     r1, r1, #8
        and     r1, r1, #0xff00
        orr     r0, r0, r1
        strex   r1, r0, [r2]
        cmp     r1, #0
        bne     L293c4
        ldr     r1, [r4, #0x34]
        mov     r0, #0
        ldrb    r1, [r1, #2]
        cmp     r1, #1
        moveq   r0, r7
L29430:
        cmp     r0, r5
        beq     L29358
        and     sb, ip, #0xff
        mov     r0, r4
        bl      Fn_0244c8
        add     r0, r4, sb, lsl #2
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        blxne   r0
        ldrb    r1, [r4, #0x76]
        mov     r0, #2
        strb    r0, [r4, #0x76]
        cmp     r1, #1
        addeq   r0, r4, #0x64
        bleq    Fn_01b404
        mov     r0, r4
        nop
        bl      Fn_024568
        nop
        nop
        b       L29398
L29484:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L29488:
        .word   0xd8a02bf8
L2948c:
        .word   0x4ec4ec4f
L29490:
        .word   0xd8a02a02
L29494:
        .word   0x00002bef
        .size   A_029340, . - A_029340

@ FUN_004f18b0
        .global A_4f18b0
        .type   A_4f18b0, %function
A_4f18b0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x28
        mov     r7, r0
        bl      Fn_4f2140
        ands    r1, r0, #0x80000000
        bmi     L4f1954
        mov     r0, #0x30
        ldr     r4, L4f1a7c
        mov     r1, r0
        ldr     r5, L4f1a80
        mov     r3, #0x100
        ldrb    ip, [r4, #0x10]
        mov     r0, #0x200
        rsb     r2, r1, #0x800
        stm     sp, {r0, r3, ip}
        mov     r3, #0x500
        ldr     r0, [r5, #0xc]
        mov     r1, #0x1000
        bl      Fn_4f00c8
        ands    r1, r0, #0x80000000
        bmi     L4f1954
        ldrb    r0, [r4, #1]
        ldrb    r1, [r4]
        mov     r6, #1
        ldr     r2, L4f1a84
        strb    r6, [sp, #4]
        strb    r0, [sp, #5]
        str     r2, [sp]
        strb    r1, [sp, #6]
        add     r0, r5, #7
        mov     r2, #3
        add     r1, sp, #4
        bl      Fn_202b20
        bl      Fn_4f140c
        mov     r8, r0
        ands    r0, r0, #0x80000000
        mov     r4, #0
        bpl     L4f195c
        strb    r4, [r5, #3]
        bl      Fn_4f44fc
        mov     r0, r8
L4f1954:
        add     sp, sp, #0x28
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4f195c:
        ldr     r2, L4f1a88
        mvn     r3, #0
        asr     ip, r3, #0x1f
L4f1968:
        ldrexd  r0, r1, [r2]
        mov     r0, r3
        mov     r1, ip
        strexd  r8, r0, r1, [r2]
        cmp     r8, #0
        bne     L4f1968
        mvn     r3, #0
        add     ip, r2, #8
        asr     r8, r3, #0x1f
L4f198c:
        ldrexd  r0, r1, [ip]
        mov     r0, r3
        mov     r1, r8
        strexd  sb, r0, r1, [ip]
        cmp     sb, #0
        bne     L4f198c
        mvn     r1, #0
        add     r0, r2, #0x10
L4f19ac:
        ldrex   r2, [r0]
        strex   ip, r1, [r0]
        cmp     ip, #0
        bne     L4f19ac
        ldr     r0, L4f1a8c
        mov     r1, #1
        strh    r4, [r0]
        strh    r4, [r0, #2]
        strb    r6, [r0, #0x14]
        str     r4, [r0, #8]
        str     r4, [r0, #0x10]
        str     r4, [r0, #0xc]
        strb    r4, [r0, #0x15]
        strb    r4, [r5, #6]
        ldr     r0, L4f1a90
        strb    r4, [r5, #4]
        bl      Fn_01b240
        mov     ip, #4
        str     ip, [sp, #0x10]
        ldr     ip, L4f1a9c
        ldr     r3, L4f1a88
        str     r4, [sp, #0x20]
        str     ip, [sp, #0x14]
        ldr     ip, L4f1aa0
        add     r8, sp, #8
        mvn     r1, #1
        str     ip, [sp, #0x18]
        ldr     ip, L4f1aa4
        ldr     r0, L4f1a94
        ldr     r2, L4f1a98
        str     ip, [sp, #0x1c]
        stm     sp, {r3, r7}
        stm     r8, {r1, r4}
        add     r3, sp, #0x20
        add     r1, sp, #0x10
        bl      Fn_010b94
        mov     r4, r0
        and     r0, r0, #0x7e00000
        cmp     r0, #0x600000
        beq     L4f1a58
        lsrs    r1, r4, #0x1f
        mov     r0, r4
        blne    Fn_01b6ac
L4f1a58:
        lsrs    r0, r4, #0x1f
        blne    Fn_024730
        ldr     r0, L4f1a90
        nop
        bl      Fn_01b274
        strb    r6, [r5]
        add     sp, sp, #0x28
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4f1a7c:
        .word   0x00a767fc
L4f1a80:
        .word   0x008bb928
L4f1a84:
        .word   0x0082bee4
L4f1a88:
        .word   0x00a76c10
L4f1a8c:
        .word   0x00a76d00
L4f1a90:
        .word   0x008bb954
L4f1a94:
        .word   0x008bb94c
L4f1a98:
        .word   0x005f0f3c
L4f1a9c:
        .word   0x001194fc
L4f1aa0:
        .word   0x00119528
L4f1aa4:
        .word   0x00119518
        .size   A_4f18b0, . - A_4f18b0
