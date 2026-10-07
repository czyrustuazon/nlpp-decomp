@ Generated from the retail image by tools/wrapgen/asmify.py (nw4c): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text


@ FUN_00541bc0
        .global A_541bc0
        .type   A_541bc0, %function
A_541bc0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        ldr     r4, L541c24
        mov     r8, r3
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L541c28
        ldr     r0, [r0]
        cmp     r0, #0
        movne   sb, #1
        moveq   sb, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     sb, #0
        ldreq   r0, L541c2c
        beq     L541c20
        mov     r3, r8
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_53cbac
L541c20:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L541c24:
        .word   0x009a108c
L541c28:
        .word   0x008b7cc8
L541c2c:
        .word   0xd8a0c7f8
        .size   A_541bc0, . - A_541bc0

@ FUN_00541e40
        .global A_541e40
        .type   A_541e40, %function
A_541e40:
        lsl     r2, r1, #0x10
        lsl     r3, r1, #0x18
        lsr     r2, r2, #0x18
        orr     r3, r3, r2, lsl #16
        lsl     r2, r1, #8
        lsr     r2, r2, #0x18
        orr     r2, r3, r2, lsl #8
        orr     r1, r2, r1, lsr #24
        str     r1, [r0]
        bx      lr
        .size   A_541e40, . - A_541e40

@ FUN_00541e74
        .global A_541e74
        .type   A_541e74, %function
A_541e74:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [sp, #0x10]
        and     r0, r0, #0xff
        str     r0, [r4, #0x24]
        tst     r0, #2
        str     r1, [r4, #0x14]
        mov     r0, r2
        strd    r2, r3, [r4, #0xc]
        sub     r1, r3, r0
        beq     L541eac
        ldr     r2, L541ed8
        ldr     r2, [r2]
        bl      Fn_01a48c
L541eac:
        ldr     r5, L541edc
        mov     r1, r4
        add     r0, r5, #0
        bl      Fn_542098
        cmp     r0, #0
        addne   r5, r0, #0x18
        mov     r0, r5
        add     r1, r5, #4
        add     r2, r4, #4
        pop     {r4, r5, r6, lr}
        b       Fn_542230
L541ed8:
        .word   0x008bbb2c
L541edc:
        .word   0x00a7b044
        .size   A_541e74, . - A_541e74

@ FUN_005420f0
        .global A_5420f0
        .type   A_5420f0, %function
A_5420f0:
        push    {r4, lr}
        ldr     r4, L542114
        mov     r1, r0
        add     r0, r4, #0
        bl      Fn_542098
        cmp     r0, #0
        addne   r4, r0, #0x18
        mov     r0, r4
        pop     {r4, pc}
L542114:
        .word   0x00a7b044
        .size   A_5420f0, . - A_5420f0

@ FUN_00542254
        .global A_542254
        .type   A_542254, %function
A_542254:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r2
        ldm     r0, {r0, r2}
        add     r0, r0, r2
        mov     r2, r5
        bl      Fn_202b20
        ldr     r0, [r4, #4]
        add     r0, r0, r5
        str     r0, [r4, #4]
        pop     {r4, r5, r6, pc}
        .size   A_542254, . - A_542254

@ FUN_00542280
        .global A_542280
        .type   A_542280, %function
A_542280:
        add     ip, r1, #3
        bic     ip, ip, #3
        add     r1, r1, r2
        str     ip, [r0]
        mov     r2, #0
        strb    r3, [r0, #0xc]
        sub     r1, r1, ip
        str     r2, [r0, #4]!
        bic     r1, r1, #7
        str     r1, [r0, #4]
        bx      lr
        .size   A_542280, . - A_542280

@ FUN_005422ac
        .global A_5422ac
        .type   A_5422ac, %function
A_5422ac:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        sub     r1, r1, #1
        add     r2, r0, r1
        bic     r5, r2, r1
        ldr     r1, [r4]
        add     r2, r1, r0
        sub     r1, r5, r0
        mov     r0, r2
        bl      Fn_01a4d4
        str     r5, [r4, #4]
        pop     {r4, r5, r6, pc}
        .size   A_5422ac, . - A_5422ac

@ FUN_005422f8
        .global A_5422f8
        .type   A_5422f8, %function
A_5422f8:
        push    {r0, r1, r2, r3}
        push    {r4, lr}
        add     r4, r2, #1
        ldr     ip, [sp, #0x14]
        cmp     r1, r4
        add     r3, sp, #0x18
        movhi   r1, r4
        mov     r2, ip
        blx     Fn_000130_t
        pop     {r4}
        ldr     pc, [sp], #0x14
        .size   A_5422f8, . - A_5422f8

@ FUN_00542324
        .global A_542324
        .type   A_542324, %function
A_542324:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        mov     r5, r0
        mov     r0, r0
        ldr     r0, [r5, #0x30]
        cmp     r4, #0
        beq     L542364
        cmp     r0, #0
        beq     L5423c0
L542348:
        ldr     r1, [r0]
        cmp     r1, r4
        beq     L542364
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        bne     L542348
        b       L5423c0
L542364:
        cmp     r0, #0
        beq     L5423c0
        add     r2, r5, #0x28
        ldr     r1, [r0, #4]
        ldm     r2, {r2, r4}
        str     r1, [r5, #0x28]
        ldr     r3, [r0, #8]
        sub     r2, r2, r1
        str     r3, [r5, #0x2c]
        ldr     r0, [r0, #0xc]
        str     r0, [r5, #0x30]
        mov     r0, r5
        bl      Fn_541f94
        ldr     r0, [r5, #0x2c]
        mov     r1, r4
        sub     r2, r0, r4
        mov     r0, r5
        bl      Fn_541f94
        mov     r4, #1
L5423b0:
        mov     r0, r5
        mov     r0, r0
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L5423c0:
        mov     r4, #0
        b       L5423b0
        .size   A_542324, . - A_542324

@ FUN_005423c8
        .global A_5423c8
        .type   A_5423c8, %function
A_5423c8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        mov     r8, r1
        mov     r0, r0
        ldr     r1, [r4, #0x28]
        mov     sb, #0
        add     r0, r1, #3
        bic     r6, r0, #3
        ldr     r0, [r4, #0x2c]
        add     r5, r6, #0x10
        mov     r7, r1
        cmp     r0, r5
        blo     L54244c
        sub     r2, r5, r1
        mov     r0, r4
        bl      Fn_542018
        cmp     r6, #0
        str     r5, [r4, #0x28]
        beq     L54244c
        str     sb, [r6, #8]
        str     r7, [r6, #4]
        str     r8, [r6]
        str     sb, [r6, #0xc]
        ldr     r0, [r4, #0x2c]
        mov     r5, #1
        str     r0, [r6, #8]
        ldr     r0, [r4, #0x30]
        str     r0, [r6, #0xc]
        str     r6, [r4, #0x30]
L54243c:
        mov     r0, r4
        mov     r0, r0
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L54244c:
        mov     r5, #0
        b       L54243c
        .size   A_5423c8, . - A_5423c8

@ FUN_0054250c
        .global A_54250c
        .type   A_54250c, %function
A_54250c:
        add     r1, r1, r0
        push    {r3, r4, r5, lr}
        add     r0, r0, #3
        bic     r3, r1, #3
        bic     r4, r0, #3
        sub     r0, r4, r3
        cmp     r0, #0
        bgt     L542538
        sub     r0, r3, r4
        cmp     r0, #0x34
        bhs     L542540
L542538:
        mov     r0, #0
        pop     {r3, r4, r5, pc}
L542540:
        cmp     r4, #0
        mov     r5, #0
        beq     L54256c
        str     r5, [r4, #4]
        ldr     r0, L542598
        add     r1, r4, #0x1c
        str     r5, [r4, #8]
        str     r1, [r4, #0x1c]
        str     r5, [r4, #0x18]
        str     r0, [r4]
        str     r1, [r4, #0x20]
L54256c:
        add     r0, r4, #0x34
        str     r2, [sp]
        mov     r2, r0
        ldr     r1, L54259c
        mov     r0, r4
        bl      Fn_541e74
        ldrd    r0, r1, [r4, #0xc]
        add     ip, r4, #0x28
        stm     ip, {r0, r1, r5}
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L542598:
        .word   0x0082c440
L54259c:
        .word   0x46524d48
        .size   A_54250c, . - A_54250c

@ FUN_00542700
        .global A_542700
        .type   A_542700, %function
A_542700:
L542700:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0xb7]
        sub     sp, sp, #0x60
        mov     r6, r1
        ands    r0, r0, #1
        beq     L542818
        ldr     r0, [r5, #0x14]
        add     r4, r5, #0x14
        cmp     r4, r0
        beq     L542758
L54272c:
        ldr     r0, [r4, #4]
        mov     r1, r6
        sub     r0, r0, #4
        .word   0xebfffff0
        cmp     r0, #0
        nop
        bne     L542818
        ldr     r4, [r4, #4]
        ldr     r0, [r5, #0x14]
        cmp     r4, r0
        bne     L54272c
L542758:
        ldr     r4, L542820
        cmp     r5, #0
        beq     L542814
        ldr     r0, [r5]
        ldr     r1, [r0, #8]
        mov     r0, r5
        blx     r1
L542774:
        cmp     r0, r4
        bne     L542808
        cmp     r5, #0
        beq     L542814
        add     r1, r5, #0x80
        add     r0, sp, #0x30
        bl      Fn_01a194
        ldrd    r0, r1, [r6]
        vldr    s0, L542824
        add     r2, sp, #0x20
        strd    r0, r1, [sp, #0x20]
        vstr    s0, [sp, #0x28]
        add     r1, sp, #0x30
        add     r0, sp, #0x14
        bl      Fn_022a04
        mov     r1, r5
        mov     r0, sp
        bl      Fn_634658
        add     r0, sp, #0x14
        vldr    s2, [sp]
        vldmia  r0, {s0, s1}
        vcmpe.f32 s2, s0
        vmrs    apsr_nzcv, fpscr
        bhi     L542814
        vldr    s2, [sp, #8]
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vldrls  s0, [sp, #0xc]
        vcmpels.f32 s0, s1
        vmrsls  apsr_nzcv, fpscr
        bhi     L542814
        vldr    s0, [sp, #4]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        movge   r0, r5
        bge     L542818
        b       L542814
L542808:
        ldr     r0, [r0]
        cmp     r0, #0
        bne     L542774
L542814:
        mov     r0, #0
L542818:
        add     sp, sp, #0x60
        pop     {r4, r5, r6, pc}
L542820:
        .word   0x008b8618
L542824:
        .word   0x00000000
        .size   A_542700, . - A_542700

@ FUN_00542b54
        .global A_542b54
        .type   A_542b54, %function
A_542b54:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        mov     r5, r2
        vpush   {d8, d9}
        mov     r6, r3
        vldr    s18, [sp, #0x20]
        vldr    s17, [sp, #0x24]
        vldr    s16, [sp, #0x28]
        bl      Fn_5460a8
        ldr     r2, L542bb4
        mov     r1, #0
        strb    r4, [r0, #0xd4]
        str     r1, [r0, #0xd8]
        str     r2, [r0]
        str     r1, [r0, #0xdc]
        add     r3, r0, #0xe4
        str     r1, [r0, #0xe0]
        str     r5, [r0, #0xf8]
        stm     r3, {r1, r6}
        vstr    s18, [r0, #0xec]
        vstr    s17, [r0, #0xf0]
        vstr    s16, [r0, #0xf4]
        vpop    {d8, d9}
        pop     {r4, r5, r6, pc}
L542bb4:
        .word   0x0082c450
        .size   A_542b54, . - A_542b54

@ FUN_00542bb8
        .global A_542bb8
        .type   A_542bb8, %function
A_542bb8:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        mov     r5, r2
        vpush   {d8, d9}
        mov     r6, r3
        vldr    s19, [sp, #0x20]
        vldr    s18, [sp, #0x24]
        vldr    s17, [sp, #0x28]
        vldr    s16, [sp, #0x2c]
        bl      Fn_5460a8
        ldr     r2, L542c1c
        mov     r1, #0
        strb    r4, [r0, #0xd4]
        str     r1, [r0, #0xf8]
        str     r2, [r0]
        str     r1, [r0, #0xe8]
        str     r1, [r0, #0xec]
        add     r1, r0, #0xd8
        stm     r1, {r5, r6}
        vstr    s19, [r0, #0xe0]
        vstr    s18, [r0, #0xe4]
        vstr    s17, [r0, #0xf0]
        vstr    s16, [r0, #0xf4]
        vpop    {d8, d9}
        pop     {r4, r5, r6, pc}
L542c1c:
        .word   0x0082c450
        .size   A_542bb8, . - A_542bb8

@ FUN_00542e0c
        .global A_542e0c
        .type   A_542e0c, %function
A_542e0c:
        str     r0, [r1]
        ldr     r2, [r0, #0x10]
        add     r2, r2, r0
        str     r2, [r1, #4]
        ldr     r3, [r0, #0x18]
        add     r3, r3, r0
        str     r3, [r1, #8]
        ldr     r3, [r2, #8]
        add     ip, r3, r3, lsl #1
        add     r2, r2, ip, lsl #2
        str     r2, [r1, #0x10]
        str     r3, [r1, #0xc]
        ldr     r0, [r0, #0x14]
        add     r1, r1, #0x14
        mov     r2, #0
        stm     r1, {r0, r2}
        mov     r0, #1
        bx      lr
        .size   A_542e0c, . - A_542e0c

@ FUN_00543638
        .global A_543638
        .type   A_543638, %function
A_543638:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r0, r1
        mov     r5, r2
        add     r1, r4, #8
        bl      Fn_542e0c
        cmp     r0, #0
        beq     L543690
        add     r0, r4, #0x24
        mov     r3, #0x3f
        mov     r1, #0
L543664:
        ldrsb   r2, [r5]
        cmp     r2, #0
        beq     L543684
        add     r1, r1, #1
        cmp     r3, r1
        add     r5, r5, #1
        strh    r2, [r0], #2
        bhi     L543664
L543684:
        mov     r1, #0
        strh    r1, [r0]
        mov     r0, #1
L543690:
        pop     {r4, r5, r6, pc}
        .size   A_543638, . - A_543638

@ FUN_00543694
        .global A_543694
        .type   A_543694, %function
A_543694:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        ldr     r0, L543760
        ldr     r0, [r0]
        tst     r0, #1
        bne     L543700
        ldr     r0, L543760
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L543700
        ldr     r0, L54376c
        vldr    s1, L543764
        vldr    s0, L543768
        add     r1, r0, #0x10
        vstr    s1, [r0]
        vstr    s0, [r0, #4]
        vstr    s0, [r0, #8]
        vstr    s0, [r0, #0xc]
        vstmia  r1, {s0, s1}
        add     r1, r0, #0x24
        vstr    s0, [r0, #0x18]
        vstr    s0, [r0, #0x1c]
        vstr    s0, [r0, #0x20]
        vstmia  r1, {s0, s1}
        vstr    s0, [r0, #0x2c]
        ldr     r0, L543760
        mov     r0, r0
L543700:
        ldr     r1, L54376c
        add     r0, r5, #0x164
        bl      Fn_01a174
        mov     r0, r5
        nop
        bl      Fn_543a9c
        ldr     r6, L543770
        mov     r4, #0
        mov     r7, r4
L543724:
        ldr     r1, [r6, r4, lsl #2]
        cmp     r1, #0
        addeq   r0, r5, r4, lsl #2
        streq   r7, [r0, #0x19c]
        beq     L543748
        ldr     r0, [r5, #0x15c]
        bl      Fn_6621dc
        add     r1, r5, r4, lsl #2
        str     r0, [r1, #0x19c]
L543748:
        add     r4, r4, #1
        cmp     r4, #0x4f
        blt     L543724
        mov     r0, #1
        strb    r0, [r5, #0x2e0]
        pop     {r4, r5, r6, r7, r8, pc}
L543760:
        .word   0x008bfb30
L543764:
        .word   0x3f800000
L543768:
        .word   0x00000000
L54376c:
        .word   0x00a7b350
L543770:
        .word   0x008ab108
        .size   A_543694, . - A_543694

@ FUN_00543774
        .global A_543774
        .type   A_543774, %function
A_543774:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #8
        cmp     r1, #0
        ldr     r5, [sp, #0x20]
        mov     r4, r0
        mov     r7, r2
        mov     r6, r3
        beq     L54382c
        cmp     r1, #1
        beq     L54385c
        ldr     r8, L54394c
        cmp     r1, #2
        beq     L54388c
        cmp     r1, #3
        bne     L543824
        bl      Fn_660658
        str     r0, [r4, #0x160]
        mov     r0, r8
        bl      Fn_660770
        str     r0, [sp, #4]
        mov     r3, r7
        mov     r2, #0x6000
        add     r1, sp, #4
        mov     r0, #1
        str     r6, [sp]
        bl      Fn_663f2c
        ldr     r0, [r4, #0x160]
        ldr     r1, [sp, #4]
        bl      Fn_65ee88
        ldr     r0, [r4, #0x160]
        mvn     r1, #0
        bl      Fn_65ee88
        ldr     r0, [sp, #4]
        bl      Fn_660b08
        ldr     r0, [r4, #0x160]
        add     r2, pc, #0x148
        mov     r1, #0
        bl      Fn_65ef44
        ldr     r0, [r4, #0x160]
        bl      Fn_662354
        cmp     r5, #0
        beq     L543824
L54381c:
        mov     r0, r7
        bl      Fn_548334
L543824:
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, pc}
L54382c:
        mov     r1, #4
        mov     r0, r3
        bl      Fn_548350
        mov     r2, r6
        mov     r1, r7
        stm     r4, {r0, r6}
        bl      Fn_202b20
        cmp     r5, #0
        nop
        bne     L54387c
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, pc}
L54385c:
        mov     r2, r3
        mov     r1, r7
        add     r0, r4, #8
        bl      Fn_56a1b8
        add     r0, r4, #8
        cmp     r5, #0
        str     r0, [r4, #0x138]
        beq     L543824
L54387c:
        add     sp, sp, #8
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_548334
L54388c:
        nop
        bl      Fn_660658
        str     r0, [r4, #0x15c]
        mov     r0, r8
        bl      Fn_660770
        str     r0, [sp, #4]
        mov     r3, r7
        mov     r2, #0x6000
        add     r1, sp, #4
        mov     r0, #1
        str     r6, [sp]
        bl      Fn_663f2c
        ldr     r0, [r4, #0x15c]
        ldr     r1, [sp, #4]
        bl      Fn_65ee88
        ldr     r0, [r4, #0x15c]
        mvn     r1, #0
        bl      Fn_65ee88
        ldr     r0, [sp, #4]
        nop
        bl      Fn_660b08
        ldr     r0, [r4, #0x15c]
        add     r2, pc, #0x70
        mov     r1, #0
        bl      Fn_65ef44
        ldr     r0, [r4, #0x15c]
        nop
        bl      Fn_662354
        ldr     r0, [r4, #0x15c]
        nop
        bl      Fn_665a64
        ldr     r0, [r4, #0x15c]
        add     r1, pc, #0x58
        bl      Fn_6621dc
        ldr     r1, L543984
        nop
        bl      Fn_665970
        ldr     r0, [r4, #0x15c]
        add     r1, pc, #0x5c
        bl      Fn_6621dc
        mov     r1, #0
        nop
        bl      Fn_665970
        cmp     r5, #0
        nop
        bne     L54381c
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, pc}
L54394c:
        .word   0x00008b31
        .word   0x736f5061
        .word   0x6f697469
        .word   0x0000006e
        .word   0x72655661
        .word   0x49786574
        .word   0x7865646e
        .word   0x00000000
        .word   0x5f706d64
        .word   0x67617246
        .word   0x7265704f
        .word   0x6f697461
        .word   0x6f6d2e6e
        .word   0x00006564
L543984:
        .word   0x00006030
        .size   A_543774, . - A_543774

@ FUN_005439b4
        .global A_5439b4
        .type   A_5439b4, %function
A_5439b4:
        push    {r4, r5, r6, r7, r8, sb}
        ldr     r5, L543a94
        ldr     r6, L543a98
        ldrb    r0, [r5]
        cmp     r0, #0
        bne     L543a80
        ldr     r4, [r5, #4]
        mov     r3, #0
        add     r7, r5, #0x18
L5439d8:
        add     ip, r6, r3, lsl #9
        ldrh    r8, [r4]
        mov     r2, r4
        mov     r0, #0
        cmp     r8, #0
        beq     L543a14
L5439f0:
        add     r8, r2, r0, lsl #1
        add     sb, ip, r0, lsl #1
        ldrh    r8, [r8]
        add     r0, r0, #1
        strh    r8, [sb]
        add     r8, r2, r0, lsl #1
        ldrh    r8, [r8]
        cmp     r8, #0
        bne     L5439f0
L543a14:
        add     r8, r2, r0, lsl #1
        add     r2, ip, r0, lsl #1
        ldrh    r0, [r8]
        strh    r0, [r2]
        ldr     ip, [r7, r3, lsl #2]
        mov     r0, #0
        ldrh    r8, [ip]
        cmp     r8, #0
        beq     L543a5c
L543a38:
        add     r8, ip, r0, lsl #1
        add     sb, r2, r0, lsl #1
        ldrh    r8, [r8]
        add     r0, r0, #1
        strh    r8, [sb]
        add     r8, ip, r0, lsl #1
        ldrh    r8, [r8]
        cmp     r8, #0
        bne     L543a38
L543a5c:
        add     ip, ip, r0, lsl #1
        add     r0, r2, r0, lsl #1
        ldrh    r2, [ip]
        add     r3, r3, #1
        cmp     r3, #4
        strh    r2, [r0]
        blt     L5439d8
        mov     r0, #1
        strb    r0, [r5]
L543a80:
        cmp     r1, #4
        addlo   r0, r6, r1, lsl #9
        pop     {r4, r5, r6, r7, r8, sb}
        movhs   r0, #0
        bx      lr
L543a94:
        .word   0x008ab0e0
L543a98:
        .word   0x009a25dc
        .size   A_5439b4, . - A_5439b4

@ FUN_00543b80
        .global A_543b80
        .type   A_543b80, %function
A_543b80:
        push    {r4, lr}
        mov     r4, #0
        str     r4, [r0]
        str     r4, [r0, #4]!
        add     r0, r0, #4
        bl      Fn_56a8c0
        add     r0, r0, #0xf0
        bl      Fn_686674
        sub     r0, r0, #0xf8
        str     r4, [r0, #0x15c]
        str     r4, [r0, #0x160]
        strb    r4, [r0, #0x2e0]
        pop     {r4, pc}
        .size   A_543b80, . - A_543b80

@ FUN_00543bb4
        .global A_543bb4
        .type   A_543bb4, %function
A_543bb4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x2e0]
        cmp     r0, #0
        beq     L543c1c
        mov     r5, #0
        mov     r0, r5
        strb    r5, [r4, #0x2e0]
        bl      Fn_665a64
        ldr     r0, [r4, #0x15c]
        bl      Fn_660a9c
        str     r5, [r4, #0x15c]
        ldr     r0, [r4, #0x160]
        bl      Fn_660a9c
        add     r1, r4, #0x194
        mov     r0, #2
        str     r5, [r4, #0x160]
        bl      Fn_660890
        ldr     r0, [r4]
        cmp     r0, #0
        blne    Fn_548334
        str     r5, [r4]
        str     r5, [r4, #4]
        add     r0, r4, #8
        str     r5, [r4, #0x138]
        bl      Fn_56a86c
L543c1c:
        add     r0, r4, #0xf8
        bl      Fn_5684d4
        sub     r0, r0, #0xf0
        nop
        bl      Fn_56a8fc
        sub     r0, r0, #8
        pop     {r4, r5, r6, pc}
        .size   A_543bb4, . - A_543bb4

@ FUN_00544ad8
        .global A_544ad8
        .type   A_544ad8, %function
A_544ad8:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mov     r4, r0
        add     r1, r0, #4
        mov     r6, r2
        mov     r0, r5
        bl      Fn_542e0c
        cmp     r0, #0
        beq     L544b38
        add     r0, r4, #0x3c
        mov     r3, #0x3f
        mov     r1, #0
        str     r5, [r4, #0x20]
L544b0c:
        ldrsb   r2, [r6]
        cmp     r2, #0
        beq     L544b2c
        add     r1, r1, #1
        cmp     r3, r1
        add     r6, r6, #1
        strh    r2, [r0], #2
        bhi     L544b0c
L544b2c:
        mov     r1, #0
        strh    r1, [r0]
        mov     r0, #1
L544b38:
        pop     {r4, r5, r6, pc}
        .size   A_544ad8, . - A_544ad8

@ FUN_00544b90
        .global A_544b90
        .type   A_544b90, %function
A_544b90:
        push    {r4, lr}
        bl      Fn_543d80
        ldr     r3, L544bd4
        mov     r2, r0
        mov     r1, #0
        str     r3, [r0], #0x20
        add     r4, r2, #0x24
        str     r1, [r0], #4
        add     r3, r0, #4
        stm     r4, {r1, r3}
        str     r3, [r0, #8]
        add     r0, r2, #0x30
        add     r3, r2, #0x34
        stm     r0, {r1, r3}
        mov     r0, r2
        str     r3, [r2, #0x38]
        pop     {r4, pc}
L544bd4:
        .word   0x0082c5bc
        .size   A_544b90, . - A_544b90

@ FUN_0054511c
        .global A_54511c
        .type   A_54511c, %function
A_54511c:
        add     r0, r0, #4
        mov     r2, r1
        add     r1, r0, #4
        b       Fn_542230
        .size   A_54511c, . - A_54511c

@ FUN_0054512c
        .global A_54512c
        .type   A_54512c, %function
A_54512c:
        mov     r2, r0
        mov     r3, r1
        push    {r4, lr}
        ldr     r1, [r0, #8]!
        cmp     r1, r0
        beq     L545174
L545144:
        ldr     r0, [r1, #8]
        cmp     r0, r3
        bne     L545164
        mov     r4, r1
        add     r0, r2, #4
        bl      Fn_542154
        mov     r0, r4
        pop     {r4, pc}
L545164:
        ldr     r1, [r1]
        add     r0, r2, #8
        cmp     r1, r0
        bne     L545144
L545174:
        mov     r0, #0
        pop     {r4, pc}
        .size   A_54512c, . - A_54512c

@ FUN_005451d0
        .global A_5451d0
        .type   A_5451d0, %function
A_5451d0:
        push    {r4, lr}
        bl      Fn_543d80
        ldr     r1, L54521c
        mov     r2, r0
        str     r1, [r0], #4
        mov     r1, #0
        add     r3, r0, #4
        stm     r0, {r1, r3}
        str     r3, [r0, #8]
        add     r0, r2, #0x10
        add     r3, r2, #0x14
        stm     r0, {r1, r3}
        add     r0, r2, #0x1c
        str     r3, [r2, #0x18]
        add     r3, r2, #0x20
        stm     r0, {r1, r3}
        mov     r0, r2
        str     r3, [r2, #0x24]
        pop     {r4, pc}
L54521c:
        .word   0x0082c5e0
        .size   A_5451d0, . - A_5451d0

@ FUN_005454cc
        .global A_5454cc
        .type   A_5454cc, %function
A_5454cc:
        push    {r4, r5, r6, lr}
        mov     ip, r1
        ldr     r0, [r0, #0x10]
        mov     r6, r3
        mov     r4, r2
        mov     r2, #1
        ldr     r1, [r0]
        ldr     r3, [r1, #0x2c]
        mov     r1, ip
        blx     r3
        mov     r5, r0
        ldr     r0, [r4, #0x10]
        mov     r2, #1
        ldr     r1, [r0]
        ldr     r3, [r1, #0x2c]
        mov     r1, r6
        blx     r3
        mov     r6, r0
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        movne   r1, r6
        blne    Fn_5455b8
        ldr     r0, [r5, #0xc]
        mov     r2, r6
        mov     r1, r5
        bl      Fn_545594
        ldr     r0, [r5, #0xc]
        mov     r1, r5
        bl      Fn_5455b8
        ldr     r0, [r4, #0x10]
        mov     r1, r5
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_5454cc, . - A_5454cc

@ FUN_00545574
        .global A_545574
        .type   A_545574, %function
A_545574:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r2
        add     r0, r0, #0x10
        add     r2, r2, #4
        bl      Fn_542230
        str     r5, [r4, #0xc]
        pop     {r4, r5, r6, pc}
        .size   A_545574, . - A_545574

@ FUN_00545990
        .global A_545990
        .type   A_545990, %function
A_545990:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r3, [r0, #0x14]
        mov     r4, r1
        add     r2, r1, #4
        add     r0, r0, #0x10
        mov     r1, r3
        bl      Fn_542230
        str     r5, [r4, #0xc]
        pop     {r4, r5, r6, pc}
        .size   A_545990, . - A_545990

@ FUN_00545c80
        .global A_545c80
        .type   A_545c80, %function
A_545c80:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r0, [r0, #0xb0]
        cmp     r0, #0
        addsne  r4, r0, #0xc
        beq     L545ce8
        ldrh    r0, [r0, #8]
        mov     r5, #0
        cmp     r0, #0
        ble     L545ce8
L545cac:
        ldr     r0, [r4]
        cmp     r0, #0
        addne   r1, r4, r0
        moveq   r1, #0
        mov     r0, r7
        bl      Fn_1fe040
        cmp     r0, #0
        nop
        beq     L545cf0
        ldr     r0, [r6, #0xb0]
        add     r5, r5, #1
        add     r4, r4, #0xc
        ldrh    r0, [r0, #8]
        cmp     r0, r5
        bgt     L545cac
L545ce8:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L545cf0:
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_545c80, . - A_545c80

@ FUN_00545f2c
        .global A_545f2c
        .type   A_545f2c, %function
A_545f2c:
        mov     r2, #0
        mov     r3, #0x11
        add     r0, r0, #0xb8
        mov     ip, r2
        str     r4, [sp, #-4]!
L545f40:
        ldrb    r4, [r1]
        add     r2, r2, #1
        strb    r4, [r0], #1
        ldrb    r4, [r1, #1]!
        cmp     r4, #0
        subne   r4, r3, #1
        cmpne   r4, r2
        bhi     L545f40
        strb    ip, [r0]
        pop     {r4}
        bx      lr
        .size   A_545f2c, . - A_545f2c

@ FUN_005460a8
        .global A_5460a8
        .type   A_5460a8, %function
A_5460a8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, #0
        vpush   {d8}
        add     r1, r4, #0x14
        str     r5, [r0, #4]!
        vldr    s16, L546190
        str     r5, [r0, #4]
        ldr     r0, L54618c
        str     r0, [r4]
        str     r1, [r4, #0x14]
        str     r5, [r4, #0x10]
        str     r1, [r4, #0x18]
        add     r1, r4, #0x20
        str     r1, [r4, #0x20]
        str     r5, [r4, #0x1c]
        str     r1, [r4, #0x24]
        vstr    s16, [r4, #0x48]
        vstr    s16, [r4, #0x4c]
        mov     r0, r4
        bl      Fn_545d70
        mov     r0, #4
        strb    r0, [r4, #0xb6]
        mov     r1, #0x11
        add     r0, r4, #0xb8
        bl      Fn_1fddd8
        str     r5, [r4, #0xc9]
        str     r5, [r4, #0xcd]
        strb    r5, [r4, #0xd1]
        vstr    s16, [r4, #0x28]
        vstr    s16, [r4, #0x2c]
        vstr    s16, [r4, #0x30]
        vstr    s16, [r4, #0x34]
        vstr    s16, [r4, #0x38]
        vldr    s0, L546194
        vstr    s16, [r4, #0x3c]
        vstr    s0, [r4, #0x40]
        vstr    s0, [r4, #0x44]
        vstr    s16, [r4, #0x48]
        mov     r0, #0xff
        vstr    s16, [r4, #0x4c]
        strb    r0, [r4, #0xb4]
        strb    r0, [r4, #0xb5]
        ldrb    r1, [r4, #0xb7]
        ldr     r0, L546198
        and     r1, r1, #0xfe
        orr     r1, r1, #1
        strb    r1, [r4, #0xb7]
        ldrb    r1, [r0]
        ldrb    r3, [r4, #0xb6]
        mov     r0, r4
        lsl     r2, r1, #4
        and     r1, r3, #0xef
        orr     r1, r1, r2
        strb    r1, [r4, #0xb6]
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L54618c:
        .word   0x0082c604
L546190:
        .word   0x00000000
L546194:
        .word   0x3f800000
L546198:
        .word   0x008ab281
        .size   A_5460a8, . - A_5460a8

@ FUN_00546640
        .global A_546640
        .type   A_546640, %function
A_546640:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, L546680
        mov     r1, #0
        add     r2, r4, #0x10
        strd    r0, r1, [r4]
        add     r0, r4, #0xc
        str     r1, [r4, #8]
        stm     r0, {r1, r2}
        add     r0, r4, #0x18
        str     r2, [r4, #0x14]
        strb    r1, [r4, #0x29]
        mov     r1, #0x11
        bl      Fn_1fddd8
        mov     r0, r4
        pop     {r4, pc}
L546680:
        .word   0x0082c67c
        .size   A_546640, . - A_546640

@ FUN_00546734
        .global A_546734
        .type   A_546734, %function
A_546734:
        push    {r4, r5, r6, r7, r8}
        add     r3, r3, r3, lsl #2
        sub     sp, sp, #0xc
        ldrh    r5, [r2]
        ldrh    r2, [r2, #2]
        ldr     ip, L546830
        vmov    s1, r5
        vmov    s0, r2
        add     r3, ip, r3, lsl #1
        mov     r7, sp
        ldrb    r4, [r3, #8]
        ldrb    ip, [r3, #9]
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        add     r5, r3, r4
        add     r2, r0, r4, lsl #2
        add     r6, r3, ip
        add     r0, r0, ip, lsl #2
        vstr    s1, [sp]
        vstr    s0, [sp, #4]
        ldrb    r8, [r5, #4]
        vmov    s0, r8
        add     r8, r7, r4, lsl #2
        add     r4, r7, ip, lsl #2
        vcvt.f32.u32 s0, s0
        vstr    s0, [r2]
        vstr    s0, [r2, #0x10]
        ldrb    r7, [r6, #4]
        vmov    s0, r7
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0, #0x18]
        vstr    s0, [r0, #0x10]
        ldrb    r7, [r5, #6]
        ldrb    r5, [r5, #4]
        vldr    s3, [r8]
        vldr    s2, [r1]
        sub     r7, r7, r5
        vmov    s1, r7
        vmov    s0, r5
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s3
        vdiv.f32 s3, s2, s1
        vadd.f32 s0, s3, s0
        vstr    s0, [r2, #0x18]
        vstr    s0, [r2, #8]
        ldrb    r3, [r3, ip]
        ldrb    r2, [r6, #4]
        vldr    s3, [r1, #4]
        vldr    s2, [r4]
        sub     r1, r3, r2
        vmov    s1, r1
        vmov    s0, r2
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s2
        vdiv.f32 s2, s3, s1
        vadd.f32 s0, s2, s0
        vstr    s0, [r0]
        vstr    s0, [r0, #8]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8}
        bx      lr
L546830:
        .word   0x008ab338
        .size   A_546734, . - A_546734

@ FUN_00546834
        .global A_546834
        .type   A_546834, %function
A_546834:
        push    {r4, r5, r6, r7, r8, sb}
        add     r3, r3, r3, lsl #2
        sub     sp, sp, #8
        ldrh    r5, [r2]
        ldrh    r2, [r2, #2]
        ldr     ip, L54692c
        vmov    s0, r5
        vmov    s1, r2
        add     r3, ip, r3, lsl #1
        mov     r7, sp
        ldrb    ip, [r3, #8]
        ldrb    r4, [r3, #9]
        vcvt.f32.u32 s0, s0
        vcvt.f32.u32 s1, s1
        add     r2, r0, ip, lsl #2
        add     r0, r0, r4, lsl #2
        add     r6, r3, ip
        add     r8, r3, r4
        vstmia  sp, {s0, s1}
        ldrb    r5, [r3, ip]
        vmov    s0, r5
        add     r5, r7, ip, lsl #2
        add     r7, r7, r4, lsl #2
        vcvt.f32.u32 s0, s0
        vstr    s0, [r2, #0x10]
        vstr    s0, [r2]
        ldrb    sb, [r3, r4]
        vmov    s0, sb
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0, #8]
        vstr    s0, [r0]
        ldrb    r6, [r6, #2]
        ldrb    ip, [r3, ip]
        vldr    s3, [r5]
        vldr    s2, [r1]
        sub     r5, r6, ip
        vmov    s1, r5
        vmov    s0, ip
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s3
        vdiv.f32 s3, s2, s1
        vadd.f32 s0, s3, s0
        vstr    s0, [r2, #8]
        vstr    s0, [r2, #0x18]
        ldrb    ip, [r8, #4]
        ldrb    r2, [r3, r4]
        vldr    s2, [r1, #4]
        vldr    s3, [r7]
        sub     r1, ip, r2
        vmov    s1, r1
        vmov    s0, r2
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s3
        vdiv.f32 s3, s2, s1
        vadd.f32 s0, s3, s0
        vstr    s0, [r0, #0x10]
        vstr    s0, [r0, #0x18]
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, sb}
        bx      lr
L54692c:
        .word   0x008ab338
        .size   A_546834, . - A_546834

@ FUN_00546930
        .global A_546930
        .type   A_546930, %function
A_546930:
        push    {r4, r5, r6, r7}
        add     r3, r3, r3, lsl #2
        ldrh    r5, [r2]
        ldrh    r2, [r2, #2]
        ldr     ip, L546a2c
        vmov    s1, r5
        vmov    s0, r2
        add     r3, ip, r3, lsl #1
        sub     sp, sp, #8
        ldrb    ip, [r3, #8]
        ldrb    r4, [r3, #9]
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        add     r5, r3, ip
        add     r2, r0, ip, lsl #2
        mov     r6, sp
        add     r3, r3, r4
        add     r0, r0, r4, lsl #2
        add     r4, r6, r4, lsl #2
        vstr    s1, [sp]
        vstr    s0, [sp, #4]
        ldrb    r7, [r5, #6]
        vmov    s0, r7
        add     r7, r6, ip, lsl #2
        vcvt.f32.u32 s0, s0
        vstr    s0, [r2, #8]
        vstr    s0, [r2, #0x18]
        ldrb    ip, [r3, #6]
        vmov    s0, ip
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0, #0x10]
        vstr    s0, [r0, #0x18]
        ldrb    r6, [r5, #4]
        ldrb    ip, [r5, #6]
        vldr    s3, [r7]
        vldr    s2, [r1]
        sub     r5, r6, ip
        vmov    s1, r5
        vmov    s0, ip
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s3
        vdiv.f32 s3, s2, s1
        vadd.f32 s0, s3, s0
        vstr    s0, [r2, #0x10]
        vstr    s0, [r2]
        ldrb    ip, [r3, #2]
        ldrb    r2, [r3, #6]
        vldr    s2, [r1, #4]
        vldr    s3, [r4]
        sub     r1, ip, r2
        vmov    s1, r1
        vmov    s0, r2
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s3
        vdiv.f32 s3, s2, s1
        vadd.f32 s0, s3, s0
        vstr    s0, [r0, #8]
        vstr    s0, [r0]
        add     sp, sp, #8
        pop     {r4, r5, r6, r7}
        bx      lr
L546a2c:
        .word   0x008ab338
        .size   A_546930, . - A_546930

@ FUN_00546a30
        .global A_546a30
        .type   A_546a30, %function
A_546a30:
        push    {r4, r5, r6, r7, r8, sb}
        add     r3, r3, r3, lsl #2
        sub     sp, sp, #8
        ldrh    r5, [r2]
        ldrh    r2, [r2, #2]
        ldr     ip, L546b2c
        vmov    s1, r5
        vmov    s0, r2
        add     r3, ip, r3, lsl #1
        mov     r7, sp
        ldrb    ip, [r3, #8]
        ldrb    r4, [r3, #9]
        vcvt.f32.u32 s1, s1
        vcvt.f32.u32 s0, s0
        add     r6, r3, ip
        add     r2, r0, ip, lsl #2
        add     r5, r3, r4
        add     r0, r0, r4, lsl #2
        add     r4, r7, r4, lsl #2
        vstr    s1, [sp]
        vstr    s0, [sp, #4]
        ldrb    r8, [r6, #2]
        vmov    s0, r8
        add     r8, r7, ip, lsl #2
        vcvt.f32.u32 s0, s0
        vstr    s0, [r2, #0x18]
        vstr    s0, [r2, #8]
        ldrb    sb, [r5, #2]
        vmov    s0, sb
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0]
        vstr    s0, [r0, #8]
        ldrb    ip, [r3, ip]
        ldrb    r3, [r6, #2]
        vldr    s2, [r8]
        vldr    s3, [r1]
        sub     ip, ip, r3
        vmov    s1, ip
        vmov    s0, r3
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s2
        vdiv.f32 s2, s3, s1
        vadd.f32 s0, s2, s0
        vstr    s0, [r2]
        vstr    s0, [r2, #0x10]
        ldrb    r3, [r5, #6]
        ldrb    r2, [r5, #2]
        vldr    s3, [r1, #4]
        vldr    s2, [r4]
        sub     r1, r3, r2
        vmov    s1, r1
        vmov    s0, r2
        vcvt.f32.s32 s1, s1
        vcvt.f32.u32 s0, s0
        vmul.f32 s1, s1, s2
        vdiv.f32 s2, s3, s1
        vadd.f32 s0, s2, s0
        vstr    s0, [r0, #0x18]
        vstr    s0, [r0, #0x10]
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, sb}
        bx      lr
L546b2c:
        .word   0x008ab338
        .size   A_546a30, . - A_546a30

@ FUN_00546b30
        .global A_546b30
        .type   A_546b30, %function
A_546b30:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r1
        mov     r4, r0
        mov     r6, r2
        ldrd    r0, r1, [r5]
        bl      Fn_569b54
        cmp     r6, #0
        moveq   r1, #0x9c0
        movne   r1, #0
        add     r0, r0, r1
        mov     r1, #4
        bl      Fn_5485a4
        cmp     r6, #0
        beq     L546bac
        ldr     r1, [r5, #4]
        mov     r2, r0
        mov     r0, r4
        str     r1, [sp]
        ldr     r3, [r5]
        mov     r1, r6
        bl      Fn_568584
L546b84:
        mov     r0, #0
        str     r0, [r4, #0x694]
        str     r0, [r4, #0x698]
        mov     r1, #1
        str     r0, [r4, #0x69c]
        strb    r1, [r4, #0x6a0]
        mov     r2, #6
        strb    r1, [r4, #0x6a1]
        strb    r2, [r4, #0x6a2]
        pop     {r3, r4, r5, r6, r7, pc}
L546bac:
        mov     r1, r0
        ldrd    r2, r3, [r5]
        mov     r0, r4
        bl      Fn_5684dc
        nop
        nop
        b       L546b84
        .size   A_546b30, . - A_546b30

@ FUN_00546bc8
        .global A_546bc8
        .type   A_546bc8, %function
A_546bc8:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        sub     sp, sp, #0x24
        mov     r6, r2
        mov     r5, r1
        ldrb    r0, [r2, #0x4d]
        mov     r8, #1
        tst     r0, #2
        beq     L546c20
        ldrb    r0, [r4, #0x6a2]
        cmp     r0, #0
        cmpne   r0, #1
        beq     L546c14
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        cmp     r2, #0
        beq     L546c14
        bl      Fn_54773c
        mov     r1, r0
L546c14:
        add     sp, sp, #0x24
        mov     r0, r1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L546c20:
        ldr     r0, [r6, #0x2c]
        ldr     fp, L546fac
        mov     sl, #0
        tst     r0, #0x200
        add     sb, fp, #0xd
        mov     r7, sl
        beq     L546cb0
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        cmp     r2, #0
        beq     L546c54
        bl      Fn_54773c
        mov     r1, r0
L546c54:
        strb    sl, [r4, #0x6a1]
        strd    r8, sb, [r1], #4
        mov     r7, #1
        add     r5, r1, #4
        mov     r0, r6
        bl      Fn_63652c
        ldr     r1, L546fb8
        vldr    s9, [r0, #4]
        vldr    s10, L546fb0
        vldr    s0, L546fb4
        vldmia  r1, {s1, s2, s3, s4, s5, s6, s7, s8}
        vmla.f32 s0, s9, s10
        vstmia  sp, {s1, s2, s3, s4, s5, s6, s7, s8}
        ldrb    r0, [r0]
        vcvt.u32.f32 s0, s0
        ldr     r0, [sp, r0, lsl #2]
        lsl     r1, r0, #4
        vmov    r0, s0
        and     r0, r0, #0xff
        orr     r0, r1, r0, lsl #8
        orr     r0, r0, #1
        stm     r5!, {r0, fp}
        b       L546cf8
L546cb0:
        ldrb    r0, [r4, #0x6a1]
        cmp     r0, #0
        bne     L546cf8
        ldrb    r1, [r4, #0x24]
        mov     r0, r5
        cmp     r1, #0
        beq     L546cd8
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54773c
L546cd8:
        strb    r8, [r4, #0x6a1]
        mov     r1, #0x61
        strd    r8, sb, [r0]
        str     r1, [r0, #8]!
        mov     r7, #1
        str     fp, [r0, #4]!
        add     r0, r0, #4
        mov     r5, r0
L546cf8:
        ldr     r0, [r6, #0x2c]
        tst     r0, #0x400
        beq     L546d48
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        mov     r1, r5
        cmp     r2, #0
        beq     L546d20
        bl      Fn_54773c
        mov     r1, r0
L546d20:
        cmp     r7, #0
        strb    sl, [r4, #0x6a0]
        bne     L546d30
        strd    r8, sb, [r1], #8
L546d30:
        mov     r2, r6
        mov     r0, r4
        bl      Fn_54735c
        mov     r5, r0
        nop
        b       L546d90
L546d48:
        ldrb    r0, [r4, #0x6a0]
        cmp     r0, #0
        bne     L546d90
        ldrb    r1, [r4, #0x24]
        mov     r0, r5
        cmp     r1, #0
        beq     L546d70
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54773c
L546d70:
        cmp     r7, #0
        strb    r8, [r4, #0x6a0]
        bne     L546d80
        strd    r8, sb, [r0], #8
L546d80:
        ldr     ip, L546fbc
        add     r5, r0, #0x10
        ldm     ip, {r1, r2, r3, ip}
        stm     r0, {r1, r2, r3, ip}
L546d90:
        ldr     r0, [r6, #0x30]
        tst     r0, #0x1c0
        beq     L546dd4
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        mov     r1, r5
        cmp     r2, #0
        beq     L546db8
        bl      Fn_54773c
        mov     r1, r0
L546db8:
        mov     r2, r6
        mov     r0, r4
        bl      Fn_547b6c
        mov     r1, #5
        strb    r1, [r4, #0x6a2]
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L546dd4:
        ldr     r7, L546fc0
        ands    r0, r0, #3
        beq     L546dfc
        cmp     r0, #1
        beq     L546eb4
        cmp     r0, #2
        beq     L546fd4
        cmp     r0, #3
        bne     L54703c
        b       L547008
L546dfc:
        ldr     r0, [r6, #0x14]
        str     r0, [sp]
        ldrb    r0, [r4, #0x6a2]
        cmp     r0, #0
        beq     L546e60
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        mov     r1, r5
        cmp     r2, #0
        beq     L546e2c
        bl      Fn_54773c
        mov     r1, r0
L546e2c:
        ldr     r0, [sp]
        add     r2, r7, #0x10
        add     r8, r1, #0x10
        str     r0, [r7, #0x20]
        ldr     r6, [r7, #0x1c]
        ldm     r2, {r2, r3, ip}
        add     r5, r1, #0x18
        ldr     r7, [r7, #0x24]
        str     r6, [r1, #0xc]
        stm     r8, {r0, r7}
        stm     r1, {r2, r3, ip}
        strb    sl, [r4, #0x6a2]
        b       L54703c
L546e60:
        ldr     r0, L546fc4
        bl      Fn_634220
        mov     r6, r0
        mov     r0, sp
        bl      Fn_634220
        cmp     r6, r0
        nop
        beq     L54703c
        ldrb    r1, [r4, #0x24]
        mov     r0, r5
        cmp     r1, #0
        beq     L546e9c
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54773c
L546e9c:
        ldr     r1, [sp]
        ldr     r2, L546fc8
        str     r1, [r7, #0x20]
        stm     r0!, {r1, r2}
        mov     r5, r0
        b       L54703c
L546eb4:
        ldr     r0, [r6, #0x14]
        str     r0, [sp]
        ldr     r0, [r6, #0x10]
        str     r0, [sp, #4]
        ldrb    r0, [r4, #0x6a2]
        cmp     r0, #1
        beq     L546f1c
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        mov     r1, r5
        cmp     r2, #0
        beq     L546eec
        bl      Fn_54773c
        mov     r1, r0
L546eec:
        ldr     r0, [sp, #4]
        mov     r5, r1
        ldr     r1, L546fcc
        str     r0, [r7, #0x38]
        ldr     r0, [sp]
        mov     r2, #0x48
        str     r0, [r7, #0x50]
        mov     r0, r5
        bl      Fn_20004c
        add     r5, r5, #0x48
        strb    r8, [r4, #0x6a2]
        b       L54703c
L546f1c:
        ldr     r6, L546fcc
        add     r0, r6, #0x10
        bl      Fn_634220
        mov     r8, r0
        add     r0, sp, #4
        bl      Fn_634220
        cmp     r8, r0
        nop
        bne     L546f60
        add     r0, r6, #0x28
        bl      Fn_634220
        mov     r8, r0
        mov     r0, sp
        bl      Fn_634220
        cmp     r8, r0
        nop
        beq     L54703c
L546f60:
        ldrb    r1, [r4, #0x24]
        mov     r0, r5
        cmp     r1, #0
        beq     L546f7c
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54773c
L546f7c:
        ldr     r2, [sp, #4]
        ldr     r3, L546fd0
        str     r2, [r7, #0x38]
        ldr     ip, [sp]
        add     r1, r3, #0x18
        str     ip, [r7, #0x50]
        strd    r2, r3, [r0], #8
        ldr     r2, [r6, #0x28]
        str     r2, [r0], #4
        str     r1, [r0], #4
        mov     r5, r0
        b       L54703c
L546fac:
        .word   0x000f0104
L546fb0:
        .word   0x437f0000
L546fb4:
        .word   0x3f000000
L546fb8:
        .word   0x007e9890
L546fbc:
        .word   0x007e96f0
L546fc0:
        .word   0x008aaf00
L546fc4:
        .word   0x008aaf20
L546fc8:
        .word   0x000f00fb
L546fcc:
        .word   0x008aaf28
L546fd0:
        .word   0x000f00db
L546fd4:
        .word   0xe5d42024
        .word   0xe1a00004
        .word   0xe1a01005
        .word   0xe3520000
        .word   0x0a000001
        .word   0xeb0001d3
        .word   0xe1a01000
        .word   0xe1a02006
        .word   0xe1a00004
        .word   0xeb000227
        .word   0xe1a05000
        .word   0xe3a00002
        .word   0xea00000b
L547008:
        .word   0xe5d42024
        .word   0xe1a00004
        .word   0xe1a01005
        .word   0xe3520000
        .word   0x0a000001
        .word   0xeb0001c6
        .word   0xe1a01000
        .word   0xe1a02006
        .word   0xe1a00004
        .word   0xeb000260
        .word   0xe1a05000
        .word   0xe3a00003
        .word   0xe5c406a2
L54703c:
        .word   0xe28dd024
        .word   0xe1a00005
        .word   0xe8bd8ff0
        .size   A_546bc8, . - A_546bc8

@ FUN_00547048
        .global A_547048
        .type   A_547048, %function
A_547048:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r0
        sub     sp, sp, #0xc
        mov     sb, r1
        ldr     r7, [r2, #0x104]
        ldr     r4, [sp, #0x28]
        mov     r6, r2
        mov     r8, r3
        ldr     r0, [r7, #0x1c]
        cmp     r0, #0
        moveq   r0, r1
        beq     L54714c
        mov     r1, #4
        mov     r0, #1
        strb    r1, [r5, #0x6a2]
        strb    r0, [r5, #0x6a0]
        strb    r0, [r5, #0x6a1]
        ldr     r1, [r5, #0x66c]
        mov     r0, r2
        bl      Fn_636204
        mov     r0, #3
        strb    r0, [r5, #0x25]
        mov     r1, sb
        mov     r0, r5
        bl      Fn_5685fc
        mov     sb, r0
        ldr     r0, [r4, #0x80]
        add     r4, r0, #0xf8
        str     r7, [r0, #0x13c]
        ldr     r0, [r6, #0xd8]
        str     r0, [sp]
        ldr     r0, [r6, #0xdc]
        str     r0, [sp, #4]
        mov     r0, sp
        bl      Fn_634220
        mov     r7, r0
        add     r0, sp, #4
        bl      Fn_634220
        cmp     r7, r0
        movne   r0, #2
        moveq   r0, #0
        strb    r0, [r4, #0x20]
        mov     r0, r4
        bl      Fn_567cec
        ldm     sp, {r1, r2}
        mov     r0, r4
        str     r1, [r4, #0x18]
        str     r2, [r4, #0x1c]
        bl      Fn_567cec
        ldr     r0, [r8, #0x10]
        ldr     r1, [r8, #0x14]
        mov     r2, r5
        str     r0, [r4]
        str     r1, [r4, #4]
        ldrb    r0, [r6, #0xb5]
        mov     r1, sb
        strb    r0, [r4, #0x49]
        mov     r0, r4
        bl      Fn_567ae0
        mov     r2, #0
        mov     r1, r0
        mov     r3, #1
        mov     r0, r5
        str     r2, [r4, #0x44]
        bl      Fn_547154
L54714c:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   A_547048, . - A_547048

@ FUN_0054735c
        .global A_54735c
        .type   A_54735c, %function
A_54735c:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x54
        mov     r4, r1
        mov     r0, r2
        bl      Fn_6364c4
        ldrb    r1, [r0]
        ldr     r6, L547464
        cmp     r1, #0
        beq     L547404
        add     r5, r6, #0xec
        add     r3, sp, #0x20
        vldmia  r5, {s0, s1, s2, s3}
        add     r5, sp, #0x40
        vstmia  r5, {s0, s1, s2, s3}
        add     r5, r6, #0xfc
        vldmia  r5, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r5, r6, #0x11c
        vstmia  sp, {s0, s1, s2, s3, s4, s5, s6, s7}
        vldmia  r5, {s0, s1, s2, s3, s4, s5, s6, s7}
        vstmia  r3, {s0, s1, s2, s3, s4, s5, s6, s7}
        ldrb    ip, [r0, #2]
        ldrb    r7, [r0, #1]
        add     r0, sp, #0x40
        ldr     ip, [r3, ip, lsl #2]
        ldr     r3, [r6, #0x148]
        ldr     r5, [r0, r1, lsl #2]
        add     r6, r6, #0x13c
        ldr     r2, [sp, r7, lsl #2]
        ldm     r6, {r0, r1}
        orr     r5, r5, r5, lsl #8
        str     r0, [r4]
        lsl     r6, r2, #0x10
        str     r1, [r4, #4]
        orr     r6, r6, ip, lsl #20
        add     r0, r4, #0x10
        orr     r1, r5, r6
        orr     r1, r1, r2, lsl #24
        add     r4, r4, #8
        orr     r1, r1, ip, lsl #28
        stm     r4, {r1, r3}
        add     sp, sp, #0x54
        pop     {r4, r5, r6, r7, pc}
L547404:
        ldrb    r5, [r0, #3]
        cmp     r5, #0
        beq     L54744c
        ldr     r1, L547468
        mov     r2, #0x44
        mov     r0, sp
        bl      Fn_20004c
        ldr     r1, [r6, #0x19c]
        add     r6, r6, #0x190
        ldr     r2, [sp, r5, lsl #2]
        ldm     r6, {r0, r3}
        str     r0, [r4]
        add     r0, r4, #0x10
        str     r3, [r4, #4]!
        str     r2, [r4, #4]
        str     r1, [r4, #8]
        add     sp, sp, #0x54
        pop     {r4, r5, r6, r7, pc}
L54744c:
        add     r6, r6, #0xdc
        ldm     r6, {r0, r1, r2, r3}
        stm     r4, {r0, r1, r2, r3}
        add     sp, sp, #0x54
        add     r0, r4, #0x10
        pop     {r4, r5, r6, r7, pc}
L547464:
        .word   0x007e96f0
L547468:
        .word   0x007e983c
        .size   A_54735c, . - A_54735c

@ FUN_0054746c
        .global A_54746c
        .type   A_54746c, %function
A_54746c:
        vmov    s0, r2
        vldr    s1, L547734
        push    {r4, r5, r6, r7}
        sub     sp, sp, #0x40
        mov     ip, #1
        mov     r2, #0
        vcvt.f32.u32 s0, s0
        mov     r4, sp
        vmul.f32 s2, s0, s1
        vldr    s0, L547738
L547494:
        ldr     r3, [r1, r2, lsl #2]
        mov     r6, #0xff
        mov     r5, r6
        and     r6, r6, r3, lsr #8
        and     r5, r5, r3, lsr #16
        lsl     r7, r3, #0x18
        orr     r6, r7, r6, lsl #16
        orr     r5, r6, r5, lsl #8
        orr     r3, r5, r3, lsr #24
        cmn     r3, #1
        beq     L547558
        ldrb    r6, [r1, r2, lsl #2]
        add     r5, r4, r2, lsl #4
        add     r3, r1, r2, lsl #2
        vmov    s3, r6
        vcvt.f32.u32 s3, s3
        vmul.f32 s3, s3, s1
        vstr    s3, [r5]
        ldrb    r6, [r3, #1]
        vmov    s3, r6
        vcvt.f32.u32 s3, s3
        vmul.f32 s3, s3, s1
        vstr    s3, [r5, #4]
        ldrb    r6, [r3, #2]
        vmov    s3, r6
        vcvt.f32.u32 s3, s3
        vmul.f32 s3, s3, s1
        vstr    s3, [r5, #8]
        ldrb    r3, [r3, #3]
        vmov    s3, r3
        mov     r3, #0
        vcvt.f32.u32 s3, s3
        vmul.f32 s3, s3, s1
        vstr    s3, [r5, #0xc]
        b       L547538
L547520:
        add     r6, r4, r3, lsl #4
        add     r3, r3, #1
        vstr    s0, [r6]
        vstr    s0, [r6, #4]
        vstr    s0, [r6, #8]
        vstr    s2, [r6, #0xc]
L547538:
        cmp     ip, #0
        cmpne   r2, r3
        bgt     L547520
        vldr    s3, [r5, #0xc]
        mov     ip, #0
        vmul.f32 s3, s3, s2
        vstr    s3, [r5, #0xc]
        b       L547574
L547558:
        cmp     ip, #0
        bne     L547574
        add     r3, r4, r2, lsl #4
        vstr    s0, [r3]
        vstr    s0, [r3, #4]
        vstr    s0, [r3, #8]
        vstr    s2, [r3, #0xc]
L547574:
        add     r2, r2, #1
        cmp     r2, #4
        blt     L547494
        add     r1, r0, #0x400
        cmp     ip, #0
        vstrne  s2, [r1, #0x264]
        bne     L547728
        ldrb    r2, [r0, #0x25]
        vmov    s0, r2
        vcvt.f32.u32 s0, s0
        vstr    s0, [r1, #0x264]
        ldr     ip, [r0, #0x66c]
        ldr     r3, [sp]
        add     r1, r0, #0x400
        add     r1, r1, #0x26c
        str     r3, [ip, r2, lsl #4]
        ldrb    ip, [r0, #0x25]
        mov     r3, #4
        ldr     r2, [r0, #0x66c]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #4]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #8
        ldr     r2, [r0, #0x66c]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #8]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0xc
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0xc]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x10
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x10]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x14
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x14]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x18
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x18]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x1c
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x1c]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x20
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x20]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x24
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x24]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x28
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x28]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x2c
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x2c]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x30
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x30]
        str     r3, [r2, ip]
        ldrb    ip, [r0, #0x25]
        mov     r2, #0x34
        ldr     r3, [r1]
        add     ip, r2, ip, lsl #4
        ldr     r2, [sp, #0x34]
        str     r2, [r3, ip]
        ldrb    ip, [r0, #0x25]
        mov     r3, #0x38
        ldr     r2, [r1]
        add     ip, r3, ip, lsl #4
        ldr     r3, [sp, #0x38]
        str     r3, [r2, ip]
        ldrb    r3, [r0, #0x25]
        mov     r2, #0x3c
        ldr     r1, [r1]
        add     r3, r2, r3, lsl #4
        ldr     r2, [sp, #0x3c]
        str     r2, [r1, r3]
        ldrb    r1, [r0, #0x25]
        add     r1, r1, #4
        strb    r1, [r0, #0x25]
L547728:
        add     sp, sp, #0x40
        pop     {r4, r5, r6, r7}
        bx      lr
L547734:
        .word   0x3b808081
L547738:
        .word   0x3f800000
        .size   A_54746c, . - A_54746c

@ FUN_0054789c
        .global A_54789c
        .type   A_54789c, %function
A_54789c:
        push    {r4, r5, r6, r7, lr}
        mov     r4, r1
        sub     sp, sp, #0xc
        ldr     r1, [r2, #0x28]
        ldr     r6, L5479a8
        str     r1, [sp]
        ldr     r3, [r2, #0x14]
        str     r3, [sp, #4]
        ldr     r2, [r2, #0x10]
        str     r2, [sp, #8]
        ldrb    r0, [r0, #0x6a2]
        cmp     r0, #2
        beq     L5478f8
        add     r0, r6, #0
        str     r1, [r6, #0xe0]!
        add     r1, r0, #0xd0
        str     r3, [r6, #0x18]
        str     r2, [r0, #0x100]
        mov     r2, #0x58
        mov     r0, r4
        bl      Fn_20004c
        add     r4, r4, #0x58
        b       L54799c
L5478f8:
        ldr     r5, L5479ac
        add     r0, r5, #0x10
        bl      Fn_634220
        mov     r7, r0
        mov     r0, sp
        bl      Fn_634220
        cmp     r7, r0
        nop
        bne     L54795c
        add     r0, r5, #0x28
        bl      Fn_634220
        mov     r7, r0
        add     r0, sp, #4
        bl      Fn_634220
        cmp     r7, r0
        nop
        bne     L54795c
        add     r0, r5, #0x30
        bl      Fn_634220
        mov     r7, r0
        add     r0, sp, #8
        bl      Fn_634220
        cmp     r7, r0
        nop
        beq     L54799c
L54795c:
        ldr     r1, [sp]
        ldr     ip, L5479a8
        ldr     r3, L5479b0
        str     r1, [r6, #0xe0]
        ldr     r7, [sp, #4]
        add     r2, r3, #0x18
        add     r0, r2, #0xa
        str     r7, [r6, #0xf8]
        ldr     r6, [sp, #8]
        str     r6, [ip, #0x100]
        stm     r4!, {r1, r3}
        ldr     r1, [r5, #0x28]
        stm     r4!, {r1, r2}
        ldr     r1, [r5, #0x30]
        str     r1, [r4], #4
        str     r0, [r4], #4
L54799c:
        add     sp, sp, #0xc
        mov     r0, r4
        pop     {r4, r5, r6, r7, pc}
L5479a8:
        .word   0x008aaf00
L5479ac:
        .word   0x008aafd0
L5479b0:
        .word   0x000f00db
        .size   A_54789c, . - A_54789c

@ FUN_005479b4
        .global A_5479b4
        .type   A_5479b4, %function
A_5479b4:
        push    {r4, r5, r6, r7, lr}
        mov     r3, r0
        sub     sp, sp, #0xc
        ldr     r0, [r2, #0x28]
        mov     r5, r1
        ldr     r4, L547aec
        str     r0, [sp]
        ldr     r1, [r2, #0x14]
        str     r1, [sp, #4]
        ldr     r2, [r2, #0x10]
        str     r2, [sp, #8]
        ldrb    r3, [r3, #0x6a2]
        cmp     r3, #3
        beq     L547a1c
        sub     r3, r4, #0x100
        str     r0, [r3, #0x138]
        str     r0, [r4, #0x50]
        str     r0, [r4, #0x68]!
        mov     r0, r5
        str     r1, [r4, #0x18]!
        add     r1, r3, #0x128
        str     r2, [r4, #8]
        mov     r2, #0x88
        bl      Fn_20004c
        add     r5, r5, #0x88
        b       L547ae0
L547a1c:
        ldr     r6, L547af0
        add     r0, r6, #0x10
        bl      Fn_634220
        mov     r7, r0
        mov     r0, sp
        bl      Fn_634220
        cmp     r7, r0
        nop
        bne     L547a80
        add     r0, r6, #0x58
        bl      Fn_634220
        mov     r7, r0
        add     r0, sp, #4
        bl      Fn_634220
        cmp     r7, r0
        nop
        bne     L547a80
        add     r0, r6, #0x60
        bl      Fn_634220
        mov     r7, r0
        add     r0, sp, #8
        bl      Fn_634220
        cmp     r7, r0
        nop
        beq     L547ae0
L547a80:
        ldr     r0, L547af4
        ldr     r1, [sp]
        ldr     r7, L547af8
        str     r1, [r0, #0x138]
        str     r1, [r4, #0x50]
        str     r1, [r4, #0x68]
        vldr    s0, [sp, #4]
        add     ip, r7, #8
        vstr    s0, [r4, #0x80]
        vldr    s0, [sp, #8]
        add     r3, r7, #0x10
        vstr    s0, [r4, #0x88]
        stm     r5!, {r1, r7}
        add     r2, r3, #0x18
        ldr     r1, [r6, #0x28]
        add     r0, r2, #0xa
        stm     r5!, {r1, ip}
        ldr     r1, [r6, #0x40]
        stm     r5!, {r1, r3}
        ldr     r1, [r6, #0x58]
        stm     r5!, {r1, r2}
        ldr     r1, [r6, #0x60]
        str     r1, [r5], #4
        str     r0, [r5], #4
L547ae0:
        add     sp, sp, #0xc
        mov     r0, r5
        pop     {r4, r5, r6, r7, pc}
L547aec:
        .word   0x008ab000
L547af0:
        .word   0x008ab028
L547af4:
        .word   0x008aaf00
L547af8:
        .word   0x000f00cb
        .size   A_5479b4, . - A_5479b4

@ FUN_00547afc
        .global A_547afc
        .type   A_547afc, %function
A_547afc:
        push    {r4, r5, r6, lr}
        add     r3, r0, #0x400
        add     r3, r3, #0x258
        ldrb    r4, [r0, #0x24]
        ldr     r2, [r0, #0x668]
        ldm     r3, {r3, r5, r6, ip}
        add     r2, r2, r4, lsl #4
        stm     r2, {r3, r5, r6, ip}
        ldrb    r2, [r0, #0x24]
        add     r2, r2, #1
        and     r2, r2, #0xff
        add     r3, r2, #1
        cmp     r3, #0x1a
        strb    r2, [r0, #0x24]
        bhi     L547b58
        ldrb    r2, [r0, #0x25]
        add     r2, r2, #7
        cmp     r2, #0x20
        bhi     L547b58
        ldrb    r2, [r0, #0x26]
        add     r2, r2, #7
        cmp     r2, #0x20
        bls     L547b64
L547b58:
        nop
        bl      Fn_54773c
        mov     r1, r0
L547b64:
        mov     r0, r1
        pop     {r4, r5, r6, pc}
        .size   A_547afc, . - A_547afc

@ FUN_00547b6c
        .global A_547b6c
        .type   A_547b6c, %function
A_547b6c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r1
        sub     sp, sp, #0x13c
        mov     r0, #0
        mov     r6, r2
        ldr     r1, L547f20
        str     r0, [sp, #0x134]
        add     sl, sp, #0x70
        add     r0, r1, #0x20
        ldm     r0, {r0, r2, r3, r5, r7, r8, sb, ip}
        stm     sp, {r0, r2, r3, r5, r7, r8, sb, ip}
        add     r0, r1, #0x40
        ldm     r0, {r0, r2, r3, r5, r7, r8, sb, ip}
        stm     sl, {r0, r2, r3, r5, r7, r8, sb, ip}
        add     r0, r1, #0x60
        add     sl, sp, #0x20
        ldm     r0, {r0, r2, r3, r5, r7, r8, sb, ip}
        stm     sl, {r0, r2, r3, r5, r7, r8, sb, ip}
        add     r0, r1, #0x80
        add     r3, sp, #0x40
        add     sl, sp, #0x50
        ldm     r0, {r0, r2}
        stm     r3, {r0, r2}
        add     r0, r1, #0x88
        ldm     r0, {r0, r2, r3, r5, r7, r8, sb, ip}
        stm     sl, {r0, r2, r3, r5, r7, r8, sb, ip}
        add     r0, r1, #0xa8
        add     r5, sp, #0xa8
        add     r1, r1, #0xb4
        ldm     r0, {r0, r2, r3}
        stm     r5, {r0, r2, r3}
        ldm     r1, {r0, r2, r3, r5, r7, ip}
        add     r1, sp, #0x90
        stm     r1, {r0, r2, r3, r5, r7, ip}
        mov     r2, #6
        mov     r5, #0
        ldr     r0, [r6, #0x30]
        lsl     r0, r0, #0x17
        lsr     r0, r0, #0x1d
        cmp     r0, #6
        movhs   r0, r2
        cmp     r0, #0
        str     r0, [sp, #0xb8]
        rsbhi   r0, r0, #6
        strhi   r0, [sp, #0xbc]
        bls     L547eec
L547c24:
        mov     r0, r6
        bl      Fn_636478
        add     r1, r5, r5, lsl #1
        cmp     r5, #0
        add     r2, r0, r1, lsl #2
        ldr     r0, [r2, #8]
        and     r1, r0, #0xf
        and     r0, r0, #0xf0
        add     r1, r6, r1, lsl #2
        add     r0, r6, r0, lsr #2
        ldr     r7, [r1, #0x10]
        ldr     ip, [r0, #0x10]
        ldr     r0, [sp, #0xbc]
        add     r0, r0, r5
        bne     L547d14
        ldr     r1, [r2]
        and     r3, r1, #0xf
        cmp     r3, #4
        beq     L547c90
        lsl     r3, r1, #0x18
        lsr     r3, r3, #0x1c
        cmp     r3, #4
        beq     L547c90
        lsl     r1, r1, #0x14
        lsr     r1, r1, #0x1c
        cmp     r1, #4
        bne     L547cc0
L547c90:
        ldr     r1, [r2, #4]
        and     r3, r1, #0xf
        cmp     r3, #4
        beq     L547d14
        lsl     r3, r1, #0x18
        lsr     r3, r3, #0x1c
        cmp     r3, #4
        beq     L547d14
        lsl     r1, r1, #0x14
        lsr     r1, r1, #0x1c
        cmp     r1, #4
        beq     L547d14
L547cc0:
        cmp     r0, #1
        mov     r3, #1
        blt     L547d0c
        ldr     sb, L547f20
        ldr     sl, L547f24
        add     fp, sp, #0x90
L547cd8:
        add     r1, r4, #4
        str     sl, [r4]
        ldr     r4, [fp, r3, lsl #2]
        add     r3, r3, #1
        cmp     r3, r0
        orr     r8, r4, #0x80000000
        orr     r8, r8, #0x4f0000
        str     r8, [r1], #4
        add     r8, sb, #0xcc
        add     r4, r1, #0x10
        vldmia  r8, {s0, s1, s2, s3}
        vstmia  r1, {s0, s1, s2, s3}
        ble     L547cd8
L547d0c:
        mov     r0, #0
        b       L547d50
L547d14:
        sub     r1, r5, #1
        cmp     r1, #3
        bhi     L547d50
        ldm     r2, {r1, r3}
        add     r8, r0, #7
        ands    r1, r1, #0x40000000
        movne   r1, #1
        ands    r3, r3, #0x40000000
        lsl     r1, r1, r8
        add     r8, r0, #0xb
        movne   r3, #1
        orr     r3, r1, r3, lsl r8
        ldr     r1, [sp, #0x134]
        orr     r1, r1, r3
        str     r1, [sp, #0x134]
L547d50:
        lsr     ip, ip, #0x18
        bic     r7, r7, #0xff000000
        orr     ip, r7, ip, lsl #24
        vmov    s0, ip
        ldm     r2, {r1, r2}
        mov     ip, #0xf
        mov     r3, #0xf
        str     r3, [sp, #0xb4]
        str     ip, [sp, #0xc8]
        str     ip, [sp, #0x100]
        str     ip, [sp, #0xdc]
        str     ip, [sp, #0xec]
        mov     sb, ip
        mov     sl, ip
        mov     lr, ip
        str     ip, [sp, #0xfc]
        str     ip, [sp, #0x114]
        str     ip, [sp, #0x118]
        mov     ip, #3
        str     ip, [sp, #0xc4]
        str     r3, [sp, #0xd0]
        str     ip, [sp, #0x128]
        mov     r3, sp
        and     ip, r1, #0xf
        and     sb, sb, r1, lsr #12
        ldr     r7, [r3, ip, lsl #2]
        and     ip, r2, #0xf
        ldr     r8, [r3, ip, lsl #2]
        add     ip, sp, #0x90
        ldr     r0, [ip, r0, lsl #2]
        orr     fp, r0, #0x80000000
        ldr     r0, [sp, #0xd0]
        orr     fp, fp, #0x4f0000
        and     r0, r0, r1, lsr #8
        ldr     r0, [r3, r0, lsl #2]
        lsl     r0, r0, #8
        orr     ip, r0, r8, lsl #16
        ldr     r0, [sp, #0xb4]
        add     r8, sp, #0x20
        and     r0, r0, r1, lsr #20
        ldr     r0, [r8, r0, lsl #2]
        lsl     r8, r0, #8
        ldr     r0, [sp, #0xc8]
        and     r0, r0, r1, lsr #4
        ldr     r0, [r3, r0, lsl #2]
        orr     r0, r7, r0, lsl #4
        orr     r0, r0, ip
        add     ip, sp, #0x20
        ldr     r7, [sp, #0xfc]
        ldr     ip, [ip, sb, lsl #2]
        and     sb, sl, r1, lsr #16
        add     sl, sp, #0x20
        and     r7, r7, r2, lsr #4
        ldr     sb, [sl, sb, lsl #2]
        ldr     r7, [r3, r7, lsl #2]
        orr     sl, ip, sb, lsl #4
        ldr     ip, [sp, #0xdc]
        orr     r7, r0, r7, lsl #20
        and     r0, lr, r2, lsr #16
        and     sb, ip, r2, lsr #12
        add     ip, sp, #0x50
        ldr     sb, [ip, sb, lsl #2]
        ldr     r0, [ip, r0, lsl #2]
        orr     sb, r8, sb, lsl #12
        ldr     r8, [sp, #0x100]
        orr     sb, sb, sl
        orr     r0, sb, r0, lsl #16
        and     r8, r8, r2, lsr #8
        ldr     r3, [r3, r8, lsl #2]
        orr     r3, r7, r3, lsl #24
        ldr     r7, [sp, #0xec]
        and     r7, r7, r2, lsr #20
        ldr     r7, [ip, r7, lsl #2]
        ldr     ip, [sp, #0x114]
        orr     r0, r0, r7, lsl #20
        and     ip, ip, r1, lsr #24
        add     r7, sp, #0x70
        add     r8, sp, #0x70
        ldr     r7, [r7, ip, lsl #2]
        ldr     ip, [sp, #0x118]
        add     r5, r5, #1
        and     ip, ip, r2, lsr #24
        ldr     ip, [r8, ip, lsl #2]
        add     r8, r4, #8
        orr     r7, r7, ip, lsl #16
        ldr     ip, [sp, #0xc4]
        and     r1, ip, r1, lsr #28
        add     ip, sp, #0xa8
        ldr     r1, [ip, r1, lsl #2]
        ldr     ip, [sp, #0x128]
        and     r2, ip, r2, lsr #28
        add     ip, sp, #0xa8
        ldr     ip, [ip, r2, lsl #2]
        stm     r8, {r0, r7}
        mov     r2, r4
        stm     r4, {r3, fp}
        orr     r0, r1, ip, lsl #16
        vstr    s0, [r4, #0x10]
        str     r0, [r2, #0x14]
        ldr     r0, [sp, #0xb8]
        add     r4, r4, #0x18
        cmp     r5, r0
        blo     L547c24
L547eec:
        ldr     r0, [r6, #0x10]
        ldr     r2, L547f28
        ldr     r1, L547f2c
        lsr     r3, r0, #0x18
        bic     r0, r0, #0xff000000
        orr     r0, r0, r3, lsl #24
        stm     r4, {r0, r2}
        add     r0, r4, #0x10
        ldr     r2, [sp, #0x134]
        str     r1, [r4, #0xc]
        str     r2, [r4, #8]
        add     sp, sp, #0x13c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L547f20:
        .word   0x007e96f0
L547f24:
        .word   0x0eef0eef
L547f28:
        .word   0x000f00fd
L547f2c:
        .word   0x000200e0
        .size   A_547b6c, . - A_547b6c

@ FUN_00547f30
        .global A_547f30
        .type   A_547f30, %function
A_547f30:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r3
        ldr     r0, [r0, #0x69c]
        mov     r7, r2
        mov     r6, r1
        cmp     r0, r5
        beq     L547f70
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        cmp     r2, #0
        beq     L547f68
        bl      Fn_54773c
        mov     r1, r0
L547f68:
        mov     r6, r1
        str     r5, [r4, #0x69c]
L547f70:
        cmp     r5, #0
        beq     L547fd0
        cmp     r5, #2
        blt     L547f9c
        ldrb    r2, [r4, #0x24]
        mov     r0, r4
        cmp     r2, #0
        beq     L547f98
        bl      Fn_54773c
        mov     r1, r0
L547f98:
        mov     r6, r1
L547f9c:
        ldrb    r0, [r4, #0x26]
        add     r1, r4, #0x400
        lsl     r2, r5, #4
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vstr    s0, [r1, #0x260]
        ldr     r1, [r4, #0x670]
        add     r0, r1, r0, lsl #4
        mov     r1, r7
        bl      Fn_20004c
        ldrb    r0, [r4, #0x26]
        add     r0, r0, r5
        strb    r0, [r4, #0x26]
L547fd0:
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_547f30, . - A_547f30

@ FUN_00547fd8
        .global A_547fd8
        .type   A_547fd8, %function
A_547fd8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #8]
        mov     r5, r1
        mov     r6, r2
        ldr     r1, [r0]
        ldr     r2, [r1, #0x30]
        mov     r1, #0
        blx     r2
        ldr     r0, [r4, #8]
        ldr     r1, [r0]
        ldr     r2, [r1, #0x34]
        mov     r1, r6
        blx     r2
        ldr     r1, [r4, #8]
        mov     r2, r6
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_547fd8, . - A_547fd8

@ FUN_00548024
        .global A_548024
        .type   A_548024, %function
A_548024:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r1
        mov     r6, r2
        bl      Fn_569bd4
        cmp     r4, #0
        mov     r1, r0
        ldrne   r0, [r4, #0x10]
        mov     r3, r5
        mov     r2, r6
        cmpne   r0, #0
        beq     L548068
        ldrb    ip, [r0, #0xb7]
        tst     ip, #1
        beq     L548068
        bl      Fn_634724
        mov     r1, r0
L548068:
        pop     {r4, r5, r6, lr}
        mov     r0, r1
        b       Fn_569c14
        .size   A_548024, . - A_548024

@ FUN_00548074
        .global A_548074
        .type   A_548074, %function
A_548074:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x66c]
        ldrb    r2, [r4, #0x25]
        add     r0, r0, r2, lsl #4
        bl      Fn_01a174
        ldrb    r0, [r4, #0x25]
        add     r1, r4, #0x400
        vmov    s0, r0
        add     r0, r0, #3
        vcvt.f32.u32 s0, s0
        vstr    s0, [r1, #0x258]
        strb    r0, [r4, #0x25]
        pop     {r4, pc}
        .size   A_548074, . - A_548074

@ FUN_005480ac
        .global A_5480ac
        .type   A_5480ac, %function
A_5480ac:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, r1
        mov     r5, r2
        bl      Fn_569bd4
        mov     r1, r0
        ldr     r0, [r4]
        mov     r2, r5
        ldr     r3, [r0, #0x10]
        mov     r0, r4
        blx     r3
        tst     r5, #1
        mov     r1, r0
        bne     L5480f4
        add     r2, r6, #4
        mov     r0, r4
        bl      Fn_569700
        mov     r1, r0
L5480f4:
        pop     {r4, r5, r6, lr}
        mov     r0, r1
        b       Fn_569c14
        .size   A_5480ac, . - A_5480ac

@ FUN_00548100
        .global A_548100
        .type   A_548100, %function
A_548100:
        str     r4, [sp, #-4]!
        ldrb    r4, [r0, #0x26]
        ldr     ip, [r0, #0x670]
        vldmia  r2, {s3, s4}
        and     r2, r4, #0xff
        vmov    s0, r2
        vldmia  r1, {s1, s2}
        add     r1, ip, r4, lsl #4
        add     r3, r2, #1
        vstmia  r1, {s1, s2, s3, s4}
        add     r2, r0, #0x400
        vcvt.f32.u32 s0, s0
        vstr    s0, [r2, #0x25c]
        strb    r3, [r0, #0x26]
        pop     {r4}
        bx      lr
        .size   A_548100, . - A_548100

@ FUN_00548140
        .global A_548140
        .type   A_548140, %function
A_548140:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        bl      Fn_569db4
        mov     r4, r0
        ldr     r0, L5481a8
        str     r0, [r4]
        ldrd    r0, r1, [r5]
        bl      Fn_569b54
        add     r0, r0, #0x9c0
        mov     r1, #4
        bl      Fn_5485a4
        mov     r1, r0
        ldrd    r2, r3, [r5]
        mov     r0, r4
        bl      Fn_5684dc
        mov     r0, #0
        str     r0, [r4, #0x694]
        str     r0, [r4, #0x698]
        str     r0, [r4, #0x69c]
        mov     r1, #1
        strb    r1, [r4, #0x6a0]
        mov     r3, #6
        strb    r1, [r4, #0x6a1]
        mov     r0, r4
        strb    r3, [r4, #0x6a2]
        pop     {r4, r5, r6, pc}
L5481a8:
        .word   0x0082c68c
        .size   A_548140, . - A_548140

@ FUN_00548a5c
        .global A_548a5c
        .type   A_548a5c, %function
A_548a5c:
        push    {r4, lr}
        mov     r4, r1
        bl      Fn_54851c
        mov     r0, r4
        pop     {r4, lr}
        mov     r0, r0
        ldr     r1, L548a80
        str     r0, [r1, #4]
        bx      lr
L548a80:
        .word   0x008ab268
        .size   A_548a5c, . - A_548a5c

@ FUN_00549004
        .global A_549004
        .type   A_549004, %function
A_549004:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x10]
        mov     r2, #0xf00
        bic     r0, r0, #0x7f
        orr     r0, r0, #0x90
        str     r0, [r4, #0x10]
        ldr     r3, [r1]
        mov     r0, r4
        str     r3, [r4]
        ldr     r3, [r1, #4]
        str     r3, [r4, #4]
        ldrh    r3, [r1, #8]
        strh    r3, [r4, #8]
        ldrh    r3, [r1, #0xa]
        strh    r3, [r4, #0xa]
        ldrh    r3, [r1, #0xc]
        strh    r3, [r4, #0xc]
        ldrh    r3, [r1, #0xe]
        strh    r3, [r4, #0xe]
        ldrb    r3, [r1, #0x10]
        ldr     r1, [r4, #0x10]
        and     r2, r2, r3, lsl #8
        bic     r1, r1, #0xf00
        orr     r1, r1, r2
        str     r1, [r0, #0x10]
        bl      Fn_548e78
        mov     r0, r4
        pop     {r4, pc}
        .size   A_549004, . - A_549004

@ FUN_00549478
        .global A_549478
        .type   A_549478, %function
A_549478:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        movs    r7, r1
        sub     sp, sp, #0x10
        mov     r6, r2
        mov     r4, r3
        addne   r0, r5, #0x158
        blne    Fn_54e3e4
        mov     r8, #0
        vldr    s0, L5495b0
        strb    r8, [r5, #0x169]
        vstr    s0, [r5, #0x138]
        vstr    s0, [r5, #0x13c]
        vstr    s0, [r5, #0x140]
        vstr    s0, [r5, #0x144]
        mov     r1, #4
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r5, #0x164]
        beq     L5494f0
        mov     r3, r7
        mov     r2, r3
        mov     r1, r2
        str     r8, [sp]
        str     r8, [sp, #4]
        str     r8, [sp, #8]
        bl      Fn_54c338
L5494f0:
        lsl     r0, r4, #3
        mov     r1, #4
        strb    r8, [r5, #0x168]
        bl      Fn_548350
        cmp     r0, #0
        moveq   r0, r8
        beq     L549530
        cmp     r4, #0
        mov     r1, #0
        bls     L549530
L549518:
        adds    r2, r0, r1, lsl #3
        add     r1, r1, #1
        strbne  r8, [r2]
        strne   r8, [r2, #4]
        cmp     r1, r4
        blo     L549518
L549530:
        cmp     r0, #0
        str     r0, [r5, #0x160]
        strbne  r4, [r5, #0x168]
        ldrb    r0, [r5, #0x168]
        mov     r4, #0
        cmp     r0, #0
        movgt   r7, #4
        ble     L5495a8
L549550:
        mov     r1, #4
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        nop
        blne    Fn_54e238
        ldr     r1, [r5, #0x160]
        add     r2, r7, r4, lsl #3
        cmp     r0, #0
        str     r0, [r1, r2]
        beq     L549598
        str     r8, [sp]
        str     r8, [sp, #4]
        str     r8, [sp, #8]
        ldrb    r1, [r6, r4]
        mov     r3, r1
        mov     r2, r1
        bl      Fn_54c338
L549598:
        ldrb    r0, [r5, #0x168]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L549550
L5495a8:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L5495b0:
        .word   0x00000000
        .size   A_549478, . - A_549478

@ FUN_00549d3c
        .global A_549d3c
        .type   A_549d3c, %function
A_549d3c:
        push    {r3, r4, r5, lr}
        mov     r5, r1
        mov     r4, r2
        bl      Fn_5460a8
        ldr     r1, L549d90
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x148
        ldr     r1, L549d94
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        strb    r4, [sp]
        sub     r4, r0, #0x158
        mov     r3, #1
        mov     r2, sp
        mov     r1, r5
        mov     r0, r4
        bl      Fn_549478
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L549d90:
        .word   0x0082c6fc
L549d94:
        .word   0x00641e68
        .size   A_549d3c, . - A_549d3c

@ FUN_00549d98
        .global A_549d98
        .type   A_549d98, %function
A_549d98:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r2
        mov     r8, r1
        mov     r7, r3
        ldrd    r4, r5, [sp, #0x20]
        bl      Fn_5460a8
        ldr     r1, L549e00
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x148
        ldr     r1, L549e04
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        strb    r6, [sp]
        strb    r7, [sp, #1]
        sub     r6, r0, #0x158
        strb    r4, [sp, #3]
        mov     r3, #4
        mov     r2, sp
        mov     r1, r8
        mov     r0, r6
        strb    r5, [sp, #2]
        bl      Fn_549478
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L549e00:
        .word   0x0082c6fc
L549e04:
        .word   0x00641e68
        .size   A_549d98, . - A_549d98

@ FUN_00549e08
        .global A_549e08
        .type   A_549e08, %function
A_549e08:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     sl, r2
        add     r2, sp, #0x40
        mov     fp, r3
        ldm     r2, {r4, r5, r6, r7, r8, sb}
        bl      Fn_5460a8
        ldr     r1, L549e88
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x148
        ldr     r1, L549e8c
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        strb    sl, [sp]
        strb    r6, [sp, #4]
        strb    fp, [sp, #1]
        strb    r7, [sp, #6]
        sub     sl, r0, #0x158
        strb    r4, [sp, #3]
        strb    r8, [sp, #5]
        ldr     r1, [sp, #0x10]
        mov     r3, #8
        mov     r2, sp
        mov     r0, sl
        strb    r5, [sp, #2]
        strb    sb, [sp, #7]
        bl      Fn_549478
        add     sp, sp, #0x1c
        mov     r0, sl
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L549e88:
        .word   0x0082c6fc
L549e8c:
        .word   0x00641e68
        .size   A_549e08, . - A_549e08

@ FUN_0054a3d8
        .global A_54a3d8
        .type   A_54a3d8, %function
A_54a3d8:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x30
        mov     r5, r1
        bl      Fn_5460a8
        ldr     r1, L54a484
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x140
        ldr     r1, L54a488
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        sub     r4, r0, #0x150
        mov     r1, #1
        bl      Fn_54e3e4
        mov     r6, #0
        mov     r1, #4
        mov     r0, #0x50
        strb    r6, [r4, #0xd4]
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r4, #0x13c]
        beq     L54a478
        mov     r3, #1
        mov     r2, r3
        mov     r1, r3
        str     r6, [sp]
        str     r6, [sp, #4]
        str     r6, [sp, #8]
        bl      Fn_54c338
        mov     r1, r5
        add     r0, sp, #0x10
        bl      Fn_549004
        ldr     r2, [r4]
        mov     r1, r0
        mov     r0, r4
        ldr     r2, [r2, #0x70]
        blx     r2
L54a478:
        add     sp, sp, #0x30
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L54a484:
        .word   0x0082c784
L54a488:
        .word   0x00641e68
        .size   A_54a3d8, . - A_54a3d8

@ FUN_0054a48c
        .global A_54a48c
        .type   A_54a48c, %function
A_54a48c:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        mov     r5, r1
        bl      Fn_5460a8
        ldr     r1, L54a524
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x140
        ldr     r1, L54a528
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        sub     r4, r0, #0x150
        mov     r1, #1
        bl      Fn_54e3e4
        mov     r6, #0
        mov     r1, #4
        mov     r0, #0x50
        strb    r6, [r4, #0xd4]
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r4, #0x13c]
        beq     L54a518
        mov     r3, #1
        mov     r2, r3
        mov     r1, r3
        str     r6, [sp]
        str     r6, [sp, #4]
        str     r6, [sp, #8]
        bl      Fn_54c338
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54a0d4
L54a518:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L54a524:
        .word   0x0082c784
L54a528:
        .word   0x00641e68
        .size   A_54a48c, . - A_54a48c

@ FUN_0054a52c
        .global A_54a52c
        .type   A_54a52c, %function
A_54a52c:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        mov     r5, r1
        bl      Fn_5460a8
        ldr     r1, L54a5bc
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x140
        ldr     r1, L54a5c0
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        movs    r1, r5
        sub     r4, r0, #0x150
        addne   r0, r4, #0x150
        blne    Fn_54e3e4
        mov     r6, #0
        mov     r1, #4
        mov     r0, #0x50
        strb    r6, [r4, #0xd4]
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r4, #0x13c]
        beq     L54a5b0
        mov     r3, r5
        mov     r2, r3
        mov     r1, r2
        str     r6, [sp]
        str     r6, [sp, #4]
        str     r6, [sp, #8]
        bl      Fn_54c338
L54a5b0:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L54a5bc:
        .word   0x0082c784
L54a5c0:
        .word   0x00641e68
        .size   A_54a52c, . - A_54a52c

@ FUN_0054a978
        .global A_54a978
        .type   A_54a978, %function
A_54a978:
        push    {r4, r5, lr}
        sub     sp, sp, #0x64
        mov     r4, r0
        mov     r5, r1
        mov     r0, sp
        bl      Fn_686674
        ldr     r0, [r4, #0x104]
        mov     r1, sp
        str     r0, [sp, #0x44]
        mov     r0, r4
        bl      Fn_54a7a0
        ldrb    r0, [r4, #0xfe]
        cmp     r0, #0
        beq     L54a9d8
        mov     r0, sp
        bl      Fn_56799c
        ldrh    r2, [r4, #0xfa]
        ldr     r1, [r4, #0xd4]
        mov     r0, sp
        bl      Fn_686064
        mov     r0, sp
        mov     r0, r0
        mov     r0, #0
        strb    r0, [r4, #0xfe]
L54a9d8:
        ldr     r0, [r4, #0x104]
        ldrb    r1, [r0, #8]
        cmp     r1, #0
        bne     L54aa24
        cmp     r5, #0
        beq     L54aa24
        ldrb    r1, [r0, #9]
        tst     r1, #8
        ldrne   r1, [r0, #0x18]
        cmpne   r1, #0
        beq     L54aa18
        ldr     r2, [r0, #0x14]
        ldr     r3, [r0, #0x10]
        cmp     r3, r2
        streq   r1, [r0, #0x10]
        strne   r2, [r0, #0x10]
L54aa18:
        mov     r1, sp
        mov     r0, r5
        bl      Fn_568f24
L54aa24:
        mov     r0, sp
        bl      Fn_5684d4
        add     sp, sp, #0x64
        pop     {r4, r5, pc}
        .size   A_54a978, . - A_54a978

@ FUN_0054abb0
        .global A_54abb0
        .type   A_54abb0, %function
A_54abb0:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        mov     r4, r0
        vpush   {d8}
        beq     L54abdc
        ldr     r0, [r5]
        ldr     r1, [r0, #0x48]
        mov     r0, r5
        blx     r1
        cmp     r0, #1
        bne     L54ac84
L54abdc:
        ldr     r0, [r4, #0xe0]
        ldrb    r1, [r4, #0xfe]
        cmp     r0, r5
        movne   r0, #1
        moveq   r0, #0
        orr     r2, r1, r0
        cmp     r0, #0
        strb    r2, [r4, #0xfe]
        beq     L54ac84
        movs    r0, r5
        str     r5, [r4, #0xe0]
        beq     L54ac8c
        ldr     r1, [r0]
        ldr     r1, [r1, #8]
        blx     r1
        vmov    s0, r0
        ldr     r0, [r4, #0xe0]
        ldr     r1, [r0]
        vcvt.f32.s32 s16, s0
        ldr     r1, [r1, #0xc]
        blx     r1
        vmov    s0, r0
        vldr    s1, [r4, #0xe4]
        vcmp.f32 s1, s16
        vcvt.f32.s32 s0, s0
        vmrs    apsr_nzcv, fpscr
        bne     L54ac60
        vmov.f32 s1, s0
        vldr    s2, [r4, #0xe8]
        vcmp.f32 s2, s1
        vmrs    apsr_nzcv, fpscr
        moveq   r0, #1
        beq     L54ac64
L54ac60:
        mov     r0, #0
L54ac64:
        ldrb    r1, [r4, #0xfe]
        eors    r0, r0, #1
        orr     r2, r1, r0
        strb    r2, [r4, #0xfe]
        mov     r1, r4
        vstrne  s16, [r4, #0xe4]
        beq     L54ac84
L54ac80:
        vstr    s0, [r1, #0xe8]
L54ac84:
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L54ac8c:
        vldr    s0, L54ace4
        vldr    s1, [r4, #0xe4]
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        bne     L54acb8
        vmov.f32 s1, s0
        vldr    s2, [r4, #0xe8]
        vcmp.f32 s2, s1
        vmrs    apsr_nzcv, fpscr
        moveq   r0, #1
        beq     L54acbc
L54acb8:
        mov     r0, #0
L54acbc:
        ldrb    r1, [r4, #0xfe]
        eors    r0, r0, #1
        vmovne.f32 s1, s0
        orr     r2, r1, r0
        strb    r2, [r4, #0xfe]
        mov     r1, r4
        vstrne  s1, [r4, #0xe4]
        bne     L54ac80
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L54ace4:
        .word   0x00000000
        .size   A_54abb0, . - A_54abb0

@ FUN_0054af54
        .global A_54af54
        .type   A_54af54, %function
A_54af54:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        mov     r5, r1
        mov     r6, r2
        bl      Fn_5460a8
        ldr     r1, L54afec
        mov     r3, #2
        mov     r2, #4
        str     r1, [r0], #0xd8
        ldr     r1, L54aff0
        blx     Fn_0000ac_t
        sub     r4, r0, #0xd8
        vldr    s0, L54aff4
        add     r0, r0, #0xc
        mov     r2, r6
        vstr    s0, [r0]
        vstr    s0, [r0, #4]
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54aa4c
        mov     r1, #4
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r4, #0x100]
        beq     L54afe0
        mov     r1, #0
        mov     r3, r1
        mov     r2, r1
        str     r1, [sp]
        str     r1, [sp, #4]
        str     r1, [sp, #8]
        bl      Fn_54c338
L54afe0:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L54afec:
        .word   0x0082c804
L54aff0:
        .word   0x00641e68
L54aff4:
        .word   0x00000000
        .size   A_54af54, . - A_54af54

@ FUN_0054aff8
        .global A_54aff8
        .type   A_54aff8, %function
A_54aff8:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r8, r1
        ldr     r6, [sp, #0x28]
        mov     r5, r2
        mov     r7, r3
        bl      Fn_5460a8
        ldr     r1, L54b0c4
        mov     r3, #2
        mov     r2, #4
        str     r1, [r0], #0xd8
        ldr     r1, L54b0c8
        blx     Fn_0000ac_t
        sub     r4, r0, #0xd8
        vldr    s0, L54b0cc
        add     r0, r0, #0xc
        mov     r2, r6
        vstr    s0, [r0]
        vstr    s0, [r0, #4]
        mov     r1, r8
        mov     r0, r4
        bl      Fn_54aa4c
        mov     r1, r7
        mov     r0, r4
        bl      Fn_54abb0
        mov     r6, #0
        mov     r0, r5
        blx     Fn_000d0c_t
        mov     r3, r0
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_54a6e4
        mov     r1, #4
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r4, #0x100]
        beq     L54b0b8
        mov     r1, #0
        mov     r3, r1
        mov     r2, r1
        str     r1, [sp]
        str     r1, [sp, #4]
        str     r1, [sp, #8]
        bl      Fn_54c338
L54b0b8:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L54b0c4:
        .word   0x0082c804
L54b0c8:
        .word   0x00641e68
L54b0cc:
        .word   0x00000000
        .size   A_54aff8, . - A_54aff8

@ FUN_0054b0d0
        .global A_54b0d0
        .type   A_54b0d0, %function
A_54b0d0:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0xc
        mov     r5, r2
        mov     sb, r1
        add     r1, sp, #0x28
        mov     r6, r3
        ldm     r1, {r7, r8}
        bl      Fn_5460a8
        ldr     r1, L54b194
        mov     r3, #2
        mov     r2, #4
        str     r1, [r0], #0xd8
        ldr     r1, L54b198
        blx     Fn_0000ac_t
        sub     r4, r0, #0xd8
        vldr    s0, L54b19c
        add     r0, r0, #0xc
        mov     r2, r8
        vstr    s0, [r0]
        vstr    s0, [r0, #4]
        mov     r1, sb
        mov     r0, r4
        bl      Fn_54aa4c
        mov     r1, r7
        mov     r0, r4
        bl      Fn_54abb0
        mov     r0, r4
        mov     r1, r5
        mov     r3, r6
        mov     r2, #0
        bl      Fn_54a6e4
        mov     r1, #4
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        blne    Fn_54e238
        cmp     r0, #0
        str     r0, [r4, #0x100]
        beq     L54b188
        mov     r1, #0
        mov     r3, r1
        mov     r2, r1
        str     r1, [sp]
        str     r1, [sp, #4]
        str     r1, [sp, #8]
        bl      Fn_54c338
L54b188:
        add     sp, sp, #0xc
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, pc}
L54b194:
        .word   0x0082c804
L54b198:
        .word   0x00641e68
L54b19c:
        .word   0x00000000
        .size   A_54b0d0, . - A_54b0d0

@ FUN_0054e238
        .global A_54e238
        .type   A_54e238, %function
A_54e238:
        ldr     r1, L54e28c
        push    {r4, lr}
        add     r2, r0, #8
        str     r1, [r0]
        mov     r3, #0
        str     r2, [r0, #8]
        str     r3, [r0, #4]
        str     r2, [r0, #0xc]
        ldr     r1, L54e290
        mov     r3, #7
        mov     r2, #4
        add     r0, r0, #0x10
        blx     Fn_0000ac_t
        sub     r4, r0, #0x10
        mov     r0, r4
        bl      Fn_54db18
        mov     r1, #0x15
        add     r0, r4, #0x38
        bl      Fn_1fddd8
        mov     r0, r4
        pop     {r4, pc}
L54e28c:
        .word   0x0082ca0c
L54e290:
        .word   0x00641e68
        .size   A_54e238, . - A_54e238

@ FUN_0054e5ac
        .global A_54e5ac
        .type   A_54e5ac, %function
A_54e5ac:
        push    {r4, r5, r6, r7}
        mov     r6, #8
        ldr     r5, [r0, #4]
        ldr     r3, [r2]
        vldr    s0, [r2, #4]
        add     r7, r5, r1, lsl #5
        mov     r4, #0x10
        str     r3, [r7]
        add     r5, r6, r1, lsl #5
        add     r3, r4, r1, lsl #5
        vstr    s0, [r7, #4]
        ldr     r4, [r0, #4]
        mov     ip, #0x18
        add     r6, r2, #8
        add     r1, ip, r1, lsl #5
        ldm     r6, {r6, ip}
        add     r4, r4, r5
        add     r5, r2, #0x10
        stm     r4, {r6, ip}
        ldr     r4, [r0, #4]
        ldm     r5, {r5, ip}
        add     r3, r3, r4
        stm     r3, {r5, ip}
        ldr     r0, [r0, #4]
        ldr     r3, [r2, #0x18]
        ldr     r2, [r2, #0x1c]
        str     r3, [r0, r1]!
        str     r2, [r0, #4]
        pop     {r4, r5, r6, r7}
        bx      lr
        .size   A_54e5ac, . - A_54e5ac

@ FUN_0054ea60
        .global A_54ea60
        .type   A_54ea60, %function
A_54ea60:
        ldr     ip, L54eaa4
        push    {r4, lr}
        add     r0, r0, r1, lsl #2
        sub     sp, sp, #0x10
        ldr     r1, [ip, r2, lsl #2]
        ldr     r4, [sp, #0x18]
        mov     r2, sp
        str     r1, [sp]
        ldr     r1, [ip, r3, lsl #2]
        str     r1, [sp, #4]
        ldr     r1, [ip, r4, lsl #2]
        str     r1, [sp, #8]
        ldr     r0, [r0, #0x210]
        mov     r1, #1
        bl      Fn_67054c
        add     sp, sp, #0x10
        pop     {r4, pc}
L54eaa4:
        .word   0x007ebc84
        .size   A_54ea60, . - A_54ea60

@ FUN_0054eaa8
        .global A_54eaa8
        .type   A_54eaa8, %function
A_54eaa8:
        add     r0, r0, r1, lsl #2
        ldr     r1, L54eac0
        ldr     r0, [r0, #0x270]
        add     r1, r1, r2, lsl #2
        vldr    s0, [r1]
        b       Fn_665938
L54eac0:
        .word   0x007ebca4
        .size   A_54eaa8, . - A_54eaa8

@ FUN_0054eac4
        .global A_54eac4
        .type   A_54eac4, %function
A_54eac4:
        ldr     ip, L54eb08
        push    {r4, lr}
        add     r0, r0, r1, lsl #2
        sub     sp, sp, #0x10
        ldr     r1, [ip, r2, lsl #2]
        ldr     r4, [sp, #0x18]
        mov     r2, sp
        str     r1, [sp]
        ldr     r1, [ip, r3, lsl #2]
        str     r1, [sp, #4]
        ldr     r1, [ip, r4, lsl #2]
        str     r1, [sp, #8]
        ldr     r0, [r0, #0x228]
        mov     r1, #1
        bl      Fn_67054c
        add     sp, sp, #0x10
        pop     {r4, pc}
L54eb08:
        .word   0x007ebc84
        .size   A_54eac4, . - A_54eac4

@ FUN_0054eb0c
        .global A_54eb0c
        .type   A_54eb0c, %function
A_54eb0c:
        str     lr, [sp, #-4]!
        ldrb    r3, [r2]
        vldr    s0, L54eb84
        sub     sp, sp, #0x14
        vmov    s1, r3
        add     r0, r0, r1, lsl #2
        mov     r1, #1
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vstr    s1, [sp]
        ldrb    r3, [r2, #1]
        vmov    s1, r3
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vstr    s1, [sp, #4]
        ldrb    r3, [r2, #2]
        vmov    s1, r3
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vstr    s1, [sp, #8]
        ldrb    r2, [r2, #3]
        vmov    s1, r2
        mov     r2, sp
        vcvt.f32.u32 s1, s1
        vmul.f32 s0, s1, s0
        vstr    s0, [sp, #0xc]
        ldr     r0, [r0, #0x2a0]
        bl      Fn_6659f4
        add     sp, sp, #0x14
        pop     {pc}
L54eb84:
        .word   0x3b808081
        .size   A_54eb0c, . - A_54eb0c

@ FUN_0054eb88
        .global A_54eb88
        .type   A_54eb88, %function
A_54eb88:
        str     lr, [sp, #-4]!
        ldrb    ip, [r2]
        vldr    s0, L54ec00
        sub     sp, sp, #0x14
        vmov    s1, ip
        add     r0, r0, r1, lsl #2
        mov     r1, #1
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vstr    s1, [sp]
        ldrb    ip, [r2, #1]
        vmov    s1, ip
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vstr    s1, [sp, #4]
        ldrb    r2, [r2, #2]
        vmov    s1, r2
        vcvt.f32.u32 s1, s1
        vmul.f32 s1, s1, s0
        vstr    s1, [sp, #8]
        ldrb    r2, [r3, #3]
        vmov    s1, r2
        mov     r2, sp
        vcvt.f32.u32 s1, s1
        vmul.f32 s0, s1, s0
        vstr    s0, [sp, #0xc]
        ldr     r0, [r0, #0x2a0]
        bl      Fn_6659f4
        add     sp, sp, #0x14
        pop     {pc}
L54ec00:
        .word   0x3b808081
        .size   A_54eb88, . - A_54eb88

@ FUN_0054ec6c
        .global A_54ec6c
        .type   A_54ec6c, %function
A_54ec6c:
        ldr     ip, L54ecb0
        push    {r4, lr}
        add     r0, r0, r1, lsl #2
        sub     sp, sp, #0x10
        ldr     r1, [ip, r2, lsl #2]
        ldr     r4, [sp, #0x18]
        mov     r2, sp
        str     r1, [sp]
        ldr     r1, [ip, r3, lsl #2]
        str     r1, [sp, #4]
        ldr     r1, [ip, r4, lsl #2]
        str     r1, [sp, #8]
        ldr     r0, [r0, #0x240]
        mov     r1, #1
        bl      Fn_67054c
        add     sp, sp, #0x10
        pop     {r4, pc}
L54ecb0:
        .word   0x007ebd0c
        .size   A_54ec6c, . - A_54ec6c

@ FUN_0054ecb4
        .global A_54ecb4
        .type   A_54ecb4, %function
A_54ecb4:
        add     r0, r0, r1, lsl #2
        ldr     r1, L54eccc
        ldr     r0, [r0, #0x288]
        add     r1, r1, r2, lsl #2
        vldr    s0, [r1]
        b       Fn_665938
L54eccc:
        .word   0x007ebca4
        .size   A_54ecb4, . - A_54ecb4

@ FUN_0054ed20
        .global A_54ed20
        .type   A_54ed20, %function
A_54ed20:
        add     r0, r0, r1, lsl #2
        ldr     r1, L54ed4c
        cmp     r3, #0
        ldr     r0, [r0, #0x2b8]
        movne   r3, r1
        orr     ip, r1, r1, asr #10
        moveq   r3, ip
        cmp     r2, #0
        moveq   r1, ip
        mov     r2, r3
        b       Fn_66598c
L54ed4c:
        .word   0x00008578
        .size   A_54ed20, . - A_54ed20

@ FUN_0054ed68
        .global A_54ed68
        .type   A_54ed68, %function
A_54ed68:
        ldr     ip, L54edac
        push    {r4, lr}
        add     r0, r0, r1, lsl #2
        sub     sp, sp, #0x10
        ldr     r1, [ip, r2, lsl #2]
        ldr     r4, [sp, #0x18]
        mov     r2, sp
        str     r1, [sp]
        ldr     r1, [ip, r3, lsl #2]
        str     r1, [sp, #4]
        ldr     r1, [ip, r4, lsl #2]
        str     r1, [sp, #8]
        ldr     r0, [r0, #0x258]
        mov     r1, #1
        bl      Fn_67054c
        add     sp, sp, #0x10
        pop     {r4, pc}
L54edac:
        .word   0x007ebd34
        .size   A_54ed68, . - A_54ed68

@ FUN_0054edc0
        .global A_54edc0
        .type   A_54edc0, %function
A_54edc0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r1
        mov     r7, r2
        mov     r5, r3
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #0x40
        ldr     r4, [r0, #0x80]
        ldr     r8, [r4, #0x160]
        mov     r0, r8
        bl      Fn_665a64
        ldr     r0, L54f110
        mov     r1, #0
        bl      Fn_65f090
        ldr     r0, L54f114
        mov     r1, #0
        bl      Fn_65f090
        mov     r0, #0
        bl      Fn_661d18
        ldr     r1, L54f118
        mov     r0, #0
        ldr     r2, L54f11c
        strd    r0, r1, [sp]
        mov     r3, r0
        mov     r1, #4
        bl      Fn_665fac
        mov     r0, #1
        bl      Fn_6612ec
        mov     r0, #2
        bl      Fn_6612ec
        mov     r0, #3
        bl      Fn_6612ec
        mov     r0, #4
        bl      Fn_6612ec
        ldr     r0, L54f120
        bl      Fn_65e970
        ldr     r0, L54f124
        bl      Fn_65e970
        ldrb    r0, [r5, #3]
        vldr    s0, L54f128
        add     r1, pc, #0x2c8
        vmov    s1, r0
        ldrb    r0, [r5, #2]
        vcvt.f32.u32 s1, s1
        vmul.f32 s16, s1, s0
        vmov    s1, r0
        ldrb    r0, [r5, #1]
        vcvt.f32.u32 s1, s1
        vmul.f32 s17, s1, s0
        vmov    s1, r0
        ldrb    r0, [r5]
        vcvt.f32.u32 s1, s1
        vmul.f32 s18, s1, s0
        vmov    s1, r0
        mov     r0, r8
        vcvt.f32.u32 s1, s1
        vmul.f32 s19, s1, s0
        bl      Fn_6621dc
        vmov.f32 s3, s16
        vmov.f32 s2, s17
        vmov.f32 s1, s18
        vmov.f32 s0, s19
        bl      Fn_6659b0
        vldr    s16, L54f144
        vldr    s19, [r7]
        vldr    s1, L54f148
        vldr    s23, L54f14c
        vcmpe.f32 s19, s16
        vldmia  r6, {s17, s18}
        add     r0, sp, #8
        vldr    s20, [r7, #4]
        vstr    s19, [sp]
        vmrs    apsr_nzcv, fpscr
        vcmpe.f32 s20, s16
        vldr    s0, L54f150
        vmovgt.f32 s2, s23
        vmovle.f32 s2, s1
        vstr    s16, [sp, #4]
        mov     r2, sp
        vstmia  r0, {s16, s17}
        add     r1, r4, #0x164
        vmrs    apsr_nzcv, fpscr
        vstr    s16, [sp, #0x10]
        vmul.f32 s21, s2, s0
        vmovgt.f32 s1, s23
        mov     r0, r2
        vmul.f32 s22, s1, s0
        vstr    s22, [sp, #0x14]
        vstr    s16, [sp, #0x18]
        vstr    s18, [sp, #0x1c]
        vstr    s16, [sp, #0x20]
        vstr    s16, [sp, #0x24]
        vstr    s23, [sp, #0x28]
        vstr    s16, [sp, #0x2c]
        vstr    s16, [sp, #0x30]
        vstr    s16, [sp, #0x34]
        vstr    s16, [sp, #0x38]
        vstr    s23, [sp, #0x3c]
        bl      Fn_54f398
        add     r1, pc, #0x204
        mov     r0, r8
        bl      Fn_6621dc
        mov     r2, #1
        mov     r3, sp
        mov     r1, r2
        bl      Fn_665a24
        ldr     r5, L54f164
        ldr     r3, L54f160
        mov     r1, #6
        mov     r2, r5
        mov     r0, #4
        bl      Fn_6617b0
        vsub.f32 s0, s18, s20
        vstr    s19, [sp]
        vstr    s16, [sp, #4]
        add     r0, sp, #8
        mov     r2, sp
        vstmia  r0, {s16, s17}
        add     r1, r4, #0x164
        vstr    s16, [sp, #0x10]
        vstr    s22, [sp, #0x14]
        vstr    s16, [sp, #0x18]
        vstr    s0, [sp, #0x1c]
        vstr    s16, [sp, #0x20]
        vstr    s16, [sp, #0x24]
        vstr    s23, [sp, #0x28]
        vstr    s16, [sp, #0x2c]
        vstr    s16, [sp, #0x30]
        vstr    s16, [sp, #0x34]
        vstr    s16, [sp, #0x38]
        vstr    s23, [sp, #0x3c]
        mov     r0, r2
        bl      Fn_54f398
        add     r1, pc, #0x17c
        mov     r0, r8
        bl      Fn_6621dc
        mov     r2, #1
        mov     r3, sp
        mov     r1, r2
        bl      Fn_665a24
        ldr     r3, L54f160
        mov     r2, r5
        mov     r1, #6
        mov     r0, #4
        bl      Fn_6617b0
        vstr    s21, [sp]
        vstr    s16, [sp, #4]
        add     r0, sp, #8
        mov     r2, sp
        vstmia  r0, {s16, s17}
        add     r1, r4, #0x164
        vstr    s16, [sp, #0x10]
        vstr    s20, [sp, #0x14]
        vstr    s16, [sp, #0x18]
        vstr    s18, [sp, #0x1c]
        vstr    s16, [sp, #0x20]
        vstr    s16, [sp, #0x24]
        vstr    s23, [sp, #0x28]
        vstr    s16, [sp, #0x2c]
        vstr    s16, [sp, #0x30]
        vstr    s16, [sp, #0x34]
        vstr    s16, [sp, #0x38]
        vstr    s23, [sp, #0x3c]
        mov     r0, r2
        bl      Fn_54f398
        add     r1, pc, #0xfc
        mov     r0, r8
        bl      Fn_6621dc
        mov     r2, #1
        mov     r3, sp
        mov     r1, r2
        bl      Fn_665a24
        ldr     r3, L54f160
        mov     r2, r5
        mov     r1, #6
        mov     r0, #4
        bl      Fn_6617b0
        vadd.f32 s0, s17, s19
        vstr    s21, [sp]
        vstr    s16, [sp, #4]
        vstr    s16, [sp, #8]
        mov     r2, sp
        add     r1, r4, #0x164
        mov     r0, r2
        vstr    s0, [sp, #0xc]
        vstr    s16, [sp, #0x10]
        vstr    s20, [sp, #0x14]
        vstr    s16, [sp, #0x18]
        vstr    s18, [sp, #0x1c]
        vstr    s16, [sp, #0x20]
        vstr    s16, [sp, #0x24]
        vstr    s23, [sp, #0x28]
        vstr    s16, [sp, #0x2c]
        vstr    s16, [sp, #0x30]
        vstr    s16, [sp, #0x34]
        vstr    s16, [sp, #0x38]
        vstr    s23, [sp, #0x3c]
        bl      Fn_54f398
        add     r1, pc, #0x78
        mov     r0, r8
        bl      Fn_6621dc
        mov     r2, #1
        mov     r3, sp
        mov     r1, r2
        bl      Fn_665a24
        ldr     r3, L54f160
        mov     r2, r5
        mov     r1, #6
        mov     r0, #4
        bl      Fn_6617b0
        add     sp, sp, #0x40
        vpop    {d8, d9, d10, d11}
        pop     {r4, r5, r6, r7, r8, pc}
L54f110:
        .word   0x00008892
L54f114:
        .word   0x00008893
L54f118:
        .word   0x007ebccc
L54f11c:
        .word   0x00001406
L54f120:
        .word   0x00000be2
L54f124:
        .word   0x00000bf2
L54f128:
        .word   0x3b808081
        .word   0x5f706d64
        .word   0x45786554
        .word   0x305b766e
        .word   0x6f632e5d
        .word   0x5274736e
        .word   0x00616267
L54f144:
        .word   0x00000000
L54f148:
        .word   0xbf800000
L54f14c:
        .word   0x3f800000
L54f150:
        .word   0x40000000
        .word   0x646f4d75
        .word   0x69566c65
        .word   0x00007765
L54f160:
        .word   0x007ebcb0
L54f164:
        .word   0x00001403
        .size   A_54edc0, . - A_54edc0

@ FUN_0054f398
        .global A_54f398
        .type   A_54f398, %function
A_54f398:
        push    {r4, r5, r6, r7}
        sub     sp, sp, #0x40
        vldr    s7, L54f45c
        mov     ip, #0
        mov     r6, sp
L54f3ac:
        add     r4, r1, ip, lsl #4
        vmov.f32 s1, s7
        vldmia  r4, {s2, s3, s4, s5}
        mov     r3, #0
        add     r5, r6, ip, lsl #4
L54f3c0:
        add     r4, r2, r3, lsl #2
        add     r7, r5, r3, lsl #2
        vmov.f32 s0, s1
        vldr    s10, [r4]
        vldr    s9, [r4, #0x10]
        vldr    s8, [r4, #0x20]
        vldr    s6, [r4, #0x30]
        add     r3, r3, #1
        vmla.f32 s0, s2, s10
        cmp     r3, #4
        vmla.f32 s0, s3, s9
        vmla.f32 s0, s4, s8
        vmla.f32 s0, s5, s6
        vstr    s0, [r7]
        blt     L54f3c0
        add     ip, ip, #1
        cmp     ip, #3
        blt     L54f3ac
        ldr     r1, [r2, #0x30]
        str     r1, [sp, #0x30]
        ldr     r1, [r2, #0x34]
        str     r1, [sp, #0x34]
        ldr     r1, [r2, #0x38]
        str     r1, [sp, #0x38]
        ldr     r1, [r2, #0x3c]
        str     r1, [sp, #0x3c]
        ldm     sp, {r1, r2, r3, r4, r5, r6, r7, ip}
        stm     r0, {r1, r2, r3, r4, r5, r6, r7, ip}
        ldr     r1, [sp, #0x20]
        ldr     ip, [sp, #0x3c]
        ldrd    r2, r3, [sp, #0x24]
        ldrd    r4, r5, [sp, #0x2c]
        ldrd    r6, r7, [sp, #0x34]
        str     r1, [r0, #0x20]
        add     r1, r0, #0x24
        stm     r1, {r2, r3, r4, r5, r6, r7, ip}
        add     sp, sp, #0x40
        pop     {r4, r5, r6, r7}
        bx      lr
L54f45c:
        .word   0x00000000
        .size   A_54f398, . - A_54f398

@ FUN_0054f460
        .global A_54f460
        .type   A_54f460, %function
A_54f460:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x3c]
        mov     r5, r1
        ldr     r0, [r0]
        ldr     r0, [r0, #0x10]
        ldr     r1, [r4, #0x48]
        ldr     r2, [r0]
        ldr     r1, [r1, #0x28]
        ldr     r3, [r2, #0x2c]
        mov     r2, #1
        blx     r3
        mov     r1, r5
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_54f460, . - A_54f460

@ FUN_0054f49c
        .global A_54f49c
        .type   A_54f49c, %function
A_54f49c:
        push    {r4, r5, lr}
        mov     r4, r1
        sub     sp, sp, #0x5c
        mov     r5, r0
        add     r1, r0, #0x80
        add     r0, sp, #0x28
        bl      Fn_01a194
        ldrd    r0, r1, [r4]
        vldr    s0, L54f534
        add     r2, sp, #0x1c
        strd    r0, r1, [sp, #0x1c]
        vstr    s0, [sp, #0x24]
        add     r1, sp, #0x28
        add     r0, sp, #0x10
        bl      Fn_022a04
        mov     r1, r5
        mov     r0, sp
        bl      Fn_634658
        add     r0, sp, #0x10
        vldr    s2, [sp]
        vldmia  r0, {s0, s1}
        vcmpe.f32 s2, s0
        vmrs    apsr_nzcv, fpscr
        vldrls  s2, [sp, #8]
        vcmpels.f32 s0, s2
        vmrsls  apsr_nzcv, fpscr
        bhi     L54f528
        vldr    s0, [sp, #0xc]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vldrls  s0, [sp, #4]
        vcmpels.f32 s1, s0
        vmrsls  apsr_nzcv, fpscr
        movls   r0, #1
        bls     L54f52c
L54f528:
        mov     r0, #0
L54f52c:
        add     sp, sp, #0x5c
        pop     {r4, r5, pc}
L54f534:
        .word   0x00000000
        .size   A_54f49c, . - A_54f49c

@ FUN_0054f538
        .global A_54f538
        .type   A_54f538, %function
A_54f538:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0x54]
        cmp     r0, #0
        moveq   r4, #0
        streq   r1, [r5, #4]
        bne     L54f58c
        b       L54f590
L54f558:
        cmp     r4, #0
        movne   r1, #1
        beq     L54f590
L54f564:
        add     r0, r5, r4, lsl #4
        add     r0, r0, #8
        bl      Fn_55b8fc
        add     r4, r4, #1
        cmp     r4, #4
        blt     L54f558
        mov     r1, #1
        mov     r0, #0
        strb    r1, [r5, #0x54]
        strb    r0, [r5, #0x55]
L54f58c:
        pop     {r4, r5, r6, pc}
L54f590:
        mvn     r1, #0x80000000
        b       L54f564
        .size   A_54f538, . - A_54f538

@ FUN_0054f6dc
        .global A_54f6dc
        .type   A_54f6dc, %function
A_54f6dc:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r1
        mov     r6, #0
        ldr     r1, L54f770
        mov     r3, #4
        mov     r2, #0x10
        stm     r0, {r1, r6}
        add     r0, r0, #8
        ldr     r1, L54f774
        blx     Fn_0000ac_t
        sub     r5, r0, #8
        vldr    s0, L54f778
        add     r0, r0, #0x40
        vldr    s1, L54f77c
        mov     r7, #1
        vstmia  r0!, {s0}
        vstmia  r0, {s0, s1}
        strb    r6, [r5, #0x54]
        strb    r7, [r5, #0x55]
        str     r4, [r5, #4]
        mov     r4, #0
        b       L54f768
L54f734:
        cmp     r4, #0
        movne   r1, #1
        beq     L54f768
L54f740:
        add     r0, r5, r4, lsl #4
        add     r0, r0, #8
        bl      Fn_55b8fc
        add     r4, r4, #1
        cmp     r4, #4
        blt     L54f734
        strb    r7, [r5, #0x54]
        mov     r0, r5
        strb    r6, [r5, #0x55]
        pop     {r4, r5, r6, r7, r8, pc}
L54f768:
        mvn     r1, #0x80000000
        b       L54f740
L54f770:
        .word   0x0082ca40
L54f774:
        .word   0x0065ba10
L54f778:
        .word   0x3f800000
L54f77c:
        .word   0x00000000
        .size   A_54f6dc, . - A_54f6dc

@ FUN_0054f780
        .global A_54f780
        .type   A_54f780, %function
A_54f780:
        ldr     r1, L54f7cc
        push    {r4, lr}
        mov     r4, #0
        stm     r0, {r1, r4}
        mov     r3, #4
        ldr     r1, L54f7d0
        mov     r2, #0x10
        add     r0, r0, #8
        blx     Fn_0000ac_t
        sub     r0, r0, #8
        vldr    s0, L54f7d4
        vldr    s1, L54f7d8
        vstr    s0, [r0, #0x48]
        add     r1, r0, #0x4c
        vstmia  r1, {s0, s1}
        mov     r1, #1
        strb    r4, [r0, #0x54]
        strb    r1, [r0, #0x55]
        pop     {r4, pc}
L54f7cc:
        .word   0x0082ca40
L54f7d0:
        .word   0x0065ba10
L54f7d4:
        .word   0x3f800000
L54f7d8:
        .word   0x00000000
        .size   A_54f780, . - A_54f780

@ FUN_0054f99c
        .global A_54f99c
        .type   A_54f99c, %function
A_54f99c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #4]!
        mov     r6, r1
        cmp     r4, r0
        beq     L54f9d4
L54f9b4:
        mov     r0, r4
        ldr     r4, [r4]
        sub     r0, r0, #0xec
        mov     r1, r6
        bl      Fn_55590c
        add     r0, r5, #4
        cmp     r4, r0
        bne     L54f9b4
L54f9d4:
        pop     {r4, r5, r6, pc}
        .size   A_54f99c, . - A_54f99c

@ FUN_0054fc08
        .global A_54fc08
        .type   A_54fc08, %function
A_54fc08:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x28]
        cmp     r0, r1
        movlt   r1, r0
        blt     L54fc28
        cmp     r1, #0
        movlt   r1, #0
L54fc28:
        str     r1, [r4, #0x24]
L54fc2c:
        ldr     r0, [r4, #0x24]
        ldr     r1, [r4]
        cmp     r1, r0
        ble     L54fc50
        ldr     r0, [r4, #0x10]
        ldr     r1, [r0, #-0xf4]!
        ldr     r1, [r1, #0x10]
        blx     r1
        b       L54fc2c
L54fc50:
        pop     {r4, pc}
        .size   A_54fc08, . - A_54fc08

@ FUN_0054fce0
        .global A_54fce0
        .type   A_54fce0, %function
A_54fce0:
        mov     r2, r1
        str     r0, [r1, #8]
        add     r0, r0, #0x18
        add     r1, r0, #4
        add     r2, r2, #0x18
        b       Fn_542230
        .size   A_54fce0, . - A_54fce0

@ FUN_0054fcf8
        .global A_54fcf8
        .type   A_54fcf8, %function
A_54fcf8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, [r0, #4]!
        cmp     r4, r0
        beq     L54fd28
L54fd0c:
        mov     r0, r4
        ldr     r4, [r4]
        sub     r0, r0, #0xec
        bl      Fn_555c1c
        add     r0, r5, #4
        cmp     r4, r0
        bne     L54fd0c
L54fd28:
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        mov     r1, #0
        mov     r0, r0
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r6, r1
        ldr     r0, [r0, #0xc]
        cmp     r0, #2
        blo     L54fe48
        ldr     r0, L54fe4c
        ldr     r0, [r0]
        tst     r0, #1
        bne     L54fd8c
        ldr     r0, L54fe4c
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L54fd8c
        ldr     r1, L54fe50
        ldr     r0, L54fe54
        mov     r3, #0x80
        mov     r2, #0xc
        blx     Fn_0000ac_t
        ldr     r0, L54fe4c
        mov     r0, r0
L54fd8c:
        ldr     r8, L54fe54
L54fd90:
        ldr     r0, [r4, #0xc]
        cmp     r0, #0
        beq     L54fde0
        ldr     r1, [r4, #0x10]
        add     r0, r4, #0xc
        mov     r7, r1
        sub     r5, r1, #0xf4
        bl      Fn_542154
        ldrb    r0, [r5, #0x9c]
        ldr     r1, [r5, #0x50]
        mov     r2, r7
        add     r0, r0, r1
        usat    r0, #7, r0
        add     r0, r0, r0, lsl #1
        add     r0, r8, r0, lsl #2
        add     r1, r0, #4
        bl      Fn_542230
        nop
        nop
        b       L54fd90
L54fde0:
        mov     r5, #0
L54fde4:
        add     r0, r5, r5, lsl #1
        ldr     r1, [r8, r0, lsl #2]
        cmp     r1, #0
        beq     L54fe3c
        cmp     r6, #0
        add     r0, r8, r0, lsl #2
        beq     L54fe1c
        ldr     r1, [r0, #8]
        sub     r7, r1, #0xf4
        bl      Fn_542154
        add     r0, r4, #0xc
        add     r1, r4, #0x10
        add     r2, r7, #0xf4
        b       L54fe34
L54fe1c:
        ldr     r1, [r0, #4]
        mov     r7, r1
        bl      Fn_542154
        add     r0, r4, #0xc
        add     r1, r4, #0x10
        mov     r2, r7
L54fe34:
        bl      Fn_542230
        b       L54fde4
L54fe3c:
        add     r5, r5, #1
        cmp     r5, #0x80
        blt     L54fde4
L54fe48:
        pop     {r4, r5, r6, r7, r8, pc}
L54fe4c:
        .word   0x008bb720
L54fe50:
        .word   0x007857a0
L54fe54:
        .word   0x009e0158
        .size   A_54fcf8, . - A_54fcf8

@ FUN_0054fe58
        .global A_54fe58
        .type   A_54fe58, %function
A_54fe58:
        add     r1, r0, #4
        mov     r2, #0
        str     r1, [r0, #4]
        str     r2, [r0]
        str     r1, [r0, #8]
        add     r3, r0, #0x10
        strd    r2, r3, [r0, #0xc]
        add     r1, r0, #0x18
        str     r3, [r0, #0x14]
        add     r3, r0, #0x1c
        strd    r2, r3, [r1]
        str     r3, [r0, #0x20]
        mov     r3, #1
        mvn     ip, #0x80000000
        vldr    s1, L54fecc
        str     r3, [r0, #0x24]
        vldr    s0, L54fec8
        str     ip, [r0, #0x28]
        vstr    s1, [r0, #0x2c]
        mvn     r1, #0
        vstr    s0, [r0, #0x30]
        str     r1, [r0, #0x34]
        vstr    s0, [r0, #0x38]
        vstr    s0, [r0, #0x3c]
        strb    r2, [r0, #0x48]
        vstr    s0, [r0, #0x40]
        vstr    s0, [r0, #0x44]
        bx      lr
L54fec8:
        .word   0x00000000
L54fecc:
        .word   0x3f800000
        .size   A_54fe58, . - A_54fe58

@ FUN_0054fed0
        .global A_54fed0
        .type   A_54fed0, %function
A_54fed0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        sub     sp, sp, #0x14
        mov     r5, r1
        ldr     sl, L5500e8
        ldrb    r0, [sl, #1]
        cmp     r0, #0
        bne     L5500e0
        ldr     r0, L5500ec
        bl      Fn_561550
        ldrb    r0, [sl, #2]
        mov     sb, #1
        cmp     r0, #0
        bne     L54ff44
        ldr     r0, [r4, #0xc]
        ldr     r1, [r4, #0x18]
        mov     r7, r5
        add     r8, r0, r7
        add     r6, r0, r1
        bl      Fn_55bca4
        ldr     r2, [r4, #0xc]
        mov     r1, r7
        bl      Fn_55bad0
        bl      Fn_55c048
        ldr     r2, [r4, #0x18]
        mov     r1, r8
        bl      Fn_55bad0
        add     r5, r5, r6
        strb    sb, [sl, #2]
L54ff44:
        ldrb    r0, [r4, #0x1c]
        mov     r8, #0
        mov     r7, r8
        cmp     r0, #0
        beq     L54ff80
        ldr     r1, [r4, #4]
        ldr     r0, [r4, #8]
        mov     r8, r5
        cmp     r1, #1
        add     r5, r0, r8
        bne     L54ff80
        ldrb    r1, [r4, #0x1e]
        cmp     r1, #0
        movne   r7, r5
        addne   r5, r0, r7
L54ff80:
        nop
        bl      Fn_55e338
        nop
        nop
        bl      Fn_55e330
        ldr     r0, [r4, #0x14]
        mov     r6, r5
        add     r5, r0, r6
        bl      Fn_557434
        nop
        nop
        bl      Fn_684aa0
        ldr     r0, L5500f0
        ldr     r2, [r4, #0x14]
        mov     r1, r6
        stm     r0, {r1, r2}
        nop
        nop
        bl      Fn_562bd4
        ldr     r1, [sl, #4]
        nop
        bl      Fn_562d24
        add     r6, r0, r5
        nop
        bl      Fn_562bd4
        ldr     r1, [sl, #4]
        nop
        bl      Fn_562d24
        mov     fp, r0
        nop
        bl      Fn_562bd4
        mov     r2, fp
        mov     r1, r5
        bl      Fn_562b5c
        nop
        nop
        bl      Fn_561354
        ldr     r1, [sl, #4]
        nop
        bl      Fn_5613e8
        add     r5, r0, r6
        nop
        bl      Fn_561354
        ldr     r1, [sl, #4]
        nop
        bl      Fn_5613e8
        mov     fp, r0
        nop
        bl      Fn_561354
        mov     r2, fp
        mov     r1, r6
        bl      Fn_561314
        nop
        nop
        bl      Fn_564f70
        nop
        nop
        bl      Fn_556abc
        ldr     r2, L5500f0
        ldr     r1, [r4, #0x10]
        bl      Fn_556b38
        ldrb    r0, [r4, #0x1c]
        cmp     r0, #0
        beq     L5500a8
        bl      Fn_55e338
        ldrsb   r1, [r4, #0x1d]
        ldm     r4, {r3, ip}
        add     r6, sp, #4
        ldr     r2, [r4, #8]
        str     r1, [sp, #0x10]
        str     r7, [sp]
        mov     r1, r8
        stm     r6, {r2, r3, ip}
        bl      Fn_55e878
L5500a8:
        ldrb    r0, [r4, #0x1d]
        cmp     r0, #0
        ldrne   r0, [r4, #0x20]
        cmpne   r0, #0
        ble     L5500cc
        bl      Fn_55e338
        ldr     r2, [r4, #0x20]
        mov     r1, r5
        bl      Fn_55e824
L5500cc:
        nop
        bl      Fn_5665a8
        ldrb    r0, [r4, #0x1c]
        strb    r0, [sl]
        strb    sb, [sl, #1]
L5500e0:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5500e8:
        .word   0x008bb4fc
L5500ec:
        .word   0x009dfe08
L5500f0:
        .word   0x008bb504
        .size   A_54fed0, . - A_54fed0

@ FUN_005500f4
        .global A_5500f4
        .type   A_5500f4, %function
A_5500f4:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        ldr     r0, [r1]
        mov     r4, r1
        ldr     r1, [r0, #8]
        mov     r0, r4
        blx     r1
        cmp     r0, #0
        beq     L550150
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #7
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x31
        strb    r1, [r0, #4]
        strb    r6, [r0, #0x10]
        mov     r1, r0
        str     r4, [r0, #0x14]
        mov     r0, r5
        bl      Fn_55bd58
        mov     r0, #1
L550150:
        pop     {r4, r5, r6, pc}
        .size   A_5500f4, . - A_5500f4

@ FUN_005501f4
        .global A_5501f4
        .type   A_5501f4, %function
A_5501f4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        ldr     r7, L550244
        ldrb    r0, [r7, #2]
        cmp     r0, #0
        bne     L550240
        ldr     r0, [r4, #0xc]
        mov     r5, r1
        add     r6, r0, r5
        bl      Fn_55bca4
        ldr     r2, [r4, #0xc]
        mov     r1, r5
        bl      Fn_55bad0
        bl      Fn_55c048
        ldr     r2, [r4, #0x18]
        mov     r1, r6
        bl      Fn_55bad0
        mov     r0, #1
        strb    r0, [r7, #2]
L550240:
        pop     {r4, r5, r6, r7, r8, pc}
L550244:
        .word   0x008bb4fc
        .size   A_5501f4, . - A_5501f4

@ FUN_005502d4
        .global A_5502d4
        .type   A_5502d4, %function
A_5502d4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x81]
        mov     r5, r2
        mov     r6, r1
        cmp     r0, #0
        bne     L550310
        mov     r0, r4
        bl      Fn_54f538
        mov     r1, #1
        strb    r1, [r4, #0x81]
        mov     r0, #0
        str     r5, [r4, #0x5c]
        strb    r0, [r4, #0x82]
        str     r6, [r4, #0x60]
L550310:
        pop     {r4, r5, r6, pc}
        .size   A_5502d4, . - A_5502d4

@ FUN_00550478
        .global A_550478
        .type   A_550478, %function
A_550478:
        ldrb    r2, [r0, #0x80]
        cmp     r2, #0
        bne     L5504b4
        vldr    s0, [r1]
        vldr    s1, [r0, #0x68]
        vsub.f32 s0, s0, s1
        vstr    s0, [r0, #0x74]
        vldr    s0, [r1, #4]
        vldr    s1, [r0, #0x6c]
        vsub.f32 s0, s0, s1
        vstr    s0, [r0, #0x78]
        vldr    s0, [r1, #8]
        vldr    s1, [r0, #0x70]
        vsub.f32 s0, s0, s1
        vstr    s0, [r0, #0x7c]
L5504b4:
        ldm     r1, {r2, r3, ip}
        mov     r1, #0
        str     ip, [r0, #0x70]
        strd    r2, r3, [r0, #0x68]
        strb    r1, [r0, #0x80]
        bx      lr
        .size   A_550478, . - A_550478

@ FUN_00550578
        .global A_550578
        .type   A_550578, %function
A_550578:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r1
        mov     r6, r2
        bl      Fn_54f780
        ldr     r1, L5505fc
        mov     r4, r0
        add     r2, r4, #0x58
        str     r1, [r4]
        add     r0, r1, #0x24
        mov     r7, #0
        stm     r2, {r0, r7}
        mov     r8, #1
        vldr    s0, L550600
        str     r7, [r4, #0x60]
        str     r7, [r4, #0x64]
        vstr    s0, [r4, #0x68]
        vstr    s0, [r4, #0x6c]
        vstr    s0, [r4, #0x70]
        vstr    s0, [r4, #0x74]
        vstr    s0, [r4, #0x78]
        vstr    s0, [r4, #0x7c]
        strb    r8, [r4, #0x80]
        strb    r7, [r4, #0x81]
        mov     r1, r5
        mov     r0, r4
        strb    r8, [r4, #0x82]
        bl      Fn_54f538
        strb    r8, [r4, #0x81]
        str     r6, [r4, #0x5c]
        strb    r7, [r4, #0x82]
        mov     r0, r4
        str     r5, [r4, #0x60]
        pop     {r4, r5, r6, r7, r8, pc}
L5505fc:
        .word   0x0082ca60
L550600:
        .word   0x00000000
        .size   A_550578, . - A_550578

@ FUN_00550604
        .global A_550604
        .type   A_550604, %function
A_550604:
        push    {r4, lr}
        bl      Fn_54f780
        ldr     r1, L55065c
        mov     r2, #0
        vldr    s0, L550660
        str     r1, [r0]
        add     r3, r1, #0x24
        str     r2, [r0, #0x5c]
        str     r3, [r0, #0x58]
        str     r2, [r0, #0x60]
        str     r2, [r0, #0x64]
        vstr    s0, [r0, #0x68]
        vstr    s0, [r0, #0x6c]
        vstr    s0, [r0, #0x70]
        vstr    s0, [r0, #0x74]
        vstr    s0, [r0, #0x78]
        vstr    s0, [r0, #0x7c]
        mov     r1, #1
        strb    r1, [r0, #0x80]
        strb    r2, [r0, #0x81]
        strb    r1, [r0, #0x82]
        pop     {r4, pc}
L55065c:
        .word   0x0082ca60
L550660:
        .word   0x00000000
        .size   A_550604, . - A_550604

@ FUN_005506f0
        .global A_5506f0
        .type   A_5506f0, %function
A_5506f0:
        push    {r4, lr}
        mov     r4, r0
        str     r1, [r0, #4]
        mov     r0, r1
        bl      Fn_637d3c
        str     r0, [r4, #0x10c]
        add     r0, r4, #0x110
        pop     {r4, lr}
        b       Fn_01b624
        .size   A_5506f0, . - A_5506f0

@ FUN_00550768
        .global A_550768
        .type   A_550768, %function
A_550768:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r0, r1
        bl      Fn_200e60
        mov     r3, r0
        mov     r6, #0
        cmp     r3, #0xff
        mov     r0, r5
        mov     r7, #0x100
        add     r1, r4, #0xc
        mov     r2, r6
        bhs     L5507a4
        cmp     r3, #0
        bls     L5507d4
L5507a4:
        sub     ip, r7, #1
L5507a8:
        ldrb    r8, [r0]
        add     r2, r2, #1
        strb    r8, [r1], #1
        ldrb    r8, [r0, #1]!
        cmp     r8, #0
        beq     L5507d4
        cmp     ip, r3
        mov     r8, r3
        movls   r8, ip
        cmp     r8, r2
        bhi     L5507a8
L5507d4:
        add     r0, r5, r3
        strb    r6, [r1]
        ldrb    r0, [r0, #-1]
        cmp     r0, #0x2f
        beq     L5507f8
        add     r0, r4, r3
        mov     r1, #0x2f
        add     r3, r3, #1
        strb    r1, [r0, #0xc]
L5507f8:
        add     r0, r4, r3
        strb    r6, [r0, #0xc]
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_550768, . - A_550768

@ FUN_00550918
        .global A_550918
        .type   A_550918, %function
A_550918:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4, #0x11c]
        add     r0, r4, #0x120
        bl      Fn_55c7e8
        mov     r0, r4
        pop     {r4, lr}
        mov     r0, r0
        .size   A_550918, . - A_550918

@ FUN_00550954
        .global A_550954
        .type   A_550954, %function
A_550954:
        ldr     r1, L550984
        mov     r2, #0
        stm     r0, {r1, r2}
        add     r1, r0, #0x110
        str     r2, [r0, #8]
        str     r2, [r0, #0x110]
        mvn     r3, #0
        strd    r2, r3, [r1, #4]
        mov     r1, #0x2f
        strb    r1, [r0, #0xc]
        strb    r2, [r0, #0xd]
        bx      lr
L550984:
        .word   0x0082ca98
        .size   A_550954, . - A_550954

@ FUN_00550cb0
        .global A_550cb0
        .type   A_550cb0, %function
A_550cb0:
        push    {r4, r5, r6, r7, lr}
        mov     r4, r0
        sub     sp, sp, #0x1c
        ldrb    r0, [r0, #0x38]
        mov     r7, r2
        mov     r5, r3
        cmp     r0, #1
        moveq   r0, #0
        beq     L550d34
        mov     r0, r1
        mov     r6, #0
        mov     r1, sp
        bl      Fn_636c7c
        cmp     r0, #0
        beq     L550d00
        ldr     r0, [sp]
        ldr     r2, [sp, #8]
        ldr     r1, [sp, #0x14]
        add     r0, r0, r2
        add     r6, r1, r0
L550d00:
        mov     r0, #0x2c
        mov     r1, r7
        mul     r6, r6, r0
        mov     r2, r5
        add     r0, r4, #8
        mov     r3, #0x2c
        bl      Fn_566730
        sub     r1, r5, r6
        str     r1, [r4, #0x34]
        str     r5, [r4, #0x30]
        mov     r0, #1
        str     r7, [r4, #0x2c]
        strb    r0, [r4, #0x38]
L550d34:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .size   A_550cb0, . - A_550cb0

@ FUN_00550d3c
        .global A_550d3c
        .type   A_550d3c, %function
A_550d3c:
        push    {r4, lr}
        sub     sp, sp, #0x20
        mov     r0, r1
        mov     r4, #0
        mov     r1, sp
        bl      Fn_636c7c
        cmp     r0, #0
        beq     L550d70
        ldr     r0, [sp]
        ldr     r2, [sp, #8]
        ldr     r1, [sp, #0x14]
        add     r0, r0, r2
        add     r4, r1, r0
L550d70:
        mov     r0, #0x2c
        add     sp, sp, #0x20
        mul     r0, r4, r0
        pop     {r4, pc}
        .size   A_550d3c, . - A_550d3c

@ FUN_00550df4
        .global A_550df4
        .type   A_550df4, %function
A_550df4:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x38]
        cmp     r0, #0
        beq     L550e7c
        mov     r1, #0x20
        str     r1, [r4, #0x1c]
        vldr    s0, L550e80
        vldr    s1, L550e84
        add     r2, r4, #0x20
        ldr     r1, L550e88
        mvn     r0, #0
        vstmia  r2, {s0, s1}
        str     r0, [r4, #0x28]
        str     r1, [r4, #0x18]
L550e30:
        ldr     r0, [r4, #0xc]
        cmp     r0, #0
        beq     L550e54
        ldr     r1, [r4, #0x14]
        add     r0, r4, #0xc
        bl      Fn_5421f4
        nop
        nop
        b       L550e30
L550e54:
        add     r1, r4, #0x2c
        add     r0, r4, #8
        ldm     r1, {r1, r2}
        bl      Fn_566790
        mov     r0, #0
        str     r0, [r4, #0x2c]
        str     r0, [r4, #0x30]
        str     r0, [r4, #0x34]
        strb    r0, [r4, #0x38]
        mov     r0, #1
L550e7c:
        pop     {r4, pc}
L550e80:
        .word   0x3f666666
L550e84:
        .word   0x00000000
L550e88:
        .word   0x009e0144
        .size   A_550df4, . - A_550df4

@ FUN_00550f24
        .global A_550f24
        .type   A_550f24, %function
A_550f24:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r3
        ldr     r0, [r0]
        mov     r5, r1
        mov     r1, r2
        ldr     r3, [r0, #0xc]
        mov     r0, r4
        blx     r3
        cmn     r0, #1
        mov     r7, #0
        moveq   r0, #2
        beq     L550f94
        mov     r2, r0
        str     r6, [sp]
        ldr     r0, [r4]
        mov     r3, #0
        mov     r1, r5
        ldr     ip, [r0, #8]
        mov     r0, r4
        blx     ip
        ands    r0, r0, #0xff
        bne     L550f90
        ldr     r0, [r5]
        cmp     r0, #0
        blne    Fn_555704
        mov     r0, r7
L550f90:
        and     r0, r0, #0xff
L550f94:
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_550f24, . - A_550f24

@ FUN_00550f98
        .global A_550f98
        .type   A_550f98, %function
A_550f98:
        push    {r3, r4, r5, lr}
        mov     r4, r1
        str     r3, [sp]
        ldr     r1, [r0]
        mov     r3, #0
        ldr     ip, [r1, #8]
        mov     r1, r4
        blx     ip
        ands    r0, r0, #0xff
        mov     r5, #0
        bne     L550fd4
        ldr     r0, [r4]
        cmp     r0, #0
        blne    Fn_555704
        mov     r0, r5
L550fd4:
        pop     {r3, r4, r5, pc}
        .size   A_550f98, . - A_550f98

@ FUN_00550fd8
        .global A_550fd8
        .type   A_550fd8, %function
A_550fd8:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r5, r3
        ldr     r0, [r0]
        mov     r6, r1
        mov     r1, r2
        ldr     r3, [r0, #0xc]
        mov     r0, r4
        blx     r3
        cmn     r0, #1
        moveq   r0, #2
        beq     L55102c
        mov     r2, r0
        str     r5, [sp]
        ldr     r0, [r4]
        mov     r1, r6
        mov     r3, #0
        ldr     ip, [r0, #8]
        mov     r0, r4
        blx     ip
        and     r0, r0, #0xff
L55102c:
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_550fd8, . - A_550fd8

@ FUN_00551030
        .global A_551030
        .type   A_551030, %function
A_551030:
        push    {r3, lr}
        str     r3, [sp]
        ldr     r3, [r0]
        ldr     ip, [r3, #8]
        mov     r3, #0
        blx     ip
        and     r0, r0, #0xff
        pop     {r3, pc}
        .size   A_551030, . - A_551030

@ FUN_0055106c
        .global A_55106c
        .type   A_55106c, %function
A_55106c:
        vldr    s3, [r1]
        vldr    s8, [r1, #0xc]
        vldr    s7, [r1, #0x10]
        vldr    s6, [r1, #0x1c]
        vmul.f32 s3, s3, s8
        vldr    s4, [r1, #0x20]
        vldr    s5, [r1, #0x2c]
        add     r2, r0, #0x34
        vldr    s2, [r0, #0x30]
        vldmia  r2, {s0, s1}
        add     r2, r1, #0x18
        vmla.f32 s3, s7, s6
        vnmla.f32 s3, s4, s5
        vstr    s3, [r0, #0x30]
        vldr    s4, [r1, #4]
        vldr    s9, [r1, #0xc]
        vldr    s7, [r1, #0x14]
        vldr    s8, [r1, #0x1c]
        vmul.f32 s4, s4, s9
        vldr    s5, [r1, #0x24]
        vldr    s6, [r1, #0x2c]
        vmla.f32 s4, s7, s8
        vnmla.f32 s4, s5, s6
        vstr    s4, [r0, #0x34]
        vldr    s4, [r1, #8]
        vldr    s9, [r1, #0xc]
        vldmia  r2, {s7, s8}
        vmul.f32 s4, s4, s9
        add     r2, r1, #0x28
        vldmia  r2, {s5, s6}
        vmla.f32 s4, s7, s8
        vnmla.f32 s4, s5, s6
        vstr    s4, [r0, #0x38]
        ldrb    r2, [r0, #0x60]
        cmp     r2, #0
        beq     L551120
        vldmia  r1, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r1, r1, #0x20
        add     r3, r0, #0x20
        mov     r2, #0
        vstmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        vldmia  r1, {s0, s1, s2, s3}
        vstmia  r3, {s0, s1, s2, s3}
        strb    r2, [r0, #0x60]
        bx      lr
L551120:
        vldmia  r1, {s4, s5, s6, s7, s8, s9, s10, s11}
        vsub.f32 s2, s3, s2
        add     r1, r1, #0x20
        add     r2, r0, #0x20
        vstmia  r0, {s4, s5, s6, s7, s8, s9, s10, s11}
        vldmia  r1, {s4, s5, s6, s7}
        vstr    s2, [r0, #0x3c]
        vstmia  r2, {s4, s5, s6, s7}
        vldr    s2, [r0, #0x34]
        vsub.f32 s0, s2, s0
        vstr    s0, [r0, #0x40]
        vldr    s0, [r0, #0x38]
        vsub.f32 s0, s0, s1
        vstr    s0, [r0, #0x44]
        bx      lr
        .size   A_55106c, . - A_55106c

@ FUN_0055115c
        .global A_55115c
        .type   A_55115c, %function
A_55115c:
        vldr    s0, L5511e0
        vldr    s2, L5511e4
        vstr    s0, [r0, #0x30]
        vstr    s0, [r0, #0x34]
        vstr    s0, [r0, #0x38]
        vstr    s0, [r0, #0x3c]
        vstr    s0, [r0, #0x40]
        vstr    s0, [r0, #0x44]
        vstr    s2, [r0, #0x48]
        vstr    s2, [r0, #0x4c]
        mov     r2, #0
        vstr    s2, [r0, #0x50]
        vldr    s1, L5511e8
        add     r3, r0, #0x58
        str     r2, [r0, #0x54]
        mov     r1, #1
        vstmia  r3, {s1, s2}
        strb    r1, [r0, #0x60]
        str     r2, [r0, #0x64]
        str     r2, [r0, #0x68]
        vstr    s0, [r0, #0x2c]
        vstr    s0, [r0, #0x28]
        vstr    s0, [r0, #0x24]
        vstr    s0, [r0, #0x20]
        vstr    s0, [r0, #0x1c]
        vstr    s0, [r0, #0x18]
        vstr    s0, [r0, #0x14]
        vstr    s0, [r0, #0x10]
        vstr    s0, [r0, #0xc]
        vstr    s0, [r0, #8]
        vstr    s0, [r0, #4]
        vstr    s0, [r0]
        bx      lr
L5511e0:
        .word   0x00000000
L5511e4:
        .word   0x3f800000
L5511e8:
        .word   0x3f000000
        .size   A_55115c, . - A_55115c

@ FUN_005511ec
        .global A_5511ec
        .type   A_5511ec, %function
A_5511ec:
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L55121c
        ldr     r3, [r1, #0x1a4]
        mov     r2, #0
        cmp     r3, r0
        bne     L551218
        str     r2, [r1, #0x1a4]
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L55121c
L551218:
        str     r2, [r0]
L55121c:
        bx      lr
        .size   A_5511ec, . - A_5511ec

@ FUN_00551220
        .global A_551220
        .type   A_551220, %function
A_551220:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r7, r1
        mov     r5, r2
        add     r6, r2, r3
        mov     r0, r1
        bl      Fn_639408
        mov     r8, #4
        add     r0, r8, r0, lsl #2
        add     r0, r0, r5
        add     r0, r0, #3
        bic     r0, r0, #3
        sub     r0, r0, r6
        cmp     r0, #0
        mov     r2, r5
        mov     r6, #0
        movgt   r0, #0
        bgt     L551328
        mov     r0, r7
        str     r2, [r4, #0x218]
        bl      Fn_639408
        ldr     r1, [r4, #0x218]
        cmp     r0, #0
        str     r0, [r1]
        ldr     r2, [r4, #0x218]
        beq     L5512e0
        and     r0, r0, #1
        cmp     r0, #1
        streq   r6, [r2, #4]
        ldr     r2, [r4, #0x218]
        mov     r1, #0
        moveq   r1, #1
        ldr     r2, [r2]
        cmp     r2, r0
        bls     L5512e0
L5512ac:
        ldr     r2, [r4, #0x218]
        add     r3, r8, r1, lsl #2
        add     r1, r1, #1
        add     r0, r0, #2
        str     r6, [r2, r3]
        ldr     r2, [r4, #0x218]
        add     r3, r8, r1, lsl #2
        add     r1, r1, #1
        str     r6, [r2, r3]
        ldr     r2, [r4, #0x218]
        ldr     r2, [r2]
        cmp     r2, r0
        bhi     L5512ac
L5512e0:
        mov     r1, r7
        add     r0, r4, #0xc
        str     r1, [r0, #4]
        nop
        nop
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #5
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x2f
        strb    r1, [r0, #4]
        mov     r1, r0
        str     r4, [r0, #0x10]
        mov     r0, r5
        bl      Fn_55bd58
        mov     r0, #1
L551328:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_551220, . - A_551220

@ FUN_00551498
        .global A_551498
        .type   A_551498, %function
A_551498:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        bl      Fn_55bca4
        mov     r5, r0
        mov     r1, #5
        bl      Fn_55bb2c
        ldr     r1, [r5, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x30
        strb    r1, [r0, #4]
        mov     r1, r0
        str     r4, [r0, #0x10]
        mov     r0, r5
        bl      Fn_55bd58
        mov     r1, #1
        mov     r0, r5
        bl      Fn_55bd7c
        mov     r1, r0
        mov     r0, r5
        bl      Fn_55bfe4
        mov     r0, #0
        str     r0, [r4, #0x21c]
        str     r0, [r4, #0x218]
        pop     {r4, r5, r6, pc}
        .size   A_551498, . - A_551498

@ FUN_005514f8
        .global A_5514f8
        .type   A_5514f8, %function
A_5514f8:
        ldr     r1, L551530
        push    {r4, lr}
        mov     r4, #0
        stm     r0, {r1, r4}
        str     r4, [r0, #8]!
        add     r0, r0, #4
        bl      Fn_55b780
        ldr     r1, L551534
        str     r4, [r0, #0x20c]
        add     r2, r1, #0x20
        str     r2, [r0], #-0xc
        str     r1, [r0]
        str     r4, [r0, #0x21c]
        pop     {r4, pc}
L551530:
        .word   0x0082cf1c
L551534:
        .word   0x0082cb2c
        .size   A_5514f8, . - A_5514f8

@ FUN_00551b34
        .global A_551b34
        .type   A_551b34, %function
A_551b34:
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L551b6c
        add     r1, r1, #0x2000
        add     r1, r1, #0x9d0
        mov     r2, #0
        ldr     r3, [r1]
        cmp     r3, r0
        bne     L551b68
        str     r2, [r1]
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L551b6c
L551b68:
        str     r2, [r0]
L551b6c:
        bx      lr
        .size   A_551b34, . - A_551b34

@ FUN_00551b70
        .global A_551b70
        .type   A_551b70, %function
A_551b70:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        add     r0, r0, #0x120
        bl      Fn_55c768
        add     r1, r4, #0x120
        mov     r0, r4
        bl      Fn_5506f0
        add     r0, r4, #0x120
        bl      Fn_637d7c
        mov     r6, r0
        add     r0, r4, #0x120
        bl      Fn_637cfc
        add     r1, r5, r6
        add     r0, r4, #0x120
        bl      Fn_55c7d0
        add     r0, r4, #0x120
        bl      Fn_637df4
        mov     r6, r0
        add     r0, r4, #0x120
        bl      Fn_637dbc
        cmn     r6, #1
        cmnne   r0, #1
        beq     L551bdc
        add     r1, r5, r6
        add     r0, r4, #0x120
        bl      Fn_55c7dc
L551bdc:
        mov     r0, #1
        str     r5, [r4, #0x11c]
        pop     {r4, r5, r6, pc}
        .size   A_551b70, . - A_551b70

@ FUN_00551d38
        .global A_551d38
        .type   A_551d38, %function
A_551d38:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r0
        mov     r8, r1
        mov     sb, r2
        mov     fp, r3
        vpush   {d8}
        sub     sp, sp, #0x3c
        ldr     r5, [sp, #0x70]
        ldr     r6, [sp, #0x6c]
        ldr     sl, [sp, #0x68]
        vldr    s16, [sp, #0x74]
        bl      Fn_550154
        cmp     r0, #0
        beq     L551dec
        cmp     r5, #0
        beq     L551d9c
        bl      Fn_00545c
        mov     r7, r0
        bl      Fn_00536c
        cmp     r7, r6
        add     r1, r0, r7
        bhi     L551de8
        add     r0, r6, r5
        cmp     r0, r1
        bhi     L551de8
L551d9c:
        vstr    s16, [sp]
        mov     r3, sl
        mov     r2, fp
        mov     r1, r8
        mov     r0, r4
        bl      Fn_553efc
        cmp     r0, #0
        nop
        beq     L551dec
        mov     r0, r8
        mov     r7, #0
        add     r1, sp, #0x1c
        bl      Fn_636c7c
        cmp     r0, #0
        ldrne   r7, [sp, #0x2c]
        add     r0, r7, r7, lsl #2
        lsl     r0, r0, #0xd
        cmp     r0, r5
        bls     L551df8
L551de8:
        mov     r0, #0
L551dec:
        add     sp, sp, #0x3c
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L551df8:
        mov     r7, #0
        mov     r1, sp
        mov     r0, r8
        bl      Fn_636c7c
        cmp     r0, #0
        ldrne   r7, [sp, #0x10]
        mov     r2, r5
        mov     r1, r6
        mov     r3, r7
        add     r0, r4, #0x80
        bl      Fn_562918
        add     r0, r4, #0x9c
        str     r0, [r4, #0x98]!
        mov     r0, #1
        str     sb, [r4, #0x20]
        add     sp, sp, #0x3c
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_551d38, . - A_551d38

@ FUN_00551e40
        .global A_551e40
        .type   A_551e40, %function
A_551e40:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r1
        mov     r5, r0
        vpush   {d8}
        sub     sp, sp, #0x3c
        ldr     r8, [r1]
        ldr     r6, [r1, #0x14]
        ldr     r7, [r1, #0x10]
        vldr    s16, [r1, #4]
        ldrd    sl, fp, [r4, #8]
        vldr    s17, [r1, #0x20]
        bl      Fn_550154
        cmp     r0, #0
        beq     L551ef8
        cmp     r6, #0
        beq     L551ea4
        bl      Fn_00545c
        mov     sb, r0
        bl      Fn_00536c
        cmp     sb, r7
        add     r1, r0, sb
        bhi     L551ef8
        add     r0, r7, r6
        cmp     r0, r1
        bhi     L551ef8
L551ea4:
        vstr    s17, [sp]
        mov     r3, fp
        mov     r2, sl
        mov     r1, r8
        mov     r0, r5
        bl      Fn_553efc
        cmp     r0, #0
        nop
        beq     L551ef8
        mov     r0, r8
        mov     sb, r8
        mov     sl, r5
        mov     r8, #0
        add     r1, sp, #0x1c
        bl      Fn_636c7c
        cmp     r0, #0
        ldrne   r8, [sp, #0x2c]
        add     r0, r8, r8, lsl #2
        lsl     r0, r0, #0xd
        cmp     r0, r6
        bls     L551f00
L551ef8:
        mov     r6, #0
        b       L551f3c
L551f00:
        mov     r8, #0
        mov     r1, sp
        mov     r0, sb
        bl      Fn_636c7c
        cmp     r0, #0
        ldrne   r8, [sp, #0x10]
        mov     r2, r6
        mov     r1, r7
        mov     r3, r8
        add     r0, sl, #0x80
        bl      Fn_562918
        add     r1, r5, #0x9c
        str     r1, [r5, #0x98]
        mov     r6, #1
        vstr    s16, [r5, #0xb8]
L551f3c:
        ldr     r0, [r4, #0x18]
        cmp     r0, #0
        beq     L551fac
        ldr     r0, [r4]
        mov     r1, sp
        bl      Fn_636c7c
        cmp     r0, #0
        ldrne   r1, [sp, #8]
        beq     L551fb0
        ldr     r0, [r4, #0x1c]
        bl      Fn_022d48
        mov     r2, r0
        ldr     r0, [r5, #0x78]
        ldr     r3, [r4, #0x18]
        add     r1, r5, #0x78
        cmp     r0, r1
        add     ip, r5, #0x74
        beq     L551fac
L551f84:
        ldr     r5, L551fbc
        mov     r4, r3
        mov     r1, #0x2b40
        add     r3, r3, r2
        str     r4, [r5, r0]
        str     r2, [r1, r0]
        ldr     r0, [r0]
        add     r1, ip, #4
        cmp     r0, r1
        bne     L551f84
L551fac:
        mov     r0, r6
L551fb0:
        add     sp, sp, #0x3c
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L551fbc:
        .word   0x00002b3c
        .size   A_551e40, . - A_551e40

@ FUN_00551fc0
        .global A_551fc0
        .type   A_551fc0, %function
A_551fc0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x14
        mov     r4, r2
        mov     r6, r0
        mov     r5, r3
        ldr     r0, [r2]
        tst     r0, #0x1f
        bne     L552160
        ldr     r0, [sp, #0x18]
        bl      Fn_639658
        mov     sl, r0
        ldr     r8, [r4]
        add     r1, sl, sl, lsl #1
        add     r1, r1, sl, lsl #4
        mov     r0, #0x1f
        add     r0, r0, r1, lsl #2
        bic     r0, r0, #0x1f
        add     r0, r0, r8
        sub     r1, r0, r5
        cmp     r1, #0
        bgt     L552160
        str     r0, [r4]
        str     sl, [r6, #0x18]!
        cmp     sl, #0
        mov     r7, #0
        str     r8, [r6, #4]
        bls     L552154
L55202c:
        cmp     r8, #0
        moveq   r1, #0
        beq     L552044
        mov     r0, r8
        bl      Fn_54fe58
        mov     r1, r0
L552044:
        mov     r0, #0
        str     r0, [sp, #8]
        str     r1, [sp]
        str     r0, [sp, #0xc]
        ldr     r0, [sp, #0x18]
        orr     r1, r7, #0x4000000
        add     r2, sp, #8
        bl      Fn_63687c
        cmp     r0, #0
        nop
        beq     L552144
        ldr     r0, [sp]
        ldr     r1, [sp, #8]
        bl      Fn_54fc08
        ldr     r0, [sp, #0xc]
        cmp     r0, #0
        beq     L552144
        ldr     r0, [sp, #8]
        mov     fp, #0
        cmp     r0, #0
        ble     L552138
L552098:
        ldr     r0, [r4]
        ldr     r6, [sp, #0xc]
        tst     r0, #0x1f
        bne     L552160
        add     r1, r0, #0x3f
        bic     r2, r1, #0x1f
        sub     r1, r2, r5
        cmp     r1, #0
        bgt     L552160
        cmp     r0, #0
        moveq   sb, #0
        str     r2, [r4]
        beq     L5520d4
        bl      Fn_55692c
        mov     sb, r0
L5520d4:
        ldr     r0, [r4]
        add     r0, r0, #0x1f
        bic     r1, r0, #0x1f
        add     r0, r1, r6
        add     r0, r0, #0x1f
        bic     r2, r0, #0x1f
        sub     r0, r2, r5
        cmp     r0, #0
        str     r1, [r4]
        bgt     L552160
        str     r2, [r4]
        mov     r2, r6
        mov     r0, sb
        bl      Fn_556900
        cmp     r0, #0
        nop
        beq     L552160
        movs    r1, sb
        beq     L552160
        ldr     r0, [sp]
        bl      Fn_54fce0
        ldr     r0, [sp, #8]
        add     fp, fp, #1
        cmp     r0, fp
        bgt     L552098
L552138:
        mov     r1, r0
        ldr     r0, [sp]
        str     r1, [r0, #0x28]
L552144:
        add     r7, r7, #1
        cmp     r7, sl
        add     r8, r8, #0x4c
        blo     L55202c
L552154:
        add     sp, sp, #0x24
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L552160:
        add     sp, sp, #0x24
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_551fc0, . - A_551fc0

@ FUN_00553984
        .global A_553984
        .type   A_553984, %function
A_553984:
        push    {r4, r5, r6}
        ldr     r1, [r1]
        tst     r1, #0x1f
        bne     L553a4c
        add     r3, r3, #3
        bic     ip, r3, #3
        ldr     r3, [r0, #0x58]
        add     r4, r0, #0x58
        add     r5, r0, #0x54
        cmp     r3, r4
        beq     L5539d0
L5539b0:
        sub     r4, r3, #0xc
        mov     r6, r1
        stm     r4, {r6, ip}
        add     r4, r5, #4
        ldr     r3, [r3]
        add     r1, r1, ip
        cmp     r3, r4
        bne     L5539b0
L5539d0:
        ldr     r3, [r0, #0x38]
        add     r4, r0, #0x38
        add     r5, r0, #0x34
        cmp     r3, r4
        beq     L553a04
L5539e4:
        sub     r4, r3, #0xc
        mov     r6, r1
        stm     r4, {r6, ip}
        add     r4, r5, #4
        ldr     r3, [r3]
        add     r1, r1, ip
        cmp     r3, r4
        bne     L5539e4
L553a04:
        ldr     r3, [r0, #0x78]
        add     r4, r0, #0x78
        add     r5, r0, #0x74
        cmp     r3, r4
        beq     L553a38
L553a18:
        sub     r4, r3, #0xc
        mov     r6, r1
        stm     r4, {r6, ip}
        add     r4, r5, #4
        ldr     r3, [r3]
        add     r1, r1, ip
        cmp     r3, r4
        bne     L553a18
L553a38:
        sub     r1, r1, r2
        cmp     r1, #0
        str     ip, [r0, #0xb4]
        movle   r0, #1
        ble     L553a50
L553a4c:
        mov     r0, #0
L553a50:
        pop     {r4, r5, r6}
        bx      lr
        .size   A_553984, . - A_553984

@ FUN_00553a58
        .global A_553a58
        .type   A_553a58, %function
A_553a58:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x600
        mov     r4, #0
        mov     sl, r0
        ldr     r0, [r0, #0x18]
        cmp     r0, #0
        bls     L553a9c
L553a74:
        bic     r0, r4, #0xff000000
        ldr     r1, [sl, #0x1c]
        add     r2, r0, r0, lsl #1
        add     r0, r2, r0, lsl #4
        add     r0, r1, r0, lsl #2
        bl      Fn_54fcf8
        ldr     r0, [sl, #0x18]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L553a74
L553a9c:
        ldr     r0, [sl, #0x28]
        add     r4, sl, #0x20
        cmp     r0, #2
        blo     L553b60
        mov     r5, sp
        ldr     r1, L553d10
        mov     r3, #0x80
        mov     r2, #0xc
        mov     r0, r5
        blx     Fn_0000ac_t
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L553b10
L553ad0:
        ldr     r1, [r4, #0xc]
        add     r0, r4, #8
        sub     r6, r1, #0xe4
        bl      Fn_542154
        ldrb    r0, [r6, #0x9c]
        ldr     r1, [r6, #0x50]
        add     r2, r6, #0xe4
        add     r0, r0, r1
        usat    r0, #7, r0
        add     r0, r0, r0, lsl #1
        add     r0, r5, r0, lsl #2
        add     r1, r0, #4
        bl      Fn_542230
        ldr     r0, [r4, #8]
        cmp     r0, #0
        bne     L553ad0
L553b10:
        mov     sb, #0
L553b14:
        add     r6, sb, sb, lsl #1
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        addne   r7, r5, r6, lsl #2
        beq     L553b54
L553b28:
        ldr     r1, [r7, #4]
        mov     r0, r7
        mov     r8, r1
        bl      Fn_542154
        add     r0, r4, #8
        add     r1, r4, #0xc
        mov     r2, r8
        bl      Fn_542230
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        bne     L553b28
L553b54:
        add     sb, sb, #1
        cmp     sb, #0x80
        blt     L553b14
L553b60:
        ldr     r0, [sl, #0x48]
        add     r4, sl, #0x40
        cmp     r0, #2
        blo     L553c24
        mov     r5, sp
        ldr     r1, L553d14
        mov     r3, #0x80
        mov     r2, #0xc
        mov     r0, r5
        blx     Fn_0000ac_t
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L553bd4
L553b94:
        ldr     r1, [r4, #0xc]
        add     r0, r4, #8
        sub     r6, r1, #0xe4
        bl      Fn_542154
        ldrb    r0, [r6, #0x9c]
        ldr     r1, [r6, #0x50]
        add     r2, r6, #0xe4
        add     r0, r0, r1
        usat    r0, #7, r0
        add     r0, r0, r0, lsl #1
        add     r0, r5, r0, lsl #2
        add     r1, r0, #4
        bl      Fn_542230
        ldr     r0, [r4, #8]
        cmp     r0, #0
        bne     L553b94
L553bd4:
        mov     sb, #0
L553bd8:
        add     r6, sb, sb, lsl #1
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        addne   r7, r5, r6, lsl #2
        beq     L553c18
L553bec:
        ldr     r1, [r7, #4]
        mov     r0, r7
        mov     r8, r1
        bl      Fn_542154
        add     r0, r4, #8
        add     r1, r4, #0xc
        mov     r2, r8
        bl      Fn_542230
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        bne     L553bec
L553c18:
        add     sb, sb, #1
        cmp     sb, #0x80
        blt     L553bd8
L553c24:
        ldr     r0, [sl, #0x68]
        add     r4, sl, #0x60
        cmp     r0, #2
        blo     L553ce8
        mov     r5, sp
        ldr     r1, L553d18
        mov     r3, #0x80
        mov     r2, #0xc
        mov     r0, r5
        blx     Fn_0000ac_t
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L553c98
L553c58:
        ldr     r1, [r4, #0xc]
        add     r0, r4, #8
        sub     r6, r1, #0xe4
        bl      Fn_542154
        ldrb    r0, [r6, #0x9c]
        ldr     r1, [r6, #0x50]
        add     r2, r6, #0xe4
        add     r0, r0, r1
        usat    r0, #7, r0
        add     r0, r0, r0, lsl #1
        add     r0, r5, r0, lsl #2
        add     r1, r0, #4
        bl      Fn_542230
        ldr     r0, [r4, #8]
        cmp     r0, #0
        bne     L553c58
L553c98:
        mov     sb, #0
L553c9c:
        add     r6, sb, sb, lsl #1
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        addne   r7, r5, r6, lsl #2
        beq     L553cdc
L553cb0:
        ldr     r1, [r7, #4]
        mov     r0, r7
        mov     r8, r1
        bl      Fn_542154
        add     r0, r4, #8
        add     r1, r4, #0xc
        mov     r2, r8
        bl      Fn_542230
        ldr     r0, [r5, r6, lsl #2]
        cmp     r0, #0
        bne     L553cb0
L553cdc:
        add     sb, sb, #1
        cmp     sb, #0x80
        blt     L553c9c
L553ce8:
        nop
        bl      Fn_55bca4
        mov     r4, r0
        nop
        bl      Fn_55bf1c
        add     sp, sp, #0x600
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r1, #0
        b       Fn_55bd7c
L553d10:
        .word   0x007857d0
L553d14:
        .word   0x00785800
L553d18:
        .word   0x007857b8
        .size   A_553a58, . - A_553a58

@ FUN_00553d1c
        .global A_553d1c
        .type   A_553d1c, %function
A_553d1c:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     sb, #0
        str     sb, [r0, #4]
        str     sb, [r0, #0x98]
        ldr     r0, [r0, #0x18]
        mov     r4, sb
        cmp     r0, #0
        bls     L553d68
L553d40:
        ldr     r1, [r5, #0x1c]
        add     r0, r4, r4, lsl #1
        add     r0, r0, r4, lsl #4
        add     r0, r1, r0, lsl #2
        mov     r1, #0
        bl      Fn_54f99c
        ldr     r0, [r5, #0x18]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L553d40
L553d68:
        nop
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #1
        bl      Fn_55bd7c
        mov     r1, r0
        mov     r0, r4
        bl      Fn_55bfe4
        str     sb, [r5, #0x18]
        add     r0, r5, #0x80
        str     sb, [r5, #0x1c]
        bl      Fn_562a50
        ldr     r0, [r5, #0xac]
        cmp     r0, #0
        beq     L553eec
        ldr     r0, L553ef0
        ldr     r1, [r5, #0x24]
        ldr     r4, [r5, #0x20]
        add     r8, r5, #0x20
        mov     r6, #0
        umull   r1, r0, r0, r1
        lsr     r7, r0, #8
        cmp     r7, #0
        bls     L553de8
L553dc8:
        ldr     r1, [r4]
        mov     r0, r4
        ldr     r1, [r1, #4]
        blx     r1
        add     r6, r6, #1
        cmp     r7, r6
        add     r4, r4, #0x570
        bhi     L553dc8
L553de8:
        ldr     r1, [r8, #0x18]
        add     r2, r8, #0x18
        add     r0, r8, #0x14
        bl      Fn_5421a0
        ldr     r1, [r8, #0xc]
        add     r2, r8, #0xc
        add     r0, r8, #8
        bl      Fn_5421a0
        add     r1, r5, #0xac
        add     r0, r5, #0x9c
        ldm     r1, {r1, r2}
        bl      Fn_566788
        ldr     r0, L553ef4
        ldr     r1, [r5, #0x44]
        ldr     r4, [r5, #0x40]
        add     r8, r5, #0x40
        mov     r6, #0
        umull   r1, r0, r0, r1
        lsr     r7, r0, #0xa
        cmp     r7, #0
        bls     L553e5c
L553e3c:
        ldr     r1, [r4]
        mov     r0, r4
        ldr     r1, [r1, #4]
        blx     r1
        add     r6, r6, #1
        cmp     r7, r6
        add     r4, r4, #0x470
        bhi     L553e3c
L553e5c:
        ldr     r1, [r8, #0x18]
        add     r2, r8, #0x18
        add     r0, r8, #0x14
        bl      Fn_5421a0
        ldr     r1, [r8, #0xc]
        add     r2, r8, #0xc
        add     r0, r8, #8
        bl      Fn_5421a0
        ldr     r0, L553ef8
        ldr     r1, [r5, #0x64]
        ldr     r4, [r5, #0x60]
        add     r8, r5, #0x60
        mov     r6, #0
        umull   r1, r0, r0, r1
        lsr     r7, r0, #8
        cmp     r7, #0
        bls     L553ec4
L553ea0:
        ldr     r1, [r4]
        mov     r0, r4
        ldr     r1, [r1, #4]
        blx     r1
        add     r4, r4, #0x2c00
        add     r6, r6, #1
        cmp     r7, r6
        add     r4, r4, #0x28
        bhi     L553ea0
L553ec4:
        ldr     r1, [r8, #0x18]
        add     r2, r8, #0x18
        add     r0, r8, #0x14
        bl      Fn_5421a0
        ldr     r1, [r8, #0xc]
        add     r2, r8, #0xc
        add     r0, r8, #8
        bl      Fn_5421a0
        str     sb, [r5, #0xac]
        str     sb, [r5, #0xb0]
L553eec:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L553ef0:
        .word   0x2f149903
L553ef4:
        .word   0xe6c2b449
L553ef8:
        .word   0x05cc2f1b
        .size   A_553d1c, . - A_553d1c

@ FUN_00553efc
        .global A_553efc
        .type   A_553efc, %function
A_553efc:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        tst     r2, #0x1f
        sub     sp, sp, #0x4c
        mov     r8, r0
        mov     sl, r2
        bne     L5541b8
        ldr     r0, [sp, #0x58]
        str     sl, [sp]
        ldr     r1, [sp, #0x50]
        add     sb, sl, r0
        mov     r3, sb
        mov     r2, sp
        mov     r0, r8
        bl      Fn_551fc0
        cmp     r0, #0
        beq     L5541b0
        ldr     r0, [sp, #0x50]
        add     r1, sp, #0x24
        bl      Fn_636c7c
        cmp     r0, #0
        beq     L55416c
        ldr     r4, [sp]
        ldr     r0, [sp, #0x24]
        tst     r4, #0x1f
        bne     L5541b8
        mov     r1, #0x570
        mul     r0, r0, r1
        add     r0, r0, #0x1f
        bic     r0, r0, #0x1f
        add     fp, r4, r0
        sub     r1, fp, sb
        cmp     r1, #0
        bgt     L5541b8
        ldr     r1, L5541c4
        str     r0, [sp, #0xc]
        add     r6, r8, #0x20
        mov     r5, #0
        umull   r1, r0, r1, r0
        str     r4, [sp, #8]
        lsr     r7, r0, #8
        cmp     r7, #0
        bls     L553fe0
L553fa4:
        cmp     r4, #0
        moveq   r2, #0
        beq     L553fc0
        mov     r1, r6
        mov     r0, r4
        bl      Fn_559098
        mov     r2, r0
L553fc0:
        add     r0, r6, #0x14
        add     r1, r6, #0x18
        add     r2, r2, #0xe4
        bl      Fn_542230
        add     r5, r5, #1
        cmp     r5, r7
        add     r4, r4, #0x570
        blo     L553fa4
L553fe0:
        ldr     r0, [sp, #8]
        tst     fp, #0x1f
        mov     r4, fp
        str     r0, [r6]
        ldr     r0, [sp, #0xc]
        str     r0, [r6, #4]
        ldr     r0, [sp, #0x38]
        str     fp, [sp]
        bne     L5541b8
        mov     r1, #0x470
        mul     r0, r0, r1
        add     r0, r0, #0x1f
        bic     fp, r0, #0x1f
        add     r0, r4, fp
        str     r0, [sp, #0x14]
        sub     r0, r0, sb
        cmp     r0, #0
        bgt     L5541b8
        ldr     r0, L5541c8
        add     r6, r8, #0x40
        mov     r5, #0
        str     r4, [sp, #8]
        umull   r1, r0, r0, fp
        lsr     r7, r0, #0xa
        cmp     r7, #0
        bls     L554080
L554048:
        movs    r0, r4
        moveq   r2, #0
        beq     L554060
        mov     r1, r6
        bl      Fn_567308
        mov     r2, r0
L554060:
        add     r0, r6, #0x14
        add     r1, r6, #0x18
        add     r2, r2, #0xe4
        bl      Fn_542230
        add     r5, r5, #1
        cmp     r5, r7
        add     r4, r4, #0x470
        blo     L554048
L554080:
        ldr     r0, [sp, #8]
        stm     r6, {r0, fp}
        ldr     r4, [sp, #0x14]
        ldr     r0, [sp, #0x2c]
        tst     r4, #0x1f
        str     r4, [sp]
        bne     L5541b8
        ldr     r1, L5541cc
        mul     r0, r0, r1
        add     r0, r0, #0x1f
        bic     fp, r0, #0x1f
        add     r0, r4, fp
        str     r0, [sp, #0x14]
        sub     r0, r0, sb
        cmp     r0, #0
        bgt     L5541b8
        ldr     r0, L5541d0
        add     r6, r8, #0x60
        mov     r5, #0
        str     r4, [sp, #8]
        umull   r1, r0, r0, fp
        lsr     r7, r0, #8
        cmp     r7, #0
        bls     L554120
L5540e0:
        cmp     r4, #0
        moveq   r2, #0
        beq     L5540fc
        mov     r1, r6
        mov     r0, r4
        bl      Fn_557170
        mov     r2, r0
L5540fc:
        add     r0, r6, #0x14
        add     r1, r6, #0x18
        add     r2, r2, #0xe4
        bl      Fn_542230
        add     r4, r4, #0x2c00
        add     r5, r5, #1
        cmp     r5, r7
        add     r4, r4, #0x28
        blo     L5540e0
L554120:
        ldr     r0, [sp, #8]
        stm     r6, {r0, fp}
        ldr     r1, [sp, #0x14]
        str     r1, [sp]
        ldr     r0, [sp, #0x28]
        tst     r1, #0x1f
        bne     L5541b8
        rsb     r3, r0, r0, lsl #3
        add     r0, r3, r0, lsl #5
        mov     r2, #0x1f
        add     r0, r2, r0, lsl #3
        bic     r2, r0, #0x1f
        add     r4, r1, r2
        sub     r0, r4, sb
        cmp     r0, #0
        bgt     L5541b8
        add     r0, r8, #0x9c
        bl      Fn_566724
        str     r4, [sp]
L55416c:
        ldr     r0, [sp, #0x80]
        cmp     r0, #0
        beq     L554198
        mov     r3, r0
        mov     r2, sb
        mov     r1, sp
        mov     r0, r8
        bl      Fn_553984
        cmp     r0, #0
        nop
        beq     L5541b0
L554198:
        ldr     r0, [sp, #0x50]
        str     r0, [r8, #4]
        str     sl, [r8, #0xac]
        ldr     r0, [sp, #0x58]
        str     r0, [r8, #0xb0]
        mov     r0, #1
L5541b0:
        add     sp, sp, #0x5c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5541b8:
        add     sp, sp, #0x5c
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5541c4:
        .word   0x2f149903
L5541c8:
        .word   0xe6c2b449
L5541cc:
        .word   0x00002c28
L5541d0:
        .word   0x05cc2f1b
        .size   A_553efc, . - A_553efc

@ FUN_005541d4
        .global A_5541d4
        .type   A_5541d4, %function
A_5541d4:
        ldr     r2, L5542a8
        ldr     r3, L5542ac
        add     ip, r0, #4
        str     r2, [r0]
        mov     r1, #0
        stm     ip, {r1, r3}
        add     r2, r0, #0x28
        str     r0, [r0, #0xc]
        str     r1, [r0, #0x10]
        str     r1, [r0, #0x14]
        str     r1, [r0, #0x18]
        str     r1, [r0, #0x1c]
        str     r1, [r0, #0x20]
        add     ip, r0, #0x2c
        str     r1, [r0, #0x24]
        stm     r2, {r1, ip}
        add     r2, r0, #0x34
        str     ip, [r0, #0x30]
        add     r3, r0, #0x38
        stm     r2, {r1, r3}
        add     r2, r0, #0x48
        str     r1, [r0, #0x40]
        str     r3, [r0, #0x3c]
        add     ip, r0, #0x4c
        str     r1, [r0, #0x44]
        stm     r2, {r1, ip}
        add     r3, r0, #0x54
        str     ip, [r0, #0x50]
        add     r2, r0, #0x58
        stm     r3, {r1, r2}
        add     ip, r0, #0x6c
        str     r1, [r0, #0x60]
        str     r2, [r0, #0x5c]
        add     r2, r0, #0x68
        str     r1, [r0, #0x64]
        stm     r2, {r1, ip}
        add     r3, r0, #0x74
        add     r2, r0, #0x78
        str     ip, [r0, #0x70]
        stm     r3, {r1, r2}
        add     r3, r0, #0xa8
        str     r2, [r0, #0x7c]
        str     r3, [r0, #0xa0]
        ldr     r3, L5542b4
        ldr     ip, L5542b0
        str     r1, [r0, #0xa4]
        str     r3, [r0, #0xa8]
        str     ip, [r0, #0x9c]
        str     r1, [r0, #0xac]
        str     r1, [r0, #0xb0]
        str     r1, [r0, #0xb4]
        str     r1, [r0, #0xbc]
        bx      lr
L5542a8:
        .word   0x0082cbfc
L5542ac:
        .word   0x0082cbe8
L5542b0:
        .word   0x0082d078
L5542b4:
        .word   0x0082d0a8
        .size   A_5541d4, . - A_5541d4

@ FUN_005542e0
        .global A_5542e0
        .type   A_5542e0, %function
A_5542e0:
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L554310
        ldr     r3, [r1, #0x268]
        mov     r2, #0
        cmp     r3, r0
        bne     L55430c
        str     r2, [r1, #0x268]
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L554310
L55430c:
        str     r2, [r0]
L554310:
        bx      lr
        .size   A_5542e0, . - A_5542e0

@ FUN_00554314
        .global A_554314
        .type   A_554314, %function
A_554314:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r0, #0
        cmp     r1, #0
        str     r0, [r4]
        ldrne   r5, [r1]
        cmpne   r5, #0
        ldrne   r6, L5543a0
        beq     L554388
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
L554348:
        cmp     r0, r6
        bne     L554390
        movs    r0, r5
        beq     L554388
        str     r0, [r4]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x18]
        blx     r1
        cmp     r0, #0
        beq     L554380
        ldr     r0, [r4]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x1c]
        blx     r1
L554380:
        ldr     r1, [r4]
        str     r4, [r1, #0x268]
L554388:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L554390:
        ldr     r0, [r0]
        cmp     r0, #0
        bne     L554348
        b       L554388
L5543a0:
        .word   0x008bb4f8
        .size   A_554314, . - A_554314

@ FUN_00554594
        .global A_554594
        .type   A_554594, %function
A_554594:
        cmp     r1, #0
        addne   r0, r0, #0x1c
        moveq   r0, #0
        stmne   r0, {r1, r2}
        movne   r0, #1
        bx      lr
        .size   A_554594, . - A_554594

@ FUN_00554620
        .global A_554620
        .type   A_554620, %function
A_554620:
        vldr    s0, [r1, #8]
        vldr    s1, L554730
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        blo     L5546f0
        vmov    r2, s0
        cmp     r2, #0x3f800000
        bgt     L5546f0
        vldr    s0, [r1, #4]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        blo     L5546f0
        vmov    r2, s0
        cmp     r2, #0x3f800000
        bgt     L5546f0
        ldrb    r2, [r0, #0x5e]
        cmp     r2, #1
        bne     L55468c
        ldr     r2, [r1]
        ldr     r3, [r0, #0x58]
        cmp     r2, r3
        bhi     L5546f0
        ldrb    r2, [r0, #0x5c]
        cmp     r2, #0
        ldrbeq  r2, [r1, #0xc]
        cmpeq   r2, #1
        beq     L5546f0
L55468c:
        ldr     r2, [r1]
        mov     ip, #0x3e8
        ldr     r3, L554734
        vldr    s1, L554738
        mul     r2, r2, ip
        umull   r3, r2, r3, r2
        ldr     r3, L55473c
        lsrs    r2, r2, #0xc
        str     r2, [r0, #0x44]
        moveq   r2, #1
        streq   r2, [r0, #0x44]
        ldrb    r2, [r1, #0xc]
        cmp     r2, #0
        moveq   r2, #2
        movne   r2, #4
        strb    r2, [r0, #0x5d]
        vldr    s0, [r1, #4]
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vstr    s0, [r0, #0x4c]
        vldr    s0, [r1, #8]
        vmov    r2, s0
        cmp     r2, r3
        vldrgt  s0, L554740
        b       L5546f8
L5546f0:
        mov     r0, #0
        bx      lr
L5546f8:
        vldr    s2, L554744
        vmul.f32 s3, s0, s1
        add     r3, r0, #0x50
        vsub.f32 s2, s2, s0
        push    {r4, lr}
        mov     r2, #0xd
        add     r0, r0, #0xc
        vmul.f32 s0, s2, s1
        vcvt.s32.f32 s1, s3
        vcvt.s32.f32 s0, s0
        vstmia  r3, {s0, s1}
        bl      Fn_20004c
        mov     r0, #1
        pop     {r4, pc}
L554730:
        .word   0x00000000
L554734:
        .word   0xd6853cc1
L554738:
        .word   0x43000000
L55473c:
        .word   0x3f733333
L554740:
        .word   0x3f733333
L554744:
        .word   0x3f800000
        .size   A_554620, . - A_554620

@ FUN_00554748
        .global A_554748
        .type   A_554748, %function
A_554748:
        mov     r1, #0
        str     r1, [r0, #4]
        ldr     r2, L5547e4
        mov     r3, #0xfa
        str     r1, [r0, #8]
        str     r3, [r0, #0xc]
        str     r2, [r0]
        vldr    s0, L5547e8
        vldr    s1, L5547ec
        add     r3, r0, #0x10
        add     ip, r0, #0x4c
        vstmia  r3, {s0, s1}
        mov     r3, #0x10000
        strb    r1, [r0, #0x18]
        str     r1, [r0, #0x1c]
        str     r1, [r0, #0x20]
        str     r1, [r0, #0x48]
        stm     ip, {r1, r3}
        mov     r2, #4
        str     r1, [r0, #0x54]
        strb    r2, [r0, #0x5d]
        strb    r1, [r0, #0x5e]
        ldrb    r3, [r0, #0x5d]
        mov     r2, #0
L5547a8:
        add     ip, r0, r2, lsl #2
        subs    r3, r3, #1
        add     r2, r2, #1
        str     r1, [ip, #0x24]
        bne     L5547a8
        ldrb    r2, [r0, #0x5d]
        cmp     r2, #0
        movne   r3, #0
        beq     L5547e0
L5547cc:
        add     ip, r0, r3, lsl #2
        subs    r2, r2, #1
        add     r3, r3, #1
        str     r1, [ip, #0x34]
        bne     L5547cc
L5547e0:
        bx      lr
L5547e4:
        .word   0x0082cc14
L5547e8:
        .word   0x3ecccccd
L5547ec:
        .word   0x3f000000
        .size   A_554748, . - A_554748

@ FUN_00554e28
        .global A_554e28
        .type   A_554e28, %function
A_554e28:
        cmp     r1, #0
        addne   r0, r0, #0x30
        moveq   r0, #0
        stmne   r0, {r1, r2}
        movne   r0, #1
        bx      lr
        .size   A_554e28, . - A_554e28

@ FUN_00554e4c
        .global A_554e4c
        .type   A_554e4c, %function
A_554e4c:
        push    {r4, r5}
        vldr    s1, [r0, #0xc]
        ldr     r2, L554ee0
        vldr    s0, L554ee4
        vcvt.f32.u32 s2, s1
        ldr     r4, [r0, #0x38]
        vmov    r1, s2
        vldr    s2, L554ee8
        cmp     r1, r2
        vcvtgt.f32.u32 s1, s1
        vmovle.f32 s1, s0
        vmul.f32 s1, s1, s2
        vcvt.u32.f32 s1, s1
        vmov    r1, s1
        vldr    s1, [r0, #0x14]
        vcvt.f32.u32 s3, s1
        add     r1, r1, r1, lsl #2
        lsl     r1, r1, #7
        vmov    r3, s3
        cmp     r3, r2
        vcvtgt.f32.u32 s0, s1
        add     r3, r0, #0x3c
        ldm     r3, {r3, ip}
        vmul.f32 s0, s0, s2
        vcvt.u32.f32 s0, s0
        vmov    r2, s0
        add     r2, r2, r2, lsl #2
        add     r5, r1, r2, lsl #7
        ldrb    r2, [r0, #0x10d]
        lsl     r0, r3, #2
        add     r3, r5, r4, lsl #2
        add     r0, r0, r3
        add     r0, r0, ip, lsl #2
        pop     {r4, r5}
        mul     r0, r0, r2
        add     r0, r0, #0x20
        bx      lr
L554ee0:
        .word   0x409c6a7f
L554ee4:
        .word   0x409c6a7f
L554ee8:
        .word   0x3e517e1d
        .size   A_554e4c, . - A_554e4c

@ FUN_00554f40
        .global A_554f40
        .type   A_554f40, %function
A_554f40:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        vldr    s1, [r1, #0xc]
        vldr    s0, L5550c8
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        blo     L5550c0
        vmov    r0, s1
        cmp     r0, #0x3f800000
        bgt     L5550c0
        vldr    s1, [r1, #0x10]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        blo     L5550c0
        vmov    r0, s1
        cmp     r0, #0x3f800000
        bgt     L5550c0
        vldr    s1, [r1, #0x18]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        blo     L5550c0
        vmov    r0, s1
        cmp     r0, #0x3f800000
        bgt     L5550c0
        vldr    s1, [r1, #0x1c]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        blo     L5550c0
        vmov    r0, s1
        cmp     r0, #0x3f800000
        bgt     L5550c0
        ldr     r0, [r1, #0x14]
        cmp     r0, #0
        beq     L554fe4
        ldr     r2, [r0]
        cmp     r2, #0
        ldrne   r2, [r0, #4]
        cmpne   r2, #0
        ldrne   r2, [r0, #8]
        cmpne   r2, #0
        beq     L5550c0
L554fe4:
        ldrb    r2, [r4, #0x10e]
        add     r5, r4, #0x100
        cmp     r2, #1
        bne     L555060
        ldr     r2, [r1]
        ldr     r3, [r4, #0xf8]
        cmp     r2, r3
        bhi     L5550c0
        ldr     r2, [r1, #8]
        ldr     r3, [r4, #0xfc]
        cmp     r2, r3
        bhi     L5550c0
        cmp     r0, #0
        beq     L55504c
        ldr     r2, [r0]
        ldr     r3, [r4, #0x100]
        cmp     r2, r3
        bhi     L5550c0
        ldr     r2, [r0, #4]
        ldr     r3, [r4, #0x104]
        cmp     r2, r3
        bhi     L5550c0
        ldr     r0, [r0, #8]
        ldr     r2, [r4, #0x108]
        cmp     r0, r2
        bhi     L5550c0
L55504c:
        ldrb    r0, [r5, #0xc]
        cmp     r0, #0
        ldrbeq  r0, [r1, #0x20]
        cmpeq   r0, #1
        beq     L5550c0
L555060:
        ldrb    r0, [r1, #0x20]
        mov     r2, #0x22
        cmp     r0, #0
        moveq   r0, #2
        movne   r0, #4
        strb    r0, [r4, #0x10d]
        add     r0, r4, #0xc
        bl      Fn_20004c
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        beq     L5550a8
        ldm     r0, {r1, r2}
        add     r3, r4, #0x38
        ldr     r0, [r0, #8]
        add     r6, r4, #0x38
        str     r0, [r4, #0x40]
        str     r3, [r4, #0x20]
        stm     r6, {r1, r2}
L5550a8:
        ldrb    r0, [r5, #0xe]
        cmp     r0, #1
        moveq   r0, r4
        bleq    Fn_554c58
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L5550c0:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
L5550c8:
        .word   0x00000000
        .size   A_554f40, . - A_554f40

@ FUN_005550cc
        .global A_5550cc
        .type   A_5550cc, %function
A_5550cc:
        push    {r4, r5}
        ldr     r2, L55521c
        mov     r1, #0
        str     r1, [r0, #4]
        str     r1, [r0, #8]
        str     r2, [r0]
        add     r2, r0, #0xc
        mov     r4, #0x3c
        mov     r5, #0xfa0
        mov     ip, #0x64
        stm     r2, {r4, r5, ip}
        add     r5, r0, #0x100
        vldr    s1, L555220
        ldr     r3, L555228
        vldr    s0, L555224
        vstr    s1, [r0, #0x18]
        vldr    s2, L55522c
        vstr    s0, [r0, #0x1c]
        str     r3, [r0, #0x20]
        vstr    s2, [r0, #0x24]
        vstr    s0, [r0, #0x28]
        strb    r1, [r0, #0x2c]
        strb    r1, [r0, #0x2d]
        str     r1, [r0, #0x30]
        ldr     ip, [r3]
        ldrd    r2, r3, [r3, #4]
        str     r1, [r0, #0xe8]
        str     ip, [r0, #0x38]
        str     r1, [r0, #0xec]
        str     r1, [r0, #0xf0]
        str     r1, [r0, #0xf4]
        strd    r2, r3, [r0, #0x3c]
        mov     r3, #0xbe0
        mov     r4, #0xe60
        stm     r5, {r3, r4}
        mov     ip, #0x820
        mov     r3, #4
        str     ip, [r0, #0x108]
        strb    r3, [r0, #0x10d]
        mov     r2, #0xa0
        add     r3, r0, #0xa8
        strb    r1, [r0, #0x10e]
        str     r2, [r0, #0xa4]
        stm     r3, {r1, r2}
        add     r3, r0, #0xb0
        stm     r3, {r1, r2}
        add     r3, r0, #0xc8
        str     r1, [r0, #0xbc]
        str     r1, [r0, #0xc4]
        str     r2, [r0, #0xb8]
        str     r1, [r0, #0xc0]
        stm     r3, {r1, r2}
        str     r1, [r0, #0xd0]
        str     r1, [r0, #0xd4]
        str     r1, [r0, #0x44]
        str     r1, [r0, #0x54]
        str     r1, [r0, #0x64]
        str     r1, [r0, #0x68]
        str     r1, [r0, #0x84]
        str     r1, [r0, #0x94]
        str     r1, [r0, #0xd8]
        str     r1, [r0, #0x48]
        str     r1, [r0, #0x58]
        str     r1, [r0, #0x6c]
        str     r1, [r0, #0x70]
        str     r1, [r0, #0x88]
        str     r1, [r0, #0x98]
        str     r1, [r0, #0xdc]
        str     r1, [r0, #0x4c]
        str     r1, [r0, #0x5c]
        str     r1, [r0, #0x74]
        str     r1, [r0, #0x78]
        str     r1, [r0, #0x8c]
        str     r1, [r0, #0x9c]
        str     r1, [r0, #0xe0]
        str     r1, [r0, #0x50]
        str     r1, [r0, #0x60]
        str     r1, [r0, #0x7c]
        str     r1, [r0, #0x80]
        str     r1, [r0, #0x90]
        str     r1, [r0, #0xa0]
        str     r1, [r0, #0xe4]
        pop     {r4, r5}
        bx      lr
L55521c:
        .word   0x0082cc34
L555220:
        .word   0x3f000000
L555224:
        .word   0x3ecccccd
L555228:
        .word   0x009dfdf8
L55522c:
        .word   0x3f19999a
        .size   A_5550cc, . - A_5550cc

@ FUN_00555a20
        .global A_555a20
        .type   A_555a20, %function
A_555a20:
        cmp     r1, #0
        push    {r4, r5}
        ldrb    r1, [r0, #0x8b]
        mov     r4, #0
        mov     r5, #1
        beq     L555b04
        cmp     r1, #0
        cmpne   r1, #1
        beq     L555a54
        cmp     r1, #2
        beq     L555afc
        cmp     r1, #3
        bne     L555afc
L555a54:
        ldr     r3, [r0, #0x80]
        ldr     ip, [r0, #0x7c]
        cmp     r3, ip
        vldrge  s0, [r0, #0x78]
        bge     L555a90
        vmov    s1, r3
        vldr    s3, [r0, #0x78]
        vldr    s0, [r0, #0x74]
        vmov    s2, ip
        vsub.f32 s3, s3, s0
        vcvt.f32.s32 s4, s1
        vcvt.f32.s32 s1, s2
        vmul.f32 s3, s3, s4
        vdiv.f32 s2, s3, s1
        vadd.f32 s0, s2, s0
L555a90:
        vmov    s1, r2
        vcvt.f32.s32 s1, s1
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        vldr    s0, L555bd4
        cmp     r1, #0
        movle   r1, #1
        cmp     r3, ip
        vldrge  s1, [r0, #0x78]
        bge     L555ae4
        vmov    s2, r3
        vldr    s4, [r0, #0x78]
        vldr    s1, [r0, #0x74]
        vmov    s3, ip
        vsub.f32 s4, s4, s1
        vcvt.f32.s32 s2, s2
        vcvt.f32.s32 s3, s3
        vmul.f32 s4, s4, s2
        vdiv.f32 s2, s4, s3
        vadd.f32 s1, s2, s1
L555ae4:
        add     r2, r0, #0x7c
        vstr    s1, [r0, #0x74]
        vstr    s0, [r0, #0x78]
        stm     r2, {r1, r4}
        strb    r4, [r0, #0x8c]
        strb    r5, [r0, #0x8b]
L555afc:
        pop     {r4, r5}
        bx      lr
L555b04:
        cmp     r1, #0
        beq     L555afc
        cmp     r1, #1
        cmpne   r1, #2
        cmpne   r1, #3
        bne     L555afc
        ldr     r3, [r0, #0x80]
        ldr     ip, [r0, #0x7c]
        cmp     r3, ip
        vldrge  s1, [r0, #0x78]
        bge     L555b58
        vmov    s1, r3
        vldr    s3, [r0, #0x78]
        vldr    s0, [r0, #0x74]
        vmov    s2, ip
        vsub.f32 s3, s3, s0
        vcvt.f32.s32 s4, s1
        vcvt.f32.s32 s1, s2
        vmul.f32 s3, s3, s4
        vdiv.f32 s2, s3, s1
        vadd.f32 s1, s2, s0
L555b58:
        vmov    s2, r2
        vldr    s0, L555bd8
        vcvt.f32.s32 s2, s2
        vsub.f32 s1, s0, s1
        vmul.f32 s1, s1, s2
        vcvt.s32.f32 s1, s1
        vmov    r1, s1
        cmp     r1, #0
        movle   r1, #1
        cmp     r3, ip
        vldrge  s1, [r0, #0x78]
        bge     L555bb0
        vmov    s2, r3
        vldr    s4, [r0, #0x78]
        vldr    s1, [r0, #0x74]
        vmov    s3, ip
        vsub.f32 s4, s4, s1
        vcvt.f32.s32 s5, s2
        vcvt.f32.s32 s2, s3
        vmul.f32 s4, s4, s5
        vdiv.f32 s3, s4, s2
        vadd.f32 s1, s3, s1
L555bb0:
        add     r2, r0, #0x7c
        vstr    s1, [r0, #0x74]
        vstr    s0, [r0, #0x78]
        stm     r2, {r1, r4}
        mov     r1, #3
        strb    r1, [r0, #0x8b]
        strb    r5, [r0, #0x8c]
        pop     {r4, r5}
        bx      lr
L555bd4:
        .word   0x00000000
L555bd8:
        .word   0x3f800000
        .size   A_555a20, . - A_555a20

@ FUN_00555bdc
        .global A_555bdc
        .type   A_555bdc, %function
A_555bdc:
        ldrb    r2, [r0, #0x88]
        cmp     r2, #0
        ldreq   r2, [r0, #0x94]
        cmpeq   r2, #0
        bne     L555c10
        mov     r2, #0
        vldr    s0, L555c14
        vstr    s0, [r0, #0x64]
        vstr    s0, [r0, #0x68]
        vldr    s0, L555c18
        str     r2, [r0, #0x70]
        vstr    s0, [r0, #0x68]
        str     r1, [r0, #0x6c]
L555c10:
        bx      lr
L555c14:
        .word   0x00000000
L555c18:
        .word   0x3f800000
        .size   A_555bdc, . - A_555bdc

@ FUN_00555c1c
        .global A_555c1c
        .type   A_555c1c, %function
A_555c1c:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        sub     sp, sp, #0x2c
        ldr     r0, [r0]
        ldr     r1, [r0, #0x28]
        mov     r0, r4
        blx     r1
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        ldrb    r0, [r0, #0x10]
        cmp     r0, #0
        beq     L555ca0
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #5
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #0xc
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
        b       L555d84
L555ca0:
        ldrb    r0, [r4, #0x87]
        cmp     r0, #0
        beq     L555cc0
        ldr     r0, [r4, #0x90]
        cmp     r0, #0
        subne   r0, r0, #1
        strne   r0, [r4, #0x90]
        beq     L555ce4
L555cc0:
        ldrb    r0, [r4, #0x86]
        mov     r8, #1
        mov     r5, #0
        cmp     r0, #0
        beq     L555d08
        ldrb    r0, [r4, #0x8a]
        cmp     r0, #1
        beq     L555d34
        b       L555d5c
L555ce4:
        ldrb    r0, [r4, #0x8b]
        cmp     r0, #0
        cmpne   r0, #3
        bne     L555cc0
        add     sp, sp, #0x2c
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, lr}
        mov     r1, #0
        b       Fn_55590c
L555d08:
        ldrb    r0, [r4, #0x85]
        cmp     r0, #0
        beq     L5560a4
        ldr     r0, [r4]
        ldr     r1, [r0, #0x14]
        mov     r0, r4
        blx     r1
        cmp     r0, #0
        movne   r5, #1
        strbne  r8, [r4, #0x8a]
        beq     L5560a4
L555d34:
        ldr     r0, [r4, #0x94]
        cmn     r0, #1
        addne   r0, r0, #1
        strne   r0, [r4, #0x94]
        ldrb    r0, [r4, #0x8b]
        cmp     r0, #2
        ldrne   r0, [r4, #0x98]
        cmnne   r0, #1
        addne   r0, r0, #1
        strne   r0, [r4, #0x98]
L555d5c:
        ldrb    r0, [r4, #0x89]
        cmp     r0, #0
        beq     L555d9c
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        ldrb    r0, [r0, #0xf]
        cmp     r0, #0
        beq     L555d9c
L555d84:
        ldr     r0, [r4]
        ldr     r1, [r0, #0x10]
        add     sp, sp, #0x2c
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, lr}
        bx      r1
L555d9c:
        ldrb    r0, [r4, #0x8b]
        cmp     r0, #0
        beq     L555de8
        cmp     r0, #1
        beq     L555dbc
        cmp     r0, #3
        bne     L555df8
        b       L555dd4
L555dbc:
        ldr     r0, [r4, #0x80]
        ldr     r1, [r4, #0x7c]
        cmp     r0, r1
        addlt   r0, r0, #1
        strlt   r0, [r4, #0x80]
        b       L555df8
L555dd4:
        ldr     r0, [r4, #0x80]
        ldr     r1, [r4, #0x7c]
        cmp     r0, r1
        addlt   r0, r0, #1
        strlt   r0, [r4, #0x80]
L555de8:
        ldr     r0, [r4]
        ldr     r1, [r0, #0x2c]
        mov     r0, r4
        blx     r1
L555df8:
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        beq     L555e18
        ldr     r1, [r0]
        mov     r2, r4
        ldr     r3, [r1, #8]
        ldr     r1, [r4, #0x28]
        blx     r3
L555e18:
        ldr     r0, [r4, #0x1c]
        mov     r7, #0
        cmp     r0, #0
        beq     L555f20
        vldr    s1, L5560ac
        vldr    s0, L5560b0
        vstr    s1, [sp]
        vstr    s1, [sp, #4]
        vstr    s0, [sp, #8]
        vstr    s0, [sp, #0xc]
        vstr    s0, [sp, #0x10]
        vstr    s0, [sp, #0x14]
        vstr    s0, [sp, #0x18]
        str     r7, [sp, #0x1c]
        str     r7, [sp, #0x20]
        str     r7, [sp, #0x24]
        ldr     r0, [r4, #0x94]
        cmp     r0, #0
        beq     L555eb4
        ldr     r0, [r4, #0x30]
        str     r0, [sp]
        ldr     r0, [r4, #0x34]
        str     r0, [sp, #4]
        ldr     r0, [r4, #0x38]
        str     r0, [sp, #8]
        ldr     r0, [r4, #0x3c]
        str     r0, [sp, #0xc]
        ldr     r0, [r4, #0x40]
        str     r0, [sp, #0x10]
        ldr     r0, [r4, #0x44]
        str     r0, [sp, #0x14]
        ldr     r0, [r4, #0x48]
        str     r0, [sp, #0x18]
        ldr     r0, [r4, #0x4c]
        str     r0, [sp, #0x1c]
        ldr     r0, [r4, #0x50]
        str     r0, [sp, #0x20]
        ldr     r0, [r4, #0x54]
        str     r0, [sp, #0x24]
L555eb4:
        ldr     r0, [r4, #0x1c]
        ldr     r1, [r4, #0x28]
        ldr     r2, [r4, #0xa0]
        ldr     r3, [r0]
        ldr     ip, [r3, #8]
        mov     r3, sp
        blx     ip
        ldr     r0, [sp]
        str     r0, [r4, #0x30]
        ldr     r0, [sp, #4]
        str     r0, [r4, #0x34]
        ldr     r0, [sp, #8]
        str     r0, [r4, #0x38]
        ldr     r0, [sp, #0xc]
        str     r0, [r4, #0x3c]
        ldr     r0, [sp, #0x10]
        str     r0, [r4, #0x40]
        ldr     r0, [sp, #0x14]
        str     r0, [r4, #0x44]
        ldr     r0, [sp, #0x18]
        str     r0, [r4, #0x48]
        ldr     r0, [sp, #0x1c]
        str     r0, [r4, #0x4c]
        ldr     r0, [sp, #0x20]
        str     r0, [r4, #0x50]
        ldr     r0, [sp, #0x24]
        str     r0, [r4, #0x54]
L555f20:
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        beq     L555f44
        add     r1, r0, #0x48
        ldr     r0, [r0, #0x50]
        ldm     r1, {r1, r2}
        add     r3, r4, #0x58
        str     r0, [r4, #0x60]
        stm     r3, {r1, r2}
L555f44:
        ldr     r0, [r4]
        ldr     r1, [r0, #0x30]
        mov     r0, r4
        blx     r1
        ldrb    r0, [r4, #0x88]
        cmp     r0, #0
        beq     L555f70
        ldrd    r0, r1, [r4, #0x6c]
        cmp     r0, r1
        strble  r7, [r4, #0x88]
        ble     L555d84
L555f70:
        nop
        bl      Fn_55bca4
        cmp     r5, #0
        mov     r6, r0
        beq     L555fcc
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #5
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
        strb    r8, [r4, #0x86]
        strb    r7, [r4, #0x85]
L555fcc:
        ldrb    r0, [r4, #0x8b]
        mov     sb, #7
        cmp     r0, #1
        beq     L555fe8
        cmp     r0, #3
        beq     L556044
        b       L556050
L555fe8:
        ldrd    r0, r1, [r4, #0x7c]
        cmp     r1, r0
        blt     L556050
        mov     r1, #6
        mov     r0, r6
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        strb    sb, [r0, #4]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r1, r0
        str     r1, [r5, #0x10]
        mov     r1, r5
        mov     r0, r6
        strb    r8, [r5, #0x14]
        bl      Fn_55bd58
        mov     r0, #2
        strb    r0, [r4, #0x8b]
        b       L556050
L556044:
        ldrd    r0, r1, [r4, #0x7c]
        cmp     r1, r0
        strbge  r7, [r4, #0x8b]
L556050:
        ldrb    r0, [r4, #0x8c]
        cmp     r0, #0
        beq     L5560a4
        mov     r1, #6
        mov     r0, r6
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        mov     r5, r0
        str     r1, [r0, #0xc]
        strb    sb, [r0, #4]
        ldr     r0, [r4]
        ldr     r1, [r0, #0x20]
        mov     r0, r4
        blx     r1
        mov     r1, r0
        str     r1, [r5, #0x10]
        mov     r1, r5
        mov     r0, r6
        strb    r7, [r5, #0x14]
        bl      Fn_55bd58
        strb    r7, [r4, #0x8c]
L5560a4:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, pc}
L5560ac:
        .word   0x3f800000
L5560b0:
        .word   0x00000000
        .size   A_555c1c, . - A_555c1c

@ FUN_00556248
        .global A_556248
        .type   A_556248, %function
A_556248:
        vldr    s1, L5562a8
        ldr     r2, [r0, #0xb0]
        ldr     r3, [r0, #0xac]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
        vldr    s1, [r0, #0xa8]
        cmp     r2, r3
        bge     L556290
        vmov    s3, r2
        vldr    s2, [r0, #0xa4]
        vmov    s4, r3
        vsub.f32 s1, s1, s2
        vcvt.f32.s32 s5, s3
        vcvt.f32.s32 s3, s4
        vmul.f32 s4, s1, s5
        vdiv.f32 s1, s4, s3
        vadd.f32 s1, s1, s2
L556290:
        mov     r2, #0
        vstr    s1, [r0, #0xa4]
        vstr    s0, [r0, #0xa8]
        add     r0, r0, #0xac
        stm     r0, {r1, r2}
        bx      lr
L5562a8:
        .word   0x00000000
        .size   A_556248, . - A_556248

@ FUN_005562ac
        .global A_5562ac
        .type   A_5562ac, %function
A_5562ac:
        ldr     r1, L556358
        vldr    s1, L55635c
        vldr    s0, L556360
        str     r1, [r0]
        vstr    s1, [r0, #0x30]
        vstr    s1, [r0, #0x34]
        vstr    s0, [r0, #0x38]
        vstr    s0, [r0, #0x3c]
        vstr    s0, [r0, #0x40]
        vstr    s0, [r0, #0x44]
        mov     r1, #0
        vstr    s0, [r0, #0x48]
        str     r1, [r0, #0x4c]
        str     r1, [r0, #0x50]
        str     r1, [r0, #0x54]
        vstr    s1, [r0, #0x58]
        vstr    s1, [r0, #0x5c]
        vstr    s0, [r0, #0x60]
        vstr    s0, [r0, #0x64]
        vstr    s0, [r0, #0x68]
        str     r1, [r0, #0x6c]
        str     r1, [r0, #0x70]
        vstr    s0, [r0, #0x74]
        vstr    s0, [r0, #0x78]
        str     r1, [r0, #0x7c]
        str     r1, [r0, #0x80]
        strb    r1, [r0, #0x84]
        vstr    s0, [r0, #0xa4]
        vstr    s0, [r0, #0xa8]
        str     r1, [r0, #0xac]
        str     r1, [r0, #0xb0]
        str     r1, [r0, #0xd8]
        str     r1, [r0, #0xdc]
        str     r1, [r0, #0xe0]
        str     r1, [r0, #0xe4]
        str     r1, [r0, #0xe8]
        str     r1, [r0, #0xec]
        str     r1, [r0, #0xf0]
        str     r1, [r0, #0xf4]
        str     r1, [r0, #0xf8]
        str     r1, [r0, #0xfc]
        str     r1, [r0, #0x100]
        bx      lr
L556358:
        .word   0x0082cc54
L55635c:
        .word   0x3f800000
L556360:
        .word   0x00000000
        .size   A_5562ac, . - A_5562ac

@ FUN_00556454
        .global A_556454
        .type   A_556454, %function
A_556454:
        ldrb    r2, [r0]
        cmp     r2, #5
        ldrlo   pc, [pc, r2, lsl #2]
        bx      lr
L556464:
        .word   0x00656478
L556468:
        .word   0x006564d0
L55646c:
        .word   0x006564f4
L556470:
        .word   0x00656460
L556474:
        .word   0x00656540
        .word   0xe2813001
        .word   0xe3530001
        .word   0xcdd00a04
        .word   0xe3a01001
        .word   0xdafffff4
        .word   0xed900a01
        .word   0xee200a20
        .word   0xee102a10
        .word   0xed800a01
        .word   0xe35204bd
        .word   0x2a000006
        .word   0xe1d011b4
        .word   0xed9f0a2b
        .word   0xe3a02001
        .word   0xed800a01
        .word   0xe5c02000
        .word   0xe1c011b6
        .word   0xe12fff1e
        .word   0xe2811001
        .word   0xe1510003
        .word   0xbaffffef
        .word   0xe12fff1e
        .word   0xe1d021b6
        .word   0xe1520001
        .word   0xc0421001
        .word   0xcafffff5
        .word   0xe3a0c000
        .word   0xe3a03002
        .word   0xe1c0c1b6
        .word   0xe0411002
        .word   0xe5c03000
        .word   0xee001a90
        .word   0xe5d02018
        .word   0xe59f305c
        .word   0xed900a01
        .word   0xed901a02
        .word   0xe0832082
        .word   0xeef81ae0
        .word   0xe1d220f0
        .word   0xee002a90
        .word   0xee010a61
        .word   0xeef80ae0
        .word   0xed800a01
        .word   0xeeb40ae0
        .word   0xeef1fa10
        .word   0x2affffcb
        .word   0xe3a01003
        .word   0xedc00a01
        .word   0xe5c01000
        .word   0xe12fff1e
        .word   0xee001a10
        .word   0xedd00a01
        .word   0xed901a03
        .word   0xeeb80ac0
        .word   0xee410a40
        .word   0xedc00a01
        .word   0xe12fff1e
        .word   0x00000000
        .word   0x007ffb84
        .size   A_556454, . - A_556454

@ FUN_00556abc
        .global A_556abc
        .type   A_556abc, %function
A_556abc:
        ldr     r0, L556b28
        push    {r4, lr}
        ldr     r0, [r0]
        tst     r0, #1
        bne     L556b20
        ldr     r0, L556b28
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L556b20
        ldr     r0, L556b2c
        mov     r2, #0
        mov     r1, #1
        str     r2, [r0]
        strb    r1, [r0, #4]
        add     r1, r0, #8
        str     r2, [r0, #8]
        mvn     r3, #0
        strd    r2, r3, [r1, #4]
        strb    r2, [r0, #0x14]
        strb    r2, [r0, #0x15]
        ldr     r2, L556b30
        ldr     r1, L556b34
        mov     r0, r0
        ldr     r0, L556b28
        mov     r0, r0
L556b20:
        ldr     r0, L556b2c
        pop     {r4, pc}
L556b28:
        .word   0x008bb72c
L556b2c:
        .word   0x009e0844
L556b30:
        .word   0x00100000
L556b34:
        .word   0x00656c74
        .size   A_556abc, . - A_556abc

@ FUN_00556b38
        .global A_556b38
        .type   A_556b38, %function
A_556b38:
        push    {r4, r5, r6, r7, lr}
        mov     r4, r0
        sub     sp, sp, #0x2c
        ldrb    r0, [r0, #0x15]
        mov     r6, r1
        mov     r5, r2
        cmp     r0, #0
        movne   r0, r4
        blne    Fn_556c04
        mov     r7, #0
        strb    r7, [r4, #0x14]
        add     r0, r4, #8
        bl      Fn_01b624
        add     ip, sp, #0x14
        mov     r0, r4
        mov     r3, #4
        stm     ip, {r0, r3}
        mvn     r1, #1
        ldr     r3, L556bf8
        ldr     r2, L556bf4
        str     r3, [sp, #0x1c]
        ldr     r3, L556bfc
        str     r3, [sp, #0x20]
        ldr     r3, L556c00
        str     r3, [sp, #0x24]
        ldm     r5, {r3, ip}
        add     r3, r3, ip
        add     ip, sp, #8
        stm     sp, {r3, r6}
        stm     ip, {r1, r7}
        add     r3, sp, #0x14
        add     r1, sp, #0x18
        bl      Fn_010b94
        mov     r5, r0
        and     r0, r0, #0x7e00000
        cmp     r0, #0x600000
        beq     L556bd8
        lsrs    r1, r5, #0x1f
        mov     r0, r5
        blne    Fn_01b6ac
L556bd8:
        lsr     r0, r5, #0x1f
        eors    r0, r0, #1
        beq     L556bec
        mov     r0, #1
        strb    r0, [r4, #0x15]
L556bec:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, pc}
L556bf4:
        .word   0x00656a30
L556bf8:
        .word   0x0012a704
L556bfc:
        .word   0x0012a720
L556c00:
        .word   0x0012a714
        .size   A_556b38, . - A_556b38

@ FUN_00556c04
        .global A_556c04
        .type   A_556c04, %function
A_556c04:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x15]
        cmp     r0, #0
        beq     L556c70
        mov     r6, #1
        strb    r6, [r4, #0x14]
        bl      Fn_557434
        bl      Fn_684e38
        mvn     r2, #0
        ldr     r0, [r4]
        mov     r5, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mov     r0, r4
        strb    r6, [r4, #4]
        bl      Fn_024588
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L556c64
        svc     #0x23
        str     r5, [r4]
L556c64:
        mvn     r0, #0
        str     r0, [r4, #0x10]
        strb    r5, [r4, #0x15]
L556c70:
        pop     {r4, r5, r6, pc}
        .size   A_556c04, . - A_556c04

@ FUN_00556c74
        .global A_556c74
        .type   A_556c74, %function
A_556c74:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x15]
        cmp     r0, #0
        movne   r0, r4
        blne    Fn_556c04
        mov     r0, r4
        bl      Fn_024588
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L556cac
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L556cac:
        mov     r0, r4
        pop     {r4, pc}
        .size   A_556c74, . - A_556c74

@ FUN_00557170
        .global A_557170
        .type   A_557170, %function
A_557170:
        push    {r4, lr}
        mov     r4, r1
        bl      Fn_5562ac
        ldr     r1, L5571e4
        str     r1, [r0], #0x104
        bl      Fn_564634
        add     r0, r0, #0x1c00
        add     r0, r0, #0x98
        bl      Fn_5602e8
        ldr     r1, L5571e8
        sub     r0, r0, #0x1c00
        sub     r0, r0, #0x19c
        mov     r3, #4
        str     r4, [r1, r0]
        add     r0, r0, #0x2800
        ldr     r1, L5571ec
        mov     r2, #0x10
        add     r0, r0, #0x1d8
        blx     Fn_0000ac_t
        ldr     r2, L5571f0
        sub     r0, r0, #0x2800
        sub     r0, r0, #0x1d8
        mov     r1, #0
        add     r3, r2, #2
        add     ip, r2, #6
        strb    r1, [r2, r0]
        str     r1, [r3, r0]
        str     r1, [ip, r0]
        pop     {r4, pc}
L5571e4:
        .word   0x0082cca4
L5571e8:
        .word   0x000029d4
L5571ec:
        .word   0x007858e4
L5571f0:
        .word   0x00002c1e
        .size   A_557170, . - A_557170

@ FUN_00557258
        .global A_557258
        .type   A_557258, %function
A_557258:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        add     r6, r0, #0x2c
        mov     r4, r1
        mov     r7, r2
        mov     r0, r6
        bl      Fn_0244c8
        add     r0, r4, #0xc
        bl      Fn_01b4d4
        mov     r0, #1
        strb    r0, [r4, #0x14]
        add     r0, r7, r7, lsl #1
        add     r2, r4, #4
        add     r0, r5, r0, lsl #2
        add     r1, r0, #4
        bl      Fn_542230
        mov     r1, #0
        add     r0, r5, #0x38
        bl      Fn_684c10
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_024568
        .size   A_557258, . - A_557258

@ FUN_0055736c
        .global A_55736c
        .type   A_55736c, %function
A_55736c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r7, #0
        mov     r8, #3
L55737c:
        add     r6, r5, #0x2c
        mov     r0, r6
        bl      Fn_0244c8
        mov     r2, #1
        mov     r1, #2
        mov     r0, r5
        bl      Fn_5574e4
        movs    r4, r0
        nop
        beq     L5573b8
L5573a4:
        mov     r0, r6
        bl      Fn_024568
        nop
        nop
        b       L5573fc
L5573b8:
        mov     r2, #1
        mov     r1, r2
        mov     r0, r5
        bl      Fn_5574e4
        movs    r4, r0
        nop
        bne     L5573a4
        mov     r2, #1
        mov     r1, #0
        mov     r0, r5
        bl      Fn_5574e4
        cmp     r0, #0
        nop
        beq     L557428
        mov     r4, r0
        mov     r0, r6
        bl      Fn_024568
L5573fc:
        str     r4, [r5, #0x24]
        ldr     r0, [r4]
        ldr     r1, [r0, #8]
        mov     r0, r4
        blx     r1
        add     r0, r4, #0xc
        strb    r8, [r4, #0x14]
        bl      Fn_01b404
        str     r7, [r5, #0x24]
        nop
        b       L55737c
L557428:
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_024568
        .size   A_55736c, . - A_55736c

@ FUN_005574e4
        .global A_5574e4
        .type   A_5574e4, %function
A_5574e4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r5, r0, #0x2c
        mov     r6, r1
        mov     r7, r2
        mov     r0, r5
        bl      Fn_0244c8
        add     r0, r6, r6, lsl #1
        ldr     r1, [r4, r0, lsl #2]
        cmp     r1, #0
        beq     L557534
        add     r0, r4, r0, lsl #2
        cmp     r7, #0
        ldr     r1, [r0, #4]
        sub     r4, r1, #4
        blne    Fn_542154
        mov     r0, r5
        bl      Fn_024568
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L557534:
        mov     r0, r5
        bl      Fn_024568
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5574e4, . - A_5574e4

@ FUN_00557620
        .global A_557620
        .type   A_557620, %function
A_557620:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        add     r4, r0, #0x2c
        mov     r0, r4
        bl      Fn_0244c8
        mov     r2, #1
        mov     r1, #2
        mov     r0, r5
        bl      Fn_5574e4
        cmp     r0, #0
        bne     L557664
        mov     r2, #1
        mov     r1, r2
        mov     r0, r5
        bl      Fn_5574e4
        cmp     r0, #0
        beq     L557678
L557664:
        mov     r6, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r6
        pop     {r4, r5, r6, pc}
L557678:
        mov     r2, #1
        mov     r1, #0
        mov     r0, r5
        bl      Fn_5574e4
        cmp     r0, #0
        nop
        beq     L5576a8
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L5576a8:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_557620, . - A_557620

@ FUN_005576b8
        .global A_5576b8
        .type   A_5576b8, %function
A_5576b8:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        strb    r0, [r4, #0x28]
        b       L5576e0
L5576cc:
        add     r0, r4, #0x38
        bl      Fn_684d70
        cmp     r0, #0
        nop
        beq     L557738
L5576e0:
        mov     r2, #0
        mov     r1, #2
        mov     r0, r4
        bl      Fn_5574e4
        cmp     r0, #0
        nop
        bne     L557738
        mov     r2, #0
        mov     r1, #1
        mov     r0, r4
        bl      Fn_5574e4
        cmp     r0, #0
        nop
        bne     L557738
        mov     r2, #0
        mov     r1, r2
        mov     r0, r4
        bl      Fn_5574e4
        cmp     r0, #0
        ldrbeq  r0, [r4, #0x28]
        cmpeq   r0, #0
        beq     L5576cc
L557738:
        pop     {r4, pc}
        .size   A_5576b8, . - A_5576b8

@ FUN_00557748
        .global A_557748
        .type   A_557748, %function
A_557748:
        push    {r4, lr}
        blx     Fn_0000ac_t
        mov     r3, #0
        mov     r4, r0
        str     r3, [r0, #0x24]
        strb    r3, [r0, #0x28]
        str     r3, [r0, #0x2c]!
        add     r0, r0, #4
        mvn     ip, #0
        stm     r0, {r3, ip}
        str     r3, [r4, #0x3c]
        strh    r3, [r4, #0x40]
        str     r3, [r4, #0x44]
        strh    r3, [r4, #0x48]
        str     r3, [r4, #0x4c]
        add     r2, r4, #0x50
        stm     r2, {r3, ip}
        str     r3, [r4, #0x64]
        str     r3, [r4, #0x68]
        mov     r0, r4
        pop     {r4, pc}
        .size   A_557748, . - A_557748

@ FUN_005577e4
        .global A_5577e4
        .type   A_5577e4, %function
A_5577e4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x34]
        ldr     r5, [r4, #0x34]
        ldr     r0, [r0, #4]
        ldrb    r2, [r5, #0x1c]
        bic     r0, r0, #1
        cmp     r2, #0
        beq     L557820
        bl      Fn_4ec510
        str     r0, [r5, #0x18]
        asr     r0, r0, #0x1f
        adds    r5, r0, #1
        bne     L55785c
        b       L557844
L557820:
        nop
        bl      Fn_4ec510
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        mov     r5, #1
        blne    Fn_010ccc
        nop
        nop
        b       L55785c
L557844:
        ldr     r2, [r4, #0x48]
        ldr     r0, [r4, #0x34]
        cmp     r2, #0
        ldrne   r1, [r4, #0x4c]
        ldr     r0, [r0, #0x18]
        blxne   r2
L55785c:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_5577e4, . - A_5577e4

@ FUN_00557e80
        .global A_557e80
        .type   A_557e80, %function
A_557e80:
        cmp     r0, #0
        bxeq    lr
        push    {r4, r5, lr}
        sub     sp, sp, #0x1c
        mov     r5, r0
        ldrb    r0, [r5, #4]
        cmp     r0, #0x3a
        ldrlo   pc, [pc, r0, lsl #2]
        b       Fn_558638
L557ea4:
        .word   0x00658638
L557ea8:
        .word   0x00658638
L557eac:
        .word   0x00657f8c
L557eb0:
        .word   0x00657f9c
L557eb4:
        .word   0x00657fbc
L557eb8:
        .word   0x00657fcc
L557ebc:
        .word   0x00657fe0
L557ec0:
        .word   0x0065800c
L557ec4:
        .word   0x00658054
L557ec8:
        .word   0x00658024
L557ecc:
        .word   0x00658034
L557ed0:
        .word   0x00658044
L557ed4:
        .word   0x006580d0
L557ed8:
        .word   0x006580e0
L557edc:
        .word   0x006580f8
L557ee0:
        .word   0x00658120
L557ee4:
        .word   0x0065813c
L557ee8:
        .word   0x00658154
L557eec:
        .word   0x00658168
L557ef0:
        .word   0x00658180
L557ef4:
        .word   0x00658198
L557ef8:
        .word   0x006581b8
L557efc:
        .word   0x006581d0
L557f00:
        .word   0x00658200
L557f04:
        .word   0x0065821c
L557f08:
        .word   0x00658238
L557f0c:
        .word   0x00658250
L557f10:
        .word   0x00658268
L557f14:
        .word   0x00658280
L557f18:
        .word   0x00658298
L557f1c:
        .word   0x006582b0
L557f20:
        .word   0x006582cc
L557f24:
        .word   0x006582e8
L557f28:
        .word   0x00658300
L557f2c:
        .word   0x00658318
L557f30:
        .word   0x00658330
L557f34:
        .word   0x00658360
L557f38:
        .word   0x00658374
L557f3c:
        .word   0x0065838c
L557f40:
        .word   0x006583e4
L557f44:
        .word   0x00658400
L557f48:
        .word   0x00658420
L557f4c:
        .word   0x00658468
L557f50:
        .word   0x00658480
L557f54:
        .word   0x00658498
L557f58:
        .word   0x006584b0
L557f5c:
        .word   0x006584c8
L557f60:
        .word   0x006584e8
L557f64:
        .word   0x00658508
L557f68:
        .word   0x00658528
L557f6c:
        .word   0x00658544
L557f70:
        .word   0x00658560
L557f74:
        .word   0x0065857c
L557f78:
        .word   0x0065859c
L557f7c:
        .word   0x006585bc
L557f80:
        .word   0x006585d8
L557f84:
        .word   0x006585f8
L557f88:
        .word   0x00658628
        .word   0xe5951010
        .word   0xe3a00001
        .word   0xe5c10000
        .word   0xea0001a6
        .word   0xe5950010
        .word   0xe5901000
        .word   0xe5911008
        .word   0xe12fff31
        .word   0xe5951014
        .word   0xe3a00001
        .word   0xe5c10000
        .word   0xea00019e
        .word   0xe5950010
        .word   0xe5901000
        .word   0xe591100c
        .word   0xea000002
        .word   0xe5950010
        .word   0xe5901000
        .word   0xe5911010
        .word   0xe12fff31
        .word   0xea000195
        .word   0xe5d50014
        .word   0xe3500000
        .word   0x0a000002
        .word   0xe5950010
        .word   0xed9f0ab4
        .word   0xed800a05
        .word   0xe5950010
        .word   0xe5901000
        .word   0xe5911014
        .word   0xe12fff31
        .word   0xea00018a
        .word   0xe5950010
        .word   0xe1d511d4
        .word   0xe5902000
        .word   0xe5922018
        .word   0xe12fff32
        .word   0xea000184
        .word   0xe5951010
        .word   0xe5d50014
        .word   0xe5c10034
        .word   0xea000180
        .word   0xe5950010
        .word   0xe5d51015
        .word   0xe5c01035
        .word   0xea00017c
        .word   0xe5950010
        .word   0xe5d51014
        .word   0xe5c0102e
        .word   0xea000178
        .word   0xe1c501d0
        .word   0xe5801014
        .word   0xe5950010
        .word   0xe5951018
        .word   0xe5801018
        .word   0xe5950010
        .word   0xe595101c
        .word   0xe580101c
        .word   0xe5950010
        .word   0xe5951020
        .word   0xe5801020
        .word   0xe5950010
        .word   0xe5951024
        .word   0xe5801024
        .word   0xe5950010
        .word   0xe5951028
        .word   0xed950a0b
        .word   0xeb0029c3
        .word   0xe5950010
        .word   0xe5951030
        .word   0xe3a04000
        .word   0xe5801030
        .word   0xe0852104
        .word   0xe5950010
        .word   0xe20410ff
        .word   0xed920a0d
        .word   0xeb0029dd
        .word   0xe2844001
        .word   0xe3540002
        .word   0xbafffff7
        .word   0xea000159
        .word   0xe5950010
        .word   0xe3a01000
        .word   0xe5c01010
        .word   0xea000155
        .word   0xe2850010
        .word   0xe890000f
        .word   0xeb00340f
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea00014f
        .word   0xe595103c
        .word   0xe2850038
        .word   0xe2853028
        .word   0xe1cd00f0
        .word   0xe1c501d0
        .word   0xe2852018
        .word   0xeb00346d
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000145
        .word   0xe2850010
        .word   0xe8900007
        .word   0xe20110ff
        .word   0xeb0033dd
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea00013e
        .word   0xe5950010
        .word   0xed950a05
        .word   0xed800a19
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000138
        .word   0xe1c501d0
        .word   0xe5c01074
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000133
        .word   0xe1d511d4
        .word   0xe5950010
        .word   0xe5c0105c
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea00012d
        .word   0xe2850010
        .word   0xe8900007
        .word   0xeb0033a7
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000127
        .word   0xe2851018
        .word   0xe5950010
        .word   0xe8910006
        .word   0xe6bf2072
        .word   0xeb0032c2
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea00011f
        .word   0xe1c501d8
        .word   0xe6bf1071
        .word   0xeb0032ca
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000119
        .word   0xe1c501d0
        .word   0xeb003278
        .word   0xe3500000
        .word   0xe320f000
        .word   0x0a000114
        .word   0xe2851018
        .word   0xe8910006
        .word   0xe6bf2072
        .word   0xeb002114
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea00010d
        .word   0xe2850010
        .word   0xe8900007
        .word   0xe20220ff
        .word   0xeb003243
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000106
        .word   0xe595301c
        .word   0xe1d521d8
        .word   0xe1c501d0
        .word   0xeb003280
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000ff
        .word   0xed950a06
        .word   0xe1c501d0
        .word   0xeb00326d
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000f9
        .word   0xed950a06
        .word   0xe1c501d0
        .word   0xeb003251
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000f3
        .word   0xed950a06
        .word   0xe1c501d0
        .word   0xeb003207
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000ed
        .word   0xed950a06
        .word   0xe1c501d0
        .word   0xeb0032ed
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000e7
        .word   0xed950a06
        .word   0xe1c501d0
        .word   0xeb00325c
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000e1
        .word   0xed950a06
        .word   0xe1c501d0
        .word   0xeb003281
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000db
        .word   0x00000000
        .word   0xe2850010
        .word   0xed950a07
        .word   0xe8900007
        .word   0xeb0032df
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000d3
        .word   0xe2850010
        .word   0xe8900007
        .word   0xeb003283
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000cd
        .word   0xe1d521d8
        .word   0xe1c501d0
        .word   0xeb0032a4
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000c7
        .word   0xe5d52018
        .word   0xe1c501d0
        .word   0xeb0032f1
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000c1
        .word   0xe5950020
        .word   0xe1d512d8
        .word   0xe5952024
        .word   0xe20000ff
        .word   0xe58d1008
        .word   0xe88d0005
        .word   0xe2850010
        .word   0xe890000f
        .size   A_557e80, . - A_557e80

@ FUN_00558908
        .global A_558908
        .type   A_558908, %function
A_558908:
        push    {r4, lr}
        bl      Fn_55c93c
        ldr     r2, L558954
        mov     r1, #0
        str     r1, [r0, #0x1c]
        str     r2, [r0]
        str     r1, [r0, #0x20]
        str     r1, [r0, #0x24]
        mvn     r3, #0
        str     r1, [r0, #0x28]
        str     r3, [r0, #0x34]
        str     r1, [r0, #0x38]
        ldr     r1, L558958
        mov     r3, #4
        mov     r2, #8
        add     r0, r0, #0x3c
        blx     Fn_0000ac_t
        sub     r0, r0, #0x3c
        pop     {r4, pc}
L558954:
        .word   0x0082cd40
L558958:
        .word   0x00657e2c
        .size   A_558908, . - A_558908

@ FUN_0055895c
        .global A_55895c
        .type   A_55895c, %function
A_55895c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #8
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        add     r2, r5, #0x104
        str     r1, [r0, #0xc]
        mov     r1, #0x14
        strb    r1, [r0, #4]
        str     r2, [r0, #0x10]
        strd    r6, r7, [r0, #0x18]
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
        .size   A_55895c, . - A_55895c

@ FUN_005589a8
        .global A_5589a8
        .type   A_5589a8, %function
A_5589a8:
        push    {r4, lr}
        mov     r4, r0
        add     r0, r0, #0x500
        ldrb    r1, [r0, #0x68]
        cmp     r1, #2
        beq     L5589e4
        ldrb    r0, [r0, #0x68]
        cmp     r0, #4
        bne     L5589e0
        mov     r1, #0
        mov     r0, r4
        bl      Fn_55590c
        mov     r0, #0
L5589dc:
        strb    r0, [r4, #0x568]
L5589e0:
        pop     {r4, pc}
L5589e4:
        add     r2, r4, #0x270
        add     r1, r4, #0x540
        mov     r0, r4
        bl      Fn_558df0
        mov     r0, #3
        nop
        b       L5589dc
        .size   A_5589a8, . - A_5589a8

@ FUN_00558a00
        .global A_558a00
        .type   A_558a00, %function
A_558a00:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r2, #0x11
        str     r1, [r0, #0xc]
        strb    r2, [r0, #4]
        add     r2, r0, #0x10
        add     r1, r5, #0x104
        stm     r2, {r1, r6}
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55bd58
        .size   A_558a00, . - A_558a00

@ FUN_00558a48
        .global A_558a48
        .type   A_558a48, %function
A_558a48:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #8
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x15
        strb    r1, [r0, #4]
        add     r1, r0, #0x18
        stm     r1, {r5, r6}
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55bd58
        .size   A_558a48, . - A_558a48

@ FUN_00558a8c
        .global A_558a8c
        .type   A_558a8c, %function
A_558a8c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        ldr     r6, [r0, #4]
        mov     r7, r2
        cmp     r6, #0
        moveq   r0, #0
        beq     L558bd4
        ldr     r1, [r5]
        add     r0, r4, #0x2d8
        bl      Fn_559f8c
        add     r2, r4, #0x298
        add     r1, r4, #0x2d8
        stm     r2, {r1, r6}
        add     r2, r4, #0x2a0
        ldr     r1, L558bd8
        add     r3, r4, #0x2b0
        add     r0, r4, #0x200
        stm     r2, {r1, r4}
        add     r8, r4, #0x270
        ldr     r1, [r5, #4]
        str     r1, [r4, #0x2a8]
        ldr     r1, [r5]
        str     r1, [r4, #0x2ac]
        ldr     r2, [r5, #8]
        ldm     r2, {r1, r2}
        stm     r3, {r1, r2}
        add     r3, r4, #0x2b8
        ldr     r2, [r5, #0xc]
        ldm     r2, {r1, r2}
        stm     r3, {r1, r2}
        add     r3, r0, #0xc0
        ldr     r2, [r5, #0xc]
        add     r2, r2, #8
        ldm     r2, {r1, r2}
        stm     r3, {r1, r2}
        add     r3, r0, #0xc8
        ldr     r2, [r5, #0xc]
        add     r0, r0, #0xd0
        ldr     r1, [r2, #0x10]
        ldr     r2, [r2, #0x14]
        stm     r3, {r1, r2}
        ldr     r2, [r5, #0xc]
        add     r2, r2, #0x18
        ldm     r2, {r1, r2}
        stm     r0, {r1, r2}
        mov     r0, #1
        ldm     r7, {r1, r2, r3}
        stm     r8, {r1, r2, r3}
        strb    r0, [r4, #0x568]
        mov     r0, r6
        bl      Fn_5568a8
        bl      Fn_55bca4
        mov     r6, r0
        mov     r1, #7
        bl      Fn_55bb2c
        ldr     r1, [r6, #0x184]
        add     r2, r4, #0x27c
        mov     r5, r0
        str     r1, [r0, #0xc]
        mov     r1, #0x38
        strb    r1, [r0, #4]
        str     r2, [r0, #0x18]
        bl      Fn_55e338
        add     r0, r0, #0x1c4
        bl      Fn_0244c8
        ldr     r0, [r4, #0x53c]
        add     r2, r4, #0x400
        add     r2, r2, #0x13c
        add     r1, r0, #1
        mov     r0, r5
        add     r5, r5, #0x10
        str     r1, [r4, #0x53c]
        stm     r5, {r1, r2}
        mov     r1, r0
        mov     r0, r6
        bl      Fn_55bd58
        str     r0, [r4, #0x56c]
        bl      Fn_55e338
        add     r0, r0, #0x1c4
        bl      Fn_024568
        mov     r0, #1
L558bd4:
        pop     {r4, r5, r6, r7, r8, pc}
L558bd8:
        .word   0x00658cc8
        .size   A_558a8c, . - A_558a8c

@ FUN_00558bdc
        .global A_558bdc
        .type   A_558bdc, %function
A_558bdc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #6
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r2, #0x12
        str     r1, [r0, #0xc]
        add     r1, r5, #0x104
        strb    r2, [r0, #4]
        str     r1, [r0, #0x10]
        mov     r1, r0
        strb    r6, [r0, #0x14]
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55bd58
        .size   A_558bdc, . - A_558bdc

@ FUN_00558d54
        .global A_558d54
        .type   A_558d54, %function
A_558d54:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #7
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        add     r2, r5, #0x104
        str     r1, [r0, #0xc]
        mov     r1, #0x13
        strb    r1, [r0, #4]
        add     r1, r0, #0x10
        stm     r1, {r2, r6, r7}
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
        .size   A_558d54, . - A_558d54

@ FUN_00558da0
        .global A_558da0
        .type   A_558da0, %function
A_558da0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r8, r3
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #8
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r2, #0xd
        str     r1, [r0, #0xc]
        strb    r2, [r0, #4]
        add     r2, r0, #0x10
        add     r1, r5, #0x104
        stm     r2, {r1, r6, r7, r8}
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_55bd58
        .size   A_558da0, . - A_558da0

@ FUN_00559098
        .global A_559098
        .type   A_559098, %function
A_559098:
        push    {r4, lr}
        mov     r4, r1
        bl      Fn_5562ac
        ldr     r1, L55914c
        str     r1, [r0], #0x104
        bl      Fn_565614
        sub     r0, r0, #0x104
        str     r4, [r0, #0x26c]!
        add     r0, r0, #0x10
        bl      Fn_55c93c
        ldr     r1, L559150
        mov     r4, #0
        mvn     r2, #0
        str     r1, [r0]
        str     r4, [r0, #0x1c]
        str     r4, [r0, #0x20]
        str     r4, [r0, #0x24]
        str     r2, [r0, #0x34]
        str     r4, [r0, #0x28]
        str     r4, [r0, #0x38]!
        ldr     r1, L559154
        mov     r3, #4
        mov     r2, #8
        add     r0, r0, #4
        blx     Fn_0000ac_t
        add     r0, r0, #0x20
        bl      Fn_55c1e8
        sub     r0, r0, #0x2d8
        str     r4, [r0, #0x53c]
        strb    r4, [r0, #0x569]
        strb    r4, [r0, #0x56a]
        str     r4, [r0, #0x540]
        str     r4, [r0, #0x544]
        str     r4, [r0, #0x554]
        strb    r4, [r0, #0x564]
        str     r4, [r0, #0x548]
        str     r4, [r0, #0x558]
        strb    r4, [r0, #0x565]
        str     r4, [r0, #0x54c]
        str     r4, [r0, #0x55c]
        strb    r4, [r0, #0x566]
        str     r4, [r0, #0x550]
        str     r4, [r0, #0x560]
        strb    r4, [r0, #0x567]
        pop     {r4, pc}
L55914c:
        .word   0x0082cd54
L559150:
        .word   0x0082cd40
L559154:
        .word   0x00657e2c
        .size   A_559098, . - A_559098

@ FUN_00559620
        .global A_559620
        .type   A_559620, %function
A_559620:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        mov     r7, r1
        mov     r5, r2
        add     r0, r0, #0x13c
        bl      Fn_637d7c
        mov     r8, r0
        add     r0, r4, #0x13c
        bl      Fn_637cfc
        cmp     r0, r5
        mov     r6, r0
        bhi     L55969c
        mov     r2, #0
        mov     r1, r8
        add     r0, r4, #0x11c
        bl      Fn_5567f4
        cmp     r0, #0
        add     r5, r4, #0x100
        beq     L5596a4
        mov     r0, #0
        str     r0, [sp]
        mov     r3, sp
        mov     r2, r6
        mov     r1, r7
        add     r0, r4, #0x11c
        bl      Fn_556790
        cmp     r0, #0
        beq     L5596a4
        ldr     r0, [sp]
        cmp     r0, r6
        beq     L5596b4
L55969c:
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L5596a4:
        ldr     r0, [r5, #0x34]
        str     r0, [r4, #0x180]
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L5596b4:
        mov     r1, r7
        add     r0, r4, #0x13c
        bl      Fn_55c7d0
        mov     r0, #1
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
        .size   A_559620, . - A_559620

@ FUN_00559730
        .global A_559730
        .type   A_559730, %function
A_559730:
        push    {r4, r5, lr}
        sub     sp, sp, #0x7c
        mov     r4, r0
        add     r0, sp, #0x1f
        bic     r5, r0, #0x1f
        mov     r0, #0
        str     r0, [sp, #0x78]
        mov     r2, #0x40
        add     r3, sp, #0x78
        mov     r1, r5
        add     r0, r4, #0x11c
        bl      Fn_556790
        cmp     r0, #0
        beq     L55979c
        ldr     r0, [sp, #0x78]
        cmp     r0, #0x40
        movne   r0, #0
        bne     L559794
        mov     r1, r5
        add     r0, r4, #0x13c
        bl      Fn_55c768
        add     r1, r4, #0x13c
        mov     r0, r4
        bl      Fn_5506f0
        mov     r0, #1
L559794:
        add     sp, sp, #0x7c
        pop     {r4, r5, pc}
L55979c:
        ldr     r0, [r4, #0x134]
        str     r0, [r4, #0x180]
        add     sp, sp, #0x7c
        mov     r0, #0
        pop     {r4, r5, pc}
        .size   A_559730, . - A_559730

@ FUN_005597b0
        .global A_5597b0
        .type   A_5597b0, %function
A_5597b0:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        mov     r5, r2
        mov     r8, r1
        add     r0, r0, #0x13c
        bl      Fn_637df4
        mov     r7, r0
        add     r0, r4, #0x13c
        bl      Fn_637dbc
        cmn     r7, #1
        mov     r6, r0
        beq     L559834
        cmp     r6, r5
        bhi     L559834
        mov     r2, #0
        mov     r1, r7
        add     r0, r4, #0x11c
        bl      Fn_5567f4
        cmp     r0, #0
        add     r5, r4, #0x100
        beq     L55983c
        mov     r0, #0
        str     r0, [sp]
        mov     r3, sp
        mov     r2, r6
        mov     r1, r8
        add     r0, r4, #0x11c
        bl      Fn_556790
        cmp     r0, #0
        beq     L55983c
        ldr     r0, [sp]
        cmp     r0, r6
        beq     L55984c
L559834:
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L55983c:
        ldr     r0, [r5, #0x34]
        str     r0, [r4, #0x180]
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L55984c:
        mov     r1, r8
        add     r0, r4, #0x13c
        bl      Fn_55c7dc
        mov     r0, #1
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
        .size   A_5597b0, . - A_5597b0

@ FUN_00559868
        .global A_559868
        .type   A_559868, %function
A_559868:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        add     r5, r1, #0x184
        mov     r4, r1
        mov     r0, r5
        bl      Fn_0244c8
        mov     r0, r5
        str     r6, [r4, #0x180]
        pop     {r4, r5, r6, lr}
        b       Fn_024568
        .size   A_559868, . - A_559868

@ FUN_00559890
        .global A_559890
        .type   A_559890, %function
A_559890:
        push    {r4, r5, r6, r7, r8, lr}
        add     r6, r0, #0x100
        mov     r5, r0
        ldrsb   r2, [r6, #0x91]
        sub     sp, sp, #0x100
        mov     r4, r1
        add     r0, r0, #0x11c
        bl      Fn_556630
        cmp     r0, #0
        beq     L559904
        mov     r0, #1
        strb    r0, [r5, #0x190]
        add     r0, sp, #0x1f
        bic     r7, r0, #0x1f
        mov     r8, #0
        mov     r2, #0x40
        add     r3, sp, #0x78
        mov     r1, r7
        add     r0, r5, #0x11c
        str     r8, [sp, #0x78]
        bl      Fn_556790
        cmp     r0, #0
        ldreq   r0, [r6, #0x34]
        streq   r0, [r5, #0x180]
        beq     L559974
        ldr     r0, [sp, #0x78]
        cmp     r0, #0x40
        beq     L559918
        b       L559974
L559904:
        ldr     r0, [r6, #0x34]
        str     r0, [r5, #0x180]
        add     sp, sp, #0x100
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L559918:
        mov     r1, r7
        add     r0, r5, #0x13c
        bl      Fn_55c768
        mov     r0, r5
        add     r1, r5, #0x13c
        bl      Fn_5506f0
        mov     r0, r4
        nop
        bl      Fn_200e60
        subs    r0, r0, #1
        nop
        bmi     L559960
L559948:
        ldrsb   r1, [r4, r0]
        cmp     r1, #0x2f
        cmpne   r1, #0x5c
        beq     L55996c
        subs    r0, r0, #1
        bpl     L559948
L559960:
        add     sp, sp, #0x100
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, pc}
L55996c:
        cmp     r0, #0x100
        blt     L559980
L559974:
        add     sp, sp, #0x100
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L559980:
        mov     r3, #0x100
        mov     r1, sp
        mov     r2, #0
        sub     ip, r3, #1
L559990:
        cmp     ip, r0
        mov     r6, r0
        movls   r6, ip
        cmp     r6, r2
        bls     L5599bc
        ldrb    r6, [r4]
        add     r2, r2, #1
        strb    r6, [r1], #1
        ldrb    r6, [r4, #1]!
        cmp     r6, #0
        bne     L559990
L5599bc:
        strb    r8, [r1]
        strb    r8, [sp, r0]
        mov     r1, sp
        mov     r0, r5
        bl      Fn_550768
        nop
        nop
        b       L559960
        .size   A_559890, . - A_559890

@ FUN_005599dc
        .global A_5599dc
        .type   A_5599dc, %function
A_5599dc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x190]
        cmp     r0, #0
        beq     L559a24
        ldr     r0, [r4, #0x120]
        mov     r5, #0
        bics    r1, r0, #1
        beq     L559a18
        tst     r0, #1
        blne    Fn_024730
        ldr     r0, [r4, #0x120]
        bic     r0, r0, #1
        bl      Fn_4ec684
        str     r5, [r4, #0x120]
L559a18:
        add     r0, r4, #0x13c
        bl      Fn_55c7e8
        strb    r5, [r4, #0x190]
L559a24:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_55093c
        .size   A_5599dc, . - A_5599dc

@ FUN_00559a30
        .global A_559a30
        .type   A_559a30, %function
A_559a30:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        bl      Fn_550954
        ldr     r1, L559ab4
        mov     r6, #0
        ldr     ip, L559ab8
        str     r1, [r0]
        str     r6, [r0, #0x120]
        str     r6, [r0, #0x124]
        str     r6, [r0, #0x128]
        str     r6, [r0, #0x12c]
        str     r6, [r0, #0x130]
        ldr     r1, [ip]
        add     r2, r0, #0x11c
        str     r1, [r0, #0x11c]
        ldr     r3, [ip, #0xc]
        ldr     ip, [r1, #-0x30]
        ldr     r1, L559abc
        str     r3, [r2, ip]
        str     r1, [r0, #0x134]!
        add     r0, r0, #8
        bl      Fn_55c7fc
        sub     r4, r0, #0x13c
        str     r6, [r0, #0x44]
        str     r6, [r0, #0x48]!
        mvn     r1, #0
        str     r1, [r0, #8]
        str     r6, [r0, #4]
        strb    r6, [r4, #0x190]
        strb    r5, [r4, #0x191]
        bl      Fn_01b624
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L559ab4:
        .word   0x0082ce2c
L559ab8:
        .word   0x0082bbe0
L559abc:
        .word   0xe7e3ffff
        .size   A_559a30, . - A_559a30

@ FUN_00559bfc
        .global A_559bfc
        .type   A_559bfc, %function
A_559bfc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x24
        mov     r6, r0
        mov     r5, r1
        mov     sb, r2
        ldr     r4, [sp, #0x4c]
        ldr     r8, [sp, #0x48]
        ldr     r0, [r0, #4]
        mov     r7, r3
        bl      Fn_639548
        tst     r7, #2
        mov     sl, r0
        mov     fp, #0
        beq     L559c54
        mov     r3, r8
        mov     r2, sb
        mov     r1, sl
        mov     r0, r6
        str     fp, [sp]
        bl      Fn_55b404
        cmp     r0, #0
        beq     L559d88
L559c54:
        tst     r7, #8
        beq     L559d84
        ldr     r0, [r6]
        mov     r1, sl
        ldr     r2, [r0, #0x10]
        mov     r0, r6
        blx     r2
        movs    sl, r0
        beq     L559d0c
        strb    fp, [sp, #8]
        str     fp, [sp, #4]
        strb    fp, [sp, #9]
        ldr     r0, [r6, #4]
        mov     r2, sp
        mov     r1, r5
        bl      Fn_636bd4
        cmp     r0, #0
        nop
        beq     L559d88
        ldr     r4, [sp]
        mov     r1, sl
        add     r0, sp, #0x18
        bl      Fn_55ba6c
        mov     r1, #0
        strb    r1, [sp, #8]
        strb    r1, [sp, #9]
        strb    r1, [sp, #0xa]
        mov     r3, r1
        strb    r1, [sp, #0xb]
        strb    r1, [sp, #0xc]
        mov     r2, r4
        mov     r1, sp
        add     r0, sp, #0x18
        bl      Fn_638f1c
        cmp     r0, #0
        nop
        beq     L559d88
        ldm     sp, {r1, r2}
        mov     r3, sb
        mov     r0, r6
        stm     sp, {r7, r8}
        bl      Fn_55a23c
        cmp     r0, #0
        nop
        beq     L559d88
        b       L559d84
L559d0c:
        cmn     r4, #1
        ldr     r0, [r6, #4]
        movne   r1, r4
        moveq   r1, r5
        bl      Fn_639b3c
        mov     r5, r0
        ldr     r0, [r0]
        mov     r4, #0
        cmp     r0, #0
        movhi   sl, #1
        bls     L559d84
L559d38:
        add     r0, r5, r4, lsl #2
        tst     r7, #8
        ldr     r1, [r0, #4]
        beq     L559d74
        ldr     r0, [r6, #4]
        bl      Fn_639548
        mov     r1, r0
        mov     r3, r8
        mov     r2, sb
        mov     r0, r6
        str     sl, [sp]
        bl      Fn_55b404
        cmp     r0, #0
        nop
        beq     L559d88
L559d74:
        ldr     r0, [r5]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L559d38
L559d84:
        mov     r0, #1
L559d88:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_559bfc, . - A_559bfc

@ FUN_00559d90
        .global A_559d90
        .type   A_559d90, %function
A_559d90:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x34
        mov     r8, r0
        mvn     r4, #0
        add     r0, sp, #0xc
        ldr     r5, [sp, #0x58]
        mov     fp, #0
        str     r4, [sp, #8]
        stm     r0, {r4, fp}
        mov     sl, r2
        ldr     r0, [r8, #4]
        mov     r6, r1
        mov     r7, r3
        add     r2, sp, #8
        bl      Fn_636c28
        cmp     r0, #0
        beq     L559ee8
        ldr     r0, [sp, #8]
        cmn     r0, #1
        beq     L559f34
        mov     r1, r0
        ldr     r0, [r8, #4]
        bl      Fn_639468
        cmp     r0, #1
        beq     L559e00
        cmp     r0, #3
        beq     L559ef0
        b       L559f34
L559e00:
        ldr     r0, [sp, #0xc]
        ldr     r6, [sp, #8]
        cmp     r0, r6
        addhs   sb, sp, #0x14
        blo     L559f34
L559e14:
        tst     r7, #1
        beq     L559e4c
        ldr     r0, [r8, #4]
        mov     r1, r6
        bl      Fn_639548
        mov     r1, r0
        mov     r3, r5
        mov     r2, sl
        mov     r0, r8
        str     fp, [sp]
        bl      Fn_55b404
        cmp     r0, #0
        nop
        beq     L559ee4
L559e4c:
        tst     r7, #0xc
        beq     L559ed0
        mvn     r0, #0
        strb    fp, [sp, #0x2c]
        str     fp, [sp, #0x14]
        strb    fp, [sp, #0x2d]
        str     fp, [sp, #0x28]
        str     r0, [sp, #0x18]
        str     r0, [sp, #0x1c]
        str     r0, [sp, #0x20]
        str     r0, [sp, #0x24]
        ldr     r0, [r8, #4]
        add     r2, sp, #0x14
        mov     r1, r6
        bl      Fn_636b80
        cmp     r0, #0
        movne   r4, #0
        beq     L559ee4
L559e94:
        add     r0, sb, r4, lsl #2
        ldr     r1, [r0, #4]
        cmn     r1, #1
        beq     L559ec4
        mov     r3, r7
        mov     r2, sl
        mov     r0, r8
        str     r5, [sp]
        bl      Fn_55aec0
        cmp     r0, #0
        nop
        beq     L559ee4
L559ec4:
        add     r4, r4, #1
        cmp     r4, #4
        blo     L559e94
L559ed0:
        ldr     r0, [sp, #0xc]
        add     r6, r6, #1
        cmp     r6, r0
        bls     L559e14
        b       L559f34
L559ee4:
        mov     r0, #0
L559ee8:
        add     sp, sp, #0x34
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L559ef0:
        ldr     r0, [sp, #0xc]
        ldr     r4, [sp, #8]
        cmp     r0, r4
        blo     L559f34
L559f00:
        mov     r3, r7
        mov     r2, sl
        mov     r1, r4
        mov     r0, r8
        stm     sp, {r5, r6}
        bl      Fn_559bfc
        cmp     r0, #0
        nop
        beq     L559ee8
        ldr     r0, [sp, #0xc]
        add     r4, r4, #1
        cmp     r4, r0
        bls     L559f00
L559f34:
        add     sp, sp, #0x34
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_559d90, . - A_559d90

@ FUN_00559f40
        .global A_559f40
        .type   A_559f40, %function
A_559f40:
        push    {r3, r4, r5, r6, r7, lr}
        tst     r3, #8
        mov     r4, r0
        ldr     r5, [sp, #0x18]
        mov     r6, r2
        beq     L559f84
        ldr     r0, [r4, #4]
        bl      Fn_639548
        mov     r2, #1
        mov     r1, r0
        str     r2, [sp]
        mov     r3, r5
        mov     r2, r6
        mov     r0, r4
        bl      Fn_55b404
        cmp     r0, #0
        beq     L559f88
L559f84:
        mov     r0, #1
L559f88:
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_559f40, . - A_559f40

@ FUN_00559fe4
        .global A_559fe4
        .type   A_559fe4, %function
A_559fe4:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x24
        tst     r3, #1
        mov     r6, r0
        ldr     r5, [sp, #0x40]
        mov     r4, r1
        mov     r8, r2
        mov     r7, r3
        mov     sb, #0
        beq     L55a034
        ldr     r0, [r6, #4]
        bl      Fn_639548
        mov     r1, r0
        mov     r3, r5
        mov     r2, r8
        mov     r0, r6
        str     sb, [sp]
        bl      Fn_55b404
        cmp     r0, #0
        beq     L55a0c0
L55a034:
        tst     r7, #0xc
        beq     L55a0bc
        mvn     r0, #0
        strb    sb, [sp, #0x1c]
        str     sb, [sp, #4]
        strb    sb, [sp, #0x1d]
        str     sb, [sp, #0x18]
        str     r0, [sp, #8]
        str     r0, [sp, #0xc]
        str     r0, [sp, #0x10]
        str     r0, [sp, #0x14]
        ldr     r0, [r6, #4]
        add     r2, sp, #4
        mov     r1, r4
        bl      Fn_636b80
        cmp     r0, #0
        movne   r4, #0
        addne   sb, sp, #4
        beq     L55a0c0
L55a080:
        add     r0, sb, r4, lsl #2
        ldr     r1, [r0, #4]
        cmn     r1, #1
        beq     L55a0b0
        mov     r3, r7
        mov     r2, r8
        mov     r0, r6
        str     r5, [sp]
        bl      Fn_55aec0
        cmp     r0, #0
        nop
        beq     L55a0c0
L55a0b0:
        add     r4, r4, #1
        cmp     r4, #4
        blo     L55a080
L55a0bc:
        mov     r0, #1
L55a0c0:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   A_559fe4, . - A_559fe4

@ FUN_0055ab44
        .global A_55ab44
        .type   A_55ab44, %function
A_55ab44:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x34
        mov     r6, r2
        mov     r5, r0
        mov     r2, #0
        mvn     r0, #0
        strb    r2, [sp, #8]
        str     r0, [sp]
        ldr     r0, [r5, #4]
        mov     r2, sp
        bl      Fn_636ad0
        cmp     r0, #0
        ldrbne  r0, [sp, #8]
        cmpne   r0, #0
        beq     L55ac70
        ldr     r0, [r5]
        ldr     r1, [sp]
        ldr     r2, [r0, #0xc]
        mov     r0, r5
        blx     r2
        mov     r7, r0
        mov     r1, r0
        mov     r2, #0
        add     r0, sp, #0x10
        bl      Fn_55c698
        add     r0, sp, #0x10
        bl      Fn_63938c
        cmp     r0, #0
        bne     L55ac70
        mov     r0, r7
        bl      Fn_637c48
        mov     r4, r0
        ldr     r0, [sp, #4]
        add     r0, r4, r0, lsl #2
        add     r1, r0, #4
        ldr     r0, [r6]
        ldr     r2, [r0, #8]
        mov     r0, r6
        blx     r2
        movs    r6, r0
        beq     L55ac70
        mov     r2, r4
        mov     r1, r7
        bl      Fn_202b20
        ldr     r1, L55ac78
        add     r0, r6, r4
        mov     r2, #1
        ldr     r1, [r1]
        str     r1, [r0]
        mov     r1, r6
        add     r0, sp, #0x20
        bl      Fn_55c698
        add     r0, sp, #0x20
        bl      Fn_55c624
        ldr     r0, [sp, #4]
        mov     r4, #0
        cmp     r0, #0
        bls     L55ac58
L55ac2c:
        mov     r1, r4
        add     r0, sp, #0x10
        bl      Fn_63930c
        mov     r2, r0
        mov     r1, r4
        add     r0, sp, #0x20
        bl      Fn_55c5f0
        ldr     r0, [sp, #4]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L55ac2c
L55ac58:
        ldr     r0, [r5]
        ldr     r1, [sp]
        mov     r2, r6
        ldr     r3, [r0, #8]
        mov     r0, r5
        blx     r3
L55ac70:
        add     sp, sp, #0x34
        pop     {r4, r5, r6, r7, pc}
L55ac78:
        .word   0x007f690c
        .size   A_55ab44, . - A_55ab44

@ FUN_0055ac7c
        .global A_55ac7c
        .type   A_55ac7c, %function
A_55ac7c:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x30
        mov     r5, r0
        mov     r0, #0
        mvn     r7, #0
        strb    r0, [sp, #0x18]
        str     r0, [sp]
        strb    r0, [sp, #0x19]
        mov     r6, r2
        str     r0, [sp, #0x14]
        str     r7, [sp, #4]
        str     r7, [sp, #8]
        str     r7, [sp, #0xc]
        str     r7, [sp, #0x10]
        ldr     r0, [r5, #4]
        mov     r2, sp
        bl      Fn_636b80
        cmp     r0, #0
        movne   r4, #0
        movne   r8, sp
        beq     L55ad60
L55acd0:
        add     r0, r8, r4, lsl #2
        ldr     r1, [r0, #4]
        cmn     r1, #1
        beq     L55ad54
        str     r7, [sp, #0x28]
        ldr     r0, [r5, #4]
        add     r2, sp, #0x28
        bl      Fn_636780
        cmp     r0, #0
        nop
        beq     L55ad54
        ldr     r0, [r5]
        ldr     r1, [sp, #0x28]
        ldr     r2, [r0, #0xc]
        mov     r0, r5
        blx     r2
        movs    r1, r0
        beq     L55ad54
        add     r0, sp, #0x1c
        bl      Fn_559228
        add     r0, sp, #0x1c
        nop
        bl      Fn_637634
        cmp     r0, #0
        ldrne   r1, [r0]
        cmpne   r1, #0
        bls     L55ad54
        adds    r0, r0, #4
        beq     L55ad54
        ldr     r1, [r0]
        mov     r2, r6
        mov     r0, r5
        bl      Fn_55ab44
L55ad54:
        add     r4, r4, #1
        cmp     r4, #4
        blo     L55acd0
L55ad60:
        add     sp, sp, #0x30
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_55ac7c, . - A_55ac7c

@ FUN_0055ad70
        .global A_55ad70
        .type   A_55ad70, %function
A_55ad70:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x48
        mov     r4, r0
        mov     r6, r2
        ldr     r0, [r0, #4]
        mov     r5, r1
        add     r2, sp, #0x28
        bl      Fn_636828
        cmp     r0, #0
        beq     L55ae28
        mov     r0, #0
        strb    r0, [sp, #0x20]
        str     r0, [sp, #0x1c]
        strb    r0, [sp, #0x21]
        ldr     r0, [r4, #4]
        add     r2, sp, #0x18
        mov     r1, r5
        bl      Fn_636bd4
        cmp     r0, #0
        beq     L55ae28
        ldr     r0, [r4]
        ldr     r1, [sp, #0x28]
        ldr     r2, [r0, #0xc]
        mov     r0, r4
        blx     r2
        movs    r1, r0
        beq     L55ae28
        add     r0, sp, #0x40
        bl      Fn_55ba6c
        mov     ip, #0
        strb    ip, [sp, #8]
        strb    ip, [sp, #9]
        strb    ip, [sp, #0xa]
        ldr     r2, [sp, #0x18]
        mov     r3, ip
        mov     r1, sp
        add     r0, sp, #0x40
        strb    ip, [sp, #0xb]
        strb    ip, [sp, #0xc]
        bl      Fn_638f1c
        cmp     r0, #0
        beq     L55ae28
        ldr     r1, [sp]
        mov     r2, r6
        mov     r0, r4
        bl      Fn_55ab44
L55ae28:
        add     sp, sp, #0x48
        pop     {r4, r5, r6, pc}
        .size   A_55ad70, . - A_55ad70

@ FUN_0055ae38
        .global A_55ae38
        .type   A_55ae38, %function
A_55ae38:
        push    {r4, r5, lr}
        sub     sp, sp, #0x14
        mov     r4, r0
        mvn     r0, #0
        mov     r5, r2
        str     r0, [sp, #0xc]
        ldr     r0, [r4, #4]
        add     r2, sp, #0xc
        bl      Fn_636780
        cmp     r0, #0
        beq     L55aeb8
        ldr     r0, [r4]
        ldr     r1, [sp, #0xc]
        ldr     r2, [r0, #0xc]
        mov     r0, r4
        blx     r2
        movs    r1, r0
        beq     L55aeb8
        mov     r0, sp
        bl      Fn_559228
        mov     r0, sp
        bl      Fn_637634
        cmp     r0, #0
        ldrne   r1, [r0]
        cmpne   r1, #0
        bls     L55aeb8
        adds    r0, r0, #4
        beq     L55aeb8
        ldr     r1, [r0]
        mov     r2, r5
        mov     r0, r4
        bl      Fn_55ab44
L55aeb8:
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
        .size   A_55ae38, . - A_55ae38

@ FUN_0055aec0
        .global A_55aec0
        .type   A_55aec0, %function
A_55aec0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x3c
        mov     r6, r0
        mov     r4, r1
        mov     sb, r2
        ldr     r8, [sp, #0x60]
        ldr     r0, [r0, #4]
        mov     r7, r3
        bl      Fn_639548
        tst     r7, #4
        mov     r5, r0
        mov     fp, #0
        beq     L55af14
        mov     r3, r8
        mov     r2, sb
        mov     r1, r5
        mov     r0, r6
        str     fp, [sp]
        bl      Fn_55b404
        cmp     r0, #0
        beq     L55b04c
L55af14:
        tst     r7, #8
        beq     L55b0c0
        ldr     r0, [r6]
        mov     r1, r5
        ldr     r2, [r0, #0x10]
        mov     r0, r6
        blx     r2
        cmp     r0, #0
        mov     sl, #1
        beq     L55b054
        mov     r1, r0
        add     r0, sp, #0x2c
        bl      Fn_559228
        add     r0, sp, #0x2c
        nop
        bl      Fn_637634
        movs    r5, r0
        nop
        beq     L55b048
        ldr     r0, [r5]
        mov     r4, #0
        cmp     r0, #0
        bls     L55b0c0
L55af70:
        ldr     r0, [r5]
        cmp     r0, r4
        bls     L55b048
        add     r0, r5, r4, lsl #3
        adds    r0, r0, #4
        beq     L55b048
        ldrd    sl, fp, [r0]
        mov     r1, #0
        mvn     r0, #0
        strb    r1, [sp, #0x20]
        str     r0, [sp, #0x18]
        ldr     r0, [r6, #4]
        add     r2, sp, #0x18
        mov     r1, sl
        bl      Fn_636ad0
        cmp     r0, #0
        nop
        beq     L55b048
        ldrb    r0, [sp, #0x20]
        cmp     r0, #0
        beq     L55afec
        mov     r3, sb
        mov     r2, fp
        mov     r1, sl
        mov     r0, r6
        str     r8, [sp]
        bl      Fn_55a0c8
        cmp     r0, #0
        nop
        beq     L55b048
        b       L55b034
L55afec:
        mov     r1, sl
        tst     r7, #8
        mov     fp, r6
        mov     sl, r8
        str     sb, [sp, #0x10]
        beq     L55b034
        ldr     r0, [fp, #4]
        bl      Fn_639548
        mov     r2, #1
        mov     r1, r0
        str     r2, [sp]
        ldr     r2, [sp, #0x10]
        mov     r3, sl
        mov     r0, fp
        bl      Fn_55b404
        cmp     r0, #0
        nop
        beq     L55b048
L55b034:
        ldr     r0, [r5]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L55af70
        b       L55b0c0
L55b048:
        mov     r0, #0
L55b04c:
        add     sp, sp, #0x3c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55b054:
        ldr     r0, [r6, #4]
        mov     r1, r4
        bl      Fn_639b3c
        mov     r5, r0
        ldr     r0, [r0]
        mov     r4, #0
        cmp     r0, #0
        bls     L55b0c0
L55b074:
        add     r0, r5, r4, lsl #2
        tst     r7, #8
        ldr     r1, [r0, #4]
        beq     L55b0b0
        ldr     r0, [r6, #4]
        bl      Fn_639548
        mov     r1, r0
        mov     r3, r8
        mov     r2, sb
        mov     r0, r6
        str     sl, [sp]
        bl      Fn_55b404
        cmp     r0, #0
        nop
        beq     L55b04c
L55b0b0:
        ldr     r0, [r5]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L55b074
L55b0c0:
        add     sp, sp, #0x3c
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_55aec0, . - A_55aec0

@ FUN_0055b0cc
        .global A_55b0cc
        .type   A_55b0cc, %function
A_55b0cc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r2
        vpush   {d8}
        sub     sp, sp, #8
        ldr     r0, [r0, #4]
        mov     r6, r3
        vldr    s16, [sp, #0x20]
        bl      Fn_636d24
        mov     r1, r0
        vstr    s16, [sp]
        mov     r3, r6
        mov     r2, r5
        mov     r0, r4
        bl      Fn_55b114
        add     sp, sp, #8
        vpop    {d8}
        pop     {r4, r5, r6, pc}
        .size   A_55b0cc, . - A_55b0cc

@ FUN_0055b320
        .global A_55b320
        .type   A_55b320, %function
A_55b320:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x18
        mov     r8, r0
        mov     r5, r2
        mvn     r0, #0
        add     r2, sp, #0xc
        ldr     r6, [sp, #0x38]
        mov     r7, #0
        str     r0, [sp, #8]
        stm     r2, {r0, r7}
        mov     sl, r1
        ldr     r0, [r8, #4]
        mov     sb, r3
        add     r2, sp, #8
        bl      Fn_636b24
        cmp     r0, #0
        beq     L55b3e4
        ldr     r4, [sp, #8]
        cmp     r4, #0
        cmnne   r4, #1
        beq     L55b3e0
        ldr     r0, [r5]
        mov     r1, r4
        ldr     r2, [r0, #8]
        mov     r0, r5
        blx     r2
        movs    r5, r0
        beq     L55b3e0
        cmp     r6, #0
        beq     L55b3bc
        bl      Fn_00545c
        mov     r6, r0
        bl      Fn_00536c
        cmp     r6, r5
        add     r1, r0, r6
        bhi     L55b3e0
        add     r0, r5, r4
        cmp     r0, r1
        bhi     L55b3e0
L55b3bc:
        mov     r3, r4
        mov     r2, r5
        mov     r1, sl
        mov     r0, r8
        stm     sp, {r7, sb}
        bl      Fn_55b52c
        cmp     r0, r4
        nop
        beq     L55b3ec
L55b3e0:
        mov     r0, #0
L55b3e4:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L55b3ec:
        mov     r1, r4
        mov     r0, r5
        bl      Fn_500960
        add     sp, sp, #0x18
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_55b320, . - A_55b320

@ FUN_0055b728
        .global A_55b728
        .type   A_55b728, %function
A_55b728:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r5, r2
        ldr     r0, [r0, #4]
        mov     r6, r3
        bl      Fn_639548
        mov     r2, #1
        mov     r1, r0
        str     r2, [sp]
        mov     r3, r6
        mov     r2, r5
        mov     r0, r4
        bl      Fn_55b404
        movs    r1, r0
        beq     L55b77c
        add     sp, sp, #4
        mov     r3, r6
        mov     r2, r5
        mov     r0, r4
        pop     {r4, r5, r6, r7, lr}
        b       Fn_55a484
L55b77c:
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_55b728, . - A_55b728

@ FUN_0055b8fc
        .global A_55b8fc
        .type   A_55b8fc, %function
A_55b8fc:
        push    {r4, lr}
        mov     r4, r0
        str     r1, [r0, #0xc]
L55b908:
        ldr     r0, [r4]
        ldr     r1, [r4, #0xc]
        cmp     r0, r1
        ble     L55b968
        ldr     r0, [r4, #4]
        mov     r3, #0x80
        mov     r2, #0
L55b924:
        add     r1, r4, #4
        cmp     r0, r1
        beq     L55b954
        ldrb    ip, [r0, #-0x60]
        ldr     r1, [r0, #-0xac]
        add     r1, r1, ip
        usat    r1, #7, r1
        cmp     r3, r1
        subgt   r2, r0, #0xfc
        ldr     r0, [r0]
        movgt   r3, r1
        b       L55b924
L55b954:
        ldr     r1, [r2]
        mov     r0, r2
        ldr     r1, [r1, #0x10]
        blx     r1
        b       L55b908
L55b968:
        pop     {r4, pc}
        .size   A_55b8fc, . - A_55b8fc

@ FUN_0055bad0
        .global A_55bad0
        .type   A_55bad0, %function
A_55bad0:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4, #0x16c]
        str     r0, [r4, #0x170]
        str     r0, [r4, #0x174]
        str     r0, [r4, #0x184]
        str     r0, [r4, #0x188]
        strb    r0, [r4, #0x18c]
        add     r0, r4, #0x17c
        lsr     r2, r2, #2
        stm     r0, {r1, r2}
        mov     r2, #0x20
        add     r1, r4, #0x34
        mov     r0, r4
        bl      Fn_684ac4
        mov     r2, #0x21
        add     r1, r4, #0xe8
        add     r0, r4, #0xb4
        bl      Fn_684ac4
        mov     r0, #1
        strb    r0, [r4, #0x18d]
        pop     {r4, pc}
        .size   A_55bad0, . - A_55bad0

@ FUN_0055be38
        .global A_55be38
        .type   A_55be38, %function
A_55be38:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
L55be44:
        mov     r1, sp
        mov     r0, r4
        bl      Fn_684b84
        cmp     r0, #0
        nop
        beq     L55be80
        ldr     r0, [sp]
        bl      Fn_557e80
        mcr     p15, #0, r5, c7, c10, #5
        ldr     r1, [sp]
        add     r0, r4, #0xb4
        bl      Fn_684e4c
        nop
        nop
        b       L55be44
L55be80:
        pop     {r3, r4, r5, pc}
        .size   A_55be38, . - A_55be38

@ FUN_0055bf1c
        .global A_55bf1c
        .type   A_55bf1c, %function
A_55bf1c:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
L55bf28:
        mov     r1, sp
        add     r0, r4, #0xb4
        bl      Fn_684b84
        cmp     r0, #0
        nop
        beq     L55bf84
        ldr     r0, [sp]
        cmp     r0, #0
        ldr     r1, [r0, #8]
        str     r1, [r4, #0x178]
        beq     L55bf28
L55bf54:
        ldr     r1, [r0]
        cmp     r1, #0
        movne   r0, r1
        bne     L55bf54
        ldr     r0, [r0, #0xc]
        str     r0, [r4, #0x188]
        strb    r5, [r4, #0x18c]
        ldr     r1, [r4, #0x184]
        cmp     r1, r0
        streq   r5, [r4, #0x188]
        streq   r5, [r4, #0x184]
        b       L55bf28
L55bf84:
        pop     {r3, r4, r5, pc}
        .size   A_55bf1c, . - A_55bf1c

@ FUN_0055bf88
        .global A_55bf88
        .type   A_55bf88, %function
A_55bf88:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r6, r1
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #7
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        str     r1, [r0, #0xc]
        mov     r1, #0x36
        strb    r1, [r0, #4]
        strb    r5, [r0, #0x10]
        mov     r1, r0
        str     r6, [r0, #0x18]
        mov     r0, r4
        bl      Fn_55bd58
        mov     r1, #1
        mov     r0, r4
        bl      Fn_55bd7c
        mov     r1, r0
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_55bf88, . - A_55bf88

@ FUN_0055c1e8
        .global A_55c1e8
        .type   A_55c1e8, %function
A_55c1e8:
        ldr     r1, L55c224
        push    {r4, lr}
        mov     r4, #0
        stm     r0, {r1, r4}
        str     r4, [r0, #8]!
        add     r0, r0, #4
        bl      Fn_55b780
        ldr     r2, L55c228
        mov     r1, #1
        add     r3, r2, #0x20
        str     r3, [r0], #-0xc
        str     r2, [r0]
        strb    r4, [r0, #0x260]
        strb    r1, [r0, #0x261]
        pop     {r4, pc}
L55c224:
        .word   0x0082cf1c
L55c228:
        .word   0x0082ce90
        .size   A_55c1e8, . - A_55c1e8

@ FUN_0055c93c
        .global A_55c93c
        .type   A_55c93c, %function
A_55c93c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L55c980
        mov     r5, #0
        mov     r1, #1
        stm     r4, {r0, r5}
        add     r0, r4, #0xc
        str     r5, [r4, #8]
        str     r5, [r4, #0xc]
        str     r5, [r4, #0x10]
        bl      Fn_01b240
        strb    r5, [r4, #0x14]
        add     r0, r4, #0xc
        str     r5, [r4, #0x18]
        bl      Fn_01b404
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L55c980:
        .word   0x0082cecc
        .size   A_55c93c, . - A_55c93c

@ FUN_0055c9a8
        .global A_55c9a8
        .type   A_55c9a8, %function
A_55c9a8:
        ldr     r1, L55c9c8
        ldr     r3, L55c9cc
        ldr     r2, L55c9d0
        ldr     r0, [r1]
        mla     r2, r0, r3, r2
        str     r2, [r1]
        lsr     r0, r2, #0x10
        bx      lr
L55c9c8:
        .word   0x008bb730
L55c9cc:
        .word   0x0019660d
L55c9d0:
        .word   0x3c6ef35f
        .size   A_55c9a8, . - A_55c9a8

@ FUN_0055c9d4
        .global A_55c9d4
        .type   A_55c9d4, %function
A_55c9d4:
        vldr    s1, L55ca54
        vldr    s2, L55ca58
        ldr     r1, L55ca50
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s1
        bgt     L55ca14
        vmov.f32 s1, s0
        vcmpe.f32 s1, s2
        vmrs    apsr_nzcv, fpscr
        blo     L55ca0c
        vmov    r0, s0
        cmp     r0, r1
        bge     L55ca14
L55ca0c:
        mov     r0, #0x50
L55ca10:
        bx      lr
L55ca14:
        ldr     r1, L55ca5c
        vmov    r0, s0
        cmp     r1, r0
        movle   r0, #0x3e80
        ble     L55ca10
        ldr     r1, L55ca68
        vldr    s1, L55ca60
        vldr    s2, L55ca64
        vsub.f32 s0, s0, s1
        vmul.f32 s0, s0, s2
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        add     r0, r1, r0, lsl #1
        ldrh    r0, [r0]
        bx      lr
L55ca50:
        .word   0x3e0ade7f
L55ca54:
        .word   0x3f800000
L55ca58:
        .word   0x00000000
L55ca5c:
        .word   0x3f666666
L55ca60:
        .word   0x3e0ade7f
L55ca64:
        .word   0x41efffff
L55ca68:
        .word   0x007f3d80
        .size   A_55c9d4, . - A_55c9d4

@ FUN_0055ca6c
        .global A_55ca6c
        .type   A_55ca6c, %function
A_55ca6c:
        vldr    s1, L55cb50
        vldr    s2, L55cb54
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s1
        bgt     L55ca90
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s2
L55ca90:
        vldr    s3, L55cb58
        ldrb    r1, [r0, #3]
        cmp     r1, #0
        vadd.f32 s0, s0, s1
        ldrb    r1, [r0]
        vmul.f32 s0, s0, s3
        bne     L55cac0
        ldr     r2, L55cb5c
        ldrb    r2, [r2, #1]
        cmp     r2, #2
        ldreq   r2, L55cb60
        beq     L55cac4
L55cac0:
        ldr     r2, L55cb64
L55cac4:
        vldr    s4, L55cb68
        vldr    s2, L55cb6c
        vmla.f32 s3, s0, s4
        ldr     r1, [r2, r1, lsl #2]
        ldrb    r2, [r0, #1]
        cmp     r2, #0
        vcvt.s32.f32 s0, s3
        vmov    r2, s0
        add     r2, r1, r2, lsl #2
        vldr    s0, [r2]
        beq     L55cafc
        vldr    s4, [r1, #0x200]
        vdiv.f32 s3, s0, s4
        vmov.f32 s0, s3
L55cafc:
        ldrb    r0, [r0, #2]
        cmp     r0, #0
        beq     L55cb24
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        bgt     L55cb34
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        bhs     L55cb38
        b       L55cb48
L55cb24:
        vldr    s1, L55cb70
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        ble     L55cb3c
L55cb34:
        vmov.f32 s0, s1
L55cb38:
        bx      lr
L55cb3c:
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        bhs     L55cb38
L55cb48:
        vmov.f32 s0, s2
        bx      lr
L55cb50:
        .word   0x3f800000
L55cb54:
        .word   0xbf800000
L55cb58:
        .word   0x3f000000
L55cb5c:
        .word   0x009dfe08
L55cb60:
        .word   0x008bb740
L55cb64:
        .word   0x008bb734
L55cb68:
        .word   0x43800000
L55cb6c:
        .word   0x00000000
L55cb70:
        .word   0x40000000
        .size   A_55ca6c, . - A_55ca6c

@ FUN_0055cb74
        .global A_55cb74
        .type   A_55cb74, %function
A_55cb74:
        ldr     r3, L55cc84
        ldr     r2, L55cc88
        mov     r1, #0
        sub     r3, r3, r0
        cmp     r3, #0xc00
        blt     L55cba4
        smull   r3, r1, r2, r3
        asr     r3, r1, #9
        sub     r1, r3, r1, asr #31
        add     r3, r1, r1, lsl #1
        rsb     r1, r1, #0
        add     r0, r0, r3, lsl #10
L55cba4:
        rsb     r3, r0, #0
        smull   ip, r3, r2, r3
        asr     ip, r3, #9
        sub     r3, ip, r3, asr #31
        rsb     r3, r3, #0
        cmp     r3, #0
        ble     L55cbd8
        smull   r3, r2, r2, r0
        asr     r3, r2, #9
        sub     r2, r3, r2, asr #31
        add     r1, r1, r2
        sub     r3, r2, r2, lsl #2
        add     r0, r0, r3, lsl #10
L55cbd8:
        vldr    s0, L55cc8c
        asr     r2, r0, #0x1f
        cmp     r1, #0
        add     r2, r0, r2, lsr #24
        asr     r2, r2, #8
        rsb     r3, r2, #0
        add     r3, r0, r3, lsl #8
        ble     L55cc20
        tst     r1, #1
        vldr    s1, L55cc90
        vmovne.f32 s0, s1
        asrs    r0, r1, #1
        beq     L55cc1c
L55cc0c:
        subs    r0, r0, #1
        vmul.f32 s0, s0, s1
        vmul.f32 s0, s0, s1
        bne     L55cc0c
L55cc1c:
        sub     r1, r1, r1
L55cc20:
        rsb     r0, r1, #0
        vldr    s1, L55cc94
        cmp     r0, #0
        ble     L55cc50
        tst     r1, #1
        vmulne.f32 s0, s0, s1
        asrs    r0, r0, #1
        beq     L55cc50
L55cc40:
        subs    r0, r0, #1
        vmul.f32 s0, s0, s1
        vmul.f32 s0, s0, s1
        bne     L55cc40
L55cc50:
        cmp     r2, #0
        beq     L55cc68
        ldr     r0, L55cc98
        add     r0, r0, r2, lsl #2
        vldr    s1, [r0]
        vmul.f32 s0, s1, s0
L55cc68:
        cmp     r3, #0
        beq     L55cc80
        ldr     r0, L55cc9c
        add     r0, r0, r3, lsl #2
        vldr    s1, [r0]
        vmul.f32 s0, s1, s0
L55cc80:
        bx      lr
L55cc84:
        .word   0x00000bff
L55cc88:
        .word   0x2aaaaaab
L55cc8c:
        .word   0x3f800000
L55cc90:
        .word   0x40000000
L55cc94:
        .word   0x3f000000
L55cc98:
        .word   0x007f3db0
L55cc9c:
        .word   0x007f3de0
        .size   A_55cb74, . - A_55cb74

@ FUN_0055cca0
        .global A_55cca0
        .type   A_55cca0, %function
A_55cca0:
        vldr    s2, L55cce8
        vldr    s1, L55ccec
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s2
        bgt     L55ccc4
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L55ccc4:
        vldr    s1, L55ccf0
        ldr     r1, L55ccf4
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        add     r0, r0, #0x388
        add     r0, r1, r0, lsl #2
        vldr    s0, [r0]
        bx      lr
L55cce8:
        .word   0x40c00000
L55ccec:
        .word   0xc2b4cccd
L55ccf0:
        .word   0x41200000
L55ccf4:
        .word   0x007f41e0
        .size   A_55cca0, . - A_55cca0

@ FUN_0055cd68
        .global A_55cd68
        .type   A_55cd68, %function
A_55cd68:
        vldr    s2, L55cddc
        vldr    s1, L55cde0
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s2
        bgt     L55cd90
        vmov.f32 s3, s1
        vcmpe.f32 s0, s3
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L55cd90:
        vldr    s3, L55cde4
        vldr    s4, L55cde8
        ldrb    r0, [r0]
        ldr     r1, L55cdec
        vmul.f32 s0, s0, s3
        ldr     r0, [r1, r0, lsl #2]
        vmla.f32 s3, s0, s4
        vcvt.s32.f32 s0, s3
        vmov    r1, s0
        add     r0, r0, r1, lsl #2
        vldr    s0, [r0]
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s2
        bgt     L55cdd8
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L55cdd8:
        bx      lr
L55cddc:
        .word   0x40000000
L55cde0:
        .word   0x00000000
L55cde4:
        .word   0x3f000000
L55cde8:
        .word   0x43800000
L55cdec:
        .word   0x008bb734
        .size   A_55cd68, . - A_55cd68

@ FUN_0055cfbc
        .global A_55cfbc
        .type   A_55cfbc, %function
A_55cfbc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        ldr     r3, L55d124
        sub     sp, sp, #0x13c
        str     r3, [sp, #0x134]
        svc     #0x28
        ldr     r3, [sp, #0x134]
        ldrd    r2, r3, [r3, #0xa0]
        subs    r2, r0, r2
        sbc     ip, r1, r3
        ldr     r3, [sp, #0x134]
        ldr     lr, [r3, #0xa8]
        add     r3, r3, lr, lsl #3
        stm     r3, {r2, ip}
        ldr     r3, [sp, #0x134]
        strd    r0, r1, [r3, #0xa0]
        ldr     r3, [sp, #0x134]
        ldr     r0, [r3, #0xa8]
        add     r0, r0, #1
        cmp     r0, #0x14
        str     r0, [r3, #0xa8]
        bne     L55d11c
        ldr     r5, L55d128
        mov     r0, #0
        mov     r4, r0
        strb    r0, [sp, #8]
L55d020:
        ldr     r0, [sp, #0x134]
        ldr     r1, L55d12c
        mov     r3, #3
        ldr     r2, [r0, r4, lsl #3]!
        ldr     r0, [r0, #4]
        mov     lr, #0
        umull   sb, ip, r2, r1
        umull   sb, sl, r0, r3
        adds    ip, ip, lr
        adc     r6, sb, lr
        umull   r7, sb, r0, r1
        asr     r8, r0, #0x1f
        mov     sl, #0
        mla     r1, r8, r1, sb
        ldr     sb, L55d130
        mla     r1, r0, lr, r1
        umlal   r7, r1, r3, r2
        mov     r3, lr
        adds    r0, r7, ip
        adc     r1, r1, r6
        umull   r8, r7, r0, r5
        umull   r8, fp, r1, r5
        mov     ip, lr
        asr     r2, r1, #0x1f
        mla     r7, r3, r5, r7
        mla     fp, r2, r5, fp
        mla     r7, r0, ip, r7
        mla     fp, r1, ip, fp
        adds    ip, r8, r7
        umull   r7, r8, r0, sb
        adc     r6, fp, sl
        mla     r3, r3, sb, r8
        adds    ip, ip, r7
        mla     r0, r0, sl, r3
        umull   r3, r8, r1, sb
        mov     lr, sl
        mla     r2, r2, sb, r8
        adc     r0, r0, lr
        mla     r8, r1, sl, r2
        asr     ip, r0, #0x1f
        adds    r0, r0, r6
        adc     r2, ip, r6, asr #31
        adds    r0, r0, r3
        adc     r2, r2, r8
        lsr     r3, r1, #0x1f
        lsr     lr, r0, #0x12
        asr     r1, r2, #0x12
        orr     r0, lr, r2, lsl #14
        adds    r2, r3, r0
        adc     r0, r1, #0
        add     r3, sp, #8
        str     r0, [sp, #4]
        str     r2, [sp]
        add     r2, pc, #0x38
        mov     r1, #0x12c
        mov     r0, r3
        blx     Fn_000200_t
        add     r4, r4, #1
        cmp     r4, #0x14
        blt     L55d020
        ldr     r1, [sp, #0x134]
        mov     r0, #0
        str     r0, [r1, #0xa8]
L55d11c:
        add     sp, sp, #0x13c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L55d124:
        .word   0x009e0860
L55d128:
        .word   0xd7b634db
L55d12c:
        .word   0xbad34aee
L55d130:
        .word   0x431bde82
        .size   A_55cfbc, . - A_55cfbc

@ FUN_0055d2c4
        .global A_55d2c4
        .type   A_55d2c4, %function
A_55d2c4:
        vldr    s1, L55d300
        vldr    s2, L55d304
        vadd.f32 s1, s0, s1
        vcmpe.f32 s1, s2
        vmrs    apsr_nzcv, fpscr
        vldr    s0, [r0, #0x44]
        vmovlo.f32 s1, s2
        vcmp.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        beq     L55d2fc
        ldrh    r1, [r0, #0x20]
        vstr    s1, [r0, #0x44]
        orr     r1, r1, #8
        strh    r1, [r0, #0x20]
L55d2fc:
        bx      lr
L55d300:
        .word   0x3f800000
L55d304:
        .word   0x00000000
        .size   A_55d2c4, . - A_55d2c4

@ FUN_0055d380
        .global A_55d380
        .type   A_55d380, %function
A_55d380:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r2
        vldr    s0, L55d680
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #8
        vldr    s16, L55d684
        vldr    s1, [r0, #0x44]
        vmov.f32 s20, s16
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s20, s0
        bgt     L55d3c0
        vcmpe.f32 s1, s20
        vmrs    apsr_nzcv, fpscr
        vmovhs.f32 s20, s1
L55d3c0:
        vldr    s21, [r4, #0x48]
        vmov    r0, s21
        cmp     r0, #0x3f800000
        vmovgt.f32 s21, s0
        bgt     L55d3e0
        vcmpe.f32 s21, s16
        vmrs    apsr_nzcv, fpscr
        vmovle.f32 s21, s16
L55d3e0:
        vldr    s22, [r4, #0x4c]
        vmov    r0, s22
        cmp     r0, #0x3f800000
        vmovgt.f32 s22, s0
        bgt     L55d400
        vcmpe.f32 s22, s16
        vmrs    apsr_nzcv, fpscr
        vmovle.f32 s22, s16
L55d400:
        mov     r0, #0
        strb    r0, [sp]
        strb    r0, [sp, #1]
        strb    r0, [sp, #2]
        vmov.f32 s19, s16
        vmov.f32 s18, s16
        vmov.f32 s17, s16
        strb    r0, [sp, #3]
        ldrb    r2, [r4, #0x2d]
        mov     r3, #2
        mov     r0, #1
        cmp     r2, #9
        ldrlo   pc, [pc, r2, lsl #2]
        b       L55d4a8
L55d438:
        .word   0x0065d4a8
L55d43c:
        .word   0x0065d494
L55d440:
        .word   0x0065d45c
L55d444:
        .word   0x0065d468
L55d448:
        .word   0x0065d470
L55d44c:
        .word   0x0065d478
L55d450:
        .word   0x0065d488
L55d454:
        .word   0x0065d490
L55d458:
        .word   0x0065d49c
        strb    r0, [sp, #1]
        strb    r0, [sp, #2]
        b       L55d4a8
        strb    r0, [sp]
        b       L55d4a8
        strb    r0, [sp]
        b       L55d494
        strb    r0, [sp]
        strb    r0, [sp, #1]
        strb    r0, [sp, #2]
        b       L55d4a8
        strb    r3, [sp]
        b       L55d4a8
        strb    r3, [sp]
L55d494:
        strb    r0, [sp, #1]
        b       L55d4a8
        strb    r3, [sp]
        strb    r0, [sp, #1]
        strb    r0, [sp, #2]
L55d4a8:
        ldrb    r0, [r4, #0x23]
        ldr     r7, L55d688
        strb    r0, [sp, #3]
        ldr     r0, L55d68c
        ldrb    r6, [r0, #1]
        cmp     r6, #0
        beq     L55d4d4
        cmp     r6, #1
        cmpne   r6, #2
        beq     L55d4ec
        b       L55d59c
L55d4d4:
        mov     r0, sp
        vldr    s0, [r7]
        bl      Fn_55ca6c
        vmov.f32 s16, s0
        vmov.f32 s17, s0
        b       L55d5b0
L55d4ec:
        ldr     r0, [r4, #8]
        cmp     r0, #1
        ble     L55d504
        ldrb    r2, [r4, #0x2c]
        cmp     r2, #1
        beq     L55d514
L55d504:
        vldr    s16, [r4, #0x30]
        cmp     r0, #2
        bne     L55d574
        b       L55d560
L55d514:
        cmp     r1, #0
        mov     r0, sp
        beq     L55d52c
        cmp     r1, #1
        bne     L55d59c
        b       L55d540
L55d52c:
        vldr    s0, [r4, #0x30]
        bl      Fn_55ca6c
        vmov.f32 s17, s0
        nop
        b       L55d59c
L55d540:
        vldr    s0, [r4, #0x30]
        vldr    s1, [r7]
        vmov.f32 s17, s16
        vsub.f32 s0, s1, s0
        bl      Fn_55ca6c
        vmov.f32 s16, s0
        nop
        b       L55d59c
L55d560:
        cmp     r1, #0
        vsubeq.f32 s16, s16, s0
        beq     L55d574
        cmp     r1, #1
        vaddeq.f32 s16, s16, s0
L55d574:
        mov     r8, sp
        mov     r0, r8
        vmov.f32 s0, s16
        bl      Fn_55ca6c
        vmov.f32 s17, s0
        vldr    s0, [r7]
        mov     r0, r8
        vsub.f32 s0, s0, s16
        bl      Fn_55ca6c
        vmov.f32 s16, s0
L55d59c:
        cmp     r6, #1
        beq     L55d5b0
        cmp     r6, #2
        bne     L55d608
        b       L55d5dc
L55d5b0:
        mov     r4, sp
        mov     r0, r4
        vldr    s0, [r7, #4]
        bl      Fn_55cd68
        vmov.f32 s18, s0
        mov     r0, r4
        vldr    s0, [r7, #8]
        bl      Fn_55cd68
        vmov.f32 s19, s0
        nop
        b       L55d608
L55d5dc:
        mov     r6, sp
        vldr    s0, [r4, #0x34]
        mov     r0, r6
        bl      Fn_55cd68
        vmov.f32 s18, s0
        vldr    s0, [r4, #0x34]
        vldr    s1, [r7, #8]
        mov     r0, r6
        vsub.f32 s0, s1, s0
        bl      Fn_55cd68
        vmov.f32 s19, s0
L55d608:
        vmul.f32 s1, s18, s17
        vmul.f32 s2, s18, s16
        add     r0, r5, #0x20
        vmul.f32 s0, s19, s16
        vmul.f32 s3, s19, s17
        vmul.f32 s4, s1, s20
        vmul.f32 s5, s21, s1
        vmul.f32 s6, s2, s20
        vmul.f32 s7, s21, s2
        vmul.f32 s1, s22, s1
        vmul.f32 s9, s0, s20
        vmul.f32 s11, s21, s0
        vmul.f32 s0, s22, s0
        vmul.f32 s8, s3, s20
        vmul.f32 s10, s21, s3
        vmul.f32 s3, s22, s3
        vmul.f32 s2, s22, s2
        vstr    s4, [r5]
        vstr    s5, [r5, #0x10]
        vstr    s6, [r5, #4]
        vstr    s7, [r5, #0x14]
        vstr    s0, [r5, #0x2c]
        vstmia  r0, {s1, s2, s3}
        add     r0, r5, #8
        add     r5, r5, #0x18
        vstmia  r0, {s8, s9}
        vstmia  r5, {s10, s11}
        add     sp, sp, #8
        vpop    {d8, d9, d10, d11}
        pop     {r4, r5, r6, r7, r8, pc}
L55d680:
        .word   0x3f800000
L55d684:
        .word   0x00000000
L55d688:
        .word   0x007ffe84
L55d68c:
        .word   0x009dfe08
        .size   A_55d380, . - A_55d380

@ FUN_0055d690
        .global A_55d690
        .type   A_55d690, %function
A_55d690:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x14]
        cmp     r0, #0
        ldrbne  r0, [r4, #0x16]
        cmpne   r0, #0
        beq     L55d6f8
        ldr     r0, [r4]
        cmp     r0, #0
        ldrne   r0, [r4, #0x1c]
        cmpne   r0, #0
        beq     L55d6f8
        ldrb    r0, [r0, #0x11]
        cmp     r0, #1
        cmpne   r0, #2
        beq     L55d6f8
        ldr     r3, [r4, #0xc]
        cmp     r3, #0
        beq     L55d6ec
        ldr     r2, [r4, #0x10]
        mov     r1, #0
        mov     r0, r4
        blx     r3
L55d6ec:
        mov     r0, #0
        strb    r0, [r4, #0x16]
        strb    r0, [r4, #0x15]
L55d6f8:
        pop     {r4, pc}
        .size   A_55d690, . - A_55d690

@ FUN_0055d770
        .global A_55d770
        .type   A_55d770, %function
A_55d770:
        vldr    s2, L55d7d0
        vldr    s1, L55d7d4
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s2
        bgt     L55d794
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L55d794:
        ldrb    r3, [r0, #0x22]
        mov     r2, #0
        cmp     r3, r1
        strbne  r1, [r0, #0x22]
        vldr    s1, [r0, #0x3c]
        movne   r2, #1
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vstrne  s0, [r0, #0x3c]
        cmpeq   r2, #0
        beq     L55d7cc
        ldrh    r1, [r0, #0x20]
        orr     r1, r1, #0x20
        strh    r1, [r0, #0x20]
L55d7cc:
        bx      lr
L55d7d0:
        .word   0x3f800000
L55d7d4:
        .word   0x00000000
        .size   A_55d770, . - A_55d770

@ FUN_0055da78
        .global A_55da78
        .type   A_55da78, %function
A_55da78:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        vpush   {d8}
        sub     sp, sp, #0x10
        ldrb    r0, [r0, #0x15]
        cmp     r0, #0
        beq     L55dca8
        ldrh    r0, [r5, #0x20]
        tst     r0, #4
        beq     L55daf0
        vldr    s16, [r5, #0x28]
        ldr     r1, L55dcb4
        vmov    r0, s16
        mov     r4, #0
        cmp     r0, r1
        ldr     r0, [r5, #8]
        vldrgt  s16, L55dcb8
        cmp     r0, #0
        ble     L55dae4
L55dac4:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        vmovne.f32 s0, s16
        blne    Fn_5146d0
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55dac4
L55dae4:
        ldrh    r0, [r5, #0x20]
        bic     r0, r0, #4
        strh    r0, [r5, #0x20]
L55daf0:
        ldrh    r0, [r5, #0x20]
        tst     r0, #0x40
        beq     L55db48
        ldr     r0, L55dcbc
        vldr    s16, [r5, #0x24]
        bl      Fn_639de4
        vmul.f32 s16, s0, s16
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55db3c
L55db1c:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        vmovne.f32 s0, s16
        blne    Fn_51780c
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55db1c
L55db3c:
        ldrh    r0, [r5, #0x20]
        bic     r0, r0, #0x40
        strh    r0, [r5, #0x20]
L55db48:
        ldrh    r0, [r5, #0x20]
        tst     r0, #8
        beq     L55db68
        mov     r0, r5
        bl      Fn_55e174
        ldrh    r0, [r5, #0x20]
        bic     r0, r0, #8
        strh    r0, [r5, #0x20]
L55db68:
        ldrh    r0, [r5, #0x20]
        tst     r0, #0x10
        beq     L55dbf0
        vldr    s0, [r5, #0x38]
        bl      Fn_55c9d4
        mov     r7, r0
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55dbe4
L55db90:
        ldr     r6, [r5, r4, lsl #2]
        cmp     r6, #0
        beq     L55dbd4
        cmp     r7, #0x3e80
        blo     L55dbbc
        mov     r1, #0
        mov     r0, r6
        bl      Fn_517188
        nop
        nop
        b       L55dbd4
L55dbbc:
        mov     r1, #1
        mov     r0, r6
        bl      Fn_517188
        mov     r1, r7
        mov     r0, r6
        bl      Fn_514644
L55dbd4:
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55db90
L55dbe4:
        ldrh    r0, [r5, #0x20]
        bic     r0, r0, #0x10
        strh    r0, [r5, #0x20]
L55dbf0:
        ldrh    r0, [r5, #0x20]
        tst     r0, #0x20
        beq     L55dca8
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ldrgt   r8, L55dcbc
        vldrgt  s16, L55dcc0
        ble     L55dc9c
L55dc14:
        ldr     r6, [r5, r4, lsl #2]
        cmp     r6, #0
        beq     L55dc8c
        ldrb    r0, [r5, #0x22]
        add     r0, r8, r0, lsl #2
        ldr     r7, [r0, #0x74]
        cmp     r7, #0
        vldrne  s0, [r5, #0x3c]
        vcmpene.f32 s0, s16
        vmrsne  apsr_nzcv, fpscr
        bhi     L55dc58
        mov     r1, #0
        mov     r0, r6
        bl      Fn_514624
        nop
        nop
        b       L55dc8c
L55dc58:
        mov     r1, #1
        mov     r0, r6
        bl      Fn_514624
        ldr     r0, [r7]
        ldrb    r1, [r5, #0x22]
        vldr    s0, [r5, #0x3c]
        mov     r2, sp
        ldr     r3, [r0, #8]
        mov     r0, r7
        blx     r3
        mov     r1, sp
        mov     r0, r6
        bl      Fn_5176d4
L55dc8c:
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55dc14
L55dc9c:
        ldrh    r0, [r5, #0x20]
        bic     r0, r0, #0x20
        strh    r0, [r5, #0x20]
L55dca8:
        add     sp, sp, #0x10
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L55dcb4:
        .word   0x437f0000
L55dcb8:
        .word   0x437f0000
L55dcbc:
        .word   0x009dfe08
L55dcc0:
        .word   0x00000000
        .size   A_55da78, . - A_55da78

@ FUN_0055df84
        .global A_55df84
        .type   A_55df84, %function
A_55df84:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        vpush   {d8}
        ldrb    r0, [r0, #0x14]
        cmp     r0, #0
        beq     L55e0f0
        ldrh    r1, [r5, #0x20]
        mov     r6, #1
        mov     r0, #0
        tst     r1, #1
        ldrbne  r1, [r5, #0x15]
        cmpne   r1, #0
        ldrb    r1, [r5, #0x16]
        beq     L55e068
        cmp     r1, #0
        bne     L55e070
        vldr    s16, [r5, #0x28]
        ldr     r1, L55e168
        vmov    r0, s16
        mov     r4, #0
        cmp     r0, r1
        ldr     r0, [r5, #8]
        vldrgt  s16, L55e16c
        cmp     r0, #0
        ble     L55e008
L55dfe8:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        vmovne.f32 s0, s16
        blne    Fn_5146d0
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55dfe8
L55e008:
        mov     r0, r5
        bl      Fn_55e174
        ldr     r0, L55e170
        vldr    s16, [r5, #0x24]
        bl      Fn_639de4
        vmul.f32 s16, s0, s16
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55e050
L55e030:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        vmovne.f32 s0, s16
        blne    Fn_51780c
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55e030
L55e050:
        ldrh    r1, [r5, #0x20]
        strb    r6, [r5, #0x16]
        mov     r0, #1
        bic     r1, r1, #0xd
        strh    r1, [r5, #0x20]
        b       L55e070
L55e068:
        cmp     r1, #0
        beq     L55e0a8
L55e070:
        ldrh    r1, [r5, #0x20]
        tst     r1, #2
        ldrbne  r2, [r5, #0x15]
        cmpne   r2, #0
        beq     L55e0a8
        ldrb    r0, [r5, #0x17]
        bic     r1, r1, #2
        cmp     r0, #0
        moveq   r2, #0
        strbne  r6, [r5, #0x18]
        strbeq  r2, [r5, #0x18]
        movne   r0, #3
        moveq   r0, #1
        strh    r1, [r5, #0x20]
L55e0a8:
        cmp     r0, #1
        beq     L55e0f8
        cmp     r0, #2
        beq     L55e130
        cmp     r0, #3
        bne     L55e0f0
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55e0f0
L55e0d0:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        movne   r1, #2
        blne    Fn_517774
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55e0d0
L55e0f0:
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L55e0f8:
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55e0f0
L55e108:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        movne   r1, #0
        blne    Fn_517774
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55e108
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L55e130:
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55e0f0
L55e140:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        movne   r1, #1
        blne    Fn_517774
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55e140
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L55e168:
        .word   0x437f0000
L55e16c:
        .word   0x437f0000
L55e170:
        .word   0x009dfe08
        .size   A_55df84, . - A_55df84

@ FUN_0055e174
        .global A_55e174
        .type   A_55e174, %function
A_55e174:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x30
        vldr    s0, L55e238
        mov     r5, r0
        vstr    s0, [sp, #0x20]
        vstr    s0, [sp, #0x10]
        vstr    s0, [sp]
        vstr    s0, [sp, #0x24]
        vstr    s0, [sp, #0x14]
        vstr    s0, [sp, #4]
        vstr    s0, [sp, #0x28]
        vstr    s0, [sp, #0x18]
        vstr    s0, [sp, #8]
        vstr    s0, [sp, #0x2c]
        vstr    s0, [sp, #0x1c]
        vstr    s0, [sp, #0xc]
        mov     r0, #0
        str     r0, [sp]
        str     r0, [sp, #4]
        str     r0, [sp, #8]
        str     r0, [sp, #0xc]
        str     r0, [sp, #0x10]
        str     r0, [sp, #0x14]
        str     r0, [sp, #0x18]
        str     r0, [sp, #0x1c]
        str     r0, [sp, #0x20]
        str     r0, [sp, #0x24]
        str     r0, [sp, #0x28]
        str     r0, [sp, #0x2c]
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L55e230
L55e1f8:
        ldr     r6, [r5, r4, lsl #2]
        cmp     r6, #0
        beq     L55e220
        mov     r2, sp
        mov     r1, r4
        mov     r0, r5
        bl      Fn_55d380
        mov     r1, sp
        mov     r0, r6
        bl      Fn_516bc8
L55e220:
        ldr     r0, [r5, #8]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L55e1f8
L55e230:
        add     sp, sp, #0x30
        pop     {r4, r5, r6, pc}
L55e238:
        .word   0x00000000
        .size   A_55e174, . - A_55e174

@ FUN_0055e390
        .global A_55e390
        .type   A_55e390, %function
A_55e390:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x1f6]
        sub     sp, sp, #0x10
        cmp     r0, #1
        bne     L55e3fc
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp]
        add     r0, sp, #8
        bl      Fn_513270
        ldrd    r0, r1, [sp, #8]
        strd    r0, r1, [sp]
        ldr     r0, [r4, #0x1c0]
        ldr     r1, [r4, #0x1bc]
        cmp     r0, r1
        bge     L55e3f0
        ldr     r1, [r4, #0x1b8]
        ldrd    r2, r3, [sp]
        add     r0, r1, r0, lsl #3
        strd    r2, r3, [r0]
        ldr     r0, [r4, #0x1c0]
        add     r0, r0, #1
        str     r0, [r4, #0x1c0]
L55e3f0:
        mov     r1, sp
        mov     r0, r4
        bl      Fn_55e574
L55e3fc:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, lr}
        mov     r0, r0
        .size   A_55e390, . - A_55e390

@ FUN_0055e40c
        .global A_55e40c
        .type   A_55e40c, %function
A_55e40c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r6, r0, #0x1c4
        mov     r0, r6
        bl      Fn_0244c8
        ldr     r5, [r4, #0x1d4]
        add     r0, r4, #0x1d4
        cmp     r5, r0
        beq     L55e454
L55e430:
        sub     r1, r5, #4
        mov     r0, r5
        ldm     r1, {r1, r5}
        sub     r0, r0, #4
        ldr     r1, [r1, #8]
        blx     r1
        add     r0, r4, #0x1d4
        cmp     r5, r0
        bne     L55e430
L55e454:
        ldr     r5, [r4, #0x1e0]
        add     r0, r4, #0x1e0
        cmp     r5, r0
        beq     L55e488
L55e464:
        sub     r1, r5, #4
        mov     r0, r5
        ldm     r1, {r1, r5}
        sub     r0, r0, #4
        ldr     r1, [r1, #0xc]
        blx     r1
        add     r0, r4, #0x1e0
        cmp     r5, r0
        bne     L55e464
L55e488:
        ldr     r0, L55e56c
        bl      Fn_561cc0
        nop
        nop
        bl      Fn_55bca4
        nop
        nop
        bl      Fn_55be38
        nop
        nop
        bl      Fn_55c048
        nop
        nop
        bl      Fn_55be38
        ldr     r5, [r4, #0x1e0]
        add     r0, r4, #0x1e0
        cmp     r5, r0
        beq     L55e4f4
L55e4d0:
        sub     r1, r5, #4
        mov     r0, r5
        ldm     r1, {r1, r5}
        sub     r0, r0, #4
        ldr     r1, [r1, #8]
        blx     r1
        add     r0, r4, #0x1e0
        cmp     r5, r0
        bne     L55e4d0
L55e4f4:
        nop
        bl      Fn_561354
        nop
        nop
        bl      Fn_5613b0
        nop
        nop
        bl      Fn_55c9a8
        nop
        nop
        bl      Fn_562bd4
        nop
        nop
        bl      Fn_562c98
        ldr     r5, [r4, #0x1d4]
        add     r0, r4, #0x1d4
        cmp     r5, r0
        beq     L55e560
L55e53c:
        sub     r1, r5, #4
        mov     r0, r5
        ldm     r1, {r1, r5}
        sub     r0, r0, #4
        ldr     r1, [r1, #0xc]
        blx     r1
        add     r0, r4, #0x1d4
        cmp     r5, r0
        bne     L55e53c
L55e560:
        mov     r0, r6
        pop     {r4, r5, r6, lr}
        b       Fn_024568
L55e56c:
        .word   0x009dfe08
        .size   A_55e40c, . - A_55e40c

@ FUN_0055e574
        .global A_55e574
        .type   A_55e574, %function
A_55e574:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r4, r0
        add     r6, r0, #0x100
        mov     r5, r1
        vpush   {d8}
        ldrb    r0, [r0, #0x1f6]
        cmp     r0, #1
        bne     L55e788
        ldrd    r0, r1, [r5]
        ldrd    r2, r3, [r4]
        adds    r0, r0, r2
        adc     r1, r1, r3
        strd    r0, r1, [r4]
        ldr     r0, [r4, #8]
        add     r0, r0, #1
        str     r0, [r4, #8]
        bl      Fn_5125c4
        ldr     r1, [r4, #0xc]
        add     r0, r0, r1
        str     r0, [r4, #0xc]
        ldrb    r0, [r6, #0xb4]
        cmp     r0, #1
        bne     L55e788
        ldr     r2, [r5]
        ldr     r1, L55e790
        ldr     r0, [r5, #4]
        mov     r3, #3
        mov     ip, #0
        umull   r8, r7, r2, r1
        umull   r8, sb, r0, r3
        adds    r5, ip, r7
        adc     r7, r8, ip
        umull   lr, r8, r0, r1
        asr     r6, r0, #0x1f
        ldr     sb, L55e798
        mla     r1, r6, r1, r8
        mla     r1, r0, ip, r1
        ldr     ip, L55e794
        umlal   lr, r1, r3, r2
        mov     r3, #0
        adds    r0, lr, r5
        adc     r1, r1, r7
        umull   r8, r7, r0, ip
        umull   r8, fp, r1, ip
        mla     r7, r3, ip, r7
        asr     r2, r1, #0x1f
        mov     lr, r3
        mla     ip, r2, ip, fp
        mla     r7, r0, lr, r7
        mla     lr, r1, r3, ip
        adds    ip, r8, r7
        umull   r6, r7, r0, sb
        adc     lr, lr, r3
        mov     sl, r3
        mov     r5, r3
        mla     r3, r3, sb, r7
        adds    ip, ip, r6
        mla     r0, r0, sl, r3
        umull   r3, r7, r1, sb
        adc     r0, r0, r5
        mla     r2, r2, sb, r7
        asr     ip, r0, #0x1f
        mla     r7, r1, sl, r2
        adds    r0, r0, lr
        adc     r2, ip, lr, asr #31
        adds    r0, r0, r3
        adc     r2, r2, r7
        lsr     r3, r1, #0x1f
        lsr     lr, r0, #7
        orr     r0, lr, r2, lsl #25
        adds    r0, r0, r3
        asr     r1, r2, #7
        adc     r1, r1, #0
        bl      Fn_68f3c0
        vmov    s0, r0
        vldr    s1, L55e79c
        add     r0, r4, #0x10
        vmul.f32 s16, s0, s1
        vldr    s1, L55e7a0
        vmov.f32 s0, s16
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        blo     L55e6d0
        ldr     r2, L55e7a4
        vmov    r1, s16
        cmp     r1, r2
        ble     L55e6dc
L55e6d0:
        ldr     r1, [r0, #0x1a0]
        add     r1, r1, #1
        str     r1, [r0, #0x1a0]
L55e6dc:
        vmov.f32 s1, s16
        vldr    s0, [r0]
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmov.f32 s1, s16
        vmovlo.f32 s0, s16
        vcvt.s32.f32 s1, s1
        vstr    s0, [r0]
        vmov    r1, s1
        cmp     r1, #0x65
        bge     L55e718
        add     r1, r0, r1, lsl #2
        ldr     r2, [r1, #8]
        add     r2, r2, #1
        str     r2, [r1, #8]
L55e718:
        ldr     r1, [r0, #0x19c]
        vmov.f32 s0, s16
        add     r1, r1, #1
        str     r1, [r0, #0x19c]
        vldr    s1, [r0, #4]
        vadd.f32 s0, s1, s0
        vstr    s0, [r0, #4]
        ldr     r0, [r4, #0x1f8]
        cmp     r0, #0
        beq     L55e780
        ldr     r1, [r4, #0x204]
        ldr     r2, [r4, #0x200]
        cmp     r2, r1
        ble     L55e780
        add     r5, r0, r1, lsl #3
        bl      Fn_562bd4
        nop
        nop
        bl      Fn_639e2c
        strb    r0, [r5, #4]
        ldr     r0, [r4, #0x1fc]
        strb    r0, [r5, #5]
        vstr    s16, [r5]
        ldr     r0, [r4, #0x204]
        add     r0, r0, #1
        str     r0, [r4, #0x204]
L55e780:
        mov     r0, #0
        str     r0, [r4, #0x1fc]
L55e788:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L55e790:
        .word   0xbad34aee
L55e794:
        .word   0xe353f7cf
L55e798:
        .word   0x20c49ba5
L55e79c:
        .word   0x3ca78f51
L55e7a0:
        .word   0x00000000
L55e7a4:
        .word   0x42c80000
        .size   A_55e574, . - A_55e574

@ FUN_0055e7a8
        .global A_55e7a8
        .type   A_55e7a8, %function
A_55e7a8:
        push    {r4, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x1f6]
        sub     sp, sp, #0x10
        cmp     r0, #1
        bne     L55e814
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp]
        add     r0, sp, #8
        bl      Fn_513270
        ldrd    r0, r1, [sp, #8]
        strd    r0, r1, [sp]
        ldr     r0, [r4, #0x1c0]
        ldr     r1, [r4, #0x1bc]
        cmp     r0, r1
        bge     L55e808
        ldr     r1, [r4, #0x1b8]
        ldrd    r2, r3, [sp]
        add     r0, r1, r0, lsl #3
        strd    r2, r3, [r0]
        ldr     r0, [r4, #0x1c0]
        add     r0, r0, #1
        str     r0, [r4, #0x1c0]
L55e808:
        mov     r1, sp
        mov     r0, r4
        bl      Fn_55e574
L55e814:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, lr}
        b       Fn_55e40c
        .size   A_55e7a8, . - A_55e7a8

@ FUN_0055e824
        .global A_55e824
        .type   A_55e824, %function
A_55e824:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r5, r0, #0x1c4
        mov     r6, r1
        mov     r7, r2
        mov     r0, r5
        bl      Fn_0244c8
        ldrb    r0, [r4, #0x1f6]
        cmp     r0, #0
        cmpne   r6, #0
        beq     L55e86c
        mov     r0, #0
        str     r0, [r4, #0x1c0]
        add     r4, r4, #0x1b8
        mov     r0, r5
        stm     r4, {r6, r7}
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_024568
L55e86c:
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_024568
        .size   A_55e824, . - A_55e824

@ FUN_0055e878
        .global A_55e878
        .type   A_55e878, %function
A_55e878:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x28
        add     r8, sp, #0x54
        ldm     r8, {r4, r7}
        add     r8, sp, #0x48
        ldr     r6, [sp, #0x50]
        ldm     r8, {r5, ip}
        ldrb    r8, [r0, #0x1f4]
        cmp     r8, #0
        bne     L55e8b4
        mov     sl, #1
        strb    sl, [r0, #0x1f4]
        mov     sb, #0
        strb    r7, [r0, #0x1f6]
        strb    sb, [r0, #0x1f7]
L55e8b4:
        str     r4, [r0, #0x1f0]
        add     r8, sp, #0xc
        str     r6, [sp, #0x20]
        ldr     r6, L55e99c
        stm     r8, {r1, r2, r3, r5, ip}
        ldr     r0, [r6]
        tst     r0, #1
        bne     L55e908
        add     r0, r6, #0
        blx     Fn_203d64_t
        cmp     r0, #0
        nop
        beq     L55e908
        ldr     r0, L55e9a0
        bl      Fn_55eab8
        ldr     r2, L55e9a4
        ldr     r1, L55e9a8
        mov     r0, r0
        add     r0, r6, #0
        nop
        mov     r0, r0
L55e908:
        ldr     r0, [r6]
        ldr     r6, L55e9a0
        tst     r0, #1
        bne     L55e94c
        ldr     r0, L55e99c
        blx     Fn_203d64_t
        cmp     r0, #0
        nop
        beq     L55e94c
        add     r0, r6, #0
        bl      Fn_55eab8
        ldr     r2, L55e9a4
        ldr     r1, L55e9a8
        mov     r0, r0
        ldr     r0, L55e99c
        nop
        mov     r0, r0
L55e94c:
        ldr     r0, L55e9ac
        ldr     r2, L55e9a0
        str     r4, [sp, #8]
        cmp     r4, #1
        stm     sp, {r0, r6}
        bne     L55e970
        cmp     r5, #0
        addne   r3, sp, #0x18
        bne     L55e974
L55e970:
        mov     r3, #0
L55e974:
        ldr     r1, L55e9b0
        add     r0, sp, #0xc
        bl      Fn_513db0
        mov     r4, r0
        mov     r0, r7
        bl      Fn_513620
        asr     r0, r4, #0x1f
        add     sp, sp, #0x28
        add     r0, r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L55e99c:
        .word   0x008bb50c
L55e9a0:
        .word   0x009b9aa8
L55e9a4:
        .word   0x00100000
L55e9a8:
        .word   0x0065eb58
L55e9ac:
        .word   0x0065e9e4
L55e9b0:
        .word   0x0065e390
        .size   A_55e878, . - A_55e878

@ FUN_0055e9b4
        .global A_55e9b4
        .type   A_55e9b4, %function
A_55e9b4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r5, r0, #0x1c4
        mov     r0, r5
        bl      Fn_0244c8
        mov     r0, #0
        str     r0, [r4, #0x1b8]
        str     r0, [r4, #0x1bc]
        str     r0, [r4, #0x1c0]
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_024568
        .size   A_55e9b4, . - A_55e9b4

@ FUN_0055ea50
        .global A_55ea50
        .type   A_55ea50, %function
A_55ea50:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0x1f4]
        cmp     r0, #0
        beq     L55ea78
        mov     r1, #1
        strb    r1, [r5, #0x1f7]
        bl      Fn_513298
        mov     r1, #0
        strb    r1, [r5, #0x1f4]
L55ea78:
        ldr     r4, [r5, #0x1e0]
        add     r0, r5, #0x1e0
        cmp     r4, r0
        beq     L55eaac
L55ea88:
        sub     r1, r4, #4
        mov     r0, r4
        ldm     r1, {r1, r4}
        sub     r0, r0, #4
        ldr     r1, [r1, #0x10]
        blx     r1
        add     r0, r5, #0x1e0
        cmp     r4, r0
        bne     L55ea88
L55eaac:
        mvn     r0, #0
        str     r0, [r5, #0x1cc]
        pop     {r4, r5, r6, pc}
        .size   A_55ea50, . - A_55ea50

@ FUN_0055eba0
        .global A_55eba0
        .type   A_55eba0, %function
A_55eba0:
        push    {r4, r5, r6, lr}
        mov     r6, r0
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
        beq     L55ec04
        cmp     r0, #1
        movne   r0, #0
        beq     L55ec1c
L55ebe4:
        strb    r0, [r4, #0x14]
        mov     r1, r4
        mov     r0, r5
        bl      Fn_55bd58
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        mov     r1, #1
        b       Fn_55bd7c
L55ec04:
        mov     r1, r4
        mov     r0, r6
        bl      Fn_55ec34
        nop
        nop
        b       L55ebe4
L55ec1c:
        mov     r1, r4
        mov     r0, r6
        bl      Fn_55f030
        nop
        nop
        b       L55ebe4
        .size   A_55eba0, . - A_55eba0

@ FUN_0055f348
        .global A_55f348
        .type   A_55f348, %function
A_55f348:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r5, r1
        mov     r8, r2
        ldr     r7, [sp, #0x20]
        mov     sb, r3
        add     r0, r0, #0x94
        bl      Fn_5667d4
        cmp     r0, #0
        mov     sl, #0
        moveq   r0, sl
        movne   r4, r0
        beq     L55f39c
        mov     r1, #0x50
        bl      Fn_1fddd8
        mov     r0, r4
        bl      Fn_55c93c
        ldr     r1, L55f43c
        str     r1, [r0]
        str     sl, [r0, #0x48]
        str     sl, [r0, #0x4c]
L55f39c:
        mov     r4, r0
        str     r6, [r0, #0x44]
        str     r6, [r0, #0x18]
        strd    r8, sb, [r4, #0x3c]
        ldr     r0, [r6, #0x20]
        cmp     r0, #0
        beq     L55f410
        and     r0, r0, #1
        cmp     r0, #1
        mov     r1, #0
        bne     L55f3d4
        ldr     r2, [r5]
        mov     r1, #1
        str     r2, [r4, #0x1c]
L55f3d4:
        ldr     r2, [r6, #0x20]
        cmp     r2, r0
        bls     L55f410
L55f3e0:
        ldr     r2, [r5, r1, lsl #2]
        add     r3, r4, r1, lsl #2
        add     r1, r1, #1
        str     r2, [r3, #0x1c]
        ldr     r2, [r5, r1, lsl #2]
        add     ip, r4, r1, lsl #2
        add     r0, r0, #2
        str     r2, [ip, #0x1c]
        ldr     r2, [r6, #0x20]
        add     r1, r1, #1
        cmp     r2, r0
        bhi     L55f3e0
L55f410:
        add     r0, r6, #0x88
        add     r1, r6, #0x8c
        add     r2, r4, #0x48
        bl      Fn_542230
        nop
        nop
        bl      Fn_557434
        and     r2, r7, #0xff
        mov     r1, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_557258
L55f43c:
        .word   0x0082cee0
        .size   A_55f348, . - A_55f348

@ FUN_0055f528
        .global A_55f528
        .type   A_55f528, %function
A_55f528:
        push    {r4, lr}
        bl      Fn_55c93c
        ldr     r2, L55f550
        mov     r1, r0
        str     r2, [r0], #0x48
        mov     r2, #0
        str     r2, [r0]
        str     r2, [r0, #4]
        mov     r0, r1
        pop     {r4, pc}
L55f550:
        .word   0x0082cee0
        .size   A_55f528, . - A_55f528

@ FUN_0055f600
        .global A_55f600
        .type   A_55f600, %function
A_55f600:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r0
        mov     r6, r3
        mov     r8, r1
        ldrb    r0, [r0, #0x55]
        mov     sb, r2
        cmp     r0, #0
        bne     L55f6cc
        bl      Fn_55c048
        mov     r7, r0
        mov     r1, #0x14
        bl      Fn_55bb2c
        ldr     r1, [r7, #0x184]
        mov     r4, r0
        str     r1, [r0, #0xc]
        mov     r1, #0x29
        strb    r1, [r0, #4]
        ldrb    r0, [r5, #0x1c]
        cmp     r0, #0
        beq     L55f684
        cmp     r0, #1
        movne   r0, #0
        beq     L55f6a8
L55f65c:
        strb    r0, [r4, #0x14]
        ldr     r0, [r5, #0x10]
        mov     r1, r4
        str     r0, [r4, #0x10]
        mov     r0, r7
        bl      Fn_55bd58
        mov     r0, r7
        pop     {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r1, #1
        b       Fn_55bd7c
L55f684:
        mov     r3, sb
        mov     r2, r8
        mov     r1, r4
        mov     r0, r5
        str     r6, [sp]
        bl      Fn_55f6d0
        nop
        nop
        b       L55f65c
L55f6a8:
        mov     r3, sb
        mov     r2, r8
        mov     r1, r4
        mov     r0, r5
        str     r6, [sp]
        bl      Fn_55fe80
        nop
        nop
        b       L55f65c
L55f6cc:
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
        .size   A_55f600, . - A_55f600

@ FUN_005602e8
        .global A_5602e8
        .type   A_5602e8, %function
A_5602e8:
        push    {r4, lr}
        mov     r4, #0
        str     r4, [r0], #4
        bl      Fn_55c538
        sub     r0, r0, #4
        str     r4, [r0, #0x14]!
        add     r0, r0, #0x54
        bl      Fn_55c93c
        ldr     r1, L560358
        mov     r3, #0x20
        mov     r2, #0x50
        str     r1, [r0], #0x20
        add     r1, r0, #4
        str     r1, [r0, #4]
        str     r4, [r0]
        str     r1, [r0, #8]
        str     r4, [r0, #0xc]
        ldr     r1, L56035c
        add     r0, r0, #0x10
        blx     Fn_0000ac_t
        sub     r4, r0, #0x98
        mov     r2, #0xa00
        sub     r0, r0, #4
        add     r1, r4, #0x98
        mov     r3, #0x50
        bl      Fn_566730
        mov     r0, r4
        pop     {r4, pc}
L560358:
        .word   0x0082cef4
L56035c:
        .word   0x0065f528
        .size   A_5602e8, . - A_5602e8

@ FUN_005603bc
        .global A_5603bc
        .type   A_5603bc, %function
A_5603bc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r8, r1
        strb    r1, [r0, #0x7b]
        ldr     r5, [r0, #0x130]
        cmp     r5, #0
        beq     L560448
        ldr     r1, L56044c
        add     r0, r2, #4
        mov     fp, #0
        umull   r1, r0, r1, r0
        lsr     sb, r0, #2
L5603e8:
        add     r4, r5, #0x17c
        cmp     r8, #0
        ldrh    r0, [r4, #4]
        ldrh    r1, [r4, #2]
        movne   r6, #0
        moveq   r6, #0xff
        cmp     r0, r1
        ldrbhs  r0, [r4, #1]
        uxth    r7, sb
        bhs     L56042c
        ldrb    r2, [r4, #1]
        ldrb    sl, [r4]
        sub     r2, r2, sl
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, sl
        and     r0, r0, #0xff
L56042c:
        strb    r0, [r4]
        strb    r6, [r4, #1]
        strh    r7, [r4, #2]
        strh    fp, [r4, #4]
        ldr     r5, [r5, #0x1a4]
        cmp     r5, #0
        bne     L5603e8
L560448:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L56044c:
        .word   0xcccccccd
        .size   A_5603bc, . - A_5603bc

@ FUN_00560a4c
        .global A_560a4c
        .type   A_560a4c, %function
A_560a4c:
        push    {r4, r5, r6, lr}
        cmp     r1, #0
        cmpne   r1, #2
        mov     r4, r0
        mov     r5, r2
        bleq    Fn_565968
        ldr     r0, [r5, #0x12c]
        cmp     r0, #0
        beq     L560a80
        ldr     r1, [r0]
        ldr     r2, [r1, #0x20]
        mov     r1, r4
        blx     r2
L560a80:
        ldr     r0, [r5, #0x130]
        cmp     r0, r4
        ldrne   r1, [r0, #0x1a4]
        ldreq   r0, [r4, #0x1a4]
        streq   r0, [r5, #0x130]
        cmpne   r1, #0
        beq     L560ab0
L560a9c:
        ldr     r1, [r0, #0x1a4]
        cmp     r1, r4
        bne     L560ab4
        ldr     r1, [r4, #0x1a4]
        str     r1, [r0, #0x1a4]
L560ab0:
        pop     {r4, r5, r6, pc}
L560ab4:
        mov     r0, r1
        ldr     r1, [r1, #0x1a4]
        cmp     r1, #0
        bne     L560a9c
        pop     {r4, r5, r6, pc}
        .size   A_560a4c, . - A_560a4c

@ FUN_00560bc4
        .global A_560bc4
        .type   A_560bc4, %function
A_560bc4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r0
        mov     r7, r1
        sub     sp, sp, #0x24
        mov     fp, #0
        ldrb    r0, [r0, #0xf0]
        ldr     r1, L560ed4
        mov     sb, r3
        mov     r3, fp
        mul     r2, r0, r2
        ldr     r8, [sp, #0x48]
        ldr     r0, [r6, #0x12c]
        mov     r5, fp
        smlal   r3, r2, r1, r2
        cmp     r8, #0
        ldrne   r5, [r6, #0x130]
        add     sl, r0, #0x74
        vldr    s1, L560ed8
        asr     r0, r2, #6
        cmpne   r5, #0
        sub     r4, r0, r2, asr #31
        beq     L560c34
        vmov    s0, r4
        strb    r7, [r5, #0x192]
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vmul.f32 s0, s0, s0
        vstr    s0, [r5, #0x16c]
L560c34:
        ldrb    r0, [r6, #0x27]
        cmp     r0, #0
        beq     L560c8c
        ldr     r5, [r6, #0x130]
        cmp     r5, #0
        beq     L560c94
        ldrb    r0, [r5, #0x90]
        cmp     r0, #4
        beq     L560c78
        vmov    s0, r4
        str     sb, [r5, #0x18c]
        strb    r7, [r5, #0x192]
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vmul.f32 s0, s0, s0
        vstr    s0, [r5, #0x16c]
        b       L560d60
L560c78:
        mov     r0, r5
        bl      Fn_565ca4
        nop
        nop
        b       L560c94
L560c8c:
        cmp     r5, #0
        bne     L560d60
L560c94:
        cmp     r8, #0
        ldr     r8, L560edc
        add     lr, sp, #4
        add     r0, r8, #4
        add     r8, r8, #0x18
        ldm     r0, {r0, r1, r2, r3, ip}
        ldm     r8, {r5, r8}
        stm     lr, {r0, r1, r2, r3, ip}
        add     r0, sp, #0x18
        mov     r2, sp
        stm     r0, {r5, r8}
        ldr     r0, [r6, #0x84]
        str     r4, [sp, #8]
        stm     sp, {r0, r7}
        mvnne   r0, #0
        moveq   r0, sb
        str     r0, [sp, #0xc]
        ldrsb   r0, [r6, #0xf2]
        str     r0, [sp, #0x10]
        ldrb    r0, [sl]
        ldrb    r1, [r6, #0xf5]
        str     r6, [sp, #0x1c]
        add     r0, r0, r1
        str     r0, [sp, #0x14]
        ldrb    r1, [r6, #0x83]
        ldr     r0, [r6, #0x12c]
        bl      Fn_56520c
        movs    r5, r0
        nop
        beq     L560ecc
        ldrb    r0, [r5, #0x194]
        cmp     r0, #0
        ldrne   r4, [r6, #0x130]
        cmpne   r4, #0
        beq     L560d54
L560d20:
        ldrb    r0, [r4, #0x194]
        ldrb    r1, [r5, #0x194]
        cmp     r0, r1
        bne     L560d48
        mov     r1, #0x7e
        add     r0, r4, #0x90
        bl      Fn_5563ac
        mov     r0, r4
        nop
        bl      Fn_5661a8
L560d48:
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L560d20
L560d54:
        ldr     r0, [r6, #0x130]
        str     r0, [r5, #0x1a4]
        str     r5, [r6, #0x130]
L560d60:
        ldrb    r1, [r6, #0xf8]
        cmp     r1, #0x7f
        addls   r0, r5, #0x90
        blls    Fn_5565fc
        ldrb    r1, [r6, #0xf9]
        cmp     r1, #0x7f
        addls   r0, r5, #0x90
        blls    Fn_556584
        ldrb    r1, [r6, #0xfa]
        cmp     r1, #0x7f
        addls   r0, r5, #0x90
        strbls  r1, [r0, #0x18]
        ldrb    r1, [r6, #0xfb]
        cmp     r1, #0x7f
        addls   r0, r5, #0x90
        blls    Fn_5563ac
        ldrsh   r1, [r6, #0xfc]
        cmp     r1, #0x7f
        addle   r0, r5, #0x90
        blle    Fn_556564
        ldrb    r0, [r6, #0x81]
        vldr    s0, [r6, #0x88]
        cmp     r0, #0
        beq     L560dd4
        ldrb    r0, [r6, #0xf6]
        sub     r0, r0, r7
        vmov    s1, r0
        vcvt.f32.s32 s1, s1
        vadd.f32 s0, s1, s0
L560dd4:
        ldrb    r0, [r6, #0xf7]
        cmp     r0, #0
        beq     L560e2c
        mul     r0, r0, r0
        vldr    s1, L560ee0
        mov     r2, #1
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmov    s1, r0
        vmovls.f32 s2, s0
        vneghi.f32 s2, s0
        vcvt.f32.s32 s1, s1
        vmul.f32 s1, s2, s1
        vcvt.s32.f32 s1, s1
        vmov    r0, s1
        asr     r0, r0, #5
        add     r1, r0, r0, lsl #2
        mov     r0, r5
        bl      Fn_565a28
        nop
        nop
        b       L560e3c
L560e2c:
        mov     r2, #0
        mov     r1, sb
        mov     r0, r5
        bl      Fn_565a28
L560e3c:
        ldrb    r0, [r6, #0x7b]
        add     r4, r5, #0x17c
        strb    r7, [r6, #0xf6]
        cmp     r0, #0
        ldrh    r0, [r4, #4]
        ldrh    r1, [r4, #2]
        movne   r7, #0
        moveq   r7, #0xff
        cmp     r0, r1
        ldrbhs  r0, [r4, #1]
        mov     r8, #0
        bhs     L560e88
        ldrb    r2, [r4, #1]
        ldrb    sb, [r4]
        sub     r2, r2, sb
        mul     r0, r2, r0
        bl      Fn_1ff06c
        add     r0, r0, sb
        and     r0, r0, #0xff
L560e88:
        strb    r0, [r4]
        strb    r7, [r4, #1]
        strh    r8, [r4, #2]
        strh    fp, [r4, #4]
        ldr     r0, [r6, #0x12c]
        ldrb    r0, [r0, #0x5c]
        strb    r0, [r5, #0x134]
        ldr     r0, [r6, #0x12c]
        ldrb    r0, [r0, #0x34]
        strb    r0, [r5, #0x190]
        ldr     r0, [r6, #0x12c]
        ldrb    r0, [r0, #0x35]
        strb    r0, [r5, #0x191]
        ldrsb   r1, [r6, #0x79]
        ldr     r0, [r5, #0x1a0]
        bl      Fn_55d708
        mov     r0, r5
L560ecc:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L560ed4:
        .word   0x81020409
L560ed8:
        .word   0x3c010204
L560edc:
        .word   0x007f3d24
L560ee0:
        .word   0x00000000
        .size   A_560bc4, . - A_560bc4

@ FUN_00560eec
        .global A_560eec
        .type   A_560eec, %function
A_560eec:
        push    {r4, r5, r6, r7, r8, lr}
        cmp     r1, #0
        mov     r6, #0
        mov     r5, r0
        strbeq  r6, [r0, #0x7a]
        beq     L560fac
        cmp     r1, #1
        mov     r7, #1
        strbeq  r7, [r0, #0x7a]
        beq     L560fac
        cmp     r1, #2
        beq     L560f54
        cmp     r1, #3
        bne     L560fac
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L560fa4
L560f30:
        mov     r0, r4
        bl      Fn_565968
        mov     r0, r4
        nop
        bl      Fn_565ca4
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L560f30
        b       L560fa4
L560f54:
        nop
        bl      Fn_5606b4
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L560f84
L560f68:
        ldrb    r0, [r4, #0x131]
        cmp     r0, #0
        movne   r0, r4
        blne    Fn_5661a8
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L560f68
L560f84:
        ldr     r4, [r5, #0x130]
        cmp     r4, #0
        beq     L560fa4
L560f90:
        mov     r0, r4
        bl      Fn_565968
        ldr     r4, [r4, #0x1a4]
        cmp     r4, #0
        bne     L560f90
L560fa4:
        str     r6, [r5, #0x130]
        strb    r7, [r5, #0x7a]
L560fac:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_560eec, . - A_560eec

@ FUN_00561314
        .global A_561314
        .type   A_561314, %function
A_561314:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0x10]
        mov     r5, r1
        mov     r6, r2
        cmp     r0, #0
        bne     L561350
        mov     r0, r4
        mov     r3, #0x1b0
        bl      Fn_566730
        add     r3, r4, #0x14
        mov     r1, #1
        stm     r3, {r0, r5}
        strb    r1, [r4, #0x10]
        str     r6, [r4, #0x1c]
L561350:
        pop     {r4, r5, r6, pc}
        .size   A_561314, . - A_561314

@ FUN_005614f4
        .global A_5614f4
        .type   A_5614f4, %function
A_5614f4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0x10]
        cmp     r0, #0
        beq     L56154c
        ldr     r4, [r5, #8]
        add     r0, r5, #8
        cmp     r4, r0
        beq     L561534
L561518:
        mov     r0, r4
        ldr     r4, [r4]
        sub     r0, r0, #0x1a8
        bl      Fn_565ca4
        add     r0, r5, #8
        cmp     r4, r0
        bne     L561518
L561534:
        add     r1, r5, #0x18
        mov     r0, r5
        ldm     r1, {r1, r2}
        bl      Fn_566790
        mov     r0, #0
        strb    r0, [r5, #0x10]
L56154c:
        pop     {r4, r5, r6, pc}
        .size   A_5614f4, . - A_5614f4

@ FUN_00561550
        .global A_561550
        .type   A_561550, %function
A_561550:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0]
        cmp     r0, #0
        moveq   r4, #0
        bne     L561630
L561568:
        add     r0, r5, r4, lsl #2
        add     r2, r0, #0x274
        add     r1, r0, #0x6c
        sxtb    r0, r4
        mov     r6, r0
        bl      Fn_51369c
        mov     r2, #0
        mov     r1, r2
        mov     r0, r6
        bl      Fn_514390
        add     r4, r4, #1
        cmp     r4, #2
        blt     L561568
        mov     r1, #0
        mov     r0, r1
        mov     r4, r1
L5615a8:
        add     r2, r5, r1, lsl #2
        add     r1, r1, #1
        add     r0, r0, #2
        add     r3, r5, r1, lsl #2
        str     r4, [r2, #0x74]
        cmp     r0, #0x80
        add     r1, r1, #1
        str     r4, [r3, #0x74]
        blt     L5615a8
        ldr     r0, L561634
        vldr    s0, L561638
        str     r0, [r5, #0x78]
        add     r0, r0, #4
        str     r0, [r5, #0x7c]
        add     r0, r0, #4
        str     r0, [r5, #0x80]
        add     r0, r0, #4
        str     r0, [r5, #0x84]
        add     r0, r0, #4
        str     r0, [r5, #0x88]
        bl      Fn_5139c4
        nop
        nop
        bl      Fn_5142e4
        cmp     r0, #0
        mov     r1, #1
        strbeq  r4, [r5, #1]
        beq     L56162c
        cmp     r0, #1
        strbeq  r1, [r5, #1]
        beq     L56162c
        cmp     r0, #2
        strbeq  r0, [r5, #1]
L56162c:
        strb    r1, [r5]
L561630:
        pop     {r4, r5, r6, pc}
L561634:
        .word   0x008bb700
L561638:
        .word   0x3f800000
        .size   A_561550, . - A_561550

@ FUN_0056163c
        .global A_56163c
        .type   A_56163c, %function
A_56163c:
        push    {r4, lr}
        cmp     r2, #0
        vpush   {d8}
        add     r4, r0, r1, lsl #4
        vldr    s16, L5616a8
        beq     L561678
        ldr     r0, L5616ac
        add     r1, r2, #4
        vmov.f32 s0, s16
        umull   r1, r0, r0, r1
        lsr     r1, r0, #2
        add     r0, r4, #0x14
        bl      Fn_685894
L561670:
        vpop    {d8}
        pop     {r4, pc}
L561678:
        nop
        bl      Fn_561a94
        add     r0, r4, #0x14
        ldrd    r0, r1, [r0, #8]
        cmp     r1, r0
        blt     L561670
        vmov.f32 s0, s16
        add     r0, r4, #0x14
        mov     r1, #0
        bl      Fn_685894
        vpop    {d8}
        pop     {r4, pc}
L5616a8:
        .word   0x00000000
L5616ac:
        .word   0xcccccccd
        .size   A_56163c, . - A_56163c

@ FUN_005616b0
        .global A_5616b0
        .type   A_5616b0, %function
A_5616b0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r1
        mov     ip, r0
        add     r5, r0, r6, lsl #4
        vpush   {d8}
        mov     r7, r2
        ldrb    r0, [r5, #0x294]
        mov     r8, r3
        add     r4, r5, #0x290
        cmp     r0, #0
        movne   r0, #0
        bne     L561774
        add     r0, r5, #0x14
        ldrd    r0, r1, [r0, #8]
        cmp     r1, r0
        bge     L5616fc
        mov     r1, r6
        mov     r0, ip
        bl      Fn_561a94
L5616fc:
        vldr    s16, L56177c
        add     r0, r5, #0x14
        mov     r1, #0
        vmov.f32 s0, s16
        bl      Fn_685894
        vmov.f32 s0, s16
        sxtb    r0, r6
        mov     r5, r0
        bl      Fn_51434c
        mov     r1, r5
        mov     r0, r7
        bl      Fn_511ab8
        cmp     r0, #0
        nop
        beq     L561774
        mov     r1, r8
        mov     r0, r7
        bl      Fn_511ca0
        cmp     r0, #0
        nop
        beq     L561774
        mov     r1, #1
        mov     r0, r7
        bl      Fn_511b48
        cmp     r0, #0
        nop
        beq     L561774
        mov     r0, #1
        str     r7, [r4]
        strb    r0, [r4, #4]
L561774:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L56177c:
        .word   0x3f800000
        .size   A_5616b0, . - A_5616b0

@ FUN_00561780
        .global A_561780
        .type   A_561780, %function
A_561780:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r1
        mov     ip, r0
        add     r5, r0, r6, lsl #4
        vpush   {d8}
        mov     r7, r2
        ldrb    r0, [r5, #0x29c]
        mov     r8, r3
        add     r4, r5, #0x298
        cmp     r0, #0
        movne   r0, #0
        bne     L561844
        add     r0, r5, #0x14
        ldrd    r0, r1, [r0, #8]
        cmp     r1, r0
        bge     L5617cc
        mov     r1, r6
        mov     r0, ip
        bl      Fn_561a94
L5617cc:
        vldr    s16, L56184c
        add     r0, r5, #0x14
        mov     r1, #0
        vmov.f32 s0, s16
        bl      Fn_685894
        vmov.f32 s0, s16
        sxtb    r0, r6
        mov     r5, r0
        bl      Fn_51434c
        mov     r1, r5
        mov     r0, r7
        bl      Fn_511fe0
        cmp     r0, #0
        nop
        beq     L561844
        mov     r1, r8
        mov     r0, r7
        bl      Fn_512190
        cmp     r0, #0
        nop
        beq     L561844
        mov     r1, #1
        mov     r0, r7
        bl      Fn_512038
        cmp     r0, #0
        nop
        beq     L561844
        mov     r0, #1
        str     r7, [r4]
        strb    r0, [r4, #4]
L561844:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L56184c:
        .word   0x3f800000
        .size   A_561780, . - A_561780

@ FUN_00561850
        .global A_561850
        .type   A_561850, %function
A_561850:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        mov     r6, r2
        add     r5, r0, r4, lsl #4
        add     r1, r5, #0x1c
        vpush   {d8}
        ldm     r1, {r1, r2}
        cmp     r2, r1
        movlt   r1, r4
        bllt    Fn_561a94
        add     r0, r5, #0x14
        vldr    s16, L5618b0
        mov     r1, #0
        vmov.f32 s0, s16
        bl      Fn_685894
        vmov.f32 s0, s16
        sxtb    r0, r4
        mov     r4, r0
        bl      Fn_51434c
        vpop    {d8}
        mov     r1, r6
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_516a98
L5618b0:
        .word   0x3f800000
        .size   A_561850, . - A_561850

@ FUN_005618b4
        .global A_5618b4
        .type   A_5618b4, %function
A_5618b4:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        mov     r6, r2
        add     r5, r0, r4, lsl #4
        add     r1, r5, #0x1c
        vpush   {d8}
        ldm     r1, {r1, r2}
        cmp     r2, r1
        movlt   r1, r4
        bllt    Fn_561a94
        add     r0, r5, #0x14
        vldr    s16, L561914
        mov     r1, #0
        vmov.f32 s0, s16
        bl      Fn_685894
        vmov.f32 s0, s16
        sxtb    r0, r4
        mov     r4, r0
        bl      Fn_51434c
        vpop    {d8}
        mov     r1, r6
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_516aac
L561914:
        .word   0x3f800000
        .size   A_5618b4, . - A_5618b4

@ FUN_00561918
        .global A_561918
        .type   A_561918, %function
A_561918:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r1
        mov     r5, r0
        add     r6, r0, r4, lsl #4
        add     r0, r6, #0x14
        vpush   {d8}
        mov     r7, r2
        ldrd    r0, r1, [r0, #8]
        cmp     r1, r0
        bge     L56194c
        mov     r1, r4
        mov     r0, r5
        bl      Fn_561a94
L56194c:
        vldr    s16, L5619b0
        add     r0, r6, #0x14
        mov     r1, #0
        vmov.f32 s0, s16
        bl      Fn_685894
        vmov.f32 s0, s16
        sxtb    r0, r4
        mov     r6, r0
        bl      Fn_51434c
        add     r0, r4, r4, lsl #1
        add     r5, r5, r0, lsl #2
        ldr     r0, [r5, #0x54]!
        cmp     r0, #0
        bne     L561994
        ldr     r1, L5619b4
        mov     r2, r4
        mov     r0, r6
        bl      Fn_514390
L561994:
        mov     r0, r5
        add     r1, r5, #4
        add     r2, r7, #4
        bl      Fn_542230
        vpop    {d8}
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, pc}
L5619b0:
        .word   0x3f800000
L5619b4:
        .word   0x00661b84
        .size   A_561918, . - A_561918

@ FUN_005619c8
        .global A_5619c8
        .type   A_5619c8, %function
A_5619c8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r7, r0
        ldrb    r0, [r0, #1]
        cmp     r0, r1
        beq     L561a90
        cmp     r1, #0
        moveq   r0, #0
        strb    r1, [r7, #1]
        beq     L561a08
        cmp     r1, #1
        moveq   r0, #1
        beq     L561a08
        cmp     r1, #2
        moveq   r0, #2
        bleq    Fn_51435c
        b       L561a0c
L561a08:
        bl      Fn_51435c
L561a0c:
        nop
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #5
        bl      Fn_55bb2c
        ldr     r1, [r4, #0x184]
        mov     r3, #0x37
        mov     r2, #8
        str     r1, [r0, #0xc]
        strb    r3, [r0, #4]
        mov     r1, r0
        str     r2, [r0, #0x10]
        mov     r0, r4
        bl      Fn_55bd58
        mov     r6, #0
L561a48:
        and     r0, r6, #0xff
        add     r0, r0, r0, lsl #1
        add     r0, r7, r0, lsl #2
        add     r5, r0, #0x54
        ldr     r4, [r0, #0x58]!
        cmp     r4, r0
        beq     L561a84
L561a64:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        ldr     r1, [r1, #0x14]
        blx     r1
        ldr     r4, [r4]
        add     r0, r5, #4
        cmp     r4, r0
        bne     L561a64
L561a84:
        add     r6, r6, #1
        cmp     r6, #2
        blt     L561a48
L561a90:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5619c8, . - A_5619c8

@ FUN_00561a94
        .global A_561a94
        .type   A_561a94, %function
A_561a94:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r8, r0
        sxtb    r0, r1
        mov     r7, r1
        mov     sb, r0
        bl      Fn_511ec4
        mov     r4, #0
        mov     sl, #2
        add     r6, r8, r7, lsl #4
L561ab8:
        add     r0, r6, r4, lsl #3
        add     r5, r0, #0x290
        ldrb    r0, [r0, #0x294]
        cmp     r0, #1
        bne     L561b00
        cmp     r4, #0
        beq     L561ae0
        cmp     r4, #1
        bne     L561b00
        b       L561af4
L561ae0:
        ldr     r0, [r5]
        bl      Fn_511bd4
        mov     r4, #1
        strb    sl, [r5, #4]
        b       L561ab8
L561af4:
        ldr     r0, [r5]
        bl      Fn_5120c4
        strb    sl, [r5, #4]
L561b00:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L561ab8
        add     r0, r7, r7, lsl #1
        add     r5, r8, r0, lsl #2
        ldr     r0, [r5, #0x54]!
        cmp     r0, #0
        beq     L561b80
        mov     r0, sb
        bl      Fn_5139d0
        add     r2, r8, r7, lsl #3
        mov     r0, #0
        add     r2, r2, #0x280
        mov     r1, r0
        stm     r2, {r0, r1}
        add     r0, r5, #4
        ldr     r4, [r5, #4]
        cmp     r4, r0
        beq     L561b6c
L561b4c:
        ldr     r1, [r4, #-4]
        sub     r0, r4, #4
        ldr     r1, [r1, #0xc]
        blx     r1
        ldr     r4, [r4]
        add     r0, r5, #4
        cmp     r4, r0
        bne     L561b4c
L561b6c:
        ldr     r1, [r5, #4]
        mov     r0, r5
        add     r2, r5, #4
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_5421a0
L561b80:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_561a94, . - A_561a94

@ FUN_00561b84
        .global A_561b84
        .type   A_561b84, %function
A_561b84:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        and     r7, r2, #0xff
        vpush   {d8}
        sub     sp, sp, #8
        svc     #0x28
        ldr     r2, L561c3c
        mov     r8, r0
        ldr     r0, L561c3c
        mov     sb, r1
        add     r1, r7, r7, lsl #1
        ldrb    r5, [r2, #1]
        add     r0, r0, r1, lsl #2
        add     r6, r0, #0x54
        ldr     r4, [r0, #0x58]!
        cmp     r5, #2
        movne   sl, #2
        moveq   sl, #4
        cmp     r4, r0
        vldrne  s16, L561c40
        movne   fp, #2
        beq     L561c0c
L561bd8:
        str     r5, [sp, #4]
        str     fp, [sp]
        ldr     r1, [r4, #-4]
        vmov.f32 s0, s16
        sub     r0, r4, #4
        ldr     ip, [r1, #0x10]
        mov     r1, sl
        ldrd    r2, r3, [sp, #0x10]
        blx     ip
        ldr     r4, [r4]
        add     r0, r6, #4
        cmp     r4, r0
        bne     L561bd8
L561c0c:
        nop
        svc     #0x28
        subs    r2, r0, r8
        sbc     r0, r1, sb
        ldr     r1, L561c3c
        add     r1, r1, r7, lsl #3
        str     r2, [r1, #0x280]!
        str     r0, [r1, #4]
        add     sp, sp, #8
        vpop    {d8}
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L561c3c:
        .word   0x009dfe08
L561c40:
        .word   0x46ffb000
        .size   A_561b84, . - A_561b84

@ FUN_00561c48
        .global A_561c48
        .type   A_561c48, %function
A_561c48:
        push    {r4, lr}
        mov     r4, r1
        ldr     r1, L561cbc
        vcmpe.f32 s0, s1
        add     r2, r4, #4
        add     r0, r0, #4
        umull   r2, r1, r1, r2
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
        lsr     r1, r1, #2
        bl      Fn_685894
        cmp     r4, #0
        bne     L561cb4
        bl      Fn_55bca4
        mov     r4, r0
        mov     r1, #5
        bl      Fn_55bb2c
        mov     r1, r0
        ldr     r0, [r4, #0x184]
        mov     r2, #0x37
        str     r0, [r1, #0xc]
        mov     r0, #0x40
        strb    r2, [r1, #4]
        str     r0, [r1, #0x10]
        mov     r0, r4
        pop     {r4, lr}
        b       Fn_55bd58
L561cb4:
        pop     {r4, pc}
        .word   0x00000000
L561cbc:
        .word   0xcccccccd
        .size   A_561c48, . - A_561c48

@ FUN_00561cc0
        .global A_561cc0
        .type   A_561cc0, %function
A_561cc0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r7, #0
        mov     r8, r0
        mov     sb, r7
        vpush   {d8}
        vldr    s17, L561ebc
        vldr    s16, L561ec0
L561cdc:
        add     r6, r8, r7, lsl #4
        mov     r1, #0
        ldr     r0, [r6, #0x40]
        ldr     r2, [r6, #0x3c]
        cmp     r0, r2
        bge     L561d00
        add     r0, r0, #1
        mov     r1, #1
        str     r0, [r6, #0x40]
L561d00:
        ldr     r0, [r6, #0x20]
        ldr     r2, [r6, #0x1c]
        cmp     r0, r2
        blt     L561d1c
        cmp     r1, #0
        bne     L561d3c
        b       L561e14
L561d1c:
        add     r1, r0, #1
        str     r1, [r6, #0x20]
        ldr     r0, [r6, #0x1c]
        cmp     r1, r0
        blt     L561d3c
        and     r1, r7, #0xff
        mov     r0, r8
        bl      Fn_561a94
L561d3c:
        add     r1, r6, #0x3c
        vmov.f32 s2, s17
        ldm     r1, {r1, r2}
        add     r0, r6, #0x34
        cmp     r2, r1
        vldrge  s0, [r0, #4]
        bge     L561d80
        vmov    s1, r2
        vldr    s4, [r0, #4]
        vldr    s0, [r0]
        vmov    s3, r1
        vsub.f32 s4, s4, s0
        vcvt.f32.s32 s5, s1
        vcvt.f32.s32 s1, s3
        vmul.f32 s4, s4, s5
        vdiv.f32 s3, s4, s1
        vadd.f32 s0, s3, s0
L561d80:
        vmov.f32 s1, s16
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s2
        bgt     L561da4
        vmov.f32 s3, s1
        vcmpe.f32 s0, s3
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L561da4:
        vmov.f32 s3, s17
        ldr     r0, [r6, #0x20]
        ldr     r2, [r6, #0x1c]
        add     r1, r6, #0x14
        cmp     r0, r2
        vmul.f32 s3, s0, s3
        vldrge  s0, [r1, #4]
        bge     L561dec
        vmov    s4, r0
        vldr    s6, [r1, #4]
        vldr    s0, [r1]
        vmov    s5, r2
        vsub.f32 s6, s6, s0
        vcvt.f32.s32 s7, s4
        vcvt.f32.s32 s4, s5
        vmul.f32 s6, s6, s7
        vdiv.f32 s5, s6, s4
        vadd.f32 s0, s5, s0
L561dec:
        vcmpe.f32 s0, s2
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s2
        bgt     L561e08
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        vmovlo.f32 s0, s1
L561e08:
        sxtb    r0, r7
        vmul.f32 s0, s0, s3
        bl      Fn_51434c
L561e14:
        mov     r4, #0
L561e18:
        add     r5, r6, r4, lsl #3
        ldr     r0, [r5, #0x290]!
        cmp     r0, #0
        beq     L561e70
        ldrb    r1, [r5, #4]
        cmp     r1, #2
        bne     L561e70
        cmp     r4, #0
        beq     L561e48
        cmp     r4, #1
        bne     L561e70
        b       L561e5c
L561e48:
        nop
        bl      Fn_511a70
        nop
        nop
        b       L561e64
L561e5c:
        nop
        bl      Fn_511ed4
L561e64:
        cmp     r0, #0
        streq   sb, [r5]
        strbeq  sb, [r5, #4]
L561e70:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L561e18
        add     r7, r7, #1
        cmp     r7, #2
        blt     L561cdc
        ldr     r0, [r8, #0x10]
        ldr     r1, [r8, #0xc]
        cmp     r1, r0
        addgt   r0, r0, #1
        strgt   r0, [r8, #0x10]
        ble     L561eb4
        bl      Fn_562bd4
        vpop    {d8}
        mov     r1, #0x40
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_562da4
L561eb4:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L561ebc:
        .word   0x3f800000
L561ec0:
        .word   0x00000000
        .size   A_561cc0, . - A_561cc0

@ FUN_00561f1c
        .global A_561f1c
        .type   A_561f1c, %function
A_561f1c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, #0
        mov     r2, #1
        strb    r4, [r0]
        mov     r1, #2
        strb    r2, [r0, #1]
        vldr    s0, L562028
        strb    r1, [r0, #2]
        vstr    s0, [r0, #4]
        vstr    s0, [r0, #8]
        str     r4, [r0, #0xc]
        mov     r3, r1
        str     r4, [r0, #0x10]!
        ldr     r1, L56202c
        mov     r2, #0x10
        add     r0, r0, #4
        blx     Fn_0000ac_t
        ldr     r1, L56202c
        mov     r3, #2
        mov     r2, #0x10
        add     r0, r0, #0x20
        blx     Fn_0000ac_t
        ldr     r1, L562030
        mov     r3, #2
        mov     r2, #0xc
        add     r0, r0, #0x20
        blx     Fn_0000ac_t
        ldr     r1, L562034
        mov     r3, #2
        mov     r2, #8
        add     r0, r0, #0x22c
        blx     Fn_0000ac_t
        ldr     r1, L562038
        mov     r3, #4
        mov     r2, #8
        add     r0, r0, #0x10
        blx     Fn_0000ac_t
        sub     r0, r0, #0x290
        vldr    s0, L56203c
        mov     r2, #0
        vstr    s0, [r0, #4]
        vstr    s0, [r0, #8]
        str     r4, [r0, #0xc]
        str     r4, [r0, #0x10]
L561fcc:
        add     r1, r0, r2, lsl #4
        add     r7, r1, #0x14
        add     r1, r1, #0x34
        vstr    s0, [r7]
        vstr    s0, [r7, #4]
        str     r4, [r7, #8]
        str     r4, [r7, #0xc]
        vstr    s0, [r1]
        vstr    s0, [r1, #4]
        add     r5, r0, r2, lsl #2
        str     r4, [r1, #8]
        add     r6, r0, r2, lsl #3
        str     r4, [r1, #0xc]
        mov     r3, #0
        add     r6, r6, #0x280
        str     r4, [r5, #0x6c]
        mov     ip, r3
        str     r4, [r5, #0x274]
        add     r2, r2, #1
        stm     r6, {r3, ip}
        cmp     r2, #2
        blt     L561fcc
        pop     {r4, r5, r6, r7, r8, pc}
L562028:
        .word   0x00000000
L56202c:
        .word   0x007858e4
L562030:
        .word   0x00785788
L562034:
        .word   0x001321fc
L562038:
        .word   0x006619b8
L56203c:
        .word   0x3f800000
        .size   A_561f1c, . - A_561f1c

@ FUN_005620ac
        .global A_5620ac
        .type   A_5620ac, %function
A_5620ac:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x9c]
        cmp     r0, #0
        beq     L5620f0
        ldrb    r0, [r0, #0x131]
        cmp     r0, #0
        beq     L5620e8
        mov     r0, r4
        bl      Fn_562258
        ldr     r0, [r4, #0x9c]
        bl      Fn_5661a8
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        beq     L5620f0
L5620e8:
        ldr     r0, [r4, #0x9c]
        bl      Fn_565968
L5620f0:
        mov     r0, #0
        str     r0, [r4, #0x9c]
        pop     {r4, pc}
        .size   A_5620ac, . - A_5620ac

@ FUN_005625c8
        .global A_5625c8
        .type   A_5625c8, %function
A_5625c8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0xc]
        cmp     r0, #0
        ldrbne  r0, [r4, #0xd]
        cmpne   r0, #0
        beq     L56265c
        ldrb    r0, [r4, #0xe]
        cmp     r0, #0
        bne     L56262c
        ldrb    r0, [r4, #0x5c]
        mov     r5, #0
        cmp     r0, #0
        beq     L562618
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        moveq   r0, #1
        strbeq  r0, [r4, #0xf]
        beq     L562644
        b       L56262c
L562618:
        mov     r0, r4
        bl      Fn_5620fc
        cmp     r0, #0
        nop
        beq     L562638
L56262c:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_562258
L562638:
        ldrb    r0, [r4, #0xd]
        cmp     r0, #0
        beq     L56265c
L562644:
        nop
        bl      Fn_55e338
        add     r1, r4, #0x50
        nop
        bl      Fn_55ea18
        strb    r5, [r4, #0xd]
L56265c:
        pop     {r4, r5, r6, pc}
        .size   A_5625c8, . - A_5625c8

@ FUN_00562660
        .global A_562660
        .type   A_562660, %function
A_562660:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        mov     r7, r1
        mov     r8, r2
        mov     sb, r3
        vpush   {d8}
        ldrb    r0, [r0, #0xc]
        ldr     r5, [sp, #0x28]
        ldr     r6, [sp, #0x30]
        cmp     r0, #0
        ldrbne  r0, [r4, #0xd]
        vldr    s16, [sp, #0x2c]
        cmpne   r0, #0
        beq     L5626ac
        bl      Fn_55e338
        add     r1, r4, #0x50
        bl      Fn_55ea18
        mov     r1, #0
        strb    r1, [r4, #0xd]
L5626ac:
        add     r0, r4, #0x64
        stm     r0, {r7, r8, sb}
        strb    r5, [r4, #0x70]
        vstr    s16, [r4, #0x74]
        strb    r6, [r4, #0x5f]
        bl      Fn_565778
        add     r1, r4, #0x44
        nop
        bl      Fn_5657cc
        mov     r0, #1
        strb    r0, [r4, #0xc]
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_562660, . - A_562660

@ FUN_005626e0
        .global A_5626e0
        .type   A_5626e0, %function
A_5626e0:
        push    {r4, r5, r6, lr}
        bl      Fn_562844
        mov     r4, r0
        add     r0, r0, #0x44
        ldr     r3, L562740
        mov     r5, #0
        str     r5, [r0, #4]
        str     r5, [r0, #8]
        add     r1, r3, #0x30
        str     r5, [r4, #0x54]
        add     r2, r3, #0x44
        str     r1, [r4, #0x44]
        str     r2, [r4, #0x50]
        str     r3, [r4]
        add     r0, r4, #0x78
        str     r5, [r4, #0x58]
        bl      Fn_557e3c
        strb    r5, [r4, #0x8c]
        strb    r5, [r4, #0x8d]
        strb    r5, [r4, #0x8e]
        strb    r5, [r4, #0x8f]
        mov     r0, r4
        strb    r5, [r4, #0x90]
        pop     {r4, r5, r6, pc}
L562740:
        .word   0x0082cf30
        .size   A_5626e0, . - A_5626e0

@ FUN_00562844
        .global A_562844
        .type   A_562844, %function
A_562844:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L5628d4
        mov     r5, #0
        mov     r1, #1
        str     r0, [r4]
        add     r0, r4, #4
        str     r5, [r4, #4]
        str     r5, [r4, #8]
        bl      Fn_01b240
        strb    r5, [r4, #0xc]
        strb    r5, [r4, #0xd]
        strb    r5, [r4, #0xe]
        vldr    s1, L5628d8
        strb    r5, [r4, #0xf]
        strb    r5, [r4, #0x10]
        vldr    s0, L5628dc
        vstr    s1, [r4, #0x14]
        vstr    s1, [r4, #0x18]
        vstr    s0, [r4, #0x1c]
        vstr    s0, [r4, #0x20]
        add     r0, r4, #0x14
        vstr    s0, [r4, #0x24]
        mov     r1, #0xff
        strb    r5, [r4, #0x2e]
        strb    r1, [r0, #0x18]
        vstr    s0, [r4, #0x28]
        vstr    s0, [r4, #0x30]
        strb    r5, [r4, #0x34]
        strb    r5, [r4, #0x35]
        vstr    s0, [r4, #0x38]
        vstr    s0, [r4, #0x3c]
        add     r0, r4, #4
        bl      Fn_01b404
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L5628d4:
        .word   0x0082cf90
L5628d8:
        .word   0x3f800000
L5628dc:
        .word   0x00000000
        .size   A_562844, . - A_562844

@ FUN_00562918
        .global A_562918
        .type   A_562918, %function
A_562918:
        cmp     r3, #0
        bxeq    lr
        push    {r4, lr}
        mov     r4, r0
        mov     ip, r1
        str     r2, [r4, #4]
        str     r3, [r4, #0xc]
        mov     r0, r2
        mov     r1, r3
        str     ip, [r4]
        bl      Fn_022d48
        bic     r1, r0, #0x1f
        mov     r0, #0
        str     r0, [r4, #0x14]
        str     r1, [r4, #8]
        str     r0, [r4, #0x10]
        pop     {r4, pc}
        .size   A_562918, . - A_562918

@ FUN_0056299c
        .global A_56299c
        .type   A_56299c, %function
A_56299c:
        add     r1, r0, #0xc
        push    {r4, r5}
        ldm     r1, {r1, r2}
        cmp     r1, r2
        ble     L562a10
        add     r1, r1, #7
        bic     r1, r1, #7
        mov     ip, #0
        asr     r2, r1, #0x1f
        add     r1, r1, r2, lsr #29
        asr     r4, r1, #3
        cmp     r4, #0
        ble     L562a10
L5629d0:
        add     r1, r0, ip
        ldrb    r3, [r1, #0x14]
        cmp     r3, #0xff
        movne   r1, #1
        movne   r2, #0
        beq     L562a04
L5629e8:
        tst     r3, r1
        beq     L562a1c
        lsl     r1, r1, #0x19
        add     r2, r2, #1
        cmp     r2, #8
        lsr     r1, r1, #0x18
        blt     L5629e8
L562a04:
        add     ip, ip, #1
        cmp     ip, r4
        blt     L5629d0
L562a10:
        pop     {r4, r5}
        mov     r0, #0
        bx      lr
L562a1c:
        add     r3, r0, ip
        add     r2, r2, ip, lsl #3
        ldrb    ip, [r3, #0x14]
        orr     r1, r1, ip
        strb    r1, [r3, #0x14]
        ldr     r1, [r0, #0x10]
        add     r1, r1, #1
        str     r1, [r0, #0x10]
        ldr     r1, [r0, #8]
        ldr     r0, [r0]
        pop     {r4, r5}
        mla     r0, r1, r2, r0
        bx      lr
        .size   A_56299c, . - A_56299c

@ FUN_00562b5c
        .global A_562b5c
        .type   A_562b5c, %function
A_562b5c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r7, r0
        ldrb    r0, [r0]
        cmp     r0, #0
        bne     L562bcc
        ldr     r0, L562bd0
        mov     r4, r1
        mov     r5, #0
        umull   r1, r0, r0, r2
        lsr     r8, r0, #6
        cmp     r8, #0
        ble     L562bbc
L562b8c:
        movs    r0, r4
        add     r6, r7, #0x10
        moveq   r0, #0
        blne    Fn_55e2d4
        add     r2, r0, #0x58
        add     r1, r6, #4
        mov     r0, r6
        bl      Fn_542230
        add     r5, r5, #1
        cmp     r5, r8
        add     r4, r4, #0x60
        blt     L562b8c
L562bbc:
        mov     r0, #1
        str     r8, [r7, #0x20]
        strb    r0, [r7]
        str     r8, [r7, #0x1c]
L562bcc:
        pop     {r4, r5, r6, r7, r8, pc}
L562bd0:
        .word   0xaaaaaaab
        .size   A_562b5c, . - A_562b5c

@ FUN_00562c98
        .global A_562c98
        .type   A_562c98, %function
A_562c98:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r5, [r0, #8]!
        cmp     r5, r0
        beq     L562cc8
L562cac:
        mov     r0, r5
        ldr     r5, [r5]
        sub     r0, r0, #0x58
        bl      Fn_55d690
        add     r0, r4, #8
        cmp     r5, r0
        bne     L562cac
L562cc8:
        ldr     r5, [r4, #8]
        add     r0, r4, #8
        cmp     r5, r0
        beq     L562cf4
L562cd8:
        mov     r0, r5
        ldr     r5, [r5]
        sub     r0, r0, #0x58
        bl      Fn_55da78
        add     r0, r4, #8
        cmp     r5, r0
        bne     L562cd8
L562cf4:
        ldr     r5, [r4, #8]
        add     r0, r4, #8
        cmp     r5, r0
        beq     L562d20
L562d04:
        mov     r0, r5
        ldr     r5, [r5]
        sub     r0, r0, #0x58
        bl      Fn_55df84
        add     r0, r4, #8
        cmp     r5, r0
        bne     L562d04
L562d20:
        pop     {r4, r5, r6, pc}
        .size   A_562c98, . - A_562c98

@ FUN_00562e60
        .global A_562e60
        .type   A_562e60, %function
A_562e60:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0]
        cmp     r0, #0
        beq     L562efc
L562e74:
        ldr     r0, [r4, #4]
        cmp     r0, #0
        beq     L562ec0
        ldr     r0, [r4, #8]
        sub     r5, r0, #0x58
        mov     r0, r5
        bl      Fn_55dd2c
        ldr     r3, [r5, #0xc]
        cmp     r3, #0
        beq     L562eac
        ldr     r2, [r5, #0x10]
        mov     r1, #1
        mov     r0, r5
        blx     r3
L562eac:
        mov     r0, r5
        bl      Fn_55dcc4
        nop
        nop
        b       L562e74
L562ec0:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        beq     L562ef4
        ldr     r1, [r4, #0x14]
        add     r0, r4, #0x10
        sub     r5, r1, #0x58
        bl      Fn_542154
        mov     r0, r5
        nop
        bl      Fn_55e304
        nop
        nop
        b       L562ec0
L562ef4:
        mov     r0, #0
        strb    r0, [r4]
L562efc:
        pop     {r4, r5, r6, pc}
        .size   A_562e60, . - A_562e60

@ FUN_00562fe4
        .global A_562fe4
        .type   A_562fe4, %function
A_562fe4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r0
        sub     sp, sp, #0x2c
        mov     fp, r2
        ldrb    r0, [r0, #0x50]
        cmp     r0, #0
        beq     L5630f8
        ldr     r0, L563530
        ldrh    r0, [r0, r5]
        cmp     r0, r3
        bne     L563454
        cmp     r1, #0
        mov     r4, #1
        beq     L5630e0
        ldr     r0, [r5, #0x100]
        mov     ip, #0
        cmp     r0, #0
        bls     L563190
L56302c:
        add     r0, ip, ip, lsl #2
        ldr     r3, L563534
        add     r0, r0, ip, lsl #3
        add     r2, r0, r5
        add     r1, ip, ip, lsl #3
        ldrb    r8, [r2, #0xb4]!
        add     r1, r5, r1, lsl #2
        add     r6, r3, #1
        orr     r7, r3, r3, asr #11
        add     r0, r3, #3
        strb    r8, [r3, r1]
        ldrb    r3, [r2, #1]
        strb    r3, [r6, r1]
        ldrb    r3, [r2, #2]
        strb    r3, [r7, r1]
        ldrb    r3, [r2, #4]
        strb    r3, [r0, r1]
        ldrb    r6, [r2, #5]
        orr     r0, r0, r0, asr #12
        add     r3, r0, #1
        strb    r6, [r0, r1]
        ldrb    r0, [r2, #6]
        strb    r0, [r3, r1]
        orr     r0, r3, r3, asr #11
        ldrb    r7, [r2, #7]
        add     r3, r0, #1
        add     r6, r0, #2
        add     r8, r0, #3
        sub     sb, r0, #7
        strb    r7, [r0, r1]
        ldrb    r0, [r2, #8]
        strb    r0, [r3, r1]
        ldrb    r0, [r2, #9]
        strb    r0, [r6, r1]
        ldrb    r0, [r2, #3]
        strb    r0, [r8, r1]
        ldrb    r0, [r2, #0xa]
        strb    r0, [sb, r1]
        ldrb    r0, [r2, #0xa]
        cmp     r0, #0
        beq     L56311c
        and     r0, r0, #1
        cmp     r0, #1
        beq     L563100
        b       L56311c
L5630e0:
        strb    r4, [r5, #0xf]
        ldr     r0, [r5]
        ldr     r1, [r0, #0x14]
        mov     r0, r5
        blx     r1
        mov     r0, #0
L5630f8:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L563100:
        ldrb    r6, [r2, #0xb]
        ldr     r3, L563538
        add     r7, r6, r6, lsl #2
        add     r6, r7, r6, lsl #3
        add     r6, r5, r6, lsl #6
        add     r6, r6, #0x104
        str     r6, [r3, r1]
L56311c:
        ldrb    r3, [r2, #0xa]
        cmp     r3, r0
        ble     L563180
L563128:
        add     r6, r2, r0
        add     r3, r1, r0, lsl #2
        ldrb    r7, [r6, #0xb]
        add     r8, r3, #0x1800
        add     r8, r8, #0x308
        add     r3, r3, #0x1800
        add     sb, r7, r7, lsl #2
        add     r7, sb, r7, lsl #3
        add     r3, r3, #0x30c
        add     r7, r5, r7, lsl #6
        add     r7, r7, #0x104
        str     r7, [r8]
        ldrb    r6, [r6, #0xc]
        add     r0, r0, #2
        add     r7, r6, r6, lsl #2
        add     r6, r7, r6, lsl #3
        add     r6, r5, r6, lsl #6
        add     r6, r6, #0x104
        str     r6, [r3]
        ldrb    r3, [r2, #0xa]
        cmp     r3, r0
        bgt     L563128
L563180:
        ldr     r0, [r5, #0x100]
        add     ip, ip, #1
        cmp     r0, ip
        bhi     L56302c
L563190:
        ldr     r0, [r5, #0x64]
        ldr     r1, [r5, #0xa0]
        mov     r8, #0
        ldr     r0, [r0, #8]
        cmp     r1, #0x2000
        bhi     L563454
        bl      Fn_022d48
        cmp     r0, #4
        str     r0, [r5, #0x68]
        blo     L563454
        cmp     r0, #0x20
        add     r1, r5, #0x68
        movhi   r0, #0x20
        stm     r1, {r0, r8}
        cmp     r4, #0
        str     r8, [r5, #0x70]
        str     r8, [r5, #0x74]
        beq     L563454
        cmp     r0, #0
        mov     r6, #0
        addhi   sl, sp, #8
        str     r8, [r5, #0x5c]
        bls     L56330c
L5631ec:
        ldr     r0, [r5, #0xfc]
        mov     r4, r5
        cmp     r0, #0
        mov     r0, #0
        bls     L563234
L563200:
        ldr     r1, [r4, #0xa0]
        ldr     r3, [r4, #0x6c]
        add     r2, r0, r0, lsl #2
        add     r2, r2, r0, lsl #3
        add     ip, r4, r2, lsl #6
        mul     r2, r1, r3
        ldr     r1, [ip, #0x104]
        add     r1, r1, r2
        str     r1, [sl, r0, lsl #2]
        ldr     r1, [r4, #0xfc]
        add     r0, r0, #1
        cmp     r1, r0
        bhi     L563200
L563234:
        ldrb    r0, [r4, #0x78]
        mov     r3, #0
        cmp     r0, #0
        ldreq   r3, [r4, #0x7c]
        beq     L5632b0
        cmp     r0, #1
        bne     L5632b0
        ldr     sb, [r4, #0x7c]
        ldr     r7, [r4, #0x84]
        mov     r2, #0
        asr     r1, sb, #0x1f
        umull   r0, r3, sb, r7
        mla     r1, r1, r7, r3
        mov     r3, #0
        mla     r1, sb, r2, r1
        mov     r2, #0x3e8
        bl      Fn_022a58
        mvn     r3, #0
        subs    r0, r3, r0
        rscs    r0, r1, #0
        mvnlo   r0, #0
        blo     L5632ac
        umull   r0, r3, sb, r7
        asr     r1, sb, #0x1f
        mov     r2, #0
        mla     r1, r1, r7, r3
        mov     r3, #0
        mla     r1, sb, r2, r1
        mov     r2, #0x3e8
        bl      Fn_022a58
L5632ac:
        mov     r3, r0
L5632b0:
        ldrb    r0, [r4, #0xd]
        str     r8, [r4, #0x7c]
        add     r1, sp, #8
        cmp     r0, #0
        movne   r0, #2
        moveq   r0, #1
        str     r0, [sp]
        ldr     r0, [r4, #0x60]
        ldr     r2, [r4, #0x6c]
        bl      Fn_55f348
        ldr     r0, [r4, #0x6c]
        ldr     r1, [r4, #0x68]
        add     r6, r6, #1
        add     r0, r0, #1
        cmp     r0, r1
        str     r0, [r4, #0x6c]
        strhs   r8, [r4, #0x6c]
        ldr     r1, [r5, #0x5c]
        ldr     r0, [r5, #0x68]
        add     r1, r1, #1
        cmp     r0, r6
        str     r1, [r5, #0x5c]
        bhi     L5631ec
L56330c:
        ldr     r0, [r5, #0xfc]
        mov     r6, #0
        cmp     r0, #0
        ldrhi   r7, L56353c
        bls     L563368
L563320:
        add     r0, r6, r6, lsl #2
        add     r1, r0, r6, lsl #3
        add     r0, r5, r1, lsl #6
        add     r4, r0, #0x104
        bl      Fn_562bd4
        ldr     r3, L563540
        mov     r2, r7
        mov     r1, #1
        str     r4, [sp]
        bl      Fn_562a68
        cmp     r0, #0
        nop
        beq     L5633d4
        str     r0, [r4, #0x30]
        ldr     r0, [r5, #0xfc]
        add     r6, r6, #1
        cmp     r0, r6
        bhi     L563320
L563368:
        ldr     r0, [r5, #0x100]
        mov     sl, #0
        cmp     r0, #0
        bls     L5634e0
L563378:
        add     r0, sl, sl, lsl #3
        mov     r4, #0
        add     r6, r5, r0, lsl #2
        add     r7, r6, #0x1000
        add     r7, r7, #0xb10
        ldrb    r0, [r7]
        cmp     r0, #0
        addgt   r8, r6, #0x1b00
        addgt   r8, r8, #0x1a
        ble     L5634d0
L5633a0:
        add     r0, r6, r4, lsl #2
        add     r0, r0, #0x1800
        add     r0, r0, #0x308
        ldrb    r1, [r8]
        ldr     r0, [r0]
        cmp     r1, #0
        ldr     sb, [r0, #0x30]
        beq     L563460
        cmp     r1, #1
        beq     L563484
        cmp     r1, #2
        bne     L5634c0
        b       L5634a8
L5633d4:
        cmp     r6, #0
        mov     r4, #0
        bls     L563410
L5633e0:
        add     r0, r4, r4, lsl #2
        add     r1, r0, r4, lsl #3
        add     r0, r5, r1, lsl #6
        add     r7, r0, #0x104
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        beq     L563404
        bl      Fn_55dcc4
        str     r8, [r7, #0x30]
L563404:
        add     r4, r4, #1
        cmp     r4, r6
        blo     L5633e0
L563410:
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L563454
L563420:
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        add     r6, r5, r0, lsl #6
        ldr     r1, [r6, #0x104]
        cmp     r1, #0
        beq     L563444
        ldr     r0, [r5, #0x64]
        bl      Fn_56295c
        str     r8, [r6, #0x104]
L563444:
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L563420
L563454:
        add     sp, sp, #0x2c
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L563460:
        mov     r1, #0
        mov     r0, sb
        bl      Fn_55d708
        mov     r1, #0
        mov     r0, sb
        bl      Fn_55d900
        nop
        nop
        b       L5634c0
L563484:
        mov     r1, #1
        mov     r0, sb
        bl      Fn_55d708
        mov     r1, #0
        mov     r0, sb
        bl      Fn_55d900
        nop
        nop
        b       L5634c0
L5634a8:
        mov     r1, #0
        mov     r0, sb
        bl      Fn_55d708
        mov     r1, #1
        mov     r0, sb
        bl      Fn_55d900
L5634c0:
        ldrb    r0, [r7]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L5633a0
L5634d0:
        ldr     r0, [r5, #0x100]
        add     sl, sl, #1
        cmp     r0, sl
        bhi     L563378
L5634e0:
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L563524
L5634f0:
        ldr     r2, [fp, r4, lsl #2]
        cmp     r2, #0
        beq     L563514
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        mov     r1, #0
        add     r0, r5, r0, lsl #6
        ldr     r0, [r0, #0x134]
        bl      Fn_55d6fc
L563514:
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L5634f0
L563524:
        add     sp, sp, #0x2c
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L563530:
        .word   0x00001c94
L563534:
        .word   0x00001b11
L563538:
        .word   0x00001b08
L56353c:
        .word   0x00007fff
L563540:
        .word   0x00663d30
        .size   A_562fe4, . - A_562fe4

@ FUN_00563544
        .global A_563544
        .type   A_563544, %function
A_563544:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r5, #0
        mov     r6, r0
        ldr     r0, [r0, #0xfc]
        cmp     r0, #0
        ldrhi   r7, L5635f8
        bls     L5635a8
L563560:
        add     r0, r5, r5, lsl #2
        add     r0, r0, r5, lsl #3
        add     r0, r6, r0, lsl #6
        add     r4, r0, #0x104
        bl      Fn_562bd4
        ldr     r3, L5635fc
        mov     r2, r7
        mov     r1, #1
        str     r4, [sp]
        bl      Fn_562a68
        cmp     r0, #0
        nop
        beq     L5635b0
        str     r0, [r4, #0x30]
        ldr     r0, [r6, #0xfc]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L563560
L5635a8:
        mov     r0, #1
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L5635b0:
        cmp     r5, #0
        mov     r4, #0
        movhi   r8, #0
        bls     L5635f0
L5635c0:
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        add     r0, r6, r0, lsl #6
        add     r7, r0, #0x104
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        beq     L5635e4
        bl      Fn_55dcc4
        str     r8, [r7, #0x30]
L5635e4:
        add     r4, r4, #1
        cmp     r4, r5
        blo     L5635c0
L5635f0:
        mov     r0, #0
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L5635f8:
        .word   0x00007fff
L5635fc:
        .word   0x00663d30
        .size   A_563544, . - A_563544

@ FUN_00563644
        .global A_563644
        .type   A_563644, %function
A_563644:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        sub     sp, sp, #0x2c
        ldrb    r0, [r0, #0xd]
        cmp     r0, #0
        beq     L563784
        ldr     r0, L5638d0
        ldrb    r0, [r0, r4]
        cmp     r0, #0
        ldrne   r5, [r4, #0x134]
        cmpne   r5, #0
        beq     L563784
        mov     r0, r5
        bl      Fn_639db0
        cmp     r0, #0
        addne   r7, sp, #8
        movne   r6, #0
        beq     L563784
L56368c:
        ldr     r0, [r4, #0x70]
        add     r0, r0, r0, lsl #1
        add     r0, r4, r0, lsl #3
        ldrb    r1, [r0, #0x149]
        cmp     r1, #3
        beq     L56378c
        mov     r0, r5
        bl      Fn_639d9c
        ldr     r1, [r4, #0x70]
        add     r1, r4, r1, lsl #3
        add     r1, r1, #0x1800
        add     r1, r1, #0x394
        ldr     r1, [r1]
        add     r0, r0, r1
        str     r0, [r4, #0x74]
        ldrb    r0, [r4, #0x54]
        cmp     r0, #0
        bne     L563784
        ldr     r0, [r4, #0x60]
        ldrb    r1, [r0, #0x55]
        cmp     r1, #0
        bne     L563784
        ldr     r0, [r0, #0x88]
        cmp     r0, #0
        beq     L563784
        ldr     r2, [r4, #0x68]
        mov     r3, #1
        mov     r0, #0
        cmp     r2, #0
        bls     L563728
L563704:
        add     ip, r0, r0, lsl #1
        add     r1, r4, ip, lsl #3
        ldrb    r1, [r1, #0x149]
        cmp     r1, #2
        cmpne   r1, #1
        beq     L563784
        add     r0, r0, #1
        cmp     r2, r0
        bhi     L563704
L563728:
        strb    r3, [r4, #0x56]
        strb    r3, [r4, #0x54]
        ldrb    r0, [r4, #0x53]
        mov     r5, r4
        mov     r6, #1
        cmp     r0, #1
        beq     L563784
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L563780
L563754:
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
        bhi     L563754
L563780:
        strb    r6, [r5, #0x53]
L563784:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, pc}
L56378c:
        add     r0, r0, #0x138
        bl      Fn_51443c
        ldr     r0, [r4, #0x70]
        ldr     r1, [r4, #0x58]
        add     r0, r4, r0, lsl #3
        add     r0, r0, #0x1800
        add     r0, r0, #0x394
        ldr     r0, [r0, #4]
        add     r0, r0, r1
        str     r0, [r4, #0x58]
        ldr     r1, [r4, #0xfc]
        mov     r0, #0
        cmp     r1, #0
        bls     L5637f8
L5637c4:
        ldr     r2, [r4, #0xa0]
        ldr     r3, [r4, #0x6c]
        add     ip, r0, r0, lsl #2
        add     ip, ip, r0, lsl #3
        add     ip, r4, ip, lsl #6
        mul     r1, r2, r3
        ldr     r2, [ip, #0x104]
        add     r1, r1, r2
        str     r1, [r7, r0, lsl #2]
        ldr     r1, [r4, #0xfc]
        add     r0, r0, #1
        cmp     r1, r0
        bhi     L5637c4
L5637f8:
        ldrb    r0, [r4, #0x78]
        mov     r3, #0
        cmp     r0, #0
        ldreq   r3, [r4, #0x7c]
        beq     L563874
        cmp     r0, #1
        bne     L563874
        ldr     sb, [r4, #0x7c]
        ldr     r8, [r4, #0x84]
        mov     r1, #0
        asr     r2, sb, #0x1f
        umull   r0, r3, sb, r8
        mla     r2, r2, r8, r3
        mov     r3, #0
        mla     r1, sb, r1, r2
        mov     r2, #0x3e8
        bl      Fn_022a58
        mvn     r2, #0
        subs    r0, r2, r0
        rscs    r0, r1, #0
        mvnlo   r0, #0
        blo     L563870
        umull   r0, r3, sb, r8
        asr     r2, sb, #0x1f
        mov     r1, #0
        mla     r2, r2, r8, r3
        mov     r3, #0
        mla     r1, sb, r1, r2
        mov     r2, #0x3e8
        bl      Fn_022a58
L563870:
        mov     r3, r0
L563874:
        ldrb    r0, [r4, #0xd]
        str     r6, [r4, #0x7c]
        add     r1, sp, #8
        cmp     r0, #0
        movne   r0, #2
        moveq   r0, #1
        str     r0, [sp]
        ldr     r0, [r4, #0x60]
        ldr     r2, [r4, #0x6c]
        bl      Fn_55f348
        add     r1, r4, #0x68
        ldm     r1, {r1, r2}
        add     r0, r2, #1
        cmp     r0, r1
        str     r0, [r4, #0x6c]
        strhs   r6, [r4, #0x6c]
        ldr     r0, [r4, #0x70]
        ldr     r1, [r4, #0x68]
        add     r0, r0, #1
        cmp     r0, r1
        str     r0, [r4, #0x70]
        strhs   r6, [r4, #0x70]
        b       L56368c
L5638d0:
        .word   0x00001b04
        .size   A_563644, . - A_563644

@ FUN_005638d4
        .global A_5638d4
        .type   A_5638d4, %function
A_5638d4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r0
        mov     sl, r3
        mov     fp, r2
        vpush   {d8}
        sub     sp, sp, #0xc
        ldrb    r0, [r0, #0x50]
        vldr    s16, [sp, #0x38]
        vldr    s17, [sp, #0x44]
        cmp     r0, #0
        beq     L563a00
        cmp     r1, #0
        beq     L5639e4
        cmp     sl, #0
        beq     L5639b4
        ldr     r0, [r5, #0xfc]
        mov     r4, #0
        cmp     r0, #0
        bls     L5639b4
        add     r0, fp, fp, lsl #1
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x3c]
        sub     r0, sl, r0
        str     r0, [sp]
L563934:
        add     r0, r4, r4, lsl #2
        add     r0, r0, r4, lsl #3
        ldr     r1, [r5, #0xa0]
        add     r7, r5, r0, lsl #6
        ldr     r2, [sp, #0x3c]
        ldr     r0, [r7, #0x104]
        mov     sb, sl
        mla     r8, r1, fp, r0
        cmp     r2, #0
        beq     L563970
        ldrb    r1, [r5, #0x80]
        mov     r0, r2
        bl      Fn_55d258
        ldr     sb, [sp]
        add     r8, r8, r0
L563970:
        ldr     r0, [sp, #4]
        add     r6, r7, r0, lsl #3
        add     r6, r6, #0x138
        mov     r0, r6
        bl      Fn_51443c
        strd    r8, sb, [r6]
        ldr     r0, [sp, #0x40]
        mov     r1, r6
        ldr     r0, [r0, r4, lsl #2]
        str     r0, [r6, #8]
        ldr     r2, [sp, #0x48]
        add     r0, r7, #0x104
        bl      Fn_5612d0
        ldr     r0, [r5, #0xfc]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L563934
L5639b4:
        add     r0, r5, fp, lsl #3
        ldr     r1, [sp, #0x48]
        add     r0, r0, #0x1800
        add     r0, r0, #0x394
        cmp     r1, #0
        vstmia  r0, {s16, s17}
        movne   r0, #1
        strbne  r0, [r5, #0x55]
        ldrb    r0, [r5, #0x51]
        cmp     r0, #0
        beq     L563a0c
        b       L563a30
L5639e4:
        mov     r0, #1
        strb    r0, [r5, #0xf]
        ldr     r0, [r5]
        ldr     r1, [r0, #0x14]
        mov     r0, r5
        blx     r1
        mov     r0, #0
L563a00:
        add     sp, sp, #0xc
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L563a0c:
        ldr     r0, [r5, #0x5c]
        subs    r0, r0, #1
        str     r0, [r5, #0x5c]
        beq     L563a28
        ldrb    r0, [r5, #0x55]
        cmp     r0, #0
        beq     L563a30
L563a28:
        mov     r0, #1
        strb    r0, [r5, #0x51]
L563a30:
        add     sp, sp, #0xc
        mov     r0, #1
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_5638d4, . - A_5638d4

@ FUN_00563a80
        .global A_563a80
        .type   A_563a80, %function
A_563a80:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r1
        mov     r7, r0
        vpush   {d8, d9, d10, d11, d12}
        sub     sp, sp, #0xc
        ldrb    r0, [r1]
        cmp     r0, #0
        beq     L563d10
        ldrb    r1, [r5, #0xd]
        vldr    s19, L563d1c
        add     r0, r7, #0x14
        vmov    s0, r1
        vldmia  r0, {s3, s4}
        ldrb    r0, [r5, #0xe]
        vldr    s5, [r5, #0x18]
        vldr    s1, [r7, #0x1c]
        cmp     r0, #1
        vcvt.f32.u32 s0, s0
        subls   r0, r0, #0x3f
        subhi   r0, r0, #0x40
        vldr    s2, L563d28
        vldr    s6, [r7, #0xf4]
        vldr    s18, L563d20
        vldr    s25, L563d24
        vmul.f32 s24, s6, s4
        vldr    s4, [r5, #0x1c]
        vmul.f32 s0, s0, s19
        vmul.f32 s0, s0, s3
        vldr    s3, L563d2c
        vmul.f32 s23, s5, s0
        vmov    s0, r0
        ldrb    r0, [r5, #0xf]
        cmp     r0, #0x3f
        vcvt.f32.s32 s0, s0
        vmla.f32 s1, s0, s2
        vldr    s0, [r5, #0x20]
        vadd.f32 s16, s4, s1
        bhi     L563b28
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmla.f32 s0, s1, s2
        b       L563b38
L563b28:
        add     r0, r0, #1
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmla.f32 s0, s1, s3
L563b38:
        ldrb    r1, [r5, #0x13]
        vldr    s4, [r7, #0x20]
        ldrsb   r0, [r7, #0x2c]
        vmov    s1, r1
        ldrsb   r8, [r5, #0x14]
        cmn     r0, #1
        vldr    s2, [r7, #0x24]
        movne   r8, r0
        ldrb    r0, [r7, #0xf8]
        vcvt.f32.u32 s5, s1
        vadd.f32 s22, s4, s0
        ldrb    r2, [r5, #0x15]
        ldrb    r1, [r5, #0x10]
        mov     r4, #0
        vmov    s1, r2
        mov     sb, sp
        vmul.f32 s0, s5, s3
        vcvt.f32.u32 s1, s1
        vadd.f32 s21, s2, s0
        vmov    s2, r0
        vmov.f32 s0, s18
        vmul.f32 s17, s1, s19
        vldr    s1, [r7, #0x30]
        vldrne  s17, [r7, #0x28]
        vcvt.f32.u32 s4, s2
        vmov    s2, r1
        vmov.f32 s3, s0
        vcvt.f32.u32 s2, s2
        vnmls.f32 s3, s4, s19
        vnmls.f32 s0, s2, s19
        vadd.f32 s1, s3, s1
        vadd.f32 s20, s0, s1
L563bb8:
        add     r6, sb, r4, lsl #2
        and     r1, r4, #0xff
        vstr    s25, [r6]
        mov     r0, r7
        bl      Fn_639e20
        vldr    s1, [r6]
        add     r0, r7, r4
        add     r1, r5, r4
        vadd.f32 s0, s0, s1
        add     r4, r4, #1
        cmp     r4, #2
        vstr    s0, [r6]
        ldrb    r0, [r0, #0xf9]
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmla.f32 s0, s1, s19
        vstr    s0, [r6]
        ldrb    r0, [r1, #0x11]
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmla.f32 s0, s1, s19
        vstr    s0, [r6]
        blt     L563bb8
        ldrb    r0, [r5, #0xc]
        mov     r6, #0
        cmp     r0, #0
        vaddgt.f32 s19, s16, s18
        vsubgt.f32 s18, s16, s18
        ble     L563d10
L563c2c:
        add     r0, r5, r6, lsl #2
        ldr     r0, [r0, #4]
        ldr     r7, [r0, #0x30]
        cmp     r7, #0
        beq     L563d00
        vmov.f32 s0, s23
        mov     r0, r7
        bl      Fn_55e29c
        vmov.f32 s0, s24
        mov     r0, r7
        bl      Fn_55e23c
        vmov.f32 s0, s21
        mov     r0, r7
        bl      Fn_55d214
        vmov.f32 s0, s17
        mov     r1, r8
        mov     r0, r7
        bl      Fn_55d770
        vmov.f32 s0, s20
        mov     r0, r7
        bl      Fn_55d2c4
        mov     r4, #0
L563c84:
        and     r1, r4, #0xff
        add     r0, sb, r4, lsl #2
        vldr    s0, [r0]
        mov     r0, r7
        bl      Fn_55e260
        add     r4, r4, #1
        cmp     r4, #2
        blt     L563c84
        ldrb    r0, [r5, #0xc]
        cmp     r0, #1
        beq     L563cbc
        cmp     r0, #2
        beq     L563cd4
        b       L563cf4
L563cbc:
        vmov.f32 s0, s16
        mov     r0, r7
        bl      Fn_55df60
        nop
        nop
        b       L563cf4
L563cd4:
        cmp     r6, #0
        vmov.f32 s0, s16
        vmoveq.f32 s0, s18
        beq     L563cec
        cmp     r6, #1
        vmoveq.f32 s0, s19
L563cec:
        mov     r0, r7
        bl      Fn_55df60
L563cf4:
        vmov.f32 s0, s22
        mov     r0, r7
        bl      Fn_55d74c
L563d00:
        ldrb    r0, [r5, #0xc]
        add     r6, r6, #1
        cmp     r0, r6
        bgt     L563c2c
L563d10:
        add     sp, sp, #0xc
        vpop    {d8, d9, d10, d11, d12}
        pop     {r4, r5, r6, r7, r8, sb, pc}
L563d1c:
        .word   0x3c010204
L563d20:
        .word   0x3f800000
L563d24:
        .word   0x00000000
L563d28:
        .word   0x3c820821
L563d2c:
        .word   0x3c800000
        .size   A_563a80, . - A_563a80

@ FUN_00563d30
        .global A_563d30
        .type   A_563d30, %function
A_563d30:
        push    {r4, r5, r6, lr}
        cmp     r1, #0
        cmpne   r1, #1
        mov     r4, r2
        mov     r5, #0
        beq     L563d58
        cmp     r1, #2
        cmpne   r1, #3
        streq   r5, [r2, #0x30]
        pop     {r4, r5, r6, pc}
L563d58:
        nop
        bl      Fn_55dcc4
        str     r5, [r4, #0x30]
        pop     {r4, r5, r6, pc}
        .size   A_563d30, . - A_563d30

@ FUN_00563df0
        .global A_563df0
        .type   A_563df0, %function
A_563df0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0xfc]
        sub     sp, sp, #0x28
        cmp     r0, #0
        mov     r0, #0
        addhi   r3, sp, #8
        bls     L563e44
L563e10:
        ldr     r1, [r4, #0xa0]
        ldr     r2, [r4, #0x6c]
        add     ip, r0, r0, lsl #2
        add     ip, ip, r0, lsl #3
        add     ip, r4, ip, lsl #6
        mul     r1, r1, r2
        ldr     r2, [ip, #0x104]
        add     r1, r1, r2
        str     r1, [r3, r0, lsl #2]
        ldr     r1, [r4, #0xfc]
        add     r0, r0, #1
        cmp     r1, r0
        bhi     L563e10
L563e44:
        ldrb    r0, [r4, #0x78]
        mov     r3, #0
        cmp     r0, #0
        ldreq   r3, [r4, #0x7c]
        beq     L563ec4
        cmp     r0, #1
        bne     L563ec4
        ldr     r6, [r4, #0x7c]
        ldr     r5, [r4, #0x84]
        mov     r1, #0
        asr     r2, r6, #0x1f
        umull   r0, r3, r6, r5
        mla     r2, r2, r5, r3
        mov     r3, #0
        mla     r1, r6, r1, r2
        mov     r2, #0x3e8
        bl      Fn_022a58
        mvn     r3, #0
        subs    r0, r3, r0
        rscs    r0, r1, #0
        mvnlo   r0, #0
        blo     L563ec0
        umull   ip, r2, r6, r5
        asr     r1, r6, #0x1f
        mov     r0, #0
        mla     r1, r1, r5, r2
        mov     r3, r0
        mla     r1, r6, r0, r1
        mov     r2, #0x3e8
        mov     r0, ip
        bl      Fn_022a58
L563ec0:
        mov     r3, r0
L563ec4:
        ldrb    r0, [r4, #0xd]
        mov     r5, #0
        str     r5, [r4, #0x7c]
        cmp     r0, #0
        movne   r0, #2
        moveq   r0, #1
        str     r0, [sp]
        ldr     r0, [r4, #0x60]
        ldr     r2, [r4, #0x6c]
        add     r1, sp, #8
        bl      Fn_55f348
        ldr     r0, [r4, #0x6c]
        ldr     r1, [r4, #0x68]
        add     r0, r0, #1
        cmp     r0, r1
        str     r0, [r4, #0x6c]
        strhs   r5, [r4, #0x6c]
        add     sp, sp, #0x28
        pop     {r4, r5, r6, pc}
        .size   A_563df0, . - A_563df0

@ FUN_00564008
        .global A_564008
        .type   A_564008, %function
A_564008:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        add     r6, sp, #0x24
        mov     r4, r0
        add     r7, sp, #0x34
        ldm     r6, {r0, ip}
        cmp     r2, #8
        ldm     r7, {r6, r8}
        mov     r7, #8
        ldr     r5, [sp, #0x20]
        ldr     sb, [sp, #0x30]
        vldr    s1, [sp, #0x2c]
        movhi   r2, r7
        str     r2, [r4, #0xfc]
        strb    r0, [r4, #0xe8]
        strb    ip, [r4, #0xe9]
        vstr    s1, [r4, #0xec]
        str     sb, [r4, #0xf0]
        vstr    s0, [r4, #0xf4]
        strb    r6, [r4, #0xf8]
        ldrb    r0, [r8]
        cmp     r3, #0
        strb    r0, [r4, #0xf9]
        ldrb    r0, [r8, #1]
        mov     r8, #1
        strb    r0, [r4, #0xfa]
        mov     r0, #0
        beq     L5640a4
L564074:
        tst     r3, #1
        beq     L564098
        cmp     r0, #4
        bhs     L5640a4
        add     r2, r0, r0, lsl #3
        add     r2, r4, r2, lsl #2
        add     r2, r2, #0x1800
        add     r2, r2, #0x304
        strb    r8, [r2]
L564098:
        lsrs    r3, r3, #1
        add     r0, r0, #1
        bne     L564074
L5640a4:
        cmp     r0, #4
        mov     r2, #4
        movhi   r0, r2
        cmp     r0, #0
        str     r0, [r4, #0x100]
        moveq   r0, #2
        beq     L564150
        str     r1, [r4, #0x64]
        ldr     r0, [r4, #0xfc]
        mov     r6, #0
        cmp     r0, #0
        bls     L564108
L5640d4:
        ldr     r0, [r4, #0x64]
        bl      Fn_56299c
        cmp     r0, #0
        nop
        beq     L564154
        add     r1, r6, r6, lsl #2
        add     r2, r1, r6, lsl #3
        add     r6, r6, #1
        add     r1, r4, r2, lsl #6
        str     r0, [r1, #0x104]
        ldr     r0, [r4, #0xfc]
        cmp     r0, r6
        bhi     L5640d4
L564108:
        mov     r0, #0
L56410c:
        add     r1, r0, r0, lsl #2
        add     r1, r1, r0, lsl #3
        add     r2, r1, r5
        add     r1, r1, r4
        ldr     r3, [r2]
        add     r0, r0, #1
        cmp     r0, #4
        str     r3, [r1, #0xb4]!
        ldr     r3, [r2, #4]
        str     r3, [r1, #4]
        ldr     r3, [r2, #8]
        str     r3, [r1, #8]
        ldrb    r2, [r2, #0xc]
        strb    r2, [r1, #0xc]
        blo     L56410c
        mov     r0, #0
        strb    r8, [r4, #0x50]
L564150:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564154:
        mov     sb, #0
        cmp     r6, #0
        mov     r5, sb
        bls     L56418c
L564164:
        add     r0, r5, r5, lsl #2
        add     r0, r0, r5, lsl #3
        add     r7, r4, r0, lsl #6
        ldr     r0, [r4, #0x64]
        ldr     r1, [r7, #0x104]
        bl      Fn_56295c
        add     r5, r5, #1
        cmp     r6, r5
        str     sb, [r7, #0x104]
        bhi     L564164
L56418c:
        mov     r0, r4
        bl      Fn_562830
        mov     r0, #1
        strb    r8, [r4, #0x10]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_564008, . - A_564008

@ FUN_005642f0
        .global A_5642f0
        .type   A_5642f0, %function
A_5642f0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        ldr     r7, [r0, #0x60]
        add     r0, r7, #0x8c
        ldr     r6, [r7, #0x8c]
        cmp     r6, r0
        beq     L564360
L56430c:
        ldrb    r0, [r6, #-0x34]
        sub     r5, r6, #0x48
        ldr     r6, [r6]
        cmp     r0, #3
        bne     L564360
        add     r0, r7, #0x88
        add     r1, r5, #0x48
        bl      Fn_5421f4
        cmp     r5, #0
        add     r8, r7, #0x94
        beq     L564354
        ldr     r0, [r5]
        ldr     r1, [r0]
        mov     r0, r5
        blx     r1
        mov     r1, r5
        mov     r0, r8
        bl      Fn_5667c4
L564354:
        add     r0, r7, #0x8c
        cmp     r6, r0
        bne     L56430c
L564360:
        ldrb    r0, [r4, #0xd]
        cmp     r0, #0
        beq     L5643d8
        ldr     r2, [r4, #0xfc]
        mov     r1, #0
        cmp     r2, #0
        bls     L5643a0
L56437c:
        add     r0, r1, r1, lsl #2
        add     r0, r0, r1, lsl #3
        add     r0, r4, r0, lsl #6
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        beq     L5643fc
        add     r1, r1, #1
        cmp     r2, r1
        bhi     L56437c
L5643a0:
        ldr     r0, [r4, #0x100]
        mov     r5, #0
        cmp     r0, #0
        bls     L5643d8
L5643b0:
        add     r0, r5, r5, lsl #3
        add     r0, r4, r0, lsl #2
        add     r1, r0, #0x1800
        add     r1, r1, #0x304
        mov     r0, r4
        bl      Fn_563a80
        ldr     r0, [r4, #0x100]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L5643b0
L5643d8:
        ldrb    r0, [r4, #0x54]
        mov     r7, #0
        cmp     r0, #0
        beq     L564484
        ldr     r0, [r4, #0x60]
        ldrb    r1, [r0, #0x55]
        cmp     r1, #0
        bne     L564424
        b       L564418
L5643fc:
        ldr     r0, [r4]
        ldr     r1, [r0, #0x14]
        mov     r0, r4
        blx     r1
        mov     r0, #1
        strb    r0, [r4, #0xf]
        pop     {r4, r5, r6, r7, r8, pc}
L564418:
        ldr     r0, [r0, #0x88]
        cmp     r0, #0
        bne     L564484
L564424:
        strb    r7, [r4, #0x54]
        ldrb    r0, [r4, #0xe]
        mov     r6, #0
        cmp     r0, #0
        ldrsb   r0, [r4, #0x53]
        movne   r6, #1
        cmp     r0, r6
        beq     L564484
        ldr     r0, [r4, #0xfc]
        mov     r5, #0
        cmp     r0, #0
        bls     L564480
L564454:
        add     r0, r5, r5, lsl #2
        add     r1, r0, r5, lsl #3
        add     r0, r4, r1, lsl #6
        ldr     r0, [r0, #0x134]
        cmp     r0, #0
        movne   r1, r6
        blne    Fn_55df20
        ldr     r0, [r4, #0xfc]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L564454
L564480:
        strb    r6, [r4, #0x53]
L564484:
        ldrb    r0, [r4, #0x56]
        cmp     r0, #0
        strbne  r7, [r4, #0x56]
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5642f0, . - A_5642f0

@ FUN_005644a8
        .global A_5644a8
        .type   A_5644a8, %function
A_5644a8:
        push    {r4, r5, r6, lr}
        mov     ip, #0
        str     r1, [r0, #0x60]
        ldr     r4, L56456c
        strb    r2, [r0, #0x78]
        str     r3, [r0, #0x7c]
        mov     r5, #1
        strb    ip, [r0, #0x56]
        strb    r5, [r0, #0xc]
        ldrh    r2, [r4]
        add     r3, r0, #0x1c00
        add     r6, r0, #0x80
        add     r5, r2, #1
        strh    r2, [r3, #0x94]
        strh    r5, [r4]
        str     r0, [r1, #0x10]
        str     r6, [r1, #0x18]
        ldrb    r2, [r0, #0xe8]
        mov     r4, r1
        strb    r2, [r1, #0x1c]
        ldr     r2, [r0, #0xfc]
        str     r2, [r1, #0x20]
        ldrb    r2, [r0, #0xe9]
        strb    r2, [r1, #0x24]
        ldr     r2, [r0, #0xec]
        str     r2, [r1, #0x28]
        ldr     r2, [r0, #0xf0]
        str     r2, [r1, #0x2c]
        ldrh    r2, [r3, #0x94]
        strh    r2, [r1, #0x38]
        ldr     r2, [r0, #0xf4]
        str     r2, [r1, #0x30]
        ldrb    r2, [r0, #0xf8]
        strb    r2, [r1, #0x34]
        ldrb    r2, [r0, #0xf9]
        strb    r2, [r1, #0x35]
        ldrb    r0, [r0, #0xfa]
        strb    r0, [r1, #0x36]
        ldr     r0, [r1, #0x14]
        str     r0, [r1]
        str     ip, [r1, #0x58]
        str     r1, [r1, #0x84]
        str     r1, [r1, #0x80]
        bl      Fn_557434
        mov     r2, #1
        add     r1, r4, #0x68
        bl      Fn_557258
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L56456c:
        .word   0x008bb9b0
        .size   A_5644a8, . - A_5644a8

@ FUN_00564634
        .global A_564634
        .type   A_564634, %function
A_564634:
        push    {r4, lr}
        bl      Fn_562844
        ldr     r1, L56467c
        mov     r2, #0
        str     r2, [r0, #0x48]
        str     r1, [r0]
        add     r3, r1, #0x30
        str     r2, [r0, #0x4c]
        str     r3, [r0, #0x44]
        str     r2, [r0, #0xfc]
        str     r2, [r0, #0x100]
        ldr     r1, L564680
        mov     r3, #8
        mov     r2, #0x340
        add     r0, r0, #0x104
        blx     Fn_0000ac_t
        sub     r0, r0, #0x104
        pop     {r4, pc}
L56467c:
        .word   0x0082cfc8
L564680:
        .word   0x006612f0
        .size   A_564634, . - A_564634

@ FUN_00564a98
        .global A_564a98
        .type   A_564a98, %function
A_564a98:
        push    {r4, lr}
        ldrd    r2, r3, [r2, #0x20]
        bl      Fn_685818
        pop     {r4, pc}
        .size   A_564a98, . - A_564a98

@ FUN_00564b20
        .global A_564b20
        .type   A_564b20, %function
A_564b20:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r4, r1
        mov     sb, r2
        ldr     r0, L564ba0
        mov     r5, #0
        ldr     r7, [r0, #4]
        ldr     r8, [r0]
L564b40:
        cmp     r4, #0
        beq     L564b9c
        tst     r4, #1
        beq     L564b8c
        cmp     r5, #0xf
        bgt     L564b8c
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        beq     L564b8c
        add     r2, r0, r7, asr #1
        tst     r7, #1
        ldrne   r0, [r2]
        moveq   r0, r8
        mov     r1, sb
        ldrne   r0, [r0, r8]
        mov     r3, r0
        mov     r0, r2
        blx     r3
L564b8c:
        add     r5, r5, #1
        cmp     r5, #0x10
        lsr     r4, r4, #1
        blt     L564b40
L564b9c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564ba0:
        .word   0x007f3cc4
        .size   A_564b20, . - A_564b20

@ FUN_00564ba8
        .global A_564ba8
        .type   A_564ba8, %function
A_564ba8:
        push    {r4, lr}
        ldrd    r2, r3, [r2, #0x18]
        bl      Fn_685818
        pop     {r4, pc}
        .size   A_564ba8, . - A_564ba8

@ FUN_00564bbc
        .global A_564bbc
        .type   A_564bbc, %function
A_564bbc:
        cmp     r1, #0xf
        addle   r0, r0, r1, lsl #2
        movgt   r0, #0
        ldrle   r0, [r0, #0x90]
        bx      lr
        .size   A_564bbc, . - A_564bbc

@ FUN_00564bfc
        .global A_564bfc
        .type   A_564bfc, %function
A_564bfc:
        ldr     r2, L564c10
        push    {r4, lr}
        ldrd    r2, r3, [r2, #0x10]
        bl      Fn_685818
        pop     {r4, pc}
L564c10:
        .word   0x007f3cc4
        .size   A_564bfc, . - A_564bfc

@ FUN_00564c1c
        .global A_564c1c
        .type   A_564c1c, %function
A_564c1c:
        push    {r4, lr}
        ldrd    r2, r3, [r2, #0x30]
        bl      Fn_685818
        pop     {r4, pc}
        .size   A_564c1c, . - A_564c1c

@ FUN_00564c30
        .global A_564c30
        .type   A_564c30, %function
A_564c30:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r4, r1
        mov     sl, r2
        ldr     r0, L564cb4
        mov     sb, r3
        mov     r5, #0
        ldr     r8, [r0, #8]!
        ldr     r7, [r0, #4]
L564c54:
        cmp     r4, #0
        beq     L564cb0
        tst     r4, #1
        beq     L564ca0
        cmp     r5, #0xf
        bgt     L564ca0
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        beq     L564ca0
        add     r0, r0, r7, asr #1
        tst     r7, #1
        ldrne   r1, [r0]
        moveq   r1, r8
        mov     r2, sb
        ldrne   r1, [r1, r8]
        mov     r3, r1
        mov     r1, sl
        blx     r3
L564ca0:
        add     r5, r5, #1
        cmp     r5, #0x10
        lsr     r4, r4, #1
        blt     L564c54
L564cb0:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564cb4:
        .word   0x007f3cc4
        .size   A_564c30, . - A_564c30

@ FUN_00564cc8
        .global A_564cc8
        .type   A_564cc8, %function
A_564cc8:
        push    {r4, lr}
        ldrd    r2, r3, [r2, #0x40]
        bl      Fn_685818
        pop     {r4, pc}
        .size   A_564cc8, . - A_564cc8

@ FUN_00564d04
        .global A_564d04
        .type   A_564d04, %function
A_564d04:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r1
        mov     sb, r2
        add     r1, r2, sb, lsl #1
        add     r1, r0, r1, lsl #2
        ldrb    r1, [r1, #0x13c]
        cmp     r1, #0
        moveq   r0, #0
        beq     L564d98
        mov     r6, r0
        ldr     r0, L564d9c
        mov     r5, #0
        ldr     r8, [r0, #0x48]!
        ldr     r7, [r0, #4]
L564d3c:
        cmp     r4, #0
        beq     L564d94
        tst     r4, #1
        beq     L564d84
        cmp     r5, #0xf
        bgt     L564d84
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        beq     L564d84
        add     r0, r0, r7, asr #1
        tst     r7, #1
        ldrne   r1, [r0]
        moveq   r1, r8
        ldrne   r1, [r1, r8]
        mov     r2, r1
        mov     r1, sb
        blx     r2
L564d84:
        add     r5, r5, #1
        cmp     r5, #0x10
        lsr     r4, r4, #1
        blt     L564d3c
L564d94:
        mov     r0, #1
L564d98:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564d9c:
        .word   0x007f3cc4
        .size   A_564d04, . - A_564d04

@ FUN_00564da0
        .global A_564da0
        .type   A_564da0, %function
A_564da0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r4, r1
        mov     sb, r2
        ldr     r0, L564e20
        mov     r5, #0
        ldr     r8, [r0, #0x50]!
        ldr     r7, [r0, #4]
L564dc0:
        cmp     r4, #0
        beq     L564e1c
        tst     r4, #1
        beq     L564e0c
        cmp     r5, #0xf
        bgt     L564e0c
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        beq     L564e0c
        add     r2, r0, r7, asr #1
        tst     r7, #1
        ldrne   r0, [r2]
        moveq   r0, r8
        mov     r1, sb
        ldrne   r0, [r0, r8]
        mov     r3, r0
        mov     r0, r2
        blx     r3
L564e0c:
        add     r5, r5, #1
        cmp     r5, #0x10
        lsr     r4, r4, #1
        blt     L564dc0
L564e1c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564e20:
        .word   0x007f3cc4
        .size   A_564da0, . - A_564da0

@ FUN_00564e48
        .global A_564e48
        .type   A_564e48, %function
A_564e48:
        push    {r4, lr}
        ldrd    r2, r3, [r2, #0x28]
        bl      Fn_685818
        pop     {r4, pc}
        .size   A_564e48, . - A_564e48

@ FUN_00564e5c
        .global A_564e5c
        .type   A_564e5c, %function
A_564e5c:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r4, r1
        mov     sb, r2
        ldr     r0, L564ee8
        mov     r5, #0
        vpush   {d8}
        vmov.f32 s16, s0
        ldr     r8, [r0, #0x38]!
        ldr     r7, [r0, #4]
L564e84:
        cmp     r4, #0
        beq     L564ee0
        tst     r4, #1
        beq     L564ed0
        cmp     r5, #0xf
        bgt     L564ed0
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        beq     L564ed0
        add     r0, r0, r7, asr #1
        tst     r7, #1
        ldrne   r1, [r0]
        moveq   r1, r8
        vmov.f32 s0, s16
        ldrne   r1, [r1, r8]
        mov     r2, r1
        mov     r1, sb
        blx     r2
L564ed0:
        add     r5, r5, #1
        cmp     r5, #0x10
        lsr     r4, r4, #1
        blt     L564e84
L564ee0:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564ee8:
        .word   0x007f3cc4
        .size   A_564e5c, . - A_564e5c

@ FUN_00564eec
        .global A_564eec
        .type   A_564eec, %function
A_564eec:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r4, r1
        mov     sb, r2
        ldr     r0, L564f6c
        mov     r5, #0
        ldr     r8, [r0, #0x58]!
        ldr     r7, [r0, #4]
L564f0c:
        cmp     r4, #0
        beq     L564f68
        tst     r4, #1
        beq     L564f58
        cmp     r5, #0xf
        bgt     L564f58
        add     r0, r6, r5, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        beq     L564f58
        add     r2, r0, r7, asr #1
        tst     r7, #1
        ldrne   r0, [r2]
        moveq   r0, r8
        mov     r1, sb
        ldrne   r0, [r0, r8]
        mov     r3, r0
        mov     r0, r2
        blx     r3
L564f58:
        add     r5, r5, #1
        cmp     r5, #0x10
        lsr     r4, r4, #1
        blt     L564f0c
L564f68:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L564f6c:
        .word   0x007f3cc4
        .size   A_564eec, . - A_564eec

@ FUN_00564f70
        .global A_564f70
        .type   A_564f70, %function
A_564f70:
        ldr     r2, L564f98
        mov     r0, #0
        mvn     r1, #0
L564f7c:
        add     r3, r2, r0, lsl #1
        add     r0, r0, #2
        strh    r1, [r3]
        strh    r1, [r3, #2]
        cmp     r0, #0x10
        blt     L564f7c
        bx      lr
L564f98:
        .word   0x009e0124
        .size   A_564f70, . - A_564f70

@ FUN_00565038
        .global A_565038
        .type   A_565038, %function
A_565038:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, r1
        ldr     r1, [r4, #0x88]
        sub     sp, sp, #0x10
        mov     r0, r2
        cmp     r1, #0
        beq     L56509c
        add     r1, r4, #0xd0
        str     r1, [sp]
        ldr     r1, L5650a4
        add     r5, r0, #0x1c
        str     r1, [sp, #4]
        mov     r1, #0
        bl      Fn_5605cc
        str     r0, [sp, #8]
        ldrb    r0, [r5, #8]
        mov     r1, sp
        strb    r0, [sp, #0xc]
        ldr     r3, [r4, #0x88]!
        mov     r0, r6
        ldr     r2, [r4, #4]
        blx     r3
        ldrb    r0, [sp, #0xc]
        strb    r0, [r5, #8]
L56509c:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L5650a4:
        .word   0x009e0124
        .size   A_565038, . - A_565038

@ FUN_005650a8
        .global A_5650a8
        .type   A_5650a8, %function
A_5650a8:
        ldrb    r3, [r0, #0xc]
        cmp     r3, #0
        beq     L5650d8
        cmp     r1, #0
        beq     L5650dc
        cmp     r1, #1
        bne     L5650d8
        vmov    s0, r2
        vldr    s1, [r0, #0x70]
        vcvt.f32.s32 s0, s0
        vadd.f32 s0, s1, s0
        vstr    s0, [r0, #0x70]
L5650d8:
        bx      lr
L5650dc:
        ldr     r1, [r0, #0x6c]
        add     r1, r1, r2
        str     r1, [r0, #0x6c]
        bx      lr
        .size   A_5650a8, . - A_5650a8

@ FUN_0056512c
        .global A_56512c
        .type   A_56512c, %function
A_56512c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r2
        mov     r7, r0
        str     r3, [r0, #0x80]
        movs    r0, r2
        mov     r8, r1
        mov     r5, #0
        beq     L56515c
L56514c:
        tst     r0, #1
        addne   r5, r5, #1
        lsrs    r0, r0, #1
        bne     L56514c
L56515c:
        ldr     r0, [r8]
        ldr     r1, [r0, #0x10]
        mov     r0, r8
        blx     r1
        cmp     r5, r0
        ble     L565188
        ldr     r0, [r7]
        ldr     r1, [r0, #0xc]
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, lr}
        bx      r1
L565188:
        cmp     r4, #0
        mov     r5, #0
        beq     L5651e4
L565194:
        tst     r4, #1
        beq     L5651d8
        ldr     r0, [r8]
        mov     r1, r7
        ldr     r2, [r0, #8]
        mov     r0, r8
        blx     r2
        cmp     r5, #0xf
        mov     r6, r0
        mov     r1, r5
        bgt     L5651d8
        add     r0, r7, r1, lsl #2
        str     r6, [r0, #0x90]
        mov     r0, r6
        strb    r1, [r0, #4]
        ldrb    r0, [r7, #0x2e]
        strb    r0, [r6, #0x79]
L5651d8:
        lsrs    r4, r4, #1
        add     r5, r5, #1
        bne     L565194
L5651e4:
        str     r8, [r7, #0x84]
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_56512c, . - A_56512c

@ FUN_0056520c
        .global A_56520c
        .type   A_56520c, %function
A_56520c:
        mov     ip, r0
        push    {r4, r5}
        ldr     r0, [r0, #0x80]
        mov     r5, r1
        mov     r3, r2
        mov     r2, r5
        ldr     r1, [r0]
        ldr     r4, [r1, #8]
        mov     r1, ip
        mov     ip, r4
        pop     {r4, r5}
        bx      ip
        .size   A_56520c, . - A_56520c

@ FUN_0056523c
        .global A_56523c
        .type   A_56523c, %function
A_56523c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0xc]
        cmp     r0, #0
        ldrbne  r0, [r5, #0xd]
        cmpne   r0, #0
        beq     L5652c4
        ldr     r0, [r5, #0x6c]
        cmp     r0, #0
        bne     L565278
        vldr    s0, [r5, #0x70]
        vldr    s1, L5652c8
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        ble     L56528c
L565278:
        mov     r0, r5
        bl      Fn_5653c4
        nop
        nop
        b       L56529c
L56528c:
        ldrb    r0, [r5, #0xe]
        cmp     r0, #0
        moveq   r0, r5
        bleq    Fn_564854
L56529c:
        mov     r4, #0
L5652a0:
        cmp     r4, #0xf
        bgt     L5652b8
        add     r0, r5, r4, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        blne    Fn_5606b4
L5652b8:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L5652a0
L5652c4:
        pop     {r4, r5, r6, pc}
L5652c8:
        .word   0x00000000
        .size   A_56523c, . - A_56523c

@ FUN_005652cc
        .global A_5652cc
        .type   A_5652cc, %function
A_5652cc:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r7, r2
        ldr     r4, [r0, #0x90]
        ldr     r2, [sp, #0x1c]
        ldr     r6, [sp, #0x18]
        cmp     r4, #0
        mov     r8, r3
        beq     L565350
        mov     r0, r4
        bl      Fn_5603ac
        mov     r0, r4
        bl      Fn_560b44
        mov     r4, #0
L565304:
        add     r0, r4, r4, lsl #1
        ldr     r1, [r7, r4, lsl #2]
        add     r0, r5, r0, lsl #2
        add     r0, r0, #0x134
        bl      Fn_5591b4
        add     r0, r5, r4, lsl #4
        ldrsb   r2, [r6, r4]
        ldr     r1, [r8, r4, lsl #2]
        add     r0, r0, #0xf4
        bl      Fn_55c548
        add     r4, r4, #1
        cmp     r4, #4
        blo     L565304
        bl      Fn_565778
        add     r1, r5, #0x44
        nop
        bl      Fn_5657cc
        mov     r0, #1
        strb    r0, [r5, #0xc]
L565350:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5652cc, . - A_5652cc

@ FUN_00565614
        .global A_565614
        .type   A_565614, %function
A_565614:
        push    {r4, lr}
        bl      Fn_562844
        ldr     r3, L5656b8
        mov     r4, #0
        str     r4, [r0, #0x48]
        str     r4, [r0, #0x4c]
        add     r1, r3, #0x34
        str     r4, [r0, #0x54]
        str     r1, [r0, #0x44]
        add     r2, r3, #0x48
        str     r2, [r0, #0x50]
        str     r3, [r0]
        str     r4, [r0, #0x58]
        strh    r4, [r0, #0x7a]
        mov     r2, #0x7f
        strh    r4, [r0, #0x7c]
        strb    r2, [r0, #0x78]
        strb    r2, [r0, #0x79]
        ldr     r1, L5656bc
        mov     r3, #4
        mov     r2, #0x10
        add     r0, r0, #0xf4
        blx     Fn_0000ac_t
        ldr     r1, L5656c0
        mov     r3, #4
        mov     r2, #0xc
        add     r0, r0, #0x40
        blx     Fn_0000ac_t
        mov     r2, #0
        sub     r0, r0, #0x134
        mov     r1, r2
L565690:
        add     r3, r0, r2, lsl #2
        add     r2, r2, #1
        add     r1, r1, #2
        add     ip, r0, r2, lsl #2
        str     r4, [r3, #0x90]
        cmp     r1, #0x10
        add     r2, r2, #1
        str     r4, [ip, #0x90]
        blt     L565690
        pop     {r4, pc}
L5656b8:
        .word   0x0082d014
L5656bc:
        .word   0x0065c750
L5656c0:
        .word   0x0065928c
        .size   A_565614, . - A_565614

@ FUN_005657e4
        .global A_5657e4
        .type   A_5657e4, %function
A_5657e4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r7, r1
        add     r8, r1, r2
        ldr     sl, L5658e8
        ldr     r6, L5658ec
        mov     sb, #0
        ldr     r0, [sl]
        tst     r0, #1
        bne     L565830
        add     r0, sl, #0
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L565830
        sub     r0, r6, #4
        str     r6, [r0, #4]
        str     r6, [r0, #8]
        str     sb, [r0]
        add     r0, sl, #0
        mov     r0, r0
L565830:
        ldr     r0, L5658f0
        ldr     r4, [r0, #4]
        ldr     r0, [sl]
        tst     r0, #1
        bne     L565870
        ldr     r0, L5658e8
        blx     Fn_203d64_t
        cmp     r0, #0
        nop
        beq     L565870
        ldr     r0, L5658f0
        str     r6, [r0, #4]
        str     r6, [r0, #8]
        str     sb, [r0]
        ldr     r0, L5658e8
        mov     r0, r0
L565870:
        ldr     r0, L5658ec
        cmp     r4, r0
        beq     L5658e4
L56587c:
        sub     r1, r4, #4
        mov     r0, r4
        ldm     r1, {r1, r4}
        sub     r0, r0, #4
        mov     r2, r8
        ldr     r3, [r1, #8]
        mov     r1, r7
        blx     r3
        ldr     r0, [sl]
        mov     r5, r4
        tst     r0, #1
        bne     L5658d8
        ldr     r0, L5658e8
        blx     Fn_203d64_t
        cmp     r0, #0
        nop
        beq     L5658d8
        ldr     r0, L5658f0
        str     r6, [r0, #4]
        str     r6, [r0, #8]
        str     sb, [r0]
        ldr     r0, L5658e8
        mov     r0, r0
L5658d8:
        ldr     r0, L5658ec
        cmp     r5, r0
        bne     L56587c
L5658e4:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5658e8:
        .word   0x008bb9ac
L5658ec:
        .word   0x00a76d44
L5658f0:
        .word   0x00a76d40
        .size   A_5657e4, . - A_5657e4

@ FUN_00565a28
        .global A_565a28
        .type   A_565a28, %function
A_565a28:
        vstr    s0, [r0, #0x160]
        mov     r3, #0
        str     r1, [r0, #0x168]
        str     r3, [r0, #0x164]
        strb    r2, [r0, #0x133]
        bx      lr
        .size   A_565a28, . - A_565a28

@ FUN_00565ca4
        .global A_565ca4
        .type   A_565ca4, %function
A_565ca4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x1a0]
        cmp     r0, #0
        beq     L565d10
        bl      Fn_55dd2c
        ldr     r0, [r4, #0x1a0]
        bl      Fn_55dcc4
        ldr     r3, [r4, #0x198]
        mov     r5, #0
        str     r5, [r4, #0x1a0]
        strb    r5, [r4, #0x130]
        cmp     r3, #0
        strb    r5, [r4, #0x131]
        beq     L565cf0
        ldr     r2, [r4, #0x19c]
        mov     r1, #0
        mov     r0, r4
        blx     r3
L565cf0:
        ldrb    r0, [r4, #0x132]
        cmp     r0, #0
        beq     L565d10
        strb    r5, [r4, #0x132]
        bl      Fn_561354
        mov     r1, r4
        pop     {r4, r5, r6, lr}
        b       Fn_561480
L565d10:
        pop     {r4, r5, r6, pc}
        .size   A_565ca4, . - A_565ca4

@ FUN_00565dbc
        .global A_565dbc
        .type   A_565dbc, %function
A_565dbc:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, r1
        vpush   {d8, d9, d10}
        ldrb    r0, [r0, #0x131]
        cmp     r0, #0
        beq     L566138
        ldrb    r0, [r4, #0x130]
        cmp     r0, #0
        add     r0, r4, #0x17c
        movne   r6, #0
        ldrh    r2, [r0, #2]
        ldrh    r1, [r0, #4]
        cmp     r1, r2
        addlo   r1, r1, #1
        strhlo  r1, [r0, #4]
        uxth    r2, r1
        ldrh    r1, [r0, #2]
        cmp     r2, r1
        ldrbhs  r0, [r0, #1]
        bhs     L565e2c
        ldrb    r3, [r0, #1]
        ldrb    r5, [r0]
        sub     r0, r3, r5
        mul     r0, r0, r2
        bl      Fn_1ff06c
        add     r0, r0, r5
        and     r0, r0, #0xff
L565e2c:
        vmov    s0, r0
        vldr    s2, [r4, #0x16c]
        vldr    s1, [r4, #0x138]
        vldr    s3, L566140
        ldrb    r0, [r4, #0x90]
        vmul.f32 s1, s2, s1
        vcvt.f32.u32 s0, s0
        cmp     r0, #4
        vmul.f32 s0, s0, s3
        vmul.f32 s17, s0, s1
        bne     L565edc
        add     r0, r4, #0x90
        bl      Fn_6370e4
        ldr     r1, L566144
        vmov    r0, s0
        cmp     r0, r1
        bls     L565edc
        ldr     r0, [r4, #0x1a0]
        cmp     r0, #0
        beq     L566138
        bl      Fn_55dd2c
        ldr     r0, [r4, #0x1a0]
        nop
        bl      Fn_55dcc4
        ldr     r3, [r4, #0x198]
        mov     r5, #0
        str     r5, [r4, #0x1a0]
        strb    r5, [r4, #0x130]
        cmp     r3, #0
        strb    r5, [r4, #0x131]
        beq     L565eb8
        ldr     r2, [r4, #0x19c]
        mov     r1, #0
        mov     r0, r4
        blx     r3
L565eb8:
        ldrb    r0, [r4, #0x132]
        cmp     r0, #0
        beq     L566138
        strb    r5, [r4, #0x132]
        bl      Fn_561354
        vpop    {d8, d9, d10}
        mov     r1, r4
        pop     {r4, r5, r6, lr}
        b       Fn_561480
L565edc:
        vldr    s0, L566148
        vldr    s1, [r4, #0x160]
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        beq     L565f1c
        ldr     r0, [r4, #0x168]
        ldr     r1, [r4, #0x164]
        cmp     r0, r1
        ble     L565f1c
        sub     r1, r0, r1
        vmov    s0, r0
        vmov    s2, r1
        vcvt.f32.s32 s3, s0
        vcvt.f32.s32 s0, s2
        vmul.f32 s1, s0, s1
        vdiv.f32 s0, s1, s3
L565f1c:
        ldrb    r0, [r4, #0x192]
        ldrb    r1, [r4, #0x193]
        vldr    s2, [r4, #0x15c]
        mov     r5, #0
        sub     r0, r0, r1
        vmov    s1, r0
        vcvt.f32.s32 s1, s1
        vadd.f32 s0, s0, s1
        vadd.f32 s16, s0, s2
L565f40:
        add     r0, r4, r5
        ldrb    r0, [r0, #0x12c]
        cmp     r0, #0
        bne     L565f60
        add     r0, r4, r5, lsl #5
        add     r0, r0, #0xac
        bl      Fn_63b868
        vadd.f32 s16, s0, s16
L565f60:
        add     r5, r5, #1
        cmp     r5, #4
        blt     L565f40
        vldr    s0, [r4, #0x184]
        vcmp.f32 s0, s16
        vmrs    apsr_nzcv, fpscr
        vldreq  s0, [r4, #0x188]
        beq     L565f9c
        vldr    s0, L56614c
        vmul.f32 s0, s16, s0
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        bl      Fn_55cb74
        vstr    s16, [r4, #0x184]
        vstr    s0, [r4, #0x188]
L565f9c:
        vldr    s1, [r4, #0x178]
        vldr    s4, [r4, #0x13c]
        vldr    s2, [r4, #0x170]
        vldr    s3, [r4, #0x140]
        vmul.f32 s1, s1, s4
        mov     r5, #0
        vadd.f32 s16, s2, s3
        vmul.f32 s18, s1, s0
L565fbc:
        add     r0, r4, r5
        ldrb    r0, [r0, #0x12c]
        cmp     r0, #2
        bne     L565fdc
        add     r0, r4, r5, lsl #5
        add     r0, r0, #0xac
        bl      Fn_63b868
        vadd.f32 s16, s0, s16
L565fdc:
        add     r5, r5, #1
        cmp     r5, #4
        blt     L565fbc
        vldr    s0, [r4, #0x174]
        vldr    s1, [r4, #0x144]
        cmp     r6, #0
        vadd.f32 s19, s0, s1
        beq     L566050
        ldrb    r0, [r4, #0x133]
        cmp     r0, #0
        beq     L566024
        add     r0, r4, #0x164
        ldm     r0, {r0, r1}
        add     r0, r0, #5
        cmp     r0, r1
        movle   r1, r0
        str     r0, [r4, #0x164]
        str     r1, [r4, #0x164]
L566024:
        mov     r5, #0
L566028:
        mov     r1, #5
        add     r0, r4, r5, lsl #5
        add     r0, r0, #0xac
        bl      Fn_56662c
        add     r5, r5, #1
        cmp     r5, #4
        blt     L566028
        mov     r1, #5
        add     r0, r4, #0x90
        bl      Fn_556454
L566050:
        vldr    s0, [r4, #0x148]
        vldr    s1, L566150
        add     r0, r4, #0x90
        vadd.f32 s20, s0, s1
        bl      Fn_6370e4
        nop
        nop
        bl      Fn_55cca0
        vmul.f32 s17, s0, s17
        vldr    s21, L566154
        mov     r5, #0
L56607c:
        add     r0, r4, r5
        ldrb    r0, [r0, #0x12c]
        cmp     r0, #1
        bne     L5660a8
        add     r0, r4, r5, lsl #5
        add     r0, r0, #0xac
        bl      Fn_63b868
        vmul.f32 s0, s0, s21
        nop
        bl      Fn_55cca0
        vmul.f32 s17, s0, s17
L5660a8:
        add     r5, r5, #1
        cmp     r5, #4
        blt     L56607c
        ldr     r0, [r4, #0x1a0]
        cmp     r0, #0
        beq     L566138
        vmov.f32 s0, s17
        bl      Fn_55e29c
        vmov.f32 s0, s18
        ldr     r0, [r4, #0x1a0]
        bl      Fn_55e23c
        vmov.f32 s0, s16
        ldr     r0, [r4, #0x1a0]
        bl      Fn_55df60
        vmov.f32 s0, s19
        ldr     r0, [r4, #0x1a0]
        bl      Fn_55d74c
        vmov.f32 s0, s20
        ldr     r0, [r4, #0x1a0]
        bl      Fn_55d214
        ldrb    r1, [r4, #0x136]
        ldr     r0, [r4, #0x1a0]
        vldr    s0, [r4, #0x14c]
        bl      Fn_55d770
        ldr     r0, [r4, #0x1a0]
        vldr    s0, [r4, #0x150]
        bl      Fn_55d2c4
        mov     r5, #0
L566118:
        ldr     r0, [r4, #0x1a0]
        add     r2, r4, r5, lsl #2
        and     r1, r5, #0xff
        vldr    s0, [r2, #0x154]
        bl      Fn_55e260
        add     r5, r5, #1
        cmp     r5, #2
        blt     L566118
L566138:
        vpop    {d8, d9, d10}
        pop     {r4, r5, r6, pc}
L566140:
        .word   0x3b808081
L566144:
        .word   0xc2b4cccd
L566148:
        .word   0x00000000
L56614c:
        .word   0x43800000
L566150:
        .word   0x3f800000
L566154:
        .word   0x40c00000
        .size   A_565dbc, . - A_565dbc

@ FUN_0056662c
        .global A_56662c
        .type   A_56662c, %function
A_56662c:
        ldr     r2, [r0, #8]
        ldr     r3, [r0, #0x10]
        cmp     r3, r2
        bhs     L566658
        add     ip, r3, r1
        cmp     ip, r2
        strls   ip, [r0, #0x10]
        bls     L5666d8
        sub     r3, r2, r3
        sub     r1, r1, r3
        str     r2, [r0, #0x10]
L566658:
        vldr    s1, [r0, #4]
        vldr    s0, L5666dc
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        ble     L5666d8
        ldrb    r3, [r0, #0x1c]
        mov     r2, #1
        cmp     r3, #0
        bne     L566698
        ldrb    r3, [r0, #0xe]
        vldr    s2, L5666e0
        strb    r2, [r0, #0x1c]
        vmov    s0, r3
        vcvt.f32.u32 s0, s0
        vmul.f32 s0, s0, s2
        vstr    s0, [r0, #0x14]
L566698:
        vmov    s2, r1
        vldr    s3, L5666e4
        vldr    s0, [r0, #0x14]
        vcvt.f32.s32 s2, s2
        vmul.f32 s2, s2, s3
        vmla.f32 s0, s1, s2
        vmov    r1, s0
        vcvt.s32.f32 s1, s0
        vstr    s0, [r0, #0x14]
        cmp     r1, #0x3f800000
        movlt   r1, #0
        strbge  r2, [r0, #0x1d]
        strblt  r1, [r0, #0x1d]
        vcvt.f32.s32 s1, s1
        vsub.f32 s0, s0, s1
        vstr    s0, [r0, #0x14]
L5666d8:
        bx      lr
L5666dc:
        .word   0x00000000
L5666e0:
        .word   0x3c010204
L5666e4:
        .word   0x3a83126f
        .size   A_56662c, . - A_56662c

@ FUN_00566724
        .global A_566724
        .type   A_566724, %function
A_566724:
        add     r0, r0, #8
        mov     r3, #0x138
        mov     r0, r0
        .size   A_566724, . - A_566724

@ FUN_00566730
        .global A_566730
        .type   A_566730, %function
A_566730:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        add     r0, r1, #3
        bic     r4, r0, #3
        add     r0, r3, #3
        bic     r6, r0, #3
        sub     r0, r4, r1
        sub     r0, r2, r0
        mov     r1, r6
        bl      Fn_022d48
        subs    r1, r0, #0
        mov     r0, #0
        bls     L566780
L566764:
        ldr     r2, [r5]
        add     r0, r0, #1
        cmp     r1, r0
        str     r2, [r4]
        str     r4, [r5]
        add     r4, r4, r6
        bhi     L566764
L566780:
        mov     r0, r1
        pop     {r4, r5, r6, pc}
        .size   A_566730, . - A_566730

@ FUN_00566810
        .global A_566810
        .type   A_566810, %function
A_566810:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, [r0]
        mov     r2, #4
        mov     r1, #0x18
        bl      Fn_542454
        cmp     r0, #0
        beq     L566898
        mov     r1, #0
        str     r1, [r0]
        str     r1, [r0, #4]
        str     r1, [r0, #8]
        str     r1, [r0, #0xc]
        str     r1, [r0, #0x10]
        mov     r4, r0
        str     r1, [r0, #0x14]
        str     r1, [r0]
        str     r1, [r0, #4]!
        add     r0, r0, #4
        add     r3, r4, #8
        add     r2, r0, #4
        stm     r3, {r1, r2}
        str     r2, [r0, #8]
        mov     r0, #1
        strb    r0, [r4, #0x14]
        ldr     r1, [r4, #0xc]
        add     r2, r4, #0xc
        add     r0, r4, #8
        bl      Fn_5421a0
        add     r0, r5, #4
        add     r1, r5, #8
        mov     r2, r4
        bl      Fn_542230
        mov     r0, #1
L566898:
        pop     {r4, r5, r6, pc}
        .size   A_566810, . - A_566810

@ FUN_00566aa4
        .global A_566aa4
        .type   A_566aa4, %function
A_566aa4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0]
        mov     r5, r1
        mov     r6, r2
        cmp     r0, #0
        beq     L566ae4
        mov     r0, r4
        bl      Fn_56689c
        ldr     r0, [r4]
        mov     r1, #3
        bl      Fn_541ee0
        ldr     r0, [r4]
        bl      Fn_5425a0
        mov     r1, #0
        str     r1, [r4]
L566ae4:
        add     r0, r5, #3
        add     r1, r5, r6
        bic     r0, r0, #3
        cmp     r0, r1
        movhi   r0, #0
        bhi     L566b24
        sub     r1, r1, r0
        mov     r2, #0
        bl      Fn_54250c
        cmp     r0, #0
        str     r0, [r4]
        beq     L566b24
        mov     r0, r4
        bl      Fn_566810
        cmp     r0, #0
        movne   r0, #1
L566b24:
        pop     {r4, r5, r6, pc}
        .size   A_566aa4, . - A_566aa4

@ FUN_00566b64
        .global A_566b64
        .type   A_566b64, %function
A_566b64:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        movs    r7, r1
        beq     L566bd4
        bl      Fn_566934
        mov     r8, r0
        mov     sb, #0
L566b80:
        ldr     r0, [r6, #4]
        cmp     r0, r7
        ble     L566c1c
        ldr     r5, [r6, #0xc]
        cmp     r8, #0
        strbne  sb, [r5, #0x14]
        ldrb    r0, [r5, #0x14]
        cmp     r0, #0
        addne   r4, r5, #0xc
        beq     L566bf4
L566ba8:
        ldr     r0, [r5, #0xc]
        cmp     r4, r0
        beq     L566bf4
        ldr     r4, [r4, #4]
        ldr     r3, [r4, #0x10]
        cmp     r3, #0
        beq     L566ba8
        ldr     r2, [r4, #0x14]
        ldrd    r0, r1, [r4, #8]
        blx     r3
        b       L566ba8
L566bd4:
        nop
        bl      Fn_56689c
        ldr     r0, [r6]
        mov     r1, #3
        bl      Fn_541ee0
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_566810
L566bf4:
        ldr     r1, [r5, #0xc]
        add     r2, r5, #0xc
        add     r0, r5, #8
        bl      Fn_5421a0
        mov     r1, r5
        add     r0, r6, #4
        bl      Fn_5421f4
        nop
        nop
        b       L566b80
L566c1c:
        ldr     r0, [r6]
        mov     r1, r7
        bl      Fn_542324
        ldrd    r0, r1, [r6]
        nop
        bl      Fn_5423c8
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_566810
        .size   A_566b64, . - A_566b64

@ FUN_00566c88
        .global A_566c88
        .type   A_566c88, %function
A_566c88:
        mov     r2, #0
        add     r3, r0, #8
        str     r2, [r0]
        strd    r2, r3, [r0, #4]
        str     r3, [r0, #0xc]
        bx      lr
        .size   A_566c88, . - A_566c88

@ FUN_00566e40
        .global A_566e40
        .type   A_566e40, %function
A_566e40:
        push    {r4, lr}
        bl      Fn_55c93c
        ldr     r2, L566e74
        mov     r1, #0
        str     r1, [r0, #0x1c]
        str     r2, [r0]
        str     r1, [r0, #0x20]
        str     r1, [r0, #0x24]
        mvn     r3, #0
        str     r1, [r0, #0x28]
        str     r3, [r0, #0x34]
        str     r1, [r0, #0x38]
        pop     {r4, pc}
L566e74:
        .word   0x0082d0c0
        .size   A_566e40, . - A_566e40

@ FUN_00567308
        .global A_567308
        .type   A_567308, %function
A_567308:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        bl      Fn_5562ac
        ldr     r1, L567380
        str     r1, [r0], #0x104
        bl      Fn_5626e0
        sub     r0, r0, #0x104
        str     r4, [r0, #0x1a8]!
        add     r0, r0, #4
        bl      Fn_55c93c
        ldr     r1, L567384
        mov     r4, #0
        mvn     r5, #0
        str     r1, [r0]
        str     r4, [r0, #0x1c]
        str     r4, [r0, #0x20]
        str     r4, [r0, #0x24]
        str     r4, [r0, #0x28]
        str     r5, [r0, #0x34]
        str     r4, [r0, #0x38]!
        add     r0, r0, #8
        bl      Fn_55c1e8
        sub     r0, r0, #0x1ec
        str     r4, [r0, #0x45c]
        str     r4, [r0, #0x460]
        str     r4, [r0, #0x464]
        strb    r4, [r0, #0x469]
        strb    r4, [r0, #0x46a]
        strb    r5, [r0, #0x46b]
        pop     {r4, r5, r6, pc}
L567380:
        .word   0x0082d0d4
L567384:
        .word   0x0082d0c0
        .size   A_567308, . - A_567308

@ FUN_005674e8
        .global A_5674e8
        .type   A_5674e8, %function
A_5674e8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        add     r5, r0, #4
        mov     r6, r1
        mov     r7, r2
        mov     r0, r5
        bl      Fn_0244c8
        mov     r2, r7
        mov     r1, r6
        add     r0, r4, #0x10
        bl      Fn_566aa4
        mov     r4, r0
        mov     r0, r5
        bl      Fn_024568
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_5674e8, . - A_5674e8

@ FUN_00567528
        .global A_567528
        .type   A_567528, %function
A_567528:
        ldr     r1, L567564
        push    {r4, lr}
        mov     r2, #0
        str     r1, [r0]
        add     r1, r0, #4
        str     r2, [r0, #4]
        mvn     r3, #0
        strd    r2, r3, [r1, #4]
        add     r0, r0, #0x10
        bl      Fn_566c88
        sub     r4, r0, #0x10
        sub     r0, r0, #0xc
        bl      Fn_01b624
        mov     r0, r4
        pop     {r4, pc}
L567564:
        .word   0x0082d110
        .size   A_567528, . - A_567528

@ FUN_005676b4
        .global A_5676b4
        .type   A_5676b4, %function
A_5676b4:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r1
        mov     r4, r0
        sub     sp, sp, #0xc
        ldrb    r3, [r1, #7]
        ldrh    r7, [r1, #0xe]
        ldrh    r6, [r5, #0xc]
        ldrh    ip, [r5, #8]
        ldrh    r0, [r5, #0xa]
        ldrb    r1, [r1, #5]
        vmov    s2, ip
        sub     r8, r0, r7
        add     sb, r6, r1
        vmov    s1, r0
        vmov    s5, sb
        vmov    s4, r8
        vcvt.f32.u32 s13, s2
        vcvt.f32.u32 s11, s2
        add     r7, r7, r3
        sub     r7, r0, r7
        vcvt.f32.u32 s5, s5
        vmov    s3, r6
        vmov    s6, r7
        vcvt.f32.s32 s2, s4
        vcvt.f32.u32 s12, s1
        vcvt.f32.u32 s9, s1
        add     r0, r4, #0x24
        vcvt.f32.u32 s10, s3
        vcvt.f32.s32 s14, s6
        ldr     r2, [r4, #0x44]
        vdiv.f32 s4, s5, s11
        vldmia  r0, {s7, s8}
        cmp     r2, #0
        vldr    s1, [r4, #0x30]
        vdiv.f32 s3, s10, s13
        vdiv.f32 s5, s2, s12
        vdiv.f32 s6, s14, s9
        beq     L5677d4
        rsb     r0, r3, #0
        vmov    s2, r1
        vmov    s9, r0
        ldr     r3, [r2]
        ldrh    r0, [r2, #4]
        vcvt.f32.u32 s2, s2
        vcvt.f32.s32 s9, s9
        cmp     r3, r0
        vmul.f32 s2, s2, s7
        vmul.f32 s7, s9, s8
        bls     L5677cc
        add     r1, r0, #1
        add     r3, r0, r0, lsl #1
        strh    r1, [r2, #4]
        add     r1, r3, r0, lsl #3
        ldr     r0, [r4, #0x44]
        add     r0, r0, r1, lsl #2
        add     r0, r0, #0x28
        add     r1, r0, #8
        vstr    s2, [r0]
        vstr    s7, [r0, #4]
        vstmia  r1, {s0, s1}
        ldr     r1, [r4, #0x18]
        str     r1, [r0, #0x10]
        ldr     r1, [r4, #0x1c]
        str     r1, [r0, #0x14]
        vstr    s3, [r0, #0x18]
        vstr    s5, [r0, #0x1c]
        vstr    s4, [r0, #0x20]
        vstr    s6, [r0, #0x24]
        ldr     r1, [r5, #0x14]
        str     r1, [r0, #0x28]
L5677cc:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L5677d4:
        vmov    s9, r1
        vmov    s2, r3
        ldr     r0, [r4, #0x40]
        ldr     r7, L567998
        add     r0, r0, #8
        vcvt.f32.u32 s10, s9
        vcvt.f32.u32 s9, s2
        vmov.f32 s2, s0
        vmla.f32 s2, s10, s7
        vmov.f32 s7, s1
        vmla.f32 s7, s9, s8
        vstr    s2, [r0]
        vstr    s1, [r0, #4]
        vstr    s0, [r0, #0x14]
        vstr    s1, [r0, #0x18]
        vstr    s0, [r0, #0x28]
        vstr    s7, [r0, #0x2c]
        vstr    s2, [r0, #0x3c]
        vstr    s7, [r0, #0x40]
        ldr     r1, [r4, #8]
        str     r1, [r0, #8]
        ldr     r1, [r4, #0xc]
        str     r1, [r0, #0x1c]
        ldr     r1, [r4, #0x10]
        str     r1, [r0, #0x30]
        ldr     r1, [r4, #0x14]
        str     r1, [r0, #0x44]
        add     r1, r0, #0xc
        vstmia  r1, {s4, s5}
        vstr    s3, [r0, #0x20]
        vstr    s5, [r0, #0x24]
        vstr    s3, [r0, #0x34]
        vstr    s6, [r0, #0x38]
        add     r0, r0, #0x48
        vstr    s4, [r0]
        vstr    s6, [r0, #4]
        mov     r0, #0
        str     r0, [sp, #8]
        ldr     r0, [r5, #0x14]
        cmp     r0, #0
        beq     L5678a8
        ldr     r1, [r0]
        cmp     r1, #0
        str     r1, [sp, #8]
        beq     L567954
        ldrb    r0, [r5, #0x12]
        cmp     r0, #0
        mov     r0, r7
        beq     L567984
        bl      Fn_65f4d4
        nop
        nop
        b       L5678e8
L5678a8:
        ldr     r0, [r4, #0x40]
        ldr     r2, [r0, #4]
        str     r2, [sp, #8]
        ldr     r0, [r4, #0x40]
        ldr     r1, [r5]
        ldr     r3, [r0, #0xe4]
        str     r1, [r0, #0xe4]
        mov     r0, r7
        cmp     r3, r1
        movne   r6, #1
        moveq   r6, #0
        mov     r1, r2
        bl      Fn_65f4d4
        cmp     r6, #0
        nop
        beq     L567924
L5678e8:
        ldr     r0, [r4, #0x3c]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x60]
        blx     r1
        mov     r6, r0
        ldr     r0, [r4, #0x3c]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x5c]
        blx     r1
        stm     sp, {r0, r6}
        ldr     r3, [r5]
        ldrh    r2, [r5, #0x10]
        ldrh    r1, [r5, #0xa]
        ldrh    r0, [r5, #8]
        bl      Fn_56adac
L567924:
        ldr     r0, [r4, #0x40]
        vldr    s0, [r4, #0x34]
        vldr    s1, [r0, #0xe8]
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        blne    Fn_665f6c
        add     sp, sp, #0xc
        mov     r2, #4
        pop     {r4, r5, r6, r7, r8, sb, lr}
        mov     r1, #0
        mov     r0, #6
        b       Fn_661324
L567954:
        add     r1, sp, #8
        mov     r0, #1
        bl      Fn_661e80
        ldr     r0, [r5, #0x14]
        ldr     r1, [sp, #8]
        str     r1, [r0]
        ldr     r1, [sp, #8]
        mov     r0, r7
        bl      Fn_65f4d4
        nop
        nop
        b       L5678e8
L567984:
        nop
        bl      Fn_65f4d4
        nop
        nop
        b       L567924
L567998:
        .word   0x00000de1
        .size   A_5676b4, . - A_5676b4

@ FUN_00567a14
        .global A_567a14
        .type   A_567a14, %function
A_567a14:
        push    {r4, r5, r6, lr}
        cmp     r1, #0
        ldrne   r5, L567aac
        ldr     r2, L567ab0
        moveq   r5, #0x2100
        vpush   {d8}
        mov     r1, #1
        ldr     r0, [r0, #0x40]
        add     r4, r0, #0x78
        ldr     r0, [r0, #0xc0]
        bl      Fn_67054c
        ldr     r2, L567ab0
        ldr     r0, [r4, #0x4c]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L567ab4
        ldr     r0, [r4, #0x50]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r2, L567ab8
        ldr     r0, [r4, #0x54]
        mov     r1, #1
        bl      Fn_67054c
        ldr     r0, [r4, #0x58]
        mov     r1, r5
        bl      Fn_665970
        ldr     r0, [r4, #0x5c]
        mov     r1, #0x2100
        bl      Fn_665970
        vldr    s16, L567abc
        ldr     r0, [r4, #0x60]
        vmov.f32 s0, s16
        bl      Fn_665938
        ldr     r0, [r4, #0x64]
        vmov.f32 s0, s16
        vpop    {d8}
        pop     {r4, r5, r6, lr}
        b       Fn_665938
L567aac:
        .word   0x00001e01
L567ab0:
        .word   0x007ebbe4
L567ab4:
        .word   0x007ebbf0
L567ab8:
        .word   0x007ebbfc
L567abc:
        .word   0x3f800000
        .size   A_567a14, . - A_567a14

@ FUN_00567ae0
        .global A_567ae0
        .type   A_567ae0, %function
A_567ae0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        sub     sp, sp, #0x48
        ldr     r0, [r0, #0x44]
        mov     r6, r2
        mov     r5, r1
        ldr     r0, [r0, #0x1c]
        cmp     r0, #0
        moveq   r0, r1
        beq     L567cac
        ldrb    r2, [r4, #0x20]
        mov     r0, sp
        add     r1, r4, #0x18
        bl      Fn_56a958
        mov     r7, #0
        ldr     r1, L567cdc
        mov     r2, #0x80000023
        str     r7, [sp, #0x40]
        str     r2, [r5], #4
        ldr     r0, L567ce0
        str     r1, [r5], #4
        ldr     r1, [sp]
        ldr     r3, L567ce4
        str     r1, [r5], #4
        add     r1, sp, #4
        str     r0, [r5], #4
        mov     r0, r5
        vldmia  r1, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r1, sp, #0x24
        add     r5, r5, #0x40
        vstmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r0, r0, #0x20
        vldmia  r1, {s0, s1, s2, s3, s4, s5, s6, s7}
        vstmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        ldr     r0, [r4, #4]
        ldrb    r1, [r4, #0x49]
        ldr     r2, [r4]
        bic     ip, r0, #0xff000000
        lsr     r8, r0, #0x18
        smulbb  r0, r8, r1
        lsr     r8, r2, #0x18
        bic     r2, r2, #0xff000000
        smulbb  r1, r8, r1
        umull   r8, r0, r3, r0
        umull   r3, r1, r3, r1
        lsr     r0, r0, #7
        orr     r0, ip, r0, lsl #24
        lsr     r1, r1, #7
        str     r0, [r5], #4
        orr     r1, r2, r1, lsl #24
        ldr     r2, L567ce8
        str     r2, [r5], #4
        add     r0, r2, #0x18
        str     r1, [r5], #4
        str     r0, [r5], #4
        ldr     r0, [r4, #0x44]
        ldrb    r1, [r0, #9]
        tst     r1, #2
        beq     L567cb4
        and     r0, r5, #0xf
        add     r0, r0, #0x18
        tst     r0, #0xf
        beq     L567c18
        lsl     r0, r0, #0x1c
        lsr     r0, r0, #0x1e
        rsb     r2, r0, #4
        cmp     r2, #0
        ble     L567c18
        sub     r0, r5, #4
        tst     r2, #1
        strne   r7, [r0, #4]!
        asrs    r1, r2, #1
        beq     L567c14
L567c04:
        str     r7, [r0, #4]
        subs    r1, r1, #1
        str     r7, [r0, #8]!
        bne     L567c04
L567c14:
        add     r5, r5, r2, lsl #2
L567c18:
        ldr     r0, [r4, #0x44]
        ldrb    r1, [r0, #9]
        tst     r1, #4
        ldr     r1, [r0, #0x1c]
        beq     L567c4c
        ldr     r2, [r0, #0x18]
        lsl     r3, r1, #2
        mov     r1, sp
        mov     r0, r5
        bl      Fn_4efda8
        nop
        nop
        b       L567c60
L567c4c:
        ldr     r2, [r0, #0x10]
        lsl     r3, r1, #2
        mov     r1, sp
        mov     r0, r5
        bl      Fn_4efda8
L567c60:
        cmp     r6, #0
        beq     L567cac
        ldr     r2, [r6, #0x68c]
        add     r1, r6, #0x400
        add     r1, r1, #0x28c
        cmp     r2, #0
        beq     L567c90
        ldr     ip, [r6, #0x688]
        sub     r3, r0, ip
        asr     r3, r3, #3
        str     r3, [r2]
        str     r7, [r1]
L567c90:
        ldr     r2, [r6, #0x684]
        ldr     r1, [sp]
        cmp     r2, #0
        add     r2, r6, #0x400
        add     r2, r2, #0x288
        stm     r2, {r0, r1}
        streq   r0, [r6, #0x684]
L567cac:
        add     sp, sp, #0x48
        pop     {r4, r5, r6, r7, r8, pc}
L567cb4:
        ldr     r1, [r0, #0x10]!
        ldr     r2, [r0, #0xc]
        mov     r0, r5
        lsl     r2, r2, #2
        bl      Fn_20004c
        ldr     r0, [r4, #0x44]
        ldr     r0, [r0, #0x1c]
        add     sp, sp, #0x48
        add     r0, r5, r0, lsl #2
        pop     {r4, r5, r6, r7, r8, pc}
L567cdc:
        .word   0x000f02c0
L567ce0:
        .word   0x00ff02c1
L567ce4:
        .word   0x80808081
L567ce8:
        .word   0x000f00db
        .size   A_567ae0, . - A_567ae0

@ FUN_0056805c
        .global A_56805c
        .type   A_56805c, %function
A_56805c:
        push    {r4, r5, lr}
        mov     r4, r0
        mov     r5, r1
        vpush   {d8}
        sub     sp, sp, #0x1c
        mov     r0, sp
        bl      Fn_56aa7c
        ldr     r0, [r4, #0x3c]
        mov     r2, r5
        ldr     r1, [r0]
        ldr     r3, [r1, #0x40]
        mov     r1, sp
        blx     r3
        ldrb    r0, [r4, #0x48]
        cmp     r0, #0
        beq     L5680d4
        ldrsb   r0, [sp, #6]
        vldr    s16, [r4, #0x38]
        vldr    s1, [r4, #0x24]
        vmov    s0, r0
        ldrsb   r1, [sp, #4]
        vldr    s3, L568128
        vmov    s2, r1
        vcvt.f32.s32 s4, s0
        vmov.f32 s0, s16
        vcvt.f32.s32 s2, s2
        vmls.f32 s0, s4, s1
        vmul.f32 s0, s0, s3
        vmla.f32 s0, s2, s1
        b       L5680f8
L5680d4:
        ldrsb   r1, [sp, #6]
        ldrsb   r0, [sp, #4]
        vldr    s0, [r4, #0x24]
        vmov    s1, r1
        vmov    s2, r0
        vcvt.f32.s32 s3, s1
        vcvt.f32.s32 s1, s2
        vmul.f32 s16, s3, s0
        vmul.f32 s0, s1, s0
L5680f8:
        vldr    s1, [r4, #0x2c]
        mov     r1, sp
        mov     r0, r4
        vadd.f32 s0, s1, s0
        bl      Fn_5676b4
        vldr    s0, [r4, #0x2c]
        vadd.f32 s0, s0, s16
        vstr    s0, [r4, #0x2c]
        add     sp, sp, #0x1c
        vmov.f32 s0, s16
        vpop    {d8}
        pop     {r4, r5, pc}
L568128:
        .word   0x3f000000
        .size   A_56805c, . - A_56805c

@ FUN_005683ec
        .global A_5683ec
        .type   A_5683ec, %function
A_5683ec:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        vldr    s0, [r0, #0x2c]
        bl      Fn_5676b4
        ldrb    r0, [r5, #5]
        vldr    s0, [r4, #0x2c]
        vldr    s2, [r4, #0x24]
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmla.f32 s0, s1, s2
        vstr    s0, [r4, #0x2c]
        pop     {r4, r5, r6, pc}
        .size   A_5683ec, . - A_5683ec

@ FUN_00568420
        .global A_568420
        .type   A_568420, %function
A_568420:
        push    {r4, r5, r6, lr}
        mvn     r4, #0
        str     r4, [r0]
        mov     r3, #4
        str     r4, [r0, #4]!
        ldr     r1, L5684c8
        mov     r2, r3
        add     r0, r0, #4
        blx     Fn_0000ac_t
        ldr     r1, L5684c8
        mov     r3, #2
        mov     r2, #4
        add     r0, r0, #0x10
        blx     Fn_0000ac_t
        vldr    s0, L5684cc
        mov     r1, #0
        sub     r0, r0, #0x18
        add     r6, r0, #0x3c
        mov     r5, r1
        mov     ip, r1
        vstr    s0, [r0, #0x38]
        stm     r6, {r1, r5, ip}
        mov     r2, #0xff
        strb    r1, [r0, #0x48]
        strb    r2, [r0, #0x49]
        str     r1, [r0]
        str     r4, [r0, #4]
        strb    r1, [r0, #0x20]
        ldr     r1, [r0, #0x18]
        ldr     r2, [r0, #0x18]
        str     r4, [r0, #0x18]
        str     r4, [r0, #0xc]
        str     r4, [r0, #8]
        vldr    s1, L5684d0
        str     r4, [r0, #0x10]
        str     r4, [r0, #0x14]
        vstr    s1, [r0, #0x24]
        vstr    s1, [r0, #0x28]
        vstr    s0, [r0, #0x2c]
        vstr    s0, [r0, #0x30]
        vstr    s0, [r0, #0x34]
        pop     {r4, r5, r6, pc}
L5684c8:
        .word   0x00641e68
L5684cc:
        .word   0x00000000
L5684d0:
        .word   0x3f800000
        .size   A_568420, . - A_568420

@ FUN_005684dc
        .global A_5684dc
        .type   A_5684dc, %function
A_5684dc:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        ldr     ip, [r2, #4]
        add     ip, r2, ip, lsl #2
        add     r5, ip, #8
        ldr     ip, [r2, #8]
        ldr     r4, [r5, #0xc]
        add     r6, ip, r2
        tst     r4, #0x7f
        lsr     ip, r4, #7
        add     ip, ip, ip, lsl #5
        lsl     ip, ip, #2
        beq     L568520
        and     r4, r4, #0x7f
        add     r4, r4, #4
        bic     r4, r4, #1
        add     ip, ip, r4
L568520:
        ldr     r4, [r5, #0x14]
        tst     r4, #0x7f
        lsr     r5, r4, #7
        add     r5, r5, r5, lsl #5
        lsl     r5, r5, #2
        beq     L568548
        and     r4, r4, #0x7f
        add     r4, r4, #4
        bic     r4, r4, #1
        add     r5, r5, r4
L568548:
        ldr     r4, [r6, #0x1c]
        add     ip, ip, r5
        add     r4, r4, r4, lsl #1
        add     ip, ip, r4, lsl #1
        mov     r4, #1
        lsl     ip, ip, #2
        stm     sp, {r3, r4}
        add     ip, ip, #0x3e0
        mov     r3, r2
        add     ip, ip, r1
        mov     r2, r1
        mov     r1, ip
        bl      Fn_568668
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
        .size   A_5684dc, . - A_5684dc

@ FUN_00568584
        .global A_568584
        .type   A_568584, %function
A_568584:
        push    {r4, lr}
        sub     sp, sp, #8
        mov     ip, #0
        ldr     r4, [sp, #0x10]
        stm     sp, {r4, ip}
        bl      Fn_568668
        add     sp, sp, #8
        pop     {r4, pc}
        .size   A_568584, . - A_568584

@ FUN_005685a4
        .global A_5685a4
        .type   A_5685a4, %function
A_5685a4:
        add     r0, r0, #0x74
        vldr    s3, L5685b4
        vstmia  r0, {s0, s1, s2, s3}
        bx      lr
L5685b4:
        .word   0x00000000
        .size   A_5685a4, . - A_5685a4

@ FUN_005685b8
        .global A_5685b8
        .type   A_5685b8, %function
A_5685b8:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, r1
        mov     r1, r2
        mov     r2, r3
        bl      Fn_56a958
        ldrb    r0, [r4, #0x27]
        add     r3, r4, #0x400
        mov     r2, #1
        add     r1, r0, #3
        vmov    s0, r1
        add     r0, r0, #4
        vcvt.f32.u32 s0, s0
        vstr    s0, [r3, #0x264]
        strb    r0, [r4, #0x27]
        strb    r2, [r4, #0x690]
        pop     {r4, pc}
        .size   A_5685b8, . - A_5685b8

@ FUN_00568668
        .global A_568668
        .type   A_568668, %function
A_568668:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r0
        vpush   {d8}
        sub     sp, sp, #0x7c
        ldr     r1, [r3, #4]
        ldr     r0, [sp, #0xbc]
        vldr    s16, L568a54
        add     r1, r3, r1, lsl #2
        add     sb, r1, #8
        ldr     r1, [r3, #8]
        cmp     r0, #0
        add     sl, r1, r3
        ldr     r1, [sp, #0x88]
        str     r1, [r5, #0x67c]
        beq     L568768
        ldr     lr, L568a58
        ldrb    r0, [lr]
        cmp     r0, #0
        bne     L56874c
        ldr     fp, L568a5c
        vldr    s2, L568a60
        vldr    s3, L568a64
        mov     r1, #0
L5686c4:
        ldr     ip, L568a68
        add     r0, r1, r1, lsl #1
        mov     r8, #6
        add     r0, fp, r0, lsl #5
        add     r4, r0, #4
        add     r6, r0, #8
        add     r7, r0, #0xc
L5686e0:
        vmov    s0, r1
        ldr     r3, [ip], #4
        tst     r3, #1
        add     r2, r3, #1
        vcvt.f32.s32 s1, s0
        vmov    s0, r3
        vcvt.f32.s32 s0, s0
        vstr    s1, [r0]
        add     r0, r0, #0x10
        vstr    s0, [r4]
        vmovne.f32 s0, s2
        vmoveq.f32 s0, s16
        cmp     r2, #3
        add     r4, r4, #0x10
        vstr    s0, [r6]
        vmovhs.f32 s0, s3
        vmovlo.f32 s0, s16
        subs    r8, r8, #1
        add     r6, r6, #0x10
        vstr    s0, [r7]
        add     r7, r7, #0x10
        bne     L5686e0
        add     r1, r1, #1
        cmp     r1, #0x1a
        blt     L5686c4
        mov     r0, #1
        strb    r0, [lr]
L56874c:
        ldr     r1, L568a5c
        ldr     r0, [sp, #0x88]
        mov     r2, #0x9c0
        bl      Fn_202b20
        ldr     r0, [sp, #0x88]
        mov     r1, #0x9c0
        bl      Fn_025398
L568768:
        ldr     r1, [sp, #0x8c]
        add     r6, r5, #0x400
        add     r6, r6, #0x278
        str     r1, [r5, #0x678]
        ldr     r2, [sb, #0xc]
        tst     r2, #0x7f
        lsr     r0, r2, #7
        add     r0, r0, r0, lsl #5
        lsl     r0, r0, #2
        beq     L5687a0
        and     r2, r2, #0x7f
        add     r2, r2, #4
        bic     r2, r2, #1
        add     r0, r0, r2
L5687a0:
        ldr     r3, [sb, #0x14]
        tst     r3, #0x7f
        lsr     r2, r3, #7
        add     r2, r2, r2, lsl #5
        lsl     r2, r2, #2
        beq     L5687c8
        and     r3, r3, #0x7f
        add     r3, r3, #4
        bic     r3, r3, #1
        add     r2, r2, r3
L5687c8:
        ldr     r3, [sl, #0x1c]
        add     r0, r0, r2
        add     r2, r3, r3, lsl #1
        mov     r3, #1
        add     r0, r0, r2, lsl #1
        lsl     r0, r0, #2
        add     r4, r0, #0x308
        mov     r2, r4
        add     r0, r5, #4
        bl      Fn_542280
        ldr     r0, [r6]
        mov     r3, #1
        mov     r2, #0xd8
        add     r1, r0, r4
        add     r0, r5, #0x14
        bl      Fn_542280
        ldr     r1, L568a6c
        mov     r2, #0x140
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r0, [sb, #8]
        ldr     fp, L568a70
        mov     r4, #0
        add     r7, r0, sb
        ldr     r0, [sb, #0xc]
        cmp     r0, #0
        bls     L5688b8
L568834:
        sub     r6, r0, r4
        add     r0, fp, #0x35c
        cmp     r6, #0x80
        ldm     r0, {r0, r1, r2}
        movhs   r6, #0x80
        str     r4, [sp, #0x18]
        lsl     r3, r6, #0x14
        sub     r3, r3, #0x100000
        str     r0, [sp, #0x1c]
        orr     r0, r3, #0xf0000
        add     r3, sp, #0x20
        orr     r0, r0, #0x2cc
        stm     r3, {r1, r2}
        mov     r2, #0x10
        ldr     r1, [r7, r4, lsl #2]
        str     r0, [sp, #0x24]
        add     r0, r5, #4
        str     r1, [sp, #0x20]
        add     r1, sp, #0x18
        bl      Fn_542254
        lsl     r0, r6, #2
        add     r1, r7, r4, lsl #2
        sub     r2, r0, #4
        add     r1, r1, #4
        add     r0, r5, #4
        bl      Fn_542254
        mov     r1, #8
        add     r0, r5, #4
        bl      Fn_5422ac
        ldr     r0, [sb, #0xc]
        add     r4, r4, r6
        cmp     r0, r4
        bhi     L568834
L5688b8:
        ldr     r1, L568a70
        mov     r2, #8
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r0, [sb, #0x10]
        mov     r6, #0
        add     r8, r0, sb
        ldr     r0, [sb, #0x14]
        cmp     r0, #0
        bls     L568978
L5688e0:
        add     r2, fp, #0x36c
        sub     r7, r0, r6
        ldm     r2, {r2, r3, ip}
        cmp     r7, #0x80
        movhs   r7, #0x80
        ldr     r0, L568a74
        lsl     r4, r7, #0x14
        str     r2, [sp, #0x1c]
        sub     r2, r4, #0x100000
        orr     r2, r2, r0
        add     r0, sp, #0x20
        str     r6, [sp, #0x18]
        stm     r0, {r3, ip}
        add     r1, sp, #0x20
        ldr     r0, [r8, r6, lsl #3]
        stm     r1, {r0, r2}
        mov     r2, #0x10
        add     r1, sp, #0x18
        add     r0, r5, #4
        bl      Fn_542254
        cmp     r7, #1
        mov     r4, #1
        bls     L56895c
L56893c:
        add     r0, r6, r4
        mov     r2, #4
        add     r1, r8, r0, lsl #3
        add     r0, r5, #4
        bl      Fn_542254
        add     r4, r4, #1
        cmp     r7, r4
        bhi     L56893c
L56895c:
        mov     r1, #8
        add     r0, r5, #4
        bl      Fn_5422ac
        ldr     r0, [sb, #0x14]
        add     r6, r6, r7
        cmp     r0, r6
        bhi     L5688e0
L568978:
        ldr     r0, [sl, #0x18]
        mov     r4, #0
        add     r6, r0, sl
        ldr     r0, [sl, #0x1c]
        cmp     r0, #0
        bls     L568a18
L568990:
        add     r1, fp, #0x378
        add     sb, sp, #8
        ldm     r1, {r1, r2, r3, r7, r8, ip}
        add     r0, r4, r4, lsl #2
        add     r0, r6, r0, lsl #2
        stm     sb, {r1, r2, r3, r7, r8, ip}
        ldrh    r1, [r0, #2]
        and     r1, r1, #0xff
        str     r1, [sp, #8]
        ldr     r2, [r0, #0xc]
        ldr     r1, [r0, #0x10]
        lsl     r2, r2, #8
        lsr     r2, r2, #0x18
        orr     r1, r2, r1, lsl #8
        str     r1, [sp, #0x10]
        add     r1, r0, #8
        ldm     r1, {r1, r2}
        lsl     r1, r1, #8
        lsl     r2, r2, #0x10
        orr     r1, r2, r1, lsr #16
        str     r1, [sp, #0x14]
        ldr     r1, [r0, #4]
        ldr     r0, [r0, #8]
        mov     r2, #0x18
        bic     r1, r1, #0xff000000
        orr     r0, r1, r0, lsl #24
        str     r0, [sp, #0x18]
        add     r1, sp, #8
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r0, [sl, #0x1c]
        add     r4, r4, #1
        cmp     r0, r4
        bhi     L568990
L568a18:
        ldr     r0, [r5, #0x67c]
        bl      Fn_0253e4
        mov     r1, r0
        bic     r4, r0, #0xf
        ldr     r0, L568a78
        lsr     r3, r4, #4
        sub     r1, r1, r4
        add     r2, r0, #0x88
        add     r7, r5, #4
        ldm     r2, {r2, ip}
        mov     r6, #0
        ldrd    r8, sb, [r0, #0x98]
        lsl     r0, r3, #1
        bic     r1, r1, #0xf0000000
        b       L568a7c
L568a54:
        .word   0x00000000
L568a58:
        .word   0x008aaeb8
L568a5c:
        .word   0x009a1c1c
L568a60:
        .word   0x3f800000
L568a64:
        .word   0xbf800000
L568a68:
        .word   0x007e9444
L568a6c:
        .word   0x007e945c
L568a70:
        .word   0x007e9244
L568a74:
        .word   0x000f02d6
L568a78:
        .word   0x007e9644
L568a7c:
        add     r3, sp, #0xc
        str     r0, [sp, #0x74]
        str     r1, [sp]
        str     r6, [sp, #0x18]
        stm     r3, {r0, r2, ip}
        add     r0, sp, #0x1c
        mov     r2, #0x1c
        stm     r0, {r1, r8, sb}
        add     r1, sp, #0xc
        mov     r0, r7
        bl      Fn_542254
        ldr     r1, L568e60
        mov     r2, #0x94
        mov     r0, r7
        bl      Fn_542254
        ldr     r0, [pc, #-0x50]
        add     r1, r0, #0x390
        ldr     r7, [r0, #0x3a0]
        ldr     r0, [r0, #0x3a4]
        ldm     r1, {r1, r2, r3, ip}
        str     r0, [sp, #0x1c]
        add     r0, sp, #8
        str     r7, [sp, #0x18]
        stm     r0, {r1, r2, r3, ip}
        mov     r2, #0x18
        add     r1, sp, #8
        ldr     r0, [sl, #8]
        orr     r0, r0, #0x7f000000
        orr     r0, r0, #0xff0000
        str     r0, [sp, #0x18]
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r3, L568e64
        mov     r0, #0
        add     r7, sp, #4
        add     r2, sp, #0x6c
        str     r6, [sp, #0x20]
        str     r6, [sp, #0x24]
L568b14:
        add     r1, r7, r0, lsl #2
        strb    r6, [r2, r0]
        add     r0, r0, #1
        cmp     r0, #7
        str     r3, [r1]
        blo     L568b14
        ldr     r0, [sl, #0x28]
        mov     r1, #0
        add     r8, r0, sl
        ldr     r0, [sl, #0x2c]
        cmp     r0, #7
        cmpls   r0, #0
        movhi   lr, #1
        bls     L568bec
L568b4c:
        add     r0, r8, r1, lsl #3
        ldrh    r3, [r0]
        cmp     r3, #9
        beq     L568bd4
        ldrh    r3, [r0, #2]
        add     sb, sp, #0x20
        strb    lr, [r2, r3]
        ldrh    ip, [r0]
        ldrh    r3, [r0, #4]
        ldrh    fp, [r0, #2]
        strb    r3, [sb, ip]
        tst     r3, #1
        add     sb, r7, fp, lsl #2
        ldr     fp, L568e68
        ldrb    ip, [fp, ip]
        beq     L568b98
        add     r3, ip, #1
        strb    ip, [sb]
        and     ip, r3, #0xff
L568b98:
        ldrh    r3, [r0, #4]
        tst     r3, #2
        beq     L568bb0
        add     r3, ip, #1
        strb    ip, [sb, #1]
        and     ip, r3, #0xff
L568bb0:
        ldrh    r3, [r0, #4]
        tst     r3, #4
        beq     L568bc8
        add     r3, ip, #1
        strb    ip, [sb, #2]
        and     ip, r3, #0xff
L568bc8:
        ldrh    r0, [r0, #4]
        tst     r0, #8
        strbne  ip, [sb, #3]
L568bd4:
        ldr     r0, [sl, #0x2c]
        add     r1, r1, #1
        cmp     r0, #7
        movhi   r0, #7
        cmp     r0, r1
        bhi     L568b4c
L568bec:
        ldrsb   ip, [sp, #0x6c]
        mov     r0, #0
        sub     r1, r2, #1
        mov     r2, r0
        mov     r3, #3
L568c00:
        cmp     ip, #0
        ldrsb   ip, [r1, #2]!
        addne   r0, r0, #1
        cmp     ip, #0
        ldrsb   ip, [r1, #1]
        addne   r2, r2, #1
        subs    r3, r3, #1
        bne     L568c00
        ldr     r8, [pc, #-0x1b8]
        add     r1, r0, r2
        ldrb    r3, [sp, #0x72]
        add     r0, r8, #0x3a8
        add     lr, sp, #0x50
        vldmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r0, sp, #0x30
        cmp     r3, #0
        addne   r1, r1, #1
        vstmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r0, r8, #0x3c8
        ldm     r0, {r0, r2, r3, sb, fp, ip}
        stm     lr, {r0, r2, r3, sb, fp, ip}
        sub     r0, r1, #1
        ldrh    r2, [sl, #0x12]
        str     r0, [sp, #0x38]
        str     r0, [sp, #0x50]
        str     r2, [sp, #0x30]
        str     r0, [sp, #0x58]
        str     r1, [sp, #0x60]
        mov     r2, #0x38
        add     r1, sp, #0x30
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r0, [r8, #0x14]
        mov     r2, #8
        add     r1, sp, #0x28
        str     r0, [sp, #0x2c]
        ldr     r0, [sp, #4]
        str     r0, [sp, #0x28]
        add     r0, r5, #4
        bl      Fn_542254
        mov     r2, #0x18
        add     r1, r7, #4
        add     r0, r5, #4
        bl      Fn_542254
        ldrb    r1, [sp, #0x20]
        mov     r0, #0
        ldrb    r2, [sp, #0x22]
        tst     r1, #1
        movne   r0, #1
        tst     r1, #2
        addne   r0, r0, #1
        tst     r1, #4
        addne   r0, r0, #1
        tst     r1, #8
        addne   r0, r0, #1
        cmp     r0, #3
        ldrb    r0, [sp, #0x27]
        movge   r1, #1
        movlt   r1, #0
        cmp     r0, #0
        ldrbeq  r0, [sp, #0x21]
        add     r7, sp, #0x28
        cmpeq   r0, #0
        movne   r0, #1
        cmp     r2, #0
        ldrb    r2, [sp, #0x23]
        movne   r3, #1
        moveq   r3, #0
        cmp     r2, #0
        ldrb    r2, [sp, #0x25]
        orr     r1, r1, r3, lsl #1
        movne   r3, #1
        moveq   r3, #0
        cmp     r2, #0
        orr     r1, r1, r3, lsl #8
        ldrb    r2, [sp, #0x26]
        movne   r3, #1
        moveq   r3, #0
        cmp     r2, #0
        ldrb    r2, [sp, #0x24]
        orr     r1, r1, r3, lsl #9
        movne   r3, #1
        moveq   r3, #0
        cmp     r2, #0
        movne   r2, #1
        orr     r1, r1, r3, lsl #10
        orr     r1, r1, r2, lsl #16
        ldr     r2, L568e6c
        orr     r1, r1, r0, lsl #24
        ands    r0, r1, r2
        ldr     r2, [r8, #0x3e4]!
        movne   r0, #1
        ldr     r3, [r8, #8]
        stm     r7, {r0, r2}
        add     r7, sp, #0x30
        mov     r2, #0x10
        stm     r7, {r1, r3}
        add     r1, sp, #0x28
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r1, L568e70
        mov     r2, #0x90
        add     r0, r5, #4
        bl      Fn_542254
        ldr     r0, [pc, #-0x330]
        str     r4, [r5, #0x680]
        add     r7, sp, #8
        add     r2, r0, #0x88
        ldr     r3, [r0, #0x98]
        ldr     r0, [r0, #0x9c]
        ldm     r2, {r1, r2}
        add     r4, r5, #0x14
        str     r0, [sp, #0x1c]
        str     r3, [sp, #0x18]
        stm     r7, {r1, r2}
        mov     r2, #0x1c
        ldr     r0, [sp, #0x74]
        add     r1, sp, #4
        str     r6, [sp, #0x10]
        str     r0, [sp, #4]
        ldr     r0, [sp]
        str     r0, [sp, #0x14]
        mov     r0, r4
        bl      Fn_542254
        ldr     r1, L568e60
        mov     r2, #0x94
        mov     r0, r4
        bl      Fn_542254
        ldr     r1, L568e74
        mov     r2, #0x28
        add     r0, r5, #0x14
        bl      Fn_542254
        ldr     r1, L568e78
        mov     r0, #0x80000000
        add     r2, r5, #0x238
        strd    r0, r1, [r5, #0x28]
        vstr    s16, [r5, #0x74]
        vstr    s16, [r5, #0x78]
        vstr    s16, [r5, #0x7c]
        vstr    s16, [r5, #0x80]
        mov     r0, #0x80000006
        strd    r0, r1, [r5, #0x88]
        mov     r0, #0x80000020
        add     r5, r5, #0x400
        add     r5, r5, #0x48
        stm     r2, {r0, r1}
        add     r0, r0, #0x20
        stm     r5, {r0, r1}
        add     sp, sp, #0x7c
        vpop    {d8}
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L568e60:
        .word   0x007e9634
L568e64:
        .word   0x1f1f1f1f
L568e68:
        .word   0x007e924c
L568e6c:
        .word   0x00010700
L568e70:
        .word   0x007e934c
L568e74:
        .word   0x007e93dc
L568e78:
        .word   0x000f02c0
        .size   A_568668, . - A_568668

@ FUN_00568f24
        .global A_568f24
        .type   A_568f24, %function
A_568f24:
        push    {r0, r1, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x5c
        mov     r5, r0
        mov     r1, #0
        mov     r4, #1
        ldr     r0, [sp, #0x60]
        ldr     r8, [r0, #0x44]
        ldrh    fp, [r8, #4]
        ldrh    r0, [r8, #6]
        str     r1, [r8, #0x1c]
        str     r1, [r8, #0x24]
        cmp     fp, r0
        movhi   fp, r0
        cmp     fp, #0
        strb    r4, [r8, #8]
        beq     L569644
        add     r0, r5, #0x400
        vldr    s0, L569304
        str     r0, [sp, #0x30]
        mov     r1, #0
        vstr    s0, [r0, #0x258]
        strb    r1, [r5, #0x690]
        ldr     r1, L569308
        add     r2, r5, #0x278
        mov     r0, #0x80000023
        stm     r2, {r0, r1}
        mov     r2, #0x60
        ldr     r1, [r8, #0x1c]
        ldr     r0, [r8, #0x10]
        add     r0, r0, r1, lsl #2
        ldr     r1, L56930c
        bl      Fn_20004c
        ldr     r0, [r8, #0x1c]
        add     r1, sp, #0x28
        add     r0, r0, #0x18
        str     r0, [r8, #0x1c]
        ldr     r0, [sp, #0x60]
        ldr     r0, [r0, #0x18]
        str     r0, [sp, #0x28]
        ldr     r0, [sp, #0x60]
        ldr     r0, [r0, #0x1c]
        str     r0, [sp, #0x2c]
        ldr     r0, [sp, #0x60]
        ldrb    ip, [r5, #0x27]
        ldr     r3, [r5, #0x674]
        ldrb    r2, [r0, #0x20]
        add     r0, r3, ip, lsl #4
        bl      Fn_56a958
        ldrb    r0, [r5, #0x27]
        add     r0, r0, #3
        vmov    s0, r0
        ldr     r0, [sp, #0x30]
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0, #0x264]
        ldrb    r0, [r5, #0x27]
        add     r0, r0, #4
        strb    r0, [r5, #0x27]
        add     r0, fp, #7
        bic     r0, r0, #0x10000
        strb    r4, [r5, #0x690]
        ldr     r6, [r8, #0xc]
        lsr     r1, r0, #3
        cmp     r1, #0
        ble     L569054
        tst     r1, #1
        add     r0, r6, r1
        beq     L569038
        mov     r2, #0
        strb    r2, [r0, #-1]!
L569038:
        asrs    r1, r1, #1
        movne   r2, #0
        beq     L569054
L569044:
        strb    r2, [r0, #-1]
        subs    r1, r1, #1
        strb    r2, [r0, #-2]!
        bne     L569044
L569054:
        mov     r0, #0
        str     r0, [sp, #4]
        str     r0, [sp, #0x34]
        mvn     r0, #0
        str     r0, [sp, #0x44]
        str     r0, [sp, #0x20]
        mov     r0, #0
        str     r0, [sp, #0x38]
        add     r0, r8, #0x28
        str     r0, [sp, #0x3c]
        mov     r0, #0
        cmp     fp, #0
        str     r0, [sp, #0x18]
        addhi   r0, r5, #0x670
        strhi   r0, [sp, #0x40]
        bls     L56959c
L569094:
        ldr     r4, [sp, #0x38]
L569098:
        asr     r0, r4, #0x1f
        add     r0, r4, r0, lsr #29
        add     r1, r6, r0, asr #3
        bic     r0, r0, #7
        ldrb    r1, [r1]
        sub     r0, r4, r0
        lsr     r0, r1, r0
        tst     r0, #1
        addne   r4, r4, #1
        bne     L569098
        add     r1, r4, #1
        str     r1, [sp, #0x38]
        ldr     r1, [sp, #0x3c]
        add     r0, r4, r4, lsl #1
        add     r0, r0, r4, lsl #3
        add     sb, r1, r0, lsl #2
        ldr     r1, [sp, #4]
        ldr     r0, [sb, #0x28]
        ldr     r0, [r0, #8]
        cmp     r1, r0
        beq     L569358
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x18]
        cmp     r0, #0
        ldrbne  r0, [r5, #0x24]
        cmpne   r0, #0
        beq     L569110
        mov     r1, r8
        mov     r0, r5
        bl      Fn_569750
L569110:
        ldr     r0, [sb, #0x28]
        ldrb    r7, [r0, #0x10]
        ldr     r0, [sp, #0x44]
        cmp     r7, r0
        beq     L56920c
        cmp     r7, #0xb
        ldr     r1, [sp, #0x44]
        cmpne   r7, #8
        moveq   r0, #1
        movne   r0, #0
        cmn     r1, #1
        beq     L5691dc
        cmp     r1, #0xb
        cmpne   r1, #8
        moveq   r1, #1
        movne   r1, #0
        cmp     r1, r0
        beq     L569184
        ldr     r3, [r8, #0x1c]
        cmp     r0, #0
        ldr     r0, [r8, #0x10]
        ldrne   r1, L569310
        ldreq   r1, L569314
        mov     r2, #0x10
        add     r0, r0, r3, lsl #2
        bl      Fn_20004c
        ldr     r0, [r8, #0x1c]
        add     r0, r0, #4
        str     r0, [r8, #0x1c]
L569184:
        ldr     r0, L569318
        ldr     r2, [r8, #0x1c]
        ldr     r1, [r8, #0x10]
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r1, r2, lsl #2
        add     r1, r2, #4
        vstmia  r0, {s0, s1, s2, s3}
        str     r1, [r8, #0x1c]
L5691a4:
        ldr     r3, [r8, #0x10]
        ldr     ip, [r8, #0x1c]
        str     r7, [sp, #0x44]
        ldr     r0, L56931c
        mov     r2, #4
        str     r7, [r3, ip, lsl #2]
        ldr     r3, [r8, #0x1c]
        ldr     r1, [r8, #0x10]
        add     r2, r2, r3, lsl #2
        str     r0, [r1, r2]
        ldr     r0, [r8, #0x1c]
        add     r0, r0, #2
        str     r0, [r8, #0x1c]
        b       L56922c
L5691dc:
        ldr     r3, [r8, #0x1c]
        cmp     r0, #0
        ldr     r0, [r8, #0x10]
        ldrne   r1, L569320
        ldreq   r1, L569324
        mov     r2, #0x30
        add     r0, r0, r3, lsl #2
        bl      Fn_20004c
        ldr     r0, [r8, #0x1c]
        add     r0, r0, #0xc
        str     r0, [r8, #0x1c]
        b       L5691a4
L56920c:
        ldr     r0, L569318
        ldr     r2, [r8, #0x1c]
        ldr     r1, [r8, #0x10]
        vldmia  r0, {s0, s1, s2, s3}
        add     r0, r1, r2, lsl #2
        add     r1, r2, #4
        vstmia  r0, {s0, s1, s2, s3}
        str     r1, [r8, #0x1c]
L56922c:
        ldr     r1, [r8, #0x10]
        ldr     r2, [r8, #0x1c]
        ldr     r0, L569328
        mov     r7, #4
        str     r0, [r1, r2, lsl #2]
        ldr     r2, [r8, #0x1c]
        ldr     r1, [r8, #0x10]
        ldr     r0, L56932c
        add     r2, r7, r2, lsl #2
        str     r0, [r1, r2]
        ldr     r0, [r8, #0x1c]
        ldr     r1, [r8, #0x10]
        ldr     r2, [sp, #4]
        add     r0, r0, #2
        str     r0, [r8, #0x1c]
        str     r2, [r1, r0, lsl #2]
        ldr     r2, [r8, #0x1c]
        ldr     r1, [r8, #0x10]
        ldr     r0, L569330
        add     r2, r7, r2, lsl #2
        str     r0, [r1, r2]
        ldr     r0, [r8, #0x1c]
        add     r2, r0, #2
        str     r2, [r8, #0x1c]
        ldr     r0, [sb, #0x28]
        ldr     r1, [sp, #0x34]
        ldr     r0, [r0, #0xc]
        cmp     r0, r1
        beq     L5692cc
        str     r0, [sp, #0x34]
        ldr     ip, [r8, #0x10]
        ldr     r3, L569334
        str     r0, [ip, r2, lsl #2]
        ldr     r1, [r8, #0x1c]
        ldr     r0, [r8, #0x10]
        add     r1, r7, r1, lsl #2
        str     r3, [r0, r1]
        ldr     r0, [r8, #0x1c]
        add     r0, r0, #2
        str     r0, [r8, #0x1c]
L5692cc:
        ldr     r0, [sb, #0x28]
        ldr     r0, [r0, #4]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x64]
        blx     r1
        ldr     r1, [sp, #0x20]
        cmp     r1, r0
        beq     L569358
        ldr     r2, [r8, #0x10]
        ldr     ip, [r8, #0x1c]
        str     r0, [sp, #0x20]
        ldr     r3, L569338
        str     r0, [r2, ip, lsl #2]
        b       L56933c
L569304:
        .word   0x00000000
L569308:
        .word   0x000f02c0
L56930c:
        .word   0x007e926c
L569310:
        .word   0x007e92dc
L569314:
        .word   0x007e92cc
L569318:
        .word   0x007e925c
L56931c:
        .word   0x000f008e
L569320:
        .word   0x007e931c
L569324:
        .word   0x007e92ec
L569328:
        .word   0x00011001
L56932c:
        .word   0x00040080
L569330:
        .word   0x000f0085
L569334:
        .word   0x000f0082
L569338:
        .word   0x000f0083
L56933c:
        ldr     r1, [r8, #0x1c]
        ldr     r0, [r8, #0x10]
        add     r1, r7, r1, lsl #2
        str     r3, [r0, r1]
        ldr     r0, [r8, #0x1c]
        add     r0, r0, #2
        str     r0, [r8, #0x1c]
L569358:
        cmp     r4, fp
        bhs     L569590
L569360:
        asr     r0, r4, #0x1f
        add     r0, r4, r0, lsr #29
        bic     r1, r0, #7
        add     sb, r6, r0, asr #3
        sub     sl, r4, r1
        ldrb    r0, [sb]
        lsr     r0, r0, sl
        tst     r0, #1
        bne     L569584
        add     r0, r4, r4, lsl #1
        add     r1, r0, r4, lsl #3
        ldr     r0, [sp, #0x3c]
        ldr     r2, [sp, #4]
        add     r0, r0, r1, lsl #2
        ldr     r0, [r0, #0x28]
        ldr     r0, [r0, #8]
        cmp     r0, r2
        bne     L569584
        add     r0, r8, r1, lsl #2
        add     r7, r0, #0x28
        ldr     r0, [sp, #0x28]
        lsl     r2, r0, #0x10
        lsl     r3, r0, #0x18
        lsr     r2, r2, #0x18
        orr     r3, r3, r2, lsl #16
        lsl     r2, r0, #8
        lsr     r2, r2, #0x18
        orr     r2, r3, r2, lsl #8
        orr     r1, r2, r0, lsr #24
        ldr     r0, [r7, #0x10]
        mov     ip, r0
        lsl     r2, r0, #0x10
        lsl     r3, r0, #0x18
        lsr     r2, r2, #0x18
        orr     r3, r3, r2, lsl #16
        lsl     r2, r0, #8
        lsr     r2, r2, #0x18
        orr     r2, r3, r2, lsl #8
        orr     r0, r2, r0, lsr #24
        cmp     r1, r0
        bne     L569454
        ldr     r0, [sp, #0x2c]
        lsl     r2, r0, #0x10
        lsl     r3, r0, #0x18
        lsr     r2, r2, #0x18
        orr     r3, r3, r2, lsl #16
        lsl     r2, r0, #8
        lsr     r2, r2, #0x18
        orr     r2, r3, r2, lsl #8
        orr     r1, r2, r0, lsr #24
        ldr     r0, [r7, #0x14]
        lsl     r2, r0, #0x10
        lsl     r3, r0, #0x18
        lsr     r2, r2, #0x18
        orr     r3, r3, r2, lsl #16
        lsl     r2, r0, #8
        lsr     r2, r2, #0x18
        orr     r2, r3, r2, lsl #8
        orr     r0, r2, r0, lsr #24
        cmp     r1, r0
        beq     L5694a8
L569454:
        str     ip, [sp, #0x28]
        ldr     r0, [r7, #0x14]
        ldr     r2, [sp, #0x60]
        add     r1, sp, #0x28
        str     r0, [sp, #0x2c]
        ldrb    r3, [r5, #0x27]
        ldr     r0, [r5, #0x674]
        ldrb    r2, [r2, #0x20]
        add     r0, r0, r3, lsl #4
        bl      Fn_56a958
        ldrb    r0, [r5, #0x27]
        mov     r2, #1
        add     r0, r0, #3
        vmov    s0, r0
        ldr     r0, [sp, #0x30]
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0, #0x264]
        ldrb    r0, [r5, #0x27]
        add     r0, r0, #4
        strb    r0, [r5, #0x27]
        strb    r2, [r5, #0x690]
L5694a8:
        ldrb    r3, [r5, #0x26]
        ldr     r0, [sp, #0x30]
        add     r1, r7, #0x18
        vmov    s0, r3
        vcvt.f32.u32 s0, s0
        vstr    s0, [r0, #0x260]
        ldrb    r0, [r5, #0x26]
        ldr     r2, [r5, #0x670]
        vldmia  r1, {s0, s1, s2, s3}
        add     r0, r0, #1
        and     r0, r0, #0xff
        add     r2, r2, r3, lsl #4
        strb    r0, [r5, #0x26]
        vstmia  r2, {s0, s1, s2, s3}
        vmov    s0, r0
        ldr     r1, [sp, #0x30]
        vcvt.f32.u32 s0, s0
        vstr    s0, [r1, #0x25c]
        ldr     r1, [sp, #0x40]
        ldrb    r2, [r5, #0x26]
        vldmia  r7, {s0, s1, s2, s3}
        add     r2, r2, #1
        ldr     r3, [r1]
        strb    r2, [r5, #0x26]
        mov     r1, #1
        add     r0, r3, r0, lsl #4
        lsl     r1, r1, sl
        vstmia  r0, {s0, s1, s2, s3}
        ldrb    r0, [sb]
        bic     r0, r0, r1
        orr     r0, r0, r1
        strb    r0, [sb]
        ldr     r2, [sp, #0x30]
        ldrb    r1, [r5, #0x24]
        ldr     r0, [r5, #0x668]
        add     r2, r2, #0x258
        ldm     r2, {r3, r7, sb, ip}
        add     r0, r0, r1, lsl #4
        ldr     r2, [sp, #0x18]
        add     r2, r2, #1
        str     r2, [sp, #0x18]
        stm     r0, {r3, r7, sb, ip}
        ldrb    r0, [r5, #0x24]
        add     r0, r0, #1
        and     r0, r0, #0xff
        cmp     r0, #0x19
        strb    r0, [r5, #0x24]
        ldrbls  r0, [r5, #0x26]
        cmpls   r0, #0x1e
        ldrbls  r0, [r5, #0x27]
        cmpls   r0, #0x18
        bls     L569584
        mov     r1, r8
        mov     r0, r5
        bl      Fn_569750
L569584:
        add     r4, r4, #1
        cmp     r4, fp
        blo     L569360
L569590:
        ldr     r0, [sp, #0x18]
        cmp     r0, fp
        blo     L569094
L56959c:
        ldrb    r0, [r5, #0x24]
        cmp     r0, #0
        beq     L5695b4
        mov     r1, r8
        mov     r0, r5
        bl      Fn_569750
L5695b4:
        ldrb    r0, [r8, #9]
        mov     r1, #0
        strb    r1, [r5, #0x27]
        tst     r0, #2
        beq     L569644
        ldr     r2, [r8, #0x1c]
        ldr     r0, [r8, #0x10]
        mov     r3, #8
        add     r0, r0, r2, lsl #2
        add     r2, r3, r2, lsl #2
        tst     r2, #0xf
        beq     L569620
        lsl     r2, r2, #0x1c
        lsr     r2, r2, #0x1e
        rsb     ip, r2, #4
        cmp     ip, #0
        ble     L569620
        sub     r2, r0, #4
        tst     ip, #1
        strne   r1, [r2, #4]!
        asrs    r3, ip, #1
        beq     L56961c
L56960c:
        str     r1, [r2, #4]
        subs    r3, r3, #1
        str     r1, [r2, #8]!
        bne     L56960c
L56961c:
        add     r0, r0, ip, lsl #2
L569620:
        mov     r1, #1
        bl      Fn_4efd84
        ldr     r2, [r8, #0x10]
        sub     r0, r0, r2
        asr     r0, r0, #2
        str     r0, [r8, #0x1c]
        lsl     r1, r0, #2
        mov     r0, r2
        bl      Fn_025398
L569644:
        add     sp, sp, #0x64
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_568f24, . - A_568f24

@ FUN_00569700
        .global A_569700
        .type   A_569700, %function
A_569700:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r1, r2
        add     r0, r0, #0x34
        bl      Fn_01a2b8
        ldr     r3, [r4, #0x34]
        ldr     r1, L56974c
        add     r0, r4, #0x28
        str     r3, [r4, #0x30]!
        mov     ip, #0
        str     r1, [r4, #4]!
        mov     r1, r0
        mov     r2, #0x60
        mov     r0, r5
        str     ip, [r4, #0x50]
        bl      Fn_20004c
        add     r0, r5, #0x60
        pop     {r4, r5, r6, pc}
L56974c:
        .word   0x013f02c1
        .size   A_569700, . - A_569700

@ FUN_00569750
        .global A_569750
        .type   A_569750, %function
A_569750:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r4, r1
        mov     r5, r0
        mov     r8, #0
        mov     sl, #4
        ldrb    r1, [r0, #0x24]
        ldr     sb, L569a6c
        ldr     r3, [r5, #0x94]
        lsl     r2, r1, #2
        add     r0, r1, r1, lsl #1
        lsl     ip, r2, #0x14
        lsl     r7, r0, #1
        sub     ip, ip, #0x100000
        lsl     r6, r2, #2
        add     r0, r5, #0x88
        orr     r2, ip, sb
        add     r1, r0, r1, lsl #4
        str     r2, [r5, #0x94]
        str     r3, [r5, #0x90]
        str     r8, [r1, #0xc]
        ldr     r1, [r4, #0x1c]
        ldr     r0, [r4, #0x10]
        add     r6, r6, #0x10
        mov     r2, r6
        add     r0, r0, r1, lsl #2
        add     r1, r5, #0x88
        bl      Fn_20004c
        ldr     r0, [r4, #0x1c]
        add     r0, r0, r6, lsr #2
        str     r0, [r4, #0x1c]
        strb    r8, [r5, #0x24]
        ldrb    r0, [r5, #0x690]
        cmp     r0, #0
        beq     L569984
        ldrb    r1, [r5, #0x27]
        ldr     ip, [r5, #0x284]
        add     r0, r5, #0x278
        lsl     r2, r1, #2
        add     r1, r0, r1, lsl #4
        lsl     r3, r2, #0x14
        sub     r3, r3, #0x100000
        orr     r3, r3, sb
        str     r3, [r5, #0x284]
        str     ip, [r5, #0x280]
        str     r8, [r1, #0xc]
        ldr     r0, [r4, #0x24]
        lsl     r2, r2, #2
        add     r6, r2, #0x10
        cmp     r0, #0
        beq     L56983c
        ldr     r1, [r4, #0x1c]
        ldr     r0, [r4, #0x10]
        mov     r2, r6
        add     r0, r0, r1, lsl #2
        add     r1, r5, #0x278
        bl      Fn_20004c
        ldr     r0, [r4, #0x1c]
        add     r0, r0, r6, lsr #2
        b       L5698d4
L56983c:
        ldr     r0, [r4, #0x1c]
        str     r0, [r4, #0x24]
        ldrb    r1, [r5, #0x27]
        cmp     r1, #4
        bls     L5698d8
        ldr     r2, [r4, #0x10]
        mov     r1, #0x80000027
        ldr     r3, L569a70
        str     r1, [r2, r0, lsl #2]
        ldr     r0, [r4, #0x1c]
        ldr     r1, [r4, #0x10]
        add     r0, sl, r0, lsl #2
        str     r3, [r1, r0]
        ldr     r0, [r4, #0x1c]
        add     r0, r0, #2
        str     r0, [r4, #0x1c]
        ldr     r2, [r4, #0x10]
        ldr     r1, [r5, #0x2c4]
        str     r1, [r2, r0, lsl #2]
        ldrb    r0, [r5, #0x27]
        ldr     r1, [r4, #0x1c]
        ldr     r2, [r4, #0x10]
        lsl     r0, r0, #0x16
        add     r1, sl, r1, lsl #2
        sub     r0, r0, #0x1100000
        orr     r0, r0, sb
        str     r0, [r2, r1]
        ldr     r0, [r4, #0x1c]
        sub     r2, r6, #0x50
        add     r0, r0, #2
        str     r0, [r4, #0x1c]
        ldr     r1, [r4, #0x10]
        add     r0, r1, r0, lsl #2
        add     r1, r5, #0x2c8
        bl      Fn_20004c
        ldr     r0, [r4, #0x1c]
        sub     r1, r6, #0x50
        add     r0, r0, r1, lsr #2
L5698d4:
        str     r0, [r4, #0x1c]
L5698d8:
        ldrb    r0, [r5, #0x27]
        sub     r0, r0, #4
        ands    r0, r0, #0xff
        beq     L569968
        mov     r2, #0x20
        add     ip, r2, r0, lsl #4
        ldr     r2, [r5, #0x674]
        mov     r3, #0x10
        mov     r6, #0x30
        add     fp, r2, r0, lsl #4
        add     r3, r3, r0, lsl #4
        vldmia  fp, {s0, s1, s2, s3}
        add     r6, r6, r0, lsl #4
        add     r1, r5, #0x400
        add     r1, r1, #0x274
        vstmia  r2, {s0, s1, s2, s3}
        ldr     r0, [r5, #0x674]
        add     r2, r0, r3
        add     r0, r0, #0x10
        vldmia  r2, {s0, s1, s2, s3}
        vstmia  r0, {s0, s1, s2, s3}
        ldr     r0, [r5, #0x674]
        add     r2, r0, ip
        add     r0, r0, #0x20
        vldmia  r2, {s0, s1, s2, s3}
        vstmia  r0, {s0, s1, s2, s3}
        ldr     r0, [r1]
        add     r1, r0, r6
        ldm     r1, {r2, r3, ip}
        ldr     r1, [r1, #0xc]
        str     r1, [r0, #0x3c]
        add     r0, r0, #0x30
        stm     r0, {r2, r3, ip}
        mov     r0, #1
        strb    r0, [r5, #0x690]
        b       L569974
L569968:
        ldr     r0, [r5, #0x280]
        strb    r8, [r5, #0x690]
        str     r0, [r5, #0x284]
L569974:
        add     r0, r5, #0x400
        vldr    s0, L569a74
        vstr    s0, [r0, #0x264]
        strb    sl, [r5, #0x27]
L569984:
        ldrb    r0, [r5, #0x26]
        cmp     r0, #0
        beq     L5699e8
        lsl     r2, r0, #2
        ldr     ip, [r5, #0x454]
        lsl     r6, r2, #0x14
        lsl     r3, r2, #2
        add     r1, r5, #0x400
        sub     r2, r6, #0x100000
        add     r1, r1, #0x48
        orr     r2, r2, sb
        add     r0, r1, r0, lsl #4
        str     r2, [r5, #0x454]
        str     ip, [r5, #0x450]
        str     r8, [r0, #0xc]
        ldr     r2, [r4, #0x1c]
        ldr     r0, [r4, #0x10]
        add     r6, r3, #0x10
        add     r0, r0, r2, lsl #2
        mov     r2, r6
        bl      Fn_20004c
        ldr     r0, [r4, #0x1c]
        add     r0, r0, r6, lsr #2
        str     r0, [r4, #0x1c]
        strb    r8, [r5, #0x26]
L5699e8:
        cmp     r7, #0x10
        ldr     r1, [r5, #0x680]
        lslhi   r0, r7, #1
        subhi   r0, r0, #0x20
        movls   r0, #0
        add     r0, r0, r1
        ldr     r2, [r4, #0x1c]
        lsl     r0, r0, #0x14
        ldr     r3, L569a7c
        lsr     r0, r0, #0x14
        cmp     r0, #0xfe0
        ldr     r0, [r4, #0x10]
        movhs   r1, #0x20
        movlo   r1, #0
        add     r0, r0, r2, lsl #2
        ldr     r2, L569a78
        orr     r1, r1, #0x80000000
        str     r1, [r0], #4
        add     r1, r2, #1
        stm     r0!, {r2, r7}
        mov     r2, #0x40
        str     r1, [r0], #4
        ldr     r1, [r4, #0x10]
        sub     r0, r0, r1
        asr     r0, r0, #2
        str     r0, [r4, #0x1c]
        add     r0, r1, r0, lsl #2
        mov     r1, r3
        bl      Fn_20004c
        ldr     r0, [r4, #0x1c]
        add     r0, r0, #0x10
        str     r0, [r4, #0x1c]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L569a6c:
        .word   0x000f02c1
L569a70:
        .word   0x000f02c0
L569a74:
        .word   0x40400000
L569a78:
        .word   0x000f0227
L569a7c:
        .word   0x007e9404
        .size   A_569750, . - A_569750

@ FUN_00569b54
        .global A_569b54
        .type   A_569b54, %function
A_569b54:
        ldr     r1, [r0, #4]
        add     r1, r0, r1, lsl #2
        add     r2, r1, #8
        ldr     r1, [r0, #8]
        add     r3, r1, r0
        ldr     r0, [r2, #0xc]
        tst     r0, #0x7f
        lsr     r1, r0, #7
        add     r1, r1, r1, lsl #5
        lsl     r1, r1, #2
        beq     L569b90
        and     r0, r0, #0x7f
        add     r0, r0, #4
        bic     r0, r0, #1
        add     r1, r1, r0
L569b90:
        ldr     r0, [r2, #0x14]
        tst     r0, #0x7f
        lsr     r2, r0, #7
        add     r2, r2, r2, lsl #5
        lsl     r2, r2, #2
        beq     L569bb8
        and     r0, r0, #0x7f
        add     r0, r0, #4
        bic     r0, r0, #1
        add     r2, r2, r0
L569bb8:
        ldr     r0, [r3, #0x1c]
        add     r1, r1, r2
        add     r0, r0, r0, lsl #1
        add     r0, r1, r0, lsl #1
        lsl     r0, r0, #2
        add     r0, r0, #0x3e0
        bx      lr
        .size   A_569b54, . - A_569b54

@ FUN_00569be4
        .global A_569be4
        .type   A_569be4, %function
A_569be4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r2
        bl      Fn_569bd4
        ldr     r3, [r4]
        mov     r1, r0
        mov     r0, r4
        mov     r2, r5
        ldr     r3, [r3, #0x18]
        blx     r3
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        ldr     r1, L569c20
        str     r0, [r1]
        bx      lr
L569c20:
        .word   0x008ab4f8
        .size   A_569be4, . - A_569be4

@ FUN_00569db4
        .global A_569db4
        .type   A_569db4, %function
A_569db4:
        ldr     r1, L569e40
        push    {r4, lr}
        str     r1, [r0], #4
        bl      Fn_5422e0
        add     r0, r0, #0x10
        bl      Fn_5422e0
        sub     r0, r0, #0x14
        mov     r1, #0
        strb    r1, [r0, #0x24]
        add     r2, r0, #0x400
        strb    r1, [r0, #0x25]
        vldr    s0, L569e44
        add     r2, r2, #0x258
        strb    r1, [r0, #0x26]
        strb    r1, [r0, #0x27]
        vstr    s0, [r2]
        vstr    s0, [r2, #4]
        vstr    s0, [r2, #8]
        vstr    s0, [r2, #0xc]
        str     r1, [r0, #0x678]
        str     r1, [r0, #0x67c]
        str     r1, [r0, #0x680]
        add     r4, r0, #0x400
        str     r1, [r0, #0x684]
        add     ip, r0, #0x400
        add     r4, r4, #0x268
        str     r1, [r0, #0x688]
        add     r2, r0, #0x94
        add     r3, r0, #0x244
        add     ip, ip, #0x54
        add     lr, r0, #0x284
        str     r1, [r0, #0x68c]
        stm     r4, {r2, r3, ip, lr}
        strb    r1, [r0, #0x690]
        pop     {r4, pc}
L569e40:
        .word   0x0082d124
L569e44:
        .word   0x00000000
        .size   A_569db4, . - A_569db4

@ FUN_0056a044
        .global A_56a044
        .type   A_56a044, %function
A_56a044:
        ldr     r2, [r0]
        ldrb    r1, [r2]
        sub     r3, r1, #0x81
        cmp     r3, #0x1f
        blo     L56a064
        cmp     r1, #0xe0
        addlo   r2, r2, #1
        blo     L56a070
L56a064:
        ldrb    r3, [r2, #1]
        add     r2, r2, #2
        orr     r1, r3, r1, lsl #8
L56a070:
        str     r2, [r0]
        mov     r0, r1
        bx      lr
        .size   A_56a044, . - A_56a044

@ FUN_0056a07c
        .global A_56a07c
        .type   A_56a07c, %function
A_56a07c:
        ldr     r1, [r0]
        ldrb    r2, [r1]
        tst     r2, #0x80
        addeq   r1, r1, #1
        streq   r1, [r0]
        beq     L56a0c8
        and     r3, r2, #0xe0
        cmp     r3, #0xc0
        beq     L56a0d0
        lsl     r3, r2, #0xc
        ldrb    r2, [r1, #1]
        and     r2, r2, #0x3f
        orr     r3, r3, r2, lsl #6
        ldrb    r2, [r1, #2]
        add     r1, r1, #3
        and     r2, r2, #0x3f
        orr     r2, r2, r3
        uxth    r2, r2
L56a0c4:
        str     r1, [r0]
L56a0c8:
        mov     r0, r2
        bx      lr
L56a0d0:
        ldrb    r3, [r1, #1]
        and     r2, r2, #0x1f
        add     r1, r1, #2
        and     r3, r3, #0x3f
        orr     r2, r3, r2, lsl #6
        b       L56a0c4
        .size   A_56a07c, . - A_56a07c

@ FUN_0056a0e8
        .global A_56a0e8
        .type   A_56a0e8, %function
A_56a0e8:
        ldr     r1, [r0]
        ldrh    r2, [r1], #2
        str     r1, [r0]
        mov     r0, r2
        bx      lr
        .size   A_56a0e8, . - A_56a0e8

@ FUN_0056a0fc
        .global A_56a0fc
        .type   A_56a0fc, %function
A_56a0fc:
        ldr     r1, [r0]
        ldrb    r2, [r1], #1
        str     r1, [r0]
        mov     r0, r2
        bx      lr
        .size   A_56a0fc, . - A_56a0fc

@ FUN_0056a1b8
        .global A_56a1b8
        .type   A_56a1b8, %function
A_56a1b8:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #8
        mov     r4, r0
        mov     r6, r1
        mov     r5, r2
        bl      Fn_660658
        str     r0, [r4]
        ldr     r0, L56a494
        bl      Fn_660770
        str     r0, [sp, #4]
        mov     r3, r6
        mov     r2, #0x6000
        add     r1, sp, #4
        mov     r0, #1
        str     r5, [sp]
        bl      Fn_663f2c
        ldr     r0, [r4]
        ldr     r1, [sp, #4]
        bl      Fn_65ee88
        ldr     r0, [sp, #4]
        bl      Fn_660b08
        ldr     r0, [r4]
        mvn     r1, #0
        bl      Fn_65ee88
        ldr     r0, [r4]
        add     r2, pc, #0x274
        mov     r1, #0
        bl      Fn_65ef44
        ldr     r0, [r4]
        add     r2, pc, #0x270
        mov     r1, #1
        bl      Fn_65ef44
        ldr     r0, [r4]
        add     r2, pc, #0x26c
        mov     r1, #2
        bl      Fn_65ef44
        ldr     r0, [r4]
        add     r2, pc, #0x264
        mov     r1, #3
        bl      Fn_65ef44
        ldr     r0, [r4]
        bl      Fn_662354
        add     r1, r4, #4
        mov     r0, #1
        bl      Fn_661e80
        ldr     r0, [r4]
        add     r1, pc, #0x24c
        bl      Fn_6621dc
        str     r0, [r4, #0x58]
        ldr     r0, [r4]
        add     r1, pc, #0x248
        bl      Fn_6621dc
        str     r0, [r4, #0x5c]
        ldr     r0, [r4]
        add     r1, pc, #0x244
        bl      Fn_6621dc
        str     r0, [r4, #0x60]
        ldr     r0, [r4]
        add     r1, pc, #0x254
        bl      Fn_6621dc
        str     r0, [r4, #0x64]
        ldr     r0, [r4]
        add     r1, pc, #0x260
        bl      Fn_6621dc
        str     r0, [r4, #0x68]
        ldr     r0, [r4]
        add     r1, pc, #0x260
        bl      Fn_6621dc
        str     r0, [r4, #0x6c]
        ldr     r0, [r4]
        add     r1, pc, #0x274
        bl      Fn_6621dc
        str     r0, [r4, #0x70]
        ldr     r0, [r4]
        add     r1, pc, #0x284
        bl      Fn_6621dc
        str     r0, [r4, #0x74]
        ldr     r0, [r4]
        add     r1, pc, #0x294
        bl      Fn_6621dc
        str     r0, [r4, #0x78]
        ldr     r0, [r4]
        add     r1, pc, #0x29c
        bl      Fn_6621dc
        str     r0, [r4, #0x7c]
        ldr     r0, [r4]
        add     r1, pc, #0x2a4
        bl      Fn_6621dc
        str     r0, [r4, #0x80]
        ldr     r0, [r4]
        add     r1, pc, #0x2b0
        bl      Fn_6621dc
        str     r0, [r4, #0x84]
        ldr     r0, [r4]
        add     r1, pc, #0x2bc
        bl      Fn_6621dc
        str     r0, [r4, #0x88]
        ldr     r0, [r4]
        add     r1, pc, #0x2c8
        bl      Fn_6621dc
        str     r0, [r4, #0x8c]
        ldr     r0, [r4]
        add     r1, pc, #0x2d4
        bl      Fn_6621dc
        str     r0, [r4, #0x90]
        ldr     r0, [r4]
        add     r1, pc, #0x2dc
        bl      Fn_6621dc
        str     r0, [r4, #0x94]
        ldr     r0, [r4]
        add     r1, pc, #0x2e8
        bl      Fn_6621dc
        str     r0, [r4, #0x98]
        ldr     r0, [r4]
        add     r1, pc, #0x2f0
        bl      Fn_6621dc
        str     r0, [r4, #0x9c]
        ldr     r0, [r4]
        add     r1, pc, #0x2f8
        bl      Fn_6621dc
        str     r0, [r4, #0xa0]
        ldr     r0, [r4]
        add     r1, pc, #0x300
        bl      Fn_6621dc
        str     r0, [r4, #0xa4]
        ldr     r0, [r4]
        add     r1, pc, #0x30c
        bl      Fn_6621dc
        str     r0, [r4, #0xa8]
        ldr     r0, [r4]
        add     r1, pc, #0x318
        bl      Fn_6621dc
        str     r0, [r4, #0xac]
        ldr     r0, [r4]
        add     r1, pc, #0x324
        bl      Fn_6621dc
        str     r0, [r4, #0xb0]
        ldr     r0, [r4]
        add     r1, pc, #0x330
        bl      Fn_6621dc
        str     r0, [r4, #0xb4]
        ldr     r0, [r4]
        add     r1, pc, #0x338
        bl      Fn_6621dc
        str     r0, [r4, #0xb8]
        ldr     r0, [r4]
        add     r1, pc, #0x344
        bl      Fn_6621dc
        str     r0, [r4, #0xbc]
        ldr     r0, [r4]
        add     r1, pc, #0x34c
        bl      Fn_6621dc
        str     r0, [r4, #0xc0]
        ldr     r0, [r4]
        add     r1, pc, #0x354
        bl      Fn_6621dc
        str     r0, [r4, #0xc4]
        ldr     r0, [r4]
        add     r1, pc, #0x35c
        bl      Fn_6621dc
        str     r0, [r4, #0xc8]
        ldr     r0, [r4]
        add     r1, pc, #0x368
        bl      Fn_6621dc
        str     r0, [r4, #0xcc]
        ldr     r0, [r4]
        add     r1, pc, #0x374
        bl      Fn_6621dc
        str     r0, [r4, #0xd0]
        ldr     r0, [r4]
        add     r1, pc, #0x380
        bl      Fn_6621dc
        str     r0, [r4, #0xd4]
        ldr     r0, [r4]
        add     r1, pc, #0x38c
        bl      Fn_6621dc
        str     r0, [r4, #0xd8]
        ldr     r0, [r4]
        add     r1, pc, #0x394
        bl      Fn_6621dc
        add     r1, pc, #0x3a8
        str     r0, [r4, #0xdc]
        b       L56a850
L56a494:
        .word   0x00008b31
        .word   0x736f5061
        .word   0x6f697469
        .word   0x0000006e
        .word   0x736f5061
        .word   0x6f697469
        .word   0x00005a6e
        .word   0x6c6f4361
        .word   0x0000726f
        .word   0x78655461
        .word   0x726f6f43
        .word   0x00000064
        .word   0x6f725075
        .word   0x7463656a
        .word   0x006e6f69
        .word   0x646f4d75
        .word   0x69566c65
        .word   0x00007765
        .word   0x5f706d64
        .word   0x67617246
        .word   0x746e656d
        .word   0x6867694c
        .word   0x676e6974
        .word   0x616e652e
        .word   0x64656c62
        .word   0x00000000
        .word   0x5f706d64
        .word   0x74786554
        .word   0x5b657275
        .word   0x732e5d30
        .word   0x6c706d61
        .word   0x79547265
        .word   0x00006570
        .word   0x5f706d64
        .word   0x2e676f46
        .word   0x65646f6d
        .word   0x00000000
        .word   0x5f706d64
        .word   0x67617246
        .word   0x7265704f
        .word   0x6f697461
        .word   0x6e652e6e
        .word   0x656c6261
        .word   0x68706c41
        .word   0x73655461
        .word   0x00000074
        .word   0x5f706d64
        .word   0x67617246
        .word   0x7265704f
        .word   0x6f697461
        .word   0x6c612e6e
        .word   0x52616870
        .word   0x61566665
        .word   0x0065756c
        .word   0x5f706d64
        .word   0x67617246
        .word   0x7265704f
        .word   0x6f697461
        .word   0x6c612e6e
        .word   0x54616870
        .word   0x46747365
        .word   0x00636e75
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x72732e5d
        .word   0x62675263
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x72732e5d
        .word   0x706c4163
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x706f2e5d
        .word   0x6e617265
        .word   0x62675264
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x706f2e5d
        .word   0x6e617265
        .word   0x706c4164
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x6f632e5d
        .word   0x6e69626d
        .word   0x62675265
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x6f632e5d
        .word   0x6e69626d
        .word   0x706c4165
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x63732e5d
        .word   0x52656c61
        .word   0x00006267
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x63732e5d
        .word   0x41656c61
        .word   0x6168706c
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x335b766e
        .word   0x6f632e5d
        .word   0x5274736e
        .word   0x00616267
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x72732e5d
        .word   0x62675263
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x72732e5d
        .word   0x706c4163
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x706f2e5d
        .word   0x6e617265
        .word   0x62675264
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x706f2e5d
        .word   0x6e617265
        .word   0x706c4164
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x6f632e5d
        .word   0x6e69626d
        .word   0x62675265
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x6f632e5d
        .word   0x6e69626d
        .word   0x706c4165
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x63732e5d
        .word   0x52656c61
        .word   0x00006267
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x63732e5d
        .word   0x41656c61
        .word   0x6168706c
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x345b766e
        .word   0x6f632e5d
        .word   0x5274736e
        .word   0x00616267
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x72732e5d
        .word   0x62675263
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x72732e5d
        .word   0x706c4163
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x706f2e5d
        .word   0x6e617265
        .word   0x62675264
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x706f2e5d
        .word   0x6e617265
        .word   0x706c4164
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x6f632e5d
        .word   0x6e69626d
        .word   0x62675265
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x6f632e5d
        .word   0x6e69626d
        .word   0x706c4165
        .word   0x00006168
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x63732e5d
        .word   0x52656c61
        .word   0x00006267
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x63732e5d
        .word   0x41656c61
        .word   0x6168706c
        .word   0x00000000
        .word   0x5f706d64
        .word   0x45786554
        .word   0x355b766e
        .word   0x6f632e5d
        .word   0x5274736e
        .word   0x00616267
L56a850:
        .word   0xe5940000
        .word   0xeb03de60
        .word   0xe3a01001
        .word   0xe58400e0
        .word   0xe5c410ec
        .word   0xe28dd008
        .word   0xe8bd8070
        .size   A_56a1b8, . - A_56a1b8

@ FUN_0056a86c
        .global A_56a86c
        .type   A_56a86c, %function
A_56a86c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0xec]
        cmp     r0, #0
        movne   r4, #0
        beq     L56a8bc
L56a884:
        mov     r0, r4
        bl      Fn_6612ec
        add     r4, r4, #1
        cmp     r4, #4
        blt     L56a884
        add     r1, r5, #4
        mov     r0, #1
        bl      Fn_660bf8
        mov     r0, #0
        strb    r0, [r5, #0xec]
        bl      Fn_665a64
        ldr     r0, [r5]
        pop     {r4, r5, r6, lr}
        b       Fn_660a9c
L56a8bc:
        pop     {r4, r5, r6, pc}
        .size   A_56a86c, . - A_56a86c

@ FUN_0056a8c0
        .global A_56a8c0
        .type   A_56a8c0, %function
A_56a8c0:
        ldr     r1, L56a8f4
        mov     r3, #4
        mov     r2, #0x14
        add     r0, r0, #8
        push    {r4, lr}
        blx     Fn_0000ac_t
        sub     r0, r0, #8
        vldr    s0, L56a8f8
        mov     r1, #0
        vstr    s0, [r0, #0xe8]
        strb    r1, [r0, #0xec]
        str     r1, [r0, #0xe4]
        pop     {r4, pc}
L56a8f4:
        .word   0x0066af80
L56a8f8:
        .word   0x00000000
        .size   A_56a8c0, . - A_56a8c0

@ FUN_0056a8fc
        .global A_56a8fc
        .type   A_56a8fc, %function
A_56a8fc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldrb    r0, [r0, #0xec]
        cmp     r0, #0
        movne   r4, #0
        beq     L56a950
L56a914:
        mov     r0, r4
        bl      Fn_6612ec
        add     r4, r4, #1
        cmp     r4, #4
        blt     L56a914
        add     r1, r5, #4
        mov     r0, #1
        bl      Fn_660bf8
        mov     r1, #0
        mov     r0, r1
        strb    r1, [r5, #0xec]
        bl      Fn_665a64
        ldr     r0, [r5]
        nop
        bl      Fn_660a9c
L56a950:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_56a8fc, . - A_56a8fc

@ FUN_0056a958
        .global A_56a958
        .type   A_56a958, %function
A_56a958:
        push    {r4, r5}
        ldrb    r3, [r1]
        ldrb    r5, [r1, #3]
        ldrb    ip, [r1, #1]
        vmov    s3, r3
        ldrb    r4, [r1, #2]
        vmov    s1, ip
        vldr    s0, L56aa70
        vmov    s2, r4
        sub     sp, sp, #0x20
        vcvt.f32.u32 s7, s3
        vmov    s3, r5
        vcvt.f32.u32 s6, s1
        cmp     r2, #1
        vcvt.f32.u32 s5, s2
        add     r5, r0, #0x20
        vcvt.f32.u32 s4, s3
        vmul.f32 s1, s7, s0
        vmul.f32 s2, s6, s0
        vmul.f32 s3, s5, s0
        vmul.f32 s4, s4, s0
        vstmia  sp, {s1, s2, s3, s4}
        ldrb    r3, [r1, #4]
        ldrb    ip, [r1, #5]
        ldrb    r4, [r1, #6]
        vmov    s2, r3
        ldrb    r1, [r1, #7]
        vmov    s1, ip
        vmov    s3, r4
        add     r3, sp, #0x10
        vcvt.f32.u32 s5, s2
        vmov    s2, r1
        vcvt.f32.u32 s4, s1
        vcvt.f32.u32 s3, s3
        vmul.f32 s1, s5, s0
        vcvt.f32.u32 s5, s2
        vmul.f32 s2, s4, s0
        vmul.f32 s3, s3, s0
        vmul.f32 s0, s5, s0
        vstr    s0, [sp, #0x1c]
        vstmia  r3, {s1, s2, s3}
        ldm     sp, {r1, r3, r4, ip}
        stm     r0, {r1, r3, r4, ip}
        moveq   r3, #1
        movne   r3, #0
        mov     r1, sp
        add     r3, r1, r3, lsl #4
        cmp     r2, #2
        vldmia  r3, {s0, s1, s2, s3}
        add     r4, r0, #0x10
        moveq   r3, #1
        movne   r3, #0
        cmp     r2, #0
        vstmia  r4, {s0, s1, s2, s3}
        add     r4, r1, r3, lsl #4
        ldm     r4, {r2, r3, ip}
        ldr     r4, [r4, #0xc]
        str     r4, [r0, #0x2c]
        stm     r5, {r2, r3, ip}
        movne   r2, #1
        moveq   r2, #0
        add     r1, r1, r2, lsl #4
        ldm     r1, {r2, r3, ip}
        ldr     r1, [r1, #0xc]
        str     r1, [r0, #0x3c]
        add     r0, r0, #0x30
        stm     r0, {r2, r3, ip}
        add     sp, sp, #0x20
        pop     {r4, r5}
        bx      lr
L56aa70:
        .word   0x3b808081
        .size   A_56a958, . - A_56a958

@ FUN_0056adac
        .global A_56adac
        .type   A_56adac, %function
A_56adac:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x14
        mov     ip, r2
        mov     r6, r3
        ldr     r2, L56aef4
        ldr     r3, L56aef8
        ldrd    r4, r5, [sp, #0x28]
        cmp     ip, #0xc
        ldrlo   pc, [pc, ip, lsl #2]
        b       L56ae50
L56add4:
        .word   0x0066ae38
L56add8:
        .word   0x0066ae4c
L56addc:
        .word   0x0066ae2c
L56ade0:
        .word   0x0066ae40
L56ade4:
        .word   0x0066ae20
L56ade8:
        .word   0x0066ae18
L56adec:
        .word   0x0066ae50
L56adf0:
        .word   0x0066ae50
L56adf4:
        .word   0x0066ae50
L56adf8:
        .word   0x0066ae0c
L56adfc:
        .word   0x0066ae50
L56ae00:
        .word   0x0066ae04
        ldr     r3, L56aefc
        b       L56ae50
        ldr     r2, L56af00
        add     r3, r2, #8
        b       L56ae50
        ldr     r2, L56af00
        b       L56ae50
        ldr     r2, L56af04
        ldr     r3, L56af08
        b       L56ae50
        ldr     r2, L56af04
        ldr     r3, L56af0c
        b       L56ae50
        ldr     r2, L56af04
        b       L56ae50
        ldr     r2, L56af10
        ldr     r3, L56af14
        b       L56ae50
        ldr     r2, L56af10
L56ae50:
        add     r7, sp, #8
        mov     ip, #0
        stm     r7, {r2, r3, r6}
        mov     r3, r0
        stm     sp, {r1, ip}
        ldr     r0, L56af18
        mov     r1, ip
        bl      Fn_665138
        ldr     r7, L56af1c
        ldr     r6, L56af24
        ldr     r1, L56af20
        mov     r2, r7
        mov     r0, r6
        bl      Fn_665644
        ldr     r1, L56af28
        mov     r2, r7
        mov     r0, r6
        bl      Fn_665644
        cmp     r4, #0
        ldrne   r2, L56af2c
        ldr     r1, L56af30
        moveq   r2, #0x2600
        mov     r4, r6
        mov     r0, r6
        bl      Fn_665644
        cmp     r5, #0
        ldrne   r2, L56af2c
        moveq   r2, #0x2600
        mov     r1, #0x2800
        mov     r0, r4
        bl      Fn_665644
        ldr     r1, L56af38
        vldr    s0, L56af34
        mov     r0, r4
        bl      Fn_6652f8
        add     sp, sp, #0x14
        mov     r0, r4
        pop     {r4, r5, r6, r7, lr}
        ldr     r2, L56af3c
        ldr     r1, L56af40
        b       Fn_665644
L56aef4:
        .word   0x00006756
L56aef8:
        .word   0x00001401
L56aefc:
        .word   0x00006761
L56af00:
        .word   0x00006758
L56af04:
        .word   0x00006752
L56af08:
        .word   0x00008033
L56af0c:
        .word   0x00008034
L56af10:
        .word   0x00006754
L56af14:
        .word   0x00008363
L56af18:
        .word   0x02010de1
L56af1c:
        .word   0x0000812f
L56af20:
        .word   0x00002802
L56af24:
        .word   0x00000de1
L56af28:
        .word   0x00002803
L56af2c:
        .word   0x00002601
L56af30:
        .word   0x00002801
L56af34:
        .word   0x00000000
L56af38:
        .word   0x00008501
L56af3c:
        .word   0xfffffc18
L56af40:
        .word   0x0000813a
        .size   A_56adac, . - A_56adac

@ FUN_00634220
        .global A_634220
        .type   A_634220, %function
A_634220:
        ldr     r0, [r0]
        lsl     r1, r0, #0x10
        lsl     r2, r0, #0x18
        lsr     r1, r1, #0x18
        orr     r2, r2, r1, lsl #16
        lsl     r1, r0, #8
        lsr     r1, r1, #0x18
        orr     r1, r2, r1, lsl #8
        orr     r0, r1, r0, lsr #24
        bx      lr
        .size   A_634220, . - A_634220

@ FUN_00634658
        .global A_634658
        .type   A_634658, %function
A_634658:
        vldr    s0, L634700
        ldr     r3, L634704
        vstr    s0, [r0]
        vstr    s0, [r0, #4]
        vstr    s0, [r0, #8]
        vstr    s0, [r0, #0xc]
        ldrb    r2, [r1, #0xb6]
        vmov.f32 s1, s0
        and     r2, r2, #0xf
        umull   ip, r3, r3, r2
        lsr     r3, r3, #1
        sub     r3, r3, r3, lsl #2
        add     r3, r3, r2
        and     r3, r3, #0xff
        cmp     r3, #1
        beq     L6346a8
        cmp     r3, #2
        vldreq  s0, [r1, #0x48]
        vnegeq.f32 s0, s0
        b       L6346b4
L6346a8:
        vldr    s0, [r1, #0x48]
        vldr    s2, L634708
        vmul.f32 s0, s0, s2
L6346b4:
        mov     r3, #0xab
        smulbb  r2, r2, r3
        lsr     r2, r2, #9
        cmp     r2, #1
        beq     L6346d4
        cmp     r2, #2
        vldreq  s1, [r1, #0x4c]
        b       L6346e0
L6346d4:
        vldr    s1, [r1, #0x4c]
        vldr    s2, L63470c
        vmul.f32 s1, s1, s2
L6346e0:
        vstmia  r0, {s0, s1}
        vldr    s2, [r1, #0x48]
        vadd.f32 s0, s0, s2
        vstr    s0, [r0, #8]
        vldr    s0, [r1, #0x4c]
        vsub.f32 s0, s1, s0
        vstr    s0, [r0, #0xc]
        bx      lr
L634700:
        .word   0x00000000
L634704:
        .word   0xaaaaaaab
L634708:
        .word   0xbf000000
L63470c:
        .word   0x3f000000
        .size   A_634658, . - A_634658

@ FUN_00634724
        .global A_634724
        .type   A_634724, %function
A_634724:
L634724:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r2
        ldrb    r0, [r0, #0xb6]
        mov     r7, r3
        tst     r0, #0x10
        beq     L63474c
        ldrb    r0, [r5, #0xb5]
        cmp     r0, #0
        beq     L634760
L63474c:
        ldr     r0, [r5]
        ldr     ip, [r0, #0x68]
        mov     r0, r5
        blx     ip
        mov     r1, r0
L634760:
        ldr     r4, [r5, #0x14]
        add     r0, r5, #0x14
        cmp     r4, r0
        beq     L6347a0
L634770:
        ldrb    r0, [r4, #0xb3]
        tst     r0, #1
        beq     L634790
        sub     r0, r4, #4
        mov     r3, r7
        mov     r2, r6
        .word   0xebffffe5
        mov     r1, r0
L634790:
        ldr     r4, [r4]
        add     r0, r5, #0x14
        cmp     r4, r0
        bne     L634770
L6347a0:
        mov     r0, r1
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_634724, . - A_634724

@ FUN_00636204
        .global A_636204
        .type   A_636204, %function
A_636204:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        mov     r5, r0
        add     r1, r0, #0x80
        vpush   {d8}
        mov     r0, r4
        bl      Fn_01a174
        mov     r0, r5
        bl      Fn_6347e4
        vmov.f32 s2, s1
        vmov.f32 s17, s0
        mov     r2, #0
        add     r1, r5, #0x48
        mov     r0, r5
        vmov.f32 s16, s2
        bl      Fn_635fb4
        vmov.f32 s2, s0
        vldr    s5, [r4]
        vldr    s6, [r4, #0x10]
        vldr    s7, [r4, #0x20]
        vsub.f32 s1, s16, s1
        vldr    s4, [r4, #4]
        vadd.f32 s0, s17, s2
        vldr    s2, [r4, #0x14]
        vldr    s3, [r4, #0x24]
        vldr    s8, [r4, #0xc]
        vldr    s9, [r4, #0x1c]
        vmul.f32 s5, s5, s0
        vmul.f32 s6, s6, s0
        vmul.f32 s0, s7, s0
        vldr    s7, [r4, #0x2c]
        vmla.f32 s5, s4, s1
        vmla.f32 s6, s2, s1
        vmla.f32 s0, s3, s1
        vneg.f32 s1, s4
        vneg.f32 s2, s2
        vneg.f32 s3, s3
        vstr    s1, [r4, #4]
        vstr    s2, [r4, #0x14]
        vadd.f32 s4, s5, s8
        vadd.f32 s5, s6, s9
        vadd.f32 s0, s0, s7
        vstr    s3, [r4, #0x24]
        vstr    s4, [r4, #0xc]
        vstr    s5, [r4, #0x1c]
        vstr    s0, [r4, #0x2c]
        vpop    {d8}
        pop     {r4, r5, r6, pc}
        .size   A_636204, . - A_636204

@ FUN_00636478
        .global A_636478
        .type   A_636478, %function
A_636478:
        ldr     r1, [r0, #0x34]
        ldr     r0, [r0, #0x2c]
        mov     r2, #0xc
        lsl     r3, r0, #0x1c
        lsl     ip, r0, #0x1e
        lsr     r3, r3, #0x1e
        lsr     ip, ip, #0x19
        add     r3, r3, r3, lsl #2
        and     r2, r2, r0, lsr #2
        add     r3, ip, r3, lsl #2
        add     r2, r2, r3
        mov     r3, #8
        and     r3, r3, r0, lsr #6
        add     r2, r2, r3
        mov     r3, #4
        and     r0, r3, r0, lsr #8
        add     r0, r0, r2
        add     r0, r0, r1
        bx      lr
        .size   A_636478, . - A_636478

@ FUN_006364c4
        .global A_6364c4
        .type   A_6364c4, %function
A_6364c4:
        ldr     r1, [r0, #0x34]
        ldr     r0, [r0, #0x2c]
        mov     r2, #0xc
        lsl     r3, r0, #0x1c
        lsl     ip, r0, #0x1e
        lsr     r3, r3, #0x1e
        lsr     ip, ip, #0x19
        add     r3, r3, r3, lsl #2
        and     r2, r2, r0, lsr #2
        add     r3, ip, r3, lsl #2
        add     r2, r2, r3
        mov     r3, #8
        and     r0, r3, r0, lsr #6
        add     r0, r0, r2
        add     r0, r0, r1
        bx      lr
        .size   A_6364c4, . - A_6364c4

@ FUN_0063652c
        .global A_63652c
        .type   A_63652c, %function
A_63652c:
        ldr     r1, [r0, #0x34]
        ldr     r0, [r0, #0x2c]
        mov     r2, #0xc
        lsl     ip, r0, #0x1c
        lsl     r3, r0, #0x1e
        and     r0, r2, r0, lsr #2
        lsr     r2, ip, #0x1e
        lsr     r3, r3, #0x19
        add     r2, r2, r2, lsl #2
        add     r2, r3, r2, lsl #2
        add     r0, r0, r2
        add     r0, r0, r1
        bx      lr
        .size   A_63652c, . - A_63652c

@ FUN_00636780
        .global A_636780
        .type   A_636780, %function
A_636780:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_639490
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L6367d0
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L6367cc
        ldr     r3, [r0]
        ldr     r3, [r3, #0x10]
        blx     r3
L6367cc:
        mov     r0, #1
L6367d0:
        pop     {r4, r5, r6, pc}
        .size   A_636780, . - A_636780

@ FUN_006367d4
        .global A_6367d4
        .type   A_6367d4, %function
A_6367d4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_639558
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636824
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636820
        ldr     r3, [r0]
        ldr     r3, [r3, #0x1c]
        blx     r3
L636820:
        mov     r0, #1
L636824:
        pop     {r4, r5, r6, pc}
        .size   A_6367d4, . - A_6367d4

@ FUN_00636828
        .global A_636828
        .type   A_636828, %function
A_636828:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_6395e4
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636878
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636874
        ldr     r3, [r0]
        ldr     r3, [r3, #0xc]
        blx     r3
L636874:
        mov     r0, #1
L636878:
        pop     {r4, r5, r6, pc}
        .size   A_636828, . - A_636828

@ FUN_00636ad0
        .global A_636ad0
        .type   A_636ad0, %function
A_636ad0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_639a44
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636b20
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636b1c
        ldr     r3, [r0]
        ldr     r3, [r3, #0x20]
        blx     r3
L636b1c:
        mov     r0, #1
L636b20:
        pop     {r4, r5, r6, pc}
        .size   A_636ad0, . - A_636ad0

@ FUN_00636b24
        .global A_636b24
        .type   A_636b24, %function
A_636b24:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        mov     r3, #0
        bl      Fn_6394b8
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636b7c
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        mov     r3, #0
        beq     L636b78
        ldr     ip, [r0]
        ldr     ip, [ip, #0x24]
        blx     ip
L636b78:
        mov     r0, #1
L636b7c:
        pop     {r4, r5, r6, pc}
        .size   A_636b24, . - A_636b24

@ FUN_00636b80
        .global A_636b80
        .type   A_636b80, %function
A_636b80:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_639c38
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636bd0
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636bcc
        ldr     r3, [r0]
        ldr     r3, [r3, #0x30]
        blx     r3
L636bcc:
        mov     r0, #1
L636bd0:
        pop     {r4, r5, r6, pc}
        .size   A_636b80, . - A_636b80

@ FUN_00636bd4
        .global A_636bd4
        .type   A_636bd4, %function
A_636bd4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_639710
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636c24
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636c20
        ldr     r3, [r0]
        ldr     r3, [r3, #0x3c]
        blx     r3
L636c20:
        mov     r0, #1
L636c24:
        pop     {r4, r5, r6, pc}
        .size   A_636bd4, . - A_636bd4

@ FUN_00636c28
        .global A_636c28
        .type   A_636c28, %function
A_636c28:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_63977c
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636c78
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636c74
        ldr     r3, [r0]
        ldr     r3, [r3, #0x18]
        blx     r3
L636c74:
        mov     r0, #1
L636c78:
        pop     {r4, r5, r6, pc}
        .size   A_636c28, . - A_636c28

@ FUN_00636e28
        .global A_636e28
        .type   A_636e28, %function
A_636e28:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x3c
        mov     r7, r1
        mvn     sl, #0
        mov     fp, #0
        str     sl, [sp, #0x20]
        mov     sb, r0
        add     r2, sp, #0x20
        strd    sl, fp, [sp, #0x24]
        bl      Fn_636b24
        cmp     r0, #0
        beq     L636e78
        ldr     r4, [sb, #0x11c]
        add     r0, sb, #0x120
        bl      Fn_637d3c
        ldr     r1, [sp, #0x24]
        add     r0, r0, r1
        add     r0, r0, r4
L636e70:
        add     sp, sp, #0x3c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L636e78:
        mov     r0, sb
        bl      Fn_63952c
        subs    r8, r0, #0
        mov     r6, #0
        bls     L636f50
L636e8c:
        orr     r1, r6, #0x6000000
        mov     r2, sp
        mov     r0, sb
        strd    sl, fp, [sp]
        bl      Fn_6367d4
        cmp     r0, #0
        nop
        beq     L636f44
        str     sl, [sp, #8]
        strd    sl, fp, [sp, #0xc]
        ldr     r1, [sp]
        add     r2, sp, #8
        mov     r0, sb
        bl      Fn_636b24
        cmp     r0, #0
        nop
        beq     L636f44
        ldr     r4, [sb, #0x11c]
        add     r0, sb, #0x120
        bl      Fn_637d3c
        ldr     r1, [sp, #0xc]
        add     r0, r0, r1
        add     r1, r4, r0
        add     r0, sp, #0x14
        bl      Fn_559364
        ldr     r0, [sp, #0x14]
        mov     r4, #0
        ldr     r5, [r0]
        cmp     r5, #0
        bls     L636f44
L636f04:
        mov     r2, r4
        add     r1, sp, #0x30
        add     r0, sp, #0x14
        bl      Fn_6379d4
        cmp     r0, #0
        nop
        beq     L636f38
        ldr     r0, [sp, #0x30]
        cmp     r0, r7
        bne     L636f38
        ldr     r0, [sp, #0x34]
        cmp     r0, #0
        bne     L636e70
L636f38:
        add     r4, r4, #1
        cmp     r4, r5
        blo     L636f04
L636f44:
        add     r6, r6, #1
        cmp     r6, r8
        blo     L636e8c
L636f50:
        add     sp, sp, #0x3c
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_636e28, . - A_636e28

@ FUN_006370e4
        .global A_6370e4
        .type   A_6370e4, %function
A_6370e4:
        ldrb    r1, [r0]
        cmp     r1, #0
        bne     L637104
        vldr    s1, [r0, #0x10]
        vldr    s0, L637114
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        beq     L637110
L637104:
        vldr    s0, [r0, #4]
        vldr    s1, L637118
        vmul.f32 s0, s0, s1
L637110:
        bx      lr
L637114:
        .word   0x00000000
L637118:
        .word   0x3dcccccd
        .size   A_6370e4, . - A_6370e4

@ FUN_0063711c
        .global A_63711c
        .type   A_63711c, %function
A_63711c:
        ldrb    r1, [r0, #0x89]
        cmp     r1, #0
        addne   r0, r0, #0x100
        moveq   r0, #0
        ldrsbne r0, [r0, #0x55]
        bx      lr
        .size   A_63711c, . - A_63711c

@ FUN_00637210
        .global A_637210
        .type   A_637210, %function
A_637210:
        ldr     r2, [r0, #0xc]
        add     r0, r0, r2
        ldr     r2, [r0]
        cmp     r2, r1
        bls     L63723c
        add     r1, r0, r1, lsl #3
        ldrh    r2, [r1, #4]
        cmp     r2, #0x4900
        ldreq   r1, [r1, #8]
        addeq   r0, r0, r1
        beq     L637240
L63723c:
        mov     r0, #0
L637240:
        bx      lr
        .size   A_637210, . - A_637210

@ FUN_00637244
        .global A_637244
        .type   A_637244, %function
A_637244:
        ldr     r2, [r0, #0x14]
        add     r0, r0, r2
        ldr     r2, L63727c
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L637274
        add     r1, r0, r1, lsl #3
        ldrh    r3, [r1, #4]
        cmp     r3, r2
        ldreq   r1, [r1, #8]
        addeq   r0, r0, r1
        beq     L637278
L637274:
        mov     r0, #0
L637278:
        bx      lr
L63727c:
        .word   0x00004902
        .size   A_637244, . - A_637244

@ FUN_006374e0
        .global A_6374e0
        .type   A_6374e0, %function
A_6374e0:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r2, #9
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldreq   r0, L637518
        beq     L637514
        ldr     r0, [sp]
        add     r0, r0, r4
        ldr     r1, [r0, #4]
        add     r0, r0, r1
L637514:
        pop     {r3, r4, r5, pc}
L637518:
        .word   0x008bb9b8
        .size   A_6374e0, . - A_6374e0

@ FUN_0063751c
        .global A_63751c
        .type   A_63751c, %function
A_63751c:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63751c, . - A_63751c

@ FUN_00637544
        .global A_637544
        .type   A_637544, %function
A_637544:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        beq     L63756c
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
L63756c:
        pop     {r3, pc}
        .size   A_637544, . - A_637544

@ FUN_00637570
        .global A_637570
        .type   A_637570, %function
A_637570:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_637570, . - A_637570

@ FUN_00637598
        .global A_637598
        .type   A_637598, %function
A_637598:
        push    {r4, r5, r6, r7}
        add     r6, r0, #4
        mov     ip, #0
        ldr     r4, [r6]
        mov     r2, #3
        mov     r0, ip
        mov     r1, ip
        mov     r3, #4
        mov     r5, #1
L6375bc:
        tst     r4, r5, lsl r1
        beq     L6375d0
        cmp     r1, r2
        add     r0, r0, #1
        moveq   ip, #1
L6375d0:
        subs    r3, r3, #1
        add     r1, r1, #1
        bne     L6375bc
        cmp     ip, #0
        beq     L6375fc
        cmp     r0, #0
        beq     L6375fc
        add     r0, r6, r0, lsl #2
        vldr    s0, [r0]
        pop     {r4, r5, r6, r7}
        bx      lr
L6375fc:
        pop     {r4, r5, r6, r7}
        vldr    s0, L637608
        bx      lr
L637608:
        .word   0x3f800000
        .size   A_637598, . - A_637598

@ FUN_0063760c
        .global A_63760c
        .type   A_63760c, %function
A_63760c:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x60
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63760c, . - A_63760c

@ FUN_006379d4
        .global A_6379d4
        .type   A_6379d4, %function
A_6379d4:
        ldr     r3, [r0]
        cmp     r3, #0
        ldrne   ip, [r3]
        cmpne   ip, r2
        bls     L637a20
        add     r2, r3, r2, lsl #3
        ldr     r2, [r2, #8]
        adds    r2, r2, r3
        beq     L637a20
        ldr     r3, [r2]
        str     r3, [r1]
        ldr     r2, [r2, #8]
        ldr     r0, [r0, #4]
        cmn     r2, #1
        moveq   r0, #0
        addne   r0, r0, r2
        str     r0, [r1, #4]
        mov     r0, #1
        bx      lr
L637a20:
        mov     r0, #0
        bx      lr
        .size   A_6379d4, . - A_6379d4

@ FUN_00637e70
        .global A_637e70
        .type   A_637e70, %function
A_637e70:
        mov     r2, #3
        cmp     r2, r1, lsr #24
        bne     L637e94
        ldr     r2, [r0, #0x14]
        bic     r1, r1, #0xff000000
        add     r0, r0, r2
        ldr     r2, [r0]
        cmp     r2, r1
        bhi     L637e9c
L637e94:
        mov     r0, #0
        bx      lr
L637e9c:
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        add     r0, r0, r1
        bx      lr
        .size   A_637e70, . - A_637e70

@ FUN_00637eac
        .global A_637eac
        .type   A_637eac, %function
A_637eac:
        ldr     r2, [r0, #0x34]
        bic     r1, r1, #0xff000000
        add     r0, r0, r2
        ldr     r2, [r0]
        cmp     r2, r1
        movls   r0, #0
        bls     L637ed4
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        add     r0, r0, r1
L637ed4:
        bx      lr
        .size   A_637eac, . - A_637eac

@ FUN_00637ed8
        .global A_637ed8
        .type   A_637ed8, %function
A_637ed8:
        mov     r2, #6
        cmp     r2, r1, lsr #24
        bne     L637efc
        ldr     r2, [r0, #0x24]
        bic     r1, r1, #0xff000000
        add     r0, r0, r2
        ldr     r2, [r0]
        cmp     r2, r1
        bhi     L637f04
L637efc:
        mov     r0, #0
        bx      lr
L637f04:
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        add     r0, r0, r1
        bx      lr
        .size   A_637ed8, . - A_637ed8

@ FUN_00638358
        .global A_638358
        .type   A_638358, %function
A_638358:
        mov     r2, #2
        cmp     r2, r1, lsr #24
        bne     L63837c
        ldr     r2, [r0, #0xc]
        bic     r1, r1, #0xff000000
        add     r0, r0, r2
        ldr     r2, [r0]
        cmp     r2, r1
        bhi     L638384
L63837c:
        mov     r0, #0
        bx      lr
L638384:
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        add     r0, r0, r1
        bx      lr
        .size   A_638358, . - A_638358

@ FUN_00638394
        .global A_638394
        .type   A_638394, %function
A_638394:
        mov     r2, #5
        cmp     r2, r1, lsr #24
        bne     L6383b8
        ldr     r2, [r0, #0x1c]
        bic     r1, r1, #0xff000000
        add     r0, r0, r2
        ldr     r2, [r0]
        cmp     r2, r1
        bhi     L6383c0
L6383b8:
        mov     r0, #0
        bx      lr
L6383c0:
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        add     r0, r0, r1
        bx      lr
        .size   A_638394, . - A_638394

@ FUN_00638418
        .global A_638418
        .type   A_638418, %function
A_638418:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #8
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_638418, . - A_638418

@ FUN_00638440
        .global A_638440
        .type   A_638440, %function
A_638440:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #8
        bl      Fn_639d20
        cmp     r0, #0
        beq     L638468
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
L638468:
        pop     {r3, pc}
        .size   A_638440, . - A_638440

@ FUN_00638618
        .global A_638618
        .type   A_638618, %function
A_638618:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #8
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        pop     {r3, pc}
        .size   A_638618, . - A_638618

@ FUN_00638638
        .global A_638638
        .type   A_638638, %function
A_638638:
        ldr     r2, [r0, #4]
        add     r0, r0, r2
        mvn     r2, #0
        ldr     r3, [r0]
        cmp     r3, #0
        ldrne   r3, [r0, #4]
        streq   r2, [r1]
        strne   r3, [r1]
        ldr     r3, [r0]
        cmp     r3, #1
        ldrhi   r3, [r0, #8]
        strls   r2, [r1, #4]
        strhi   r3, [r1, #4]
        ldr     r3, [r0]
        cmp     r3, #2
        ldrhi   r3, [r0, #0xc]
        strls   r2, [r1, #8]
        strhi   r3, [r1, #8]
        ldr     r3, [r0]
        cmp     r3, #3
        ldrhi   r0, [r0, #0x10]
        strls   r2, [r1, #0xc]
        strhi   r0, [r1, #0xc]
        bx      lr
        .size   A_638638, . - A_638638

@ FUN_00638698
        .global A_638698
        .type   A_638698, %function
A_638698:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #0xc
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        pop     {r3, pc}
        .size   A_638698, . - A_638698

@ FUN_006386b8
        .global A_6386b8
        .type   A_6386b8, %function
A_6386b8:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #0xc
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_6386b8, . - A_6386b8

@ FUN_006386e0
        .global A_6386e0
        .type   A_6386e0, %function
A_6386e0:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #0xc
        bl      Fn_639d20
        cmp     r0, #0
        beq     L63870c
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsrs    r0, r0, #0x18
        beq     L638710
L63870c:
        mov     r0, #1
L638710:
        pop     {r3, pc}
        .size   A_6386e0, . - A_6386e0

@ FUN_006387f0
        .global A_6387f0
        .type   A_6387f0, %function
A_6387f0:
        ldrh    r1, [r0]
        cmp     r1, #0
        subne   r1, r1, #0x2000
        subsne  r1, r1, #0x20c
        beq     L638814
        cmp     r1, #1
        ldreq   r1, [r0, #4]
        addeq   r0, r0, r1
        beq     L638818
L638814:
        mov     r0, #0
L638818:
        bx      lr
        .size   A_6387f0, . - A_6387f0

@ FUN_0063881c
        .global A_63881c
        .type   A_63881c, %function
A_63881c:
        ldrh    r0, [r0]
        cmp     r0, #0
        beq     L638838
        sub     r0, r0, #0x2000
        subs    r0, r0, #0x20c
        cmpne   r0, #1
        beq     L63883c
L638838:
        mov     r0, #2
L63883c:
        bx      lr
        .size   A_63881c, . - A_63881c

@ FUN_00638840
        .global A_638840
        .type   A_638840, %function
A_638840:
        ldrh    r1, [r0]
        cmp     r1, #0
        beq     L638860
        sub     r1, r1, #0x2000
        subs    r1, r1, #0x20c
        ldreq   r1, [r0, #4]
        addeq   r0, r0, r1
        beq     L638864
L638860:
        mov     r0, #0
L638864:
        bx      lr
        .size   A_638840, . - A_638840

@ FUN_0063888c
        .global A_63888c
        .type   A_63888c, %function
A_63888c:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63888c, . - A_63888c

@ FUN_006388b0
        .global A_6388b0
        .type   A_6388b0, %function
A_6388b0:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        beq     L6388d8
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
L6388d8:
        pop     {r3, pc}
        .size   A_6388b0, . - A_6388b0

@ FUN_00638954
        .global A_638954
        .type   A_638954, %function
A_638954:
        push    {r3, lr}
        mov     r2, #0x11
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        andne   r0, r0, #1
        pop     {r3, pc}
        .size   A_638954, . - A_638954

@ FUN_006389c4
        .global A_6389c4
        .type   A_6389c4, %function
A_6389c4:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        beq     L6389ec
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
L6389ec:
        pop     {r3, pc}
        .size   A_6389c4, . - A_6389c4

@ FUN_006389fc
        .global A_6389fc
        .type   A_6389fc, %function
A_6389fc:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_6389fc, . - A_6389fc

@ FUN_00638f1c
        .global A_638f1c
        .type   A_638f1c, %function
A_638f1c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r1
        ldr     r0, [r0, #4]
        mov     r1, r2
        mov     r6, r3
        bl      Fn_637210
        mov     r1, r6
        bl      Fn_637244
        mov     r6, r0
        ldr     r0, [r5, #4]
        bl      Fn_637204
        ldr     r2, [r0]
        ldr     r1, [r6]
        cmp     r2, r1
        bls     L638fd0
        add     r0, r0, r1, lsl #3
        adds    r0, r0, #4
        beq     L638fd0
        ldr     r1, [r0]
        str     r1, [r4]
        ldr     r0, [r0, #4]
        str     r0, [r4, #4]
        mov     r0, r6
        bl      Fn_637598
        vstr    s0, [r4, #0x14]
        mov     r0, r6
        bl      Fn_6374e0
        mov     r1, r0
        add     r0, r4, #8
        bl      Fn_646564
        mov     r0, r6
        bl      Fn_63751c
        strb    r0, [r4, #0xd]
        mov     r0, r6
        bl      Fn_637570
        strb    r0, [r4, #0xe]
        mov     r0, r6
        bl      Fn_637544
        strb    r0, [r4, #0xf]
        mov     r0, r6
        bl      Fn_63760c
        strb    r0, [r4, #0x10]
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L638fd0:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_638f1c, . - A_638f1c

@ FUN_006390d0
        .global A_6390d0
        .type   A_6390d0, %function
A_6390d0:
        ldr     r2, [r0, #0x218]
        cmp     r2, r1
        ldreq   r0, [r0, #0x21c]
        movne   r2, #1
        beq     L6390fc
L6390e4:
        add     r3, r0, r2, lsl #3
        ldr     ip, [r3, #0x218]
        cmp     ip, r1
        bne     L639100
        add     r0, r0, r2, lsl #3
        ldr     r0, [r0, #0x21c]
L6390fc:
        bx      lr
L639100:
        ldr     r3, [r3, #0x220]
        cmp     r3, r1
        bne     L639118
        add     r0, r0, r2, lsl #3
        ldr     r0, [r0, #0x224]
        bx      lr
L639118:
        add     r2, r2, #2
        cmp     r2, #9
        blt     L6390e4
        mov     r0, #0
        bx      lr
        .size   A_6390d0, . - A_6390d0

@ FUN_006394b8
        .global A_6394b8
        .type   A_6394b8, %function
A_6394b8:
        push    {r4, r5, r6, lr}
        mov     r4, r2
        ldr     r0, [r0, #0x3c]
        bl      Fn_637eac
        movs    r5, r0
        beq     L639528
        bl      Fn_63881c
        cmp     r0, #0
        beq     L6394f4
        cmp     r0, #1
        beq     L639518
        cmp     r0, #2
        moveq   r0, #0
        beq     L639528
        b       L639524
L6394f4:
        mov     r0, r5
        bl      Fn_638840
        ldr     r1, [r0, #8]
        str     r1, [r4]
        ldr     r0, [r0, #4]
        cmn     r0, #1
        addne   r0, r0, #8
        str     r0, [r4, #4]
        b       L639524
L639518:
        mov     r0, r5
        bl      Fn_6387f0
        str     r0, [r4, #8]
L639524:
        mov     r0, #1
L639528:
        pop     {r4, r5, r6, pc}
        .size   A_6394b8, . - A_6394b8

@ FUN_0063952c
        .global A_63952c
        .type   A_63952c, %function
A_63952c:
        ldr     r0, [r0, #4]
        mov     r0, r0
        push    {r4, lr}
        ldr     r0, [r0, #0x3c]
        bl      Fn_6383e8
        ldr     r0, [r0]
        pop     {r4, pc}
        .size   A_63952c, . - A_63952c

@ FUN_00639548
        .global A_639548
        .type   A_639548, %function
A_639548:
        ldr     r0, [r0, #4]
        mov     r0, r0
        ldr     r0, [r0, #0x3c]
        b       Fn_637f50
        .size   A_639548, . - A_639548

@ FUN_00639558
        .global A_639558
        .type   A_639558, %function
A_639558:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        ldr     r0, [r0, #0x3c]
        mov     r4, r2
        bl      Fn_637ed8
        cmp     r0, #0
        beq     L6395d8
        ldr     r0, [r0]
        mvn     r5, #0
        mov     r1, r0
        str     r0, [r4]
        ldr     r0, [r6, #0x3c]
        bl      Fn_637eac
        movs    r6, r0
        beq     L6395dc
        bl      Fn_63881c
        cmp     r0, #0
        beq     L6395b4
        cmp     r0, #1
        beq     L6395c8
        cmp     r0, #2
        beq     L6395dc
        b       L6395d0
L6395b4:
        mov     r0, r6
        bl      Fn_638840
        ldr     r5, [r0, #8]
        nop
        b       L6395d0
L6395c8:
        mov     r0, r6
        bl      Fn_6387f0
L6395d0:
        mov     r0, #1
        str     r5, [r4, #4]
L6395d8:
        pop     {r4, r5, r6, pc}
L6395dc:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_639558, . - A_639558

@ FUN_006395e4
        .global A_6395e4
        .type   A_6395e4, %function
A_6395e4:
        push    {r4, r5, r6, lr}
        mov     r4, r2
        ldr     r0, [r0, #0x3c]
        bl      Fn_637f14
        movs    r5, r0
        beq     L639654
        ldr     r0, [r5]
        str     r0, [r4]
        ldr     r0, [r5, #4]
        str     r0, [r4, #4]
        ldrb    r0, [r5, #8]
        str     r0, [r4, #0x10]
        mov     r0, r5
        bl      Fn_63888c
        strb    r0, [r4, #0x14]
        mov     r0, r5
        bl      Fn_6388b0
        strb    r0, [r4, #0x15]
        mov     r0, r5
        bl      Fn_6389fc
        str     r0, [r4, #0xc]
        mov     r0, r5
        bl      Fn_6389c4
        str     r0, [r4, #8]
        mov     r0, r5
        bl      Fn_638954
        strb    r0, [r4, #0x16]
        mov     r0, #1
L639654:
        pop     {r4, r5, r6, pc}
        .size   A_6395e4, . - A_6395e4

@ FUN_00639710
        .global A_639710
        .type   A_639710, %function
A_639710:
        push    {r4, r5, r6, lr}
        mov     r4, r2
        ldr     r0, [r0, #0x3c]
        bl      Fn_637f14
        movs    r5, r0
        beq     L639778
        bl      Fn_638900
        cmp     r0, #3
        movne   r0, #0
        bne     L639778
        mov     r0, r5
        bl      Fn_6389f0
        mov     r5, r0
        ldr     r0, [r0]
        str     r0, [r4]
        ldr     r0, [r5, #4]
        str     r0, [r4, #4]
        mov     r0, r5
        bl      Fn_638418
        strb    r0, [r4, #8]
        mov     r0, r5
        bl      Fn_638440
        cmp     r0, #0
        movne   r0, #1
        strb    r0, [r4, #9]
        mov     r0, #1
L639778:
        pop     {r4, r5, r6, pc}
        .size   A_639710, . - A_639710

@ FUN_00639a44
        .global A_639a44
        .type   A_639a44, %function
A_639a44:
        push    {r4, r5, r6, lr}
        mov     r4, r2
        ldr     r0, [r0, #0x3c]
        bl      Fn_638394
        movs    r5, r0
        beq     L639a7c
        ldr     r0, [r5]
        str     r0, [r4]
        mov     r0, r5
        bl      Fn_638618
        str     r0, [r4, #4]
        ldrb    r0, [r5, #4]
        strb    r0, [r4, #8]
        mov     r0, #1
L639a7c:
        pop     {r4, r5, r6, pc}
        .size   A_639a44, . - A_639a44

@ FUN_00639b3c
        .global A_639b3c
        .type   A_639b3c, %function
A_639b3c:
        ldr     r0, [r0, #4]
        mov     r0, r0
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        lsr     r0, r1, #0x18
        ldr     r7, L639c34
        cmp     r0, #1
        mov     r6, r1
        beq     L639b74
        cmp     r0, #2
        beq     L639bf8
        cmp     r0, #3
        bne     L639bf0
        b       L639c20
L639b74:
        ldr     r0, [r5, #0x3c]
        bl      Fn_637f14
        nop
        nop
        bl      Fn_638900
        cmp     r0, #3
        moveq   r4, #0
        bne     L639bf0
        b       L639bdc
L639b98:
        ldr     r0, [r5, #0x3c]
        orr     r1, r4, #0x2000000
        bl      Fn_638358
        ldr     r1, [r0]
        cmp     r1, r6
        ldrls   r1, [r0, #4]
        cmpls   r6, r1
        addhi   r4, r4, #1
        bhi     L639bdc
        ldrh    r1, [r0, #0x10]
        cmp     r1, r7
        ldreq   r1, [r0, #0x14]
        movne   r0, #0
        addeq   r0, r0, r1
        ldr     r1, [r0, #4]
        add     r0, r0, r1
        pop     {r4, r5, r6, r7, r8, pc}
L639bdc:
        ldr     r0, [r5, #0x3c]
        bl      Fn_638400
        ldr     r0, [r0]
        cmp     r0, r4
        bhi     L639b98
L639bf0:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L639bf8:
        ldr     r0, [r5, #0x3c]
        bl      Fn_638358
        ldrh    r1, [r0, #0x10]
        cmp     r1, r7
        ldreq   r1, [r0, #0x14]
        movne   r0, #0
        addeq   r0, r0, r1
        ldr     r1, [r0, #4]
L639c18:
        add     r0, r0, r1
        pop     {r4, r5, r6, r7, r8, pc}
L639c20:
        ldr     r0, [r5, #0x3c]
        bl      Fn_637e70
        ldr     r1, [r0, #8]
        nop
        b       L639c18
L639c34:
        .word   0x00002205
        .size   A_639b3c, . - A_639b3c

@ FUN_00639c38
        .global A_639c38
        .type   A_639c38, %function
A_639c38:
        push    {r4, r5, r6, lr}
        mov     r4, r2
        ldr     r0, [r0, #0x3c]
        bl      Fn_637f14
        movs    r5, r0
        beq     L639ca4
        bl      Fn_638900
        cmp     r0, #1
        movne   r0, #0
        bne     L639ca4
        mov     r0, r5
        bl      Fn_638a30
        mov     r5, r0
        bl      Fn_638698
        str     r0, [r4]
        ldr     r0, [r5, #8]
        str     r0, [r4, #0x14]
        mov     r0, r5
        bl      Fn_6386b8
        strb    r0, [r4, #0x18]
        mov     r0, r5
        bl      Fn_6386e0
        strb    r0, [r4, #0x19]
        add     r1, r4, #4
        mov     r0, r5
        bl      Fn_638638
        mov     r0, #1
L639ca4:
        pop     {r4, r5, r6, pc}
        .size   A_639c38, . - A_639c38

@ FUN_00639de4
        .global A_639de4
        .type   A_639de4, %function
A_639de4:
        ldr     r1, [r0, #0x10]
        ldr     r2, [r0, #0xc]
        vldr    s0, [r0, #8]
        cmp     r1, r2
        bge     L639e1c
        vmov    s2, r1
        vldr    s1, [r0, #4]
        vmov    s3, r2
        vsub.f32 s0, s0, s1
        vcvt.f32.s32 s4, s2
        vcvt.f32.s32 s2, s3
        vmul.f32 s3, s0, s4
        vdiv.f32 s0, s3, s2
        vadd.f32 s0, s0, s1
L639e1c:
        bx      lr
        .size   A_639de4, . - A_639de4

@ FUN_00639e2c
        .global A_639e2c
        .type   A_639e2c, %function
A_639e2c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        bl      Fn_55e338
        add     r0, r0, #0x1c4
        bl      Fn_0244c8
        ldr     r0, [r4, #8]
        add     r1, r4, #8
        mov     r5, #0
        cmp     r0, r1
        beq     L639e6c
L639e54:
        ldr     r1, [r0, #-0x50]
        ldr     r0, [r0]
        add     r5, r5, r1
        add     r1, r4, #8
        cmp     r0, r1
        bne     L639e54
L639e6c:
        nop
        bl      Fn_55e338
        add     r0, r0, #0x1c4
        nop
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, pc}
        .size   A_639e2c, . - A_639e2c

@ FUN_0063b868
        .global A_63b868
        .type   A_63b868, %function
A_63b868:
        vldr    s1, [r0]
        vldr    s0, L63b8f8
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        bxeq    lr
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x10]
        ldr     r1, [r4, #8]
        cmp     r1, r0
        bhi     L63b8f4
        ldrb    r1, [r4, #0xd]
        ldr     r0, L63b8fc
        ldr     r0, [r0, r1, lsl #2]
        cmp     r0, #0
        vldreq  s0, L63b900
        beq     L63b8dc
        cmp     r1, #4
        beq     L63b8c0
        vldr    s0, [r4, #0x14]
        blx     r0
        b       L63b8dc
L63b8c0:
        ldrb    r1, [r4, #0x1d]
        cmp     r1, #0
        vldreq  s0, [r4, #0x18]
        beq     L63b8dc
        vldr    s0, [r4, #0x14]
        blx     r0
        vstr    s0, [r4, #0x18]
L63b8dc:
        vldr    s1, [r4]
        ldrb    r0, [r4, #0xc]
        vmul.f32 s0, s1, s0
        vmov    s1, r0
        vcvt.f32.u32 s1, s1
        vmul.f32 s0, s1, s0
L63b8f4:
        pop     {r4, pc}
L63b8f8:
        .word   0x00000000
L63b8fc:
        .word   0x009df8d8
L63b900:
        .word   0x3f800000
        .size   A_63b868, . - A_63b868

@ FUN_00646678
        .global A_646678
        .type   A_646678, %function
A_646678:
        ldr     r2, L6466d4
        push    {r4, r5, r6}
        ldr     ip, [r2]
        ldr     r3, [r2, #4]
        add     r4, ip, r1, lsl #2
        add     r4, r4, #8
        cmp     r4, r3
        strhs   r3, [r2]
        bhs     L6466cc
        cmp     r1, #0
        beq     L6466cc
        sub     r1, r1, #1
        mov     r4, #0
        orr     r6, r0, r1, lsl #20
        tst     r1, #1
        stm     ip, {r4, r6}
        add     r0, ip, #8
        addne   r1, r1, #1
        str     r0, [r2]
        add     r0, r0, r1, lsl #2
        str     r0, [r2]
L6466cc:
        pop     {r4, r5, r6}
        bx      lr
L6466d4:
        .word   0x008ab4f8
        .size   A_646678, . - A_646678

@ FUN_006466d8
        .global A_6466d8
        .type   A_6466d8, %function
A_6466d8:
        push    {r4, r5, r6, r7, r8, sb, sl}
        lsr     r4, r1, #7
        bic     ip, r1, #1
        add     r4, ip, r4, lsl #1
        ldr     r6, L6467b8
        ldm     r6, {r3, ip}
        add     r4, r3, r4, lsl #2
        add     r4, r4, #8
        cmp     ip, r4
        strls   ip, [r6]
        bls     L6467b0
        cmp     r1, #0
        mov     r5, #0
        subhi   r7, r5, #0x100000
        bls     L6467ac
L646714:
        add     ip, r2, r5, lsl #2
        sub     r8, r1, r5
        ldr     r4, [ip], #4
        cmp     r8, #0x80
        movhi   r8, #0x80
        str     r4, [r3], #4
        lsr     r4, r8, #1
        add     sb, r0, r5
        add     r8, r7, r8, lsl #20
        orr     r8, r8, sb
        orr     r8, r8, #0x80000000
        orr     r8, r8, #0xf0000
        cmn     r4, #0x80000001
        str     r8, [r3], #4
        bls     L64676c
L646750:
        ldr     r8, [ip], #4
        subs    r4, r4, #1
        str     r8, [r3], #4
        ldr     r8, [ip], #4
        str     r8, [r3], #4
        bne     L646750
        b       L6467a0
L64676c:
        lsl     sb, r4, #1
        cmp     sb, #0
        ble     L6467a0
        sub     ip, ip, #4
        sub     r8, r3, #4
        asr     sb, sb, #1
L646784:
        ldr     sl, [ip, #4]
        subs    sb, sb, #1
        str     sl, [r8, #4]
        ldr     sl, [ip, #8]!
        str     sl, [r8, #8]!
        bne     L646784
        add     r3, r3, r4, lsl #3
L6467a0:
        add     r5, r5, #0x80
        cmp     r5, r1
        blo     L646714
L6467ac:
        str     r3, [r6]
L6467b0:
        pop     {r4, r5, r6, r7, r8, sb, sl}
        bx      lr
L6467b8:
        .word   0x008ab4f8
        .size   A_6466d8, . - A_6466d8

@ FUN_006467bc
        .global A_6467bc
        .type   A_6467bc, %function
A_6467bc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r1, #0
        mov     r2, r1
        ldr     r0, L646c44
        ldr     r4, L646c4c
        ldr     r0, [r0]
        ldr     sl, [r0, #8]
        ldr     r0, L646c48
        ldr     r5, [r0]
        ldr     r0, [sl, #0xc]
        cmp     r0, #0
        ldreq   r3, [sl, #0x1c]
        cmpeq   r3, #0
        ldreq   ip, L646c50
        beq     L646870
        ldr     ip, L646c54
        cmp     r0, #0
        beq     L646820
        ldr     r1, [r0]
        cmp     r1, #0
        ldrne   r1, [r0, #0xc]
        cmpne   r1, #0
        ldrne   r2, [r0, #0x10]
        cmpne   r2, #0
        beq     L646870
L646820:
        ldr     r3, [sl, #0x1c]
        cmp     r3, #0
        beq     L646868
        ldr     r6, [r3]
        cmp     r6, #0
        ldrne   r6, [r3, #0xc]
        cmpne   r6, #0
        ldrne   r7, [r3, #0x10]
        cmpne   r7, #0
        beq     L646870
        cmp     r1, #0
        beq     L646868
        cmp     r6, r1
        bne     L646860
        cmp     r7, r2
        beq     L646868
L646860:
        ldr     ip, L646c58
        b       L646870
L646868:
        cmp     r0, r3
        movne   ip, r4
L646870:
        cmp     ip, r4
        add     r4, r5, #0x400
        mov     r7, #0
        add     r4, r4, #0x284
        beq     L646898
        str     r7, [r4]
        strb    r7, [r4, #0xc]
        strb    r7, [r4, #0xd]
        strb    r7, [r4, #0xe]
L646894:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L646898:
        str     ip, [r4]
        ldr     r0, [r5, #8]
        tst     r0, #0x100
        bne     L646894
        ldr     r8, [sl, #0xc]
        ldr     sb, [sl, #0x1c]
        mov     r2, #0
        add     r6, r5, #0x800
        cmp     r8, #0
        mov     fp, #1
        mov     r3, r2
        add     r6, r6, #4
        beq     L6468dc
        ldr     r0, [r6, #0xc]
        ldr     r1, [r8]
        cmp     r0, r1
        bne     L646900
L6468dc:
        cmp     sb, #0
        beq     L6468f4
        ldr     r0, [r6, #8]
        ldr     r1, [sb]
        cmp     r0, r1
        bne     L646900
L6468f4:
        ldr     r0, [r5, #4]
        tst     r0, #0x100
        beq     L646958
L646900:
        ldr     r0, L646c5c
        ldr     r1, L646c60
        ldr     r0, [r0]
        ldr     r1, [r1]
        cmp     r1, r0
        bls     L64692c
        ldr     ip, L646c64
        add     lr, r0, #8
        stm     r0, {fp, ip}
        ldr     r0, L646c5c
        str     lr, [r0]
L64692c:
        ldr     r0, L646c60
        ldr     ip, L646c5c
        ldr     r1, [r0]
        ldr     r0, [ip]
        cmp     r0, r1
        bhs     L646958
        ldr     ip, L646c68
        add     lr, r0, #8
        stm     r0, {fp, ip}
        ldr     r0, L646c5c
        str     lr, [r0]
L646958:
        ldr     r0, [sl, #0xc]
        cmp     r0, #0
        strbeq  r7, [r4, #0xc]
        beq     L646a58
        strb    fp, [r4, #0xc]
        ldr     r0, [r8]
        str     r0, [r6, #0xc]
        ldr     r0, [r8, #0x20]
        str     r0, [r6, #0x14]
        ldr     r0, [r8, #0x1c]
        cmp     r0, #0
        beq     L6469a4
        cmp     r0, #2
        beq     L6469b4
        cmp     r0, #3
        beq     L6469c4
        cmp     r0, #4
        bne     L6469e0
        b       L6469d4
L6469a4:
        mov     r0, #2
        str     r7, [r4, #4]
        str     r0, [r6]
        b       L6469e0
L6469b4:
        mov     r0, #2
        str     r0, [r4, #4]
        str     r7, [r6]
        b       L6469e0
L6469c4:
        mov     r0, #3
        str     r0, [r4, #4]
        str     r7, [r6]
        b       L6469e0
L6469d4:
        mov     r0, #4
        str     r0, [r4, #4]
        str     r7, [r6]
L6469e0:
        ldr     r2, L646c5c
        ldr     r1, L646c60
        ldr     r0, [r2]
        ldr     r1, [r1]
        cmp     r0, r1
        bhs     L646a14
        ldr     lr, [r4, #4]
        ldr     r3, [r6]
        ldr     ip, L646c6c
        orr     r3, r3, lr, lsl #16
        stm     r0, {r3, ip}
        add     lr, r0, #8
        str     lr, [r2]
L646a14:
        ldr     r0, L646c60
        ldr     r1, [r0]
        ldr     r0, L646c5c
        ldr     r0, [r0]
        cmp     r0, r1
        bhs     L646a54
        ldr     r0, [r6, #0xc]
        bl      Fn_02a670
        ldr     r1, L646c5c
        ldr     r3, L646c70
        lsr     r2, r0, #3
        ldr     ip, [r1]
        str     r2, [ip]
        add     r2, ip, #8
        str     r3, [ip, #4]
        str     r2, [r1]
L646a54:
        ldrd    r2, r3, [r8, #0xc]
L646a58:
        ldr     r0, [sl, #0x1c]
        cmp     r0, #0
        strbeq  r7, [r4, #0xd]
        strbeq  r7, [r4, #0xe]
        beq     L646b78
        ldr     r0, [r5, #0x68c]
        strb    fp, [r4, #0xd]
        ldr     r1, [sb]
        str     r1, [r6, #8]
        ldr     r1, [sb, #0x38]
        cmp     r1, #0x10
        streq   r7, [r6, #4]
        streq   r7, [r5, #0x68c]
        beq     L646abc
        cmp     r1, #0x18
        beq     L646ab0
        cmp     r1, #0x20
        bne     L646abc
        mov     r1, #3
        str     r1, [r6, #4]
        str     r1, [r5, #0x68c]
        b       L646abc
L646ab0:
        mov     r1, #2
        str     r1, [r6, #4]
        str     r1, [r5, #0x68c]
L646abc:
        ldrb    r1, [r5, #0x54]
        cmp     r1, #0
        beq     L646af4
        ldr     r1, [r5, #0x68c]
        cmp     r1, #0
        beq     L646ae0
        cmp     r0, #0
        beq     L646ae8
        b       L646af4
L646ae0:
        cmp     r0, #0
        beq     L646b04
L646ae8:
        ldr     r0, [r5]
        orr     r0, r0, #4
        str     r0, [r5]
L646af4:
        ldr     r0, [r5, #0x68c]
        cmp     r0, #3
        moveq   r0, #1
        beq     L646b08
L646b04:
        mov     r0, #0
L646b08:
        strb    r0, [r4, #0xe]
        ldr     r0, [sb, #0x20]
        ldr     r7, L646c5c
        ldr     r2, L646c60
        str     r0, [r6, #0x10]
        ldr     r1, [r7]
        ldr     r0, [r2]
        cmp     r1, r0
        bhs     L646b40
        ldr     r3, [r6, #4]
        ldr     ip, L646c74
        add     r8, r1, #8
        stm     r1, {r3, ip}
        str     r8, [r7]
L646b40:
        ldr     r0, [r2]
        ldr     r1, [r7]
        cmp     r1, r0
        bhs     L646b74
        ldr     r0, [r6, #8]
        bl      Fn_02a670
        ldr     r1, [r7]
        ldr     r2, L646c78
        lsr     r3, r0, #3
        add     r0, r1, #4
        str     r3, [r1], #8
        str     r2, [r0]
        str     r1, [r7]
L646b74:
        ldrd    r2, r3, [sb, #0xc]
L646b78:
        ldr     r0, [r4, #0x14]
        cmp     r0, r2
        ldreq   r0, [r4, #0x18]
        cmpeq   r0, r3
        bne     L646b98
        ldr     r0, [r5, #4]
        tst     r0, #0x100
        beq     L646c20
L646b98:
        ldr     r0, L646c5c
        ldr     r7, L646c60
        sub     ip, r3, #1
        bic     r8, ip, #0xff000
        ldr     ip, [r0]
        ldr     r1, [r7]
        lsl     r6, r2, #0x14
        lsr     r6, r6, #0x14
        cmp     ip, r1
        orr     r6, r6, r8, lsl #12
        bhs     L646bdc
        ldr     r8, L646c7c
        orr     sl, r6, #0x1000000
        add     sb, ip, #8
        str     r8, [ip, #4]
        str     sl, [ip]
        str     sb, [r0]
L646bdc:
        ldr     r1, [r7]
        ldr     ip, [r0]
        cmp     ip, r1
        bhs     L646c04
        ldr     r7, L646c80
        orr     r8, r6, #0x1000000
        add     r6, ip, #8
        str     r7, [ip, #4]
        str     r8, [ip]
        str     r6, [r0]
L646c04:
        strd    r2, r3, [r4, #0x14]
        ldrb    r0, [r5, #0x648]
        cmp     r0, #0
        beq     L646c20
        ldr     r0, [r5]
        orr     r0, r0, #0x200
        str     r0, [r5]
L646c20:
        ldrb    r1, [r5, #0x30]
        add     r0, r5, #0x20
        cmp     r1, #0
        bne     L646894
        strb    fp, [r0, #0x10]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r1, #0
        mov     r0, r1
        b       Fn_666080
L646c44:
        .word   0x008ab504
L646c48:
        .word   0x008ab81c
L646c4c:
        .word   0x00008cd5
L646c50:
        .word   0x00008cd7
L646c54:
        .word   0x00008cd6
L646c58:
        .word   0x00008cd9
L646c5c:
        .word   0x008ab4f8
L646c60:
        .word   0x008ab4fc
L646c64:
        .word   0x000f0111
L646c68:
        .word   0x000f0110
L646c6c:
        .word   0x000f0117
L646c70:
        .word   0x000f011d
L646c74:
        .word   0x000f0116
L646c78:
        .word   0x000f011c
L646c7c:
        .word   0x000f011e
L646c80:
        .word   0x000f006e
        .size   A_6467bc, . - A_6467bc

@ FUN_00648e40
        .global A_648e40
        .type   A_648e40, %function
A_648e40:
        push    {r4, lr}
        ldr     r4, L648ee8
        ldr     r0, [r4, #8]
        ldr     r0, [r0]
        cmp     r0, #0
        beq     L648ee4
        add     r2, r4, #0
        ldr     r1, [r0, #0xe38]
        ldr     r3, [r2, #8]
        ldr     r2, L648eec
        cmp     r1, r2
        add     r1, r3, #0x1000
        add     r1, r1, #0x770
        bne     L648eb4
        ldr     r0, [r1]
        cmp     r0, r2
        beq     L648ecc
        ldr     r2, L648ef0
        ldr     r0, L648ef4
        ldr     r1, [r2]
        ldr     r0, [r0]
        cmp     r0, r1
        bls     L648ecc
        ldr     ip, L648ef8
        mov     r3, #0
        add     lr, r1, #8
        stm     r1, {r3, ip}
        str     lr, [r2]
        b       L648ecc
L648eb4:
        ldr     r1, [r1]
        cmp     r1, r2
        bne     L648ecc
        ldrb    r0, [r0, #0xe74]
        cmp     r0, #0
        blne    Fn_65b730
L648ecc:
        ldr     r0, [r4, #8]
        ldr     r1, [r0]
        add     r0, r0, #0x1000
        add     r0, r0, #0x770
        ldr     r1, [r1, #0xe38]
        str     r1, [r0]
L648ee4:
        pop     {r4, pc}
L648ee8:
        .word   0x008ab508
L648eec:
        .word   0x00006051
L648ef0:
        .word   0x008ab4f8
L648ef4:
        .word   0x008ab4fc
L648ef8:
        .word   0x000f0125
        .size   A_648e40, . - A_648e40

@ FUN_00648efc
        .global A_648efc
        .type   A_648efc, %function
A_648efc:
        push    {r0, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #0x830
        ldr     r0, [sp, #0x850]
        ldr     r1, [r0]
        mov     r0, #0
        str     r0, [sp, #0x100]
        tst     r1, #0x200
        ldr     r1, L649eb4
        str     r0, [sp, #0x818]
        ldr     r5, [r1]
        beq     L64903c
        ldr     r0, [r5, #8]
        tst     r0, #0x1000
        bne     L64903c
        ldrb    r0, [r5, #0x648]
        cmp     r0, #0
        beq     L649060
        add     r0, r5, #0x400
        ldr     r3, [r5, #0x5e4]
        add     r0, r0, #0x1ec
        ldr     r2, [r5, #0x5e8]
        ldr     ip, [r5, #0x698]
        ldm     r0, {r0, r6}
        sub     r4, r3, #1
        cmp     ip, r3
        sub     r1, r2, #1
        add     r4, r4, r0
        add     r1, r1, r6
        suble   r3, ip, #1
        ble     L648f80
        cmp     r3, #0
        movlt   r3, #0
L648f80:
        ldr     r0, [r5, #0x69c]
        cmp     r0, r2
        suble   r2, r0, #1
        ble     L648f98
        cmp     r2, #0
        movlt   r2, #0
L648f98:
        cmp     ip, r4
        sublt   r4, ip, #1
        blt     L648fac
        cmp     r4, #0
        movlt   r4, #0
L648fac:
        cmp     r0, r1
        sublt   r1, r0, #1
        blt     L648fc0
        cmp     r1, #0
        movlt   r1, #0
L648fc0:
        mov     ip, #3
L648fc4:
        ldr     r7, L649eb8
        ldr     r6, L649ebc
        ldr     r0, [r7]
        ldr     r8, [r6]
        cmp     r0, r8
        bhs     L648ff0
        ldr     sb, L649ec0
        add     sl, r0, #8
        str     sb, [r0, #4]
        str     ip, [r0]
        str     sl, [r7]
L648ff0:
        ldr     ip, [r7]
        ldr     r0, [r6]
        cmp     ip, r0
        bhs     L649014
        ldr     r8, L649ec4
        orr     r3, r3, r2, lsl #16
        add     r2, ip, #8
        stm     ip, {r3, r8}
        str     r2, [r7]
L649014:
        ldr     r0, [r6]
        ldr     r2, [r7]
        cmp     r2, r0
        bhs     L64903c
        ldr     r3, L649ec8
        orr     ip, r4, r1, lsl #16
        add     r1, r2, #8
        str     r3, [r2, #4]
        str     ip, [r2]
        str     r1, [r7]
L64903c:
        ldr     r0, L649ecc
        ldr     r1, [r0, #8]
        ldr     r4, [r1]
        cmp     r4, #0
        beq     L64c704
        ldr     r1, [r5, #8]
        tst     r1, #4
        beq     L649080
        b       L649158
L649060:
        ldr     r1, [r5, #0x698]
        ldr     r0, [r5, #0x69c]
        mov     r2, #0
        sub     r4, r1, #1
        mov     r3, r2
        mov     ip, r2
        sub     r1, r0, #1
        b       L648fc4
L649080:
        ldrb    r0, [r4, #0x424]
        ldr     sb, L649ecc
        cmp     r0, #0
        movne   r6, #1
        ldr     r0, [sb, #0xc]
        moveq   r6, #0
        cmp     r6, r0
        bne     L6490ac
        ldr     r0, [r5, #4]
        tst     r0, #4
        beq     L649158
L6490ac:
        ldr     r0, L649ed0
        mov     r1, #0xa
        bl      Fn_646678
        mov     r1, #0x1e
        mov     r0, #0x200
        bl      Fn_646678
        ldr     r7, L649eb8
        ldr     r8, L649ebc
        ldr     r0, [r7]
        ldr     r1, [r8]
        cmp     r0, r1
        bhs     L6490f8
        ldr     r3, L649ed4
        cmp     r6, #0
        movne   r2, #2
        moveq   r2, #0
        add     ip, r0, #8
        strd    r2, r3, [r0]
        str     ip, [r7]
L6490f8:
        mov     r1, #0x1e
        mov     r0, #0x200
        bl      Fn_646678
        str     r6, [sb, #0xc]
        ldr     r2, L649ed8
        ldr     r1, [r8]
        ldr     r0, [r7]
        cmp     r6, #0
        beq     L64913c
        cmp     r0, r1
        bhs     L649158
        mov     r3, #1
        str     r2, [r0, #4]
        add     ip, r0, #8
        str     r3, [r0]
        str     ip, [r7]
        b       L649158
L64913c:
        cmp     r0, r1
        bhs     L649158
        mov     r3, #0
        str     r2, [r0, #4]
        add     ip, r0, #8
        str     r3, [r0]
        str     ip, [r7]
L649158:
        ldrb    r0, [r4, #0x424]
        cmp     r0, #0
        beq     L6491e4
        ldr     ip, [r4, #0x4e8]
        ldr     r1, L649ecc
        bic     ip, ip, #0x8000
        str     ip, [r4, #0x4e8]
        ldr     r1, [r1, #8]
        add     r0, r1, #0x1000
        ldr     ip, [r0, #0x10]
        orr     ip, ip, #0x8000
        str     ip, [r0, #0x10]
        ldrb    r0, [r4, #0x427]
        orr     r0, r0, #2
        strb    r0, [r4, #0x427]
        ldr     r0, [r4, #0x7d8]
        orr     r0, r0, #2
        str     r0, [r4, #0x7d8]
        ldr     r0, [sp, #0x850]
        ldr     r0, [r0]
        tst     r0, #0x800000
        beq     L6491e4
        ldr     r0, [r5, #8]
        tst     r0, #4
        moveq   r0, #1
        bne     L6491e4
L6491c0:
        add     r2, r4, r0, lsl #2
        add     r3, r1, r0, lsl #2
        ldr     r2, [r2, #0x4e4]
        add     r3, r3, #0x1000
        add     r0, r0, #1
        mvn     r2, r2
        cmp     r0, #8
        str     r2, [r3, #0xc]
        bls     L6491c0
L6491e4:
        ldr     r0, [sp, #0x850]
        ldr     r0, [r0]
        tst     r0, #0x100000
        beq     L6493d4
        ldr     r0, [r5, #8]
        tst     r0, #1
        bne     L6493d4
        ldrb    r0, [r4, #0x424]
        ldr     r2, L649edc
        cmp     r0, #0
        sub     r7, r2, #0xc
        beq     L6492b8
        ldr     r6, L649eb8
        ldr     r8, L649ebc
        ldr     r0, [r6]
        ldr     r1, [r8]
        cmp     r0, r1
        bhs     L649240
        mov     r3, #0
        str     r2, [r0, #4]
        add     ip, r0, #8
        str     r3, [r0]
        str     ip, [r6]
L649240:
        ldr     r0, [r4, #0x414]
        ldr     r1, [r0, #4]
        ldr     r2, [r0]
        mov     r0, #0x29c
        bl      Fn_02a4dc
        ldr     r0, [r8]
        ldr     r1, [r6]
        cmp     r1, r0
        bhs     L649274
        mov     r2, #1
        stm     r1, {r2, r7}
        add     r3, r1, #8
        str     r3, [r6]
L649274:
        ldr     r1, [r8]
        ldr     r0, [r6]
        cmp     r0, r1
        bhs     L649298
        ldr     r3, L649ee0
        mov     r2, #0
        add     ip, r0, #8
        strd    r2, r3, [r0]
        str     ip, [r6]
L649298:
        ldr     r0, [r4, #0x414]
        ldr     r2, [r0, #8]!
        ldr     r1, [r0, #4]
        ldr     r0, L649ee4
        bl      Fn_02a4dc
        nop
        nop
        b       L649330
L6492b8:
        ldr     r0, [r4, #0x414]
        ldr     r0, [r0, #4]
        cmp     r0, #0x200
        bls     L649330
        ldr     r6, L649eb8
        ldr     r8, L649ebc
        ldr     r1, [r6]
        ldr     r0, [r8]
        cmp     r1, r0
        bhs     L6492f4
        mov     r3, #0x200
        str     r2, [r1, #4]
        add     ip, r1, #8
        str     r3, [r1]
        str     ip, [r6]
L6492f4:
        ldr     r0, [r4, #0x414]
        ldr     r1, [r0]
        ldr     r0, [r0, #4]
        add     r2, r1, #0x800
        sub     r1, r0, #0x200
        mov     r0, #0x29c
        bl      Fn_02a4dc
        ldr     r0, [r8]
        ldr     r1, [r6]
        cmp     r1, r0
        bhs     L649330
        mov     r2, #1
        stm     r1, {r2, r7}
        add     r3, r1, #8
        str     r3, [r6]
L649330:
        ldr     r6, L649eb8
        ldr     r7, L649ebc
        ldr     r1, [r6]
        ldr     r0, [r7]
        cmp     r1, r0
        bhs     L64935c
        ldr     r3, L649ee8
        mov     r2, #0
        add     ip, r1, #8
        strd    r2, r3, [r1]
        str     ip, [r6]
L64935c:
        ldr     r0, [r4, #0x414]
        ldr     r1, [r0, #4]
        ldr     r2, [r0]
        mov     r0, #0x2cc
        cmp     r1, #0x200
        movhi   r1, #0x200
        bl      Fn_02a4dc
        ldr     r0, [r7]
        ldr     r1, [r6]
        cmp     r1, r0
        bhs     L64939c
        ldr     r3, L649eec
        mov     r2, #1
        add     ip, r1, #8
        strd    r2, r3, [r1]
        str     ip, [r6]
L64939c:
        ldr     r0, [r7]
        ldr     r2, [r6]
        cmp     r2, r0
        bhs     L6493c0
        ldr     r3, L649ef0
        mov     r1, #0
        add     ip, r2, #8
        stm     r2, {r1, r3}
        str     ip, [r6]
L6493c0:
        ldr     r0, [r4, #0x414]
        ldr     r2, [r0, #8]!
        ldr     r1, [r0, #4]
        ldr     r0, L649ef4
        bl      Fn_02a4dc
L6493d4:
        ldr     r0, [sp, #0x850]
        ldr     r0, [r0]
        tst     r0, #0x1000000
        beq     L649420
        ldr     r0, [r5, #8]
        tst     r0, #4
        bne     L649420
        ldr     r1, L649ecc
        mov     r0, #9
        ldr     r1, [r1, #8]
L6493fc:
        add     r2, r4, r0, lsl #2
        ldr     r2, [r2, #0x4e4]
        add     r3, r1, r0, lsl #2
        add     r3, r3, #0x1000
        add     r0, r0, #1
        mvn     r2, r2
        cmp     r0, #0x10
        str     r2, [r3, #0xc]
        bls     L6493fc
L649420:
        ldr     r0, [sp, #0x850]
        ldr     r0, [r0]
        tst     r0, #0x600000
        beq     L6494f4
        ldr     r1, [r5, #8]
        tst     r1, #8
        bne     L6494f4
        ldrb    r1, [r4, #0x424]
        cmp     r1, #0
        tstne   r0, #0x400000
        beq     L649498
        ldr     r0, [r4, #0x41c]
        ldr     r1, [r4, #0x414]
        mov     r6, #0
        add     r2, r0, r0, lsl #1
        ldr     r1, [r1, #0x10]
        rsb     r0, r2, r0, lsl #5
        add     r7, r1, r0, lsl #3
        ldr     r0, [r7, #0x34]
        cmp     r0, #0
        bls     L649498
L649474:
        ldr     r0, [r7, #0x30]
        mov     r1, #4
        add     r2, r0, r6, lsl #4
        mov     r0, #0x290
        bl      Fn_6466d8
        ldr     r0, [r7, #0x34]
        add     r6, r6, #1
        cmp     r0, r6
        bhi     L649474
L649498:
        ldr     r0, [sp, #0x850]
        ldr     r0, [r0]
        tst     r0, #0x200000
        beq     L6494f4
        ldr     r0, [r4, #0x418]
        ldr     r1, [r4, #0x414]
        mov     r6, #0
        add     r2, r0, r0, lsl #1
        ldr     r1, [r1, #0x10]
        rsb     r0, r2, r0, lsl #5
        add     r7, r1, r0, lsl #3
        ldr     r0, [r7, #0x34]
        cmp     r0, #0
        bls     L6494f4
L6494d0:
        ldr     r0, [r7, #0x30]
        mov     r1, #4
        add     r2, r0, r6, lsl #4
        mov     r0, #0x2c0
        bl      Fn_6466d8
        ldr     r0, [r7, #0x34]
        add     r6, r6, #1
        cmp     r0, r6
        bhi     L6494d0
L6494f4:
        ldr     r0, [r5, #8]
        tst     r0, #0x200
        bne     L64a3e4
        ldr     r0, [sp, #0x850]
        ldr     r1, L649ef8
        ldr     r0, [r0]
        tst     r0, r1
        beq     L64a2ec
        ldr     r0, L649ecc
        mov     ip, #0
        add     r2, sp, #0x68
        mov     r6, ip
        ldr     r1, [r0, #8]
        mov     r7, ip
        mov     r8, #0xf
        mov     sl, r2
        ldr     r0, [r1, #4]
        cmp     r0, r4
        moveq   r3, #1
        movne   r3, #0
        str     r3, [sp, #0x64]
        mov     r0, #1
        str     r4, [r1, #4]
        strb    r0, [r5, #0x81c]
        mov     r3, ip
        str     ip, [sp, #0x6c]
L64955c:
        add     r0, r8, r8, lsl #1
        add     r1, r4, r0, lsl #2
        ldr     r1, [r1, #0x358]
        cmn     r1, #1
        beq     L649640
        add     r0, r5, r0, lsl #3
        ldrb    r1, [r0, #0x46d]
        cmp     r1, #0
        beq     L649610
        ldr     r0, [r0, #0x468]
        cmp     r0, #0
        moveq   r0, #0
        strbeq  r0, [r5, #0x81c]
        beq     L6495a4
        add     r0, r5, r8, lsl #2
        ldr     r0, [r0, #0x6a4]
        cmp     r0, r3
        movhi   r3, r0
L6495a4:
        add     ip, sl, r6, lsl #3
        cmp     r6, #0
        str     r8, [ip]
        beq     L64963c
        ldr     r0, [r2]
        add     r1, r5, r8, lsl #2
        ldr     sb, [r1, #0x6a4]
        add     r0, r5, r0, lsl #2
        ldr     r0, [r0, #0x6a4]
        cmp     sb, r0
        strle   r2, [ip, #4]
        movle   r2, ip
        ble     L64963c
        ldr     r0, [r2, #4]
        mov     r1, r2
        cmp     r0, #0
        beq     L649630
L6495e8:
        ldr     fp, [r0]
        add     fp, r5, fp, lsl #2
        ldr     fp, [fp, #0x6a4]
        cmp     sb, fp
        bgt     L649620
        str     ip, [r1, #4]
        cmp     r0, #0
        str     r0, [ip, #4]
        bne     L64963c
        b       L649630
L649610:
        add     r0, sp, #0x18
        str     r8, [r0, r7, lsl #2]
        add     r7, r7, #1
        b       L649640
L649620:
        mov     r1, r0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        bne     L6495e8
L649630:
        mov     r0, #0
        str     ip, [r1, #4]
        str     r0, [ip, #4]
L64963c:
        add     r6, r6, #1
L649640:
        subs    r8, r8, #1
        bpl     L64955c
        ldrb    r0, [r5, #0x76c]
        cmp     r0, #0
        bne     L649660
        add     r0, r6, r7
        cmp     r0, #0xc
        ble     L649668
L649660:
        mov     r0, #0
        strb    r0, [r5, #0x81c]
L649668:
        cmp     r6, #0
        beq     L6496c0
        ldr     r0, [r2]
        add     r0, r5, r0, lsl #2
        ldr     r0, [r0, #0x6a4]
        bic     r0, r0, #0xf
        str     r0, [r5, #0x6e4]
        ldrb    r1, [r5, #0x81c]
        cmp     r1, #0
        beq     L6496c8
        ldrb    r1, [r5, #0x19]
        cmp     r1, #0
        bne     L6496b4
        ldr     r1, [r5, #0x6a0]
        cmp     r1, r0
        movlo   r0, r1
        cmp     r1, r3
        movls   r1, r3
        mov     r3, r1
L6496b4:
        sub     r0, r3, r0
        cmp     r0, #0x10000000
        blo     L6496c8
L6496c0:
        mov     r0, #0
        strb    r0, [r5, #0x81c]
L6496c8:
        ldr     r0, [r4, #0x8f4]
        cmp     r0, r6
        mov     r0, #1
        str     r0, [sp, #0x58]
        ldreq   r0, [r4, #0x938]
        cmpeq   r0, r7
        bne     L649a80
        ldr     r0, [r5, #4]
        tst     r0, #0x200
        bne     L649a80
        ldr     ip, [r4, #0x870]
        cmp     r6, #0
        mov     r1, r2
        mov     r0, #0
        ble     L6497e8
L649704:
        ldr     r3, [r1]
        ldr     r8, [ip]
        cmp     r3, r8
        bne     L64975c
        ldr     sb, [r2]
        add     r8, r4, r0, lsl #2
        add     sl, r5, r3, lsl #2
        ldr     fp, [r4, #0x874]
        add     sb, r5, sb, lsl #2
        ldr     sl, [sl, #0x6a4]
        ldr     lr, [r8, #0x874]
        ldr     sb, [sb, #0x6a4]
        sub     fp, lr, fp
        sub     sb, sl, sb
        cmp     sb, fp
        bne     L64975c
        add     r3, r3, r3, lsl #1
        ldr     r8, [r8, #0x8b4]
        add     r3, r5, r3, lsl #3
        ldr     sb, [r3, #0x464]
        cmp     sb, r8
        beq     L649768
L64975c:
        mov     r0, #0
        str     r0, [sp, #0x58]
        b       L6497e8
L649768:
        ldr     r8, [r3, #0x460]
        sub     r8, r8, #0x1400
        subs    r8, r8, #1
        moveq   r8, #1
        beq     L649794
        cmp     r8, #1
        moveq   r8, #2
        beq     L649794
        cmp     r8, #5
        movne   r8, #0
        moveq   r8, #3
L649794:
        ldr     sb, [r3, #0x45c]
        mvn     r3, #3
        cmp     r0, #8
        add     r3, r3, sb, lsl #2
        orr     r3, r3, r8
        ldrlt   sb, [r4, #0x944]
        and     r8, r3, #0xff
        lsllt   r3, r0, #2
        lsrlt   r3, sb, r3
        ldrge   r3, [r4, #0x948]
        lslge   sb, r0, #2
        subge   sb, sb, #0x20
        lsrge   r3, r3, sb
        and     r3, r3, #0xf
        cmp     r8, r3
        bne     L64975c
        ldr     r1, [r1, #4]
        ldr     ip, [ip, #4]
        add     r0, r0, #1
        cmp     r0, r6
        blt     L649704
L6497e8:
        cmp     r7, #0
        mov     r0, #0
        addgt   r1, sp, #0x18
        ble     L649818
L6497f8:
        add     ip, r4, r0, lsl #2
        ldr     r3, [r1, r0, lsl #2]
        ldr     ip, [ip, #0x8f8]
        cmp     r3, ip
        bne     L649a80
        add     r0, r0, #1
        cmp     r0, r7
        blt     L6497f8
L649818:
        ldr     r0, [sp, #0x58]
        cmp     r0, #0
        ldrbne  r0, [r5, #0x81c]
        cmpne   r0, #0
        beq     L649a80
        ldrb    r1, [r5, #0x19]
        ldr     r0, [sp, #0x64]
        cmp     r1, #0
        ldrne   r3, [r5, #0x6e4]
        bne     L649850
        ldr     r1, [r5, #0x6a0]
        ldr     r3, [r5, #0x6e4]
        cmp     r1, r3
        biclt   r3, r1, #0xf
L649850:
        ldr     r1, [r5, #0x6e4]
        cmp     r1, r3
        ldrbeq  r1, [r4, #0x425]
        cmpeq   r1, #0
        bne     L649880
        ldr     r1, [r2]
        ldr     ip, [r4, #0x94c]
        add     r1, r5, r1, lsl #2
        ldr     r1, [r1, #0x6a4]
        sub     r1, r1, r3
        cmp     r1, ip
        beq     L6498e4
L649880:
        ldr     r0, [r2]
        ldr     r2, [r4, #0x93c]
        mov     r1, #1
        add     r0, r5, r0, lsl #2
        cmp     r2, #1
        ldr     r0, [r0, #0x6a4]
        sub     r2, r0, r3
        ble     L6498cc
L6498a0:
        add     r0, r1, r1, lsl #1
        ldr     ip, [r4, #0x94c]
        add     r0, r4, r0, lsl #2
        add     r1, r1, #1
        ldr     r8, [r0, #0x94c]
        sub     ip, r8, ip
        add     ip, ip, r2
        str     ip, [r0, #0x94c]
        ldr     r0, [r4, #0x93c]
        cmp     r0, r1
        bgt     L6498a0
L6498cc:
        str     r2, [r4, #0x94c]
        ldr     r1, [r5, #0x6e4]
        mov     r0, #0
        cmp     r1, r3
        moveq   r1, #0
        strbeq  r1, [r4, #0x425]
L6498e4:
        lsr     ip, r3, #3
        str     r3, [r5, #0x6e4]
        cmp     r0, #0
        str     ip, [r4, #0x940]
        beq     L649928
        ldr     r0, L649ebc
        ldr     r2, L649eb8
        ldr     r1, [r0]
        ldr     r0, [r2]
        cmp     r0, r1
        bhs     L64a2ec
        ldr     r3, L649efc
        add     r6, r0, #8
        str     r3, [r0, #4]
        str     ip, [r0]
        str     r6, [r2]
        b       L64a2ec
L649928:
        ldr     r0, [sp, #0x64]
        cmp     r0, #0
        beq     L649958
        ldr     r0, [r4, #0x93c]
        add     r2, r4, #0x940
        add     r0, r0, r0, lsl #1
        add     r1, r0, #1
        mov     r0, #0x200
        bl      Fn_6466d8
        nop
        nop
        b       L64a2ec
L649958:
        add     r2, r4, #0x940
        mov     r1, #0x27
        mov     r0, #0x200
        bl      Fn_6466d8
        ldr     r1, L649eb8
        ldr     r3, L649ebc
        ldr     r2, [r1]
        ldr     r0, [r3]
        cmp     r2, r0
        bhs     L649994
        ldr     r8, [r4, #0x9dc]
        ldr     ip, L649f00
        add     sb, r2, #8
        stm     r2, {r8, ip}
        str     sb, [r1]
L649994:
        ldr     r2, [r1]
        ldr     r0, [r3]
        cmp     r2, r0
        bhs     L6499bc
        ldr     r8, L649f04
        ldr     ip, [r4, #0x9e0]
        add     sb, r2, #8
        str     r8, [r2, #4]
        str     ip, [r2]
        str     sb, [r1]
L6499bc:
        ldrb    r0, [r4, #0x424]
        cmp     r0, #0
        beq     L649a18
        ldr     ip, [r1]
        ldr     r0, [r3]
        cmp     ip, r0
        bhs     L6499f0
        ldr     r8, L649f08
        ldr     sb, [r4, #0x9e4]
        add     r2, ip, #8
        str     r8, [ip, #4]
        str     sb, [ip]
        str     r2, [r1]
L6499f0:
        ldr     r0, [r3]
        ldr     r2, [r1]
        cmp     r2, r0
        bhs     L649a18
        ldr     r3, L649f0c
        ldr     ip, [r4, #0x9e8]
        add     r8, r2, #8
        str     r3, [r2, #4]
        str     ip, [r2]
        str     r8, [r1]
L649a18:
        ldr     r1, [r4, #0x870]
        add     r2, r6, r7
        str     r2, [r5, #0x824]
        cmp     r6, #0
        mov     r0, #0
        str     r6, [r5, #0x820]
        ble     L649a50
L649a34:
        ldr     r3, [r1]
        add     r2, r5, r0, lsl #2
        add     r0, r0, #1
        str     r3, [r2, #0x828]
        ldr     r1, [r1, #4]
        cmp     r6, r0
        bgt     L649a34
L649a50:
        cmp     r7, #0
        mov     r1, #0
        addgt   ip, sp, #0x18
        ble     L64a2ec
L649a60:
        ldr     r3, [ip, r1, lsl #2]
        add     r2, r5, r0, lsl #2
        add     r1, r1, #1
        cmp     r7, r1
        add     r0, r0, #1
        str     r3, [r2, #0x828]
        bgt     L649a60
        b       L64a2ec
L649a80:
        cmp     r6, #0
        mov     r1, r2
        mov     r0, #0
        movgt   sl, #0
        subgt   ip, r6, #1
        ble     L649af4
L649a98:
        ldr     sb, [r1]
        add     r3, r4, r0, lsl #3
        add     r8, r4, r0, lsl #2
        str     sb, [r3, #0x7f0]
        ldr     sb, [r1]
        cmp     r0, ip
        add     sb, r5, sb, lsl #2
        ldr     sb, [sb, #0x6a4]
        str     sb, [r8, #0x874]
        ldr     sb, [r1]
        add     sb, sb, sb, lsl #1
        add     sb, r5, sb, lsl #3
        ldr     sb, [sb, #0x464]
        str     sb, [r8, #0x8b4]
        streq   sl, [r3, #0x7f4]
        beq     L649ae8
        add     r8, r3, #0x400
        add     r8, r8, #0x3f8
        str     r8, [r3, #0x7f4]
        ldr     r1, [r1, #4]
L649ae8:
        add     r0, r0, #1
        cmp     r0, r6
        blt     L649a98
L649af4:
        cmp     r7, #0
        mov     r0, #0
        addgt   r1, sp, #0x18
        ble     L649b1c
L649b04:
        ldr     r3, [r1, r0, lsl #2]
        add     ip, r4, r0, lsl #2
        add     r0, r0, #1
        cmp     r7, r0
        str     r3, [ip, #0x8f8]
        bgt     L649b04
L649b1c:
        add     r0, r4, #0x7f0
        str     r0, [r4, #0x870]
        str     r6, [r4, #0x8f4]
        str     r7, [r4, #0x938]
        ldr     r0, [r5, #0x5d8]
        cmp     r0, #0
        ldrb    r0, [r5, #0x19]
        beq     L649c94
        cmp     r0, #0
        beq     L649ca4
L649b44:
        ldr     r1, [r5, #0x6e4]
        mov     r0, #0
        asr     r1, r1, #3
        str     r1, [r4, #0x940]
        strb    r0, [r4, #0x425]
L649b58:
        ldrb    r0, [r5, #0x81c]
        cmp     r0, #0
        beq     L64a0f8
        add     r0, r5, #0x400
        add     r0, r0, #0x58
        str     r0, [sp, #0x108]
        mov     ip, #0
        add     r0, r5, #0x6a0
        str     r0, [sp, #0xec]
        add     r0, r4, #0x800
        add     r0, r0, #0x13c
        str     ip, [sp, #0x14]
        str     r0, [sp, #0x104]
        add     r0, r4, #0x800
        str     ip, [sp, #0xe8]
        mov     r1, ip
        mov     r3, #1
        add     r0, r0, #0x14c
        str     ip, [r4, #0x93c]
L649ba4:
        add     r8, r4, r3, lsl #2
        mov     ip, #0
        add     r3, r3, #1
        cmp     r3, #0x27
        str     ip, [r8, #0x940]
        blt     L649ba4
        mov     r3, #1
        str     r3, [sp, #0x5c]
        cmp     r6, #0
        mov     r3, #0
        ble     L64a084
        add     ip, r4, #0x800
        add     ip, ip, #0x148
        str     ip, [sp, #0x110]
        add     ip, r4, #0x800
        add     ip, ip, #0x144
        str     ip, [sp, #0x114]
L649be8:
        ldr     ip, [sp, #0xec]
        ldr     r8, [r2, #4]
        ldr     fp, [r2]
        mov     sl, #0
        ldr     sb, [ip, #0x44]
        str     r8, [sp, #0x10c]
        ldr     r8, [sp, #0xec]
        add     lr, fp, fp, lsl #1
        mov     ip, sl
        add     r8, r8, fp, lsl #2
        add     lr, r5, lr, lsl #3
        ldr     fp, [r8, #4]
        add     r8, lr, #0x400
        ldr     lr, [lr, #0x460]
        sub     sb, fp, sb
        add     r8, r8, #0x58
        cmp     lr, #0x1400
        moveq   ip, #1
        str     sb, [sp, #0xf0]
        beq     L649c68
        sub     sb, lr, #0x1400
        subs    sb, sb, #1
        moveq   sl, #1
        moveq   ip, sl
        beq     L649c68
        cmp     sb, #1
        moveq   sl, #2
        moveq   ip, sl
        beq     L649c68
        cmp     sb, #5
        moveq   sl, #3
        moveq   ip, #4
L649c68:
        ldr     fp, [r8, #4]
        mvn     sb, #3
        cmp     r3, #8
        add     sb, sb, fp, lsl #2
        orr     sb, sb, sl
        bge     L649cd4
        ldr     sl, [r4, #0x944]
        lsl     fp, r3, #2
        orr     sl, sl, sb, lsl fp
        ldr     sb, [sp, #0x114]
        b       L649ce8
L649c94:
        cmp     r0, #0
        moveq   r0, #0
        strbeq  r0, [r5, #0x81c]
        bne     L649b44
L649ca4:
        ldr     r0, [r5, #0x6a0]
        ldr     r1, [r5, #0x6e4]
        cmp     r0, r1
        biclt   r1, r0, #0xf
        movlt   r0, #1
        movge   r0, #0
        strlt   r1, [r5, #0x6e4]
        strb    r0, [r4, #0x425]
        ldr     r0, [r5, #0x6e4]
        asr     r0, r0, #3
        str     r0, [r4, #0x940]
        b       L649b58
L649cd4:
        lsl     fp, r3, #2
        ldr     sl, [r4, #0x948]
        sub     fp, fp, #0x20
        orr     sl, sl, sb, lsl fp
        ldr     sb, [sp, #0x110]
L649ce8:
        str     sl, [sb]
        ldr     sb, [r8, #0xc]
        cmp     sb, #0
        beq     L649d50
        ldr     sb, [sp, #0x5c]
        ldr     lr, [r8, #4]
        ldr     sl, [sp, #0x14]
        cmp     ip, sb
        movhi   sb, ip
        sub     fp, ip, #1
        add     sl, sl, ip
        mul     ip, lr, ip
        str     sb, [sp, #0x5c]
        sub     sb, sl, #1
        bic     sb, sb, fp
        add     sb, sb, ip
        cmp     r1, #0
        str     sb, [sp, #0x14]
        beq     L649d98
        cmp     r1, #8
        bhs     L649dc4
L649d3c:
        ldr     r2, [r0, #4]
        lsl     sb, r1, #2
        orr     r2, r2, r3, lsl sb
        str     r2, [r0, #4]
        b       L649dd8
L649d50:
        ldr     r2, [sp, #0xf0]
        ldr     r8, [r8, #4]
        str     r2, [r0]
        ldr     r2, [r0, #4]
        orr     sb, r2, r3
        mul     r2, r8, ip
        str     sb, [r0, #4]
        ldr     r8, [r0, #8]
        mov     ip, #0x10000000
        orr     r2, ip, r2, lsl #16
        orr     r2, r2, r8
        str     r2, [r0, #8]
        ldr     r2, [r4, #0x93c]
        add     r0, r0, #0xc
        add     ip, r2, #1
        ldr     r2, [sp, #0x104]
        str     ip, [r2]
        b       L64a074
L649d98:
        ldr     sb, [sp, #0xf0]
        str     sb, [r0]
        ldr     sl, [r2]
        ldr     sb, [sp, #0xec]
        ldr     r2, [r8, #0xc]
        add     sb, sb, sl, lsl #2
        str     r2, [sp, #0xe8]
        ldr     sb, [sb, #4]
        add     r2, r2, sb
        str     r2, [sp, #0xfc]
        b       L649d3c
L649dc4:
        lsl     sb, r1, #2
        ldr     r2, [r0, #8]
        sub     sb, sb, #0x20
        orr     r2, r2, r3, lsl sb
        str     r2, [r0, #8]
L649dd8:
        add     r2, r3, #1
        cmp     r2, r6
        add     r1, r1, #1
        beq     L649f10
        ldr     r2, [sp, #0x10c]
        ldr     sb, [sp, #0xec]
        ldr     fp, [sp, #0xf0]
        ldr     r2, [r2]
        ldr     sl, [sb, #0x44]
        add     sb, sb, r2, lsl #2
        ldr     sb, [sb, #4]
        sub     sl, sb, sl
        cmp     sl, fp
        bls     L649f10
        add     fp, r2, r2, lsl #1
        ldr     r2, [sp, #0x108]
        ldr     r8, [r8, #0xc]
        add     r2, r2, fp, lsl #3
        ldr     r2, [r2, #0xc]
        cmp     r8, r2
        bne     L649f10
        ldr     r2, [sp, #0xfc]
        cmp     sb, r2
        bge     L649f10
        cmp     r1, #0xc
        movne   lr, #0
        beq     L649f10
L649e44:
        ldr     r2, [sp, #0xf0]
        sub     r2, sl, r2
        sub     r2, r2, ip
        lsr     r2, r2, #2
        ands    ip, r2, #3
        movne   ip, #1
        add     r8, ip, r2, lsr #2
        rsb     ip, r1, #0xc
        cmp     r8, ip
        bhi     L64a028
        cmp     r2, #0
        beq     L649ffc
        ldr     ip, [sp, #0x14]
        tst     r2, #3
        add     ip, ip, #3
        bic     ip, ip, #3
        add     ip, ip, r2, lsl #2
        str     ip, [sp, #0x14]
        beq     L649f48
        cmp     r1, #8
        bhs     L649f24
        ldr     r8, [r0, #4]
        and     ip, r2, #3
        lsl     sb, r1, #2
        add     ip, ip, #0xb
        orr     ip, r8, ip, lsl sb
        str     ip, [r0, #4]
        b       L649f40
L649eb4:
        .word   0x008ab81c
L649eb8:
        .word   0x008ab4f8
L649ebc:
        .word   0x008ab4fc
L649ec0:
        .word   0x000f0065
L649ec4:
        .word   0x000f0066
L649ec8:
        .word   0x000f0067
L649ecc:
        .word   0x008ab508
L649ed0:
        .word   0x00000251
L649ed4:
        .word   0x00010229
L649ed8:
        .word   0x00010244
L649edc:
        .word   0x000f029b
L649ee0:
        .word   0x000f02a5
L649ee4:
        .word   0x000002a6
L649ee8:
        .word   0x000f02cb
L649eec:
        .word   0x000f02bf
L649ef0:
        .word   0x000f02d5
L649ef4:
        .word   0x000002d6
L649ef8:
        .word   0x00008042
L649efc:
        .word   0x000f0200
L649f00:
        .word   0x000f02bb
L649f04:
        .word   0x000f02bc
L649f08:
        .word   0x000f028b
L649f0c:
        .word   0x000f028c
L649f10:
        ldr     r8, [r0]
        ldr     r2, [sp, #0xe8]
        mov     lr, #1
        add     sl, r8, r2
        b       L649e44
L649f24:
        lsl     ip, r1, #2
        ldr     sb, [r0, #8]
        and     r8, r2, #3
        sub     sl, ip, #0x20
        add     ip, r8, #0xb
        orr     ip, sb, ip, lsl sl
        str     ip, [r0, #8]
L649f40:
        add     r1, r1, #1
        bic     r2, r2, #3
L649f48:
        cmn     r2, #0x80000001
        movhi   ip, #0xf
        bls     L649f94
L649f54:
        cmp     r1, #8
        bhs     L649f70
        ldr     sb, [r0, #4]
        lsl     r8, r1, #2
        orr     r8, sb, ip, lsl r8
        str     r8, [r0, #4]
        b       L649f84
L649f70:
        lsl     r8, r1, #2
        ldr     sb, [r0, #8]
        sub     r8, r8, #0x20
        orr     r8, sb, ip, lsl r8
        str     r8, [r0, #8]
L649f84:
        subs    r2, r2, #4
        add     r1, r1, #1
        bne     L649f54
        b       L649ffc
L649f94:
        mvn     ip, #2
        sub     r2, ip, r2
        ldr     r8, [r0, #4]
        asr     ip, r2, #0x1f
        add     r2, r2, ip, lsr #30
        str     r2, [sp, #0x58]
        asr     r2, r2, #2
        rsb     ip, r2, #0
        cmp     ip, #0
        ble     L649ffc
        ldr     sb, [r0, #8]
        mov     r2, #0
        mov     fp, #0xf
L649fc8:
        add     sl, r1, r2
        cmp     sl, #8
        lsl     sl, sl, #2
        subhs   sl, sl, #0x20
        add     r2, r2, #1
        lsl     sl, fp, sl
        orrlo   r8, r8, sl
        orrhs   sb, sb, sl
        subs    ip, ip, #1
        bne     L649fc8
        strd    r8, sb, [r0, #4]
        ldr     r2, [sp, #0x58]
        sub     r1, r1, r2, asr #2
L649ffc:
        cmp     lr, #0
        beq     L64a074
        ldr     r2, [sp, #0x5c]
        ldr     ip, [sp, #0x14]
        add     ip, ip, r2
        sub     r2, r2, #1
        sub     ip, ip, #1
        bic     r2, ip, r2
        ldr     ip, [sp, #0xe8]
        cmp     r2, ip
        beq     L64a034
L64a028:
        mov     r0, #0
        strb    r0, [r5, #0x81c]
        b       L64a0f8
L64a034:
        ldr     r2, [sp, #0xe8]
        ldr     ip, [r0, #8]
        lsl     r8, r2, #0x10
        mov     r2, #1
        str     r2, [sp, #0x5c]
        mov     r2, #0
        str     r2, [sp, #0x14]
        orr     r2, r8, r1, lsl #28
        orr     r2, r2, ip
        str     r2, [r0, #8]!
        ldr     r2, [r4, #0x93c]
        mov     r1, #0
        add     r0, r0, #4
        add     ip, r2, #1
        ldr     r2, [sp, #0x104]
        str     ip, [r2]
L64a074:
        ldr     r2, [sp, #0x10c]
        add     r3, r3, #1
        cmp     r3, r6
        blt     L649be8
L64a084:
        ldrb    r0, [r5, #0x81c]
        cmp     r0, #0
        beq     L64a0f8
        cmp     r7, #0
        addgt   r1, r4, #0x800
        mov     r0, #0
        movgt   r2, #0x10000
        addgt   r1, r1, #0x148
        ble     L64a0c4
L64a0a8:
        add     ip, r0, r6
        ldr     r3, [r4, #0x948]
        add     r0, r0, #1
        orr     r3, r3, r2, lsl ip
        cmp     r7, r0
        str     r3, [r1]
        bgt     L64a0a8
L64a0c4:
        cmp     r6, #0
        beq     L64a0e4
        ldr     r1, [r4, #0x948]
        add     r2, r6, r7
        mov     r3, #0xf0000000
        add     r2, r3, r2, lsl #28
        orr     r1, r1, r2
        str     r1, [r4, #0x948]
L64a0e4:
        ldrb    r0, [r5, #0x19]
        cmp     r0, #0
        ldreq   r0, [r4, #0x93c]
        cmpeq   r0, #0xc
        beq     L64a028
L64a0f8:
        add     r0, r6, r7
        str     r6, [r5, #0x820]
        ldr     r8, L64ad00
        ldr     sb, L64ad04
        str     r0, [r5, #0x824]
        ldr     r1, [r4, #0x870]
        mov     r3, #0
        add     r2, r4, #0x9e0
        str     r3, [r4, #0x9dc]
        add     ip, r4, #0x800
        stm     r2, {r3, r8, sb}
        cmp     r6, #0
        mov     r0, r3
        add     ip, ip, #0x1dc
        bgt     L64a140
        b       L64a1ac
L64a138:
        cmp     r0, #8
        bge     L64a168
L64a140:
        ldr     r3, [r1]
        ldr     r8, [r4, #0x9dc]
        lsl     sb, r0, #2
        add     r3, r3, r3, lsl #1
        add     r3, r4, r3, lsl #2
        ldr     r3, [r3, #0x358]
        and     r3, r3, #0xf
        orr     r3, r8, r3, lsl sb
        str     r3, [ip]
        b       L64a190
L64a168:
        ldr     r3, [r1]
        lsl     sb, r0, #2
        ldr     r8, [r4, #0x9e0]
        sub     sb, sb, #0x20
        add     r3, r3, r3, lsl #1
        add     r3, r4, r3, lsl #2
        ldr     r3, [r3, #0x358]
        and     r3, r3, #0xf
        orr     r3, r8, r3, lsl sb
        str     r3, [r2]
L64a190:
        ldr     r3, [r1]
        add     r8, r5, r0, lsl #2
        add     r0, r0, #1
        str     r3, [r8, #0x828]
        ldr     r1, [r1, #4]
        cmp     r0, r6
        blt     L64a138
L64a1ac:
        cmp     r7, #0
        mov     r1, #0
        addgt   r3, sp, #0x18
        ble     L64a22c
L64a1bc:
        ldr     r6, [r3, r1, lsl #2]
        cmp     r0, #8
        bge     L64a1ec
        add     r6, r6, r6, lsl #1
        ldr     r8, [r4, #0x9dc]
        add     r6, r4, r6, lsl #2
        lsl     sb, r0, #2
        ldr     r6, [r6, #0x358]
        and     r6, r6, #0xf
        orr     r6, r8, r6, lsl sb
        str     r6, [ip]
        b       L64a210
L64a1ec:
        lsl     sb, r0, #2
        add     sl, r6, r6, lsl #1
        sub     r6, sb, #0x20
        add     sb, r4, sl, lsl #2
        ldr     r8, [r4, #0x9e0]
        ldr     sb, [sb, #0x358]
        and     sb, sb, #0xf
        orr     r6, r8, sb, lsl r6
        str     r6, [r2]
L64a210:
        ldr     r6, [r3, r1, lsl #2]
        add     r8, r5, r0, lsl #2
        add     r1, r1, #1
        cmp     r1, r7
        add     r0, r0, #1
        str     r6, [r8, #0x828]
        blt     L64a1bc
L64a22c:
        add     r2, r4, #0x940
        mov     r1, #0x27
        mov     r0, #0x200
        bl      Fn_6466d8
        ldr     r0, [pc, #-0x38c]
        ldr     r2, [pc, #-0x38c]
        ldr     ip, [r0]
        ldr     r1, [r2]
        cmp     ip, r1
        bhs     L64a26c
        ldr     r3, [pc, #-0x35c]
        ldr     r6, [r4, #0x9dc]
        add     r7, ip, #8
        str     r3, [ip, #4]
        str     r6, [ip]
        str     r7, [r0]
L64a26c:
        ldr     ip, [r0]
        ldr     r1, [r2]
        cmp     ip, r1
        bhs     L64a294
        ldr     r3, [pc, #-0x380]
        ldr     r6, [r4, #0x9e0]
        add     r7, ip, #8
        str     r3, [ip, #4]
        str     r6, [ip]
        str     r7, [r0]
L64a294:
        ldrb    r1, [r4, #0x424]
        cmp     r1, #0
        beq     L64a2ec
        ldr     r3, [r0]
        ldr     r1, [r2]
        cmp     r3, r1
        bhs     L64a2c4
        ldr     r6, [r4, #0x9e4]
        ldr     ip, [pc, #-0x3b4]
        add     r7, r3, #8
        stm     r3, {r6, ip}
        str     r7, [r0]
L64a2c4:
        ldr     r1, [r2]
        ldr     r2, [r0]
        cmp     r2, r1
        bhs     L64a2ec
        ldr     r3, [pc, #-0x3d0]
        ldr     ip, [r4, #0x9e8]
        add     r6, r2, #8
        str     r3, [r2, #4]
        str     ip, [r2]
        str     r6, [r0]
L64a2ec:
        ldrb    r0, [r5, #0x81c]
        cmp     r0, #0
        beq     L64a3e4
        ldr     r0, [sp, #0x850]
        ldr     r1, L64ad08
        ldr     r0, [r0]
        tst     r0, r1
        beq     L64a3e4
        ldr     r0, [r5, #0x824]
        ldr     r2, [r5, #0x820]
        cmp     r0, r2
        bls     L64a3e4
        ldr     r8, L64ad0c
        ldr     r0, [pc, #-0x470]
        orr     r7, r8, r1, asr #6
        add     fp, r8, r1, asr #14
        add     lr, r7, r1, asr #14
        ldr     r1, [pc, #-0x47c]
L64a334:
        add     ip, r5, r2, lsl #2
        ldr     r3, [r0]
        ldr     ip, [ip, #0x828]
        ldr     r6, [r1]
        cmp     r3, r6
        bhs     L64a358
        stm     r3, {r2, r8}
        add     sb, r3, #8
        str     sb, [r0]
L64a358:
        ldr     r3, [r0]
        ldr     r6, [r1]
        cmp     r3, r6
        bhs     L64a384
        add     sb, ip, ip, lsl #1
        add     sl, r3, #8
        add     sb, r5, sb, lsl #2
        ldr     sb, [sb, #0x398]
        str     r7, [r3, #4]
        str     sb, [r3]
        str     sl, [r0]
L64a384:
        ldr     r3, [r0]
        ldr     r6, [r1]
        cmp     r3, r6
        bhs     L64a3ac
        add     sb, ip, ip, lsl #1
        add     sl, r3, #8
        add     sb, r5, sb, lsl #2
        ldr     sb, [sb, #0x39c]
        stm     r3, {sb, fp}
        str     sl, [r0]
L64a3ac:
        ldr     r6, [r1]
        ldr     r3, [r0]
        cmp     r3, r6
        bhs     L64a3d4
        add     r6, ip, ip, lsl #1
        add     sb, r3, #8
        add     r6, r5, r6, lsl #2
        ldr     r6, [r6, #0x3a0]
        stm     r3, {r6, lr}
        str     sb, [r0]
L64a3d4:
        ldr     r3, [r5, #0x824]
        add     r2, r2, #1
        cmp     r3, r2
        bhi     L64a334
L64a3e4:
        ldr     r0, [r5, #4]
        cmp     r0, #0
        beq     L64a628
        tst     r0, #0x10
        beq     L64a518
        ldr     r3, L64ad10
        mvn     r7, #0
        str     r7, [r4, #0x1bc]
        str     r7, [r4, #0x1b8]
        str     r7, [r4, #0x1b4]
        ldr     r1, [r3]
        mov     r0, #0
        cmp     r1, #0xbd
        beq     L64a484
        sub     r1, r3, #0x70
        add     ip, r4, #0x400
        ldr     r6, [r1, #8]
        mov     r1, #1
        add     ip, ip, #0x26
L64a430:
        ldr     r2, [r3, r0, lsl #2]
        ldrb    r8, [r2, ip]
        cmp     r8, #0
        beq     L64a474
        add     r8, r4, r2, lsl #2
        add     sb, r6, r2, lsl #2
        ldr     r2, [r8, #0x4e4]
        ldr     r8, L64ad14
        mvn     r2, r2
        str     r2, [r8, sb]
        ldr     r2, [r3, r0, lsl #2]
        and     sb, r2, #0x1f
        asr     r8, r2, #5
        add     r2, r4, r8, lsl #2
        ldr     sl, [r2, #0x7d8]
        orr     r8, sl, r1, lsl sb
        str     r8, [r2, #0x7d8]
L64a474:
        add     r0, r0, #1
        ldr     r2, [r3, r0, lsl #2]
        cmp     r2, #0xbd
        bne     L64a430
L64a484:
        ldrb    r0, [r4, #0x424]
        cmp     r0, #0
        beq     L64a518
        ldr     r3, L64ad18
        str     r7, [r4, #0x350]
        str     r7, [r4, #0x34c]
        str     r7, [r4, #0x348]
        ldr     r0, [r3]
        mov     r1, #0
        cmp     r0, #0xbd
        beq     L64a518
        sub     r0, r3, #0x88
        add     r2, r4, #0x400
        ldr     ip, [r0, #8]
        mov     r6, #1
        add     r2, r2, #0x26
L64a4c4:
        ldr     r0, [r3, r1, lsl #2]
        ldrb    r7, [r0, r2]
        cmp     r7, #0
        beq     L64a508
        add     r7, r4, r0, lsl #2
        add     r8, ip, r0, lsl #2
        ldr     r0, [r7, #0x4e4]
        ldr     r7, L64ad14
        mvn     r0, r0
        str     r0, [r7, r8]
        ldr     r0, [r3, r1, lsl #2]
        and     r7, r0, #0x1f
        asr     r8, r0, #5
        add     r0, r4, r8, lsl #2
        ldr     r8, [r0, #0x7d8]
        orr     r7, r8, r6, lsl r7
        str     r7, [r0, #0x7d8]
L64a508:
        add     r1, r1, #1
        ldr     r0, [r3, r1, lsl #2]
        cmp     r0, #0xbd
        bne     L64a4c4
L64a518:
        ldr     r0, [r5, #4]
        tst     r0, #0x20
        beq     L64a5a0
        ldr     r2, L64ad1c
        mov     r0, #0
        ldr     r1, [r2]
        cmp     r1, #0xbd
        beq     L64a5a0
        sub     r1, r2, #0xa0
        mov     ip, #1
        ldr     r3, [r1, #8]
        add     r1, r4, #0x400
        add     r1, r1, #0x26
L64a54c:
        ldr     r6, [r2, r0, lsl #2]
        ldrb    r7, [r6, r1]
        cmp     r7, #0
        beq     L64a590
        add     r7, r4, r6, lsl #2
        add     r8, r3, r6, lsl #2
        ldr     r6, [r7, #0x4e4]
        ldr     r7, L64ad14
        mvn     r6, r6
        str     r6, [r7, r8]
        ldr     r6, [r2, r0, lsl #2]
        and     r7, r6, #0x1f
        asr     r8, r6, #5
        add     r6, r4, r8, lsl #2
        ldr     r8, [r6, #0x7d8]
        orr     r7, r8, ip, lsl r7
        str     r7, [r6, #0x7d8]
L64a590:
        add     r0, r0, #1
        ldr     r6, [r2, r0, lsl #2]
        cmp     r6, #0xbd
        bne     L64a54c
L64a5a0:
        ldr     r0, [r5, #4]
        tst     r0, #2
        beq     L64a628
        ldr     ip, L64ad20
        mov     r0, #0
        ldr     r1, [ip]
        cmp     r1, #0xbd
        beq     L64a628
        sub     r1, ip, #0x10
        add     r3, r4, #0x400
        ldr     r2, [r1, #8]
        mov     r7, #1
        add     r3, r3, #0x26
L64a5d4:
        ldr     r1, [ip, r0, lsl #2]
        ldrb    r6, [r1, r3]
        cmp     r6, #0
        beq     L64a618
        add     r6, r4, r1, lsl #2
        add     r8, r2, r1, lsl #2
        ldr     r1, [r6, #0x4e4]
        ldr     r6, L64ad14
        mvn     r1, r1
        str     r1, [r6, r8]
        ldr     r1, [ip, r0, lsl #2]
        and     r6, r1, #0x1f
        asr     r8, r1, #5
        add     r1, r4, r8, lsl #2
        ldr     r8, [r1, #0x7d8]
        orr     r6, r8, r7, lsl r6
        str     r6, [r1, #0x7d8]
L64a618:
        add     r0, r0, #1
        ldr     r1, [ip, r0, lsl #2]
        cmp     r1, #0xbd
        bne     L64a5d4
L64a628:
        ldr     r0, [r5, #8]
        tst     r0, #0x10
        bne     L64a98c
        ldr     r0, [r4, #0x1b4]
        cmp     r0, #0
        ldreq   r0, [r4, #0x1b8]
        cmpeq   r0, #0
        bne     L64a670
        ldr     r0, [r4, #0x1bc]
        cmp     r0, #0
        ldreq   r0, [r4, #0x348]
        cmpeq   r0, #0
        bne     L64a670
        ldr     r0, [r4, #0x34c]
        cmp     r0, #0
        ldreq   r0, [r4, #0x350]
        cmpeq   r0, #0
        beq     L64a98c
L64a670:
        ldr     sb, [r4, #0x1c0]
        cmp     sb, #0
        beq     L64a7f0
        ldr     r0, [r4, #0x348]
        cmp     r0, #0
        ldreq   r1, [r4, #0x34c]
        cmpeq   r1, #0
        ldreq   r1, [r4, #0x350]
        cmpeq   r1, #0
        beq     L64a7f0
        mov     r2, #0
        tst     r0, #1
        mov     r8, #1
        mov     sl, r2
        mov     ip, r2
        mov     r6, r2
        bne     L64a6ec
L64a6b4:
        lsr     r0, r6, #5
        and     r1, r6, #0x1f
        add     r0, r4, r0, lsl #2
        ldr     r0, [r0, #0x348]
        lsrs    r0, r0, r1
        biceq   r0, r6, #0x1f
        addeq   r6, r0, #0x20
        addne   r6, r6, #1
        lsr     r0, r6, #5
        add     r1, r4, r0, lsl #2
        and     r0, r6, #0x1f
        ldr     r1, [r1, #0x348]
        tst     r1, r8, lsl r0
        beq     L64a6b4
L64a6ec:
        ldr     r0, [r4, #0x344]
        cmp     r0, r6
        bls     L64a7f0
L64a6f8:
        add     r0, r4, r6, lsl #2
        cmp     r2, #0
        ldr     r7, [r0, #0x1c4]
        beq     L64a758
        sub     r0, r7, sl
        cmp     r0, ip
        addeq   ip, ip, #1
        beq     L64a764
        ldr     r0, [pc, #-0x864]
        ldr     r3, [pc, #-0x86c]
        ldr     r1, [r0]
        ldr     r0, [r3]
        cmp     r0, r1
        bhs     L64a74c
        mov     lr, r3
        ldr     r3, L64ad24
        orr     fp, sl, #0x80000000
        add     sl, r0, #8
        str     r3, [r0, #4]
        str     fp, [r0]
        str     sl, [lr]
L64a74c:
        ldr     r0, L64ad28
        lsl     r1, ip, #2
        bl      Fn_02a4dc
L64a758:
        mov     sl, r7
        mov     ip, #1
        add     r2, sb, r6, lsl #4
L64a764:
        ldr     r3, [r4, #0x344]
        add     r6, r6, #1
L64a76c:
        and     r1, r6, #0x1f
        lsr     r0, r6, #5
        add     r0, r4, r0, lsl #2
        ldr     r0, [r0, #0x348]
        tst     r0, r8, lsl r1
        bne     L64a7a4
        b       L64a79c
L64a788:
        lsrs    r0, r0, r1
        biceq   r0, r6, #0x1f
        addeq   r6, r0, #0x20
        addne   r6, r6, #1
        b       L64a76c
L64a79c:
        cmp     r3, r6
        bhi     L64a788
L64a7a4:
        cmp     r3, r6
        bhi     L64a6f8
        cmp     r2, #0
        beq     L64a7f0
        ldr     r6, [pc, #-0x904]
        ldr     r0, [pc, #-0x904]
        ldr     r1, [r6]
        ldr     r0, [r0]
        cmp     r1, r0
        bhs     L64a7e4
        ldr     r0, L64ad24
        orr     r8, sl, #0x80000000
        add     r7, r1, #8
        str     r0, [r1, #4]
        str     r8, [r1]
        str     r7, [r6]
L64a7e4:
        ldr     r0, L64ad28
        lsl     r1, ip, #2
        bl      Fn_02a4dc
L64a7f0:
        ldr     sb, [r4, #0x2c]
        cmp     sb, #0
        beq     L64a970
        ldr     r0, [r4, #0x1b4]
        cmp     r0, #0
        ldreq   r1, [r4, #0x1b8]
        cmpeq   r1, #0
        ldreq   r1, [r4, #0x1bc]
        cmpeq   r1, #0
        beq     L64a970
        mov     r2, #0
        tst     r0, #1
        mov     r8, #1
        mov     sl, r2
        mov     ip, r2
        mov     r6, r2
        bne     L64a86c
L64a834:
        lsr     r0, r6, #5
        and     r1, r6, #0x1f
        add     r0, r4, r0, lsl #2
        ldr     r0, [r0, #0x1b4]
        lsrs    r0, r0, r1
        biceq   r0, r6, #0x1f
        addeq   r6, r0, #0x20
        addne   r6, r6, #1
        and     r1, r6, #0x1f
        lsr     r0, r6, #5
        add     r0, r4, r0, lsl #2
        ldr     r0, [r0, #0x1b4]
        tst     r0, r8, lsl r1
        beq     L64a834
L64a86c:
        ldr     r0, [r4, #0x1b0]
        cmp     r0, r6
        bls     L64a970
L64a878:
        add     r0, r4, r6, lsl #2
        cmp     r2, #0
        ldr     r7, [r0, #0x30]
        beq     L64a8d8
        sub     r0, r7, sl
        cmp     r0, ip
        addeq   ip, ip, #1
        beq     L64a8e4
        ldr     r0, [pc, #-0x9e4]
        ldr     r3, [pc, #-0x9ec]
        ldr     r1, [r0]
        ldr     r0, [r3]
        cmp     r0, r1
        bhs     L64a8cc
        mov     lr, r3
        ldr     r3, L64ad2c
        orr     fp, sl, #0x80000000
        add     sl, r0, #8
        str     r3, [r0, #4]
        str     fp, [r0]
        str     sl, [lr]
L64a8cc:
        ldr     r0, L64ad30
        lsl     r1, ip, #2
        bl      Fn_02a4dc
L64a8d8:
        mov     sl, r7
        mov     ip, #1
        add     r2, sb, r6, lsl #4
L64a8e4:
        ldr     r3, [r4, #0x1b0]
        add     r6, r6, #1
L64a8ec:
        lsr     r0, r6, #5
        add     r1, r4, r0, lsl #2
        and     r0, r6, #0x1f
        ldr     r1, [r1, #0x1b4]
        tst     r1, r8, lsl r0
        bne     L64a924
        b       L64a91c
L64a908:
        lsrs    r0, r1, r0
        biceq   r0, r6, #0x1f
        addeq   r6, r0, #0x20
        addne   r6, r6, #1
        b       L64a8ec
L64a91c:
        cmp     r3, r6
        bhi     L64a908
L64a924:
        cmp     r3, r6
        bhi     L64a878
        cmp     r2, #0
        beq     L64a970
        ldr     r6, [pc, #-0xa84]
        ldr     r0, [pc, #-0xa84]
        ldr     r3, [r6]
        ldr     r0, [r0]
        cmp     r3, r0
        bhs     L64a964
        ldr     r1, L64ad2c
        orr     r8, sl, #0x80000000
        add     r7, r3, #8
        str     r1, [r3, #4]
        str     r8, [r3]
        str     r7, [r6]
L64a964:
        ldr     r0, L64ad30
        lsl     r1, ip, #2
        bl      Fn_02a4dc
L64a970:
        mov     r0, #0
        str     r0, [r4, #0x1b4]
        str     r0, [r4, #0x1b8]
        str     r0, [r4, #0x1bc]
        str     r0, [r4, #0x348]
        str     r0, [r4, #0x34c]
        str     r0, [r4, #0x350]
L64a98c:
        ldr     r0, [sp, #0x850]
        vldr    s17, L64ad34
        ldr     r0, [r0]
        tst     r0, #4
        beq     L64ab30
        ldr     r0, [r5, #8]
        tst     r0, #0x400
        bne     L64ab30
        add     r0, r4, #0xc00
        vldr    s1, [r0, #0x24c]
        vcmp.f32 s1, s17
        vmrs    apsr_nzcv, fpscr
        addeq   r0, r5, #0x4c
        vnegne.f32 s1, s1
        vldmiaeq r0, {s0, s1}
        vmovne.f32 s0, s17
        ldrb    r0, [r5, #0x54]
        vsubeq.f32 s1, s0, s1
        cmp     r0, #0
        vldrne  s2, [r5, #0x44]
        vcmpne.f32 s2, s17
        vmrsne  apsr_nzcv, fpscr
        beq     L64a9fc
        ldr     r0, [r5, #0x68c]
        cmp     r0, #0
        vldrne  s3, L64ad38
        vldreq  s3, L64ad3c
        vmla.f32 s0, s2, s3
L64a9fc:
        vmov    r0, s1
        bics    r1, r0, #0x80000000
        beq     L64aa14
        lsl     r1, r0, #1
        lsr     r1, r1, #0x18
        sub     r1, r1, #0x40
L64aa14:
        lsl     r2, r0, #9
        cmp     r1, #0
        lsr     r2, r2, #0x10
        lsr     r0, r0, #0x1f
        vcmp.f32 s0, s17
        orrge   r1, r2, r1, lsl #16
        orrge   r0, r1, r0, lsl #23
        lsllt   r0, r0, #0x17
        vmrs    apsr_nzcv, fpscr
        moveq   r1, #0
        beq     L64aa74
        vmov    r1, s0
        bics    r2, r1, #0x80000000
        beq     L64aa58
        lsl     r2, r1, #1
        lsr     r2, r2, #0x18
        sub     r2, r2, #0x40
L64aa58:
        lsl     r3, r1, #9
        cmp     r2, #0
        lsr     r3, r3, #0x10
        lsr     r1, r1, #0x1f
        orrge   r2, r3, r2, lsl #16
        orrge   r1, r2, r1, lsl #23
        lsllt   r1, r1, #0x17
L64aa74:
        ldrb    r3, [r4, #0x43d]
        orr     r3, r3, #0xf
        strb    r3, [r4, #0x43d]
        ldrb    r2, [r5, #0xc]
        cmp     r2, #0
        beq     L64aab8
        str     r0, [r4, #0x540]
        ldr     r3, [r4, #0x7d8]
        mov     r2, r0
        ldr     r0, [pc, #-0xbd4]
        orr     r3, r3, #0x800000
        str     r3, [r4, #0x7d8]
        mvn     r2, r2
        ldr     r0, [r0, #8]
        add     r0, r0, #0x1000
        str     r2, [r0, #0x68]
        b       L64aad4
L64aab8:
        ldr     r2, [r4, #0x540]
        cmp     r2, r0
        beq     L64aad4
        str     r0, [r4, #0x540]
        ldr     r2, [r4, #0x7d8]
        orr     r2, r2, #0x800000
        str     r2, [r4, #0x7d8]
L64aad4:
        ldrb    r2, [r4, #0x43e]
        orr     r2, r2, #0xf
        strb    r2, [r4, #0x43e]
        ldrb    r0, [r5, #0xc]
        cmp     r0, #0
        beq     L64ab14
        str     r1, [r4, #0x544]
        ldr     r2, [r4, #0x7d8]
        ldr     r0, [pc, #-0xc30]
        mvn     r1, r1
        orr     r2, r2, #0x1000000
        str     r2, [r4, #0x7d8]
        ldr     r0, [r0, #8]
        add     r0, r0, #0x1000
        str     r1, [r0, #0x6c]
        b       L64ab30
L64ab14:
        ldr     r0, [r4, #0x544]
        cmp     r0, r1
        beq     L64ab30
        str     r1, [r4, #0x544]
        ldr     r1, [r4, #0x7d8]
        orr     r1, r1, #0x1000000
        str     r1, [r4, #0x7d8]
L64ab30:
        ldr     r1, [r4, #0x624]
        mov     r0, #7
        bics    r0, r0, r1
        bne     L64ab94
        ldrb    r0, [r4, #0xe74]
        cmp     r0, #0
        ldr     r0, [pc, #-0xc84]
        beq     L64ab70
        ldr     r1, [r4, #0x630]
        ldr     r2, [r0, #8]
        add     r0, r4, #0x7e0
        add     r2, r2, #0x1000
        str     r1, [r2, #0x158]
        ldr     r1, [r4, #0x7e0]
        bic     r1, r1, #0x80000
        b       L64ab90
L64ab70:
        ldr     r1, [r0, #8]
        ldr     r0, [r4, #0x630]
        add     r1, r1, #0x1000
        mvn     r0, r0
        str     r0, [r1, #0x158]
        ldr     r1, [r4, #0x7e0]
        add     r0, r4, #0x7e0
        orr     r1, r1, #0x80000
L64ab90:
        str     r1, [r0]
L64ab94:
        ldr     r0, [r5, #8]
        mov     r6, #0
        mov     r7, r6
        cmp     r0, #0
        str     r6, [sp, #0x10]
        str     r6, [sp, #0x18]
        beq     L64ac48
        tst     r0, #0x20
        ldrne   r3, L64ad40
        movne   r0, #0
        beq     L64abe0
L64abc0:
        add     r1, r4, r0, lsl #2
        ldr     r2, [r3, r0, lsl #2]
        ldr     ip, [r1, #0x7d8]
        add     r0, r0, #1
        cmp     r0, #6
        bic     r2, ip, r2
        str     r2, [r1, #0x7d8]
        blt     L64abc0
L64abe0:
        ldr     r0, [r5, #8]
        tst     r0, #2
        ldrne   r2, L64ad44
        movne   r0, #0
        beq     L64ac14
L64abf4:
        add     r1, r4, r0, lsl #2
        ldr     r3, [r2, r0, lsl #2]
        ldr     ip, [r1, #0x7d8]
        add     r0, r0, #1
        cmp     r0, #6
        bic     r3, ip, r3
        str     r3, [r1, #0x7d8]
        blt     L64abf4
L64ac14:
        ldr     r0, [r5, #8]
        tst     r0, #0x10
        ldrne   r2, L64ad48
        movne   r0, #0
        beq     L64ac48
L64ac28:
        add     r1, r4, r0, lsl #2
        ldr     ip, [r2, r0, lsl #2]
        ldr     r3, [r1, #0x7d8]
        add     r0, r0, #1
        cmp     r0, #6
        bic     r3, r3, ip
        str     r3, [r1, #0x7d8]
        blt     L64ac28
L64ac48:
        ldr     r0, [r4, #0x590]
        tst     r0, #1
        beq     L64ad6c
        ldr     r0, [r5, #8]
        ands    r0, r0, #0x20
        bne     L64ad6c
L64ac60:
        rsb     r1, r0, r0, lsl #3
        add     r1, r4, r1, lsl #4
        ldrb    r1, [r1, #0xa20]
        cmp     r1, #0
        bne     L64ac80
        add     r0, r0, #1
        cmp     r0, #8
        blt     L64ac60
L64ac80:
        cmp     r0, #8
        bne     L64ad6c
        ldr     r1, [r4, #0x7e0]
        ldr     r8, [pc, #-0xdc8]
        bic     r1, r1, #0xf0000000
        str     r1, [r4, #0x7e0]
        ldr     r0, [r8, #8]
        mov     r1, #0
        mov     r2, r1
        add     r0, r0, #0x1000
        str     r1, [r0, #0x17c]
        str     r1, [r0, #0x180]
        str     r1, [r0, #0x184]
        str     r1, [r0, #0x188]
        mov     r1, #4
        mov     r0, #0x140
        bl      Fn_02a414
        ldr     r0, [r4, #0x7bc]
        mov     r1, #1
        str     r1, [sp, #0x100]
        tst     r0, #0xf0
        beq     L64ad6c
        ldr     r2, [r4, #0x7ec]
        bic     r2, r2, #0x400000
        str     r2, [r4, #0x7ec]
        ldr     r1, [r8, #8]
        bic     r2, r0, #0xf0
        add     r0, r1, #0x1000
        ldr     r1, [pc, #-0xe40]
        str     r2, [r0, #0x2e4]
        ldr     r0, [pc, #-0xe44]
        b       L64ad4c
L64ad00:
        .word   0x76543210
L64ad04:
        .word   0xfedcba98
L64ad08:
        .word   0x000080c2
L64ad0c:
        .word   0x000f0232
L64ad10:
        .word   0x008ab578
L64ad14:
        .word   0x0000100c
L64ad18:
        .word   0x008ab590
L64ad1c:
        .word   0x008ab5a8
L64ad20:
        .word   0x008ab518
L64ad24:
        .word   0x000f0290
L64ad28:
        .word   0x00000291
L64ad2c:
        .word   0x000f02c0
L64ad30:
        .word   0x000002c1
L64ad34:
        .word   0x00000000
L64ad38:
        .word   0x33800001
L64ad3c:
        .word   0x37800080
L64ad40:
        .word   0x009ad89c
L64ad44:
        .word   0x009ad86c
L64ad48:
        .word   0x009ad884
L64ad4c:
        .word   0xe5913000
        .word   0xe5900000
        .word   0xe1500003
        .word   0x9a000003
        .word   0xe59fc540
        .word   0xe2838008
        .word   0xe8831004
        .word   0xe5818000
L64ad6c:
        .word   0xe3a00000
        .word   0xe0841100
        .word   0xe59117d8
        .word   0xe3510000
        .word   0x0a000006
        .word   0xe3a00000
        .word   0xe3a02001
        .word   0xe1110012
        .word   0x02800001
        .word   0x0afffffc
        .word   0xe0866000
        .word   0xea000003
        .word   0xe2800001
        .word   0xe3500005
        .word   0xe2866020
        .word   0xdafffff0
        .word   0xe35600bd
        .word   0x2a000077
        .word   0xe0840006
        .word   0xe51f1ef4
        .word   0xe5d08426
        .word   0xe59f04e0
        .word   0xe0842106
        .word   0xe5911008
        .word   0xe282bb01
        .word   0xe7909106
        .word   0xe0810106
        .word   0xe280aa01
        .word   0xe3580000
        .word   0xe28bb0e4
        .word   0xe28aa00c
        .word   0x0a00002d
        .word   0xe59b1000
        .word   0xe59a0000
        .word   0xe1510000
        .word   0x0a000029
        .word   0xe358000f
        .word   0x0a000014
        .word   0xe3570000
        .word   0x0a000004
        .word   0xe59d0010
        .word   0xe59d1018
        .word   0xe1a02007
        .word   0xebffee2e
        .word   0xe3a07000
        .word   0xe51f2f70
        .word   0xe51f0f70
        .word   0xe5921000
        .word   0xe5900000
        .word   0xe1510000
        .word   0x2a000017
        .word   0xe59b3000
        .word   0xe1a0e002
        .word   0xe1892808
        .word   0xe5812004
        .word   0xe281c008
        .word   0xe5813000
        .word   0xe58ec000
        .word   0xea00000f
        .word   0xe3570000
        .word   0x0a000009
        .word   0xe59d0010
        .word   0xe0491000
        .word   0xe59d0018
        .word   0xe1510000
        .word   0x02800001
        .word   0x0a000006
        .word   0xe1a01000
        .word   0xe59d0010
        .word   0xe1a02007
        .word   0xebffee13
        .word   0xe1a0700b
        .word   0xe3a00001
        .word   0xe58d9010
        .word   0xe58d0018
        .word   0xe59b0000
        .word   0xe58a0000
        .word   0xea000006
        .word   0xe3570000
        .word   0x0a000004
        .word   0xe59d0010
        .word   0xe59d1018
        .word   0xe1a02007
        .word   0xebffee06
        .word   0xe3a07000
        .word   0xe2866001
        .word   0xe35600bd
        .word   0x2a000024
        .word   0xe1a012a6
        .word   0xe206001f
        .word   0xe0841101
        .word   0xe59117d8
        .word   0xe1b00031
        .word   0x13a00001
        .word   0x0a000007
        .word   0xe1a012a6
        .word   0xe206201f
        .word   0xe0841101
        .word   0xe59137d8
        .word   0xe1130210
        .word   0x02866001
        .word   0x0afffff8
        .word   0xea000013
        .word   0xe3c6001f
        .word   0xe2806020
        .word   0xe1a002a6
        .word   0xe3500005
        .word   0xca00000e
        .word   0xe0841100
        .word   0xe59117d8
        .word   0xe3510000
        .word   0x0a000006
        .word   0xe3a00000
        .word   0xe3a02001
        .word   0xe1110012
        .word   0x02800001
        .word   0x0afffffc
        .word   0xe0866000
        .word   0xea000003
        .word   0xe2800001
        .word   0xe3500005
        .word   0xe2866020
        .word   0xdafffff0
        .word   0xe35600bd
        .word   0x3affff94
        .word   0xe3570000
        .word   0x0a000003
        .word   0xe59d0010
        .word   0xe59d1018
        .word   0xe1a02007
        .word   0xebffedd7
        .word   0xe3a00000
        .word   0xe1a01000
        .word   0xe0842100
        .word   0xe2800001
        .word   0xe3500006
        .word   0xe58217d8
        .word   0xbafffffa
        .word   0xe59d0100
        .word   0xe3500000
        .word   0x0a000008
        .word   0xe59407e0
        .word   0xe380020f
        .word   0xe58407e0
        .word   0xe59407bc
        .word   0xe31000f0
        .word   0x0a000002
        .word   0xe59417ec
        .word   0xe3811501
        .word   0xe58417ec
        .word   0xe5950008
        .word   0xe3100040
        .word   0x1a000578
        .word   0xe5940590
        .word   0xeddfaab4
        .word   0xed9faab4
        .word   0xe3100001
        .word   0x0a0001cb
        .word   0xe59d0850
        .word   0xe59f12c4
        .word   0xe5900000
        .word   0xe1100001
        .word   0x0a0001c6
        .word   0xe59f92bc
        .word   0xe59fa2bc
        .word   0xe59f82bc
        .word   0xed9fbaab
        .word   0xe3a07000
        .word   0xe5940a0c
        .word   0xe1a00730
        .word   0xe3100001
        .word   0x0a00008f
        .word   0xe59f02a4
        .word   0xe59417c0
        .word   0xe7900107
        .word   0xe1a00031
        .word   0xe3100001
        .word   0x1a000089
        .word   0xe0840107
        .word   0xe59009f4
        .word   0xe3700001
        .word   0x0a000088
        .word   0xe0851100
        .word   0xe591b074
        .word   0xe35b0000
        .word   0x0a000084
        .word   0xeb004214
        .word   0xe1b06000
        .word   0xe320f000
        .word   0x0a000080
        .word   0xe0850107
        .word   0xe58d0000
        .word   0xe590010c
        .word   0xe150000b
        .word   0xe59d0000
        .word   0xe5900190
        .word   0x1a00001a
        .word   0xe3500000
        .word   0x0a000074
        .word   0xe59f223c
        .word   0xe59f023c
        .word   0xe5921000
        .word   0xe5900000
        .word   0xe1510000
        .word   0x2a000007
        .word   0xe59f022c
        .word   0xe790c107
        .word   0xe59d0000
        .word   0xe5903214
        .word   0xe183340c
        .word   0xe8810208
        .word   0xe281c008
        .word   0xe582c000
        .word   0xe59d0000
        .word   0xe5962804
        .word   0xe5b01190
        .word   0xe5903084
        .word   0xe3a00f72
        .word   0xe0822103
        .word   0xebe77cff
        .word   0xe59d1000
        .word   0xe3a00000
        .word   0xe5810190
        .word   0xea00005b
        .word   0xe3500000
        .word   0x0a000002
        .word   0xe59d1000
        .word   0xe3a00000
        .word   0xe5810190
        .word   0xe59d0000
        .word   0xe580b10c
        .word   0xe2860b02
        .word   0xe280001c
        .word   0xe58d001c
        .word   0xe596081c
        .word   0xe3100001
        .word   0x0a00003b
        .word   0xe5960804
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe59f01a4
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03b01
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860804
        .word   0xe3a01000
        .word   0xe1a0c00a
        .word   0xe3a030ff
        .word   0xe0862101
        .word   0xed920a01
        .word   0xee100a10
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a00080
        .word   0xe1530c20
        .word   0x1a000054
        .word   0xe3a00000
        .word   0xe596b804
        .word   0xe2822b01
        .word   0xe78b0101
        .word   0xed920a01
        .word   0xee102a10
        .word   0xeeb40a68
        .word   0xeef1fa10
        .word   0x11a02082
        .word   0x11530c22
        .word   0x03a02000
        .word   0x0a00000b
        .word   0xee208a0a
        .word   0xeeb48ae8
        .word   0xeef1fa10
        .word   0x3eb18a48
        .word   0x33a02b02
        .word   0x23a02000
        .word   0xee18ba10
        .word   0xe35b0445
        .word   0xaeb08a4b
        .word   0xeebc0ac8
        .word   0xee10ba10
        .word   0xe182200b
        .word   0xe1800602
        .word   0xe5962804
        .word   0xe7820101
        .word   0xe2811001
        .word   0xe3510c01
        .word   0xbaffffd8
        .word   0xe596081c
        .word   0xe3c01001
        .word   0xe59d001c
        .word   0xe5801000
        .word   0xe59f00b8
        .word   0xe59f20b0
        .word   0xe5901000
        .word   0xe5920000
        .word   0xe1500001
        .word   0x2a000006
        .word   0xe59f10a4
        .word   0xe7913107
        .word   0xe5809004
        .word   0xe1a0c403
        .word   0xe2803008
        .word   0xe580c000
        .word   0xe5823000
        .word   0xe5962804
        .word   0xe3a01c01
        .word   0xe3a00f72
        .word   0xebe77ca1
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe2877001
        .word   0xe3570006
        .word   0xbaffff68
        .word   0xe3a07000
        .word   0xe0670187
        .word   0xe0848200
        .word   0xe5d80a20
        .word   0xe3500000
        .word   0x0a000121
        .word   0xe5940a0c
        .word   0xe1b00c80
        .word   0x5a000095
        .word   0xe59407c0
        .word   0xe2871008
        .word   0xe1a00130
        .word   0xe3100001
        .word   0x1a000090
        .word   0xea000014
        .word   0x000f01c3
        .word   0x009ad578
        .word   0x45800000
        .word   0x45000000
        .word   0x00004008
        .word   0x44ffe000
        .word   0x000f01c5
        .word   0x00000fff
        .word   0x45800000
        .word   0x007eb57c
        .word   0x008ab4f8
        .word   0x008ab4fc
        .word   0x007eb594
        .word   0x008aab18
        .word   0xee200a2a
        .word   0xee100a10
        .word   0xe1580000
        .word   0xcebc0ac0
        .word   0xd1a0000c
        .word   0xce100a10
        .word   0xeaffffa4
        .word   0xe5980a80
        .word   0xe0851100
        .word   0xe591a074
        .word   0xeb004168
        .word   0xe0859107
        .word   0xe1a06000
        .word   0xe5990124
        .word   0xe150000a
        .word   0xe59901a8
        .word   0x1a000018
        .word   0xe3500000
        .word   0x0a00006e
        .word   0xe51f0060
        .word   0xe51f1068
        .word   0xe5902000
        .word   0xe5910000
        .word   0xe1500002
        .word   0x2a000007
        .word   0xe599322c
        .word   0xe1a0c407
        .word   0xe51fa094
        .word   0xe28cbb02
        .word   0xe183300b
        .word   0xe8800408
        .word   0xe280c008
        .word   0xe581c000
        .word   0xe599222c
        .word   0xe5960804
        .word   0xe59911a8
        .word   0xe0802102
        .word   0xe3a00f72
        .word   0xebe77c58
        .word   0xe3a00000
        .word   0xe58901a8
        .word   0xea000057
        .word   0xe3500000
        .word   0x13a00000
        .word   0x158901a8
        .word   0xe589a124
        .word   0xe596081c
        .word   0xe286ab02
        .word   0xe28aa01c
        .word   0xe3100001
        .word   0x0a00003b
        .word   0xe5960804
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe51f00e4
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03b01
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860804
        .word   0xe51f9128
        .word   0xe51fc128
        .word   0xe3a01000
        .word   0xe3a030ff
        .word   0xe0862101
        .word   0xed920a01
        .word   0xee100a10
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a00080
        .word   0xe1530c20
        .word   0x1a000039
        .word   0xe3a00000
        .word   0xe596b804
        .word   0xe2822b01
        .word   0xe78b0101
        .word   0xed920a01
        .word   0xee102a10
        .word   0xeeb40a68
        .word   0xeef1fa10
        .word   0x11a02082
        .word   0x11530c22
        .word   0x03a02000
        .word   0x0a00000b
        .word   0xee209a0a
        .word   0xeeb49ae8
        .word   0xeef1fa10
        .word   0x3eb19a49
        .word   0x33a02b02
        .word   0x23a02000
        .word   0xee19ba10
        .word   0xe35b0445
        .word   0xaeb09a4b
        .word   0xeebc0ac9
        .word   0xee10ba10
        .word   0xe182200b
        .word   0xe1802602
        .word   0xe5960804
        .word   0xe7802101
        .word   0xe2811001
        .word   0xe3510c01
        .word   0xbaffffd8
        .word   0xe596081c
        .word   0xe3c00001
        .word   0xe58a0000
        .word   0xe51f01d0
        .word   0xe51f21d8
        .word   0xe5901000
        .word   0xe5920000
        .word   0xe1500001
        .word   0x2a000006
        .word   0xe1a03407
        .word   0xe283cb02
        .word   0xe51f3204
        .word   0xe2809008
        .word   0xe5803004
        .word   0xe580c000
        .word   0xe5829000
        .word   0xe5962804
        .word   0xe3a01c01
        .word   0xe3a00f72
        .word   0xebe77bff
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe59407c0
        .word   0xe2871018
        .word   0xe1a00130
        .word   0xe3100001
        .word   0x0a000007
        .word   0xea000082
        .word   0xee200a2a
        .word   0xee100a10
        .word   0xe15c0000
        .word   0xcebc0ac0
        .word   0xd1a00009
        .word   0xce100a10
        .word   0xeaffffbf
        .word   0xe5980a8c
        .word   0xe0851100
        .word   0xe5918074
        .word   0xeb0040e0
        .word   0xe0859107
        .word   0xe1a06000
        .word   0xe5990144
        .word   0xe1500008
        .word   0xe59901c8
        .word   0x1a000019
        .word   0xe3500000
        .word   0x0a00006f
        .word   0xe51f1284
        .word   0xe51f0284
        .word   0xe5912000
        .word   0xe5900000
        .word   0xe1520000
        .word   0x2a000008
        .word   0xe599c24c
        .word   0xe51f32b0
        .word   0xe1a08407
        .word   0xe288aa01
        .word   0xe18cc00a
        .word   0xe5823004
        .word   0xe2828008
        .word   0xe582c000
        .word   0xe5818000
        .word   0xe599224c
        .word   0xe5960804
        .word   0xe59911c8
        .word   0xe0802102
        .word   0xe3a00f72
        .word   0xebe77bcf
        .word   0xe3a00000
        .word   0xe58901c8
        .word   0xea000057
        .word   0xe3500000
        .word   0x13a00000
        .word   0x158901c8
        .word   0xe5898144
        .word   0xe596081c
        .word   0xe2869b02
        .word   0xe289901c
        .word   0xe3100001
        .word   0x0a00003b
        .word   0xe5960804
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe51f0308
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03b01
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860804
        .word   0xe51f834c
        .word   0xe51fc34c
        .word   0xe3a01000
        .word   0xe3a030ff
        .word   0xe0862101
        .word   0xed920a01
        .word   0xee100a10
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a00080
        .word   0xe1530c20
        .word   0x1a000049
        .word   0xe3a00000
        .word   0xe596a804
        .word   0xe2822b01
        .word   0xe78a0101
        .word   0xed920a01
        .word   0xee102a10
        .word   0xeeb40a68
        .word   0xeef1fa10
        .word   0x11a02082
        .word   0x11530c22
        .word   0x03a02000
        .word   0x0a00000b
        .word   0xee609a0a
        .word   0xeef49ae8
        .word   0xeef1fa10
        .word   0x3ef19a69
        .word   0x33a02b02
        .word   0x23a02000
        .word   0xee19aa90
        .word   0xe35a0445
        .word   0xaef09a4b
        .word   0xeebc0ae9
        .word   0xee10aa10
        .word   0xe182200a
        .word   0xe1800602
        .word   0xe5962804
        .word   0xe7820101
        .word   0xe2811001
        .word   0xe3510c01
        .word   0xbaffffd8
        .word   0xe596081c
        .word   0xe3c00001
        .word   0xe5890000
        .word   0xe51f03f4
        .word   0xe51f13fc
        .word   0xe5902000
        .word   0xe5910000
        .word   0xe1500002
        .word   0x2a000006
        .word   0xe1a03407
        .word   0xe283ca01
        .word   0xe51f3428
        .word   0xe2808008
        .word   0xe5803004
        .word   0xe580c000
        .word   0xe5818000
        .word   0xe5962804
        .word   0xe3a01c01
        .word   0xe3a00f72
        .word   0xebe77b76
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe2877001
        .word   0xe3570008
        .word   0xbafffed5
        .word   0xe5940e0c
        .word   0xed9f9acb
        .word   0xe3500000
        .word   0x0a000259
        .word   0xe59d0850
        .word   0xe59f1320
        .word   0xe5900000
        .word   0xe1100001
        .word   0x0a000254
        .word   0xe59f1314
        .word   0xe28d2e82
        .word   0xe51f9488
        .word   0xe51fa488
        .word   0xe1c100d0
        .word   0xe3a08000
        .word   0xed9fbac0
        .word   0xeddf9ac0
        .word   0xe8820003
        .word   0xea00000b
        .word   0xee200a2a
        .word   0xee100a10
        .word   0xe15c0000
        .word   0xcebc0ac0
        .word   0xd1a00008
        .word   0xce100a10
        .word   0xeaffffaf
        .word   0xe3580001
        .word   0x1a000002
        .word   0xe5940594
        .word   0xe3100901
        .word   0x0a00008b
        .word   0xe0840108
        .word   0xe5900df0
        .word   0xe0851100
        .word   0xe591b074
        .word   0xeb004041
        .word   0xe0857108
        .word   0xe1a06000
        .word   0xe5970164
        .word   0xe150000b
        .word   0xe59701e8
        .word   0x1a000018
        .word   0xe3500000
        .word   0x0a00007b
        .word   0xe51f0500
        .word   0xe51f1500
        .word   0xe590c000
        .word   0xe5911000
        .word   0xe15c0001
        .word   0x2a000007
        .word   0xe28d1e82
        .word   0xe597226c
        .word   0xe7913108
        .word   0xe59fb270
        .word   0xe1822403
        .word   0xe88c0804
        .word   0xe28c3008
        .word   0xe5803000
        .word   0xe597226c
        .word   0xe5960810
        .word   0xe59711e8
        .word   0xe0802102
        .word   0xe3a000b0
        .word   0xebe77b31
        .word   0xe3a00000
        .word   0xe58701e8
        .word   0xea000064
        .word   0xe3500000
        .word   0x13a00000
        .word   0x158701e8
        .word   0xe587b164
        .word   0xe596081c
        .word   0xe286bb02
        .word   0xe28bb01c
        .word   0xe3100008
        .word   0x0a000047
        .word   0xe5960810
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe51f0580
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03c02
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860810
        .word   0xe3a01000
        .word   0xe3a020ff
        .word   0xeeb00a68
        .word   0xe0860101
        .word   0xedd00a01
        .word   0xee103a90
        .word   0xeef40ac0
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a03083
        .word   0xe1520c23
        .word   0x1a00001a
        .word   0xe3a07000
        .word   0xe5963810
        .word   0xe7837101
        .word   0xedd00a81
        .word   0xee100a90
        .word   0xeef40a40
        .word   0xeef1fa10
        .word   0x11a00080
        .word   0x11520c20
        .word   0x03a00000
        .word   0x0a000019
        .word   0xee700aa9
        .word   0xee208a8a
        .word   0xeeb40ac8
        .word   0xeef1fa10
        .word   0xceb08a40
        .word   0xca000010
        .word   0xee180a10
        .word   0xe150000a
        .word   0xbe180a10
        .word   0xaeb08a4b
        .word   0xb3500445
        .word   0xba00000a
        .word   0xee380a4a
        .word   0xeebc0ac0
        .word   0xee100a10
        .word   0xea000009
        .word   0xee600aaa
        .word   0xee103a90
        .word   0xe15a0003
        .word   0xcefc0ae0
        .word   0xd1a07009
        .word   0xce107a90
        .word   0xeaffffde
        .word   0xee380a0a
        .word   0xeebc0ac0
        .word   0xee100a10
        .word   0xe1873600
        .word   0xe5960810
        .word   0xe7803101
        .word   0xe2811001
        .word   0xe3510080
        .word   0xbaffffca
        .word   0xe596081c
        .word   0xe3c00008
        .word   0xe58b0000
        .word   0xe51f069c
        .word   0xe51f26a4
        .word   0xe5901000
        .word   0xe5920000
        .word   0xe1500001
        .word   0x2a000007
        .word   0xe28d1e82
        .word   0xe59f30d8
        .word   0xe791c108
        .word   0xe5803004
        .word   0xe1a0740c
        .word   0xe280c008
        .word   0xe5807000
        .word   0xe582c000
        .word   0xe5962810
        .word   0xe3a01080
        .word   0xe3a000b0
        .word   0xebe77acb
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe2888001
        .word   0xe3580002
        .word   0xbaffff6e
        .word   0xe5940594
        .word   0xe3100902
        .word   0x0a000088
        .word   0xe5940df8
        .word   0xe0851100
        .word   0xe5917074
        .word   0xeb003fb3
        .word   0xe1a06000
        .word   0xe595016c
        .word   0xe1500007
        .word   0xe59501f0
        .word   0x1a00001c
        .word   0xe3500000
        .word   0x0a00007d
        .word   0xe51f0730
        .word   0xe51f1738
        .word   0xe5902000
        .word   0xe5910000
        .word   0xe1500002
        .word   0x2a000005
        .word   0xe59f3048
        .word   0xe595c274
        .word   0xe2807008
        .word   0xe5803004
        .word   0xe580c000
        .word   0xe5817000
        .word   0xe5950274
        .word   0xe5962814
        .word   0xe59511f0
        .word   0xe0822100
        .word   0xe3a000b0
        .word   0xebe77aa6
        .word   0xe3a00000
        .word   0xe58501f0
        .word   0xea000068
        .word   0x437f0000
        .word   0x00004020
        .word   0x007e9cbc
        .word   0x457ff000
        .word   0x3f800000
        .word   0x000f00af
        .word   0xe3500000
        .word   0x13a00000
        .word   0x158501f0
        .word   0xe585716c
        .word   0xe596081c
        .word   0xe2867b02
        .word   0xe287701c
        .word   0xe3100010
        .word   0x0a000047
        .word   0xe5960814
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe51f07c4
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03c02
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860814
        .word   0xe3a01000
        .word   0xe1a03009
        .word   0xe3a000ff
        .word   0xe0862101
        .word   0xed920a01
        .word   0xee10ca10
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a0c08c
        .word   0xe1500c2c
        .word   0x1a00001a
        .word   0xe3a09000
        .word   0xe596c814
        .word   0xe78c9101
        .word   0xed920a81
        .word   0xee102a10
        .word   0xeeb40a68
        .word   0xeef1fa10
        .word   0x11a02082
        .word   0x11500c22
        .word   0x03a02000
        .word   0x0a000019
        .word   0xee300a29
        .word   0xee200a0a
        .word   0xeef48ac0
        .word   0xeef1fa10
        .word   0xceb00a68
        .word   0xca000010
        .word   0xee102a10
        .word   0xe152000a
        .word   0xbe102a10
        .word   0xaeb00a4b
        .word   0xb3520445
        .word   0xba00000a
        .word   0xee300a4a
        .word   0xeebc0ac0
        .word   0xee102a10
        .word   0xea000009
        .word   0xee200a2a
        .word   0xee10ca10
        .word   0xe15a000c
        .word   0xcebc0ac0
        .word   0xd1a09003
        .word   0xce109a10
        .word   0xeaffffde
        .word   0xee300a0a
        .word   0xeebc0ac0
        .word   0xee102a10
        .word   0xe189c602
        .word   0xe5962814
        .word   0xe782c101
        .word   0xe2811001
        .word   0xe3510080
        .word   0xbaffffcb
        .word   0xe596081c
        .word   0xe3c00010
        .word   0xe5870000
        .word   0xe51f08e0
        .word   0xe51f38e8
        .word   0xe5901000
        .word   0xe5930000
        .word   0xe1500001
        .word   0x2a000005
        .word   0xe51f2168
        .word   0xe3a0c000
        .word   0xe2807008
        .word   0xe5802004
        .word   0xe580c000
        .word   0xe5837000
        .word   0xe5962814
        .word   0xe3a01080
        .word   0xe3a000b0
        .word   0xebe77a3c
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe3a00000
        .word   0xe0842100
        .word   0xe0851100
        .word   0xe5922dfc
        .word   0xe0853102
        .word   0xe5912170
        .word   0xe5931074
        .word   0xe1510002
        .word   0x1a000002
        .word   0xe2800001
        .word   0xe3500004
        .word   0xbafffff4
        .word   0xe3500004
        .word   0xe28d9008
        .word   0x0a000016
        .word   0xe59f832c
        .word   0xe3a07000
        .word   0xeddfbac7
        .word   0xed9fbac7
        .word   0xe3a0b0ff
        .word   0xe1a09007
        .word   0xe0840107
        .word   0xe5900dfc
        .word   0xeb003f16
        .word   0xe1a06000
        .word   0xe0850107
        .word   0xe286ab02
        .word   0xe59011f4
        .word   0xe28aa01c
        .word   0xe3510000
        .word   0x158091f4
        .word   0xe596081c
        .word   0xe3100020
        .word   0x0a0000c8
        .word   0xe5960818
        .word   0xe3500000
        .word   0x0a000079
        .word   0xea000083
        .word   0xe59501f4
        .word   0xe3500000
        .word   0x059501f8
        .word   0x03500000
        .word   0x1a000004
        .word   0xe59501fc
        .word   0xe3500000
        .word   0x05950200
        .word   0x03500000
        .word   0x0a0000f6
        .word   0xe3a08000
        .word   0xe3a07c02
        .word   0xe1a00008
        .word   0xe1a0c008
        .word   0xe0851100
        .word   0xe59131f4
        .word   0xe3530000
        .word   0x0a000007
        .word   0xe5912278
        .word   0xe581c1f4
        .word   0xe1520007
        .word   0x31a07002
        .word   0xe0822003
        .word   0xe2423001
        .word   0xe1530008
        .word   0x81a08003
        .word   0xe2800001
        .word   0xe3500004
        .word   0xbafffff0
        .word   0xe3a0a000
        .word   0xe3a0b0ff
        .word   0xe084010a
        .word   0xe5900dfc
        .word   0xeb003ee6
        .word   0xe1570008
        .word   0x91a0118a
        .word   0xe1a06007
        .word   0x91a0211b
        .word   0x8a000008
        .word   0xe590c818
        .word   0xe7993106
        .word   0xe7dcc006
        .word   0xe1c33002
        .word   0xe183311c
        .word   0xe7893106
        .word   0xe2866001
        .word   0xe1560008
        .word   0x9afffff6
        .word   0xe28aa001
        .word   0xe35a0004
        .word   0xbaffffeb
        .word   0xe3570c01
        .word   0x2a00002e
        .word   0xe3580c01
        .word   0x3a00001f
        .word   0xe51f6aa0
        .word   0xe51faaa0
        .word   0xe5960000
        .word   0xe59a1000
        .word   0xe1500001
        .word   0x2a000005
        .word   0xe51f2324
        .word   0xe387cb01
        .word   0xe2803008
        .word   0xe5802004
        .word   0xe580c000
        .word   0xe5863000
        .word   0xe2671c01
        .word   0xe0892107
        .word   0xe3a000b0
        .word   0xebe779cd
        .word   0xe59a0000
        .word   0xe5961000
        .word   0xe1510000
        .word   0x2a000004
        .word   0xe51f335c
        .word   0xe3a02c05
        .word   0xe281c008
        .word   0xe1c120f0
        .word   0xe586c000
        .word   0xe2892b01
        .word   0xe24810ff
        .word   0xe3a000b0
        .word   0xebe779c0
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea0000a9
        .word   0xe51f2b20
        .word   0xe51f0b20
        .word   0xe5921000
        .word   0xe5900000
        .word   0xe1510000
        .word   0x2a000013
        .word   0xe51f33a4
        .word   0xe3876b01
        .word   0xe281c008
        .word   0xe5813004
        .word   0xe5816000
        .word   0xe582c000
        .word   0xea00000c
        .word   0xe51f1b54
        .word   0xe51f0b54
        .word   0xe5912000
        .word   0xe5900000
        .word   0xe1500002
        .word   0x9a000006
        .word   0xe2473c01
        .word   0xe383cc05
        .word   0xe51f33e0
        .word   0xe2826008
        .word   0xe5823004
        .word   0xe582c000
        .word   0xe5816000
        .word   0xe0480007
        .word   0xe2801001
        .word   0xe0892107
        .word   0xe3a000b0
        .word   0xebe7799e
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000087
        .word   0xe51f0b9c
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03c02
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860818
        .word   0xeef00a49
        .word   0xe3a01000
        .word   0xeeb01a6b
        .word   0xe0860101
        .word   0xe5962818
        .word   0xed900a01
        .word   0xee100a10
        .word   0xe35005fe
        .word   0xceb00a69
        .word   0xee001a20
        .word   0xeebc0ac1
        .word   0xee100a10
        .word   0xe7c20001
        .word   0xe2811001
        .word   0xe3510c01
        .word   0xbafffff1
        .word   0xe1510008
        .word   0xbeb08a68
        .word   0xb59f007c
        .word   0xaa000027
        .word   0xe0862101
        .word   0xed920a01
        .word   0xee102a10
        .word   0xeeb40a48
        .word   0xeef1fa10
        .word   0x11a02082
        .word   0x115b0c22
        .word   0x05962818
        .word   0x07c29001
        .word   0x0a00001a
        .word   0xee300a29
        .word   0xee200a0b
        .word   0xeeb48ac0
        .word   0xeef1fa10
        .word   0xceb00a48
        .word   0xca00000f
        .word   0xee102a10
        .word   0xe1520000
        .word   0xbe102a10
        .word   0xaeb00a60
        .word   0xb3520443
        .word   0xba000009
        .word   0xe5963818
        .word   0xee300a4b
        .word   0xeebc0ac0
        .word   0xee102a10
        .word   0xe7c32001
        .word   0xea000008
        .word   0x3f000000
        .word   0x43000000
        .word   0x000001ff
        .word   0x43800000
        .word   0xee300a0b
        .word   0xe5963818
        .word   0xeebc0ac0
        .word   0xee102a10
        .word   0xe7c32001
        .word   0xe2811001
        .word   0xe1510008
        .word   0xbaffffd7
        .word   0xe5960818
        .word   0xe7c09001
        .word   0xe596081c
        .word   0xe3c00020
        .word   0xe58a0000
        .word   0xe1a0c187
        .word   0xe3a00000
        .word   0xe1a02c1b
        .word   0xe28d1008
        .word   0xe596a818
        .word   0xe7913100
        .word   0xe7daa000
        .word   0xe1c33002
        .word   0xe1833c1a
        .word   0xe7813100
        .word   0xe2800001
        .word   0xe3500c02
        .word   0xbafffff6
        .word   0xe2877001
        .word   0xe3570004
        .word   0xbaffff19
        .word   0xe3570004
        .word   0x1a000029
        .word   0xe51f6d20
        .word   0xe51f7d20
        .word   0xe5960000
        .word   0xe5971000
        .word   0xe1500001
        .word   0x2a000005
        .word   0xe51f25a4
        .word   0xe3a0cb01
        .word   0xe2803008
        .word   0xe5802004
        .word   0xe580c000
        .word   0xe5863000
        .word   0xe28d8008
        .word   0xe1a02008
        .word   0xe3a01c01
        .word   0xe3a000b0
        .word   0xebe7792c
        .word   0xe5971000
        .word   0xe5960000
        .word   0xe1500001
        .word   0x2a000004
        .word   0xe51f35e0
        .word   0xe3a02c05
        .word   0xe280c008
        .word   0xe1c020f0
        .word   0xe586c000
        .word   0xe2882b01
        .word   0xe3a01c01
        .word   0xe3a000b0
        .word   0xebe7791f
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe3a00000
        .word   0xe0841100
        .word   0xe0852100
        .word   0xe5911dfc
        .word   0xe2800001
        .word   0xe3500004
        .word   0xe0851101
        .word   0xe5911074
        .word   0xe5821170
        .word   0xbafffff6
        .word   0xe5940624
        .word   0xe3100007
        .word   0x0a000085
        .word   0xe59d0850
        .word   0xe59f1438
        .word   0xe5900000
        .word   0xe1100001
        .word   0x0a000080
        .word   0xe5940e64
        .word   0xe0851100
        .word   0xe5917074
        .word   0xeb003dfb
        .word   0xe1a06000
        .word   0xe5950180
        .word   0xe59f8414
        .word   0xe1500007
        .word   0xe5950204
        .word   0x1a000014
        .word   0xe3500000
        .word   0x0a000074
        .word   0xe51f2e18
        .word   0xe51f0e18
        .word   0xe5921000
        .word   0xe5900000
        .word   0xe1510000
        .word   0x2a000003
        .word   0xe5953288
        .word   0xe281c008
        .word   0xe8810108
        .word   0xe582c000
        .word   0xe5952288
        .word   0xe5960808
        .word   0xe5951204
        .word   0xe0802102
        .word   0xe3a000e8
        .word   0xebe778ef
        .word   0xe3a00000
        .word   0xe5850204
        .word   0xea000061
        .word   0xe3500000
        .word   0x13a00000
        .word   0x15850204
        .word   0xe5857180
        .word   0xe596081c
        .word   0xe2867b02
        .word   0xe287701c
        .word   0xe3100002
        .word   0x0a000048
        .word   0xe5960808
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe51f0e88
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03c02
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe5860808
        .word   0xe51f9ec8
        .word   0xe59fc35c
        .word   0xe3a01000
        .word   0xeddf1ad3
        .word   0xed9f1ad3
        .word   0xe3a020ff
        .word   0xe1a03001
        .word   0xe0860101
        .word   0xedd00a81
        .word   0xee10aa90
        .word   0xeef40a68
        .word   0xeef1fa10
        .word   0x11a0a08a
        .word   0x11520c2a
        .word   0x0596a808
        .word   0x078a3101
        .word   0x0a000016
        .word   0xee700aa1
        .word   0xee200a8a
        .word   0xeef48ac0
        .word   0xeef1fa10
        .word   0xceb00a68
        .word   0xca00000b
        .word   0xee10aa10
        .word   0xe35a0446
        .word   0xbe10aa10
        .word   0xaeb00a41
        .word   0xb15a0009
        .word   0xba000005
        .word   0xe596a808
        .word   0xee300a6a
        .word   0xeebc0ac0
        .word   0xee10ba10
        .word   0xe78ab101
        .word   0xea000004
        .word   0xee300a2a
        .word   0xe596b808
        .word   0xeebc0ac0
        .word   0xee10aa10
        .word   0xe78ba101
        .word   0xed900a01
        .word   0xee100a10
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a00080
        .word   0xe1520c20
        .word   0x1a00001f
        .word   0xe3a00000
        .word   0xe596a808
        .word   0xe79ab101
        .word   0xe18b0680
        .word   0xe78a0101
        .word   0xe2811001
        .word   0xe3510080
        .word   0xbaffffce
        .word   0xe596081c
        .word   0xe3c00002
        .word   0xe5870000
        .word   0xe51f1fa8
        .word   0xe51f0fb0
        .word   0xe5912000
        .word   0xe5901000
        .word   0xe1510002
        .word   0x2a000003
        .word   0xe3a03000
        .word   0xe8810108
        .word   0xe281c008
        .word   0xe580c000
        .word   0xe5962808
        .word   0xe3a01080
        .word   0xe3a000e8
        .word   0xebe7788c
        .word   0xe3a00001
        .word   0xe58d0818
        .word   0xe5941624
        .word   0xe3a00007
        .word   0xe1d00001
        .word   0x1a0000bc
        .word   0xea000006
        .word   0xee200a0a
        .word   0xee100a10
        .word   0xe3500445
        .word   0xbebc0ac0
        .word   0xa1a0000c
        .word   0xbe100a10
        .word   0xeaffffd9
        .word   0xe59d0850
        .word   0xe59f1204
        .word   0xe5900000
        .word   0xe1100001
        .word   0x13a00000
        .word   0x0a0000ae
        .word   0xe0841100
        .word   0xe0852100
        .word   0xe5911e78
        .word   0xe5922184
        .word   0xe0851101
        .word   0xe5911074
        .word   0xe1510002
        .word   0x1a000002
        .word   0xe2800001
        .word   0xe3500003
        .word   0xbafffff4
        .word   0xe3500003
        .word   0x0a0000a1
        .word   0xe3a08000
        .word   0xe58d8010
        .word   0xe58d8014
        .word   0xe58d8018
        .word   0xe58d801c
        .word   0xe58d8020
        .word   0xe58d8024
        .word   0xed9f8a69
        .word   0xe58d8028
        .word   0xe58d802c
        .word   0xe58d8030
        .word   0xe58d8034
        .word   0xe58d8038
        .word   0xe3a09020
        .word   0xe58d803c
        .word   0xe58d8040
        .word   0xe58d8044
        .word   0xe58d8048
        .word   0xe58d804c
        .word   0xe0840108
        .word   0xe5900e78
        .word   0xeb003d49
        .word   0xe1a06000
        .word   0xe280ab02
        .word   0xe590081c
        .word   0xe28aa01c
        .word   0xe3100004
        .word   0x0a000035
        .word   0xe596080c
        .word   0xe2867b02
        .word   0xe287700c
        .word   0xe3500000
        .word   0x1a00000a
        .word   0xe59f0140
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x03a00000
        .word   0x0a000004
        .word   0xe3a03040
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe586080c
        .word   0xe51fe480
        .word   0xe3a00000
        .word   0xe3a020ff
        .word   0xe0861100
        .word   0xed910a01
        .word   0xee200a09
        .word   0xee103a10
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x9a000002
        .word   0xe1a03083
        .word   0xe1520c23
        .word   0x1a00003a
        .word   0xe3a03000
        .word   0xe596c80c
        .word   0xe78c3100
        .word   0xed910a09
        .word   0xe597b000
        .word   0xe089c100
        .word   0xee200a08
        .word   0xeeb00ac0
        .word   0xeebc0ac0
        .word   0xee103a10
        .word   0xe203307f
        .word   0xe78b300c
        .word   0xed910a09
        .word   0xeeb40ae8
        .word   0xeef1fa10
        .word   0x2a000002
        .word   0xe596180c
        .word   0xe3833080
        .word   0xe781300c
        .word   0xe2800001
        .word   0xe3500008
        .word   0xbaffffdf
        .word   0xe596081c
        .word   0xe3c00004
        .word   0xe58a0000
        .word   0xe2863b02
        .word   0xe3a00000
        .word   0xe28d1010
        .word   0xe1a02188
        .word   0xe283300c
        .word   0xe596c80c
        .word   0xe0897100
        .word   0xe791a100
        .word   0xe79c7007
        .word   0xe081c100
        .word   0xe18a7217
        .word   0xe7817100
        .word   0xe593a000
        .word   0xe59c7020
        .word   0xe79aa100
        .word   0xe2800001
        .word   0xe3500008
        .word   0xe187721a
        .word   0xe58c7020
        .word   0xbafffff0
        .word   0xe2888001
        .word   0xe3580003
        .word   0xbaffffa9
        .word   0xe3580003
        .word   0x1a000036
        .word   0xea00000d
        .word   0x00004010
        .word   0x000f00e6
        .word   0x40000000
        .word   0x45fff800
        .word   0x000007ff
        .word   0x02004000
        .word   0x42fe0000
        .word   0x008aab18
        .word   0xee103a10
        .word   0xe15e0003
        .word   0xcebc0ac0
        .word   0xd3a030ff
        .word   0xce103a10
        .word   0xeaffffbf
        .word   0xe59d0818
        .word   0xe3500000
        .word   0x1a000002
        .word   0xe3a0102d
        .word   0xe3a000c0
        .word   0xebffe852
        .word   0xe59f63cc
        .word   0xe59f73cc
        .word   0xe5961000
        .word   0xe5970000
        .word   0xe1510000
        .word   0x2a000004
        .word   0xe59f33bc
        .word   0xe3a02000
        .word   0xe281c008
        .word   0xe1c120f0
        .word   0xe586c000
        .word   0xe28d2010
        .word   0xe3a01010
        .word   0xe3a00f49
        .word   0xebe777dc
        .word   0xe5970000
        .word   0xe5961000
        .word   0xe1510000
        .word   0x2a000004
        .word   0xe3a02000
        .word   0xe3a03c01
        .word   0xe281c008
        .word   0xe1c120f0
        .word   0xe586c000
        .word   0xe3a00000
        .word   0xe0841100
        .word   0xe0852100
        .word   0xe5911e78
        .word   0xe2800001
        .word   0xe3500003
        .word   0xe0851101
        .word   0xe5911074
        .word   0xe5821184
        .word   0xbafffff6
        .word   0xe5950008
        .word   0xe3100b02
        .word   0x1a000050
        .word   0xe59d0850
        .word   0xe5900000
        .word   0xe3100c01
        .word   0x1a000003
        .word   0xe5940e38
        .word   0xe5951644
        .word   0xe1500001
        .word   0x0a000048
        .word   0xe5d52656
        .word   0xe5d5c654
        .word   0xe5d56655
        .word   0xe5940e38
        .word   0xe5d57657
        .word   0xe59f3304
        .word   0xe59f1304
        .word   0xe5850644
        .word   0xe1a08102
        .word   0xe5930000
        .word   0xe5914000
        .word   0xe18c2086
        .word   0xe188c187
        .word   0xe1500004
        .word   0xe182800c
        .word   0x2a000005
        .word   0xe59f42e4
        .word   0xe3a0c001
        .word   0xe2806008
        .word   0xe5804004
        .word   0xe580c000
        .word   0xe5836000
        .word   0xe5932000
        .word   0xe5910000
        .word   0xe1520000
        .word   0x2a000005
        .word   0xe59f42c0
        .word   0xe3a0c001
        .word   0xe2826008
        .word   0xe5824004
        .word   0xe582c000
        .word   0xe5836000
        .word   0xe59f62ac
        .word   0xe5950644
        .word   0xe2864002
        .word   0xe2400a06
        .word   0xe2500030
        .word   0xe1867946
        .word   0xe184c9c4
        .word   0x0a000023
        .word   0xe3500018
        .word   0x0a000079
        .word   0xe3500021
        .word   0x1a00001c
        .word   0xe5930000
        .word   0xe5912000
        .word   0xe1500002
        .word   0x2a000003
        .word   0xe3a0500f
        .word   0xe88000a0
        .word   0xe2808008
        .word   0xe5838000
        .word   0xe5932000
        .word   0xe5910000
        .word   0xe1520000
        .word   0x2a000003
        .word   0xe3a0500f
        .word   0xe8820060
        .word   0xe2827008
        .word   0xe5837000
        .word   0xe5930000
        .word   0xe5912000
        .word   0xe1500002
        .word   0x2a000004
        .word   0xe3a05003
        .word   0xe5804004
        .word   0xe2806008
        .word   0xe5805000
        .word   0xe5836000
        .word   0xe5910000
        .word   0xe5931000
        .word   0xe1510000
        .word   0x3a000077
L64c704:
        .word   0xe28dde83
        .word   0xecbd8b08
        .word   0xe8bd8ff8
        .word   0xe3580000
        .word   0x03a02000
        .word   0x01a00002
        .word   0x0a00000c
        .word   0xe5950688
        .word   0xe3500001
        .word   0x0a000007
        .word   0xe5d5064c
        .word   0xe3500000
        .word   0x1a000004
        .word   0xe358000f
        .word   0x05d5064d
        .word   0x03500000
        .word   0x03a02000
        .word   0x0a000000
        .word   0xe3a02001
        .word   0xe3a00002
        .word   0xe5d5864b
        .word   0xe1800002
        .word   0xe3580000
        .word   0x13a02004
        .word   0x03a02000
        .word   0xe1800002
        .word   0x15d52658
        .word   0xe5d5864a
        .word   0x13520000
        .word   0x03a02000
        .word   0x13a02008
        .word   0xe3580000
        .word   0xe1800002
        .word   0x13a02010
        .word   0x03a02000
        .word   0xe1800002
        .word   0x1595265c
        .word   0xe5935000
        .word   0x13520000
        .word   0x03a02000
        .word   0x13a02020
        .word   0xe1800002
        .word   0xe5912000
        .word   0xe1550002
        .word   0x2a000006
        .word   0xe3100001
        .word   0x13a0800f
        .word   0x03a08000
        .word   0xe5856004
        .word   0xe2859008
        .word   0xe5858000
        .word   0xe5839000
        .word   0xe5935000
        .word   0xe5912000
        .word   0xe1550002
        .word   0x2a000005
        .word   0xe3100002
        .word   0x13a0600f
        .word   0x03a06000
        .word   0xe2858008
        .word   0xe1c560f0
        .word   0xe5838000
        .word   0xe5935000
        .word   0xe5912000
        .word   0xe1550002
        .word   0x2a00000c
        .word   0xe3100004
        .word   0x1310000a
        .word   0x03a06000
        .word   0x13a06002
        .word   0xe3100010
        .word   0x13100022
        .word   0x03a07000
        .word   0x13a07001
        .word   0xe1866007
        .word   0xe5854004
        .word   0xe2857008
        .word   0xe5856000
        .word   0xe5837000
        .word   0xe5911000
        .word   0xe5932000
        .word   0xe1520001
        .word   0x2affffac
        .word   0xe3100008
        .word   0xe2000020
        .word   0x13a04002
        .word   0x03a04000
        .word   0xe18402a0
        .word   0xe2824008
        .word   0xe8821001
        .word   0xea00001f
        .word   0xe5930000
        .word   0xe5912000
        .word   0xe1500002
        .word   0x2a000003
        .word   0xe3a0500f
        .word   0xe88000a0
        .word   0xe2808008
        .word   0xe5838000
        .word   0xe5932000
        .word   0xe5910000
        .word   0xe1520000
        .word   0x2a000003
        .word   0xe3a0500f
        .word   0xe8820060
        .word   0xe2827008
        .word   0xe5837000
        .word   0xe5932000
        .word   0xe5910000
        .word   0xe1520000
        .word   0x2a000004
        .word   0xe3a05000
        .word   0xe5824004
        .word   0xe2826008
        .word   0xe5825000
        .word   0xe5836000
        .word   0xe5910000
        .word   0xe5931000
        .word   0xe1510000
        .word   0x2affff87
        .word   0xe3a02000
        .word   0xe8811004
        .word   0xe2814008
        .word   0xe5834000
        .word   0xe28dde83
        .word   0xecbd8b08
        .word   0xe8bd8ff8
        .size   A_648efc, . - A_648efc

@ FUN_0064c918
        .global A_64c918
        .type   A_64c918, %function
A_64c918:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        add     r4, sp, #0x38
        ldr     r0, [sp, #0x40]
        ldm     r4, {sb, sl}
        ldr     ip, [r0]
        cmp     ip, #0
        ldreq   ip, [r0, #4]
        cmpeq   ip, #0
        ldreq   ip, [r0, #8]
        cmpeq   ip, #0
        beq     L64c948
        bl      Fn_1fd5dc
L64c948:
        ldr     lr, L64ce34
        mov     r4, #0
        str     r4, [r0, #0x3c]
        cmp     r2, lr
        sub     fp, r2, lr
        ldr     lr, [sp]
        str     r1, [r0, #0x10]
        str     sb, [r0, #0x34]
        str     lr, [r0, #0xc]
        mov     ip, #8
        mov     r8, #0x20
        mov     r5, #4
        mov     r7, #0x10
        mov     r6, #5
        strd    r2, r3, [r0, #0x14]
        beq     L64cdc4
        bgt     L64c9f0
        ldr     lr, L64ce38
        cmp     r2, lr
        sub     fp, r2, lr
        beq     L64cc1c
        bge     L64c9c8
        sub     sl, r2, #0x1900
        subs    sl, sl, #6
        beq     L64cb74
        cmp     sl, #1
        beq     L64cb10
        cmp     sl, #2
        beq     L64ca70
        cmp     sl, #3
        bne     L64cd9c
        b       L64cbc0
L64c9c8:
        sub     r3, fp, #0x4700
        subs    r3, r3, #0x36
        cmpne   r3, #0x10
        beq     L64ca54
        cmp     r3, #0x6c0
        beq     L64cc74
        sub     r3, r3, #0x700
        subs    r3, r3, #0x1a
        beq     L64cd7c
        b       L64cd9c
L64c9f0:
        ldr     sl, L64ce3c
        cmp     fp, sl
        sub     r3, fp, sl
        beq     L64cc90
        bgt     L64ca30
        sub     sl, fp, #0x1800
        subs    sl, sl, #0xf6
        beq     L64caec
        ldr     r3, L64ce40
        cmp     sl, #5
        beq     L64cd28
        cmp     sl, #6
        beq     L64cd50
        cmp     sl, #7
        bne     L64cd9c
        b       L64ca54
L64ca30:
        cmp     r3, #1
        beq     L64ccac
        sub     r3, r3, #0x700
        subs    r3, r3, #0x4b
        beq     L64ccd0
        sub     r3, r3, #0x400
        subs    r3, r3, #0x72
        bne     L64cd9c
        b       L64ccf4
L64ca54:
        str     r4, [r0, #0x1c]
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        str     ip, [r0, #0x2c]
        str     r8, [r0, #0x38]
        str     ip, [r0, #0x30]
        b       L64cd9c
L64ca70:
        sub     r2, r3, #0x1400
        subs    r2, r2, #1
        beq     L64cad0
        sub     r2, r2, #0x6c00
        subs    r2, r2, #0x32
        beq     L64ca94
        cmp     r2, #1
        bne     L64cdb4
        b       L64caac
L64ca94:
        str     r5, [r0, #0x1c]
        str     r5, [r0, #0x24]
        str     r5, [r0, #0x28]
        str     r5, [r0, #0x2c]
        str     r5, [r0, #0x30]
        b       L64cac8
L64caac:
        mov     r2, #2
        str     r2, [r0, #0x1c]
        str     r6, [r0, #0x24]
        mov     r3, #1
        str     r6, [r0, #0x28]
        str     r3, [r0, #0x30]
        str     r6, [r0, #0x2c]
L64cac8:
        str     r7, [r0, #0x38]
        b       L64cdb4
L64cad0:
        str     r4, [r0, #0x1c]
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        str     ip, [r0, #0x2c]
        str     r8, [r0, #0x38]
        str     ip, [r0, #0x30]
        b       L64cdb4
L64caec:
        mov     r3, #1
        str     r3, [r0, #0x1c]
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        mov     r5, #0x18
        str     r4, [r0, #0x30]
        str     r5, [r0, #0x38]
        str     ip, [r0, #0x2c]
        b       L64cd9c
L64cb10:
        sub     r2, r3, #0x1400
        subs    r2, r2, #1
        beq     L64cb2c
        sub     r2, r2, #0x6f00
        subs    r2, r2, #0x62
        bne     L64cdb4
        b       L64cb50
L64cb2c:
        mov     r3, #1
        str     r3, [r0, #0x1c]
        str     ip, [r0, #0x24]
        mov     r2, #0x18
        str     ip, [r0, #0x28]
        str     r2, [r0, #0x38]
        str     r4, [r0, #0x30]
        str     ip, [r0, #0x2c]
        b       L64cdb4
L64cb50:
        mov     r2, #3
        str     r2, [r0, #0x1c]
        str     r4, [r0, #0x30]
        add     r2, r0, #0x28
        str     r6, [r0, #0x24]
        mov     r3, #6
        str     r7, [r0, #0x38]
        stm     r2, {r3, r6}
        b       L64cdb4
L64cb74:
        sub     r2, r3, #0x1400
        subs    r2, r2, #1
        beq     L64cb90
        sub     r2, r2, #0x5000
        subs    r2, r2, #0x360
        bne     L64cdb4
        b       L64cba8
L64cb90:
        str     r4, [r0, #0x24]
        add     r2, r0, #0x2c
        str     ip, [r0, #0x1c]
        str     r4, [r0, #0x28]
        stm     r2, {r4, ip}
        b       L64cbf4
L64cba8:
        mov     r2, #0xb
        str     r2, [r0, #0x1c]
        str     r4, [r0, #0x24]
        str     r4, [r0, #0x28]
        strd    r4, r5, [r0, #0x2c]
        b       L64cc14
L64cbc0:
        sub     r2, r3, #0x1400
        subs    r2, r2, #1
        beq     L64cbdc
        sub     r2, r2, #0x5000
        subs    r2, r2, #0x360
        bne     L64cdb4
        b       L64cbfc
L64cbdc:
        mov     r2, #7
        str     r2, [r0, #0x1c]
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        str     r4, [r0, #0x30]
        str     ip, [r0, #0x2c]
L64cbf4:
        str     ip, [r0, #0x38]
        b       L64cdb4
L64cbfc:
        mov     r2, #0xa
        str     r2, [r0, #0x1c]
        str     r5, [r0, #0x24]
        str     r5, [r0, #0x28]
        str     r4, [r0, #0x30]
        str     r5, [r0, #0x2c]
L64cc14:
        str     r5, [r0, #0x38]
        b       L64cdb4
L64cc1c:
        sub     r3, r3, #0x1400
        subs    r3, r3, #1
        beq     L64cc38
        sub     r3, r3, #0x5300
        subs    r3, r3, #0x5f
        bne     L64cd9c
        b       L64cc54
L64cc38:
        str     r6, [r0, #0x1c]
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        str     ip, [r0, #0x2c]
        str     ip, [r0, #0x30]
L64cc4c:
        str     r7, [r0, #0x38]
        b       L64cd9c
L64cc54:
        mov     r3, #9
        str     r3, [r0, #0x1c]
        str     r5, [r0, #0x24]
        str     r5, [r0, #0x28]
        str     r5, [r0, #0x2c]
        str     r5, [r0, #0x30]
        str     ip, [r0, #0x38]
        b       L64cd9c
L64cc74:
        mov     r3, #6
        str     r3, [r0, #0x1c]
        str     ip, [r0, #0x24]
        str     r4, [r0, #0x2c]
        str     ip, [r0, #0x28]
        str     r4, [r0, #0x30]
        b       L64cc4c
L64cc90:
        str     r4, [r0, #0x1c]
        str     r7, [r0, #0x24]
        str     r4, [r0, #0x28]
        str     r4, [r0, #0x2c]
        str     r4, [r0, #0x30]
        str     r7, [r0, #0x38]
        b       L64cd9c
L64ccac:
        mov     ip, #2
        add     r5, r0, #0x24
        mov     r3, #0x18
        str     ip, [r0, #0x1c]
        stm     r5, {r3, r4}
        str     r4, [r0, #0x2c]
        str     r3, [r0, #0x38]
        str     r4, [r0, #0x30]
        b       L64cd9c
L64ccd0:
        mov     r3, #3
        str     r3, [r0, #0x1c]
        str     r4, [r0, #0x2c]
        add     r3, r0, #0x24
        str     r4, [r0, #0x30]
        mov     r5, #0x18
        str     r8, [r0, #0x38]
        stm     r3, {r5, ip}
        b       L64cd9c
L64ccf4:
        mov     r3, #3
        add     sl, r0, #0x24
        str     r3, [r0, #0x1c]
        mov     ip, #6
        stm     sl, {r6, ip}
        add     r3, r0, #0x14
        ldr     r5, L64ce44
        ldr     r8, L64ce48
        str     r4, [r0, #0x30]
        str     r6, [r0, #0x2c]
        str     r7, [r0, #0x38]
        stm     r3, {r5, r8}
        b       L64cd9c
L64cd28:
        str     r5, [r0, #0x1c]
        str     r5, [r0, #0x24]
        str     r5, [r0, #0x28]
        ldr     ip, L64ce4c
        str     r5, [r0, #0x2c]
        add     r6, r0, #0x14
        str     r5, [r0, #0x30]
        str     r7, [r0, #0x38]
        stm     r6, {r3, ip}
        b       L64cd9c
L64cd50:
        str     r6, [r0, #0x24]
        mov     r5, #1
        str     r6, [r0, #0x28]
        ldr     r8, L64ce50
        str     r5, [r0, #0x30]
        add     sl, r0, #0x14
        str     r6, [r0, #0x2c]
        mov     ip, #2
        str     r7, [r0, #0x38]
        stm     sl, {r3, r8, ip}
        b       L64cd9c
L64cd7c:
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        str     r4, [r0, #0x30]
        add     r5, r0, #0x1c
        str     ip, [r0, #0x2c]
        mov     r3, #0xc
        str     r4, [r0, #0x38]
        stm     r5, {r3, sl}
L64cd9c:
        sub     r3, r2, #0x6700
        subs    r3, r3, #0x5a
        beq     L64ce2c
L64cda8:
        sub     r3, r2, #0x6700
        subs    r3, r3, #0x5b
        beq     L64ce2c
L64cdb4:
        ldr     r2, [sp]
        mov     r3, #0
        str     r4, [r0, #0x20]
        b       L64ce14
L64cdc4:
        str     ip, [r0, #0x24]
        str     ip, [r0, #0x28]
        str     r4, [r0, #0x38]
        add     r6, r0, #0x1c
        str     r5, [r0, #0x30]
        mov     r3, #0xd
        str     ip, [r0, #0x2c]
        stm     r6, {r3, sl}
        b       L64cda8
L64cde8:
        mul     r5, r2, r1
        ldr     ip, [r0, #0x38]
        ldr     r4, [r0, #0x20]
        add     r3, r3, #1
        asr     r2, r2, #1
        mul     ip, ip, r5
        asr     r1, r1, #1
        asr     r5, ip, #0x1f
        add     ip, ip, r5, lsr #29
        add     ip, r4, ip, asr #3
        str     ip, [r0, #0x20]
L64ce14:
        cmp     r3, sb
        bge     L64ce2c
        cmp     r2, #8
        blt     L64ce2c
        cmp     r1, #8
        bge     L64cde8
L64ce2c:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L64ce34:
        .word   0x0000675b
L64ce38:
        .word   0x0000190a
L64ce3c:
        .word   0x00001a4a
L64ce40:
        .word   0x00001908
L64ce44:
        .word   0x00001907
L64ce48:
        .word   0x00008363
L64ce4c:
        .word   0x00008033
L64ce50:
        .word   0x00008034
        .size   A_64c918, . - A_64c918

@ FUN_0065b730
        .global A_65b730
        .type   A_65b730, %function
A_65b730:
        push    {r4, r5, r6, lr}
        ldr     r4, L65b76c
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        beq     L65b768
        ldrb    r5, [r0, #0x3d]
        mov     r1, #1
        strb    r1, [r0, #0x3d]
        bl      Fn_022178
        cmp     r5, #0
        bne     L65b768
        ldr     r1, [r4, #0x9c]
        mov     r0, #0
        strb    r0, [r1, #0x3d]
L65b768:
        pop     {r4, r5, r6, pc}
L65b76c:
        .word   0x009a0d28
        .size   A_65b730, . - A_65b730

@ FUN_0065b830
        .global A_65b830
        .type   A_65b830, %function
A_65b830:
        push    {r4, r5, r6, lr}
        mov     ip, #0
        ldr     r5, L65b8a8
        ldr     r4, [r5, #0x9c]
        ldr     r3, [r4, #0x20]
        ldr     r6, [r4, #0x18]
        rsb     r3, r3, r3, lsl #3
        add     r3, r6, r3, lsl #2
        strb    ip, [r3]
        str     r1, [r3, #4]!
        add     r3, r3, #4
        stm     r3, {r0, r2}
        bl      Fn_0258bc
        ldr     r0, [r4, #0x20]
        add     r0, r0, #1
        str     r0, [r4, #0x20]
        ldr     r0, [r5, #0xa0]
        cmp     r0, r4
        bne     L65b8a0
        ldrb    r0, [r5, #0x12]
        cmp     r0, #0
        beq     L65b8a0
        ldrb    r0, [r5, #0x11]
        cmp     r0, #0
        bne     L65b8a0
        mov     r0, #1
        strb    r0, [r5, #0x11]
        bl      Fn_0289c8
L65b8a0:
        pop     {r4, r5, r6, lr}
        b       Fn_0258cc
L65b8a8:
        .word   0x009a0d28
        .size   A_65b830, . - A_65b830

@ FUN_0065b8dc
        .global A_65b8dc
        .type   A_65b8dc, %function
A_65b8dc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r1, #0
        mov     r8, r0
        ldr     r0, L65ba30
        ldr     r7, [r0]
        ldr     r0, [r7, #8]
        tst     r0, #0x80
        bne     L65ba2c
        ldr     r5, L65ba34
        mov     r4, #0
        add     r6, r7, #0x58
        mov     sb, #1
L65b90c:
        add     r0, r4, #0xa
        and     r3, r0, #0x1f
        asr     r2, r0, #5
        ldr     r0, [r8, r2, lsl #2]
        tst     r0, sb, lsl r3
        beq     L65b9b8
        add     r0, r6, r4
        ldrb    r0, [r0, #0xaf]
        cmp     r0, #0
        add     r0, r6, r4, lsl #2
        beq     L65b988
        ldr     r0, [r0, #0x10]
        cmp     r0, #0
        ldr     r0, [r5]
        beq     L65b970
        add     r0, r0, r4, lsl #2
        ldr     r0, [r0, #0x81c]
        cmp     r0, #0
        beq     L65b9b4
        ldr     r0, [r0]
        mov     r1, r4
        bl      Fn_6777e8
        nop
        nop
        b       L65b9b4
L65b970:
        ldr     r0, [r0, #4]
        mov     r1, r4
        bl      Fn_6777e8
        nop
        nop
        b       L65b9b4
L65b988:
        ldr     r0, [r0, #4]
        cmp     r0, #0
        ldr     r0, [r5]
        beq     L65b9a8
        add     r0, r0, r4, lsl #2
        ldr     r0, [r0, #0x810]
        cmp     r0, #0
        beq     L65b9b4
L65b9a8:
        ldr     r0, [r0]
        mov     r1, r4
        bl      Fn_676840
L65b9b4:
        mov     r1, #1
L65b9b8:
        add     r4, r4, #1
        cmp     r4, #3
        blt     L65b90c
        cmp     r1, #0
        beq     L65ba2c
        ldr     ip, [r7, #0x770]
        tst     ip, #7
        beq     L65ba2c
        ldr     r0, L65ba38
        ldr     r3, L65ba3c
        ldr     r2, [r0]
        ldr     r1, [r3]
        cmp     r1, r2
        bls     L65ba04
        ldr     r4, L65ba40
        add     r5, r2, #8
        str     r4, [r2, #4]
        str     ip, [r2]
        str     r5, [r0]
L65ba04:
        ldr     r1, [r3]
        ldr     r2, [r0]
        cmp     r2, r1
        bhs     L65ba2c
        ldr     r3, L65ba44
        mov     r4, #0x10000
        add     ip, r2, #8
        str     r3, [r2, #4]
        str     r4, [r2]
        str     ip, [r0]
L65ba2c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L65ba30:
        .word   0x008ab81c
L65ba34:
        .word   0x008ab848
L65ba38:
        .word   0x008ab4f8
L65ba3c:
        .word   0x008ab4fc
L65ba40:
        .word   0x00010080
L65ba44:
        .word   0x00050080
        .size   A_65b8dc, . - A_65b8dc

@ FUN_0065bec4
        .global A_65bec4
        .type   A_65bec4, %function
A_65bec4:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xf4
        ldr     r2, L65c39c
        ldr     r1, L65c394
        ldr     r3, L65c398
        ldr     r2, [r2]
        ldr     ip, [r1]
        ldr     r4, [r3]
        add     sl, r2, #0x400
        add     sl, sl, #0x58
        cmp     ip, r4
        add     r4, r2, #0x800
        add     r4, r4, #0x1c
        add     r7, r2, #0x6a0
        str     r2, [sp, #0xc4]
        bhs     L65bf1c
        ldr     r5, L65c3a0
        mov     r8, #0xf
        add     r6, ip, #8
        str     r5, [ip, #4]
        str     r8, [ip]
        str     r6, [r1]
L65bf1c:
        ldr     ip, [r1]
        ldr     r2, [r3]
        cmp     ip, r2
        bhs     L65bf40
        ldr     r6, L65c3a4
        mov     r5, #1
        add     r8, ip, #8
        stm     ip, {r5, r6}
        str     r8, [r1]
L65bf40:
        ldr     r1, L65c394
        ldr     r2, L65c398
        mov     sb, #0
        ldr     r1, [r1]
        ldr     r2, [r2]
        cmp     r1, r2
        bhs     L65bf74
        ldr     r3, L65c3a8
        ldr     ip, L65c394
        add     r5, r1, #8
        str     r3, [r1, #4]
        str     sb, [r1]
        str     r5, [ip]
L65bf74:
        ldr     r2, [r4, #8]
        add     r3, sp, #0x50
        add     r8, sp, #8
        cmp     r2, #0
        ldrhi   r5, L65c3ac
        mov     r1, #0
        movhi   ip, #4
        bls     L65bfd8
L65bf94:
        add     r2, r4, r1, lsl #2
        ldr     r2, [r2, #0xc]
        add     r2, r2, r2, lsl #1
        add     r2, sl, r2, lsl #3
        ldrb    r6, [r2, #0x15]
        cmp     r6, #0
        streq   ip, [r8, r1, lsl #2]
        streq   r5, [r3, r1, lsl #2]
        beq     L65bfc8
        ldr     r6, [r2, #4]
        str     r6, [r8, r1, lsl #2]
        ldr     r2, [r2, #8]
        str     r2, [r3, r1, lsl #2]
L65bfc8:
        ldr     r2, [r4, #8]
        add     r1, r1, #1
        cmp     r2, r1
        bhi     L65bf94
L65bfd8:
        sub     r0, r0, #1
        mov     r6, #0
        str     r0, [sp, #0xb8]
L65bfe4:
        ldr     r0, [sp, #0x100]
        mov     fp, #0
        cmp     r0, #0
        ldreq   r0, [sp, #0xfc]
        addeq   fp, r6, r0
        beq     L65c0a8
        ldr     r0, [sp, #0xf8]
        cmp     r0, #1
        beq     L65c014
        cmp     r0, #2
        bne     L65c0a8
        b       L65c060
L65c014:
        ldr     r0, [sp, #0xc4]
        ldr     r0, [r0, #0x5d8]
        cmp     r0, #0
        beq     L65c04c
        ldr     r0, [sp, #0xfc]
        ldr     r1, [r7]
        mov     r2, #1
        add     r0, r0, r6
        add     r0, r0, r1
        mov     r1, sp
        bl      Fn_648e24
        ldrb    fp, [sp]
        nop
        b       L65c0a8
L65c04c:
        ldr     r0, [sp, #0xfc]
        ldr     r1, [r7, #0x48]
        add     r0, r0, r6
        ldrb    fp, [r1, r0]
        b       L65c0a8
L65c060:
        ldr     r0, [sp, #0xc4]
        ldr     r0, [r0, #0x5d8]
        cmp     r0, #0
        beq     L65c098
        ldr     r0, [sp, #0xfc]
        ldr     r1, [r7]
        mov     r2, #2
        add     r0, r0, r6, lsl #1
        add     r0, r0, r1
        mov     r1, sp
        bl      Fn_648e24
        ldrh    fp, [sp]
        nop
        b       L65c0a8
L65c098:
        ldr     r0, [sp, #0xfc]
        ldr     r1, [r7, #0x48]
        add     r0, r0, r6, lsl #1
        ldrh    fp, [r1, r0]
L65c0a8:
        ldr     r0, [r4, #8]
        mov     r5, #0
        cmp     r0, #0
        bls     L65c2e8
L65c0b8:
        add     r0, r4, r5, lsl #2
        ldr     r0, [r0, #0xc]
        add     r1, r0, r0, lsl #1
        add     r0, r7, r0, lsl #2
        add     r1, sl, r1, lsl #3
        ldr     r2, [r1, #0x10]
        cmp     r2, #0
        ldrbne  r1, [r1, #0x15]
        cmpne   r1, #0
        beq     L65c104
        ldr     r1, [r0, #4]
        ldr     r0, [r0, #0x8c]
        mov     r2, #0x10
        mla     r0, r0, fp, r1
        add     r1, sp, #0xd8
        bl      Fn_648e24
        add     r0, sp, #0xd8
        nop
        b       L65c110
L65c104:
        ldr     r1, [r0, #0x4c]
        ldr     r0, [r0, #0x8c]
        mla     r0, r0, fp, r1
L65c110:
        add     r1, sp, #0x50
        ldr     r1, [r1, r5, lsl #2]
        cmp     r1, #0x1400
        beq     L65c19c
        sub     r1, r1, #0x1400
        subs    r1, r1, #1
        beq     L65c1dc
        cmp     r1, #1
        beq     L65c15c
        cmp     r1, #5
        bne     L65c21c
        vldr    s0, [r0]
        vstr    s0, [sp, #0x90]
        vldr    s0, [r0, #4]
        vstr    s0, [sp, #0x94]
        vldr    s0, [r0, #8]
        vstr    s0, [sp, #0x98]
        vldr    s0, [r0, #0xc]
        b       L65c218
L65c15c:
        ldrsh   r1, [r0]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [sp, #0x90]
        ldrsh   r1, [r0, #2]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [sp, #0x94]
        ldrsh   r1, [r0, #4]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [sp, #0x98]
        ldrsh   r0, [r0, #6]
        vmov    s0, r0
        vcvt.f32.s32 s0, s0
        b       L65c218
L65c19c:
        ldrsb   r1, [r0]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [sp, #0x90]
        ldrsb   r1, [r0, #1]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [sp, #0x94]
        ldrsb   r1, [r0, #2]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [sp, #0x98]
        ldrsb   r0, [r0, #3]
        vmov    s0, r0
        vcvt.f32.s32 s0, s0
        b       L65c218
L65c1dc:
        ldrb    r1, [r0]
        vmov    s0, r1
        vcvt.f32.u32 s0, s0
        vstr    s0, [sp, #0x90]
        ldrb    r1, [r0, #1]
        vmov    s0, r1
        vcvt.f32.u32 s0, s0
        vstr    s0, [sp, #0x94]
        ldrb    r1, [r0, #2]
        vmov    s0, r1
        vcvt.f32.u32 s0, s0
        vstr    s0, [sp, #0x98]
        ldrb    r0, [r0, #3]
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
L65c218:
        vstr    s0, [sp, #0x9c]
L65c21c:
        ldr     r1, [r8, r5, lsl #2]
        cmp     r1, #1
        streq   sb, [sp, #0xa4]
        cmpne   r1, #2
        streq   sb, [sp, #0xa8]
        cmpne   r1, #3
        moveq   r0, #0x3f0000
        streq   r0, [sp, #0xac]
        cmp     r1, #0
        addgt   r3, sp, #0x90
        addgt   r2, sp, #0xa0
        ble     L65c298
L65c24c:
        vldmia  r3!, {s0}
        vmov    r0, s0
        bics    ip, r0, #0x80000000
        beq     L65c278
        lsl     ip, r0, #1
        lsr     ip, ip, #0x18
        sub     ip, ip, #0x40
        cmp     ip, #0
        lsrlt   r0, r0, #0x1f
        lsllt   r0, r0, #0x17
        blt     L65c28c
L65c278:
        lsl     lr, r0, #9
        lsr     r0, r0, #0x1f
        lsr     lr, lr, #0x10
        orr     ip, lr, ip, lsl #16
        orr     r0, ip, r0, lsl #23
L65c28c:
        subs    r1, r1, #1
        str     r0, [r2], #4
        bne     L65c24c
L65c298:
        ldrd    r0, r1, [sp, #0xa8]
        add     r2, sp, #0xc8
        lsr     r0, r0, #0x10
        orr     r0, r0, r1, lsl #8
        str     r0, [sp, #0xc8]
        ldrd    r0, r1, [sp, #0xa4]
        lsl     r0, r0, #8
        lsr     r0, r0, #0x10
        orr     r0, r0, r1, lsl #16
        str     r0, [sp, #0xcc]
        ldrd    r0, r1, [sp, #0xa0]
        orr     r0, r0, r1, lsl #24
        mov     r1, #3
        str     r0, [sp, #0xd0]
        add     r0, r1, #0x230
        bl      Fn_6466d8
        ldr     r0, [r4, #8]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L65c0b8
L65c2e8:
        ldr     r0, [sp, #0xb8]
        cmp     r0, r6
        addhi   r6, r6, #1
        bhi     L65bfe4
        ldr     r1, L65c394
        ldr     r2, L65c398
        ldr     r3, [r1]
        ldr     r0, [r2]
        cmp     r3, r0
        bhs     L65c324
        ldr     ip, L65c3a8
        mov     r4, #1
        add     r5, r3, #8
        stm     r3, {r4, ip}
        str     r5, [r1]
L65c324:
        ldr     ip, [r1]
        ldr     r0, [r2]
        cmp     ip, r0
        bhs     L65c348
        ldr     r4, L65c3b0
        mov     r0, #1
        add     r5, ip, #8
        stm     ip, {r0, r4}
        str     r5, [r1]
L65c348:
        ldr     r3, [r1]
        ldr     r0, [r2]
        cmp     r3, r0
        bhs     L65c368
        ldr     ip, L65c3a4
        add     r4, r3, #8
        stm     r3, {sb, ip}
        str     r4, [r1]
L65c368:
        ldr     r2, [r2]
        ldr     r0, [r1]
        cmp     r0, r2
        bhs     L65c38c
        ldr     ip, L65c3b4
        mov     r3, #1
        add     r4, r0, #8
        stm     r0, {r3, ip}
        str     r4, [r1]
L65c38c:
        add     sp, sp, #0x104
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65c394:
        .word   0x008ab4f8
L65c398:
        .word   0x008ab4fc
L65c39c:
        .word   0x008ab81c
L65c3a0:
        .word   0x000f0232
L65c3a4:
        .word   0x00010253
L65c3a8:
        .word   0x00010245
L65c3ac:
        .word   0x00001406
L65c3b0:
        .word   0x000f0231
L65c3b4:
        .word   0x000f0111
        .size   A_65bec4, . - A_65bec4

@ FUN_0065ee88
        .global A_65ee88
        .type   A_65ee88, %function
A_65ee88:
        ldr     r2, L65ef40
        lsl     ip, r0, #0x17
        lsr     ip, ip, #0x17
        ldr     r3, [r2, #8]
        add     r2, r3, ip, lsl #2
        ldr     r2, [r2, #8]
        cmp     r2, #0
        beq     L65eebc
L65eea8:
        ldr     ip, [r2, #4]
        cmp     ip, r0
        ldrne   r2, [r2]
        cmpne   r2, #0
        bne     L65eea8
L65eebc:
        mov     r0, #1
        cmn     r1, #1
        strb    r0, [r2, #0x14]
        streq   r1, [r2, #8]
        beq     L65ef1c
        lsl     r0, r1, #0x17
        lsr     r0, r0, #0x17
        add     r0, r3, r0, lsl #2
        ldr     r0, [r0, #0x808]
        cmp     r0, #0
        beq     L65eefc
L65eee8:
        ldr     r3, [r0, #8]
        cmp     r3, r1
        ldrne   r0, [r0, #0x18]
        cmpne   r0, #0
        bne     L65eee8
L65eefc:
        ldr     r1, [r0, #0xc]
        sub     r3, r1, #0x8b00
        subs    r3, r3, #0x31
        bne     L65ef20
        ldr     r1, [r0, #0x10]
        add     r1, r1, #1
        str     r1, [r0, #0x10]
        str     r0, [r2, #0xc]
L65ef1c:
        bx      lr
L65ef20:
        sub     r3, r1, #0x6000
        subs    r3, r3, #1
        bne     L65ef1c
        ldr     r1, [r0, #0x10]
        add     r1, r1, #1
        str     r1, [r0, #0x10]
        str     r0, [r2, #0x10]
        bx      lr
L65ef40:
        .word   0x008ab508
        .size   A_65ee88, . - A_65ee88

@ FUN_0065ef44
        .global A_65ef44
        .type   A_65ef44, %function
A_65ef44:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r8, r2
        mov     r7, r1
        ldr     r2, L65f084
        lsl     r1, r0, #0x17
        lsr     r1, r1, #0x17
        ldr     r2, [r2, #8]
        add     r1, r2, r1, lsl #2
        ldr     r5, [r1, #8]
        cmp     r5, #0
        beq     L65ef84
L65ef70:
        ldr     r1, [r5, #4]
        cmp     r1, r0
        ldrne   r5, [r5]
        cmpne   r5, #0
        bne     L65ef70
L65ef84:
        ldr     r6, L65f088
        ldr     ip, [r6]
        cmp     ip, #0
        moveq   r4, #0
        beq     L65efb0
        mov     r3, #0xc
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L65efb0:
        mov     r0, r8
        bl      Fn_200e60
        ldr     ip, [r6]
        cmp     ip, #0
        moveq   r0, #0
        beq     L65efdc
        add     r3, r0, #1
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L65efdc:
        str     r0, [r4]
        ldr     r6, [r5, #0x18]
        cmp     r6, #0
        beq     L65f010
L65efec:
        ldr     r0, [r6]
        mov     r1, r8
        bl      Fn_1fe040
        cmp     r0, #0
        nop
        beq     L65f030
        ldr     r6, [r6, #8]
        cmp     r6, #0
        bne     L65efec
L65f010:
        ldr     r0, [r4]
        mov     r1, r8
        bl      Fn_202a48
        str     r7, [r4, #4]
        ldr     r0, [r5, #0x18]
        str     r0, [r4, #8]
        str     r4, [r5, #0x18]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L65f030:
        ldr     sb, L65f08c
        ldr     ip, [sb]
        cmp     ip, #0
        beq     L65f074
        ldr     r3, [r4]
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        ldr     ip, [sb]
        cmp     ip, #0
        beq     L65f074
        mov     r3, r4
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L65f074:
        cmp     r6, #0
        str     r7, [r6, #4]
        beq     L65f010
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L65f084:
        .word   0x008ab508
L65f088:
        .word   0x008aab18
L65f08c:
        .word   0x008aab1c
        .size   A_65ef44, . - A_65ef44

@ FUN_0065f090
        .global A_65f090
        .type   A_65f090, %function
A_65f090:
        push    {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        movs    r6, r1
        mov     r8, #0
        mov     sl, r0
        ldr     r0, L65f4c8
        ldr     r7, L65f4c4
        mov     r4, r8
        ldr     r5, [r0]
        beq     L65f270
        ldr     r1, [r7]
        lsl     sb, r6, #0x17
        ldr     r0, L65f4cc
        lsr     sb, sb, #0x17
        mov     fp, #1
        ldr     r4, [r1, sb, lsl #2]
        ldr     ip, [r0]
        cmp     r4, #0
        beq     L65f10c
L65f0d8:
        ldr     r1, [r4]
        cmp     r1, r6
        beq     L65f0f4
        ldr     r4, [r4, #0xc]
        cmp     r4, #0
        bne     L65f0d8
        b       L65f10c
L65f0f4:
        cmp     r4, #0
        beq     L65f10c
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L65f218
        b       L65f270
L65f10c:
        cmp     ip, #0
        moveq   r4, #0
        beq     L65f130
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L65f130:
        cmp     sl, #0x6800
        str     r6, [r4]
        str     r8, [r4, #0xc]
        beq     L65f1ec
        ldr     r0, L65f4cc
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r0, #0
        beq     L65f190
        mov     r3, #0x1c
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        cmp     r0, #0
        beq     L65f190
        str     r8, [r0]
        str     r8, [r0, #4]
        ldr     r1, L65f4d0
        str     r8, [r0, #8]
        str     r8, [r0, #0xc]
        str     r8, [r0, #0x14]
        str     r1, [r0, #0x10]
        str     r8, [r0, #0x18]
L65f190:
        str     r0, [r4, #8]
        str     r8, [r4, #4]
L65f198:
        ldr     r0, [r7]
        ldr     r1, [r0, sb, lsl #2]
        cmp     r1, #0
        streq   r4, [r0, sb, lsl #2]
        beq     L65f270
        ldr     r2, [r1]
        cmp     r2, r6
        strhi   r1, [r4, #0xc]
        strhi   r4, [r0, sb, lsl #2]
        bhi     L65f270
        ldr     r0, [r1, #0xc]
        cmp     r0, #0
        beq     L65f210
L65f1cc:
        ldr     r2, [r0]
        cmp     r2, r6
        bls     L65f200
        str     r4, [r1, #0xc]
        cmp     r0, #0
        str     r0, [r4, #0xc]
        bne     L65f270
        b       L65f210
L65f1ec:
        nop
        bl      Fn_0226a0
        str     r0, [r4, #8]
        str     fp, [r4, #4]
        b       L65f198
L65f200:
        mov     r1, r0
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        bne     L65f1cc
L65f210:
        str     r4, [r1, #0xc]
        b       L65f270
L65f218:
        cmp     sl, #0x6800
        beq     L65f290
        cmp     ip, #0
        moveq   r0, #0
        beq     L65f268
        mov     r3, #0x1c
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        cmp     r0, #0
        beq     L65f268
        str     r8, [r0]
        str     r8, [r0, #4]
        ldr     r1, L65f4d0
        str     r8, [r0, #8]
        str     r8, [r0, #0xc]
        str     r8, [r0, #0x14]
        str     r1, [r0, #0x10]
        str     r8, [r0, #0x18]
L65f268:
        str     r0, [r4, #8]
        str     r8, [r4, #4]
L65f270:
        cmp     sl, #0x6800
        beq     L65f2a0
        sub     r0, sl, #0x8800
        subs    r0, r0, #0x92
        beq     L65f460
        cmp     r0, #1
        bne     L65f450
        b       L65f470
L65f290:
        nop
        bl      Fn_0226a0
        str     r0, [r4, #8]
        str     fp, [r4, #4]
L65f2a0:
        ldr     r0, [r5, #0x5e0]
        cmp     r0, r6
        beq     L65f450
        cmp     r0, #0
        ldr     r0, [r7]
        beq     L65f480
        add     r1, r5, #0x400
        ldr     r0, [r0, #0x850]
        mov     r2, #0x180
        add     r1, r1, #0x58
        ldr     sb, [r0, #8]
        mov     r0, sb
        bl      Fn_20004c
        add     r0, r5, #0x400
        add     r0, r0, #0x1d8
        add     r3, sb, #0x180
        ldm     r0, {r0, r1}
        mov     r2, #0x1c0
        stm     r3, {r0, r1}
        add     r1, r5, #0x298
        add     r0, sb, #0x188
L65f2f4:
        bl      Fn_20004c
        cmp     r6, #0
        ldreq   r0, [r7]
        ldrne   sb, [r4, #8]
        mov     r2, #0x180
        ldreq   sb, [r0, #0x800]
        add     r0, r5, #0x400
        add     r0, r0, #0x58
        mov     r1, sb
        bl      Fn_20004c
        add     r0, sb, #0x180
        add     r3, r5, #0x400
        ldm     r0, {r0, r1}
        add     r3, r3, #0x1d8
        mov     r2, #0x1c0
        stm     r3, {r0, r1}
        add     r1, sb, #0x188
        add     r0, r5, #0x298
        bl      Fn_20004c
        str     r6, [r5, #0x5e0]
        ldr     r3, [r7]
        mov     r1, #0
        str     r4, [r3, #0x850]
L65f350:
        add     r0, r1, r1, lsl #1
        add     r0, r5, r0, lsl #3
        ldr     r2, [r0, #0x468]
        cmp     r2, #0
        addeq   r0, r3, r1, lsl #2
        streq   r8, [r0, #0x810]
        beq     L65f39c
        lsl     ip, r2, #0x17
        lsr     ip, ip, #0x17
        ldr     r0, [r3, ip, lsl #2]
        cmp     r0, #0
        beq     L65f394
L65f380:
        ldr     ip, [r0]
        cmp     ip, r2
        ldrne   r0, [r0, #0xc]
        cmpne   r0, #0
        bne     L65f380
L65f394:
        add     r2, r3, r1, lsl #2
        str     r0, [r2, #0x810]
L65f39c:
        add     r1, r1, #1
        cmp     r1, #0x10
        blt     L65f350
        ldr     r1, [r5, #0x5dc]
        cmp     r1, #0
        streq   r8, [r3, #0x808]
        beq     L65f3e4
        lsl     r0, r1, #0x17
        lsr     r0, r0, #0x17
        ldr     r0, [r3, r0, lsl #2]
        cmp     r0, #0
        beq     L65f3e0
L65f3cc:
        ldr     r2, [r0]
        cmp     r2, r1
        ldrne   r0, [r0, #0xc]
        cmpne   r0, #0
        bne     L65f3cc
L65f3e0:
        str     r0, [r3, #0x808]
L65f3e4:
        ldr     r1, [r5, #0x5d8]
        cmp     r1, #0
        streq   r8, [r3, #0x80c]
        beq     L65f420
        lsl     r0, r1, #0x17
        lsr     r0, r0, #0x17
        ldr     r0, [r3, r0, lsl #2]
        cmp     r0, #0
        beq     L65f41c
L65f408:
        ldr     r2, [r0]
        cmp     r2, r1
        ldrne   r0, [r0, #0xc]
        cmpne   r0, #0
        bne     L65f408
L65f41c:
        str     r0, [r3, #0x80c]
L65f420:
        ldr     r0, [r5]
        orr     r0, r0, #0xc0
        str     r0, [r5]
        ldr     r0, [r3, #0x804]
        cmp     r0, #0
        beq     L65f450
        str     r0, [sp]
        mov     r1, sp
        mov     r0, #1
        bl      Fn_660890
        ldr     r0, [r7]
        str     r8, [r0, #0x804]
L65f450:
        ldr     r0, [r5]
        orr     r0, r0, #2
        str     r0, [r5]
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65f460:
        str     r6, [r5, #0x5dc]
        ldr     r0, [r7]
        str     r4, [r0, #0x808]
        b       L65f450
L65f470:
        str     r6, [r5, #0x5d8]
        ldr     r0, [r7]
        str     r4, [r0, #0x80c]
        b       L65f450
L65f480:
        add     r1, r5, #0x400
        ldr     r0, [r0, #0x800]
        mov     r2, #0x180
        add     r1, r1, #0x58
        bl      Fn_20004c
        ldr     r0, [r7]
        add     r1, r5, #0x400
        add     r1, r1, #0x1d8
        ldr     r3, [r0, #0x800]
        ldm     r1, {r1, r2}
        str     r1, [r3, #0x180]
        str     r2, [r3, #0x184]
        ldr     r0, [r0, #0x800]
        mov     r2, #0x1c0
        add     r1, r5, #0x298
        add     r0, r0, #0x188
        b       L65f2f4
L65f4c4:
        .word   0x008ab850
L65f4c8:
        .word   0x008ab81c
L65f4cc:
        .word   0x008aab18
L65f4d0:
        .word   0x000088e4
        .size   A_65f090, . - A_65f090

@ FUN_0065f4d4
        .global A_65f4d4
        .type   A_65f4d4, %function
A_65f4d4:
        push    {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r1
        mov     r7, #0
        mov     r8, #0x10
        mov     fp, r0
        ldr     sl, L65fcf8
        lsl     r0, r1, #0x17
        ldr     ip, L65fcfc
        lsr     r0, r0, #0x17
        ldr     r3, [sl]
        ldr     r2, L65fd00
        cmp     fp, ip
        add     r0, r3, r0, lsl #2
        ldr     r3, L65fd04
        sub     r1, fp, ip
        ldr     ip, [r2]
        mov     sb, #1
        ldr     r6, [r3]
        mov     r4, r7
        beq     L65fb7c
        bge     L65f5bc
        ldr     r3, L65fd08
        cmp     fp, r3
        sub     r1, fp, r3
        beq     L65fb7c
        bge     L65f58c
        sub     r3, r3, #4
        cmp     fp, r3
        sub     r1, fp, r3
        beq     L65fb7c
        bge     L65f578
        sub     r1, fp, #0xd00
        subs    r1, r1, #0xe1
        beq     L65f67c
        sub     r1, r1, #0x5800
        subs    r1, r1, #0x1f
        beq     L65f880
        cmp     r1, #0x10
        cmpne   r1, #0x11
        bne     L65f61c
        b       L65fb7c
L65f578:
        cmp     r1, #1
        cmpne   r1, #2
        cmpne   r1, #3
        bne     L65f61c
        b       L65fb7c
L65f58c:
        cmp     r1, #9
        ldrlo   pc, [pc, r1, lsl #2]
        b       L65f61c
L65f598:
        .word   0x0075f61c
L65f59c:
        .word   0x0075fb7c
L65f5a0:
        .word   0x0075fb7c
L65f5a4:
        .word   0x0075fb7c
L65f5a8:
        .word   0x0075fb7c
L65f5ac:
        .word   0x0075fb7c
L65f5b0:
        .word   0x0075fb7c
L65f5b4:
        .word   0x0075fb7c
L65f5b8:
        .word   0x0075fb7c
L65f5bc:
        cmp     r1, #9
        beq     L65fb7c
        bge     L65f5f8
        cmp     r1, #9
        ldrlo   pc, [pc, r1, lsl #2]
        b       L65f61c
L65f5d4:
        .word   0x0075f61c
L65f5d8:
        .word   0x0075fb7c
L65f5dc:
        .word   0x0075fb7c
L65f5e0:
        .word   0x0075fb7c
L65f5e4:
        .word   0x0075fb7c
L65f5e8:
        .word   0x0075fb7c
L65f5ec:
        .word   0x0075fb7c
L65f5f0:
        .word   0x0075fb7c
L65f5f4:
        .word   0x0075fb7c
L65f5f8:
        cmp     r1, #0xe
        beq     L65fb7c
        bge     L65f620
        cmp     r1, #0xa
        cmpne   r1, #0xb
        beq     L65fb7c
        cmp     r1, #0xc
        cmpne   r1, #0xd
        beq     L65fb7c
L65f61c:
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65f620:
        cmp     r1, #0xf
        cmpne   r1, #0x10
        beq     L65fb7c
        sub     r1, r1, #0x1c00
        subs    r1, r1, #0x2f4
        bne     L65f61c
        ldr     r1, [r6, #0x58]
        add     r1, r6, r1, lsl #2
        ldr     r1, [r1, #0x68]
        cmp     r1, r5
        beq     L65f61c
        cmp     r5, #0
        beq     L65f81c
        ldr     r4, [r0, #0x10]
        cmp     r4, #0
        beq     L65f7c0
L65f660:
        ldr     r0, [r4, #8]
        cmp     r0, r5
        beq     L65f7a8
        ldr     r4, [r4, #0xc]
        cmp     r4, #0
        bne     L65f660
        b       L65f7c0
L65f67c:
        ldr     r1, [r6, #0x58]
        add     r1, r6, r1, lsl #2
        ldr     r1, [r1, #0x5c]
        cmp     r1, r5
        beq     L65f61c
        cmp     r5, #0
        beq     L65f734
        ldr     r4, [r0, #0x10]
        cmp     r4, #0
        beq     L65f6d8
L65f6a4:
        ldr     r0, [r4, #8]
        cmp     r0, r5
        beq     L65f6c0
        ldr     r4, [r4, #0xc]
        cmp     r4, #0
        bne     L65f6a4
        b       L65f6d8
L65f6c0:
        cmp     r4, #0
        beq     L65f6d8
        ldr     r0, [r4]
        cmp     r0, #0
        bne     L65f734
        b       L65f728
L65f6d8:
        cmp     ip, #0
        moveq   r4, #0
        beq     L65f6fc
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L65f6fc:
        mov     r0, r5
        bl      Fn_022520
        stm     r4, {r0, r7}
        add     r2, r4, #8
        mov     r1, r5
        mov     r0, r4
        stm     r2, {r5, r7}
        bl      Fn_675d80
        nop
        nop
        b       L65f734
L65f728:
        mov     r0, r5
        bl      Fn_022520
        stm     r4, {r0, r7}
L65f734:
        ldr     r0, [sl]
        ldr     r1, [r0, #0x8a8]
        cmp     r1, #0
        beq     L65f75c
        ldr     r2, [r6, #0x58]
        ldr     r3, [r1]
        mov     r1, #4
        add     r1, r1, r2, lsl #2
        str     r5, [r3, r1]
        b       L65f770
L65f75c:
        ldr     r3, [r6, #0x58]
        ldr     r2, [r0, #8]
        mov     r1, #4
        add     r1, r1, r3, lsl #2
        str     r5, [r2, r1]
L65f770:
        ldr     r1, [r6, #0x58]
        add     r1, r6, r1, lsl #2
        str     r5, [r1, #0x5c]
        ldr     r1, [r6, #0x58]
        add     r0, r0, r1, lsl #2
        str     r4, [r0, #0x810]
        ldr     r0, [r6, #0x58]
        add     r0, r0, #0xa
        lsr     r1, r0, #5
        and     r0, r0, #0x1f
        ldr     r2, [r6, r1, lsl #2]
        orr     r0, r2, sb, lsl r0
        str     r0, [r6, r1, lsl #2]
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65f7a8:
        cmp     r4, #0
        beq     L65f7c0
        ldr     r0, [r4]
        cmp     r0, #0
        bne     L65f81c
        b       L65f810
L65f7c0:
        cmp     ip, #0
        moveq   r4, #0
        beq     L65f7e4
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L65f7e4:
        mov     r0, r5
        bl      Fn_022458
        stm     r4, {r0, sb}
        add     r2, r4, #8
        mov     r1, r5
        mov     r0, r4
        stm     r2, {r5, r7}
        bl      Fn_675d80
        nop
        nop
        b       L65f81c
L65f810:
        mov     r0, r5
        bl      Fn_022458
        stm     r4, {r0, sb}
L65f81c:
        ldr     r0, [sl]
        ldr     r1, [r0, #0x8a8]
        cmp     r1, #0
        ldrne   r2, [r6, #0x58]
        ldrne   r1, [r1]
        addne   r2, r8, r2, lsl #2
        strne   r5, [r1, r2]
        ldreq   r1, [r6, #0x58]
        ldreq   r2, [r0, #8]
        addeq   r1, r8, r1, lsl #2
        streq   r5, [r2, r1]
        ldr     r1, [r6, #0x58]
        add     r1, r6, r1, lsl #2
        str     r5, [r1, #0x68]
        ldr     r1, [r6, #0x58]
        add     r0, r0, r1, lsl #2
        str     r4, [r0, #0x81c]
        ldr     r0, [r6, #0x58]
        add     r1, r0, #0xa
        lsr     r0, r1, #5
        and     r1, r1, #0x1f
        ldr     r2, [r6, r0, lsl #2]
        orr     r1, r2, sb, lsl r1
        str     r1, [r6, r0, lsl #2]
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65f880:
        ldr     r1, [r6, #0xf4]
        cmp     r1, r5
        beq     L65f61c
        cmp     r5, #0
        beq     L65f99c
        ldr     r4, [r0, #0x10]
        cmp     r4, #0
        beq     L65f8d4
L65f8a0:
        ldr     r0, [r4, #8]
        cmp     r0, r5
        beq     L65f8bc
        ldr     r4, [r4, #0xc]
        cmp     r4, #0
        bne     L65f8a0
        b       L65f8d4
L65f8bc:
        cmp     r4, #0
        beq     L65f8d4
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L65f95c
        b       L65f99c
L65f8d4:
        cmp     ip, #0
        mov     fp, r2
        moveq   r4, #0
        beq     L65f8fc
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L65f8fc:
        ldr     ip, [fp]
        cmp     ip, #0
        moveq   fp, #0
        beq     L65f934
        mov     r3, #0x9c
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        movs    fp, r0
        beq     L65f934
        mov     r1, #0x9c
        bl      Fn_1fddd8
        str     r5, [fp]
L65f934:
        add     r2, r4, #4
        mov     r0, #2
        str     fp, [r4]
        stm     r2, {r0, r5, r7}
        mov     r1, r5
        mov     r0, r4
        bl      Fn_675d80
        nop
        nop
        b       L65f99c
L65f95c:
        cmp     ip, #0
        moveq   fp, #0
        beq     L65f990
        mov     r3, #0x9c
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        movs    fp, r0
        beq     L65f990
        mov     r1, #0x9c
        bl      Fn_1fddd8
        str     r5, [fp]
L65f990:
        mov     r0, #2
        str     r0, [r4, #4]
        str     fp, [r4]
L65f99c:
        ldr     ip, [sl]
        mov     r2, #0
        mov     r0, r2
        mov     r3, #0x1c
L65f9ac:
        cmp     r5, #0
        ldrne   r1, [r4]
        ldreq   r1, [ip, #8]
        add     sl, r3, r0, lsl #2
        ldr     r1, [r1, sl]
        add     sl, r6, r0, lsl #2
        ldr     fp, [sl, #0x74]
        cmp     fp, r1
        beq     L65fa1c
        cmp     r1, #0
        str     r1, [sl, #0x74]
        addeq   r1, ip, r0, lsl #2
        streq   r7, [r1, #0x828]
        beq     L65fa18
        lsl     sl, r1, #0x17
        lsr     sl, sl, #0x17
        add     r2, ip, sl, lsl #2
        ldr     r2, [r2, #0x10]
        cmp     r2, #0
        beq     L65fa10
L65f9fc:
        ldr     sl, [r2, #8]
        cmp     sl, r1
        ldrne   r2, [r2, #0xc]
        cmpne   r2, #0
        bne     L65f9fc
L65fa10:
        add     r1, ip, r0, lsl #2
        str     r2, [r1, #0x828]
L65fa18:
        mov     r2, #1
L65fa1c:
        add     r0, r0, #1
        cmp     r0, #0x20
        blt     L65f9ac
        cmp     r2, #0
        beq     L65fa3c
        ldr     r0, [r6]
        orr     r0, r0, #0x4000
        str     r0, [r6]
L65fa3c:
        mov     r0, #0
        mov     fp, #4
        mov     lr, sb
L65fa48:
        cmp     r5, #0
        beq     L65fa68
        ldr     r1, [r4]
        add     r3, fp, r0, lsl #2
        add     r2, r8, r0, lsl #2
        ldr     r3, [r1, r3]
        ldr     r2, [r1, r2]
        b       L65fa7c
L65fa68:
        ldr     r1, [ip, #8]
        add     r3, fp, r0, lsl #2
        add     r2, r8, r0, lsl #2
        ldr     r3, [r1, r3]
        ldr     r2, [r1, r2]
L65fa7c:
        add     sl, r6, r0, lsl #2
        ldr     r1, [sl, #0x5c]
        cmp     r1, r3
        ldreq   r1, [sl, #0x68]
        cmpeq   r1, r2
        beq     L65fb3c
        cmp     r3, #0
        addeq   r1, ip, r0, lsl #2
        str     r3, [sl, #0x5c]
        streq   r7, [r1, #0x810]
        beq     L65fadc
        lsl     r1, r3, #0x17
        lsr     r1, r1, #0x17
        add     r1, ip, r1, lsl #2
        ldr     r1, [r1, #0x10]
        cmp     r1, #0
        beq     L65fad4
L65fac0:
        ldr     sb, [r1, #8]
        cmp     sb, r3
        ldrne   r1, [r1, #0xc]
        cmpne   r1, #0
        bne     L65fac0
L65fad4:
        add     r3, ip, r0, lsl #2
        str     r1, [r3, #0x810]
L65fadc:
        cmp     r2, #0
        addeq   r1, ip, r0, lsl #2
        str     r2, [sl, #0x68]
        streq   r7, [r1, #0x81c]
        beq     L65fb24
        lsl     r3, r2, #0x17
        lsr     r3, r3, #0x17
        add     r1, ip, r3, lsl #2
        ldr     r1, [r1, #0x10]
        cmp     r1, #0
        beq     L65fb1c
L65fb08:
        ldr     r3, [r1, #8]
        cmp     r3, r2
        ldrne   r1, [r1, #0xc]
        cmpne   r1, #0
        bne     L65fb08
L65fb1c:
        add     r2, ip, r0, lsl #2
        str     r1, [r2, #0x81c]
L65fb24:
        add     r2, r0, #0xa
        asr     r1, r2, #5
        and     r2, r2, #0x1f
        ldr     r3, [r6, r1, lsl #2]
        orr     r2, r3, lr, lsl r2
        str     r2, [r6, r1, lsl #2]
L65fb3c:
        add     r0, r0, #1
        cmp     r0, #3
        blt     L65fa48
        str     r5, [r6, #0xf4]
        str     r4, [ip, #0x8a8]
        ldr     r0, [ip, #0xc]
        ldr     r4, L65fcf8
        cmp     r0, #0
        beq     L65f61c
        str     r0, [sp]
        mov     r1, sp
        mov     r0, #1
        bl      Fn_660bf8
        ldr     r0, [r4]
        str     r7, [r0, #0xc]
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65fb7c:
        add     r8, r6, fp, lsl #2
        sub     r8, r8, #0x19400
        sub     r8, r8, #0x3cc
        ldr     r1, [r8]
        cmp     r1, r5
        beq     L65f61c
        cmp     r5, #0
        beq     L65fcb4
        ldr     r4, [r0, #0x10]
        cmp     r4, #0
        beq     L65fbdc
L65fba8:
        ldr     r0, [r4, #8]
        cmp     r0, r5
        beq     L65fbc4
        ldr     r4, [r4, #0xc]
        cmp     r4, #0
        bne     L65fba8
        b       L65fbdc
L65fbc4:
        cmp     r4, #0
        beq     L65fbdc
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L65fc6c
        b       L65fcb4
L65fbdc:
        cmp     ip, #0
        mov     sb, r2
        moveq   r4, #0
        beq     L65fc04
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L65fc04:
        ldr     ip, [sb]
        cmp     ip, #0
        moveq   sb, #0
        beq     L65fc44
        mov     r3, #0x820
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        movs    sb, r0
        beq     L65fc44
        mov     r1, #0x820
        bl      Fn_1fddd8
        mvn     r0, #0
        str     r0, [sb, #0x81c]
        str     r5, [sb]
L65fc44:
        add     r2, r4, #4
        mov     r0, #3
        str     sb, [r4]
        stm     r2, {r0, r5, r7}
        mov     r1, r5
        mov     r0, r4
        bl      Fn_675d80
        nop
        nop
        b       L65fcb4
L65fc6c:
        cmp     ip, #0
        moveq   r7, #0
        beq     L65fca8
        mov     r3, #0x820
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        movs    r7, r0
        beq     L65fca8
        mov     r1, #0x820
        bl      Fn_1fddd8
        mvn     r1, #0
        str     r1, [r7, #0x81c]
        str     r5, [r7]
L65fca8:
        mov     r0, #3
        str     r0, [r4, #4]
        str     r7, [r4]
L65fcb4:
        ldr     r1, [sl]
        ldr     r2, L65fd0c
        ldr     r0, [r1, #0x8a8]
        add     r2, r2, fp, lsl #2
        cmp     r0, #0
        ldrne   r0, [r0]
        ldreq   r0, [r1, #8]
        str     r5, [r0, r2]
        add     r0, r1, fp, lsl #2
        sub     r0, r0, #0x19000
        sub     r0, r0, #0x18
        str     r5, [r8]
        str     r4, [r0]
        ldr     r0, [r6]
        orr     r0, r0, #0x4000
        str     r0, [r6]
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65fcf8:
        .word   0x008ab848
L65fcfc:
        .word   0x0000661f
L65fd00:
        .word   0x008aab18
L65fd04:
        .word   0x008ab81c
L65fd08:
        .word   0x00006616
L65fd0c:
        .word   0xfffe67dc
        .size   A_65f4d4, . - A_65f4d4

@ FUN_00660338
        .global A_660338
        .type   A_660338, %function
A_660338:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        movs    r6, r1
        mov     r8, r2
        mov     sl, r3
        ldr     r1, L660490
        ldr     sb, [r1]
        beq     L66048c
        ldr     r2, L660494
        uxth    r1, r0
        lsr     r5, r0, #0x10
        sub     r1, r1, #0x8800
        ldr     r0, [r2]
        subs    r1, r1, #0x92
        lsl     r5, r5, #0x10
        ldreq   r7, [r0, #0x808]
        beq     L660384
        cmp     r1, #1
        ldreq   r7, [r0, #0x80c]
        bne     L66048c
L660384:
        tst     r5, #0xff000000
        ldr     r4, [r7, #8]
        orreq   r5, r5, #0x1000000
        tst     r5, #0xff0000
        orreq   r5, r5, #0x10000
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L6603cc
        ldr     r0, [r4, #0xc]
        cmp     r0, r6
        ldreq   r0, [r4, #0x18]
        cmpeq   r0, r5
        beq     L6603f0
        mov     r0, r7
        bl      Fn_022750
        ldr     r0, [r4]
        cmp     r0, #0
        bne     L6603f0
L6603cc:
        uxth    r0, sl
        str     r0, [r4, #0x10]
        str     r5, [r4, #0x18]
        mov     r0, r7
        str     r6, [r4, #0xc]
        bl      Fn_677f7c
        cmp     r0, #0
        nop
        beq     L66048c
L6603f0:
        cmp     r8, #0
        beq     L660480
        add     r0, r5, #0xff000000
        subs    r0, r0, #0x10000
        cmpne   r0, #0x10000
        cmpne   r0, #0x20000
        mov     r1, r8
        str     r8, [r4, #8]
        beq     L660420
        cmp     r0, #0x1000000
        streq   r1, [r4]
        b       L66042c
L660420:
        ldr     r0, [r4, #4]
        ldr     r2, [r4, #0xc]
        bl      Fn_202b20
L66042c:
        add     r0, r5, #0xff000000
        subs    r0, r0, #0x20000
        cmpne   r0, #0x10000
        ldreq   r2, [r4, #0xc]
        ldrdeq  r0, r1, [r4]
        beq     L660460
        cmp     r0, #0x1000000
        addne   r0, r0, #0xff000000
        subsne  r0, r0, #0x10000
        bne     L660464
        add     r1, r4, #8
        ldr     r0, [r4]
        ldm     r1, {r1, r2}
L660460:
        bl      Fn_65b830
L660464:
        add     r0, r5, #0xff000000
        subs    r0, r0, #0x10000
        cmpne   r0, #0x1000000
        bne     L660480
        ldr     r0, [r4], #0xc
        ldr     r1, [r4]
        bl      Fn_028574
L660480:
        ldr     r0, [sb]
        orr     r0, r0, #2
        str     r0, [sb]
L66048c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L660490:
        .word   0x008ab81c
L660494:
        .word   0x008ab850
        .size   A_660338, . - A_660338

@ FUN_00660658
        .global A_660658
        .type   A_660658, %function
A_660658:
        ldr     r0, L660764
        push    {r4, r5, r6, lr}
        ldr     r5, L660768
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r4, #0
        beq     L66068c
        mov     r3, r5
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r4, r0
L66068c:
        mov     r1, r5
        mov     r0, r4
        bl      Fn_1fddd8
        ldr     r5, L66076c
        mov     r6, #0
        ldr     r0, [r5]
        ldr     ip, [r5, #8]
L6606a8:
        lsl     r1, r0, #0x17
        lsr     r1, r1, #0x17
        add     r1, ip, r1, lsl #2
        ldr     r3, [r1, #8]
        cmp     r3, #0
        beq     L6606f0
        ldr     r2, [r3, #4]
        cmp     r2, r0
        beq     L66075c
        bls     L660708
        lsl     r2, r0, #0x17
        str     r0, [r4, #4]
        lsr     r2, r2, #0x17
        add     r2, ip, r2, lsl #2
        ldr     r2, [r2, #8]
        str     r2, [r4]
L6606e8:
        str     r4, [r1, #8]
        b       L660750
L6606f0:
        lsl     r1, r0, #0x17
        str     r0, [r4, #4]
        lsr     r1, r1, #0x17
        str     r6, [r4]
        add     r1, ip, r1, lsl #2
        b       L6606e8
L660708:
        ldr     r1, [r3]
        cmp     r1, #0
        beq     L660744
L660714:
        ldr     r2, [r1, #4]
        cmp     r2, r0
        beq     L66075c
        bls     L660734
        str     r0, [r4, #4]
        str     r4, [r3]
        str     r1, [r4]
        b       L660750
L660734:
        mov     r3, r1
        ldr     r1, [r1]
        cmp     r1, #0
        bne     L660714
L660744:
        str     r4, [r3]
        str     r0, [r4, #4]
        str     r6, [r4]
L660750:
        add     r1, r0, #1
        str     r1, [r5]
        pop     {r4, r5, r6, pc}
L66075c:
        add     r0, r0, #1
        b       L6606a8
L660764:
        .word   0x008aab18
L660768:
        .word   0x00000f1c
L66076c:
        .word   0x008ab508
        .size   A_660658, . - A_660658

@ FUN_00660770
        .global A_660770
        .type   A_660770, %function
A_660770:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L660888
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r3, #0
        beq     L6607a4
        mov     r3, #0x1c
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     r3, r0
L6607a4:
        mov     r6, #0
        str     r6, [r3]
        str     r6, [r3, #4]
        str     r6, [r3, #8]
        ldr     r5, L66088c
        str     r6, [r3, #0x10]
        str     r6, [r3, #0x14]
        str     r4, [r3, #0xc]
        str     r6, [r3, #0x18]
        ldmib   r5, {r0, r4}
L6607cc:
        lsl     r1, r0, #0x17
        lsr     r1, r1, #0x17
        add     r1, r4, r1, lsl #2
        ldr     ip, [r1, #0x808]!
        cmp     ip, #0
        beq     L660814
        ldr     r2, [ip, #8]
        cmp     r2, r0
        beq     L660880
        bls     L66082c
        lsl     r2, r0, #0x17
        str     r0, [r3, #8]
        lsr     r2, r2, #0x17
        add     r2, r4, r2, lsl #2
        ldr     r2, [r2, #0x808]
        str     r2, [r3, #0x18]
        str     r3, [r1]
        b       L660874
L660814:
        lsl     r1, r0, #0x17
        str     r0, [r3, #8]
        lsr     r1, r1, #0x17
        add     r1, r4, r1, lsl #2
        str     r3, [r1, #0x808]
        b       L660874
L66082c:
        ldr     r1, [ip, #0x18]
        cmp     r1, #0
        beq     L660868
L660838:
        ldr     r2, [r1, #8]
        cmp     r2, r0
        beq     L660880
        bls     L660858
        str     r0, [r3, #8]
        str     r3, [ip, #0x18]
        str     r1, [r3, #0x18]
        b       L660874
L660858:
        mov     ip, r1
        ldr     r1, [r1, #0x18]
        cmp     r1, #0
        bne     L660838
L660868:
        str     r3, [ip, #0x18]
        str     r0, [r3, #8]!
        str     r6, [r3, #0x10]
L660874:
        add     r1, r0, #1
        str     r1, [r5, #4]
        pop     {r4, r5, r6, pc}
L660880:
        add     r0, r0, #1
        b       L6607cc
L660888:
        .word   0x008aab18
L66088c:
        .word   0x008ab508
        .size   A_660770, . - A_660770

@ FUN_00660890
        .global A_660890
        .type   A_660890, %function
A_660890:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, #0
        mov     r7, r1
        subs    sb, r0, #0
        ldr     r0, L660a90
        ldr     r5, [r0]
        ble     L660a8c
        ldr     fp, L660a94
        ldr     sl, L660a98
        mov     r8, #0
L6608b8:
        ldr     r0, [r7, r6, lsl #2]
        cmp     r0, #0
        beq     L660a80
        ldr     r1, [fp]
        lsl     r3, r0, #0x17
        mov     r2, #0
        lsr     r3, r3, #0x17
        ldr     r4, [r1, r3, lsl #2]
        cmp     r4, #0
        beq     L660a80
L6608e0:
        ldr     r3, [r4]
        cmp     r0, r3
        bls     L660900
        mov     r2, r4
        ldr     r4, [r4, #0xc]
        cmp     r4, #0
        bne     L6608e0
        b       L660a80
L660900:
        cmp     r4, #0
        beq     L660a80
        cmp     r3, r0
        bne     L660a80
        ldr     r3, [r5, #0x5e0]
        cmp     r3, r0
        streq   r0, [r1, #0x804]
        beq     L660a80
        ldr     r3, [r5, #0x5dc]
        cmp     r3, r0
        bne     L660940
        ldr     r0, [r5]
        orr     r0, r0, #2
        str     r0, [r5]
        str     r8, [r5, #0x5dc]
        str     r8, [r1, #0x808]
L660940:
        ldr     r0, [r7, r6, lsl #2]
        ldr     r3, [r5, #0x5d8]
        cmp     r3, r0
        bne     L660964
        ldr     r0, [r5]
        orr     r0, r0, #2
        str     r0, [r5]
        str     r8, [r5, #0x5d8]
        str     r8, [r1, #0x80c]
L660964:
        mov     r0, #0
L660968:
        ldr     lr, [r7, r6, lsl #2]
        add     r3, r0, r0, lsl #1
        add     r3, r5, r3, lsl #3
        ldr     ip, [r3, #0x468]
        cmp     ip, lr
        addeq   ip, r1, r0, lsl #2
        streq   r8, [ip, #0x810]
        ldr     ip, [r7, r6, lsl #2]
        ldr     r3, [r3, #0x480]
        cmp     r3, ip
        addeq   r3, r1, r0, lsl #2
        add     r0, r0, #2
        streq   r8, [r3, #0x814]
        cmp     r0, #0x10
        blt     L660968
        ldr     r3, [fp, #4]
        ldr     r0, [r7, r6, lsl #2]
        cmp     r0, r3
        strlo   r0, [fp, #4]
        cmp     r2, #0
        ldrne   r0, [r4, #0xc]
        strne   r0, [r2, #0xc]
        beq     L6609dc
L6609c4:
        ldr     r0, [r4, #4]
        cmp     r0, #0
        beq     L6609f4
        cmp     r0, #1
        bne     L660a80
        b       L660a38
L6609dc:
        lsl     r0, r0, #0x17
        lsr     r0, r0, #0x17
        ldr     r2, [r1, r0, lsl #2]
        ldr     r2, [r2, #0xc]
        str     r2, [r1, r0, lsl #2]
        b       L6609c4
L6609f4:
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L660a28
        mov     r0, r4
        bl      Fn_022750
        ldr     ip, [sl]
        cmp     ip, #0
        beq     L660a80
        ldr     r3, [r4, #8]
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L660a28:
        ldr     ip, [sl]
        cmp     ip, #0
        beq     L660a80
        b       L660a6c
L660a38:
        ldr     r3, [r4, #8]
        cmp     r3, #0
        beq     L660a60
        ldr     ip, [sl]
        cmp     ip, #0
        beq     L660a80
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L660a60:
        ldr     ip, [sl]
        cmp     ip, #0
        beq     L660a80
L660a6c:
        mov     r3, r4
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L660a80:
        add     r6, r6, #1
        cmp     r6, sb
        blt     L6608b8
L660a8c:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L660a90:
        .word   0x008ab81c
L660a94:
        .word   0x008ab850
L660a98:
        .word   0x008aab1c
        .size   A_660890, . - A_660890

@ FUN_00660a9c
        .global A_660a9c
        .type   A_660a9c, %function
A_660a9c:
        cmp     r0, #0
        beq     L660b00
        ldr     r1, L660b04
        lsl     r2, r0, #0x17
        lsr     r2, r2, #0x17
        ldr     r3, [r1, #8]
        add     r1, r3, r2, lsl #2
        ldr     r1, [r1, #8]
        cmp     r1, #0
        beq     L660ad8
L660ac4:
        ldr     r2, [r1, #4]
        cmp     r2, r0
        ldrne   r1, [r1]
        cmpne   r1, #0
        bne     L660ac4
L660ad8:
        ldr     r1, [r3]
        cmp     r1, #0
        beq     L660af8
        ldr     r2, [r1, #4]
        cmp     r2, r0
        moveq   r0, #1
        strbeq  r0, [r1, #0x15]
        beq     L660b00
L660af8:
        nop
        b       Fn_66b968
L660b00:
        bx      lr
L660b04:
        .word   0x008ab508
        .size   A_660a9c, . - A_660a9c

@ FUN_00660b08
        .global A_660b08
        .type   A_660b08, %function
A_660b08:
        ldr     r3, L660bf0
        push    {r4, r5, r6, lr}
        lsl     r1, r0, #0x17
        ldr     r2, [r3, #8]
        lsr     r1, r1, #0x17
        add     ip, r2, r1, lsl #2
        ldr     r1, [ip, #0x808]!
        movs    r4, r1
        beq     L660b40
L660b2c:
        ldr     r2, [r1, #8]
        cmp     r2, r0
        ldrne   r1, [r1, #0x18]
        cmpne   r1, #0
        bne     L660b2c
L660b40:
        ldr     r2, [r1, #0x10]
        cmp     r2, #0
        movne   r0, #1
        strbne  r0, [r1, #0x14]
        bne     L660bec
        movs    r5, r4
        mov     r1, #0
        beq     L660be0
L660b60:
        ldr     r2, [r4, #8]
        cmp     r2, r0
        beq     L660b7c
        mov     r1, r4
        ldr     r4, [r4, #0x18]
        cmp     r4, #0
        bne     L660b60
L660b7c:
        cmp     r1, #0
        ldrne   r2, [r4, #0x18]
        strne   r2, [r1, #0x18]
        beq     L660be0
L660b8c:
        ldr     r1, [r3, #4]
        cmp     r1, r0
        strhi   r0, [r3, #4]
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L660bb8
        ldr     r1, [r0, #0x18]
        subs    r1, r1, #1
        str     r1, [r0, #0x18]
        ldr     r0, [r4]
        bleq    Fn_66b7b4
L660bb8:
        ldr     r0, L660bf4
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L660bec
        mov     r3, r4
        pop     {r4, r5, r6, lr}
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        bx      ip
L660be0:
        ldr     r1, [r5, #0x18]
        str     r1, [ip]
        b       L660b8c
L660bec:
        pop     {r4, r5, r6, pc}
L660bf0:
        .word   0x008ab508
L660bf4:
        .word   0x008aab1c
        .size   A_660b08, . - A_660b08

@ FUN_00660bf8
        .global A_660bf8
        .type   A_660bf8, %function
A_660bf8:
        push    {r0, r1, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, #0
        mov     r7, r1
        ldr     r0, [sp]
        cmp     r0, #0
        ldr     r0, L661144
        ldr     r4, [r0]
        ble     L66111c
L660c18:
        ldr     r1, [r7, r6, lsl #2]
        cmp     r1, #0
        beq     L66110c
        ldr     r0, L661148
        lsl     r2, r1, #0x17
        mov     r8, #0
        lsr     r2, r2, #0x17
        ldr     r0, [r0]
        add     r2, r0, r2, lsl #2
        ldr     r5, [r2, #0x10]
        cmp     r5, #0
        beq     L66110c
L660c48:
        ldr     r2, [r5, #8]
        cmp     r1, r2
        bls     L660c68
        mov     r8, r5
        ldr     r5, [r5, #0xc]
        cmp     r5, #0
        bne     L660c48
        b       L66110c
L660c68:
        cmp     r5, #0
        beq     L66110c
        cmp     r2, r1
        bne     L66110c
        ldr     r3, [r5]
        cmp     r3, #0
        beq     L6610c4
        ldr     r2, [r5, #4]
        cmp     r2, #0
        beq     L660cac
        cmp     r2, #1
        beq     L660db0
        cmp     r2, #2
        beq     L660ecc
        cmp     r2, #3
        bne     L6610c4
        b       L660f08
L660cac:
        ldr     r2, [r4, #0x5c]
        cmp     r2, r1
        bne     L660cf0
        mov     r1, #0
        str     r1, [r4, #0x5c]
        ldr     r2, [r0, #0x8a8]
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     r1, [r2, #4]
        str     r1, [r0, #0x810]
        ldrb    r1, [r4, #0x104]
        cmp     r1, #0
        beq     L660cf0
        ldr     r1, [r4]
        orr     r1, r1, #0x400
        str     r1, [r4]
L660cf0:
        ldr     r1, [r7, r6, lsl #2]
        ldr     r2, [r4, #0x60]
        cmp     r2, r1
        bne     L660d38
        mov     r1, #0
        str     r1, [r4, #0x60]
        ldr     r2, [r0, #0x8a8]
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     r1, [r2, #8]
        str     r1, [r0, #0x814]
        ldrb    r1, [r4, #0x105]
        cmp     r1, #0
        beq     L660d38
        ldr     r1, [r4]
        orr     r1, r1, #0x800
        str     r1, [r4]
L660d38:
        ldr     r1, [r7, r6, lsl #2]
        ldr     r2, [r4, #0x64]
        cmp     r2, r1
        bne     L660d80
        mov     r1, #0
        str     r1, [r4, #0x64]
        ldr     r2, [r0, #0x8a8]
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     r1, [r2, #0xc]
        str     r1, [r0, #0x818]
        ldrb    r0, [r4, #0x106]
        cmp     r0, #0
        beq     L660d80
        ldr     r0, [r4]
        orr     r0, r0, #0x1000
        str     r0, [r4]
L660d80:
        ldr     sb, [r5]
        add     r0, sb, #0x34
        bl      Fn_021ce0
        ldr     r0, [sb, #0x2c]
        add     r1, sb, #0x34
        bl      Fn_0225b8
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        movne   r3, sb
        beq     L660efc
        b       L660eec
L660db0:
        ldr     r2, [r4, #0x68]
        cmp     r2, r1
        bne     L660df4
        mov     r1, #0
        str     r1, [r4, #0x68]
        ldr     r2, [r0, #0x8a8]
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     r1, [r2, #0x10]
        str     r1, [r0, #0x81c]
        ldrb    r1, [r4, #0x107]
        cmp     r1, #0
        beq     L660df4
        ldr     r1, [r4]
        orr     r1, r1, #0x400
        str     r1, [r4]
L660df4:
        ldr     r1, [r7, r6, lsl #2]
        ldr     r2, [r4, #0x6c]
        cmp     r2, r1
        bne     L660e3c
        mov     r1, #0
        str     r1, [r4, #0x6c]
        ldr     r2, [r0, #0x8a8]
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     r1, [r2, #0x14]
        str     r1, [r0, #0x820]
        ldrb    r1, [r4, #0x108]
        cmp     r1, #0
        beq     L660e3c
        ldr     r1, [r4]
        orr     r1, r1, #0x800
        str     r1, [r4]
L660e3c:
        ldr     r1, [r7, r6, lsl #2]
        ldr     r2, [r4, #0x70]
        cmp     r2, r1
        bne     L660e84
        mov     r1, #0
        str     r1, [r4, #0x70]
        ldr     r2, [r0, #0x8a8]
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     r1, [r2, #0x18]
        str     r1, [r0, #0x824]
        ldrb    r0, [r4, #0x109]
        cmp     r0, #0
        beq     L660e84
        ldr     r0, [r4]
        orr     r0, r0, #0x1000
        str     r0, [r4]
L660e84:
        ldr     sl, [r5]
        mov     sb, #0
L660e8c:
        add     r0, sb, sb, lsl #4
        add     fp, sl, r0, lsl #2
        add     r0, fp, #0x34
        bl      Fn_021ce0
        ldr     r0, [sl, #0x2c]
        add     r1, fp, #0x34
        bl      Fn_0225b8
        add     sb, sb, #1
        cmp     sb, #6
        blt     L660e8c
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        movne   r3, sl
        beq     L660efc
        b       L660eec
L660ecc:
        ldr     r2, [r4, #0xf4]
        cmp     r2, r1
        streq   r1, [r0, #0xc]
        beq     L66110c
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L660efc
L660eec:
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L660efc:
        mov     r0, #0
        str     r0, [r5]
        b       L6610c4
L660f08:
        mov     r1, #0
        mov     r3, #0x1c
        mov     sb, r1
L660f14:
        add     r2, r4, r1, lsl #2
        ldr     ip, [r7, r6, lsl #2]
        ldr     sl, [r2, #0x74]
        cmp     sl, ip
        bne     L660f4c
        str     sb, [r2, #0x74]
        ldr     r2, [r0, #0x8a8]
        add     ip, r3, r1, lsl #2
        cmp     r2, #0
        ldrne   r2, [r2]
        ldreq   r2, [r0, #8]
        str     sb, [r2, ip]
        add     r2, r0, r1, lsl #2
        str     sb, [r2, #0x828]
L660f4c:
        add     r1, r1, #1
        cmp     r1, #0x20
        blt     L660f14
        mov     r0, #0
L660f5c:
        ldr     r2, [r7, r6, lsl #2]
        add     r1, r4, r0, lsl #2
        ldr     r3, [r1, #0x10c]
        cmp     r3, r2
        bne     L660f84
        str     sb, [r1, #0x10c]
        str     sb, [r1, #0x190]
        ldr     r1, [r4]
        orr     r1, r1, #0x4000
        str     r1, [r4]
L660f84:
        add     r0, r0, #1
        cmp     r0, #0x21
        blt     L660f5c
        ldr     sl, [r5]
        ldr     r3, [sl, #0x804]
        cmp     r3, #0
        beq     L660fc0
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L660fc0
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L660fc0:
        ldr     r3, [sl, #0x808]
        cmp     r3, #0
        beq     L660fec
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L660fec
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L660fec:
        ldr     r3, [sl, #0x80c]
        cmp     r3, #0
        beq     L661018
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L661018
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L661018:
        ldr     r3, [sl, #0x810]
        cmp     r3, #0
        beq     L661044
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L661044
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L661044:
        ldr     r3, [sl, #0x814]
        cmp     r3, #0
        beq     L661070
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L661070
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L661070:
        ldr     r3, [sl, #0x818]
        cmp     r3, #0
        beq     L66109c
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L6610c0
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66109c:
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L6610c0
        mov     r3, sl
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L6610c0:
        str     sb, [r5]
L6610c4:
        ldr     r1, L661148
        ldr     r0, [r7, r6, lsl #2]
        ldr     r2, [r1, #4]
        cmp     r0, r2
        strlo   r0, [r1, #4]
        cmp     r8, #0
        ldrne   r0, [r5, #0xc]
        strne   r0, [r8, #0xc]
        beq     L661124
L6610e8:
        ldr     r0, L66114c
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L66110c
        mov     r3, r5
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66110c:
        ldr     r0, [sp]
        add     r6, r6, #1
        cmp     r6, r0
        blt     L660c18
L66111c:
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L661124:
        lsl     r0, r0, #0x17
        ldr     r1, [r1]
        lsr     r0, r0, #0x17
        add     r0, r1, r0, lsl #2
        ldr     r1, [r0, #0x10]
        ldr     r1, [r1, #0xc]
        str     r1, [r0, #0x10]
        b       L6610e8
L661144:
        .word   0x008ab81c
L661148:
        .word   0x008ab848
L66114c:
        .word   0x008aab1c
        .size   A_660bf8, . - A_660bf8

@ FUN_00661150
        .global A_661150
        .type   A_661150, %function
A_661150:
        ldr     r3, L6612e4
        push    {r4, r5, r6, r7, r8, lr}
        lsl     r2, r0, #0x17
        ldr     r5, [r3, #8]
        lsr     r2, r2, #0x17
        add     r2, r5, r2, lsl #2
        ldr     r2, [r2, #8]
        cmp     r2, #0
        beq     L661188
L661174:
        ldr     ip, [r2, #4]
        cmp     ip, r0
        ldrne   r2, [r2]
        cmpne   r2, #0
        bne     L661174
L661188:
        mov     r0, #1
        cmn     r1, #1
        mov     r4, #0
        strb    r0, [r2, #0x14]
        streq   r4, [r2, #8]
        beq     L661208
        lsl     r0, r1, #0x17
        lsr     r0, r0, #0x17
        add     ip, r5, r0, lsl #2
        mov     r5, ip
        ldr     r0, [ip, #0x808]!
        cmp     r0, #0
        beq     L6611d0
L6611bc:
        ldr     r6, [r0, #8]
        cmp     r6, r1
        ldrne   r0, [r0, #0x18]
        cmpne   r0, #0
        bne     L6611bc
L6611d0:
        ldr     r6, [r0, #0xc]
        sub     r7, r6, #0x8b00
        subs    r7, r7, #0x31
        bne     L66120c
        ldr     r6, [r0, #0x10]
        sub     r6, r6, #1
        str     r6, [r0, #0x10]
        str     r4, [r2, #0xc]
        ldr     r2, [r0, #0x10]
        cmp     r2, #0
        bne     L661208
        ldrb    r0, [r0, #0x14]
        cmp     r0, #0
        bne     L661240
L661208:
        pop     {r4, r5, r6, r7, r8, pc}
L66120c:
        sub     r7, r6, #0x6000
        subs    r7, r7, #1
        bne     L661208
        ldr     r6, [r0, #0x10]
        sub     r6, r6, #1
        str     r6, [r0, #0x10]
        str     r4, [r2, #0x10]
        ldr     r2, [r0, #0x10]
        cmp     r2, #0
        bne     L661208
        ldrb    r0, [r0, #0x14]
        cmp     r0, #0
        beq     L661208
L661240:
        cmp     r1, #0
        beq     L661208
        ldr     r4, [r5, #0x808]
        mov     r0, #0
        movs    r5, r4
        beq     L6612d8
L661258:
        ldr     r2, [r4, #8]
        cmp     r2, r1
        beq     L661274
        mov     r0, r4
        ldr     r4, [r4, #0x18]
        cmp     r4, #0
        bne     L661258
L661274:
        cmp     r0, #0
        ldrne   r2, [r4, #0x18]
        strne   r2, [r0, #0x18]
        beq     L6612d8
L661284:
        ldr     r0, [r3, #4]
        cmp     r0, r1
        strhi   r1, [r3, #4]
        ldr     r1, [r4]
        cmp     r1, #0
        beq     L6612b0
        ldr     r0, [r1, #0x18]
        subs    r0, r0, #1
        str     r0, [r1, #0x18]
        ldr     r0, [r4]
        bleq    Fn_66b7b4
L6612b0:
        ldr     r0, L6612e8
        ldr     ip, [r0]
        cmp     ip, #0
        beq     L661208
        mov     r3, r4
        pop     {r4, r5, r6, r7, r8, lr}
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        bx      ip
L6612d8:
        ldr     r0, [r5, #0x18]
        str     r0, [ip]
        b       L661284
L6612e4:
        .word   0x008ab508
L6612e8:
        .word   0x008aab1c
        .size   A_661150, . - A_661150

@ FUN_006612ec
        .global A_6612ec
        .type   A_6612ec, %function
A_6612ec:
        add     r1, r0, r0, lsl #1
        ldr     r0, L661320
        ldr     r0, [r0]
        add     r1, r0, r1, lsl #3
        ldrb    r2, [r1, #0x46d]
        cmp     r2, #0
        beq     L66131c
        mov     r2, #0
        strb    r2, [r1, #0x46d]
        ldr     r1, [r0]
        orr     r1, r1, #0x40
        str     r1, [r0]
L66131c:
        bx      lr
L661320:
        .word   0x008ab81c
        .size   A_6612ec, . - A_6612ec

@ FUN_006617b0
        .global A_6617b0
        .type   A_6617b0, %function
A_6617b0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        cmp     r0, #4
        sub     sp, sp, #4
        mov     r8, r0
        cmpne   r8, #5
        cmpne   r8, #6
        ldr     r0, L661cc8
        ldr     r4, [r0]
        beq     L6617ec
        sub     r0, r8, #0x6000
        subs    r0, r0, #0x10
        bne     L661cc0
        ldr     r0, [r4]
        orr     r0, r0, #0x80000
        str     r0, [r4]
L6617ec:
        sub     r0, r2, #0x1400
        subs    r0, r0, #1
        moveq   sl, #0
        beq     L661808
        cmp     r0, #2
        moveq   sl, #1
        bne     L661cc0
L661808:
        ldr     r1, [r4, #0x10]
        mov     r0, #1
        str     r1, [r4, #0x14]
        str     r8, [r4, #0x10]
        strb    r0, [r4, #0x18]
        bl      Fn_65ba64
        ldrb    r0, [r4, #0x3c]
        cmp     r0, #1
        bne     L66183c
        ldr     r0, [r4, #0x38]
        sub     r1, r0, #0x400
        subs    r1, r1, #8
        beq     L661cc0
L66183c:
        ldr     r0, [sp, #8]
        cmp     r0, #0
        beq     L661cc0
        add     r0, r4, #0x6a0
        str     r0, [sp]
        bl      Fn_648e40
        ldr     sb, L661ccc
        ldr     r6, L661cd0
        ldr     r5, L661cd4
        cmp     r8, #4
        mov     fp, #0x300
        mov     r2, #0x100
        mov     r7, #0
        beq     L661914
        cmp     r8, #5
        beq     L661994
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r8, #6
        beq     L6619b4
        cmp     r0, r1
        bls     L6618a4
L661894:
        str     sb, [r1, #4]
        add     r2, r1, #8
        str     fp, [r1]
        str     r2, [r5]
L6618a4:
        ldr     r1, [r5]
        ldr     r0, [r6]
        cmp     r1, r0
        bhs     L6618c8
        ldr     r3, L661cd8
        mov     r2, #1
        add     ip, r1, #8
        strd    r2, r3, [r1]
        str     ip, [r5]
L6618c8:
        ldr     r0, [r4, #0x770]
        ands    fp, r0, #7
        beq     L6618f8
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r0, r1
        bls     L6618f8
        ldr     r2, L661cdc
        add     r3, r1, #8
        str     r2, [r1, #4]
        str     fp, [r1]
        str     r3, [r5]
L6618f8:
        ldrb    r0, [r4, #0x81c]
        cmp     r0, #0
        beq     L661b30
        ldr     r0, [r4, #8]
        tst     r0, #0x200
        bne     L661a10
        b       L6619d0
L661914:
        ldrb    r0, [r4, #0x1a]
        cmp     r0, #0
        beq     L661974
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661940
        ldr     r3, L661ce0
        add     ip, r0, #8
        strd    r2, r3, [r0]
        str     ip, [r5]
L661940:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661960
        ldr     r3, L661ce4
        add     ip, r0, #8
        strd    r2, r3, [r0]
        str     ip, [r5]
L661960:
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L6618a4
        b       L661894
L661974:
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L6618a4
        stm     r1, {r7, sb}
        add     r2, r1, #8
        str     r2, [r5]
        b       L6618a4
L661994:
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L6618a4
        stm     r1, {r2, sb}
        add     r3, r1, #8
        str     r3, [r5]
        b       L6618a4
L6619b4:
        cmp     r1, r0
        bhs     L6618a4
        mov     r2, #0x200
        stm     r1, {r2, sb}
        add     r3, r1, #8
        str     r3, [r5]
        b       L6618a4
L6619d0:
        ldr     r1, [r6]
        ldr     r0, [r5]
        cmp     r0, r1
        bhs     L661a10
        ldr     r1, [sp]
        ldr     r3, L661ce8
        add     ip, r0, #8
        ldr     r2, [r1], #0x44
        ldr     lr, [r1]
        sub     lr, r2, lr
        ldr     r2, [sp, #0x10]
        add     r2, r2, lr
        bic     r2, r2, #0xf0000000
        orr     r2, r2, sl, lsl #31
        strd    r2, r3, [r0]
        str     ip, [r5]
L661a10:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661a34
        ldr     r3, L661cec
        ldr     r2, [sp, #8]
        add     ip, r0, #8
        strd    r2, r3, [r0]
        str     ip, [r5]
L661a34:
        ldr     r1, [r6]
        ldr     r0, [r5]
        ldr     r2, L661cf0
        cmp     r0, r1
        bhs     L661a58
        str     r2, [r0, #4]
        add     r3, r0, #8
        str     r7, [r0]
        str     r3, [r5]
L661a58:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661a7c
        ldr     ip, L661cf4
        mov     r3, #1
        add     sl, r0, #8
        stm     r0, {r3, ip}
        str     sl, [r5]
L661a7c:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661aa0
        mov     r3, #1
        str     r2, [r0, #4]
        add     ip, r0, #8
        str     r3, [r0]
        str     ip, [r5]
L661aa0:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661ac4
        ldr     r3, L661cf8
        mov     r2, #1
        add     ip, r0, #8
        strd    r2, r3, [r0]
        str     ip, [r5]
L661ac4:
        ldr     r1, [r6]
        ldr     r0, [r5]
        ldr     r2, L661cfc
        cmp     r0, r1
        bhs     L661ae8
        str     r2, [r0, #4]
        add     r3, r0, #8
        str     r7, [r0]
        str     r3, [r5]
L661ae8:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661b08
        str     r2, [r0, #4]
        add     r3, r0, #8
        str     r7, [r0]
        str     r3, [r5]
L661b08:
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L661bbc
        ldr     r3, L661d00
        mov     r2, #1
        add     ip, r1, #8
        strd    r2, r3, [r1]
        str     ip, [r5]
        b       L661bbc
L661b30:
        cmp     r8, #4
        bne     L661ba8
        ldrb    r0, [r4, #0x1a]
        cmp     r0, #0
        beq     L661ba8
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r1, r0
        bls     L661b68
        ldr     r2, L661ce0
        add     r3, r0, #8
        str     r2, [r0, #4]
        str     r7, [r0]
        str     r3, [r5]
L661b68:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661b8c
        ldr     r2, L661ce4
        add     r3, r0, #8
        str     r2, [r0, #4]
        str     r7, [r0]
        str     r3, [r5]
L661b8c:
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L661ba8
        stm     r1, {r7, sb}
        add     r2, r1, #8
        str     r2, [r5]
L661ba8:
        ldr     r0, [sp, #8]
        ldr     r2, [sp, #0x10]
        mov     r3, #1
        add     r1, sl, #1
        bl      Fn_65bec4
L661bbc:
        cmp     r8, #4
        bne     L661c34
        ldrb    r0, [r4, #0x1a]
        cmp     r0, #0
        beq     L661c34
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661bf4
        ldr     r2, L661ce0
        add     r3, r0, #8
        str     r2, [r0, #4]
        str     r7, [r0]
        str     r3, [r5]
L661bf4:
        ldr     r0, [r5]
        ldr     r1, [r6]
        cmp     r0, r1
        bhs     L661c18
        ldr     r2, L661ce4
        add     r3, r0, #8
        str     r2, [r0, #4]
        str     r7, [r0]
        str     r3, [r5]
L661c18:
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L661c34
        stm     r1, {r7, sb}
        add     r2, r1, #8
        str     r2, [r5]
L661c34:
        cmp     fp, #0
        beq     L661c60
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r0, r1
        bls     L661c60
        ldr     r2, L661cdc
        add     r3, r1, #8
        str     r2, [r1, #4]
        str     r7, [r1]
        str     r3, [r5]
L661c60:
        ldr     r0, [r6]
        ldr     r1, [r5]
        ldr     r2, L661d04
        cmp     r1, r0
        bhs     L661c84
        ldr     r3, L661d08
        add     ip, r1, #8
        strd    r2, r3, [r1]
        str     ip, [r5]
L661c84:
        sub     r0, r8, #0x6000
        subs    r0, r0, #0x10
        bne     L661cb0
        ldr     r0, [r6]
        ldr     r1, [r5]
        cmp     r1, r0
        bhs     L661cb0
        ldr     r3, L661d0c
        add     ip, r1, #8
        strd    r2, r3, [r1]
        str     ip, [r5]
L661cb0:
        ldr     r0, [r4, #4]
        strb    r7, [r4, #0x18]
        cmp     r0, #0
        strne   r7, [r4, #4]
L661cc0:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L661cc8:
        .word   0x008ab81c
L661ccc:
        .word   0x0002025e
L661cd0:
        .word   0x008ab4fc
L661cd4:
        .word   0x008ab4f8
L661cd8:
        .word   0x000f025f
L661cdc:
        .word   0x00010080
L661ce0:
        .word   0x00020229
L661ce4:
        .word   0x00020253
L661ce8:
        .word   0x000f0227
L661cec:
        .word   0x000f0228
L661cf0:
        .word   0x00010245
L661cf4:
        .word   0x000f022f
L661cf8:
        .word   0x000f0231
L661cfc:
        .word   0x0008025e
L661d00:
        .word   0x000f0111
L661d04:
        .word   0x7fff0000
L661d08:
        .word   0x000c02ba
L661d0c:
        .word   0x000c028a
        .size   A_6617b0, . - A_6617b0

@ FUN_00661d18
        .global A_661d18
        .type   A_661d18, %function
A_661d18:
        add     r1, r0, r0, lsl #1
        ldr     r0, L661d4c
        ldr     r0, [r0]
        add     r1, r0, r1, lsl #3
        ldrb    r2, [r1, #0x46d]
        cmp     r2, #0
        bne     L661d48
        mov     r2, #1
        strb    r2, [r1, #0x46d]
        ldr     r1, [r0]
        orr     r1, r1, #0x40
        str     r1, [r0]
L661d48:
        bx      lr
L661d4c:
        .word   0x008ab81c
        .size   A_661d18, . - A_661d18

@ FUN_00661d50
        .global A_661d50
        .type   A_661d50, %function
A_661d50:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r1
        subs    r8, r0, #0
        mov     r4, #0
        ble     L661e6c
        ldr     sb, L661e78
        ldr     r6, L661e7c
        mov     r7, #0
L661d70:
        ldr     ip, [sb]
        cmp     ip, #0
        moveq   r0, #0
        beq     L661d94
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L661d94:
        str     r7, [r0]
        str     r7, [r0, #4]
        str     r7, [r0, #8]
        str     r7, [r0, #0xc]
        ldr     r2, [r6, #4]
        ldr     r3, [r6]
L661dac:
        lsl     r1, r2, #0x17
        lsr     r1, r1, #0x17
        ldr     sl, [r3, r1, lsl #2]
        cmp     sl, #0
        beq     L661df0
        ldr     ip, [sl]
        cmp     ip, r2
        beq     L661e70
        bls     L661e08
        lsl     ip, r2, #0x17
        str     r2, [r5, r4, lsl #2]
        lsr     ip, ip, #0x17
        str     r2, [r0]
        ldr     ip, [r3, ip, lsl #2]
        str     ip, [r0, #0xc]
L661de8:
        str     r0, [r3, r1, lsl #2]
        b       L661e58
L661df0:
        lsl     r1, r2, #0x17
        str     r2, [r5, r4, lsl #2]
        str     r2, [r0]
        lsr     r1, r1, #0x17
        str     r7, [r0, #0xc]
        b       L661de8
L661e08:
        ldr     r1, [sl, #0xc]
        cmp     r1, #0
        beq     L661e48
L661e14:
        ldr     ip, [r1]
        cmp     ip, r2
        beq     L661e70
        bls     L661e38
        str     r2, [r5, r4, lsl #2]
        str     r2, [r0]
        str     r0, [sl, #0xc]
        str     r1, [r0, #0xc]
        b       L661e58
L661e38:
        mov     sl, r1
        ldr     r1, [r1, #0xc]
        cmp     r1, #0
        bne     L661e14
L661e48:
        str     r0, [sl, #0xc]
        str     r2, [r0], #0xc
        str     r7, [r0]
        str     r2, [r5, r4, lsl #2]
L661e58:
        add     r0, r2, #1
        add     r4, r4, #1
        cmp     r4, r8
        str     r0, [r6, #4]
        blt     L661d70
L661e6c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L661e70:
        add     r2, r2, #1
        b       L661dac
L661e78:
        .word   0x008aab18
L661e7c:
        .word   0x008ab850
        .size   A_661d50, . - A_661d50

@ FUN_00661e80
        .global A_661e80
        .type   A_661e80, %function
A_661e80:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r1
        subs    r8, r0, #0
        mov     r4, #0
        ble     L661fa8
        ldr     sb, L661fb4
        ldr     r6, L661fb8
        mov     r7, #0
L661ea0:
        ldr     ip, [sb]
        cmp     ip, #0
        beq     L661ec4
        mov     r3, #0x10
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        mov     ip, r0
L661ec4:
        str     r7, [ip]
        str     r7, [ip, #4]
        str     r7, [ip, #8]
        str     r7, [ip, #0xc]
        ldr     r2, [r6, #4]
        ldr     sl, [r6]
L661edc:
        lsl     r0, r2, #0x17
        lsr     r0, r0, #0x17
        add     r0, sl, r0, lsl #2
        ldr     r1, [r0, #0x10]
        cmp     r1, #0
        beq     L661f28
        ldr     r3, [r1, #8]
        cmp     r3, r2
        beq     L661fac
        bls     L661f44
        lsl     r1, r2, #0x17
        str     r2, [r5, r4, lsl #2]
        lsr     r1, r1, #0x17
        str     r2, [ip, #8]
        add     r1, sl, r1, lsl #2
        ldr     r1, [r1, #0x10]
        str     r1, [ip, #0xc]
L661f20:
        str     ip, [r0, #0x10]
        b       L661f94
L661f28:
        lsl     r0, r2, #0x17
        add     r1, ip, #8
        lsr     r0, r0, #0x17
        str     r2, [r5, r4, lsl #2]
        add     r0, sl, r0, lsl #2
        stm     r1, {r2, r7}
        b       L661f20
L661f44:
        ldr     r3, [r1, #0xc]
        cmp     r3, #0
        beq     L661f84
L661f50:
        ldr     r0, [r3, #8]
        cmp     r0, r2
        beq     L661fac
        bls     L661f74
        str     r2, [r5, r4, lsl #2]
        str     r2, [ip, #8]
        str     ip, [r1, #0xc]
        str     r3, [ip, #0xc]
        b       L661f94
L661f74:
        mov     r1, r3
        ldr     r3, [r3, #0xc]
        cmp     r3, #0
        bne     L661f50
L661f84:
        str     ip, [r1, #0xc]
        add     ip, ip, #8
        stm     ip, {r2, r7}
        str     r2, [r5, r4, lsl #2]
L661f94:
        add     r0, r2, #1
        add     r4, r4, #1
        cmp     r4, r8
        str     r0, [r6, #4]
        blt     L661ea0
L661fa8:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L661fac:
        add     r2, r2, #1
        b       L661edc
L661fb4:
        .word   0x008aab18
L661fb8:
        .word   0x008ab848
        .size   A_661e80, . - A_661e80

@ FUN_006621dc
        .global A_6621dc
        .type   A_6621dc, %function
A_6621dc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     sb, r1
        ldr     r2, L66234c
        lsl     r1, r0, #0x17
        lsr     r1, r1, #0x17
        ldr     r2, [r2, #8]
        add     r1, r2, r1, lsl #2
        ldr     r4, [r1, #8]
        cmp     r4, #0
        beq     L662218
L662204:
        ldr     r1, [r4, #4]
        cmp     r1, r0
        ldrne   r4, [r4]
        cmpne   r4, #0
        bne     L662204
L662218:
        ldr     r0, [r4, #0x20]
        mov     r5, #0
        cmp     r0, #0
        bls     L662330
        ldr     r8, L662350
        mov     r6, #0xe0
        mov     r7, #4
L662234:
        ldrb    r0, [r4, #0x424]
        cmp     r0, #0
        beq     L6622bc
        ldr     r0, [r4, #0x24]
        cmp     r0, r5
        bls     L662280
        ldr     r0, [r4, #0x418]
        ldr     r1, [r4, #0x414]
        ldr     r2, [r4, #0x1c]
        add     r3, r5, r5, lsl #1
        add     ip, r0, r0, lsl #1
        ldr     r1, [r1, #0x10]
        rsb     r0, ip, r0, lsl #5
        add     r3, r7, r3, lsl #2
        add     r0, r6, r0, lsl #3
        ldr     r2, [r2, r3]
        ldr     r0, [r1, r0]
        add     r1, r0, r2
        b       L66230c
L662280:
        ldr     r0, [r4, #0x28]
        cmp     r0, r5
        bls     L6622fc
        ldr     r0, [r4, #0x41c]
        ldr     r2, [r4, #0x414]
        ldr     r1, [r4, #0x1c]
        add     r3, r5, r5, lsl #1
        add     ip, r0, r0, lsl #1
        ldr     r2, [r2, #0x10]
        rsb     r0, ip, r0, lsl #5
        add     r3, r7, r3, lsl #2
        add     r0, r6, r0, lsl #3
        ldr     r1, [r1, r3]
        ldr     r0, [r2, r0]
        b       L6622f4
L6622bc:
        ldr     r0, [r4, #0x28]
        cmp     r0, r5
        bls     L6622fc
        ldr     r1, [r4, #0x414]
        ldr     r0, [r4, #0x418]
        ldr     r2, [r4, #0x1c]
        add     ip, r5, r5, lsl #1
        ldr     r3, [r1, #0x10]
        add     r1, r0, r0, lsl #1
        rsb     r0, r1, r0, lsl #5
        add     ip, r7, ip, lsl #2
        add     r0, r6, r0, lsl #3
        ldr     r1, [r2, ip]
        ldr     r0, [r3, r0]
L6622f4:
        add     r1, r1, r0
        b       L66230c
L6622fc:
        sub     r0, r5, r0
        add     r0, r0, r0, lsl #1
        add     r0, r8, r0, lsl #2
        ldr     r1, [r0, #8]
L66230c:
        mov     r0, sb
        bl      Fn_1fe040
        cmp     r0, #0
        nop
        beq     L662330
        ldr     r0, [r4, #0x20]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L662234
L662330:
        ldr     r0, [r4, #0x20]
        cmp     r0, r5
        ldrne   r0, [r4, #0x1c]
        addne   r1, r5, r5, lsl #1
        mvneq   r0, #0
        ldrne   r0, [r0, r1, lsl #2]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L66234c:
        .word   0x008ab508
L662350:
        .word   0x009ac78c
        .size   A_6621dc, . - A_6621dc

@ FUN_00662354
        .global A_662354
        .type   A_662354, %function
A_662354:
        push    {r0, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xf70
        mov     sl, #0
        ldr     r0, [sp, #0xf70]
        lsl     r1, r0, #0x17
        ldr     r0, L663310
        lsr     r1, r1, #0x17
        ldr     r0, [r0, #8]
        add     r0, r0, r1, lsl #2
        ldr     r4, [r0, #8]
        cmp     r4, #0
        beq     L66239c
L662384:
        ldr     r0, [r4, #4]
        ldr     r1, [sp, #0xf70]
        cmp     r0, r1
        ldrne   r4, [r4]
        cmpne   r4, #0
        bne     L662384
L66239c:
        ldrb    r1, [r4, #0x15]
        mov     r0, #0
        strb    r0, [r4, #0x16]
        cmp     r1, #0
        bne     L662b10
        ldr     r3, [r4, #0xc]
        cmp     r3, #0
        beq     L662b10
        ldr     r1, [r4, #8]
        cmp     r1, #0
        ldrne   r1, [r3]
        cmpne   r1, #0
        beq     L662b10
        ldr     r2, [r4, #0x10]
        cmp     r2, #0
        ldrne   ip, [r2]
        cmpne   ip, r1
        bne     L662b10
        ldr     r3, [r3, #4]
        ldr     ip, [r1, #0x10]
        cmp     r2, #0
        add     r1, r3, r3, lsl #1
        rsb     r1, r1, r3, lsl #5
        add     r7, ip, r1, lsl #3
        beq     L662414
        ldm     r2, {r1, r2}
        ldr     r3, [r1, #0x10]
        add     r1, r2, r2, lsl #1
        rsb     r1, r1, r2, lsl #5
        add     sl, r3, r1, lsl #3
L662414:
        mov     r0, #0
        str     r0, [sp, #0x1c4]
        str     r0, [sp, #0x348]
        str     r0, [sp, #0x20]
        str     r0, [sp, #0x1b4]
        str     r0, [sp, #0x30]
        str     r0, [sp, #0x28]
        str     r0, [sp, #0xf48]
        str     r0, [sp, #0xf40]
        str     r0, [sp, #0xf44]
        str     r0, [sp, #0xf34]
        str     r0, [sp, #0xf38]
        str     r0, [sp, #0xf3c]
        ldr     r0, [r7, #0x5c]
        add     r2, sp, #0xf40
        mov     fp, #0
        cmp     r0, #0
        str     r0, [sp, #0xf54]
        bls     L66254c
        ldr     r0, [r7, #0x58]
        mov     r5, #1
        str     r0, [sp, #0xf2c]
L66246c:
        ldr     r1, [sp, #0xf2c]
        add     r3, fp, fp, lsl #2
        ldr     r1, [r1, r3, lsl #2]
        sub     r0, r1, #0x8800
        subs    r0, r0, #0x354
        subne   r0, r1, #0x8b00
        subsne  r0, r0, #0x56
        beq     L66253c
        ldr     r1, [sp, #0xf2c]
        mov     r0, #0x10
        add     r0, r0, r3, lsl #2
        ldr     sb, [r1, r0]
        cmp     sb, #0
        beq     L66253c
        and     r0, sb, #1
        cmp     r0, #1
        mov     r1, #0
        bne     L6624dc
        ldr     lr, [sp, #0xf2c]
        mov     ip, #4
        add     ip, ip, r3, lsl #2
        mov     r1, #1
        ldr     ip, [lr, ip]
        asr     lr, ip, #5
        and     ip, ip, #0x1f
        ldr     r6, [r2, lr, lsl #2]
        orr     ip, r6, r5, lsl ip
        str     ip, [r2, lr, lsl #2]
L6624dc:
        cmp     sb, r0
        bls     L66253c
        ldr     lr, [sp, #0xf2c]
        mov     ip, #4
        add     r3, ip, r3, lsl #2
        ldr     r3, [lr, r3]
L6624f4:
        add     r0, r0, #2
        add     lr, r3, r1
        and     r6, lr, #0x1f
        asr     ip, lr, #5
        lsl     r8, r5, r6
        ldr     lr, [r2, ip, lsl #2]
        add     r1, r1, #1
        add     r6, r3, r1
        orr     r8, r8, lr
        asr     lr, r6, #5
        str     r8, [r2, ip, lsl #2]
        ldr     ip, [r2, lr, lsl #2]
        and     r6, r6, #0x1f
        add     r1, r1, #1
        orr     ip, ip, r5, lsl r6
        cmp     sb, r0
        str     ip, [r2, lr, lsl #2]
        bhi     L6624f4
L66253c:
        ldr     r0, [sp, #0xf54]
        add     fp, fp, #1
        cmp     r0, fp
        bhi     L66246c
L66254c:
        mov     r3, #0
L662550:
        mov     r0, #0
        ldr     r1, [r2, r3, lsl #2]
L662558:
        cmp     r1, #0
        beq     L662598
        tst     r1, #1
        beq     L662588
        ldr     lr, [sp, #0x1b4]
        add     ip, sp, #4
        add     r5, r0, r3, lsl #5
        add     lr, ip, lr, lsl #2
        str     r5, [lr, #0x30]
        ldr     lr, [sp, #0x1b4]
        add     lr, lr, #1
        str     lr, [sp, #0x1b4]
L662588:
        add     r0, r0, #1
        cmp     r0, #0x20
        lsr     r1, r1, #1
        blo     L662558
L662598:
        add     r3, r3, #1
        cmp     r3, #3
        blo     L662550
        ldr     r0, [sp, #0xf54]
        str     r0, [sp, #0x24]
        ldr     r0, [sp, #0x1b4]
        cmp     r0, #0
        beq     L6625f4
        ldr     r0, L663314
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r0, #0
        beq     L6625e4
        ldr     r0, [sp, #0x1b4]
        mov     r2, #0
        mov     r1, #0x100
        lsl     r3, r0, #4
        mov     r0, #0x10000
        blx     ip
L6625e4:
        ldr     r1, [sp, #0x1b4]
        str     r0, [sp, #0x30]
        lsl     r1, r1, #4
        bl      Fn_1fddd8
L6625f4:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        beq     L6627c0
        ldr     r0, [sl, #0x5c]
        add     r2, sp, #0xc00
        add     r2, r2, #0x334
        cmp     r0, #0
        mov     fp, #0
        str     r0, [sp, #0xf2c]
        bls     L662708
        ldr     r0, [sl, #0x58]
        mov     r5, #1
        str     r0, [sp, #0xf28]
L662628:
        ldr     r1, [sp, #0xf28]
        add     r3, fp, fp, lsl #2
        ldr     r1, [r1, r3, lsl #2]
        sub     r0, r1, #0x8800
        subs    r0, r0, #0x354
        subne   r0, r1, #0x8b00
        subsne  r0, r0, #0x56
        beq     L6626f8
        ldr     r1, [sp, #0xf28]
        mov     r0, #0x10
        add     r0, r0, r3, lsl #2
        ldr     sb, [r1, r0]
        cmp     sb, #0
        beq     L6626f8
        and     r0, sb, #1
        cmp     r0, #1
        mov     r1, #0
        bne     L662698
        ldr     lr, [sp, #0xf28]
        mov     ip, #4
        add     ip, ip, r3, lsl #2
        mov     r1, #1
        ldr     ip, [lr, ip]
        asr     lr, ip, #5
        and     ip, ip, #0x1f
        ldr     r6, [r2, lr, lsl #2]
        orr     ip, r6, r5, lsl ip
        str     ip, [r2, lr, lsl #2]
L662698:
        cmp     sb, r0
        bls     L6626f8
        ldr     lr, [sp, #0xf28]
        mov     ip, #4
        add     r3, ip, r3, lsl #2
        ldr     r3, [lr, r3]
L6626b0:
        add     r0, r0, #2
        add     lr, r3, r1
        and     r6, lr, #0x1f
        asr     ip, lr, #5
        lsl     r8, r5, r6
        ldr     lr, [r2, ip, lsl #2]
        add     r1, r1, #1
        add     r6, r3, r1
        orr     r8, r8, lr
        asr     lr, r6, #5
        str     r8, [r2, ip, lsl #2]
        ldr     ip, [r2, lr, lsl #2]
        and     r6, r6, #0x1f
        add     r1, r1, #1
        orr     ip, ip, r5, lsl r6
        cmp     sb, r0
        str     ip, [r2, lr, lsl #2]
        bhi     L6626b0
L6626f8:
        ldr     r0, [sp, #0xf2c]
        add     fp, fp, #1
        cmp     r0, fp
        bhi     L662628
L662708:
        mov     r3, #0
        add     ip, sp, #4
L662710:
        ldr     r1, [r2, r3, lsl #2]
        mov     r0, #0
L662718:
        cmp     r1, #0
        beq     L662754
        tst     r1, #1
        beq     L662744
        ldr     lr, [sp, #0x348]
        add     r5, r0, r3, lsl #5
        add     lr, ip, lr, lsl #2
        str     r5, [lr, #0x1c4]
        ldr     lr, [sp, #0x348]
        add     lr, lr, #1
        str     lr, [sp, #0x348]
L662744:
        add     r0, r0, #1
        cmp     r0, #0x20
        lsr     r1, r1, #1
        blo     L662718
L662754:
        add     r3, r3, #1
        cmp     r3, #3
        blo     L662710
        ldr     r0, [sp, #0x24]
        mov     r1, r0
        str     r0, [sp, #0x28]
        ldr     r0, [sp, #0xf2c]
        add     r0, r0, r1
        str     r0, [sp, #0x24]
        ldr     r0, [sp, #0x348]
        cmp     r0, #0
        beq     L6627c0
        ldr     r0, L663314
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r0, #0
        beq     L6627b0
        ldr     r0, [sp, #0x348]
        mov     r2, #0
        mov     r1, #0x100
        lsl     r3, r0, #4
        mov     r0, #0x10000
        blx     ip
L6627b0:
        ldr     r1, [sp, #0x348]
        str     r0, [sp, #0x1c4]
        lsl     r1, r1, #4
        bl      Fn_1fddd8
L6627c0:
        ldr     r0, [sp, #0x24]
        ldr     r5, L663318
        cmp     r0, #0x800
        bhi     L662830
        mov     r1, r0
        str     r1, [sp, #0x2c]
        ldr     r1, [sp, #0x24]
        ldr     r0, L663314
        add     r1, r1, #0x100
        add     r1, r1, #0x29
        str     r1, [sp, #0x24]
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r0, #0
        beq     L662814
        add     r0, r1, r1, lsl #1
        mov     r2, #0
        lsl     r3, r0, #2
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L662814:
        cmp     r0, #0
        str     r0, [sp, #0x20]
        beq     L662ac0
        ldr     r1, [sp, #0x24]
        add     r1, r1, r1, lsl #1
        lsl     r1, r1, #2
        bl      Fn_1fddd8
L662830:
        ldr     r0, [sp, #0x20]
        cmp     r0, #0
        beq     L662ac0
        ldr     r3, [r4, #0x1c]
        cmp     r3, #0
        beq     L66286c
        ldr     ip, [r5]
        cmp     ip, #0
        beq     L662864
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L662864:
        mov     r0, #0
        str     r0, [r4, #0x1c]
L66286c:
        ldr     r3, [r4, #0x2c]
        cmp     r3, #0
        beq     L66289c
        ldr     ip, [r5]
        cmp     ip, #0
        beq     L662894
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L662894:
        mov     r0, #0
        str     r0, [r4, #0x2c]
L66289c:
        ldr     r3, [r4, #0x1c0]
        mov     r6, #0
        str     r6, [r4, #0x1b0]
        str     r6, [r4, #0x1b4]
        str     r6, [r4, #0x1b8]
        cmp     r3, #0
        str     r6, [r4, #0x1bc]
        beq     L6628dc
        ldr     ip, [r5]
        cmp     ip, #0
        beq     L6628d8
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L6628d8:
        str     r6, [r4, #0x1c0]
L6628dc:
        mov     r2, #0
        str     r2, [r4, #0x344]
        str     r2, [r4, #0x348]
        str     r2, [r4, #0x34c]
        mov     r0, r2
        str     r2, [r4, #0x350]
L6628f4:
        add     r3, r2, r2, lsl #1
        add     r2, r2, #1
        add     r3, r4, r3, lsl #2
        add     ip, r2, r2, lsl #1
        mvn     r1, #0
        add     ip, r4, ip, lsl #2
        add     r0, r0, #2
        str     r1, [r3, #0x358]
        cmp     r0, #0x10
        add     r2, r2, #1
        str     r1, [ip, #0x358]
        blo     L6628f4
        ldr     r1, [sp, #0x1b4]
        cmp     r1, #0
        str     r1, [r4, #0x1b0]
        beq     L662978
        and     r0, r1, #1
        cmp     r0, #1
        ldreq   r2, [sp, #0x34]
        streq   r2, [r4, #0x30]
        cmp     r1, r0
        addhi   r1, sp, #4
        bls     L662978
L662950:
        add     r2, r1, r0, lsl #2
        add     r3, r4, r0, lsl #2
        ldr     ip, [r2, #0x30]
        add     r0, r0, #2
        str     ip, [r3, #0x30]
        ldr     r2, [r2, #0x34]
        str     r2, [r3, #0x34]
        ldr     r2, [r4, #0x1b0]
        cmp     r2, r0
        bhi     L662950
L662978:
        ldr     r0, [sp, #0x30]
        str     r0, [r4, #0x2c]
        ldr     r1, [sp, #0x348]
        cmp     r1, #0
        str     r1, [r4, #0x344]
        beq     L6629d4
        and     r0, r1, #1
        cmp     r0, #1
        ldreq   r2, [sp, #0x1c8]
        streq   r2, [r4, #0x1c4]
        cmp     r1, r0
        addhi   r1, sp, #4
        bls     L6629d4
L6629ac:
        add     r2, r1, r0, lsl #2
        add     r3, r4, r0, lsl #2
        ldr     ip, [r2, #0x1c4]
        add     r0, r0, #2
        str     ip, [r3, #0x1c4]
        ldr     r2, [r2, #0x1c8]
        str     r2, [r3, #0x1c8]
        ldr     r2, [r4, #0x344]
        cmp     r2, r0
        bhi     L6629ac
L6629d4:
        ldr     r0, [sp, #0xf70]
        ldr     r1, [sp, #0x1c4]
        mov     r2, #0
        mov     r8, r2
        orr     r0, r2, r0, lsl #19
        str     r1, [r4, #0x1c0]
        ldr     r1, [sp, #0x28]
        bic     r0, r0, #0x3c000
        bic     r0, r0, #0x3f80
        str     r0, [sp, #0xf44]
        str     r1, [r4, #0x24]
        ldr     r0, [sp, #0x2c]
        str     r0, [r4, #0x28]
        ldr     r0, [sp, #0x24]
        str     r0, [r4, #0x20]
        ldr     r0, [sp, #0x20]
        str     r0, [r4, #0x1c]
        ldr     r0, [r7, #0x5c]
        cmp     r0, #0
        ldrhi   r2, L66331c
        bls     L662c0c
L662a28:
        add     fp, r8, r8, lsl #2
        mov     r0, #0x10
        add     r5, r0, fp, lsl #2
        ldr     r0, [r7, #0x58]
        ldr     ip, L663320
        mov     r3, #8
        add     lr, r3, fp, lsl #2
        and     r6, ip, r8, lsl #7
        ldr     ip, [sp, #0xf44]
        ldr     lr, [r0, lr]
        ldr     sb, [r0, r5]
        ldr     r5, [r0, fp, lsl #2]
        mov     r1, #0x1800
        orr     r6, r6, ip
        mov     r3, #0xfe0000
        and     ip, r1, lr, lsl #11
        and     r1, r3, sb, lsl #17
        sub     r3, r5, #0x8800
        cmp     r5, r2
        sub     r3, r3, #0x354
        orr     r1, r1, ip
        beq     L662b50
        bgt     L662b1c
        sub     r3, r5, #0x1400
        subs    r3, r3, #6
        beq     L662b94
        sub     r3, r3, #0x7700
        subs    r3, r3, #0x4a
        biceq   r1, r1, #0x6000
        orreq   r1, r1, #0x2000
        beq     L662b94
        cmp     r3, #1
        biceq   r1, r1, #0x6000
        orreq   r1, r1, #0x4000
        beq     L662b94
        cmp     r3, #2
        orreq   r1, r1, #0x6000
        b       L662b94
L662ac0:
        ldr     r0, [sp, #0x1c4]
        cmp     r0, #0
        ldrne   ip, [r5]
        cmpne   ip, #0
        beq     L662ae8
        mov     r3, r0
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L662ae8:
        ldr     r0, [sp, #0x30]
        cmp     r0, #0
        ldrne   ip, [r5]
        cmpne   ip, #0
        beq     L662b10
        mov     r3, r0
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L662b10:
        add     sp, sp, #0xc00
        add     sp, sp, #0x374
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L662b1c:
        cmp     r3, #2
        beq     L662b70
        cmp     r3, #6
        biceq   r1, r1, #0x6000
        orreq   r1, r1, #0x2000
        beq     L662b90
        cmp     r3, #7
        biceq   r1, r1, #0x6000
        orreq   r1, r1, #0x4000
        beq     L662b90
        cmp     r3, #8
        orreq   r1, r1, #0xe000
        b       L662b94
L662b50:
        mov     r3, #4
        add     r3, r3, fp, lsl #2
        bic     r1, r1, #0xff000000
        ldr     r3, [r0, r3]
        bic     r1, r1, #0x6000
        orr     r1, r1, #0x14000
        lsl     r3, r3, #0x18
        b       L662b88
L662b70:
        mov     r3, #4
        add     r3, r3, fp, lsl #2
        bic     r1, r1, #0xff000000
        ldr     r3, [r0, r3]
        orr     r1, r1, #0x10000
        lsl     r3, r3, #0x18
L662b88:
        orr     r1, r1, r3
        b       L662b94
L662b90:
        orr     r1, r1, #0x8000
L662b94:
        tst     r1, #0x10000
        bne     L662be0
        ldr     lr, [r4, #0x1b0]
        mov     r3, #0
        cmp     lr, #0
        bls     L662be0
        mov     ip, #4
        add     ip, ip, fp, lsl #2
        ldr     ip, [r0, ip]
L662bb8:
        add     r5, r4, r3, lsl #2
        ldr     r5, [r5, #0x30]
        cmp     ip, r5
        bne     L662bd4
        bic     r1, r1, #0xff000000
        orr     r1, r1, r3, lsl #24
        b       L662be0
L662bd4:
        add     r3, r3, #1
        cmp     lr, r3
        bhi     L662bb8
L662be0:
        ldr     r3, [r4, #0x1c]
        mov     ip, #0xc
        add     lr, ip, fp, lsl #2
        add     ip, r8, r8, lsl #1
        ldr     r0, [r0, lr]
        str     r6, [r3, ip, lsl #2]!
        add     r8, r8, #1
        strd    r0, r1, [r3, #4]
        ldr     r0, [r7, #0x5c]
        cmp     r0, r8
        bhi     L662a28
L662c0c:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        beq     L662dd4
        ldr     r0, [sl, #0x5c]
        mov     r8, #0
        cmp     r0, #0
        ldrhi   r1, L66331c
        movhi   r0, #0xfe0000
        bls     L662dd4
L662c30:
        add     sb, r8, r8, lsl #2
        mov     r2, #0x10
        ldr     r6, [r4, #0x24]
        add     r5, r2, sb, lsl #2
        ldr     r2, [sl, #0x58]
        mov     r3, #8
        add     lr, r3, sb, lsl #2
        str     r2, [sp, #0xf34]
        ldr     lr, [r2, lr]
        ldr     ip, L663320
        ldr     r5, [r2, r5]
        ldr     fp, [sp, #0xf44]
        add     r6, r6, r8
        ldr     r2, [r2, sb, lsl #2]
        mov     r3, #0x1800
        and     ip, ip, r6, lsl #7
        and     r3, r3, lr, lsl #11
        orr     fp, fp, ip
        orr     r3, r3, #0x400
        and     ip, r0, r5, lsl #17
        orr     r3, r3, ip
        sub     ip, r2, #0x8800
        cmp     r2, r1
        sub     ip, ip, #0x354
        beq     L662d08
        bgt     L662cd4
        sub     r2, r2, #0x1400
        subs    r2, r2, #6
        beq     L662d50
        sub     r2, r2, #0x7700
        subs    r2, r2, #0x4a
        biceq   r2, r3, #0x6000
        orreq   r3, r2, #0x2000
        beq     L662d50
        cmp     r2, #1
        biceq   r2, r3, #0x6000
        orreq   r3, r2, #0x4000
        beq     L662d50
        cmp     r2, #2
        orreq   r3, r3, #0x6000
        b       L662d50
L662cd4:
        cmp     ip, #2
        beq     L662d2c
        cmp     ip, #6
        biceq   r2, r3, #0x6000
        orreq   r2, r2, #0x2000
        beq     L662d4c
        cmp     ip, #7
        biceq   r2, r3, #0x6000
        orreq   r2, r2, #0x4000
        beq     L662d4c
        cmp     ip, #8
        orreq   r3, r3, #0xe000
        b       L662d50
L662d08:
        mov     r2, #4
        bic     ip, r3, #0x6000
        add     r3, r2, sb, lsl #2
        ldr     r2, [sp, #0xf34]
        ldr     r3, [r2, r3]
        bic     r2, ip, #0xff000000
        orr     r2, r2, #0x14000
        orr     r3, r2, r3, lsl #24
        b       L662d50
L662d2c:
        ldr     ip, [sp, #0xf34]
        mov     r2, #4
        add     r2, r2, sb, lsl #2
        bic     r3, r3, #0xff000000
        ldr     r2, [ip, r2]
        orr     r3, r3, #0x10000
        orr     r3, r3, r2, lsl #24
        b       L662d50
L662d4c:
        orr     r3, r2, #0x8000
L662d50:
        tst     r3, #0x10000
        bne     L662da0
        ldr     lr, [r4, #0x344]
        mov     r2, #0
        cmp     lr, #0
        bls     L662da0
        ldr     r5, [sp, #0xf34]
        mov     ip, #4
        add     ip, ip, sb, lsl #2
        ldr     ip, [r5, ip]
L662d78:
        add     r5, r4, r2, lsl #2
        ldr     r5, [r5, #0x1c4]
        cmp     ip, r5
        bne     L662d94
        bic     r3, r3, #0xff000000
        orr     r3, r3, r2, lsl #24
        b       L662da0
L662d94:
        add     r2, r2, #1
        cmp     lr, r2
        bhi     L662d78
L662da0:
        ldr     r5, [sp, #0xf34]
        ldr     r2, [r4, #0x1c]
        mov     ip, #0xc
        add     ip, ip, sb, lsl #2
        add     lr, r6, r6, lsl #1
        ldr     ip, [r5, ip]
        add     r2, r2, lr, lsl #2
        add     r8, r8, #1
        str     r3, [r2, #8]
        stm     r2, {fp, ip}
        ldr     r2, [sl, #0x5c]
        cmp     r2, r8
        bhi     L662c30
L662dd4:
        ldr     r0, [r4, #0x28]
        ldr     r1, [r4, #0x20]
        cmp     r1, r0
        ldrhi   r3, L663324
        movhi   r1, #0
        bls     L662e90
L662dec:
        ldr     r2, [r4, #0x28]
        ldr     lr, [sp, #0xf70]
        sub     r2, r0, r2
        uxth    ip, r2
        orr     ip, r1, ip, lsl #2
        orr     ip, ip, lr, lsl #19
        orr     ip, ip, #0x40000
        lsl     lr, ip, #0xe
        lsr     lr, lr, #0x10
        add     lr, lr, lr, lsl #1
        add     lr, r3, lr, lsl #2
        ldr     lr, [lr, #4]
        sub     lr, lr, #0x8000
        sub     lr, lr, #0xb50
        cmp     lr, #6
        ldrlo   pc, [pc, lr, lsl #2]
        b       L662e68
L662e30:
        .word   0x00762e5c
L662e34:
        .word   0x00762e50
L662e38:
        .word   0x00762e48
L662e3c:
        .word   0x00762e5c
L662e40:
        .word   0x00762e50
L662e44:
        .word   0x00762e48
        orr     ip, ip, #3
        b       L662e6c
        bic     ip, ip, #3
        orr     ip, ip, #2
        b       L662e6c
        bic     ip, ip, #3
        orr     ip, ip, #1
        b       L662e6c
L662e68:
        bic     ip, ip, #3
L662e6c:
        ldr     lr, [r4, #0x1c]
        add     r5, r0, r0, lsl #1
        add     r0, r0, #1
        str     ip, [lr, r5, lsl #2]!
        str     r2, [lr, #4]!
        str     r1, [lr, #4]
        ldr     r2, [r4, #0x20]
        cmp     r2, r0
        bhi     L662dec
L662e90:
        ldr     r8, [r4, #0x18]
        mov     sb, #0
        cmp     r8, #0
        movne   fp, #1
        beq     L662ef0
L662ea4:
        mov     r5, #0
L662ea8:
        add     r6, r7, r5, lsl #3
        ldr     r0, [r6, #0x60]
        cmp     r0, #0
        beq     L662ed8
        ldr     r0, [r7, #0xe0]
        ldr     r2, [r6, #0x64]
        ldr     r1, [r8]
        add     r0, r0, r2
        bl      Fn_1fe040
        cmp     r0, #0
        nop
        beq     L662f18
L662ed8:
        add     r5, r5, #1
        cmp     r5, #0x10
        blo     L662ea8
L662ee4:
        ldr     r8, [r8, #8]
        cmp     r8, #0
        bne     L662ea4
L662ef0:
        mov     r0, #0
L662ef4:
        add     r1, r7, r0, lsl #3
        ldr     r2, [r1, #0x60]
        cmp     r2, #0
        beq     L662f7c
        mov     r2, #1
        lsl     r2, r2, r0
        ands    r3, r2, sb
        beq     L662f5c
        b       L662f7c
L662f18:
        ldr     r1, [r8, #4]
        add     r0, r7, r5, lsl #3
        orr     sb, sb, fp, lsl r5
        add     r1, r1, r1, lsl #1
        add     r1, r4, r1, lsl #2
        str     r5, [r1, #0x358]
        ldr     r1, [r8, #4]
        ldr     r2, [r0, #0x60]
        add     r0, r1, r1, lsl #1
        add     r0, r4, r0, lsl #2
        str     r2, [r0, #0x354]
        ldr     r0, [r8, #4]
        ldr     r1, [r6, #0x64]
        add     r0, r0, r0, lsl #1
        add     r0, r4, r0, lsl #2
        str     r1, [r0, #0x35c]
        b       L662ee4
L662f5c:
        add     ip, r3, r3, lsl #1
        add     ip, r4, ip, lsl #2
        ldr     ip, [ip, #0x358]
        cmn     ip, #1
        beq     L663004
        add     r3, r3, #1
        cmp     r3, #0x10
        blo     L662f5c
L662f7c:
        add     r0, r0, #1
        cmp     r0, #0x10
        blo     L662ef4
        ldr     r0, [r4, #0x10]
        mov     r5, #0
        mov     r6, r5
        cmp     r0, #0
        add     r0, r7, #0x38
        beq     L66314c
        ldrb    r1, [sl, #1]
        add     ip, sl, #0x38
        cmp     r1, #0
        beq     L663130
        mov     r2, #0
        ldr     lr, L663328
        mov     r8, r2
        mov     r3, r2
        add     sb, sp, #0xf50
        mov     r6, #1
        str     r2, [sp, #0xf40]
L662fcc:
        ldr     r1, [ip, r3, lsl #2]
        cmp     r1, lr
        movne   r5, #0
        beq     L663040
L662fdc:
        ldr     fp, [r0, r5, lsl #2]
        cmp     r1, fp
        bne     L663028
        str     r1, [sb, r2, lsl #2]
        ldr     r1, [sp, #0xf40]
        orr     r8, r8, r6, lsl r3
        orr     r1, r1, r6, lsl r5
        add     r2, r2, #1
        str     r1, [sp, #0xf40]
        b       L663034
L663004:
        add     r3, r3, r3, lsl #1
        orr     sb, sb, r2
        add     r2, r4, r3, lsl #2
        str     r0, [r2, #0x358]
        ldr     r3, [r1, #0x60]
        str     r3, [r2, #0x354]
        ldr     r1, [r1, #0x64]
        str     r1, [r2, #0x35c]
        b       L662f7c
L663028:
        add     r5, r5, #1
        cmp     r5, #7
        blo     L662fdc
L663034:
        add     r3, r3, #1
        cmp     r3, #7
        blo     L662fcc
L663040:
        mov     r1, #0
L663044:
        ldr     r3, [ip, r1, lsl #2]
        cmp     r3, lr
        beq     L663074
        tst     r8, r6, lsl r1
        bne     L663068
        str     r3, [sb, r2, lsl #2]
        add     r2, r2, #1
        cmp     r2, #7
        beq     L663074
L663068:
        add     r1, r1, #1
        cmp     r1, #7
        blo     L663044
L663074:
        mov     r1, #0
L663078:
        ldr     r3, [r0, r1, lsl #2]
        cmp     r3, lr
        beq     L6630ac
        ldr     ip, [sp, #0xf40]
        tst     ip, r6, lsl r1
        bne     L6630a0
        str     r3, [sb, r2, lsl #2]
        add     r2, r2, #1
        cmp     r2, #7
        beq     L6630e0
L6630a0:
        add     r1, r1, #1
        cmp     r1, #7
        blo     L663078
L6630ac:
        cmp     r2, #6
        bhi     L6630e0
        add     r0, sb, r2, lsl #2
        rsb     r1, r2, #7
        sub     r0, r0, #4
        tst     r1, #1
        strne   lr, [r0, #4]!
        asrs    r1, r1, #1
        beq     L6630e0
L6630d0:
        str     lr, [r0, #4]
        subs    r1, r1, #1
        str     lr, [r0, #8]!
        bne     L6630d0
L6630e0:
        ldrh    r1, [sl, #8]
        mov     r5, r2
        mov     r0, #0
        mov     r3, r1
        b       L663104
L6630f4:
        tst     r1, #1
        subne   r2, r2, #1
        lsr     r1, r1, #1
        add     r0, r0, #1
L663104:
        cmp     r2, #0
        cmpne   r1, #0
        bne     L6630f4
        lsl     r0, r6, r0
        ldr     r1, [sl, #0x54]
        ldr     r2, [r7, #0x54]
        sub     ip, r0, #1
        and     r6, r3, ip
        orr     r0, r1, r2
L663128:
        str     r0, [r4, #0x420]
        b       L663188
L663130:
        ldm     ip, {r0, r1, r2, r3, r5, r6, lr}
        add     r8, sp, #0xf50
        stm     r8, {r0, r1, r2, r3, r5, r6, lr}
        ldr     r0, [sl, #0x54]
        ldrh    r6, [sl, #8]
        ldr     r5, [sl, #0x10]
        b       L663128
L66314c:
        ldm     r0, {r8, lr}
        ldr     r1, [r0, #0x14]
        ldr     r2, [r0, #0x10]
        ldr     r3, [r0, #0xc]
        ldr     ip, [r0, #8]
        ldr     r0, [r0, #0x18]
        str     r1, [sp, #0xf64]
        add     r1, sp, #0xf50
        str     r0, [sp, #0xf68]
        str     r2, [sp, #0xf60]
        str     r3, [sp, #0xf5c]
        str     ip, [sp, #0xf58]
        stm     r1, {r8, lr}
        ldr     r0, [r7, #0x54]
        str     r0, [r4, #0x420]
L663188:
        ldr     sb, L663310
        mov     r2, #0x2f4
        ldr     r0, [sb, #8]
        add     r1, r0, #0x1300
        add     r0, r4, #0x400
        add     r0, r0, #0xe4
        mov     r8, r0
        bl      Fn_20004c
        ldr     r0, [sb, #8]
        mov     r2, #0xbd
        add     r1, r0, #0x1600
        add     r0, r4, #0x400
        add     r0, r0, #0x26
        add     r1, r1, #0xb1
        mov     sb, r0
        bl      Fn_202b20
        add     r0, r4, #0x800
        mov     r1, #0x530
        add     r0, r0, #0x1ec
        bl      Fn_1fddd8
        mov     fp, #1
        mov     r3, #0
        mov     r1, r3
        mvn     r0, #0
        strb    fp, [r4, #0x9ec]
L6631ec:
        add     r2, r4, r3, lsl #2
        add     r3, r3, #1
        add     r1, r1, #2
        add     ip, r4, r3, lsl #2
        str     r0, [r2, #0x9f4]
        cmp     r1, #6
        add     r3, r3, #1
        str     r0, [ip, #0x9f4]
        blt     L6631ec
        mov     r1, #0x61
        vldr    s2, L66332c
        add     r3, r4, #0x800
        str     r1, [r4, #0xa0c]
        vstr    s2, [r3, #0x210]
        vldr    s0, L663330
        vstr    s2, [r3, #0x214]
        vstr    s2, [r3, #0x218]
        vstr    s0, [r3, #0x21c]
        vstr    s0, [r3, #0x234]
        vstr    s0, [r3, #0x244]
        vstr    s0, [r3, #0x238]
        vstr    s0, [r3, #0x248]
        vstr    s0, [r3, #0x23c]
        vstr    s0, [r3, #0x24c]
        vstr    s0, [r3, #0x240]
        vldr    s1, L663334
        mov     r1, #0
        mov     r2, #8
        vstr    s0, [r3, #0x250]
L663260:
        rsb     r3, r1, r1, lsl #3
        subs    r2, r2, #1
        add     r3, r4, r3, lsl #4
        add     ip, r3, #0x800
        add     r1, r1, #1
        vstr    s0, [ip, #0x26c]
        vstr    s1, [ip, #0x27c]
        str     r0, [r3, #0xa80]
        str     r0, [r3, #0xa8c]
        vstr    s0, [ip, #0x288]
        bne     L663260
        add     ip, r4, #0xc00
        vldr    s1, L663338
        vstr    s2, [ip, #0x1a0]
        vstr    s1, [ip, #0x1b0]
        vstr    s2, [ip, #0x1a4]
        vstr    s1, [ip, #0x1b4]
        vstr    s2, [ip, #0x1a8]
        vstr    s1, [ip, #0x1b8]
        vstr    s0, [ip, #0x1ac]
        vstr    s0, [ip, #0x1bc]
        vstr    s0, [ip, #0x1cc]
        vstr    s0, [ip, #0x1dc]
        mov     r2, #1
        vstr    s0, [ip, #0x1ec]
        mov     r3, r2
        str     r0, [r4, #0xdf0]
L6632cc:
        add     r1, r4, r2, lsl #2
        add     r2, r2, #1
        add     r3, r3, #2
        add     lr, r4, r2, lsl #2
        str     r0, [r1, #0xdf0]
        cmp     r3, #7
        add     r2, r2, #1
        str     r0, [lr, #0xdf0]
        blt     L6632cc
        ldr     r2, L663340
        vldr    s1, L66333c
        mvn     r0, #0
        mov     r1, #1
        vldr    s2, L663344
        vstr    s1, [ip, #0x210]
        mov     r3, r4
        b       L663348
L663310:
        .word   0x008ab508
L663314:
        .word   0x008aab18
L663318:
        .word   0x008aab1c
L66331c:
        .word   0x00008b54
L663320:
        .word   0x0003ffff
L663324:
        .word   0x009ac78c
L663328:
        .word   0x1f1f1f1f
L66332c:
        .word   0x3e4ccccd
L663330:
        .word   0x3f800000
L663334:
        .word   0xbf800000
L663338:
        .word   0x3f4ccccd
L66333c:
        .word   0x3f000000
L663340:
        .word   0x00006030
L663344:
        .word   0x41200000
L663348:
        .word   0xe5842e38
        .word   0xed8c0a8f
        .word   0xe5840e64
        .word   0xe5c41e74
        .word   0xe5840e78
        .word   0xe5840e7c
        .word   0xe5840e80
        .word   0xed8c0aa9
        .word   0xed8c0aaa
        .word   0xed8c1aa8
        .word   0xe5970014
        .word   0xe5941520
        .word   0xe380047f
        .word   0xe38008ff
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840520
        .word   0xe59417d8
        .word   0xe3811902
        .word   0xe58417d8
        .word   0xe3a0e00f
        .word   0xe5c4e435
        .word   0xe597001c
        .word   0xe5941508
        .word   0xe380047f
        .word   0xe38008ff
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840508
        .word   0xe59417d8
        .word   0xe3811c02
        .word   0xe58417d8
        .word   0xe5c4e42f
        .word   0xe594150c
        .word   0xe5970020
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe584050c
        .word   0xe59417d8
        .word   0xe3811b01
        .word   0xe58417d8
        .word   0xe5c4e430
        .word   0xe5941510
        .word   0xe5970024
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840510
        .word   0xe59417d8
        .word   0xe3811b02
        .word   0xe58417d8
        .word   0xe5c4e431
        .word   0xe5941514
        .word   0xe5970028
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840514
        .word   0xe59417d8
        .word   0xe3811a01
        .word   0xe58417d8
        .word   0xe5c4e432
        .word   0xe5941518
        .word   0xe597002c
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840518
        .word   0xe59417d8
        .word   0xe3811a02
        .word   0xe58417d8
        .word   0xe5c4e433
        .word   0xe5941524
        .word   0xe1d700b8
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840524
        .word   0xe59417d8
        .word   0xe3811801
        .word   0xe58417d8
        .word   0xe2840b01
        .word   0xe2800f47
        .word   0xe58d0f34
        .word   0xe5c4e436
        .word   0xe597100c
        .word   0xe594051c
        .word   0xe2411001
        .word   0xe20020ff
        .word   0xe20110ff
        .word   0xe1520001
        .word   0x0a000006
        .word   0xe3c020ff
        .word   0xe1822001
        .word   0xe59d1f34
        .word   0xe5812000
        .word   0xe59417d8
        .word   0xe3811901
        .word   0xe58417d8
        .word   0xe2840b01
        .word   0xe2800034
        .word   0xe58d0f38
        .word   0xe5d41434
        .word   0xe3811001
        .word   0xe5c41434
        .word   0xe5940010
        .word   0xe3500000
        .word   0xe5970010
        .word   0x0a000154
        .word   0xe59424fc
        .word   0xe2400001
        .word   0xe2841b01
        .word   0xe20230ff
        .word   0xe20000ff
        .word   0xe1530000
        .word   0xe28110fc
        .word   0x0a000005
        .word   0xe3c230ff
        .word   0xe1800003
        .word   0xe5810000
        .word   0xe59407d8
        .word   0xe3800040
        .word   0xe58407d8
        .word   0xe5d4042c
        .word   0xe2842b01
        .word   0xe282202c
        .word   0xe3800001
        .word   0xe5c4042c
        .word   0xe59a0014
        .word   0xe5943500
        .word   0xe380047f
        .word   0xe38008ff
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe5840500
        .word   0xe59437d8
        .word   0xe3833080
        .word   0xe58437d8
        .word   0xe5c4e42d
        .word   0xe59a001c
        .word   0xe59434e8
        .word   0xe380047f
        .word   0xe38008ff
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe58404e8
        .word   0xe59437d8
        .word   0xe3833002
        .word   0xe58437d8
        .word   0xe5c4e427
        .word   0xe59434ec
        .word   0xe59a0020
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe58404ec
        .word   0xe59437d8
        .word   0xe3833004
        .word   0xe58437d8
        .word   0xe5c4e428
        .word   0xe59434f0
        .word   0xe59a0024
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe58404f0
        .word   0xe59437d8
        .word   0xe3833008
        .word   0xe58437d8
        .word   0xe5c4e429
        .word   0xe59434f4
        .word   0xe59a0028
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe58404f4
        .word   0xe59437d8
        .word   0xe3833010
        .word   0xe58437d8
        .word   0xe5c4e42a
        .word   0xe59434f8
        .word   0xe59a002c
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe58404f8
        .word   0xe59437d8
        .word   0xe3833020
        .word   0xe58437d8
        .word   0xe5940504
        .word   0xe5c4e42b
        .word   0xe1500006
        .word   0x0a000003
        .word   0xe5846504
        .word   0xe59437d8
        .word   0xe3833c01
        .word   0xe58437d8
        .word   0xe5940548
        .word   0xe5c4e42e
        .word   0xe1500005
        .word   0x0a000003
        .word   0xe5845548
        .word   0xe59437d8
        .word   0xe3833402
        .word   0xe58437d8
        .word   0xe3a00000
        .word   0xe28dcef5
        .word   0xe5c4e43f
        .word   0xe0843100
        .word   0xe79ce100
        .word   0xe593654c
        .word   0xe156000e
        .word   0x0a000008
        .word   0xe280601a
        .word   0xe583e54c
        .word   0xe1a0e2a6
        .word   0xe206b01f
        .word   0xe084e10e
        .word   0xe3a03001
        .word   0xe59e67d8
        .word   0xe1863b13
        .word   0xe58e37d8
        .word   0xe084e000
        .word   0xe3a0300f
        .word   0xe2800001
        .word   0xe3500007
        .word   0xe5ce3440
        .word   0x3affffeb
        .word   0xe5940420
        .word   0xe5943584
        .word   0xe1530000
        .word   0x0a000003
        .word   0xe5840584
        .word   0xe594c7dc
        .word   0xe38ccc01
        .word   0xe584c7dc
        .word   0xe59fc700
        .word   0xe594e57c
        .word   0xe3a0300f
        .word   0xe010000c
        .word   0x13a0c001
        .word   0x03a0c000
        .word   0xe15e000c
        .word   0xe5c4344e
        .word   0x0a000005
        .word   0xe3500000
        .word   0x13a00001
        .word   0xe584057c
        .word   0xe594c7dc
        .word   0xe38cc040
        .word   0xe584c7dc
        .word   0xe5c4344c
        .word   0xe5da0002
        .word   0xe3500000
        .word   0x0a000005
        .word   0xe59fb6b8
        .word   0xe3500001
        .word   0x0a000026
        .word   0xe3500002
        .word   0x1a000054
        .word   0xea000094
        .word   0xe59404e4
        .word   0xe31004ff
        .word   0x0a000004
        .word   0xe3c0c4ff
        .word   0xe588c000
        .word   0xe594c7d8
        .word   0xe38cc001
        .word   0xe584c7d8
        .word   0xe5d40426
        .word   0xe3800008
        .word   0xe5c90000
        .word   0xe594052c
        .word   0xe3500000
        .word   0x0a000004
        .word   0xe3a00000
        .word   0xe584052c
        .word   0xe59407d8
        .word   0xe3800701
        .word   0xe58407d8
        .word   0xe59404fc
        .word   0xe5c43438
        .word   0xe3c0c8ff
        .word   0xe3ccc0ff
        .word   0xe35c0302
        .word   0x0a000006
        .word   0xe3c0c4ff
        .word   0xe3ccccff
        .word   0xe38cc302
        .word   0xe581c000
        .word   0xe59417d8
        .word   0xe3811040
        .word   0xe58417d8
        .word   0xe5d4042c
        .word   0xe380000a
        .word   0xe5c20000
        .word   0xea00002f
        .word   0xe59404e4
        .word   0xe200c4ff
        .word   0xe35c0102
        .word   0x0a000005
        .word   0xe3c0c4ff
        .word   0xe38cc102
        .word   0xe588c000
        .word   0xe594c7d8
        .word   0xe38cc001
        .word   0xe584c7d8
        .word   0xe5d40426
        .word   0xe3800008
        .word   0xe5c90000
        .word   0xe594052c
        .word   0xe3500001
        .word   0x0a000004
        .word   0xe3a00001
        .word   0xe584052c
        .word   0xe59407d8
        .word   0xe3800701
        .word   0xe58407d8
        .word   0xe59404fc
        .word   0xe5c43438
        .word   0xe3c0e8ff
        .word   0xe3cee0ff
        .word   0xe15e000b
        .word   0x0a000007
        .word   0xe3c0c4ff
        .word   0xe3ccccff
        .word   0xe38cc302
        .word   0xe38ccc01
        .word   0xe581c000
        .word   0xe59417d8
        .word   0xe3811040
        .word   0xe58417d8
        .word   0xe5d4042c
        .word   0xe380000a
        .word   0xe5c20000
        .word   0xe5da0004
        .word   0xe5941530
        .word   0xe2400001
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840530
        .word   0xe59417d8
        .word   0xe3811702
        .word   0xe58417d8
        .word   0xe5c43439
        .word   0xe5970010
        .word   0xe5941538
        .word   0xe2400001
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840538
        .word   0xe59417d8
        .word   0xe3811602
        .word   0xe58417d8
        .word   0xe594253c
        .word   0xe2451001
        .word   0xe2840b01
        .word   0xe20110ff
        .word   0xe202c0ff
        .word   0xe15c0001
        .word   0xe2800f4f
        .word   0xe5c4343b
        .word   0x0a000005
        .word   0xe3c2c0ff
        .word   0xe181100c
        .word   0xe5801000
        .word   0xe59407d8
        .word   0xe3800501
        .word   0xe58407d8
        .word   0xe5d4143c
        .word   0xe3811001
        .word   0xe5c4143c
        .word   0xe5970010
        .word   0xe5941528
        .word   0xe2400001
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840528
        .word   0xe59417d8
        .word   0xe3811802
        .word   0xe58417d8
        .word   0xe5c43437
        .word   0xe597000c
        .word   0xe5941534
        .word   0xe2400001
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840534
        .word   0xe59417d8
        .word   0xe3811601
        .word   0xe58417d8
        .word   0xe594051c
        .word   0xe5c4343a
        .word   0xe3c018ff
        .word   0xe3c110ff
        .word   0xe351020a
        .word   0x0a000007
        .word   0xe3c014ff
        .word   0xe3c11cff
        .word   0xe381220a
        .word   0xe59d1f34
        .word   0xe5812000
        .word   0xe59417d8
        .word   0xe3811901
        .word   0xe58417d8
        .word   0xe5d40434
        .word   0xe380100a
        .word   0xe59d0f38
        .word   0xe5c01000
        .word   0xea0000b5
        .word   0xe59404e4
        .word   0xe31004ff
        .word   0x0a000004
        .word   0xe3c0c4ff
        .word   0xe588c000
        .word   0xe594c7d8
        .word   0xe38cc001
        .word   0xe584c7d8
        .word   0xe5d4c426
        .word   0xe59f042c
        .word   0xe38cc008
        .word   0xe5c9c000
        .word   0xe5dac005
        .word   0xe597e010
        .word   0xe5da8003
        .word   0xe594652c
        .word   0xe1a0c40c
        .word   0xe080060e
        .word   0xe24ccc01
        .word   0xe180000c
        .word   0xe1800808
        .word   0xe3800401
        .word   0xe3800002
        .word   0xe1500006
        .word   0x0a000003
        .word   0xe584052c
        .word   0xe594c7d8
        .word   0xe38cc701
        .word   0xe584c7d8
        .word   0xe59404fc
        .word   0xe5c43438
        .word   0xe3c0e8ff
        .word   0xe3cee0ff
        .word   0xe15e000b
        .word   0x0affff67
        .word   0xe3c0c4ff
        .word   0xe3ccccff
        .word   0xe38cc302
        .word   0xe38ccc01
        .word   0xe581c000
        .word   0xe59417d8
        .word   0xe3811040
        .word   0xe58417d8
        .word   0xeaffff5e
        .word   0xe5941548
        .word   0xe1510000
        .word   0x0a000003
        .word   0xe5840548
        .word   0xe59417d8
        .word   0xe3811402
        .word   0xe58417d8
        .word   0xe1a0100e
        .word   0xe3a00000
        .word   0xe28d2ef5
        .word   0xe3a03001
        .word   0xe5c4e43f
        .word   0xe084c100
        .word   0xe792e100
        .word   0xe59c554c
        .word   0xe155000e
        .word   0x0a000007
        .word   0xe280501a
        .word   0xe58ce54c
        .word   0xe1a0c2a5
        .word   0xe205501f
        .word   0xe084c10c
        .word   0xe59ce7d8
        .word   0xe18ee513
        .word   0xe58ce7d8
        .word   0xe084c000
        .word   0xe2800001
        .word   0xe3500007
        .word   0xe5cc1440
        .word   0x3affffed
        .word   0xe5940420
        .word   0xe5942584
        .word   0xe1520000
        .word   0x0a000003
        .word   0xe5840584
        .word   0xe59437dc
        .word   0xe3833c01
        .word   0xe58437dc
        .word   0xe59f2300
        .word   0xe594357c
        .word   0xe5c4144e
        .word   0xe0100002
        .word   0x13a02001
        .word   0x03a02000
        .word   0xe1530002
        .word   0x0a000005
        .word   0xe3500000
        .word   0x13a00001
        .word   0xe584057c
        .word   0xe59427dc
        .word   0xe3822040
        .word   0xe58427dc
        .word   0xe59404e4
        .word   0xe5c4144c
        .word   0xe31004ff
        .word   0x0a000004
        .word   0xe3c024ff
        .word   0xe5882000
        .word   0xe59427d8
        .word   0xe3822001
        .word   0xe58427d8
        .word   0xe5d40426
        .word   0xe3800008
        .word   0xe5c90000
        .word   0xe594052c
        .word   0xe3500000
        .word   0x0a000004
        .word   0xe3a02000
        .word   0xe584252c
        .word   0xe59427d8
        .word   0xe3822701
        .word   0xe58427d8
        .word   0xe594051c
        .word   0xe5c41438
        .word   0xe3c028ff
        .word   0xe3c220ff
        .word   0xe352020a
        .word   0x0a000007
        .word   0xe3c024ff
        .word   0xe3c22cff
        .word   0xe382320a
        .word   0xe59d2f34
        .word   0xe5823000
        .word   0xe59427d8
        .word   0xe3822901
        .word   0xe58427d8
        .word   0xe5d40434
        .word   0xe380200a
        .word   0xe59d0f38
        .word   0xe5c02000
        .word   0xe5970010
        .word   0xe5942538
        .word   0xe2400001
        .word   0xe1520000
        .word   0x0a000003
        .word   0xe5840538
        .word   0xe59427d8
        .word   0xe3822602
        .word   0xe58427d8
        .word   0xe5c4143b
        .word   0xe5970010
        .word   0xe594353c
        .word   0xe2842b01
        .word   0xe2400001
        .word   0xe203c0ff
        .word   0xe20000ff
        .word   0xe15c0000
        .word   0xe2822f4f
        .word   0x0a000005
        .word   0xe3c3c0ff
        .word   0xe180000c
        .word   0xe5820000
        .word   0xe59407d8
        .word   0xe3800501
        .word   0xe58407d8
        .word   0xe5d4243c
        .word   0xe3822001
        .word   0xe5c4243c
        .word   0xe5970010
        .word   0xe5942528
        .word   0xe2400001
        .word   0xe1520000
        .word   0x0a000003
        .word   0xe5840528
        .word   0xe59427d8
        .word   0xe3822802
        .word   0xe58427d8
        .word   0xe5c41437
        .word   0xe597000c
        .word   0xe5942534
        .word   0xe2400001
        .word   0xe1520000
        .word   0x0a000003
        .word   0xe5840534
        .word   0xe59427d8
        .word   0xe3822601
        .word   0xe58427d8
        .word   0xe5c4143a
        .word   0xe5d43014
        .word   0xe5941010
        .word   0xe3a00001
        .word   0xe5c40016
        .word   0xe3a02000
        .word   0xe5c43017
        .word   0xe3510000
        .word   0xe5c42014
        .word   0x15c40424
        .word   0x15910004
        .word   0x1584041c
        .word   0x05c42424
        .word   0xe594100c
        .word   0xe5910004
        .word   0xe5840418
        .word   0xe51f099c
        .word   0xe5900008
        .word   0xe5900000
        .word   0xe1500004
        .word   0x1a000043
        .word   0xe59f012c
        .word   0xe5943414
        .word   0xe5911000
        .word   0xe5900000
        .word   0xe1530001
        .word   0x0a000002
        .word   0xe5901000
        .word   0xe3811601
        .word   0xe5801000
        .word   0xe5903000
        .word   0xe3e01000
        .word   0xe3833507
        .word   0xe3833982
        .word   0xe5803000
        .word   0xe58411b4
        .word   0xe58411b8
        .word   0xe58411bc
        .word   0xe5943010
        .word   0xe3530000
        .word   0x0a000002
        .word   0xe5841348
        .word   0xe584134c
        .word   0xe5841350
        .word   0xe3a0c000
        .word   0xe1a0300c
        .word   0xe084e10c
        .word   0xe28cc001
        .word   0xe2833002
        .word   0xe084510c
        .word   0xe58e17d8
        .word   0xe3530006
        .word   0xe28cc001
        .word   0xe58517d8
        .word   0xbafffff6
        .word   0xe5901000
        .word   0xe3811402
        .word   0xe3811f4f
        .word   0xe5801000
        .word   0xe59030f8
        .word   0xe594ce2c
        .word   0xe153000c
        .word   0x0a000004
        .word   0xe5c02104
        .word   0xe3811b01
        .word   0xe5c02107
        .word   0xe5801000
        .word   0xe58020f8
        .word   0xe59010fc
        .word   0xe5943e30
        .word   0xe1510003
        .word   0x0a000004
        .word   0xe5901000
        .word   0xe5c02105
        .word   0xe3811b02
        .word   0xe5801000
        .word   0xe58020fc
        .word   0xe5901100
        .word   0xe5943e34
        .word   0xe1510003
        .word   0x0a000004
        .word   0xe5901000
        .word   0xe5c02106
        .word   0xe3811a01
        .word   0xe5801000
        .word   0xe5802100
        .word   0xe5c42017
        .word   0xe5d41424
        .word   0xe5c0101b
        .word   0xe594000c
        .word   0xe5900000
        .word   0xe5840414
        .word   0xe28ddb03
        .word   0xe28ddfdd
        .word   0xe8bd8ff0
        .word   0x00010700
        .word   0x08000100
        .word   0xfffff000
        .word   0x008ab81c
        .word   0xe59f1120
        .word   0xe5913000
        .word   0xe5931640
        .word   0xe1510000
        .word   0x05d3100c
        .word   0x03510000
        .word   0x012fff1e
        .word   0xe2401c15
        .word   0xe92d0070
        .word   0xe3510010
        .word   0x379ff101
        .word   0xea00003b
        .word   0x00763e60
        .word   0x00763e68
        .word   0x00763e70
        .word   0x00763e78
        .word   0x00763ec8
        .word   0x00763e90
        .word   0x00763eb8
        .word   0x00763ea8
        .word   0x00763eb0
        .word   0x00763ec0
        .word   0x00763e98
        .word   0x00763ed0
        .word   0x00763e88
        .word   0x00763ed8
        .word   0x00763ea0
        .word   0x00763e80
        .word   0xe3a01000
        .word   0xea00001c
        .word   0xe3a01001
        .word   0xea00001a
        .word   0xe3a01002
        .word   0xea000018
        .word   0xe3a01003
        .word   0xea000016
        .word   0xe3a01004
        .word   0xea000014
        .word   0xe3a01005
        .word   0xea000012
        .word   0xe3a01006
        .word   0xea000010
        .word   0xe3a01007
        .word   0xea00000e
        .word   0xe3a01008
        .word   0xea00000c
        .word   0xe3a01009
        .word   0xea00000a
        .word   0xe3a0100a
        .word   0xea000008
        .word   0xe3a0100b
        .word   0xea000006
        .word   0xe3a0100c
        .word   0xea000004
        .word   0xe3a0100d
        .word   0xea000002
        .word   0xe3a0100e
        .word   0xea000000
        .word   0xe3a0100f
        .word   0xe59f4038
        .word   0xe59f2038
        .word   0xe594c000
        .word   0xe5922000
        .word   0xe15c0002
        .word   0x2a000003
        .word   0xe59f5028
        .word   0xe28c6008
        .word   0xe88c0022
        .word   0xe5846000
        .word   0xe59f201c
        .word   0xe5821000
        .word   0xe5830640
        .word   0xe8bd0070
        .word   0xe12fff1e
        .word   0x008ab81c
        .word   0x008ab4f8
        .word   0x008ab4fc
        .word   0x000f0102
        .word   0x008ab830
        .size   A_662354, . - A_662354

@ FUN_00663f2c
        .global A_663f2c
        .type   A_663f2c, %function
A_663f2c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x1c
        ldr     r0, [sp, #0x28]
        ldr     r6, L664e78
        str     r0, [sp, #0x10]
        ldr     r1, [r0, #4]
        ldr     ip, [r6]
        add     r0, r0, r1, lsl #2
        cmp     ip, #0
        add     r5, r0, #8
        beq     L665124
        mov     r3, #0x24
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        movs    r4, r0
        beq     L665124
        mov     r0, #0
        str     r0, [r4]
        str     r0, [r4, #4]
        str     r0, [r4, #8]
        str     r0, [r4, #0xc]
        str     r0, [r4, #0x10]
        str     r0, [r4, #0x14]
        str     r0, [r4, #0x18]
        str     r0, [r4, #0x1c]
        str     r0, [r4, #0x20]
        ldr     ip, [r6]
        cmp     ip, #0
        beq     L663fc0
        ldr     r0, [r5, #0xc]
        mov     r2, #0
        mov     r1, #0x100
        lsl     r3, r0, #2
        mov     r0, #0x10000
        blx     ip
L663fc0:
        str     r0, [r4]
        ldr     r0, [r5, #0xc]
        str     r0, [r4, #4]
        ldr     ip, [r6]
        cmp     ip, #0
        moveq   r0, #0
        beq     L663ff4
        ldr     r0, [r5, #0x14]
        mov     r2, #0
        mov     r1, #0x100
        lsl     r3, r0, #2
        mov     r0, #0x10000
        blx     ip
L663ff4:
        str     r0, [r4, #8]
        ldr     r1, [r5, #0x14]
        str     r1, [r4, #0xc]
        ldr     r1, [r4]
        cmp     r1, #0
        cmpne   r0, #0
        beq     L665124
        ldr     r0, [r5, #0xc]
        ldr     r1, [r5, #8]
        cmp     r0, #0
        add     r1, r1, r5
        movne   r2, #0
        beq     L664040
L664028:
        ldr     r3, [r4]
        ldr     ip, [r1], #4
        subs    r0, r0, #1
        str     ip, [r3, r2, lsl #2]
        add     r2, r2, #1
        bne     L664028
L664040:
        ldrd    r0, r1, [r5, #0x10]
        cmp     r1, #0
        add     r0, r0, r5
        beq     L6640a4
        and     r1, r1, #1
        cmp     r1, #1
        bne     L664068
        ldr     r2, [r4, #8]
        ldr     r3, [r0], #8
        str     r3, [r2]
L664068:
        ldr     r2, [r5, #0x14]
        cmp     r2, r1
        movhi   r2, #4
        bls     L6640a4
L664078:
        ldr     ip, [r4, #8]
        ldr     r3, [r0], #8
        str     r3, [ip, r1, lsl #2]
        ldr     r7, [r4, #8]
        ldr     ip, [r0], #8
        add     r3, r2, r1, lsl #2
        add     r1, r1, #2
        str     ip, [r7, r3]
        ldr     r3, [r5, #0x14]
        cmp     r3, r1
        bhi     L664078
L6640a4:
        ldr     ip, [r6]
        cmp     ip, #0
        moveq   r0, #0
        beq     L6640d4
        ldr     r0, [sp, #0x10]
        mov     r1, #0xe8
        mov     r2, #0
        ldr     r0, [r0, #4]
        mul     r3, r0, r1
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L6640d4:
        str     r0, [r4, #0x10]
        ldr     r1, [sp, #0x10]
        cmp     r0, #0
        ldr     r1, [r1, #4]
        str     r1, [r4, #0x14]
        beq     L665124
        ldr     r1, [sp, #0x10]
        ldr     r2, [r1, #4]
        mov     r1, #0xe8
        mul     r1, r2, r1
        bl      Fn_1fddd8
        ldr     r0, [sp, #0x10]
        ldr     r1, [r0, #4]
        mov     r0, #0
        str     r0, [sp, #8]
        ldr     r0, [sp, #0x10]
        cmp     r1, #0
        add     r0, r0, #8
        str     r0, [sp, #0xc]
        bls     L665060
L664124:
        ldrd    r0, r1, [sp, #8]
        ldr     r2, [sp, #0x28]
        ldr     ip, [r1, r0, lsl #2]
        ldr     r0, [sp, #8]
        ldr     r1, [r4, #0x10]
        add     r6, ip, r2
        add     r3, r0, r0, lsl #1
        rsb     r5, r3, r0, lsl #5
        ldrb    r2, [r6, #6]
        mov     r0, #1
        strb    r2, [r1, r5, lsl #3]
        ldrb    r3, [r6, #7]
        ldr     r2, [r4, #0x10]
        add     ip, r0, r5, lsl #3
        and     r3, r3, #1
        mov     r1, #2
        strb    r3, [r2, ip]
        ldr     r3, [r4, #0x10]
        ldrb    r2, [r6, #0x14]
        add     r1, r1, r5, lsl #3
        mov     r0, #3
        strb    r2, [r3, r1]
        ldr     r1, [r4, #0x10]
        add     r2, r0, r5, lsl #3
        ldrb    r0, [r6, #0x15]
        strb    r0, [r1, r2]
        ldr     ip, [r4, #0x10]
        ldrb    r2, [r6, #0x16]
        mov     r1, #4
        add     r3, r1, r5, lsl #3
        mov     r0, #5
        strb    r2, [ip, r3]
        ldr     r2, [r4, #0x10]
        add     r3, r0, r5, lsl #3
        ldrb    r0, [r6, #0x17]
        mov     r1, #6
        strb    r0, [r2, r3]
        ldr     r2, [r4, #0x10]
        add     r0, r1, r5, lsl #3
        ldrh    r1, [r6, #0x10]
        strh    r1, [r2, r0]
        ldr     r3, [r4, #0x10]
        ldrh    r2, [r6, #0x12]
        mov     r1, #8
        add     ip, r1, r5, lsl #3
        mov     r0, #0x14
        strh    r2, [r3, ip]
        add     r2, r0, r5, lsl #3
        ldr     r0, [r4, #0x10]
        ldr     r3, [r6, #8]
        mov     r1, #0x18
        str     r3, [r0, r2]
        ldr     r2, [r4, #0x10]
        add     r0, r1, r5, lsl #3
        ldr     r1, [r6, #0xc]
        str     r1, [r2, r0]
        ldr     r0, [r6, #0x1c]
        ldr     r1, [r6, #0x18]
        cmp     r0, #0
        add     r7, r1, r6
        beq     L6642c4
        and     r0, r0, #1
        cmp     r0, #0
        movhi   r2, #0x34
        mov     r1, #0
        addhi   r3, r2, r5, lsl #3
        bls     L664260
L664230:
        add     r2, r1, r1, lsl #2
        add     r2, r7, r2, lsl #2
        ldrh    r2, [r2]
        cmp     r2, #2
        bne     L664254
        ldr     r2, [r4, #0x10]
        ldr     ip, [r2, r3]
        add     ip, ip, #1
        str     ip, [r2, r3]
L664254:
        add     r1, r1, #1
        cmp     r1, r0
        blo     L664230
L664260:
        ldr     r1, [r6, #0x1c]
        cmp     r0, r1
        movlo   r1, #0x34
        addlo   r1, r1, r5, lsl #3
        bhs     L6642c4
L664274:
        add     r2, r0, r0, lsl #2
        add     r2, r7, r2, lsl #2
        ldrh    r3, [r2]
        cmp     r3, #2
        bne     L664298
        ldr     r3, [r4, #0x10]
        ldr     ip, [r3, r1]
        add     ip, ip, #1
        str     ip, [r3, r1]
L664298:
        ldrh    r2, [r2, #0x14]
        cmp     r2, #2
        bne     L6642b4
        ldr     r2, [r4, #0x10]
        ldr     r3, [r2, r1]
        add     r3, r3, #1
        str     r3, [r2, r1]
L6642b4:
        ldr     r2, [r6, #0x1c]
        add     r0, r0, #2
        cmp     r2, r0
        bhi     L664274
L6642c4:
        ldr     r1, [r4, #0x10]
        mov     r0, #0x34
        add     r0, r0, r5, lsl #3
        str     r0, [sp]
        ldr     r1, [r1, r0]
        cmp     r1, #0
        beq     L664330
        ldr     r0, L664e78
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r0, #0
        beq     L664308
        lsl     r3, r1, #4
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L664308:
        ldr     r2, [r4, #0x10]
        mov     r1, #0x30
        add     r1, r1, r5, lsl #3
        cmp     r0, #0
        str     r0, [r2, r1]
        ldr     r0, [r4, #0x10]
        beq     L665060
        ldr     r2, [sp]
        mov     r1, #0
        str     r1, [r0, r2]
L664330:
        ldr     r0, [r6, #0x1c]
        mov     r1, #0
        cmp     r0, #0
        bls     L664494
        mov     r2, #0x1c
        add     r2, r2, r5, lsl #3
        mov     r0, #0x30
        str     r2, [sp, #4]
        mov     ip, #4
        mov     r8, #8
        mov     sl, #0xc
        add     r2, r0, r5, lsl #3
L664360:
        add     r0, r1, r1, lsl #2
        add     r0, r7, r0, lsl #2
        ldrh    r3, [r0]
        cmp     r3, #0
        beq     L664388
        cmp     r3, #1
        beq     L6643b8
        cmp     r3, #2
        bne     L664484
        b       L6643e0
L664388:
        ldr     r3, [r0, #4]
        cmp     r3, #0
        beq     L664484
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp, #4]
        ldrh    fp, [r0, #2]
        mov     r0, #1
        ldr     sb, [r3, sb]
        orr     sb, sb, r0, lsl fp
        ldr     r0, [sp, #4]
        str     sb, [r3, r0]
        b       L664484
L6643b8:
        ldrh    r3, [r0, #2]
        cmp     r3, #4
        bhs     L664484
        ldr     sb, [r4, #0x10]
        ldr     fp, [r0, #4]
        mov     r0, #0x20
        add     r0, r0, r3, lsl #2
        add     r3, sb, r5, lsl #3
        str     fp, [r3, r0]
        b       L664484
L6643e0:
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        ldrh    fp, [r0, #2]
        ldr     lr, [r3, r2]
        ldr     r3, [r3, sb]
        str     fp, [lr, r3, lsl #4]
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        ldr     fp, [r0, #0x10]
        ldr     lr, [r0, #0xc]
        ldr     sb, [r3, sb]
        ldr     r3, [r3, r2]
        lsl     fp, fp, #8
        orr     fp, fp, lr, lsr #16
        add     sb, ip, sb, lsl #4
        str     fp, [r3, sb]
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        ldr     fp, [r0, #0xc]
        ldr     lr, [r0, #8]
        ldr     sb, [r3, sb]
        ldr     r3, [r3, r2]
        lsl     fp, fp, #0x10
        orr     fp, fp, lr, lsr #8
        add     sb, r8, sb, lsl #4
        str     fp, [r3, sb]
        ldr     r3, [r4, #0x10]
        ldr     fp, [sp]
        ldr     sb, [r0, #4]
        ldr     r0, [r0, #8]
        ldr     fp, [r3, fp]
        ldr     r3, [r3, r2]
        orr     r0, sb, r0, lsl #24
        add     sb, sl, fp, lsl #4
        str     r0, [r3, sb]
        ldr     r0, [r4, #0x10]
        ldr     r3, [sp]
        ldr     r3, [r0, r3]
        add     sb, r3, #1
        ldr     r3, [sp]
        str     sb, [r0, r3]
L664484:
        ldr     r0, [r6, #0x1c]
        add     r1, r1, #1
        cmp     r0, r1
        bhi     L664360
L664494:
        ldr     r1, [r4, #0x10]
        mov     r3, #0xc
        mov     ip, #0
        add     r2, r3, r5, lsl #3
        mov     r0, ip
        str     ip, [r1, r2]
        mov     r1, #1
L6644b0:
        ldrh    r3, [r6, #0x10]
        tst     r3, r1, lsl r0
        beq     L6644cc
        ldr     r3, [r4, #0x10]
        ldr     r7, [r3, r2]
        add     r7, r7, #1
        str     r7, [r3, r2]
L6644cc:
        ldrh    r7, [r6, #0x10]
        add     r3, r0, #1
        tst     r7, r1, lsl r3
        beq     L6644ec
        ldr     r3, [r4, #0x10]
        ldr     r7, [r3, r2]
        add     r7, r7, #1
        str     r7, [r3, r2]
L6644ec:
        add     r0, r0, #2
        cmp     r0, #0x10
        blo     L6644b0
        ldr     r7, [r4, #0x10]
        mov     r3, #0x10
        add     r2, r3, r5, lsl #3
        mov     r0, #0
        str     r0, [r7, r2]
L66450c:
        ldrh    r3, [r6, #0x12]
        tst     r3, r1, lsl r0
        beq     L664528
        ldr     r3, [r4, #0x10]
        ldr     ip, [r3, r2]
        add     ip, ip, #1
        str     ip, [r3, r2]
L664528:
        ldrh    r3, [r6, #0x12]
        add     ip, r0, #1
        mov     r1, #1
        tst     r3, r1, lsl ip
        beq     L66454c
        ldr     r3, [r4, #0x10]
        ldr     ip, [r3, r2]
        add     ip, ip, #1
        str     ip, [r3, r2]
L66454c:
        add     r0, r0, #2
        cmp     r0, #0x10
        blo     L66450c
        ldr     r0, [r6, #0x28]
        add     r0, r0, r6
        str     r0, [sp]
        ldr     r1, [r6, #0x2c]
        ldrh    r7, [r6, #0x12]
        cmp     r1, #0
        addne   r2, r0, #2
        movne   r3, #1
        beq     L6645a0
L66457c:
        ldrh    ip, [r0]
        cmp     ip, #9
        bne     L664590
        ldrh    ip, [r2]
        bic     r7, r7, r3, lsl ip
L664590:
        subs    r1, r1, #1
        add     r0, r0, #8
        add     r2, r2, #8
        bne     L66457c
L6645a0:
        ldr     ip, [r4, #0x10]
        ldr     r1, L664e7c
        mov     r0, #1
        add     ip, ip, r5, lsl #3
        mov     r2, r0
        str     r1, [ip, #0x38]
L6645b8:
        ldr     ip, [r4, #0x10]
        mov     r3, #0x38
        add     r8, r3, r0, lsl #2
        add     ip, ip, r5, lsl #3
        add     r2, r2, #2
        str     r1, [ip, r8]
        ldr     r8, [r4, #0x10]
        add     ip, r0, #1
        cmp     r2, #7
        add     sb, r3, ip, lsl #2
        add     ip, r8, r5, lsl #3
        add     r0, r0, #2
        str     r1, [ip, sb]
        blo     L6645b8
        ldr     r1, [r6, #0x2c]
        mov     r0, #0
        str     r0, [sp, #4]
        cmp     r1, #0
        bls     L664840
L664604:
        ldrd    r0, r1, [sp]
        mov     ip, #0
        mov     r3, ip
        add     r0, r0, r1, lsl #3
        mov     r1, ip
        ldrh    r0, [r0]
        cmp     r0, #0xa
        ldrlo   pc, [pc, r0, lsl #2]
        b       L664684
L664628:
        .word   0x00764684
L66462c:
        .word   0x00764650
L664630:
        .word   0x00764658
L664634:
        .word   0x00764670
L664638:
        .word   0x00764660
L66463c:
        .word   0x00764678
L664640:
        .word   0x00764680
L664644:
        .word   0x00764684
L664648:
        .word   0x00764668
L66464c:
        .word   0x00764828
        mov     r1, #4
        b       L664684
        mov     r1, #8
        b       L664684
        mov     r1, #0x10
        b       L664684
        mov     r1, #0x12
        b       L664684
        mov     r1, #0xc
        b       L664684
        mov     r1, #0xe
        b       L664684
        mov     r1, #0x16
L664684:
        ldm     sp, {r0, r2}
        add     r8, r0, r2, lsl #3
        mov     r0, #0
        ldrh    r2, [r8, #2]
        cmp     r2, #0
        beq     L6646b4
L66469c:
        lsr     sb, r7, r0
        tst     sb, #1
        addne   ip, ip, #1
        add     r0, r0, #1
        cmp     r2, r0
        bne     L66469c
L6646b4:
        mov     sb, #0x38
        mov     r0, #0x54
        mov     r2, #0
        add     r0, r0, r5, lsl #3
        add     ip, sb, ip, lsl #2
L6646c8:
        ldrh    sl, [r8, #4]
        mov     sb, #1
        tst     sl, sb, lsl r2
        beq     L6647d0
        ldr     sb, [r4, #0x10]
        lsl     fp, r2, #3
        cmp     r1, #0xe
        add     sb, sb, r5, lsl #3
        mov     sl, #0xff
        ldr     lr, [sb, ip]
        lsl     sl, sl, fp
        bic     sl, lr, sl
        str     sl, [sb, ip]
        ldr     sb, [r4, #0x10]
        orr     sl, sl, r1, lsl fp
        add     sb, sb, r5, lsl #3
        add     r3, r3, #1
        str     sl, [sb, ip]
        beq     L664788
        bgt     L66473c
        cmp     r1, #2
        beq     L664758
        cmp     r1, #4
        beq     L6647bc
        cmp     r1, #8
        beq     L664768
        cmp     r1, #0xc
        bne     L6647cc
        b       L664778
L66473c:
        cmp     r1, #0x10
        beq     L6647a8
        cmp     r1, #0x12
        beq     L6647bc
        cmp     r1, #0x16
        bne     L6647cc
        b       L664798
L664758:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #1
        b       L6647b4
L664768:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #2
        b       L6647b4
L664778:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #0x100
        b       L6647b4
L664788:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #0x200
        b       L6647b4
L664798:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #0x400
        b       L6647b4
L6647a8:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #0x10000
L6647b4:
        str     sl, [sb, r0]
        b       L6647cc
L6647bc:
        ldr     sb, [r4, #0x10]
        ldr     sl, [sb, r0]
        orr     sl, sl, #0x1000000
        str     sl, [sb, r0]
L6647cc:
        add     r1, r1, #1
L6647d0:
        ldrh    sb, [r8]
        sub     sb, sb, #3
        cmp     sb, #6
        ldrlo   pc, [pc, sb, lsl #2]
        b       L66481c
L6647e4:
        .word   0x00764808
L6647e8:
        .word   0x007647fc
L6647ec:
        .word   0x00764808
L6647f0:
        .word   0x00764808
L6647f4:
        .word   0x0076481c
L6647f8:
        .word   0x00764814
        cmp     r3, #1
        beq     L664828
        b       L66481c
        cmp     r3, #2
        beq     L664828
        b       L66481c
        cmp     r3, #3
        beq     L664828
L66481c:
        add     r2, r2, #1
        cmp     r2, #4
        blt     L6646c8
L664828:
        ldr     r0, [sp, #4]
        ldr     r1, [r6, #0x2c]
        add     r0, r0, #1
        cmp     r1, r0
        str     r0, [sp, #4]
        bhi     L664604
L664840:
        ldr     r1, [r6, #0x2c]
        cmp     r1, r0
        bne     L665060
        ldr     r8, L664e78
        ldr     ip, [r8]
        cmp     ip, #0
        moveq   r0, #0
        beq     L664874
        ldr     r3, [r6, #0x3c]
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L664874:
        ldr     r2, [r4, #0x10]
        mov     r1, #0xe0
        add     r1, r1, r5, lsl #3
        str     r1, [sp, #0x14]
        cmp     r0, #0
        str     r0, [r2, r1]
        beq     L665060
        add     r1, r6, #0x38
        ldm     r1, {r1, r2}
        add     r1, r1, r6
        bl      Fn_202b20
        ldr     r1, [r4, #0x10]
        ldr     r2, [r6, #0x3c]
        mov     r0, #0xe4
        add     r0, r0, r5, lsl #3
        str     r2, [r1, r0]
        ldr     r1, [r6, #0x30]
        ldr     r0, [r6, #0x34]
        add     r1, r1, r6
        cmp     r0, #0
        str     r1, [sp, #4]
        beq     L664978
        and     r0, r0, #1
        cmp     r0, #0
        movhi   r2, #0x5c
        mov     r1, #0
        addhi   r2, r2, r5, lsl #3
        bls     L664914
L6648e4:
        ldr     r3, [sp, #4]
        add     r3, r3, r1, lsl #3
        ldrh    r3, [r3, #4]
        cmp     r3, #0x10
        blo     L664908
        ldr     r3, [r4, #0x10]
        ldr     ip, [r3, r2]
        add     ip, ip, #1
        str     ip, [r3, r2]
L664908:
        add     r1, r1, #1
        cmp     r1, r0
        blo     L6648e4
L664914:
        ldr     r1, [r6, #0x34]
        cmp     r0, r1
        movlo   r1, #0x5c
        addlo   r1, r1, r5, lsl #3
        bhs     L664978
L664928:
        ldr     r2, [sp, #4]
        add     r2, r2, r0, lsl #3
        ldrh    r3, [r2, #4]
        cmp     r3, #0x10
        blo     L66494c
        ldr     r3, [r4, #0x10]
        ldr     ip, [r3, r1]
        add     ip, ip, #1
        str     ip, [r3, r1]
L66494c:
        ldrh    r2, [r2, #0xc]
        cmp     r2, #0x10
        blo     L664968
        ldr     r2, [r4, #0x10]
        ldr     r3, [r2, r1]
        add     r3, r3, #1
        str     r3, [r2, r1]
L664968:
        ldr     r2, [r6, #0x34]
        add     r0, r0, #2
        cmp     r2, r0
        bhi     L664928
L664978:
        ldr     r1, [r4, #0x10]
        mov     r0, #0x5c
        add     r7, r0, r5, lsl #3
        ldr     r0, [r1, r7]
        cmp     r0, #0
        beq     L6649dc
        ldr     ip, [r8]
        cmp     ip, #0
        moveq   r0, #0
        beq     L6649b8
        add     r0, r0, r0, lsl #2
        mov     r2, #0
        lsl     r3, r0, #2
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L6649b8:
        ldr     r2, [r4, #0x10]
        mov     r1, #0x58
        add     r1, r1, r5, lsl #3
        cmp     r0, #0
        str     r0, [r2, r1]
        ldr     r0, [r4, #0x10]
        movne   r1, #0
        strne   r1, [r0, r7]
        beq     L665060
L6649dc:
        ldr     r0, [r6, #0x34]
        mov     r1, #0
        cmp     r0, #0
        bls     L665044
        mov     r0, #0x58
        add     r0, r0, r5, lsl #3
        str     r0, [sp]
L6649f8:
        ldr     r8, [r4, #0x10]
        ldr     r0, [sp, #4]
        ldr     ip, [sp, #0x14]
        mov     sb, #0
        ldr     sl, [r0, r1, lsl #3]!
        ldr     ip, [r8, ip]
        mvn     r2, #0
        mov     r3, sb
        add     sl, sl, ip
        ldrb    ip, [sl]
        cmp     ip, #0
        beq     L664a80
L664a28:
        ldrsb   ip, [sl, r3]
        cmp     ip, #0x2e
        moveq   r2, r3
        cmnne   r2, #1
        beq     L664a5c
        cmp     ip, #0x78
        cmpne   ip, #0x79
        beq     L664a78
        cmp     ip, #0x7a
        cmpne   ip, #0x77
        mvnne   r2, #0
        movne   sb, #0
        beq     L664a78
L664a5c:
        add     r3, r3, #1
        ldrb    ip, [sl, r3]
        cmp     ip, #0
        bne     L664a28
        cmp     sb, #0
        bne     L664a84
        b       L664a80
L664a78:
        add     sb, sb, #1
        b       L664a5c
L664a80:
        mov     sb, #4
L664a84:
        ldrh    r3, [r0, #6]
        cmp     r3, #0x10
        bhs     L664bac
        ldrh    ip, [r0, #4]
        subs    r3, r3, ip
        beq     L664ab8
        cmp     r3, #1
        beq     L664b3c
        cmp     r3, #2
        beq     L664b54
        cmp     r3, #3
        bne     L664b80
        b       L664b6c
L664ab8:
        cmp     sb, #1
        beq     L664adc
        cmp     sb, #2
        beq     L664af4
        cmp     sb, #3
        beq     L664b0c
        cmp     sb, #4
        bne     L664b80
        b       L664b24
L664adc:
        add     sb, r8, r5, lsl #3
        ldr     r8, L664e80
        mov     r3, #0x60
        add     r3, r3, ip, lsl #3
        str     r8, [sb, r3]
        b       L664b80
L664af4:
        add     sb, r8, r5, lsl #3
        ldr     r8, L664e84
        mov     r3, #0x60
        add     r3, r3, ip, lsl #3
        str     r8, [sb, r3]
        b       L664b80
L664b0c:
        ldr     r3, L664e88
        mov     sb, #0x60
        add     r8, r8, r5, lsl #3
        add     ip, sb, ip, lsl #3
        str     r3, [r8, ip]
        b       L664b80
L664b24:
        add     sb, r8, r5, lsl #3
        ldr     r8, L664e8c
        mov     r3, #0x60
        add     r3, r3, ip, lsl #3
        str     r8, [sb, r3]
        b       L664b80
L664b3c:
        add     sb, r8, r5, lsl #3
        ldr     r8, L664e90
        mov     r3, #0x60
        add     r3, r3, ip, lsl #3
        str     r8, [sb, r3]
        b       L664b80
L664b54:
        ldr     r3, L664e94
        mov     sb, #0x60
        add     r8, r8, r5, lsl #3
        add     ip, sb, ip, lsl #3
        str     r3, [r8, ip]
        b       L664b80
L664b6c:
        add     sb, r8, r5, lsl #3
        ldr     r8, L664e98
        mov     r3, #0x60
        add     r3, r3, ip, lsl #3
        str     r8, [sb, r3]
L664b80:
        ldrh    r8, [r0, #4]
        ldr     ip, [r4, #0x10]
        mov     r3, #0x64
        ldr     r0, [r0]
        add     r8, r3, r8, lsl #3
        add     r3, ip, r5, lsl #3
        cmn     r2, #1
        str     r0, [r3, r8]
        movne   r0, #0
        strbne  r0, [sl, r2]
        b       L665034
L664bac:
        cmp     r3, #0x70
        bhs     L664ea0
        ldr     ip, [r8, r7]
        ldr     lr, [sp]
        ldrh    fp, [r0, #4]
        cmp     sb, #1
        add     ip, ip, ip, lsl #2
        ldr     r8, [r8, lr]
        mov     lr, #0x10
        sub     r3, r3, fp
        add     ip, lr, ip, lsl #2
        add     r3, r3, #1
        str     r3, [r8, ip]
        beq     L664c00
        cmp     sb, #2
        beq     L664c1c
        cmp     sb, #3
        beq     L664c60
        cmp     sb, #4
        bne     L664cd8
        b       L664cb4
L664c00:
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        ldr     ip, L664e80
        ldr     r8, [r3, r7]
        ldr     r3, [r3, sb]
        add     r8, r8, r8, lsl #2
        b       L664c3c
L664c1c:
        tst     r3, #1
        ldr     r3, [r4, #0x10]
        beq     L664c44
        ldr     r8, [sp]
        ldr     sb, [r3, r7]
        ldr     ip, L664e84
        ldr     r3, [r3, r8]
        add     r8, sb, sb, lsl #2
L664c3c:
        str     ip, [r3, r8, lsl #2]
        b       L664cd8
L664c44:
        ldr     ip, [sp]
        ldr     sb, [r3, r7]
        ldr     r8, L664e90
        ldr     r3, [r3, ip]
        add     ip, sb, sb, lsl #2
        str     r8, [r3, ip, lsl #2]
        b       L664cd8
L664c60:
        ldr     ip, L664e9c
        smull   r8, ip, ip, r3
        sub     ip, ip, ip, asr #31
        sub     ip, ip, ip, lsl #2
        adds    r3, r3, ip
        ldr     r3, [r4, #0x10]
        beq     L664c98
        ldr     ip, [sp]
        ldr     sb, [r3, r7]
        ldr     r8, L664e88
        ldr     r3, [r3, ip]
        add     ip, sb, sb, lsl #2
        str     r8, [r3, ip, lsl #2]
        b       L664cd8
L664c98:
        ldr     ip, [sp]
        ldr     sb, [r3, r7]
        ldr     r8, L664e94
        ldr     r3, [r3, ip]
        add     ip, sb, sb, lsl #2
        str     r8, [r3, ip, lsl #2]
        b       L664cd8
L664cb4:
        tst     r3, #3
        ldr     r3, [r4, #0x10]
        beq     L664d60
        ldr     ip, [sp]
        ldr     sb, [r3, r7]
        ldr     r8, L664e8c
        ldr     r3, [r3, ip]
        add     ip, sb, sb, lsl #2
        str     r8, [r3, ip, lsl #2]
L664cd8:
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        ldrh    r8, [r0, #4]
        mov     ip, #4
        ldr     fp, [r3, r7]
        ldr     sb, [r3, sb]
        sub     r3, r8, #0x10
        cmn     r2, #1
        add     r8, fp, fp, lsl #2
        add     ip, ip, r8, lsl #2
        str     r3, [sb, ip]
        beq     L664e1c
        add     r3, sl, r2
        ldrsb   r3, [r3, #1]
        cmp     r3, #0x77
        beq     L664df4
        cmp     r3, #0x78
        beq     L664d7c
        cmp     r3, #0x79
        beq     L664da4
        cmp     r3, #0x7a
        beq     L664dcc
        ldr     r8, [r4, #0x10]
        ldr     sb, [sp]
        mov     ip, #8
        mov     r3, #0
        ldr     fp, [r8, r7]
        ldr     r8, [r8, sb]
        add     sb, fp, fp, lsl #2
        add     ip, ip, sb, lsl #2
        str     r3, [r8, ip]
L664d54:
        mov     r3, #0
        strb    r3, [sl, r2]
        b       L664e40
L664d60:
        ldr     ip, [sp]
        ldr     sb, [r3, r7]
        ldr     r8, L664e98
        ldr     r3, [r3, ip]
        add     ip, sb, sb, lsl #2
        str     r8, [r3, ip, lsl #2]
        b       L664cd8
L664d7c:
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        mov     r8, #8
        mov     ip, #0
        ldr     fp, [r3, r7]
        ldr     sb, [r3, sb]
        add     r3, fp, fp, lsl #2
        add     r3, r8, r3, lsl #2
        str     ip, [sb, r3]
        b       L664d54
L664da4:
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        mov     r8, #8
        mov     ip, #1
        ldr     fp, [r3, r7]
        ldr     r3, [r3, sb]
        add     sb, fp, fp, lsl #2
        add     r8, r8, sb, lsl #2
        str     ip, [r3, r8]
        b       L664d54
L664dcc:
        ldr     r3, [r4, #0x10]
        ldr     sb, [sp]
        mov     r8, #8
        mov     ip, #2
        ldr     fp, [r3, r7]
        ldr     r3, [r3, sb]
        add     sb, fp, fp, lsl #2
        add     r8, r8, sb, lsl #2
        str     ip, [r3, r8]
        b       L664d54
L664df4:
        ldr     r3, [r4, #0x10]
        ldr     ip, [sp]
        mov     r8, #8
        mov     sb, #3
        ldr     fp, [r3, r7]
        ldr     r3, [r3, ip]
        add     ip, fp, fp, lsl #2
        add     ip, r8, ip, lsl #2
        str     sb, [r3, ip]
        b       L664d54
L664e1c:
        ldr     r2, [r4, #0x10]
        ldr     r8, [sp]
        mov     ip, #8
        mov     r3, #0
        ldr     sb, [r2, r7]
        ldr     r2, [r2, r8]
        add     r8, sb, sb, lsl #2
        add     ip, ip, r8, lsl #2
        str     r3, [r2, ip]
L664e40:
        ldr     r2, [r4, #0x10]
        ldr     r3, [sp]
        ldr     ip, [r0]
        mov     r0, #0xc
        ldr     r8, [r2, r7]
        ldr     r3, [r2, r3]
        add     r2, r8, r8, lsl #2
        add     r0, r0, r2, lsl #2
        str     ip, [r3, r0]
        ldr     r0, [r4, #0x10]
        ldr     r2, [r0, r7]
        add     r2, r2, #1
        str     r2, [r0, r7]
        b       L665034
L664e78:
        .word   0x008aab18
L664e7c:
        .word   0x1f1f1f1f
L664e80:
        .word   0x00001406
L664e84:
        .word   0x00008b50
L664e88:
        .word   0x00008b51
L664e8c:
        .word   0x00008b52
L664e90:
        .word   0x00008b5a
L664e94:
        .word   0x00008b5b
L664e98:
        .word   0x00008b5c
L664e9c:
        .word   0x55555556
L664ea0:
        cmp     r3, #0x78
        ldr     r3, [r8, r7]
        ldr     r2, [sp]
        bhs     L664f74
        add     r3, r3, r3, lsl #2
        ldr     fp, [r8, r2]
        ldr     r2, L66512c
        mov     ip, #4
        mov     sb, #8
        str     r2, [fp, r3, lsl #2]
        ldrh    r3, [r0, #4]
        ldr     r2, [r4, #0x10]
        mov     r8, #0
        sub     lr, r3, #0x70
        ldr     r3, [sp]
        mov     sl, #0xc
        mov     fp, #0x10
        ldr     r3, [r2, r3]
        ldr     r2, [r2, r7]
        add     r2, r2, r2, lsl #2
        add     r2, ip, r2, lsl #2
        str     lr, [r3, r2]
        ldr     r2, [r4, #0x10]
        ldr     r3, [sp]
        ldr     ip, [r2, r7]
        ldr     r2, [r2, r3]
        add     r3, ip, ip, lsl #2
        add     r3, sb, r3, lsl #2
        str     r8, [r2, r3]
        ldr     r2, [r4, #0x10]
        ldr     r3, [sp]
        ldr     ip, [r0]
        ldr     r8, [r2, r7]
        ldr     r2, [r2, r3]
        add     r3, r8, r8, lsl #2
        add     r3, sl, r3, lsl #2
        str     ip, [r2, r3]
        ldr     r2, [r4, #0x10]
        ldrh    r3, [r0, #6]
        ldrh    r8, [r0, #4]
        ldr     ip, [sp]
        ldr     r0, [r2, r7]
        sub     r3, r3, r8
        ldr     r2, [r2, ip]
        add     ip, r0, r0, lsl #2
        add     r0, r3, #1
        add     r3, fp, ip, lsl #2
        str     r0, [r2, r3]
        ldr     r0, [r4, #0x10]
        ldr     r2, [r0, r7]
        add     r2, r2, #1
        str     r2, [r0, r7]
        b       L665034
L664f74:
        ldr     lr, [r8, r2]
        ldr     fp, L665130
        add     r2, r3, r3, lsl #2
        mov     ip, #4
        str     fp, [lr, r2, lsl #2]
        ldrh    r3, [r0, #4]
        ldr     r2, [r4, #0x10]
        mov     sb, #8
        sub     lr, r3, #0x78
        ldr     r3, [sp]
        mov     r8, #0
        mov     sl, #0xc
        mov     fp, #0x10
        ldr     r3, [r2, r3]
        ldr     r2, [r2, r7]
        add     r2, r2, r2, lsl #2
        add     r2, ip, r2, lsl #2
        str     lr, [r3, r2]
        ldr     r2, [r4, #0x10]
        ldr     r3, [sp]
        ldr     ip, [r2, r7]
        ldr     r2, [r2, r3]
        add     r3, ip, ip, lsl #2
        add     r3, sb, r3, lsl #2
        str     r8, [r2, r3]
        ldr     r2, [r4, #0x10]
        ldr     r3, [sp]
        ldr     ip, [r0]
        ldr     r8, [r2, r7]
        ldr     r2, [r2, r3]
        add     r3, r8, r8, lsl #2
        add     r3, sl, r3, lsl #2
        str     ip, [r2, r3]
        ldr     r2, [r4, #0x10]
        ldrh    ip, [r0, #6]
        ldrh    r8, [r0, #4]
        ldr     r3, [sp]
        ldr     r0, [r2, r7]
        ldr     r3, [r2, r3]
        add     r0, r0, r0, lsl #2
        sub     r2, ip, r8
        add     r0, fp, r0, lsl #2
        add     r2, r2, #1
        str     r2, [r3, r0]
        ldr     r0, [r4, #0x10]
        ldr     r2, [r0, r7]
        add     r2, r2, #1
        str     r2, [r0, r7]
L665034:
        ldr     r0, [r6, #0x34]
        add     r1, r1, #1
        cmp     r0, r1
        bhi     L6649f8
L665044:
        ldr     r0, [sp, #0x10]
        ldr     r1, [r0, #4]
        ldr     r0, [sp, #8]
        add     r0, r0, #1
        cmp     r1, r0
        str     r0, [sp, #8]
        bhi     L664124
L665060:
        ldr     r0, [sp, #0x10]
        ldr     r1, [r0, #4]
        ldr     r0, [sp, #8]
        cmp     r1, r0
        bne     L665124
        ldr     r0, [sp, #0x1c]
        ldr     r7, L665134
        mov     r6, #0
        cmp     r0, #0
        ble     L6650f8
L665088:
        ldr     r0, [sp, #0x20]
        ldr     r1, [r7, #8]
        ldr     r0, [r0, r6, lsl #2]
        lsl     r2, r0, #0x17
        lsr     r2, r2, #0x17
        add     r1, r1, r2, lsl #2
        ldr     r5, [r1, #0x808]
        cmp     r5, #0
        beq     L6650c0
L6650ac:
        ldr     r1, [r5, #8]
        cmp     r1, r0
        ldrne   r5, [r5, #0x18]
        cmpne   r5, #0
        bne     L6650ac
L6650c0:
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L6650e0
        ldr     r1, [r0, #0x18]
        subs    r1, r1, #1
        str     r1, [r0, #0x18]
        ldr     r0, [r5]
        bleq    Fn_66b7b4
L6650e0:
        str     r6, [r5, #4]
        str     r4, [r5]
        ldr     r0, [sp, #0x1c]
        add     r6, r6, #1
        cmp     r6, r0
        blt     L665088
L6650f8:
        ldr     r0, [sp, #0x1c]
        mov     r1, #0
        strd    r0, r1, [r4, #0x18]
        ldr     r0, [r7, #8]
        add     r0, r0, #0x1000
        ldr     r1, [r0, #8]
        str     r1, [r4, #0x20]
        ldr     r1, [r0, #8]
        cmp     r1, #0
        strne   r4, [r1, #0x1c]
        str     r4, [r0, #8]
L665124:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L66512c:
        .word   0x00008b54
L665130:
        .word   0x00008b56
L665134:
        .word   0x008ab508
        .size   A_663f2c, . - A_663f2c

@ FUN_00665138
        .global A_665138
        .type   A_665138, %function
A_665138:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x24
        mov     r6, r1
        mov     sl, r0
        add     r0, sp, #0x50
        mov     sb, r3
        ldm     r0, {r3, r8}
        add     r2, sp, #0x20
        ldr     r0, L6652e8
        ldr     r5, [sp, #0x58]
        ldr     r7, [sp, #0x48]
        add     r1, sp, #0x1c
        ldr     r4, [r0]
        mov     r0, r3
        bl      Fn_675ca8
        lsr     ip, sl, #0x10
        uxth    r1, sl
        lsl     ip, ip, #0x10
        tst     ip, #0xff000000
        bne     L665198
        cmp     r5, #0
        movne   r0, #0x1000000
        moveq   r0, #0x2000000
        orr     ip, ip, r0
L665198:
        tst     ip, #0xff0000
        bne     L6651b0
        cmp     r5, #0
        movne   r0, #0x10000
        moveq   r0, #0x30000
        orr     ip, ip, r0
L6651b0:
        ldr     r2, L6652ec
        ldr     r0, L6652f0
        mov     r3, #0
        cmp     r1, r2
        sub     sl, r1, r2
        rsb     r2, r6, #0
        beq     L665204
        bge     L6651f4
        sub     sl, r1, #0xd00
        subs    sl, sl, #0xe1
        beq     L665268
        sub     sl, sl, #0x7400
        subs    sl, sl, #0x334
        cmpne   sl, #1
        beq     L665204
L6651ec:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6651f4:
        cmp     sl, #1
        cmpne   sl, #2
        cmpne   sl, #3
        bne     L6651ec
L665204:
        ldr     sl, [r4, #0x58]
        ldr     r0, [r0]
        add     fp, r4, sl, lsl #2
        ldr     fp, [fp, #0x68]
        cmp     fp, #0
        ldreq   r0, [r0, #4]
        addne   r0, r0, sl, lsl #2
        ldrb    sl, [sp, #0x20]
        add     fp, sp, #0x10
        ldrne   r0, [r0, #0x81c]
        ldrne   r0, [r0]
        str     r5, [sp, #0xc]
        stm     fp, {r3, sl, ip}
        add     sl, sp, #4
        ldr     r3, [sp, #0x1c]
        str     r7, [sp]
        cmp     r6, #0
        stm     sl, {r3, r8}
        add     r3, r1, r1, lsl #4
        ldr     r1, L6652f4
        add     r3, r0, r3, lsl #2
        moveq   r2, #1
        add     r1, r1, r3
        mov     r3, sb
        b       L6652bc
L665268:
        ldr     r1, [r4, #0x58]
        ldr     r0, [r0]
        add     sl, r4, r1, lsl #2
        ldr     sl, [sl, #0x5c]
        cmp     sl, #0
        addne   r0, r0, r1, lsl #2
        ldrb    r1, [sp, #0x20]
        ldrne   r0, [r0, #0x810]
        add     sl, sp, #0x14
        cmp     r6, #0
        moveq   r2, #1
        ldr     r0, [r0]
        str     r3, [sp, #0x10]
        str     r5, [sp, #0xc]
        stm     sl, {r1, ip}
        add     sl, sp, #4
        ldr     r1, [sp, #0x1c]
        str     r7, [sp]
        mov     r3, sb
        stm     sl, {r1, r8}
        add     r1, r0, #0x34
L6652bc:
        bl      Fn_675e00
        ldr     r0, [r4, #0x58]
        mov     r2, #1
        add     r0, r0, #0xa
        lsr     r1, r0, #5
        and     r0, r0, #0x1f
        ldr     r3, [r4, r1, lsl #2]
        orr     r0, r3, r2, lsl r0
        str     r0, [r4, r1, lsl #2]
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6652e8:
        .word   0x008ab81c
L6652ec:
        .word   0x00008517
L6652f0:
        .word   0x008ab848
L6652f4:
        .word   0xffdca6a0
        .size   A_665138, . - A_665138

@ FUN_006652f8
        .global A_6652f8
        .type   A_6652f8, %function
A_6652f8:
        push    {r0, r1, lr}
        vpush   {d0}
        mov     r2, sp
        bl      Fn_665310
        add     sp, sp, #0x10
        pop     {pc}
        .size   A_6652f8, . - A_6652f8

@ FUN_00665310
        .global A_665310
        .type   A_665310, %function
A_665310:
        ldr     r3, L665600
        push    {r4, r5, r6}
        sub     r5, r0, #0xd00
        ldr     r4, L665604
        ldr     r0, [r3]
        ldr     r3, L665610
        vldr    s2, L665608
        vldr    s0, L66560c
        subs    r5, r5, #0xe1
        ldr     r3, [r3]
        sub     ip, r1, r4
        beq     L6653a4
        sub     r5, r5, #0x7700
        subs    r5, r5, #0x32
        bne     L665504
        ldr     r5, [r3, #0x58]
        add     r6, r3, r5, lsl #2
        ldr     r6, [r6, #0x68]
        cmp     r6, #0
        addne   r0, r0, r5, lsl #2
        ldrne   r0, [r0, #0x81c]
        ldrne   r0, [r0]
        ldreq   r0, [r0, #4]
        cmp     r1, r4
        beq     L665560
        bgt     L66550c
        sub     r1, r1, #0x1000
        subs    r1, r1, #4
        beq     L665574
        sub     r1, r1, #0x1400
        subs    r1, r1, #0x3fc
        beq     L66554c
        cmp     r1, #1
        beq     L665538
        cmp     r1, #2
        bne     L665504
        b       L6653f4
L6653a4:
        ldr     r5, [r3, #0x58]
        add     r6, r3, r5, lsl #2
        ldr     r6, [r6, #0x5c]
        cmp     r6, #0
        addne   r0, r0, r5, lsl #2
        ldrne   r0, [r0, #0x810]
        cmp     r1, r4
        ldr     r0, [r0]
        beq     L665560
        bgt     L665408
        sub     r1, r1, #0x1000
        subs    r1, r1, #4
        beq     L66542c
        sub     r1, r1, #0x1400
        subs    r1, r1, #0x3fc
        beq     L66554c
        cmp     r1, #1
        beq     L665538
        cmp     r1, #2
        bne     L665504
L6653f4:
        vldr    s0, [r2]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r0, #8]
        b       L6654e4
L665408:
        sub     r1, ip, #0x5900
        subs    r1, r1, #0x37
        beq     L66561c
        cmp     r1, #0x57
        beq     L6654c4
        sub     r1, r1, #0x300
        subs    r1, r1, #0xc7
        bne     L665504
        b       L66552c
L66542c:
        vldr    s1, [r2]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovls.f32 s1, s0
        bls     L66544c
        vmov    r1, s1
        cmp     r1, #0x3f800000
        vmovgt.f32 s1, s2
L66544c:
        vstr    s1, [r0, #0x18]
        vldr    s1, [r2, #4]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovls.f32 s1, s0
        bls     L665470
        vmov    r1, s1
        cmp     r1, #0x3f800000
        vmovgt.f32 s1, s2
L665470:
        vstr    s1, [r0, #0x1c]
        vldr    s1, [r2, #8]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovls.f32 s1, s0
        bls     L665494
        vmov    r1, s1
        cmp     r1, #0x3f800000
        vmovgt.f32 s1, s2
L665494:
        vstr    s1, [r0, #0x20]
        vldr    s1, [r2, #0xc]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        bls     L665614
        vmov    r1, s1
        cmp     r1, #0x3f800000
        ble     L6654bc
L6654b4:
        vmov.f32 s0, s2
        b       L665614
L6654bc:
        vmov.f32 s0, s1
        b       L665614
L6654c4:
        vldr    s1, [r2]
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        beq     L6654dc
L6654d4:
        mov     r1, #1
        b       L6654e0
L6654dc:
        mov     r1, #0
L6654e0:
        strb    r1, [r0, #0x30]
L6654e4:
        ldr     r0, [r3, #0x58]
        mov     r2, #1
        add     r1, r0, #0xa
        lsr     r0, r1, #5
        and     r1, r1, #0x1f
        ldr     ip, [r3, r0, lsl #2]
        orr     r1, ip, r2, lsl r1
        str     r1, [r3, r0, lsl #2]
L665504:
        pop     {r4, r5, r6}
        bx      lr
L66550c:
        sub     r1, ip, #0x5900
        subs    r1, r1, #0x37
        beq     L66561c
        cmp     r1, #0x57
        beq     L665630
        sub     r1, r1, #0x300
        subs    r1, r1, #0xc7
        bne     L665504
L66552c:
        vldr    s0, [r2]
        vstr    s0, [r0, #0x28]
        b       L6654e4
L665538:
        vldr    s0, [r2]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r0, #4]
        b       L6654e4
L66554c:
        vldr    s0, [r2]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r0]
        b       L6654e4
L665560:
        vldr    s0, [r2]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r0, #0xc]
        b       L6654e4
L665574:
        vldr    s1, [r2]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovls.f32 s1, s0
        bls     L665594
        vmov    r1, s1
        cmp     r1, #0x3f800000
        vmovgt.f32 s1, s2
L665594:
        vstr    s1, [r0, #0x18]
        vldr    s1, [r2, #4]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovls.f32 s1, s0
        bls     L6655b8
        vmov    r1, s1
        cmp     r1, #0x3f800000
        vmovgt.f32 s1, s2
L6655b8:
        vstr    s1, [r0, #0x1c]
        vldr    s1, [r2, #8]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovls.f32 s1, s0
        bls     L6655dc
        vmov    r1, s1
        cmp     r1, #0x3f800000
        vmovgt.f32 s1, s2
L6655dc:
        vstr    s1, [r0, #0x20]
        vldr    s1, [r2, #0xc]
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        bls     L665614
        vmov    r1, s1
        cmp     r1, #0x3f800000
        ble     L6654bc
        b       L6654b4
L665600:
        .word   0x008ab848
L665604:
        .word   0x00002803
L665608:
        .word   0x3f800000
L66560c:
        .word   0x00000000
L665610:
        .word   0x008ab81c
L665614:
        vstr    s0, [r0, #0x24]
        b       L6654e4
L66561c:
        vldr    s0, [r2]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r0, #0x14]
        b       L6654e4
L665630:
        vldr    s1, [r2]
        vcmp.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        beq     L6654dc
        b       L6654d4
        .size   A_665310, . - A_665310

@ FUN_00665644
        .global A_665644
        .type   A_665644, %function
A_665644:
        push    {r0, r1, r2, lr}
        add     r2, sp, #8
        bl      Fn_665658
        add     sp, sp, #0xc
        pop     {pc}
        .size   A_665644, . - A_665644

@ FUN_00665658
        .global A_665658
        .type   A_665658, %function
A_665658:
        ldr     r3, L66591c
        push    {r4, r5, r6}
        sub     r5, r0, #0xd00
        ldr     r4, L665920
        ldr     r0, [r3]
        ldr     r3, L66592c
        vldr    s1, L665924
        vldr    s0, L665928
        subs    r5, r5, #0xe1
        ldr     r3, [r3]
        sub     ip, r1, r4
        beq     L6656ec
        sub     r5, r5, #0x7700
        subs    r5, r5, #0x32
        bne     L665914
        ldr     r5, [r3, #0x58]
        add     r6, r3, r5, lsl #2
        ldr     r6, [r6, #0x68]
        cmp     r6, #0
        addne   r0, r0, r5, lsl #2
        ldrne   r0, [r0, #0x81c]
        ldrne   r0, [r0]
        ldreq   r0, [r0, #4]
        cmp     r1, r4
        beq     L66584c
        bgt     L665800
        sub     r1, r1, #0x1000
        subs    r1, r1, #4
        beq     L665858
        sub     r1, r1, #0x1400
        subs    r1, r1, #0x3fc
        beq     L665840
        cmp     r1, #1
        beq     L665834
        cmp     r1, #2
        bne     L665914
        b       L66573c
L6656ec:
        ldr     r5, [r3, #0x58]
        add     r6, r3, r5, lsl #2
        ldr     r6, [r6, #0x5c]
        cmp     r6, #0
        addne   r0, r0, r5, lsl #2
        ldrne   r0, [r0, #0x810]
        cmp     r1, r4
        ldr     r0, [r0]
        beq     L66584c
        bgt     L665748
        sub     r1, r1, #0x1000
        subs    r1, r1, #4
        beq     L66576c
        sub     r1, r1, #0x1400
        subs    r1, r1, #0x3fc
        beq     L665840
        cmp     r1, #1
        beq     L665834
        cmp     r1, #2
        bne     L665914
L66573c:
        ldr     r1, [r2]
        str     r1, [r0, #8]
        b       L6658f4
L665748:
        sub     r1, ip, #0x5900
        subs    r1, r1, #0x37
        beq     L6658e0
        cmp     r1, #0x57
        beq     L6658ec
        sub     r1, r1, #0x300
        subs    r1, r1, #0xc7
        bne     L665914
        b       L665820
L66576c:
        ldr     r1, [r2]
        cmp     r1, #0
        vmovle.f32 s2, s1
        ble     L66578c
        cmp     r1, #1
        vmovle  s2, r1
        vmovgt.f32 s2, s0
        vcvtle.f32.s32 s2, s2
L66578c:
        vstr    s2, [r0, #0x18]
        ldr     r1, [r2, #4]
        cmp     r1, #0
        vmovle.f32 s2, s1
        ble     L6657b0
        cmp     r1, #1
        vmovle  s2, r1
        vmovgt.f32 s2, s0
        vcvtle.f32.s32 s2, s2
L6657b0:
        vstr    s2, [r0, #0x1c]
        ldr     r1, [r2, #8]
        cmp     r1, #0
        vmovle.f32 s2, s1
        ble     L6657d4
        cmp     r1, #1
        vmovle  s2, r1
        vmovgt.f32 s2, s0
        vcvtle.f32.s32 s2, s2
L6657d4:
        vstr    s2, [r0, #0x20]
        ldr     r1, [r2, #0xc]
        cmp     r1, #0
        bgt     L6657ec
L6657e4:
        vmov.f32 s0, s1
        b       L6658d8
L6657ec:
        cmp     r1, #1
        bgt     L6658d8
L6657f4:
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        b       L6658d8
L665800:
        sub     r1, ip, #0x5900
        subs    r1, r1, #0x37
        beq     L6658e0
        cmp     r1, #0x57
        beq     L6658ec
        sub     r1, r1, #0x300
        subs    r1, r1, #0xc7
        bne     L665914
L665820:
        ldr     r1, [r2]
        vmov    s0, r1
        vcvt.f32.s32 s0, s0
        vstr    s0, [r0, #0x28]
        b       L6658f4
L665834:
        ldr     r1, [r2]
        str     r1, [r0, #4]
        b       L6658f4
L665840:
        ldr     r1, [r2]
        str     r1, [r0]
        b       L6658f4
L66584c:
        ldr     r1, [r2]
        str     r1, [r0, #0xc]
        b       L6658f4
L665858:
        ldr     r1, [r2]
        cmp     r1, #0
        vmovle.f32 s2, s1
        ble     L665878
        cmp     r1, #1
        vmovle  s2, r1
        vmovgt.f32 s2, s0
        vcvtle.f32.s32 s2, s2
L665878:
        vstr    s2, [r0, #0x18]
        ldr     r1, [r2, #4]
        cmp     r1, #0
        vmovle.f32 s2, s1
        ble     L66589c
        cmp     r1, #1
        vmovle  s2, r1
        vmovgt.f32 s2, s0
        vcvtle.f32.s32 s2, s2
L66589c:
        vstr    s2, [r0, #0x1c]
        ldr     r1, [r2, #8]
        cmp     r1, #0
        vmovle.f32 s2, s1
        ble     L6658c0
        cmp     r1, #1
        vmovle  s2, r1
        vmovgt.f32 s2, s0
        vcvtle.f32.s32 s2, s2
L6658c0:
        vstr    s2, [r0, #0x20]
        ldr     r1, [r2, #0xc]
        cmp     r1, #0
        ble     L6657e4
        cmp     r1, #1
        ble     L6657f4
L6658d8:
        vstr    s0, [r0, #0x24]
        b       L6658f4
L6658e0:
        ldr     r1, [r2]
        str     r1, [r0, #0x14]
        b       L6658f4
L6658ec:
        ldr     r1, [r2]
        strb    r1, [r0, #0x30]
L6658f4:
        ldr     r0, [r3, #0x58]
        mov     r2, #1
        add     r1, r0, #0xa
        lsr     r0, r1, #5
        and     r1, r1, #0x1f
        ldr     ip, [r3, r0, lsl #2]
        orr     r1, ip, r2, lsl r1
        str     r1, [r3, r0, lsl #2]
L665914:
        pop     {r4, r5, r6}
        bx      lr
L66591c:
        .word   0x008ab848
L665920:
        .word   0x00002803
L665924:
        .word   0x00000000
L665928:
        .word   0x3f800000
L66592c:
        .word   0x008ab81c
        .size   A_665658, . - A_665658

@ FUN_00665938
        .global A_665938
        .type   A_665938, %function
A_665938:
        push    {r0, lr}
        mov     r1, #0
        vpush   {d0}
        sub     sp, sp, #8
        mov     r3, #1
        str     r1, [sp]
        str     r1, [sp, #4]
        mov     r2, r3
        add     r1, sp, #8
        bl      Fn_66bb0c
        add     sp, sp, #0x14
        pop     {pc}
        .size   A_665938, . - A_665938

@ FUN_00665970
        .global A_665970
        .type   A_665970, %function
A_665970:
        mov     r3, #1
        push    {r0, r1, r4, lr}
        mov     r2, r3
        add     r1, sp, #4
        bl      Fn_67055c
        add     sp, sp, #8
        pop     {r4, pc}
        .size   A_665970, . - A_665970

@ FUN_006659b0
        .global A_6659b0
        .type   A_6659b0, %function
A_6659b0:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0x1c
        add     r2, sp, #8
        mov     r1, #0
        vstmia  r2, {s0, s1, s2, s3}
        mov     r3, #1
        mov     r2, #4
        str     r1, [sp]
        str     r1, [sp, #4]
        add     r1, sp, #8
        bl      Fn_66bb0c
        add     sp, sp, #0x1c
        pop     {pc}
        .size   A_6659b0, . - A_6659b0

@ FUN_006659f4
        .global A_6659f4
        .type   A_6659f4, %function
A_6659f4:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        mov     r3, r1
        mov     r1, #0
        mov     ip, r2
        str     r1, [sp]
        str     r1, [sp, #4]
        mov     r2, #4
        mov     r1, ip
        bl      Fn_66bb0c
        add     sp, sp, #0xc
        pop     {pc}
        .size   A_6659f4, . - A_6659f4

@ FUN_00665a24
        .global A_665a24
        .type   A_665a24, %function
A_665a24:
        push    {r4, lr}
        sub     sp, sp, #8
        cmp     r2, #0
        mov     ip, r1
        mov     r4, r3
        mov     r1, #1
        moveq   r2, #1
        movne   r2, #0
        str     r2, [sp]
        str     r1, [sp, #4]
        mov     r3, ip
        mov     r2, #4
        mov     r1, r4
        bl      Fn_66bb0c
        add     sp, sp, #8
        pop     {r4, pc}
        .size   A_665a24, . - A_665a24

@ FUN_00665a64
        .global A_665a64
        .type   A_665a64, %function
A_665a64:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, #0
        movs    r7, r0
        ldr     r8, L665f5c
        ldr     r1, L665f60
        ldr     r0, [r8, #8]
        ldr     r4, [r1]
        beq     L665ae0
        lsl     r1, r7, #0x17
        lsr     r1, r1, #0x17
        add     r1, r0, r1, lsl #2
        ldr     r5, [r1, #8]
        cmp     r5, #0
        beq     L665ab0
L665a9c:
        ldr     r1, [r5, #4]
        cmp     r1, r7
        ldrne   r5, [r5]
        cmpne   r5, #0
        bne     L665a9c
L665ab0:
        ldr     r2, [r0]
        ldr     r1, [r4]
        cmp     r2, r5
        orrne   r1, r1, #0x8000
        cmp     r2, #0
        beq     L665ad8
        ldr     r3, [r5, #0x414]
        ldr     ip, [r2, #0x414]
        cmp     r3, ip
        beq     L665b18
L665ad8:
        orr     r1, r1, #0x1f00000
        b       L665b54
L665ae0:
        ldr     r0, [r0]
        cmp     r0, #0
        ldrbne  r1, [r0, #0x15]
        cmpne   r1, #0
        beq     L665b04
        ldr     r0, [r0, #4]
        bl      Fn_66b968
        ldr     r0, [r8, #8]
        str     r6, [r0, #4]
L665b04:
        ldr     r0, [r8, #8]
        str     r6, [r0]
        str     r6, [r4, #0x1c]
        strb    r6, [r4, #0x1b]
        pop     {r4, r5, r6, r7, r8, pc}
L665b18:
        ldr     r3, [r5, #0x418]
        ldr     ip, [r2, #0x418]
        cmp     r3, ip
        ldrb    r3, [r5, #0x424]
        orrne   r1, r1, #0x200000
        cmp     r3, #0
        beq     L665cac
        ldrb    r3, [r2, #0x424]
        cmp     r3, #0
        orreq   r1, r1, #0xc00000
        beq     L665b54
        ldr     r3, [r5, #0x41c]
        ldr     r2, [r2, #0x41c]
        cmp     r3, r2
        orrne   r1, r1, #0x400000
L665b54:
        str     r1, [r4]
        ldr     r2, [r0]
        mvn     r1, #0
        cmp     r2, #0
        beq     L665cbc
        cmp     r2, r5
        bne     L665b7c
        ldrb    r3, [r5, #0x17]
        cmp     r3, #1
        beq     L665cbc
L665b7c:
        cmp     r2, r5
        beq     L665c70
        ldrb    r2, [r5, #0x424]
        str     r1, [r5, #0x1b4]
        str     r1, [r5, #0x1b8]
        cmp     r2, #0
        str     r1, [r5, #0x1bc]
        beq     L665ba8
        str     r1, [r5, #0x348]
        str     r1, [r5, #0x34c]
        str     r1, [r5, #0x350]
L665ba8:
        mov     r3, #0
        mov     r2, r3
L665bb0:
        add     ip, r5, r3, lsl #2
        add     r3, r3, #1
        add     r2, r2, #2
        add     lr, r5, r3, lsl #2
        str     r1, [ip, #0x7d8]
        cmp     r2, #6
        add     r3, r3, #1
        str     r1, [lr, #0x7d8]
        blt     L665bb0
        ldr     r1, [r5, #0x590]
        tst     r1, #1
        beq     L665bec
        ldr     r1, [r4]
        orr     r1, r1, #8
        str     r1, [r4]
L665bec:
        ldr     r1, [r5, #0xe0c]
        cmp     r1, #0
        beq     L665c04
        ldr     r1, [r4]
        orr     r1, r1, #0x20
        str     r1, [r4]
L665c04:
        ldr     r1, [r5, #0x624]
        tst     r1, #1
        beq     L665c1c
        ldr     r1, [r4]
        orr     r1, r1, #0x10
        str     r1, [r4]
L665c1c:
        ldr     r1, [r5, #0x624]
        tst     r1, #2
        beq     L665c34
        ldr     r1, [r4]
        orr     r1, r1, #0x2000000
        str     r1, [r4]
L665c34:
        ldrb    r1, [r4, #0x64b]
        cmp     r1, #0
        beq     L665c4c
        ldr     r1, [r4]
        orr     r1, r1, #0x100
        str     r1, [r4]
L665c4c:
        add     r1, r5, #0xc00
        vldr    s1, L665f64
        vldr    s0, [r1, #0x24c]
        vcmp.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        bne     L665c70
        ldr     r1, [r4]
        orr     r1, r1, #4
        str     r1, [r4]
L665c70:
        ldr     r2, [r5, #0xe2c]
        ldr     r3, L665f68
        mov     r1, #1
        cmp     r2, r3
        sub     r3, r2, r3
        beq     L665d70
        bge     L665d20
        cmp     r2, #0
        beq     L665d34
        sub     r2, r2, #0xd00
        subs    r2, r2, #0xe1
        subne   r2, r2, #0x6000
        subsne  r2, r2, #0x1f
        beq     L665d70
        b       L665de0
L665cac:
        ldrb    r2, [r2, #0x424]
        cmp     r2, #0
        orrne   r1, r1, #0x1200000
        b       L665b54
L665cbc:
        ldrb    r2, [r5, #0x424]
        str     r1, [r5, #0x1b4]
        str     r1, [r5, #0x1b8]
        cmp     r2, #0
        str     r1, [r5, #0x1bc]
        beq     L665ce0
        str     r1, [r5, #0x348]
        str     r1, [r5, #0x34c]
        str     r1, [r5, #0x350]
L665ce0:
        mov     r3, #0
        mov     r2, r3
L665ce8:
        add     ip, r5, r3, lsl #2
        add     r3, r3, #1
        add     r2, r2, #2
        add     lr, r5, r3, lsl #2
        str     r1, [ip, #0x7d8]
        cmp     r2, #6
        add     r3, r3, #1
        str     r1, [lr, #0x7d8]
        blt     L665ce8
        ldr     r1, [r4]
        orr     r1, r1, #0x2000000
        orr     r1, r1, #0x13c
        str     r1, [r4]
        b       L665c70
L665d20:
        cmp     r3, #1
        subne   r2, r3, #0x1700
        subsne  r2, r2, #0x12
        beq     L665da8
        b       L665de0
L665d34:
        ldrb    r2, [r4, #0x104]
        cmp     r2, #0
        beq     L665d50
        ldr     r2, [r4]
        strb    r6, [r4, #0x104]
        orr     r2, r2, #0x400
        str     r2, [r4]
L665d50:
        ldrb    r2, [r4, #0x107]
        cmp     r2, #0
        beq     L665de0
        ldr     r2, [r4]
        strb    r6, [r4, #0x107]
        orr     r2, r2, #0x400
        str     r2, [r4]
        b       L665de0
L665d70:
        ldrb    r2, [r4, #0x104]
        cmp     r2, #1
        beq     L665d8c
        ldr     r2, [r4]
        strb    r1, [r4, #0x104]
        orr     r2, r2, #0x400
        str     r2, [r4]
L665d8c:
        ldrb    r2, [r4, #0x107]
        cmp     r2, #0
        beq     L665de0
        ldr     r2, [r4]
        strb    r6, [r4, #0x107]
        orr     r2, r2, #0x400
        b       L665ddc
L665da8:
        ldrb    r2, [r4, #0x104]
        cmp     r2, #0
        beq     L665dc4
        ldr     r2, [r4]
        strb    r6, [r4, #0x104]
        orr     r2, r2, #0x400
        str     r2, [r4]
L665dc4:
        ldrb    r2, [r4, #0x107]
        cmp     r2, #1
        beq     L665de0
        ldr     r2, [r4]
        strb    r1, [r4, #0x107]
        orr     r2, r2, #0x400
L665ddc:
        str     r2, [r4]
L665de0:
        ldr     r2, [r5, #0xe2c]
        ldr     r3, [r4, #0xf8]
        cmp     r3, r2
        beq     L665e00
        ldr     r3, [r4]
        str     r2, [r4, #0xf8]
        orr     r2, r3, #0x400
        str     r2, [r4]
L665e00:
        ldr     r2, [r5, #0xe30]
        cmp     r2, #0
        beq     L665e1c
        sub     r2, r2, #0xd00
        subs    r2, r2, #0xe1
        bne     L665e54
        b       L665e38
L665e1c:
        ldrb    r2, [r4, #0x105]
        cmp     r2, #0
        beq     L665e54
        ldr     r2, [r4]
        strb    r6, [r4, #0x105]
        orr     r2, r2, #0x800
        b       L665e50
L665e38:
        ldrb    r2, [r4, #0x105]
        cmp     r2, #1
        beq     L665e54
        ldr     r2, [r4]
        strb    r1, [r4, #0x105]
        orr     r2, r2, #0x800
L665e50:
        str     r2, [r4]
L665e54:
        ldr     r2, [r5, #0xe30]
        ldr     r3, [r4, #0xfc]
        cmp     r3, r2
        beq     L665e74
        ldr     r3, [r4]
        str     r2, [r4, #0xfc]
        orr     r2, r3, #0x800
        str     r2, [r4]
L665e74:
        ldr     r2, [r5, #0xe34]
        cmp     r2, #0
        beq     L665e90
        sub     r2, r2, #0xd00
        subs    r2, r2, #0xe1
        bne     L665ecc
        b       L665eb0
L665e90:
        ldrb    r1, [r4, #0x106]
        cmp     r1, #0
        beq     L665ecc
        ldr     r1, [r4]
        strb    r6, [r4, #0x106]
        orr     r1, r1, #0x1000
        str     r1, [r4]
        b       L665ecc
L665eb0:
        ldrb    r2, [r4, #0x106]
        cmp     r2, #1
        beq     L665ecc
        ldr     r2, [r4]
        strb    r1, [r4, #0x106]
        orr     r2, r2, #0x1000
        str     r2, [r4]
L665ecc:
        ldr     r1, [r5, #0xe34]
        ldr     r2, [r4, #0x100]
        cmp     r2, r1
        beq     L665eec
        ldr     r2, [r4]
        str     r1, [r4, #0x100]
        orr     r1, r2, #0x1000
        str     r1, [r4]
L665eec:
        strb    r6, [r5, #0x17]
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L665f44
        cmp     r1, r5
        beq     L665f2c
        ldr     r1, [r1, #0xe38]
        ldr     r2, [r5, #0xe38]
        cmp     r1, r2
        beq     L665f2c
        ldr     r1, [r4]
        orr     r1, r1, #0x100
        str     r1, [r4]
        ldr     r1, [r0]
        cmp     r1, #0
        beq     L665f44
L665f2c:
        ldr     r0, [r0]
        ldrb    r1, [r0, #0x15]
        cmp     r1, #0
        cmpne   r0, r5
        ldrne   r0, [r0, #4]
        blne    Fn_66b968
L665f44:
        ldr     r0, [r8, #8]
        str     r5, [r0]
        str     r7, [r4, #0x1c]
        ldrb    r0, [r5, #0x424]
        strb    r0, [r4, #0x1b]
        pop     {r4, r5, r6, r7, r8, pc}
L665f5c:
        .word   0x008ab508
L665f60:
        .word   0x008ab81c
L665f64:
        .word   0x00000000
L665f68:
        .word   0x00006e01
        .size   A_665a64, . - A_665a64

@ FUN_00665f6c
        .global A_665f6c
        .type   A_665f6c, %function
A_665f6c:
        vstr    s0, [r0, #0xe8]
        mov     r0, #1
        mov     r0, r0
        str     lr, [sp, #-4]!
        sub     sp, sp, #0x14
        vldr    s1, L665fa4
        vldr    s2, L665fa8
        add     r2, sp, #8
        vstmia  sp, {s0, s1}
        mov     r1, sp
        vstmia  r2, {s1, s2}
        bl      Fn_678118
        add     sp, sp, #0x14
        pop     {pc}
L665fa4:
        .word   0x00000000
L665fa8:
        .word   0x3f800000
        .size   A_665f6c, . - A_665f6c

@ FUN_00665fac
        .global A_665fac
        .type   A_665fac, %function
A_665fac:
        push    {r4, r5, r6, lr}
        add     ip, r0, r0, lsl #1
        ldr     lr, L66607c
        ldr     r4, [sp, #0x14]
        ldr     r5, [sp, #0x10]
        ldr     lr, [lr]
        add     ip, lr, ip, lsl #3
        ldr     r6, [ip, #0x45c]
        cmp     r6, r1
        beq     L665fe4
        str     r1, [ip, #0x45c]
        ldr     r1, [lr]
        orr     r1, r1, #0x40
        str     r1, [lr]
L665fe4:
        ldr     r1, [ip, #0x460]
        cmp     r1, r2
        beq     L666000
        str     r2, [ip, #0x460]
        ldr     r1, [lr]
        orr     r1, r1, #0x40
        str     r1, [lr]
L666000:
        ldrb    r1, [ip, #0x46c]
        cmp     r1, r3
        beq     L66601c
        strb    r3, [ip, #0x46c]
        ldr     r1, [lr]
        orr     r1, r1, #0x40
        str     r1, [lr]
L66601c:
        ldr     r1, [ip, #0x464]
        cmp     r1, r5
        beq     L666038
        str     r5, [ip, #0x464]
        ldr     r1, [lr]
        orr     r1, r1, #0x40
        str     r1, [lr]
L666038:
        ldr     r1, [ip, #0x458]
        cmp     r1, r4
        beq     L666054
        str     r4, [ip, #0x458]
        ldr     r1, [lr]
        orr     r1, r1, #0x40
        str     r1, [lr]
L666054:
        ldr     r1, [lr, #0x5dc]
        ldr     r2, [ip, #0x468]
        cmp     r2, r1
        beq     L666074
        str     r1, [ip, #0x468]
        ldr     r1, [lr]
        orr     r1, r1, #0x40
        str     r1, [lr]
L666074:
        pop     {r4, r5, r6, lr}
        b       Fn_65ba48
L66607c:
        .word   0x008ab81c
        .size   A_665fac, . - A_665fac

@ FUN_0066b7b4
        .global A_66b7b4
        .type   A_66b7b4, %function
A_66b7b4:
        ldr     r1, L66b960
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        ldr     r1, [r1, #8]
        ldr     r0, [r0, #0x20]
        add     r1, r1, #0x1000
        ldr     r2, [r1, #8]
        cmp     r2, r4
        bne     L66b940
        cmp     r0, #0
        str     r0, [r1, #8]
        movne   r1, #0
        beq     L66b7ec
L66b7e8:
        str     r1, [r0, #0x1c]
L66b7ec:
        ldr     r7, L66b964
        ldr     r3, [r4]
        cmp     r3, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L66b814
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66b814:
        ldr     r3, [r4, #8]
        cmp     r3, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L66b838
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66b838:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        beq     L66b91c
        ldr     r0, [r4, #0x14]
        mov     r5, #0
        cmp     r0, #0
        bls     L66b8fc
        mov     r8, #0x30
        mov     sb, #0x58
        mov     sl, #0xe0
L66b860:
        add     r0, r5, r5, lsl #1
        ldr     r1, [r4, #0x10]
        rsb     r6, r0, r5, lsl #5
        add     r0, r8, r6, lsl #3
        ldr     r3, [r1, r0]
        cmp     r3, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L66b894
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66b894:
        ldr     r0, [r4, #0x10]
        add     r1, sb, r6, lsl #3
        ldr     r3, [r0, r1]
        cmp     r3, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L66b8c0
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66b8c0:
        ldr     r0, [r4, #0x10]
        add     r1, sl, r6, lsl #3
        ldr     r3, [r0, r1]
        cmp     r3, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L66b8ec
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66b8ec:
        ldr     r0, [r4, #0x14]
        add     r5, r5, #1
        cmp     r0, r5
        bhi     L66b860
L66b8fc:
        ldr     ip, [r7]
        cmp     ip, #0
        beq     L66b95c
        ldr     r3, [r4, #0x10]
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66b91c:
        ldr     ip, [r7]
        cmp     ip, #0
        beq     L66b95c
        mov     r3, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        bx      ip
L66b940:
        ldr     r1, [r4, #0x1c]
        str     r0, [r1, #0x20]
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        ldrne   r1, [r4, #0x1c]
        beq     L66b7ec
        b       L66b7e8
L66b95c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L66b960:
        .word   0x008ab508
L66b964:
        .word   0x008aab1c
        .size   A_66b7b4, . - A_66b7b4

@ FUN_0066b968
        .global A_66b968
        .type   A_66b968, %function
A_66b968:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, #0
        ldr     r7, L66bb04
        lsl     r8, r5, #0x17
        lsr     r8, r8, #0x17
        ldr     r0, [r7, #8]
        add     r0, r0, r8, lsl #2
        ldr     r4, [r0, #8]
        cmp     r4, #0
        beq     L66b9b0
L66b994:
        ldr     r0, [r4, #4]
        cmp     r0, r5
        beq     L66b9b0
        mov     r6, r4
        ldr     r4, [r4]
        cmp     r4, #0
        bne     L66b994
L66b9b0:
        ldr     r0, [r4, #0xc]
        cmp     r0, #0
        beq     L66b9c8
        ldr     r1, [r0, #8]
        mov     r0, r5
        bl      Fn_661150
L66b9c8:
        ldr     r0, [r4, #0x10]
        cmp     r0, #0
        beq     L66b9e0
        ldr     r1, [r0, #8]
        mov     r0, r5
        bl      Fn_661150
L66b9e0:
        cmp     r6, #0
        ldrne   r0, [r4]
        strne   r0, [r6]
        beq     L66bae8
L66b9f0:
        ldr     r0, [r7]
        cmp     r0, r5
        strhi   r5, [r7]
        ldr     r5, L66bb08
        ldr     r3, [r4, #0x2c]
        cmp     r3, #0
        ldrne   ip, [r5]
        cmpne   ip, #0
        beq     L66ba24
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66ba24:
        ldr     r3, [r4, #0x1c0]
        cmp     r3, #0
        ldrne   ip, [r5]
        cmpne   ip, #0
        beq     L66ba48
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66ba48:
        ldr     r3, [r4, #0x1c]
        cmp     r3, #0
        ldrne   ip, [r5]
        cmpne   ip, #0
        beq     L66ba6c
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66ba6c:
        ldr     r6, [r4, #0x18]
        cmp     r6, #0
        beq     L66bac4
L66ba78:
        ldr     ip, [r5]
        ldr     r7, [r6, #8]
        cmp     ip, #0
        beq     L66babc
        ldr     r3, [r6]
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
        ldr     ip, [r5]
        cmp     ip, #0
        beq     L66babc
        mov     r3, r6
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L66babc:
        movs    r6, r7
        bne     L66ba78
L66bac4:
        ldr     ip, [r5]
        cmp     ip, #0
        beq     L66bb00
        mov     r3, r4
        pop     {r4, r5, r6, r7, r8, lr}
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        bx      ip
L66bae8:
        ldr     r0, [r7, #8]
        add     r0, r0, r8, lsl #2
        ldr     r1, [r0, #8]
        ldr     r1, [r1]
        str     r1, [r0, #8]
        b       L66b9f0
L66bb00:
        pop     {r4, r5, r6, r7, r8, pc}
L66bb04:
        .word   0x008ab508
L66bb08:
        .word   0x008aab1c
        .size   A_66b968, . - A_66b968

@ FUN_0067054c
        .global A_67054c
        .type   A_67054c, %function
A_67054c:
        mov     r3, r1
        mov     r1, r2
        mov     r2, #3
        mov     r0, r0
        .size   A_67054c, . - A_67054c

@ FUN_00675b18
        .global A_675b18
        .type   A_675b18, %function
A_675b18:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r1
        mov     r5, #1
        ldr     r6, L675c9c
        ldr     r2, L675c98
        ldr     r7, L675ca0
        ldr     ip, [r6]
        cmp     r0, r2
        sub     r1, r0, r2
        beq     L675c90
        bgt     L675b68
        subs    r0, r0, r7, lsl #16
        beq     L675bb4
        cmp     r0, #0x10000
        moveq   r0, #0x20000
        beq     L675be8
        cmp     r0, #0x20000
        moveq   r0, #0x30000
        beq     L675be8
        b       L675c90
L675b68:
        cmp     r1, #0x10000
        cmpne   r1, #0x20000
        bne     L675c90
        add     r1, r0, #0xfe000000
        subs    r1, r1, #0x20000
        moveq   r0, #0x20000
        movne   r0, #0x30000
        cmp     ip, #0
        str     r0, [r4, #0x3c]
        moveq   r0, #0
        beq     L675ba4
        ldr     r2, [r4, #0x40]
        ldr     r3, [r4, #0x20]
        mov     r1, r7
        blx     ip
L675ba4:
        cmp     r0, #0
        moveq   r5, #0
        str     r0, [r4]
        b       L675c90
L675bb4:
        cmp     ip, #0
        moveq   r0, #0
        beq     L675bd4
        ldr     r2, [r4, #0x40]
        ldr     r3, [r4, #0x20]
        mov     r1, r7
        mov     r0, #0x10000
        blx     ip
L675bd4:
        cmp     r0, #0
        str     r0, [r4, #4]
        moveq   r5, #0
        str     r0, [r4]
        b       L675c90
L675be8:
        cmp     ip, #0
        str     r0, [r4, #0x3c]
        moveq   r0, #0
        beq     L675c08
        ldr     r2, [r4, #0x40]
        ldr     r3, [r4, #0x20]
        mov     r1, r7
        blx     ip
L675c08:
        str     r0, [r4]
        ldr     ip, [r6]
        cmp     ip, #0
        moveq   r0, #0
        beq     L675c30
        ldr     r2, [r4, #0x40]
        ldr     r3, [r4, #0x20]
        mov     r1, r7
        mov     r0, #0x10000
        blx     ip
L675c30:
        ldr     r3, [r4]
        str     r0, [r4, #4]
        cmp     r3, #0
        cmpne   r0, #0
        bne     L675c90
        ldr     r6, L675ca4
        cmp     r3, #0
        mov     r5, #0
        ldrne   ip, [r6]
        cmpne   ip, #0
        beq     L675c6c
        add     r0, r4, #0x3c
        mov     r1, r7
        ldm     r0, {r0, r2}
        blx     ip
L675c6c:
        ldr     r3, [r4, #4]
        cmp     r3, #0
        ldrne   ip, [r6]
        cmpne   ip, #0
        beq     L675c90
        ldr     r2, [r4, #0x40]
        mov     r1, r7
        mov     r0, #0x10000
        blx     ip
L675c90:
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L675c98:
        .word   0x02010000
L675c9c:
        .word   0x008aab18
L675ca0:
        .word   0x00000101
L675ca4:
        .word   0x008aab1c
        .size   A_675b18, . - A_675b18

@ FUN_00675ca8
        .global A_675ca8
        .type   A_675ca8, %function
A_675ca8:
        uxth    r3, r0
        sub     r3, r3, #0x6700
        mov     ip, #1
        sub     r3, r3, #0x52
        cmp     r3, #0xc
        strb    ip, [r2]
        ldrlo   pc, [pc, r3, lsl #2]
        b       L675d4c
        ldrshteq r5, [r7], #-0xc8
        rsbseq  r5, r7, ip, asr #26
        rsbseq  r5, r7, r0, lsl #26
        rsbseq  r5, r7, ip, asr #26
        rsbseq  r5, r7, r8, lsl #26
        rsbseq  r5, r7, r0, lsl sp
        rsbseq  r5, r7, r8, lsl sp
        rsbseq  r5, r7, r0, lsr #26
        rsbseq  r5, r7, r8, lsr #26
        rsbseq  r5, r7, r0, lsr sp
        rsbseq  r5, r7, r8, lsr sp
        rsbseq  r5, r7, r0, asr #26
        ldr     r0, L675d5c
        b       L675d44
        ldr     r0, L675d60
        b       L675d44
        ldr     r0, L675d64
        b       L675d44
        ldr     r0, L675d68
        b       L675d44
        ldr     r0, L675d6c
        b       L675d44
        mov     r0, #0x6700
        b       L675d44
        ldr     r0, L675d70
        b       L675d44
        ldr     r0, L675d74
        b       L675d44
        ldr     r0, L675d78
        b       L675d44
        ldr     r0, L675d7c
L675d44:
        str     r0, [r1]
        bx      lr
L675d4c:
        mov     r3, #0
        str     r0, [r1]
        strb    r3, [r2]
        bx      lr
L675d5c:
        .word   0x00001908
L675d60:
        .word   0x00001907
L675d64:
        .word   0x00001906
L675d68:
        .word   0x00001909
L675d6c:
        .word   0x0000190a
L675d70:
        .word   0x0000675a
L675d74:
        .word   0x0000675b
L675d78:
        .word   0x00006040
L675d7c:
        .word   0x00006050
        .size   A_675ca8, . - A_675ca8

@ FUN_00675e00
        .global A_675e00
        .type   A_675e00, %function
A_675e00:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x7c
        mov     r4, r3
        mov     r6, r2
        add     r2, sp, #0xb0
        ldr     r0, [sp, #0x80]
        ldm     r2, {r5, sb}
        ldr     r7, [sp, #0xc4]
        ldr     r8, [sp, #0xb8]
        ldr     r0, [r0]
        ldr     sl, [sp, #0xc0]
        cmp     r0, #0
        beq     L675eb8
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0, #0xc]
        cmp     r0, r4
        bne     L675e98
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0, #0x10]
        cmp     r0, r5
        bne     L675e98
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0, #0x14]
        cmp     r0, sb
        bne     L675e98
        ldr     r0, [sp, #0x7c]
        ldr     r1, [r0, #0x2c]
        ldr     r0, [sp, #0xc8]
        cmp     r1, r0
        bne     L675e98
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0, #0x34]
        cmp     r0, r6
        bne     L675e98
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0, #0x18]
        cmp     r0, r8
        beq     L675ef0
L675e98:
        ldr     r0, [sp, #0x7c]
        ldr     r1, [sp, #0x80]
        ldr     r0, [r0, #0x2c]
        bl      Fn_0225b8
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0]
        cmp     r0, #0
        bne     L675ef0
L675eb8:
        ldr     r0, [sp, #0x80]
        mov     r3, r8
        mov     r2, sb
        str     r0, [sp, #8]
        mov     r1, r5
        mov     r0, r4
        stm     sp, {r6, sl}
        bl      Fn_64c918
        ldr     r0, [sp, #0xc8]
        ldr     r1, [sp, #0x80]
        bl      Fn_675b18
        cmp     r0, #0
        nop
        beq     L676830
L675ef0:
        ldr     r0, [sp, #0xbc]
        cmp     r0, #0
        beq     L676824
        ldr     r0, [sp, #0x7c]
        ldrb    r0, [r0, #0x30]
        str     r6, [sp, #0x48]
        cmp     r0, #0
        ldr     r0, [sp, #0x80]
        ldr     r0, [r0, #0x20]
        str     r0, [sp, #0x1c]
        beq     L675f44
        ldr     r0, [sp, #0x80]
        mul     r1, r4, r5
        ldr     r0, [r0, #0x38]
        mul     r0, r0, r1
        asr     r1, r0, #0x1f
        add     r0, r0, r1, lsr #29
        asr     r0, r0, #3
        str     r0, [sp, #0x1c]
        mov     r0, #1
        str     r0, [sp, #0x48]
L675f44:
        ldr     r1, [sp, #0x80]
        ldr     r0, [sp, #0xbc]
        str     r0, [r1, #8]
        ldr     r1, [sp, #0xc8]
        add     r1, r1, #0xff000000
        subs    r1, r1, #0x10000
        cmpne   r1, #0x10000
        cmpne   r1, #0x20000
        beq     L675f78
        cmp     r1, #0x1000000
        ldreq   r1, [sp, #0x80]
        streq   r0, [r1]
        b       L6766d8
L675f78:
        cmp     r7, #0
        beq     L675fa0
        ldr     r0, [sp, #0x80]
        ldr     r1, [sp, #0xbc]
        ldr     r2, [sp, #0x1c]
        ldr     r0, [r0, #4]
        bl      Fn_202b20
        nop
        nop
        b       L6766d8
L675fa0:
        strd    r4, r5, [sp, #0x34]
        ldr     r0, [sp, #0x48]
        cmp     r0, #0
        mov     r0, #0
        str     r0, [sp, #0x68]
        str     r0, [sp, #0x4c]
        ble     L6766d8
        ldr     r0, [sp, #0x80]
        ldr     r1, [sp, #0x68]
        ldr     r7, [sp, #0x34]
        ldr     r2, [r0, #4]
        ldr     r0, [sp, #0x38]
        add     r1, r1, r2
        str     r1, [sp, #0x24]
        ldr     r1, [sp, #0x80]
        str     r0, [sp, #0x20]
        ldr     r1, [r1, #0x1c]
        str     r1, [sp, #0x54]
        ldr     r1, [sp, #0xbc]
        ldr     r2, [sp, #0x68]
        add     r4, r1, r2
        mov     r1, #4
        str     r1, [sp]
        mov     r1, #0
        str     r1, [sp, #0x6c]
        ldr     r1, [sp, #0x54]
        mov     r2, #1
        str     r2, [sp, #0x70]
        cmp     r1, #0xe
        ldrlo   pc, [pc, r1, lsl #2]
        b       L67611c
L67601c:
        .word   0x0077607c
L676020:
        .word   0x00776054
L676024:
        .word   0x00776060
L676028:
        .word   0x00776060
L67602c:
        .word   0x00776060
L676030:
        .word   0x00776060
L676034:
        .word   0x00776060
L676038:
        .word   0x00776068
L67603c:
        .word   0x00776068
L676040:
        .word   0x00776068
L676044:
        .word   0x00776070
L676048:
        .word   0x00776070
L67604c:
        .word   0x00776128
L676050:
        .word   0x00776128
        mov     r1, #3
L676058:
        str     r1, [sp]
        b       L67607c
        mov     r1, #2
        b       L676058
        mov     r1, #1
        b       L676058
        mov     r1, #1
        str     r1, [sp]
        str     r1, [sp, #0x6c]
L67607c:
        mov     r1, #0
        str     r1, [sp, #0x50]
        str     r0, [sp, #0x14]
        ldr     r0, [sp, #0x20]
        mov     fp, r1
        str     r7, [sp, #0x44]
        str     r0, [sp, #0x2c]
        mul     r1, r7, r0
        ldr     r0, [sp, #0x6c]
        cmp     r0, #0
        ldr     r0, [sp]
        mul     r3, r1, r0
        addne   r0, r3, r3, lsr #31
        asrne   r3, r0, #1
        ldr     r0, L676838
        ldr     ip, [r0]
        cmp     ip, #0
        moveq   r0, #0
        beq     L6760d8
        mov     r2, #0
        mov     r1, #0x100
        mov     r0, #0x10000
        blx     ip
L6760d8:
        ldr     r1, [sp, #0x54]
        str     r0, [sp, #8]
        cmp     r1, #0xc
        ldrlo   pc, [pc, r1, lsl #2]
        b       L676494
L6760ec:
        .word   0x00776270
L6760f0:
        .word   0x007762d0
L6760f4:
        .word   0x0077639c
L6760f8:
        .word   0x0077639c
L6760fc:
        .word   0x0077639c
L676100:
        .word   0x00776314
L676104:
        .word   0x00776314
L676108:
        .word   0x007763f0
L67610c:
        .word   0x007763f0
L676110:
        .word   0x007763f0
L676114:
        .word   0x00776444
L676118:
        .word   0x00776444
L67611c:
        .word   0xe351000c
        .word   0x1351000d
        .word   0x1affffd4
        .word   0xe1a00fc7
        .word   0xe3a06000
        .word   0xe0871f20
        .word   0xe59d0020
        .word   0xe1a02141
        .word   0xe1a01141
        .word   0xe58d103c
        .word   0xe1a03fc0
        .word   0xe1a01006
        .word   0xe0800f23
        .word   0xe58d6030
        .word   0xe1a03140
        .word   0xe3530000
        .word   0xe1a0c140
        .word   0xe58d3018
        .word   0x9a000145
        .word   0xe59d003c
        .word   0xe00b0c90
        .word   0xe0000392
        .word   0xe58d0050
        .word   0xe59d0030
        .word   0xe3520000
        .word   0xe0817000
        .word   0x0a00002b
        .word   0xe1a080a7
        .word   0xe207a001
        .word   0xe59d703c
        .word   0xe3a00000
        .word   0xe1a05002
        .word   0xe1a03000
        .word   0xe0090798
        .word   0xe0070291
        .word   0xe1a0c000
        .word   0xe58d7040
        .word   0xe0867000
        .word   0xe0268000
        .word   0xe1a070a7
        .word   0xe2088001
        .word   0xe08770a9
        .word   0xe088808a
        .word   0xe0887107
        .word   0xe15b0007
        .word   0x9a000013
        .word   0xe0280291
        .word   0xe59de050
        .word   0xe15e0008
        .word   0x9a00000f
        .word   0xe59d8054
        .word   0xe358000c
        .word   0xe59d8040
        .word   0x0a000015
        .word   0xe59de024
        .word   0xe08c8108
        .word   0xe08e7207
        .word   0xe794e108
        .word   0xe0848108
        .word   0xe587e000
        .word   0xe598e004
        .word   0xe587e004
        .word   0xe598e008
        .word   0xe587e008
        .word   0xe598800c
        .word   0xe587800c
        .word   0xe2555001
        .word   0xe2833002
        .word   0xe28cc004
        .word   0xe2800001
        .word   0x1affffdd
        .word   0xe59d0018
        .word   0xe2811001
        .word   0xe1510000
        .word   0x3affffcb
        .word   0xea00010c
        .word   0xe59de024
        .word   0xe0838088
        .word   0xe08e7187
        .word   0xe794e108
        .word   0xe0848108
        .word   0xe587e000
        .word   0xe5988004
        .word   0xe5878004
        .word   0xeaffffec
        .word   0xe59d1020
        .word   0xe0000197
        .word   0xe3500000
        .word   0xda000084
        .word   0xe59d3008
        .word   0xe1a0e000
        .word   0xe1a00004
        .word   0xe1a01000
        .word   0xe1a02004
        .word   0xe3a058ff
        .word   0xe3a0ccff
        .word   0xe4906004
        .word   0xe4948004
        .word   0xe4919004
        .word   0xe492a004
        .word   0xe00c6426
        .word   0xe1866c28
        .word   0xe0058409
        .word   0xe1866008
        .word   0xe1868c0a
        .word   0xe25ee001
        .word   0xe4838004
        .word   0x1afffff3
        .word   0xea000070
        .word   0xe59d1020
        .word   0xe0020197
        .word   0xe3520000
        .word   0xda00006c
        .word   0xe59d0008
        .word   0xe2843002
        .word   0xe2841001
        .word   0xe4d3c003
        .word   0xe2522001
        .word   0xe5c0c000
        .word   0xe4d1c003
        .word   0xe5c0c001
        .word   0xe4d4c003
        .word   0xe5c0c002
        .word   0xe2800003
        .word   0x1afffff6
        .word   0xea00005f
        .word   0xe59d1020
        .word   0xe0030197
        .word   0xe3530000
        .word   0xda00005b
        .word   0xe59d0008
        .word   0xe0072001
        .word   0xe3120001
        .word   0xe2441002
        .word   0xe1a02001
        .word   0xe2400002
        .word   0x0a000006
        .word   0xe2812002
        .word   0xe1f1c0b2
        .word   0xe3a04cff
        .word   0xe1a0500c
        .word   0xe004c40c
        .word   0xe18cc425
        .word   0xe1e0c0b2
        .word   0xe1b030c3
        .word   0x13a0ccff
        .word   0x0a00004a
        .word   0xe1d250b2
        .word   0xe1d140b2
        .word   0xe2533001
        .word   0xe00c5405
        .word   0xe1854424
        .word   0xe1c040b2
        .word   0xe1f240b4
        .word   0xe1f150b4
        .word   0xe00c4404
        .word   0xe1844425
        .word   0xe1e040b4
        .word   0x1afffff3
        .word   0xea00003d
        .word   0xe59d1020
        .word   0xe0020197
        .word   0xe3520000
        .word   0xda000039
        .word   0xe0073001
        .word   0xe59d1008
        .word   0xe3130001
        .word   0xe2440002
        .word   0xe2411002
        .word   0x0a000001
        .word   0xe1f030b2
        .word   0xe1e130b2
        .word   0xe1b020c2
        .word   0x0a00002f
        .word   0xe1d030b2
        .word   0xe2522001
        .word   0xe1c130b2
        .word   0xe1f030b4
        .word   0xe1e130b4
        .word   0x1afffff9
        .word   0xea000028
        .word   0xe59d1020
        .word   0xe0020197
        .word   0xe3520000
        .word   0xda000024
        .word   0xe0011007
        .word   0xe3110001
        .word   0xe59d1008
        .word   0xe2440001
        .word   0xe2411001
        .word   0x0a000001
        .word   0xe5f03001
        .word   0xe5e13001
        .word   0xe1b020c2
        .word   0x0a00001a
        .word   0xe5d03001
        .word   0xe2522001
        .word   0xe5c13001
        .word   0xe5f03002
        .word   0xe5e13002
        .word   0x1afffff9
        .word   0xea000013
        .word   0xe59d0020
        .word   0xe0020097
        .word   0xe3520001
        .word   0xda00000f
        .word   0xe59d1008
        .word   0xe0822fa2
        .word   0xe2440001
        .word   0xe1b03f02
        .word   0xe2411001
        .word   0x5a000001
        .word   0xe5f03001
        .word   0xe5e13001
        .word   0xe1b02142
        .word   0x0a000005
        .word   0xe5d03001
        .word   0xe2522001
        .word   0xe5c13001
        .word   0xe5f03002
        .word   0xe5e13002
        .word   0x1afffff9
L676494:
        .word   0xe59d002c
        .word   0xe3500000
        .word   0xe3a00000
        .word   0xe58d0018
        .word   0x9a00006c
        .word   0xe59d0044
        .word   0xe59d1014
        .word   0xe3a05001
        .word   0xe0000190
        .word   0xe58d0060
        .word   0xe59d0020
        .word   0xe0000097
        .word   0xe58d0064
        .word   0xe59d0018
        .word   0xe59d1050
        .word   0xe0808001
        .word   0xe59d1020
        .word   0xe0000190
        .word   0xe59d102c
        .word   0xebe6b218
        .word   0xe58d0040
        .word   0xe59d0070
        .word   0xe3500000
        .word   0x0a000005
        .word   0xe59d002c
        .word   0xe59d1018
        .word   0xe0401001
        .word   0xe59d0050
        .word   0xe0800001
        .word   0xe2408001
        .word   0xe3570000
        .word   0xe3a09000
        .word   0x9a00004a
        .word   0xe59d1044
        .word   0xe1a001a8
        .word   0xe00a0190
        .word   0xe089600b
        .word   0xe1a01007
        .word   0xe1a001a6
        .word   0xe08001aa
        .word   0xe1a04300
        .word   0xe0000799
        .word   0xebe6b201
        .word   0xe3a02000
        .word   0xe3a01001
        .word   0xe008c001
        .word   0xe0063001
        .word   0xe083308c
        .word   0xe2822001
        .word   0xe0244193
        .word   0xe1a01215
        .word   0xe3510008
        .word   0xbafffff7
        .word   0xe59d1040
        .word   0xe0200791
        .word   0xe59d1060
        .word   0xe1510004
        .word   0x859d1064
        .word   0x81510000
        .word   0x9a00002c
        .word   0xe59d106c
        .word   0xe3510000
        .word   0xe59d1000
        .word   0x0a000012
        .word   0xe3190001
        .word   0xe0020194
        .word   0xe0030190
        .word   0xe59d0024
        .word   0xe59d1008
        .word   0xe7f020a2
        .word   0xe08110a3
        .word   0x0a000004
        .word   0xe5d11000
        .word   0xe202200f
        .word   0xe20110f0
        .word   0xe1811002
        .word   0xea000003
        .word   0xe5d13000
        .word   0xe20210f0
        .word   0xe203200f
        .word   0xe1811002
        .word   0xe5c01000
        .word   0xea000015
        .word   0xe59d2000
        .word   0xe3510000
        .word   0xe59d1024
        .word   0xe59d3008
        .word   0xe0211294
        .word   0xe0203290
        .word   0xda00000e
        .word   0xe3120001
        .word   0xe2400001
        .word   0xe2411001
        .word   0x0a000001
        .word   0xe5f02001
        .word   0xe5e12001
        .word   0xe59d2000
        .word   0xe1b020c2
        .word   0x0a000005
        .word   0xe5d03001
        .word   0xe2522001
        .word   0xe5c13001
        .word   0xe5f03002
        .word   0xe5e13002
        .word   0x1afffff9
        .word   0xe2899001
        .word   0xe1590007
        .word   0x3affffb7
        .word   0xe59d0018
        .word   0xe2800001
        .word   0xe58d0018
        .word   0xe59d102c
        .word   0xe1500001
        .word   0x3affff9a
        .word   0xe59f01d8
        .word   0xe590c000
        .word   0xe35c0000
        .word   0x0a000004
        .word   0xe59d3008
        .word   0xe3a02000
        .word   0xe3a01c01
        .word   0xe3a00801
        .word   0xe12fff3c
        .word   0xe59d0080
        .word   0xe5902038
        .word   0xe1cd03d4
        .word   0xe0000190
        .word   0xe0000092
        .word   0xe1a01fc0
        .word   0xe0801ea1
        .word   0xe59d0068
        .word   0xe08001c1
        .word   0xe58d0068
        .word   0xe59d004c
        .word   0xe2800001
        .word   0xe58d004c
        .word   0xe59d0034
        .word   0xe1a000c0
        .word   0xe58d0034
        .word   0xe1cd04d8
        .word   0xe1510000
        .word   0xe59d0038
        .word   0xe1a000c0
        .word   0xe58d0038
        .word   0xbafffe38
L6766d8:
        .word   0xe59d00c8
        .word   0xe28004ff
        .word   0xe2500802
        .word   0x13500801
        .word   0x0a00000b
        .word   0xe3500401
        .word   0x128004ff
        .word   0x12500801
        .word   0x1a00000b
        .word   0xe59d0080
        .word   0xe59d201c
        .word   0xe5901008
        .word   0xe5900000
        .word   0xebff9447
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000003
        .word   0xe59d0080
        .word   0xe1c000d0
        .word   0xe59d201c
        .word   0xebff9440
        .word   0xe59d00c8
        .word   0xe28004ff
        .word   0xe2500801
        .word   0x13500401
        .word   0x1a000003
        .word   0xe59d0080
        .word   0xe59d101c
        .word   0xe5900000
        .word   0xebe6c788
        .word   0xe59d007c
        .word   0xe5d00030
        .word   0xe3500000
        .word   0x0a000030
        .word   0xe59d1080
        .word   0xe59d0080
        .word   0xe5915010
        .word   0xe590001c
        .word   0xe591600c
        .word   0xe591c000
        .word   0xe3500005
        .word   0x379ff100
        .word   0xea00000d
        .word   0x00776798
        .word   0x007767a0
        .word   0x007767b0
        .word   0x007767b8
        .word   0x007767a8
        .word   0xe3a08000
        .word   0xea000006
        .word   0xe3a08001
        .word   0xea000004
        .word   0xe3a08004
        .word   0xea000002
        .word   0xe3a08003
        .word   0xea000000
        .word   0xe3a08002
        .word   0xe5910034
        .word   0xe3a07001
        .word   0xe3500001
        .word   0xda000015
        .word   0xe59d0080
        .word   0xe0010596
        .word   0xe1a03005
        .word   0xe5900038
        .word   0xe1a02006
        .word   0xe58d8000
        .word   0xe0000190
        .word   0xe1a01fc0
        .word   0xe0800ea1
        .word   0xe08c01c0
        .word   0xe1a04000
        .word   0xe1a01000
        .word   0xe1a0000c
        .word   0xebff93da
        .word   0xe59d0080
        .word   0xe2877001
        .word   0xe1a0c004
        .word   0xe1a060c6
        .word   0xe5900034
        .word   0xe1a050c5
        .word   0xe1500007
        .word   0xcaffffe9
L676824:
        .word   0xe59d107c
        .word   0xe59d00c8
        .word   0xe581002c
L676830:
        .word   0xe28dd08c
        .word   0xe8bd8ff0
L676838:
        .word   0x008aab18
        .word   0x008aab1c
        .size   A_675e00, . - A_675e00

@ FUN_00676840
        .global A_676840
        .type   A_676840, %function
A_676840:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        ldr     r2, L676ba8
        ldr     r3, [r2]
        ldr     r2, [r0, #0x34]
        add     ip, r3, #0x58
        add     r4, r3, #0x770
        add     r3, ip, r1
        cmp     r2, #0
        ldrb    lr, [r3, #0xac]
        ldreq   r2, L676bac
        movne   r2, #0
        cmp     lr, #0
        beq     L67687c
        cmp     r2, #0
        beq     L6768cc
L67687c:
        cmp     r1, #0
        ldreq   r0, [r4]
        biceq   r0, r0, #1
        beq     L6768b8
        cmp     r1, #1
        ldreq   r0, [r4]
        biceq   r0, r0, #2
        beq     L6768b8
        cmp     r1, #2
        ldreq   r0, [r4]
        ldrne   r0, L676bb0
        biceq   r0, r0, #4
        streq   r0, [r4]
        beq     L6768bc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L6768b8:
        str     r0, [r4]
L6768bc:
        ldrb    r0, [r3, #0xac]
        cmp     r0, #0
        movne   r0, r2
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L6768cc:
        vldr    s0, L676bb4
        vldr    s7, [r0, #0x1c]
        vldr    s8, [r0, #0x18]
        vldr    s1, [r0, #0x20]
        vldr    s6, [r0, #0x24]
        vmul.f32 s7, s7, s0
        vmul.f32 s8, s8, s0
        vmul.f32 s9, s1, s0
        vmul.f32 s10, s6, s0
        vldr    s2, L676bb8
        vldr    s5, L676bbc
        vldr    s3, L676bc0
        vldr    s4, L676bc4
        vldr    s1, L676bc8
        cmp     r1, #0
        vcvt.u32.f32 s6, s7
        vcvt.u32.f32 s0, s8
        vcvt.u32.f32 s7, s9
        vcvt.u32.f32 s8, s10
        mvn     fp, #0xf8000000
        mov     lr, #0xff
        mov     r2, #0xf0000
        mov     r3, #0xf000000
        mov     r6, #0
        vmov    r8, s6
        vmov    r7, s0
        vmov    sb, s7
        vmov    sl, s8
        orr     r7, r7, r8, lsl #8
        add     r5, r0, #0x34
        orr     r7, r7, sb, lsl #16
        orr     r7, r7, sl, lsl #24
        beq     L676968
        ldr     ip, L676bcc
        cmp     r1, #1
        beq     L676edc
        cmp     r1, #2
        bne     L6777d0
        b       L677354
L676968:
        ldr     r1, [r4, #0xc]
        str     r7, [r4, #4]
        bic     r8, r1, #0x100000
        str     r8, [r4, #0xc]
        ldr     r1, [r4, #8]
        ldr     r7, [r5, #0xc]
        bic     r1, r1, #0x7000000
        bic     r1, r1, #0xff0000
        and     r7, fp, r7, lsl #16
        orr     r1, r1, r7
        str     r1, [r4, #8]
        ldr     r7, [r5, #0x10]
        lsr     r1, r1, #0xb
        lsl     r1, r1, #0xb
        lsl     r7, r7, #0x15
        lsr     r7, r7, #0x15
        orr     r7, r7, r1
        str     r7, [r4, #8]
        vldr    s0, [r0, #0x28]
        vmov    r1, s0
        vcmp.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        beq     L6769d0
        lsl     r1, r1, #1
        cmp     lr, r1, lsr #24
        bne     L6769e0
L6769d0:
        ldr     r1, [r4, #0x10]
        lsr     lr, r1, #0xd
        lsl     lr, lr, #0xd
        b       L676a3c
L6769e0:
        vadd.f32 s0, s0, s2
        vmul.f32 s0, s0, s5
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s1
        bgt     L676a44
        vmov    r1, s0
        cmp     r1, #0x46000000
        vmovge.f32 s0, s3
        bge     L676a18
        ldr     lr, L676bd0
        vmov    r1, s0
        cmp     r1, lr
        blt     L676a44
L676a18:
        vsub.f32 s0, s0, s4
        ldr     lr, [r4, #0x10]
        lsr     lr, lr, #0xd
        lsl     lr, lr, #0xd
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
        lsl     r1, r1, #0x13
        lsr     r1, r1, #0x13
        orr     lr, lr, r1
L676a3c:
        str     lr, [r4, #0x10]
        b       L676a6c
L676a44:
        vadd.f32 s0, s0, s4
        ldr     lr, [r4, #0x10]
        lsr     lr, lr, #0xd
        lsl     lr, lr, #0xd
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
        lsl     r1, r1, #0x13
        lsr     r1, r1, #0x13
        orr     lr, lr, r1
        str     lr, [r4, #0x10]
L676a6c:
        ldr     r1, [r4, #0x38]
        ldr     r7, [r5, #0x1c]
        ldr     lr, L676bd4
        bic     r1, r1, #0xf
        and     r7, r7, #0xf
        orr     r7, r7, r1
        str     r7, [r4, #0x38]
        ldr     r1, [r5, #0x14]
        cmp     r1, lr
        sub     lr, r1, lr
        beq     L676e08
        bgt     L676ab0
        sub     r1, r1, #0x1900
        sub     r1, r1, #6
        cmp     r1, #4
        bhi     L676acc
        b       L676ad4
L676ab0:
        cmp     lr, #0x10
        beq     L676e44
        cmp     lr, #0x6c0
        subne   r1, lr, #0x700
        subsne  r1, r1, #0x1a
        cmpne   r1, #1
        beq     L676ad4
L676acc:
        ldr     r0, L676bac
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L676ad4:
        ldr     r1, [ip, #0xa0]
        cmp     r1, #0x6e00
        ldr     r1, [r4, #0xc]
        biceq   r1, r1, #0x70000000
        orreq   ip, r1, #0x30000000
        bicne   ip, r1, #0x70000000
        str     ip, [r4, #0xc]
        ldr     r1, [r0, #8]
        sub     r1, r1, #0x2900
        subs    r1, r1, #1
        beq     L676b2c
        sub     r1, r1, #0x5800
        subs    r1, r1, #0x2c
        beq     L676b3c
        cmp     r1, #2
        ldreq   r1, [r4, #0xc]
        biceq   ip, r1, #0x7000
        beq     L676b58
        sub     r1, r1, #0x200
        subs    r1, r1, #0x43
        bne     L676b5c
        b       L676b4c
L676b2c:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x7000
        orr     ip, r1, #0x2000
        b       L676b58
L676b3c:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x7000
        orr     ip, r1, #0x1000
        b       L676b58
L676b4c:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x7000
        orr     ip, r1, #0x3000
L676b58:
        str     ip, [r4, #0xc]
L676b5c:
        ldr     r1, [r0, #0xc]
        sub     r1, r1, #0x2900
        subs    r1, r1, #1
        beq     L676b98
        sub     r1, r1, #0x5800
        subs    r1, r1, #0x2c
        beq     L676bd8
        cmp     r1, #2
        ldreq   r1, [r4, #0xc]
        biceq   ip, r1, #0x700
        beq     L676bf4
        sub     r1, r1, #0x200
        subs    r1, r1, #0x43
        bne     L676bf8
        b       L676be8
L676b98:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x200
        b       L676bf4
L676ba8:
        .word   0x008ab81c
L676bac:
        .word   0x00000502
L676bb0:
        .word   0x00000501
L676bb4:
        .word   0x437f0000
L676bb8:
        .word   0x41800000
L676bbc:
        .word   0x43800000
L676bc0:
        .word   0x45fff800
L676bc4:
        .word   0x45800000
L676bc8:
        .word   0x00000000
L676bcc:
        .word   0x0000190a
L676bd0:
        .word   0x45800000
L676bd4:
        .word   0x00006040
L676bd8:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x100
        b       L676bf4
L676be8:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x300
L676bf4:
        str     ip, [r4, #0xc]
L676bf8:
        ldr     r1, [r0]
        cmp     r1, #0x2600
        ldreq   r1, [r4, #0xc]
        biceq   ip, r1, #2
        beq     L676c20
        sub     r1, r1, #0x2600
        subs    r1, r1, #1
        ldreq   r1, [r4, #0xc]
        orreq   ip, r1, #2
        bne     L676c24
L676c20:
        str     ip, [r4, #0xc]
L676c24:
        ldr     ip, [r0, #4]
        ldr     r1, L6777d8
        cmp     ip, r1
        sub     r1, ip, r1
        beq     L676d80
        bgt     L676c5c
        cmp     ip, #0x2600
        beq     L676c70
        sub     r1, ip, #0x2600
        subs    r1, r1, #1
        beq     L676d3c
        cmp     r1, #0xff
        bne     L676d5c
        b       L676c94
L676c5c:
        cmp     r1, #1
        beq     L676ce8
        cmp     r1, #2
        bne     L676d5c
        b       L676dc0
L676c70:
        ldr     r1, [r4, #0x10]
        ldr     r2, [r4, #0xc]
        bic     r1, r1, #0xf000000
        bic     r2, r2, #4
        bic     r1, r1, #0xf0000
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
        b       L676d5c
L676c94:
        ldr     r1, [r4, #0xc]
        bic     ip, r1, #4
        str     ip, [r4, #0xc]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x10]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x10]
        ldr     r0, [r0, #0x14]
        bic     r2, r1, #0xf000000
        cmp     r0, #0
        blt     L676db8
L676ccc:
        ldr     r1, [r4, #0xc]
        and     r0, r3, r0, lsl #24
        add     r6, r4, #0xc
        orr     r2, r2, r0
        bic     r1, r1, #0x1000000
        stm     r6, {r1, r2}
        b       L676d5c
L676ce8:
        ldr     r1, [r4, #0xc]
        bic     ip, r1, #4
        str     ip, [r4, #0xc]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x10]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x10]
        ldr     r0, [r0, #0x14]
        bic     r2, r1, #0xf000000
        cmp     r0, #0
        blt     L676df8
L676d20:
        ldr     r1, [r4, #0xc]
        and     r0, r3, r0, lsl #24
        add     r6, r4, #0xc
        orr     r2, r2, r0
        orr     r1, r1, #0x1000000
        stm     r6, {r1, r2}
        b       L676d5c
L676d3c:
        ldr     r1, [r4, #0x10]
        ldr     r2, [r4, #0xc]
        bic     r1, r1, #0xf000000
        orr     r2, r2, #4
        bic     r1, r1, #0xf0000
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x10]
        str     r2, [r4, #0xc]
L676d5c:
        ldr     r2, [r5, #0x14]
        ldr     r1, [r4, #0xc]
        sub     r0, r2, #0x6700
        subs    r0, r0, #0x5a
        moveq   r0, #2
        movne   r0, #0
        bic     r1, r1, #0x30
        orr     r1, r1, r0, lsl #4
        b       L676e00
L676d80:
        ldr     r1, [r4, #0xc]
        orr     ip, r1, #4
        str     ip, [r4, #0xc]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x10]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x10]
        ldr     r0, [r0, #0x14]
        bic     r2, r1, #0xf000000
        cmp     r0, #0
        bge     L676ccc
L676db8:
        mov     r0, #0
        b       L676ccc
L676dc0:
        ldr     r1, [r4, #0xc]
        orr     ip, r1, #4
        str     ip, [r4, #0xc]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x10]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x10]
        ldr     r0, [r0, #0x14]
        bic     r2, r1, #0xf000000
        cmp     r0, #0
        bge     L676d20
L676df8:
        mov     r0, #0
        b       L676d20
L676e00:
        str     r1, [r4, #0xc]
        b       L676e78
L676e08:
        ldr     r1, [r4, #0x10]
        ldr     r2, [r4, #0xc]
        bic     r1, r1, #0xf000000
        bic     r1, r1, #0xf0000
        bic     r0, r2, #0x71000000
        lsr     r2, r1, #0xd
        orr     r1, r0, #0x20000006
        add     r0, r4, #0xc
        lsl     r2, r2, #0xd
        orr     r1, r1, #0x100000
        stm     r0, {r1, r2}
        bic     r0, r1, #0x7000
        bic     r0, r0, #0x730
        orr     r1, r0, #0x1100
        b       L676e00
L676e44:
        add     r1, r4, #0xc
        ldm     r1, {r1, r2}
        bic     r0, r1, #0x30
        bic     r1, r2, #0xf000000
        bic     r1, r1, #0xf0000
        bic     r0, r0, #0x70000000
        lsr     r1, r1, #0xd
        bic     r2, r0, #6
        lsl     r1, r1, #0xd
        str     r1, [r4, #0x10]
        bic     r1, r2, #0x7700
        str     r1, [r4, #0xc]
        str     r6, [r4, #4]
L676e78:
        ldr     r0, [r5]
        bl      Fn_02a670
        ldr     r1, [r4, #0x14]
        add     r2, r4, #4
        and     r1, r1, #0xc0000000
        orr     r1, r1, r0, lsr #3
        str     r1, [r4, #0x14]
        ldr     r0, [r4]
        orr     r1, r0, #1
        str     r1, [r4]
        mov     r1, #0xa
        mov     r0, #0x81
        bl      Fn_6466d8
        ldr     r2, L6777dc
        ldr     r0, L6777e0
        ldr     r1, [r2]
        ldr     r0, [r0]
        cmp     r1, r0
        bhs     L6777d0
        ldr     r3, [r4, #0x38]
        ldr     ip, L6777e4
        add     lr, r1, #8
        stm     r1, {r3, ip}
        str     lr, [r2]
        b       L6777d0
L676edc:
        vldr    s0, [r0, #0x28]
        vmov    r1, s0
        vcmp.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        beq     L676efc
        lsl     r1, r1, #1
        cmp     lr, r1, lsr #24
        bne     L676f04
L676efc:
        mov     r1, #0
        b       L676f58
L676f04:
        vadd.f32 s0, s0, s2
        vmul.f32 s0, s0, s5
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s1
        bgt     L676f4c
        vmov    r1, s0
        cmp     r1, #0x46000000
        vmovge.f32 s0, s3
        bge     L676f3c
        ldr     lr, [pc, #-0x364]
        vmov    r1, s0
        cmp     r1, lr
        blt     L676f4c
L676f3c:
        vsub.f32 s0, s0, s4
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
        b       L676f58
L676f4c:
        vadd.f32 s0, s0, s4
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
L676f58:
        ldr     lr, [r4, #0x50]
        lsl     r1, r1, #0x13
        lsr     lr, lr, #0xd
        lsr     r1, r1, #0x13
        lsl     lr, lr, #0xd
        orr     lr, lr, r1
        str     lr, [r4, #0x50]
        ldr     r1, [r4, #0x4c]
        bic     r1, r1, #0xc0
        str     r1, [r4, #0x4c]
        ldr     lr, [r5, #0x14]
        cmp     lr, ip
        sub     ip, lr, #0x1900
        sub     ip, ip, #0xa
        beq     L676fd8
        bge     L676fb8
        sub     ip, lr, #0x1900
        subs    ip, ip, #6
        cmpne   ip, #1
        beq     L676fd8
        cmp     ip, #2
        cmpne   ip, #3
        beq     L676fd8
        b       L676acc
L676fb8:
        sub     ip, ip, #0x4700
        subs    ip, ip, #0x46
        beq     L677280
        cmp     ip, #0x6b0
        subne   ip, ip, #0x700
        subsne  ip, ip, #0xa
        cmpne   ip, #1
        bne     L676acc
L676fd8:
        ldr     ip, [r0, #8]
        sub     ip, ip, #0x2900
        subs    ip, ip, #1
        biceq   r1, r1, #0x7000
        orreq   ip, r1, #0x2000
        beq     L677024
        sub     ip, ip, #0x5800
        subs    ip, ip, #0x2c
        biceq   r1, r1, #0x7000
        orreq   ip, r1, #0x1000
        beq     L677024
        cmp     ip, #2
        biceq   ip, r1, #0x7000
        beq     L677024
        sub     ip, ip, #0x200
        subs    ip, ip, #0x43
        biceq   r1, r1, #0x7000
        orreq   ip, r1, #0x3000
        bne     L677028
L677024:
        str     ip, [r4, #0x4c]
L677028:
        ldr     r1, [r0, #0xc]
        sub     r1, r1, #0x2900
        subs    r1, r1, #1
        beq     L677064
        sub     r1, r1, #0x5800
        subs    r1, r1, #0x2c
        beq     L677074
        cmp     r1, #2
        ldreq   r1, [r4, #0x4c]
        biceq   ip, r1, #0x700
        beq     L677090
        sub     r1, r1, #0x200
        subs    r1, r1, #0x43
        bne     L677094
        b       L677084
L677064:
        ldr     r1, [r4, #0x4c]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x200
        b       L677090
L677074:
        ldr     r1, [r4, #0x4c]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x100
        b       L677090
L677084:
        ldr     r1, [r4, #0x4c]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x300
L677090:
        str     ip, [r4, #0x4c]
L677094:
        ldr     r1, [r0]
        cmp     r1, #0x2600
        ldreq   r1, [r4, #0x4c]
        biceq   ip, r1, #2
        beq     L6770bc
        sub     r1, r1, #0x2600
        subs    r1, r1, #1
        ldreq   r1, [r4, #0x4c]
        orreq   ip, r1, #2
        bne     L6770c0
L6770bc:
        str     ip, [r4, #0x4c]
L6770c0:
        ldr     ip, [r0, #4]
        ldr     r1, L6777d8
        cmp     ip, r1
        sub     r1, ip, r1
        beq     L677200
        bgt     L6770f8
        cmp     ip, #0x2600
        beq     L67710c
        sub     r1, ip, #0x2600
        subs    r1, r1, #1
        beq     L6771d8
        cmp     r1, #0xff
        bne     L6771f8
        b       L677130
L6770f8:
        cmp     r1, #1
        beq     L677184
        cmp     r1, #2
        bne     L6771f8
        b       L677240
L67710c:
        ldr     r1, [r4, #0x50]
        ldr     r2, [r4, #0x4c]
        bic     r1, r1, #0xf000000
        bic     r2, r2, #4
        bic     r1, r1, #0xf0000
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x50]
        str     r2, [r4, #0x4c]
        b       L6771f8
L677130:
        ldr     r1, [r4, #0x4c]
        bic     ip, r1, #4
        str     ip, [r4, #0x4c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x50]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x50]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        blt     L677238
L677168:
        ldr     r2, [r4, #0x4c]
        and     r0, r3, r0, lsl #24
        orr     r1, r1, r0
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x50]
        str     r2, [r4, #0x4c]
        b       L6771f8
L677184:
        ldr     r1, [r4, #0x4c]
        bic     ip, r1, #4
        str     ip, [r4, #0x4c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x50]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x50]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        blt     L677278
L6771bc:
        ldr     r2, [r4, #0x4c]
        and     r0, r3, r0, lsl #24
        orr     r1, r1, r0
        orr     r2, r2, #0x1000000
        str     r1, [r4, #0x50]
        str     r2, [r4, #0x4c]
        b       L6771f8
L6771d8:
        ldr     r1, [r4, #0x50]
        ldr     r2, [r4, #0x4c]
        bic     r1, r1, #0xf000000
        orr     r2, r2, #4
        bic     r1, r1, #0xf0000
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x50]
        str     r2, [r4, #0x4c]
L6771f8:
        str     r7, [r4, #0x44]
        b       L6772ac
L677200:
        ldr     r1, [r4, #0x4c]
        orr     ip, r1, #4
        str     ip, [r4, #0x4c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x50]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x50]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        bge     L677168
L677238:
        mov     r0, #0
        b       L677168
L677240:
        ldr     r1, [r4, #0x4c]
        orr     ip, r1, #4
        str     ip, [r4, #0x4c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x50]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x50]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        bge     L6771bc
L677278:
        mov     r0, #0
        b       L6771bc
L677280:
        bic     r0, r1, #2
        ldr     r1, [r4, #0x50]
        bic     r2, r0, #4
        bic     r2, r2, #0x7700
        bic     r1, r1, #0xf000000
        bic     r1, r1, #0xf0000
        lsr     r1, r1, #0xd
        lsl     r1, r1, #0xd
        str     r1, [r4, #0x50]
        str     r2, [r4, #0x4c]
        str     r6, [r4, #0x44]
L6772ac:
        ldr     r2, [r5, #0x14]
        ldr     r1, [r4, #0x4c]
        sub     r0, r2, #0x6700
        subs    r0, r0, #0x5a
        moveq   r0, #2
        movne   r0, #0
        bic     r1, r1, #0x30
        orr     r1, r1, r0, lsl #4
        str     r1, [r4, #0x4c]
        ldr     r0, [r4, #0x48]
        ldr     r1, [r5, #0xc]
        bic     r0, r0, #0x7000000
        bic     r0, r0, #0xff0000
        and     r1, fp, r1, lsl #16
        orr     r0, r0, r1
        str     r0, [r4, #0x48]
        ldr     r1, [r5, #0x10]
        lsr     r0, r0, #0xb
        lsl     r0, r0, #0xb
        lsl     r1, r1, #0x15
        lsr     r1, r1, #0x15
        orr     r1, r1, r0
        str     r1, [r4, #0x48]
        ldr     r0, [r5]
        bl      Fn_02a670
        ldr     r1, [r4, #0x54]
        add     r2, r4, #0x44
        and     r1, r1, #0xc0000000
        orr     r1, r1, r0, lsr #3
        str     r1, [r4, #0x54]
        ldr     r0, [r4]
        orr     r1, r0, #2
        str     r1, [r4]
        ldr     r1, [r5, #0x1c]
        ldr     r0, [r4, #0x58]
        and     r1, r1, #0xf
        bic     r0, r0, #0xf
        orr     r1, r1, r0
        str     r1, [r4, #0x58]
        mov     r1, #6
        mov     r0, #0x91
        b       L6777cc
L677354:
        vldr    s0, [r0, #0x28]
        vmov    r1, s0
        vcmp.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        beq     L677374
        lsl     r1, r1, #1
        cmp     lr, r1, lsr #24
        bne     L67737c
L677374:
        mov     r1, #0
        b       L6773d0
L67737c:
        vadd.f32 s0, s0, s2
        vmul.f32 s0, s0, s5
        vcmpe.f32 s1, s0
        vmrs    apsr_nzcv, fpscr
        vmovgt.f32 s0, s1
        bgt     L6773c4
        vmov    r1, s0
        cmp     r1, #0x46000000
        vmovge.f32 s0, s3
        bge     L6773b4
        ldr     lr, [pc, #-0x7dc]
        vmov    r1, s0
        cmp     r1, lr
        blt     L6773c4
L6773b4:
        vsub.f32 s0, s0, s4
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
        b       L6773d0
L6773c4:
        vadd.f32 s0, s0, s4
        vcvt.u32.f32 s0, s0
        vmov    r1, s0
L6773d0:
        ldr     lr, [r4, #0x70]
        lsl     r1, r1, #0x13
        lsr     lr, lr, #0xd
        lsr     r1, r1, #0x13
        lsl     lr, lr, #0xd
        orr     lr, lr, r1
        str     lr, [r4, #0x70]
        ldr     r1, [r4, #0x6c]
        bic     r1, r1, #0xc0
        str     r1, [r4, #0x6c]
        ldr     lr, [r5, #0x14]
        cmp     lr, ip
        sub     ip, lr, #0x1900
        sub     ip, ip, #0xa
        beq     L677450
        bge     L677430
        sub     ip, lr, #0x1900
        subs    ip, ip, #6
        cmpne   ip, #1
        beq     L677450
        cmp     ip, #2
        cmpne   ip, #3
        beq     L677450
        b       L676acc
L677430:
        sub     ip, ip, #0x4700
        subs    ip, ip, #0x46
        beq     L6776f8
        cmp     ip, #0x6b0
        subne   ip, ip, #0x700
        subsne  ip, ip, #0xa
        cmpne   ip, #1
        bne     L676acc
L677450:
        ldr     ip, [r0, #8]
        sub     ip, ip, #0x2900
        subs    ip, ip, #1
        biceq   r1, r1, #0x7000
        orreq   ip, r1, #0x2000
        beq     L67749c
        sub     ip, ip, #0x5800
        subs    ip, ip, #0x2c
        biceq   r1, r1, #0x7000
        orreq   ip, r1, #0x1000
        beq     L67749c
        cmp     ip, #2
        biceq   ip, r1, #0x7000
        beq     L67749c
        sub     ip, ip, #0x200
        subs    ip, ip, #0x43
        biceq   r1, r1, #0x7000
        orreq   ip, r1, #0x3000
        bne     L6774a0
L67749c:
        str     ip, [r4, #0x6c]
L6774a0:
        ldr     r1, [r0, #0xc]
        sub     r1, r1, #0x2900
        subs    r1, r1, #1
        beq     L6774dc
        sub     r1, r1, #0x5800
        subs    r1, r1, #0x2c
        beq     L6774ec
        cmp     r1, #2
        ldreq   r1, [r4, #0x6c]
        biceq   ip, r1, #0x700
        beq     L677508
        sub     r1, r1, #0x200
        subs    r1, r1, #0x43
        bne     L67750c
        b       L6774fc
L6774dc:
        ldr     r1, [r4, #0x6c]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x200
        b       L677508
L6774ec:
        ldr     r1, [r4, #0x6c]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x100
        b       L677508
L6774fc:
        ldr     r1, [r4, #0x6c]
        bic     r1, r1, #0x700
        orr     ip, r1, #0x300
L677508:
        str     ip, [r4, #0x6c]
L67750c:
        ldr     r1, [r0]
        cmp     r1, #0x2600
        ldreq   r1, [r4, #0x6c]
        biceq   ip, r1, #2
        beq     L677534
        sub     r1, r1, #0x2600
        subs    r1, r1, #1
        ldreq   r1, [r4, #0x6c]
        orreq   ip, r1, #2
        bne     L677538
L677534:
        str     ip, [r4, #0x6c]
L677538:
        ldr     ip, [r0, #4]
        ldr     r1, L6777d8
        cmp     ip, r1
        sub     r1, ip, r1
        beq     L677678
        bgt     L677570
        cmp     ip, #0x2600
        beq     L677584
        sub     r1, ip, #0x2600
        subs    r1, r1, #1
        beq     L677650
        cmp     r1, #0xff
        bne     L677670
        b       L6775a8
L677570:
        cmp     r1, #1
        beq     L6775fc
        cmp     r1, #2
        bne     L677670
        b       L6776b8
L677584:
        ldr     r1, [r4, #0x70]
        ldr     r2, [r4, #0x6c]
        bic     r1, r1, #0xf000000
        bic     r2, r2, #4
        bic     r1, r1, #0xf0000
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x70]
        str     r2, [r4, #0x6c]
        b       L677670
L6775a8:
        ldr     r1, [r4, #0x6c]
        bic     ip, r1, #4
        str     ip, [r4, #0x6c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x70]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x70]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        blt     L6776b0
L6775e0:
        ldr     r2, [r4, #0x6c]
        and     r0, r3, r0, lsl #24
        orr     r1, r1, r0
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x70]
        str     r2, [r4, #0x6c]
        b       L677670
L6775fc:
        ldr     r1, [r4, #0x6c]
        bic     ip, r1, #4
        str     ip, [r4, #0x6c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x70]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x70]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        blt     L6776f0
L677634:
        ldr     r2, [r4, #0x6c]
        and     r0, r3, r0, lsl #24
        orr     r1, r1, r0
        orr     r2, r2, #0x1000000
        str     r1, [r4, #0x70]
        str     r2, [r4, #0x6c]
        b       L677670
L677650:
        ldr     r1, [r4, #0x70]
        ldr     r2, [r4, #0x6c]
        bic     r1, r1, #0xf000000
        orr     r2, r2, #4
        bic     r1, r1, #0xf0000
        bic     r2, r2, #0x1000000
        str     r1, [r4, #0x70]
        str     r2, [r4, #0x6c]
L677670:
        str     r7, [r4, #0x64]
        b       L677728
L677678:
        ldr     r1, [r4, #0x6c]
        orr     ip, r1, #4
        str     ip, [r4, #0x6c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x70]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x70]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        bge     L6775e0
L6776b0:
        mov     r0, #0
        b       L6775e0
L6776b8:
        ldr     r1, [r4, #0x6c]
        orr     ip, r1, #4
        str     ip, [r4, #0x6c]
        ldr     ip, [r5, #0x34]
        ldr     r1, [r4, #0x70]
        sub     ip, ip, #1
        bic     r1, r1, #0xf0000
        and     r2, r2, ip, lsl #16
        orr     r1, r1, r2
        str     r1, [r4, #0x70]
        ldr     r0, [r0, #0x14]
        bic     r1, r1, #0xf000000
        cmp     r0, #0
        bge     L677634
L6776f0:
        mov     r0, #0
        b       L677634
L6776f8:
        bic     r0, r1, #2
        ldr     r1, [r4, #0x70]
        bic     r2, r0, #4
        str     r2, [r4, #0x6c]
        bic     r0, r1, #0xf0000
        bic     r0, r0, #0xf000000
        bic     r1, r2, #0x7700
        lsr     r2, r0, #0xd
        add     r0, r4, #0x6c
        lsl     r2, r2, #0xd
        str     r6, [r4, #0x64]
        stm     r0, {r1, r2}
L677728:
        ldr     r2, [r5, #0x14]
        ldr     r1, [r4, #0x6c]
        sub     r0, r2, #0x6700
        subs    r0, r0, #0x5a
        moveq   r0, #2
        movne   r0, #0
        bic     r1, r1, #0x30
        orr     r1, r1, r0, lsl #4
        str     r1, [r4, #0x6c]
        ldr     r0, [r4, #0x68]
        ldr     r1, [r5, #0xc]
        bic     r0, r0, #0x7000000
        bic     r0, r0, #0xff0000
        and     r1, fp, r1, lsl #16
        orr     r0, r0, r1
        str     r0, [r4, #0x68]
        ldr     r1, [r5, #0x10]
        lsr     r0, r0, #0xb
        lsl     r0, r0, #0xb
        lsl     r1, r1, #0x15
        lsr     r1, r1, #0x15
        orr     r1, r1, r0
        str     r1, [r4, #0x68]
        ldr     r0, [r5]
        bl      Fn_02a670
        ldr     r1, [r4, #0x74]
        add     r2, r4, #0x64
        and     r1, r1, #0xc0000000
        orr     r1, r1, r0, lsr #3
        str     r1, [r4, #0x74]
        ldr     r0, [r4]
        orr     r1, r0, #4
        str     r1, [r4]
        ldr     r1, [r5, #0x1c]
        ldr     r0, [r4, #0x78]
        and     r1, r1, #0xf
        bic     r0, r0, #0xf
        orr     r1, r1, r0
        str     r1, [r4, #0x78]
        mov     r1, #6
        mov     r0, #0x99
L6777cc:
        bl      Fn_6466d8
L6777d0:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L6777d8:
        .word   0x00002701
L6777dc:
        .word   0x008ab4f8
L6777e0:
        .word   0x008ab4fc
L6777e4:
        .word   0x000f008e
        .size   A_676840, . - A_676840

@ FUN_006777e8
        .global A_6777e8
        .type   A_6777e8, %function
A_6777e8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        cmp     r1, #0
        ldr     r0, L677bbc
        ldr     lr, L677bb8
        ldr     r0, [r0]
        beq     L67780c
L677804:
        mov     r0, lr
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L67780c:
        add     r4, r0, #0x770
        add     r6, r0, #0x58
        mov     r3, #1
        add     r2, r5, #0x34
L67781c:
        add     ip, r3, r3, lsl #4
        add     r0, r5, ip, lsl #2
        ldr     ip, [r0, #0x34]!
        cmp     ip, #0
        beq     L6778ac
        ldr     r7, [r2, #0x34]
        ldr     r8, [r0, #0x34]
        cmp     r7, r8
        bne     L6778ac
        ldr     r7, [r0, #0x20]
        ldr     r8, [r2, #0x20]
        cmp     r8, r7
        bne     L6778ac
        ldr     r8, [r2, #0xc]
        ldr     sb, [r0, #0xc]
        cmp     r8, sb
        bne     L6778ac
        ldr     r8, [r2, #0x10]
        ldr     sb, [r0, #0x10]
        cmp     r8, sb
        bne     L6778ac
        ldr     r8, [r2, #0x14]
        ldr     r0, [r0, #0x14]
        cmp     r8, r0
        bne     L6778ac
        ldr     r0, [r2]
        add     r7, r7, ip
        sub     r7, r7, #1
        asr     r7, r7, #0x19
        cmp     r7, r0, asr #25
        bne     L6778ac
        cmp     r0, ip
        bhi     L6778ac
        add     r3, r3, #1
        cmp     r3, #6
        blt     L67781c
L6778ac:
        add     r1, r1, r6
        cmp     r3, #6
        ldrb    r1, [r1, #0xaf]
        movne   r0, lr
        moveq   r0, #0
        cmp     r1, #0
        beq     L6778d0
        cmp     r0, #0
        beq     L6778e0
L6778d0:
        ldr     r1, [r4]
        bic     r1, r1, #1
        str     r1, [r4]
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L6778e0:
        add     r0, r5, #0x20
        vldr    s0, L677bc0
        vldr    s3, [r5, #0x1c]
        vldr    s4, [r5, #0x18]
        ldr     r1, [r4, #0xc]
        vmul.f32 s3, s3, s0
        vldmia  r0, {s1, s2}
        vmul.f32 s4, s4, s0
        mov     r0, r2
        bic     r1, r1, #0x1100000
        vmul.f32 s5, s1, s0
        vmul.f32 s6, s2, s0
        str     r1, [r4, #0xc]
        mvn     ip, #0xf8000000
        ldr     r3, L677bc4
        vcvt.u32.f32 s1, s3
        vcvt.u32.f32 s0, s4
        vcvt.u32.f32 s2, s5
        vcvt.u32.f32 s3, s6
        vmov    r8, s1
        vmov    r7, s0
        vmov    r6, s2
        vmov    r2, s3
        orr     r8, r7, r8, lsl #8
        mov     r7, r4
        orr     r6, r8, r6, lsl #16
        orr     r2, r6, r2, lsl #24
        str     r2, [r4, #4]
        ldr     r2, [r4, #8]
        ldr     r6, [r0, #0xc]
        bic     r2, r2, #0x7000000
        bic     r2, r2, #0xff0000
        and     ip, ip, r6, lsl #16
        orr     r2, r2, ip
        str     r2, [r4, #8]
        ldr     ip, [r0, #0x10]
        lsr     r2, r2, #0xb
        lsl     r2, r2, #0xb
        lsl     ip, ip, #0x15
        lsr     ip, ip, #0x15
        orr     ip, ip, r2
        str     ip, [r4, #8]
        ldr     r2, [r4, #0x2c]
        and     ip, r2, #0xff000000
        str     ip, [r4, #0x2c]
        ldr     r2, [r4, #0x38]
        ldr     ip, [r0, #0x1c]
        bic     r2, r2, #0xf
        and     ip, ip, #0xf
        orr     ip, ip, r2
        str     ip, [r4, #0x38]
        ldr     r2, [r0, #0x14]
        cmp     r2, r3
        sub     r3, r2, r3
        beq     L6779fc
        bge     L6779e0
        sub     r2, r2, #0x1900
        subs    r2, r2, #6
        cmpne   r2, #1
        beq     L6779fc
        cmp     r2, #2
        cmpne   r2, #3
        beq     L6779fc
        b       L677804
L6779e0:
        sub     r2, r3, #0x4700
        subs    r2, r2, #0x36
        beq     L677cf4
        sub     r2, r2, #0x700
        subs    r2, r2, #0x1a
        cmpne   r2, #1
        bne     L677804
L6779fc:
        bic     r1, r1, #0x70000000
        orr     r1, r1, #0x10000000
        str     r1, [r4, #0xc]
        ldr     r2, [r5, #8]
        sub     r2, r2, #0x2900
        subs    r2, r2, #1
        biceq   r1, r1, #0x7000
        orreq   r2, r1, #0x2000
        beq     L677a54
        sub     r2, r2, #0x5800
        subs    r2, r2, #0x2c
        biceq   r1, r1, #0x7000
        orreq   r2, r1, #0x1000
        beq     L677a54
        cmp     r2, #2
        biceq   r2, r1, #0x7000
        beq     L677a54
        sub     r2, r2, #0x200
        subs    r2, r2, #0x43
        biceq   r1, r1, #0x7000
        orreq   r2, r1, #0x3000
        bne     L677a58
L677a54:
        str     r2, [r4, #0xc]
L677a58:
        ldr     r1, [r5, #0xc]
        sub     r1, r1, #0x2900
        subs    r1, r1, #1
        beq     L677a94
        sub     r1, r1, #0x5800
        subs    r1, r1, #0x2c
        beq     L677aa4
        cmp     r1, #2
        ldreq   r1, [r4, #0xc]
        biceq   r2, r1, #0x700
        beq     L677ac0
        sub     r1, r1, #0x200
        subs    r1, r1, #0x43
        bne     L677ac4
        b       L677ab4
L677a94:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x700
        orr     r2, r1, #0x200
        b       L677ac0
L677aa4:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x700
        orr     r2, r1, #0x100
        b       L677ac0
L677ab4:
        ldr     r1, [r4, #0xc]
        bic     r1, r1, #0x700
        orr     r2, r1, #0x300
L677ac0:
        str     r2, [r4, #0xc]
L677ac4:
        ldr     r1, [r5]
        cmp     r1, #0x2600
        ldreq   r1, [r4, #0xc]
        biceq   r2, r1, #2
        beq     L677aec
        sub     r1, r1, #0x2600
        subs    r1, r1, #1
        ldreq   r1, [r4, #0xc]
        orreq   r2, r1, #2
        bne     L677af0
L677aec:
        str     r2, [r4, #0xc]
L677af0:
        ldr     r3, [r5, #4]
        ldr     ip, L677bc8
        mov     r1, #0xf0000
        mov     r2, #0xf000000
        cmp     r3, ip
        sub     ip, r3, ip
        beq     L677c74
        bgt     L677b30
        cmp     r3, #0x2600
        beq     L677b44
        sub     r3, r3, #0x2600
        subs    r3, r3, #1
        beq     L677c1c
        cmp     r3, #0xff
        bne     L677c3c
        b       L677b68
L677b30:
        cmp     ip, #1
        beq     L677bcc
        cmp     ip, #2
        bne     L677c3c
        b       L677cb4
L677b44:
        ldr     r2, [r4, #0x10]
        ldr     r3, [r4, #0xc]
        bic     r2, r2, #0xf000000
        bic     r3, r3, #0x1000000
        bic     r2, r2, #0xf0000
        bic     r3, r3, #4
        str     r2, [r4, #0x10]
        str     r3, [r4, #0xc]
        b       L677c3c
L677b68:
        ldr     r3, [r4, #0xc]
        bic     r3, r3, #4
        str     r3, [r4, #0xc]
        ldr     lr, [r0, #0x34]
        ldr     ip, [r4, #0x10]
        sub     lr, lr, #1
        bic     ip, ip, #0xf0000
        and     r1, r1, lr, lsl #16
        orr     r1, r1, ip
        bic     ip, r1, #0xf000000
        str     r1, [r4, #0x10]
        ldr     r1, [r5, #0x14]
        cmp     r1, #0
        blt     L677cac
L677ba0:
        and     r1, r2, r1, lsl #24
        orr     r2, ip, r1
        bic     r3, r3, #0x1000000
        str     r2, [r4, #0x10]
        str     r3, [r4, #0xc]
        b       L677c3c
L677bb8:
        .word   0x00000502
L677bbc:
        .word   0x008ab81c
L677bc0:
        .word   0x437f0000
L677bc4:
        .word   0x0000190a
L677bc8:
        .word   0x00002701
L677bcc:
        ldr     r3, [r4, #0xc]
        bic     r3, r3, #4
        str     r3, [r4, #0xc]
        ldr     lr, [r0, #0x34]
        ldr     ip, [r4, #0x10]
        sub     lr, lr, #1
        bic     ip, ip, #0xf0000
        and     r1, r1, lr, lsl #16
        orr     r1, r1, ip
        bic     ip, r1, #0xf000000
        str     r1, [r4, #0x10]
        ldr     r1, [r5, #0x14]
        cmp     r1, #0
        blt     L677cec
L677c04:
        and     r1, r2, r1, lsl #24
        orr     r2, ip, r1
        orr     r3, r3, #0x1000000
        str     r2, [r4, #0x10]
        str     r3, [r4, #0xc]
        b       L677c3c
L677c1c:
        ldr     r2, [r4, #0x10]
        ldr     r3, [r4, #0xc]
        bic     r2, r2, #0xf000000
        bic     r1, r3, #0x1000000
        bic     r2, r2, #0xf0000
        orr     r3, r1, #4
        str     r2, [r4, #0x10]
        str     r3, [r4, #0xc]
L677c3c:
        ldr     r1, [r4, #0x10]
        lsr     r3, r1, #0xd
        lsl     r3, r3, #0xd
        str     r3, [r4, #0x10]
        ldr     r0, [r0, #0x14]
        ldr     r1, [r4, #0xc]
        sub     r2, r0, #0x6700
        subs    r2, r2, #0x5a
        moveq   r0, #2
        movne   r0, #0
        bic     r1, r1, #0x30
        orr     r1, r1, r0, lsl #4
        str     r1, [r4, #0xc]
        b       L677d24
L677c74:
        ldr     r3, [r4, #0xc]
        orr     r3, r3, #4
        str     r3, [r4, #0xc]
        ldr     lr, [r0, #0x34]
        ldr     ip, [r4, #0x10]
        sub     lr, lr, #1
        bic     ip, ip, #0xf0000
        and     r1, r1, lr, lsl #16
        orr     r1, r1, ip
        bic     ip, r1, #0xf000000
        str     r1, [r4, #0x10]
        ldr     r1, [r5, #0x14]
        cmp     r1, #0
        bge     L677ba0
L677cac:
        mov     r1, #0
        b       L677ba0
L677cb4:
        ldr     r3, [r4, #0xc]
        orr     r3, r3, #4
        str     r3, [r4, #0xc]
        ldr     lr, [r0, #0x34]
        ldr     ip, [r4, #0x10]
        sub     lr, lr, #1
        bic     ip, ip, #0xf0000
        and     r1, r1, lr, lsl #16
        orr     r1, r1, ip
        bic     ip, r1, #0xf000000
        str     r1, [r4, #0x10]
        ldr     r1, [r5, #0x14]
        cmp     r1, #0
        bge     L677c04
L677cec:
        mov     r1, #0
        b       L677c04
L677cf4:
        ldr     r2, [r4, #0x10]
        bic     r1, r1, #0x70000000
        bic     r1, r1, #0x7700
        bic     r0, r2, #0xf000000
        bic     r0, r0, #0xf0000
        bic     r1, r1, #0x30
        lsr     r2, r0, #0xd
        orr     r1, r1, #0x40000006
        add     r0, r4, #0xc
        lsl     r2, r2, #0xd
        orr     r1, r1, #0x100000
        stm     r0, {r1, r2}
L677d24:
        ldr     r0, [r5, #0x34]
        bl      Fn_02a670
        ldr     r1, [r4, #0x14]
        and     r1, r1, #0xc0000000
        orr     r1, r1, r0, lsr #3
        str     r1, [r4, #0x14]
        ldr     r0, [r5, #0x78]
        bl      Fn_02a670
        ldr     r1, [r4, #0x18]
        mvn     r6, #0x1fc00000
        and     r0, r6, r0, lsr #3
        and     r1, r1, r6, lsl #22
        orr     r1, r1, r0
        str     r1, [r4, #0x18]
        ldr     r0, [r5, #0xbc]
        bl      Fn_02a670
        ldr     r1, [r4, #0x1c]
        and     r0, r6, r0, lsr #3
        and     r1, r1, r6, lsl #22
        orr     r1, r1, r0
        str     r1, [r4, #0x1c]
        ldr     r0, [r5, #0x100]
        bl      Fn_02a670
        ldr     r1, [r4, #0x20]
        and     r0, r6, r0, lsr #3
        and     r1, r1, r6, lsl #22
        orr     r1, r1, r0
        str     r1, [r4, #0x20]
        ldr     r0, [r5, #0x144]
        bl      Fn_02a670
        mov     r1, r0
        ldr     r0, [r4, #0x24]
        and     r2, r0, r6, lsl #22
        and     r0, r6, r1, lsr #3
        orr     r1, r2, r0
        str     r1, [r4, #0x24]
        ldr     r0, [r5, #0x188]
        bl      Fn_02a670
        ldr     r1, [r4, #0x28]
        and     r0, r6, r0, lsr #3
        add     r2, r4, #4
        and     r1, r1, r6, lsl #22
        orr     r1, r1, r0
        str     r1, [r4, #0x28]
        ldr     r0, [r4]
        orr     r1, r0, #1
        str     r1, [r4]
        mov     r1, #0xa
        mov     r0, #0x81
        bl      Fn_6466d8
        ldr     r2, L677e20
        ldr     r0, L677e24
        ldr     r1, [r2]
        ldr     r0, [r0]
        cmp     r1, r0
        bhs     L677e18
        ldr     r3, [r4, #0x38]
        ldr     ip, L677e28
        add     lr, r1, #8
        stm     r1, {r3, ip}
        str     lr, [r2]
L677e18:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L677e20:
        .word   0x008ab4f8
L677e24:
        .word   0x008ab4fc
L677e28:
        .word   0x000f008e
        .size   A_6777e8, . - A_6777e8

@ FUN_00677f7c
        .global A_677f7c
        .type   A_677f7c, %function
A_677f7c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, #1
        ldr     r4, [r0, #8]
        ldr     r7, L67810c
        ldr     r1, L678108
        ldr     r8, L678110
        ldr     r0, [r4, #0x18]
        ldr     ip, [r7]
        cmp     r0, r1
        sub     r1, r0, r1
        beq     L678100
        bgt     L677fd8
        add     r0, r0, #0xff000000
        subs    r0, r0, #0x10000
        beq     L678024
        cmp     r0, #0x10000
        moveq   r0, #0x20000
        beq     L678058
        cmp     r0, #0x20000
        moveq   r0, #0x30000
        beq     L678058
        b       L678100
L677fd8:
        cmp     r1, #0x10000
        cmpne   r1, #0x20000
        bne     L678100
        add     r1, r0, #0xfe000000
        subs    r1, r1, #0x20000
        moveq   r0, #0x20000
        movne   r0, #0x30000
        cmp     ip, #0
        str     r0, [r4, #0x14]
        moveq   r0, #0
        beq     L678014
        ldr     r3, [r4, #0xc]
        ldr     r2, [r5]
        mov     r1, r8
        blx     ip
L678014:
        cmp     r0, #0
        moveq   r6, #0
        str     r0, [r4]
        b       L678100
L678024:
        cmp     ip, #0
        moveq   r0, #0
        beq     L678044
        ldr     r3, [r4, #0xc]
        ldr     r2, [r5]
        mov     r1, r8
        mov     r0, #0x10000
        blx     ip
L678044:
        cmp     r0, #0
        str     r0, [r4, #4]
        moveq   r6, #0
        str     r0, [r4]
        b       L678100
L678058:
        cmp     ip, #0
        str     r0, [r4, #0x14]
        moveq   r0, #0
        beq     L678078
        ldr     r3, [r4, #0xc]
        ldr     r2, [r5]
        mov     r1, r8
        blx     ip
L678078:
        str     r0, [r4]
        ldr     ip, [r7]
        cmp     ip, #0
        moveq   r0, #0
        beq     L6780a0
        ldr     r3, [r4, #0xc]
        ldr     r2, [r5]
        mov     r1, r8
        mov     r0, #0x10000
        blx     ip
L6780a0:
        ldr     r3, [r4]
        str     r0, [r4, #4]
        cmp     r3, #0
        cmpne   r0, #0
        bne     L678100
        ldr     r7, L678114
        cmp     r3, #0
        mov     r6, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L6780dc
        ldr     r2, [r5]
        ldr     r0, [r4, #0x14]
        mov     r1, r8
        blx     ip
L6780dc:
        ldr     r3, [r4, #4]
        cmp     r3, #0
        ldrne   ip, [r7]
        cmpne   ip, #0
        beq     L678100
        ldr     r2, [r5]
        mov     r1, r8
        mov     r0, #0x10000
        blx     ip
L678100:
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, pc}
L678108:
        .word   0x02010000
L67810c:
        .word   0x008aab18
L678110:
        .word   0x00000102
L678114:
        .word   0x008aab1c
        .size   A_677f7c, . - A_677f7c

@ FUN_00678118
        .global A_678118
        .type   A_678118, %function
A_678118:
        ldr     r2, L678264
        push    {r4, r5, r6}
        vldr    s0, [r1]
        ldr     r3, [r2]
        add     r2, r3, r0, lsl #4
        vstr    s0, [r2, #0x298]
        vldr    s0, [r1, #4]
        vstr    s0, [r2, #0x29c]
        vldr    s0, [r1, #8]
        vstr    s0, [r2, #0x2a0]
        vldr    s0, [r1, #0xc]
        vstr    s0, [r2, #0x2a4]
        vldr    s0, [r1]
        vmov    r2, s0
        bics    ip, r2, #0x80000000
        beq     L678164
        lsl     ip, r2, #1
        lsr     ip, ip, #0x18
        sub     ip, ip, #0x40
L678164:
        lsl     r4, r2, #9
        cmp     ip, #0
        lsr     r4, r4, #0x10
        lsr     r2, r2, #0x1f
        orrge   ip, r4, ip, lsl #16
        vldr    s0, [r1, #4]
        orrge   r4, ip, r2, lsl #23
        lsllt   r4, r2, #0x17
        vmov    r2, s0
        bics    ip, r2, #0x80000000
        beq     L67819c
        lsl     ip, r2, #1
        lsr     ip, ip, #0x18
        sub     ip, ip, #0x40
L67819c:
        lsl     r5, r2, #9
        cmp     ip, #0
        lsr     r5, r5, #0x10
        lsr     r2, r2, #0x1f
        orrge   ip, r5, ip, lsl #16
        orrge   ip, ip, r2, lsl #23
        vldr    s0, [r1, #8]
        lsllt   ip, r2, #0x17
        vmov    r2, s0
        bics    r5, r2, #0x80000000
        beq     L6781d4
        lsl     r5, r2, #1
        lsr     r5, r5, #0x18
        sub     r5, r5, #0x40
L6781d4:
        lsl     r6, r2, #9
        cmp     r5, #0
        lsr     r6, r6, #0x10
        lsr     r2, r2, #0x1f
        vldr    s0, [r1, #0xc]
        orrge   r5, r6, r5, lsl #16
        orrge   r2, r5, r2, lsl #23
        vmov    r1, s0
        lsllt   r2, r2, #0x17
        bics    r5, r1, #0x80000000
        beq     L67820c
        lsl     r5, r1, #1
        lsr     r5, r5, #0x18
        sub     r5, r5, #0x40
L67820c:
        lsl     r6, r1, #9
        cmp     r5, #0
        lsr     r6, r6, #0x10
        lsr     r1, r1, #0x1f
        orrge   r5, r6, r5, lsl #16
        orrge   r1, r5, r1, lsl #23
        add     r0, r0, r0, lsl #1
        lsl     r5, ip, #8
        lsllt   r1, r1, #0x17
        lsr     r6, r2, #0x10
        add     r0, r3, r0, lsl #2
        lsr     r5, r5, #0x10
        add     r0, r0, #0x398
        orr     r1, r6, r1, lsl #8
        orr     ip, r4, ip, lsl #24
        orr     r2, r5, r2, lsl #16
        stm     r0, {r1, r2, ip}
        ldr     r0, [r3]
        orr     r0, r0, #0x80
        str     r0, [r3]
        pop     {r4, r5, r6}
        bx      lr
L678264:
        .word   0x008ab81c
        .size   A_678118, . - A_678118

@ FUN_00678268
        .global A_678268
        .type   A_678268, %function
A_678268:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        ldr     r0, L67857c
        vldr    s1, L678580
        ldr     r1, [r0]
        ldr     r0, [r1, #0x28]
        vmov    s0, r0
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vmov    r0, s0
        bics    r2, r0, #0x80000000
        beq     L6782a4
        lsl     r2, r0, #1
        lsr     r2, r2, #0x18
        sub     r2, r2, #0x40
L6782a4:
        lsl     r3, r0, #9
        cmp     r2, #0
        lsr     r3, r3, #0x10
        ldr     ip, L678584
        ldr     r5, L678588
        orrge   r2, r3, r2, lsl #16
        lsr     r0, r0, #0x1f
        ldr     r3, [ip]
        orrge   r2, r2, r0, lsl #23
        lsllt   r2, r0, #0x17
        ldr     r0, [r5]
        cmp     r3, r0
        bhs     L6782e8
        ldr     r4, L67858c
        add     r6, r3, #8
        stm     r3, {r2, r4}
        str     r6, [ip]
L6782e8:
        ldr     r0, [r1, #0x2c]
        vmov    s0, r0
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vmov    r0, s0
        bics    r2, r0, #0x80000000
        beq     L678310
        lsl     r2, r0, #1
        lsr     r2, r2, #0x18
        sub     r2, r2, #0x40
L678310:
        lsl     r3, r0, #9
        cmp     r2, #0
        lsr     r3, r3, #0x10
        lsr     r0, r0, #0x1f
        orrge   r2, r3, r2, lsl #16
        orrge   r3, r2, r0, lsl #23
        lsllt   r3, r0, #0x17
        ldr     r0, [r5]
        ldr     r2, [ip]
        cmp     r2, r0
        bhs     L67834c
        ldr     r4, L678590
        add     r6, r2, #8
        stm     r2, {r3, r4}
        str     r6, [ip]
L67834c:
        ldr     r0, [r1, #0x28]
        cmp     r0, #0
        ldrne   r2, [r1, #0x2c]
        cmpne   r2, #0
        beq     L67849c
        ldr     fp, L678594
        ldr     r6, L678598
        vldr    s1, L67859c
        stm     sp, {r0, r2}
        mov     r0, #0
        add     lr, fp, #0xff000000
        mov     r4, sp
        mov     r7, #0x42
L678380:
        ldr     r2, [r4, r0, lsl #2]
        cmp     r2, #0x280
        streq   r6, [r4, r0, lsl #2]
        beq     L678468
        bgt     L6783dc
        cmp     r2, #0x190
        streq   fp, [r4, r0, lsl #2]
        beq     L678468
        bgt     L6783c0
        cmp     r2, #0xf0
        ldreq   r2, L6785a0
        beq     L678464
        cmp     r2, #0x140
        ldreq   r2, L6785a4
        beq     L678464
        b       L67840c
L6783c0:
        cmp     r2, #0x1e0
        ldreq   r2, L6785a8
        beq     L678464
        cmp     r2, #0x258
        ldreq   r2, L6785ac
        beq     L678464
        b       L67840c
L6783dc:
        cmp     r2, #0x320
        streq   lr, [r4, r0, lsl #2]
        beq     L678468
        cmp     r2, #0x400
        moveq   r2, #0x36000000
        beq     L678464
        cmp     r2, #0x4b0
        ldreq   r2, L6785b0
        beq     L678464
        cmp     r2, #0x500
        ldreq   r2, L6785b4
        beq     L678464
L67840c:
        vmov    s0, r2
        vcvt.f32.u32 s2, s0
        vdiv.f32 s0, s1, s2
        vmov    r2, s0
        bics    r3, r2, #0x80000000
        lsleq   r8, r2, #9
        lsreq   r8, r8, #9
        beq     L678450
        lsl     r3, r2, #1
        lsl     r8, r2, #9
        lsr     r3, r3, #0x18
        sub     r3, r3, #0x40
        cmp     r3, #0
        lsrlt   r2, r2, #0x1f
        lsr     r8, r8, #9
        lsllt   r2, r2, #0x1e
        blt     L67845c
L678450:
        lsr     r2, r2, #0x1f
        orr     r3, r8, r3, lsl #23
        orr     r2, r3, r2, lsl #30
L67845c:
        str     r2, [r4, r0, lsl #2]
        lsl     r2, r2, #1
L678464:
        str     r2, [r4, r0, lsl #2]
L678468:
        ldr     r2, [r5]
        ldr     r3, [ip]
        cmp     r3, r2
        bhs     L678490
        ldr     r8, [r4, r0, lsl #2]
        add     sb, r7, r0, lsl #1
        orr     sb, sb, #0xf0000
        add     sl, r3, #8
        strd    r8, sb, [r3]
        str     sl, [ip]
L678490:
        add     r0, r0, #1
        cmp     r0, #2
        blt     L678380
L67849c:
        ldr     r2, [ip]
        ldr     r0, [r5]
        cmp     r2, r0
        bhs     L6784cc
        add     r4, r1, #0x20
        ldr     r3, L6785b8
        ldm     r4, {r4, r6}
        str     r3, [r2, #4]
        orr     r6, r4, r6, lsl #16
        add     r4, r2, #8
        str     r6, [r2]
        str     r4, [ip]
L6784cc:
        ldr     r0, [r5]
        ldr     r2, [ip]
        cmp     r2, r0
        bhs     L6784f4
        ldr     r0, L6785bc
        ldr     r4, L6785c0
        add     r6, r2, #8
        ldr     r3, [r0]
        stm     r2, {r3, r4}
        str     r6, [ip]
L6784f4:
        ldr     r2, [ip]
        ldr     r0, [r5]
        cmp     r2, r0
        bhs     L678520
        ldr     r0, L6785c4
        ldr     r3, L6785c8
        add     r6, r2, #8
        ldr     r4, [r0]
        str     r3, [r2, #4]
        str     r4, [r2]
        str     r6, [ip]
L678520:
        ldrb    r0, [r1, #0x64f]
        ldr     r7, L6785cc
        mov     r2, #0
        cmp     r0, #0
        add     r4, r7, #0xb6
        beq     L6785d0
        ldr     r0, [r5]
        ldr     r3, [ip]
        mov     r6, #1
        cmp     r3, r0
        bhs     L678558
        add     r8, r3, #8
        strd    r6, r7, [r3]
        str     r8, [ip]
L678558:
        ldr     r0, [r5]
        ldr     r3, [ip]
        cmp     r3, r0
        bhs     L678608
        str     r4, [r3, #4]
        add     r7, r3, #8
        str     r6, [r3]
        str     r7, [ip]
        b       L678608
L67857c:
        .word   0x008ab81c
L678580:
        .word   0x3f000000
L678584:
        .word   0x008ab4f8
L678588:
        .word   0x008ab4fc
L67858c:
        .word   0x000f0041
L678590:
        .word   0x000f0043
L678594:
        .word   0x3747ae14
L678598:
        .word   0x36999999
L67859c:
        .word   0x40000000
L6785a0:
        .word   0x38111111
L6785a4:
        .word   0x37999999
L6785a8:
        .word   0x37111111
L6785ac:
        .word   0x36b4e81b
L6785b0:
        .word   0x35b4e81b
L6785b4:
        .word   0x35999999
L6785b8:
        .word   0x000f0068
L6785bc:
        .word   0x008ab824
L6785c0:
        .word   0x00030107
L6785c4:
        .word   0x008ab840
L6785c8:
        .word   0x00080126
L6785cc:
        .word   0x00010062
L6785d0:
        .word   0xe59c3000
        .word   0xe5950000
        .word   0xe1530000
        .word   0x2a000002
        .word   0xe8830084
        .word   0xe2836008
        .word   0xe58c6000
        .word   0xe5950000
        .word   0xe59c3000
        .word   0xe1530000
        .word   0x2a000002
        .word   0xe8830014
        .word   0xe2836008
        .word   0xe58c6000
L678608:
        .word   0xe59c0000
        .word   0xe5953000
        .word   0xe1500003
        .word   0x2a000005
        .word   0xe59f3220
        .word   0xe59f6220
        .word   0xe2807008
        .word   0xe5934000
        .word   0xe8800050
        .word   0xe58c7000
        .word   0xe59c0000
        .word   0xe5953000
        .word   0xe1500003
        .word   0x2a000005
        .word   0xe59f3200
        .word   0xe59f6200
        .word   0xe2807008
        .word   0xe5934000
        .word   0xe8800050
        .word   0xe58c7000
        .word   0xe59c3000
        .word   0xe5950000
        .word   0xe1530000
        .word   0x2a000005
        .word   0xe59f01e0
        .word   0xe59f61e0
        .word   0xe2837008
        .word   0xe5904000
        .word   0xe8830050
        .word   0xe58c7000
        .word   0xe5d1064d
        .word   0xe59f41cc
        .word   0xe3500000
        .word   0x0a000007
        .word   0xe5950000
        .word   0xe59c3000
        .word   0xe1530000
        .word   0x2a000019
        .word   0xe8830014
        .word   0xe2836008
        .word   0xe58c6000
        .word   0xea000015
        .word   0xe59c0000
        .word   0xe5953000
        .word   0xe1500003
        .word   0x2a000008
        .word   0xe5d1364c
        .word   0xe59f7198
        .word   0xe2808008
        .word   0xe3530000
        .word   0x159f3184
        .word   0x059f6184
        .word   0x15936000
        .word   0xe1c060f0
        .word   0xe58c8000
        .word   0xe5953000
        .word   0xe59c0000
        .word   0xe1530000
        .word   0x9a000004
        .word   0xe3a06c01
        .word   0xe5804004
        .word   0xe2807008
        .word   0xe5806000
        .word   0xe58c7000
        .word   0xe5d1003c
        .word   0xe59f4154
        .word   0xe3500000
        .word   0xe5950000
        .word   0x0a000013
        .word   0xe59c2000
        .word   0xe1520000
        .word   0x2a000016
        .word   0xe5910038
        .word   0xe2403b01
        .word   0xe2533004
        .word   0xe5913034
        .word   0x03a00001
        .word   0x13a00000
        .word   0xe2436c09
        .word   0xe2566001
        .word   0x03a03001
        .word   0x13a03000
        .word   0xe1500003
        .word   0x13a03002
        .word   0x03a03001
        .word   0xe8820018
        .word   0xe2826008
        .word   0xe58c6000
        .word   0xea000005
        .word   0xe59c3000
        .word   0xe1530000
        .word   0x2a000002
        .word   0xe8830014
        .word   0xe2836008
        .word   0xe58c6000
        .word   0xe59c2000
        .word   0xe5950000
        .word   0xe1520000
        .word   0x2a000007
        .word   0xe5d10693
        .word   0xe59f40cc
        .word   0xe2826008
        .word   0xe3500000
        .word   0x13a03001
        .word   0x03a03000
        .word   0xe8820018
        .word   0xe58c6000
        .word   0xe59c2000
        .word   0xe5950000
        .word   0xe1500002
        .word   0x9a000005
        .word   0xe59f00a4
        .word   0xe59f40a4
        .word   0xe2826008
        .word   0xe5903000
        .word   0xe8820018
        .word   0xe58c6000
        .word   0xe59c2000
        .word   0xe5950000
        .word   0xe1520000
        .word   0x2a000005
        .word   0xe59f0084
        .word   0xe59f4084
        .word   0xe2826008
        .word   0xe5903000
        .word   0xe8820018
        .word   0xe58c6000
        .word   0xe5950000
        .word   0xe59c2000
        .word   0xe1520000
        .word   0x2a000005
        .word   0xe59f0064
        .word   0xe59f4064
        .word   0xe2825008
        .word   0xe5903000
        .word   0xe8820018
        .word   0xe58c5000
        .word   0xe5910000
        .word   0xe3800c01
        .word   0xe5810000
        .word   0xe28dd00c
        .word   0xe8bd8ff0
        .size   A_678268, . - A_678268

@ FUN_00684aa0
        .global A_684aa0
        .type   A_684aa0, %function
A_684aa0:
        push    {r4, lr}
        mov     r4, r0
        add     r0, r0, #0x2c
        bl      Fn_01b624
        add     r1, r4, #0x6c
        add     r0, r4, #0x38
        pop     {r4, lr}
        mov     r2, #0x20
        mov     r0, r0
        .size   A_684aa0, . - A_684aa0

@ FUN_00684b84
        .global A_684b84
        .type   A_684b84, %function
A_684b84:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r5, r0, #0x14
        mov     r6, r1
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x28]
        cmp     r0, #0
        ble     L684c00
        ldr     r0, [r4]
        ldr     r1, [r4, #0x24]
        ldr     r0, [r0, r1, lsl #2]
        str     r0, [r6]
        ldr     r0, [r4, #0x24]
        ldr     r1, [r4, #0x20]
        add     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x24]
        ldr     r0, [r4, #0x28]
        sub     r0, r0, #1
        str     r0, [r4, #0x28]
        ldr     r0, [r4, #0x30]
        cmp     r0, #0
        ble     L684bf0
        mov     r1, #1
        add     r0, r4, #0xc
        bl      Fn_01b58c
L684bf0:
        mov     r0, r5
        bl      Fn_024568
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L684c00:
        mov     r0, r5
        bl      Fn_024568
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_684b84, . - A_684b84

@ FUN_00684c10
        .global A_684c10
        .type   A_684c10, %function
A_684c10:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        add     r5, r0, #0x14
        mov     r6, r1
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x28]
        ldr     r1, [r4, #0x20]
        cmp     r1, r0
        bls     L684c80
        ldr     r2, [r4, #0x24]
        add     r0, r0, r2
        bl      Fn_022d48
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x28]
        add     r0, r0, #1
        str     r0, [r4, #0x28]
        ldr     r0, [r4, #0x2c]
        cmp     r0, #0
        ble     L684c70
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L684c70:
        mov     r0, r5
        bl      Fn_024568
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L684c80:
        mov     r0, r5
        bl      Fn_024568
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_684c10, . - A_684c10

@ FUN_00685894
        .global A_685894
        .type   A_685894, %function
A_685894:
        ldr     r2, [r0, #0xc]
        ldr     r3, [r0, #8]
        vldr    s1, [r0, #4]
        cmp     r2, r3
        bge     L6858cc
        vmov    s3, r2
        vldr    s2, [r0]
        vmov    s4, r3
        vsub.f32 s1, s1, s2
        vcvt.f32.s32 s3, s3
        vcvt.f32.s32 s4, s4
        vmul.f32 s3, s1, s3
        vdiv.f32 s1, s3, s4
        vadd.f32 s1, s1, s2
L6858cc:
        mov     r2, #0
        vstr    s1, [r0]
        vstr    s0, [r0, #4]
        add     r0, r0, #8
        stm     r0, {r1, r2}
        bx      lr
        .size   A_685894, . - A_685894

@ FUN_00686064
        .global A_686064
        .type   A_686064, %function
A_686064:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mov     r6, r2
        vpush   {d8}
        sub     sp, sp, #0x68
        mov     r4, r0
        mov     r1, r0
        mov     r2, #0x64
        mov     r0, sp
        bl      Fn_20004c
        mov     r2, r6
        mov     r1, r5
        mov     r0, sp
        bl      Fn_686194
        ldrd    r0, r1, [sp, #0x2c]
        vmov.f32 s16, s0
        strd    r0, r1, [r4, #0x2c]
        mov     r0, sp
        mov     r0, r0
        add     sp, sp, #0x68
        vmov.f32 s0, s16
        vpop    {d8}
        pop     {r4, r5, r6, pc}
        .size   A_686064, . - A_686064
