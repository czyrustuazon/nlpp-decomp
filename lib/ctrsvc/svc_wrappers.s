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
        .global ac_CloseAsync
        .type   ac_CloseAsync, %function
ac_CloseAsync:
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
        .size   ac_CloseAsync, . - ac_CloseAsync

@ FUN_004e1d94
        .global ac_IsConnected
        .type   ac_IsConnected, %function
ac_IsConnected:
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
        .size   ac_IsConnected, . - ac_IsConnected

@ FUN_004e1de0
        .global ac_ConnectAsync
        .type   ac_ConnectAsync, %function
ac_ConnectAsync:
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
        .size   ac_ConnectAsync, . - ac_ConnectAsync

@ FUN_004e1e38
        .global ac_AddDenyApType
        .type   ac_AddDenyApType, %function
ac_AddDenyApType:
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
        .size   ac_AddDenyApType, . - ac_AddDenyApType

@ FUN_004e1e98
        .global ac_CloseAllASync
        .type   ac_CloseAllASync, %function
ac_CloseAllASync:
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
        .size   ac_CloseAllASync, . - ac_CloseAllASync

@ FUN_004e1ee0
        .global ac_AddAllowApType
        .type   ac_AddAllowApType, %function
ac_AddAllowApType:
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
        .size   ac_AddAllowApType, . - ac_AddAllowApType

@ FUN_004e1f40
        .global ac_DebugSetApType
        .type   ac_DebugSetApType, %function
ac_DebugSetApType:
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
        .size   ac_DebugSetApType, . - ac_DebugSetApType

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
        .global ac_GetAPSSIDList
        .type   ac_GetAPSSIDList, %function
ac_GetAPSSIDList:
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
        .size   ac_GetAPSSIDList, . - ac_GetAPSSIDList

@ FUN_004e2030
        .global ac_GetCloseResult
        .type   ac_GetCloseResult, %function
ac_GetCloseResult:
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
        .size   ac_GetCloseResult, . - ac_GetCloseResult

@ FUN_004e206c
        .global ac_SetAllowApType
        .type   ac_SetAllowApType, %function
ac_SetAllowApType:
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
        .size   ac_SetAllowApType, . - ac_SetAllowApType

@ FUN_004e2138
        .global ac_SetBssidFilter
        .type   ac_SetBssidFilter, %function
ac_SetBssidFilter:
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
        .size   ac_SetBssidFilter, . - ac_SetBssidFilter

@ FUN_004e21a4
        .global ac_SetNetworkArea
        .type   ac_SetNetworkArea, %function
ac_SetNetworkArea:
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
        .size   ac_SetNetworkArea, . - ac_SetNetworkArea

@ FUN_004e220c
        .global ac_ScanAPs
        .type   ac_ScanAPs, %function
ac_ScanAPs:
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
        .size   ac_ScanAPs, . - ac_ScanAPs

@ FUN_004e2280
        .global ac_GetConnectResult
        .type   ac_GetConnectResult, %function
ac_GetConnectResult:
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
        .size   ac_GetConnectResult, . - ac_GetConnectResult

@ FUN_004e22bc
        .global ac_GetInfraPriority
        .type   ac_GetInfraPriority, %function
ac_GetInfraPriority:
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
        .size   ac_GetInfraPriority, . - ac_GetInfraPriority

@ FUN_004e2348
        .global ac_GetPowerSaveMode
        .type   ac_GetPowerSaveMode, %function
ac_GetPowerSaveMode:
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
        .size   ac_GetPowerSaveMode, . - ac_GetPowerSaveMode

@ FUN_004e2398
        .global ac_ScanNintendoZone
        .type   ac_ScanNintendoZone, %function
ac_ScanNintendoZone:
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
        .size   ac_ScanNintendoZone, . - ac_ScanNintendoZone

@ FUN_004e240c
        .global ac_SetClientVersion
        .type   ac_SetClientVersion, %function
ac_SetClientVersion:
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
        .size   ac_SetClientVersion, . - ac_SetClientVersion

@ FUN_004e244c
        .global ac_SetInfraPriority
        .type   ac_SetInfraPriority, %function
ac_SetInfraPriority:
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
        .size   ac_SetInfraPriority, . - ac_SetInfraPriority

@ FUN_004e24b4
        .global ac_SetPowerSaveMode
        .type   ac_SetPowerSaveMode, %function
ac_SetPowerSaveMode:
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
        .size   ac_SetPowerSaveMode, . - ac_SetPowerSaveMode

@ FUN_004e251c
        .global ac_SetZoneMacFilter
        .type   ac_SetZoneMacFilter, %function
ac_SetZoneMacFilter:
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
        .size   ac_SetZoneMacFilter, . - ac_SetZoneMacFilter

@ FUN_004e2568
        .global ac_UnExclusiveAsync
        .type   ac_UnExclusiveAsync, %function
ac_UnExclusiveAsync:
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
        .size   ac_UnExclusiveAsync, . - ac_UnExclusiveAsync

@ FUN_004e25b0
        .global ac_GetCloseAllResult
        .type   ac_GetCloseAllResult, %function
ac_GetCloseAllResult:
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
        .size   ac_GetCloseAllResult, . - ac_GetCloseAllResult

@ FUN_004e25ec
        .global ac_GetConnectingSsid
        .type   ac_GetConnectingSsid, %function
ac_GetConnectingSsid:
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
        .size   ac_GetConnectingSsid, . - ac_GetConnectingSsid

@ FUN_004e263c
        .global ac_SetAuthServerType
        .type   ac_SetAuthServerType, %function
ac_SetAuthServerType:
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
        .size   ac_SetAuthServerType, . - ac_SetAuthServerType

@ FUN_004e26bc
        .global ac_GetExclusiveResult
        .type   ac_GetExclusiveResult, %function
ac_GetExclusiveResult:
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
        .size   ac_GetExclusiveResult, . - ac_GetExclusiveResult

@ FUN_004e26f8
        .global ac_LogoutHotspotAsync
        .type   ac_LogoutHotspotAsync, %function
ac_LogoutHotspotAsync:
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
        .size   ac_LogoutHotspotAsync, . - ac_LogoutHotspotAsync

@ FUN_004e2740
        .global ac_SetFromApplication
        .type   ac_SetFromApplication, %function
ac_SetFromApplication:
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
        .size   ac_SetFromApplication, . - ac_SetFromApplication

@ FUN_004e289c
        .global ac_GetConnectingHotspot
        .type   ac_GetConnectingHotspot, %function
ac_GetConnectingHotspot:
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
        .size   ac_GetConnectingHotspot, . - ac_GetConnectingHotspot

@ FUN_004e2900
        .global ac_GetNotAwakeMacFilter
        .type   ac_GetNotAwakeMacFilter, %function
ac_GetNotAwakeMacFilter:
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
        .size   ac_GetNotAwakeMacFilter, . - ac_GetNotAwakeMacFilter

@ FUN_004e2964
        .global ac_GetStatusChangeEvent
        .type   ac_GetStatusChangeEvent, %function
ac_GetStatusChangeEvent:
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
        .size   ac_GetStatusChangeEvent, . - ac_GetStatusChangeEvent

@ FUN_004e29ac
        .global ac_GetUnExcusiveResult
        .type   ac_GetUnExcusiveResult, %function
ac_GetUnExcusiveResult:
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
        .size   ac_GetUnExcusiveResult, . - ac_GetUnExcusiveResult

@ FUN_004e29e8
        .global ac_EndScanUsbAccessPoint
        .type   ac_EndScanUsbAccessPoint, %function
ac_EndScanUsbAccessPoint:
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
        .size   ac_EndScanUsbAccessPoint, . - ac_EndScanUsbAccessPoint

@ FUN_004e2a24
        .global ac_GetConnectingLocation
        .type   ac_GetConnectingLocation, %function
ac_GetConnectingLocation:
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
        .size   ac_GetConnectingLocation, . - ac_GetConnectingLocation

@ FUN_004e2a80
        .global ac_SetRequestEulaVersion
        .type   ac_SetRequestEulaVersion, %function
ac_SetRequestEulaVersion:
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
        .size   ac_SetRequestEulaVersion, . - ac_SetRequestEulaVersion

@ FUN_004e2af0
        .global ac_ConvertPassphraseToPsk
        .type   ac_ConvertPassphraseToPsk, %function
ac_ConvertPassphraseToPsk:
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
        .size   ac_ConvertPassphraseToPsk, . - ac_ConvertPassphraseToPsk

@ FUN_004e2b68
        .global ac_GetConnectingProxyHost
        .type   ac_GetConnectingProxyHost, %function
ac_GetConnectingProxyHost:
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
        .size   ac_GetConnectingProxyHost, . - ac_GetConnectingProxyHost

@ FUN_004e2bb8
        .global ac_GetConnectingProxyPort
        .type   ac_GetConnectingProxyPort, %function
ac_GetConnectingProxyPort:
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
        .size   ac_GetConnectingProxyPort, . - ac_GetConnectingProxyPort

@ FUN_004e2bf4
        .global ac_GetLastDetailErrorCode
        .type   ac_GetLastDetailErrorCode, %function
ac_GetLastDetailErrorCode:
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
        .size   ac_GetLastDetailErrorCode, . - ac_GetLastDetailErrorCode

@ FUN_004e2c30
        .global ac_GetLogoutHotspotResult
        .type   ac_GetLogoutHotspotResult, %function
ac_GetLogoutHotspotResult:
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
        .size   ac_GetLogoutHotspotResult, . - ac_GetLogoutHotspotResult

@ FUN_004e2c6c
        .global ac_ScanNintendoZoneSubset
        .type   ac_ScanNintendoZoneSubset, %function
ac_ScanNintendoZoneSubset:
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
        .size   ac_ScanNintendoZoneSubset, . - ac_ScanNintendoZoneSubset

@ FUN_004e2ce0
        .global ac_BeginScanUsbAccessPoint
        .type   ac_BeginScanUsbAccessPoint, %function
ac_BeginScanUsbAccessPoint:
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
        .size   ac_BeginScanUsbAccessPoint, . - ac_BeginScanUsbAccessPoint

@ FUN_004e2d28
        .global ac_DebugSetNetworkSetting1
        .type   ac_DebugSetNetworkSetting1, %function
ac_DebugSetNetworkSetting1:
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
        .size   ac_DebugSetNetworkSetting1, . - ac_DebugSetNetworkSetting1

@ FUN_004e2da4
        .global ac_GetConnectingSsidLength
        .type   ac_GetConnectingSsidLength, %function
ac_GetConnectingSsidLength:
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
        .size   ac_GetConnectingSsidLength, . - ac_GetConnectingSsidLength

@ FUN_004e2de0
        .global ac_RegisterDisconnectEvent
        .type   ac_RegisterDisconnectEvent, %function
ac_RegisterDisconnectEvent:
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
        .size   ac_RegisterDisconnectEvent, . - ac_RegisterDisconnectEvent

@ FUN_004e2e28
        .global ac_GetCurrentAPInfo
        .type   ac_GetCurrentAPInfo, %function
ac_GetCurrentAPInfo:
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
        .size   ac_GetCurrentAPInfo, . - ac_GetCurrentAPInfo

@ FUN_004e2e8c
        .global ac_GetConnectingProxyEnable
        .type   ac_GetConnectingProxyEnable, %function
ac_GetConnectingProxyEnable:
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
        .size   ac_GetConnectingProxyEnable, . - ac_GetConnectingProxyEnable

@ FUN_004e2ec8
        .global ac_GetConnectingSecurityMode
        .type   ac_GetConnectingSecurityMode, %function
ac_GetConnectingSecurityMode:
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
        .size   ac_GetConnectingSecurityMode, . - ac_GetConnectingSecurityMode

@ FUN_004e2f04
        .global ac_GetConnectingHotspotSubset
        .type   ac_GetConnectingHotspotSubset, %function
ac_GetConnectingHotspotSubset:
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
        .size   ac_GetConnectingHotspotSubset, . - ac_GetConnectingHotspotSubset

@ FUN_004e2f68
        .global ac_GetConnectingInfraPriority
        .type   ac_GetConnectingInfraPriority, %function
ac_GetConnectingInfraPriority:
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
        .size   ac_GetConnectingInfraPriority, . - ac_GetConnectingInfraPriority

@ FUN_004e2fa4
        .global ac_GetConnectingProxyAuthType
        .type   ac_GetConnectingProxyAuthType, %function
ac_GetConnectingProxyAuthType:
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
        .size   ac_GetConnectingProxyAuthType, . - ac_GetConnectingProxyAuthType

@ FUN_004e2fe0
        .global ac_GetConnectingProxyPassword
        .type   ac_GetConnectingProxyPassword, %function
ac_GetConnectingProxyPassword:
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
        .size   ac_GetConnectingProxyPassword, . - ac_GetConnectingProxyPassword

@ FUN_004e3030
        .global ac_GetConnectingProxyUserName
        .type   ac_GetConnectingProxyUserName, %function
ac_GetConnectingProxyUserName:
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
        .size   ac_GetConnectingProxyUserName, . - ac_GetConnectingProxyUserName

@ FUN_004e311c
        .global ac_GetCurrentNZoneInfo
        .type   ac_GetCurrentNZoneInfo, %function
ac_GetCurrentNZoneInfo:
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
        .size   ac_GetCurrentNZoneInfo, . - ac_GetCurrentNZoneInfo

@ FUN_004e3180
        .global ac_GetNZoneBeaconNotFoundEvent
        .type   ac_GetNZoneBeaconNotFoundEvent, %function
ac_GetNZoneBeaconNotFoundEvent:
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
        .size   ac_GetNZoneBeaconNotFoundEvent, . - ac_GetNZoneBeaconNotFoundEvent

@ FUN_004e322c
        .global ac_GetStatus
        .type   ac_GetStatus, %function
ac_GetStatus:
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
        .size   ac_GetStatus, . - ac_GetStatus

@ FUN_004e3268
        .global ac_i_CloseAsync
        .type   ac_i_CloseAsync, %function
ac_i_CloseAsync:
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
        .size   ac_i_CloseAsync, . - ac_i_CloseAsync

@ FUN_004e32b0
        .global ac_i_IsConnected
        .type   ac_i_IsConnected, %function
ac_i_IsConnected:
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
        .size   ac_i_IsConnected, . - ac_i_IsConnected

@ FUN_004e32fc
        .global ac_i_ConnectAsync
        .type   ac_i_ConnectAsync, %function
ac_i_ConnectAsync:
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
        .size   ac_i_ConnectAsync, . - ac_i_ConnectAsync

@ FUN_004e3354
        .global ac_i_AddDenyApType
        .type   ac_i_AddDenyApType, %function
ac_i_AddDenyApType:
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
        .size   ac_i_AddDenyApType, . - ac_i_AddDenyApType

@ FUN_004e33b4
        .global ac_i_CloseAllASync
        .type   ac_i_CloseAllASync, %function
ac_i_CloseAllASync:
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
        .size   ac_i_CloseAllASync, . - ac_i_CloseAllASync

@ FUN_004e33fc
        .global ac_i_AddAllowApType
        .type   ac_i_AddAllowApType, %function
ac_i_AddAllowApType:
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
        .size   ac_i_AddAllowApType, . - ac_i_AddAllowApType

@ FUN_004e345c
        .global ac_i_DebugSetApType
        .type   ac_i_DebugSetApType, %function
ac_i_DebugSetApType:
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
        .size   ac_i_DebugSetApType, . - ac_i_DebugSetApType

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
        .global ac_i_GetAPSSIDList
        .type   ac_i_GetAPSSIDList, %function
ac_i_GetAPSSIDList:
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
        .size   ac_i_GetAPSSIDList, . - ac_i_GetAPSSIDList

@ FUN_004e354c
        .global ac_i_GetCloseResult
        .type   ac_i_GetCloseResult, %function
ac_i_GetCloseResult:
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
        .size   ac_i_GetCloseResult, . - ac_i_GetCloseResult

@ FUN_004e3588
        .global ac_i_SetAllowApType
        .type   ac_i_SetAllowApType, %function
ac_i_SetAllowApType:
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
        .size   ac_i_SetAllowApType, . - ac_i_SetAllowApType

@ FUN_004e35e8
        .global ac_i_SetApNumFilter
        .type   ac_i_SetApNumFilter, %function
ac_i_SetApNumFilter:
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
        .size   ac_i_SetApNumFilter, . - ac_i_SetApNumFilter

@ FUN_004e3654
        .global ac_i_SetBssidFilter
        .type   ac_i_SetBssidFilter, %function
ac_i_SetBssidFilter:
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
        .size   ac_i_SetBssidFilter, . - ac_i_SetBssidFilter

@ FUN_004e36c0
        .global ac_i_SetNetworkArea
        .type   ac_i_SetNetworkArea, %function
ac_i_SetNetworkArea:
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
        .size   ac_i_SetNetworkArea, . - ac_i_SetNetworkArea

@ FUN_004e3728
        .global ac_i_ScanAPs
        .type   ac_i_ScanAPs, %function
ac_i_ScanAPs:
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
        .size   ac_i_ScanAPs, . - ac_i_ScanAPs

@ FUN_004e379c
        .global ac_i_GetConnectResult
        .type   ac_i_GetConnectResult, %function
ac_i_GetConnectResult:
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
        .size   ac_i_GetConnectResult, . - ac_i_GetConnectResult

@ FUN_004e37d8
        .global ac_i_GetInfraPriority
        .type   ac_i_GetInfraPriority, %function
ac_i_GetInfraPriority:
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
        .size   ac_i_GetInfraPriority, . - ac_i_GetInfraPriority

@ FUN_004e3828
        .global ac_i_GetLastErrorCode
        .type   ac_i_GetLastErrorCode, %function
ac_i_GetLastErrorCode:
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
        .size   ac_i_GetLastErrorCode, . - ac_i_GetLastErrorCode

@ FUN_004e3864
        .global ac_i_GetPowerSaveMode
        .type   ac_i_GetPowerSaveMode, %function
ac_i_GetPowerSaveMode:
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
        .size   ac_i_GetPowerSaveMode, . - ac_i_GetPowerSaveMode

@ FUN_004e38b4
        .global ac_i_ScanNintendoZone
        .type   ac_i_ScanNintendoZone, %function
ac_i_ScanNintendoZone:
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
        .size   ac_i_ScanNintendoZone, . - ac_i_ScanNintendoZone

@ FUN_004e3928
        .global ac_i_SetClientVersion
        .type   ac_i_SetClientVersion, %function
ac_i_SetClientVersion:
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
        .size   ac_i_SetClientVersion, . - ac_i_SetClientVersion

@ FUN_004e3968
        .global ac_i_SetInfraPriority
        .type   ac_i_SetInfraPriority, %function
ac_i_SetInfraPriority:
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
        .size   ac_i_SetInfraPriority, . - ac_i_SetInfraPriority

@ FUN_004e39d0
        .global ac_i_SetPowerSaveMode
        .type   ac_i_SetPowerSaveMode, %function
ac_i_SetPowerSaveMode:
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
        .size   ac_i_SetPowerSaveMode, . - ac_i_SetPowerSaveMode

@ FUN_004e3a38
        .global ac_i_SetZoneMacFilter
        .type   ac_i_SetZoneMacFilter, %function
ac_i_SetZoneMacFilter:
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
        .size   ac_i_SetZoneMacFilter, . - ac_i_SetZoneMacFilter

@ FUN_004e3a84
        .global ac_i_UnExclusiveAsync
        .type   ac_i_UnExclusiveAsync, %function
ac_i_UnExclusiveAsync:
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
        .size   ac_i_UnExclusiveAsync, . - ac_i_UnExclusiveAsync

@ FUN_004e3acc
        .global ac_i_GetCloseAllResult
        .type   ac_i_GetCloseAllResult, %function
ac_i_GetCloseAllResult:
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
        .size   ac_i_GetCloseAllResult, . - ac_i_GetCloseAllResult

@ FUN_004e3b08
        .global ac_i_GetConnectingSsid
        .type   ac_i_GetConnectingSsid, %function
ac_i_GetConnectingSsid:
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
        .size   ac_i_GetConnectingSsid, . - ac_i_GetConnectingSsid

@ FUN_004e3b58
        .global ac_i_SetAuthServerType
        .type   ac_i_SetAuthServerType, %function
ac_i_SetAuthServerType:
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
        .size   ac_i_SetAuthServerType, . - ac_i_SetAuthServerType

@ FUN_004e3b9c
        .global ac_i_CancelConnectAsync
        .type   ac_i_CancelConnectAsync, %function
ac_i_CancelConnectAsync:
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
        .size   ac_i_CancelConnectAsync, . - ac_i_CancelConnectAsync

@ FUN_004e3bd8
        .global ac_i_GetExclusiveResult
        .type   ac_i_GetExclusiveResult, %function
ac_i_GetExclusiveResult:
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
        .size   ac_i_GetExclusiveResult, . - ac_i_GetExclusiveResult

@ FUN_004e3c14
        .global ac_i_LoadNetworkSetting
        .type   ac_i_LoadNetworkSetting, %function
ac_i_LoadNetworkSetting:
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
        .size   ac_i_LoadNetworkSetting, . - ac_i_LoadNetworkSetting

@ FUN_004e3c50
        .global ac_i_LogoutHotspotAsync
        .type   ac_i_LogoutHotspotAsync, %function
ac_i_LogoutHotspotAsync:
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
        .size   ac_i_LogoutHotspotAsync, . - ac_i_LogoutHotspotAsync

@ FUN_004e3c98
        .global ac_i_SetFromApplication
        .type   ac_i_SetFromApplication, %function
ac_i_SetFromApplication:
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
        .size   ac_i_SetFromApplication, . - ac_i_SetFromApplication

@ FUN_004e3d00
        .global ac_i_CreateDefaultConfig
        .type   ac_i_CreateDefaultConfig, %function
ac_i_CreateDefaultConfig:
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
        .size   ac_i_CreateDefaultConfig, . - ac_i_CreateDefaultConfig

@ FUN_004e3d50
        .global ac_i_DebugSetNetworkArea
        .type   ac_i_DebugSetNetworkArea, %function
ac_i_DebugSetNetworkArea:
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
        .size   ac_i_DebugSetNetworkArea, . - ac_i_DebugSetNetworkArea

@ FUN_004e3db8
        .global ac_i_FlushNetworkSetting
        .type   ac_i_FlushNetworkSetting, %function
ac_i_FlushNetworkSetting:
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
        .size   ac_i_FlushNetworkSetting, . - ac_i_FlushNetworkSetting

@ FUN_004e3dec
        .global ac_i_GetWifiStatus
        .type   ac_i_GetWifiStatus, %function
ac_i_GetWifiStatus:
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
        .size   ac_i_GetWifiStatus, . - ac_i_GetWifiStatus

@ FUN_004e3e28
        .global ac_i_GetConnectingHotspot
        .type   ac_i_GetConnectingHotspot, %function
ac_i_GetConnectingHotspot:
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
        .size   ac_i_GetConnectingHotspot, . - ac_i_GetConnectingHotspot

@ FUN_004e3e8c
        .global ac_i_GetNotAwakeMacFilter
        .type   ac_i_GetNotAwakeMacFilter, %function
ac_i_GetNotAwakeMacFilter:
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
        .size   ac_i_GetNotAwakeMacFilter, . - ac_i_GetNotAwakeMacFilter

@ FUN_004e3ef0
        .global ac_i_GetStatusChangeEvent
        .type   ac_i_GetStatusChangeEvent, %function
ac_i_GetStatusChangeEvent:
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
        .size   ac_i_GetStatusChangeEvent, . - ac_i_GetStatusChangeEvent

@ FUN_004e3f38
        .global ac_i_GetUnExcusiveResult
        .type   ac_i_GetUnExcusiveResult, %function
ac_i_GetUnExcusiveResult:
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
        .size   ac_i_GetUnExcusiveResult, . - ac_i_GetUnExcusiveResult

@ FUN_004e3f74
        .global ac_i_RemoveNetworkSetting
        .type   ac_i_RemoveNetworkSetting, %function
ac_i_RemoveNetworkSetting:
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
        .size   ac_i_RemoveNetworkSetting, . - ac_i_RemoveNetworkSetting

@ FUN_004e3fb0
        .global ac_i_UpdateNetworkSetting
        .type   ac_i_UpdateNetworkSetting, %function
ac_i_UpdateNetworkSetting:
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
        .size   ac_i_UpdateNetworkSetting, . - ac_i_UpdateNetworkSetting

@ FUN_004e3fec
        .global ac_i_EndScanUsbAccessPoint
        .type   ac_i_EndScanUsbAccessPoint, %function
ac_i_EndScanUsbAccessPoint:
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
        .size   ac_i_EndScanUsbAccessPoint, . - ac_i_EndScanUsbAccessPoint

@ FUN_004e4028
        .global ac_i_GetConnectingLocation
        .type   ac_i_GetConnectingLocation, %function
ac_i_GetConnectingLocation:
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
        .size   ac_i_GetConnectingLocation, . - ac_i_GetConnectingLocation

@ FUN_004e4084
        .global ac_i_GetNetworkSetting_Crc
        .type   ac_i_GetNetworkSetting_Crc, %function
ac_i_GetNetworkSetting_Crc:
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
        .size   ac_i_GetNetworkSetting_Crc, . - ac_i_GetNetworkSetting_Crc

@ FUN_004e40c4
        .global ac_i_SetNetworkSetting_Crc
        .type   ac_i_SetNetworkSetting_Crc, %function
ac_i_SetNetworkSetting_Crc:
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
        .size   ac_i_SetNetworkSetting_Crc, . - ac_i_SetNetworkSetting_Crc

@ FUN_004e4100
        .global ac_i_SetRequestEulaVersion
        .type   ac_i_SetRequestEulaVersion, %function
ac_i_SetRequestEulaVersion:
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
        .size   ac_i_SetRequestEulaVersion, . - ac_i_SetRequestEulaVersion

@ FUN_004e4170
        .global ac_i_ConvertPassphraseToPsk
        .type   ac_i_ConvertPassphraseToPsk, %function
ac_i_ConvertPassphraseToPsk:
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
        .size   ac_i_ConvertPassphraseToPsk, . - ac_i_ConvertPassphraseToPsk

@ FUN_004e41e8
        .global ac_i_GetConnectingProxyHost
        .type   ac_i_GetConnectingProxyHost, %function
ac_i_GetConnectingProxyHost:
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
        .size   ac_i_GetConnectingProxyHost, . - ac_i_GetConnectingProxyHost

@ FUN_004e4238
        .global ac_i_GetConnectingProxyPort
        .type   ac_i_GetConnectingProxyPort, %function
ac_i_GetConnectingProxyPort:
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
        .size   ac_i_GetConnectingProxyPort, . - ac_i_GetConnectingProxyPort

@ FUN_004e4274
        .global ac_i_GetLastDetailErrorCode
        .type   ac_i_GetLastDetailErrorCode, %function
ac_i_GetLastDetailErrorCode:
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
        .size   ac_i_GetLastDetailErrorCode, . - ac_i_GetLastDetailErrorCode

@ FUN_004e42b0
        .global ac_i_GetLogoutHotspotResult
        .type   ac_i_GetLogoutHotspotResult, %function
ac_i_GetLogoutHotspotResult:
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
        .size   ac_i_GetLogoutHotspotResult, . - ac_i_GetLogoutHotspotResult

@ FUN_004e42ec
        .global ac_i_ScanNintendoZoneSubset
        .type   ac_i_ScanNintendoZoneSubset, %function
ac_i_ScanNintendoZoneSubset:
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
        .size   ac_i_ScanNintendoZoneSubset, . - ac_i_ScanNintendoZoneSubset

@ FUN_004e4360
        .global ac_i_BeginScanUsbAccessPoint
        .type   ac_i_BeginScanUsbAccessPoint, %function
ac_i_BeginScanUsbAccessPoint:
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
        .size   ac_i_BeginScanUsbAccessPoint, . - ac_i_BeginScanUsbAccessPoint

@ FUN_004e43a8
        .global ac_i_DebugSetNetworkSetting1
        .type   ac_i_DebugSetNetworkSetting1, %function
ac_i_DebugSetNetworkSetting1:
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
        .size   ac_i_DebugSetNetworkSetting1, . - ac_i_DebugSetNetworkSetting1

@ FUN_004e4424
        .global ac_i_GetConnectingSsidLength
        .type   ac_i_GetConnectingSsidLength, %function
ac_i_GetConnectingSsidLength:
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
        .size   ac_i_GetConnectingSsidLength, . - ac_i_GetConnectingSsidLength

@ FUN_004e4460
        .global ac_i_RegisterDisconnectEvent
        .type   ac_i_RegisterDisconnectEvent, %function
ac_i_RegisterDisconnectEvent:
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
        .size   ac_i_RegisterDisconnectEvent, . - ac_i_RegisterDisconnectEvent

@ FUN_004e44a8
        .global ac_i_GetCurrentAPInfo
        .type   ac_i_GetCurrentAPInfo, %function
ac_i_GetCurrentAPInfo:
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
        .size   ac_i_GetCurrentAPInfo, . - ac_i_GetCurrentAPInfo

@ FUN_004e450c
        .global ac_i_GetConnectingProxyEnable
        .type   ac_i_GetConnectingProxyEnable, %function
ac_i_GetConnectingProxyEnable:
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
        .size   ac_i_GetConnectingProxyEnable, . - ac_i_GetConnectingProxyEnable

@ FUN_004e4548
        .global ac_i_GetConnectingSecurityMode
        .type   ac_i_GetConnectingSecurityMode, %function
ac_i_GetConnectingSecurityMode:
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
        .size   ac_i_GetConnectingSecurityMode, . - ac_i_GetConnectingSecurityMode

@ FUN_004e4584
        .global ac_i_GetNetworkSettingVersion
        .type   ac_i_GetNetworkSettingVersion, %function
ac_i_GetNetworkSettingVersion:
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
        .size   ac_i_GetNetworkSettingVersion, . - ac_i_GetNetworkSettingVersion

@ FUN_004e45c4
        .global ac_i_SetNetworkSettingVersion
        .type   ac_i_SetNetworkSettingVersion, %function
ac_i_SetNetworkSettingVersion:
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
        .size   ac_i_SetNetworkSettingVersion, . - ac_i_SetNetworkSettingVersion

@ FUN_004e4600
        .global ac_i_GetConnectingHotspotSubset
        .type   ac_i_GetConnectingHotspotSubset, %function
ac_i_GetConnectingHotspotSubset:
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
        .size   ac_i_GetConnectingHotspotSubset, . - ac_i_GetConnectingHotspotSubset

@ FUN_004e4664
        .global ac_i_GetConnectingInfraPriority
        .type   ac_i_GetConnectingInfraPriority, %function
ac_i_GetConnectingInfraPriority:
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
        .size   ac_i_GetConnectingInfraPriority, . - ac_i_GetConnectingInfraPriority

@ FUN_004e46a0
        .global ac_i_GetConnectingProxyAuthType
        .type   ac_i_GetConnectingProxyAuthType, %function
ac_i_GetConnectingProxyAuthType:
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
        .size   ac_i_GetConnectingProxyAuthType, . - ac_i_GetConnectingProxyAuthType

@ FUN_004e46dc
        .global ac_i_GetConnectingProxyPassword
        .type   ac_i_GetConnectingProxyPassword, %function
ac_i_GetConnectingProxyPassword:
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
        .size   ac_i_GetConnectingProxyPassword, . - ac_i_GetConnectingProxyPassword

@ FUN_004e472c
        .global ac_i_GetConnectingProxyUserName
        .type   ac_i_GetConnectingProxyUserName, %function
ac_i_GetConnectingProxyUserName:
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
        .size   ac_i_GetConnectingProxyUserName, . - ac_i_GetConnectingProxyUserName

@ FUN_004e4818
        .global ac_i_ConvertNetworkSettingNdsTo3ds
        .type   ac_i_ConvertNetworkSettingNdsTo3ds, %function
ac_i_ConvertNetworkSettingNdsTo3ds:
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
        .size   ac_i_ConvertNetworkSettingNdsTo3ds, . - ac_i_ConvertNetworkSettingNdsTo3ds

@ FUN_004e4874
        .global ac_i_GetNetworkOtherMtu
        .type   ac_i_GetNetworkOtherMtu, %function
ac_i_GetNetworkOtherMtu:
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
        .size   ac_i_GetNetworkOtherMtu, . - ac_i_GetNetworkOtherMtu

@ FUN_004e48b4
        .global ac_i_InitializeNetworkSetting
        .type   ac_i_InitializeNetworkSetting, %function
ac_i_InitializeNetworkSetting:
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
        .size   ac_i_InitializeNetworkSetting, . - ac_i_InitializeNetworkSetting

@ FUN_004e48f0
        .global ac_i_SetNetworkOtherMtu
        .type   ac_i_SetNetworkOtherMtu, %function
ac_i_SetNetworkOtherMtu:
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
        .size   ac_i_SetNetworkOtherMtu, . - ac_i_SetNetworkOtherMtu

@ FUN_004e492c
        .global ac_i_GetNetworkIpNetmask
        .type   ac_i_GetNetworkIpNetmask, %function
ac_i_GetNetworkIpNetmask:
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
        .size   ac_i_GetNetworkIpNetmask, . - ac_i_GetNetworkIpNetmask

@ FUN_004e4980
        .global ac_i_GetNetworkProxyHost
        .type   ac_i_GetNetworkProxyHost, %function
ac_i_GetNetworkProxyHost:
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
        .size   ac_i_GetNetworkProxyHost, . - ac_i_GetNetworkProxyHost

@ FUN_004e49d4
        .global ac_i_GetNetworkProxyPort
        .type   ac_i_GetNetworkProxyPort, %function
ac_i_GetNetworkProxyPort:
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
        .size   ac_i_GetNetworkProxyPort, . - ac_i_GetNetworkProxyPort

@ FUN_004e4a14
        .global ac_i_SetNetworkIpNetMask
        .type   ac_i_SetNetworkIpNetMask, %function
ac_i_SetNetworkIpNetMask:
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
        .size   ac_i_SetNetworkIpNetMask, . - ac_i_SetNetworkIpNetMask

@ FUN_004e4a58
        .global ac_i_SetNetworkProxyHost
        .type   ac_i_SetNetworkProxyHost, %function
ac_i_SetNetworkProxyHost:
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
        .size   ac_i_SetNetworkProxyHost, . - ac_i_SetNetworkProxyHost

@ FUN_004e4a9c
        .global ac_i_SetNetworkProxyPort
        .type   ac_i_SetNetworkProxyPort, %function
ac_i_SetNetworkProxyPort:
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
        .size   ac_i_SetNetworkProxyPort, . - ac_i_SetNetworkProxyPort

@ FUN_004e4ad8
        .global ac_i_GetNetworkIpAddress
        .type   ac_i_GetNetworkIpAddress, %function
ac_i_GetNetworkIpAddress:
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
        .size   ac_i_GetNetworkIpAddress, . - ac_i_GetNetworkIpAddress

@ FUN_004e4b2c
        .global ac_i_GetNetworkProxyEnable
        .type   ac_i_GetNetworkProxyEnable, %function
ac_i_GetNetworkProxyEnable:
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
        .size   ac_i_GetNetworkProxyEnable, . - ac_i_GetNetworkProxyEnable

@ FUN_004e4b6c
        .global ac_i_SetNetworkIpAddress
        .type   ac_i_SetNetworkIpAddress, %function
ac_i_SetNetworkIpAddress:
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
        .size   ac_i_SetNetworkIpAddress, . - ac_i_SetNetworkIpAddress

@ FUN_004e4bb0
        .global ac_i_SetNetworkProxyEnable
        .type   ac_i_SetNetworkProxyEnable, %function
ac_i_SetNetworkProxyEnable:
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
        .size   ac_i_SetNetworkProxyEnable, . - ac_i_SetNetworkProxyEnable

@ FUN_004e4bec
        .global ac_i_GetConnectingNetworkCrc
        .type   ac_i_GetConnectingNetworkCrc, %function
ac_i_GetConnectingNetworkCrc:
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
        .size   ac_i_GetConnectingNetworkCrc, . - ac_i_GetConnectingNetworkCrc

@ FUN_004e4c28
        .global ac_i_GetCurrentNZoneInfo
        .type   ac_i_GetCurrentNZoneInfo, %function
ac_i_GetCurrentNZoneInfo:
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
        .size   ac_i_GetCurrentNZoneInfo, . - ac_i_GetCurrentNZoneInfo

@ FUN_004e4ccc
        .global ac_i_GetNetworkIpPrimaryDNS
        .type   ac_i_GetNetworkIpPrimaryDNS, %function
ac_i_GetNetworkIpPrimaryDNS:
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
        .size   ac_i_GetNetworkIpPrimaryDNS, . - ac_i_GetNetworkIpPrimaryDNS

@ FUN_004e4d20
        .global ac_i_SetNetworkIpEnableDHCP
        .type   ac_i_SetNetworkIpEnableDHCP, %function
ac_i_SetNetworkIpEnableDHCP:
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
        .size   ac_i_SetNetworkIpEnableDHCP, . - ac_i_SetNetworkIpEnableDHCP

@ FUN_004e4d5c
        .global ac_i_SetNetworkIpPrimaryDNS
        .type   ac_i_SetNetworkIpPrimaryDNS, %function
ac_i_SetNetworkIpPrimaryDNS:
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
        .size   ac_i_SetNetworkIpPrimaryDNS, . - ac_i_SetNetworkIpPrimaryDNS

@ FUN_004e4da0
        .global ac_i_GetNetworkProxyAuthType
        .type   ac_i_GetNetworkProxyAuthType, %function
ac_i_GetNetworkProxyAuthType:
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
        .size   ac_i_GetNetworkProxyAuthType, . - ac_i_GetNetworkProxyAuthType

@ FUN_004e4de0
        .global ac_i_GetNetworkSettingProxyPassword
        .type   ac_i_GetNetworkSettingProxyPassword, %function
ac_i_GetNetworkSettingProxyPassword:
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
        .size   ac_i_GetNetworkSettingProxyPassword, . - ac_i_GetNetworkSettingProxyPassword

@ FUN_004e4e34
        .global ac_i_GetNetworkSettingProxyUserName
        .type   ac_i_GetNetworkSettingProxyUserName, %function
ac_i_GetNetworkSettingProxyUserName:
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
        .size   ac_i_GetNetworkSettingProxyUserName, . - ac_i_GetNetworkSettingProxyUserName

@ FUN_004e4e88
        .global ac_i_SetNetworkProxyAuthType
        .type   ac_i_SetNetworkProxyAuthType, %function
ac_i_SetNetworkProxyAuthType:
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
        .size   ac_i_SetNetworkProxyAuthType, . - ac_i_SetNetworkProxyAuthType

@ FUN_004e4ec4
        .global ac_i_SetNetworkSettingProxyPassword
        .type   ac_i_SetNetworkSettingProxyPassword, %function
ac_i_SetNetworkSettingProxyPassword:
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
        .size   ac_i_SetNetworkSettingProxyPassword, . - ac_i_SetNetworkSettingProxyPassword

@ FUN_004e4f08
        .global ac_i_SetNetworkSettingProxyUserName
        .type   ac_i_SetNetworkSettingProxyUserName, %function
ac_i_SetNetworkSettingProxyUserName:
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
        .size   ac_i_SetNetworkSettingProxyUserName, . - ac_i_SetNetworkSettingProxyUserName

@ FUN_004e4f4c
        .global ac_i_GetNetworkIpSecondaryDNS
        .type   ac_i_GetNetworkIpSecondaryDNS, %function
ac_i_GetNetworkIpSecondaryDNS:
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
        .size   ac_i_GetNetworkIpSecondaryDNS, . - ac_i_GetNetworkIpSecondaryDNS

@ FUN_004e4fa0
        .global ac_i_GetNetworkWirelessEnable
        .type   ac_i_GetNetworkWirelessEnable, %function
ac_i_GetNetworkWirelessEnable:
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
        .size   ac_i_GetNetworkWirelessEnable, . - ac_i_GetNetworkWirelessEnable

@ FUN_004e4fe0
        .global ac_i_SetNetworkIpSecondaryDNS
        .type   ac_i_SetNetworkIpSecondaryDNS, %function
ac_i_SetNetworkIpSecondaryDNS:
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
        .size   ac_i_SetNetworkIpSecondaryDNS, . - ac_i_SetNetworkIpSecondaryDNS

@ FUN_004e5024
        .global ac_i_SetNetworkWirelessEnable
        .type   ac_i_SetNetworkWirelessEnable, %function
ac_i_SetNetworkWirelessEnable:
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
        .size   ac_i_SetNetworkWirelessEnable, . - ac_i_SetNetworkWirelessEnable

@ FUN_004e5060
        .global ac_i_GetNetworkEnableUPnP
        .type   ac_i_GetNetworkEnableUPnP, %function
ac_i_GetNetworkEnableUPnP:
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
        .size   ac_i_GetNetworkEnableUPnP, . - ac_i_GetNetworkEnableUPnP

@ FUN_004e50a0
        .global ac_i_GetNZoneBeaconNotFoundEvent
        .type   ac_i_GetNZoneBeaconNotFoundEvent, %function
ac_i_GetNZoneBeaconNotFoundEvent:
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
        .size   ac_i_GetNZoneBeaconNotFoundEvent, . - ac_i_GetNZoneBeaconNotFoundEvent

@ FUN_004e50e8
        .global ac_i_SetNetworkEnableUPnP
        .type   ac_i_SetNetworkEnableUPnP, %function
ac_i_SetNetworkEnableUPnP:
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
        .size   ac_i_SetNetworkEnableUPnP, . - ac_i_SetNetworkEnableUPnP

@ FUN_004e5124
        .global ac_i_GetConnectingNetworkSettingVersion
        .type   ac_i_GetConnectingNetworkSettingVersion, %function
ac_i_GetConnectingNetworkSettingVersion:
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
        .size   ac_i_GetConnectingNetworkSettingVersion, . - ac_i_GetConnectingNetworkSettingVersion

@ FUN_004e5164
        .global ac_i_GetNetworkAutoDNSSetting
        .type   ac_i_GetNetworkAutoDNSSetting, %function
ac_i_GetNetworkAutoDNSSetting:
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
        .size   ac_i_GetNetworkAutoDNSSetting, . - ac_i_GetNetworkAutoDNSSetting

@ FUN_004e51a4
        .global ac_i_GetNetworkDefaultGateway
        .type   ac_i_GetNetworkDefaultGateway, %function
ac_i_GetNetworkDefaultGateway:
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
        .size   ac_i_GetNetworkDefaultGateway, . - ac_i_GetNetworkDefaultGateway

@ FUN_004e5234
        .global ac_i_SetNetworkDefaultGateway
        .type   ac_i_SetNetworkDefaultGateway, %function
ac_i_SetNetworkDefaultGateway:
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
        .size   ac_i_SetNetworkDefaultGateway, . - ac_i_SetNetworkDefaultGateway

@ FUN_004e5278
        .global ac_i_GetConnectingNetworkMtu
        .type   ac_i_GetConnectingNetworkMtu, %function
ac_i_GetConnectingNetworkMtu:
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
        .size   ac_i_GetConnectingNetworkMtu, . - ac_i_GetConnectingNetworkMtu

@ FUN_004e52b8
        .global ac_i_GetNZoneApNumService
        .type   ac_i_GetNZoneApNumService, %function
ac_i_GetNZoneApNumService:
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
        .size   ac_i_GetNZoneApNumService, . - ac_i_GetNZoneApNumService

@ FUN_004e531c
        .global ac_i_GetConnectingNetworkIpNetmask
        .type   ac_i_GetConnectingNetworkIpNetmask, %function
ac_i_GetConnectingNetworkIpNetmask:
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
        .size   ac_i_GetConnectingNetworkIpNetmask, . - ac_i_GetConnectingNetworkIpNetmask

@ FUN_004e5370
        .global ac_i_GetConnectingNetworkProxyHost
        .type   ac_i_GetConnectingNetworkProxyHost, %function
ac_i_GetConnectingNetworkProxyHost:
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
        .size   ac_i_GetConnectingNetworkProxyHost, . - ac_i_GetConnectingNetworkProxyHost

@ FUN_004e53c4
        .global ac_i_GetConnectingNetworkProxyPort
        .type   ac_i_GetConnectingNetworkProxyPort, %function
ac_i_GetConnectingNetworkProxyPort:
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
        .size   ac_i_GetConnectingNetworkProxyPort, . - ac_i_GetConnectingNetworkProxyPort

@ FUN_004e5404
        .global ac_i_GetConnectingNetworkIpAddress
        .type   ac_i_GetConnectingNetworkIpAddress, %function
ac_i_GetConnectingNetworkIpAddress:
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
        .size   ac_i_GetConnectingNetworkIpAddress, . - ac_i_GetConnectingNetworkIpAddress

@ FUN_004e5458
        .global ac_i_GetConnectingNetworkProxyEnable
        .type   ac_i_GetConnectingNetworkProxyEnable, %function
ac_i_GetConnectingNetworkProxyEnable:
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
        .size   ac_i_GetConnectingNetworkProxyEnable, . - ac_i_GetConnectingNetworkProxyEnable

@ FUN_004e5498
        .global ac_i_GetConnectingNetworkEnableDHCP
        .type   ac_i_GetConnectingNetworkEnableDHCP, %function
ac_i_GetConnectingNetworkEnableDHCP:
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
        .size   ac_i_GetConnectingNetworkEnableDHCP, . - ac_i_GetConnectingNetworkEnableDHCP

@ FUN_004e54d8
        .global ac_i_GetConnectingNetworkPrimaryDNS
        .type   ac_i_GetConnectingNetworkPrimaryDNS, %function
ac_i_GetConnectingNetworkPrimaryDNS:
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
        .size   ac_i_GetConnectingNetworkPrimaryDNS, . - ac_i_GetConnectingNetworkPrimaryDNS

@ FUN_004e552c
        .global ac_i_GetConnectingNetworkProxyAuthType
        .type   ac_i_GetConnectingNetworkProxyAuthType, %function
ac_i_GetConnectingNetworkProxyAuthType:
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
        .size   ac_i_GetConnectingNetworkProxyAuthType, . - ac_i_GetConnectingNetworkProxyAuthType

@ FUN_004e556c
        .global ac_i_GetConnectingNetworkProxyPassword
        .type   ac_i_GetConnectingNetworkProxyPassword, %function
ac_i_GetConnectingNetworkProxyPassword:
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
        .size   ac_i_GetConnectingNetworkProxyPassword, . - ac_i_GetConnectingNetworkProxyPassword

@ FUN_004e55bc
        .global ac_i_GetConnectingNetworkProxyUserName
        .type   ac_i_GetConnectingNetworkProxyUserName, %function
ac_i_GetConnectingNetworkProxyUserName:
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
        .size   ac_i_GetConnectingNetworkProxyUserName, . - ac_i_GetConnectingNetworkProxyUserName

@ FUN_004e5610
        .global ac_i_GetConnectingNetworkSecondaryDNS
        .type   ac_i_GetConnectingNetworkSecondaryDNS, %function
ac_i_GetConnectingNetworkSecondaryDNS:
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
        .size   ac_i_GetConnectingNetworkSecondaryDNS, . - ac_i_GetConnectingNetworkSecondaryDNS

@ FUN_004e5664
        .global ac_i_GetConnectingNetworkWirelessEnable
        .type   ac_i_GetConnectingNetworkWirelessEnable, %function
ac_i_GetConnectingNetworkWirelessEnable:
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
        .size   ac_i_GetConnectingNetworkWirelessEnable, . - ac_i_GetConnectingNetworkWirelessEnable

@ FUN_004e56a4
        .global ac_i_GetNetworkMultiSSIDEnable
        .type   ac_i_GetNetworkMultiSSIDEnable, %function
ac_i_GetNetworkMultiSSIDEnable:
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
        .size   ac_i_GetNetworkMultiSSIDEnable, . - ac_i_GetNetworkMultiSSIDEnable

@ FUN_004e56e4
        .global ac_i_SetNetworkMultiSSIDEnable
        .type   ac_i_SetNetworkMultiSSIDEnable, %function
ac_i_SetNetworkMultiSSIDEnable:
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
        .size   ac_i_SetNetworkMultiSSIDEnable, . - ac_i_SetNetworkMultiSSIDEnable

@ FUN_004e5720
        .global ac_i_GetConnectingNetworkEnableUPnP
        .type   ac_i_GetConnectingNetworkEnableUPnP, %function
ac_i_GetConnectingNetworkEnableUPnP:
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
        .size   ac_i_GetConnectingNetworkEnableUPnP, . - ac_i_GetConnectingNetworkEnableUPnP

@ FUN_004e5760
        .global ac_i_GetNetworkWirelessEssidSecurityKey
        .type   ac_i_GetNetworkWirelessEssidSecurityKey, %function
ac_i_GetNetworkWirelessEssidSecurityKey:
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
        .size   ac_i_GetNetworkWirelessEssidSecurityKey, . - ac_i_GetNetworkWirelessEssidSecurityKey

@ FUN_004e57b4
        .global ac_i_SetNetworkWirelessEssidSecurityKey
        .type   ac_i_SetNetworkWirelessEssidSecurityKey, %function
ac_i_SetNetworkWirelessEssidSecurityKey:
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
        .size   ac_i_SetNetworkWirelessEssidSecurityKey, . - ac_i_SetNetworkWirelessEssidSecurityKey

@ FUN_004e57f8
        .global ac_i_GetConnectingNetworkIpAutoDNSSetting
        .type   ac_i_GetConnectingNetworkIpAutoDNSSetting, %function
ac_i_GetConnectingNetworkIpAutoDNSSetting:
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
        .size   ac_i_GetConnectingNetworkIpAutoDNSSetting, . - ac_i_GetConnectingNetworkIpAutoDNSSetting

@ FUN_004e5834
        .global ac_i_GetConnectingNetworkIpDefaultGateway
        .type   ac_i_GetConnectingNetworkIpDefaultGateway, %function
ac_i_GetConnectingNetworkIpDefaultGateway:
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
        .size   ac_i_GetConnectingNetworkIpDefaultGateway, . - ac_i_GetConnectingNetworkIpDefaultGateway

@ FUN_004e5888
        .global ac_i_GetNetworkWirelessEssidSecuritySsid
        .type   ac_i_GetNetworkWirelessEssidSecuritySsid, %function
ac_i_GetNetworkWirelessEssidSecuritySsid:
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
        .size   ac_i_GetNetworkWirelessEssidSecuritySsid, . - ac_i_GetNetworkWirelessEssidSecuritySsid

@ FUN_004e58dc
        .global ac_i_SetNetworkWirelessEssidSecuritySsid
        .type   ac_i_SetNetworkWirelessEssidSecuritySsid, %function
ac_i_SetNetworkWirelessEssidSecuritySsid:
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
        .size   ac_i_SetNetworkWirelessEssidSecuritySsid, . - ac_i_SetNetworkWirelessEssidSecuritySsid

@ FUN_004e5920
        .global ac_i_GetNetworkWirelessMultiSsidSettingNum
        .type   ac_i_GetNetworkWirelessMultiSsidSettingNum, %function
ac_i_GetNetworkWirelessMultiSsidSettingNum:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSettingNum, . - ac_i_GetNetworkWirelessMultiSsidSettingNum

@ FUN_004e5960
        .global ac_i_SetNetworkWirelessMultiSsidSettingNum
        .type   ac_i_SetNetworkWirelessMultiSsidSettingNum, %function
ac_i_SetNetworkWirelessMultiSsidSettingNum:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSettingNum, . - ac_i_SetNetworkWirelessMultiSsidSettingNum

@ FUN_004e599c
        .global ac_i_GetNetworkWirelessEditableEssidSecurity
        .type   ac_i_GetNetworkWirelessEditableEssidSecurity, %function
ac_i_GetNetworkWirelessEditableEssidSecurity:
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
        .size   ac_i_GetNetworkWirelessEditableEssidSecurity, . - ac_i_GetNetworkWirelessEditableEssidSecurity

@ FUN_004e59dc
        .global ac_i_SetNetworkWirelessEditableEssidSecurity
        .type   ac_i_SetNetworkWirelessEditableEssidSecurity, %function
ac_i_SetNetworkWirelessEditableEssidSecurity:
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
        .size   ac_i_SetNetworkWirelessEditableEssidSecurity, . - ac_i_SetNetworkWirelessEditableEssidSecurity

@ FUN_004e5a18
        .global ac_i_GetNetworkIpScanlessConnectHasConnected
        .type   ac_i_GetNetworkIpScanlessConnectHasConnected, %function
ac_i_GetNetworkIpScanlessConnectHasConnected:
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
        .size   ac_i_GetNetworkIpScanlessConnectHasConnected, . - ac_i_GetNetworkIpScanlessConnectHasConnected

@ FUN_004e5a58
        .global ac_i_GetNetworkWirelessMultiSsidSetting0Key
        .type   ac_i_GetNetworkWirelessMultiSsidSetting0Key, %function
ac_i_GetNetworkWirelessMultiSsidSetting0Key:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting0Key, . - ac_i_GetNetworkWirelessMultiSsidSetting0Key

@ FUN_004e5aac
        .global ac_i_GetNetworkWirelessMultiSsidSetting1Key
        .type   ac_i_GetNetworkWirelessMultiSsidSetting1Key, %function
ac_i_GetNetworkWirelessMultiSsidSetting1Key:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting1Key, . - ac_i_GetNetworkWirelessMultiSsidSetting1Key

@ FUN_004e5b00
        .global ac_i_GetNetworkWirelessMultiSsidSetting2Key
        .type   ac_i_GetNetworkWirelessMultiSsidSetting2Key, %function
ac_i_GetNetworkWirelessMultiSsidSetting2Key:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting2Key, . - ac_i_GetNetworkWirelessMultiSsidSetting2Key

@ FUN_004e5b54
        .global ac_i_GetNetworkWirelessMultiSsidSetting3Key
        .type   ac_i_GetNetworkWirelessMultiSsidSetting3Key, %function
ac_i_GetNetworkWirelessMultiSsidSetting3Key:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting3Key, . - ac_i_GetNetworkWirelessMultiSsidSetting3Key

@ FUN_004e5ba8
        .global ac_i_SetNetworkIpScanlessConnectHasConnected
        .type   ac_i_SetNetworkIpScanlessConnectHasConnected, %function
ac_i_SetNetworkIpScanlessConnectHasConnected:
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
        .size   ac_i_SetNetworkIpScanlessConnectHasConnected, . - ac_i_SetNetworkIpScanlessConnectHasConnected

@ FUN_004e5be4
        .global ac_i_SetNetworkWirelessMultiSsidSetting0Key
        .type   ac_i_SetNetworkWirelessMultiSsidSetting0Key, %function
ac_i_SetNetworkWirelessMultiSsidSetting0Key:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting0Key, . - ac_i_SetNetworkWirelessMultiSsidSetting0Key

@ FUN_004e5c28
        .global ac_i_SetNetworkWirelessMultiSsidSetting1Key
        .type   ac_i_SetNetworkWirelessMultiSsidSetting1Key, %function
ac_i_SetNetworkWirelessMultiSsidSetting1Key:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting1Key, . - ac_i_SetNetworkWirelessMultiSsidSetting1Key

@ FUN_004e5c6c
        .global ac_i_SetNetworkWirelessMultiSsidSetting2Key
        .type   ac_i_SetNetworkWirelessMultiSsidSetting2Key, %function
ac_i_SetNetworkWirelessMultiSsidSetting2Key:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting2Key, . - ac_i_SetNetworkWirelessMultiSsidSetting2Key

@ FUN_004e5cb0
        .global ac_i_SetNetworkWirelessMultiSsidSetting3Key
        .type   ac_i_SetNetworkWirelessMultiSsidSetting3Key, %function
ac_i_SetNetworkWirelessMultiSsidSetting3Key:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting3Key, . - ac_i_SetNetworkWirelessMultiSsidSetting3Key

@ FUN_004e5cf4
        .global ac_i_GetNetworkWirelesMultiSsidMultiSsidType
        .type   ac_i_GetNetworkWirelesMultiSsidMultiSsidType, %function
ac_i_GetNetworkWirelesMultiSsidMultiSsidType:
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
        .size   ac_i_GetNetworkWirelesMultiSsidMultiSsidType, . - ac_i_GetNetworkWirelesMultiSsidMultiSsidType

@ FUN_004e5d34
        .global ac_i_GetNetworkWirelessMultiSsidSetting0Ssid
        .type   ac_i_GetNetworkWirelessMultiSsidSetting0Ssid, %function
ac_i_GetNetworkWirelessMultiSsidSetting0Ssid:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting0Ssid, . - ac_i_GetNetworkWirelessMultiSsidSetting0Ssid

@ FUN_004e5d88
        .global ac_i_GetNetworkMultiSsidSetting1Ssid
        .type   ac_i_GetNetworkMultiSsidSetting1Ssid, %function
ac_i_GetNetworkMultiSsidSetting1Ssid:
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
        .size   ac_i_GetNetworkMultiSsidSetting1Ssid, . - ac_i_GetNetworkMultiSsidSetting1Ssid

@ FUN_004e5ddc
        .global ac_i_GetNetworkWirelessMultiSsidSetting2Ssid
        .type   ac_i_GetNetworkWirelessMultiSsidSetting2Ssid, %function
ac_i_GetNetworkWirelessMultiSsidSetting2Ssid:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting2Ssid, . - ac_i_GetNetworkWirelessMultiSsidSetting2Ssid

@ FUN_004e5e30
        .global ac_i_GetNetworkWirelessMultiSsidSetting3Ssid
        .type   ac_i_GetNetworkWirelessMultiSsidSetting3Ssid, %function
ac_i_GetNetworkWirelessMultiSsidSetting3Ssid:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting3Ssid, . - ac_i_GetNetworkWirelessMultiSsidSetting3Ssid

@ FUN_004e5e84
        .global ac_i_SetNetworkWirelesMultiSsidMultiSsidType
        .type   ac_i_SetNetworkWirelesMultiSsidMultiSsidType, %function
ac_i_SetNetworkWirelesMultiSsidMultiSsidType:
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
        .size   ac_i_SetNetworkWirelesMultiSsidMultiSsidType, . - ac_i_SetNetworkWirelesMultiSsidMultiSsidType

@ FUN_004e5ec0
        .global ac_i_SetNetworkWirelessMultiSsidSetting0Ssid
        .type   ac_i_SetNetworkWirelessMultiSsidSetting0Ssid, %function
ac_i_SetNetworkWirelessMultiSsidSetting0Ssid:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting0Ssid, . - ac_i_SetNetworkWirelessMultiSsidSetting0Ssid

@ FUN_004e5f04
        .global ac_i_SetNetworkMultiSsidSetting1Ssid
        .type   ac_i_SetNetworkMultiSsidSetting1Ssid, %function
ac_i_SetNetworkMultiSsidSetting1Ssid:
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
        .size   ac_i_SetNetworkMultiSsidSetting1Ssid, . - ac_i_SetNetworkMultiSsidSetting1Ssid

@ FUN_004e5f48
        .global ac_i_SetNetworkWirelessMultiSsidSetting2Ssid
        .type   ac_i_SetNetworkWirelessMultiSsidSetting2Ssid, %function
ac_i_SetNetworkWirelessMultiSsidSetting2Ssid:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting2Ssid, . - ac_i_SetNetworkWirelessMultiSsidSetting2Ssid

@ FUN_004e5f8c
        .global ac_i_SetNetworkWirelessMultiSsidSetting3Ssid
        .type   ac_i_SetNetworkWirelessMultiSsidSetting3Ssid, %function
ac_i_SetNetworkWirelessMultiSsidSetting3Ssid:
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
        .size   ac_i_SetNetworkWirelessMultiSsidSetting3Ssid, . - ac_i_SetNetworkWirelessMultiSsidSetting3Ssid

@ FUN_004e5fd0
        .global ac_i_GetNetworkWirelessEssidPassphrase
        .type   ac_i_GetNetworkWirelessEssidPassphrase, %function
ac_i_GetNetworkWirelessEssidPassphrase:
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
        .size   ac_i_GetNetworkWirelessEssidPassphrase, . - ac_i_GetNetworkWirelessEssidPassphrase

@ FUN_004e6024
        .global ac_i_GetNetworkWireleesEssidSsidLength
        .type   ac_i_GetNetworkWireleesEssidSsidLength, %function
ac_i_GetNetworkWireleesEssidSsidLength:
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
        .size   ac_i_GetNetworkWireleesEssidSsidLength, . - ac_i_GetNetworkWireleesEssidSsidLength

@ FUN_004e6064
        .global ac_i_SetNetworkWirelessEssidPassphrase
        .type   ac_i_SetNetworkWirelessEssidPassphrase, %function
ac_i_SetNetworkWirelessEssidPassphrase:
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
        .size   ac_i_SetNetworkWirelessEssidPassphrase, . - ac_i_SetNetworkWirelessEssidPassphrase

@ FUN_004e60a8
        .global ac_i_SetNetworkWirelessEssidSsidLength
        .type   ac_i_SetNetworkWirelessEssidSsidLength, %function
ac_i_SetNetworkWirelessEssidSsidLength:
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
        .size   ac_i_SetNetworkWirelessEssidSsidLength, . - ac_i_SetNetworkWirelessEssidSsidLength

@ FUN_004e60e4
        .global ac_i_GetConnectingNetworkMultiSsidEnable
        .type   ac_i_GetConnectingNetworkMultiSsidEnable, %function
ac_i_GetConnectingNetworkMultiSsidEnable:
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
        .size   ac_i_GetConnectingNetworkMultiSsidEnable, . - ac_i_GetConnectingNetworkMultiSsidEnable

@ FUN_004e6124
        .global ac_i_GetNetworkWirelessEssidSecurityMode
        .type   ac_i_GetNetworkWirelessEssidSecurityMode, %function
ac_i_GetNetworkWirelessEssidSecurityMode:
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
        .size   ac_i_GetNetworkWirelessEssidSecurityMode, . - ac_i_GetNetworkWirelessEssidSecurityMode

@ FUN_004e6164
        .global ac_i_SetNetworkWirelessEssidSecurityMode
        .type   ac_i_SetNetworkWirelessEssidSecurityMode, %function
ac_i_SetNetworkWirelessEssidSecurityMode:
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
        .size   ac_i_SetNetworkWirelessEssidSecurityMode, . - ac_i_SetNetworkWirelessEssidSecurityMode

@ FUN_004e61a0
        .global ac_i_GetConnectingNetworkWirelessEssidSecurityKey
        .type   ac_i_GetConnectingNetworkWirelessEssidSecurityKey, %function
ac_i_GetConnectingNetworkWirelessEssidSecurityKey:
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
        .size   ac_i_GetConnectingNetworkWirelessEssidSecurityKey, . - ac_i_GetConnectingNetworkWirelessEssidSecurityKey

@ FUN_004e61f4
        .global ac_i_GetConnectingNetworkWirelessEssidSsid
        .type   ac_i_GetConnectingNetworkWirelessEssidSsid, %function
ac_i_GetConnectingNetworkWirelessEssidSsid:
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
        .size   ac_i_GetConnectingNetworkWirelessEssidSsid, . - ac_i_GetConnectingNetworkWirelessEssidSsid

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
        .global ac_i_GetNetworkWirelessMultiSsidSetting0PassPhrase
        .type   ac_i_GetNetworkWirelessMultiSsidSetting0PassPhrase, %function
ac_i_GetNetworkWirelessMultiSsidSetting0PassPhrase:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting0PassPhrase, . - ac_i_GetNetworkWirelessMultiSsidSetting0PassPhrase

@ FUN_004e6334
        .global ac_i_GetNetworkWirelessMultiSsidSetting0SsidLength
        .type   ac_i_GetNetworkWirelessMultiSsidSetting0SsidLength, %function
ac_i_GetNetworkWirelessMultiSsidSetting0SsidLength:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting0SsidLength, . - ac_i_GetNetworkWirelessMultiSsidSetting0SsidLength

@ FUN_004e6374
        .global ac_i_GetNetworkWirelessMultiSsidSetting1PassPhrase
        .type   ac_i_GetNetworkWirelessMultiSsidSetting1PassPhrase, %function
ac_i_GetNetworkWirelessMultiSsidSetting1PassPhrase:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting1PassPhrase, . - ac_i_GetNetworkWirelessMultiSsidSetting1PassPhrase

@ FUN_004e63c8
        .global ac_i_GetNetworkMultiSsidSetting1SsidLength
        .type   ac_i_GetNetworkMultiSsidSetting1SsidLength, %function
ac_i_GetNetworkMultiSsidSetting1SsidLength:
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
        .size   ac_i_GetNetworkMultiSsidSetting1SsidLength, . - ac_i_GetNetworkMultiSsidSetting1SsidLength

@ FUN_004e6408
        .global ac_i_GetNetworkWirelessMultiSsidSetting2Passphrase
        .type   ac_i_GetNetworkWirelessMultiSsidSetting2Passphrase, %function
ac_i_GetNetworkWirelessMultiSsidSetting2Passphrase:
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
        .size   ac_i_GetNetworkWirelessMultiSsidSetting2Passphrase, . - ac_i_GetNetworkWirelessMultiSsidSetting2Passphrase

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
        .global ac_i_GetStatus
        .type   ac_i_GetStatus, %function
ac_i_GetStatus:
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
        .size   ac_i_GetStatus, . - ac_i_GetStatus

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
        .global fs_USER_CreateFile
        .type   fs_USER_CreateFile, %function
fs_USER_CreateFile:
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
        .size   fs_USER_CreateFile, . - fs_USER_CreateFile

@ FUN_004edbb4
        .global fs_USER_CreateSeed
        .type   fs_USER_CreateSeed, %function
fs_USER_CreateSeed:
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
        .size   fs_USER_CreateSeed, . - fs_USER_CreateSeed

@ FUN_004edbe0
        .global fs_USER_DeleteFile
        .type   fs_USER_DeleteFile, %function
fs_USER_DeleteFile:
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
        .size   fs_USER_DeleteFile, . - fs_USER_DeleteFile

@ FUN_004edc30
        .global fs_USER_GetNandCid
        .type   fs_USER_GetNandCid, %function
fs_USER_GetNandCid:
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
        .size   fs_USER_GetNandCid, . - fs_USER_GetNandCid

@ FUN_004edc70
        .global fs_USER_GetNandLog
        .type   fs_USER_GetNandLog, %function
fs_USER_GetNandLog:
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
        .size   fs_USER_GetNandLog, . - fs_USER_GetNandLog

@ FUN_004edcb0
        .global fs_USER_GetSdmcCid
        .type   fs_USER_GetSdmcCid, %function
fs_USER_GetSdmcCid:
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
        .size   fs_USER_GetSdmcCid, . - fs_USER_GetSdmcCid

@ FUN_004edcf0
        .global fs_USER_GetSdmcLog
        .type   fs_USER_GetSdmcLog, %function
fs_USER_GetSdmcLog:
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
        .size   fs_USER_GetSdmcLog, . - fs_USER_GetSdmcLog

@ FUN_004eddc0
        .global fs_USER_GetCardType
        .type   fs_USER_GetCardType, %function
fs_USER_GetCardType:
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
        .size   fs_USER_GetCardType, . - fs_USER_GetCardType

@ FUN_004eddf8
        .global fs_USER_OpenArchive
        .type   fs_USER_OpenArchive, %function
fs_USER_OpenArchive:
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
        .size   fs_USER_OpenArchive, . - fs_USER_OpenArchive

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
        .global fs_USER_ClearNandLog
        .type   fs_USER_ClearNandLog, %function
fs_USER_ClearNandLog:
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
        .size   fs_USER_ClearNandLog, . - fs_USER_ClearNandLog

@ FUN_004edecc
        .global fs_USER_ClearSdmcLog
        .type   fs_USER_ClearSdmcLog, %function
fs_USER_ClearSdmcLog:
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
        .size   fs_USER_ClearSdmcLog, . - fs_USER_ClearSdmcLog

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
        .global fs_USER_OpenDirectory
        .type   fs_USER_OpenDirectory, %function
fs_USER_OpenDirectory:
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
        .size   fs_USER_OpenDirectory, . - fs_USER_OpenDirectory

@ FUN_004ee08c
        .global fs_USER_ControlArchive
        .type   fs_USER_ControlArchive, %function
fs_USER_ControlArchive:
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
        .size   fs_USER_ControlArchive, . - fs_USER_ControlArchive

@ FUN_004ee0f8
        .global fs_USER_DeleteSdmcRoot
        .type   fs_USER_DeleteSdmcRoot, %function
fs_USER_DeleteSdmcRoot:
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
        .size   fs_USER_DeleteSdmcRoot, . - fs_USER_DeleteSdmcRoot

@ FUN_004ee124
        .global fs_USER_FormatSaveData
        .type   fs_USER_FormatSaveData, %function
fs_USER_FormatSaveData:
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
        .size   fs_USER_FormatSaveData, . - fs_USER_FormatSaveData

@ FUN_004ee17c
        .global fs_USER_IsSdmcDetected
        .type   fs_USER_IsSdmcDetected, %function
fs_USER_IsSdmcDetected:
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
        .size   fs_USER_IsSdmcDetected, . - fs_USER_IsSdmcDetected

@ FUN_004ee1b4
        .global fs_USER_IsSdmcWritable
        .type   fs_USER_IsSdmcWritable, %function
fs_USER_IsSdmcWritable:
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
        .size   fs_USER_IsSdmcWritable, . - fs_USER_IsSdmcWritable

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
        .global fs_USER_CardSlotPowerOn
        .type   fs_USER_CardSlotPowerOn, %function
fs_USER_CardSlotPowerOn:
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
        .size   fs_USER_CardSlotPowerOn, . - fs_USER_CardSlotPowerOn

@ FUN_004ee264
        .global fs_USER_CreateDirectory
        .type   fs_USER_CreateDirectory, %function
fs_USER_CreateDirectory:
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
        .size   fs_USER_CreateDirectory, . - fs_USER_CreateDirectory

@ FUN_004ee2b8
        .global fs_USER_DeleteDirectory
        .type   fs_USER_DeleteDirectory, %function
fs_USER_DeleteDirectory:
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
        .size   fs_USER_DeleteDirectory, . - fs_USER_DeleteDirectory

@ FUN_004ee308
        .global fs_USER_ReadSpecialFile
        .type   fs_USER_ReadSpecialFile, %function
fs_USER_ReadSpecialFile:
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
        .size   fs_USER_ReadSpecialFile, . - fs_USER_ReadSpecialFile

@ FUN_004ee3f4
        .global fs_USER_CardSlotPowerOff
        .type   fs_USER_CardSlotPowerOff, %function
fs_USER_CardSlotPowerOff:
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
        .size   fs_USER_CardSlotPowerOff, . - fs_USER_CardSlotPowerOff

@ FUN_004ee42c
        .global fs_USER_GetNandSpeedInfo
        .type   fs_USER_GetNandSpeedInfo, %function
fs_USER_GetNandSpeedInfo:
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
        .size   fs_USER_GetNandSpeedInfo, . - fs_USER_GetNandSpeedInfo

@ FUN_004ee464
        .global fs_USER_GetSdmcSpeedInfo
        .type   fs_USER_GetSdmcSpeedInfo, %function
fs_USER_GetSdmcSpeedInfo:
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
        .size   fs_USER_GetSdmcSpeedInfo, . - fs_USER_GetSdmcSpeedInfo

@ FUN_004ee49c
        .global fs_USER_CardNorDirectRead
        .type   fs_USER_CardNorDirectRead, %function
fs_USER_CardNorDirectRead:
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
        .size   fs_USER_CardNorDirectRead, . - fs_USER_CardNorDirectRead

@ FUN_004ee4e8
        .global fs_USER_CreateExtSaveData
        .type   fs_USER_CreateExtSaveData, %function
fs_USER_CreateExtSaveData:
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
        .size   fs_USER_CreateExtSaveData, . - fs_USER_CreateExtSaveData

@ FUN_004ee544
        .global fs_USER_DeleteExtSaveData
        .type   fs_USER_DeleteExtSaveData, %function
fs_USER_DeleteExtSaveData:
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
        .size   fs_USER_DeleteExtSaveData, . - fs_USER_DeleteExtSaveData

@ FUN_004ee580
        .global fs_USER_GetSdmcFatfsError
        .type   fs_USER_GetSdmcFatfsError, %function
fs_USER_GetSdmcFatfsError:
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
        .size   fs_USER_GetSdmcFatfsError, . - fs_USER_GetSdmcFatfsError

@ FUN_004ee5b8
        .global fs_USER_SetCardSpiBusMode
        .type   fs_USER_SetCardSpiBusMode, %function
fs_USER_SetCardSpiBusMode:
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
        .size   fs_USER_SetCardSpiBusMode, . - fs_USER_SetCardSpiBusMode

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
        .global fs_USER_CardNorDirectWrite
        .type   fs_USER_CardNorDirectWrite, %function
fs_USER_CardNorDirectWrite:
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
        .size   fs_USER_CardNorDirectWrite, . - fs_USER_CardNorDirectWrite

@ FUN_004ee678
        .global fs_USER_CardSlotIsInserted
        .type   fs_USER_CardSlotIsInserted, %function
fs_USER_CardSlotIsInserted:
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
        .size   fs_USER_CardSlotIsInserted, . - fs_USER_CardSlotIsInserted

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
        .global fs_USER_GetArchiveResource
        .type   fs_USER_GetArchiveResource, %function
fs_USER_GetArchiveResource:
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
        .size   fs_USER_GetArchiveResource, . - fs_USER_GetArchiveResource

@ FUN_004ee73c
        .global fs_USER_GetLegacyRomHeader
        .type   fs_USER_GetLegacyRomHeader, %function
fs_USER_GetLegacyRomHeader:
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
        .size   fs_USER_GetLegacyRomHeader, . - fs_USER_GetLegacyRomHeader

@ FUN_004ee78c
        .global fs_USER_GetSdmcCtrRootPath
        .type   fs_USER_GetSdmcCtrRootPath, %function
fs_USER_GetSdmcCtrRootPath:
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
        .size   fs_USER_GetSdmcCtrRootPath, . - fs_USER_GetSdmcCtrRootPath

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
        .global fs_USER_SetArchivePriority
        .type   fs_USER_SetArchivePriority, %function
fs_USER_SetArchivePriority:
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
        .size   fs_USER_SetArchivePriority, . - fs_USER_SetArchivePriority

@ FUN_004ee844
        .global fs_USER_SetCardSpiBaudRate
        .type   fs_USER_SetCardSpiBaudRate, %function
fs_USER_SetCardSpiBaudRate:
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
        .size   fs_USER_SetCardSpiBaudRate, . - fs_USER_SetCardSpiBaudRate

@ FUN_004ee87c
        .global fs_USER_AbnegateAccessRight
        .type   fs_USER_AbnegateAccessRight, %function
fs_USER_AbnegateAccessRight:
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
        .size   fs_USER_AbnegateAccessRight, . - fs_USER_AbnegateAccessRight

@ FUN_004ee8ac
        .global fs_USER_GetExtDataBlockSize
        .type   fs_USER_GetExtDataBlockSize, %function
fs_USER_GetExtDataBlockSize:
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
        .size   fs_USER_GetExtDataBlockSize, . - fs_USER_GetExtDataBlockSize

@ FUN_004ee918
        .global fs_USER_GetLegacyBannerData
        .type   fs_USER_GetLegacyBannerData, %function
fs_USER_GetLegacyBannerData:
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
        .size   fs_USER_GetLegacyBannerData, . - fs_USER_GetLegacyBannerData

@ FUN_004ee968
        .global fs_USER_GetLegacyRomHeader2
        .type   fs_USER_GetLegacyRomHeader2, %function
fs_USER_GetLegacyRomHeader2:
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
        .size   fs_USER_GetLegacyRomHeader2, . - fs_USER_GetLegacyRomHeader2

@ FUN_004ee9c4
        .global fs_USER_QueryTotalQuotaSize
        .type   fs_USER_QueryTotalQuotaSize, %function
fs_USER_QueryTotalQuotaSize:
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
        .size   fs_USER_QueryTotalQuotaSize, . - fs_USER_QueryTotalQuotaSize

@ FUN_004eea1c
        .global fs_USER_ReadExtSaveDataIcon
        .type   fs_USER_ReadExtSaveDataIcon, %function
fs_USER_ReadExtSaveDataIcon:
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
        .size   fs_USER_ReadExtSaveDataIcon, . - fs_USER_ReadExtSaveDataIcon

@ FUN_004eeb08
        .global fs_USER_CardNorDirectCommand
        .type   fs_USER_CardNorDirectCommand, %function
fs_USER_CardNorDirectCommand:
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
        .size   fs_USER_CardNorDirectCommand, . - fs_USER_CardNorDirectCommand

@ FUN_004eeb40
        .global fs_USER_CreateSystemSaveData
        .type   fs_USER_CreateSystemSaveData, %function
fs_USER_CreateSystemSaveData:
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
        .size   fs_USER_CreateSystemSaveData, . - fs_USER_CreateSystemSaveData

@ FUN_004eeb90
        .global fs_USER_DeleteSystemSaveData
        .type   fs_USER_DeleteSystemSaveData, %function
fs_USER_DeleteSystemSaveData:
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
        .size   fs_USER_DeleteSystemSaveData, . - fs_USER_DeleteSystemSaveData

@ FUN_004eebc4
        .global fs_USER_EnumerateExtSaveData
        .type   fs_USER_EnumerateExtSaveData, %function
fs_USER_EnumerateExtSaveData:
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
        .size   fs_USER_EnumerateExtSaveData, . - fs_USER_EnumerateExtSaveData

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
        .global fs_USER_SendInitializeInfoTo9
        .type   fs_USER_SendInitializeInfoTo9, %function
fs_USER_SendInitializeInfoTo9:
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
        .size   fs_USER_SendInitializeInfoTo9, . - fs_USER_SendInitializeInfoTo9

@ FUN_004eece4
        .global fs_USER_CardNorDirectRead_4xIO
        .type   fs_USER_CardNorDirectRead_4xIO, %function
fs_USER_CardNorDirectRead_4xIO:
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
        .size   fs_USER_CardNorDirectRead_4xIO, . - fs_USER_CardNorDirectRead_4xIO

@ FUN_004eed38
        .global fs_USER_GetLegacySubBannerData
        .type   fs_USER_GetLegacySubBannerData, %function
fs_USER_GetLegacySubBannerData:
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
        .size   fs_USER_GetLegacySubBannerData, . - fs_USER_GetLegacySubBannerData

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
        .global fs_USER_SetFsCompatibilityInfo
        .type   fs_USER_SetFsCompatibilityInfo, %function
fs_USER_SetFsCompatibilityInfo:
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
        .size   fs_USER_SetFsCompatibilityInfo, . - fs_USER_SetFsCompatibilityInfo

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
        .global fs_USER_InitializeCtrFileSystem
        .type   fs_USER_InitializeCtrFileSystem, %function
fs_USER_InitializeCtrFileSystem:
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
        .size   fs_USER_InitializeCtrFileSystem, . - fs_USER_InitializeCtrFileSystem

@ FUN_004eefe0
        .global fs_USER_DeleteAllExtSaveDataOnNand
        .type   fs_USER_DeleteAllExtSaveDataOnNand, %function
fs_USER_DeleteAllExtSaveDataOnNand:
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
        .size   fs_USER_DeleteAllExtSaveDataOnNand, . - fs_USER_DeleteAllExtSaveDataOnNand

@ FUN_004ef010
        .global fs_USER_DeleteDirectoryRecursively
        .type   fs_USER_DeleteDirectoryRecursively, %function
fs_USER_DeleteDirectoryRecursively:
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
        .size   fs_USER_DeleteDirectoryRecursively, . - fs_USER_DeleteDirectoryRecursively

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
        .global fs_USER_CardNorDirectReadWithAddress
        .type   fs_USER_CardNorDirectReadWithAddress, %function
fs_USER_CardNorDirectReadWithAddress:
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
        .size   fs_USER_CardNorDirectReadWithAddress, . - fs_USER_CardNorDirectReadWithAddress

@ FUN_004ef0ec
        .global fs_USER_CardSlotGetCardIFPowerStatus
        .type   fs_USER_CardSlotGetCardIFPowerStatus, %function
fs_USER_CardSlotGetCardIFPowerStatus:
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
        .size   fs_USER_CardSlotGetCardIFPowerStatus, . - fs_USER_CardSlotGetCardIFPowerStatus

@ FUN_004ef16c
        .global fs_USER_SwitchCleanupInvalidSaveData
        .type   fs_USER_SwitchCleanupInvalidSaveData, %function
fs_USER_SwitchCleanupInvalidSaveData:
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
        .size   fs_USER_SwitchCleanupInvalidSaveData, . - fs_USER_SwitchCleanupInvalidSaveData

@ FUN_004ef1a4
        .global fs_USER_CardNorDirectWriteWithAddress
        .type   fs_USER_CardNorDirectWriteWithAddress, %function
fs_USER_CardNorDirectWriteWithAddress:
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
        .size   fs_USER_CardNorDirectWriteWithAddress, . - fs_USER_CardNorDirectWriteWithAddress

@ FUN_004ef1f8
        .global fs_USER_CardNorDirectCommandWithAddress
        .type   fs_USER_CardNorDirectCommandWithAddress, %function
fs_USER_CardNorDirectCommandWithAddress:
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
        .size   fs_USER_CardNorDirectCommandWithAddress, . - fs_USER_CardNorDirectCommandWithAddress

@ FUN_004ef234
        .global fs_USER_ResetCardCompatibilityParameter
        .type   fs_USER_ResetCardCompatibilityParameter, %function
fs_USER_ResetCardCompatibilityParameter:
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
        .size   fs_USER_ResetCardCompatibilityParameter, . - fs_USER_ResetCardCompatibilityParameter

@ FUN_004ef26c
        .global fs_USER_CheckAuthorityToAccessExtSaveData
        .type   fs_USER_CheckAuthorityToAccessExtSaveData, %function
fs_USER_CheckAuthorityToAccessExtSaveData:
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
        .size   fs_USER_CheckAuthorityToAccessExtSaveData, . - fs_USER_CheckAuthorityToAccessExtSaveData

@ FUN_004ef2c0
        .global fs_USER_CardNorDirectCpuWriteWithoutVerify
        .type   fs_USER_CardNorDirectCpuWriteWithoutVerify, %function
fs_USER_CardNorDirectCpuWriteWithoutVerify:
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
        .size   fs_USER_CardNorDirectCpuWriteWithoutVerify, . - fs_USER_CardNorDirectCpuWriteWithoutVerify

@ FUN_004ef300
        .global fs_USER_CardNorDirectSectorEraseWithoutVerify
        .type   fs_USER_CardNorDirectSectorEraseWithoutVerify, %function
fs_USER_CardNorDirectSectorEraseWithoutVerify:
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
        .size   fs_USER_CardNorDirectSectorEraseWithoutVerify, . - fs_USER_CardNorDirectSectorEraseWithoutVerify

@ FUN_004ef330
        .global fs_USER_OpenFile
        .type   fs_USER_OpenFile, %function
fs_USER_OpenFile:
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
        .size   fs_USER_OpenFile, . - fs_USER_OpenFile

@ FUN_004ef3a4
        .global fs_USER_File_GetPriority
        .type   fs_USER_File_GetPriority, %function
fs_USER_File_GetPriority:
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
        .size   fs_USER_File_GetPriority, . - fs_USER_File_GetPriority

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
        .global fs_USER_File_SetPriority
        .type   fs_USER_File_SetPriority, %function
fs_USER_File_SetPriority:
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
        .size   fs_USER_File_SetPriority, . - fs_USER_File_SetPriority

@ FUN_004ef458
        .global fs_USER_File_OpenLinkFile
        .type   fs_USER_File_OpenLinkFile, %function
fs_USER_File_OpenLinkFile:
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
        .size   fs_USER_File_OpenLinkFile, . - fs_USER_File_OpenLinkFile

@ FUN_004ef490
        .global fs_USER_File_Read
        .type   fs_USER_File_Read, %function
fs_USER_File_Read:
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
        .size   fs_USER_File_Read, . - fs_USER_File_Read

@ FUN_004ef4e8
        .global fs_USER_File_Close
        .type   fs_USER_File_Close, %function
fs_USER_File_Close:
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
        .size   fs_USER_File_Close, . - fs_USER_File_Close

@ FUN_004ef514
        .global fs_USER_File_Write
        .type   fs_USER_File_Write, %function
fs_USER_File_Write:
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
        .size   fs_USER_File_Write, . - fs_USER_File_Write

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
        .global fs_USER_File_GetSize
        .type   fs_USER_File_GetSize, %function
fs_USER_File_GetSize:
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
        .size   fs_USER_File_GetSize, . - fs_USER_File_GetSize

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
        .global ir_USER_Disconnect
        .type   ir_USER_Disconnect, %function
ir_USER_Disconnect:
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
        .size   ir_USER_Disconnect, . - ir_USER_Disconnect

@ FUN_004f3c98
        .global ir_USER_GetSendEvent
        .type   ir_USER_GetSendEvent, %function
ir_USER_GetSendEvent:
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
        .size   ir_USER_GetSendEvent, . - ir_USER_GetSendEvent

@ FUN_004f3cd4
        .global ir_USER_ReceiveIrnop
        .type   ir_USER_ReceiveIrnop, %function
ir_USER_ReceiveIrnop:
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
        .size   ir_USER_ReceiveIrnop, . - ir_USER_ReceiveIrnop

@ FUN_004f3d48
        .global ir_USER_AnyConnection
        .type   ir_USER_AnyConnection, %function
ir_USER_AnyConnection:
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
        .size   ir_USER_AnyConnection, . - ir_USER_AnyConnection

@ FUN_004f3d78
        .global ir_USER_FinalizeIrnop
        .type   ir_USER_FinalizeIrnop, %function
ir_USER_FinalizeIrnop:
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
        .size   ir_USER_FinalizeIrnop, . - ir_USER_FinalizeIrnop

@ FUN_004f3da8
        .global ir_USER_AutoConnection
        .type   ir_USER_AutoConnection, %function
ir_USER_AutoConnection:
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
        .size   ir_USER_AutoConnection, . - ir_USER_AutoConnection

@ FUN_004f3dfc
        .global ir_USER_SendIrnopLarge
        .type   ir_USER_SendIrnopLarge, %function
ir_USER_SendIrnopLarge:
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
        .size   ir_USER_SendIrnopLarge, . - ir_USER_SendIrnopLarge

@ FUN_004f3e44
        .global ir_USER_WaitConnection
        .type   ir_USER_WaitConnection, %function
ir_USER_WaitConnection:
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
        .size   ir_USER_WaitConnection, . - ir_USER_WaitConnection

@ FUN_004f3e88
        .global ir_USER_ClearSendBuffer
        .type   ir_USER_ClearSendBuffer, %function
ir_USER_ClearSendBuffer:
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
        .size   ir_USER_ClearSendBuffer, . - ir_USER_ClearSendBuffer

@ FUN_004f3eb8
        .global ir_USER_GetReceiveEvent
        .type   ir_USER_GetReceiveEvent, %function
ir_USER_GetReceiveEvent:
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
        .size   ir_USER_GetReceiveEvent, . - ir_USER_GetReceiveEvent

@ FUN_004f3ef4
        .global ir_USER_InitializeIrnop
        .type   ir_USER_InitializeIrnop, %function
ir_USER_InitializeIrnop:
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
        .size   ir_USER_InitializeIrnop, . - ir_USER_InitializeIrnop

@ FUN_004f3f4c
        .global ir_USER_SetOwnMachineId
        .type   ir_USER_SetOwnMachineId, %function
ir_USER_SetOwnMachineId:
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
        .size   ir_USER_SetOwnMachineId, . - ir_USER_SetOwnMachineId

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
        .global ir_USER_ReceiveIrnopLarge
        .type   ir_USER_ReceiveIrnopLarge, %function
ir_USER_ReceiveIrnopLarge:
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
        .size   ir_USER_ReceiveIrnopLarge, . - ir_USER_ReceiveIrnopLarge

@ FUN_004f4024
        .global ir_USER_RequireConnection
        .type   ir_USER_RequireConnection, %function
ir_USER_RequireConnection:
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
        .size   ir_USER_RequireConnection, . - ir_USER_RequireConnection

@ FUN_004f4060
        .global ir_USER_ClearReceiveBuffer
        .type   ir_USER_ClearReceiveBuffer, %function
ir_USER_ClearReceiveBuffer:
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
        .size   ir_USER_ClearReceiveBuffer, . - ir_USER_ClearReceiveBuffer

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
        .global ir_USER_ReleaseReceivedData
        .type   ir_USER_ReleaseReceivedData, %function
ir_USER_ReleaseReceivedData:
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
        .size   ir_USER_ReleaseReceivedData, . - ir_USER_ReleaseReceivedData

@ FUN_004f4104
        .global ir_USER_InitializeIrnopShared
        .type   ir_USER_InitializeIrnopShared, %function
ir_USER_InitializeIrnopShared:
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
        .size   ir_USER_InitializeIrnopShared, . - ir_USER_InitializeIrnopShared

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
        .global ir_USER_GetConnectionStatusEvent
        .type   ir_USER_GetConnectionStatusEvent, %function
ir_USER_GetConnectionStatusEvent:
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
        .size   ir_USER_GetConnectionStatusEvent, . - ir_USER_GetConnectionStatusEvent

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
        .global ir_USER_SendIrnop
        .type   ir_USER_SendIrnop, %function
ir_USER_SendIrnop:
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
        .size   ir_USER_SendIrnop, . - ir_USER_SendIrnop

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
        .global cecd_u_ReadMessage
        .type   cecd_u_ReadMessage, %function
cecd_u_ReadMessage:
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
        .size   cecd_u_ReadMessage, . - cecd_u_ReadMessage

@ FUN_004fb46c
        .global cecd_u_WriteMessage
        .type   cecd_u_WriteMessage, %function
cecd_u_WriteMessage:
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
        .size   cecd_u_WriteMessage, . - cecd_u_WriteMessage

@ FUN_004fb4dc
        .global cecd_u_OpenAndRead
        .type   cecd_u_OpenAndRead, %function
cecd_u_OpenAndRead:
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
        .size   cecd_u_OpenAndRead, . - cecd_u_OpenAndRead

@ FUN_004fb54c
        .global cecd_u_GetCecInfoBuffer
        .type   cecd_u_GetCecInfoBuffer, %function
cecd_u_GetCecInfoBuffer:
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
        .size   cecd_u_GetCecInfoBuffer, . - cecd_u_GetCecInfoBuffer

@ FUN_004fb594
        .global cecd_u_GetEventLogStart
        .type   cecd_u_GetEventLogStart, %function
cecd_u_GetEventLogStart:
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
        .size   cecd_u_GetEventLogStart, . - cecd_u_GetEventLogStart

@ FUN_004fb5d0
        .global cecd_u_OpenAndWrite
        .type   cecd_u_OpenAndWrite, %function
cecd_u_OpenAndWrite:
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
        .size   cecd_u_OpenAndWrite, . - cecd_u_OpenAndWrite

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
        .global cecd_u_GetEventLogEntryCount
        .type   cecd_u_GetEventLogEntryCount, %function
cecd_u_GetEventLogEntryCount:
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
        .size   cecd_u_GetEventLogEntryCount, . - cecd_u_GetEventLogEntryCount

@ FUN_004fb73c
        .global cecd_u_WriteMessageWithHMAC
        .type   cecd_u_WriteMessageWithHMAC, %function
cecd_u_WriteMessageWithHMAC:
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
        .size   cecd_u_WriteMessageWithHMAC, . - cecd_u_WriteMessageWithHMAC

@ FUN_004fb7bc
        .global cecd_u_GetCecInfoEventHandle
        .type   cecd_u_GetCecInfoEventHandle, %function
cecd_u_GetCecInfoEventHandle:
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
        .size   cecd_u_GetCecInfoEventHandle, . - cecd_u_GetCecInfoEventHandle

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
        .global cecd_u_Write_WriteRawFile
        .type   cecd_u_Write_WriteRawFile, %function
cecd_u_Write_WriteRawFile:
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
        .size   cecd_u_Write_WriteRawFile, . - cecd_u_Write_WriteRawFile

@ FUN_004fb98c
        .global cecd_u_Delete
        .type   cecd_u_Delete, %function
cecd_u_Delete:
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
        .size   cecd_u_Delete, . - cecd_u_Delete

@ FUN_004fba30
        .global cecd_u_ReadData_GetSystemInfo
        .type   cecd_u_ReadData_GetSystemInfo, %function
cecd_u_ReadData_GetSystemInfo:
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
        .size   cecd_u_ReadData_GetSystemInfo, . - cecd_u_ReadData_GetSystemInfo

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
        .global cecd_s_ReadMessage
        .type   cecd_s_ReadMessage, %function
cecd_s_ReadMessage:
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
        .size   cecd_s_ReadMessage, . - cecd_s_ReadMessage

@ FUN_004fbc8c
        .global cecd_s_SprGetSendSlotsMetadata
        .type   cecd_s_SprGetSendSlotsMetadata, %function
cecd_s_SprGetSendSlotsMetadata:
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
        .size   cecd_s_SprGetSendSlotsMetadata, . - cecd_s_SprGetSendSlotsMetadata

@ FUN_004fbd1c
        .global cecd_s_GenHashConsoleUnique
        .type   cecd_s_GenHashConsoleUnique, %function
cecd_s_GenHashConsoleUnique:
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
        .size   cecd_s_GenHashConsoleUnique, . - cecd_s_GenHashConsoleUnique

@ FUN_004fbd5c
        .global cecd_s_SprGetSlot
        .type   cecd_s_SprGetSlot, %function
cecd_s_SprGetSlot:
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
        .size   cecd_s_SprGetSlot, . - cecd_s_SprGetSlot

@ FUN_004fbda4
        .global cecd_s_SprSetRecvSlotsMetadata
        .type   cecd_s_SprSetRecvSlotsMetadata, %function
cecd_s_SprSetRecvSlotsMetadata:
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
        .size   cecd_s_SprSetRecvSlotsMetadata, . - cecd_s_SprSetRecvSlotsMetadata

@ FUN_004fbdec
        .global cecd_s_WriteMessage
        .type   cecd_s_WriteMessage, %function
cecd_s_WriteMessage:
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
        .size   cecd_s_WriteMessage, . - cecd_s_WriteMessage

@ FUN_004fbe5c
        .global cecd_s_SprCreate
        .type   cecd_s_SprCreate, %function
cecd_s_SprCreate:
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
        .size   cecd_s_SprCreate, . - cecd_s_SprCreate

@ FUN_004fbe9c
        .global cecd_s_SprSetTitleSent
        .type   cecd_s_SprSetTitleSent, %function
cecd_s_SprSetTitleSent:
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
        .size   cecd_s_SprSetTitleSent, . - cecd_s_SprSetTitleSent

@ FUN_004fbee0
        .global cecd_s_SprAddSlot
        .type   cecd_s_SprAddSlot, %function
cecd_s_SprAddSlot:
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
        .size   cecd_s_SprAddSlot, . - cecd_s_SprAddSlot

@ FUN_004fbf38
        .global cecd_s_SprDone
        .type   cecd_s_SprDone, %function
cecd_s_SprDone:
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
        .size   cecd_s_SprDone, . - cecd_s_SprDone

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
        .global cecd_s_OpenAndRead
        .type   cecd_s_OpenAndRead, %function
cecd_s_OpenAndRead:
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
        .size   cecd_s_OpenAndRead, . - cecd_s_OpenAndRead

@ FUN_004fc020
        .global cecd_s_GetCecInfoBuffer
        .type   cecd_s_GetCecInfoBuffer, %function
cecd_s_GetCecInfoBuffer:
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
        .size   cecd_s_GetCecInfoBuffer, . - cecd_s_GetCecInfoBuffer

@ FUN_004fc068
        .global cecd_s_GetEventLogStart
        .type   cecd_s_GetEventLogStart, %function
cecd_s_GetEventLogStart:
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
        .size   cecd_s_GetEventLogStart, . - cecd_s_GetEventLogStart

@ FUN_004fc0a4
        .global cecd_s_OpenAndWrite
        .type   cecd_s_OpenAndWrite, %function
cecd_s_OpenAndWrite:
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
        .size   cecd_s_OpenAndWrite, . - cecd_s_OpenAndWrite

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
        .global cecd_s_GetEventLogEntryCount
        .type   cecd_s_GetEventLogEntryCount, %function
cecd_s_GetEventLogEntryCount:
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
        .size   cecd_s_GetEventLogEntryCount, . - cecd_s_GetEventLogEntryCount

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
        .global cecd_s_SprInitialise
        .type   cecd_s_SprInitialise, %function
cecd_s_SprInitialise:
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
        .size   cecd_s_SprInitialise, . - cecd_s_SprInitialise

@ FUN_004fc284
        .global cecd_s_SprStartRecv
        .type   cecd_s_SprStartRecv, %function
cecd_s_SprStartRecv:
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
        .size   cecd_s_SprStartRecv, . - cecd_s_SprStartRecv

@ FUN_004fc2b4
        .global cecd_s_WriteMessageWithHMAC
        .type   cecd_s_WriteMessageWithHMAC, %function
cecd_s_WriteMessageWithHMAC:
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
        .size   cecd_s_WriteMessageWithHMAC, . - cecd_s_WriteMessageWithHMAC

@ FUN_004fc334
        .global cecd_s_SprFinaliseSend
        .type   cecd_s_SprFinaliseSend, %function
cecd_s_SprFinaliseSend:
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
        .size   cecd_s_SprFinaliseSend, . - cecd_s_SprFinaliseSend

@ FUN_004fc368
        .global cecd_s_SprFinaliseRecv
        .type   cecd_s_SprFinaliseRecv, %function
cecd_s_SprFinaliseRecv:
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
        .size   cecd_s_SprFinaliseRecv, . - cecd_s_SprFinaliseRecv

@ FUN_004fc39c
        .global cecd_s_GetCecInfoEventHandle
        .type   cecd_s_GetCecInfoEventHandle, %function
cecd_s_GetCecInfoEventHandle:
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
        .size   cecd_s_GetCecInfoEventHandle, . - cecd_s_GetCecInfoEventHandle

@ FUN_004fc3d8
        .global cecd_s_GetCecInfoEventHandleSys
        .type   cecd_s_GetCecInfoEventHandleSys, %function
cecd_s_GetCecInfoEventHandleSys:
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
        .size   cecd_s_GetCecInfoEventHandleSys, . - cecd_s_GetCecInfoEventHandleSys

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
        .global cecd_s_Write_WriteRawFile
        .type   cecd_s_Write_WriteRawFile, %function
cecd_s_Write_WriteRawFile:
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
        .size   cecd_s_Write_WriteRawFile, . - cecd_s_Write_WriteRawFile

@ FUN_004fc604
        .global cecd_s_Delete
        .type   cecd_s_Delete, %function
cecd_s_Delete:
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
        .size   cecd_s_Delete, . - cecd_s_Delete

@ FUN_004fc6a8
        .global cecd_s_ReadData_GetSystemInfo
        .type   cecd_s_ReadData_GetSystemInfo, %function
cecd_s_ReadData_GetSystemInfo:
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
        .size   cecd_s_ReadData_GetSystemInfo, . - cecd_s_ReadData_GetSystemInfo

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
        .global cfg_i_SecureInfoGetByte101_4fd964
        .type   cfg_i_SecureInfoGetByte101_4fd964, %function
cfg_i_SecureInfoGetByte101_4fd964:
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
        .size   cfg_i_SecureInfoGetByte101_4fd964, . - cfg_i_SecureInfoGetByte101_4fd964

@ FUN_004fd9a4
        .global cfg_i_GetSystemModel_4fd9a4
        .type   cfg_i_GetSystemModel_4fd9a4, %function
cfg_i_GetSystemModel_4fd9a4:
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
        .size   cfg_i_GetSystemModel_4fd9a4, . - cfg_i_GetSystemModel_4fd9a4

@ FUN_004fd9e0
        .global cfg_i_GetConfigInfoBlk8_4fd9e0
        .type   cfg_i_GetConfigInfoBlk8_4fd9e0, %function
cfg_i_GetConfigInfoBlk8_4fd9e0:
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
        .size   cfg_i_GetConfigInfoBlk8_4fd9e0, . - cfg_i_GetConfigInfoBlk8_4fd9e0

@ FUN_004fda2c
        .global cfg_i_SecureInfoGetRegion_4fda2c
        .type   cfg_i_SecureInfoGetRegion_4fda2c, %function
cfg_i_SecureInfoGetRegion_4fda2c:
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
        .size   cfg_i_SecureInfoGetRegion_4fda2c, . - cfg_i_SecureInfoGetRegion_4fda2c

@ FUN_004fda6c
        .global cfg_i_SetConfigInfoBlk4_4fda6c
        .type   cfg_i_SetConfigInfoBlk4_4fda6c, %function
cfg_i_SetConfigInfoBlk4_4fda6c:
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
        .size   cfg_i_SetConfigInfoBlk4_4fda6c, . - cfg_i_SetConfigInfoBlk4_4fda6c

@ FUN_004fdab4
        .global cfg_i_UpdateConfigNANDSavegame_4fdab4
        .type   cfg_i_UpdateConfigNANDSavegame_4fdab4, %function
cfg_i_UpdateConfigNANDSavegame_4fdab4:
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
        .size   cfg_i_UpdateConfigNANDSavegame_4fdab4, . - cfg_i_UpdateConfigNANDSavegame_4fdab4

@ FUN_004fdae8
        .global cfg_i_SecureInfoGetSerialNo_4fdae8
        .type   cfg_i_SecureInfoGetSerialNo_4fdae8, %function
cfg_i_SecureInfoGetSerialNo_4fdae8:
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
        .size   cfg_i_SecureInfoGetSerialNo_4fdae8, . - cfg_i_SecureInfoGetSerialNo_4fdae8

@ FUN_004fdb30
        .global cfg_i_GenHashConsoleUnique_4fdb30
        .type   cfg_i_GenHashConsoleUnique_4fdb30, %function
cfg_i_GenHashConsoleUnique_4fdb30:
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
        .size   cfg_i_GenHashConsoleUnique_4fdb30, . - cfg_i_GenHashConsoleUnique_4fdb30

@ FUN_004fdb74
        .global cfg_i_GetModelNintendo2DS_4fdb74
        .type   cfg_i_GetModelNintendo2DS_4fdb74, %function
cfg_i_GetModelNintendo2DS_4fdb74:
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
        .size   cfg_i_GetModelNintendo2DS_4fdb74, . - cfg_i_GetModelNintendo2DS_4fdb74

@ FUN_004fdbb0
        .global cfg_i_GetRegionCanadaUSA_4fdbb0
        .type   cfg_i_GetRegionCanadaUSA_4fdbb0, %function
cfg_i_GetRegionCanadaUSA_4fdbb0:
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
        .size   cfg_i_GetRegionCanadaUSA_4fdbb0, . - cfg_i_GetRegionCanadaUSA_4fdbb0

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
        .global cfg_i_GetLocalFriendCodeSeed_4fdc20
        .type   cfg_i_GetLocalFriendCodeSeed_4fdc20, %function
cfg_i_GetLocalFriendCodeSeed_4fdc20:
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
        .size   cfg_i_GetLocalFriendCodeSeed_4fdc20, . - cfg_i_GetLocalFriendCodeSeed_4fdc20

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
        .global cfg_i_UpdateConfigBlk00040003_4fdcc8
        .type   cfg_i_UpdateConfigBlk00040003_4fdcc8, %function
cfg_i_UpdateConfigBlk00040003_4fdcc8:
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
        .size   cfg_i_UpdateConfigBlk00040003_4fdcc8, . - cfg_i_UpdateConfigBlk00040003_4fdcc8

@ FUN_004fdcfc
        .global cfg_i_GetLocalFriendCodeSeedData_4fdcfc
        .type   cfg_i_GetLocalFriendCodeSeedData_4fdcfc, %function
cfg_i_GetLocalFriendCodeSeedData_4fdcfc:
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
        .size   cfg_i_GetLocalFriendCodeSeedData_4fdcfc, . - cfg_i_GetLocalFriendCodeSeedData_4fdcfc

@ FUN_004fdd44
        .global cfg_i_GetConfigInfoBlk2_4fdd44
        .type   cfg_i_GetConfigInfoBlk2_4fdd44, %function
cfg_i_GetConfigInfoBlk2_4fdd44:
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
        .size   cfg_i_GetConfigInfoBlk2_4fdd44, . - cfg_i_GetConfigInfoBlk2_4fdd44

@ FUN_004fdd90
        .global cfg_i_SecureInfoGetRegion_4fdd90
        .type   cfg_i_SecureInfoGetRegion_4fdd90, %function
cfg_i_SecureInfoGetRegion_4fdd90:
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
        .size   cfg_i_SecureInfoGetRegion_4fdd90, . - cfg_i_SecureInfoGetRegion_4fdd90

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
        .global cfg_i_SecureInfoGetByte101_4fde00
        .type   cfg_i_SecureInfoGetByte101_4fde00, %function
cfg_i_SecureInfoGetByte101_4fde00:
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
        .size   cfg_i_SecureInfoGetByte101_4fde00, . - cfg_i_SecureInfoGetByte101_4fde00

@ FUN_004fde40
        .global cfg_i_GetSystemModel_4fde40
        .type   cfg_i_GetSystemModel_4fde40, %function
cfg_i_GetSystemModel_4fde40:
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
        .size   cfg_i_GetSystemModel_4fde40, . - cfg_i_GetSystemModel_4fde40

@ FUN_004fde7c
        .global cfg_i_GetConfigInfoBlk8_4fde7c
        .type   cfg_i_GetConfigInfoBlk8_4fde7c, %function
cfg_i_GetConfigInfoBlk8_4fde7c:
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
        .size   cfg_i_GetConfigInfoBlk8_4fde7c, . - cfg_i_GetConfigInfoBlk8_4fde7c

@ FUN_004fdec8
        .global cfg_i_SecureInfoGetByte101_4fdec8
        .type   cfg_i_SecureInfoGetByte101_4fdec8, %function
cfg_i_SecureInfoGetByte101_4fdec8:
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
        .size   cfg_i_SecureInfoGetByte101_4fdec8, . - cfg_i_SecureInfoGetByte101_4fdec8

@ FUN_004fdf08
        .global cfg_i_SecureInfoGetRegion_4fdf08
        .type   cfg_i_SecureInfoGetRegion_4fdf08, %function
cfg_i_SecureInfoGetRegion_4fdf08:
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
        .size   cfg_i_SecureInfoGetRegion_4fdf08, . - cfg_i_SecureInfoGetRegion_4fdf08

@ FUN_004fdf48
        .global cfg_i_SetConfigInfoBlk4_4fdf48
        .type   cfg_i_SetConfigInfoBlk4_4fdf48, %function
cfg_i_SetConfigInfoBlk4_4fdf48:
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
        .size   cfg_i_SetConfigInfoBlk4_4fdf48, . - cfg_i_SetConfigInfoBlk4_4fdf48

@ FUN_004fdf90
        .global cfg_i_GetConfigInfoBlk8_4fdf90
        .type   cfg_i_GetConfigInfoBlk8_4fdf90, %function
cfg_i_GetConfigInfoBlk8_4fdf90:
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
        .size   cfg_i_GetConfigInfoBlk8_4fdf90, . - cfg_i_GetConfigInfoBlk8_4fdf90

@ FUN_004fdfdc
        .global cfg_i_SecureInfoGetRegion_4fdfdc
        .type   cfg_i_SecureInfoGetRegion_4fdfdc, %function
cfg_i_SecureInfoGetRegion_4fdfdc:
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
        .size   cfg_i_SecureInfoGetRegion_4fdfdc, . - cfg_i_SecureInfoGetRegion_4fdfdc

@ FUN_004fe01c
        .global cfg_i_SetConfigInfoBlk4_4fe01c
        .type   cfg_i_SetConfigInfoBlk4_4fe01c, %function
cfg_i_SetConfigInfoBlk4_4fe01c:
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
        .size   cfg_i_SetConfigInfoBlk4_4fe01c, . - cfg_i_SetConfigInfoBlk4_4fe01c

@ FUN_004fe064
        .global cfg_i_UpdateConfigNANDSavegame_4fe064
        .type   cfg_i_UpdateConfigNANDSavegame_4fe064, %function
cfg_i_UpdateConfigNANDSavegame_4fe064:
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
        .size   cfg_i_UpdateConfigNANDSavegame_4fe064, . - cfg_i_UpdateConfigNANDSavegame_4fe064

@ FUN_004fe098
        .global cfg_i_SecureInfoGetSerialNo_4fe098
        .type   cfg_i_SecureInfoGetSerialNo_4fe098, %function
cfg_i_SecureInfoGetSerialNo_4fe098:
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
        .size   cfg_i_SecureInfoGetSerialNo_4fe098, . - cfg_i_SecureInfoGetSerialNo_4fe098

@ FUN_004fe0e0
        .global cfg_i_GenHashConsoleUnique_4fe0e0
        .type   cfg_i_GenHashConsoleUnique_4fe0e0, %function
cfg_i_GenHashConsoleUnique_4fe0e0:
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
        .size   cfg_i_GenHashConsoleUnique_4fe0e0, . - cfg_i_GenHashConsoleUnique_4fe0e0

@ FUN_004fe124
        .global cfg_i_UpdateConfigNANDSavegame_4fe124
        .type   cfg_i_UpdateConfigNANDSavegame_4fe124, %function
cfg_i_UpdateConfigNANDSavegame_4fe124:
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
        .size   cfg_i_UpdateConfigNANDSavegame_4fe124, . - cfg_i_UpdateConfigNANDSavegame_4fe124

@ FUN_004fe158
        .global cfg_i_SecureInfoGetSerialNo_4fe158
        .type   cfg_i_SecureInfoGetSerialNo_4fe158, %function
cfg_i_SecureInfoGetSerialNo_4fe158:
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
        .size   cfg_i_SecureInfoGetSerialNo_4fe158, . - cfg_i_SecureInfoGetSerialNo_4fe158

@ FUN_004fe1a0
        .global cfg_i_GetModelNintendo2DS_4fe1a0
        .type   cfg_i_GetModelNintendo2DS_4fe1a0, %function
cfg_i_GetModelNintendo2DS_4fe1a0:
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
        .size   cfg_i_GetModelNintendo2DS_4fe1a0, . - cfg_i_GetModelNintendo2DS_4fe1a0

@ FUN_004fe1dc
        .global cfg_i_GetRegionCanadaUSA_4fe1dc
        .type   cfg_i_GetRegionCanadaUSA_4fe1dc, %function
cfg_i_GetRegionCanadaUSA_4fe1dc:
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
        .size   cfg_i_GetRegionCanadaUSA_4fe1dc, . - cfg_i_GetRegionCanadaUSA_4fe1dc

@ FUN_004fe218
        .global cfg_i_CreateConfigInfoBlk
        .type   cfg_i_CreateConfigInfoBlk, %function
cfg_i_CreateConfigInfoBlk:
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
        .size   cfg_i_CreateConfigInfoBlk, . - cfg_i_CreateConfigInfoBlk

@ FUN_004fe26c
        .global cfg_i_FormatConfig
        .type   cfg_i_FormatConfig, %function
cfg_i_FormatConfig:
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
        .size   cfg_i_FormatConfig, . - cfg_i_FormatConfig

@ FUN_004fe2a0
        .global cfg_i_SetSecureInfo
        .type   cfg_i_SetSecureInfo, %function
cfg_i_SetSecureInfo:
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
        .size   cfg_i_SetSecureInfo, . - cfg_i_SetSecureInfo

@ FUN_004fe2f8
        .global cfg_i_DeleteConfigNANDSavefile
        .type   cfg_i_DeleteConfigNANDSavefile, %function
cfg_i_DeleteConfigNANDSavefile:
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
        .size   cfg_i_DeleteConfigNANDSavefile, . - cfg_i_DeleteConfigNANDSavefile

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
        .global cfg_i_DeleteCreateNANDSecureInfo
        .type   cfg_i_DeleteCreateNANDSecureInfo, %function
cfg_i_DeleteCreateNANDSecureInfo:
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
        .size   cfg_i_DeleteCreateNANDSecureInfo, . - cfg_i_DeleteCreateNANDSecureInfo

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
        .global cfg_i_SecureInfoGetData
        .type   cfg_i_SecureInfoGetData, %function
cfg_i_SecureInfoGetData:
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
        .size   cfg_i_SecureInfoGetData, . - cfg_i_SecureInfoGetData

@ FUN_004fe444
        .global cfg_i_VerifySigSecureInfo
        .type   cfg_i_VerifySigSecureInfo, %function
cfg_i_VerifySigSecureInfo:
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
        .size   cfg_i_VerifySigSecureInfo, . - cfg_i_VerifySigSecureInfo

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
        .global cfg_i_GetLocalFriendCodeSeed_4fe4c0
        .type   cfg_i_GetLocalFriendCodeSeed_4fe4c0, %function
cfg_i_GetLocalFriendCodeSeed_4fe4c0:
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
        .size   cfg_i_GetLocalFriendCodeSeed_4fe4c0, . - cfg_i_GetLocalFriendCodeSeed_4fe4c0

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
        .global cfg_i_GetLocalFriendCodeSeed_4fe534
        .type   cfg_i_GetLocalFriendCodeSeed_4fe534, %function
cfg_i_GetLocalFriendCodeSeed_4fe534:
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
        .size   cfg_i_GetLocalFriendCodeSeed_4fe534, . - cfg_i_GetLocalFriendCodeSeed_4fe534

@ FUN_004fe570
        .global cfg_i_SecureInfoGetSignature
        .type   cfg_i_SecureInfoGetSignature, %function
cfg_i_SecureInfoGetSignature:
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
        .size   cfg_i_SecureInfoGetSignature, . - cfg_i_SecureInfoGetSignature

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
        .global cfg_i_DeleteCreateNANDLocalFriendCodeSeed
        .type   cfg_i_DeleteCreateNANDLocalFriendCodeSeed, %function
cfg_i_DeleteCreateNANDLocalFriendCodeSeed:
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
        .size   cfg_i_DeleteCreateNANDLocalFriendCodeSeed, . - cfg_i_DeleteCreateNANDLocalFriendCodeSeed

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
        .global cfg_i_SetGetLocalFriendCodeSeedData
        .type   cfg_i_SetGetLocalFriendCodeSeedData, %function
cfg_i_SetGetLocalFriendCodeSeedData:
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
        .size   cfg_i_SetGetLocalFriendCodeSeedData, . - cfg_i_SetGetLocalFriendCodeSeedData

@ FUN_004fe724
        .global cfg_i_ResetAnalogStickCalibrationParam
        .type   cfg_i_ResetAnalogStickCalibrationParam, %function
cfg_i_ResetAnalogStickCalibrationParam:
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
        .size   cfg_i_ResetAnalogStickCalibrationParam, . - cfg_i_ResetAnalogStickCalibrationParam

@ FUN_004fe758
        .global cfg_i_VerifySigLocalFriendCodeSeed
        .type   cfg_i_VerifySigLocalFriendCodeSeed, %function
cfg_i_VerifySigLocalFriendCodeSeed:
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
        .size   cfg_i_VerifySigLocalFriendCodeSeed, . - cfg_i_VerifySigLocalFriendCodeSeed

@ FUN_004fe78c
        .global cfg_i_UpdateConfigBlk00040003_4fe78c
        .type   cfg_i_UpdateConfigBlk00040003_4fe78c, %function
cfg_i_UpdateConfigBlk00040003_4fe78c:
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
        .size   cfg_i_UpdateConfigBlk00040003_4fe78c, . - cfg_i_UpdateConfigBlk00040003_4fe78c

@ FUN_004fe7c0
        .global cfg_i_SetLocalFriendCodeSeedSignature
        .type   cfg_i_SetLocalFriendCodeSeedSignature, %function
cfg_i_SetLocalFriendCodeSeedSignature:
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
        .size   cfg_i_SetLocalFriendCodeSeedSignature, . - cfg_i_SetLocalFriendCodeSeedSignature

@ FUN_004fe808
        .global cfg_i_GetLocalFriendCodeSeedData_4fe808
        .type   cfg_i_GetLocalFriendCodeSeedData_4fe808, %function
cfg_i_GetLocalFriendCodeSeedData_4fe808:
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
        .size   cfg_i_GetLocalFriendCodeSeedData_4fe808, . - cfg_i_GetLocalFriendCodeSeedData_4fe808

@ FUN_004fe850
        .global cfg_i_GetLocalFriendCodeSeedData_4fe850
        .type   cfg_i_GetLocalFriendCodeSeedData_4fe850, %function
cfg_i_GetLocalFriendCodeSeedData_4fe850:
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
        .size   cfg_i_GetLocalFriendCodeSeedData_4fe850, . - cfg_i_GetLocalFriendCodeSeedData_4fe850

@ FUN_004fe898
        .global cfg_i_GetConfigInfoBlk2_4fe898
        .type   cfg_i_GetConfigInfoBlk2_4fe898, %function
cfg_i_GetConfigInfoBlk2_4fe898:
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
        .size   cfg_i_GetConfigInfoBlk2_4fe898, . - cfg_i_GetConfigInfoBlk2_4fe898

@ FUN_004fe8e4
        .global cfg_i_SecureInfoGetRegion_4fe8e4
        .type   cfg_i_SecureInfoGetRegion_4fe8e4, %function
cfg_i_SecureInfoGetRegion_4fe8e4:
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
        .size   cfg_i_SecureInfoGetRegion_4fe8e4, . - cfg_i_SecureInfoGetRegion_4fe8e4

@ FUN_004fe920
        .global cfg_i_GetSystemModel_4fe920
        .type   cfg_i_GetSystemModel_4fe920, %function
cfg_i_GetSystemModel_4fe920:
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
        .size   cfg_i_GetSystemModel_4fe920, . - cfg_i_GetSystemModel_4fe920

@ FUN_004fe95c
        .global cfg_i_GenHashConsoleUnique_4fe95c
        .type   cfg_i_GenHashConsoleUnique_4fe95c, %function
cfg_i_GenHashConsoleUnique_4fe95c:
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
        .size   cfg_i_GenHashConsoleUnique_4fe95c, . - cfg_i_GenHashConsoleUnique_4fe95c

@ FUN_004fe9a4
        .global cfg_i_GetModelNintendo2DS_4fe9a4
        .type   cfg_i_GetModelNintendo2DS_4fe9a4, %function
cfg_i_GetModelNintendo2DS_4fe9a4:
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
        .size   cfg_i_GetModelNintendo2DS_4fe9a4, . - cfg_i_GetModelNintendo2DS_4fe9a4

@ FUN_004fe9e0
        .global cfg_i_GetRegionCanadaUSA_4fe9e0
        .type   cfg_i_GetRegionCanadaUSA_4fe9e0, %function
cfg_i_GetRegionCanadaUSA_4fe9e0:
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
        .size   cfg_i_GetRegionCanadaUSA_4fe9e0, . - cfg_i_GetRegionCanadaUSA_4fe9e0

@ FUN_004fea1c
        .global cfg_i_SecureInfoGetRegion_4fea1c
        .type   cfg_i_SecureInfoGetRegion_4fea1c, %function
cfg_i_SecureInfoGetRegion_4fea1c:
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
        .size   cfg_i_SecureInfoGetRegion_4fea1c, . - cfg_i_SecureInfoGetRegion_4fea1c

@ FUN_00501018
        .global dsp_DSP_GetSemaphore
        .type   dsp_DSP_GetSemaphore, %function
dsp_DSP_GetSemaphore:
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
        .size   dsp_DSP_GetSemaphore, . - dsp_DSP_GetSemaphore

@ FUN_00501084
        .global dsp_DSP_MaskSemaphore
        .type   dsp_DSP_MaskSemaphore, %function
dsp_DSP_MaskSemaphore:
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
        .size   dsp_DSP_MaskSemaphore, . - dsp_DSP_MaskSemaphore

@ FUN_005010bc
        .global dsp_DSP_ClearSemaphore
        .type   dsp_DSP_ClearSemaphore, %function
dsp_DSP_ClearSemaphore:
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
        .size   dsp_DSP_ClearSemaphore, . - dsp_DSP_ClearSemaphore

@ FUN_005011c0
        .global dsp_DSP_SendDataIsEmpty
        .type   dsp_DSP_SendDataIsEmpty, %function
dsp_DSP_SendDataIsEmpty:
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
        .size   dsp_DSP_SendDataIsEmpty, . - dsp_DSP_SendDataIsEmpty

@ FUN_00501204
        .global dsp_DSP_GetIsDspOccupied
        .type   dsp_DSP_GetIsDspOccupied, %function
dsp_DSP_GetIsDspOccupied:
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
        .size   dsp_DSP_GetIsDspOccupied, . - dsp_DSP_GetIsDspOccupied

@ FUN_00501238
        .global dsp_DSP_SetIirFilterI2S1
        .type   dsp_DSP_SetIirFilterI2S1, %function
dsp_DSP_SetIirFilterI2S1:
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
        .size   dsp_DSP_SetIirFilterI2S1, . - dsp_DSP_SetIirFilterI2S1

@ FUN_00501278
        .global dsp_DSP_SetIirFilterI2S2
        .type   dsp_DSP_SetIirFilterI2S2, %function
dsp_DSP_SetIirFilterI2S2:
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
        .size   dsp_DSP_SetIirFilterI2S2, . - dsp_DSP_SetIirFilterI2S2

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
        .global dsp_DSP_GetHeadphoneStatus
        .type   dsp_DSP_GetHeadphoneStatus, %function
dsp_DSP_GetHeadphoneStatus:
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
        .size   dsp_DSP_GetHeadphoneStatus, . - dsp_DSP_GetHeadphoneStatus

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
        .global dsp_DSP_ReadPipeIfPossible
        .type   dsp_DSP_ReadPipeIfPossible, %function
dsp_DSP_ReadPipeIfPossible:
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
        .size   dsp_DSP_ReadPipeIfPossible, . - dsp_DSP_ReadPipeIfPossible

@ FUN_0050144c
        .global dsp_DSP_InvalidateDCache
        .type   dsp_DSP_InvalidateDCache, %function
dsp_DSP_InvalidateDCache:
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
        .size   dsp_DSP_InvalidateDCache, . - dsp_DSP_InvalidateDCache

@ FUN_00501488
        .global dsp_DSP_CheckSemaphoreRequest
        .type   dsp_DSP_CheckSemaphoreRequest, %function
dsp_DSP_CheckSemaphoreRequest:
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
        .size   dsp_DSP_CheckSemaphoreRequest, . - dsp_DSP_CheckSemaphoreRequest

@ FUN_005014f0
        .global dsp_DSP_RegisterInterruptEvents
        .type   dsp_DSP_RegisterInterruptEvents, %function
dsp_DSP_RegisterInterruptEvents:
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
        .size   dsp_DSP_RegisterInterruptEvents, . - dsp_DSP_RegisterInterruptEvents

@ FUN_0050152c
        .global dsp_DSP_ConvertProcessAddressFromDspDram
        .type   dsp_DSP_ConvertProcessAddressFromDspDram, %function
dsp_DSP_ConvertProcessAddressFromDspDram:
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
        .size   dsp_DSP_ConvertProcessAddressFromDspDram, . - dsp_DSP_ConvertProcessAddressFromDspDram

@ FUN_005015ac
        .global dsp_DSP_SendData
        .type   dsp_DSP_SendData, %function
dsp_DSP_SendData:
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
        .size   dsp_DSP_SendData, . - dsp_DSP_SendData

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
        .global hid_USER_GetSoundVolume
        .type   hid_USER_GetSoundVolume, %function
hid_USER_GetSoundVolume:
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
        .size   hid_USER_GetSoundVolume, . - hid_USER_GetSoundVolume

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
        .global hid_USER_StartAnalogStickCalibration
        .type   hid_USER_StartAnalogStickCalibration, %function
hid_USER_StartAnalogStickCalibration:
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
        .size   hid_USER_StartAnalogStickCalibration, . - hid_USER_StartAnalogStickCalibration

@ FUN_00502ec0
        .global hid_USER_GetAnalogStickCalibrateParam
        .type   hid_USER_GetAnalogStickCalibrateParam, %function
hid_USER_GetAnalogStickCalibrateParam:
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
        .size   hid_USER_GetAnalogStickCalibrateParam, . - hid_USER_GetAnalogStickCalibrateParam

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
        .global mic_u_UnmapSharedMem
        .type   mic_u_UnmapSharedMem, %function
mic_u_UnmapSharedMem:
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
        .size   mic_u_UnmapSharedMem, . - mic_u_UnmapSharedMem

@ FUN_00503b70
        .global mic_u_GetPower
        .type   mic_u_GetPower, %function
mic_u_GetPower:
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
        .size   mic_u_GetPower, . - mic_u_GetPower

@ FUN_00503bb0
        .global mic_u_IsSampling
        .type   mic_u_IsSampling, %function
mic_u_IsSampling:
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
        .size   mic_u_IsSampling, . - mic_u_IsSampling

@ FUN_00503bec
        .global mic_u_SetPower
        .type   mic_u_SetPower, %function
mic_u_SetPower:
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
        .size   mic_u_SetPower, . - mic_u_SetPower

@ FUN_00503c30
        .global mic_u_StopSampling
        .type   mic_u_StopSampling, %function
mic_u_StopSampling:
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
        .size   mic_u_StopSampling, . - mic_u_StopSampling

@ FUN_00503c60
        .global mic_u_StartSampling
        .type   mic_u_StartSampling, %function
mic_u_StartSampling:
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
        .size   mic_u_StartSampling, . - mic_u_StartSampling

@ FUN_00503cb4
        .global mic_u_AdjustSampling
        .type   mic_u_AdjustSampling, %function
mic_u_AdjustSampling:
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
        .size   mic_u_AdjustSampling, . - mic_u_AdjustSampling

@ FUN_00503cf0
        .global mic_u_MapSharedMem
        .type   mic_u_MapSharedMem, %function
mic_u_MapSharedMem:
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
        .size   mic_u_MapSharedMem, . - mic_u_MapSharedMem

@ FUN_00503d34
        .global mic_u_SetIirFilterMic
        .type   mic_u_SetIirFilterMic, %function
mic_u_SetIirFilterMic:
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
        .size   mic_u_SetIirFilterMic, . - mic_u_SetIirFilterMic

@ FUN_00503d7c
        .global mic_u_SetAllowShellClosed
        .type   mic_u_SetAllowShellClosed, %function
mic_u_SetAllowShellClosed:
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
        .size   mic_u_SetAllowShellClosed, . - mic_u_SetAllowShellClosed

@ FUN_00503db8
        .global mic_u_GetEventHandle
        .type   mic_u_GetEventHandle, %function
mic_u_GetEventHandle:
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
        .size   mic_u_GetEventHandle, . - mic_u_GetEventHandle

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
        .global mic_u_GetGain
        .type   mic_u_GetGain, %function
mic_u_GetGain:
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
        .size   mic_u_GetGain, . - mic_u_GetGain

@ FUN_00503e68
        .global mic_u_SetGain
        .type   mic_u_SetGain, %function
mic_u_SetGain:
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
        .size   mic_u_SetGain, . - mic_u_SetGain

@ FUN_00503ea8
        .global mic_u_GetClamp
        .type   mic_u_GetClamp, %function
mic_u_GetClamp:
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
        .size   mic_u_GetClamp, . - mic_u_GetClamp

@ FUN_00503ee4
        .global mic_u_SetClamp
        .type   mic_u_SetClamp, %function
mic_u_SetClamp:
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
        .size   mic_u_SetClamp, . - mic_u_SetClamp

@ FUN_0050404c
        .global ndm_u_QueryStatus
        .type   ndm_u_QueryStatus, %function
ndm_u_QueryStatus:
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
        .size   ndm_u_QueryStatus, . - ndm_u_QueryStatus

@ FUN_00504098
        .global ndm_u_UnlockState
        .type   ndm_u_UnlockState, %function
ndm_u_UnlockState:
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
        .size   ndm_u_UnlockState, . - ndm_u_UnlockState

@ FUN_0050410c
        .global ndm_u_GetTargetState
        .type   ndm_u_GetTargetState, %function
ndm_u_GetTargetState:
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
        .size   ndm_u_GetTargetState, . - ndm_u_GetTargetState

@ FUN_00504148
        .global ndm_u_GetCurrentState
        .type   ndm_u_GetCurrentState, %function
ndm_u_GetCurrentState:
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
        .size   ndm_u_GetCurrentState, . - ndm_u_GetCurrentState

@ FUN_00504184
        .global ndm_u_GetScanInterval
        .type   ndm_u_GetScanInterval, %function
ndm_u_GetScanInterval:
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
        .size   ndm_u_GetScanInterval, . - ndm_u_GetScanInterval

@ FUN_005041c0
        .global ndm_u_ResumeScheduler
        .type   ndm_u_ResumeScheduler, %function
ndm_u_ResumeScheduler:
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
        .size   ndm_u_ResumeScheduler, . - ndm_u_ResumeScheduler

@ FUN_005041f0
        .global ndm_u_SetScanInterval
        .type   ndm_u_SetScanInterval, %function
ndm_u_SetScanInterval:
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
        .size   ndm_u_SetScanInterval, . - ndm_u_SetScanInterval

@ FUN_00504228
        .global ndm_u_GetRetryInterval
        .type   ndm_u_GetRetryInterval, %function
ndm_u_GetRetryInterval:
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
        .size   ndm_u_GetRetryInterval, . - ndm_u_GetRetryInterval

@ FUN_00504264
        .global ndm_u_SetRetryInterval
        .type   ndm_u_SetRetryInterval, %function
ndm_u_SetRetryInterval:
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
        .size   ndm_u_SetRetryInterval, . - ndm_u_SetRetryInterval

@ FUN_0050429c
        .global ndm_u_SuspendScheduler
        .type   ndm_u_SuspendScheduler, %function
ndm_u_SuspendScheduler:
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
        .size   ndm_u_SuspendScheduler, . - ndm_u_SuspendScheduler

@ FUN_005042d8
        .global ndm_u_GetDefaultDaemons
        .type   ndm_u_GetDefaultDaemons, %function
ndm_u_GetDefaultDaemons:
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
        .size   ndm_u_GetDefaultDaemons, . - ndm_u_GetDefaultDaemons

@ FUN_00504314
        .global ndm_u_QueryExclusiveMode
        .type   ndm_u_QueryExclusiveMode, %function
ndm_u_QueryExclusiveMode:
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
        .size   ndm_u_QueryExclusiveMode, . - ndm_u_QueryExclusiveMode

@ FUN_00504350
        .global ndm_u_EnterExclusiveState
        .type   ndm_u_EnterExclusiveState, %function
ndm_u_EnterExclusiveState:
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
        .size   ndm_u_EnterExclusiveState, . - ndm_u_EnterExclusiveState

@ FUN_00504394
        .global ndm_u_LeaveExclusiveState
        .type   ndm_u_LeaveExclusiveState, %function
ndm_u_LeaveExclusiveState:
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
        .size   ndm_u_LeaveExclusiveState, . - ndm_u_LeaveExclusiveState

@ FUN_005043d4
        .global ndm_u_ResetDefaultDaemons
        .type   ndm_u_ResetDefaultDaemons, %function
ndm_u_ResetDefaultDaemons:
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
        .size   ndm_u_ResetDefaultDaemons, . - ndm_u_ResetDefaultDaemons

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
        .global ndm_u_GetDaemonDisableCount
        .type   ndm_u_GetDaemonDisableCount, %function
ndm_u_GetDaemonDisableCount:
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
        .size   ndm_u_GetDaemonDisableCount, . - ndm_u_GetDaemonDisableCount

@ FUN_00504498
        .global ndm_u_ClearHalfAwakeMacFilter
        .type   ndm_u_ClearHalfAwakeMacFilter, %function
ndm_u_ClearHalfAwakeMacFilter:
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
        .size   ndm_u_ClearHalfAwakeMacFilter, . - ndm_u_ClearHalfAwakeMacFilter

@ FUN_005044cc
        .global ndm_u_GetSchedulerDisableCount
        .type   ndm_u_GetSchedulerDisableCount, %function
ndm_u_GetSchedulerDisableCount:
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
        .size   ndm_u_GetSchedulerDisableCount, . - ndm_u_GetSchedulerDisableCount

@ FUN_00504514
        .global ndm_u_LockState
        .type   ndm_u_LockState, %function
ndm_u_LockState:
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
        .size   ndm_u_LockState, . - ndm_u_LockState

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
        .global ptm_sysm_GetRtcAlarm
        .type   ptm_sysm_GetRtcAlarm, %function
ptm_sysm_GetRtcAlarm:
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
        .size   ptm_sysm_GetRtcAlarm, . - ptm_sysm_GetRtcAlarm

@ FUN_0050c674
        .global ptm_sysm_RebootAsync
        .type   ptm_sysm_RebootAsync, %function
ptm_sysm_RebootAsync:
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
        .size   ptm_sysm_RebootAsync, . - ptm_sysm_RebootAsync

@ FUN_0050c6ac
        .global ptm_sysm_SetRtcAlarm
        .type   ptm_sysm_SetRtcAlarm, %function
ptm_sysm_SetRtcAlarm:
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
        .size   ptm_sysm_SetRtcAlarm, . - ptm_sysm_SetRtcAlarm

@ FUN_0050c6e4
        .global ptm_sysm_SetUserTime
        .type   ptm_sysm_SetUserTime, %function
ptm_sysm_SetUserTime:
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
        .size   ptm_sysm_SetUserTime, . - ptm_sysm_SetUserTime

@ FUN_0050c71c
        .global ptm_sysm_RequestSleep
        .type   ptm_sysm_RequestSleep, %function
ptm_sysm_RequestSleep:
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
        .size   ptm_sysm_RequestSleep, . - ptm_sysm_RequestSleep

@ FUN_0050c750
        .global ptm_sysm_GetShellState
        .type   ptm_sysm_GetShellState, %function
ptm_sysm_GetShellState:
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
        .size   ptm_sysm_GetShellState, . - ptm_sysm_GetShellState

@ FUN_0050c78c
        .global ptm_sysm_SetRtcAlarmEx
        .type   ptm_sysm_SetRtcAlarmEx, %function
ptm_sysm_SetRtcAlarmEx:
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
        .size   ptm_sysm_SetRtcAlarmEx, . - ptm_sysm_SetRtcAlarmEx

@ FUN_0050c7d0
        .global ptm_sysm_ShutdownAsync
        .type   ptm_sysm_ShutdownAsync, %function
ptm_sysm_ShutdownAsync:
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
        .size   ptm_sysm_ShutdownAsync, . - ptm_sysm_ShutdownAsync

@ FUN_0050c80c
        .global ptm_sysm_CancelRtcAlarm
        .type   ptm_sysm_CancelRtcAlarm, %function
ptm_sysm_CancelRtcAlarm:
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
        .size   ptm_sysm_CancelRtcAlarm, . - ptm_sysm_CancelRtcAlarm

@ FUN_0050c83c
        .global ptm_sysm_FormatSavedata
        .type   ptm_sysm_FormatSavedata, %function
ptm_sysm_FormatSavedata:
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
        .size   ptm_sysm_FormatSavedata, . - ptm_sysm_FormatSavedata

@ FUN_0050c870
        .global ptm_sysm_GetAwakeReason
        .type   ptm_sysm_GetAwakeReason, %function
ptm_sysm_GetAwakeReason:
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
        .size   ptm_sysm_GetAwakeReason, . - ptm_sysm_GetAwakeReason

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
        .global ptm_sysm_GetShellStatus
        .type   ptm_sysm_GetShellStatus, %function
ptm_sysm_GetShellStatus:
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
        .size   ptm_sysm_GetShellStatus, . - ptm_sysm_GetShellStatus

@ FUN_0050c958
        .global ptm_sysm_GetStepHistory
        .type   ptm_sysm_GetStepHistory, %function
ptm_sysm_GetStepHistory:
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
        .size   ptm_sysm_GetStepHistory, . - ptm_sysm_GetStepHistory

@ FUN_0050c9a4
        .global ptm_sysm_SetStepHistory
        .type   ptm_sysm_SetStepHistory, %function
ptm_sysm_SetStepHistory:
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
        .size   ptm_sysm_SetStepHistory, . - ptm_sysm_SetStepHistory

@ FUN_0050c9f0
        .global ptm_sysm_GetAdapterState
        .type   ptm_sysm_GetAdapterState, %function
ptm_sysm_GetAdapterState:
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
        .size   ptm_sysm_GetAdapterState, . - ptm_sysm_GetAdapterState

@ FUN_0050ca2c
        .global ptm_sysm_GetBatteryLevel
        .type   ptm_sysm_GetBatteryLevel, %function
ptm_sysm_GetBatteryLevel:
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
        .size   ptm_sysm_GetBatteryLevel, . - ptm_sysm_GetBatteryLevel

@ FUN_0050ca68
        .global ptm_sysm_NotifyPlayEvent
        .type   ptm_sysm_NotifyPlayEvent, %function
ptm_sysm_NotifyPlayEvent:
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
        .size   ptm_sysm_NotifyPlayEvent, . - ptm_sysm_NotifyPlayEvent

@ FUN_0050cab4
        .global ptm_sysm_ReplySleepQuery
        .type   ptm_sysm_ReplySleepQuery, %function
ptm_sysm_ReplySleepQuery:
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
        .size   ptm_sysm_ReplySleepQuery, . - ptm_sysm_ReplySleepQuery

@ FUN_0050caf8
        .global ptm_sysm_ClearPlayHistory
        .type   ptm_sysm_ClearPlayHistory, %function
ptm_sysm_ClearPlayHistory:
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
        .size   ptm_sysm_ClearPlayHistory, . - ptm_sysm_ClearPlayHistory

@ FUN_0050cb2c
        .global ptm_sysm_ClearStepHistory
        .type   ptm_sysm_ClearStepHistory, %function
ptm_sysm_ClearStepHistory:
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
        .size   ptm_sysm_ClearStepHistory, . - ptm_sysm_ClearStepHistory

@ FUN_0050cb60
        .global ptm_sysm_GetInfoLEDStatus
        .type   ptm_sysm_GetInfoLEDStatus, %function
ptm_sysm_GetInfoLEDStatus:
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
        .size   ptm_sysm_GetInfoLEDStatus, . - ptm_sysm_GetInfoLEDStatus

@ FUN_0050cba0
        .global ptm_sysm_GetSoftwareClosedFlag
        .type   ptm_sysm_GetSoftwareClosedFlag, %function
ptm_sysm_GetSoftwareClosedFlag:
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
        .size   ptm_sysm_GetSoftwareClosedFlag, . - ptm_sysm_GetSoftwareClosedFlag

@ FUN_0050cbe0
        .global ptm_sysm_SetWakeupTrigger
        .type   ptm_sysm_SetWakeupTrigger, %function
ptm_sysm_SetWakeupTrigger:
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
        .size   ptm_sysm_SetWakeupTrigger, . - ptm_sysm_SetWakeupTrigger

@ FUN_0050cc24
        .global ptm_sysm_GetPedometerState
        .type   ptm_sysm_GetPedometerState, %function
ptm_sysm_GetPedometerState:
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
        .size   ptm_sysm_GetPedometerState, . - ptm_sysm_GetPedometerState

@ FUN_0050cc60
        .global ptm_sysm_GetStepHistoryAll
        .type   ptm_sysm_GetStepHistoryAll, %function
ptm_sysm_GetStepHistoryAll:
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
        .size   ptm_sysm_GetStepHistoryAll, . - ptm_sysm_GetStepHistoryAll

@ FUN_0050ccb0
        .global ptm_sysm_GetTotalStepCount
        .type   ptm_sysm_GetTotalStepCount, %function
ptm_sysm_GetTotalStepCount:
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
        .size   ptm_sysm_GetTotalStepCount, . - ptm_sysm_GetTotalStepCount

@ FUN_0050cd30
        .global ptm_sysm_ClearSoftwareClosedFlag
        .type   ptm_sysm_ClearSoftwareClosedFlag, %function
ptm_sysm_ClearSoftwareClosedFlag:
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
        .size   ptm_sysm_ClearSoftwareClosedFlag, . - ptm_sysm_ClearSoftwareClosedFlag

@ FUN_0050cd60
        .global ptm_sysm_GetPlayHistoryStart
        .type   ptm_sysm_GetPlayHistoryStart, %function
ptm_sysm_GetPlayHistoryStart:
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
        .size   ptm_sysm_GetPlayHistoryStart, . - ptm_sysm_GetPlayHistoryStart

@ FUN_0050cda0
        .global ptm_sysm_GetStepHistoryEntry
        .type   ptm_sysm_GetStepHistoryEntry, %function
ptm_sysm_GetStepHistoryEntry:
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
        .size   ptm_sysm_GetStepHistoryEntry, . - ptm_sysm_GetStepHistoryEntry

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
        .global ptm_sysm_GetPlayHistoryLength
        .type   ptm_sysm_GetPlayHistoryLength, %function
ptm_sysm_GetPlayHistoryLength:
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
        .size   ptm_sysm_GetPlayHistoryLength, . - ptm_sysm_GetPlayHistoryLength

@ FUN_0050ceac
        .global ptm_sysm_InvalidateSystemTime
        .type   ptm_sysm_InvalidateSystemTime, %function
ptm_sysm_InvalidateSystemTime:
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
        .size   ptm_sysm_InvalidateSystemTime, . - ptm_sysm_InvalidateSystemTime

@ FUN_0050cee0
        .global ptm_sysm_GetBatteryChargeState
        .type   ptm_sysm_GetBatteryChargeState, %function
ptm_sysm_GetBatteryChargeState:
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
        .size   ptm_sysm_GetBatteryChargeState, . - ptm_sysm_GetBatteryChargeState

@ FUN_0050cf1c
        .global ptm_sysm_SetInfoLEDPatternHeader
        .type   ptm_sysm_SetInfoLEDPatternHeader, %function
ptm_sysm_SetInfoLEDPatternHeader:
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
        .size   ptm_sysm_SetInfoLEDPatternHeader, . - ptm_sysm_SetInfoLEDPatternHeader

@ FUN_0050cf54
        .global ptm_sysm_IsShutdownByBatteryEmpty
        .type   ptm_sysm_IsShutdownByBatteryEmpty, %function
ptm_sysm_IsShutdownByBatteryEmpty:
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
        .size   ptm_sysm_IsShutdownByBatteryEmpty, . - ptm_sysm_IsShutdownByBatteryEmpty

@ FUN_0050cf94
        .global ptm_sysm_GetPedometerRecordingMode
        .type   ptm_sysm_GetPedometerRecordingMode, %function
ptm_sysm_GetPedometerRecordingMode:
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
        .size   ptm_sysm_GetPedometerRecordingMode, . - ptm_sysm_GetPedometerRecordingMode

@ FUN_0050cfd0
        .global ptm_sysm_SetBatteryEmptyLEDPattern
        .type   ptm_sysm_SetBatteryEmptyLEDPattern, %function
ptm_sysm_SetBatteryEmptyLEDPattern:
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
        .size   ptm_sysm_SetBatteryEmptyLEDPattern, . - ptm_sysm_SetBatteryEmptyLEDPattern

@ FUN_0050d008
        .global ptm_sysm_SetPedometerRecordingMode
        .type   ptm_sysm_SetPedometerRecordingMode, %function
ptm_sysm_SetPedometerRecordingMode:
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
        .size   ptm_sysm_SetPedometerRecordingMode, . - ptm_sysm_SetPedometerRecordingMode

@ FUN_0050d040
        .global ptm_sysm_GetLegacyJumpProhibitedFlag
        .type   ptm_sysm_GetLegacyJumpProhibitedFlag, %function
ptm_sysm_GetLegacyJumpProhibitedFlag:
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
        .size   ptm_sysm_GetLegacyJumpProhibitedFlag, . - ptm_sysm_GetLegacyJumpProhibitedFlag

@ FUN_0050d080
        .global ptm_sysm_SetPlayHistoryRecordingMode
        .type   ptm_sysm_SetPlayHistoryRecordingMode, %function
ptm_sysm_SetPlayHistoryRecordingMode:
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
        .size   ptm_sysm_SetPlayHistoryRecordingMode, . - ptm_sysm_SetPlayHistoryRecordingMode

@ FUN_0050d0bc
        .global ptm_sysm_NotifySleepPreparationComplete
        .type   ptm_sysm_NotifySleepPreparationComplete, %function
ptm_sysm_NotifySleepPreparationComplete:
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
        .size   ptm_sysm_NotifySleepPreparationComplete, . - ptm_sysm_NotifySleepPreparationComplete

@ FUN_0050d0fc
        .global ptm_sysm_Awake
        .type   ptm_sysm_Awake, %function
ptm_sysm_Awake:
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
        .size   ptm_sysm_Awake, . - ptm_sysm_Awake

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
        .global ptm_s_GetRtcAlarm
        .type   ptm_s_GetRtcAlarm, %function
ptm_s_GetRtcAlarm:
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
        .size   ptm_s_GetRtcAlarm, . - ptm_s_GetRtcAlarm

@ FUN_0050d1e4
        .global ptm_s_RebootAsync
        .type   ptm_s_RebootAsync, %function
ptm_s_RebootAsync:
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
        .size   ptm_s_RebootAsync, . - ptm_s_RebootAsync

@ FUN_0050d21c
        .global ptm_s_SetRtcAlarm
        .type   ptm_s_SetRtcAlarm, %function
ptm_s_SetRtcAlarm:
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
        .size   ptm_s_SetRtcAlarm, . - ptm_s_SetRtcAlarm

@ FUN_0050d254
        .global ptm_s_RequestSleep
        .type   ptm_s_RequestSleep, %function
ptm_s_RequestSleep:
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
        .size   ptm_s_RequestSleep, . - ptm_s_RequestSleep

@ FUN_0050d288
        .global ptm_s_GetShellState
        .type   ptm_s_GetShellState, %function
ptm_s_GetShellState:
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
        .size   ptm_s_GetShellState, . - ptm_s_GetShellState

@ FUN_0050d2c4
        .global ptm_s_SetRtcAlarmEx
        .type   ptm_s_SetRtcAlarmEx, %function
ptm_s_SetRtcAlarmEx:
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
        .size   ptm_s_SetRtcAlarmEx, . - ptm_s_SetRtcAlarmEx

@ FUN_0050d308
        .global ptm_s_ShutdownAsync
        .type   ptm_s_ShutdownAsync, %function
ptm_s_ShutdownAsync:
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
        .size   ptm_s_ShutdownAsync, . - ptm_s_ShutdownAsync

@ FUN_0050d344
        .global ptm_s_CancelRtcAlarm
        .type   ptm_s_CancelRtcAlarm, %function
ptm_s_CancelRtcAlarm:
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
        .size   ptm_s_CancelRtcAlarm, . - ptm_s_CancelRtcAlarm

@ FUN_0050d374
        .global ptm_s_GetAwakeReason
        .type   ptm_s_GetAwakeReason, %function
ptm_s_GetAwakeReason:
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
        .size   ptm_s_GetAwakeReason, . - ptm_s_GetAwakeReason

@ FUN_0050d3c4
        .global ptm_s_GetStepHistory
        .type   ptm_s_GetStepHistory, %function
ptm_s_GetStepHistory:
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
        .size   ptm_s_GetStepHistory, . - ptm_s_GetStepHistory

@ FUN_0050d410
        .global ptm_s_GetAdapterState
        .type   ptm_s_GetAdapterState, %function
ptm_s_GetAdapterState:
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
        .size   ptm_s_GetAdapterState, . - ptm_s_GetAdapterState

@ FUN_0050d44c
        .global ptm_s_GetBatteryLevel
        .type   ptm_s_GetBatteryLevel, %function
ptm_s_GetBatteryLevel:
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
        .size   ptm_s_GetBatteryLevel, . - ptm_s_GetBatteryLevel

@ FUN_0050d488
        .global ptm_s_ReplySleepQuery
        .type   ptm_s_ReplySleepQuery, %function
ptm_s_ReplySleepQuery:
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
        .size   ptm_s_ReplySleepQuery, . - ptm_s_ReplySleepQuery

@ FUN_0050d4cc
        .global ptm_s_SetWakeupTrigger
        .type   ptm_s_SetWakeupTrigger, %function
ptm_s_SetWakeupTrigger:
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
        .size   ptm_s_SetWakeupTrigger, . - ptm_s_SetWakeupTrigger

@ FUN_0050d510
        .global ptm_s_GetPedometerState
        .type   ptm_s_GetPedometerState, %function
ptm_s_GetPedometerState:
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
        .size   ptm_s_GetPedometerState, . - ptm_s_GetPedometerState

@ FUN_0050d54c
        .global ptm_s_GetStepHistoryAll
        .type   ptm_s_GetStepHistoryAll, %function
ptm_s_GetStepHistoryAll:
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
        .size   ptm_s_GetStepHistoryAll, . - ptm_s_GetStepHistoryAll

@ FUN_0050d59c
        .global ptm_s_GetTotalStepCount
        .type   ptm_s_GetTotalStepCount, %function
ptm_s_GetTotalStepCount:
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
        .size   ptm_s_GetTotalStepCount, . - ptm_s_GetTotalStepCount

@ FUN_0050d5d8
        .global ptm_s_GetStepHistoryEntry
        .type   ptm_s_GetStepHistoryEntry, %function
ptm_s_GetStepHistoryEntry:
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
        .size   ptm_s_GetStepHistoryEntry, . - ptm_s_GetStepHistoryEntry

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
        .global ptm_s_GetBatteryChargeState
        .type   ptm_s_GetBatteryChargeState, %function
ptm_s_GetBatteryChargeState:
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
        .size   ptm_s_GetBatteryChargeState, . - ptm_s_GetBatteryChargeState

@ FUN_0050d69c
        .global ptm_s_GetPedometerRecordingMode
        .type   ptm_s_GetPedometerRecordingMode, %function
ptm_s_GetPedometerRecordingMode:
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
        .size   ptm_s_GetPedometerRecordingMode, . - ptm_s_GetPedometerRecordingMode

@ FUN_0050d6d8
        .global ptm_s_SetPedometerRecordingMode
        .type   ptm_s_SetPedometerRecordingMode, %function
ptm_s_SetPedometerRecordingMode:
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
        .size   ptm_s_SetPedometerRecordingMode, . - ptm_s_SetPedometerRecordingMode

@ FUN_0050d710
        .global ptm_s_NotifySleepPreparationComplete
        .type   ptm_s_NotifySleepPreparationComplete, %function
ptm_s_NotifySleepPreparationComplete:
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
        .size   ptm_s_NotifySleepPreparationComplete, . - ptm_s_NotifySleepPreparationComplete

@ FUN_0050d750
        .global ptm_s_Awake
        .type   ptm_s_Awake, %function
ptm_s_Awake:
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
        .size   ptm_s_Awake, . - ptm_s_Awake

@ FUN_0050d784
        .global ptm_gets_GetRtcAlarm
        .type   ptm_gets_GetRtcAlarm, %function
ptm_gets_GetRtcAlarm:
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
        .size   ptm_gets_GetRtcAlarm, . - ptm_gets_GetRtcAlarm

@ FUN_0050d7c0
        .global ptm_gets_SetRtcAlarm
        .type   ptm_gets_SetRtcAlarm, %function
ptm_gets_SetRtcAlarm:
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
        .size   ptm_gets_SetRtcAlarm, . - ptm_gets_SetRtcAlarm

@ FUN_0050d7f8
        .global ptm_gets_GetShellState
        .type   ptm_gets_GetShellState, %function
ptm_gets_GetShellState:
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
        .size   ptm_gets_GetShellState, . - ptm_gets_GetShellState

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
        .global ptm_gets_CancelRtcAlarm
        .type   ptm_gets_CancelRtcAlarm, %function
ptm_gets_CancelRtcAlarm:
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
        .size   ptm_gets_CancelRtcAlarm, . - ptm_gets_CancelRtcAlarm

@ FUN_0050d8a4
        .global ptm_gets_GetStepHistory
        .type   ptm_gets_GetStepHistory, %function
ptm_gets_GetStepHistory:
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
        .size   ptm_gets_GetStepHistory, . - ptm_gets_GetStepHistory

@ FUN_0050d8f0
        .global ptm_gets_GetAdapterState
        .type   ptm_gets_GetAdapterState, %function
ptm_gets_GetAdapterState:
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
        .size   ptm_gets_GetAdapterState, . - ptm_gets_GetAdapterState

@ FUN_0050d92c
        .global ptm_gets_GetBatteryLevel
        .type   ptm_gets_GetBatteryLevel, %function
ptm_gets_GetBatteryLevel:
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
        .size   ptm_gets_GetBatteryLevel, . - ptm_gets_GetBatteryLevel

@ FUN_0050d968
        .global ptm_gets_GetPedometerState
        .type   ptm_gets_GetPedometerState, %function
ptm_gets_GetPedometerState:
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
        .size   ptm_gets_GetPedometerState, . - ptm_gets_GetPedometerState

@ FUN_0050d9a4
        .global ptm_gets_GetStepHistoryAll
        .type   ptm_gets_GetStepHistoryAll, %function
ptm_gets_GetStepHistoryAll:
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
        .size   ptm_gets_GetStepHistoryAll, . - ptm_gets_GetStepHistoryAll

@ FUN_0050d9f4
        .global ptm_gets_GetTotalStepCount
        .type   ptm_gets_GetTotalStepCount, %function
ptm_gets_GetTotalStepCount:
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
        .size   ptm_gets_GetTotalStepCount, . - ptm_gets_GetTotalStepCount

@ FUN_0050da30
        .global ptm_gets_GetStepHistoryEntry
        .type   ptm_gets_GetStepHistoryEntry, %function
ptm_gets_GetStepHistoryEntry:
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
        .size   ptm_gets_GetStepHistoryEntry, . - ptm_gets_GetStepHistoryEntry

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
        .global ptm_gets_GetBatteryChargeState
        .type   ptm_gets_GetBatteryChargeState, %function
ptm_gets_GetBatteryChargeState:
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
        .size   ptm_gets_GetBatteryChargeState, . - ptm_gets_GetBatteryChargeState

@ FUN_0050daf4
        .global ptm_gets_GetPedometerRecordingMode
        .type   ptm_gets_GetPedometerRecordingMode, %function
ptm_gets_GetPedometerRecordingMode:
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
        .size   ptm_gets_GetPedometerRecordingMode, . - ptm_gets_GetPedometerRecordingMode

@ FUN_0050db30
        .global ptm_gets_SetPedometerRecordingMode
        .type   ptm_gets_SetPedometerRecordingMode, %function
ptm_gets_SetPedometerRecordingMode:
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
        .size   ptm_gets_SetPedometerRecordingMode, . - ptm_gets_SetPedometerRecordingMode

@ FUN_0050db68
        .global ptm_play_GetRtcAlarm
        .type   ptm_play_GetRtcAlarm, %function
ptm_play_GetRtcAlarm:
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
        .size   ptm_play_GetRtcAlarm, . - ptm_play_GetRtcAlarm

@ FUN_0050dba4
        .global ptm_play_SetRtcAlarm
        .type   ptm_play_SetRtcAlarm, %function
ptm_play_SetRtcAlarm:
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
        .size   ptm_play_SetRtcAlarm, . - ptm_play_SetRtcAlarm

@ FUN_0050dbdc
        .global ptm_play_GetShellState
        .type   ptm_play_GetShellState, %function
ptm_play_GetShellState:
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
        .size   ptm_play_GetShellState, . - ptm_play_GetShellState

@ FUN_0050dc18
        .global ptm_play_CancelRtcAlarm
        .type   ptm_play_CancelRtcAlarm, %function
ptm_play_CancelRtcAlarm:
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
        .size   ptm_play_CancelRtcAlarm, . - ptm_play_CancelRtcAlarm

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
        .global ptm_play_GetStepHistory
        .type   ptm_play_GetStepHistory, %function
ptm_play_GetStepHistory:
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
        .size   ptm_play_GetStepHistory, . - ptm_play_GetStepHistory

@ FUN_0050dcec
        .global ptm_play_GetAdapterState
        .type   ptm_play_GetAdapterState, %function
ptm_play_GetAdapterState:
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
        .size   ptm_play_GetAdapterState, . - ptm_play_GetAdapterState

@ FUN_0050dd28
        .global ptm_play_GetBatteryLevel
        .type   ptm_play_GetBatteryLevel, %function
ptm_play_GetBatteryLevel:
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
        .size   ptm_play_GetBatteryLevel, . - ptm_play_GetBatteryLevel

@ FUN_0050dd64
        .global ptm_play_GetPedometerState
        .type   ptm_play_GetPedometerState, %function
ptm_play_GetPedometerState:
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
        .size   ptm_play_GetPedometerState, . - ptm_play_GetPedometerState

@ FUN_0050dda0
        .global ptm_play_GetStepHistoryAll
        .type   ptm_play_GetStepHistoryAll, %function
ptm_play_GetStepHistoryAll:
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
        .size   ptm_play_GetStepHistoryAll, . - ptm_play_GetStepHistoryAll

@ FUN_0050ddf0
        .global ptm_play_GetTotalStepCount
        .type   ptm_play_GetTotalStepCount, %function
ptm_play_GetTotalStepCount:
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
        .size   ptm_play_GetTotalStepCount, . - ptm_play_GetTotalStepCount

@ FUN_0050de2c
        .global ptm_play_GetPlayHistoryStart
        .type   ptm_play_GetPlayHistoryStart, %function
ptm_play_GetPlayHistoryStart:
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
        .size   ptm_play_GetPlayHistoryStart, . - ptm_play_GetPlayHistoryStart

@ FUN_0050de6c
        .global ptm_play_GetStepHistoryEntry
        .type   ptm_play_GetStepHistoryEntry, %function
ptm_play_GetStepHistoryEntry:
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
        .size   ptm_play_GetStepHistoryEntry, . - ptm_play_GetStepHistoryEntry

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
        .global ptm_play_GetPlayHistoryLength
        .type   ptm_play_GetPlayHistoryLength, %function
ptm_play_GetPlayHistoryLength:
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
        .size   ptm_play_GetPlayHistoryLength, . - ptm_play_GetPlayHistoryLength

@ FUN_0050df78
        .global ptm_play_GetBatteryChargeState
        .type   ptm_play_GetBatteryChargeState, %function
ptm_play_GetBatteryChargeState:
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
        .size   ptm_play_GetBatteryChargeState, . - ptm_play_GetBatteryChargeState

@ FUN_0050dfb4
        .global ptm_play_GetPedometerRecordingMode
        .type   ptm_play_GetPedometerRecordingMode, %function
ptm_play_GetPedometerRecordingMode:
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
        .size   ptm_play_GetPedometerRecordingMode, . - ptm_play_GetPedometerRecordingMode

@ FUN_0050dff0
        .global ptm_play_SetPedometerRecordingMode
        .type   ptm_play_SetPedometerRecordingMode, %function
ptm_play_SetPedometerRecordingMode:
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
        .size   ptm_play_SetPedometerRecordingMode, . - ptm_play_SetPedometerRecordingMode

@ FUN_0050e2e4
        .global ptm_u_GetRtcAlarm
        .type   ptm_u_GetRtcAlarm, %function
ptm_u_GetRtcAlarm:
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
        .size   ptm_u_GetRtcAlarm, . - ptm_u_GetRtcAlarm

@ FUN_0050e320
        .global ptm_u_SetRtcAlarm
        .type   ptm_u_SetRtcAlarm, %function
ptm_u_SetRtcAlarm:
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
        .size   ptm_u_SetRtcAlarm, . - ptm_u_SetRtcAlarm

@ FUN_0050e358
        .global ptm_u_GetShellState
        .type   ptm_u_GetShellState, %function
ptm_u_GetShellState:
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
        .size   ptm_u_GetShellState, . - ptm_u_GetShellState

@ FUN_0050e394
        .global ptm_u_CancelRtcAlarm
        .type   ptm_u_CancelRtcAlarm, %function
ptm_u_CancelRtcAlarm:
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
        .size   ptm_u_CancelRtcAlarm, . - ptm_u_CancelRtcAlarm

@ FUN_0050e3c4
        .global ptm_u_GetStepHistory
        .type   ptm_u_GetStepHistory, %function
ptm_u_GetStepHistory:
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
        .size   ptm_u_GetStepHistory, . - ptm_u_GetStepHistory

@ FUN_0050e410
        .global ptm_u_GetAdapterState
        .type   ptm_u_GetAdapterState, %function
ptm_u_GetAdapterState:
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
        .size   ptm_u_GetAdapterState, . - ptm_u_GetAdapterState

@ FUN_0050e44c
        .global ptm_u_GetBatteryLevel
        .type   ptm_u_GetBatteryLevel, %function
ptm_u_GetBatteryLevel:
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
        .size   ptm_u_GetBatteryLevel, . - ptm_u_GetBatteryLevel

@ FUN_0050e488
        .global ptm_u_GetPedometerState
        .type   ptm_u_GetPedometerState, %function
ptm_u_GetPedometerState:
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
        .size   ptm_u_GetPedometerState, . - ptm_u_GetPedometerState

@ FUN_0050e4c4
        .global ptm_u_GetStepHistoryAll
        .type   ptm_u_GetStepHistoryAll, %function
ptm_u_GetStepHistoryAll:
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
        .size   ptm_u_GetStepHistoryAll, . - ptm_u_GetStepHistoryAll

@ FUN_0050e514
        .global ptm_u_GetTotalStepCount
        .type   ptm_u_GetTotalStepCount, %function
ptm_u_GetTotalStepCount:
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
        .size   ptm_u_GetTotalStepCount, . - ptm_u_GetTotalStepCount

@ FUN_0050e550
        .global ptm_u_GetStepHistoryEntry
        .type   ptm_u_GetStepHistoryEntry, %function
ptm_u_GetStepHistoryEntry:
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
        .size   ptm_u_GetStepHistoryEntry, . - ptm_u_GetStepHistoryEntry

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
        .global ptm_u_GetBatteryChargeState
        .type   ptm_u_GetBatteryChargeState, %function
ptm_u_GetBatteryChargeState:
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
        .size   ptm_u_GetBatteryChargeState, . - ptm_u_GetBatteryChargeState

@ FUN_0050e614
        .global ptm_u_GetPedometerRecordingMode
        .type   ptm_u_GetPedometerRecordingMode, %function
ptm_u_GetPedometerRecordingMode:
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
        .size   ptm_u_GetPedometerRecordingMode, . - ptm_u_GetPedometerRecordingMode

@ FUN_0050e650
        .global ptm_u_SetPedometerRecordingMode
        .type   ptm_u_SetPedometerRecordingMode, %function
ptm_u_SetPedometerRecordingMode:
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
        .size   ptm_u_SetPedometerRecordingMode, . - ptm_u_SetPedometerRecordingMode

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
        .global srv_pm_Unsubscribe_517d9c
        .type   srv_pm_Unsubscribe_517d9c, %function
srv_pm_Unsubscribe_517d9c:
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
        .size   srv_pm_Unsubscribe_517d9c, . - srv_pm_Unsubscribe_517d9c

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
        .global srv_pm_RegisterClient_517e70
        .type   srv_pm_RegisterClient_517e70, %function
srv_pm_RegisterClient_517e70:
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
        .size   srv_pm_RegisterClient_517e70, . - srv_pm_RegisterClient_517e70

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
        .global srv_pm_EnableNotification_51812c
        .type   srv_pm_EnableNotification_51812c, %function
srv_pm_EnableNotification_51812c:
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
        .size   srv_pm_EnableNotification_51812c, . - srv_pm_EnableNotification_51812c

@ FUN_005181c0
        .global srv_pm_PublishToSubscriber_5181c0
        .type   srv_pm_PublishToSubscriber_5181c0, %function
srv_pm_PublishToSubscriber_5181c0:
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
        .size   srv_pm_PublishToSubscriber_5181c0, . - srv_pm_PublishToSubscriber_5181c0

@ FUN_005181f8
        .global srv_pm_ReceiveNotification_5181f8
        .type   srv_pm_ReceiveNotification_5181f8, %function
srv_pm_ReceiveNotification_5181f8:
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
        .size   srv_pm_ReceiveNotification_5181f8, . - srv_pm_ReceiveNotification_5181f8

@ FUN_0051828c
        .global srv_pm_Subscribe_51828c
        .type   srv_pm_Subscribe_51828c, %function
srv_pm_Subscribe_51828c:
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
        .size   srv_pm_Subscribe_51828c, . - srv_pm_Subscribe_51828c

@ FUN_005182c4
        .global srv_pm_Unsubscribe_5182c4
        .type   srv_pm_Unsubscribe_5182c4, %function
srv_pm_Unsubscribe_5182c4:
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
        .size   srv_pm_Unsubscribe_5182c4, . - srv_pm_Unsubscribe_5182c4

@ FUN_00518514
        .global srv_pm_PublishToSubscriber_518514
        .type   srv_pm_PublishToSubscriber_518514, %function
srv_pm_PublishToSubscriber_518514:
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
        .size   srv_pm_PublishToSubscriber_518514, . - srv_pm_PublishToSubscriber_518514

@ FUN_005185a4
        .global srv_pm_Subscribe_5185a4
        .type   srv_pm_Subscribe_5185a4, %function
srv_pm_Subscribe_5185a4:
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
        .size   srv_pm_Subscribe_5185a4, . - srv_pm_Subscribe_5185a4

@ FUN_0051af78
        .global nwm_UDS_GetChannel
        .type   nwm_UDS_GetChannel, %function
nwm_UDS_GetChannel:
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
        .size   nwm_UDS_GetChannel, . - nwm_UDS_GetChannel

@ FUN_0051afac
        .global nwm_UDS_PullPacket
        .type   nwm_UDS_PullPacket, %function
nwm_UDS_PullPacket:
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
        .size   nwm_UDS_PullPacket, . - nwm_UDS_PullPacket

@ FUN_0051b018
        .global nwm_UDS_EjectClient
        .type   nwm_UDS_EjectClient, %function
nwm_UDS_EjectClient:
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
        .size   nwm_UDS_EjectClient, . - nwm_UDS_EjectClient

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
        .global nwm_UDS_CreateNetwork2
        .type   nwm_UDS_CreateNetwork2, %function
nwm_UDS_CreateNetwork2:
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
        .size   nwm_UDS_CreateNetwork2, . - nwm_UDS_CreateNetwork2

@ FUN_0051b0dc
        .global nwm_UDS_DestroyNetwork
        .type   nwm_UDS_DestroyNetwork, %function
nwm_UDS_DestroyNetwork:
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
        .size   nwm_UDS_DestroyNetwork, . - nwm_UDS_DestroyNetwork

@ FUN_0051b104
        .global nwm_UDS_EjectSpectator
        .type   nwm_UDS_EjectSpectator, %function
nwm_UDS_EjectSpectator:
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
        .size   nwm_UDS_EjectSpectator, . - nwm_UDS_EjectSpectator

@ FUN_0051b12c
        .global nwm_UDS_ConnectNetwork2
        .type   nwm_UDS_ConnectNetwork2, %function
nwm_UDS_ConnectNetwork2:
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
        .size   nwm_UDS_ConnectNetwork2, . - nwm_UDS_ConnectNetwork2

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
        .global nwm_UDS_ScanOnConnection
        .type   nwm_UDS_ScanOnConnection, %function
nwm_UDS_ScanOnConnection:
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
        .size   nwm_UDS_ScanOnConnection, . - nwm_UDS_ScanOnConnection

@ FUN_0051b268
        .global nwm_UDS_DisconnectNetwork
        .type   nwm_UDS_DisconnectNetwork, %function
nwm_UDS_DisconnectNetwork:
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
        .size   nwm_UDS_DisconnectNetwork, . - nwm_UDS_DisconnectNetwork

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
        .global nwm_UDS_GetApplicationData
        .type   nwm_UDS_GetApplicationData, %function
nwm_UDS_GetApplicationData:
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
        .size   nwm_UDS_GetApplicationData, . - nwm_UDS_GetApplicationData

@ FUN_0051b328
        .global nwm_UDS_GetNodeInformation
        .type   nwm_UDS_GetNodeInformation, %function
nwm_UDS_GetNodeInformation:
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
        .size   nwm_UDS_GetNodeInformation, . - nwm_UDS_GetNodeInformation

@ FUN_0051b378
        .global nwm_UDS_SetApplicationData
        .type   nwm_UDS_SetApplicationData, %function
nwm_UDS_SetApplicationData:
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
        .size   nwm_UDS_SetApplicationData, . - nwm_UDS_SetApplicationData

@ FUN_0051b3bc
        .global nwm_UDS_GetConnectionStatus
        .type   nwm_UDS_GetConnectionStatus, %function
nwm_UDS_GetConnectionStatus:
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
        .size   nwm_UDS_GetConnectionStatus, . - nwm_UDS_GetConnectionStatus

@ FUN_0051b454
        .global nwm_UDS_InitializeWithVersion
        .type   nwm_UDS_InitializeWithVersion, %function
nwm_UDS_InitializeWithVersion:
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
        .size   nwm_UDS_InitializeWithVersion, . - nwm_UDS_InitializeWithVersion

@ FUN_0051b4c8
        .global nwm_UDS_SetProbeResponseParam
        .type   nwm_UDS_SetProbeResponseParam, %function
nwm_UDS_SetProbeResponseParam:
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
        .size   nwm_UDS_SetProbeResponseParam, . - nwm_UDS_SetProbeResponseParam

@ FUN_0051b510
        .global nwm_UDS_UpdateNetworkAttribute
        .type   nwm_UDS_UpdateNetworkAttribute, %function
nwm_UDS_UpdateNetworkAttribute:
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
        .size   nwm_UDS_UpdateNetworkAttribute, . - nwm_UDS_UpdateNetworkAttribute

@ FUN_0051b550
        .global nwm_UDS_GetNodeInformationList2
        .type   nwm_UDS_GetNodeInformationList2, %function
nwm_UDS_GetNodeInformationList2:
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
        .size   nwm_UDS_GetNodeInformationList2, . - nwm_UDS_GetNodeInformationList2

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
        .global nwm_UDS_Flush
        .type   nwm_UDS_Flush, %function
nwm_UDS_Flush:
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
        .size   nwm_UDS_Flush, . - nwm_UDS_Flush

@ FUN_0051b67c
        .global nwm_UDS_SendTo
        .type   nwm_UDS_SendTo, %function
nwm_UDS_SendTo:
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
        .size   nwm_UDS_SendTo, . - nwm_UDS_SendTo

@ FUN_0051b6f0
        .global nwm_UDS_Unbind
        .type   nwm_UDS_Unbind, %function
nwm_UDS_Unbind:
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
        .size   nwm_UDS_Unbind, . - nwm_UDS_Unbind

@ FUN_0051b738
        .global nwm_UDS_Finalize
        .type   nwm_UDS_Finalize, %function
nwm_UDS_Finalize:
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
        .size   nwm_UDS_Finalize, . - nwm_UDS_Finalize

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
        .global y2r_u_GetRotation
        .type   y2r_u_GetRotation, %function
y2r_u_GetRotation:
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
        .size   y2r_u_GetRotation, . - y2r_u_GetRotation

@ FUN_0051bcfc
        .global y2r_u_PingProcess
        .type   y2r_u_PingProcess, %function
y2r_u_PingProcess:
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
        .size   y2r_u_PingProcess, . - y2r_u_PingProcess

@ FUN_0051bd38
        .global y2r_u_SetRotation
        .type   y2r_u_SetRotation, %function
y2r_u_SetRotation:
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
        .size   y2r_u_SetRotation, . - y2r_u_SetRotation

@ FUN_0051bd74
        .global y2r_u_SetSendingU
        .type   y2r_u_SetSendingU, %function
y2r_u_SetSendingU:
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
        .size   y2r_u_SetSendingU, . - y2r_u_SetSendingU

@ FUN_0051bdd0
        .global y2r_u_SetSendingV
        .type   y2r_u_SetSendingV, %function
y2r_u_SetSendingV:
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
        .size   y2r_u_SetSendingV, . - y2r_u_SetSendingV

@ FUN_0051be2c
        .global y2r_u_SetSendingY
        .type   y2r_u_SetSendingY, %function
y2r_u_SetSendingY:
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
        .size   y2r_u_SetSendingY, . - y2r_u_SetSendingY

@ FUN_0051be88
        .global y2r_u_SetReceiving
        .type   y2r_u_SetReceiving, %function
y2r_u_SetReceiving:
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
        .size   y2r_u_SetReceiving, . - y2r_u_SetReceiving

@ FUN_0051bee4
        .global y2r_u_GetInputLines
        .type   y2r_u_GetInputLines, %function
y2r_u_GetInputLines:
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
        .size   y2r_u_GetInputLines, . - y2r_u_GetInputLines

@ FUN_0051bf20
        .global y2r_u_SetInputLines
        .type   y2r_u_SetInputLines, %function
y2r_u_SetInputLines:
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
        .size   y2r_u_SetInputLines, . - y2r_u_SetInputLines

@ FUN_0051bf5c
        .global y2r_u_SetSendingYUYV
        .type   y2r_u_SetSendingYUYV, %function
y2r_u_SetSendingYUYV:
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
        .size   y2r_u_SetSendingYUYV, . - y2r_u_SetSendingYUYV

@ FUN_0051bfb8
        .global y2r_u_DriverFinalize
        .type   y2r_u_DriverFinalize, %function
y2r_u_DriverFinalize:
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
        .size   y2r_u_DriverFinalize, . - y2r_u_DriverFinalize

@ FUN_0051bfe8
        .global y2r_u_GetInputFormat
        .type   y2r_u_GetInputFormat, %function
y2r_u_GetInputFormat:
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
        .size   y2r_u_GetInputFormat, . - y2r_u_GetInputFormat

@ FUN_0051c024
        .global y2r_u_SetInputFormat
        .type   y2r_u_SetInputFormat, %function
y2r_u_SetInputFormat:
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
        .size   y2r_u_SetInputFormat, . - y2r_u_SetInputFormat

@ FUN_0051c060
        .global y2r_u_StopConversion
        .type   y2r_u_StopConversion, %function
y2r_u_StopConversion:
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
        .size   y2r_u_StopConversion, . - y2r_u_StopConversion

@ FUN_0051c090
        .global y2r_u_GetOutputFormat
        .type   y2r_u_GetOutputFormat, %function
y2r_u_GetOutputFormat:
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
        .size   y2r_u_GetOutputFormat, . - y2r_u_GetOutputFormat

@ FUN_0051c0cc
        .global y2r_u_SetOutputFormat
        .type   y2r_u_SetOutputFormat, %function
y2r_u_SetOutputFormat:
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
        .size   y2r_u_SetOutputFormat, . - y2r_u_SetOutputFormat

@ FUN_0051c108
        .global y2r_u_StartConversion
        .type   y2r_u_StartConversion, %function
y2r_u_StartConversion:
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
        .size   y2r_u_StartConversion, . - y2r_u_StartConversion

@ FUN_0051c138
        .global y2r_u_DriverInitialize
        .type   y2r_u_DriverInitialize, %function
y2r_u_DriverInitialize:
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
        .size   y2r_u_DriverInitialize, . - y2r_u_DriverInitialize

@ FUN_0051c168
        .global y2r_u_IsBusyConversion
        .type   y2r_u_IsBusyConversion, %function
y2r_u_IsBusyConversion:
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
        .size   y2r_u_IsBusyConversion, . - y2r_u_IsBusyConversion

@ FUN_0051c1e0
        .global y2r_u_GetInputLineWidth
        .type   y2r_u_GetInputLineWidth, %function
y2r_u_GetInputLineWidth:
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
        .size   y2r_u_GetInputLineWidth, . - y2r_u_GetInputLineWidth

@ FUN_0051c21c
        .global y2r_u_SetBlockAlignment
        .type   y2r_u_SetBlockAlignment, %function
y2r_u_SetBlockAlignment:
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
        .size   y2r_u_SetBlockAlignment, . - y2r_u_SetBlockAlignment

@ FUN_0051c258
        .global y2r_u_SetInputLineWidth
        .type   y2r_u_SetInputLineWidth, %function
y2r_u_SetInputLineWidth:
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
        .size   y2r_u_SetInputLineWidth, . - y2r_u_SetInputLineWidth

@ FUN_0051c294
        .global y2r_u_IsFinishedSendingU
        .type   y2r_u_IsFinishedSendingU, %function
y2r_u_IsFinishedSendingU:
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
        .size   y2r_u_IsFinishedSendingU, . - y2r_u_IsFinishedSendingU

@ FUN_0051c2d0
        .global y2r_u_IsFinishedSendingV
        .type   y2r_u_IsFinishedSendingV, %function
y2r_u_IsFinishedSendingV:
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
        .size   y2r_u_IsFinishedSendingV, . - y2r_u_IsFinishedSendingV

@ FUN_0051c30c
        .global y2r_u_IsFinishedSendingY
        .type   y2r_u_IsFinishedSendingY, %function
y2r_u_IsFinishedSendingY:
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
        .size   y2r_u_IsFinishedSendingY, . - y2r_u_IsFinishedSendingY

@ FUN_0051c348
        .global y2r_u_GetPackageParameter
        .type   y2r_u_GetPackageParameter, %function
y2r_u_GetPackageParameter:
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
        .size   y2r_u_GetPackageParameter, . - y2r_u_GetPackageParameter

@ FUN_0051c390
        .global y2r_u_GetSpacialDithering
        .type   y2r_u_GetSpacialDithering, %function
y2r_u_GetSpacialDithering:
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
        .size   y2r_u_GetSpacialDithering, . - y2r_u_GetSpacialDithering

@ FUN_0051c3cc
        .global y2r_u_GetTransferEndEvent
        .type   y2r_u_GetTransferEndEvent, %function
y2r_u_GetTransferEndEvent:
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
        .size   y2r_u_GetTransferEndEvent, . - y2r_u_GetTransferEndEvent

@ FUN_0051c408
        .global y2r_u_IsFinishedReceiving
        .type   y2r_u_IsFinishedReceiving, %function
y2r_u_IsFinishedReceiving:
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
        .size   y2r_u_IsFinishedReceiving, . - y2r_u_IsFinishedReceiving

@ FUN_0051c444
        .global y2r_u_SetPackageParameter
        .type   y2r_u_SetPackageParameter, %function
y2r_u_SetPackageParameter:
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
        .size   y2r_u_SetPackageParameter, . - y2r_u_SetPackageParameter

@ FUN_0051c48c
        .global y2r_u_SetSpacialDithering
        .type   y2r_u_SetSpacialDithering, %function
y2r_u_SetSpacialDithering:
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
        .size   y2r_u_SetSpacialDithering, . - y2r_u_SetSpacialDithering

@ FUN_0051c4c8
        .global y2r_u_GetCoefficient
        .type   y2r_u_GetCoefficient, %function
y2r_u_GetCoefficient:
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
        .size   y2r_u_GetCoefficient, . - y2r_u_GetCoefficient

@ FUN_0051c51c
        .global y2r_u_GetTemporalDithering
        .type   y2r_u_GetTemporalDithering, %function
y2r_u_GetTemporalDithering:
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
        .size   y2r_u_GetTemporalDithering, . - y2r_u_GetTemporalDithering

@ FUN_0051c558
        .global y2r_u_IsFinishedSendingYuv
        .type   y2r_u_IsFinishedSendingYuv, %function
y2r_u_IsFinishedSendingYuv:
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
        .size   y2r_u_IsFinishedSendingYuv, . - y2r_u_IsFinishedSendingYuv

@ FUN_0051c594
        .global y2r_u_SetCoefficient
        .type   y2r_u_SetCoefficient, %function
y2r_u_SetCoefficient:
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
        .size   y2r_u_SetCoefficient, . - y2r_u_SetCoefficient

@ FUN_0051c5e8
        .global y2r_u_SetTemporalDithering
        .type   y2r_u_SetTemporalDithering, %function
y2r_u_SetTemporalDithering:
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
        .size   y2r_u_SetTemporalDithering, . - y2r_u_SetTemporalDithering

@ FUN_0051c624
        .global y2r_u_SetStandardCoefficient
        .type   y2r_u_SetStandardCoefficient, %function
y2r_u_SetStandardCoefficient:
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
        .size   y2r_u_SetStandardCoefficient, . - y2r_u_SetStandardCoefficient

@ FUN_0051c660
        .global y2r_u_GetTransferEndInterrupt
        .type   y2r_u_GetTransferEndInterrupt, %function
y2r_u_GetTransferEndInterrupt:
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
        .size   y2r_u_GetTransferEndInterrupt, . - y2r_u_GetTransferEndInterrupt

@ FUN_0051c69c
        .global y2r_u_SetTransferEndInterrupt
        .type   y2r_u_SetTransferEndInterrupt, %function
y2r_u_SetTransferEndInterrupt:
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
        .size   y2r_u_SetTransferEndInterrupt, . - y2r_u_SetTransferEndInterrupt

@ FUN_0051c760
        .global y2r_u_GetStandardCoefficient
        .type   y2r_u_GetStandardCoefficient, %function
y2r_u_GetStandardCoefficient:
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
        .size   y2r_u_GetStandardCoefficient, . - y2r_u_GetStandardCoefficient

@ FUN_0051c7c4
        .global y2r_u_GetAlpha
        .type   y2r_u_GetAlpha, %function
y2r_u_GetAlpha:
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
        .size   y2r_u_GetAlpha, . - y2r_u_GetAlpha

@ FUN_0051c800
        .global y2r_u_SetAlpha
        .type   y2r_u_SetAlpha, %function
y2r_u_SetAlpha:
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
        .size   y2r_u_SetAlpha, . - y2r_u_SetAlpha

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
        .global boss_CancelTask_51f1f8
        .type   boss_CancelTask_51f1f8, %function
boss_CancelTask_51f1f8:
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
        .size   boss_CancelTask_51f1f8, . - boss_CancelTask_51f1f8

@ FUN_0051f238
        .global boss_ReadNsData_51f238
        .type   boss_ReadNsData_51f238, %function
boss_ReadNsData_51f238:
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
        .size   boss_ReadNsData_51f238, . - boss_ReadNsData_51f238

@ FUN_0051f29c
        .global boss_DeleteNsData_51f29c
        .type   boss_DeleteNsData_51f29c, %function
boss_DeleteNsData_51f29c:
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
        .size   boss_DeleteNsData_51f29c, . - boss_DeleteNsData_51f29c

@ FUN_0051f2cc
        .global boss_GetAppIdList
        .type   boss_GetAppIdList, %function
boss_GetAppIdList:
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
        .size   boss_GetAppIdList, . - boss_GetAppIdList

@ FUN_0051f2f8
        .global boss_GetErrorCode_51f2f8
        .type   boss_GetErrorCode_51f2f8, %function
boss_GetErrorCode_51f2f8:
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
        .size   boss_GetErrorCode_51f2f8, . - boss_GetErrorCode_51f2f8

@ FUN_0051f33c
        .global boss_GetTaskCount_51f33c
        .type   boss_GetTaskCount_51f33c, %function
boss_GetTaskCount_51f33c:
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
        .size   boss_GetTaskCount_51f33c, . - boss_GetTaskCount_51f33c

@ FUN_0051f388
        .global boss_GetTaskError_51f388
        .type   boss_GetTaskError_51f388, %function
boss_GetTaskError_51f388:
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
        .size   boss_GetTaskError_51f388, . - boss_GetTaskError_51f388

@ FUN_0051f3dc
        .global boss_RegisterTask_51f3dc
        .type   boss_RegisterTask_51f3dc, %function
boss_RegisterTask_51f3dc:
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
        .size   boss_RegisterTask_51f3dc, . - boss_RegisterTask_51f3dc

@ FUN_0051f430
        .global boss_SendProperty_51f430
        .type   boss_SendProperty_51f430, %function
boss_SendProperty_51f430:
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
        .size   boss_SendProperty_51f430, . - boss_SendProperty_51f430

@ FUN_0051f47c
        .global boss_GetOptoutFlag_51f47c
        .type   boss_GetOptoutFlag_51f47c, %function
boss_GetOptoutFlag_51f47c:
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
        .size   boss_GetOptoutFlag_51f47c, . - boss_GetOptoutFlag_51f47c

@ FUN_0051f4b0
        .global boss_GetSprelayUrl
        .type   boss_GetSprelayUrl, %function
boss_GetSprelayUrl:
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
        .size   boss_GetSprelayUrl, . - boss_GetSprelayUrl

@ FUN_0051f4f0
        .global boss_GetStepIdList_51f4f0
        .type   boss_GetStepIdList_51f4f0, %function
boss_GetStepIdList_51f4f0:
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
        .size   boss_GetStepIdList_51f4f0, . - boss_GetStepIdList_51f4f0

@ FUN_0051f530
        .global boss_GetTaskIdList_51f530
        .type   boss_GetTaskIdList_51f530, %function
boss_GetTaskIdList_51f530:
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
        .size   boss_GetTaskIdList_51f530, . - boss_GetTaskIdList_51f530

@ FUN_0051f558
        .global boss_GetTaskResult_51f558
        .type   boss_GetTaskResult_51f558, %function
boss_GetTaskResult_51f558:
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
        .size   boss_GetTaskResult_51f558, . - boss_GetTaskResult_51f558

@ FUN_0051f5b8
        .global boss_GetTaskStatus_51f5b8
        .type   boss_GetTaskStatus_51f5b8, %function
boss_GetTaskStatus_51f5b8:
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
        .size   boss_GetTaskStatus_51f5b8, . - boss_GetTaskStatus_51f5b8

@ FUN_0051f618
        .global boss_SetOptoutFlag_51f618
        .type   boss_SetOptoutFlag_51f618, %function
boss_SetOptoutFlag_51f618:
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
        .size   boss_SetOptoutFlag_51f618, . - boss_SetOptoutFlag_51f618

@ FUN_0051f650
        .global boss_GetStorageInfo_51f650
        .type   boss_GetStorageInfo_51f650, %function
boss_GetStorageInfo_51f650:
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
        .size   boss_GetStorageInfo_51f650, . - boss_GetStorageInfo_51f650

@ FUN_0051f684
        .global boss_UnregisterTask_51f684
        .type   boss_UnregisterTask_51f684, %function
boss_UnregisterTask_51f684:
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
        .size   boss_UnregisterTask_51f684, . - boss_UnregisterTask_51f684

@ FUN_0051f6d0
        .global boss_ReceiveProperty_51f6d0
        .type   boss_ReceiveProperty_51f6d0, %function
boss_ReceiveProperty_51f6d0:
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
        .size   boss_ReceiveProperty_51f6d0, . - boss_ReceiveProperty_51f6d0

@ FUN_0051f728
        .global boss_SetStorageInfo_51f728
        .type   boss_SetStorageInfo_51f728, %function
boss_SetStorageInfo_51f728:
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
        .size   boss_SetStorageInfo_51f728, . - boss_SetStorageInfo_51f728

@ FUN_0051f768
        .global boss_UpdateTaskCount_51f768
        .type   boss_UpdateTaskCount_51f768, %function
boss_UpdateTaskCount_51f768:
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
        .size   boss_UpdateTaskCount_51f768, . - boss_UpdateTaskCount_51f768

@ FUN_0051f7a8
        .global boss_GetNsDataNewFlag_51f7a8
        .type   boss_GetNsDataNewFlag_51f7a8, %function
boss_GetNsDataNewFlag_51f7a8:
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
        .size   boss_GetNsDataNewFlag_51f7a8, . - boss_GetNsDataNewFlag_51f7a8

@ FUN_0051f7e4
        .global boss_GetPolicyListUrl
        .type   boss_GetPolicyListUrl, %function
boss_GetPolicyListUrl:
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
        .size   boss_GetPolicyListUrl, . - boss_GetPolicyListUrl

@ FUN_0051f824
        .global boss_SetNsDataNewFlag_51f824
        .type   boss_SetNsDataNewFlag_51f824, %function
boss_SetNsDataNewFlag_51f824:
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
        .size   boss_SetNsDataNewFlag_51f824, . - boss_SetNsDataNewFlag_51f824

@ FUN_0051f860
        .global boss_SetPolicyListUrl
        .type   boss_SetPolicyListUrl, %function
boss_SetPolicyListUrl:
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
        .size   boss_SetPolicyListUrl, . - boss_SetPolicyListUrl

@ FUN_0051f8a0
        .global boss_GetNewArrivalFlag_51f8a0
        .type   boss_GetNewArrivalFlag_51f8a0, %function
boss_GetNewArrivalFlag_51f8a0:
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
        .size   boss_GetNewArrivalFlag_51f8a0, . - boss_GetNewArrivalFlag_51f8a0

@ FUN_0051f8d4
        .global boss_GetPolicyListEnvId
        .type   boss_GetPolicyListEnvId, %function
boss_GetPolicyListEnvId:
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
        .size   boss_GetPolicyListEnvId, . - boss_GetPolicyListEnvId

@ FUN_0051f914
        .global boss_SendPropertyHandle_51f914
        .type   boss_SendPropertyHandle_51f914, %function
boss_SendPropertyHandle_51f914:
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
        .size   boss_SendPropertyHandle_51f914, . - boss_SendPropertyHandle_51f914

@ FUN_0051f958
        .global boss_SetPolicyListEnvId
        .type   boss_SetPolicyListEnvId, %function
boss_SetPolicyListEnvId:
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
        .size   boss_SetPolicyListEnvId, . - boss_SetPolicyListEnvId

@ FUN_0051f998
        .global boss_StartTaskImmediate_51f998
        .type   boss_StartTaskImmediate_51f998, %function
boss_StartTaskImmediate_51f998:
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
        .size   boss_StartTaskImmediate_51f998, . - boss_StartTaskImmediate_51f998

@ FUN_0051f9d8
        .global boss_GetNsDataHeaderInfo_51f9d8
        .type   boss_GetNsDataHeaderInfo_51f9d8, %function
boss_GetNsDataHeaderInfo_51f9d8:
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
        .size   boss_GetNsDataHeaderInfo_51f9d8, . - boss_GetNsDataHeaderInfo_51f9d8

@ FUN_0051fa2c
        .global boss_GetTaskFinishHandle_51fa2c
        .type   boss_GetTaskFinishHandle_51fa2c, %function
boss_GetTaskFinishHandle_51fa2c:
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
        .size   boss_GetTaskFinishHandle_51fa2c, . - boss_GetTaskFinishHandle_51fa2c

@ FUN_0051fa60
        .global boss_StartTaskPrivileged
        .type   boss_StartTaskPrivileged, %function
boss_StartTaskPrivileged:
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
        .size   boss_StartTaskPrivileged, . - boss_StartTaskPrivileged

@ FUN_0051faac
        .global boss_CancelTaskPrivileged
        .type   boss_CancelTaskPrivileged, %function
boss_CancelTaskPrivileged:
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
        .size   boss_CancelTaskPrivileged, . - boss_CancelTaskPrivileged

@ FUN_0051faf8
        .global boss_ReadNsDataPrivileged
        .type   boss_ReadNsDataPrivileged, %function
boss_ReadNsDataPrivileged:
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
        .size   boss_ReadNsDataPrivileged, . - boss_ReadNsDataPrivileged

@ FUN_0051fb6c
        .global boss_DeleteNsDataPrivileged
        .type   boss_DeleteNsDataPrivileged, %function
boss_DeleteNsDataPrivileged:
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
        .size   boss_DeleteNsDataPrivileged, . - boss_DeleteNsDataPrivileged

@ FUN_0051fba4
        .global boss_GetNsDataIdList2_51fba4
        .type   boss_GetNsDataIdList2_51fba4, %function
boss_GetNsDataIdList2_51fba4:
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
        .size   boss_GetNsDataIdList2_51fba4, . - boss_GetNsDataIdList2_51fba4

@ FUN_0051fc10
        .global boss_GetTaskQueryPrivileged
        .type   boss_GetTaskQueryPrivileged, %function
boss_GetTaskQueryPrivileged:
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
        .size   boss_GetTaskQueryPrivileged, . - boss_GetTaskQueryPrivileged

@ FUN_0051fc74
        .global boss_GetStepIdListPrivileged
        .type   boss_GetStepIdListPrivileged, %function
boss_GetStepIdListPrivileged:
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
        .size   boss_GetStepIdListPrivileged, . - boss_GetStepIdListPrivileged

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
        .global boss_GetTestModeAvailability
        .type   boss_GetTestModeAvailability, %function
boss_GetTestModeAvailability:
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
        .size   boss_GetTestModeAvailability, . - boss_GetTestModeAvailability

@ FUN_0051fd24
        .global boss_UnregisterTaskPrivileged
        .type   boss_UnregisterTaskPrivileged, %function
boss_UnregisterTaskPrivileged:
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
        .size   boss_UnregisterTaskPrivileged, . - boss_UnregisterTaskPrivileged

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
        .global boss_GetNsDataNewFlagPrivileged
        .type   boss_GetNsDataNewFlagPrivileged, %function
boss_GetNsDataNewFlagPrivileged:
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
        .size   boss_GetNsDataNewFlagPrivileged, . - boss_GetNsDataNewFlagPrivileged

@ FUN_0051fdf4
        .global boss_SetNsDataNewFlagPrivileged
        .type   boss_SetNsDataNewFlagPrivileged, %function
boss_SetNsDataNewFlagPrivileged:
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
        .size   boss_SetNsDataNewFlagPrivileged, . - boss_SetNsDataNewFlagPrivileged

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
        .global boss_StartTaskImmediatePrivileged
        .type   boss_StartTaskImmediatePrivileged, %function
boss_StartTaskImmediatePrivileged:
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
        .size   boss_StartTaskImmediatePrivileged, . - boss_StartTaskImmediatePrivileged

@ FUN_0051feb8
        .global boss_GetNsDataHeaderInfoPrivileged
        .type   boss_GetNsDataHeaderInfoPrivileged, %function
boss_GetNsDataHeaderInfoPrivileged:
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
        .size   boss_GetNsDataHeaderInfoPrivileged, . - boss_GetNsDataHeaderInfoPrivileged

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
        .global boss_StartBgImmediatePrivileged
        .type   boss_StartBgImmediatePrivileged, %function
boss_StartBgImmediatePrivileged:
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
        .size   boss_StartBgImmediatePrivileged, . - boss_StartBgImmediatePrivileged

@ FUN_0051ff98
        .global boss_GetTaskPriorityPrivileged
        .type   boss_GetTaskPriorityPrivileged, %function
boss_GetTaskPriorityPrivileged:
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
        .size   boss_GetTaskPriorityPrivileged, . - boss_GetTaskPriorityPrivileged

@ FUN_0051fff0
        .global boss_StartTask_51fff0
        .type   boss_StartTask_51fff0, %function
boss_StartTask_51fff0:
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
        .size   boss_StartTask_51fff0, . - boss_StartTask_51fff0

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
        .global boss_CancelTask_521a48
        .type   boss_CancelTask_521a48, %function
boss_CancelTask_521a48:
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
        .size   boss_CancelTask_521a48, . - boss_CancelTask_521a48

@ FUN_00521a88
        .global boss_ReadNsData_521a88
        .type   boss_ReadNsData_521a88, %function
boss_ReadNsData_521a88:
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
        .size   boss_ReadNsData_521a88, . - boss_ReadNsData_521a88

@ FUN_00521aec
        .global boss_DeleteNsData_521aec
        .type   boss_DeleteNsData_521aec, %function
boss_DeleteNsData_521aec:
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
        .size   boss_DeleteNsData_521aec, . - boss_DeleteNsData_521aec

@ FUN_00521b1c
        .global boss_GetErrorCode_521b1c
        .type   boss_GetErrorCode_521b1c, %function
boss_GetErrorCode_521b1c:
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
        .size   boss_GetErrorCode_521b1c, . - boss_GetErrorCode_521b1c

@ FUN_00521b60
        .global boss_GetTaskCount_521b60
        .type   boss_GetTaskCount_521b60, %function
boss_GetTaskCount_521b60:
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
        .size   boss_GetTaskCount_521b60, . - boss_GetTaskCount_521b60

@ FUN_00521bac
        .global boss_GetTaskError_521bac
        .type   boss_GetTaskError_521bac, %function
boss_GetTaskError_521bac:
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
        .size   boss_GetTaskError_521bac, . - boss_GetTaskError_521bac

@ FUN_00521c00
        .global boss_RegisterTask_521c00
        .type   boss_RegisterTask_521c00, %function
boss_RegisterTask_521c00:
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
        .size   boss_RegisterTask_521c00, . - boss_RegisterTask_521c00

@ FUN_00521c54
        .global boss_SendProperty_521c54
        .type   boss_SendProperty_521c54, %function
boss_SendProperty_521c54:
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
        .size   boss_SendProperty_521c54, . - boss_SendProperty_521c54

@ FUN_00521ca0
        .global boss_GetOptoutFlag_521ca0
        .type   boss_GetOptoutFlag_521ca0, %function
boss_GetOptoutFlag_521ca0:
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
        .size   boss_GetOptoutFlag_521ca0, . - boss_GetOptoutFlag_521ca0

@ FUN_00521cd4
        .global boss_GetStepIdList_521cd4
        .type   boss_GetStepIdList_521cd4, %function
boss_GetStepIdList_521cd4:
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
        .size   boss_GetStepIdList_521cd4, . - boss_GetStepIdList_521cd4

@ FUN_00521d14
        .global boss_GetTaskIdList_521d14
        .type   boss_GetTaskIdList_521d14, %function
boss_GetTaskIdList_521d14:
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
        .size   boss_GetTaskIdList_521d14, . - boss_GetTaskIdList_521d14

@ FUN_00521d3c
        .global boss_GetTaskResult_521d3c
        .type   boss_GetTaskResult_521d3c, %function
boss_GetTaskResult_521d3c:
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
        .size   boss_GetTaskResult_521d3c, . - boss_GetTaskResult_521d3c

@ FUN_00521d9c
        .global boss_GetTaskStatus_521d9c
        .type   boss_GetTaskStatus_521d9c, %function
boss_GetTaskStatus_521d9c:
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
        .size   boss_GetTaskStatus_521d9c, . - boss_GetTaskStatus_521d9c

@ FUN_00521dfc
        .global boss_SetOptoutFlag_521dfc
        .type   boss_SetOptoutFlag_521dfc, %function
boss_SetOptoutFlag_521dfc:
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
        .size   boss_SetOptoutFlag_521dfc, . - boss_SetOptoutFlag_521dfc

@ FUN_00521e34
        .global boss_GetStorageInfo_521e34
        .type   boss_GetStorageInfo_521e34, %function
boss_GetStorageInfo_521e34:
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
        .size   boss_GetStorageInfo_521e34, . - boss_GetStorageInfo_521e34

@ FUN_00521e68
        .global boss_UnregisterTask_521e68
        .type   boss_UnregisterTask_521e68, %function
boss_UnregisterTask_521e68:
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
        .size   boss_UnregisterTask_521e68, . - boss_UnregisterTask_521e68

@ FUN_00521eb4
        .global boss_ReceiveProperty_521eb4
        .type   boss_ReceiveProperty_521eb4, %function
boss_ReceiveProperty_521eb4:
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
        .size   boss_ReceiveProperty_521eb4, . - boss_ReceiveProperty_521eb4

@ FUN_00521f0c
        .global boss_SetStorageInfo_521f0c
        .type   boss_SetStorageInfo_521f0c, %function
boss_SetStorageInfo_521f0c:
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
        .size   boss_SetStorageInfo_521f0c, . - boss_SetStorageInfo_521f0c

@ FUN_00521f4c
        .global boss_UpdateTaskCount_521f4c
        .type   boss_UpdateTaskCount_521f4c, %function
boss_UpdateTaskCount_521f4c:
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
        .size   boss_UpdateTaskCount_521f4c, . - boss_UpdateTaskCount_521f4c

@ FUN_00521f8c
        .global boss_GetNsDataNewFlag_521f8c
        .type   boss_GetNsDataNewFlag_521f8c, %function
boss_GetNsDataNewFlag_521f8c:
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
        .size   boss_GetNsDataNewFlag_521f8c, . - boss_GetNsDataNewFlag_521f8c

@ FUN_00521fc8
        .global boss_SetNsDataNewFlag_521fc8
        .type   boss_SetNsDataNewFlag_521fc8, %function
boss_SetNsDataNewFlag_521fc8:
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
        .size   boss_SetNsDataNewFlag_521fc8, . - boss_SetNsDataNewFlag_521fc8

@ FUN_00522004
        .global boss_GetNewArrivalFlag_522004
        .type   boss_GetNewArrivalFlag_522004, %function
boss_GetNewArrivalFlag_522004:
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
        .size   boss_GetNewArrivalFlag_522004, . - boss_GetNewArrivalFlag_522004

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
        .global boss_SendPropertyHandle_522070
        .type   boss_SendPropertyHandle_522070, %function
boss_SendPropertyHandle_522070:
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
        .size   boss_SendPropertyHandle_522070, . - boss_SendPropertyHandle_522070

@ FUN_005220b4
        .global boss_StartTaskImmediate_5220b4
        .type   boss_StartTaskImmediate_5220b4, %function
boss_StartTaskImmediate_5220b4:
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
        .size   boss_StartTaskImmediate_5220b4, . - boss_StartTaskImmediate_5220b4

@ FUN_005220f4
        .global boss_GetNsDataHeaderInfo_5220f4
        .type   boss_GetNsDataHeaderInfo_5220f4, %function
boss_GetNsDataHeaderInfo_5220f4:
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
        .size   boss_GetNsDataHeaderInfo_5220f4, . - boss_GetNsDataHeaderInfo_5220f4

@ FUN_00522148
        .global boss_GetTaskFinishHandle_522148
        .type   boss_GetTaskFinishHandle_522148, %function
boss_GetTaskFinishHandle_522148:
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
        .size   boss_GetTaskFinishHandle_522148, . - boss_GetTaskFinishHandle_522148

@ FUN_0052217c
        .global boss_GetNsDataIdList2_52217c
        .type   boss_GetNsDataIdList2_52217c, %function
boss_GetNsDataIdList2_52217c:
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
        .size   boss_GetNsDataIdList2_52217c, . - boss_GetNsDataIdList2_52217c

@ FUN_005221e8
        .global boss_StartTask_5221e8
        .type   boss_StartTask_5221e8, %function
boss_StartTask_5221e8:
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
        .size   boss_StartTask_5221e8, . - boss_StartTask_5221e8

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
        .global APT_U_GetAttribute
        .type   APT_U_GetAttribute, %function
APT_U_GetAttribute:
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
        .size   APT_U_GetAttribute, . - APT_U_GetAttribute

@ FUN_00536d94
        .global APT_U_SendDspSleep
        .type   APT_U_SendDspSleep, %function
APT_U_SendDspSleep:
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
        .size   APT_U_SendDspSleep, . - APT_U_SendDspSleep

@ FUN_00536dd8
        .global APT_U_GetAppletInfo
        .type   APT_U_GetAppletInfo, %function
APT_U_GetAppletInfo:
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
        .size   APT_U_GetAppletInfo, . - APT_U_GetAppletInfo

@ FUN_00536e48
        .global APT_U_GetSharedFont
        .type   APT_U_GetSharedFont, %function
APT_U_GetSharedFont:
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
        .size   APT_U_GetSharedFont, . - APT_U_GetSharedFont

@ FUN_00536e90
        .global APT_U_LeaveHomeMenu
        .type   APT_U_LeaveHomeMenu, %function
APT_U_LeaveHomeMenu:
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
        .size   APT_U_LeaveHomeMenu, . - APT_U_LeaveHomeMenu

@ FUN_00536ee4
        .global APT_U_SendDspWakeUp
        .type   APT_U_SendDspWakeUp, %function
APT_U_SendDspWakeUp:
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
        .size   APT_U_SendDspWakeUp, . - APT_U_SendDspWakeUp

@ FUN_00536f28
        .global APT_U_GetCaptureInfo
        .type   APT_U_GetCaptureInfo, %function
APT_U_GetCaptureInfo:
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
        .size   APT_U_GetCaptureInfo, . - APT_U_GetCaptureInfo

@ FUN_00536f84
        .global APT_U_GetProgramInfo
        .type   APT_U_GetProgramInfo, %function
APT_U_GetProgramInfo:
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
        .size   APT_U_GetProgramInfo, . - APT_U_GetProgramInfo

@ FUN_00536fe4
        .global APT_U_JumpToHomeMenu
        .type   APT_U_JumpToHomeMenu, %function
APT_U_JumpToHomeMenu:
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
        .size   APT_U_JumpToHomeMenu, . - APT_U_JumpToHomeMenu

@ FUN_00537038
        .global APT_U_LoadSysMenuArg
        .type   APT_U_LoadSysMenuArg, %function
APT_U_LoadSysMenuArg:
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
        .size   APT_U_LoadSysMenuArg, . - APT_U_LoadSysMenuArg

@ FUN_00537094
        .global APT_U_SendDeliverArg
        .type   APT_U_SendDeliverArg, %function
APT_U_SendDeliverArg:
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
        .size   APT_U_SendDeliverArg, . - APT_U_SendDeliverArg

@ FUN_005370f8
        .global APT_U_StoreSysMenuArg
        .type   APT_U_StoreSysMenuArg, %function
APT_U_StoreSysMenuArg:
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
        .size   APT_U_StoreSysMenuArg, . - APT_U_StoreSysMenuArg

@ FUN_00537144
        .global APT_U_GetAppletManInfo
        .type   APT_U_GetAppletManInfo, %function
APT_U_GetAppletManInfo:
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
        .size   APT_U_GetAppletManInfo, . - APT_U_GetAppletManInfo

@ FUN_005371b4
        .global APT_U_StartApplication
        .type   APT_U_StartApplication, %function
APT_U_StartApplication:
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
        .size   APT_U_StartApplication, . - APT_U_StartApplication

@ FUN_00537220
        .global APT_U_CancelApplication
        .type   APT_U_CancelApplication, %function
APT_U_CancelApplication:
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
        .size   APT_U_CancelApplication, . - APT_U_CancelApplication

@ FUN_00537250
        .global APT_U_CloseSystemApplet
        .type   APT_U_CloseSystemApplet, %function
APT_U_CloseSystemApplet:
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
        .size   APT_U_CloseSystemApplet, . - APT_U_CloseSystemApplet

@ FUN_005372a4
        .global APT_U_DoApplicationJump
        .type   APT_U_DoApplicationJump, %function
APT_U_DoApplicationJump:
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
        .size   APT_U_DoApplicationJump, . - APT_U_DoApplicationJump

@ FUN_00537308
        .global APT_U_JumpToApplication
        .type   APT_U_JumpToApplication, %function
APT_U_JumpToApplication:
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
        .size   APT_U_JumpToApplication, . - APT_U_JumpToApplication

@ FUN_0053735c
        .global APT_U_ReceiveDeliverArg
        .type   APT_U_ReceiveDeliverArg, %function
APT_U_ReceiveDeliverArg:
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
        .size   APT_U_ReceiveDeliverArg, . - APT_U_ReceiveDeliverArg

@ FUN_005373e4
        .global APT_U_StartSystemApplet
        .type   APT_U_StartSystemApplet, %function
APT_U_StartSystemApplet:
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
        .size   APT_U_StartSystemApplet, . - APT_U_StartSystemApplet

@ FUN_00537434
        .global APT_U_WakeupApplication
        .type   APT_U_WakeupApplication, %function
APT_U_WakeupApplication:
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
        .size   APT_U_WakeupApplication, . - APT_U_WakeupApplication

@ FUN_00537464
        .global APT_U_CloseLibraryApplet
        .type   APT_U_CloseLibraryApplet, %function
APT_U_CloseLibraryApplet:
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
        .size   APT_U_CloseLibraryApplet, . - APT_U_CloseLibraryApplet

@ FUN_005374b8
        .global APT_U_GetStartupArgument
        .type   APT_U_GetStartupArgument, %function
APT_U_GetStartupArgument:
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
        .size   APT_U_GetStartupArgument, . - APT_U_GetStartupArgument

@ FUN_00537524
        .global APT_U_HardwareResetAsync
        .type   APT_U_HardwareResetAsync, %function
APT_U_HardwareResetAsync:
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
        .size   APT_U_HardwareResetAsync, . - APT_U_HardwareResetAsync

@ FUN_00537554
        .global APT_U_StartLibraryApplet
        .type   APT_U_StartLibraryApplet, %function
APT_U_StartLibraryApplet:
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
        .size   APT_U_StartLibraryApplet, . - APT_U_StartLibraryApplet

@ FUN_005375a4
        .global APT_U_GetPreparationState
        .type   APT_U_GetPreparationState, %function
APT_U_GetPreparationState:
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
        .size   APT_U_GetPreparationState, . - APT_U_GetPreparationState

@ FUN_005375e0
        .global APT_U_LeaveResidentApplet
        .type   APT_U_LeaveResidentApplet, %function
APT_U_LeaveResidentApplet:
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
        .size   APT_U_LeaveResidentApplet, . - APT_U_LeaveResidentApplet

@ FUN_00537634
        .global APT_U_SetFatalErrDispMode
        .type   APT_U_SetFatalErrDispMode, %function
APT_U_SetFatalErrDispMode:
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
        .size   APT_U_SetFatalErrDispMode, . - APT_U_SetFatalErrDispMode

@ FUN_00537664
        .global APT_U_SetPreparationState
        .type   APT_U_SetPreparationState, %function
APT_U_SetPreparationState:
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
        .size   APT_U_SetPreparationState, . - APT_U_SetPreparationState

@ FUN_005376a0
        .global APT_U_StartNewestHomeMenu
        .type   APT_U_StartNewestHomeMenu, %function
APT_U_StartNewestHomeMenu:
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
        .size   APT_U_StartNewestHomeMenu, . - APT_U_StartNewestHomeMenu

@ FUN_005376f4
        .global APT_U_StartResidentApplet
        .type   APT_U_StartResidentApplet, %function
APT_U_StartResidentApplet:
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
        .size   APT_U_StartResidentApplet, . - APT_U_StartResidentApplet

@ FUN_00537748
        .global APT_U_GetAppletProgramInfo
        .type   APT_U_GetAppletProgramInfo, %function
APT_U_GetAppletProgramInfo:
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
        .size   APT_U_GetAppletProgramInfo, . - APT_U_GetAppletProgramInfo

@ FUN_0053778c
        .global APT_U_MapProgramIdForDebug
        .type   APT_U_MapProgramIdForDebug, %function
APT_U_MapProgramIdForDebug:
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
        .size   APT_U_MapProgramIdForDebug, . - APT_U_MapProgramIdForDebug

@ FUN_005377c8
        .global APT_U_PreloadLibraryApplet
        .type   APT_U_PreloadLibraryApplet, %function
APT_U_PreloadLibraryApplet:
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
        .size   APT_U_PreloadLibraryApplet, . - APT_U_PreloadLibraryApplet

@ FUN_00537800
        .global APT_U_CountRegisteredApplet
        .type   APT_U_CountRegisteredApplet, %function
APT_U_CountRegisteredApplet:
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
        .size   APT_U_CountRegisteredApplet, . - APT_U_CountRegisteredApplet

@ FUN_0053783c
        .global APT_U_GetWirelessRebootInfo
        .type   APT_U_GetWirelessRebootInfo, %function
APT_U_GetWirelessRebootInfo:
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
        .size   APT_U_GetWirelessRebootInfo, . - APT_U_GetWirelessRebootInfo

@ FUN_00537898
        .global APT_U_PreloadResidentApplet
        .type   APT_U_PreloadResidentApplet, %function
APT_U_PreloadResidentApplet:
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
        .size   APT_U_PreloadResidentApplet, . - APT_U_PreloadResidentApplet

@ FUN_005378d0
        .global APT_U_SendCaptureBufferInfo
        .type   APT_U_SendCaptureBufferInfo, %function
APT_U_SendCaptureBufferInfo:
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
        .size   APT_U_SendCaptureBufferInfo, . - APT_U_SendCaptureBufferInfo

@ FUN_0053791c
        .global APT_U_PrepareToLeaveHomeMenu
        .type   APT_U_PrepareToLeaveHomeMenu, %function
APT_U_PrepareToLeaveHomeMenu:
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
        .size   APT_U_PrepareToLeaveHomeMenu, . - APT_U_PrepareToLeaveHomeMenu

@ FUN_0053794c
        .global APT_U_GetLastSignaledAppletId
        .type   APT_U_GetLastSignaledAppletId, %function
APT_U_GetLastSignaledAppletId:
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
        .size   APT_U_GetLastSignaledAppletId, . - APT_U_GetLastSignaledAppletId

@ FUN_00537988
        .global APT_U_OrderToCloseApplication
        .type   APT_U_OrderToCloseApplication, %function
APT_U_OrderToCloseApplication:
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
        .size   APT_U_OrderToCloseApplication, . - APT_U_OrderToCloseApplication

@ FUN_005379b8
        .global APT_U_PrepareToJumpToHomeMenu
        .type   APT_U_PrepareToJumpToHomeMenu, %function
APT_U_PrepareToJumpToHomeMenu:
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
        .size   APT_U_PrepareToJumpToHomeMenu, . - APT_U_PrepareToJumpToHomeMenu

@ FUN_005379e8
        .global APT_U_OrderToCloseSystemApplet
        .type   APT_U_OrderToCloseSystemApplet, %function
APT_U_OrderToCloseSystemApplet:
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
        .size   APT_U_OrderToCloseSystemApplet, . - APT_U_OrderToCloseSystemApplet

@ FUN_00537a18
        .global APT_U_ReceiveCaptureBufferInfo
        .type   APT_U_ReceiveCaptureBufferInfo, %function
APT_U_ReceiveCaptureBufferInfo:
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
        .size   APT_U_ReceiveCaptureBufferInfo, . - APT_U_ReceiveCaptureBufferInfo

@ FUN_00537a80
        .global APT_U_PrepareToStartApplication
        .type   APT_U_PrepareToStartApplication, %function
APT_U_PrepareToStartApplication:
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
        .size   APT_U_PrepareToStartApplication, . - APT_U_PrepareToStartApplication

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
        .global APT_U_PrepareToCloseSystemApplet
        .type   APT_U_PrepareToCloseSystemApplet, %function
APT_U_PrepareToCloseSystemApplet:
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
        .size   APT_U_PrepareToCloseSystemApplet, . - APT_U_PrepareToCloseSystemApplet

@ FUN_00537b48
        .global APT_U_PrepareToDoApplicationJump
        .type   APT_U_PrepareToDoApplicationJump, %function
APT_U_PrepareToDoApplicationJump:
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
        .size   APT_U_PrepareToDoApplicationJump, . - APT_U_PrepareToDoApplicationJump

@ FUN_00537b94
        .global APT_U_PrepareToJumpToApplication
        .type   APT_U_PrepareToJumpToApplication, %function
APT_U_PrepareToJumpToApplication:
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
        .size   APT_U_PrepareToJumpToApplication, . - APT_U_PrepareToJumpToApplication

@ FUN_00537bd0
        .global APT_U_PrepareToStartSystemApplet
        .type   APT_U_PrepareToStartSystemApplet, %function
APT_U_PrepareToStartSystemApplet:
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
        .size   APT_U_PrepareToStartSystemApplet, . - APT_U_PrepareToStartSystemApplet

@ FUN_00537c08
        .global APT_U_SetApplicationCpuTimeLimit
        .type   APT_U_SetApplicationCpuTimeLimit, %function
APT_U_SetApplicationCpuTimeLimit:
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
        .size   APT_U_SetApplicationCpuTimeLimit, . - APT_U_SetApplicationCpuTimeLimit

@ FUN_00537c40
        .global APT_U_PrepareToCloseLibraryApplet
        .type   APT_U_PrepareToCloseLibraryApplet, %function
APT_U_PrepareToCloseLibraryApplet:
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
        .size   APT_U_PrepareToCloseLibraryApplet, . - APT_U_PrepareToCloseLibraryApplet

@ FUN_00537c90
        .global APT_U_PrepareToStartLibraryApplet
        .type   APT_U_PrepareToStartLibraryApplet, %function
APT_U_PrepareToStartLibraryApplet:
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
        .size   APT_U_PrepareToStartLibraryApplet, . - APT_U_PrepareToStartLibraryApplet

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
        .global APT_U_SetHomeMenuAppletIdForDebug
        .type   APT_U_SetHomeMenuAppletIdForDebug, %function
APT_U_SetHomeMenuAppletIdForDebug:
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
        .size   APT_U_SetHomeMenuAppletIdForDebug, . - APT_U_SetHomeMenuAppletIdForDebug

@ FUN_00537d44
        .global APT_U_PrepareToLeaveResidentApplet
        .type   APT_U_PrepareToLeaveResidentApplet, %function
APT_U_PrepareToLeaveResidentApplet:
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
        .size   APT_U_PrepareToLeaveResidentApplet, . - APT_U_PrepareToLeaveResidentApplet

@ FUN_00537d80
        .global APT_U_PrepareToStartNewestHomeMenu
        .type   APT_U_PrepareToStartNewestHomeMenu, %function
APT_U_PrepareToStartNewestHomeMenu:
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
        .size   APT_U_PrepareToStartNewestHomeMenu, . - APT_U_PrepareToStartNewestHomeMenu

@ FUN_00537db0
        .global APT_U_PrepareToStartResidentApplet
        .type   APT_U_PrepareToStartResidentApplet, %function
APT_U_PrepareToStartResidentApplet:
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
        .size   APT_U_PrepareToStartResidentApplet, . - APT_U_PrepareToStartResidentApplet

@ FUN_00537de8
        .global APT_U_FinishPreloadingLibraryApplet
        .type   APT_U_FinishPreloadingLibraryApplet, %function
APT_U_FinishPreloadingLibraryApplet:
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
        .size   APT_U_FinishPreloadingLibraryApplet, . - APT_U_FinishPreloadingLibraryApplet

@ FUN_00537e20
        .global APT_U_GetProgramIdOnApplicationJump
        .type   APT_U_GetProgramIdOnApplicationJump, %function
APT_U_GetProgramIdOnApplicationJump:
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
        .size   APT_U_GetProgramIdOnApplicationJump, . - APT_U_GetProgramIdOnApplicationJump

@ FUN_00537e80
        .global APT_U_Wrap
        .type   APT_U_Wrap, %function
APT_U_Wrap:
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
        .size   APT_U_Wrap, . - APT_U_Wrap

@ FUN_00537ee4
        .global APT_U_Wrap1
        .type   APT_U_Wrap1, %function
APT_U_Wrap1:
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
        .size   APT_U_Wrap1, . - APT_U_Wrap1

@ FUN_00537f48
        .global APT_U_Reboot
        .type   APT_U_Reboot, %function
APT_U_Reboot:
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
        .size   APT_U_Reboot, . - APT_U_Reboot

@ FUN_00537fa0
        .global APT_U_Unwrap
        .type   APT_U_Unwrap, %function
APT_U_Unwrap:
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
        .size   APT_U_Unwrap, . - APT_U_Unwrap

@ FUN_00538004
        .global APT_U_Unwrap1
        .type   APT_U_Unwrap1, %function
APT_U_Unwrap1:
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
        .size   APT_U_Unwrap1, . - APT_U_Unwrap1

@ FUN_00538068
        .global APT_U_Finalize
        .type   APT_U_Finalize, %function
APT_U_Finalize:
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
        .size   APT_U_Finalize, . - APT_U_Finalize

@ FUN_005380a0
        .global APT_U_DebugFunc
        .type   APT_U_DebugFunc, %function
APT_U_DebugFunc:
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
        .size   APT_U_DebugFunc, . - APT_U_DebugFunc

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
        .global cam_u_IsTrimming
        .type   cam_u_IsTrimming, %function
cam_u_IsTrimming:
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
        .size   cam_u_IsTrimming, . - cam_u_IsTrimming

@ FUN_00539330
        .global cam_u_ClearBuffer
        .type   cam_u_ClearBuffer, %function
cam_u_ClearBuffer:
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
        .size   cam_u_ClearBuffer, . - cam_u_ClearBuffer

@ FUN_0053936c
        .global cam_u_GetMaxBytes
        .type   cam_u_GetMaxBytes, %function
cam_u_GetMaxBytes:
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
        .size   cam_u_GetMaxBytes, . - cam_u_GetMaxBytes

@ FUN_005393c0
        .global cam_u_GetMaxLines
        .type   cam_u_GetMaxLines, %function
cam_u_GetMaxLines:
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
        .size   cam_u_GetMaxLines, . - cam_u_GetMaxLines

@ FUN_00539414
        .global cam_u_SetContrast
        .type   cam_u_SetContrast, %function
cam_u_SetContrast:
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
        .size   cam_u_SetContrast, . - cam_u_SetContrast

@ FUN_0053945c
        .global cam_u_SetExposure
        .type   cam_u_SetExposure, %function
cam_u_SetExposure:
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
        .size   cam_u_SetExposure, . - cam_u_SetExposure

@ FUN_005394a4
        .global cam_u_SetTrimming
        .type   cam_u_SetTrimming, %function
cam_u_SetTrimming:
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
        .size   cam_u_SetTrimming, . - cam_u_SetTrimming

@ FUN_005394ec
        .global cam_u_StopCapture
        .type   cam_u_StopCapture, %function
cam_u_StopCapture:
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
        .size   cam_u_StopCapture, . - cam_u_StopCapture

@ FUN_00539528
        .global cam_u_SetFrameRate
        .type   cam_u_SetFrameRate, %function
cam_u_SetFrameRate:
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
        .size   cam_u_SetFrameRate, . - cam_u_SetFrameRate

@ FUN_00539570
        .global cam_u_SetPhotoMode
        .type   cam_u_SetPhotoMode, %function
cam_u_SetPhotoMode:
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
        .size   cam_u_SetPhotoMode, . - cam_u_SetPhotoMode

@ FUN_005395b8
        .global cam_u_SetReceiving
        .type   cam_u_SetReceiving, %function
cam_u_SetReceiving:
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
        .size   cam_u_SetReceiving, . - cam_u_SetReceiving

@ FUN_00539620
        .global cam_u_SetSharpness
        .type   cam_u_SetSharpness, %function
cam_u_SetSharpness:
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
        .size   cam_u_SetSharpness, . - cam_u_SetSharpness

@ FUN_00539668
        .global cam_u_StartCapture
        .type   cam_u_StartCapture, %function
cam_u_StartCapture:
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
        .size   cam_u_StartCapture, . - cam_u_StartCapture

@ FUN_005396a4
        .global cam_u_SetDetailSize
        .type   cam_u_SetDetailSize, %function
cam_u_SetDetailSize:
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
        .size   cam_u_SetDetailSize, . - cam_u_SetDetailSize

@ FUN_0053971c
        .global cam_u_SwitchContext
        .type   cam_u_SwitchContext, %function
cam_u_SwitchContext:
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
        .size   cam_u_SwitchContext, . - cam_u_SwitchContext

@ FUN_00539764
        .global cam_u_DriverFinalize
        .type   cam_u_DriverFinalize, %function
cam_u_DriverFinalize:
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
        .size   cam_u_DriverFinalize, . - cam_u_DriverFinalize

@ FUN_00539794
        .global cam_u_IsAutoExposure
        .type   cam_u_IsAutoExposure, %function
cam_u_IsAutoExposure:
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
        .size   cam_u_IsAutoExposure, . - cam_u_IsAutoExposure

@ FUN_005397e0
        .global cam_u_SetNoiseFilter
        .type   cam_u_SetNoiseFilter, %function
cam_u_SetNoiseFilter:
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
        .size   cam_u_SetNoiseFilter, . - cam_u_SetNoiseFilter

@ FUN_00539828
        .global cam_u_SetAutoExposure
        .type   cam_u_SetAutoExposure, %function
cam_u_SetAutoExposure:
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
        .size   cam_u_SetAutoExposure, . - cam_u_SetAutoExposure

@ FUN_00539870
        .global cam_u_SetOutputFormat
        .type   cam_u_SetOutputFormat, %function
cam_u_SetOutputFormat:
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
        .size   cam_u_SetOutputFormat, . - cam_u_SetOutputFormat

@ FUN_005398c0
        .global cam_u_SetWhiteBalance
        .type   cam_u_SetWhiteBalance, %function
cam_u_SetWhiteBalance:
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
        .size   cam_u_SetWhiteBalance, . - cam_u_SetWhiteBalance

@ FUN_00539908
        .global cam_u_DriverInitialize
        .type   cam_u_DriverInitialize, %function
cam_u_DriverInitialize:
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
        .size   cam_u_DriverInitialize, . - cam_u_DriverInitialize

@ FUN_00539938
        .global cam_u_GetTransferBytes
        .type   cam_u_GetTransferBytes, %function
cam_u_GetTransferBytes:
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
        .size   cam_u_GetTransferBytes, . - cam_u_GetTransferBytes

@ FUN_00539984
        .global cam_u_PlayShutterSound
        .type   cam_u_PlayShutterSound, %function
cam_u_PlayShutterSound:
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
        .size   cam_u_PlayShutterSound, . - cam_u_PlayShutterSound

@ FUN_005399c0
        .global cam_u_SetTransferBytes
        .type   cam_u_SetTransferBytes, %function
cam_u_SetTransferBytes:
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
        .size   cam_u_SetTransferBytes, . - cam_u_SetTransferBytes

@ FUN_00539a14
        .global cam_u_SetTransferLines
        .type   cam_u_SetTransferLines, %function
cam_u_SetTransferLines:
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
        .size   cam_u_SetTransferLines, . - cam_u_SetTransferLines

@ FUN_00539a6c
        .global cam_u_WriteRegisterI2c
        .type   cam_u_WriteRegisterI2c, %function
cam_u_WriteRegisterI2c:
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
        .size   cam_u_WriteRegisterI2c, . - cam_u_WriteRegisterI2c

@ FUN_00539abc
        .global cam_u_GetTrimmingParams
        .type   cam_u_GetTrimmingParams, %function
cam_u_GetTrimmingParams:
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
        .size   cam_u_GetTrimmingParams, . - cam_u_GetTrimmingParams

@ FUN_00539b28
        .global cam_u_SetLensCorrection
        .type   cam_u_SetLensCorrection, %function
cam_u_SetLensCorrection:
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
        .size   cam_u_SetLensCorrection, . - cam_u_SetLensCorrection

@ FUN_00539b70
        .global cam_u_SetTrimmingParams
        .type   cam_u_SetTrimmingParams, %function
cam_u_SetTrimmingParams:
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
        .size   cam_u_SetTrimmingParams, . - cam_u_SetTrimmingParams

@ FUN_00539bd0
        .global cam_u_IsAutoWhiteBalance
        .type   cam_u_IsAutoWhiteBalance, %function
cam_u_IsAutoWhiteBalance:
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
        .size   cam_u_IsAutoWhiteBalance, . - cam_u_IsAutoWhiteBalance

@ FUN_00539c1c
        .global cam_u_IsFinishedReceiving
        .type   cam_u_IsFinishedReceiving, %function
cam_u_IsFinishedReceiving:
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
        .size   cam_u_IsFinishedReceiving, . - cam_u_IsFinishedReceiving

@ FUN_00539c68
        .global cam_u_SetAutoWhiteBalance
        .type   cam_u_SetAutoWhiteBalance, %function
cam_u_SetAutoWhiteBalance:
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
        .size   cam_u_SetAutoWhiteBalance, . - cam_u_SetAutoWhiteBalance

@ FUN_00539cb0
        .global cam_u_WriteMcuVariableI2c
        .type   cam_u_WriteMcuVariableI2c, %function
cam_u_WriteMcuVariableI2c:
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
        .size   cam_u_WriteMcuVariableI2c, . - cam_u_WriteMcuVariableI2c

@ FUN_00539d00
        .global cam_u_GetLatestVsyncTiming
        .type   cam_u_GetLatestVsyncTiming, %function
cam_u_GetLatestVsyncTiming:
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
        .size   cam_u_GetLatestVsyncTiming, . - cam_u_GetLatestVsyncTiming

@ FUN_00539d68
        .global cam_u_SetAutoExposureWindow
        .type   cam_u_SetAutoExposureWindow, %function
cam_u_SetAutoExposureWindow:
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
        .size   cam_u_SetAutoExposureWindow, . - cam_u_SetAutoExposureWindow

@ FUN_00539dc8
        .global cam_u_GetVsyncInterruptEvent
        .type   cam_u_GetVsyncInterruptEvent, %function
cam_u_GetVsyncInterruptEvent:
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
        .size   cam_u_GetVsyncInterruptEvent, . - cam_u_GetVsyncInterruptEvent

@ FUN_00539e14
        .global cam_u_SynchronizeVsyncTiming
        .type   cam_u_SynchronizeVsyncTiming, %function
cam_u_SynchronizeVsyncTiming:
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
        .size   cam_u_SynchronizeVsyncTiming, . - cam_u_SynchronizeVsyncTiming

@ FUN_00539e5c
        .global cam_u_SetTrimmingParamsCenter
        .type   cam_u_SetTrimmingParamsCenter, %function
cam_u_SetTrimmingParamsCenter:
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
        .size   cam_u_SetTrimmingParamsCenter, . - cam_u_SetTrimmingParamsCenter

@ FUN_00539ebc
        .global cam_u_PlayShutterSoundWithWave
        .type   cam_u_PlayShutterSoundWithWave, %function
cam_u_PlayShutterSoundWithWave:
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
        .size   cam_u_PlayShutterSoundWithWave, . - cam_u_PlayShutterSoundWithWave

@ FUN_00539f38
        .global cam_u_ReadRegisterI2cExclusive
        .type   cam_u_ReadRegisterI2cExclusive, %function
cam_u_ReadRegisterI2cExclusive:
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
        .size   cam_u_ReadRegisterI2cExclusive, . - cam_u_ReadRegisterI2cExclusive

@ FUN_00539f8c
        .global cam_u_SetAutoWhiteBalanceWindow
        .type   cam_u_SetAutoWhiteBalanceWindow, %function
cam_u_SetAutoWhiteBalanceWindow:
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
        .size   cam_u_SetAutoWhiteBalanceWindow, . - cam_u_SetAutoWhiteBalanceWindow

@ FUN_00539fec
        .global cam_u_ReadMcuVariableI2cExclusive
        .type   cam_u_ReadMcuVariableI2cExclusive, %function
cam_u_ReadMcuVariableI2cExclusive:
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
        .size   cam_u_ReadMcuVariableI2cExclusive, . - cam_u_ReadMcuVariableI2cExclusive

@ FUN_0053a040
        .global cam_u_GetBufferErrorInterruptEvent
        .type   cam_u_GetBufferErrorInterruptEvent, %function
cam_u_GetBufferErrorInterruptEvent:
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
        .size   cam_u_GetBufferErrorInterruptEvent, . - cam_u_GetBufferErrorInterruptEvent

@ FUN_0053a08c
        .global cam_u_SetBrightnessSynchronization
        .type   cam_u_SetBrightnessSynchronization, %function
cam_u_SetBrightnessSynchronization:
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
        .size   cam_u_SetBrightnessSynchronization, . - cam_u_SetBrightnessSynchronization

@ FUN_0053a0c8
        .global cam_u_SetWhiteBalanceWithoutBaseUp
        .type   cam_u_SetWhiteBalanceWithoutBaseUp, %function
cam_u_SetWhiteBalanceWithoutBaseUp:
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
        .size   cam_u_SetWhiteBalanceWithoutBaseUp, . - cam_u_SetWhiteBalanceWithoutBaseUp

@ FUN_0053a110
        .global cam_u_GetImageQualityCalibrationData
        .type   cam_u_GetImageQualityCalibrationData, %function
cam_u_GetImageQualityCalibrationData:
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
        .size   cam_u_GetImageQualityCalibrationData, . - cam_u_GetImageQualityCalibrationData

@ FUN_0053a174
        .global cam_u_GetStereoCameraCalibrationData
        .type   cam_u_GetStereoCameraCalibrationData, %function
cam_u_GetStereoCameraCalibrationData:
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
        .size   cam_u_GetStereoCameraCalibrationData, . - cam_u_GetStereoCameraCalibrationData

@ FUN_0053a1dc
        .global cam_u_SetImageQualityCalibrationData
        .type   cam_u_SetImageQualityCalibrationData, %function
cam_u_SetImageQualityCalibrationData:
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
        .size   cam_u_SetImageQualityCalibrationData, . - cam_u_SetImageQualityCalibrationData

@ FUN_0053a284
        .global cam_u_SetStereoCameraCalibrationData
        .type   cam_u_SetStereoCameraCalibrationData, %function
cam_u_SetStereoCameraCalibrationData:
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
        .size   cam_u_SetStereoCameraCalibrationData, . - cam_u_SetStereoCameraCalibrationData

@ FUN_0053a2ec
        .global cam_u_GetSuitableY2rStandardCoefficient
        .type   cam_u_GetSuitableY2rStandardCoefficient, %function
cam_u_GetSuitableY2rStandardCoefficient:
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
        .size   cam_u_GetSuitableY2rStandardCoefficient, . - cam_u_GetSuitableY2rStandardCoefficient

@ FUN_0053a328
        .global cam_u_SetPackageParameterWithoutContext
        .type   cam_u_SetPackageParameterWithoutContext, %function
cam_u_SetPackageParameterWithoutContext:
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
        .size   cam_u_SetPackageParameterWithoutContext, . - cam_u_SetPackageParameterWithoutContext

@ FUN_0053a380
        .global cam_u_SetPackageParameterWithContextDetail
        .type   cam_u_SetPackageParameterWithContextDetail, %function
cam_u_SetPackageParameterWithContextDetail:
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
        .size   cam_u_SetPackageParameterWithContextDetail, . - cam_u_SetPackageParameterWithContextDetail

@ FUN_0053a3d4
        .global cam_u_IsBusy
        .type   cam_u_IsBusy, %function
cam_u_IsBusy:
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
        .size   cam_u_IsBusy, . - cam_u_IsBusy

@ FUN_0053a420
        .global cam_u_SetSize
        .type   cam_u_SetSize, %function
cam_u_SetSize:
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
        .size   cam_u_SetSize, . - cam_u_SetSize

@ FUN_0053a470
        .global cam_u_FlipImage
        .type   cam_u_FlipImage, %function
cam_u_FlipImage:
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
        .size   cam_u_FlipImage, . - cam_u_FlipImage

@ FUN_0053a4c0
        .global cam_u_SetEffect
        .type   cam_u_SetEffect, %function
cam_u_SetEffect:
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
        .size   cam_u_SetEffect, . - cam_u_SetEffect

@ FUN_0053b600
        .global frd_a_HasLoggedIn
        .type   frd_a_HasLoggedIn, %function
frd_a_HasLoggedIn:
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
        .size   frd_a_HasLoggedIn, . - frd_a_HasLoggedIn

@ FUN_0053b63c
        .global frd_a_GetFriendMii
        .type   frd_a_GetFriendMii, %function
frd_a_GetFriendMii:
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
        .size   frd_a_GetFriendMii, . - frd_a_GetFriendMii

@ FUN_0053b6dc
        .global frd_a_GetMyProfile
        .type   frd_a_GetMyProfile, %function
frd_a_GetMyProfile:
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
        .size   frd_a_GetMyProfile, . - frd_a_GetMyProfile

@ FUN_0053b718
        .global frd_a_RemoveFriend
        .type   frd_a_RemoveFriend, %function
frd_a_RemoveFriend:
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
        .size   frd_a_RemoveFriend, . - frd_a_RemoveFriend

@ FUN_0053b760
        .global frd_a_GetFriendInfo
        .type   frd_a_GetFriendInfo, %function
frd_a_GetFriendInfo:
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
        .size   frd_a_GetFriendInfo, . - frd_a_GetFriendInfo

@ FUN_0053b7d4
        .global frd_a_GetMyPassword
        .type   frd_a_GetMyPassword, %function
frd_a_GetMyPassword:
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
        .size   frd_a_GetMyPassword, . - frd_a_GetMyPassword

@ FUN_0053b830
        .global frd_a_GetMyPresence
        .type   frd_a_GetMyPresence, %function
frd_a_GetMyPresence:
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
        .size   frd_a_GetMyPresence, . - frd_a_GetMyPresence

@ FUN_0053b8c4
        .global frd_a_AllowHalfAwake
        .type   frd_a_AllowHalfAwake, %function
frd_a_AllowHalfAwake:
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
        .size   frd_a_AllowHalfAwake, . - frd_a_AllowHalfAwake

@ FUN_0053b900
        .global frd_a_GetMyFriendKey
        .type   frd_a_GetMyFriendKey, %function
frd_a_GetMyFriendKey:
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
        .size   frd_a_GetMyFriendKey, . - frd_a_GetMyFriendKey

@ FUN_0053b948
        .global frd_a_GetServerTypes
        .type   frd_a_GetServerTypes, %function
frd_a_GetServerTypes:
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
        .size   frd_a_GetServerTypes, . - frd_a_GetServerTypes

@ FUN_0053b99c
        .global frd_a_SendInvitation
        .type   frd_a_SendInvitation, %function
frd_a_SendInvitation:
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
        .size   frd_a_SendInvitation, . - frd_a_SendInvitation

@ FUN_0053b9e8
        .global frd_a_UpdateMyPresence
        .type   frd_a_UpdateMyPresence, %function
frd_a_UpdateMyPresence:
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
        .size   frd_a_UpdateMyPresence, . - frd_a_UpdateMyPresence

@ FUN_0053ba44
        .global frd_a_AddFriendOnline
        .type   frd_a_AddFriendOnline, %function
frd_a_AddFriendOnline:
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
        .size   frd_a_AddFriendOnline, . - frd_a_AddFriendOnline

@ FUN_0053ba88
        .global frd_a_GetMyPreference
        .type   frd_a_GetMyPreference, %function
frd_a_GetMyPreference:
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
        .size   frd_a_GetMyPreference, . - frd_a_GetMyPreference

@ FUN_0053bb20
        .global frd_a_GetFriendComment
        .type   frd_a_GetFriendComment, %function
frd_a_GetFriendComment:
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
        .size   frd_a_GetFriendComment, . - frd_a_GetFriendComment

@ FUN_0053bb8c
        .global frd_a_GetFriendKeyList
        .type   frd_a_GetFriendKeyList, %function
frd_a_GetFriendKeyList:
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
        .size   frd_a_GetFriendKeyList, . - frd_a_GetFriendKeyList

@ FUN_0053bbf4
        .global frd_a_GetFriendProfile
        .type   frd_a_GetFriendProfile, %function
frd_a_GetFriendProfile:
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
        .size   frd_a_GetFriendProfile, . - frd_a_GetFriendProfile

@ FUN_0053bc60
        .global frd_a_GetMyPlayingGame
        .type   frd_a_GetMyPlayingGame, %function
frd_a_GetMyPlayingGame:
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
        .size   frd_a_GetMyPlayingGame, . - frd_a_GetMyPlayingGame

@ FUN_0053bca8
        .global frd_a_GetNatProperties
        .type   frd_a_GetNatProperties, %function
frd_a_GetNatProperties:
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
        .size   frd_a_GetNatProperties, . - frd_a_GetNatProperties

@ FUN_0053bcf0
        .global frd_a_LoadLocalAccount
        .type   frd_a_LoadLocalAccount, %function
frd_a_LoadLocalAccount:
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
        .size   frd_a_LoadLocalAccount, . - frd_a_LoadLocalAccount

@ FUN_0053bd2c
        .global frd_a_UpdatePreference
        .type   frd_a_UpdatePreference, %function
frd_a_UpdatePreference:
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
        .size   frd_a_UpdatePreference, . - frd_a_UpdatePreference

@ FUN_0053be28
        .global frd_a_GetFriendPresence
        .type   frd_a_GetFriendPresence, %function
frd_a_GetFriendPresence:
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
        .size   frd_a_GetFriendPresence, . - frd_a_GetFriendPresence

@ FUN_0053be98
        .global frd_a_GetMyFavoriteGame
        .type   frd_a_GetMyFavoriteGame, %function
frd_a_GetMyFavoriteGame:
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
        .size   frd_a_GetMyFavoriteGame, . - frd_a_GetMyFavoriteGame

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
        .global frd_a_UpdatePlayingGame
        .type   frd_a_UpdatePlayingGame, %function
frd_a_UpdatePlayingGame:
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
        .size   frd_a_UpdatePlayingGame, . - frd_a_UpdatePlayingGame

@ FUN_0053bfb0
        .global frd_a_CreateLocalAccount
        .type   frd_a_CreateLocalAccount, %function
frd_a_CreateLocalAccount:
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
        .size   frd_a_CreateLocalAccount, . - frd_a_CreateLocalAccount

@ FUN_0053c000
        .global frd_a_DeleteLocalAccount
        .type   frd_a_DeleteLocalAccount, %function
frd_a_DeleteLocalAccount:
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
        .size   frd_a_DeleteLocalAccount, . - frd_a_DeleteLocalAccount

@ FUN_0053c03c
        .global frd_a_GetMyNcPrincipalId
        .type   frd_a_GetMyNcPrincipalId, %function
frd_a_GetMyNcPrincipalId:
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
        .size   frd_a_GetMyNcPrincipalId, . - frd_a_GetMyNcPrincipalId

@ FUN_0053c078
        .global frd_a_IncrementMoveCount
        .type   frd_a_IncrementMoveCount, %function
frd_a_IncrementMoveCount:
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
        .size   frd_a_IncrementMoveCount, . - frd_a_IncrementMoveCount

@ FUN_0053c0a8
        .global frd_a_UnloadLocalAccount
        .type   frd_a_UnloadLocalAccount, %function
frd_a_UnloadLocalAccount:
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
        .size   frd_a_UnloadLocalAccount, . - frd_a_UnloadLocalAccount

@ FUN_0053c0dc
        .global frd_a_UpdateFavoriteGame
        .type   frd_a_UpdateFavoriteGame, %function
frd_a_UpdateFavoriteGame:
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
        .size   frd_a_UpdateFavoriteGame, . - frd_a_UpdateFavoriteGame

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
        .global frd_a_GetMyLocalAccountId
        .type   frd_a_GetMyLocalAccountId, %function
frd_a_GetMyLocalAccountId:
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
        .size   frd_a_GetMyLocalAccountId, . - frd_a_GetMyLocalAccountId

@ FUN_0053c238
        .global frd_a_SetClientSdkVersion
        .type   frd_a_SetClientSdkVersion, %function
frd_a_SetClientSdkVersion:
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
        .size   frd_a_SetClientSdkVersion, . - frd_a_SetClientSdkVersion

@ FUN_0053c278
        .global frd_a_SetNotificationMask
        .type   frd_a_SetNotificationMask, %function
frd_a_SetNotificationMask:
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
        .size   frd_a_SetNotificationMask, . - frd_a_SetNotificationMask

@ FUN_0053c2b0
        .global frd_a_SetNcPrincipalId
        .type   frd_a_SetNcPrincipalId, %function
frd_a_SetNcPrincipalId:
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
        .size   frd_a_SetNcPrincipalId, . - frd_a_SetNcPrincipalId

@ FUN_0053c3bc
        .global frd_a_GetMyApproachContext
        .type   frd_a_GetMyApproachContext, %function
frd_a_GetMyApproachContext:
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
        .size   frd_a_GetMyApproachContext, . - frd_a_GetMyApproachContext

@ FUN_0053c40c
        .global frd_a_AddFriendWithApproach
        .type   frd_a_AddFriendWithApproach, %function
frd_a_AddFriendWithApproach:
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
        .size   frd_a_AddFriendWithApproach, . - frd_a_AddFriendWithApproach

@ FUN_0053c470
        .global frd_a_GetFriendFavoriteGame
        .type   frd_a_GetFriendFavoriteGame, %function
frd_a_GetFriendFavoriteGame:
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
        .size   frd_a_GetFriendFavoriteGame, . - frd_a_GetFriendFavoriteGame

@ FUN_0053c4d4
        .global frd_a_GetFriendRelationship
        .type   frd_a_GetFriendRelationship, %function
frd_a_GetFriendRelationship:
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
        .size   frd_a_GetFriendRelationship, . - frd_a_GetFriendRelationship

@ FUN_0053c540
        .global frd_a_GetLastResponseResult
        .type   frd_a_GetLastResponseResult, %function
frd_a_GetLastResponseResult:
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
        .size   frd_a_GetLastResponseResult, . - frd_a_GetLastResponseResult

@ FUN_0053c570
        .global frd_a_GetServerTimeDifference
        .type   frd_a_GetServerTimeDifference, %function
frd_a_GetServerTimeDifference:
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
        .size   frd_a_GetServerTimeDifference, . - frd_a_GetServerTimeDifference

@ FUN_0053c5ac
        .global frd_a_GetServiceLocatorData
        .type   frd_a_GetServiceLocatorData, %function
frd_a_GetServiceLocatorData:
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
        .size   frd_a_GetServiceLocatorData, . - frd_a_GetServiceLocatorData

@ FUN_0053c680
        .global frd_a_DecryptApproachContext
        .type   frd_a_DecryptApproachContext, %function
frd_a_DecryptApproachContext:
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
        .size   frd_a_DecryptApproachContext, . - frd_a_DecryptApproachContext

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
        .global frd_a_GetFriendAttributeFlags
        .type   frd_a_GetFriendAttributeFlags, %function
frd_a_GetFriendAttributeFlags:
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
        .size   frd_a_GetFriendAttributeFlags, . - frd_a_GetFriendAttributeFlags

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
        .global frd_a_GetGameAuthenticationData
        .type   frd_a_GetGameAuthenticationData, %function
frd_a_GetGameAuthenticationData:
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
        .size   frd_a_GetGameAuthenticationData, . - frd_a_GetGameAuthenticationData

@ FUN_0053c9d0
        .global frd_a_UnscrambleLocalFriendCode
        .type   frd_a_UnscrambleLocalFriendCode, %function
frd_a_UnscrambleLocalFriendCode:
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
        .size   frd_a_UnscrambleLocalFriendCode, . - frd_a_UnscrambleLocalFriendCode

@ FUN_0053ca44
        .global frd_a_UpdateGameModeDescription
        .type   frd_a_UpdateGameModeDescription, %function
frd_a_UpdateGameModeDescription:
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
        .size   frd_a_UpdateGameModeDescription, . - frd_a_UpdateGameModeDescription

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
        .global frd_a_Logout
        .type   frd_a_Logout, %function
frd_a_Logout:
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
        .size   frd_a_Logout, . - frd_a_Logout

@ FUN_0053cb70
        .global frd_a_IsOnline
        .type   frd_a_IsOnline, %function
frd_a_IsOnline:
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
        .size   frd_a_IsOnline, . - frd_a_IsOnline

@ FUN_00540878
        .global frd_u_HasLoggedIn
        .type   frd_u_HasLoggedIn, %function
frd_u_HasLoggedIn:
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
        .size   frd_u_HasLoggedIn, . - frd_u_HasLoggedIn

@ FUN_005408b4
        .global frd_u_GetFriendMii
        .type   frd_u_GetFriendMii, %function
frd_u_GetFriendMii:
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
        .size   frd_u_GetFriendMii, . - frd_u_GetFriendMii

@ FUN_00540990
        .global frd_u_GetFriendInfo
        .type   frd_u_GetFriendInfo, %function
frd_u_GetFriendInfo:
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
        .size   frd_u_GetFriendInfo, . - frd_u_GetFriendInfo

@ FUN_00540a60
        .global frd_u_GetMyPresence
        .type   frd_u_GetMyPresence, %function
frd_u_GetMyPresence:
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
        .size   frd_u_GetMyPresence, . - frd_u_GetMyPresence

@ FUN_00540aec
        .global frd_u_GetMyFriendKey
        .type   frd_u_GetMyFriendKey, %function
frd_u_GetMyFriendKey:
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
        .size   frd_u_GetMyFriendKey, . - frd_u_GetMyFriendKey

@ FUN_00540b88
        .global frd_u_SendInvitation
        .type   frd_u_SendInvitation, %function
frd_u_SendInvitation:
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
        .size   frd_u_SendInvitation, . - frd_u_SendInvitation

@ FUN_00540bd4
        .global frd_u_UpdateMyPresence
        .type   frd_u_UpdateMyPresence, %function
frd_u_UpdateMyPresence:
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
        .size   frd_u_UpdateMyPresence, . - frd_u_UpdateMyPresence

@ FUN_00540c30
        .global frd_u_GetMyPreference
        .type   frd_u_GetMyPreference, %function
frd_u_GetMyPreference:
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
        .size   frd_u_GetMyPreference, . - frd_u_GetMyPreference

@ FUN_00540cc8
        .global frd_u_GetFriendComment
        .type   frd_u_GetFriendComment, %function
frd_u_GetFriendComment:
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
        .size   frd_u_GetFriendComment, . - frd_u_GetFriendComment

@ FUN_00540d9c
        .global frd_u_GetFriendProfile
        .type   frd_u_GetFriendProfile, %function
frd_u_GetFriendProfile:
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
        .size   frd_u_GetFriendProfile, . - frd_u_GetFriendProfile

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
        .global frd_u_GetMyLocalAccountId
        .type   frd_u_GetMyLocalAccountId, %function
frd_u_GetMyLocalAccountId:
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
        .size   frd_u_GetMyLocalAccountId, . - frd_u_GetMyLocalAccountId

@ FUN_00541128
        .global frd_u_SetClientSdkVersion
        .type   frd_u_SetClientSdkVersion, %function
frd_u_SetClientSdkVersion:
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
        .size   frd_u_SetClientSdkVersion, . - frd_u_SetClientSdkVersion

@ FUN_005411a0
        .global frd_u_GetEventNotification
        .type   frd_u_GetEventNotification, %function
frd_u_GetEventNotification:
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
        .size   frd_u_GetEventNotification, . - frd_u_GetEventNotification

@ FUN_00541218
        .global frd_u_GetFriendPlayingGame
        .type   frd_u_GetFriendPlayingGame, %function
frd_u_GetFriendPlayingGame:
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
        .size   frd_u_GetFriendPlayingGame, . - frd_u_GetFriendPlayingGame

@ FUN_00541274
        .global frd_u_GetMyApproachContext
        .type   frd_u_GetMyApproachContext, %function
frd_u_GetMyApproachContext:
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
        .size   frd_u_GetMyApproachContext, . - frd_u_GetMyApproachContext

@ FUN_005412c4
        .global frd_u_AddFriendWithApproach
        .type   frd_u_AddFriendWithApproach, %function
frd_u_AddFriendWithApproach:
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
        .size   frd_u_AddFriendWithApproach, . - frd_u_AddFriendWithApproach

@ FUN_00541328
        .global frd_u_GetFriendFavoriteGame
        .type   frd_u_GetFriendFavoriteGame, %function
frd_u_GetFriendFavoriteGame:
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
        .size   frd_u_GetFriendFavoriteGame, . - frd_u_GetFriendFavoriteGame

@ FUN_0054138c
        .global frd_u_GetFriendRelationship
        .type   frd_u_GetFriendRelationship, %function
frd_u_GetFriendRelationship:
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
        .size   frd_u_GetFriendRelationship, . - frd_u_GetFriendRelationship

@ FUN_00541538
        .global frd_u_DecryptApproachContext
        .type   frd_u_DecryptApproachContext, %function
frd_u_DecryptApproachContext:
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
        .size   frd_u_DecryptApproachContext, . - frd_u_DecryptApproachContext

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
        .global frd_u_GetFriendAttributeFlags
        .type   frd_u_GetFriendAttributeFlags, %function
frd_u_GetFriendAttributeFlags:
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
        .size   frd_u_GetFriendAttributeFlags, . - frd_u_GetFriendAttributeFlags

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
        .global frd_u_IsOnline
        .type   frd_u_IsOnline, %function
frd_u_IsOnline:
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
        .size   frd_u_IsOnline, . - frd_u_IsOnline

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
