@ Generated from the retail image by tools/wrapgen/asmify.py (nw4c): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text


@ FUN_00541c98
        .global A_541c98
        .type   A_541c98, %function
A_541c98:
        cmp     r1, #0
        str     r4, [sp, #-4]!
        beq     L541cd0
        ldr     r3, [r0, #4]
        mov     r2, #0
        add     r1, r1, r3
        ldr     r3, [r0]
        subs    r4, r3, r1
        sbcs    ip, r2, r2
        movlt   r1, r3
        blt     L541ccc
        cmp     r2, #0
        movlt   r1, #0
L541ccc:
        str     r1, [r0, #4]
L541cd0:
        ldr     r0, [r0, #4]
        pop     {r4}
        bx      lr
        .size   A_541c98, . - A_541c98

@ FUN_00541ee0
        .global A_541ee0
        .type   A_541ee0, %function
A_541ee0:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mov     r4, r0
        mov     r0, r0
        tst     r5, #1
        beq     L541f1c
        ldr     r0, [r4, #0x28]
        ldr     r1, [r4, #0xc]
        sub     r2, r0, r1
        mov     r0, r4
        bl      Fn_541f94
        ldr     r1, [r4, #0xc]
        mov     r0, #0
        str     r0, [r4, #0x30]
        str     r1, [r4, #0x28]
L541f1c:
        tst     r5, #2
        beq     L541f60
        ldr     r0, [r4, #0x10]
        ldr     r1, [r4, #0x2c]
        sub     r2, r0, r1
        mov     r0, r4
        bl      Fn_541f94
        ldr     r0, [r4, #0x30]
        cmp     r0, #0
        beq     L541f58
L541f44:
        ldr     r1, [r4, #0x10]
        str     r1, [r0, #8]
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        bne     L541f44
L541f58:
        ldr     r1, [r4, #0x10]
        str     r1, [r4, #0x2c]
L541f60:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        bx      lr
        .size   A_541ee0, . - A_541ee0

@ FUN_00541f94
        .global A_541f94
        .type   A_541f94, %function
A_541f94:
        ldr     r0, [r0, #0x24]
        mov     r3, r1
        mov     r1, r2
        tst     r0, #2
        beq     L541fb8
        ldr     r0, L541fbc
        ldr     r2, [r0, #8]
        mov     r0, r3
        b       Fn_01a48c
L541fb8:
        bx      lr
L541fbc:
        .word   0x008bbb2c
        .size   A_541f94, . - A_541f94

@ FUN_00542018
        .global A_542018
        .type   A_542018, %function
A_542018:
        ldr     r0, [r0, #0x24]
        mov     r3, r1
        mov     ip, r2
        tst     r0, #1
        beq     L542038
        mov     r1, r2
        mov     r0, r3
        b       Fn_01a4d4
L542038:
        tst     r0, #2
        beq     L542054
        ldr     r0, L542058
        mov     r1, ip
        ldr     r2, [r0, #4]
        mov     r0, r3
        b       Fn_01a48c
L542054:
        bx      lr
L542058:
        .word   0x008bbb2c
        .size   A_542018, . - A_542018

@ FUN_00542098
        .global A_542098
        .type   A_542098, %function
A_542098:
L542098:
        push    {r4, r5, lr}
        add     r3, r0, #4
        ldr     r2, [r0, #4]
        cmp     r2, r3
        beq     L5420e8
L5420ac:
        mov     r4, r2
        ldr     r2, [r2]
        ldr     r5, [r4, #8]
        cmp     r5, r1
        ldrls   r5, [r4, #0xc]
        cmpls   r1, r5
        bhs     L5420dc
        add     r0, r4, #0x14
        .word   0xebfffff1
        cmp     r0, #0
        subeq   r0, r4, #4
        pop     {r4, r5, pc}
L5420dc:
        add     r3, r0, #4
        cmp     r2, r3
        bne     L5420ac
L5420e8:
        mov     r0, #0
        pop     {r4, r5, pc}
        .size   A_542098, . - A_542098

@ FUN_00542118
        .global A_542118
        .type   A_542118, %function
A_542118:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r5, L542150
        mov     r1, r0
        add     r0, r5, #0
        bl      Fn_542098
        cmp     r0, #0
        addne   r5, r0, #0x18
        mov     r0, r5
        add     r1, r4, #4
        bl      Fn_5421f4
        mov     r0, #0
        str     r0, [r4, #0x14]
        pop     {r4, r5, r6, pc}
L542150:
        .word   0x00a7b044
        .size   A_542118, . - A_542118

@ FUN_00542454
        .global A_542454
        .type   A_542454, %function
A_542454:
        push    {r4, r5, r6, r7, r8, lr}
        cmp     r1, #0
        mov     r5, r0
        moveq   r1, #1
        add     r0, r1, #3
        bic     r8, r0, #3
        mov     r6, r2
        mov     r0, r5
        mov     r0, r0
        cmp     r6, #0
        mov     r0, #0
        blt     L5424c0
        ldr     r1, [r5, #0x28]
        sub     r3, r6, #1
        add     r2, r1, r6
        sub     r2, r2, #1
        bic     r7, r2, r3
        ldr     r2, [r5, #0x2c]
        add     r6, r7, r8
        cmp     r2, r6
        blo     L5424e0
        sub     r2, r6, r1
        mov     r0, r5
        bl      Fn_542018
        mov     r0, r7
        str     r6, [r5, #0x28]
        b       L5424e0
L5424c0:
        ldr     r3, [r5, #0x2c]
        rsb     r2, r6, #0
        sub     r2, r2, #1
        sub     r1, r3, r8
        bic     r4, r1, r2
        ldr     r1, [r5, #0x28]
        cmp     r1, r4
        bls     L5424e8
L5424e0:
        mov     r4, r0
        b       L5424fc
L5424e8:
        sub     r2, r3, r4
        mov     r1, r4
        mov     r0, r5
        bl      Fn_542018
        str     r4, [r5, #0x2c]
L5424fc:
        mov     r0, r5
        mov     r0, r0
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_542454, . - A_542454

@ FUN_005425b4
        .global A_5425b4
        .type   A_5425b4, %function
A_5425b4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r2
        bl      Fn_544c68
        ldr     r1, [r5, #4]
        cmp     r0, #0
        blt     L542604
        add     r2, r0, r0, lsl #1
        ldr     r3, [r1, r2, lsl #2]
        tst     r3, #0xff000000
        beq     L542604
        add     r6, r4, #4
        add     r3, r0, #1
        str     r5, [r4]
        stm     r6, {r0, r3}
        add     r0, r1, r2, lsl #2
        ldr     r0, [r0, #8]
        str     r0, [r4, #0xc]
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L542604:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_5425b4, . - A_5425b4

@ FUN_0054260c
        .global A_54260c
        .type   A_54260c, %function
A_54260c:
        push    {r4, r5, r6}
        ldr     ip, [r0]
        ldr     r2, [r0, #8]
        ldr     r3, [ip, #4]
L54261c:
        ldr     r4, [r0, #4]
        cmp     r4, r2
        ldrlo   r4, [r0, #0xc]
        cmplo   r2, r4
        blo     L54263c
        pop     {r4, r5, r6}
        mov     r0, #0
        bx      lr
L54263c:
        add     r4, r2, r2, lsl #1
        str     r2, [r1, #4]
        str     ip, [r1]
        ldr     r5, [r3, r4, lsl #2]
        ands    r5, r5, #0xff000000
        movne   r5, #1
        strb    r5, [r1, #0xc]
        ldr     r6, [r3, r4, lsl #2]
        ldr     r5, [ip, #0x10]
        bic     r6, r6, #0xff000000
        add     r5, r5, r6
        str     r5, [r1, #8]
        ldrh    r6, [r5]
        cmp     r6, #0x2e
        ldrheq  r5, [r5, #2]
        cmpeq   r5, #0
        addeq   r2, r2, #1
        beq     L54261c
        add     r1, r2, r2, lsl #1
        ldr     r1, [r3, r1, lsl #2]
        tst     r1, #0xff000000
        addne   r1, r3, r4, lsl #2
        ldrne   r1, [r1, #8]
        addeq   r1, r2, #1
        str     r1, [r0, #8]
        pop     {r4, r5, r6}
        mov     r0, #1
        bx      lr
        .size   A_54260c, . - A_54260c

@ FUN_005426ac
        .global A_5426ac
        .type   A_5426ac, %function
A_5426ac:
        cmp     r1, #0
        ldrge   ip, [r0, #0xc]
        ldr     r3, [r0, #4]
        cmpge   ip, r1
        ble     L5426d0
        add     r1, r1, r1, lsl #1
        ldr     ip, [r3, r1, lsl #2]
        tst     ip, #0xff000000
        beq     L5426d8
L5426d0:
        mov     r0, #0
        bx      lr
L5426d8:
        str     r0, [r2]
        add     r0, r3, r1, lsl #2
        ldr     r1, [r0, #4]
        str     r1, [r2, #4]
        ldr     r0, [r0, #8]
        str     r0, [r2, #8]
        mov     r0, #1
        bx      lr
        .size   A_5426ac, . - A_5426ac

@ FUN_00542828
        .global A_542828
        .type   A_542828, %function
A_542828:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x24
        mov     r6, r3
        mov     sl, r0
        add     r0, sp, #0x18
        bl      Fn_542c30
        ldr     r1, [sp, #0x18]
        mov     r0, #0
        cmp     r1, #0
        beq     L54295c
        add     r1, sp, #0x1c
        ldr     r4, [sp, #0x18]
        ldm     r1, {r5, ip}
        ldr     r3, L542b20
        str     r4, [sp, #4]
        ldr     r1, L542b24
        ldrb    fp, [r5, #0xc]
        ldr     ip, [ip]
        mov     r2, r5
        add     r4, fp, fp, lsl #2
        str     ip, [sp]
        add     sb, r3, r4, lsl #2
        ldrh    r7, [r5, #8]
        ldr     r3, [sb, #0xc]
        uxth    r5, r3
L54288c:
        cmp     r5, #0
        cmpne   r7, r5
        andhi   r5, r1, r5, lsl #1
        bhi     L54288c
        ldrh    r8, [r2, #0xa]
        uxth    r4, r3
L5428a4:
        cmp     r4, #0
        cmpne   r8, r4
        andhi   r4, r1, r4, lsl #1
        bhi     L5428a4
        cmp     r6, #0
        beq     L542934
L5428bc:
        mov     r0, #0
        str     r0, [sp, #8]
        str     r0, [sp, #0x14]
        ldr     r0, L542b28
        ldrb    r0, [r0]
        cmp     r0, #0
        beq     L542a04
        add     r1, sp, #0x14
        mov     r0, #1
        bl      Fn_661e80
        ldr     r1, [sp, #0x14]
        ldr     r0, L542b2c
        bl      Fn_65f4d4
        ldrb    r0, [sb, #0x10]
        cmp     r0, #0
        beq     L54297c
        ldm     sp, {r1, r2}
        add     r3, sp, #4
        mov     r0, #0
        str     r4, [sp]
        stm     r3, {r0, r1, r2}
        orr     r0, r6, #0xd00
        ldr     r2, [sb, #4]
        orr     r0, r0, #0xe1
        mov     r3, r5
        mov     r1, #0
        bl      Fn_660498
        nop
        nop
        b       L5429b0
L542934:
        ldrb    r1, [r2, #0xd]
        ands    r1, r1, #3
        ldreq   r6, L542b30
        beq     L5428bc
        cmp     r1, #1
        ldreq   r6, L542b34
        beq     L5428bc
        cmp     r1, #2
        ldreq   r6, L542b38
        beq     L5428bc
L54295c:
        str     r0, [sl]
        str     r0, [sl, #4]
        strh    r0, [sl, #8]
        strh    r0, [sl, #0xa]
        strh    r0, [sl, #0xc]
        strh    r0, [sl, #0xe]
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L54297c:
        ldr     r2, [sb, #4]!
        ldr     r3, [sp, #4]
        ldr     r0, [sb, #4]
        add     ip, sp, #0xc
        str     r4, [sp]
        stm     ip, {r0, r3}
        add     ip, sp, #4
        mov     r1, #0
        orr     r0, r6, #0xd00
        orr     r0, r0, #0xe1
        mov     r3, r5
        stm     ip, {r1, r2}
        bl      Fn_665138
L5429b0:
        ldr     r6, L542b2c
        ldr     r1, L542b40
        vldr    s0, L542b3c
        mov     r0, r6
        bl      Fn_6652f8
        ldr     r2, L542b44
        ldr     r1, L542b48
        mov     r0, r6
        bl      Fn_665644
        mov     r0, #0
        str     r0, [sp]
        ldr     r1, L542b4c
        mov     r2, sp
        mov     r0, r6
        bl      Fn_661fbc
        ldr     r0, [sp]
        nop
        bl      Fn_0253e4
        str     r0, [sp, #8]
        nop
        b       L542ab4
L542a04:
        lsr     r6, r6, #0x10
        lsl     r6, r6, #0x10
        add     r0, r6, #0xfe000000
        subs    r0, r0, #0x10000
        beq     L542a28
        cmp     r0, #0x10000
        cmpne   r0, #0x20000
        beq     L542a4c
        b       L542ab4
L542a28:
        ldr     r0, [sp, #4]
        mov     r1, ip
        bl      Fn_025398
        ldr     r0, [sp, #4]
        nop
        bl      Fn_0253e4
        str     r0, [sp, #8]
        nop
        b       L542ab4
L542a4c:
        mov     sb, #0
        mov     r1, sb
        add     r0, sp, #0xc
        str     sb, [sp, #0xc]
        bl      Fn_6691d0
        ldr     ip, [sp, #0xc]
        cmp     ip, #0
        beq     L542b00
        and     sb, r6, #0x30000
        ldr     r2, [sp, #0x14]
        ldr     r3, [sp]
        ldr     r1, L542b50
        mov     r0, sb
        blx     ip
        movs    r6, r0
        beq     L542ab4
        mov     r1, r0
        ldr     r0, [sp, #4]
        ldr     r2, [sp]
        bl      Fn_022104
        mov     r0, r6
        nop
        bl      Fn_0253e4
        str     r0, [sp, #8]
        orr     r0, r6, sb, lsr #16
        str     r0, [sp, #0x14]
L542ab4:
        ldr     r1, [sp, #8]
        vldr    s0, [sp, #0x14]
        mov     r0, sl
        mov     ip, #0
        strh    ip, [sl, #8]!
        uxth    r2, r7
        strh    ip, [sl, #2]
        strh    ip, [r0, #0xc]
        strh    ip, [r0, #0xe]
        vstr    s0, [r0]
        uxth    r3, r5
        orr     r2, r2, r8, lsl #16
        str     r1, [r0, #4]
        orr     r3, r3, r4, lsl #16
        str     r2, [r0, #8]
        str     r3, [r0, #0xc]
        strb    fp, [r0, #0x10]
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L542b00:
        str     sb, [sl]
        str     sb, [sl, #4]
        strh    sb, [sl, #8]
        strh    sb, [sl, #0xa]
        strh    sb, [sl, #0xc]
        strh    sb, [sl, #0xe]
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L542b20:
        .word   0x007e9964
L542b24:
        .word   0x0000ffff
L542b28:
        .word   0x008ab280
L542b2c:
        .word   0x00000de1
L542b30:
        .word   0x02010000
L542b34:
        .word   0x02020000
L542b38:
        .word   0x02030000
L542b3c:
        .word   0x00000000
L542b40:
        .word   0x00008501
L542b44:
        .word   0xfffffc18
L542b48:
        .word   0x0000813a
L542b4c:
        .word   0x00006790
L542b50:
        .word   0x00000101
        .size   A_542828, . - A_542828

@ FUN_00542e84
        .global A_542e84
        .type   A_542e84, %function
A_542e84:
        push    {r4, r5, r6, r7, r8, lr}
        add     r5, r0, #0xc
        mov     r6, r1
        ldr     r4, [r0, #0x10]!
        mov     r7, r2
        mov     r8, r3
        cmp     r4, r0
        beq     L542ed0
L542ea4:
        ldr     r0, [r4, #8]
        mov     r3, r8
        mov     r2, r7
        ldr     r1, [r0]
        ldr     ip, [r1, #0x3c]
        mov     r1, r6
        blx     ip
        ldr     r4, [r4]
        add     r0, r5, #4
        cmp     r4, r0
        bne     L542ea4
L542ed0:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_542e84, . - A_542e84

@ FUN_00542f48
        .global A_542f48
        .type   A_542f48, %function
A_542f48:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r5, r1
        mov     r7, r2
        mov     r8, r3
        mov     r1, #4
        mov     r0, #0x90
        bl      Fn_548350
        cmp     r0, #0
        beq     L542fd4
        mov     r2, #0
        str     r2, [r0]
        str     r2, [r0, #4]
        str     r2, [r0, #0x88]
        mov     r4, r0
        strb    r2, [r0, #0x8c]
        mov     r3, #0x80
        add     r0, r0, #8
        mov     r1, r2
L542f94:
        ldrb    ip, [r5]
        add     r1, r1, #1
        strb    ip, [r0], #1
        ldrb    ip, [r5, #1]!
        cmp     ip, #0
        subne   ip, r3, #1
        cmpne   ip, r1
        bhi     L542f94
        strb    r2, [r0]
        str     r7, [r4, #0x88]
        mov     r0, r6
        mov     r2, r4
        add     r1, r6, #4
        strb    r8, [r4, #0x8c]
        bl      Fn_542230
        mov     r0, r4
L542fd4:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_542f48, . - A_542f48

@ FUN_00542fd8
        .global A_542fd8
        .type   A_542fd8, %function
A_542fd8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #4]!
        mov     r6, r1
        cmp     r4, r0
        beq     L543018
L542ff0:
        add     r1, r4, #8
        mov     r0, r6
        bl      Fn_1fe040
        cmp     r0, #0
        nop
        beq     L543020
        ldr     r4, [r4]
        add     r0, r5, #4
        cmp     r4, r0
        bne     L542ff0
L543018:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
L543020:
        ldr     r0, [r4, #0x88]
        pop     {r4, r5, r6, pc}
        .size   A_542fd8, . - A_542fd8

@ FUN_00543028
        .global A_543028
        .type   A_543028, %function
A_543028:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r7, #0
        beq     L5430cc
L543040:
        ldr     r5, [r4, #4]
        mov     r0, r4
        mov     r1, r5
        bl      Fn_5421f4
        cmp     r5, #0
        nop
        beq     L5430c0
        ldrb    r0, [r5, #0x8c]
        cmp     r0, #0
        beq     L5430b8
        ldr     r0, [r5, #0x88]
        cmp     r0, #0
        ldrne   r6, [r0, #0xc]
        cmpne   r6, #0
        beq     L543090
        mov     r1, #0
        bl      Fn_56ac60
        mov     r0, r6
        nop
        bl      Fn_548334
L543090:
        ldr     r6, [r5, #0x88]
        cmp     r6, #0
        beq     L5430b4
        ldr     r0, [r6]
        ldr     r1, [r0]
        mov     r0, r6
        blx     r1
        mov     r0, r6
        bl      Fn_548334
L5430b4:
        str     r7, [r5, #0x88]
L5430b8:
        mov     r0, r5
        bl      Fn_548334
L5430c0:
        ldr     r0, [r4]
        cmp     r0, #0
        bne     L543040
L5430cc:
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_543028, . - A_543028

@ FUN_0054344c
        .global A_54344c
        .type   A_54344c, %function
A_54344c:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        vldr    s1, L543578
        mov     r4, r0
        vpush   {d8}
        sub     sp, sp, #8
        vldr    s0, [r1, #8]
        mov     r6, r2
        vldr    s16, L543574
        vmul.f32 s0, s0, s1
        add     r1, sp, #4
        mov     r0, sp
        bl      Fn_01c6d4
        vldr    s1, [r5, #0xc]
        vldr    s2, [sp, #4]
        vldr    s0, [r5, #0x10]
        vldr    s3, [sp]
        vmul.f32 s1, s1, s2
        add     r1, r5, #0xc
        vnmul.f32 s0, s3, s0
        vldr    s5, L54357c
        vstr    s1, [r4]
        vstr    s0, [r4, #4]
        vldr    s4, [r5]
        vadd.f32 s4, s4, s16
        vmls.f32 s4, s1, s16
        vmls.f32 s4, s0, s16
        vstr    s4, [r4, #8]
        vldmia  r1, {s0, s1}
        add     r1, r4, #0xc
        vmul.f32 s0, s0, s3
        vmul.f32 s1, s1, s2
        vstmia  r1, {s0, s1}
        vldr    s2, [r5, #4]
        vadd.f32 s2, s2, s16
        vmls.f32 s2, s0, s16
        vmls.f32 s2, s1, s16
        vstr    s2, [r4, #0x14]
        ldrh    r1, [r6, #8]
        ldrh    r2, [r6, #0xc]
        ldrh    r0, [r6, #0xa]
        vmov    s1, r1
        vmov    s0, r2
        ldrh    r3, [r6, #0xe]
        vmov    s2, r0
        vldr    s3, [r4]
        vcvt.f32.u32 s6, s1
        vcvt.f32.u32 s7, s0
        vmov    s1, r3
        vcvt.f32.u32 s4, s2
        vcvt.f32.u32 s1, s1
        vdiv.f32 s0, s6, s7
        vmul.f32 s3, s3, s0
        vdiv.f32 s2, s4, s1
        vstr    s3, [r4]
        vldr    s1, [r4, #4]
        vmul.f32 s1, s1, s0
        vstr    s1, [r4, #4]
        vldr    s3, [r4, #8]
        vneg.f32 s1, s2
        vmul.f32 s0, s3, s0
        vstr    s0, [r4, #8]
        vldr    s0, [r4, #0xc]
        vnmul.f32 s0, s2, s0
        vstr    s0, [r4, #0xc]
        vldr    s0, [r4, #0x10]
        vnmul.f32 s0, s2, s0
        vstr    s0, [r4, #0x10]
        vldr    s0, [r4, #0x14]
        vmla.f32 s5, s0, s1
        vstr    s5, [r4, #0x14]
        add     sp, sp, #8
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L543574:
        .word   0x3f000000
L543578:
        .word   0x3f360b61
L54357c:
        .word   0x3f800000
        .size   A_54344c, . - A_54344c

@ FUN_00543580
        .global A_543580
        .type   A_543580, %function
A_543580:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #4]!
        mov     r6, r1
        cmp     r4, r0
        beq     L5435c8
L543598:
        mov     r1, r6
        add     r0, r4, #0x14
        bl      Fn_54e84c
        cmp     r0, #0
        nop
        beq     L5435b8
        sub     r0, r4, #4
        pop     {r4, r5, r6, pc}
L5435b8:
        ldr     r4, [r4]
        add     r0, r5, #4
        cmp     r4, r0
        bne     L543598
L5435c8:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_543580, . - A_543580

@ FUN_005435d0
        .global A_5435d0
        .type   A_5435d0, %function
A_5435d0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #4]!
        cmp     r4, r0
        beq     L543630
L5435e4:
        mov     r6, r4
        ldr     r4, [r4]
        mov     r0, r5
        mov     r1, r6
        bl      Fn_542154
        ldrb    r0, [r6, #0x25]
        cmp     r0, #0
        bne     L543624
        subs    r6, r6, #4
        beq     L543624
        ldr     r0, [r6]
        ldr     r1, [r0]
        mov     r0, r6
        blx     r1
        mov     r0, r6
        bl      Fn_548334
L543624:
        add     r0, r5, #4
        cmp     r4, r0
        bne     L5435e4
L543630:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_5435d0, . - A_5435d0

@ FUN_00543b24
        .global A_543b24
        .type   A_543b24, %function
A_543b24:
        push    {r4, lr}
        ldr     r1, [r0, #0x194]
        mov     r4, r0
        ldr     r0, L543b74
        sub     sp, sp, #8
        bl      Fn_65f090
        ldr     r1, [r4, #0x198]
        ldr     r0, L543b78
        bl      Fn_65f090
        mov     r0, #0
        bl      Fn_661d18
        mov     r0, #0
        ldr     r2, L543b7c
        mov     r3, r0
        mov     r1, #2
        str     r0, [sp]
        str     r0, [sp, #4]
        bl      Fn_665fac
        add     sp, sp, #8
        pop     {r4, pc}
L543b74:
        .word   0x00008893
L543b78:
        .word   0x00008892
L543b7c:
        .word   0x00001402
        .size   A_543b24, . - A_543b24

@ FUN_00543c38
        .global A_543c38
        .type   A_543c38, %function
A_543c38:
        push    {r4, r5, lr}
        sub     sp, sp, #0x1c
        mov     r4, r0
        mov     r5, #0
        mov     r0, r1
        str     r5, [sp]
        ldr     r1, [r1]
        mov     r3, sp
        ldr     ip, [r1, #8]
        ldr     r1, L543cd0
        blx     ip
        movs    r1, r0
        ldrne   r2, [sp]
        cmpne   r2, #0
        beq     L543cb0
        mov     r3, #0
        add     r0, sp, #4
        bl      Fn_542828
        ldr     r0, [sp, #8]
        cmp     r0, #0
        beq     L543cb0
        strh    r5, [r4, #8]
        strh    r5, [r4, #0xa]
        add     lr, sp, #4
        strh    r5, [r4, #0xc]
        strh    r5, [r4, #0xe]
        ldm     lr, {r0, r1, r2, r3, ip}
        stm     r4, {r0, r1, r2, r3, ip}
        add     sp, sp, #0x1c
        pop     {r4, r5, pc}
L543cb0:
        str     r5, [r4]
        str     r5, [r4, #4]
        strh    r5, [r4, #8]
        strh    r5, [r4, #0xa]
        strh    r5, [r4, #0xc]
        strh    r5, [r4, #0xe]
        add     sp, sp, #0x1c
        pop     {r4, r5, pc}
L543cd0:
        .word   0x74696d67
        .size   A_543c38, . - A_543c38

@ FUN_00543cd4
        .global A_543cd4
        .type   A_543cd4, %function
A_543cd4:
        push    {r3, r4, r5, lr}
        mov     r3, #0
        str     r3, [sp]
        ldr     r3, [r0]
        mov     r2, r1
        ldr     r1, L543d7c
        ldr     ip, [r3, #8]
        mov     r3, sp
        blx     ip
        movs    r5, r0
        ldrne   r0, [sp]
        cmpne   r0, #0
        beq     L543d74
        mov     r1, #4
        mov     r0, #0x18
        bl      Fn_548350
        cmp     r0, #0
        beq     L543d74
        bl      Fn_56ad34
        movs    r4, r0
        beq     L543d74
        mov     r1, r5
        bl      Fn_56aa88
        cmp     r0, #0
        beq     L543d5c
        mov     r0, r5
        bl      Fn_56ac9c
        mov     r1, #4
        bl      Fn_548350
        mov     r1, r0
        mov     r0, r4
        bl      Fn_56ac60
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L543d5c:
        ldr     r0, [r4]
        ldr     r1, [r0]
        mov     r0, r4
        blx     r1
        mov     r0, r4
        bl      Fn_548334
L543d74:
        mov     r0, #0
        pop     {r3, r4, r5, pc}
L543d7c:
        .word   0x666f6e74
        .size   A_543cd4, . - A_543cd4

@ FUN_00543d94
        .global A_543d94
        .type   A_543d94, %function
A_543d94:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r5, r1
        mov     r7, r2
        mov     r1, #4
        mov     r0, #0x9c
        bl      Fn_548350
        cmp     r0, #0
        beq     L543e38
        mov     r2, #0
        str     r2, [r0]
        mov     r4, r0
        str     r2, [r0, #4]
        str     r2, [r0, #0x88]!
        mov     r3, #0x80
        str     r2, [r0, #4]
        strh    r2, [r0, #8]
        strh    r2, [r0, #0xa]
        strh    r2, [r0, #0xc]
        strh    r2, [r0, #0xe]
        add     r0, r4, #8
        mov     r1, r2
        strb    r2, [r4, #8]
L543df0:
        ldrb    ip, [r5]
        add     r1, r1, #1
        strb    ip, [r0], #1
        ldrb    ip, [r5, #1]!
        cmp     ip, #0
        subne   ip, r3, #1
        cmpne   ip, r1
        bhi     L543df0
        strb    r2, [r0]
        ldm     r7, {r1, r2, r3, r5, ip}
        add     r0, r4, #0x88
        stm     r0, {r1, r2, r3, r5}
        mov     r0, r6
        mov     r2, r4
        add     r1, r6, #4
        str     ip, [r4, #0x98]
        bl      Fn_542230
        mov     r0, r4
L543e38:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_543d94, . - A_543d94

@ FUN_00543e3c
        .global A_543e3c
        .type   A_543e3c, %function
A_543e3c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        add     r0, r1, #4
        ldr     r4, [r1, #4]
        mov     r5, r1
        mov     r7, r2
        cmp     r4, r0
        mov     r8, #0
        beq     L543e88
L543e60:
        add     r1, r4, #8
        mov     r0, r7
        bl      Fn_1fe040
        cmp     r0, #0
        nop
        beq     L543ea4
        ldr     r4, [r4]
        add     r0, r5, #4
        cmp     r4, r0
        bne     L543e60
L543e88:
        str     r8, [r6]
        str     r8, [r6, #4]
        strh    r8, [r6, #8]
        strh    r8, [r6, #0xa]
        strh    r8, [r6, #0xc]
        strh    r8, [r6, #0xe]
        pop     {r4, r5, r6, r7, r8, pc}
L543ea4:
        strh    r8, [r6, #8]
        strh    r8, [r6, #0xa]
        add     r0, r4, #0x88
        strh    r8, [r6, #0xc]
        strh    r8, [r6, #0xe]
        ldm     r0, {r1, r2, r3, ip}
        ldr     r0, [r4, #0x98]
        str     r0, [r6, #0x10]
        stm     r6, {r1, r2, r3, ip}
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_543e3c, . - A_543e3c

@ FUN_00543ecc
        .global A_543ecc
        .type   A_543ecc, %function
A_543ecc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L543f1c
L543ee0:
        ldr     r5, [r4, #4]
        mov     r0, r4
        mov     r1, r5
        bl      Fn_5421f4
        cmp     r5, #0
        nop
        beq     L543f10
        add     r0, r5, #0x88
        bl      Fn_542ed4
        mov     r0, r5
        nop
        bl      Fn_548334
L543f10:
        ldr     r0, [r4]
        cmp     r0, #0
        bne     L543ee0
L543f1c:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
        .size   A_543ecc, . - A_543ecc

@ FUN_00543f24
        .global A_543f24
        .type   A_543f24, %function
A_543f24:
        ldr     r3, [r0]
        ldr     ip, [r3, #0x14]
        ldrh    r3, [r1, #0xe]
        bx      ip
        .size   A_543f24, . - A_543f24

@ FUN_00543f34
        .global A_543f34
        .type   A_543f34, %function
A_543f34:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x18
        mov     r5, r0
        mov     sl, #0
        str     r1, [r0, #0xc]!
        mov     r6, r1
        str     sl, [r0, #8]
        ldrh    r4, [r1, #0xc]
        mov     sb, r2
        mov     r7, r3
        cmp     r4, #0
        beq     L544038
        add     r0, r4, r4, lsl #2
        mov     r1, #4
        lsl     r0, r0, #2
        bl      Fn_548350
        cmp     r0, #0
        moveq   r2, sl
        beq     L543fc0
        cmp     r4, #0
        mov     r2, r0
        mov     r1, #0
        bls     L543fc0
L543f90:
        add     r0, r1, r1, lsl #2
        adds    r0, r2, r0, lsl #2
        beq     L543fb4
        str     sl, [r0]
        str     sl, [r0, #4]
        strh    sl, [r0, #8]
        strh    sl, [r0, #0xa]
        strh    sl, [r0, #0xc]
        strh    sl, [r0, #0xe]
L543fb4:
        add     r1, r1, #1
        cmp     r1, r4
        blo     L543f90
L543fc0:
        cmp     r2, #0
        str     r2, [r5, #0x14]
        beq     L544038
        ldrh    r0, [r6, #0xc]
        add     r8, r6, #0x14
        mov     r4, #0
        cmp     r0, #0
        ble     L544038
L543fe0:
        ldr     r0, [r8, r4, lsl #2]
        mov     r1, sb
        add     r2, r0, r8
        ldr     r0, [sb]
        ldr     r3, [r0, #0x10]
        mov     r0, sp
        blx     r3
        ldr     r3, [r5, #0x14]
        ldrd    r0, r1, [sp]
        add     r2, sp, #8
        add     ip, r4, r4, lsl #2
        vldmia  r2, {s0, s1}
        add     r3, r3, ip, lsl #2
        ldr     r2, [sp, #0x10]
        strd    r0, r1, [r3]
        add     r0, r3, #8
        add     r4, r4, #1
        vstmia  r0, {s0, s1}
        str     r2, [r3, #0x10]
        ldrh    r0, [r6, #0xc]
        cmp     r0, r4
        bgt     L543fe0
L544038:
        lsl     r0, r7, #4
        mov     r1, #4
        bl      Fn_548350
        cmp     r0, #0
        moveq   r2, sl
        beq     L544088
        cmp     r7, #0
        mov     r2, r0
        mov     r1, #0
        bls     L544088
L544060:
        adds    r0, r2, r1, lsl #4
        beq     L54407c
        str     sl, [r0]
        str     sl, [r0, #4]
        str     sl, [r0, #8]
        strh    sl, [r0, #0xc]
        strb    sl, [r0, #0xe]
L54407c:
        add     r1, r1, #1
        cmp     r1, r7
        blo     L544060
L544088:
        cmp     r2, #0
        str     r2, [r5, #0x18]
        strhne  r7, [r5, #0x1c]
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_543f34, . - A_543f34

@ FUN_0054409c
        .global A_54409c
        .type   A_54409c, %function
A_54409c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, #0
        mov     r8, r1
        mov     sb, r0
        mov     fp, r2
        ldr     r5, [r0, #0xc]
        mov     sl, r3
        mov     r4, r6
        ldr     r0, [r5, #0x10]
        add     r7, r0, r5
        ldrh    r0, [r5, #0xe]
        cmp     r0, #0
        bls     L544228
L5440d0:
        ldr     r0, [r7, r4, lsl #2]
        add     r1, r0, r5
        ldrb    r0, [r1, #0x15]
        cmp     r0, #0
        ldr     r0, [r8]
        beq     L54410c
        mov     r2, fp
        ldr     r3, [r0, #0x30]
        mov     r0, r8
        blx     r3
        cmp     r0, #0
        beq     L544214
        cmp     r6, #0
        beq     L5441a0
        b       L5441ac
L54410c:
        ldr     r3, [r0, #0x2c]
        mov     r2, fp
        mov     r0, r8
        blx     r3
        cmp     r0, #0
        beq     L544214
        cmp     r6, #0
        ldreq   r6, [sb, #0x18]
        cmpeq   r6, #0
        beq     L54416c
        ldrh    r1, [sb, #0x1c]
        ldr     r2, [sb, #0x18]
        add     r1, r2, r1, lsl #4
        cmp     r1, r6
        bls     L54416c
L544148:
        ldr     r1, [r6, #8]
        cmp     r1, #0
        beq     L544174
        ldrh    r2, [sb, #0x1c]
        ldr     r1, [sb, #0x18]
        add     r6, r6, #0x10
        add     r1, r1, r2, lsl #4
        cmp     r1, r6
        bhi     L544148
L54416c:
        mov     r6, #0
        b       L544194
L544174:
        cmp     r6, #0
        beq     L544228
        str     sb, [r6, #8]
        strh    r4, [r6, #0xc]
        mov     r1, r6
        strb    sl, [r6, #0xe]
        bl      Fn_545acc
        add     r6, r6, #0x10
L544194:
        cmp     r6, #0
        beq     L544228
        b       L544214
L5441a0:
        ldr     r6, [sb, #0x18]
        cmp     r6, #0
        beq     L5441e4
L5441ac:
        ldrh    r1, [sb, #0x1c]
        ldr     r2, [sb, #0x18]
        add     r1, r2, r1, lsl #4
        cmp     r1, r6
        bls     L5441e4
L5441c0:
        ldr     r1, [r6, #8]
        cmp     r1, #0
        beq     L5441ec
        ldrh    r1, [sb, #0x1c]
        ldr     r2, [sb, #0x18]
        add     r6, r6, #0x10
        add     r1, r2, r1, lsl #4
        cmp     r1, r6
        bhi     L5441c0
L5441e4:
        mov     r6, #0
        b       L54420c
L5441ec:
        cmp     r6, #0
        beq     L544228
        str     sb, [r6, #8]
        strh    r4, [r6, #0xc]
        mov     r1, r6
        strb    sl, [r6, #0xe]
        bl      Fn_54d9f8
        add     r6, r6, #0x10
L54420c:
        cmp     r6, #0
        beq     L544228
L544214:
        ldrh    r0, [r5, #0xe]
        add     r1, r4, #1
        uxth    r4, r1
        cmp     r0, r4
        bhi     L5440d0
L544228:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
        .size   A_54409c, . - A_54409c

@ FUN_0054422c
        .global A_54422c
        .type   A_54422c, %function
A_54422c:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r7, #0
        mov     sb, r0
        ldr     r5, [r0, #0xc]
        mov     r8, r1
        mov     sl, r2
        mov     r4, r7
        ldr     r0, [r5, #0x10]
        add     r6, r0, r5
        ldrh    r0, [r5, #0xe]
        cmp     r0, #0
        bls     L544314
L54425c:
        ldr     r0, [r6, r4, lsl #2]
        add     r1, r0, r5
        ldrb    r0, [r1, #0x15]
        cmp     r0, #1
        bne     L544300
        add     r0, r8, #0x38
        bl      Fn_54e974
        cmp     r0, #0
        nop
        beq     L544300
        cmp     r7, #0
        ldreq   r7, [sb, #0x18]
        cmpeq   r7, #0
        beq     L5442cc
        ldrh    r0, [sb, #0x1c]
        ldr     r1, [sb, #0x18]
        add     r0, r1, r0, lsl #4
        cmp     r0, r7
        bls     L5442cc
L5442a8:
        ldr     r0, [r7, #8]
        cmp     r0, #0
        beq     L5442d4
        ldrh    r0, [sb, #0x1c]
        ldr     r1, [sb, #0x18]
        add     r7, r7, #0x10
        add     r0, r1, r0, lsl #4
        cmp     r0, r7
        bhi     L5442a8
L5442cc:
        mov     r7, #0
        b       L5442f8
L5442d4:
        cmp     r7, #0
        beq     L544314
        str     sb, [r7, #8]
        strh    r4, [r7, #0xc]
        mov     r1, r7
        mov     r0, r8
        strb    sl, [r7, #0xe]
        bl      Fn_54d9f8
        add     r7, r7, #0x10
L5442f8:
        cmp     r7, #0
        beq     L544314
L544300:
        ldrh    r0, [r5, #0xe]
        add     r1, r4, #1
        uxth    r4, r1
        cmp     r0, r4
        bhi     L54425c
L544314:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_54422c, . - A_54422c

@ FUN_00544318
        .global A_544318
        .type   A_544318, %function
A_544318:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     sb, #0
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #8
        ldr     r0, [sp, #0x28]
        ldr     r0, [r0, #0xc]
        add     r1, r0, r1, lsl #2
        ldr     r2, [r0, #0x10]
        ldr     r1, [r2, r1]
        add     sl, r0, r1
        add     r0, sl, #0x18
        str     r0, [sp]
        ldrb    r0, [sl, #0x14]
        cmp     r0, #0
        ble     L5445c8
        ldr     fp, L5445e4
        vldr    s20, L5445d8
        vldr    s21, L5445dc
        vldr    s16, L5445e0
        vldr    s17, L5445e8
        vldr    s22, L5445ec
L54436c:
        ldr     r0, [sp]
        ldr     r1, [r0, sb, lsl #2]
        ldr     r0, L5445f0
        add     r7, r1, sl
        add     r8, r7, #8
        ldr     r1, [r7]
        adds    r0, r0, r1
        beq     L5443a4
        add     r0, r0, #0xfe000000
        subs    r0, r0, #0x60000
        beq     L544524
        cmp     r0, #0x6000000
        bne     L5445b8
        b       L544414
L5443a4:
        ldr     r0, [sp, #0x28]
        ldr     r6, [sp, #0x30]
        mov     r4, #0
        vldr    s18, [r0, #0x10]
        ldrb    r0, [r7, #4]
        cmp     r0, #0
        ble     L5445b8
L5443c0:
        ldr     r0, [r8, r4, lsl #2]
        vmov.f32 s0, s18
        add     r1, r0, r7
        ldr     r0, [r1, #8]
        ldrb    r5, [r1, #1]
        add     r0, r0, r1
        ldrh    r1, [r1, #4]
        bl      Fn_5452a0
        add     r0, r6, #0x28
        add     r0, r0, r5, lsl #2
        cmp     r5, #8
        vstr    s0, [r0]
        bhs     L544400
        ldrb    r1, [r6, #0xb7]
        and     r1, r1, #0xcf
        strb    r1, [r6, #0xb7]
L544400:
        ldrb    r0, [r7, #4]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L5443c0
        b       L5445b8
L544414:
        ldr     r0, [sp, #0x28]
        ldr     r5, [sp, #0x30]
        mov     ip, #0
        vldr    s0, [r0, #0x10]
        ldrb    r0, [r7, #4]
        cmp     r0, #0
        ble     L5445b8
L544430:
        ldr     r0, [r8, ip, lsl #2]
        add     r0, r0, r7
        ldr     r1, [r0, #8]
        add     r1, r1, r0
        ldrh    r0, [r0, #4]
        cmp     r0, #1
        beq     L544460
        vmov.f32 s1, s0
        vldr    s2, [r1]
        vcmpe.f32 s1, s2
        vmrs    apsr_nzcv, fpscr
        bhi     L544494
L544460:
        ldrh    r0, [r1, #4]
L544464:
        ldrb    r2, [r5, #0xb7]
        add     ip, ip, #1
        cmp     r0, #0
        movne   r1, #1
        moveq   r1, #0
        and     r2, r2, #0xfe
        orr     r1, r1, r2
        strb    r1, [r5, #0xb7]
        ldrb    r0, [r7, #4]
        cmp     r0, ip
        bgt     L544430
        b       L5445b8
L544494:
        vmov.f32 s1, s0
        add     r2, r1, r0, lsl #3
        vldr    s2, [r2, #-8]
        vcmpe.f32 s2, s1
        vmrs    apsr_nzcv, fpscr
        ldrhls  r0, [r2, #-4]
        movhi   r2, #0
        subhi   r0, r0, #1
        bls     L544464
L5444b8:
        sub     r3, r0, #1
        cmp     r2, r3
        cmpne   r2, r0
        beq     L5444f4
        add     r3, r2, r0
        vmov.f32 s2, s0
        add     r3, r3, r3, lsr #31
        asr     r3, r3, #1
        add     r4, r1, r3, lsl #3
        vldr    s1, [r4]
        vcmpe.f32 s1, s2
        vmrs    apsr_nzcv, fpscr
        movgt   r0, r3
        movle   r2, r3
        b       L5444b8
L5444f4:
        vmov.f32 s1, s0
        add     r0, r1, r0, lsl #3
        vmov.f32 s2, s20
        vldr    s3, [r0]
        vsub.f32 s1, s1, s3
        vcmpe.f32 s21, s1
        vmrs    apsr_nzcv, fpscr
        vcmpelo.f32 s1, s2
        vmrslo  apsr_nzcv, fpscr
        addhs   r0, r1, r2, lsl #3
        ldrh    r0, [r0, #4]
        b       L544464
L544524:
        ldr     r0, [sp, #0x28]
        ldr     r6, [sp, #0x30]
        mov     r5, #0
        vldr    s19, [r0, #0x10]
        ldrb    r0, [r7, #4]
        cmp     r0, #0
        vmovgt.f32 s18, s22
        ble     L5445b8
L544544:
        ldr     r0, [r8, r5, lsl #2]
        vmov.f32 s0, s19
        add     r4, r0, r7
        ldr     r0, [r4, #8]
        ldrh    r1, [r4, #4]
        add     r0, r0, r4
        bl      Fn_5452a0
        vadd.f32 s0, s0, s16
        vmov    r0, s0
        cmp     r0, fp
        vmovgt.f32 s0, s17
        bgt     L544588
        vmov    s0, r0
        vcmpe.f32 s0, s18
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s18
        vmovhs  s0, r0
L544588:
        ldrb    r1, [r4, #1]
        vcvt.u32.f32 s0, s0
        vmov    r0, s0
        and     r2, r0, #0xff
        ldr     r0, [r6]
        ldr     r3, [r0, #0x18]
        mov     r0, r6
        blx     r3
        ldrb    r0, [r7, #4]
        add     r5, r5, #1
        cmp     r0, r5
        bgt     L544544
L5445b8:
        ldrb    r0, [sl, #0x14]
        add     sb, sb, #1
        cmp     r0, sb
        bgt     L54436c
L5445c8:
        add     sp, sp, #8
        vpop    {d8, d9, d10, d11}
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5445d8:
        .word   0x3a83126f
L5445dc:
        .word   0xba83126f
L5445e0:
        .word   0x3f000000
L5445e4:
        .word   0x437f0000
L5445e8:
        .word   0x437f0000
L5445ec:
        .word   0x00000000
L5445f0:
        .word   0xbeafb3bd
        .size   A_544318, . - A_544318

@ FUN_005445f4
        .global A_5445f4
        .type   A_5445f4, %function
A_5445f4:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #0x10
        ldr     r0, [sp, #0x30]
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        beq     L5448bc
        ldr     r2, [r0, #0x10]
        add     r1, r0, r1, lsl #2
        mov     fp, #0
        ldr     r1, [r2, r1]
        add     r0, r0, r1
        str     r0, [sp]
        add     r0, r0, #0x18
        str     r0, [sp, #4]
        ldr     r0, [sp]
        ldrb    r0, [r0, #0x14]
        cmp     r0, #0
        ble     L5448bc
        vldr    s18, L54492c
        vldr    s17, L544930
        vldr    s19, L544934
        vldr    s20, L544938
        vldr    s21, L54493c
L544654:
        ldr     r0, [sp, #4]
        ldr     r1, L544940
        ldr     r2, [r0, fp, lsl #2]
        ldr     r0, [sp]
        add     r6, r2, r0
        add     r8, r6, #8
        ldr     r0, [r6]
        adds    r0, r0, r1
        beq     L544690
        add     r0, r0, #0xf3000000
        subs    r0, r0, #0x70000
        beq     L5447a8
        cmp     r0, #0x3000000
        bne     L5448a8
        b       L544718
L544690:
        ldr     r0, [sp, #0x30]
        ldr     sb, [sp, #0x38]
        mov     r5, #0
        vldr    s16, [r0, #0x10]
        ldrb    r0, [r6, #4]
        cmp     r0, #0
        ldrgt   r7, L544944
        ble     L5448a8
L5446b0:
        ldr     r0, [r8, r5, lsl #2]
        vmov.f32 s0, s16
        add     r4, r0, r6
        ldr     r0, [r4, #8]
        ldrh    r1, [r4, #4]
        add     r0, r0, r4
        bl      Fn_5452a0
        vadd.f32 s0, s0, s18
        vcmpe.f32 s0, s17
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s17
        blo     L5446ec
        vmov    r0, s0
        cmp     r0, r7
        vmovgt.f32 s0, s19
L5446ec:
        ldrb    r1, [r4, #1]
        vcvt.u32.f32 s0, s0
        vmov    r0, s0
        and     r2, r0, #0xff
        mov     r0, sb
        bl      Fn_54d9b0
        ldrb    r0, [r6, #4]
        add     r5, r5, #1
        cmp     r0, r5
        bgt     L5446b0
        b       L5448a8
L544718:
        ldr     r0, [sp, #0x30]
        ldr     r5, [sp, #0x38]
        mov     r4, #0
        vldr    s22, [r0, #0x10]
        ldrb    r0, [r6, #4]
        cmp     r0, #0
        ble     L5448a8
L544734:
        ldr     r0, [r8, r4, lsl #2]
        ldr     r2, [r5, #0x2c]
        add     r1, r0, r6
        ldrb    r7, [r1]
        lsl     r0, r2, #0x1c
        lsr     r0, r0, #0x1e
        cmp     r7, r0
        bhs     L544794
        ldr     r0, [r1, #8]
        vmov.f32 s0, s22
        ldrb    sb, [r1, #1]
        add     r0, r0, r1
        ldrh    r1, [r1, #4]
        bl      Fn_5452a0
        vmov.f32 s16, s0
        mov     r0, r5
        bl      Fn_54c5d8
        add     r1, r7, r7, lsl #2
        add     r0, r0, r1, lsl #2
        add     r0, r0, sb, lsl #2
        vstr    s16, [r0]
        ldrb    r1, [r5, #0x4d]
        and     r1, r1, #0xfb
        strb    r1, [r5, #0x4d]
L544794:
        ldrb    r0, [r6, #4]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L544734
        b       L5448a8
L5447a8:
        ldr     r0, [sp, #0x30]
        ldr     sb, [r0, #0x14]
        cmp     sb, #0
        beq     L5448a8
        vldr    s16, [r0, #0x10]
        ldrb    r0, [r6, #4]
        ldr     r7, [sp, #0x38]
        mov     r4, #0
        cmp     r0, #0
        ble     L5448a8
L5447d0:
        ldr     r0, [r8, r4, lsl #2]
        ldr     r1, [r7, #0x30]
        ldrb    r2, [r0, r6]!
        and     r1, r1, #3
        cmp     r2, r1
        bhs     L544898
        ldr     r1, [r0, #8]
        add     r3, r0, r1
        ldrh    r0, [r0, #4]
        cmp     r0, #1
        beq     L544810
        vmov.f32 s0, s16
        vldr    s1, [r3]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        bhi     L5448cc
L544810:
        ldrh    r0, [r3, #4]
L544814:
        add     sl, r0, r0, lsl #2
        add     r5, sb, sl, lsl #2
        ldr     r0, [r5, #4]
        cmp     r0, #0
        beq     L544898
        mov     r0, r7
        str     r2, [sp, #8]
        ldr     r0, [r0, #0x34]
        ldr     r2, [sp, #8]
        ldr     r1, [sb, sl, lsl #2]
        add     r0, r0, r2, lsl #5
        mov     r2, #0xf00
        str     r1, [r0]
        ldr     r1, [r5, #4]
        str     r1, [r0, #4]
        ldrh    r1, [r5, #8]
        strh    r1, [r0, #8]
        ldrh    r1, [r5, #0xa]
        strh    r1, [r0, #0xa]
        ldrh    r1, [r5, #0xc]
        strh    r1, [r0, #0xc]
        ldrh    r1, [r5, #0xe]
        strh    r1, [r0, #0xe]
        ldrb    r1, [r5, #0x10]
        ldr     r3, [r0, #0x10]
        and     r1, r2, r1, lsl #8
        bic     r2, r3, #0xf00
        orr     r1, r1, r2
        str     r1, [r0, #0x10]
        bl      Fn_548e78
        ldrb    r1, [r7, #0x4d]
        and     r1, r1, #0xfb
        strb    r1, [r7, #0x4d]
L544898:
        ldrb    r0, [r6, #4]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L5447d0
L5448a8:
        ldr     r0, [sp]
        add     fp, fp, #1
        ldrb    r0, [r0, #0x14]
        cmp     r0, fp
        bgt     L544654
L5448bc:
        add     sp, sp, #0x10
        vpop    {d8, d9, d10, d11}
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5448cc:
        vmov.f32 s0, s16
        add     r1, r3, r0, lsl #3
        vldr    s1, [r1, #-8]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        ldrhls  r0, [r1, #-4]
        movhi   r1, #0
        subhi   r0, r0, #1
        bls     L544814
L5448f0:
        sub     ip, r0, #1
        cmp     r1, ip
        cmpne   r1, r0
        beq     L544948
        add     ip, r1, r0
        vmov.f32 s1, s16
        add     ip, ip, ip, lsr #31
        asr     ip, ip, #1
        add     r5, r3, ip, lsl #3
        vldr    s0, [r5]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        movgt   r0, ip
        movle   r1, ip
        b       L5448f0
L54492c:
        .word   0x3f000000
L544930:
        .word   0x00000000
L544934:
        .word   0x437f0000
L544938:
        .word   0x3a83126f
L54493c:
        .word   0xba83126f
L544940:
        .word   0xbcb2b3bd
L544944:
        .word   0x437f0000
L544948:
        vmov.f32 s0, s16
        add     r0, r3, r0, lsl #3
        vmov.f32 s1, s20
        vldr    s2, [r0]
        vsub.f32 s0, s0, s2
        vcmpe.f32 s21, s0
        vmrs    apsr_nzcv, fpscr
        vcmpelo.f32 s0, s1
        vmrslo  apsr_nzcv, fpscr
        addhs   r0, r3, r1, lsl #3
        ldrh    r0, [r0, #4]
        b       L544814
        .size   A_5445f4, . - A_5445f4

@ FUN_00544978
        .global A_544978
        .type   A_544978, %function
A_544978:
        mov     r1, #0
        str     r1, [r0, #4]
        vldr    s0, L5449a8
        str     r1, [r0, #8]
        ldr     r2, L5449ac
        str     r1, [r0, #0xc]
        vstr    s0, [r0, #0x10]
        str     r1, [r0, #0x14]
        str     r2, [r0]
        str     r1, [r0, #0x18]
        strh    r1, [r0, #0x1c]
        bx      lr
L5449a8:
        .word   0x00000000
L5449ac:
        .word   0x0082c594
        .size   A_544978, . - A_544978

@ FUN_005449e8
        .global A_5449e8
        .type   A_5449e8, %function
A_5449e8:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L544a18
        str     r0, [r4]
        ldr     r0, [r4, #0x18]
        cmp     r0, #0
        blne    Fn_548334
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        blne    Fn_548334
        mov     r0, r4
        pop     {r4, pc}
L544a18:
        .word   0x0082c594
        .size   A_5449e8, . - A_5449e8

@ FUN_00544a1c
        .global A_544a1c
        .type   A_544a1c, %function
A_544a1c:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        sub     sp, sp, #0x18
        mov     r5, r0
        mov     r6, r2
        add     r1, r1, #0x30
        bl      Fn_543e3c
        ldr     r0, [r5, #4]
        cmp     r0, #0
        bne     L544a7c
        ldr     r0, [r4]
        mov     r2, r6
        mov     r1, r4
        ldr     r3, [r0, #0x14]
        mov     r0, sp
        blx     r3
        ldm     sp, {r0, r1, r2, r3, ip}
        cmp     r1, #0
        stm     r5, {r0, r1, r2, r3, ip}
        beq     L544a7c
        mov     r2, r5
        mov     r1, r6
        add     r0, r4, #0x30
        bl      Fn_543d94
L544a7c:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, pc}
        .size   A_544a1c, . - A_544a1c

@ FUN_00544a84
        .global A_544a84
        .type   A_544a84, %function
A_544a84:
        push    {r3, r4, r5, r6, r7, lr}
        add     ip, r0, #0xbc
        mov     r6, #0x3f
        mov     r4, #0
L544a94:
        ldrsb   r5, [r2]
        cmp     r5, #0
        beq     L544ab4
        add     r4, r4, #1
        cmp     r6, r4
        add     r2, r2, #1
        strh    r5, [ip], #2
        bhi     L544a94
L544ab4:
        mov     r2, #0
        strh    r2, [ip]
        mov     r2, r1
        str     r3, [sp]
        add     r3, r0, #0xbc
        add     r1, r0, #0x3c
        add     r0, r0, #4
        bl      Fn_5462a0
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_544a84, . - A_544a84

@ FUN_00544b3c
        .global A_544b3c
        .type   A_544b3c, %function
A_544b3c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, r1
        add     r0, r0, #0x24
        bl      Fn_542fd8
        movs    r5, r0
        bne     L544b88
        ldr     r0, [r4]
        mov     r1, r6
        ldr     r2, [r0, #0x18]
        mov     r0, r4
        blx     r2
        movs    r5, r0
        beq     L544b88
        mov     r2, r0
        mov     r3, #1
        mov     r1, r6
        add     r0, r4, #0x24
        bl      Fn_542f48
L544b88:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_544b3c, . - A_544b3c

@ FUN_00544c04
        .global A_544c04
        .type   A_544c04, %function
A_544c04:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L544c34
        str     r0, [r4]
        add     r0, r4, #0x30
        bl      Fn_543ecc
        sub     r4, r0, #0x30
        sub     r0, r0, #0xc
        bl      Fn_543028
        pop     {r4, lr}
        sub     r0, r0, #0x24
        b       Fn_543d90
L544c34:
        .word   0x0082c5bc
        .size   A_544c04, . - A_544c04

@ FUN_00544c58
        .global A_544c58
        .type   A_544c58, %function
A_544c58:
        ldrd    r0, r1, [r0]
        ldr     r0, [r0]
        add     r0, r0, r1
        bx      lr
        .size   A_544c58, . - A_544c58

@ FUN_00544c68
        .global A_544c68
        .type   A_544c68, %function
A_544c68:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     sb, r0
        mov     sl, r1
        ldr     r7, [r0, #4]!
        ldr     r6, [r0, #0x14]
L544c80:
        ldrh    r0, [sl]
        cmp     r0, #0
        beq     L544e28
        cmp     r0, #0x2f
        moveq   r6, #0
        addeq   sl, sl, #2
        beq     L544c80
        cmp     r0, #0x2e
        bne     L544cc4
        ldrh    r0, [sl, #2]
        cmp     r0, #0x2e
        beq     L544d24
        cmp     r0, #0x2f
        addeq   sl, sl, #4
        beq     L544c80
        cmp     r0, #0
        beq     L544e28
L544cc4:
        mov     r0, sl
L544cc8:
        ldrh    r1, [r0]
        cmp     r1, #0
        beq     L544ce4
        cmp     r1, #0x2f
        addne   r0, r0, #2
        bne     L544cc8
        mov     r1, #1
L544ce4:
        add     r2, r6, r6, lsl #1
        sub     r3, r0, sl
        add     r2, r7, r2, lsl #2
        str     r2, [sp, #8]
        ldr     r0, [r2, #8]
        add     r6, r6, #1
        str     r1, [sp]
        cmp     r0, r6
        asr     r0, r3, #1
        str     r0, [sp, #4]
        bls     L544e00
L544d10:
        add     r8, r6, r6, lsl #1
        ldr     r0, [r7, r8, lsl #2]
        tst     r0, #0xff000000
        bne     L544d6c
        b       L544d60
L544d24:
        ldrh    r0, [sl, #4]
        cmp     r0, #0x2f
        beq     L544d4c
        cmp     r0, #0
        bne     L544cc4
        add     r0, r6, r6, lsl #1
        add     r0, r7, r0, lsl #2
        ldr     r0, [r0, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L544d4c:
        add     r0, r6, r6, lsl #1
        add     sl, sl, #6
        add     r0, r7, r0, lsl #2
        ldr     r6, [r0, #4]
        b       L544c80
L544d60:
        ldr     r1, [sp]
        cmp     r1, #0
        bne     L544dec
L544d6c:
        ldr     r1, [sb, #0x10]
        bic     r0, r0, #0xff000000
        add     r4, r1, r0
        ldrh    r0, [r4]
        cmp     r0, #0x2e
        ldrheq  r1, [r4, #2]
        cmpeq   r1, #0
        addeq   r6, r6, #1
        beq     L544d10
        cmp     r0, #0
        mov     r5, sl
        beq     L544dc8
L544d9c:
        ldrh    r0, [r5], #2
        blx     Fn_000114_t
        mov     fp, r0
        ldrh    r0, [r4], #2
        blx     Fn_000114_t
        cmp     fp, r0
        nop
        bne     L544dd8
        ldrh    r0, [r4]
        cmp     r0, #0
        bne     L544d9c
L544dc8:
        ldrh    r0, [r5]
        cmp     r0, #0x2f
        cmpne   r0, #0
        beq     L544e0c
L544dd8:
        ldr     r0, [r7, r8, lsl #2]
        tst     r0, #0xff000000
        addne   r0, r7, r8, lsl #2
        ldrne   r6, [r0, #8]
        bne     L544df0
L544dec:
        add     r6, r6, #1
L544df0:
        ldr     r0, [sp, #8]
        ldr     r0, [r0, #8]
        cmp     r0, r6
        bhi     L544d10
L544e00:
        add     sp, sp, #0xc
        mvn     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L544e0c:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L544e28
        ldr     r0, [sp, #4]
        add     r0, sl, r0, lsl #1
        add     sl, r0, #2
        b       L544c80
L544e28:
        add     sp, sp, #0xc
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_544c68, . - A_544c68

@ FUN_00544e34
        .global A_544e34
        .type   A_544e34, %function
A_544e34:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        sub     sp, sp, #0x18
        mov     r5, r0
        mov     r6, r2
        add     r1, r1, #0x1c
        bl      Fn_543e3c
        ldr     r0, [r5, #4]
        cmp     r0, #0
        bne     L544e94
        ldr     r0, [r4]
        mov     r2, r6
        mov     r1, r4
        ldr     r3, [r0, #0x14]
        mov     r0, sp
        blx     r3
        ldm     sp, {r0, r1, r2, r3, ip}
        cmp     r1, #0
        stm     r5, {r0, r1, r2, r3, ip}
        beq     L544e94
        mov     r2, r5
        mov     r1, r6
        add     r0, r4, #0x1c
        bl      Fn_543d94
L544e94:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, pc}
        .size   A_544e34, . - A_544e34

@ FUN_00544e9c
        .global A_544e9c
        .type   A_544e9c, %function
A_544e9c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r0
        mov     r7, r1
        add     r1, r0, #0x28
        sub     sp, sp, #0x34
        mov     r8, r3
        mov     ip, #0x3f
        mov     r0, #0
L544ebc:
        ldrsb   r3, [r2]
        cmp     r3, #0
        beq     L544edc
        add     r0, r0, #1
        cmp     ip, r0
        add     r2, r2, #1
        strh    r3, [r1], #2
        bhi     L544ebc
L544edc:
        mov     r2, #0
        strh    r2, [r1]
        ldr     r5, [r6, #8]
        add     r0, r6, #8
        cmp     r5, r0
        beq     L545108
        lsl     r0, r7, #0x10
        lsl     r1, r7, #8
        lsr     r0, r0, #0x18
        str     r0, [sp, #0x28]
        lsr     r1, r1, #0x18
        lsr     r0, r7, #0x18
        strd    r0, r1, [sp, #0x20]
        and     r0, r7, #0xff
        str     r0, [sp, #0x2c]
L544f18:
        add     sb, r5, #8
        add     fp, r5, #0x24
        add     sl, r6, #0x28
        mvn     r4, #0
        mov     r1, fp
        mov     r0, sb
        bl      Fn_544c68
        cmn     r0, #1
        nop
        beq     L5450ec
        mov     r1, fp
        mov     r0, sb
        bl      Fn_542d2c
        cmp     r0, #0
        nop
        beq     L5450ec
        cmp     r7, #0
        beq     L545034
        ldr     r1, [sp, #0x20]
        mov     r0, #0
        strh    r0, [sp, #8]
        strh    r1, [sp]
        ldr     r1, [sp, #0x24]
        mov     r0, sb
        strh    r1, [sp, #2]
        ldr     r1, [sp, #0x28]
        strh    r1, [sp, #4]
        ldr     r1, [sp, #0x2c]
        strh    r1, [sp, #6]
        mov     r1, sp
        bl      Fn_544c68
        cmn     r0, #1
        nop
        beq     L544fd4
        mov     r1, sp
        mov     r0, sb
        bl      Fn_542d2c
        cmp     r0, #0
        nop
        beq     L544fd4
        mov     r1, sl
        mov     r0, sb
        bl      Fn_544c68
        mov     r4, r0
        ldr     r1, L545114
        mov     r0, sb
        bl      Fn_542d2c
L544fd4:
        ldr     r1, L545114
        mov     r0, sb
        bl      Fn_542d2c
        cmn     r4, #1
        nop
        beq     L5450f8
        mov     r2, sp
        mov     r1, r4
        mov     r0, sb
        bl      Fn_5426ac
        mov     r0, sp
        nop
        bl      Fn_544c58
        cmp     r8, #0
        mov     r4, r0
        beq     L545020
        mov     r0, sp
        ldr     r0, [r0, #8]
        str     r0, [r8]
L545020:
        mov     r0, sp
        mov     r0, #1
        mov     r0, r4
        nop
        b       L5450f0
L545034:
        ldr     r1, L545118
        mvn     r4, #0
        mov     r2, sp
        mov     r0, sb
        bl      Fn_5425b4
        add     r1, sp, #0x10
        mov     r0, sp
        bl      Fn_54260c
        cmp     r0, #0
        nop
        beq     L5450d0
L545060:
        ldrb    r0, [sp, #0x1c]
        ldr     r1, [sp, #0x18]
        cmp     r0, #0
        beq     L5450a4
        mov     r0, sb
        bl      Fn_542d2c
        mov     r1, sl
        mov     r0, sb
        bl      Fn_546488
        mov     r4, r0
        ldr     r1, L545114
        mov     r0, sb
        bl      Fn_542d2c
        cmn     r4, #1
        nop
        bne     L5450d0
        b       L5450b8
L5450a4:
        mov     r0, sl
        blx     Fn_000d1e_t
        cmp     r0, #0
        nop
        beq     L5450e4
L5450b8:
        add     r1, sp, #0x10
        mov     r0, sp
        bl      Fn_54260c
        cmp     r0, #0
        nop
        bne     L545060
L5450d0:
        mov     r0, sp
        mov     r0, #1
        nop
        nop
        b       L544fd4
L5450e4:
        ldr     r4, [sp, #0x14]
        b       L5450d0
L5450ec:
        mov     r0, #0
L5450f0:
        cmp     r0, #0
        bne     L54510c
L5450f8:
        ldr     r5, [r5]
        add     r0, r6, #8
        cmp     r5, r0
        bne     L544f18
L545108:
        mov     r0, #0
L54510c:
        add     sp, sp, #0x34
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L545114:
        .word   0x007e96e8
L545118:
        .word   0x007e96e4
        .size   A_544e9c, . - A_544e9c

@ FUN_0054517c
        .global A_54517c
        .type   A_54517c, %function
A_54517c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, r1
        add     r0, r0, #0x10
        bl      Fn_542fd8
        movs    r5, r0
        bne     L5451c8
        ldr     r0, [r4]
        mov     r1, r6
        ldr     r2, [r0, #0x18]
        mov     r0, r4
        blx     r2
        movs    r5, r0
        beq     L5451c8
        mov     r2, r0
        mov     r3, #1
        mov     r1, r6
        add     r0, r4, #0x10
        bl      Fn_542f48
L5451c8:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_54517c, . - A_54517c

@ FUN_00545260
        .global A_545260
        .type   A_545260, %function
A_545260:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L54529c
        add     r2, r4, #8
        str     r0, [r4]
        ldr     r1, [r4, #8]
        add     r0, r4, #4
        bl      Fn_5421a0
        add     r0, r4, #0x1c
        bl      Fn_543ecc
        sub     r0, r0, #0xc
        bl      Fn_543028
        pop     {r4, lr}
        sub     r0, r0, #0x10
        b       Fn_543d90
L54529c:
        .word   0x0082c5e0
        .size   A_545260, . - A_545260

@ FUN_005452a0
        .global A_5452a0
        .type   A_5452a0, %function
A_5452a0:
        cmp     r1, #1
        vldrne  s1, [r0]
        vcmpene.f32 s0, s1
        vmrsne  apsr_nzcv, fpscr
        vldrls  s0, [r0, #4]
        bxls    lr
        add     r2, r1, r1, lsl #1
        add     r2, r0, r2, lsl #2
        vldr    s1, [r2, #-0xc]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vldrls  s0, [r2, #-8]
        movhi   r3, #0
        subhi   r2, r1, #1
        bxls    lr
        str     r4, [sp, #-4]!
L5452e0:
        sub     ip, r2, #1
        cmp     r3, ip
        cmpne   r3, r2
        beq     L545318
        add     ip, r3, r2
        lsr     ip, ip, #1
        add     r4, ip, ip, lsl #1
        add     r4, r0, r4, lsl #2
        vldr    s1, [r4]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        movls   r2, ip
        movhi   r3, ip
        b       L5452e0
L545318:
        add     r4, r2, r2, lsl #1
        add     ip, r3, r3, lsl #1
        add     r3, r0, r4, lsl #2
        vldr    s4, L545400
        vldr    s1, [r3]
        vldr    s3, L5453fc
        add     r0, r0, ip, lsl #2
        vsub.f32 s2, s0, s1
        vcmpe.f32 s4, s2
        vmrs    apsr_nzcv, fpscr
        vcmpelo.f32 s2, s3
        vmrslo  apsr_nzcv, fpscr
        bhs     L54537c
        sub     r0, r1, #1
        cmp     r2, r0
        bhs     L545370
        vldr    s0, [r3, #0xc]
        mov     r0, r3
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vldreq  s0, [r0, #0x10]
        beq     L545374
L545370:
        vldr    s0, [r3, #4]
L545374:
        pop     {r4}
        bx      lr
L54537c:
        vldr    s2, [r0]
        vldr    s9, L545404
        vldr    s8, L545408
        vsub.f32 s4, s1, s2
        vsub.f32 s1, s0, s2
        vldr    s10, L54540c
        vldr    s12, L545410
        vldr    s6, [r0, #4]
        vldr    s5, [r3, #4]
        vldr    s11, [r0, #8]
        vldr    s7, [r3, #8]
        pop     {r4}
        vdiv.f32 s3, s9, s4
        vmul.f32 s0, s1, s1
        vmul.f32 s4, s0, s3
        vmul.f32 s2, s4, s3
        vmul.f32 s0, s1, s2
        vmul.f32 s3, s0, s3
        vmov.f32 s13, s0
        vmls.f32 s13, s4, s8
        vsub.f32 s4, s0, s4
        vmul.f32 s0, s3, s8
        vmul.f32 s3, s3, s12
        vadd.f32 s1, s13, s1
        vmls.f32 s0, s2, s10
        vmla.f32 s3, s2, s10
        vadd.f32 s0, s0, s9
        vmul.f32 s0, s0, s6
        vmla.f32 s0, s5, s3
        vmla.f32 s0, s11, s1
        vmla.f32 s0, s7, s4
        bx      lr
L5453fc:
        .word   0x3a83126f
L545400:
        .word   0xba83126f
L545404:
        .word   0x3f800000
L545408:
        .word   0x40000000
L54540c:
        .word   0x40400000
L545410:
        .word   0xc0000000
        .size   A_5452a0, . - A_5452a0

@ FUN_00545414
        .global A_545414
        .type   A_545414, %function
A_545414:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #0x20]!
        mov     r6, r1
        cmp     r4, r0
        beq     L545460
L54542c:
        ldrb    r0, [r4, #0xe]
        cmp     r0, #0
        bne     L545450
        ldr     r0, [r4, #8]
        ldrh    r1, [r4, #0xc]
        ldr     r2, [r0]
        ldr     r3, [r2, #8]
        mov     r2, r5
        blx     r3
L545450:
        ldr     r4, [r4]
        add     r0, r5, #0x20
        cmp     r4, r0
        bne     L54542c
L545460:
        ldrb    r0, [r5, #0xb7]
        ands    r0, r0, #1
        movne   r0, #1
        bic     r0, r6, r0
        tst     r0, #1
        bne     L5454c8
        ldr     r0, [r5]
        ldr     r1, [r0, #0x24]
        mov     r0, r5
        blx     r1
        subs    r6, r0, #0
        mov     r4, #0
        bls     L5454c8
L545494:
        ldr     r0, [r5]
        mov     r1, r4
        ldr     r2, [r0, #0x28]
        mov     r0, r5
        blx     r2
        cmp     r0, #0
        beq     L5454bc
        ldr     r1, [r0]
        ldr     r1, [r1, #0x14]
        blx     r1
L5454bc:
        add     r4, r4, #1
        cmp     r4, r6
        blo     L545494
L5454c8:
        pop     {r4, r5, r6, pc}
        .size   A_545414, . - A_545414

@ FUN_005455dc
        .global A_5455dc
        .type   A_5455dc, %function
A_5455dc:
        push    {r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        vpush   {d8}
        sub     sp, sp, #0x4c
        ldrb    r0, [r0, #0xb7]
        tst     r0, #1
        bne     L54560c
        ldrb    r1, [r6, #0x88]
        and     r1, r1, #4
        lsrs    r1, r1, #2
        beq     L545934
L54560c:
        tst     r0, #0x80
        bne     L545878
        ldr     r1, [r4, #0xc]
        cmp     r1, #0
        addne   r5, r1, #0x80
        addeq   r5, r6, #0x44
        tst     r0, #0x40
        beq     L545648
L54562c:
        add     r2, r4, #0x50
        mov     r1, r5
        add     r0, r4, #0x80
        bl      Fn_00ff74
        nop
        nop
        b       L545878
L545648:
        ldrb    r1, [r6, #0x88]
        mov     r0, #1
        and     r1, r1, #2
        lsrs    r1, r1, #1
        add     r1, r4, #0x40
        vldmia  r1, {s0, s1}
        beq     L545684
        ldrb    r1, [r4, #0xb7]
        tst     r1, #4
        beq     L545684
        add     r1, r6, #0x74
        mov     r0, #2
        vldmia  r1, {s2, s3}
        vmul.f32 s0, s2, s0
        vmul.f32 s1, s3, s1
L545684:
        add     r1, sp, #0x30
        vldr    s16, L545980
        vldr    s17, L545984
        vstmia  r1, {s0, s1}
        vldr    s0, [r4, #0x34]
        vcmp.f32 s0, s16
        vmrs    apsr_nzcv, fpscr
        vldreq  s0, [r4, #0x38]
        vcmpeq.f32 s0, s16
        vmrseq  apsr_nzcv, fpscr
        beq     L5457bc
        ldrb    r1, [r4, #0xb7]
        lsl     r2, r1, #0x1a
        lsr     r2, r2, #0x1e
        cmp     r2, r0
        beq     L54562c
        lsl     r2, r0, #4
        and     r0, r1, #0xcf
        orr     r0, r0, r2
        strb    r0, [r4, #0xb7]
        vldr    s0, [r4, #0x34]
        mov     r1, sp
        add     r0, sp, #8
        vmul.f32 s0, s0, s17
        bl      Fn_01c6d4
        vldr    s0, [r4, #0x38]
        add     r1, sp, #0x14
        add     r0, sp, #0xc
        vmul.f32 s0, s0, s17
        bl      Fn_01c6d4
        vldr    s0, [r4, #0x3c]
        add     r1, sp, #4
        add     r0, sp, #0x10
        vmul.f32 s0, s0, s17
        bl      Fn_01c6d4
        add     r2, sp, #0xc
        vldr    s9, [sp]
        vldr    s3, [sp, #4]
        vldr    s2, [sp, #8]
        vldr    s6, [sp, #0x14]
        vmul.f32 s4, s9, s3
        vldmia  r2, {s0, s1}
        vmul.f32 s11, s6, s3
        vldr    s8, [sp, #0x30]
        vmul.f32 s13, s2, s6
        vmul.f32 s7, s2, s0
        vmul.f32 s5, s9, s1
        vmul.f32 s12, s6, s1
        vmul.f32 s9, s9, s6
        vnmul.f32 s14, s8, s0
        vmul.f32 s6, s4, s0
        vldr    s10, [sp, #0x34]
        add     r2, r4, #0x54
        vmla.f32 s4, s7, s1
        vmul.f32 s0, s5, s0
        vnmls.f32 s5, s7, s3
        vmul.f32 s7, s8, s11
        vmul.f32 s8, s8, s12
        vmla.f32 s6, s2, s1
        vmul.f32 s11, s10, s13
        vmul.f32 s1, s10, s4
        vmls.f32 s0, s2, s3
        vmul.f32 s5, s10, s5
        vstr    s7, [r4, #0x50]
        vstmia  r2, {s5, s6}
        ldr     r0, [r4, #0x28]
        str     r0, [r4, #0x5c]
        vstr    s8, [r4, #0x60]
        vstr    s1, [r4, #0x64]
        vstr    s0, [r4, #0x68]
        ldr     r0, [r4, #0x2c]
        str     r0, [r4, #0x6c]
        vstr    s14, [r4, #0x70]
        vstr    s11, [r4, #0x74]
        vstr    s9, [r4, #0x78]
        ldr     r0, [r4, #0x30]
        str     r0, [r4, #0x7c]
        b       L54562c
L5457bc:
        vldr    s0, [r4, #0x3c]
        vcmp.f32 s0, s16
        vmrs    apsr_nzcv, fpscr
        beq     L545864
        ldrb    r1, [r4, #0xb7]
        lsl     r2, r1, #0x1a
        lsr     r2, r2, #0x1e
        cmp     r2, r0
        beq     L54562c
        vmul.f32 s0, s0, s17
        lsl     r2, r0, #4
        and     r0, r1, #0xcf
        orr     r0, r0, r2
        strb    r0, [r4, #0xb7]
        add     r1, sp, #0x2c
        mov     r0, sp
        bl      Fn_01c6d4
        add     r2, sp, #0x30
        vldr    s2, [sp, #0x2c]
        vldr    s4, [sp]
        vldr    s5, L545988
        vldmia  r2, {s0, s1}
        vmul.f32 s3, s0, s2
        vmul.f32 s2, s1, s2
        vnmul.f32 s1, s1, s4
        vmul.f32 s0, s0, s4
        vstr    s3, [r4, #0x50]
        vstr    s1, [r4, #0x54]
        vstr    s16, [r4, #0x58]
        ldr     r0, [r4, #0x28]
        str     r0, [r4, #0x5c]
        vstr    s0, [r4, #0x60]
        vstr    s2, [r4, #0x64]
        vstr    s16, [r4, #0x68]
        ldr     r0, [r4, #0x2c]
        str     r0, [r4, #0x6c]
        vstr    s16, [r4, #0x70]
        vstr    s16, [r4, #0x74]
        vstr    s5, [r4, #0x78]
        ldr     r0, [r4, #0x30]
        str     r0, [r4, #0x7c]
        b       L54562c
L545864:
        add     r3, r4, #0x28
        add     r2, sp, #0x30
        mov     r1, r5
        add     r0, r4, #0x80
        bl      Fn_030bec
L545878:
        ldrb    r0, [r6, #0x88]
        tst     r0, #1
        ldrne   r0, [r4, #0xc]
        cmpne   r0, #0
        ldrb    r0, [r4, #0xb4]
        beq     L5458a8
        vmov    s0, r0
        vldr    s1, [r6, #0x7c]
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s1
        vcvt.u32.f32 s0, s0
        vmov    r0, s0
L5458a8:
        strb    r0, [r4, #0xb5]
        ldrb    r0, [r4, #0xb7]
        tst     r0, #2
        ldrbne  r0, [r4, #0xb4]
        cmpne   r0, #0xff
        beq     L545940
        vmov    s0, r0
        vldr    s16, [r6, #0x7c]
        vldr    s1, L54598c
        ldrb    r0, [r6, #0x88]
        vcvt.f32.u32 s0, s0
        and     r7, r0, #1
        orr     r0, r0, #1
        vmul.f32 s0, s0, s16
        vmul.f32 s0, s0, s1
        vstr    s0, [r6, #0x7c]
        strb    r0, [r6, #0x88]
        ldr     r5, [r4, #0x14]
        add     r0, r4, #0x14
        cmp     r5, r0
        beq     L545920
L5458fc:
        ldr     r1, [r5, #-4]
        sub     r0, r5, #4
        ldr     r2, [r1, #0x5c]
        mov     r1, r6
        blx     r2
        ldr     r5, [r5]
        add     r0, r4, #0x14
        cmp     r5, r0
        bne     L5458fc
L545920:
        vstr    s16, [r6, #0x7c]
        ldrb    r0, [r6, #0x88]
        bic     r0, r0, #1
        orr     r0, r0, r7
        strb    r0, [r6, #0x88]
L545934:
        add     sp, sp, #0x4c
        vpop    {d8}
        pop     {r4, r5, r6, r7, pc}
L545940:
        ldr     r5, [r4, #0x14]
        add     r0, r4, #0x14
        cmp     r5, r0
        beq     L545934
L545950:
        ldr     r1, [r5, #-4]
        sub     r0, r5, #4
        ldr     r2, [r1, #0x5c]
        mov     r1, r6
        blx     r2
        ldr     r5, [r5]
        add     r0, r4, #0x14
        cmp     r5, r0
        bne     L545950
        add     sp, sp, #0x4c
        vpop    {d8}
        pop     {r4, r5, r6, r7, pc}
L545980:
        .word   0x00000000
L545984:
        .word   0x3f360b61
L545988:
        .word   0x3f800000
L54598c:
        .word   0x3b808081
        .size   A_5455dc, . - A_5455dc

@ FUN_005459b8
        .global A_5459b8
        .type   A_5459b8, %function
A_5459b8:
        push    {r4, r5}
        mov     r4, r0
        mov     r0, r1
        ldr     r1, [r1]
        ldr     ip, [r1, #0x18]
        mov     r1, r4
        pop     {r4, r5}
        bx      ip
        .size   A_5459b8, . - A_5459b8

@ FUN_005459d8
        .global A_5459d8
        .type   A_5459d8, %function
A_5459d8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r2
        mov     r7, r1
        add     r0, r0, #0xb8
        bl      Fn_54e84c
        cmp     r0, #0
        movne   r0, r5
        bne     L545a48
        cmp     r6, #0
        beq     L545a44
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L545a44
L545a14:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        mov     r2, r6
        ldr     r3, [r1, #0x2c]
        mov     r1, r7
        blx     r3
        cmp     r0, #0
        bne     L545a48
        ldr     r4, [r4]
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L545a14
L545a44:
        mov     r0, #0
L545a48:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5459d8, . - A_5459d8

@ FUN_00545a68
        .global A_545a68
        .type   A_545a68, %function
A_545a68:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r2
        ldr     r0, [r0]
        mov     r7, r1
        ldr     r2, [r0, #0x48]
        mov     r0, r5
        blx     r2
        cmp     r6, #0
        beq     L545ac8
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L545ac8
L545aa0:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        mov     r2, r6
        ldr     r3, [r1, #0x40]
        mov     r1, r7
        blx     r3
        ldr     r4, [r4]
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L545aa0
L545ac8:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_545a68, . - A_545a68

@ FUN_00545acc
        .global A_545acc
        .type   A_545acc, %function
A_545acc:
        add     r0, r0, #0x1c
        mov     r2, r1
        add     r1, r0, #4
        b       Fn_542230
        .size   A_545acc, . - A_545acc

@ FUN_00545adc
        .global A_545adc
        .type   A_545adc, %function
A_545adc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     r8, r2
        mov     sb, r1
        ldr     r0, [r0]
        ldr     r1, [r0, #0x24]
        mov     r0, r5
        blx     r1
        subs    r7, r0, #0
        mov     r4, #0
        bls     L545b50
L545b08:
        ldr     r0, [r5]
        mov     r1, r4
        ldr     r2, [r0, #0x28]
        mov     r0, r5
        blx     r2
        movs    r6, r0
        beq     L545b44
        mov     r1, sb
        add     r0, r6, #0x38
        bl      Fn_54e974
        cmp     r0, #0
        nop
        beq     L545b44
        mov     r0, r6
L545b40:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L545b44:
        add     r4, r4, #1
        cmp     r4, r7
        blo     L545b08
L545b50:
        cmp     r8, #0
        beq     L545b98
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L545b98
L545b68:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        mov     r2, r8
        ldr     r3, [r1, #0x30]
        mov     r1, sb
        blx     r3
        cmp     r0, #0
        bne     L545b40
        ldr     r4, [r4]
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L545b68
L545b98:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_545adc, . - A_545adc

@ FUN_00545ba0
        .global A_545ba0
        .type   A_545ba0, %function
A_545ba0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     r7, r2
        mov     r8, r3
        ldr     r0, [r0]
        mov     sb, r1
        ldr     r2, [r0, #0x4c]
        mov     r0, r5
        blx     r2
        cmp     r0, #0
        eorne   r1, r7, #1
        strbne  r1, [r0, #0xe]
        ldr     r0, [r5]
        ldr     r1, [r0, #0x24]
        mov     r0, r5
        blx     r1
        subs    r6, r0, #0
        mov     r4, #0
        bls     L545c20
L545bec:
        ldr     r0, [r5]
        mov     r1, r4
        ldr     r2, [r0, #0x28]
        mov     r0, r5
        blx     r2
        ldr     r1, [r0]
        mov     r2, r7
        ldr     r3, [r1, #0x20]
        mov     r1, sb
        blx     r3
        add     r4, r4, #1
        cmp     r6, r4
        bhi     L545bec
L545c20:
        cmp     r8, #0
        beq     L545c64
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L545c64
L545c38:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        mov     r3, r8
        mov     r2, r7
        ldr     ip, [r1, #0x54]
        mov     r1, sb
        blx     ip
        ldr     r4, [r4]
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L545c38
L545c64:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_545ba0, . - A_545ba0

@ FUN_00545cf8
        .global A_545cf8
        .type   A_545cf8, %function
A_545cf8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0xb7]
        mov     r6, r1
        tst     r0, #1
        beq     L545d6c
        ldrb    r0, [r5, #0xb6]
        tst     r0, #0x10
        beq     L545d28
        ldrb    r0, [r5, #0xb5]
        cmp     r0, #0
        beq     L545d38
L545d28:
        ldr     r0, [r5]
        ldr     r2, [r0, #0x64]
        mov     r0, r5
        blx     r2
L545d38:
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L545d6c
L545d48:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        ldr     r2, [r1, #0x60]
        mov     r1, r6
        blx     r2
        ldr     r4, [r4]
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L545d48
L545d6c:
        pop     {r4, r5, r6, pc}
        .size   A_545cf8, . - A_545cf8

@ FUN_00545ee8
        .global A_545ee8
        .type   A_545ee8, %function
A_545ee8:
        push    {r4, lr}
        ldr     r4, [r1, #0x80]
        sub     sp, sp, #0x30
        add     r1, r0, #0x80
        mov     r0, sp
        bl      Fn_01a174
        vldmia  sp, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r2, r4, #0x164
        add     lr, sp, #0x20
        mov     r0, #0
        vstmia  r2, {s0, s1, s2, s3, s4, s5, s6, s7}
        ldm     lr, {r1, r2, r3, ip}
        add     lr, r4, #0x184
        stm     lr, {r1, r2, r3, ip}
        strb    r0, [r4, #0x2de]
        add     sp, sp, #0x30
        pop     {r4, pc}
        .size   A_545ee8, . - A_545ee8

@ FUN_005461b0
        .global A_5461b0
        .type   A_5461b0, %function
A_5461b0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        ldr     r0, L546288
        str     r0, [r5]
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L54621c
L5461d0:
        mov     r6, r4
        ldr     r4, [r4]
        add     r0, r5, #0x10
        mov     r1, r6
        bl      Fn_542154
        ldrb    r0, [r6, #0xb3]
        tst     r0, #8
        bne     L546210
        subs    r6, r6, #4
        beq     L546210
        ldr     r0, [r6]
        ldr     r1, [r0]
        mov     r0, r6
        blx     r1
        mov     r0, r6
        bl      Fn_548334
L546210:
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L5461d0
L54621c:
        ldr     r0, [r5]
        mov     r7, #0
        ldr     r1, [r0, #0x24]
        mov     r0, r5
        blx     r1
        subs    r6, r0, #0
        mov     r4, #0
        bls     L546274
L54623c:
        ldr     r0, [r5]
        mov     r1, r4
        ldr     r2, [r0, #0x28]
        mov     r0, r5
        blx     r2
        cmp     r0, #0
        beq     L546268
        ldr     r1, [r0]
        ldr     r2, [r1, #0xc]
        mov     r1, r7
        blx     r2
L546268:
        add     r4, r4, #1
        cmp     r4, r6
        blo     L54623c
L546274:
        mov     r1, r7
        add     r0, r5, #0x1c
        bl      Fn_54ea00
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L546288:
        .word   0x0082c604
        .size   A_5461b0, . - A_5461b0

@ FUN_005462a0
        .global A_5462a0
        .type   A_5462a0, %function
A_5462a0:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x34
        mov     r8, r0
        mov     sb, r1
        ldr     r6, [sp, #0x50]
        mov     r4, r2
        mov     r7, r3
        mvn     r5, #0
        bl      Fn_544c68
        cmn     r0, #1
        beq     L546474
        mov     r1, sb
        mov     r0, r8
        bl      Fn_542d2c
        cmp     r0, #0
        beq     L546474
        cmp     r4, #0
        beq     L5463bc
        lsl     r0, r4, #8
        lsl     r2, r4, #0x10
        lsr     r3, r4, #0x18
        lsr     r0, r0, #0x18
        mov     r1, #0
        lsr     r2, r2, #0x18
        strh    r3, [sp, #4]
        and     ip, r4, #0xff
        strh    r0, [sp, #6]
        strh    r2, [sp, #8]
        strh    r1, [sp, #0xc]
        add     r1, sp, #4
        mov     r0, r8
        strh    ip, [sp, #0xa]
        bl      Fn_544c68
        cmn     r0, #1
        beq     L54635c
        add     r1, sp, #4
        mov     r0, r8
        bl      Fn_542d2c
        cmp     r0, #0
        beq     L54635c
        mov     r1, r7
        mov     r0, r8
        bl      Fn_544c68
        mov     r5, r0
        ldr     r1, L546480
        mov     r0, r8
        bl      Fn_542d2c
L54635c:
        ldr     r1, L546480
        mov     r0, r8
        bl      Fn_542d2c
        cmn     r5, #1
        nop
        beq     L546474
        add     r2, sp, #4
        mov     r1, r5
        mov     r0, r8
        bl      Fn_5426ac
        add     r0, sp, #4
        nop
        bl      Fn_544c58
        cmp     r6, #0
        mov     r4, r0
        beq     L5463a8
        add     r0, sp, #4
        ldr     r0, [r0, #8]
        str     r0, [r6]
L5463a8:
        add     r0, sp, #4
        mov     r0, #1
        add     sp, sp, #0x34
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, pc}
L5463bc:
        ldr     r1, L546484
        mvn     r4, #0
        add     r2, sp, #0x20
        mov     r0, r8
        bl      Fn_5425b4
        add     r1, sp, #8
        add     r0, sp, #0x20
        bl      Fn_54260c
        cmp     r0, #0
        nop
        beq     L546458
L5463e8:
        ldrb    r0, [sp, #0x14]
        ldr     r1, [sp, #0x10]
        cmp     r0, #0
        beq     L54642c
        mov     r0, r8
        bl      Fn_542d2c
        mov     r1, r7
        mov     r0, r8
        bl      Fn_546488
        mov     r4, r0
        ldr     r1, L546480
        mov     r0, r8
        bl      Fn_542d2c
        cmn     r4, #1
        nop
        bne     L546458
        b       L546440
L54642c:
        mov     r0, r7
        blx     Fn_000d1e_t
        cmp     r0, #0
        nop
        beq     L54646c
L546440:
        add     r1, sp, #8
        add     r0, sp, #0x20
        bl      Fn_54260c
        cmp     r0, #0
        nop
        bne     L5463e8
L546458:
        add     r0, sp, #0x20
        mov     r0, #1
        mov     r5, r4
        nop
        b       L54635c
L54646c:
        ldr     r4, [sp, #0xc]
        b       L546458
L546474:
        add     sp, sp, #0x34
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, pc}
L546480:
        .word   0x007e96e8
L546484:
        .word   0x007e96e4
        .size   A_5462a0, . - A_5462a0

@ FUN_00546488
        .global A_546488
        .type   A_546488, %function
A_546488:
L546488:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x28
        mov     r5, r1
        ldr     r1, L546548
        mov     r6, r0
        mvn     r4, #0
        add     r2, sp, #0x18
        bl      Fn_5425b4
        add     r1, sp, #8
        add     r0, sp, #0x18
        bl      Fn_54260c
        cmp     r0, #0
        beq     L54652c
L5464bc:
        ldrb    r0, [sp, #0x14]
        ldr     r1, [sp, #0x10]
        cmp     r0, #0
        beq     L546500
        mov     r0, r6
        bl      Fn_542d2c
        mov     r1, r5
        mov     r0, r6
        .word   0xebffffe9
        mov     r4, r0
        ldr     r1, L54654c
        mov     r0, r6
        bl      Fn_542d2c
        cmn     r4, #1
        nop
        bne     L54652c
        b       L546514
L546500:
        mov     r0, r5
        blx     Fn_000d1e_t
        cmp     r0, #0
        nop
        beq     L546540
L546514:
        add     r1, sp, #8
        add     r0, sp, #0x18
        bl      Fn_54260c
        cmp     r0, #0
        nop
        bne     L5464bc
L54652c:
        add     r0, sp, #0x18
        mov     r0, #1
        add     sp, sp, #0x28
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L546540:
        ldr     r4, [sp, #0xc]
        b       L54652c
L546548:
        .word   0x007e96e4
L54654c:
        .word   0x007e96e8
        .size   A_546488, . - A_546488

@ FUN_00546684
        .global A_546684
        .type   A_546684, %function
A_546684:
        ldr     r1, L5466d8
        push    {r4, r5, r6, lr}
        mov     r5, r0
        str     r1, [r0]
        ldr     r4, [r0, #0x10]!
        cmp     r4, r0
        beq     L5466cc
L5466a0:
        mov     r6, r4
        ldr     r4, [r4]
        add     r0, r5, #0xc
        mov     r1, r6
        bl      Fn_542154
        cmp     r6, #0
        movne   r0, r6
        blne    Fn_548334
        add     r0, r5, #0x10
        cmp     r4, r0
        bne     L5466a0
L5466cc:
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L5466d8:
        .word   0x0082c67c
        .size   A_546684, . - A_546684

@ FUN_005466dc
        .global A_5466dc
        .type   A_5466dc, %function
A_5466dc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L546730
        str     r0, [r5]
        ldr     r4, [r5, #0x10]
        add     r0, r5, #0x10
        cmp     r4, r0
        beq     L546728
L5466fc:
        mov     r6, r4
        ldr     r4, [r4]
        add     r0, r5, #0xc
        mov     r1, r6
        bl      Fn_542154
        cmp     r6, #0
        movne   r0, r6
        blne    Fn_548334
        add     r0, r5, #0x10
        cmp     r4, r0
        bne     L5466fc
L546728:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L546730:
        .word   0x0082c67c
        .size   A_5466dc, . - A_5466dc

@ FUN_00547154
        .global A_547154
        .type   A_547154, %function
A_547154:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        movs    r8, r2
        mov     r7, r1
        ldr     fp, L5472d4
        beq     L5472a8
        ldr     r0, [sp]
        mov     sl, #1
        mov     sb, #0
        mov     r5, sb
        ldrb    r0, [r0, #0x24]
        mov     r4, sb
        cmp     r0, #0
        ldr     r0, [r8, #0x30]
        movne   sl, #0
        and     r6, r0, #3
        cmp     r6, #3
        mov     r0, #3
        movhi   r6, r0
        cmp     r6, #0
        bls     L54720c
L5471a4:
        mov     r0, #1
        orr     r5, r5, r0, lsl r4
        mov     r0, r8
        ldr     r0, [r0, #0x34]
        add     r0, r0, r4, lsl #5
        add     r1, fp, r4, lsl #5
        ldr     r3, [r0, #4]
        ldr     r2, [r1, #8]
        cmp     r2, r3, lsr #3
        bne     L5471dc
        ldr     r2, [r1, #0x18]
        ldr     r3, [r0, #0x14]
        cmp     r2, r3
        beq     L547200
L5471dc:
        ldr     r2, [r0, #4]!
        add     r0, r0, #0x10
        mov     sb, #1
        vldmia  r0, {s0, s1, s2}
        lsr     r0, r2, #3
        vstr    s1, [r1]
        str     r0, [r1, #8]
        vstr    s2, [r1, #0x10]
        vstr    s0, [r1, #0x18]
L547200:
        add     r4, r4, #1
        cmp     r4, r6
        blo     L5471a4
L54720c:
        orrs    r4, sl, sb
        beq     L54724c
        ldr     r0, [sp]
        mov     r1, r7
        ldrb    r2, [r0, #0x24]
        cmp     r2, #0
        beq     L547230
        bl      Fn_54773c
        mov     r1, r0
L547230:
        ldr     r2, L5472d8
        add     r7, r1, #0x10
        add     r0, r2, #0x10
        ldr     r2, [r2, #0x1c]
        ldm     r0, {r0, r3, ip}
        str     r2, [r1, #0xc]
        stm     r1, {r0, r3, ip}
L54724c:
        cmp     sl, #0
        orr     r0, r5, #0x11000
        beq     L547270
        ldr     r2, L5472dc
        lsl     r1, r5, #8
        str     r1, [r7], #4
        ldr     r1, L5472e0
        str     r2, [r7], #4
        strd    r0, r1, [r7], #8
L547270:
        cmp     r4, #0
        beq     L547280
        ldr     r1, L5472e4
        strd    r0, r1, [r7], #8
L547280:
        cmp     sb, #0
        beq     L54729c
        ldr     r1, L5472d4
        lsl     r2, r6, #5
        mov     r0, r7
        bl      Fn_20004c
        add     r7, r7, r6, lsl #5
L54729c:
        add     sp, sp, #0x10
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L5472a8:
        mov     r0, #0
        str     r0, [fp, #8]
        str     r0, [fp, #0x28]
        cmp     r3, #0
        str     r0, [fp, #0x48]
        beq     L54729c
        ldr     r0, [sp]
        bl      Fn_568e7c
        mov     r7, r0
        nop
        b       L54729c
L5472d4:
        .word   0x008aaf70
L5472d8:
        .word   0x007e96f0
L5472dc:
        .word   0x0002006f
L5472e0:
        .word   0x000b0080
L5472e4:
        .word   0x00040080
        .size   A_547154, . - A_547154

@ FUN_0054773c
        .global A_54773c
        .type   A_54773c, %function
A_54773c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r6, r1
        ldrb    r1, [r4, #0x24]
        add     r0, r0, #0x88
        ldr     r8, L547890
        ldr     r3, [r0, #0xc]
        lsl     r2, r1, #2
        add     r1, r0, r1, lsl #4
        lsl     ip, r2, #2
        str     r3, [r0, #8]
        lsl     r3, r2, #0x14
        sub     r2, r3, #0x100000
        orr     r2, r2, r8
        str     r2, [r0, #0xc]
        mov     r7, #0
        str     r7, [r1, #0xc]
        add     r5, ip, #0x10
        mov     r1, r0
        mov     r2, r5
        mov     r0, r6
        bl      Fn_20004c
        bic     r0, r5, #3
        add     r5, r0, r6
        ldrb    r0, [r4, #0x25]
        cmp     r0, #0
        beq     L5477b8
        mov     r1, r5
        mov     r0, r4
        bl      Fn_5685fc
        mov     r5, r0
L5477b8:
        ldrb    r0, [r4, #0x26]
        cmp     r0, #0
        beq     L547810
        lsl     r2, r0, #2
        ldr     ip, [r4, #0x454]
        lsl     r6, r2, #0x14
        lsl     r3, r2, #2
        sub     r2, r6, #0x100000
        add     r1, r4, #0x400
        orr     r2, r2, r8
        add     r1, r1, #0x48
        str     r2, [r4, #0x454]
        add     r0, r1, r0, lsl #4
        str     ip, [r4, #0x450]
        add     r6, r3, #0x10
        str     r7, [r0, #0xc]
        mov     r2, r6
        mov     r0, r5
        bl      Fn_20004c
        bic     r0, r6, #3
        add     r5, r5, r0
        strb    r7, [r4, #0x26]
L547810:
        ldrb    r0, [r4, #0x24]
        add     r0, r0, r0, lsl #1
        lsl     r6, r0, #1
        mov     r1, r6
        mov     r0, r4
        bl      Fn_63bc24
        ldr     r2, [r4, #0x69c]
        ldr     r1, L547894
        str     r2, [r5], #4
        str     r1, [r5], #4
        orr     r1, r0, #0x80000000
        ldr     r0, L547898
        str     r1, [r5], #4
        add     r1, r0, #1
        stm     r5!, {r0, r6}
        mov     r0, r4
        str     r1, [r5], #4
        mov     r0, #0x40
        mov     r6, r0
        mov     r0, r4
        bl      Fn_63bc18
        mov     r1, r0
        mov     r2, r6
        mov     r0, r5
        bl      Fn_20004c
        mov     r0, r4
        nop
        mov     r0, #0x40
        bic     r0, r0, #3
        add     r0, r0, r5
        strb    r7, [r4, #0x24]
        pop     {r4, r5, r6, r7, r8, pc}
L547890:
        .word   0x000f02c1
L547894:
        .word   0x000f02b1
L547898:
        .word   0x000f0227
        .size   A_54773c, . - A_54773c

@ FUN_005481d4
        .global A_5481d4
        .type   A_5481d4, %function
A_5481d4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r5, r0
        mov     r6, r2
        mov     fp, r1
        ldr     r0, [r0, #0x104]
        cmp     r0, #0
        ldrbne  r0, [r0, #9]
        cmpne   r0, r6
        beq     L548208
        ldr     r0, [r5]
        ldr     r1, [r0, #0x74]
        mov     r0, r5
        blx     r1
L548208:
        cmp     fp, #0
        beq     L548300
        ldrh    r0, [r5, #0xf8]
        add     r4, fp, #1
        lsl     sb, r4, #1
        cmp     sb, r0
        bls     L548300
        ldr     r0, [r5]
        ldr     r1, [r0, #0x74]
        mov     r0, r5
        blx     r1
        mov     r0, fp
        bl      Fn_567d54
        tst     r6, #8
        mov     r8, r0
        mov     sl, #0
        beq     L548260
        add     r0, r8, #0xf
        bic     r8, r0, #0xf
        mov     r0, fp
        bl      Fn_56a110
        lsl     sl, r0, #2
L548260:
        mov     r1, #4
        mov     r0, sb
        bl      Fn_548350
        cmp     r0, #0
        mov     r7, #0
        beq     L54829c
        cmp     r4, #0
        mov     r1, #0
        bls     L548298
L548284:
        adds    r2, r0, r1, lsl #1
        add     r1, r1, #1
        strhne  r7, [r2]
        cmp     r1, r4
        blo     L548284
L548298:
        mov     r7, r0
L54829c:
        tst     r6, #8
        beq     L5482bc
        add     r0, r8, sl
        mov     r1, #0x10
        bl      Fn_5485a4
        nop
        nop
        b       L5482c8
L5482bc:
        mov     r1, #4
        mov     r0, r8
        bl      Fn_548350
L5482c8:
        cmp     r7, #0
        mov     r4, r0
        beq     L548304
        cmp     r4, #0
        beq     L548320
        str     r7, [r5, #0xd4]
        mov     r1, fp
        strh    sb, [r5, #0xf8]
        bl      Fn_567d44
        tst     r6, #8
        mov     r1, r0
        str     r0, [r5, #0x104]
        addne   r0, r4, r8
        strne   r0, [r1, #0x18]
L548300:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L548304:
        cmp     r4, #0
        beq     L548300
        tst     r6, #8
        mov     r0, r4
        beq     L54832c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        b       Fn_548588
L548320:
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        b       Fn_548334
L54832c:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r0, r0
        .size   A_5481d4, . - A_5481d4

@ FUN_00548500
        .global A_548500
        .type   A_548500, %function
A_548500:
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        beq     L548518
        ldr     r2, [r0]
        ldr     r2, [r2, #0x5c]
        bx      r2
L548518:
        bx      lr
        .size   A_548500, . - A_548500

@ FUN_0054852c
        .global A_54852c
        .type   A_54852c, %function
A_54852c:
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        beq     L54854c
        ldr     r2, [r0]
        mov     r3, #0
        ldr     ip, [r2, #0x3c]
        mov     r2, #1
        bx      ip
L54854c:
        bx      lr
        .size   A_54852c, . - A_54852c

@ FUN_00548550
        .global A_548550
        .type   A_548550, %function
A_548550:
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        beq     L54856c
        ldr     r2, [r0]
        ldr     r3, [r2, #0x40]
        mov     r2, #1
        bx      r3
L54856c:
        bx      lr
        .size   A_548550, . - A_548550

@ FUN_005485a4
        .global A_5485a4
        .type   A_5485a4, %function
A_5485a4:
        mov     ip, r0
        ldr     r0, L5485c4
        mov     r2, r1
        ldr     r0, [r0, #4]
        ldr     r1, [r0]
        ldr     r3, [r1, #8]
        mov     r1, ip
        bx      r3
L5485c4:
        .word   0x008ab268
        .size   A_5485a4, . - A_5485a4

@ FUN_005485c8
        .global A_5485c8
        .type   A_5485c8, %function
A_5485c8:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x40
        ldr     r0, [sp, #0x40]
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        beq     L5488f4
        ldr     r0, [sp, #0x44]
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L5488f4
        ldr     r0, [sp, #0x40]
        ldr     r0, [r0]
        ldr     r1, [r0, #0xc]
        ldr     r0, [sp, #0x40]
        blx     r1
        movs    sb, r0
        beq     L5488f4
        mov     r0, #1
        str     r0, [sp, #0x30]
        ldr     r0, [sp, #0x44]
        bl      Fn_634494
        movs    r8, r0
        ldr     r0, [sp, #0x44]
        mov     r6, #0
        beq     L548868
        bl      Fn_6344a4
        cmp     r8, #0
        mov     r5, r0
        mov     r4, #0
        ble     L54868c
L548640:
        ldr     r0, [sp, #0x40]
        add     r1, r4, r4, lsl #2
        add     r1, r5, r1, lsl #2
        ldr     r0, [r0, #0x14]
        bl      Fn_543580
        movs    r7, r0
        streq   r0, [sp, #0x30]
        beq     L548680
        ldr     r0, [sp, #0x44]
        bl      Fn_6345a8
        mov     r2, r0
        ldr     r0, [sp, #0x44]
        mov     r1, r7
        bl      Fn_6344b8
        add     r0, r0, r6
        uxth    r6, r0
L548680:
        add     r4, r4, #1
        cmp     r4, r8
        blt     L548640
L54868c:
        ldr     r0, [sb]
        ldr     r2, [sp, #0x48]
        mov     r3, r6
        ldr     ip, [r0, #0x14]
        ldr     r0, [sp, #0x44]
        ldr     r1, [r0, #4]
        mov     r0, sb
        blx     ip
        cmp     r8, #0
        mov     r4, #0
        ble     L548700
L5486b8:
        ldr     r0, [sp, #0x40]
        add     r1, r4, r4, lsl #2
        add     r1, r5, r1, lsl #2
        ldr     r0, [r0, #0x14]
        bl      Fn_543580
        movs    r6, r0
        nop
        beq     L5486f4
        ldr     r0, [sp, #0x44]
        bl      Fn_6345a8
        mov     r2, r0
        mov     r3, #1
        mov     r1, sb
        mov     r0, r6
        bl      Fn_542e84
L5486f4:
        add     r4, r4, #1
        cmp     r4, r8
        blt     L5486b8
L548700:
        ldr     r0, [sp, #0x44]
        bl      Fn_6345c4
        cmp     r0, #0
        str     r0, [sp, #4]
        beq     L5488f0
        ldr     r0, [sp, #0x44]
        bl      Fn_6345d4
        str     r0, [sp, #0x34]
        ldr     r0, [sp, #4]
        cmp     r0, #0
        mov     r0, #0
        str     r0, [sp]
        ble     L5488f0
L548734:
        add     r2, r0, r0, lsl #3
        ldr     r0, [sp, #0x40]
        ldr     r1, [sp, #0x34]
        ldr     r0, [r0, #0x10]
        add     r1, r1, r2, lsl #2
        mov     r4, r1
        ldr     r2, [r0]
        ldr     r3, [r2, #0x2c]
        mov     r2, #1
        blx     r3
        movs    sl, r0
        beq     L5488a8
        mov     r1, r0
        ldr     r2, [sp, #0x44]
        add     r0, sp, #8
        bl      Fn_54e7f8
        ldrh    r0, [sp, #0x1a]
        cmp     r0, #0
        beq     L5488d8
        ldr     r0, [sp, #0x40]
        add     r1, r4, #0x11
        ldr     r0, [r0, #0x14]
        bl      Fn_543580
        cmp     r0, #0
        nop
        beq     L5488a8
        add     fp, r0, #0xc
        ldr     sb, [r0, #0x10]!
        cmp     sb, r0
        beq     L5488d8
L5487ac:
        ldr     r0, [sb, #8]
        cmp     r0, sl
        beq     L5488c8
        cmp     r8, #0
        beq     L5488b4
        ldr     r0, [sp, #0x40]
        ldr     r0, [r0, #0x14]
        str     r0, [sp, #0x38]
        ldr     r0, [sp, #0x44]
        bl      Fn_6344a4
        mov     r7, r0
        ldr     r0, [sp, #0x44]
        bl      Fn_6345a8
        ldr     r4, [sb, #8]
        cmp     r8, #0
        mov     r5, r0
        mov     r6, #0
        bls     L5488c8
L5487f4:
        add     r0, r6, r6, lsl #2
        add     r1, r7, r0, lsl #2
        ldr     r0, [sp, #0x38]
        bl      Fn_543580
        add     r3, r0, #0xc
        ldr     r2, [r0, #0x10]!
        cmp     r2, r0
        beq     L548854
L548814:
        ldr     r1, [r2, #8]
        cmp     r1, r4
        beq     L5488b4
        cmp     r5, #0
        ldrne   r0, [r4, #0xc]
        cmpne   r0, #0
        beq     L548844
L548830:
        cmp     r1, r0
        beq     L5488b4
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        bne     L548830
L548844:
        ldr     r2, [r2]
        add     r0, r3, #4
        cmp     r2, r0
        bne     L548814
L548854:
        add     r0, r6, #1
        uxth    r6, r0
        cmp     r6, r8
        blo     L5487f4
        b       L5488c8
L548868:
        ldr     r1, [r0, #4]
        ldr     r0, [sb]
        ldr     r2, [sp, #0x48]
        ldrh    r3, [r1, #0xe]
        ldr     ip, [r0, #0x14]
        mov     r0, sb
        blx     ip
        ldr     r0, [sp, #0x40]
        mov     r3, #1
        mov     r2, r3
        ldr     r0, [r0, #0x10]
        ldr     r1, [r0]
        ldr     ip, [r1, #0x3c]
        mov     r1, sb
        blx     ip
        b       L548700
L5488a8:
        mov     r0, #0
        str     r0, [sp, #0x30]
        b       L5488d8
L5488b4:
        ldr     r2, [sb, #8]
        ldr     r1, [sp, #0x40]
        ldr     r3, [sp, #0x48]
        add     r0, sp, #8
        bl      Fn_6365d8
L5488c8:
        ldr     sb, [sb]
        add     r0, fp, #4
        cmp     sb, r0
        bne     L5487ac
L5488d8:
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     r0, r0, #1
        cmp     r0, r1
        str     r0, [sp]
        blt     L548734
L5488f0:
        ldr     r0, [sp, #0x30]
L5488f4:
        add     sp, sp, #0x4c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_5485c8, . - A_5485c8

@ FUN_005488fc
        .global A_5488fc
        .type   A_5488fc, %function
A_5488fc:
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        beq     L548918
        ldr     r3, [r0]
        ldr     ip, [r3, #0x54]
        mov     r3, #1
        bx      ip
L548918:
        bx      lr
        .size   A_5488fc, . - A_5488fc

@ FUN_0054892c
        .global A_54892c
        .type   A_54892c, %function
A_54892c:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        mov     r5, r0
        mov     r4, sp
        mov     r6, r2
        mov     r0, r4
        bl      Fn_542d64
        ldr     r0, [r5]
        mov     r1, r4
        mov     r2, r6
        ldr     r3, [r0, #0x14]
        mov     r0, r5
        blx     r3
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
        .size   A_54892c, . - A_54892c

@ FUN_00548968
        .global A_548968
        .type   A_548968, %function
A_548968:
        push    {r4, r5, r6, lr}
        mov     r6, r2
        ldr     r5, [r1, #4]
        cmp     r5, #0
        moveq   r0, #0
        beq     L5489b0
        ldr     r1, [r0]
        ldr     r1, [r1, #0xc]
        blx     r1
        movs    r4, r0
        beq     L5489ac
        ldr     r0, [r4]
        mov     r2, r6
        mov     r1, r5
        ldr     r3, [r0, #0x10]
        mov     r0, r4
        blx     r3
L5489ac:
        mov     r0, r4
L5489b0:
        pop     {r4, r5, r6, pc}
        .size   A_548968, . - A_548968

@ FUN_005489b4
        .global A_5489b4
        .type   A_5489b4, %function
A_5489b4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L548a08
        mov     r1, #0x20
        mov     r2, #4
        ldr     r0, [r0]
        ldr     r3, [r0]
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        moveq   r4, r0
        beq     L548a00
        bl      Fn_544978
        movs    r4, r0
        beq     L548a00
        add     r0, r5, #4
        add     r1, r5, #8
        add     r2, r4, #4
        bl      Fn_542230
L548a00:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L548a08:
        .word   0x008ab268
        .size   A_5489b4, . - A_5489b4

@ FUN_00548a0c
        .global A_548a0c
        .type   A_548a0c, %function
A_548a0c:
        push    {r4, lr}
        mov     r4, r1
        add     r0, r0, #4
        add     r1, r1, #4
        bl      Fn_5421f4
        cmp     r4, #0
        beq     L548a54
        ldr     r0, [r4]
        ldr     r1, [r0]
        mov     r0, r4
        blx     r1
        ldr     r0, L548a58
        mov     r1, r4
        ldr     r0, [r0]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        pop     {r4, lr}
        bx      r2
L548a54:
        pop     {r4, pc}
L548a58:
        .word   0x008ab268
        .size   A_548a0c, . - A_548a0c

@ FUN_00548d28
        .global A_548d28
        .type   A_548d28, %function
A_548d28:
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        beq     L548d40
        ldr     r2, [r0]
        ldr     r2, [r2, #0x34]
        bx      r2
L548d40:
        bx      lr
        .size   A_548d28, . - A_548d28

@ FUN_00548d90
        .global A_548d90
        .type   A_548d90, %function
A_548d90:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        ldr     r0, L548e70
        ldr     r7, L548e74
        str     r0, [r6]
        ldr     r4, [r6, #0x14]
        cmp     r4, #0
        beq     L548dcc
        mov     r0, r4
        bl      Fn_5435d0
        ldr     r0, [r7]
        mov     r1, r4
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
L548dcc:
        ldr     r4, [r6, #0x10]
        cmp     r4, #0
        beq     L548e08
        ldrb    r0, [r4, #0xb7]
        tst     r0, #8
        bne     L548e08
        ldr     r0, [r4]
        ldr     r1, [r0]
        mov     r0, r4
        blx     r1
        ldr     r0, [r7]
        mov     r1, r4
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
L548e08:
        ldr     r4, [r6, #8]
        add     r0, r6, #8
        cmp     r4, r0
        beq     L548e68
L548e18:
        mov     r5, r4
        ldr     r4, [r4]
        add     r0, r6, #4
        mov     r1, r5
        bl      Fn_542154
        subs    r5, r5, #4
        nop
        beq     L548e5c
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
        ldr     r0, [r7]
        mov     r1, r5
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
L548e5c:
        add     r0, r6, #8
        cmp     r4, r0
        bne     L548e18
L548e68:
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, pc}
L548e70:
        .word   0x0082c6b0
L548e74:
        .word   0x008ab268
        .size   A_548d90, . - A_548d90

@ FUN_005490c0
        .global A_5490c0
        .type   A_5490c0, %function
A_5490c0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r2
        mov     r7, r0
        mov     r6, r3
        mov     r3, #4
        ldr     r1, L5492a4
        mov     r2, #8
        vpush   {d8}
        sub     sp, sp, #0x4c
        add     r0, sp, #8
        ldr     r4, [sp, #0x88]
        blx     Fn_0000ac_t
        ldr     r0, [sp, #0x58]
        vldr    s16, L5492ac
        mov     r8, #0
        add     sl, sp, #0x28
        ldr     sb, [r0, #0x80]
        ldrd    r0, r1, [r5]
        add     fp, sp, #8
        strd    r0, r1, [sp, #0x28]
        vldr    s0, [r7, #0x48]
        vldr    s1, [r4, #4]
        vsub.f32 s0, s0, s1
        vstr    s0, [sp, #8]
        ldr     r0, [r4, #8]
        str     r0, [sp, #0xc]
        vldr    s0, [r5]
        vldr    s2, [r7, #0x48]
        vldr    s3, [r4, #4]
        vldr    s1, [r5, #4]
        vadd.f32 s0, s0, s2
        add     r0, sp, #0x30
        vsub.f32 s0, s0, s3
        vstmia  r0, {s0, s1}
        ldr     r0, [r4, #4]
        str     r0, [sp, #0x10]
        vldr    s0, [r7, #0x4c]
        vldr    s1, [r4, #0xc]
        vsub.f32 s0, s0, s1
        vstr    s0, [sp, #0x14]
        vldr    s0, [r5, #4]
        vldr    s2, [r4, #8]
        vldr    s1, [r5]
        vsub.f32 s0, s0, s2
        vstr    s1, [sp, #0x38]
        vstr    s0, [sp, #0x3c]
        ldr     r0, [r4]
        str     r0, [sp, #0x18]
        vldr    s0, [r7, #0x4c]
        vldr    s1, [r4, #8]
        vsub.f32 s0, s0, s1
        vstr    s0, [sp, #0x1c]
        vldr    s2, [r5, #4]
        vldr    s4, [r7, #0x4c]
        vldr    s3, [r5]
        vldr    s1, [r4]
        vsub.f32 s2, s2, s4
        vldr    s0, [r4, #0xc]
        vadd.f32 s1, s3, s1
        vadd.f32 s0, s2, s0
        vstr    s1, [sp, #0x40]
        vstr    s0, [sp, #0x44]
        vldr    s0, [r7, #0x48]
        vldr    s1, [r4]
        ldr     r7, L5492a8
        vsub.f32 s0, s0, s1
        vstr    s0, [sp, #0x20]
        ldr     r0, [r4, #0xc]
        mov     r4, #0
        str     r0, [sp, #0x24]
L5491d8:
        add     r5, r6, r4, lsl #3
        ldr     r0, [r5, #4]
        cmp     r0, #0
        beq     L54925c
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L54925c
        ldr     r1, [r0]
        ldr     r2, [sp, #0x8c]
        mov     r3, #0
        ldr     ip, [r1, #0x28]
        ldr     r1, [sp, #0x58]
        blx     ip
        and     r0, r4, #0xff
        ldrb    r1, [r5]
        ldr     r2, [r7, r0, lsl #2]
        ldr     r0, L5492b0
        vmov.f32 s1, s16
        ldr     r1, [r0, r1, lsl #2]
        ldr     r0, [sb, #0x1b8]
        orr     r1, r1, r2
        vmov    s0, r1
        vmov.f32 s3, s1
        vmov.f32 s2, s1
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        cmp     r8, #0
        nop
        beq     L549278
        ldr     r0, [sp, #0x58]
        add     r2, fp, r4, lsl #3
        add     r1, sl, r4, lsl #3
        bl      Fn_54e868
L54925c:
        add     r4, r4, #1
        cmp     r4, #3
        ble     L5491d8
        add     sp, sp, #0x4c
        vpop    {d8}
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L549278:
        mov     r0, #0
        mov     r3, r0
        str     r0, [sp]
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x58]
        add     r2, fp, r4, lsl #3
        add     r1, sl, r4, lsl #3
        bl      Fn_54f168
        mov     r8, #1
        nop
        b       L54925c
L5492a4:
        .word   0x0064628c
L5492a8:
        .word   0x007e9a7c
L5492ac:
        .word   0x00000000
L5492b0:
        .word   0x007e9a9c
        .size   A_5490c0, . - A_5490c0

@ FUN_005492b4
        .global A_5492b4
        .type   A_5492b4, %function
A_5492b4:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     ip, r0
        add     ip, ip, #0x48
        mov     r6, r3
        mov     r7, #0
        mov     r4, #0
        ldr     sl, L549470
        vpush   {d8}
        sub     sp, sp, #0x8c
        vldr    s4, [r2]
        ldr     r0, [sp, #0xc8]
        vldr    s0, [r2, #4]
        add     r1, sp, #0xc
        vldmia  ip, {s6, s7}
        add     fp, sl, #0x20
        vldr    s2, [r0, #4]
        vldr    s5, [r0, #8]
        vadd.f32 s11, s4, s6
        vsub.f32 s12, s0, s7
        vldr    s1, [r0]
        vldr    s3, [r0, #0xc]
        vstr    s4, [sp, #8]
        vsub.f32 s8, s6, s1
        vstr    s5, [sp, #0x14]
        vsub.f32 s10, s7, s5
        vsub.f32 s9, s0, s5
        vadd.f32 s7, s4, s1
        vsub.f32 s11, s11, s2
        vadd.f32 s6, s12, s3
        vldr    s16, L549474
        add     sb, sp, #8
        vsub.f32 s8, s8, s2
        vsub.f32 s10, s10, s3
        vstr    s11, [sp, #0x18]
        vstmia  r1, {s0, s1}
        add     r1, sp, #0x40
        vstr    s0, [sp, #0x1c]
        vstr    s2, [sp, #0x20]
        vstr    s5, [sp, #0x24]
        vstr    s4, [sp, #0x28]
        vstr    s6, [sp, #0x2c]
        vstr    s1, [sp, #0x30]
        vstr    s3, [sp, #0x34]
        vstr    s11, [sp, #0x38]
        vstr    s6, [sp, #0x3c]
        vstr    s9, [sp, #0x4c]
        vstr    s1, [sp, #0x50]
        vstr    s9, [sp, #0x5c]
        vstmia  r1, {s2, s3, s4}
        add     r1, sp, #0x54
        vstr    s2, [sp, #0x60]
        vstmia  r1, {s10, s11}
        vstr    s10, [sp, #0x64]
        vstr    s7, [sp, #0x68]
        vstr    s0, [sp, #0x6c]
        vstr    s8, [sp, #0x70]
        vstr    s5, [sp, #0x74]
        vstr    s7, [sp, #0x78]
        vstr    s6, [sp, #0x7c]
        vstr    s8, [sp, #0x80]
        vstr    s3, [sp, #0x84]
        ldr     r0, [sp, #0x98]
        ldr     r8, [r0, #0x80]
L5493b0:
        add     r5, r6, r4, lsl #3
        ldr     r0, [r5, #4]
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L549428
        ldr     r1, [r0]
        ldr     r2, [sp, #0xcc]
        mov     r3, #0
        ldr     ip, [r1, #0x28]
        ldr     r1, [sp, #0x98]
        blx     ip
        ldrb    r1, [r5]
        and     r0, r4, #0xff
        vmov.f32 s1, s16
        ldr     r2, [sl, r0, lsl #2]
        ldr     r1, [fp, r1, lsl #2]
        ldr     r0, [r8, #0x1b8]
        orr     r1, r1, r2
        vmov    s0, r1
        vmov.f32 s3, s1
        vmov.f32 s2, s1
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        cmp     r7, #0
        nop
        beq     L549444
        add     r1, sb, r4, lsl #4
        ldr     r0, [sp, #0x98]
        add     r2, r1, #8
        bl      Fn_54e868
L549428:
        add     r4, r4, #1
        cmp     r4, #8
        blt     L5493b0
        add     sp, sp, #0x8c
        vpop    {d8}
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L549444:
        mov     r0, #0
        add     r1, sb, r4, lsl #4
        mov     r3, r0
        str     r0, [sp]
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x98]
        add     r2, r1, #8
        bl      Fn_54f168
        mov     r7, #1
        nop
        b       L549428
L549470:
        .word   0x007e9a7c
L549474:
        .word   0x00000000
        .size   A_5492b4, . - A_5492b4

@ FUN_005495b4
        .global A_5495b4
        .type   A_5495b4, %function
A_5495b4:
        push    {r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r7, r1
        ldr     r0, [r0, #0x164]
        sub     sp, sp, #0x1c
        mov     r6, r2
        mov     r5, r3
        ldr     r1, [r0]
        ldr     r2, [sp, #0x30]
        mov     r3, #1
        ldr     ip, [r1, #0x28]
        mov     r1, r7
        blx     ip
        vldr    s3, [r4, #0x48]
        vldr    s9, [r5]
        vldr    s7, [r4, #0x4c]
        vldr    s8, [r5, #8]
        vsub.f32 s3, s3, s9
        vldr    s4, [r4, #0x138]
        vsub.f32 s7, s7, s8
        vldr    s1, [r4, #0x140]
        vldr    s5, [r5, #4]
        vldr    s2, [r5, #0xc]
        vldr    s6, [r4, #0x13c]
        vldr    s0, [r4, #0x144]
        add     r3, r4, #0x148
        add     r2, sp, #0x10
        vadd.f32 s3, s3, s4
        add     r1, sp, #8
        vadd.f32 s1, s7, s1
        vsub.f32 s3, s3, s5
        vsub.f32 s2, s1, s2
        vadd.f32 s1, s3, s6
        vadd.f32 s0, s2, s0
        vstr    s1, [sp, #0x10]
        vstr    s0, [sp, #0x14]
        vldr    s0, [r6]
        vldr    s3, [r5]
        vldr    s4, [r6, #4]
        vldr    s5, [r5, #8]
        vadd.f32 s0, s0, s3
        vldr    s1, [r4, #0x138]
        vsub.f32 s3, s4, s5
        vldr    s2, [r4, #0x140]
        vsub.f32 s1, s0, s1
        vadd.f32 s0, s3, s2
        vstr    s1, [sp, #8]
        vstr    s0, [sp, #0xc]
        ldr     r0, [r4, #0x15c]
        stm     sp, {r0, r3}
        ldrb    r3, [r4, #0x159]
        mov     r0, r7
        bl      Fn_54f168
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .size   A_5495b4, . - A_5495b4

@ FUN_005496a0
        .global A_5496a0
        .type   A_5496a0, %function
A_5496a0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r6, r2
        ldr     r0, [r0, #0x164]
        mov     r7, r1
        cmp     r0, #0
        beq     L5496d0
        add     r0, r0, #0x38
        bl      Fn_54e974
        cmp     r0, #0
        ldrne   r0, [r4, #0x164]
        bne     L549714
L5496d0:
        ldrb    r0, [r4, #0x168]
        mov     r5, #0
        cmp     r0, #0
        movgt   r8, #4
        ble     L549728
L5496e4:
        ldr     r0, [r4, #0x160]
        add     r1, r8, r5, lsl #3
        ldr     r0, [r0, r1]
        mov     r1, r7
        add     r0, r0, #0x38
        bl      Fn_54e974
        cmp     r0, #0
        nop
        beq     L549718
        ldr     r0, [r4, #0x160]
        add     r1, r8, r5, lsl #3
        ldr     r0, [r0, r1]
L549714:
        pop     {r4, r5, r6, r7, r8, pc}
L549718:
        ldrb    r0, [r4, #0x168]
        add     r5, r5, #1
        cmp     r0, r5
        bgt     L5496e4
L549728:
        cmp     r6, #0
        beq     L549770
        ldr     r5, [r4, #0x14]
        add     r0, r4, #0x14
        cmp     r5, r0
        beq     L549770
L549740:
        ldr     r1, [r5, #-4]
        sub     r0, r5, #4
        mov     r2, r6
        ldr     r3, [r1, #0x30]
        mov     r1, r7
        blx     r3
        cmp     r0, #0
        bne     L549714
        ldr     r5, [r5]
        add     r0, r4, #0x14
        cmp     r5, r0
        bne     L549740
L549770:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5496a0, . - A_5496a0

@ FUN_00549790
        .global A_549790
        .type   A_549790, %function
A_549790:
        push    {r4, r5, lr}
        mov     r4, r0
        ldr     r0, [r0]
        sub     sp, sp, #0x24
        mov     r5, r1
        ldr     r2, [r0, #0x6c]
        mov     r0, r4
        blx     r2
        ldr     r2, [r4, #0x160]
        ldrb    r1, [r4, #0x168]
        mov     r0, r4
        bl      Fn_634d64
        add     r2, sp, #8
        mov     r0, r4
        vstmia  r2, {s0, s1, s2, s3}
        bl      Fn_6347e4
        add     r0, sp, #0x18
        add     r3, sp, #8
        vstmia  r0, {s0, s1}
        add     r2, sp, #0x18
        ldrb    r0, [r4, #0xb5]
        mov     r1, r5
        str     r0, [sp]
        ldr     r0, [r4]
        ldr     ip, [r0, #0x70]
        mov     r0, r4
        blx     ip
        ldrb    r1, [r4, #0x168]
        add     r0, sp, #8
        cmp     r1, #1
        beq     L549848
        cmp     r1, #4
        beq     L549874
        cmp     r1, #8
        bne     L549840
        ldrb    r1, [r4, #0xb5]
        add     r2, sp, #0x18
        strd    r0, r1, [sp]
        ldr     r0, [r4]
        ldr     r3, [r4, #0x160]
        mov     r1, r5
        ldr     ip, [r0, #0x7c]
        mov     r0, r4
        blx     ip
L549840:
        add     sp, sp, #0x24
        pop     {r4, r5, pc}
L549848:
        ldrb    r1, [r4, #0xb5]
        add     r2, sp, #0x18
        strd    r0, r1, [sp]
        ldr     r0, [r4]
        ldr     r3, [r4, #0x160]
        mov     r1, r5
        ldr     ip, [r0, #0x74]
        mov     r0, r4
        blx     ip
        add     sp, sp, #0x24
        pop     {r4, r5, pc}
L549874:
        ldrb    r1, [r4, #0xb5]
        add     r2, sp, #0x18
        strd    r0, r1, [sp]
        ldr     r0, [r4]
        ldr     r3, [r4, #0x160]
        mov     r1, r5
        ldr     ip, [r0, #0x78]
        mov     r0, r4
        blx     ip
        add     sp, sp, #0x24
        pop     {r4, r5, pc}
        .size   A_549790, . - A_549790

@ FUN_005498a0
        .global A_5498a0
        .type   A_5498a0, %function
A_5498a0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r0
        mov     r8, r1
        mov     r5, r2
        vpush   {d8}
        sub     sp, sp, #0x1c
        ldr     r0, [r3, #4]
        ldr     r2, [sp, #0x4c]
        ldr     r4, [sp, #0x48]
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L549ae0
        ldr     r1, [r0]
        mov     r3, #0
        ldr     ip, [r1, #0x28]
        mov     r1, r8
        blx     ip
        vldr    s16, L549aec
        ldr     sl, L549af0
        vstr    s16, [sp, #8]
        vstr    s16, [sp, #0xc]
        ldr     r7, [r8, #0x80]
        ldrd    r0, r1, [r5]
        add     fp, sl, #0x20
        vmov.f32 s3, s16
        strd    r0, r1, [sp, #0x10]
        vldr    s0, [r6, #0x48]
        vldr    s1, [r4, #4]
        vmov.f32 s2, s16
        vsub.f32 s0, s0, s1
        vmov.f32 s1, s16
        vstr    s0, [sp, #8]
        ldr     r0, [r4, #8]
        str     r0, [sp, #0xc]
        ldr     r0, [sl]
        ldr     r1, [fp]
        orr     r0, r0, r1
        vmov    s0, r0
        ldr     r1, [r7, #0x1b8]
        mov     r0, r1
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        mov     sb, #0
        mov     r3, sb
        add     r2, sp, #8
        add     r1, sp, #0x10
        mov     r0, r8
        str     sb, [sp]
        str     sb, [sp, #4]
        bl      Fn_54f168
        vldr    s0, [r5]
        vldr    s2, [r6, #0x48]
        vldr    s3, [r4, #4]
        vldr    s1, [r5, #4]
        vadd.f32 s0, s0, s2
        add     r1, sp, #0x10
        vmov.f32 s2, s16
        vsub.f32 s0, s0, s3
        vmov.f32 s3, s16
        vstmia  r1, {s0, s1}
        ldr     r0, [r4, #4]
        str     r0, [sp, #8]
        vldr    s0, [r6, #0x4c]
        vldr    s1, [r4, #0xc]
        vsub.f32 s0, s0, s1
        vmov.f32 s1, s16
        vstr    s0, [sp, #0xc]
        ldr     r0, [sl, #4]
        ldr     r1, [fp, #4]
        orr     r1, r1, r0
        vmov    s0, r1
        ldr     r0, [r7, #0x1b8]
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        mov     r3, #0
        add     r2, sp, #8
        add     r1, sp, #0x10
        mov     r0, r8
        str     sb, [sp]
        str     sb, [sp, #4]
        bl      Fn_54f168
        vldr    s2, [r5, #4]
        vldr    s4, [r6, #0x4c]
        vldr    s1, [r4, #0xc]
        vldr    s0, [r5]
        vsub.f32 s2, s2, s4
        vldr    s3, [r4]
        add     r1, sp, #0x10
        vadd.f32 s0, s0, s3
        vmov.f32 s3, s16
        vadd.f32 s1, s2, s1
        vmov.f32 s2, s16
        vstmia  r1, {s0, s1}
        vldr    s0, [r6, #0x48]
        vldr    s1, [r4]
        vsub.f32 s0, s0, s1
        vmov.f32 s1, s16
        vstr    s0, [sp, #8]
        ldr     r0, [r4, #0xc]
        str     r0, [sp, #0xc]
        ldr     r0, [sl, #0xc]
        ldr     r1, [fp, #0x10]
        orr     r1, r1, r0
        vmov    s0, r1
        ldr     r0, [r7, #0x1b8]
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        mov     r3, #0
        add     r2, sp, #8
        add     r1, sp, #0x10
        mov     r0, r8
        str     sb, [sp]
        str     sb, [sp, #4]
        bl      Fn_54f168
        vldr    s0, [r5, #4]
        vldr    s1, [r4, #8]
        ldr     r0, [r5]
        vmov.f32 s3, s16
        vsub.f32 s0, s0, s1
        str     r0, [sp, #0x10]
        vmov.f32 s2, s16
        vstr    s0, [sp, #0x14]
        ldr     r0, [r4]
        str     r0, [sp, #8]
        vldr    s0, [r6, #0x4c]
        vldr    s1, [r4, #8]
        vsub.f32 s0, s0, s1
        vmov.f32 s1, s16
        vstr    s0, [sp, #0xc]
        ldr     r0, [sl, #8]
        ldr     r1, [fp, #8]
        orr     r0, r0, r1
        vmov    s0, r0
        ldr     r1, [r7, #0x1b8]
        mov     r0, r1
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        mov     r3, #0
        add     r2, sp, #8
        add     r1, sp, #0x10
        mov     r0, r8
        str     sb, [sp]
        str     sb, [sp, #4]
        bl      Fn_54f168
L549ae0:
        add     sp, sp, #0x1c
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L549aec:
        .word   0x00000000
L549af0:
        .word   0x007e9a7c
        .size   A_5498a0, . - A_5498a0

@ FUN_00549e90
        .global A_549e90
        .type   A_549e90, %function
A_549e90:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r8, r0
        mov     sl, #0
        ldr     r0, L549f60
        str     r0, [r8]
        ldr     r6, [r8, #0x160]
        ldrb    r7, [r8, #0x168]
        cmp     r6, #0
        beq     L549f0c
        cmp     r7, #0
        mov     r4, #0
        bls     L549f04
L549ec0:
        add     r5, r6, r4, lsl #3
        ldr     sb, [r5, #4]
        cmp     sb, #0
        beq     L549ef4
        ldrb    r0, [sb, #0x4d]
        tst     r0, #1
        bne     L549ef4
        ldr     r0, [sb]
        ldr     r1, [r0]
        mov     r0, sb
        blx     r1
        mov     r0, sb
        bl      Fn_548334
L549ef4:
        add     r4, r4, #1
        cmp     r4, r7
        str     sl, [r5, #4]
        blo     L549ec0
L549f04:
        mov     r0, r6
        bl      Fn_548334
L549f0c:
        ldr     r4, [r8, #0x164]
        cmp     r4, #0
        beq     L549f40
        ldrb    r0, [r4, #0x4d]
        tst     r0, #1
        bne     L549f40
        ldr     r0, [r4]
        ldr     r1, [r0]
        mov     r0, r4
        blx     r1
        mov     r0, r4
        bl      Fn_548334
        str     sl, [r8, #0x164]
L549f40:
        add     r0, r8, #0x158
        bl      Fn_54e3b8
        mov     r0, r8
        nop
        bl      Fn_5461b0
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        nop
        b       Fn_2024b0
L549f60:
        .word   0x0082c6fc
        .size   A_549e90, . - A_549e90

@ FUN_00549f64
        .global A_549f64
        .type   A_549f64, %function
A_549f64:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r8, r0
        mov     sl, #0
        ldr     r0, L54a028
        str     r0, [r8]
        ldr     r6, [r8, #0x160]
        ldrb    r7, [r8, #0x168]
        cmp     r6, #0
        beq     L549fe0
        cmp     r7, #0
        mov     r4, #0
        bls     L549fd8
L549f94:
        add     r5, r6, r4, lsl #3
        ldr     sb, [r5, #4]
        cmp     sb, #0
        beq     L549fc8
        ldrb    r0, [sb, #0x4d]
        tst     r0, #1
        bne     L549fc8
        ldr     r0, [sb]
        ldr     r1, [r0]
        mov     r0, sb
        blx     r1
        mov     r0, sb
        bl      Fn_548334
L549fc8:
        add     r4, r4, #1
        cmp     r4, r7
        str     sl, [r5, #4]
        blo     L549f94
L549fd8:
        mov     r0, r6
        bl      Fn_548334
L549fe0:
        ldr     r4, [r8, #0x164]
        cmp     r4, #0
        beq     L54a014
        ldrb    r0, [r4, #0x4d]
        tst     r0, #1
        bne     L54a014
        ldr     r0, [r4]
        ldr     r1, [r0]
        mov     r0, r4
        blx     r1
        mov     r0, r4
        bl      Fn_548334
        str     sl, [r8, #0x164]
L54a014:
        add     r0, r8, #0x158
        bl      Fn_54e3b8
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_5461b0
L54a028:
        .word   0x0082c6fc
        .size   A_549f64, . - A_549f64

@ FUN_0054a0d4
        .global A_54a0d4
        .type   A_54a0d4, %function
A_54a0d4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r8, r1
        ldr     r0, [r0, #0x13c]
        ldr     r1, [r0, #0x30]
        ldr     r2, [r0, #0x2c]
        and     r3, r1, #3
        and     ip, r2, #3
        cmp     r3, ip
        bhs     L54a20c
        lsl     r3, r1, #0x1a
        lsl     r2, r2, #0x1a
        lsr     r3, r3, #0x1e
        lsr     r2, r2, #0x1e
        cmp     r3, r2
        bhs     L54a20c
        and     r5, r1, #3
        add     r1, r5, #1
        bl      Fn_54c5ec
        ldr     r6, [r4, #0x13c]
        mov     r0, r6
        ldr     r0, [r0, #0x34]
        vldmia  r8, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r0, r0, r5, lsl #5
        mov     r8, #0
        vstmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        ldrb    r0, [r6, #0x4d]
        and     r0, r0, #0xfb
        strb    r0, [r6, #0x4d]
        ldr     r0, [r4, #0x13c]
        ldr     r1, [r0, #0x30]
        and     r1, r1, #3
        bl      Fn_54da40
        bic     r0, r7, #0xff
        ldr     r6, [r4, #0x13c]
        lsl     r1, r8, #8
        orr     r0, r0, r8
        and     r1, r1, #0xff00
        bic     r0, r0, #0xff00
        orr     r7, r0, r1
        mov     r0, r6
        bl      Fn_54da18
        add     r0, r0, r5, lsl #2
        str     r7, [r0]
        ldrb    r0, [r6, #0x4d]
        and     r0, r0, #0xfb
        strb    r0, [r6, #0x4d]
        ldr     r0, [r4, #0x13c]
        ldr     r0, [r0, #0x30]
        and     r1, r0, #3
        add     r0, r4, #0x150
        bl      Fn_54e464
        vldr    s0, L54a210
        vldr    s1, [r4, #0x48]
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vldreq  s1, [r4, #0x4c]
        vcmpeq.f32 s1, s0
        vmrseq  apsr_nzcv, fpscr
        bne     L54a20c
        ldr     r0, [r4, #0x13c]
        ldr     r1, [r0, #0x30]
        and     r1, r1, #3
        cmp     r1, #1
        bne     L54a20c
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r4, r4, #0x48
        uxth    r1, r1
        orr     r0, r1, r0, lsl #16
        uxth    r1, r0
        lsr     r0, r0, #0x10
        vmov    s1, r0
        vmov    s0, r1
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        vstmia  r4, {s0, s1}
L54a20c:
        pop     {r4, r5, r6, r7, r8, pc}
L54a210:
        .word   0x00000000
        .size   A_54a0d4, . - A_54a0d4

@ FUN_0054a214
        .global A_54a214
        .type   A_54a214, %function
A_54a214:
        push    {r4, r5, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x13c]
        sub     sp, sp, #0x14
        mov     r5, r1
        cmp     r0, #0
        beq     L54a28c
        ldr     r0, [r4]
        ldr     r2, [r0, #0x6c]
        mov     r0, r4
        blx     r2
        ldr     r0, [r4, #0x13c]
        ldrb    r2, [r4, #0xb5]
        mov     r3, #1
        ldr     r1, [r0]
        ldr     ip, [r1, #0x28]
        mov     r1, r5
        blx     ip
        mov     r0, r4
        bl      Fn_6347e4
        add     r0, sp, #8
        add     r1, r4, #0x140
        vstmia  r0, {s0, s1}
        add     r2, r4, #0x48
        ldr     r0, [r4, #0x154]
        strd    r0, r1, [sp]
        ldrb    r3, [r4, #0x151]
        add     r1, sp, #8
        mov     r0, r5
        bl      Fn_54f168
L54a28c:
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
        .size   A_54a214, . - A_54a214

@ FUN_0054a5c4
        .global A_54a5c4
        .type   A_54a5c4, %function
A_54a5c4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r1, L54a62c
        ldr     r5, [r0, #0x13c]
        str     r1, [r0]
        cmp     r5, #0
        beq     L54a60c
        ldrb    r0, [r5, #0x4d]
        tst     r0, #1
        bne     L54a60c
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
        mov     r0, r5
        bl      Fn_548334
        mov     r0, #0
        str     r0, [r4, #0x13c]
L54a60c:
        add     r0, r4, #0x150
        bl      Fn_54e3b8
        mov     r0, r4
        nop
        bl      Fn_5461b0
        pop     {r4, r5, r6, lr}
        nop
        b       Fn_2024b0
L54a62c:
        .word   0x0082c784
        .size   A_54a5c4, . - A_54a5c4

@ FUN_0054a630
        .global A_54a630
        .type   A_54a630, %function
A_54a630:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L54a68c
        ldr     r5, [r4, #0x13c]
        str     r0, [r4]
        cmp     r5, #0
        beq     L54a678
        ldrb    r0, [r5, #0x4d]
        tst     r0, #1
        bne     L54a678
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
        mov     r0, r5
        bl      Fn_548334
        mov     r0, #0
        str     r0, [r4, #0x13c]
L54a678:
        add     r0, r4, #0x150
        bl      Fn_54e3b8
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_5461b0
L54a68c:
        .word   0x0082c784
        .size   A_54a630, . - A_54a630

@ FUN_0054a7a0
        .global A_54a7a0
        .type   A_54a7a0, %function
A_54a7a0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0xe0]
        mov     r5, r1
        str     r0, [r1, #0x3c]
        ldr     r0, [r4, #0xe0]
        cmp     r0, #0
        beq     L54a7e8
        add     r2, r4, #0xe4
        mov     r0, r1
        vldmia  r2, {s0, s1}
        bl      Fn_5679b8
        ldr     r0, [r4, #0xec]
        str     r0, [r5, #0x54]
        ldr     r0, [r4, #0xf0]
        str     r0, [r5, #0x50]
        ldr     r0, [r4, #0x48]
        str     r0, [r5, #0x4c]
L54a7e8:
        ldr     r0, [r4, #0xf4]
        ldr     r2, L54a914
        cmp     r0, #0
        strne   r0, [r5, #0x60]
        ldrb    r1, [r4, #0xfd]
        mov     r0, #0
        cmp     r1, #1
        beq     L54a850
        cmp     r1, #2
        beq     L54a844
        cmp     r1, #3
        beq     L54a84c
        ldrb    r1, [r4, #0xfc]
        umull   ip, r3, r2, r1
        lsr     r3, r3, #1
        sub     r3, r3, r3, lsl #2
        add     r1, r1, r3
        and     r1, r1, #0xff
        cmp     r1, #1
        beq     L54a844
        cmp     r1, #2
        bne     L54a850
        b       L54a84c
L54a844:
        mov     r0, #1
        b       L54a850
L54a84c:
        mov     r0, #2
L54a850:
        ldrb    r1, [r4, #0xfc]
        umull   r3, r2, r2, r1
        lsr     r2, r2, #1
        sub     r2, r2, r2, lsl #2
        add     r2, r2, r1
        and     r2, r2, #0xff
        cmp     r2, #1
        orreq   r0, r0, #0x10
        beq     L54a87c
        cmp     r2, #2
        orreq   r0, r0, #0x20
L54a87c:
        mov     r2, #0xab
        mul     r1, r1, r2
        lsr     r1, r1, #9
        cmp     r1, #1
        orreq   r0, r0, #0x100
        beq     L54a89c
        cmp     r1, #2
        orreq   r0, r0, #0x200
L54a89c:
        str     r0, [r5, #0x5c]
        ldr     r6, [r4, #0xd8]
        ldr     r4, [r4, #0xdc]
        lsl     r0, r6, #0x10
        lsl     r1, r6, #0x18
        lsr     r0, r0, #0x18
        lsl     r2, r4, #0x18
        orr     r1, r1, r0, lsl #16
        lsl     r0, r6, #8
        lsr     r0, r0, #0x18
        orr     r1, r1, r0, lsl #8
        orr     r0, r1, r6, lsr #24
        lsl     r1, r4, #0x10
        lsr     r1, r1, #0x18
        orr     r2, r2, r1, lsl #16
        lsl     r1, r4, #8
        lsr     r1, r1, #0x18
        orr     r2, r2, r1, lsl #8
        orr     r1, r2, r4, lsr #24
        cmp     r0, r1
        movne   r0, #2
        moveq   r0, #0
        strb    r0, [r5, #0x20]
        mov     r0, r5
        bl      Fn_567cec
        str     r6, [r5, #0x18]
        mov     r0, r5
        str     r4, [r5, #0x1c]
        pop     {r4, r5, r6, lr}
        b       Fn_567cec
L54a914:
        .word   0xaaaaaaab
        .size   A_54a7a0, . - A_54a7a0

@ FUN_0054a918
        .global A_54a918
        .type   A_54a918, %function
A_54a918:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0xd4]
        mov     r5, #0
        cmp     r0, #0
        beq     L54a940
        bl      Fn_548334
        str     r5, [r4, #0xd4]
        strh    r5, [r4, #0xf8]
        strh    r5, [r4, #0xfa]
L54a940:
        ldr     r0, [r4, #0x104]
        cmp     r0, #0
        beq     L54a974
        ldrb    r1, [r0, #9]
        tst     r1, #8
        beq     L54a968
        bl      Fn_548588
        nop
        nop
        b       L54a970
L54a968:
        nop
        bl      Fn_548334
L54a970:
        str     r5, [r4, #0x104]
L54a974:
        pop     {r4, r5, r6, pc}
        .size   A_54a918, . - A_54a918

@ FUN_0054aad8
        .global A_54aad8
        .type   A_54aad8, %function
A_54aad8:
        push    {r4, r5, lr}
        mov     r5, r1
        mov     r4, r0
        vpush   {d8}
        sub     sp, sp, #0x34
        add     r1, r0, #0x80
        mov     r0, sp
        bl      Fn_01a174
        mov     r0, r4
        bl      Fn_6347e4
        vmov.f32 s2, s1
        vmov.f32 s17, s0
        mov     r2, #0
        mov     r0, r4
        add     r1, r4, #0x48
        vmov.f32 s16, s2
        bl      Fn_635fb4
        vmov.f32 s2, s0
        vldr    s3, [sp]
        vsub.f32 s1, s16, s1
        vldr    s4, [sp, #0xc]
        mov     r1, sp
        vadd.f32 s0, s17, s2
        vldr    s2, [sp, #4]
        vmul.f32 s3, s3, s0
        vmla.f32 s3, s2, s1
        vadd.f32 s3, s3, s4
        vstr    s3, [sp, #0xc]
        vldr    s4, [sp, #0x10]
        vldr    s3, [sp, #0x14]
        vldr    s5, [sp, #0x1c]
        vmul.f32 s4, s4, s0
        vmla.f32 s4, s3, s1
        vadd.f32 s4, s4, s5
        vstr    s4, [sp, #0x1c]
        vldr    s5, [sp, #0x20]
        vldr    s4, [sp, #0x24]
        vmul.f32 s0, s5, s0
        vldr    s5, [sp, #0x2c]
        vmla.f32 s0, s4, s1
        vneg.f32 s1, s2
        vneg.f32 s2, s3
        vneg.f32 s3, s4
        vadd.f32 s0, s0, s5
        vstr    s0, [sp, #0x2c]
        vstr    s1, [sp, #4]
        vstr    s2, [sp, #0x14]
        vstr    s3, [sp, #0x24]
        ldr     r0, [r5, #0x80]
        add     r0, r0, #8
        bl      Fn_6659e4
        add     sp, sp, #0x34
        vpop    {d8}
        pop     {r4, r5, pc}
        .size   A_54aad8, . - A_54aad8

@ FUN_0054ace8
        .global A_54ace8
        .type   A_54ace8, %function
A_54ace8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrh    r0, [r0, #0xfa]
        sub     sp, sp, #0x68
        mov     r6, r1
        cmp     r0, #0
        ldrne   r0, [r4, #0xe0]
        cmpne   r0, #0
        beq     L54ad98
        ldr     r0, [r4, #0x100]
        cmp     r0, #0
        beq     L54ad98
        bl      Fn_54e89c
        ldr     r5, [r6, #0x80]
        mov     r0, r5
        bl      Fn_5439a8
        add     r5, r5, #8
        mov     r0, sp
        bl      Fn_686674
        mov     r1, sp
        mov     r0, r4
        str     r5, [sp, #0x40]
        bl      Fn_54a7a0
        ldr     r0, [r5]
        bl      Fn_665a64
        ldr     r0, [r4]
        mov     r1, r6
        ldr     r2, [r0, #0x6c]
        mov     r0, r4
        blx     r2
        ldr     r1, [r4, #0x100]
        ldrd    r0, r1, [r1, #0x10]
        strd    r0, r1, [sp]
        ldrb    r0, [r4, #0xb5]
        strb    r0, [sp, #0x49]
        mov     r0, sp
        bl      Fn_56812c
        ldrh    r2, [r4, #0xfa]
        ldr     r1, [r4, #0xd4]
        mov     r0, sp
        bl      Fn_686064
        bl      Fn_56a198
        mov     r0, sp
        bl      Fn_5684d4
L54ad98:
        add     sp, sp, #0x68
        pop     {r4, r5, r6, pc}
        .size   A_54ace8, . - A_54ace8

@ FUN_0054b1a0
        .global A_54b1a0
        .type   A_54b1a0, %function
A_54b1a0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r1, L54b24c
        ldr     r5, [r0, #0x100]
        mov     r6, #0
        str     r1, [r0]
        cmp     r5, #0
        beq     L54b1e8
        ldrb    r0, [r5, #0x4d]
        tst     r0, #1
        bne     L54b1e8
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
        mov     r0, r5
        bl      Fn_548334
        str     r6, [r4, #0x100]
L54b1e8:
        ldr     r0, [r4, #0xd4]
        cmp     r0, #0
        beq     L54b204
        bl      Fn_548334
        str     r6, [r4, #0xd4]
        strh    r6, [r4, #0xf8]
        strh    r6, [r4, #0xfa]
L54b204:
        ldr     r0, [r4, #0x104]
        cmp     r0, #0
        beq     L54b238
        ldrb    r1, [r0, #9]
        tst     r1, #8
        beq     L54b22c
        bl      Fn_548588
        nop
        nop
        b       L54b234
L54b22c:
        nop
        bl      Fn_548334
L54b234:
        str     r6, [r4, #0x104]
L54b238:
        mov     r0, r4
        bl      Fn_5461b0
        pop     {r4, r5, r6, lr}
        nop
        b       Fn_2024b0
L54b24c:
        .word   0x0082c804
        .size   A_54b1a0, . - A_54b1a0

@ FUN_0054b250
        .global A_54b250
        .type   A_54b250, %function
A_54b250:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r5, [r0, #0x100]
        ldr     r0, L54b2f4
        mov     r6, #0
        cmp     r5, #0
        str     r0, [r4]
        beq     L54b298
        ldrb    r0, [r5, #0x4d]
        tst     r0, #1
        bne     L54b298
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
        mov     r0, r5
        bl      Fn_548334
        str     r6, [r4, #0x100]
L54b298:
        ldr     r0, [r4, #0xd4]
        cmp     r0, #0
        beq     L54b2b4
        bl      Fn_548334
        str     r6, [r4, #0xd4]
        strh    r6, [r4, #0xf8]
        strh    r6, [r4, #0xfa]
L54b2b4:
        ldr     r0, [r4, #0x104]
        cmp     r0, #0
        beq     L54b2e8
        ldrb    r1, [r0, #9]
        tst     r1, #8
        beq     L54b2dc
        bl      Fn_548588
        nop
        nop
        b       L54b2e4
L54b2dc:
        nop
        bl      Fn_548334
L54b2e4:
        str     r6, [r4, #0x104]
L54b2e8:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_5461b0
L54b2f4:
        .word   0x0082c804
        .size   A_54b250, . - A_54b250

@ FUN_0054c5ec
        .global A_54c5ec
        .type   A_54c5ec, %function
A_54c5ec:
        push    {r4, r5, r6, r7, r8, lr}
        movs    r5, r1
        mov     r7, r0
        beq     L54c624
        add     r0, r7, #0x30
        ldm     r0, {r0, r6}
        and     r4, r0, #3
        cmp     r5, r4
        bls     L54c624
L54c610:
        adds    r0, r6, r4, lsl #5
        blne    Fn_549078
        add     r4, r4, #1
        cmp     r4, r5
        blo     L54c610
L54c624:
        ldr     r0, [r7, #0x30]
        and     r1, r5, #3
        bic     r0, r0, #3
        orr     r0, r0, r1
        str     r0, [r7, #0x30]
        ldrb    r0, [r7, #0x4d]
        and     r0, r0, #0xfb
        strb    r0, [r7, #0x4d]
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_54c5ec, . - A_54c5ec

@ FUN_0054c648
        .global A_54c648
        .type   A_54c648, %function
A_54c648:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        mov     r5, r2
        mov     r6, r3
        mov     fp, #1
        mvn     r8, #0
        vpush   {d8}
        sub     sp, sp, #0x1c
        ldrb    r0, [r0, #0x4d]
        ldr     r7, [r1, #0x80]
        vldr    s16, L54ca08
        tst     r0, #2
        bne     L54c748
        ldr     r0, [r7, #0x15c]
        bl      Fn_665a64
        vldr    s17, L54ca0c
        cmp     r6, #0
        beq     L54c6a8
        vmov.f32 s0, s16
        ldr     r0, [r7, #0x1b8]
        vmov.f32 s3, s0
        vmov.f32 s2, s0
        vmov.f32 s1, s0
        bl      Fn_6659b0
L54c6a8:
        vmov    s0, r5
        vldr    s1, L54ca10
        vmov.f32 s2, s17
        ldr     r0, [r7, #0x1b0]
        vcvt.f32.u32 s0, s0
        vmul.f32 s3, s1, s0
        vmov.f32 s1, s17
        vmov.f32 s0, s17
        bl      Fn_6659b0
        ldr     r0, [r4, #0x30]
        tst     r0, #0x30
        beq     L54c748
        lsl     r0, r0, #0x1a
        lsr     r2, r0, #0x1e
        cmp     r2, #0
        mov     r0, #0
        bls     L54c734
L54c6ec:
        ldr     r1, [r4, #0x2c]
        ldr     r3, [r4, #0x34]
        lsl     ip, r1, #0x1c
        lsl     r1, r1, #0x1e
        lsr     ip, ip, #0x1e
        lsr     r1, r1, #0x19
        add     ip, ip, ip, lsl #2
        add     r1, r1, ip, lsl #2
        add     r1, r1, r3
        add     r1, r1, r0, lsl #2
        add     r3, r7, r0
        ldrb    r1, [r1, #1]
        add     r0, r0, #1
        cmp     r0, r2
        strb    r1, [r3, #0x2d8]
        blo     L54c6ec
        cmp     r0, #3
        bhs     L54c748
L54c734:
        add     r1, r7, r0
        add     r0, r0, #1
        cmp     r0, #3
        strb    r8, [r1, #0x2d8]
        blo     L54c734
L54c748:
        ldr     r0, [r4, #0x30]
        tst     r0, #0xc
        beq     L54c7e4
        lsl     r1, r0, #0x1c
        and     r8, r0, #3
        lsr     r1, r1, #0x1e
        cmp     r1, r8
        movls   r8, r1
        cmp     r8, #3
        mov     r0, #3
        movhi   r8, r0
        cmp     r8, #0
        mov     r5, #0
        bls     L54c7e4
L54c780:
        ldr     r1, [r4, #0x2c]
        ldr     r0, [r4, #0x34]
        add     r2, r5, r5, lsl #2
        lsl     r1, r1, #0x1e
        add     r1, r0, r1, lsr #25
        add     r1, r1, r2, lsl #2
        add     r2, r0, r5, lsl #5
        mov     r0, sp
        bl      Fn_54344c
        add     r0, r7, r5, lsl #2
        vmov.f32 s2, s16
        ldr     r6, [r0, #0x1a4]
        vldr    s3, [sp, #8]
        vldmia  sp, {s0, s1}
        mov     r0, r6
        bl      Fn_6659b0
        add     r1, sp, #0xc
        vmov.f32 s2, s16
        vldmia  r1, {s0, s1}
        add     r0, r6, #1
        vldr    s3, [sp, #0x14]
        bl      Fn_6659b0
        add     r5, r5, #1
        cmp     r8, r5
        bhi     L54c780
L54c7e4:
        ldr     r0, [r4, #0x30]
        and     r1, r0, #3
        cmp     r1, #0
        movne   r5, #0
        andne   r8, r0, #3
        beq     L54c920
        bls     L54c904
        ldr     sl, L54ca14
        ldr     sb, L54ca1c
        vldr    s17, L54ca18
L54c80c:
        ldr     r0, [r4, #0x34]
        add     r6, r0, r5, lsl #5
        add     r0, r5, #0x8000
        add     r0, r0, #0x4c0
        bl      Fn_65ee6c
        ldr     r1, [r6]
        mov     r0, sb
        bl      Fn_65f4d4
        mov     r2, sb
        mov     r1, r5
        mov     r0, r7
        bl      Fn_54edb0
        ldr     r0, [r6, #0x10]
        ldr     r1, L54ca20
        and     r0, r0, #3
        ldr     r2, [sl, r0, lsl #2]
        mov     r0, sb
        bl      Fn_665644
        ldr     r0, [r6, #0x10]
        ldr     r1, L54ca24
        and     r0, r0, #0xc
        ldr     r2, [sl, r0]
        mov     r0, sb
        bl      Fn_665644
        ldr     r0, [r6, #0x10]
        lsl     r0, r0, #0x19
        lsr     r1, r0, #0x1d
        mov     r0, r7
        bl      Fn_54ec20
        ldr     r0, [r6, #0x10]
        lsl     r0, r0, #0x18
        lsr     r1, r0, #0x1f
        mov     r0, r7
        bl      Fn_54ec04
        cmp     r5, #0
        nop
        bne     L54c8d0
        ldrh    r2, [r6, #0xa]
        ldrh    r1, [r6, #8]
        vmov.f32 s2, s16
        vmov    s0, r2
        vmov    s1, r1
        ldr     r0, [r7, #0x1cc]
        vcvt.f32.u32 s0, s0
        vcvt.f32.u32 s3, s1
        vdiv.f32 s1, s17, s0
        vdiv.f32 s0, s17, s3
        vmov.f32 s3, s2
        bl      Fn_6659b0
L54c8d0:
        vmov.f32 s0, s16
        ldr     r1, L54ca28
        mov     r0, sb
        bl      Fn_6652f8
        ldr     r2, L54ca2c
        ldr     r1, L54ca30
        mov     r0, sb
        bl      Fn_665644
        add     r5, r5, #1
        cmp     r8, r5
        bhi     L54c80c
        cmp     r5, #4
        bhs     L54c920
L54c904:
        mov     r2, #0
        mov     r1, r5
        mov     r0, r7
        bl      Fn_54edb0
        add     r5, r5, #1
        cmp     r5, #4
        blo     L54c904
L54c920:
        ldrb    r0, [r4, #0x4d]
        mov     r8, fp
        tst     r0, #2
        bne     L54d6a8
        ldr     r0, [r4, #0x10]
        add     r1, sp, #4
        str     r0, [sp, #4]
        mov     r0, r7
        bl      Fn_54ecd0
        ldr     r0, [r4, #0x30]
        mov     sl, #0
        mov     fp, #6
        tst     r0, #0x1c0
        mov     r6, sl
        beq     L54cb98
        strb    sl, [r7, #0x2dd]
        strb    sl, [r7, #0x2dc]
        ldr     r0, [r4, #0x30]
        lsl     r0, r0, #0x17
        cmp     fp, r0, lsr #29
        blo     L54c97c
        lsrs    r0, r0, #0x1d
        beq     L54d5ec
L54c97c:
        mov     r8, #4
        mov     sb, #0xc
        ldr     r0, [r4, #0x2c]
        ldr     r1, [r4, #0x34]
        lsl     r2, r0, #0x1c
        lsl     r3, r0, #0x1e
        lsr     r2, r2, #0x1e
        lsr     r3, r3, #0x19
        add     r2, r2, r2, lsl #2
        and     ip, sb, r0, lsr #2
        add     r2, r3, r2, lsl #2
        add     r3, r2, ip
        mov     r2, #8
        and     r2, r2, r0, lsr #6
        add     r2, r2, r3
        and     r0, r8, r0, lsr #8
        add     r0, r0, r2
        add     r0, r0, r1
        add     r1, r6, r6, lsl #1
        add     r5, r0, r1, lsl #2
        mov     r1, #0xf
        ldr     r0, [r5]
        and     r2, r1, r0, lsr #24
        mov     r1, r6
        mov     r0, r7
        bl      Fn_54ec54
        ldr     r0, [r5, #4]
        mov     r1, #0xf
        and     r2, r1, r0, lsr #24
        mov     r1, r6
        mov     r0, r7
        bl      Fn_54ed50
        mov     r1, #0xf
        mov     r3, r1
        b       L54ca34
L54ca08:
        .word   0x00000000
L54ca0c:
        .word   0x3b808081
L54ca10:
        .word   0x37810183
L54ca14:
        .word   0x007e98b0
L54ca18:
        .word   0x3f800000
L54ca1c:
        .word   0x00000de1
L54ca20:
        .word   0x00002802
L54ca24:
        .word   0x00002803
L54ca28:
        .word   0x00008501
L54ca2c:
        .word   0xfffffc18
L54ca30:
        .word   0x0000813a
L54ca34:
        .word   0xe5950000
        .word   0xe200200f
        .word   0xe0011420
        .word   0xe0033220
        .word   0xe58d1000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000802
        .word   0xe5950004
        .word   0xe3a0100f
        .word   0xe1a03001
        .word   0xe200200f
        .word   0xe0011420
        .word   0xe0033220
        .word   0xe58d1000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000811
        .word   0xe5950000
        .word   0xe3a0100f
        .word   0xe1a02001
        .word   0xe1a03001
        .word   0xe0011a20
        .word   0xe0022620
        .word   0xe0033820
        .word   0xe58d1000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000870
        .word   0xe5950004
        .word   0xe3a0100f
        .word   0xe1a02001
        .word   0xe1a03001
        .word   0xe0011a20
        .word   0xe0022620
        .word   0xe0033820
        .word   0xe58d1000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0008a4
        .word   0xe5950000
        .word   0xe3a01003
        .word   0xe0012e20
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0007ee
        .word   0xe5951004
        .word   0xe3a00003
        .word   0xe0002e21
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00086b
        .word   0xe5950008
        .word   0xe28d300c
        .word   0xe28d2008
        .word   0xe200100f
        .word   0xe20000f0
        .word   0xe0841101
        .word   0xe0840120
        .word   0xe5911010
        .word   0xe58d1008
        .word   0xe5900010
        .word   0xe1a01006
        .word   0xe58d000c
        .word   0xe1a00007
        .word   0xeb000812
        .word   0xe2460001
        .word   0xe3500003
        .word   0x8a00000a
        .word   0xe5950004
        .word   0xe5951000
        .word   0xe3100101
        .word   0x13a03001
        .word   0x03a03000
        .word   0xe3110101
        .word   0x13a02001
        .word   0x03a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00086a
        .word   0xe5940030
        .word   0xe2866001
        .word   0xe1a00b80
        .word   0xe15b0ea0
        .word   0x33a00006
        .word   0x21a00ea0
        .word   0xe1500006
        .word   0x8affff7b
        .word   0xea000294
L54cb98:
        .word   0xe5d712dd
        .word   0xe3510000
        .word   0x0a000004
        .word   0xe5d712dc
        .word   0xe2002003
        .word   0xe1510002
        .word   0x03a05000
        .word   0x0a000000
        .word   0xe3a05001
        .word   0xe2000003
        .word   0xe5c782dd
        .word   0xe5c702dc
        .word   0xe5940030
        .word   0xe2849004
        .word   0xe2100003
        .word   0x0a000007
        .word   0xe3500001
        .word   0x0a000039
        .word   0xe3500002
        .word   0xe2848018
        .word   0x0a0000bd
        .word   0xe3500003
        .word   0x1a00027d
        .word   0xea000180
        .word   0xe5990010
        .word   0xe28d2008
        .word   0xe1a01006
        .word   0xe58d0008
        .word   0xe1a00007
        .word   0xeb0007be
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a000028
        .word   0xe3a02001
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000809
        .word   0xe3a02001
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000844
        .word   0xe3a05005
        .word   0xe1a03005
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58d5000
        .word   0xeb000781
        .word   0xe3a03005
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58d5000
        .word   0xeb000794
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a0100a
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0007f8
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a0100a
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000831
        .word   0xe3a02000
        .word   0xe1a0100a
        .word   0xe1a00007
        .word   0xeb00077d
        .word   0xe3a02000
        .word   0xe1a0100a
        .word   0xe1a00007
        .word   0xeb0007fc
        .word   0xe3a06001
        .word   0xea000248
        .word   0xe3550000
        .word   0x0a000027
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb0007dc
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb000817
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000755
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000768
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0007cc
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000805
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb000751
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb0007d0
        .word   0xe5990010
        .word   0xe3a06001
        .word   0xe28d2008
        .word   0xe58d0008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00075f
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a000050
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0007aa
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0007e5
        .word   0xe3a03007
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000723
        .word   0xe3a03007
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000736
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb00079a
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0007d3
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00071f
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00079e
        .word   0xe3a05002
        .word   0xe3a02001
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb000781
        .word   0xe3a02001
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0007bc
        .word   0xe3a03006
        .word   0xe3a02005
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb0006fa
        .word   0xe3a03006
        .word   0xe3a02005
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb00070d
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000771
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0007aa
        .word   0xe3a02000
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0006f6
        .word   0xe3a02000
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb000775
        .word   0xe3a06003
        .word   0xea0001c1
        .word   0xe5980010
        .word   0xe28d2008
        .word   0xe3a01000
        .word   0xe58d0008
        .word   0xe1a00007
        .word   0xeb000703
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a000028
        .word   0xe3a02001
        .word   0xe3a01000
        .word   0xe1a00007
        .word   0xeb00074e
        .word   0xe3a02001
        .word   0xe3a01000
        .word   0xe1a00007
        .word   0xeb000789
        .word   0xe3a06004
        .word   0xe3a03000
        .word   0xe1a02006
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58d6000
        .word   0xeb0006c6
        .word   0xe3a03000
        .word   0xe3a02004
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58d6000
        .word   0xeb0006d9
        .word   0xe3a03000
        .word   0xe3a02002
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb00073d
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000776
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb0006c2
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb000741
        .word   0xe5980010
        .word   0xe3a06001
        .word   0xe28d2008
        .word   0xe58d0008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0006d0
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a00002c
        .word   0xe3a02007
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00071b
        .word   0xe3a02007
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000756
        .word   0xe3a03001
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000694
        .word   0xe3a03001
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb0006a7
        .word   0xe3a03000
        .word   0xe3a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb00070b
        .word   0xe3a03000
        .word   0xe3a02001
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000744
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000690
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00070f
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000725
        .word   0xe5990010
        .word   0xe3a06002
        .word   0xe28d2008
        .word   0xe58d0008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000699
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a000050
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0006e4
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00071f
        .word   0xe3a03007
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb00065d
        .word   0xe3a03007
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000670
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0006d4
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb00070d
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000659
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0006d8
        .word   0xe3a05003
        .word   0xe3a02001
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0006bb
        .word   0xe3a02001
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0006f6
        .word   0xe3a03006
        .word   0xe3a02005
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000634
        .word   0xe3a03006
        .word   0xe3a02005
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000647
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0006ab
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0006e4
        .word   0xe3a02000
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb000630
        .word   0xe3a02000
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0006af
        .word   0xe3a06004
        .word   0xea0000fb
        .word   0xe5980010
        .word   0xe28d2008
        .word   0xe3a01000
        .word   0xe58d0008
        .word   0xe1a00007
        .word   0xeb00063d
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a000028
        .word   0xe3a02001
        .word   0xe3a01000
        .word   0xe1a00007
        .word   0xeb000688
        .word   0xe3a02001
        .word   0xe3a01000
        .word   0xe1a00007
        .word   0xeb0006c3
        .word   0xe3a06004
        .word   0xe3a03000
        .word   0xe1a02006
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58d6000
        .word   0xeb000600
        .word   0xe3a03000
        .word   0xe3a02004
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58d6000
        .word   0xeb000613
        .word   0xe3a03000
        .word   0xe3a02002
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000677
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01003
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0006b0
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb0005fc
        .word   0xe3a02000
        .word   0xe1a01002
        .word   0xe1a00007
        .word   0xeb00067b
        .word   0xe5980010
        .word   0xe3a06001
        .word   0xe28d2008
        .word   0xe58d0008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00060a
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a00002c
        .word   0xe3a02007
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000655
        .word   0xe3a02007
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000690
        .word   0xe3a03001
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb0005ce
        .word   0xe3a03001
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb0005e1
        .word   0xe3a03000
        .word   0xe3a02008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000645
        .word   0xe3a03000
        .word   0xe3a02006
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb00067e
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0005ca
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000649
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00065f
        .word   0xe5980010
        .word   0xe3a06002
        .word   0xe28d2008
        .word   0xe58d0008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0005d3
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a00002c
        .word   0xe3a02007
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00061e
        .word   0xe3a02007
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000659
        .word   0xe3a03002
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000597
        .word   0xe3a03002
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb0005aa
        .word   0xe3a03000
        .word   0xe3a02006
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb00060e
        .word   0xe3a03000
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000647
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000593
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000612
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000628
        .word   0xe5990010
        .word   0xe3a06003
        .word   0xe28d2008
        .word   0xe58d0008
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00059c
        .word   0xe3550000
        .word   0xe320f000
        .word   0x0a000050
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0005e7
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000622
        .word   0xe3a03007
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000560
        .word   0xe3a03007
        .word   0xe3a02004
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000573
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0005d7
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000610
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb00055c
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0005db
        .word   0xe3a05004
        .word   0xe3a02001
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0005be
        .word   0xe3a02001
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0005f9
        .word   0xe3a03006
        .word   0xe3a02005
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb000537
        .word   0xe3a03006
        .word   0xe3a02005
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb00054a
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0005ae
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0005e7
        .word   0xe3a02000
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb000533
        .word   0xe3a02000
        .word   0xe1a01005
        .word   0xe1a00007
        .word   0xeb0005b2
        .word   0xe3a06005
L54d5ec:
        .word   0xe5d752db
        .word   0xe5c762db
        .word   0xe1560005
        .word   0x2a00002a
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000591
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb0005cc
        .word   0xe3a03006
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb00050a
        .word   0xe3a03006
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58db000
        .word   0xeb00051d
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb000581
        .word   0xe3a03000
        .word   0xe1a02003
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xe58da000
        .word   0xeb0005ba
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000506
        .word   0xe3a02000
        .word   0xe1a01006
        .word   0xe1a00007
        .word   0xeb000585
        .word   0xe2866001
        .word   0xe1560005
        .word   0x3affffd4
L54d6a8:
        .word   0xe594002c
        .word   0xe3100c02
        .word   0x0a000016
        .word   0xe1a0ce00
        .word   0xe1a03f00
        .word   0xe1a0cf2c
        .word   0xe3a0200c
        .word   0xe08cc10c
        .word   0xe5941034
        .word   0xe1a03ca3
        .word   0xe0020120
        .word   0xe083210c
        .word   0xe0800002
        .word   0xe0815000
        .word   0xe3a01001
        .word   0xe1a00007
        .word   0xeb04609e
        .word   0xed950a01
        .word   0xe1a00007
        .word   0xeb04608d
        .word   0xe5d51000
        .word   0xe1a00007
        .word   0xeb00054e
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000008
        .word   0xe3a01001
        .word   0xe1a00007
        .word   0xeb046092
        .word   0xeeb00a48
        .word   0xe1a00007
        .word   0xeb046081
        .word   0xe3a01006
        .word   0xe1a00007
        .word   0xeb000542
        .word   0xe5d4004d
        .word   0xe3100002
        .word   0x1a000041
        .word   0xe594002c
        .word   0xe59f2108
        .word   0xe3100b01
        .word   0xe2825010
        .word   0x0a000032
        .word   0xe1a03e00
        .word   0xe5941034
        .word   0xe1a04f23
        .word   0xe1a0cf00
        .word   0xe0844104
        .word   0xe3a0300c
        .word   0xe1a0ccac
        .word   0xe0033120
        .word   0xe08cc104
        .word   0xe08cc003
        .word   0xe3a03008
        .word   0xe0030320
        .word   0xe080000c
        .word   0xe0814000
        .word   0xe5d40000
        .word   0xe3500000
        .word   0xe1a00002
        .word   0x0a000017
        .word   0xeb04515b
        .word   0xe5d41002
        .word   0xe59f20ac
        .word   0xe5d40001
        .word   0xe7921101
        .word   0xe2422020
        .word   0xe7920100
        .word   0xeb0449b4
        .word   0xe5d40000
        .word   0xe59f1094
        .word   0xe7910100
        .word   0xeb044950
        .word   0xe5d40003
        .word   0xe3500000
        .word   0xe1a00005
        .word   0x0a00000c
        .word   0xeb04514b
        .word   0xe5d40003
        .word   0xe59f1074
        .word   0xe7910100
        .word   0xe28dd01c
        .word   0xecbd8b02
        .word   0xe8bd4ff0
        .word   0xea04597c
        .word   0xe320f000
        .word   0xeb04445a
        .word   0xe320f000
        .word   0xe320f000
        .word   0xeaffffee
        .word   0xe28dd01c
        .word   0xecbd8b02
        .word   0xe8bd4ff0
        .word   0xea044453
        .word   0xe1a00002
        .word   0xeb045139
        .word   0xe59f1034
        .word   0xe2410001
        .word   0xeb044996
        .word   0xe28dd01c
        .word   0xe1a00005
        .word   0xecbd8b02
        .word   0xe8bd4ff0
        .word   0xea044449
        .word   0xe28dd01c
        .word   0xecbd8b02
        .word   0xe8bd8ff0
        .word   0x00000be2
        .word   0x007e98ec
        .word   0x007e98bc
        .word   0x007e990c
        .word   0x00000303
        .size   A_54c648, . - A_54c648

@ FUN_0054d9b0
        .global A_54d9b0
        .type   A_54d9b0, %function
A_54d9b0:
        cmp     r1, #0x1c
        bhs     L54d9ec
        ands    r3, r1, #3
        lsr     r1, r1, #2
        add     r0, r0, r1, lsl #2
        strbeq  r2, [r0, #0x10]
        beq     L54d9ec
        cmp     r3, #1
        strbeq  r2, [r0, #0x11]
        beq     L54d9ec
        cmp     r3, #2
        strbeq  r2, [r0, #0x12]
        beq     L54d9ec
        cmp     r3, #3
        strbeq  r2, [r0, #0x13]
L54d9ec:
        bx      lr
        .size   A_54d9b0, . - A_54d9b0

@ FUN_0054d9f8
        .global A_54d9f8
        .type   A_54d9f8, %function
A_54d9f8:
        add     r0, r0, #4
        mov     r2, r1
        add     r1, r0, #4
        b       Fn_542230
        .size   A_54d9f8, . - A_54d9f8

@ FUN_0054da18
        .global A_54da18
        .type   A_54da18, %function
A_54da18:
        ldr     r1, [r0, #0x34]
        ldr     r0, [r0, #0x2c]
        lsl     r3, r0, #0x1c
        lsl     r2, r0, #0x1e
        lsr     r0, r3, #0x1e
        lsr     r2, r2, #0x19
        add     r0, r0, r0, lsl #2
        add     r0, r2, r0, lsl #2
        add     r0, r0, r1
        bx      lr
        .size   A_54da18, . - A_54da18

@ FUN_0054da40
        .global A_54da40
        .type   A_54da40, %function
A_54da40:
        cmp     r1, #0
        push    {r4, r5}
        beq     L54daa4
        ldr     r2, [r0, #0x2c]
        ldr     r3, [r0, #0x34]
        lsl     r4, r2, #0x1c
        lsl     ip, r2, #0x1e
        lsr     r2, r4, #0x1e
        lsr     ip, ip, #0x19
        add     r2, r2, r2, lsl #2
        add     r2, ip, r2, lsl #2
        add     ip, r3, r2
        ldr     r2, [r0, #0x30]
        lsl     r2, r2, #0x1a
        lsr     r2, r2, #0x1e
        cmp     r1, r2
        bls     L54daa4
L54da84:
        adds    r3, ip, r2, lsl #2
        beq     L54da98
        mov     r5, #0
        strb    r5, [r3]
        strb    r5, [r3, #1]
L54da98:
        add     r2, r2, #1
        cmp     r2, r1
        blo     L54da84
L54daa4:
        ldr     r2, [r0, #0x30]
        mov     r3, #0x30
        and     r1, r3, r1, lsl #4
        bic     r2, r2, #0x30
        orr     r1, r1, r2
        str     r1, [r0, #0x30]
        ldrb    r1, [r0, #0x4d]
        and     r1, r1, #0xfb
        strb    r1, [r0, #0x4d]
        pop     {r4, r5}
        bx      lr
        .size   A_54da40, . - A_54da40

@ FUN_0054db50
        .global A_54db50
        .type   A_54db50, %function
A_54db50:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #8]!
        cmp     r4, r0
        beq     L54db98
L54db64:
        ldrb    r0, [r4, #0xe]
        cmp     r0, #0
        bne     L54db88
        ldr     r0, [r4, #8]
        ldrh    r1, [r4, #0xc]
        ldr     r2, [r0]
        ldr     r3, [r2, #0xc]
        mov     r2, r5
        blx     r3
L54db88:
        ldr     r4, [r4]
        add     r0, r5, #8
        cmp     r4, r0
        bne     L54db64
L54db98:
        pop     {r4, r5, r6, pc}
        .size   A_54db50, . - A_54db50

@ FUN_0054e464
        .global A_54e464
        .type   A_54e464, %function
A_54e464:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r4, r0
        mov     r5, r1
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L54e598
        ldrb    r0, [r4]
        cmp     r5, r0
        bhi     L54e598
        ldr     r0, L54e59c
        ldr     r6, L54e5a0
        ldr     r0, [r0]
        tst     r0, #1
        bne     L54e4e0
        ldr     r0, L54e59c
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L54e4e0
        add     r0, r6, #0
        vldr    s1, L54e5a4
        vldr    s0, L54e5a8
        vstr    s1, [r0]
        vstr    s1, [r0, #4]
        add     r7, r6, #8
        ldr     r0, L54e59c
        vstmia  r7, {s0, s1}
        vstr    s1, [r6, #0x10]
        vstr    s0, [r6, #0x14]
        vstr    s0, [r6, #0x18]
        vstr    s0, [r6, #0x1c]
        mov     r0, r0
L54e4e0:
        ldrb    r2, [r4, #1]
        mov     r1, #0
        sub     ip, r5, r2
        lsl     r8, r2, #5
L54e4f0:
        cmp     ip, #0
        ble     L54e588
        cmp     r5, r2
        mov     r3, #0
        movle   r0, #0
        ble     L54e530
        and     r0, ip, #1
        cmp     r0, #1
        bne     L54e530
        add     r3, r6, r1, lsl #3
        ldr     sb, [r4, #4]
        ldm     r3, {r7, sl}
        add     fp, r8, r1, lsl #3
        add     sb, sb, fp
        mov     r3, #1
        stm     sb, {r7, sl}
L54e530:
        cmp     ip, r0
        addgt   r7, r6, r1, lsl #3
        ble     L54e588
L54e53c:
        add     sb, r2, r3
        ldr     sl, [r4, #4]
        lsl     sb, sb, #5
        add     sb, sb, r1, lsl #3
        add     sb, sb, sl
        vldmia  r7, {s0, s1}
        add     r3, r3, #1
        add     sl, r2, r3
        add     r0, r0, #2
        vstmia  sb, {s0, s1}
        lsl     sl, sl, #5
        ldr     sb, [r4, #4]
        add     sl, sl, r1, lsl #3
        vldmia  r7, {s0, s1}
        add     sb, sb, sl
        cmp     ip, r0
        add     r3, r3, #1
        vstmia  sb, {s0, s1}
        bgt     L54e53c
L54e588:
        add     r1, r1, #1
        cmp     r1, #4
        blt     L54e4f0
        strb    r5, [r4, #1]
L54e598:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L54e59c:
        .word   0x008b8630
L54e5a0:
        .word   0x009b3b28
L54e5a4:
        .word   0x00000000
L54e5a8:
        .word   0x3f800000
        .size   A_54e464, . - A_54e464

@ FUN_0054e638
        .global A_54e638
        .type   A_54e638, %function
A_54e638:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x40
        mov     fp, r0
        ldr     r0, [sp, #0x48]
        ldr     r7, L54e7f4
        mov     sl, #0
        mov     r4, sl
        ldr     r5, [r0, #4]
        ldr     r0, [sp, #0x44]
        mov     sb, sl
        add     r8, r0, #0xb8
        ldr     r0, [r5, #0x10]
        add     r6, r0, r5
        ldrh    r0, [r5, #0xe]
        cmp     r0, #0
        bls     L54e74c
L54e678:
        ldr     r1, [r6, sb, lsl #2]
        add     r0, r1, r5
        ldrb    r1, [r0, #0x15]
        cmp     r1, r4
        bne     L54e738
        mov     r1, r8
        bl      Fn_54e974
        cmp     r0, #0
        nop
        beq     L54e738
        cmp     sb, r7
        addne   r0, sl, #1
        str     sb, [sp, #0x38]
        uxthne  sl, r0
L54e6b0:
        ldr     r0, [sp, #0x44]
        ldr     r0, [r0]
        ldr     r1, [r0, #0x24]
        ldr     r0, [sp, #0x44]
        blx     r1
        subs    sb, r0, #0
        mov     r8, #0
        bls     L54e798
L54e6d0:
        ldr     r0, [sp, #0x44]
        mov     r1, r8
        ldr     r0, [r0]
        ldr     r2, [r0, #0x28]
        ldr     r0, [sp, #0x44]
        blx     r2
        add     r0, r0, #0x38
        str     r0, [sp, #0x10]
        ldr     r0, [r5, #0x10]
        mov     r6, #1
        mov     r4, #0
        add     r7, r0, r5
        ldrh    r0, [r5, #0xe]
        cmp     r0, #0
        bls     L54e768
L54e70c:
        ldr     r0, [r7, r4, lsl #2]
        add     r0, r0, r5
        ldrb    r1, [r0, #0x15]
        cmp     r1, r6
        bne     L54e754
        ldr     r1, [sp, #0x10]
        bl      Fn_54e974
        cmp     r0, #0
        nop
        bne     L54e76c
        b       L54e754
L54e738:
        ldrh    r1, [r5, #0xe]
        add     r0, sb, #1
        uxth    sb, r0
        cmp     r1, sb
        bhi     L54e678
L54e74c:
        str     r7, [sp, #0x38]
        b       L54e6b0
L54e754:
        ldrh    r0, [r5, #0xe]
        add     r1, r4, #1
        uxth    r4, r1
        cmp     r0, r4
        bhi     L54e70c
L54e768:
        ldr     r4, L54e7f4
L54e76c:
        add     r0, sp, #0x14
        add     r0, r0, r8, lsl #1
        sub     r1, r4, #0xff00
        subs    r1, r1, #0xff
        strh    r4, [r0]
        addne   r0, sl, #1
        uxthne  sl, r0
        add     r0, r8, #1
        and     r8, r0, #0xff
        cmp     r8, sb
        blo     L54e6d0
L54e798:
        cmp     sl, #0
        beq     L54e7ec
        ldr     r0, [sp, #0x48]
        cmp     sb, #0
        ldm     r0, {r1, r2, r3}
        ldr     r0, [r0, #0xc]
        str     r0, [fp, #0xc]
        stm     fp, {r1, r2, r3}
        movne   r1, #0
        ldr     r0, [sp, #0x38]
        strh    r0, [fp, #0x10]
        addne   r0, sp, #0x14
        strb    sb, [fp, #0x26]
        beq     L54e7e8
L54e7d0:
        ldrh    r2, [r0], #2
        add     r3, fp, r1, lsl #1
        subs    sb, sb, #1
        add     r1, r1, #1
        strh    r2, [r3, #0x14]
        bne     L54e7d0
L54e7e8:
        strh    sl, [fp, #0x12]
L54e7ec:
        add     sp, sp, #0x4c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L54e7f4:
        .word   0x0000ffff
        .size   A_54e638, . - A_54e638

@ FUN_0054e84c
        .global A_54e84c
        .type   A_54e84c, %function
A_54e84c:
        mov     r2, #0x10
        push    {r4, lr}
        bl      Fn_0315cc
        cmp     r0, #0
        moveq   r0, #1
        movne   r0, #0
        pop     {r4, pc}
        .size   A_54e84c, . - A_54e84c

@ FUN_0054e8ec
        .global A_54e8ec
        .type   A_54e8ec, %function
A_54e8ec:
        add     r0, r0, #0x1c
        mov     r0, r0
        mov     r3, r0
        ldr     r0, [r0, #4]
        add     r2, r3, #4
        cmp     r0, r2
        beq     L54e924
L54e908:
        ldr     r2, [r0, #8]
        cmp     r2, r1
        beq     L54e928
        ldr     r0, [r0]
        add     r2, r3, #4
        cmp     r0, r2
        bne     L54e908
L54e924:
        mov     r0, #0
L54e928:
        bx      lr
        .size   A_54e8ec, . - A_54e8ec

@ FUN_0054e92c
        .global A_54e92c
        .type   A_54e92c, %function
A_54e92c:
        add     r0, r0, #0x1c
        mov     r0, r0
        mov     r3, r0
        ldr     r0, [r0, #4]
        add     r2, r3, #4
        cmp     r0, r2
        ldrne   r2, [r1, #4]
        beq     L54e96c
L54e94c:
        ldr     r1, [r0, #8]
        ldr     r1, [r1, #0xc]
        cmp     r2, r1
        beq     L54e970
        ldr     r0, [r0]
        add     r1, r3, #4
        cmp     r0, r1
        bne     L54e94c
L54e96c:
        mov     r0, #0
L54e970:
        bx      lr
        .size   A_54e92c, . - A_54e92c

@ FUN_0054e974
        .global A_54e974
        .type   A_54e974, %function
A_54e974:
        mov     r2, #0x14
        push    {r4, lr}
        bl      Fn_0315cc
        cmp     r0, #0
        moveq   r0, #1
        movne   r0, #0
        pop     {r4, pc}
        .size   A_54e974, . - A_54e974

@ FUN_0054e990
        .global A_54e990
        .type   A_54e990, %function
A_54e990:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r7, r1
        ldr     r0, [r0]
        ldr     r1, [r0, #0x24]
        mov     r0, r5
        blx     r1
        subs    r6, r0, #0
        mov     r4, #0
        bls     L54e9f0
L54e9b8:
        ldr     r0, [r5]
        mov     r1, r4
        ldr     r2, [r0, #0x28]
        mov     r0, r5
        blx     r2
        cmp     r0, #0
        beq     L54e9e4
        ldr     r1, [r0]
        ldr     r2, [r1, #0xc]
        mov     r1, r7
        blx     r2
L54e9e4:
        add     r4, r4, #1
        cmp     r4, r6
        blo     L54e9b8
L54e9f0:
        mov     r1, r7
        add     r0, r5, #0x1c
        pop     {r4, r5, r6, r7, r8, lr}
        mov     r0, r0
        .size   A_54e990, . - A_54e990

@ FUN_0054ea00
        .global A_54ea00
        .type   A_54ea00, %function
A_54ea00:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r7, r1
        ldr     r4, [r0, #4]!
        cmp     r4, r0
        movne   r8, #0
        beq     L54ea5c
L54ea1c:
        mov     r1, r4
        cmp     r7, #0
        ldrne   r0, [r1, #8]
        mov     r6, r4
        ldr     r4, [r4]
        cmpne   r0, r7
        bne     L54ea50
        mov     r0, r5
        bl      Fn_542154
        mov     r0, #0
        strb    r8, [r6, #0xe]
        str     r0, [r6, #8]
        strh    r0, [r6, #0xc]
L54ea50:
        add     r0, r5, #4
        cmp     r4, r0
        bne     L54ea1c
L54ea5c:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_54ea00, . - A_54ea00

@ FUN_0054ec54
        .global A_54ec54
        .type   A_54ec54, %function
A_54ec54:
        add     r0, r0, r1, lsl #2
        ldr     r1, L54ec68
        ldr     r0, [r0, #0x1e0]
        ldr     r1, [r1, r2, lsl #2]
        b       Fn_665970
L54ec68:
        .word   0x007ebc64
        .size   A_54ec54, . - A_54ec54

@ FUN_0054ecd0
        .global A_54ecd0
        .type   A_54ecd0, %function
A_54ecd0:
        ldrb    r2, [r1, #3]
        vldr    s0, L54ed1c
        ldr     r0, [r0, #0x2b8]
        vmov    s1, r2
        ldrb    r2, [r1, #2]
        vcvt.f32.u32 s1, s1
        vmul.f32 s3, s1, s0
        vmov    s1, r2
        ldrb    r2, [r1, #1]
        ldrb    r1, [r1]
        vmov    s4, r1
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s4, s4
        vmul.f32 s2, s1, s0
        vmov    s1, r2
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vmul.f32 s0, s4, s0
        b       Fn_6659b0
L54ed1c:
        .word   0x3b808081
        .size   A_54ecd0, . - A_54ecd0

@ FUN_0054ed50
        .global A_54ed50
        .type   A_54ed50, %function
A_54ed50:
        add     r0, r0, r1, lsl #2
        ldr     r1, L54ed64
        ldr     r0, [r0, #0x1f8]
        ldr     r1, [r1, r2, lsl #2]
        b       Fn_665970
L54ed64:
        .word   0x007ebc64
        .size   A_54ed50, . - A_54ed50

@ FUN_0054f168
        .global A_54f168
        .type   A_54f168, %function
A_54f168:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     sl, r1
        mov     fp, r2
        mov     sb, r3
        vpush   {d8}
        ldr     r5, [r0, #0x80]
        ldr     r4, [sp, #0x34]
        ldr     r7, [sp, #0x30]
        mov     r0, r5
        ldrb    r1, [r5, #0x2df]
        cmp     r1, #0
        beq     L54f1a4
        mov     r1, #0
        strb    r1, [r0, #0x2df]
        bl      Fn_543b24
L54f1a4:
        cmp     r4, #0
        beq     L54f290
        ldrb    r0, [r4, #3]
        ldrb    r1, [r4, #2]
        ldrb    r2, [r4, #1]
        ldrb    r3, [r4]
        vmov    s3, r0
        vmov    s2, r1
        vmov    s1, r2
        vmov    s0, r3
        ldr     r6, [r5, #0x1bc]
        vcvt.f32.u32 s3, s3
        vcvt.f32.u32 s2, s2
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        mov     r0, r6
        bl      Fn_6659b0
        ldrb    r0, [r4, #7]
        ldrb    r1, [r4, #6]
        ldrb    r2, [r4, #5]
        ldrb    r3, [r4, #4]
        vmov    s3, r0
        vmov    s2, r1
        vmov    s1, r2
        vmov    s0, r3
        add     r0, r6, #1
        vcvt.f32.u32 s3, s3
        vcvt.f32.u32 s2, s2
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
        ldrb    r0, [r4, #0xb]
        ldrb    r1, [r4, #0xa]
        ldrb    r2, [r4, #9]
        ldrb    r3, [r4, #8]
        vmov    s2, r0
        vmov    s0, r1
        vmov    s1, r2
        vmov    s4, r3
        add     r0, r6, #2
        vcvt.f32.u32 s3, s2
        vcvt.f32.u32 s2, s0
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s4
        bl      Fn_6659b0
        ldrb    r2, [r4, #0xf]
        ldrb    r0, [r4, #0xe]
        ldrb    r1, [r4, #0xd]
        ldrb    r3, [r4, #0xc]
        vmov    s3, r2
        vmov    s2, r0
        vmov    s1, r1
        vmov    s0, r3
        add     r0, r6, #3
        vcvt.f32.u32 s3, s3
        vcvt.f32.u32 s2, s2
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        bl      Fn_6659b0
L54f290:
        cmp     sb, #0
        cmpne   r7, #0
        beq     L54f33c
        mov     r4, #0
        vldr    s16, L54f38c
        vldr    s17, L54f390
L54f2a8:
        add     r0, r5, r4
        add     r0, r0, #0x200
        ldrsb   r0, [r0, #0xd8]
        cmp     r0, #0
        blt     L54f330
        cmp     r7, #0
        cmpne   sb, r0
        ble     L54f330
        add     r1, r5, r4, lsl #2
        add     r6, r7, r0, lsl #5
        ldr     r8, [r1, #0x1c0]
        vmov.f32 s3, s16
        vmov.f32 s2, s17
        vldmia  r6, {s0, s1}
        mov     r0, r8
        bl      Fn_6659b0
        add     r1, r6, #8
        vmov.f32 s3, s16
        vmov.f32 s2, s17
        vldmia  r1, {s0, s1}
        add     r0, r8, #1
        bl      Fn_6659b0
        add     r1, r6, #0x10
        vmov.f32 s3, s16
        vmov.f32 s2, s17
        vldmia  r1, {s0, s1}
        add     r0, r8, #2
        bl      Fn_6659b0
        add     r6, r6, #0x18
        vmov.f32 s3, s16
        vmov.f32 s2, s17
        vldmia  r6, {s0, s1}
        add     r0, r8, #3
        bl      Fn_6659b0
L54f330:
        add     r4, r4, #1
        cmp     r4, #3
        blt     L54f2a8
L54f33c:
        vldmia  sl, {s2, s3}
        ldr     r0, [r5, #0x1b4]
        vldmia  fp, {s0, s1}
        bl      Fn_6659b0
        ldrb    r0, [r5, #0x2de]
        cmp     r0, #0
        bne     L54f370
        ldr     r0, [r5, #0x1a0]
        mov     r1, #1
        strb    r1, [r5, #0x2de]
        add     r2, r5, #0x164
        mov     r1, #3
        bl      Fn_6659f4
L54f370:
        vpop    {d8}
        mov     r3, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r1, #6
        mov     r0, #4
        ldr     r2, L54f394
        b       Fn_6617b0
L54f38c:
        .word   0x3f800000
L54f390:
        .word   0x00000000
L54f394:
        .word   0x00001403
        .size   A_54f168, . - A_54f168

@ FUN_0054f598
        .global A_54f598
        .type   A_54f598, %function
A_54f598:
        push    {r4, lr}
        ldrb    r4, [r0, #0x54]
        sub     sp, sp, #0x10
        ldr     ip, [sp, #0x18]
        cmp     r4, #0
        moveq   r0, #0x10
        beq     L54f5d0
        ldrsb   ip, [ip]
        str     r3, [sp, #8]
        mov     r3, #0
        stm     sp, {r0, ip}
        ldr     r0, [r0, #4]
        bl      Fn_552434
        and     r0, r0, #0xff
L54f5d0:
        add     sp, sp, #0x10
        pop     {r4, pc}
        .size   A_54f598, . - A_54f598

@ FUN_0054f5d8
        .global A_54f5d8
        .type   A_54f5d8, %function
A_54f5d8:
        ldrb    r2, [r0, #0x54]
        cmp     r2, #0
        mvneq   r0, #0
        beq     L54f5f8
        ldr     r0, [r0, #4]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        bx      r2
L54f5f8:
        bx      lr
        .size   A_54f5d8, . - A_54f5d8

@ FUN_0054f5fc
        .global A_54f5fc
        .type   A_54f5fc, %function
A_54f5fc:
        push    {r4, lr}
        sub     sp, sp, #8
        strb    r3, [sp, #4]
        add     r3, sp, #4
        str     r3, [sp]
        ldr     r3, [r0]
        ldr     r4, [sp, #0x10]
        ldr     ip, [r3, #0x10]
        mov     r3, r4
        blx     ip
        add     sp, sp, #8
        and     r0, r0, #0xff
        pop     {r4, pc}
        .size   A_54f5fc, . - A_54f5fc

@ FUN_0054f630
        .global A_54f630
        .type   A_54f630, %function
A_54f630:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        add     r5, sp, #0x18
        ldm     r5, {r4, ip}
        ldrb    r5, [r0, #0x54]
        cmp     r5, #0
        moveq   r0, #0x10
        beq     L54f66c
        ldrsb   ip, [ip]
        str     r3, [sp, #8]
        mov     r3, r4
        stm     sp, {r0, ip}
        ldr     r0, [r0, #4]
        bl      Fn_552434
        and     r0, r0, #0xff
L54f66c:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   A_54f630, . - A_54f630

@ FUN_0054f674
        .global A_54f674
        .type   A_54f674, %function
A_54f674:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0x55]
        cmp     r0, #0
        moveq   r4, #0
        bne     L54f6d0
L54f68c:
        add     r0, r5, r4, lsl #4
        add     r0, r0, #8
        mov     r1, r5
        bl      Fn_55b9b8
        add     r4, r4, #1
        cmp     r4, #4
        blt     L54f68c
        mov     r1, #1
        mov     r0, #0
        strb    r1, [r5, #0x55]
        strb    r0, [r5, #0x54]
        str     r0, [r5, #4]
        vldr    s0, L54f6d4
        vldr    s1, L54f6d8
        add     r0, r5, #0x4c
        vstmia  r0, {s0, s1}
        vstr    s0, [r5, #0x48]
L54f6d0:
        pop     {r4, r5, r6, pc}
L54f6d4:
        .word   0x3f800000
L54f6d8:
        .word   0x00000000
        .size   A_54f674, . - A_54f674

@ FUN_0054f7dc
        .global A_54f7dc
        .type   A_54f7dc, %function
A_54f7dc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L54f860
        str     r0, [r5]
        ldrb    r0, [r5, #0x55]
        cmp     r0, #0
        moveq   r4, #0
        bne     L54f840
L54f7fc:
        add     r0, r5, r4, lsl #4
        add     r0, r0, #8
        mov     r1, r5
        bl      Fn_55b9b8
        add     r4, r4, #1
        cmp     r4, #4
        blt     L54f7fc
        mov     r2, #1
        mov     r0, #0
        strb    r2, [r5, #0x55]
        strb    r0, [r5, #0x54]
        str     r0, [r5, #4]
        vldr    s0, L54f864
        vldr    s1, L54f868
        add     r0, r5, #0x4c
        vstmia  r0, {s0, s1}
        vstr    s0, [r5, #0x48]
L54f840:
        ldr     r1, L54f86c
        mov     r3, #4
        mov     r2, #0x10
        add     r0, r5, #8
        blx     Fn_000068_t
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L54f860:
        .word   0x0082ca40
L54f864:
        .word   0x3f800000
L54f868:
        .word   0x00000000
L54f86c:
        .word   0x0065ba30
        .size   A_54f7dc, . - A_54f7dc

@ FUN_0054f870
        .global A_54f870
        .type   A_54f870, %function
A_54f870:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L54f8f0
        str     r0, [r5]
        ldrb    r0, [r5, #0x55]
        cmp     r0, #0
        moveq   r4, #0
        bne     L54f8d4
L54f890:
        add     r0, r5, r4, lsl #4
        add     r0, r0, #8
        mov     r1, r5
        bl      Fn_55b9b8
        add     r4, r4, #1
        cmp     r4, #4
        blt     L54f890
        mov     r2, #1
        mov     r0, #0
        strb    r2, [r5, #0x55]
        strb    r0, [r5, #0x54]
        str     r0, [r5, #4]
        vldr    s0, L54f8f4
        vldr    s1, L54f8f8
        add     r0, r5, #0x4c
        vstmia  r0, {s0, s1}
        vstr    s0, [r5, #0x48]
L54f8d4:
        ldr     r1, L54f8fc
        mov     r3, #4
        mov     r2, #0x10
        add     r0, r5, #8
        blx     Fn_000068_t
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L54f8f0:
        .word   0x0082ca40
L54f8f4:
        .word   0x3f800000
L54f8f8:
        .word   0x00000000
L54f8fc:
        .word   0x0065ba30
        .size   A_54f870, . - A_54f870

@ FUN_0054f908
        .global A_54f908
        .type   A_54f908, %function
A_54f908:
        ldr     r2, [r0]
        cmp     r2, #0
        beq     L54f940
        ldr     r3, [r2, #8]
        mov     r1, #0
        cmp     r3, r0
        streq   r1, [r2, #8]
        ldr     r2, [r0]
        ldr     r3, [r2, #0xc]
        cmp     r3, r0
        streq   r1, [r2, #0xc]
        ldr     r2, [r0]
        cmp     r2, #0
        strne   r1, [r0]
L54f940:
        bx      lr
        .size   A_54f908, . - A_54f908

@ FUN_0054f944
        .global A_54f944
        .type   A_54f944, %function
A_54f944:
        push    {r4, lr}
        mov     r4, r0
        str     r1, [r0]
        mov     r0, r1
        bl      Fn_5558bc
        cmp     r0, #0
        ldrne   r0, [r4]
        blne    Fn_54f900
        ldr     r0, [r4]
        str     r4, [r0, #8]
        pop     {r4, pc}
        .size   A_54f944, . - A_54f944

@ FUN_0054f970
        .global A_54f970
        .type   A_54f970, %function
A_54f970:
        push    {r4, lr}
        mov     r4, r0
        str     r1, [r0]
        mov     r0, r1
        bl      Fn_5558fc
        cmp     r0, #0
        ldrne   r0, [r4]
        blne    Fn_5558b4
        ldr     r0, [r4]
        str     r4, [r0, #0xc]
        pop     {r4, pc}
        .size   A_54f970, . - A_54f970

@ FUN_0054fa00
        .global A_54fa00
        .type   A_54fa00, %function
A_54fa00:
        push    {r4, r5, r6, r7, r8, lr}
        mov     ip, r1
        add     r2, r0, #0x10
        ldr     r1, [r0, #0x10]
        cmp     r1, r2
        beq     L54fad0
        ldrb    r2, [ip, #0x9c]
        ldr     r3, [ip, #0x50]
        ldrsb   lr, [r0, #0x48]
        add     r2, r2, r3
L54fa28:
        cmp     lr, #0
        sub     r3, r1, #0xf4
        beq     L54fa7c
        ldrb    r7, [r3, #0x9c]
        ldr     r3, [r3, #0x50]
        cmp     r2, #0x7f
        mov     r4, #0x7f
        subsle  r4, r2, #0
        mov     r5, #0
        movge   r5, r4
        add     r3, r3, r7
        cmp     r3, #0x7f
        mov     r4, #0x7f
        mov     r6, #0
        movgt   r3, r4
        bgt     L54fa70
        cmp     r3, #0
        movlt   r3, r6
L54fa70:
        cmp     r5, r3
        ble     L54fad0
        b       L54fac0
L54fa7c:
        ldrb    r7, [r3, #0x9c]
        ldr     r3, [r3, #0x50]
        cmp     r2, #0x7f
        mov     r5, #0x7f
        subsle  r5, r2, #0
        mov     r4, #0
        movge   r4, r5
        add     r3, r3, r7
        cmp     r3, #0x7f
        mov     r5, #0x7f
        mov     r6, #0
        movgt   r3, r5
        bgt     L54fab8
        cmp     r3, #0
        movlt   r3, r6
L54fab8:
        cmp     r4, r3
        blt     L54fad0
L54fac0:
        ldr     r1, [r1]
        add     r3, r0, #0x10
        cmp     r1, r3
        bne     L54fa28
L54fad0:
        pop     {r4, r5, r6, r7, r8, lr}
        add     r0, r0, #0xc
        add     r2, ip, #0xf4
        b       Fn_542230
        .size   A_54fa00, . - A_54fa00

@ FUN_0054fae0
        .global A_54fae0
        .type   A_54fae0, %function
A_54fae0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r1, #0x9c]
        ldr     r2, [r1, #0x50]
        mov     r5, r1
        ldr     r1, [r4, #0x24]
        add     r0, r0, r2
        usat    r6, #7, r0
        cmp     r1, #0
        beq     L54fb58
L54fb08:
        ldr     r0, [r4]
        ldr     r1, [r4, #0x24]
        cmp     r1, r0
        bgt     L54fb70
        ldr     r0, [r4, #0x10]
        subs    r0, r0, #0xf4
        beq     L54fb5c
        ldrb    r1, [r4, #0x48]
        ldr     r2, [r0, #0x50]
        cmp     r1, #0
        ldrb    r1, [r0, #0x9c]
        add     r1, r1, r2
        beq     L54fb4c
        usat    r1, #7, r1
        cmp     r6, r1
        ble     L54fb58
        b       L54fb60
L54fb4c:
        usat    r1, #7, r1
        cmp     r6, r1
        bge     L54fb60
L54fb58:
        mov     r0, #0
L54fb5c:
        pop     {r4, r5, r6, pc}
L54fb60:
        ldr     r1, [r0]
        ldr     r1, [r1, #0x10]
        blx     r1
        b       L54fb08
L54fb70:
        mov     r0, r4
        add     r1, r4, #4
        add     r2, r5, #0xec
        bl      Fn_542230
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54fa00
        mov     r1, r4
        mov     r0, r5
        str     r1, [r0, #0x10]
        mov     r0, #1
        pop     {r4, r5, r6, pc}
        .size   A_54fae0, . - A_54fae0

@ FUN_0054fba0
        .global A_54fba0
        .type   A_54fba0, %function
A_54fba0:
        ldr     r2, [r0, #0x24]
        cmp     r2, #0
        beq     L54fbf8
        ldr     r3, [r0]
        cmp     r2, r3
        bgt     L54fc00
        ldr     r2, [r0, #0x10]
        subs    r2, r2, #0xf4
        beq     L54fbf8
        ldrb    r0, [r0, #0x48]
        cmp     r0, #0
        ldrb    r0, [r2, #0x9c]
        ldr     r2, [r2, #0x50]
        add     r0, r0, r2
        beq     L54fbec
        usat    r0, #7, r0
        cmp     r1, r0
        ble     L54fbf8
        b       L54fc00
L54fbec:
        usat    r0, #7, r0
        cmp     r0, r1
        ble     L54fc00
L54fbf8:
        mov     r0, #0
        bx      lr
L54fc00:
        mov     r0, #1
        bx      lr
        .size   A_54fba0, . - A_54fba0

@ FUN_0054fc54
        .global A_54fc54
        .type   A_54fc54, %function
A_54fc54:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        ldr     r4, [r1, #4]
        mov     r5, r1
        cmp     r4, #0
        beq     L54fc94
        mov     r0, r4
        bl      Fn_556870
        mov     r1, r4
        mov     r0, r5
        bl      Fn_5557e4
        add     r0, r6, #0x18
        add     r1, r6, #0x1c
        add     r2, r4, #0x18
        pop     {r4, r5, r6, lr}
        b       Fn_542230
L54fc94:
        pop     {r4, r5, r6, pc}
        .size   A_54fc54, . - A_54fc54

@ FUN_0054fc98
        .global A_54fc98
        .type   A_54fc98, %function
A_54fc98:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        ldr     r1, [r0, #0x18]
        cmp     r1, #0
        moveq   r0, #0
        beq     L54fcdc
        ldr     r1, [r0, #0x1c]
        add     r0, r0, #0x18
        sub     r4, r1, #0x18
        bl      Fn_542154
        mov     r1, r5
        mov     r0, r4
        str     r1, [r0, #4]
        mov     r1, r4
        mov     r0, r5
        str     r1, [r0, #4]
        mov     r0, r4
L54fcdc:
        pop     {r4, r5, r6, pc}
        .size   A_54fc98, . - A_54fc98

@ FUN_00550314
        .global A_550314
        .type   A_550314, %function
A_550314:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        vpush   {d8}
        sub     sp, sp, #0x58
        ldrb    r0, [r0, #0x81]
        vldr    s16, [sp, #0x78]
        mov     r7, r3
        cmp     r0, #0
        moveq   r0, #0x10
        beq     L550468
        add     r0, sp, #8
        bl      Fn_5506c4
        add     r0, r4, #0x68
        add     r3, sp, #8
        ldm     r0, {r0, r1, r2}
        stm     r3, {r0, r1, r2}
        add     r0, r4, #0x74
        add     r3, sp, #0x14
        ldm     r0, {r0, r1, r2}
        stm     r3, {r0, r1, r2}
        ldr     r0, [r4, #0x64]
        str     r0, [sp, #0x24]
        ldr     r0, [r4, #0x60]
        cmp     r0, #0
        beq     L5503e8
        ldr     r0, [r0, #4]
        mov     r8, r0
        add     r2, sp, #0x34
        mov     r1, r6
        bl      Fn_6368d0
        cmp     r0, #0
        beq     L5503d8
        ldr     r1, [sp, #0x34]
        mov     r0, #1
        str     r1, [sp, #0x20]
        ldr     r1, [sp, #0x38]
        str     r1, [sp, #0x2c]
        ldrb    r1, [sp, #0x3d]
        strb    r1, [sp, #0x31]
        ldrb    r1, [sp, #0x3c]
        cmp     r1, #1
        beq     L5503d4
        cmp     r1, #2
        moveq   r0, #2
        strbeq  r0, [sp, #0x30]
        beq     L5503d8
L5503d4:
        strb    r0, [sp, #0x30]
L5503d8:
        mov     r1, r6
        mov     r0, r8
        bl      Fn_636924
        str     r0, [sp, #0x28]
L5503e8:
        ldr     r1, L550474
        add     r8, sp, #0x44
        add     r2, r4, #0x58
        add     r0, r1, #4
        ldr     r1, [r1, #0x10]
        ldm     r0, {r0, r3, ip}
        str     r1, [sp, #0x50]
        add     r1, sp, #0x40
        stm     r8, {r0, r3, ip}
        mov     r3, r7
        ldr     r0, [r4, #0x5c]
        stm     r1, {r0, r2}
        mov     r2, r6
        ldr     r0, [r4, #0x5c]
        cmp     r0, #0
        addne   r1, r0, #4
        moveq   r1, #0
        str     r1, [sp, #0x48]
        add     r0, sp, #0x40
        add     r1, sp, #8
        str     r0, [sp]
        str     r1, [sp, #0x4c]
        vstr    s16, [sp, #4]
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54f630
        mov     r4, r0
        ldr     r0, [r5]
        cmp     r0, #0
        movne   r1, #3
        blne    Fn_55549c
        and     r0, r4, #0xff
L550468:
        add     sp, sp, #0x58
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L550474:
        .word   0x007f3d44
        .size   A_550314, . - A_550314

@ FUN_005504e0
        .global A_5504e0
        .type   A_5504e0, %function
A_5504e0:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r8, r0
        ldrb    r0, [r0, #0x82]
        cmp     r0, #0
        bne     L550570
        ldr     r6, L550574
        mov     r7, #0
        mov     sb, r7
L550500:
        add     r0, r8, r7, lsl #4
        add     r5, r0, #8
        ldr     r4, [r0, #0xc]!
        cmp     r4, r0
        beq     L550548
L550514:
        sub     r1, r4, #0xfc
        ldr     r4, [r4]
        mov     r0, sp
        str     sb, [sp]
        bl      Fn_54f970
        mov     r0, sp
        mov     r1, r6
        blx     r1
        mov     r0, sp
        bl      Fn_54f908
        add     r0, r5, #4
        cmp     r4, r0
        bne     L550514
L550548:
        add     r7, r7, #1
        cmp     r7, #4
        blt     L550500
        mov     r0, r8
        bl      Fn_54f674
        mov     r0, #1
        strb    r0, [r8, #0x82]
        strb    sb, [r8, #0x81]
        str     sb, [r8, #0x5c]
        str     sb, [r8, #0x60]
L550570:
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L550574:
        .word   0x006504cc
        .size   A_5504e0, . - A_5504e0

@ FUN_00550694
        .global A_550694
        .type   A_550694, %function
A_550694:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L5506c0
        add     r1, r0, #0x24
        str     r0, [r4]
        mov     r0, r4
        str     r1, [r4, #0x58]
        bl      Fn_5504e0
        mov     r0, r4
        pop     {r4, lr}
        b       Fn_54f870
L5506c0:
        .word   0x0082ca60
        .size   A_550694, . - A_550694

@ FUN_005506c4
        .global A_5506c4
        .type   A_5506c4, %function
A_5506c4:
        mov     r1, #0
        str     r1, [r0, #0x18]
        vldr    s0, L5506ec
        str     r1, [r0, #0x1c]
        str     r1, [r0, #0x20]
        mov     r2, #1
        vstr    s0, [r0, #0x24]
        strb    r2, [r0, #0x28]
        strb    r1, [r0, #0x29]
        bx      lr
L5506ec:
        .word   0x3f000000
        .size   A_5506c4, . - A_5506c4

@ FUN_00550714
        .global A_550714
        .type   A_550714, %function
A_550714:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, #0
        strb    r5, [r4]
        strb    r5, [r4, #1]
        strb    r5, [r4, #2]
        mov     r0, #0x7f
        strb    r5, [r4, #3]
        strb    r0, [r4, #4]
        mov     r1, #0x40
        strb    r1, [r4, #7]
        strb    r5, [r4, #8]
        strb    r5, [r4, #9]
        mvn     r2, #0
        mov     r1, #2
        add     r0, r4, #0xb
        strb    r5, [r4, #0xa]
        bl      Fn_01a48c
        mov     r0, r4
        strh    r5, [r4, #5]
        pop     {r4, r5, r6, pc}
        .size   A_550714, . - A_550714

@ FUN_00550804
        .global A_550804
        .type   A_550804, %function
A_550804:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r8, r3
        mov     r7, r2
        vpush   {d8, d9}
        sub     sp, sp, #0x18
        add     r0, sp, #0x40
        add     r3, sp, #0x10
        vldmia  r0, {s16, s17, s18}
        mvn     r0, #0
        mov     r2, #0
        str     r0, [sp, #0xc]
        stm     r3, {r0, r2}
        add     r6, sp, #0xc
        mov     r3, r2
        ldr     r0, [r4, #4]
        mov     r5, r1
        mov     r2, r6
        bl      Fn_6394b8
        cmp     r0, #0
        beq     L5508ac
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L550888
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        mov     r3, #0
        beq     L550888
        ldr     ip, [r0]
        ldr     ip, [ip, #0x24]
        blx     ip
L550888:
        ldr     r0, [sp, #0x14]
        cmp     r0, #0
        beq     L5508b8
        mov     r3, r0
        mov     r2, r8
        mov     r1, r7
        mov     r0, r4
        vstmia  sp, {s16, s17, s18}
        bl      Fn_63696c
L5508ac:
        add     sp, sp, #0x18
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, pc}
L5508b8:
        ldr     r0, [sp, #0xc]
        cmn     r0, #1
        beq     L550908
        ldr     r0, [sp, #0x10]
        cmn     r0, #1
        beq     L550908
        ldr     r0, [sp, #0xc]
        str     r0, [sp]
        ldr     r2, [r4]
        ldr     r0, [sp, #0x10]
        ldr     r1, [r4, #0x10c]
        ldr     ip, [r2, #0x10]
        add     r3, r0, r1
        mov     r2, r8
        mov     r1, r7
        mov     r0, r4
        blx     ip
        add     sp, sp, #0x18
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, pc}
L550908:
        add     sp, sp, #0x18
        mov     r0, #0
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_550804, . - A_550804

@ FUN_005509a8
        .global A_5509a8
        .type   A_5509a8, %function
A_5509a8:
        push    {r4, lr}
        ldr     ip, [r2, #0x18]
        sub     sp, sp, #0x30
        vldr    s1, L550a18
        vldr    s0, L550a1c
        vstr    s1, [sp, #8]
        vstr    s1, [sp, #0xc]
        vstr    s0, [sp, #0x10]
        vstr    s0, [sp, #0x14]
        vstr    s0, [sp, #0x18]
        vstr    s0, [sp, #0x1c]
        mov     r4, #0
        vstr    s0, [sp, #0x20]
        tst     ip, #2
        mov     ip, #0x1000000
        str     r4, [sp, #0x28]
        str     r4, [sp, #0x24]
        str     r4, [sp, #0x2c]
        orrne   ip, ip, ip, asr #23
        add     r4, sp, #8
        str     r4, [sp, #4]
        str     ip, [sp]
        ldr     ip, [r0]
        ldr     ip, [ip, #0x10]
        blx     ip
        ldr     r0, [sp, #0x28]
        add     sp, sp, #0x30
        pop     {r4, pc}
L550a18:
        .word   0x3f800000
L550a1c:
        .word   0x00000000
        .size   A_5509a8, . - A_5509a8

@ FUN_00550a20
        .global A_550a20
        .type   A_550a20, %function
A_550a20:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        add     r8, r1, #0xc
        mov     sb, r1
        mov     fp, r0
        mov     sl, r2
        vpush   {d8}
        sub     sp, sp, #0x34
        vldr    s16, L550c0c
        ldrd    r4, r5, [sp, #0x60]
        tst     r4, #1
        vstrne  s16, [r5]
        tst     r4, #2
        beq     L550a60
        ldr     r0, [sb, #0x1c]
        rsb     r0, r0, #0
        str     r0, [r5, #0x20]
L550a60:
        tst     r4, #0x10
        vstrne  s16, [r5, #0x18]
        ldr     r0, [r8]
        cmp     r0, #1
        bls     L550a78
        bic     r4, r4, #0x2c
L550a78:
        ldr     r6, [r8, #4]
        add     r0, r8, #4
        cmp     r6, r0
        beq     L550c00
L550a88:
        vmov.f32 s17, s16
        tst     r4, #0x33
        sub     r7, r6, #0x64
        beq     L550ad8
        vldr    s0, [sl]
        vldr    s1, [r7, #0x30]
        vsub.f32 s0, s0, s1
        vstr    s0, [sp, #0x18]
        vmul.f32 s1, s0, s0
        vldr    s0, [sl, #4]
        vldr    s2, [r7, #0x34]
        vsub.f32 s0, s0, s2
        vstr    s0, [sp, #0x1c]
        vmla.f32 s1, s0, s0
        vldr    s0, [sl, #8]
        vldr    s2, [r7, #0x38]
        vsub.f32 s0, s0, s2
        vstr    s0, [sp, #0x20]
        vmla.f32 s1, s0, s0
        vsqrt.f32 s17, s1
L550ad8:
        tst     r4, #3
        beq     L550b40
        add     r0, sp, #4
        str     r0, [sp]
        vmov.f32 s0, s17
        add     r3, sp, #0x28
        mov     r2, sl
        mov     r1, r7
        mov     r0, sb
        bl      Fn_55188c
        tst     r4, #1
        nop
        beq     L550b24
        vldr    s0, [r5]
        vldr    s1, [sp, #0x28]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovhs.f32 s0, s1
        vstr    s0, [r5]
L550b24:
        tst     r4, #2
        beq     L550b40
        ldr     r0, [r5, #0x20]
        ldr     r1, [sp, #4]
        cmp     r1, r0
        movge   r0, r1
        str     r0, [r5, #0x20]
L550b40:
        tst     r4, #0xc
        beq     L550b80
        add     r1, sp, #0x28
        add     r0, sp, #0xc
        strd    r0, r1, [sp]
        add     r3, fp, #4
        mov     r2, sl
        mov     r1, r7
        mov     r0, sb
        bl      Fn_55194c
        tst     r4, #4
        ldrne   r0, [sp, #0xc]
        strne   r0, [r5, #8]
        tst     r4, #8
        ldrne   r0, [sp, #0x28]
        strne   r0, [r5, #0xc]
L550b80:
        tst     r4, #0x20
        beq     L550bb0
        add     r0, sp, #0x2c
        vmov.f32 s0, s17
        str     r0, [sp]
        add     r3, sp, #0x18
        mov     r2, sl
        mov     r1, r7
        mov     r0, sb
        bl      Fn_551a0c
        ldr     r0, [sp, #0x2c]
        str     r0, [r5, #4]
L550bb0:
        tst     r4, #0x10
        beq     L550bf0
        vmov.f32 s0, s17
        mov     r3, sp
        mov     r2, sl
        mov     r1, r7
        mov     r0, sb
        bl      Fn_551848
        ldr     r0, [sb, #0x28]
        str     r0, [r5, #0x1c]
        vldr    s1, [r5, #0x18]
        vldr    s0, [sp]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
        vstr    s0, [r5, #0x18]
L550bf0:
        ldr     r6, [r6]
        add     r0, r8, #4
        cmp     r6, r0
        bne     L550a88
L550c00:
        add     sp, sp, #0x34
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L550c0c:
        .word   0x00000000
        .size   A_550a20, . - A_550a20

@ FUN_00550c10
        .global A_550c10
        .type   A_550c10, %function
A_550c10:
        push    {r4, r5, lr}
        mov     ip, #0
        ldr     r4, [r2, #0x18]
        sub     sp, sp, #0xc
        tst     r4, #1
        movne   ip, #1
        tst     r4, #2
        orrne   ip, ip, #2
        tst     r4, #4
        orrne   ip, ip, #4
        tst     r4, #8
        orrne   ip, ip, #8
        tst     r4, #0x10
        ldrb    r4, [r2, #0x29]
        orrne   ip, ip, #0x10
        vldr    s0, [sp, #0x18]
        cmp     r4, #0
        orrne   ip, ip, #0x20
        str     ip, [sp]
        vstr    s0, [sp, #4]
        ldr     ip, [r0]
        ldr     ip, [ip, #0x10]
        blx     ip
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   A_550c10, . - A_550c10

@ FUN_00550d80
        .global A_550d80
        .type   A_550d80, %function
A_550d80:
        mov     ip, r0
        push    {r4, lr}
        ldr     r0, [r0, #0x18]
        mov     r3, r2
        mov     r2, r1
        cmp     r0, #0
        mov     r1, #0
        beq     L550db4
        ldr     r1, [r0]
        ldr     r4, [r1, #0xc]
        mov     r1, ip
        blx     r4
        mov     r1, r0
L550db4:
        mov     r0, r1
        pop     {r4, pc}
        .size   A_550d80, . - A_550d80

@ FUN_00550dbc
        .global A_550dbc
        .type   A_550dbc, %function
A_550dbc:
        push    {r3, r4, r5, lr}
        mov     ip, r0
        ldr     r0, [r0, #0x18]
        mov     r5, r2
        mov     r2, r1
        cmp     r0, #0
        beq     L550df0
        str     r3, [sp]
        ldr     r1, [r0]
        mov     r3, r5
        ldr     r4, [r1, #8]
        mov     r1, ip
        blx     r4
L550df0:
        pop     {r3, r4, r5, pc}
        .size   A_550dbc, . - A_550dbc

@ FUN_0055132c
        .global A_55132c
        .type   A_55132c, %function
A_55132c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x24
        mov     r7, r0
        mov     r5, r1
        mov     r8, r2
        ldr     r0, [r0, #0x218]
        mov     sl, #0
        cmp     r0, #0
        beq     L551390
        ldr     r0, [r0]
        cmp     r0, #0
        mov     r0, #0
        movhi   ip, #4
        bls     L551390
L551364:
        ldr     r2, [r7, #0x218]
        add     r3, ip, r0, lsl #2
        add     r0, r0, #1
        ldr     r1, [r2, r3]
        cmp     r5, r1
        cmpls   r1, r8
        strls   sl, [r2, r3]
        ldr     r1, [r7, #0x218]
        ldr     r1, [r1]
        cmp     r1, r0
        bhi     L551364
L551390:
        ldr     r0, [r7, #0x10]
        cmp     r0, #0
        str     r0, [sp]
        beq     L55146c
        bl      Fn_6397b8
        subs    sb, r0, #0
        mov     r6, #0
        mvnhi   fp, #0
        bls     L55146c
L5513b4:
        ldr     r0, [sp]
        orr     r1, r6, #0x5000000
        add     r2, sp, #4
        str     fp, [sp, #4]
        strb    sl, [sp, #0xc]
        bl      Fn_636ad0
        cmp     r0, #0
        ldrbne  r0, [sp, #0xc]
        cmpne   r0, #0
        beq     L551460
        ldr     r0, [r7]
        ldr     r1, [sp, #4]
        ldr     r2, [r0, #0x10]
        mov     r0, r7
        blx     r2
        cmp     r0, #0
        beq     L551460
        mov     r1, r0
        mov     r2, #1
        add     r0, sp, #0x10
        bl      Fn_55c698
        ldr     r0, [sp, #8]
        mov     r4, #0
        cmp     r0, #0
        bls     L551460
L551418:
        mov     r1, r4
        add     r0, sp, #0x10
        bl      Fn_63930c
        cmp     r0, #0
        nop
        beq     L551450
        cmp     r5, r0
        bhi     L551450
        cmp     r0, r8
        bhi     L551450
        mov     r2, #0
        mov     r1, r4
        add     r0, sp, #0x10
        bl      Fn_55c5f0
L551450:
        ldr     r0, [sp, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L551418
L551460:
        add     r6, r6, #1
        cmp     sb, r6
        bhi     L5513b4
L55146c:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_55132c, . - A_55132c

@ FUN_00551538
        .global A_551538
        .type   A_551538, %function
A_551538:
        add     r0, r0, #0xc
        push    {r4, lr}
        bl      Fn_55b7bc
        sub     r0, r0, #0xc
        pop     {r4, pc}
        vmov.f32 s3, s4
        vmov.f32 s4, s5
        vmov.f32 s5, s6
        mov     r0, r0
        .size   A_551538, . - A_551538

@ FUN_0055155c
        .global A_55155c
        .type   A_55155c, %function
A_55155c:
        push    {r4, r5, lr}
        vmov.f32 s6, s1
        vmov.f32 s1, s0
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #0xc
        vmov.f32 s21, s2
        vmov.f32 s19, s3
        vmov.f32 s20, s4
        vmov.f32 s22, s5
        vmov.f32 s0, s6
        mov     r4, r1
        mov     r5, r2
        add     r2, sp, #4
        mov     r1, sp
        bl      Fn_551784
        vneg.f32 s6, s20
        vldr    s0, [sp]
        vmov.f32 s1, s19
        vneg.f32 s5, s19
        vldr    s2, L55175c
        vldr    s3, L551760
        vcmpe.f32 s0, s6
        vldr    s18, L551764
        vmrs    apsr_nzcv, fpscr
        bhs     L5515e0
        vmov.f32 s4, s3
        vmov.f32 s3, s2
        vmov.f32 s2, s6
        vldr    s1, L551768
        bl      Fn_5543a4
        vmov.f32 s17, s0
        vmov.f32 s16, s18
        b       L5516f4
L5515e0:
        ldr     r1, L55176c
        vmov    r0, s0
        vldr    s7, L551770
        cmp     r1, r0
        bhs     L551618
        vmov.f32 s17, s3
        vmov.f32 s4, s2
        vmov.f32 s3, s18
        vmov.f32 s2, s7
        vmov.f32 s1, s6
        bl      Fn_5543a4
        vmov.f32 s16, s0
        nop
        b       L5516f4
L551618:
        vcmpe.f32 s0, s5
        vmrs    apsr_nzcv, fpscr
        bhs     L551648
        vmov.f32 s17, s3
        vmov.f32 s4, s3
        vmov.f32 s3, s2
        vmov.f32 s2, s5
        vmov.f32 s1, s7
        bl      Fn_5543a4
        vmov.f32 s16, s0
        nop
        b       L5516f4
L551648:
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        bhs     L551674
        vmov.f32 s2, s1
        vmov.f32 s4, s18
        vmov.f32 s16, s3
        vmov.f32 s1, s5
        bl      Fn_5543a4
        vmov.f32 s17, s0
        nop
        b       L5516f4
L551674:
        ldr     r1, L551774
        vmov    r0, s0
        vldr    s5, L551778
        cmp     r0, r1
        bge     L5516a4
        vmov.f32 s4, s2
        vmov.f32 s17, s18
        vmov.f32 s2, s5
        bl      Fn_5543a4
        vmov.f32 s16, s0
        nop
        b       L5516f4
L5516a4:
        vmov.f32 s1, s20
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        bhs     L5516d8
        vmov.f32 s4, s18
        vmov.f32 s3, s2
        vmov.f32 s2, s20
        vmov.f32 s1, s5
        vmov.f32 s17, s4
        bl      Fn_5543a4
        vmov.f32 s16, s0
        nop
        b       L5516f4
L5516d8:
        vmov.f32 s4, s2
        vmov.f32 s3, s18
        vmov.f32 s1, s20
        vldr    s2, L55177c
        bl      Fn_5543a4
        vmov.f32 s17, s0
        vmov.f32 s16, s18
L5516f4:
        vmov.f32 s0, s19
        bl      Fn_647920
        vmov.f32 s19, s0
        vmov.f32 s0, s20
        bl      Fn_647920
        vadd.f32 s0, s19, s0
        vldr    s1, L551780
        vmul.f32 s19, s0, s1
        vmov.f32 s0, s20
        bl      Fn_647920
        vsub.f32 s2, s19, s0
        vldr    s1, [sp, #4]
        vmul.f32 s3, s17, s21
        vdiv.f32 s0, s19, s2
        vmul.f32 s2, s16, s21
        vmul.f32 s4, s2, s1
        vsub.f32 s2, s18, s1
        vmul.f32 s1, s3, s1
        vmla.f32 s4, s0, s2
        vstr    s1, [r4]
        vadd.f32 s0, s4, s18
        vadd.f32 s0, s0, s22
        vstr    s0, [r5]
        add     sp, sp, #0xc
        vpop    {d8, d9, d10, d11}
        pop     {r4, r5, pc}
L55175c:
        .word   0x00000000
L551760:
        .word   0xbf800000
L551764:
        .word   0x3f800000
L551768:
        .word   0xc0490fdb
L55176c:
        .word   0xbfc90fdb
L551770:
        .word   0xbfc90fdb
L551774:
        .word   0x3fc90fdb
L551778:
        .word   0x3fc90fdb
L55177c:
        .word   0x40490fdb
L551780:
        .word   0x3f000000
        .size   A_55155c, . - A_55155c

@ FUN_00551784
        .global A_551784
        .type   A_551784, %function
A_551784:
        push    {r4, r5, r6, lr}
        vmov.f32 s3, s0
        mov     r4, r1
        vpush   {d8, d9}
        vmov.f32 s19, s1
        mov     r5, r2
        vldr    s16, L551844
        vcmp.f32 s3, s16
        vmrs    apsr_nzcv, fpscr
        vmoveq.f32 s17, s16
        vmoveq.f32 s18, s16
        beq     L551814
        vldr    s2, [r0]
        vldr    s0, [r0, #8]
        vmul.f32 s4, s2, s2
        vmla.f32 s4, s16, s16
        vmla.f32 s4, s0, s0
        vsqrt.f32 s1, s4
        vcmpe.f32 s1, s19
        vmrs    apsr_nzcv, fpscr
        ble     L5517e4
        vdiv.f32 s4, s19, s1
        vmul.f32 s2, s4, s2
        vmul.f32 s0, s4, s0
L5517e4:
        vldr    s4, [r0]
        vmov.f32 s18, s16
        vmul.f32 s1, s2, s2
        vmov.f32 s2, s16
        vmla.f32 s1, s2, s2
        vldr    s2, [r0, #8]
        vmla.f32 s1, s0, s0
        vsqrt.f32 s0, s1
        vmul.f32 s1, s4, s0
        vmul.f32 s0, s2, s0
        vdiv.f32 s16, s1, s3
        vdiv.f32 s17, s0, s3
L551814:
        vmov.f32 s0, s16
        vneg.f32 s1, s17
        bl      Fn_6473bc
        vstr    s0, [r4]
        vmul.f32 s0, s16, s16
        vmla.f32 s0, s18, s18
        vmla.f32 s0, s17, s17
        vsqrt.f32 s1, s0
        vdiv.f32 s0, s1, s19
        vstr    s0, [r5]
        vpop    {d8, d9}
        pop     {r4, r5, r6, pc}
L551844:
        .word   0x00000000
        .size   A_551784, . - A_551784

@ FUN_00551848
        .global A_551848
        .type   A_551848, %function
A_551848:
        vldr    s3, [r1, #0x4c]
        vldr    s1, L551888
        vldr    s2, [r1, #0x5c]
        vcmpe.f32 s0, s3
        vmrs    apsr_nzcv, fpscr
        ble     L551880
        vsub.f32 s0, s0, s3
        vldr    s1, [r1, #0x50]
        vldr    s4, [r1, #0x58]
        vdiv.f32 s3, s0, s1
        vmul.f32 s1, s3, s4
        vcmpe.f32 s1, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s1, s2
L551880:
        vstr    s1, [r3]
        bx      lr
L551888:
        .word   0x00000000
        .size   A_551848, . - A_551848

@ FUN_0055188c
        .global A_55188c
        .type   A_55188c, %function
A_55188c:
        push    {r4, r5, r6, lr}
        vmov.f32 s1, s0
        mov     r5, r3
        vpush   {d8}
        vldr    s3, [r1, #0x4c]
        vldr    s16, L551944
        vldr    s17, [r0, #0x1c]
        vcmpe.f32 s1, s3
        vmov.f32 s0, s16
        vldr    s4, [r1, #0x50]
        vldr    s2, [r2, #0x24]
        ldr     r4, [sp, #0x18]
        ldrb    r0, [r2, #0x28]
        vmrs    apsr_nzcv, fpscr
        ble     L55191c
        cmp     r0, #1
        beq     L5518dc
        cmp     r0, #2
        bne     L55191c
        b       L5518f8
L5518dc:
        vsub.f32 s0, s1, s3
        vdiv.f32 s1, s0, s4
        vmov.f32 s0, s2
        bl      Fn_647cb8
        nop
        nop
        b       L55191c
L5518f8:
        vsub.f32 s0, s1, s3
        vsub.f32 s2, s16, s2
        vldr    s1, L551948
        vdiv.f32 s3, s0, s4
        vmov.f32 s0, s16
        vmls.f32 s0, s3, s2
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L55191c:
        vcvt.f32.s32 s1, s17
        vstr    s0, [r5]
        vsub.f32 s0, s16, s0
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        rsb     r0, r0, #0
        str     r0, [r4]
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L551944:
        .word   0x3f800000
L551948:
        .word   0x00000000
        .size   A_55188c, . - A_55188c

@ FUN_0055194c
        .global A_55194c
        .type   A_55194c, %function
A_55194c:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r8, r0
        mov     r5, r1
        mov     r4, r3
        ldrd    r6, r7, [sp, #0x28]
        mov     r0, sp
        bl      Fn_022a04
        vldr    s0, [sp]
        add     r3, sp, #4
        add     r4, r4, #4
        vmul.f32 s0, s0, s0
        vldmia  r3, {s1, s2}
        mov     r0, sp
        mov     r1, r6
        vldmia  r4, {s3, s4, s5}
        mov     r2, r7
        vmla.f32 s0, s1, s1
        vmla.f32 s0, s2, s2
        vldr    s2, [r8, #0x20]
        vsqrt.f32 s1, s0
        vldr    s0, [r5, #0x48]
        bl      Fn_55155c
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55194c, . - A_55194c

@ FUN_00551a0c
        .global A_551a0c
        .type   A_551a0c, %function
A_551a0c:
        vldr    s1, L551b14
        vldr    s2, [r0, #0x24]
        vldr    s7, L551b18
        ldr     ip, [sp]
        vcmp.f32 s2, s1
        vldmia  r3, {s3, s4, s5}
        vmrs    apsr_nzcv, fpscr
        vstreq  s7, [ip]
        beq     L551b10
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        ble     L551a4c
        vdiv.f32 s6, s7, s0
        vmul.f32 s3, s3, s6
        vmul.f32 s4, s4, s6
        vmul.f32 s5, s5, s6
L551a4c:
        ldrb    r0, [r2, #0x29]
        vldr    s6, L551b1c
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s6
        ble     L551aa0
        vldr    s6, [r2, #0xc]
        vldr    s7, [r1, #0x3c]
        vldr    s9, [r2, #0x10]
        vmul.f32 s6, s3, s6
        vmul.f32 s7, s3, s7
        vldr    s8, [r1, #0x40]
        vldr    s10, [r2, #0x14]
        vldr    s11, [r1, #0x44]
        vmla.f32 s6, s4, s9
        vmla.f32 s7, s4, s8
        vmla.f32 s6, s5, s10
        vmla.f32 s7, s5, s11
        vneg.f32 s3, s6
        vneg.f32 s5, s7
        b       L551adc
L551aa0:
        vldr    s3, [r2, #0xc]
        add     r2, r2, #0x10
        vmul.f32 s3, s3, s3
        vldmia  r2, {s4, s5}
        vmla.f32 s3, s4, s4
        vmla.f32 s3, s5, s5
        vsqrt.f32 s4, s3
        vneg.f32 s3, s4
        vldr    s4, [r1, #0x3c]
        add     r1, r1, #0x40
        vmul.f32 s4, s4, s4
        vldmia  r1, {s5, s6}
        vmla.f32 s4, s5, s5
        vmla.f32 s4, s6, s6
        vsqrt.f32 s5, s4
L551adc:
        vmul.f32 s4, s5, s0
        vmul.f32 s0, s3, s0
        vcmpe.f32 s4, s2
        vmrs    apsr_nzcv, fpscr
        bgt     L551b0c
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vldrge  s1, L551b20
        bge     L551b0c
        vsub.f32 s3, s2, s4
        vsub.f32 s0, s2, s0
        vdiv.f32 s1, s3, s0
L551b0c:
        vstr    s1, [ip]
L551b10:
        bx      lr
L551b14:
        .word   0x00000000
L551b18:
        .word   0x3f800000
L551b1c:
        .word   0x3d000000
L551b20:
        .word   0x477fff00
        .size   A_551a0c, . - A_551a0c

@ FUN_00551be8
        .global A_551be8
        .type   A_551be8, %function
A_551be8:
        ldr     ip, [r0, #0x11c]
        vldr    s0, [sp]
        cmp     ip, #0
        beq     L551c00
        cmp     r2, #0x20
        bhs     L551c08
L551c00:
        mov     r0, #0
L551c04:
        bx      lr
L551c08:
        movs    r0, r1
        beq     L551c04
        mov     r1, #0
        add     r2, ip, r3
        strb    r1, [r0, #4]
        ldr     r3, L551c3c
        str     r1, [r0, #0xc]
        str     r1, [r0, #0x10]
        str     r2, [r0, #0x14]
        str     r3, [r0]
        vstr    s0, [r0, #0x18]
        str     r1, [r0, #0x1c]
        bx      lr
L551c3c:
        .word   0x0082cb68
        .size   A_551be8, . - A_551be8

@ FUN_00551c40
        .global A_551c40
        .type   A_551c40, %function
A_551c40:
        mov     ip, r1
        add     r1, r0, #0x18
        push    {r4, lr}
        ldm     r1, {r1, r3}
        ldr     r0, [r0, #0x14]
        sub     r4, r1, r3
        cmp     r4, r2
        movhs   r4, r2
        add     r1, r0, r3
        mov     r2, r4
        mov     r0, ip
        bl      Fn_202b20
        mov     r0, r4
        pop     {r4, pc}
        .size   A_551c40, . - A_551c40

@ FUN_0055216c
        .global A_55216c
        .type   A_55216c, %function
A_55216c:
        push    {r4, lr}
        sub     sp, sp, #0x10
        mov     r4, #0
        ldr     ip, [sp, #0x18]
        add     lr, sp, #4
        str     r4, [sp]
        stm     lr, {r3, ip}
        mov     r3, r4
        bl      Fn_552434
        add     sp, sp, #0x10
        and     r0, r0, #0xff
        pop     {r4, pc}
        .size   A_55216c, . - A_55216c

@ FUN_0055219c
        .global A_55219c
        .type   A_55219c, %function
A_55219c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        sub     sp, sp, #0x3c
        mov     r8, r1
        mov     fp, #0
        ldr     r0, [r1, #4]
        mov     r1, fp
        ldr     r7, [sp, #0x68]
        str     r0, [sp, #0x38]
        mvn     r0, #0
        strd    r0, r1, [sp, #0x20]
        ldr     r0, [r4, #0xbc]
        mov     sb, r2
        mov     r5, r3
        cmp     r0, #0
        mov     r6, fp
        beq     L5522a0
        ldr     r1, [r8, #0xa0]
        ldr     r0, [r4, #4]
        bl      Fn_639424
        cmp     r0, #0
        str     r0, [sp, #0x14]
        beq     L5522a0
        mov     sl, r0
        ldr     r0, [r4, #0xbc]
        ldr     r2, L552424
        ldr     r3, L552428
        mov     r1, #0
        ldrb    ip, [r0, #4]
        cmp     ip, #0
        moveq   r0, #0
        beq     L552230
        str     r1, [sp]
        ldr     r1, [r0]
        ldr     ip, [r1, #0x10]
        mov     r1, sl
        blx     ip
L552230:
        mov     sl, r0
        ldr     r0, [r4, #0xbc]
        ldr     r2, L552424
        ldr     r3, L55242c
        ldr     lr, [sp, #0x14]
        ldrb    ip, [r0, #4]
        mov     r1, #0
        cmp     ip, #0
        moveq   r0, #0
        beq     L55226c
        str     r1, [sp]
        ldr     r1, [r0]
        ldr     ip, [r1, #0x10]
        mov     r1, lr
        blx     ip
L55226c:
        cmp     sl, #0
        mov     r1, r0
        cmpne   r1, #0
        beq     L5522a0
        mov     r2, #0
        add     r0, sp, #8
        bl      Fn_55c698
        ldr     r1, [r5]
        add     r0, sp, #8
        bl      Fn_63930c
        movs    r6, r0
        nop
        bne     L5522b0
L5522a0:
        ldr     r1, [sb]
        ldr     r0, [r4, #0xb8]
        bl      Fn_636db0
        mov     sl, r0
L5522b0:
        ldr     r0, [r8, #0xa0]
        add     r1, sp, #0x20
        cmp     sl, #0
        stm     r1, {r0, sl}
        beq     L5522d0
        cmp     r6, #0
        beq     L5522e4
        b       L552330
L5522d0:
        ldr     r0, [sp, #0x38]
        cmp     r0, #0
        moveq   r0, #7
        beq     L55241c
        b       L55232c
L5522e4:
        cmp     r7, #0
        ldrne   r6, [r7]
        bne     L552314
        ldr     r0, [r4, #0xb8]
        ldr     r2, [r4, #4]
        ldr     r1, [r5]
        cmp     r0, #0
        addne   r3, r0, #0xc
        moveq   r3, #0
        mov     r0, sl
        bl      Fn_55cf18
        mov     r6, r0
L552314:
        cmp     r6, #0
        bne     L552330
        ldr     r0, [sp, #0x38]
        cmp     r0, #0
        moveq   r0, #8
        beq     L55241c
L55232c:
        mov     fp, #1
L552330:
        ldr     r0, [sp, #0x60]
        cmp     r0, #0
        moveq   r0, #1
        beq     L55235c
        cmp     r0, #1
        beq     L552354
        cmp     r0, #2
        moveq   r0, #0
        beq     L55235c
L552354:
        mov     r0, #0
        str     r0, [sp, #0x64]
L55235c:
        ldr     r1, [r5]
        strb    r0, [sp, #0x2c]
        cmp     fp, #0
        str     r1, [sp, #0x28]
        ldr     r0, [sp, #0x64]
        str     r0, [sp, #0x30]
        beq     L5523ac
        ldr     r0, [r4, #4]
        add     r2, sp, #0x28
        mov     r1, sp
        str     r0, [sp]
        ldr     r0, [r4, #0xb8]
        str     r0, [sp, #4]
        add     r0, sp, #0x20
        str     r0, [sp, #8]
        mov     r0, r8
        bl      Fn_566ec0
        nop
        nop
        b       L5523d0
L5523ac:
        cmp     r7, #0
        mov     r0, #0
        ldrsbne r0, [r7, #9]
        add     r3, sp, #0x28
        mov     r2, r6
        str     r0, [sp]
        mov     r1, sl
        mov     r0, r8
        bl      Fn_5670d4
L5523d0:
        vldr    s0, [sb, #0x10]
        vldr    s1, L552430
        mov     r0, r8
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        bl      Fn_5557fc
        ldrb    r1, [sb, #0x14]
        mov     r0, r8
        bl      Fn_55bcfc
        ldrb    r1, [sb, #0x15]
        mov     r0, r8
        bl      Fn_55549c
        ldrb    r1, [r5, #8]
        mov     r0, r8
        bl      Fn_566e78
        ldrsb   r1, [r5, #9]
        mov     r0, r8
        bl      Fn_566fc8
        mov     r0, #0
L55241c:
        add     sp, sp, #0x3c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552424:
        .word   0x007f3d58
L552428:
        .word   0x007f3d66
L55242c:
        .word   0x007f3d78
L552430:
        .word   0x3c010204
        .size   A_55219c, . - A_55219c

@ FUN_00552434
        .global A_552434
        .type   A_552434, %function
A_552434:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x94
        mov     r4, r0
        ldr     r0, [r0, #4]
        ldr     r6, [sp, #0xd0]
        cmp     r0, #0
        beq     L5525e8
        bl      Fn_636770
        cmp     r0, #0
        beq     L5525e8
        ldr     r0, [sp, #0x98]
        ldr     r0, [r0]
        cmp     r0, #0
        ldrne   r0, [sp, #0x98]
        blne    Fn_54f908
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        add     r2, sp, #0x28
        bl      Fn_636828
        cmp     r0, #0
        beq     L552ddc
        mov     r0, #0
        str     r0, [sp, #4]
        str     r0, [sp]
        ldr     r0, [sp, #0x34]
        add     r1, sp, #0x2c
        mov     r8, #0
        str     r0, [sp, #0x88]
        ldm     r1, {sb, fp}
        cmp     r6, #0
        str     r8, [sp, #0x40]
        beq     L552500
        ldr     r0, [r6]
        tst     r0, #1
        beq     L5524d0
        ldrb    r1, [r6, #4]
        str     r1, [sp, #4]
        ldr     r1, [r6, #8]
        str     r1, [sp]
L5524d0:
        tst     r0, #4
        ldrne   r1, [r6, #0x10]
        strne   r1, [sp, #0x88]
        tst     r0, #2
        ldrne   sb, [r6, #0xc]
        tst     r0, #8
        ldrne   fp, [r6, #0x14]
        tst     r0, #0x10
        addne   r8, r6, #0x18
        tst     r0, #0x40
        addne   r0, r6, #0x30
        strne   r0, [sp, #0x40]
L552500:
        ldr     r0, [sp, #0xcc]
        ldr     r5, [sp, #0x88]
        mov     r7, #0
        cmp     r0, #0
        ldr     r0, [sp, #0xa0]
        subne   r5, r5, #1
        cmp     r0, #0
        beq     L55252c
        ldr     r1, [sp, #0x9c]
        bl      Fn_555888
        mov     r7, r0
L55252c:
        add     r0, r5, r7
        str     r0, [sp, #0x5c]
        usat    sl, #7, r0
        ldr     r0, [sp, #0xc8]
        mov     r1, #0
        str     r1, [sp, #0x10]
        cmp     r0, #0
        beq     L552564
        cmp     fp, #4
        bhs     L5525f4
        add     r0, r0, fp, lsl #4
        adds    r0, r0, #8
        str     r0, [sp, #0x10]
        beq     L5525f4
L552564:
        bic     r0, sb, #0xff000000
        ldr     r1, [r4, #0x1c]
        add     r2, r0, r0, lsl #1
        add     r0, r2, r0, lsl #4
        add     r0, r1, r0, lsl #2
        mov     r1, sl
        str     r0, [sp, #0x54]
        bl      Fn_54fba0
        cmp     r0, #0
        nop
        beq     L552600
        ldr     r0, [sp, #0x10]
        cmp     r0, #0
        beq     L5525b0
        mov     r1, sl
        bl      Fn_55b8a8
        cmp     r0, #0
        nop
        beq     L552600
L5525b0:
        mov     fp, #0
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        mov     sb, fp
        mov     sl, fp
        bl      Fn_639468
        cmp     r0, #1
        nop
        beq     L55260c
        cmp     r0, #2
        beq     L552760
        cmp     r0, #3
        bne     L552ddc
        b       L5528b4
L5525e8:
        add     sp, sp, #0xa4
        mov     r0, #0xb
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5525f4:
        add     sp, sp, #0xa4
        mov     r0, #0xe
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552600:
        add     sp, sp, #0xa4
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55260c:
        ldr     r1, [sp, #0x9c]
        ldr     r0, [sp, #0xa0]
        str     r1, [sp, #0x4c]
        mov     r1, r5
        str     r0, [sp, #0x50]
        str     r1, [sp, #0x48]
        ldr     r0, [sp, #0x5c]
        add     r5, r4, #0x20
        str     r7, [sp, #0x24]
        usat    fp, #7, r0
L552634:
        ldr     r0, [r5, #0x14]
        cmp     r0, #0
        beq     L55270c
        ldr     r1, [r5, #0x18]
        add     r0, r5, #0x14
        sub     r7, r1, #0xe4
        bl      Fn_542154
        cmp     r7, #0
        nop
        beq     L552634
        ldr     r0, [r7]
        ldr     r1, [r0, #0xc]
        mov     r0, r7
        blx     r1
        ldr     r1, [sp, #0x48]
        ldr     r2, [sp, #0x24]
        mov     r0, r7
        bl      Fn_5554f8
        ldr     r1, [r5, #0xc]
        add     r0, r5, #0xc
        mov     lr, r7
        cmp     r1, r0
        beq     L5526d0
L552690:
        ldrb    r3, [r1, #-0x48]
        ldr     ip, [r1, #-0x94]
        mov     r2, #0
        mov     r0, #0x7f
        add     r3, r3, ip
        cmp     r3, #0x7f
        bgt     L5526b8
        cmp     r3, #0
        movge   r0, r3
        movlt   r0, r2
L5526b8:
        cmp     r0, fp
        bgt     L5526d0
        ldr     r1, [r1]
        add     r0, r5, #0xc
        cmp     r1, r0
        bne     L552690
L5526d0:
        add     r2, r7, #0xe4
        add     r0, r5, #8
        bl      Fn_542230
L5526dc:
        cmp     r7, #0
        beq     L552a98
        ldr     r1, [sp, #0x4c]
        mov     r0, r7
        str     r1, [r0, #0xa0]
        ldr     r1, [sp, #0x50]
        cmp     r1, #0
        movne   r0, r7
        blne    Fn_555710
L552700:
        movs    fp, r7
        beq     L552a98
        b       L5529b0
L55270c:
        ldr     r0, [r5, #8]
        cmp     r0, #0
        beq     L552750
        ldr     r0, [r5, #0xc]
        subs    r0, r0, #0xe4
        beq     L552758
        ldrb    r1, [r0, #0x9c]
        ldr     r2, [r0, #0x50]
        add     r3, r1, r2
        usat    r3, #7, r3
        cmp     r3, fp
        bgt     L552758
        mov     r1, #0
        bl      Fn_55590c
        nop
        nop
        b       L552634
L552750:
        mov     r7, #0
        b       L5526dc
L552758:
        mov     r7, #0
        b       L552700
L552760:
        ldr     r0, [sp, #0xa0]
        ldr     r1, [sp, #0x9c]
        str     r7, [sp, #0x50]
        str     r0, [sp, #0x48]
        ldr     r0, [sp, #0x5c]
        str     r1, [sp, #0x44]
        mov     r1, r5
        add     r5, r4, #0x60
        usat    sb, #7, r0
        str     r1, [sp, #0x58]
L552788:
        ldr     r0, [r5, #0x14]
        cmp     r0, #0
        beq     L552860
        ldr     r1, [r5, #0x18]
        add     r0, r5, #0x14
        sub     r7, r1, #0xe4
        bl      Fn_542154
        cmp     r7, #0
        nop
        beq     L552788
        ldr     r0, [r7]
        ldr     r1, [r0, #0xc]
        mov     r0, r7
        blx     r1
        ldr     r1, [sp, #0x58]
        ldr     r2, [sp, #0x50]
        mov     r0, r7
        bl      Fn_5554f8
        ldr     r1, [r5, #0xc]
        add     r0, r5, #0xc
        mov     lr, r7
        cmp     r1, r0
        beq     L552824
L5527e4:
        ldrb    r3, [r1, #-0x48]
        ldr     ip, [r1, #-0x94]
        mov     r2, #0
        mov     r0, #0x7f
        add     r3, r3, ip
        cmp     r3, #0x7f
        bgt     L55280c
        cmp     r3, #0
        movge   r0, r3
        movlt   r0, r2
L55280c:
        cmp     r0, sb
        bgt     L552824
        ldr     r1, [r1]
        add     r0, r5, #0xc
        cmp     r1, r0
        bne     L5527e4
L552824:
        add     r2, r7, #0xe4
        add     r0, r5, #8
        bl      Fn_542230
L552830:
        cmp     r7, #0
        beq     L552a98
        ldr     r1, [sp, #0x44]
        mov     r0, r7
        str     r1, [r0, #0xa0]
        ldr     r1, [sp, #0x48]
        cmp     r1, #0
        movne   r0, r7
        blne    Fn_555710
L552854:
        movs    sb, r7
        beq     L552a98
        b       L5529b0
L552860:
        ldr     r0, [r5, #8]
        cmp     r0, #0
        beq     L5528a4
        ldr     r0, [r5, #0xc]
        subs    r0, r0, #0xe4
        beq     L5528ac
        ldrb    r1, [r0, #0x9c]
        ldr     r2, [r0, #0x50]
        add     r3, r1, r2
        usat    r3, #7, r3
        cmp     r3, sb
        bgt     L5528ac
        mov     r1, #0
        bl      Fn_55590c
        nop
        nop
        b       L552788
L5528a4:
        mov     r7, #0
        b       L552830
L5528ac:
        mov     r7, #0
        b       L552854
L5528b4:
        ldr     r1, [sp, #0x9c]
        ldr     r0, [sp, #0xa0]
        str     r7, [sp, #0x50]
        str     r1, [sp, #0x4c]
        mov     r1, r5
        str     r0, [sp, #0x24]
        str     r1, [sp, #0x48]
        ldr     r0, [sp, #0x5c]
        add     r5, r4, #0x40
        usat    sl, #7, r0
L5528dc:
        ldr     r0, [r5, #0x14]
        cmp     r0, #0
        beq     L552a44
        ldr     r1, [r5, #0x18]
        add     r0, r5, #0x14
        sub     r7, r1, #0xe4
        bl      Fn_542154
        cmp     r7, #0
        nop
        beq     L5528dc
        ldr     r0, [r7]
        ldr     r1, [r0, #0xc]
        mov     r0, r7
        blx     r1
        ldr     r1, [sp, #0x48]
        ldr     r2, [sp, #0x50]
        mov     r0, r7
        bl      Fn_5554f8
        ldr     r1, [r5, #0xc]
        add     r0, r5, #0xc
        mov     lr, r7
        cmp     r1, r0
        beq     L552978
L552938:
        ldrb    r3, [r1, #-0x48]
        ldr     ip, [r1, #-0x94]
        mov     r2, #0
        mov     r0, #0x7f
        add     r3, r3, ip
        cmp     r3, #0x7f
        bgt     L552960
        cmp     r3, #0
        movge   r0, r3
        movlt   r0, r2
L552960:
        cmp     r0, sl
        bgt     L552978
        ldr     r1, [r1]
        add     r0, r5, #0xc
        cmp     r1, r0
        bne     L552938
L552978:
        add     r2, r7, #0xe4
        add     r0, r5, #8
        bl      Fn_542230
L552984:
        cmp     r7, #0
        beq     L552a98
        ldr     r1, [sp, #0x4c]
        mov     r0, r7
        str     r1, [r0, #0xa0]
        ldr     r1, [sp, #0x24]
        cmp     r1, #0
        movne   r0, r7
        blne    Fn_555710
L5529a8:
        movs    sl, r7
        beq     L552a98
L5529b0:
        ldr     r0, [sp, #0x54]
        mov     r1, r7
        bl      Fn_54fae0
        cmp     r0, #0
        nop
        beq     L552e70
        ldrsb   r1, [sp, #0x3e]
        mov     r0, r7
        bl      Fn_55575c
        cmp     r6, #0
        nop
        beq     L5529f0
        ldr     r0, [r6]
        tst     r0, #0x100
        ldrne   r0, [r6, #0x40]
        strne   r0, [r7, #0xe0]
L5529f0:
        ldr     r0, [r4, #0xbc]
        mov     r5, #0
        cmp     r0, #0
        ldrbne  r0, [r0, #4]
        cmpne   r0, #0
        beq     L552ac0
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        bl      Fn_639424
        ldr     r3, [r4, #0xbc]
        mov     r1, r0
        ldrb    r0, [r3, #4]
        cmp     r0, #0
        beq     L552aa4
        ldr     r0, [r3]
        ldr     r2, [r0, #8]
        mov     r0, r3
        blx     r2
        cmp     r0, #0
        bne     L552ac0
        b       L552aa4
L552a44:
        ldr     r0, [r5, #8]
        cmp     r0, #0
        beq     L552a88
        ldr     r0, [r5, #0xc]
        subs    r0, r0, #0xe4
        beq     L552a90
        ldrb    r1, [r0, #0x9c]
        ldr     r2, [r0, #0x50]
        add     r3, r1, r2
        usat    r3, #7, r3
        cmp     r3, sl
        bgt     L552a90
        mov     r1, #0
        bl      Fn_55590c
        nop
        nop
        b       L5528dc
L552a88:
        mov     r7, #0
        b       L552984
L552a90:
        mov     r7, #0
        b       L5529a8
L552a98:
        add     sp, sp, #0xa4
        mov     r0, #0xd
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552aa4:
        ldr     r1, [r4, #4]
        mov     r0, #0
        mov     r5, #1
        ldr     r1, [r1, #8]
        strb    r0, [r1, #4]
        ldr     r1, [r4, #0xbc]
        strb    r0, [r1, #4]
L552ac0:
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        bl      Fn_639468
        cmp     r0, #1
        nop
        beq     L552b04
        cmp     r0, #2
        beq     L552c24
        cmp     r0, #3
        beq     L552d34
        ldr     r0, [r7]
        ldr     r1, [r0, #0x10]
        mov     r0, r7
        blx     r1
        cmp     r5, #0
        beq     L552ddc
        b       L552c08
L552b04:
        ldr     r0, [sp, #0x54]
        mov     r1, fp
        bl      Fn_54fc98
        mov     r0, #0
        str     r0, [sp, #0x58]
        strb    r0, [sp, #0x70]
        str     r0, [sp, #0x6c]
        strb    r0, [sp, #0x71]
        mvn     r0, #0
        str     r0, [sp, #0x60]
        str     r0, [sp, #0x5c]
        str     r0, [sp, #0x64]
        str     r0, [sp, #0x68]
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        add     r2, sp, #0x58
        bl      Fn_636b80
        cmp     r0, #0
        nop
        beq     L552bf0
        cmp     r8, #0
        beq     L552b8c
        ldr     r0, [r8, #8]
        cmn     r0, #1
        strne   r0, [sp, #0x5c]
        ldr     r0, [r8, #0xc]
        cmn     r0, #1
        strne   r0, [sp, #0x60]
        ldr     r0, [r8, #0x10]
        cmn     r0, #1
        strne   r0, [sp, #0x64]
        ldr     r0, [r8, #0x14]
        cmn     r0, #1
        strne   r0, [sp, #0x68]
L552b8c:
        ldrd    r0, r1, [sp]
        add     r6, sp, #4
        add     r3, sp, #0x58
        str     r1, [sp]
        stm     r6, {r0, r8}
        add     r2, sp, #0x28
        mov     r1, fp
        mov     r0, r4
        bl      Fn_5533bc
        ands    r6, r0, #0xff
        nop
        beq     L552de8
        ldr     r0, [fp]
        ldr     r1, [r0, #0x10]
        mov     r0, fp
        blx     r1
        cmp     r5, #0
        beq     L552db8
L552bd4:
        ldr     r1, [r4, #4]
        mov     r0, #1
        ldr     r1, [r1, #8]
        strb    r0, [r1, #4]
        ldr     r1, [r4, #0xbc]
        strb    r0, [r1, #4]
        b       L552db8
L552bf0:
        ldr     r0, [fp]
        ldr     r1, [r0, #0x10]
        mov     r0, fp
        blx     r1
        cmp     r5, #0
        beq     L552ddc
L552c08:
        ldr     r1, [r4, #4]
        mov     r0, #1
        ldr     r1, [r1, #8]
        strb    r0, [r1, #4]
        ldr     r1, [r4, #0xbc]
        strb    r0, [r1, #4]
        b       L552ddc
L552c24:
        mov     r6, #0
        strh    r6, [sp, #0x48]
        ldr     r1, L552e8c
        mov     r3, #4
        mov     r2, #0xd
        add     r0, sp, #0x4c
        strh    r6, [sp, #0x4a]
        blx     Fn_0000ac_t
        sub     r0, r0, #4
        vldr    s0, L552e90
        mov     r1, #0x7f
        vstr    s0, [r0, #0x38]
        strb    r1, [r0, #0x3c]
        strb    r6, [r0, #0x3f]
        strh    r6, [r0, #0x3d]
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        add     r2, sp, #0x48
        bl      Fn_636a7c
        cmp     r0, #0
        nop
        beq     L552ce0
        str     r6, [sp, #0x20]
        ldrb    r1, [sp, #0x87]
        mov     r0, #0
        strb    r6, [sp, #0x1c]
        cmp     r1, #2
        str     r6, [sp, #0x24]
        beq     L552cfc
L552c98:
        ldr     r1, [sp]
        str     r0, [sp]
        add     r3, sp, #0x48
        str     r1, [sp, #8]
        add     r2, sp, #0x28
        mov     r1, sb
        mov     r0, r4
        bl      Fn_552e94
        ands    r6, r0, #0xff
        nop
        beq     L552de8
        ldr     r0, [sb]
        ldr     r1, [r0, #0x10]
        mov     r0, sb
        blx     r1
        cmp     r5, #0
        beq     L552db8
        b       L552bd4
L552ce0:
        ldr     r0, [sb]
        ldr     r1, [r0, #0x10]
        mov     r0, sb
        blx     r1
        cmp     r5, #0
        bne     L552c08
        b       L552ddc
L552cfc:
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        add     r2, sp, #0x1c
        bl      Fn_636cc8
        cmp     r0, #0
        addne   r0, sp, #0x1c
        bne     L552c98
        ldr     r0, [sb]
        ldr     r1, [r0, #0x10]
        mov     r0, sb
        blx     r1
        cmp     r5, #0
        bne     L552c08
        b       L552ddc
L552d34:
        ldr     r0, [sp, #0x54]
        mov     r1, sl
        bl      Fn_54fc98
        mov     r0, #0
        strb    r0, [sp, #0x20]
        str     r0, [sp, #0x1c]
        strb    r0, [sp, #0x21]
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0x9c]
        add     r2, sp, #0x18
        bl      Fn_636bd4
        cmp     r0, #0
        nop
        beq     L552dc4
        ldm     sp, {r1, r2}
        ldr     r0, [sp, #0x40]
        add     r3, sp, #0x18
        str     r1, [sp, #4]
        str     r0, [sp, #8]
        str     r2, [sp]
        add     r2, sp, #0x28
        mov     r1, sl
        mov     r0, r4
        bl      Fn_55219c
        ands    r6, r0, #0xff
        nop
        beq     L552de8
        ldr     r0, [sl]
        ldr     r1, [r0, #0x10]
        mov     r0, sl
        blx     r1
        cmp     r5, #0
        bne     L552bd4
L552db8:
        add     sp, sp, #0xa4
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552dc4:
        ldr     r0, [sl]
        ldr     r1, [r0, #0x10]
        mov     r0, sl
        blx     r1
        cmp     r5, #0
        bne     L552c08
L552ddc:
        add     sp, sp, #0xa4
        mov     r0, #3
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552de8:
        cmp     r5, #0
        beq     L552e08
        ldr     r1, [r4, #4]
        mov     r0, #1
        ldr     r1, [r1, #8]
        strb    r0, [r1, #4]
        ldr     r1, [r4, #0xbc]
        strb    r0, [r1, #4]
L552e08:
        ldr     r0, [sp, #0x10]
        cmp     r0, #0
        beq     L552e28
        mov     r1, r7
        bl      Fn_55b7d8
        cmp     r0, #0
        nop
        beq     L552e70
L552e28:
        ldr     r0, [sp, #0xc8]
        cmp     r0, #0
        beq     L552e40
        mov     r1, r0
        mov     r0, r7
        str     r1, [r0, #0x14]
L552e40:
        ldr     r0, [sp, #0xcc]
        cmp     r0, #0
        beq     L552e58
        ldr     r1, [sp, #0x88]
        mov     r0, r7
        bl      Fn_555858
L552e58:
        ldr     r0, [sp, #0x98]
        mov     r1, r7
        bl      Fn_54f944
        add     sp, sp, #0xa4
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552e70:
        ldr     r0, [r7]
        ldr     r1, [r0, #0x10]
        mov     r0, r7
        blx     r1
        add     sp, sp, #0xa4
        mov     r0, #0xff
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552e8c:
        .word   0x00650714
L552e90:
        .word   0x3f800000
        .size   A_552434, . - A_552434

@ FUN_00552e94
        .global A_552e94
        .type   A_552e94, %function
A_552e94:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x74
        ldr     r0, [sp, #0x80]
        ldrb    r0, [r0, #0x3f]
        cmp     r0, #1
        moveq   r0, #0
        beq     L552ec0
        cmp     r0, #2
        movne   r0, #0xff
        moveq   r0, #1
        bne     L553328
L552ec0:
        ldr     r2, [sp, #0x80]
        str     r0, [sp]
        ldr     r0, [sp, #0x80]
        ldr     r3, [sp, #0x80]
        add     ip, sp, #0x1e
        add     r4, sp, #0x1f
        str     ip, [sp, #8]
        add     r1, sp, #0x1c
        str     r4, [sp, #0xc]
        ldr     r4, [sp, #0x80]
        mov     sb, r1
        add     r2, r2, #5
        add     r5, sb, #4
        str     r2, [sp, #4]
        str     r5, [sp, #0x18]
        ldr     r5, [sp, #0x80]
        add     r4, r4, #0xe
        str     r4, [sp, #0x10]
        add     r4, sb, #0xa
        add     r5, r5, #9
        str     r4, [sp, #0x14]
        str     r5, [sp, #0x50]
        add     r5, sb, #5
        str     r5, [sp, #0x54]
        ldr     r5, [sp, #0x80]
        ldr     ip, [sp, #0x80]
        ldr     r4, [sp, #0x80]
        add     r5, r5, #0xa
        str     r5, [sp, #0x58]
        ldr     r8, [sp, #0x80]
        ldr     r6, [sp, #0x80]
        add     r5, sb, #6
        add     r8, r8, #0xc
        str     r8, [sp, #0x5c]
        add     r8, sb, #8
        str     r8, [sp, #0x60]
        ldr     r8, [sp, #0x80]
        add     r7, sb, #7
        mov     lr, #4
        add     r8, r8, #0xd
        str     r8, [sp, #0x64]
        add     r8, sb, #9
        str     r8, [sp, #0x68]
        ldr     r8, [sp, #0x80]
        add     r0, r0, #4
        add     r2, sp, #0x1d
        add     r8, r8, #0xf
        str     r8, [sp, #0x6c]
        ldr     r8, [sp, #0x80]
        add     r3, r3, #6
        add     ip, ip, #7
        add     r8, r8, #0x10
        str     r8, [sp, #0x70]
        add     r8, sb, #0xb
        add     r4, r4, #8
        add     r6, r6, #0xb
        add     sb, r1, #0xc
L552fa4:
        ldrb    sl, [r0], #0xd
        sub     lr, lr, #1
        cmp     lr, #0
        strb    sl, [r1]
        ldr     sl, [sp, #4]
        add     r1, r1, #0xd
        ldrb    sl, [sl]
        strb    sl, [r2]
        ldr     sl, [sp, #8]
        ldrb    fp, [r3]
        add     r2, r2, #0xd
        add     r3, r3, #0xd
        strb    fp, [sl]
        ldr     sl, [sp, #0xc]
        ldrb    fp, [ip]
        add     ip, ip, #0xd
        strb    fp, [sl]
        ldr     sl, [sp, #0x10]
        ldrb    fp, [sl]
        ldr     sl, [sp, #0x14]
        strb    fp, [sl]
        ldr     sl, [sp, #0x18]
        ldrb    fp, [r4]
        add     r4, r4, #0xd
        strb    fp, [sl]
        ldr     sl, [sp, #4]
        add     sl, sl, #0xd
        str     sl, [sp, #4]
        ldr     sl, [sp, #0x50]
        ldr     fp, [sp, #0x54]
        ldrb    sl, [sl]
        strb    sl, [fp]
        ldr     sl, [sp, #0x58]
        ldrb    sl, [sl]
        strb    sl, [r5]
        ldr     sl, [sp, #8]
        add     r5, r5, #0xd
        add     sl, sl, #0xd
        str     sl, [sp, #8]
        ldrb    sl, [r6]
        add     r6, r6, #0xd
        strb    sl, [r7]
        ldr     sl, [sp, #0xc]
        add     r7, r7, #0xd
        add     sl, sl, #0xd
        str     sl, [sp, #0xc]
        ldr     sl, [sp, #0x5c]
        ldrb    fp, [sl]
        ldr     sl, [sp, #0x60]
        strb    fp, [sl]
        ldr     sl, [sp, #0x10]
        add     sl, sl, #0xd
        str     sl, [sp, #0x10]
        ldr     sl, [sp, #0x14]
        add     sl, sl, #0xd
        str     sl, [sp, #0x14]
        ldr     sl, [sp, #0x64]
        ldrb    fp, [sl]
        ldr     sl, [sp, #0x18]
        add     sl, sl, #0xd
        str     sl, [sp, #0x18]
        ldr     sl, [sp, #0x68]
        strb    fp, [sl]
        ldr     sl, [sp, #0x50]
        ldr     fp, [sp, #0x54]
        add     sl, sl, #0xd
        str     sl, [sp, #0x50]
        ldr     sl, [sp, #0x6c]
        add     fp, fp, #0xd
        ldrb    sl, [sl]
        str     fp, [sp, #0x54]
        ldr     fp, [sp, #0x58]
        add     fp, fp, #0xd
        str     fp, [sp, #0x58]
        strb    sl, [r8]
        ldr     sl, [sp, #0x5c]
        add     r8, r8, #0xd
        add     sl, sl, #0xd
        str     sl, [sp, #0x5c]
        ldr     sl, [sp, #0x70]
        ldrb    fp, [sl]
        ldr     sl, [sp, #0x60]
        add     sl, sl, #0xd
        str     sl, [sp, #0x60]
        ldr     sl, [sp, #0x64]
        add     sl, sl, #0xd
        str     sl, [sp, #0x64]
        ldr     sl, [sp, #0x68]
        add     sl, sl, #0xd
        str     sl, [sp, #0x68]
        ldr     sl, [sp, #0x6c]
        add     sl, sl, #0xd
        str     sl, [sp, #0x6c]
        ldr     sl, [sp, #0x70]
        add     sl, sl, #0xd
        str     sl, [sp, #0x70]
        strb    fp, [sb], #0xd
        bne     L552fa4
        ldr     r0, [sp, #0xa8]
        mvn     r2, #0
        cmp     r0, #0
        mov     r0, #0
        mov     r1, r0
        beq     L553164
        ldr     r0, [sp, #0xa8]
        ldrsb   r0, [r0]
        cmp     r0, #0
        beq     L553164
        ldr     r1, [sp, #0xa8]
        ldr     r2, [sp, #0xa8]
        ldr     r1, [r1, #4]
        ldr     r2, [r2, #8]
L553164:
        ldr     r3, [sp, #0x80]
        ldr     ip, [sp, #0x80]
        add     r5, sp, #0xc
        ldrb    r3, [r3, #0x3c]
        add     r4, ip, #0x3d
        add     ip, sp, #0x1c
        stm     r5, {r1, r2, r3, r4}
        str     r0, [sp, #8]
        ldr     r1, [sp]
        ldr     r0, [sp, #0x80]
        str     ip, [sp]
        str     r1, [sp, #4]
        ldrh    r3, [r0]
        ldrh    r2, [r0, #2]
        vldr    s0, [r0, #0x38]
        ldr     r0, [sp, #0x74]
        add     r1, r0, #0x80
        ldr     r0, [sp, #0x78]
        bl      Fn_556fc0
        ldr     r0, [sp, #0xac]
        cmp     r0, #0
        moveq   r4, #1
        beq     L5531dc
        cmp     r0, #1
        beq     L5531d4
        cmp     r0, #2
        moveq   r4, #0
        beq     L5531dc
L5531d4:
        mov     r4, #0
        str     r4, [sp, #0xb0]
L5531dc:
        ldr     r0, [sp, #0x74]
        ldr     r5, [r0, #0xbc]
        ldr     r0, [sp, #0x78]
        cmp     r5, #0
        add     r6, r0, #0x2800
        add     r6, r6, #0x21c
        beq     L553244
        ldr     r1, [r0, #0xa0]
        ldr     r0, [sp, #0x74]
        mov     r7, #0x200
        ldr     r0, [r0, #4]
        bl      Fn_639424
        ldrb    r2, [r5, #4]
        ldr     r1, L553330
        cmp     r2, #0
        beq     L553244
        str     r1, [sp]
        ldr     r1, [r5]
        mov     r3, r0
        mov     r2, r7
        mov     r0, r5
        ldr     ip, [r1, #0xc]
        mov     r1, r6
        blx     ip
        movs    r3, r0
        bne     L5532d4
L553244:
        ldr     r0, [sp, #0x78]
        ldr     r1, L553334
        ldr     r1, [r1, r0]
        cmp     r1, #0
        beq     L5532a4
        add     r0, r0, #0x2c00
        add     r0, r0, #0x24
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L5532a4
        add     r3, sp, #4
        mov     r2, #0
        str     r1, [sp]
        stm     r3, {r0, r2}
        mov     r3, #0x200
        ldr     r0, [sp, #0x7c]
        mov     r2, r6
        ldr     r1, [r0]
        ldr     r0, [sp, #0x74]
        ldr     r0, [r0, #4]
        bl      Fn_550804
        mov     r3, r0
        nop
        b       L5532d4
L5532a4:
        mov     r0, #0
        str     r0, [sp]
        str     r0, [sp, #4]
        str     r0, [sp, #8]
        ldr     r0, [sp, #0x7c]
        mov     r3, #0x200
        mov     r2, r6
        ldr     r1, [r0]
        ldr     r0, [sp, #0x74]
        ldr     r0, [r0, #4]
        bl      Fn_550804
        mov     r3, r0
L5532d4:
        ldr     r0, [sp, #0x78]
        ldr     r2, [sp, #0xb0]
        mov     r1, r4
        bl      Fn_557094
        ldr     r0, [sp, #0x7c]
        vldr    s1, L553338
        ldr     r4, [sp, #0x78]
        vldr    s0, [r0, #0x10]
        mov     r0, r4
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        bl      Fn_5557fc
        ldr     r0, [sp, #0x7c]
        ldrb    r1, [r0, #0x14]
        mov     r0, r4
        bl      Fn_55bcfc
        ldr     r0, [sp, #0x7c]
        ldrb    r1, [r0, #0x15]
        mov     r0, r4
        bl      Fn_55549c
        mov     r0, #0
L553328:
        add     sp, sp, #0x84
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L553330:
        .word   0x007f3d60
L553334:
        .word   0x00002c20
L553338:
        .word   0x3c010204
        .size   A_552e94, . - A_552e94

@ FUN_0055333c
        .global A_55333c
        .type   A_55333c, %function
A_55333c:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r1
        mov     r5, r2
        ldr     r0, [r0, #4]
        mov     r6, r3
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L5533b4
        bl      Fn_636770
        cmp     r0, #0
        beq     L5533b4
        mov     r0, sp
        mov     r0, r0
        add     r0, r4, r5, lsl #4
        add     r2, r0, #0xf4
        add     r0, r5, r5, lsl #1
        mov     r3, r6
        add     r0, r4, r0, lsl #2
        add     r1, r0, #0x134
        mov     r0, sp
        bl      Fn_639e88
        mov     r4, r0
        bl      Fn_55e338
        ldr     r1, [r0, #0x1fc]
        add     r1, r1, #1
        str     r1, [r0, #0x1fc]
        mov     r0, sp
        mov     r0, r0
        mov     r0, r4
        pop     {r3, r4, r5, r6, r7, pc}
L5533b4:
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_55333c, . - A_55333c

@ FUN_005533bc
        .global A_5533bc
        .type   A_5533bc, %function
A_5533bc:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xb4
        mov     r4, r0
        mov     r6, r3
        mov     fp, #0
        ldr     r0, [r0, #0xbc]
        ldr     sl, [sp, #0xf0]
        cmp     r0, #0
        beq     L553430
        ldr     r0, [sp, #0xb8]
        ldr     r1, [r0, #0xa0]
        ldr     r0, [r4, #4]
        bl      Fn_639424
        cmp     r0, #0
        beq     L553430
        mov     r1, r0
        ldr     r0, [r4, #0xbc]
        ldr     r2, L55396c
        ldr     r3, L553970
        mov     ip, #0
        ldrb    r5, [r0, #4]
        cmp     r5, #0
        moveq   r0, #0
        beq     L55342c
        str     ip, [sp]
        ldr     ip, [r0]
        ldr     ip, [ip, #0x10]
        blx     ip
L55342c:
        mov     fp, r0
L553430:
        ldr     r0, [r6]
        cmp     fp, #0
        str     r0, [sp, #0x3c]
        ldr     r0, [r6, #0x14]
        str     r0, [sp, #0x98]
        bne     L5534b8
        ldr     r0, [sp, #0xbc]
        ldr     r1, [r0]
        ldr     r0, [r4, #0xb8]
        bl      Fn_636db0
        cmp     sl, #0
        mov     fp, r0
        beq     L5534b8
        ldr     r0, [sl]
        cmp     r0, #0
        movne   fp, r0
        mov     r1, fp
        add     r0, sp, #0x28
        bl      Fn_55c810
        ldr     r1, [sl, #4]
        cmp     r1, #0
        beq     L5534b8
        add     r2, sp, #0x3c
        add     r0, sp, #0x28
        bl      Fn_638b1c
        cmp     r0, #0
        moveq   r0, #0xf
        beq     L55357c
        add     r0, sp, #0x28
        ldr     r0, [r0, #4]
        ldr     r1, [sp, #0x3c]
        add     r2, sp, #0x98
        bl      Fn_566538
        str     r0, [sp, #0x3c]
L5534b8:
        mov     r0, #0
        str     r0, [sp, #0x70]
        ldr     r0, [sp, #0xb8]
        mov     r1, #0
        mov     r3, #4
        mov     r2, #8
        ldr     r0, [r0, #4]
        str     r0, [sp, #0x64]
        mvn     r0, #0
        strd    r0, r1, [sp, #0xa0]
        ldr     r1, L553974
        add     r0, sp, #8
        blx     Fn_0000ac_t
        ldr     r1, L553974
        mov     r3, #4
        mov     r2, #8
        add     r0, sp, #0x40
        blx     Fn_0000ac_t
        ldr     r0, [sp, #0xb8]
        add     r1, sp, #0xa0
        cmp     fp, #0
        ldr     r0, [r0, #0xa0]
        stm     r1, {r0, fp}
        beq     L553564
L553518:
        ldr     r0, [r4, #0xbc]
        cmp     r0, #0
        beq     L55367c
        ldr     r0, [sp, #0xb8]
        ldr     r1, [r0, #0xa0]
        ldr     r0, [r4, #4]
        bl      Fn_639424
        movs    r8, r0
        movne   r5, #0
        beq     L55367c
L553540:
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #4]
        cmn     r0, #1
        beq     L553670
        ldr     r0, [r4, #0xbc]
        ldrsb   r7, [r0, #4]
        cmp     r7, #0
        beq     L553584
        b       L55359c
L553564:
        ldr     r0, [sp, #0x64]
        cmp     r0, #0
        movne   r0, #1
        moveq   r0, #5
        strne   r0, [sp, #0x70]
        bne     L553518
L55357c:
        add     sp, sp, #0xc4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L553584:
        ldr     r1, [r4, #4]
        mov     r0, #1
        ldr     r1, [r1, #8]
        strb    r0, [r1, #4]
        ldr     r1, [r4, #0xbc]
        strb    r0, [r1, #4]
L55359c:
        ldr     r0, [r4, #0xbc]
        ldr     r2, L55396c
        ldr     r3, L553978
        ldrb    r1, [r0, #4]
        cmp     r1, #0
        moveq   r0, #0
        beq     L5535cc
        str     r5, [sp]
        ldr     r1, [r0]
        ldr     ip, [r1, #0x10]
        mov     r1, r8
        blx     ip
L5535cc:
        mov     sb, r0
        ldr     r0, [r4, #0xbc]
        ldr     r2, L55396c
        ldr     r3, L55397c
        ldrb    r1, [r0, #4]
        cmp     r1, #0
        moveq   r0, #0
        beq     L553600
        str     r5, [sp]
        ldr     r1, [r0]
        ldr     ip, [r1, #0x10]
        mov     r1, r8
        blx     ip
L553600:
        cmp     r7, #0
        bne     L553620
        ldr     r2, [r4, #4]
        mov     r1, #0
        ldr     r2, [r2, #8]
        strb    r1, [r2, #4]
        ldr     r2, [r4, #0xbc]
        strb    r1, [r2, #4]
L553620:
        cmp     sb, #0
        cmpne   r0, #0
        beq     L553654
        add     r1, sp, #8
        add     r3, r1, r5, lsl #3
        add     r1, sp, #0x40
        add     r1, r1, r5, lsl #3
        str     sb, [r3, #4]
        str     r0, [r1, #4]
        add     r0, sp, #0x60
        mov     r2, #0
        strb    r2, [r0, r5]
        b       L553670
L553654:
        add     r1, sp, #8
        add     r2, r1, r5, lsl #3
        add     r1, sp, #0x40
        mov     r0, #0
        add     r1, r1, r5, lsl #3
        str     r0, [r2, #4]
        str     r0, [r1, #4]
L553670:
        add     r5, r5, #1
        cmp     r5, #4
        blo     L553540
L55367c:
        cmp     sl, #0
        beq     L5536a4
        ldr     r0, [sl, #8]
        str     r0, [sp, #8]
        ldr     r0, [sl, #0xc]
        str     r0, [sp, #0x10]
        ldr     r0, [sl, #0x10]
        str     r0, [sp, #0x18]
        ldr     r0, [sl, #0x14]
        b       L5536c0
L5536a4:
        ldr     r0, [r6, #4]
        str     r0, [sp, #8]
        ldr     r0, [r6, #8]
        str     r0, [sp, #0x10]
        ldr     r0, [r6, #0xc]
        str     r0, [sp, #0x18]
        ldr     r0, [r6, #0x10]
L5536c0:
        mov     r5, #0
        mvn     sb, #0
        add     r8, sp, #8
        add     sl, sp, #0x40
        str     r0, [sp, #0x20]
        ldr     r0, [r4, #0xbc]
        cmp     r0, #0
        beq     L553700
        add     r0, r8, r5, lsl #3
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L553700
        add     r0, sl, r5, lsl #3
        ldr     r0, [r0, #4]
        cmp     r0, #0
        bne     L5537b0
L553700:
        add     r7, r8, r5, lsl #3
        str     sb, [sp, #0x38]
        ldr     r0, [r4, #4]
        ldr     r1, [r7]
        add     r2, sp, #0x38
        bl      Fn_636780
        cmp     r0, #0
        nop
        beq     L5537b0
        ldr     r1, [sp, #0x38]
        ldr     r0, [r4, #0xb8]
        bl      Fn_636db0
        movs    r2, r0
        str     r2, [r7, #4]
        beq     L553784
        ldr     r0, [r4, #0xb8]
        cmp     r0, #0
        addne   r0, r0, #0xc
        str     r0, [sp]
        add     r0, sp, #0x60
        add     r1, r0, r5
        ldr     r3, [r4, #4]
        add     r0, sl, r5, lsl #3
        bl      Fn_55cdf0
        add     r0, r0, #2
        cmp     r0, #5
        ldrlo   pc, [pc, r0, lsl #2]
        b       L5538e0
L553770:
        .word   0x006538d4
L553774:
        .word   0x006538bc
L553778:
        .word   0x006537b0
L55377c:
        .word   0x006537b0
L553780:
        .word   0x0065379c
L553784:
        .word   0xe59d0064
        .word   0xe3500000
        .word   0x0a000007
        .word   0xe3a00001
        .word   0xe58d0070
        .word   0xea000007
        .word   0xe59d0064
        .word   0xe3500000
        .word   0x0a000001
        .word   0xe3a00001
        .word   0xe58d0070
L5537b0:
        .word   0xe2855001
        .word   0xe3550004
        .word   0x3affffc5
        .word   0xe5941098
        .word   0xe59d00b8
        .word   0xe59d2098
        .word   0xe2843008
        .word   0xeb001573
        .word   0xe59d00bc
        .word   0xeddf0a69
        .word   0xe59d50b8
        .word   0xed900a04
        .word   0xe1a00005
        .word   0xeeb80ac0
        .word   0xee200a20
        .word   0xeb000802
        .word   0xe59d00bc
        .word   0xe5d01014
        .word   0xe1a00005
        .word   0xeb00213e
        .word   0xe59d00bc
        .word   0xe5d01015
        .word   0xe1a00005
        .word   0xeb000722
        .word   0xe5d61018
        .word   0xe59d00b8
        .word   0xeb001478
        .word   0xe1d611d9
        .word   0xe59d00b8
        .word   0xeb0014ec
        .word   0xe5941010
        .word   0xe3510000
        .word   0x0a000002
        .word   0xe5942014
        .word   0xe59d00b8
        .word   0xeb001544
        .word   0xe59d00e8
        .word   0xe3500000
        .word   0x03a00001
        .word   0x0a000003
        .word   0xe3500001
        .word   0x13a01000
        .word   0xe3a00000
        .word   0x158d10ec
        .word   0xe59d1070
        .word   0xe5cd00ac
        .word   0xe59d00ec
        .word   0xe3510000
        .word   0xe59d103c
        .word   0xe58d00b0
        .word   0xe58d10a8
        .word   0x0a00001a
        .word   0xe5940004
        .word   0xe28d3030
        .word   0xe28d20a8
        .word   0xe58d0028
        .word   0xe59400b8
        .word   0xe28d1028
        .word   0xe58d002c
        .word   0xe28d00a0
        .word   0xe8830101
        .word   0xe59d00b8
        .word   0xeb001477
        .word   0xe3500000
        .word   0x03a00009
        .word   0x0affff30
        .word   0xea000028
        .word   0xe59d0064
        .word   0xe3500000
        .word   0x1affffb7
        .word   0xe28dd0c4
        .word   0xe3a00008
        .word   0xe8bd8ff0
        .word   0xe28dd0c4
        .word   0xe3a00012
        .word   0xe8bd8ff0
L5538e0:
        .word   0xe28dd0c4
        .word   0xe3a000ff
        .word   0xe8bd8ff0
        .word   0xe58db070
        .word   0xe59d000c
        .word   0xe28d20a8
        .word   0xe28d1070
        .word   0xe58d0074
        .word   0xe59d0044
        .word   0xe58d0084
        .word   0xe5dd0060
        .word   0xe5cd0094
        .word   0xe59d0014
        .word   0xe58d0078
        .word   0xe59d004c
        .word   0xe58d0088
        .word   0xe5dd0061
        .word   0xe5cd0095
        .word   0xe59d001c
        .word   0xe58d007c
        .word   0xe59d0054
        .word   0xe58d008c
        .word   0xe5dd0062
        .word   0xe5cd0096
        .word   0xe59d0024
        .word   0xe58d0080
        .word   0xe59d005c
        .word   0xe58d0090
        .word   0xe5dd0063
        .word   0xe5cd0097
        .word   0xe59d00b8
        .word   0xeb001523
        .word   0xe28dd0c4
        .word   0xe3a00000
        .word   0xe8bd8ff0
L55396c:
        .word   0x007f3d5c
L553970:
        .word   0x007f3d6c
L553974:
        .word   0x00657e2c
L553978:
        .word   0x007f3d72
L55397c:
        .word   0x007f3d78
        .word   0x3c010204
        .size   A_5533bc, . - A_5533bc

@ FUN_005543a4
        .global A_5543a4
        .type   A_5543a4, %function
A_5543a4:
        vcmp.f32 s1, s2
        vmrs    apsr_nzcv, fpscr
        bne     L5543c0
        vadd.f32 s1, s3, s4
        vldr    s0, L5543e4
        vmul.f32 s0, s1, s0
        bx      lr
L5543c0:
        vmul.f32 s5, s1, s4
        vsub.f32 s4, s3, s4
        vsub.f32 s1, s1, s2
        vmls.f32 s5, s2, s3
        vmul.f32 s0, s4, s0
        vdiv.f32 s2, s0, s1
        vdiv.f32 s0, s5, s1
        vadd.f32 s0, s2, s0
        bx      lr
L5543e4:
        .word   0x3f000000
        .size   A_5543a4, . - A_5543a4

@ FUN_005543ec
        .global A_5543ec
        .type   A_5543ec, %function
A_5543ec:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x5e]
        cmp     r0, #0
        movne   r0, #0
        bne     L554490
        ldr     r0, [r4, #0xc]
        str     r0, [r4, #0x58]
        ldrb    r0, [r4, #0x18]
        strb    r0, [r4, #0x5c]
        ldr     r0, [r4, #0x44]
        ldr     r1, [r4, #0x1c]
        add     r2, r0, r0, lsl #2
        add     r0, r1, #0x1f
        ldrb    r1, [r4, #0x5d]
        bic     r3, r0, #0x1f
        lsl     r2, r2, #7
        cmp     r1, #0
        movne   r0, #0
        beq     L554454
L55443c:
        mla     r5, r2, r0, r3
        add     ip, r4, r0, lsl #2
        subs    r1, r1, #1
        add     r0, r0, #1
        str     r5, [ip, #0x24]
        bne     L55443c
L554454:
        mov     r5, #0
        str     r5, [r4, #0x48]
        ldrd    r0, r1, [r4, #0x1c]
        bl      Fn_01a4d4
        ldrb    r0, [r4, #0x5d]
        cmp     r0, #0
        movne   r1, #0
        beq     L554488
L554474:
        add     r2, r4, r1, lsl #2
        subs    r0, r0, #1
        add     r1, r1, #1
        str     r5, [r2, #0x34]
        bne     L554474
L554488:
        mov     r0, #1
        strb    r0, [r4, #0x5e]
L554490:
        pop     {r4, r5, r6, pc}
        .size   A_5543ec, . - A_5543ec

@ FUN_00554494
        .global A_554494
        .type   A_554494, %function
A_554494:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x14
        ldrb    r1, [r0, #0x5e]
        cmp     r1, #0
        beq     L55458c
        ldr     r1, [r2]
        mov     r4, #0
        str     r1, [sp]
        ldr     r1, [r2, #4]
        str     r1, [sp, #4]
        ldr     r1, [r2, #8]
        str     r1, [sp, #8]
        ldr     r1, [r2, #0xc]
        str     r1, [sp, #0xc]
        ldr     r1, [r0, #0x48]
        add     r1, r1, r1, lsl #2
        lsl     r8, r1, #5
        ldrb    r1, [r0, #0x5d]
        cmp     r1, #0
        bls     L554570
L5544e4:
        add     r2, r0, r4, lsl #2
        ldr     r5, [sp, r4, lsl #2]
        ldr     r6, [r2, #0x24]
        add     r7, r2, #0x34
        cmp     r3, #0
        mov     r1, r8
        mov     r2, #0
        bls     L554560
L554504:
        ldr     ip, [r6, r1, lsl #2]
        ldr     sl, [r0, #0x4c]
        ldr     fp, [r7]
        cmp     ip, #0
        rsblt   sb, ip, #0
        ldr     lr, [r5, r2, lsl #2]
        mullt   sb, sl, sb
        mulge   sb, sl, ip
        ldr     sl, [r0, #0x54]
        asr     sb, sb, #7
        mul     sl, sl, fp
        ldr     fp, [r0, #0x50]
        rsblt   sb, sb, #0
        sub     sb, lr, sb
        mla     sb, fp, sb, sl
        asr     sb, sb, #7
        str     sb, [r7]
        str     sb, [r6, r1, lsl #2]
        str     ip, [r5, r2, lsl #2]
        add     r2, r2, #1
        cmp     r2, r3
        add     r1, r1, #1
        blo     L554504
L554560:
        ldrb    r1, [r0, #0x5d]
        add     r4, r4, #1
        cmp     r4, r1
        blo     L5544e4
L554570:
        ldr     r1, [r0, #0x48]
        ldr     r2, [r0, #0x44]
        add     r1, r1, #1
        cmp     r2, r1
        str     r1, [r0, #0x48]
        movls   r1, #0
        strls   r1, [r0, #0x48]
L55458c:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_554494, . - A_554494

@ FUN_005545d4
        .global A_5545d4
        .type   A_5545d4, %function
A_5545d4:
        ldrb    r1, [r0, #0x5e]
        cmp     r1, #0
        beq     L55461c
        mov     r2, #0
        strb    r2, [r0, #0x5e]
        str     r2, [r0, #0xc]
        str     r2, [r0, #0x10]
        str     r2, [r0, #0x14]
        str     r2, [r0, #0x18]
        ldrb    r1, [r0, #0x5d]
        cmp     r1, #0
        movne   r3, #0
        beq     L55461c
L554608:
        add     ip, r0, r3, lsl #2
        subs    r1, r1, #1
        add     r3, r3, #1
        str     r2, [ip, #0x24]
        bne     L554608
L55461c:
        bx      lr
        .size   A_5545d4, . - A_5545d4

@ FUN_005547f0
        .global A_5547f0
        .type   A_5547f0, %function
A_5547f0:
        push    {r4, lr}
        ldrb    r3, [r0, #0x5e]
        ldr     r1, L55485c
        mov     r2, #0
        cmp     r3, #0
        str     r1, [r0]
        beq     L554848
        strb    r2, [r0, #0x5e]
        str     r2, [r0, #0xc]
        str     r2, [r0, #0x10]
        str     r2, [r0, #0x14]
        str     r2, [r0, #0x18]
        ldrb    ip, [r0, #0x5d]
        mov     r1, r0
        cmp     ip, #0
        movne   r3, #0
        beq     L554848
L554834:
        add     lr, r1, r3, lsl #2
        subs    ip, ip, #1
        add     r3, r3, #1
        str     r2, [lr, #0x24]
        bne     L554834
L554848:
        ldr     r1, [r0, #0x1c]
        cmp     r1, #0
        strne   r2, [r0, #0x1c]
        pop     {r4, lr}
        b       Fn_2024b0
L55485c:
        .word   0x0082cc14
        .size   A_5547f0, . - A_5547f0

@ FUN_00554860
        .global A_554860
        .type   A_554860, %function
A_554860:
        str     r4, [sp, #-4]!
        ldrb    r3, [r0, #0x5e]
        ldr     r2, L5548cc
        mov     r1, #0
        cmp     r3, #0
        str     r2, [r0]
        beq     L5548b8
        strb    r1, [r0, #0x5e]
        str     r1, [r0, #0xc]
        str     r1, [r0, #0x10]
        str     r1, [r0, #0x14]
        str     r1, [r0, #0x18]
        ldrb    r2, [r0, #0x5d]
        mov     ip, r0
        cmp     r2, #0
        movne   r3, #0
        beq     L5548b8
L5548a4:
        add     r4, ip, r3, lsl #2
        subs    r2, r2, #1
        add     r3, r3, #1
        str     r1, [r4, #0x24]
        bne     L5548a4
L5548b8:
        ldr     r2, [r0, #0x1c]
        cmp     r2, #0
        strne   r1, [r0, #0x1c]
        pop     {r4}
        bx      lr
L5548cc:
        .word   0x0082cc14
        .size   A_554860, . - A_554860

@ FUN_005548d0
        .global A_5548d0
        .type   A_5548d0, %function
A_5548d0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        vldr    s1, [r4, #0xc]
        ldrb    r3, [r0, #0x2c]
        ldr     r1, [r0, #0x3c]
        vcvt.f32.u32 s3, s1
        ldr     r2, [r0, #0x38]
        vldr    s0, [r0, #0x14]
        ldr     r0, [r0, #0x40]
        strb    r3, [r4, #0x10c]
        str     r2, [r4, #0x100]
        ldr     r3, L5549dc
        vstr    s0, [r4, #0xfc]
        str     r0, [r4, #0x108]
        vmov    ip, s3
        str     r1, [r4, #0x104]
        vstr    s1, [r4, #0xf8]
        cmp     ip, r3
        vcvtgt.f32.u32 s1, s1
        vldr    s2, L5549e0
        vldr    s3, L5549e4
        ldr     r8, [r4, #0x30]
        vmovle.f32 s1, s2
        lsl     r7, r0, #2
        lsl     r6, r1, #2
        add     r0, r8, #0x1f
        bic     r1, r0, #0x1f
        ldrb    r0, [r4, #0x10d]
        vmul.f32 s1, s1, s3
        lsl     r5, r2, #2
        vcvt.u32.f32 s1, s1
        vmov    ip, s1
        vcvt.f32.u32 s1, s0
        add     ip, ip, ip, lsl #2
        lsl     ip, ip, #7
        vmov    lr, s1
        cmp     lr, r3
        vcvtgt.f32.u32 s2, s0
        cmp     r0, #0
        mov     r0, #0
        vmul.f32 s0, s2, s3
        vcvt.u32.f32 s0, s0
        vmov    r3, s0
        add     r3, r3, r3, lsl #2
        lsl     lr, r3, #7
        ble     L5549c8
L554988:
        add     r2, r4, r0, lsl #2
        add     r3, r1, ip
        str     r1, [r2, #0x44]
        add     r8, r4, r0, lsl #3
        add     r1, r3, lr
        add     r8, r8, #0x64
        str     r3, [r2, #0x54]
        add     r3, r1, r5
        stm     r8, {r1, r3}
        add     r1, r3, r6
        str     r1, [r2, #0x84]
        ldrb    r2, [r4, #0x10d]
        add     r0, r0, #1
        add     r1, r1, r7
        cmp     r2, r0
        bgt     L554988
L5549c8:
        mov     r0, r4
        bl      Fn_554c58
        mov     r0, #1
        strb    r0, [r4, #0x10e]
        pop     {r4, r5, r6, r7, r8, pc}
L5549dc:
        .word   0x409c6a7f
L5549e0:
        .word   0x409c6a7f
L5549e4:
        .word   0x3e517e1d
        .size   A_5548d0, . - A_5548d0

@ FUN_005549e8
        .global A_5549e8
        .type   A_5549e8, %function
A_5549e8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        vpush   {d0}
        sub     sp, sp, #0x5c
        ldrb    r1, [r0, #0x10e]
        cmp     r1, #0
        beq     L554c50
        ldr     r1, [r2]
        mov     ip, #0
        mov     r4, ip
        str     r1, [sp, #0x30]
        ldr     r1, [r2, #4]
        mov     r5, ip
        mov     r6, ip
        str     r1, [sp, #0x34]
        ldr     r1, [r2, #8]
        mov     r7, ip
        str     r1, [sp, #0x38]
        ldr     r1, [r2, #0xc]
        str     r1, [sp, #0x3c]
        ldrb    r2, [r0, #0x10d]
        mov     r1, ip
        str     ip, [sp, #0x54]
        cmp     r2, #0
        ble     L554bfc
L554a48:
        ldr     r2, [sp, #0x70]
        add     r1, r0, r1, lsl #2
        str     r1, [sp, #0x4c]
        cmp     r2, #0
        ldr     r2, [r1, #0x44]
        add     r5, r0, #0xbc
        mov     r8, #0
        str     r2, [sp, #0x48]
        ldr     fp, [r1, #0x54]!
        ldm     r5, {r5, r6}
        ldr     r4, [r0, #0xb0]
        ldr     r7, [r0, #0xd0]
        ldr     ip, [r0, #0xa8]
        ldr     r2, [r1, #0x84]
        ble     L554bdc
        ldr     r3, [sp, #0x54]
        ldr     sb, [sp, #0x54]
        add     r1, sp, #0x30
        add     r3, r0, r3, lsl #3
        str     r3, [sp, #0x58]
        ldr     r1, [r1, sb, lsl #2]
        str     r1, [sp, #0x20]
L554aa0:
        ldr     sl, [r1, r8, lsl #2]
        ldr     r1, [sp, #0x48]
        ldr     r3, [r0, #0xe8]
        ldr     lr, [r1, ip, lsl #2]
        str     sl, [r1, ip, lsl #2]
        ldr     sb, [fp, r4, lsl #2]
        str     sl, [fp, r4, lsl #2]
        ldr     r1, [sp, #0x58]
        mul     r3, lr, r3
        ldr     sl, [r1, #0x64]
        ldr     r1, [sl, r5, lsl #2]
        str     r3, [sp, #0x50]
        ldr     r3, [r0, #0xc4]
        cmp     r1, #0
        rsblt   lr, r1, #0
        str     r1, [sp, #0x24]
        mullt   lr, r3, lr
        mulge   lr, r3, r1
        asr     lr, lr, #7
        rsblt   lr, lr, #0
        add     lr, lr, sb
        str     lr, [sl, r5, lsl #2]
        ldr     r1, [sp, #0x58]
        ldr     lr, [r1, #0x68]
        ldr     r1, [r0, #0xc8]
        ldr     sl, [lr, r6, lsl #2]
        cmp     sl, #0
        mulge   r1, r1, sl
        asrge   r1, r1, #7
        bge     L554b28
        rsb     r3, sl, #0
        mul     r1, r1, r3
        asr     r1, r1, #7
        rsb     r1, r1, #0
L554b28:
        add     sb, sb, r1
        ldr     r1, [sp, #0x24]
        str     sb, [lr, r6, lsl #2]
        ldr     lr, [r0, #0xd4]
        sub     r3, r1, sl
        ldr     r1, [sp, #0x4c]
        add     ip, ip, #1
        add     r4, r4, #1
        add     r5, r5, #1
        ldr     r1, [r1, #0x84]
        add     r6, r6, #1
        ldr     sb, [r1, r7, lsl #2]
        cmp     sb, #0
        rsblt   sl, sb, #0
        mullt   sl, sl, lr
        mulge   sl, sb, lr
        asr     sl, sl, #7
        rsblt   sl, sl, #0
        add     sl, sl, r3
        cmp     sl, #0
        str     sl, [r1, r7, lsl #2]
        rsblt   r1, sl, #0
        add     r7, r7, #1
        mullt   r1, r1, lr
        mulge   r1, sl, lr
        ldr     sl, [r0, #0xf0]
        asr     r1, r1, #7
        rsblt   r1, r1, #0
        sub     r1, sb, r1
        ldr     sb, [r0, #0xf4]
        mul     r1, sl, r1
        ldr     sl, [r0, #0xec]
        mla     r1, r2, sb, r1
        ldr     sb, [sp, #0x50]
        asr     r2, r1, #7
        mul     r1, sl, r2
        add     r1, r1, sb
        ldr     sb, [sp, #0x20]
        asr     r1, r1, #7
        str     r1, [sb, r8, lsl #2]
        ldr     r3, [sp, #0x70]
        add     r8, r8, #1
        cmp     r8, r3
        ldrlt   r1, [sp, #0x20]
        blt     L554aa0
L554bdc:
        ldr     r1, [sp, #0x4c]
        str     r2, [r1, #0xd8]
        ldr     r1, [sp, #0x54]
        add     r1, r1, #1
        str     r1, [sp, #0x54]
        ldrb    r2, [r0, #0x10d]
        cmp     r1, r2
        blt     L554a48
L554bfc:
        ldr     r2, [r0, #0xa4]
        mov     r1, #0
        cmp     r2, ip
        strls   r1, [r0, #0xa8]
        strhi   ip, [r0, #0xa8]
        ldr     r2, [r0, #0xac]
        cmp     r2, r4
        strls   r1, [r0, #0xb0]
        strhi   r4, [r0, #0xb0]
        ldr     r2, [r0, #0xb4]
        cmp     r2, r5
        strls   r1, [r0, #0xbc]
        strhi   r5, [r0, #0xbc]
        ldr     r2, [r0, #0xb8]
        cmp     r2, r6
        strls   r1, [r0, #0xc0]
        strhi   r6, [r0, #0xc0]
        ldr     r2, [r0, #0xcc]
        cmp     r2, r7
        strls   r1, [r0, #0xd0]
        strhi   r7, [r0, #0xd0]
L554c50:
        add     sp, sp, #0x74
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_5549e8, . - A_5549e8

@ FUN_00554c58
        .global A_554c58
        .type   A_554c58, %function
A_554c58:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r2, r4, #0xa4
        ldr     r0, L554df8
        vldr    s1, L554dfc
        mov     r7, #0
        vpush   {d8, d9}
        add     r3, r4, #0xac
        mov     r5, #0
        vldr    s0, [r4, #0xc]
        vldr    s18, L554e0c
        vldr    s19, L554e10
        vcvt.f32.u32 s2, s0
        vldr    s16, L554e14
        vmov    r1, s2
        vldr    s2, L554e00
        cmp     r1, r0
        vcvtgt.f32.u32 s0, s0
        vmovle.f32 s0, s1
        vmul.f32 s0, s0, s2
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
        add     r1, r1, r1, lsl #2
        lsl     r1, r1, #5
        stm     r2, {r1, r7}
        vldr    s0, [r4, #0x14]
        vcvt.f32.u32 s3, s0
        vmov    r1, s3
        cmp     r1, r0
        vcvtgt.f32.u32 s1, s0
        add     r1, r4, #0x38
        ldm     r1, {r1, r2}
        vmul.f32 s0, s1, s2
        vldr    s1, L554e04
        vcvt.u32.f32 s0, s0
        vmov    r0, s0
        vldr    s0, [r4, #0x10]
        vcvt.f32.u32 s0, s0
        add     r0, r0, r0, lsl #2
        lsl     r0, r0, #5
        stm     r3, {r0, r7}
        add     r0, r4, #0xb4
        stm     r0, {r1, r2}
        vmul.f32 s0, s0, s1
        vldr    s1, L554e08
        vmul.f32 s17, s0, s1
L554d10:
        add     r6, r4, r5, lsl #2
        str     r7, [r6, #0xbc]
        vldr    s0, [r6, #0xb4]
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s18
        vdiv.f32 s1, s0, s17
        vmov.f32 s0, s19
        bl      Fn_647cb8
        vmul.f32 s0, s0, s16
        add     r5, r5, #1
        cmp     r5, #2
        vcvt.s32.f32 s0, s0
        vstr    s0, [r6, #0xc4]
        blt     L554d10
        vldr    s2, [r4, #0x24]
        vldr    s0, [r4, #0x28]
        vldr    s1, [r4, #0x18]
        vmul.f32 s2, s2, s16
        vmul.f32 s3, s0, s16
        vmul.f32 s4, s1, s16
        vldr    s0, [r4, #0x1c]
        ldr     r2, L554e18
        vmov    r0, s0
        ldr     r1, [r4, #0x40]
        cmp     r0, r2
        add     r0, r4, #0xcc
        vcvt.s32.f32 s2, s2
        vcvt.s32.f32 s1, s3
        vcvt.s32.f32 s3, s4
        stm     r0, {r1, r7}
        vldrgt  s0, L554e1c
        vstr    s2, [r4, #0xe8]
        vstr    s1, [r4, #0xec]
        vstr    s3, [r4, #0xd4]
        ldrb    r0, [r4, #0x2d]
        vldr    s1, L554e20
        cmp     r0, #1
        beq     L554dd4
        vsub.f32 s1, s1, s0
        vmul.f32 s2, s0, s16
        add     r0, r4, #0xf0
        vmul.f32 s1, s1, s16
        vcvt.s32.f32 s0, s1
        vcvt.s32.f32 s1, s2
        vstmia  r0, {s0, s1}
L554dc4:
        ldrd    r0, r1, [r4, #0x30]
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_01a4d4
L554dd4:
        vsub.f32 s1, s0, s1
        vldr    s2, L554e24
        vmul.f32 s0, s0, s2
        vmul.f32 s1, s1, s16
        vcvt.s32.f32 s0, s0
        vcvt.s32.f32 s1, s1
        vstr    s0, [r4, #0xf4]
        vstr    s1, [r4, #0xf0]
        b       L554dc4
L554df8:
        .word   0x409c6a7f
L554dfc:
        .word   0x409c6a7f
L554e00:
        .word   0x3e517e1d
L554e04:
        .word   0x3a83126f
L554e08:
        .word   0x46ffb000
L554e0c:
        .word   0xc0400000
L554e10:
        .word   0x41200000
L554e14:
        .word   0x43000000
L554e18:
        .word   0x3f733333
L554e1c:
        .word   0x3f733333
L554e20:
        .word   0x3f800000
L554e24:
        .word   0xc3000000
        .size   A_554c58, . - A_554c58

@ FUN_00554eec
        .global A_554eec
        .type   A_554eec, %function
A_554eec:
        ldrb    r1, [r0, #0x10e]
        cmp     r1, #0
        beq     L554f3c
        mov     r1, #0
        strb    r1, [r0, #0x10e]
        ldrb    r3, [r0, #0x10d]
        mov     r2, r1
        cmp     r3, #0
        ble     L554f3c
L554f10:
        add     r3, r0, r2, lsl #2
        add     ip, r0, r2, lsl #3
        str     r1, [r3, #0x44]
        str     r1, [r3, #0x54]
        str     r1, [ip, #0x64]
        str     r1, [ip, #0x68]
        str     r1, [r3, #0x84]
        ldrb    r3, [r0, #0x10d]
        add     r2, r2, #1
        cmp     r3, r2
        bgt     L554f10
L554f3c:
        bx      lr
        .size   A_554eec, . - A_554eec

@ FUN_00555230
        .global A_555230
        .type   A_555230, %function
A_555230:
        ldr     r3, L5552a4
        push    {r4, lr}
        mov     r2, #0
        str     r3, [r0]
        ldrb    r1, [r0, #0x10e]
        cmp     r1, #0
        beq     L555290
        strb    r2, [r0, #0x10e]
        ldrb    ip, [r0, #0x10d]
        mov     r1, r0
        mov     r3, #0
        cmp     ip, #0
        ble     L555290
L555264:
        add     ip, r1, r3, lsl #2
        add     lr, r1, r3, lsl #3
        str     r2, [ip, #0x44]
        str     r2, [ip, #0x54]
        str     r2, [lr, #0x64]
        str     r2, [lr, #0x68]
        str     r2, [ip, #0x84]
        ldrb    ip, [r1, #0x10d]
        add     r3, r3, #1
        cmp     ip, r3
        bgt     L555264
L555290:
        ldr     r1, [r0, #0x30]
        cmp     r1, #0
        strne   r2, [r0, #0x30]
        pop     {r4, lr}
        b       Fn_2024b0
L5552a4:
        .word   0x0082cc34
        .size   A_555230, . - A_555230

@ FUN_005552a8
        .global A_5552a8
        .type   A_5552a8, %function
A_5552a8:
        ldr     r1, L55531c
        str     r4, [sp, #-4]!
        mov     r2, #0
        str     r1, [r0]
        ldrb    r1, [r0, #0x10e]
        cmp     r1, #0
        beq     L555308
        strb    r2, [r0, #0x10e]
        ldrb    ip, [r0, #0x10d]
        mov     r1, r0
        mov     r3, #0
        cmp     ip, #0
        ble     L555308
L5552dc:
        add     ip, r1, r3, lsl #2
        add     r4, r1, r3, lsl #3
        str     r2, [ip, #0x44]
        str     r2, [ip, #0x54]
        str     r2, [r4, #0x64]
        str     r2, [r4, #0x68]
        str     r2, [ip, #0x84]
        ldrb    ip, [r1, #0x10d]
        add     r3, r3, #1
        cmp     ip, r3
        bgt     L5552dc
L555308:
        ldr     r1, [r0, #0x30]
        cmp     r1, #0
        strne   r2, [r0, #0x30]
        pop     {r4}
        bx      lr
L55531c:
        .word   0x0082cc34
        .size   A_5552a8, . - A_5552a8

@ FUN_00555320
        .global A_555320
        .type   A_555320, %function
A_555320:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r6, r0
        bl      Fn_55bca4
        mov     r5, r0
        mov     r0, #0
        str     r0, [r4, #4]
        str     r0, [r4, #8]
        str     r0, [r4, #0xc]
        str     r0, [r4, #0x10]
        str     r0, [r4, #0x14]
        mvn     r1, #0
        str     r0, [r4, #0x18]
        str     r1, [r4, #0xa0]
        str     r0, [r4, #0x1c]
        str     r0, [r4, #0x20]
        str     r0, [r4, #0x24]
        str     r0, [r4, #0x28]
        str     r0, [r4, #0x2c]
        strb    r0, [r4, #0x8a]
        strb    r0, [r4, #0x8b]
        strb    r0, [r4, #0x8c]
        strb    r0, [r4, #0x85]
        strb    r0, [r4, #0x86]
        strb    r0, [r4, #0x87]
        strb    r0, [r4, #0x88]
        strb    r0, [r4, #0x89]
        str     r0, [r4, #0x90]
        vldr    s0, L555494
        str     r0, [r4, #0x94]
        str     r0, [r4, #0x98]
        vstr    s0, [r4, #0x64]
        vstr    s0, [r4, #0x68]
        str     r0, [r4, #0x6c]
        str     r0, [r4, #0x70]
        vstr    s0, [r4, #0x74]
        vstr    s0, [r4, #0x78]
        str     r0, [r4, #0x7c]
        str     r0, [r4, #0x80]
        vldr    s1, L555498
        vstr    s0, [r4, #0xb4]
        vstr    s0, [r4, #0xbc]
        vstr    s1, [r4, #0xb8]
        vstr    s0, [r4, #0xa4]
        vstr    s0, [r4, #0xa8]
        str     r0, [r4, #0xac]
        str     r0, [r4, #0xb0]
        vstr    s1, [r4, #0xc0]
        strb    r1, [r4, #0x9d]
        vstr    s1, [r4, #0xc4]
        vstr    s1, [r4, #0xd4]
        vstr    s1, [r4, #0xc8]
        vstr    s1, [r4, #0xcc]
        vstr    s1, [r4, #0xd0]
        vstr    s0, [r4, #0x30]
        add     r2, r4, #0x34
        vstmia  r2, {s0, s1}
        vstr    s1, [r4, #0x3c]
        vstr    s1, [r4, #0x40]
        vstr    s1, [r4, #0x44]
        vstr    s1, [r4, #0x48]
        str     r0, [r4, #0x50]
        str     r1, [r4, #0x4c]
        str     r0, [r4, #0x54]
        vstr    s0, [r4, #0x5c]
        vstr    s0, [r4, #0x58]
        vstr    s1, [r4, #0x60]
        ldr     r1, [r4, #0xdc]
        cmp     r1, #0
        ldrne   r0, [r4, #0xd8]
        blne    Fn_01a4d4
        mov     r1, #6
        mov     r0, r5
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        mov     r2, #3
        str     r1, [r0, #0xc]
        add     r1, r4, #0x89
        strb    r2, [r0, #4]
        str     r1, [r0, #0x14]
        mov     r1, r0
        str     r6, [r0, #0x10]
        mov     r0, r5
        bl      Fn_55bd58
        add     r0, r6, #4
        bl      Fn_01b4d4
        mov     r0, #1
        strb    r0, [r4, #0x84]
        pop     {r4, r5, r6, pc}
L555494:
        .word   0x3f800000
L555498:
        .word   0x00000000
        .size   A_555320, . - A_555320

@ FUN_0055549c
        .global A_55549c
        .type   A_55549c, %function
A_55549c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #0xa
        strb    r1, [r0, #4]
        ldr     r0, [r6]
        ldr     r1, [r0, #0x20]
        mov     r0, r6
        blx     r1
        mov     r1, r0
        str     r1, [r4, #0x10]
        mov     r1, r4
        mov     r0, r5
        strb    r7, [r4, #0x15]
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
        .size   A_55549c, . - A_55549c

@ FUN_00555504
        .global A_555504
        .type   A_555504, %function
A_555504:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r1, r4, #0xac
        vpush   {d8, d9, d10, d11, d12}
        ldr     r0, [r0, #0x10]
        vldr    s0, [r4, #0xb4]
        ldm     r1, {r1, r2}
        vldr    s1, [r0, #0x2c]
        cmp     r2, r1
        vmul.f32 s2, s1, s0
        vldr    s0, [r4, #0xa8]
        bge     L555558
        vmov    s3, r2
        vldr    s1, [r4, #0xa4]
        vmov    s4, r1
        vsub.f32 s0, s0, s1
        vcvt.f32.s32 s3, s3
        vcvt.f32.s32 s4, s4
        vmul.f32 s3, s0, s3
        vdiv.f32 s0, s3, s4
        vadd.f32 s0, s0, s1
L555558:
        ldr     r1, [r4, #0x70]
        ldr     r2, [r4, #0x6c]
        cmp     r1, r2
        vmul.f32 s2, s0, s2
        vldr    s0, [r4, #0x68]
        bge     L555594
        vmov    s3, r1
        vldr    s1, [r4, #0x64]
        vmov    s4, r2
        vsub.f32 s0, s0, s1
        vcvt.f32.s32 s5, s3
        vcvt.f32.s32 s3, s4
        vmul.f32 s4, s0, s5
        vdiv.f32 s0, s4, s3
        vadd.f32 s0, s0, s1
L555594:
        add     r1, r4, #0x7c
        vldr    s1, [r4, #0x78]
        ldm     r1, {r1, r2}
        cmp     r2, r1
        vmul.f32 s5, s0, s2
        bge     L5555d0
        vmov    s2, r2
        vldr    s0, [r4, #0x74]
        vmov    s3, r1
        vsub.f32 s1, s1, s0
        vcvt.f32.s32 s2, s2
        vcvt.f32.s32 s3, s3
        vmul.f32 s2, s1, s2
        vdiv.f32 s1, s2, s3
        vadd.f32 s1, s1, s0
L5555d0:
        vldr    s4, [r4, #0xb8]
        vldr    s10, [r4, #0x38]
        vldr    s3, [r4, #0xbc]
        vldr    s14, [r4, #0x30]
        vldr    s13, [r4, #0x34]
        vldr    s12, [r4, #0x44]
        vadd.f32 s10, s10, s4
        vmul.f32 s3, s13, s3
        vldr    s2, [r4, #0xd4]
        vmul.f32 s1, s1, s5
        vldr    s5, [r4, #0xc0]
        vldr    s8, [r0, #0x30]
        vldr    s7, [r4, #0x58]
        vadd.f32 s4, s12, s5
        vldr    s11, [r4, #0x60]
        vldr    s9, [r4, #0x3c]
        vldr    s6, [r4, #0x5c]
        vadd.f32 s19, s11, s10
        vadd.f32 s20, s9, s2
        vmul.f32 s1, s14, s1
        vmul.f32 s22, s6, s3
        ldrsb   r6, [r4, #0x9d]
        vldr    s0, L555700
        vadd.f32 s23, s8, s4
        vldr    s24, [r4, #0xc4]
        cmn     r6, #1
        vmul.f32 s18, s7, s1
        bne     L555654
        ldr     r6, [r0, #0x34]
        vldr    s24, [r0, #0x38]
        cmn     r6, #1
        ldreq   r6, [r4, #0x4c]
        vldreq  s24, [r4, #0x48]
L555654:
        vldr    s1, [r4, #0xc8]
        vldr    s2, [r0, #0x3c]
        add     r0, r0, #0x40
        vadd.f32 s21, s2, s1
        vldr    s2, [r4, #0xcc]
        vldr    s1, [r4, #0xd0]
        vadd.f32 s2, s0, s2
        vldmia  r0, {s3, s4}
        vadd.f32 s1, s0, s1
        vadd.f32 s0, s2, s3
        vadd.f32 s16, s1, s4
        vldr    s1, [r4, #0x40]
        vadd.f32 s17, s0, s1
        bl      Fn_55bca4
        mov     r7, r0
        mov     r1, #0xf
        bl      Fn_55bb2c
        ldr     r1, [r7, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #8
        strb    r1, [r0, #4]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r1, r0
        str     r1, [r5, #0x10]
        vstr    s18, [r5, #0x14]
        vstr    s22, [r5, #0x18]
        vstr    s23, [r5, #0x24]
        add     r1, r5, #0x1c
        mov     r0, r7
        vstmia  r1, {s19, s20}
        mov     r1, r5
        str     r6, [r5, #0x28]
        vstr    s24, [r5, #0x2c]
        vstr    s21, [r5, #0x30]
        vstr    s17, [r5, #0x34]
        vstr    s16, [r5, #0x38]
        vpop    {d8, d9, d10, d11, d12}
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
L555700:
        .word   0x00000000
        .size   A_555504, . - A_555504

@ FUN_00555710
        .global A_555710
        .type   A_555710, %function
A_555710:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, [r1, #8]
        mov     r4, r1
        ldr     r1, [r1, #0x10]
        ldr     r2, [r0]
        ldr     r2, [r2, #8]
        blx     r2
        movs    r6, r0
        beq     L555758
        add     r1, r4, #0xc
        ldm     r1, {r1, r2}
        bl      Fn_202b20
        ldr     r3, [r4, #0x10]
        ldm     r4, {r0, r1, r2}
        str     r3, [r5, #0x2c]
        add     r5, r5, #0x1c
        stm     r5, {r0, r1, r2, r6}
L555758:
        pop     {r4, r5, r6, pc}
        .size   A_555710, . - A_555710

@ FUN_0055575c
        .global A_55575c
        .type   A_55575c, %function
A_55575c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #0xb
        strb    r1, [r0, #4]
        ldr     r0, [r6]
        ldr     r1, [r0, #0x20]
        mov     r0, r6
        blx     r1
        mov     r1, r0
        str     r1, [r4, #0x10]
        mov     r1, r4
        mov     r0, r5
        strb    r7, [r4, #0x14]
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
        .size   A_55575c, . - A_55575c

@ FUN_00555818
        .global A_555818
        .type   A_555818, %function
A_555818:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r1
        add     r0, r0, #0xc
        add     r1, r1, #0xf4
        bl      Fn_5421f4
        mov     r0, r5
        add     r1, r4, #0xec
        bl      Fn_5421f4
        mov     r1, r5
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        mov     r1, #0
        str     r1, [r0, #0x10]
        bx      lr
        .size   A_555818, . - A_555818

@ FUN_00555858
        .global A_555858
        .type   A_555858, %function
A_555858:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x10]
        strb    r1, [r4, #0x9c]
        cmp     r0, #0
        movne   r1, r4
        blne    Fn_54f9d8
        ldr     r0, [r4]
        ldr     r1, [r0, #0x24]
        mov     r0, r4
        pop     {r4, lr}
        bx      r1
        .size   A_555858, . - A_555858

@ FUN_0055590c
        .global A_55590c
        .type   A_55590c, %function
A_55590c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        cmp     r1, #0
        ldrbne  r0, [r4, #0x8b]
        cmpne   r0, #2
        beq     L555a08
        ldrb    r0, [r4, #0x85]
        cmp     r0, #0
        ldrbeq  r0, [r4, #0x86]
        cmpeq   r0, #0
        beq     L555a08
        ldr     r0, [r4, #0x70]
        ldr     r2, [r4, #0x6c]
        cmp     r0, r2
        vldrge  s0, [r4, #0x68]
        bge     L555974
        vmov    s1, r0
        vldr    s3, [r4, #0x68]
        vldr    s0, [r4, #0x64]
        vmov    s2, r2
        vsub.f32 s3, s3, s0
        vcvt.f32.s32 s4, s1
        vcvt.f32.s32 s1, s2
        vmul.f32 s3, s3, s4
        vdiv.f32 s2, s3, s1
        vadd.f32 s0, s2, s0
L555974:
        vmov    s1, r1
        vldrge  s2, [r4, #0x68]
        vcvt.f32.s32 s1, s1
        vmul.f32 s0, s0, s1
        vldr    s1, L555a1c
        vcvt.s32.f32 s0, s0
        bge     L5559b8
        vmov    s3, r0
        vldr    s5, [r4, #0x68]
        vldr    s2, [r4, #0x64]
        vmov    s4, r2
        vsub.f32 s5, s5, s2
        vcvt.f32.s32 s6, s3
        vcvt.f32.s32 s3, s4
        vmul.f32 s5, s5, s6
        vdiv.f32 s4, s5, s3
        vadd.f32 s2, s4, s2
L5559b8:
        mov     r5, #0
        vstr    s2, [r4, #0x64]
        vstr    s1, [r4, #0x68]
        vstr    s0, [r4, #0x6c]
        str     r5, [r4, #0x70]
        strb    r5, [r4, #0x9c]
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        movne   r1, r4
        blne    Fn_54f9d8
        ldr     r0, [r4]
        ldr     r1, [r0, #0x24]
        mov     r0, r4
        blx     r1
        strb    r5, [r4, #0x87]
        strb    r5, [r4, #0x8b]
        mov     r0, #1
        strb    r5, [r4, #0x8c]
        strb    r0, [r4, #0x88]
        pop     {r4, r5, r6, pc}
L555a08:
        ldr     r0, [r4]
        ldr     r1, [r0, #0x10]
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        bx      r1
L555a1c:
        .word   0x00000000
        .size   A_55590c, . - A_55590c

@ FUN_005560b4
        .global A_5560b4
        .type   A_5560b4, %function
A_5560b4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x84]
        cmp     r0, #0
        beq     L556240
        ldrb    r0, [r4, #0x86]
        cmp     r0, #0
        beq     L556124
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #6
        strb    r1, [r0, #4]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r1, r0
        str     r1, [r5, #0x10]
        ldrb    r1, [r4, #0x88]
        mov     r0, r6
        strb    r1, [r5, #0x14]
        mov     r1, r5
        bl      Fn_55bd58
L556124:
        mov     r7, #0
        mov     r0, #2
        strb    r7, [r4, #0x89]
        strb    r0, [r4, #0x8a]
        mvn     r0, #0
        str     r0, [r4, #0xa0]
        ldr     r0, [r4, #8]
        cmp     r0, #0
        blne    Fn_54f908
        ldr     r0, [r4, #0xc]
        cmp     r0, #0
        blne    Fn_54f908
        ldr     r0, [r4]
        ldr     r1, [r0, #0x18]
        mov     r0, r4
        blx     r1
        cmp     r0, #0
        beq     L55617c
        ldr     r0, [r4]
        ldr     r1, [r0, #0x1c]
        mov     r0, r4
        blx     r1
L55617c:
        ldr     r0, [r4, #4]
        cmp     r0, #0
        beq     L556194
        ldr     r0, [r4, #0x10]
        mov     r1, r4
        bl      Fn_54fc54
L556194:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        movne   r1, r4
        blne    Fn_555818
        ldr     r0, [r4, #0x18]
        cmp     r0, #0
        movne   r1, r4
        blne    Fn_5558cc
        ldr     r0, [r4, #0x24]
        cmp     r0, #0
        beq     L5561d8
        ldr     r1, [r0]
        mov     r2, r4
        ldr     r3, [r1, #0xc]
        ldr     r1, [r4, #0x28]
        blx     r3
        str     r7, [r4, #0x28]
L5561d8:
        strb    r7, [r4, #0x86]
        strb    r7, [r4, #0x88]
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #4
        strb    r1, [r0, #4]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r1, r0
        str     r1, [r5, #0x10]
        mov     r1, r5
        mov     r0, r6
        bl      Fn_55bd58
        ldr     r0, [r4, #0xe0]
        cmp     r0, #0
        beq     L55623c
        blx     r0
        str     r7, [r4, #0xe0]
L55623c:
        strb    r7, [r4, #0x84]
L556240:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5560b4, . - A_5560b4

@ FUN_00556364
        .global A_556364
        .type   A_556364, %function
A_556364:
        ldr     r1, L5563a0
        vldr    s1, L5563a4
        mov     r2, #0x7f
        ldr     r1, [r1, #0x1fc]
        str     r1, [r0, #0x10]
        mov     r1, #0
        strh    r1, [r0, #0x14]
        vstr    s1, [r0, #8]
        strb    r2, [r0, #0x18]
        vstr    s1, [r0, #0xc]
        vldr    s1, L5563a8
        strb    r1, [r0]
        vmul.f32 s0, s0, s1
        vstr    s0, [r0, #4]
        bx      lr
L5563a0:
        .word   0x007ffc84
L5563a4:
        .word   0x477fff00
L5563a8:
        .word   0x41200000
        .size   A_556364, . - A_556364

@ FUN_005563ac
        .global A_5563ac
        .type   A_5563ac, %function
A_5563ac:
        cmp     r1, #0x7f
        vldreq  s0, L556410
        beq     L556408
        cmp     r1, #0x7e
        vldreq  s0, L556414
        beq     L556408
        cmp     r1, #0x32
        vldr    s0, L556418
        bge     L5563f0
        mov     r2, #1
        add     r1, r2, r1, lsl #1
        vmov    s1, r1
        vldr    s2, L55641c
        vcvt.f32.s32 s1, s1
        vmul.f32 s1, s1, s2
        vmul.f32 s0, s1, s0
        b       L556408
L5563f0:
        rsb     r1, r1, #0x7e
        vmov    s1, r1
        vldr    s2, L556420
        vcvt.f32.s32 s1, s1
        vdiv.f32 s3, s2, s1
        vmul.f32 s0, s3, s0
L556408:
        vstr    s0, [r0, #0xc]
        bx      lr
L556410:
        .word   0x477fff00
L556414:
        .word   0x41c00000
L556418:
        .word   0x3e4ccccd
L55641c:
        .word   0x3c000000
L556420:
        .word   0x42700000
        .size   A_5563ac, . - A_5563ac

@ FUN_00556584
        .global A_556584
        .type   A_556584, %function
A_556584:
        cmp     r1, #0x7f
        vldreq  s0, L5565e8
        beq     L5565e0
        cmp     r1, #0x7e
        vldreq  s0, L5565ec
        beq     L5565e0
        cmp     r1, #0x32
        vldr    s0, L5565f0
        bge     L5565c8
        mov     r2, #1
        add     r1, r2, r1, lsl #1
        vmov    s1, r1
        vldr    s2, L5565f4
        vcvt.f32.s32 s1, s1
        vmul.f32 s1, s1, s2
        vmul.f32 s0, s1, s0
        b       L5565e0
L5565c8:
        rsb     r1, r1, #0x7e
        vmov    s1, r1
        vldr    s2, L5565f8
        vcvt.f32.s32 s1, s1
        vdiv.f32 s3, s2, s1
        vmul.f32 s0, s3, s0
L5565e0:
        vstr    s0, [r0, #8]
        bx      lr
L5565e8:
        .word   0x477fff00
L5565ec:
        .word   0x41c00000
L5565f0:
        .word   0x3e4ccccd
L5565f4:
        .word   0x3c000000
L5565f8:
        .word   0x42700000
        .size   A_556584, . - A_556584

@ FUN_00556610
        .global A_556610
        .type   A_556610, %function
A_556610:
        ldr     r1, L55662c
        str     lr, [sp, #-4]!
        mov     r3, r0
        vldr    s0, [r1]
        bl      Fn_556364
        mov     r0, r3
        pop     {pc}
L55662c:
        .word   0x007ffb80
        .size   A_556610, . - A_556610

@ FUN_0055687c
        .global A_55687c
        .type   A_55687c, %function
A_55687c:
        ldr     r2, [r0, #0x14]
        ldr     r3, [r0, #0x10]
        add     r1, r1, r2
        cmp     r3, r1
        movlo   r0, #0
        blo     L5568a4
        add     r1, r1, #0x1f
        bic     r1, r1, #0x1f
        str     r1, [r0, #0x14]
        mov     r0, r2
L5568a4:
        bx      lr
        .size   A_55687c, . - A_55687c

@ FUN_005568a8
        .global A_5568a8
        .type   A_5568a8, %function
A_5568a8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x2e
        strb    r1, [r0, #4]
        ldr     r1, [r4, #0xc]
        str     r1, [r0, #0x10]
        ldr     r1, [r4, #0x14]
        ldr     r2, [r4, #0xc]
        sub     r1, r1, r2
        str     r1, [r0, #0x14]
        mov     r1, r0
        mov     r0, r5
        bl      Fn_55bd58
        ldr     r0, [r4, #0xc]
        str     r0, [r4, #0x14]
        pop     {r4, r5, r6, pc}
        .size   A_5568a8, . - A_5568a8

@ FUN_005569c8
        .global A_5569c8
        .type   A_5569c8, %function
A_5569c8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L556a2c
        str     r0, [r4]
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x2e
        strb    r1, [r0, #4]
        ldr     r1, [r4, #0xc]
        str     r1, [r0, #0x10]
        ldr     r1, [r4, #0x14]
        ldr     r2, [r4, #0xc]
        sub     r1, r1, r2
        str     r1, [r0, #0x14]
        mov     r1, r0
        mov     r0, r5
        bl      Fn_55bd58
        mov     r0, #0
        str     r0, [r4, #0x14]
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L556a2c:
        .word   0x0082cc90
        .size   A_5569c8, . - A_5569c8

@ FUN_00556cb4
        .global A_556cb4
        .type   A_556cb4, %function
A_556cb4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r5, r0
        bl      Fn_55bca4
        mov     r6, r0
        add     r0, r5, #4
        bl      Fn_024380
        cmp     r0, #0
        bne     L556cfc
        mov     r1, #1
        mov     r0, r6
        bl      Fn_55bd7c
        add     r0, r5, #4
        bl      Fn_01b274
L556cfc:
        mov     r0, r4
        bl      Fn_555320
        add     r0, r4, #0x1c00
        add     r0, r0, #0x19c
        bl      Fn_55eb5c
        ldr     r0, L556d6c
        mov     r3, #0
        vldr    s0, L556d70
        vldr    s1, L556d74
        mov     r1, r3
        mov     r2, #1
        str     r3, [r0, r4]
L556d2c:
        add     r0, r4, r1, lsl #4
        add     r0, r0, #0x2800
        add     r0, r0, #0x1d8
        vmov.f32 s2, s1
        str     r3, [r0, #0xc]
        vstr    s0, [r0]
        vstr    s0, [r0, #4]
        add     r1, r1, #1
        str     r2, [r0, #8]
        cmp     r1, #4
        vstr    s2, [r0, #4]
        blt     L556d2c
        add     r4, r4, #0x2c00
        add     r4, r4, #0x1e
        strb    r2, [r4]
        pop     {r4, r5, r6, pc}
L556d6c:
        .word   0x000029d0
L556d70:
        .word   0x00000000
L556d74:
        .word   0x3f800000
        .size   A_556cb4, . - A_556cb4

@ FUN_00556d78
        .global A_556d78
        .type   A_556d78, %function
A_556d78:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r7, r0
        bl      Fn_555504
        bl      Fn_55bca4
        mov     r6, r0
        ldr     r0, L556e3c
        mov     r4, #0
        mov     sb, #0x2a
        mov     sl, #1
        ldrh    r5, [r0, r7]
        add     r8, r7, #0x104
L556da4:
        tst     r5, #1
        beq     L556e28
        mov     r1, #7
        mov     r0, r6
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        add     r2, r7, r4, lsl #4
        lsl     r3, sl, r4
        str     r1, [r0, #0xc]
        mov     r1, r0
        strb    sb, [r0, #4]
        add     r2, r2, #0x2800
        str     r8, [r0, #0x10]!
        add     r2, r2, #0x1d8
        str     r3, [r0, #4]
        ldr     r0, [r2, #0xc]
        ldr     r3, [r2, #8]
        cmp     r0, r3
        vldrge  s0, [r2, #4]
        bge     L556e1c
        vmov    s2, r0
        vldr    s3, [r2, #4]
        vldr    s0, [r2]
        vmov    s1, r3
        vsub.f32 s3, s3, s0
        vcvt.f32.s32 s2, s2
        vcvt.f32.s32 s1, s1
        vmul.f32 s3, s3, s2
        vdiv.f32 s2, s3, s1
        vadd.f32 s0, s2, s0
L556e1c:
        mov     r0, r6
        vstr    s0, [r1, #0x18]
        bl      Fn_55bd58
L556e28:
        add     r4, r4, #1
        cmp     r4, #4
        lsr     r5, r5, #1
        blo     L556da4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L556e3c:
        .word   0x00002c1c
        .size   A_556d78, . - A_556d78

@ FUN_00556e40
        .global A_556e40
        .type   A_556e40, %function
A_556e40:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_5557b8
        ldr     r0, L556ef4
        ldrh    r1, [r0, r4]
        tst     r1, #1
        beq     L556e78
        add     r0, r4, #0x2800
        add     r0, r0, #0x1d8
        ldr     r2, [r0, #0xc]
        ldr     r3, [r0, #8]
        cmp     r3, r2
        addgt   r2, r2, #1
        strgt   r2, [r0, #0xc]
L556e78:
        lsr     r1, r1, #1
        tst     r1, #1
        beq     L556ea0
        add     r0, r4, #0x2800
        add     r0, r0, #0x1e8
        ldr     r2, [r0, #0xc]
        ldr     r3, [r0, #8]
        cmp     r3, r2
        addgt   r2, r2, #1
        strgt   r2, [r0, #0xc]
L556ea0:
        lsr     r1, r1, #1
        tst     r1, #1
        beq     L556ec8
        add     r0, r4, #0x2800
        add     r0, r0, #0x1f8
        ldr     r2, [r0, #0xc]
        ldr     r3, [r0, #8]
        cmp     r3, r2
        addgt   r2, r2, #1
        strgt   r2, [r0, #0xc]
L556ec8:
        lsl     r0, r1, #0x1e
        lsrs    r0, r0, #0x1f
        beq     L556ef0
        add     r0, r4, #0x2800
        add     r0, r0, #0x208
        ldr     r1, [r0, #0xc]
        ldr     r2, [r0, #8]
        cmp     r2, r1
        addgt   r1, r1, #1
        strgt   r1, [r0, #0xc]
L556ef0:
        pop     {r4, pc}
L556ef4:
        .word   0x00002c1c
        .size   A_556e40, . - A_556e40

@ FUN_00556ef8
        .global A_556ef8
        .type   A_556ef8, %function
A_556ef8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r1, L556f9c
        ldrb    r2, [r0, #0x9c]
        ldr     r3, [r0, #0x50]
        ldr     r5, [r1, r0]
        add     r6, r2, r3
        cmp     r6, #0x7f
        mov     r1, #0x7f
        mov     r0, #0
        movgt   r6, r1
        bgt     L556f30
        cmp     r6, #0
        movlt   r6, r0
L556f30:
        add     r1, r4, #0xe4
        add     r0, r5, #8
        bl      Fn_5421f4
        ldr     r1, [r5, #0xc]
        add     r0, r5, #0xc
        cmp     r1, r0
        beq     L556f8c
L556f4c:
        ldrb    ip, [r1, #-0x48]
        ldr     r0, [r1, #-0x94]
        mov     r2, #0x7f
        mov     r3, #0
        add     r0, r0, ip
        cmp     r0, #0x7f
        movgt   r0, r2
        bgt     L556f74
        cmp     r0, #0
        movlt   r0, r3
L556f74:
        cmp     r0, r6
        bgt     L556f8c
        ldr     r1, [r1]
        add     r0, r5, #0xc
        cmp     r1, r0
        bne     L556f4c
L556f8c:
        add     r2, r4, #0xe4
        add     r0, r5, #8
        pop     {r4, r5, r6, lr}
        b       Fn_542230
L556f9c:
        .word   0x000029d4
        .size   A_556ef8, . - A_556ef8

@ FUN_00556fc0
        .global A_556fc0
        .type   A_556fc0, %function
A_556fc0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r0
        mov     r7, r3
        mov     fp, r1
        vpush   {d0}
        vpush   {d8, d9}
        sub     sp, sp, #4
        add     r0, sp, #0x5c
        ldrd    r8, sb, [sp, #0x54]
        vmov.f32 s16, s0
        vldmia  r0, {s17, s18}
        add     r0, sp, #0x64
        ldm     r0, {r5, sl}
        ldr     r0, L557090
        strh    r3, [r0, r6]
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #0x19
        str     r0, [sp]
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r4, r0
        mov     r2, #0x34
        str     r1, [r0, #0xc]
        mov     r1, #0x26
        strb    r1, [r0, #4]
        add     r0, r0, #0x10
        add     r1, r6, #0x104
        stm     r0, {r1, fp}
        add     r0, r4, #0x1e
        vldr    s0, [sp, #0x24]
        vstr    s0, [r4, #0x18]
        strh    r7, [r4, #0x1c]
        ldr     r1, [sp, #0x50]
        bl      Fn_202b20
        strb    r8, [r4, #0x52]
        strb    sb, [r4, #0x53]
        vstr    s16, [r4, #0x5c]
        add     r1, r4, #0x54
        vstmia  r1, {s17, s18}
        strb    r5, [r4, #0x60]
        ldrb    r1, [sl]
        strb    r1, [r4, #0x61]
        ldrb    r1, [sl, #1]
        strb    r1, [r4, #0x62]
        ldr     r0, [sp]
        add     sp, sp, #4
        mov     r1, r4
        vpop    {d8, d9}
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        b       Fn_55bd58
L557090:
        .word   0x00002c1c
        .size   A_556fc0, . - A_556fc0

@ FUN_00557094
        .global A_557094
        .type   A_557094, %function
A_557094:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r0, r0, #0x1000
        add     r0, r0, #0xdb0
        mov     r6, r1
        mov     r7, r2
        str     r3, [r0]
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #8
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        add     r3, r4, #0x1c00
        add     r2, r4, #0x104
        str     r1, [r0, #0xc]
        mov     r1, #0x27
        strb    r1, [r0, #4]
        add     r1, r0, #0x10
        add     r3, r3, #0x19c
        stm     r1, {r2, r3, r6, r7}
        mov     r1, r0
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
        .size   A_557094, . - A_557094

@ FUN_005570f4
        .global A_5570f4
        .type   A_5570f4, %function
A_5570f4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r0, r0, #0x2c00
        ldrb    r0, [r0, #0x1e]
        cmp     r0, #0
        beq     L557164
        ldr     r0, L557168
        mov     r1, #0
        strb    r1, [r0, r4]
        add     r0, r4, #0x1c00
        add     r0, r0, #0x19c
        bl      Fn_55f5e8
        mov     r0, r4
        bl      Fn_5560b4
        ldr     r0, L55716c
        add     r1, r4, #0xe4
        ldr     r5, [r0, r4]
        add     r0, r5, #8
        bl      Fn_5421f4
        ldr     r0, [r4]
        ldr     r1, [r0, #0x10]
        mov     r0, r4
        blx     r1
        add     r0, r5, #0x14
        add     r1, r5, #0x18
        add     r2, r4, #0xe4
        pop     {r4, r5, r6, lr}
        b       Fn_542230
L557164:
        pop     {r4, r5, r6, pc}
L557168:
        .word   0x00002c1e
L55716c:
        .word   0x000029d4
        .size   A_5570f4, . - A_5570f4

@ FUN_005572d4
        .global A_5572d4
        .type   A_5572d4, %function
A_5572d4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        add     r7, r0, #0x2c
        mov     r5, r1
        mov     r0, r7
        bl      Fn_0244c8
        mov     r3, #0
L5572f0:
        and     r0, r3, #0xff
        add     r0, r0, r0, lsl #1
        add     r2, r6, r0, lsl #2
        ldr     r0, [r2, #4]
L557300:
        add     r1, r2, #4
        cmp     r0, r1
        beq     L557350
        sub     r1, r0, #4
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r1, r5
        bne     L557300
        mov     r1, r4
        mov     r0, r2
        bl      Fn_542154
        mov     r2, #4
        add     r0, r4, #8
        strb    r2, [r4, #0x10]
        bl      Fn_01b404
        mov     r0, r7
        nop
        bl      Fn_024568
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, pc}
L557350:
        add     r3, r3, #1
        cmp     r3, #3
        blo     L5572f0
        mov     r0, r7
        bl      Fn_024568
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5572d4, . - A_5572d4

@ FUN_00557434
        .global A_557434
        .type   A_557434, %function
A_557434:
        ldr     r0, L5574d0
        push    {r4, lr}
        ldr     r0, [r0]
        tst     r0, #1
        bne     L5574c8
        ldr     r0, L5574d0
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L5574c8
        ldr     r0, L5574d4
        ldr     r1, L5574d8
        mov     r3, #3
        mov     r2, #0xc
        blx     Fn_0000ac_t
        mov     r3, #0
        mov     ip, r0
        str     r3, [r0, #0x24]
        strb    r3, [r0, #0x28]
        str     r3, [r0, #0x2c]!
        add     r0, r0, #4
        mvn     r4, #0
        stm     r0, {r3, r4}
        str     r3, [ip, #0x3c]
        strh    r3, [ip, #0x40]
        str     r3, [ip, #0x44]
        strh    r3, [ip, #0x48]
        str     r3, [ip, #0x4c]
        add     r2, ip, #0x50
        stm     r2, {r3, r4}
        str     r3, [ip, #0x64]
        str     r3, [ip, #0x68]
        ldr     r2, L5574dc
        ldr     r1, L5574e0
        mov     r0, ip
        mov     r0, r0
        ldr     r0, L5574d0
        mov     r0, r0
L5574c8:
        ldr     r0, L5574d4
        pop     {r4, pc}
L5574d0:
        .word   0x008bb728
L5574d4:
        .word   0x009e0758
L5574d8:
        .word   0x007857e8
L5574dc:
        .word   0x00100000
L5574e0:
        .word   0x006577a0
        .size   A_557434, . - A_557434

@ FUN_00557590
        .global A_557590
        .type   A_557590, %function
A_557590:
        mov     r0, r0
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r7, r1
        mov     sb, r0
        add     sl, r0, #0x2c
        mov     r0, sl
        bl      Fn_0244c8
        mov     r8, #0
        mov     fp, #4
L5575b4:
        and     r0, r8, #0xff
        add     r0, r0, r0, lsl #1
        add     r5, sb, r0, lsl #2
        ldr     r4, [r5, #4]
L5575c4:
        add     r0, r5, #4
        cmp     r4, r0
        mov     r1, r4
        beq     L557608
        ldr     r0, [r1, #0x14]
        mov     r6, r4
        ldr     r4, [r1]
        cmp     r0, r7
        bne     L5575c4
        mov     r0, r5
        bl      Fn_542154
        add     r0, r6, #8
        strb    fp, [r6, #0x10]
        bl      Fn_01b404
        nop
        nop
        b       L5575c4
L557608:
        add     r8, r8, #1
        cmp     r8, #3
        blo     L5575b4
        mov     r0, sl
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        b       Fn_024568
        .size   A_557590, . - A_557590

@ FUN_00557864
        .global A_557864
        .type   A_557864, %function
A_557864:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        ldr     r1, [r0, #0x3c]!
        add     r0, r0, #4
        mov     r5, r2
        ldm     r0, {r0, r2}
        add     r0, r0, r2
        add     r2, r1, r5
        cmp     r0, r2
        bhs     L55789c
        sub     r0, r0, r1
        add     r0, r0, #0x1f
        bic     r5, r0, #0x1f
L55789c:
        ldr     r0, [r4, #0x34]
        mov     r2, #0
        bl      Fn_5567f4
        cmp     r0, #0
        nop
        beq     L5578f4
        mov     r0, #0
        str     r0, [sp]
        ldr     r0, [r4, #0x34]
        mov     r3, sp
        mov     r2, r5
        mov     r1, r6
        bl      Fn_556790
        cmp     r0, #0
        nop
        beq     L557914
        ldr     r1, [sp]
        cmp     r1, #0
        addgt   r0, r4, #0x38
        blgt    Fn_541c98
        ldr     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L5578f4:
        ldr     r0, [r4, #0x34]
        ldr     r2, [r4, #0x48]
        ldr     r0, [r0, #0x18]
        cmp     r2, #0
        beq     L557928
L557908:
        ldr     r1, [r4, #0x4c]
        blx     r2
        b       L557928
L557914:
        ldr     r0, [r4, #0x34]
        ldr     r2, [r4, #0x48]
        ldr     r0, [r0, #0x18]
        cmp     r2, #0
        bne     L557908
L557928:
        mvn     r0, #0
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_557864, . - A_557864

@ FUN_00557930
        .global A_557930
        .type   A_557930, %function
A_557930:
        cmp     r2, #0
        ldreq   r2, [r0, #0x40]
        beq     L557988
        cmp     r2, #1
        ldreq   r2, [r0, #0x3c]
        beq     L557988
        cmp     r2, #2
        bne     L557990
        ldrd    r2, r3, [r0, #0x40]
        add     r2, r2, r3
        sub     r1, r2, r1
L55795c:
        ldr     r2, [r0, #0x40]
        cmp     r2, r1
        bgt     L557978
        ldr     r3, [r0, #0x44]
        add     r2, r2, r3
        cmp     r2, r1
        bge     L55797c
L557978:
        mov     r1, r2
L55797c:
        mov     r2, #0
        add     r0, r0, #0x38
        b       Fn_541c38
L557988:
        add     r1, r1, r2
        b       L55795c
L557990:
        bx      lr
        .size   A_557930, . - A_557930

@ FUN_00557994
        .global A_557994
        .type   A_557994, %function
A_557994:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x51]
        cmp     r0, #0
        ldrbne  r0, [r4, #0x50]
        cmpne   r0, #0
        beq     L5579e0
        ldr     r5, [r4, #0x34]
        mov     r6, #0
        ldr     r0, [r5, #4]
        bics    r1, r0, #1
        beq     L5579dc
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r5, #4]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r5, #4]
L5579dc:
        strb    r6, [r4, #0x50]
L5579e0:
        pop     {r4, r5, r6, pc}
        .size   A_557994, . - A_557994

@ FUN_00557d08
        .global A_557d08
        .type   A_557d08, %function
A_557d08:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x52]
        ldr     r1, L557d98
        mov     r6, #0
        cmp     r0, #0
        str     r1, [r4]
        ldrbne  r0, [r4, #0x51]
        cmpne   r0, #0
        ldrbne  r0, [r4, #0x50]
        cmpne   r0, #0
        beq     L557d64
        ldr     r5, [r4, #0x34]
        ldr     r0, [r5, #4]
        bics    r1, r0, #1
        beq     L557d60
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r5, #4]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r5, #4]
L557d60:
        strb    r6, [r4, #0x50]
L557d64:
        ldr     r0, [r4, #0x18]
        add     r5, r4, #0x18
        bics    r1, r0, #1
        beq     L557d8c
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r5]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r5]
L557d8c:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L557d98:
        .word   0x0082cce0
        .size   A_557d08, . - A_557d08

@ FUN_00557d9c
        .global A_557d9c
        .type   A_557d9c, %function
A_557d9c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r1, [r0, #0x52]
        ldr     r0, L557e28
        mov     r6, #0
        cmp     r1, #0
        str     r0, [r4]
        ldrbne  r0, [r4, #0x51]
        cmpne   r0, #0
        ldrbne  r0, [r4, #0x50]
        cmpne   r0, #0
        beq     L557df8
        ldr     r5, [r4, #0x34]
        ldr     r0, [r5, #4]
        bics    r1, r0, #1
        beq     L557df4
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r5, #4]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r5, #4]
L557df4:
        strb    r6, [r4, #0x50]
L557df8:
        add     r5, r4, #0x14
        ldr     r0, [r4, #0x18]!
        bics    r1, r0, #1
        beq     L557e20
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r4]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r4]
L557e20:
        sub     r0, r5, #0x14
        pop     {r4, r5, r6, pc}
L557e28:
        .word   0x0082cce0
        .size   A_557d9c, . - A_557d9c

@ FUN_00557e3c
        .global A_557e3c
        .type   A_557e3c, %function
A_557e3c:
        vldr    s0, L557e64
        vldr    s1, L557e68
        mov     r1, #0
        vstmia  r0, {s0, s1}
        mov     r2, #1
        str     r1, [r0, #8]
        strb    r2, [r0, #0xc]
        strb    r1, [r0, #0xd]
        strb    r1, [r0, #0xe]
        bx      lr
L557e64:
        .word   0x00000000
L557e68:
        .word   0x40c80000
        .size   A_557e3c, . - A_557e3c

@ FUN_00558650
        .global A_558650
        .type   A_558650, %function
A_558650:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_555320
        mov     r0, #0
        str     r0, [r4, #0x268]
        strb    r0, [r4, #0x568]
        str     r0, [r4, #0x278]
        str     r0, [r4, #0x540]
        str     r0, [r4, #0x544]
        str     r0, [r4, #0x554]
        strb    r0, [r4, #0x564]
        str     r0, [r4, #0x548]
        str     r0, [r4, #0x558]
        strb    r0, [r4, #0x565]
        str     r0, [r4, #0x54c]
        str     r0, [r4, #0x55c]
        strb    r0, [r4, #0x566]
        str     r0, [r4, #0x550]
        str     r0, [r4, #0x560]
        strb    r0, [r4, #0x567]
        mvn     r1, #0
        mov     r0, #1
        str     r1, [r4, #0x56c]
        strb    r0, [r4, #0x569]
        pop     {r4, pc}
        .size   A_558650, . - A_558650

@ FUN_005586b4
        .global A_5586b4
        .type   A_5586b4, %function
A_5586b4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        sub     sp, sp, #0x2c
        mov     sb, #0
        ldr     r0, [r0, #0x38]
        cmp     r0, #0
        bne     L558748
        ldr     r5, [r4, #0x34]
        cmn     r5, #1
        beq     L558748
        add     r0, r4, #0x1c
        str     sb, [sp]
        ldm     r0, {r0, r2}
        mov     r3, #1
        mov     r1, r5
        add     r0, r0, #0xc
        bl      Fn_55b114
        cmp     r0, #0
        bne     L558734
        ldr     ip, [r4, #0x24]
        cmp     ip, #0
        beq     L558734
        ldr     r0, [r4, #0x28]
        mov     r3, #0
        mov     r2, r3
        str     r0, [sp, #4]
        mov     r1, r3
        mov     r0, r3
        str     sb, [sp]
        blx     ip
L55872c:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L558734:
        ldr     r0, [r4, #0x1c]
        mov     r1, r5
        add     r0, r0, #0xc
        bl      Fn_638d54
        str     r0, [r4, #0x38]
L558748:
        ldr     r1, L558904
        mov     r3, #4
        mov     r2, #8
        add     r0, sp, #8
        blx     Fn_0000ac_t
        mov     r5, #0
        add     fp, sp, #8
        add     sl, sp, #0x28
        str     sb, [sp, #0x28]
L55876c:
        add     r6, r4, r5, lsl #3
        ldr     r0, [r6, #0x40]
        cmp     r0, #0
        bne     L5587fc
        ldr     r7, [r6, #0x3c]
        cmn     r7, #1
        beq     L558898
        add     r0, r4, #0x1c
        str     sb, [sp]
        ldm     r0, {r0, r2}
        mov     r3, #4
        mov     r1, r7
        add     r0, r0, #0xc
        bl      Fn_55b114
        cmp     r0, #0
        nop
        bne     L5587e8
        ldr     r0, [r4, #0x24]
        cmp     r0, #0
        beq     L5587e8
        ldr     r0, [r4, #0x28]
        mov     r3, #0
        str     sb, [sp]
        str     r0, [sp, #4]
        ldr     ip, [r4, #0x24]
        mov     r2, r3
        mov     r1, r3
        mov     r0, r3
        blx     ip
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5587e8:
        ldr     r0, [r4, #0x1c]
        mov     r1, r7
        add     r0, r0, #0xc
        bl      Fn_638d54
        str     r0, [r6, #0x40]
L5587fc:
        ldr     r0, [r6, #0x3c]
        cmn     r0, #1
        beq     L558898
        ldr     r0, [r4, #0x2c]
        add     r7, sl, r5
        mov     r1, r7
        cmp     r0, #0
        addne   r0, r0, #0xc
        str     r0, [sp]
        add     r0, fp, r5, lsl #3
        ldr     r3, [r4, #0x30]
        ldr     r2, [r6, #0x40]
        mov     r8, r0
        bl      Fn_55cdf0
        cmn     r0, #1
        nop
        beq     L558854
        cmp     r0, #0
        cmpne   r0, #1
        beq     L558898
        cmp     r0, #2
        bne     L558898
L558854:
        add     r0, r4, #0x1c
        ldr     r1, [r6, #0x40]
        ldm     r0, {r0, r2}
        add     r0, r0, #0xc
        bl      Fn_55a99c
        cmp     r0, #0
        nop
        beq     L5588d8
        ldr     r0, [r4, #0x1c]
        mov     r1, r7
        cmp     r0, #0
        addne   r0, r0, #0xc
        str     r0, [sp]
        ldr     r3, [r4, #0x30]
        ldr     r2, [r6, #0x40]
        mov     r0, r8
        bl      Fn_55cdf0
L558898:
        add     r5, r5, #1
        cmp     r5, #4
        blo     L55876c
        ldr     ip, [r4, #0x24]
        cmp     ip, #0
        beq     L55872c
        ldr     r0, [r4, #0x28]
        add     r3, sp, #8
        add     r2, r4, #0x3c
        str     r0, [sp, #4]
        add     r1, r4, #0x34
        mov     r0, #1
        str     sl, [sp]
L5588cc:
        blx     ip
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5588d8:
        ldr     ip, [r4, #0x24]
        cmp     ip, #0
        beq     L55872c
        ldr     r0, [r4, #0x28]
        mov     r3, #0
        mov     r2, r3
        str     r0, [sp, #4]
        mov     r1, r3
        mov     r0, r3
        str     sb, [sp]
        b       L5588cc
L558904:
        .word   0x00657e2c
        .size   A_5586b4, . - A_5586b4

@ FUN_00558c24
        .global A_558c24
        .type   A_558c24, %function
A_558c24:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r1, [r0, #0x9c]
        ldr     r2, [r0, #0x50]
        ldr     r5, [r0, #0x26c]
        add     r1, r1, r2
        usat    r6, #7, r1
        add     r1, r0, #0xe4
        add     r0, r5, #8
        bl      Fn_5421f4
        ldr     r1, [r5, #0xc]
        add     r2, r5, #0xc
        mov     r0, r4
        cmp     r1, r2
        beq     L558ca0
L558c60:
        ldrb    r4, [r1, #-0x48]
        ldr     r2, [r1, #-0x94]
        mov     ip, #0x7f
        mov     r3, #0
        add     r2, r2, r4
        cmp     r2, #0x7f
        movgt   r2, ip
        bgt     L558c88
        cmp     r2, #0
        movlt   r2, r3
L558c88:
        cmp     r2, r6
        bgt     L558ca0
        ldr     r1, [r1]
        add     r2, r5, #0xc
        cmp     r1, r2
        bne     L558c60
L558ca0:
        add     r2, r0, #0xe4
        add     r0, r5, #8
        pop     {r4, r5, r6, lr}
        b       Fn_542230
        .size   A_558c24, . - A_558c24

@ FUN_00558df0
        .global A_558df0
        .type   A_558df0, %function
A_558df0:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0xc
        mov     r7, r0
        mov     r5, r1
        ldr     r1, [r1]
        mov     r6, r2
        mov     r0, sp
        bl      Fn_55c810
        bl      Fn_55bca4
        mov     r8, r0
        mov     r1, #0x10
        bl      Fn_55bb2c
        ldr     r1, [r8, #0x184]
        add     sb, r7, #0x104
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #0xe
        strb    r1, [r0, #4]
        str     sb, [r0, #0x10]
        ldr     r1, [r6]
        str     r1, [r0, #0x3c]
        mov     r0, sp
        ldr     r0, [r0, #4]
        mov     r1, r0
        str     r1, [r4, #0x14]
        ldr     r1, [r5, #4]
        mov     r0, r4
        str     r1, [r4, #0x18]
        ldr     r1, [r5, #0x14]
        str     r1, [r4, #0x28]
        ldrb    r1, [r5, #0x24]
        strb    r1, [r4, #0x38]
        ldr     r1, [r5, #8]
        str     r1, [r4, #0x1c]
        ldr     r1, [r5, #0x18]
        str     r1, [r4, #0x2c]
        ldrb    r1, [r5, #0x25]
        strb    r1, [r4, #0x39]
        ldr     r1, [r5, #0xc]
        str     r1, [r4, #0x20]
        ldr     r1, [r5, #0x1c]
        str     r1, [r4, #0x30]
        ldrb    r1, [r5, #0x26]
        strb    r1, [r4, #0x3a]
        ldr     r1, [r5, #0x10]
        str     r1, [r4, #0x24]
        ldr     r1, [r5, #0x20]
        str     r1, [r4, #0x34]
        ldrb    r1, [r5, #0x27]
        strb    r1, [r4, #0x3b]
        mov     r1, r0
        mov     r0, r8
        bl      Fn_55bd58
        ldr     r8, [r6, #8]
        cmp     r8, #0
        ble     L558f0c
        ldrb    r6, [r6, #4]
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #7
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r2, #0xf
        str     r1, [r0, #0xc]
        strb    r2, [r0, #4]
        mov     r1, r0
        add     r2, r1, #0x14
        str     sb, [r0, #0x10]
        mov     r0, r4
        stm     r2, {r6, r8}
        bl      Fn_55bd58
L558f0c:
        ldm     r5, {r0, r1, r2, r3, r4, r6, r8, ip}
        add     sb, r7, #0x540
        add     r5, r5, #0x20
        stm     sb, {r0, r1, r2, r3, r4, r6, r8, ip}
        mov     r0, #1
        add     r3, r7, #0x560
        ldm     r5, {r1, r2}
        stm     r3, {r1, r2}
        strb    r0, [r7, #0x56a]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   A_558df0, . - A_558df0

@ FUN_00558f38
        .global A_558f38
        .type   A_558f38, %function
A_558f38:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r0, r0, #0x500
        ldrb    r1, [r0, #0x69]
        cmp     r1, #0
        beq     L55903c
        mov     r6, #0
        strb    r6, [r4, #0x569]
        ldrb    r0, [r0, #0x68]
        cmp     r0, #1
        bne     L558fc0
        ldr     r0, [r4, #0x56c]
        cmn     r0, #1
        beq     L558fa0
        bl      Fn_55bca4
        ldr     r1, [r4, #0x56c]
        mov     r5, r0
        bl      Fn_639098
        cmp     r0, #0
        bne     L558fa0
        mov     r1, #1
        mov     r0, r5
        bl      Fn_55bd7c
        ldr     r1, [r4, #0x56c]
        mov     r0, r5
        bl      Fn_55bfe4
L558fa0:
        nop
        bl      Fn_557434
        add     r1, r4, #0x27c
        nop
        bl      Fn_5572b0
        add     r0, r4, #0x288
        nop
        bl      Fn_01b274
L558fc0:
        str     r6, [r4, #0x540]
        str     r6, [r4, #0x544]
        str     r6, [r4, #0x554]
        strb    r6, [r4, #0x564]
        str     r6, [r4, #0x548]
        str     r6, [r4, #0x558]
        strb    r6, [r4, #0x565]
        str     r6, [r4, #0x54c]
        str     r6, [r4, #0x55c]
        strb    r6, [r4, #0x566]
        str     r6, [r4, #0x550]
        str     r6, [r4, #0x560]
        mov     r0, r4
        strb    r6, [r4, #0x567]
        bl      Fn_5560b4
        add     r0, r4, #0x2d8
        nop
        bl      Fn_55c1bc
        ldr     r5, [r4, #0x26c]
        add     r1, r4, #0xe4
        add     r0, r5, #8
        bl      Fn_5421f4
        ldr     r0, [r4]
        ldr     r1, [r0, #0x10]
        mov     r0, r4
        blx     r1
        add     r0, r5, #0x14
        add     r1, r5, #0x18
        add     r2, r4, #0xe4
        pop     {r4, r5, r6, lr}
        b       Fn_542230
L55903c:
        pop     {r4, r5, r6, pc}
        .size   A_558f38, . - A_558f38

@ FUN_00559040
        .global A_559040
        .type   A_559040, %function
A_559040:
        push    {r4, lr}
        mov     r4, r0
        add     r0, r0, #0x500
        ldrb    r1, [r0, #0x68]
        cmp     r1, #2
        beq     L55907c
        ldrb    r0, [r0, #0x68]
        cmp     r0, #4
        bne     L559078
        mov     r1, #0
        mov     r0, r4
        bl      Fn_55590c
        mov     r0, #0
L559074:
        strb    r0, [r4, #0x568]
L559078:
        pop     {r4, pc}
L55907c:
        add     r2, r4, #0x270
        add     r1, r4, #0x540
        mov     r0, r4
        bl      Fn_558df0
        mov     r0, #3
        nop
        b       L559074
        .size   A_559040, . - A_559040

@ FUN_00559408
        .global A_559408
        .type   A_559408, %function
A_559408:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r6, r1
        ldr     r0, [r0, #0x18]
        mov     r5, r2
        cmp     r0, #0
        ldrne   r3, [r4, #0x1c]
        cmpne   r3, #0
        beq     L559478
        ldr     r1, [r4, #0x20]
        cmp     r1, #0
        ldrge   r2, [r4, #0x24]
        cmpge   r2, r1
        blt     L559490
        add     ip, r1, r3
        add     r3, r2, r5
        cmp     ip, r3
        blo     L559490
        sub     r1, r2, r1
        add     r1, r1, r0
        mov     r2, r5
        mov     r0, r6
        bl      Fn_202b20
        ldr     r0, [r4, #0x24]
        add     r0, r0, r5
        str     r0, [r4, #0x24]
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L559478:
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r3, [r1, #0x24]
        mov     r1, r6
        pop     {r4, r5, r6, r7, r8, lr}
        bx      r3
L559490:
        ldr     r0, [r4, #0x14]
        ldr     r1, [r4, #0x24]
        ldr     r2, [r0]
        ldr     r3, [r2, #0x40]
        mov     r2, #0
        blx     r3
        ldr     r0, [r4]
        ldr     r1, [r0, #0x54]
        mov     r0, r4
        blx     r1
        str     r0, [r4, #0x20]
        ldr     r2, [r4, #0x1c]
        mvn     r7, #0
        cmp     r2, r5
        blo     L559508
        ldrd    r0, r1, [r4, #0x14]
        ldr     r3, [r0]
        ldr     r3, [r3, #0x24]
        blx     r3
        cmp     r0, #0
        blt     L559528
        ldr     r1, [r4, #0x18]
        mov     r2, r5
        mov     r0, r6
        bl      Fn_202b20
        ldr     r0, [r4, #0x24]
        add     r0, r0, r5
        str     r0, [r4, #0x24]
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L559508:
        ldr     r0, [r4, #0x14]
        mov     r2, r5
        ldr     r1, [r0]
        ldr     r3, [r1, #0x24]
        mov     r1, r6
        blx     r3
        cmp     r0, #0
        bge     L559530
L559528:
        str     r7, [r4, #0x20]
        pop     {r4, r5, r6, r7, r8, pc}
L559530:
        add     r0, r4, #0x18
        mov     r1, r6
        ldm     r0, {r0, r2}
        bl      Fn_202b20
        ldr     r0, [r4, #0x24]
        add     r0, r0, r5
        str     r0, [r4, #0x24]
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_559408, . - A_559408

@ FUN_00559554
        .global A_559554
        .type   A_559554, %function
A_559554:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x18]
        mov     r5, r1
        cmp     r0, #0
        ldrne   r0, [r4, #0x1c]
        cmpne   r0, #0
        beq     L5595b4
        cmp     r2, #0
        streq   r1, [r4, #0x24]
        beq     L5595b0
        cmp     r2, #1
        ldreq   r0, [r4, #0x24]
        addeq   r0, r0, r1
        beq     L5595ac
        cmp     r2, #2
        bne     L5595b0
        ldr     r0, [r4]
        ldr     r1, [r0, #0x3c]
        mov     r0, r4
        blx     r1
        sub     r0, r0, r5
L5595ac:
        str     r0, [r4, #0x24]
L5595b0:
        pop     {r4, r5, r6, pc}
L5595b4:
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, r5
        pop     {r4, r5, r6, lr}
        bx      r3
        .size   A_559554, . - A_559554

@ FUN_005596c8
        .global A_5596c8
        .type   A_5596c8, %function
A_5596c8:
        push    {r4, lr}
        sub     sp, sp, #8
        ldrb    ip, [r0, #0x190]
        mov     r4, r3
        ldr     r3, [sp, #0x10]
        cmp     ip, #0
        beq     L559720
        cmp     r2, #0x54
        blo     L559720
        movs    ip, r1
        moveq   r0, #0
        beq     L559714
        ldr     r1, L55972c
        str     r0, [sp, #4]
        mov     r2, r4
        str     r1, [sp]
        add     r1, r0, #0x11c
        mov     r0, ip
        bl      Fn_557b6c
L559714:
        ldrb    r1, [r0, #0x50]
        cmp     r1, #0
        bne     L559724
L559720:
        mov     r0, #0
L559724:
        add     sp, sp, #8
        pop     {r4, pc}
L55972c:
        .word   0x00659860
        .size   A_5596c8, . - A_5596c8

@ FUN_00559ac0
        .global A_559ac0
        .type   A_559ac0, %function
A_559ac0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L559b5c
        mov     r6, #0
        str     r0, [r4]
        ldrb    r0, [r4, #0x190]
        cmp     r0, #0
        beq     L559b10
        ldr     r0, [r4, #0x120]
        bics    r1, r0, #1
        beq     L559b04
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r4, #0x120]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r4, #0x120]
L559b04:
        add     r0, r4, #0x13c
        bl      Fn_55c7e8
        strb    r6, [r4, #0x190]
L559b10:
        mov     r0, r4
        bl      Fn_55093c
        mvn     r0, #0
        str     r0, [r4, #0x18c]
        ldr     r0, [r4, #0x120]
        add     r5, r4, #0x120
        bics    r1, r0, #1
        beq     L559b48
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r5]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r5]
L559b48:
        mov     r0, r4
        bl      Fn_550998
        pop     {r4, r5, r6, lr}
        nop
        b       Fn_2024b0
L559b5c:
        .word   0x0082ce2c
        .size   A_559ac0, . - A_559ac0

@ FUN_00559b64
        .global A_559b64
        .type   A_559b64, %function
A_559b64:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L559bf8
        mov     r6, #0
        str     r0, [r4]
        ldrb    r0, [r4, #0x190]
        cmp     r0, #0
        beq     L559bb4
        ldr     r0, [r4, #0x120]
        bics    r1, r0, #1
        beq     L559ba8
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r4, #0x120]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r4, #0x120]
L559ba8:
        add     r0, r4, #0x13c
        bl      Fn_55c7e8
        strb    r6, [r4, #0x190]
L559bb4:
        mov     r0, r4
        bl      Fn_55093c
        mvn     r0, #0
        str     r0, [r4, #0x18c]
        ldr     r0, [r4, #0x120]
        add     r5, r4, #0x120
        bics    r1, r0, #1
        beq     L559bec
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r5]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r6, [r5]
L559bec:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_550998
L559bf8:
        .word   0x0082ce2c
        .size   A_559b64, . - A_559b64

@ FUN_00559f8c
        .global A_559f8c
        .type   A_559f8c, %function
A_559f8c:
        ldrb    r2, [r0, #0x260]
        cmp     r2, #0
        bxne    lr
        mov     r2, #1
        mov     ip, #0
        strb    r2, [r0, #0x260]
        strb    ip, [r0, #0x261]
        push    {r4, r5}
        mov     r2, ip
        mov     r3, #9
        mvn     r4, #0
L559fb8:
        add     r5, r0, r2, lsl #3
        add     r5, r5, #0x218
        subs    r3, r3, #1
        stm     r5, {r4, ip}
        add     r2, r2, #1
        bne     L559fb8
        pop     {r4, r5}
        add     r0, r0, #0xc
        mov     r0, r0
        str     r1, [r0, #4]
        bx      lr
        .size   A_559f8c, . - A_559f8c

@ FUN_0055a0c8
        .global A_55a0c8
        .type   A_55a0c8, %function
A_55a0c8:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x3c
        mov     r6, r0
        mov     r7, r1
        mov     r5, r2
        ldr     sl, [sp, #0x60]
        ldr     r0, [r0, #4]
        mov     r4, r3
        bl      Fn_639548
        mov     fp, r0
        ldr     r0, [r6]
        mov     r1, fp
        ldr     r2, [r0, #0xc]
        mov     r0, r6
        blx     r2
        movs    r1, r0
        bne     L55a128
        mov     r3, sl
        mov     r2, r4
        mov     r1, r7
        mov     r0, r6
        bl      Fn_55a2fc
        movs    r1, r0
        beq     L55a204
L55a128:
        mov     r2, #1
        add     r0, sp, #8
        bl      Fn_55c698
        ldrb    r2, [sp, #0x14]
        add     r0, sp, #8
        mov     r1, r5
        cmp     r2, #0
        beq     L55a158
        bl      Fn_63930c
        cmp     r0, #0
        movne   r0, #1
        bne     L55a208
L55a158:
        mov     r1, r5
        add     r0, sp, #8
        bl      Fn_639364
        mov     r7, r0
        add     r8, r0, #0x20
        ldr     r0, [r4]
        mov     r1, r8
        ldr     r2, [r0, #8]
        mov     r0, r4
        blx     r2
        movs    r4, r0
        beq     L55a204
        mov     sb, r8
        bl      Fn_00545c
        mov     r8, r0
        nop
        bl      Fn_00536c
        cmp     r8, r4
        add     r1, r0, r8
        bhi     L55a204
        add     r0, r4, sb
        cmp     r0, r1
        bhi     L55a204
        ldr     r0, L55a238
        add     r1, sp, #0x18
        str     r5, [sp, #0x20]
        stm     r1, {r0, fp}
        mov     r2, #0x20
        mov     r0, r4
        bl      Fn_202b20
        add     r4, r4, #0x20
        mov     r1, r5
        add     r0, sp, #8
        bl      Fn_6393c8
        stm     sp, {r0, sl}
        mov     r3, r7
        mov     r2, r4
        mov     r1, fp
        mov     r0, r6
        bl      Fn_55b52c
        cmp     r0, r7
        nop
        beq     L55a210
L55a204:
        mov     r0, #0
L55a208:
        add     sp, sp, #0x3c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55a210:
        mov     r2, r4
        mov     r1, r5
        add     r0, sp, #8
        bl      Fn_55c5f0
        mov     r1, r7
        mov     r0, r4
        bl      Fn_500960
        add     sp, sp, #0x3c
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55a238:
        .word   0x56574943
        .size   A_55a0c8, . - A_55a0c8

@ FUN_0055a23c
        .global A_55a23c
        .type   A_55a23c, %function
A_55a23c:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        mov     r8, r1
        mov     r5, r0
        mvn     r1, #0
        ldr     r4, [sp, #0x34]
        mov     r0, #0
        str     r1, [sp, #4]
        mov     sb, r2
        strb    r0, [sp, #0xc]
        ldr     r6, [sp, #0x30]
        ldr     r0, [r5, #4]
        mov     r7, r3
        add     r2, sp, #4
        mov     r1, r8
        bl      Fn_636ad0
        cmp     r0, #0
        beq     L55a2f4
        ldrb    r0, [sp, #0xc]
        cmp     r0, #0
        beq     L55a2b4
        mov     r3, r7
        mov     r2, sb
        mov     r1, r8
        mov     r0, r5
        str     r4, [sp]
        bl      Fn_55a0c8
        cmp     r0, #0
        beq     L55a2f4
        b       L55a2f0
L55a2b4:
        tst     r6, #8
        mov     r1, r8
        beq     L55a2f0
        ldr     r0, [r5, #4]
        bl      Fn_639548
        mov     r2, #1
        mov     r1, r0
        str     r2, [sp]
        mov     r3, r4
        mov     r2, r7
        mov     r0, r5
        bl      Fn_55b404
        cmp     r0, #0
        nop
        beq     L55a2f4
L55a2f0:
        mov     r0, #1
L55a2f4:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   A_55a23c, . - A_55a23c

@ FUN_0055a2fc
        .global A_55a2fc
        .type   A_55a2fc, %function
A_55a2fc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        sub     sp, sp, #0x8c
        mov     sb, r2
        mov     r7, r3
        ldr     r0, [r0, #4]
        mov     r5, r1
        bl      Fn_639548
        mov     fp, r0
        ldr     r0, [r4]
        mov     r1, fp
        ldr     r2, [r0, #0xc]
        mov     r0, r4
        blx     r2
        cmp     r0, #0
        bne     L55a428
        mov     sl, #0
        mvn     r0, #0
        str     r0, [sp]
        strb    sl, [sp, #8]
        ldr     r0, [r4, #4]
        mov     r2, sp
        mov     r1, r5
        bl      Fn_636ad0
        cmp     r0, #0
        beq     L55a428
        ldr     r0, [sp, #4]
        cmp     r0, #0
        beq     L55a428
        mov     r6, r0
        add     r0, sp, #0x2f
        bic     r5, r0, #0x1f
        mov     r3, #0x2c
        mov     r2, r5
        mov     r1, fp
        mov     r0, r4
        str     r7, [sp, #4]
        str     sl, [sp]
        bl      Fn_55b52c
        cmp     r0, #0x2c
        bne     L55a424
        mov     r8, r5
        mov     r0, r5
        bl      Fn_637c48
        mov     r5, r0
        mov     r0, r8
        bl      Fn_637c78
        cmp     r0, r5
        bhi     L55a424
        add     r0, r5, r6, lsl #2
        add     r8, r0, #4
        ldr     r0, [sb]
        mov     r1, r8
        ldr     r2, [r0, #8]
        mov     r0, sb
        blx     r2
        mov     r6, r0
        bl      Fn_00545c
        mov     sb, r0
        bl      Fn_00536c
        cmp     sb, r6
        add     r1, r0, sb
        addls   r0, r6, r8
        cmpls   r0, r1
        bhi     L55a424
        mov     r3, r5
        mov     r2, r6
        mov     r1, fp
        mov     r0, r4
        str     r7, [sp, #4]
        str     sl, [sp]
        bl      Fn_55b52c
        cmp     r0, r5
        beq     L55a430
L55a424:
        mov     r0, #0
L55a428:
        add     sp, sp, #0x8c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55a430:
        ldr     r1, L55a480
        add     r0, r6, r5
        mov     r2, #1
        ldr     r1, [r1]
        str     r1, [r0]
        mov     r1, r6
        add     r0, sp, #0x78
        bl      Fn_55c698
        add     r0, sp, #0x78
        nop
        bl      Fn_55c624
        ldr     r0, [r4]
        mov     r2, r6
        mov     r1, fp
        ldr     r3, [r0, #8]
        mov     r0, r4
        blx     r3
        add     sp, sp, #0x8c
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55a480:
        .word   0x007f690c
        .size   A_55a2fc, . - A_55a2fc

@ FUN_0055a99c
        .global A_55a99c
        .type   A_55a99c, %function
A_55a99c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        cmp     r1, #0
        sub     sp, sp, #0x1c
        mov     r6, r0
        mov     r8, r2
        beq     L55aab0
        add     r0, sp, #0x10
        bl      Fn_559228
        add     r0, sp, #0x10
        bl      Fn_637634
        movs    r4, r0
        beq     L55aab0
        ldr     r0, [r4]
        mov     r5, #0
        cmp     r0, #0
        mvnhi   fp, #0
        bls     L55aaa4
L55a9e0:
        ldr     r0, [r4]
        cmp     r0, r5
        bls     L55aab0
        add     r0, r4, r5, lsl #3
        adds    r0, r0, #4
        beq     L55aab0
        ldm     r0, {sb, sl}
        mov     r7, #0
        str     fp, [sp, #4]
        strb    r7, [sp, #0xc]
        ldr     r0, [r6, #4]
        add     r2, sp, #4
        mov     r1, sb
        bl      Fn_636ad0
        cmp     r0, #0
        nop
        beq     L55aab0
        ldrb    r0, [sp, #0xc]
        cmp     r0, #0
        beq     L55aa58
        mov     r3, r8
        mov     r2, sl
        mov     r1, sb
        mov     r0, r6
        str     r7, [sp]
        bl      Fn_55a0c8
        cmp     r0, #0
        nop
        beq     L55aab0
        b       L55aa94
L55aa58:
        mov     r1, sb
        ldr     r0, [r6, #4]
        mov     sl, r6
        mov     sb, r8
        bl      Fn_639548
        mov     r2, #1
        mov     r1, r0
        str     r2, [sp]
        mov     r3, r7
        mov     r2, sb
        mov     r0, sl
        bl      Fn_55b404
        cmp     r0, #0
        nop
        beq     L55aab0
L55aa94:
        ldr     r0, [r4]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L55a9e0
L55aaa4:
        add     sp, sp, #0x1c
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55aab0:
        add     sp, sp, #0x1c
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_55a99c, . - A_55a99c

@ FUN_0055aabc
        .global A_55aabc
        .type   A_55aabc, %function
A_55aabc:
        cmp     r1, #0
        moveq   r0, #0
        bxeq    lr
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x20
        mov     r4, r0
        mov     r5, r2
        mov     r6, r3
        add     r0, sp, #0x18
        bl      Fn_55ba6c
        mov     ip, #0
        strb    ip, [sp, #8]
        strb    ip, [sp, #9]
        strb    ip, [sp, #0xa]
        mov     r3, ip
        mov     r2, r5
        mov     r1, sp
        add     r0, sp, #0x18
        strb    ip, [sp, #0xb]
        strb    ip, [sp, #0xc]
        bl      Fn_638f1c
        cmp     r0, #0
        beq     L55ab3c
        ldm     sp, {r1, r2}
        mov     r3, #0
        mov     r0, #8
        stm     sp, {r0, r3}
        mov     r3, r6
        mov     r0, r4
        bl      Fn_55a23c
        cmp     r0, #0
        movne   r0, #1
L55ab3c:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, pc}
        .size   A_55aabc, . - A_55aabc

@ FUN_0055b114
        .global A_55b114
        .type   A_55b114, %function
A_55b114:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     r5, r0
        mov     r7, r1
        mov     r8, r2
        ldr     r0, [r0, #4]
        ldr     r4, [sp, #0x30]
        mov     fp, r3
        cmp     r0, #0
        beq     L55b174
        bl      Fn_636770
        cmp     r0, #0
        cmnne   r7, #1
        cmpne   r8, #0
        beq     L55b174
        add     r6, r5, #0x200
        ldrb    r1, [r5, #0x20a]
        ldrh    r0, [r6, #8]
        mov     sb, #0
        cmp     r1, #0
        add     r0, r0, #1
        strh    r0, [r6, #8]
        beq     L55b180
        b       L55b1d0
L55b174:
        add     sp, sp, #0xc
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55b180:
        lsr     r0, r7, #0x18
        cmp     r0, #7
        mov     sl, #1
        ldrlo   pc, [pc, r0, lsl #2]
        b       L55b1d0
        .word   0x0065b1d0
        .word   0x0065b1b0
        .word   0x0065b2fc
        .word   0x0065b244
        .word   0x0065b1d0
        .word   0x0065b268
        .word   0x0065b2a8
        .word   0xe5950004
        .word   0xe1a01007
        .word   0xeb0378aa
        .word   0xe3500001
        .word   0xe320f000
        .word   0x0a00000a
        .word   0xe3500003
        .word   0x0a000011
L55b1d0:
        .word   0xe3a00000
        .word   0xe1d610b8
        .word   0xe2411001
        .word   0xe1a01801
        .word   0xe1b01821
        .word   0xe1c610b8
        .word   0x05c5920a
        .word   0xe28dd00c
        .word   0xe8bd8ff0
        .size   A_55b114, . - A_55b114

@ FUN_0055b404
        .global A_55b404
        .type   A_55b404, %function
A_55b404:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     r6, r2
        sub     sp, sp, #0x18
        ldr     r0, [r0]
        ldr     r7, [sp, #0x38]
        mov     sl, r1
        mov     r8, r3
        ldr     r2, [r0, #0x10]
        mov     r0, r5
        blx     r2
        cmp     r0, #0
        bne     L55b518
        mvn     r0, #0
        add     r1, sp, #0xc
        mov     sb, #0
        str     r0, [sp, #8]
        stm     r1, {r0, sb}
        add     r2, sp, #8
        ldr     r0, [r5, #4]
        mov     r1, sl
        bl      Fn_636b24
        cmp     r0, #0
        ldrne   r4, [sp, #8]
        cmpne   r4, #0
        cmnne   r4, #1
        beq     L55b520
        ldr     r0, [r6]
        mov     r1, r4
        ldr     r2, [r0, #8]
        mov     r0, r6
        blx     r2
        movs    r6, r0
        beq     L55b520
        cmp     r7, #0
        beq     L55b4c0
        bl      Fn_00545c
        mov     r7, r0
        bl      Fn_00536c
        cmp     r7, r6
        add     r1, r0, r7
        bhi     L55b4b8
        add     r0, r6, r4
        cmp     r0, r1
        bls     L55b4c0
L55b4b8:
        mov     r6, sb
        b       L55b4f4
L55b4c0:
        mov     r3, r4
        mov     r2, r6
        mov     r1, sl
        mov     r0, r5
        str     r8, [sp, #4]
        str     sb, [sp]
        bl      Fn_55b52c
        cmp     r0, r4
        nop
        bne     L55b520
        mov     r1, r4
        mov     r0, r6
        bl      Fn_500960
L55b4f4:
        cmp     r6, #0
        beq     L55b520
        ldr     r0, [r5]
        mov     r2, r6
        mov     r1, sl
        ldr     r3, [r0, #8]
        mov     r0, r5
        blx     r3
        mov     r0, r6
L55b518:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L55b520:
        add     sp, sp, #0x18
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_55b404, . - A_55b404

@ FUN_0055b52c
        .global A_55b52c
        .type   A_55b52c, %function
A_55b52c:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x10
        mov     r6, r0
        add     r0, sp, #0x30
        mov     r4, r1
        ldm     r0, {r5, r8}
        mov     sl, r2
        ldr     r0, [r6, #4]
        mov     sb, r3
        add     r0, r0, #0x110
        bl      Fn_0244c8
        mov     r0, #0
        mov     r1, #1
        str     r0, [sp]
        strd    r0, r1, [sp, #4]
        ldr     r0, [r6, #4]
        mov     r3, #0x200
        add     r2, r6, #8
        mov     r1, r4
        bl      Fn_550804
        movs    r4, r0
        beq     L55b608
        ldr     r0, [r4]
        ldr     r1, [r0, #0x4c]
        mov     r0, r4
        blx     r1
        cmp     r0, #0
        beq     L55b630
        ldr     r0, [r4]
        ldr     r1, [r0, #0xc]
        mov     r0, r4
        blx     r1
        cmp     r0, #0
        beq     L55b630
        ldr     r1, [r4]
        mov     r0, r4
        mov     r2, #0
        ldr     r3, [r1, #0x40]
        mov     r1, r5
        blx     r3
        cmp     r8, #0
        beq     L55b64c
        subs    r5, sb, #0
        addgt   r7, r6, #0x200
        ble     L55b6f8
L55b5e0:
        ldrb    r0, [r7, #0xa]
        cmp     r0, #0
        beq     L55b68c
        ldr     r0, [r6, #4]
        add     r0, r0, #0x110
        bl      Fn_024568
        movs    r0, r4
        nop
        beq     L55b6d4
        b       L55b620
L55b608:
        ldr     r0, [r6, #4]
        add     r0, r0, #0x110
        bl      Fn_024568
        movs    r0, r4
        nop
        beq     L55b6d4
L55b620:
        ldr     r1, [r0]
        ldr     r1, [r1, #0x38]
        blx     r1
        b       L55b6d4
L55b630:
        ldr     r0, [r6, #4]
        add     r0, r0, #0x110
        bl      Fn_024568
        movs    r0, r4
        nop
        beq     L55b6d4
        b       L55b620
L55b64c:
        add     r1, sb, #0x1f
        bic     r2, r1, #0x1f
        ldr     r1, [r4]
        mov     r0, r4
        ldr     r3, [r1, #0x24]
        mov     r1, sl
        blx     r3
        cmp     r0, #0
        bge     L55b6f8
        ldr     r0, [r6, #4]
        add     r0, r0, #0x110
        bl      Fn_024568
        movs    r0, r4
        nop
        beq     L55b6d4
        b       L55b620
L55b68c:
        ldr     r1, [r4]
        cmp     r8, r5
        movgt   r0, r5
        movle   r0, r8
        ldr     r3, [r1, #0x24]
        add     r0, r0, #0x1f
        bic     r2, r0, #0x1f
        mov     r0, r4
        mov     r1, sl
        blx     r3
        cmp     r0, #0
        bge     L55b6e0
        ldr     r0, [r6, #4]
        add     r0, r0, #0x110
        bl      Fn_024568
        movs    r0, r4
        nop
        bne     L55b620
L55b6d4:
        add     sp, sp, #0x10
        mvn     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L55b6e0:
        cmp     r5, r0
        ble     L55b6f8
        sub     r5, r5, r0
        cmp     r5, #0
        add     sl, sl, r0
        bgt     L55b5e0
L55b6f8:
        ldr     r0, [r6, #4]
        add     r0, r0, #0x110
        bl      Fn_024568
        movs    r0, r4
        nop
        beq     L55b71c
        ldr     r1, [r0]
        ldr     r1, [r1, #0x38]
        blx     r1
L55b71c:
        add     sp, sp, #0x10
        mov     r0, sb
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_55b52c, . - A_55b52c

@ FUN_0055b7d8
        .global A_55b7d8
        .type   A_55b7d8, %function
A_55b7d8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r1, #0x9c]
        ldr     r2, [r1, #0x50]
        mov     r5, r1
        ldr     r1, [r4, #0xc]
        add     r0, r0, r2
        usat    r6, #7, r0
        cmp     r1, #0
        beq     L55b86c
L55b800:
        ldr     r0, [r4, #0xc]
        ldr     r1, [r4]
        cmp     r1, r0
        blt     L55b884
        ldr     r0, [r4, #4]
        mov     r3, #0x80
        mov     r2, #0
L55b81c:
        add     r1, r4, #4
        cmp     r0, r1
        beq     L55b84c
        ldrb    ip, [r0, #-0x60]
        ldr     r1, [r0, #-0xac]
        add     r1, r1, ip
        usat    r1, #7, r1
        cmp     r3, r1
        subgt   r2, r0, #0xfc
        ldr     r0, [r0]
        movgt   r3, r1
        b       L55b81c
L55b84c:
        movs    r0, r2
        beq     L55b870
        ldrb    r1, [r0, #0x9c]
        ldr     r2, [r0, #0x50]
        add     r1, r1, r2
        usat    r1, #7, r1
        cmp     r6, r1
        bge     L55b874
L55b86c:
        mov     r0, #0
L55b870:
        pop     {r4, r5, r6, pc}
L55b874:
        ldr     r1, [r0]
        ldr     r1, [r1, #0x10]
        blx     r1
        b       L55b800
L55b884:
        mov     r0, r4
        add     r1, r4, #4
        add     r2, r5, #0xfc
        bl      Fn_542230
        mov     r1, r4
        mov     r0, r5
        str     r1, [r0, #0x18]
        mov     r0, #1
        pop     {r4, r5, r6, pc}
        .size   A_55b7d8, . - A_55b7d8

@ FUN_0055b8a8
        .global A_55b8a8
        .type   A_55b8a8, %function
A_55b8a8:
        push    {r4, lr}
        mov     r4, r1
        ldr     r1, [r0, #0xc]
        cmp     r1, #0
        beq     L55b8ec
        ldr     r2, [r0]
        cmp     r1, r2
        bgt     L55b8f4
        bl      Fn_55b96c
        cmp     r0, #0
        beq     L55b8f0
        ldrb    r1, [r0, #0x9c]
        ldr     r0, [r0, #0x50]
        add     r0, r0, r1
        usat    r0, #7, r0
        cmp     r0, r4
        ble     L55b8f4
L55b8ec:
        mov     r0, #0
L55b8f0:
        pop     {r4, pc}
L55b8f4:
        mov     r0, #1
        pop     {r4, pc}
        .size   A_55b8a8, . - A_55b8a8

@ FUN_0055b96c
        .global A_55b96c
        .type   A_55b96c, %function
A_55b96c:
        mov     ip, r0
        str     r4, [sp, #-4]!
        ldr     r1, [ip, #4]
        mov     r3, #0x80
        mov     r0, #0
L55b980:
        add     r2, ip, #4
        cmp     r1, r2
        beq     L55b9b0
        ldrb    r4, [r1, #-0x60]
        ldr     r2, [r1, #-0xac]
        add     r2, r2, r4
        usat    r2, #7, r2
        cmp     r3, r2
        subgt   r0, r1, #0xfc
        ldr     r1, [r1]
        movgt   r3, r2
        b       L55b980
L55b9b0:
        pop     {r4}
        bx      lr
        .size   A_55b96c, . - A_55b96c

@ FUN_0055b9b8
        .global A_55b9b8
        .type   A_55b9b8, %function
A_55b9b8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r8, r1
        ldr     r4, [r0, #4]!
        cmp     r4, r0
        beq     L55ba0c
L55b9d0:
        sub     r0, r4, #0xfc
        mov     r6, r4
        ldr     r4, [r4]
        mov     r1, r8
        bl      Fn_5557f0
        mov     r1, r6
        sub     r7, r6, #0xfc
        mov     r0, r5
        bl      Fn_5421f4
        mov     r1, r5
        mov     r0, r7
        bl      Fn_5558f0
        add     r0, r5, #4
        cmp     r4, r0
        bne     L55b9d0
L55ba0c:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55b9b8, . - A_55b9b8

@ FUN_0055bb2c
        .global A_55bb2c
        .type   A_55bb2c, %function
A_55bb2c:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        mov     r7, r1
        bl      Fn_55be84
        cmp     r0, #0
        moveq   r8, #0
        bne     L55bc8c
L55bb48:
        mov     r1, sp
        add     r0, r4, #0xb4
        bl      Fn_684b84
        cmp     r0, #0
        nop
        beq     L55bba4
        ldr     r0, [sp]
        cmp     r0, #0
        ldr     r2, [r0, #8]
        str     r2, [r4, #0x178]
        beq     L55bb48
L55bb74:
        ldr     r1, [r0]
        cmp     r1, #0
        movne   r0, r1
        bne     L55bb74
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x188]
        strb    r8, [r4, #0x18c]
        ldr     r1, [r4, #0x184]
        cmp     r1, r0
        streq   r8, [r4, #0x188]
        streq   r8, [r4, #0x184]
        b       L55bb48
L55bba4:
        mov     r1, r7
        mov     r0, r4
        bl      Fn_55be84
        cmp     r0, #0
        moveq   sb, #1
        addeq   r6, r4, #0x100
        bne     L55bc8c
L55bbc0:
        mov     r1, #1
        mov     r0, r4
        bl      Fn_55bd7c
        mov     r5, r0
L55bbd0:
        add     r0, r4, #0xb4
        bl      Fn_684d70
        ldr     r3, [r0, #8]
        movs    r2, r0
        str     r3, [r4, #0x178]
        beq     L55bc14
L55bbe8:
        ldr     r1, [r0]
        cmp     r1, #0
        movne   r0, r1
        bne     L55bbe8
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x188]
        strb    r8, [r4, #0x18c]
        ldr     r1, [r4, #0x184]
        cmp     r1, r0
        streq   r8, [r4, #0x188]
        streq   r8, [r4, #0x184]
L55bc14:
        ldr     r0, [r2, #8]
        cmp     r0, r5
        bne     L55bbd0
        ldrb    r0, [r6, #0x8c]
        cmp     r0, #0
        mov     r0, #0
        bne     L55bbc0
        add     r1, r4, #0x184
        ldm     r1, {r1, r2}
        cmp     r2, r1
        bls     L55bc50
        add     r3, r1, r7
        cmp     r3, r2
        bls     L55bc60
        b       L55bc84
L55bc50:
        ldr     ip, [r4, #0x180]
        add     r3, r1, r7
        cmp     ip, r3
        blo     L55bc90
L55bc60:
        ldr     r2, [r4, #0x17c]
        str     r3, [r4, #0x184]
        add     r0, r2, r1, lsl #2
L55bc6c:
        cmp     r0, #0
        beq     L55bbc0
        add     r1, r4, #0x184
        ldm     r1, {r1, r2}
        cmp     r1, r2
        strbeq  sb, [r4, #0x18c]
L55bc84:
        cmp     r0, #0
        beq     L55bbc0
L55bc8c:
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L55bc90:
        cmp     r2, r7
        strhs   r7, [r4, #0x184]
        ldrhs   r0, [r4, #0x17c]
        bhs     L55bc6c
        b       L55bc84
        .size   A_55bb2c, . - A_55bb2c

@ FUN_0055bcfc
        .global A_55bcfc
        .type   A_55bcfc, %function
A_55bcfc:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #9
        strb    r1, [r0, #4]
        ldr     r0, [r6]
        ldr     r1, [r0, #0x20]
        mov     r0, r6
        blx     r1
        mov     r1, r0
        str     r1, [r4, #0x10]
        mov     r1, r4
        mov     r0, r5
        strb    r7, [r4, #0x14]
        pop     {r4, r5, r6, r7, r8, lr}
        mov     r0, r0
        .size   A_55bcfc, . - A_55bcfc

@ FUN_0055bd7c
        .global A_55bd7c
        .type   A_55bd7c, %function
A_55bd7c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        ldr     r0, [r0, #0x16c]
        mov     r7, #0
        cmp     r0, #0
        beq     L55bdc0
L55bd98:
        ldr     r1, [r4, #0x16c]
        ldr     r6, [r4, #0x174]
        mcr     p15, #0, r7, c7, c10, #5
        cmp     r5, #0
        mov     r0, r4
        beq     L55be00
        bl      Fn_684e4c
        nop
        nop
        b       L55be14
L55bdc0:
        cmp     r5, #0
        moveq   r0, #0
        beq     L55be34
        mov     r1, #4
        mov     r0, r4
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        str     r1, [r0, #0xc]
        strb    r7, [r0, #4]
        ldr     r1, [r4, #0x170]
        cmp     r1, #0
        streq   r0, [r4, #0x16c]
        strne   r0, [r1]
        str     r0, [r4, #0x170]
        str     r7, [r0]
        b       L55bd98
L55be00:
        nop
        bl      Fn_684c10
        cmp     r0, #0
        nop
        beq     L55be34
L55be14:
        ldr     r0, [r4, #0x16c]
        str     r6, [r0, #8]
        ldr     r0, [r4, #0x174]
        add     r0, r0, #1
        str     r0, [r4, #0x174]
        str     r7, [r4, #0x16c]
        mov     r0, r6
        str     r7, [r4, #0x170]
L55be34:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55bd7c, . - A_55bd7c

@ FUN_0055be84
        .global A_55be84
        .type   A_55be84, %function
A_55be84:
        push    {r4, r5}
        ldrb    r3, [r0, #0x18c]
        mov     r2, #0
        cmp     r3, #0
        movne   r0, #0
        bne     L55bf00
        add     r3, r0, #0x184
        ldm     r3, {r3, ip}
        cmp     ip, r3
        bls     L55bec8
        add     r1, r1, r3
        cmp     r1, ip
        bhi     L55befc
        ldr     r2, [r0, #0x17c]
        str     r1, [r0, #0x184]
        add     r2, r2, r3, lsl #2
        b       L55bee4
L55bec8:
        ldr     r5, [r0, #0x180]
        add     r4, r3, r1
        cmp     r5, r4
        blo     L55bf08
        ldr     r1, [r0, #0x17c]
        str     r4, [r0, #0x184]
        add     r2, r1, r3, lsl #2
L55bee4:
        cmp     r2, #0
        beq     L55befc
        ldr     r1, [r0, #0x184]
        cmp     r1, ip
        moveq   r1, #1
        strbeq  r1, [r0, #0x18c]
L55befc:
        mov     r0, r2
L55bf00:
        pop     {r4, r5}
        bx      lr
L55bf08:
        cmp     ip, r1
        strhs   r1, [r0, #0x184]
        ldrhs   r2, [r0, #0x17c]
        bhs     L55bee4
        b       L55befc
        .size   A_55be84, . - A_55be84

@ FUN_0055bfe4
        .global A_55bfe4
        .type   A_55bfe4, %function
A_55bfe4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, #0
L55bff4:
        add     r0, r4, #0xb4
        bl      Fn_684d70
        ldr     r1, [r0, #8]
        movs    r2, r0
        str     r1, [r4, #0x178]
        beq     L55c038
L55c00c:
        ldr     r1, [r0]
        cmp     r1, #0
        movne   r0, r1
        bne     L55c00c
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x188]
        strb    r6, [r4, #0x18c]
        ldr     r1, [r4, #0x184]
        cmp     r1, r0
        streq   r6, [r4, #0x188]
        streq   r6, [r4, #0x184]
L55c038:
        ldr     r0, [r2, #8]
        cmp     r0, r5
        bne     L55bff4
        pop     {r4, r5, r6, pc}
        .size   A_55bfe4, . - A_55bfe4

@ FUN_0055c0c4
        .global A_55c0c4
        .type   A_55c0c4, %function
A_55c0c4:
        mov     r2, #0
        str     r2, [r0, #4]
        strh    r2, [r0, #8]
        str     r2, [r0, #0xc]
        strh    r2, [r0, #0x10]
        str     r2, [r0, #0x14]
        add     r1, r0, #0x18
        mvn     ip, #0
        stm     r1, {r2, ip}
        str     r2, [r0, #0x2c]
        str     r2, [r0, #0x30]
        str     r2, [r0, #0xb8]
        strh    r2, [r0, #0xbc]
        str     r2, [r0, #0xc0]
        strh    r2, [r0, #0xc4]
        str     r2, [r0, #0xc8]
        add     r3, r0, #0xcc
        stm     r3, {r2, ip}
        str     r2, [r0, #0xe0]
        str     r2, [r0, #0xe4]
        strb    r2, [r0, #0x18d]
        bx      lr
        .size   A_55c0c4, . - A_55c0c4

@ FUN_0055c11c
        .global A_55c11c
        .type   A_55c11c, %function
A_55c11c:
        mov     r1, #0
        str     r4, [sp, #-4]!
        mov     r2, #9
        mov     ip, r1
        mvn     r4, #0
L55c130:
        add     r3, r0, r1, lsl #3
        add     r3, r3, #0x218
        subs    r2, r2, #1
        stm     r3, {r4, ip}
        add     r1, r1, #1
        bne     L55c130
        pop     {r4}
        bx      lr
        .size   A_55c11c, . - A_55c11c

@ FUN_0055c22c
        .global A_55c22c
        .type   A_55c22c, %function
A_55c22c:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L55c280
        add     r1, r0, #0x20
        str     r0, [r4]
        str     r1, [r4, #0xc]
        ldrb    r0, [r4, #0x261]
        cmp     r0, #0
        bne     L55c26c
        mov     r2, #0
        mov     r1, #1
        strb    r2, [r4, #0x260]
        strb    r1, [r4, #0x261]
        mov     r1, r2
        add     r0, r4, #0xc
        str     r1, [r0, #4]
L55c26c:
        add     r0, r4, #0xc
        bl      Fn_55b7bc
        pop     {r4, lr}
        sub     r0, r0, #0xc
        b       Fn_2024b0
L55c280:
        .word   0x0082ce90
        .size   A_55c22c, . - A_55c22c

@ FUN_0055c284
        .global A_55c284
        .type   A_55c284, %function
A_55c284:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L55c2d4
        add     r1, r0, #0x20
        str     r0, [r4]
        str     r1, [r4, #0xc]
        ldrb    r0, [r4, #0x261]
        cmp     r0, #0
        bne     L55c2c4
        mov     r2, #0
        mov     r1, #1
        strb    r2, [r4, #0x260]
        strb    r1, [r4, #0x261]
        mov     r1, r2
        add     r0, r4, #0xc
        str     r1, [r0, #4]
L55c2c4:
        add     r0, r4, #0xc
        bl      Fn_55b7bc
        sub     r0, r0, #0xc
        pop     {r4, pc}
L55c2d4:
        .word   0x0082ce90
        .size   A_55c284, . - A_55c284

@ FUN_0055c2d8
        .global A_55c2d8
        .type   A_55c2d8, %function
A_55c2d8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r7, r1
        ldr     r0, [r0]
        mov     r6, r2
        mov     r2, #0
        sub     sp, sp, #0xa8
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, r2
        blx     r3
        ldr     r3, [r4]
        add     r5, sp, #0x5f
        bic     r1, r5, #0x1f
        mov     r2, #0x40
        ldr     r0, [r3]
        ldr     ip, [r0, #0x24]
        mov     r0, r3
        blx     ip
        cmp     r0, #0x40
        bne     L55c3a4
        bic     r5, r5, #0x1f
        add     r0, sp, #0xa0
        bl      Fn_55c538
        mov     r1, r5
        add     r0, sp, #0xa0
        bl      Fn_639198
        cmp     r0, #0
        beq     L55c3a8
        mov     r0, r5
        bl      Fn_637aa0
        mov     r8, r0
        mov     r0, r5
        bl      Fn_637a28
        add     r5, r8, r0
        cmp     r5, r6
        bhi     L55c3a4
        ldr     r0, [r4]
        mov     r2, #0
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, r2
        blx     r3
        ldr     r0, [r4]
        mov     r2, r5
        ldr     r1, [r0]
        ldr     r3, [r1, #0x24]
        mov     r1, r7
        blx     r3
        cmp     r0, r5
        beq     L55c3b0
L55c3a4:
        mov     r0, #0
L55c3a8:
        add     sp, sp, #0xa8
        pop     {r4, r5, r6, r7, r8, pc}
L55c3b0:
        mov     r1, r7
        add     r0, r4, #4
        bl      Fn_55c4d4
        add     r1, sp, #8
        add     r0, r4, #4
        bl      Fn_6391c8
        cmp     r0, #0
        nop
        beq     L55c3a8
        ldrb    r0, [sp, #8]
        bl      Fn_5592a0
        cmp     r0, #3
        nop
        bne     L55c3f8
        ldr     r0, [r4, #4]
        cmp     r0, #0
        blne    Fn_637ad8
        str     r0, [r4, #0xc]
L55c3f8:
        add     sp, sp, #0xa8
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55c2d8, . - A_55c2d8

@ FUN_0055c404
        .global A_55c404
        .type   A_55c404, %function
A_55c404:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, [sp, #0x18]
        ldr     r0, [r0, #0xc]
        mov     r7, r2
        lsl     r1, r4, #2
        mla     r0, r1, r3, r0
        add     r1, r0, #8
        ldr     r0, [r5]
        ldr     r2, [r0]
        ldr     r3, [r2, #0x40]
        mov     r2, #0
        blx     r3
        ldr     r0, [r5]
        mov     r2, #0x20
        ldr     r1, [r0]
        ldr     r3, [r1, #0x24]
        ldr     r1, L55c4cc
        blx     r3
        cmp     r0, #0x20
        movne   r0, #0
        bne     L55c4c8
        cmp     r4, #0
        ble     L55c4c4
        ldr     r0, L55c4d0
        tst     r4, #1
        sub     r1, r6, #2
        sub     r2, r7, #2
        beq     L55c490
        ldrh    r3, [r0, #4]
        strh    r3, [r1, #2]!
        ldrh    r3, [r0, #6]
        add     r0, r0, #4
        strh    r3, [r2, #2]!
L55c490:
        asrs    r3, r4, #1
        beq     L55c4c4
L55c498:
        ldrh    ip, [r0, #4]
        subs    r3, r3, #1
        strh    ip, [r1, #2]
        ldrh    ip, [r0, #6]
        strh    ip, [r2, #2]
        ldrh    ip, [r0, #8]
        strh    ip, [r1, #4]!
        ldrh    ip, [r0, #0xa]
        add     r0, r0, #8
        strh    ip, [r2, #4]!
        bne     L55c498
L55c4c4:
        mov     r0, #1
L55c4c8:
        pop     {r4, r5, r6, r7, r8, pc}
L55c4cc:
        .word   0x00a7b060
L55c4d0:
        .word   0x00a7b05c
        .size   A_55c404, . - A_55c404

@ FUN_0055c520
        .global A_55c520
        .type   A_55c520, %function
A_55c520:
        add     r0, r0, #4
        mov     r0, r0
        mov     r1, #0
        str     r1, [r0]
        str     r1, [r0, #4]
        bx      lr
        .size   A_55c520, . - A_55c520

@ FUN_0055c624
        .global A_55c624
        .type   A_55c624, %function
A_55c624:
        ldrb    r2, [r0, #0xc]
        mov     r1, #0
        mov     r3, r1
        cmp     r2, #0
        beq     L55c670
        ldr     r2, [r0, #4]
        ldr     r2, [r2]
        cmp     r2, #0
        bls     L55c670
L55c648:
        ldr     ip, [r0, #8]
        mov     r2, r3
        str     r3, [ip, r1, lsl #2]
        ldrb    ip, [r0, #0xc]
        add     r1, r1, #1
        cmp     ip, #0
        ldrne   r2, [r0, #4]
        ldrne   r2, [r2]
        cmp     r2, r1
        bhi     L55c648
L55c670:
        bx      lr
        .size   A_55c624, . - A_55c624

@ FUN_0055ccf8
        .global A_55ccf8
        .type   A_55ccf8, %function
A_55ccf8:
        cmp     r1, #0
        mov     r2, #0
        moveq   r2, r0
        beq     L55cd5c
        cmp     r1, #1
        lsleq   r2, r0, #1
        beq     L55cd5c
        cmp     r1, #3
        bne     L55cd5c
        ldr     r3, L55cd64
        mov     r2, #0
        ldr     ip, L55cd64
        mov     r1, r3
        umlal   r3, r2, r0, r1
        mov     r3, #0
        umlal   ip, r3, r0, r1
        lsr     r2, r2, #2
        lsl     r2, r2, #3
        lsr     r1, r3, #2
        sub     r1, r1, r1, lsl #3
        adds    r0, r0, r1, lsl #1
        beq     L55cd5c
        add     r0, r0, #1
        add     r0, r2, r0, lsr #1
        add     r2, r0, #1
L55cd5c:
        mov     r0, r2
        bx      lr
L55cd64:
        .word   0x49249249
        .size   A_55ccf8, . - A_55ccf8

@ FUN_0055cdf0
        .global A_55cdf0
        .type   A_55cdf0, %function
A_55cdf0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x2c
        mov     r7, r1
        mov     sb, #0
        mvn     sl, #0
        ldr     r8, [sp, #0x50]
        str     sb, [r0, #4]
        str     sl, [r0]
        mov     r5, r0
        mov     r1, r2
        mov     fp, r3
        add     r0, sp, #0x20
        strb    sb, [r7]
        bl      Fn_559228
        add     r0, sp, #0x20
        bl      Fn_637634
        movs    r6, r0
        beq     L55cf00
        ldr     r0, [r6]
        cmp     r0, #0
        moveq   r0, #1
        beq     L55cef8
        bls     L55cf00
        adds    r4, r6, #4
        beq     L55cf00
        ldr     r1, [r4]
        mov     r0, r8
        bl      Fn_638d54
        movs    r8, r0
        mvneq   r0, #0
        beq     L55cef8
        str     sl, [sp]
        strb    sb, [sp, #8]
        ldr     r1, [r4]
        mov     r2, sp
        mov     r0, fp
        bl      Fn_636ad0
        ldr     r0, [r4]
        stm     r5, {r0, r8}
        ldrb    r0, [sp, #8]
        strb    r0, [r7]
        ldrb    r0, [sp, #8]
        cmp     r0, #0
        beq     L55cef4
        mov     r2, #1
        mov     r1, r8
        add     r0, sp, #0x10
        bl      Fn_55c698
        ldr     r0, [r6]
        mov     r5, #0
        cmp     r0, #0
        bls     L55cef4
L55cec0:
        ldrb    r2, [sp, #0x1c]
        ldr     r1, [r4, #4]
        add     r0, sp, #0x10
        cmp     r2, #0
        beq     L55cf0c
        bl      Fn_63930c
        cmp     r0, #0
        nop
        beq     L55cf0c
        ldr     r0, [r6]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L55cec0
L55cef4:
        mov     r0, #0
L55cef8:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55cf00:
        add     sp, sp, #0x2c
        mvn     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55cf0c:
        add     sp, sp, #0x2c
        mov     r0, #2
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_55cdf0, . - A_55cdf0

@ FUN_0055cf18
        .global A_55cf18
        .type   A_55cf18, %function
A_55cf18:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        sub     sp, sp, #0x40
        mov     r1, r0
        mov     r6, r2
        mov     r5, r3
        add     r0, sp, #0x38
        bl      Fn_55ba6c
        mov     ip, #0
        strb    ip, [sp, #8]
        strb    ip, [sp, #9]
        strb    ip, [sp, #0xa]
        mov     r3, ip
        mov     r2, r4
        mov     r1, sp
        add     r0, sp, #0x38
        strb    ip, [sp, #0xb]
        strb    ip, [sp, #0xc]
        bl      Fn_638f1c
        ldr     r1, [sp]
        mov     r0, r5
        bl      Fn_638d54
        movs    r4, r0
        beq     L55cfb4
        mvn     r0, #0
        mov     r1, #0
        str     r0, [sp, #0x18]
        strb    r1, [sp, #0x20]
        ldr     r1, [sp]
        add     r2, sp, #0x18
        mov     r0, r6
        bl      Fn_636ad0
        ldrsb   r2, [sp, #0x20]
        mov     r1, r4
        add     r0, sp, #0x28
        bl      Fn_55c698
        ldr     r1, [sp, #4]
        add     r0, sp, #0x28
        bl      Fn_63930c
L55cfb4:
        add     sp, sp, #0x40
        pop     {r4, r5, r6, pc}
        .size   A_55cf18, . - A_55cf18

@ FUN_0055d140
        .global A_55d140
        .type   A_55d140, %function
A_55d140:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r7, r1
        ldrb    r0, [r1]
        mov     r6, #0
        strb    r0, [r4, #0x50]
        ldr     r0, [r4, #8]
        cmp     r0, #0
        ldrgt   r8, L55d210
        ble     L55d1f8
L55d168:
        ldr     r5, [r4, r6, lsl #2]
        cmp     r5, #0
        beq     L55d1e8
        mov     r1, #1
        mov     r0, r5
        bl      Fn_5173f4
        ldrb    r0, [r4, #0x50]
        mov     r1, #1
        cmp     r0, #4
        ldrlo   pc, [pc, r0, lsl #2]
        b       L55d1b0
L55d194:
        .word   0x0065d1a4
L55d198:
        .word   0x0065d1b0
L55d19c:
        .word   0x0065d1b0
L55d1a0:
        .word   0x0065d1ac
        mov     r1, #0
        b       L55d1b0
        mov     r1, #2
L55d1b0:
        mov     r0, r5
        bl      Fn_517414
        ldr     r1, [r7, #8]
        mov     r0, r5
        bl      Fn_5171bc
        ldrb    r0, [r8, #2]
        mov     r1, #0
        cmp     r0, #0
        moveq   r1, #2
        beq     L55d1e0
        cmp     r0, #1
        moveq   r1, #1
L55d1e0:
        mov     r0, r5
        bl      Fn_51766c
L55d1e8:
        ldr     r0, [r4, #8]
        add     r6, r6, #1
        cmp     r0, r6
        bgt     L55d168
L55d1f8:
        mov     r0, #0
        strb    r0, [r4, #0x17]
        strb    r0, [r4, #0x18]
        strb    r0, [r4, #0x15]
        strb    r0, [r4, #0x16]
        pop     {r4, r5, r6, r7, r8, pc}
L55d210:
        .word   0x009dfe08
        .size   A_55d140, . - A_55d140

@ FUN_0055d238
        .global A_55d238
        .type   A_55d238, %function
A_55d238:
        ldrb    r2, [r0, #0x2c]
        cmp     r2, r1
        beq     L55d254
        ldrh    r2, [r0, #0x20]
        strb    r1, [r0, #0x2c]
        orr     r1, r2, #8
        strh    r1, [r0, #0x20]
L55d254:
        bx      lr
        .size   A_55d238, . - A_55d238

@ FUN_0055d258
        .global A_55d258
        .type   A_55d258, %function
A_55d258:
        cmp     r1, #0
        mov     r2, #0
        moveq   r2, r0
        beq     L55d2b8
        cmp     r1, #1
        lsleq   r2, r0, #1
        beq     L55d2b8
        cmp     r1, #3
        bne     L55d2b8
        ldr     r3, L55d2c0
        mov     r1, #0
        ldr     ip, L55d2c0
        mov     r2, r3
        umlal   r3, r1, r0, r2
        mov     r3, #0
        umlal   ip, r3, r0, r2
        lsr     r1, r1, #2
        sub     r1, r1, r1, lsl #3
        adds    r1, r0, r1, lsl #1
        lsr     r0, r3, #2
        lsl     r0, r0, #4
        addne   r0, r0, r1
        addne   r0, r0, #2
        lsr     r2, r0, #1
L55d2b8:
        mov     r0, r2
        bx      lr
L55d2c0:
        .word   0x49249249
        .size   A_55d258, . - A_55d258

@ FUN_0055d308
        .global A_55d308
        .type   A_55d308, %function
A_55d308:
        ldrb    r2, [r0, #0x2d]
        cmp     r2, r1
        beq     L55d324
        ldrh    r2, [r0, #0x20]
        strb    r1, [r0, #0x2d]
        orr     r1, r2, #8
        strh    r1, [r0, #0x20]
L55d324:
        bx      lr
        .size   A_55d308, . - A_55d308

@ FUN_0055d7d8
        .global A_55d7d8
        .type   A_55d7d8, %function
A_55d7d8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, r1, lsl #2]
        mov     r5, r2
        mov     r6, r3
        mov     r1, r2
        bl      Fn_517438
        cmp     r6, #0
        strne   r5, [r4, #0x1c]
        pop     {r4, r5, r6, pc}
        .size   A_55d7d8, . - A_55d7d8

@ FUN_0055d800
        .global A_55d800
        .type   A_55d800, %function
A_55d800:
        push    {r4, r5, r6, r7, r8, sb, lr}
        subs    r6, r2, #0
        sub     sp, sp, #0x24
        mov     r7, r0
        mov     r8, r1
        mov     r5, r3
        mov     r4, #0
        movhi   sb, #0xe
        bls     L55d84c
L55d824:
        mov     r3, r7
        mov     r2, r8
        add     r1, sp, #4
        mov     r0, r5
        str     sb, [sp]
        bl      Fn_51385c
        add     r4, r4, #0xe
        cmp     r4, r6
        add     r5, r5, #8
        blo     L55d824
L55d84c:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   A_55d800, . - A_55d800

@ FUN_0055d990
        .global A_55d990
        .type   A_55d990, %function
A_55d990:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r1
        mov     r7, r0
        ldrb    r0, [r1, #0x1a]
        mov     r8, #0
        cmp     r0, #0
        beq     L55d9e8
        mov     r0, #1
        strb    r0, [r4, #0x1b]
        ldr     r2, [r4, #8]
        mov     r0, #0
        cmp     r2, #0
        ble     L55da38
L55d9c4:
        ldr     r1, [r4, r0, lsl #2]
        cmp     r1, r7
        bne     L55d9d8
        str     r8, [r4, r0, lsl #2]
L55d9d4:
        pop     {r4, r5, r6, r7, r8, pc}
L55d9d8:
        add     r0, r0, #1
        cmp     r2, r0
        bgt     L55d9c4
        b       L55da38
L55d9e8:
        ldr     r0, [r4, #8]
        mov     r5, #0
        cmp     r0, #0
        ble     L55da38
L55d9f8:
        ldr     r6, [r4, r5, lsl #2]
        cmp     r6, #0
        beq     L55da28
        cmp     r6, r7
        beq     L55da24
        mov     r1, #1
        mov     r0, r6
        bl      Fn_517774
        mov     r0, r6
        nop
        bl      Fn_516a88
L55da24:
        str     r8, [r4, r5, lsl #2]
L55da28:
        ldr     r0, [r4, #8]
        add     r5, r5, #1
        cmp     r0, r5
        bgt     L55d9f8
L55da38:
        strb    r8, [r4, #0x17]
        strb    r8, [r4, #0x15]
        str     r8, [r4, #8]
        bl      Fn_562bd4
        mov     r1, r4
        nop
        bl      Fn_562f00
        ldr     r3, [r4, #0xc]
        strb    r8, [r4, #0x14]
        cmp     r3, #0
        beq     L55d9d4
        ldr     r2, [r4, #0x10]
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, lr}
        mov     r1, #3
        bx      r3
        .size   A_55d990, . - A_55d990

@ FUN_0055dd88
        .global A_55dd88
        .type   A_55dd88, %function
A_55dd88:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        cmp     r1, #2
        mov     r4, r0
        mov     r8, r3
        movgt   r7, #2
        vpush   {d8}
        vldr    s16, [sp, #0x30]
        bgt     L55ddb4
        cmp     r1, #1
        movlt   r7, #1
        movge   r7, r1
L55ddb4:
        mov     fp, #1
        mov     sl, #0
        strb    fp, [r4, #0x1a]
        usat    sb, #0xf, r2
        str     sl, [r4, #8]
        cmp     r7, #1
        strb    sl, [r4, #0x1b]
        beq     L55de00
        cmp     r7, #0
        mov     r6, #0
        ble     L55de64
L55dde0:
        ldr     r1, L55df10
        mov     r2, r4
        mov     r0, sb
        bl      Fn_511a58
        movs    r5, r0
        nop
        beq     L55de24
        b       L55de48
L55de00:
        mov     r2, r0
        ldr     r1, L55df14
        mov     r0, sb
        bl      Fn_511a58
        cmp     r0, #0
        strne   r0, [r4]
        strne   fp, [r4, #8]
        beq     L55dea0
        b       L55dea8
L55de24:
        nop
        bl      Fn_562bd4
        mov     r1, sb
        nop
        bl      Fn_562df0
        cmp     r0, #0
        nop
        bne     L55dde0
        strb    fp, [r4, #0x1b]
L55de48:
        str     r5, [r4, r6, lsl #2]
        ldr     r0, [r4, #8]
        add     r6, r6, #1
        cmp     r6, r7
        add     r0, r0, #1
        str     r0, [r4, #8]
        blt     L55dde0
L55de64:
        ldrb    r0, [r4, #0x1b]
        cmp     r0, #0
        beq     L55dea8
        ldr     r0, [r4, #8]
        mov     r5, #0
        cmp     r0, #0
        ble     L55de9c
L55de80:
        ldr     r0, [r4, r5, lsl #2]
        cmp     r0, #0
        blne    Fn_516a88
        ldr     r0, [r4, #8]
        add     r5, r5, #1
        cmp     r0, r5
        bgt     L55de80
L55de9c:
        mov     r0, #0
L55dea0:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L55dea8:
        strb    sl, [r4, #0x1a]
        strh    sl, [r4, #0x20]
        strb    sl, [r4, #0x17]
        strb    sl, [r4, #0x18]
        vldr    s0, L55df18
        strb    sl, [r4, #0x16]
        str     sl, [r4, #0x1c]
        vstr    s0, [r4, #0x24]
        vldr    s1, L55df1c
        vstr    s0, [r4, #0x38]
        strb    sl, [r4, #0x22]
        vstr    s1, [r4, #0x3c]
        vstr    s1, [r4, #0x30]
        vstr    s1, [r4, #0x34]
        vstr    s0, [r4, #0x44]
        str     r8, [r4, #0xc]
        vstr    s16, [r4, #0x10]
        vstr    s1, [r4, #0x48]
        vstr    s1, [r4, #0x4c]
        vstr    s0, [r4, #0x28]
        strb    sl, [r4, #0x2c]
        strb    sl, [r4, #0x2d]
        strb    fp, [r4, #0x14]
        mov     r0, #1
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L55df10:
        .word   0x0065d990
L55df14:
        .word   0x0065d940
L55df18:
        .word   0x3f800000
L55df1c:
        .word   0x00000000
        .size   A_55dd88, . - A_55dd88

@ FUN_0055df20
        .global A_55df20
        .type   A_55df20, %function
A_55df20:
        ldrsb   r2, [r0, #0x17]
        cmp     r2, r1
        beq     L55df3c
        ldrh    r2, [r0, #0x20]
        strb    r1, [r0, #0x17]
        orr     r1, r2, #2
        strh    r1, [r0, #0x20]
L55df3c:
        bx      lr
        .size   A_55df20, . - A_55df20

@ FUN_0055df40
        .global A_55df40
        .type   A_55df40, %function
A_55df40:
        ldrh    r2, [r0, #0x20]
        mov     r3, #1
        mov     r1, #0
        strb    r3, [r0, #0x15]
        orr     r2, r2, #1
        strb    r1, [r0, #0x17]
        strh    r2, [r0, #0x20]
        bx      lr
        .size   A_55df40, . - A_55df40

@ FUN_0055ea04
        .global A_55ea04
        .type   A_55ea04, %function
A_55ea04:
        mov     r2, r1
        add     r0, r0, #0x1dc
        add     r1, r0, #4
        add     r2, r2, #4
        b       Fn_542230
        .size   A_55ea04, . - A_55ea04

@ FUN_0055eab8
        .global A_55eab8
        .type   A_55eab8, %function
A_55eab8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r0, #0
        mov     r1, r0
        mov     r5, r0
        stm     r4, {r0, r1, r5}
        mov     r1, #0x194
        vldr    s0, L55eb54
        str     r0, [r4, #0xc]
        vstr    s0, [r4, #0x14]
        vstr    s0, [r4, #0x10]
        str     r5, [r4, #0x1b0]
        add     r0, r4, #0x18
        str     r5, [r4, #0x1ac]
        bl      Fn_1fddd8
        strb    r5, [r4, #0x1b4]
        str     r5, [r4, #0x1c4]
        mvn     r1, #0
        str     r1, [r4, #0x1cc]
        add     r1, r4, #0x1d4
        str     r5, [r4, #0x1c8]
        str     r1, [r4, #0x1d4]
        str     r5, [r4, #0x1d0]
        str     r1, [r4, #0x1d8]
        add     r1, r4, #0x1e0
        str     r1, [r4, #0x1e0]
        str     r5, [r4, #0x1dc]
        str     r1, [r4, #0x1e4]
        str     r5, [r4, #0x1f0]
        strb    r5, [r4, #0x1f4]
        strb    r5, [r4, #0x1f5]
        strb    r5, [r4, #0x1f6]
        strb    r5, [r4, #0x1f7]
        str     r5, [r4, #0x1f8]
        str     r5, [r4, #0x1fc]
        str     r5, [r4, #0x200]
        mov     r0, r4
        str     r5, [r4, #0x204]
        pop     {r4, r5, r6, pc}
L55eb54:
        .word   0x00000000
        .size   A_55eab8, . - A_55eab8

@ FUN_0055eb5c
        .global A_55eb5c
        .type   A_55eb5c, %function
A_55eb5c:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_55f2b0
        add     r3, r4, #0x3c
        mov     r0, #0
        mvn     r2, #0
        stm     r3, {r0, r2}
        mov     r1, #3
        str     r0, [r4, #0x44]
        str     r0, [r4, #0x4c]
        str     r0, [r4, #0x50]
        strb    r0, [r4, #0x54]
        strb    r0, [r4, #0x55]
        strb    r1, [r4, #0xa98]
        str     r0, [r4, #0xc2c]
        str     r0, [r4, #0xc30]
        pop     {r4, pc}
        .size   A_55eb5c, . - A_55eb5c

@ FUN_0055ec34
        .global A_55ec34
        .type   A_55ec34, %function
A_55ec34:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r1
        sub     sp, sp, #0x7c
        mov     r4, r0
        mov     r2, #0x4000
        ldr     r1, L55f02c
        bl      Fn_55c2d8
        cmp     r0, #0
        beq     L55ef8c
        ldr     r1, [r4, #0x10]
        add     r0, r4, #4
        str     r0, [sp, #0x50]
        str     r1, [r6, #0x10]
        ldrh    r0, [r4, #0x38]
        add     r1, sp, #0x10
        strh    r0, [r6, #0x38]
        mov     r0, r4
        bl      Fn_63912c
        cmp     r0, #0
        beq     L55ef8c
        mov     r0, r4
        bl      Fn_639150
        mov     r8, r0
        ldr     r0, [r4, #0x18]
        str     r8, [r0, #0x2c]
        ldrb    r0, [sp, #0x10]
        bl      Fn_5592a0
        ldr     r1, [r4, #0x18]
        strb    r0, [r1]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x14]
        str     r0, [r1, #4]
        ldrb    r0, [sp, #0x11]
        ldr     r1, [r4, #0x18]
        cmp     r0, #0
        movne   r0, #1
        strb    r0, [r1, #8]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x18]
        str     r0, [r1, #0xc]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x1c]
        str     r0, [r1, #0x18]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x28]
        str     r0, [r1, #0x1c]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x24]
        str     r0, [r1, #0x20]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x34]
        str     r0, [r1, #0x24]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x30]
        str     r0, [r1, #0x28]
        ldr     r0, [sp, #0x50]
        bl      Fn_63929c
        cmp     r0, #0
        mov     sb, #0
        beq     L55ee6c
        ldr     r0, [sp, #0x50]
        ldr     r0, [r0, #4]
        bl      Fn_637b30
        ldr     r7, [r0]
        mov     r5, #0
        cmp     r7, #4
        movhi   r7, #4
        cmpls   r7, #0
        bls     L55ee6c
L55ed48:
        strb    sb, [sp, #8]
        strb    sb, [sp, #9]
        strb    sb, [sp, #0xa]
        strb    sb, [sp, #0xb]
        strb    sb, [sp, #0xc]
        strh    sb, [sp, #0xd]
        ldr     r0, [sp, #0x50]
        mov     r2, r5
        add     r1, sp, #8
        bl      Fn_6391f8
        cmp     r0, #0
        nop
        beq     L55ef8c
        ldr     r2, [r4, #0x18]
        add     r0, r5, r5, lsl #2
        ldrb    r1, [sp, #8]
        add     r0, r0, r5, lsl #3
        add     ip, r0, #0x34
        add     r3, r0, #0x35
        strb    r1, [r2, ip]
        ldr     r2, [r4, #0x18]
        ldrb    r1, [sp, #9]
        add     ip, r0, #0x36
        add     sl, r0, #0x37
        strb    r1, [r2, r3]
        ldr     r2, [r4, #0x18]
        ldrb    r1, [sp, #0xa]
        add     fp, r0, #0x3e
        strb    r1, [r2, ip]
        ldr     r2, [r4, #0x18]
        ldrb    r1, [sp, #0xb]
        strb    r1, [r2, sl]
        ldr     r2, [r4, #0x18]
        ldrb    r1, [sp, #0xc]
        strb    r1, [r2, fp]
        ldrb    r2, [sp, #0xc]
        mov     r1, #0
        cmp     r2, #0
        addgt   sl, sp, #8
        ble     L55ee10
L55ede8:
        ldr     r3, [r4, #0x18]
        add     r2, sl, r1
        add     ip, r1, #0x3f
        ldrb    r2, [r2, #5]
        add     r3, r3, r0
        add     r1, r1, #1
        strb    r2, [r3, ip]
        ldrb    r2, [sp, #0xc]
        cmp     r2, r1
        bgt     L55ede8
L55ee10:
        ldr     r2, [r4, #0x18]
        add     r3, r0, #0x38
        mov     r1, #0x7f
        add     ip, r0, #0x3c
        strb    r1, [r2, r3]
        ldr     r1, [r4, #0x18]
        add     r2, r0, #0x39
        add     r3, r0, #0x3a
        add     r5, r5, #1
        strb    sb, [r1, r2]
        ldr     r1, [r4, #0x18]
        cmp     r5, r7
        strb    sb, [r1, r3]
        ldr     r2, [r4, #0x18]
        add     r3, r0, #0x3b
        mov     r1, #0x40
        add     r0, r0, #0x3d
        strb    r1, [r2, r3]
        ldr     r1, [r4, #0x18]
        strb    sb, [r1, ip]
        ldr     r1, [r4, #0x18]
        strb    sb, [r1, r0]
        blo     L55ed48
L55ee6c:
        ldr     r0, [r4, #0x18]
        ldrb    r0, [r0]
        cmp     r0, #3
        strb    r0, [r4, #0xa98]
        beq     L55ef94
        cmp     r8, #0
        beq     L55eec8
        and     r0, r8, #1
        cmp     r0, #1
        mov     r1, #0
        moveq   r1, #1
        streq   sb, [r6, #0x18]
        cmp     r0, r8
        bhs     L55eec8
L55eea4:
        add     r2, r6, r1, lsl #2
        add     r1, r1, #1
        add     r0, r0, #2
        add     r3, r6, r1, lsl #2
        str     sb, [r2, #0x18]
        cmp     r0, r8
        add     r1, r1, #1
        str     sb, [r3, #0x18]
        blo     L55eea4
L55eec8:
        ldr     r0, [r4, #4]
        cmp     r0, #0
        blne    Fn_637a60
        ldr     r1, [sp, #0x44]
        add     r0, r0, #8
        add     r5, r0, r1
        ldr     r0, [sp, #0x1c]
        ldr     r1, [sp, #0x28]
        sub     r0, r0, #1
        bl      Fn_022d48
        mov     sl, r0
        ldr     r0, [sp, #0x18]
        ldr     r1, [sp, #0x28]
        bl      Fn_022d48
        mov     r6, r0
        ldr     r0, [sp, #0x24]
        mul     r1, r8, r6
        mov     r2, #0
        mla     r7, r0, r1, r5
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, r5
        blx     r3
        add     r1, r4, #0x48
        str     r6, [r4, #0x44]
        str     sl, [r4, #0x40]
        stm     r1, {r5, r7, sb}
        ldr     r2, [r4, #0xc2c]
        cmp     r2, #0
        streq   sb, [r4, #0x60]
        ldreq   r0, [sp, #0x1c]
        beq     L55ef78
        str     sb, [sp]
        ldr     r1, [r4, #0xc30]
        mov     r0, sp
        blx     r2
        cmp     r0, #0
        beq     L55ef8c
        ldr     r0, [sp]
        str     r0, [r4, #0x58]
        ldr     r0, [r4, #0x18]
        ldr     r0, [r0, #0x18]
        str     sb, [r4, #0x60]
L55ef78:
        str     r0, [r4, #0x64]
        mov     r0, r4
        str     sb, [r4, #0x5c]
        bl      Fn_55c520
        mov     r0, #1
L55ef8c:
        add     sp, sp, #0x7c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55ef94:
        cmp     r8, #0
        mov     r7, #0
        bls     L55eec8
L55efa0:
        mov     r3, r7
        add     r2, sp, #0x48
        add     r1, sp, #0x50
        mov     r0, r4
        bl      Fn_639174
        cmp     r0, #0
        nop
        beq     L55ef8c
        add     r0, r7, r7, lsl #1
        add     r0, r0, r7, lsl #3
        mov     r2, #0x20
        add     r0, r4, r0, lsl #2
        add     r5, r0, #0xa00
        add     r5, r5, #0x9a
        add     r1, sp, #0x50
        mov     r0, r5
        bl      Fn_202b20
        ldrh    r1, [sp, #0x70]
        add     r0, r6, r7, lsl #2
        add     r7, r7, #1
        strh    r1, [r5, #0x20]
        ldrh    r1, [sp, #0x72]
        cmp     r8, r7
        strh    r1, [r5, #0x22]
        ldrh    r1, [sp, #0x74]
        strh    r1, [r5, #0x24]
        ldrh    r1, [sp, #0x48]
        strh    r1, [r5, #0x26]
        ldrh    r1, [sp, #0x4a]
        strh    r1, [r5, #0x28]
        ldrh    r1, [sp, #0x4c]
        strh    r1, [r5, #0x2a]
        str     r5, [r0, #0x18]
        bhi     L55efa0
        b       L55eec8
L55f02c:
        .word   0x00a76d60
        .size   A_55ec34, . - A_55ec34

@ FUN_0055f030
        .global A_55f030
        .type   A_55f030, %function
A_55f030:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        sub     sp, sp, #0x2c
        mov     r6, r1
        ldr     r0, L55f2ac
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L55f2a4
        ldr     r1, [r0]
        add     r2, sp, #0x1c
        ldr     r3, [r1, #8]
        ldr     r1, [r4, #0x14]
        blx     r3
        cmp     r0, #0
        beq     L55f2a4
        ldr     r0, [r4, #0x10]
        mov     fp, #0
        str     r0, [r6, #0x10]
        ldrh    r0, [r4, #0x38]
        strh    r0, [r6, #0x38]
        ldr     r1, [r4, #0x18]
        ldr     r5, [sp, #0x1c]
        mov     r0, #1
        str     r5, [r1, #0x2c]
        ldr     r1, [r4, #0x18]
        cmp     r5, #0
        str     r0, [r1, #0x30]
        ldr     r1, [r4, #0x18]
        strb    r0, [r1]
        ldr     r1, [r4, #0x18]
        ldr     r0, [sp, #0x20]
        str     r0, [r1, #4]
        ldr     r1, [r4, #0x18]
        ldrb    r0, [r4, #0x24]
        strb    r0, [r1, #8]
        ldr     r1, [r4, #0x18]
        ldr     r0, [r4, #0x28]
        str     r0, [r1, #0xc]
        ldr     r1, [r4, #0x18]
        ldr     r0, [r4, #0x2c]
        str     r0, [r1, #0x18]
        ldr     r2, [r4, #0x18]
        ldr     r1, [sp, #0x24]
        mov     r0, #0x800
        str     r1, [r2, #0x1c]
        ldr     r1, [r4, #0x18]
        str     r0, [r1, #0x20]
        ldr     r1, [r4, #0x18]
        str     r0, [r1, #0x24]
        ldr     r1, [r4, #0x18]
        ldr     r0, [r4, #0x30]
        str     r0, [r1, #0x10]
        ldr     r1, [r4, #0x18]
        ldrb    r0, [r4, #0x34]
        strb    r0, [r1, #0x14]
        ldr     r1, [r4, #0x18]
        ldrb    r0, [r4, #0x35]
        strb    r0, [r1, #0x15]
        ldr     r1, [r4, #0x18]
        ldrb    r0, [r4, #0x36]
        strb    r0, [r1, #0x16]
        beq     L55f168
        and     r0, r5, #1
        cmp     r0, #1
        mov     r1, #0
        moveq   r1, #1
        streq   fp, [r6, #0x18]
        cmp     r0, r5
        bhs     L55f168
L55f144:
        add     r2, r6, r1, lsl #2
        add     r1, r1, #1
        add     r0, r0, #2
        add     r3, r6, r1, lsl #2
        str     fp, [r2, #0x18]
        cmp     r0, r5
        add     r1, r1, #1
        str     fp, [r3, #0x18]
        blo     L55f144
L55f168:
        ldr     r6, [r4, #0x18]
        ldr     r7, [r6, #0x1c]
        ldr     sb, [r6, #0xc]
        mov     r1, r7
        mov     r0, sb
        bl      Fn_022d48
        mov     r8, r0
        ldr     sl, [r6, #0x18]
        mul     r0, r7, r8
        mov     r1, r7
        sub     sb, sb, r0
        sub     r0, sl, #1
        bl      Fn_022d48
        mov     r2, r0
        ldrb    r0, [r6, #8]
        mov     r3, #0x7f
        mov     ip, #0x40
        cmp     r0, #0
        mulne   r0, r7, r2
        mov     r1, #3
        subne   r0, sl, r0
        moveq   r0, #0x400
        str     r0, [r6, #0x28]
        ldr     r0, [r4, #0x18]
        cmp     r5, #0
        strb    r3, [r0, #0x34]
        ldr     r0, [r4, #0x18]
        strb    ip, [r0, #0x35]
        ldr     r0, [r4, #0x18]
        strb    fp, [r0, #0x36]
        ldr     r0, [r4, #0x18]
        strb    r1, [r0, #0x37]
        ldr     r0, [r4, #0x18]
        strb    r5, [r0, #0x3e]
        mov     r0, #0
        bls     L55f214
L55f1f8:
        ldr     r6, [r4, #0x18]
        mov     r1, r0
        add     r7, r0, #0x3f
        add     r0, r0, #1
        cmp     r5, r0
        strb    r1, [r6, r7]
        bhi     L55f1f8
L55f214:
        ldr     r0, [r4, #0x18]
        strb    r3, [r0, #0x38]
        ldr     r0, [r4, #0x18]
        strb    fp, [r0, #0x39]
        ldr     r0, [r4, #0x18]
        strb    fp, [r0, #0x3a]
        ldr     r0, [r4, #0x18]
        strb    ip, [r0, #0x3b]
        ldr     r0, [r4, #0x18]
        strb    fp, [r0, #0x3c]
        ldr     r0, [r4, #0x18]
        strb    fp, [r0, #0x3d]
        add     r0, r4, #0x40
        str     sb, [r4, #0x50]
        stm     r0, {r2, r8}
        ldr     r2, [r4, #0xc2c]
        cmp     r2, #0
        beq     L55f290
        str     fp, [sp]
        ldr     r1, [r4, #0xc30]
        mov     r0, sp
        blx     r2
        cmp     r0, #0
        beq     L55f2a4
        ldr     r0, [sp]
        str     r0, [r4, #0x58]
        ldr     r0, [r4, #0x18]
        ldr     r0, [r0, #0x18]
        str     r0, [r4, #0x64]
        str     fp, [r4, #0x60]
        b       L55f29c
L55f290:
        ldr     r0, [r4, #0x2c]
        str     r0, [r4, #0x64]
        str     fp, [r4, #0x60]
L55f29c:
        mov     r0, #1
        str     fp, [r4, #0x5c]
L55f2a4:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55f2ac:
        .word   0x008bb9b0
        .size   A_55f030, . - A_55f030

@ FUN_0055f2b0
        .global A_55f2b0
        .type   A_55f2b0, %function
A_55f2b0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r0, r0, #0x74
        bl      Fn_01b274
        ldr     r5, [r4, #0x8c]
        add     r0, r4, #0x8c
        cmp     r5, r0
        beq     L55f324
L55f2d0:
        sub     r6, r5, #0x48
        mov     r7, r5
        ldr     r5, [r5]
        add     r0, r6, #0xc
        bl      Fn_01b274
        add     r0, r4, #0x88
        mov     r1, r7
        bl      Fn_5421f4
        cmp     r6, #0
        add     r7, r4, #0x94
        beq     L55f318
        ldr     r0, [r6]
        ldr     r1, [r0]
        mov     r0, r6
        blx     r1
        mov     r1, r6
        mov     r0, r7
        bl      Fn_5667c4
L55f318:
        add     r0, r4, #0x8c
        cmp     r5, r0
        bne     L55f2d0
L55f324:
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        beq     L55f344
        ldr     r1, [r0]
        ldr     r1, [r1, #0x38]
        blx     r1
        mov     r0, #0
        str     r0, [r4, #0x14]
L55f344:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55f2b0, . - A_55f2b0

@ FUN_0055f440
        .global A_55f440
        .type   A_55f440, %function
A_55f440:
        push    {r4, r5, r6, r7, r8, lr}
        add     r8, r0, #0x1c
        vpush   {d8}
        sub     sp, sp, #8
        ldr     r5, [r0, #0x44]
        ldr     r7, [r0, #0x3c]
        vldr    s16, [r0, #0x40]
        ldrb    r0, [r5, #0x55]
        cmp     r0, #0
        bne     L55f51c
        bl      Fn_55c048
        mov     r6, r0
        mov     r1, #0x14
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #0x29
        strb    r1, [r0, #4]
        ldrb    r0, [r5, #0x1c]
        cmp     r0, #0
        beq     L55f4d4
        cmp     r0, #1
        movne   r0, #0
        beq     L55f4f8
L55f4a4:
        strb    r0, [r4, #0x14]
        ldr     r0, [r5, #0x10]
        mov     r1, r4
        str     r0, [r4, #0x10]
        mov     r0, r6
        bl      Fn_55bd58
        add     sp, sp, #8
        mov     r0, r6
        vpop    {d8}
        mov     r1, #1
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd7c
L55f4d4:
        vstr    s16, [sp]
        mov     r3, r7
        mov     r2, r8
        mov     r1, r4
        mov     r0, r5
        bl      Fn_55f6d0
        nop
        nop
        b       L55f4a4
L55f4f8:
        vstr    s16, [sp]
        mov     r3, r7
        mov     r2, r8
        mov     r1, r4
        mov     r0, r5
        bl      Fn_55fe80
        nop
        nop
        b       L55f4a4
L55f51c:
        add     sp, sp, #8
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55f440, . - A_55f440

@ FUN_0055f554
        .global A_55f554
        .type   A_55f554, %function
A_55f554:
        push    {r4, r5, r6, lr}
        ldr     r6, [r0, #0x1c]
        bl      Fn_55c048
        mov     r5, r0
        mov     r1, #0xf
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #0x28
        strb    r1, [r0, #4]
        ldrb    r0, [r6, #0x1c]
        cmp     r0, #0
        beq     L55f5b8
        cmp     r0, #1
        movne   r0, #0
        beq     L55f5d0
L55f598:
        strb    r0, [r4, #0x14]
        mov     r1, r4
        mov     r0, r5
        bl      Fn_55bd58
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        mov     r1, #1
        b       Fn_55bd7c
L55f5b8:
        mov     r1, r4
        mov     r0, r6
        bl      Fn_55ec34
        nop
        nop
        b       L55f598
L55f5d0:
        mov     r1, r4
        mov     r0, r6
        bl      Fn_55f030
        nop
        nop
        b       L55f598
        .size   A_55f554, . - A_55f554

@ FUN_0055f6d0
        .global A_55f6d0
        .type   A_55f6d0, %function
A_55f6d0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x6c
        mov     r5, #0
        mov     r7, r0
        ldr     r0, [sp, #0xa0]
        ldr     r8, L55fe78
        str     r5, [sp, #0x3c]
        cmp     r0, #0
        str     r5, [sp, #0x30]
        str     r5, [sp, #0x38]
        beq     L55f840
        ldrb    r0, [r7, #0xa98]
        cmp     r0, #3
        bne     L55f728
        ldr     r2, [sp, #0xa0]
        bic     r1, r8, r5
        mov     r0, #0
        umlal   r1, r0, r2, r8
        lsr     r0, r0, #2
        rsb     r0, r0, r0, lsl #3
        lsl     r0, r0, #1
        str     r0, [sp, #0xa0]
L55f728:
        ldr     r0, [r7, #0x5c]
        ldr     r4, [sp, #0xa0]
        ldr     r1, [r7, #0x64]
        add     r0, r0, r4
        cmp     r0, r1
        movhs   r6, #1
        blo     L55f7ec
L55f744:
        mov     r0, r1
        ldr     r1, [r7, #0x5c]
        sub     r0, r0, r1
        sub     r4, r4, r0
        ldr     r0, [r7, #0x18]
        ldrb    r1, [r0, #8]
        cmp     r1, #0
        beq     L55f784
        ldr     r1, [r0, #0xc]
        str     r1, [r7, #0x60]
        ldr     r0, [r7, #0x18]
        ldr     r1, [r0, #0x18]
        str     r1, [r7, #0x64]
        ldr     r1, [r7, #0x60]
        str     r1, [r7, #0x5c]
        b       L55f7cc
L55f784:
        ldr     r2, [r7, #0xc2c]
        mov     r0, r7
        cmp     r2, #0
        beq     L55f9b0
        ldr     r0, [r7, #0x58]
        str     r0, [sp, #8]
        ldr     r1, [r7, #0xc30]
        add     r0, sp, #8
        blx     r2
        cmp     r0, #0
        beq     L55f9a0
        ldr     r1, [sp, #8]
        str     r1, [r7, #0x58]
        ldr     r0, [r7, #0x18]
        ldr     r1, [r0, #0x18]
        str     r1, [r7, #0x64]
        str     r5, [r7, #0x60]
        str     r5, [r7, #0x5c]
L55f7cc:
        ldr     r0, [sp, #0x38]
        add     r0, r0, #1
        str     r0, [sp, #0x38]
        ldr     r0, [r7, #0x5c]
        ldr     r1, [r7, #0x64]
        add     r0, r0, r4
        cmp     r0, r1
        bhs     L55f744
L55f7ec:
        ldr     r0, [r7, #0x5c]
        add     r0, r0, r4
        str     r0, [r7, #0x5c]
        ldr     r4, [r7, #0x18]
        ldr     r1, [r4, #0x1c]
        bl      Fn_022d48
        str     r0, [r7, #0x3c]
        ldr     r1, [r4, #0x20]
        ldr     r2, [r7, #0x20]
        ldr     r3, [r7, #0x48]
        mul     r1, r1, r2
        mla     r1, r1, r0, r3
        ldr     r0, [r7, #0x14]
        ldr     r2, [r0]
        ldr     r3, [r2, #0x40]
        mov     r2, #0
        blx     r3
        ldrb    r0, [r7, #0xa98]
        cmp     r0, #3
        moveq   r0, #1
        streq   r0, [sp, #0x30]
L55f840:
        mov     r0, #0
        mov     sl, r0
        str     r0, [sp, #0x2c]
        ldr     r0, [r7, #0x5c]
        mov     r6, #1
        str     r0, [sp, #0x40]
L55f858:
        ldrd    r0, r1, [r7, #0x3c]
        cmp     r0, r1
        ldr     r0, [r7, #0x18]
        addne   r5, r0, #0x1c
        mov     r1, r0
        ldmne   r5, {r5, sb}
        ldreq   r5, [r0, #0x28]
        ldreq   sb, [r0, #0x24]
        ldr     r0, [r7, #0x5c]
        ldr     r1, [r1, #0x1c]
        bl      Fn_022d48
        str     r1, [sp, #4]
        ldrb    r0, [r7, #0xa98]
        cmp     r0, #3
        movne   r8, r1
        beq     L55f9c8
L55f898:
        cmp     r6, #0
        beq     L55f94c
        ldr     r0, [sp, #0x30]
        cmp     r0, #0
        ldr     r0, [sp, #4]
        sub     r0, r0, r8
        str     r0, [sp, #0x3c]
        beq     L55f94c
        ldr     r0, [r7, #0x14]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x54]
        blx     r1
        mov     r4, r0
        ldr     r0, [r7, #0x20]
        add     r2, sp, #0x58
        add     r1, sp, #0x48
        str     r0, [sp]
        ldr     r3, [r7, #0x3c]
        mov     r0, r7
        bl      Fn_55c404
        cmp     r0, #0
        nop
        beq     L55fa24
        ldr     r0, [r7, #0x14]
        mov     r2, #0
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, r4
        blx     r3
        ldr     r0, [r7, #0x20]
        cmp     r0, #0
        beq     L55f94c
        add     r1, sp, #0x48
        add     r2, sp, #0x58
        mov     r3, #0
L55f924:
        ldrh    r4, [r1], #2
        add     ip, r3, r3, lsl #1
        subs    r0, r0, #1
        add     ip, r7, ip, lsl #1
        add     ip, ip, #0xb00
        add     r3, r3, #1
        strh    r4, [ip, #0xfc]
        ldrh    r4, [r2], #2
        strh    r4, [ip, #0xfe]
        bne     L55f924
L55f94c:
        ldrb    r1, [r7, #0xa98]
        mov     r0, r8
        bl      Fn_55ccf8
        mov     fp, r0
        ldr     r0, [r7, #0x20]
        sub     r1, sb, fp
        str     r1, [sp]
        ldr     r1, [sp, #4]
        cmp     r0, #0
        mov     r4, #0
        sub     r1, r5, r1
        str     r1, [sp, #0x20]
        bls     L55fac8
        ldr     r0, [sp, #0x30]
        and     r0, r0, r6
        str     r0, [sp, #0x44]
L55f98c:
        ldr     r0, [r7, #0x10]
        ldrb    r0, [r0, #0x52]
        cmp     r0, #0
        bne     L55fa20
        b       L55f9e8
L55f9a0:
        ldr     r1, [r7, #0x64]
        mov     r0, r7
        str     r1, [r7, #0x5c]
        b       L55f9b8
L55f9b0:
        ldr     r1, [r7, #0x64]
        str     r1, [r7, #0x5c]
L55f9b8:
        strb    r6, [r0, #0x55]
        ldr     r0, [sp, #0x70]
        str     r5, [r0, #0x20]
        b       L55fe6c
L55f9c8:
        ldr     r2, L55fe78
        ldr     r3, [sp, #4]
        mov     r0, #0
        umlal   r2, r0, r3, r2
        lsr     r0, r0, #2
        rsb     r0, r0, r0, lsl #3
        lsl     r8, r0, #1
        b       L55f898
L55f9e8:
        ldr     r0, [r7, #0x20]
        add     r1, r4, #2
        mov     r8, #2
        cmp     r0, r1
        sublo   r8, r0, r4
        ldr     r0, [r7, #0x14]
        mul     r5, sb, r8
        ldr     r1, [r0]
        mov     r2, r5
        ldr     r3, [r1, #0x24]
        ldr     r1, L55fe7c
        blx     r3
        cmp     r0, r5
        beq     L55fa2c
L55fa20:
        mov     r0, #0
L55fa24:
        add     sp, sp, #0x7c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55fa2c:
        cmp     r8, #0
        mov     r5, #0
        bls     L55fabc
L55fa38:
        ldr     r0, [sp, #0x74]
        ldr     r1, L55fe7c
        mla     r6, sb, r5, r1
        ldr     r0, [r0, r4, lsl #2]
        add     r1, r6, fp
        add     r0, r0, sl
        str     r0, [sp, #0x14]
        ldr     r2, [sp]
        bl      Fn_202b20
        ldr     r0, [sp, #0x14]
        ldr     r1, [sp]
        bl      Fn_500960
        ldr     r0, [sp, #0x44]
        cmp     r0, #0
        beq     L55faac
        add     r0, r4, r4, lsl #1
        ldrb    r1, [r6]
        add     r0, r7, r0, lsl #1
        add     r0, r0, #0xb00
        add     r0, r0, #0xfa
        mov     r3, r6
        strh    r1, [r0]
        add     r1, r4, r4, lsl #1
        add     r1, r1, r4, lsl #3
        ldr     r2, [sp, #4]
        add     r1, r7, r1, lsl #2
        add     r1, r1, #0xa00
        add     r1, r1, #0x9a
        bl      Fn_55d800
L55faac:
        add     r5, r5, #1
        cmp     r5, r8
        add     r4, r4, #1
        blo     L55fa38
L55fabc:
        ldr     r0, [r7, #0x20]
        cmp     r4, r0
        blo     L55f98c
L55fac8:
        ldr     r3, [sp, #0x20]
        ldr     r2, [sp, #0x2c]
        ldr     r0, [r7, #0x5c]
        ldr     r1, [r7, #0x3c]
        add     r2, r2, r3
        add     r0, r0, r3
        str     r2, [sp, #0x2c]
        ldr     r2, [r7, #0x64]
        ldr     r3, [sp]
        add     r1, r1, #1
        str     r0, [r7, #0x5c]
        cmp     r0, r2
        add     sl, sl, r3
        str     r1, [r7, #0x3c]
        bne     L55fbd8
        ldr     r0, [r7, #0x18]
        ldrb    r1, [r0, #8]
        cmp     r1, #0
        beq     L55fb34
        ldr     r1, [r0, #0xc]
        str     r1, [r7, #0x60]
        ldr     r0, [r7, #0x18]
        ldr     r1, [r0, #0x18]
        str     r1, [r7, #0x64]
        ldr     r1, [r7, #0x60]
        str     r1, [r7, #0x5c]
        b       L55fb78
L55fb34:
        ldr     r2, [r7, #0xc2c]
        cmp     r2, #0
        beq     L55fbc4
        ldr     r0, [r7, #0x58]
        str     r0, [sp, #4]
        ldr     r1, [r7, #0xc30]
        add     r0, sp, #4
        blx     r2
        cmp     r0, #0
        beq     L55fbc4
        ldr     r2, [sp, #4]
        mov     r0, #0
        str     r2, [r7, #0x58]
        ldr     r1, [r7, #0x18]
        ldr     r1, [r1, #0x18]
        strd    r0, r1, [r7, #0x60]
        str     r0, [r7, #0x5c]
L55fb78:
        ldr     r0, [sp, #0x38]
        add     r0, r0, #1
        str     r0, [sp, #0x38]
        ldr     r4, [r7, #0x18]
        ldr     r0, [r7, #0x5c]
        ldr     r1, [r4, #0x1c]
        bl      Fn_022d48
        str     r0, [r7, #0x3c]
        ldr     r2, [r4, #0x20]
        ldr     r3, [r7, #0x20]
        ldr     r1, [r7, #0x48]
        mul     r2, r2, r3
        mla     r1, r2, r0, r1
        ldr     r0, [r7, #0x14]
        ldr     r2, [r0]
        ldr     r3, [r2, #0x40]
        mov     r2, #0
        blx     r3
        b       L55fbe8
L55fbc4:
        ldr     r1, [r7, #0x64]
        mov     r0, #1
        str     r1, [r7, #0x5c]
        strb    r0, [r7, #0x55]
        b       L55fbe8
L55fbd8:
        ldr     r0, [sp, #0x2c]
        mov     r6, #0
        cmp     r0, #0
        beq     L55f858
L55fbe8:
        ldrb    r0, [r7, #0xa98]
        cmp     r0, #3
        beq     L55fc10
        ldr     r0, [r7, #0x20]
        cmp     r0, #0
        beq     L55fe24
        and     r0, r0, #1
        cmp     r0, #1
        beq     L55fde8
        b       L55fdf4
L55fc10:
        ldr     r0, [sp, #0x40]
        cmp     r0, #0
        beq     L55fc58
        ldr     r0, [r7, #0x18]
        ldrb    r1, [r0, #8]
        cmp     r1, #0
        beq     L55fd20
        ldr     r1, [r0, #0xc]
        ldr     r0, [sp, #0x40]
        cmp     r1, r0
        bne     L55fd20
        ldr     r0, [r7, #0x20]
        cmp     r0, #0
        beq     L55fe24
        and     r0, r0, #1
        cmp     r0, #1
        bne     L55fcd8
        b       L55fccc
L55fc58:
        ldr     r0, [r7, #0x20]
        cmp     r0, #0
        beq     L55fe24
        and     r0, r0, #1
        cmp     r0, #1
        bne     L55fc80
        ldr     r1, [sp, #0x70]
        add     r2, r7, #0xa00
        add     r2, r2, #0xba
        str     r2, [r1, #0x24]
L55fc80:
        ldr     r1, [r7, #0x20]
        cmp     r1, r0
        bls     L55fe24
L55fc8c:
        add     r2, r0, r0, lsl #1
        add     r2, r2, r0, lsl #3
        ldr     r1, [sp, #0x70]
        add     r2, r7, r2, lsl #2
        add     r3, r2, #0xa00
        add     r1, r1, r0, lsl #2
        add     r3, r3, #0xba
        add     r2, r2, #0xa00
        str     r3, [r1, #0x24]!
        add     r2, r2, #0xe6
        str     r2, [r1, #4]
        ldr     r1, [r7, #0x20]
        add     r0, r0, #2
        cmp     r1, r0
        bhi     L55fc8c
        b       L55fe24
L55fccc:
        ldr     r1, [sp, #0x70]
        add     r2, r7, #0xac0
        str     r2, [r1, #0x24]
L55fcd8:
        ldr     r1, [r7, #0x20]
        cmp     r1, r0
        bls     L55fe24
L55fce4:
        ldr     r1, [sp, #0x70]
        add     r3, r0, r0, lsl #1
        add     r2, r1, r0, lsl #2
        add     r1, r3, r0, lsl #3
        add     r0, r0, #2
        add     r1, r7, r1, lsl #2
        add     r3, r1, #0xac0
        add     r1, r1, #0x800
        str     r3, [r2, #0x24]!
        add     r1, r1, #0x2ec
        str     r1, [r2, #4]
        ldr     r1, [r7, #0x20]
        cmp     r1, r0
        bhi     L55fce4
        b       L55fe24
L55fd20:
        ldr     r0, [sp, #0xa0]
        cmp     r0, #0
        ldr     r0, [r7, #0x20]
        beq     L55fd94
        cmp     r0, #0
        beq     L55fe24
        and     r0, r0, #1
        cmp     r0, #1
        bne     L55fd54
        ldr     r1, [sp, #0x70]
        add     r2, r7, #0xb00
        add     r2, r2, #0xfa
        str     r2, [r1, #0x24]
L55fd54:
        ldr     r1, [r7, #0x20]
        cmp     r1, r0
        bls     L55fe24
L55fd60:
        add     r1, r0, r0, lsl #1
        add     r2, r7, r1, lsl #1
        ldr     r1, [sp, #0x70]
        add     r3, r2, #0xc00
        add     r2, r2, #0xb00
        add     r1, r1, r0, lsl #2
        add     r2, r2, #0xfa
        strd    r2, r3, [r1, #0x24]
        ldr     r1, [r7, #0x20]
        add     r0, r0, #2
        cmp     r1, r0
        bhi     L55fd60
        b       L55fe24
L55fd94:
        cmp     r0, #0
        beq     L55fe24
        and     r0, r0, #1
        cmp     r0, #1
        bne     L55fdb4
        ldr     r2, [sp, #0x70]
        mov     r1, #0
        str     r1, [r2, #0x24]
L55fdb4:
        ldr     r1, [r7, #0x20]
        cmp     r1, r0
        movhi   r1, #0
        bls     L55fe24
L55fdc4:
        ldr     r2, [sp, #0x70]
        add     r2, r2, r0, lsl #2
        add     r0, r0, #2
        str     r1, [r2, #0x24]
        str     r1, [r2, #0x28]
        ldr     r2, [r7, #0x20]
        cmp     r2, r0
        bhi     L55fdc4
        b       L55fe24
L55fde8:
        ldr     r2, [sp, #0x70]
        mov     r1, #0
        str     r1, [r2, #0x24]
L55fdf4:
        ldr     r1, [r7, #0x20]
        cmp     r1, r0
        movhi   r1, #0
        bls     L55fe24
L55fe04:
        ldr     r2, [sp, #0x70]
        add     r2, r2, r0, lsl #2
        add     r0, r0, #2
        str     r1, [r2, #0x24]
        str     r1, [r2, #0x28]
        ldr     r2, [r7, #0x20]
        cmp     r2, r0
        bhi     L55fe04
L55fe24:
        ldr     r0, [sp, #0x70]
        ldr     r1, [sp, #0x78]
        str     r1, [r0, #0x18]
        ldr     r1, [sp, #0x70]
        ldr     r0, [sp, #0x2c]
        str     r0, [r1, #0x20]
        ldr     r1, [sp, #0x70]
        ldr     r0, [sp, #0x40]
        str     r0, [r1, #0x1c]
        ldr     r1, [sp, #0x70]
        ldr     r0, [sp, #0x3c]
        str     r0, [r1, #0x44]
        ldr     r1, [sp, #0x70]
        ldr     r0, [sp, #0x38]
        str     r0, [r1, #0x48]
        ldr     r0, [sp, #0x70]
        ldrb    r1, [r7, #0x55]
        strb    r1, [r0, #0x4c]
L55fe6c:
        add     sp, sp, #0x7c
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55fe78:
        .word   0x49249249
L55fe7c:
        .word   0x00a76d60
        .size   A_55f6d0, . - A_55f6d0

@ FUN_0055fe80
        .global A_55fe80
        .type   A_55fe80, %function
A_55fe80:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        mov     r5, r2
        mov     r7, r1
        mov     sl, #0
        mov     r8, sl
        ldr     fp, L5602e4
        vpush   {d8}
        sub     sp, sp, #0x24
        ldr     r6, [sp, #0x60]
        ldrd    r0, r1, [r4, #0x3c]
        cmp     r0, r1
        ldr     r0, [r4, #0x18]
        ldreq   sb, [r0, #0x28]
        ldrne   sb, [r0, #0x1c]
        bls     L55ff8c
        ldrb    r0, [r0, #8]
        cmp     r0, #0
        beq     L55ff8c
        ldr     r0, [r4, #0x44]
        str     r0, [r4, #0x3c]
        ldr     r0, [r4, #0x14]
        ldr     r1, [r4, #0x4c]
        ldr     r2, [r0]
        ldr     r3, [r2, #0x40]
        mov     r2, #0
        blx     r3
        ldr     r0, [r4, #0x44]
        cmp     r0, #0
        beq     L55ff78
        ldr     r3, [r4, #0x20]
        cmp     r3, #0
        beq     L55ff54
        and     r0, r3, #1
        cmp     r0, #1
        mov     r1, #0
        mov     r2, sp
        bne     L55ff24
        ldr     ip, [r5]
        mov     r1, #1
        str     ip, [sp]
L55ff24:
        cmp     r3, r0
        bls     L55ff54
L55ff2c:
        ldr     r3, [r5, r1, lsl #2]
        add     r0, r0, #2
        str     r3, [r2, r1, lsl #2]
        add     r1, r1, #1
        ldr     r3, [r5, r1, lsl #2]
        str     r3, [r2, r1, lsl #2]
        ldr     r3, [r4, #0x20]
        add     r1, r1, #1
        cmp     r3, r0
        bhi     L55ff2c
L55ff54:
        ldr     r0, [fp, #4]
        ldr     r1, [r4, #0x14]
        ldr     r2, [r4, #0x20]
        ldr     r3, [r0]
        ldr     ip, [r3, #0x10]
        mov     r3, sp
        blx     ip
        cmp     r0, #0
        beq     L5602d4
L55ff78:
        ldr     r1, [r4, #0x18]
        mov     r0, #1
        ldr     r1, [r1, #0xc]
        str     r1, [r4, #0x5c]
        strb    r0, [r4, #0x54]
L55ff8c:
        cmp     r6, #0
        beq     L560108
        ldr     r0, [r4, #0x5c]
        ldr     r1, [r4, #0x64]
        add     r0, r0, r6
        cmp     r0, r1
        movhs   sl, #0
        blo     L560048
L55ffac:
        mov     r0, r1
        ldr     r1, [r4, #0x5c]
        sub     r0, r0, r1
        sub     r6, r6, r0
        ldr     r0, [r4, #0x18]
        ldrb    r1, [r0, #8]
        cmp     r1, #0
        beq     L55ffec
        ldr     r1, [r0, #0xc]
        str     r1, [r4, #0x60]
        ldr     r0, [r4, #0x18]
        ldr     r1, [r0, #0x18]
        str     r1, [r4, #0x64]
        ldr     r1, [r4, #0x60]
        str     r1, [r4, #0x5c]
        b       L560030
L55ffec:
        ldr     r2, [r4, #0xc2c]
        cmp     r2, #0
        beq     L5600f0
        ldr     r0, [r4, #0x58]
        str     r0, [sp]
        ldr     r1, [r4, #0xc30]
        mov     r0, sp
        blx     r2
        cmp     r0, #0
        beq     L5600f0
        ldr     r1, [sp]
        str     r1, [r4, #0x58]
        ldr     r0, [r4, #0x18]
        ldr     r0, [r0, #0x18]
        str     r0, [r4, #0x64]
        str     sl, [r4, #0x60]
        str     sl, [r4, #0x5c]
L560030:
        ldr     r0, [r4, #0x5c]
        ldr     r1, [r4, #0x64]
        add     r8, r8, #1
        add     r0, r0, r6
        cmp     r0, r1
        bhs     L55ffac
L560048:
        ldr     r0, [r4, #0x5c]
        add     r6, r6, r0
        str     r6, [r4, #0x5c]
        ldr     sl, [r4, #0x18]
        mov     r0, r6
        ldr     r1, [sl, #0x1c]
        bl      Fn_022d48
        str     r0, [r4, #0x3c]
        ldr     r1, [sl, #0x1c]
        mov     r2, #0
        mul     r0, r0, r1
        sub     sl, r6, r0
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, r2
        blx     r3
        ldr     r0, [r4, #0x3c]
        mov     r6, #0
        cmp     r0, #0
        bls     L560114
L56009c:
        ldr     r0, [r4, #0x44]
        cmp     r0, #0
        beq     L5600c8
        sub     r0, r0, #1
        cmp     r0, r6
        bne     L5600c8
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x54]
        blx     r1
        str     r0, [r4, #0x4c]
L5600c8:
        ldr     r0, [fp, #4]
        ldr     r1, [r4, #0x14]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        ldr     r0, [r4, #0x3c]
        add     r6, r6, #1
        cmp     r0, r6
        bhi     L56009c
        b       L560114
L5600f0:
        ldr     r1, [r4, #0x64]
        mov     r0, #1
        str     r1, [r4, #0x5c]
        strb    r0, [r4, #0x55]
        str     sl, [r7, #0x20]
        b       L5602d0
L560108:
        ldrb    r0, [r4, #0x54]
        cmp     r0, #0
        ldrne   sl, [r4, #0x50]
L560114:
        ldr     r0, [r4, #0x44]
        cmp     r0, #0
        beq     L560144
        ldr     r1, [r4, #0x3c]
        sub     r0, r0, #1
        cmp     r1, r0
        bne     L560144
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x54]
        blx     r1
        str     r0, [r4, #0x4c]
L560144:
        ldr     r0, [r4, #0x14]
        vldr    s16, [r4, #0x5c]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x54]
        blx     r1
        mov     r6, r0
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x3c]
        blx     r1
        cmp     r6, r0
        movhs   sb, #0
        bhs     L560230
        cmp     sb, #0
        beq     L560230
        ldr     r3, [r4, #0x20]
        cmp     r3, #0
        beq     L5601dc
        and     r0, r3, #1
        cmp     r0, #1
        mov     r1, #0
        mov     r2, sp
        bne     L5601ac
        ldr     ip, [r5]
        mov     r1, #1
        str     ip, [sp]
L5601ac:
        cmp     r3, r0
        bls     L5601dc
L5601b4:
        ldr     r3, [r5, r1, lsl #2]
        add     r0, r0, #2
        str     r3, [r2, r1, lsl #2]
        add     r1, r1, #1
        ldr     r3, [r5, r1, lsl #2]
        str     r3, [r2, r1, lsl #2]
        ldr     r3, [r4, #0x20]
        add     r1, r1, #1
        cmp     r3, r0
        bhi     L5601b4
L5601dc:
        ldr     r0, [fp, #4]
        ldr     r1, [r4, #0x14]
        ldr     r2, [r4, #0x20]
        ldr     r3, [r0]
        ldr     ip, [r3, #0x10]
        mov     r3, sp
        blx     ip
        cmp     r0, #0
        beq     L5602d4
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x54]
        blx     r1
        mov     r5, r0
        ldr     r0, [r4, #0x14]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x3c]
        blx     r1
        cmp     r0, r5
        ldrls   r0, [r4, #0x3c]
        strls   r0, [r4, #0x40]
L560230:
        add     r0, r4, #0x3c
        ldr     r3, [r4, #0x5c]
        ldm     r0, {r0, r2}
        mov     r1, #0
        strb    r1, [r4, #0x54]
        add     r0, r0, #1
        add     r3, r3, sb
        str     r0, [r4, #0x3c]
        cmp     r0, r2
        str     r3, [r4, #0x5c]
        bls     L560270
        ldr     r0, [r4, #0x18]
        ldrb    r0, [r0, #8]
        cmp     r0, #0
        moveq   r0, #1
        strbeq  r0, [r4, #0x55]
L560270:
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        beq     L5602b0
        and     r0, r0, #1
        cmp     r0, #1
        streq   r1, [r7, #0x24]
        ldr     r2, [r4, #0x20]
        cmp     r2, r0
        bls     L5602b0
L560294:
        add     r2, r7, r0, lsl #2
        add     r0, r0, #2
        str     r1, [r2, #0x24]
        str     r1, [r2, #0x28]
        ldr     r2, [r4, #0x20]
        cmp     r2, r0
        bhi     L560294
L5602b0:
        ldr     r0, [sp, #0x38]
        str     r0, [r7, #0x18]
        str     sb, [r7, #0x20]
        vstr    s16, [r7, #0x1c]
        str     r8, [r7, #0x48]
        str     sl, [r7, #0x44]
        ldrb    r0, [r4, #0x55]
        strb    r0, [r7, #0x4c]
L5602d0:
        mov     r0, #1
L5602d4:
        add     sp, sp, #0x24
        vpop    {d8}
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5602e4:
        .word   0x008bb9b0
        .size   A_55fe80, . - A_55fe80

@ FUN_00560360
        .global A_560360
        .type   A_560360, %function
A_560360:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_55f2b0
        mov     r2, #0xa00
        add     r0, r4, #0x94
        add     r1, r4, #0x98
        bl      Fn_566790
        ldr     r1, L5603a0
        mov     r3, #0x20
        mov     r2, #0x50
        add     r0, r4, #0x98
        blx     Fn_000068_t
        add     r0, r4, #0x68
        bl      Fn_55c998
        sub     r0, r0, #0x68
        pop     {r4, pc}
L5603a0:
        .word   0x0065c994
        .size   A_560360, . - A_560360

@ FUN_00560468
        .global A_560468
        .type   A_560468, %function
A_560468:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r6, r1
        ldrb    r0, [r0, #5]
        cmp     r0, #0
        beq     L560588
        ldrsh   r2, [r4, #0x8e]
        ldrsh   r1, [r4, #0x90]
        add     r0, r4, #0x8c
        cmp     r2, r1
        addgt   r1, r1, #1
        strhgt  r1, [r0, #4]
        ldrsh   r2, [r4, #0x94]
        ldrsh   r1, [r4, #0x96]
        add     r0, r4, #0x92
        cmp     r1, r2
        addlt   r1, r1, #1
        strhlt  r1, [r0, #4]
        ldrsh   r2, [r4, #0x9a]
        ldrsh   r1, [r4, #0x9c]
        add     r0, r4, #0x98
        cmp     r1, r2
        addlt   r1, r1, #1
        strhlt  r1, [r0, #4]
        ldrsh   r2, [r4, #0xa0]
        ldrsh   r1, [r4, #0xa2]
        add     r0, r4, #0x9e
        cmp     r1, r2
        addlt   r1, r1, #1
        strhlt  r1, [r0, #4]
        ldrsh   r2, [r4, #0xa6]
        ldrsh   r1, [r4, #0xa8]
        add     r0, r4, #0xa4
        cmp     r1, r2
        addlt   r1, r1, #1
        strhlt  r1, [r0, #4]
        ldrb    r0, [r4, #0x80]
        cmp     r0, #0
        beq     L560514
        ldr     r0, [r4, #0x130]
        cmp     r0, #0
        strbeq  r0, [r4, #0x80]
        bne     L560584
L560514:
        ldr     r0, [r4, #0x7c]
        cmp     r0, #0
        ble     L560530
        sub     r0, r0, #1
        cmp     r0, #0
        str     r0, [r4, #0x7c]
        bgt     L560584
L560530:
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        ldrne   r7, L560594
        movne   r5, #0
        beq     L560584
        b       L560570
L560548:
        add     r5, r5, #1
        cmp     r5, r7
        bgt     L560584
        ldr     r0, [r4]
        mov     r1, r6
        ldr     r2, [r0, #8]
        mov     r0, r4
        blx     r2
        cmp     r0, #1
        beq     L56058c
L560570:
        ldr     r0, [r4, #0x7c]
        cmp     r0, #0
        ldrbeq  r0, [r4, #0x80]
        cmpeq   r0, #0
        beq     L560548
L560584:
        mov     r0, #1
L560588:
        pop     {r4, r5, r6, r7, r8, pc}
L56058c:
        mvn     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L560594:
        .word   0x00002710
        .size   A_560468, . - A_560468

@ FUN_005605e8
        .global A_5605e8
        .type   A_5605e8, %function
A_5605e8:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        ldr     r4, [r0, #0x130]
        cmp     r4, #0
        beq     L560638
L5605fc:
        ldrb    r0, [r4, #0x131]
        cmp     r0, #0
        beq     L56062c
        ldrb    r0, [r4, #0x130]
        cmp     r0, #0
        movne   r0, #1
        cmp     r0, r5
        beq     L56062c
        strb    r5, [r4, #0x130]
        ldr     r0, [r4, #0x1a0]
        mov     r1, r5
        bl      Fn_55df20
L56062c:
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L5605fc
L560638:
        pop     {r4, r5, r6, pc}
        .size   A_5605e8, . - A_5605e8

@ FUN_005606b4
        .global A_5606b4
        .type   A_5606b4, %function
A_5606b4:
        push    {r4, r5, r6, r7, lr}
        mov     r5, r0
        vpush   {d8, d9, d10, d11, d12}
        sub     sp, sp, #0xc
        ldrb    r0, [r0, #5]
        cmp     r0, #0
        ldrne   r0, [r5, #0x130]
        cmpne   r0, #0
        beq     L560a20
        ldrsh   r0, [r5, #0x90]
        ldrsh   r1, [r5, #0x8e]
        cmp     r1, r0
        ldrble  r6, [r5, #0x8d]
        ble     L560708
        ldrb    r2, [r5, #0x8d]
        ldrb    r4, [r5, #0x8c]
        sub     r2, r2, r4
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, r4
        and     r6, r0, #0xff
L560708:
        ldrsh   r0, [r5, #0x96]
        ldrsh   r1, [r5, #0x94]
        cmp     r0, r1
        ldrbge  r0, [r5, #0x93]
        bge     L560738
        ldrb    r2, [r5, #0x93]
        ldrb    r4, [r5, #0x92]
        sub     r2, r2, r4
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, r4
        and     r0, r0, #0xff
L560738:
        ldr     r4, [r5, #0x12c]
        mul     r7, r6, r0
        ldrsh   r0, [r4, #0x7c]
        ldrsh   r1, [r4, #0x7a]
        cmp     r0, r1
        ldrbge  r0, [r4, #0x79]
        bge     L560770
        ldrb    r3, [r4, #0x79]
        ldrb    r6, [r4, #0x78]
        sub     r2, r3, r6
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, r6
        and     r0, r0, #0xff
L560770:
        vldr    s1, L560a2c
        mul     r0, r7, r0
        vldr    s2, [r5, #8]
        vldr    s3, [r4, #0x14]
        vmov    s0, r0
        ldrsh   r0, [r5, #0xa8]
        vmul.f32 s2, s2, s3
        ldrsh   r1, [r5, #0xa6]
        vcvt.f32.u32 s0, s0
        cmp     r0, r1
        ldrsbge r0, [r5, #0xa5]
        vmul.f32 s0, s0, s1
        vmul.f32 s0, s0, s0
        vmul.f32 s17, s2, s0
        bge     L5607c8
        ldrsb   r2, [r5, #0xa5]
        ldrsb   r6, [r5, #0xa4]
        sub     r2, r2, r6
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, r6
        sxtb    r0, r0
L5607c8:
        vmov    s0, r0
        vldr    s3, L560a30
        ldrb    r0, [r5, #0xf1]
        vldr    s1, [r4, #0x18]
        vldr    s2, [r5, #0xc]
        ldrsh   r1, [r5, #0x9a]
        vcvt.f32.s32 s0, s0
        vmul.f32 s19, s1, s2
        mov     r6, r4
        vmul.f32 s3, s0, s3
        vmov    s0, r0
        ldrsh   r0, [r5, #0x9c]
        cmp     r0, r1
        ldrsbge r0, [r5, #0x99]
        vcvt.f32.u32 s0, s0
        vmul.f32 s18, s3, s0
        bge     L560828
        ldrsb   r2, [r5, #0x99]
        ldrsb   r7, [r5, #0x98]
        sub     r2, r2, r7
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, r7
        sxtb    r0, r0
L560828:
        vmov    s0, r0
        vldr    s20, L560a34
        vldr    s25, L560a38
        vcvt.f32.s32 s1, s0
        vldr    s0, L560a3c
        vmul.f32 s22, s1, s20
        vcmpe.f32 s22, s25
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s22, s25
        bgt     L56085c
        vcmpe.f32 s22, s0
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s22, s0
L56085c:
        vldr    s0, [r5, #0x18]
        vldr    s3, [r6, #0x60]
        vldr    s1, [r5, #0x10]
        vldr    s2, [r4, #0x1c]
        vmul.f32 s0, s0, s3
        ldrsh   r0, [r5, #0xa2]
        vadd.f32 s16, s1, s2
        ldrsh   r1, [r5, #0xa0]
        cmp     r0, r1
        ldrsbge r0, [r5, #0x9f]
        vmla.f32 s16, s22, s0
        bge     L5608a8
        ldrsb   r2, [r5, #0x9f]
        ldrsb   r6, [r5, #0x9e]
        sub     r2, r2, r6
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, r6
        sxtb    r0, r0
L5608a8:
        vmov    s0, r0
        vldr    s1, L560a40
        vldr    s2, L560a44
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s20
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s1
        bgt     L5608d8
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s2
L5608d8:
        vldr    s4, [r4, #0x20]
        vldr    s1, [r5, #0x14]
        ldrsb   r0, [r4, #0x2c]
        ldrsb   r7, [r5, #0xfe]
        vadd.f32 s1, s1, s4
        cmn     r0, #1
        movne   r7, r0
        ldrb    r0, [r5, #0xff]
        vldr    s24, L560a48
        vldr    s2, [r5, #0x104]
        vldr    s3, [r4, #0x24]
        vldr    s23, [r5, #0x108]
        vldrne  s23, [r4, #0x28]
        vadd.f32 s21, s2, s3
        vadd.f32 s20, s0, s1
        vmov    s0, r0
        vldr    s1, [r4, #0x30]
        mov     r4, #0
        mov     r6, sp
        vcvt.f32.u32 s0, s0
        vnmls.f32 s25, s0, s24
        vadd.f32 s22, s25, s1
L560930:
        ldr     r0, [r5, #0x12c]
        and     r1, r4, #0xff
        bl      Fn_639e20
        add     r0, r5, r4
        add     r1, r6, r4, lsl #2
        ldrb    r0, [r0, #0x100]
        add     r4, r4, #1
        cmp     r4, #2
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmla.f32 s0, s1, s24
        vstr    s0, [r1]
        blt     L560930
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L560a20
L560970:
        vstr    s17, [r4, #0x138]
        vstr    s18, [r4, #0x15c]
        vstr    s19, [r4, #0x13c]
        vstr    s16, [r4, #0x140]
        vmov.f32 s0, s23
        add     r2, r4, #0x144
        mov     r1, r7
        mov     r0, r4
        vstmia  r2, {s20, s21}
        bl      Fn_565a40
        vstr    s22, [r4, #0x150]
        vldr    s0, [sp]
        add     r0, r5, #0xac
        vstr    s0, [r4, #0x154]
        vldr    s0, [sp, #4]
        add     r2, r4, #0xac
        vstr    s0, [r4, #0x158]
        add     r3, r4, #0xcc
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r5, #0xbc
        add     ip, r4, #0xec
        vstmia  r2, {s0, s1, s2, s3}
        ldrb    r2, [r5, #0xec]
        strb    r2, [r4, #0x12c]
        add     r2, r4, #0x10c
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r5, #0xcc
        vstmia  r3, {s0, s1, s2, s3}
        ldrb    r3, [r5, #0xed]
        strb    r3, [r4, #0x12d]
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r5, #0xdc
        vstmia  ip, {s0, s1, s2, s3}
        ldrb    r1, [r5, #0xee]
        strb    r1, [r4, #0x12e]
        ldm     r0, {r1, r3, ip}
        ldr     r0, [r5, #0xe8]
        str     r0, [r4, #0x118]
        stm     r2, {r1, r3, ip}
        ldrb    r0, [r5, #0xef]
        strb    r0, [r4, #0x12f]
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L560970
L560a20:
        add     sp, sp, #0xc
        vpop    {d8, d9, d10, d11, d12}
        pop     {r4, r5, r6, r7, pc}
L560a2c:
        .word   0x35030c28
L560a30:
        .word   0x3c000000
L560a34:
        .word   0x3c820821
L560a38:
        .word   0x3f800000
L560a3c:
        .word   0xbf800000
L560a40:
        .word   0x40000000
L560a44:
        .word   0x00000000
L560a48:
        .word   0x3c010204
        .size   A_5606b4, . - A_5606b4

@ FUN_00560ac8
        .global A_560ac8
        .type   A_560ac8, %function
A_560ac8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #5]
        cmp     r0, #0
        ldrne   r4, [r5, #0x130]
        cmpne   r4, #0
        beq     L560b40
L560ae4:
        ldr     r0, [r4, #0x18c]
        cmp     r0, #0
        subgt   r0, r0, #1
        strgt   r0, [r4, #0x18c]
        ldr     r1, [r4, #0x18c]
        mov     r0, r4
        cmp     r1, #0
        bne     L560b1c
        ldrb    r1, [r0, #0x90]
        cmp     r1, #4
        beq     L560b1c
        ldrb    r1, [r5, #0x82]
        cmp     r1, #0
        bleq    Fn_566158
L560b1c:
        ldrb    r0, [r4, #0x133]
        cmp     r0, #0
        bne     L560b34
        mov     r1, #1
        mov     r0, r4
        bl      Fn_565980
L560b34:
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L560ae4
L560b40:
        pop     {r4, r5, r6, pc}
        .size   A_560ac8, . - A_560ac8

@ FUN_00560fb8
        .global A_560fb8
        .type   A_560fb8, %function
A_560fb8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        vldr    s0, L561128
        mov     r0, #1
        vpush   {d8}
        mov     r6, #0
        vstr    s0, [r4, #8]
        vstr    s0, [r4, #0xc]
        vstr    s0, [r4, #0x18]
        vldr    s16, L56112c
        strb    r0, [r4, #0x24]
        strb    r0, [r4, #0x25]
        vstr    s16, [r4, #0x10]
        vstr    s16, [r4, #0x14]
        str     r6, [r4, #0x1c]
        str     r6, [r4, #0x20]
        strb    r6, [r4, #0x26]
        strb    r6, [r4, #0x27]
        strb    r6, [r4, #0x78]
        str     r6, [r4, #0x7c]
        strb    r6, [r4, #0x7a]
        strb    r6, [r4, #0x7b]
        strb    r6, [r4, #0x80]
        strb    r6, [r4, #0x81]
        strb    r6, [r4, #0x82]
        strb    r6, [r4, #0x83]
        mov     r5, #0
        str     r6, [r4, #0x84]
L561028:
        add     r0, r4, r5, lsl #4
        add     r0, r0, #0xac
        bl      Fn_557e3c
        add     r0, r4, r5
        add     r5, r5, #1
        cmp     r5, #4
        strb    r6, [r0, #0xec]
        blt     L561028
        mov     r1, #0x7f
        vstr    s16, [r4, #0x88]
        strb    r1, [r4, #0x8c]
        strb    r1, [r4, #0x8d]
        strh    r6, [r4, #0x8e]
        mov     r0, r1
        strh    r6, [r4, #0x90]
        strb    r0, [r4, #0x92]
        strb    r0, [r4, #0x93]
        strh    r6, [r4, #0x94]
        strh    r6, [r4, #0x96]
        strb    r6, [r4, #0x98]
        strb    r6, [r4, #0x99]
        strh    r6, [r4, #0x9a]
        strh    r6, [r4, #0x9c]
        strb    r6, [r4, #0x9e]
        strb    r6, [r4, #0x9f]
        strh    r6, [r4, #0xa0]
        strh    r6, [r4, #0xa2]
        strb    r1, [r4, #0xf0]
        strb    r6, [r4, #0xa4]
        strb    r6, [r4, #0xa5]
        strh    r6, [r4, #0xa6]
        mov     r2, #2
        strh    r6, [r4, #0xa8]
        strb    r2, [r4, #0xf1]
        strb    r6, [r4, #0xf2]
        mov     r3, #0x40
        strb    r6, [r4, #0xf4]
        mov     ip, #0x3c
        strb    r3, [r4, #0xf5]
        strb    ip, [r4, #0xf6]
        mov     r0, #0xff
        strb    r6, [r4, #0xf7]
        strb    r0, [r4, #0xf8]
        strb    r0, [r4, #0xf9]
        strb    r0, [r4, #0xfa]
        strb    r0, [r4, #0xfb]
        strh    r0, [r4, #0xfc]
        strb    r1, [r4, #0xff]
        strb    r6, [r4, #0x100]
        strb    r6, [r4, #0x101]
        vstr    s16, [r4, #0x104]
        strb    r6, [r4, #0xfe]
        vstr    s16, [r4, #0x108]
        mov     r0, #0
        mvn     r1, #0
L561104:
        add     r2, r4, r0, lsl #1
        add     r2, r2, #0x100
        add     r0, r0, #2
        strh    r1, [r2, #0xc]
        strh    r1, [r2, #0xe]
        cmp     r0, #0x10
        blt     L561104
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L561128:
        .word   0x3f800000
L56112c:
        .word   0x00000000
        .size   A_560fb8, . - A_560fb8

@ FUN_00561138
        .global A_561138
        .type   A_561138, %function
A_561138:
        ldr     r1, L5611d0
        push    {r4, r5, r6, lr}
        mov     r5, #0
        str     r1, [r0]
        strb    r5, [r0, #5]
        strb    r5, [r0, #0x8c]!
        ldr     r1, L5611d4
        strb    r5, [r0, #1]
        strh    r5, [r0, #2]
        strh    r5, [r0, #4]
        sub     r0, r0, #0x70
        mov     r3, #4
        strb    r5, [r0, #0x76]
        strb    r5, [r0, #0x77]
        strh    r5, [r0, #0x78]
        strh    r5, [r0, #0x7a]
        strb    r5, [r0, #0x7c]
        strb    r5, [r0, #0x7d]
        strh    r5, [r0, #0x7e]
        strh    r5, [r0, #0x80]
        strb    r5, [r0, #0x82]
        strb    r5, [r0, #0x83]
        strh    r5, [r0, #0x84]
        strh    r5, [r0, #0x86]
        strb    r5, [r0, #0x88]
        strb    r5, [r0, #0x89]
        strh    r5, [r0, #0x8a]
        strh    r5, [r0, #0x8c]
        mov     r2, #0x10
        add     r0, r0, #0x90
        blx     Fn_0000ac_t
        str     r5, [r0, #0x80]
        sub     r4, r0, #0xac
        str     r5, [r0, #0x84]
        mov     r0, r4
        bl      Fn_560fb8
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L5611d0:
        .word   0x0082cf08
L5611d4:
        .word   0x00657e6c
        .size   A_561138, . - A_561138

@ FUN_005611d8
        .global A_5611d8
        .type   A_5611d8, %function
A_5611d8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L561250
        str     r0, [r5]
        mov     r0, r5
        bl      Fn_5606b4
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L561218
L5611fc:
        ldrb    r0, [r4, #0x131]
        cmp     r0, #0
        movne   r0, r4
        blne    Fn_5661a8
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L5611fc
L561218:
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L561238
L561224:
        mov     r0, r4
        bl      Fn_565968
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L561224
L561238:
        mov     r0, #0
        str     r0, [r5, #0x130]
        strb    r0, [r5, #5]
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_2024b0
L561250:
        .word   0x0082cf08
        .size   A_5611d8, . - A_5611d8

@ FUN_00561258
        .global A_561258
        .type   A_561258, %function
A_561258:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, L5612cc
        str     r0, [r5]
        mov     r0, r5
        bl      Fn_5606b4
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L561298
L56127c:
        ldrb    r0, [r4, #0x131]
        cmp     r0, #0
        movne   r0, r4
        blne    Fn_5661a8
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L56127c
L561298:
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L5612b8
L5612a4:
        mov     r0, r4
        bl      Fn_565968
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L5612a4
L5612b8:
        mov     r0, #0
        str     r0, [r5, #0x130]
        strb    r0, [r5, #5]
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L5612cc:
        .word   0x0082cf08
        .size   A_561258, . - A_561258

@ FUN_00561354
        .global A_561354
        .type   A_561354, %function
A_561354:
        ldr     r0, L5613a8
        push    {r4, lr}
        ldr     r0, [r0]
        tst     r0, #1
        bne     L5613a0
        ldr     r0, L5613a8
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L5613a0
        ldr     r1, L5613ac
        mov     r2, #0
        ldr     r0, L5613a8
        add     r3, r1, #8
        str     r2, [r1]
        strd    r2, r3, [r1, #4]
        str     r3, [r1, #0xc]
        strb    r2, [r1, #0x10]
        str     r2, [r1, #0x14]
        mov     r0, r0
L5613a0:
        ldr     r0, L5613ac
        pop     {r4, pc}
L5613a8:
        .word   0x008bb6f4
L5613ac:
        .word   0x009df8b8
        .size   A_561354, . - A_561354

@ FUN_005614bc
        .global A_5614bc
        .type   A_5614bc, %function
A_5614bc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        bl      Fn_5667d4
        cmp     r0, #0
        moveq   r5, #0
        beq     L5614dc
        bl      Fn_566480
        mov     r5, r0
L5614dc:
        add     r0, r4, #4
        add     r1, r4, #8
        add     r2, r5, #0x1a8
        bl      Fn_542230
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_5614bc, . - A_5614bc

@ FUN_00562040
        .global A_562040
        .type   A_562040, %function
A_562040:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        bl      Fn_562744
        mov     r5, #0
        vldr    s0, L5620a8
        strb    r5, [r4, #0x5d]
        mov     r0, #0x40
        vstr    s0, [r4, #0x60]
        add     r1, r4, #0x68
        strb    r0, [r4, #0x5e]
        mvn     r6, #0
        str     r5, [r4, #0x64]
        stm     r1, {r5, r6}
        vstr    s0, [r4, #0x88]
        strb    r0, [r4, #0x91]
        strb    r5, [r4, #0x92]
        strb    r5, [r4, #0x94]
        mov     r0, #0x7f
        strb    r5, [r4, #0x95]
        strb    r0, [r4, #0x93]
        add     r0, r4, #0x78
        bl      Fn_557e3c
        strb    r6, [r4, #0x5f]
        strb    r5, [r4, #0x5c]
        str     r5, [r4, #0x9c]
        pop     {r4, r5, r6, pc}
L5620a8:
        .word   0x3f800000
        .size   A_562040, . - A_562040

@ FUN_005620fc
        .global A_5620fc
        .type   A_5620fc, %function
A_5620fc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x5e]
        sub     sp, sp, #0x80
        ldrsb   r2, [r4, #0x5f]
        add     r5, r0, #0x40
        ldr     r1, [r4, #0x68]
        add     r0, sp, #0x74
        bl      Fn_5592b4
        mov     r2, #0
        mov     r1, sp
        add     r0, sp, #0x74
        bl      Fn_6377dc
        cmp     r0, #0
        beq     L562240
        ldrb    r0, [r4, #0x70]
        mov     r6, #0
        cmp     r0, #0
        ldreq   r6, [r4, #0x74]
        beq     L562170
        cmp     r0, #1
        bne     L562170
        ldr     r0, [r4, #0x74]
        ldr     r1, [sp, #8]
        mov     r2, #0x3e8
        mov     r3, #0
        smull   r0, r1, r0, r1
        bl      Fn_01a43c
        mov     r6, r0
L562170:
        ldr     r0, [sp, #0x10]
        cmp     r0, r6
        blo     L562248
        ldr     r0, [sp, #4]
        mov     r1, #2
        ldr     r2, L562254
        cmp     r0, #2
        movgt   r0, r1
        mov     r3, r4
        mov     r1, r5
        bl      Fn_5659a0
        movs    r5, r0
        nop
        beq     L562248
        ldr     r1, [r4, #0x64]
        add     r0, sp, #0x78
        bl      Fn_55ba6c
        ldr     r2, [r4, #0x6c]
        add     r1, r4, #0x88
        add     r0, sp, #0x78
        bl      Fn_638fd8
        cmp     r0, #0
        nop
        beq     L562240
        ldrb    r1, [r4, #0x8c]
        add     r0, r5, #0x90
        bl      Fn_5565fc
        ldrb    r1, [r4, #0x8f]
        add     r0, r5, #0x90
        bl      Fn_556564
        ldrb    r1, [r4, #0x8d]
        add     r0, r5, #0x90
        bl      Fn_556584
        ldrb    r1, [r4, #0x8e]
        add     r0, r5, #0x90
        strb    r1, [r0, #0x18]
        ldrb    r1, [r4, #0x90]
        add     r0, r5, #0x90
        bl      Fn_5563ac
        ldrb    r0, [r4, #0x5d]
        strb    r0, [r5, #0x134]
        ldrsb   r1, [r4, #0x2e]
        ldr     r0, [r5, #0x1a0]
        bl      Fn_55d708
        mov     r3, r6
        mvn     r2, #0
        mov     r1, sp
        mov     r0, r5
        bl      Fn_565d14
        mov     r0, #1
        str     r5, [r4, #0x9c]
        strb    r0, [r4, #0x5c]
L562240:
        add     sp, sp, #0x80
        pop     {r4, r5, r6, pc}
L562248:
        add     sp, sp, #0x80
        mov     r0, #0
        pop     {r4, r5, r6, pc}
L562254:
        .word   0x00662480
        .size   A_5620fc, . - A_5620fc

@ FUN_00562258
        .global A_562258
        .type   A_562258, %function
A_562258:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r0
        vpush   {d8, d9, d10, d11, d12}
        sub     sp, sp, #0x14
        ldr     r0, [r0, #0x9c]
        cmp     r0, #0
        beq     L562460
        vldr    s0, [r5, #0x18]
        vldr    s3, [r5, #0x88]
        ldrb    r0, [r5, #0x91]
        vldr    s24, [r5, #0x14]
        vmul.f32 s20, s3, s0
        vldr    s22, L56246c
        vldr    s1, L562470
        vldr    s2, L562474
        cmp     r0, #1
        bhi     L5622b4
        sub     r0, r0, #0x3f
        vmov    s3, r0
        vmov.f32 s0, s22
        vcvt.f32.s32 s3, s3
        vmla.f32 s0, s3, s2
        b       L5622c8
L5622b4:
        sub     r0, r0, #0x40
        vmov    s3, r0
        vmov.f32 s0, s22
        vcvt.f32.s32 s3, s3
        vmla.f32 s0, s3, s2
L5622c8:
        vldr    s5, [r5, #0x60]
        vldr    s4, [r5, #0x1c]
        ldrb    r0, [r5, #0x92]
        vldr    s3, L562478
        cmp     r0, #0x3f
        vmul.f32 s0, s5, s0
        vadd.f32 s17, s4, s0
        bhi     L5622fc
        vmov    s4, r0
        vmov.f32 s0, s22
        vcvt.f32.u32 s4, s4
        vmla.f32 s0, s4, s2
        b       L562310
L5622fc:
        add     r0, r0, #1
        vmov    s2, r0
        vmov.f32 s0, s22
        vcvt.f32.u32 s2, s2
        vmla.f32 s0, s2, s3
L562310:
        ldrb    r2, [r5, #0x96]
        vldr    s7, [r5, #0x20]
        ldrsb   r0, [r5, #0x2c]
        sub     r2, r2, #0x40
        vmov    s2, r2
        ldrb    r7, [r5, #0x97]
        cmn     r0, #1
        vldr    s5, [r5, #0x24]
        movne   r7, r0
        vadd.f32 s21, s7, s0
        vcvt.f32.s32 s6, s2
        ldrb    r0, [r5, #0x93]
        ldrb    r1, [r5, #0x98]
        vldr    s23, L56247c
        mov     r4, #0
        vmov    s4, r1
        add     r8, sp, #8
        mov     sb, sp
        vmul.f32 s0, s6, s3
        vcvt.f32.u32 s2, s4
        vadd.f32 s18, s5, s0
        vmov    s0, r0
        vmul.f32 s16, s2, s23
        vldr    s2, [r5, #0x30]
        ldrb    r0, [r5, #0x94]
        vldrne  s16, [r5, #0x28]
        vcvt.f32.u32 s0, s0
        strb    r0, [sp]
        ldrb    r0, [r5, #0x95]
        strb    r0, [sp, #1]
        vnmls.f32 s1, s0, s23
        vadd.f32 s19, s2, s1
L562390:
        add     r6, r8, r4, lsl #2
        and     r1, r4, #0xff
        vstr    s22, [r6]
        ldrb    r0, [sb, r4]
        vmov    s0, r0
        mov     r0, r5
        vcvt.f32.u32 s1, s0
        vmov.f32 s0, s22
        vmla.f32 s0, s1, s23
        vstr    s0, [r6]
        bl      Fn_639e20
        vldr    s1, [r6]
        add     r4, r4, #1
        cmp     r4, #2
        vadd.f32 s0, s0, s1
        vstr    s0, [r6]
        blt     L562390
        ldr     r1, [r5, #0x9c]
        ldrb    r0, [r5, #0x34]
        vmov.f32 s0, s16
        strb    r0, [r1, #0x190]
        ldr     r0, [r5, #0x9c]
        ldrb    r1, [r5, #0x35]
        strb    r1, [r0, #0x191]
        ldr     r0, [r5, #0x9c]
        mov     r1, r7
        vstr    s24, [r0, #0x138]
        ldr     r0, [r5, #0x9c]
        vstr    s20, [r0, #0x13c]
        ldr     r0, [r5, #0x9c]
        vstr    s17, [r0, #0x140]
        ldr     r0, [r5, #0x9c]
        vstr    s18, [r0, #0x148]
        ldr     r0, [r5, #0x9c]
        bl      Fn_565a40
        ldr     r0, [r5, #0x9c]
        add     r1, r5, #0x80
        vstr    s19, [r0, #0x150]
        ldr     r0, [r5, #0x9c]
        vldr    s0, [sp, #8]
        vstr    s0, [r0, #0x154]
        ldr     r0, [r5, #0x9c]
        vldr    s0, [sp, #0xc]
        vstr    s0, [r0, #0x158]
        ldr     r0, [r5, #0x9c]
        vstr    s21, [r0, #0x144]
        ldr     r0, [r5, #0x9c]
        ldm     r1, {r1, ip}
        ldrd    r2, r3, [r5, #0x78]
        add     r4, r0, #0xb4
        stm     r4, {r1, ip}
        strd    r2, r3, [r0, #0xac]
L562460:
        add     sp, sp, #0x14
        vpop    {d8, d9, d10, d11, d12}
        pop     {r4, r5, r6, r7, r8, sb, pc}
L56246c:
        .word   0x00000000
L562470:
        .word   0x3f800000
L562474:
        .word   0x3c820821
L562478:
        .word   0x3c800000
L56247c:
        .word   0x3c010204
        .size   A_562258, . - A_562258

@ FUN_0056249c
        .global A_56249c
        .type   A_56249c, %function
A_56249c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0xc]
        cmp     r0, #0
        ldrbne  r0, [r4, #0xd]
        cmpne   r0, #0
        beq     L56250c
        ldrb    r0, [r4, #0xe]
        cmp     r0, #0
        bne     L562524
        ldrb    r0, [r4, #0x5c]
        mov     r5, #0
        cmp     r0, #0
        beq     L562510
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        bne     L562524
        mov     r0, #1
        strb    r0, [r4, #0xf]
        ldrb    r0, [r4, #0xd]
        cmp     r0, #0
        beq     L56250c
L5624f4:
        nop
        bl      Fn_55e338
        add     r1, r4, #0x50
        nop
        bl      Fn_55ea18
        strb    r5, [r4, #0xd]
L56250c:
        pop     {r4, r5, r6, pc}
L562510:
        mov     r0, r4
        bl      Fn_5620fc
        cmp     r0, #0
        nop
        beq     L562530
L562524:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_562258
L562530:
        ldrb    r0, [r4, #0xd]
        cmp     r0, #0
        bne     L5624f4
        pop     {r4, r5, r6, pc}
        .size   A_56249c, . - A_56249c

@ FUN_0056256c
        .global A_56256c
        .type   A_56256c, %function
A_56256c:
        strb    r1, [r0, #0xe]
        ldr     r0, [r0, #0x9c]
        cmp     r0, #0
        ldrbne  r2, [r0, #0x131]
        cmpne   r2, #0
        beq     L5625a4
        ldrb    r2, [r0, #0x130]
        cmp     r2, #0
        movne   r2, #1
        cmp     r2, r1
        beq     L5625a4
        strb    r1, [r0, #0x130]
        ldr     r0, [r0, #0x1a0]
        b       Fn_55df20
L5625a4:
        bx      lr
        .size   A_56256c, . - A_56256c

@ FUN_00562744
        .global A_562744
        .type   A_562744, %function
A_562744:
        mov     r1, #0
        strb    r1, [r0, #0xc]
        strb    r1, [r0, #0xd]
        strb    r1, [r0, #0xe]
        vldr    s1, L5627a4
        strb    r1, [r0, #0xf]
        strb    r1, [r0, #0x10]
        vldr    s0, L5627a8
        vstr    s1, [r0, #0x14]
        vstr    s1, [r0, #0x18]
        vstr    s0, [r0, #0x1c]
        vstr    s0, [r0, #0x20]
        vstr    s0, [r0, #0x24]
        mov     r2, #0xff
        strb    r1, [r0, #0x2e]
        strb    r2, [r0, #0x2c]
        vstr    s0, [r0, #0x28]
        vstr    s0, [r0, #0x30]
        strb    r1, [r0, #0x34]
        strb    r1, [r0, #0x35]
        vstr    s0, [r0, #0x38]
        vstr    s0, [r0, #0x3c]
        str     r1, [r0, #0x40]
        bx      lr
L5627a4:
        .word   0x3f800000
L5627a8:
        .word   0x00000000
        .size   A_562744, . - A_562744

@ FUN_005627b8
        .global A_5627b8
        .type   A_5627b8, %function
A_5627b8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0xc]
        mov     r5, #0
        cmp     r0, #0
        beq     L5627e0
        bl      Fn_565778
        add     r1, r4, #0x44
        bl      Fn_5657dc
        strb    r5, [r4, #0xc]
L5627e0:
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        beq     L562820
        ldrb    r0, [r0, #0x131]
        cmp     r0, #0
        beq     L562818
        mov     r0, r4
        bl      Fn_562258
        ldr     r0, [r4, #0x9c]
        nop
        bl      Fn_5661a8
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        beq     L562820
L562818:
        ldr     r0, [r4, #0x9c]
        bl      Fn_565968
L562820:
        mov     r0, r4
        str     r5, [r4, #0x9c]
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_5627b8, . - A_5627b8

@ FUN_0056295c
        .global A_56295c
        .type   A_56295c, %function
A_56295c:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        sub     r0, r1, r0
        ldr     r1, [r4, #8]
        bl      Fn_022d48
        add     r1, r4, r0, lsr #3
        and     r0, r0, #7
        ldrb    r3, [r1, #0x14]
        mov     r2, #1
        bic     r0, r3, r2, lsl r0
        strb    r0, [r1, #0x14]
        ldr     r0, [r4, #0x10]
        sub     r0, r0, #1
        str     r0, [r4, #0x10]
        pop     {r4, pc}
        .size   A_56295c, . - A_56295c

@ FUN_00562a68
        .global A_562a68
        .type   A_562a68, %function
A_562a68:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        mov     r7, r2
        mov     sl, r1
        add     r1, r4, #0x1c
        mov     fp, r3
        vpush   {d8}
        sub     sp, sp, #4
        ldm     r1, {r1, r2}
        ldr     r0, [r0, #0x10]
        vldr    s16, [sp, #0x30]
        sub     r1, r1, r2
        cmp     r1, r0
        blt     L562afc
        ldr     r0, [r4, #4]
        cmp     r0, #0
        beq     L562b4c
        ldr     r0, [r4, #8]
        sub     r5, r0, #0x58
        ldr     r1, [r0, #-0x18]
        cmp     r1, r7
        bgt     L562b4c
        add     r6, r5, #0xc
        ldr     r8, [r5, #8]
        ldm     r6, {r6, sb}
        mov     r0, r5
        bl      Fn_55dd2c
        mov     r0, r5
        bl      Fn_55dcc4
        cmp     r6, #0
        beq     L562af4
        mov     r2, sb
        mov     r1, #2
        mov     r0, r5
        blx     r6
L562af4:
        cmp     r8, #0
        beq     L562b4c
L562afc:
        ldr     r0, [r4, #0x14]
        vstr    s16, [sp]
        mov     r3, fp
        sub     r5, r0, #0x58
        mov     r2, r7
        mov     r1, sl
        mov     r0, r5
        bl      Fn_55dd88
        cmp     r0, #0
        nop
        beq     L562b40
        and     r0, r7, #0xff
        str     r0, [r5, #0x40]
        mov     r1, r5
        mov     r0, r4
        bl      Fn_562c3c
        mov     r0, r5
L562b40:
        add     sp, sp, #4
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L562b4c:
        add     sp, sp, #4
        mov     r0, #0
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_562a68, . - A_562a68

@ FUN_00562bd4
        .global A_562bd4
        .type   A_562bd4, %function
A_562bd4:
        ldr     r0, L562c34
        push    {r4, lr}
        ldr     r0, [r0]
        tst     r0, #1
        bne     L562c2c
        ldr     r0, L562c34
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L562c2c
        ldr     r2, L562c38
        mov     r1, #0
        add     r0, r2, #4
        add     r3, r2, #8
        strb    r1, [r2]
        stm     r0, {r1, r3}
        add     r0, r2, #0x10
        str     r3, [r2, #0xc]
        add     r2, r2, #0x14
        stm     r0, {r1, r2}
        str     r2, [r0, #8]
        ldr     r0, L562c34
        mov     r0, r0
L562c2c:
        ldr     r0, L562c38
        pop     {r4, pc}
L562c34:
        .word   0x008bb718
L562c38:
        .word   0x009e0100
        .size   A_562bd4, . - A_562bd4

@ FUN_00562c3c
        .global A_562c3c
        .type   A_562c3c, %function
A_562c3c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r1
        add     r0, r0, #0x10
        add     r1, r1, #0x58
        bl      Fn_5421f4
        ldr     r0, [r5, #8]
        add     r1, r5, #8
        cmp     r1, r0
        beq     L562c88
L562c64:
        ldr     r0, [r1, #4]
        ldr     r3, [r4, #0x40]
        ldr     r2, [r0, #-0x18]
        cmp     r2, r3
        ble     L562c88
        ldr     r2, [r5, #8]
        mov     r1, r0
        cmp     r0, r2
        bne     L562c64
L562c88:
        add     r0, r5, #4
        add     r2, r4, #0x58
        pop     {r4, r5, r6, lr}
        b       Fn_542230
        .size   A_562c3c, . - A_562c3c

@ FUN_00562df0
        .global A_562df0
        .type   A_562df0, %function
A_562df0:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r2, [r0, #4]
        cmp     r2, #0
        beq     L562e14
        ldr     r0, [r0, #8]
        sub     r4, r0, #0x58
        ldr     r0, [r0, #-0x18]
        cmp     r0, r1
        ble     L562e1c
L562e14:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L562e1c:
        add     r5, r4, #0xc
        ldr     r7, [r4, #8]
        ldm     r5, {r5, r6}
        mov     r0, r4
        bl      Fn_55dd2c
        mov     r0, r4
        nop
        bl      Fn_55dcc4
        cmp     r5, #0
        nop
        beq     L562e58
        mov     r2, r6
        mov     r1, #2
        mov     r0, r4
        blx     r5
L562e58:
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_562df0, . - A_562df0

@ FUN_00562f00
        .global A_562f00
        .type   A_562f00, %function
A_562f00:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r1
        add     r0, r0, #4
        add     r1, r1, #0x58
        bl      Fn_5421f4
        add     r0, r5, #0x10
        add     r1, r5, #0x14
        add     r2, r4, #0x58
        pop     {r4, r5, r6, lr}
        b       Fn_542230
        .size   A_562f00, . - A_562f00

@ FUN_00562f2c
        .global A_562f2c
        .type   A_562f2c, %function
A_562f2c:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_562744
        mov     r1, #0
        strb    r1, [r4, #0x50]
        strb    r1, [r4, #0x51]
        strb    r1, [r4, #0x53]
        strb    r1, [r4, #0x54]
        strb    r1, [r4, #0x55]
        vldr    s0, L562fdc
        strb    r1, [r4, #0x52]
        str     r1, [r4, #0x58]
        mov     r3, #0x7f
        vstr    s0, [r4, #0xf4]
        strb    r3, [r4, #0xf8]
        vldr    s1, L562fe0
        strb    r1, [r4, #0xf9]
        mov     r2, r1
        mov     ip, #0x40
        strb    r1, [r4, #0xfa]
L562f7c:
        add     r0, r2, r2, lsl #3
        add     r2, r2, #1
        add     r0, r4, r0, lsl #2
        add     r0, r0, #0x1800
        add     r0, r0, #0x304
        add     lr, r0, #0x18
        strb    r1, [r0]
        strb    r1, [r0, #0xc]
        strb    r3, [r0, #0xd]
        strb    ip, [r0, #0xe]
        cmp     r2, #4
        vstmia  lr, {s0, s1}
        vstr    s1, [r0, #0x20]
        blo     L562f7c
        mov     r0, #0
L562fb8:
        add     r2, r0, r0, lsl #2
        add     r2, r2, r0, lsl #3
        add     r0, r0, #1
        add     r2, r4, r2, lsl #6
        cmp     r0, #8
        str     r1, [r2, #0x104]
        str     r1, [r2, #0x134]
        blo     L562fb8
        pop     {r4, pc}
L562fdc:
        .word   0x3f800000
L562fe0:
        .word   0x00000000
        .size   A_562f2c, . - A_562f2c

@ FUN_00563f10
        .global A_563f10
        .type   A_563f10, %function
A_563f10:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #0x60]
        bl      Fn_557434
        mov     r1, r4
        bl      Fn_557590
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L563f60
L563f38:
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        add     r0, r5, r0, lsl #6
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        blne    Fn_55dd2c
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L563f38
L563f60:
        ldrb    r0, [r5, #0xd]
        cmp     r0, #0
        beq     L563f84
        bl      Fn_55e338
        add     r1, r5, #0x44
        nop
        bl      Fn_55ea18
        mov     r0, #0
        strb    r0, [r5, #0xd]
L563f84:
        pop     {r4, r5, r6, pc}
        .size   A_563f10, . - A_563f10

@ FUN_00563f88
        .global A_563f88
        .type   A_563f88, %function
A_563f88:
        push    {r4, r5, r6, lr}
        cmp     r1, #0
        movne   r2, #1
        mov     r5, r0
        strb    r1, [r0, #0xe]
        strbne  r2, [r0, #0x54]
        ldrb    r0, [r5, #0x54]
        cmp     r1, #0
        mov     r6, #0
        movne   r6, #1
        cmp     r0, #0
        ldrsb   r0, [r5, #0x53]
        movne   r6, #1
        cmp     r0, r6
        beq     L564004
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L564000
L563fd4:
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        add     r0, r5, r0, lsl #6
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        movne   r1, r6
        blne    Fn_55df20
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L563fd4
L564000:
        strb    r6, [r5, #0x53]
L564004:
        pop     {r4, r5, r6, pc}
        .size   A_563f88, . - A_563f88

@ FUN_005641a0
        .global A_5641a0
        .type   A_5641a0, %function
A_5641a0:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x78
        mov     r8, r0
        ldrb    r0, [r0, #0xd]
        cmp     r0, #0
        bne     L5642e4
        ldr     r0, [r8, #0x100]
        mov     r7, #0
        cmp     r0, #0
        bls     L564260
L5641c8:
        add     r0, r7, r7, lsl #3
        add     r5, r8, r0, lsl #2
        add     r5, r5, #0x1800
        add     r5, r5, #0x304
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L564250
        ldrb    r0, [r8, #0x80]
        mov     r4, #0
        strb    r0, [sp]
        ldrb    r0, [r5, #0xc]
        str     r0, [sp, #4]
        ldr     r0, [r8, #0x84]
        str     r0, [sp, #8]
        ldrb    r0, [r5, #0xc]
        cmp     r0, #0
        ble     L564250
L56420c:
        add     r0, r5, r4, lsl #2
        ldr     r0, [r0, #4]
        cmp     r0, #0
        ldrne   r6, [r0, #0x30]
        cmpne   r6, #0
        beq     L564240
        mov     r2, #0
        mov     r1, sp
        mov     r0, r6
        bl      Fn_55d140
        mov     r0, r6
        nop
        bl      Fn_55df40
L564240:
        ldrb    r0, [r5, #0xc]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L56420c
L564250:
        ldr     r0, [r8, #0x100]
        add     r7, r7, #1
        cmp     r0, r7
        bhi     L5641c8
L564260:
        ldrb    r0, [r8, #0xe]
        mov     r5, #0
        cmp     r0, #0
        ldrb    r0, [r8, #0x54]
        movne   r5, #1
        cmp     r0, #0
        ldrsb   r0, [r8, #0x53]
        movne   r5, #1
        cmp     r0, r5
        beq     L5642c8
        ldr     r0, [r8, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L5642c4
L564298:
        add     r0, r4, r4, lsl #2
        add     r1, r0, r4, lsl #3
        add     r0, r8, r1, lsl #6
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        movne   r1, r5
        blne    Fn_55df20
        ldr     r0, [r8, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L564298
L5642c4:
        strb    r5, [r8, #0x53]
L5642c8:
        nop
        bl      Fn_55e338
        add     r1, r8, #0x44
        nop
        bl      Fn_55ea04
        mov     r0, #1
        strb    r0, [r8, #0xd]
L5642e4:
        add     sp, sp, #0x78
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5641a0, . - A_5641a0

@ FUN_00564570
        .global A_564570
        .type   A_564570, %function
A_564570:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0x50]
        cmp     r0, #0
        beq     L564630
        mov     r0, #1
        strb    r0, [r5, #0x52]
        ldr     r0, [r5, #0xfc]
        mov     r7, #0
        mov     r4, r7
        cmp     r0, #0
        bls     L5645d4
L5645a0:
        add     r0, r4, r4, lsl #2
        add     r1, r0, r4, lsl #3
        add     r6, r5, r1, lsl #6
        ldr     r1, [r6, #0x104]
        cmp     r1, #0
        beq     L5645c4
        ldr     r0, [r5, #0x64]
        bl      Fn_56295c
        str     r7, [r6, #0x104]
L5645c4:
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L5645a0
L5645d4:
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L564618
L5645e4:
        add     r0, r4, r4, lsl #2
        add     r1, r0, r4, lsl #3
        add     r0, r5, r1, lsl #6
        add     r6, r0, #0x104
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        beq     L564608
        bl      Fn_55dcc4
        str     r7, [r6, #0x30]
L564608:
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L5645e4
L564618:
        str     r7, [r5, #0x64]
        strb    r7, [r5, #0xc]
        mov     r0, r5
        strb    r7, [r5, #0x50]
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_562830
L564630:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_564570, . - A_564570

@ FUN_0056469c
        .global A_56469c
        .type   A_56469c, %function
A_56469c:
        ldr     r1, L56477c
        push    {r4, r5, r6, r7, r8, lr}
        mov     r7, r0
        add     r0, r1, #0x30
        str     r0, [r7, #0x44]
        str     r1, [r7]
        ldrb    r0, [r7, #0x50]
        mov     r5, r7
        cmp     r0, #0
        beq     L56476c
        mov     r0, #1
        strb    r0, [r5, #0x52]
        ldr     r0, [r5, #0xfc]
        mov     r8, #0
        mov     r4, r8
        cmp     r0, #0
        bls     L564714
L5646e0:
        add     r0, r4, r4, lsl #2
        add     r1, r0, r4, lsl #3
        add     r6, r5, r1, lsl #6
        ldr     r1, [r6, #0x104]
        cmp     r1, #0
        beq     L564704
        ldr     r0, [r5, #0x64]
        bl      Fn_56295c
        str     r8, [r6, #0x104]
L564704:
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L5646e0
L564714:
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L564758
L564724:
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        add     r0, r5, r0, lsl #6
        add     r6, r0, #0x104
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        beq     L564748
        bl      Fn_55dcc4
        str     r8, [r6, #0x30]
L564748:
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L564724
L564758:
        str     r8, [r5, #0x64]
        strb    r8, [r5, #0xc]
        mov     r0, r5
        strb    r8, [r5, #0x50]
        bl      Fn_562830
L56476c:
        ldr     r0, L564780
        str     r0, [r7]
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, pc}
L56477c:
        .word   0x0082cfc8
L564780:
        .word   0x0082cf90
        .size   A_56469c, . - A_56469c

@ FUN_00564784
        .global A_564784
        .type   A_564784, %function
A_564784:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_562744
        mov     r0, #0
        strb    r0, [r4, #0xd]
        strb    r0, [r4, #0xe]
        vldr    s1, L56484c
        strb    r0, [r4, #0x5c]
        vldr    s0, L564850
        strb    r0, [r4, #0xc]
        vstr    s1, [r4, #0x64]
        vstr    s0, [r4, #0x68]
        str     r0, [r4, #0x6c]
        vstr    s0, [r4, #0x70]
        vstr    s1, [r4, #0x60]
        mov     r1, #0x78
        mov     r2, #0x30
        str     r0, [r4, #0xf0]
        str     r0, [r4, #0x88]
        str     r0, [r4, #0x8c]
        strh    r1, [r4, #0x76]
        strb    r2, [r4, #0x75]
        mov     r2, #0x7f
        strb    r2, [r4, #0x78]
        strb    r2, [r4, #0x79]
        strh    r0, [r4, #0x7a]
        mov     r1, #0x40
        strh    r0, [r4, #0x7c]
        strb    r1, [r4, #0x74]
        mov     r1, #0
        mvn     r2, #0
        str     r0, [r4, #0x80]
L564804:
        add     r3, r4, r1, lsl #1
        add     r1, r1, #2
        strh    r2, [r3, #0xd0]
        strh    r2, [r3, #0xd2]
        cmp     r1, #0x10
        blt     L564804
        mov     r2, #0
        mov     r1, r2
L564824:
        add     ip, r4, r2, lsl #2
        add     r2, r2, #1
        add     r1, r1, #2
        add     r3, r4, r2, lsl #2
        str     r0, [ip, #0x90]
        cmp     r1, #0x10
        add     r2, r2, #1
        str     r0, [r3, #0x90]
        blt     L564824
        pop     {r4, pc}
L56484c:
        .word   0x3f800000
L564850:
        .word   0x00000000
        .size   A_564784, . - A_564784

@ FUN_00564854
        .global A_564854
        .type   A_564854, %function
A_564854:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r0
        vpush   {d8, d9}
        sub     sp, sp, #4
        ldrb    r0, [r0, #0x75]
        ldrh    r1, [r5, #0x76]
        vldr    s1, [r5, #0x64]
        vldr    s16, L564a80
        vldr    s17, L564a84
        mul     r0, r0, r1
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s1
        vmul.f32 s19, s0, s16
        vcmp.f32 s19, s17
        vmrs    apsr_nzcv, fpscr
        beq     L5649f0
        vldr    s0, [r5, #0x68]
        vldr    s18, L564a8c
        ldr     sb, L564a88
        mov     sl, #0
        vmul.f32 s1, s0, s18
        vdiv.f32 s0, s1, s19
        vmov    r0, s0
        bl      Fn_68f668
        mov     r2, sb
        subs    r2, r0, r2
        sbcs    r2, r1, #0
        bhs     L5649d0
L5648c8:
        subs    sb, sb, r0
        mov     r0, #1
        str     r0, [sp]
        sbc     sl, sl, r1
        ldrsh   r2, [r5, #0x7a]
        ldrsh   r1, [r5, #0x7c]
        add     r0, r5, #0x78
        mov     r8, #0
        cmp     r1, r2
        addlt   r1, r1, #1
        mov     r4, r8
        strhlt  r1, [r0, #4]
L5648f8:
        cmp     r4, #0xf
        bgt     L56496c
        add     r7, r5, r4, lsl #2
        ldr     r6, [r7, #0x90]
        cmp     r6, #0
        beq     L56496c
        mov     r0, r6
        bl      Fn_560ac8
        ldr     r1, [sp]
        mov     r0, r6
        bl      Fn_560468
        cmp     r0, #0
        nop
        bge     L564960
        ldr     r0, [r7, #0x90]
        mov     fp, r5
        cmp     r0, #0
        beq     L564960
        bl      Fn_560b60
        ldr     r0, [fp, #0x84]
        ldr     r1, [r7, #0x90]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        mov     r0, #0
        str     r0, [r7, #0x90]
L564960:
        ldrb    r0, [r6, #5]
        cmp     r0, #0
        movne   r8, #1
L56496c:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L5648f8
        cmp     r8, #0
        beq     L5649fc
        ldr     r0, [r5, #0xf0]
        add     r0, r0, #1
        str     r0, [r5, #0xf0]
        ldrb    r0, [r5, #0x75]
        ldrh    r1, [r5, #0x76]
        vldr    s1, [r5, #0x64]
        mul     r0, r0, r1
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s16
        vmul.f32 s19, s0, s1
        vcmp.f32 s19, s17
        vmrs    apsr_nzcv, fpscr
        beq     L5649f0
        vdiv.f32 s0, s18, s19
        vmov    r0, s0
        bl      Fn_68f668
        subs    r2, r0, sb
        sbcs    r2, r1, sl
        blo     L5648c8
L5649d0:
        subs    r0, r0, sb
        sbc     r1, r1, sl
        bl      Fn_68f3b8
        vmov    s0, r0
        vldr    s1, L564a90
        vmul.f32 s0, s0, s19
        vmul.f32 s0, s0, s1
        vstr    s0, [r5, #0x68]
L5649f0:
        add     sp, sp, #4
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5649fc:
        ldrb    r0, [r5, #0xd]
        mov     sb, #1
        cmp     r0, #0
        beq     L564a24
        bl      Fn_55e338
        add     r1, r5, #0x50
        nop
        bl      Fn_55ea18
        mov     r0, #0
        strb    r0, [r5, #0xd]
L564a24:
        mov     r4, #0
        mov     r8, r4
L564a2c:
        cmp     r4, #0xf
        mov     r6, r5
        bgt     L564a64
        add     r7, r6, r4, lsl #2
        ldr     r0, [r7, #0x90]
        cmp     r0, #0
        beq     L564a64
        bl      Fn_560b60
        ldr     r0, [r6, #0x84]
        ldr     r1, [r7, #0x90]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        str     r8, [r7, #0x90]
L564a64:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L564a2c
        strb    sb, [r5, #0xf]
        add     sp, sp, #4
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L564a80:
        .word   0x378bcf65
L564a84:
        .word   0x00000000
L564a88:
        .word   0x4e200000
L564a8c:
        .word   0x4d7fb0ff
L564a90:
        .word   0x3180278d
        .size   A_564854, . - A_564854

@ FUN_00564ab0
        .global A_564ab0
        .type   A_564ab0, %function
A_564ab0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r7, #0
        ldrb    r0, [r0, #0xd]
        cmp     r0, #0
        beq     L564ad8
        bl      Fn_55e338
        add     r1, r5, #0x50
        bl      Fn_55ea18
        strb    r7, [r5, #0xd]
L564ad8:
        mov     r4, #0
L564adc:
        cmp     r4, #0xf
        bgt     L564b10
        add     r6, r5, r4, lsl #2
        ldr     r0, [r6, #0x90]
        cmp     r0, #0
        beq     L564b10
        bl      Fn_560b60
        ldr     r0, [r5, #0x84]
        ldr     r1, [r6, #0x90]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        str     r7, [r6, #0x90]
L564b10:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L564adc
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_564ab0, . - A_564ab0

@ FUN_00564f9c
        .global A_564f9c
        .type   A_564f9c, %function
A_564f9c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0xc]
        cmp     r0, #0
        ldrbne  r0, [r5, #0xd]
        cmpne   r0, #0
        beq     L565024
        ldr     r0, [r5, #0x6c]
        cmp     r0, #0
        bne     L564fd8
        vldr    s0, [r5, #0x70]
        vldr    s1, L565028
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        ble     L564fec
L564fd8:
        mov     r0, r5
        bl      Fn_5653c4
        nop
        nop
        b       L564ffc
L564fec:
        ldrb    r0, [r5, #0xe]
        cmp     r0, #0
        moveq   r0, r5
        bleq    Fn_564854
L564ffc:
        mov     r4, #0
L565000:
        cmp     r4, #0xf
        bgt     L565018
        add     r0, r5, r4, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        blne    Fn_5606b4
L565018:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L565000
L565024:
        pop     {r4, r5, r6, pc}
L565028:
        .word   0x00000000
        .size   A_564f9c, . - A_564f9c

@ FUN_005650ec
        .global A_5650ec
        .type   A_5650ec, %function
A_5650ec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r4, #0
        strb    r1, [r0, #0xe]
L565100:
        cmp     r4, #0xf
        bgt     L56511c
        add     r0, r5, r4, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        movne   r1, r6
        blne    Fn_5605e8
L56511c:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L565100
        pop     {r4, r5, r6, pc}
        .size   A_5650ec, . - A_5650ec

@ FUN_00565354
        .global A_565354
        .type   A_565354, %function
A_565354:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r0, #1
        strb    r0, [r5, #0xf]
        mov     r0, r5
        bl      Fn_564ab0
        ldrb    r0, [r5, #0xc]
        cmp     r0, #0
        beq     L56538c
        bl      Fn_565778
        add     r1, r5, #0x44
        bl      Fn_5657dc
        mov     r0, #0
        strb    r0, [r5, #0xc]
L56538c:
        mov     r4, #0
L565390:
        add     r0, r4, r4, lsl #1
        add     r0, r5, r0, lsl #2
        add     r0, r0, #0x134
        bl      Fn_559208
        add     r0, r5, r4, lsl #4
        add     r0, r0, #0xf4
        bl      Fn_55c674
        add     r4, r4, #1
        cmp     r4, #4
        blo     L565390
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_562830
        .size   A_565354, . - A_565354

@ FUN_005653c4
        .global A_5653c4
        .type   A_5653c4, %function
A_5653c4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r0
        mov     r4, #0
        vpush   {d8}
        sub     sp, sp, #4
L5653d8:
        cmp     r4, #0xf
        bgt     L565408
        add     r0, r6, r4, lsl #2
        ldr     r5, [r0, #0x90]
        cmp     r5, #0
        beq     L565408
        mov     r1, #0x7f
        mov     r0, r5
        bl      Fn_560660
        mov     r0, r5
        nop
        bl      Fn_560598
L565408:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L5653d8
        mov     sl, #0
        vldr    s16, L565604
        vldr    s17, L565608
        mov     fp, sl
L565424:
        ldr     r0, [r6, #0x6c]
        cmp     r0, #0
        bne     L565464
        ldrb    r1, [r6, #0x75]
        ldrh    r2, [r6, #0x76]
        vldr    s1, [r6, #0x64]
        mul     r1, r1, r2
        vmov    s0, r1
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s1
        vldr    s1, [r6, #0x70]
        vmul.f32 s0, s0, s16
        vmul.f32 s0, s0, s1
        vmov    r1, s0
        cmp     r1, #0x3f800000
        blt     L5655f0
L565464:
        ldr     r1, L56560c
        ldr     r1, [r1]
        cmp     sl, r1
        bge     L5655e4
        cmp     r0, #0
        subne   r0, r0, #1
        strne   r0, [r6, #0x6c]
        bne     L5654b4
        ldrb    r0, [r6, #0x75]
        ldrh    r1, [r6, #0x76]
        vldr    s1, [r6, #0x64]
        vldr    s2, [r6, #0x70]
        mul     r0, r0, r1
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s16
        vmul.f32 s0, s0, s1
        vdiv.f32 s1, s17, s0
        vsub.f32 s0, s2, s1
        vstr    s0, [r6, #0x70]
L5654b4:
        mov     r0, #0
        str     r0, [sp]
        ldrsh   r2, [r6, #0x7a]
        ldrsh   r1, [r6, #0x7c]
        add     r0, r6, #0x78
        mov     r8, #0
        cmp     r1, r2
        addlt   r1, r1, #1
        mov     r4, r8
        strhlt  r1, [r0, #4]
L5654dc:
        cmp     r4, #0xf
        bgt     L56554c
        add     r7, r6, r4, lsl #2
        ldr     r5, [r7, #0x90]
        cmp     r5, #0
        beq     L56554c
        mov     r0, r5
        bl      Fn_560ac8
        ldr     r1, [sp]
        mov     r0, r5
        bl      Fn_560468
        cmp     r0, #0
        nop
        bge     L565540
        ldr     r0, [r7, #0x90]
        mov     sb, r6
        cmp     r0, #0
        beq     L565540
        bl      Fn_560b60
        ldr     r0, [sb, #0x84]
        ldr     r1, [r7, #0x90]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        str     fp, [r7, #0x90]
L565540:
        ldrb    r0, [r5, #5]
        cmp     r0, #0
        movne   r8, #1
L56554c:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L5654dc
        cmp     r8, #0
        beq     L565574
        ldr     r0, [r6, #0xf0]
        add     sl, sl, #1
        add     r0, r0, #1
        str     r0, [r6, #0xf0]
        b       L565424
L565574:
        ldrb    r0, [r6, #0xd]
        mov     r8, #1
        mov     r5, r6
        cmp     r0, #0
        beq     L56559c
        bl      Fn_55e338
        add     r1, r5, #0x50
        nop
        bl      Fn_55ea18
        strb    fp, [r5, #0xd]
L56559c:
        mov     r4, #0
L5655a0:
        cmp     r4, #0xf
        bgt     L5655d4
        add     r7, r5, r4, lsl #2
        ldr     r0, [r7, #0x90]
        cmp     r0, #0
        beq     L5655d4
        bl      Fn_560b60
        ldr     r0, [r5, #0x84]
        ldr     r1, [r7, #0x90]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        str     fp, [r7, #0x90]
L5655d4:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L5655a0
        strb    r8, [r6, #0xf]
L5655e4:
        add     sp, sp, #4
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5655f0:
        vldr    s0, L565610
        vstr    s0, [r6, #0x70]
        add     sp, sp, #4
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L565604:
        .word   0x378bcf65
L565608:
        .word   0x3f800000
L56560c:
        .word   0x008bb71c
L565610:
        .word   0x00000000
        .size   A_5653c4, . - A_5653c4

@ FUN_005656dc
        .global A_5656dc
        .type   A_5656dc, %function
A_5656dc:
        ldr     r1, L565770
        push    {r4, r5, r6, lr}
        mov     r5, r0
        add     r0, r1, #0x34
        str     r0, [r5, #0x44]
        add     r2, r1, #0x48
        str     r1, [r5]
        mov     r0, #1
        str     r2, [r5, #0x50]
        strb    r0, [r5, #0xf]
        mov     r0, r5
        bl      Fn_564ab0
        ldrb    r0, [r5, #0xc]
        cmp     r0, #0
        beq     L56572c
        bl      Fn_565778
        add     r1, r5, #0x44
        bl      Fn_5657dc
        mov     r1, #0
        strb    r1, [r5, #0xc]
L56572c:
        mov     r4, #0
L565730:
        add     r0, r4, r4, lsl #1
        add     r0, r5, r0, lsl #2
        add     r0, r0, #0x134
        bl      Fn_559208
        add     r0, r5, r4, lsl #4
        add     r0, r0, #0xf4
        bl      Fn_55c674
        add     r4, r4, #1
        cmp     r4, #4
        blo     L565730
        mov     r0, r5
        bl      Fn_562830
        ldr     r0, L565774
        str     r0, [r5]
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L565770:
        .word   0x0082d014
L565774:
        .word   0x0082cf90
        .size   A_5656dc, . - A_5656dc

@ FUN_00565778
        .global A_565778
        .type   A_565778, %function
A_565778:
        ldr     r0, L5657c4
        push    {r4, lr}
        ldr     r0, [r0]
        tst     r0, #1
        bne     L5657bc
        ldr     r0, L5657c4
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L5657bc
        ldr     r0, L5657c8
        mov     r2, #0
        add     r1, r0, #4
        str     r1, [r0, #4]
        str     r2, [r0]
        str     r1, [r0, #8]
        ldr     r0, L5657c4
        mov     r0, r0
L5657bc:
        ldr     r0, L5657c8
        pop     {r4, pc}
L5657c4:
        .word   0x008bb9ac
L5657c8:
        .word   0x00a76d40
        .size   A_565778, . - A_565778

@ FUN_0056592c
        .global A_56592c
        .type   A_56592c, %function
A_56592c:
        push    {r4, r5, r6, lr}
        mov     r2, #0
        movs    r4, r1
        add     r5, r0, #8
        str     r2, [r1, #0x12c]
        beq     L565964
        ldr     r0, [r4]
        ldr     r1, [r0]
        mov     r0, r4
        blx     r1
        mov     r1, r4
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_5667c4
L565964:
        pop     {r4, r5, r6, pc}
        .size   A_56592c, . - A_56592c

@ FUN_00565980
        .global A_565980
        .type   A_565980, %function
A_565980:
        ldr     r3, [r0, #0x164]
        ldr     r2, [r0, #0x168]
        add     r1, r1, r3
        cmp     r1, r2
        str     r1, [r0, #0x164]
        movgt   r1, r2
        str     r1, [r0, #0x164]
        bx      lr
        .size   A_565980, . - A_565980

@ FUN_005659a0
        .global A_5659a0
        .type   A_5659a0, %function
A_5659a0:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r8, r3
        bl      Fn_561354
        bl      Fn_5614bc
        movs    r4, r0
        beq     L565a04
        mov     r0, #1
        strb    r0, [r4, #0x132]
        bl      Fn_562bd4
        ldr     r3, L565a24
        mov     r2, r6
        mov     r1, r5
        str     r4, [sp]
        bl      Fn_562a68
        cmp     r0, #0
        beq     L565a08
        str     r0, [r4, #0x1a0]
        mov     r2, r8
        mov     r1, r7
        mov     r0, r4
        bl      Fn_566354
        mov     r0, r4
L565a04:
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L565a08:
        nop
        bl      Fn_561354
        mov     r1, r4
        nop
        bl      Fn_561480
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L565a24:
        .word   0x006613f8
        .size   A_5659a0, . - A_5659a0

@ FUN_00565a4c
        .global A_565a4c
        .type   A_565a4c, %function
A_565a4c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r0
        sub     sp, sp, #0x4c
        movs    sl, r2
        mov     r4, r1
        ldrb    r0, [r1, #1]
        strb    r0, [r5, #0x7c]
        ldr     r0, [r1, #0xc]
        str     r0, [r5, #0x78]
        beq     L565a98
        ldrb    r1, [r4]
        cmp     r1, #3
        bne     L565a98
        ldr     r2, L565ca0
        mov     r1, #0
        umlal   r2, r1, sl, r2
        lsr     r1, r1, #2
        rsb     r1, r1, r1, lsl #3
        lsl     sl, r1, #1
L565a98:
        ldrb    r1, [r4]
        bl      Fn_55d258
        str     r0, [sp, #0x40]
        ldrb    r1, [r4]
        ldr     r0, [r4, #0x10]
        bl      Fn_55d258
        ldr     r0, [r5, #0x1a0]
        mov     r7, #0
        ldr     r0, [r0, #8]
        cmp     r0, #0
        str     r0, [sp, #0x14]
        ble     L565c70
L565ac8:
        add     r6, r7, r7, lsl #1
        cmp     sl, #0
        add     fp, r4, r6, lsl #4
        ldr     r8, [fp, #0x14]
        str     r8, [sp, #0x18]
        beq     L565af4
        ldrb    r1, [r4]
        mov     r0, sl
        bl      Fn_55d258
        add     r0, r0, r8
        str     r0, [sp, #0x18]
L565af4:
        ldrb    r0, [r4]
        add     r1, r5, r6, lsl #1
        add     r2, r1, #0x6c
        cmp     r0, #3
        add     sb, r1, #0x60
        str     r2, [sp, #0x10]
        bne     L565bac
        add     r0, fp, #0x18
        mov     r1, r0
        str     r0, [sp]
        mov     r2, #0x20
        add     r0, sp, #0x20
        bl      Fn_202b20
        cmp     sl, #0
        nop
        beq     L565c78
        ldr     r0, [sp, #0x18]
        mov     r3, r8
        mov     r2, sl
        add     r1, sp, #0x20
        ldrh    r0, [r0]
        strh    r0, [sb]
        ldr     r0, [sp]
        ldrh    r0, [r0, #0x22]
        strh    r0, [sb, #2]
        ldr     r0, [sp]
        ldrh    r0, [r0, #0x24]
        strh    r0, [sb, #4]
        mov     r0, sb
        bl      Fn_55d800
L565b6c:
        ldrb    r0, [r4, #1]
        cmp     r0, #0
        beq     L565b9c
        ldr     r0, [sp, #0x10]
        ldrh    r1, [fp, #0x3e]
        strh    r1, [r0]
        ldr     r0, [sp, #0x10]
        ldrh    r1, [fp, #0x40]
        strh    r1, [r0, #2]
        ldr     r0, [sp, #0x10]
        ldrh    r1, [fp, #0x42]
        strh    r1, [r0, #4]
L565b9c:
        ldr     r0, [r5, #0x1a0]
        add     r2, sp, #0x20
        mov     r1, r7
        bl      Fn_55d6fc
L565bac:
        add     r6, r5, r6, lsl #4
        add     fp, r6, #0x18
        mov     r0, r6
        bl      Fn_51443c
        ldr     r0, [sp, #0x18]
        mov     r2, r6
        str     r0, [r6]
        ldr     r0, [r4, #0x10]
        sub     r1, r0, sl
        mov     r0, #0
        str     r1, [r6, #4]
        strb    r0, [r6, #0x10]
        ldrb    r0, [r4]
        mov     r1, r7
        cmp     r0, #3
        streq   sb, [r6, #8]
        ldrb    r0, [r4, #1]
        cmp     r0, #0
        ldr     r0, [r5, #0x1a0]
        moveq   r3, #1
        movne   r3, #0
        bl      Fn_55d7d8
        ldrb    r0, [r4, #1]
        cmp     r0, #0
        beq     L565c60
        mov     r0, fp
        bl      Fn_51443c
        ldr     r0, [sp, #0x40]
        mov     r1, #1
        mov     r3, #1
        add     r0, r0, r8
        str     r0, [fp]
        ldr     r0, [r5, #0x78]
        ldr     r2, [r4, #0x10]
        sub     r0, r2, r0
        str     r0, [fp, #4]
        strb    r1, [fp, #0x10]
        ldrb    r0, [r4]
        mov     r2, fp
        mov     r1, r7
        cmp     r0, #3
        ldreq   r0, [sp, #0x10]
        streq   r0, [fp, #8]
        ldr     r0, [r5, #0x1a0]
        bl      Fn_55d7d8
L565c60:
        ldr     r0, [sp, #0x14]
        add     r7, r7, #1
        cmp     r7, r0
        blt     L565ac8
L565c70:
        add     sp, sp, #0x4c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L565c78:
        ldr     r0, [sp]
        ldrh    r0, [r0, #0x20]
        strh    r0, [sb]
        ldr     r0, [sp]
        ldrh    r0, [r0, #0x22]
        strh    r0, [sb, #2]
        ldr     r0, [sp]
        ldrh    r0, [r0, #0x24]
        strh    r0, [sb, #4]
        b       L565b6c
L565ca0:
        .word   0x49249249
        .size   A_565a4c, . - A_565a4c

@ FUN_00565d14
        .global A_565d14
        .type   A_565d14, %function
A_565d14:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r7, r1
        mov     r6, r3
        mov     r4, #0
        str     r2, [r0, #0x18c]
L565d2c:
        add     r0, r5, r4, lsl #5
        add     r0, r0, #0xac
        bl      Fn_566600
        add     r4, r4, #1
        cmp     r4, #4
        blt     L565d2c
        ldr     r0, L565db8
        vldr    s0, [r0]
        add     r0, r5, #0x90
        bl      Fn_556438
        mov     r0, #0
        str     r0, [r5, #0x164]
        ldr     r0, [r5, #0x1a0]
        mov     r2, r6
        mov     r1, r7
        bl      Fn_55d140
        mov     r2, r6
        mov     r1, r7
        mov     r0, r5
        bl      Fn_565a4c
        ldrb    r1, [r5, #0x190]
        ldr     r0, [r5, #0x1a0]
        bl      Fn_55d238
        ldrb    r1, [r5, #0x191]
        ldr     r0, [r5, #0x1a0]
        bl      Fn_55d308
        ldrb    r1, [r5, #0x195]
        ldr     r0, [r5, #0x1a0]
        bl      Fn_55d854
        ldr     r0, [r5, #0x1a0]
        nop
        bl      Fn_55df40
        mov     r0, #1
        strb    r0, [r5, #0x131]
        pop     {r4, r5, r6, r7, r8, pc}
L565db8:
        .word   0x007ffb80
        .size   A_565d14, . - A_565d14

@ FUN_00566158
        .global A_566158
        .type   A_566158, %function
A_566158:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x135]
        cmp     r0, #0
        bne     L5661a4
        ldrb    r0, [r4, #0x90]
        cmp     r0, #4
        beq     L56619c
        ldr     r0, [r4, #0x1a0]
        cmp     r0, #0
        beq     L566194
        ldrb    r1, [r4, #0x134]
        cmp     r1, #0
        moveq   r1, #1
        bleq    Fn_55d328
L566194:
        mov     r0, #4
        strb    r0, [r4, #0x90]
L56619c:
        mov     r0, #0
        strb    r0, [r4, #0x130]
L5661a4:
        pop     {r4, pc}
        .size   A_566158, . - A_566158

@ FUN_005661a8
        .global A_5661a8
        .type   A_5661a8, %function
A_5661a8:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x90]
        cmp     r0, #4
        beq     L5661e0
        ldr     r0, [r4, #0x1a0]
        cmp     r0, #0
        beq     L5661d8
        ldrb    r1, [r4, #0x134]
        cmp     r1, #0
        moveq   r1, #1
        bleq    Fn_55d328
L5661d8:
        mov     r0, #4
        strb    r0, [r4, #0x90]
L5661e0:
        mov     r0, #0
        strb    r0, [r4, #0x130]
        pop     {r4, pc}
        .size   A_5661a8, . - A_5661a8

@ FUN_005661ec
        .global A_5661ec
        .type   A_5661ec, %function
A_5661ec:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #8
        mov     r7, r0
        mov     sl, r1
        ldr     r0, [r0, #0xc]
        ldr     r0, [r0, #0x1a0]
        cmp     r0, #0
        beq     L56634c
        ldr     fp, [r0, #8]
        mov     r0, #0
        mov     r8, r0
        cmp     fp, #0
        str     r0, [sp]
        ble     L56634c
L566224:
        add     r0, r8, r8, lsl #1
        mov     r4, #0
        lsl     r6, r0, #4
L566230:
        ldr     r0, [r7, #0xc]
        add     r1, r4, r4, lsl #1
        add     r1, r6, r1, lsl #3
        add     r5, r1, r0
        ldrb    r1, [r5, #0x11]
        cmp     r1, #0
        cmpne   r1, #3
        beq     L566294
        ldr     sb, [r5]
        ldr     r0, [r0, #0x1a0]
        bl      Fn_639dd0
        ldr     r2, [r5, #4]
        mov     r1, r0
        mov     r0, r2
        bl      Fn_55ccf8
        add     r0, r0, sb
        cmp     sl, r0
        bhi     L566294
        ldr     r1, [r5]
        ldr     r0, [sp, #0x10]
        cmp     r1, r0
        bhi     L566294
        mov     r0, #1
        str     r0, [sp]
        b       L5662a0
L566294:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L566230
L5662a0:
        add     r8, r8, #1
        cmp     fp, r8
        bgt     L566224
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L56634c
        ldr     r0, [r7, #0xc]
        mov     r5, #0
        ldr     r3, [r0, #0x198]
        cmp     r3, #0
        beq     L5662e0
        ldr     r2, [r0, #0x19c]
        mov     r1, #3
        blx     r3
        ldr     r0, [r7, #0xc]
        str     r5, [r0, #0x198]
L5662e0:
        ldr     r4, [r7, #0xc]
        ldr     r0, [r4, #0x1a0]
        cmp     r0, #0
        beq     L56634c
        bl      Fn_55dd2c
        ldr     r0, [r4, #0x1a0]
        nop
        bl      Fn_55dcc4
        ldr     r3, [r4, #0x198]
        str     r5, [r4, #0x1a0]
        strb    r5, [r4, #0x130]
        cmp     r3, #0
        strb    r5, [r4, #0x131]
        beq     L566328
        ldr     r2, [r4, #0x19c]
        mov     r1, #0
        mov     r0, r4
        blx     r3
L566328:
        ldrb    r0, [r4, #0x132]
        cmp     r0, #0
        beq     L56634c
        strb    r5, [r4, #0x132]
        bl      Fn_561354
        add     sp, sp, #0x14
        mov     r1, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        b       Fn_561480
L56634c:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_5661ec, . - A_5661ec

@ FUN_00566354
        .global A_566354
        .type   A_566354, %function
A_566354:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, #0
        add     r5, r4, #0x198
        str     r6, [r4, #0x1a4]
        stm     r5, {r1, r2}
        mov     r3, #1
        strb    r6, [r4, #0x130]
        strb    r3, [r4, #0x133]
        strb    r6, [r4, #0x134]
        strb    r6, [r4, #0x135]
        strb    r6, [r4, #0x7c]
        str     r6, [r4, #0x78]
        mov     r0, #0x3c
        str     r6, [r4, #0x18c]
        strb    r0, [r4, #0x192]
        vldr    s1, L566470
        strb    r0, [r4, #0x193]
        vldr    s0, L566474
        vstr    s1, [r4, #0x16c]
        vstr    s0, [r4, #0x170]
        add     r0, r4, #0x174
        mov     r1, #0xff
        vstmia  r0, {s0, s1}
        add     r0, r4, #0x184
        vstmia  r0, {s0, s1}
        add     r0, r4, #0x17c
        vstr    s1, [r4, #0x138]
        vstr    s0, [r4, #0x15c]
        vstr    s1, [r4, #0x13c]
        vstr    s0, [r4, #0x140]
        vstr    s0, [r4, #0x144]
        vstr    s0, [r4, #0x148]
        strb    r6, [r4, #0x136]
        vstr    s0, [r4, #0x14c]
        vstr    s0, [r4, #0x150]
        vstr    s0, [r4, #0x154]
        vstr    s0, [r4, #0x158]
        strb    r1, [r4, #0x17c]
        strb    r1, [r4, #0x17d]
        strh    r6, [r0, #2]
        strh    r6, [r0, #4]
        ldr     r0, L566478
        vstr    s0, [r4, #0x160]
        str     r6, [r4, #0x168]
        str     r6, [r4, #0x164]
        vldr    s0, [r0]
        add     r0, r4, #0x90
        bl      Fn_556364
        mov     r5, #0
L56641c:
        add     r0, r4, r5, lsl #5
        add     r0, r0, #0xac
        bl      Fn_557e3c
        add     r0, r4, r5
        add     r5, r5, #1
        cmp     r5, #4
        strb    r6, [r0, #0x12c]
        blt     L56641c
        ldr     r0, L56647c
        strb    r6, [r4, #0x190]
        strb    r6, [r4, #0x191]
        strb    r6, [r4, #0x194]
        ldrb    r1, [r0, #2]
        mov     r0, #0
        cmp     r1, #0
        moveq   r0, #2
        beq     L566468
        cmp     r1, #1
        moveq   r0, #1
L566468:
        strb    r0, [r4, #0x195]
        pop     {r4, r5, r6, pc}
L566470:
        .word   0x3f800000
L566474:
        .word   0x00000000
L566478:
        .word   0x007ffb80
L56647c:
        .word   0x009dfe08
        .size   A_566354, . - A_566354

@ FUN_00566480
        .global A_566480
        .type   A_566480, %function
A_566480:
        push    {r4, r5, r6, lr}
        mov     r3, #4
        ldr     r1, L566510
        mov     r2, #0x18
        blx     Fn_0000ac_t
        mov     r2, r0
        add     r1, r0, #0x80
        mov     r5, #0
        str     r5, [r0, #0x84]!
        str     r5, [r0, #4]
        ldr     r0, L566514
        str     r0, [r1], #0xc
        add     r0, r2, #0x90
        str     r2, [r1]
        bl      Fn_556610
        ldr     r1, L566518
        mov     r3, #4
        mov     r2, #0x20
        add     r0, r0, #0x1c
        blx     Fn_0000ac_t
        strb    r5, [r0, #0x84]
        strb    r5, [r0, #0x85]
        sub     r4, r0, #0xac
        strb    r5, [r0, #0x86]
        strb    r5, [r0, #0xd0]!
        strb    r5, [r0, #1]
        strh    r5, [r0, #2]
        strh    r5, [r0, #4]
        str     r5, [r4, #0x1a0]
        str     r5, [r4, #0x1a8]
        str     r5, [r4, #0x1ac]
        bl      Fn_565778
        add     r1, r4, #0x80
        bl      Fn_5657cc
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L566510:
        .word   0x00611ec0
L566514:
        .word   0x0082d094
L566518:
        .word   0x006666e8
        .size   A_566480, . - A_566480

@ FUN_00566538
        .global A_566538
        .type   A_566538, %function
A_566538:
        mov     r3, r0
        mov     r0, r1
        ldrb    r1, [r3, r0]!
        cmp     r1, #0xfe
        movne   r1, #1
        strne   r1, [r2]
        bne     L56656c
        ldrb    r1, [r3, #1]
        ldrb    r3, [r3, #2]
        add     r0, r0, #3
        orr     r1, r3, r1, lsl #8
        orr     r1, r1, #1
        str     r1, [r2]
L56656c:
        bx      lr
        .size   A_566538, . - A_566538

@ FUN_00566600
        .global A_566600
        .type   A_566600, %function
A_566600:
        vldr    s0, L566624
        vldr    s1, L566628
        add     r2, r0, #0x14
        mov     r1, #0
        vstmia  r2, {s0, s1}
        str     r1, [r0, #0x10]
        strb    r1, [r0, #0x1c]
        strb    r1, [r0, #0x1d]
        bx      lr
L566624:
        .word   0x00000000
L566628:
        .word   0x3f800000
        .size   A_566600, . - A_566600

@ FUN_005666e8
        .global A_5666e8
        .type   A_5666e8, %function
A_5666e8:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_557e3c
        mov     r0, #0
        vldr    s0, L56671c
        vldr    s1, L566720
        add     r1, r4, #0x14
        str     r0, [r4, #0x10]
        vstmia  r1, {s0, s1}
        strb    r0, [r4, #0x1c]
        strb    r0, [r4, #0x1d]
        mov     r0, r4
        pop     {r4, pc}
L56671c:
        .word   0x00000000
L566720:
        .word   0x3f800000
        .size   A_5666e8, . - A_5666e8

@ FUN_00566790
        .global A_566790
        .type   A_566790, %function
A_566790:
        ldr     r3, [r0]
        add     r2, r2, r1
        cmp     r3, #0
        beq     L5667c0
L5667a0:
        cmp     r1, r3
        cmpls   r3, r2
        ldrlo   ip, [r3]
        movhs   r0, r3
        strlo   ip, [r0]
        ldr     r3, [r3]
        cmp     r3, #0
        bne     L5667a0
L5667c0:
        bx      lr
        .size   A_566790, . - A_566790

@ FUN_0056689c
        .global A_56689c
        .type   A_56689c, %function
A_56689c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r1, #0
        bl      Fn_566934
        mov     r7, r0
        mov     r8, #0
L5668b4:
        ldr     r0, [r6, #4]
        cmp     r0, #0
        beq     L566930
        ldr     r5, [r6, #0xc]
        cmp     r7, #0
        strbne  r8, [r5, #0x14]
        ldrb    r0, [r5, #0x14]
        cmp     r0, #0
        addne   r4, r5, #0xc
        beq     L566908
L5668dc:
        ldr     r0, [r5, #0xc]
        cmp     r4, r0
        beq     L566908
        ldr     r4, [r4, #4]
        ldr     r3, [r4, #0x10]
        cmp     r3, #0
        beq     L5668dc
        ldr     r2, [r4, #0x14]
        ldrd    r0, r1, [r4, #8]
        blx     r3
        b       L5668dc
L566908:
        ldr     r1, [r5, #0xc]
        add     r2, r5, #0xc
        add     r0, r5, #8
        bl      Fn_5421a0
        mov     r1, r5
        add     r0, r6, #4
        bl      Fn_5421f4
        nop
        nop
        b       L5668b4
L566930:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_56689c, . - A_56689c

@ FUN_00566934
        .global A_566934
        .type   A_566934, %function
A_566934:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     r3, r0
        mov     r0, #0
        mov     ip, #0
        str     r0, [sp]
        str     ip, [sp, #4]
        ldr     fp, [r3, #8]
        ldr     sl, [r3, #4]
        mov     sb, r0
        add     ip, r3, #8
        cmp     ip, fp
        mov     r0, #1
        beq     L566a28
L56696c:
        ldr     r8, [ip, #4]
        cmp     sb, #0
        sub     sl, sl, #1
        mov     ip, r8
        add     lr, r8, #8
        bne     L5669a8
        ldr     r3, [lr]
        cmp     r3, #0
        beq     L5669a8
        ldr     r2, [lr, #8]
        add     r3, r2, #8
        ldr     r6, [r2, #0x10]
        ldm     r3, {r3, r4}
        ldr     r2, [r2, #0x14]
        add     sb, r3, r4
L5669a8:
        ldr     r3, [lr, #4]
        add     r4, lr, #4
        cmp     r3, r4
        beq     L5669e8
L5669b8:
        mov     r4, r3
        ldr     r3, [r3]
        ldr     r7, [r4, #0x10]
        ldr     r4, [r4, #0x14]
        cmp     r6, r7
        cmpeq   r2, r4
        beq     L5669dc
        mov     r0, #0
        b       L5669e8
L5669dc:
        add     r4, lr, #4
        cmp     r3, r4
        bne     L5669b8
L5669e8:
        cmp     sl, r1
        bne     L5669f8
        str     ip, [sp]
        b       L566a00
L5669f8:
        cmp     ip, fp
        bne     L56696c
L566a00:
        cmp     sb, #0
        cmpne   r0, #0
        beq     L566a28
        cmp     r6, #0
        beq     L566a20
        ldr     r0, [sp]
        sub     r1, sb, r0
        blx     r6
L566a20:
        mov     r0, #1
        str     r0, [sp, #4]
L566a28:
        ldr     r0, [sp, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_566934, . - A_566934

@ FUN_00566a34
        .global A_566a34
        .type   A_566a34, %function
A_566a34:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        add     r0, r1, #0x1f
        mov     r4, r1
        bic     r0, r0, #0x1f
        mov     r7, r2
        add     r1, r0, #0x20
        ldr     r0, [r5]
        mov     r8, r3
        mov     r2, #0x20
        bl      Fn_542454
        cmp     r0, #0
        beq     L566aa0
        mov     r1, #0
        add     r2, r0, #4
        add     r6, r0, #0x20
        str     r1, [r0]
        stm     r2, {r1, r6}
        add     r1, r0, #0xc
        mov     r2, r0
        stm     r1, {r4, r7, r8}
        ldr     r1, [r5, #0xc]
        add     r3, r1, #8
        add     r1, r1, #0xc
        mov     r0, r3
        bl      Fn_542230
        mov     r0, r6
L566aa0:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_566a34, . - A_566a34

@ FUN_00566ca0
        .global A_566ca0
        .type   A_566ca0, %function
A_566ca0:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L566cd8
        mov     r0, r4
        bl      Fn_56689c
        ldr     r0, [r4]
        mov     r1, #3
        bl      Fn_541ee0
        ldr     r0, [r4]
        bl      Fn_5425a0
        mov     r1, #0
        str     r1, [r4]
L566cd8:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_566ca0, . - A_566ca0

@ FUN_00566d1c
        .global A_566d1c
        .type   A_566d1c, %function
A_566d1c:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x38]
        cmp     r0, #0
        bne     L566d84
        ldr     r5, [r4, #0x34]
        cmn     r5, #1
        beq     L566d84
        mov     r0, #0
        str     r0, [sp]
        add     r0, r4, #0x1c
        mov     r3, #2
        ldm     r0, {r0, r2}
        mov     r1, r5
        add     r0, r0, #0xc
        bl      Fn_55b114
        cmp     r0, #0
        bne     L566d70
        ldr     ip, [r4, #0x24]
        cmp     ip, #0
        bne     L566ddc
L566d70:
        ldr     r0, [r4, #0x1c]
        mov     r1, r5
        add     r0, r0, #0xc
        bl      Fn_638d54
        str     r0, [r4, #0x38]
L566d84:
        ldr     r0, [r4, #0x2c]
        ldr     r2, [r4, #0x30]
        cmp     r0, #0
        addne   r3, r0, #0xc
        moveq   r3, #0
        ldrd    r0, r1, [r4, #0x38]
        bl      Fn_55cf18
        movs    r2, r0
        nop
        bne     L566e18
        add     r0, r4, #0x1c
        add     r1, r4, #0x38
        ldm     r0, {r0, r3}
        ldm     r1, {r1, r2}
        add     r0, r0, #0xc
        bl      Fn_55aabc
        cmp     r0, #0
        nop
        bne     L566df8
        ldr     ip, [r4, #0x24]
        cmp     ip, #0
        beq     L566df8
L566ddc:
        ldr     r3, [r4, #0x28]
        mov     r2, #0
        add     sp, sp, #4
        mov     r1, r2
        pop     {r4, r5, lr}
        mov     r0, r2
        bx      ip
L566df8:
        ldr     r0, [r4, #0x1c]
        ldr     r2, [r4, #0x30]
        cmp     r0, #0
        addne   r3, r0, #0xc
        moveq   r3, #0
        ldrd    r0, r1, [r4, #0x38]
        bl      Fn_55cf18
        mov     r2, r0
L566e18:
        ldr     ip, [r4, #0x24]
        cmp     ip, #0
        beq     L566e3c
        ldr     r3, [r4, #0x28]!
        mov     r0, #1
        ldr     r1, [r4, #0x10]
        add     sp, sp, #4
        pop     {r4, r5, lr}
        bx      ip
L566e3c:
        pop     {r3, r4, r5, pc}
        .size   A_566d1c, . - A_566d1c

@ FUN_00566e78
        .global A_566e78
        .type   A_566e78, %function
A_566e78:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r2, #0x24
        str     r1, [r0, #0xc]
        strb    r2, [r0, #4]
        add     r2, r0, #0x10
        add     r1, r5, #0x104
        stm     r2, {r1, r6}
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55bd58
        .size   A_566e78, . - A_566e78

@ FUN_00566ec0
        .global A_566ec0
        .type   A_566ec0, %function
A_566ec0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        ldr     r6, [r0, #4]
        mov     r7, r2
        cmp     r6, #0
        moveq   r0, #0
        beq     L566fc0
        ldr     r1, [r5]
        add     r0, r4, #0x1ec
        bl      Fn_559f8c
        add     r2, r4, #0x1c8
        add     r1, r4, #0x1ec
        stm     r2, {r1, r6}
        add     r2, r4, #0x1d0
        ldr     r1, L566fc4
        add     r3, r4, #0x1e0
        add     r8, r4, #0x450
        stm     r2, {r1, r4}
        mov     r0, #1
        ldr     r1, [r5, #4]
        str     r1, [r4, #0x1d8]
        ldr     r1, [r5]
        str     r1, [r4, #0x1dc]
        ldr     r2, [r5, #8]
        ldm     r2, {r1, r2}
        stm     r3, {r1, r2}
        ldr     r1, [r7]
        str     r1, [r4, #0x1e8]
        ldm     r7, {r1, r2, r3}
        stm     r8, {r1, r2, r3}
        strb    r0, [r4, #0x468]
        mov     r0, r6
        bl      Fn_5568a8
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #7
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        add     r2, r4, #0x1ac
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #0x39
        strb    r1, [r0, #4]
        str     r2, [r0, #0x18]
        bl      Fn_55e338
        add     r0, r0, #0x1c4
        bl      Fn_0244c8
        ldr     r0, [r4, #0x464]
        add     r2, r4, #0x400
        add     r2, r2, #0x64
        add     r1, r0, #1
        mov     r0, r5
        add     r5, r5, #0x10
        str     r1, [r4, #0x464]
        stm     r5, {r1, r2}
        mov     r1, r0
        mov     r0, r6
        bl      Fn_55bd58
        str     r0, [r4, #0x46c]
        bl      Fn_55e338
        add     r0, r0, #0x1c4
        bl      Fn_024568
        mov     r0, #1
L566fc0:
        pop     {r4, r5, r6, r7, r8, pc}
L566fc4:
        .word   0x006670b8
        .size   A_566ec0, . - A_566ec0

@ FUN_00566fc8
        .global A_566fc8
        .type   A_566fc8, %function
A_566fc8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r2, #0x25
        str     r1, [r0, #0xc]
        add     r1, r5, #0x104
        strb    r2, [r0, #4]
        str     r1, [r0, #0x10]
        mov     r1, r0
        strb    r6, [r0, #0x14]
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55bd58
        .size   A_566fc8, . - A_566fc8

@ FUN_00567010
        .global A_567010
        .type   A_567010, %function
A_567010:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r1, [r0, #0x9c]
        ldr     r2, [r0, #0x50]
        ldr     r5, [r0, #0x1a8]
        add     r1, r1, r2
        usat    r6, #7, r1
        add     r1, r0, #0xe4
        add     r0, r5, #8
        bl      Fn_5421f4
        ldr     r1, [r5, #0xc]
        add     r2, r5, #0xc
        mov     r0, r4
        cmp     r1, r2
        beq     L56708c
L56704c:
        ldrb    r4, [r1, #-0x48]
        ldr     r2, [r1, #-0x94]
        mov     ip, #0x7f
        mov     r3, #0
        add     r2, r2, r4
        cmp     r2, #0x7f
        movgt   r2, ip
        bgt     L567074
        cmp     r2, #0
        movlt   r2, r3
L567074:
        cmp     r2, r6
        bgt     L56708c
        ldr     r1, [r1]
        add     r2, r5, #0xc
        cmp     r1, r2
        bne     L56704c
L56708c:
        add     r2, r0, #0xe4
        add     r0, r5, #8
        pop     {r4, r5, r6, lr}
        b       Fn_542230
        .size   A_567010, . - A_567010

@ FUN_005670d4
        .global A_5670d4
        .type   A_5670d4, %function
A_5670d4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        mov     r7, r1
        mov     r8, r2
        ldr     r6, [sp, #0x20]
        mov     r5, r3
        bl      Fn_55bca4
        mov     sb, r0
        mov     r1, #0xb
        bl      Fn_55bb2c
        ldr     r1, [sb, #0x184]
        mov     r2, #0x23
        add     r3, r4, #0x104
        str     r1, [r0, #0xc]
        mov     r1, r0
        strb    r2, [r0, #4]
        add     r0, r0, #0x10
        stm     r0, {r3, r7, r8}
        mov     r0, sb
        ldr     r2, [r5]
        str     r2, [r1, #0x1c]
        ldrb    r2, [r5, #4]
        str     r2, [r1, #0x20]
        ldr     r2, [r5, #8]
        str     r2, [r1, #0x24]
        strb    r6, [r1, #0x28]
        bl      Fn_55bd58
        add     r1, r4, #0x400
        add     r1, r1, #0x5c
        mov     r0, #1
        stm     r1, {r7, r8}
        strb    r6, [r4, #0x46b]
        strb    r0, [r4, #0x46a]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_5670d4, . - A_5670d4

@ FUN_0056715c
        .global A_56715c
        .type   A_56715c, %function
A_56715c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r0, r0, #0x400
        ldrb    r1, [r0, #0x69]
        cmp     r1, #0
        beq     L567240
        mov     r6, #0
        strb    r6, [r4, #0x469]
        ldrb    r0, [r0, #0x68]
        cmp     r0, #1
        bne     L5671e4
        ldr     r0, [r4, #0x46c]
        cmn     r0, #1
        beq     L5671c4
        bl      Fn_55bca4
        ldr     r1, [r4, #0x46c]
        mov     r5, r0
        bl      Fn_639098
        cmp     r0, #0
        bne     L5671c4
        mov     r1, #1
        mov     r0, r5
        bl      Fn_55bd7c
        ldr     r1, [r4, #0x46c]
        mov     r0, r5
        bl      Fn_55bfe4
L5671c4:
        nop
        bl      Fn_557434
        add     r1, r4, #0x1ac
        nop
        bl      Fn_5572b0
        add     r0, r4, #0x1b8
        nop
        bl      Fn_01b274
L5671e4:
        str     r6, [r4, #0x45c]
        str     r6, [r4, #0x460]
        mov     r0, #0xff
        strb    r6, [r4, #0x46a]
        strb    r0, [r4, #0x46b]
        mov     r0, r4
        bl      Fn_5560b4
        add     r0, r4, #0x1ec
        nop
        bl      Fn_55c1bc
        ldr     r5, [r4, #0x1a8]
        add     r1, r4, #0xe4
        add     r0, r5, #8
        bl      Fn_5421f4
        ldr     r0, [r4]
        ldr     r1, [r0, #0x10]
        mov     r0, r4
        blx     r1
        add     r0, r5, #0x14
        add     r1, r5, #0x18
        add     r2, r4, #0xe4
        pop     {r4, r5, r6, lr}
        b       Fn_542230
L567240:
        pop     {r4, r5, r6, pc}
        .size   A_56715c, . - A_56715c

@ FUN_00567244
        .global A_567244
        .type   A_567244, %function
A_567244:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        add     r0, r0, #0x400
        ldrb    r1, [r0, #0x68]
        cmp     r1, #2
        beq     L567280
        ldrb    r0, [r0, #0x68]
        cmp     r0, #4
        bne     L56727c
        mov     r1, #0
        mov     r0, r4
        bl      Fn_55590c
        mov     r0, #0
L567278:
        strb    r0, [r4, #0x468]
L56727c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L567280:
        add     r6, r4, #0x400
        add     r6, r6, #0x5c
        mov     r8, #0
        ldm     r6, {r6, r7}
        add     r5, r4, #0x450
        bl      Fn_55bca4
        mov     sb, r0
        mov     r1, #0xb
        bl      Fn_55bb2c
        ldr     r1, [sb, #0x184]
        mov     r2, #0x23
        add     r3, r4, #0x104
        str     r1, [r0, #0xc]
        mov     r1, r0
        strb    r2, [r0, #4]
        add     r0, r0, #0x10
        stm     r0, {r3, r6, r7}
        mov     r0, sb
        ldr     r2, [r5]
        str     r2, [r1, #0x1c]
        ldrb    r2, [r5, #4]
        str     r2, [r1, #0x20]
        ldr     r2, [r5, #8]
        str     r2, [r1, #0x24]
        strb    r8, [r1, #0x28]
        bl      Fn_55bd58
        add     r1, r4, #0x400
        add     r1, r1, #0x5c
        mov     r0, #1
        stm     r1, {r6, r7}
        strb    r8, [r4, #0x46b]
        strb    r0, [r4, #0x46a]
        mov     r0, #3
        b       L567278
        .size   A_567244, . - A_567244

@ FUN_00567388
        .global A_567388
        .type   A_567388, %function
A_567388:
        ldr     r1, L5673b4
        push    {r4, lr}
        str     r1, [r0], #0x1ec
        bl      Fn_55c284
        sub     r0, r0, #0x40
        bl      Fn_55c998
        ldr     r1, L5673b8
        str     r1, [r0, #-0xa8]!
        pop     {r4, lr}
        sub     r0, r0, #0x104
        b       Fn_2024b0
L5673b4:
        .word   0x0082d0d4
L5673b8:
        .word   0x0082cf90
        .size   A_567388, . - A_567388

@ FUN_005673bc
        .global A_5673bc
        .type   A_5673bc, %function
A_5673bc:
        ldr     r1, L5673e4
        push    {r4, lr}
        str     r1, [r0], #0x1ec
        bl      Fn_55c284
        sub     r0, r0, #0x40
        bl      Fn_55c998
        ldr     r1, L5673e8
        str     r1, [r0, #-0xa8]!
        sub     r0, r0, #0x104
        pop     {r4, pc}
L5673e4:
        .word   0x0082d0d4
L5673e8:
        .word   0x0082cf90
        .size   A_5673bc, . - A_5673bc

@ FUN_005673ec
        .global A_5673ec
        .type   A_5673ec, %function
A_5673ec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x2e
        strb    r1, [r0, #4]
        add     r1, r0, #0x10
        stm     r1, {r5, r6}
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55bd58
        .size   A_5673ec, . - A_5673ec

@ FUN_00567430
        .global A_567430
        .type   A_567430, %function
A_567430:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        add     r6, r0, #4
        mov     r5, r1
        mov     r0, r6
        bl      Fn_0244c8
        mov     r7, r5
        add     r5, r4, #4
        ldr     sb, L567490
        mov     r8, #0
        mov     r0, r5
        bl      Fn_0244c8
        mov     r3, r8
        mov     r2, sb
        mov     r1, r7
        add     r0, r4, #0x10
        bl      Fn_566a34
        mov     r4, r0
        mov     r0, r5
        bl      Fn_024568
        mov     r0, r6
        bl      Fn_024568
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L567490:
        .word   0x006673ec
        .size   A_567430, . - A_567430

@ FUN_00567568
        .global A_567568
        .type   A_567568, %function
A_567568:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r5, r4, #4
        ldr     r0, L56760c
        str     r0, [r4]
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        movne   r6, r4
        beq     L5675f8
        add     r7, r6, #4
        mov     r0, r7
        bl      Fn_0244c8
        add     r0, r6, #0x10
        bl      Fn_5667ec
        mov     r0, r7
        bl      Fn_024568
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #1
        bl      Fn_55bd7c
        mov     r1, r0
        mov     r0, r6
        bl      Fn_55bfe4
        add     r0, r4, #0x10
        bl      Fn_566b28
        mov     r0, r5
        bl      Fn_024568
L5675dc:
        mvn     r0, #0
        str     r0, [r4, #0xc]
        add     r0, r4, #0x10
        bl      Fn_566ca0
        pop     {r4, r5, r6, r7, r8, lr}
        sub     r0, r0, #0x10
        b       Fn_2024b0
L5675f8:
        mov     r0, r5
        bl      Fn_024568
        nop
        nop
        b       L5675dc
L56760c:
        .word   0x0082d110
        .size   A_567568, . - A_567568

@ FUN_00567610
        .global A_567610
        .type   A_567610, %function
A_567610:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r5, r4, #4
        ldr     r0, L5676b0
        str     r0, [r4]
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        movne   r6, r4
        beq     L56769c
        add     r7, r6, #4
        mov     r0, r7
        bl      Fn_0244c8
        add     r0, r6, #0x10
        bl      Fn_5667ec
        mov     r0, r7
        bl      Fn_024568
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #1
        bl      Fn_55bd7c
        mov     r1, r0
        mov     r0, r6
        bl      Fn_55bfe4
        add     r0, r4, #0x10
        bl      Fn_566b28
        mov     r0, r5
        bl      Fn_024568
L567684:
        mvn     r0, #0
        str     r0, [r4, #0xc]
        add     r0, r4, #0x10
        bl      Fn_566ca0
        sub     r0, r0, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L56769c:
        mov     r0, r5
        bl      Fn_024568
        nop
        nop
        b       L567684
L5676b0:
        .word   0x0082d110
        .size   A_567610, . - A_567610

@ FUN_005679b8
        .global A_5679b8
        .type   A_5679b8, %function
A_5679b8:
        push    {r4, lr}
        mov     r4, r0
        vpush   {d8, d9}
        vmov.f32 s17, s0
        vmov.f32 s16, s1
        ldr     r0, [r0, #0x3c]
        ldr     r1, [r0]
        ldr     r1, [r1, #8]
        blx     r1
        vmov    s0, r0
        ldr     r0, [r4, #0x3c]
        ldr     r1, [r0]
        vcvt.f32.s32 s0, s0
        ldr     r1, [r1, #0xc]
        vdiv.f32 s18, s17, s0
        blx     r1
        vmov    s0, r0
        vstr    s18, [r4, #0x24]
        vcvt.f32.s32 s1, s0
        vdiv.f32 s0, s16, s1
        vstr    s0, [r4, #0x28]
        vpop    {d8, d9}
        pop     {r4, pc}
        .size   A_5679b8, . - A_5679b8

@ FUN_00567d88
        .global A_567d88
        .type   A_567d88, %function
A_567d88:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        vpush   {d8, d9}
        sub     sp, sp, #0x20
        mov     r1, #1
        ldr     r4, [r0, #0x40]
        ldr     r2, L568030
        ldr     r0, [r4, #0x78]!
        bl      Fn_67054c
        ldr     r2, L568030
        ldr     r0, [r4, #4]
        mov     r1, #1
        bl      Fn_67054c
        cmp     r6, #0
        ldrne   r2, L568034
        ldreq   r2, L568038
        ldr     r0, [r4, #8]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L56803c
        ldr     r0, [r4, #0xc]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r0, [r4, #0x10]
        mov     r1, #0x2100
        bl      Fn_665970
        ldr     r0, [r4, #0x14]
        mov     r1, #0x2100
        bl      Fn_665970
        vldr    s18, L568040
        ldr     r0, [r4, #0x18]
        vmov.f32 s0, s18
        bl      Fn_665938
        vmov.f32 s0, s18
        ldr     r0, [r4, #0x1c]
        bl      Fn_665938
        vldr    s17, L568044
        add     r0, sp, #8
        vstr    s17, [sp]
        vstr    s17, [sp, #4]
        vldr    s16, L568048
        vstmia  r0, {s17, s18}
        ldr     r0, [r5, #4]
        ldrb    r1, [r5, #0x49]
        lsr     r2, r0, #0x18
        vmov    s0, r1
        vmov    s1, r2
        lsl     r2, r0, #8
        lsl     r3, r0, #0x10
        and     r1, r0, #0xff
        lsr     r0, r3, #0x18
        vcvt.f32.u32 s0, s0
        vcvt.f32.u32 s1, s1
        lsr     r2, r2, #0x18
        vmov    s2, r2
        mov     r2, sp
        vcvt.f32.u32 s2, s2
        vmul.f32 s4, s0, s16
        vmul.f32 s3, s1, s16
        vmov    s0, r1
        vmov    s1, r0
        mov     r1, #1
        vcvt.f32.u32 s0, s0
        vcvt.f32.u32 s1, s1
        vmul.f32 s2, s2, s16
        vmul.f32 s3, s3, s4
        vmul.f32 s0, s0, s16
        vmul.f32 s1, s1, s16
        vstmia  sp, {s0, s1, s2, s3}
        ldr     r0, [r4, #0x20]
        bl      Fn_6659f4
        ldr     r2, L56804c
        ldr     r0, [r4, #0x24]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L56804c
        ldr     r0, [r4, #0x28]
        mov     r1, #1
        bl      Fn_67054c
        cmp     r6, #0
        ldrne   r2, L568038
        ldreq   r2, L568034
        ldr     r0, [r4, #0x2c]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L568050
        ldr     r0, [r4, #0x30]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r6, L568054
        ldr     r0, [r4, #0x34]
        mov     r1, r6
        bl      Fn_665970
        ldr     r0, [r4, #0x38]
        mov     r1, r6
        bl      Fn_665970
        vmov.f32 s0, s18
        ldr     r0, [r4, #0x3c]
        bl      Fn_665938
        vmov.f32 s0, s18
        ldr     r0, [r4, #0x40]
        bl      Fn_665938
        vstr    s17, [sp, #0x10]
        vstr    s17, [sp, #0x14]
        add     r0, sp, #0x18
        vstmia  r0, {s17, s18}
        ldrb    r1, [r5, #0x49]
        ldr     r0, [r5]
        vmov    s0, r1
        lsr     r2, r0, #0x18
        vmov    s1, r2
        lsl     r1, r0, #0x10
        lsl     r3, r0, #8
        vcvt.f32.u32 s0, s0
        lsr     r1, r1, #0x18
        and     r0, r0, #0xff
        vcvt.f32.u32 s1, s1
        vmov    s2, r0
        lsr     r2, r3, #0x18
        vmul.f32 s3, s0, s16
        vmov    s0, r1
        mov     r1, #1
        vmul.f32 s4, s1, s16
        vmov    s1, r2
        add     r2, sp, #0x10
        vcvt.f32.u32 s5, s0
        vcvt.f32.u32 s0, s2
        vcvt.f32.u32 s1, s1
        vmul.f32 s3, s4, s3
        vmul.f32 s2, s5, s16
        vmul.f32 s0, s0, s16
        vmul.f32 s1, s1, s16
        vstr    s0, [sp, #0x10]
        vstr    s2, [sp, #0x14]
        vstr    s1, [sp, #0x18]
        vstr    s3, [sp, #0x1c]
        ldr     r0, [r4, #0x44]
        bl      Fn_6659f4
        ldr     r2, L568058
        ldr     r0, [r4, #0x48]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L568058
        ldr     r0, [r4, #0x4c]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L568038
        ldr     r0, [r4, #0x50]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L56803c
        ldr     r0, [r4, #0x54]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r0, [r4, #0x58]
        mov     r1, #0x2100
        bl      Fn_665970
        ldr     r0, [r4, #0x5c]
        mov     r1, #0x2100
        bl      Fn_665970
        vmov.f32 s0, s18
        ldr     r0, [r4, #0x60]
        bl      Fn_665938
        vmov.f32 s0, s18
        ldr     r0, [r4, #0x64]
        bl      Fn_665938
        add     sp, sp, #0x20
        vpop    {d8, d9}
        pop     {r4, r5, r6, pc}
L568030:
        .word   0x007ebc08
L568034:
        .word   0x007ebc20
L568038:
        .word   0x007ebc14
L56803c:
        .word   0x007ebc2c
L568040:
        .word   0x3f800000
L568044:
        .word   0x00000000
L568048:
        .word   0x3b808081
L56804c:
        .word   0x007ebc38
L568050:
        .word   0x007ebc44
L568054:
        .word   0x00006401
L568058:
        .word   0x007ebc50
        .size   A_567d88, . - A_567d88

@ FUN_0056812c
        .global A_56812c
        .type   A_56812c, %function
A_56812c:
        push    {r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r1, #0
        vpush   {d8}
        sub     sp, sp, #0xc
        ldr     r0, [r0, #0x40]
        str     r1, [r0, #0xe4]
        ldr     r0, [r4, #0x40]
        add     r5, r0, #0x58
        ldr     r0, [r0, #0x60]
        bl      Fn_665970
        ldr     r0, [r5, #0xc]
        ldr     r1, L5683b0
        bl      Fn_665970
        ldr     r0, L5683b4
        bl      Fn_65ee6c
        ldr     r0, [r5, #0x10]
        mov     r1, #0
        bl      Fn_665970
        ldr     r0, [r5, #0x14]
        mov     r1, #1
        bl      Fn_665970
        ldr     r0, [r5, #0x18]
        vldr    s0, L5683b8
        bl      Fn_665938
        ldr     r0, [r5, #0x1c]
        mov     r1, #0x204
        bl      Fn_665970
        ldr     r0, L5683bc
        bl      Fn_661d10
        ldr     r1, L5683c0
        sub     r0, r1, #1
        bl      Fn_65fe90
        ldr     r0, L5683c4
        bl      Fn_65fd10
        ldr     r0, L5683c8
        bl      Fn_65e970
        ldr     r0, [r4, #0x3c]
        mov     r5, #0
        cmp     r0, #0
        beq     L5681e8
        ldr     r1, [r0]
        ldr     r1, [r1, #0x20]
        blx     r1
        cmp     r0, #8
        cmpne   r0, #0xb
        moveq   r5, #1
L5681e8:
        ldrb    r0, [r4, #0x49]
        cmp     r0, #0xff
        bne     L568248
        ldr     r0, [r4]
        lsl     r1, r0, #0x10
        lsl     r2, r0, #0x18
        lsr     r1, r1, #0x18
        orr     r2, r2, r1, lsl #16
        lsl     r1, r0, #8
        lsr     r1, r1, #0x18
        orr     r1, r2, r1, lsl #8
        orrs    r0, r1, r0, lsr #24
        bne     L568248
        ldr     r0, [r4, #4]
        lsl     r1, r0, #0x10
        lsl     r2, r0, #0x18
        lsr     r1, r1, #0x18
        orr     r2, r2, r1, lsl #16
        lsl     r1, r0, #8
        lsr     r1, r1, #0x18
        orr     r1, r2, r1, lsl #8
        orr     r0, r1, r0, lsr #24
        cmn     r0, #1
        beq     L568260
L568248:
        mov     r1, r5
        mov     r0, r4
        bl      Fn_567d88
        nop
        nop
        b       L5682e8
L568260:
        ldr     r0, [r4, #0x40]
        cmp     r5, #0
        ldrne   r6, L5683cc
        add     r5, r0, #0x78
        ldr     r0, [r0, #0xc0]
        ldr     r2, L5683d0
        moveq   r6, #0x2100
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L5683d0
        ldr     r0, [r5, #0x4c]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L5683d4
        ldr     r0, [r5, #0x50]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L5683d8
        ldr     r0, [r5, #0x54]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r0, [r5, #0x58]
        mov     r1, r6
        bl      Fn_665970
        ldr     r0, [r5, #0x5c]
        mov     r1, #0x2100
        bl      Fn_665970
        vldr    s16, L5683dc
        ldr     r0, [r5, #0x60]
        vmov.f32 s0, s16
        bl      Fn_665938
        vmov.f32 s0, s16
        ldr     r0, [r5, #0x64]
        bl      Fn_665938
L5682e8:
        ldr     r0, L5683e0
        mov     r1, #0
        bl      Fn_65f090
        ldr     r0, L5683e4
        mov     r1, #0
        bl      Fn_65f090
        ldr     r0, [r4, #0x40]
        add     r5, r0, #8
        mov     r0, #0
        bl      Fn_661d18
        ldr     r7, L5683e8
        mov     r6, #0x14
        mov     r3, #0
        mov     r2, r7
        mov     r1, #2
        mov     r0, r3
        str     r5, [sp, #4]
        str     r6, [sp]
        bl      Fn_665fac
        mov     r0, #1
        nop
        bl      Fn_6612ec
        ldr     r0, [r4, #0x40]
        vldr    s0, [r4, #0x34]
        bl      Fn_665f6c
        mov     r0, #2
        nop
        bl      Fn_661d18
        add     r0, r5, #8
        str     r0, [sp, #4]
        mov     r3, #0
        sub     r2, r7, r6, asr #2
        mov     r1, #4
        mov     r0, #2
        str     r6, [sp]
        bl      Fn_665fac
        mov     r0, #3
        nop
        bl      Fn_661d18
        add     r0, r5, #0xc
        str     r0, [sp, #4]
        mov     r3, #0
        mov     r2, r7
        mov     r1, #2
        mov     r0, #3
        str     r6, [sp]
        bl      Fn_665fac
        add     sp, sp, #0xc
        vpop    {d8}
        pop     {r4, r5, r6, r7, pc}
L5683b0:
        .word   0x00000de1
L5683b4:
        .word   0x000084c0
L5683b8:
        .word   0x00000000
L5683bc:
        .word   0x00000be2
L5683c0:
        .word   0x00000303
L5683c4:
        .word   0x00008006
L5683c8:
        .word   0x00000bf2
L5683cc:
        .word   0x00001e01
L5683d0:
        .word   0x007ebbe4
L5683d4:
        .word   0x007ebbf0
L5683d8:
        .word   0x007ebbfc
L5683dc:
        .word   0x3f800000
L5683e0:
        .word   0x00008892
L5683e4:
        .word   0x00008893
L5683e8:
        .word   0x00001406
        .size   A_56812c, . - A_56812c

@ FUN_005684d4
        .global A_5684d4
        .type   A_5684d4, %function
A_5684d4:
        mov     r0, r0
        bx      lr
        .size   A_5684d4, . - A_5684d4

@ FUN_005685fc
        .global A_5685fc
        .type   A_5685fc, %function
A_5685fc:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r6, r1
        ldrb    r1, [r4, #0x25]
        ldr     r3, L568664
        add     r0, r0, #0x238
        mov     r7, #0
        lsl     r2, r1, #2
        ldr     ip, [r0, #0xc]
        lsl     r5, r2, #0x14
        lsl     r8, r2, #2
        sub     r2, r5, #0x100000
        orr     r2, r2, r3
        str     r2, [r0, #0xc]
        add     r1, r0, r1, lsl #4
        str     ip, [r0, #8]
        str     r7, [r1, #0xc]
        add     r5, r8, #0x10
        mov     r1, r0
        mov     r2, r5
        mov     r0, r6
        bl      Fn_20004c
        bic     r0, r5, #3
        add     r0, r0, r6
        strb    r7, [r4, #0x25]
        pop     {r4, r5, r6, r7, r8, pc}
L568664:
        .word   0x000f02c1
        .size   A_5685fc, . - A_5685fc

@ FUN_00568e7c
        .global A_568e7c
        .type   A_568e7c, %function
A_568e7c:
        ldr     r0, L568eb0
        mov     r2, #0
        str     r2, [r1], #4
        ldr     r2, L568eb4
        str     r0, [r1], #4
        ldr     r0, L568eb8
        mov     r3, #0x1000
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r1, #0x18
        vstmia  r1, {s0, s1, s2, s3}
        str     r2, [r1, #0x14]
        str     r3, [r1, #0x10]
        bx      lr
L568eb0:
        .word   0x0002006f
L568eb4:
        .word   0x000b0080
L568eb8:
        .word   0x007e925c
        .size   A_568e7c, . - A_568e7c

@ FUN_00569c24
        .global A_569c24
        .type   A_569c24, %function
A_569c24:
        push    {r4, r5, r6, lr}
        mov     r5, r2
        ldrb    r2, [r0, #0x24]
        mov     r4, r0
        cmp     r2, #0
        beq     L569c44
        bl      Fn_54773c
        mov     r1, r0
L569c44:
        mov     r2, r5
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_569c24, . - A_569c24

@ FUN_00569c54
        .global A_569c54
        .type   A_569c54, %function
A_569c54:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        tst     r2, #1
        mov     r0, r1
        bne     L569c84
        add     r1, r4, #0x14
        mov     r5, r0
        ldm     r1, {r1, r2}
        bl      Fn_202b20
        ldr     r0, [r4, #0x18]
        bic     r0, r0, #3
        add     r0, r0, r5
L569c84:
        pop     {r4, r5, r6, pc}
        .size   A_569c54, . - A_569c54

@ FUN_00569cc4
        .global A_569cc4
        .type   A_569cc4, %function
A_569cc4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4, #0x698]
        mov     r5, r2
        str     r0, [r4, #0x69c]
        mov     r2, #6
        str     r0, [r4, #0x694]
        strb    r2, [r4, #0x6a2]
        mov     r3, #1
        strb    r3, [r4, #0x6a0]
        mov     r3, r0
        mov     r2, r0
        mov     r0, r4
        bl      Fn_547154
        mov     r1, r0
        mov     r2, r5
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_569cc4, . - A_569cc4

@ FUN_00569d14
        .global A_569d14
        .type   A_569d14, %function
A_569d14:
        push    {r4, r5, r6, lr}
        tst     r2, #1
        mov     r4, r0
        mov     r6, #0
        bne     L569d70
        ldr     r0, L569d7c
        str     r6, [r1], #4
        ldr     r2, L569d80
        str     r0, [r1], #4
        ldr     r0, L569d84
        mov     r3, #0x1000
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r1, #0x18
        mov     r5, r0
        vstmia  r1, {s0, s1, s2, s3}
        str     r2, [r1, #0x14]
        add     r2, r4, #4
        str     r3, [r1, #0x10]
        ldm     r2, {r1, r2}
        bl      Fn_202b20
        ldr     r0, [r4, #8]
        bic     r0, r0, #3
        add     r1, r0, r5
L569d70:
        mov     r0, r1
        str     r6, [r4, #0x684]
        pop     {r4, r5, r6, pc}
L569d7c:
        .word   0x0002006f
L569d80:
        .word   0x000b0080
L569d84:
        .word   0x007e925c
        .size   A_569d14, . - A_569d14

@ FUN_00569e48
        .global A_569e48
        .type   A_569e48, %function
A_569e48:
        ldr     r1, L569e60
        str     r1, [r0]
        mov     r1, #0
        str     r1, [r0, #0x678]
        str     r1, [r0, #0x67c]
        b       Fn_2024b0
L569e60:
        .word   0x0082d124
        .size   A_569e48, . - A_569e48

@ FUN_00569e64
        .global A_569e64
        .type   A_569e64, %function
A_569e64:
        ldr     r1, L569e7c
        str     r1, [r0]
        mov     r1, #0
        str     r1, [r0, #0x678]
        str     r1, [r0, #0x67c]
        bx      lr
L569e7c:
        .word   0x0082d124
        .size   A_569e64, . - A_569e64

@ FUN_00569e80
        .global A_569e80
        .type   A_569e80, %function
A_569e80:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0xc
        mov     sb, r0
        ldr     r0, [r0, #8]
        ldr     r8, [sb, #0xc]
        ldr     r4, [r0, #8]
        ldr     r0, [sb]
        ldr     r1, [r0, #0x68]
        mov     r0, sb
        blx     r1
        mov     r6, #0
        subs    r7, r0, #0
        mov     r5, r6
        ble     L569ef8
L569eb8:
        ldrh    r2, [r4, #0x12]
        ldrh    r1, [r4, #0x10]
        ldrh    r0, [r4, #0xa]
        ldr     r3, [r4, #0x14]
        stm     sp, {r0, r1, r2}
        add     r0, r5, r5, lsl #2
        add     r3, r3, r6
        add     r0, r8, r0, lsl #2
        mov     r2, sb
        mov     r1, #0
        bl      Fn_56af44
        ldr     r0, [r4, #4]
        add     r5, r5, #1
        cmp     r7, r5
        add     r6, r6, r0
        bgt     L569eb8
L569ef8:
        ldr     r0, [r4, #4]
        mul     r1, r0, r7
        ldr     r0, [r4, #0x14]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, lr}
        b       Fn_025398
        .size   A_569e80, . - A_569e80

@ FUN_00569f10
        .global A_569f10
        .type   A_569f10, %function
A_569f10:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_63bd28
        sub     r1, r0, #0xff00
        subs    r1, r1, #0xff
        ldrne   r1, [r4, #8]
        strhne  r0, [r1, #2]
        movne   r0, #1
        moveq   r0, #0
        pop     {r4, pc}
        .size   A_569f10, . - A_569f10

@ FUN_00569f44
        .global A_569f44
        .type   A_569f44, %function
A_569f44:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        ldr     r1, [r0]
        ldr     r5, [r0, #0xc]
        ldr     r1, [r1, #0x68]
        blx     r1
        subs    r7, r0, #0
        mov     r4, #0
        movgt   r8, #0
        ble     L569f98
L569f68:
        add     r6, r4, r4, lsl #2
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        str     r0, [sp]
        beq     L569f8c
        mov     r1, sp
        mov     r0, #1
        bl      Fn_660bf8
        str     r8, [r5, r6, lsl #2]
L569f8c:
        add     r4, r4, #1
        cmp     r4, r7
        blt     L569f68
L569f98:
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
        .size   A_569f44, . - A_569f44

@ FUN_00569f9c
        .global A_569f9c
        .type   A_569f9c, %function
A_569f9c:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r8, r0
        ldr     r5, [r0, #0xc]
        mov     sb, #0
        cmp     r5, #0
        beq     L56a000
        ldr     r1, [r0]
        ldr     r1, [r1, #0x68]
        blx     r1
        subs    r7, r0, #0
        mov     r4, #0
        ble     L569ffc
L569fcc:
        add     r6, r4, r4, lsl #2
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        str     r0, [sp]
        beq     L569ff0
        mov     r1, sp
        mov     r0, #1
        bl      Fn_660bf8
        str     sb, [r5, r6, lsl #2]
L569ff0:
        add     r4, r4, #1
        cmp     r4, r7
        blt     L569fcc
L569ffc:
        str     sb, [r8, #0xc]
L56a000:
        ldr     r0, [r8, #4]
        str     sb, [r8, #4]
        str     sb, [r8, #8]
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
        .size   A_569f9c, . - A_569f9c

@ FUN_0056a010
        .global A_56a010
        .type   A_56a010, %function
A_56a010:
        ldr     r3, L56a040
        mov     r1, #0
        str     r1, [r0, #4]
        str     r3, [r0]
        str     r1, [r0, #8]
        str     r1, [r0, #0xc]
        strh    r1, [r0, #0x14]
        mvn     r2, #0
        mov     r1, #6
        strh    r2, [r0, #0x16]
        str     r1, [r0, #0x10]
        bx      lr
L56a040:
        .word   0x0082d148
        .size   A_56a010, . - A_56a010

@ FUN_0056a124
        .global A_56a124
        .type   A_56a124, %function
A_56a124:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, r1
        mvn     r2, #0
        str     r0, [r4]
        mov     r1, #0
        strh    r2, [r4, #6]
        strh    r1, [r4, #4]
        strb    r1, [r4, #9]
        str     r1, [r4, #0x18]
        str     r1, [r4, #0x1c]
        str     r1, [r4, #0x24]
        strb    r1, [r4, #8]
        add     r1, r0, r0, lsl #1
        add     r1, r1, r0, lsl #3
        add     r2, r0, #7
        add     r1, r4, r1, lsl #2
        add     r1, r1, #0x28
        str     r1, [r4, #0xc]
        add     r1, r1, r2, lsr #3
        add     r1, r1, #0xf
        bic     r1, r1, #0xf
        str     r1, [r4, #0x14]
        bl      Fn_56a110
        ldr     r1, [r4, #0x14]
        str     r0, [r4, #0x20]
        mov     r0, r4
        str     r1, [r4, #0x10]
        pop     {r4, pc}
        .size   A_56a124, . - A_56a124

@ FUN_0056aa74
        .global A_56aa74
        .type   A_56aa74, %function
A_56aa74:
        mov     r0, r0
        bx      lr
        .size   A_56aa74, . - A_56aa74

@ FUN_0056ac60
        .global A_56ac60
        .type   A_56ac60, %function
A_56ac60:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        ldr     r5, [r0, #0xc]
        mov     r6, r0
        cmp     r5, r4
        moveq   r0, r1
        beq     L56ac98
        cmp     r5, #0
        blne    Fn_569f44
        cmp     r4, #0
        movne   r0, r6
        str     r4, [r6, #0xc]
        blne    Fn_569e80
        mov     r0, r5
L56ac98:
        pop     {r4, r5, r6, pc}
        .size   A_56ac60, . - A_56ac60

@ FUN_0056ad7c
        .global A_56ad7c
        .type   A_56ad7c, %function
A_56ad7c:
        push    {r4, lr}
        ldr     r1, [r0, #4]
        mov     r4, r0
        ldr     r0, L56ada8
        cmp     r1, #0
        str     r0, [r4]
        movne   r0, r4
        blne    Fn_569f9c
        mov     r0, r4
        pop     {r4, lr}
        b       Fn_56aa74
L56ada8:
        .word   0x0082d1ec
        .size   A_56ad7c, . - A_56ad7c

@ FUN_0056af44
        .global A_56af44
        .type   A_56af44, %function
A_56af44:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        movs    r0, r3
        add     r3, sp, #0x18
        moveq   r0, #0
        ldm     r3, {r5, r6, r7}
        stm     r4, {r1, r2}
        beq     L56af6c
        bl      Fn_0253e4
        lsr     r0, r0, #3
L56af6c:
        str     r0, [r4, #8]
        strb    r5, [r4, #0x10]
        strh    r6, [r4, #0xe]
        strh    r7, [r4, #0xc]
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_56af44, . - A_56af44
