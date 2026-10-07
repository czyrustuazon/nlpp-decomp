@ Generated from the retail image by tools/wrapgen/asmify.py (nw4c): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text


@ FUN_00542d64
        .global A_542d64
        .type   A_542d64, %function
A_542d64:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4]
        str     r0, [r4, #4]
        mov     r5, r1
        str     r0, [r4, #8]
        str     r0, [r4, #0xc]
        ldr     r2, L542e00
        ldr     r1, L542e04
        mov     r3, #1
        mov     r0, r5
        bl      Fn_541ce0
        cmp     r0, #0
        beq     L542dfc
        str     r5, [r4]
        ldrh    r2, [r5, #0x10]
        ldrh    r0, [r5, #6]
        mov     r1, #0
        cmp     r2, #0
        ldrgt   r3, L542e08
        add     r0, r0, r5
        ble     L542dfc
L542dc0:
        ldr     r2, [r0]
        adds    r2, r2, r3
        streq   r0, [r4, #0xc]
        beq     L542de4
        cmp     r2, #0x10000
        streq   r0, [r4, #4]
        beq     L542de4
        cmp     r2, #0xc0000
        streq   r0, [r4, #8]
L542de4:
        ldr     r2, [r0, #4]
        add     r1, r1, #1
        add     r0, r0, r2
        ldrh    r2, [r5, #0x10]
        cmp     r2, r1
        bgt     L542dc0
L542dfc:
        pop     {r4, r5, r6, pc}
L542e00:
        .word   0x02020000
L542e04:
        .word   0x4e414c43
L542e08:
        .word   0xce979e90
        .size   A_542d64, . - A_542d64

@ FUN_00545d70
        .global A_545d70
        .type   A_545d70, %function
A_545d70:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r5, L545e6c
        mov     r0, #0
        vpush   {d8}
        str     r0, [r4, #0xc]
        strb    r0, [r4, #0xb7]
        str     r0, [r4, #0xb0]
        ldr     r0, [r5]
        vldr    s17, L545e70
        vldr    s16, L545e74
        tst     r0, #1
        bne     L545df0
        add     r0, r5, #0
        blx     Fn_203d64_t
        cmp     r0, #0
        beq     L545df0
        ldr     r0, L545e78
        add     r1, r0, #0x10
        vstr    s17, [r0]
        vstr    s16, [r0, #4]
        vstr    s16, [r0, #8]
        vstr    s16, [r0, #0xc]
        vstmia  r1, {s16, s17}
        add     r1, r0, #0x24
        vstr    s16, [r0, #0x18]
        vstr    s16, [r0, #0x1c]
        vstr    s16, [r0, #0x20]
        vstmia  r1, {s16, s17}
        vstr    s16, [r0, #0x2c]
        add     r0, r5, #0
        mov     r0, r0
L545df0:
        ldr     r1, L545e78
        add     r0, r4, #0x50
        bl      Fn_01a174
        ldr     r0, [r5]
        tst     r0, #1
        bne     L545e58
        ldr     r0, L545e6c
        blx     Fn_203d64_t
        cmp     r0, #0
        nop
        beq     L545e58
        ldr     r0, L545e78
        add     r1, r0, #0x10
        vstr    s17, [r0]
        vstr    s16, [r0, #4]
        vstr    s16, [r0, #8]
        vstr    s16, [r0, #0xc]
        vstmia  r1, {s16, s17}
        add     r1, r0, #0x24
        vstr    s16, [r0, #0x18]
        vstr    s16, [r0, #0x1c]
        vstr    s16, [r0, #0x20]
        vstmia  r1, {s16, s17}
        vstr    s16, [r0, #0x2c]
        ldr     r0, L545e6c
        mov     r0, r0
L545e58:
        vpop    {d8}
        add     r0, r4, #0x80
        pop     {r4, r5, r6, lr}
        ldr     r1, L545e78
        b       Fn_01a174
L545e6c:
        .word   0x008bfb30
L545e70:
        .word   0x3f800000
L545e74:
        .word   0x00000000
L545e78:
        .word   0x00a7b350
        .size   A_545d70, . - A_545d70

@ FUN_00545f70
        .global A_545f70
        .type   A_545f70, %function
A_545f70:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r6, #0
        str     r6, [r0, #4]!
        mov     r5, r1
        str     r6, [r0, #4]
        ldr     r0, L54609c
        add     r1, r4, #0x14
        vldr    s0, L5460a0
        str     r0, [r4]
        str     r1, [r4, #0x14]
        str     r6, [r4, #0x10]
        str     r1, [r4, #0x18]
        add     r1, r4, #0x20
        str     r1, [r4, #0x20]
        str     r6, [r4, #0x1c]
        str     r1, [r4, #0x24]
        vstr    s0, [r4, #0x48]
        vstr    s0, [r4, #0x4c]
        mov     r0, r4
        bl      Fn_545d70
        ldrb    r0, [r5, #9]
        mov     r3, #0x11
        add     r1, r4, #0xb8
        strb    r0, [r4, #0xb6]
        add     r0, r5, #0xc
        mov     r2, #0
L545fdc:
        ldrb    ip, [r0]
        add     r2, r2, #1
        strb    ip, [r1], #1
        ldrb    ip, [r0, #1]!
        cmp     ip, #0
        subne   ip, r3, #1
        cmpne   ip, r2
        bhi     L545fdc
        strb    r6, [r1]
        add     r0, r5, #0x1c
        mov     r3, #9
        add     r1, r4, #0xc9
        mov     r2, #0
L546010:
        ldrb    ip, [r0]
        add     r2, r2, #1
        strb    ip, [r1], #1
        ldrb    ip, [r0, #1]!
        cmp     ip, #0
        subne   ip, r3, #1
        cmpne   ip, r2
        bhi     L546010
        add     r0, r5, #0x24
        strb    r6, [r1]
        ldm     r0, {r0, r1, r2}
        add     r3, r4, #0x28
        stm     r3, {r0, r1, r2}
        add     r0, r5, #0x30
        add     r3, r4, #0x34
        ldm     r0, {r0, r1, r2}
        stm     r3, {r0, r1, r2}
        ldrd    r0, r1, [r5, #0x3c]
        strd    r0, r1, [r4, #0x40]
        ldrd    r0, r1, [r5, #0x44]
        strd    r0, r1, [r4, #0x48]
        ldrb    r0, [r5, #0xa]
        strb    r0, [r4, #0xb4]
        strb    r0, [r4, #0xb5]
        ldrb    r0, [r5, #8]
        strb    r0, [r4, #0xb7]
        ldr     r0, L5460a4
        ldrb    r3, [r4, #0xb6]
        ldrb    r1, [r0]
        mov     r0, r4
        lsl     r2, r1, #4
        and     r1, r3, #0xef
        orr     r1, r1, r2
        strb    r1, [r4, #0xb6]
        pop     {r4, r5, r6, pc}
L54609c:
        .word   0x0082c604
L5460a0:
        .word   0x00000000
L5460a4:
        .word   0x008ab281
        .size   A_545f70, . - A_545f70

@ FUN_00546550
        .global A_546550
        .type   A_546550, %function
A_546550:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r5, r1
        mov     sl, #0
        ldr     r0, L54663c
        add     r1, r6, #0x10
        mov     r8, r2
        stm     r6, {r0, sl}
        mov     ip, #0x11
        str     sl, [r6, #8]
        str     r1, [r6, #0x10]
        str     sl, [r6, #0xc]
        str     r1, [r6, #0x14]
        add     r1, r6, #0x18
        add     r0, r5, #8
        mov     r2, sl
        strb    sl, [r6, #0x29]
L546594:
        ldrb    r3, [r0]
        add     r2, r2, #1
        strb    r3, [r1], #1
        ldrb    r3, [r0, #1]!
        cmp     r3, #0
        subne   r3, ip, #1
        cmpne   r3, r2
        bhi     L546594
        strb    sl, [r1]
        ldrh    r0, [r5, #0x18]
        add     r7, r5, #0x1c
        mov     r4, #0
        cmp     r0, #0
        ble     L546634
L5465cc:
        ldr     r0, [r8]
        add     r1, r7, r4, lsl #4
        mov     r2, #1
        ldr     r3, [r0, #0x2c]
        mov     r0, r8
        blx     r3
        cmp     r0, #0
        beq     L546624
        mov     sb, r0
        mov     r1, #4
        mov     r0, #0xc
        bl      Fn_548350
        cmp     r0, #0
        strne   sl, [r0]
        strne   sl, [r0, #4]
        beq     L546624
        add     r3, r6, #0xc
        mov     r2, r0
        str     sb, [r0, #8]
        add     r1, r6, #0x10
        mov     r0, r3
        bl      Fn_542230
L546624:
        ldrh    r0, [r5, #0x18]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L5465cc
L546634:
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L54663c:
        .word   0x0082c67c
        .size   A_546550, . - A_546550

@ FUN_00548374
        .global A_548374
        .type   A_548374, %function
A_548374:
        ldr     r0, L5484f0
        ldr     ip, L5484ec
        push    {r4, lr}
        mov     r4, r2
        ldr     r0, [r0]
        cmp     r1, ip
        sub     sp, sp, #0x10
        sub     r2, r1, ip
        beq     L54847c
        bge     L5483b8
        ldr     r2, L5484f4
        adds    r1, r1, r2
        beq     L548408
        sub     r1, r1, #0x10400
        subs    r1, r1, #0xf2
        bne     L5483d0
        b       L5484b4
L5483b8:
        ldr     r1, L5484f8
        subs    r1, r2, r1
        beq     L5483dc
        ldr     r2, L5484fc
        adds    r1, r1, r2
        beq     L548440
L5483d0:
        mov     r0, #0
L5483d4:
        add     sp, sp, #0x10
        pop     {r4, pc}
L5483dc:
        ldr     r3, [r0]
        mov     r1, #0xd4
        mov     r2, #4
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        beq     L5483d4
        add     sp, sp, #0x10
        mov     r1, r4
        pop     {r4, lr}
        b       Fn_545f70
L548408:
        vldmia  r3, {s0, s1, s2, s3}
        mov     r1, #0x158
        mov     r2, #4
        vstmia  sp, {s0, s1, s2, s3}
        ldr     r3, [r0]
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        beq     L5483d4
        mov     r2, sp
        mov     r1, r4
        bl      Fn_54a294
        add     sp, sp, #0x10
        pop     {r4, pc}
L548440:
        vldmia  r3, {s0, s1, s2, s3}
        mov     r1, #0x108
        mov     r2, #4
        vstmia  sp, {s0, s1, s2, s3}
        ldr     r3, [r0]
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        beq     L5483d4
        mov     r3, #0
        mov     r2, sp
        mov     r1, r4
        bl      Fn_54ada4
        add     sp, sp, #0x10
        pop     {r4, pc}
L54847c:
        vldmia  r3, {s0, s1, s2, s3}
        mov     r1, #0x16c
        mov     r2, #4
        vstmia  sp, {s0, s1, s2, s3}
        ldr     r3, [r0]
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        beq     L5483d4
        mov     r2, sp
        mov     r1, r4
        bl      Fn_549af4
        add     sp, sp, #0x10
        pop     {r4, pc}
L5484b4:
        vldmia  r3, {s0, s1, s2, s3}
        mov     r1, #0xd4
        mov     r2, #4
        vstmia  sp, {s0, s1, s2, s3}
        ldr     r3, [r0]
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        beq     L5483d4
        mov     r2, sp
        mov     r1, r4
        bl      Fn_54b2fc
        add     sp, sp, #0x10
        pop     {r4, pc}
L5484ec:
        .word   0x31646e77
L5484f0:
        .word   0x008ab268
L5484f4:
        .word   0xce9c9690
L5484f8:
        .word   0x0009f2f9
L5484fc:
        .word   0xfff9e8fc
        .size   A_548374, . - A_548374

@ FUN_00548a84
        .global A_548a84
        .type   A_548a84, %function
A_548a84:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r1
        mov     r4, r2
        sub     sp, sp, #0x24
        mov     fp, r0
        ldr     r2, L548d04
        ldr     r1, L548d08
        mov     r3, #1
        mov     r0, r6
        bl      Fn_541ce0
        mov     r0, #0
        add     r1, sp, #0x18
        str     r0, [sp, #8]
        str     r0, [sp, #0x10]
        str     r0, [sp, #0x14]
        stm     r1, {r0, r4}
        mov     sb, r0
        ldrh    r1, [r6, #6]
        mov     r8, r0
        mov     r7, r0
        add     r4, r1, r6
        ldrh    r1, [r6, #0x10]
        mov     r5, r0
        cmp     r1, #0
        ldrgt   sl, L548d0c
        ble     L548cf8
L548aec:
        ldr     r1, [r4]
        cmp     r1, sl
        sub     r0, r1, sl
        streq   r4, [sp, #0x10]
        beq     L548ce0
        bge     L548b6c
        ldr     r0, L548d10
        cmp     r1, r0
        sub     r2, r1, r0
        streq   r4, [r8, #0xb0]
        beq     L548ce0
        bge     L548b38
        ldr     r0, L548d14
        adds    r0, r0, r1
        subne   r0, r0, #0x10400
        subsne  r0, r0, #0xf2
        cmpne   r0, #0x15
        bne     L548ce0
        b       L548bdc
L548b38:
        sub     r0, r2, #0xed00
        subs    r0, r0, #0xfb
        moveq   r8, sb
        ldreq   sb, [sb, #0xc]
        beq     L548ce0
        sub     r1, r0, #0x1000
        subs    r1, r1, #0xf7
        subeq   r7, r7, #1
        beq     L548ce0
        ldr     r0, L548d18
        adds    r0, r0, r1
        streq   r4, [sp, #0x14]
        b       L548ce0
L548b6c:
        ldr     r2, L548d1c
        cmp     r0, r2
        sub     r3, r0, r2
        addeq   r7, r7, #1
        beq     L548ce0
        bge     L548bac
        sub     r0, r0, #0x1e800
        subs    r0, r0, #0xfc
        beq     L548bdc
        sub     r1, r0, #0x21000
        subs    r1, r1, #0xf7
        beq     L548c2c
        ldr     r0, L548d20
        adds    r0, r0, r1
        moveq   sb, r8
        b       L548ce0
L548bac:
        sub     r0, r3, #0xef00
        subs    r0, r0, #6
        streq   r4, [sp, #0x18]
        beq     L548ce0
        sub     r0, r0, #0x1700
        subs    r0, r0, #7
        beq     L548bdc
        cmp     r0, #0xf8
        bne     L548ce0
        ldrd    r0, r1, [r4, #0xc]
        strd    r0, r1, [fp, #0x18]
        b       L548ce0
L548bdc:
        ldr     r0, [fp]
        add     r3, sp, #0x10
        mov     r2, r4
        ldr     ip, [r0, #0x40]
        mov     r0, fp
        blx     ip
        cmp     r0, #0
        str     r0, [sp]
        beq     L548ce0
        ldr     r0, [fp, #0x10]
        cmp     r0, #0
        ldreq   r0, [sp]
        streq   r0, [fp, #0x10]
        cmp     sb, #0
        beq     L548c24
        ldr     r1, [sp]
        mov     r0, sb
        bl      Fn_545550
L548c24:
        ldr     r8, [sp]
        b       L548ce0
L548c2c:
        ldr     r0, [sp, #8]
        cmp     r0, #0
        beq     L548c50
        ldr     r0, [fp, #0x14]
        cmp     r0, #0
        beq     L548ce0
        cmp     r7, #1
        beq     L548c98
        b       L548ce0
L548c50:
        mov     r0, #1
        str     r0, [sp, #8]
        ldr     r0, L548d24
        mov     r1, #0xc
        mov     r2, #4
        ldr     r0, [r0]
        ldr     r3, [r0]
        ldr     r3, [r3, #8]
        blx     r3
        cmp     r0, #0
        beq     L548c90
        add     r1, r0, #4
        mov     r2, #0
        str     r1, [r0, #4]
        str     r2, [r0]
        str     r1, [r0, #8]
L548c90:
        str     r0, [fp, #0x14]
        b       L548ce0
L548c98:
        str     r4, [sp]
        ldr     r0, [fp, #0x10]
        mov     ip, #0x2c
        mov     r2, #4
        str     r0, [sp, #4]
        ldr     r0, L548d24
        ldr     r0, [r0]
        ldr     r1, [r0]
        ldr     r3, [r1, #8]
        mov     r1, ip
        blx     r3
        cmp     r0, #0
        beq     L548ce0
        ldm     sp, {r1, r2}
        bl      Fn_546550
        movs    r1, r0
        ldrne   r0, [fp, #0x14]
        blne    Fn_542220
L548ce0:
        ldr     r0, [r4, #4]
        add     r5, r5, #1
        add     r4, r4, r0
        ldrh    r0, [r6, #0x10]
        cmp     r0, r5
        bgt     L548aec
L548cf8:
        add     sp, sp, #0x24
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L548d04:
        .word   0x02020000
L548d08:
        .word   0x54594c43
L548d0c:
        .word   0x316c7874
L548d10:
        .word   0x31647375
L548d14:
        .word   0xce9c9690
L548d18:
        .word   0xfff90401
L548d1c:
        .word   0x0006f9f3
L548d20:
        .word   0xfffd10f7
L548d24:
        .word   0x008ab268
        .size   A_548a84, . - A_548a84

@ FUN_00548e78
        .global A_548e78
        .type   A_548e78, %function
A_548e78:
        str     r4, [sp, #-4]!
        ldr     r1, [r0, #0x10]
        sub     sp, sp, #0x1c
        lsl     r1, r1, #0x14
        lsr     r1, r1, #0x1c
        cmp     r1, #0xe
        ldrlo   pc, [pc, r1, lsl #2]
        b       L548f40
L548e98:
        .word   0x00648f08
L548e9c:
        .word   0x00648f10
L548ea0:
        .word   0x00648f18
L548ea4:
        .word   0x00648ef8
L548ea8:
        .word   0x00648f00
L548eac:
        .word   0x00648ee8
L548eb0:
        .word   0x00648ed8
L548eb4:
        .word   0x00648ee0
L548eb8:
        .word   0x00648ef0
L548ebc:
        .word   0x00648ed0
L548ec0:
        .word   0x00648f30
L548ec4:
        .word   0x00648f38
L548ec8:
        .word   0x00648f20
L548ecc:
        .word   0x00648f28
        .word   0xe3a01000
        .word   0xea000018
        .word   0xe3a01001
        .word   0xea000016
        .word   0xe3a01002
        .word   0xea000014
        .word   0xe3a01003
        .word   0xea000012
        .word   0xe3a01004
        .word   0xea000010
        .word   0xe3a01005
        .word   0xea00000e
        .word   0xe3a01006
        .word   0xea00000c
        .word   0xe3a01007
        .word   0xea00000a
        .word   0xe3a01008
        .word   0xea000008
        .word   0xe3a01009
        .word   0xea000006
        .word   0xe3a0100a
        .word   0xea000004
        .word   0xe3a0100b
        .word   0xea000002
        .word   0xe3a0100c
        .word   0xea000000
        .word   0xe3a0100d
        .word   0xe580101c
L548f40:
        .word   0xe590200c
        .word   0xe59f10b4
        .word   0xe1a02862
        .word   0xe5802018
        .word   0xe1c120d0
        .word   0xe1cd21f0
        .word   0xe1c120d8
        .word   0xe5911010
        .word   0xe1cd20f0
        .word   0xe58d1008
        .word   0xe5902010
        .word   0xe28d3010
        .word   0xe1a01c02
        .word   0xe1a01fa1
        .word   0xe1a0c081
        .word   0xe1a01c82
        .word   0xe1a01ea1
        .word   0xe7931101
        .word   0xe3510003
        .word   0x13510004
        .word   0x0a000018
        .word   0xe3510005
        .word   0x13a03000
        .word   0x0a000015
        .word   0xe590401c
        .word   0xe18c3103
        .word   0xe354000c
        .word   0x03a0c002
        .word   0x13a0c000
        .word   0xe3510002
        .word   0xe183420c
        .word   0xe1a03e02
        .word   0xe2022003
        .word   0xe1a0cf23
        .word   0xe79d2102
        .word   0xe79dc10c
        .word   0x13510005
        .word   0x03a01001
        .word   0x13a01000
        .word   0xe184c40c
        .word   0xe18c2602
        .word   0xe1821c01
        .word   0xe5801014
        .word   0xe28dd01c
        .word   0xe49d4004
        .word   0xe12fff1e
        .word   0xe3a03001
        .word   0xeaffffe7
        .word   0x007e9950
        .size   A_548e78, . - A_548e78

@ FUN_00549078
        .global A_549078
        .type   A_549078, %function
A_549078:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        ldr     r1, [r4, #0x10]
        str     r0, [r4]
        str     r0, [r4, #4]
        strh    r0, [r4, #8]
        strh    r0, [r4, #0xa]
        bic     r1, r1, #0xf00
        strh    r0, [r4, #0xc]
        bic     r1, r1, #0x7f
        strh    r0, [r4, #0xe]
        orr     r1, r1, #0xe90
        mov     r0, r4
        str     r1, [r4, #0x10]
        bl      Fn_548e78
        mov     r0, r4
        pop     {r4, pc}
        .size   A_549078, . - A_549078

@ FUN_00549af4
        .global A_549af4
        .type   A_549af4, %function
A_549af4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x24
        mov     r7, r1
        mov     r6, r2
        bl      Fn_545f70
        ldr     r1, L549d34
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x148
        ldr     r1, L549d38
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        ldr     r1, [r7, #0x60]
        sub     r5, r0, #0x158
        add     r4, r1, r7
        ldrb    r1, [r4, #0x12]
        cmp     r1, #3
        movhi   r1, #3
        movs    sb, r1
        addne   r0, r5, #0x158
        blne    Fn_54e3e4
        mov     sl, #0
        add     r0, r7, #0x4c
        strb    sl, [r5, #0x169]
        ldm     r0, {r0, r1, r2, r3}
        add     r8, r5, #0x138
        stm     r8, {r0, r1, r2, r3}
        ldr     r0, [r6, #8]
        add     r8, r0, #0xc
        mov     r0, sl
L549b70:
        bic     fp, ip, #0xff
        add     r1, r4, r0, lsl #2
        ldrb    r3, [r1, #1]
        ldrb    r2, [r1]
        ldrb    ip, [r1, #2]
        ldrb    r1, [r1, #3]
        lsl     r3, r3, #8
        orr     r2, r2, fp
        and     r3, r3, #0xff00
        bic     r2, r2, #0xff00
        orr     r2, r2, r3
        lsl     ip, ip, #0x10
        and     r3, ip, #0xff0000
        bic     r2, r2, #0xff0000
        orr     r2, r2, r3
        bic     r2, r2, #0xff000000
        orr     r1, r2, r1, lsl #24
        add     r2, r5, r0, lsl #2
        add     r0, r0, #1
        cmp     r0, #4
        str     r1, [r2, #0x148]
        blt     L549b70
        cmp     sb, #0
        ldrbne  r0, [r5, #0x158]
        cmpne   r0, #0
        beq     L549be8
        mov     r2, sb
        add     r1, r4, #0x14
        add     r0, r5, #0x158
        bl      Fn_54e318
L549be8:
        ldrh    r0, [r4, #0x10]
        add     sb, sp, #0x10
        ldr     r3, [r6, #0xc]
        ldr     r1, [r8, r0, lsl #2]
        ldr     r0, [r6, #8]
        add     r4, r0, r1
        ldm     r6, {r1, r2}
        stm     sb, {r1, r2}
        add     r2, sp, #0x18
        mov     r1, #4
        stm     r2, {r0, r3}
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        nop
        beq     L549c34
        add     r2, sp, #0x10
        mov     r1, r4
        bl      Fn_54db9c
L549c34:
        str     r0, [r5, #0x164]
        strb    sl, [r5, #0x168]
        str     sl, [r5, #0x160]
        ldrb    r4, [r7, #0x5c]
        cmp     r4, #0
        beq     L549d28
        lsl     r0, r4, #3
        mov     r1, #4
        bl      Fn_548350
        cmp     r0, #0
        moveq   r0, sl
        beq     L549c88
        cmp     r4, #0
        mov     r1, #0
        bls     L549c88
L549c70:
        adds    r2, r0, r1, lsl #3
        add     r1, r1, #1
        strbne  sl, [r2]
        strne   sl, [r2, #4]
        cmp     r1, r4
        blo     L549c70
L549c88:
        cmp     r0, #0
        str     r0, [r5, #0x160]
        strbne  r4, [r5, #0x168]
        ldr     r0, [r7, #0x64]
        mov     r4, #0
        add     sb, r0, r7
        ldrb    r0, [r5, #0x168]
        cmp     r0, #0
        movgt   fp, #4
        ble     L549d28
L549cb0:
        ldr     r0, [sb, r4, lsl #2]
        ldr     r1, [r5, #0x160]
        add     lr, sp, #8
        add     r0, r0, r7
        ldrb    r2, [r0, #2]
        strb    r2, [r1, r4, lsl #3]
        ldrh    r1, [r0]
        add     r0, r6, #8
        ldm     r6, {r2, ip}
        ldm     r0, {r0, r3}
        ldr     r1, [r8, r1, lsl #2]
        stm     lr, {r0, r3}
        add     sl, r0, r1
        mov     r1, #4
        mov     r0, #0x50
        stm     sp, {r2, ip}
        bl      Fn_548350
        cmp     r0, #0
        nop
        beq     L549d0c
        mov     r2, sp
        mov     r1, sl
        bl      Fn_54db9c
L549d0c:
        ldr     r1, [r5, #0x160]
        add     r2, fp, r4, lsl #3
        add     r4, r4, #1
        str     r0, [r1, r2]
        ldrb    r0, [r5, #0x168]
        cmp     r0, r4
        bgt     L549cb0
L549d28:
        add     sp, sp, #0x24
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L549d34:
        .word   0x0082c6fc
L549d38:
        .word   0x00641e68
        .size   A_549af4, . - A_549af4

@ FUN_0054a294
        .global A_54a294
        .type   A_54a294, %function
A_54a294:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r5, r1
        mov     r7, r2
        bl      Fn_545f70
        ldr     r1, L54a3d0
        mov     r3, #4
        mov     r2, r3
        str     r1, [r0], #0x140
        ldr     r1, L54a3d4
        blx     Fn_0000ac_t
        add     r0, r0, #0x10
        bl      Fn_54e624
        ldrb    r6, [r5, #0x5e]
        sub     r4, r0, #0x150
        cmp     r6, #3
        movhi   r6, #3
        cmp     r6, #0
        beq     L54a2ec
        mov     r1, r6
        add     r0, r4, #0x150
        bl      Fn_54e3e4
L54a2ec:
        mov     r1, #0
        mov     r0, r1
        strb    r1, [r4, #0xd4]
L54a2f8:
        add     r1, r5, r0, lsl #2
        bic     ip, r2, #0xff
        ldrb    r2, [r1, #0x4c]
        ldrb    r8, [r1, #0x4d]
        ldrb    r3, [r1, #0x4e]
        orr     r2, r2, ip
        ldrb    r1, [r1, #0x4f]
        lsl     r8, r8, #8
        and     ip, r8, #0xff00
        bic     r2, r2, #0xff00
        orr     r2, r2, ip
        lsl     r3, r3, #0x10
        bic     ip, r2, #0xff0000
        and     r3, r3, #0xff0000
        lsl     r2, r1, #0x18
        orr     r1, ip, r3
        bic     r1, r1, #0xff000000
        orr     r1, r1, r2
        add     r2, r4, r0, lsl #2
        add     r0, r0, #1
        cmp     r0, #4
        str     r1, [r2, #0x140]
        blt     L54a2f8
        cmp     r6, #0
        ldrbne  r0, [r4, #0x150]
        cmpne   r0, #0
        beq     L54a374
        mov     r2, r6
        add     r1, r5, #0x60
        add     r0, r4, #0x150
        bl      Fn_54e318
L54a374:
        ldr     r0, [r7, #8]
        ldrh    r2, [r5, #0x5c]
        ldr     r3, [r7, #0xc]
        add     r1, r0, #0xc
        ldr     r1, [r1, r2, lsl #2]
        add     r5, r0, r1
        ldm     r7, {r1, r2}
        stm     sp, {r1, r2}
        add     r2, sp, #8
        mov     r1, #4
        stm     r2, {r0, r3}
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        nop
        beq     L54a3c0
        mov     r2, sp
        mov     r1, r5
        bl      Fn_54db9c
L54a3c0:
        str     r0, [r4, #0x13c]
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L54a3d0:
        .word   0x0082c784
L54a3d4:
        .word   0x00641e68
        .size   A_54a294, . - A_54a294

@ FUN_0054a6e4
        .global A_54a6e4
        .type   A_54a6e4, %function
A_54a6e4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0xe0]
        mov     r5, r2
        cmp     r0, #0
        beq     L54a794
        ldr     r2, [r4, #0xd4]
        cmp     r2, #0
        beq     L54a798
        ldrh    r0, [r4, #0xf8]
        cmp     r0, #0
        beq     L54a720
        mvn     ip, #0
        add     r0, ip, r0, lsr #1
        uxth    r0, r0
L54a720:
        cmp     r5, r0
        bhs     L54a798
        ldrh    ip, [r4, #0xfa]
        cmp     ip, r5
        blo     L54a798
        cmp     r3, #0
        beq     L54a74c
        cmp     r1, #0
        ldrhne  ip, [r1]
        cmpne   ip, #0
        beq     L54a798
L54a74c:
        sub     r6, r0, r5
        cmp     r3, r6
        movls   r6, r3
        add     r0, r2, r5, lsl #1
        lsl     r3, r6, #1
        mov     r2, r3
        bl      Fn_202b20
        add     r0, r5, r6
        mov     r1, #0
        uxth    r0, r0
        strh    r0, [r4, #0xfa]
        ldr     r2, [r4, #0xd4]
        add     r0, r2, r0, lsl #1
        strh    r1, [r0]
        ldrb    r0, [r4, #0xfe]
        orr     r0, r0, #1
        strb    r0, [r4, #0xfe]
        uxth    r0, r6
L54a794:
        pop     {r4, r5, r6, pc}
L54a798:
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .size   A_54a6e4, . - A_54a6e4

@ FUN_0054aa4c
        .global A_54aa4c
        .type   A_54aa4c, %function
A_54aa4c:
        mov     r3, #0
        push    {r4, r5}
        str     r3, [r0, #0xd4]
        strh    r3, [r0, #0xf8]
        vldr    s0, L54aad0
        strh    r3, [r0, #0xfa]
        str     r3, [r0, #0xe0]
        vstr    s0, [r0, #0xe4]
        vstr    s0, [r0, #0xe8]
        ldrb    ip, [r0, #0xfc]
        mov     r4, #0xab
        smulbb  ip, ip, r4
        ldr     r4, L54aad4
        lsr     ip, ip, #9
        add     ip, ip, ip, lsl #1
        add     ip, ip, #1
        and     ip, ip, #0xff
        umull   r5, r4, r4, ip
        lsr     r4, r4, #1
        sub     r4, r4, r4, lsl #2
        add     ip, ip, r4
        add     ip, ip, #3
        strb    ip, [r0, #0xfc]
        vstr    s0, [r0, #0xec]
        vstr    s0, [r0, #0xf0]
        str     r3, [r0, #0xf4]
        str     r3, [r0, #0x104]
        strb    r3, [r0, #0xfd]
        strb    r3, [r0, #0xfe]
        ldr     r3, [r0]
        ldr     r3, [r3, #0x70]
        pop     {r4, r5}
        bx      r3
L54aad0:
        .word   0x00000000
L54aad4:
        .word   0xaaaaaaab
        .size   A_54aa4c, . - A_54aa4c

@ FUN_0054ada4
        .global A_54ada4
        .type   A_54ada4, %function
A_54ada4:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x14
        mov     r4, r1
        mov     r6, r2
        mov     r7, r3
        bl      Fn_545f70
        ldr     r1, L54af48
        mov     r3, #2
        mov     r2, #4
        str     r1, [r0], #0xd8
        ldr     r1, L54af4c
        blx     Fn_0000ac_t
        sub     r5, r0, #0xd8
        vldr    s0, L54af50
        add     r0, r0, #0xc
        mov     r2, r7
        vstr    s0, [r0]
        vstr    s0, [r0, #4]
        ldrh    r0, [r4, #0x4c]
        lsrs    r1, r0, #1
        subne   r0, r1, #1
        uxthne  r1, r0
        mov     r0, r5
        bl      Fn_54aa4c
        mov     r0, #0
L54ae08:
        bic     ip, r2, #0xff
        add     r1, r4, r0, lsl #2
        ldrb    r2, [r1, #0x5c]
        ldrb    r7, [r1, #0x5d]
        ldrb    r3, [r1, #0x5e]
        orr     r2, r2, ip
        ldrb    r1, [r1, #0x5f]
        lsl     r7, r7, #8
        and     ip, r7, #0xff00
        bic     r2, r2, #0xff00
        orr     r2, r2, ip
        lsl     r3, r3, #0x10
        bic     ip, r2, #0xff0000
        and     r3, r3, #0xff0000
        lsl     r2, r1, #0x18
        orr     r1, ip, r3
        bic     r1, r1, #0xff000000
        orr     r1, r1, r2
        add     r2, r5, r0, lsl #2
        add     r0, r0, #1
        cmp     r0, #2
        str     r1, [r2, #0xd8]
        blt     L54ae08
        ldrd    r0, r1, [r4, #0x64]
        strd    r0, r1, [r5, #0xe4]
        ldrb    r0, [r4, #0x54]
        strb    r0, [r5, #0xfc]
        ldrb    r0, [r4, #0x55]
        strb    r0, [r5, #0xfd]
        ldr     r0, [r4, #0x6c]
        str     r0, [r5, #0xf0]
        ldr     r0, [r4, #0x70]
        str     r0, [r5, #0xec]
        ldr     r0, [r6, #4]
        ldrh    r1, [r4, #0x52]
        add     r0, r0, #0xc
        ldr     r1, [r0, r1, lsl #2]
        add     r1, r1, r0
        ldr     r0, [r6, #0xc]
        ldr     r2, [r0]
        ldr     r2, [r2, #0xc]
        blx     r2
        str     r0, [r5, #0xe0]
        ldrh    r0, [r4, #0x4e]
        cmp     r0, #2
        blo     L54aeec
        ldr     r1, [r5, #0xd4]
        cmp     r1, #0
        beq     L54aeec
        mvn     r2, #0
        ldr     r1, [r4, #0x58]
        add     r0, r2, r0, lsr #1
        mov     r2, #0
        uxth    r3, r0
        add     r1, r1, r4
        mov     r0, r5
        bl      Fn_54a6e4
L54aeec:
        ldr     r0, [r6, #8]
        ldrh    r2, [r4, #0x50]
        ldr     r3, [r6, #0xc]
        add     r1, r0, #0xc
        ldr     r1, [r1, r2, lsl #2]
        add     r4, r0, r1
        ldm     r6, {r1, r2}
        stm     sp, {r1, r2}
        add     r2, sp, #8
        mov     r1, #4
        stm     r2, {r0, r3}
        mov     r0, #0x50
        bl      Fn_548350
        cmp     r0, #0
        nop
        beq     L54af38
        mov     r2, sp
        mov     r1, r4
        bl      Fn_54db9c
L54af38:
        str     r0, [r5, #0x100]
        add     sp, sp, #0x14
        mov     r0, r5
        pop     {r4, r5, r6, r7, pc}
L54af48:
        .word   0x0082c804
L54af4c:
        .word   0x00641e68
L54af50:
        .word   0x00000000
        .size   A_54ada4, . - A_54ada4

@ FUN_0054c338
        .global A_54c338
        .type   A_54c338, %function
A_54c338:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     r4, r0
        add     r0, sp, #0x34
        mov     r8, r1
        ldm     r0, {r5, r6}
        mov     sb, r2
        ldr     r0, [r4, #0x2c]
        ldr     r7, [sp, #0x30]
        mov     sl, r3
        and     r1, r0, #3
        cmp     r8, r1
        lslls   r1, r0, #0x1c
        cmpls   sb, r1, lsr #30
        bhi     L54c39c
        lsl     r1, r0, #0x1a
        cmp     sl, r1, lsr #30
        lslls   r1, r0, #0x17
        cmpls   r7, r1, lsr #29
        bhi     L54c39c
        lsl     r1, r0, #0x16
        cmp     r5, r1, lsr #31
        lslls   r0, r0, #0x15
        cmpls   r6, r0, lsr #31
        bls     L54c5c8
L54c39c:
        ldr     r0, [r4, #0x34]
        mov     fp, #0
        cmp     r0, #0
        beq     L54c3d4
        bl      Fn_548334
        str     fp, [r4, #0x34]
        ldr     r0, [r4, #0x2c]
        lsr     r0, r0, #0xb
        lsl     r0, r0, #0xb
        str     r0, [r4, #0x2c]
        ldr     r0, [r4, #0x30]
        lsr     r0, r0, #0xb
        lsl     r0, r0, #0xb
        str     r0, [r4, #0x30]
L54c3d4:
        add     r2, sb, sb, lsl #2
        lsl     r1, r8, #5
        add     r1, r1, r2, lsl #2
        add     r1, r1, sl, lsl #2
        add     r0, r7, r7, lsl #1
        add     r1, r1, r5, lsl #3
        add     r1, r1, r6, lsl #2
        add     r0, r1, r0, lsl #2
        mov     r1, #4
        bl      Fn_548350
        movs    r1, r0
        str     r0, [r4, #0x34]
        beq     L54c5c8
        ldr     r2, [r4, #0x2c]
        and     r3, r8, #3
        mov     r0, #0xc
        bic     r2, r2, #3
        orr     r2, r2, r3
        and     ip, r0, sb, lsl #2
        bic     r2, r2, #0xc
        orr     r2, r2, ip
        mov     r8, #0x30
        and     r8, r8, sl, lsl #4
        bic     r2, r2, #0x30
        mov     lr, #0x1c0
        orr     r2, r2, r8
        and     r7, lr, r7, lsl #6
        mov     r3, #0x200
        bic     r2, r2, #0x1c0
        and     r3, r3, r5, lsl #9
        orr     r2, r2, r7
        bic     r2, r2, #0x200
        ldr     ip, [r4, #0x30]
        mov     sb, #0x400
        orr     r2, r2, r3
        and     r5, sb, r6, lsl #10
        bic     r2, r2, #0x400
        orr     r2, r2, r5
        bic     ip, ip, #0xc
        and     r3, r2, #0xc
        orr     r3, r3, ip
        strd    r2, r3, [r4, #0x2c]
        lsl     r2, r2, #0x1e
        vldr    s2, L54c5d0
        add     r2, r1, r2, lsr #25
        lsl     r1, r3, #0x1c
        lsr     ip, r1, #0x1e
        cmp     ip, #0
        vmovhi.f32 s0, s2
        vldrhi  s1, L54c5d4
        mov     r1, #0
        bls     L54c4cc
L54c4a4:
        add     r3, r1, r1, lsl #2
        add     r1, r1, #1
        add     r3, r2, r3, lsl #2
        cmp     ip, r1
        vstr    s0, [r3, #8]
        vstr    s0, [r3]
        vstr    s0, [r3, #4]
        vstr    s1, [r3, #0xc]
        vstr    s1, [r3, #0x10]
        bhi     L54c4a4
L54c4cc:
        add     r1, r4, #0x2c
        ldm     r1, {r1, r2}
        and     r3, r1, #0x200
        bic     r2, r2, #0x200
        orr     r2, r2, r3
        tst     r2, #0x200
        str     r2, [r4, #0x30]
        beq     L54c534
        lsl     ip, r1, #0x1c
        lsl     r3, r1, #0x1e
        lsr     ip, ip, #0x1e
        lsr     r3, r3, #0x19
        add     ip, ip, ip, lsl #2
        ldr     r2, [r4, #0x34]
        and     r1, r0, r1, lsr #2
        add     r3, r3, ip, lsl #2
        add     r1, r1, r3
        add     r1, r1, r2
        strh    fp, [sp, #1]
        mov     r2, #7
        strb    fp, [sp, #3]
        strb    r2, [sp]
        vstr    s2, [sp, #4]
        ldr     r2, [sp]
        vmov    r3, s2
        strd    r2, r3, [r1]
L54c534:
        add     r1, r4, #0x2c
        ldm     r1, {r1, r2}
        and     r3, r1, #0x400
        bic     r2, r2, #0x400
        orr     r2, r2, r3
        ands    r3, r2, #0x400
        str     r2, [r4, #0x30]
        beq     L54c5c8
        ldr     r2, [r4, #0x34]
        lsl     r4, r1, #0x1c
        lsl     ip, r1, #0x1e
        lsr     r4, r4, #0x1e
        lsr     ip, ip, #0x19
        add     r4, r4, r4, lsl #2
        and     r0, r0, r1, lsr #2
        add     ip, ip, r4, lsl #2
        add     r0, r0, ip
        mov     ip, #8
        and     r1, ip, r1, lsr #6
        add     r0, r0, r1
        add     r1, r2, r0
        bic     r3, r3, #0xff
        mov     r2, #4
        mov     r0, r3
        lsl     r2, r2, #8
        mov     ip, #5
        bic     r0, r0, #0xff00
        and     r2, r2, #0xff00
        orr     r2, r2, r0
        lsl     r3, ip, #0x10
        bic     r2, r2, #0xff0000
        and     r3, r3, #0xff0000
        mov     r0, #0
        orr     r2, r2, r3
        bic     r2, r2, #0xff000000
        orr     r0, r2, r0, lsl #24
        str     r0, [r1]
L54c5c8:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L54c5d0:
        .word   0x00000000
L54c5d4:
        .word   0x3f800000
        .size   A_54c338, . - A_54c338

@ FUN_0054d868
        .global A_54d868
        .type   A_54d868, %function
A_54d868:
        cmp     r1, #0
        push    {r4, r5}
        beq     L54d990
        ldr     r2, [r0, #0x2c]
        mov     ip, #0xc
        ldr     r3, [r0, #0x34]
        lsl     r5, r2, #0x1c
        lsl     r4, r2, #0x1e
        lsr     r5, r5, #0x1e
        lsr     r4, r4, #0x19
        add     r5, r5, r5, lsl #2
        and     ip, ip, r2, lsr #2
        add     r4, r4, r5, lsl #2
        add     ip, ip, r4
        mov     r4, #8
        and     r4, r4, r2, lsr #6
        add     ip, ip, r4
        mov     r4, #4
        and     r2, r4, r2, lsr #8
        add     r2, r2, ip
        add     r4, r3, r2
        ldr     r2, [r0, #0x30]
        lsl     r2, r2, #0x17
        lsr     r3, r2, #0x1d
        cmp     r1, r3
        bls     L54d990
L54d8d0:
        add     r2, r3, r3, lsl #1
        adds    r2, r4, r2, lsl #2
        beq     L54d984
        ldr     ip, [r2]
        bic     ip, ip, #0xf000000
        str     ip, [r2]
        ldr     ip, [r2, #4]
        bic     ip, ip, #0xf000000
        str     ip, [r2, #4]
        ldr     ip, [r2]
        lsr     ip, ip, #0xc
        lsl     ip, ip, #0xc
        orr     ip, ip, #0x500
        orr     ip, ip, #0x55
        str     ip, [r2]
        ldr     ip, [r2, #4]
        lsr     ip, ip, #0xc
        lsl     ip, ip, #0xc
        orr     ip, ip, #0x500
        orr     ip, ip, #0x55
        str     ip, [r2, #4]
        ldr     ip, [r2]
        bic     ip, ip, #0xf00000
        bic     ip, ip, #0xff000
        str     ip, [r2]
        ldr     ip, [r2, #4]
        bic     ip, ip, #0xf000
        bic     ip, ip, #0xff0000
        str     ip, [r2, #4]
        ldr     ip, [r2]
        bic     ip, ip, #0x30000000
        str     ip, [r2]
        ldr     ip, [r2, #4]
        bic     ip, ip, #0x30000000
        str     ip, [r2, #4]
        ldr     ip, [r2, #8]
        bic     ip, ip, #0xff
        orr     ip, ip, #0x11
        str     ip, [r2, #8]
        ldr     ip, [r2]
        bic     ip, ip, #0x40000000
        str     ip, [r2]
        ldr     ip, [r2, #4]
        bic     ip, ip, #0x40000000
        str     ip, [r2, #4]
L54d984:
        add     r3, r3, #1
        cmp     r3, r1
        blo     L54d8d0
L54d990:
        ldr     r2, [r0, #0x30]
        mov     r3, #0x1c0
        and     r1, r3, r1, lsl #6
        bic     r2, r2, #0x1c0
        orr     r1, r1, r2
        str     r1, [r0, #0x30]
        pop     {r4, r5}
        bx      lr
        .size   A_54d868, . - A_54d868

@ FUN_0054db18
        .global A_54db18
        .type   A_54db18, %function
A_54db18:
        mov     r2, #0
        mvn     r3, #0
        str     r2, [r0, #0x10]
        str     r3, [r0, #0x14]
        str     r3, [r0, #0x18]
        ldr     r1, [r0, #0x2c]
        and     r1, r1, r3, lsl #11
        str     r1, [r0, #0x2c]
        ldr     r1, [r0, #0x30]
        and     r1, r1, r3, lsl #11
        str     r1, [r0, #0x30]
        strb    r2, [r0, #0x4d]
        str     r2, [r0, #0x34]
        bx      lr
        .size   A_54db18, . - A_54db18

@ FUN_0054db9c
        .global A_54db9c
        .type   A_54db9c, %function
A_54db9c:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x68
        mov     r4, r1
        add     r2, r0, #8
        mov     r6, #0
        mov     r3, #7
        ldr     r1, L54e230
        str     r1, [r0]
        str     r2, [r0, #8]
        str     r6, [r0, #4]
        str     r2, [r0, #0xc]
        ldr     r1, L54e234
        mov     r2, #4
        add     r0, r0, #0x10
        blx     Fn_0000ac_t
        sub     r7, r0, #0x10
        mov     r0, r7
        bl      Fn_54db18
        mov     r0, r4
        mov     r3, #0x15
        add     r1, r7, #0x38
        mov     r2, #0
L54dbf4:
        ldrb    ip, [r0]
        add     r2, r2, #1
        strb    ip, [r1], #1
        ldrb    ip, [r0, #1]!
        cmp     ip, #0
        subne   ip, r3, #1
        cmpne   ip, r2
        bhi     L54dbf4
        mov     r0, #0
        strb    r6, [r1]
L54dc1c:
        add     r1, r4, r0, lsl #2
        bic     ip, r2, #0xff
        ldrb    r2, [r1, #0x14]
        ldrb    r5, [r1, #0x15]
        ldrb    r3, [r1, #0x16]
        orr     r2, r2, ip
        ldrb    r1, [r1, #0x17]
        lsl     r5, r5, #8
        and     ip, r5, #0xff00
        bic     r2, r2, #0xff00
        lsl     r3, r3, #0x10
        orr     r2, r2, ip
        and     ip, r3, #0xff0000
        bic     r3, r2, #0xff0000
        lsl     r2, r1, #0x18
        orr     r1, r3, ip
        bic     r1, r1, #0xff000000
        orr     r1, r1, r2
        add     r2, r7, r0, lsl #2
        add     r0, r0, #1
        cmp     r0, #7
        str     r1, [r2, #0x10]
        blt     L54dc1c
        add     r0, r4, #0x34
        str     r0, [sp, #0x3c]
        ldr     r0, [r4, #0x30]
        mov     r1, #0x34
        and     sl, r0, #3
        lsl     r2, r0, #0x1c
        add     r1, r1, sl, lsl #2
        lsr     r3, r2, #0x1e
        add     fp, r4, r1
        add     r2, r3, r3, lsl #2
        add     r1, r1, r2, lsl #2
        add     r2, r4, r1
        str     r2, [sp, #0x60]
        lsl     r2, r0, #0x1a
        lsr     r2, r2, #0x1e
        add     ip, r1, r2, lsl #2
        add     r1, r4, ip
        str     r1, [sp, #0x58]
        lsl     r1, r0, #0x17
        lsr     r1, r1, #0x1d
        add     r5, r1, r1, lsl #1
        add     ip, ip, r5, lsl #2
        add     r5, r4, ip
        str     r5, [sp, #0x54]
        ands    r5, r0, #0x200
        movne   r5, #8
        add     ip, ip, r5
        add     ip, ip, r4
        str     ip, [sp, #0x5c]
        cmp     sl, #3
        mov     ip, #3
        movhi   sl, ip
        cmp     r3, #3
        mov     ip, #3
        movhi   r3, ip
        str     r3, [sp, #0x2c]
        cmp     r2, #3
        mov     r3, #3
        movhi   r2, r3
        str     r2, [sp, #0x28]
        cmp     r1, #6
        mov     r2, #6
        movhi   r1, r2
        str     r1, [sp, #0x24]
        ands    r1, r0, #0x200
        movne   r1, #1
        ands    r0, r0, #0x400
        movne   r0, #1
        ldr     r2, [sp, #0x24]
        str     r0, [sp, #0x64]
        str     r1, [sp, #0x30]
        str     r1, [sp, #4]
        str     r2, [sp]
        str     r0, [sp, #8]
        ldr     r2, [sp, #0x2c]
        ldr     r3, [sp, #0x28]
        mov     r1, sl
        mov     r0, r7
        bl      Fn_54c338
        ldr     r0, [r4, #0x30]
        ldrb    r1, [r7, #0x4d]
        ands    r0, r0, #0x800
        movne   r0, #1
        and     r1, r1, #0xfd
        orr     r0, r1, r0, lsl #1
        strb    r0, [r7, #0x4d]
        ldr     r5, [r7, #0x34]
        cmp     r5, #0
        beq     L54e224
        cmp     sl, #0
        beq     L54ddb8
        ldr     r0, [r7, #0x30]
        and     r4, r0, #3
        cmp     sl, r4
        bls     L54ddb8
L54dda4:
        adds    r0, r5, r4, lsl #5
        blne    Fn_549078
        add     r4, r4, #1
        cmp     r4, sl
        blo     L54dda4
L54ddb8:
        ldr     r0, [r7, #0x30]
        and     r1, sl, #3
        cmp     sl, #0
        bic     r0, r0, #3
        orr     r0, r0, r1
        str     r0, [r7, #0x30]
        ldrb    r1, [r7, #0x4d]
        and     r1, r1, #0xfb
        strb    r1, [r7, #0x4d]
        beq     L54df20
        ldr     r0, [sp, #0x70]
        mov     r8, #0
        mov     r6, r8
        ldr     r0, [r0]
        add     sb, r0, #0xc
        ldr     r0, [r7, #0x34]
        str     r0, [sp, #0x38]
        bls     L54df20
L54de00:
        ldr     r0, [sp, #0x3c]
        add     r5, r0, r6, lsl #2
        ldrh    r0, [r5]
        ldr     r0, [sb, r0, lsl #2]
        add     r2, sb, r0
        ldr     r0, [sp, #0x70]
        ldr     r1, [r0, #0xc]
        ldr     r0, [r1]
        ldr     r3, [r0, #0x10]
        add     r0, sp, #0x10
        blx     r3
        ldr     r0, [sp, #0x38]
        ldr     r1, [sp, #0x10]
        add     r4, r0, r8, lsl #5
        mov     r0, #0xf00
        str     r1, [r4]
        ldr     r1, [sp, #0x14]
        str     r1, [r4, #4]
        ldrh    r1, [sp, #0x18]
        strh    r1, [r4, #8]
        ldrh    r1, [sp, #0x1a]
        strh    r1, [r4, #0xa]
        ldrh    r1, [sp, #0x1c]
        strh    r1, [r4, #0xc]
        ldrh    r1, [sp, #0x1e]
        strh    r1, [r4, #0xe]
        ldrb    r2, [sp, #0x20]
        ldr     r1, [r4, #0x10]
        and     r0, r0, r2, lsl #8
        bic     r1, r1, #0xf00
        orr     r0, r0, r1
        str     r0, [r4, #0x10]
        mov     r0, r4
        bl      Fn_548e78
        ldrb    r0, [r5, #2]
        ldr     r3, [r4, #0x10]
        ldrb    r1, [r5, #3]
        and     r0, r0, #3
        bic     r3, r3, #3
        and     r1, r1, #3
        mov     r2, #0xc
        orr     r0, r0, r3
        and     r1, r2, r1, lsl #2
        bic     r0, r0, #0xc
        orr     r0, r0, r1
        str     r0, [r4, #0x10]
        mov     r0, r4
        bl      Fn_548e78
        ldrb    r0, [r5, #2]
        mov     r1, #3
        ldrb    r2, [r5, #3]
        ldr     ip, [r4, #0x10]
        and     r0, r1, r0, lsr #2
        mov     r5, #0x70
        mov     r3, r1
        bic     ip, ip, #0x70
        and     r0, r5, r0, lsl #4
        and     r2, r3, r2, lsr #2
        mov     r1, #0x80
        orr     r0, r0, ip
        and     r1, r1, r2, lsl #7
        bic     r0, r0, #0x80
        orr     r0, r0, r1
        str     r0, [r4, #0x10]
        mov     r0, r4
        bl      Fn_548e78
        add     r0, r8, #1
        and     r8, r0, #0xff
        add     r0, r6, #1
        and     r6, r0, #0xff
        cmp     sl, r6
        bhi     L54de00
L54df20:
        ldr     r0, [r7, #0x2c]
        ldr     r1, [r7, #0x34]
        ldr     r3, [sp, #0x2c]
        lsl     r0, r0, #0x1e
        cmp     r3, #0
        add     r1, r1, r0, lsr #25
        mov     r0, r1
        beq     L54df84
        ldr     r2, [r7, #0x30]
        lsl     r2, r2, #0x1c
        lsr     r2, r2, #0x1e
        cmp     r3, r2
        movhi   ip, #0
        bls     L54df84
L54df58:
        add     r4, r2, r2, lsl #2
        adds    r4, r1, r4, lsl #2
        beq     L54df78
        str     ip, [r4]
        str     ip, [r4, #4]
        str     ip, [r4, #8]
        str     ip, [r4, #0xc]
        str     ip, [r4, #0x10]
L54df78:
        add     r2, r2, #1
        cmp     r2, r3
        blo     L54df58
L54df84:
        ldr     r1, [r7, #0x30]
        mov     r4, #0xc
        and     r2, r4, r3, lsl #2
        bic     r1, r1, #0xc
        orr     r1, r1, r2
        str     r1, [r7, #0x30]
        ldrb    r2, [r7, #0x4d]
        mov     r8, #4
        and     r2, r2, #0xfb
        strb    r2, [r7, #0x4d]
        ldr     r1, [sp, #0x2c]
        cmp     r1, #0
        beq     L54e000
        mov     ip, r1
        mov     r3, #0
        add     r1, fp, #8
        add     r2, r0, #8
L54dfc8:
        add     r6, r3, r3, lsl #2
        subs    ip, ip, #1
        add     r5, fp, r6, lsl #2
        add     r6, r0, r6, lsl #2
        vldmia  r5, {s0, s1}
        add     r5, r5, #0xc
        add     r3, r3, #1
        vstmia  r6, {s0, s1}
        add     r6, r6, #0xc
        ldr     sb, [r1], #0x14
        str     sb, [r2], #0x14
        vldmia  r5, {s0, s1}
        vstmia  r6, {s0, s1}
        bne     L54dfc8
L54e000:
        ldr     r1, [r7, #0x2c]
        ldr     r0, [r7, #0x34]
        ldr     r3, [sp, #0x28]
        lsl     r2, r1, #0x1c
        lsl     r1, r1, #0x1e
        lsr     r2, r2, #0x1e
        lsr     r1, r1, #0x19
        add     r2, r2, r2, lsl #2
        cmp     r3, #0
        add     r1, r1, r2, lsl #2
        add     r0, r0, r1
        mov     ip, r0
        beq     L54e068
        ldr     r1, [r7, #0x30]
        lsl     r1, r1, #0x1a
        lsr     r2, r1, #0x1e
        cmp     r3, r2
        bls     L54e068
L54e048:
        adds    r1, r0, r2, lsl #2
        beq     L54e05c
        mov     r6, #0
        strb    r6, [r1]
        strb    r6, [r1, #1]
L54e05c:
        add     r2, r2, #1
        cmp     r2, r3
        blo     L54e048
L54e068:
        ldr     r0, [r7, #0x30]
        mov     r1, #0x30
        and     r1, r1, r3, lsl #4
        bic     r0, r0, #0x30
        orr     r1, r1, r0
        str     r1, [r7, #0x30]
        ldrb    r1, [r7, #0x4d]
        and     r1, r1, #0xfb
        strb    r1, [r7, #0x4d]
        ldr     r0, [r7, #0x30]
        tst     r0, #0x30
        beq     L54e0e0
        tst     r0, #0x10
        ldr     r0, [sp, #0x60]
        sub     r2, ip, #4
        sub     r1, r0, #4
        beq     L54e0b4
        ldr     r0, [r1, #4]!
        str     r0, [r2, #4]!
L54e0b4:
        ldr     r0, [r7, #0x30]
        lsl     r0, r0, #0x1a
        lsrs    r3, r0, #0x1f
        beq     L54e0e0
L54e0c4:
        ldr     r0, [r1, #4]
        mov     ip, r2
        subs    r3, r3, #1
        str     r0, [ip, #4]
        ldr     r0, [r1, #8]!
        str     r0, [r2, #8]!
        bne     L54e0c4
L54e0e0:
        ldr     r0, [sp, #0x24]
        mov     r5, #8
        cmp     r0, #0
        beq     L54e194
        mov     r1, r0
        mov     r0, r7
        bl      Fn_54d868
        ldr     r0, [r7, #0x2c]
        ldr     r1, [r7, #0x34]
        lsl     r3, r0, #0x1c
        lsl     r2, r0, #0x1e
        lsr     r3, r3, #0x1e
        lsr     r2, r2, #0x19
        add     r3, r3, r3, lsl #2
        and     ip, r4, r0, lsr #2
        add     r2, r2, r3, lsl #2
        and     r3, r5, r0, lsr #6
        add     r2, r2, ip
        add     r2, r2, r3
        and     r0, r8, r0, lsr #8
        add     r0, r0, r2
        add     r1, r1, r0
        ldr     r0, [sp, #0x24]
        sub     r1, r1, #0xc
        tst     r0, #1
        ldr     r0, [sp, #0x58]
        sub     r0, r0, #0xc
        beq     L54e160
        add     r0, r0, #0xc
        add     r1, r1, #0xc
        ldm     r0, {r2, r3, ip}
        stm     r1, {r2, r3, ip}
L54e160:
        ldr     r2, [sp, #0x24]
        lsrs    r2, r2, #1
        beq     L54e194
L54e16c:
        add     r3, r0, #0xc
        add     r8, r1, #0xc
        ldm     r3, {r3, r6, ip}
        add     r0, r0, #0x18
        add     r1, r1, #0x18
        subs    r2, r2, #1
        stm     r8, {r3, r6, ip}
        ldm     r0, {r3, r6, ip}
        stm     r1, {r3, r6, ip}
        bne     L54e16c
L54e194:
        ldr     r0, [sp, #0x30]
        cmp     r0, #0
        beq     L54e1d8
        ldr     r0, [r7, #0x2c]
        ldr     r1, [r7, #0x34]
        lsl     r3, r0, #0x1c
        lsl     r2, r0, #0x1e
        lsr     r3, r3, #0x1e
        lsr     r2, r2, #0x19
        add     r3, r3, r3, lsl #2
        and     r0, r4, r0, lsr #2
        add     r2, r2, r3, lsl #2
        add     r0, r0, r2
        ldr     r2, [sp, #0x54]
        add     r0, r0, r1
        ldm     r2, {r1, r2}
        stm     r0, {r1, r2}
L54e1d8:
        ldr     r0, [sp, #0x64]
        cmp     r0, #0
        beq     L54e224
        ldr     r0, [r7, #0x2c]
        ldr     r1, [r7, #0x34]
        lsl     r3, r0, #0x1c
        lsl     r2, r0, #0x1e
        lsr     r3, r3, #0x1e
        and     ip, r4, r0, lsr #2
        add     r3, r3, r3, lsl #2
        lsr     r2, r2, #0x19
        add     r2, r2, r3, lsl #2
        add     r2, r2, ip
        and     r0, r5, r0, lsr #6
        add     r0, r0, r2
        add     r0, r0, r1
        ldr     r1, [sp, #0x5c]
        ldr     r1, [r1]
        str     r1, [r0]
L54e224:
        add     sp, sp, #0x74
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L54e230:
        .word   0x0082ca0c
L54e234:
        .word   0x00641e68
        .size   A_54db9c, . - A_54db9c

@ FUN_0054e318
        .global A_54e318
        .type   A_54e318, %function
A_54e318:
        ldrb    r3, [r0, #1]
        cmp     r3, r2
        movlo   r3, r2
        cmp     r2, #0
        strb    r3, [r0, #1]
        movne   r3, #0
        bxeq    lr
        push    {r4, r5, r6, r7, r8, sb}
        mov     r5, #8
        mov     ip, #0x10
        mov     r4, #0x18
L54e344:
        ldr     r6, [r0, #4]
        add     r7, r5, r3, lsl #5
        vldmia  r1, {s0, s1}
        add     r8, r6, r3, lsl #5
        add     r6, ip, r3, lsl #5
        add     sb, r4, r3, lsl #5
        vstmia  r8, {s0, s1}
        subs    r2, r2, #1
        ldr     r8, [r0, #4]
        add     r3, r3, #1
        add     r7, r7, r8
        add     r8, r1, #8
        vldmia  r8, {s0, s1}
        vstmia  r7, {s0, s1}
        ldr     r8, [r0, #4]
        ldr     r7, [r1, #0x10]
        vldr    s0, [r1, #0x14]
        add     r6, r6, r8
        str     r7, [r6]
        vstr    s0, [r6, #4]
        add     r7, r1, #0x18
        ldr     r6, [r0, #4]
        ldm     r7, {r7, r8}
        add     r1, r1, #0x20
        add     r6, r6, sb
        stm     r6, {r7, r8}
        bne     L54e344
        pop     {r4, r5, r6, r7, r8, sb}
        bx      lr
        .size   A_54e318, . - A_54e318

@ FUN_0054e3e4
        .global A_54e3e4
        .type   A_54e3e4, %function
A_54e3e4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldrb    r0, [r0]
        cmp     r0, r6
        bhs     L54e460
        ldr     r0, [r5, #4]
        mov     r7, #0
        cmp     r0, #0
        beq     L54e41c
        bl      Fn_548334
        str     r7, [r5, #4]
        strb    r7, [r5]
        strb    r7, [r5, #1]
L54e41c:
        lsl     r4, r6, #2
        mov     r1, #4
        lsl     r0, r4, #3
        bl      Fn_548350
        cmp     r0, #0
        nop
        beq     L54e454
        mov     r7, r0
        cmp     r4, #0
        mov     r0, #0
        bls     L54e454
L54e448:
        add     r0, r0, #1
        cmp     r4, r0
        bhi     L54e448
L54e454:
        cmp     r7, #0
        str     r7, [r5, #4]
        strbne  r6, [r5]
L54e460:
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_54e3e4, . - A_54e3e4

@ FUN_005591b4
        .global A_5591b4
        .type   A_5591b4, %function
A_5591b4:
        cmp     r1, #0
        bxeq    lr
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r1]
        ldr     r2, L559204
        cmp     r0, r2
        bne     L559200
        ldr     r0, [r1, #8]
        add     r0, r0, #0xff000000
        cmp     r0, #0x100
        bhi     L559200
        mov     r0, r1
        str     r1, [r4]
        bl      Fn_63b474
        mov     r1, #1
        add     r0, r0, #8
        strb    r1, [r4, #8]
        str     r0, [r4, #4]
L559200:
        pop     {r4, pc}
L559204:
        .word   0x4b4e4243
        .size   A_5591b4, . - A_5591b4

@ FUN_00559228
        .global A_559228
        .type   A_559228, %function
A_559228:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4]
        str     r0, [r4, #4]
        strb    r0, [r4, #8]
        movs    r0, r1
        beq     L559280
        ldr     r1, [r0]
        ldr     r2, L559288
        cmp     r1, r2
        bne     L559280
        ldr     r1, [r0, #8]
        add     r1, r1, #0xff000000
        cmp     r1, #0x100
        bhi     L559280
        str     r0, [r4]
        bl      Fn_63b474
        mov     r1, #1
        add     r0, r0, #8
        strb    r1, [r4, #8]
        str     r0, [r4, #4]
L559280:
        mov     r0, r4
        pop     {r4, pc}
L559288:
        .word   0x4b4e4243
        .size   A_559228, . - A_559228

@ FUN_005592b4
        .global A_5592b4
        .type   A_5592b4, %function
A_5592b4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r0, #0
        strb    r2, [r4, #8]
        cmp     r2, #0
        str     r0, [r4]
        bne     L559348
        ldr     r0, [r1]
        ldr     r2, L559350
        cmp     r0, r2
        bne     L559348
        ldr     r0, [r1, #8]
        add     r0, r0, #0xfe000000
        cmp     r0, #0x10000
        bhi     L559348
        mov     r6, r1
        mov     r0, r1
        bl      Fn_63b99c
        mov     r5, r0
        mov     r0, r6
        bl      Fn_63b934
        cmp     r5, #0
        beq     L559348
        cmp     r0, #0
        beq     L559348
        ldr     r1, [r5]
        ldr     r2, L559354
        cmp     r1, r2
        bne     L559348
        ldr     r1, [r0]
        ldr     r2, L559358
        cmp     r1, r2
        bne     L559348
        add     r0, r0, #8
        add     r1, r5, #8
        str     r0, [r4, #4]
        str     r1, [r4]
L559348:
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L559350:
        .word   0x56415743
L559354:
        .word   0x4f464e49
L559358:
        .word   0x41544144
        .size   A_5592b4, . - A_5592b4

@ FUN_00559364
        .global A_559364
        .type   A_559364, %function
A_559364:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4]
        str     r0, [r4, #4]
        str     r0, [r4, #8]
        ldr     r0, L5593f0
        ldr     r2, [r1]
        cmp     r2, r0
        bne     L5593e8
        ldr     r0, [r1, #8]
        add     r0, r0, #0xff000000
        cmp     r0, #0x10000
        bhi     L5593e8
        mov     r7, r1
        mov     r0, r1
        bl      Fn_63baa8
        mov     r5, r0
        mov     r0, r7
        bl      Fn_63ba40
        mov     r6, r0
        mov     r0, r7
        bl      Fn_63bb14
        cmp     r5, #0
        beq     L5593e8
        cmp     r6, #0
        beq     L5593e8
        add     r1, r5, #8
        add     r2, r6, #8
        cmp     r0, #0
        stm     r4, {r1, r2}
        addne   r0, r0, #8
        strne   r0, [r4, #8]
L5593e8:
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L5593f0:
        .word   0x50524743
        .size   A_559364, . - A_559364

@ FUN_0055ba6c
        .global A_55ba6c
        .type   A_55ba6c, %function
A_55ba6c:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4]
        str     r0, [r4, #4]
        ldr     r0, L55bacc
        ldr     r2, [r1]
        cmp     r2, r0
        bne     L55bac4
        ldr     r0, [r1, #8]
        add     r0, r0, #0xff000000
        cmp     r0, #0x100
        bhi     L55bac4
        mov     r0, r1
        str     r1, [r4]
        bl      Fn_637198
        cmp     r0, #0
        beq     L55bac4
        add     r0, r0, #8
        str     r0, [r4, #4]
        mov     r0, r4
        pop     {r4, pc}
L55bac4:
        mov     r0, r4
        pop     {r4, pc}
L55bacc:
        .word   0x44535743
        .size   A_55ba6c, . - A_55ba6c

@ FUN_0055c4d4
        .global A_55c4d4
        .type   A_55c4d4, %function
A_55c4d4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r1]
        ldr     r2, L55c51c
        cmp     r0, r2
        bne     L55c518
        ldr     r0, [r1, #8]
        add     r0, r0, #0xfe000000
        cmp     r0, #0x20000
        bhi     L55c518
        mov     r0, r1
        mov     r5, r1
        str     r1, [r4]
        bl      Fn_637aa0
        add     r0, r0, r5
        add     r0, r0, #8
        str     r0, [r4, #4]
L55c518:
        pop     {r4, r5, r6, pc}
L55c51c:
        .word   0x4d545343
        .size   A_55c4d4, . - A_55c4d4

@ FUN_0055c548
        .global A_55c548
        .type   A_55c548, %function
A_55c548:
        cmp     r1, #0
        bxeq    lr
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        ldr     r0, [r1]
        ldr     r1, L55c5e8
        mov     r6, r2
        mov     r7, #0
        cmp     r0, r1
        bne     L55c5e4
        ldr     r0, [r5, #8]
        cmp     r0, #0x1000000
        bne     L55c5e4
        mov     r0, r5
        str     r5, [r4]
        bl      Fn_637c1c
        mov     r1, r0
        add     r1, r1, #8
        mov     r0, #1
        str     r1, [r4, #4]
        strb    r0, [r4, #0xc]
        cmp     r6, #0
        str     r7, [r4, #8]
        beq     L55c5e4
        cmp     r0, #0
        beq     L55c5e4
        ldr     r6, [r4]
        mov     r0, r6
        bl      Fn_637c48
        ldr     r1, L55c5ec
        ldr     r0, [r6, r0]
        cmp     r0, r1
        bne     L55c5e4
        ldr     r0, [r4]
        bl      Fn_637c48
        add     r0, r0, #4
        add     r0, r0, r5
        str     r0, [r4, #8]
L55c5e4:
        pop     {r4, r5, r6, r7, r8, pc}
L55c5e8:
        .word   0x52415743
L55c5ec:
        .word   0x54415743
        .size   A_55c548, . - A_55c548

@ FUN_0055c698
        .global A_55c698
        .type   A_55c698, %function
A_55c698:
        push    {r4, r5, r6, r7, r8, lr}
        movs    r5, r1
        mov     r7, #0
        str     r7, [r0]
        str     r7, [r0, #4]
        str     r7, [r0, #8]
        mov     r4, r0
        mov     r6, r2
        strb    r7, [r0, #0xc]
        beq     L55c740
        ldr     r0, [r5]
        ldr     r1, L55c748
        cmp     r0, r1
        bne     L55c740
        ldr     r0, [r5, #8]
        cmp     r0, #0x1000000
        bne     L55c740
        mov     r0, r5
        str     r5, [r4]
        bl      Fn_637c1c
        mov     r1, r0
        add     r1, r1, #8
        mov     r0, #1
        str     r1, [r4, #4]
        strb    r0, [r4, #0xc]
        cmp     r6, #0
        str     r7, [r4, #8]
        beq     L55c740
        cmp     r0, #0
        beq     L55c740
        ldr     r6, [r4]
        mov     r0, r6
        bl      Fn_637c48
        ldr     r1, L55c74c
        ldr     r0, [r6, r0]
        cmp     r0, r1
        bne     L55c740
        ldr     r0, [r4]
        bl      Fn_637c48
        add     r0, r0, #4
        add     r0, r0, r5
        str     r0, [r4, #8]
L55c740:
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L55c748:
        .word   0x52415743
L55c74c:
        .word   0x54415743
        .size   A_55c698, . - A_55c698

@ FUN_0055c768
        .global A_55c768
        .type   A_55c768, %function
A_55c768:
        ldr     r3, L55c7c8
        ldr     r2, [r1]
        cmp     r2, r3
        bxne    lr
        str     r4, [sp, #-4]!
        ldr     r3, [r1, #8]
        ldr     ip, L55c7cc
        add     r4, r3, #0xfe000000
        cmp     r4, ip
        bhi     L55c7c0
        add     r4, r1, #0xc
        vldr    s5, [r1, #4]
        add     r1, r1, #0x20
        vldmia  r4, {s0, s1, s2, s3, s4}
        add     r4, r0, #0xc
        str     r2, [r0]
        vstr    s5, [r0, #4]
        str     r3, [r0, #8]
        add     r0, r0, #0x20
        vstmia  r4, {s0, s1, s2, s3, s4}
        vldmia  r1, {s0, s1, s2, s3, s4, s5}
        vstmia  r0, {s0, s1, s2, s3, s4, s5}
L55c7c0:
        pop     {r4}
        bx      lr
L55c7c8:
        .word   0x52415343
L55c7cc:
        .word   0x00030100
        .size   A_55c768, . - A_55c768

@ FUN_0055c810
        .global A_55c810
        .type   A_55c810, %function
A_55c810:
        push    {r4, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [r4]
        str     r0, [r4, #4]
        str     r0, [r4, #8]
        ldr     r0, L55c87c
        ldr     r2, [r1]
        cmp     r2, r0
        bne     L55c874
        ldr     r0, [r1, #8]
        add     r0, r0, #0xff000000
        cmp     r0, #0x10000
        bhi     L55c874
        mov     r0, r1
        str     r1, [r4]
        bl      Fn_638a48
        add     r0, r0, #8
        str     r0, [r4, #4]
        ldr     r0, [r4]
        bl      Fn_638ab4
        add     r0, r0, #8
        str     r0, [r4, #8]
        mov     r0, r4
        pop     {r4, pc}
L55c874:
        mov     r0, r4
        pop     {r4, pc}
L55c87c:
        .word   0x51455343
        .size   A_55c810, . - A_55c810

@ FUN_0056aa88
        .global A_56aa88
        .type   A_56aa88, %function
A_56aa88:
        push    {r0, r1, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r4, r1
        ldr     r0, [sp]
        ldr     r0, [r0, #4]
        cmp     r0, #0
        bne     L56ac34
        ldr     r0, [r4]
        ldr     r5, L56ac40
        cmp     r0, r5
        bne     L56aaf8
        ldrh    r2, [r4, #6]
        ldrh    ip, [r4, #0x10]
        ldr     r3, L56ac44
        mov     r1, #0
        cmp     ip, #0
        add     r0, r2, r4
        ble     L56ac34
L56aacc:
        ldr     r2, [r0]
        cmp     r2, r3
        bne     L56aae0
        add     r2, r0, #8
        b       L56ac14
L56aae0:
        ldr     r2, [r0, #4]
        add     r1, r1, #1
        cmp     ip, r1
        add     r0, r0, r2
        bgt     L56aacc
        b       L56ac34
L56aaf8:
        ldr     r1, L56ac48
        mov     r3, #2
        mov     r2, #0x3000000
        mov     r0, r4
        bl      Fn_541ce0
        cmp     r0, #0
        nop
        beq     L56ac2c
        ldrh    r1, [r4, #6]
        ldrh    ip, [r4, #0x10]
        mov     r0, r4
        mov     r2, #0
        cmp     ip, #0
        mov     r3, r2
        add     r1, r1, r0
        ble     L56ac10
        ldr     r7, L56ac4c
        ldr     r8, L56ac50
        ldr     sl, L56ac54
        ldr     sb, L56ac58
        ldr     fp, L56ac5c
L56ab4c:
        ldr     r6, [r1]
        cmp     r6, r7
        sub     ip, r6, r7
        beq     L56abe4
        bge     L56ab74
        adds    ip, r6, r8
        beq     L56ab88
        subs    ip, ip, sl
        bne     L56ac34
        b       L56abcc
L56ab74:
        adds    ip, ip, sb
        beq     L56abbc
        subs    ip, ip, fp
        bne     L56ac34
        b       L56abf8
L56ab88:
        ldr     ip, [r1, #0x10]
        add     r2, r1, #8
        add     ip, ip, r0
        str     ip, [r1, #0x10]
        ldr     ip, [r1, #0x14]
        cmp     ip, #0
        addne   ip, ip, r0
        strne   ip, [r2, #0xc]
        ldr     ip, [r2, #0x10]
        cmp     ip, #0
        addne   ip, ip, r0
        strne   ip, [r2, #0x10]
        b       L56abf8
L56abbc:
        ldr     r6, [r1, #0x1c]
        add     r6, r6, r0
        str     r6, [r1, #0x1c]
        b       L56abf8
L56abcc:
        ldr     r6, [r1, #0xc]
        add     ip, r1, #8
        cmp     r6, #0
        addne   r6, r6, r0
        strne   r6, [ip, #4]
        b       L56abf8
L56abe4:
        ldr     r6, [r1, #0x10]
        add     ip, r1, #8
        cmp     r6, #0
        addne   r6, r6, r0
        strne   r6, [ip, #8]
L56abf8:
        ldrh    ip, [r0, #0x10]
        ldr     r6, [r1, #4]
        add     r3, r3, #1
        cmp     ip, r3
        add     r1, r1, r6
        bgt     L56ab4c
L56ac10:
        str     r5, [r4]
L56ac14:
        cmp     r2, #0
        beq     L56ac34
        ldr     r0, [sp]
        mov     r1, r4
        bl      Fn_569f38
        mov     r0, #1
L56ac2c:
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L56ac34:
        add     sp, sp, #8
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L56ac40:
        .word   0x554e4643
L56ac44:
        .word   0x464e4946
L56ac48:
        .word   0x544e4643
L56ac4c:
        .word   0x50414d43
L56ac50:
        .word   0xb9b1b6ba
L56ac54:
        .word   0x01f60dfd
L56ac58:
        .word   0xfff505ef
L56ac5c:
        .word   0x01fb04f3
        .size   A_56aa88, . - A_56aa88

@ FUN_0056ac9c
        .global A_56ac9c
        .type   A_56ac9c, %function
A_56ac9c:
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0]
        ldr     r1, L56ad2c
        cmp     r0, r1
        beq     L56acd0
        mov     r3, #2
        mov     r2, #0x3000000
        add     r1, r1, #0xff000000
        mov     r0, r4
        bl      Fn_541ce0
        cmp     r0, #0
        beq     L56ad0c
L56acd0:
        ldrh    r2, [r4, #0x10]
        ldrh    r0, [r4, #6]
        mov     r1, #0
        cmp     r2, #0
        ldrgt   r3, L56ad30
        add     r0, r0, r4
        ble     L56ad24
L56acec:
        ldr     ip, [r0]
        cmp     ip, r3
        bne     L56ad10
        adds    r0, r0, #8
        beq     L56ad24
        ldrh    r0, [r0, #8]
        add     r0, r0, r0, lsl #2
        lsl     r0, r0, #2
L56ad0c:
        pop     {r4, pc}
L56ad10:
        ldr     ip, [r0, #4]
        add     r1, r1, #1
        cmp     r2, r1
        add     r0, r0, ip
        bgt     L56acec
L56ad24:
        mov     r0, #0
        pop     {r4, pc}
L56ad2c:
        .word   0x554e4643
L56ad30:
        .word   0x504c4754
        .size   A_56ac9c, . - A_56ac9c
