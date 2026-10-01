@ Generated from the retail image by tools/wrapgen/asmify.py (ctr-sdk): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text

@ FUN_0064ec54
        .global A_64ec54
        .type   A_64ec54, %function
A_64ec54:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mvn     r0, #0
        sub     sp, sp, #0xc
        mov     r1, r0
        ldr     r5, L64ee6c
        mov     r2, #0
        mov     r7, #0x87
        mov     r8, #0xa
        strd    r0, r1, [r5, #0x60]
        add     r0, r5, #0x68
        mov     r1, #8
        str     r2, [r0]
        str     r2, [r0, #4]
        ldr     r0, L64ee70
        mov     r2, #2
        mov     r3, r8
        mov     ip, #0xe
        strb    r7, [r0]
        strb    r1, [r0, #1]
        add     r1, r0, #4
        strb    r8, [r0, #2]
        mov     lr, #4
        strb    r2, [r0, #3]
        stm     r1, {r3, ip, lr}
        mov     r6, #0x64
        strb    lr, [r0, #0x10]
        strb    r6, [r0, #0x11]
        strb    r8, [r0, #0x12]
        ldm     r0, {r1, r2, r3, ip, lr}
        add     r0, r0, #0x14
        mov     r4, #0
        stm     r0, {r1, r2, r3, ip, lr}
        add     r0, r5, #0x24
        mov     r1, #1
        str     r4, [r0]
        strb    r1, [r0, #4]
        ldr     r2, L64ee74
        ldr     r1, L64ee78
        mov     r0, r0
        ldr     ip, L64ee7c
        mov     r1, #0
        mov     r2, r1
        mov     r3, r1
        strd    r2, r3, [ip]
        add     r0, ip, #8
        strd    r2, r3, [r0]
        str     r4, [ip, #0x10]
        mvn     lr, #0
        asr     r6, lr, #0x1f
L64ed18:
        ldrexd  r0, r1, [ip]
        mov     r0, lr
        mov     r1, r6
        strexd  r3, r0, r1, [ip]
        cmp     r3, #0
        bne     L64ed18
        mvn     lr, #0
        add     r6, ip, #8
        asr     r3, lr, #0x1f
L64ed3c:
        ldrexd  r0, r1, [r6]
        mov     r0, lr
        mov     r1, r3
        strexd  r2, r0, r1, [r6]
        cmp     r2, #0
        bne     L64ed3c
        mvn     r2, #0
        add     r3, ip, #0x10
L64ed5c:
        ldrex   lr, [r3]
        strex   lr, r2, [r3]
        cmp     lr, #0
        bne     L64ed5c
        mov     lr, ip
        str     r4, [ip, #0x18]!
        str     r4, [ip, #4]
        str     r4, [ip, #8]
        strb    r4, [ip, #0xc]
        strb    r4, [ip, #0xd]
        strh    r4, [ip, #0x10]
        strh    r4, [ip, #0x12]
        strh    r4, [ip, #0x14]
        strh    r4, [ip, #0x16]
        ldr     r1, L64ee80
        mov     r3, #8
        mov     r2, #0x18
        add     r0, lr, #0x30
        blx     Fn_0000ac
        ldr     r0, L64ee84
        ldr     r6, L64ee88
        ldr     r2, L64ee74
        ldr     r1, L64ee8c
        str     r4, [r0, #4]
        str     r4, [r0, #8]
        str     r4, [r0, #0xc]
        str     r6, [r0]
        str     r4, [r0, #0x10]
        mov     r0, r0
        ldr     r0, L64ee90
        ldr     r2, L64ee74
        ldr     r1, L64ee8c
        str     r4, [r0, #4]
        str     r4, [r0, #8]
        str     r4, [r0, #0xc]
        str     r6, [r0]
        str     r4, [r0, #0x10]
        mov     r0, r0
        ldr     r0, L64ee94
        str     r4, [r0]
        str     r4, [r0, #4]
        ldr     r2, L64ee74
        ldr     r1, L64ee98
        mov     r0, r0
        ldr     r0, L64ee9c
        mov     r1, #0
        vldr    s0, L64eeb0
        strd    r0, r1, [r5, #0x38]
        ldr     r0, L64eea0
        strd    r0, r1, [r5, #0x40]
        ldr     r0, L64eea4
        strd    r0, r1, [r5, #0x48]
        ldr     r0, L64eea8
        strd    r0, r1, [r5, #0x50]
        ldr     r0, L64eeac
        strd    r0, r1, [r5, #0x58]
        add     r1, sp, #4
        mov     r0, sp
        bl      Fn_01c6d4
        vldmia  sp, {s1, s2}
        vdiv.f32 s0, s1, s2
        vldr    s1, L64eeb4
        vmul.f32 s0, s0, s1
        vcvt.s32.f32 s0, s0
        vmov    r0, s0
        str     r0, [r5, #0x20]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, pc}
L64ee6c:
        .word   0x008bb928
L64ee70:
        .word   0x00a767e8
L64ee74:
        .word   0x00100000
L64ee78:
        .word   0x005f64dc
L64ee7c:
        .word   0x00a76c10
L64ee80:
        .word   0x0063b148
L64ee84:
        .word   0x00a76d18
L64ee88:
        .word   0x0082c2fc
L64ee8c:
        .word   0x00617c34
L64ee90:
        .word   0x00a76d2c
L64ee94:
        .word   0x008bb954
L64ee98:
        .word   0x005f4570
L64ee9c:
        .word   0x3b9aca00
L64eea0:
        .word   0x01312d00
L64eea4:
        .word   0x1ad27480
L64eea8:
        .word   0x77359400
L64eeac:
        .word   0x05f5e100
L64eeb0:
        .word   0x422aaaab
L64eeb4:
        .word   0x43800000
        .size   A_64ec54, . - A_64ec54

@ FUN_00669ddc
        .global A_669ddc
        .type   A_669ddc, %function
A_669ddc:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        add     r1, r0, #0x2c
L669de8:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L669de8
        str     r0, [sp]
L669e00:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x28]
        cmp     r0, #0
        ble     L669e84
        ldr     r0, [r4, #0x24]
        ldr     r1, [r4]
        ldr     r6, [r1, r0, lsl #2]
        ldr     r1, [r4, #0x20]
        add     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x24]
        ldr     r0, [r4, #0x28]
        sub     r1, r0, #1
        str     r1, [r4, #0x28]
        ldr     r1, [r4, #0x30]
        cmp     r1, #0
        ble     L669e58
        mov     r1, #1
        add     r0, r4, #0xc
        bl      Fn_01b58c
L669e58:
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x2c
L669e64:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L669e64
        str     r0, [sp]
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L669e84:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #4
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L669e00
        .size   A_669ddc, . - A_669ddc

@ FUN_00669ea4
        .global A_669ea4
        .type   A_669ea4, %function
A_669ea4:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        add     r1, r0, #0x30
L669eb4:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L669eb4
        str     r0, [sp]
L669ecc:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x20]
        ldr     r1, [r4, #0x28]
        cmp     r0, r1
        bls     L669f50
        add     r2, r4, #0x20
        mov     r3, r1
        ldm     r2, {r1, r2}
        add     r0, r2, r3
        bl      Fn_022d48
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x28]
        add     r1, r0, #1
        str     r1, [r4, #0x28]
        ldr     r1, [r4, #0x2c]
        cmp     r1, #0
        ble     L669f28
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L669f28:
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x30
L669f34:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L669f34
        str     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L669f50:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #0xc
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L669ecc
        .size   A_669ea4, . - A_669ea4

@ FUN_00669f70
        .global A_669f70
        .type   A_669f70, %function
A_669f70:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        add     r1, r0, #0x2c
L669f7c:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L669f7c
        str     r0, [sp]
L669f94:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x28]
        cmp     r0, #0
        ble     L669fe4
        ldr     r0, [r4, #0x24]
        ldr     r1, [r4]
        ldr     r6, [r1, r0, lsl #2]
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x2c
L669fc4:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L669fc4
        str     r0, [sp]
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L669fe4:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #4
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L669f94
        .size   A_669f70, . - A_669f70

@ FUN_0066a048
        .global A_66a048
        .type   A_66a048, %function
A_66a048:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        add     r1, r0, #0x30
L66a058:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L66a058
        str     r0, [sp]
L66a070:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x20]
        ldr     r1, [r4, #0x28]
        cmp     r0, r1
        bls     L66a0f8
        add     r1, r4, #0x20
        ldm     r1, {r1, r2}
        add     r0, r2, r1
        sub     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x24]
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x28]
        add     r1, r0, #1
        str     r1, [r4, #0x28]
        ldr     r1, [r4, #0x2c]
        cmp     r1, #0
        ble     L66a0d0
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L66a0d0:
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x30
L66a0dc:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L66a0dc
        str     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L66a0f8:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #0xc
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L66a070
        .size   A_66a048, . - A_66a048

@ FUN_00684ac4
        .global A_684ac4
        .type   A_684ac4, %function
A_684ac4:
        push    {r4, r5, r6, lr}
        mov     r3, #0
        str     r1, [r0]
        strd    r2, r3, [r0, #0x20]
        add     r1, r0, #0x2c
        str     r3, [r0, #0x28]
L684adc:
        ldrex   ip, [r1]
        strex   lr, r3, [r1]
        cmp     lr, #0
        bne     L684adc
        mov     r1, #0
        add     r2, r0, #0x30
L684af4:
        ldrex   ip, [r2]
        strex   r4, r1, [r2]
        cmp     r4, #0
        bne     L684af4
        ldr     ip, L684b80
        add     lr, r0, #4
        mov     r2, #0
        mov     r1, lr
L684b14:
        ldrex   r4, [r1]
        strex   r6, r2, [r1]
        cmp     r6, #0
        bne     L684b14
        add     r1, lr, #4
L684b28:
        ldrexh  r2, [r1]
        sxth    r2, r3
        strexh  r5, r2, [r1]
        cmp     r5, #0
        bne     L684b28
        mov     r2, #0
        add     r1, r0, #0xc
        strh    ip, [lr, #6]
L684b48:
        ldrex   r4, [r1]
        strex   r5, r2, [r1]
        cmp     r5, #0
        bne     L684b48
        add     r2, r1, #4
L684b5c:
        ldrexh  lr, [r2]
        sxth    lr, r3
        strexh  r5, lr, [r2]
        cmp     r5, #0
        bne     L684b5c
        strh    ip, [r1, #6]
        pop     {r4, r5, r6, lr}
        add     r0, r0, #0x14
        b       Fn_01b624
L684b80:
        .word   0x00007fff
        .size   A_684ac4, . - A_684ac4

@ FUN_00684ca0
        .global A_684ca0
        .type   A_684ca0, %function
A_684ca0:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        add     r1, r0, #0x30
L684cb0:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684cb0
        str     r0, [sp]
L684cc8:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x20]
        ldr     r1, [r4, #0x28]
        cmp     r0, r1
        bls     L684d50
        add     r1, r4, #0x20
        ldm     r1, {r1, r2}
        add     r0, r2, r1
        sub     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x24]
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x28]
        add     r1, r0, #1
        str     r1, [r4, #0x28]
        ldr     r1, [r4, #0x2c]
        cmp     r1, #0
        ble     L684d28
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L684d28:
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x30
L684d34:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684d34
        str     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L684d50:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #0xc
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L684cc8
        .size   A_684ca0, . - A_684ca0

@ FUN_00684d70
        .global A_684d70
        .type   A_684d70, %function
A_684d70:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        add     r1, r0, #0x2c
L684d7c:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684d7c
        str     r0, [sp]
L684d94:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x28]
        cmp     r0, #0
        ble     L684e18
        ldr     r0, [r4, #0x24]
        ldr     r1, [r4]
        ldr     r6, [r1, r0, lsl #2]
        ldr     r1, [r4, #0x20]
        add     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x24]
        ldr     r0, [r4, #0x28]
        sub     r1, r0, #1
        str     r1, [r4, #0x28]
        ldr     r1, [r4, #0x30]
        cmp     r1, #0
        ble     L684dec
        mov     r1, #1
        add     r0, r4, #0xc
        bl      Fn_01b58c
L684dec:
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x2c
L684df8:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684df8
        str     r0, [sp]
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L684e18:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #4
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L684d94
        .size   A_684d70, . - A_684d70

@ FUN_00684e4c
        .global A_684e4c
        .type   A_684e4c, %function
A_684e4c:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        add     r1, r0, #0x30
L684e5c:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684e5c
        str     r0, [sp]
L684e74:
        add     r5, r4, #0x14
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r4, #0x20]
        ldr     r1, [r4, #0x28]
        cmp     r0, r1
        bls     L684ef8
        add     r2, r4, #0x20
        mov     r3, r1
        ldm     r2, {r1, r2}
        add     r0, r2, r3
        bl      Fn_022d48
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x28]
        add     r1, r0, #1
        str     r1, [r4, #0x28]
        ldr     r1, [r4, #0x2c]
        cmp     r1, #0
        ble     L684ed0
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L684ed0:
        mov     r0, r5
        bl      Fn_024568
        add     r1, r4, #0x30
L684edc:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684edc
        str     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L684ef8:
        mov     r0, r5
        bl      Fn_024568
        add     r0, r4, #0xc
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L684e74
        .size   A_684e4c, . - A_684e4c

@ FUN_00684f70
        .global A_684f70
        .type   A_684f70, %function
A_684f70:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        add     r1, r0, #0x28
L684f80:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L684f80
        str     r0, [sp]
L684f98:
        mvn     r2, #0
        ldr     r0, [r4, #0x14]
        add     r5, r4, #0x14
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r0, [r4, #0x20]
        ldr     r1, [r4, #0x18]
        cmp     r1, r0
        bls     L685040
        add     r1, r4, #0x18
        ldm     r1, {r1, r2}
        add     r0, r2, r1
        sub     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x1c]
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x20]
        add     r1, r0, #1
        str     r1, [r4, #0x20]
        ldr     r1, [r4, #0x24]
        cmp     r1, #0
        ble     L68500c
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L68500c:
        ldr     r0, [r5]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r1, r4, #0x28
L685024:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L685024
        str     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L685040:
        ldr     r0, [r5]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r0, r4, #0xc
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L684f98
        .size   A_684f70, . - A_684f70

@ FUN_0068506c
        .global A_68506c
        .type   A_68506c, %function
A_68506c:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        add     r1, r0, #0x24
L685078:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   r2, r0, [r1]
        cmp     r2, #0
        bne     L685078
        str     r0, [sp]
L685090:
        mvn     r2, #0
        ldr     r0, [r4, #0x14]
        add     r5, r4, #0x14
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r0, [r4, #0x20]
        cmp     r0, #0
        ble     L685134
        ldr     r0, [r4, #0x1c]
        ldr     r1, [r4]
        ldr     r6, [r1, r0, lsl #2]
        ldr     r1, [r4, #0x18]
        add     r0, r0, #1
        bl      Fn_022d48
        str     r1, [r4, #0x1c]
        ldr     r0, [r4, #0x20]
        sub     r1, r0, #1
        str     r1, [r4, #0x20]
        ldr     r1, [r4, #0x28]
        cmp     r1, #0
        ble     L6850fc
        mov     r1, #1
        add     r0, r4, #0xc
        bl      Fn_01b58c
L6850fc:
        ldr     r0, [r5]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r1, r4, #0x24
L685114:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L685114
        str     r0, [sp]
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L685134:
        ldr     r0, [r5]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r0, r4, #4
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L685090
        .size   A_68506c, . - A_68506c

@ FUN_00685160
        .global A_685160
        .type   A_685160, %function
A_685160:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r6, r1
        add     r1, r0, #0x28
L685170:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L685170
        str     r0, [sp]
L685188:
        mvn     r2, #0
        ldr     r0, [r4, #0x14]
        add     r5, r4, #0x14
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r0, [r4, #0x20]
        ldr     r1, [r4, #0x18]
        cmp     r1, r0
        bls     L685228
        add     r1, r4, #0x18
        ldm     r1, {r1, r2, r3}
        add     r0, r2, r3
        bl      Fn_022d48
        ldr     r0, [r4]
        str     r6, [r0, r1, lsl #2]
        ldr     r0, [r4, #0x20]
        add     r1, r0, #1
        str     r1, [r4, #0x20]
        ldr     r1, [r4, #0x24]
        cmp     r1, #0
        ble     L6851f4
        mov     r1, #1
        add     r0, r4, #4
        bl      Fn_01b58c
L6851f4:
        ldr     r0, [r5]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r1, r4, #0x28
L68520c:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L68520c
        str     r0, [sp]
        pop     {r3, r4, r5, r6, r7, pc}
L685228:
        ldr     r0, [r5]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r0, r4, #0xc
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L685188
        .size   A_685160, . - A_685160

@ FUN_0068b71c
        .global A_68b71c
        .type   A_68b71c, %function
A_68b71c:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        add     r1, r0, #0x2c
L68b728:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L68b728
        str     r0, [sp]
L68b740:
        add     r4, r5, #0x14
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, [r5, #0x28]
        cmp     r0, #0
        ble     L68b790
        ldr     r0, [r5, #0x24]
        ldr     r1, [r5]
        ldr     r6, [r1, r0, lsl #2]
        mov     r0, r4
        bl      Fn_024568
        add     r1, r5, #0x2c
L68b770:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L68b770
        str     r0, [sp]
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L68b790:
        mov     r0, r4
        bl      Fn_024568
        add     r0, r5, #4
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L68b740
        .size   A_68b71c, . - A_68b71c

@ FUN_0068b7b0
        .global A_68b7b0
        .type   A_68b7b0, %function
A_68b7b0:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        add     r1, r0, #0x24
L68b7bc:
        ldrex   r0, [r1]
        add     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L68b7bc
        str     r0, [sp]
L68b7d4:
        mvn     r2, #0
        ldr     r0, [r5, #0x14]
        add     r4, r5, #0x14
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r0, [r5, #0x20]
        cmp     r0, #0
        ble     L68b844
        ldr     r0, [r5, #0x1c]
        ldr     r1, [r5]
        ldr     r6, [r1, r0, lsl #2]
        ldr     r0, [r4]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r1, r5, #0x24
L68b824:
        ldrex   r0, [r1]
        sub     r0, r0, #1
        strex   ip, r0, [r1]
        cmp     ip, #0
        bne     L68b824
        str     r0, [sp]
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, pc}
L68b844:
        ldr     r0, [r4]
        svc     #0x14
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        add     r0, r5, #4
        nop
        bl      Fn_4f54e4
        nop
        nop
        b       L68b7d4
        .size   A_68b7b0, . - A_68b7b0
