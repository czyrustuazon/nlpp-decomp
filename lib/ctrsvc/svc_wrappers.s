@ Generated from the retail image by tools/wrapgen/asmify.py (ctrsvc): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text

@ FUN_00004bb8
        .global A_004bb8
        .type   A_004bb8, %function
A_004bb8:
        mov     r0, r0
        svc     #3
        bx      lr
        .size   A_004bb8, . - A_004bb8

@ FUN_00005b2c
        .global A_005b2c
        .type   A_005b2c, %function
A_005b2c:
        push    {r4, lr}
        mov     r4, r0
        mvn     r2, #0
        ldr     r0, [r0, #4]
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r0, #1
        strb    r0, [r4, #8]
        pop     {r4, pc}
        .size   A_005b2c, . - A_005b2c

@ FUN_00005be8
        .global A_005be8
        .type   A_005be8, %function
A_005be8:
        push    {r0, r4}
        ldr     r0, [sp, #8]
        ldr     r4, [sp, #0xc]
        svc     #1
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        pop     {r4}
        bx      lr
        .size   A_005be8, . - A_005be8

@ FUN_00005c0c
        .global A_005c0c
        .type   A_005c0c, %function
A_005c0c:
        str     r0, [sp, #-4]!
        svc     #0x38
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_005c0c, . - A_005c0c

@ FUN_00005e1c
        .global A_005e1c
        .type   A_005e1c, %function
A_005e1c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L5e48
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5e48:
        .word   0x08620040
        .size   A_005e1c, . - A_005e1c

@ FUN_00008178
        .global A_008178
        .type   A_008178, %function
A_008178:
        str     r0, [sp, #-4]!
        svc     #0x21
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_008178, . - A_008178

@ FUN_0000831c
        .global A_00831c
        .type   A_00831c, %function
A_00831c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L8350
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        mov     r1, #0x20
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L8350:
        .word   0x08610042
        .size   A_00831c, . - A_00831c

@ FUN_000088b8
        .global A_0088b8
        .type   A_0088b8, %function
A_0088b8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        add     r0, sp, #0x20
        mov     r6, r1
        ldm     r0, {sb, sl}
        mov     r7, r2
        mov     r8, r3
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xa0000
        str     r0, [r4, #0x80]!
        ldr     r0, L892c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L8928
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #0x10]
        str     r0, [r6]
        ldr     r0, [r4, #0x14]
        str     r0, [r7]
        ldr     r0, [r4, #0x18]
        str     r0, [r8]
        ldr     r0, [r4, #0x1c]
        str     r0, [sb]
        ldr     r0, [r4, #0x20]
        str     r0, [sl]
        ldr     r0, [r4, #4]
L8928:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L892c:
        .word   0x008b7d20
        .size   A_0088b8, . - A_0088b8

@ FUN_00008bac
        .global A_008bac
        .type   A_008bac, %function
A_008bac:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L8be4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L8be0
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L8be0:
        pop     {r4, r5, r6, pc}
L8be4:
        .word   0x008b85f4
        .size   A_008bac, . - A_008bac

@ FUN_00008dc4
        .global A_008dc4
        .type   A_008dc4, %function
A_008dc4:
        push    {r4, lr}
        ldr     r4, L8e04
        ldr     r0, [r4]
        cmp     r0, #0
        ldreq   r0, L8e08
        beq     L8dec
        svc     #0x23
        ldr     r1, L8e0c
        ldr     r1, [r1]
        str     r1, [r4]
L8dec:
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        mov     r0, r4
        pop     {r4, pc}
L8e04:
        .word   0x008ab930
L8e08:
        .word   0xe0a0cff8
L8e0c:
        .word   0x007eb664
        .size   A_008dc4, . - A_008dc4

@ FUN_0000919c
        .global A_00919c
        .type   A_00919c, %function
A_00919c:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mov     r6, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L91e4
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L91e8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L91e0
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #0x10]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L91e0:
        pop     {r4, r5, r6, pc}
L91e4:
        .word   0x00020080
L91e8:
        .word   0x008ab930
        .size   A_00919c, . - A_00919c

@ FUN_000091ec
        .global A_0091ec
        .type   A_0091ec, %function
A_0091ec:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r2
        mov     r7, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L9240
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L9244
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L923c
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #0xc]
        str     r0, [r7]
        ldr     r0, [r4, #0x14]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L923c:
        pop     {r4, r5, r6, r7, r8, pc}
L9240:
        .word   0x00010040
L9244:
        .word   0x008ab930
        .size   A_0091ec, . - A_0091ec

@ FUN_00009248
        .global A_009248
        .type   A_009248, %function
A_009248:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L9294
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L9298
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L9294:
        .word   0x00270044
L9298:
        .word   0x008ab930
        .size   A_009248, . - A_009248

@ FUN_0000929c
        .global A_00929c
        .type   A_00929c, %function
A_00929c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L92d0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L92d4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L92d0:
        .word   0x00220040
L92d4:
        .word   0x008ab930
        .size   A_00929c, . - A_00929c

@ FUN_000092d8
        .global A_0092d8
        .type   A_0092d8, %function
A_0092d8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L9308
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L930c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L9308:
        .word   0x00030040
L930c:
        .word   0x008ab930
        .size   A_0092d8, . - A_0092d8

@ FUN_000101c8
        .global A_0101c8
        .type   A_0101c8, %function
A_0101c8:
        str     r0, [sp, #-4]!
        svc     #0x2d
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_0101c8, . - A_0101c8

@ FUN_000101e0
        .global A_0101e0
        .type   A_0101e0, %function
A_0101e0:
        str     r0, [sp, #-4]!
        svc     #0x13
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_0101e0, . - A_0101e0

@ FUN_000101f8
        .global A_0101f8
        .type   A_0101f8, %function
A_0101f8:
        push    {r0, r4}
        ldr     r0, [sp, #8]
        ldr     r4, [sp, #0xc]
        svc     #8
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        pop     {r4}
        bx      lr
        .size   A_0101f8, . - A_0101f8

@ FUN_00011a74
        .global A_011a74
        .type   A_011a74, %function
A_011a74:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x130000
        str     r0, [r4, #0x80]!
        ldr     r0, L11aa0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L11aa0:
        .word   0x008b7d20
        .size   A_011a74, . - A_011a74

@ FUN_00011aa4
        .global A_011aa4
        .type   A_011aa4, %function
A_011aa4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x140000
        str     r0, [r4, #0x80]!
        ldr     r0, L11ad0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L11ad0:
        .word   0x008b7d20
        .size   A_011aa4, . - A_011aa4

@ FUN_00011ad4
        .global A_011ad4
        .type   A_011ad4, %function
A_011ad4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x110000
        str     r0, [r4, #0x80]!
        ldr     r0, L11b00
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L11b00:
        .word   0x008b7d20
        .size   A_011ad4, . - A_011ad4

@ FUN_00011b40
        .global A_011b40
        .type   A_011b40, %function
A_011b40:
        mov     r0, r0
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L11b74
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L11b78
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L11b74:
        .word   0x00140040
L11b78:
        .word   0x008b8818
        .size   A_011b40, . - A_011b40

@ FUN_00011c18
        .global A_011c18
        .type   A_011c18, %function
A_011c18:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L11c4c
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L11c50
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L11c4c:
        .word   0x00010002
L11c50:
        .word   0x008b85f4
        .size   A_011c18, . - A_011c18

@ FUN_00011cb0
        .global A_011cb0
        .type   A_011cb0, %function
A_011cb0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L11ce8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L11ce4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L11ce4:
        pop     {r4, r5, r6, pc}
L11ce8:
        .word   0x008b85f4
        .size   A_011cb0, . - A_011cb0

@ FUN_00013260
        .global A_013260
        .type   A_013260, %function
A_013260:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L1329c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L132a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L13298
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L13298:
        pop     {r4, r5, r6, pc}
L1329c:
        .word   0x00090040
L132a0:
        .word   0x008ab930
        .size   A_013260, . - A_013260

@ FUN_000132a4
        .global A_0132a4
        .type   A_0132a4, %function
A_0132a4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L132d8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L132dc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L132d8:
        .word   0x003b0040
L132dc:
        .word   0x008ab930
        .size   A_0132a4, . - A_0132a4

@ FUN_0001a38c
        .global A_01a38c
        .type   A_01a38c, %function
A_01a38c:
        str     r0, [sp, #-4]!
        svc     #0x17
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_01a38c, . - A_01a38c

@ FUN_0001a3ec
        .global A_01a3ec
        .type   A_01a3ec, %function
A_01a3ec:
        str     r0, [sp, #-4]!
        svc     #0x35
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_01a3ec, . - A_01a3ec

@ FUN_0001a404
        .global A_01a404
        .type   A_01a404, %function
A_01a404:
        mov     r0, r0
        svc     #0x28
        bx      lr
        .size   A_01a404, . - A_01a404

@ FUN_0001a418
        .global A_01a418
        .type   A_01a418, %function
A_01a418:
        push    {r0, r4}
        ldr     r0, [sp, #8]
        ldr     r4, [sp, #0xc]
        svc     #0x25
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        pop     {r4}
        bx      lr
        .size   A_01a418, . - A_01a418

@ FUN_0001c6a4
        .global A_01c6a4
        .type   A_01c6a4, %function
A_01c6a4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x120000
        str     r0, [r4, #0x80]!
        ldr     r0, L1c6d0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L1c6d0:
        .word   0x008b7d20
        .size   A_01c6a4, . - A_01c6a4

@ FUN_0001d534
        .global A_01d534
        .type   A_01d534, %function
A_01d534:
        push    {r4, lr}
        ldr     r4, L1d594
        ldr     r0, [r4]
        cmp     r0, #0
        ldreq   r0, L1d598
        beq     L1d55c
        svc     #0x23
        ldr     r1, L1d59c
        ldr     r1, [r1]
        str     r1, [r4]
L1d55c:
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        ldr     r0, L1d5a0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L1d590
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        beq     L1d590
        pop     {r4, lr}
        b       Fn_01b6ac
L1d590:
        pop     {r4, pc}
L1d594:
        .word   0x008ab930
L1d598:
        .word   0xe0a0cff8
L1d59c:
        .word   0x007eb664
L1d5a0:
        .word   0x008ab8c8
        .size   A_01d534, . - A_01d534

@ FUN_0001d81c
        .global A_01d81c
        .type   A_01d81c, %function
A_01d81c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L1d84c
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L1d850
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L1d84c:
        .word   0x00420080
L1d850:
        .word   0x008ab930
        .size   A_01d81c, . - A_01d81c

@ FUN_0001d854
        .global A_01d854
        .type   A_01d854, %function
A_01d854:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L1d884
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L1d888
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L1d884:
        .word   0x00430040
L1d888:
        .word   0x008ab930
        .size   A_01d854, . - A_01d854

@ FUN_0001d88c
        .global A_01d88c
        .type   A_01d88c, %function
A_01d88c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L1d8c8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L1d8cc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L1d8c4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L1d8c4:
        pop     {r4, r5, r6, pc}
L1d8c8:
        .word   0x000b0040
L1d8cc:
        .word   0x008ab930
        .size   A_01d88c, . - A_01d88c

@ FUN_00022a40
        .global A_022a40
        .type   A_022a40, %function
A_022a40:
        push    {r4, r5}
        ldr     r4, [sp, #8]
        ldr     r5, [sp, #0xc]
        svc     #0x22
        pop     {r4, r5}
        bx      lr
        .size   A_022a40, . - A_022a40

@ FUN_00024588
        .global A_024588
        .type   A_024588, %function
A_024588:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #4]
        cmp     r0, #0
        ldreq   r0, [r4]
        bne     L245bc
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r0, #1
        strb    r0, [r4, #4]
L245bc:
        pop     {r4, pc}
        .size   A_024588, . - A_024588

@ FUN_00024670
        .global A_024670
        .type   A_024670, %function
A_024670:
        mov     r0, r0
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L246b8
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r1, r2}
        mov     r2, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L246bc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L246b8:
        .word   0x00010082
L246bc:
        .word   0x008b878c
        .size   A_024670, . - A_024670

@ FUN_000246c0
        .global A_0246c0
        .type   A_0246c0, %function
A_0246c0:
        mov     r0, r0
        ldr     r0, L24724
        ldr     r1, [r0, #4]
        cmp     r1, #0
        subgt   r1, r1, #1
        strgt   r1, [r0, #4]
        cmp     r1, #0
        bxne    lr
        ldrb    r1, [r0]
        cmp     r1, #0
        bxeq    lr
        push    {r4, lr}
        mov     r1, #0
        ldr     r4, L24728
        strb    r1, [r0]
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L24720
        svc     #0x23
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        ldr     r0, L2472c
        ldr     r0, [r0]
        str     r0, [r4]
L24720:
        pop     {r4, pc}
L24724:
        .word   0x008aba08
L24728:
        .word   0x008b878c
L2472c:
        .word   0x007eb680
        .size   A_0246c0, . - A_0246c0

@ FUN_00025058
        .global A_025058
        .type   A_025058, %function
A_025058:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x160000
        str     r0, [r4, #0x80]!
        ldr     r0, L250b0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L250ac
        ldr     r1, [r4, #8]
        str     r1, [r5]
        ldr     r1, [r4, #0xc]
        str     r1, [r5, #4]
        ldr     r1, [r4, #0x10]
        str     r1, [r5, #8]
        ldr     r1, [r4, #0x14]
        str     r1, [r5, #0xc]
        ldrh    r0, [r4, #0x18]
        strh    r0, [r5, #0x10]
        ldr     r0, [r4, #4]
L250ac:
        pop     {r4, r5, r6, pc}
L250b0:
        .word   0x008b7d20
        .size   A_025058, . - A_025058

@ FUN_000250b4
        .global A_0250b4
        .type   A_0250b4, %function
A_0250b4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x150000
        str     r0, [r4, #0x80]!
        ldr     r0, L250ec
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L250e8
        vldr    s0, [r4, #8]
        vstr    s0, [r5]
        ldr     r0, [r4, #4]
L250e8:
        pop     {r4, r5, r6, pc}
L250ec:
        .word   0x008b7d20
        .size   A_0250b4, . - A_0250b4

@ FUN_000257c8
        .global A_0257c8
        .type   A_0257c8, %function
A_0257c8:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L25808
        mov     r2, #0
        str     r3, [r4, #0x80]!
        ldrb    r3, [sp, #8]
        strb    r3, [r4, #4]
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L25808:
        .word   0x00160042
        .size   A_0257c8, . - A_0257c8

@ FUN_0002580c
        .global A_02580c
        .type   A_02580c, %function
A_02580c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x170000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_02580c, . - A_02580c

@ FUN_0002585c
        .global A_02585c
        .type   A_02585c, %function
A_02585c:
        push    {r4, r5, r6, lr}
        ldr     ip, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L258b8
        mov     r5, #0
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, ip}
        orr     r1, r5, ip, lsl #14
        add     r5, r4, #0xc
        orr     r1, r1, #2
        stm     r5, {r1, r2}
        mov     r1, #0x400
        orr     r1, r1, ip, lsl #14
        add     r5, r4, #0x14
        orr     r1, r1, #2
        stm     r5, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L258b8:
        .word   0x00020084
        .size   A_02585c, . - A_02585c

@ FUN_000259c0
        .global A_0259c0
        .type   A_0259c0, %function
A_0259c0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        ldr     r6, [sp, #0x24]
        ldr     ip, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L25a34
        mov     sb, #0
        str     r5, [r4, #0x80]!
        add     r7, r4, #4
        stm     r7, {r0, r2, ip}
        mov     r0, #0x400
        orr     r0, r0, r2, lsl #14
        orr     r0, r0, #2
        strd    r0, r1, [r4, #0x10]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        orr     r0, sb, ip, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        stm     r5, {r0, r3}
        ldr     r0, L25a38
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L25a30
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L25a30:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L25a34:
        .word   0x004b00c2
L25a38:
        .word   0x008ab930
        .size   A_0259c0, . - A_0259c0

@ FUN_00025a3c
        .global A_025a3c
        .type   A_025a3c, %function
A_025a3c:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L25a8c
        mov     r6, #0
        str     r7, [r4, #0x80]!
        add     r8, r4, #4
        stm     r8, {r0, r1, r2, r5, r6, ip}
        orr     r0, r6, r5, lsl #14
        add     r6, r4, #0x1c
        orr     r0, r0, #2
        stm     r6, {r0, r3}
        ldr     r0, L25a90
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L25a8c:
        .word   0x000c0104
L25a90:
        .word   0x008ab930
        .size   A_025a3c, . - A_025a3c

@ FUN_00025a94
        .global A_025a94
        .type   A_025a94, %function
A_025a94:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L25ae8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        str     r1, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L25aec
        str     r3, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L25ae0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L25ae0:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L25ae8:
        .word   0x000f0100
L25aec:
        .word   0x008ab930
        .size   A_025a94, . - A_025a94

@ FUN_00025b7c
        .global A_025b7c
        .type   A_025b7c, %function
A_025b7c:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L25bb8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L25bbc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L25bb8:
        .word   0x003e0080
L25bbc:
        .word   0x008ab930
        .size   A_025b7c, . - A_025b7c

@ FUN_00025c4c
        .global A_025c4c
        .type   A_025c4c, %function
A_025c4c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L25c7c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L25c80
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L25c7c:
        .word   0x003f0040
L25c80:
        .word   0x008ab930
        .size   A_025c4c, . - A_025c4c

@ FUN_00025c84
        .global A_025c84
        .type   A_025c84, %function
A_025c84:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x3c0000
        str     r0, [r4, #0x80]!
        ldr     r0, L25cbc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L25cb8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L25cb8:
        pop     {r4, r5, r6, pc}
L25cbc:
        .word   0x008aab70
        .size   A_025c84, . - A_025c84

@ FUN_00025cc0
        .global A_025cc0
        .type   A_025cc0, %function
A_025cc0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L25cf4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L25cf8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L25cf4:
        .word   0x003d0040
L25cf8:
        .word   0x008aab70
        .size   A_025cc0, . - A_025cc0

@ FUN_00025cfc
        .global A_025cfc
        .type   A_025cfc, %function
A_025cfc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x3b0000
        str     r0, [r4, #0x80]!
        ldr     r0, L25d34
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L25d30
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L25d30:
        pop     {r4, r5, r6, pc}
L25d34:
        .word   0x008aab70
        .size   A_025cfc, . - A_025cfc

@ FUN_00025d38
        .global A_025d38
        .type   A_025d38, %function
A_025d38:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L25d6c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L25d70
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L25d6c:
        .word   0x00130040
L25d70:
        .word   0x008aab70
        .size   A_025d38, . - A_025d38

@ FUN_00028ec4
        .global A_028ec4
        .type   A_028ec4, %function
A_028ec4:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, [sp, #0x24]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L28f20
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrh    r3, [sp, #0xc]
        strh    r3, [r4, #8]
        ldrh    r3, [sp, #0x20]
        strh    r3, [r4, #0xc]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L28f18
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L28f18:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L28f20:
        .word   0x001100c2
        .size   A_028ec4, . - A_028ec4

@ FUN_00028f24
        .global A_028f24
        .type   A_028f24, %function
A_028f24:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x120000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_028f24, . - A_028f24

@ FUN_00029594
        .global A_029594
        .type   A_029594, %function
A_029594:
        push    {r4, r5, r6, lr}
        mov     r5, r3
        ldr     r6, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L295e0
        mov     r3, #0
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L295dc
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #0x10]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L295dc:
        pop     {r4, r5, r6, pc}
L295e0:
        .word   0x00130042
        .size   A_029594, . - A_029594

@ FUN_000295e4
        .global A_0295e4
        .type   A_0295e4, %function
A_0295e4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x140000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_0295e4, . - A_0295e4

@ FUN_0002a7d4
        .global A_02a7d4
        .type   A_02a7d4, %function
A_02a7d4:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L2a808
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L2a804
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L2a804:
        pop     {r4, r5, r6, pc}
L2a808:
        .word   0x08630000
        .size   A_02a7d4, . - A_02a7d4

@ FUN_0002af84
        .global A_02af84
        .type   A_02af84, %function
A_02af84:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xc0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_02af84, . - A_02af84

@ FUN_000313ac
        .global A_0313ac
        .type   A_0313ac, %function
A_0313ac:
        str     r0, [sp, #-4]!
        ldr     r0, [sp, #4]
        svc     #0x1e
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_0313ac, . - A_0313ac

@ FUN_000313c8
        .global A_0313c8
        .type   A_0313c8, %function
A_0313c8:
        str     r0, [sp, #-4]!
        svc     #0x1a
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_0313c8, . - A_0313c8

@ FUN_000313e0
        .global A_0313e0
        .type   A_0313e0, %function
A_0313e0:
        str     r0, [sp, #-4]!
        svc     #0x27
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_0313e0, . - A_0313e0

@ FUN_000313f8
        .global A_0313f8
        .type   A_0313f8, %function
A_0313f8:
        str     r0, [sp, #-4]!
        svc     #0x29
        ldr     r3, [sp]
        str     r1, [r3]
        str     r2, [r3, #4]
        add     sp, sp, #4
        bx      lr
        .size   A_0313f8, . - A_0313f8

@ FUN_00031414
        .global A_031414
        .type   A_031414, %function
A_031414:
        str     r0, [sp, #-4]!
        svc     #6
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_031414, . - A_031414

@ FUN_0003142c
        .global A_03142c
        .type   A_03142c, %function
A_03142c:
        str     r0, [sp, #-4]!
        svc     #0x2b
        ldr     r3, [sp]
        str     r1, [r3]
        str     r2, [r3, #4]
        add     sp, sp, #4
        bx      lr
        .size   A_03142c, . - A_03142c

@ FUN_00031448
        .global A_031448
        .type   A_031448, %function
A_031448:
        str     r0, [sp, #-4]!
        svc     #0x37
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_031448, . - A_031448

@ FUN_00031460
        .global A_031460
        .type   A_031460, %function
A_031460:
        str     r0, [sp, #-4]!
        svc     #0xb
        ldr     r2, [sp]
        str     r1, [r2]
        add     sp, sp, #4
        bx      lr
        .size   A_031460, . - A_031460

@ FUN_00031478
        .global A_031478
        .type   A_031478, %function
A_031478:
        push    {r0, r1, r4, r5, r6}
        svc     #2
        ldr     r6, [sp]
        str     r1, [r6]
        str     r2, [r6, #4]
        str     r3, [r6, #8]
        str     r4, [r6, #0xc]
        ldr     r6, [sp, #4]
        str     r5, [r6]
        add     sp, sp, #8
        pop     {r4, r5, r6}
        bx      lr
        .size   A_031478, . - A_031478

@ FUN_0024f7d8
        .global A_24f7d8
        .type   A_24f7d8, %function
A_24f7d8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L24f7fc
        ldr     r1, [r0]
        sub     r1, r1, #1
        str     r1, [r0]
        svc     #0x28
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L24f7fc:
        .word   0x00896e68
        .size   A_24f7d8, . - A_24f7d8

@ FUN_0037278c
        .global A_37278c
        .type   A_37278c, %function
A_37278c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L3727cc
        add     r4, r5, #0x60
        mov     r6, #0
        str     r0, [r5]
        ldr     r0, [r5, #0x60]
        cmp     r0, #0
        beq     L3727b8
        svc     #0x23
        str     r6, [r4]
L3727b8:
        ldr     r1, L3727d0
        sub     r0, r4, #0x60
        str     r6, [r1]
        pop     {r4, r5, r6, lr}
        b       Fn_4e019c
L3727cc:
        .word   0x0081f3c8
L3727d0:
        .word   0x008bfa9c
        .size   A_37278c, . - A_37278c

@ FUN_0040685c
        .global A_40685c
        .type   A_40685c, %function
A_40685c:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L40687c
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L40687c:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_40685c, . - A_40685c

@ FUN_004e1d4c
        .global A_4e1d4c
        .type   A_4e1d4c, %function
A_4e1d4c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e1d8c
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e1d90
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e1d8c:
        .word   0x00080004
L4e1d90:
        .word   0x008ab858
        .size   A_4e1d4c, . - A_4e1d4c

@ FUN_004e1d94
        .global A_4e1d94
        .type   A_4e1d94, %function
A_4e1d94:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e1dd8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L4e1ddc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e1dd4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e1dd4:
        pop     {r4, r5, r6, pc}
L4e1dd8:
        .word   0x003e0042
L4e1ddc:
        .word   0x008ab858
        .size   A_4e1d94, . - A_4e1d94

@ FUN_004e1de0
        .global A_4e1de0
        .type   A_4e1de0, %function
A_4e1de0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e1e2c
        mov     r2, #0
        str     r3, [r4, #0x80]!
        mov     r3, #0x20
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        str     r3, [r4, #4]
        str     r0, [r4, #0x18]
        ldr     r1, L4e1e30
        ldr     r0, L4e1e34
        str     r1, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e1e2c:
        .word   0x00040006
L4e1e30:
        .word   0x00800402
L4e1e34:
        .word   0x008ab858
        .size   A_4e1de0, . - A_4e1de0

@ FUN_004e1e38
        .global A_4e1e38
        .type   A_4e1e38, %function
A_4e1e38:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e1e8c
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e1e90
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e1e94
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e1e8c:
        .word   0x00240042
L4e1e90:
        .word   0x00800002
L4e1e94:
        .word   0x008ab858
        .size   A_4e1e38, . - A_4e1e38

@ FUN_004e1e98
        .global A_4e1e98
        .type   A_4e1e98, %function
A_4e1e98:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e1ed8
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e1edc
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e1ed8:
        .word   0x00190004
L4e1edc:
        .word   0x008ab858
        .size   A_4e1e98, . - A_4e1e98

@ FUN_004e1ee0
        .global A_4e1ee0
        .type   A_4e1ee0, %function
A_4e1ee0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e1f34
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e1f38
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e1f3c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e1f34:
        .word   0x00230042
L4e1f38:
        .word   0x00800002
L4e1f3c:
        .word   0x008ab858
        .size   A_4e1ee0, . - A_4e1ee0

@ FUN_004e1f40
        .global A_4e1f40
        .type   A_4e1f40, %function
A_4e1f40:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e1f94
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e1f98
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e1f9c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e1f94:
        .word   0x00020042
L4e1f98:
        .word   0x00800002
L4e1f9c:
        .word   0x008ab858
        .size   A_4e1f40, . - A_4e1f40

@ FUN_004e1fa0
        .global A_4e1fa0
        .type   A_4e1fa0, %function
A_4e1fa0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e1fe0
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e1fe4
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e1fe0:
        .word   0x00150004
L4e1fe4:
        .word   0x008ab858
        .size   A_4e1fa0, . - A_4e1fa0

@ FUN_004e1fe8
        .global A_4e1fe8
        .type   A_4e1fe8, %function
A_4e1fe8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2028
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4e202c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2028:
        .word   0x003c0042
L4e202c:
        .word   0x008ab858
        .size   A_4e1fe8, . - A_4e1fe8

@ FUN_004e2030
        .global A_4e2030
        .type   A_4e2030, %function
A_4e2030:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e2064
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e2068
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2064:
        .word   0x00090002
L4e2068:
        .word   0x008ab858
        .size   A_4e2030, . - A_4e2030

@ FUN_004e206c
        .global A_4e206c
        .type   A_4e206c, %function
A_4e206c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e20c0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e20c4
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e20c8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e20c0:
        .word   0x00220042
L4e20c4:
        .word   0x00800002
L4e20c8:
        .word   0x008ab858
        .size   A_4e206c, . - A_4e206c

@ FUN_004e2138
        .global A_4e2138
        .type   A_4e2138, %function
A_4e2138:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e2194
        str     r3, [r4, #0x80]!
        ldr     r3, L4e2198
        str     r0, [r4, #8]
        ldr     r0, L4e219c
        add     r5, r4, #0xc
        str     r3, [r4, #4]
        stm     r5, {r0, r2}
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r3, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e21a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2194:
        .word   0x002a0004
L4e2198:
        .word   0x00800002
L4e219c:
        .word   0x00019002
L4e21a0:
        .word   0x008ab858
        .size   A_4e2138, . - A_4e2138

@ FUN_004e21a4
        .global A_4e21a4
        .type   A_4e21a4, %function
A_4e21a4:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2200
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e2204
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e2208
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e2200:
        .word   0x00250042
L4e2204:
        .word   0x00800002
L4e2208:
        .word   0x008ab858
        .size   A_4e21a4, . - A_4e21a4

@ FUN_004e220c
        .global A_4e220c
        .type   A_4e220c, %function
A_4e220c:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2278
        mov     r3, #0x20
        mov     r0, #0
        str     r2, [r4, #0x80]!
        ldrh    r2, [sp, #8]
        strh    r2, [r4, #4]
        str     r3, [r4, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r5]
        ldr     r0, L4e227c
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e2270
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L4e2270:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e2278:
        .word   0x001d0042
L4e227c:
        .word   0x008ab858
        .size   A_4e220c, . - A_4e220c

@ FUN_004e2280
        .global A_4e2280
        .type   A_4e2280, %function
A_4e2280:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e22b4
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e22b8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e22b4:
        .word   0x00050002
L4e22b8:
        .word   0x008ab858
        .size   A_4e2280, . - A_4e2280

@ FUN_004e22bc
        .global A_4e22bc
        .type   A_4e22bc, %function
A_4e22bc:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e2300
        str     r1, [r4, #0x80]!
        ldr     r1, L4e2304
        str     r0, [r4, #8]
        ldr     r0, L4e2308
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e22fc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e22fc:
        pop     {r4, r5, r6, pc}
L4e2300:
        .word   0x00270002
L4e2304:
        .word   0x00800402
L4e2308:
        .word   0x008ab858
        .size   A_4e22bc, . - A_4e22bc

@ FUN_004e2348
        .global A_4e2348
        .type   A_4e2348, %function
A_4e2348:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e238c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e2390
        str     r0, [r4, #8]
        ldr     r0, L4e2394
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2388
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e2388:
        pop     {r4, r5, r6, pc}
L4e238c:
        .word   0x00290002
L4e2390:
        .word   0x00800402
L4e2394:
        .word   0x008ab858
        .size   A_4e2348, . - A_4e2348

@ FUN_004e2398
        .global A_4e2398
        .type   A_4e2398, %function
A_4e2398:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2404
        mov     r3, #0x20
        mov     r0, #0
        str     r2, [r4, #0x80]!
        ldrh    r2, [sp, #8]
        strh    r2, [r4, #4]
        str     r3, [r4, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r5]
        ldr     r0, L4e2408
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e23fc
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L4e23fc:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e2404:
        .word   0x001e0042
L4e2408:
        .word   0x008ab858
        .size   A_4e2398, . - A_4e2398

@ FUN_004e240c
        .global A_4e240c
        .type   A_4e240c, %function
A_4e240c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e2444
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L4e2448
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2444:
        .word   0x00400042
L4e2448:
        .word   0x008ab858
        .size   A_4e240c, . - A_4e240c

@ FUN_004e244c
        .global A_4e244c
        .type   A_4e244c, %function
A_4e244c:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e24a8
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e24ac
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e24b0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e24a8:
        .word   0x00260042
L4e24ac:
        .word   0x00800002
L4e24b0:
        .word   0x008ab858
        .size   A_4e244c, . - A_4e244c

@ FUN_004e24b4
        .global A_4e24b4
        .type   A_4e24b4, %function
A_4e24b4:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2510
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e2514
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e2518
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e2510:
        .word   0x00280042
L4e2514:
        .word   0x00800002
L4e2518:
        .word   0x008ab858
        .size   A_4e24b4, . - A_4e24b4

@ FUN_004e251c
        .global A_4e251c
        .type   A_4e251c, %function
A_4e251c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2560
        str     r2, [r4, #0x80]!
        mov     r2, #0x1c00
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4e2564
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2560:
        .word   0x003d0042
L4e2564:
        .word   0x008ab858
        .size   A_4e251c, . - A_4e251c

@ FUN_004e2568
        .global A_4e2568
        .type   A_4e2568, %function
A_4e2568:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e25a8
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e25ac
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e25a8:
        .word   0x00170004
L4e25ac:
        .word   0x008ab858
        .size   A_4e2568, . - A_4e2568

@ FUN_004e25b0
        .global A_4e25b0
        .type   A_4e25b0, %function
A_4e25b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e25e4
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e25e8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e25e4:
        .word   0x001a0002
L4e25e8:
        .word   0x008ab858
        .size   A_4e25b0, . - A_4e25b0

@ FUN_004e25ec
        .global A_4e25ec
        .type   A_4e25ec, %function
A_4e25ec:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x340000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e2634
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e2638
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2634:
        .word   0x00080002
L4e2638:
        .word   0x008ab858
        .size   A_4e25ec, . - A_4e25ec

@ FUN_004e263c
        .global A_4e263c
        .type   A_4e263c, %function
A_4e263c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e2678
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L4e267c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e2678:
        .word   0x00320042
L4e267c:
        .word   0x008ab858
        .size   A_4e263c, . - A_4e263c

@ FUN_004e26bc
        .global A_4e26bc
        .type   A_4e26bc, %function
A_4e26bc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e26f0
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e26f4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e26f0:
        .word   0x00160002
L4e26f4:
        .word   0x008ab858
        .size   A_4e26bc, . - A_4e26bc

@ FUN_004e26f8
        .global A_4e26f8
        .type   A_4e26f8, %function
A_4e26f8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2738
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e273c
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2738:
        .word   0x001b0004
L4e273c:
        .word   0x008ab858
        .size   A_4e26f8, . - A_4e26f8

@ FUN_004e2740
        .global A_4e2740
        .type   A_4e2740, %function
A_4e2740:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e279c
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e27a0
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e27a4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e279c:
        .word   0x002c0042
L4e27a0:
        .word   0x00800002
L4e27a4:
        .word   0x008ab858
        .size   A_4e2740, . - A_4e2740

@ FUN_004e289c
        .global A_4e289c
        .type   A_4e289c, %function
A_4e289c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e28f8
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e28fc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e28f8:
        .word   0x00120042
L4e28fc:
        .word   0x008ab858
        .size   A_4e289c, . - A_4e289c

@ FUN_004e2900
        .global A_4e2900
        .type   A_4e2900, %function
A_4e2900:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e295c
        mov     r0, #0
        str     r3, [r5, #0x80]!
        str     r2, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r4, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r4]
        ldr     r0, L4e2960
        ldr     r0, [r0]
        svc     #0x32
        stm     r4, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e2958
        ldr     r0, [r5, #8]
        str     r0, [r6]
        ldr     r0, [r5, #4]
L4e2958:
        pop     {r4, r5, r6, r7, r8, pc}
L4e295c:
        .word   0x003f0040
L4e2960:
        .word   0x008ab858
        .size   A_4e2900, . - A_4e2900

@ FUN_004e2964
        .global A_4e2964
        .type   A_4e2964, %function
A_4e2964:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e29a4
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e29a8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e29a0
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4e29a0:
        pop     {r4, r5, r6, pc}
L4e29a4:
        .word   0x00310002
L4e29a8:
        .word   0x008ab858
        .size   A_4e2964, . - A_4e2964

@ FUN_004e29ac
        .global A_4e29ac
        .type   A_4e29ac, %function
A_4e29ac:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e29e0
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e29e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e29e0:
        .word   0x00180002
L4e29e4:
        .word   0x008ab858
        .size   A_4e29ac, . - A_4e29ac

@ FUN_004e29e8
        .global A_4e29e8
        .type   A_4e29e8, %function
A_4e29e8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e2a1c
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e2a20
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2a1c:
        .word   0x00210002
L4e2a20:
        .word   0x008ab858
        .size   A_4e29e8, . - A_4e29e8

@ FUN_004e2a24
        .global A_4e2a24
        .type   A_4e2a24, %function
A_4e2a24:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e2a74
        str     r1, [r5, #0x80]!
        mov     r1, #0x20
        str     r1, [r5, #4]
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e2a78
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e2a7c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2a74:
        .word   0x00140002
L4e2a78:
        .word   0x0002c002
L4e2a7c:
        .word   0x008ab858
        .size   A_4e2a24, . - A_4e2a24

@ FUN_004e2a80
        .global A_4e2a80
        .type   A_4e2a80, %function
A_4e2a80:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2ae4
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldrb    r2, [sp, #0xc]
        strb    r2, [r4, #8]
        ldr     r2, L4e2ae8
        str     r0, [r4, #0x10]
        str     r2, [r4, #0xc]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e2aec
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L4e2ae4:
        .word   0x002d0082
L4e2ae8:
        .word   0x00800002
L4e2aec:
        .word   0x008ab858
        .size   A_4e2a80, . - A_4e2a80

@ FUN_004e2af0
        .global A_4e2af0
        .type   A_4e2af0, %function
A_4e2af0:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r5, [sp, #0x1c]
        ldr     ip, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4e2b5c
        str     r6, [r4, #0x80]!
        add     r7, r4, #4
        stm     r7, {r1, r3, r5}
        add     r7, r4, #0x18
        ldr     r1, L4e2b60
        str     r0, [r4, #0x14]
        sub     r0, r1, #0x81000
        str     r1, [r4, #0x10]
        stm     r7, {r0, r2}
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        sub     r0, r1, #0x1800
        ldrd    r6, r7, [r5]
        stm     r5, {r0, ip}
        ldr     r0, L4e2b64
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2b5c:
        .word   0x002e00c4
L4e2b60:
        .word   0x00101802
L4e2b64:
        .word   0x008ab858
        .size   A_4e2af0, . - A_4e2af0

@ FUN_004e2b68
        .global A_4e2b68
        .type   A_4e2b68, %function
A_4e2b68:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x390000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e2bb0
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e2bb4
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2bb0:
        .word   0x00190002
L4e2bb4:
        .word   0x008ab858
        .size   A_4e2b68, . - A_4e2b68

@ FUN_004e2bb8
        .global A_4e2bb8
        .type   A_4e2bb8, %function
A_4e2bb8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x380000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2bf0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2bec
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e2bec:
        pop     {r4, r5, r6, pc}
L4e2bf0:
        .word   0x008ab858
        .size   A_4e2bb8, . - A_4e2bb8

@ FUN_004e2bf4
        .global A_4e2bf4
        .type   A_4e2bf4, %function
A_4e2bf4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2c2c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2c28
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4e2c28:
        pop     {r4, r5, r6, pc}
L4e2c2c:
        .word   0x008ab858
        .size   A_4e2bf4, . - A_4e2bf4

@ FUN_004e2c30
        .global A_4e2c30
        .type   A_4e2c30, %function
A_4e2c30:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e2c64
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e2c68
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2c64:
        .word   0x001c0002
L4e2c68:
        .word   0x008ab858
        .size   A_4e2c30, . - A_4e2c30

@ FUN_004e2c6c
        .global A_4e2c6c
        .type   A_4e2c6c, %function
A_4e2c6c:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2cd8
        mov     r3, #0x20
        mov     r0, #0
        str     r2, [r4, #0x80]!
        ldrh    r2, [sp, #8]
        strh    r2, [r4, #4]
        str     r3, [r4, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r5]
        ldr     r0, L4e2cdc
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e2cd0
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L4e2cd0:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e2cd8:
        .word   0x001f0042
L4e2cdc:
        .word   0x008ab858
        .size   A_4e2c6c, . - A_4e2c6c

@ FUN_004e2ce0
        .global A_4e2ce0
        .type   A_4e2ce0, %function
A_4e2ce0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2d20
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r2, [r4, #4]
        mov     r2, #0x4000000
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x10]
        ldr     r0, L4e2d24
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2d20:
        .word   0x00200005
L4e2d24:
        .word   0x008ab858
        .size   A_4e2ce0, . - A_4e2ce0

@ FUN_004e2d28
        .global A_4e2d28
        .type   A_4e2d28, %function
A_4e2d28:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r2, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4e2d9c
        str     ip, [r4, #0x80]!
        add     lr, r4, #0xc
        str     r1, [r4, #4]
        ldrb    ip, [sp, #8]
        strb    ip, [r4, #8]
        mov     ip, #0x20
        stm     lr, {r2, ip}
        mov     ip, #0x800
        str     r0, [r4, #0x1c]
        orr     r1, ip, r1, lsl #14
        mov     r0, #0xc00
        orr     r1, r1, #2
        orr     r0, r0, r2, lsl #14
        add     ip, r4, #0x20
        orr     r0, r0, #2
        str     r1, [r4, #0x18]
        stm     ip, {r0, r3}
        ldr     r0, L4e2da0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4e2d9c:
        .word   0x000600c6
L4e2da0:
        .word   0x008ab858
        .size   A_4e2d28, . - A_4e2d28

@ FUN_004e2da4
        .global A_4e2da4
        .type   A_4e2da4, %function
A_4e2da4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x350000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2ddc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2dd8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e2dd8:
        pop     {r4, r5, r6, pc}
L4e2ddc:
        .word   0x008ab858
        .size   A_4e2da4, . - A_4e2da4

@ FUN_004e2de0
        .global A_4e2de0
        .type   A_4e2de0, %function
A_4e2de0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e2e20
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e2e24
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e2e20:
        .word   0x00300004
L4e2e24:
        .word   0x008ab858
        .size   A_4e2de0, . - A_4e2de0

@ FUN_004e2e28
        .global A_4e2e28
        .type   A_4e2e28, %function
A_4e2e28:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e2e84
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e2e88
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2e84:
        .word   0x000e0042
L4e2e88:
        .word   0x008ab858
        .size   A_4e2e28, . - A_4e2e28

@ FUN_004e2e8c
        .global A_4e2e8c
        .type   A_4e2e8c, %function
A_4e2e8c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x360000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2ec4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2ec0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e2ec0:
        pop     {r4, r5, r6, pc}
L4e2ec4:
        .word   0x008ab858
        .size   A_4e2e8c, . - A_4e2e8c

@ FUN_004e2ec8
        .global A_4e2ec8
        .type   A_4e2ec8, %function
A_4e2ec8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x330000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2f00
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2efc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e2efc:
        pop     {r4, r5, r6, pc}
L4e2f00:
        .word   0x008ab858
        .size   A_4e2ec8, . - A_4e2ec8

@ FUN_004e2f04
        .global A_4e2f04
        .type   A_4e2f04, %function
A_4e2f04:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e2f60
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e2f64
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e2f60:
        .word   0x00130042
L4e2f64:
        .word   0x008ab858
        .size   A_4e2f04, . - A_4e2f04

@ FUN_004e2f68
        .global A_4e2f68
        .type   A_4e2f68, %function
A_4e2f68:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xf0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2fa0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2f9c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e2f9c:
        pop     {r4, r5, r6, pc}
L4e2fa0:
        .word   0x008ab858
        .size   A_4e2f68, . - A_4e2f68

@ FUN_004e2fa4
        .global A_4e2fa4
        .type   A_4e2fa4, %function
A_4e2fa4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x370000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e2fdc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e2fd8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e2fd8:
        pop     {r4, r5, r6, pc}
L4e2fdc:
        .word   0x008ab858
        .size   A_4e2fa4, . - A_4e2fa4

@ FUN_004e2fe0
        .global A_4e2fe0
        .type   A_4e2fe0, %function
A_4e2fe0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x3b0000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e3028
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e302c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3028:
        .word   0x00080002
L4e302c:
        .word   0x008ab858
        .size   A_4e2fe0, . - A_4e2fe0

@ FUN_004e3030
        .global A_4e3030
        .type   A_4e3030, %function
A_4e3030:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x3a0000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e3078
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e307c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3078:
        .word   0x00080002
L4e307c:
        .word   0x008ab858
        .size   A_4e3030, . - A_4e3030

@ FUN_004e311c
        .global A_4e311c
        .type   A_4e311c, %function
A_4e311c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e3178
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e317c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3178:
        .word   0x00100042
L4e317c:
        .word   0x008ab858
        .size   A_4e311c, . - A_4e311c

@ FUN_004e3180
        .global A_4e3180
        .type   A_4e3180, %function
A_4e3180:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e31c0
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e31c4
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e31c0:
        .word   0x002f0004
L4e31c4:
        .word   0x008ab858
        .size   A_4e3180, . - A_4e3180

@ FUN_004e322c
        .global A_4e322c
        .type   A_4e322c, %function
A_4e322c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e3264
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e3260
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e3260:
        pop     {r4, r5, r6, pc}
L4e3264:
        .word   0x008ab858
        .size   A_4e322c, . - A_4e322c

@ FUN_004e3268
        .global A_4e3268
        .type   A_4e3268, %function
A_4e3268:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e32a8
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e32ac
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e32a8:
        .word   0x00080004
L4e32ac:
        .word   0x008b8764
        .size   A_4e3268, . - A_4e3268

@ FUN_004e32b0
        .global A_4e32b0
        .type   A_4e32b0, %function
A_4e32b0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e32f4
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L4e32f8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e32f0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e32f0:
        pop     {r4, r5, r6, pc}
L4e32f4:
        .word   0x003e0042
L4e32f8:
        .word   0x008b8764
        .size   A_4e32b0, . - A_4e32b0

@ FUN_004e32fc
        .global A_4e32fc
        .type   A_4e32fc, %function
A_4e32fc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e3348
        mov     r2, #0
        str     r3, [r4, #0x80]!
        mov     r3, #0x20
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        str     r3, [r4, #4]
        str     r0, [r4, #0x18]
        ldr     r1, L4e334c
        ldr     r0, L4e3350
        str     r1, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3348:
        .word   0x00040006
L4e334c:
        .word   0x00800402
L4e3350:
        .word   0x008b8764
        .size   A_4e32fc, . - A_4e32fc

@ FUN_004e3354
        .global A_4e3354
        .type   A_4e3354, %function
A_4e3354:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e33a8
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e33ac
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e33b0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e33a8:
        .word   0x00240042
L4e33ac:
        .word   0x00800002
L4e33b0:
        .word   0x008b8764
        .size   A_4e3354, . - A_4e3354

@ FUN_004e33b4
        .global A_4e33b4
        .type   A_4e33b4, %function
A_4e33b4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e33f4
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e33f8
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e33f4:
        .word   0x00190004
L4e33f8:
        .word   0x008b8764
        .size   A_4e33b4, . - A_4e33b4

@ FUN_004e33fc
        .global A_4e33fc
        .type   A_4e33fc, %function
A_4e33fc:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e3450
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e3454
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e3458
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3450:
        .word   0x00230042
L4e3454:
        .word   0x00800002
L4e3458:
        .word   0x008b8764
        .size   A_4e33fc, . - A_4e33fc

@ FUN_004e345c
        .global A_4e345c
        .type   A_4e345c, %function
A_4e345c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e34b0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e34b4
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e34b8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e34b0:
        .word   0x00020042
L4e34b4:
        .word   0x00800002
L4e34b8:
        .word   0x008b8764
        .size   A_4e345c, . - A_4e345c

@ FUN_004e34bc
        .global A_4e34bc
        .type   A_4e34bc, %function
A_4e34bc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e34fc
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e3500
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e34fc:
        .word   0x00150004
L4e3500:
        .word   0x008b8764
        .size   A_4e34bc, . - A_4e34bc

@ FUN_004e3504
        .global A_4e3504
        .type   A_4e3504, %function
A_4e3504:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3544
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4e3548
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3544:
        .word   0x003c0042
L4e3548:
        .word   0x008b8764
        .size   A_4e3504, . - A_4e3504

@ FUN_004e354c
        .global A_4e354c
        .type   A_4e354c, %function
A_4e354c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3580
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e3584
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3580:
        .word   0x00090002
L4e3584:
        .word   0x008b8764
        .size   A_4e354c, . - A_4e354c

@ FUN_004e3588
        .global A_4e3588
        .type   A_4e3588, %function
A_4e3588:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e35dc
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldr     r2, L4e35e0
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e35e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e35dc:
        .word   0x00220042
L4e35e0:
        .word   0x00800002
L4e35e4:
        .word   0x008b8764
        .size   A_4e3588, . - A_4e3588

@ FUN_004e35e8
        .global A_4e35e8
        .type   A_4e35e8, %function
A_4e35e8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e3644
        str     r3, [r4, #0x80]!
        ldr     r3, L4e3648
        str     r0, [r4, #8]
        ldr     r0, L4e364c
        add     r5, r4, #0xc
        str     r3, [r4, #4]
        stm     r5, {r0, r2}
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r3, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e3650
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3644:
        .word   0x002b0004
L4e3648:
        .word   0x00800002
L4e364c:
        .word   0x00029402
L4e3650:
        .word   0x008b8764
        .size   A_4e35e8, . - A_4e35e8

@ FUN_004e3654
        .global A_4e3654
        .type   A_4e3654, %function
A_4e3654:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4e36b0
        str     r3, [r4, #0x80]!
        ldr     r3, L4e36b4
        str     r0, [r4, #8]
        ldr     r0, L4e36b8
        add     r5, r4, #0xc
        str     r3, [r4, #4]
        stm     r5, {r0, r2}
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r3, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e36bc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e36b0:
        .word   0x002a0004
L4e36b4:
        .word   0x00800002
L4e36b8:
        .word   0x00019002
L4e36bc:
        .word   0x008b8764
        .size   A_4e3654, . - A_4e3654

@ FUN_004e36c0
        .global A_4e36c0
        .type   A_4e36c0, %function
A_4e36c0:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e371c
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e3720
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e3724
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e371c:
        .word   0x00250042
L4e3720:
        .word   0x00800002
L4e3724:
        .word   0x008b8764
        .size   A_4e36c0, . - A_4e36c0

@ FUN_004e3728
        .global A_4e3728
        .type   A_4e3728, %function
A_4e3728:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3794
        mov     r3, #0x20
        mov     r0, #0
        str     r2, [r4, #0x80]!
        ldrh    r2, [sp, #8]
        strh    r2, [r4, #4]
        str     r3, [r4, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r5]
        ldr     r0, L4e3798
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e378c
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L4e378c:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e3794:
        .word   0x001d0042
L4e3798:
        .word   0x008b8764
        .size   A_4e3728, . - A_4e3728

@ FUN_004e379c
        .global A_4e379c
        .type   A_4e379c, %function
A_4e379c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e37d0
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e37d4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e37d0:
        .word   0x00050002
L4e37d4:
        .word   0x008b8764
        .size   A_4e379c, . - A_4e379c

@ FUN_004e37d8
        .global A_4e37d8
        .type   A_4e37d8, %function
A_4e37d8:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e381c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e3820
        str     r0, [r4, #8]
        ldr     r0, L4e3824
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e3818
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e3818:
        pop     {r4, r5, r6, pc}
L4e381c:
        .word   0x00270002
L4e3820:
        .word   0x00800402
L4e3824:
        .word   0x008b8764
        .size   A_4e37d8, . - A_4e37d8

@ FUN_004e3828
        .global A_4e3828
        .type   A_4e3828, %function
A_4e3828:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xa0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e3860
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e385c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4e385c:
        pop     {r4, r5, r6, pc}
L4e3860:
        .word   0x008b8764
        .size   A_4e3828, . - A_4e3828

@ FUN_004e3864
        .global A_4e3864
        .type   A_4e3864, %function
A_4e3864:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e38a8
        str     r1, [r4, #0x80]!
        ldr     r1, L4e38ac
        str     r0, [r4, #8]
        ldr     r0, L4e38b0
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e38a4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e38a4:
        pop     {r4, r5, r6, pc}
L4e38a8:
        .word   0x00290002
L4e38ac:
        .word   0x00800402
L4e38b0:
        .word   0x008b8764
        .size   A_4e3864, . - A_4e3864

@ FUN_004e38b4
        .global A_4e38b4
        .type   A_4e38b4, %function
A_4e38b4:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3920
        mov     r3, #0x20
        mov     r0, #0
        str     r2, [r4, #0x80]!
        ldrh    r2, [sp, #8]
        strh    r2, [r4, #4]
        str     r3, [r4, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r5]
        ldr     r0, L4e3924
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e3918
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L4e3918:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e3920:
        .word   0x001e0042
L4e3924:
        .word   0x008b8764
        .size   A_4e38b4, . - A_4e38b4

@ FUN_004e3928
        .global A_4e3928
        .type   A_4e3928, %function
A_4e3928:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e3960
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L4e3964
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3960:
        .word   0x00400042
L4e3964:
        .word   0x008b8764
        .size   A_4e3928, . - A_4e3928

@ FUN_004e3968
        .global A_4e3968
        .type   A_4e3968, %function
A_4e3968:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e39c4
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e39c8
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e39cc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e39c4:
        .word   0x00260042
L4e39c8:
        .word   0x00800002
L4e39cc:
        .word   0x008b8764
        .size   A_4e3968, . - A_4e3968

@ FUN_004e39d0
        .global A_4e39d0
        .type   A_4e39d0, %function
A_4e39d0:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3a2c
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e3a30
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e3a34
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e3a2c:
        .word   0x00280042
L4e3a30:
        .word   0x00800002
L4e3a34:
        .word   0x008b8764
        .size   A_4e39d0, . - A_4e39d0

@ FUN_004e3a38
        .global A_4e3a38
        .type   A_4e3a38, %function
A_4e3a38:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3a7c
        str     r2, [r4, #0x80]!
        mov     r2, #0x1c00
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4e3a80
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3a7c:
        .word   0x003d0042
L4e3a80:
        .word   0x008b8764
        .size   A_4e3a38, . - A_4e3a38

@ FUN_004e3a84
        .global A_4e3a84
        .type   A_4e3a84, %function
A_4e3a84:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3ac4
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e3ac8
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3ac4:
        .word   0x00170004
L4e3ac8:
        .word   0x008b8764
        .size   A_4e3a84, . - A_4e3a84

@ FUN_004e3acc
        .global A_4e3acc
        .type   A_4e3acc, %function
A_4e3acc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3b00
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e3b04
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3b00:
        .word   0x001a0002
L4e3b04:
        .word   0x008b8764
        .size   A_4e3acc, . - A_4e3acc

@ FUN_004e3b08
        .global A_4e3b08
        .type   A_4e3b08, %function
A_4e3b08:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x340000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e3b50
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e3b54
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3b50:
        .word   0x00080002
L4e3b54:
        .word   0x008b8764
        .size   A_4e3b08, . - A_4e3b08

@ FUN_004e3b58
        .global A_4e3b58
        .type   A_4e3b58, %function
A_4e3b58:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3b94
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L4e3b98
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e3b94:
        .word   0x00320042
L4e3b98:
        .word   0x008b8764
        .size   A_4e3b58, . - A_4e3b58

@ FUN_004e3b9c
        .global A_4e3b9c
        .type   A_4e3b9c, %function
A_4e3b9c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3bd0
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e3bd4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3bd0:
        .word   0x00070002
L4e3bd4:
        .word   0x008b8764
        .size   A_4e3b9c, . - A_4e3b9c

@ FUN_004e3bd8
        .global A_4e3bd8
        .type   A_4e3bd8, %function
A_4e3bd8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3c0c
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e3c10
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3c0c:
        .word   0x00160002
L4e3c10:
        .word   0x008b8764
        .size   A_4e3bd8, . - A_4e3bd8

@ FUN_004e3c14
        .global A_4e3c14
        .type   A_4e3c14, %function
A_4e3c14:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3c48
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e3c4c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e3c48:
        .word   0x04010040
L4e3c4c:
        .word   0x008b8764
        .size   A_4e3c14, . - A_4e3c14

@ FUN_004e3c50
        .global A_4e3c50
        .type   A_4e3c50, %function
A_4e3c50:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3c90
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e3c94
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3c90:
        .word   0x001b0004
L4e3c94:
        .word   0x008b8764
        .size   A_4e3c50, . - A_4e3c50

@ FUN_004e3c98
        .global A_4e3c98
        .type   A_4e3c98, %function
A_4e3c98:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3cf4
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e3cf8
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e3cfc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e3cf4:
        .word   0x002c0042
L4e3cf8:
        .word   0x00800002
L4e3cfc:
        .word   0x008b8764
        .size   A_4e3c98, . - A_4e3c98

@ FUN_004e3d00
        .global A_4e3d00
        .type   A_4e3d00, %function
A_4e3d00:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x10000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e3d48
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e3d4c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3d48:
        .word   0x00800002
L4e3d4c:
        .word   0x008b8764
        .size   A_4e3d00, . - A_4e3d00

@ FUN_004e3d50
        .global A_4e3d50
        .type   A_4e3d50, %function
A_4e3d50:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e3dac
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldr     r2, L4e3db0
        str     r0, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e3db4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L4e3dac:
        .word   0x00030042
L4e3db0:
        .word   0x00800002
L4e3db4:
        .word   0x008b8764
        .size   A_4e3d50, . - A_4e3d50

@ FUN_004e3db8
        .global A_4e3db8
        .type   A_4e3db8, %function
A_4e3db8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3de4
        str     r0, [r4, #0x80]!
        ldr     r0, L4e3de8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3de4:
        .word   0x04040000
L4e3de8:
        .word   0x008b8764
        .size   A_4e3db8, . - A_4e3db8

@ FUN_004e3dec
        .global A_4e3dec
        .type   A_4e3dec, %function
A_4e3dec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xd0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e3e24
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e3e20
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4e3e20:
        pop     {r4, r5, r6, pc}
L4e3e24:
        .word   0x008b8764
        .size   A_4e3dec, . - A_4e3dec

@ FUN_004e3e28
        .global A_4e3e28
        .type   A_4e3e28, %function
A_4e3e28:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e3e84
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e3e88
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e3e84:
        .word   0x00120042
L4e3e88:
        .word   0x008b8764
        .size   A_4e3e28, . - A_4e3e28

@ FUN_004e3e8c
        .global A_4e3e8c
        .type   A_4e3e8c, %function
A_4e3e8c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e3ee8
        mov     r0, #0
        str     r3, [r5, #0x80]!
        str     r2, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r4, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r4]
        ldr     r0, L4e3eec
        ldr     r0, [r0]
        svc     #0x32
        stm     r4, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e3ee4
        ldr     r0, [r5, #8]
        str     r0, [r6]
        ldr     r0, [r5, #4]
L4e3ee4:
        pop     {r4, r5, r6, r7, r8, pc}
L4e3ee8:
        .word   0x003f0040
L4e3eec:
        .word   0x008b8764
        .size   A_4e3e8c, . - A_4e3e8c

@ FUN_004e3ef0
        .global A_4e3ef0
        .type   A_4e3ef0, %function
A_4e3ef0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3f30
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e3f34
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e3f2c
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4e3f2c:
        pop     {r4, r5, r6, pc}
L4e3f30:
        .word   0x00310002
L4e3f34:
        .word   0x008b8764
        .size   A_4e3ef0, . - A_4e3ef0

@ FUN_004e3f38
        .global A_4e3f38
        .type   A_4e3f38, %function
A_4e3f38:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3f6c
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e3f70
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e3f6c:
        .word   0x00180002
L4e3f70:
        .word   0x008b8764
        .size   A_4e3f38, . - A_4e3f38

@ FUN_004e3f74
        .global A_4e3f74
        .type   A_4e3f74, %function
A_4e3f74:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3fa8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e3fac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e3fa8:
        .word   0x04030040
L4e3fac:
        .word   0x008b8764
        .size   A_4e3f74, . - A_4e3f74

@ FUN_004e3fb0
        .global A_4e3fb0
        .type   A_4e3fb0, %function
A_4e3fb0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e3fe4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e3fe8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e3fe4:
        .word   0x04020040
L4e3fe8:
        .word   0x008b8764
        .size   A_4e3fb0, . - A_4e3fb0

@ FUN_004e3fec
        .global A_4e3fec
        .type   A_4e3fec, %function
A_4e3fec:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4020
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e4024
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4020:
        .word   0x00210002
L4e4024:
        .word   0x008b8764
        .size   A_4e3fec, . - A_4e3fec

@ FUN_004e4028
        .global A_4e4028
        .type   A_4e4028, %function
A_4e4028:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4078
        str     r1, [r5, #0x80]!
        mov     r1, #0x20
        str     r1, [r5, #4]
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e407c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4080
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4078:
        .word   0x00140002
L4e407c:
        .word   0x0002c002
L4e4080:
        .word   0x008b8764
        .size   A_4e4028, . - A_4e4028

@ FUN_004e4084
        .global A_4e4084
        .type   A_4e4084, %function
A_4e4084:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e40bc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e40c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e40b8
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e40b8:
        pop     {r4, r5, r6, pc}
L4e40bc:
        .word   0x04090000
L4e40c0:
        .word   0x008b8764
        .size   A_4e4084, . - A_4e4084

@ FUN_004e40c4
        .global A_4e40c4
        .type   A_4e40c4, %function
A_4e40c4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e40f8
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L4e40fc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e40f8:
        .word   0x040a0040
L4e40fc:
        .word   0x008b8764
        .size   A_4e40c4, . - A_4e40c4

@ FUN_004e4100
        .global A_4e4100
        .type   A_4e4100, %function
A_4e4100:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e4164
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldrb    r2, [sp, #0xc]
        strb    r2, [r4, #8]
        ldr     r2, L4e4168
        str     r0, [r4, #0x10]
        str     r2, [r4, #0xc]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r0, #0x180]!
        str     r1, [r0, #4]
        ldr     r0, L4e416c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L4e4164:
        .word   0x002d0082
L4e4168:
        .word   0x00800002
L4e416c:
        .word   0x008b8764
        .size   A_4e4100, . - A_4e4100

@ FUN_004e4170
        .global A_4e4170
        .type   A_4e4170, %function
A_4e4170:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r5, [sp, #0x1c]
        ldr     ip, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4e41dc
        str     r6, [r4, #0x80]!
        add     r7, r4, #4
        stm     r7, {r1, r3, r5}
        add     r7, r4, #0x18
        ldr     r1, L4e41e0
        str     r0, [r4, #0x14]
        sub     r0, r1, #0x81000
        str     r1, [r4, #0x10]
        stm     r7, {r0, r2}
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        sub     r0, r1, #0x1800
        ldrd    r6, r7, [r5]
        stm     r5, {r0, ip}
        ldr     r0, L4e41e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e41dc:
        .word   0x002e00c4
L4e41e0:
        .word   0x00101802
L4e41e4:
        .word   0x008b8764
        .size   A_4e4170, . - A_4e4170

@ FUN_004e41e8
        .global A_4e41e8
        .type   A_4e41e8, %function
A_4e41e8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x390000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4230
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4234
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4230:
        .word   0x00190002
L4e4234:
        .word   0x008b8764
        .size   A_4e41e8, . - A_4e41e8

@ FUN_004e4238
        .global A_4e4238
        .type   A_4e4238, %function
A_4e4238:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x380000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4270
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e426c
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e426c:
        pop     {r4, r5, r6, pc}
L4e4270:
        .word   0x008b8764
        .size   A_4e4238, . - A_4e4238

@ FUN_004e4274
        .global A_4e4274
        .type   A_4e4274, %function
A_4e4274:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e42ac
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e42a8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4e42a8:
        pop     {r4, r5, r6, pc}
L4e42ac:
        .word   0x008b8764
        .size   A_4e4274, . - A_4e4274

@ FUN_004e42b0
        .global A_4e42b0
        .type   A_4e42b0, %function
A_4e42b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e42e4
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4e42e8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e42e4:
        .word   0x001c0002
L4e42e8:
        .word   0x008b8764
        .size   A_4e42b0, . - A_4e42b0

@ FUN_004e42ec
        .global A_4e42ec
        .type   A_4e42ec, %function
A_4e42ec:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e4358
        mov     r3, #0x20
        mov     r0, #0
        str     r2, [r4, #0x80]!
        ldrh    r2, [sp, #8]
        strh    r2, [r4, #4]
        str     r3, [r4, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r0, r0, r2, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        strd    r0, r1, [r5]
        ldr     r0, L4e435c
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L4e4350
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L4e4350:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e4358:
        .word   0x001f0042
L4e435c:
        .word   0x008b8764
        .size   A_4e42ec, . - A_4e42ec

@ FUN_004e4360
        .global A_4e4360
        .type   A_4e4360, %function
A_4e4360:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e43a0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r2, [r4, #4]
        mov     r2, #0x4000000
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x10]
        ldr     r0, L4e43a4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e43a0:
        .word   0x00200005
L4e43a4:
        .word   0x008b8764
        .size   A_4e4360, . - A_4e4360

@ FUN_004e43a8
        .global A_4e43a8
        .type   A_4e43a8, %function
A_4e43a8:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r2, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4e441c
        str     ip, [r4, #0x80]!
        add     lr, r4, #0xc
        str     r1, [r4, #4]
        ldrb    ip, [sp, #8]
        strb    ip, [r4, #8]
        mov     ip, #0x20
        stm     lr, {r2, ip}
        mov     ip, #0x800
        str     r0, [r4, #0x1c]
        orr     r1, ip, r1, lsl #14
        mov     r0, #0xc00
        orr     r1, r1, #2
        orr     r0, r0, r2, lsl #14
        add     ip, r4, #0x20
        orr     r0, r0, #2
        str     r1, [r4, #0x18]
        stm     ip, {r0, r3}
        ldr     r0, L4e4420
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4e441c:
        .word   0x000600c6
L4e4420:
        .word   0x008b8764
        .size   A_4e43a8, . - A_4e43a8

@ FUN_004e4424
        .global A_4e4424
        .type   A_4e4424, %function
A_4e4424:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x350000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e445c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4458
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e4458:
        pop     {r4, r5, r6, pc}
L4e445c:
        .word   0x008b8764
        .size   A_4e4424, . - A_4e4424

@ FUN_004e4460
        .global A_4e4460
        .type   A_4e4460, %function
A_4e4460:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e44a0
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e44a4
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e44a0:
        .word   0x00300004
L4e44a4:
        .word   0x008b8764
        .size   A_4e4460, . - A_4e4460

@ FUN_004e44a8
        .global A_4e44a8
        .type   A_4e44a8, %function
A_4e44a8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e4504
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e4508
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4504:
        .word   0x000e0042
L4e4508:
        .word   0x008b8764
        .size   A_4e44a8, . - A_4e44a8

@ FUN_004e450c
        .global A_4e450c
        .type   A_4e450c, %function
A_4e450c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x360000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4544
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4540
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e4540:
        pop     {r4, r5, r6, pc}
L4e4544:
        .word   0x008b8764
        .size   A_4e450c, . - A_4e450c

@ FUN_004e4548
        .global A_4e4548
        .type   A_4e4548, %function
A_4e4548:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x330000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4580
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e457c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e457c:
        pop     {r4, r5, r6, pc}
L4e4580:
        .word   0x008b8764
        .size   A_4e4548, . - A_4e4548

@ FUN_004e4584
        .global A_4e4584
        .type   A_4e4584, %function
A_4e4584:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e45bc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e45c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e45b8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e45b8:
        pop     {r4, r5, r6, pc}
L4e45bc:
        .word   0x04070000
L4e45c0:
        .word   0x008b8764
        .size   A_4e4584, . - A_4e4584

@ FUN_004e45c4
        .global A_4e45c4
        .type   A_4e45c4, %function
A_4e45c4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e45f8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e45fc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e45f8:
        .word   0x04080040
L4e45fc:
        .word   0x008b8764
        .size   A_4e45c4, . - A_4e45c4

@ FUN_004e4600
        .global A_4e4600
        .type   A_4e4600, %function
A_4e4600:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e465c
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e4660
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e465c:
        .word   0x00130042
L4e4660:
        .word   0x008b8764
        .size   A_4e4600, . - A_4e4600

@ FUN_004e4664
        .global A_4e4664
        .type   A_4e4664, %function
A_4e4664:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xf0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e469c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4698
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e4698:
        pop     {r4, r5, r6, pc}
L4e469c:
        .word   0x008b8764
        .size   A_4e4664, . - A_4e4664

@ FUN_004e46a0
        .global A_4e46a0
        .type   A_4e46a0, %function
A_4e46a0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x370000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e46d8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e46d4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e46d4:
        pop     {r4, r5, r6, pc}
L4e46d8:
        .word   0x008b8764
        .size   A_4e46a0, . - A_4e46a0

@ FUN_004e46dc
        .global A_4e46dc
        .type   A_4e46dc, %function
A_4e46dc:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x3b0000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4724
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4728
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4724:
        .word   0x00080002
L4e4728:
        .word   0x008b8764
        .size   A_4e46dc, . - A_4e46dc

@ FUN_004e472c
        .global A_4e472c
        .type   A_4e472c, %function
A_4e472c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x3a0000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4774
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4778
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4774:
        .word   0x00080002
L4e4778:
        .word   0x008b8764
        .size   A_4e472c, . - A_4e472c

@ FUN_004e4818
        .global A_4e4818
        .type   A_4e4818, %function
A_4e4818:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4e486c
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        mov     ip, #0xa
        stm     lr, {r1, r3}
        orr     r1, ip, r1, lsl #4
        str     r0, [r4, #0x10]
        mov     r0, #0xc
        add     ip, r4, #0x14
        orr     r0, r0, r3, lsl #4
        str     r1, [r4, #0xc]
        stm     ip, {r0, r2}
        ldr     r0, L4e4870
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e486c:
        .word   0x04050084
L4e4870:
        .word   0x008b8764
        .size   A_4e4818, . - A_4e4818

@ FUN_004e4874
        .global A_4e4874
        .type   A_4e4874, %function
A_4e4874:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e48ac
        str     r0, [r4, #0x80]!
        ldr     r0, L4e48b0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e48a8
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e48a8:
        pop     {r4, r5, r6, pc}
L4e48ac:
        .word   0x046d0000
L4e48b0:
        .word   0x008b8764
        .size   A_4e4874, . - A_4e4874

@ FUN_004e48b4
        .global A_4e48b4
        .type   A_4e48b4, %function
A_4e48b4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e48e8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e48ec
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e48e8:
        .word   0x04060040
L4e48ec:
        .word   0x008b8764
        .size   A_4e48b4, . - A_4e48b4

@ FUN_004e48f0
        .global A_4e48f0
        .type   A_4e48f0, %function
A_4e48f0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4924
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L4e4928
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e4924:
        .word   0x046e0040
L4e4928:
        .word   0x008b8764
        .size   A_4e48f0, . - A_4e48f0

@ FUN_004e492c
        .global A_4e492c
        .type   A_4e492c, %function
A_4e492c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4974
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4978
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e497c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4974:
        .word   0x044f0000
L4e4978:
        .word   0x00010002
L4e497c:
        .word   0x008b8764
        .size   A_4e492c, . - A_4e492c

@ FUN_004e4980
        .global A_4e4980
        .type   A_4e4980, %function
A_4e4980:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e49c8
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e49cc
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e49d0
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e49c8:
        .word   0x04650000
L4e49cc:
        .word   0x00190002
L4e49d0:
        .word   0x008b8764
        .size   A_4e4980, . - A_4e4980

@ FUN_004e49d4
        .global A_4e49d4
        .type   A_4e49d4, %function
A_4e49d4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4a0c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4a10
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4a08
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e4a08:
        pop     {r4, r5, r6, pc}
L4e4a0c:
        .word   0x04630000
L4e4a10:
        .word   0x008b8764
        .size   A_4e49d4, . - A_4e49d4

@ FUN_004e4a14
        .global A_4e4a14
        .type   A_4e4a14, %function
A_4e4a14:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e4a4c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e4a50
        str     r0, [r4, #8]
        ldr     r0, L4e4a54
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4a4c:
        .word   0x04500002
L4e4a50:
        .word   0x00012c02
L4e4a54:
        .word   0x008b8764
        .size   A_4e4a14, . - A_4e4a14

@ FUN_004e4a58
        .global A_4e4a58
        .type   A_4e4a58, %function
A_4e4a58:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e4a90
        str     r1, [r4, #0x80]!
        ldr     r1, L4e4a94
        str     r0, [r4, #8]
        ldr     r0, L4e4a98
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4a90:
        .word   0x04660002
L4e4a94:
        .word   0x00193402
L4e4a98:
        .word   0x008b8764
        .size   A_4e4a58, . - A_4e4a58

@ FUN_004e4a9c
        .global A_4e4a9c
        .type   A_4e4a9c, %function
A_4e4a9c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4ad0
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L4e4ad4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e4ad0:
        .word   0x04640040
L4e4ad4:
        .word   0x008b8764
        .size   A_4e4a9c, . - A_4e4a9c

@ FUN_004e4ad8
        .global A_4e4ad8
        .type   A_4e4ad8, %function
A_4e4ad8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4b20
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4b24
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4b28
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4b20:
        .word   0x044b0000
L4e4b24:
        .word   0x00010002
L4e4b28:
        .word   0x008b8764
        .size   A_4e4ad8, . - A_4e4ad8

@ FUN_004e4b2c
        .global A_4e4b2c
        .type   A_4e4b2c, %function
A_4e4b2c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4b64
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4b68
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4b60
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e4b60:
        pop     {r4, r5, r6, pc}
L4e4b64:
        .word   0x045f0000
L4e4b68:
        .word   0x008b8764
        .size   A_4e4b2c, . - A_4e4b2c

@ FUN_004e4b6c
        .global A_4e4b6c
        .type   A_4e4b6c, %function
A_4e4b6c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e4ba4
        str     r1, [r4, #0x80]!
        ldr     r1, L4e4ba8
        str     r0, [r4, #8]
        ldr     r0, L4e4bac
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4ba4:
        .word   0x044c0002
L4e4ba8:
        .word   0x00012402
L4e4bac:
        .word   0x008b8764
        .size   A_4e4b6c, . - A_4e4b6c

@ FUN_004e4bb0
        .global A_4e4bb0
        .type   A_4e4bb0, %function
A_4e4bb0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4be4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e4be8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e4be4:
        .word   0x04600040
L4e4be8:
        .word   0x008b8764
        .size   A_4e4bb0, . - A_4e4bb0

@ FUN_004e4bec
        .global A_4e4bec
        .type   A_4e4bec, %function
A_4e4bec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x4700000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4c24
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4c20
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e4c20:
        pop     {r4, r5, r6, pc}
L4e4c24:
        .word   0x008b8764
        .size   A_4e4bec, . - A_4e4bec

@ FUN_004e4c28
        .global A_4e4c28
        .type   A_4e4c28, %function
A_4e4c28:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e4c84
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e4c88
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4c84:
        .word   0x00100042
L4e4c88:
        .word   0x008b8764
        .size   A_4e4c28, . - A_4e4c28

@ FUN_004e4ccc
        .global A_4e4ccc
        .type   A_4e4ccc, %function
A_4e4ccc:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4d14
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4d18
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4d1c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4d14:
        .word   0x04510000
L4e4d18:
        .word   0x00010002
L4e4d1c:
        .word   0x008b8764
        .size   A_4e4ccc, . - A_4e4ccc

@ FUN_004e4d20
        .global A_4e4d20
        .type   A_4e4d20, %function
A_4e4d20:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4d54
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e4d58
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e4d54:
        .word   0x04480040
L4e4d58:
        .word   0x008b8764
        .size   A_4e4d20, . - A_4e4d20

@ FUN_004e4d5c
        .global A_4e4d5c
        .type   A_4e4d5c, %function
A_4e4d5c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e4d94
        str     r1, [r4, #0x80]!
        ldr     r1, L4e4d98
        str     r0, [r4, #8]
        ldr     r0, L4e4d9c
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4d94:
        .word   0x04520002
L4e4d98:
        .word   0x00013002
L4e4d9c:
        .word   0x008b8764
        .size   A_4e4d5c, . - A_4e4d5c

@ FUN_004e4da0
        .global A_4e4da0
        .type   A_4e4da0, %function
A_4e4da0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4dd8
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4ddc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4dd4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e4dd4:
        pop     {r4, r5, r6, pc}
L4e4dd8:
        .word   0x04610000
L4e4ddc:
        .word   0x008b8764
        .size   A_4e4da0, . - A_4e4da0

@ FUN_004e4de0
        .global A_4e4de0
        .type   A_4e4de0, %function
A_4e4de0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4e28
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4e2c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4e30
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4e28:
        .word   0x04690000
L4e4e2c:
        .word   0x00080002
L4e4e30:
        .word   0x008b8764
        .size   A_4e4de0, . - A_4e4de0

@ FUN_004e4e34
        .global A_4e4e34
        .type   A_4e4e34, %function
A_4e4e34:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4e7c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4e80
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4e84
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4e7c:
        .word   0x04670000
L4e4e80:
        .word   0x00080002
L4e4e84:
        .word   0x008b8764
        .size   A_4e4e34, . - A_4e4e34

@ FUN_004e4e88
        .global A_4e4e88
        .type   A_4e4e88, %function
A_4e4e88:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4ebc
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e4ec0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e4ebc:
        .word   0x04620040
L4e4ec0:
        .word   0x008b8764
        .size   A_4e4e88, . - A_4e4e88

@ FUN_004e4ec4
        .global A_4e4ec4
        .type   A_4e4ec4, %function
A_4e4ec4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e4efc
        str     r1, [r4, #0x80]!
        ldr     r1, L4e4f00
        str     r0, [r4, #8]
        ldr     r0, L4e4f04
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4efc:
        .word   0x046a0002
L4e4f00:
        .word   0x00083c02
L4e4f04:
        .word   0x008b8764
        .size   A_4e4ec4, . - A_4e4ec4

@ FUN_004e4f08
        .global A_4e4f08
        .type   A_4e4f08, %function
A_4e4f08:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e4f40
        str     r1, [r4, #0x80]!
        ldr     r1, L4e4f44
        str     r0, [r4, #8]
        ldr     r0, L4e4f48
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e4f40:
        .word   0x04680002
L4e4f44:
        .word   0x00083802
L4e4f48:
        .word   0x008b8764
        .size   A_4e4f08, . - A_4e4f08

@ FUN_004e4f4c
        .global A_4e4f4c
        .type   A_4e4f4c, %function
A_4e4f4c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e4f94
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e4f98
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e4f9c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e4f94:
        .word   0x04530000
L4e4f98:
        .word   0x00010002
L4e4f9c:
        .word   0x008b8764
        .size   A_4e4f4c, . - A_4e4f4c

@ FUN_004e4fa0
        .global A_4e4fa0
        .type   A_4e4fa0, %function
A_4e4fa0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e4fd8
        str     r0, [r4, #0x80]!
        ldr     r0, L4e4fdc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e4fd4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e4fd4:
        pop     {r4, r5, r6, pc}
L4e4fd8:
        .word   0x040b0000
L4e4fdc:
        .word   0x008b8764
        .size   A_4e4fa0, . - A_4e4fa0

@ FUN_004e4fe0
        .global A_4e4fe0
        .type   A_4e4fe0, %function
A_4e4fe0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5018
        str     r1, [r4, #0x80]!
        ldr     r1, L4e501c
        str     r0, [r4, #8]
        ldr     r0, L4e5020
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5018:
        .word   0x04540002
L4e501c:
        .word   0x00013002
L4e5020:
        .word   0x008b8764
        .size   A_4e4fe0, . - A_4e4fe0

@ FUN_004e5024
        .global A_4e5024
        .type   A_4e5024, %function
A_4e5024:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5058
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e505c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e5058:
        .word   0x040c0040
L4e505c:
        .word   0x008b8764
        .size   A_4e5024, . - A_4e5024

@ FUN_004e5060
        .global A_4e5060
        .type   A_4e5060, %function
A_4e5060:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5098
        str     r0, [r4, #0x80]!
        ldr     r0, L4e509c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5094
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5094:
        pop     {r4, r5, r6, pc}
L4e5098:
        .word   0x046b0000
L4e509c:
        .word   0x008b8764
        .size   A_4e5060, . - A_4e5060

@ FUN_004e50a0
        .global A_4e50a0
        .type   A_4e50a0, %function
A_4e50a0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4e50e0
        mov     r1, #0
        str     r2, [r4, #0x80]!
        mov     r2, #0x20
        str     r0, [r4, #0x10]
        ldr     r0, L4e50e4
        str     r1, [r4, #0xc]
        str     r2, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e50e0:
        .word   0x002f0004
L4e50e4:
        .word   0x008b8764
        .size   A_4e50a0, . - A_4e50a0

@ FUN_004e50e8
        .global A_4e50e8
        .type   A_4e50e8, %function
A_4e50e8:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e511c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e5120
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e511c:
        .word   0x046c0040
L4e5120:
        .word   0x008b8764
        .size   A_4e50e8, . - A_4e50e8

@ FUN_004e5124
        .global A_4e5124
        .type   A_4e5124, %function
A_4e5124:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e515c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5160
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5158
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5158:
        pop     {r4, r5, r6, pc}
L4e515c:
        .word   0x046f0000
L4e5160:
        .word   0x008b8764
        .size   A_4e5124, . - A_4e5124

@ FUN_004e5164
        .global A_4e5164
        .type   A_4e5164, %function
A_4e5164:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e519c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e51a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5198
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5198:
        pop     {r4, r5, r6, pc}
L4e519c:
        .word   0x04490000
L4e51a0:
        .word   0x008b8764
        .size   A_4e5164, . - A_4e5164

@ FUN_004e51a4
        .global A_4e51a4
        .type   A_4e51a4, %function
A_4e51a4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e51ec
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e51f0
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e51f4
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e51ec:
        .word   0x044d0000
L4e51f0:
        .word   0x00010002
L4e51f4:
        .word   0x008b8764
        .size   A_4e51a4, . - A_4e51a4

@ FUN_004e5234
        .global A_4e5234
        .type   A_4e5234, %function
A_4e5234:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e526c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5270
        str     r0, [r4, #8]
        ldr     r0, L4e5274
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e526c:
        .word   0x044e0002
L4e5270:
        .word   0x00012802
L4e5274:
        .word   0x008b8764
        .size   A_4e5234, . - A_4e5234

@ FUN_004e5278
        .global A_4e5278
        .type   A_4e5278, %function
A_4e5278:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e52b0
        str     r0, [r4, #0x80]!
        ldr     r0, L4e52b4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e52ac
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e52ac:
        pop     {r4, r5, r6, pc}
L4e52b0:
        .word   0x04a20000
L4e52b4:
        .word   0x008b8764
        .size   A_4e5278, . - A_4e5278

@ FUN_004e52b8
        .global A_4e52b8
        .type   A_4e52b8, %function
A_4e52b8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L4e5314
        mov     r2, #0
        str     r3, [r5, #0x80]!
        add     r4, r5, #4
        mov     r3, #0x20
        stm     r4, {r1, r3}
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4e5318
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5314:
        .word   0x00110042
L4e5318:
        .word   0x008b8764
        .size   A_4e52b8, . - A_4e52b8

@ FUN_004e531c
        .global A_4e531c
        .type   A_4e531c, %function
A_4e531c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5364
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5368
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e536c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5364:
        .word   0x04930000
L4e5368:
        .word   0x00010002
L4e536c:
        .word   0x008b8764
        .size   A_4e531c, . - A_4e531c

@ FUN_004e5370
        .global A_4e5370
        .type   A_4e5370, %function
A_4e5370:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e53b8
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e53bc
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e53c0
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e53b8:
        .word   0x049e0000
L4e53bc:
        .word   0x00190002
L4e53c0:
        .word   0x008b8764
        .size   A_4e5370, . - A_4e5370

@ FUN_004e53c4
        .global A_4e53c4
        .type   A_4e53c4, %function
A_4e53c4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e53fc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5400
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e53f8
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e53f8:
        pop     {r4, r5, r6, pc}
L4e53fc:
        .word   0x049d0000
L4e5400:
        .word   0x008b8764
        .size   A_4e53c4, . - A_4e53c4

@ FUN_004e5404
        .global A_4e5404
        .type   A_4e5404, %function
A_4e5404:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e544c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5450
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5454
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e544c:
        .word   0x04910000
L4e5450:
        .word   0x00010002
L4e5454:
        .word   0x008b8764
        .size   A_4e5404, . - A_4e5404

@ FUN_004e5458
        .global A_4e5458
        .type   A_4e5458, %function
A_4e5458:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5490
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5494
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e548c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e548c:
        pop     {r4, r5, r6, pc}
L4e5490:
        .word   0x049b0000
L4e5494:
        .word   0x008b8764
        .size   A_4e5458, . - A_4e5458

@ FUN_004e5498
        .global A_4e5498
        .type   A_4e5498, %function
A_4e5498:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e54d0
        str     r0, [r4, #0x80]!
        ldr     r0, L4e54d4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e54cc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e54cc:
        pop     {r4, r5, r6, pc}
L4e54d0:
        .word   0x048f0000
L4e54d4:
        .word   0x008b8764
        .size   A_4e5498, . - A_4e5498

@ FUN_004e54d8
        .global A_4e54d8
        .type   A_4e54d8, %function
A_4e54d8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5520
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5524
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5528
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5520:
        .word   0x04940000
L4e5524:
        .word   0x00010002
L4e5528:
        .word   0x008b8764
        .size   A_4e54d8, . - A_4e54d8

@ FUN_004e552c
        .global A_4e552c
        .type   A_4e552c, %function
A_4e552c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5564
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5568
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5560
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5560:
        pop     {r4, r5, r6, pc}
L4e5564:
        .word   0x049c0000
L4e5568:
        .word   0x008b8764
        .size   A_4e552c, . - A_4e552c

@ FUN_004e556c
        .global A_4e556c
        .type   A_4e556c, %function
A_4e556c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x4a00000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e55b4
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e55b8
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e55b4:
        .word   0x00080002
L4e55b8:
        .word   0x008b8764
        .size   A_4e556c, . - A_4e556c

@ FUN_004e55bc
        .global A_4e55bc
        .type   A_4e55bc, %function
A_4e55bc:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5604
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5608
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e560c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5604:
        .word   0x049f0000
L4e5608:
        .word   0x00080002
L4e560c:
        .word   0x008b8764
        .size   A_4e55bc, . - A_4e55bc

@ FUN_004e5610
        .global A_4e5610
        .type   A_4e5610, %function
A_4e5610:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5658
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e565c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5660
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5658:
        .word   0x04950000
L4e565c:
        .word   0x00010002
L4e5660:
        .word   0x008b8764
        .size   A_4e5610, . - A_4e5610

@ FUN_004e5664
        .global A_4e5664
        .type   A_4e5664, %function
A_4e5664:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e569c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e56a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5698
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5698:
        pop     {r4, r5, r6, pc}
L4e569c:
        .word   0x04710000
L4e56a0:
        .word   0x008b8764
        .size   A_4e5664, . - A_4e5664

@ FUN_004e56a4
        .global A_4e56a4
        .type   A_4e56a4, %function
A_4e56a4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e56dc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e56e0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e56d8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e56d8:
        pop     {r4, r5, r6, pc}
L4e56dc:
        .word   0x04190000
L4e56e0:
        .word   0x008b8764
        .size   A_4e56a4, . - A_4e56a4

@ FUN_004e56e4
        .global A_4e56e4
        .type   A_4e56e4, %function
A_4e56e4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5718
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e571c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e5718:
        .word   0x041a0040
L4e571c:
        .word   0x008b8764
        .size   A_4e56e4, . - A_4e56e4

@ FUN_004e5720
        .global A_4e5720
        .type   A_4e5720, %function
A_4e5720:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5758
        str     r0, [r4, #0x80]!
        ldr     r0, L4e575c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5754
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5754:
        pop     {r4, r5, r6, pc}
L4e5758:
        .word   0x04a10000
L4e575c:
        .word   0x008b8764
        .size   A_4e5720, . - A_4e5720

@ FUN_004e5760
        .global A_4e5760
        .type   A_4e5760, %function
A_4e5760:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e57a8
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e57ac
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e57b0
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e57a8:
        .word   0x04170000
L4e57ac:
        .word   0x00100002
L4e57b0:
        .word   0x008b8764
        .size   A_4e5760, . - A_4e5760

@ FUN_004e57b4
        .global A_4e57b4
        .type   A_4e57b4, %function
A_4e57b4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e57ec
        str     r1, [r4, #0x80]!
        ldr     r1, L4e57f0
        str     r0, [r4, #8]
        ldr     r0, L4e57f4
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e57ec:
        .word   0x04180002
L4e57f0:
        .word   0x00100c02
L4e57f4:
        .word   0x008b8764
        .size   A_4e57b4, . - A_4e57b4

@ FUN_004e57f8
        .global A_4e57f8
        .type   A_4e57f8, %function
A_4e57f8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x4900000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5830
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e582c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e582c:
        pop     {r4, r5, r6, pc}
L4e5830:
        .word   0x008b8764
        .size   A_4e57f8, . - A_4e57f8

@ FUN_004e5834
        .global A_4e5834
        .type   A_4e5834, %function
A_4e5834:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e587c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5880
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5884
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e587c:
        .word   0x04920000
L4e5880:
        .word   0x00010002
L4e5884:
        .word   0x008b8764
        .size   A_4e5834, . - A_4e5834

@ FUN_004e5888
        .global A_4e5888
        .type   A_4e5888, %function
A_4e5888:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e58d0
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e58d4
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e58d8
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e58d0:
        .word   0x040f0000
L4e58d4:
        .word   0x00080002
L4e58d8:
        .word   0x008b8764
        .size   A_4e5888, . - A_4e5888

@ FUN_004e58dc
        .global A_4e58dc
        .type   A_4e58dc, %function
A_4e58dc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5914
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5918
        str     r0, [r4, #8]
        ldr     r0, L4e591c
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5914:
        .word   0x04100002
L4e5918:
        .word   0x00080802
L4e591c:
        .word   0x008b8764
        .size   A_4e58dc, . - A_4e58dc

@ FUN_004e5920
        .global A_4e5920
        .type   A_4e5920, %function
A_4e5920:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5958
        str     r0, [r4, #0x80]!
        ldr     r0, L4e595c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5954
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5954:
        pop     {r4, r5, r6, pc}
L4e5958:
        .word   0x041d0000
L4e595c:
        .word   0x008b8764
        .size   A_4e5920, . - A_4e5920

@ FUN_004e5960
        .global A_4e5960
        .type   A_4e5960, %function
A_4e5960:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5994
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e5998
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e5994:
        .word   0x041e0040
L4e5998:
        .word   0x008b8764
        .size   A_4e5960, . - A_4e5960

@ FUN_004e599c
        .global A_4e599c
        .type   A_4e599c, %function
A_4e599c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e59d4
        str     r0, [r4, #0x80]!
        ldr     r0, L4e59d8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e59d0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e59d0:
        pop     {r4, r5, r6, pc}
L4e59d4:
        .word   0x040d0000
L4e59d8:
        .word   0x008b8764
        .size   A_4e599c, . - A_4e599c

@ FUN_004e59dc
        .global A_4e59dc
        .type   A_4e59dc, %function
A_4e59dc:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5a10
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e5a14
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e5a10:
        .word   0x040e0040
L4e5a14:
        .word   0x008b8764
        .size   A_4e59dc, . - A_4e59dc

@ FUN_004e5a18
        .global A_4e5a18
        .type   A_4e5a18, %function
A_4e5a18:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5a50
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5a54
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5a4c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5a4c:
        pop     {r4, r5, r6, pc}
L4e5a50:
        .word   0x04550000
L4e5a54:
        .word   0x008b8764
        .size   A_4e5a18, . - A_4e5a18

@ FUN_004e5a58
        .global A_4e5a58
        .type   A_4e5a58, %function
A_4e5a58:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5aa0
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5aa4
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5aa8
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5aa0:
        .word   0x04270000
L4e5aa4:
        .word   0x00100002
L4e5aa8:
        .word   0x008b8764
        .size   A_4e5a58, . - A_4e5a58

@ FUN_004e5aac
        .global A_4e5aac
        .type   A_4e5aac, %function
A_4e5aac:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5af4
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5af8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5afc
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5af4:
        .word   0x04310000
L4e5af8:
        .word   0x00100002
L4e5afc:
        .word   0x008b8764
        .size   A_4e5aac, . - A_4e5aac

@ FUN_004e5b00
        .global A_4e5b00
        .type   A_4e5b00, %function
A_4e5b00:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5b48
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5b4c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5b50
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5b48:
        .word   0x043b0000
L4e5b4c:
        .word   0x00100002
L4e5b50:
        .word   0x008b8764
        .size   A_4e5b00, . - A_4e5b00

@ FUN_004e5b54
        .global A_4e5b54
        .type   A_4e5b54, %function
A_4e5b54:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5b9c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5ba0
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5ba4
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5b9c:
        .word   0x04450000
L4e5ba0:
        .word   0x00100002
L4e5ba4:
        .word   0x008b8764
        .size   A_4e5b54, . - A_4e5b54

@ FUN_004e5ba8
        .global A_4e5ba8
        .type   A_4e5ba8, %function
A_4e5ba8:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5bdc
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e5be0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e5bdc:
        .word   0x04560040
L4e5be0:
        .word   0x008b8764
        .size   A_4e5ba8, . - A_4e5ba8

@ FUN_004e5be4
        .global A_4e5be4
        .type   A_4e5be4, %function
A_4e5be4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5c1c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5c20
        str     r0, [r4, #8]
        ldr     r0, L4e5c24
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5c1c:
        .word   0x04280002
L4e5c20:
        .word   0x00100c02
L4e5c24:
        .word   0x008b8764
        .size   A_4e5be4, . - A_4e5be4

@ FUN_004e5c28
        .global A_4e5c28
        .type   A_4e5c28, %function
A_4e5c28:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5c60
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5c64
        str     r0, [r4, #8]
        ldr     r0, L4e5c68
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5c60:
        .word   0x04320002
L4e5c64:
        .word   0x00100c02
L4e5c68:
        .word   0x008b8764
        .size   A_4e5c28, . - A_4e5c28

@ FUN_004e5c6c
        .global A_4e5c6c
        .type   A_4e5c6c, %function
A_4e5c6c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5ca4
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5ca8
        str     r0, [r4, #8]
        ldr     r0, L4e5cac
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5ca4:
        .word   0x043c0002
L4e5ca8:
        .word   0x00100c02
L4e5cac:
        .word   0x008b8764
        .size   A_4e5c6c, . - A_4e5c6c

@ FUN_004e5cb0
        .global A_4e5cb0
        .type   A_4e5cb0, %function
A_4e5cb0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5ce8
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5cec
        str     r0, [r4, #8]
        ldr     r0, L4e5cf0
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5ce8:
        .word   0x04460002
L4e5cec:
        .word   0x00100c02
L4e5cf0:
        .word   0x008b8764
        .size   A_4e5cb0, . - A_4e5cb0

@ FUN_004e5cf4
        .global A_4e5cf4
        .type   A_4e5cf4, %function
A_4e5cf4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5d2c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e5d30
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e5d28
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e5d28:
        pop     {r4, r5, r6, pc}
L4e5d2c:
        .word   0x041b0000
L4e5d30:
        .word   0x008b8764
        .size   A_4e5cf4, . - A_4e5cf4

@ FUN_004e5d34
        .global A_4e5d34
        .type   A_4e5d34, %function
A_4e5d34:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5d7c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5d80
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5d84
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5d7c:
        .word   0x041f0000
L4e5d80:
        .word   0x00080002
L4e5d84:
        .word   0x008b8764
        .size   A_4e5d34, . - A_4e5d34

@ FUN_004e5d88
        .global A_4e5d88
        .type   A_4e5d88, %function
A_4e5d88:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5dd0
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5dd4
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5dd8
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5dd0:
        .word   0x04290000
L4e5dd4:
        .word   0x00080002
L4e5dd8:
        .word   0x008b8764
        .size   A_4e5d88, . - A_4e5d88

@ FUN_004e5ddc
        .global A_4e5ddc
        .type   A_4e5ddc, %function
A_4e5ddc:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5e24
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5e28
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5e2c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5e24:
        .word   0x04330000
L4e5e28:
        .word   0x00080002
L4e5e2c:
        .word   0x008b8764
        .size   A_4e5ddc, . - A_4e5ddc

@ FUN_004e5e30
        .global A_4e5e30
        .type   A_4e5e30, %function
A_4e5e30:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e5e78
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e5e7c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e5e80
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e5e78:
        .word   0x043d0000
L4e5e7c:
        .word   0x00080002
L4e5e80:
        .word   0x008b8764
        .size   A_4e5e30, . - A_4e5e30

@ FUN_004e5e84
        .global A_4e5e84
        .type   A_4e5e84, %function
A_4e5e84:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e5eb8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e5ebc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e5eb8:
        .word   0x041c0040
L4e5ebc:
        .word   0x008b8764
        .size   A_4e5e84, . - A_4e5e84

@ FUN_004e5ec0
        .global A_4e5ec0
        .type   A_4e5ec0, %function
A_4e5ec0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5ef8
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5efc
        str     r0, [r4, #8]
        ldr     r0, L4e5f00
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5ef8:
        .word   0x04200002
L4e5efc:
        .word   0x00080802
L4e5f00:
        .word   0x008b8764
        .size   A_4e5ec0, . - A_4e5ec0

@ FUN_004e5f04
        .global A_4e5f04
        .type   A_4e5f04, %function
A_4e5f04:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5f3c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5f40
        str     r0, [r4, #8]
        ldr     r0, L4e5f44
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5f3c:
        .word   0x042a0002
L4e5f40:
        .word   0x00080802
L4e5f44:
        .word   0x008b8764
        .size   A_4e5f04, . - A_4e5f04

@ FUN_004e5f48
        .global A_4e5f48
        .type   A_4e5f48, %function
A_4e5f48:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5f80
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5f84
        str     r0, [r4, #8]
        ldr     r0, L4e5f88
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5f80:
        .word   0x04340002
L4e5f84:
        .word   0x00080802
L4e5f88:
        .word   0x008b8764
        .size   A_4e5f48, . - A_4e5f48

@ FUN_004e5f8c
        .global A_4e5f8c
        .type   A_4e5f8c, %function
A_4e5f8c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e5fc4
        str     r1, [r4, #0x80]!
        ldr     r1, L4e5fc8
        str     r0, [r4, #8]
        ldr     r0, L4e5fcc
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e5fc4:
        .word   0x043e0002
L4e5fc8:
        .word   0x00080802
L4e5fcc:
        .word   0x008b8764
        .size   A_4e5f8c, . - A_4e5f8c

@ FUN_004e5fd0
        .global A_4e5fd0
        .type   A_4e5fd0, %function
A_4e5fd0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6018
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e601c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6020
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6018:
        .word   0x04150000
L4e601c:
        .word   0x00100002
L4e6020:
        .word   0x008b8764
        .size   A_4e5fd0, . - A_4e5fd0

@ FUN_004e6024
        .global A_4e6024
        .type   A_4e6024, %function
A_4e6024:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e605c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6060
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6058
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6058:
        pop     {r4, r5, r6, pc}
L4e605c:
        .word   0x04110000
L4e6060:
        .word   0x008b8764
        .size   A_4e6024, . - A_4e6024

@ FUN_004e6064
        .global A_4e6064
        .type   A_4e6064, %function
A_4e6064:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e609c
        str     r1, [r4, #0x80]!
        ldr     r1, L4e60a0
        str     r0, [r4, #8]
        ldr     r0, L4e60a4
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e609c:
        .word   0x04160002
L4e60a0:
        .word   0x00102002
L4e60a4:
        .word   0x008b8764
        .size   A_4e6064, . - A_4e6064

@ FUN_004e60a8
        .global A_4e60a8
        .type   A_4e60a8, %function
A_4e60a8:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e60dc
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e60e0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e60dc:
        .word   0x04120040
L4e60e0:
        .word   0x008b8764
        .size   A_4e60a8, . - A_4e60a8

@ FUN_004e60e4
        .global A_4e60e4
        .type   A_4e60e4, %function
A_4e60e4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e611c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6120
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6118
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6118:
        pop     {r4, r5, r6, pc}
L4e611c:
        .word   0x04780000
L4e6120:
        .word   0x008b8764
        .size   A_4e60e4, . - A_4e60e4

@ FUN_004e6124
        .global A_4e6124
        .type   A_4e6124, %function
A_4e6124:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e615c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6160
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6158
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6158:
        pop     {r4, r5, r6, pc}
L4e615c:
        .word   0x04130000
L4e6160:
        .word   0x008b8764
        .size   A_4e6124, . - A_4e6124

@ FUN_004e6164
        .global A_4e6164
        .type   A_4e6164, %function
A_4e6164:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6198
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e619c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e6198:
        .word   0x04140040
L4e619c:
        .word   0x008b8764
        .size   A_4e6164, . - A_4e6164

@ FUN_004e61a0
        .global A_4e61a0
        .type   A_4e61a0, %function
A_4e61a0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e61e8
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e61ec
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e61f0
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e61e8:
        .word   0x04770000
L4e61ec:
        .word   0x00100002
L4e61f0:
        .word   0x008b8764
        .size   A_4e61a0, . - A_4e61a0

@ FUN_004e61f4
        .global A_4e61f4
        .type   A_4e61f4, %function
A_4e61f4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e623c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6240
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6244
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e623c:
        .word   0x04730000
L4e6240:
        .word   0x00080002
L4e6244:
        .word   0x008b8764
        .size   A_4e61f4, . - A_4e61f4

@ FUN_004e6248
        .global A_4e6248
        .type   A_4e6248, %function
A_4e6248:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6290
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6294
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6298
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6290:
        .word   0x04590000
L4e6294:
        .word   0x00018002
L4e6298:
        .word   0x008b8764
        .size   A_4e6248, . - A_4e6248

@ FUN_004e629c
        .global A_4e629c
        .type   A_4e629c, %function
A_4e629c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e62d4
        str     r1, [r4, #0x80]!
        ldr     r1, L4e62d8
        str     r0, [r4, #8]
        ldr     r0, L4e62dc
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e62d4:
        .word   0x045a0002
L4e62d8:
        .word   0x00019002
L4e62dc:
        .word   0x008b8764
        .size   A_4e629c, . - A_4e629c

@ FUN_004e62e0
        .global A_4e62e0
        .type   A_4e62e0, %function
A_4e62e0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6328
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e632c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6330
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6328:
        .word   0x04250000
L4e632c:
        .word   0x00100002
L4e6330:
        .word   0x008b8764
        .size   A_4e62e0, . - A_4e62e0

@ FUN_004e6334
        .global A_4e6334
        .type   A_4e6334, %function
A_4e6334:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e636c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6370
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6368
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6368:
        pop     {r4, r5, r6, pc}
L4e636c:
        .word   0x04210000
L4e6370:
        .word   0x008b8764
        .size   A_4e6334, . - A_4e6334

@ FUN_004e6374
        .global A_4e6374
        .type   A_4e6374, %function
A_4e6374:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e63bc
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e63c0
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e63c4
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e63bc:
        .word   0x042f0000
L4e63c0:
        .word   0x00100002
L4e63c4:
        .word   0x008b8764
        .size   A_4e6374, . - A_4e6374

@ FUN_004e63c8
        .global A_4e63c8
        .type   A_4e63c8, %function
A_4e63c8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6400
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6404
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e63fc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e63fc:
        pop     {r4, r5, r6, pc}
L4e6400:
        .word   0x042b0000
L4e6404:
        .word   0x008b8764
        .size   A_4e63c8, . - A_4e63c8

@ FUN_004e6408
        .global A_4e6408
        .type   A_4e6408, %function
A_4e6408:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6450
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6454
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6458
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6450:
        .word   0x04390000
L4e6454:
        .word   0x00100002
L4e6458:
        .word   0x008b8764
        .size   A_4e6408, . - A_4e6408

@ FUN_004e645c
        .global A_4e645c
        .type   A_4e645c, %function
A_4e645c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6494
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6498
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6490
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6490:
        pop     {r4, r5, r6, pc}
L4e6494:
        .word   0x04350000
L4e6498:
        .word   0x008b8764
        .size   A_4e645c, . - A_4e645c

@ FUN_004e649c
        .global A_4e649c
        .type   A_4e649c, %function
A_4e649c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e64e4
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e64e8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e64ec
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e64e4:
        .word   0x04430000
L4e64e8:
        .word   0x00100002
L4e64ec:
        .word   0x008b8764
        .size   A_4e649c, . - A_4e649c

@ FUN_004e64f0
        .global A_4e64f0
        .type   A_4e64f0, %function
A_4e64f0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6528
        str     r0, [r4, #0x80]!
        ldr     r0, L4e652c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6524
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6524:
        pop     {r4, r5, r6, pc}
L4e6528:
        .word   0x043f0000
L4e652c:
        .word   0x008b8764
        .size   A_4e64f0, . - A_4e64f0

@ FUN_004e6530
        .global A_4e6530
        .type   A_4e6530, %function
A_4e6530:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e6568
        str     r1, [r4, #0x80]!
        ldr     r1, L4e656c
        str     r0, [r4, #8]
        ldr     r0, L4e6570
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e6568:
        .word   0x04260002
L4e656c:
        .word   0x00102002
L4e6570:
        .word   0x008b8764
        .size   A_4e6530, . - A_4e6530

@ FUN_004e6574
        .global A_4e6574
        .type   A_4e6574, %function
A_4e6574:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e65a8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e65ac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e65a8:
        .word   0x04220040
L4e65ac:
        .word   0x008b8764
        .size   A_4e6574, . - A_4e6574

@ FUN_004e65b0
        .global A_4e65b0
        .type   A_4e65b0, %function
A_4e65b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e65e8
        str     r1, [r4, #0x80]!
        ldr     r1, L4e65ec
        str     r0, [r4, #8]
        ldr     r0, L4e65f0
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e65e8:
        .word   0x04300002
L4e65ec:
        .word   0x00102002
L4e65f0:
        .word   0x008b8764
        .size   A_4e65b0, . - A_4e65b0

@ FUN_004e65f4
        .global A_4e65f4
        .type   A_4e65f4, %function
A_4e65f4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6628
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e662c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e6628:
        .word   0x042c0040
L4e662c:
        .word   0x008b8764
        .size   A_4e65f4, . - A_4e65f4

@ FUN_004e6630
        .global A_4e6630
        .type   A_4e6630, %function
A_4e6630:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e6668
        str     r1, [r4, #0x80]!
        ldr     r1, L4e666c
        str     r0, [r4, #8]
        ldr     r0, L4e6670
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e6668:
        .word   0x043a0002
L4e666c:
        .word   0x00102002
L4e6670:
        .word   0x008b8764
        .size   A_4e6630, . - A_4e6630

@ FUN_004e6674
        .global A_4e6674
        .type   A_4e6674, %function
A_4e6674:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e66a8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e66ac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e66a8:
        .word   0x04360040
L4e66ac:
        .word   0x008b8764
        .size   A_4e6674, . - A_4e6674

@ FUN_004e66b0
        .global A_4e66b0
        .type   A_4e66b0, %function
A_4e66b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e66e8
        str     r1, [r4, #0x80]!
        ldr     r1, L4e66ec
        str     r0, [r4, #8]
        ldr     r0, L4e66f0
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e66e8:
        .word   0x04440002
L4e66ec:
        .word   0x00102002
L4e66f0:
        .word   0x008b8764
        .size   A_4e66b0, . - A_4e66b0

@ FUN_004e66f4
        .global A_4e66f4
        .type   A_4e66f4, %function
A_4e66f4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6728
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e672c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e6728:
        .word   0x04400040
L4e672c:
        .word   0x008b8764
        .size   A_4e66f4, . - A_4e66f4

@ FUN_004e6730
        .global A_4e6730
        .type   A_4e6730, %function
A_4e6730:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6768
        str     r0, [r4, #0x80]!
        ldr     r0, L4e676c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6764
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6764:
        pop     {r4, r5, r6, pc}
L4e6768:
        .word   0x047a0000
L4e676c:
        .word   0x008b8764
        .size   A_4e6730, . - A_4e6730

@ FUN_004e6770
        .global A_4e6770
        .type   A_4e6770, %function
A_4e6770:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e67a8
        str     r0, [r4, #0x80]!
        ldr     r0, L4e67ac
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e67a4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e67a4:
        pop     {r4, r5, r6, pc}
L4e67a8:
        .word   0x04720000
L4e67ac:
        .word   0x008b8764
        .size   A_4e6770, . - A_4e6770

@ FUN_004e67b0
        .global A_4e67b0
        .type   A_4e67b0, %function
A_4e67b0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e67e8
        str     r0, [r4, #0x80]!
        ldr     r0, L4e67ec
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e67e4
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e67e4:
        pop     {r4, r5, r6, pc}
L4e67e8:
        .word   0x045b0000
L4e67ec:
        .word   0x008b8764
        .size   A_4e67b0, . - A_4e67b0

@ FUN_004e67f0
        .global A_4e67f0
        .type   A_4e67f0, %function
A_4e67f0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6828
        str     r0, [r4, #0x80]!
        ldr     r0, L4e682c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6824
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6824:
        pop     {r4, r5, r6, pc}
L4e6828:
        .word   0x04230000
L4e682c:
        .word   0x008b8764
        .size   A_4e67f0, . - A_4e67f0

@ FUN_004e6830
        .global A_4e6830
        .type   A_4e6830, %function
A_4e6830:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6868
        str     r0, [r4, #0x80]!
        ldr     r0, L4e686c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6864
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6864:
        pop     {r4, r5, r6, pc}
L4e6868:
        .word   0x042d0000
L4e686c:
        .word   0x008b8764
        .size   A_4e6830, . - A_4e6830

@ FUN_004e6870
        .global A_4e6870
        .type   A_4e6870, %function
A_4e6870:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e68a8
        str     r0, [r4, #0x80]!
        ldr     r0, L4e68ac
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e68a4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e68a4:
        pop     {r4, r5, r6, pc}
L4e68a8:
        .word   0x04370000
L4e68ac:
        .word   0x008b8764
        .size   A_4e6870, . - A_4e6870

@ FUN_004e68b0
        .global A_4e68b0
        .type   A_4e68b0, %function
A_4e68b0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e68e8
        str     r0, [r4, #0x80]!
        ldr     r0, L4e68ec
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e68e4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e68e4:
        pop     {r4, r5, r6, pc}
L4e68e8:
        .word   0x04410000
L4e68ec:
        .word   0x008b8764
        .size   A_4e68b0, . - A_4e68b0

@ FUN_004e68f0
        .global A_4e68f0
        .type   A_4e68f0, %function
A_4e68f0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6924
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L4e6928
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e6924:
        .word   0x045c0040
L4e6928:
        .word   0x008b8764
        .size   A_4e68f0, . - A_4e68f0

@ FUN_004e692c
        .global A_4e692c
        .type   A_4e692c, %function
A_4e692c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6960
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e6964
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e6960:
        .word   0x04240040
L4e6964:
        .word   0x008b8764
        .size   A_4e692c, . - A_4e692c

@ FUN_004e6968
        .global A_4e6968
        .type   A_4e6968, %function
A_4e6968:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e699c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e69a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e699c:
        .word   0x042e0040
L4e69a0:
        .word   0x008b8764
        .size   A_4e6968, . - A_4e6968

@ FUN_004e69a4
        .global A_4e69a4
        .type   A_4e69a4, %function
A_4e69a4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e69d8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e69dc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e69d8:
        .word   0x04380040
L4e69dc:
        .word   0x008b8764
        .size   A_4e69a4, . - A_4e69a4

@ FUN_004e69e0
        .global A_4e69e0
        .type   A_4e69e0, %function
A_4e69e0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6a14
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4e6a18
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4e6a14:
        .word   0x04420040
L4e6a18:
        .word   0x008b8764
        .size   A_4e69e0, . - A_4e69e0

@ FUN_004e6a1c
        .global A_4e6a1c
        .type   A_4e6a1c, %function
A_4e6a1c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6a54
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6a58
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6a50
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6a50:
        pop     {r4, r5, r6, pc}
L4e6a54:
        .word   0x04960000
L4e6a58:
        .word   0x008b8764
        .size   A_4e6a1c, . - A_4e6a1c

@ FUN_004e6a5c
        .global A_4e6a5c
        .type   A_4e6a5c, %function
A_4e6a5c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6aa4
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6aa8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6aac
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6aa4:
        .word   0x047f0000
L4e6aa8:
        .word   0x00100002
L4e6aac:
        .word   0x008b8764
        .size   A_4e6a5c, . - A_4e6a5c

@ FUN_004e6ab0
        .global A_4e6ab0
        .type   A_4e6ab0, %function
A_4e6ab0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6af8
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6afc
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6b00
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6af8:
        .word   0x04840000
L4e6afc:
        .word   0x00100002
L4e6b00:
        .word   0x008b8764
        .size   A_4e6ab0, . - A_4e6ab0

@ FUN_004e6b04
        .global A_4e6b04
        .type   A_4e6b04, %function
A_4e6b04:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6b4c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6b50
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6b54
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6b4c:
        .word   0x04890000
L4e6b50:
        .word   0x00100002
L4e6b54:
        .word   0x008b8764
        .size   A_4e6b04, . - A_4e6b04

@ FUN_004e6b58
        .global A_4e6b58
        .type   A_4e6b58, %function
A_4e6b58:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6ba0
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6ba4
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6ba8
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6ba0:
        .word   0x048e0000
L4e6ba4:
        .word   0x00100002
L4e6ba8:
        .word   0x008b8764
        .size   A_4e6b58, . - A_4e6b58

@ FUN_004e6bac
        .global A_4e6bac
        .type   A_4e6bac, %function
A_4e6bac:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6bf4
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6bf8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6bfc
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6bf4:
        .word   0x04570000
L4e6bf8:
        .word   0x00010002
L4e6bfc:
        .word   0x008b8764
        .size   A_4e6bac, . - A_4e6bac

@ FUN_004e6c00
        .global A_4e6c00
        .type   A_4e6c00, %function
A_4e6c00:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4e6c38
        str     r1, [r4, #0x80]!
        ldr     r1, L4e6c3c
        str     r0, [r4, #8]
        ldr     r0, L4e6c40
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4e6c38:
        .word   0x04580002
L4e6c3c:
        .word   0x00012402
L4e6c40:
        .word   0x008b8764
        .size   A_4e6c00, . - A_4e6c00

@ FUN_004e6c44
        .global A_4e6c44
        .type   A_4e6c44, %function
A_4e6c44:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6c7c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6c80
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6c78
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6c78:
        pop     {r4, r5, r6, pc}
L4e6c7c:
        .word   0x04790000
L4e6c80:
        .word   0x008b8764
        .size   A_4e6c44, . - A_4e6c44

@ FUN_004e6c84
        .global A_4e6c84
        .type   A_4e6c84, %function
A_4e6c84:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6ccc
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6cd0
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6cd4
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6ccc:
        .word   0x047b0000
L4e6cd0:
        .word   0x00080002
L4e6cd4:
        .word   0x008b8764
        .size   A_4e6c84, . - A_4e6c84

@ FUN_004e6cd8
        .global A_4e6cd8
        .type   A_4e6cd8, %function
A_4e6cd8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x4800000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6d20
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6d24
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6d20:
        .word   0x00080002
L4e6d24:
        .word   0x008b8764
        .size   A_4e6cd8, . - A_4e6cd8

@ FUN_004e6d28
        .global A_4e6d28
        .type   A_4e6d28, %function
A_4e6d28:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6d70
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6d74
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6d78
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6d70:
        .word   0x04850000
L4e6d74:
        .word   0x00080002
L4e6d78:
        .word   0x008b8764
        .size   A_4e6d28, . - A_4e6d28

@ FUN_004e6d7c
        .global A_4e6d7c
        .type   A_4e6d7c, %function
A_4e6d7c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6dc4
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6dc8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6dcc
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6dc4:
        .word   0x048a0000
L4e6dc8:
        .word   0x00080002
L4e6dcc:
        .word   0x008b8764
        .size   A_4e6d7c, . - A_4e6d7c

@ FUN_004e6dd0
        .global A_4e6dd0
        .type   A_4e6dd0, %function
A_4e6dd0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6e18
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6e1c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6e20
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6e18:
        .word   0x04760000
L4e6e1c:
        .word   0x00100002
L4e6e20:
        .word   0x008b8764
        .size   A_4e6dd0, . - A_4e6dd0

@ FUN_004e6e24
        .global A_4e6e24
        .type   A_4e6e24, %function
A_4e6e24:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6e5c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6e60
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6e58
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6e58:
        pop     {r4, r5, r6, pc}
L4e6e5c:
        .word   0x04740000
L4e6e60:
        .word   0x008b8764
        .size   A_4e6e24, . - A_4e6e24

@ FUN_004e6e64
        .global A_4e6e64
        .type   A_4e6e64, %function
A_4e6e64:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6e9c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6ea0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6e98
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6e98:
        pop     {r4, r5, r6, pc}
L4e6e9c:
        .word   0x04750000
L4e6ea0:
        .word   0x008b8764
        .size   A_4e6e64, . - A_4e6e64

@ FUN_004e6ea4
        .global A_4e6ea4
        .type   A_4e6ea4, %function
A_4e6ea4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6eec
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6ef0
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6ef4
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6eec:
        .word   0x04980000
L4e6ef0:
        .word   0x00018002
L4e6ef4:
        .word   0x008b8764
        .size   A_4e6ea4, . - A_4e6ea4

@ FUN_004e6ef8
        .global A_4e6ef8
        .type   A_4e6ef8, %function
A_4e6ef8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6f40
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6f44
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6f48
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6f40:
        .word   0x047e0000
L4e6f44:
        .word   0x00100002
L4e6f48:
        .word   0x008b8764
        .size   A_4e6ef8, . - A_4e6ef8

@ FUN_004e6f4c
        .global A_4e6f4c
        .type   A_4e6f4c, %function
A_4e6f4c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e6f84
        str     r0, [r4, #0x80]!
        ldr     r0, L4e6f88
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e6f80
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e6f80:
        pop     {r4, r5, r6, pc}
L4e6f84:
        .word   0x047c0000
L4e6f88:
        .word   0x008b8764
        .size   A_4e6f4c, . - A_4e6f4c

@ FUN_004e6f8c
        .global A_4e6f8c
        .type   A_4e6f8c, %function
A_4e6f8c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e6fd4
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e6fd8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e6fdc
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e6fd4:
        .word   0x04830000
L4e6fd8:
        .word   0x00100002
L4e6fdc:
        .word   0x008b8764
        .size   A_4e6f8c, . - A_4e6f8c

@ FUN_004e6fe0
        .global A_4e6fe0
        .type   A_4e6fe0, %function
A_4e6fe0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e7018
        str     r0, [r4, #0x80]!
        ldr     r0, L4e701c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e7014
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e7014:
        pop     {r4, r5, r6, pc}
L4e7018:
        .word   0x04810000
L4e701c:
        .word   0x008b8764
        .size   A_4e6fe0, . - A_4e6fe0

@ FUN_004e7020
        .global A_4e7020
        .type   A_4e7020, %function
A_4e7020:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e7068
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e706c
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e7070
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e7068:
        .word   0x04880000
L4e706c:
        .word   0x00100002
L4e7070:
        .word   0x008b8764
        .size   A_4e7020, . - A_4e7020

@ FUN_004e7074
        .global A_4e7074
        .type   A_4e7074, %function
A_4e7074:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e70ac
        str     r0, [r4, #0x80]!
        ldr     r0, L4e70b0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e70a8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e70a8:
        pop     {r4, r5, r6, pc}
L4e70ac:
        .word   0x04860000
L4e70b0:
        .word   0x008b8764
        .size   A_4e7074, . - A_4e7074

@ FUN_004e70b4
        .global A_4e70b4
        .type   A_4e70b4, %function
A_4e70b4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e70fc
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e7100
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e7104
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e70fc:
        .word   0x048d0000
L4e7100:
        .word   0x00100002
L4e7104:
        .word   0x008b8764
        .size   A_4e70b4, . - A_4e70b4

@ FUN_004e7108
        .global A_4e7108
        .type   A_4e7108, %function
A_4e7108:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e7140
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7144
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e713c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e713c:
        pop     {r4, r5, r6, pc}
L4e7140:
        .word   0x048b0000
L4e7144:
        .word   0x008b8764
        .size   A_4e7108, . - A_4e7108

@ FUN_004e7148
        .global A_4e7148
        .type   A_4e7148, %function
A_4e7148:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e7180
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7184
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e717c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e717c:
        pop     {r4, r5, r6, pc}
L4e7180:
        .word   0x045d0000
L4e7184:
        .word   0x008b8764
        .size   A_4e7148, . - A_4e7148

@ FUN_004e71c4
        .global A_4e71c4
        .type   A_4e71c4, %function
A_4e71c4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e71fc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7200
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e71f8
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e71f8:
        pop     {r4, r5, r6, pc}
L4e71fc:
        .word   0x04990000
L4e7200:
        .word   0x008b8764
        .size   A_4e71c4, . - A_4e71c4

@ FUN_004e7204
        .global A_4e7204
        .type   A_4e7204, %function
A_4e7204:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e723c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7240
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e7238
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e7238:
        pop     {r4, r5, r6, pc}
L4e723c:
        .word   0x047d0000
L4e7240:
        .word   0x008b8764
        .size   A_4e7204, . - A_4e7204

@ FUN_004e7244
        .global A_4e7244
        .type   A_4e7244, %function
A_4e7244:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e727c
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7280
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e7278
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e7278:
        pop     {r4, r5, r6, pc}
L4e727c:
        .word   0x04820000
L4e7280:
        .word   0x008b8764
        .size   A_4e7244, . - A_4e7244

@ FUN_004e7284
        .global A_4e7284
        .type   A_4e7284, %function
A_4e7284:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e72bc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e72c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e72b8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e72b8:
        pop     {r4, r5, r6, pc}
L4e72bc:
        .word   0x04870000
L4e72c0:
        .word   0x008b8764
        .size   A_4e7284, . - A_4e7284

@ FUN_004e72c4
        .global A_4e72c4
        .type   A_4e72c4, %function
A_4e72c4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e72fc
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7300
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e72f8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e72f8:
        pop     {r4, r5, r6, pc}
L4e72fc:
        .word   0x048c0000
L4e7300:
        .word   0x008b8764
        .size   A_4e72c4, . - A_4e72c4

@ FUN_004e7304
        .global A_4e7304
        .type   A_4e7304, %function
A_4e7304:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r1, L4e734c
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L4e7350
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L4e7354
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4e734c:
        .word   0x04970000
L4e7350:
        .word   0x00010002
L4e7354:
        .word   0x008b8764
        .size   A_4e7304, . - A_4e7304

@ FUN_004e7358
        .global A_4e7358
        .type   A_4e7358, %function
A_4e7358:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4e7390
        str     r0, [r4, #0x80]!
        ldr     r0, L4e7394
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e738c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4e738c:
        pop     {r4, r5, r6, pc}
L4e7390:
        .word   0x049a0000
L4e7394:
        .word   0x008b8764
        .size   A_4e7358, . - A_4e7358

@ FUN_004e7398
        .global A_4e7398
        .type   A_4e7398, %function
A_4e7398:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4e73d0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4e73cc
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L4e73cc:
        pop     {r4, r5, r6, pc}
L4e73d0:
        .word   0x008b8764
        .size   A_4e7398, . - A_4e7398

@ FUN_004ed124
        .global A_4ed124
        .type   A_4ed124, %function
A_4ed124:
        push    {r4, lr}
        add     r4, r0, #4
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L4ed144
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4ed144:
        sub     r0, r4, #4
        pop     {r4, pc}
        .size   A_4ed124, . - A_4ed124

@ FUN_004ed2fc
        .global A_4ed2fc
        .type   A_4ed2fc, %function
A_4ed2fc:
        push    {r4, lr}
        add     r4, r0, #4
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L4ed31c
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4ed31c:
        sub     r0, r4, #4
        pop     {r4, pc}
        .size   A_4ed2fc, . - A_4ed2fc

@ FUN_004edb58
        .global A_4edb58
        .type   A_4edb58, %function
A_4edb58:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        add     r4, sp, #0x28
        ldm     r4, {r5, r6, r7, r8, sb, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     sl, L4edbb0
        mov     fp, #0
        str     sl, [r4, #0x80]!
        add     lr, r4, #4
        add     sl, r4, #0x24
        stm     lr, {r1, r2, r3, r5, r7}
        orr     r1, fp, r7, lsl #14
        orr     r1, r1, #2
        str     r8, [r4, #0x18]
        stm     sl, {r1, r6}
        add     sl, r4, #0x1c
        stm     sl, {sb, ip}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L4edbb0:
        .word   0x08080202
        .size   A_4edb58, . - A_4edb58

@ FUN_004edbb4
        .global A_4edbb4
        .type   A_4edbb4, %function
A_4edbb4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4edbdc
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edbdc:
        .word   0x08440000
        .size   A_4edbb4, . - A_4edbb4

@ FUN_004edbe0
        .global A_4edbe0
        .type   A_4edbe0, %function
A_4edbe0:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4edc2c
        mov     r6, #0
        str     r8, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3, r5, ip}
        orr     r1, r6, ip, lsl #14
        add     r6, r4, #0x18
        orr     r1, r1, #2
        stm     r6, {r1, r7}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4edc2c:
        .word   0x08040142
        .size   A_4edbe0, . - A_4edbe0

@ FUN_004edc30
        .global A_4edc30
        .type   A_4edc30, %function
A_4edc30:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4edc6c
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edc6c:
        .word   0x081a0042
        .size   A_4edc30, . - A_4edc30

@ FUN_004edc70
        .global A_4edc70
        .type   A_4edc70, %function
A_4edc70:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4edcac
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edcac:
        .word   0x081e0042
        .size   A_4edc70, . - A_4edc70

@ FUN_004edcb0
        .global A_4edcb0
        .type   A_4edcb0, %function
A_4edcb0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4edcec
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edcec:
        .word   0x08190042
        .size   A_4edcb0, . - A_4edcb0

@ FUN_004edcf0
        .global A_4edcf0
        .type   A_4edcf0, %function
A_4edcf0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4edd2c
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edd2c:
        .word   0x081d0042
        .size   A_4edcf0, . - A_4edcf0

@ FUN_004eddc0
        .global A_4eddc0
        .type   A_4eddc0, %function
A_4eddc0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eddf4
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4eddf0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4eddf0:
        pop     {r4, r5, r6, pc}
L4eddf4:
        .word   0x08130000
        .size   A_4eddc0, . - A_4eddc0

@ FUN_004eddf8
        .global A_4eddf8
        .type   A_4eddf8, %function
A_4eddf8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r1
        ldr     r1, [sp, #0x1c]
        ldr     ip, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L4ede54
        mov     r6, #0
        str     r7, [r4, #0x80]!
        str     r1, [r4, #0xc]
        orr     r1, r6, r1, lsl #14
        add     r6, r4, #0x10
        orr     r1, r1, #2
        stm     r6, {r1, ip}
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ede50
        add     r1, r4, #8
        ldrd    r0, r1, [r1]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4ede50:
        pop     {r4, r5, r6, r7, r8, pc}
L4ede54:
        .word   0x080c00c2
        .size   A_4eddf8, . - A_4eddf8

@ FUN_004ede58
        .global A_4ede58
        .type   A_4ede58, %function
A_4ede58:
        push    {r4, r5, r6, lr}
        ldr     ip, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4edea0
        mov     r5, #0
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, ip}
        orr     r1, r5, ip, lsl #14
        add     r5, r4, #0x10
        orr     r1, r1, #2
        stm     r5, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L4edea0:
        .word   0x087000c2
        .size   A_4ede58, . - A_4ede58

@ FUN_004edea4
        .global A_4edea4
        .type   A_4edea4, %function
A_4edea4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x8200000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_4edea4, . - A_4edea4

@ FUN_004edecc
        .global A_4edecc
        .type   A_4edecc, %function
A_4edecc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4edef4
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edef4:
        .word   0x081f0000
        .size   A_4edecc, . - A_4edecc

@ FUN_004edef8
        .global A_4edef8
        .type   A_4edef8, %function
A_4edef8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4edf24
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4edf24:
        .word   0x080e0080
        .size   A_4edef8, . - A_4edef8

@ FUN_004edf28
        .global A_4edf28
        .type   A_4edf28, %function
A_4edf28:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4edf60
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4edf5c
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4edf5c:
        pop     {r4, r5, r6, pc}
L4edf60:
        .word   0x08120080
        .size   A_4edf28, . - A_4edf28

@ FUN_004edf64
        .global A_4edf64
        .type   A_4edf64, %function
A_4edf64:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4edf98
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4edf94
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4edf94:
        pop     {r4, r5, r6, pc}
L4edf98:
        .word   0x08680000
        .size   A_4edf64, . - A_4edf64

@ FUN_004ee028
        .global A_4ee028
        .type   A_4ee028, %function
A_4ee028:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        mov     r5, r1
        ldm     r4, {r7, ip}
        ldr     r1, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4ee088
        mov     r6, #0
        str     r8, [r4, #0x80]!
        str     r1, [r4, #0x10]
        orr     r1, r6, r1, lsl #14
        add     r6, r4, #0x14
        orr     r1, r1, #2
        stm     r6, {r1, ip}
        add     r6, r4, #4
        stm     r6, {r2, r3, r7}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee084
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee084:
        pop     {r4, r5, r6, r7, r8, pc}
L4ee088:
        .word   0x080b0102
        .size   A_4ee028, . - A_4ee028

@ FUN_004ee08c
        .global A_4ee08c
        .type   A_4ee08c, %function
A_4ee08c:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x20
        ldm     r4, {r1, r6, ip}
        ldr     r5, [sp, #0x1c]
        ldr     r7, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4ee0f4
        str     r8, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, r7}
        add     lr, r4, #0x10
        mov     r2, #0xa
        stm     lr, {r1, ip}
        add     lr, r4, #0x18
        orr     r1, r2, r1, lsl #4
        stm     lr, {r1, r5}
        mov     r1, #0xc
        add     lr, r4, #0x20
        orr     r1, r1, ip, lsl #4
        stm     lr, {r1, r6}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4ee0f4:
        .word   0x080d0144
        .size   A_4ee08c, . - A_4ee08c

@ FUN_004ee0f8
        .global A_4ee0f8
        .type   A_4ee0f8, %function
A_4ee0f8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee120
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ee120:
        .word   0x08410000
        .size   A_4ee0f8, . - A_4ee0f8

@ FUN_004ee124
        .global A_4ee124
        .type   A_4ee124, %function
A_4ee124:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        add     r4, sp, #0x28
        ldm     r4, {r5, r6, r7, r8, sb, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     sl, L4ee178
        mov     fp, #0
        str     sl, [r4, #0x80]!
        add     lr, r4, #4
        add     sl, r4, #0x28
        stm     lr, {r1, r2, r5, r6, r7, r8, sb, ip}
        ldrb    r1, [sp, #0x40]
        strb    r1, [r4, #0x24]
        orr     r1, fp, r5, lsl #14
        orr     r1, r1, #2
        stm     sl, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L4ee178:
        .word   0x084c0242
        .size   A_4ee124, . - A_4ee124

@ FUN_004ee17c
        .global A_4ee17c
        .type   A_4ee17c, %function
A_4ee17c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee1b0
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee1ac
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ee1ac:
        pop     {r4, r5, r6, pc}
L4ee1b0:
        .word   0x08170000
        .size   A_4ee17c, . - A_4ee17c

@ FUN_004ee1b4
        .global A_4ee1b4
        .type   A_4ee1b4, %function
A_4ee1b4:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee1e8
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee1e4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ee1e4:
        pop     {r4, r5, r6, pc}
L4ee1e8:
        .word   0x08180000
        .size   A_4ee1b4, . - A_4ee1b4

@ FUN_004ee1ec
        .global A_4ee1ec
        .type   A_4ee1ec, %function
A_4ee1ec:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ee228
        str     ip, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        mov     r3, #0xc
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ee228:
        .word   0x086a0082
        .size   A_4ee1ec, . - A_4ee1ec

@ FUN_004ee22c
        .global A_4ee22c
        .type   A_4ee22c, %function
A_4ee22c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee260
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee25c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ee25c:
        pop     {r4, r5, r6, pc}
L4ee260:
        .word   0x08220000
        .size   A_4ee22c, . - A_4ee22c

@ FUN_004ee264
        .global A_4ee264
        .type   A_4ee264, %function
A_4ee264:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, r6, r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     sb, L4ee2b4
        mov     r8, #0
        str     sb, [r4, #0x80]!
        add     sl, r4, #4
        stm     sl, {r1, r2, r3, r5, r7}
        orr     r1, r8, r7, lsl #14
        add     r8, r4, #0x1c
        orr     r1, r1, #2
        str     ip, [r4, #0x18]
        stm     r8, {r1, r6}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4ee2b4:
        .word   0x08090182
        .size   A_4ee264, . - A_4ee264

@ FUN_004ee2b8
        .global A_4ee2b8
        .type   A_4ee2b8, %function
A_4ee2b8:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4ee304
        mov     r6, #0
        str     r8, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3, r5, ip}
        orr     r1, r6, ip, lsl #14
        add     r6, r4, #0x18
        orr     r1, r1, #2
        stm     r6, {r1, r7}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4ee304:
        .word   0x08060142
        .size   A_4ee2b8, . - A_4ee2b8

@ FUN_004ee308
        .global A_4ee308
        .type   A_4ee308, %function
A_4ee308:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        mov     r5, r1
        ldm     r4, {r1, r3, r6, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L4ee360
        str     r7, [r4, #0x80]!
        add     r8, r4, #8
        str     r2, [r4, #4]
        stm     r8, {r1, r3, ip}
        mov     r2, #0xc
        add     r8, r4, #0x14
        orr     r2, r2, ip, lsl #4
        stm     r8, {r2, r6}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee35c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee35c:
        pop     {r4, r5, r6, r7, r8, pc}
L4ee360:
        .word   0x084f0102
        .size   A_4ee308, . - A_4ee308

@ FUN_004ee3f4
        .global A_4ee3f4
        .type   A_4ee3f4, %function
A_4ee3f4:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee428
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee424
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ee424:
        pop     {r4, r5, r6, pc}
L4ee428:
        .word   0x08230000
        .size   A_4ee3f4, . - A_4ee3f4

@ FUN_004ee42c
        .global A_4ee42c
        .type   A_4ee42c, %function
A_4ee42c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee460
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee45c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee45c:
        pop     {r4, r5, r6, pc}
L4ee460:
        .word   0x081c0000
        .size   A_4ee42c, . - A_4ee42c

@ FUN_004ee464
        .global A_4ee464
        .type   A_4ee464, %function
A_4ee464:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee498
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee494
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee494:
        pop     {r4, r5, r6, pc}
L4ee498:
        .word   0x081b0000
        .size   A_4ee464, . - A_4ee464

@ FUN_004ee49c
        .global A_4ee49c
        .type   A_4ee49c, %function
A_4ee49c:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee4e4
        mov     ip, #0xc
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        orr     r1, ip, r3, lsl #6
        add     ip, r4, #0xc
        str     r3, [r4, #8]
        stm     ip, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4ee4e4:
        .word   0x08270082
        .size   A_4ee49c, . - A_4ee49c

@ FUN_004ee4e8
        .global A_4ee4e8
        .type   A_4ee4e8, %function
A_4ee4e8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, r6, r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4ee540
        str     r8, [r4, #0x80]!
        ldrd    r8, sb, [r1]
        ldr     r1, [r1, #8]
        add     sl, r4, #0x14
        str     r1, [r4, #0xc]
        stm     sl, {r2, r3, r5, r6, ip}
        mov     r1, #0xa
        add     sl, r4, #0x28
        orr     r1, r1, ip, lsl #4
        stm     sl, {r1, r7}
        strd    r8, sb, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4ee540:
        .word   0x08510242
        .size   A_4ee4e8, . - A_4ee4e8

@ FUN_004ee544
        .global A_4ee544
        .type   A_4ee544, %function
A_4ee544:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4ee57c
        str     r2, [r4, #0x80]!
        ldrd    r2, r3, [r1]
        ldr     r1, [r1, #8]
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ee57c:
        .word   0x08520100
        .size   A_4ee544, . - A_4ee544

@ FUN_004ee580
        .global A_4ee580
        .type   A_4ee580, %function
A_4ee580:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee5b4
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee5b0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee5b0:
        pop     {r4, r5, r6, pc}
L4ee5b4:
        .word   0x08160000
        .size   A_4ee580, . - A_4ee580

@ FUN_004ee5b8
        .global A_4ee5b8
        .type   A_4ee5b8, %function
A_4ee5b8:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee5ec
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L4ee5ec:
        .word   0x08380040
        .size   A_4ee5b8, . - A_4ee5b8

@ FUN_004ee5f0
        .global A_4ee5f0
        .type   A_4ee5f0, %function
A_4ee5f0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee628
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee624
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee624:
        pop     {r4, r5, r6, pc}
L4ee628:
        .word   0x086d0080
        .size   A_4ee5f0, . - A_4ee5f0

@ FUN_004ee62c
        .global A_4ee62c
        .type   A_4ee62c, %function
A_4ee62c:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee674
        mov     ip, #0xa
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        orr     r1, ip, r3, lsl #6
        add     ip, r4, #0xc
        str     r3, [r4, #8]
        stm     ip, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4ee674:
        .word   0x08290082
        .size   A_4ee62c, . - A_4ee62c

@ FUN_004ee678
        .global A_4ee678
        .type   A_4ee678, %function
A_4ee678:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee6ac
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee6a8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ee6a8:
        pop     {r4, r5, r6, pc}
L4ee6ac:
        .word   0x08210000
        .size   A_4ee678, . - A_4ee678

@ FUN_004ee6b0
        .global A_4ee6b0
        .type   A_4ee6b0, %function
A_4ee6b0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee6e8
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee6e4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee6e4:
        pop     {r4, r5, r6, pc}
L4ee6e8:
        .word   0x085b0080
        .size   A_4ee6b0, . - A_4ee6b0

@ FUN_004ee6ec
        .global A_4ee6ec
        .type   A_4ee6ec, %function
A_4ee6ec:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee738
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee730
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        stm     r5, {r1, r2, r3}
        ldr     r0, [r4, #4]
L4ee730:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4ee738:
        .word   0x08490040
        .size   A_4ee6ec, . - A_4ee6ec

@ FUN_004ee73c
        .global A_4ee73c
        .type   A_4ee73c, %function
A_4ee73c:
        push    {r0, r1, r2, r3, r4, lr}
        ldrd    r2, r3, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ee784
        str     ip, [r4, #0x80]!
        ldrb    ip, [sp, #8]
        strb    ip, [r4, #4]
        strd    r2, r3, [r4, #8]
        ldr     r2, L4ee788
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4ee784:
        .word   0x083b00c2
L4ee788:
        .word   0x00003b4c
        .size   A_4ee73c, . - A_4ee73c

@ FUN_004ee78c
        .global A_4ee78c
        .type   A_4ee78c, %function
A_4ee78c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4ee7c8
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #5
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ee7c8:
        .word   0x08480042
        .size   A_4ee78c, . - A_4ee78c

@ FUN_004ee7cc
        .global A_4ee7cc
        .type   A_4ee7cc, %function
A_4ee7cc:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee808
        add     r4, r4, #0x80
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee804
        add     r1, r4, #8
        ldrd    r0, r1, [r1]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4ee804:
        pop     {r4, r5, r6, pc}
L4ee808:
        .word   0x08500040
        .size   A_4ee7cc, . - A_4ee7cc

@ FUN_004ee80c
        .global A_4ee80c
        .type   A_4ee80c, %function
A_4ee80c:
        push    {r4, lr}
        ldr     r1, [sp, #8]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ee840
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ee840:
        .word   0x085a00c0
        .size   A_4ee80c, . - A_4ee80c

@ FUN_004ee844
        .global A_4ee844
        .type   A_4ee844, %function
A_4ee844:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee878
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L4ee878:
        .word   0x08370040
        .size   A_4ee844, . - A_4ee844

@ FUN_004ee87c
        .global A_4ee87c
        .type   A_4ee87c, %function
A_4ee87c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4ee8a8
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ee8a8:
        .word   0x08400040
        .size   A_4ee87c, . - A_4ee87c

@ FUN_004ee8ac
        .global A_4ee8ac
        .type   A_4ee8ac, %function
A_4ee8ac:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r1
        mov     r7, r2
        ldr     r2, [sp, #0x18]
        mov     r5, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ee914
        str     r1, [r4, #0x80]!
        ldm     r2, {r1, r3}
        add     r8, r4, #4
        ldr     r2, [r2, #8]
        str     r2, [r4, #0xc]
        stm     r8, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ee910
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r6]
        add     r1, r4, #0x10
        ldrd    r0, r1, [r1]
        strd    r0, r1, [r7]
        ldr     r0, [r4, #0x18]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ee910:
        pop     {r4, r5, r6, r7, r8, pc}
L4ee914:
        .word   0x08540100
        .size   A_4ee8ac, . - A_4ee8ac

@ FUN_004ee918
        .global A_4ee918
        .type   A_4ee918, %function
A_4ee918:
        push    {r0, r1, r2, r3, r4, lr}
        ldrd    r2, r3, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ee960
        str     ip, [r4, #0x80]!
        ldrb    ip, [sp, #8]
        strb    ip, [r4, #4]
        strd    r2, r3, [r4, #8]
        ldr     r2, L4ee964
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4ee960:
        .word   0x083c00c2
L4ee964:
        .word   0x00023c0c
        .size   A_4ee918, . - A_4ee918

@ FUN_004ee968
        .global A_4ee968
        .type   A_4ee968, %function
A_4ee968:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r3, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4ee9c0
        str     r5, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r5, [sp, #0xc]
        strb    r5, [r4, #8]
        add     r5, r4, #0xc
        stm     r5, {r3, ip}
        mov     r3, #0xc
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x18]
        str     r2, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4ee9c0:
        .word   0x08460102
        .size   A_4ee968, . - A_4ee968

@ FUN_004ee9c4
        .global A_4ee9c4
        .type   A_4ee9c4, %function
A_4ee9c4:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r1
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4eea18
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, ip}
        mov     r3, #0xa
        orr     r2, r3, ip, lsl #7
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4eea14
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4eea14:
        pop     {r4, r5, r6, pc}
L4eea18:
        .word   0x083e00c2
        .size   A_4ee9c4, . - A_4ee9c4

@ FUN_004eea1c
        .global A_4eea1c
        .type   A_4eea1c, %function
A_4eea1c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        ldr     r1, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4eea80
        str     ip, [r4, #0x80]!
        ldr     r6, [r2, #4]
        ldr     ip, [r2]
        ldr     r2, [r2, #8]
        add     lr, r4, #0x18
        str     r2, [r4, #0xc]
        str     r1, [r4, #0x14]
        mov     r2, #0xc
        str     r6, [r4, #8]
        orr     r1, r2, r1, lsl #4
        str     ip, [r4, #4]
        stm     lr, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4eea7c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4eea7c:
        pop     {r4, r5, r6, pc}
L4eea80:
        .word   0x08530142
        .size   A_4eea1c, . - A_4eea1c

@ FUN_004eeb08
        .global A_4eeb08
        .type   A_4eeb08, %function
A_4eeb08:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eeb3c
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L4eeb3c:
        .word   0x08250040
        .size   A_4eeb08, . - A_4eeb08

@ FUN_004eeb40
        .global A_4eeb40
        .type   A_4eeb40, %function
A_4eeb40:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, r6, r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4eeb8c
        str     r8, [r4, #0x80]!
        ldr     r8, [r1]
        ldr     r1, [r1, #4]
        add     lr, r4, #8
        str     r8, [r4, #4]
        stm     lr, {r1, r2, r3, r5, r6, r7, ip}
        ldrb    r1, [sp, #0x28]
        strb    r1, [r4, #0x24]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4eeb8c:
        .word   0x08560240
        .size   A_4eeb40, . - A_4eeb40

@ FUN_004eeb90
        .global A_4eeb90
        .type   A_4eeb90, %function
A_4eeb90:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4eebc0
        str     r2, [r4, #0x80]!
        ldm     r1, {r1, r2}
        stmib   r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4eebc0:
        .word   0x08570080
        .size   A_4eeb90, . - A_4eeb90

@ FUN_004eebc4
        .global A_4eebc4
        .type   A_4eebc4, %function
A_4eebc4:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r1
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4eec24
        str     r6, [r4, #0x80]!
        add     r6, r4, #0x14
        str     r3, [r4, #4]
        str     r1, [r4, #8]
        str     ip, [r4, #0xc]
        ldrb    r1, [sp, #0x18]
        strb    r1, [r4, #0x10]
        mov     r1, #0xc
        orr     r1, r1, r3, lsl #4
        stm     r6, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4eec20
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4eec20:
        pop     {r4, r5, r6, pc}
L4eec24:
        .word   0x08550102
        .size   A_4eebc4, . - A_4eebc4

@ FUN_004eec28
        .global A_4eec28
        .type   A_4eec28, %function
A_4eec28:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x28
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4eec88
        str     r5, [r4, #0x80]!
        ldrb    r5, [sp, #4]
        strb    r5, [r4, #4]
        strd    r2, r3, [r4, #8]
        ldrh    r2, [sp, #0x20]
        add     r5, r4, #0x18
        strh    r2, [r4, #0x10]
        ldrb    r2, [sp, #0x24]
        strb    r2, [r4, #0x14]
        stm     r5, {r1, ip}
        ldrh    r1, [sp, #0x30]
        strh    r1, [r4, #0x20]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4eec88:
        .word   0x08720200
        .size   A_4eec28, . - A_4eec28

@ FUN_004eec8c
        .global A_4eec8c
        .type   A_4eec8c, %function
A_4eec8c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eecb4
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4eecb4:
        .word   0x08740000
        .size   A_4eec8c, . - A_4eec8c

@ FUN_004eecb8
        .global A_4eecb8
        .type   A_4eecb8, %function
A_4eecb8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eece0
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4eece0:
        .word   0x08390000
        .size   A_4eecb8, . - A_4eecb8

@ FUN_004eece4
        .global A_4eece4
        .type   A_4eece4, %function
A_4eece4:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r1, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4eed34
        str     ip, [r4, #0x80]!
        ldrb    ip, [sp, #4]
        strb    ip, [r4, #4]
        str     r2, [r4, #8]
        mov     r2, #0xc
        add     ip, r4, #0x10
        str     r1, [r4, #0xc]
        orr     r1, r2, r1, lsl #6
        stm     ip, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4eed34:
        .word   0x082b00c2
        .size   A_4eece4, . - A_4eece4

@ FUN_004eed38
        .global A_4eed38
        .type   A_4eed38, %function
A_4eed38:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r3, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4eed90
        str     r5, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r5, [sp, #0xc]
        strb    r5, [r4, #8]
        add     r5, r4, #0xc
        stm     r5, {r3, ip}
        mov     r3, #0xc
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x18]
        str     r2, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4eed90:
        .word   0x084d0102
        .size   A_4eed38, . - A_4eed38

@ FUN_004eed94
        .global A_4eed94
        .type   A_4eed94, %function
A_4eed94:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        mov     r5, r1
        mov     r6, r2
        mov     r7, r3
        ldm     r4, {r1, r2, r3}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4eedf0
        str     ip, [r4, #0x80]!
        add     r8, r4, #4
        stm     r8, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4eedec
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldrb    r0, [r4, #0xc]
        strb    r0, [r6]
        ldrd    r0, r1, [r4, #0x10]
        strd    r0, r1, [r7]
        ldr     r0, [r4, #4]
L4eedec:
        pop     {r4, r5, r6, r7, r8, pc}
L4eedf0:
        .word   0x087600c0
        .size   A_4eed94, . - A_4eed94

@ FUN_004eedf4
        .global A_4eedf4
        .type   A_4eedf4, %function
A_4eedf4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eee38
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #0xc]
        ldrb    r1, [sp, #0xc]
        strb    r1, [r4, #0x10]
        ldrb    r1, [sp, #0x10]
        strb    r1, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4eee38:
        .word   0x08710140
        .size   A_4eedf4, . - A_4eedf4

@ FUN_004eee3c
        .global A_4eee3c
        .type   A_4eee3c, %function
A_4eee3c:
        push    {r4, lr}
        ldr     r1, [sp, #0xc]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4eee90
        str     ip, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #0xc]
        ldm     r1, {r1, r2}
        str     r1, [r4, #0x10]
        str     r2, [r4, #0x14]
        ldrb    r1, [sp, #0x10]
        strb    r1, [r4, #0x18]
        ldrb    r1, [sp, #0x14]
        strb    r1, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4eee90:
        .word   0x085d01c0
        .size   A_4eee3c, . - A_4eee3c

@ FUN_004eee94
        .global A_4eee94
        .type   A_4eee94, %function
A_4eee94:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x18
        ldr     r5, [sp, #0x10]
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4eeee0
        str     r6, [r4, #0x80]!
        add     lr, r4, #0x10
        stm     lr, {r1, ip}
        add     lr, r4, #4
        stm     lr, {r2, r3, r5}
        ldrb    r1, [sp, #0x20]
        strb    r1, [r4, #0x18]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L4eeee0:
        .word   0x08750180
        .size   A_4eee94, . - A_4eee94

@ FUN_004eeee4
        .global A_4eeee4
        .type   A_4eeee4, %function
A_4eeee4:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eef24
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        strd    r2, r3, [r4, #8]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4eef24:
        .word   0x08730100
        .size   A_4eeee4, . - A_4eeee4

@ FUN_004eef28
        .global A_4eef28
        .type   A_4eef28, %function
A_4eef28:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eef70
        add     r4, r4, #0x80
        add     r6, r4, #8
        stm     r4, {r1, r3}
        mov     r1, #0xc
        orr     r1, r1, r3, lsl #4
        stm     r6, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4eef6c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4eef6c:
        pop     {r4, r5, r6, pc}
L4eef70:
        .word   0x08600042
        .size   A_4eef28, . - A_4eef28

@ FUN_004eef74
        .global A_4eef74
        .type   A_4eef74, %function
A_4eef74:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4eef9c
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4eef9c:
        .word   0x08430000
        .size   A_4eef74, . - A_4eef74

@ FUN_004eefe0
        .global A_4eefe0
        .type   A_4eefe0, %function
A_4eefe0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4ef00c
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef00c:
        .word   0x08420040
        .size   A_4eefe0, . - A_4eefe0

@ FUN_004ef010
        .global A_4ef010
        .type   A_4ef010, %function
A_4ef010:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L4ef05c
        mov     r6, #0
        str     r8, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3, r5, ip}
        orr     r1, r6, ip, lsl #14
        add     r6, r4, #0x18
        orr     r1, r1, #2
        stm     r6, {r1, r7}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4ef05c:
        .word   0x08070142
        .size   A_4ef010, . - A_4ef010

@ FUN_004ef060
        .global A_4ef060
        .type   A_4ef060, %function
A_4ef060:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef094
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef094:
        .word   0x085c00c0
        .size   A_4ef060, . - A_4ef060

@ FUN_004ef098
        .global A_4ef098
        .type   A_4ef098, %function
A_4ef098:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r1, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ef0e8
        str     ip, [r4, #0x80]!
        ldrb    ip, [sp, #4]
        strb    ip, [r4, #4]
        str     r2, [r4, #8]
        mov     r2, #0xc
        add     ip, r4, #0x10
        str     r1, [r4, #0xc]
        orr     r1, r2, r1, lsl #6
        stm     ip, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4ef0e8:
        .word   0x082800c2
        .size   A_4ef098, . - A_4ef098

@ FUN_004ef0ec
        .global A_4ef0ec
        .type   A_4ef0ec, %function
A_4ef0ec:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef120
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef11c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ef11c:
        pop     {r4, r5, r6, pc}
L4ef120:
        .word   0x08240000
        .size   A_4ef0ec, . - A_4ef0ec

@ FUN_004ef16c
        .global A_4ef16c
        .type   A_4ef16c, %function
A_4ef16c:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef1a0
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L4ef1a0:
        .word   0x085f0040
        .size   A_4ef16c, . - A_4ef16c

@ FUN_004ef1a4
        .global A_4ef1a4
        .type   A_4ef1a4, %function
A_4ef1a4:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r1, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ef1f4
        str     ip, [r4, #0x80]!
        ldrb    ip, [sp, #4]
        strb    ip, [r4, #4]
        str     r2, [r4, #8]
        mov     r2, #0xa
        add     ip, r4, #0x10
        str     r1, [r4, #0xc]
        orr     r1, r2, r1, lsl #6
        stm     ip, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4ef1f4:
        .word   0x082a00c2
        .size   A_4ef1a4, . - A_4ef1a4

@ FUN_004ef1f8
        .global A_4ef1f8
        .type   A_4ef1f8, %function
A_4ef1f8:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef230
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4ef230:
        .word   0x08260080
        .size   A_4ef1f8, . - A_4ef1f8

@ FUN_004ef234
        .global A_4ef234
        .type   A_4ef234, %function
A_4ef234:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef268
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L4ef268:
        .word   0x085e0040
        .size   A_4ef234, . - A_4ef234

@ FUN_004ef26c
        .global A_4ef26c
        .type   A_4ef26c, %function
A_4ef26c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        mov     r5, r1
        ldm     r4, {r1, r2, r3}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ef2bc
        str     ip, [r4, #0x80]!
        ldrb    ip, [sp, #8]
        add     r6, r4, #8
        strb    ip, [r4, #4]
        stm     r6, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef2b4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4ef2b4:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4ef2bc:
        .word   0x083d0100
        .size   A_4ef26c, . - A_4ef26c

@ FUN_004ef2c0
        .global A_4ef2c0
        .type   A_4ef2c0, %function
A_4ef2c0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4ef2fc
        str     ip, [r4, #0x80]!
        mov     ip, #0xa
        strd    r2, r3, [r4, #4]
        orr     r2, ip, r3, lsl #6
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef2fc:
        .word   0x082c0082
        .size   A_4ef2c0, . - A_4ef2c0

@ FUN_004ef300
        .global A_4ef300
        .type   A_4ef300, %function
A_4ef300:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4ef32c
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef32c:
        .word   0x082d0040
        .size   A_4ef300, . - A_4ef300

@ FUN_004ef330
        .global A_4ef330
        .type   A_4ef330, %function
A_4ef330:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        add     r4, sp, #0x28
        mov     r5, r1
        ldm     r4, {r1, r6, r7, ip}
        add     r4, sp, #0x38
        ldm     r4, {r3, r8, sb}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     sl, L4ef3a0
        mov     fp, #0
        str     sl, [r4, #0x80]!
        add     lr, r4, #8
        str     r2, [r4, #4]
        stm     lr, {r1, r6, r7}
        add     lr, r4, #0x14
        orr     r1, fp, r3, lsl #14
        stm     lr, {r3, r8}
        add     sl, r4, #0x20
        orr     r1, r1, #2
        str     sb, [r4, #0x1c]
        stm     sl, {r1, ip}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef39c
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef39c:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L4ef3a0:
        .word   0x080201c2
        .size   A_4ef330, . - A_4ef330

@ FUN_004ef3a4
        .global A_4ef3a4
        .type   A_4ef3a4, %function
A_4ef3a4:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef3d8
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef3d4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef3d4:
        pop     {r4, r5, r6, pc}
L4ef3d8:
        .word   0x080b0000
        .size   A_4ef3a4, . - A_4ef3a4

@ FUN_004ef3dc
        .global A_4ef3dc
        .type   A_4ef3dc, %function
A_4ef3dc:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r1
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4ef424
        str     r6, [r4, #0x80]!
        add     lr, r4, #0xc
        stm     lr, {r1, ip}
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef420
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef420:
        pop     {r4, r5, r6, pc}
L4ef424:
        .word   0x08010100
        .size   A_4ef3dc, . - A_4ef3dc

@ FUN_004ef428
        .global A_4ef428
        .type   A_4ef428, %function
A_4ef428:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4ef454
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef454:
        .word   0x080a0040
        .size   A_4ef428, . - A_4ef428

@ FUN_004ef458
        .global A_4ef458
        .type   A_4ef458, %function
A_4ef458:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef48c
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef488
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef488:
        pop     {r4, r5, r6, pc}
L4ef48c:
        .word   0x080c0000
        .size   A_4ef458, . - A_4ef458

@ FUN_004ef490
        .global A_4ef490
        .type   A_4ef490, %function
A_4ef490:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r1
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4ef4e4
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, ip}
        mov     r2, #0xc
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef4e0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef4e0:
        pop     {r4, r5, r6, pc}
L4ef4e4:
        .word   0x080200c2
        .size   A_4ef490, . - A_4ef490

@ FUN_004ef4e8
        .global A_4ef4e8
        .type   A_4ef4e8, %function
A_4ef4e8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef510
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef510:
        .word   0x08080000
        .size   A_4ef4e8, . - A_4ef4e8

@ FUN_004ef514
        .global A_4ef514
        .type   A_4ef514, %function
A_4ef514:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x1c
        mov     r5, r1
        ldm     r4, {r1, r6}
        ldr     ip, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L4ef570
        str     r7, [r4, #0x80]!
        add     r7, r4, #0x14
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        mov     r2, #0xa
        orr     r1, r2, r1, lsl #4
        str     r6, [r4, #0x10]
        stm     r7, {r1, ip}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef56c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef56c:
        pop     {r4, r5, r6, r7, r8, pc}
L4ef570:
        .word   0x08030102
        .size   A_4ef514, . - A_4ef514

@ FUN_004ef574
        .global A_4ef574
        .type   A_4ef574, %function
A_4ef574:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r1
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4ef5bc
        str     r6, [r4, #0x80]!
        add     lr, r4, #0xc
        stm     lr, {r1, ip}
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef5b8
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4ef5b8:
        pop     {r4, r5, r6, pc}
L4ef5bc:
        .word   0x0c010100
        .size   A_4ef574, . - A_4ef574

@ FUN_004ef5c0
        .global A_4ef5c0
        .type   A_4ef5c0, %function
A_4ef5c0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef5f4
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef5f0
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4ef5f0:
        pop     {r4, r5, r6, pc}
L4ef5f4:
        .word   0x08040000
        .size   A_4ef5c0, . - A_4ef5c0

@ FUN_004ef5f8
        .global A_4ef5f8
        .type   A_4ef5f8, %function
A_4ef5f8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef624
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef624:
        .word   0x08050080
        .size   A_4ef5f8, . - A_4ef5f8

@ FUN_004ef628
        .global A_4ef628
        .type   A_4ef628, %function
A_4ef628:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef65c
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef658
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef658:
        pop     {r4, r5, r6, pc}
L4ef65c:
        .word   0x08040000
        .size   A_4ef628, . - A_4ef628

@ FUN_004ef660
        .global A_4ef660
        .type   A_4ef660, %function
A_4ef660:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4ef68c
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef68c:
        .word   0x08030040
        .size   A_4ef660, . - A_4ef660

@ FUN_004ef690
        .global A_4ef690
        .type   A_4ef690, %function
A_4ef690:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef6e0
        add     r4, r4, #0x80
        mov     ip, #0xc
        stm     r4, {r1, r3}
        mov     r1, #0x228
        add     r6, r4, #8
        mul     r1, r3, r1
        orr     r1, ip, r1, lsl #4
        stm     r6, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4ef6dc
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4ef6dc:
        pop     {r4, r5, r6, pc}
L4ef6e0:
        .word   0x08010042
        .size   A_4ef690, . - A_4ef690

@ FUN_004ef6e4
        .global A_4ef6e4
        .type   A_4ef6e4, %function
A_4ef6e4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4ef70c
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4ef70c:
        .word   0x08020000
        .size   A_4ef6e4, . - A_4ef6e4

@ FUN_004f3c68
        .global A_4f3c68
        .type   A_4f3c68, %function
A_4f3c68:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3c94
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f3c94:
        .word   0x008bf998
        .size   A_4f3c68, . - A_4f3c68

@ FUN_004f3c98
        .global A_4f3c98
        .type   A_4f3c98, %function
A_4f3c98:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3cd0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f3ccc
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4f3ccc:
        pop     {r4, r5, r6, pc}
L4f3cd0:
        .word   0x008bf998
        .size   A_4f3c98, . - A_4f3c98

@ FUN_004f3cd4
        .global A_4f3cd4
        .type   A_4f3cd4, %function
A_4f3cd4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r2
        mov     r7, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4f3d40
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r5, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r8, sb, [r5]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L4f3d44
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        strd    r8, sb, [r5]
        bmi     L4f3d3c
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #0xc]
        str     r0, [r7]
        ldr     r0, [r4, #4]
L4f3d3c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4f3d40:
        .word   0x000f0040
L4f3d44:
        .word   0x008bf998
        .size   A_4f3cd4, . - A_4f3cd4

@ FUN_004f3d48
        .global A_4f3d48
        .type   A_4f3d48, %function
A_4f3d48:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3d74
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f3d74:
        .word   0x008bf998
        .size   A_4f3d48, . - A_4f3d48

@ FUN_004f3d78
        .global A_4f3d78
        .type   A_4f3d78, %function
A_4f3d78:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3da4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f3da4:
        .word   0x008bf998
        .size   A_4f3d78, . - A_4f3d78

@ FUN_004f3da8
        .global A_4f3da8
        .type   A_4f3da8, %function
A_4f3da8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, lr}
        add     r4, sp, #0x30
        ldm     r4, {r0, r1, r5, r6, r7, r8, sb, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     sl, L4f3df4
        str     sl, [r4, #0x80]!
        ldrb    sl, [sp]
        strb    sl, [r4, #4]
        add     sl, r4, #0x10
        stm     sl, {r0, r1, r5, r6, r7, r8, sb, ip}
        ldr     r0, L4f3df8
        strd    r2, r3, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4f3df4:
        .word   0x000702c0
L4f3df8:
        .word   0x008bf998
        .size   A_4f3da8, . - A_4f3da8

@ FUN_004f3dfc
        .global A_4f3dfc
        .type   A_4f3dfc, %function
A_4f3dfc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4f3e3c
        str     r2, [r4, #0x80]!
        mov     r2, #0xa
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4f3e40
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f3e3c:
        .word   0x000e0042
L4f3e40:
        .word   0x008bf998
        .size   A_4f3dfc, . - A_4f3dfc

@ FUN_004f3e44
        .global A_4f3e44
        .type   A_4f3e44, %function
A_4f3e44:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4f3e80
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4f3e84
        strd    r2, r3, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4f3e80:
        .word   0x000500c0
L4f3e84:
        .word   0x008bf998
        .size   A_4f3e44, . - A_4f3e44

@ FUN_004f3e88
        .global A_4f3e88
        .type   A_4f3e88, %function
A_4f3e88:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3eb4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f3eb4:
        .word   0x008bf998
        .size   A_4f3e88, . - A_4f3e88

@ FUN_004f3eb8
        .global A_4f3eb8
        .type   A_4f3eb8, %function
A_4f3eb8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xa0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3ef0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f3eec
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4f3eec:
        pop     {r4, r5, r6, pc}
L4f3ef0:
        .word   0x008bf998
        .size   A_4f3eb8, . - A_4f3eb8

@ FUN_004f3ef4
        .global A_4f3ef4
        .type   A_4f3ef4, %function
A_4f3ef4:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, r6}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L4f3f44
        mov     ip, #0
        str     r7, [r4, #0x80]!
        add     r8, r4, #4
        stm     r8, {r1, r2, r3, r5, r6}
        ldrb    r1, [sp, #0x20]
        strb    r1, [r4, #0x18]
        str     r0, [r4, #0x20]
        ldr     r0, L4f3f48
        str     ip, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4f3f44:
        .word   0x00010182
L4f3f48:
        .word   0x008bf998
        .size   A_4f3ef4, . - A_4f3ef4

@ FUN_004f3f4c
        .global A_4f3f4c
        .type   A_4f3f4c, %function
A_4f3f4c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4f3f80
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4f3f84
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4f3f80:
        .word   0x001a0040
L4f3f84:
        .word   0x008bf998
        .size   A_4f3f4c, . - A_4f3f4c

@ FUN_004f3f88
        .global A_4f3f88
        .type   A_4f3f88, %function
A_4f3f88:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x170000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f3fc0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f3fbc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4f3fbc:
        pop     {r4, r5, r6, pc}
L4f3fc0:
        .word   0x008bf998
        .size   A_4f3f88, . - A_4f3f88

@ FUN_004f3fc4
        .global A_4f3fc4
        .type   A_4f3fc4, %function
A_4f3fc4:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mov     r6, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4f401c
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4f4020
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f4018
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L4f4018:
        pop     {r4, r5, r6, pc}
L4f401c:
        .word   0x00100042
L4f4020:
        .word   0x008bf998
        .size   A_4f3fc4, . - A_4f3fc4

@ FUN_004f4024
        .global A_4f4024
        .type   A_4f4024, %function
A_4f4024:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4f4058
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4f405c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4f4058:
        .word   0x00060040
L4f405c:
        .word   0x008bf998
        .size   A_4f4024, . - A_4f4024

@ FUN_004f4060
        .global A_4f4060
        .type   A_4f4060, %function
A_4f4060:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f408c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f408c:
        .word   0x008bf998
        .size   A_4f4060, . - A_4f4060

@ FUN_004f4090
        .global A_4f4090
        .type   A_4f4090, %function
A_4f4090:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x130000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f40c8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f40c4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4f40c4:
        pop     {r4, r5, r6, pc}
L4f40c8:
        .word   0x008bf998
        .size   A_4f4090, . - A_4f4090

@ FUN_004f40cc
        .global A_4f40cc
        .type   A_4f40cc, %function
A_4f40cc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4f40fc
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L4f4100
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f40fc:
        .word   0x00190040
L4f4100:
        .word   0x008bf998
        .size   A_4f40cc, . - A_4f40cc

@ FUN_004f4104
        .global A_4f4104
        .type   A_4f4104, %function
A_4f4104:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x18
        ldm     r4, {r5, r6}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L4f4154
        mov     ip, #0
        str     r7, [r4, #0x80]!
        add     r8, r4, #4
        stm     r8, {r1, r2, r3, r5, r6}
        ldrb    r1, [sp, #0x20]
        strb    r1, [r4, #0x18]
        str     r0, [r4, #0x20]
        ldr     r0, L4f4158
        str     ip, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L4f4154:
        .word   0x00180182
L4f4158:
        .word   0x008bf998
        .size   A_4f4104, . - A_4f4104

@ FUN_004f415c
        .global A_4f415c
        .type   A_4f415c, %function
A_4f415c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r8, r3
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x160000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f41b8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f41b4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #0x10]
        str     r0, [r7]
        ldr     r0, [r4, #0x14]
        str     r0, [r8]
        ldr     r0, [r4, #4]
L4f41b4:
        pop     {r4, r5, r6, r7, r8, pc}
L4f41b8:
        .word   0x008bf998
        .size   A_4f415c, . - A_4f415c

@ FUN_004f41bc
        .global A_4f41bc
        .type   A_4f41bc, %function
A_4f41bc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f41f4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f41f0
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4f41f0:
        pop     {r4, r5, r6, pc}
L4f41f4:
        .word   0x008bf998
        .size   A_4f41bc, . - A_4f41bc

@ FUN_004f41f8
        .global A_4f41f8
        .type   A_4f41f8, %function
A_4f41f8:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4f423c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L4f4240
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f4234
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4f4234:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L4f423c:
        .word   0x00120040
L4f4240:
        .word   0x008bf998
        .size   A_4f41f8, . - A_4f41f8

@ FUN_004f4244
        .global A_4f4244
        .type   A_4f4244, %function
A_4f4244:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x140000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f427c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f4278
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4f4278:
        pop     {r4, r5, r6, pc}
L4f427c:
        .word   0x008bf998
        .size   A_4f4244, . - A_4f4244

@ FUN_004f4280
        .global A_4f4280
        .type   A_4f4280, %function
A_4f4280:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r8, r3
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x150000
        str     r0, [r4, #0x80]!
        ldr     r0, L4f42dc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f42d8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #0x10]
        str     r0, [r7]
        ldr     r0, [r4, #0x14]
        str     r0, [r8]
        ldr     r0, [r4, #4]
L4f42d8:
        pop     {r4, r5, r6, r7, r8, pc}
L4f42dc:
        .word   0x008bf998
        .size   A_4f4280, . - A_4f4280

@ FUN_004f42e0
        .global A_4f42e0
        .type   A_4f42e0, %function
A_4f42e0:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4f4324
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L4f4328
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4f431c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4f431c:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L4f4324:
        .word   0x00110040
L4f4328:
        .word   0x008bf998
        .size   A_4f42e0, . - A_4f42e0

@ FUN_004f432c
        .global A_4f432c
        .type   A_4f432c, %function
A_4f432c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4f4370
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4f4374
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4f4370:
        .word   0x000d0042
L4f4374:
        .word   0x008bf998
        .size   A_4f432c, . - A_4f432c

@ FUN_004f4b00
        .global A_4f4b00
        .type   A_4f4b00, %function
A_4f4b00:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L4f4b20
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4f4b20:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_4f4b00, . - A_4f4b00

@ FUN_004f54b4
        .global A_4f54b4
        .type   A_4f54b4, %function
A_4f54b4:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L4f54d4
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4f54d4:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_4f54b4, . - A_4f54b4

@ FUN_004f562c
        .global A_4f562c
        .type   A_4f562c, %function
A_4f562c:
        push    {r4, lr}
        ldr     r4, L4f5658
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L4f5654
        svc     #0x23
        and     r0, r0, #0x80000000
        cmp     r0, #0
        movge   r0, #0
        strge   r0, [r4]
L4f5654:
        pop     {r4, pc}
L4f5658:
        .word   0x008b8500
        .size   A_4f562c, . - A_4f562c

@ FUN_004f57a8
        .global A_4f57a8
        .type   A_4f57a8, %function
A_4f57a8:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x18]
        cmp     r0, #0
        beq     L4f57dc
        ldr     r0, [r4, #0x14]
        svc     #0x20
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r1, r4
        ldr     r0, L4f57ec
        pop     {r4, lr}
        b       Fn_024500
L4f57dc:
        mov     r0, #0
        str     r0, [r4, #8]
        str     r0, [r4, #0xc]
        pop     {r4, pc}
L4f57ec:
        .word   0x009b0c58
        .size   A_4f57a8, . - A_4f57a8

@ FUN_004f5cc0
        .global A_4f5cc0
        .type   A_4f5cc0, %function
A_4f5cc0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        cmp     r2, #0
        ldreq   r0, [r5, #4]
        mov     r4, r1
        beq     L4f5ce4
        pop     {r4, r5, r6, lr}
        mov     r0, r1
        b       Fn_66a36c
L4f5ce4:
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r3, [sp, #0xc]
        add     r0, r5, #0x210
        mov     r2, r4
        pop     {r4, r5, r6, lr}
        ldr     r1, L4f5d14
        b       Fn_032098
L4f5d14:
        .word   0x0076a368
        .size   A_4f5cc0, . - A_4f5cc0

@ FUN_004f5dbc
        .global A_4f5dbc
        .type   A_4f5dbc, %function
A_4f5dbc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #8]
        ldr     r1, L4f5e1c
        mov     r6, #0
        cmp     r0, #0
        str     r1, [r4]
        beq     L4f5df8
        ldr     r0, [r4, #4]
        add     r5, r4, #4
        cmp     r0, #0
        beq     L4f5df4
        svc     #0x23
        str     r6, [r5]
L4f5df4:
        strb    r6, [r4, #8]
L4f5df8:
        ldr     r0, [r4, #4]
        add     r5, r4, #4
        cmp     r0, #0
        beq     L4f5e10
        svc     #0x23
        str     r6, [r5]
L4f5e10:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L4f5e1c:
        .word   0x007ebbc4
        .size   A_4f5dbc, . - A_4f5dbc

@ FUN_004f5e20
        .global A_4f5e20
        .type   A_4f5e20, %function
A_4f5e20:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r1, [r0, #8]
        ldr     r0, L4f5e78
        mov     r5, #0
        cmp     r1, #0
        str     r0, [r4]
        beq     L4f5e5c
        ldr     r0, [r4, #4]
        add     r6, r4, #4
        cmp     r0, #0
        beq     L4f5e58
        svc     #0x23
        str     r5, [r6]
L4f5e58:
        strb    r5, [r4, #8]
L4f5e5c:
        ldr     r0, [r4, #4]!
        cmp     r0, #0
        beq     L4f5e70
        svc     #0x23
        str     r5, [r4]
L4f5e70:
        sub     r0, r4, #4
        pop     {r4, r5, r6, pc}
L4f5e78:
        .word   0x007ebbc4
        .size   A_4f5e20, . - A_4f5e20

@ FUN_004f5eec
        .global A_4f5eec
        .type   A_4f5eec, %function
A_4f5eec:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L4f5f0c
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4f5f0c:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_4f5eec, . - A_4f5eec

@ FUN_004f60f4
        .global A_4f60f4
        .type   A_4f60f4, %function
A_4f60f4:
        ldr     r1, L4f6140
        push    {r4, r5, r6, lr}
        mov     r4, r0
        str     r1, [r0]
        ldr     r0, [r0, #0x10]
        lsl     r0, r0, #8
        asrs    r0, r0, #0x18
        ldrne   r0, L4f6144
        blne    Fn_01b6ac
        ldr     r0, [r4, #0x18]
        add     r5, r4, #0x18
        cmp     r0, #0
        beq     L4f6134
        svc     #0x23
        mov     r0, #0
        str     r0, [r5]
L4f6134:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L4f6140:
        .word   0x0082bf1c
L4f6144:
        .word   0xd9001bf0
        .size   A_4f60f4, . - A_4f60f4

@ FUN_004f6148
        .global A_4f6148
        .type   A_4f6148, %function
A_4f6148:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L4f6190
        str     r0, [r4]
        ldr     r0, [r4, #0x10]
        lsl     r0, r0, #8
        asrs    r0, r0, #0x18
        ldrne   r0, L4f6194
        blne    Fn_01b6ac
        ldr     r0, [r4, #0x18]
        add     r5, r4, #0x18
        cmp     r0, #0
        beq     L4f6188
        svc     #0x23
        mov     r0, #0
        str     r0, [r5]
L4f6188:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L4f6190:
        .word   0x0082bf1c
L4f6194:
        .word   0xd9001bf0
        .size   A_4f6148, . - A_4f6148

@ FUN_004f61f8
        .global A_4f61f8
        .type   A_4f61f8, %function
A_4f61f8:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L4f6218
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4f6218:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_4f61f8, . - A_4f61f8

@ FUN_004f6228
        .global A_4f6228
        .type   A_4f6228, %function
A_4f6228:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L4f6248
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4f6248:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_4f6228, . - A_4f6228

@ FUN_004f6658
        .global A_4f6658
        .type   A_4f6658, %function
A_4f6658:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L4f6678
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L4f6678:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_4f6658, . - A_4f6658

@ FUN_004fb35c
        .global A_4fb35c
        .type   A_4fb35c, %function
A_4fb35c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fb3a8
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        mov     r1, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fb3ac
        orr     r1, r1, r3, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb3a4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb3a4:
        pop     {r4, r5, r6, pc}
L4fb3a8:
        .word   0x001e0082
L4fb3ac:
        .word   0x008b8778
        .size   A_4fb35c, . - A_4fb35c

@ FUN_004fb3b0
        .global A_4fb3b0
        .type   A_4fb3b0, %function
A_4fb3b0:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, ip}
        ldr     r1, [sp, #0x28]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4fb428
        str     r6, [r4, #0x80]!
        add     r6, r4, #0x14
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        str     r3, [r4, #0xc]
        orr     r0, r0, r3, lsl #4
        str     r1, [r4, #0x10]
        stm     r6, {r0, r2}
        mov     r0, #0xc
        add     r6, r4, #0x1c
        orr     r0, r0, r1, lsl #4
        stm     r6, {r0, ip}
        ldr     r0, L4fb42c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb420
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb420:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fb428:
        .word   0x00030104
L4fb42c:
        .word   0x008b8778
        .size   A_4fb3b0, . - A_4fb3b0

@ FUN_004fb46c
        .global A_4fb46c
        .type   A_4fb46c, %function
A_4fb46c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4fb4d4
        str     r5, [r4, #0x80]!
        add     r5, r4, #0xc
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        stm     r5, {r3, ip}
        orr     r0, r0, ip, lsl #4
        strd    r0, r1, [r4, #0x14]
        mov     r0, #0xe
        add     r5, r4, #0x1c
        orr     r0, r0, r3, lsl #4
        stm     r5, {r0, r2}
        ldr     r0, L4fb4d8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fb4d4:
        .word   0x00060104
L4fb4d8:
        .word   0x008b8778
        .size   A_4fb46c, . - A_4fb46c

@ FUN_004fb4dc
        .global A_4fb4dc
        .type   A_4fb4dc, %function
A_4fb4dc:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r2
        ldm     r4, {r2, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4fb544
        str     r6, [r4, #0x80]!
        add     lr, r4, #0xc
        stm     lr, {r2, ip}
        mov     r2, #0x20
        add     lr, r4, #4
        str     r2, [r4, #0x14]
        stm     lr, {r1, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x20]
        ldr     r0, L4fb548
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb540
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb540:
        pop     {r4, r5, r6, pc}
L4fb544:
        .word   0x00120104
L4fb548:
        .word   0x008b8778
        .size   A_4fb4dc, . - A_4fb4dc

@ FUN_004fb54c
        .global A_4fb54c
        .type   A_4fb54c, %function
A_4fb54c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fb58c
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        mov     r0, #0xc
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L4fb590
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fb58c:
        .word   0x000d0082
L4fb590:
        .word   0x008b8778
        .size   A_4fb54c, . - A_4fb54c

@ FUN_004fb594
        .global A_4fb594
        .type   A_4fb594, %function
A_4fb594:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1f0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fb5cc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb5c8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb5c8:
        pop     {r4, r5, r6, pc}
L4fb5cc:
        .word   0x008b8778
        .size   A_4fb594, . - A_4fb594

@ FUN_004fb5d0
        .global A_4fb5d0
        .type   A_4fb5d0, %function
A_4fb5d0:
        push    {r4, r5, r6, lr}
        ldr     ip, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4fb620
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r2, r3, ip}
        mov     r2, #0x20
        str     r2, [r4, #0x14]
        str     r0, [r4, #0x20]
        ldr     r0, L4fb624
        mov     r2, #0xa
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L4fb620:
        .word   0x00110104
L4fb624:
        .word   0x008b8778
        .size   A_4fb5d0, . - A_4fb5d0

@ FUN_004fb628
        .global A_4fb628
        .type   A_4fb628, %function
A_4fb628:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fb664
        add     r4, r4, #0x80
        stm     r4, {r0, r1, r2}
        ldr     r0, L4fb668
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb660
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb660:
        pop     {r4, r5, r6, pc}
L4fb664:
        .word   0x00210080
L4fb668:
        .word   0x008b8778
        .size   A_4fb628, . - A_4fb628

@ FUN_004fb66c
        .global A_4fb66c
        .type   A_4fb66c, %function
A_4fb66c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x200000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fb6a4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb6a0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb6a0:
        pop     {r4, r5, r6, pc}
L4fb6a4:
        .word   0x008b8778
        .size   A_4fb66c, . - A_4fb66c

@ FUN_004fb73c
        .global A_4fb73c
        .type   A_4fb73c, %function
A_4fb73c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r1, r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4fb7b0
        str     r6, [r4, #0x80]!
        add     r6, r4, #0xc
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        stm     r6, {r3, r5}
        orr     r0, r0, r5, lsl #4
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L4fb7b4
        add     r6, r4, #0x1c
        stm     r6, {r0, ip}
        mov     r0, #0xe
        add     r6, r4, #0x24
        orr     r0, r0, r3, lsl #4
        stm     r6, {r0, r2}
        ldr     r0, L4fb7b8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fb7b0:
        .word   0x00070106
L4fb7b4:
        .word   0x0000020a
L4fb7b8:
        .word   0x008b8778
        .size   A_4fb73c, . - A_4fb73c

@ FUN_004fb7bc
        .global A_4fb7bc
        .type   A_4fb7bc, %function
A_4fb7bc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xf0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fb7f4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb7f0
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb7f0:
        pop     {r4, r5, r6, pc}
L4fb7f4:
        .word   0x008b8778
        .size   A_4fb7bc, . - A_4fb7bc

@ FUN_004fb884
        .global A_4fb884
        .type   A_4fb884, %function
A_4fb884:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fb8cc
        add     r4, r4, #0x80
        stm     r4, {r0, r2}
        mov     r0, #0xc
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #8]
        ldr     r0, L4fb8d0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fb8c8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fb8c8:
        pop     {r4, r5, r6, pc}
L4fb8cc:
        .word   0x00020042
L4fb8d0:
        .word   0x008b8778
        .size   A_4fb884, . - A_4fb884

@ FUN_004fb944
        .global A_4fb944
        .type   A_4fb944, %function
A_4fb944:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fb984
        str     r2, [r4, #0x80]!
        mov     r2, #0xa
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fb988
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fb984:
        .word   0x00050042
L4fb988:
        .word   0x008b8778
        .size   A_4fb944, . - A_4fb944

@ FUN_004fb98c
        .global A_4fb98c
        .type   A_4fb98c, %function
A_4fb98c:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r2, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4fb9e0
        str     ip, [r4, #0x80]!
        add     ip, r4, #0x14
        strd    r0, r1, [r4, #4]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        mov     r0, #0xa
        orr     r0, r0, r2, lsl #4
        str     r2, [r4, #0x10]
        stm     ip, {r0, r3}
        ldr     r0, L4fb9e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4fb9e0:
        .word   0x00080102
L4fb9e4:
        .word   0x008b8778
        .size   A_4fb98c, . - A_4fb98c

@ FUN_004fba30
        .global A_4fba30
        .type   A_4fba30, %function
A_4fba30:
        push    {r4, r5, r6, lr}
        ldr     ip, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4fba84
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r2, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        strd    r2, r3, [r4, #0x10]
        str     r0, [r4, #0x1c]
        ldr     r0, L4fba88
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x18]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L4fba84:
        .word   0x000a00c4
L4fba88:
        .word   0x008b8778
        .size   A_4fba30, . - A_4fba30

@ FUN_004fbbb8
        .global A_4fbbb8
        .type   A_4fbbb8, %function
A_4fbbb8:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fbc04
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        mov     r1, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fbc08
        orr     r1, r1, r3, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fbc00
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fbc00:
        pop     {r4, r5, r6, pc}
L4fbc04:
        .word   0x001e0082
L4fbc08:
        .word   0x008b877c
        .size   A_4fbbb8, . - A_4fbbb8

@ FUN_004fbc0c
        .global A_4fbc0c
        .type   A_4fbc0c, %function
A_4fbc0c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, ip}
        ldr     r1, [sp, #0x28]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4fbc84
        str     r6, [r4, #0x80]!
        add     r6, r4, #0x14
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        str     r3, [r4, #0xc]
        orr     r0, r0, r3, lsl #4
        str     r1, [r4, #0x10]
        stm     r6, {r0, r2}
        mov     r0, #0xc
        add     r6, r4, #0x1c
        orr     r0, r0, r1, lsl #4
        stm     r6, {r0, ip}
        ldr     r0, L4fbc88
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fbc7c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fbc7c:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fbc84:
        .word   0x00030104
L4fbc88:
        .word   0x008b877c
        .size   A_4fbc0c, . - A_4fbc0c

@ FUN_004fbc8c
        .global A_4fbc8c
        .type   A_4fbc8c, %function
A_4fbc8c:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fbcd8
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fbcdc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fbcd4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fbcd4:
        pop     {r4, r5, r6, pc}
L4fbcd8:
        .word   0x040c0042
L4fbcdc:
        .word   0x008b877c
        .size   A_4fbc8c, . - A_4fbc8c

@ FUN_004fbd1c
        .global A_4fbd1c
        .type   A_4fbd1c, %function
A_4fbd1c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fbd54
        str     r0, [r4, #0x80]!
        ldr     r0, L4fbd58
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fbd50
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fbd50:
        pop     {r4, r5, r6, pc}
L4fbd54:
        .word   0x04150000
L4fbd58:
        .word   0x008b877c
        .size   A_4fbd1c, . - A_4fbd1c

@ FUN_004fbd5c
        .global A_4fbd5c
        .type   A_4fbd5c, %function
A_4fbd5c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fbd9c
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        mov     r0, #0xc
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L4fbda0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fbd9c:
        .word   0x040d0082
L4fbda0:
        .word   0x008b877c
        .size   A_4fbd5c, . - A_4fbd5c

@ FUN_004fbda4
        .global A_4fbda4
        .type   A_4fbda4, %function
A_4fbda4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fbde4
        str     r2, [r4, #0x80]!
        mov     r2, #0xa
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fbde8
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fbde4:
        .word   0x04110042
L4fbde8:
        .word   0x008b877c
        .size   A_4fbda4, . - A_4fbda4

@ FUN_004fbdec
        .global A_4fbdec
        .type   A_4fbdec, %function
A_4fbdec:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4fbe54
        str     r5, [r4, #0x80]!
        add     r5, r4, #0xc
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        stm     r5, {r3, ip}
        orr     r0, r0, ip, lsl #4
        strd    r0, r1, [r4, #0x14]
        mov     r0, #0xe
        add     r5, r4, #0x1c
        orr     r0, r0, r3, lsl #4
        stm     r5, {r0, r2}
        ldr     r0, L4fbe58
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fbe54:
        .word   0x00060104
L4fbe58:
        .word   0x008b877c
        .size   A_4fbdec, . - A_4fbdec

@ FUN_004fbe5c
        .global A_4fbe5c
        .type   A_4fbe5c, %function
A_4fbe5c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fbe94
        str     r0, [r4, #0x80]!
        ldr     r0, L4fbe98
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fbe90
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fbe90:
        pop     {r4, r5, r6, pc}
L4fbe94:
        .word   0x040a0000
L4fbe98:
        .word   0x008b877c
        .size   A_4fbe5c, . - A_4fbe5c

@ FUN_004fbe9c
        .global A_4fbe9c
        .type   A_4fbe9c, %function
A_4fbe9c:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fbed8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L4fbedc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L4fbed8:
        .word   0x040e0080
L4fbedc:
        .word   0x008b877c
        .size   A_4fbe9c, . - A_4fbe9c

@ FUN_004fbee0
        .global A_4fbee0
        .type   A_4fbee0, %function
A_4fbee0:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fbf30
        str     r1, [r4, #0x80]!
        add     r1, r4, #0x10
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        orr     r0, r0, r3, lsl #4
        str     r3, [r4, #0xc]
        stm     r1, {r0, r2}
        ldr     r0, L4fbf34
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4fbf30:
        .word   0x041200c2
L4fbf34:
        .word   0x008b877c
        .size   A_4fbee0, . - A_4fbee0

@ FUN_004fbf38
        .global A_4fbf38
        .type   A_4fbf38, %function
A_4fbf38:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fbf6c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4fbf70
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4fbf6c:
        .word   0x04140040
L4fbf70:
        .word   0x008b877c
        .size   A_4fbf38, . - A_4fbf38

@ FUN_004fbf74
        .global A_4fbf74
        .type   A_4fbf74, %function
A_4fbf74:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fbfa8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L4fbfac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4fbfa8:
        .word   0x04010040
L4fbfac:
        .word   0x008b877c
        .size   A_4fbf74, . - A_4fbf74

@ FUN_004fbfb0
        .global A_4fbfb0
        .type   A_4fbfb0, %function
A_4fbfb0:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        mov     r5, r2
        ldm     r4, {r2, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4fc018
        str     r6, [r4, #0x80]!
        add     lr, r4, #0xc
        stm     lr, {r2, ip}
        mov     r2, #0x20
        add     lr, r4, #4
        str     r2, [r4, #0x14]
        stm     lr, {r1, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x20]
        ldr     r0, L4fc01c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc014
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc014:
        pop     {r4, r5, r6, pc}
L4fc018:
        .word   0x00120104
L4fc01c:
        .word   0x008b877c
        .size   A_4fbfb0, . - A_4fbfb0

@ FUN_004fc020
        .global A_4fc020
        .type   A_4fc020, %function
A_4fc020:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fc060
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        mov     r0, #0xc
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L4fc064
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fc060:
        .word   0x000d0082
L4fc064:
        .word   0x008b877c
        .size   A_4fc020, . - A_4fc020

@ FUN_004fc068
        .global A_4fc068
        .type   A_4fc068, %function
A_4fc068:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1f0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc0a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc09c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc09c:
        pop     {r4, r5, r6, pc}
L4fc0a0:
        .word   0x008b877c
        .size   A_4fc068, . - A_4fc068

@ FUN_004fc0a4
        .global A_4fc0a4
        .type   A_4fc0a4, %function
A_4fc0a4:
        push    {r4, r5, r6, lr}
        ldr     ip, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4fc0f4
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r2, r3, ip}
        mov     r2, #0x20
        str     r2, [r4, #0x14]
        str     r0, [r4, #0x20]
        ldr     r0, L4fc0f8
        mov     r2, #0xa
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x1c]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L4fc0f4:
        .word   0x00110104
L4fc0f8:
        .word   0x008b877c
        .size   A_4fc0a4, . - A_4fc0a4

@ FUN_004fc0fc
        .global A_4fc0fc
        .type   A_4fc0fc, %function
A_4fc0fc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc138
        add     r4, r4, #0x80
        stm     r4, {r0, r1, r2}
        ldr     r0, L4fc13c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc134
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc134:
        pop     {r4, r5, r6, pc}
L4fc138:
        .word   0x00210080
L4fc13c:
        .word   0x008b877c
        .size   A_4fc0fc, . - A_4fc0fc

@ FUN_004fc140
        .global A_4fc140
        .type   A_4fc140, %function
A_4fc140:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x200000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc178
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc174
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc174:
        pop     {r4, r5, r6, pc}
L4fc178:
        .word   0x008b877c
        .size   A_4fc140, . - A_4fc140

@ FUN_004fc210
        .global A_4fc210
        .type   A_4fc210, %function
A_4fc210:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc248
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc24c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc244
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc244:
        pop     {r4, r5, r6, pc}
L4fc248:
        .word   0x04170000
L4fc24c:
        .word   0x008b877c
        .size   A_4fc210, . - A_4fc210

@ FUN_004fc250
        .global A_4fc250
        .type   A_4fc250, %function
A_4fc250:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc27c
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc280
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fc27c:
        .word   0x040b0000
L4fc280:
        .word   0x008b877c
        .size   A_4fc250, . - A_4fc250

@ FUN_004fc284
        .global A_4fc284
        .type   A_4fc284, %function
A_4fc284:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x4100000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc2b0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fc2b0:
        .word   0x008b877c
        .size   A_4fc284, . - A_4fc284

@ FUN_004fc2b4
        .global A_4fc2b4
        .type   A_4fc2b4, %function
A_4fc2b4:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r1, r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L4fc328
        str     r6, [r4, #0x80]!
        add     r6, r4, #0xc
        str     r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        mov     r0, #0xa
        stm     r6, {r3, r5}
        orr     r0, r0, r5, lsl #4
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L4fc32c
        add     r6, r4, #0x1c
        stm     r6, {r0, ip}
        mov     r0, #0xe
        add     r6, r4, #0x24
        orr     r0, r0, r3, lsl #4
        stm     r6, {r0, r2}
        ldr     r0, L4fc330
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fc328:
        .word   0x00070106
L4fc32c:
        .word   0x0000020a
L4fc330:
        .word   0x008b877c
        .size   A_4fc2b4, . - A_4fc2b4

@ FUN_004fc334
        .global A_4fc334
        .type   A_4fc334, %function
A_4fc334:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc360
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc364
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fc360:
        .word   0x040f0000
L4fc364:
        .word   0x008b877c
        .size   A_4fc334, . - A_4fc334

@ FUN_004fc368
        .global A_4fc368
        .type   A_4fc368, %function
A_4fc368:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc394
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc398
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fc394:
        .word   0x04130000
L4fc398:
        .word   0x008b877c
        .size   A_4fc368, . - A_4fc368

@ FUN_004fc39c
        .global A_4fc39c
        .type   A_4fc39c, %function
A_4fc39c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xf0000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fc3d4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc3d0
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc3d0:
        pop     {r4, r5, r6, pc}
L4fc3d4:
        .word   0x008b877c
        .size   A_4fc39c, . - A_4fc39c

@ FUN_004fc3d8
        .global A_4fc3d8
        .type   A_4fc3d8, %function
A_4fc3d8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc418
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L4fc41c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc414
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc414:
        pop     {r4, r5, r6, pc}
L4fc418:
        .word   0x04020002
L4fc41c:
        .word   0x008b877c
        .size   A_4fc3d8, . - A_4fc3d8

@ FUN_004fc45c
        .global A_4fc45c
        .type   A_4fc45c, %function
A_4fc45c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fc4a0
        str     r1, [r4, #0x80]!
        ldr     r1, L4fc4a4
        str     r0, [r4, #8]
        ldr     r0, L4fc4a8
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc49c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc49c:
        pop     {r4, r5, r6, pc}
L4fc4a0:
        .word   0x04160002
L4fc4a4:
        .word   0x0001f40c
L4fc4a8:
        .word   0x008b877c
        .size   A_4fc45c, . - A_4fc45c

@ FUN_004fc4fc
        .global A_4fc4fc
        .type   A_4fc4fc, %function
A_4fc4fc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fc544
        add     r4, r4, #0x80
        stm     r4, {r0, r2}
        mov     r0, #0xc
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #8]
        ldr     r0, L4fc548
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fc540
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L4fc540:
        pop     {r4, r5, r6, pc}
L4fc544:
        .word   0x00020042
L4fc548:
        .word   0x008b877c
        .size   A_4fc4fc, . - A_4fc4fc

@ FUN_004fc5bc
        .global A_4fc5bc
        .type   A_4fc5bc, %function
A_4fc5bc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fc5fc
        str     r2, [r4, #0x80]!
        mov     r2, #0xa
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fc600
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fc5fc:
        .word   0x00050042
L4fc600:
        .word   0x008b877c
        .size   A_4fc5bc, . - A_4fc5bc

@ FUN_004fc604
        .global A_4fc604
        .type   A_4fc604, %function
A_4fc604:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r2, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4fc658
        str     ip, [r4, #0x80]!
        add     ip, r4, #0x14
        strd    r0, r1, [r4, #4]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        mov     r0, #0xa
        orr     r0, r0, r2, lsl #4
        str     r2, [r4, #0x10]
        stm     ip, {r0, r3}
        ldr     r0, L4fc65c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4fc658:
        .word   0x00080102
L4fc65c:
        .word   0x008b877c
        .size   A_4fc604, . - A_4fc604

@ FUN_004fc6a8
        .global A_4fc6a8
        .type   A_4fc6a8, %function
A_4fc6a8:
        push    {r4, r5, r6, lr}
        ldr     ip, [sp, #0x10]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L4fc6fc
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r2, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        strd    r2, r3, [r4, #0x10]
        str     r0, [r4, #0x1c]
        ldr     r0, L4fc700
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x18]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L4fc6fc:
        .word   0x000a00c4
L4fc700:
        .word   0x008b877c
        .size   A_4fc6a8, . - A_4fc6a8

@ FUN_004fd668
        .global A_4fd668
        .type   A_4fd668, %function
A_4fd668:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, [r0]
        cmp     r0, #0
        ldreq   r4, L4fd6a4
        beq     L4fd69c
        svc     #0x23
        mov     r4, r0
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        ldr     r0, L4fd6a8
        ldr     r0, [r0]
        str     r0, [r5]
L4fd69c:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L4fd6a4:
        .word   0xd8a103f7
L4fd6a8:
        .word   0x007eb680
        .size   A_4fd668, . - A_4fd668

@ FUN_004fd964
        .global A_4fd964
        .type   A_4fd964, %function
A_4fd964:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fd99c
        str     r0, [r4, #0x80]!
        ldr     r0, L4fd9a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fd998
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fd998:
        pop     {r4, r5, r6, pc}
L4fd99c:
        .word   0x04070000
L4fd9a0:
        .word   0x008bb62c
        .size   A_4fd964, . - A_4fd964

@ FUN_004fd9a4
        .global A_4fd9a4
        .type   A_4fd9a4, %function
A_4fd9a4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fd9dc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fd9d8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fd9d8:
        pop     {r4, r5, r6, pc}
L4fd9dc:
        .word   0x008bb62c
        .size   A_4fd9a4, . - A_4fd9a4

@ FUN_004fd9e0
        .global A_4fd9e0
        .type   A_4fd9e0, %function
A_4fd9e0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fda24
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r1, r2}
        mov     r2, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fda28
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fda24:
        .word   0x04010082
L4fda28:
        .word   0x008bb62c
        .size   A_4fd9e0, . - A_4fd9e0

@ FUN_004fda2c
        .global A_4fda2c
        .type   A_4fda2c, %function
A_4fda2c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fda64
        str     r0, [r4, #0x80]!
        ldr     r0, L4fda68
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fda60
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fda60:
        pop     {r4, r5, r6, pc}
L4fda64:
        .word   0x04060000
L4fda68:
        .word   0x008bb62c
        .size   A_4fda2c, . - A_4fda2c

@ FUN_004fda6c
        .global A_4fda6c
        .type   A_4fda6c, %function
A_4fda6c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fdaac
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        mov     r0, #0xa
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L4fdab0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdaac:
        .word   0x04020082
L4fdab0:
        .word   0x008bb62c
        .size   A_4fda6c, . - A_4fda6c

@ FUN_004fdab4
        .global A_4fdab4
        .type   A_4fdab4, %function
A_4fdab4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdae0
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdae4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdae0:
        .word   0x04030000
L4fdae4:
        .word   0x008bb62c
        .size   A_4fdab4, . - A_4fdab4

@ FUN_004fdae8
        .global A_4fdae8
        .type   A_4fdae8, %function
A_4fdae8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fdb28
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fdb2c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdb28:
        .word   0x04080042
L4fdb2c:
        .word   0x008bb62c
        .size   A_4fdae8, . - A_4fdae8

@ FUN_004fdb30
        .global A_4fdb30
        .type   A_4fdb30, %function
A_4fdb30:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fdb6c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L4fdb70
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fdb68
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fdb68:
        pop     {r4, r5, r6, pc}
L4fdb6c:
        .word   0x00030040
L4fdb70:
        .word   0x008bb62c
        .size   A_4fdb30, . - A_4fdb30

@ FUN_004fdb74
        .global A_4fdb74
        .type   A_4fdb74, %function
A_4fdb74:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdbac
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fdba8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fdba8:
        pop     {r4, r5, r6, pc}
L4fdbac:
        .word   0x008bb62c
        .size   A_4fdb74, . - A_4fdb74

@ FUN_004fdbb0
        .global A_4fdbb0
        .type   A_4fdbb0, %function
A_4fdbb0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdbe8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fdbe4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fdbe4:
        pop     {r4, r5, r6, pc}
L4fdbe8:
        .word   0x008bb62c
        .size   A_4fdbb0, . - A_4fdbb0

@ FUN_004fdbec
        .global A_4fdbec
        .type   A_4fdbec, %function
A_4fdbec:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdc18
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdc1c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdc18:
        .word   0x040a0000
L4fdc1c:
        .word   0x008bb62c
        .size   A_4fdbec, . - A_4fdbec

@ FUN_004fdc20
        .global A_4fdc20
        .type   A_4fdc20, %function
A_4fdc20:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdc58
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdc5c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fdc54
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fdc54:
        pop     {r4, r5, r6, pc}
L4fdc58:
        .word   0x04050000
L4fdc5c:
        .word   0x008bb62c
        .size   A_4fdc20, . - A_4fdc20

@ FUN_004fdc60
        .global A_4fdc60
        .type   A_4fdc60, %function
A_4fdc60:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdc8c
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdc90
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdc8c:
        .word   0x040b0000
L4fdc90:
        .word   0x008bb62c
        .size   A_4fdc60, . - A_4fdc60

@ FUN_004fdc94
        .global A_4fdc94
        .type   A_4fdc94, %function
A_4fdc94:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdcc0
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdcc4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdcc0:
        .word   0x040c0000
L4fdcc4:
        .word   0x008bb62c
        .size   A_4fdc94, . - A_4fdc94

@ FUN_004fdcc8
        .global A_4fdcc8
        .type   A_4fdcc8, %function
A_4fdcc8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdcf4
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdcf8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdcf4:
        .word   0x04090000
L4fdcf8:
        .word   0x008bb62c
        .size   A_4fdcc8, . - A_4fdcc8

@ FUN_004fdcfc
        .global A_4fdcfc
        .type   A_4fdcfc, %function
A_4fdcfc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fdd3c
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fdd40
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdd3c:
        .word   0x04040042
L4fdd40:
        .word   0x008bb62c
        .size   A_4fdcfc, . - A_4fdcfc

@ FUN_004fdd44
        .global A_4fdd44
        .type   A_4fdd44, %function
A_4fdd44:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fdd88
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r1, r2}
        mov     r2, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fdd8c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdd88:
        .word   0x00010082
L4fdd8c:
        .word   0x008bb62c
        .size   A_4fdd44, . - A_4fdd44

@ FUN_004fdd90
        .global A_4fdd90
        .type   A_4fdd90, %function
A_4fdd90:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fddc8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fddc4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fddc4:
        pop     {r4, r5, r6, pc}
L4fddc8:
        .word   0x008bb62c
        .size   A_4fdd90, . - A_4fdd90

@ FUN_004fddcc
        .global A_4fddcc
        .type   A_4fddcc, %function
A_4fddcc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fddf8
        str     r0, [r4, #0x80]!
        ldr     r0, L4fddfc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fddf8:
        .word   0x08070000
L4fddfc:
        .word   0x008bb628
        .size   A_4fddcc, . - A_4fddcc

@ FUN_004fde00
        .global A_4fde00
        .type   A_4fde00, %function
A_4fde00:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fde38
        str     r0, [r4, #0x80]!
        ldr     r0, L4fde3c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fde34
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fde34:
        pop     {r4, r5, r6, pc}
L4fde38:
        .word   0x04070000
L4fde3c:
        .word   0x008bb628
        .size   A_4fde00, . - A_4fde00

@ FUN_004fde40
        .global A_4fde40
        .type   A_4fde40, %function
A_4fde40:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fde78
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fde74
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fde74:
        pop     {r4, r5, r6, pc}
L4fde78:
        .word   0x008bb628
        .size   A_4fde40, . - A_4fde40

@ FUN_004fde7c
        .global A_4fde7c
        .type   A_4fde7c, %function
A_4fde7c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fdec0
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r1, r2}
        mov     r2, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fdec4
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdec0:
        .word   0x04010082
L4fdec4:
        .word   0x008bb628
        .size   A_4fde7c, . - A_4fde7c

@ FUN_004fdec8
        .global A_4fdec8
        .type   A_4fdec8, %function
A_4fdec8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdf00
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdf04
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fdefc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fdefc:
        pop     {r4, r5, r6, pc}
L4fdf00:
        .word   0x08170000
L4fdf04:
        .word   0x008bb628
        .size   A_4fdec8, . - A_4fdec8

@ FUN_004fdf08
        .global A_4fdf08
        .type   A_4fdf08, %function
A_4fdf08:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fdf40
        str     r0, [r4, #0x80]!
        ldr     r0, L4fdf44
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fdf3c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fdf3c:
        pop     {r4, r5, r6, pc}
L4fdf40:
        .word   0x04060000
L4fdf44:
        .word   0x008bb628
        .size   A_4fdf08, . - A_4fdf08

@ FUN_004fdf48
        .global A_4fdf48
        .type   A_4fdf48, %function
A_4fdf48:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fdf88
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        mov     r0, #0xa
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L4fdf8c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdf88:
        .word   0x04020082
L4fdf8c:
        .word   0x008bb628
        .size   A_4fdf48, . - A_4fdf48

@ FUN_004fdf90
        .global A_4fdf90
        .type   A_4fdf90, %function
A_4fdf90:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fdfd4
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r1, r2}
        mov     r2, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fdfd8
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fdfd4:
        .word   0x08010082
L4fdfd8:
        .word   0x008bb628
        .size   A_4fdf90, . - A_4fdf90

@ FUN_004fdfdc
        .global A_4fdfdc
        .type   A_4fdfdc, %function
A_4fdfdc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe014
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe018
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe010
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fe010:
        pop     {r4, r5, r6, pc}
L4fe014:
        .word   0x08160000
L4fe018:
        .word   0x008bb628
        .size   A_4fdfdc, . - A_4fdfdc

@ FUN_004fe01c
        .global A_4fe01c
        .type   A_4fe01c, %function
A_4fe01c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fe05c
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        mov     r0, #0xa
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L4fe060
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe05c:
        .word   0x08020082
L4fe060:
        .word   0x008bb628
        .size   A_4fe01c, . - A_4fe01c

@ FUN_004fe064
        .global A_4fe064
        .type   A_4fe064, %function
A_4fe064:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe090
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe094
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe090:
        .word   0x04030000
L4fe094:
        .word   0x008bb628
        .size   A_4fe064, . - A_4fe064

@ FUN_004fe098
        .global A_4fe098
        .type   A_4fe098, %function
A_4fe098:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe0d8
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe0dc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe0d8:
        .word   0x04080042
L4fe0dc:
        .word   0x008bb628
        .size   A_4fe098, . - A_4fe098

@ FUN_004fe0e0
        .global A_4fe0e0
        .type   A_4fe0e0, %function
A_4fe0e0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fe11c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L4fe120
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe118
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fe118:
        pop     {r4, r5, r6, pc}
L4fe11c:
        .word   0x00030040
L4fe120:
        .word   0x008bb628
        .size   A_4fe0e0, . - A_4fe0e0

@ FUN_004fe124
        .global A_4fe124
        .type   A_4fe124, %function
A_4fe124:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe150
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe154
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe150:
        .word   0x08030000
L4fe154:
        .word   0x008bb628
        .size   A_4fe124, . - A_4fe124

@ FUN_004fe158
        .global A_4fe158
        .type   A_4fe158, %function
A_4fe158:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe198
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe19c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe198:
        .word   0x08180042
L4fe19c:
        .word   0x008bb628
        .size   A_4fe158, . - A_4fe158

@ FUN_004fe1a0
        .global A_4fe1a0
        .type   A_4fe1a0, %function
A_4fe1a0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe1d8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe1d4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fe1d4:
        pop     {r4, r5, r6, pc}
L4fe1d8:
        .word   0x008bb628
        .size   A_4fe1a0, . - A_4fe1a0

@ FUN_004fe1dc
        .global A_4fe1dc
        .type   A_4fe1dc, %function
A_4fe1dc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe214
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe210
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fe210:
        pop     {r4, r5, r6, pc}
L4fe214:
        .word   0x008bb628
        .size   A_4fe1dc, . - A_4fe1dc

@ FUN_004fe218
        .global A_4fe218
        .type   A_4fe218, %function
A_4fe218:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fe264
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2}
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0xc]
        mov     r0, #0xa
        orr     r0, r0, r2, lsl #4
        strd    r0, r1, [r4, #0x10]
        ldr     r0, L4fe268
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L4fe264:
        .word   0x080400c2
L4fe268:
        .word   0x008bb628
        .size   A_4fe218, . - A_4fe218

@ FUN_004fe26c
        .global A_4fe26c
        .type   A_4fe26c, %function
A_4fe26c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe298
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe29c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe298:
        .word   0x08060000
L4fe29c:
        .word   0x008bb628
        .size   A_4fe26c, . - A_4fe26c

@ FUN_004fe2a0
        .global A_4fe2a0
        .type   A_4fe2a0, %function
A_4fe2a0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L4fe2f0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        mov     ip, #0xa
        stm     lr, {r1, r3}
        orr     r1, ip, r1, lsl #4
        str     r0, [r4, #0x10]
        orr     r0, ip, r3, lsl #4
        add     ip, r4, #0x14
        str     r1, [r4, #0xc]
        stm     ip, {r0, r2}
        ldr     r0, L4fe2f4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe2f0:
        .word   0x08110084
L4fe2f4:
        .word   0x008bb628
        .size   A_4fe2a0, . - A_4fe2a0

@ FUN_004fe2f8
        .global A_4fe2f8
        .type   A_4fe2f8, %function
A_4fe2f8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe324
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe328
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe324:
        .word   0x08050000
L4fe328:
        .word   0x008bb628
        .size   A_4fe2f8, . - A_4fe2f8

@ FUN_004fe32c
        .global A_4fe32c
        .type   A_4fe32c, %function
A_4fe32c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe358
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe35c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe358:
        .word   0x08080000
L4fe35c:
        .word   0x008bb628
        .size   A_4fe32c, . - A_4fe32c

@ FUN_004fe360
        .global A_4fe360
        .type   A_4fe360, %function
A_4fe360:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe38c
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe390
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe38c:
        .word   0x040a0000
L4fe390:
        .word   0x008bb628
        .size   A_4fe360, . - A_4fe360

@ FUN_004fe394
        .global A_4fe394
        .type   A_4fe394, %function
A_4fe394:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe3c0
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe3c4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe3c0:
        .word   0x08120000
L4fe3c4:
        .word   0x008bb628
        .size   A_4fe394, . - A_4fe394

@ FUN_004fe3c8
        .global A_4fe3c8
        .type   A_4fe3c8, %function
A_4fe3c8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe3f4
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe3f8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe3f4:
        .word   0x08190000
L4fe3f8:
        .word   0x008bb628
        .size   A_4fe3c8, . - A_4fe3c8

@ FUN_004fe3fc
        .global A_4fe3fc
        .type   A_4fe3fc, %function
A_4fe3fc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe43c
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe440
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe43c:
        .word   0x08140042
L4fe440:
        .word   0x008bb628
        .size   A_4fe3fc, . - A_4fe3fc

@ FUN_004fe444
        .global A_4fe444
        .type   A_4fe444, %function
A_4fe444:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe470
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe474
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe470:
        .word   0x08130000
L4fe474:
        .word   0x008bb628
        .size   A_4fe444, . - A_4fe444

@ FUN_004fe478
        .global A_4fe478
        .type   A_4fe478, %function
A_4fe478:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe4b8
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe4bc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe4b8:
        .word   0x081a0042
L4fe4bc:
        .word   0x008bb628
        .size   A_4fe478, . - A_4fe478

@ FUN_004fe4c0
        .global A_4fe4c0
        .type   A_4fe4c0, %function
A_4fe4c0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe4f8
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe4fc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe4f4
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fe4f4:
        pop     {r4, r5, r6, pc}
L4fe4f8:
        .word   0x04050000
L4fe4fc:
        .word   0x008bb628
        .size   A_4fe4c0, . - A_4fe4c0

@ FUN_004fe500
        .global A_4fe500
        .type   A_4fe500, %function
A_4fe500:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe52c
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe530
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe52c:
        .word   0x040b0000
L4fe530:
        .word   0x008bb628
        .size   A_4fe500, . - A_4fe500

@ FUN_004fe534
        .global A_4fe534
        .type   A_4fe534, %function
A_4fe534:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x8100000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe56c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe568
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fe568:
        pop     {r4, r5, r6, pc}
L4fe56c:
        .word   0x008bb628
        .size   A_4fe534, . - A_4fe534

@ FUN_004fe570
        .global A_4fe570
        .type   A_4fe570, %function
A_4fe570:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe5b0
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe5b4
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe5b0:
        .word   0x08150042
L4fe5b4:
        .word   0x008bb628
        .size   A_4fe570, . - A_4fe570

@ FUN_004fe5b8
        .global A_4fe5b8
        .type   A_4fe5b8, %function
A_4fe5b8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe5e4
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe5e8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe5e4:
        .word   0x08090000
L4fe5e8:
        .word   0x008bb628
        .size   A_4fe5b8, . - A_4fe5b8

@ FUN_004fe5ec
        .global A_4fe5ec
        .type   A_4fe5ec, %function
A_4fe5ec:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe618
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe61c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe618:
        .word   0x081c0000
L4fe61c:
        .word   0x008bb628
        .size   A_4fe5ec, . - A_4fe5ec

@ FUN_004fe620
        .global A_4fe620
        .type   A_4fe620, %function
A_4fe620:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe64c
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe650
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe64c:
        .word   0x080d0000
L4fe650:
        .word   0x008bb628
        .size   A_4fe620, . - A_4fe620

@ FUN_004fe654
        .global A_4fe654
        .type   A_4fe654, %function
A_4fe654:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe694
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe698
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe694:
        .word   0x081b0042
L4fe698:
        .word   0x008bb628
        .size   A_4fe654, . - A_4fe654

@ FUN_004fe69c
        .global A_4fe69c
        .type   A_4fe69c, %function
A_4fe69c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe6c8
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe6cc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe6c8:
        .word   0x040c0000
L4fe6cc:
        .word   0x008bb628
        .size   A_4fe69c, . - A_4fe69c

@ FUN_004fe6d0
        .global A_4fe6d0
        .type   A_4fe6d0, %function
A_4fe6d0:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe71c
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #8]
        str     r0, [r4, #0x10]
        ldr     r0, L4fe720
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4fe71c:
        .word   0x080b0082
L4fe720:
        .word   0x008bb628
        .size   A_4fe6d0, . - A_4fe6d0

@ FUN_004fe724
        .global A_4fe724
        .type   A_4fe724, %function
A_4fe724:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe750
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe754
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe750:
        .word   0x080a0000
L4fe754:
        .word   0x008bb628
        .size   A_4fe724, . - A_4fe724

@ FUN_004fe758
        .global A_4fe758
        .type   A_4fe758, %function
A_4fe758:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe784
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe788
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe784:
        .word   0x080e0000
L4fe788:
        .word   0x008bb628
        .size   A_4fe758, . - A_4fe758

@ FUN_004fe78c
        .global A_4fe78c
        .type   A_4fe78c, %function
A_4fe78c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L4fe7b8
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe7bc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe7b8:
        .word   0x04090000
L4fe7bc:
        .word   0x008bb628
        .size   A_4fe78c, . - A_4fe78c

@ FUN_004fe7c0
        .global A_4fe7c0
        .type   A_4fe7c0, %function
A_4fe7c0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe800
        str     r2, [r4, #0x80]!
        mov     r2, #0xa
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe804
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe800:
        .word   0x080c0042
L4fe804:
        .word   0x008bb628
        .size   A_4fe7c0, . - A_4fe7c0

@ FUN_004fe808
        .global A_4fe808
        .type   A_4fe808, %function
A_4fe808:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe848
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe84c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe848:
        .word   0x04040042
L4fe84c:
        .word   0x008bb628
        .size   A_4fe808, . - A_4fe808

@ FUN_004fe850
        .global A_4fe850
        .type   A_4fe850, %function
A_4fe850:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L4fe890
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L4fe894
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe890:
        .word   0x080f0042
L4fe894:
        .word   0x008bb628
        .size   A_4fe850, . - A_4fe850

@ FUN_004fe898
        .global A_4fe898
        .type   A_4fe898, %function
A_4fe898:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L4fe8dc
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r1, r2}
        mov     r2, #0xc
        str     r0, [r4, #0x10]
        ldr     r0, L4fe8e0
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L4fe8dc:
        .word   0x00010082
L4fe8e0:
        .word   0x008bb628
        .size   A_4fe898, . - A_4fe898

@ FUN_004fe8e4
        .global A_4fe8e4
        .type   A_4fe8e4, %function
A_4fe8e4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe91c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe918
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fe918:
        pop     {r4, r5, r6, pc}
L4fe91c:
        .word   0x008bb628
        .size   A_4fe8e4, . - A_4fe8e4

@ FUN_004fe920
        .global A_4fe920
        .type   A_4fe920, %function
A_4fe920:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe958
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe954
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fe954:
        pop     {r4, r5, r6, pc}
L4fe958:
        .word   0x008b878c
        .size   A_4fe920, . - A_4fe920

@ FUN_004fe95c
        .global A_4fe95c
        .type   A_4fe95c, %function
A_4fe95c:
        mov     r0, r0
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L4fe99c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L4fe9a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe998
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L4fe998:
        pop     {r4, r5, r6, pc}
L4fe99c:
        .word   0x00030040
L4fe9a0:
        .word   0x008b878c
        .size   A_4fe95c, . - A_4fe95c

@ FUN_004fe9a4
        .global A_4fe9a4
        .type   A_4fe9a4, %function
A_4fe9a4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fe9dc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fe9d8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fe9d8:
        pop     {r4, r5, r6, pc}
L4fe9dc:
        .word   0x008b878c
        .size   A_4fe9a4, . - A_4fe9a4

@ FUN_004fe9e0
        .global A_4fe9e0
        .type   A_4fe9e0, %function
A_4fe9e0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fea18
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fea14
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fea14:
        pop     {r4, r5, r6, pc}
L4fea18:
        .word   0x008b878c
        .size   A_4fe9e0, . - A_4fe9e0

@ FUN_004fea1c
        .global A_4fea1c
        .type   A_4fea1c, %function
A_4fea1c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L4fea54
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L4fea50
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L4fea50:
        pop     {r4, r5, r6, pc}
L4fea54:
        .word   0x008b878c
        .size   A_4fea1c, . - A_4fea1c

@ FUN_00501018
        .global A_501018
        .type   A_501018, %function
A_501018:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x80000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L501048
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L501048:
        pop     {r4, r5, r6, pc}
        .size   A_501018, . - A_501018

@ FUN_00501084
        .global A_501084
        .type   A_501084, %function
A_501084:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5010b8
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L5010b8:
        .word   0x000a0040
        .size   A_501084, . - A_501084

@ FUN_005010bc
        .global A_5010bc
        .type   A_5010bc, %function
A_5010bc:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5010f0
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L5010f0:
        .word   0x00090040
        .size   A_5010bc, . - A_5010bc

@ FUN_005011c0
        .global A_5011c0
        .type   A_5011c0, %function
A_5011c0:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L501200
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5011f8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5011f8:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L501200:
        .word   0x00040040
        .size   A_5011c0, . - A_5011c0

@ FUN_00501204
        .global A_501204
        .type   A_501204, %function
A_501204:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x210000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L501234
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L501234:
        pop     {r4, r5, r6, pc}
        .size   A_501204, . - A_501204

@ FUN_00501238
        .global A_501238
        .type   A_501238, %function
A_501238:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L501274
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L501274:
        .word   0x001a0042
        .size   A_501238, . - A_501238

@ FUN_00501278
        .global A_501278
        .type   A_501278, %function
A_501278:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L5012b4
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5012b4:
        .word   0x001b0042
        .size   A_501278, . - A_501278

@ FUN_00501338
        .global A_501338
        .type   A_501338, %function
A_501338:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L501370
        add     r4, r4, #0x80
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50136c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50136c:
        pop     {r4, r5, r6, pc}
L501370:
        .word   0x00190040
        .size   A_501338, . - A_501338

@ FUN_00501374
        .global A_501374
        .type   A_501374, %function
A_501374:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x1f0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5013a4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5013a4:
        pop     {r4, r5, r6, pc}
        .size   A_501374, . - A_501374

@ FUN_005013a8
        .global A_5013a8
        .type   A_5013a8, %function
A_5013a8:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5013e0
        add     r4, r4, #0x80
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5013dc
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L5013dc:
        pop     {r4, r5, r6, pc}
L5013e0:
        .word   0x00180040
        .size   A_5013a8, . - A_5013a8

@ FUN_005013e4
        .global A_5013e4
        .type   A_5013e4, %function
A_5013e4:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r7, [sp, #0x1c]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L501448
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r2}
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0xc]
        mrc     p15, #0, r2, c13, c0, #3
        add     r5, r2, #0x180
        orr     r1, ip, r1, lsl #14
        ldm     r5, {r6, r8}
        orr     r1, r1, #2
        stm     r5, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r6, r8}
        ands    r1, r0, #0x80000000
        bmi     L501444
        ldrh    r0, [r4, #8]
        strh    r0, [r7]
        ldr     r0, [r4, #4]
L501444:
        pop     {r4, r5, r6, r7, r8, pc}
L501448:
        .word   0x001000c0
        .size   A_5013e4, . - A_5013e4

@ FUN_0050144c
        .global A_50144c
        .type   A_50144c, %function
A_50144c:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L501484
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        str     r1, [r4, #0x10]
        stm     r6, {r2, r3, ip}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L501484:
        .word   0x00140082
        .size   A_50144c, . - A_50144c

@ FUN_00501488
        .global A_501488
        .type   A_501488, %function
A_501488:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xb0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5014b8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5014b8:
        pop     {r4, r5, r6, pc}
        .size   A_501488, . - A_501488

@ FUN_005014f0
        .global A_5014f0
        .type   A_5014f0, %function
A_5014f0:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L501528
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        str     r1, [r4, #0x10]
        stm     r6, {r2, r3, ip}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L501528:
        .word   0x00150082
        .size   A_5014f0, . - A_5014f0

@ FUN_0050152c
        .global A_50152c
        .type   A_50152c, %function
A_50152c:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L501564
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L501560
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L501560:
        pop     {r4, r5, r6, pc}
L501564:
        .word   0x000c0040
        .size   A_50152c, . - A_50152c

@ FUN_005015ac
        .global A_5015ac
        .type   A_5015ac, %function
A_5015ac:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5015e8
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldrh    r1, [sp, #8]
        strh    r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L5015e8:
        .word   0x00030080
        .size   A_5015ac, . - A_5015ac

@ FUN_00501998
        .global A_501998
        .type   A_501998, %function
A_501998:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L5019d8
        mov     r3, #0
        str     ip, [r4, #0x80]!
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #14
        orr     r2, r2, #2
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5019d8:
        .word   0x00020042
        .size   A_501998, . - A_501998

@ FUN_00502da0
        .global A_502da0
        .type   A_502da0, %function
A_502da0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x170000
        str     r0, [r4, #0x80]!
        ldr     r0, L502dd8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L502dd4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L502dd4:
        pop     {r4, r5, r6, pc}
L502dd8:
        .word   0x008b7d20
        .size   A_502da0, . - A_502da0

@ FUN_00502ddc
        .global A_502ddc
        .type   A_502ddc, %function
A_502ddc:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L502e10
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L502e14
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L502e10:
        .word   0x000c0040
L502e14:
        .word   0x008b7d20
        .size   A_502ddc, . - A_502ddc

@ FUN_00502e18
        .global A_502e18
        .type   A_502e18, %function
A_502e18:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L502e88
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldrh    r0, [sp, #0x18]
        strh    r0, [r4, #0x14]
        ldrh    r0, [sp, #0x1c]
        strh    r0, [r4, #0x18]
        ldrh    r0, [sp, #0x20]
        strh    r0, [r4, #0x1c]
        ldrh    r0, [sp, #0x24]
        strh    r0, [r4, #0x20]
        ldr     r0, L502e8c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L502e88:
        .word   0x00010200
L502e8c:
        .word   0x008b7d20
        .size   A_502e18, . - A_502e18

@ FUN_00502e90
        .global A_502e90
        .type   A_502e90, %function
A_502e90:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L502ebc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L502ebc:
        .word   0x008b7d20
        .size   A_502e90, . - A_502e90

@ FUN_00502ec0
        .global A_502ec0
        .type   A_502ec0, %function
A_502ec0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L502f0c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L502f08
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3, ip}
        ldrd    r6, r7, [r0, #0x10]
        ldr     r0, [r4, #0x20]
        str     r0, [r5, #0x18]
        stm     r5, {r1, r2, r3, ip}
        strd    r6, r7, [r5, #0x10]
        ldr     r0, [r4, #4]
L502f08:
        pop     {r4, r5, r6, r7, r8, pc}
L502f0c:
        .word   0x008b7d20
        .size   A_502ec0, . - A_502ec0

@ FUN_00502f10
        .global A_502f10
        .type   A_502f10, %function
A_502f10:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x100000
        str     r0, [r4, #0x80]!
        ldr     r0, L502f60
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L502f5c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldrh    r0, [r4, #0xc]
        strh    r0, [r6]
        ldrh    r0, [r4, #0x10]
        strh    r0, [r7]
        ldr     r0, [r4, #4]
L502f5c:
        pop     {r4, r5, r6, r7, r8, pc}
L502f60:
        .word   0x008b7d20
        .size   A_502f10, . - A_502f10

@ FUN_00502f64
        .global A_502f64
        .type   A_502f64, %function
A_502f64:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L502fb4
        add     r5, r0, #0x10
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3, ip}
        add     lr, r4, #4
        ldr     r0, [r0, #0x18]
        ldm     r5, {r5, r6}
        str     r0, [r4, #0x1c]
        stm     lr, {r1, r2, r3, ip}
        add     r1, r4, #0x14
        ldr     r0, L502fb8
        stm     r1, {r5, r6}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L502fb4:
        .word   0x000d01c0
L502fb8:
        .word   0x008b7d20
        .size   A_502f64, . - A_502f64

@ FUN_00502fbc
        .global A_502fbc
        .type   A_502fbc, %function
A_502fbc:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503004
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldr     r0, L503008
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L503004:
        .word   0x000f00c0
L503008:
        .word   0x008b7d20
        .size   A_502fbc, . - A_502fbc

@ FUN_0050300c
        .global A_50300c
        .type   A_50300c, %function
A_50300c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L503038
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503038:
        .word   0x008b7d20
        .size   A_50300c, . - A_50300c

@ FUN_0050303c
        .global A_50303c
        .type   A_50303c, %function
A_50303c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L503068
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503068:
        .word   0x008b7d20
        .size   A_50303c, . - A_50303c

@ FUN_0050306c
        .global A_50306c
        .type   A_50306c, %function
A_50306c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5030c0
        str     r1, [r4, #0x80]!
        ldr     r1, [r0]
        str     r1, [r4, #4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #8]
        ldr     r1, [r0, #8]
        str     r1, [r4, #0xc]
        ldr     r1, [r0, #0xc]
        str     r1, [r4, #0x10]
        ldrh    r0, [r0, #0x10]
        strh    r0, [r4, #0x14]
        ldr     r0, L5030c4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5030c0:
        .word   0x00070140
L5030c4:
        .word   0x008b7d20
        .size   A_50306c, . - A_50306c

@ FUN_005030c8
        .global A_5030c8
        .type   A_5030c8, %function
A_5030c8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50310c
        str     r1, [r4, #0x80]!
        ldr     r1, [r0]
        str     r1, [r4, #4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #8]
        ldr     r0, [r0, #8]
        str     r0, [r4, #0xc]
        ldr     r0, L503110
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50310c:
        .word   0x000400c0
L503110:
        .word   0x008b7d20
        .size   A_5030c8, . - A_5030c8

@ FUN_00503114
        .global A_503114
        .type   A_503114, %function
A_503114:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L503140
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503140:
        .word   0x008b7d20
        .size   A_503114, . - A_503114

@ FUN_00503144
        .global A_503144
        .type   A_503144, %function
A_503144:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L503170
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503170:
        .word   0x008b7d20
        .size   A_503144, . - A_503144

@ FUN_00503174
        .global A_503174
        .type   A_503174, %function
A_503174:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L5031a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5031a0:
        .word   0x008b7d20
        .size   A_503174, . - A_503174

@ FUN_005031a4
        .global A_5031a4
        .type   A_5031a4, %function
A_5031a4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L5031d0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5031d0:
        .word   0x008b7d20
        .size   A_5031a4, . - A_5031a4

@ FUN_00503b40
        .global A_503b40
        .type   A_503b40, %function
A_503b40:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L503b6c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503b6c:
        .word   0x008b7d48
        .size   A_503b40, . - A_503b40

@ FUN_00503b70
        .global A_503b70
        .type   A_503b70, %function
A_503b70:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L503ba8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L503ba4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L503ba4:
        pop     {r4, r5, r6, pc}
L503ba8:
        .word   0x008b7d48
        .size   A_503b70, . - A_503b70

@ FUN_00503bb0
        .global A_503bb0
        .type   A_503bb0, %function
A_503bb0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L503be8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L503be4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L503be4:
        pop     {r4, r5, r6, pc}
L503be8:
        .word   0x008b7d48
        .size   A_503bb0, . - A_503bb0

@ FUN_00503bec
        .global A_503bec
        .type   A_503bec, %function
A_503bec:
        mov     r0, r0
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503c24
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L503c28
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L503c24:
        .word   0x000a0040
L503c28:
        .word   0x008b7d48
        .size   A_503bec, . - A_503bec

@ FUN_00503c30
        .global A_503c30
        .type   A_503c30, %function
A_503c30:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L503c5c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503c5c:
        .word   0x008b7d48
        .size   A_503c30, . - A_503c30

@ FUN_00503c60
        .global A_503c60
        .type   A_503c60, %function
A_503c60:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503cac
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        strd    r2, r3, [r4, #0xc]
        ldrb    r0, [sp, #0x18]
        strb    r0, [r4, #0x14]
        ldr     r0, L503cb0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L503cac:
        .word   0x00030140
L503cb0:
        .word   0x008b7d48
        .size   A_503c60, . - A_503c60

@ FUN_00503cb4
        .global A_503cb4
        .type   A_503cb4, %function
A_503cb4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503ce8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L503cec
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L503ce8:
        .word   0x00040040
L503cec:
        .word   0x008b7d48
        .size   A_503cb4, . - A_503cb4

@ FUN_00503cf0
        .global A_503cf0
        .type   A_503cf0, %function
A_503cf0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L503d2c
        mov     r2, #0
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        str     r0, [r4, #0xc]
        ldr     r0, L503d30
        stm     ip, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503d2c:
        .word   0x00010042
L503d30:
        .word   0x008b7d48
        .size   A_503cf0, . - A_503cf0

@ FUN_00503d34
        .global A_503d34
        .type   A_503d34, %function
A_503d34:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L503d74
        str     r2, [r4, #0x80]!
        mov     r2, #0xa
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L503d78
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503d74:
        .word   0x000c0042
L503d78:
        .word   0x008b7d48
        .size   A_503d34, . - A_503d34

@ FUN_00503d7c
        .global A_503d7c
        .type   A_503d7c, %function
A_503d7c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503db0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L503db4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L503db0:
        .word   0x000f0040
L503db4:
        .word   0x008b7d48
        .size   A_503d7c, . - A_503d7c

@ FUN_00503db8
        .global A_503db8
        .type   A_503db8, %function
A_503db8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L503df0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L503dec
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L503dec:
        pop     {r4, r5, r6, pc}
L503df0:
        .word   0x008b7d48
        .size   A_503db8, . - A_503db8

@ FUN_00503df4
        .global A_503df4
        .type   A_503df4, %function
A_503df4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L503e24
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L503e28
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L503e24:
        .word   0x00100040
L503e28:
        .word   0x008b7d48
        .size   A_503df4, . - A_503df4

@ FUN_00503e2c
        .global A_503e2c
        .type   A_503e2c, %function
A_503e2c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L503e64
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L503e60
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L503e60:
        pop     {r4, r5, r6, pc}
L503e64:
        .word   0x008b7d48
        .size   A_503e2c, . - A_503e2c

@ FUN_00503e68
        .global A_503e68
        .type   A_503e68, %function
A_503e68:
        mov     r0, r0
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503ea0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L503ea4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L503ea0:
        .word   0x00080040
L503ea4:
        .word   0x008b7d48
        .size   A_503e68, . - A_503e68

@ FUN_00503ea8
        .global A_503ea8
        .type   A_503ea8, %function
A_503ea8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L503ee0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L503edc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L503edc:
        pop     {r4, r5, r6, pc}
L503ee0:
        .word   0x008b7d48
        .size   A_503ea8, . - A_503ea8

@ FUN_00503ee4
        .global A_503ee4
        .type   A_503ee4, %function
A_503ee4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L503f18
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L503f1c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L503f18:
        .word   0x000d0040
L503f1c:
        .word   0x008b7d48
        .size   A_503ee4, . - A_503ee4

@ FUN_0050404c
        .global A_50404c
        .type   A_50404c, %function
A_50404c:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L504090
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L504094
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L504088
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L504088:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L504090:
        .word   0x000d0040
L504094:
        .word   0x008b8818
        .size   A_50404c, . - A_50404c

@ FUN_00504098
        .global A_504098
        .type   A_504098, %function
A_504098:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5040cc
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L5040d0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5040cc:
        .word   0x00050002
L5040d0:
        .word   0x008b8818
        .size   A_504098, . - A_504098

@ FUN_0050410c
        .global A_50410c
        .type   A_50410c, %function
A_50410c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L504144
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L504140
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L504140:
        pop     {r4, r5, r6, pc}
L504144:
        .word   0x008b8818
        .size   A_50410c, . - A_50410c

@ FUN_00504148
        .global A_504148
        .type   A_504148, %function
A_504148:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xa0000
        str     r0, [r4, #0x80]!
        ldr     r0, L504180
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50417c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50417c:
        pop     {r4, r5, r6, pc}
L504180:
        .word   0x008b8818
        .size   A_504148, . - A_504148

@ FUN_00504184
        .global A_504184
        .type   A_504184, %function
A_504184:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x110000
        str     r0, [r4, #0x80]!
        ldr     r0, L5041bc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5041b8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L5041b8:
        pop     {r4, r5, r6, pc}
L5041bc:
        .word   0x008b8818
        .size   A_504184, . - A_504184

@ FUN_005041c0
        .global A_5041c0
        .type   A_5041c0, %function
A_5041c0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L5041ec
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5041ec:
        .word   0x008b8818
        .size   A_5041c0, . - A_5041c0

@ FUN_005041f0
        .global A_5041f0
        .type   A_5041f0, %function
A_5041f0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L504220
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L504224
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L504220:
        .word   0x00100040
L504224:
        .word   0x008b8818
        .size   A_5041f0, . - A_5041f0

@ FUN_00504228
        .global A_504228
        .type   A_504228, %function
A_504228:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x130000
        str     r0, [r4, #0x80]!
        ldr     r0, L504260
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50425c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50425c:
        pop     {r4, r5, r6, pc}
L504260:
        .word   0x008b8818
        .size   A_504228, . - A_504228

@ FUN_00504264
        .global A_504264
        .type   A_504264, %function
A_504264:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L504294
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L504298
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L504294:
        .word   0x00120040
L504298:
        .word   0x008b8818
        .size   A_504264, . - A_504264

@ FUN_0050429c
        .global A_50429c
        .type   A_50429c, %function
A_50429c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5042d0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L5042d4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L5042d0:
        .word   0x00080040
L5042d4:
        .word   0x008b8818
        .size   A_50429c, . - A_50429c

@ FUN_005042d8
        .global A_5042d8
        .type   A_5042d8, %function
A_5042d8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x160000
        str     r0, [r4, #0x80]!
        ldr     r0, L504310
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50430c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50430c:
        pop     {r4, r5, r6, pc}
L504310:
        .word   0x008b8818
        .size   A_5042d8, . - A_5042d8

@ FUN_00504314
        .global A_504314
        .type   A_504314, %function
A_504314:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L50434c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L504348
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L504348:
        pop     {r4, r5, r6, pc}
L50434c:
        .word   0x008b8818
        .size   A_504314, . - A_504314

@ FUN_00504350
        .global A_504350
        .type   A_504350, %function
A_504350:
        mov     r0, r0
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50438c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L504390
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50438c:
        .word   0x00010042
L504390:
        .word   0x008b8818
        .size   A_504350, . - A_504350

@ FUN_00504394
        .global A_504394
        .type   A_504394, %function
A_504394:
        mov     r0, r0
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5043cc
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L5043d0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5043cc:
        .word   0x00020002
L5043d0:
        .word   0x008b8818
        .size   A_504394, . - A_504394

@ FUN_005043d4
        .global A_5043d4
        .type   A_5043d4, %function
A_5043d4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x150000
        str     r0, [r4, #0x80]!
        ldr     r0, L504400
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L504400:
        .word   0x008b8818
        .size   A_5043d4, . - A_5043d4

@ FUN_00504404
        .global A_504404
        .type   A_504404, %function
A_504404:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50443c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L504438
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L504438:
        pop     {r4, r5, r6, pc}
L50443c:
        .word   0x008b8818
        .size   A_504404, . - A_504404

@ FUN_00504440
        .global A_504440
        .type   A_504440, %function
A_504440:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mov     r5, r1
        mov     r6, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L504490
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L504494
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L504488
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L504488:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L504490:
        .word   0x000e0040
L504494:
        .word   0x008b8818
        .size   A_504440, . - A_504440

@ FUN_00504498
        .global A_504498
        .type   A_504498, %function
A_504498:
        mov     r0, r0
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x170000
        str     r0, [r4, #0x80]!
        ldr     r0, L5044c8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5044c8:
        .word   0x008b8818
        .size   A_504498, . - A_504498

@ FUN_005044cc
        .global A_5044cc
        .type   A_5044cc, %function
A_5044cc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xf0000
        str     r0, [r4, #0x80]!
        ldr     r0, L504510
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50450c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L50450c:
        pop     {r4, r5, r6, pc}
L504510:
        .word   0x008b8818
        .size   A_5044cc, . - A_5044cc

@ FUN_00504514
        .global A_504514
        .type   A_504514, %function
A_504514:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L504548
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L50454c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L504548:
        .word   0x00040002
L50454c:
        .word   0x008b8818
        .size   A_504514, . - A_504514

@ FUN_0050c2fc
        .global A_50c2fc
        .type   A_50c2fc, %function
A_50c2fc:
        push    {r4, r5, r6, lr}
        ldr     r5, L50c358
        ldr     r4, L50c35c
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L50c328
        svc     #0x23
        lsrs    r1, r0, #0x1f
        ldreq   r0, [r4]
        streq   r0, [r5]
        bne     L50c32c
L50c328:
        mov     r0, #0
L50c32c:
        ands    r1, r0, #0x80000000
        bmi     L50c354
        ldr     r2, L50c360
        ldr     r1, [r4]
        ldr     r3, L50c364
        str     r1, [r2]
        ldr     r2, [r4]
        str     r1, [r3]
        ldr     r1, L50c368
        str     r2, [r1]
L50c354:
        pop     {r4, r5, r6, pc}
L50c358:
        .word   0x008b8514
L50c35c:
        .word   0x007e920c
L50c360:
        .word   0x008b851c
L50c364:
        .word   0x008b850c
L50c368:
        .word   0x008b8510
        .size   A_50c2fc, . - A_50c2fc

@ FUN_0050c384
        .global A_50c384
        .type   A_50c384, %function
A_50c384:
        push    {r4, r5, r6, lr}
        ldr     r5, L50c3cc
        ldr     r4, L50c3d0
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L50c3b0
        svc     #0x23
        lsrs    r1, r0, #0x1f
        ldreq   r0, [r4]
        streq   r0, [r5]
        bne     L50c3b4
L50c3b0:
        mov     r0, #0
L50c3b4:
        ands    r1, r0, #0x80000000
        bmi     L50c3c8
        ldr     r2, L50c3d4
        ldr     r1, [r4]
        str     r1, [r2]
L50c3c8:
        pop     {r4, r5, r6, pc}
L50c3cc:
        .word   0x008b8510
L50c3d0:
        .word   0x007e920c
L50c3d4:
        .word   0x008b850c
        .size   A_50c384, . - A_50c384

@ FUN_0050c458
        .global A_50c458
        .type   A_50c458, %function
A_50c458:
        push    {r4, r5, r6, lr}
        ldr     r5, L50c4a0
        ldr     r4, L50c4a4
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L50c484
        svc     #0x23
        lsrs    r1, r0, #0x1f
        ldreq   r0, [r4]
        streq   r0, [r5]
        bne     L50c488
L50c484:
        mov     r0, #0
L50c488:
        ands    r1, r0, #0x80000000
        bmi     L50c49c
        ldr     r2, L50c4a8
        ldr     r1, [r4]
        str     r1, [r2]
L50c49c:
        pop     {r4, r5, r6, pc}
L50c4a0:
        .word   0x008b8518
L50c4a4:
        .word   0x007e920c
L50c4a8:
        .word   0x008b850c
        .size   A_50c458, . - A_50c458

@ FUN_0050c4ac
        .global A_50c4ac
        .type   A_50c4ac, %function
A_50c4ac:
        push    {r4, r5, r6, lr}
        ldr     r5, L50c4f4
        ldr     r4, L50c4f8
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L50c4d8
        svc     #0x23
        lsrs    r1, r0, #0x1f
        ldreq   r0, [r4]
        streq   r0, [r5]
        bne     L50c4dc
L50c4d8:
        mov     r0, #0
L50c4dc:
        ands    r1, r0, #0x80000000
        bmi     L50c4f0
        ldr     r2, L50c4fc
        ldr     r1, [r4]
        str     r1, [r2]
L50c4f0:
        pop     {r4, r5, r6, pc}
L50c4f4:
        .word   0x008b851c
L50c4f8:
        .word   0x007e920c
L50c4fc:
        .word   0x008b850c
        .size   A_50c4ac, . - A_50c4ac

@ FUN_0050c638
        .global A_50c638
        .type   A_50c638, %function
A_50c638:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L50c670
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50c66c
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50c66c:
        pop     {r4, r5, r6, pc}
L50c670:
        .word   0x008b8514
        .size   A_50c638, . - A_50c638

@ FUN_0050c674
        .global A_50c674
        .type   A_50c674, %function
A_50c674:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50c6a4
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50c6a8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c6a4:
        .word   0x04090080
L50c6a8:
        .word   0x008b8514
        .size   A_50c674, . - A_50c674

@ FUN_0050c6ac
        .global A_50c6ac
        .type   A_50c6ac, %function
A_50c6ac:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50c6dc
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50c6e0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c6dc:
        .word   0x00020080
L50c6e0:
        .word   0x008b8514
        .size   A_50c6ac, . - A_50c6ac

@ FUN_0050c6e4
        .global A_50c6e4
        .type   A_50c6e4, %function
A_50c6e4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50c714
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50c718
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c714:
        .word   0x080c0080
L50c718:
        .word   0x008b8514
        .size   A_50c6e4, . - A_50c6e4

@ FUN_0050c71c
        .global A_50c71c
        .type   A_50c71c, %function
A_50c71c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50c748
        str     r0, [r4, #0x80]!
        ldr     r0, L50c74c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c748:
        .word   0x04060000
L50c74c:
        .word   0x008b8514
        .size   A_50c71c, . - A_50c71c

@ FUN_0050c750
        .global A_50c750
        .type   A_50c750, %function
A_50c750:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L50c788
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50c784
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50c784:
        pop     {r4, r5, r6, pc}
L50c788:
        .word   0x008b8514
        .size   A_50c750, . - A_50c750

@ FUN_0050c78c
        .global A_50c78c
        .type   A_50c78c, %function
A_50c78c:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50c7c8
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L50c7cc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L50c7c8:
        .word   0x040100c0
L50c7cc:
        .word   0x008b8514
        .size   A_50c78c, . - A_50c78c

@ FUN_0050c7d0
        .global A_50c7d0
        .type   A_50c7d0, %function
A_50c7d0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50c804
        str     r1, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2, r3}
        ldr     r0, L50c808
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c804:
        .word   0x040700c0
L50c808:
        .word   0x008b8514
        .size   A_50c7d0, . - A_50c7d0

@ FUN_0050c80c
        .global A_50c80c
        .type   A_50c80c, %function
A_50c80c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L50c838
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c838:
        .word   0x008b8514
        .size   A_50c80c, . - A_50c80c

@ FUN_0050c83c
        .global A_50c83c
        .type   A_50c83c, %function
A_50c83c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50c868
        str     r0, [r4, #0x80]!
        ldr     r0, L50c86c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c868:
        .word   0x08130000
L50c86c:
        .word   0x008b8514
        .size   A_50c83c, . - A_50c83c

@ FUN_0050c870
        .global A_50c870
        .type   A_50c870, %function
A_50c870:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50c8b8
        str     r0, [r4, #0x80]!
        ldr     r0, L50c8bc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50c8b4
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        add     r1, r4, #0x10
        ldrd    r0, r1, [r1]
        strd    r0, r1, [r6]
        ldr     r0, [r4, #4]
L50c8b4:
        pop     {r4, r5, r6, pc}
L50c8b8:
        .word   0x04050000
L50c8bc:
        .word   0x008b8514
        .size   A_50c870, . - A_50c870

@ FUN_0050c8c0
        .global A_50c8c0
        .type   A_50c8c0, %function
A_50c8c0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50c910
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        add     r1, r3, r3, lsl #1
        str     r0, [r4, #0x10]
        ldr     r0, L50c914
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #6
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50c90c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50c90c:
        pop     {r4, r5, r6, pc}
L50c910:
        .word   0x08070082
L50c914:
        .word   0x008b8514
        .size   A_50c8c0, . - A_50c8c0

@ FUN_0050c918
        .global A_50c918
        .type   A_50c918, %function
A_50c918:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50c950
        str     r0, [r4, #0x80]!
        ldr     r0, L50c954
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50c94c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50c94c:
        pop     {r4, r5, r6, pc}
L50c950:
        .word   0x08110000
L50c954:
        .word   0x008b8514
        .size   A_50c918, . - A_50c918

@ FUN_0050c958
        .global A_50c958
        .type   A_50c958, %function
A_50c958:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50c99c
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x14]
        ldr     r0, L50c9a0
        orr     r1, r2, r1, lsl #5
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c99c:
        .word   0x000b00c2
L50c9a0:
        .word   0x008b8514
        .size   A_50c958, . - A_50c958

@ FUN_0050c9a4
        .global A_50c9a4
        .type   A_50c9a4, %function
A_50c9a4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50c9e8
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3}
        mov     r2, #0xa
        str     r0, [r4, #0x14]
        ldr     r0, L50c9ec
        orr     r1, r2, r1, lsl #5
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50c9e8:
        .word   0x080600c2
L50c9ec:
        .word   0x008b8514
        .size   A_50c9a4, . - A_50c9a4

@ FUN_0050c9f0
        .global A_50c9f0
        .type   A_50c9f0, %function
A_50c9f0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L50ca28
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50ca24
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50ca24:
        pop     {r4, r5, r6, pc}
L50ca28:
        .word   0x008b8514
        .size   A_50c9f0, . - A_50c9f0

@ FUN_0050ca2c
        .global A_50ca2c
        .type   A_50ca2c, %function
A_50ca2c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L50ca64
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50ca60
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50ca60:
        pop     {r4, r5, r6, pc}
L50ca64:
        .word   0x008b8514
        .size   A_50ca2c, . - A_50ca2c

@ FUN_0050ca68
        .global A_50ca68
        .type   A_50ca68, %function
A_50ca68:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L50caac
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r0, r2, r3}
        add     r6, r4, #0x10
        ldr     r0, L50cab0
        stm     r6, {r1, ip}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L50caac:
        .word   0x080e0140
L50cab0:
        .word   0x008b8514
        .size   A_50ca68, . - A_50ca68

@ FUN_0050cab4
        .global A_50cab4
        .type   A_50cab4, %function
A_50cab4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50caf0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L50caf4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L50caf0:
        .word   0x04020042
L50caf4:
        .word   0x008b8514
        .size   A_50cab4, . - A_50cab4

@ FUN_0050caf8
        .global A_50caf8
        .type   A_50caf8, %function
A_50caf8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cb24
        str     r0, [r4, #0x80]!
        ldr     r0, L50cb28
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cb24:
        .word   0x080a0000
L50cb28:
        .word   0x008b8514
        .size   A_50caf8, . - A_50caf8

@ FUN_0050cb2c
        .global A_50cb2c
        .type   A_50cb2c, %function
A_50cb2c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cb58
        str     r0, [r4, #0x80]!
        ldr     r0, L50cb5c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cb58:
        .word   0x08050000
L50cb5c:
        .word   0x008b8514
        .size   A_50cb2c, . - A_50cb2c

@ FUN_0050cb60
        .global A_50cb60
        .type   A_50cb60, %function
A_50cb60:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cb98
        str     r0, [r4, #0x80]!
        ldr     r0, L50cb9c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cb94
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50cb94:
        pop     {r4, r5, r6, pc}
L50cb98:
        .word   0x08030000
L50cb9c:
        .word   0x008b8514
        .size   A_50cb60, . - A_50cb60

@ FUN_0050cba0
        .global A_50cba0
        .type   A_50cba0, %function
A_50cba0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cbd8
        str     r0, [r4, #0x80]!
        ldr     r0, L50cbdc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cbd4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50cbd4:
        pop     {r4, r5, r6, pc}
L50cbd8:
        .word   0x080f0000
L50cbdc:
        .word   0x008b8514
        .size   A_50cba0, . - A_50cba0

@ FUN_0050cbe0
        .global A_50cbe0
        .type   A_50cbe0, %function
A_50cbe0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50cc1c
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r0, r1, r2, r3}
        mov     r0, #0x20
        str     r0, [r4, #0x14]
        ldr     r0, L50cc20
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cc1c:
        .word   0x04040102
L50cc20:
        .word   0x008b8514
        .size   A_50cbe0, . - A_50cbe0

@ FUN_0050cc24
        .global A_50cc24
        .type   A_50cc24, %function
A_50cc24:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L50cc5c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cc58
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50cc58:
        pop     {r4, r5, r6, pc}
L50cc5c:
        .word   0x008b8514
        .size   A_50cc24, . - A_50cc24

@ FUN_0050cc60
        .global A_50cc60
        .type   A_50cc60, %function
A_50cc60:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50cca8
        str     ip, [r4, #0x80]!
        mov     ip, #0xc
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x10]
        orr     r2, ip, r2, lsl #4
        orr     r0, ip, r3, lsl #4
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L50ccac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cca8:
        .word   0x000f0084
L50ccac:
        .word   0x008b8514
        .size   A_50cc60, . - A_50cc60

@ FUN_0050ccb0
        .global A_50ccb0
        .type   A_50ccb0, %function
A_50ccb0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50cce8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cce4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50cce4:
        pop     {r4, r5, r6, pc}
L50cce8:
        .word   0x008b8514
        .size   A_50ccb0, . - A_50ccb0

@ FUN_0050cd30
        .global A_50cd30
        .type   A_50cd30, %function
A_50cd30:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x8100000
        str     r0, [r4, #0x80]!
        ldr     r0, L50cd5c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cd5c:
        .word   0x008b8514
        .size   A_50cd30, . - A_50cd30

@ FUN_0050cd60
        .global A_50cd60
        .type   A_50cd60, %function
A_50cd60:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cd98
        str     r0, [r4, #0x80]!
        ldr     r0, L50cd9c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cd94
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50cd94:
        pop     {r4, r5, r6, pc}
L50cd98:
        .word   0x08080000
L50cd9c:
        .word   0x008b8514
        .size   A_50cd60, . - A_50cd60

@ FUN_0050cda0
        .global A_50cda0
        .type   A_50cda0, %function
A_50cda0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50cde0
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L50cde4
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cde0:
        .word   0x000a0042
L50cde4:
        .word   0x008b8514
        .size   A_50cda0, . - A_50cda0

@ FUN_0050cde8
        .global A_50cde8
        .type   A_50cde8, %function
A_50cde8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L50ce20
        str     r0, [r4, #8]
        ldr     r0, L50ce24
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50ce20:
        .word   0x00010002
L50ce24:
        .word   0x008b8514
        .size   A_50cde8, . - A_50cde8

@ FUN_0050ce28
        .global A_50ce28
        .type   A_50ce28, %function
A_50ce28:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50ce64
        add     r4, r4, #0x80
        stm     r4, {r0, r1, r2}
        ldr     r0, L50ce68
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50ce60
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50ce60:
        pop     {r4, r5, r6, pc}
L50ce64:
        .word   0x080b0080
L50ce68:
        .word   0x008b8514
        .size   A_50ce28, . - A_50ce28

@ FUN_0050ce6c
        .global A_50ce6c
        .type   A_50ce6c, %function
A_50ce6c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cea4
        str     r0, [r4, #0x80]!
        ldr     r0, L50cea8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cea0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50cea0:
        pop     {r4, r5, r6, pc}
L50cea4:
        .word   0x08090000
L50cea8:
        .word   0x008b8514
        .size   A_50ce6c, . - A_50ce6c

@ FUN_0050ceac
        .global A_50ceac
        .type   A_50ceac, %function
A_50ceac:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50ced8
        str     r0, [r4, #0x80]!
        ldr     r0, L50cedc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50ced8:
        .word   0x080d0000
L50cedc:
        .word   0x008b8514
        .size   A_50ceac, . - A_50ceac

@ FUN_0050cee0
        .global A_50cee0
        .type   A_50cee0, %function
A_50cee0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L50cf18
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cf14
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50cf14:
        pop     {r4, r5, r6, pc}
L50cf18:
        .word   0x008b8514
        .size   A_50cee0, . - A_50cee0

@ FUN_0050cf1c
        .global A_50cf1c
        .type   A_50cf1c, %function
A_50cf1c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50cf4c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50cf50
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50cf4c:
        .word   0x08020040
L50cf50:
        .word   0x008b8514
        .size   A_50cf1c, . - A_50cf1c

@ FUN_0050cf54
        .global A_50cf54
        .type   A_50cf54, %function
A_50cf54:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50cf8c
        str     r0, [r4, #0x80]!
        ldr     r0, L50cf90
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cf88
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50cf88:
        pop     {r4, r5, r6, pc}
L50cf8c:
        .word   0x08120000
L50cf90:
        .word   0x008b8514
        .size   A_50cf54, . - A_50cf54

@ FUN_0050cf94
        .global A_50cf94
        .type   A_50cf94, %function
A_50cf94:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50cfcc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50cfc8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50cfc8:
        pop     {r4, r5, r6, pc}
L50cfcc:
        .word   0x008b8514
        .size   A_50cf94, . - A_50cf94

@ FUN_0050cfd0
        .global A_50cfd0
        .type   A_50cfd0, %function
A_50cfd0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50d000
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50d004
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d000:
        .word   0x08040040
L50d004:
        .word   0x008b8514
        .size   A_50cfd0, . - A_50cfd0

@ FUN_0050d008
        .global A_50d008
        .type   A_50d008, %function
A_50d008:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50d038
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50d03c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d038:
        .word   0x000d0040
L50d03c:
        .word   0x008b8514
        .size   A_50d008, . - A_50d008

@ FUN_0050d040
        .global A_50d040
        .type   A_50d040, %function
A_50d040:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d078
        str     r0, [r4, #0x80]!
        ldr     r0, L50d07c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d074
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d074:
        pop     {r4, r5, r6, pc}
L50d078:
        .word   0x08140000
L50d07c:
        .word   0x008b8514
        .size   A_50d040, . - A_50d040

@ FUN_0050d080
        .global A_50d080
        .type   A_50d080, %function
A_50d080:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d0b4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L50d0b8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L50d0b4:
        .word   0x08150040
L50d0b8:
        .word   0x008b8514
        .size   A_50d080, . - A_50d080

@ FUN_0050d0bc
        .global A_50d0bc
        .type   A_50d0bc, %function
A_50d0bc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50d0f4
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L50d0f8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d0f4:
        .word   0x04030042
L50d0f8:
        .word   0x008b8514
        .size   A_50d0bc, . - A_50d0bc

@ FUN_0050d0fc
        .global A_50d0fc
        .type   A_50d0fc, %function
A_50d0fc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d128
        str     r0, [r4, #0x80]!
        ldr     r0, L50d12c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d128:
        .word   0x04080000
L50d12c:
        .word   0x008b8514
        .size   A_50d0fc, . - A_50d0fc

@ FUN_0050d130
        .global A_50d130
        .type   A_50d130, %function
A_50d130:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d168
        str     r0, [r4, #0x80]!
        ldr     r0, L50d16c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d164
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50d164:
        pop     {r4, r5, r6, pc}
L50d168:
        .word   0x08160000
L50d16c:
        .word   0x008b8514
        .size   A_50d130, . - A_50d130

@ FUN_0050d170
        .global A_50d170
        .type   A_50d170, %function
A_50d170:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50d1a0
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50d1a4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d1a0:
        .word   0x08170080
L50d1a4:
        .word   0x008b8514
        .size   A_50d170, . - A_50d170

@ FUN_0050d1a8
        .global A_50d1a8
        .type   A_50d1a8, %function
A_50d1a8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d1e0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d1dc
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50d1dc:
        pop     {r4, r5, r6, pc}
L50d1e0:
        .word   0x008b851c
        .size   A_50d1a8, . - A_50d1a8

@ FUN_0050d1e4
        .global A_50d1e4
        .type   A_50d1e4, %function
A_50d1e4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50d214
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50d218
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d214:
        .word   0x04090080
L50d218:
        .word   0x008b851c
        .size   A_50d1e4, . - A_50d1e4

@ FUN_0050d21c
        .global A_50d21c
        .type   A_50d21c, %function
A_50d21c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50d24c
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50d250
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d24c:
        .word   0x00020080
L50d250:
        .word   0x008b851c
        .size   A_50d21c, . - A_50d21c

@ FUN_0050d254
        .global A_50d254
        .type   A_50d254, %function
A_50d254:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d280
        str     r0, [r4, #0x80]!
        ldr     r0, L50d284
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d280:
        .word   0x04060000
L50d284:
        .word   0x008b851c
        .size   A_50d254, . - A_50d254

@ FUN_0050d288
        .global A_50d288
        .type   A_50d288, %function
A_50d288:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d2c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d2bc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d2bc:
        pop     {r4, r5, r6, pc}
L50d2c0:
        .word   0x008b851c
        .size   A_50d288, . - A_50d288

@ FUN_0050d2c4
        .global A_50d2c4
        .type   A_50d2c4, %function
A_50d2c4:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50d300
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L50d304
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L50d300:
        .word   0x040100c0
L50d304:
        .word   0x008b851c
        .size   A_50d2c4, . - A_50d2c4

@ FUN_0050d308
        .global A_50d308
        .type   A_50d308, %function
A_50d308:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50d33c
        str     r1, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2, r3}
        ldr     r0, L50d340
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d33c:
        .word   0x040700c0
L50d340:
        .word   0x008b851c
        .size   A_50d308, . - A_50d308

@ FUN_0050d344
        .global A_50d344
        .type   A_50d344, %function
A_50d344:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d370
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d370:
        .word   0x008b851c
        .size   A_50d344, . - A_50d344

@ FUN_0050d374
        .global A_50d374
        .type   A_50d374, %function
A_50d374:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d3bc
        str     r0, [r4, #0x80]!
        ldr     r0, L50d3c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d3b8
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        add     r1, r4, #0x10
        ldrd    r0, r1, [r1]
        strd    r0, r1, [r6]
        ldr     r0, [r4, #4]
L50d3b8:
        pop     {r4, r5, r6, pc}
L50d3bc:
        .word   0x04050000
L50d3c0:
        .word   0x008b851c
        .size   A_50d374, . - A_50d374

@ FUN_0050d3c4
        .global A_50d3c4
        .type   A_50d3c4, %function
A_50d3c4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50d408
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x14]
        ldr     r0, L50d40c
        orr     r1, r2, r1, lsl #5
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d408:
        .word   0x000b00c2
L50d40c:
        .word   0x008b851c
        .size   A_50d3c4, . - A_50d3c4

@ FUN_0050d410
        .global A_50d410
        .type   A_50d410, %function
A_50d410:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d448
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d444
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d444:
        pop     {r4, r5, r6, pc}
L50d448:
        .word   0x008b851c
        .size   A_50d410, . - A_50d410

@ FUN_0050d44c
        .global A_50d44c
        .type   A_50d44c, %function
A_50d44c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d484
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d480
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d480:
        pop     {r4, r5, r6, pc}
L50d484:
        .word   0x008b851c
        .size   A_50d44c, . - A_50d44c

@ FUN_0050d488
        .global A_50d488
        .type   A_50d488, %function
A_50d488:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d4c4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L50d4c8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L50d4c4:
        .word   0x04020042
L50d4c8:
        .word   0x008b851c
        .size   A_50d488, . - A_50d488

@ FUN_0050d4cc
        .global A_50d4cc
        .type   A_50d4cc, %function
A_50d4cc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50d508
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r0, r1, r2, r3}
        mov     r0, #0x20
        str     r0, [r4, #0x14]
        ldr     r0, L50d50c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d508:
        .word   0x04040102
L50d50c:
        .word   0x008b851c
        .size   A_50d4cc, . - A_50d4cc

@ FUN_0050d510
        .global A_50d510
        .type   A_50d510, %function
A_50d510:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d548
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d544
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d544:
        pop     {r4, r5, r6, pc}
L50d548:
        .word   0x008b851c
        .size   A_50d510, . - A_50d510

@ FUN_0050d54c
        .global A_50d54c
        .type   A_50d54c, %function
A_50d54c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50d594
        str     ip, [r4, #0x80]!
        mov     ip, #0xc
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x10]
        orr     r2, ip, r2, lsl #4
        orr     r0, ip, r3, lsl #4
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L50d598
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d594:
        .word   0x000f0084
L50d598:
        .word   0x008b851c
        .size   A_50d54c, . - A_50d54c

@ FUN_0050d59c
        .global A_50d59c
        .type   A_50d59c, %function
A_50d59c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d5d4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d5d0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50d5d0:
        pop     {r4, r5, r6, pc}
L50d5d4:
        .word   0x008b851c
        .size   A_50d59c, . - A_50d59c

@ FUN_0050d5d8
        .global A_50d5d8
        .type   A_50d5d8, %function
A_50d5d8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50d618
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L50d61c
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d618:
        .word   0x000a0042
L50d61c:
        .word   0x008b851c
        .size   A_50d5d8, . - A_50d5d8

@ FUN_0050d620
        .global A_50d620
        .type   A_50d620, %function
A_50d620:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L50d658
        str     r0, [r4, #8]
        ldr     r0, L50d65c
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d658:
        .word   0x00010002
L50d65c:
        .word   0x008b851c
        .size   A_50d620, . - A_50d620

@ FUN_0050d660
        .global A_50d660
        .type   A_50d660, %function
A_50d660:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d698
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d694
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d694:
        pop     {r4, r5, r6, pc}
L50d698:
        .word   0x008b851c
        .size   A_50d660, . - A_50d660

@ FUN_0050d69c
        .global A_50d69c
        .type   A_50d69c, %function
A_50d69c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d6d4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d6d0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50d6d0:
        pop     {r4, r5, r6, pc}
L50d6d4:
        .word   0x008b851c
        .size   A_50d69c, . - A_50d69c

@ FUN_0050d6d8
        .global A_50d6d8
        .type   A_50d6d8, %function
A_50d6d8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50d708
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50d70c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d708:
        .word   0x000d0040
L50d70c:
        .word   0x008b851c
        .size   A_50d6d8, . - A_50d6d8

@ FUN_0050d710
        .global A_50d710
        .type   A_50d710, %function
A_50d710:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50d748
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L50d74c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d748:
        .word   0x04030042
L50d74c:
        .word   0x008b851c
        .size   A_50d710, . - A_50d710

@ FUN_0050d750
        .global A_50d750
        .type   A_50d750, %function
A_50d750:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d77c
        str     r0, [r4, #0x80]!
        ldr     r0, L50d780
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d77c:
        .word   0x04080000
L50d780:
        .word   0x008b851c
        .size   A_50d750, . - A_50d750

@ FUN_0050d784
        .global A_50d784
        .type   A_50d784, %function
A_50d784:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d7bc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d7b8
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50d7b8:
        pop     {r4, r5, r6, pc}
L50d7bc:
        .word   0x008b8518
        .size   A_50d784, . - A_50d784

@ FUN_0050d7c0
        .global A_50d7c0
        .type   A_50d7c0, %function
A_50d7c0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50d7f0
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50d7f4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d7f0:
        .word   0x00020080
L50d7f4:
        .word   0x008b8518
        .size   A_50d7c0, . - A_50d7c0

@ FUN_0050d7f8
        .global A_50d7f8
        .type   A_50d7f8, %function
A_50d7f8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d830
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d82c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d82c:
        pop     {r4, r5, r6, pc}
L50d830:
        .word   0x008b8518
        .size   A_50d7f8, . - A_50d7f8

@ FUN_0050d834
        .global A_50d834
        .type   A_50d834, %function
A_50d834:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50d86c
        str     r0, [r4, #0x80]!
        ldr     r0, L50d870
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d868
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50d868:
        pop     {r4, r5, r6, pc}
L50d86c:
        .word   0x04010000
L50d870:
        .word   0x008b8518
        .size   A_50d834, . - A_50d834

@ FUN_0050d874
        .global A_50d874
        .type   A_50d874, %function
A_50d874:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d8a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d8a0:
        .word   0x008b8518
        .size   A_50d874, . - A_50d874

@ FUN_0050d8a4
        .global A_50d8a4
        .type   A_50d8a4, %function
A_50d8a4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50d8e8
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x14]
        ldr     r0, L50d8ec
        orr     r1, r2, r1, lsl #5
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d8e8:
        .word   0x000b00c2
L50d8ec:
        .word   0x008b8518
        .size   A_50d8a4, . - A_50d8a4

@ FUN_0050d8f0
        .global A_50d8f0
        .type   A_50d8f0, %function
A_50d8f0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d928
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d924
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d924:
        pop     {r4, r5, r6, pc}
L50d928:
        .word   0x008b8518
        .size   A_50d8f0, . - A_50d8f0

@ FUN_0050d92c
        .global A_50d92c
        .type   A_50d92c, %function
A_50d92c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d964
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d960
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d960:
        pop     {r4, r5, r6, pc}
L50d964:
        .word   0x008b8518
        .size   A_50d92c, . - A_50d92c

@ FUN_0050d968
        .global A_50d968
        .type   A_50d968, %function
A_50d968:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L50d9a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50d99c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50d99c:
        pop     {r4, r5, r6, pc}
L50d9a0:
        .word   0x008b8518
        .size   A_50d968, . - A_50d968

@ FUN_0050d9a4
        .global A_50d9a4
        .type   A_50d9a4, %function
A_50d9a4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50d9ec
        str     ip, [r4, #0x80]!
        mov     ip, #0xc
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x10]
        orr     r2, ip, r2, lsl #4
        orr     r0, ip, r3, lsl #4
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L50d9f0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50d9ec:
        .word   0x000f0084
L50d9f0:
        .word   0x008b8518
        .size   A_50d9a4, . - A_50d9a4

@ FUN_0050d9f4
        .global A_50d9f4
        .type   A_50d9f4, %function
A_50d9f4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50da2c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50da28
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50da28:
        pop     {r4, r5, r6, pc}
L50da2c:
        .word   0x008b8518
        .size   A_50d9f4, . - A_50d9f4

@ FUN_0050da30
        .global A_50da30
        .type   A_50da30, %function
A_50da30:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50da70
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L50da74
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50da70:
        .word   0x000a0042
L50da74:
        .word   0x008b8518
        .size   A_50da30, . - A_50da30

@ FUN_0050da78
        .global A_50da78
        .type   A_50da78, %function
A_50da78:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L50dab0
        str     r0, [r4, #8]
        ldr     r0, L50dab4
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50dab0:
        .word   0x00010002
L50dab4:
        .word   0x008b8518
        .size   A_50da78, . - A_50da78

@ FUN_0050dab8
        .global A_50dab8
        .type   A_50dab8, %function
A_50dab8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L50daf0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50daec
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50daec:
        pop     {r4, r5, r6, pc}
L50daf0:
        .word   0x008b8518
        .size   A_50dab8, . - A_50dab8

@ FUN_0050daf4
        .global A_50daf4
        .type   A_50daf4, %function
A_50daf4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50db2c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50db28
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50db28:
        pop     {r4, r5, r6, pc}
L50db2c:
        .word   0x008b8518
        .size   A_50daf4, . - A_50daf4

@ FUN_0050db30
        .global A_50db30
        .type   A_50db30, %function
A_50db30:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50db60
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50db64
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50db60:
        .word   0x000d0040
L50db64:
        .word   0x008b8518
        .size   A_50db30, . - A_50db30

@ FUN_0050db68
        .global A_50db68
        .type   A_50db68, %function
A_50db68:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dba0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50db9c
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50db9c:
        pop     {r4, r5, r6, pc}
L50dba0:
        .word   0x008b8510
        .size   A_50db68, . - A_50db68

@ FUN_0050dba4
        .global A_50dba4
        .type   A_50dba4, %function
A_50dba4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50dbd4
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50dbd8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50dbd4:
        .word   0x00020080
L50dbd8:
        .word   0x008b8510
        .size   A_50dba4, . - A_50dba4

@ FUN_0050dbdc
        .global A_50dbdc
        .type   A_50dbdc, %function
A_50dbdc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dc14
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dc10
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50dc10:
        pop     {r4, r5, r6, pc}
L50dc14:
        .word   0x008b8510
        .size   A_50dbdc, . - A_50dbdc

@ FUN_0050dc18
        .global A_50dc18
        .type   A_50dc18, %function
A_50dc18:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dc44
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50dc44:
        .word   0x008b8510
        .size   A_50dc18, . - A_50dc18

@ FUN_0050dc48
        .global A_50dc48
        .type   A_50dc48, %function
A_50dc48:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50dc98
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        add     r1, r3, r3, lsl #1
        str     r0, [r4, #0x10]
        ldr     r0, L50dc9c
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #6
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dc94
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50dc94:
        pop     {r4, r5, r6, pc}
L50dc98:
        .word   0x08070082
L50dc9c:
        .word   0x008b8510
        .size   A_50dc48, . - A_50dc48

@ FUN_0050dca0
        .global A_50dca0
        .type   A_50dca0, %function
A_50dca0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50dce4
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x14]
        ldr     r0, L50dce8
        orr     r1, r2, r1, lsl #5
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50dce4:
        .word   0x000b00c2
L50dce8:
        .word   0x008b8510
        .size   A_50dca0, . - A_50dca0

@ FUN_0050dcec
        .global A_50dcec
        .type   A_50dcec, %function
A_50dcec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dd24
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dd20
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50dd20:
        pop     {r4, r5, r6, pc}
L50dd24:
        .word   0x008b8510
        .size   A_50dcec, . - A_50dcec

@ FUN_0050dd28
        .global A_50dd28
        .type   A_50dd28, %function
A_50dd28:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dd60
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dd5c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50dd5c:
        pop     {r4, r5, r6, pc}
L50dd60:
        .word   0x008b8510
        .size   A_50dd28, . - A_50dd28

@ FUN_0050dd64
        .global A_50dd64
        .type   A_50dd64, %function
A_50dd64:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dd9c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dd98
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50dd98:
        pop     {r4, r5, r6, pc}
L50dd9c:
        .word   0x008b8510
        .size   A_50dd64, . - A_50dd64

@ FUN_0050dda0
        .global A_50dda0
        .type   A_50dda0, %function
A_50dda0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50dde8
        str     ip, [r4, #0x80]!
        mov     ip, #0xc
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x10]
        orr     r2, ip, r2, lsl #4
        orr     r0, ip, r3, lsl #4
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L50ddec
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50dde8:
        .word   0x000f0084
L50ddec:
        .word   0x008b8510
        .size   A_50dda0, . - A_50dda0

@ FUN_0050ddf0
        .global A_50ddf0
        .type   A_50ddf0, %function
A_50ddf0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50de28
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50de24
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50de24:
        pop     {r4, r5, r6, pc}
L50de28:
        .word   0x008b8510
        .size   A_50ddf0, . - A_50ddf0

@ FUN_0050de2c
        .global A_50de2c
        .type   A_50de2c, %function
A_50de2c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50de64
        str     r0, [r4, #0x80]!
        ldr     r0, L50de68
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50de60
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50de60:
        pop     {r4, r5, r6, pc}
L50de64:
        .word   0x08080000
L50de68:
        .word   0x008b8510
        .size   A_50de2c, . - A_50de2c

@ FUN_0050de6c
        .global A_50de6c
        .type   A_50de6c, %function
A_50de6c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50deac
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L50deb0
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50deac:
        .word   0x000a0042
L50deb0:
        .word   0x008b8510
        .size   A_50de6c, . - A_50de6c

@ FUN_0050deb4
        .global A_50deb4
        .type   A_50deb4, %function
A_50deb4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L50deec
        str     r0, [r4, #8]
        ldr     r0, L50def0
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50deec:
        .word   0x00010002
L50def0:
        .word   0x008b8510
        .size   A_50deb4, . - A_50deb4

@ FUN_0050def4
        .global A_50def4
        .type   A_50def4, %function
A_50def4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50df30
        add     r4, r4, #0x80
        stm     r4, {r0, r1, r2}
        ldr     r0, L50df34
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50df2c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50df2c:
        pop     {r4, r5, r6, pc}
L50df30:
        .word   0x080b0080
L50df34:
        .word   0x008b8510
        .size   A_50def4, . - A_50def4

@ FUN_0050df38
        .global A_50df38
        .type   A_50df38, %function
A_50df38:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L50df70
        str     r0, [r4, #0x80]!
        ldr     r0, L50df74
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50df6c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50df6c:
        pop     {r4, r5, r6, pc}
L50df70:
        .word   0x08090000
L50df74:
        .word   0x008b8510
        .size   A_50df38, . - A_50df38

@ FUN_0050df78
        .global A_50df78
        .type   A_50df78, %function
A_50df78:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dfb0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dfac
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50dfac:
        pop     {r4, r5, r6, pc}
L50dfb0:
        .word   0x008b8510
        .size   A_50df78, . - A_50df78

@ FUN_0050dfb4
        .global A_50dfb4
        .type   A_50dfb4, %function
A_50dfb4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50dfec
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50dfe8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50dfe8:
        pop     {r4, r5, r6, pc}
L50dfec:
        .word   0x008b8510
        .size   A_50dfb4, . - A_50dfb4

@ FUN_0050dff0
        .global A_50dff0
        .type   A_50dff0, %function
A_50dff0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50e020
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50e024
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e020:
        .word   0x000d0040
L50e024:
        .word   0x008b8510
        .size   A_50dff0, . - A_50dff0

@ FUN_0050e2e4
        .global A_50e2e4
        .type   A_50e2e4, %function
A_50e2e4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x30000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e31c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e318
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L50e318:
        pop     {r4, r5, r6, pc}
L50e31c:
        .word   0x008b850c
        .size   A_50e2e4, . - A_50e2e4

@ FUN_0050e320
        .global A_50e320
        .type   A_50e320, %function
A_50e320:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50e350
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L50e354
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e350:
        .word   0x00020080
L50e354:
        .word   0x008b850c
        .size   A_50e320, . - A_50e320

@ FUN_0050e358
        .global A_50e358
        .type   A_50e358, %function
A_50e358:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e390
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e38c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50e38c:
        pop     {r4, r5, r6, pc}
L50e390:
        .word   0x008b850c
        .size   A_50e358, . - A_50e358

@ FUN_0050e394
        .global A_50e394
        .type   A_50e394, %function
A_50e394:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e3c0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e3c0:
        .word   0x008b850c
        .size   A_50e394, . - A_50e394

@ FUN_0050e3c4
        .global A_50e3c4
        .type   A_50e3c4, %function
A_50e3c4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50e408
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3}
        mov     r2, #0xc
        str     r0, [r4, #0x14]
        ldr     r0, L50e40c
        orr     r1, r2, r1, lsl #5
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e408:
        .word   0x000b00c2
L50e40c:
        .word   0x008b850c
        .size   A_50e3c4, . - A_50e3c4

@ FUN_0050e410
        .global A_50e410
        .type   A_50e410, %function
A_50e410:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e448
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e444
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50e444:
        pop     {r4, r5, r6, pc}
L50e448:
        .word   0x008b850c
        .size   A_50e410, . - A_50e410

@ FUN_0050e44c
        .global A_50e44c
        .type   A_50e44c, %function
A_50e44c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e484
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e480
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50e480:
        pop     {r4, r5, r6, pc}
L50e484:
        .word   0x008b850c
        .size   A_50e44c, . - A_50e44c

@ FUN_0050e488
        .global A_50e488
        .type   A_50e488, %function
A_50e488:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x90000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e4c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e4bc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50e4bc:
        pop     {r4, r5, r6, pc}
L50e4c0:
        .word   0x008b850c
        .size   A_50e488, . - A_50e488

@ FUN_0050e4c4
        .global A_50e4c4
        .type   A_50e4c4, %function
A_50e4c4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L50e50c
        str     ip, [r4, #0x80]!
        mov     ip, #0xc
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x10]
        orr     r2, ip, r2, lsl #4
        orr     r0, ip, r3, lsl #4
        str     r2, [r4, #0xc]
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L50e510
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e50c:
        .word   0x000f0084
L50e510:
        .word   0x008b850c
        .size   A_50e4c4, . - A_50e4c4

@ FUN_0050e514
        .global A_50e514
        .type   A_50e514, %function
A_50e514:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e54c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e548
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50e548:
        pop     {r4, r5, r6, pc}
L50e54c:
        .word   0x008b850c
        .size   A_50e514, . - A_50e514

@ FUN_0050e550
        .global A_50e550
        .type   A_50e550, %function
A_50e550:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L50e590
        str     r2, [r4, #0x80]!
        mov     r2, #0xc
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L50e594
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e590:
        .word   0x000a0042
L50e594:
        .word   0x008b850c
        .size   A_50e550, . - A_50e550

@ FUN_0050e598
        .global A_50e598
        .type   A_50e598, %function
A_50e598:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L50e5d0
        str     r0, [r4, #8]
        ldr     r0, L50e5d4
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e5d0:
        .word   0x00010002
L50e5d4:
        .word   0x008b850c
        .size   A_50e598, . - A_50e598

@ FUN_0050e5d8
        .global A_50e5d8
        .type   A_50e5d8, %function
A_50e5d8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e610
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e60c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L50e60c:
        pop     {r4, r5, r6, pc}
L50e610:
        .word   0x008b850c
        .size   A_50e5d8, . - A_50e5d8

@ FUN_0050e614
        .global A_50e614
        .type   A_50e614, %function
A_50e614:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L50e64c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L50e648
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L50e648:
        pop     {r4, r5, r6, pc}
L50e64c:
        .word   0x008b850c
        .size   A_50e614, . - A_50e614

@ FUN_0050e650
        .global A_50e650
        .type   A_50e650, %function
A_50e650:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L50e680
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L50e684
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L50e680:
        .word   0x000d0040
L50e684:
        .word   0x008b850c
        .size   A_50e650, . - A_50e650

@ FUN_0050e688
        .global A_50e688
        .type   A_50e688, %function
A_50e688:
        push    {r4, lr}
        ldr     r4, L50e6bc
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L50e6b4
        svc     #0x23
        lsrs    r1, r0, #0x1f
        bne     L50e6b8
        ldr     r0, L50e6c0
        ldr     r0, [r0]
        str     r0, [r4]
L50e6b4:
        mov     r0, #0
L50e6b8:
        pop     {r4, pc}
L50e6bc:
        .word   0x008b850c
L50e6c0:
        .word   0x007e920c
        .size   A_50e688, . - A_50e688

@ FUN_00515e74
        .global A_515e74
        .type   A_515e74, %function
A_515e74:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r5, r0, #4
        ldr     r0, [r0, #4]
        mov     r6, #0
        cmp     r0, #0
        beq     L515e98
        svc     #0x23
        str     r6, [r5]
L515e98:
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L515eac
        svc     #0x23
        str     r6, [r4]
L515eac:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_515e74, . - A_515e74

@ FUN_00517d20
        .global A_517d20
        .type   A_517d20, %function
A_517d20:
        push    {r4, lr}
        ldr     r0, [r0]
        svc     #0x23
        ands    r1, r0, #0x80000000
        bmi     L517d44
        ldr     r1, L517d4c
        ldr     r2, [r1]
        sub     r2, r2, #1
        str     r2, [r1]
L517d44:
        pop     {r4, pc}
        .word   0x008b85f4
L517d4c:
        .word   0x008b85e0
        .size   A_517d20, . - A_517d20

@ FUN_00517d9c
        .global A_517d9c
        .type   A_517d9c, %function
A_517d9c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L517dcc
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L517dd0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L517dcc:
        .word   0x000a0040
L517dd0:
        .word   0x008bb4e0
        .size   A_517d9c, . - A_517d9c

@ FUN_00517dd4
        .global A_517dd4
        .type   A_517dd4, %function
A_517dd4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L517e04
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L517e08
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L517e04:
        .word   0x04020040
L517e08:
        .word   0x008bb4e0
        .size   A_517dd4, . - A_517dd4

@ FUN_00517e70
        .global A_517e70
        .type   A_517e70, %function
A_517e70:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L517ea4
        str     r0, [r4, #0x80]!
        mov     r0, #0x20
        str     r0, [r4, #4]
        ldr     r0, L517ea8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L517ea4:
        .word   0x00010002
L517ea8:
        .word   0x008bb4e0
        .size   A_517e70, . - A_517e70

@ FUN_00517f04
        .global A_517f04
        .type   A_517f04, %function
A_517f04:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L517f48
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r0, r2}
        orr     r0, r3, r2, lsl #16
        orr     r0, r0, #2
        strd    r0, r1, [r4, #0xc]
        ldr     r0, L517f4c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L517f48:
        .word   0x04030082
L517f4c:
        .word   0x008bb4e0
        .size   A_517f04, . - A_517f04

@ FUN_00518008
        .global A_518008
        .type   A_518008, %function
A_518008:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L518044
        mov     r2, #0
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        str     r0, [r4, #0xc]
        ldr     r0, L518048
        stm     ip, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L518044:
        .word   0x04010042
L518048:
        .word   0x008bb4e0
        .size   A_518008, . - A_518008

@ FUN_005180a0
        .global A_5180a0
        .type   A_5180a0, %function
A_5180a0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5180d0
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L5180d4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5180d0:
        .word   0x04040040
L5180d4:
        .word   0x008bb4e0
        .size   A_5180a0, . - A_5180a0

@ FUN_0051812c
        .global A_51812c
        .type   A_51812c, %function
A_51812c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L518164
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L518160
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L518160:
        pop     {r4, r5, r6, pc}
L518164:
        .word   0x008bb4e0
        .size   A_51812c, . - A_51812c

@ FUN_005181c0
        .global A_5181c0
        .type   A_5181c0, %function
A_5181c0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L5181f0
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L5181f4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5181f0:
        .word   0x000c0080
L5181f4:
        .word   0x008bb4e0
        .size   A_5181c0, . - A_5181c0

@ FUN_005181f8
        .global A_5181f8
        .type   A_5181f8, %function
A_5181f8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L518230
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51822c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51822c:
        pop     {r4, r5, r6, pc}
L518230:
        .word   0x008bb4e0
        .size   A_5181f8, . - A_5181f8

@ FUN_0051828c
        .global A_51828c
        .type   A_51828c, %function
A_51828c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5182bc
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L5182c0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5182bc:
        .word   0x00090040
L5182c0:
        .word   0x008bb4e0
        .size   A_51828c, . - A_51828c

@ FUN_005182c4
        .global A_5182c4
        .type   A_5182c4, %function
A_5182c4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5182f4
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L5182f8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5182f4:
        .word   0x000a0040
L5182f8:
        .word   0x008b85f4
        .size   A_5182c4, . - A_5182c4

@ FUN_00518514
        .global A_518514
        .type   A_518514, %function
A_518514:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L518544
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L518548
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L518544:
        .word   0x000c0080
L518548:
        .word   0x008b85f4
        .size   A_518514, . - A_518514

@ FUN_005185a4
        .global A_5185a4
        .type   A_5185a4, %function
A_5185a4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5185d4
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L5185d8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5185d4:
        .word   0x00090040
L5185d8:
        .word   0x008b85f4
        .size   A_5185a4, . - A_5185a4

@ FUN_0051af78
        .global A_51af78
        .type   A_51af78, %function
A_51af78:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x1a0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51afa8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51afa8:
        pop     {r4, r5, r6, pc}
        .size   A_51af78, . - A_51af78

@ FUN_0051afac
        .global A_51afac
        .type   A_51afac, %function
A_51afac:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, r8, sb}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L51b014
        mov     ip, #0
        str     r6, [r4, #0x80]!
        add     r7, r4, #4
        stm     r7, {r1, r3, r5}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, ip, r3, lsl #16
        orr     r1, r1, #2
        ldrd    r6, r7, [r5]
        stm     r5, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        strd    r6, r7, [r5]
        bmi     L51b010
        ldr     r0, [r4, #8]
        str     r0, [r8]
        ldrh    r0, [r4, #0xc]
        strh    r0, [sb]
        ldr     r0, [r4, #4]
L51b010:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51b014:
        .word   0x001400c0
        .size   A_51afac, . - A_51afac

@ FUN_0051b018
        .global A_51b018
        .type   A_51b018, %function
A_51b018:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b04c
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L51b04c:
        .word   0x00050040
        .size   A_51b018, . - A_51b018

@ FUN_0051b050
        .global A_51b050
        .type   A_51b050, %function
A_51b050:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b084
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L51b084:
        .word   0x001c0040
        .size   A_51b050, . - A_51b050

@ FUN_0051b088
        .global A_51b088
        .type   A_51b088, %function
A_51b088:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51b0d4
        mov     ip, #0
        str     r5, [r4, #0x80]!
        ldr     r5, L51b0d8
        add     r6, r4, #4
        str     r1, [r4, #0xc]
        stm     r6, {r3, r5}
        orr     r1, ip, r3, lsl #14
        add     r5, r4, #0x10
        orr     r1, r1, #2
        stm     r5, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51b0d4:
        .word   0x001d0044
L51b0d8:
        .word   0x00420402
        .size   A_51b088, . - A_51b088

@ FUN_0051b0dc
        .global A_51b0dc
        .type   A_51b0dc, %function
A_51b0dc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x80000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_51b0dc, . - A_51b0dc

@ FUN_0051b104
        .global A_51b104
        .type   A_51b104, %function
A_51b104:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x60000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_51b104, . - A_51b104

@ FUN_0051b12c
        .global A_51b12c
        .type   A_51b12c, %function
A_51b12c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r2, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51b188
        mov     ip, #0
        str     r5, [r4, #0x80]!
        ldrb    r5, [sp, #8]
        add     r6, r4, #8
        strb    r5, [r4, #4]
        ldr     r5, L51b18c
        str     r1, [r4, #0x10]
        orr     r1, ip, r2, lsl #14
        stm     r6, {r2, r5}
        add     r5, r4, #0x14
        orr     r1, r1, #2
        stm     r5, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L51b188:
        .word   0x001e0084
L51b18c:
        .word   0x00420402
        .size   A_51b12c, . - A_51b12c

@ FUN_0051b190
        .global A_51b190
        .type   A_51b190, %function
A_51b190:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L51b1bc
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51b1bc:
        .word   0x00190040
        .size   A_51b190, . - A_51b190

@ FUN_0051b1c0
        .global A_51b1c0
        .type   A_51b1c0, %function
A_51b1c0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b1ec
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51b1ec:
        .word   0x00150080
        .size   A_51b1c0, . - A_51b1c0

@ FUN_0051b1f0
        .global A_51b1f0
        .type   A_51b1f0, %function
A_51b1f0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        ldr     ip, [sp, #0x28]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51b264
        str     r5, [r4, #0x80]!
        str     r2, [r4, #4]
        ldm     r3, {r5, r6, r7, r8, sb, sl, fp, lr}
        str     r5, [r4, #8]
        add     r5, r4, #0xc
        stm     r5, {r6, r7, r8, sb, sl, fp, lr}
        add     r5, r3, #0x20
        add     sb, r4, #0x38
        ldr     r3, [r3, #0x30]
        ldm     r5, {r5, r6, r7, r8}
        stm     sb, {r3, ip}
        add     sb, r4, #0x28
        stm     sb, {r5, r6, r7, r8}
        ldrb    r3, [sp, #0x2c]
        strb    r3, [r4, #0x40]
        mov     r3, #0xc
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x48]
        str     r2, [r4, #0x44]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L51b264:
        .word   0x00220402
        .size   A_51b1f0, . - A_51b1f0

@ FUN_0051b268
        .global A_51b268
        .type   A_51b268, %function
A_51b268:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xa0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_51b268, . - A_51b268

@ FUN_0051b290
        .global A_51b290
        .type   A_51b290, %function
A_51b290:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b2c4
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L51b2c4:
        .word   0x00180040
        .size   A_51b290, . - A_51b290

@ FUN_0051b2c8
        .global A_51b2c8
        .type   A_51b2c8, %function
A_51b2c8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r2
        mrc     p15, #0, r5, c13, c0, #3
        ldr     ip, L51b324
        mov     r2, #0
        str     ip, [r5, #0x80]!
        str     r3, [r5, #4]
        mrc     p15, #0, ip, c13, c0, #3
        add     r4, ip, #0x180
        orr     r2, r2, r3, lsl #14
        ldm     r4, {r7, r8}
        orr     r2, r2, #2
        str     r2, [ip, #0x180]!
        str     r1, [ip, #4]
        ldr     r0, [r0]
        svc     #0x32
        stm     r4, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L51b320
        ldr     r0, [r5, #8]
        str     r0, [r6]
        ldr     r0, [r5, #4]
L51b320:
        pop     {r4, r5, r6, r7, r8, pc}
L51b324:
        .word   0x00110040
        .size   A_51b2c8, . - A_51b2c8

@ FUN_0051b328
        .global A_51b328
        .type   A_51b328, %function
A_51b328:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b374
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #8]
        strh    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51b36c
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3, r6, r7, r8, sb, ip}
        stm     r5, {r1, r2, r3, r6, r7, r8, sb, ip}
        ldrd    r0, r1, [r4, #0x28]
        strd    r0, r1, [r5, #0x20]
        ldr     r0, [r4, #4]
L51b36c:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51b374:
        .word   0x000d0040
        .size   A_51b328, . - A_51b328

@ FUN_0051b378
        .global A_51b378
        .type   A_51b378, %function
A_51b378:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51b3b8
        str     r3, [r4, #0x80]!
        mov     r3, #0x1000
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #14
        orr     r2, r2, #2
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51b3b8:
        .word   0x00100042
        .size   A_51b378, . - A_51b378

@ FUN_0051b3bc
        .global A_51b3bc
        .type   A_51b3bc, %function
A_51b3bc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r1
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0xb0000
        str     r1, [r5, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51b408
        add     r0, r5, #8
        ldm     r0, {r1, r2, r3, r6, r7, r8, sb, ip}
        stm     r4, {r1, r2, r3, r6, r7, r8, sb, ip}
        add     r1, r5, #0x28
        ldr     r0, [r5, #0x34]
        ldm     r1, {r1, r2, r3}
        str     r0, [r4, #0x2c]
        add     r4, r4, #0x20
        stm     r4, {r1, r2, r3}
        ldr     r0, [r5, #4]
L51b408:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_51b3bc, . - A_51b3bc

@ FUN_0051b454
        .global A_51b454
        .type   A_51b454, %function
A_51b454:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        ldr     r1, [sp, #0x38]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51b4c4
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     lr, r4, #8
        str     r3, [r4, #4]
        ldm     r1, {r3, r5, r6, r7, r8, sb, sl, fp}
        stm     lr, {r3, r5, r6, r7, r8, sb, sl, fp}
        ldr     r3, [r1, #0x24]
        ldr     r1, [r1, #0x20]
        str     r1, [r4, #0x28]
        str     r3, [r4, #0x2c]
        ldrh    r1, [sp, #0x3c]
        strh    r1, [r4, #0x30]
        str     r2, [r4, #0x38]
        str     ip, [r4, #0x34]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51b4bc
        ldr     r1, [sp, #4]
        ldr     r0, [r4, #0xc]
        str     r0, [r1]
        ldr     r0, [r4, #4]
L51b4bc:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L51b4c4:
        .word   0x001b0302
        .size   A_51b454, . - A_51b454

@ FUN_0051b4c8
        .global A_51b4c8
        .type   A_51b4c8, %function
A_51b4c8:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L51b50c
        str     r2, [r4, #0x80]!
        ldrh    r2, [r1]
        strh    r2, [r4, #4]
        ldrb    r1, [r1, #2]
        strb    r1, [r4, #6]
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51b50c:
        .word   0x00210080
        .size   A_51b4c8, . - A_51b4c8

@ FUN_0051b510
        .global A_51b510
        .type   A_51b510, %function
A_51b510:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b54c
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        strh    r1, [r4, #4]
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51b54c:
        .word   0x00070080
        .size   A_51b510, . - A_51b510

@ FUN_0051b550
        .global A_51b550
        .type   A_51b550, %function
A_51b550:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     ip, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51b5b8
        str     r5, [r4, #0x80]!
        ldr     r5, L51b5bc
        str     r2, [r4, #8]
        add     r6, r4, #0x14
        sub     r2, r5, #0x27c00
        str     r5, [r4, #4]
        strd    r2, r3, [r4, #0xc]
        add     r2, r2, #0x400
        stm     r6, {r2, ip}
        mrc     p15, #0, r2, c13, c0, #3
        add     r5, r2, #0x180
        ldr     r2, L51b5c0
        ldrd    r6, r7, [r5]
        str     r1, [r5, #4]
        str     r2, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L51b5b8:
        .word   0x001f0006
L51b5bc:
        .word   0x00420402
L51b5c0:
        .word   0x00a00002
        .size   A_51b550, . - A_51b550

@ FUN_0051b5c4
        .global A_51b5c4
        .type   A_51b5c4, %function
A_51b5c4:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x230000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51b5f4
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L51b5f4:
        pop     {r4, r5, r6, pc}
        .size   A_51b5c4, . - A_51b5c4

@ FUN_0051b5f8
        .global A_51b5f8
        .type   A_51b5f8, %function
A_51b5f8:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b640
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldrb    r1, [sp, #0x10]
        strb    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x14]
        strh    r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51b63c
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51b63c:
        pop     {r4, r5, r6, pc}
L51b640:
        .word   0x00120100
        .size   A_51b5f8, . - A_51b5f8

@ FUN_0051b644
        .global A_51b644
        .type   A_51b644, %function
A_51b644:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51b678
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L51b678:
        .word   0x00200040
        .size   A_51b644, . - A_51b644

@ FUN_0051b67c
        .global A_51b67c
        .type   A_51b67c, %function
A_51b67c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     r4, sp, #0x20
        ldm     r4, {r2, r3, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51b6ec
        str     r5, [r4, #0x80]!
        add     r5, r4, #0x10
        str     r1, [r4, #4]
        ldrh    r1, [sp, #8]
        strh    r1, [r4, #8]
        ldrb    r1, [sp, #0xc]
        strb    r1, [r4, #0xc]
        stm     r5, {r3, ip}
        add     r5, r4, #0x1c
        ldrb    r1, [sp, #0x2c]
        strb    r1, [r4, #0x18]
        lsl     r1, r3, #2
        mov     r3, #0x1400
        orr     r1, r3, r1, lsl #14
        orr     r1, r1, #2
        stm     r5, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L51b6ec:
        .word   0x00170182
        .size   A_51b67c, . - A_51b67c

@ FUN_0051b6f0
        .global A_51b6f0
        .type   A_51b6f0, %function
A_51b6f0:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L51b734
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51b730
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        stm     r5, {r1, r2, r3}
        ldr     r0, [r4, #4]
L51b730:
        pop     {r4, r5, r6, pc}
L51b734:
        .word   0x00130040
        .size   A_51b6f0, . - A_51b6f0

@ FUN_0051b738
        .global A_51b738
        .type   A_51b738, %function
A_51b738:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x30000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_51b738, . - A_51b738

@ FUN_0051b87c
        .global A_51b87c
        .type   A_51b87c, %function
A_51b87c:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L51b89c
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L51b89c:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_51b87c, . - A_51b87c

@ FUN_0051bcc0
        .global A_51bcc0
        .type   A_51bcc0, %function
A_51bcc0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L51bcf8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51bcf4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51bcf4:
        pop     {r4, r5, r6, pc}
L51bcf8:
        .word   0x008aaeb4
        .size   A_51bcc0, . - A_51bcc0

@ FUN_0051bcfc
        .global A_51bcfc
        .type   A_51bcfc, %function
A_51bcfc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2a0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51bd34
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51bd30
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51bd30:
        pop     {r4, r5, r6, pc}
L51bd34:
        .word   0x008aaeb4
        .size   A_51bcfc, . - A_51bcfc

@ FUN_0051bd38
        .global A_51bd38
        .type   A_51bd38, %function
A_51bd38:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51bd6c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51bd70
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51bd6c:
        .word   0x00050040
L51bd70:
        .word   0x008aaeb4
        .size   A_51bd38, . - A_51bd38

@ FUN_0051bd74
        .global A_51bd74
        .type   A_51bd74, %function
A_51bd74:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51bdc8
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2}
        ldrh    r1, [sp, #0xc]
        strh    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0x10]
        str     r0, [r4, #0x18]
        ldr     r0, L51bdcc
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51bdc8:
        .word   0x00110102
L51bdcc:
        .word   0x008aaeb4
        .size   A_51bd74, . - A_51bd74

@ FUN_0051bdd0
        .global A_51bdd0
        .type   A_51bdd0, %function
A_51bdd0:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51be24
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2}
        ldrh    r1, [sp, #0xc]
        strh    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0x10]
        str     r0, [r4, #0x18]
        ldr     r0, L51be28
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51be24:
        .word   0x00120102
L51be28:
        .word   0x008aaeb4
        .size   A_51bdd0, . - A_51bdd0

@ FUN_0051be2c
        .global A_51be2c
        .type   A_51be2c, %function
A_51be2c:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51be80
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2}
        ldrh    r1, [sp, #0xc]
        strh    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0x10]
        str     r0, [r4, #0x18]
        ldr     r0, L51be84
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51be80:
        .word   0x00100102
L51be84:
        .word   0x008aaeb4
        .size   A_51be2c, . - A_51be2c

@ FUN_0051be88
        .global A_51be88
        .type   A_51be88, %function
A_51be88:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51bedc
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2}
        ldrh    r1, [sp, #0xc]
        strh    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0x10]
        str     r0, [r4, #0x18]
        ldr     r0, L51bee0
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51bedc:
        .word   0x00180102
L51bee0:
        .word   0x008aaeb4
        .size   A_51be88, . - A_51be88

@ FUN_0051bee4
        .global A_51bee4
        .type   A_51bee4, %function
A_51bee4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1d0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51bf1c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51bf18
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L51bf18:
        pop     {r4, r5, r6, pc}
L51bf1c:
        .word   0x008aaeb4
        .size   A_51bee4, . - A_51bee4

@ FUN_0051bf20
        .global A_51bf20
        .type   A_51bf20, %function
A_51bf20:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51bf54
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L51bf58
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51bf54:
        .word   0x001c0040
L51bf58:
        .word   0x008aaeb4
        .size   A_51bf20, . - A_51bf20

@ FUN_0051bf5c
        .global A_51bf5c
        .type   A_51bf5c, %function
A_51bf5c:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51bfb0
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2}
        ldrh    r1, [sp, #0xc]
        strh    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #0x10]
        str     r0, [r4, #0x18]
        ldr     r0, L51bfb4
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51bfb0:
        .word   0x00130102
L51bfb4:
        .word   0x008aaeb4
        .size   A_51bf5c, . - A_51bf5c

@ FUN_0051bfb8
        .global A_51bfb8
        .type   A_51bfb8, %function
A_51bfb8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2c0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51bfe4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51bfe4:
        .word   0x008aaeb4
        .size   A_51bfb8, . - A_51bfb8

@ FUN_0051bfe8
        .global A_51bfe8
        .type   A_51bfe8, %function
A_51bfe8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c020
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c01c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c01c:
        pop     {r4, r5, r6, pc}
L51c020:
        .word   0x008aaeb4
        .size   A_51bfe8, . - A_51bfe8

@ FUN_0051c024
        .global A_51c024
        .type   A_51c024, %function
A_51c024:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c058
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c05c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c058:
        .word   0x00010040
L51c05c:
        .word   0x008aaeb4
        .size   A_51c024, . - A_51c024

@ FUN_0051c060
        .global A_51c060
        .type   A_51c060, %function
A_51c060:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x270000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c08c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51c08c:
        .word   0x008aaeb4
        .size   A_51c060, . - A_51c060

@ FUN_0051c090
        .global A_51c090
        .type   A_51c090, %function
A_51c090:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c0c8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c0c4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c0c4:
        pop     {r4, r5, r6, pc}
L51c0c8:
        .word   0x008aaeb4
        .size   A_51c090, . - A_51c090

@ FUN_0051c0cc
        .global A_51c0cc
        .type   A_51c0cc, %function
A_51c0cc:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c100
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c104
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c100:
        .word   0x00030040
L51c104:
        .word   0x008aaeb4
        .size   A_51c0cc, . - A_51c0cc

@ FUN_0051c108
        .global A_51c108
        .type   A_51c108, %function
A_51c108:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x260000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c134
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51c134:
        .word   0x008aaeb4
        .size   A_51c108, . - A_51c108

@ FUN_0051c138
        .global A_51c138
        .type   A_51c138, %function
A_51c138:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2b0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c164
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51c164:
        .word   0x008aaeb4
        .size   A_51c138, . - A_51c138

@ FUN_0051c168
        .global A_51c168
        .type   A_51c168, %function
A_51c168:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x280000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c1a0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c19c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c19c:
        pop     {r4, r5, r6, pc}
L51c1a0:
        .word   0x008aaeb4
        .size   A_51c168, . - A_51c168

@ FUN_0051c1e0
        .global A_51c1e0
        .type   A_51c1e0, %function
A_51c1e0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1b0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c218
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c214
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L51c214:
        pop     {r4, r5, r6, pc}
L51c218:
        .word   0x008aaeb4
        .size   A_51c1e0, . - A_51c1e0

@ FUN_0051c21c
        .global A_51c21c
        .type   A_51c21c, %function
A_51c21c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c250
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c254
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c250:
        .word   0x00070040
L51c254:
        .word   0x008aaeb4
        .size   A_51c21c, . - A_51c21c

@ FUN_0051c258
        .global A_51c258
        .type   A_51c258, %function
A_51c258:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c28c
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L51c290
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c28c:
        .word   0x001a0040
L51c290:
        .word   0x008aaeb4
        .size   A_51c258, . - A_51c258

@ FUN_0051c294
        .global A_51c294
        .type   A_51c294, %function
A_51c294:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x160000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c2cc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c2c8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c2c8:
        pop     {r4, r5, r6, pc}
L51c2cc:
        .word   0x008aaeb4
        .size   A_51c294, . - A_51c294

@ FUN_0051c2d0
        .global A_51c2d0
        .type   A_51c2d0, %function
A_51c2d0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x170000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c308
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c304
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c304:
        pop     {r4, r5, r6, pc}
L51c308:
        .word   0x008aaeb4
        .size   A_51c2d0, . - A_51c2d0

@ FUN_0051c30c
        .global A_51c30c
        .type   A_51c30c, %function
A_51c30c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x150000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c344
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c340
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c340:
        pop     {r4, r5, r6, pc}
L51c344:
        .word   0x008aaeb4
        .size   A_51c30c, . - A_51c30c

@ FUN_0051c348
        .global A_51c348
        .type   A_51c348, %function
A_51c348:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2d0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c38c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c388
        add     r0, r4, #8
        ldm     r0, {r1, r2}
        ldr     r0, [r4, #0x10]
        str     r0, [r5, #8]
        stm     r5, {r1, r2}
        ldr     r0, [r4, #4]
L51c388:
        pop     {r4, r5, r6, pc}
L51c38c:
        .word   0x008aaeb4
        .size   A_51c348, . - A_51c348

@ FUN_0051c390
        .global A_51c390
        .type   A_51c390, %function
A_51c390:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xa0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c3c8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c3c4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c3c4:
        pop     {r4, r5, r6, pc}
L51c3c8:
        .word   0x008aaeb4
        .size   A_51c390, . - A_51c390

@ FUN_0051c3cc
        .global A_51c3cc
        .type   A_51c3cc, %function
A_51c3cc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xf0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c404
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c400
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51c400:
        pop     {r4, r5, r6, pc}
L51c404:
        .word   0x008aaeb4
        .size   A_51c3cc, . - A_51c3cc

@ FUN_0051c408
        .global A_51c408
        .type   A_51c408, %function
A_51c408:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x190000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c440
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c43c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c43c:
        pop     {r4, r5, r6, pc}
L51c440:
        .word   0x008aaeb4
        .size   A_51c408, . - A_51c408

@ FUN_0051c444
        .global A_51c444
        .type   A_51c444, %function
A_51c444:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51c484
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2}
        add     r3, r4, #4
        ldr     r0, [r0, #8]
        str     r0, [r4, #0xc]
        ldr     r0, L51c488
        stm     r3, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51c484:
        .word   0x002901c0
L51c488:
        .word   0x008aaeb4
        .size   A_51c444, . - A_51c444

@ FUN_0051c48c
        .global A_51c48c
        .type   A_51c48c, %function
A_51c48c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c4c0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c4c4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c4c0:
        .word   0x00090040
L51c4c4:
        .word   0x008aaeb4
        .size   A_51c48c, . - A_51c48c

@ FUN_0051c4c8
        .global A_51c4c8
        .type   A_51c4c8, %function
A_51c4c8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1f0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c518
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c514
        ldr     r1, [r4, #8]
        str     r1, [r5]
        ldr     r1, [r4, #0xc]
        str     r1, [r5, #4]
        ldr     r1, [r4, #0x10]
        str     r1, [r5, #8]
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        ldr     r0, [r4, #4]
L51c514:
        pop     {r4, r5, r6, pc}
L51c518:
        .word   0x008aaeb4
        .size   A_51c4c8, . - A_51c4c8

@ FUN_0051c51c
        .global A_51c51c
        .type   A_51c51c, %function
A_51c51c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c554
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c550
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c550:
        pop     {r4, r5, r6, pc}
L51c554:
        .word   0x008aaeb4
        .size   A_51c51c, . - A_51c51c

@ FUN_0051c558
        .global A_51c558
        .type   A_51c558, %function
A_51c558:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x140000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c590
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c58c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c58c:
        pop     {r4, r5, r6, pc}
L51c590:
        .word   0x008aaeb4
        .size   A_51c558, . - A_51c558

@ FUN_0051c594
        .global A_51c594
        .type   A_51c594, %function
A_51c594:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51c5e0
        str     r1, [r4, #0x80]!
        ldr     r1, [r0]
        str     r1, [r4, #4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #8]
        ldr     r1, [r0, #8]
        str     r1, [r4, #0xc]
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        ldr     r0, L51c5e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51c5e0:
        .word   0x001e0100
L51c5e4:
        .word   0x008aaeb4
        .size   A_51c594, . - A_51c594

@ FUN_0051c5e8
        .global A_51c5e8
        .type   A_51c5e8, %function
A_51c5e8:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c61c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c620
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c61c:
        .word   0x000b0040
L51c620:
        .word   0x008aaeb4
        .size   A_51c5e8, . - A_51c5e8

@ FUN_0051c624
        .global A_51c624
        .type   A_51c624, %function
A_51c624:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c658
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c65c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c658:
        .word   0x00200040
L51c65c:
        .word   0x008aaeb4
        .size   A_51c624, . - A_51c624

@ FUN_0051c660
        .global A_51c660
        .type   A_51c660, %function
A_51c660:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c698
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c694
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51c694:
        pop     {r4, r5, r6, pc}
L51c698:
        .word   0x008aaeb4
        .size   A_51c660, . - A_51c660

@ FUN_0051c69c
        .global A_51c69c
        .type   A_51c69c, %function
A_51c69c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c6d0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L51c6d4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c6d0:
        .word   0x000d0040
L51c6d4:
        .word   0x008aaeb4
        .size   A_51c69c, . - A_51c69c

@ FUN_0051c760
        .global A_51c760
        .type   A_51c760, %function
A_51c760:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c7bc
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L51c7c0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c7b4
        ldr     r1, [r4, #8]
        str     r1, [r5]
        ldr     r1, [r4, #0xc]
        str     r1, [r5, #4]
        ldr     r1, [r4, #0x10]
        str     r1, [r5, #8]
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        ldr     r0, [r4, #4]
L51c7b4:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L51c7bc:
        .word   0x00210040
L51c7c0:
        .word   0x008aaeb4
        .size   A_51c760, . - A_51c760

@ FUN_0051c7c4
        .global A_51c7c4
        .type   A_51c7c4, %function
A_51c7c4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x230000
        str     r0, [r4, #0x80]!
        ldr     r0, L51c7fc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51c7f8
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L51c7f8:
        pop     {r4, r5, r6, pc}
L51c7fc:
        .word   0x008aaeb4
        .size   A_51c7c4, . - A_51c7c4

@ FUN_0051c800
        .global A_51c800
        .type   A_51c800, %function
A_51c800:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L51c834
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp]
        strh    r0, [r4, #4]
        ldr     r0, L51c838
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L51c834:
        .word   0x00220040
L51c838:
        .word   0x008aaeb4
        .size   A_51c800, . - A_51c800

@ FUN_0051f134
        .global A_51f134
        .type   A_51f134, %function
A_51f134:
        ldr     r1, L51f194
        push    {r4, r5, r6, lr}
        add     r4, r0, #0x10
        str     r1, [r0]
        ldr     r0, [r0, #0x10]
        mov     r5, #0
        cmp     r0, #0
        beq     L51f15c
        svc     #0x23
        str     r5, [r4]
L51f15c:
        ldr     r0, [r4, #-4]!
        cmp     r0, #0
        beq     L51f170
        svc     #0x23
        str     r5, [r4]
L51f170:
        sub     r6, r4, #0xc
        ldr     r0, [r4, #-4]!
        cmp     r0, #0
        beq     L51f188
        svc     #0x23
        str     r5, [r4]
L51f188:
        mov     r0, r6
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L51f194:
        .word   0x0082c3f4
        .size   A_51f134, . - A_51f134

@ FUN_0051f198
        .global A_51f198
        .type   A_51f198, %function
A_51f198:
        ldr     r1, L51f1f4
        push    {r4, r5, r6, lr}
        add     r4, r0, #0x10
        str     r1, [r0]
        ldr     r0, [r0, #0x10]
        mov     r5, #0
        cmp     r0, #0
        beq     L51f1c0
        svc     #0x23
        str     r5, [r4]
L51f1c0:
        ldr     r0, [r4, #-4]!
        cmp     r0, #0
        beq     L51f1d4
        svc     #0x23
        str     r5, [r4]
L51f1d4:
        sub     r6, r4, #0xc
        ldr     r0, [r4, #-4]!
        cmp     r0, #0
        beq     L51f1ec
        svc     #0x23
        str     r5, [r4]
L51f1ec:
        mov     r0, r6
        pop     {r4, r5, r6, pc}
L51f1f4:
        .word   0x0082c3f4
        .size   A_51f198, . - A_51f198

@ FUN_0051f1f8
        .global A_51f1f8
        .type   A_51f1f8, %function
A_51f1f8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f234
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f234:
        .word   0x001e0042
        .size   A_51f1f8, . - A_51f1f8

@ FUN_0051f238
        .global A_51f238
        .type   A_51f238, %function
A_51f238:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, r6}
        add     r4, sp, #0x18
        ldm     r4, {r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L51f298
        str     r8, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3, ip}
        mov     r1, #0xc
        add     lr, r4, #0x14
        orr     r1, r1, ip, lsl #4
        stm     lr, {r1, r7}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f294
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L51f294:
        pop     {r4, r5, r6, r7, r8, pc}
L51f298:
        .word   0x00280102
        .size   A_51f238, . - A_51f238

@ FUN_0051f29c
        .global A_51f29c
        .type   A_51f29c, %function
A_51f29c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L51f2c8
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f2c8:
        .word   0x00260040
        .size   A_51f29c, . - A_51f29c

@ FUN_0051f2cc
        .global A_51f2cc
        .type   A_51f2cc, %function
A_51f2cc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51f2f4
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f2f4:
        .word   0x040a0000
        .size   A_51f2cc, . - A_51f2cc

@ FUN_0051f2f8
        .global A_51f2f8
        .type   A_51f2f8, %function
A_51f2f8:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51f338
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f330
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51f330:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51f338:
        .word   0x002e0040
        .size   A_51f2f8, . - A_51f2f8

@ FUN_0051f33c
        .global A_51f33c
        .type   A_51f33c, %function
A_51f33c:
        push    {r4, r5, r6, lr}
        mov     r5, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f384
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f380
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51f380:
        pop     {r4, r5, r6, pc}
L51f384:
        .word   0x001a0042
        .size   A_51f33c, . - A_51f33c

@ FUN_0051f388
        .global A_51f388
        .type   A_51f388, %function
A_51f388:
        push    {r4, r5, r6, lr}
        mov     r5, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f3d8
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0x10]
        strb    r3, [r4, #8]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f3d4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51f3d4:
        pop     {r4, r5, r6, pc}
L51f3d8:
        .word   0x00240082
        .size   A_51f388, . - A_51f388

@ FUN_0051f3dc
        .global A_51f3dc
        .type   A_51f3dc, %function
A_51f3dc:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f42c
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        ldrb    r3, [sp, #0x18]
        strb    r3, [r4, #0xc]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51f42c:
        .word   0x000b00c2
        .size   A_51f3dc, . - A_51f3dc

@ FUN_0051f430
        .global A_51f430
        .type   A_51f430, %function
A_51f430:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51f478
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        add     ip, r4, #0xc
        strh    r1, [r4, #4]
        mov     r1, #0xa
        orr     r1, r1, r3, lsl #4
        str     r3, [r4, #8]
        stm     ip, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51f478:
        .word   0x00140082
        .size   A_51f430, . - A_51f430

@ FUN_0051f47c
        .global A_51f47c
        .type   A_51f47c, %function
A_51f47c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xa0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f4ac
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51f4ac:
        pop     {r4, r5, r6, pc}
        .size   A_51f47c, . - A_51f47c

@ FUN_0051f4b0
        .global A_51f4b0
        .type   A_51f4b0, %function
A_51f4b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f4ec
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f4ec:
        .word   0x043f0042
        .size   A_51f4b0, . - A_51f4b0

@ FUN_0051f4f0
        .global A_51f4f0
        .type   A_51f4f0, %function
A_51f4f0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f52c
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f52c:
        .word   0x000f0042
        .size   A_51f4f0, . - A_51f4f0

@ FUN_0051f530
        .global A_51f530
        .type   A_51f530, %function
A_51f530:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xe0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_51f530, . - A_51f530

@ FUN_0051f558
        .global A_51f558
        .type   A_51f558, %function
A_51f558:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r3
        ldrd    r6, r7, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f5b4
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f5b0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r7]
        ldr     r0, [r4, #4]
L51f5b0:
        pop     {r4, r5, r6, r7, r8, pc}
L51f5b4:
        .word   0x00210042
        .size   A_51f558, . - A_51f558

@ FUN_0051f5b8
        .global A_51f5b8
        .type   A_51f5b8, %function
A_51f5b8:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f614
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        ldrb    r3, [sp, #0x24]
        strb    r3, [r4, #0xc]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f60c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51f60c:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L51f614:
        .word   0x002300c2
        .size   A_51f5b8, . - A_51f5b8

@ FUN_0051f618
        .global A_51f618
        .type   A_51f618, %function
A_51f618:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51f64c
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L51f64c:
        .word   0x00090040
        .size   A_51f618, . - A_51f618

@ FUN_0051f650
        .global A_51f650
        .type   A_51f650, %function
A_51f650:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x40000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f680
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51f680:
        pop     {r4, r5, r6, pc}
        .size   A_51f650, . - A_51f650

@ FUN_0051f684
        .global A_51f684
        .type   A_51f684, %function
A_51f684:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f6cc
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51f6cc:
        .word   0x000c0082
        .size   A_51f684, . - A_51f684

@ FUN_0051f6d0
        .global A_51f6d0
        .type   A_51f6d0, %function
A_51f6d0:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51f724
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        add     r6, r4, #0xc
        strh    r1, [r4, #4]
        mov     r1, #0xc
        orr     r1, r1, r3, lsl #4
        str     r3, [r4, #8]
        stm     r6, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f71c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51f71c:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L51f724:
        .word   0x00160082
        .size   A_51f6d0, . - A_51f6d0

@ FUN_0051f728
        .global A_51f728
        .type   A_51f728, %function
A_51f728:
        push    {r4, lr}
        ldr     r1, [sp, #8]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51f764
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldrb    r1, [sp, #0xc]
        strb    r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f764:
        .word   0x00020100
        .size   A_51f728, . - A_51f728

@ FUN_0051f768
        .global A_51f768
        .type   A_51f768, %function
A_51f768:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51f7a4
        str     ip, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f7a4:
        .word   0x00180082
        .size   A_51f768, . - A_51f768

@ FUN_0051f7a8
        .global A_51f7a8
        .type   A_51f7a8, %function
A_51f7a8:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L51f7e0
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f7dc
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51f7dc:
        pop     {r4, r5, r6, pc}
L51f7e0:
        .word   0x002c0040
        .size   A_51f7a8, . - A_51f7a8

@ FUN_0051f7e4
        .global A_51f7e4
        .type   A_51f7e4, %function
A_51f7e4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f820
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f820:
        .word   0x04280042
        .size   A_51f7e4, . - A_51f7e4

@ FUN_0051f824
        .global A_51f824
        .type   A_51f824, %function
A_51f824:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L51f85c
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51f85c:
        .word   0x002b0080
        .size   A_51f824, . - A_51f824

@ FUN_0051f860
        .global A_51f860
        .type   A_51f860, %function
A_51f860:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f89c
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f89c:
        .word   0x04270042
        .size   A_51f860, . - A_51f860

@ FUN_0051f8a0
        .global A_51f8a0
        .type   A_51f8a0, %function
A_51f8a0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x70000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51f8d0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51f8d0:
        pop     {r4, r5, r6, pc}
        .size   A_51f8a0, . - A_51f8a0

@ FUN_0051f8d4
        .global A_51f8d4
        .type   A_51f8d4, %function
A_51f8d4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f910
        str     r3, [r4, #0x80]!
        mov     r3, #0xc
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f910:
        .word   0x04260042
        .size   A_51f8d4, . - A_51f8d4

@ FUN_0051f914
        .global A_51f914
        .type   A_51f914, %function
A_51f914:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f954
        mov     r1, #0
        str     r3, [r4, #0x80]!
        ldrh    r3, [sp, #4]
        strh    r3, [r4, #4]
        add     r3, r4, #8
        stm     r3, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51f954:
        .word   0x00150042
        .size   A_51f914, . - A_51f914

@ FUN_0051f958
        .global A_51f958
        .type   A_51f958, %function
A_51f958:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f994
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f994:
        .word   0x04250042
        .size   A_51f958, . - A_51f958

@ FUN_0051f998
        .global A_51f998
        .type   A_51f998, %function
A_51f998:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51f9d4
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51f9d4:
        .word   0x001d0042
        .size   A_51f998, . - A_51f998

@ FUN_0051f9d8
        .global A_51f9d8
        .type   A_51f9d8, %function
A_51f9d8:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r2, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51fa28
        str     ip, [r4, #0x80]!
        add     ip, r4, #0x10
        str     r1, [r4, #4]
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #8]
        mov     r1, #0xc
        orr     r1, r1, r2, lsl #4
        str     r2, [r4, #0xc]
        stm     ip, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L51fa28:
        .word   0x002700c2
        .size   A_51f9d8, . - A_51f9d8

@ FUN_0051fa2c
        .global A_51fa2c
        .type   A_51fa2c, %function
A_51fa2c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x1f0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51fa5c
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L51fa5c:
        pop     {r4, r5, r6, pc}
        .size   A_51fa2c, . - A_51fa2c

@ FUN_0051fa60
        .global A_51fa60
        .type   A_51fa60, %function
A_51fa60:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51faa8
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r2, r3, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51faa8:
        .word   0x042e00c2
        .size   A_51fa60, . - A_51fa60

@ FUN_0051faac
        .global A_51faac
        .type   A_51faac, %function
A_51faac:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51faf4
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r2, r3, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51faf4:
        .word   0x043000c2
        .size   A_51faac, . - A_51faac

@ FUN_0051faf8
        .global A_51faf8
        .type   A_51faf8, %function
A_51faf8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        add     r4, sp, #0x34
        ldm     r4, {r1, r5, r6}
        add     r4, sp, #0x28
        ldr     sb, [sp, #0x20]
        ldm     r4, {r7, r8, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     sl, L51fb68
        str     sl, [r4, #0x80]!
        add     lr, r4, #4
        str     r1, [r4, #0x18]
        stm     lr, {r2, r3, sb}
        mov     r2, #0xc
        add     lr, r4, #0x1c
        orr     r1, r2, r1, lsl #4
        stm     lr, {r1, ip}
        add     lr, r4, #0x10
        stm     lr, {r7, r8}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51fb64
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L51fb64:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51fb68:
        .word   0x04170182
        .size   A_51faf8, . - A_51faf8

@ FUN_0051fb6c
        .global A_51fb6c
        .type   A_51fb6c, %function
A_51fb6c:
        push    {r4, lr}
        ldr     r1, [sp, #8]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51fba0
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51fba0:
        .word   0x041500c0
        .size   A_51fb6c, . - A_51fb6c

@ FUN_0051fba4
        .global A_51fba4
        .type   A_51fba4, %function
A_51fba4:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r5, [sp, #0x18]
        ldr     r6, [sp, #0x24]
        ldr     ip, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L51fc0c
        str     r7, [r4, #0x80]!
        add     r8, r4, #4
        add     r7, r4, #0x14
        stm     r8, {r1, r3}
        ldrh    r1, [sp, #0x1c]
        strh    r1, [r4, #0xc]
        str     ip, [r4, #0x10]
        mov     ip, #0xc
        orr     r1, ip, r3, lsl #6
        stm     r7, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51fc08
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldrh    r0, [r4, #0xc]
        strh    r0, [r6]
        ldr     r0, [r4, #4]
L51fc08:
        pop     {r4, r5, r6, r7, r8, pc}
L51fc0c:
        .word   0x00120102
        .size   A_51fba4, . - A_51fba4

@ FUN_0051fc10
        .global A_51fc10
        .type   A_51fc10, %function
A_51fc10:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x1c
        ldm     r4, {r1, r6, ip}
        ldr     r5, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L51fc70
        str     r7, [r4, #0x80]!
        add     r8, r4, #0xc
        strd    r2, r3, [r4, #4]
        stm     r8, {r1, ip}
        mov     r2, #0xa
        add     r8, r4, #0x14
        orr     r1, r2, r1, lsl #4
        stm     r8, {r1, r5}
        mov     r1, #0xc
        add     r8, r4, #0x1c
        orr     r1, r1, ip, lsl #4
        stm     r8, {r1, r6}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L51fc70:
        .word   0x04390104
        .size   A_51fc10, . - A_51fc10

@ FUN_0051fc74
        .global A_51fc74
        .type   A_51fc74, %function
A_51fc74:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51fcbc
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r2, r3, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51fcbc:
        .word   0x040c00c2
        .size   A_51fc74, . - A_51fc74

@ FUN_0051fcc0
        .global A_51fcc0
        .type   A_51fcc0, %function
A_51fcc0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51fcec
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51fcec:
        .word   0x040b0080
        .size   A_51fcc0, . - A_51fcc0

@ FUN_0051fcf0
        .global A_51fcf0
        .type   A_51fcf0, %function
A_51fcf0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x4200000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51fd20
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51fd20:
        pop     {r4, r5, r6, pc}
        .size   A_51fcf0, . - A_51fcf0

@ FUN_0051fd24
        .global A_51fd24
        .type   A_51fd24, %function
A_51fd24:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51fd74
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r2, r3, ip}
        ldrb    r2, [sp, #0x18]
        strb    r2, [r4, #0x10]
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x18]
        str     r2, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51fd74:
        .word   0x04090102
        .size   A_51fd24, . - A_51fd24

@ FUN_0051fd78
        .global A_51fd78
        .type   A_51fd78, %function
A_51fd78:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51fdac
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51fda8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51fda8:
        pop     {r4, r5, r6, pc}
L51fdac:
        .word   0x041e0000
        .size   A_51fd78, . - A_51fd78

@ FUN_0051fdb0
        .global A_51fdb0
        .type   A_51fdb0, %function
A_51fdb0:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, r5}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51fdf0
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51fdec
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51fdec:
        pop     {r4, r5, r6, pc}
L51fdf0:
        .word   0x041b00c0
        .size   A_51fdb0, . - A_51fdb0

@ FUN_0051fdf4
        .global A_51fdf4
        .type   A_51fdf4, %function
A_51fdf4:
        push    {r4, lr}
        ldr     r1, [sp, #8]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L51fe30
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldrb    r1, [sp, #0xc]
        strb    r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51fe30:
        .word   0x041a0100
        .size   A_51fdf4, . - A_51fdf4

@ FUN_0051fe34
        .global A_51fe34
        .type   A_51fe34, %function
A_51fe34:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L51fe68
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        mov     r1, #0x20
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51fe68:
        .word   0x04010082
        .size   A_51fe34, . - A_51fe34

@ FUN_0051fe6c
        .global A_51fe6c
        .type   A_51fe6c, %function
A_51fe6c:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51feb4
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r2, r3, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51feb4:
        .word   0x042f00c2
        .size   A_51fe6c, . - A_51fe6c

@ FUN_0051feb8
        .global A_51feb8
        .type   A_51feb8, %function
A_51feb8:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x18
        ldr     r5, [sp, #0x10]
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L51ff10
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, r5}
        ldrb    r2, [sp, #0x14]
        strb    r2, [r4, #0x10]
        mov     r2, #0xc
        str     ip, [r4, #0x14]
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x1c]
        str     r2, [r4, #0x18]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51ff10:
        .word   0x04160142
        .size   A_51feb8, . - A_51feb8

@ FUN_0051ff14
        .global A_51ff14
        .type   A_51ff14, %function
A_51ff14:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L51ff48
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L51ff48:
        .word   0x04290002
        .size   A_51ff14, . - A_51ff14

@ FUN_0051ff4c
        .global A_51ff4c
        .type   A_51ff4c, %function
A_51ff4c:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L51ff94
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r2, r3, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L51ff94:
        .word   0x043400c2
        .size   A_51ff4c, . - A_51ff4c

@ FUN_0051ff98
        .global A_51ff98
        .type   A_51ff98, %function
A_51ff98:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldr     r5, [sp, #0x18]
        ldm     r4, {r1, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L51ffec
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, ip}
        mov     r2, #0xa
        orr     r2, r2, ip, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L51ffe8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L51ffe8:
        pop     {r4, r5, r6, pc}
L51ffec:
        .word   0x043700c2
        .size   A_51ff98, . - A_51ff98

@ FUN_0051fff0
        .global A_51fff0
        .type   A_51fff0, %function
A_51fff0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L52002c
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L52002c:
        .word   0x001c0042
        .size   A_51fff0, . - A_51fff0

@ FUN_005219e0
        .global A_5219e0
        .type   A_5219e0, %function
A_5219e0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L521a10
        str     r1, [r4, #0x80]!
        mov     r1, #0x20
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L521a10:
        .word   0x00010002
        .size   A_5219e0, . - A_5219e0

@ FUN_00521a14
        .global A_521a14
        .type   A_521a14, %function
A_521a14:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x60000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521a44
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L521a44:
        pop     {r4, r5, r6, pc}
        .size   A_521a14, . - A_521a14

@ FUN_00521a48
        .global A_521a48
        .type   A_521a48, %function
A_521a48:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521a84
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L521a84:
        .word   0x001e0042
        .size   A_521a48, . - A_521a48

@ FUN_00521a88
        .global A_521a88
        .type   A_521a88, %function
A_521a88:
        push    {r4, r5, r6, r7, r8, lr}
        add     r4, sp, #0x20
        ldm     r4, {r5, r6}
        add     r4, sp, #0x18
        ldm     r4, {r7, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r8, L521ae8
        str     r8, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r1, r2, r3, ip}
        mov     r1, #0xc
        add     lr, r4, #0x14
        orr     r1, r1, ip, lsl #4
        stm     lr, {r1, r7}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521ae4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L521ae4:
        pop     {r4, r5, r6, r7, r8, pc}
L521ae8:
        .word   0x00280102
        .size   A_521a88, . - A_521a88

@ FUN_00521aec
        .global A_521aec
        .type   A_521aec, %function
A_521aec:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L521b18
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L521b18:
        .word   0x00260040
        .size   A_521aec, . - A_521aec

@ FUN_00521b1c
        .global A_521b1c
        .type   A_521b1c, %function
A_521b1c:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L521b5c
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521b54
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L521b54:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L521b5c:
        .word   0x002e0040
        .size   A_521b1c, . - A_521b1c

@ FUN_00521b60
        .global A_521b60
        .type   A_521b60, %function
A_521b60:
        push    {r4, r5, r6, lr}
        mov     r5, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521ba8
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521ba4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L521ba4:
        pop     {r4, r5, r6, pc}
L521ba8:
        .word   0x001a0042
        .size   A_521b60, . - A_521b60

@ FUN_00521bac
        .global A_521bac
        .type   A_521bac, %function
A_521bac:
        push    {r4, r5, r6, lr}
        mov     r5, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521bfc
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0x10]
        strb    r3, [r4, #8]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521bf8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L521bf8:
        pop     {r4, r5, r6, pc}
L521bfc:
        .word   0x00240082
        .size   A_521bac, . - A_521bac

@ FUN_00521c00
        .global A_521c00
        .type   A_521c00, %function
A_521c00:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521c50
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        ldrb    r3, [sp, #0x18]
        strb    r3, [r4, #0xc]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L521c50:
        .word   0x000b00c2
        .size   A_521c00, . - A_521c00

@ FUN_00521c54
        .global A_521c54
        .type   A_521c54, %function
A_521c54:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L521c9c
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        add     ip, r4, #0xc
        strh    r1, [r4, #4]
        mov     r1, #0xa
        orr     r1, r1, r3, lsl #4
        str     r3, [r4, #8]
        stm     ip, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L521c9c:
        .word   0x00140082
        .size   A_521c54, . - A_521c54

@ FUN_00521ca0
        .global A_521ca0
        .type   A_521ca0, %function
A_521ca0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xa0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521cd0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L521cd0:
        pop     {r4, r5, r6, pc}
        .size   A_521ca0, . - A_521ca0

@ FUN_00521cd4
        .global A_521cd4
        .type   A_521cd4, %function
A_521cd4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521d10
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L521d10:
        .word   0x000f0042
        .size   A_521cd4, . - A_521cd4

@ FUN_00521d14
        .global A_521d14
        .type   A_521d14, %function
A_521d14:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0xe0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
        .size   A_521d14, . - A_521d14

@ FUN_00521d3c
        .global A_521d3c
        .type   A_521d3c, %function
A_521d3c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r3
        ldrd    r6, r7, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521d98
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521d94
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r7]
        ldr     r0, [r4, #4]
L521d94:
        pop     {r4, r5, r6, r7, r8, pc}
L521d98:
        .word   0x00210042
        .size   A_521d3c, . - A_521d3c

@ FUN_00521d9c
        .global A_521d9c
        .type   A_521d9c, %function
A_521d9c:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521df8
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        ldrb    r3, [sp, #0x24]
        strb    r3, [r4, #0xc]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x14]
        str     r2, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521df0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L521df0:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L521df8:
        .word   0x002300c2
        .size   A_521d9c, . - A_521d9c

@ FUN_00521dfc
        .global A_521dfc
        .type   A_521dfc, %function
A_521dfc:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L521e30
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L521e30:
        .word   0x00090040
        .size   A_521dfc, . - A_521dfc

@ FUN_00521e34
        .global A_521e34
        .type   A_521e34, %function
A_521e34:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x40000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521e64
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L521e64:
        pop     {r4, r5, r6, pc}
        .size   A_521e34, . - A_521e34

@ FUN_00521e68
        .global A_521e68
        .type   A_521e68, %function
A_521e68:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L521eb0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L521eb0:
        .word   0x000c0082
        .size   A_521e68, . - A_521e68

@ FUN_00521eb4
        .global A_521eb4
        .type   A_521eb4, %function
A_521eb4:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        ldr     r5, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L521f08
        str     r1, [r4, #0x80]!
        ldrh    r1, [sp, #4]
        add     r6, r4, #0xc
        strh    r1, [r4, #4]
        mov     r1, #0xc
        orr     r1, r1, r3, lsl #4
        str     r3, [r4, #8]
        stm     r6, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521f00
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L521f00:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L521f08:
        .word   0x00160082
        .size   A_521eb4, . - A_521eb4

@ FUN_00521f0c
        .global A_521f0c
        .type   A_521f0c, %function
A_521f0c:
        push    {r4, lr}
        ldr     r1, [sp, #8]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L521f48
        str     ip, [r4, #0x80]!
        str     r1, [r4, #0xc]
        strd    r2, r3, [r4, #4]
        ldrb    r1, [sp, #0xc]
        strb    r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L521f48:
        .word   0x00020100
        .size   A_521f0c, . - A_521f0c

@ FUN_00521f4c
        .global A_521f4c
        .type   A_521f4c, %function
A_521f4c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L521f88
        str     ip, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        mov     r3, #0xa
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L521f88:
        .word   0x00180082
        .size   A_521f4c, . - A_521f4c

@ FUN_00521f8c
        .global A_521f8c
        .type   A_521f8c, %function
A_521f8c:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L521fc4
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L521fc0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L521fc0:
        pop     {r4, r5, r6, pc}
L521fc4:
        .word   0x002c0040
        .size   A_521f8c, . - A_521f8c

@ FUN_00521fc8
        .global A_521fc8
        .type   A_521fc8, %function
A_521fc8:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L522000
        str     r2, [r4, #0x80]!
        str     r1, [r4, #4]
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L522000:
        .word   0x002b0080
        .size   A_521fc8, . - A_521fc8

@ FUN_00522004
        .global A_522004
        .type   A_522004, %function
A_522004:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x70000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L522034
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L522034:
        pop     {r4, r5, r6, pc}
        .size   A_522004, . - A_522004

@ FUN_00522038
        .global A_522038
        .type   A_522038, %function
A_522038:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L52206c
        add     r4, r4, #0x80
        stm     r4, {r1, r2, r3}
        mov     r1, #0x20
        str     r1, [r4, #0xc]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L52206c:
        .word   0x00010082
        .size   A_522038, . - A_522038

@ FUN_00522070
        .global A_522070
        .type   A_522070, %function
A_522070:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L5220b0
        mov     r1, #0
        str     r3, [r4, #0x80]!
        ldrh    r3, [sp, #4]
        strh    r3, [r4, #4]
        add     r3, r4, #8
        stm     r3, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L5220b0:
        .word   0x00150042
        .size   A_522070, . - A_522070

@ FUN_005220b4
        .global A_5220b4
        .type   A_5220b4, %function
A_5220b4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L5220f0
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5220f0:
        .word   0x001d0042
        .size   A_5220b4, . - A_5220b4

@ FUN_005220f4
        .global A_5220f4
        .type   A_5220f4, %function
A_5220f4:
        push    {r0, r1, r2, r3, r4, lr}
        ldr     r2, [sp, #0x18]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L522144
        str     ip, [r4, #0x80]!
        add     ip, r4, #0x10
        str     r1, [r4, #4]
        ldrb    r1, [sp, #8]
        strb    r1, [r4, #8]
        mov     r1, #0xc
        orr     r1, r1, r2, lsl #4
        str     r2, [r4, #0xc]
        stm     ip, {r1, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L522144:
        .word   0x002700c2
        .size   A_5220f4, . - A_5220f4

@ FUN_00522148
        .global A_522148
        .type   A_522148, %function
A_522148:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x1f0000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L522178
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L522178:
        pop     {r4, r5, r6, pc}
        .size   A_522148, . - A_522148

@ FUN_0052217c
        .global A_52217c
        .type   A_52217c, %function
A_52217c:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r5, [sp, #0x18]
        ldr     r6, [sp, #0x24]
        ldr     ip, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r7, L5221e4
        str     r7, [r4, #0x80]!
        add     r8, r4, #4
        add     r7, r4, #0x14
        stm     r8, {r1, r3}
        ldrh    r1, [sp, #0x1c]
        strh    r1, [r4, #0xc]
        str     ip, [r4, #0x10]
        mov     ip, #0xc
        orr     r1, ip, r3, lsl #6
        stm     r7, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5221e0
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldrh    r0, [r4, #0xc]
        strh    r0, [r6]
        ldr     r0, [r4, #4]
L5221e0:
        pop     {r4, r5, r6, r7, r8, pc}
L5221e4:
        .word   0x00120102
        .size   A_52217c, . - A_52217c

@ FUN_005221e8
        .global A_5221e8
        .type   A_5221e8, %function
A_5221e8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L522224
        str     r3, [r4, #0x80]!
        mov     r3, #0xa
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #4
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L522224:
        .word   0x001c0042
        .size   A_5221e8, . - A_5221e8

@ FUN_005336cc
        .global A_5336cc
        .type   A_5336cc, %function
A_5336cc:
        push    {r4, lr}
        ldr     r4, L5336f4
        svc     #0x23
        ldr     r0, L5336f8
        ldr     r0, [r0, #4]
        str     r0, [r4, #0x18]
        ldr     r0, L5336fc
        pop     {r4, lr}
        b       Fn_024568
        .word   0x008b7ce8
L5336f4:
        .word   0x008b7cd0
L5336f8:
        .word   0x007eb68c
L5336fc:
        .word   0x009ae9ec
        .size   A_5336cc, . - A_5336cc

@ FUN_005338a8
        .global A_5338a8
        .type   A_5338a8, %function
A_5338a8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L5338dc
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5338dc:
        .word   0x00150002
        .size   A_5338a8, . - A_5338a8

@ FUN_005338e0
        .global A_5338e0
        .type   A_5338e0, %function
A_5338e0:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L533914
        str     r1, [r4, #0x80]!
        ldrb    r1, [sp, #4]
        strb    r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L533914:
        .word   0x000b0040
        .size   A_5338e0, . - A_5338e0

@ FUN_00533954
        .global A_533954
        .type   A_533954, %function
A_533954:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r1, #0x180000
        str     r1, [r4, #0x80]!
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5339a0
        add     r0, r4, #8
        add     r6, r4, #0x18
        ldm     r0, {r1, r2, r3, ip}
        ldr     r0, [r4, #0x24]
        ldm     r6, {r6, r7, r8}
        str     r0, [r5, #0x1c]
        stm     r5, {r1, r2, r3, ip}
        add     r5, r5, #0x10
        stm     r5, {r6, r7, r8}
        ldr     r0, [r4, #4]
L5339a0:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_533954, . - A_533954

@ FUN_00534830
        .global A_534830
        .type   A_534830, %function
A_534830:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        ldreq   r0, L534864
        beq     L534860
        svc     #0x23
        mov     r1, r0
        ldr     r0, L534868
        ldr     r0, [r0]
        str     r0, [r4]
        mov     r0, r1
L534860:
        pop     {r4, pc}
L534864:
        .word   0xe0a0cff8
L534868:
        .word   0x007eb664
        .size   A_534830, . - A_534830

@ FUN_005349a4
        .global A_5349a4
        .type   A_5349a4, %function
A_5349a4:
        push    {r4, lr}
        ldr     r4, L5349c8
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L5349c4
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L5349c4:
        pop     {r4, pc}
L5349c8:
        .word   0x008ab8c8
        .size   A_5349a4, . - A_5349a4

@ FUN_00535c58
        .global A_535c58
        .type   A_535c58, %function
A_535c58:
        push    {r4, lr}
        ldr     r0, [r0, #8]
        svc     #0x18
        lsrs    r1, r0, #0x1f
        beq     L535c74
        pop     {r4, lr}
        b       Fn_01b6ac
L535c74:
        pop     {r4, pc}
        .size   A_535c58, . - A_535c58

@ FUN_00536d30
        .global A_536d30
        .type   A_536d30, %function
A_536d30:
        push    {r4, lr}
        svc     #0x24
        lsrs    r1, r0, #0x1f
        beq     L536d48
        pop     {r4, lr}
        b       Fn_01b6ac
L536d48:
        pop     {r4, pc}
        .size   A_536d30, . - A_536d30

@ FUN_00536d50
        .global A_536d50
        .type   A_536d50, %function
A_536d50:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L536d8c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L536d90
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L536d88
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L536d88:
        pop     {r4, r5, r6, pc}
L536d8c:
        .word   0x000a0040
L536d90:
        .word   0x008ab930
        .size   A_536d50, . - A_536d50

@ FUN_00536d94
        .global A_536d94
        .type   A_536d94, %function
A_536d94:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L536dd0
        mov     r2, #0
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        str     r1, [r4, #0xc]
        stm     ip, {r0, r2}
        ldr     r0, L536dd4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L536dd0:
        .word   0x003c0042
L536dd4:
        .word   0x008ab930
        .size   A_536d94, . - A_536d94

@ FUN_00536dd8
        .global A_536dd8
        .type   A_536dd8, %function
A_536dd8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r1
        mov     r6, r2
        mov     r7, r3
        ldrd    r8, sb, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L536e40
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L536e44
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L536e3c
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r6]
        ldrb    r0, [r4, #0x14]
        strb    r0, [r7]
        ldrb    r0, [r4, #0x18]
        strb    r0, [r8]
        ldr     r0, [r4, #0x1c]
        str     r0, [sb]
        ldr     r0, [r4, #4]
L536e3c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L536e40:
        .word   0x00060040
L536e44:
        .word   0x008ab930
        .size   A_536dd8, . - A_536dd8

@ FUN_00536e48
        .global A_536e48
        .type   A_536e48, %function
A_536e48:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x440000
        str     r0, [r4, #0x80]!
        ldr     r0, L536e8c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L536e88
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #0x10]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L536e88:
        pop     {r4, r5, r6, pc}
L536e8c:
        .word   0x008ab930
        .size   A_536e48, . - A_536e48

@ FUN_00536e90
        .global A_536e90
        .type   A_536e90, %function
A_536e90:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L536edc
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L536ee0
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L536edc:
        .word   0x002e0044
L536ee0:
        .word   0x008ab930
        .size   A_536e90, . - A_536e90

@ FUN_00536ee4
        .global A_536ee4
        .type   A_536ee4, %function
A_536ee4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L536f20
        mov     r2, #0
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        str     r1, [r4, #0xc]
        stm     ip, {r0, r2}
        ldr     r0, L536f24
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L536f20:
        .word   0x003d0042
L536f24:
        .word   0x008ab930
        .size   A_536ee4, . - A_536ee4

@ FUN_00536f28
        .global A_536f28
        .type   A_536f28, %function
A_536f28:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L536f7c
        mov     r2, #0
        str     r3, [r5, #0x80]!
        str     r1, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L536f80
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L536f7c:
        .word   0x004a0040
L536f80:
        .word   0x008ab930
        .size   A_536f28, . - A_536f28

@ FUN_00536f84
        .global A_536f84
        .type   A_536f84, %function
A_536f84:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L536fdc
        str     r0, [r4, #0x80]!
        ldm     r2, {r0, r1, r3}
        add     ip, r4, #4
        ldr     r2, [r2, #0xc]
        str     r2, [r4, #0x10]
        stm     ip, {r0, r1, r3}
        ldr     r0, L536fe0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L536fd8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L536fd8:
        pop     {r4, r5, r6, pc}
L536fdc:
        .word   0x00480100
L536fe0:
        .word   0x008ab930
        .size   A_536f84, . - A_536f84

@ FUN_00536fe4
        .global A_536fe4
        .type   A_536fe4, %function
A_536fe4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L537030
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L537034
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537030:
        .word   0x002c0044
L537034:
        .word   0x008ab930
        .size   A_536fe4, . - A_536fe4

@ FUN_00537038
        .global A_537038
        .type   A_537038, %function
A_537038:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L53708c
        mov     r2, #0
        str     r3, [r5, #0x80]!
        str     r1, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L537090
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53708c:
        .word   0x00360040
L537090:
        .word   0x008ab930
        .size   A_537038, . - A_537038

@ FUN_00537094
        .global A_537094
        .type   A_537094, %function
A_537094:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L5370f0
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r3}
        orr     r1, ip, r1, lsl #14
        str     r0, [r4, #0x10]
        mov     r0, #0x800
        orr     r1, r1, #2
        orr     r0, r0, r3, lsl #14
        add     r6, r4, #0x14
        orr     r0, r0, #2
        str     r1, [r4, #0xc]
        stm     r6, {r0, r2}
        ldr     r0, L5370f4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L5370f0:
        .word   0x00340084
L5370f4:
        .word   0x008ab930
        .size   A_537094, . - A_537094

@ FUN_005370f8
        .global A_5370f8
        .type   A_5370f8, %function
A_5370f8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L53713c
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L537140
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53713c:
        .word   0x00370042
L537140:
        .word   0x008ab930
        .size   A_5370f8, . - A_5370f8

@ FUN_00537144
        .global A_537144
        .type   A_537144, %function
A_537144:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
        mov     r5, r1
        mov     r6, r2
        ldr     r8, [sp, #0x28]
        mov     r7, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5371ac
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L5371b0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5371a4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #0x10]
        str     r0, [r7]
        ldr     r0, [r4, #0x14]
        str     r0, [r8]
        ldr     r0, [r4, #4]
L5371a4:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L5371ac:
        .word   0x00050040
L5371b0:
        .word   0x008ab930
        .size   A_537144, . - A_537144

@ FUN_005371b4
        .global A_5371b4
        .type   A_5371b4, %function
A_5371b4:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L537218
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r5, r4, #4
        stm     r5, {r1, r3}
        orr     r1, ip, r1, lsl #14
        ldrb    r5, [sp, #0x10]
        orr     r1, r1, #2
        strb    r5, [r4, #0xc]
        str     r0, [r4, #0x14]
        mov     r0, #0x800
        orr     r0, r0, r3, lsl #14
        add     r5, r4, #0x18
        orr     r0, r0, #2
        str     r1, [r4, #0x10]
        stm     r5, {r0, r2}
        ldr     r0, L53721c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L537218:
        .word   0x001b00c4
L53721c:
        .word   0x008ab930
        .size   A_5371b4, . - A_5371b4

@ FUN_00537220
        .global A_537220
        .type   A_537220, %function
A_537220:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1d0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53724c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53724c:
        .word   0x008ab930
        .size   A_537220, . - A_537220

@ FUN_00537250
        .global A_537250
        .type   A_537250, %function
A_537250:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53729c
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L5372a0
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53729c:
        .word   0x00290044
L5372a0:
        .word   0x008ab930
        .size   A_537250, . - A_537250

@ FUN_005372a4
        .global A_5372a4
        .type   A_5372a4, %function
A_5372a4:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L537300
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        stm     r6, {r1, r3}
        orr     r1, ip, r1, lsl #14
        str     r0, [r4, #0x10]
        mov     r0, #0x800
        orr     r1, r1, #2
        orr     r0, r0, r3, lsl #14
        add     r6, r4, #0x14
        orr     r0, r0, #2
        str     r1, [r4, #0xc]
        stm     r6, {r0, r2}
        ldr     r0, L537304
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L537300:
        .word   0x00320084
L537304:
        .word   0x008ab930
        .size   A_5372a4, . - A_5372a4

@ FUN_00537308
        .global A_537308
        .type   A_537308, %function
A_537308:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L537354
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L537358
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537354:
        .word   0x00240044
L537358:
        .word   0x008ab930
        .size   A_537308, . - A_537308

@ FUN_0053735c
        .global A_53735c
        .type   A_53735c, %function
A_53735c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        ldrd    sl, fp, [sp, #0x28]
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r4, L5373dc
        mov     ip, #0
        str     r4, [r5, #0x80]!
        add     r4, r5, #4
        stm     r4, {r1, r3}
        mrc     p15, #0, r4, c13, c0, #3
        add     r6, r4, #0x180
        orr     r1, ip, r1, lsl #14
        ldm     r6, {r6, r7, r8, sb}
        orr     r1, r1, #2
        str     r0, [r4, #0x184]
        orr     r0, ip, r3, lsl #14
        add     ip, r4, #0x188
        orr     r0, r0, #2
        str     r1, [r4, #0x180]
        stm     ip, {r0, r2}
        ldr     r0, L5373e0
        ldr     r0, [r0]
        svc     #0x32
        add     r4, r4, #0x180
        ands    r1, r0, #0x80000000
        stm     r4, {r6, r7, r8, sb}
        bmi     L5373d8
        ldrd    r0, r1, [r5, #8]
        strd    r0, r1, [sl]
        ldrb    r0, [r5, #0x10]
        strb    r0, [fp]
        ldr     r0, [r5, #4]
L5373d8:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L5373dc:
        .word   0x00350080
L5373e0:
        .word   0x008ab930
        .size   A_53735c, . - A_53735c

@ FUN_005373e4
        .global A_5373e4
        .type   A_5373e4, %function
A_5373e4:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L53742c
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        str     r3, [r4, #0x10]
        stm     r6, {r0, r2, ip}
        orr     r0, ip, r2, lsl #14
        orr     r0, r0, #2
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L537430
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L53742c:
        .word   0x001f0084
L537430:
        .word   0x008ab930
        .size   A_5373e4, . - A_5373e4

@ FUN_00537434
        .global A_537434
        .type   A_537434, %function
A_537434:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1c0000
        str     r0, [r4, #0x80]!
        ldr     r0, L537460
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537460:
        .word   0x008ab930
        .size   A_537434, . - A_537434

@ FUN_00537464
        .global A_537464
        .type   A_537464, %function
A_537464:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L5374b0
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L5374b4
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5374b0:
        .word   0x00280044
L5374b4:
        .word   0x008ab930
        .size   A_537464, . - A_537464

@ FUN_005374b8
        .global A_5374b8
        .type   A_5374b8, %function
A_5374b8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53751c
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     r5, r4, #4
        stm     r5, {r1, r2}
        mrc     p15, #0, r2, c13, c0, #3
        add     r5, r2, #0x180
        orr     r1, r3, r1, lsl #14
        ldm     r5, {r7, r8}
        orr     r1, r1, #2
        str     r1, [r2, #0x180]!
        str     r0, [r2, #4]
        ldr     r0, L537520
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L537518
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #4]
L537518:
        pop     {r4, r5, r6, r7, r8, pc}
L53751c:
        .word   0x00510080
L537520:
        .word   0x008ab930
        .size   A_5374b8, . - A_5374b8

@ FUN_00537524
        .global A_537524
        .type   A_537524, %function
A_537524:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x4e0000
        str     r0, [r4, #0x80]!
        ldr     r0, L537550
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537550:
        .word   0x008ab930
        .size   A_537524, . - A_537524

@ FUN_00537554
        .global A_537554
        .type   A_537554, %function
A_537554:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L53759c
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        str     r3, [r4, #0x10]
        stm     r6, {r0, r2, ip}
        orr     r0, ip, r2, lsl #14
        orr     r0, r0, #2
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L5375a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L53759c:
        .word   0x001e0084
L5375a0:
        .word   0x008ab930
        .size   A_537554, . - A_537554

@ FUN_005375a4
        .global A_5375a4
        .type   A_5375a4, %function
A_5375a4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x130000
        str     r0, [r4, #0x80]!
        ldr     r0, L5375dc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5375d8
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5375d8:
        pop     {r4, r5, r6, pc}
L5375dc:
        .word   0x008ab930
        .size   A_5375a4, . - A_5375a4

@ FUN_005375e0
        .global A_5375e0
        .type   A_5375e0, %function
A_5375e0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53762c
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L537630
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53762c:
        .word   0x00300044
L537630:
        .word   0x008ab930
        .size   A_5375e0, . - A_5375e0

@ FUN_00537634
        .global A_537634
        .type   A_537634, %function
A_537634:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x4c0000
        str     r0, [r4, #0x80]!
        ldr     r0, L537660
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537660:
        .word   0x008ab930
        .size   A_537634, . - A_537634

@ FUN_00537664
        .global A_537664
        .type   A_537664, %function
A_537664:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537698
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L53769c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L537698:
        .word   0x00140040
L53769c:
        .word   0x008ab930
        .size   A_537664, . - A_537664

@ FUN_005376a0
        .global A_5376a0
        .type   A_5376a0, %function
A_5376a0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L5376ec
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L5376f0
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5376ec:
        .word   0x00200044
L5376f0:
        .word   0x008ab930
        .size   A_5376a0, . - A_5376a0

@ FUN_005376f4
        .global A_5376f4
        .type   A_5376f4, %function
A_5376f4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L537740
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     lr, r4, #4
        str     r2, [r4, #0xc]
        stm     lr, {r1, r3}
        orr     r1, r3, r1, lsl #14
        str     r0, [r4, #0x14]
        ldr     r0, L537744
        orr     r1, r1, #2
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537740:
        .word   0x003a0044
L537744:
        .word   0x008ab930
        .size   A_5376f4, . - A_5376f4

@ FUN_00537748
        .global A_537748
        .type   A_537748, %function
A_537748:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L537784
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L537788
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L537780
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L537780:
        pop     {r4, r5, r6, pc}
L537784:
        .word   0x004d0080
L537788:
        .word   0x008ab930
        .size   A_537748, . - A_537748

@ FUN_0053778c
        .global A_53778c
        .type   A_53778c, %function
A_53778c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5377c0
        str     r1, [r4, #0x80]!
        add     ip, r4, #4
        stm     ip, {r0, r2, r3}
        ldr     r0, L5377c4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5377c0:
        .word   0x001100c0
L5377c4:
        .word   0x008ab930
        .size   A_53778c, . - A_53778c

@ FUN_005377c8
        .global A_5377c8
        .type   A_5377c8, %function
A_5377c8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5377f8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L5377fc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5377f8:
        .word   0x00160040
L5377fc:
        .word   0x008ab930
        .size   A_5377c8, . - A_5377c8

@ FUN_00537800
        .global A_537800
        .type   A_537800, %function
A_537800:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x80000
        str     r0, [r4, #0x80]!
        ldr     r0, L537838
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L537834
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L537834:
        pop     {r4, r5, r6, pc}
L537838:
        .word   0x008ab930
        .size   A_537800, . - A_537800

@ FUN_0053783c
        .global A_53783c
        .type   A_53783c, %function
A_53783c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L537890
        mov     r2, #0
        str     r3, [r5, #0x80]!
        str     r1, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L537894
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L537890:
        .word   0x00450040
L537894:
        .word   0x008ab930
        .size   A_53783c, . - A_53783c

@ FUN_00537898
        .global A_537898
        .type   A_537898, %function
A_537898:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L5378c8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L5378cc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5378c8:
        .word   0x00380040
L5378cc:
        .word   0x008ab930
        .size   A_537898, . - A_537898

@ FUN_005378d0
        .global A_5378d0
        .type   A_5378d0, %function
A_5378d0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L537914
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L537918
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537914:
        .word   0x00400042
L537918:
        .word   0x008ab930
        .size   A_5378d0, . - A_5378d0

@ FUN_0053791c
        .global A_53791c
        .type   A_53791c, %function
A_53791c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2d0000
        str     r0, [r4, #0x80]!
        ldr     r0, L537948
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537948:
        .word   0x008ab930
        .size   A_53791c, . - A_53791c

@ FUN_0053794c
        .global A_53794c
        .type   A_53794c, %function
A_53794c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L537984
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L537980
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L537980:
        pop     {r4, r5, r6, pc}
L537984:
        .word   0x008ab930
        .size   A_53794c, . - A_53794c

@ FUN_00537988
        .global A_537988
        .type   A_537988, %function
A_537988:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x210000
        str     r0, [r4, #0x80]!
        ldr     r0, L5379b4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5379b4:
        .word   0x008ab930
        .size   A_537988, . - A_537988

@ FUN_005379b8
        .global A_5379b8
        .type   A_5379b8, %function
A_5379b8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2b0000
        str     r0, [r4, #0x80]!
        ldr     r0, L5379e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L5379e4:
        .word   0x008ab930
        .size   A_5379b8, . - A_5379b8

@ FUN_005379e8
        .global A_5379e8
        .type   A_5379e8, %function
A_5379e8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2a0000
        str     r0, [r4, #0x80]!
        ldr     r0, L537a14
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537a14:
        .word   0x008ab930
        .size   A_5379e8, . - A_5379e8

@ FUN_00537a18
        .global A_537a18
        .type   A_537a18, %function
A_537a18:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r2
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L537a78
        mov     r2, #0
        str     r3, [r5, #0x80]!
        str     r1, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        ldm     r4, {r7, r8}
        orr     r1, r1, #2
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L537a7c
        ldr     r0, [r0]
        svc     #0x32
        stm     r4, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L537a74
        ldr     r0, [r5, #8]
        str     r0, [r6]
        ldr     r0, [r5, #4]
L537a74:
        pop     {r4, r5, r6, r7, r8, pc}
L537a78:
        .word   0x00410040
L537a7c:
        .word   0x008ab930
        .size   A_537a18, . - A_537a18

@ FUN_00537a80
        .global A_537a80
        .type   A_537a80, %function
A_537a80:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537acc
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3}
        add     ip, r4, #4
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        stm     ip, {r1, r2, r3}
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #0x14]
        ldr     r0, L537ad0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L537acc:
        .word   0x00150140
L537ad0:
        .word   0x008ab930
        .size   A_537a80, . - A_537a80

@ FUN_00537ad4
        .global A_537ad4
        .type   A_537ad4, %function
A_537ad4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537b10
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L537b14
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L537b0c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L537b0c:
        pop     {r4, r5, r6, pc}
L537b10:
        .word   0x00500040
L537b14:
        .word   0x008ab930
        .size   A_537ad4, . - A_537ad4

@ FUN_00537b18
        .global A_537b18
        .type   A_537b18, %function
A_537b18:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x260000
        str     r0, [r4, #0x80]!
        ldr     r0, L537b44
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537b44:
        .word   0x008ab930
        .size   A_537b18, . - A_537b18

@ FUN_00537b48
        .global A_537b48
        .type   A_537b48, %function
A_537b48:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537b8c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        strd    r2, r3, [r4, #8]
        ldrb    r0, [sp, #0x18]
        strb    r0, [r4, #0x10]
        ldr     r0, L537b90
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L537b8c:
        .word   0x00310100
L537b90:
        .word   0x008ab930
        .size   A_537b48, . - A_537b48

@ FUN_00537b94
        .global A_537b94
        .type   A_537b94, %function
A_537b94:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537bc8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L537bcc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L537bc8:
        .word   0x00230040
L537bcc:
        .word   0x008ab930
        .size   A_537b94, . - A_537b94

@ FUN_00537bd0
        .global A_537bd0
        .type   A_537bd0, %function
A_537bd0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537c00
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L537c04
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537c00:
        .word   0x00190040
L537c04:
        .word   0x008ab930
        .size   A_537bd0, . - A_537bd0

@ FUN_00537c08
        .global A_537c08
        .type   A_537c08, %function
A_537c08:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L537c38
        str     r2, [r4, #0x80]!
        strd    r0, r1, [r4, #4]
        ldr     r0, L537c3c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537c38:
        .word   0x004f0080
L537c3c:
        .word   0x008ab930
        .size   A_537c08, . - A_537c08

@ FUN_00537c40
        .global A_537c40
        .type   A_537c40, %function
A_537c40:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537c88
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L537c8c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L537c88:
        .word   0x002500c0
L537c8c:
        .word   0x008ab930
        .size   A_537c40, . - A_537c40

@ FUN_00537c90
        .global A_537c90
        .type   A_537c90, %function
A_537c90:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537cc0
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L537cc4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537cc0:
        .word   0x00180040
L537cc4:
        .word   0x008ab930
        .size   A_537c90, . - A_537c90

@ FUN_00537cc8
        .global A_537cc8
        .type   A_537cc8, %function
A_537cc8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537d04
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L537d08
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L537d00
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L537d00:
        pop     {r4, r5, r6, pc}
L537d04:
        .word   0x00540040
L537d08:
        .word   0x008ab930
        .size   A_537cc8, . - A_537cc8

@ FUN_00537d0c
        .global A_537d0c
        .type   A_537d0c, %function
A_537d0c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537d3c
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L537d40
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537d3c:
        .word   0x00120040
L537d40:
        .word   0x008ab930
        .size   A_537d0c, . - A_537d0c

@ FUN_00537d44
        .global A_537d44
        .type   A_537d44, %function
A_537d44:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L537d78
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L537d7c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L537d78:
        .word   0x002f0040
L537d7c:
        .word   0x008ab930
        .size   A_537d44, . - A_537d44

@ FUN_00537d80
        .global A_537d80
        .type   A_537d80, %function
A_537d80:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x1a0000
        str     r0, [r4, #0x80]!
        ldr     r0, L537dac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537dac:
        .word   0x008ab930
        .size   A_537d80, . - A_537d80

@ FUN_00537db0
        .global A_537db0
        .type   A_537db0, %function
A_537db0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537de0
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L537de4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537de0:
        .word   0x00390040
L537de4:
        .word   0x008ab930
        .size   A_537db0, . - A_537db0

@ FUN_00537de8
        .global A_537de8
        .type   A_537de8, %function
A_537de8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537e18
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L537e1c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L537e18:
        .word   0x00170040
L537e1c:
        .word   0x008ab930
        .size   A_537de8, . - A_537de8

@ FUN_00537e20
        .global A_537e20
        .type   A_537e20, %function
A_537e20:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r8, r3
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x330000
        str     r0, [r4, #0x80]!
        ldr     r0, L537e7c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L537e78
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r6]
        ldrd    r0, r1, [r4, #0x14]
        strd    r0, r1, [r7]
        ldrb    r0, [r4, #0x1c]
        strb    r0, [r8]
        ldr     r0, [r4, #4]
L537e78:
        pop     {r4, r5, r6, r7, r8, pc}
L537e7c:
        .word   0x008ab930
        .size   A_537e20, . - A_537e20

@ FUN_00537e80
        .global A_537e80
        .type   A_537e80, %function
A_537e80:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L537edc
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, r5, ip}
        mov     ip, #0xa
        str     r1, [r4, #0x18]
        str     r0, [r4, #0x20]
        ldr     r0, L537ee0
        mov     r1, #0xc
        orr     r1, r1, r2, lsl #4
        orr     r3, ip, r3, lsl #4
        str     r1, [r4, #0x1c]
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L537edc:
        .word   0x00460104
L537ee0:
        .word   0x008ab930
        .size   A_537e80, . - A_537e80

@ FUN_00537ee4
        .global A_537ee4
        .type   A_537ee4, %function
A_537ee4:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L537f40
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, r5, ip}
        mov     ip, #0xa
        str     r1, [r4, #0x18]
        str     r0, [r4, #0x20]
        ldr     r0, L537f44
        mov     r1, #0xc
        orr     r1, r1, r2, lsl #4
        orr     r3, ip, r3, lsl #4
        str     r1, [r4, #0x1c]
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L537f40:
        .word   0x00520104
L537f44:
        .word   0x008ab930
        .size   A_537ee4, . - A_537ee4

@ FUN_00537f48
        .global A_537f48
        .type   A_537f48, %function
A_537f48:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L537f98
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r3, ip}
        add     r5, r4, #4
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        stm     r5, {r1, r3, ip}
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #0x14]
        ldr     r0, L537f9c
        str     r2, [r4, #0x18]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L537f98:
        .word   0x00490180
L537f9c:
        .word   0x008ab930
        .size   A_537f48, . - A_537f48

@ FUN_00537fa0
        .global A_537fa0
        .type   A_537fa0, %function
A_537fa0:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L537ffc
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, r5, ip}
        mov     ip, #0xa
        str     r1, [r4, #0x18]
        str     r0, [r4, #0x20]
        ldr     r0, L538000
        mov     r1, #0xc
        orr     r1, r1, r2, lsl #4
        orr     r3, ip, r3, lsl #4
        str     r1, [r4, #0x1c]
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L537ffc:
        .word   0x00470104
L538000:
        .word   0x008ab930
        .size   A_537fa0, . - A_537fa0

@ FUN_00538004
        .global A_538004
        .type   A_538004, %function
A_538004:
        push    {r4, r5, r6, lr}
        add     r4, sp, #0x10
        ldm     r4, {r5, ip}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r6, L538060
        str     r6, [r4, #0x80]!
        add     lr, r4, #4
        stm     lr, {r2, r3, r5, ip}
        mov     ip, #0xa
        str     r1, [r4, #0x18]
        str     r0, [r4, #0x20]
        ldr     r0, L538064
        mov     r1, #0xc
        orr     r1, r1, r2, lsl #4
        orr     r3, ip, r3, lsl #4
        str     r1, [r4, #0x1c]
        str     r3, [r4, #0x14]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L538060:
        .word   0x00530104
L538064:
        .word   0x008ab930
        .size   A_538004, . - A_538004

@ FUN_00538068
        .global A_538068
        .type   A_538068, %function
A_538068:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L538098
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L53809c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L538098:
        .word   0x00040040
L53809c:
        .word   0x008ab930
        .size   A_538068, . - A_538068

@ FUN_005380a0
        .global A_5380a0
        .type   A_5380a0, %function
A_5380a0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        ldr     r6, [sp, #0x24]
        ldr     ip, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L538114
        mov     sb, #0
        str     r5, [r4, #0x80]!
        add     r7, r4, #4
        stm     r7, {r0, r2, ip}
        mov     r0, #0x400
        orr     r0, r0, r2, lsl #14
        orr     r0, r0, #2
        strd    r0, r1, [r4, #0x10]
        mrc     p15, #0, r0, c13, c0, #3
        add     r5, r0, #0x180
        orr     r0, sb, ip, lsl #14
        ldm     r5, {r7, r8}
        orr     r0, r0, #2
        stm     r5, {r0, r3}
        ldr     r0, L538118
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L538110
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L538110:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L538114:
        .word   0x001000c2
L538118:
        .word   0x008ab930
        .size   A_5380a0, . - A_5380a0

@ FUN_0053812c
        .global A_53812c
        .type   A_53812c, %function
A_53812c:
        push    {r4, lr}
        svc     #0x14
        lsrs    r1, r0, #0x1f
        beq     L538144
        pop     {r4, lr}
        b       Fn_01b6ac
L538144:
        pop     {r4, pc}
        .size   A_53812c, . - A_53812c

@ FUN_00538150
        .global A_538150
        .type   A_538150, %function
A_538150:
        push    {r4, lr}
        ldr     ip, [r2]
        cmp     ip, #0
        beq     L53818c
        mov     r2, r0
        mov     r3, r1
        mov     r0, ip
        svc     #0x24
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        blne    Fn_01b6ac
        ldr     r0, L538198
        cmp     r0, r4, lsl #22
        movne   r0, #1
        bne     L538190
L53818c:
        mov     r0, #0
L538190:
        pop     {r4, pc}
        .word   0x008ab8c8
L538198:
        .word   0xff800000
        .size   A_538150, . - A_538150

@ FUN_005392e4
        .global A_5392e4
        .type   A_5392e4, %function
A_5392e4:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539328
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L53932c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539320
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L539320:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L539328:
        .word   0x000f0040
L53932c:
        .word   0x008aab70
        .size   A_5392e4, . - A_5392e4

@ FUN_00539330
        .global A_539330
        .type   A_539330, %function
A_539330:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539364
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L539368
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L539364:
        .word   0x00040040
L539368:
        .word   0x008aab70
        .size   A_539330, . - A_539330

@ FUN_0053936c
        .global A_53936c
        .type   A_53936c, %function
A_53936c:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5393b8
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #4]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #8]
        ldr     r0, L5393bc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5393b0
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L5393b0:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L5393b8:
        .word   0x000d0080
L5393bc:
        .word   0x008aab70
        .size   A_53936c, . - A_53936c

@ FUN_005393c0
        .global A_5393c0
        .type   A_5393c0, %function
A_5393c0:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53940c
        str     r0, [r4, #0x80]!
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #4]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #8]
        ldr     r0, L539410
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539404
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L539404:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53940c:
        .word   0x000a0080
L539410:
        .word   0x008aab70
        .size   A_5393c0, . - A_5393c0

@ FUN_00539414
        .global A_539414
        .type   A_539414, %function
A_539414:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539454
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539458
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539454:
        .word   0x00230080
L539458:
        .word   0x008aab70
        .size   A_539414, . - A_539414

@ FUN_0053945c
        .global A_53945c
        .type   A_53945c, %function
A_53945c:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53949c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L5394a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L53949c:
        .word   0x00150080
L5394a0:
        .word   0x008aab70
        .size   A_53945c, . - A_53945c

@ FUN_005394a4
        .global A_5394a4
        .type   A_5394a4, %function
A_5394a4:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5394e4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L5394e8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L5394e4:
        .word   0x000e0080
L5394e8:
        .word   0x008aab70
        .size   A_5394a4, . - A_5394a4

@ FUN_005394ec
        .global A_5394ec
        .type   A_5394ec, %function
A_5394ec:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539520
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L539524
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L539520:
        .word   0x00020040
L539524:
        .word   0x008aab70
        .size   A_5394ec, . - A_5394ec

@ FUN_00539528
        .global A_539528
        .type   A_539528, %function
A_539528:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539568
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L53956c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539568:
        .word   0x00200080
L53956c:
        .word   0x008aab70
        .size   A_539528, . - A_539528

@ FUN_00539570
        .global A_539570
        .type   A_539570, %function
A_539570:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5395b0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L5395b4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L5395b0:
        .word   0x00210080
L5395b4:
        .word   0x008aab70
        .size   A_539570, . - A_539570

@ FUN_005395b8
        .global A_5395b8
        .type   A_5395b8, %function
A_5395b8:
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        mov     r5, r0
        ldr     r3, [sp, #0x20]
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L539618
        mov     r0, #0
        str     ip, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r2, [sp, #0xc]
        strb    r2, [r4, #8]
        str     r3, [r4, #0xc]
        ldrh    r2, [sp, #0x24]
        strh    r2, [r4, #0x10]
        strd    r0, r1, [r4, #0x14]
        ldr     r0, L53961c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539610
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L539610:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L539618:
        .word   0x00070102
L53961c:
        .word   0x008aab70
        .size   A_5395b8, . - A_5395b8

@ FUN_00539620
        .global A_539620
        .type   A_539620, %function
A_539620:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539660
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539664
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539660:
        .word   0x00180080
L539664:
        .word   0x008aab70
        .size   A_539620, . - A_539620

@ FUN_00539668
        .global A_539668
        .type   A_539668, %function
A_539668:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53969c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L5396a0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L53969c:
        .word   0x00010040
L5396a0:
        .word   0x008aab70
        .size   A_539668, . - A_539668

@ FUN_005396a4
        .global A_5396a4
        .type   A_5396a4, %function
A_5396a4:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539714
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldrh    r0, [sp, #0x18]
        strh    r0, [r4, #0x14]
        ldrh    r0, [sp, #0x1c]
        strh    r0, [r4, #0x18]
        ldrh    r0, [sp, #0x20]
        strh    r0, [r4, #0x1c]
        ldrb    r0, [sp, #0x24]
        strb    r0, [r4, #0x20]
        ldr     r0, L539718
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539714:
        .word   0x001e0200
L539718:
        .word   0x008aab70
        .size   A_5396a4, . - A_5396a4

@ FUN_0053971c
        .global A_53971c
        .type   A_53971c, %function
A_53971c:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53975c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539760
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L53975c:
        .word   0x00140080
L539760:
        .word   0x008aab70
        .size   A_53971c, . - A_53971c

@ FUN_00539764
        .global A_539764
        .type   A_539764, %function
A_539764:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x3a0000
        str     r0, [r4, #0x80]!
        ldr     r0, L539790
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L539790:
        .word   0x008aab70
        .size   A_539764, . - A_539764

@ FUN_00539794
        .global A_539794
        .type   A_539794, %function
A_539794:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5397d8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L5397dc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5397d0
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5397d0:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L5397d8:
        .word   0x001a0040
L5397dc:
        .word   0x008aab70
        .size   A_539794, . - A_539794

@ FUN_005397e0
        .global A_5397e0
        .type   A_5397e0, %function
A_5397e0:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539820
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539824
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539820:
        .word   0x00280080
L539824:
        .word   0x008aab70
        .size   A_5397e0, . - A_5397e0

@ FUN_00539828
        .global A_539828
        .type   A_539828, %function
A_539828:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539868
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L53986c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539868:
        .word   0x00190080
L53986c:
        .word   0x008aab70
        .size   A_539828, . - A_539828

@ FUN_00539870
        .global A_539870
        .type   A_539870, %function
A_539870:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5398b8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L5398bc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L5398b8:
        .word   0x002500c0
L5398bc:
        .word   0x008aab70
        .size   A_539870, . - A_539870

@ FUN_005398c0
        .global A_5398c0
        .type   A_5398c0, %function
A_5398c0:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539900
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539904
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539900:
        .word   0x00160080
L539904:
        .word   0x008aab70
        .size   A_5398c0, . - A_5398c0

@ FUN_00539908
        .global A_539908
        .type   A_539908, %function
A_539908:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x390000
        str     r0, [r4, #0x80]!
        ldr     r0, L539934
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L539934:
        .word   0x008aab70
        .size   A_539908, . - A_539908

@ FUN_00539938
        .global A_539938
        .type   A_539938, %function
A_539938:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53997c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L539980
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539974
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L539974:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L53997c:
        .word   0x000c0040
L539980:
        .word   0x008aab70
        .size   A_539938, . - A_539938

@ FUN_00539984
        .global A_539984
        .type   A_539984, %function
A_539984:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5399b8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L5399bc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L5399b8:
        .word   0x00380040
L5399bc:
        .word   0x008aab70
        .size   A_539984, . - A_539984

@ FUN_005399c0
        .global A_5399c0
        .type   A_5399c0, %function
A_5399c0:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539a0c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        str     r1, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldr     r0, L539a10
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539a0c:
        .word   0x000b0100
L539a10:
        .word   0x008aab70
        .size   A_5399c0, . - A_5399c0

@ FUN_00539a14
        .global A_539a14
        .type   A_539a14, %function
A_539a14:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539a64
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldr     r0, L539a68
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539a64:
        .word   0x00090100
L539a68:
        .word   0x008aab70
        .size   A_539a14, . - A_539a14

@ FUN_00539a6c
        .global A_539a6c
        .type   A_539a6c, %function
A_539a6c:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539ab4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldr     r0, L539ab8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L539ab4:
        .word   0x002d00c0
L539ab8:
        .word   0x008aab70
        .size   A_539a6c, . - A_539a6c

@ FUN_00539abc
        .global A_539abc
        .type   A_539abc, %function
A_539abc:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r8, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539b20
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #0x18]
        strb    r0, [r4, #4]
        ldr     r0, L539b24
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539b1c
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldrh    r0, [r4, #0xc]
        strh    r0, [r6]
        ldrh    r0, [r4, #0x10]
        strh    r0, [r7]
        ldrh    r0, [r4, #0x14]
        strh    r0, [r8]
        ldr     r0, [r4, #4]
L539b1c:
        pop     {r4, r5, r6, r7, r8, pc}
L539b20:
        .word   0x00110040
L539b24:
        .word   0x008aab70
        .size   A_539abc, . - A_539abc

@ FUN_00539b28
        .global A_539b28
        .type   A_539b28, %function
A_539b28:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539b68
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539b6c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539b68:
        .word   0x00240080
L539b6c:
        .word   0x008aab70
        .size   A_539b28, . - A_539b28

@ FUN_00539b70
        .global A_539b70
        .type   A_539b70, %function
A_539b70:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539bc8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldrh    r0, [sp, #0x18]
        strh    r0, [r4, #0x14]
        ldr     r0, L539bcc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539bc8:
        .word   0x00100140
L539bcc:
        .word   0x008aab70
        .size   A_539b70, . - A_539b70

@ FUN_00539bd0
        .global A_539bd0
        .type   A_539bd0, %function
A_539bd0:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539c14
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L539c18
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539c0c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L539c0c:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L539c14:
        .word   0x001c0040
L539c18:
        .word   0x008aab70
        .size   A_539bd0, . - A_539bd0

@ FUN_00539c1c
        .global A_539c1c
        .type   A_539c1c, %function
A_539c1c:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539c60
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L539c64
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539c58
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L539c58:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L539c60:
        .word   0x00080040
L539c64:
        .word   0x008aab70
        .size   A_539c1c, . - A_539c1c

@ FUN_00539c68
        .global A_539c68
        .type   A_539c68, %function
A_539c68:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539ca8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539cac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539ca8:
        .word   0x001b0080
L539cac:
        .word   0x008aab70
        .size   A_539c68, . - A_539c68

@ FUN_00539cb0
        .global A_539cb0
        .type   A_539cb0, %function
A_539cb0:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539cf8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldr     r0, L539cfc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L539cf8:
        .word   0x002e00c0
L539cfc:
        .word   0x008aab70
        .size   A_539cb0, . - A_539cb0

@ FUN_00539d00
        .global A_539d00
        .type   A_539d00, %function
A_539d00:
        push    {r0, r1, r2, r4, r5, r6, r7, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L539d60
        mov     r1, #0
        str     r3, [r5, #0x80]!
        ldrb    r3, [sp, #4]
        strb    r3, [r5, #4]
        str     r2, [r5, #8]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r1, r2, lsl #17
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L539d64
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L539d60:
        .word   0x002a0080
L539d64:
        .word   0x008aab70
        .size   A_539d00, . - A_539d00

@ FUN_00539d68
        .global A_539d68
        .type   A_539d68, %function
A_539d68:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539dc0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldrh    r0, [sp, #0x18]
        strh    r0, [r4, #0x14]
        ldr     r0, L539dc4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539dc0:
        .word   0x00260140
L539dc4:
        .word   0x008aab70
        .size   A_539d68, . - A_539d68

@ FUN_00539dc8
        .global A_539dc8
        .type   A_539dc8, %function
A_539dc8:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539e0c
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L539e10
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539e04
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L539e04:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L539e0c:
        .word   0x00050040
L539e10:
        .word   0x008aab70
        .size   A_539dc8, . - A_539dc8

@ FUN_00539e14
        .global A_539e14
        .type   A_539e14, %function
A_539e14:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539e54
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L539e58
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L539e54:
        .word   0x00290080
L539e58:
        .word   0x008aab70
        .size   A_539e14, . - A_539e14

@ FUN_00539e5c
        .global A_539e5c
        .type   A_539e5c, %function
A_539e5c:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539eb4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldrh    r0, [sp, #0x18]
        strh    r0, [r4, #0x14]
        ldr     r0, L539eb8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539eb4:
        .word   0x00120140
L539eb8:
        .word   0x008aab70
        .size   A_539e5c, . - A_539e5c

@ FUN_00539ebc
        .global A_539ebc
        .type   A_539ebc, %function
A_539ebc:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L539f30
        add     r5, r2, #4
        str     ip, [r4, #0x80]!
        add     lr, r4, #0xc
        str     r1, [r4, #4]
        ldr     ip, [r2]
        ldr     r2, [r2, #0xc]
        ldm     r5, {r5, r6}
        str     r2, [r4, #0x14]
        str     ip, [r4, #8]
        stm     lr, {r5, r6}
        add     r5, r4, #0x18
        ldm     r3, {r2, ip}
        ldr     r3, [r3, #8]
        str     r3, [r4, #0x20]
        stm     r5, {r2, ip}
        mov     r2, #0xa
        str     r0, [r4, #0x28]
        ldr     r0, L539f34
        orr     r1, r2, r1, lsl #4
        str     r1, [r4, #0x24]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L539f30:
        .word   0x00370202
L539f34:
        .word   0x008aab70
        .size   A_539ebc, . - A_539ebc

@ FUN_00539f38
        .global A_539f38
        .type   A_539f38, %function
A_539f38:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539f84
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #8]
        ldr     r0, L539f88
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L539f7c
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L539f7c:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L539f84:
        .word   0x002f0080
L539f88:
        .word   0x008aab70
        .size   A_539f38, . - A_539f38

@ FUN_00539f8c
        .global A_539f8c
        .type   A_539f8c, %function
A_539f8c:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L539fe4
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #4]
        strh    r0, [r4, #8]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #0xc]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r4, #0x10]
        ldrh    r0, [sp, #0x18]
        strh    r0, [r4, #0x14]
        ldr     r0, L539fe8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L539fe4:
        .word   0x00270140
L539fe8:
        .word   0x008aab70
        .size   A_539f8c, . - A_539f8c

@ FUN_00539fec
        .global A_539fec
        .type   A_539fec, %function
A_539fec:
        push    {r0, r1, r2, r4, r5, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a038
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldrh    r0, [sp, #8]
        strh    r0, [r4, #8]
        ldr     r0, L53a03c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53a030
        ldrh    r0, [r4, #8]
        strh    r0, [r5]
        ldr     r0, [r4, #4]
L53a030:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53a038:
        .word   0x00300080
L53a03c:
        .word   0x008aab70
        .size   A_539fec, . - A_539fec

@ FUN_0053a040
        .global A_53a040
        .type   A_53a040, %function
A_53a040:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a084
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L53a088
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53a07c
        ldr     r0, [r4, #0xc]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L53a07c:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L53a084:
        .word   0x00060040
L53a088:
        .word   0x008aab70
        .size   A_53a040, . - A_53a040

@ FUN_0053a08c
        .global A_53a08c
        .type   A_53a08c, %function
A_53a08c:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a0c0
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L53a0c4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L53a0c0:
        .word   0x003e0040
L53a0c4:
        .word   0x008aab70
        .size   A_53a08c, . - A_53a08c

@ FUN_0053a0c8
        .global A_53a0c8
        .type   A_53a0c8, %function
A_53a0c8:
        push    {r0, r1, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a108
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldr     r0, L53a10c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #8
        pop     {r4, pc}
L53a108:
        .word   0x00170080
L53a10c:
        .word   0x008aab70
        .size   A_53a0c8, . - A_53a0c8

@ FUN_0053a110
        .global A_53a110
        .type   A_53a110, %function
A_53a110:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x320000
        str     r0, [r4, #0x80]!
        ldr     r0, L53a170
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53a16c
        ldr     r1, [r4, #8]
        str     r1, [r5]
        ldr     r1, [r4, #0xc]
        str     r1, [r5, #4]
        ldr     r1, [r4, #0x10]
        str     r1, [r5, #8]
        ldr     r1, [r4, #0x14]
        str     r1, [r5, #0xc]
        ldr     r1, [r4, #0x18]
        str     r1, [r5, #0x10]
        ldrh    r0, [r4, #0x1c]
        strh    r0, [r5, #0x14]
        ldr     r0, [r4, #4]
L53a16c:
        pop     {r4, r5, r6, pc}
L53a170:
        .word   0x008aab70
        .size   A_53a110, . - A_53a110

@ FUN_0053a174
        .global A_53a174
        .type   A_53a174, %function
A_53a174:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        mrc     p15, #0, r5, c13, c0, #3
        mov     r0, #0x2b0000
        str     r0, [r5, #0x80]!
        ldr     r0, L53a1d8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53a1d4
        add     r1, r5, #8
        ldm     r1, {r0, r2, r3, r6, r7, r8, sb, ip}
        stm     r4, {r0, r2, r3, r6, r7, r8, sb, ip}
        add     r0, r5, #0x28
        add     r6, r5, #0x38
        add     sb, r4, #0x20
        ldm     r0, {r0, r2, r3, ip}
        ldr     r1, [r5, #0x44]
        ldm     r6, {r6, r7, r8}
        str     r1, [r4, #0x3c]
        stm     sb, {r0, r2, r3, ip}
        add     r4, r4, #0x30
        stm     r4, {r6, r7, r8}
        ldr     r0, [r5, #4]
L53a1d4:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53a1d8:
        .word   0x008aab70
        .size   A_53a174, . - A_53a174

@ FUN_0053a1dc
        .global A_53a1dc
        .type   A_53a1dc, %function
A_53a1dc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53a238
        str     r1, [r4, #0x80]!
        ldr     r1, [r0]
        str     r1, [r4, #4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #8]
        ldr     r1, [r0, #8]
        str     r1, [r4, #0xc]
        ldr     r1, [r0, #0xc]
        str     r1, [r4, #0x10]
        ldr     r1, [r0, #0x10]
        str     r1, [r4, #0x14]
        ldrh    r0, [r0, #0x14]
        strh    r0, [r4, #0x18]
        ldr     r0, L53a23c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53a238:
        .word   0x00310180
L53a23c:
        .word   0x008aab70
        .size   A_53a1dc, . - A_53a1dc

@ FUN_0053a284
        .global A_53a284
        .type   A_53a284, %function
A_53a284:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53a2e4
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3, r5, r6, r7, r8, ip}
        add     lr, r4, #4
        stm     lr, {r1, r2, r3, r5, r6, r7, r8, ip}
        add     r1, r0, #0x20
        add     r5, r0, #0x30
        add     r8, r4, #0x24
        ldr     r0, [r0, #0x3c]
        ldm     r1, {r1, r2, r3, ip}
        ldm     r5, {r5, r6, r7}
        str     r0, [r4, #0x40]
        stm     r8, {r1, r2, r3, ip}
        add     r1, r4, #0x34
        ldr     r0, L53a2e8
        stm     r1, {r5, r6, r7}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53a2e4:
        .word   0x002c0400
L53a2e8:
        .word   0x008aab70
        .size   A_53a284, . - A_53a284

@ FUN_0053a2ec
        .global A_53a2ec
        .type   A_53a2ec, %function
A_53a2ec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x360000
        str     r0, [r4, #0x80]!
        ldr     r0, L53a324
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53a320
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53a320:
        pop     {r4, r5, r6, pc}
L53a324:
        .word   0x008aab70
        .size   A_53a2ec, . - A_53a2ec

@ FUN_0053a328
        .global A_53a328
        .type   A_53a328, %function
A_53a328:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53a378
        add     r5, r0, #0x10
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3, ip}
        add     lr, r4, #4
        ldr     r0, [r0, #0x18]
        ldm     r5, {r5, r6}
        str     r0, [r4, #0x1c]
        stm     lr, {r1, r2, r3, ip}
        add     r1, r4, #0x14
        ldr     r0, L53a37c
        stm     r1, {r5, r6}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L53a378:
        .word   0x003302c0
L53a37c:
        .word   0x008aab70
        .size   A_53a328, . - A_53a328

@ FUN_0053a380
        .global A_53a380
        .type   A_53a380, %function
A_53a380:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53a3cc
        str     r1, [r4, #0x80]!
        ldr     r1, [r0]
        str     r1, [r4, #4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #8]
        ldr     r1, [r0, #8]
        str     r1, [r4, #0xc]
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        ldr     r0, L53a3d0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53a3cc:
        .word   0x003501c0
L53a3d0:
        .word   0x008aab70
        .size   A_53a380, . - A_53a380

@ FUN_0053a3d4
        .global A_53a3d4
        .type   A_53a3d4, %function
A_53a3d4:
        push    {r0, r1, r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a418
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #4]
        ldr     r0, L53a41c
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53a410
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53a410:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L53a418:
        .word   0x00030040
L53a41c:
        .word   0x008aab70
        .size   A_53a3d4, . - A_53a3d4

@ FUN_0053a420
        .global A_53a420
        .type   A_53a420, %function
A_53a420:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a468
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L53a46c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53a468:
        .word   0x001f00c0
L53a46c:
        .word   0x008aab70
        .size   A_53a420, . - A_53a420

@ FUN_0053a470
        .global A_53a470
        .type   A_53a470, %function
A_53a470:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a4b8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L53a4bc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53a4b8:
        .word   0x001d00c0
L53a4bc:
        .word   0x008aab70
        .size   A_53a470, . - A_53a470

@ FUN_0053a4c0
        .global A_53a4c0
        .type   A_53a4c0, %function
A_53a4c0:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53a508
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L53a50c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53a508:
        .word   0x002200c0
L53a50c:
        .word   0x008aab70
        .size   A_53a4c0, . - A_53a4c0

@ FUN_0053b600
        .global A_53b600
        .type   A_53b600, %function
A_53b600:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x10000
        str     r0, [r4, #0x80]!
        ldr     r0, L53b638
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53b634
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53b634:
        pop     {r4, r5, r6, pc}
L53b638:
        .word   0x008b8790
        .size   A_53b600, . - A_53b600

@ FUN_0053b63c
        .global A_53b63c
        .type   A_53b63c, %function
A_53b63c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L53b690
        mov     ip, #0
        str     r3, [r4, #0x80]!
        orr     r3, ip, r2, lsl #18
        str     r1, [r4, #0xc]
        orr     r3, r3, #2
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x14]
        ldr     r0, L53b694
        add     r1, r2, r2, lsl #1
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #9
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53b690:
        .word   0x00140044
L53b694:
        .word   0x008b8790
        .size   A_53b63c, . - A_53b63c

@ FUN_0053b6dc
        .global A_53b6dc
        .type   A_53b6dc, %function
A_53b6dc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x70000
        str     r0, [r4, #0x80]!
        ldr     r0, L53b714
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53b710
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L53b710:
        pop     {r4, r5, r6, pc}
L53b714:
        .word   0x008b8790
        .size   A_53b6dc, . - A_53b6dc

@ FUN_0053b718
        .global A_53b718
        .type   A_53b718, %function
A_53b718:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53b758
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3}
        add     ip, r4, #4
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        ldr     r0, L53b75c
        stm     ip, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53b758:
        .word   0x04090100
L53b75c:
        .word   0x008b8790
        .size   A_53b718, . - A_53b718

@ FUN_0053b760
        .global A_53b760
        .type   A_53b760, %function
A_53b760:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L53b7cc
        mov     ip, #0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        ldrb    r3, [sp, #0x18]
        strb    r3, [r4, #0xc]
        str     r1, [r4, #0x14]
        orr     r3, ip, r2, lsl #18
        rsb     r1, r2, r2, lsl #3
        str     r0, [r4, #0x1c]
        ldr     r0, L53b7d0
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #9
        orr     r3, r3, #2
        str     r1, [r4, #0x18]
        str     r3, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L53b7cc:
        .word   0x001a00c4
L53b7d0:
        .word   0x008b8790
        .size   A_53b760, . - A_53b760

@ FUN_0053b7d4
        .global A_53b7d4
        .type   A_53b7d4, %function
A_53b7d4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        ldr     r3, L53b828
        mov     r2, #0
        str     r3, [r5, #0x80]!
        str     r1, [r5, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r4, r3, #0x180
        orr     r1, r2, r1, lsl #14
        orr     r1, r1, #2
        ldrd    r6, r7, [r4]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L53b82c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53b828:
        .word   0x00100040
L53b82c:
        .word   0x008b8790
        .size   A_53b7d4, . - A_53b7d4

@ FUN_0053b830
        .global A_53b830
        .type   A_53b830, %function
A_53b830:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x80000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L53b878
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L53b87c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53b878:
        .word   0x004b0002
L53b87c:
        .word   0x008b8790
        .size   A_53b830, . - A_53b830

@ FUN_0053b8c4
        .global A_53b8c4
        .type   A_53b8c4, %function
A_53b8c4:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53b8f8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L53b8fc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L53b8f8:
        .word   0x002f0040
L53b8fc:
        .word   0x008b8790
        .size   A_53b8c4, . - A_53b8c4

@ FUN_0053b900
        .global A_53b900
        .type   A_53b900, %function
A_53b900:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L53b944
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53b940
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        stm     r5, {r1, r2, r3}
        ldr     r0, [r4, #4]
L53b940:
        pop     {r4, r5, r6, pc}
L53b944:
        .word   0x008b8790
        .size   A_53b900, . - A_53b900

@ FUN_0053b948
        .global A_53b948
        .type   A_53b948, %function
A_53b948:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x300000
        str     r0, [r4, #0x80]!
        ldr     r0, L53b998
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53b994
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldrb    r0, [r4, #0xc]
        strb    r0, [r6]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r7]
        ldr     r0, [r4, #4]
L53b994:
        pop     {r4, r5, r6, r7, r8, pc}
L53b998:
        .word   0x008b8790
        .size   A_53b948, . - A_53b948

@ FUN_0053b99c
        .global A_53b99c
        .type   A_53b99c, %function
A_53b99c:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L53b9e0
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L53b9e4
        orr     r1, r2, r1, lsl #18
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53b9e0:
        .word   0x001f0042
L53b9e4:
        .word   0x008b8790
        .size   A_53b99c, . - A_53b99c

@ FUN_0053b9e8
        .global A_53b9e8
        .type   A_53b9e8, %function
A_53b9e8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L53ba38
        str     r2, [r4, #0x80]!
        ldm     r0, {r2, r3, r5, r6, r7, r8, sb, ip}
        add     sl, r4, #4
        stm     sl, {r2, r3, r5, r6, r7, r8, sb, ip}
        ldrd    r2, r3, [r0, #0x20]
        ldr     r0, [r0, #0x28]
        str     r0, [r4, #0x2c]
        ldr     r0, L53ba3c
        strd    r0, r1, [r4, #0x30]
        ldr     r0, L53ba40
        strd    r2, r3, [r4, #0x24]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53ba38:
        .word   0x001e02c2
L53ba3c:
        .word   0x00400802
L53ba40:
        .word   0x008b8790
        .size   A_53b9e8, . - A_53b9e8

@ FUN_0053ba44
        .global A_53ba44
        .type   A_53ba44, %function
A_53ba44:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L53ba80
        mov     r2, #0
        str     r3, [r4, #0x80]!
        add     ip, r4, #4
        str     r1, [r4, #0xc]
        stm     ip, {r0, r2}
        ldr     r0, L53ba84
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53ba80:
        .word   0x04060042
L53ba84:
        .word   0x008b8790
        .size   A_53ba44, . - A_53ba44

@ FUN_0053ba88
        .global A_53ba88
        .type   A_53ba88, %function
A_53ba88:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L53bad8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53bad4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldrb    r0, [r4, #0xc]
        strb    r0, [r6]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r7]
        ldr     r0, [r4, #4]
L53bad4:
        pop     {r4, r5, r6, r7, r8, pc}
L53bad8:
        .word   0x008b8790
        .size   A_53ba88, . - A_53ba88

@ FUN_0053bb20
        .global A_53bb20
        .type   A_53bb20, %function
A_53bb20:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L53bb84
        mov     ip, #0
        str     r5, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        orr     r3, ip, r3, lsl #18
        orr     r3, r3, #2
        str     r1, [r4, #0x10]
        str     r3, [r4, #0xc]
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, ip, r2, lsl #15
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53bb88
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53bb84:
        .word   0x00310082
L53bb88:
        .word   0x008b8790
        .size   A_53bb20, . - A_53bb20

@ FUN_0053bb8c
        .global A_53bb8c
        .type   A_53bb8c, %function
A_53bb8c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53bbec
        mov     r1, #0
        str     ip, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        mrc     p15, #0, r2, c13, c0, #3
        add     r5, r2, #0x180
        orr     r1, r1, r3, lsl #18
        ldm     r5, {r7, r8}
        orr     r1, r1, #2
        str     r1, [r2, #0x180]!
        str     r0, [r2, #4]
        ldr     r0, L53bbf0
        ldr     r0, [r0]
        svc     #0x32
        stm     r5, {r7, r8}
        ands    r1, r0, #0x80000000
        bmi     L53bbe8
        ldr     r0, [r4, #8]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L53bbe8:
        pop     {r4, r5, r6, r7, r8, pc}
L53bbec:
        .word   0x00110080
L53bbf0:
        .word   0x008b8790
        .size   A_53bb8c, . - A_53bb8c

@ FUN_0053bbf4
        .global A_53bbf4
        .type   A_53bbf4, %function
A_53bbf4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53bc58
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #17
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53bc5c
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53bc58:
        .word   0x00150042
L53bc5c:
        .word   0x008b8790
        .size   A_53bbf4, . - A_53bbf4

@ FUN_0053bc60
        .global A_53bc60
        .type   A_53bc60, %function
A_53bc60:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xc0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53bca4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53bca0
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        stm     r5, {r1, r2, r3}
        ldr     r0, [r4, #4]
L53bca0:
        pop     {r4, r5, r6, pc}
L53bca4:
        .word   0x008b8790
        .size   A_53bc60, . - A_53bc60

@ FUN_0053bca8
        .global A_53bca8
        .type   A_53bca8, %function
A_53bca8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2d0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53bcec
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53bce8
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #0xc]
        str     r0, [r6]
        ldr     r0, [r4, #4]
L53bce8:
        pop     {r4, r5, r6, pc}
L53bcec:
        .word   0x008b8790
        .size   A_53bca8, . - A_53bca8

@ FUN_0053bcf0
        .global A_53bcf0
        .type   A_53bcf0, %function
A_53bcf0:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53bd24
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L53bd28
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L53bd24:
        .word   0x04030040
L53bd28:
        .word   0x008b8790
        .size   A_53bcf0, . - A_53bcf0

@ FUN_0053bd2c
        .global A_53bd2c
        .type   A_53bd2c, %function
A_53bd2c:
        push    {r0, r1, r2, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53bd74
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldrb    r0, [sp, #4]
        strb    r0, [r4, #8]
        ldrb    r0, [sp, #8]
        strb    r0, [r4, #0xc]
        ldr     r0, L53bd78
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53bd74:
        .word   0x040b00c0
L53bd78:
        .word   0x008b8790
        .size   A_53bd2c, . - A_53bd2c

@ FUN_0053be28
        .global A_53be28
        .type   A_53be28, %function
A_53be28:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53be90
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        add     r1, r2, r2, lsl #1
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53be94
        orr     r1, r3, r1, lsl #18
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53be90:
        .word   0x00120042
L53be94:
        .word   0x008b8790
        .size   A_53be28, . - A_53be28

@ FUN_0053be98
        .global A_53be98
        .type   A_53be98, %function
A_53be98:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xd0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53bedc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53bed8
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        stm     r5, {r1, r2, r3}
        ldr     r0, [r4, #4]
L53bed8:
        pop     {r4, r5, r6, pc}
L53bedc:
        .word   0x008b8790
        .size   A_53be98, . - A_53be98

@ FUN_0053bee0
        .global A_53bee0
        .type   A_53bee0, %function
A_53bee0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53bf1c
        add     r4, r4, #0x80
        stm     r4, {r0, r2, r3}
        ldr     r0, L53bf20
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53bf18
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53bf18:
        pop     {r4, r5, r6, pc}
L53bf1c:
        .word   0x00260080
L53bf20:
        .word   0x008b8790
        .size   A_53bee0, . - A_53bee0

@ FUN_0053bf24
        .global A_53bf24
        .type   A_53bf24, %function
A_53bf24:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53bf60
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L53bf64
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53bf5c
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L53bf5c:
        pop     {r4, r5, r6, pc}
L53bf60:
        .word   0x00270040
L53bf64:
        .word   0x008b8790
        .size   A_53bf24, . - A_53bf24

@ FUN_0053bf68
        .global A_53bf68
        .type   A_53bf68, %function
A_53bf68:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53bfa8
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3}
        add     ip, r4, #4
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        ldr     r0, L53bfac
        stm     ip, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53bfa8:
        .word   0x040a0100
L53bfac:
        .word   0x008b8790
        .size   A_53bf68, . - A_53bf68

@ FUN_0053bfb0
        .global A_53bfb0
        .type   A_53bfb0, %function
A_53bfb0:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53bff8
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        add     r0, r4, #8
        stm     r0, {r1, r2}
        ldrb    r0, [sp, #0xc]
        strb    r0, [r4, #0x10]
        ldr     r0, L53bffc
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L53bff8:
        .word   0x04010100
L53bffc:
        .word   0x008b8790
        .size   A_53bfb0, . - A_53bfb0

@ FUN_0053c000
        .global A_53c000
        .type   A_53c000, %function
A_53c000:
        push    {r0, r4, r5, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53c034
        str     r0, [r4, #0x80]!
        ldrb    r0, [sp]
        strb    r0, [r4, #4]
        ldr     r0, L53c038
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L53c034:
        .word   0x04020040
L53c038:
        .word   0x008b8790
        .size   A_53c000, . - A_53c000

@ FUN_0053c03c
        .global A_53c03c
        .type   A_53c03c, %function
A_53c03c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xe0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53c074
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53c070
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L53c070:
        pop     {r4, r5, r6, pc}
L53c074:
        .word   0x008b8790
        .size   A_53c03c, . - A_53c03c

@ FUN_0053c078
        .global A_53c078
        .type   A_53c078, %function
A_53c078:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x4100000
        str     r0, [r4, #0x80]!
        ldr     r0, L53c0a4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c0a4:
        .word   0x008b8790
        .size   A_53c078, . - A_53c078

@ FUN_0053c0a8
        .global A_53c0a8
        .type   A_53c0a8, %function
A_53c0a8:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53c0d4
        str     r0, [r4, #0x80]!
        ldr     r0, L53c0d8
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c0d4:
        .word   0x04040000
L53c0d8:
        .word   0x008b8790
        .size   A_53c0a8, . - A_53c0a8

@ FUN_0053c0dc
        .global A_53c0dc
        .type   A_53c0dc, %function
A_53c0dc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53c11c
        str     r1, [r4, #0x80]!
        ldm     r0, {r1, r2, r3}
        add     ip, r4, #4
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x10]
        ldr     r0, L53c120
        stm     ip, {r1, r2, r3}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c11c:
        .word   0x040d0100
L53c120:
        .word   0x008b8790
        .size   A_53c0dc, . - A_53c0dc

@ FUN_0053c124
        .global A_53c124
        .type   A_53c124, %function
A_53c124:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L53c15c
        str     r0, [r4, #8]
        ldr     r0, L53c160
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c15c:
        .word   0x002c0002
L53c160:
        .word   0x008b8790
        .size   A_53c124, . - A_53c124

@ FUN_0053c1fc
        .global A_53c1fc
        .type   A_53c1fc, %function
A_53c1fc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53c234
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53c230
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53c230:
        pop     {r4, r5, r6, pc}
L53c234:
        .word   0x008b8790
        .size   A_53c1fc, . - A_53c1fc

@ FUN_0053c238
        .global A_53c238
        .type   A_53c238, %function
A_53c238:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53c270
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L53c274
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c270:
        .word   0x00320042
L53c274:
        .word   0x008b8790
        .size   A_53c238, . - A_53c238

@ FUN_0053c278
        .global A_53c278
        .type   A_53c278, %function
A_53c278:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53c2a8
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L53c2ac
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c2a8:
        .word   0x00210040
L53c2ac:
        .word   0x008b8790
        .size   A_53c278, . - A_53c278

@ FUN_0053c2b0
        .global A_53c2b0
        .type   A_53c2b0, %function
A_53c2b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53c2e0
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        ldr     r0, L53c2e4
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c2e0:
        .word   0x040e0040
L53c2e4:
        .word   0x008b8790
        .size   A_53c2b0, . - A_53c2b0

@ FUN_0053c3bc
        .global A_53c3bc
        .type   A_53c3bc, %function
A_53c3bc:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x330000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L53c404
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L53c408
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53c404:
        .word   0x00800002
L53c408:
        .word   0x008b8790
        .size   A_53c3bc, . - A_53c3bc

@ FUN_0053c40c
        .global A_53c40c
        .type   A_53c40c, %function
A_53c40c:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L53c464
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        str     r0, [r4, #0xc]
        ldr     r0, L53c468
        strd    r0, r1, [r4, #0x10]
        mov     r1, #0x1000
        stm     r6, {r3, ip}
        orr     r0, r1, r3, lsl #15
        add     r6, r4, #0x18
        orr     r0, r0, #2
        stm     r6, {r0, r2}
        ldr     r0, L53c46c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L53c464:
        .word   0x00340046
L53c468:
        .word   0x00800c02
L53c46c:
        .word   0x008b8790
        .size   A_53c40c, . - A_53c40c

@ FUN_0053c470
        .global A_53c470
        .type   A_53c470, %function
A_53c470:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53c4cc
        mov     r3, #0
        str     ip, [r4, #0x80]!
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #18
        orr     r2, r2, #2
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r1, #0x180]!
        str     r0, [r1, #4]
        ldr     r0, L53c4d0
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53c4cc:
        .word   0x00190042
L53c4d0:
        .word   0x008b8790
        .size   A_53c470, . - A_53c470

@ FUN_0053c4d4
        .global A_53c4d4
        .type   A_53c4d4, %function
A_53c4d4:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53c538
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #14
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53c53c
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53c538:
        .word   0x00160042
L53c53c:
        .word   0x008b8790
        .size   A_53c4d4, . - A_53c4d4

@ FUN_0053c540
        .global A_53c540
        .type   A_53c540, %function
A_53c540:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x230000
        str     r0, [r4, #0x80]!
        ldr     r0, L53c56c
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c56c:
        .word   0x008b8790
        .size   A_53c540, . - A_53c540

@ FUN_0053c570
        .global A_53c570
        .type   A_53c570, %function
A_53c570:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x2e0000
        str     r0, [r4, #0x80]!
        ldr     r0, L53c5a8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53c5a4
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L53c5a4:
        pop     {r4, r5, r6, pc}
L53c5a8:
        .word   0x008b8790
        .size   A_53c570, . - A_53c570

@ FUN_0053c5ac
        .global A_53c5ac
        .type   A_53c5ac, %function
A_53c5ac:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x2b0000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L53c5f4
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L53c5f8
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53c5f4:
        .word   0x00660002
L53c5f8:
        .word   0x008b8790
        .size   A_53c5ac, . - A_53c5ac

@ FUN_0053c680
        .global A_53c680
        .type   A_53c680, %function
A_53c680:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L53c6e8
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldrb    r2, [sp, #0xc]
        strb    r2, [r4, #8]
        ldr     r2, L53c6ec
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        sub     r1, r2, #0xc00
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53c6f0
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L53c6e8:
        .word   0x00350082
L53c6ec:
        .word   0x00800c02
L53c6f0:
        .word   0x008b8790
        .size   A_53c680, . - A_53c680

@ FUN_0053c6f4
        .global A_53c6f4
        .type   A_53c6f4, %function
A_53c6f4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53c730
        add     r4, r4, #0x80
        stm     r4, {r0, r2, r3}
        ldr     r0, L53c734
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53c72c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53c72c:
        pop     {r4, r5, r6, pc}
L53c730:
        .word   0x001b0080
L53c734:
        .word   0x008b8790
        .size   A_53c6f4, . - A_53c6f4

@ FUN_0053c7bc
        .global A_53c7bc
        .type   A_53c7bc, %function
A_53c7bc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53c7f8
        add     r4, r4, #0x80
        stm     r4, {r0, r2, r3}
        ldr     r0, L53c7fc
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53c7f4
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L53c7f4:
        pop     {r4, r5, r6, pc}
L53c7f8:
        .word   0x00250080
L53c7fc:
        .word   0x008b8790
        .size   A_53c7bc, . - A_53c7bc

@ FUN_0053c800
        .global A_53c800
        .type   A_53c800, %function
A_53c800:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53c864
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #16
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53c868
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53c864:
        .word   0x00170042
L53c868:
        .word   0x008b8790
        .size   A_53c800, . - A_53c800

@ FUN_0053c86c
        .global A_53c86c
        .type   A_53c86c, %function
A_53c86c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L53c8a8
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L53c8ac
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53c8a4
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L53c8a4:
        pop     {r4, r5, r6, pc}
L53c8a8:
        .word   0x00240040
L53c8ac:
        .word   0x008b8790
        .size   A_53c86c, . - A_53c86c

@ FUN_0053c8b0
        .global A_53c8b0
        .type   A_53c8b0, %function
A_53c8b0:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L53c8e8
        str     r0, [r4, #8]
        ldr     r0, L53c8ec
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53c8e8:
        .word   0x00200002
L53c8ec:
        .word   0x008b8790
        .size   A_53c8b0, . - A_53c8b0

@ FUN_0053c8f0
        .global A_53c8f0
        .type   A_53c8f0, %function
A_53c8f0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x290000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L53c938
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L53c93c
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53c938:
        .word   0x004e0002
L53c93c:
        .word   0x008b8790
        .size   A_53c8f0, . - A_53c8f0

@ FUN_0053c9d0
        .global A_53c9d0
        .type   A_53c9d0, %function
A_53c9d0:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L53ca3c
        mov     r5, #0x400
        mov     r3, #0
        str     ip, [r4, #0x80]!
        add     ip, r2, r2, lsl #1
        str     r1, [r4, #0xc]
        orr     ip, r5, ip, lsl #16
        add     r5, r4, #4
        orr     ip, ip, #2
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #17
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L53ca40
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L53ca3c:
        .word   0x001c0042
L53ca40:
        .word   0x008b8790
        .size   A_53c9d0, . - A_53c9d0

@ FUN_0053ca44
        .global A_53ca44
        .type   A_53ca44, %function
A_53ca44:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L53ca7c
        str     r1, [r4, #0x80]!
        ldr     r1, L53ca80
        str     r0, [r4, #8]
        ldr     r0, L53ca84
        str     r1, [r4, #4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53ca7c:
        .word   0x001d0002
L53ca80:
        .word   0x00400802
L53ca84:
        .word   0x008b8790
        .size   A_53ca44, . - A_53ca44

@ FUN_0053cabc
        .global A_53cabc
        .type   A_53cabc, %function
A_53cabc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        add     r4, r4, #0x80
        ldr     r1, L53caf4
        str     r0, [r4, #8]
        ldr     r0, L53caf8
        mov     r2, #0
        stm     r4, {r1, r2}
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53caf4:
        .word   0x00030002
L53caf8:
        .word   0x008b8790
        .size   A_53cabc, . - A_53cabc

@ FUN_0053cafc
        .global A_53cafc
        .type   A_53cafc, %function
A_53cafc:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x40000
        str     r0, [r4, #0x80]!
        ldr     r0, L53cb28
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L53cb28:
        .word   0x008b8790
        .size   A_53cafc, . - A_53cafc

@ FUN_0053cb70
        .global A_53cb70
        .type   A_53cb70, %function
A_53cb70:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L53cba8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L53cba4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L53cba4:
        pop     {r4, r5, r6, pc}
L53cba8:
        .word   0x008b8790
        .size   A_53cb70, . - A_53cb70

@ FUN_00540878
        .global A_540878
        .type   A_540878, %function
A_540878:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x10000
        str     r0, [r4, #0x80]!
        ldr     r0, L5408b0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5408ac
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5408ac:
        pop     {r4, r5, r6, pc}
L5408b0:
        .word   0x008b7ccc
        .size   A_540878, . - A_540878

@ FUN_005408b4
        .global A_5408b4
        .type   A_5408b4, %function
A_5408b4:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L540908
        mov     ip, #0
        str     r3, [r4, #0x80]!
        orr     r3, ip, r2, lsl #18
        str     r1, [r4, #0xc]
        orr     r3, r3, #2
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x14]
        ldr     r0, L54090c
        add     r1, r2, r2, lsl #1
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #9
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L540908:
        .word   0x00140044
L54090c:
        .word   0x008b7ccc
        .size   A_5408b4, . - A_5408b4

@ FUN_00540990
        .global A_540990
        .type   A_540990, %function
A_540990:
        push    {r0, r1, r2, r3, r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L5409fc
        mov     ip, #0
        str     r3, [r4, #0x80]!
        str     r2, [r4, #4]
        ldrb    r3, [sp, #0xc]
        strb    r3, [r4, #8]
        ldrb    r3, [sp, #0x18]
        strb    r3, [r4, #0xc]
        str     r1, [r4, #0x14]
        orr     r3, ip, r2, lsl #18
        rsb     r1, r2, r2, lsl #3
        str     r0, [r4, #0x1c]
        ldr     r0, L540a00
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #9
        orr     r3, r3, #2
        str     r1, [r4, #0x18]
        str     r3, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, pc}
L5409fc:
        .word   0x001a00c4
L540a00:
        .word   0x008b7ccc
        .size   A_540990, . - A_540990

@ FUN_00540a60
        .global A_540a60
        .type   A_540a60, %function
A_540a60:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x80000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L540aa8
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L540aac
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L540aa8:
        .word   0x004b0002
L540aac:
        .word   0x008b7ccc
        .size   A_540a60, . - A_540a60

@ FUN_00540aec
        .global A_540aec
        .type   A_540aec, %function
A_540aec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x50000
        str     r0, [r4, #0x80]!
        ldr     r0, L540b30
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L540b2c
        add     r0, r4, #8
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r4, #0x14]
        str     r0, [r5, #0xc]
        stm     r5, {r1, r2, r3}
        ldr     r0, [r4, #4]
L540b2c:
        pop     {r4, r5, r6, pc}
L540b30:
        .word   0x008b7ccc
        .size   A_540aec, . - A_540aec

@ FUN_00540b88
        .global A_540b88
        .type   A_540b88, %function
A_540b88:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L540bcc
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        str     r0, [r4, #0xc]
        ldr     r0, L540bd0
        orr     r1, r2, r1, lsl #18
        orr     r1, r1, #2
        str     r1, [r4, #8]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L540bcc:
        .word   0x001f0042
L540bd0:
        .word   0x008b7ccc
        .size   A_540b88, . - A_540b88

@ FUN_00540bd4
        .global A_540bd4
        .type   A_540bd4, %function
A_540bd4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L540c24
        str     r2, [r4, #0x80]!
        ldm     r0, {r2, r3, r5, r6, r7, r8, sb, ip}
        add     sl, r4, #4
        stm     sl, {r2, r3, r5, r6, r7, r8, sb, ip}
        ldrd    r2, r3, [r0, #0x20]
        ldr     r0, [r0, #0x28]
        str     r0, [r4, #0x2c]
        ldr     r0, L540c28
        strd    r0, r1, [r4, #0x30]
        ldr     r0, L540c2c
        strd    r2, r3, [r4, #0x24]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L540c24:
        .word   0x001e02c2
L540c28:
        .word   0x00400802
L540c2c:
        .word   0x008b7ccc
        .size   A_540bd4, . - A_540bd4

@ FUN_00540c30
        .global A_540c30
        .type   A_540c30, %function
A_540c30:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x60000
        str     r0, [r4, #0x80]!
        ldr     r0, L540c80
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L540c7c
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldrb    r0, [r4, #0xc]
        strb    r0, [r6]
        ldrb    r0, [r4, #0x10]
        strb    r0, [r7]
        ldr     r0, [r4, #4]
L540c7c:
        pop     {r4, r5, r6, r7, r8, pc}
L540c80:
        .word   0x008b7ccc
        .size   A_540c30, . - A_540c30

@ FUN_00540cc8
        .global A_540cc8
        .type   A_540cc8, %function
A_540cc8:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L540d2c
        mov     ip, #0
        str     r5, [r4, #0x80]!
        strd    r2, r3, [r4, #4]
        orr     r3, ip, r3, lsl #18
        orr     r3, r3, #2
        str     r1, [r4, #0x10]
        str     r3, [r4, #0xc]
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, ip, r2, lsl #15
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L540d30
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L540d2c:
        .word   0x00310082
L540d30:
        .word   0x008b7ccc
        .size   A_540cc8, . - A_540cc8

@ FUN_00540d9c
        .global A_540d9c
        .type   A_540d9c, %function
A_540d9c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L540e00
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #17
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L540e04
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L540e00:
        .word   0x00150042
L540e04:
        .word   0x008b7ccc
        .size   A_540d9c, . - A_540d9c

@ FUN_00540f50
        .global A_540f50
        .type   A_540f50, %function
A_540f50:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L540f8c
        add     r4, r4, #0x80
        stm     r4, {r0, r2, r3}
        ldr     r0, L540f90
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L540f88
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L540f88:
        pop     {r4, r5, r6, pc}
L540f8c:
        .word   0x00260080
L540f90:
        .word   0x008b7ccc
        .size   A_540f50, . - A_540f50

@ FUN_00540f94
        .global A_540f94
        .type   A_540f94, %function
A_540f94:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L540fd0
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L540fd4
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L540fcc
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L540fcc:
        pop     {r4, r5, r6, pc}
L540fd0:
        .word   0x00270040
L540fd4:
        .word   0x008b7ccc
        .size   A_540f94, . - A_540f94

@ FUN_005410ec
        .global A_5410ec
        .type   A_5410ec, %function
A_5410ec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0xb0000
        str     r0, [r4, #0x80]!
        ldr     r0, L541124
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L541120
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L541120:
        pop     {r4, r5, r6, pc}
L541124:
        .word   0x008b7ccc
        .size   A_5410ec, . - A_5410ec

@ FUN_00541128
        .global A_541128
        .type   A_541128, %function
A_541128:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r1, L541160
        str     r1, [r4, #0x80]!
        str     r0, [r4, #4]
        mov     r0, #0x20
        str     r0, [r4, #8]
        ldr     r0, L541164
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L541160:
        .word   0x00320042
L541164:
        .word   0x008b7ccc
        .size   A_541128, . - A_541128

@ FUN_005411a0
        .global A_5411a0
        .type   A_5411a0, %function
A_5411a0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r2
        mov     r7, r3
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L541210
        mov     r2, #0
        str     r3, [r4, #0x80]!
        str     r1, [r4, #4]
        mrc     p15, #0, r3, c13, c0, #3
        add     r1, r1, r1, lsl #1
        add     r5, r3, #0x180
        orr     r1, r2, r1, lsl #17
        orr     r1, r1, #2
        ldrd    r8, sb, [r5]
        str     r1, [r3, #0x180]!
        str     r0, [r3, #4]
        ldr     r0, L541214
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        strd    r8, sb, [r5]
        bmi     L54120c
        ldrb    r0, [r4, #8]
        strb    r0, [r6]
        ldr     r0, [r4, #0xc]
        str     r0, [r7]
        ldr     r0, [r4, #4]
L54120c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L541210:
        .word   0x00220040
L541214:
        .word   0x008b7ccc
        .size   A_5411a0, . - A_5411a0

@ FUN_00541218
        .global A_541218
        .type   A_541218, %function
A_541218:
        push    {r4, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r3, L54126c
        mov     ip, #0
        str     r3, [r4, #0x80]!
        orr     r3, ip, r2, lsl #18
        str     r1, [r4, #0xc]
        orr     r3, r3, #2
        strd    r2, r3, [r4, #4]
        str     r0, [r4, #0x14]
        ldr     r0, L541270
        add     r1, r2, r2, lsl #4
        mov     r2, #0xc
        orr     r1, r2, r1, lsl #8
        str     r1, [r4, #0x10]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, pc}
L54126c:
        .word   0x00180044
L541270:
        .word   0x008b7ccc
        .size   A_541218, . - A_541218

@ FUN_00541274
        .global A_541274
        .type   A_541274, %function
A_541274:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r5, c13, c0, #3
        mov     r1, #0x330000
        str     r1, [r5, #0x80]!
        mrc     p15, #0, r1, c13, c0, #3
        add     r4, r1, #0x180
        ldr     r1, L5412bc
        ldrd    r6, r7, [r4]
        str     r0, [r4, #4]
        ldr     r0, L5412c0
        str     r1, [r4]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r4]
        ldrge   r0, [r5, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L5412bc:
        .word   0x00800002
L5412c0:
        .word   0x008b7ccc
        .size   A_541274, . - A_541274

@ FUN_005412c4
        .global A_5412c4
        .type   A_5412c4, %function
A_5412c4:
        push    {r4, r5, r6, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r5, L54131c
        mov     ip, #0
        str     r5, [r4, #0x80]!
        add     r6, r4, #4
        str     r0, [r4, #0xc]
        ldr     r0, L541320
        strd    r0, r1, [r4, #0x10]
        mov     r1, #0x1000
        stm     r6, {r3, ip}
        orr     r0, r1, r3, lsl #15
        add     r6, r4, #0x18
        orr     r0, r0, #2
        stm     r6, {r0, r2}
        ldr     r0, L541324
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, pc}
L54131c:
        .word   0x00340046
L541320:
        .word   0x00800c02
L541324:
        .word   0x008b7ccc
        .size   A_5412c4, . - A_5412c4

@ FUN_00541328
        .global A_541328
        .type   A_541328, %function
A_541328:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L541384
        mov     r3, #0
        str     ip, [r4, #0x80]!
        str     r2, [r4, #4]
        orr     r2, r3, r2, lsl #18
        orr     r2, r2, #2
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        ldrd    r6, r7, [r5]
        str     r2, [r1, #0x180]!
        str     r0, [r1, #4]
        ldr     r0, L541388
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L541384:
        .word   0x00190042
L541388:
        .word   0x008b7ccc
        .size   A_541328, . - A_541328

@ FUN_0054138c
        .global A_54138c
        .type   A_54138c, %function
A_54138c:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L5413f0
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #14
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L5413f4
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L5413f0:
        .word   0x00160042
L5413f4:
        .word   0x008b7ccc
        .size   A_54138c, . - A_54138c

@ FUN_00541538
        .global A_541538
        .type   A_541538, %function
A_541538:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r2, L5415a0
        str     r2, [r4, #0x80]!
        ldrb    r2, [sp, #8]
        strb    r2, [r4, #4]
        ldrb    r2, [sp, #0xc]
        strb    r2, [r4, #8]
        ldr     r2, L5415a4
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        sub     r1, r2, #0xc00
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L5415a8
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L5415a0:
        .word   0x00350082
L5415a4:
        .word   0x00800c02
L5415a8:
        .word   0x008b7ccc
        .size   A_541538, . - A_541538

@ FUN_005415ac
        .global A_5415ac
        .type   A_5415ac, %function
A_5415ac:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5415e8
        add     r4, r4, #0x80
        stm     r4, {r0, r2, r3}
        ldr     r0, L5415ec
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5415e4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5415e4:
        pop     {r4, r5, r6, pc}
L5415e8:
        .word   0x001b0080
L5415ec:
        .word   0x008b7ccc
        .size   A_5415ac, . - A_5415ac

@ FUN_005415f0
        .global A_5415f0
        .type   A_5415f0, %function
A_5415f0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L54162c
        add     r4, r4, #0x80
        stm     r4, {r0, r2, r3}
        ldr     r0, L541630
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L541628
        ldr     r0, [r4, #8]
        str     r0, [r5]
        ldr     r0, [r4, #4]
L541628:
        pop     {r4, r5, r6, pc}
L54162c:
        .word   0x00250080
L541630:
        .word   0x008b7ccc
        .size   A_5415f0, . - A_5415f0

@ FUN_00541634
        .global A_541634
        .type   A_541634, %function
A_541634:
        push    {r4, r5, r6, r7, r8, lr}
        mrc     p15, #0, r4, c13, c0, #3
        ldr     ip, L541698
        mov     r3, #0
        str     ip, [r4, #0x80]!
        orr     ip, r3, r2, lsl #18
        add     r5, r4, #4
        orr     ip, ip, #2
        str     r1, [r4, #0xc]
        stm     r5, {r2, ip}
        mrc     p15, #0, r1, c13, c0, #3
        add     r5, r1, #0x180
        orr     r1, r3, r2, lsl #16
        ldrd    r6, r7, [r5]
        str     r0, [r5, #4]
        ldr     r0, L54169c
        orr     r1, r1, #2
        str     r1, [r5]
        ldr     r0, [r0]
        svc     #0x32
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strd    r6, r7, [r5]
        ldrge   r0, [r4, #4]
        pop     {r4, r5, r6, r7, r8, pc}
L541698:
        .word   0x00170042
L54169c:
        .word   0x008b7ccc
        .size   A_541634, . - A_541634

@ FUN_005416a0
        .global A_5416a0
        .type   A_5416a0, %function
A_5416a0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        ldr     r0, L5416dc
        add     r4, r4, #0x80
        strd    r0, r1, [r4]
        ldr     r0, L5416e0
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5416d8
        ldrd    r0, r1, [r4, #8]
        strd    r0, r1, [r5]
        ldr     r0, [r4, #4]
L5416d8:
        pop     {r4, r5, r6, pc}
L5416dc:
        .word   0x00240040
L5416e0:
        .word   0x008b7ccc
        .size   A_5416a0, . - A_5416a0

@ FUN_00541970
        .global A_541970
        .type   A_541970, %function
A_541970:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mrc     p15, #0, r4, c13, c0, #3
        mov     r0, #0x20000
        str     r0, [r4, #0x80]!
        ldr     r0, L5419a8
        ldr     r0, [r0]
        svc     #0x32
        ands    r1, r0, #0x80000000
        bmi     L5419a4
        ldrb    r0, [r4, #8]
        strb    r0, [r5]
        ldr     r0, [r4, #4]
L5419a4:
        pop     {r4, r5, r6, pc}
L5419a8:
        .word   0x008b7ccc
        .size   A_541970, . - A_541970

@ FUN_0056e660
        .global A_56e660
        .type   A_56e660, %function
A_56e660:
        push    {r4, lr}
        mov     r4, r0
        mvn     r2, #0
        ldr     r0, [r0]
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r0, #1
        strb    r0, [r4, #4]
        pop     {r4, pc}
        .size   A_56e660, . - A_56e660

@ FUN_0056e744
        .global A_56e744
        .type   A_56e744, %function
A_56e744:
        push    {r4, lr}
        ldrh    r1, [r0, #0xe]
        cmp     r1, #1
        movne   r0, #0
        bne     L56e780
        ldr     r1, [r0, #8]
        mvn     r2, #0
        mov     r3, r2
        add     r1, r1, #1
        str     r1, [r0, #8]
        ldr     r0, [r0, #4]
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r0, #1
L56e780:
        pop     {r4, pc}
        .size   A_56e744, . - A_56e744

@ FUN_0056e784
        .global A_56e784
        .type   A_56e784, %function
A_56e784:
        push    {r4, lr}
        mov     r1, #0
        add     r4, r0, #4
        strh    r1, [r0, #0xe]
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L56e7ac
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L56e7ac:
        mov     r0, #1
        pop     {r4, pc}
        .size   A_56e784, . - A_56e784

@ FUN_0056e7b4
        .global A_56e7b4
        .type   A_56e7b4, %function
A_56e7b4:
        push    {r4, lr}
        ldrh    r1, [r0, #0xe]
        cmp     r1, #1
        movne   r0, #0
        bne     L56e7e8
        ldr     r1, [r0, #8]
        sub     r1, r1, #1
        str     r1, [r0, #8]
        ldr     r0, [r0, #4]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r0, #1
L56e7e8:
        pop     {r4, pc}
        .size   A_56e7b4, . - A_56e7b4

@ FUN_0056e7ec
        .global A_56e7ec
        .type   A_56e7ec, %function
A_56e7ec:
        push    {r4, lr}
        add     r4, r0, #4
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L56e80c
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L56e80c:
        sub     r0, r4, #4
        pop     {r4, pc}
        .size   A_56e7ec, . - A_56e7ec

@ FUN_0059dd18
        .global A_59dd18
        .type   A_59dd18, %function
A_59dd18:
        push    {r4, lr}
        mov     r4, r0
        svc     #0x28
        strd    r0, r1, [r4]
        pop     {r4, pc}
        .size   A_59dd18, . - A_59dd18

@ FUN_005dd620
        .global A_5dd620
        .type   A_5dd620, %function
A_5dd620:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L5dd660
        add     r4, r5, #0x48
        mov     r6, #0
        str     r0, [r5]
        ldr     r0, [r5, #0x48]
        cmp     r0, #0
        beq     L5dd64c
        svc     #0x23
        str     r6, [r4]
L5dd64c:
        ldr     r1, L5dd664
        sub     r0, r4, #0x48
        str     r6, [r1]
        pop     {r4, r5, r6, lr}
        b       Fn_4e019c
L5dd660:
        .word   0x0082e954
L5dd664:
        .word   0x008bfad8
        .size   A_5dd620, . - A_5dd620

@ FUN_00614c10
        .global A_614c10
        .type   A_614c10, %function
A_614c10:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x12c]
        mov     r6, r1
        cmp     r0, #0
        ldrne   r1, [r0, #4]
        cmpne   r1, #0
        beq     L614c64
        mov     r2, #0
        mov     r3, r2
        mov     r0, r1
        svc     #0x24
        lsrs    r1, r0, #0x1f
        mov     r5, r0
        blne    Fn_01b6ac
        ldr     r0, L614c6c
        cmp     r0, r5, lsl #22
        movne   r0, #1
        moveq   r0, #0
        teq     r0, #1
        bne     L614c68
L614c64:
        str     r6, [r4, #0x12c]
L614c68:
        pop     {r4, r5, r6, pc}
L614c6c:
        .word   0xff800000
        .size   A_614c10, . - A_614c10

@ FUN_0061d648
        .global A_61d648
        .type   A_61d648, %function
A_61d648:
        ldr     r1, L61d678
        push    {r4, lr}
        add     r4, r0, #0x18
        str     r1, [r0]
        ldr     r0, [r0, #0x18]
        cmp     r0, #0
        beq     L61d670
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L61d670:
        sub     r0, r4, #0x18
        pop     {r4, pc}
L61d678:
        .word   0x00804b30
        .size   A_61d648, . - A_61d648

@ FUN_0066a478
        .global A_66a478
        .type   A_66a478, %function
A_66a478:
        push    {r4, lr}
        cmp     r1, #0x20
        addls   r1, r1, #0x20
        ldr     r0, [r0]
        bls     L66a4b0
        ldr     r2, L66a4d4
        add     r2, r2, r1
        cmp     r2, #0x27
        addls   r1, r2, #0x18
        bls     L66a4b0
        ldr     r2, L66a4d8
        add     r1, r1, r2
        cmp     r1, #0x40
        mvnhi   r1, #0
L66a4b0:
        nop
        svc     #0xc
        lsrs    r1, r0, #0x1f
        nop
        beq     L66a4cc
        pop     {r4, lr}
        b       Fn_01b6ac
L66a4cc:
        pop     {r4, pc}
        .word   0x007e9204
L66a4d4:
        .word   0xaef62b00
L66a4d8:
        .word   0x93725b00
        .size   A_66a478, . - A_66a478
