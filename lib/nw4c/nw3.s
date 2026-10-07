@ Generated from the retail image by tools/wrapgen/asmify.py (nw4c): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text


@ FUN_0063427c
        .global A_63427c
        .type   A_63427c, %function
A_63427c:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        sub     sp, sp, #0xc
        mov     r0, r3
        ldrb    r2, [r3, #0x24]
        cmp     r2, #0
        beq     L6342a0
        bl      Fn_54773c
        mov     r1, r0
L6342a0:
        ldrd    r2, r3, [r4, #0xf0]
        ldrb    r0, [r4, #0xd4]
        ldr     sb, L634488
        mov     r7, r1
        uxth    r5, r3
        uxth    r6, r2
        cmp     r0, #0
        beq     L634458
        ldr     r0, [r4, #0xf8]
        cmp     r0, #0
        addeq   r4, r4, #0xd8
        ldmeq   r4, {r0, r1, r2, r3}
        beq     L6343b8
        add     r8, r4, #0x80
        mov     r0, sp
        mov     r1, r8
        add     r2, r4, #0x28
        bl      Fn_022a04
        ldr     r0, [r4, #0xf8]
        vldr    s0, [r8]
        vldr    s2, [r8, #0x14]
        add     r0, r0, #0x48
        ldr     r1, [r4, #0xf0]
        vldr    s1, [r0]
        vldr    s3, [r0, #4]
        ldr     r0, [r4, #0xe8]
        vmul.f32 s0, s1, s0
        vmul.f32 s1, s3, s2
        sub     r1, r1, r0
        add     ip, r0, r0, lsr #31
        vldr    s2, L63448c
        asr     r0, ip, #1
        vmov    s3, r0
        vcvt.s32.f32 s0, s0
        vcvt.s32.f32 s1, s1
        vcvt.f32.s32 s3, s3
        vmov    r2, s0
        vmov    r3, s1
        vldr    s1, [sp]
        vmov    s0, r2
        cmp     r2, #0
        vcvt.f32.s32 s0, s0
        vmla.f32 s1, s0, s2
        vmov    s0, r1
        ldr     r1, [r4, #0xec]
        add     r1, r1, r1, lsr #31
        vcvt.f32.s32 s0, s0
        asr     r1, r1, #1
        vsub.f32 s1, s3, s1
        vadd.f32 s0, s1, s0
        vmov    s1, r3
        vcvt.f32.s32 s1, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        vldr    s0, [sp, #4]
        vmls.f32 s0, s1, s2
        vmov    s1, r1
        vcvt.f32.s32 s1, s1
        vadd.f32 s0, s1, s0
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        bge     L6343a4
        mov     ip, r2
        rsb     r2, ip, #0
        add     r0, r0, ip
L6343a4:
        cmp     r3, #0
        bge     L6343b8
        mov     ip, r3
        rsb     r3, ip, #0
        add     r1, r1, ip
L6343b8:
        add     sb, sb, #8
        cmp     r5, r1
        vldmia  sb, {s0, s1}
        suble   ip, r5, #1
        ble     L6343d8
        cmp     r1, #0
        movlt   ip, #0
        movge   ip, r1
L6343d8:
        cmp     r6, r0
        uxth    ip, ip
        suble   r4, r6, #1
        ble     L6343f4
        cmp     r0, #0
        movlt   r4, #0
        movge   r4, r0
L6343f4:
        add     r1, r1, r3
        orr     r3, ip, r4, lsl #16
        sub     ip, r1, #1
        cmp     ip, r5
        subge   r1, r5, #1
        bge     L634418
        cmp     ip, #0
        movlt   r1, #0
        subge   r1, r1, #1
L634418:
        add     r0, r0, r2
        sub     r2, r0, #1
        cmp     r2, r6
        uxth    r1, r1
        subge   r0, r6, #1
        bge     L63443c
        cmp     r2, #0
        movlt   r0, #0
        subge   r0, r0, #1
L63443c:
        vstmia  r7, {s0, s1}
        orr     r0, r1, r0, lsl #16
        str     r0, [r7, #0xc]
        str     r3, [r7, #8]
        add     sp, sp, #0xc
        add     r0, r7, #0x10
        pop     {r4, r5, r6, r7, r8, sb, pc}
L634458:
        ldr     r0, L634490
        sub     r1, r5, #1
        add     sb, sb, #0x18
        add     r2, r0, r6, lsl #16
        orr     r1, r1, r2
        ldm     sb, {r0, r2, r3}
        str     r0, [r7]
        str     r1, [r7, #0xc]
        strd    r2, r3, [r7, #4]
        add     sp, sp, #0xc
        add     r0, r7, #0x10
        pop     {r4, r5, r6, r7, r8, sb, pc}
L634488:
        .word   0x007e4108
L63448c:
        .word   0x3f000000
L634490:
        .word   0xffff0000
        .size   A_63427c, . - A_63427c

@ FUN_006344b8
        .global A_6344b8
        .type   A_6344b8, %function
A_6344b8:
        push    {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #8
        mov     r5, r0
        add     r0, r1, #0x10
        mov     sl, #0
        ldr     sb, [r1, #0x10]
        add     fp, r1, #0xc
        cmp     sb, r0
        beq     L634580
L6344dc:
        ldr     r0, [sp, #0x10]
        str     r0, [sp]
        ldr     r0, [r5, #4]
        ldr     r7, [sb, #8]
        cmp     r0, #0
        moveq   r6, #0
        beq     L634568
        ldr     r1, [r0, #0x10]
        mov     r6, #0
        mov     r4, r6
        add     r8, r0, r1
        ldrh    r0, [r0, #0xe]
        cmp     r0, #0
        bls     L634568
L634514:
        ldr     r0, [r8, r4, lsl #2]
        ldr     r1, [r5, #4]
        add     r1, r1, r0
        ldrb    r0, [r1, #0x15]
        cmp     r0, #0
        ldr     r0, [r7]
        beq     L63458c
        ldr     r2, [sp]
        ldr     r3, [r0, #0x30]
        mov     r0, r7
        blx     r3
        cmp     r0, #0
        beq     L634550
L634548:
        add     r0, r6, #1
        uxth    r6, r0
L634550:
        ldr     r0, [r5, #4]
        add     r1, r4, #1
        uxth    r4, r1
        ldrh    r0, [r0, #0xe]
        cmp     r0, r4
        bhi     L634514
L634568:
        add     r0, r6, sl
        ldr     sb, [sb]
        uxth    sl, r0
        add     r0, fp, #4
        cmp     sb, r0
        bne     L6344dc
L634580:
        add     sp, sp, #0x14
        mov     r0, sl
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L63458c:
        ldr     r3, [r0, #0x2c]
        ldr     r2, [sp]
        mov     r0, r7
        blx     r3
        cmp     r0, #0
        beq     L634550
        b       L634548
        .size   A_6344b8, . - A_6344b8

@ FUN_00634d64
        .global A_634d64
        .type   A_634d64, %function
A_634d64:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, #0
        mov     r8, r5
        mov     r6, r8
        cmp     r1, #1
        mov     r4, r2
        mov     r7, r6
        beq     L634d94
        cmp     r1, #4
        cmpne   r1, #8
        beq     L634de4
        b       L634e94
L634d94:
        ldr     r0, [r2, #4]
        cmp     r0, #0
        beq     L634e94
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L634e94
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        vmov    s0, r1
        vmov    s1, r0
        vcvt.f32.u32 s2, s0
        vcvt.f32.u32 s0, s0
        vmov    r8, s2
        vmov    r5, s0
        vcvt.f32.u32 s2, s1
        vcvt.f32.u32 s0, s1
        vmov    r6, s2
        vmov    r7, s0
        b       L634e94
L634de4:
        ldr     r0, [r4, #4]
        cmp     r0, #0
        beq     L634e10
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L634e10
        ldr     r0, [r0, #0x34]
        ldrh    r0, [r0, #0xa]
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmov    r6, s0
L634e10:
        ldr     r0, [r4, #0xc]
        cmp     r0, #0
        beq     L634e3c
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L634e3c
        ldr     r0, [r0, #0x34]
        ldrh    r0, [r0, #8]
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmov    r5, s0
L634e3c:
        ldr     r0, [r4, #0x1c]
        cmp     r0, #0
        beq     L634e68
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L634e68
        ldr     r0, [r0, #0x34]
        ldrh    r0, [r0, #0xa]
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmov    r7, s0
L634e68:
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        beq     L634e94
        ldr     r1, [r0, #0x30]
        tst     r1, #3
        beq     L634e94
        ldr     r0, [r0, #0x34]
        ldrh    r0, [r0, #8]
        vmov    s0, r0
        vcvt.f32.u32 s0, s0
        vmov    r8, s0
L634e94:
        vmov    s1, r5
        vmov    s2, r6
        vmov    s0, r8
        vmov    s3, r7
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_634d64, . - A_634d64

@ FUN_00634edc
        .global A_634edc
        .type   A_634edc, %function
A_634edc:
        push    {r4, r5, r6, r7, lr}
        mov     r5, r1
        mov     r4, r0
        mov     r6, r3
        vpush   {d8, d9, d10, d11}
        sub     sp, sp, #0xa4
        ldr     r2, [r0, #0x160]
        ldrb    r1, [r0, #0x168]
        bl      Fn_634d64
        vmov.f32 s18, s0
        vmov.f32 s16, s1
        vmov.f32 s19, s2
        vmov.f32 s17, s3
        mov     r0, r4
        bl      Fn_6347e4
        vmov.f32 s21, s0
        vmov.f32 s20, s1
        ldr     r2, [r4, #0x164]
        mov     r1, r5
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r4, #0x164]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        mov     r7, r0
        ldrb    r0, [r4, #0x169]
        mov     r5, #1
        cmp     r0, #0
        beq     L634f68
        ldr     r0, [r4, #0x164]
        ldrb    r0, [r0, #0x4d]
        tst     r0, #4
        bne     L634f98
L634f68:
        ldr     r1, [r4, #0x164]
        ldr     r2, [r4, #0x15c]
        add     r3, r4, #0xd8
        mov     r0, r6
        bl      Fn_634870
        str     r0, [r4, #0xd4]
        strb    r5, [r4, #0x169]
        ldr     r0, [r4, #0x164]
        ldrb    r1, [r0, #0x4d]
        and     r1, r1, #0xfb
        orr     r1, r1, #4
        strb    r1, [r0, #0x4d]
L634f98:
        ldr     r3, [r4, #0xd4]
        add     r2, r4, #0xd8
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r1, r4, #0x80
        mov     r0, r6
        bl      Fn_548074
        vldr    s4, [r4, #0x4c]
        vldr    s5, [r4, #0x48]
        vldr    s3, [r4, #0x140]
        vsub.f32 s4, s4, s19
        vsub.f32 s5, s5, s18
        vldr    s2, [r4, #0x138]
        vldr    s1, [r4, #0x144]
        vldr    s0, [r4, #0x13c]
        add     r0, sp, #0x90
        add     r2, sp, #0x98
        add     r1, sp, #0x90
        vadd.f32 s3, s4, s3
        vadd.f32 s2, s5, s2
        vsub.f32 s3, s3, s17
        vsub.f32 s2, s2, s16
        vadd.f32 s1, s3, s1
        vadd.f32 s0, s2, s0
        vstmia  r0, {s0, s1}
        vmov.f32 s0, s21
        vldr    s1, [r4, #0x138]
        mov     r0, r6
        vadd.f32 s22, s0, s18
        vmov.f32 s0, s20
        vsub.f32 s23, s0, s19
        vldr    s0, [r4, #0x140]
        vsub.f32 s1, s22, s1
        vadd.f32 s0, s23, s0
        vstr    s1, [sp, #0x98]
        vstr    s0, [sp, #0x9c]
        bl      Fn_548100
        ldrb    r2, [r4, #0xb5]
        add     r1, r4, #0x148
        mov     r0, r6
        bl      Fn_54746c
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
        mvn     r0, #0
        str     r0, [sp, #0x90]
        str     r0, [sp, #0x94]
        str     r0, [sp, #0x98]
        str     r0, [sp, #0x9c]
        ldrb    r2, [r4, #0xb5]
        add     r1, sp, #0x90
        mov     r0, r6
        bl      Fn_54746c
        vldr    s0, L635438
        vstr    s0, [sp, #0x60]
        vstr    s0, [sp, #0x64]
        ldrb    r0, [r4, #0x168]
        cmp     r0, #1
        beq     L6350a4
        cmp     r0, #4
        beq     L635304
        cmp     r0, #8
        bne     L635cf8
        b       L635660
L6350a4:
        ldr     r5, [r4, #0x160]
        ldr     r2, [r5, #4]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        moveq   r0, r7
        beq     L635d18
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        mov     r7, r0
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        mov     r1, r0
        ldrh    r0, [r0, #8]
        ldrh    r1, [r1, #0xa]
        vmov.f32 s1, s20
        vmov.f32 s0, s21
        strh    r0, [sp, #0x90]
        add     r0, sp, #0x68
        strh    r1, [sp, #0x92]
        mov     r3, #0
        vstmia  r0, {s0, s1}
        add     r2, sp, #0x90
        vldr    s0, [r4, #0x48]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x60]
        vstr    s19, [sp, #0x64]
        bl      Fn_546834
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r7, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547afc
        vldr    s0, [r4, #0x48]
        mov     r7, r0
        mov     r3, #1
        vadd.f32 s0, s21, s0
        add     r2, sp, #0x90
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x68]
        vstr    s20, [sp, #0x6c]
        vstr    s16, [sp, #0x60]
        vldr    s0, [r4, #0x4c]
        vsub.f32 s0, s0, s17
        vstr    s0, [sp, #0x64]
        bl      Fn_546a30
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r7, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547afc
        vldr    s0, [r4, #0x4c]
        vstr    s22, [sp, #0x68]
        mov     r7, r0
        vsub.f32 s0, s20, s0
        mov     r3, #4
        add     r2, sp, #0x90
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        vadd.f32 s0, s0, s17
        vstr    s0, [sp, #0x6c]
        vldr    s0, [r4, #0x48]
        vsub.f32 s0, s0, s18
        vstr    s0, [sp, #0x60]
        vstr    s17, [sp, #0x64]
        bl      Fn_546930
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r7, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547afc
        vstr    s21, [sp, #0x68]
        vstr    s23, [sp, #0x6c]
        vstr    s18, [sp, #0x60]
        vldr    s0, [r4, #0x4c]
        mov     r7, r0
        mov     r3, #2
        vsub.f32 s0, s0, s19
        add     r2, sp, #0x90
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        vstr    s0, [sp, #0x64]
        bl      Fn_546734
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r4, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r4
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
        nop
        b       L635cf8
L635304:
        ldr     r5, [r4, #0x160]
        ldr     r2, [r5, #4]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L6353d4
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vmov.f32 s1, s20
        vmov.f32 s0, s21
        mov     r7, r0
        add     r0, sp, #0x68
        vstmia  r0, {s0, s1}
        vldr    s0, [r4, #0x48]
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x60]
        vstr    s19, [sp, #0x64]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546834
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L6353d4:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #8
        ldr     r2, [r0, #0xc]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L6354b4
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vldr    s0, [r4, #0x48]
        mov     r7, r0
        vadd.f32 s0, s21, s0
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x68]
        vstr    s20, [sp, #0x6c]
        vstr    s16, [sp, #0x60]
        vldr    s0, [r4, #0x4c]
        vsub.f32 s0, s0, s17
        vstr    s0, [sp, #0x64]
        b       L63543c
L635438:
        .word   0x00000000
L63543c:
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546a30
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L6354b4:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x18
        ldr     r2, [r0, #0x1c]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L63558c
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vldr    s0, [r4, #0x4c]
        vstr    s22, [sp, #0x68]
        mov     r7, r0
        vsub.f32 s0, s20, s0
        vadd.f32 s0, s0, s17
        vstr    s0, [sp, #0x6c]
        vldr    s0, [r4, #0x48]
        vsub.f32 s0, s0, s18
        vstr    s0, [sp, #0x60]
        vstr    s17, [sp, #0x64]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546930
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L63558c:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x10
        ldr     r2, [r0, #0x14]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L635cf8
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vstr    s21, [sp, #0x68]
        vstr    s23, [sp, #0x6c]
        vstr    s18, [sp, #0x60]
        vldr    s0, [r4, #0x4c]
        mov     r7, r0
        vsub.f32 s0, s0, s19
        vstr    s0, [sp, #0x64]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546734
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r4, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r4
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
        nop
        b       L635cf8
L635660:
        ldr     r5, [r4, #0x160]
        ldr     r2, [r5, #4]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L635724
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vmov.f64 d0, d10
        mov     r7, r0
        add     r0, sp, #0x60
        vstr    s1, [sp, #0x68]
        vstr    s0, [sp, #0x6c]
        vstmia  r0, {s18, s19}
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546834
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L635724:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x30
        ldr     r2, [r0, #0x34]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L6357f4
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vldr    s0, [r4, #0x48]
        mov     r7, r0
        vsub.f32 s0, s0, s18
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x60]
        vstr    s19, [sp, #0x64]
        vstr    s22, [sp, #0x68]
        vstr    s20, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546834
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L6357f4:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #8
        ldr     r2, [r0, #0xc]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L6358c4
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vstr    s16, [sp, #0x60]
        vstr    s19, [sp, #0x64]
        vldr    s0, [r4, #0x48]
        mov     r7, r0
        vadd.f32 s0, s21, s0
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x68]
        vstr    s20, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546a30
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L6358c4:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x28
        ldr     r2, [r0, #0x2c]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L6359a0
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vldr    s0, [r4, #0x4c]
        vstr    s16, [sp, #0x60]
        mov     r7, r0
        vsub.f32 s0, s0, s19
        vsub.f32 s0, s0, s17
        vstr    s0, [sp, #0x64]
        vldr    s0, [r4, #0x48]
        vadd.f32 s0, s21, s0
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x68]
        vstr    s23, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546a30
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L6359a0:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x18
        ldr     r2, [r0, #0x1c]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L635a7c
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        mov     r7, r0
        add     r0, sp, #0x60
        vstmia  r0, {s16, s17}
        vldr    s1, [r4, #0x48]
        vldr    s0, [r4, #0x4c]
        vadd.f32 s1, s21, s1
        vsub.f32 s0, s20, s0
        vsub.f32 s1, s1, s16
        vadd.f32 s0, s0, s17
        vstr    s1, [sp, #0x68]
        vstr    s0, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546930
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L635a7c:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x38
        ldr     r2, [r0, #0x3c]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L635b58
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vldr    s0, [r4, #0x48]
        mov     r7, r0
        vsub.f32 s0, s0, s18
        vsub.f32 s0, s0, s16
        vstr    s0, [sp, #0x60]
        vstr    s17, [sp, #0x64]
        vldr    s0, [r4, #0x4c]
        vstr    s22, [sp, #0x68]
        vsub.f32 s0, s20, s0
        vadd.f32 s0, s0, s17
        vstr    s0, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546930
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L635b58:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x10
        ldr     r2, [r0, #0x14]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L635c28
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vstr    s18, [sp, #0x60]
        vstr    s17, [sp, #0x64]
        vldr    s0, [r4, #0x4c]
        vstr    s21, [sp, #0x68]
        mov     r7, r0
        vsub.f32 s0, s20, s0
        vadd.f32 s0, s0, s17
        vstr    s0, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546734
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r5, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r5
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L635c28:
        ldr     r0, [r4, #0x160]
        add     r5, r0, #0x20
        ldr     r2, [r0, #0x24]
        ldr     r0, [r2, #0x30]
        tst     r0, #3
        beq     L635cf8
        mov     r1, r7
        mov     r0, r6
        bl      Fn_546bc8
        mov     r1, r0
        ldr     r2, [r5, #4]
        mov     r3, #1
        mov     r0, r6
        bl      Fn_547154
        vldr    s0, [r4, #0x4c]
        vstr    s18, [sp, #0x60]
        mov     r7, r0
        vsub.f32 s0, s0, s19
        vsub.f32 s0, s0, s17
        vstr    s0, [sp, #0x64]
        vstr    s21, [sp, #0x68]
        vstr    s23, [sp, #0x6c]
        ldr     r0, [r5, #4]
        ldr     r0, [r0, #0x34]
        ldrh    r1, [r0, #8]
        ldrh    r0, [r0, #0xa]
        add     r2, sp, #0x90
        strh    r1, [sp, #0x90]
        strh    r0, [sp, #0x92]
        ldrb    r3, [r5]
        add     r1, sp, #0x60
        add     r0, sp, #0x70
        bl      Fn_546734
        ldr     r1, [r5, #4]
        mov     r3, sp
        add     r2, sp, #0x70
        mov     r0, r6
        bl      Fn_634870
        mov     r3, r0
        mov     r2, sp
        mov     r1, r7
        mov     r0, r6
        bl      Fn_547f30
        mov     r4, r0
        add     r2, sp, #0x68
        add     r1, sp, #0x60
        mov     r0, r6
        bl      Fn_548100
        mov     r1, r4
        mov     r0, r6
        bl      Fn_547afc
        mov     r7, r0
L635cf8:
        ldrb    r2, [r6, #0x24]
        mov     r0, r6
        mov     r1, r7
        cmp     r2, #0
        beq     L635d14
        bl      Fn_54773c
        mov     r1, r0
L635d14:
        mov     r0, r1
L635d18:
        add     sp, sp, #0xa4
        vpop    {d8, d9, d10, d11}
        pop     {r4, r5, r6, r7, pc}
        .size   A_634edc, . - A_634edc

@ FUN_006362e8
        .global A_6362e8
        .type   A_6362e8, %function
A_6362e8:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r2
        ldrh    r0, [r0, #0xfa]
        mov     r5, r3
        cmp     r0, #0
        ldrne   r0, [r4, #0xe0]
        cmpne   r0, #0
        ldrne   r0, [r4, #0x100]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636388
        ldrb    r2, [r3, #0x24]
        mov     r0, r3
        cmp     r2, #0
        beq     L636330
        bl      Fn_54773c
        mov     r1, r0
L636330:
        ldr     r0, [r4, #0x104]
        mov     r7, r1
        ldrb    r2, [r0, #9]
        tst     r2, #1
        bne     L636370
        ldrb    r2, [r4, #0xfe]
        mov     r1, r5
        cmp     r2, #0
        bne     L636368
        ldrb    r0, [r0, #8]
        cmp     r0, #0
        bne     L636370
        cmp     r1, #0
        beq     L636370
L636368:
        mov     r0, r4
        bl      Fn_54a978
L636370:
        str     r6, [sp]
        ldr     r3, [r4, #0x100]
        mov     r2, r4
        mov     r1, r7
        mov     r0, r5
        bl      Fn_547048
L636388:
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_6362e8, . - A_6362e8

@ FUN_006363b0
        .global A_6363b0
        .type   A_6363b0, %function
A_6363b0:
        push    {r4, lr}
        ldrb    r2, [r3, #0x24]
        mov     r4, r0
        mov     r0, r1
        cmp     r2, #0
        movne   r0, r3
        blne    Fn_54773c
        ldrb    r2, [r4, #0xd4]
        ldr     r1, L636460
        cmp     r2, #0
        beq     L636414
        cmp     r2, #1
        beq     L636438
        cmp     r2, #2
        bne     L636410
        add     r3, r1, #0x78
        mov     r2, r0
        vldmia  r3, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r1, r1, #0x98
        add     r0, r0, #0x40
        vstmia  r2, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r2, r2, #0x20
        vldmia  r1, {s0, s1, s2, s3, s4, s5, s6, s7}
        vstmia  r2, {s0, s1, s2, s3, s4, s5, s6, s7}
L636410:
        pop     {r4, pc}
L636414:
        vldmia  r1, {s0, s1, s2, s3, s4, s5, s6, s7}
        mov     r2, r0
        add     r1, r1, #0x20
        add     r0, r0, #0x40
        vstmia  r2, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r2, r2, #0x20
        vldmia  r1, {s0, s1, s2, s3, s4, s5, s6, s7}
        vstmia  r2, {s0, s1, s2, s3, s4, s5, s6, s7}
        pop     {r4, pc}
L636438:
        add     r3, r1, #0x40
        mov     r2, r0
        vldmia  r3, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r1, r1, #0x60
        add     r0, r0, #0x38
        vstmia  r2, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r2, r2, #0x20
        vldmia  r1, {s0, s1, s2, s3, s4, s5}
        vstmia  r2, {s0, s1, s2, s3, s4, s5}
        pop     {r4, pc}
L636460:
        .word   0x007e4050
        .size   A_6363b0, . - A_6363b0

@ FUN_006365d8
        .global A_6365d8
        .type   A_6365d8, %function
A_6365d8:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r5, r0
        mov     r0, r1
        mov     sb, r2
        mov     r4, r3
        ldr     r1, [r1]
        ldr     r1, [r1, #0xc]
        blx     r1
        mov     sl, r0
        ldr     r0, [r0]
        ldrh    r3, [r5, #0x12]
        ldr     r1, [r5, #4]
        mov     r2, r4
        ldr     ip, [r0, #0x14]
        mov     r0, sl
        blx     ip
        ldrh    r0, [r5, #0x10]
        ldr     fp, L63676c
        mov     r7, #0
        cmp     r0, fp
        beq     L636690
        ldr     r4, [sl, #0x18]
        mov     r1, #1
        cmp     r4, #0
        beq     L636664
        ldrh    r3, [sl, #0x1c]
        add     r2, r4, r3, lsl #4
        cmp     r2, r4
        bls     L636664
L63664c:
        ldr     r3, [r4, #8]
        cmp     r3, #0
        beq     L63666c
        add     r4, r4, #0x10
        cmp     r2, r4
        bhi     L63664c
L636664:
        mov     r7, #0
        b       L636690
L63666c:
        cmp     r4, #0
        beq     L636664
        str     sl, [r4, #8]
        strh    r0, [r4, #0xc]
        strb    r1, [r4, #0xe]
        mov     r1, r4
        mov     r0, sb
        bl      Fn_545acc
        add     r7, r4, #0x10
L636690:
        ldr     r0, [sb]
        ldr     r1, [r0, #0x24]
        mov     r0, sb
        blx     r1
        ldrb    r1, [r5, #0x26]
        mov     r4, #0
        cmp     r1, r0
        movle   r0, r1
        and     r8, r0, #0xff
        cmp     r8, #0
        bls     L636764
L6366bc:
        add     r6, r5, r4, lsl #1
        ldrh    r0, [r6, #0x14]
        cmp     r0, fp
        beq     L636758
        ldr     r0, [sb]
        mov     r1, r4
        ldr     r2, [r0, #0x28]
        mov     r0, sb
        blx     r2
        cmp     r7, #0
        ldreq   r7, [sl, #0x18]
        ldrh    r1, [r6, #0x14]
        cmpeq   r7, #0
        beq     L63672c
        ldrh    r2, [sl, #0x1c]
        ldr     r3, [sl, #0x18]
        add     r2, r3, r2, lsl #4
        cmp     r2, r7
        bls     L63672c
L636708:
        ldr     r2, [r7, #8]
        cmp     r2, #0
        beq     L636734
        ldrh    r2, [sl, #0x1c]
        ldr     r3, [sl, #0x18]
        add     r7, r7, #0x10
        add     r2, r3, r2, lsl #4
        cmp     r2, r7
        bhi     L636708
L63672c:
        mov     r7, #0
        b       L636758
L636734:
        cmp     r7, #0
        beq     L63672c
        mov     r3, #1
        str     sl, [r7, #8]
        strb    r3, [r7, #0xe]
        strh    r1, [r7, #0xc]
        mov     r1, r7
        bl      Fn_54d9f8
        add     r7, r7, #0x10
L636758:
        add     r4, r4, #1
        cmp     r4, r8
        blo     L6366bc
L636764:
        mov     r0, sl
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L63676c:
        .word   0x0000ffff
        .size   A_6365d8, . - A_6365d8

@ FUN_006368d0
        .global A_6368d0
        .type   A_6368d0, %function
A_6368d0:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_6396a4
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636920
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L63691c
        ldr     r3, [r0]
        ldr     r3, [r3, #0x2c]
        blx     r3
L63691c:
        mov     r0, #1
L636920:
        pop     {r4, r5, r6, pc}
        .size   A_6368d0, . - A_6368d0

@ FUN_0063696c
        .global A_63696c
        .type   A_63696c, %function
A_63696c:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r0
        mov     r4, r3
        mov     sl, r1
        mov     fp, r2
        vpush   {d8, d9}
        sub     sp, sp, #0x114
        add     r0, sp, #0x148
        vldmia  r0, {s16, s17, s18}
        ldrb    r0, [r3]
        cmp     r0, #0x2f
        beq     L636a54
        mov     r0, r3
        bl      Fn_200e60
        mov     r6, r0
        add     r0, r5, #0xc
        bl      Fn_200e60
        add     r1, r6, r0
        cmp     r1, #0x100
        movhs   r0, #0
        bhs     L636a70
        add     r0, r0, #1
        mov     sb, #0
        cmp     r0, #0xff
        add     r2, sp, #0x10
        mov     ip, #0x100
        add     r1, r5, #0xc
        mov     r3, sb
        bhs     L6369e8
        cmp     r0, #0
        bls     L636a18
L6369e8:
        sub     r7, ip, #1
L6369ec:
        ldrb    r8, [r1]
        add     r3, r3, #1
        strb    r8, [r2], #1
        ldrb    r8, [r1, #1]!
        cmp     r8, #0
        beq     L636a18
        cmp     r7, r0
        movls   r8, r7
        movhi   r8, r0
        cmp     r8, r3
        bhi     L6369ec
L636a18:
        add     r8, sp, #0x10
        mov     r7, r4
        add     r4, r6, #1
        mov     r0, r8
        strb    sb, [r2]
        bl      Fn_200e60
        add     r1, r0, r4
        cmp     r1, #0x100
        rsbhs   r4, r0, #0xff
        mov     r2, r4
        mov     r1, r7
        mov     r0, r8
        blx     Fn_000b1c_t
        add     r3, sp, #0x10
        strb    sb, [sp, #0x10f]
L636a54:
        mov     r2, fp
        vstmia  sp, {s16, s17, s18}
        mov     r1, sl
        ldr     r0, [r5]
        ldr     ip, [r0, #0x14]
        mov     r0, r5
        blx     ip
L636a70:
        add     sp, sp, #0x114
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
        .size   A_63696c, . - A_63696c

@ FUN_00636a7c
        .global A_636a7c
        .type   A_636a7c, %function
A_636a7c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_6397d4
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636acc
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636ac8
        ldr     r3, [r0]
        ldr     r3, [r3, #0x34]
        blx     r3
L636ac8:
        mov     r0, #1
L636acc:
        pop     {r4, r5, r6, pc}
        .size   A_636a7c, . - A_636a7c

@ FUN_00636cc8
        .global A_636cc8
        .type   A_636cc8, %function
A_636cc8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        mov     r6, r2
        bl      Fn_639a80
        movs    r1, r0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        moveq   r0, r1
        beq     L636d18
        ldrb    r3, [r0, #4]
        mov     r1, r5
        mov     r2, r6
        cmp     r3, #0
        beq     L636d14
        ldr     r3, [r0]
        ldr     r3, [r3, #0x38]
        blx     r3
L636d14:
        mov     r0, #1
L636d18:
        pop     {r4, r5, r6, pc}
        .size   A_636cc8, . - A_636cc8

@ FUN_00636d2c
        .global A_636d2c
        .type   A_636d2c, %function
A_636d2c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x21c]
        mov     r5, r1
        cmp     r0, #0
        beq     L636d5c
        ldr     r1, [r0]
        ldr     r2, [r1, #8]
        mov     r1, r5
        blx     r2
        cmp     r0, #0
        bne     L636d8c
L636d5c:
        mov     r1, r5
        add     r0, r4, #0xc
        bl      Fn_638e38
        cmp     r0, #0
        nop
        bne     L636d8c
        ldr     r0, [r4]
        mov     r1, r5
        ldr     r2, [r0, #0x10]
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        bx      r2
L636d8c:
        pop     {r4, r5, r6, pc}
        .size   A_636d2c, . - A_636d2c

@ FUN_00637198
        .global A_637198
        .type   A_637198, %function
A_637198:
        push    {r4, r5}
        ldrh    ip, [r0, #0x10]
        add     r3, r0, #0x14
        mov     r5, r0
        mov     r0, #0
        cmp     ip, #0
        mov     r2, #0x6800
        mov     r1, r0
        ble     L6371e8
L6371bc:
        add     r4, r1, r1, lsl #1
        add     r4, r3, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, r2
        bne     L6371f0
        add     r1, r1, r1, lsl #1
        adds    r1, r3, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r0, r1, r5
        beq     L6371e8
L6371e8:
        pop     {r4, r5}
        bx      lr
L6371f0:
        add     r1, r1, #1
        cmp     ip, r1
        bgt     L6371bc
        pop     {r4, r5}
        bx      lr
        .size   A_637198, . - A_637198

@ FUN_0063728c
        .global A_63728c
        .type   A_63728c, %function
A_63728c:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63728c, . - A_63728c

@ FUN_006372b0
        .global A_6372b0
        .type   A_6372b0, %function
A_6372b0:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r2
        mov     r6, r1
        mov     r5, r3
        mov     r7, r0
        mov     r2, #8
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        beq     L637318
        ldr     r0, [sp]
        add     ip, r7, r0
        ldrb    r0, [ip]
        strb    r0, [r6]
        ldrb    r3, [ip, #1]
        cmp     r3, #2
        movhi   r3, #2
        bhi     L637304
        sub     r0, r3, #1
        cmp     r0, #0
        ble     L637384
L637304:
        tst     r3, #1
        sub     r1, r4, #1
        add     r0, ip, #1
        bne     L63735c
        b       L637354
L637318:
        mov     r0, #0x7f
        cmp     r5, #0
        strb    r0, [r6]
        beq     L637350
        sub     r0, r4, #1
        tst     r5, #1
        mov     r2, #0
        strbne  r2, [r0, #1]!
        lsrs    r1, r5, #1
        beq     L637350
L637340:
        strb    r2, [r0, #1]
        subs    r1, r1, #1
        strb    r2, [r0, #2]!
        bne     L637340
L637350:
        pop     {r3, r4, r5, r6, r7, pc}
L637354:
        ldrb    r2, [r0, #1]!
        strb    r2, [r1, #1]!
L63735c:
        ldrb    r5, [r0, #1]
        sub     r2, r3, #1
        asrs    r2, r2, #1
        beq     L637384
L63736c:
        ldrb    r6, [r0, #2]!
        strb    r5, [r1, #1]
        ldrb    r5, [r0, #1]
        subs    r2, r2, #1
        strb    r6, [r1, #2]!
        bne     L63736c
L637384:
        subs    r0, r3, #1
        bmi     L637350
        add     r1, ip, r0
        ldrb    r1, [r1, #2]
        strb    r1, [r4, r0]
        pop     {r3, r4, r5, r6, r7, pc}
        .size   A_6372b0, . - A_6372b0

@ FUN_0063739c
        .global A_63739c
        .type   A_63739c, %function
A_63739c:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r2, #9
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        ldreq   r0, L6373d0
        beq     L6373cc
        ldr     r0, [sp]
        add     r0, r0, r4
        ldr     r1, [r0, #4]
        add     r0, r0, r1
L6373cc:
        pop     {r3, r4, r5, pc}
L6373d0:
        .word   0x008bb9b8
        .size   A_63739c, . - A_63739c

@ FUN_006373d4
        .global A_6373d4
        .type   A_6373d4, %function
A_6373d4:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        beq     L6373f8
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
L6373f8:
        pop     {r3, pc}
        .size   A_6373d4, . - A_6373d4

@ FUN_006373fc
        .global A_6373fc
        .type   A_6373fc, %function
A_6373fc:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        beq     L637420
        ldr     r0, [sp]
        lsl     r0, r0, #8
        lsr     r0, r0, #0x18
L637420:
        pop     {r3, pc}
        .size   A_6373fc, . - A_6373fc

@ FUN_00637424
        .global A_637424
        .type   A_637424, %function
A_637424:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        beq     L637448
        ldr     r0, [sp]
        asr     r0, r0, #8
        sxtb    r0, r0
L637448:
        pop     {r3, pc}
        .size   A_637424, . - A_637424

@ FUN_0063744c
        .global A_63744c
        .type   A_63744c, %function
A_63744c:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x40
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63744c, . - A_63744c

@ FUN_00637470
        .global A_637470
        .type   A_637470, %function
A_637470:
        push    {r4, r5, r6, r7}
        mov     r5, #0
        ldr     r4, [r0]
        mov     r3, #1
        mov     r1, r5
        mov     r2, r5
        mov     ip, #2
        mov     r6, r3
L637490:
        tst     r4, r6, lsl r2
        beq     L6374a4
        cmp     r2, r3
        add     r1, r1, #1
        moveq   r5, #1
L6374a4:
        subs    ip, ip, #1
        add     r2, r2, #1
        bne     L637490
        cmp     r5, #0
        beq     L6374d0
        cmp     r1, #0
        beq     L6374d0
        add     r0, r0, r1, lsl #2
        vldr    s0, [r0]
        pop     {r4, r5, r6, r7}
        bx      lr
L6374d0:
        pop     {r4, r5, r6, r7}
        vldr    s0, L6374dc
        bx      lr
L6374dc:
        .word   0x3f800000
        .size   A_637470, . - A_637470

@ FUN_00637650
        .global A_637650
        .type   A_637650, %function
A_637650:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r4, r1
        ldrb    r0, [r0, #8]
        ldr     r7, [sp, #0x18]
        mov     r6, r2
        cmp     r0, #0
        mov     r8, r3
        beq     L63775c
        cmp     r6, #0
        blt     L637760
        ldr     r0, [r5, #4]
        bl      Fn_63b5e4
        ldr     r0, [r0]
        cmp     r0, r6
        ble     L637760
        ldr     r0, [r5, #4]
        mov     r1, r6
        bl      Fn_63b594
        cmp     r0, #0
        beq     L63775c
        mov     r1, r8
        bl      Fn_63b4e0
        cmp     r0, #0
        beq     L63775c
        mov     r1, r7
        bl      Fn_63b7b4
        movs    r6, r0
        beq     L63775c
        ldr     r0, [r5, #4]
        ldr     r5, [r6]
        bl      Fn_63b5d8
        ldr     r1, [r0]
        cmp     r1, r5
        bls     L637760
        add     r0, r0, r5, lsl #3
        adds    r0, r0, #4
        ldrne   r1, [r0, #4]
        cmnne   r1, #1
        beq     L637760
        ldr     r1, [r0]
        str     r1, [r4]
        ldr     r0, [r0, #4]
        str     r0, [r4, #4]
        mov     r0, r6
        bl      Fn_63b6ac
        cmp     r0, #0
        add     r5, r4, #0xc
        beq     L637768
        ldrb    r2, [r0]
        add     r1, r0, #0x20
        strb    r2, [r4, #0x11]
        ldrb    r2, [r0, #4]
        strb    r2, [r4, #0x12]
        ldrb    r2, [r0, #8]
        strb    r2, [r4, #0x13]
        ldr     r2, [r0, #0xc]
        str     r2, [r4, #8]
        ldrb    r2, [r0, #0x10]
        strb    r2, [r4, #0x14]
        ldrb    r2, [r0, #0x11]
        strb    r2, [r4, #0x15]
        ldrb    r0, [r0, #0x12]
        strb    r0, [r4, #0x16]
        mov     r0, r5
        bl      Fn_646564
L637758:
        mov     r0, #1
L63775c:
        pop     {r4, r5, r6, r7, r8, pc}
L637760:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L637768:
        mov     r0, r6
        bl      Fn_63b658
        strb    r0, [r4, #0x11]
        mov     r0, r6
        bl      Fn_63b78c
        strb    r0, [r4, #0x12]
        mov     r0, r6
        bl      Fn_63b6f0
        strb    r0, [r4, #0x13]
        mov     r0, r6
        bl      Fn_63b718
        vstr    s0, [r4, #8]
        mov     r0, r6
        bl      Fn_63b680
        strb    r0, [r4, #0x14]
        mov     r0, r6
        bl      Fn_63b5f0
        strb    r0, [r4, #0x15]
        mov     r0, r6
        bl      Fn_63b6c4
        strb    r0, [r4, #0x16]
        mov     r0, r6
        bl      Fn_63b61c
        mov     r1, r0
        mov     r0, r5
        bl      Fn_646564
        nop
        nop
        b       L637758
        .size   A_637650, . - A_637650

@ FUN_006377dc
        .global A_6377dc
        .type   A_6377dc, %function
A_6377dc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     r6, r1
        ldrb    r0, [r0, #8]
        cmp     r0, #0
        movne   r0, #0
        bne     L6378d8
        ldr     r0, [r5]
        mov     r4, #0
        ldrb    r0, [r0]
        cmp     r0, #0
        cmpne   r0, #1
        movne   r0, #3
        strb    r0, [r6]
        ldr     r0, [r5]
        ldr     r0, [r0, #0x14]
        str     r0, [r6, #4]
        ldr     r0, [r5]
        ldr     r0, [r0, #4]
        str     r0, [r6, #8]
        ldr     r0, [r5]
        ldrb    r0, [r0, #1]
        cmp     r0, #1
        movne   r0, #0
        strb    r0, [r6, #1]
        ldr     r0, [r5]
        ldr     r0, [r0, #8]
        str     r0, [r6, #0xc]
        ldr     r0, [r5]
        ldr     r0, [r0, #0xc]
        str     r0, [r6, #0x10]
        b       L6378c4
L63785c:
        cmp     r4, #2
        bge     L6378c0
        add     r1, r4, r4, lsl #1
        add     r1, r6, r1, lsl #4
        add     r7, r1, #0x14
        mov     r1, r4
        bl      Fn_63ba20
        mov     r8, r0
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        beq     L6378b0
        mov     r0, r8
        bl      Fn_63ba08
        mov     sb, r0
        mov     r1, r0
        mov     r2, #0x26
        add     r0, r7, #4
        bl      Fn_202b20
        add     r1, sb, #0x26
        add     r0, r7, #0x2a
        bl      Fn_646578
L6378b0:
        ldr     r1, [r5, #4]
        mov     r0, r8
        bl      Fn_63ba14
        str     r0, [r7]
L6378c0:
        add     r4, r4, #1
L6378c4:
        ldr     r0, [r5]
        ldr     r1, [r0, #0x14]
        cmp     r1, r4
        bgt     L63785c
        mov     r0, #1
L6378d8:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_6377dc, . - A_6377dc

@ FUN_006378dc
        .global A_6378dc
        .type   A_6378dc, %function
A_6378dc:
        vldr    s1, L637928
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        cmp     r0, #0x60
        movgt   r0, #0x60
        bgt     L637900
        cmp     r0, #0
        movlt   r0, #0
L637900:
        ldr     r1, L63792c
        add     r0, r0, r0, lsl #2
        add     r0, r1, r0, lsl #1
        ldr     r1, [r0]
        str     r1, [r2]
        ldr     r1, [r0, #4]
        str     r1, [r2, #4]
        ldrh    r0, [r0, #8]
        strh    r0, [r2, #8]
        bx      lr
L637928:
        .word   0x42c00000
L63792c:
        .word   0x007febac
        .size   A_6378dc, . - A_6378dc

@ FUN_00637930
        .global A_637930
        .type   A_637930, %function
A_637930:
        vldr    s1, L63797c
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        cmp     r0, #0x6f
        movgt   r0, #0x6f
        bgt     L637954
        cmp     r0, #0
        movlt   r0, #0
L637954:
        ldr     r1, L637980
        add     r0, r0, r0, lsl #2
        add     r0, r1, r0, lsl #1
        ldr     r1, [r0]
        str     r1, [r2]
        ldr     r1, [r0, #4]
        str     r1, [r2, #4]
        ldrh    r0, [r0, #8]
        strh    r0, [r2, #8]
        bx      lr
L63797c:
        .word   0x42de0000
L637980:
        .word   0x007fe74c
        .size   A_637930, . - A_637930

@ FUN_00637b30
        .global A_637b30
        .type   A_637b30, %function
A_637b30:
        ldrh    r1, [r0, #8]
        sub     r2, r1, #0x100
        subs    r2, r2, #1
        ldreq   r1, [r0, #0xc]
        movne   r0, #0
        addeq   r0, r0, r1
        bx      lr
        .size   A_637b30, . - A_637b30

@ FUN_00637b4c
        .global A_637b4c
        .type   A_637b4c, %function
A_637b4c:
        ldrh    r1, [r0]
        cmp     r1, #0x4100
        ldreq   r1, [r0, #4]
        movne   r0, #0
        addeq   r0, r0, r1
        bx      lr
        .size   A_637b4c, . - A_637b4c

@ FUN_00637b64
        .global A_637b64
        .type   A_637b64, %function
A_637b64:
        ldrh    r1, [r0, #0x10]
        sub     r2, r1, #0x100
        subs    r2, r2, #1
        ldreq   r1, [r0, #0x14]
        movne   r0, #0
        addeq   r0, r0, r1
        bx      lr
        .size   A_637b64, . - A_637b64

@ FUN_00637b80
        .global A_637b80
        .type   A_637b80, %function
A_637b80:
        ldr     r2, [r0]
        cmp     r2, r1
        ldr     r2, L637bb0
        bls     L637ba8
        add     r1, r0, r1, lsl #3
        ldrh    r3, [r1, #4]
        cmp     r3, r2
        ldreq   r1, [r1, #8]
        addeq   r0, r0, r1
        beq     L637bac
L637ba8:
        mov     r0, #0
L637bac:
        bx      lr
L637bb0:
        .word   0x00004101
        .size   A_637b80, . - A_637b80

@ FUN_00637bb4
        .global A_637bb4
        .type   A_637bb4, %function
A_637bb4:
        ldr     r2, [r0]
        cmp     r2, r1
        ldr     r2, L637be4
        bls     L637bdc
        add     r1, r0, r1, lsl #3
        ldrh    r3, [r1, #4]
        cmp     r3, r2
        ldreq   r1, [r1, #8]
        addeq   r0, r0, r1
        beq     L637be0
L637bdc:
        mov     r0, #0
L637be0:
        bx      lr
L637be4:
        .word   0x00004102
        .size   A_637bb4, . - A_637bb4

@ FUN_00638118
        .global A_638118
        .type   A_638118, %function
A_638118:
        push    {r3, r4, r5, lr}
        lsr     r3, r1, #0x18
        mvn     r4, #0
        cmp     r3, #7
        mov     r2, r4
        ldrlo   pc, [pc, r3, lsl #2]
        b       L638348
        rsbseq  r8, r3, r8, asr #6
        rsbseq  r8, r3, r0, asr r1
        rsbseq  r8, r3, ip, asr #4
        rsbseq  r8, r3, r4, lsr #3
        ldrshteq r8, [r3], #-0x24
        ldrshteq r8, [r3], #-0x18
        rsbseq  r8, r3, r0, lsr #5
        mov     r3, #1
        cmp     r3, r1, lsr #24
        bne     L638348
        ldr     r3, [r0, #4]
        bic     r1, r1, #0xff000000
        add     r0, r0, r3
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L638348
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        adds    r0, r0, r1
        beq     L638348
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        nop
        beq     L638350
        b       L638344
        mov     r3, #3
        cmp     r3, r1, lsr #24
        bne     L638348
        ldr     r3, [r0, #0x14]
        bic     r1, r1, #0xff000000
        add     r0, r0, r3
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L638348
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        adds    r0, r0, r1
        beq     L638348
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #0xc
        bl      Fn_639d20
        cmp     r0, #0
        nop
        beq     L638350
        b       L638344
        mov     r3, #5
        cmp     r3, r1, lsr #24
        bne     L638348
        ldr     r3, [r0, #0x1c]
        bic     r1, r1, #0xff000000
        add     r0, r0, r3
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L638348
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        adds    r0, r0, r1
        beq     L638348
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #8
        bl      Fn_639d20
        cmp     r0, #0
        nop
        beq     L638350
        b       L638344
        mov     r3, #2
        cmp     r3, r1, lsr #24
        bne     L638348
        ldr     r3, [r0, #0xc]
        bic     r1, r1, #0xff000000
        add     r0, r0, r3
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L638348
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        adds    r0, r0, r1
        beq     L638348
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #0x18
        bl      Fn_639d20
        cmp     r0, #0
        nop
        beq     L638350
        b       L638344
        mov     r3, #6
        cmp     r3, r1, lsr #24
        bne     L638348
        ldr     r3, [r0, #0x24]
        bic     r1, r1, #0xff000000
        add     r0, r0, r3
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L638348
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        adds    r0, r0, r1
        beq     L638348
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        nop
        beq     L638350
        b       L638344
        mov     r3, #4
        cmp     r3, r1, lsr #24
        bne     L638348
        ldr     r3, [r0, #0x2c]
        bic     r1, r1, #0xff000000
        add     r0, r0, r3
        ldr     r3, [r0]
        cmp     r3, r1
        bls     L638348
        add     r1, r0, r1, lsl #3
        ldr     r1, [r1, #8]
        adds    r0, r0, r1
        beq     L638348
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        nop
        beq     L638350
L638344:
        ldr     r2, [sp]
L638348:
        mov     r0, r2
        pop     {r3, r4, r5, pc}
L638350:
        mov     r2, r4
        b       L638348
        .size   A_638118, . - A_638118

@ FUN_0063849c
        .global A_63849c
        .type   A_63849c, %function
A_63849c:
        ldrh    r1, [r0, #4]
        sub     r2, r1, #0x100
        subs    r2, r2, #1
        ldreq   r1, [r0, #8]
        movne   r0, #0
        addeq   r0, r0, r1
        bx      lr
        .size   A_63849c, . - A_63849c

@ FUN_006384b8
        .global A_6384b8
        .type   A_6384b8, %function
A_6384b8:
        ldr     r1, [r0, #0x1c]
        cmn     r1, #1
        beq     L6384d8
        ldrh    r2, [r0, #0x18]
        sub     r3, r2, #0x2000
        subs    r3, r3, #0x210
        addeq   r0, r0, r1
        beq     L6384dc
L6384d8:
        mov     r0, #0
L6384dc:
        bx      lr
        .size   A_6384b8, . - A_6384b8

@ FUN_00638714
        .global A_638714
        .type   A_638714, %function
A_638714:
        push    {r3, lr}
        mov     r2, #2
        mov     r1, sp
        add     r0, r0, #0x18
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        pop     {r3, pc}
        .size   A_638714, . - A_638714

@ FUN_00638734
        .global A_638734
        .type   A_638734, %function
A_638734:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #0x18
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        pop     {r3, pc}
        .size   A_638734, . - A_638734

@ FUN_00638754
        .global A_638754
        .type   A_638754, %function
A_638754:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #0x18
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #1
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_638754, . - A_638754

@ FUN_0063877c
        .global A_63877c
        .type   A_63877c, %function
A_63877c:
        ldrh    r1, [r0, #4]
        sub     r2, r1, #0x100
        subs    r2, r2, #1
        ldreq   r1, [r0, #8]
        movne   r0, #0
        addeq   r0, r0, r1
        bx      lr
        .size   A_63877c, . - A_63877c

@ FUN_00638798
        .global A_638798
        .type   A_638798, %function
A_638798:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #0x18
        bl      Fn_639d20
        cmp     r0, #0
        beq     L6387c8
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
        cmp     r0, #1
        movne   r0, #0
L6387c8:
        pop     {r3, pc}
        .size   A_638798, . - A_638798

@ FUN_0063899c
        .global A_63899c
        .type   A_63899c, %function
A_63899c:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r2, #8
        mov     r1, sp
        add     r0, r0, #0x14
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        addne   r0, r0, r4
        pop     {r3, r4, r5, pc}
        .size   A_63899c, . - A_63899c

@ FUN_00638a48
        .global A_638a48
        .type   A_638a48, %function
A_638a48:
        push    {r4, r5}
        ldrh    ip, [r0, #0x10]
        add     r3, r0, #0x14
        mov     r5, r0
        mov     r0, #0
        cmp     ip, #0
        mov     r2, #0x5000
        mov     r1, r0
        ble     L638a98
L638a6c:
        add     r4, r1, r1, lsl #1
        add     r4, r3, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, r2
        bne     L638aa0
        add     r1, r1, r1, lsl #1
        adds    r1, r3, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r0, r1, r5
        beq     L638a98
L638a98:
        pop     {r4, r5}
        bx      lr
L638aa0:
        add     r1, r1, #1
        cmp     ip, r1
        bgt     L638a6c
        pop     {r4, r5}
        bx      lr
        .size   A_638a48, . - A_638a48

@ FUN_00638ab4
        .global A_638ab4
        .type   A_638ab4, %function
A_638ab4:
        push    {r4, r5}
        ldrh    r3, [r0, #0x10]
        ldr     ip, L638b18
        mov     r5, #0
        cmp     r3, #0
        add     r2, r0, #0x14
        mov     r1, r5
        ble     L638afc
L638ad4:
        add     r4, r1, r1, lsl #1
        add     r4, r2, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, ip
        bne     L638b08
        add     r1, r1, r1, lsl #1
        adds    r1, r2, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r5, r1, r0
L638afc:
        mov     r0, r5
        pop     {r4, r5}
        bx      lr
L638b08:
        add     r1, r1, #1
        cmp     r3, r1
        bgt     L638ad4
        b       L638afc
L638b18:
        .word   0x00005001
        .size   A_638ab4, . - A_638ab4

@ FUN_00638b1c
        .global A_638b1c
        .type   A_638b1c, %function
A_638b1c:
        ldr     r0, [r0, #8]
        mov     r0, r0
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r7, r2
        mov     r8, r1
        mov     r0, r1
        bl      Fn_200e60
        mov     sb, r0
        ldr     r0, [r6]
        mov     r4, #0
        cmp     r0, #0
        ble     L638b94
L638b50:
        cmp     r0, r4
        movls   r5, #0
        bls     L638b68
        add     r0, r6, r4, lsl #3
        ldr     r1, [r0, #8]
        add     r5, r1, r6
L638b68:
        mov     r2, sb
        add     r1, r5, #0xc
        mov     r0, r8
        bl      Fn_0315cc
        cmp     r0, #0
        nop
        beq     L638b9c
        ldr     r0, [r6]
        add     r4, r4, #1
        cmp     r0, r4
        bgt     L638b50
L638b94:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L638b9c:
        ldr     r0, [r5, #4]
        str     r0, [r7]
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   A_638b1c, . - A_638b1c

@ FUN_00638bac
        .global A_638bac
        .type   A_638bac, %function
A_638bac:
        vldr    s2, L638c04
        vldr    s1, L638c08
        vsub.f32 s2, s2, s0
        vmul.f32 s0, s2, s0
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        cmp     r0, #0x79
        movgt   r0, #0x79
        bgt     L638bdc
        cmp     r0, #0
        movlt   r0, #0
L638bdc:
        ldr     r1, L638c0c
        add     r0, r0, r0, lsl #2
        add     r0, r1, r0, lsl #1
        ldr     r1, [r0]
        str     r1, [r2]
        ldr     r1, [r0, #4]
        str     r1, [r2, #4]
        ldrh    r0, [r0, #8]
        strh    r0, [r2, #8]
        bx      lr
L638c04:
        .word   0x40000000
L638c08:
        .word   0x42f20000
L638c0c:
        .word   0x007fef76
        .size   A_638bac, . - A_638bac

@ FUN_00638c10
        .global A_638c10
        .type   A_638c10, %function
A_638c10:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r4, r1
        add     r1, sp, #0x28
        mov     ip, r3
        ldm     r1, {r6, r7, r8}
        add     r1, r0, #0x100
        ldrb    r3, [r0, #0x190]
        cmp     r3, #0
        beq     L638d1c
        cmp     r2, #0x7c
        blo     L638d1c
        cmp     r4, #0
        moveq   r5, #0
        beq     L638c74
        ldrsb   r1, [r1, #0x91]
        ldr     r2, L638d28
        str     r0, [sp, #8]
        mov     r3, #0
        stm     sp, {r1, r2}
        mov     r2, r3
        mov     r1, ip
        mov     r0, r4
        bl      Fn_5579e4
        mov     r5, r0
L638c74:
        ldrb    r0, [r5, #0x50]
        cmp     r0, #0
        beq     L638d14
        cmp     r8, #0
        beq     L638c9c
        cmp     r8, #1
        beq     L638cb4
        cmp     r8, #2
        beq     L638ccc
        b       L638d1c
L638c9c:
        mvn     r1, #0xf
        mov     r0, r5
        bl      Fn_5577e4
        nop
        nop
        b       L638cd8
L638cb4:
        mvn     r1, #7
        mov     r0, r5
        bl      Fn_5577e4
        nop
        nop
        b       L638cd8
L638ccc:
        mov     r1, #8
        mov     r0, r5
        bl      Fn_5577e4
L638cd8:
        cmp     r0, #0
        beq     L638d1c
        adds    r0, r4, #0x54
        moveq   r4, #0
        beq     L638d10
        mov     r1, r5
        bl      Fn_5595dc
        movs    r4, r0
        cmpne   r6, #0
        cmpne   r7, #0
        beq     L638d10
        mov     r2, r7
        mov     r1, r6
        bl      Fn_5593f4
L638d10:
        mov     r0, r4
L638d14:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L638d1c:
        add     sp, sp, #0x10
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L638d28:
        .word   0x00659860
        .size   A_638c10, . - A_638c10

@ FUN_00638d54
        .global A_638d54
        .type   A_638d54, %function
A_638d54:
        push    {r4, r5, lr}
        sub     sp, sp, #0x1c
        ldr     r3, [r0, #4]
        mov     r4, r0
        cmp     r3, #0
        beq     L638d9c
        lsr     ip, r1, #0x18
        cmp     ip, #1
        mov     r5, #0
        beq     L638da8
        cmp     ip, #3
        mvn     r0, #0
        beq     L638dc0
        cmp     ip, #5
        mov     r2, #0
        beq     L638ddc
        cmp     ip, #6
        beq     L638dfc
L638d9c:
        add     sp, sp, #0x1c
        mov     r0, #0
        pop     {r4, r5, pc}
L638da8:
        mov     r2, sp
        mov     r0, r3
        bl      Fn_636828
        nop
        nop
        b       L638e0c
L638dc0:
        str     r0, [sp]
        mov     r2, sp
        mov     r0, r3
        bl      Fn_636780
        nop
        nop
        b       L638e0c
L638ddc:
        strb    r2, [sp, #8]
        str     r0, [sp]
        ldr     r0, [r4, #4]
        mov     r2, sp
        bl      Fn_636ad0
        nop
        nop
        b       L638e0c
L638dfc:
        stm     sp, {r0, r2}
        ldr     r0, [r4, #4]
        mov     r2, sp
        bl      Fn_6367d4
L638e0c:
        ldr     r1, [sp]
        cmn     r1, #1
        beq     L638e2c
        ldr     r0, [r4]
        ldr     r2, [r0, #0x10]
        mov     r0, r4
        blx     r2
        mov     r5, r0
L638e2c:
        add     sp, sp, #0x1c
        mov     r0, r5
        pop     {r4, r5, pc}
        .size   A_638d54, . - A_638d54

@ FUN_00638e38
        .global A_638e38
        .type   A_638e38, %function
A_638e38:
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L638e50
        ldr     r2, [r0]
        ldr     r2, [r2, #8]
        bx      r2
L638e50:
        bx      lr
        .size   A_638e38, . - A_638e38

@ FUN_00638e54
        .global A_638e54
        .type   A_638e54, %function
A_638e54:
        vldr    s2, L638eac
        vldr    s1, L638eb0
        vsub.f32 s2, s2, s0
        vmul.f32 s0, s2, s0
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        cmp     r0, #0x5c
        movgt   r0, #0x5c
        bgt     L638e84
        cmp     r0, #0
        movlt   r0, #0
L638e84:
        ldr     r1, L638eb4
        add     r0, r0, r0, lsl #2
        add     r0, r1, r0, lsl #1
        ldr     r1, [r0]
        str     r1, [r2]
        ldr     r1, [r0, #4]
        str     r1, [r2, #4]
        ldrh    r0, [r0, #8]
        strh    r0, [r2, #8]
        bx      lr
L638eac:
        .word   0x40000000
L638eb0:
        .word   0x42b80000
L638eb4:
        .word   0x007ff43a
        .size   A_638e54, . - A_638e54

@ FUN_00638eb8
        .global A_638eb8
        .type   A_638eb8, %function
A_638eb8:
        vldr    s2, L638f10
        vldr    s1, L638f14
        vsub.f32 s2, s2, s0
        vmul.f32 s0, s2, s0
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        cmp     r0, #0x5c
        movgt   r0, #0x5c
        bgt     L638ee8
        cmp     r0, #0
        movlt   r0, #0
L638ee8:
        ldr     r1, L638f18
        add     r0, r0, r0, lsl #2
        add     r0, r1, r0, lsl #1
        ldr     r1, [r0]
        str     r1, [r2]
        ldr     r1, [r0, #4]
        str     r1, [r2, #4]
        ldrh    r0, [r0, #8]
        strh    r0, [r2, #8]
        bx      lr
L638f10:
        .word   0x40000000
L638f14:
        .word   0x42b80000
L638f18:
        .word   0x007ff7dc
        .size   A_638eb8, . - A_638eb8

@ FUN_00638fd8
        .global A_638fd8
        .type   A_638fd8, %function
A_638fd8:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        mov     r4, r1
        ldr     r0, [r0, #4]
        mov     r1, r2
        bl      Fn_637210
        bl      Fn_637280
        mov     r6, r0
        bl      Fn_637470
        vstr    s0, [r4]
        mov     r0, r6
        bl      Fn_63744c
        strb    r0, [r4, #9]
        mov     r0, r6
        bl      Fn_637424
        strb    r0, [r4, #0xa]
        mov     r3, #2
        add     r2, r4, #0xc
        add     r1, r4, #0xb
        mov     r0, r6
        bl      Fn_6372b0
        mov     r0, r6
        bl      Fn_63739c
        mov     r1, r0
        add     r0, r4, #4
        bl      Fn_646564
        ldr     r0, [r5]
        ldr     r1, L639094
        ldr     r0, [r0, #8]
        cmp     r0, r1
        blo     L639080
        mov     r0, r6
        bl      Fn_63728c
        strb    r0, [r4, #0xe]
        mov     r0, r6
        bl      Fn_6373d4
        strb    r0, [r4, #0xf]
        mov     r0, r6
        bl      Fn_6373fc
L639074:
        strb    r0, [r4, #0x10]
        mov     r0, #1
        pop     {r4, r5, r6, pc}
L639080:
        mov     r1, #0x40
        mov     r0, #0
        strb    r1, [r4, #0xe]
        strb    r0, [r4, #0xf]
        b       L639074
L639094:
        .word   0x01000100
        .size   A_638fd8, . - A_638fd8

@ FUN_0063912c
        .global A_63912c
        .type   A_63912c, %function
A_63912c:
        ldr     r2, [r0, #4]
        cmp     r2, #0
        moveq   r0, #0
        bxeq    lr
        add     r0, r0, #4
        push    {r4, lr}
        bl      Fn_6391c8
        mov     r0, #1
        pop     {r4, pc}
        .size   A_63912c, . - A_63912c

@ FUN_00639174
        .global A_639174
        .type   A_639174, %function
A_639174:
        ldr     ip, [r0, #4]
        cmp     ip, #0
        moveq   r0, #0
        bxeq    lr
        add     r0, r0, #4
        push    {r4, lr}
        bl      Fn_6392bc
        mov     r0, #1
        pop     {r4, pc}
        .size   A_639174, . - A_639174

@ FUN_00639198
        .global A_639198
        .type   A_639198, %function
A_639198:
        ldr     r0, [r1]
        ldr     r2, L6391c4
        cmp     r0, r2
        movne   r0, #0
        bne     L6391c0
        ldr     r1, [r1, #8]
        mov     r0, #0
        add     r1, r1, #0xfe000000
        cmp     r1, #0x20000
        movls   r0, #1
L6391c0:
        bx      lr
L6391c4:
        .word   0x4d545343
        .size   A_639198, . - A_639198

@ FUN_006391c8
        .global A_6391c8
        .type   A_6391c8, %function
A_6391c8:
        push    {r4, lr}
        ldr     r0, [r0, #4]
        mov     r4, r1
        bl      Fn_637b4c
        vldmia  r0, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r0, r0, #0x20
        vstmia  r4, {s0, s1, s2, s3, s4, s5, s6, s7}
        add     r4, r4, #0x20
        vldmia  r0, {s0, s1, s2, s3, s4, s5}
        mov     r0, #1
        vstmia  r4, {s0, s1, s2, s3, s4, s5}
        pop     {r4, pc}
        .size   A_6391c8, . - A_6391c8

@ FUN_006391f8
        .global A_6391f8
        .type   A_6391f8, %function
A_6391f8:
        push    {r4, r5, r6, lr}
        mov     r4, r1
        ldr     r0, [r0, #4]
        mov     r5, r2
        bl      Fn_637b30
        cmp     r0, #0
        beq     L639298
        ldr     r1, [r0]
        cmp     r1, r5
        movle   r0, #0
        ble     L639298
        mov     r1, r5
        bl      Fn_637b80
        ldrb    r1, [r0]
        strb    r1, [r4]
        ldrb    r1, [r0, #1]
        strb    r1, [r4, #1]
        ldrb    r1, [r0, #2]
        strb    r1, [r4, #2]
        ldrb    r1, [r0, #3]
        strb    r1, [r4, #3]
        ldr     r1, [r0, #8]
        ldr     r1, [r1, r0]
        and     r2, r1, #0xff
        cmp     r2, #2
        strb    r2, [r4, #4]
        movhi   r2, #2
        cmpls   r2, #0
        mov     r1, #0
        bls     L639294
L639270:
        ldr     r3, [r0, #8]
        add     ip, r4, r1
        add     r3, r3, r0
        add     r3, r3, r1
        add     r1, r1, #1
        ldrb    r3, [r3, #4]
        cmp     r2, r1
        strb    r3, [ip, #5]
        bhi     L639270
L639294:
        mov     r0, #1
L639298:
        pop     {r4, r5, r6, pc}
        .size   A_6391f8, . - A_6391f8

@ FUN_006392bc
        .global A_6392bc
        .type   A_6392bc, %function
A_6392bc:
        push    {r4, r5, r6, lr}
        mov     r6, r1
        ldr     r0, [r0, #4]
        mov     r5, r2
        mov     r4, r3
        bl      Fn_637b64
        mov     r1, r4
        bl      Fn_637bb4
        bl      Fn_637b18
        movs    r4, r0
        beq     L639308
        mov     r1, r0
        mov     r2, #0x26
        mov     r0, r6
        bl      Fn_202b20
        add     r1, r4, #0x26
        mov     r0, r5
        bl      Fn_646578
        mov     r0, #1
L639308:
        pop     {r4, r5, r6, pc}
        .size   A_6392bc, . - A_6392bc

@ FUN_006393c8
        .global A_6393c8
        .type   A_6393c8, %function
A_6393c8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #0xc]
        mov     r5, r1
        cmp     r0, #0
        beq     L639404
        ldr     r0, [r4]
        bl      Fn_637c48
        mov     r1, r0
        ldr     r0, [r4, #4]
        add     r2, r5, r5, lsl #1
        add     r0, r0, r2, lsl #2
        ldr     r0, [r0, #8]
        add     r0, r0, r1
        add     r0, r0, #8
L639404:
        pop     {r4, r5, r6, pc}
        .size   A_6393c8, . - A_6393c8

@ FUN_00639424
        .global A_639424
        .type   A_639424, %function
A_639424:
        ldr     r0, [r0, #4]
        mov     r0, r0
        push    {r4, lr}
        mov     r4, r0
        ldr     r0, [r0, #0x38]
        cmp     r0, #0
        beq     L639464
        ldr     r0, [r4, #0x3c]
        bl      Fn_638118
        cmn     r0, #1
        mov     r1, r0
        moveq   r0, #0
        beq     L639464
        ldr     r0, [r4, #0x38]
        pop     {r4, lr}
        b       Fn_6385c8
L639464:
        pop     {r4, pc}
        .size   A_639424, . - A_639424

@ FUN_006396a4
        .global A_6396a4
        .type   A_6396a4, %function
A_6396a4:
        push    {r4, lr}
        ldr     r0, [r0, #0x3c]
        mov     r4, r2
        bl      Fn_637f14
        cmp     r0, #0
        beq     L6396ec
        bl      Fn_63899c
        cmp     r0, #0
        beq     L6396ec
        ldr     r1, [r0]
        str     r1, [r4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #4]
        ldrb    r1, [r0, #8]
        strb    r1, [r4, #8]
        ldrb    r0, [r0, #9]
        strb    r0, [r4, #9]
        mov     r0, #1
L6396ec:
        pop     {r4, pc}
        .size   A_6396a4, . - A_6396a4

@ FUN_006397b8
        .global A_6397b8
        .type   A_6397b8, %function
A_6397b8:
        ldr     r0, [r0, #4]
        mov     r0, r0
        push    {r4, lr}
        ldr     r0, [r0, #0x3c]
        bl      Fn_63840c
        ldr     r0, [r0]
        pop     {r4, pc}
        .size   A_6397b8, . - A_6397b8

@ FUN_006397d4
        .global A_6397d4
        .type   A_6397d4, %function
A_6397d4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r5, r0
        mov     r4, r2
        ldr     r0, [r0, #0x3c]
        bl      Fn_637f14
        movs    r6, r0
        beq     L639a34
        bl      Fn_638900
        cmp     r0, #2
        movne   r0, #0
        bne     L639a34
        ldr     r0, [r5, #8]
        ldr     r8, L639a38
        mov     sb, #0x7f
        mov     r7, #0
        cmp     r0, r8
        mov     r0, r6
        blo     L63996c
        bl      Fn_638a24
        mov     r6, r0
        ldrh    r0, [r0]
        strh    r0, [r4]
        ldrh    r0, [r6, #2]
        strh    r0, [r4, #2]
        mov     r0, r6
        bl      Fn_6384b8
        cmp     r0, #0
        ldrne   r0, [r0]
        moveq   r0, #1
        andne   r0, r0, #0xff
        strb    r0, [r4, #0x3f]
        ldr     r0, [r6, #0xc]
        str     r0, [r4, #0x38]
        mov     r0, r6
        bl      Fn_638490
        ldr     r0, [r0]
        lsl     r1, r0, #0x10
        lsl     r0, r0, #8
        lsr     r1, r1, #0x18
        lsr     r0, r0, #0x18
        strb    r1, [r4, #0x3d]
        strb    r0, [r4, #0x3e]
        mov     r0, r6
        bl      Fn_63849c
L639884:
        movs    r6, r0
        beq     L639a30
        ldr     fp, [r6]
        ldr     sl, L639a3c
        mov     r3, #0
L639898:
        cmp     r3, fp
        bhs     L639a30
        add     r0, r3, r3, lsl #2
        add     r0, r0, r3, lsl #3
        add     r0, r0, r4
        add     r1, r0, #4
        ldr     r0, [r6]
        cmp     r3, r0
        bhs     L6398d4
        add     r0, r6, r3, lsl #3
        ldrh    ip, [r0, #4]
        cmp     ip, sl
        ldreq   r2, [r0, #8]
        addeq   r0, r2, r6
        beq     L6398d8
L6398d4:
        mov     r0, #0
L6398d8:
        ldrb    r2, [r0]
        strb    r2, [r1]
        ldrb    r2, [r0, #1]
        strb    r2, [r1, #1]
        ldrb    r2, [r0, #2]
        strb    r2, [r1, #2]
        ldrb    r2, [r0, #3]
        strb    r2, [r1, #3]
        ldr     r2, [r0, #8]
        ldr     r2, [r2, r0]
        strb    r2, [r1, #0xa]
        ldr     r2, [r5, #8]
        cmp     r2, r8
        blo     L6399bc
        ldr     r2, [r0, #0x10]
        ldrb    r2, [r0, r2]
        strb    r2, [r1, #4]
        mov     r2, #0
L639920:
        ldr     ip, [r0, #0x10]
        add     sb, r1, r2
        add     ip, ip, r0
        add     ip, ip, r2
        add     r2, r2, #1
        ldrb    ip, [ip, #1]
        cmp     r2, #2
        strb    ip, [sb, #5]
        blo     L639920
L639944:
        ldr     r2, [r5, #8]
        cmp     r2, r8
        blo     L6399d0
        ldrb    r2, [r0, #0x14]
        strb    r2, [r1, #7]
        ldrb    r2, [r0, #0x15]
        strb    r2, [r1, #8]
        ldrb    r2, [r0, #0x16]
        strb    r2, [r1, #9]
        b       L6399e0
L63996c:
        nop
        bl      Fn_638a3c
        mov     r6, r0
        ldrh    r0, [r0]
        strh    r0, [r4]
        ldrh    r0, [r6, #2]
        strh    r0, [r4, #2]
        mov     r0, r6
        bl      Fn_638754
        vldr    s0, L639a40
        strb    r0, [r4, #0x3f]
        vstr    s0, [r4, #0x38]
        strb    sb, [r4, #0x3c]
        strb    r7, [r4, #0x3d]
        mov     r0, r6
        strb    r7, [r4, #0x3e]
        bl      Fn_63877c
        nop
        nop
        b       L639884
L6399bc:
        mov     r2, #0x7f
        strb    r2, [r1, #4]
        strb    r7, [r1, #5]
        strb    r7, [r1, #6]
        b       L639944
L6399d0:
        mov     r2, #0x40
        strb    r2, [r1, #7]
        strb    r7, [r1, #8]
        strb    r7, [r1, #9]
L6399e0:
        ldrb    ip, [r1, #0xa]
        cmp     ip, #2
        movgt   ip, #2
        movgt   r2, #0
        bgt     L639a00
        cmp     ip, #0
        mov     r2, #0
        bls     L639a24
L639a00:
        ldr     sb, [r0, #8]
        add     lr, r1, r2
        add     sb, sb, r0
        add     sb, sb, r2
        add     r2, r2, #1
        ldrb    sb, [sb, #4]
        cmp     ip, r2
        strb    sb, [lr, #0xb]
        bhi     L639a00
L639a24:
        add     r3, r3, #1
        cmp     r3, #4
        blo     L639898
L639a30:
        mov     r0, #1
L639a34:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L639a38:
        .word   0x02030100
L639a3c:
        .word   0x0000220e
L639a40:
        .word   0x3f800000
        .size   A_6397d4, . - A_6397d4

@ FUN_00639a80
        .global A_639a80
        .type   A_639a80, %function
A_639a80:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r0, [r0, #0x3c]
        mov     r4, r2
        bl      Fn_637f14
        movs    r6, r0
        beq     L639afc
        bl      Fn_638900
        cmp     r0, #2
        movne   r0, #0
        bne     L639afc
        ldr     r0, [r5, #8]
        ldr     r1, L639b38
        cmp     r0, r1
        mov     r0, r6
        blo     L639b00
        bl      Fn_638a24
        bl      Fn_6384b8
        cmp     r0, #0
        beq     L639afc
        ldr     r1, [r0]
        lsl     r1, r1, #0x10
        lsr     r1, r1, #0x18
        cmp     r1, #1
        movne   r1, #0
        strb    r1, [r4]
        ldr     r1, [r0, #4]
        str     r1, [r4, #4]
        ldr     r0, [r0, #8]
L639af4:
        str     r0, [r4, #8]
        mov     r0, #1
L639afc:
        pop     {r4, r5, r6, pc}
L639b00:
        nop
        bl      Fn_638a3c
        mov     r5, r0
        nop
        bl      Fn_638798
        strb    r0, [r4]
        mov     r0, r5
        bl      Fn_638734
        str     r0, [r4, #4]
        mov     r0, r5
        bl      Fn_638714
        nop
        nop
        b       L639af4
L639b38:
        .word   0x02030100
        .size   A_639a80, . - A_639a80

@ FUN_00639e88
        .global A_639e88
        .type   A_639e88, %function
A_639e88:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x9c
        mov     r6, #0
        strb    r6, [sp, #0x84]
        strb    r6, [sp, #0x85]
        strb    r6, [sp, #0x86]
        strb    r6, [sp, #0x87]
        strb    r6, [sp, #0x88]
        ldr     r0, [r3, #8]
        mov     r7, r1
        mov     r5, r3
        str     r0, [sp]
        mov     r4, r2
        add     r1, sp, #0x78
        mov     r0, r7
        ldrd    r2, r3, [r5]
        bl      Fn_637650
        cmp     r0, #0
        beq     L639ff8
        ldr     r1, [sp, #0x7c]
        mov     r0, r4
        bl      Fn_63930c
        mov     r1, r0
        mov     r2, #0
        add     r0, sp, #0x90
        bl      Fn_5592b4
        mov     r2, #0
        add     r1, sp, #4
        add     r0, sp, #0x90
        bl      Fn_6377dc
        cmp     r0, #0
        beq     L639ff8
        ldr     r0, [sp, #8]
        mov     r1, #2
        cmp     r0, #2
        movgt   r0, r1
        add     r1, r5, #0x14
        ldm     r1, {r1, r2, r3}
        bl      Fn_5659a0
        movs    r4, r0
        beq     L639ff8
        ldr     r0, [r5, #4]
        ldrb    r1, [sp, #0x89]
        vldr    s1, L63a000
        strb    r0, [r4, #0x192]
        strb    r1, [r4, #0x193]
        ldr     r0, [r5, #8]
        ldrb    r1, [sp, #0x8a]
        mul     r0, r0, r0
        mul     r0, r1, r0
        vmov    s0, r0
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vstr    s0, [r4, #0x16c]
        ldr     r0, [sp, #0x80]
        str     r0, [r4, #0x178]
        ldrb    r1, [sp, #0x84]
        add     r0, r4, #0x90
        bl      Fn_5565fc
        ldrb    r1, [sp, #0x87]
        add     r0, r4, #0x90
        bl      Fn_556564
        ldrb    r1, [sp, #0x85]
        add     r0, r4, #0x90
        bl      Fn_556584
        ldrb    r1, [sp, #0x86]
        add     r0, r4, #0x90
        strb    r1, [r0, #0x18]
        ldrb    r1, [sp, #0x88]
        add     r0, r4, #0x90
        bl      Fn_5563ac
        ldrb    r0, [sp, #0x8b]
        ldr     r1, [r5, #0x10]
        vldr    s1, L63a004
        mov     r3, #0
        add     r0, r0, r1
        sub     r0, r0, #0x40
        vmov    s0, r0
        add     r1, sp, #4
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vstr    s0, [r4, #0x170]
        ldrb    r0, [sp, #0x8d]
        strb    r0, [r4, #0x194]
        ldrb    r0, [sp, #0x8c]
        strb    r0, [r4, #0x135]
        ldrb    r0, [sp, #0x8e]
        strb    r0, [r4, #0x195]
        ldr     r2, [r5, #0xc]
        mov     r0, r4
        bl      Fn_565d14
        mov     r0, r4
L639ff8:
        add     sp, sp, #0x9c
        pop     {r4, r5, r6, r7, pc}
L63a000:
        .word   0x35030c28
L63a004:
        .word   0x3c820821
        .size   A_639e88, . - A_639e88

@ FUN_0063a008
        .global A_63a008
        .type   A_63a008, %function
A_63a008:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r6, r3
        cmp     r2, #0xff
        mov     sb, r1
        add     r4, r1, #0x1c
        and     r5, r3, #0xff
        vpush   {d8, d9}
        sub     sp, sp, #4
        add     sl, r3, r6, lsl #2
        ldr     fp, [r1, #0x12c]
        ldr     r8, [sp, #0x38]
        vldr    s16, L63a300
        vldr    s17, L63a304
        vldr    s18, L63a308
        vldr    s19, L63a30c
        add     r0, fp, #0x74
        bhi     L63a838
        cmp     r2, #0xcc
        mov     r7, #0
        strbeq  r5, [r4, #0xd0]
        beq     L63a0b8
        bgt     L63a174
        cmp     r2, #0xbf
        sxtb    r1, r6
        beq     L63a444
        bge     L63a134
        cmp     r2, #0xb2
        beq     L63a5a8
        bge     L63a0c4
        cmp     r2, #0x8a
        beq     L63a720
        bgt     L63a0a4
        cmp     r2, #0x81
        beq     L63a274
        cmp     r2, #0x88
        beq     L63a6c0
        cmp     r2, #0x89
        bne     L63a0b8
        b       L63a708
L63a0a4:
        cmp     r2, #0xb0
        strbeq  r5, [r0, #1]
        beq     L63a0b8
        cmp     r2, #0xb1
        strheq  r5, [r4, #0xe0]
L63a0b8:
        add     sp, sp, #4
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L63a0c4:
        cmp     r2, #0xb6
        strbeq  r5, [r4, #0x67]
        beq     L63a0b8
        bgt     L63a114
        cmp     r2, #0xb3
        strbeq  r5, [r4, #0xd4]
        beq     L63a0b8
        cmp     r2, #0xb4
        strbeq  r1, [r4, #0xe2]
        beq     L63a0b8
        cmp     r2, #0xb5
        bne     L63a0b8
        vmov    s0, r3
        vldr    s1, L63a310
        vcvt.f32.s32 s0, s0
        vmul.f32 s0, s0, s1
        vstr    s0, [r4, #0xec]
        add     sp, sp, #4
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L63a114:
        cmp     r2, #0xbd
        strbeq  r5, [r4, #0x9e]
        beq     L63a0b8
        cmp     r2, #0xbe
        strbeq  r5, [r4, #0x9d]
        add     sp, sp, #4
        vpop    {d8, d9}
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L63a134:
        sub     r2, r2, #0xc0
        cmp     r2, #0xc
        ldrlo   pc, [pc, r2, lsl #2]
        b       L63a0b8
L63a144:
        .word   0x0073a39c
L63a148:
        .word   0x0073a2a4
L63a14c:
        .word   0x0073a318
L63a150:
        .word   0x0073a35c
L63a154:
        .word   0x0073a36c
L63a158:
        .word   0x0073a38c
L63a15c:
        .word   0x0073a418
L63a160:
        .word   0x0073a428
L63a164:
        .word   0x0073a594
L63a168:
        .word   0x0073a5e0
L63a16c:
        .word   0x0073a470
L63a170:
        .word   0x0073a48c
L63a174:
        .word   0xe24210cd
        .word   0xe3510031
        .word   0x379ff101
        .word   0xeaffffcc
        .word   0x0073a4d4
        .word   0x0073a600
        .word   0x0073a460
        .word   0x0073a514
        .word   0x0073a524
        .word   0x0073a534
        .word   0x0073a544
        .word   0x0073a7a4
        .word   0x0073a2e0
        .word   0x0073a670
        .word   0x0073a3d4
        .word   0x0073a61c
        .word   0x0073a640
        .word   0x0073a650
        .word   0x0073a660
        .word   0x0073a3c0
        .word   0x0073a28c
        .word   0x0073a0b8
        .word   0x0073a578
        .word   0x0073a4e4
        .word   0x0073a248
        .word   0x0073a0b8
        .word   0x0073a4f4
        .word   0x0073a4a8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a554
        .word   0x0073a7e8
        .word   0x0073a74c
        .word   0xe59f10c4
        .word   0xe3a02000
        .word   0xe1560001
        .word   0xc1a06001
        .word   0xca000001
        .word   0xe3560000
        .word   0xb1a06002
        .word   0xe1c060b2
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
L63a274:
        .word   0xe3560801
        .word   0xb6ff0073
        .word   0xb5840068
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe28dd004
        .word   0xe1a00009
        .word   0xecbd8b04
        .word   0xe20310ff
        .word   0xe8bd4ff0
        .word   0xeafc9b11
        .word   0xe2844070
        .word   0xe6bf6078
        .word   0xe1d400f4
        .word   0xe1d410f2
        .word   0xe20390ff
        .word   0xe1500001
        .word   0xaa00001c
        .word   0xea00001d
        .word   0xe5c40000
        .word   0xe1c470b4
        .word   0xe5c49001
        .word   0xe1c460b2
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe2844076
        .word   0xe6bf6078
        .word   0xe1d400f4
        .word   0xe1d410f2
        .word   0xe20390ff
        .word   0xe1500001
        .word   0xaa00000d
        .word   0xea00000e
L63a300:
        .word   0x3c000000
L63a304:
        .word   0x3ec80000
L63a308:
        .word   0x00000000
L63a30c:
        .word   0x42c80000
L63a310:
        .word   0x3c010204
        .word   0x000003ff
        .word   0xe2804004
        .word   0xe1d000f8
        .word   0xe1d410f2
        .word   0xe6bf6078
        .word   0xe20390ff
        .word   0xe1500001
        .word   0xba000001
        .word   0xe5d40001
        .word   0xeaffffe1
        .word   0xe5d42001
        .word   0xe5d45000
        .word   0xe0422005
        .word   0xe0000092
        .word   0xebef1346
        .word   0xe0800005
        .word   0xe20000ff
        .word   0xeaffffd9
        .word   0xe5c410d8
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe2844088
        .word   0xe6bf6078
        .word   0xe1d400f4
        .word   0xe1d410f2
        .word   0xe6af9073
        .word   0xe1500001
        .word   0xaa000019
        .word   0xea00001a
        .word   0xe5c450d5
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe2430040
        .word   0xe284407c
        .word   0xe6af9070
        .word   0xe1d400f4
        .word   0xe1d410f2
        .word   0xe6bf6078
        .word   0xe1500001
        .word   0xaa00000c
        .word   0xea00000d
        .word   0xe2430040
        .word   0xe5c400d6
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe2844082
        .word   0xe6bf6078
        .word   0xe1d400f4
        .word   0xe1d410f2
        .word   0xe6af9073
        .word   0xe1500001
        .word   0xba000001
        .word   0xe1d400d1
        .word   0xeaffffb2
        .word   0xe1d420d1
        .word   0xe1d450d0
        .word   0xe0422005
        .word   0xe0000092
        .word   0xebef1317
        .word   0xe0800005
        .word   0xe6af0070
        .word   0xeaffffaa
        .word   0xe5c450d9
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe3530000
        .word   0x13a00001
        .word   0x03a00000
        .word   0xe5c40009
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
L63a444:
        .word   0xe3530000
        .word   0x13a00001
        .word   0x03a00000
        .word   0xe5c4005d
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450db
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a08
        .word   0xed840a24
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a28
        .word   0xed840a25
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe6bf0073
        .word   0xe3500000
        .word   0x0d849a25
        .word   0x0afffeff
        .word   0xee000a10
        .word   0xeeb80ac0
        .word   0xeec90a80
        .word   0xedc40a25
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c4509c
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe584a098
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee003a10
        .word   0xeddf0ab8
        .word   0xeeb80ac0
        .word   0xee200a20
        .word   0xed840a1b
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450dc
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450dd
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450de
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450df
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe3a000ff
        .word   0xe5c400dc
        .word   0xe5c400dd
        .word   0xe5c400de
        .word   0xe5c400df
        .word   0xe1c40eb0
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe3550040
        .word   0x23a00001
        .word   0x33a00000
        .word   0xe5c40066
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe3530000
        .word   0x13a00001
        .word   0x03a00000
        .word   0xe5c4000a
        .word   0xea000005
L63a5a8:
        .word   0xe3530000
        .word   0x13a00001
        .word   0x03a00000
        .word   0xe3500000
        .word   0xe5c4000b
        .word   0x0afffebd
        .word   0xe3e01000
        .word   0xe1a00009
        .word   0xebfc9824
        .word   0xe28dd004
        .word   0xe1a00009
        .word   0xecbd8b04
        .word   0xe8bd4ff0
        .word   0xeafc97ed
        .word   0xe5d400d8
        .word   0xe3a01001
        .word   0xe5c41065
        .word   0xe0800003
        .word   0xe5c400da
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe3530000
        .word   0x13a00001
        .word   0x03a00000
        .word   0xe5c40065
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe2430040
        .word   0xee000a10
        .word   0xeddf0a6d
        .word   0xeeb80ac0
        .word   0xee200a20
        .word   0xed840a3a
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450e4
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450e5
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450e3
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe59f016c
        .word   0xe5d00000
        .word   0xe3500000
        .word   0x0afffe8d
        .word   0xe3530020
        .word   0xe1a0000b
        .word   0xe1a01003
        .word   0xaa000003
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd4ff0
        .word   0xeafca94b
        .word   0xe3510030
        .word   0xaafffe83
        .word   0xe28dd004
        .word   0xe1a00009
        .word   0xecbd8b04
        .word   0xe2431020
        .word   0xe8bd4ff0
        .word   0xeafc97c2
L63a6c0:
        .word   0xe1a01003
        .word   0xe1a0000b
        .word   0xebfca93b
        .word   0xe1b05000
        .word   0xe320f000
        .word   0x0afffe77
        .word   0xe1550009
        .word   0x0afffe75
        .word   0xebfc991e
        .word   0xe5941000
        .word   0xe1a02008
        .word   0xe1a00005
        .word   0xebfc972d
        .word   0xe28dd004
        .word   0xe1a00005
        .word   0xecbd8b04
        .word   0xe8bd4ff0
        .word   0xeafc990e
L63a708:
        .word   0xe5940000
        .word   0xe0800003
        .word   0xe5840004
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
L63a720:
        .word   0xe5d4005c
        .word   0xe350000a
        .word   0x2afffe62
        .word   0xe5941004
        .word   0xe0840180
        .word   0xe5801010
        .word   0xe5c0700c
        .word   0xe5d4005c
        .word   0xe2800001
        .word   0xe5c4005c
        .word   0xeaffffee
        .word   0xe5d4005c
        .word   0xe3500000
        .word   0x0afffe57
        .word   0xe20000ff
        .word   0xe2400001
        .word   0xe20000ff
        .word   0xe5c4005c
        .word   0xe0841180
        .word   0xe5d1100c
        .word   0xe3510000
        .word   0x0a000004
        .word   0xe3500000
        .word   0x1afffff5
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe20000ff
        .word   0xe0840180
        .word   0xe290000c
        .word   0x15900004
        .word   0x0afffe45
        .word   0xeaffffda
        .word   0xe5d4005c
        .word   0xe350000a
        .word   0x2afffe41
        .word   0xe5942004
        .word   0xe0840180
        .word   0xe3a01001
        .word   0xe5802010
        .word   0xe5c0500d
        .word   0xe5c0100c
        .word   0xe5d4005c
        .word   0xe2800001
        .word   0xe5c4005c
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0x3c800000
        .word   0x008bb714
        .word   0xe5d4205c
        .word   0xe3520000
        .word   0x0afffe30
        .word   0xe0841182
        .word   0xe5f10004
        .word   0xe3500000
        .word   0x0afffe2c
        .word   0xe5d10001
        .word   0xe3500000
        .word   0x0a000003
        .word   0xe2400001
        .word   0xe21000ff
        .word   0x02420001
        .word   0x0affffeb
        .word   0xe5c10001
        .word   0xe5910004
        .word   0xe5840004
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
L63a838:
        .word   0xe3520801
        .word   0x2afffe1d
        .word   0xe20200ff
        .word   0xe58d0000
        .word   0xe20000f0
        .word   0xe3500080
        .word   0x13500090
        .word   0xe3a07000
        .word   0x0a00002a
        .word   0xe59d0000
        .word   0xe35000a3
        .word   0x0a0000df
        .word   0xca000036
        .word   0xe2400080
        .word   0xe3500023
        .word   0x379ff100
        .word   0xeafffe0e
        .word   0x0073aa34
        .word   0x0073aa44
        .word   0x0073aa50
        .word   0x0073aa68
        .word   0x0073aa74
        .word   0x0073aa94
        .word   0x0073aab0
        .word   0x0073aae8
        .word   0x0073aaf4
        .word   0x0073ab00
        .word   0x0073ab0c
        .word   0x0073ab14
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073ab38
        .word   0x0073ab60
        .word   0x0073ab70
        .word   0x0073ab80
        .word   0x0073ab90
        .word   0x0073aba0
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073a0b8
        .word   0x0073ac60
        .word   0x0073ac30
        .word   0x0073abcc
        .word   0xe3530020
        .word   0xe1a0000b
        .word   0xe1a01003
        .word   0xaa000003
        .word   0xebfca8ac
        .word   0xe320f000
        .word   0xe320f000
        .word   0xea000004
        .word   0xe3510030
        .word   0xaafffde1
        .word   0xe2431020
        .word   0xe1a00009
        .word   0xebfc9723
        .word   0xe1b07000
        .word   0x0afffddc
        .word   0xeaffffc4
        .word   0xe35000ae
        .word   0x0a0000f0
        .word   0xca00000d
        .word   0xe24000a4
        .word   0xe350000a
        .word   0x379ff100
        .word   0xeafffdd4
        .word   0x0073ac40
        .word   0x0073ac50
        .word   0x0073ad04
        .word   0x0073acd4
        .word   0x0073ac70
        .word   0x0073ac8c
        .word   0x0073ace4
        .word   0x0073acf4
        .word   0x0073ad5c
        .word   0x0073ad4c
        .word   0xe35000e2
        .word   0x0a00009b
        .word   0xaa000011
        .word   0xe35000b1
        .word   0x05c450cc
        .word   0x0afffdc4
        .word   0xca000006
        .word   0xe35000af
        .word   0x0a0000df
        .word   0xe35000b0
        .word   0x05c450d3
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe35000e0
        .word   0x0a000078
        .word   0xe35000e1
        .word   0x0584a0a8
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe35000e3
        .word   0x0584a0b8
        .word   0x0afffdb2
        .word   0xe35000e4
        .word   0x0a0000ac
        .word   0xe35000e5
        .word   0x0584a0c8
        .word   0x0afffdad
        .word   0xe35000e6
        .word   0x1afffdab
        .word   0xe6bf0076
        .word   0xe3500000
        .word   0x0d849a31
        .word   0x0afffda7
        .word   0xee000a10
        .word   0xeeb80ac0
        .word   0xeec90a80
        .word   0xedc40a31
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe1c780b0
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe1d700f0
        .word   0xe6b00078
        .word   0xea000001
        .word   0xe1d700b0
        .word   0xe0400008
        .word   0xe1c700b0
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe1d700b0
        .word   0xe1600880
        .word   0xeafffff8
        .word   0xe3580000
        .word   0x0afffd8e
        .word   0xe6bf1078
        .word   0xe1d700f0
        .word   0xebef1178
        .word   0xe320f000
        .word   0xe320f000
        .word   0xeafffff0
        .word   0xe3580000
        .word   0xa1d700b0
        .word   0xa1a00810
        .word   0xb1d700f0
        .word   0xb2681000
        .word   0xb1a00150
        .word   0xeaffffe9
        .word   0xe3580000
        .word   0xe3a04000
        .word   0xaa000002
        .word   0xe2680000
        .word   0xe3a04001
        .word   0xe6bf8070
        .word   0xe320f000
        .word   0xebfc87b5
        .word   0xe2881001
        .word   0xe3540000
        .word   0xe0000190
        .word   0xe1a00840
        .word   0x12600000
        .word   0xeaffffdb
        .word   0xe1d700b0
        .word   0xe0000008
        .word   0xeaffffd8
        .word   0xe1d700b0
        .word   0xe1800008
        .word   0xeaffffd5
        .word   0xe1d700b0
        .word   0xe0200008
        .word   0xeaffffd2
        .word   0xe1e00008
        .word   0xeaffffd0
        .word   0xe3580000
        .word   0x0afffd66
        .word   0xe1d700f0
        .word   0xe1a01008
        .word   0xebef1150
        .word   0xe1c710b0
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe1d700f0
        .word   0xe1500008
        .word   0x1a000001
        .word   0xe3a00001
        .word   0xea000000
        .word   0xe3a00000
        .word   0xe5c40008
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe1d700f0
        .word   0xe1500008
        .word   0xbafffff7
        .word   0xeafffff4
        .word   0xe1d700f0
        .word   0xe1500008
        .word   0xdafffff3
        .word   0xeafffff0
        .word   0xe1d700f0
        .word   0xe1500008
        .word   0xcaffffef
        .word   0xeaffffec
        .word   0xe1d700f0
        .word   0xe1500008
        .word   0xaaffffeb
        .word   0xeaffffe8
        .word   0xe1d700f0
        .word   0xe1500008
        .word   0x0affffe7
        .word   0xeaffffe4
        .word   0xe28dd004
        .word   0xe6ff1076
        .word   0xecbd8b04
        .word   0xe1a02009
        .word   0xe1a0000b
        .word   0xe8bd4ff0
        .word   0xeafca91a
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a08
        .word   0xed840a28
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a28
        .word   0xed840a29
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe6bf0076
        .word   0xe3500000
        .word   0x0d849a29
        .word   0x0afffd28
        .word   0xee000a10
        .word   0xeeb80ac0
        .word   0xeec90a80
        .word   0xedc40a29
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450ae
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450d1
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450ac
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450ad
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a08
        .word   0xed840a2c
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a28
        .word   0xed840a2d
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe6bf0076
        .word   0xe3500000
        .word   0x0d849a2d
        .word   0x0afffcff
        .word   0xee000a10
        .word   0xeeb80ac0
        .word   0xeec90a80
        .word   0xedc40a2d
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450be
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450d2
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450bc
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450bd
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a08
        .word   0xed840a30
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xee005a10
        .word   0xeeb80a40
        .word   0xee200a28
        .word   0xed840a31
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450ce
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .word   0xe5c450cd
        .word   0xe28dd004
        .word   0xecbd8b04
        .word   0xe8bd8ff0
        .size   A_63a008, . - A_63a008

@ FUN_0063ad6c
        .global A_63ad6c
        .type   A_63ad6c, %function
A_63ad6c:
        push    {r3, lr}
        mov     r0, r1
        ldr     r1, [sp, #0xc]
        mov     ip, r2
        mov     r2, r3
        str     r1, [sp]
        ldr     r3, [sp, #8]
        mov     r1, ip
        bl      Fn_560bc4
        pop     {r3, pc}
        .size   A_63ad6c, . - A_63ad6c

@ FUN_0063b474
        .global A_63b474
        .type   A_63b474, %function
A_63b474:
        push    {r4, r5}
        ldrh    ip, [r0, #0x10]
        add     r3, r0, #0x14
        mov     r5, r0
        mov     r0, #0
        cmp     ip, #0
        mov     r2, #0x5800
        mov     r1, r0
        ble     L63b4c4
L63b498:
        add     r4, r1, r1, lsl #1
        add     r4, r3, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, r2
        bne     L63b4cc
        add     r1, r1, r1, lsl #1
        adds    r1, r3, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r0, r1, r5
        beq     L63b4c4
L63b4c4:
        pop     {r4, r5}
        bx      lr
L63b4cc:
        add     r1, r1, #1
        cmp     ip, r1
        bgt     L63b498
        pop     {r4, r5}
        bx      lr
        .size   A_63b474, . - A_63b474

@ FUN_0063b4e0
        .global A_63b4e0
        .type   A_63b4e0, %function
A_63b4e0:
        ldr     r3, [r0, #4]
        ldrh    ip, [r0]
        mov     r2, r0
        add     r2, r2, r3
        cmp     ip, #0x6000
        mov     r0, #0
        ldreq   r0, [r2, #4]
        addeq   r0, r0, r2
        beq     L63b57c
        sub     r3, ip, #0x6000
        subs    r3, r3, #1
        beq     L63b530
        cmp     r3, #1
        bne     L63b57c
        ldrb    r0, [r2]
        cmp     r0, r1
        ldrbls  r3, [r2, #1]
        cmpls   r1, r3
        bhi     L63b578
        b       L63b580
L63b530:
        ldr     ip, [r2]
        mov     r0, #0
        cmp     ip, #0
        bls     L63b578
L63b540:
        add     r3, r2, r0
        ldrb    r3, [r3, #4]
        cmp     r3, r1
        blo     L63b56c
        add     r1, ip, #3
        bic     r1, r1, #3
        add     r0, r1, r0, lsl #3
        add     r0, r0, #4
        add     r0, r0, r2
        ldr     r0, [r0, #4]
        b       L63b58c
L63b56c:
        add     r0, r0, #1
        cmp     r0, ip
        blo     L63b540
L63b578:
        mov     r0, #0
L63b57c:
        bx      lr
L63b580:
        sub     r0, r1, r0
        add     r0, r2, r0, lsl #3
        ldr     r0, [r0, #8]
L63b58c:
        add     r0, r0, r2
        bx      lr
        .size   A_63b4e0, . - A_63b4e0

@ FUN_0063b5f0
        .global A_63b5f0
        .type   A_63b5f0, %function
A_63b5f0:
        push    {r3, lr}
        mov     r2, #4
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        beq     L63b618
        ldr     r0, [sp]
        lsl     r0, r0, #0x10
        lsr     r0, r0, #0x18
L63b618:
        pop     {r3, pc}
        .size   A_63b5f0, . - A_63b5f0

@ FUN_0063b61c
        .global A_63b61c
        .type   A_63b61c, %function
A_63b61c:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r2, #9
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldreq   r0, L63b654
        beq     L63b650
        ldr     r0, [sp]
        add     r0, r0, r4
        ldr     r1, [r0, #4]
        add     r0, r0, r1
L63b650:
        pop     {r3, r4, r5, pc}
L63b654:
        .word   0x008bb9a4
        .size   A_63b61c, . - A_63b61c

@ FUN_0063b658
        .global A_63b658
        .type   A_63b658, %function
A_63b658:
        push    {r3, lr}
        mov     r2, #0
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x3c
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63b658, . - A_63b658

@ FUN_0063b680
        .global A_63b680
        .type   A_63b680, %function
A_63b680:
        push    {r3, lr}
        mov     r2, #4
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        beq     L63b6a8
        ldr     r0, [sp]
        ands    r0, r0, #0xff
        movne   r0, #1
L63b6a8:
        pop     {r3, pc}
        .size   A_63b680, . - A_63b680

@ FUN_0063b6ac
        .global A_63b6ac
        .type   A_63b6ac, %function
A_63b6ac:
        ldr     r1, [r0, #4]
        sub     r2, r1, #0x200
        subs    r2, r2, #0x1f
        movne   r0, #0
        addeq   r0, r0, #8
        bx      lr
        .size   A_63b6ac, . - A_63b6ac

@ FUN_0063b6c4
        .global A_63b6c4
        .type   A_63b6c4, %function
A_63b6c4:
        push    {r3, lr}
        mov     r2, #4
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        beq     L63b6ec
        ldr     r0, [sp]
        lsl     r0, r0, #8
        lsr     r0, r0, #0x18
L63b6ec:
        pop     {r3, pc}
        .size   A_63b6c4, . - A_63b6c4

@ FUN_0063b6f0
        .global A_63b6f0
        .type   A_63b6f0, %function
A_63b6f0:
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
        .size   A_63b6f0, . - A_63b6f0

@ FUN_0063b718
        .global A_63b718
        .type   A_63b718, %function
A_63b718:
        push    {r4, r5, r6, r7}
        add     r6, r0, #4
        mov     ip, #0
        ldr     r4, [r6]
        mov     r2, #3
        mov     r0, ip
        mov     r1, ip
        mov     r3, #4
        mov     r5, #1
L63b73c:
        tst     r4, r5, lsl r1
        beq     L63b750
        cmp     r1, r2
        add     r0, r0, #1
        moveq   ip, #1
L63b750:
        subs    r3, r3, #1
        add     r1, r1, #1
        bne     L63b73c
        cmp     ip, #0
        beq     L63b77c
        cmp     r0, #0
        beq     L63b77c
        add     r0, r6, r0, lsl #2
        vldr    s0, [r0]
        pop     {r4, r5, r6, r7}
        bx      lr
L63b77c:
        pop     {r4, r5, r6, r7}
        vldr    s0, L63b788
        bx      lr
L63b788:
        .word   0x3f800000
        .size   A_63b718, . - A_63b718

@ FUN_0063b78c
        .global A_63b78c
        .type   A_63b78c, %function
A_63b78c:
        push    {r3, lr}
        mov     r2, #1
        mov     r1, sp
        add     r0, r0, #4
        bl      Fn_639d20
        cmp     r0, #0
        ldrne   r0, [sp]
        moveq   r0, #0x7f
        andne   r0, r0, #0xff
        pop     {r3, pc}
        .size   A_63b78c, . - A_63b78c

@ FUN_0063b7b4
        .global A_63b7b4
        .type   A_63b7b4, %function
A_63b7b4:
        ldr     r3, [r0, #4]
        ldrh    ip, [r0]
        mov     r2, r0
        add     r2, r2, r3
        cmp     ip, #0x6000
        mov     r0, #0
        ldreq   r0, [r2, #4]
        addeq   r0, r0, r2
        beq     L63b850
        sub     r3, ip, #0x6000
        subs    r3, r3, #1
        beq     L63b804
        cmp     r3, #1
        bne     L63b850
        ldrb    r0, [r2]
        cmp     r0, r1
        ldrbls  r3, [r2, #1]
        cmpls   r1, r3
        bhi     L63b84c
        b       L63b854
L63b804:
        ldr     ip, [r2]
        mov     r0, #0
        cmp     ip, #0
        bls     L63b84c
L63b814:
        add     r3, r2, r0
        ldrb    r3, [r3, #4]
        cmp     r3, r1
        blo     L63b840
        add     r1, ip, #3
        bic     r1, r1, #3
        add     r0, r1, r0, lsl #3
        add     r0, r0, #4
        add     r0, r0, r2
        ldr     r0, [r0, #4]
        b       L63b860
L63b840:
        add     r0, r0, #1
        cmp     r0, ip
        blo     L63b814
L63b84c:
        mov     r0, #0
L63b850:
        bx      lr
L63b854:
        sub     r0, r1, r0
        add     r0, r2, r0, lsl #3
        ldr     r0, [r0, #8]
L63b860:
        add     r0, r0, r2
        bx      lr
        .size   A_63b7b4, . - A_63b7b4

@ FUN_0063b904
        .global A_63b904
        .type   A_63b904, %function
A_63b904:
        add     r0, r0, #8
        mov     r0, r0
        mov     r1, r0
        mov     r0, #0
        ldr     r1, [r1]
        cmp     r1, #0
        beq     L63b930
L63b920:
        ldr     r1, [r1]
        add     r0, r0, #1
        cmp     r1, #0
        bne     L63b920
L63b930:
        bx      lr
        .size   A_63b904, . - A_63b904

@ FUN_0063b934
        .global A_63b934
        .type   A_63b934, %function
A_63b934:
        push    {r4, r5}
        ldrh    r3, [r0, #0x10]
        ldr     ip, L63b998
        mov     r5, #0
        cmp     r3, #0
        add     r2, r0, #0x14
        mov     r1, r5
        ble     L63b97c
L63b954:
        add     r4, r1, r1, lsl #1
        add     r4, r2, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, ip
        bne     L63b988
        add     r1, r1, r1, lsl #1
        adds    r1, r2, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r5, r1, r0
L63b97c:
        mov     r0, r5
        pop     {r4, r5}
        bx      lr
L63b988:
        add     r1, r1, #1
        cmp     r3, r1
        bgt     L63b954
        b       L63b97c
L63b998:
        .word   0x00007001
        .size   A_63b934, . - A_63b934

@ FUN_0063b99c
        .global A_63b99c
        .type   A_63b99c, %function
A_63b99c:
        push    {r4, r5}
        ldrh    ip, [r0, #0x10]
        add     r3, r0, #0x14
        mov     r5, r0
        mov     r0, #0
        cmp     ip, #0
        mov     r2, #0x7000
        mov     r1, r0
        ble     L63b9ec
L63b9c0:
        add     r4, r1, r1, lsl #1
        add     r4, r3, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, r2
        bne     L63b9f4
        add     r1, r1, r1, lsl #1
        adds    r1, r3, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r0, r1, r5
        beq     L63b9ec
L63b9ec:
        pop     {r4, r5}
        bx      lr
L63b9f4:
        add     r1, r1, #1
        cmp     ip, r1
        bgt     L63b9c0
        pop     {r4, r5}
        bx      lr
        .size   A_63b99c, . - A_63b99c

@ FUN_0063ba40
        .global A_63ba40
        .type   A_63ba40, %function
A_63ba40:
        push    {r4, r5}
        ldrh    r3, [r0, #0x10]
        ldr     ip, L63baa4
        mov     r5, #0
        cmp     r3, #0
        add     r2, r0, #0x14
        mov     r1, r5
        ble     L63ba88
L63ba60:
        add     r4, r1, r1, lsl #1
        add     r4, r2, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, ip
        bne     L63ba94
        add     r1, r1, r1, lsl #1
        adds    r1, r2, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r5, r1, r0
L63ba88:
        mov     r0, r5
        pop     {r4, r5}
        bx      lr
L63ba94:
        add     r1, r1, #1
        cmp     r3, r1
        bgt     L63ba60
        b       L63ba88
L63baa4:
        .word   0x00007801
        .size   A_63ba40, . - A_63ba40

@ FUN_0063baa8
        .global A_63baa8
        .type   A_63baa8, %function
A_63baa8:
        push    {r4, r5}
        ldrh    ip, [r0, #0x10]
        add     r3, r0, #0x14
        mov     r5, r0
        mov     r0, #0
        cmp     ip, #0
        mov     r2, #0x7800
        mov     r1, r0
        ble     L63baf8
L63bacc:
        add     r4, r1, r1, lsl #1
        add     r4, r3, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, r2
        bne     L63bb00
        add     r1, r1, r1, lsl #1
        adds    r1, r3, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r0, r1, r5
        beq     L63baf8
L63baf8:
        pop     {r4, r5}
        bx      lr
L63bb00:
        add     r1, r1, #1
        cmp     ip, r1
        bgt     L63bacc
        pop     {r4, r5}
        bx      lr
        .size   A_63baa8, . - A_63baa8

@ FUN_0063bb14
        .global A_63bb14
        .type   A_63bb14, %function
A_63bb14:
        push    {r4, r5}
        ldrh    r3, [r0, #0x10]
        ldr     ip, L63bb78
        mov     r5, #0
        cmp     r3, #0
        add     r2, r0, #0x14
        mov     r1, r5
        ble     L63bb5c
L63bb34:
        add     r4, r1, r1, lsl #1
        add     r4, r2, r4, lsl #2
        ldrh    r4, [r4]
        cmp     r4, ip
        bne     L63bb68
        add     r1, r1, r1, lsl #1
        adds    r1, r2, r1, lsl #2
        ldrne   r1, [r1, #4]
        cmpne   r1, #0
        addne   r5, r1, r0
L63bb5c:
        mov     r0, r5
        pop     {r4, r5}
        bx      lr
L63bb68:
        add     r1, r1, #1
        cmp     r3, r1
        bgt     L63bb34
        b       L63bb5c
L63bb78:
        .word   0x00007802
        .size   A_63bb14, . - A_63bb14

@ FUN_0063bc24
        .global A_63bc24
        .type   A_63bc24, %function
A_63bc24:
        cmp     r1, #0x10
        ldr     r0, [r0, #0x680]
        lslhi   r1, r1, #1
        subhi   r1, r1, #0x20
        movls   r1, #0
        add     r0, r0, r1
        lsl     r0, r0, #0x14
        lsr     r0, r0, #0x14
        cmp     r0, #0xfe0
        movhs   r0, #0x20
        movlo   r0, #0
        bx      lr
        .size   A_63bc24, . - A_63bc24

@ FUN_0063bc90
        .global A_63bc90
        .type   A_63bc90, %function
A_63bc90:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_63bd28
        sub     r1, r0, #0xff00
        ldr     r3, [r4, #8]
        subs    r1, r1, #0xff
        ldreq   r0, [r4, #8]
        ldr     r1, [r3, #0xc]
        ldrheq  r0, [r0, #2]
        cmp     r1, #0
        beq     L63bcf4
L63bcbc:
        ldrh    r2, [r1]
        cmp     r2, r0
        ldrhls  r2, [r1, #2]
        cmpls   r0, r2
        bhi     L63bce8
        ldrh    r2, [r1]
        sub     r0, r0, r2
        add     r0, r0, r0, lsl #1
        add     r0, r0, r1
        add     r1, r0, #8
        b       L63bcf8
L63bce8:
        ldr     r1, [r1, #4]
        cmp     r1, #0
        bne     L63bcbc
L63bcf4:
        add     r1, r3, #4
L63bcf8:
        ldrh    r0, [r1]
        ldrb    r1, [r1, #2]
        orr     r0, r0, r1, lsl #16
        pop     {r4, pc}
        .size   A_63bc90, . - A_63bc90

@ FUN_0063be64
        .global A_63be64
        .type   A_63be64, %function
A_63be64:
        push    {r4, r5, r6, lr}
        mov     r5, r1
        mov     r4, r0
        mov     r1, r2
        bl      Fn_63bd28
        sub     r1, r0, #0xff00
        subs    r1, r1, #0xff
        ldreq   r0, [r4, #8]
        mov     r1, r5
        ldrheq  r0, [r0, #2]
        mov     r2, r0
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        mov     r0, r0
        .size   A_63be64, . - A_63be64

@ FUN_0063bfe8
        .global A_63bfe8
        .type   A_63bfe8, %function
A_63bfe8:
        str     lr, [sp, #-4]!
        bl      Fn_63bd28
        sub     r1, r0, #0xff00
        subs    r1, r1, #0xff
        movne   r0, #1
        moveq   r0, #0
        pop     {pc}
        .size   A_63bfe8, . - A_63bfe8

@ FUN_00643988
        .global A_643988
        .type   A_643988, %function
A_643988:
        sub     r3, r0, #0xc
        mov     r0, #0
        str     r4, [sp, #-4]!
L643994:
        add     ip, r3, r0, lsl #3
        ldr     ip, [ip, #0x218]
        cmp     ip, r1
        bne     L6439b8
        add     r1, r3, r0, lsl #3
        ldr     r0, [r1, #0x21c]
        str     r2, [r1, #0x21c]
        pop     {r4}
        bx      lr
L6439b8:
        add     r0, r0, #1
        cmp     r0, #9
        blt     L643994
        mov     ip, #0
        mov     r0, ip
L6439cc:
        add     r4, r3, ip, lsl #3
        ldr     r4, [r4, #0x218]
        cmn     r4, #1
        beq     L6439f0
        add     ip, ip, #1
        cmp     ip, #9
        blt     L6439cc
        pop     {r4}
        bx      lr
L6439f0:
        add     r3, r3, ip, lsl #3
        add     r3, r3, #0x218
        stm     r3, {r1, r2}
        pop     {r4}
        bx      lr
        .size   A_643988, . - A_643988

@ FUN_00643a04
        .global A_643a04
        .type   A_643a04, %function
A_643a04:
        ldr     r1, L643a58
        push    {r4, lr}
        sub     r4, r0, #0xc
        add     r0, r1, #0x20
        str     r0, [r4, #0xc]
        str     r1, [r4]
        ldrb    r0, [r4, #0x261]
        cmp     r0, #0
        bne     L643a44
        mov     r2, #0
        mov     r1, #1
        strb    r2, [r4, #0x260]
        strb    r1, [r4, #0x261]
        mov     r1, r2
        add     r0, r4, #0xc
        str     r1, [r0, #4]
L643a44:
        add     r0, r4, #0xc
        bl      Fn_55b7bc
        pop     {r4, lr}
        sub     r0, r0, #0xc
        b       Fn_2024b0
L643a58:
        .word   0x0082ce90
        .size   A_643a04, . - A_643a04

@ FUN_00643a5c
        .global A_643a5c
        .type   A_643a5c, %function
A_643a5c:
        push    {r4, lr}
        sub     r4, r0, #0xc
        ldr     r0, L643aac
        add     r1, r0, #0x20
        str     r0, [r4]
        str     r1, [r4, #0xc]
        ldrb    r0, [r4, #0x261]
        cmp     r0, #0
        bne     L643a9c
        mov     r2, #0
        mov     r1, #1
        strb    r2, [r4, #0x260]
        strb    r1, [r4, #0x261]
        mov     r1, r2
        add     r0, r4, #0xc
        str     r1, [r0, #4]
L643a9c:
        add     r0, r4, #0xc
        bl      Fn_55b7bc
        sub     r0, r0, #0xc
        pop     {r4, pc}
L643aac:
        .word   0x0082ce90
        .size   A_643a5c, . - A_643a5c

@ FUN_00643ab0
        .global A_643ab0
        .type   A_643ab0, %function
A_643ab0:
        push    {r4, r5, r6, lr}
        sub     r4, r0, #0xc
        ldr     r0, [r0, #0x210]
        mov     r5, r1
        cmp     r0, #0
        beq     L643ae0
        ldr     r1, [r0]
        ldr     r2, [r1, #8]
        mov     r1, r5
        blx     r2
        cmp     r0, #0
        bne     L643b10
L643ae0:
        mov     r1, r5
        add     r0, r4, #0xc
        bl      Fn_638e38
        cmp     r0, #0
        nop
        bne     L643b10
        ldr     r0, [r4]
        mov     r1, r5
        ldr     r2, [r0, #0x10]
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        bx      r2
L643b10:
        pop     {r4, r5, r6, pc}
        .size   A_643ab0, . - A_643ab0

@ FUN_00643b4c
        .global A_643b4c
        .type   A_643b4c, %function
A_643b4c:
        sub     r0, r0, #0xc
        ldr     r2, [r0, #0x218]
        cmp     r2, r1
        ldreq   r0, [r0, #0x21c]
        movne   r2, #1
        beq     L643b7c
L643b64:
        add     r3, r0, r2, lsl #3
        ldr     ip, [r3, #0x218]
        cmp     ip, r1
        bne     L643b80
        add     r0, r0, r2, lsl #3
        ldr     r0, [r0, #0x21c]
L643b7c:
        bx      lr
L643b80:
        ldr     r3, [r3, #0x220]
        cmp     r3, r1
        bne     L643b98
        add     r0, r0, r2, lsl #3
        ldr     r0, [r0, #0x224]
        bx      lr
L643b98:
        add     r2, r2, #2
        cmp     r2, #9
        blt     L643b64
        mov     r0, #0
        bx      lr
        .size   A_643b4c, . - A_643b4c

@ FUN_00644200
        .global A_644200
        .type   A_644200, %function
A_644200:
        cmp     r1, #0x2c
        sub     r0, r0, #4
        movne   r0, #0
        push    {r4, lr}
        bne     L64424c
        add     r0, r0, #8
        bl      Fn_5667d4
        cmp     r0, #0
        mov     r1, #0
        moveq   r0, r1
        beq     L64424c
        str     r1, [r0, #0x18]
        vldr    s0, L644250
        str     r1, [r0, #0x1c]
        str     r1, [r0, #0x20]
        mov     r2, #1
        vstr    s0, [r0, #0x24]
        strb    r2, [r0, #0x28]
        strb    r1, [r0, #0x29]
L64424c:
        pop     {r4, pc}
L644250:
        .word   0x3f000000
        .size   A_644200, . - A_644200

@ FUN_006445c8
        .global A_6445c8
        .type   A_6445c8, %function
A_6445c8:
        push    {r4, r5, r6, r7, r8, lr}
        sub     r4, r0, #0x44
        mov     r6, r1
        ldrb    r0, [r0, #-0x38]
        mov     r7, r2
        cmp     r0, #0
        movne   r0, #0
        bne     L6445f4
        pop     {r4, r5, r6, r7, r8, pc}
L6445ec:
        cmp     r0, #0xf
        bgt     L64462c
L6445f4:
        add     r1, r4, r0, lsl #2
        ldr     r1, [r1, #0x90]
        cmp     r1, #0
        beq     L64462c
        ldr     r1, [r1, #0x1c]
        cmp     r6, r1
        bhi     L64462c
        cmp     r1, r7
        bhi     L64462c
        ldr     r0, [r4]
        ldr     r1, [r0, #0xc]
        mov     r0, r4
        blx     r1
        b       L644638
L64462c:
        add     r0, r0, #1
        cmp     r0, #0x10
        blt     L6445ec
L644638:
        mov     r5, #0
L64463c:
        add     r0, r5, r5, lsl #1
        add     r1, r4, r0, lsl #2
        ldr     r0, [r1, #0x134]
        cmp     r6, r0
        cmpls   r0, r7
        addls   r0, r1, #0x134
        blls    Fn_559208
        add     r5, r5, #1
        cmp     r5, #4
        blo     L64463c
        pop     {r4, r5, r6, r7, r8, pc}
        .size   A_6445c8, . - A_6445c8

@ FUN_00646138
        .global A_646138
        .type   A_646138, %function
A_646138:
        push    {r4, r5, r6, lr}
        sub     r4, r0, #0x50
        ldrb    r0, [r0, #-0x44]
        cmp     r0, #0
        ldrbne  r0, [r4, #0xd]
        cmpne   r0, #0
        beq     L6461a8
        ldrb    r0, [r4, #0xe]
        cmp     r0, #0
        bne     L6461c0
        ldrb    r0, [r4, #0x5c]
        mov     r5, #0
        cmp     r0, #0
        beq     L6461ac
        ldr     r0, [r4, #0x9c]
        cmp     r0, #0
        bne     L6461c0
        mov     r0, #1
        strb    r0, [r4, #0xf]
        ldrb    r0, [r4, #0xd]
        cmp     r0, #0
        beq     L6461a8
L646190:
        nop
        bl      Fn_55e338
        add     r1, r4, #0x50
        nop
        bl      Fn_55ea18
        strb    r5, [r4, #0xd]
L6461a8:
        pop     {r4, r5, r6, pc}
L6461ac:
        mov     r0, r4
        bl      Fn_5620fc
        cmp     r0, #0
        nop
        beq     L6461cc
L6461c0:
        mov     r0, r4
        pop     {r4, r5, r6, lr}
        b       Fn_562258
L6461cc:
        ldrb    r0, [r4, #0xd]
        cmp     r0, #0
        bne     L646190
        pop     {r4, r5, r6, pc}
        .size   A_646138, . - A_646138

@ FUN_006461e8
        .global A_6461e8
        .type   A_6461e8, %function
A_6461e8:
        push    {r4, r5, r6, lr}
        sub     r5, r0, #0x50
        ldrb    r0, [r0, #-0x44]
        cmp     r0, #0
        ldrbne  r0, [r5, #0xd]
        cmpne   r0, #0
        beq     L646270
        ldr     r0, [r5, #0x6c]
        cmp     r0, #0
        bne     L646224
        vldr    s0, [r5, #0x70]
        vldr    s1, L646274
        vcmpe.f32 s0, s1
        vmrs    apsr_nzcv, fpscr
        ble     L646238
L646224:
        mov     r0, r5
        bl      Fn_5653c4
        nop
        nop
        b       L646248
L646238:
        ldrb    r0, [r5, #0xe]
        cmp     r0, #0
        moveq   r0, r5
        bleq    Fn_564854
L646248:
        mov     r4, #0
L64624c:
        cmp     r4, #0xf
        bgt     L646264
        add     r0, r5, r4, lsl #2
        ldr     r0, [r0, #0x90]
        cmp     r0, #0
        blne    Fn_5606b4
L646264:
        add     r4, r4, #1
        cmp     r4, #0x10
        blt     L64624c
L646270:
        pop     {r4, r5, r6, pc}
L646274:
        .word   0x00000000
        .size   A_6461e8, . - A_6461e8

@ FUN_006462f4
        .global A_6462f4
        .type   A_6462f4, %function
A_6462f4:
        add     r2, r0, #0x10
        ldm     r2, {r2, r3, ip}
        stm     r1, {r2, r3, ip}
        add     r2, r0, #0x1c
        ldm     r2, {r2, r3, ip}
        str     ip, [r1, #0x14]
        strd    r2, r3, [r1, #0xc]
        ldr     r0, [r0, #0xc]
        str     r0, [r1, #0x1c]
        bx      lr
        .size   A_6462f4, . - A_6462f4

@ FUN_006473bc
        .global A_6473bc
        .type   A_6473bc, %function
A_6473bc:
        vmov    r0, s0
        vmov    r1, s1
        mov     r2, #0xe8000000
        push    {r4, lr}
        add     r3, r2, r0, lsl #1
        cmp     r3, #0xe5000000
        vpush   {d8}
        addlo   r2, r2, r1, lsl #1
        cmplo   r2, #0xe5000000
        blo     L647470
        mov     r2, #0xff000000
        cmp     r2, r0, lsl #1
        cmphs   r2, r1, lsl #1
        vaddlo.f32 s0, s0, s1
        vpoplo  {d8}
        poplo   {r4, pc}
        orr     r3, r0, r1
        lsls    r3, r3, #1
        orreq   r1, r1, #0x40000000
        orreq   r1, r1, #0x3f800000
        beq     L647428
        cmp     r2, r0, lsl #1
        cmpeq   r2, r1, lsl #1
        bne     L647430
        bic     r0, r0, #0x40000000
        vmov    s0, r0
        bic     r1, r1, #0x40000000
L647428:
        vmov    s1, r1
        b       L647470
L647430:
        cmp     r2, r0, lsl #1
        lslsne  r2, r1, #1
        orreq   r0, r0, #0x40000000
        orreq   r0, r0, #0x3f800000
        andeq   r1, r1, #0x80000000
        beq     L647470
        lsl     r2, r1, #1
        eors    r3, r2, r0, lsl #1
        bmi     L647470
        cmp     r2, #0
        vldrge  s2, L6475cc
        vldrlt  s2, L6475d0
        vmul.f32 s0, s0, s2
        vmul.f32 s1, s1, s2
        vmov    r0, s0
        vmov    r1, s1
L647470:
        lsl     r3, r0, #1
        lsl     r2, r1, #1
        lsr     ip, r3, #0x18
        sub     r2, ip, r2, lsr #24
        cmp     r2, #0x1b
        ble     L64749c
        vpop    {d8}
        tst     r0, #0x80000000
        vldrne  s0, L6475d4
        vldreq  s0, L6475d8
        pop     {r4, pc}
L64749c:
        cmn     r2, #0x1a
        bge     L6474e0
        tst     r1, #0x80000000
        beq     L6474c0
        vpop    {d8}
        tst     r0, #0x80000000
        vldrne  s0, L6475dc
        vldreq  s0, L6475e0
        pop     {r4, pc}
L6474c0:
        vdiv.f32 s16, s0, s1
        vmov    r0, s16
        bl      Fn_64664c
        cmp     r0, #4
        bleq    Fn_648cd0
        vmov.f32 s0, s16
        vpop    {d8}
        pop     {r4, pc}
L6474e0:
        cmp     r3, r1, lsl #1
        bls     L647560
        vmov.f32 s4, s1
        mov     r2, r1
        vneg.f32 s1, s0
        tst     r0, #0x80000000
        vldrne  s3, L6475e4
        eor     r1, r0, #0x80000000
        mov     r0, r2
        vmov.f32 s0, s4
        vldrne  s2, L6475e8
        vldreq  s3, L6475ec
        vldreq  s2, L6475f0
L647514:
        sub     r2, r1, r0
        lsl     r2, r2, #1
        cmp     r2, #0x1000000
        bhs     L647588
        eor     r0, r0, r1
        vldr    s5, L6475f8
        tst     r0, #0x80000000
        vldrne  s4, L6475fc
        vldreq  s4, L647600
        vsubne.f32 s2, s2, s5
        vldr    s6, L6475f4
        vsubne.f32 s3, s3, s6
        vaddeq.f32 s2, s2, s5
        vmov.f32 s5, s0
        vaddeq.f32 s3, s3, s6
        vmls.f32 s5, s4, s1
        vmla.f32 s1, s0, s4
        vdiv.f32 s4, s5, s1
        b       L64758c
L647560:
        tst     r1, #0x80000000
        vldreq  s2, L647604
        vmoveq.f32 s3, s2
        beq     L647514
        tst     r0, #0x80000000
        vldrne  s3, L647608
        vldrne  s2, L64760c
        vldreq  s3, L647610
        vldreq  s2, L647614
        b       L647514
L647588:
        vdiv.f32 s4, s0, s1
L64758c:
        vldr    s1, L647618
        vldr    s5, L64761c
        vldr    s7, L647620
        vldr    s6, L647624
        vmul.f32 s0, s4, s4
        vpop    {d8}
        vmla.f32 s5, s0, s1
        vldr    s1, L647628
        vmul.f32 s8, s4, s0
        vmla.f32 s7, s0, s5
        vmla.f32 s6, s0, s7
        vmla.f32 s1, s0, s6
        vmla.f32 s2, s8, s1
        vadd.f32 s0, s2, s4
        vadd.f32 s0, s0, s3
        pop     {r4, pc}
L6475cc:
        .word   0x4f800000
L6475d0:
        .word   0x2f800000
L6475d4:
        .word   0xbfc90fdb
L6475d8:
        .word   0x3fc90fdb
L6475dc:
        .word   0xc0490fdb
L6475e0:
        .word   0x40490fdb
L6475e4:
        .word   0xbfc90000
L6475e8:
        .word   0xb9fdaa22
L6475ec:
        .word   0x3fc90000
L6475f0:
        .word   0x39fdaa22
L6475f4:
        .word   0x3eed6000
L6475f8:
        .word   0x37ce0ac3
L6475fc:
        .word   0xbf000000
L647600:
        .word   0x3f000000
L647604:
        .word   0x00000000
L647608:
        .word   0xc0490000
L64760c:
        .word   0xba7daa22
L647610:
        .word   0x40490000
L647614:
        .word   0x3a7daa22
L647618:
        .word   0xbd65ad2d
L64761c:
        .word   0x3dd5b88f
L647620:
        .word   0xbe11b50f
L647624:
        .word   0x3e4cc861
L647628:
        .word   0xbeaaaaa8
        .size   A_6473bc, . - A_6473bc

@ FUN_0065fd10
        .global A_65fd10
        .type   A_65fd10, %function
A_65fd10:
        mov     r1, r0
        mov     r0, r0
        ldr     r2, L65fe78
        push    {r4, r5, r6, r7, r8}
        mov     r3, #0
        mov     r4, r3
        ldr     r2, [r2]
        ldr     ip, [r2, #0x628]
        cmp     ip, r0
        ldreq   ip, [r2, #0x62c]
        cmpeq   ip, r1
        ldrbeq  ip, [r2, #0xc]
        cmpeq   ip, #0
        beq     L65fe54
        sub     ip, r0, #0x8000
        sub     ip, ip, #6
        cmp     ip, #6
        ldrlo   pc, [pc, ip, lsl #2]
        b       L65fe54
L65fd5c:
        .word   0x0075fd90
L65fd60:
        .word   0x0075fd84
L65fd64:
        .word   0x0075fd8c
L65fd68:
        .word   0x0075fe54
L65fd6c:
        .word   0x0075fd74
L65fd70:
        .word   0x0075fd7c
        .word   0xe3a03001
        .word   0xea000004
        .word   0xe3a03002
        .word   0xea000002
        .word   0xe3a03003
        .word   0xea000000
        .word   0xe3a03004
        .word   0xe241c902
        .word   0xe24cc006
        .word   0xe35c0006
        .word   0x379ff10c
        .word   0xea00002b
        .word   0x0075fdd8
        .word   0x0075fdcc
        .word   0x0075fdd4
        .word   0x0075fe54
        .word   0x0075fdbc
        .word   0x0075fdc4
        .word   0xe3a04001
        .word   0xea000004
        .word   0xe3a04002
        .word   0xea000002
        .word   0xe3a04003
        .word   0xea000000
        .word   0xe3a04004
        .word   0xe59f509c
        .word   0xe59fc09c
        .word   0xe59f809c
        .word   0xe59f609c
        .word   0xe5957000
        .word   0xe1a07827
        .word   0xe1a07807
        .word   0xe1833007
        .word   0xe1837404
        .word   0xe5857000
        .word   0xe5d2364c
        .word   0xe59c4000
        .word   0xe5985000
        .word   0xe3530000
        .word   0xe2843004
        .word   0x0a000002
        .word   0xe5d2864d
        .word   0xe3580000
        .word   0x0a00000d
        .word   0xe5d2700c
        .word   0xe3570000
        .word   0x11550004
        .word   0x9a000004
        .word   0xe59f5050
        .word   0xe2837004
        .word   0xe5845000
        .word   0xe5836000
        .word   0xe58c7000
        .word   0xe2822b01
        .word   0xe2822f8a
        .word   0xe8820003
L65fe54:
        .word   0xe8bd01f0
        .word   0xe12fff1e
        .word   0xe1540005
        .word   0x2afffff8
        .word   0xe5847000
        .word   0xe2835004
        .word   0xe5836000
        .word   0xe58c5000
        .word   0xeafffff3
L65fe78:
        .word   0x008ab81c
        .word   0x008ab820
        .word   0x008ab4f8
        .word   0x008ab4fc
        .word   0x00030101
        .word   0x01010000
        .size   A_65fd10, . - A_65fd10

@ FUN_0065fe90
        .global A_65fe90
        .type   A_65fe90, %function
A_65fe90:
        mov     r3, r1
        mov     r2, r0
        mov     r0, r0
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        ldr     ip, L660318
        ldr     r7, [ip]
        mov     ip, #0
        mov     r4, ip
        mov     r5, ip
        ldr     r8, [r7, #0x618]
        mov     r6, ip
        cmp     r8, r0
        ldreq   r8, [r7, #0x620]
        cmpeq   r8, r1
        bne     L65fee8
        ldr     r8, [r7, #0x61c]
        cmp     r8, r2
        ldreq   r8, [r7, #0x624]
        cmpeq   r8, r3
        ldrbeq  r8, [r7, #0xc]
        cmpeq   r8, #0
        beq     L65ff40
L65fee8:
        ldr     sb, L66031c
        ldr     sl, L660320
        cmp     r0, sb
        sub     r8, sb, #4
        sub     fp, r0, sb
        moveq   ip, #9
        beq     L65ffa8
        bge     L65ff6c
        cmp     r0, r8
        sub     fp, r0, #0x300
        sub     fp, fp, #1
        moveq   ip, #3
        beq     L65ffa8
        bge     L65ff44
        cmp     r0, #0
        beq     L65ffa8
        cmp     r0, #1
        moveq   ip, #1
        beq     L65ffa8
        cmp     r0, #0x300
        moveq   ip, #2
        beq     L65ffa8
L65ff40:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65ff44:
        cmp     fp, #1
        moveq   ip, #6
        beq     L65ffa8
        cmp     fp, #2
        moveq   ip, #7
        beq     L65ffa8
        cmp     fp, #3
        moveq   ip, #8
        beq     L65ffa8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65ff6c:
        sub     ip, fp, #0x7c00
        cmp     fp, sl
        sub     ip, ip, #0xfc
        moveq   ip, #0xa
        beq     L65ffa8
        bge     L65fffc
        cmp     fp, #1
        moveq   ip, #4
        beq     L65ffa8
        cmp     fp, #2
        moveq   ip, #5
        beq     L65ffa8
        cmp     fp, #3
        moveq   ip, #0xe
        bne     L65ff40
L65ffa8:
        cmp     r1, sb
        sub     fp, r1, #0x300
        sub     fp, fp, #5
        moveq   r4, #9
        beq     L660088
        bge     L66004c
        cmp     r1, r8
        sub     fp, r1, #0x300
        sub     fp, fp, #1
        moveq   r4, #3
        beq     L660088
        bge     L660024
        cmp     r1, #0
        beq     L660088
        cmp     r1, #1
        moveq   r4, #1
        beq     L660088
        cmp     r1, #0x300
        moveq   r4, #2
        beq     L660088
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L65fffc:
        cmp     ip, #1
        moveq   ip, #0xb
        beq     L65ffa8
        cmp     ip, #2
        moveq   ip, #0xc
        beq     L65ffa8
        cmp     ip, #3
        moveq   ip, #0xd
        beq     L65ffa8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L660024:
        cmp     fp, #1
        moveq   r4, #6
        beq     L660088
        cmp     fp, #2
        moveq   r4, #7
        beq     L660088
        cmp     fp, #3
        moveq   r4, #8
        beq     L660088
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L66004c:
        sub     r4, fp, #0x7c00
        cmp     fp, sl
        sub     r4, r4, #0xfc
        moveq   r4, #0xa
        beq     L660088
        bge     L6600dc
        cmp     fp, #1
        moveq   r4, #4
        beq     L660088
        cmp     fp, #2
        moveq   r4, #5
        beq     L660088
        cmp     fp, #3
        moveq   r4, #0xe
        bne     L65ff40
L660088:
        cmp     r2, sb
        sub     fp, r2, #0x300
        sub     fp, fp, #5
        moveq   r5, #9
        beq     L660168
        bge     L66012c
        cmp     r2, r8
        sub     fp, r2, #0x300
        sub     fp, fp, #1
        moveq   r5, #3
        beq     L660168
        bge     L660104
        cmp     r2, #0
        beq     L660168
        cmp     r2, #1
        moveq   r5, #1
        beq     L660168
        cmp     r2, #0x300
        moveq   r5, #2
        beq     L660168
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6600dc:
        cmp     r4, #1
        moveq   r4, #0xb
        beq     L660088
        cmp     r4, #2
        moveq   r4, #0xc
        beq     L660088
        cmp     r4, #3
        moveq   r4, #0xd
        beq     L660088
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L660104:
        cmp     fp, #1
        moveq   r5, #6
        beq     L660168
        cmp     fp, #2
        moveq   r5, #7
        beq     L660168
        cmp     fp, #3
        moveq   r5, #8
        beq     L660168
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L66012c:
        sub     r5, fp, #0x7c00
        cmp     fp, sl
        sub     r5, r5, #0xfc
        moveq   r5, #0xa
        beq     L660168
        bge     L6601bc
        cmp     fp, #1
        moveq   r5, #4
        beq     L660168
        cmp     fp, #2
        moveq   r5, #5
        beq     L660168
        cmp     fp, #3
        moveq   r5, #0xe
        bne     L65ff40
L660168:
        cmp     r3, sb
        sub     fp, r3, #0x300
        sub     fp, fp, #5
        moveq   r6, #9
        beq     L660248
        bge     L66020c
        cmp     r3, r8
        sub     sb, r3, #0x300
        sub     sb, sb, #1
        moveq   r6, #3
        beq     L660248
        bge     L6601e4
        cmp     r3, #0
        beq     L660248
        cmp     r3, #1
        moveq   r6, #1
        beq     L660248
        cmp     r3, #0x300
        moveq   r6, #2
        beq     L660248
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6601bc:
        cmp     r5, #1
        moveq   r5, #0xb
        beq     L660168
        cmp     r5, #2
        moveq   r5, #0xc
        beq     L660168
        cmp     r5, #3
        moveq   r5, #0xd
        beq     L660168
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6601e4:
        cmp     sb, #1
        moveq   r6, #6
        beq     L660248
        cmp     sb, #2
        moveq   r6, #7
        beq     L660248
        cmp     sb, #3
        moveq   r6, #8
        beq     L660248
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L66020c:
        sub     r6, fp, #0x7c00
        cmp     fp, sl
        sub     r6, r6, #0xfc
        moveq   r6, #0xa
        beq     L660248
        bge     L6602d4
        cmp     fp, #1
        moveq   r6, #4
        beq     L660248
        cmp     fp, #2
        moveq   r6, #5
        beq     L660248
        cmp     fp, #3
        moveq   r6, #0xe
        bne     L65ff40
L660248:
        ldr     sl, L660324
        ldr     r8, L660328
        ldr     fp, L66032c
        ldr     sb, L660330
        ldr     lr, [sl]
        uxth    lr, lr
        orr     ip, lr, ip, lsl #16
        orr     ip, ip, r4, lsl #20
        orr     ip, ip, r5, lsl #24
        orr     ip, ip, r6, lsl #28
        str     ip, [sl]
        add     sl, r7, #0x400
        add     sl, sl, #0x218
        stm     sl, {r0, r2}
        add     sl, r7, #0x620
        stm     sl, {r1, r3}
        ldrb    r0, [r7, #0x64c]
        ldr     r1, [r8]
        ldr     r2, [fp]
        cmp     r0, #0
        add     r0, r1, #4
        beq     L6602ac
        ldrb    r3, [r7, #0x64d]
        cmp     r3, #0
        beq     L6602fc
L6602ac:
        ldrb    r3, [r7, #0xc]
        cmp     r3, #0
        cmpne   r2, r1
        bls     L65ff40
        ldr     r2, L660334
        add     r3, r0, #4
        str     r2, [r1]
        str     sb, [r0]
        str     r3, [r8]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6602d4:
        cmp     r6, #1
        moveq   r6, #0xb
        beq     L660248
        cmp     r6, #2
        moveq   r6, #0xc
        beq     L660248
        cmp     r6, #3
        moveq   r6, #0xd
        beq     L660248
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L6602fc:
        cmp     r1, r2
        bhs     L65ff40
        str     ip, [r1]
        add     r2, r0, #4
        str     sb, [r0]
        str     r2, [r8]
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L660318:
        .word   0x008ab81c
L66031c:
        .word   0x00000305
L660320:
        .word   0x00007cfc
L660324:
        .word   0x008ab820
L660328:
        .word   0x008ab4f8
L66032c:
        .word   0x008ab4fc
L660330:
        .word   0x000c0101
L660334:
        .word   0x01010000
        .size   A_65fe90, . - A_65fe90

@ FUN_00660498
        .global A_660498
        .type   A_660498, %function
A_660498:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x24
        mov     ip, r2
        mov     sl, r0
        add     r0, sp, #0x50
        mov     r5, r1
        ldm     r0, {r7, r8}
        mov     sb, r3
        ldr     r0, L660644
        ldr     r6, [sp, #0x48]
        add     r2, sp, #0x20
        add     r1, sp, #0x1c
        ldr     r4, [r0]
        mov     r0, ip
        bl      Fn_675ca8
        lsr     r0, sl, #0x10
        ldr     r2, L660648
        lsl     r0, r0, #0x10
        tst     r0, #0xff000000
        uxth    r3, sl
        orreq   r0, r0, #0x1000000
        tst     r0, #0xff0000
        ldr     r1, L66064c
        ldr     sl, L660650
        orreq   r0, r0, #0x10000
        cmp     r3, r2
        sub     ip, r3, r2
        rsb     r2, r5, #0
        beq     L660544
        bge     L660534
        sub     ip, r3, #0xd00
        subs    ip, ip, #0xe1
        beq     L6605c0
        sub     ip, ip, #0x7400
        subs    ip, ip, #0x334
        cmpne   ip, #1
        beq     L660544
L66052c:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L660534:
        cmp     ip, #1
        cmpne   ip, #2
        cmpne   ip, #3
        bne     L66052c
L660544:
        ldr     ip, [r4, #0x58]
        ldr     r1, [r1]
        add     fp, r4, ip, lsl #2
        ldr     fp, [fp, #0x68]
        cmp     fp, #0
        ldreq   ip, [r1, #4]
        beq     L66056c
        add     r1, r1, ip, lsl #2
        ldr     r1, [r1, #0x81c]
        ldr     ip, [r1]
L66056c:
        ldrb    r1, [sp, #0x20]
        str     r0, [sp, #0x18]
        ldr     r0, [sp, #0x1c]
        str     r1, [sp, #0x14]
        add     r1, sp, #4
        str     r7, [sp, #0x10]
        str     r8, [sp, #0xc]
        str     r6, [sp]
        stm     r1, {r0, sl}
        add     r1, r3, r3, lsl #4
        ldr     r0, L660654
        add     r1, ip, r1, lsl #2
        cmp     r5, #0
        add     r1, r1, r0
        moveq   r2, #1
        mov     r3, sb
        mov     r0, ip
        bl      Fn_675e00
        nop
        nop
        b       L66061c
L6605c0:
        ldr     r3, [r4, #0x58]
        ldr     r1, [r1]
        add     ip, r4, r3, lsl #2
        ldr     ip, [ip, #0x5c]
        cmp     ip, #0
        addne   r1, r1, r3, lsl #2
        mov     r3, sb
        ldrne   r1, [r1, #0x810]
        cmp     r5, #0
        moveq   r2, #1
        ldr     ip, [r1]
        ldrb    r1, [sp, #0x20]
        str     r0, [sp, #0x18]
        ldr     r0, [sp, #0x1c]
        str     r1, [sp, #0x14]
        add     r1, sp, #4
        str     r7, [sp, #0x10]
        str     r8, [sp, #0xc]
        str     r6, [sp]
        stm     r1, {r0, sl}
        add     r1, ip, #0x34
        mov     r0, ip
        bl      Fn_675e00
L66061c:
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
L660644:
        .word   0x008ab81c
L660648:
        .word   0x00008517
L66064c:
        .word   0x008ab848
L660650:
        .word   0x00001401
L660654:
        .word   0xffdca6a0
        .size   A_660498, . - A_660498

@ FUN_00661fbc
        .global A_661fbc
        .type   A_661fbc, %function
A_661fbc:
        push    {r4, r5, r6}
        sub     r6, r0, #0xd00
        ldr     r3, L6621cc
        ldr     r0, L6621d8
        ldr     r4, L6621d4
        ldr     r5, L6621d0
        ldr     r3, [r3]
        ldr     r0, [r0]
        subs    r6, r6, #0xe1
        sub     ip, r1, r4
        beq     L662054
        sub     r6, r6, #0x7700
        subs    r6, r6, #0x32
        bne     L66204c
        ldr     r6, [r0, #0x58]
        add     r0, r0, r6, lsl #2
        ldr     r0, [r0, #0x68]
        cmp     r0, #0
        addne   r0, r3, r6, lsl #2
        ldrne   r0, [r0, #0x81c]
        ldrne   r0, [r0]
        ldreq   r0, [r3, #4]
        cmp     r1, r5
        bne     L662148
        ldr     r1, [r0, #0x34]
        str     r1, [r2]
        ldr     r1, [r0, #0x78]
        str     r1, [r2, #4]
        ldr     r1, [r0, #0xbc]
        str     r1, [r2, #8]
        ldr     r1, [r0, #0x100]
        str     r1, [r2, #0xc]
        ldr     r1, [r0, #0x144]
        str     r1, [r2, #0x10]
        ldr     r0, [r0, #0x188]
        str     r0, [r2, #0x14]
L66204c:
        pop     {r4, r5, r6}
        bx      lr
L662054:
        ldr     r6, [r0, #0x58]
        add     r0, r0, r6, lsl #2
        ldr     r0, [r0, #0x5c]
        cmp     r0, #0
        addne   r0, r3, r6, lsl #2
        ldrne   r0, [r0, #0x810]
        ldrne   r0, [r0]
        ldreq   r0, [r3]
        cmp     r1, r5
        ldreq   r0, [r0, #0x34]
        beq     L6621b8
        cmp     r1, r4
        beq     L6621c4
        bgt     L6620bc
        sub     r1, r1, #0x1000
        subs    r1, r1, #4
        beq     L6620f0
        sub     r1, r1, #0x1400
        subs    r1, r1, #0x3fc
        beq     L6620e0
        cmp     r1, #1
        ldreq   r0, [r0, #4]
        beq     L6621b8
        cmp     r1, #2
        bne     L66204c
        b       L6620e8
L6620bc:
        sub     r1, ip, #0x5900
        subs    r1, r1, #0x37
        beq     L662138
        cmp     r1, #0x57
        beq     L662140
        sub     r1, r1, #0x300
        subs    r1, r1, #0xc7
        bne     L66204c
        b       L6621ac
L6620e0:
        ldr     r0, [r0]
        b       L6621b8
L6620e8:
        ldr     r0, [r0, #8]
        b       L6621b8
L6620f0:
        vldr    s0, [r0, #0x18]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r2]
        vldr    s0, [r0, #0x1c]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r2, #4]
        vldr    s0, [r0, #0x20]
        vcvt.s32.f32 s0, s0
        vmov    r1, s0
        str     r1, [r2, #8]
        vldr    s0, [r0, #0x24]
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        str     r0, [r2, #0xc]
        pop     {r4, r5, r6}
        bx      lr
L662138:
        ldr     r0, [r0, #0x14]
        b       L6621b8
L662140:
        ldrb    r0, [r0, #0x30]
        b       L6621b8
L662148:
        cmp     r1, r4
        beq     L6621c4
        bgt     L66218c
        sub     r1, r1, #0x1000
        subs    r1, r1, #4
        beq     L6620f0
        sub     r1, r1, #0x1400
        subs    r1, r1, #0x3fc
        beq     L6620e0
        cmp     r1, #1
        ldreq   r0, [r0, #4]
        streq   r0, [r2]
        beq     L66204c
        cmp     r1, #2
        beq     L6620e8
        pop     {r4, r5, r6}
        bx      lr
L66218c:
        sub     r1, ip, #0x5900
        subs    r1, r1, #0x37
        beq     L662138
        cmp     r1, #0x57
        beq     L662140
        sub     r1, r1, #0x300
        subs    r1, r1, #0xc7
        bne     L66204c
L6621ac:
        vldr    s0, [r0, #0x28]
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
L6621b8:
        str     r0, [r2]
        pop     {r4, r5, r6}
        bx      lr
L6621c4:
        ldr     r0, [r0, #0xc]
        b       L6621b8
L6621cc:
        .word   0x008ab848
L6621d0:
        .word   0x00006790
L6621d4:
        .word   0x00002803
L6621d8:
        .word   0x008ab81c
        .size   A_661fbc, . - A_661fbc

@ FUN_006866b8
        .global A_6866b8
        .type   A_6866b8, %function
A_6866b8:
        push    {r4, r5, r6, lr}
        cmp     r1, #9
        mov     r5, r2
        vpush   {d8}
        beq     L686728
        cmp     r1, #0xa
        movne   r0, #0
        bne     L686720
        ldr     r4, [r2]
        vldr    s16, [r5, #8]
        ldr     r0, [r4, #0x3c]
        cmp     r0, #0
        beq     L6866f8
        ldr     r1, [r0]
        ldr     r1, [r1, #0x24]
        blx     r1
L6866f8:
        vmov    s0, r0
        vldr    s1, [r4, #0x54]
        vldr    s2, [r4, #0x28]
        mov     r0, #3
        vcvt.f32.s32 s0, s0
        vmla.f32 s1, s0, s2
        vldr    s0, [r4, #0x30]
        vstr    s16, [r4, #0x2c]
        vadd.f32 s0, s1, s0
        vstr    s0, [r4, #0x30]
L686720:
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L686728:
        ldr     r4, [r5]
        ldr     r6, [r4, #0x58]
        cmp     r6, #0
        ble     L686784
        ldrb    r0, [r4, #0x48]
        cmp     r0, #0
        vldrne  s0, [r4, #0x38]
        moveq   r0, r4
        bleq    Fn_63bb94
        vmov    s2, r6
        vldr    s3, [r4, #0x2c]
        vldr    s1, [r5, #8]
        vcvt.f32.s32 s2, s2
        vmul.f32 s0, s2, s0
        vsub.f32 s2, s3, s1
        vdiv.f32 s3, s2, s0
        vcvt.s32.f32 s2, s3
        vmov    r0, s2
        add     r0, r0, #1
        vmov    s2, r0
        vcvt.f32.s32 s2, s2
        vmla.f32 s1, s0, s2
        vstr    s1, [r4, #0x2c]
L686784:
        mov     r0, #1
        vpop    {d8}
        pop     {r4, r5, r6, pc}
        .size   A_6866b8, . - A_6866b8

@ FUN_00686790
        .global A_686790
        .type   A_686790, %function
A_686790:
        push    {r4, r5, r6, r7, r8, lr}
        cmp     r2, #9
        mov     r4, r1
        mov     r5, r3
        vpush   {d8}
        vldr    s16, L68695c
        beq     L68687c
        cmp     r2, #0xa
        movne   r0, #0
        bne     L686874
        ldr     r7, [r5]
        ldr     r0, [r7, #0x2c]
        str     r0, [r4, #8]
        ldr     r0, [r7, #0x30]
        str     r0, [r4, #4]
        ldr     r6, [r5]
        vldr    s17, [r5, #8]
        ldr     r0, [r6, #0x3c]
        cmp     r0, #0
        beq     L6867ec
        ldr     r1, [r0]
        ldr     r1, [r1, #0x24]
        blx     r1
L6867ec:
        vmov    s0, r0
        vldr    s1, [r6, #0x54]
        vldr    s2, [r6, #0x28]
        vcvt.f32.s32 s0, s0
        vmla.f32 s1, s0, s2
        vldr    s0, [r6, #0x30]
        vstr    s17, [r6, #0x2c]
        vadd.f32 s0, s1, s0
        vstr    s0, [r6, #0x30]
        ldr     r0, [r7, #0x2c]
        str     r0, [r4]
        ldr     r0, [r5]
        bl      Fn_63bbec
        vldr    s1, [r7, #0x30]
        vadd.f32 s0, s0, s1
        vstr    s0, [r4, #0xc]
        vldmia  r4, {s1, s2, s3}
        vsub.f32 s4, s3, s1
        vcmpe.f32 s4, s16
        vmrs    apsr_nzcv, fpscr
        vmovge  r0, s1
        vmovlt  r0, s3
        vmovge.f32 s1, s3
        vsub.f32 s3, s0, s2
        str     r0, [r4]
        vstr    s1, [r4, #8]
        vcmpe.f32 s3, s16
        vmrs    apsr_nzcv, fpscr
        vmovlt  r0, s0
        vmovge  r0, s2
        vmovlt.f32 s0, s2
        str     r0, [r4, #4]
        mov     r0, #3
        vstr    s0, [r4, #0xc]
L686874:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L68687c:
        ldr     r7, [r5]
        ldr     r0, [r7, #0x2c]
        str     r0, [r4]
        ldr     r6, [r5]
        ldr     r8, [r6, #0x58]
        cmp     r8, #0
        ble     L6868e4
        ldrb    r0, [r6, #0x48]
        cmp     r0, #0
        vldrne  s0, [r6, #0x38]
        moveq   r0, r6
        bleq    Fn_63bb94
        vmov    s2, r8
        vldr    s3, [r6, #0x2c]
        vldr    s1, [r5, #8]
        vcvt.f32.s32 s2, s2
        vmul.f32 s0, s2, s0
        vsub.f32 s2, s3, s1
        vdiv.f32 s3, s2, s0
        vcvt.s32.f32 s2, s3
        vmov    r0, s2
        add     r0, r0, #1
        vmov    s2, r0
        vcvt.f32.s32 s2, s2
        vmla.f32 s1, s0, s2
        vstr    s1, [r6, #0x2c]
L6868e4:
        ldr     r0, [r7, #0x2c]
        str     r0, [r4, #8]
        ldr     r0, [r7, #0x30]
        str     r0, [r4, #4]
        mov     r0, r7
        bl      Fn_63bbec
        vldr    s1, [r4, #4]
        vadd.f32 s0, s0, s1
        vstr    s0, [r4, #0xc]
        vldr    s2, [r4]
        vldr    s3, [r4, #8]
        vsub.f32 s4, s3, s2
        vcmpe.f32 s4, s16
        vmrs    apsr_nzcv, fpscr
        vmovge  r0, s2
        vmovlt  r0, s3
        vmovge.f32 s2, s3
        vsub.f32 s3, s0, s1
        str     r0, [r4]
        vstr    s2, [r4, #8]
        vcmpe.f32 s3, s16
        vmrs    apsr_nzcv, fpscr
        vmovlt  r0, s0
        vmovlt.f32 s0, s1
        vmovge  r0, s1
        str     r0, [r4, #4]
        vstr    s0, [r4, #0xc]
        mov     r0, #1
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L68695c:
        .word   0x00000000
        .size   A_686790, . - A_686790

@ FUN_00686964
        .global A_686964
        .type   A_686964, %function
A_686964:
        push    {r4, r5, r6, lr}
        cmp     r1, #9
        mov     r5, r2
        vpush   {d8}
        beq     L6869d4
        cmp     r1, #0xa
        movne   r0, #0
        bne     L6869cc
        ldr     r4, [r2]
        vldr    s16, [r5, #8]
        ldr     r0, [r4, #0x3c]
        cmp     r0, #0
        beq     L6869a4
        ldr     r1, [r0]
        ldr     r1, [r1, #0x24]
        blx     r1
L6869a4:
        vmov    s0, r0
        vldr    s1, [r4, #0x54]
        vldr    s2, [r4, #0x28]
        mov     r0, #3
        vcvt.f32.s32 s0, s0
        vmla.f32 s1, s0, s2
        vldr    s0, [r4, #0x30]
        vstr    s16, [r4, #0x2c]
        vadd.f32 s0, s1, s0
        vstr    s0, [r4, #0x30]
L6869cc:
        vpop    {d8}
        pop     {r4, r5, r6, pc}
L6869d4:
        ldr     r4, [r5]
        ldr     r6, [r4, #0x58]
        cmp     r6, #0
        ble     L686a30
        ldrb    r0, [r4, #0x48]
        cmp     r0, #0
        vldrne  s0, [r4, #0x38]
        moveq   r0, r4
        bleq    Fn_63bb94
        vmov    s2, r6
        vldr    s3, [r4, #0x2c]
        vldr    s1, [r5, #8]
        vcvt.f32.s32 s2, s2
        vmul.f32 s0, s2, s0
        vsub.f32 s2, s3, s1
        vdiv.f32 s3, s2, s0
        vcvt.s32.f32 s2, s3
        vmov    r0, s2
        add     r0, r0, #1
        vmov    s2, r0
        vcvt.f32.s32 s2, s2
        vmla.f32 s1, s0, s2
        vstr    s1, [r4, #0x2c]
L686a30:
        mov     r0, #1
        vpop    {d8}
        pop     {r4, r5, r6, pc}
        .size   A_686964, . - A_686964

@ FUN_00686a3c
        .global A_686a3c
        .type   A_686a3c, %function
A_686a3c:
        push    {r4, r5, r6, r7, r8, lr}
        cmp     r2, #9
        mov     r4, r1
        mov     r5, r3
        vpush   {d8}
        vldr    s16, L686c08
        beq     L686b28
        cmp     r2, #0xa
        movne   r0, #0
        bne     L686b20
        ldr     r7, [r5]
        ldr     r0, [r7, #0x2c]
        str     r0, [r4, #8]
        ldr     r0, [r7, #0x30]
        str     r0, [r4, #4]
        ldr     r6, [r5]
        vldr    s17, [r5, #8]
        ldr     r0, [r6, #0x3c]
        cmp     r0, #0
        beq     L686a98
        ldr     r1, [r0]
        ldr     r1, [r1, #0x24]
        blx     r1
L686a98:
        vmov    s0, r0
        vldr    s1, [r6, #0x54]
        vldr    s2, [r6, #0x28]
        vcvt.f32.s32 s0, s0
        vmla.f32 s1, s0, s2
        vldr    s0, [r6, #0x30]
        vstr    s17, [r6, #0x2c]
        vadd.f32 s0, s1, s0
        vstr    s0, [r6, #0x30]
        ldr     r0, [r7, #0x2c]
        str     r0, [r4]
        ldr     r0, [r5]
        bl      Fn_63bbec
        vldr    s1, [r7, #0x30]
        vadd.f32 s0, s0, s1
        vstr    s0, [r4, #0xc]
        vldmia  r4, {s1, s2, s3}
        vsub.f32 s4, s3, s1
        vcmpe.f32 s4, s16
        vmrs    apsr_nzcv, fpscr
        vmovge  r0, s1
        vmovlt  r0, s3
        vmovge.f32 s1, s3
        vsub.f32 s3, s0, s2
        str     r0, [r4]
        vstr    s1, [r4, #8]
        vcmpe.f32 s3, s16
        vmrs    apsr_nzcv, fpscr
        vmovlt  r0, s0
        vmovge  r0, s2
        vmovlt.f32 s0, s2
        str     r0, [r4, #4]
        mov     r0, #3
        vstr    s0, [r4, #0xc]
L686b20:
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L686b28:
        ldr     r7, [r5]
        ldr     r0, [r7, #0x2c]
        str     r0, [r4]
        ldr     r6, [r5]
        ldr     r8, [r6, #0x58]
        cmp     r8, #0
        ble     L686b90
        ldrb    r0, [r6, #0x48]
        cmp     r0, #0
        vldrne  s0, [r6, #0x38]
        moveq   r0, r6
        bleq    Fn_63bb94
        vmov    s2, r8
        vldr    s3, [r6, #0x2c]
        vldr    s1, [r5, #8]
        vcvt.f32.s32 s2, s2
        vmul.f32 s0, s2, s0
        vsub.f32 s2, s3, s1
        vdiv.f32 s3, s2, s0
        vcvt.s32.f32 s2, s3
        vmov    r0, s2
        add     r0, r0, #1
        vmov    s2, r0
        vcvt.f32.s32 s2, s2
        vmla.f32 s1, s0, s2
        vstr    s1, [r6, #0x2c]
L686b90:
        ldr     r0, [r7, #0x2c]
        str     r0, [r4, #8]
        ldr     r0, [r7, #0x30]
        str     r0, [r4, #4]
        mov     r0, r7
        bl      Fn_63bbec
        vldr    s1, [r4, #4]
        vadd.f32 s0, s0, s1
        vstr    s0, [r4, #0xc]
        vldr    s2, [r4]
        vldr    s3, [r4, #8]
        vsub.f32 s4, s3, s2
        vcmpe.f32 s4, s16
        vmrs    apsr_nzcv, fpscr
        vmovge  r0, s2
        vmovlt  r0, s3
        vmovge.f32 s2, s3
        vsub.f32 s3, s0, s1
        str     r0, [r4]
        vstr    s2, [r4, #8]
        vcmpe.f32 s3, s16
        vmrs    apsr_nzcv, fpscr
        vmovlt  r0, s0
        vmovlt.f32 s0, s1
        vmovge  r0, s1
        str     r0, [r4, #4]
        vstr    s0, [r4, #0xc]
        mov     r0, #1
        vpop    {d8}
        pop     {r4, r5, r6, r7, r8, pc}
L686c08:
        .word   0x00000000
        .size   A_686a3c, . - A_686a3c

@ FUN_0068f3b8
        .global A_68f3b8
        .type   A_68f3b8, %function
A_68f3b8:
        mov     r2, #0x3f800000
        b       Fn_68f3d4
        .size   A_68f3b8, . - A_68f3b8

@ FUN_0068f668
        .global A_68f668
        .type   A_68f668, %function
A_68f668:
        asrs    r2, r0, #0x17
        lsl     r3, r0, #8
        orrne   r3, r3, #0x80000000
        bmi     L68f698
        rsbs    r2, r2, #0xbe
        blo     L68f6b0
        lsr     r1, r3, r2
        subs    ip, r2, #0x20
        lsrhs   r0, r3, ip
        rsblo   ip, r2, #0x20
        lsllo   r0, r3, ip
        bx      lr
L68f698:
        lsl     ip, r0, #1
        cmp     ip, #0x7f000000
        bhs     L68f6b0
        mov     r0, #0
        mov     r1, #0
        bx      lr
L68f6b0:
        push    {r4, lr}
        bl      Fn_68f418
        .size   A_68f668, . - A_68f668
