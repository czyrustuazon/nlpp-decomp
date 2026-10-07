@ Generated from the retail image by tools/wrapgen/asmify.py (ctrsdk): hand-written library code, kept as
@ assembly. Names are placeholders (A_<file offset>, or labels from ASM_NAMES); the bytes must equal retail.
        .syntax unified
        .arm
        .arch   armv6k
        .fpu    vfpv2
        .text

@ FUN_00005194
        .global fs_USER_SetPriority_5194
        .type   fs_USER_SetPriority_5194, %function
fs_USER_SetPriority_5194:
        ldr     r0, L5240
        ldr     r0, [r0]
        cmp     r0, #0
        bxne    lr
        push    {r3, r4, r5, lr}
        bl      Fn_011b7c
        ldr     r1, L5244
        cmp     r0, r1
        beq     L51c4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L51c4:
        ldr     r0, L5248
        bl      Fn_200e60
        mov     r2, r0
        ldr     r1, L5248
        ldr     r0, L5240
        mov     r3, #0
        bl      Fn_011be4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, L524c
        ldr     r0, [r0, #4]
        bl      Fn_005df0
        ldr     r0, L524c
        add     r1, r0, #8
        str     r0, [r1]
        add     r0, r1, #0
        bl      Fn_005e4c
        mov     r4, #0
        nop
        bl      Fn_01a8e4
        str     r0, [sp]
        mov     r1, r4
        mov     r0, sp
        bl      Fn_005e1c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        beq     L523c
        pop     {r3, r4, r5, lr}
        b       Fn_010ccc
L523c:
        pop     {r3, r4, r5, pc}
L5240:
        .word   0x008aac2c
L5244:
        .word   0x08a067f9
L5248:
        .word   0x007e465f
L524c:
        .word   0x008aac28
        .size   fs_USER_SetPriority_5194, . - fs_USER_SetPriority_5194

@ FUN_00005ff8
        .global hid_USER_GetIPCHandles
        .type   hid_USER_GetIPCHandles, %function
hid_USER_GetIPCHandles:
        mrc     p15, #0, r0, c13, c0, #3
        ldr     r1, L6008
        str     r0, [r1, #4]
        bx      lr
L6008:
        .word   0x008aae00
        .size   hid_USER_GetIPCHandles, . - hid_USER_GetIPCHandles

@ FUN_000061f0
        .global ndm_u_OverrideDefaultDaemons
        .type   ndm_u_OverrideDefaultDaemons, %function
ndm_u_OverrideDefaultDaemons:
        mov     r0, r0
        push    {r4, lr}
        bl      Fn_008c94
        cmp     r0, #0
        beq     L6230
        bl      Fn_012400
        cmp     r0, #0
        bne     L6230
        bl      Fn_008964
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, #0xf
        bl      Fn_011b40
        pop     {r4, lr}
        mov     r0, #6
        b       Fn_011b04
L6230:
        pop     {r4, pc}
        .size   ndm_u_OverrideDefaultDaemons, . - ndm_u_OverrideDefaultDaemons

@ FUN_00006244
        .global srv_pm_cmd2
        .type   srv_pm_cmd2, %function
srv_pm_cmd2:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x30
        mov     r5, #0
        ldr     r4, L62e4
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_008bac
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r1, [sp]
        strge   r1, [r4]
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bmi     L62d8
        ldr     r6, L62ec
        ldr     r3, L62f0
        ldr     ip, L62f4
        str     r6, [sp, #0x1c]
        mov     r6, #4
        str     r6, [sp, #0x20]
        ldr     r6, L62fc
        mvn     r1, #1
        ldr     r0, L62e8
        str     r6, [sp, #0x24]
        ldr     r6, L6300
        ldr     r2, L62f8
        str     r6, [sp, #0x28]
        ldr     r6, L6304
        str     r6, [sp, #0x2c]
        stm     sp, {r3, ip}
        add     ip, sp, #8
        add     r3, sp, #0x1c
        stm     ip, {r1, r5}
        add     r1, sp, #0x20
        bl      Fn_010b94
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
L62d8:
        add     sp, sp, #0x30
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L62e4:
        .word   0x008b85e4
L62e8:
        .word   0x008b85ec
L62ec:
        .word   0x001089f0
L62f0:
        .word   0x009b3b28
L62f4:
        .word   0x5109d500
L62f8:
        .word   0x001085e8
L62fc:
        .word   0x0010ff30
L6300:
        .word   0x0010ff5c
L6304:
        .word   0x0010ff4c
        .size   srv_pm_cmd2, . - srv_pm_cmd2

@ FUN_00006494
        .global APT_U_Multi2_6494
        .type   APT_U_Multi2_6494, %function
APT_U_Multi2_6494:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r8, r2
        mov     sl, r0
        mov     fp, r1
        bl      Fn_012434
        ldr     r5, L65e4
        ldr     r6, L65e8
        ldr     r7, L65ec
        cmp     r0, #9
        beq     L6514
        mov     sb, #0
        mov     r1, sb
        mov     r0, sb
        bl      Fn_009028
        mov     r0, #9
        bl      Fn_012444
L64d4:
        nop
        bl      Fn_01d3e0
        eor     r0, sb, #1
        nop
        bl      Fn_00929c
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r5
        mov     r0, r4
        cmpne   r0, r6
        cmpne   r4, r7
        beq     L658c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L6514:
        nop
        bl      Fn_008ca4
        mov     r0, #0
        nop
        bl      Fn_012cac
L6528:
        nop
        bl      Fn_01d3e0
        mov     r2, r8
        mov     r1, fp
        mov     r0, sl
        bl      Fn_009248
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r5
        mov     r0, r4
        cmpne   r0, r6
        cmpne   r4, r7
        beq     L65b8
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        nop
        nop
        bl      Fn_012c98
        nop
        nop
        svc     #3
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L658c:
        ldr     r3, L65f0
        mov     r1, #0xa
        mov     ip, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, r3
        mla     r2, r2, r3, r4
        mla     r1, r1, ip, r2
        bl      Fn_01b71c
        nop
        nop
        b       L64d4
L65b8:
        ldr     ip, L65f0
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L6528
L65e4:
        .word   0xc8a0cff0
L65e8:
        .word   0xe0a0cc08
L65ec:
        .word   0xc8a0cc02
L65f0:
        .word   0x000f4240
        .size   APT_U_Multi2_6494, . - APT_U_Multi2_6494

@ FUN_00006604
        .global APT_U_Initialize
        .type   APT_U_Initialize, %function
APT_U_Initialize:
        push    {r4, r5, r6, r7, lr}
        mov     r6, r1
        mov     r7, r0
        ldr     r0, L6760
        sub     sp, sp, #0xc
        mov     r4, r2
        ldrb    r1, [r0, #2]
        cmp     r1, #0
        ldrne   r0, L6764
        bne     L6668
        mov     r1, #1
        strb    r1, [r0, #2]
        bl      Fn_009310
        mov     r5, #0
        add     r3, sp, #4
        add     r2, sp, #8
        mov     r1, r6
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_0091ec
        mov     r6, r0
        ands    r0, r0, #0x80000000
        bpl     L6670
        bl      Fn_008dc4
        mov     r0, r6
L6668:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L6670:
        ldr     r0, [sp]
        bl      Fn_008e10
        add     r1, sp, #4
        ldm     r1, {r0, r6}
        and     r0, r0, #1
        bl      Fn_013230
        ldr     r0, [sp, #4]
        and     r0, r0, #2
        lsr     r0, r0, #1
        bl      Fn_013250
        nop
        nop
        bl      Fn_008dc4
        mov     r0, r7
        nop
        bl      Fn_008db4
        mov     r0, r6
        nop
        bl      Fn_008c68
        nop
        nop
        bl      Fn_008c48
        cmp     r0, #0
        nop
        bne     L6754
        bl      Fn_01d3e0
        nop
        nop
        bl      Fn_0135b4
        str     r5, [sp]
        str     r5, [sp, #4]
        bl      Fn_008c38
        mov     r5, r0
        nop
        bl      Fn_01d180
        mov     r3, sp
        add     r2, sp, #4
        mov     r1, r5
        bl      Fn_00919c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_008d20
        ldm     sp, {r1, r2}
        mov     r0, r4
        bl      Fn_008e60
        nop
        nop
        bl      Fn_01d534
        nop
        nop
        bl      Fn_008c78
        cmp     r0, #0
        nop
        bleq    Fn_008c04
L6754:
        add     sp, sp, #0xc
        mov     r0, #0
        pop     {r4, r5, r6, r7, pc}
L6760:
        .word   0x008aab48
L6764:
        .word   0xe0a0cff9
        .size   APT_U_Initialize, . - APT_U_Initialize

@ FUN_00006768
        .global APT_U_Enable
        .type   APT_U_Enable, %function
APT_U_Enable:
        cmp     r0, #0
        push    {r4, lr}
        sub     sp, sp, #0x18
        movne   r0, #0
        blne    Fn_008c18
        bl      Fn_01d3e0
        bl      Fn_008c38
        bl      Fn_0092d8
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        bl      Fn_008c78
        cmp     r0, #0
        beq     L6808
        bl      Fn_008c38
        tst     r0, #0x20
        bne     L6808
        mov     r0, #0x62
        bl      Fn_012444
        bl      Fn_008e44
        ldr     ip, L6810
        mov     r3, #0
        add     r1, sp, #8
        ldm     ip, {r2, ip}
        str     r3, [sp]
        add     r3, sp, #0x10
        stm     r1, {r2, ip}
        mov     r1, r0
        mov     r2, #0x1000
        add     r0, sp, #4
        bl      Fn_012d58
        mov     r4, r0
        ldr     r0, [sp, #4]
        bl      Fn_009018
        ldr     r0, [sp, #0x10]
        bl      Fn_008e20
        bl      Fn_008e30
        mov     r0, r4
        bl      Fn_008e50
L6808:
        add     sp, sp, #0x18
        pop     {r4, pc}
L6810:
        .word   0x008aab58
        .size   APT_U_Enable, . - APT_U_Enable

@ FUN_00008674
        .global hid_USER_EnableGyroscopeLow
        .type   hid_USER_EnableGyroscopeLow, %function
hid_USER_EnableGyroscopeLow:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r1
        mov     r6, r2
        sub     sp, sp, #0x790
        ldr     r1, L8860
        mov     r3, #0x20
        mov     r2, #0x3c
        add     r0, r0, #4
        blx     Fn_0000ac
        sub     r4, r0, #4
        mov     r0, #1
        strb    r0, [r4, #0x784]
        bl      Fn_011740
        mov     r1, r0
        add     r0, r4, #0x400
        add     r0, r0, #0x388
        bl      Fn_0119d8
        ldr     r2, L8864
        sub     r4, r0, #0x400
        sub     r4, r4, #0x388
        mvn     r1, #0
        add     r7, r4, #0x1400
        add     r7, r7, #0xc8
        str     r6, [r0, #0xd38]
        mov     r3, r1
        str     r1, [r2, r4]
        stm     r7, {r1, r3}
        bl      Fn_011a74
        cmp     r5, #0
        addeq   r0, r4, #0x400
        addeq   r0, r0, #0x388
        strne   r5, [r4, #0x81c]
        streq   r0, [r4, #0x81c]
        mov     r0, r4
        bl      Fn_010f10
        ldr     r5, L8868
        mov     r6, #0
        str     r6, [sp, #0x784]
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L8788
        ldr     r0, [r4]
        add     r2, sp, #0x400
        add     r2, r2, #0x384
        cmp     r0, #0
        mov     r8, #1
        add     r7, r4, #0x7e0
        beq     L87d4
        mov     sb, sp
        ldr     r1, L8860
        mov     r3, #0x20
        mov     r2, #0x3c
        mov     r0, sb
        str     r6, [sp, #0x780]
        blx     Fn_0000ac
        mov     r3, #0x20
        add     r2, sp, #0x780
        mov     r1, sb
        mov     r0, r4
        bl      Fn_011078
        ldr     r0, [sp, #0x780]
        cmp     r0, #1
        blt     L87f0
        mov     r2, #0x3c
        mov     r1, sb
        mov     r0, r7
        bl      Fn_20004c
        str     r8, [sp, #0x784]
        b       L8844
L8788:
        nop
        svc     #0x28
        ldr     r2, L886c
        ldr     ip, L8870
        mov     r3, r0
        mov     r0, #0
        mov     r8, r0
        umull   sb, r2, r2, ip
        umull   sb, sl, r0, ip
        asr     r6, r0, #0x1f
        adds    r2, r2, sb
        mla     ip, r6, ip, sl
        mla     r0, r0, r0, ip
        adc     ip, r0, r8
        adds    r2, r2, r3
        adc     r0, r1, ip
        str     r0, [r5, #0xc]
        str     r2, [r5, #8]
        b       L8848
L87d4:
        mov     r3, r8
        mov     r1, r7
        mov     r0, r4
        bl      Fn_011078
        nop
        nop
        b       L8848
L87f0:
        rsb     r0, r0, r0, lsl #4
        mov     r1, sb
        lsl     r2, r0, #2
        mov     r0, r7
        bl      Fn_20004c
        ldr     r2, [sp, #0x780]
        ldr     r0, [r4]
        rsb     r1, r2, #1
        cmp     r0, r1
        movge   r0, r1
        str     r0, [r4]
        rsb     r1, r0, r0, lsl #4
        rsb     r0, r2, r2, lsl #4
        lsl     r2, r1, #2
        add     r0, r7, r0, lsl #2
        add     r1, r4, #4
        bl      Fn_20004c
        ldr     r0, [r4]
        ldr     r1, [sp, #0x780]
        add     r0, r0, r1
        str     r0, [sp, #0x784]
L8844:
        str     r6, [r4]
L8848:
        ldr     r0, [r5]
        add     r0, r0, #1
        str     r0, [r5]
        add     sp, sp, #0x790
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L8860:
        .word   0x0011173c
L8864:
        .word   0x000014c4
L8868:
        .word   0x008b87d0
L886c:
        .word   0x08f0d180
L8870:
        .word   0x44a2fa85
        .size   hid_USER_EnableGyroscopeLow, . - hid_USER_EnableGyroscopeLow

@ FUN_00008964
        .global srv_pm_cmdb_8964
        .type   srv_pm_cmdb_8964, %function
srv_pm_cmdb_8964:
        push    {r4, r5, r6, lr}
        ldr     r4, L89e0
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r5, L89e4
        ldr     r0, [r5]
        cmp     r0, #0
        bne     L89c0
        bl      Fn_011b7c
        ldr     r0, L89e8
        bl      Fn_200e60
        mov     r2, r0
        ldr     r1, L89e8
        ldr     r0, L89ec
        mov     r3, #0
        bl      Fn_011be4
        lsrs    r1, r0, #0x1f
        beq     L89c0
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L89c0:
        ldr     r0, [r5]
        add     r0, r0, #1
        str     r0, [r5]
        mov     r5, #0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L89e0:
        .word   0x009aea08
L89e4:
        .word   0x008b7d60
L89e8:
        .word   0x007eba32
L89ec:
        .word   0x008b8818
        .size   srv_pm_cmdb_8964, . - srv_pm_cmdb_8964

@ FUN_00008b0c
        .global srv_pm_cmd1
        .type   srv_pm_cmd1, %function
srv_pm_cmd1:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L8b9c
L8b18:
        ldr     r0, L8ba0
        mov     r1, r5
        bl      Fn_0101c8
        tst     r0, #0x80000000
        lsrne   r1, r0, #0x1b
        subne   r2, r1, #0x20
        lsreq   r2, r0, #0x1b
        cmn     r2, #5
        mov     r3, r0
        bne     L8b5c
        and     r1, r0, #0x7e00000
        lsr     r2, r1, #0x15
        cmp     r2, #4
        lsleq   r1, r3, #0x16
        lsreq   r1, r1, #0x16
        cmpeq   r1, r4
        beq     L8b84
L8b5c:
        ands    r0, r3, #0x80000000
        bmi     L8b7c
        bl      Fn_011c18
        mov     r3, r0
        ldr     r0, L8ba4
        ldr     r1, [r0]
        add     r1, r1, #1
        str     r1, [r0]
L8b7c:
        mov     r0, r3
        pop     {r4, r5, r6, pc}
L8b84:
        ldr     r0, L8ba8
        mov     r1, #0
        bl      Fn_01b71c
        nop
        nop
        b       L8b18
L8b9c:
        .word   0x000003fa
L8ba0:
        .word   0x008b85f4
L8ba4:
        .word   0x008b85e0
L8ba8:
        .word   0x0007a120
        .size   srv_pm_cmd1, . - srv_pm_cmd1

@ FUN_00009028
        .global APT_U_Multi2_9028
        .type   APT_U_Multi2_9028, %function
APT_U_Multi2_9028:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        movs    r5, r1
        mov     r4, #0
        sub     sp, sp, #0x10
        mov     r6, r4
        mov     r7, r0
        strbne  r6, [r5]
        bl      Fn_008c78
        cmp     r0, #0
        beq     L9080
        mov     r8, #0x400
        bl      Fn_01d3e0
        mov     r1, sp
        mov     r0, r8
        bl      Fn_013260
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        ldrb    r0, [sp]
        cmp     r0, #0
        beq     L917c
L9080:
        nop
        bl      Fn_012414
        cmp     r0, #0
        nop
        beq     L90cc
        mov     r8, #0x200
        bl      Fn_01d3e0
        mov     r1, sp
        mov     r0, r8
        bl      Fn_013260
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        ldrb    r0, [sp]
        cmp     r0, #0
        beq     L917c
L90cc:
        mov     r0, #3
        bl      Fn_012444
        ldr     r8, L9188
        ldr     sb, L918c
        ldr     sl, L9190
L90e0:
        nop
        bl      Fn_01d3e0
        mov     r0, r7
        nop
        bl      Fn_0132a4
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r8
        mov     r0, r4
        cmpne   r0, sb
        cmpne   r4, sl
        beq     L9120
        cmp     r4, #0
        beq     L914c
        b       L917c
L9120:
        ldr     ip, L9194
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L90e0
L914c:
        ldr     r0, L9198
        mov     r3, #0
        ldm     r0, {r1, r2}
        add     r0, sp, #8
        str     r6, [sp]
        stm     r0, {r1, r2}
        mov     r2, r3
        mov     r1, r3
        mov     r0, r3
        bl      Fn_012d58
        cmp     r5, #0
        strbne  r0, [r5]
L917c:
        add     sp, sp, #0x10
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L9188:
        .word   0xc8a0cff0
L918c:
        .word   0xe0a0cc08
L9190:
        .word   0xc8a0cc02
L9194:
        .word   0x000f4240
L9198:
        .word   0x008aab58
        .size   APT_U_Multi2_9028, . - APT_U_Multi2_9028

@ FUN_000119d8
        .global hid_USER_EnableAccelerometer
        .type   hid_USER_EnableAccelerometer, %function
hid_USER_EnableAccelerometer:
        push    {r4, r5, lr}
        mov     r4, r0
        sub     sp, sp, #0xc
        mov     r5, #0
        str     r1, [r4]
        mov     ip, #0x80
        strh    r5, [r4, #4]
        strh    ip, [r4, #6]
        mvn     r2, #0
        add     ip, r4, #0x4c
        strb    r5, [r4, #0x48]
        mov     r3, r2
        mov     r0, r2
        strb    r5, [r4, #0x49]
        stm     ip, {r0, r2, r3}
        bl      Fn_011ad4
        strh    r5, [r4, #8]
        strh    r5, [r4, #0xa]
        strh    r5, [r4, #0xc]
        strh    r5, [r4, #0xe]
        strh    r5, [r4, #0x10]
        mov     r0, r4
        strh    r5, [r4, #0x12]
        bl      Fn_01c5fc
        strb    r5, [r4, #0x48]
        mov     r3, #1
        add     r2, sp, #8
        mov     r1, sp
        mov     r0, r4
        strb    r5, [r4, #0x49]
        bl      Fn_0117b0
        add     sp, sp, #0xc
        mov     r0, r4
        pop     {r4, r5, pc}
        .size   hid_USER_EnableAccelerometer, . - hid_USER_EnableAccelerometer

@ FUN_0001231c
        .global cfg_i_GetConfigInfoBlk2_1231c
        .type   cfg_i_GetConfigInfoBlk2_1231c, %function
cfg_i_GetConfigInfoBlk2_1231c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r5, L123dc
        ldrb    r0, [r5]
        cmp     r0, #0
        bne     L1235c
        bl      Fn_01b74c
        ldr     r2, L123e0
        ldr     r0, L123e4
        mov     r1, #0x20
        bl      Fn_024670
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        bl      Fn_0246c0
        mov     r0, #1
        strb    r0, [r5]
L1235c:
        ldr     r0, L123e4
        vldr    s0, L123e8
        vldr    s1, [r0, #0x10]
        vmov    r0, s0
        vstr    s1, [r4, #0x48]
        vstr    s0, [r4, #0x4c]
        vstr    s0, [r4, #0x50]
        vstr    s0, [r4, #0x54]
        vstr    s0, [r4, #0x58]
        vstr    s0, [r4, #0x5c]
        vstr    s0, [r4]
        vstr    s0, [r4, #4]
        vstr    s0, [r4, #8]
        vstr    s0, [r4, #0xc]
        vstr    s0, [r4, #0x10]
        vstr    s0, [r4, #0x14]
        str     r0, [r4, #0x18]
        str     r0, [r4, #0x1c]
        str     r0, [r4, #0x20]
        vmov    r0, s0
        str     r0, [r4, #0x24]
        str     r0, [r4, #0x28]
        str     r0, [r4, #0x2c]
        vmov    r0, s0
        str     r0, [r4, #0x30]
        str     r0, [r4, #0x34]
        str     r0, [r4, #0x38]
        vmov    r0, s0
        str     r0, [r4, #0x3c]
        str     r0, [r4, #0x40]
        str     r0, [r4, #0x44]
        pop     {r4, r5, r6, pc}
L123dc:
        .word   0x008aaeb0
L123e0:
        .word   0x00050005
L123e4:
        .word   0x009a1bfc
L123e8:
        .word   0x00000000
        .size   cfg_i_GetConfigInfoBlk2_1231c, . - cfg_i_GetConfigInfoBlk2_1231c

@ FUN_00012940
        .global APT_U_Multi2_12940
        .type   APT_U_Multi2_12940, %function
APT_U_Multi2_12940:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x18
        ldr     r1, L12c84
        mov     r3, #3
        mov     r2, #4
        add     r0, sp, #0xc
        blx     Fn_0000ac
        ldr     r5, L12c88
        ldr     r4, L12c8c
        ldr     r0, [r5]
        str     r0, [sp, #0xc]
        ldr     r0, [r5, #4]
        str     r0, [sp, #0x10]
        ldr     r0, [r5, #8]
        str     r0, [sp, #0x14]
        ldrb    r0, [r4]
        cmp     r0, #0
        bne     L12c7c
L12988:
        mvn     r6, #0
        mov     ip, r6
        add     r0, sp, #8
        add     r1, sp, #0xc
        mov     r2, #3
        mov     r3, #0
        stm     sp, {r6, ip}
        bl      Fn_01a418
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        ldrb    r0, [r4]
        cmp     r0, #0
        bne     L12c7c
        ldr     r0, L12c90
        bl      Fn_024380
        cmp     r0, #0
        nop
        beq     L12a18
        ldr     ip, L12c94
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r6, r1, ip
        mla     r2, r2, ip, r6
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        ldr     r0, [sp, #8]
        ldr     r0, [r5, r0, lsl #2]
        svc     #0x18
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        nop
        nop
        b       L12c70
L12a18:
        ldr     r0, [sp, #8]
        ldr     r0, [r5, r0, lsl #2]
        svc     #0x19
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        ldr     r0, [sp, #8]
        cmp     r0, #2
        moveq   r0, #0xc
        beq     L12b4c
        cmp     r0, #1
        beq     L12a54
        cmp     r0, #0
        beq     L12a84
        b       L12c70
L12a54:
        ldr     r1, [r4, #4]
        cmp     r1, #0
        beq     L12a70
        ldr     r0, [r4, #8]
        blx     r1
        cmp     r0, #0
        beq     L12c70
L12a70:
        ldr     r0, L12c90
        bl      Fn_01b404
        nop
        nop
        b       L12c70
L12a84:
        nop
        bl      Fn_01d3e0
        nop
        nop
        bl      Fn_01d180
        mov     r1, sp
        nop
        bl      Fn_01d88c
        mov     r6, r0
        nop
        bl      Fn_01d534
        ands    r0, r6, #0x80000000
        nop
        bmi     L12c70
        ldrb    r0, [sp]
        cmp     r0, #0xc
        ldrlo   pc, [pc, r0, lsl #2]
        b       L12c68
L12acc:
        .word   0x00112c68
L12ad0:
        .word   0x00112afc
L12ad4:
        .word   0x00112afc
L12ad8:
        .word   0x00112b6c
L12adc:
        .word   0x00112b6c
L12ae0:
        .word   0x00112b6c
L12ae4:
        .word   0x00112b6c
L12ae8:
        .word   0x00112bac
L12aec:
        .word   0x00112bdc
L12af0:
        .word   0x00112c08
L12af4:
        .word   0x00112c1c
L12af8:
        .word   0x00112c54
        nop
        bl      Fn_01d5d0
        cmp     r0, #0
        nop
        bne     L12b20
        ldrb    r0, [sp]
        cmp     r0, #1
        movne   r0, #2
        bl      Fn_01d5e0
L12b20:
        ldr     r1, [r4, #4]
        cmp     r1, #0
        beq     L12b3c
        ldr     r0, [r4, #8]
        blx     r1
        cmp     r0, #0
        beq     L12c70
L12b3c:
        ldrb    r0, [sp]
        cmp     r0, #1
        moveq   r0, #6
        movne   r0, #7
L12b4c:
        nop
        bl      Fn_01d0d0
        ldr     r0, L12c90
        nop
        bl      Fn_01b404
        nop
        nop
        b       L12c70
        and     r0, r0, #0xff
        cmp     r0, #3
        moveq   r0, #1
        cmpne   r0, #4
        beq     L12b98
        cmp     r0, #5
        moveq   r0, #2
        beq     L12b98
        cmp     r0, #6
        moveq   r0, #3
        bne     L12b9c
L12b98:
        bl      Fn_01d4ec
L12b9c:
        ldr     r1, [r4, #4]
        cmp     r1, #0
        beq     L12c70
        b       L12bfc
        nop
        bl      Fn_01d100
        mov     r0, #1
        nop
        bl      Fn_01d4dc
        mov     r0, #1
        nop
        bl      Fn_013250
        ldr     r1, [r4, #4]
        cmp     r1, #0
        beq     L12c70
        b       L12bfc
        nop
        bl      Fn_01d148
        mov     r0, #1
        nop
        bl      Fn_013230
        ldr     r1, [r4, #4]
        cmp     r1, #0
        beq     L12c70
L12bfc:
        ldr     r0, [r4, #8]
        blx     r1
        b       L12c70
        mov     r0, #0
        bl      Fn_013230
        nop
        nop
        b       L12c70
        nop
        bl      Fn_01d3e0
        mov     r0, #0
        mov     r1, #0x40
        bl      Fn_01d81c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        nop
        nop
        b       L12c70
        mov     r0, #1
        bl      Fn_013250
        nop
        nop
        b       L12c70
L12c68:
        nop
        bl      Fn_024730
L12c70:
        ldrb    r0, [r4]
        cmp     r0, #0
        beq     L12988
L12c7c:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, pc}
L12c84:
        .word   0x0011d0c4
L12c88:
        .word   0x009ad8b4
L12c8c:
        .word   0x008ab890
L12c90:
        .word   0x008ab8a4
L12c94:
        .word   0x000f4240
        .size   APT_U_Multi2_12940, . - APT_U_Multi2_12940

@ FUN_0001bca4
        .global hid_USER_Multi2_1bca4
        .type   hid_USER_Multi2_1bca4, %function
hid_USER_Multi2_1bca4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        ldr     r0, L1bd54
        ldr     r0, [r0]
        tst     r0, #1
        bne     L1bd10
        ldr     r0, L1bd54
        blx     Fn_203d64
        cmp     r0, #0
        beq     L1bd10
        ldr     r1, L1bd60
        vldr    s1, L1bd58
        vldr    s0, L1bd5c
        add     r0, r1, #0x10
        vstr    s1, [r1]
        vstr    s0, [r1, #4]
        vstr    s0, [r1, #8]
        vstr    s0, [r1, #0xc]
        vstmia  r0, {s0, s1}
        add     r0, r1, #0x24
        vstr    s0, [r1, #0x18]
        vstr    s0, [r1, #0x1c]
        vstr    s0, [r1, #0x20]
        vstmia  r0, {s0, s1}
        ldr     r0, L1bd54
        vstr    s0, [r1, #0x2c]
        mov     r0, r0
L1bd10:
        ldr     r1, L1bd60
        add     sl, r4, #0x1000
        add     sl, sl, #0x4d0
        add     r2, r4, #0x1000
        ldm     r1, {r0, r3, r5, r6, r7, r8, sb, ip}
        add     r2, r2, #0x4f0
        stm     sl, {r0, r3, r5, r6, r7, r8, sb, ip}
        add     r0, r1, #0x20
        ldm     r0, {r0, r3, r5, ip}
        stm     r2, {r0, r3, r5, ip}
        add     r0, r4, #0x400
        add     r0, r0, #0x388
        mov     r4, r0
        bl      Fn_024bf8
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_01c5fc
L1bd54:
        .word   0x008bfb30
L1bd58:
        .word   0x3f800000
L1bd5c:
        .word   0x00000000
L1bd60:
        .word   0x00a7b350
        .size   hid_USER_Multi2_1bca4, . - hid_USER_Multi2_1bca4

@ FUN_0001cd84
        .global cmd16_1cd84
        .type   cmd16_1cd84, %function
cmd16_1cd84:
        mov     r0, r0
        push    {r4, r5, r6, lr}
        ldr     r0, L1ce74
        bl      Fn_0244c8
        ldr     r4, L1ce78
        ldrb    r0, [r4]
        cmp     r0, #0
        beq     L1cdb0
        pop     {r4, r5, r6, lr}
        ldr     r0, L1ce74
        b       Fn_024568
L1cdb0:
        mov     r5, #1
        strb    r5, [r4]
        ldrb    r0, [r4, #3]
        cmp     r0, #0
        bne     L1cdcc
        bl      Fn_011b7c
        strb    r5, [r4, #3]
L1cdcc:
        ldr     r0, [r4, #4]
        mov     r6, r0
        bl      Fn_200e60
        mov     r2, r0
        ldr     r0, L1ce7c
        mov     r3, #0
        mov     r1, r6
        bl      Fn_011be4
        ldr     r0, [r4, #0x10]
        str     r0, [r4, #0x14]
        ldr     r0, L1ce80
        ldrsb   r2, [r4, #2]
        ldr     r1, [r0]
        ldr     r0, L1ce84
        bl      Fn_0257c8
        ldr     r0, L1ce88
        mov     r2, #0
        str     r2, [r0]
        mvn     r1, #0
        str     r1, [r0, #8]
        str     r2, [r0, #4]
        str     r2, [r0, #0x2c]
        str     r2, [r0, #0x30]
        str     r2, [r0, #0x34]
        str     r2, [r0, #0x38]
        str     r2, [r0, #0x3c]
        str     r2, [r0, #0x40]
        str     r2, [r0, #0x44]
        strb    r2, [r0, #0x48]
        str     r2, [r0, #0x4c]
        strb    r2, [r0, #0x50]
        str     r2, [r0, #0x58]
        str     r2, [r0, #0x5c]
        str     r2, [r0, #0x64]
        str     r2, [r0, #0x68]
        str     r2, [r0, #0x6c]
        strb    r5, [r0, #0x70]
        str     r0, [r4, #0x1c]
        bl      Fn_025420
        pop     {r4, r5, r6, lr}
        ldr     r0, L1ce74
        b       Fn_024568
L1ce74:
        .word   0x009ae9e0
L1ce78:
        .word   0x008b7cd0
L1ce7c:
        .word   0x008b7ce0
L1ce80:
        .word   0x007eb68c
L1ce84:
        .word   0x008b7ce4
L1ce88:
        .word   0x0088fc40
        .size   cmd16_1cd84, . - cmd16_1cd84

@ FUN_0001cecc
        .global cmd16_1cecc
        .type   cmd16_1cecc, %function
cmd16_1cecc:
        push    {r4, r5, r6, lr}
        bl      Fn_0252f4
        cmp     r0, #0
        ldreq   r0, L1cf2c
        beq     L1cf28
        ldr     r0, L1cf30
        ldr     r4, [r0]
        bl      Fn_02962c
        mov     r2, #0
        mov     r1, r4
        bl      Fn_0257c8
        mov     r5, r0
        lsrs    r0, r0, #0x1f
        bne     L1cf24
        bl      Fn_0258dc
        cmp     r0, #0
        beq     L1cf24
        mov     r4, #0
        bl      Fn_02961c
        mov     r1, r4
        add     r0, r0, #0x30
        bl      Fn_025744
L1cf24:
        mov     r0, r5
L1cf28:
        pop     {r4, r5, r6, pc}
L1cf2c:
        .word   0x00202bf8
L1cf30:
        .word   0x007eb698
        .size   cmd16_1cecc, . - cmd16_1cecc

@ FUN_0001cf34
        .global cmd17_1cf34
        .type   cmd17_1cf34, %function
cmd17_1cf34:
        push    {r4, r5, r6, lr}
        bl      Fn_0252f4
        cmp     r0, #0
        ldreq   r0, L1cf84
        beq     L1cf80
        bl      Fn_02962c
        bl      Fn_02580c
        mov     r5, r0
        lsrs    r0, r0, #0x1f
        bne     L1cf7c
        bl      Fn_0258dc
        cmp     r0, #0
        beq     L1cf7c
        mov     r4, #1
        bl      Fn_02961c
        mov     r1, r4
        add     r0, r0, #0x30
        bl      Fn_025744
L1cf7c:
        mov     r0, r5
L1cf80:
        pop     {r4, r5, r6, pc}
L1cf84:
        .word   0x00202bf8
        .size   cmd17_1cf34, . - cmd17_1cf34

@ FUN_0001cfb0
        .global cmd2_1cfb0
        .type   cmd2_1cfb0, %function
cmd2_1cfb0:
        mov     r0, r0
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r4, r3
        bl      Fn_02962c
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        str     r4, [sp]
        bl      Fn_02585c
        pop     {r3, r4, r5, r6, r7, pc}
        .size   cmd2_1cfb0, . - cmd2_1cfb0

@ FUN_0001d2c4
        .global APT_U_AppletUtility
        .type   APT_U_AppletUtility, %function
APT_U_AppletUtility:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x18
        mov     r4, #0
        mov     sl, r0
        mov     r8, r1
        mov     sb, r2
        mov     r5, r3
        ldrd    r6, r7, [sp, #0x38]
        str     r4, [sp, #8]
        str     r4, [sp, #0xc]
        bl      Fn_01d3e0
        cmp     r5, #0
        add     r0, sp, #0x10
        beq     L1d380
        cmp     r6, #0
        movne   r1, r6
        moveq   r1, #1
        movne   r3, r5
        str     r0, [sp, #4]
        str     r1, [sp]
        bne     L1d31c
L1d318:
        add     r3, sp, #0xc
L1d31c:
        cmp     r8, #0
        moveq   r2, #1
        beq     L1d33c
        cmp     sb, #0
        moveq   sb, #1
        mov     r2, sb
        movne   r1, r8
        bne     L1d340
L1d33c:
        add     r1, sp, #8
L1d340:
        mov     r0, sl
        bl      Fn_0259c0
        mov     r8, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        cmp     r5, #0
        cmpne   r6, #0
        streq   r4, [sp, #0x10]
        cmp     r7, #0
        ldrne   r0, [sp, #0x10]
        strne   r0, [r7]
        bl      Fn_01d534
        add     sp, sp, #0x18
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L1d380:
        mov     r1, #1
        str     r0, [sp, #4]
        str     r1, [sp]
        b       L1d318
        .size   APT_U_AppletUtility, . - APT_U_AppletUtility

@ FUN_0001d478
        .global APT_U_CancelParameter
        .type   APT_U_CancelParameter, %function
APT_U_CancelParameter:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        mov     r7, r3
        bl      Fn_01d3e0
        add     ip, sp, #4
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        str     ip, [sp]
        bl      Fn_025a94
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        ldrsb   r0, [sp, #4]
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
        .size   APT_U_CancelParameter, . - APT_U_CancelParameter

@ FUN_0001d628
        .global APT_U_SendParameter
        .type   APT_U_SendParameter, %function
APT_U_SendParameter:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x34
        mov     r6, r1
        mov     r7, r0
        mov     r8, r3
        ldr     r4, L1d808
        ldr     r0, [sp, #0x74]
        ldr     r1, [sp, #0x70]
        ldr     sb, [sp, #0x68]
        sub     r5, r4, #8
        strd    r0, r1, [sp, #0xc]
        ldrd    r2, r3, [r4]
        eor     r2, r2, r1
        eor     r3, r3, r0
        orrs    r2, r2, r3
        beq     L1d68c
        ldrd    r2, r3, [r5]
        eor     r1, r1, r2
        eor     r0, r0, r3
        orrs    r0, r0, r1
        beq     L1d68c
        svc     #0x28
        str     r0, [sp, #0x18]
        str     r1, [sp, #0x14]
        b       L1d698
L1d68c:
        mov     r1, #0
        mov     r0, r1
        strd    r0, r1, [sp, #0x14]
L1d698:
        and     r0, r6, #0x10000
        lsr     sl, r0, #0x10
L1d6a0:
        ldr     r5, [sp, #0x3c]
        cmp     r8, #0x1000
        mov     r4, r8
        blhi    Fn_024730
        cmp     r5, #0
        cmpne   r4, #0
        moveq   r5, #0
        moveq   r4, r5
        bl      Fn_01d3e0
        nop
        nop
        bl      Fn_01d180
        mov     r3, r5
        mov     r2, r6
        mov     r1, r7
        stm     sp, {r4, sb}
        bl      Fn_025a3c
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bmi     L1d6f8
        cmp     sl, #0
        blne    Fn_025914
L1d6f8:
        nop
        bl      Fn_01d534
        ands    r0, r4, #0x80000000
        str     r4, [sp, #4]
        bpl     L1d7fc
        ldr     r0, L1d80c
        cmp     r4, r0
        bne     L1d7fc
        ldr     r0, L1d808
        add     r4, sp, #0xc
        ldm     r0, {r1, r3}
        ldm     r4, {r0, r2}
        eor     r3, r3, r0
        eor     r1, r1, r2
        orrs    r1, r1, r3
        beq     L1d7fc
        ldr     r1, L1d810
        ldr     r3, [r1]
        ldr     r1, [r1, #4]
        eor     r2, r2, r3
        eor     r0, r0, r1
        orrs    r0, r0, r2
        beq     L1d7d0
        svc     #0x28
        mov     r2, r0
        mov     r0, r1
        ldr     r1, [sp, #0x18]
        ldr     r3, [sp, #0x14]
        mov     r5, #0
        subs    r1, r2, r1
        sbc     r0, r0, r3
        mov     lr, r5
        ldr     r3, L1d814
        mov     r4, r5
        mov     r2, #3
        str     r5, [sp]
        umull   r5, ip, r1, r3
        str     lr, [sp, #0x20]
        umull   fp, lr, r0, r2
        ldr     lr, [sp, #0x20]
        adds    ip, ip, r4
        asr     r5, r0, #0x1f
        adc     fp, fp, lr
        umull   r4, lr, r0, r3
        mla     r3, r5, r3, lr
        ldr     r5, [sp]
        mla     r3, r0, r5, r3
        umlal   r4, r3, r2, r1
        adds    r0, r4, ip
        adc     r1, r3, fp
        ldrd    r2, r3, [sp, #0xc]
        subs    r0, r3, r0
        sbcs    r0, r2, r1
        blt     L1d7fc
L1d7d0:
        ldr     ip, L1d818
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L1d6a0
L1d7fc:
        ldr     r0, [sp, #4]
        add     sp, sp, #0x44
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L1d808:
        .word   0x008aab60
L1d80c:
        .word   0xc8a0cc02
L1d810:
        .word   0x008aab58
L1d814:
        .word   0xbad34aee
L1d818:
        .word   0x000f4240
        .size   APT_U_SendParameter, . - APT_U_SendParameter

@ FUN_00024798
        .global dsp__DSP_UnloadComponent_24798
        .type   dsp__DSP_UnloadComponent_24798, %function
dsp__DSP_UnloadComponent_24798:
        push    {r4, r5, r6, lr}
        ldr     r6, L247f8
        ldrsb   r0, [r6, #1]
        ldrsb   r1, [r6, #2]
        bics    r0, r0, r1
        ldrne   r5, L247fc
        movne   r4, #0
        beq     L247f4
L247b8:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        blxne   r0
        add     r4, r4, #1
        cmp     r4, #8
        blt     L247b8
        ldrb    r0, [r6, #1]
        cmp     r0, #0
        beq     L247ec
        ldr     r0, [r6, #8]
        bl      Fn_028f24
        mov     r0, #0
        strb    r0, [r6, #1]
L247ec:
        mov     r0, #1
        strb    r0, [r6, #2]
L247f4:
        pop     {r4, r5, r6, pc}
L247f8:
        .word   0x008aabb0
L247fc:
        .word   0x009a0f74
        .size   dsp__DSP_UnloadComponent_24798, . - dsp__DSP_UnloadComponent_24798

@ FUN_00024800
        .global dsp__DSP_LoadComponent
        .type   dsp__DSP_LoadComponent, %function
dsp__DSP_LoadComponent:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r7, #0
        ldr     r6, L248bc
        strb    r7, [r6]
        ldrb    r0, [r6, #2]
        cmp     r0, #0
        beq     L248b4
        add     r1, r6, #0x18
        ldr     r0, [r6, #8]
        ldm     r1, {r1, r2}
        ldrh    r3, [r6, #4]
        ldrh    ip, [r6, #6]
        cmp     r0, #0
        beq     L24848
        ldrb    r4, [r6, #1]
        cmp     r4, #0
        beq     L24898
L24848:
        ldr     r0, L248c0
L2484c:
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        ldr     r5, L248c4
        mov     r4, #0
L24860:
        ldr     r0, [r5, r4, lsl #2]
        cmp     r0, #0
        blxne   r0
        add     r4, r4, #1
        cmp     r4, #8
        blt     L24860
        strb    r7, [r6, #2]
        ldr     r0, [r6, #8]
        ldrsb   r1, [r6, #3]
        cmp     r0, #0
        beq     L248b4
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, lr}
        b       Fn_028f4c
L24898:
        ldr     r4, L248c8
        str     ip, [sp]
        str     r4, [sp, #4]
        bl      Fn_028ec4
        nop
        nop
        b       L2484c
L248b4:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L248bc:
        .word   0x008aabb0
L248c0:
        .word   0xc8a0a7fc
L248c4:
        .word   0x009a0f94
L248c8:
        .word   0x008aabb1
        .size   dsp__DSP_LoadComponent, . - dsp__DSP_LoadComponent

@ FUN_00025420
        .global cmd13_25420
        .type   cmd13_25420, %function
cmd13_25420:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x2c
        mov     r5, #0
        mov     r4, r0
        str     r5, [sp, #0x14]
        bl      Fn_01b624
        mov     r0, r4
        bl      Fn_0244c8
        str     r5, [r4, #0x10]
        str     r5, [r4, #0x14]
        str     r5, [r4, #0x18]
        str     r5, [r4, #0x1c]
        str     r5, [r4, #0x20]
        str     r5, [r4, #0x24]
        str     r5, [r4, #0x28]
        str     r5, [sp]
        ldr     r0, [r4, #0x2c]
        add     r6, r4, #0x2c
        mov     r1, r5
        cmp     r0, #0
        ldrne   r0, L255f8
        bne     L25494
        mov     r0, sp
        bl      Fn_01a38c
        lsrs    r1, r0, #0x1f
        bne     L25494
        ldr     r1, [sp]
        mov     r0, #0
        str     r1, [r6]
L25494:
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        strb    r5, [r4, #0x77]
        mov     r1, #0
        add     r0, r4, #0x64
        strb    r5, [r4, #0x76]
        bl      Fn_01b240
        nop
        nop
        bl      Fn_02962c
        mov     r7, r0
        nop
        bl      Fn_0258dc
        cmp     r0, #0
        movne   r6, #2
        moveq   r6, #1
        bl      Fn_02960c
        cmp     r0, #0
        add     r0, sp, #0x10
        str     r0, [sp]
        orrne   r6, r6, #4
        ldr     r1, [r4, #0x2c]
        add     r3, sp, #0x14
        mov     r2, r6
        mov     r0, r7
        bl      Fn_029594
        mov     r6, r0
        ldr     r0, [sp, #0x10]
        mov     r3, #0
        mov     r2, #0x1000
        strb    r0, [r4, #0x74]
        ldr     r1, [sp, #0x14]
        add     r0, r4, #0x38
        bl      Fn_010884
        ldr     r2, [sp, #0x10]
        ldr     r0, [r4, #0x40]
        ldr     r1, [r4, #0x2c]
        add     r3, r0, r2, lsl #6
        add     r0, r4, #0x30
        stm     r0, {r1, r3}
        mov     r0, #0x800
        ldr     r1, [r4, #0x40]
        add     r0, r0, r2, lsl #9
        add     r1, r1, r0
        add     r0, r4, #0x58
        bl      Fn_0290dc
        ldr     r0, [sp, #0x10]
        ldr     r1, [r4, #0x40]
        mov     r2, #0x200
        mov     ip, #4
        add     r0, r2, r0, lsl #7
        add     r0, r0, r1
        str     r0, [r4, #0x5c]
        add     r0, r0, #0x40
        str     r0, [r4, #0x60]
        sub     r0, r6, #0x2a00
        subs    r0, r0, #7
        moveq   r0, #1
        strbeq  r0, [r4, #0x75]
        strbne  r5, [r4, #0x75]
        str     ip, [sp, #0x18]
        ldr     ip, L25604
        ldr     r3, L25600
        add     r6, sp, #8
        str     ip, [sp, #0x1c]
        ldr     ip, L25608
        str     r4, [sp, #0x28]
        str     r3, [sp, #4]
        str     ip, [sp, #0x20]
        ldr     ip, L2560c
        mvn     r1, #1
        ldr     r2, L255fc
        str     ip, [sp, #0x24]
        add     ip, r4, #0x1000
        add     ip, ip, #0x78
        str     ip, [sp]
        stm     r6, {r1, r5}
        add     r0, r4, #0x6c
        add     r3, sp, #0x28
        add     r1, sp, #0x18
        bl      Fn_010b94
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
        mov     r0, r4
        nop
        bl      Fn_024568
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, pc}
L255f8:
        .word   0xe0a0183b
L255fc:
        .word   0x00129340
L25600:
        .word   0x5109d502
L25604:
        .word   0x0012a704
L25608:
        .word   0x0012a720
L2560c:
        .word   0x0012a714
        .size   cmd13_25420, . - cmd13_25420

@ FUN_00025658
        .global cmd14_25658
        .type   cmd14_25658, %function
cmd14_25658:
        push    {r4, r5, r6, lr}
        mov     r6, #1
        mov     r4, r0
        strb    r6, [r0, #0x77]
        ldr     r0, [r0, #0x2c]
        svc     #0x18
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        mvn     r2, #0
        ldr     r0, [r4, #0x6c]
        mov     r5, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        add     r0, r4, #0x6c
        strb    r6, [r4, #0x70]
        bl      Fn_024588
        ldr     r0, [r4, #0x6c]
        add     r6, r4, #0x6c
        cmp     r0, #0
        beq     L256b8
        svc     #0x23
        str     r5, [r6]
L256b8:
        mov     r0, r4
        bl      Fn_0244c8
        nop
        nop
        bl      Fn_02962c
        nop
        nop
        bl      Fn_0295e4
        add     r0, r4, #0x58
        nop
        bl      Fn_02913c
        str     r5, [r4, #0x30]
        str     r5, [r4, #0x34]
        str     r5, [r4, #0x5c]
        add     r0, r4, #0x38
        str     r5, [r4, #0x60]
        bl      Fn_01b640
        ldr     r0, [r4, #0x2c]
        add     r6, r4, #0x2c
        cmp     r0, #0
        beq     L25714
        svc     #0x23
        str     r5, [r6]
L25714:
        str     r5, [r4, #0x10]
        str     r5, [r4, #0x14]
        str     r5, [r4, #0x18]
        str     r5, [r4, #0x1c]
        str     r5, [r4, #0x20]
        str     r5, [r4, #0x24]
        mov     r0, r4
        str     r5, [r4, #0x28]
        bl      Fn_024568
        mvn     r0, #0
        str     r0, [r4, #8]
        pop     {r4, r5, r6, pc}
        .size   cmd14_25658, . - cmd14_25658

@ FUN_004e10ac
        .global ac_SetClientVersion_4e10ac
        .type   ac_SetClientVersion_4e10ac, %function
ac_SetClientVersion_4e10ac:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, L4e11a8
        mov     r0, r4
        bl      Fn_0244c8
        bl      Fn_4e19c8
        cmp     r0, #0
        beq     L4e10dc
        ldr     r5, L4e11ac
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e10dc:
        ldr     r5, L4e11a8
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r6, L4e11b0
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r7, #0
        nop
        beq     L4e1130
        ldr     r0, [r6, #4]
        ldr     r5, L4e11b4
        add     r0, r0, #1
        str     r0, [r6, #4]
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e1130:
        nop
        bl      Fn_011b7c
        lsrs    r1, r0, #0x1f
        nop
        bne     L4e116c
        ldr     r0, L4e11b8
        bl      Fn_200e60
        mov     r2, r0
        ldr     r1, L4e11b8
        ldr     r0, L4e11bc
        mov     r3, #0
        bl      Fn_011be4
        lsrs    r1, r0, #0x1f
        nop
        beq     L4e1180
L4e116c:
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e1180:
        ldr     r0, [r6, #4]
        add     r0, r0, #1
        str     r0, [r6, #4]
        ldr     r0, L4e11c0
        bl      Fn_4e240c
        mov     r5, #0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e11a8:
        .word   0x009a0ea8
L4e11ac:
        .word   0xd8a09ff9
L4e11b0:
        .word   0x008aab30
L4e11b4:
        .word   0x00209ff9
L4e11b8:
        .word   0x007e45c2
L4e11bc:
        .word   0x008ab858
L4e11c0:
        .word   0x060100c8
        .size   ac_SetClientVersion_4e10ac, . - ac_SetClientVersion_4e10ac

@ FUN_004e11c4
        .global ac_IsConnected_4e11c4
        .type   ac_IsConnected_4e11c4, %function
ac_IsConnected_4e11c4:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        ldr     r4, L4e1224
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L4e1228
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        bne     L4e1208
        bl      Fn_4e19c8
        cmp     r0, #0
        beq     L4e1220
L4e1208:
        mov     r0, #0
        strb    r0, [sp]
        mov     r1, sp
        mov     r0, r5
        bl      Fn_4e1d94
        ldrsb   r0, [sp]
L4e1220:
        pop     {r3, r4, r5, r6, r7, pc}
L4e1224:
        .word   0x009a0ea8
L4e1228:
        .word   0x008aab30
        .size   ac_IsConnected_4e11c4, . - ac_IsConnected_4e11c4

@ FUN_004e122c
        .global ac_IsConnected_4e122c
        .type   ac_IsConnected_4e122c, %function
ac_IsConnected_4e122c:
        push    {r3, r4, r5, lr}
        ldr     r4, L4e1284
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L4e1288
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L4e126c
        bl      Fn_4e19c8
        cmp     r0, #0
        beq     L4e1280
L4e126c:
        mov     r0, #0
        mov     r1, sp
        strb    r0, [sp]
        bl      Fn_4e1d94
        ldrsb   r0, [sp]
L4e1280:
        pop     {r3, r4, r5, pc}
L4e1284:
        .word   0x009a0ea8
L4e1288:
        .word   0x008aab30
        .size   ac_IsConnected_4e122c, . - ac_IsConnected_4e122c

@ FUN_004e128c
        .global ac_Multi2_4e128c
        .type   ac_Multi2_4e128c, %function
ac_Multi2_4e128c:
        push    {r3, r4, r5, lr}
        mov     r5, #0
        mov     r1, r5
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f65f4
        lsrs    r0, r0, #0x1f
        beq     L4e12d0
        ldr     r0, [sp]
        ldr     r4, L4e1348
        cmp     r0, #0
        beq     L4e1340
L4e12bc:
        nop
        svc     #0x23
        str     r5, [sp]
        nop
        b       L4e1340
L4e12d0:
        ldr     r0, [sp]
        cmp     r0, #0
        ldreq   r4, L4e134c
        beq     L4e12e8
        bl      Fn_4e2568
        mov     r4, r0
L4e12e8:
        and     r0, r4, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        blt     L4e1310
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
L4e1310:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e1324
        svc     #0x23
        str     r5, [sp]
L4e1324:
        ands    r0, r4, #0x80000000
        bmi     L4e1340
        bl      Fn_4e29ac
        mov     r4, r0
        ldr     r0, [sp]
        cmp     r0, #0
        bne     L4e12bc
L4e1340:
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L4e1348:
        .word   0xf9609ff3
L4e134c:
        .word   0xe0409fff
        .size   ac_Multi2_4e128c, . - ac_Multi2_4e128c

@ FUN_004e13dc
        .global ac_Multi2_4e13dc
        .type   ac_Multi2_4e13dc, %function
ac_Multi2_4e13dc:
        push    {r3, r4, r5, lr}
        mov     r5, #0
        mov     r1, r5
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f65f4
        lsrs    r0, r0, #0x1f
        beq     L4e1420
        ldr     r0, [sp]
        ldr     r4, L4e1498
        cmp     r0, #0
        beq     L4e1490
L4e140c:
        nop
        svc     #0x23
        str     r5, [sp]
        nop
        b       L4e1490
L4e1420:
        ldr     r0, [sp]
        cmp     r0, #0
        ldreq   r4, L4e149c
        beq     L4e1438
        bl      Fn_4e26f8
        mov     r4, r0
L4e1438:
        and     r0, r4, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        blt     L4e1460
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
L4e1460:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e1474
        svc     #0x23
        str     r5, [sp]
L4e1474:
        ands    r0, r4, #0x80000000
        bmi     L4e1490
        bl      Fn_4e2c30
        mov     r4, r0
        ldr     r0, [sp]
        cmp     r0, #0
        bne     L4e140c
L4e1490:
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L4e1498:
        .word   0xf9609ff3
L4e149c:
        .word   0xe0409fff
        .size   ac_Multi2_4e13dc, . - ac_Multi2_4e13dc

@ FUN_004e14b0
        .global ac_Multi3_4e14b0
        .type   ac_Multi3_4e14b0, %function
ac_Multi3_4e14b0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r5, L4e1564
        mov     r8, r2
        mov     r4, #0
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L4e1524
L4e14d4:
        mov     r0, r4
L4e14d8:
        lsrs    r1, r0, #0x1f
        bne     L4e1520
        ldr     r0, L4e1568
        add     r1, r8, r8, lsl #2
        add     r1, r1, r8, lsl #3
        and     r2, r0, r1, lsl #2
        mov     r1, r7
        mov     r0, r6
        bl      Fn_4e220c
        mov     r4, r0
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L4e151c
        bl      Fn_504394
        mov     r0, #0
        strb    r0, [r5]
        bl      Fn_504590
L4e151c:
        mov     r0, r4
L4e1520:
        pop     {r4, r5, r6, r7, r8, pc}
L4e1524:
        nop
        bl      Fn_008964
        lsrs    r1, r0, #0x1f
        nop
        bne     L4e14d8
        mov     r0, #1
        bl      Fn_504350
        mov     r4, r0
        lsrs    r0, r0, #0x1f
        moveq   r0, #1
        strbeq  r0, [r5]
        blne    Fn_504590
        nop
        nop
        b       L4e14d4
        .word   0xe0409fff
L4e1564:
        .word   0x008aab30
L4e1568:
        .word   0x0000ffff
        .size   ac_Multi3_4e14b0, . - ac_Multi3_4e14b0

@ FUN_004e1674
        .global ac_Multi3_4e1674
        .type   ac_Multi3_4e1674, %function
ac_Multi3_4e1674:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r5, L4e1728
        mov     r8, r2
        mov     r4, #0
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L4e16e8
L4e1698:
        mov     r0, r4
L4e169c:
        lsrs    r1, r0, #0x1f
        bne     L4e16e4
        ldr     r0, L4e172c
        add     r1, r8, r8, lsl #3
        add     r1, r1, r8, lsl #5
        and     r2, r0, r1, lsl #2
        mov     r1, r7
        mov     r0, r6
        bl      Fn_4e2398
        mov     r4, r0
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L4e16e0
        bl      Fn_504394
        mov     r0, #0
        strb    r0, [r5]
        bl      Fn_504590
L4e16e0:
        mov     r0, r4
L4e16e4:
        pop     {r4, r5, r6, r7, r8, pc}
L4e16e8:
        nop
        bl      Fn_008964
        lsrs    r1, r0, #0x1f
        nop
        bne     L4e169c
        mov     r0, #1
        bl      Fn_504350
        mov     r4, r0
        lsrs    r0, r0, #0x1f
        moveq   r0, #1
        strbeq  r0, [r5]
        blne    Fn_504590
        nop
        nop
        b       L4e1698
        .word   0xe0409fff
L4e1728:
        .word   0x008aab30
L4e172c:
        .word   0x0000ffff
        .size   ac_Multi3_4e1674, . - ac_Multi3_4e1674

@ FUN_004e1760
        .global ac_Multi2_4e1760
        .type   ac_Multi2_4e1760, %function
ac_Multi2_4e1760:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, #0
        mov     r5, r0
        mov     r1, r4
        mov     r0, sp
        str     r4, [sp]
        bl      Fn_4f65f4
        lsrs    r0, r0, #0x1f
        beq     L4e17a8
        ldr     r0, [sp]
        ldr     r5, L4e1864
        cmp     r0, #0
        beq     L4e185c
L4e1794:
        nop
        svc     #0x23
        str     r4, [sp]
        nop
        b       L4e185c
L4e17a8:
        mov     r1, sp
        mov     r0, r5
        bl      Fn_4e1acc
        mov     r5, r0
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        blt     L4e17e0
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
L4e17e0:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e17f4
        svc     #0x23
        str     r4, [sp]
L4e17f4:
        ldr     r6, L4e1868
        ands    r0, r5, #0x80000000
        ldrb    r0, [r6]
        bpl     L4e182c
        cmp     r0, #0
        beq     L4e181c
        bl      Fn_504394
        strb    r4, [r6]
        nop
        bl      Fn_504590
L4e181c:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e185c
        b       L4e1794
L4e182c:
        cmp     r0, #0
        beq     L4e1844
        bl      Fn_504394
        strb    r4, [r6]
        nop
        bl      Fn_504590
L4e1844:
        nop
        bl      Fn_4e2280
        mov     r5, r0
        ldr     r0, [sp]
        cmp     r0, #0
        bne     L4e1794
L4e185c:
        mov     r0, r5
        pop     {r3, r4, r5, r6, r7, pc}
L4e1864:
        .word   0xf9609ff3
L4e1868:
        .word   0x008aab30
        .size   ac_Multi2_4e1760, . - ac_Multi2_4e1760

@ FUN_004e186c
        .global ac_i_SetClientVersion_4e186c
        .type   ac_i_SetClientVersion_4e186c, %function
ac_i_SetClientVersion_4e186c:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, L4e1978
        mov     r0, r4
        bl      Fn_0244c8
        bl      Fn_4e13a0
        cmp     r0, #0
        beq     L4e189c
        ldr     r5, L4e197c
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e189c:
        ldr     r5, L4e1978
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r6, L4e1980
        ldr     r0, [r6]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r7, #0
        nop
        beq     L4e18f0
        ldr     r0, [r6]
        ldr     r5, L4e1984
        add     r0, r0, #1
        str     r0, [r6]
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e18f0:
        nop
        bl      Fn_011b7c
        lsrs    r1, r0, #0x1f
        nop
        bne     L4e192c
        ldr     r0, L4e1988
        bl      Fn_200e60
        mov     r2, r0
        ldr     r1, L4e1988
        ldr     r0, L4e198c
        mov     r3, #0
        bl      Fn_011be4
        lsrs    r1, r0, #0x1f
        nop
        beq     L4e1940
L4e192c:
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e1940:
        ldr     r1, L4e198c
        ldr     r0, L4e1990
        ldr     r1, [r1]
        str     r1, [r0]
        ldr     r0, [r6]
        add     r0, r0, #1
        str     r0, [r6]
        ldr     r0, L4e1994
        bl      Fn_4e3928
        mov     r5, #0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e1978:
        .word   0x009a0ea8
L4e197c:
        .word   0xd8a09ff9
L4e1980:
        .word   0x008ab860
L4e1984:
        .word   0x00209ff9
L4e1988:
        .word   0x007eb65c
L4e198c:
        .word   0x008b8764
L4e1990:
        .word   0x008ab858
L4e1994:
        .word   0x060100c8
        .size   ac_i_SetClientVersion_4e186c, . - ac_i_SetClientVersion_4e186c

@ FUN_004e1a14
        .global ac_Multi3_4e1a14
        .type   ac_Multi3_4e1a14, %function
ac_Multi3_4e1a14:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r5, L4e1ac4
        mov     r8, r2
        mov     r4, #0
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L4e1a84
L4e1a38:
        mov     r0, r4
L4e1a3c:
        lsrs    r1, r0, #0x1f
        bne     L4e1a80
        ldr     r0, L4e1ac8
        add     r1, r8, r8, lsl #3
        and     r2, r0, r1, lsl #2
        mov     r1, r7
        mov     r0, r6
        bl      Fn_4e2c6c
        mov     r4, r0
        ldrb    r0, [r5]
        cmp     r0, #0
        beq     L4e1a7c
        bl      Fn_504394
        mov     r0, #0
        strb    r0, [r5]
        bl      Fn_504590
L4e1a7c:
        mov     r0, r4
L4e1a80:
        pop     {r4, r5, r6, r7, r8, pc}
L4e1a84:
        nop
        bl      Fn_008964
        lsrs    r1, r0, #0x1f
        nop
        bne     L4e1a3c
        mov     r0, #1
        bl      Fn_504350
        mov     r4, r0
        lsrs    r0, r0, #0x1f
        moveq   r0, #1
        strbeq  r0, [r5]
        blne    Fn_504590
        nop
        nop
        b       L4e1a38
        .word   0xe0409fff
L4e1ac4:
        .word   0x008aab30
L4e1ac8:
        .word   0x0000ffff
        .size   ac_Multi3_4e1a14, . - ac_Multi3_4e1a14

@ FUN_004e1acc
        .global ac_Multi5_4e1acc
        .type   ac_Multi5_4e1acc, %function
ac_Multi5_4e1acc:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r1, sp
        bl      Fn_4e22bc
        lsrs    r1, r0, #0x1f
        bne     L4e1b10
        ldrb    r0, [sp]
        cmp     r0, #0
        movne   r0, r5
        movne   r2, #0x40
        beq     L4e1b14
        mov     r1, r5
        bl      Fn_4e1e38
L4e1b04:
        ldr     r1, [r6]
        mov     r0, r5
        bl      Fn_4e1de0
L4e1b10:
        pop     {r3, r4, r5, r6, r7, pc}
L4e1b14:
        ldr     r7, L4e1b90
        mov     r4, #0
        ldrb    r0, [r7]
        cmp     r0, #0
        beq     L4e1b54
L4e1b28:
        mov     r0, r4
L4e1b2c:
        lsrs    r1, r0, #0x1f
        bne     L4e1b10
        mov     r3, #0
        mov     r1, r5
        mov     r2, r3
        mov     r0, r1
        bl      Fn_4e2a80
        nop
        nop
        b       L4e1b04
L4e1b54:
        nop
        bl      Fn_008964
        lsrs    r1, r0, #0x1f
        nop
        bne     L4e1b2c
        mov     r0, #1
        bl      Fn_504350
        mov     r4, r0
        lsrs    r0, r0, #0x1f
        moveq   r0, #1
        strbeq  r0, [r7]
        blne    Fn_504590
        nop
        nop
        b       L4e1b28
L4e1b90:
        .word   0x008aab30
        .size   ac_Multi5_4e1acc, . - ac_Multi5_4e1acc

@ FUN_004e1ba0
        .global ac_Multi2_4e1ba0
        .type   ac_Multi2_4e1ba0, %function
ac_Multi2_4e1ba0:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L4e1c5c
        sub     sp, sp, #8
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L4e1c60
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        ldr     r4, L4e1c64
        cmp     r6, #0
        mov     r6, #0
        bne     L4e1bf0
        bl      Fn_4e19c8
        cmp     r0, #0
        beq     L4e1c40
L4e1bf0:
        mov     r1, sp
        mov     r0, #0
        strb    r6, [sp]
        bl      Fn_4e1d94
        ldrb    r0, [sp]
        cmp     r0, #0
        addne   r0, sp, #4
        beq     L4e1c40
        bl      Fn_4e322c
        ands    r1, r0, #0x80000000
        nop
        bmi     L4e1c44
        ldrh    r0, [sp, #4]
        cmp     r0, #3
        strbeq  r6, [r5]
        beq     L4e1c4c
        cmp     r0, #2
        moveq   r0, #2
        strbeq  r0, [r5]
        beq     L4e1c4c
L4e1c40:
        mov     r0, r4
L4e1c44:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L4e1c4c:
        add     sp, sp, #8
        mov     r0, #0
        pop     {r4, r5, r6, pc}
        .word   0xe0409fff
L4e1c5c:
        .word   0x009a0ea8
L4e1c60:
        .word   0x008aab30
L4e1c64:
        .word   0xe0a09d2e
        .size   ac_Multi2_4e1ba0, . - ac_Multi2_4e1ba0

@ FUN_004e1c88
        .global ac_Multi2_4e1c88
        .type   ac_Multi2_4e1c88, %function
ac_Multi2_4e1c88:
        push    {r3, r4, r5, lr}
        mov     r5, #0
        mov     r1, r5
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f65f4
        lsrs    r0, r0, #0x1f
        beq     L4e1ccc
        ldr     r0, [sp]
        ldr     r4, L4e1d44
        cmp     r0, #0
        beq     L4e1d3c
L4e1cb8:
        nop
        svc     #0x23
        str     r5, [sp]
        nop
        b       L4e1d3c
L4e1ccc:
        ldr     r0, [sp]
        cmp     r0, #0
        ldreq   r4, L4e1d48
        beq     L4e1ce4
        bl      Fn_4e1d4c
        mov     r4, r0
L4e1ce4:
        and     r0, r4, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        blt     L4e1d0c
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
L4e1d0c:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e1d20
        svc     #0x23
        str     r5, [sp]
L4e1d20:
        ands    r0, r4, #0x80000000
        bmi     L4e1d3c
        bl      Fn_4e2030
        mov     r4, r0
        ldr     r0, [sp]
        cmp     r0, #0
        bne     L4e1cb8
L4e1d3c:
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L4e1d44:
        .word   0xf9609ff3
L4e1d48:
        .word   0xe0409fff
        .size   ac_Multi2_4e1c88, . - ac_Multi2_4e1c88

@ FUN_004e740c
        .global ac_Multi2_4e740c
        .type   ac_Multi2_4e740c, %function
ac_Multi2_4e740c:
        push    {r3, r4, r5, lr}
        mov     r5, #0
        mov     r1, r5
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f65f4
        lsrs    r0, r0, #0x1f
        beq     L4e7450
        ldr     r0, [sp]
        ldr     r4, L4e74c8
        cmp     r0, #0
        beq     L4e74c0
L4e743c:
        nop
        svc     #0x23
        str     r5, [sp]
        nop
        b       L4e74c0
L4e7450:
        ldr     r0, [sp]
        cmp     r0, #0
        ldreq   r4, L4e74cc
        beq     L4e7468
        bl      Fn_4e1e98
        mov     r4, r0
L4e7468:
        and     r0, r4, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        blt     L4e7490
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
L4e7490:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e74a4
        svc     #0x23
        str     r5, [sp]
L4e74a4:
        ands    r0, r4, #0x80000000
        bmi     L4e74c0
        bl      Fn_4e25b0
        mov     r4, r0
        ldr     r0, [sp]
        cmp     r0, #0
        bne     L4e743c
L4e74c0:
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L4e74c8:
        .word   0xf9609ff3
L4e74cc:
        .word   0xe0409fff
        .size   ac_Multi2_4e740c, . - ac_Multi2_4e740c

@ FUN_004e74d4
        .global ndm_u_LeaveExclusiveState_4e74d4
        .type   ndm_u_LeaveExclusiveState_4e74d4, %function
ndm_u_LeaveExclusiveState_4e74d4:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, L4e7594
        mov     r0, r4
        bl      Fn_0244c8
        add     r5, r4, #0
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r6, L4e7598
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r7, #0
        beq     L4e7580
        ldrb    r0, [r6]
        cmp     r0, #0
        beq     L4e7530
        bl      Fn_504394
        mov     r0, #0
        strb    r0, [r6]
        bl      Fn_504590
L4e7530:
        ldr     r0, [r6, #4]
        subs    r0, r0, #1
        str     r0, [r6, #4]
        bne     L4e756c
        ldr     r0, L4e759c
        ldr     r0, [r0]
        svc     #0x23
        lsrs    r1, r0, #0x1f
        nop
        beq     L4e756c
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e756c:
        mov     r5, #0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e7580:
        ldr     r5, L4e75a0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e7594:
        .word   0x009a0ea8
L4e7598:
        .word   0x008aab30
L4e759c:
        .word   0x008ab858
L4e75a0:
        .word   0x00209ff8
        .size   ndm_u_LeaveExclusiveState_4e74d4, . - ndm_u_LeaveExclusiveState_4e74d4

@ FUN_004e75a4
        .global ac_Multi2_4e75a4
        .type   ac_Multi2_4e75a4, %function
ac_Multi2_4e75a4:
        push    {r3, r4, r5, lr}
        mov     r5, #0
        mov     r1, r5
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f65f4
        lsrs    r0, r0, #0x1f
        beq     L4e75e8
        ldr     r0, [sp]
        ldr     r4, L4e7660
        cmp     r0, #0
        beq     L4e7658
L4e75d4:
        nop
        svc     #0x23
        str     r5, [sp]
        nop
        b       L4e7658
L4e75e8:
        ldr     r0, [sp]
        cmp     r0, #0
        ldreq   r4, L4e7664
        beq     L4e7600
        bl      Fn_4e1fa0
        mov     r4, r0
L4e7600:
        and     r0, r4, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        blt     L4e7628
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        nop
        blne    Fn_01b6ac
L4e7628:
        ldr     r0, [sp]
        cmp     r0, #0
        beq     L4e763c
        svc     #0x23
        str     r5, [sp]
L4e763c:
        ands    r0, r4, #0x80000000
        bmi     L4e7658
        bl      Fn_4e26bc
        mov     r4, r0
        ldr     r0, [sp]
        cmp     r0, #0
        bne     L4e75d4
L4e7658:
        mov     r0, r4
        pop     {r3, r4, r5, pc}
L4e7660:
        .word   0xf9609ff3
L4e7664:
        .word   0xe0409fff
        .size   ac_Multi2_4e75a4, . - ac_Multi2_4e75a4

@ FUN_004e7800
        .global fs_USER_GetCardType_4e7800
        .type   fs_USER_GetCardType_4e7800, %function
fs_USER_GetCardType_4e7800:
        push    {r3, lr}
        mov     r1, r0
        mov     r0, sp
        ldr     r2, [r2, #0x10]
        str     r2, [sp]
        bl      Fn_4eddc0
        pop     {r3, pc}
        .size   fs_USER_GetCardType_4e7800, . - fs_USER_GetCardType_4e7800

@ FUN_004e7870
        .global fs_USER_ControlArchive_4e7870
        .type   fs_USER_ControlArchive_4e7870, %function
fs_USER_ControlArchive_4e7870:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x1c
        mov     r7, r1
        mov     r4, r0
        bl      Fn_684968
        cmp     r0, #0
        addne   r0, r0, #8
        ldreq   r0, L4e78f0
        ldmne   r0, {r5, r6}
        beq     L4e78e8
L4e7898:
        ldrh    r0, [r4], #2
        cmp     r0, #0x3a
        bne     L4e7898
        mov     r0, r4
        blx     Fn_000d0c
        ldr     r1, L4e78f4
        add     r0, r0, #1
        mov     r2, #1
        add     ip, sp, #8
        ldr     r1, [r1, #0x10]
        lsl     r0, r0, #1
        mov     r3, r6
        str     r1, [sp, #0x14]
        mov     r1, #8
        str     r1, [sp, #0x10]
        stm     sp, {r2, r4}
        stm     ip, {r0, r7}
        mov     r2, r5
        add     r0, sp, #0x14
        bl      Fn_4ee08c
L4e78e8:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L4e78f0:
        .word   0xc8804465
L4e78f4:
        .word   0x008aac38
        .size   fs_USER_ControlArchive_4e7870, . - fs_USER_ControlArchive_4e7870

@ FUN_004e7b78
        .global fs_USER_ControlArchive_4e7b78
        .type   fs_USER_ControlArchive_4e7b78, %function
fs_USER_ControlArchive_4e7b78:
        push    {r4, lr}
        sub     sp, sp, #0x20
        bl      Fn_6848a8
        cmp     r0, #0
        ldreq   r0, L4e7bcc
        beq     L4e7bc4
        add     ip, sp, #0x18
        ldrd    r2, r3, [r0, #8]
        ldr     r0, L4e7bd0
        mov     r4, #0
        ldr     r1, [r0, #0x10]
        mov     r0, #1
        str     r0, [sp, #0x10]
        str     r1, [sp, #0x14]
        add     r1, sp, #0x1c
        strd    r0, r1, [sp, #8]
        add     r0, sp, #0x14
        stm     sp, {r4, ip}
        bl      Fn_4ee08c
L4e7bc4:
        add     sp, sp, #0x20
        pop     {r4, pc}
L4e7bcc:
        .word   0xc8804465
L4e7bd0:
        .word   0x008aac38
        .size   fs_USER_ControlArchive_4e7b78, . - fs_USER_ControlArchive_4e7b78

@ FUN_004e7bf4
        .global fs_USER_FormatSaveData_4e7bf4
        .type   fs_USER_FormatSaveData_4e7bf4, %function
fs_USER_FormatSaveData_4e7bf4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        sub     sp, sp, #0x30
        mov     r4, r1
        mov     r8, r2
        mov     r7, #0x200
        mov     r0, r1
        bl      Fn_533490
        mov     r6, r0
        mov     r0, r5
        bl      Fn_533490
        mov     r1, r0
        ldr     r0, L4e7c68
        mov     r2, #1
        add     r3, sp, #0x20
        strd    r2, r3, [sp, #0x1c]
        str     r2, [sp, #0x24]
        ldr     ip, [r0, #0x10]
        add     lr, sp, #0x14
        add     r0, sp, #0x28
        str     ip, [sp, #0x28]
        stm     lr, {r1, r8}
        mov     r1, #4
        stm     sp, {r2, r7}
        add     r7, sp, #8
        stm     r7, {r4, r5, r6}
        bl      Fn_4ee124
        add     sp, sp, #0x30
        pop     {r4, r5, r6, r7, r8, pc}
L4e7c68:
        .word   0x008aac38
        .size   fs_USER_FormatSaveData_4e7bf4, . - fs_USER_FormatSaveData_4e7bf4

@ FUN_004e7c6c
        .global fs_USER_FormatSaveData_4e7c6c
        .type   fs_USER_FormatSaveData_4e7c6c, %function
fs_USER_FormatSaveData_4e7c6c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        sub     sp, sp, #0x30
        mov     r6, r2
        mov     r7, r3
        mov     r4, r1
        mov     r0, r1
        bl      Fn_533490
        mov     r8, r0
        mov     r0, r5
        bl      Fn_533490
        mov     r1, r0
        add     r0, sp, #0x1c
        mov     r2, #1
        add     ip, sp, #0x20
        stm     r0, {r2, ip}
        ldr     r0, L4e7ce8
        str     r2, [sp, #0x24]
        ldr     r3, [r0, #0x10]
        add     r0, sp, #0x14
        str     r3, [sp, #0x28]
        stm     r0, {r1, r6}
        mov     r3, ip
        add     ip, sp, #8
        stm     sp, {r2, r7}
        mov     r1, #4
        add     r0, sp, #0x28
        stm     ip, {r4, r5, r8}
        bl      Fn_4ee124
        add     sp, sp, #0x30
        pop     {r4, r5, r6, r7, r8, pc}
L4e7ce8:
        .word   0x008aac38
        .size   fs_USER_FormatSaveData_4e7c6c, . - fs_USER_FormatSaveData_4e7c6c

@ FUN_004e7cfc
        .global fs_USER_CardSlotIsInserted_4e7cfc
        .type   fs_USER_CardSlotIsInserted_4e7cfc, %function
fs_USER_CardSlotIsInserted_4e7cfc:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        bl      Fn_01a8e4
        str     r0, [sp]
        add     r1, sp, #4
        mov     r0, sp
        bl      Fn_4ee678
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrsb   r0, [sp, #4]
        add     sp, sp, #0xc
        pop     {pc}
        .size   fs_USER_CardSlotIsInserted_4e7cfc, . - fs_USER_CardSlotIsInserted_4e7cfc

@ FUN_004e7d34
        .global fs_USER_IsSdmcDetected_4e7d34
        .type   fs_USER_IsSdmcDetected_4e7d34, %function
fs_USER_IsSdmcDetected_4e7d34:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        bl      Fn_01a8e4
        str     r0, [sp]
        add     r1, sp, #4
        mov     r0, sp
        bl      Fn_4ee17c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrsb   r0, [sp, #4]
        add     sp, sp, #0xc
        pop     {pc}
        .size   fs_USER_IsSdmcDetected_4e7d34, . - fs_USER_IsSdmcDetected_4e7d34

@ FUN_004e7d6c
        .global fs_USER_IsSdmcWritable_4e7d6c
        .type   fs_USER_IsSdmcWritable_4e7d6c, %function
fs_USER_IsSdmcWritable_4e7d6c:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        bl      Fn_01a8e4
        str     r0, [sp]
        add     r1, sp, #4
        mov     r0, sp
        bl      Fn_4ee1b4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrsb   r0, [sp, #4]
        add     sp, sp, #0xc
        pop     {pc}
        .size   fs_USER_IsSdmcWritable_4e7d6c, . - fs_USER_IsSdmcWritable_4e7d6c

@ FUN_004e8128
        .global fs_USER_CreateExtSaveData_4e8128
        .type   fs_USER_CreateExtSaveData_4e8128, %function
fs_USER_CreateExtSaveData_4e8128:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x24
        mov     r4, r2
        mov     r5, r3
        mov     r2, r0
        mov     r3, r1
        ldrd    r6, r7, [sp, #0x38]
        mov     r1, #1
        add     r0, sp, #0x10
        bl      Fn_4e8b84
        ldr     r0, L4e81b4
        mvn     r1, #0
        add     ip, sp, #4
        mov     r3, r7
        ldr     r0, [r0, #0x10]
        str     r1, [sp]
        mov     r2, r6
        str     r0, [sp, #0x1c]
        mov     r0, r1
        stm     ip, {r0, r4, r5}
        add     r1, sp, #0x10
        add     r0, sp, #0x1c
        bl      Fn_4ee4e8
        and     r1, r0, #0x3fc00
        lsr     r1, r1, #0xa
        cmp     r1, #0x11
        bne     L4e81ac
        lsl     r1, r0, #0x16
        lsr     r1, r1, #0x16
        cmp     r1, #0xdc
        blt     L4e81ac
        cmp     r1, #0xe5
        ldrle   r0, L4e81b8
L4e81ac:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, pc}
L4e81b4:
        .word   0x008aac38
L4e81b8:
        .word   0xc8804482
        .size   fs_USER_CreateExtSaveData_4e8128, . - fs_USER_CreateExtSaveData_4e8128

@ FUN_004e8670
        .global fs_USER_AbnegateAccessRight_4e8670
        .type   fs_USER_AbnegateAccessRight_4e8670, %function
fs_USER_AbnegateAccessRight_4e8670:
        push    {r3, lr}
        mov     r1, r0
        mov     r0, sp
        ldr     r2, [r2, #0x10]
        str     r2, [sp]
        bl      Fn_4ee87c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        pop     {r3, pc}
        .size   fs_USER_AbnegateAccessRight_4e8670, . - fs_USER_AbnegateAccessRight_4e8670

@ FUN_004e88a8
        .global fs_USER_QueryTotalQuotaSize_4e88a8
        .type   fs_USER_QueryTotalQuotaSize_4e88a8, %function
fs_USER_QueryTotalQuotaSize_4e88a8:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r6, r0
        ldr     r5, [sp, #0x28]
        mov     r7, r1
        mov     r8, r2
        mov     r4, r3
        bl      Fn_01a8e4
        str     r0, [sp, #8]
        mov     r3, r8
        mov     r2, r7
        mov     r1, r6
        add     r0, sp, #8
        strd    r4, r5, [sp]
        bl      Fn_4ee9c4
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
        .size   fs_USER_QueryTotalQuotaSize_4e88a8, . - fs_USER_QueryTotalQuotaSize_4e88a8

@ FUN_004e88ec
        .global fs_USER_ReadExtSaveDataIcon_4e88ec
        .type   fs_USER_ReadExtSaveDataIcon_4e88ec, %function
fs_USER_ReadExtSaveDataIcon_4e88ec:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x18
        mov     r5, r0
        add     r0, sp, #0x28
        mov     r1, #1
        ldm     r0, {r4, r6}
        add     r0, sp, #4
        bl      Fn_4e8b84
        ldr     r0, L4e8968
        mov     r3, r4
        mov     r1, r5
        ldr     r2, [r0, #0x10]
        add     r0, sp, #0x10
        str     r6, [sp]
        str     r2, [sp, #0x10]
        add     r2, sp, #4
        bl      Fn_4eea1c
        and     r1, r0, #0x3fc00
        lsr     r1, r1, #0xa
        cmp     r1, #0x11
        bne     L4e8958
        lsl     r1, r0, #0x16
        lsr     r1, r1, #0x16
        cmp     r1, #0xdc
        blt     L4e8958
        cmp     r1, #0xe5
        ldrle   r0, L4e896c
L4e8958:
        add     sp, sp, #0x18
        lsrs    r1, r0, #0x1f
        moveq   r0, #0
        pop     {r4, r5, r6, pc}
L4e8968:
        .word   0x008aac38
L4e896c:
        .word   0xc8804482
        .size   fs_USER_ReadExtSaveDataIcon_4e88ec, . - fs_USER_ReadExtSaveDataIcon_4e88ec

@ FUN_004e89b8
        .global fs_USER_ControlArchive_4e89b8
        .type   fs_USER_ControlArchive_4e89b8, %function
fs_USER_ControlArchive_4e89b8:
        push    {r4, lr}
        sub     sp, sp, #0x20
        bl      Fn_6848a8
        cmp     r0, #0
        ldreq   r0, L4e8a0c
        beq     L4e8a04
        add     ip, sp, #0x18
        ldrd    r2, r3, [r0, #8]
        ldr     r0, L4e8a10
        mov     r4, #0
        ldr     r1, [r0, #0x10]
        mov     r0, #1
        str     r0, [sp, #0x10]
        str     r1, [sp, #0x14]
        add     r1, sp, #0x1c
        strd    r0, r1, [sp, #8]
        add     r0, sp, #0x14
        stm     sp, {r4, ip}
        bl      Fn_4ee08c
L4e8a04:
        add     sp, sp, #0x20
        pop     {r4, pc}
L4e8a0c:
        .word   0xc8804465
L4e8a10:
        .word   0x008aac38
        .size   fs_USER_ControlArchive_4e89b8, . - fs_USER_ControlArchive_4e89b8

@ FUN_004e8a14
        .global fs_USER_Multi2_4e8a14
        .type   fs_USER_Multi2_4e8a14, %function
fs_USER_Multi2_4e8a14:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x20
        mov     ip, #0
        add     r8, sp, #0x18
        strh    ip, [sp, #2]
        ldr     r7, [sp, #0x40]
        strb    ip, [sp]
        strb    ip, [sp, #1]
        str     r0, [sp, #4]
        ldm     sp, {r0, ip}
        mov     r4, r1
        mov     r5, r2
        stm     r8, {r0, ip}
        mov     r6, r3
        mov     sb, #0x1000
        mov     r0, r2
        bl      Fn_533490
        mov     sl, r0
        mov     r0, r4
        bl      Fn_533490
        ldr     r1, L4e8aa0
        mov     r2, r6
        add     r6, sp, #0xc
        mov     r3, sb
        ldr     r1, [r1, #0x10]
        str     r1, [sp, #0x14]
        str     r5, [sp]
        stm     r6, {r0, r7}
        add     r6, sp, #4
        mov     r1, r8
        add     r0, sp, #0x14
        stm     r6, {r4, sl}
        bl      Fn_4eeb40
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4e8aa0:
        .word   0x008aac38
        .size   fs_USER_Multi2_4e8a14, . - fs_USER_Multi2_4e8a14

@ FUN_004e8af0
        .global fs_USER_EnumerateExtSaveData_4e8af0
        .type   fs_USER_EnumerateExtSaveData_4e8af0, %function
fs_USER_EnumerateExtSaveData_4e8af0:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r7, r1
        mov     r4, #0
        mov     r1, #1
        strh    r4, [sp, #2]
        strb    r1, [sp]
        strb    r4, [sp, #1]
        ldr     r8, [sp]
        mov     r6, r0
        mov     r5, r2
        bl      Fn_01a8e4
        add     ip, sp, #4
        str     r0, [sp, #0xc]
        mov     r1, #8
        str     r8, [sp]
        stm     ip, {r1, r4}
        lsl     r3, r5, #3
        mov     r2, r7
        mov     r1, r6
        add     r0, sp, #0xc
        bl      Fn_4eebc4
        and     r1, r0, #0x3fc00
        lsr     r1, r1, #0xa
        cmp     r1, #0x11
        bne     L4e8b70
        lsl     r1, r0, #0x16
        lsr     r1, r1, #0x16
        cmp     r1, #0xdc
        blt     L4e8b70
        cmp     r1, #0xe5
        ldrle   r0, L4e8b80
L4e8b70:
        add     sp, sp, #0x10
        lsrs    r1, r0, #0x1f
        moveq   r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L4e8b80:
        .word   0xc8804482
        .size   fs_USER_EnumerateExtSaveData_4e8af0, . - fs_USER_EnumerateExtSaveData_4e8af0

@ FUN_004e8d54
        .global fs_USER_cmd872
        .type   fs_USER_cmd872, %function
fs_USER_cmd872:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x1c
        add     r5, sp, #0x30
        ldm     r5, {r1, r4, r6, r7, ip}
        ldr     r5, L4e8d88
        ldr     r5, [r5, #0x10]
        str     r5, [sp, #0x14]
        stm     sp, {r1, r4, r6, r7, ip}
        mov     r1, r0
        add     r0, sp, #0x14
        bl      Fn_4eec28
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L4e8d88:
        .word   0x008aac38
        .size   fs_USER_cmd872, . - fs_USER_cmd872

@ FUN_004e8ddc
        .global fs_USER_FormatSaveData_4e8ddc
        .type   fs_USER_FormatSaveData_4e8ddc, %function
fs_USER_FormatSaveData_4e8ddc:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        sub     sp, sp, #0x2c
        mov     r7, r2
        mov     r4, #2
        mov     r5, r1
        mov     sb, #0x200
        mov     r0, r1
        bl      Fn_533490
        mov     r8, r0
        mov     r0, r6
        bl      Fn_533490
        mov     r1, #0
        str     r1, [sp, #0x20]
        str     r1, [sp, #0x24]
        ldr     r1, L4e8e60
        str     r4, [sp, #0x1c]
        mov     ip, #0xc
        add     r4, sp, #0x14
        ldr     r1, [r1, #0x10]
        str     sb, [sp, #4]
        add     r3, sp, #0x1c
        str     r1, [sp, #0x28]
        str     ip, [sp]
        stm     r4, {r0, r7}
        add     r4, sp, #8
        ldr     r1, L4e8e64
        mov     r2, #2
        add     r0, sp, #0x28
        stm     r4, {r5, r6, r8}
        bl      Fn_4ee124
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4e8e60:
        .word   0x008aac38
L4e8e64:
        .word   0x567890b2
        .size   fs_USER_FormatSaveData_4e8ddc, . - fs_USER_FormatSaveData_4e8ddc

@ FUN_004e8e68
        .global fs_USER_Multi2_4e8e68
        .type   fs_USER_Multi2_4e8e68, %function
fs_USER_Multi2_4e8e68:
        push    {r4, r5, lr}
        sub     sp, sp, #0x34
        ldr     r4, L4e8f08
        bic     ip, ip, #0xff
        orr     r0, r0, ip
        strd    r0, r1, [sp, #0x28]
        strd    r2, r3, [sp, #0x20]
        ldr     r2, [r4, #0x10]
        add     r0, sp, #0x20
        mov     r1, #0x10
        stm     sp, {r0, r1, r2}
        mov     r3, #2
        ldr     r2, L4e8f0c
        add     r1, sp, #0x18
        add     r0, sp, #8
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4e8f00
        ldr     r0, [r4, #0x10]
        add     r2, sp, #0x30
        add     r3, sp, #8
        str     r0, [sp, #0x14]
        mov     r1, #0
        str     r2, [sp, #4]
        stm     r3, {r1, r2}
        mov     r0, #3
        str     r0, [sp]
        ldrd    r2, r3, [sp, #0x18]
        add     r0, sp, #0x14
        str     r1, [sp, #0x10]
        bl      Fn_4ee08c
        ldr     r1, [r4, #0x10]
        mov     r5, r0
        ldrd    r2, r3, [sp, #0x18]
        add     r0, sp, #0x14
        str     r1, [sp, #0x14]
        bl      Fn_4edef8
        mov     r0, r5
L4e8f00:
        add     sp, sp, #0x34
        pop     {r4, r5, pc}
L4e8f08:
        .word   0x008aac38
L4e8f0c:
        .word   0x2345678a
        .size   fs_USER_Multi2_4e8e68, . - fs_USER_Multi2_4e8e68

@ FUN_004e8f10
        .global fs_USER_GetArchiveResource_4e8f10
        .type   fs_USER_GetArchiveResource_4e8f10, %function
fs_USER_GetArchiveResource_4e8f10:
        mov     r2, #2
        mov     r0, r0
        push    {r4, r5, lr}
        mov     r3, #0
        mov     r4, r0
        sub     sp, sp, #0x1c
        ldr     r0, L4e8f90
        str     r3, [r1]
        mov     ip, r3
        str     r3, [r1, #4]
        stm     r4, {r3, ip}
        mov     r5, r1
        ldr     r0, [r0, #0x10]
        add     r1, sp, #8
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4ee6ec
        lsrs    r1, r0, #0x1f
        bne     L4e8f88
        ldr     r0, [sp, #0x14]
        ldr     r1, [sp, #0xc]
        umull   r1, r0, r0, r1
        str     r0, [r5, #4]
        str     r1, [r5]
        ldr     r0, [sp, #0x10]
        ldr     r1, [sp, #0xc]
        umull   r1, r0, r0, r1
        str     r0, [r4, #4]
        mov     r0, #0
        str     r1, [r4]
L4e8f88:
        add     sp, sp, #0x1c
        pop     {r4, r5, pc}
L4e8f90:
        .word   0x008aac38
        .size   fs_USER_GetArchiveResource_4e8f10, . - fs_USER_GetArchiveResource_4e8f10

@ FUN_004e9020
        .global fs_USER_OpenArchive_4e9020
        .type   fs_USER_OpenArchive_4e9020, %function
fs_USER_OpenArchive_4e9020:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        sub     sp, sp, #0x20
        bic     r0, r0, #0xff
        orr     r0, r0, r3
        str     r0, [sp, #0x18]
        ldr     r6, L4e9110
        add     r0, sp, #0x10
        mov     r3, #2
        stm     r0, {r1, r2}
        mov     r1, #0xc
        ldr     r2, [r6, #0x10]
        strd    r0, r1, [sp]
        add     r1, sp, #8
        str     r2, [sp, #0x1c]
        ldr     r2, L4e9114
        add     r0, sp, #0x1c
        bl      Fn_4eddf8
        mov     r5, r0
        ands    r0, r0, #0x80000000
        bmi     L4e9104
        add     r1, sp, #8
        ldr     r0, L4e9118
        ldm     r1, {r5, r7}
        ldr     r8, [r6, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        ldreq   r5, L4e911c
        moveq   r7, r0
        beq     L4e90b4
        ldr     r1, L4e9120
        add     r2, r0, #8
        str     r1, [r0]
        stm     r2, {r5, r7}
        mov     r7, r0
        mov     r5, #0
        str     r8, [r0, #4]
L4e90b4:
        ands    r0, r5, #0x80000000
        bmi     L4e90f0
        mov     r3, #0
        mov     r2, r3
        mov     r1, r7
        mov     r0, r4
        bl      Fn_01a628
        mov     r5, r0
        ands    r0, r0, #0x80000000
        bpl     L4e9104
        ldr     r0, [r7]
        ldr     r1, [r0, #0x30]
        mov     r0, r7
        blx     r1
        b       L4e9104
L4e90f0:
        ldr     r0, [r6, #0x10]
        ldrd    r2, r3, [sp, #8]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4edef8
L4e9104:
        add     sp, sp, #0x20
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L4e9110:
        .word   0x008aac38
L4e9114:
        .word   0x567890b4
L4e9118:
        .word   0x009a1134
L4e911c:
        .word   0xd8604659
L4e9120:
        .word   0x0082bdf0
        .size   fs_USER_OpenArchive_4e9020, . - fs_USER_OpenArchive_4e9020

@ FUN_004e91f8
        .global fs_USER_SetFsCompatibilityInfo_4e91f8
        .type   fs_USER_SetFsCompatibilityInfo_4e91f8, %function
fs_USER_SetFsCompatibilityInfo_4e91f8:
        push    {r4, r5, lr}
        sub     sp, sp, #0x14
        ldrd    r4, r5, [sp, #0x20]
        ldr     ip, [ip, #0x10]
        stm     sp, {r2, r3, r4, r5, ip}
        mov     r2, r0
        mov     r3, r1
        add     r0, sp, #0x10
        bl      Fn_4eee3c
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
        .size   fs_USER_SetFsCompatibilityInfo_4e91f8, . - fs_USER_SetFsCompatibilityInfo_4e91f8

@ FUN_004e922c
        .global fs_USER_cmd873
        .type   fs_USER_cmd873, %function
fs_USER_cmd873:
        push    {r4, lr}
        sub     sp, sp, #8
        mov     r1, r0
        ldr     r4, [sp, #0x10]
        ldr     ip, [ip, #0x10]
        add     r0, sp, #4
        stm     sp, {r4, ip}
        bl      Fn_4eeee4
        add     sp, sp, #8
        pop     {r4, pc}
        .size   fs_USER_cmd873, . - fs_USER_cmd873

@ FUN_004e9258
        .global fs_USER_Multi2_4e9258
        .type   fs_USER_Multi2_4e9258, %function
fs_USER_Multi2_4e9258:
        push    {r4, r5, r6, lr}
        mov     r6, r2
        mov     r2, r0
        ldr     r0, L4e92cc
        sub     sp, sp, #0x28
        mov     r5, r1
        mov     r4, r3
        ldr     r0, [r0, #0x10]
        mov     r3, #0x48000
        mov     r1, #0
        str     r0, [sp, #0x1c]
        add     r0, sp, #0x10
        bl      Fn_4e8b84
        mov     r1, #1
        add     ip, sp, #4
        str     r1, [sp, #0xc]
        add     r2, sp, #0x20
        mov     r0, #0
        str     r4, [sp]
        stm     ip, {r0, r2}
        mov     r3, r6
        mov     r2, r5
        add     r1, sp, #0x10
        add     r0, sp, #0x1c
        bl      Fn_4ee4e8
        lsrs    r1, r0, #0x1f
        add     sp, sp, #0x28
        moveq   r0, #0
        pop     {r4, r5, r6, pc}
L4e92cc:
        .word   0x008aac38
        .size   fs_USER_Multi2_4e9258, . - fs_USER_Multi2_4e9258

@ FUN_004e933c
        .global fs_USER_GetExtDataBlockSize_4e933c
        .type   fs_USER_GetExtDataBlockSize_4e933c, %function
fs_USER_GetExtDataBlockSize_4e933c:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x24
        mov     r6, r0
        mov     r7, r1
        mov     r4, r2
        mov     r5, r3
        bl      Fn_01a8e4
        str     r0, [sp, #4]
        mov     r1, #0
        mov     r0, #1
        strh    r1, [sp, #0x1a]
        strb    r0, [sp, #0x18]
        add     r0, sp, #0x18
        strb    r1, [sp, #0x19]
        str     r0, [sp]
        mov     r3, r7
        add     r2, sp, #0x10
        add     r1, sp, #8
        add     r0, sp, #4
        strd    r4, r5, [sp, #0x1c]
        bl      Fn_4ee8ac
        lsrs    r1, r0, #0x1f
        bne     L4e93bc
        add     r4, sp, #0xc
        ldr     r1, [sp, #8]
        ldm     r4, {r0, r3}
        ldr     r2, [sp, #0x14]
        subs    r1, r1, r3
        sbc     r0, r0, r2
        str     r0, [r6, #4]
        mov     r0, #0
        str     r1, [r6]
L4e93bc:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, pc}
        .size   fs_USER_GetExtDataBlockSize_4e933c, . - fs_USER_GetExtDataBlockSize_4e933c

@ FUN_004e94cc
        .global fs_USER_CreateSystemSaveData_4e94cc
        .type   fs_USER_CreateSystemSaveData_4e94cc, %function
fs_USER_CreateSystemSaveData_4e94cc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x18
        mov     r8, r0
        mov     r4, r1
        ldr     r7, [sp, #0x38]
        mov     r5, r2
        mov     sb, r3
        mov     r6, #0x1000
        mov     r0, r2
        bl      Fn_533490
        mov     sl, r0
        mov     r0, r4
        bl      Fn_533490
        mov     r1, r0
        ldr     r0, L4e9540
        mov     r3, r6
        add     r6, sp, #4
        ldr     r2, [r0, #0x10]
        add     r0, sp, #0xc
        str     r2, [sp, #0x14]
        str     r5, [sp]
        stm     r0, {r1, r7}
        mov     r2, sb
        mov     r1, r8
        add     r0, sp, #0x14
        stm     r6, {r4, sl}
        bl      Fn_4eeb40
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4e9540:
        .word   0x008aac38
        .size   fs_USER_CreateSystemSaveData_4e94cc, . - fs_USER_CreateSystemSaveData_4e94cc

@ FUN_004e9548
        .global fs_USER_DeleteSystemSaveData_4e9548
        .type   fs_USER_DeleteSystemSaveData_4e9548, %function
fs_USER_DeleteSystemSaveData_4e9548:
        push    {r3, lr}
        mov     r1, r0
        mov     r0, sp
        ldr     r2, [r2, #0x10]
        str     r2, [sp]
        bl      Fn_4eeb90
        pop     {r3, pc}
        .size   fs_USER_DeleteSystemSaveData_4e9548, . - fs_USER_DeleteSystemSaveData_4e9548

@ FUN_004e960c
        .global srv_pm_cmd9_4e960c
        .type   srv_pm_cmd9_4e960c, %function
srv_pm_cmd9_4e960c:
        push    {r4, lr}
        ldr     r4, L4e9654
        str     r0, [r1, #0x10]
        ldr     r0, L4e9650
        mov     r1, r4
        bl      Fn_006308
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
        bl      Fn_5185a4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        beq     L4e964c
        pop     {r4, lr}
        b       Fn_010ccc
L4e964c:
        pop     {r4, pc}
L4e9650:
        .word   0x009a10ac
L4e9654:
        .word   0x0000020a
        .size   srv_pm_cmd9_4e960c, . - srv_pm_cmd9_4e960c

@ FUN_004e9658
        .global srv_pm_cmd9_4e9658
        .type   srv_pm_cmd9_4e9658, %function
srv_pm_cmd9_4e9658:
        ldr     r1, L4e96a0
        push    {r4, lr}
        ldr     r4, L4e96a4
        str     r0, [r1, #0x10]
        ldr     r0, L4e96a0
        mov     r1, r4
        bl      Fn_006308
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
        bl      Fn_5185a4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        beq     L4e969c
        pop     {r4, lr}
        b       Fn_010ccc
L4e969c:
        pop     {r4, pc}
L4e96a0:
        .word   0x009a10d4
L4e96a4:
        .word   0x00000209
        .size   srv_pm_cmd9_4e9658, . - srv_pm_cmd9_4e9658

@ FUN_004e9728
        .global fs_USER_File_Read_4e9728
        .type   fs_USER_File_Read_4e9728, %function
fs_USER_File_Read_4e9728:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        sub     sp, sp, #0x48
        add     r4, sp, #0x28
        mov     r6, #2
        mov     r8, #0
        mov     sl, #1
        mov     r7, #0xc
        ldr     r0, [sp, #0x80]
        ldr     sb, [sp, #0x88]
        mov     fp, #4
        mov     r5, r0
        stm     r4, {r1, r2, r3, r8}
        blx     Fn_000d0c
        ldr     r1, L4e9810
        add     r0, r0, #1
        mov     r2, r8
        lsl     r0, r0, #1
        ldr     r1, [r1, #0x10]
        str     r8, [sp, #0x1c]
        add     r8, sp, #0x14
        str     r1, [sp, #0x40]
        str     r5, [sp, #0x10]
        str     r6, [sp]
        stm     r8, {r0, sl}
        add     r8, sp, #4
        ldr     r3, L4e9814
        add     r1, sp, #0x34
        add     r0, sp, #0x40
        stm     r8, {r4, r7, fp}
        bl      Fn_0237a8
        lsrs    r1, r0, #0x1f
        bne     L4e9808
        ldr     r1, [sp, #0x34]
        mov     ip, #8
        add     r0, sp, #0x3c
        str     r1, [sp, #0x3c]
        ldr     r3, [sp, #0x8c]
        add     r1, sp, #0x20
        stm     sp, {r1, ip}
        mov     r2, sb
        add     r1, sp, #0x38
        bl      Fn_4ef490
        mov     r4, r0
        ldr     r0, [sp, #0x38]
        cmp     r0, #8
        ldrlo   r4, L4e9818
        ldr     r0, [sp, #0x34]
        svc     #0x23
        lsrs    r1, r4, #0x1f
        mov     r0, r4
        bne     L4e9808
        add     r3, sp, #0x20
        ldr     r1, [sp, #0x48]
        ldm     r3, {r0, r2}
        stm     r1, {r0, r2}
        mov     r0, #0
L4e9808:
        add     sp, sp, #0x58
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L4e9810:
        .word   0x008aac38
L4e9814:
        .word   0x567890b2
L4e9818:
        .word   0xe0e046c1
        .size   fs_USER_File_Read_4e9728, . - fs_USER_File_Read_4e9728

@ FUN_004e9864
        .global srv_pm_cmd9_4e9864
        .type   srv_pm_cmd9_4e9864, %function
srv_pm_cmd9_4e9864:
        ldr     r1, L4e98ac
        push    {r4, lr}
        ldr     r4, L4e98b0
        str     r0, [r1, #0x10]
        ldr     r0, L4e98ac
        mov     r1, r4
        bl      Fn_006308
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
        bl      Fn_5185a4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        beq     L4e98a8
        pop     {r4, lr}
        b       Fn_010ccc
L4e98a8:
        pop     {r4, pc}
L4e98ac:
        .word   0x009a10c0
L4e98b0:
        .word   0x00000207
        .size   srv_pm_cmd9_4e9864, . - srv_pm_cmd9_4e9864

@ FUN_004e98b8
        .global fs_USER_DeleteAllExtSaveDataOnNand_4e98b8
        .type   fs_USER_DeleteAllExtSaveDataOnNand_4e98b8, %function
fs_USER_DeleteAllExtSaveDataOnNand_4e98b8:
        push    {r3, lr}
        mov     r1, r0
        mov     r0, sp
        ldr     r2, [r2, #0x10]
        str     r2, [sp]
        bl      Fn_4eefe0
        pop     {r3, pc}
        .size   fs_USER_DeleteAllExtSaveDataOnNand_4e98b8, . - fs_USER_DeleteAllExtSaveDataOnNand_4e98b8

@ FUN_004e98d8
        .global fs_USER_EnumerateExtSaveData_4e98d8
        .type   fs_USER_EnumerateExtSaveData_4e98d8, %function
fs_USER_EnumerateExtSaveData_4e98d8:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x14
        mov     r7, r1
        mov     r1, #0
        strh    r1, [sp, #2]
        strb    r1, [sp]
        strb    r1, [sp, #1]
        ldr     r5, [sp]
        mov     r6, r0
        mov     r4, r2
        bl      Fn_01a8e4
        mov     r1, #1
        mov     r2, #4
        str     r2, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [sp, #0xc]
        lsl     r3, r4, #2
        mov     r2, r7
        mov     r1, r6
        add     r0, sp, #0xc
        str     r5, [sp]
        bl      Fn_4eebc4
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   fs_USER_EnumerateExtSaveData_4e98d8, . - fs_USER_EnumerateExtSaveData_4e98d8

@ FUN_004e9938
        .global fs_USER_FormatSaveData_4e9938
        .type   fs_USER_FormatSaveData_4e9938, %function
fs_USER_FormatSaveData_4e9938:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x2c
        mov     r4, r0
        add     r0, sp, #0x50
        mov     r5, r2
        ldm     r0, {r6, r7, r8}
        mov     fp, r3
        mov     sl, #0x200
        mov     r0, r7
        bl      Fn_533490
        mov     sb, r0
        mov     r0, r6
        bl      Fn_533490
        ldr     ip, L4e99b4
        add     r3, sp, #0x1c
        mov     r1, #0xc
        stm     r3, {r4, r5, fp}
        add     r4, sp, #0x14
        ldr     ip, [ip, #0x10]
        str     r7, [sp, #8]
        mov     r2, #2
        str     ip, [sp, #0x28]
        stm     sp, {r1, sl}
        stm     r4, {r0, r8}
        add     r4, sp, #0xc
        ldr     r1, L4e99b8
        add     r0, sp, #0x28
        stm     r4, {r6, sb}
        bl      Fn_4ee124
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4e99b4:
        .word   0x008aac38
L4e99b8:
        .word   0x567890b2
        .size   fs_USER_FormatSaveData_4e9938, . - fs_USER_FormatSaveData_4e9938

@ FUN_004e99bc
        .global fs_USER_FormatSaveData_4e99bc
        .type   fs_USER_FormatSaveData_4e99bc, %function
fs_USER_FormatSaveData_4e99bc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x2c
        mov     sb, r0
        add     r0, sp, #0x50
        mov     sl, r2
        ldm     r0, {r5, r6, r7, r8}
        mov     fp, r3
        mov     r0, r6
        bl      Fn_533490
        mov     r4, r0
        mov     r0, r5
        bl      Fn_533490
        ldr     ip, L4e9a34
        add     r3, sp, #0x1c
        mov     r1, #0xc
        stm     r3, {sb, sl, fp}
        add     lr, sp, #0x14
        ldr     ip, [ip, #0x10]
        str     r4, [sp, #0x10]
        str     r5, [sp, #0xc]
        str     r6, [sp, #8]
        str     ip, [sp, #0x28]
        stm     sp, {r1, r8}
        stm     lr, {r0, r7}
        mov     r2, #2
        ldr     r1, L4e9a38
        add     r0, sp, #0x28
        bl      Fn_4ee124
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4e9a34:
        .word   0x008aac38
L4e9a38:
        .word   0x567890b2
        .size   fs_USER_FormatSaveData_4e99bc, . - fs_USER_FormatSaveData_4e99bc

@ FUN_004e9a3c
        .global fs_USER_cmd876
        .type   fs_USER_cmd876, %function
fs_USER_cmd876:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x14
        mov     r5, r1
        ldr     r4, [sp, #0x28]
        mov     r6, r2
        mov     r7, r3
        bl      Fn_6848a8
        cmp     r0, #0
        ldreq   r0, L4e9aa0
        beq     L4e9a98
        ldr     r1, L4e9aa4
        ldr     ip, [r0, #8]
        ldr     r0, [r0, #0xc]
        add     lr, sp, #4
        ldr     r1, [r1, #0x10]
        str     ip, [sp]
        mov     r3, r7
        str     r1, [sp, #0xc]
        stm     lr, {r0, r4}
        mov     r2, r6
        mov     r1, r5
        add     r0, sp, #0xc
        bl      Fn_4eed94
L4e9a98:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L4e9aa0:
        .word   0xc8804465
L4e9aa4:
        .word   0x008aac38
        .size   fs_USER_cmd876, . - fs_USER_cmd876

@ FUN_004e9b6c
        .global fs_USER_cmd875
        .type   fs_USER_cmd875, %function
fs_USER_cmd875:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x14
        mov     r6, r1
        ldr     r7, [sp, #0x28]
        mov     r4, r2
        mov     r5, r3
        bl      Fn_6848a8
        cmp     r0, #0
        ldreq   r0, L4e9bbc
        beq     L4e9bb4
        add     r1, sp, #4
        ldrd    r2, r3, [r0, #8]
        ldr     r0, L4e9bc0
        ldr     r0, [r0, #0x10]
        str     r6, [sp]
        stm     r1, {r0, r4, r5, r7}
        add     r0, sp, #4
        bl      Fn_4eee94
L4e9bb4:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L4e9bbc:
        .word   0xc8804465
L4e9bc0:
        .word   0x008aac38
        .size   fs_USER_cmd875, . - fs_USER_cmd875

@ FUN_004e9dbc
        .global fs_USER_SetPriority_4e9dbc
        .type   fs_USER_SetPriority_4e9dbc, %function
fs_USER_SetPriority_4e9dbc:
        push    {r3, r4, r5, lr}
        bl      Fn_011b7c
        ldr     r1, L4e9e5c
        cmp     r0, r1
        beq     L4e9ddc
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L4e9ddc:
        ldr     r0, L4e9e60
        bl      Fn_200e60
        mov     r2, r0
        ldr     r1, L4e9e60
        ldr     r0, L4e9e58
        mov     r3, #0
        bl      Fn_011be4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, L4e9e64
        ldr     r0, [r0, #4]
        bl      Fn_005df0
        ldr     r0, L4e9e64
        add     r1, r0, #8
        str     r0, [r1]
        add     r0, r1, #0
        bl      Fn_005e4c
        mov     r4, #0
        nop
        bl      Fn_01a8e4
        str     r0, [sp]
        mov     r1, r4
        mov     r0, sp
        bl      Fn_005e1c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        beq     L4e9e54
        pop     {r3, r4, r5, lr}
        b       Fn_010ccc
L4e9e54:
        pop     {r3, r4, r5, pc}
L4e9e58:
        .word   0x008aac2c
L4e9e5c:
        .word   0x08a067f9
L4e9e60:
        .word   0x007e465f
L4e9e64:
        .word   0x008aac28
        .size   fs_USER_SetPriority_4e9dbc, . - fs_USER_SetPriority_4e9dbc

@ FUN_004e9f04
        .global fs_USER_SwitchCleanupInvalidSaveData_4e9f04
        .type   fs_USER_SwitchCleanupInvalidSaveData_4e9f04, %function
fs_USER_SwitchCleanupInvalidSaveData_4e9f04:
        push    {r3, lr}
        mov     r1, r0
        mov     r0, sp
        ldr     r2, [r2, #0x10]
        str     r2, [sp]
        bl      Fn_4ef16c
        pop     {r3, pc}
        .size   fs_USER_SwitchCleanupInvalidSaveData_4e9f04, . - fs_USER_SwitchCleanupInvalidSaveData_4e9f04

@ FUN_004ea154
        .global fs_USER_CreateSystemSaveData_4ea154
        .type   fs_USER_CreateSystemSaveData_4ea154, %function
fs_USER_CreateSystemSaveData_4ea154:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x20
        mov     r5, #0
        mov     ip, r0
        strh    r5, [sp, #2]
        mov     r0, #1
        strb    r5, [sp]
        strb    r0, [sp, #1]
        ldr     r0, [sp]
        ldr     r4, [sp, #0x40]
        add     r8, sp, #0x18
        str     ip, [sp, #4]
        stm     r8, {r0, ip}
        mov     r5, r1
        mov     r6, r2
        mov     r7, r3
        mov     sb, #0x1000
        mov     r0, r2
        bl      Fn_533490
        mov     sl, r0
        mov     r0, r5
        bl      Fn_533490
        ldr     r1, L4ea1e8
        mov     r2, r7
        add     r7, sp, #0xc
        mov     r3, sb
        ldr     r1, [r1, #0x10]
        str     r1, [sp, #0x14]
        str     r6, [sp]
        stm     r7, {r0, r4}
        add     r7, sp, #4
        mov     r1, r8
        add     r0, sp, #0x14
        stm     r7, {r5, sl}
        bl      Fn_4eeb40
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4ea1e8:
        .word   0x008aac38
        .size   fs_USER_CreateSystemSaveData_4ea154, . - fs_USER_CreateSystemSaveData_4ea154

@ FUN_004ea1ec
        .global fs_USER_DeleteSystemSaveData_4ea1ec
        .type   fs_USER_DeleteSystemSaveData_4ea1ec, %function
fs_USER_DeleteSystemSaveData_4ea1ec:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0x14
        mov     r2, #0
        strh    r2, [sp, #0xa]
        mov     r1, #1
        strb    r2, [sp, #8]
        strb    r1, [sp, #9]
        add     r1, sp, #8
        str     r0, [sp, #0xc]
        ldm     r1, {r0, r2}
        mov     r1, sp
        stm     sp, {r0, r2}
        ldr     r0, L4ea238
        ldr     r0, [r0, #0x10]
        str     r0, [sp, #8]
        add     r0, sp, #8
        bl      Fn_4eeb90
        add     sp, sp, #0x14
        pop     {pc}
L4ea238:
        .word   0x008aac38
        .size   fs_USER_DeleteSystemSaveData_4ea1ec, . - fs_USER_DeleteSystemSaveData_4ea1ec

@ FUN_004ea2a0
        .global fs_USER_ResetCardCompatibilityParameter_4ea2a0
        .type   fs_USER_ResetCardCompatibilityParameter_4ea2a0, %function
fs_USER_ResetCardCompatibilityParameter_4ea2a0:
        push    {r3, lr}
        mov     r1, r0
        mov     r0, sp
        ldr     r2, [r2, #0x10]
        str     r2, [sp]
        bl      Fn_4ef234
        pop     {r3, pc}
        .size   fs_USER_ResetCardCompatibilityParameter_4ea2a0, . - fs_USER_ResetCardCompatibilityParameter_4ea2a0

@ FUN_004ea33c
        .global fs_USER_CheckAuthorityToAccessExtSaveData_4ea33c
        .type   fs_USER_CheckAuthorityToAccessExtSaveData_4ea33c, %function
fs_USER_CheckAuthorityToAccessExtSaveData_4ea33c:
        push    {r4, lr}
        mov     r4, r1
        ldr     r1, L4ea37c
        sub     sp, sp, #0x10
        ldr     ip, [sp, #0x18]
        ldr     r1, [r1, #0x10]
        str     r1, [sp, #0xc]
        mov     r1, r0
        stm     sp, {r2, r3, ip}
        mov     r2, r4
        add     r0, sp, #0xc
        bl      Fn_4ef26c
        lsrs    r1, r0, #0x1f
        add     sp, sp, #0x10
        moveq   r0, #0
        pop     {r4, pc}
L4ea37c:
        .word   0x008aac38
        .size   fs_USER_CheckAuthorityToAccessExtSaveData_4ea33c, . - fs_USER_CheckAuthorityToAccessExtSaveData_4ea33c

@ FUN_004ea5b0
        .global fs_USER_Multi2_4ea5b0
        .type   fs_USER_Multi2_4ea5b0, %function
fs_USER_Multi2_4ea5b0:
        push    {r4, r5, lr}
        sub     sp, sp, #0x34
        ldr     r5, L4ea650
        bic     ip, ip, #0xff
        orr     r0, r0, ip
        strd    r0, r1, [sp, #0x28]
        strd    r2, r3, [sp, #0x20]
        ldr     r2, [r5, #0x10]
        add     r0, sp, #0x20
        mov     r1, #0x10
        stm     sp, {r0, r1, r2}
        mov     r4, #2
        ldr     r2, L4ea654
        mov     r3, r4
        add     r1, sp, #0x18
        add     r0, sp, #8
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4ea648
        ldr     r0, [r5, #0x10]
        add     r2, sp, #0x30
        add     r3, sp, #8
        str     r0, [sp, #0x14]
        mov     r1, #0
        str     r2, [sp, #4]
        stm     r3, {r1, r2}
        add     r0, sp, #0x14
        ldrd    r2, r3, [sp, #0x18]
        str     r1, [sp, #0x10]
        str     r4, [sp]
        bl      Fn_4ee08c
        ldr     r1, [r5, #0x10]
        mov     r4, r0
        ldrd    r2, r3, [sp, #0x18]
        add     r0, sp, #0x14
        str     r1, [sp, #0x14]
        bl      Fn_4edef8
        mov     r0, r4
L4ea648:
        add     sp, sp, #0x34
        pop     {r4, r5, pc}
L4ea650:
        .word   0x008aac38
L4ea654:
        .word   0x2345678a
        .size   fs_USER_Multi2_4ea5b0, . - fs_USER_Multi2_4ea5b0

@ FUN_004ea8d8
        .global fs_USER_Multi2_4ea8d8
        .type   fs_USER_Multi2_4ea8d8, %function
fs_USER_Multi2_4ea8d8:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x28
        mov     r7, r1
        ldr     r1, L4ea998
        mov     r6, r0
        mov     r0, #0
        ldrd    r4, r5, [sp, #0x40]
        str     r0, [sp, #0x20]
        ldr     r1, [r1, #0x10]
        str     r0, [sp, #0x1c]
        add     lr, sp, #0x14
        str     r1, [sp, #0x24]
        ldr     r1, [r3, #8]
        ldm     r3, {r3, ip}
        mov     r8, #1
        stm     lr, {r1, r8}
        add     r1, sp, #0xc
        stm     r1, {r3, ip}
        ldr     r1, [r2, #8]
        ldrd    r2, r3, [r2]
        str     r1, [sp, #8]
        strd    r2, r3, [sp]
        mov     r2, r0
        mov     r3, r7
        add     r1, sp, #0x20
        add     r0, sp, #0x24
        bl      Fn_0237a8
        lsrs    r1, r0, #0x1f
        bne     L4ea990
        ldr     r0, [sp, #0x20]
        mov     r2, #0
        mov     r3, r2
        str     r0, [sp, #8]
        mov     r1, r6
        add     r0, sp, #8
        strd    r4, r5, [sp]
        bl      Fn_4ef490
        mov     r4, r0
        add     r0, sp, #8
        bl      Fn_4ef4e8
        ldr     r0, [sp, #0x20]
        svc     #0x23
        mov     r1, r0
        lsrs    r2, r4, #0x1f
        mov     r0, r4
        moveq   r0, r1
L4ea990:
        add     sp, sp, #0x28
        pop     {r4, r5, r6, r7, r8, pc}
L4ea998:
        .word   0x008aac38
        .size   fs_USER_Multi2_4ea8d8, . - fs_USER_Multi2_4ea8d8

@ FUN_004ea9a0
        .global fs_USER_ReadSpecialFile_4ea9a0
        .type   fs_USER_ReadSpecialFile_4ea9a0, %function
fs_USER_ReadSpecialFile_4ea9a0:
        push    {r4, r5, lr}
        sub     sp, sp, #0x14
        ldrd    r4, r5, [sp, #0x20]
        ldr     ip, [r1, #0x10]
        mov     r1, r0
        add     r0, sp, #0x10
        stm     sp, {r2, r3, r4, r5, ip}
        mov     r2, #0
        bl      Fn_4ee308
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
        .size   fs_USER_ReadSpecialFile_4ea9a0, . - fs_USER_ReadSpecialFile_4ea9a0

@ FUN_004ea9d0
        .global fs_USER_Multi2_4ea9d0
        .type   fs_USER_Multi2_4ea9d0, %function
fs_USER_Multi2_4ea9d0:
        push    {r4, lr}
        sub     sp, sp, #0x30
        bic     r4, r4, #0xff
        add     lr, sp, #0x18
        orr     r1, r1, r4
        stm     lr, {r1, ip}
        add     r1, sp, #8
        strd    r2, r3, [sp, #0x10]
        ldr     r2, L4eaa80
        mov     r3, #0
        mov     ip, #0x10
        strd    r2, r3, [sp, #8]
        str     r1, [sp, #4]
        add     r3, sp, #0x10
        mov     r2, #2
        mov     r1, #0x36c0
        str     ip, [sp]
        bl      Fn_4eab04
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r0, #0
        bge     L4eaa78
        and     r1, r0, #0x3fc00
        lsr     r1, r1, #0xa
        cmp     r1, #0x11
        bne     L4eaa58
        ldr     r3, L4eaa84
        lsl     r2, r0, #0x16
        lsr     r2, r2, #0x16
        cmp     r2, r3
        blt     L4eaa58
        cmp     r2, #0x238
        ldrlt   r0, L4eaa88
        blt     L4eaa78
L4eaa58:
        cmp     r1, #0x11
        bne     L4eaa78
        lsl     r1, r0, #0x16
        lsr     r1, r1, #0x16
        cmp     r1, #0x64
        blt     L4eaa78
        cmp     r1, #0xb3
        ldrle   r0, L4eaa8c
L4eaa78:
        add     sp, sp, #0x30
        pop     {r4, pc}
L4eaa80:
        .word   0x6e6f6369
L4eaa84:
        .word   0x00000237
L4eaa88:
        .word   0xc8804632
L4eaa8c:
        .word   0xc8804631
        .size   fs_USER_Multi2_4ea9d0, . - fs_USER_Multi2_4ea9d0

@ FUN_004eab04
        .global fs_USER_Multi2_4eab04
        .type   fs_USER_Multi2_4eab04, %function
fs_USER_Multi2_4eab04:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x44
        add     r4, sp, #0x68
        mov     r5, #0
        add     sb, sp, #0x20
        ldm     r4, {r8, ip}
        mov     r4, r5
        ldr     fp, L4eabe8
        add     lr, sp, #0xc
        mov     sl, #1
        ldrd    r6, r7, [ip]
        mov     ip, #2
        stm     sb, {r4, r5, ip}
        mov     r5, r0
        strd    r6, r7, [sp, #0x2c]
        mov     r0, #0
        str     r0, [sp, #0x34]
        ldr     fp, [fp, #0x10]
        str     r0, [sp, #0x1c]
        mov     r6, r1
        str     fp, [sp, #0x3c]
        stm     sp, {r2, r3, r8}
        add     ip, sp, #0x20
        ldr     r1, L4eabe4
        mov     r7, #2
        stm     lr, {r7, ip}
        add     r7, sp, #0x14
        mov     sb, #0x14
        mov     r3, r1
        mov     r2, r0
        add     r4, sp, #0x38
        add     r1, sp, #0x34
        add     r0, sp, #0x3c
        stm     r7, {sb, sl}
        bl      Fn_0237a8
        lsrs    r1, r0, #0x1f
        bne     L4eabd4
        ldr     r0, [sp, #0x34]
        mov     r2, #0
        mov     r3, r2
        str     r0, [sp, #8]
        mov     r1, r4
        add     r0, sp, #8
        stm     sp, {r5, r6}
        bl      Fn_4ef490
        mov     r4, r0
        add     r0, sp, #8
        bl      Fn_4ef4e8
        ldr     r0, [sp, #0x34]
        svc     #0x23
        lsrs    r1, r4, #0x1f
        movne   r0, r4
L4eabd4:
        add     sp, sp, #0x44
        lsrs    r1, r0, #0x1f
        moveq   r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4eabe4:
        .word   0x2345678a
L4eabe8:
        .word   0x008aac38
        .size   fs_USER_Multi2_4eab04, . - fs_USER_Multi2_4eab04

@ FUN_004eadcc
        .global fs_USER_Multi2_4eadcc
        .type   fs_USER_Multi2_4eadcc, %function
fs_USER_Multi2_4eadcc:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x5c
        mov     r5, r0
        ldr     r7, L4eb040
        ldr     r6, L4eb044
        mov     r4, #0
        mov     r3, #1
        add     r1, sp, #0x2c
        add     r0, sp, #0x2c
        str     r4, [sp, #0xc]
        str     r7, [sp, #8]
        str     r3, [sp, #0x28]
        stm     r1, {r0, r3}
        mov     r2, #3
        ldr     r0, [r6, #0x10]
        add     r1, sp, #0x20
        str     r0, [sp, #0x4c]
        ldr     r0, [sp, #0x2c]
        stm     sp, {r0, r3}
        add     r0, sp, #0x4c
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        beq     L4eae74
        add     r6, sp, #0x10
        str     r7, [sp, #8]
        ldm     r6, {r1, r2}
        mov     r5, r0
        add     r3, sp, #8
        orrs    r0, r1, r2
        beq     L4eae64
        mov     r0, r3
        bl      Fn_6315d4
        str     r0, [sp, #0x1c]
        ldrd    r2, r3, [sp, #0x10]
        add     r0, sp, #0x1c
        bl      Fn_4edef8
        str     r4, [sp, #0x10]
        str     r4, [sp, #0x14]
L4eae64:
        str     r4, [sp, #0xc]
        add     sp, sp, #0x5c
        mov     r0, r5
        pop     {r4, r5, r6, r7, pc}
L4eae74:
        add     r3, sp, #0x20
        ldr     r0, [r6, #0x10]
        ldm     r3, {r1, r2}
        add     r3, sp, #0xc
        add     ip, sp, #0x4c
        stm     r3, {r0, r1, r2}
        add     r2, sp, #0x34
        ldr     r1, L4eb048
        mov     r0, #2
        mov     r3, #1
        stm     r2, {r0, r1, r4}
        add     r1, sp, #0x34
        mov     r2, #0xc
        stm     ip, {r0, r1, r2}
        add     r2, sp, #0x4c
        add     r1, sp, #0x18
        add     r0, sp, #8
        bl      Fn_4ed14c
        lsrs    r1, r0, #0x1f
        nop
        beq     L4eaf08
        add     r6, sp, #0x10
        str     r7, [sp, #8]
        ldm     r6, {r1, r2}
        mov     r5, r0
        add     r3, sp, #8
        orrs    r0, r1, r2
        beq     L4eae64
        mov     r0, r3
        bl      Fn_6315d4
        str     r0, [sp, #0x40]
        ldrd    r2, r3, [sp, #0x10]
        add     r0, sp, #0x40
        bl      Fn_4edef8
        str     r4, [sp, #0x10]
        str     r4, [sp, #0x14]
        b       L4eae64
L4eaf08:
        mov     r0, #0x36c0
        str     r0, [sp, #4]
        ldr     r0, [sp, #0x18]
        str     r5, [sp]
        mov     r2, #0
        mov     r3, r2
        ldr     r1, [r0]
        ldr     ip, [r1]
        add     r1, sp, #0x58
        blx     ip
        mov     r5, r0
        lsrs    r0, r0, #0x1f
        ldr     r0, [sp, #0x18]
        ldr     r1, [r0]
        ldr     r1, [r1, #0x30]
        beq     L4eafb8
        blx     r1
        ldrd    r0, r1, [sp, #0x10]
        add     r2, sp, #8
        orrs    r0, r0, r1
        beq     L4eaf7c
        mov     r0, r2
        bl      Fn_6315d4
        str     r0, [sp, #0x44]
        ldrd    r2, r3, [sp, #0x10]
        add     r0, sp, #0x44
        bl      Fn_4edef8
        str     r4, [sp, #0x10]
        str     r4, [sp, #0x14]
L4eaf7c:
        ldr     r1, [sp, #0x14]
        ldr     r2, [sp, #0x10]
        add     r0, sp, #8
        str     r4, [sp, #0xc]
        orrs    r1, r1, r2
        str     r7, [sp, #8]
        beq     L4eae64
        bl      Fn_6315d4
        str     r0, [sp, #0x48]
        ldrd    r2, r3, [sp, #0x10]
        add     r0, sp, #0x48
        bl      Fn_4edef8
        str     r4, [sp, #0x10]
        str     r4, [sp, #0x14]
        b       L4eae64
L4eafb8:
        nop
        blx     r1
        ldr     r5, [sp, #0x14]
        ldr     r6, [sp, #0x10]
        add     r0, sp, #8
        orrs    r1, r6, r5
        beq     L4eaff4
        bl      Fn_6315d4
        str     r0, [sp]
        mov     r2, r6
        mov     r3, r5
        mov     r0, sp
        bl      Fn_4edef8
        str     r4, [sp, #0x10]
        str     r4, [sp, #0x14]
L4eaff4:
        add     r0, sp, #0x10
        str     r4, [sp, #0xc]
        str     r7, [sp, #8]
        ldm     r0, {r5, r6}
        add     r0, sp, #8
        orrs    r1, r5, r6
        beq     L4eb030
        bl      Fn_6315d4
        str     r0, [sp]
        mov     r2, r5
        mov     r3, r6
        mov     r0, sp
        bl      Fn_4edef8
        str     r4, [sp, #0x10]
        str     r4, [sp, #0x14]
L4eb030:
        str     r4, [sp, #0xc]
        add     sp, sp, #0x5c
        mov     r0, r4
        pop     {r4, r5, r6, r7, pc}
L4eb040:
        .word   0x0082bdf0
L4eb044:
        .word   0x008aac38
L4eb048:
        .word   0x6e6f6369
        .size   fs_USER_Multi2_4eadcc, . - fs_USER_Multi2_4eadcc

@ FUN_004ec858
        .global fs_USER_OpenArchive_4ec858
        .type   fs_USER_OpenArchive_4ec858, %function
fs_USER_OpenArchive_4ec858:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x20
        mov     r6, r0
        ldr     r7, L4ec908
        cmp     r2, #0
        mov     r0, #0xc
        ldrne   r2, L4ec904
        ldr     ip, [r7, #0x10]
        str     r0, [sp, #4]
        str     r1, [sp]
        mov     r3, #2
        moveq   r2, #6
        add     r1, sp, #0x10
        add     r0, sp, #0xc
        str     ip, [sp, #0xc]
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4ec8fc
        mov     r8, r6
        ldrd    r4, r5, [sp, #0x10]
        ldr     r0, L4ec90c
        ldr     r6, [r7, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ec8cc
        ldr     r1, L4ec910
        str     r1, [r0]
        strd    r4, r5, [r0, #8]
        str     r6, [r0, #4]
L4ec8cc:
        cmp     r0, #0
        ldreq   r4, L4ec914
        movne   r4, #0
        str     r0, [r8]
        lsrs    r0, r4, #0x1f
        beq     L4ec8fc
        ldr     r0, [r7, #0x10]
        ldrd    r2, r3, [sp, #0x10]
        str     r0, [sp, #4]
        add     r0, sp, #4
        bl      Fn_4edef8
        mov     r0, r4
L4ec8fc:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
L4ec904:
        .word   0x12345678
L4ec908:
        .word   0x008aac38
L4ec90c:
        .word   0x009a1134
L4ec910:
        .word   0x0082bdf0
L4ec914:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4ec858, . - fs_USER_OpenArchive_4ec858

@ FUN_004ec91c
        .global fs_USER_Initialize_4ec91c
        .type   fs_USER_Initialize_4ec91c, %function
fs_USER_Initialize_4ec91c:
        push    {r3, lr}
        str     r0, [r1, #0x10]
        str     r0, [sp]
        ldr     r1, L4ec93c
        mov     r0, sp
        bl      Fn_00831c
        pop     {r3, pc}
        .word   0x008aac38
L4ec93c:
        .word   0x060100c8
        .size   fs_USER_Initialize_4ec91c, . - fs_USER_Initialize_4ec91c

@ FUN_004ec9e4
        .global fs_USER_CreateFile_4ec9e4
        .type   fs_USER_CreateFile_4ec9e4, %function
fs_USER_CreateFile_4ec9e4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x1c
        mov     r7, r2
        mov     r8, r3
        ldr     r4, [r1, #8]
        cmp     r4, #0x200
        ldrhi   r0, L4eca50
        bhi     L4eca48
        ldm     r1, {sb, sl}
        mov     fp, #0
        ldrd    r2, r3, [r0, #8]
        mov     r5, r2
        mov     r6, r3
        bl      Fn_6315d4
        mov     r2, r5
        add     r5, sp, #8
        str     r0, [sp, #0x18]
        stm     r5, {r4, fp}
        add     r5, sp, #0x10
        mov     r3, r6
        stm     r5, {r7, r8}
        mov     r1, fp
        add     r0, sp, #0x18
        stm     sp, {sb, sl}
        bl      Fn_4edb58
L4eca48:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4eca50:
        .word   0xe0e046bf
        .size   fs_USER_CreateFile_4ec9e4, . - fs_USER_CreateFile_4ec9e4

@ FUN_004eca54
        .global fs_USER_DeleteFile_4eca54
        .type   fs_USER_DeleteFile_4eca54, %function
fs_USER_DeleteFile_4eca54:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        ldr     r4, [r1, #8]
        cmp     r4, #0x200
        ldrhi   r0, L4ecaac
        bhi     L4ecaa4
        ldm     r1, {r5, r6}
        mov     r8, #0
        ldrd    r2, r3, [r0, #8]
        mov     sb, r2
        mov     r7, r3
        bl      Fn_6315d4
        str     r0, [sp, #0xc]
        str     r4, [sp, #8]
        mov     r2, sb
        mov     r3, r7
        mov     r1, r8
        add     r0, sp, #0xc
        stm     sp, {r5, r6}
        bl      Fn_4edbe0
L4ecaa4:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4ecaac:
        .word   0xe0e046bf
        .size   fs_USER_DeleteFile_4eca54, . - fs_USER_DeleteFile_4eca54

@ FUN_004ecbc4
        .global fs_USER_OpenDirectory_4ecbc4
        .type   fs_USER_OpenDirectory_4ecbc4, %function
fs_USER_OpenDirectory_4ecbc4:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        ldr     r0, [r2, #8]
        sub     sp, sp, #0x18
        mov     r5, r1
        cmp     r0, #0x200
        ldrhi   r0, L4ecc60
        mov     r4, r2
        bhi     L4ecc58
        mov     r0, #0
        str     r0, [sp, #0xc]
        mov     r0, r6
        bl      Fn_6315d4
        str     r0, [sp, #0x10]
        ldm     r4, {r1, r2, r3}
        add     r0, r6, #8
        stm     sp, {r1, r2, r3}
        add     r1, sp, #0xc
        ldrd    r2, r3, [r0]
        add     r0, sp, #0x10
        bl      Fn_4ee028
        lsrs    r1, r0, #0x1f
        bne     L4ecc58
        ldr     r0, L4ecc64
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ecc3c
        ldr     r1, L4ecc68
        ldr     r2, [sp, #0xc]
        stm     r0, {r1, r2}
L4ecc3c:
        cmp     r0, #0
        str     r0, [r5]
        movne   r0, #0
        bne     L4ecc58
        ldr     r0, [sp, #0xc]
        svc     #0x23
        ldr     r0, L4ecc6c
L4ecc58:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, pc}
L4ecc60:
        .word   0xe0e046bf
L4ecc64:
        .word   0x009a11ac
L4ecc68:
        .word   0x0082bdd0
L4ecc6c:
        .word   0xd8604659
        .size   fs_USER_OpenDirectory_4ecbc4, . - fs_USER_OpenDirectory_4ecbc4

@ FUN_004ecc70
        .global fs_USER_CreateDirectory_4ecc70
        .type   fs_USER_CreateDirectory_4ecc70, %function
fs_USER_CreateDirectory_4ecc70:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        ldr     r4, [r1, #8]
        cmp     r4, #0x200
        ldrhi   r0, L4eccc8
        bhi     L4eccc0
        ldrd    r6, r7, [r1]
        ldrd    r2, r3, [r0, #8]
        mov     r5, #0
        mov     sb, r2
        mov     r8, r3
        bl      Fn_6315d4
        str     r0, [sp, #0x10]
        mov     r2, sb
        mov     r3, r8
        strd    r4, r5, [sp, #8]
        mov     r1, r5
        add     r0, sp, #0x10
        strd    r6, r7, [sp]
        bl      Fn_4ee264
L4eccc0:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4eccc8:
        .word   0xe0e046bf
        .size   fs_USER_CreateDirectory_4ecc70, . - fs_USER_CreateDirectory_4ecc70

@ FUN_004ecccc
        .global fs_USER_DeleteDirectory_4ecccc
        .type   fs_USER_DeleteDirectory_4ecccc, %function
fs_USER_DeleteDirectory_4ecccc:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        ldr     r4, [r1, #8]
        cmp     r4, #0x200
        ldrhi   r0, L4ecd24
        bhi     L4ecd1c
        ldm     r1, {r5, r6}
        mov     r8, #0
        ldrd    r2, r3, [r0, #8]
        mov     sb, r2
        mov     r7, r3
        bl      Fn_6315d4
        str     r0, [sp, #0xc]
        str     r4, [sp, #8]
        mov     r2, sb
        mov     r3, r7
        mov     r1, r8
        add     r0, sp, #0xc
        stm     sp, {r5, r6}
        bl      Fn_4ee2b8
L4ecd1c:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4ecd24:
        .word   0xe0e046bf
        .size   fs_USER_DeleteDirectory_4ecccc, . - fs_USER_DeleteDirectory_4ecccc

@ FUN_004ecdc0
        .global fs_USER_SetArchivePriority_4ecdc0
        .type   fs_USER_SetArchivePriority_4ecdc0, %function
fs_USER_SetArchivePriority_4ecdc0:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #8
        ldrd    r2, r3, [r0, #8]
        mov     r6, r1
        mov     r4, r2
        mov     r5, r3
        bl      Fn_6315d4
        str     r0, [sp, #4]
        mov     r2, r4
        mov     r3, r5
        add     r0, sp, #4
        str     r6, [sp]
        bl      Fn_4ee80c
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
        .size   fs_USER_SetArchivePriority_4ecdc0, . - fs_USER_SetArchivePriority_4ecdc0

@ FUN_004ecdfc
        .global fs_USER_DeleteDirectoryRecursively_4ecdfc
        .type   fs_USER_DeleteDirectoryRecursively_4ecdfc, %function
fs_USER_DeleteDirectoryRecursively_4ecdfc:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        ldr     r4, [r1, #8]
        cmp     r4, #0x200
        ldrhi   r0, L4ece54
        bhi     L4ece4c
        ldm     r1, {r5, r6}
        mov     r8, #0
        ldrd    r2, r3, [r0, #8]
        mov     sb, r2
        mov     r7, r3
        bl      Fn_6315d4
        str     r0, [sp, #0xc]
        str     r4, [sp, #8]
        mov     r2, sb
        mov     r3, r7
        mov     r1, r8
        add     r0, sp, #0xc
        stm     sp, {r5, r6}
        bl      Fn_4ef010
L4ece4c:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4ece54:
        .word   0xe0e046bf
        .size   fs_USER_DeleteDirectoryRecursively_4ecdfc, . - fs_USER_DeleteDirectoryRecursively_4ecdfc

@ FUN_004ecec8
        .global fs_USER_cmd801
        .type   fs_USER_cmd801, %function
fs_USER_cmd801:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r8, r1
        add     r1, sp, #0x28
        mov     r5, r2
        ldm     r1, {r4, r7}
        mov     r6, r3
        bl      Fn_63161c
        str     r0, [sp, #8]
        mov     r2, r5
        mov     r3, r6
        mov     r1, r8
        add     r0, sp, #8
        stm     sp, {r4, r7}
        bl      Fn_4ef3dc
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
        .size   fs_USER_cmd801, . - fs_USER_cmd801

@ FUN_004ecf18
        .global fs_USER_File_Close_4ecf18
        .type   fs_USER_File_Close_4ecf18, %function
fs_USER_File_Close_4ecf18:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L4ecf40
        mov     r0, r5
        bl      Fn_63161c
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4ef4e8
L4ecf40:
        ldr     r0, [r5]
        ldr     r1, [r0, #0x34]
        mov     r0, r5
        blx     r1
        ldr     r6, L4ecf84
        add     r4, r6, #0x30
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, [r6, #0x24]
        str     r0, [r5]
        str     r5, [r6, #0x24]
        ldr     r0, [r6, #0x2c]
        sub     r0, r0, #1
        str     r0, [r6, #0x2c]
        mov     r0, r4
        pop     {r3, r4, r5, r6, r7, lr}
        b       Fn_024568
L4ecf84:
        .word   0x009a1170
        .size   fs_USER_File_Close_4ecf18, . - fs_USER_File_Close_4ecf18

@ FUN_004ecf88
        .global fs_USER_File_Read_4ecf88
        .type   fs_USER_File_Read_4ecf88, %function
fs_USER_File_Read_4ecf88:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r8, r1
        mov     r5, r2
        mov     r4, r3
        ldrd    r6, r7, [sp, #0x28]
        bl      Fn_63161c
        str     r0, [sp, #8]
        mov     r2, r5
        mov     r3, r4
        mov     r1, r8
        add     r0, sp, #8
        strd    r6, r7, [sp]
        bl      Fn_4ef490
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
        .size   fs_USER_File_Read_4ecf88, . - fs_USER_File_Read_4ecf88

@ FUN_004ecfc8
        .global fs_USER_File_Write_4ecfc8
        .type   fs_USER_File_Write_4ecfc8, %function
fs_USER_File_Write_4ecfc8:
        bic     r3, r1, #0xff
        mov     r1, #1
        mov     r2, r1
        push    {r4, r5, lr}
        mov     r4, #0
        orr     r1, r1, r3
        lsl     r3, r4, #8
        bic     r1, r1, #0xff00
        and     r3, r3, #0xff00
        lsl     r2, r2, #0x10
        orr     r1, r1, r3
        and     r2, r2, #0xff0000
        bic     r1, r1, #0xff0000
        orr     r1, r1, r2
        sub     sp, sp, #0x14
        lsr     r2, r1, #0x18
        bic     r2, r2, #1
        bic     r1, r1, #0xff000000
        orr     r1, r1, r2, lsl #24
        lsr     r2, r1, #0x18
        bic     r2, r2, #0xfe
        bic     r1, r1, #0xff000000
        orr     r5, r1, r2, lsl #24
        bl      Fn_63161c
        str     r0, [sp, #0xc]
        add     r0, sp, #0x10
        mov     r2, #0
        stm     sp, {r0, r4, r5}
        mov     r3, r2
        add     r1, sp, #0x10
        add     r0, sp, #0xc
        bl      Fn_4ef514
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
        .size   fs_USER_File_Write_4ecfc8, . - fs_USER_File_Write_4ecfc8

@ FUN_004ed050
        .global fs_USER_File_Write_4ed050
        .type   fs_USER_File_Write_4ed050, %function
fs_USER_File_Write_4ed050:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        mov     r8, r1
        add     r1, sp, #0x30
        mov     r4, r2
        ldm     r1, {r6, r7, ip}
        mov     r2, #0
        bic     r1, r8, #0xff
        lsl     r2, r2, #8
        orr     r1, r1, ip
        mov     r5, r3
        and     r2, r2, #0xff00
        bic     r1, r1, #0xff00
        lsl     r3, ip, #0x10
        orr     r1, r1, r2
        and     r3, r3, #0xff0000
        bic     r1, r1, #0xff0000
        orr     r1, r1, r3
        lsr     r2, r1, #0x18
        bic     r2, r2, #1
        bic     r1, r1, #0xff000000
        orr     r1, r1, r2, lsl #24
        lsr     r2, r1, #0x18
        bic     r2, r2, #0xfe
        bic     r1, r1, #0xff000000
        orr     sb, r1, r2, lsl #24
        bl      Fn_63161c
        str     r0, [sp, #0xc]
        mov     r2, r4
        mov     r3, r5
        mov     r1, r8
        add     r0, sp, #0xc
        stm     sp, {r6, r7, sb}
        bl      Fn_4ef514
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   fs_USER_File_Write_4ed050, . - fs_USER_File_Write_4ed050

@ FUN_004ed0e0
        .global fs_USER_cmdc01
        .type   fs_USER_cmdc01, %function
fs_USER_cmdc01:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x10
        mov     r8, r1
        add     r1, sp, #0x28
        mov     r5, r2
        ldm     r1, {r4, r7}
        mov     r6, r3
        bl      Fn_63161c
        str     r0, [sp, #8]
        mov     r2, r5
        mov     r3, r6
        mov     r1, r8
        add     r0, sp, #8
        stm     sp, {r4, r7}
        bl      Fn_4ef574
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
        .size   fs_USER_cmdc01, . - fs_USER_cmdc01

@ FUN_004ed14c
        .global fs_USER_OpenFile_4ed14c
        .type   fs_USER_OpenFile_4ed14c, %function
fs_USER_OpenFile_4ed14c:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x28
        mov     r8, r0
        ldr     r0, [r2, #8]
        mov     r6, r1
        mov     r4, r2
        cmp     r0, #0x200
        ldrhi   r0, L4ed1fc
        mov     r7, r3
        bhi     L4ed1f4
        mov     r5, #0
        mov     r0, r8
        str     r5, [sp, #0x1c]
        bl      Fn_6315d4
        str     r0, [sp, #0x20]
        str     r5, [sp, #0x18]
        ldm     r4, {r1, r2, r3}
        add     ip, sp, #8
        add     r0, r8, #8
        stm     ip, {r1, r2, r3, r7}
        mov     r2, r5
        ldrd    r0, r1, [r0]
        strd    r0, r1, [sp]
        add     r1, sp, #0x1c
        add     r0, sp, #0x20
        bl      Fn_4ef330
        lsrs    r1, r0, #0x1f
        bne     L4ed1f4
        ldr     r0, L4ed200
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ed1d8
        ldr     r1, L4ed204
        ldr     r2, [sp, #0x1c]
        stm     r0, {r1, r2}
L4ed1d8:
        cmp     r0, #0
        str     r0, [r6]
        movne   r0, #0
        bne     L4ed1f4
        ldr     r0, [sp, #0x1c]
        svc     #0x23
        ldr     r0, L4ed208
L4ed1f4:
        add     sp, sp, #0x28
        pop     {r4, r5, r6, r7, r8, pc}
L4ed1fc:
        .word   0xe0e046bf
L4ed200:
        .word   0x009a1170
L4ed204:
        .word   0x0082bd8c
L4ed208:
        .word   0xd8604659
        .size   fs_USER_OpenFile_4ed14c, . - fs_USER_OpenFile_4ed14c

@ FUN_004ed248
        .global fs_USER_cmd802
        .type   fs_USER_cmd802, %function
fs_USER_cmd802:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        beq     L4ed268
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4ef6e4
L4ed268:
        ldr     r0, [r5]
        ldr     r1, [r0, #0x10]
        mov     r0, r5
        blx     r1
        ldr     r6, L4ed2ac
        add     r4, r6, #0x30
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, [r6, #0x24]
        str     r0, [r5]
        str     r5, [r6, #0x24]
        ldr     r0, [r6, #0x2c]
        sub     r0, r0, #1
        str     r0, [r6, #0x2c]
        mov     r0, r4
        pop     {r3, r4, r5, r6, r7, lr}
        b       Fn_024568
L4ed2ac:
        .word   0x009a11ac
        .size   fs_USER_cmd802, . - fs_USER_cmd802

@ FUN_004ed450
        .global fs_USER_OpenArchive_4ed450
        .type   fs_USER_OpenArchive_4ed450, %function
fs_USER_OpenArchive_4ed450:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, #2
        sub     sp, sp, #0x14
        mov     sl, r0
        mov     r7, #8
        ldr     sb, L4ed570
        mov     r4, r1
        mov     r6, #0
        add     fp, r5, #0x184
L4ed474:
        ldr     r0, [sb, #0x10]
        mov     r3, r5
        mov     r2, #8
        str     r0, [sp, #0x10]
        add     r1, sp, #8
        add     r0, sp, #0x10
        stm     sp, {r4, r7}
        bl      Fn_4eddf8
        and     r1, r0, #0x3fc00
        cmp     r1, #0x4400
        mov     r8, r0
        bne     L4ed4f8
        lsl     r0, r8, #0x16
        lsr     r0, r0, #0x16
        cmp     r0, fp
        blt     L4ed4f8
        cmp     r0, #0x190
        bge     L4ed4f8
        mul     r0, r6, r6
        ldr     r3, L4ed574
        mov     ip, #0
        add     r1, r0, r0, lsl #2
        umull   r0, lr, r1, r3
        asr     r2, r1, #0x1f
        mla     r2, r2, r3, lr
        mla     r1, r1, ip, r2
        bl      Fn_01b71c
        add     r6, r6, #1
        cmp     r6, #0xa
        blt     L4ed474
        mov     r0, r8
L4ed4f0:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4ed4f8:
        lsrs    r1, r8, #0x1f
        mov     r0, r8
        bne     L4ed4f0
        add     r0, sp, #8
        ldr     r4, [sb, #0x10]
        ldm     r0, {r5, r6}
        ldr     r0, L4ed578
        bl      Fn_028c2c
        cmp     r0, #0
        nop
        beq     L4ed538
        ldr     r1, L4ed57c
        add     r2, r0, #8
        str     r1, [r0]
        stm     r2, {r5, r6}
        str     r4, [r0, #4]
L4ed538:
        cmp     r0, #0
        ldreq   r4, L4ed580
        movne   r4, #0
        str     r0, [sl]
        lsrs    r0, r4, #0x1f
        beq     L4ed4f0
        ldr     r1, [sb, #0x10]
        ldrd    r2, r3, [sp, #8]
        mov     r0, sp
        str     r1, [sp]
        bl      Fn_4edef8
        add     sp, sp, #0x14
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4ed570:
        .word   0x008aac38
L4ed574:
        .word   0x000f4240
L4ed578:
        .word   0x009a1134
L4ed57c:
        .word   0x0082bdf0
L4ed580:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4ed450, . - fs_USER_OpenArchive_4ed450

@ FUN_004ed740
        .global fs_USER_OpenArchive_4ed740
        .type   fs_USER_OpenArchive_4ed740, %function
fs_USER_OpenArchive_4ed740:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x18
        mov     r4, r0
        ldr     r5, L4ed7e4
        mov     r0, #0xc
        mov     r3, #2
        ldr     r2, [r5, #0x10]
        str     r0, [sp, #4]
        str     r1, [sp]
        str     r2, [sp, #0x10]
        ldr     r2, L4ed7e8
        add     r1, sp, #8
        add     r0, sp, #0x10
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4ed7dc
        mov     r8, r4
        ldrd    r6, r7, [sp, #8]
        ldr     r0, L4ed7ec
        ldr     r4, [r5, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ed7ac
        ldr     r1, L4ed7f0
        str     r1, [r0]
        strd    r6, r7, [r0, #8]
        str     r4, [r0, #4]
L4ed7ac:
        cmp     r0, #0
        ldreq   r4, L4ed7f4
        movne   r4, #0
        str     r0, [r8]
        lsrs    r0, r4, #0x1f
        beq     L4ed7dc
        ldr     r0, [r5, #0x10]
        ldrd    r2, r3, [sp, #8]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4edef8
        mov     r0, r4
L4ed7dc:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, pc}
L4ed7e4:
        .word   0x008aac38
L4ed7e8:
        .word   0x12345682
L4ed7ec:
        .word   0x009a1134
L4ed7f0:
        .word   0x0082bdf0
L4ed7f4:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4ed740, . - fs_USER_OpenArchive_4ed740

@ FUN_004ed7f8
        .global fs_USER_OpenArchive_4ed7f8
        .type   fs_USER_OpenArchive_4ed7f8, %function
fs_USER_OpenArchive_4ed7f8:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x18
        mov     r4, r0
        ldr     r5, L4ed89c
        mov     r0, #0xc
        mov     r3, #2
        ldr     r2, [r5, #0x10]
        str     r0, [sp, #4]
        str     r1, [sp]
        str     r2, [sp, #0x10]
        mov     r2, #7
        add     r1, sp, #8
        add     r0, sp, #0x10
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4ed894
        mov     r8, r4
        ldrd    r6, r7, [sp, #8]
        ldr     r0, L4ed8a0
        ldr     r4, [r5, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ed864
        ldr     r1, L4ed8a4
        str     r1, [r0]
        strd    r6, r7, [r0, #8]
        str     r4, [r0, #4]
L4ed864:
        cmp     r0, #0
        ldreq   r4, L4ed8a8
        movne   r4, #0
        str     r0, [r8]
        lsrs    r0, r4, #0x1f
        beq     L4ed894
        ldr     r0, [r5, #0x10]
        ldrd    r2, r3, [sp, #8]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4edef8
        mov     r0, r4
L4ed894:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, pc}
L4ed89c:
        .word   0x008aac38
L4ed8a0:
        .word   0x009a1134
L4ed8a4:
        .word   0x0082bdf0
L4ed8a8:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4ed7f8, . - fs_USER_OpenArchive_4ed7f8

@ FUN_004ed8ac
        .global fs_USER_OpenArchive_4ed8ac
        .type   fs_USER_OpenArchive_4ed8ac, %function
fs_USER_OpenArchive_4ed8ac:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x20
        mov     r8, r0
        ldr     r7, L4ed95c
        mov     r3, #1
        add     r2, sp, #0x14
        add     r0, sp, #0x14
        str     r3, [sp, #0x10]
        stm     r2, {r0, r3}
        mov     r2, r1
        ldr     r0, [r7, #0x10]
        add     r1, sp, #8
        str     r0, [sp, #0x1c]
        ldr     r0, [sp, #0x14]
        stm     sp, {r0, r3}
        add     r0, sp, #0x1c
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4ed954
        ldr     r4, [sp, #0xc]
        ldr     r5, [sp, #8]
        ldr     r0, L4ed960
        ldr     r6, [r7, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ed924
        ldr     r1, L4ed964
        stm     r0, {r1, r6}
        str     r4, [r0, #0xc]
        str     r5, [r0, #8]
L4ed924:
        cmp     r0, #0
        ldreq   r4, L4ed968
        movne   r4, #0
        str     r0, [r8]
        lsrs    r0, r4, #0x1f
        beq     L4ed954
        ldr     r0, [r7, #0x10]
        ldrd    r2, r3, [sp, #8]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4edef8
        mov     r0, r4
L4ed954:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
L4ed95c:
        .word   0x008aac38
L4ed960:
        .word   0x009a1134
L4ed964:
        .word   0x0082bdf0
L4ed968:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4ed8ac, . - fs_USER_OpenArchive_4ed8ac

@ FUN_004ed96c
        .global fs_USER_OpenArchive_4ed96c
        .type   fs_USER_OpenArchive_4ed96c, %function
fs_USER_OpenArchive_4ed96c:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x18
        mov     r4, r0
        ldr     r5, L4eda10
        mov     r0, #0xc
        mov     r3, #2
        ldr     r2, [r5, #0x10]
        str     r0, [sp, #4]
        str     r1, [sp]
        str     r2, [sp, #0x10]
        ldr     r2, L4eda14
        add     r1, sp, #8
        add     r0, sp, #0x10
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4eda08
        mov     r8, r4
        ldrd    r6, r7, [sp, #8]
        ldr     r0, L4eda18
        ldr     r4, [r5, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4ed9d8
        ldr     r1, L4eda1c
        str     r1, [r0]
        strd    r6, r7, [r0, #8]
        str     r4, [r0, #4]
L4ed9d8:
        cmp     r0, #0
        ldreq   r4, L4eda20
        movne   r4, #0
        str     r0, [r8]
        lsrs    r0, r4, #0x1f
        beq     L4eda08
        ldr     r0, [r5, #0x10]
        ldrd    r2, r3, [sp, #8]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4edef8
        mov     r0, r4
L4eda08:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, pc}
L4eda10:
        .word   0x008aac38
L4eda14:
        .word   0x567890b2
L4eda18:
        .word   0x009a1134
L4eda1c:
        .word   0x0082bdf0
L4eda20:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4ed96c, . - fs_USER_OpenArchive_4ed96c

@ FUN_004eda24
        .global fs_USER_OpenArchive_4eda24
        .type   fs_USER_OpenArchive_4eda24, %function
fs_USER_OpenArchive_4eda24:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x18
        mov     r4, r0
        ldr     r5, L4edac8
        mov     r0, #0xc
        mov     r3, #2
        ldr     r2, [r5, #0x10]
        str     r0, [sp, #4]
        str     r1, [sp]
        str     r2, [sp, #0x10]
        ldr     r2, L4edacc
        add     r1, sp, #8
        add     r0, sp, #0x10
        bl      Fn_4eddf8
        lsrs    r1, r0, #0x1f
        bne     L4edac0
        mov     r8, r4
        ldrd    r6, r7, [sp, #8]
        ldr     r0, L4edad0
        ldr     r4, [r5, #0x10]
        bl      Fn_028c2c
        cmp     r0, #0
        beq     L4eda90
        ldr     r1, L4edad4
        str     r1, [r0]
        strd    r6, r7, [r0, #8]
        str     r4, [r0, #4]
L4eda90:
        cmp     r0, #0
        ldreq   r4, L4edad8
        movne   r4, #0
        str     r0, [r8]
        lsrs    r0, r4, #0x1f
        beq     L4edac0
        ldr     r0, [r5, #0x10]
        ldrd    r2, r3, [sp, #8]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4edef8
        mov     r0, r4
L4edac0:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, pc}
L4edac8:
        .word   0x008aac38
L4edacc:
        .word   0x12345680
L4edad0:
        .word   0x009a1134
L4edad4:
        .word   0x0082bdf0
L4edad8:
        .word   0xd8604659
        .size   fs_USER_OpenArchive_4eda24, . - fs_USER_OpenArchive_4eda24

@ FUN_004ef710
        .global fs_USER_CardNorDirectRead_4ef710
        .type   fs_USER_CardNorDirectRead_4ef710, %function
fs_USER_CardNorDirectRead_4ef710:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        bl      Fn_01a8e4
        str     r0, [sp]
        mov     r3, r6
        mov     r2, r5
        mov     r1, r4
        mov     r0, sp
        bl      Fn_4ee49c
        pop     {r3, r4, r5, r6, r7, pc}
        .size   fs_USER_CardNorDirectRead_4ef710, . - fs_USER_CardNorDirectRead_4ef710

@ FUN_004ef740
        .global fs_USER_CardNorDirectReadWithAddress_4ef740
        .type   fs_USER_CardNorDirectReadWithAddress_4ef740, %function
fs_USER_CardNorDirectReadWithAddress_4ef740:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r4, r3
        bl      Fn_01a8e4
        str     r0, [sp, #4]
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        add     r0, sp, #4
        str     r4, [sp]
        bl      Fn_4ef098
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
        .size   fs_USER_CardNorDirectReadWithAddress_4ef740, . - fs_USER_CardNorDirectReadWithAddress_4ef740

@ FUN_004ef7b0
        .global fs_USER_CardNorDirectWriteWithAddress_4ef7b0
        .type   fs_USER_CardNorDirectWriteWithAddress_4ef7b0, %function
fs_USER_CardNorDirectWriteWithAddress_4ef7b0:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r4, r3
        bl      Fn_01a8e4
        str     r0, [sp, #4]
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        add     r0, sp, #4
        str     r4, [sp]
        bl      Fn_4ef1a4
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
        .size   fs_USER_CardNorDirectWriteWithAddress_4ef7b0, . - fs_USER_CardNorDirectWriteWithAddress_4ef7b0

@ FUN_004efb00
        .global fs_USER_CardNorDirectCommandWithAddress_4efb00
        .type   fs_USER_CardNorDirectCommandWithAddress_4efb00, %function
fs_USER_CardNorDirectCommandWithAddress_4efb00:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, r1
        bl      Fn_01a8e4
        str     r0, [sp]
        mov     r2, r5
        mov     r1, r4
        mov     r0, sp
        bl      Fn_4ef1f8
        pop     {r3, r4, r5, pc}
        .size   fs_USER_CardNorDirectCommandWithAddress_4efb00, . - fs_USER_CardNorDirectCommandWithAddress_4efb00

@ FUN_004efc88
        .global fs_USER_SetPriority_4efc88
        .type   fs_USER_SetPriority_4efc88, %function
fs_USER_SetPriority_4efc88:
        push    {r3, r4, r5, lr}
        mov     r4, #0
        bl      Fn_01a8e4
        str     r0, [sp]
        mov     r1, r4
        mov     r0, sp
        bl      Fn_005e1c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r0
        ldr     r1, L4efce8
        mov     r0, #0
        sub     r4, r1, #8
        str     r0, [r1]
        ldr     r0, [r4, #4]
        svc     #0x23
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, L4efcec
        ldr     r0, [r0]
        str     r0, [r4, #4]
        pop     {r3, r4, r5, pc}
L4efce8:
        .word   0x008aac30
L4efcec:
        .word   0x007e4654
        .size   fs_USER_SetPriority_4efc88, . - fs_USER_SetPriority_4efc88

@ FUN_004efd44
        .global fs_USER_CardNorDirectRead_4xIO_4efd44
        .type   fs_USER_CardNorDirectRead_4xIO_4efd44, %function
fs_USER_CardNorDirectRead_4xIO_4efd44:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0xc
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        mov     r4, r3
        bl      Fn_01a8e4
        str     r0, [sp, #4]
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        add     r0, sp, #4
        str     r4, [sp]
        bl      Fn_4eece4
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
        .size   fs_USER_CardNorDirectRead_4xIO_4efd44, . - fs_USER_CardNorDirectRead_4xIO_4efd44

@ FUN_004f0088
        .global ir_USER_Disconnect_4f0088
        .type   ir_USER_Disconnect_4f0088, %function
ir_USER_Disconnect_4f0088:
        push    {r4, lr}
        bl      Fn_4f3c68
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f00bc
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f00c4
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f00bc:
        mov     r0, r4
        pop     {r4, pc}
L4f00c4:
        .word   0xf9610c02
        .size   ir_USER_Disconnect_4f0088, . - ir_USER_Disconnect_4f0088

@ FUN_004f00c8
        .global ir_USER_InitializeIrnopShared_4f00c8
        .type   ir_USER_InitializeIrnopShared_4f00c8, %function
ir_USER_InitializeIrnopShared_4f00c8:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     r8, r0
        mov     r6, r2
        mov     fp, r1
        ldr     r5, L4f024c
        ldr     r7, [sp, #0x38]
        ldr     sb, [sp, #0x34]
        ldr     sl, [sp, #0x30]
        ldrb    r0, [r5]
        mov     r4, r3
        cmp     r0, #0
        ldrne   r0, L4f0250
        bne     L4f0200
        bl      Fn_011b7c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, L4f0254
        bl      Fn_200e60
        mov     r2, r0
        ldr     r1, L4f0254
        ldr     r0, L4f0258
        mov     r3, #0
        bl      Fn_011be4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, #3
        str     r0, [sp]
        ldr     r0, L4f025c
        mov     r3, #1
        mov     r2, fp
        mov     r1, r8
        bl      Fn_4f5adc
        lsr     r0, sb, #3
        add     r1, sl, sb
        ldr     sb, L4f025c
        add     ip, sp, #4
        str     r1, [sp]
        stm     ip, {r0, r7}
        lsr     r8, r4, #3
        add     r6, r6, r4
        ldr     r0, [sb, #0x14]
        mov     r3, r8
        mov     r2, r6
        mov     r1, fp
        bl      Fn_4f4104
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bpl     L4f0208
        lsrs    r0, r4, #0x1f
        beq     L4f01c4
        lsr     r0, r4, #0x1b
        sub     r0, r0, #0x20
        cmn     r0, #7
        beq     L4f01c4
        ldr     r0, L4f0260
        mov     r1, r4
        cmp     r4, r0
        movne   r0, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f01c4:
        ldr     r0, L4f025c
        bl      Fn_4f5c0c
        ldr     r0, L4f0258
        ldr     r0, [r0]
        svc     #0x23
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        nop
        nop
        bl      Fn_5185dc
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
L4f0200:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f0208:
        ldr     r0, [sb, #8]
        mov     sb, #1
        mov     r4, #0
        str     r0, [r5, #0xc]
        add     r1, r0, #0x10
        ldr     r0, L4f0264
        add     r2, r6, #0x10
        mov     r3, r8
        stm     sp, {r4, sb}
        bl      Fn_4f2ce0
        str     r4, [r5, #4]
        str     r4, [r5, #8]
        strb    r7, [r5, #1]
        strb    sb, [r5]
        add     sp, sp, #0xc
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f024c:
        .word   0x008bbb1c
L4f0250:
        .word   0xd8210ff9
L4f0254:
        .word   0x00801d2c
L4f0258:
        .word   0x008bf998
L4f025c:
        .word   0x00a7aed4
L4f0260:
        .word   0xf9610c02
L4f0264:
        .word   0x00a7aef4
        .size   ir_USER_InitializeIrnopShared_4f00c8, . - ir_USER_InitializeIrnopShared_4f00c8

@ FUN_004f02f8
        .global srv_pm_cmdc_4f02f8
        .type   srv_pm_cmdc_4f02f8, %function
srv_pm_cmdc_4f02f8:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xa4
        mov     r7, #0
        mov     r4, r0
        add     r0, sp, #0x70
        ldr     r6, L4f0b9c
        ldr     r5, [sp, #0xc8]
        str     r7, [sp, #0x20]
        mov     r1, r7
        strb    r7, [r6, #2]
        mov     r2, r7
        str     r7, [sp, #0x58]
        stm     r0, {r1, r2}
        add     r0, sp, #0x50
        bl      Fn_4f6198
        mov     r1, #0
        add     r0, sp, #0x54
        bl      Fn_4f6198
        add     r0, sp, #0x50
        bl      Fn_4f1280
        add     r0, sp, #0x54
        bl      Fn_4f0bd0
        lsl     r0, r5, #8
        lsl     r5, r4, #0x10
        lsr     r0, r0, #0x18
        str     r0, [sp, #0x24]
        lsr     r0, r5, #0x18
        str     r0, [sp, #0x64]
        mov     r0, #1
        mov     sb, r0
        str     r0, [sp, #0x5c]
        ldr     r0, [sp, #0x64]
        lsl     r4, r4, #8
        ldr     r5, L4f0ba0
        lsr     r1, r4, #0x18
        add     r0, r0, r0, lsl #1
        add     r4, sp, #8
        lsr     r0, r0, #1
        str     r0, [sp, #0x68]
        str     r1, [sp, #0x2c]
        b       L4f0524
L4f039c:
        ldrb    r0, [r6, #4]
        ldr     r8, L4f0ba4
        cmp     r0, #0
        beq     L4f03d8
        mov     r2, #0
        ldr     r0, [sp, #0x54]
        mov     r3, r2
        svc     #0x24
        mov     sl, r0
        lsrs    r0, r0, #0x1f
        movne   r0, sl
        blne    Fn_01b6ac
        ldr     r0, L4f0ba8
        cmp     r0, sl, lsl #22
        beq     L4f0430
L4f03d8:
        mov     r1, #3
        mov     r0, r8
        bl      Fn_4f3c14
        and     r0, r0, #0x80000000
        cmp     r0, #0
        movge   r0, #1
        strbge  r0, [r6, #4]
        bge     L4f0430
        strb    r7, [r6, #4]
        ldr     r0, [sp, #0x54]
        cmp     r0, #0
        beq     L4f0410
        svc     #0x23
        str     r7, [sp, #0x54]
L4f0410:
        ldr     r0, [sp, #0x50]
        cmp     r0, #0
        beq     L4f050c
L4f041c:
        nop
        svc     #0x23
        str     r7, [sp, #0x50]
        nop
        b       L4f050c
L4f0430:
        nop
        bl      Fn_4f2d44
        ldr     r0, [sp, #0x5c]
        cmp     r0, #0
        beq     L4f0454
        mov     r0, #0
        str     r0, [sp, #0x5c]
        svc     #0x28
        strd    r0, r1, [sp, #0x70]
L4f0454:
        ldrb    r0, [r6, #5]
        cmp     r0, #0
        beq     L4f0474
        ldr     r3, [sp, #0x64]
        ldr     r0, L4f0bac
        add     r2, sp, #0x58
        add     r1, sp, #0x70
        bl      Fn_4f1b18
L4f0474:
        ldr     r0, [sp, #0x68]
        ldr     ip, L4f0bb0
        mov     r3, #0
        asr     r1, r0, #0x1f
        umull   r2, r8, r0, ip
        mla     r1, r1, ip, r8
        mla     r3, r0, r3, r1
        ldr     r0, [sp, #0x50]
        svc     #0x24
        mov     r8, r0
        lsrs    r0, r0, #0x1f
        movne   r0, r8
        blne    Fn_01b6ac
        ldr     sl, L4f0ba8
        cmp     sl, r8, lsl #22
        beq     L4f0518
        add     r3, sp, #0x7c
        add     r2, sp, #0x78
        mov     r1, #6
        add     r0, sp, #0x80
        str     r7, [sp]
        bl      Fn_4f4378
        ldr     r0, [sp, #0x78]
        cmp     r0, #0
        movne   r0, #0
        strne   r0, [sp, #0x20]
        beq     L4f0454
L4f04e0:
        ldr     r0, [sp, #0x78]
        cmp     r0, #6
        beq     L4f05c0
        ldr     r0, [sp, #0x54]
        cmp     r0, #0
        beq     L4f0500
        svc     #0x23
        str     r7, [sp, #0x54]
L4f0500:
        ldr     r0, [sp, #0x50]
        cmp     r0, #0
        bne     L4f041c
L4f050c:
        add     sp, sp, #0xa4
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f0518:
        ldr     r0, [sp, #0x20]
        add     r0, r0, #1
        str     r0, [sp, #0x20]
L4f0524:
        ldr     r0, [sp, #0x24]
        ldr     r1, [sp, #0x20]
        cmp     r0, r1
        ble     L4f0540
        ldrb    r0, [r6, #6]
        cmp     r0, #0
        beq     L4f039c
L4f0540:
        ldr     r0, [sp, #0x24]
        cmp     r1, r0
        blt     L4f058c
        mov     r0, #5
        strb    r0, [r6, #3]
        ldr     r0, L4f0bb4
        bl      Fn_01b404
        ldr     r0, [r6, #0x1c]
        cmp     r0, #0
        ble     L4f058c
        ldr     r0, L4f0bb8
        mov     r1, #0
        bl      Fn_518514
        ldr     r1, L4f0bbc
        cmp     r0, r1
        bne     L4f058c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
L4f058c:
        ldr     r0, [sp, #0x54]
        cmp     r0, #0
        beq     L4f05a0
        svc     #0x23
        str     r7, [sp, #0x54]
L4f05a0:
        ldr     r0, [sp, #0x50]
        cmp     r0, #0
        beq     L4f05b4
        svc     #0x23
        str     r7, [sp, #0x50]
L4f05b4:
        add     sp, sp, #0xa4
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f05c0:
        add     r1, sp, #0x80
        mov     r0, r4
        str     r5, [sp, #4]
        bl      Fn_646578
        ldrb    r0, [sp, #8]
        cmp     r0, #0x10
        bne     L4f0b38
        ldrb    r0, [sp, #0xa]
        ldrb    r2, [sp, #9]
        mov     sl, #1
        and     r1, r0, #0xf
        and     r0, r0, #0xf0
        orr     r1, r2, r1, lsl #8
        strh    r1, [sp, #0x3c]
        ldrb    r1, [sp, #0xb]
        lsr     r0, r0, #4
        orr     r0, r0, r1, lsl #4
        strh    r0, [sp, #0x3e]
        ldrb    r0, [sp, #0xc]
        tst     r0, #0x80
        movne   r1, #0
        moveq   r1, #2
        tst     r0, #0x40
        moveq   r2, #4
        movne   r2, #0
        orr     r1, r1, r2
        and     r2, r0, #0x1f
        bic     r0, sl, r0, lsr #5
        orr     r0, r0, r1
        str     r0, [sp, #0x40]
        ldr     r0, L4f0bc0
        ldrb    r1, [sp, #0xd]
        strb    r2, [sp, #0x4c]
        strb    sl, [sp, #0x4d]
        strb    r1, [r0]
        ldr     r2, [sp, #0x40]
        ldr     r0, [r6, #0x14]
        eor     r2, r2, r0
        bic     r2, r2, r0
        str     r2, [sp, #0x44]
        ldr     r2, [sp, #0x40]
        bic     r0, r0, r2
        str     r0, [sp, #0x48]
        str     r2, [r6, #0x14]
        ldr     r0, [sp, #0x2c]
        cmp     r0, r1
        blo     L4f0700
        ldrb    r0, [r6, #4]
        ldr     fp, L4f0ba4
        cmp     r0, #0
        beq     L4f06b4
        mov     r2, #0
        ldr     r0, [sp, #0x54]
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        mov     r8, r0
        blne    Fn_01b6ac
        ldr     r0, L4f0ba8
        cmp     r0, r8, lsl #22
        beq     L4f06f8
L4f06b4:
        mov     r1, #3
        mov     r0, fp
        bl      Fn_4f3c14
        and     r0, r0, #0x80000000
        cmp     r0, #0
        strbge  sl, [r6, #4]
        bge     L4f06f8
        strb    r7, [r6, #4]
        ldr     r0, [sp, #0x54]
        cmp     r0, #0
        beq     L4f06e8
        svc     #0x23
        str     r7, [sp, #0x54]
L4f06e8:
        ldr     r0, [sp, #0x50]
        cmp     r0, #0
        beq     L4f050c
        b       L4f041c
L4f06f8:
        nop
        bl      Fn_4f2d44
L4f0700:
        ldr     r1, L4f0bc4
        ldrsh   r3, [sp, #0x3c]
        add     r0, r1, #0x2c
L4f070c:
        ldrexh  ip, [r0]
        sxth    ip, r3
        strexh  r8, ip, [r0]
        cmp     r8, #0
        bne     L4f070c
        ldrsh   r3, [sp, #0x3e]
        add     r0, r1, #0x2e
L4f0728:
        ldrexh  ip, [r0]
        sxth    ip, r3
        strexh  r8, ip, [r0]
        cmp     r8, #0
        bne     L4f0728
        ldr     r2, [sp, #0x40]
        add     r0, r1, #0x18
L4f0744:
        ldrex   r8, [r0]
        strex   r8, r2, [r0]
        cmp     r8, #0
        bne     L4f0744
        ldr     r2, [sp, #0x44]
        add     r0, r1, #0x1c
L4f075c:
        ldrex   r8, [r0]
        strex   r8, r2, [r0]
        cmp     r8, #0
        bne     L4f075c
        ldr     r2, [sp, #0x48]
        add     r0, r1, #0x20
L4f0774:
        ldrex   r8, [r0]
        strex   r8, r2, [r0]
        cmp     r8, #0
        bne     L4f0774
        ldrb    r3, [sp, #0x4c]
        add     r0, r1, #0x24
L4f078c:
        ldrexb  ip, [r0]
        and     ip, r3, #0xff
        sxtb    ip, ip
        strexb  r8, ip, [r0]
        cmp     r8, #0
        bne     L4f078c
        ldrb    r2, [sp, #0x4d]
        add     r0, r1, #0x25
        and     r3, r2, #0xff
L4f07b0:
        ldrexb  r2, [r0]
        and     r2, r3, #0xff
        sxtb    r2, r2
        strexb  ip, r2, [r0]
        cmp     ip, #0
        bne     L4f07b0
        add     r1, sp, #0x3c
        add     r0, sp, #0x98
        bl      Fn_4f2980
        ldr     r8, L4f0bc8
        ldrb    r0, [r8, #0x14]
        cmp     r0, #1
        ldrbne  r1, [r8, #0x15]
        cmpne   r1, #0
        beq     L4f085c
        cmp     r0, #0
        strbne  r7, [sp, #0x1c]
        beq     L4f087c
L4f07f8:
        mvn     r1, #0
        add     r2, sp, #0x34
        mov     r0, r1
        str     r1, [sp, #0x30]
        stm     r2, {r0, r7}
        str     r1, [sp, #0x9c]
        bl      Fn_0088ac
        add     r2, sp, #0x9c
        add     r1, sp, #0x30
        stm     sp, {r1, r2}
        ldr     r0, [r0, #4]
        add     r3, sp, #0x38
        mov     r2, #1
        add     r1, sp, #0x88
        bl      Fn_53afa0
        ldr     r0, [sp, #0x38]
        cmp     r0, #0
        ble     L4f088c
        ldrh    r0, [sp, #0x94]
        strh    r0, [sp, #8]
        ldrh    r0, [sp, #0x96]
        strh    r0, [sp, #0xa]
        ldr     r0, [sp, #0x88]
        str     r0, [sp, #0x10]
        b       L4f0898
L4f085c:
        ldrb    r0, [sp, #0x4c]
        cmp     r0, #0xf
        bls     L4f0870
L4f0868:
        mov     r0, #1
        b       L4f0874
L4f0870:
        mov     r0, #0
L4f0874:
        strb    r0, [sp, #0x1c]
        b       L4f07f8
L4f087c:
        ldrb    r0, [sp, #0x4c]
        cmp     r0, #0x11
        blo     L4f0870
        b       L4f0868
L4f088c:
        strh    r7, [sp, #8]
        strh    r7, [sp, #0xa]
        str     r7, [sp, #0x10]
L4f0898:
        ldrh    r0, [sp, #0x98]
        strh    r0, [sp, #0xc]
        ldrh    r0, [sp, #0x9a]
        strh    r0, [sp, #0xe]
        ldrb    r0, [sp, #0x4d]
        strb    r0, [sp, #0x1d]
        ldr     r0, [sp, #0x40]
        tst     r0, #4
        beq     L4f08c8
        ldr     r0, [sp, #0x10]
        orr     r0, r0, #0x8000
        str     r0, [sp, #0x10]
L4f08c8:
        ldr     r0, [sp, #0x40]
        tst     r0, #1
        beq     L4f08e0
        ldr     r0, [sp, #0x10]
        orr     r0, r0, #0x4000
        str     r0, [sp, #0x10]
L4f08e0:
        ldr     r0, [sp, #0x40]
        tst     r0, #2
        beq     L4f08f8
        ldr     r0, [sp, #0x10]
        orr     r0, r0, #0x100
        str     r0, [sp, #0x10]
L4f08f8:
        ldr     r1, [sp, #0x10]
        add     r0, sp, #0x98
        bl      Fn_4f2fa4
        mov     r1, r0
        str     r0, [sp, #0x10]
        ldr     r0, [r8, #8]
        add     sl, sp, #8
        mov     fp, #0
        eor     r1, r1, r0
        bic     r1, r1, r0
        str     r1, [sp, #0x14]
        ldr     r1, [sp, #0x10]
        bic     r0, r0, r1
        str     r0, [sp, #0x18]
        ldrh    r0, [sp, #8]
        strh    r0, [r8]
        ldrh    r0, [sp, #0xa]
        strh    r0, [r8, #2]
        ldrh    r0, [sp, #0xc]
        strh    r0, [r8, #4]
        ldrh    r0, [sp, #0xe]
        strh    r0, [r8, #6]
        str     r1, [r8, #8]
        ldr     r0, [sp, #0x14]
        str     r0, [r8, #0xc]
        ldr     r0, [sp, #0x18]
        str     r0, [r8, #0x10]
        ldrb    r0, [sp, #0x1c]
        strb    r0, [r8, #0x14]
        ldrb    r0, [sp, #0x1d]
        strb    r0, [r8, #0x15]
        ldr     r8, L4f0bc4
        ldr     r0, [r8, #0x10]
        cmp     r0, #7
        moveq   r3, #0
        addne   r3, r0, #1
        add     r0, r3, r3, lsl #1
        add     ip, r8, r0, lsl #3
        add     r0, ip, #0x30
L4f0994:
        ldrex   r2, [r0]
        strex   r2, r1, [r0]
        cmp     r2, #0
        bne     L4f0994
        add     r1, fp, fp, lsl #1
        add     r0, ip, #0x34
        add     lr, sl, r1, lsl #3
        ldr     r1, [lr, #0xc]
L4f09b4:
        ldrex   r2, [r0]
        strex   r2, r1, [r0]
        cmp     r2, #0
        bne     L4f09b4
        ldr     r1, [lr, #0x10]
        add     r0, ip, #0x38
L4f09cc:
        ldrex   r2, [r0]
        strex   r2, r1, [r0]
        cmp     r2, #0
        bne     L4f09cc
        ldrb    r2, [lr, #0x14]
        add     r0, ip, #0x3c
L4f09e4:
        ldrexb  sl, [r0]
        and     sl, r2, #0xff
        sxtb    sl, sl
        strexb  fp, sl, [r0]
        cmp     fp, #0
        bne     L4f09e4
        ldrsb   r2, [lr, #0x15]
        add     r0, ip, #0x3d
L4f0a04:
        ldrexb  sl, [r0]
        and     sl, r2, #0xff
        sxtb    sl, sl
        strexb  fp, sl, [r0]
        cmp     fp, #0
        bne     L4f0a04
        ldrsh   r2, [lr]
        add     r0, ip, #0x40
L4f0a24:
        ldrexh  sl, [r0]
        sxth    sl, r2
        strexh  fp, sl, [r0]
        cmp     fp, #0
        bne     L4f0a24
        ldrsh   r2, [lr, #2]
        add     r0, ip, #0x42
L4f0a40:
        ldrexh  sl, [r0]
        sxth    sl, r2
        strexh  fp, sl, [r0]
        cmp     fp, #0
        bne     L4f0a40
        ldrsh   r2, [lr, #4]
        add     r0, ip, #0x44
L4f0a5c:
        ldrexh  sl, [r0]
        sxth    sl, r2
        strexh  fp, sl, [r0]
        cmp     fp, #0
        bne     L4f0a5c
        ldrsh   r1, [lr, #6]
        add     r0, ip, #0x46
L4f0a78:
        ldrexh  ip, [r0]
        sxth    ip, r1
        strexh  sl, ip, [r0]
        cmp     sl, #0
        bne     L4f0a78
        mcr     p15, #0, r7, c7, c10, #4
        add     r0, r8, #0x10
L4f0a94:
        ldrex   ip, [r0]
        strex   ip, r3, [r0]
        cmp     ip, #0
        bne     L4f0a94
        ldr     r0, [r8, #0x10]
        cmp     r0, #0
        beq     L4f0b68
L4f0ab0:
        cmp     sb, #0
        beq     L4f0afc
        mov     r0, #4
        strb    r0, [r6, #3]
        ldr     r0, L4f0bb4
        bl      Fn_01b404
        ldr     r0, [r6, #0x1c]
        mov     sb, #0
        cmp     r0, #0
        ble     L4f0afc
        ldr     r0, L4f0bb8
        mov     r1, #0
        bl      Fn_518514
        ldr     r1, L4f0bbc
        cmp     r0, r1
        bne     L4f0afc
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
L4f0afc:
        ldr     r0, [r6, #0x18]
        cmp     r0, #0
        ble     L4f0b2c
        ldr     r0, L4f0bcc
        mov     r1, #0
        bl      Fn_518514
        ldr     r1, L4f0bbc
        cmp     r0, r1
        bne     L4f0b2c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
L4f0b2c:
        ldr     r0, [sp, #0x58]
        add     r0, r0, #1
        str     r0, [sp, #0x58]
L4f0b38:
        ldr     r0, [sp, #0x7c]
        cmp     r0, #0
        ble     L4f0454
        add     r3, sp, #0x7c
        add     r2, sp, #0x78
        mov     r1, #6
        add     r0, sp, #0x80
        str     r7, [sp]
        bl      Fn_4f4378
        nop
        nop
        b       L4f04e0
L4f0b68:
        ldrd    r0, r1, [r8]
        strd    r0, r1, [r8, #8]
        mcr     p15, #0, r7, c7, c10, #4
        svc     #0x28
        mov     r2, r0
        mov     r3, r1
L4f0b80:
        ldrexd  r0, r1, [r8]
        mov     r0, r2
        mov     r1, r3
        strexd  sl, r0, r1, [r8]
        cmp     sl, #0
        bne     L4f0b80
        b       L4f0ab0
L4f0b9c:
        .word   0x008bb928
L4f0ba0:
        .word   0x0082be94
L4f0ba4:
        .word   0x008bb92f
L4f0ba8:
        .word   0xff800000
L4f0bac:
        .word   0x008bb938
L4f0bb0:
        .word   0x000f4240
L4f0bb4:
        .word   0x008bb954
L4f0bb8:
        .word   0x00000215
L4f0bbc:
        .word   0xd8606408
L4f0bc0:
        .word   0x008bb92a
L4f0bc4:
        .word   0x00a76c10
L4f0bc8:
        .word   0x00a76d00
L4f0bcc:
        .word   0x00000216
        .size   srv_pm_cmdc_4f02f8, . - srv_pm_cmdc_4f02f8

@ FUN_004f0bd0
        .global ir_USER_GetSendEvent_4f0bd0
        .type   ir_USER_GetSendEvent_4f0bd0, %function
ir_USER_GetSendEvent_4f0bd0:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f3c98
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L4f0c08
        svc     #0x23
        str     r5, [r4]
L4f0c08:
        ldr     r0, [sp]
        str     r0, [r4]
        pop     {r3, r4, r5, pc}
        .size   ir_USER_GetSendEvent_4f0bd0, . - ir_USER_GetSendEvent_4f0bd0

@ FUN_004f0c14
        .global ir_USER_AnyConnection_4f0c14
        .type   ir_USER_AnyConnection_4f0c14, %function
ir_USER_AnyConnection_4f0c14:
        push    {r4, lr}
        bl      Fn_4f3d48
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f0c48
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f0c5c
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f0c48:
        ldr     r1, L4f0c60
        mov     r0, #0
        str     r0, [r1, #4]
        mov     r0, r4
        pop     {r4, pc}
L4f0c5c:
        .word   0xf9610c02
L4f0c60:
        .word   0x008bbb1c
        .size   ir_USER_AnyConnection_4f0c14, . - ir_USER_AnyConnection_4f0c14

@ FUN_004f0ddc
        .global ir_USER_AutoConnection_4f0ddc
        .type   ir_USER_AutoConnection_4f0ddc, %function
ir_USER_AutoConnection_4f0ddc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x44
        mov     r5, #0
        mov     r6, r0
        mov     r0, r5
        mov     r1, r5
        strd    r0, r1, [sp, #0x20]
        strd    r0, r1, [sp, #0x28]
        ldr     r7, L4f0e90
        strd    r0, r1, [sp, #0x30]
        strd    r0, r1, [sp, #0x38]
        add     r0, sp, #0x38
        str     r0, [sp]
        ldr     r4, L4f0e8c
        ldrb    r0, [r7, #1]
        add     r3, sp, #0x30
        add     r2, sp, #0x20
        add     r1, sp, #0x28
        bl      Fn_4f38b8
        mov     r2, r4
        add     r4, sp, #0x20
        mov     r3, r5
        ldm     r4, {r0, r1, r8, sb, sl, fp, ip, lr}
        add     r4, sp, #8
        stm     r4, {r0, r1, sl, fp, ip, lr}
        mov     r0, r6
        strd    r8, sb, [sp]
        bl      Fn_4f3da8
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f0e78
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f0e94
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f0e78:
        mov     r1, #0
        str     r1, [r7, #4]
        add     sp, sp, #0x44
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f0e8c:
        .word   0x002dc6c0
L4f0e90:
        .word   0x008bbb1c
L4f0e94:
        .word   0xf9610c02
        .size   ir_USER_AutoConnection_4f0ddc, . - ir_USER_AutoConnection_4f0ddc

@ FUN_004f0e98
        .global ir_USER_AutoConnection_4f0e98
        .type   ir_USER_AutoConnection_4f0e98, %function
ir_USER_AutoConnection_4f0e98:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x24
        add     lr, sp, #0x40
        ldm     lr, {r1, r4, r5, r6, r7, r8, sb, ip}
        stm     sp, {r1, r4, r5, r6, r7, r8, sb, ip}
        bl      Fn_4f3da8
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f0edc
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f0ef4
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f0edc:
        ldr     r1, L4f0ef8
        mov     r0, #0
        str     r0, [r1, #4]
        add     sp, sp, #0x24
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, pc}
L4f0ef4:
        .word   0xf9610c02
L4f0ef8:
        .word   0x008bbb1c
        .size   ir_USER_AutoConnection_4f0e98, . - ir_USER_AutoConnection_4f0e98

@ FUN_004f0f78
        .global ir_USER_WaitConnection_4f0f78
        .type   ir_USER_WaitConnection_4f0f78, %function
ir_USER_WaitConnection_4f0f78:
        push    {r4, lr}
        bl      Fn_4f3e44
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f0fac
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f0fc4
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f0fac:
        ldr     r2, L4f0fc8
        mov     r1, #0
        mov     r0, r4
        str     r1, [r2, #4]
        pop     {r4, pc}
        .word   0x002dc6c0
L4f0fc4:
        .word   0xf9610c02
L4f0fc8:
        .word   0x008bbb1c
        .size   ir_USER_WaitConnection_4f0f78, . - ir_USER_WaitConnection_4f0f78

@ FUN_004f0fcc
        .global ir_USER_WaitConnection_4f0fcc
        .type   ir_USER_WaitConnection_4f0fcc, %function
ir_USER_WaitConnection_4f0fcc:
        push    {r4, lr}
        bl      Fn_4f3e44
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f1000
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f1014
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f1000:
        ldr     r1, L4f1018
        mov     r0, #0
        str     r0, [r1, #4]
        mov     r0, r4
        pop     {r4, pc}
L4f1014:
        .word   0xf9610c02
L4f1018:
        .word   0x008bbb1c
        .size   ir_USER_WaitConnection_4f0fcc, . - ir_USER_WaitConnection_4f0fcc

@ FUN_004f1240
        .global ir_USER_ClearSendBuffer_4f1240
        .type   ir_USER_ClearSendBuffer_4f1240, %function
ir_USER_ClearSendBuffer_4f1240:
        push    {r4, lr}
        bl      Fn_4f3e88
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f1274
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f127c
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f1274:
        mov     r0, r4
        pop     {r4, pc}
L4f127c:
        .word   0xf9610c02
        .size   ir_USER_ClearSendBuffer_4f1240, . - ir_USER_ClearSendBuffer_4f1240

@ FUN_004f1280
        .global ir_USER_GetReceiveEvent_4f1280
        .type   ir_USER_GetReceiveEvent_4f1280, %function
ir_USER_GetReceiveEvent_4f1280:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f3eb8
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L4f12b8
        svc     #0x23
        str     r5, [r4]
L4f12b8:
        ldr     r0, [sp]
        str     r0, [r4]
        pop     {r3, r4, r5, pc}
        .size   ir_USER_GetReceiveEvent_4f1280, . - ir_USER_GetReceiveEvent_4f1280

@ FUN_004f1320
        .global srv_pm_cmdc_4f1320
        .type   srv_pm_cmdc_4f1320, %function
srv_pm_cmdc_4f1320:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, L4f13f8
        ldrb    r0, [r4]
        cmp     r0, #0
        ldreq   r0, L4f13fc
        beq     L4f13f4
        bl      Fn_4f0088
        ldr     r5, L4f1400
        mov     r7, #1
        mvn     r2, #0
        strb    r7, [r4, #6]
        ldr     r0, [r5]
        mov     r6, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
        ldr     r0, L4f1400
        strb    r7, [r5, #4]
        bl      Fn_024588
        ldr     r0, [r5]
        ldr     r7, L4f1400
        cmp     r0, #0
        beq     L4f1388
        svc     #0x23
        str     r6, [r7]
L4f1388:
        nop
        bl      Fn_4f20d8
        nop
        nop
        bl      Fn_4f1240
        nop
        nop
        bl      Fn_4f0088
        nop
        nop
        bl      Fn_4f44fc
        strb    r6, [r4, #3]
        ldr     r0, [r4, #0x1c]
        mov     r5, r6
        cmp     r0, #0
        ble     L4f13ec
        ldr     r0, L4f1404
        mov     r1, #0
        bl      Fn_518514
        ldr     r1, L4f1408
        cmp     r0, r1
        bne     L4f13ec
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
L4f13ec:
        mov     r0, r5
        strb    r5, [r4]
L4f13f4:
        pop     {r4, r5, r6, r7, r8, pc}
L4f13f8:
        .word   0x008bb928
L4f13fc:
        .word   0xd8210ff8
L4f1400:
        .word   0x008bb94c
L4f1404:
        .word   0x00000215
L4f1408:
        .word   0xd8606408
        .size   srv_pm_cmdc_4f1320, . - srv_pm_cmdc_4f1320

@ FUN_004f1ac8
        .global ir_USER_RequireConnection_4f1ac8
        .type   ir_USER_RequireConnection_4f1ac8, %function
ir_USER_RequireConnection_4f1ac8:
        push    {r4, lr}
        bl      Fn_4f4024
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f1afc
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f1b10
        cmpne   r4, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f1afc:
        ldr     r1, L4f1b14
        mov     r0, #0
        str     r0, [r1, #4]
        mov     r0, r4
        pop     {r4, pc}
L4f1b10:
        .word   0xf9610c02
L4f1b14:
        .word   0x008bbb1c
        .size   ir_USER_RequireConnection_4f1ac8, . - ir_USER_RequireConnection_4f1ac8

@ FUN_004f20d8
        .global ir_USER_ClearReceiveBuffer_4f20d8
        .type   ir_USER_ClearReceiveBuffer_4f20d8, %function
ir_USER_ClearReceiveBuffer_4f20d8:
        push    {r4, lr}
        bl      Fn_4f4060
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bpl     L4f2120
        lsrs    r0, r4, #0x1f
        beq     L4f2130
        lsr     r0, r4, #0x1b
        sub     r0, r0, #0x20
        cmn     r0, #7
        beq     L4f2130
        ldr     r0, L4f2138
        mov     r1, r4
        cmp     r4, r0
        movne   r0, r1
        movne   r1, pc
        blne    Fn_010ccc
        b       L4f2130
L4f2120:
        ldr     r0, L4f213c
        mov     r1, #0
        str     r1, [r0, #4]
        str     r1, [r0, #8]
L4f2130:
        mov     r0, r4
        pop     {r4, pc}
L4f2138:
        .word   0xf9610c02
L4f213c:
        .word   0x008bbb1c
        .size   ir_USER_ClearReceiveBuffer_4f20d8, . - ir_USER_ClearReceiveBuffer_4f20d8

@ FUN_004f2b38
        .global ir_USER_ReleaseReceivedData_4f2b38
        .type   ir_USER_ReleaseReceivedData_4f2b38, %function
ir_USER_ReleaseReceivedData_4f2b38:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r4, L4f2c54
        ldr     r5, L4f2c58
        ldr     r2, [r4, #0xc]
        ldrb    r1, [r2, #8]
        cmp     r1, #4
        moveq   r0, r5
        movne   r0, #0
        lsrs    r3, r0, #0x1f
        bne     L4f2c30
        ldrb    r0, [r2, #0xe]
        cmp     r0, #0
        ldreq   r0, L4f2c5c
        movne   r0, #0
        lsrs    r2, r0, #0x1f
        bne     L4f2c30
        ldr     r8, L4f2c60
        cmp     r1, #1
        movne   r0, #0
        moveq   r0, r8
        lsrs    r1, r0, #0x1f
        bne     L4f2c30
        mov     sl, #0
        str     sl, [r6]
        ldr     r0, L4f2c64
        ldr     r1, [r4, #4]
        mov     sb, sl
        bl      Fn_4f2c80
        cmp     r0, #0
        beq     L4f2c34
        ldr     r0, L4f2c64
        ldr     r1, [r4, #4]
        mov     r2, #1
        bl      Fn_4f2d24
        str     r0, [r4, #4]
        ldr     r0, [r4, #8]
        cmp     r7, #0
        add     r0, r0, #1
        str     r0, [r4, #8]
        beq     L4f2c18
        bl      Fn_4f40cc
        and     r1, r0, #0x80000000
        cmp     r1, #0
        mov     sl, r0
        strge   sb, [r4, #8]
        bge     L4f2c18
        lsrs    r1, r0, #0x1f
        beq     L4f2c18
        lsr     r1, r0, #0x1b
        sub     r1, r1, #0x20
        cmn     r1, #7
        cmpne   r0, r5
        movne   r1, pc
        blne    Fn_010ccc
L4f2c18:
        ldr     r0, L4f2c64
        bl      Fn_4f2cd4
        ldr     r1, [r4, #8]
        sub     r0, r0, r1
        str     r0, [r6]
        mov     r0, sl
L4f2c30:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4f2c34:
        ldr     r0, [r4, #0xc]
        ldrb    r0, [r0, #8]
        cmp     r0, #2
        movne   r0, r8
        moveq   r0, #0
        lsrs    r1, r0, #0x1f
        ldreq   r0, L4f2c68
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L4f2c54:
        .word   0x008bbb1c
L4f2c58:
        .word   0xf9610c02
L4f2c5c:
        .word   0xc8a10c01
L4f2c60:
        .word   0xc8a10c0d
L4f2c64:
        .word   0x00a7aef4
L4f2c68:
        .word   0xc8810fef
        .size   ir_USER_ReleaseReceivedData_4f2b38, . - ir_USER_ReleaseReceivedData_4f2b38

@ FUN_004f2d44
        .global ir_USER_ReleaseReceivedData_4f2d44
        .type   ir_USER_ReleaseReceivedData_4f2d44, %function
ir_USER_ReleaseReceivedData_4f2d44:
        push    {r4, r5, r6, lr}
        ldr     r5, L4f2e08
        ldr     r6, L4f2e0c
        ldr     r2, [r5, #0xc]
        ldrb    r1, [r2, #8]
        cmp     r1, #4
        moveq   r0, r6
        movne   r0, #0
        lsrs    r3, r0, #0x1f
        bne     L4f2e04
        ldrb    r0, [r2, #0xe]
        cmp     r0, #0
        ldreq   r0, L4f2e10
        movne   r0, #0
        lsrs    r2, r0, #0x1f
        bne     L4f2e04
        ldr     r2, L4f2e14
        cmp     r1, #1
        movne   r0, #0
        moveq   r0, r2
        lsrs    r3, r0, #0x1f
        bne     L4f2e04
        ldr     r0, [r5, #8]
        mov     r4, #0
        cmp     r0, #0
        ble     L4f2dec
        bl      Fn_4f40cc
        and     r1, r0, #0x80000000
        cmp     r1, #0
        mov     r4, r0
        movge   r0, #0
        strge   r0, [r5, #8]
        bge     L4f2e00
        lsrs    r1, r0, #0x1f
        beq     L4f2e00
        lsr     r1, r0, #0x1b
        sub     r1, r1, #0x20
        cmn     r1, #7
        cmpne   r0, r6
        movne   r1, pc
        blne    Fn_010ccc
        b       L4f2e00
L4f2dec:
        cmp     r1, #2
        movne   r0, r2
        moveq   r0, #0
        lsrs    r1, r0, #0x1f
        bne     L4f2e04
L4f2e00:
        mov     r0, r4
L4f2e04:
        pop     {r4, r5, r6, pc}
L4f2e08:
        .word   0x008bbb1c
L4f2e0c:
        .word   0xf9610c02
L4f2e10:
        .word   0xc8a10c01
L4f2e14:
        .word   0xc8a10c0d
        .size   ir_USER_ReleaseReceivedData_4f2d44, . - ir_USER_ReleaseReceivedData_4f2d44

@ FUN_004f30cc
        .global srv_pm_cmdc_4f30cc
        .type   srv_pm_cmdc_4f30cc, %function
srv_pm_cmdc_4f30cc:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        ldr     r4, L4f3198
        ldr     r2, [r4, #0xc]
        ldrb    r1, [r2, #8]
        cmp     r1, #4
        ldreq   r0, L4f319c
        movne   r0, #0
        lsrs    r3, r0, #0x1f
        bne     L4f3174
        ldrb    r0, [r2, #0xe]
        cmp     r0, #0
        ldreq   r0, L4f31a0
        movne   r0, #0
        lsrs    r2, r0, #0x1f
        bne     L4f3174
        ldr     r6, L4f31a4
        cmp     r1, #1
        movne   r0, #0
        moveq   r0, r6
        lsrs    r1, r0, #0x1f
        bne     L4f3174
        mov     r0, #0
        str     r0, [r5]
        ldr     r0, L4f31a8
        ldr     r1, [r4, #4]
        bl      Fn_4f2c80
        cmp     r0, #0
        beq     L4f3178
        mov     r0, #0xa5
        strb    r0, [sp]
        ldr     r0, L4f31a8
        ldr     r1, [r4, #4]
        mov     r2, sp
        bl      Fn_4f2e18
        ldrb    r0, [sp, #2]
        tst     r0, #0x40
        ldrbne  r1, [sp, #3]
        and     r0, r0, #0x3f
        orrne   r0, r1, r0, lsl #8
        str     r0, [r5]
        mov     r0, #0
L4f3174:
        pop     {r3, r4, r5, r6, r7, pc}
L4f3178:
        ldr     r0, [r4, #0xc]
        ldrb    r0, [r0, #8]
        cmp     r0, #2
        movne   r0, r6
        moveq   r0, #0
        lsrs    r1, r0, #0x1f
        ldreq   r0, L4f31ac
        pop     {r3, r4, r5, r6, r7, pc}
L4f3198:
        .word   0x008bbb1c
L4f319c:
        .word   0xf9610c02
L4f31a0:
        .word   0xc8a10c01
L4f31a4:
        .word   0xc8a10c0d
L4f31a8:
        .word   0x00a7aef4
L4f31ac:
        .word   0xc8810fef
        .size   srv_pm_cmdc_4f30cc, . - srv_pm_cmdc_4f30cc

@ FUN_004f33c4
        .global ir_USER_GetConnectionStatusEvent_4f33c4
        .type   ir_USER_GetConnectionStatusEvent_4f33c4, %function
ir_USER_GetConnectionStatusEvent_4f33c4:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_4f41bc
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L4f33fc
        svc     #0x23
        str     r5, [r4]
L4f33fc:
        ldr     r0, [sp]
        str     r0, [r4]
        pop     {r3, r4, r5, pc}
        .size   ir_USER_GetConnectionStatusEvent_4f33c4, . - ir_USER_GetConnectionStatusEvent_4f33c4

@ FUN_004f3408
        .global ir_USER_cmd12
        .type   ir_USER_cmd12, %function
ir_USER_cmd12:
        ldr     r1, L4f3450
        push    {r3, lr}
        cmp     r0, #0
        str     r1, [sp]
        beq     L4f343c
        mov     r1, r0
        mov     r0, sp
        bl      Fn_4f41f8
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, [sp]
        pop     {r3, pc}
L4f343c:
        ldr     r0, L4f3454
        ldr     r0, [r0, #0xc]
        ldr     r0, [r0, #4]
        str     r0, [sp]
        pop     {r3, pc}
L4f3450:
        .word   0xe7e3ffff
L4f3454:
        .word   0x008bbb1c
        .size   ir_USER_cmd12, . - ir_USER_cmd12

@ FUN_004f34bc
        .global srv_pm_cmd9_4f34bc
        .type   srv_pm_cmd9_4f34bc, %function
srv_pm_cmd9_4f34bc:
        push    {r4, lr}
        ldr     r4, L4f3508
        str     r0, [r1, #0x10]
        ldr     r0, L4f3504
        mov     r1, r4
        bl      Fn_006308
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
        bl      Fn_5185a4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r1, L4f350c
        mov     r0, #1
        str     r0, [r1, #0x18]
        pop     {r4, pc}
L4f3504:
        .word   0x00a76d2c
L4f3508:
        .word   0x00000216
L4f350c:
        .word   0x008bb928
        .size   srv_pm_cmd9_4f34bc, . - srv_pm_cmd9_4f34bc

@ FUN_004f36a4
        .global srv_pm_cmdc_4f36a4
        .type   srv_pm_cmdc_4f36a4, %function
srv_pm_cmdc_4f36a4:
        push    {r4, lr}
        ldr     r0, L4f36d8
        bl      Fn_518514
        ldr     r1, L4f36dc
        cmp     r0, r1
        bne     L4f36d0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        beq     L4f36d0
        pop     {r4, lr}
        b       Fn_01b790
L4f36d0:
        pop     {r4, pc}
        .word   0x008bb928
L4f36d8:
        .word   0x00000215
L4f36dc:
        .word   0xd8606408
        .size   srv_pm_cmdc_4f36a4, . - srv_pm_cmdc_4f36a4

@ FUN_004f36e4
        .global srv_pm_cmd9_4f36e4
        .type   srv_pm_cmd9_4f36e4, %function
srv_pm_cmd9_4f36e4:
        push    {r4, lr}
        ldr     r4, L4f3730
        str     r0, [r1, #0x10]
        ldr     r0, L4f372c
        mov     r1, r4
        bl      Fn_006308
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
        bl      Fn_5185a4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r1, L4f3734
        mov     r0, #1
        str     r0, [r1, #0x1c]
        pop     {r4, pc}
L4f372c:
        .word   0x00a76d18
L4f3730:
        .word   0x00000215
L4f3734:
        .word   0x008bb928
        .size   srv_pm_cmd9_4f36e4, . - srv_pm_cmd9_4f36e4

@ FUN_004f3778
        .global ir_USER_cmd11
        .type   ir_USER_cmd11, %function
ir_USER_cmd11:
        push    {r3, lr}
        cmp     r0, #0
        str     r1, [sp]
        beq     L4f37a8
        mov     r1, r0
        mov     r0, sp
        bl      Fn_4f42e0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, [sp]
        pop     {r3, pc}
L4f37a8:
        ldr     r0, L4f37c0
        ldr     r0, [r0, #0xc]
        ldr     r0, [r0]
        str     r0, [sp]
        pop     {r3, pc}
        .word   0xe7e3ffff
L4f37c0:
        .word   0x008bbb1c
        .size   ir_USER_cmd11, . - ir_USER_cmd11

@ FUN_004f3c14
        .global ir_USER_Multi2_4f3c14
        .type   ir_USER_Multi2_4f3c14, %function
ir_USER_Multi2_4f3c14:
        cmp     r1, #0xfc
        push    {r4, lr}
        bhi     L4f3c28
        bl      Fn_4f432c
        b       L4f3c30
L4f3c28:
        nop
        bl      Fn_4f3dfc
L4f3c30:
        lsrs    r1, r0, #0x1f
        mov     r4, r0
        beq     L4f3c5c
        tst     r0, #0x80000000
        lsr     r1, r0, #0x1b
        subne   r1, r1, #0x20
        cmn     r1, #7
        ldrne   r1, L4f3c64
        cmpne   r0, r1
        movne   r1, pc
        blne    Fn_010ccc
L4f3c5c:
        mov     r0, r4
        pop     {r4, pc}
L4f3c64:
        .word   0xf9610c02
        .size   ir_USER_Multi2_4f3c14, . - ir_USER_Multi2_4f3c14

@ FUN_004f4378
        .global ir_USER_ReleaseReceivedData_4f4378
        .type   ir_USER_ReleaseReceivedData_4f4378, %function
ir_USER_ReleaseReceivedData_4f4378:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #4
        mov     r7, #0
        mov     sb, r2
        mov     fp, r0
        ldr     r5, L4f44e4
        ldr     sl, [sp, #0x38]
        str     r7, [r2]
        str     r7, [r3]
        ldr     r2, [r5, #0xc]
        ldr     r6, L4f44e8
        mov     r8, r3
        ldrb    r1, [r2, #8]
        cmp     r1, #4
        moveq   r0, r6
        movne   r0, #0
        lsrs    r3, r0, #0x1f
        bne     L4f44b8
        ldrb    r0, [r2, #0xe]
        cmp     r0, #0
        ldreq   r0, L4f44ec
        movne   r0, #0
        lsrs    r2, r0, #0x1f
        bne     L4f44b8
        ldr     r4, L4f44f0
        cmp     r1, #1
        movne   r0, #0
        moveq   r0, r4
        lsrs    r1, r0, #0x1f
        bne     L4f44b8
        ldr     r0, L4f44f4
        bl      Fn_4f2cd4
        ldr     r1, [r5, #8]
        sub     r0, r0, r1
        cmp     r0, #0
        ble     L4f44c0
        ldr     r0, L4f44f4
        ldr     r1, [r5, #4]
        bl      Fn_4f2c80
        cmp     r0, #0
        beq     L4f44c0
        str     sb, [sp]
        ldr     r3, [sp, #8]
        ldr     r0, L4f44f4
        ldr     r1, [r5, #4]
        mov     r2, fp
        bl      Fn_4f2e30
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bmi     L4f44b4
        ldr     r0, L4f44f4
        ldr     r1, [r5, #4]
        mov     r2, #1
        bl      Fn_4f2d24
        str     r0, [r5, #4]
        ldr     r0, [r5, #8]
        cmp     sl, #0
        add     r0, r0, #1
        str     r0, [r5, #8]
        beq     L4f44a0
        bl      Fn_4f40cc
        and     r1, r0, #0x80000000
        cmp     r1, #0
        mov     r4, r0
        strge   r7, [r5, #8]
        bge     L4f44a0
        lsrs    r1, r0, #0x1f
        beq     L4f44a0
        lsr     r1, r0, #0x1b
        sub     r1, r1, #0x20
        cmn     r1, #7
        cmpne   r0, r6
        movne   r1, pc
        blne    Fn_010ccc
L4f44a0:
        ldr     r0, L4f44f4
        bl      Fn_4f2cd4
        ldr     r1, [r5, #8]
        sub     r0, r0, r1
        str     r0, [r8]
L4f44b4:
        mov     r0, r4
L4f44b8:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f44c0:
        ldr     r0, [r5, #0xc]
        ldrb    r0, [r0, #8]
        add     sp, sp, #0x14
        cmp     r0, #2
        movne   r0, r4
        moveq   r0, #0
        lsrs    r1, r0, #0x1f
        ldreq   r0, L4f44f8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L4f44e4:
        .word   0x008bbb1c
L4f44e8:
        .word   0xf9610c02
L4f44ec:
        .word   0xc8a10c01
L4f44f0:
        .word   0xc8a10c0d
L4f44f4:
        .word   0x00a7aef4
L4f44f8:
        .word   0xc8810fef
        .size   ir_USER_ReleaseReceivedData_4f4378, . - ir_USER_ReleaseReceivedData_4f4378

@ FUN_004f44fc
        .global ir_USER_FinalizeIrnop_4f44fc
        .type   ir_USER_FinalizeIrnop_4f44fc, %function
ir_USER_FinalizeIrnop_4f44fc:
        push    {r4, lr}
        ldr     r4, L4f4560
        ldrb    r0, [r4]
        cmp     r0, #0
        ldreq   r0, L4f4564
        beq     L4f455c
        bl      Fn_4f3d78
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, L4f4568
        bl      Fn_4f5c0c
        ldr     r0, L4f456c
        ldr     r0, [r0]
        svc     #0x23
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        bl      Fn_5185dc
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, #0
        strb    r0, [r4]
L4f455c:
        pop     {r4, pc}
L4f4560:
        .word   0x008bbb1c
L4f4564:
        .word   0xd8210ff8
L4f4568:
        .word   0x00a7aed4
L4f456c:
        .word   0x008bf998
        .size   ir_USER_FinalizeIrnop_4f44fc, . - ir_USER_FinalizeIrnop_4f44fc

@ FUN_004fabb0
        .global cecd_s_GenHashConsoleUnique_4fabb0
        .type   cecd_s_GenHashConsoleUnique_4fabb0, %function
cecd_s_GenHashConsoleUnique_4fabb0:
        push    {r4, r5, r6, lr}
        mov     r0, #0
        ldr     r5, L4fac08
        ldrb    r1, [r5]
        cmp     r1, #0
        beq     L4fac04
        ldr     r6, L4fac0c
        mov     r4, #0
        ldrb    r0, [r6]
        cmp     r0, #0
        beq     L4fabf4
        bl      Fn_504590
        lsrs    r1, r0, #0x1f
        bne     L4fac04
        ldr     r0, L4fac10
        strb    r4, [r0]
        strb    r4, [r6]
L4fabf4:
        nop
        bl      Fn_4fb2c0
        lsrs    r1, r0, #0x1f
        strbeq  r4, [r5]
L4fac04:
        pop     {r4, r5, r6, pc}
L4fac08:
        .word   0x008ab9f4
L4fac0c:
        .word   0x008aab75
L4fac10:
        .word   0x008aab76
        .size   cecd_s_GenHashConsoleUnique_4fabb0, . - cecd_s_GenHashConsoleUnique_4fabb0

@ FUN_004faf88
        .global cecd_s_ReadMessage_4faf88
        .type   cecd_s_ReadMessage_4faf88, %function
cecd_s_ReadMessage_4faf88:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        ldr     r6, L4fafe4
        ldr     ip, [sp, #0x20]
        ldrd    r4, r5, [sp, #0x24]
        ldr     r6, [r6]
        cmp     r6, #0
        beq     L4fafbc
        str     ip, [sp]
        strd    r4, r5, [sp, #4]
        bl      Fn_4fbc0c
L4fafb4:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fafbc:
        ldr     r6, L4fafe8
        ldr     r6, [r6]
        cmp     r6, #0
        ldreq   r0, L4fafec
        beq     L4fafb4
        str     ip, [sp]
        strd    r4, r5, [sp, #4]
        bl      Fn_4fb3b0
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fafe4:
        .word   0x008b877c
L4fafe8:
        .word   0x008b8778
L4fafec:
        .word   0xe0810bf8
        .size   cecd_s_ReadMessage_4faf88, . - cecd_s_ReadMessage_4faf88

@ FUN_004fb02c
        .global cecd_s_WriteMessage_4fb02c
        .type   cecd_s_WriteMessage_4fb02c, %function
cecd_s_WriteMessage_4fb02c:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        ldr     r5, L4fb088
        ldr     r4, [sp, #0x1c]
        ldr     ip, [sp, #0x18]
        ldr     r5, [r5]
        cmp     r5, #0
        beq     L4fb060
        str     r4, [sp, #4]
        str     ip, [sp]
        bl      Fn_4fbdec
L4fb058:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4fb060:
        ldr     r5, L4fb08c
        ldr     r5, [r5]
        cmp     r5, #0
        ldreq   r0, L4fb090
        beq     L4fb058
        str     r4, [sp, #4]
        str     ip, [sp]
        bl      Fn_4fb46c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4fb088:
        .word   0x008b877c
L4fb08c:
        .word   0x008b8778
L4fb090:
        .word   0xe0810bf8
        .size   cecd_s_WriteMessage_4fb02c, . - cecd_s_WriteMessage_4fb02c

@ FUN_004fb094
        .global cecd_s_OpenAndRead_4fb094
        .type   cecd_s_OpenAndRead_4fb094, %function
cecd_s_OpenAndRead_4fb094:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        ldr     r5, L4fb0f0
        ldr     r4, [sp, #0x1c]
        ldr     ip, [sp, #0x18]
        ldr     r5, [r5]
        cmp     r5, #0
        beq     L4fb0c8
        str     r4, [sp, #4]
        str     ip, [sp]
        bl      Fn_4fbfb0
L4fb0c0:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4fb0c8:
        ldr     r5, L4fb0f4
        ldr     r5, [r5]
        cmp     r5, #0
        ldreq   r0, L4fb0f8
        beq     L4fb0c0
        str     r4, [sp, #4]
        str     ip, [sp]
        bl      Fn_4fb4dc
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L4fb0f0:
        .word   0x008b877c
L4fb0f4:
        .word   0x008b8778
L4fb0f8:
        .word   0xe0810bf8
        .size   cecd_s_OpenAndRead_4fb094, . - cecd_s_OpenAndRead_4fb094

@ FUN_004fb0fc
        .global cecd_s_OpenAndWrite_4fb0fc
        .type   cecd_s_OpenAndWrite_4fb0fc, %function
cecd_s_OpenAndWrite_4fb0fc:
        push    {r3, r4, r5, lr}
        ldr     r4, L4fb13c
        ldr     ip, [sp, #0x10]
        ldr     r4, [r4]
        cmp     r4, #0
        beq     L4fb120
        str     ip, [sp]
        bl      Fn_4fc0a4
        pop     {r3, r4, r5, pc}
L4fb120:
        ldr     r4, L4fb140
        ldr     r4, [r4]
        cmp     r4, #0
        ldreq   r0, L4fb144
        strne   ip, [sp]
        blne    Fn_4fb5d0
        pop     {r3, r4, r5, pc}
L4fb13c:
        .word   0x008b877c
L4fb140:
        .word   0x008b8778
L4fb144:
        .word   0xe0810bf8
        .size   cecd_s_OpenAndWrite_4fb0fc, . - cecd_s_OpenAndWrite_4fb0fc

@ FUN_004fb258
        .global cecd_s_WriteMessageWithHMAC_4fb258
        .type   cecd_s_WriteMessageWithHMAC_4fb258, %function
cecd_s_WriteMessageWithHMAC_4fb258:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x10
        ldr     r6, L4fb2b4
        ldr     ip, [sp, #0x20]
        ldrd    r4, r5, [sp, #0x24]
        ldr     r6, [r6]
        cmp     r6, #0
        beq     L4fb28c
        str     ip, [sp]
        strd    r4, r5, [sp, #4]
        bl      Fn_4fc2b4
L4fb284:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fb28c:
        ldr     r6, L4fb2b8
        ldr     r6, [r6]
        cmp     r6, #0
        ldreq   r0, L4fb2bc
        beq     L4fb284
        str     ip, [sp]
        strd    r4, r5, [sp, #4]
        bl      Fn_4fb73c
        add     sp, sp, #0x10
        pop     {r4, r5, r6, pc}
L4fb2b4:
        .word   0x008b877c
L4fb2b8:
        .word   0x008b8778
L4fb2bc:
        .word   0xe0810bf8
        .size   cecd_s_WriteMessageWithHMAC_4fb258, . - cecd_s_WriteMessageWithHMAC_4fb258

@ FUN_004fbb40
        .global cecd_s_Write_WriteRawFile_4fbb40
        .type   cecd_s_Write_WriteRawFile_4fbb40, %function
cecd_s_Write_WriteRawFile_4fbb40:
        ldr     r1, L4fbb70
        ldr     r1, [r1]
        cmp     r1, #0
        beq     L4fbb54
        b       Fn_4fc584
L4fbb54:
        ldr     r1, L4fbb74
        ldr     r1, [r1]
        cmp     r1, #0
        ldreq   r0, L4fbb78
        beq     L4fbb6c
        b       Fn_4fb90c
L4fbb6c:
        bx      lr
L4fbb70:
        .word   0x008b877c
L4fbb74:
        .word   0x008b8778
L4fbb78:
        .word   0xe0810bf8
        ldr     r2, L4fbbac
        ldr     r2, [r2]
        cmp     r2, #0
        beq     L4fbb90
        b       Fn_4fc5bc
L4fbb90:
        ldr     r2, L4fbbb0
        ldr     r2, [r2]
        cmp     r2, #0
        ldreq   r0, L4fbbb4
        beq     L4fbba8
        b       Fn_4fb944
L4fbba8:
        bx      lr
L4fbbac:
        .word   0x008b877c
L4fbbb0:
        .word   0x008b8778
L4fbbb4:
        .word   0xe0810bf8
        .size   cecd_s_Write_WriteRawFile_4fbb40, . - cecd_s_Write_WriteRawFile_4fbb40

@ FUN_004fc704
        .global cecd_s_Delete_4fc704
        .type   cecd_s_Delete_4fc704, %function
cecd_s_Delete_4fc704:
        push    {r3, r4, r5, lr}
        ldr     r4, L4fc744
        ldr     ip, [sp, #0x10]
        ldr     r4, [r4]
        cmp     r4, #0
        beq     L4fc728
        str     ip, [sp]
        bl      Fn_4fc604
        pop     {r3, r4, r5, pc}
L4fc728:
        ldr     r4, L4fc748
        ldr     r4, [r4]
        cmp     r4, #0
        ldreq   r0, L4fc74c
        strne   ip, [sp]
        blne    Fn_4fb98c
        pop     {r3, r4, r5, pc}
L4fc744:
        .word   0x008b877c
L4fc748:
        .word   0x008b8778
L4fc74c:
        .word   0xe0810bf8
        .size   cecd_s_Delete_4fc704, . - cecd_s_Delete_4fc704

@ FUN_004fc78c
        .global cecd_s_ReadData_GetSystemInfo_4fc78c
        .type   cecd_s_ReadData_GetSystemInfo_4fc78c, %function
cecd_s_ReadData_GetSystemInfo_4fc78c:
        push    {r3, r4, r5, lr}
        ldr     r4, L4fc7cc
        ldr     ip, [sp, #0x10]
        ldr     r4, [r4]
        cmp     r4, #0
        beq     L4fc7b0
        str     ip, [sp]
        bl      Fn_4fc6a8
        pop     {r3, r4, r5, pc}
L4fc7b0:
        ldr     r4, L4fc7d0
        ldr     r4, [r4]
        cmp     r4, #0
        ldreq   r0, L4fc7d4
        strne   ip, [sp]
        blne    Fn_4fba30
        pop     {r3, r4, r5, pc}
L4fc7cc:
        .word   0x008b877c
L4fc7d0:
        .word   0x008b8778
L4fc7d4:
        .word   0xe0810bf8
        .size   cecd_s_ReadData_GetSystemInfo_4fc78c, . - cecd_s_ReadData_GetSystemInfo_4fc78c

@ FUN_004fd198
        .global cfg_i_GetConfigInfoBlk2_4fd198
        .type   cfg_i_GetConfigInfoBlk2_4fd198, %function
cfg_i_GetConfigInfoBlk2_4fd198:
        push    {r4, r5, lr}
        sub     sp, sp, #0x1c
        mov     r4, r0
        mov     r2, #0xa0000
        mov     r1, #0x1c
        mov     r0, sp
        bl      Fn_024670
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldm     sp, {r0, r1, r2, r3, r5, ip}
        stm     r4, {r0, r1, r2, r3, r5, ip}
        add     sp, sp, #0x1c
        pop     {r4, r5, pc}
        .size   cfg_i_GetConfigInfoBlk2_4fd198, . - cfg_i_GetConfigInfoBlk2_4fd198

@ FUN_004fd1d0
        .global cfg_i_GetConfigInfoBlk2_4fd1d0
        .type   cfg_i_GetConfigInfoBlk2_4fd1d0, %function
cfg_i_GetConfigInfoBlk2_4fd1d0:
        ldr     r0, L4fd244
        ldrb    r0, [r0, #0x14]
        tst     r0, #1
        movne   r0, #0
        bxne    lr
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        add     r0, sp, #4
        bl      Fn_4fd8fc
        ands    r1, r0, #0x80000000
        bpl     L4fd208
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L4fd208:
        mov     r0, sp
        mov     r2, #0x130000
        mov     r1, #4
        bl      Fn_024670
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrb    r0, [sp, #4]
        nop
        bl      Fn_4fd864
        ldrb    r0, [sp, #1]
        add     sp, sp, #0xc
        ands    r0, r0, #1
        movne   r0, #1
        pop     {pc}
L4fd244:
        .word   0x1ff80000
        .size   cfg_i_GetConfigInfoBlk2_4fd1d0, . - cfg_i_GetConfigInfoBlk2_4fd1d0

@ FUN_004fd248
        .global cfg_i_GetConfigInfoBlk2_4fd248
        .type   cfg_i_GetConfigInfoBlk2_4fd248, %function
cfg_i_GetConfigInfoBlk2_4fd248:
        push    {r3, r4, r5, lr}
        mov     r2, #0xd0000
        mov     r1, #4
        mov     r0, sp
        bl      Fn_024670
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldr     r0, L4fd2bc
        bl      Fn_0244c8
        ldr     r0, L4fd2c0
        bl      Fn_4eadcc
        ands    r0, r0, #0x80000000
        bpl     L4fd290
        ldr     r0, L4fd2bc
        bl      Fn_024568
        mov     r0, #0
        pop     {r3, r4, r5, pc}
L4fd290:
        ldr     r0, L4fd2c4
        ldrb    r4, [r0, #0x2c]
        ldrb    r5, [r0, #0x2d]
        ldr     r0, L4fd2bc
        bl      Fn_024568
        ldrh    r1, [sp]
        orr     r0, r4, r5, lsl #8
        cmp     r1, r0
        movhs   r0, #1
        movlo   r0, #0
        pop     {r3, r4, r5, pc}
L4fd2bc:
        .word   0x009a0f68
L4fd2c0:
        .word   0x0088b000
L4fd2c4:
        .word   0x0088d000
        .size   cfg_i_GetConfigInfoBlk2_4fd248, . - cfg_i_GetConfigInfoBlk2_4fd248

@ FUN_004fd300
        .global cfg_i_GenHashConsoleUnique
        .type   cfg_i_GenHashConsoleUnique, %function
cfg_i_GenHashConsoleUnique:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        mov     r1, sp
        bl      Fn_4fe95c
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrd    r0, r1, [sp]
        add     sp, sp, #0xc
        pop     {pc}
        .size   cfg_i_GenHashConsoleUnique, . - cfg_i_GenHashConsoleUnique

@ FUN_004fd370
        .global cfg_i_GetConfigInfoBlk2_4fd370
        .type   cfg_i_GetConfigInfoBlk2_4fd370, %function
cfg_i_GetConfigInfoBlk2_4fd370:
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp]
        mov     r2, #0x90000
        mov     r1, #8
        mov     r0, sp
        bl      Fn_024670
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrd    r0, r1, [sp]
        add     sp, sp, #0xc
        pop     {pc}
        .size   cfg_i_GetConfigInfoBlk2_4fd370, . - cfg_i_GetConfigInfoBlk2_4fd370

@ FUN_004fd41c
        .global cfg_i_GetConfigInfoBlk2_4fd41c
        .type   cfg_i_GetConfigInfoBlk2_4fd41c, %function
cfg_i_GetConfigInfoBlk2_4fd41c:
        ldr     r0, L4fd488
        ldrb    r0, [r0, #0x14]
        tst     r0, #1
        movne   r0, #0
        bxne    lr
        str     lr, [sp, #-4]!
        sub     sp, sp, #0xc
        add     r0, sp, #4
        bl      Fn_4fd8fc
        ands    r1, r0, #0x80000000
        bpl     L4fd454
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L4fd454:
        mov     r0, sp
        mov     r2, #0x130000
        mov     r1, #4
        bl      Fn_024670
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrb    r0, [sp, #4]
        nop
        bl      Fn_4fd864
        ldrb    r0, [sp, #2]
        add     sp, sp, #0xc
        pop     {pc}
L4fd488:
        .word   0x1ff80000
        .size   cfg_i_GetConfigInfoBlk2_4fd41c, . - cfg_i_GetConfigInfoBlk2_4fd41c

@ FUN_004fd48c
        .global cfg_i_GetConfigInfoBlk2_4fd48c
        .type   cfg_i_GetConfigInfoBlk2_4fd48c, %function
cfg_i_GetConfigInfoBlk2_4fd48c:
        push    {r4, lr}
        sub     sp, sp, #0xc0
        mov     r4, r0
        mov     r2, #0xc0000
        mov     r1, #0xc0
        mov     r0, sp
        bl      Fn_024670
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        ldrsb   r0, [r4]
        ldrsb   r1, [sp, #0xc]
        cmp     r0, r1
        bne     L4fd4f8
        ldrsb   r0, [r4, #1]
        ldrsb   r1, [sp, #0xd]
        cmp     r0, r1
        bne     L4fd4f8
        ldrsb   r0, [r4, #2]
        ldrsb   r1, [sp, #0xe]
        cmp     r0, r1
        bne     L4fd4f8
        ldrsb   r0, [r4, #3]
        ldrsb   r1, [sp, #0xf]
        cmp     r0, r1
        moveq   r0, #1
        beq     L4fd4fc
L4fd4f8:
        mov     r0, #0
L4fd4fc:
        add     sp, sp, #0xc0
        pop     {r4, pc}
        .size   cfg_i_GetConfigInfoBlk2_4fd48c, . - cfg_i_GetConfigInfoBlk2_4fd48c

@ FUN_00500738
        .global dsp__DSP_GetSemaphore
        .type   dsp__DSP_GetSemaphore, %function
dsp__DSP_GetSemaphore:
        push    {r4, r5, r6, lr}
        ldr     r5, L5007f0
        ldr     r0, [r5, #8]
        cmp     r0, #0
        movne   r0, #0
        bne     L5007ec
        bl      Fn_011b7c
        lsrs    r1, r0, #0x1f
        bne     L5007ec
        ldr     r4, L5007f8
        ldr     r6, L5007f4
        mov     r0, r4
        bl      Fn_200e60
        mov     r2, r0
        mov     r3, #0
        mov     r1, r4
        mov     r0, r6
        bl      Fn_011be4
        lsrs    r1, r0, #0x1f
        bne     L5007ec
        sub     r0, r6, #4
        str     r0, [r5, #8]
        ldr     r1, [r5, #0x14]
        ldr     r3, L5007fc
        str     r1, [r0]
        mov     r0, #0
        mov     r1, #8
        mov     r4, r0
        sub     r2, r3, #0x20
        sub     ip, r3, #0x40
L5007b0:
        str     r4, [r3, r0, lsl #2]
        str     r4, [r2, r0, lsl #2]
        str     r4, [ip, r0, lsl #2]
        subs    r1, r1, #1
        add     r0, r0, #1
        bne     L5007b0
        strb    r4, [r5, #1]
        str     r4, [r5, #0x18]
        str     r4, [r5, #0x1c]
        strh    r4, [r5, #4]
        strh    r4, [r5, #6]
        ldr     r0, L500800
        strb    r4, [r5, #2]
        bl      Fn_534490
        mov     r0, r4
L5007ec:
        pop     {r4, r5, r6, pc}
L5007f0:
        .word   0x008aabb0
L5007f4:
        .word   0x008aabc4
L5007f8:
        .word   0x007e460c
L5007fc:
        .word   0x009a0fb4
L500800:
        .word   0x009a0fd4
        .size   dsp__DSP_GetSemaphore, . - dsp__DSP_GetSemaphore

@ FUN_00500888
        .global dsp__DSP_Multi3_500888
        .type   dsp__DSP_Multi3_500888, %function
dsp__DSP_Multi3_500888:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        ldr     r4, L5008fc
        mov     ip, r0
        strd    r0, r1, [r4, #0x18]
        strh    r2, [r4, #4]
        strh    r3, [r4, #6]
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L5008bc
        ldrb    r5, [r4, #1]
        cmp     r5, #0
        beq     L5008d8
L5008bc:
        ldr     r0, L500900
L5008c0:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r1, #1
        strbge  r1, [r4, #3]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L5008d8:
        ldr     r5, L500904
        stm     sp, {r3, r5}
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        bl      Fn_028ec4
        nop
        nop
        b       L5008c0
L5008fc:
        .word   0x008aabb0
L500900:
        .word   0xc8a0a7fc
L500904:
        .word   0x008aabb1
        .size   dsp__DSP_Multi3_500888, . - dsp__DSP_Multi3_500888

@ FUN_005009e4
        .global dsp__DSP_SendDataIsEmpty
        .type   dsp__DSP_SendDataIsEmpty, %function
dsp__DSP_SendDataIsEmpty:
        mov     r2, r1
        ldr     r1, L500a14
        mov     ip, r0
        ldr     r0, L500a10
        ldr     r3, [r1, #8]
        cmp     r3, #0
        beq     L500a0c
        mov     r1, ip
        mov     r0, r3
        b       Fn_50117c
L500a0c:
        bx      lr
L500a10:
        .word   0xc8a0a7f8
L500a14:
        .word   0x008aabb0
        mov     r2, r1
        ldr     r1, L500a48
        mov     ip, r0
        ldr     r0, L500a44
        ldr     r3, [r1, #8]
        cmp     r3, #0
        beq     L500a40
        mov     r1, ip
        mov     r0, r3
        b       Fn_5011c0
L500a40:
        bx      lr
L500a44:
        .word   0xc8a0a7f8
L500a48:
        .word   0x008aabb0
        .size   dsp__DSP_SendDataIsEmpty, . - dsp__DSP_SendDataIsEmpty

@ FUN_00500b90
        .global dsp__DSP_Multi2_500b90
        .type   dsp__DSP_Multi2_500b90, %function
dsp__DSP_Multi2_500b90:
        push    {r4, lr}
        mov     r4, r1
        ldr     r1, L500bec
        mov     ip, r0
        sub     sp, sp, #8
        ldr     r0, [r1, #8]
        cmp     r0, #0
        beq     L500bbc
        ldrb    r1, [r1, #1]
        cmp     r1, #0
        beq     L500bc8
L500bbc:
        add     sp, sp, #8
        ldr     r0, L500bf0
        pop     {r4, pc}
L500bc8:
        ldr     r1, L500bf4
        str     r3, [sp]
        mov     r3, r2
        str     r1, [sp, #4]
        mov     r2, r4
        mov     r1, ip
        bl      Fn_028ec4
        add     sp, sp, #8
        pop     {r4, pc}
L500bec:
        .word   0x008aabb0
L500bf0:
        .word   0xc8a0a7fc
L500bf4:
        .word   0x008aabb1
        .size   dsp__DSP_Multi2_500b90, . - dsp__DSP_Multi2_500b90

@ FUN_00500c54
        .global dsp__DSP_Multi2_500c54
        .type   dsp__DSP_Multi2_500c54, %function
dsp__DSP_Multi2_500c54:
        push    {r4, r5, lr}
        mov     r5, r1
        ldr     r1, L500ca4
        mov     r4, r0
        ldr     r0, L500ca0
        sub     sp, sp, #0xc
        ldr     ip, [r1, #8]
        cmp     ip, #0
        moveq   r1, #0
        strheq  r1, [r3]
        beq     L500c98
        strd    r2, r3, [sp]
        mov     r3, r5
        mov     r2, #0
        mov     r1, r4
        mov     r0, ip
        bl      Fn_5013e4
L500c98:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L500ca0:
        .word   0xc8a0a7f8
L500ca4:
        .word   0x008aabb0
        .size   dsp__DSP_Multi2_500c54, . - dsp__DSP_Multi2_500c54

@ FUN_00500d14
        .global dsp__DSP_Multi2_500d14
        .type   dsp__DSP_Multi2_500d14, %function
dsp__DSP_Multi2_500d14:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        ldr     r4, L500d98
        ldr     r1, L500d90
        ldr     r2, L500d94
        add     r0, r4, #0x18
        mov     r3, #0xff
        stm     r0, {r1, r2}
        mov     ip, r3
        strh    r3, [r4, #4]
        strh    r3, [r4, #6]
        ldr     r0, [r4, #8]
        cmp     r0, #0
        beq     L500d58
        ldrb    r5, [r4, #1]
        cmp     r5, #0
        beq     L500d74
L500d58:
        ldr     r0, L500d9c
L500d5c:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r1, #1
        strbge  r1, [r4, #3]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L500d74:
        ldr     r5, L500da0
        str     ip, [sp]
        str     r5, [sp, #4]
        bl      Fn_028ec4
        nop
        nop
        b       L500d5c
L500d90:
        .word   0x008aba40
L500d94:
        .word   0x0000c288
L500d98:
        .word   0x008aabb0
L500d9c:
        .word   0xc8a0a7fc
L500da0:
        .word   0x008aabb1
        .size   dsp__DSP_Multi2_500d14, . - dsp__DSP_Multi2_500d14

@ FUN_00500e28
        .global dsp__DSP_RegisterInterruptEvents
        .type   dsp__DSP_RegisterInterruptEvents, %function
dsp__DSP_RegisterInterruptEvents:
        push    {r4, r5, r6, r7, r8, lr}
        mov     ip, r0
        ldr     r4, L500ebc
        ldr     r0, L500eb8
        ldr     r6, [r4, #8]
        cmp     r6, #0
        beq     L500eb4
        add     r3, r4, #0
        add     r7, r1, r2
        mov     r5, #1
        ldr     r3, [r3, #0xc]
        lsl     r5, r5, r7
        cmp     ip, #0
        and     r3, r3, r5
        beq     L500e8c
        cmp     r3, #0
        bne     L500eb4
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        mov     r0, r6
        bl      Fn_5014f0
        ldr     r1, [r4, #0xc]
        orr     r1, r1, r5
        b       L500eb0
L500e8c:
        cmp     r3, #0
        beq     L500eb4
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        mov     r0, r6
        bl      Fn_5014f0
        ldr     r1, [r4, #0xc]
        bic     r1, r1, r5
L500eb0:
        str     r1, [r4, #0xc]
L500eb4:
        pop     {r4, r5, r6, r7, r8, pc}
L500eb8:
        .word   0xc8a0a7f8
L500ebc:
        .word   0x008aabb0
        .size   dsp__DSP_RegisterInterruptEvents, . - dsp__DSP_RegisterInterruptEvents

@ FUN_00500f68
        .global dsp__DSP_ConvertProcessAddressFromDspDram
        .type   dsp__DSP_ConvertProcessAddressFromDspDram, %function
dsp__DSP_ConvertProcessAddressFromDspDram:
        mov     r3, r0
        ldr     r0, L500fa4
        mvn     r2, #0
        push    {r4, lr}
        str     r2, [r1]
        ldr     r0, [r0, #8]
        ldr     r4, L500fa0
        cmp     r0, #0
        beq     L500f98
        mov     r2, r1
        mov     r1, r3
        bl      Fn_50152c
L500f98:
        mov     r0, r4
        pop     {r4, pc}
L500fa0:
        .word   0xc8a0a7f8
L500fa4:
        .word   0x008aabb0
        .size   dsp__DSP_ConvertProcessAddressFromDspDram, . - dsp__DSP_ConvertProcessAddressFromDspDram

@ FUN_00501638
        .global dsp__DSP_SendData
        .type   dsp__DSP_SendData, %function
dsp__DSP_SendData:
        mov     r2, r1
        ldr     r1, L501668
        mov     ip, r0
        ldr     r0, L501664
        ldr     r3, [r1, #8]
        cmp     r3, #0
        beq     L501660
        mov     r1, ip
        mov     r0, r3
        b       Fn_501568
L501660:
        bx      lr
L501664:
        .word   0xc8a0a7f8
L501668:
        .word   0x008aabb0
        .size   dsp__DSP_SendData, . - dsp__DSP_SendData

@ FUN_00501798
        .global dsp__DSP_cmd2
        .type   dsp__DSP_cmd2, %function
dsp__DSP_cmd2:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r4, #0
        mov     r6, r0
L5017a4:
        ldrb    r0, [r6, r4]
        cmp     r0, #0
        beq     L5017bc
        add     r4, r4, #1
        cmp     r4, #0x100
        blo     L5017a4
L5017bc:
        ldr     r5, L50183c
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r7, L501840
        ldr     r8, L501844
        ldr     r0, [r7]
        cmp     r0, #0
        bne     L5017f4
        ldr     r1, [r8, #8]
        add     r0, r7, #0
        bl      Fn_0101c8
        ands    r1, r0, #0x80000000
        nop
        bmi     L5017f8
L5017f4:
        mov     r0, #0
L5017f8:
        ands    r0, r0, #0x80000000
        bmi     L501830
        ldr     r0, [r7]
        mov     r2, r4
        mov     r1, r6
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_501998
        ldr     r0, [r7]
        cmp     r0, #0
        beq     L501830
        svc     #0x23
        ldr     r0, [r8, #4]
        str     r0, [r7]
L501830:
        mov     r0, r5
        bl      Fn_024568
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L50183c:
        .word   0x009a1068
L501840:
        .word   0x008aabe0
L501844:
        .word   0x007e4618
        .size   dsp__DSP_cmd2, . - dsp__DSP_cmd2

@ FUN_00503610
        .global mic_u_cmd10_503610
        .type   mic_u_cmd10_503610, %function
mic_u_cmd10_503610:
        push    {r4, r5, r6, lr}
        ldr     r5, L5036a4
        ldr     r6, L50369c
        ldr     r4, L5036a0
        ldrb    r0, [r5]
        cmp     r0, #0
        ldrne   r0, L5036a8
        bne     L503698
        bl      Fn_011b7c
        ldr     r1, L5036ac
        cmp     r1, r0, lsl #22
        lsrsne  r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, r4
        bl      Fn_200e60
        mov     r2, r0
        mov     r3, #1
        mov     r1, r4
        mov     r0, r6
        bl      Fn_011be4
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bpl     L503684
        ldr     r0, L5036b0
        cmp     r4, r0
        ldreq   r0, L5036b4
        beq     L503698
        lsrs    r0, r4, #0x1f
        blne    Fn_024730
L503684:
        ldr     r0, L5036b8
        bl      Fn_503df4
        mov     r1, #1
        mov     r0, r4
        strb    r1, [r5]
L503698:
        pop     {r4, r5, r6, pc}
L50369c:
        .word   0x008b7d48
L5036a0:
        .word   0x007e9070
L5036a4:
        .word   0x008aadc8
L5036a8:
        .word   0xd8208ff9
L5036ac:
        .word   0xfe400000
L5036b0:
        .word   0xd0401834
L5036b4:
        .word   0xc8a08ff9
L5036b8:
        .word   0x060100c8
        .size   mic_u_cmd10_503610, . - mic_u_cmd10_503610

@ FUN_00503724
        .global mic_u_Multi2_503724
        .type   mic_u_Multi2_503724, %function
mic_u_Multi2_503724:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r5, r1
        mov     r6, r2
        mov     sb, r0
        ldr     r4, L5037c8
        ldr     r8, [sp, #0x20]
        mov     r7, r3
        ldrb    r0, [r4, #1]
        cmp     r0, #0
        ldreq   r0, L5037cc
        beq     L5037c4
        orr     r0, r7, r6
        tst     r0, #1
        ldrne   r0, L5037d0
        bne     L5037c4
        ldr     r1, [r4, #4]
        add     r0, r6, r7
        cmp     r0, r1
        ldrhi   r0, L5037d4
        bhi     L5037c4
        ldrb    r0, [r4, #2]
        cmp     r0, #0
        beq     L5037a0
        ldr     r1, L5037d8
        add     r0, r5, r5, lsl #3
        add     r0, r0, r5, lsl #4
        add     r0, r1, r0, lsl #1
        mov     r1, #0x32
        bl      Fn_503d34
        ands    r1, r0, #0x80000000
        bmi     L5037c4
L5037a0:
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        mov     r0, sb
        str     r8, [sp]
        bl      Fn_503c60
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strbge  r5, [r4, #3]
L5037c4:
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L5037c8:
        .word   0x008aadc8
L5037cc:
        .word   0xd8208ff8
L5037d0:
        .word   0xe0e08ff2
L5037d4:
        .word   0xe1008ff3
L5037d8:
        .word   0x007e9076
        .size   mic_u_Multi2_503724, . - mic_u_Multi2_503724

@ FUN_005037dc
        .global mic_u_Multi2_5037dc
        .type   mic_u_Multi2_5037dc, %function
mic_u_Multi2_5037dc:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_503cb4
        ands    r1, r0, #0x80000000
        bmi     L503820
        ldr     r1, L503824
        strb    r4, [r1, #3]
        ldrb    r1, [r1, #2]
        cmp     r1, #0
        beq     L503820
        ldr     r1, L503828
        add     r0, r4, r4, lsl #3
        add     r0, r0, r4, lsl #4
        pop     {r4, lr}
        add     r0, r1, r0, lsl #1
        mov     r1, #0x32
        b       Fn_503d34
L503820:
        pop     {r4, pc}
L503824:
        .word   0x008aadc8
L503828:
        .word   0x007e9076
        .size   mic_u_Multi2_5037dc, . - mic_u_Multi2_5037dc

@ FUN_00503968
        .global mic_u_SetIirFilterMic_503968
        .type   mic_u_SetIirFilterMic_503968, %function
mic_u_SetIirFilterMic_503968:
        push    {r4, r5, r6, lr}
        movs    r4, r0
        ldr     r0, L5039b0
        ldr     r5, L5039b4
        beq     L503998
        ldrb    r1, [r5, #3]
        add     r2, r1, r1, lsl #3
        add     r1, r2, r1, lsl #4
        add     r0, r0, r1, lsl #1
        mov     r1, #0x32
        bl      Fn_503d34
        b       L5039a0
L503998:
        mov     r1, #0x32
        bl      Fn_503d34
L5039a0:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        strbge  r4, [r5, #2]
        pop     {r4, r5, r6, pc}
L5039b0:
        .word   0x007e9076
L5039b4:
        .word   0x008aadc8
        .size   mic_u_SetIirFilterMic_503968, . - mic_u_SetIirFilterMic_503968

@ FUN_00503a20
        .global mic_u_Multi3_503a20
        .type   mic_u_Multi3_503a20, %function
mic_u_Multi3_503a20:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        ldr     r4, L503a90
        ldr     r0, L503a94
        ldrb    r1, [r4]
        cmp     r1, #0
        beq     L503a8c
        bl      Fn_503c30
        ldrb    r0, [r4, #1]
        mov     r6, #0
        cmp     r0, #0
        beq     L503a7c
        mov     r0, sp
        bl      Fn_503bb0
        ands    r0, r0, #0x80000000
        bmi     L503a7c
        ldrb    r0, [sp]
        cmp     r0, #0
        bne     L503a7c
        bl      Fn_503b40
        ldr     r0, L503a98
        bl      Fn_4f5c0c
        strb    r6, [r4, #1]
L503a7c:
        strb    r6, [r4]
        ldr     r0, [r5]
        pop     {r3, r4, r5, r6, r7, lr}
        b       Fn_0313a4
L503a8c:
        pop     {r3, r4, r5, r6, r7, pc}
L503a90:
        .word   0x008aadc8
L503a94:
        .word   0xd8208ff8
L503a98:
        .word   0x009a1464
        .size   mic_u_Multi3_503a20, . - mic_u_Multi3_503a20

@ FUN_00503a9c
        .global mic_u_cmd10_503a9c
        .type   mic_u_cmd10_503a9c, %function
mic_u_cmd10_503a9c:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        ldr     r5, L503b28
        mov     r4, r1
        ldrb    r0, [r5]
        cmp     r0, #0
        ldrne   r0, L503b2c
        bne     L503b24
        bl      Fn_011b7c
        ldr     r1, L503b30
        cmp     r1, r0, lsl #22
        lsrsne  r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, r4
        bl      Fn_200e60
        mov     r2, r0
        mov     r3, #1
        mov     r1, r4
        mov     r0, r6
        bl      Fn_011be4
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bpl     L503b10
        ldr     r0, L503b34
        cmp     r4, r0
        ldreq   r0, L503b38
        beq     L503b24
        lsrs    r0, r4, #0x1f
        blne    Fn_024730
L503b10:
        ldr     r0, L503b3c
        bl      Fn_503df4
        mov     r0, #1
        strb    r0, [r5]
        mov     r0, r4
L503b24:
        pop     {r4, r5, r6, pc}
L503b28:
        .word   0x008aadc8
L503b2c:
        .word   0xd8208ff9
L503b30:
        .word   0xfe400000
L503b34:
        .word   0xd0401834
L503b38:
        .word   0xc8a08ff9
L503b3c:
        .word   0x060100c8
        .size   mic_u_cmd10_503a9c, . - mic_u_cmd10_503a9c

@ FUN_00503f20
        .global mic_u_Multi3_503f20
        .type   mic_u_Multi3_503f20, %function
mic_u_Multi3_503f20:
        push    {r3, r4, r5, lr}
        ldr     r4, L503f90
        ldr     r0, L503f94
        ldrb    r1, [r4]
        cmp     r1, #0
        beq     L503f8c
        bl      Fn_503c30
        ldrb    r0, [r4, #1]
        mov     r5, #0
        cmp     r0, #0
        beq     L503f78
        mov     r0, sp
        bl      Fn_503bb0
        ands    r0, r0, #0x80000000
        bmi     L503f78
        ldrb    r0, [sp]
        cmp     r0, #0
        bne     L503f78
        bl      Fn_503b40
        ldr     r0, L503f98
        bl      Fn_4f5c0c
        strb    r5, [r4, #1]
L503f78:
        ldr     r0, L503f9c
        strb    r5, [r4]
        ldr     r0, [r0]
        pop     {r3, r4, r5, lr}
        b       Fn_0313a4
L503f8c:
        pop     {r3, r4, r5, pc}
L503f90:
        .word   0x008aadc8
L503f94:
        .word   0xd8208ff8
L503f98:
        .word   0x009a1464
L503f9c:
        .word   0x008b7d48
        .size   mic_u_Multi3_503f20, . - mic_u_Multi3_503f20

@ FUN_00503fa0
        .global mic_u_MapSharedMem_503fa0
        .type   mic_u_MapSharedMem_503fa0, %function
mic_u_MapSharedMem_503fa0:
        push    {r3, r4, r5, lr}
        mov     r4, r1
        ldr     r5, L50401c
        ldrb    r1, [r5, #1]
        cmp     r1, #0
        ldrne   r0, L504020
        bne     L504018
        lsls    r1, r4, #0x14
        ldrne   r0, L504024
        bne     L504018
        lsls    r1, r0, #0x14
        ldrne   r0, L504028
        bne     L504018
        mov     r1, #3
        mov     r3, r1
        str     r1, [sp]
        mov     r1, r0
        ldr     r0, L50402c
        mov     r2, r4
        bl      Fn_4f5adc
        ldr     r0, L50402c
        mov     r1, r4
        ldr     r0, [r0, #0x14]
        bl      Fn_503cf0
        sub     r1, r4, #4
        and     r2, r0, #0x80000000
        cmp     r2, #0
        str     r1, [r5, #4]
        movge   r1, #1
        strbge  r1, [r5, #1]
L504018:
        pop     {r3, r4, r5, pc}
L50401c:
        .word   0x008aadc8
L504020:
        .word   0xd8208ff9
L504024:
        .word   0xe0e08ff2
L504028:
        .word   0xe0e08ff1
L50402c:
        .word   0x009a1464
        .size   mic_u_MapSharedMem_503fa0, . - mic_u_MapSharedMem_503fa0

@ FUN_00512b1c
        .global cfg_i_GetConfigInfoBlk2_512b1c
        .type   cfg_i_GetConfigInfoBlk2_512b1c, %function
cfg_i_GetConfigInfoBlk2_512b1c:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r4, r0
        ldrb    r0, [r0]
        cmp     r0, #0
        bne     L512bf0
        mov     r6, #1
        ldr     r0, L512bf4
        strb    r6, [r4]
        bl      Fn_513df0
        vldr    s0, L512bf8
        strb    r6, [r4, #2]
        vstr    s0, [r4, #4]
        vstr    s0, [r4, #8]
        vstr    s0, [r4, #0xc]
        mov     r5, #0
        vstr    s0, [r4, #0x10]
        str     r5, [r4, #0x14]
        str     r5, [r4, #0x18]
        str     r5, [r4, #0x1c]
        str     r5, [r4, #0x20]
        strb    r5, [r4, #0x24]
        strb    r5, [r4, #0x25]
        vstr    s0, [r4, #0x2c]
        ldr     r0, L512bf4
        vstr    s0, [r4, #0x28]
        bl      Fn_513e98
        bl      Fn_01b74c
        add     r2, r6, #0x70000
        mov     r1, #1
        mov     r0, sp
        bl      Fn_024670
        mov     r6, r0
        bl      Fn_0246c0
        ands    r0, r6, #0x80000000
        mov     r1, #1
        bmi     L512bc8
        ldrb    r0, [sp]
        cmp     r0, #0
        moveq   r1, #0
        cmpne   r0, #1
        beq     L512bc8
        cmp     r0, #2
        moveq   r1, #2
L512bc8:
        ldr     r0, L512bf4
        strb    r1, [r4, #3]
        bl      Fn_51418c
        str     r5, [r4, #0x30]
        str     r5, [r4, #0x34]
        str     r5, [r4, #0x38]
        str     r5, [r4, #0x3c]
        add     r0, r4, #0x44
        str     r5, [r4, #0x40]
        bl      Fn_01b624
L512bf0:
        pop     {r3, r4, r5, r6, r7, pc}
L512bf4:
        .word   0x009b9a68
L512bf8:
        .word   0x3f800000
        .size   cfg_i_GetConfigInfoBlk2_512b1c, . - cfg_i_GetConfigInfoBlk2_512b1c

@ FUN_0051782c
        .global srv_pm_cmd403
        .type   srv_pm_cmd403, %function
srv_pm_cmd403:
        push    {r4, lr}
        vldr    s0, L5178a4
        str     r1, [r0]
        vstr    s0, [r0, #0x58]
        vstr    s0, [r0, #0x48]
        vstr    s0, [r0, #0x38]
        vstr    s0, [r0, #0x5c]
        vstr    s0, [r0, #0x4c]
        vstr    s0, [r0, #0x3c]
        vstr    s0, [r0, #0x60]
        vstr    s0, [r0, #0x50]
        vstr    s0, [r0, #0x40]
        vstr    s0, [r0, #0x64]
        vstr    s0, [r0, #0x54]
        mov     r4, r0
        vstr    s0, [r0, #0x44]
        mov     r0, #0
        str     r0, [r4, #0x70]
        add     r1, r4, #0x74
        mvn     r2, #0
        stm     r1, {r0, r2}
        add     r0, r4, #0x70
        bl      Fn_01b624
        mov     r0, #1
        strh    r0, [r4, #4]
        ldrh    r0, [r4, #0x6c]
        orr     r0, r0, #0x8000
        strh    r0, [r4, #0x6c]
        mov     r0, r4
        pop     {r4, pc}
L5178a4:
        .word   0x00000000
        .size   srv_pm_cmd403, . - srv_pm_cmd403

@ FUN_005179a4
        .global srv_pm_cmd404
        .type   srv_pm_cmd404, %function
srv_pm_cmd404:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r0, #0
        str     r0, [sp]
        ldr     ip, [ip]
        mov     r0, sp
        mov     r3, #0
        cmp     ip, #0
        ldrle   r0, L5179f0
        ble     L5179d8
        cmp     r2, #8
        ldrgt   r0, L5179f4
        blle    Fn_011c54
L5179d8:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r1, [sp]
        strge   r1, [r4]
        pop     {r3, r4, r5, pc}
        .word   0x008b85e0
L5179f0:
        .word   0xd8a067f8
L5179f4:
        .word   0xd9006405
        .size   srv_pm_cmd404, . - srv_pm_cmd404

@ FUN_00517af8
        .global srv_pm_cmdb_517af8
        .type   srv_pm_cmdb_517af8, %function
srv_pm_cmdb_517af8:
        push    {r3, r4, r5, lr}
        mov     r0, sp
        bl      Fn_011cb0
        ands    r1, r0, #0x80000000
        bmi     L517bac
        ldr     r4, L517bb0
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L517bb4
        ldr     r1, [sp]
        ldr     r2, [r0]
        cmp     r2, #0
        beq     L517b68
        subs    r0, r2, #4
        beq     L517b9c
L517b34:
        ldr     ip, [r0, #0xc]
        cmp     ip, r1
        beq     L517b88
        adds    r3, r0, #0
        addne   r3, r0, #4
        cmp     r2, #0
        moveq   ip, #0
        beq     L517b60
        ldr     ip, [r2]
        cmp     ip, #0
        subne   ip, ip, #4
L517b60:
        cmp     ip, r0
        bne     L517b70
L517b68:
        mov     r0, #0
        b       L517b88
L517b70:
        ldr     r0, [r3, #4]
        cmp     r0, #0
        beq     L517b88
        subs    r0, r0, #4
        bne     L517b34
        b       L517b9c
L517b88:
        cmp     r0, #0
        beq     L517b9c
        ldr     r2, [r0]
        ldr     r2, [r2]
        blx     r2
L517b9c:
        mov     r5, #0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
L517bac:
        pop     {r3, r4, r5, pc}
L517bb0:
        .word   0x009b391c
L517bb4:
        .word   0x008b85e8
        .size   srv_pm_cmdb_517af8, . - srv_pm_cmdb_517af8

@ FUN_00518678
        .global nwm__UDS_GetChannel
        .type   nwm__UDS_GetChannel, %function
nwm__UDS_GetChannel:
        push    {r3, r4, r5, lr}
        mov     r5, r0
        ldr     r4, L5186e0
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L5186e4
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L5186e8
        beq     L5186d0
        ldr     r0, [r0, #0xc]
        mov     r1, r5
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51af78
        ldr     r1, L5186ec
        mov     r5, r0
        cmp     r0, r1
        bne     L5186d0
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L5186d0:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L5186e0:
        .word   0x009a158c
L5186e4:
        .word   0x008aae58
L5186e8:
        .word   0xe0a113f8
L5186ec:
        .word   0xc920181a
        .size   nwm__UDS_GetChannel, . - nwm__UDS_GetChannel

@ FUN_005186f0
        .global ndm_u_Multi2_5186f0
        .type   ndm_u_Multi2_5186f0, %function
ndm_u_Multi2_5186f0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r7, r1
        mov     r8, r2
        ldr     r5, L5187a4
        ldr     r4, L5187a8
        mov     sb, #0
        ldrb    r0, [r5, #1]
        cmp     r0, #0
        movne   r0, r4
        bne     L51875c
        bl      Fn_534038
        cmp     r0, #2
        cmpne   r0, #4
        ldreq   r0, L5187ac
        beq     L51875c
        bl      Fn_008964
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrlt   r0, L5187b0
        blt     L51875c
        mov     r0, #2
        bl      Fn_504350
        ands    r0, r0, #0x80000000
        bpl     L518760
        bl      Fn_504590
        mov     r0, r4
L51875c:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L518760:
        mov     r3, sb
        mov     r2, r8
        mov     r1, r7
        mov     r0, r6
        bl      Fn_51a3a8
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r1, #0
        mov     r4, r0
        strbge  r1, [r5]
        bge     L51875c
        bl      Fn_504394
        nop
        nop
        bl      Fn_504590
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5187a4:
        .word   0x008aae58
L5187a8:
        .word   0xe06113f9
L5187ac:
        .word   0xc8a113ea
L5187b0:
        .word   0xc86113f3
        .size   ndm_u_Multi2_5186f0, . - ndm_u_Multi2_5186f0

@ FUN_005187b4
        .global ndm_u_Multi2_5187b4
        .type   ndm_u_Multi2_5187b4, %function
ndm_u_Multi2_5187b4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        mov     r7, r1
        mov     r8, r2
        ldr     r5, L518868
        ldr     r4, L51886c
        mov     sb, r3
        ldrb    r0, [r5, #1]
        cmp     r0, #0
        movne   r0, r4
        bne     L518820
        bl      Fn_534038
        cmp     r0, #2
        cmpne   r0, #4
        ldreq   r0, L518870
        beq     L518820
        bl      Fn_008964
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrlt   r0, L518874
        blt     L518820
        mov     r0, #2
        bl      Fn_504350
        ands    r0, r0, #0x80000000
        bpl     L518824
        bl      Fn_504590
        mov     r0, r4
L518820:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L518824:
        mov     r3, sb
        mov     r2, r8
        mov     r1, r7
        mov     r0, r6
        bl      Fn_51a3a8
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r1, #0
        mov     r4, r0
        strbge  r1, [r5]
        bge     L518820
        bl      Fn_504394
        nop
        nop
        bl      Fn_504590
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L518868:
        .word   0x008aae58
L51886c:
        .word   0xe06113f9
L518870:
        .word   0xc8a113ea
L518874:
        .word   0xc86113f3
        .size   ndm_u_Multi2_5187b4, . - ndm_u_Multi2_5187b4

@ FUN_00518878
        .global nwm__UDS_EjectClient
        .type   nwm__UDS_EjectClient, %function
nwm__UDS_EjectClient:
        push    {r3, r4, r5, lr}
        mov     r5, r0
        ldr     r4, L5188ec
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L5188f0
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L5188f4
        beq     L5188dc
        cmp     r5, #1
        ldreq   r5, L5188f8
        beq     L5188dc
        ldr     r0, [r0, #0xc]
        mov     r1, r5
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b018
        ldr     r1, L5188fc
        mov     r5, r0
        cmp     r0, r1
        bne     L5188dc
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L5188dc:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L5188ec:
        .word   0x009a158c
L5188f0:
        .word   0x008aae58
L5188f4:
        .word   0xe0a113f8
L5188f8:
        .word   0xe10113ea
L5188fc:
        .word   0xc920181a
        .size   nwm__UDS_EjectClient, . - nwm__UDS_EjectClient

@ FUN_00518900
        .global nwm__UDS_PullPacket
        .type   nwm__UDS_PullPacket, %function
nwm__UDS_PullPacket:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x14
        mov     r6, r0
        add     r0, sp, #0x48
        mov     r7, r2
        mov     sl, r3
        ldm     r0, {r8, fp}
        ldr     r0, L518a9c
        ldrb    r0, [r0, #1]
        cmp     r0, #0
        beq     L518a90
        ldr     r0, [r6]
        ldr     sb, L518aa0
        cmp     r0, #0
        beq     L518a78
        ldr     r0, L518aa4
        bl      Fn_0244c8
        ldr     r5, L518aa8
        ldr     r1, [r6]
        mov     r4, #0
L518950:
        add     r0, r4, r4, lsl #1
        add     r0, r5, r0, lsl #2
        ldr     r2, [r0, #4]
        cmp     r2, r1
        bne     L518970
        ldrb    r2, [r0, #8]
        cmp     r2, #0
        bne     L51899c
L518970:
        ldr     r2, [r0, #0x10]
        cmp     r2, r1
        bne     L518990
        ldrb    r0, [r0, #0x14]
        cmp     r0, #0
        beq     L518990
        add     r4, r4, #1
        b       L51899c
L518990:
        add     r4, r4, #2
        cmp     r4, #0x10
        blt     L518950
L51899c:
        ldr     r0, L518aa4
        cmp     r4, #0x10
        blt     L5189b8
        bl      Fn_024568
        mov     r0, sb
L5189b0:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5189b8:
        nop
        bl      Fn_024568
        tst     r8, #3
        ldrne   r0, L518aac
        bne     L5189b0
        ldr     r0, [sp, #0x18]
        tst     r0, #3
        bne     L518a3c
        ldr     r0, [sp, #0x18]
        cmp     r0, #0
        beq     L518a3c
        add     r0, r4, r4, lsl #1
        ldr     r4, L518a9c
        lsr     r1, r8, #2
        add     r5, r5, r0, lsl #2
        str     r1, [sp, #0x10]
L5189f8:
        ldr     r0, [r4, #8]
        str     r8, [sp]
        str     r0, [sp, #0xc]
        add     r0, sp, #4
        stm     r0, {r7, sl}
        add     r0, sp, #0xc
        ldr     r2, [sp, #0x18]
        ldr     r3, [sp, #0x10]
        ldr     r1, [r6]
        bl      Fn_51afac
        ands    r1, r0, #0x80000000
        nop
        bmi     L518a84
        ldr     r1, [r7]
        cmp     r1, #0
        bne     L518a84
        b       L518a48
L518a3c:
        add     sp, sp, #0x24
        ldr     r0, L518ab0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L518a48:
        cmp     fp, #1
        beq     L518a84
        ldr     r0, [r5, #4]
        cmp     r0, #0
        ldrne   r0, [r5]
        beq     L518a78
        mvn     r2, #0
        mov     r3, r2
        svc     #0x24
        lsrs    r0, r0, #0x1f
        nop
        beq     L5189f8
L518a78:
        add     sp, sp, #0x24
        mov     r0, sb
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L518a84:
        ldr     r1, L518ab4
        cmp     r0, r1
        bne     L5189b0
L518a90:
        add     sp, sp, #0x24
        ldr     r0, L518ab8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L518a9c:
        .word   0x008aae58
L518aa0:
        .word   0xe10113ea
L518aa4:
        .word   0x009a158c
L518aa8:
        .word   0x009a1598
L518aac:
        .word   0xe10113f2
L518ab0:
        .word   0xe10113f1
L518ab4:
        .word   0xc920181a
L518ab8:
        .word   0xe0a113f8
        .size   nwm__UDS_PullPacket, . - nwm__UDS_PullPacket

@ FUN_00518b40
        .global nwm__UDS_Multi2_518b40
        .type   nwm__UDS_Multi2_518b40, %function
nwm__UDS_Multi2_518b40:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x14
        mov     r6, r1
        mov     sb, r0
        add     r0, sp, #0x50
        ldr     r4, L518c98
        ldm     r0, {r5, sl, fp}
        ldr     r8, [sp, #0x48]
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r7, L518c9c
        ldrb    r0, [r7, #1]
        cmp     r0, #0
        ldreq   r5, L518ca0
        beq     L518c84
        ldr     r0, [sp, #0x1c]
        cmp     r0, #0
        ldreq   r5, L518ca4
        beq     L518c84
        ldr     r0, L518ca8
        cmp     r6, #1
        bls     L518bc0
        cmp     r6, #0x10
        bhi     L518bc0
        cmp     sb, #0xff
        ldrne   r1, [sp, #0x20]
        cmpne   r1, #0
        beq     L518bc0
        cmp     r8, #8
        blo     L518bc0
        cmp     r8, #0xff
        bls     L518bc8
L518bc0:
        mov     r5, r0
        b       L518c84
L518bc8:
        cmp     r5, #0
        cmpne   r5, #1
        beq     L518be0
        cmp     r5, #6
        cmpne   r5, #0xb
        bne     L518bc0
L518be0:
        nop
        bl      Fn_01b74c
        nop
        nop
        bl      Fn_4fd1d0
        cmp     r0, #0
        moveq   r5, #0
        bl      Fn_0246c0
        ldrb    r0, [r7]
        mov     r3, r6
        mov     r2, sb
        cmp     r0, #0
        movne   r5, r0
        stm     sp, {r5, sl, fp}
        ldr     r0, L518cac
        ldr     r1, [sp, #0x1c]
        bl      Fn_519804
        lsrs    r1, r0, #0x1f
        nop
        bne     L518bc0
        ldr     r0, [r7, #0xc]
        ldr     r1, L518cb0
        ldr     r2, [sp, #0x4c]
        str     r0, [sp, #0xc]
        add     r0, sp, #0xc
        bl      Fn_51b4c8
        lsrs    r1, r0, #0x1f
        nop
        bne     L518bc0
        ldr     r1, L518cac
        ldr     r2, [sp, #0x20]
        mov     r3, r8
        add     r0, sp, #0xc
        bl      Fn_51b088
        ldr     r1, L518cb4
        mov     r5, r0
        cmp     r0, r1
        bne     L518c84
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L518c84:
        mov     r0, r4
        bl      Fn_024568
        add     sp, sp, #0x24
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L518c98:
        .word   0x009a158c
L518c9c:
        .word   0x008aae58
L518ca0:
        .word   0xe0a113f8
L518ca4:
        .word   0xe10113ea
L518ca8:
        .word   0xe10113fd
L518cac:
        .word   0x009a1484
L518cb0:
        .word   0x007e9224
L518cb4:
        .word   0xc920181a
        .size   nwm__UDS_Multi2_518b40, . - nwm__UDS_Multi2_518b40

@ FUN_00518d14
        .global nwm__UDS_UpdateNetworkAttribute_518d14
        .type   nwm__UDS_UpdateNetworkAttribute_518d14, %function
nwm__UDS_UpdateNetworkAttribute_518d14:
        push    {r3, r4, r5, lr}
        ldr     r4, L518d7c
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L518d80
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L518d84
        beq     L518d6c
        ldr     r0, [r0, #0xc]
        mov     r2, #0
        mov     r1, #6
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b510
        ldr     r1, L518d88
        mov     r5, r0
        cmp     r0, r1
        bne     L518d6c
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L518d6c:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L518d7c:
        .word   0x009a158c
L518d80:
        .word   0x008aae58
L518d84:
        .word   0xe0a113f8
L518d88:
        .word   0xc920181a
        .size   nwm__UDS_UpdateNetworkAttribute_518d14, . - nwm__UDS_UpdateNetworkAttribute_518d14

@ FUN_00518d8c
        .global nwm__UDS_ConnectNetwork2
        .type   nwm__UDS_ConnectNetwork2, %function
nwm__UDS_ConnectNetwork2:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        sub     sp, sp, #0xc
        mov     r7, r1
        ldr     r4, L518e68
        mov     r8, r2
        mov     r5, r3
        mov     r0, r4
        bl      Fn_0244c8
        ldr     sb, L518e6c
        ldrb    r0, [sb, #1]
        cmp     r0, #0
        ldreq   r5, L518e70
        beq     L518e54
        bl      Fn_01b74c
        bl      Fn_0246c0
        cmp     r7, #2
        bne     L518df8
        ldrb    r0, [r6, #8]
        cmp     r0, #0
        beq     L518df0
        ldrh    r0, [r6, #0x16]
        rev16   r0, r0
        tst     r0, #1
        beq     L518df8
L518df0:
        ldr     r5, L518e74
        b       L518e54
L518df8:
        cmp     r8, #0
        beq     L518e10
        cmp     r5, #8
        blo     L518e10
        cmp     r5, #0xff
        bls     L518e18
L518e10:
        ldr     r5, L518e78
        b       L518e54
L518e18:
        ldr     r0, [sb, #0xc]
        mov     r3, r8
        mov     r2, r7
        str     r0, [sp, #4]
        mov     r1, r6
        add     r0, sp, #4
        str     r5, [sp]
        bl      Fn_51b12c
        ldr     r1, L518e7c
        mov     r5, r0
        cmp     r0, r1
        bne     L518e54
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L518e54:
        mov     r0, r4
        bl      Fn_024568
        add     sp, sp, #0xc
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, pc}
L518e68:
        .word   0x009a158c
L518e6c:
        .word   0x008aae58
L518e70:
        .word   0xe0a113f8
L518e74:
        .word   0xe10113ea
L518e78:
        .word   0xe10113fd
L518e7c:
        .word   0xc920181a
        .size   nwm__UDS_ConnectNetwork2, . - nwm__UDS_ConnectNetwork2

@ FUN_00518f64
        .global nwm__UDS_DestroyNetwork
        .type   nwm__UDS_DestroyNetwork, %function
nwm__UDS_DestroyNetwork:
        push    {r3, r4, r5, lr}
        ldr     r4, L518fc4
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L518fc8
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L518fcc
        beq     L518fb4
        ldr     r0, [r0, #0xc]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b0dc
        ldr     r1, L518fd0
        mov     r5, r0
        cmp     r0, r1
        bne     L518fb4
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L518fb4:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L518fc4:
        .word   0x009a158c
L518fc8:
        .word   0x008aae58
L518fcc:
        .word   0xe0a113f8
L518fd0:
        .word   0xc920181a
        .size   nwm__UDS_DestroyNetwork, . - nwm__UDS_DestroyNetwork

@ FUN_00518fd4
        .global nwm__UDS_EjectSpectator
        .type   nwm__UDS_EjectSpectator, %function
nwm__UDS_EjectSpectator:
        push    {r3, r4, r5, lr}
        ldr     r4, L519034
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L519038
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L51903c
        beq     L519024
        ldr     r0, [r0, #0xc]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b104
        ldr     r1, L519040
        mov     r5, r0
        cmp     r0, r1
        bne     L519024
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L519024:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L519034:
        .word   0x009a158c
L519038:
        .word   0x008aae58
L51903c:
        .word   0xe0a113f8
L519040:
        .word   0xc920181a
        .size   nwm__UDS_EjectSpectator, . - nwm__UDS_EjectSpectator

@ FUN_00519044
        .global nwm__UDS_UpdateNetworkAttribute_519044
        .type   nwm__UDS_UpdateNetworkAttribute_519044, %function
nwm__UDS_UpdateNetworkAttribute_519044:
        push    {r3, r4, r5, lr}
        ldr     r4, L5190ac
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L5190b0
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L5190b4
        beq     L51909c
        ldr     r0, [r0, #0xc]
        mov     r2, #0
        mov     r1, #1
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b510
        ldr     r1, L5190b8
        mov     r5, r0
        cmp     r0, r1
        bne     L51909c
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L51909c:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L5190ac:
        .word   0x009a158c
L5190b0:
        .word   0x008aae58
L5190b4:
        .word   0xe0a113f8
L5190b8:
        .word   0xc920181a
        .size   nwm__UDS_UpdateNetworkAttribute_519044, . - nwm__UDS_UpdateNetworkAttribute_519044

@ FUN_005191a8
        .global nwm__UDS_ScanOnConnection_5191a8
        .type   nwm__UDS_ScanOnConnection_5191a8, %function
nwm__UDS_ScanOnConnection_5191a8:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x4c
        mov     r8, r3
        mov     sl, r2
        mov     fp, r0
        ldr     r4, L5192cc
        ldr     r5, [sp, #0x88]
        ldrd    r6, r7, [sp, #0x80]
        mov     r0, r4
        bl      Fn_0244c8
        ldr     sb, L5192d0
        ldrb    r0, [sb, #1]
        cmp     r0, #0
        ldreq   r5, L5192d4
        beq     L5192b8
        ldr     r0, L5192d8
        cmp     r8, #0
        beq     L5191f8
        cmp     r6, #0xd
        bls     L519200
L5191f8:
        mov     r5, r0
        b       L5192b8
L519200:
        orrs    r0, r5, r7
        moveq   r5, #0x6e
        beq     L51921c
        cmp     r5, #0
        bne     L51921c
        cmp     r7, #0
        movne   r5, #0x14
L51921c:
        ldr     r0, L5192dc
        cmp     r6, #0
        beq     L519238
        sub     r1, r6, #1
        mov     r0, #1
        lsl     r0, r0, r1
        uxth    r0, r0
L519238:
        mov     r1, #3
        eor     r2, r7, #1
        strh    r1, [sp, #0xa]
        strh    r2, [sp, #8]
        ldr     r2, L5192e0
        strh    r0, [sp, #0xc]
        add     r0, sp, #0x40
        ldm     r2, {r1, r2}
        stm     sp, {r1, r2}
        mov     r1, sp
        bl      Fn_646578
        add     r1, sp, #0x40
        add     r0, sp, #0x10
        bl      Fn_646578
        mov     r0, #0
        str     r0, [sp, #0x38]
        strh    r5, [sp, #0xe]
        ldr     r0, [sb, #0xc]
        add     r3, sp, #8
        mov     r1, fp
        str     r0, [sp, #0x3c]
        stm     sp, {r8, sl}
        ldr     r2, [sp, #0x50]
        add     r0, sp, #0x3c
        bl      Fn_51b1f0
        ldr     r1, L5192e4
        mov     r5, r0
        cmp     r0, r1
        bne     L5192b8
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L5192b8:
        mov     r0, r4
        bl      Fn_024568
        add     sp, sp, #0x5c
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5192cc:
        .word   0x009a158c
L5192d0:
        .word   0x008aae58
L5192d4:
        .word   0xe0a113f8
L5192d8:
        .word   0xe10113fd
L5192dc:
        .word   0x00000421
L5192e0:
        .word   0x007e9230
L5192e4:
        .word   0xc920181a
        .size   nwm__UDS_ScanOnConnection_5191a8, . - nwm__UDS_ScanOnConnection_5191a8

@ FUN_00519414
        .global nwm__UDS_UpdateNetworkAttribute_519414
        .type   nwm__UDS_UpdateNetworkAttribute_519414, %function
nwm__UDS_UpdateNetworkAttribute_519414:
        push    {r3, r4, r5, lr}
        mov     r5, r0
        ldr     r4, L519488
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L51948c
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L519490
        beq     L519478
        ldr     r0, [r0, #0xc]
        cmp     r5, #0
        mov     r1, #2
        str     r0, [sp]
        movne   r1, #6
        mov     r2, #1
        mov     r0, sp
        bl      Fn_51b510
        ldr     r1, L519494
        mov     r5, r0
        cmp     r0, r1
        bne     L519478
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L519478:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L519488:
        .word   0x009a158c
L51948c:
        .word   0x008aae58
L519490:
        .word   0xe0a113f8
L519494:
        .word   0xc920181a
        .size   nwm__UDS_UpdateNetworkAttribute_519414, . - nwm__UDS_UpdateNetworkAttribute_519414

@ FUN_00519498
        .global nwm__UDS_DisconnectNetwork
        .type   nwm__UDS_DisconnectNetwork, %function
nwm__UDS_DisconnectNetwork:
        push    {r3, r4, r5, lr}
        ldr     r4, L5194f8
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L5194fc
        ldrb    r1, [r0, #1]
        cmp     r1, #0
        ldreq   r5, L519500
        beq     L5194e8
        ldr     r0, [r0, #0xc]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b268
        ldr     r1, L519504
        mov     r5, r0
        cmp     r0, r1
        bne     L5194e8
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L5194e8:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, pc}
L5194f8:
        .word   0x009a158c
L5194fc:
        .word   0x008aae58
L519500:
        .word   0xe0a113f8
L519504:
        .word   0xc920181a
        .size   nwm__UDS_DisconnectNetwork, . - nwm__UDS_DisconnectNetwork

@ FUN_005195c4
        .global nwm__UDS_GetNodeInformation_5195c4
        .type   nwm__UDS_GetNodeInformation_5195c4, %function
nwm__UDS_GetNodeInformation_5195c4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        sub     sp, sp, #0x38
        mov     r5, r1
        ldr     r6, L519720
        mov     r0, r6
        bl      Fn_0244c8
        ldr     r7, L519724
        ldrb    r0, [r7, #1]
        cmp     r0, #0
        beq     L519708
        mov     r8, #0
        str     r8, [r4]
        str     r8, [r4, #4]
        str     r8, [r4, #8]
        str     r8, [r4, #0xc]
        str     r8, [r4, #0x10]
        str     r8, [r4, #0x14]
        str     r8, [r4, #0x18]
        mov     sl, r5
        str     r8, [r4, #0x1c]
        add     r5, r6, #0
        str     r8, [r4, #0x20]
        mov     sb, sp
        mov     r0, r5
        str     r8, [r4, #0x24]
        bl      Fn_0244c8
        ldr     r0, [r7, #0xc]
        mov     r2, sl
        mov     r1, sb
        str     r0, [sp, #0x28]
        add     r0, sp, #0x28
        bl      Fn_51b328
        ldr     r1, L519728
        mov     r7, r0
        cmp     r0, r1
        bne     L519664
        mov     r1, pc
        lsrs    r2, r7, #0x1f
        blne    Fn_010ccc
L519664:
        mov     r0, r5
        bl      Fn_024568
        ands    r0, r7, #0x80000000
        nop
        bmi     L5196f4
        add     sb, sp, #8
        ldm     sb, {r0, r1, r2, r3, r5, ip}
        add     sb, r4, #0xc
        stm     sb, {r0, r1, r2, r3, r5, ip}
        ldrh    r0, [sp, #0x20]
        strh    r0, [r4, #0x24]
        ldrd    r0, r1, [sp]
        ldrh    sb, [sp, #0x20]
        strd    r0, r1, [sp, #0x28]
        add     r0, sp, #0x30
        bl      Fn_4f55f8
        ldr     r5, [sp, #0x30]
        add     r1, sp, #0x28
        mov     r0, r4
        bl      Fn_021ccc
        ldrh    r0, [r4]
        eor     r0, r0, r5
        strh    r0, [r4]
        ldrh    r0, [r4, #2]
        eor     r0, r0, r5
        strh    r0, [r4, #2]
        ldrh    r0, [r4, #4]
        eor     r0, r0, r5
        strh    r0, [r4, #4]
        ldrh    r0, [r4, #6]
        eor     r0, r0, r5
        strh    r0, [r4, #6]
        uxth    r0, sb
        eor     r0, r0, r5
        strh    r0, [r4, #8]
        strh    r5, [r4, #0xa]
L5196f4:
        mov     r0, r6
        bl      Fn_024568
        add     sp, sp, #0x38
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L519708:
        ldr     r4, L51972c
        mov     r0, r6
        bl      Fn_024568
        add     sp, sp, #0x38
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L519720:
        .word   0x009a158c
L519724:
        .word   0x008aae58
L519728:
        .word   0xc920181a
L51972c:
        .word   0xe0a113f8
        .size   nwm__UDS_GetNodeInformation_5195c4, . - nwm__UDS_GetNodeInformation_5195c4

@ FUN_00519940
        .global nwm__UDS_GetConnectionStatus
        .type   nwm__UDS_GetConnectionStatus, %function
nwm__UDS_GetConnectionStatus:
        ldr     r2, L519980
        push    {r3, r4, r5, lr}
        ldr     r4, L519984
        ldrb    r3, [r2, #1]
        cmp     r3, #0
        beq     L519978
        ldr     r2, [r2, #0xc]
        mov     r1, r0
        mov     r0, sp
        str     r2, [sp]
        bl      Fn_51b3bc
        ldr     r1, L519988
        cmp     r0, r1
        bne     L51997c
L519978:
        mov     r0, r4
L51997c:
        pop     {r3, r4, r5, pc}
L519980:
        .word   0x008aae58
L519984:
        .word   0xe0a113f8
L519988:
        .word   0xc920181a
        .size   nwm__UDS_GetConnectionStatus, . - nwm__UDS_GetConnectionStatus

@ FUN_00519b80
        .global nwm__UDS_SetApplicationData
        .type   nwm__UDS_SetApplicationData, %function
nwm__UDS_SetApplicationData:
        ldr     r2, L519bd0
        push    {r3, r4, r5, lr}
        ldr     r4, L519bd4
        ldrb    r3, [r2, #1]
        cmp     r3, #0
        beq     L519bc8
        cmp     r1, #0xc8
        ldrhi   r0, L519bd8
        bhi     L519bcc
        ldr     r2, [r2, #0xc]
        str     r2, [sp]
        mov     r2, r1
        mov     r1, r0
        mov     r0, sp
        bl      Fn_51b378
        ldr     r1, L519bdc
        cmp     r0, r1
        bne     L519bcc
L519bc8:
        mov     r0, r4
L519bcc:
        pop     {r3, r4, r5, pc}
L519bd0:
        .word   0x008aae58
L519bd4:
        .word   0xe0a113f8
L519bd8:
        .word   0xe10113e9
L519bdc:
        .word   0xc920181a
        .size   nwm__UDS_SetApplicationData, . - nwm__UDS_SetApplicationData

@ FUN_00519be8
        .global nwm__UDS_GetApplicationData
        .type   nwm__UDS_GetApplicationData, %function
nwm__UDS_GetApplicationData:
        push    {r3, r4, r5, lr}
        mov     r3, r2
        ldr     r4, L519c30
        ldrb    r2, [r1, #1]
        cmp     r2, #0
        beq     L519c24
        ldr     r1, [r1, #0xc]
        mov     r2, ip
        str     r1, [sp]
        mov     r1, r0
        mov     r0, sp
        bl      Fn_51b2c8
        ldr     r1, L519c34
        cmp     r0, r1
        bne     L519c28
L519c24:
        mov     r0, r4
L519c28:
        pop     {r3, r4, r5, pc}
        .word   0x008aae58
L519c30:
        .word   0xe0a113f8
L519c34:
        .word   0xc920181a
        .size   nwm__UDS_GetApplicationData, . - nwm__UDS_GetApplicationData

@ FUN_00519d58
        .global nwm__UDS_GetNodeInformationList2
        .type   nwm__UDS_GetNodeInformationList2, %function
nwm__UDS_GetNodeInformationList2:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r1
        sub     sp, sp, #0x10
        ldr     r1, [r0]
        mov     r5, r0
        mov     r2, #0x15
        ldr     r3, [r1, #0x14]
        ldr     r1, L519eb0
        blx     r3
        cmp     r0, #0
        addsne  r7, r0, #2
        ldreq   r0, L519eb4
        mov     r4, #0
        beq     L519e34
        mov     r1, r5
        add     r0, sp, #8
        bl      Fn_63386c
        add     r8, sp, #8
        mov     r0, r5
        bl      Fn_63384c
        mov     r2, r0
        ldr     r0, L519eb8
        mov     r3, r8
        mov     r1, r7
        bl      Fn_519730
        ldr     r1, [r5]
        mov     r0, r5
        mov     r2, #0x18
        ldr     r3, [r1, #0x14]
        ldr     r1, L519eb0
        blx     r3
        cmp     r0, #0
        addsne  r1, r0, #2
        beq     L519e24
        ldr     r0, L519ebc
        mov     r2, #0xfe
        bl      Fn_202b20
        ldr     r1, [r5]
        mov     r0, r5
        mov     r2, #0x19
        ldr     r3, [r1, #0x14]
        ldr     r1, L519eb0
        blx     r3
        ldr     r3, L519ebc
        cmp     r0, #0
        addsne  r1, r0, #2
        beq     L519e3c
        mov     r2, #0xfe
        add     r0, r3, #0xfe
        bl      Fn_202b20
        b       L519e48
L519e24:
        mov     r1, #0x280
        mov     r0, r6
        bl      Fn_1fddd8
        mov     r0, #0
L519e34:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L519e3c:
        mov     r1, #0xfe
        add     r0, r3, #0xfe
        bl      Fn_01a4d4
L519e48:
        ldr     r0, L519ec0
        mov     r1, r6
        ldr     r0, [r0]
        str     r0, [sp, #4]
        ldr     r0, L519ec4
        sub     r3, r0, #0xfe
        str     r0, [sp]
        sub     r2, r3, #0x108
        add     r0, sp, #4
        bl      Fn_51b550
        ldr     r1, L519ec8
        mov     r5, r0
        cmp     r0, r1
        bne     L519e8c
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L519e8c:
        mov     r1, #8
        sub     r0, r6, #0xc
L519e94:
        subs    r1, r1, #1
        strh    r4, [r0, #0x28]
        strh    r4, [r0, #0x50]!
        bne     L519e94
        add     sp, sp, #0x10
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L519eb0:
        .word   0x007ebbb8
L519eb4:
        .word   0xe1211008
L519eb8:
        .word   0x009a18f8
L519ebc:
        .word   0x009a1a00
L519ec0:
        .word   0x008aae64
L519ec4:
        .word   0x009a1afe
L519ec8:
        .word   0xc920181a
        .size   nwm__UDS_GetNodeInformationList2, . - nwm__UDS_GetNodeInformationList2

@ FUN_0051a1dc
        .global nwm__UDS_SendTo
        .type   nwm__UDS_SendTo, %function
nwm__UDS_SendTo:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x14
        add     r4, sp, #0x28
        ldr     ip, L51a28c
        mov     r6, r3
        ldm     r4, {r3, r5}
        ldr     r4, L51a290
        ldrb    r7, [ip, #1]
        cmp     r7, #0
        beq     L51a274
        ldr     r7, L51a294
        cmp     r2, r7
        ldrhi   r0, L51a298
        bhi     L51a278
        cmp     r3, #0
        ldreq   r0, L51a29c
        beq     L51a278
        cmp     r2, #0
        moveq   r0, #0
        beq     L51a278
        tst     r1, #3
        bne     L51a280
        cmp     r1, #0
        beq     L51a280
        ldr     ip, [ip, #0xc]
        add     r7, sp, #8
        str     ip, [sp, #0x10]
        add     ip, r2, #3
        stm     r7, {r2, r5}
        lsr     ip, ip, #2
        stm     sp, {r1, ip}
        ldr     r1, [r0]
        mov     r2, r6
        add     r0, sp, #0x10
        bl      Fn_51b67c
        ldr     r1, L51a2a0
        cmp     r0, r1
        bne     L51a278
L51a274:
        mov     r0, r4
L51a278:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L51a280:
        add     sp, sp, #0x14
        ldr     r0, L51a2a4
        pop     {r4, r5, r6, r7, pc}
L51a28c:
        .word   0x008aae58
L51a290:
        .word   0xe0a113f8
L51a294:
        .word   0x000005c6
L51a298:
        .word   0xe10113e9
L51a29c:
        .word   0xe10113fd
L51a2a0:
        .word   0xc920181a
L51a2a4:
        .word   0xe10113f1
        .size   nwm__UDS_SendTo, . - nwm__UDS_SendTo

@ FUN_0051a2a8
        .global nwm__UDS_Finalize
        .type   nwm__UDS_Finalize, %function
nwm__UDS_Finalize:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        ldr     r7, L51a394
        mov     r0, r7
        bl      Fn_0244c8
        ldr     r8, L51a398
        ldrb    r0, [r8, #1]
        cmp     r0, #0
        beq     L51a388
        mov     r4, #0
        strb    r4, [r8, #1]
        mov     r6, r4
        add     sb, r7, #0xc
L51a2d8:
        add     r0, r6, r6, lsl #1
        add     r5, sb, r0, lsl #2
        ldr     r0, [r5]
        strb    r4, [r5, #8]
        str     r4, [r5, #4]
        cmp     r0, #0
        beq     L51a2fc
        svc     #0x23
        str     r4, [r5]
L51a2fc:
        add     r6, r6, #1
        cmp     r6, #0x10
        blt     L51a2d8
        str     r4, [r8, #4]
        ldr     r5, [r8, #0x10]
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L51a324
        svc     #0x23
        str     r4, [r5]
L51a324:
        ldr     r0, [r8, #0xc]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b738
        ldr     r5, L51a39c
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L51a34c
        svc     #0x23
        str     r4, [r5]
L51a34c:
        ldr     r5, L51a3a0
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L51a364
        svc     #0x23
        str     r4, [r5]
L51a364:
        ldr     r0, L51a3a4
        bl      Fn_4f5c0c
        nop
        nop
        bl      Fn_5185dc
        mov     r0, r7
        nop
        bl      Fn_024568
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L51a388:
        mov     r0, r7
        bl      Fn_024568
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L51a394:
        .word   0x009a158c
L51a398:
        .word   0x008aae58
L51a39c:
        .word   0x008aae60
L51a3a0:
        .word   0x008aae64
L51a3a4:
        .word   0x009a1658
        .size   nwm__UDS_Finalize, . - nwm__UDS_Finalize

@ FUN_0051a3a8
        .global nwm__UDS_InitializeWithVersion
        .type   nwm__UDS_InitializeWithVersion, %function
nwm__UDS_InitializeWithVersion:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x58
        mov     r8, r0
        mov     r4, r1
        ldr     r5, L51a5bc
        mov     sl, r2
        mov     sb, r3
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r7, L51a5c0
        ldrb    r0, [r7, #1]
        cmp     r0, #0
        beq     L51a3f4
        ldr     r4, L51a5c4
        mov     r0, r5
        bl      Fn_024568
        add     sp, sp, #0x58
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51a3f4:
        mov     r0, #3
        str     r0, [sp]
        ldr     r0, L51a5c8
        mov     r3, #0
        mov     r2, sl
        mov     r1, r4
        bl      Fn_4f5adc
        nop
        nop
        bl      Fn_011b7c
        ldr     r6, L51a5cc
        ands    r0, r0, #0x80000000
        bmi     L51a538
        ldr     r1, L51a5d0
        ldr     r0, L51a5d4
        bl      Fn_517930
        ands    r0, r0, #0x80000000
        nop
        bpl     L51a460
L51a440:
        ldr     r0, L51a5c8
        bl      Fn_4f5c0c
        nop
        nop
        bl      Fn_5185dc
        nop
        nop
        b       L51a538
L51a460:
        ldr     r1, L51a5d0
        ldr     r0, L51a5d8
        bl      Fn_517930
        ands    r0, r0, #0x80000000
        mov     r4, #0
        bpl     L51a48c
        ldr     r7, L51a5d4
        ldr     r0, [r7]
        cmp     r0, #0
        beq     L51a440
        b       L51a5a8
L51a48c:
        str     r4, [sp, #0xc]
        bl      Fn_01b74c
        cmp     sb, #0
        nop
        beq     L51a54c
        ldm     sb, {r0, r1, r2, r3, r6, ip}
        add     lr, sp, #0x18
        stm     lr, {r0, r1, r2, r3, r6, ip}
L51a4ac:
        nop
        bl      Fn_4fd370
        strd    r0, r1, [sp, #0x10]
        nop
        bl      Fn_0246c0
        ldr     r0, [r7, #0xc]
        ldr     r2, L51a5dc
        mov     r1, #0x400
        str     r0, [sp, #0x50]
        add     r0, sp, #0x10
        ldr     r2, [r2, #0x1e8]
        strd    r0, r1, [sp]
        mov     r3, sl
        add     r1, sp, #0xc
        add     r0, sp, #0x50
        bl      Fn_51b454
        mov     r6, r0
        ands    r0, r0, #0x80000000
        bmi     L51a580
        ldr     r0, [sp, #0xc]
        str     r0, [r8]
        mov     r0, #1
        str     r8, [r7, #0x10]
        strb    r0, [r7, #1]
        str     r4, [r7, #4]
        ldr     r0, L51a5e0
        mov     r2, #8
        sub     r1, r0, #4
        sub     r0, r0, #8
L51a520:
        strb    r4, [r1, #0xc]
        str     r4, [r0, #0xc]
        strb    r4, [r1, #0x18]!
        subs    r2, r2, #1
        str     r4, [r0, #0x18]!
        bne     L51a520
L51a538:
        mov     r0, r5
        bl      Fn_024568
        add     sp, sp, #0x58
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51a54c:
        str     r4, [sp, #0x38]
        add     r0, sp, #0x38
        str     r4, [sp, #0x3c]
        str     r4, [sp, #0x40]
        str     r4, [sp, #0x44]
        str     r4, [sp, #0x48]
        str     r4, [sp, #0x4c]
        bl      Fn_4fd198
        add     sb, sp, #0x38
        ldm     sb, {r0, r1, r2, r3, r6, ip}
        add     sb, sp, #0x18
        stm     sb, {r0, r1, r2, r3, r6, ip}
        b       L51a4ac
L51a580:
        ldr     r7, L51a5d8
        ldr     r0, [r7]
        cmp     r0, #0
        beq     L51a598
        svc     #0x23
        str     r4, [r7]
L51a598:
        ldr     r7, L51a5d4
        ldr     r0, [r7]
        cmp     r0, #0
        beq     L51a440
L51a5a8:
        nop
        svc     #0x23
        str     r4, [r7]
        nop
        b       L51a440
L51a5bc:
        .word   0x009a158c
L51a5c0:
        .word   0x008aae58
L51a5c4:
        .word   0xe06113f9
L51a5c8:
        .word   0x009a1658
L51a5cc:
        .word   0xc86113f3
L51a5d0:
        .word   0x007e9227
L51a5d4:
        .word   0x008aae64
L51a5d8:
        .word   0x008aae60
L51a5dc:
        .word   0x009a1484
L51a5e0:
        .word   0x009a1598
        .size   nwm__UDS_InitializeWithVersion, . - nwm__UDS_InitializeWithVersion

@ FUN_0051a5e4
        .global nwm__UDS_Unbind
        .type   nwm__UDS_Unbind, %function
nwm__UDS_Unbind:
        push    {r3, r4, r5, r6, r7, r8, sb, lr}
        mov     r8, r0
        ldr     r0, L51a704
        mov     sb, r1
        mov     r4, r0
        bl      Fn_0244c8
        ldr     r3, L51a708
        ldrb    r0, [r3, #1]
        cmp     r0, #0
        beq     L51a64c
        ldr     r0, [r8]
        ldr     r6, L51a70c
        cmp     r0, #0
        ldrne   r7, L51a710
        movne   r5, #0
        beq     L51a674
L51a624:
        add     r1, r5, r5, lsl #1
        add     r1, r7, r1, lsl #2
        ldr     r2, [r1, #4]
        cmp     r2, r0
        beq     L51a66c
        ldr     r1, [r1, #0x10]
        cmp     r1, r0
        bne     L51a660
        add     r5, r5, #1
        b       L51a66c
L51a64c:
        ldr     r5, L51a714
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L51a660:
        add     r5, r5, #2
        cmp     r5, #0x10
        blt     L51a624
L51a66c:
        cmp     r5, #0x10
        blt     L51a684
L51a674:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r6
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L51a684:
        ldr     r0, [r3, #0xc]
        mov     r2, sb
        str     r0, [sp]
        ldr     r1, [r8]
        mov     r0, sp
        bl      Fn_51b6f0
        mov     sb, r0
        ands    r0, r0, #0x80000000
        bmi     L51a6d8
        add     r0, r5, r5, lsl #1
        mov     r6, #0
        add     r5, r7, r0, lsl #2
        strb    r6, [r5, #8]
        str     r6, [r5, #4]
        ldr     r0, [r5]
        cmp     r0, #0
        beq     L51a6d0
        svc     #0x23
        str     r6, [r5]
L51a6d0:
        str     r6, [r8]
        b       L51a6f4
L51a6d8:
        ldr     r0, L51a718
        cmp     sb, r0
        bne     L51a6f4
        mov     r1, pc
        lsrs    r0, sb, #0x1f
        movne   r0, sb
        blne    Fn_010ccc
L51a6f4:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, sb
        pop     {r3, r4, r5, r6, r7, r8, sb, pc}
L51a704:
        .word   0x009a158c
L51a708:
        .word   0x008aae58
L51a70c:
        .word   0xe10113ea
L51a710:
        .word   0x009a1598
L51a714:
        .word   0xe0a113f8
L51a718:
        .word   0xc920181a
        .size   nwm__UDS_Unbind, . - nwm__UDS_Unbind

@ FUN_0051a71c
        .global nwm__UDS_cmd23_51a71c
        .type   nwm__UDS_cmd23_51a71c, %function
nwm__UDS_cmd23_51a71c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x5c
        mov     sb, r1
        mov     fp, r0
        ldr     r0, L51a844
        ldr     r8, [sp, #0x90]
        mov     sl, r3
        mov     r5, r0
        bl      Fn_0244c8
        ldr     r6, L51a848
        ldr     r4, L51a84c
        ldrb    r0, [r6, #1]
        cmp     r0, #0
        beq     L51a830
        ldr     r7, L51a850
        ldrb    r0, [r6, #1]
        add     r1, sp, #0x44
        cmp     r0, #0
        beq     L51a790
        ldr     r0, [r6, #0xc]
        str     r0, [sp, #4]
        add     r0, sp, #4
        bl      Fn_51b5c4
        cmp     r0, r7
        mov     r4, r0
        bne     L51a790
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
L51a790:
        ands    r0, r4, #0x80000000
        bmi     L51a830
        ldrh    r0, [sp, #0x44]
        mov     r4, #0
        ands    r0, r0, sl
        beq     L51a830
        ldr     r2, L51a854
        mov     r1, #1
        strh    r4, [sp, #0x12]
        strh    r0, [sp, #0x14]
        strh    r1, [sp, #0x10]
        ldm     r2, {r1, r2}
        add     r0, sp, #0x48
        stm     sp, {r1, r2}
        mov     r1, sp
        bl      Fn_646578
        add     r1, sp, #0x48
        add     r0, sp, #0x18
        bl      Fn_646578
        cmp     r8, #0
        moveq   r8, #0x6e
        str     r4, [sp, #0x40]
        strh    r8, [sp, #0x16]
        ldr     r0, [r6, #0xc]
        ldr     r1, [sb]
        mov     r3, #0xff
        str     r0, [sp, #0x50]
        mvn     r2, #0
        add     r0, sp, #0x10
        stm     sp, {r0, r2, r3}
        mov     r2, fp
        ldr     r3, [sp, #0x64]
        add     r0, sp, #0x50
        bl      Fn_51b760
        cmp     r0, r7
        mov     r4, r0
        bne     L51a830
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L51a830:
        mov     r0, r5
        bl      Fn_024568
        add     sp, sp, #0x6c
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L51a844:
        .word   0x009a158c
L51a848:
        .word   0x008aae58
L51a84c:
        .word   0xe0a113f8
L51a850:
        .word   0xc920181a
L51a854:
        .word   0x007e9230
        .size   nwm__UDS_cmd23_51a71c, . - nwm__UDS_cmd23_51a71c

@ FUN_0051a858
        .global nwm__UDS_cmd23_51a858
        .type   nwm__UDS_cmd23_51a858, %function
nwm__UDS_cmd23_51a858:
        push    {r4, r5, r6, r7, lr}
        mov     r5, r0
        sub     sp, sp, #0xc
        ldr     r0, L51a8d8
        mov     r6, r1
        mov     r7, #0
        mov     r1, sp
        ldrb    r2, [r0, #1]
        cmp     r2, #0
        ldreq   r0, L51a8dc
        beq     L51a8b4
        ldr     r0, [r0, #0xc]
        str     r0, [sp, #4]
        add     r0, sp, #4
        bl      Fn_51b5c4
        ldr     r1, L51a8e0
        mov     r4, r0
        cmp     r0, r1
        bne     L51a8b0
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
L51a8b0:
        mov     r0, r4
L51a8b4:
        ands    r1, r0, #0x80000000
        bmi     L51a8d0
        ldrh    r2, [sp]
        mov     r3, r7
        mov     r1, r6
        mov     r0, r5
        bl      Fn_51a98c
L51a8d0:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L51a8d8:
        .word   0x008aae58
L51a8dc:
        .word   0xe0a113f8
L51a8e0:
        .word   0xc920181a
        .size   nwm__UDS_cmd23_51a858, . - nwm__UDS_cmd23_51a858

@ FUN_0051a8e4
        .global nwm__UDS_cmd23_51a8e4
        .type   nwm__UDS_cmd23_51a8e4, %function
nwm__UDS_cmd23_51a8e4:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r5, r2
        ldr     r0, L51a980
        sub     sp, sp, #8
        mov     r7, r1
        mov     r8, r3
        ldrb    r2, [r0, #1]
        mov     r1, sp
        cmp     r2, #0
        ldreq   r4, L51a984
        beq     L51a940
        ldr     r0, [r0, #0xc]
        str     r0, [sp, #4]
        add     r0, sp, #4
        bl      Fn_51b5c4
        ldr     r1, L51a988
        mov     r4, r0
        cmp     r0, r1
        bne     L51a940
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
L51a940:
        ands    r1, r4, #0x80000000
        mov     r0, r4
        bmi     L51a978
        cmp     r5, #0
        beq     L51a964
        sub     r0, r5, #1
        mov     r1, #1
        lsl     r0, r1, r0
        strh    r0, [sp]
L51a964:
        ldrh    r2, [sp]
        mov     r3, r8
        mov     r1, r7
        mov     r0, r6
        bl      Fn_51a98c
L51a978:
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, pc}
L51a980:
        .word   0x008aae58
L51a984:
        .word   0xe0a113f8
L51a988:
        .word   0xc920181a
        .size   nwm__UDS_cmd23_51a8e4, . - nwm__UDS_cmd23_51a8e4

@ FUN_0051aa50
        .global nwm__UDS_cmd19
        .type   nwm__UDS_cmd19, %function
nwm__UDS_cmd19:
        push    {r3, r4, r5, lr}
        mov     r5, r0
        ldr     r4, L51aaa8
        ldrb    r0, [r4, #1]
        cmp     r0, #0
        ldreq   r0, L51aaac
        beq     L51aa94
        bl      Fn_01b74c
        bl      Fn_4fd1d0
        cmp     r0, #0
        beq     L51aa98
        bl      Fn_0246c0
        ldr     r0, [r4, #0xc]
        mov     r1, r5
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b190
L51aa94:
        pop     {r3, r4, r5, pc}
L51aa98:
        nop
        bl      Fn_0246c0
        mov     r0, #0
        pop     {r3, r4, r5, pc}
L51aaa8:
        .word   0x008aae58
L51aaac:
        .word   0xe0a113f8
        .size   nwm__UDS_cmd19, . - nwm__UDS_cmd19

@ FUN_0051ab18
        .global nwm__UDS_cmd18
        .type   nwm__UDS_cmd18, %function
nwm__UDS_cmd18:
        push    {r3, r4, r5, lr}
        mov     r5, r0
        ldr     r4, L51ab70
        ldrb    r0, [r4, #1]
        cmp     r0, #0
        ldreq   r0, L51ab74
        beq     L51ab5c
        bl      Fn_01b74c
        bl      Fn_4fd1d0
        cmp     r0, #0
        beq     L51ab60
        bl      Fn_0246c0
        ldr     r0, [r4, #0xc]
        mov     r1, r5
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b290
L51ab5c:
        pop     {r3, r4, r5, pc}
L51ab60:
        nop
        bl      Fn_0246c0
        mov     r0, #0
        pop     {r3, r4, r5, pc}
L51ab70:
        .word   0x008aae58
L51ab74:
        .word   0xe0a113f8
        .size   nwm__UDS_cmd18, . - nwm__UDS_cmd18

@ FUN_0051ac08
        .global nwm__UDS_GetNodeInformation_51ac08
        .type   nwm__UDS_GetNodeInformation_51ac08, %function
nwm__UDS_GetNodeInformation_51ac08:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L51ac68
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L51ac6c
        mov     r2, r6
        mov     r1, r5
        ldr     r0, [r0, #0xc]
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_51b328
        ldr     r1, L51ac70
        mov     r5, r0
        cmp     r0, r1
        bne     L51ac58
        mov     r1, pc
        lsrs    r2, r5, #0x1f
        blne    Fn_010ccc
L51ac58:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, r6, r7, pc}
L51ac68:
        .word   0x009a158c
L51ac6c:
        .word   0x008aae58
L51ac70:
        .word   0xc920181a
        .size   nwm__UDS_GetNodeInformation_51ac08, . - nwm__UDS_GetNodeInformation_51ac08

@ FUN_0051adf4
        .global nwm__UDS_ScanOnConnection_51adf4
        .type   nwm__UDS_ScanOnConnection_51adf4, %function
nwm__UDS_ScanOnConnection_51adf4:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x48
        mov     r8, r0
        mov     sb, r1
        ldr     r4, L51aef4
        ldr     r5, [sp, #0x68]
        mov     r7, r2
        mov     r6, r3
        mov     r0, r4
        bl      Fn_0244c8
        ldr     sl, L51aef8
        ldrb    r0, [sl, #1]
        cmp     r0, #0
        ldreq   r5, L51aefc
        beq     L51aee0
        bic     r0, r7, #0xfb00
        bics    r0, r0, #0xde
        moveq   r5, #0
        beq     L51aee0
        orrs    r1, r5, r6
        moveq   r5, #0x6e
        beq     L51ae5c
        cmp     r5, #0
        bne     L51ae5c
        cmp     r6, #0
        movne   r5, #0x14
L51ae5c:
        ldr     r2, L51af00
        mov     r7, #0
        eor     r1, r6, #1
        strh    r7, [sp, #0xa]
        strh    r0, [sp, #0xc]
        strh    r1, [sp, #8]
        ldm     r2, {r1, r2}
        add     r0, sp, #0x40
        stm     sp, {r1, r2}
        mov     r1, sp
        bl      Fn_646578
        add     r1, sp, #0x40
        add     r0, sp, #0x10
        bl      Fn_646578
        str     r7, [sp, #0x38]
        strh    r5, [sp, #0xe]
        ldr     r0, [sl, #0xc]
        mov     r1, #0xff
        add     r3, sp, #8
        str     r0, [sp, #0x3c]
        mvn     r0, #0
        strd    r0, r1, [sp]
        mov     r2, sb
        mov     r1, r8
        add     r0, sp, #0x3c
        bl      Fn_51b1f0
        ldr     r1, L51af04
        mov     r5, r0
        cmp     r0, r1
        bne     L51aee0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
L51aee0:
        mov     r0, r4
        bl      Fn_024568
        add     sp, sp, #0x48
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51aef4:
        .word   0x009a158c
L51aef8:
        .word   0x008aae58
L51aefc:
        .word   0xe0a113f8
L51af00:
        .word   0x007e9230
L51af04:
        .word   0xc920181a
        .size   nwm__UDS_ScanOnConnection_51adf4, . - nwm__UDS_ScanOnConnection_51adf4

@ FUN_0051af30
        .global nwm__UDS_cmd23_51af30
        .type   nwm__UDS_cmd23_51af30, %function
nwm__UDS_cmd23_51af30:
        push    {r3, r4, r5, lr}
        mov     r1, r0
        ldr     r2, [r2, #0xc]
        mov     r0, sp
        str     r2, [sp]
        bl      Fn_51b5c4
        ldr     r1, L51af74
        mov     r4, r0
        cmp     r0, r1
        bne     L51af64
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
L51af64:
        mov     r0, r4
        pop     {r3, r4, r5, pc}
        .word   0x008aae58
        .word   0xe0a113f8
L51af74:
        .word   0xc920181a
        .size   nwm__UDS_cmd23_51af30, . - nwm__UDS_cmd23_51af30

@ FUN_0051b7f8
        .global nwm__UDS_Flush
        .type   nwm__UDS_Flush, %function
nwm__UDS_Flush:
        push    {r3, r4, r5, lr}
        ldr     r4, L51b844
        ldrb    r2, [r1, #1]
        cmp     r2, #0
        beq     L51b838
        cmp     r0, #2
        ldrhs   r0, L51b848
        bhs     L51b83c
        ldr     r1, [r1, #0xc]
        str     r1, [sp]
        mov     r1, r0
        mov     r0, sp
        bl      Fn_51b644
        ldr     r1, L51b84c
        cmp     r0, r1
        bne     L51b83c
L51b838:
        mov     r0, r4
L51b83c:
        pop     {r3, r4, r5, pc}
        .word   0x008aae58
L51b844:
        .word   0xe0a113f8
L51b848:
        .word   0xe10113fd
L51b84c:
        .word   0xc920181a
        .size   nwm__UDS_Flush, . - nwm__UDS_Flush

@ FUN_0051b8f0
        .global y2r_u_cmd11
        .type   y2r_u_cmd11, %function
y2r_u_cmd11:
        push    {r3, lr}
        ldr     r0, [r0]
        str     r3, [sp]
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        bl      Fn_51bd74
        lsrs    r0, r0, #0x1f
        beq     L51b91c
        pop     {r3, lr}
        b       Fn_024730
L51b91c:
        pop     {r3, pc}
        .size   y2r_u_cmd11, . - y2r_u_cmd11

@ FUN_0051b92c
        .global y2r_u_cmd12
        .type   y2r_u_cmd12, %function
y2r_u_cmd12:
        push    {r3, lr}
        ldr     r0, [r0]
        str     r3, [sp]
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        bl      Fn_51bdd0
        lsrs    r0, r0, #0x1f
        beq     L51b958
        pop     {r3, lr}
        b       Fn_024730
L51b958:
        pop     {r3, pc}
        .size   y2r_u_cmd12, . - y2r_u_cmd12

@ FUN_0051b968
        .global y2r_u_cmd10
        .type   y2r_u_cmd10, %function
y2r_u_cmd10:
        push    {r3, lr}
        ldr     r0, [r0]
        str     r3, [sp]
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        bl      Fn_51be2c
        lsrs    r0, r0, #0x1f
        beq     L51b994
        pop     {r3, lr}
        b       Fn_024730
L51b994:
        pop     {r3, pc}
        .size   y2r_u_cmd10, . - y2r_u_cmd10

@ FUN_0051b99c
        .global y2r_u_cmd2c
        .type   y2r_u_cmd2c, %function
y2r_u_cmd2c:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L51b9d4
        ldrb    r0, [r4]
        cmp     r0, #0
        beq     L51b9d0
        bl      Fn_51bfb8
        ldr     r0, [r5]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, #0
        strb    r0, [r4]
L51b9d0:
        pop     {r4, r5, r6, pc}
L51b9d4:
        .word   0x008aaeb1
        .size   y2r_u_cmd2c, . - y2r_u_cmd2c

@ FUN_0051b9d8
        .global y2r_u_cmd18
        .type   y2r_u_cmd18, %function
y2r_u_cmd18:
        mov     ip, r0
        ldr     r0, L51ba10
        push    {r3, lr}
        ldr     r0, [r0]
        str     r3, [sp]
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        bl      Fn_51be88
        lsrs    r0, r0, #0x1f
        beq     L51ba0c
        pop     {r3, lr}
        b       Fn_024730
L51ba0c:
        pop     {r3, pc}
L51ba10:
        .word   0x007e923c
        .size   y2r_u_cmd18, . - y2r_u_cmd18

@ FUN_0051ba30
        .global y2r_u_cmd13
        .type   y2r_u_cmd13, %function
y2r_u_cmd13:
        mov     ip, r0
        ldr     r0, L51ba68
        push    {r3, lr}
        ldr     r0, [r0]
        str     r3, [sp]
        mov     r3, r2
        mov     r2, r1
        mov     r1, ip
        bl      Fn_51bf5c
        lsrs    r0, r0, #0x1f
        beq     L51ba64
        pop     {r3, lr}
        b       Fn_024730
L51ba64:
        pop     {r3, pc}
L51ba68:
        .word   0x007e923c
        .size   y2r_u_cmd13, . - y2r_u_cmd13

@ FUN_0051ba6c
        .global y2r_u_cmd2b
        .type   y2r_u_cmd2b, %function
y2r_u_cmd2b:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L51bb0c
        mov     r6, r1
        ldrb    r0, [r4]
        cmp     r0, #0
        movne   r0, #1
        bne     L51bafc
        bl      Fn_011b7c
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, r6
        bl      Fn_200e60
        mov     r2, r0
        mov     r3, #1
        mov     r1, r6
        mov     r0, r5
        bl      Fn_011be4
        ands    r1, r0, #0x80000000
        bpl     L51bad0
        ldr     r1, L51bb10
        cmp     r0, r1
        beq     L51baf8
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
L51bad0:
        nop
        bl      Fn_51c138
        ands    r0, r0, #0x80000000
        nop
        bpl     L51bb00
        ldr     r0, [r5]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
L51baf8:
        mov     r0, #0
L51bafc:
        pop     {r4, r5, r6, pc}
L51bb00:
        mov     r0, #1
        strb    r0, [r4]
        pop     {r4, r5, r6, pc}
L51bb0c:
        .word   0x008aaeb1
L51bb10:
        .word   0xd0401834
        .size   y2r_u_cmd2b, . - y2r_u_cmd2b

@ FUN_0051bc2c
        .global y2r_u_cmdf
        .type   y2r_u_cmdf, %function
y2r_u_cmdf:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_51c3cc
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L51bc60
        svc     #0x23
        str     r5, [r4]
L51bc60:
        ldr     r0, [sp]
        str     r0, [r4]
        pop     {r3, r4, r5, pc}
        .size   y2r_u_cmdf, . - y2r_u_cmdf

@ FUN_0051c858
        .global boss_CancelTaskPrivileged_51c858
        .type   boss_CancelTaskPrivileged_51c858, %function
boss_CancelTaskPrivileged_51c858:
        push    {r4, r5, r6, r7, lr}
        mov     r6, r0
        sub     sp, sp, #0x1c
        mov     r5, r1
        mov     r7, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        beq     L51c8cc
        mov     r1, #8
        mov     r0, r7
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r7
        add     r0, sp, #8
        bl      Fn_01026c
        add     r0, sp, #0x14
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51c8c4
        add     r0, sp, #8
        stm     sp, {r0, r4}
        ldr     r0, [sp, #0x14]
        mov     r2, r6
        mov     r3, r5
        bl      Fn_51faac
L51c8c4:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L51c8cc:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .size   boss_CancelTaskPrivileged_51c858, . - boss_CancelTaskPrivileged_51c858

@ FUN_0051ccbc
        .global boss_GetAppIdList_51ccbc
        .type   boss_GetAppIdList_51ccbc, %function
boss_GetAppIdList_51ccbc:
        push    {r4, lr}
        movs    r4, r0
        sub     sp, sp, #8
        beq     L51cd04
        mov     r0, sp
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51ccfc
        ldr     r0, [sp]
        bl      Fn_51f2cc
        ands    r1, r0, #0x80000000
        bmi     L51ccfc
        mov     r1, r4
        add     r0, sp, #4
        add     r0, r1, #8
        bl      Fn_5219a0
L51ccfc:
        add     sp, sp, #8
        pop     {r4, pc}
L51cd04:
        mov     r0, #4
        bl      Fn_520d3c
        add     sp, sp, #8
        pop     {r4, pc}
        .size   boss_GetAppIdList_51ccbc, . - boss_GetAppIdList_51ccbc

@ FUN_0051cd14
        .global boss_GetErrorCode
        .type   boss_GetErrorCode, %function
boss_GetErrorCode:
        cmp     r0, #0
        ldreq   r0, L51cd84
        bxeq    lr
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        mov     r4, r0
        mov     r5, r1
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51cd58
        ldr     r0, [sp]
        mov     r2, r5
        mov     r1, r4
        bl      Fn_51f2f8
L51cd50:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51cd58:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51cd50
        ldr     r0, [sp, #4]
        mov     r2, r5
        mov     r1, r4
        bl      Fn_521b1c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51cd84:
        .word   0xc960f84d
        .size   boss_GetErrorCode, . - boss_GetErrorCode

@ FUN_0051cd88
        .global boss_GetTaskQueryPrivileged_51cd88
        .type   boss_GetTaskQueryPrivileged_51cd88, %function
boss_GetTaskQueryPrivileged_51cd88:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x28
        mov     r7, r0
        mov     r5, r1
        mov     r6, r3
        mov     r8, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #0x1a
        beq     L51ce28
        cmp     r6, #0
        ldreq   r0, L51ce34
        beq     L51ce28
        mov     r1, #8
        mov     r0, r8
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r8
        add     r0, sp, #0x10
        bl      Fn_01026c
        mov     r1, r6
        add     r0, sp, #0x20
        add     r0, r1, #4
        mov     r6, r0
        add     r0, sp, #0x1c
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51ce20
        mov     r0, #0x60
        add     r1, sp, #0x10
        str     r0, [sp, #0xc]
        stm     sp, {r1, r4, r6}
        mov     r2, r7
        ldr     r0, [sp, #0x1c]
        mov     r3, r5
        bl      Fn_51fc10
L51ce20:
        add     sp, sp, #0x28
        pop     {r4, r5, r6, r7, r8, pc}
L51ce28:
        bl      Fn_520d3c
        add     sp, sp, #0x28
        pop     {r4, r5, r6, r7, r8, pc}
L51ce34:
        .word   0x000003f6
        .size   boss_GetTaskQueryPrivileged_51cd88, . - boss_GetTaskQueryPrivileged_51cd88

@ FUN_0051d08c
        .global boss_RegisterTask
        .type   boss_RegisterTask, %function
boss_RegisterTask:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x10
        cmp     r0, #0
        mov     r6, r1
        ldr     r5, [sp, #0x30]
        mov     r7, r2
        mov     r4, r3
        beq     L51d108
        cmp     r6, #0
        moveq   r0, #1
        beq     L51d118
        cmp     r7, #0
        moveq   r0, #2
        beq     L51d118
        add     r0, r0, #0xc
        mov     r8, r0
        mov     r1, r7
        add     r0, sp, #4
        add     r0, r1, #4
        mov     sb, r0
        mov     r0, r8
        bl      Fn_520030
        cmp     r0, #0
        beq     L51d0fc
        mov     r0, r8
        bl      Fn_520054
        cmp     r0, #0
        beq     L51d124
L51d0fc:
        mov     r0, #0x1a
L51d100:
        bl      Fn_520d3c
        b       L51d220
L51d108:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51d118:
        bl      Fn_520d3c
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51d124:
        cmp     r5, #0x80
        moveq   r0, #0x1b
        beq     L51d100
        mov     r0, r6
        bl      Fn_5209ec
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bmi     L51d268
        mov     r0, sb
        bl      Fn_5208d0
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bmi     L51d268
        cmp     r4, #0
        beq     L51d174
        mov     r0, r4
        bl      Fn_5209c4
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bmi     L51d268
L51d174:
        mov     r1, r6
        add     r0, sp, #4
        add     r0, r1, #4
        mov     r7, #0
        cmp     r4, #0
        mov     sl, r0
        mov     r6, r7
        beq     L51d1a8
        mov     r1, r4
        add     r0, sp, #4
        add     r0, r1, #4
        mov     r7, r0
        mov     r6, #1
L51d1a8:
        mov     r0, sl
        bl      Fn_5203d8
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bmi     L51d268
        mov     r0, sb
        bl      Fn_520194
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bmi     L51d268
        cmp     r4, #0
        beq     L51d1ec
        mov     r0, r7
        bl      Fn_520368
        mov     r2, r0
        ands    r0, r0, #0x80000000
        bmi     L51d268
L51d1ec:
        add     r0, sp, #8
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        nop
        bmi     L51d228
        mov     r0, r8
        bl      Fn_200e60
        add     r2, r0, #1
        ldr     r0, [sp, #8]
        mov     r3, r6
        mov     r1, r8
        str     r5, [sp]
        bl      Fn_51f3dc
L51d220:
        mov     r2, r0
        b       L51d268
L51d228:
        add     r0, sp, #0xc
        bl      Fn_520160
        mov     r2, r0
        ands    r0, r0, #0x80000000
        bmi     L51d268
        mov     r0, r8
        bl      Fn_200e60
        add     r2, r0, #1
        ldr     r0, [sp, #0xc]
        mov     r3, r6
        mov     r1, r8
        str     r5, [sp]
        bl      Fn_521c00
        nop
        nop
        b       L51d220
L51d268:
        add     sp, sp, #0x10
        mov     r0, r2
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   boss_RegisterTask, . - boss_RegisterTask

@ FUN_0051d320
        .global boss_GetStepIdList
        .type   boss_GetStepIdList, %function
boss_GetStepIdList:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x18
        mov     r5, r1
        mov     r6, r0
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #0x1a
        beq     L51d3a0
        cmp     r5, #0
        moveq   r0, #6
        beq     L51d3a0
        mov     r1, #8
        mov     r0, r6
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r6
        mov     r0, sp
        bl      Fn_01026c
        mov     r1, r5
        add     r0, sp, #0x14
        add     r0, r1, #4
        mov     r5, r0
        add     r0, sp, #0xc
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51d3ac
        ldr     r0, [sp, #0xc]
        mov     r2, r4
        mov     r1, sp
        bl      Fn_51f4f0
        b       L51d3d0
L51d3a0:
        bl      Fn_520d3c
L51d3a4:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, pc}
L51d3ac:
        add     r0, sp, #0x10
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51d3a4
        ldr     r0, [sp, #0x10]
        mov     r2, r4
        mov     r1, sp
        bl      Fn_521cd4
L51d3d0:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r0, r5
        blge    Fn_5204b0
        add     sp, sp, #0x18
        pop     {r4, r5, r6, pc}
        .size   boss_GetStepIdList, . - boss_GetStepIdList

@ FUN_0051d3e8
        .global boss_GetStepIdListPrivileged_51d3e8
        .type   boss_GetStepIdListPrivileged_51d3e8, %function
boss_GetStepIdListPrivileged_51d3e8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        sub     sp, sp, #0x20
        mov     r7, r1
        mov     r6, r3
        mov     r8, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #0x1a
        beq     L51d490
        cmp     r6, #0
        moveq   r0, #6
        beq     L51d490
        mov     r1, #8
        mov     r0, r8
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r8
        add     r0, sp, #8
        bl      Fn_01026c
        mov     r1, r6
        add     r0, sp, #0x18
        add     r0, r1, #4
        mov     r6, r0
        add     r0, sp, #0x14
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51d488
        add     r0, sp, #8
        stm     sp, {r0, r4}
        ldr     r0, [sp, #0x14]
        mov     r2, r5
        mov     r3, r7
        bl      Fn_51fc74
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r0, r6
        blge    Fn_52133c
L51d488:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
L51d490:
        bl      Fn_520d3c
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
        .size   boss_GetStepIdListPrivileged_51d3e8, . - boss_GetStepIdListPrivileged_51d3e8

@ FUN_0051d49c
        .global boss_GetTaskIdList
        .type   boss_GetTaskIdList, %function
boss_GetTaskIdList:
        push    {r4, lr}
        cmp     r0, #0
        sub     sp, sp, #0x10
        beq     L51d4d8
        mov     r1, r0
        add     r0, sp, #8
        add     r0, r1, #4
        mov     r4, r0
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51d4e8
        ldr     r0, [sp]
        bl      Fn_51f530
        b       L51d504
L51d4d8:
        mov     r0, #5
        bl      Fn_520d3c
L51d4e0:
        add     sp, sp, #0x10
        pop     {r4, pc}
L51d4e8:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51d4e0
        ldr     r0, [sp, #4]
        bl      Fn_521d14
L51d504:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        movge   r0, r4
        blge    Fn_5206c4
        add     sp, sp, #0x10
        pop     {r4, pc}
        .size   boss_GetTaskIdList, . - boss_GetTaskIdList

@ FUN_0051d5e0
        .global boss_GetStorageInfo
        .type   boss_GetStorageInfo, %function
boss_GetStorageInfo:
        push    {r4, lr}
        sub     sp, sp, #0x10
        mov     r4, r0
        mov     r0, #0
        str     r0, [sp]
        add     r0, sp, #4
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51d614
        ldr     r0, [sp, #4]
        mov     r1, sp
        bl      Fn_51f650
        b       L51d634
L51d614:
        add     r0, sp, #8
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51d634
        ldr     r0, [sp, #8]
        mov     r1, sp
        bl      Fn_521e34
L51d634:
        cmp     r4, #0
        ldrne   r1, [sp]
        strne   r1, [r4]
        add     sp, sp, #0x10
        pop     {r4, pc}
        .size   boss_GetStorageInfo, . - boss_GetStorageInfo

@ FUN_0051d6e4
        .global boss_UnregisterTask
        .type   boss_UnregisterTask, %function
boss_UnregisterTask:
        push    {r4, r5, lr}
        cmp     r0, #0
        sub     sp, sp, #0xc
        mov     r4, r1
        beq     L51d740
        add     r0, r0, #0xc
        mov     r5, r0
        bl      Fn_520030
        cmp     r0, #0
        beq     L51d740
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51d750
        mov     r0, r5
        bl      Fn_200e60
        add     r2, r0, #1
        ldr     r0, [sp]
        mov     r3, r4
        mov     r1, r5
        bl      Fn_51f684
L51d738:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51d740:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51d750:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51d738
        mov     r0, r5
        bl      Fn_200e60
        add     r2, r0, #1
        ldr     r0, [sp, #4]
        mov     r3, r4
        mov     r1, r5
        bl      Fn_521e68
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   boss_UnregisterTask, . - boss_UnregisterTask

@ FUN_0051d788
        .global boss_UnregisterTaskPrivileged_51d788
        .type   boss_UnregisterTaskPrivileged_51d788, %function
boss_UnregisterTaskPrivileged_51d788:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x20
        mov     r7, r0
        mov     r5, r1
        mov     r6, r3
        mov     r8, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        beq     L51d800
        mov     r1, #8
        mov     r0, r8
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r8
        add     r0, sp, #0xc
        bl      Fn_01026c
        add     r0, sp, #0x18
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51d7f8
        add     r0, sp, #0xc
        stm     sp, {r0, r4, r6}
        mov     r2, r7
        ldr     r0, [sp, #0x18]
        mov     r3, r5
        bl      Fn_51fd24
L51d7f8:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
L51d800:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
        .size   boss_UnregisterTaskPrivileged_51d788, . - boss_UnregisterTaskPrivileged_51d788

@ FUN_0051d810
        .global boss_SetStorageInfo
        .type   boss_SetStorageInfo, %function
boss_SetStorageInfo:
        push    {r4, r5, r6, r7, lr}
        cmp     r2, #0
        sub     sp, sp, #0x14
        mov     r5, r0
        mov     r7, r1
        moveq   r4, #0
        moveq   r6, #1
        movne   r4, #0x48000
        movne   r6, #0
        add     r0, sp, #8
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51d868
        and     r0, r6, #0xff
        str     r0, [sp, #4]
        ldr     r0, [sp, #8]
        mov     r2, r5
        mov     r3, r4
        str     r7, [sp]
        bl      Fn_51f728
L51d860:
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, pc}
L51d868:
        add     r0, sp, #0xc
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51d860
        and     r0, r6, #0xff
        str     r0, [sp, #4]
        ldr     r0, [sp, #0xc]
        mov     r2, r5
        mov     r3, r4
        str     r7, [sp]
        bl      Fn_521f0c
        add     sp, sp, #0x14
        pop     {r4, r5, r6, r7, pc}
        .size   boss_SetStorageInfo, . - boss_SetStorageInfo

@ FUN_0051db08
        .global boss_StartTaskImmediatePrivileged_51db08
        .type   boss_StartTaskImmediatePrivileged_51db08, %function
boss_StartTaskImmediatePrivileged_51db08:
        push    {r4, r5, r6, r7, lr}
        mov     r6, r0
        sub     sp, sp, #0x1c
        mov     r5, r1
        mov     r7, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        beq     L51db8c
        bl      Fn_4e122c
        cmp     r0, #0
        ldreq   r0, L51db9c
        beq     L51db84
        mov     r1, #8
        mov     r0, r7
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r7
        add     r0, sp, #8
        bl      Fn_01026c
        add     r0, sp, #0x14
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51db84
        add     r0, sp, #8
        stm     sp, {r0, r4}
        ldr     r0, [sp, #0x14]
        mov     r2, r6
        mov     r3, r5
        bl      Fn_51fe6c
L51db84:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L51db8c:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L51db9c:
        .word   0xc8a0f848
        .size   boss_StartTaskImmediatePrivileged_51db08, . - boss_StartTaskImmediatePrivileged_51db08

@ FUN_0051dba0
        .global boss_GetTaskFinishHandle_51dba0
        .type   boss_GetTaskFinishHandle_51dba0, %function
boss_GetTaskFinishHandle_51dba0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x34
        ldrd    r4, r5, [r0]
        mov     r0, #1
        str     r0, [sp, #0x28]
L51dbb4:
        mov     r7, #0
        add     fp, sp, #4
        mov     r6, r7
        mov     r8, r7
        str     r7, [sp, #4]
        svc     #0x28
        mov     sl, r0
        mov     sb, r1
        add     r0, sp, #0x2c
        bl      Fn_520ba4
        lsrs    r0, r0, #0x1f
        nop
        beq     L51dc04
        add     r0, sp, #0x1c
        bl      Fn_520160
        str     r0, [sp]
        lsrs    r0, r0, #0x1f
        ldrne   r0, [sp]
        beq     L51dc1c
        b       L51dc2c
L51dc04:
        ldr     r0, [sp, #0x2c]
        mov     r1, fp
        bl      Fn_51fa2c
        nop
        nop
        b       L51dc28
L51dc1c:
        ldr     r0, [sp, #0x1c]
        mov     r1, fp
        bl      Fn_522148
L51dc28:
        str     r0, [sp]
L51dc2c:
        lsrs    r0, r0, #0x1f
        beq     L51dca8
L51dc34:
        nop
        svc     #0x28
        ldr     ip, L51dd28
        subs    r0, r0, sl
        sbc     r1, r1, sb
        mov     r3, #0
        mov     sb, r3
        str     r3, [sp, #0x14]
        umull   sl, r3, r0, ip
        mov     r2, #3
        asr     sl, r1, #0x1f
        umull   fp, lr, r1, r2
        adds    r7, r7, r3
        adc     sb, sb, fp
        umull   fp, r3, r1, ip
        mla     ip, sl, ip, r3
        ldr     r3, [sp, #0x14]
        mla     r1, r1, r3, ip
        umlal   fp, r1, r2, r0
        adds    r0, fp, r7
        adc     r1, r1, sb
        subs    r4, r4, r0
        sbc     r5, r5, r1
        cmp     r8, #0
        beq     L51dce4
        mov     r0, #0
        str     r0, [sp, #0x28]
        str     r0, [sp]
        b       L51dd08
L51dca8:
        ldr     r0, [sp, #4]
        mov     r2, r4
        mov     r3, r5
        mov     r6, r0
        svc     #0x24
        lsrs    r1, r0, #0x1f
        mov     r8, r0
        blne    Fn_01b6ac
        lsl     r1, r8, #0x16
        lsr     r1, r1, #0x16
        sub     r0, r1, #0x300
        subs    r0, r0, #0xfe
        movne   r8, #1
        moveq   r8, #0
        b       L51dc34
L51dce4:
        mov     r1, #0
        mov     r0, r1
        subs    r1, r1, r4
        sbcs    r0, r0, r5
        blt     L51dd08
        ldr     r0, L51dd2c
        str     r0, [sp]
        mov     r0, #0
        str     r0, [sp, #0x28]
L51dd08:
        movs    r0, r6
        svcne   #0x23
        ldr     r0, [sp, #0x28]
        cmp     r0, #0
        bne     L51dbb4
        ldr     r0, [sp]
        add     sp, sp, #0x34
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L51dd28:
        .word   0xbad34aee
L51dd2c:
        .word   0xd840f829
        .size   boss_GetTaskFinishHandle_51dba0, . - boss_GetTaskFinishHandle_51dba0

@ FUN_0051dd6c
        .global boss_Multi2_51dd6c
        .type   boss_Multi2_51dd6c, %function
boss_Multi2_51dd6c:
        push    {r4, r5, r6, r7, lr}
        mov     r6, r0
        sub     sp, sp, #0x1c
        mov     r5, r1
        mov     r7, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        beq     L51dda0
        mov     r0, r7
        bl      Fn_520054
        cmp     r0, #0
        beq     L51ddb0
L51dda0:
        mov     r0, #0x1a
        bl      Fn_520d3c
L51dda8:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L51ddb0:
        nop
        bl      Fn_504498
        mov     r1, #8
        mov     r0, r7
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r7
        add     r0, sp, #8
        bl      Fn_01026c
        add     r0, sp, #0x14
        nop
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        nop
        bmi     L51dda8
        add     r0, sp, #8
        stm     sp, {r0, r4}
        ldr     r0, [sp, #0x14]
        mov     r2, r6
        mov     r3, r5
        bl      Fn_51ff4c
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .size   boss_Multi2_51dd6c, . - boss_Multi2_51dd6c

@ FUN_0051de10
        .global boss_GetTaskPriorityPrivileged_51de10
        .type   boss_GetTaskPriorityPrivileged_51de10, %function
boss_GetTaskPriorityPrivileged_51de10:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        sub     sp, sp, #0x20
        mov     r7, r1
        mov     r4, r3
        mov     r8, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #0x1a
        beq     L51deb8
        cmp     r4, #0
        ldreq   r0, L51dec4
        beq     L51deb8
        mov     r1, #8
        mov     r0, r8
        bl      Fn_522228
        add     r5, r0, #1
        mov     r0, #0xff
        strb    r0, [sp, #0x18]
        mov     r2, r5
        mov     r1, r8
        add     r0, sp, #0xc
        bl      Fn_01026c
        add     r0, sp, #0x1c
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        bmi     L51deb0
        add     r0, sp, #0x18
        add     r1, sp, #0xc
        str     r0, [sp, #8]
        stm     sp, {r1, r5}
        ldr     r0, [sp, #0x1c]
        mov     r2, r6
        mov     r3, r7
        bl      Fn_51ff98
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrbge  r1, [sp, #0x18]
        strbge  r1, [r4]
L51deb0:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
L51deb8:
        bl      Fn_520d3c
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
L51dec4:
        .word   0x000003f6
        .size   boss_GetTaskPriorityPrivileged_51de10, . - boss_GetTaskPriorityPrivileged_51de10

@ FUN_0051dec8
        .global boss_GetNsDataIdList2
        .type   boss_GetNsDataIdList2, %function
boss_GetNsDataIdList2:
        push    {r4, r5, r6, lr}
        movs    r5, r1
        sub     sp, sp, #0x20
        mov     r6, r0
        beq     L51defc
        add     r0, sp, #0x14
        add     r0, r1, #4
        mov     r4, r0
        ldr     r0, [r0, #0xc]
        cmp     r0, #0
        beq     L51defc
        cmp     r0, #0x1000
        bls     L51df0c
L51defc:
        mov     r0, #7
        bl      Fn_520d3c
        add     sp, sp, #0x20
        pop     {r4, r5, r6, pc}
L51df0c:
        add     r0, sp, #0x10
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        nop
        bmi     L51df58
        ldrh    r1, [r4, #2]
        ldr     r0, [r4, #4]
        add     r3, sp, #8
        str     r1, [sp, #4]
        add     r2, r4, #2
        str     r4, [sp]
        stm     r3, {r0, r2}
        mov     r1, r6
        ldrd    r2, r3, [r4, #8]
        ldr     r0, [sp, #0x10]
        bl      Fn_51fba4
        nop
        nop
        b       L51df94
L51df58:
        add     r0, sp, #0x18
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51df94
        ldr     r1, [r4, #4]
        ldrh    r0, [r4, #2]
        add     r3, sp, #4
        add     r2, r4, #2
        str     r4, [sp]
        stm     r3, {r0, r1, r2}
        mov     r1, r6
        ldrd    r2, r3, [r4, #8]
        ldr     r0, [sp, #0x18]
        bl      Fn_52217c
L51df94:
        ldr     r1, L51dfcc
        mov     r6, r0
        cmp     r0, r1
        bne     L51dfc0
        mov     r0, r5
        ldrh    r0, [r0, #4]
        sub     r0, r0, #1
        uxth    r1, r0
        mov     r0, r5
        bl      Fn_51ce48
        str     r0, [r4, #4]
L51dfc0:
        add     sp, sp, #0x20
        mov     r0, r6
        pop     {r4, r5, r6, pc}
L51dfcc:
        .word   0xd840f845
        .size   boss_GetNsDataIdList2, . - boss_GetNsDataIdList2

@ FUN_0051e250
        .global boss_GetTaskFinishHandle_51e250
        .type   boss_GetTaskFinishHandle_51e250, %function
boss_GetTaskFinishHandle_51e250:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r6, r0
        sub     sp, sp, #0x94
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        beq     L51e318
        mov     r4, #0
        add     r0, sp, #8
        bl      Fn_51cc94
        and     r0, r4, #0x80000000
        cmp     r0, #0
        mov     r7, #1
        movge   r8, #0x80
        movge   r5, #0
        blt     L51e3b0
L51e290:
        mov     r3, #0
        mov     r2, r3
        add     r1, sp, #8
        mov     r0, r6
        str     r8, [sp]
        bl      Fn_51e45c
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bmi     L51e3b0
        mov     r3, #1
        add     r2, sp, #4
        mov     r1, #0x1d
        add     r0, sp, #8
        bl      Fn_51ca04
        ldrb    r0, [sp, #4]
        cmp     r0, #6
        cmpne   r0, #7
        beq     L51e328
        cmp     r0, #5
        cmpne   r0, #0
        beq     L51e330
        mov     r4, r5
        add     r0, sp, #0x88
        str     r5, [sp]
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        nop
        bmi     L51e344
        ldr     r0, [sp, #0x88]
        mov     r1, sp
        bl      Fn_51fa2c
        nop
        nop
        b       L51e364
L51e318:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0x94
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51e328:
        mov     r4, #0
        b       L51e3b0
L51e330:
        mov     r0, #0x2a
        bl      Fn_520d3c
        mov     r4, r0
        nop
        b       L51e3b0
L51e344:
        add     r0, sp, #0x8c
        bl      Fn_520160
        mov     sb, r0
        ands    r0, r0, #0x80000000
        bmi     L51e390
        ldr     r0, [sp, #0x8c]
        mov     r1, sp
        bl      Fn_522148
L51e364:
        mov     sb, r0
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrge   r4, [sp]
        blt     L51e390
        mvn     r2, #0
        mov     r3, r2
        mov     r0, r4
        svc     #0x24
        lsrs    r1, r0, #0x1f
        blne    Fn_01b6ac
L51e390:
        cmp     r4, #0
        movne   r0, r4
        svcne   #0x23
        ands    r0, sb, #0x80000000
        mov     r4, sb
        bmi     L51e3b0
        cmp     r7, #0
        bne     L51e290
L51e3b0:
        add     r0, sp, #8
        mov     r0, r0
        add     sp, sp, #0x94
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   boss_GetTaskFinishHandle_51e250, . - boss_GetTaskFinishHandle_51e250

@ FUN_0051e3c4
        .global boss_UpdateTaskCount
        .type   boss_UpdateTaskCount, %function
boss_UpdateTaskCount:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        sub     sp, sp, #8
        mov     r5, r1
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        beq     L51e41c
        add     r0, r4, #0xc
        bl      Fn_200e60
        add     r6, r0, #1
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51e42c
        ldr     r0, [sp]
        mov     r3, r5
        mov     r2, r6
        add     r1, r4, #0xc
        bl      Fn_51f768
L51e414:
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L51e41c:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
L51e42c:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51e414
        ldr     r0, [sp, #4]
        mov     r3, r5
        mov     r2, r6
        add     r1, r4, #0xc
        bl      Fn_521f4c
        add     sp, sp, #8
        pop     {r4, r5, r6, pc}
        .size   boss_UpdateTaskCount, . - boss_UpdateTaskCount

@ FUN_0051e45c
        .global boss_GetTaskStatus
        .type   boss_GetTaskStatus, %function
boss_GetTaskStatus:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x18
        movs    r8, r1
        mov     r4, r0
        ldr     r6, [sp, #0x38]
        mov     sl, r2
        mov     r5, r3
        moveq   r0, #8
        beq     L51e4dc
        add     r0, r4, #0xc
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #0x1a
        beq     L51e4dc
        add     r0, r4, #0xc
        bl      Fn_200e60
        mov     r1, #0
        add     sb, r0, #1
        add     r0, sp, #0xc
        strb    r1, [sp, #8]
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        add     r7, sp, #8
        bmi     L51e4e8
        ldr     r0, [sp, #0xc]
        mov     r3, sl
        mov     r2, sb
        add     r1, r4, #0xc
        str     r6, [sp, #4]
        str     r7, [sp]
        bl      Fn_51f5b8
        b       L51e518
L51e4dc:
        bl      Fn_520d3c
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L51e4e8:
        add     r0, sp, #0x10
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51e538
        ldr     r0, [sp, #0x10]
        mov     r3, sl
        mov     r2, sb
        add     r1, r4, #0xc
        str     r6, [sp, #4]
        str     r7, [sp]
        bl      Fn_521d9c
L51e518:
        ands    r1, r0, #0x80000000
        bmi     L51e538
        mov     r1, r8
        mov     r0, sp
        add     r0, r1, #8
        nop
        nop
        bl      Fn_520774
L51e538:
        cmp     r5, #0
        ldrbne  r1, [sp, #8]
        strbne  r1, [r5]
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
        .size   boss_GetTaskStatus, . - boss_GetTaskStatus

@ FUN_0051e54c
        .global boss_StartTaskImmediate
        .type   boss_StartTaskImmediate, %function
boss_StartTaskImmediate:
        push    {r4, r5, lr}
        mov     r4, r0
        sub     sp, sp, #0xc
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        beq     L51e5ac
        bl      Fn_4e122c
        cmp     r0, #0
        ldreq   r0, L51e5e8
        beq     L51e5a4
        add     r0, r4, #0xc
        bl      Fn_200e60
        add     r5, r0, #1
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51e5bc
        ldr     r0, [sp]
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_51f998
L51e5a4:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e5ac:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e5bc:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51e5a4
        ldr     r0, [sp, #4]
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_5220b4
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e5e8:
        .word   0xc8a0f848
        .size   boss_StartTaskImmediate, . - boss_StartTaskImmediate

@ FUN_0051e5ec
        .global boss_StartTask
        .type   boss_StartTask, %function
boss_StartTask:
        push    {r4, r5, lr}
        mov     r4, r0
        sub     sp, sp, #0xc
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        beq     L51e63c
        add     r0, r4, #0xc
        bl      Fn_200e60
        add     r5, r0, #1
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51e64c
        ldr     r0, [sp]
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_51fff0
L51e634:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e63c:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e64c:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51e634
        ldr     r0, [sp, #4]
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_5221e8
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   boss_StartTask, . - boss_StartTask

@ FUN_0051e678
        .global boss_CancelTask
        .type   boss_CancelTask, %function
boss_CancelTask:
        push    {r4, r5, lr}
        mov     r4, r0
        sub     sp, sp, #0xc
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        beq     L51e6c8
        add     r0, r4, #0xc
        bl      Fn_200e60
        add     r5, r0, #1
        mov     r0, sp
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51e6d8
        ldr     r0, [sp]
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_51f1f8
L51e6c0:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e6c8:
        mov     r0, #0x1a
        bl      Fn_520d3c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51e6d8:
        add     r0, sp, #4
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51e6c0
        ldr     r0, [sp, #4]
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_521a48
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   boss_CancelTask, . - boss_CancelTask

@ FUN_0051e704
        .global boss_GetTaskCount
        .type   boss_GetTaskCount, %function
boss_GetTaskCount:
        push    {r4, r5, lr}
        mov     r4, r0
        sub     sp, sp, #0xc
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        mvneq   r0, #0
        beq     L51e78c
        add     r0, r4, #0xc
        bl      Fn_200e60
        add     r5, r0, #1
        mvn     r0, #0
        str     r0, [sp]
        add     r0, sp, #4
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51e760
        ldr     r0, [sp, #4]
        mov     r3, sp
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_51f33c
        b       L51e788
L51e760:
        add     r0, sp, #8
        bl      Fn_520160
        ands    r0, r0, #0x80000000
        nop
        bmi     L51e788
        ldr     r0, [sp, #8]
        mov     r3, sp
        mov     r2, r5
        add     r1, r4, #0xc
        bl      Fn_521b60
L51e788:
        ldr     r0, [sp]
L51e78c:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   boss_GetTaskCount, . - boss_GetTaskCount

@ FUN_0051e794
        .global boss_GetTaskError
        .type   boss_GetTaskError, %function
boss_GetTaskError:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        movs    r7, r1
        sub     sp, sp, #0x10
        mov     r5, r2
        mov     r6, r3
        moveq   r0, #0xd
        beq     L51e808
        add     r0, r4, #0xc
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #0x1a
        beq     L51e808
        add     r0, r4, #0xc
        bl      Fn_200e60
        mov     r1, #0
        add     r8, r0, #1
        add     r0, sp, #8
        strb    r1, [sp, #4]
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        bmi     L51e814
        ldr     r0, [sp, #8]
        add     r3, sp, #4
        mov     r2, r8
        add     r1, r4, #0xc
        str     r6, [sp]
        bl      Fn_51f388
        b       L51e840
L51e808:
        bl      Fn_520d3c
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
L51e814:
        add     r0, sp, #0xc
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51e860
        ldr     r0, [sp, #0xc]
        add     r3, sp, #4
        mov     r2, r8
        add     r1, r4, #0xc
        str     r6, [sp]
        bl      Fn_521bac
L51e840:
        ands    r1, r0, #0x80000000
        bmi     L51e860
        mov     r1, r7
        mov     r0, sp
        add     r0, r1, #4
        nop
        nop
        bl      Fn_520454
L51e860:
        cmp     r5, #0
        ldrbne  r1, [sp, #4]
        strbne  r1, [r5]
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, pc}
        .size   boss_GetTaskError, . - boss_GetTaskError

@ FUN_0051e874
        .global boss_GetTaskResult
        .type   boss_GetTaskResult, %function
boss_GetTaskResult:
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        sub     sp, sp, #0x24
        mov     r5, r1
        mov     r6, r2
        add     r0, r0, #0xc
        bl      Fn_520030
        cmp     r0, #0
        moveq   r0, #3
        beq     L51e934
        add     r0, r4, #0xc
        bl      Fn_200e60
        mov     r1, r0
        mov     r0, #0
        mov     r2, #2
        str     r0, [sp, #8]
        strb    r0, [sp, #0xc]
        add     sb, r1, #1
        add     r0, sp, #0x18
        strb    r2, [sp, #0x10]
        bl      Fn_520ba4
        ands    r0, r0, #0x80000000
        add     r7, sp, #0xc
        add     r8, sp, #8
        bmi     L51e8f8
        str     r7, [sp, #4]
        ldr     r0, [sp, #0x18]
        add     r3, sp, #0x10
        mov     r2, sb
        add     r1, r4, #0xc
        str     r8, [sp]
        bl      Fn_51f558
        b       L51e928
L51e8f8:
        add     r0, sp, #0x1c
        bl      Fn_520160
        ands    r0, r0, #0x80000000
        nop
        bmi     L51e930
        ldr     r0, [sp, #0x1c]
        add     r3, sp, #0x10
        mov     r2, sb
        add     r1, r4, #0xc
        str     r7, [sp, #4]
        str     r8, [sp]
        bl      Fn_521d3c
L51e928:
        ands    r0, r0, #0x80000000
        bpl     L51e93c
L51e930:
        mov     r0, #2
L51e934:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51e93c:
        cmp     r5, #0
        ldrne   r0, [sp, #8]
        strne   r0, [r5]
        cmp     r6, #0
        ldrbne  r0, [sp, #0xc]
        strbne  r0, [r6]
        ldrb    r0, [sp, #0x10]
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   boss_GetTaskResult, . - boss_GetTaskResult

@ FUN_0051e9bc
        .global boss_Multi2_51e9bc
        .type   boss_Multi2_51e9bc, %function
boss_Multi2_51e9bc:
        push    {r4, r5, lr}
        movs    r5, r1
        sub     sp, sp, #0xc
        mov     r4, r0
        beq     L51ea0c
        add     r0, sp, #8
        bl      Fn_520ba4
        ldrb    r1, [r4, #8]
        mov     r2, r0
        cmp     r1, #0
        beq     L51ea1c
        ands    r1, r2, #0x80000000
        bmi     L51ea04
        ldr     r0, [r4, #0xc]
        stm     sp, {r0, r5}
        ldrd    r2, r3, [r4, #0x18]
        ldr     r0, [sp, #8]
        bl      Fn_51fdb0
L51ea04:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51ea0c:
        mov     r0, #0x10
        bl      Fn_520d3c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51ea1c:
        ands    r0, r2, #0x80000000
        bmi     L51ea3c
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp, #8]
        mov     r2, r5
        bl      Fn_51f7a8
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51ea3c:
        mov     r0, sp
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51ea04
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp]
        mov     r2, r5
        bl      Fn_521f8c
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   boss_Multi2_51e9bc, . - boss_Multi2_51e9bc

@ FUN_0051ea68
        .global boss_Multi2_51ea68
        .type   boss_Multi2_51ea68, %function
boss_Multi2_51ea68:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        mov     r4, r0
        mov     r5, r1
        add     r0, sp, #8
        bl      Fn_520ba4
        ldrb    r1, [r4, #8]
        mov     r2, r0
        cmp     r1, #0
        beq     L51eab4
        ands    r1, r2, #0x80000000
        bmi     L51eaac
        ldr     r0, [r4, #0xc]
        stm     sp, {r0, r5}
        ldrd    r2, r3, [r4, #0x18]
        ldr     r0, [sp, #8]
        bl      Fn_51fdf4
L51eaac:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51eab4:
        ands    r0, r2, #0x80000000
        bmi     L51ead4
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp, #8]
        mov     r2, r5
        bl      Fn_51f824
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L51ead4:
        mov     r0, sp
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51eaac
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp]
        mov     r2, r5
        bl      Fn_521fc8
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
        .size   boss_Multi2_51ea68, . - boss_Multi2_51ea68

@ FUN_0051eb00
        .global boss_Multi2_51eb00
        .type   boss_Multi2_51eb00, %function
boss_Multi2_51eb00:
        push    {r4, lr}
        sub     sp, sp, #8
        mov     r4, r0
        add     r0, sp, #4
        bl      Fn_520ba4
        ldrb    r1, [r4, #8]
        mov     r2, r0
        cmp     r1, #0
        beq     L51eb48
        ands    r1, r2, #0x80000000
        bmi     L51eb40
        ldr     r0, [r4, #0xc]
        str     r0, [sp]
        ldrd    r2, r3, [r4, #0x18]
        ldr     r0, [sp, #4]
        bl      Fn_51fb6c
L51eb40:
        add     sp, sp, #8
        pop     {r4, pc}
L51eb48:
        ands    r0, r2, #0x80000000
        bmi     L51eb64
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp, #4]
        bl      Fn_51f29c
        add     sp, sp, #8
        pop     {r4, pc}
L51eb64:
        mov     r0, sp
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51eb40
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp]
        bl      Fn_521aec
        add     sp, sp, #8
        pop     {r4, pc}
        .size   boss_Multi2_51eb00, . - boss_Multi2_51eb00

@ FUN_0051eb8c
        .global boss_Multi4_51eb8c
        .type   boss_Multi4_51eb8c, %function
boss_Multi4_51eb8c:
        cmp     r1, #0
        cmpne   r2, #0
        moveq   r0, #0
        bxeq    lr
        push    {r4, r5, r6, r7, r8, sb, lr}
        mov     r4, r0
        sub     sp, sp, #0x2c
        mov     r6, r1
        ldr     r0, [r0, #0x10]
        mov     r5, r2
        cmp     r0, #0
        bne     L51ec84
        adds    r8, r4, #0x10
        mov     sb, #3
        mov     r7, #4
        beq     L51ec08
        add     r0, sp, #0x10
        bl      Fn_520ba4
        ldrb    r1, [r4, #8]
        cmp     r1, #0
        beq     L51ec1c
        ands    r1, r0, #0x80000000
        bmi     L51ec74
        ldr     r0, [r4, #0xc]
        str     r7, [sp, #0xc]
        str     r8, [sp, #8]
        stm     sp, {r0, sb}
        ldrd    r2, r3, [r4, #0x18]
        ldr     r0, [sp, #0x10]
        bl      Fn_51feb8
        b       L51ec74
L51ec08:
        mov     r0, #0xe
        bl      Fn_520d3c
        nop
        nop
        b       L51ec74
L51ec1c:
        ands    r0, r0, #0x80000000
        bmi     L51ec48
        str     r7, [sp]
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp, #0x10]
        mov     r3, r8
        mov     r2, sb
        bl      Fn_51f9d8
        nop
        nop
        b       L51ec74
L51ec48:
        add     r0, sp, #0xc
        bl      Fn_520160
        ands    r1, r0, #0x80000000
        nop
        bmi     L51ec74
        str     r7, [sp]
        ldr     r1, [r4, #0xc]
        ldr     r0, [sp, #0xc]
        mov     r3, r8
        mov     r2, sb
        bl      Fn_5220f4
L51ec74:
        and     r0, r0, #0x80000000
        cmp     r0, #0
        mvnlt   r0, #0
        blt     L51ed4c
L51ec84:
        add     r1, r4, #0x20
        ldr     r0, [r4, #0x10]
        ldm     r1, {r1, r2}
        adds    r7, r1, r5
        adc     r2, r2, #0
        subs    r3, r0, r7
        asr     ip, r0, #0x1f
        sbcs    r2, ip, r2
        subslt  r5, r0, r1
        mov     r7, #0
        add     r0, sp, #0x20
        str     r7, [sp, #0x24]
        bl      Fn_520ba4
        ldrb    r1, [r4, #8]
        add     r8, sp, #0x24
        and     r0, r0, #0x80000000
        cmp     r1, #0
        beq     L51ed54
        cmp     r0, #0
        str     r7, [sp, #4]
        blt     L51edf4
        add     r1, sp, #0x18
        add     r0, sp, #4
        str     r5, [sp, #0x14]
        str     r6, [sp, #0x10]
        stm     r1, {r0, r8}
        ldrd    r0, r1, [r4, #0x20]
        strd    r0, r1, [sp, #8]
        ldr     r0, [r4, #0xc]
        str     r0, [sp]
        ldrd    r2, r3, [r4, #0x18]
        ldr     r0, [sp, #0x20]
        bl      Fn_51faf8
        ands    r0, r0, #0x80000000
        nop
        bmi     L51ee24
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        ldreq   r0, [sp, #0x24]
        streq   r0, [r4, #0x14]
        ldr     r1, [sp, #0x24]
        cmp     r0, r1
        bne     L51ede8
        ldr     r0, [sp, #4]
        ldr     r3, [r4, #0x20]
        ldr     r2, [r4, #0x24]
        adds    r3, r3, r0
        str     r3, [r4, #0x20]!
        adc     r1, r2, #0
        str     r1, [r4, #4]
L51ed4c:
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51ed54:
        cmp     r0, #0
        add     sb, sp, #0x14
        str     r7, [sp, #0x14]
        blt     L51ed90
        add     r0, sp, #4
        str     r6, [sp]
        str     r8, [sp, #0xc]
        stm     r0, {r5, sb}
        ldr     r1, [r4, #0xc]
        ldrd    r2, r3, [r4, #0x20]
        ldr     r0, [sp, #0x20]
        bl      Fn_51f238
        nop
        nop
        b       L51edc4
L51ed90:
        add     r0, sp, #0x10
        bl      Fn_520160
        ands    r0, r0, #0x80000000
        nop
        bmi     L51edf4
        add     r0, sp, #4
        str     r6, [sp]
        str     r8, [sp, #0xc]
        stm     r0, {r5, sb}
        ldr     r1, [r4, #0xc]
        ldrd    r2, r3, [r4, #0x20]
        ldr     r0, [sp, #0x10]
        bl      Fn_521a88
L51edc4:
        ands    r0, r0, #0x80000000
        bmi     L51ee24
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        ldreq   r0, [sp, #0x24]
        streq   r0, [r4, #0x14]
        ldr     r1, [sp, #0x24]
        cmp     r0, r1
        beq     L51ee00
L51ede8:
        add     sp, sp, #0x2c
        mvn     r0, #3
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51edf4:
        add     sp, sp, #0x2c
        mvn     r0, #2
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51ee00:
        ldr     r0, [sp, #0x14]
        ldr     r3, [r4, #0x20]
        ldr     r2, [r4, #0x24]
        adds    r3, r3, r0
        str     r3, [r4, #0x20]!
        adc     r1, r2, #0
        str     r1, [r4, #4]
        add     sp, sp, #0x2c
        pop     {r4, r5, r6, r7, r8, sb, pc}
L51ee24:
        add     sp, sp, #0x2c
        mvn     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   boss_Multi4_51eb8c, . - boss_Multi4_51eb8c

@ FUN_0051ef04
        .global boss_cmd1
        .type   boss_cmd1, %function
boss_cmd1:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldrb    r0, [r0, #6]
        cmp     r0, #0
        beq     L51ef24
        mov     r0, #0x2e
        bl      Fn_520d3c
        pop     {r4, r5, r6, pc}
L51ef24:
        nop
        bl      Fn_011b7c
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
        ldr     r1, L51efa0
        add     r0, r4, #0x10
        bl      Fn_517930
        mov     r5, r0
        ands    r0, r0, #0x80000000
        bmi     L51ef98
        ldr     r0, [r4, #0x10]
        str     r0, [r4, #0x1c]
        add     r0, r4, #0x1c
        bl      Fn_5219e0
        mov     r6, r0
        and     r0, r0, #0x80000000
        cmp     r0, #0
        movge   r0, #1
        strbge  r0, [r4, #6]
        bge     L51ef98
        ldr     r0, [r4, #0x10]!
        cmp     r0, #0
        beq     L51ef90
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L51ef90:
        mov     r0, r6
        pop     {r4, r5, r6, pc}
L51ef98:
        mov     r0, r5
        pop     {r4, r5, r6, pc}
L51efa0:
        .word   0x007ed41e
        .size   boss_cmd1, . - boss_cmd1

@ FUN_00520bd8
        .global boss_SendPropertyHandle
        .type   boss_SendPropertyHandle, %function
boss_SendPropertyHandle:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        ldr     r0, L520c7c
        mov     r5, r1
        ldrb    r1, [r0, #5]
        cmp     r1, #0
        addne   r6, r0, #0x18
        moveq   r6, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r0, r0, #0x80000000
        bmi     L520c20
        mov     r2, r5
        mov     r1, r4
        mov     r0, r6
        bl      Fn_51f914
        b       L520c5c
L520c20:
        ldr     r0, L520c7c
        ldrb    r1, [r0, #4]
        cmp     r1, #0
        addne   r6, r0, #0x14
        moveq   r6, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r1, r0, #0x80000000
        nop
        bmi     L520c5c
        mov     r2, r5
        mov     r1, r4
        mov     r0, r6
        bl      Fn_522070
L520c5c:
        ands    r1, r0, #0x80000000
        bpl     L520c78
        ldr     r1, L520c80
        ldr     r2, [r1]
        and     r2, r2, #0x80000000
        cmp     r2, #0
        strge   r0, [r1]
L520c78:
        pop     {r4, r5, r6, pc}
L520c7c:
        .word   0x009b9920
L520c80:
        .word   0x008ab9e8
        .size   boss_SendPropertyHandle, . - boss_SendPropertyHandle

@ FUN_00520c84
        .global boss_SendProperty_520c84
        .type   boss_SendProperty_520c84, %function
boss_SendProperty_520c84:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        mov     r5, r1
        ldr     r0, L520d34
        mov     r6, r2
        ldrb    r1, [r0, #5]
        cmp     r1, #0
        addne   r7, r0, #0x18
        moveq   r7, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r0, r0, #0x80000000
        bmi     L520cd4
        mov     r3, r6
        mov     r2, r5
        mov     r1, r4
        mov     r0, r7
        bl      Fn_51f430
        b       L520d14
L520cd4:
        ldr     r0, L520d34
        ldrb    r1, [r0, #4]
        cmp     r1, #0
        addne   r7, r0, #0x14
        moveq   r7, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r1, r0, #0x80000000
        nop
        bmi     L520d14
        mov     r3, r6
        mov     r2, r5
        mov     r1, r4
        mov     r0, r7
        bl      Fn_521c54
L520d14:
        ands    r1, r0, #0x80000000
        bpl     L520d30
        ldr     r1, L520d38
        ldr     r2, [r1]
        and     r2, r2, #0x80000000
        cmp     r2, #0
        strge   r0, [r1]
L520d30:
        pop     {r4, r5, r6, r7, r8, pc}
L520d34:
        .word   0x009b9920
L520d38:
        .word   0x008ab9e8
        .size   boss_SendProperty_520c84, . - boss_SendProperty_520c84

@ FUN_00521750
        .global boss_ReceiveProperty_521750
        .type   boss_ReceiveProperty_521750, %function
boss_ReceiveProperty_521750:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r0, L521848
        sub     sp, sp, #8
        mov     r4, r2
        ldrb    r1, [r0, #5]
        cmp     r1, #0
        addne   r8, r0, #0x18
        moveq   r8, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r0, r0, #0x80000000
        add     r5, sp, #4
        bmi     L5217c0
        mov     r3, r4
        mov     r2, r7
        mov     r1, r6
        mov     r0, r8
        str     r5, [sp]
        bl      Fn_51f6d0
        ands    r1, r0, #0x80000000
        bmi     L521824
        ldr     r1, [sp, #4]
        cmp     r1, r4
        beq     L521824
        b       L52181c
L5217c0:
        ldr     r0, L521848
        ldrb    r1, [r0, #4]
        cmp     r1, #0
        addne   r8, r0, #0x14
        moveq   r8, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r1, r0, #0x80000000
        nop
        bmi     L521824
        mov     r3, r4
        mov     r2, r7
        mov     r1, r6
        mov     r0, r8
        str     r5, [sp]
        bl      Fn_521eb4
        ands    r1, r0, #0x80000000
        nop
        bmi     L521824
        ldr     r1, [sp, #4]
        cmp     r1, r4
        beq     L521824
L52181c:
        mov     r0, #0x2c
        bl      Fn_520d3c
L521824:
        ands    r1, r0, #0x80000000
        bpl     L521840
        ldr     r1, L52184c
        ldr     r2, [r1]
        and     r2, r2, #0x80000000
        cmp     r2, #0
        strge   r0, [r1]
L521840:
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, pc}
L521848:
        .word   0x009b9920
L52184c:
        .word   0x008ab9e8
        .size   boss_ReceiveProperty_521750, . - boss_ReceiveProperty_521750

@ FUN_00521890
        .global boss_SendProperty_521890
        .type   boss_SendProperty_521890, %function
boss_SendProperty_521890:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r0, L5218fc
        mov     r7, r2
        ldrb    r1, [r0, #5]
        cmp     r1, #0
        addne   r4, r0, #0x18
        moveq   r4, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r1, r0, #0x80000000
        bmi     L5218dc
        mov     r3, r7
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_51f430
L5218dc:
        ands    r1, r0, #0x80000000
        bpl     L5218f8
        ldr     r1, L521900
        ldr     r2, [r1]
        and     r2, r2, #0x80000000
        cmp     r2, #0
        strge   r0, [r1]
L5218f8:
        pop     {r4, r5, r6, r7, r8, pc}
L5218fc:
        .word   0x009b9920
L521900:
        .word   0x008ab9e8
        .size   boss_SendProperty_521890, . - boss_SendProperty_521890

@ FUN_00521904
        .global boss_ReceiveProperty_521904
        .type   boss_ReceiveProperty_521904, %function
boss_ReceiveProperty_521904:
        push    {r4, r5, r6, r7, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r0, L521998
        sub     sp, sp, #0xc
        mov     r4, r2
        ldrb    r1, [r0, #5]
        cmp     r1, #0
        addne   r5, r0, #0x18
        moveq   r5, #0
        moveq   r0, #0x2b
        movne   r0, #0
        bleq    Fn_520d3c
        ands    r1, r0, #0x80000000
        bmi     L521974
        add     r0, sp, #4
        str     r0, [sp]
        mov     r3, r4
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        bl      Fn_51f6d0
        ands    r1, r0, #0x80000000
        bmi     L521974
        ldr     r1, [sp, #4]
        cmp     r1, r4
        movne   r0, #0x2c
        blne    Fn_520d3c
L521974:
        ands    r1, r0, #0x80000000
        bpl     L521990
        ldr     r1, L52199c
        ldr     r2, [r1]
        and     r2, r2, #0x80000000
        cmp     r2, #0
        strge   r0, [r1]
L521990:
        add     sp, sp, #0xc
        pop     {r4, r5, r6, r7, pc}
L521998:
        .word   0x009b9920
L52199c:
        .word   0x008ab9e8
        .size   boss_ReceiveProperty_521904, . - boss_ReceiveProperty_521904

@ FUN_00522278
        .global boss_StartTaskPrivileged_522278
        .type   boss_StartTaskPrivileged_522278, %function
boss_StartTaskPrivileged_522278:
        push    {r4, r5, r6, r7, lr}
        mov     r6, r0
        sub     sp, sp, #0x1c
        mov     r5, r1
        mov     r7, r2
        mov     r0, r2
        bl      Fn_520030
        cmp     r0, #0
        beq     L5222ac
        mov     r0, r7
        bl      Fn_520054
        cmp     r0, #0
        beq     L5222bc
L5222ac:
        mov     r0, #0x1a
        bl      Fn_520d3c
L5222b4:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
L5222bc:
        mov     r1, #8
        mov     r0, r7
        bl      Fn_522228
        add     r4, r0, #1
        mov     r2, r4
        mov     r1, r7
        add     r0, sp, #8
        bl      Fn_01026c
        add     r0, sp, #0x14
        nop
        bl      Fn_520ba4
        ands    r1, r0, #0x80000000
        nop
        bmi     L5222b4
        add     r0, sp, #8
        stm     sp, {r0, r4}
        ldr     r0, [sp, #0x14]
        mov     r2, r6
        mov     r3, r5
        bl      Fn_51fa60
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, pc}
        .size   boss_StartTaskPrivileged_522278, . - boss_StartTaskPrivileged_522278

@ FUN_005335b8
        .global cmdb_5335b8
        .type   cmdb_5335b8, %function
cmdb_5335b8:
        push    {r4, r5, r6, lr}
        ldr     r4, L53363c
        ldrb    r0, [r4]
        cmp     r0, #0
        beq     L5335dc
        add     r0, r4, #0x14
        pop     {r4, r5, r6, lr}
        mov     r1, #1
        b       Fn_5338e0
L5335dc:
        ldr     r0, L533640
        bl      Fn_0244c8
        ldr     r0, [r4, #4]
        mov     r5, r0
        bl      Fn_200e60
        mov     r2, r0
        ldr     r0, L533644
        mov     r3, #0
        mov     r1, r5
        bl      Fn_011be4
        ldr     r0, [r4, #0x10]
        mov     r1, #1
        str     r0, [r4, #0x14]
        ldr     r0, L533648
        bl      Fn_5338e0
        ldr     r0, [r4, #0x10]
        nop
        svc     #0x23
        ldr     r0, L53364c
        ldr     r0, [r0, #4]
        str     r0, [r4, #0x14]
        pop     {r4, r5, r6, lr}
        ldr     r0, L533640
        b       Fn_024568
L53363c:
        .word   0x008b7cd0
L533640:
        .word   0x009ae9e0
L533644:
        .word   0x008b7ce0
L533648:
        .word   0x008b7ce4
L53364c:
        .word   0x007eb68c
        .size   cmdb_5335b8, . - cmdb_5335b8

@ FUN_00533678
        .global cmdb_533678
        .type   cmdb_533678, %function
cmdb_533678:
        mov     r0, r0
        ldr     r0, L53369c
        ldrb    r0, [r0]
        cmp     r0, #0
        beq     L533698
        ldr     r0, L5336a0
        mov     r1, #0
        b       Fn_5338e0
L533698:
        bx      lr
L53369c:
        .word   0x008b7cd0
L5336a0:
        .word   0x008b7ce4
        .size   cmdb_533678, . - cmdb_533678

@ FUN_00533700
        .global cmd15_533700
        .type   cmd15_533700, %function
cmd15_533700:
        push    {r4, r5, r6, lr}
        bl      Fn_0252f4
        cmp     r0, #0
        ldreq   r0, L53375c
        beq     L533758
        ldr     r0, L533760
        ldr     r4, [r0]
        bl      Fn_02962c
        mov     r1, r4
        bl      Fn_5338a8
        mov     r5, r0
        lsrs    r0, r0, #0x1f
        bne     L533754
        bl      Fn_0258dc
        cmp     r0, #0
        beq     L533754
        mov     r4, #0
        bl      Fn_02961c
        mov     r1, r4
        add     r0, r0, #0x30
        bl      Fn_025744
L533754:
        mov     r0, r5
L533758:
        pop     {r4, r5, r6, pc}
L53375c:
        .word   0x00202bf8
L533760:
        .word   0x007eb698
        .size   cmd15_533700, . - cmd15_533700

@ FUN_005337fc
        .global cmd18_5337fc
        .type   cmd18_5337fc, %function
cmd18_5337fc:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_02962c
        mov     r1, r4
        bl      Fn_533954
        ldr     r1, [r4, #8]
        mvn     r0, #0
        tst     r1, #0x70
        streq   r0, [r4, #8]
        beq     L533838
        tst     r1, #0x20
        ldreq   r2, [r4]
        and     r1, r1, #7
        streq   r2, [r4, #4]
        str     r1, [r4, #8]
L533838:
        ldr     r1, [r4, #0x18]
        ldr     r2, [r4]
        and     r1, r1, #7
        cmp     r2, #0
        str     r1, [r4, #0x18]
        streq   r0, [r4, #8]
        ldr     r1, [r4, #4]
        cmp     r1, #0
        streq   r0, [r4, #8]
        ldr     r1, [r4, #0x10]
        cmp     r1, #0
        streq   r0, [r4, #0x18]
        str     r1, [r4, #0x14]
        pop     {r4, pc}
        .size   cmd18_5337fc, . - cmd18_5337fc

@ FUN_0053459c
        .global APT_U_Multi2_53459c
        .type   APT_U_Multi2_53459c, %function
APT_U_Multi2_53459c:
        push    {r4, r5, r6, lr}
        sub     sp, sp, #0x18
        add     r0, pc, #0xb0
        bl      Fn_008b0c
        mov     r2, #0xf
        mov     r1, #6
        mov     r0, #0
        bl      Fn_006604
        mvn     r4, #0
        bl      Fn_01d3e0
        add     r0, sp, #0x10
        str     r0, [sp]
        add     r3, sp, #0xc
        add     r2, sp, #8
        add     r1, sp, #4
        mov     r0, r4
        bl      Fn_537144
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        ldrb    r0, [sp, #4]
        cmp     r0, #0
        moveq   r6, #1
        movne   r6, #0
        bl      Fn_008c48
        ldr     r5, L534664
        cmp     r0, #0
        mov     r4, #0
        strbne  r4, [r5, #2]
        bne     L53463c
        bl      Fn_025914
        bl      Fn_01d3e0
        bl      Fn_01d180
        bl      Fn_538068
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        strb    r4, [r5, #2]
        bl      Fn_01d534
L53463c:
        nop
        bl      Fn_5349a4
        nop
        nop
        bl      Fn_517d1c
        add     sp, sp, #0x18
        mov     r0, r6
        pop     {r4, r5, r6, pc}
        .word   0x3a767273
        .word   0x00000000
L534664:
        .word   0x008aab48
        .size   APT_U_Multi2_53459c, . - APT_U_Multi2_53459c

@ FUN_005349cc
        .global APT_U_GetAppletInfo_5349cc
        .type   APT_U_GetAppletInfo_5349cc, %function
APT_U_GetAppletInfo_5349cc:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x24
        mov     r4, r1
        mov     sb, r0
        add     r0, sp, #0x40
        mov     r5, r2
        ldm     r0, {r7, r8}
        mov     r6, r3
        bl      Fn_01d3e0
        add     r2, sp, #0x1c
        add     r1, sp, #0x18
        stm     sp, {r1, r2}
        add     r3, sp, #0x14
        add     r2, sp, #0x10
        add     r1, sp, #8
        mov     r0, sb
        bl      Fn_536dd8
        mov     sb, r0
        bl      Fn_01d534
        and     r0, sb, #0x80000000
        cmp     r0, #0
        movlt   r0, #0
        blt     L534a68
        cmp     r4, #0
        ldrdne  r0, r1, [sp, #8]
        strdne  r0, r1, [r4]
        cmp     r5, #0
        ldrbne  r0, [sp, #0x10]
        strbne  r0, [r5]
        cmp     r6, #0
        ldrbne  r0, [sp, #0x14]
        strbne  r0, [r6]
        cmp     r7, #0
        ldrbne  r0, [sp, #0x18]
        strbne  r0, [r7]
        cmp     r8, #0
        ldrne   r0, [sp, #0x1c]
        strne   r0, [r8]
        mov     r0, #1
L534a68:
        add     sp, sp, #0x24
        pop     {r4, r5, r6, r7, r8, sb, pc}
        .size   APT_U_GetAppletInfo_5349cc, . - APT_U_GetAppletInfo_5349cc

@ FUN_00534ad4
        .global APT_U_LeaveHomeMenu_534ad4
        .type   APT_U_LeaveHomeMenu_534ad4, %function
APT_U_LeaveHomeMenu_534ad4:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        bl      Fn_008ca4
        bl      Fn_024788
        cmp     r0, #0
        beq     L534b04
        bl      Fn_024798
        ldr     r3, L534b58
        mov     r0, #1
        strb    r0, [r3, #4]
L534b04:
        mov     r0, #0
        bl      Fn_012cac
        nop
        nop
        bl      Fn_01d3e0
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_536e90
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        nop
        nop
        bl      Fn_012c98
        mov     r0, r4
        pop     {r4, r5, r6, pc}
L534b58:
        .word   0x008aab48
        .size   APT_U_LeaveHomeMenu_534ad4, . - APT_U_LeaveHomeMenu_534ad4

@ FUN_00534c30
        .global APT_U_Multi3_534c30
        .type   APT_U_Multi3_534c30, %function
APT_U_Multi3_534c30:
        push    {r4, r5, r6, r7, r8, sb, lr}
        sub     sp, sp, #0x14
        mov     r7, r0
        mov     r8, r1
        mov     sb, r2
        bl      Fn_01d3e0
        add     r0, sp, #0x10
        str     r0, [sp]
        add     r3, sp, #4
        add     r2, sp, #0xc
        add     r1, sp, #8
        mvn     r0, #0
        bl      Fn_537144
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        ldr     r4, [sp, #4]
        bl      Fn_008c78
        ldr     r6, L534d70
        cmp     r0, #0
        mov     r5, #1
        beq     L534cd8
L534c8c:
        nop
        bl      Fn_01d3e0
        mov     r1, sp
        mov     r0, r4
        bl      Fn_013260
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        ldrb    r0, [sp]
        cmp     r0, #0
        beq     L534d58
        strb    r5, [r6, #1]
        bl      Fn_533650
        mov     r0, r4
        nop
        bl      Fn_536bec
L534cd8:
        nop
        bl      Fn_024788
        cmp     r0, #0
        nop
        beq     L534cf4
        bl      Fn_024798
        strb    r5, [r6, #4]
L534cf4:
        mov     r0, #0
        bl      Fn_012cac
        nop
        nop
        bl      Fn_01d980
        nop
        nop
        bl      Fn_01d3e0
        mov     r2, sb
        mov     r1, r8
        mov     r0, r7
        bl      Fn_536fe4
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        nop
        nop
        bl      Fn_012c98
        add     sp, sp, #0x14
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, pc}
L534d58:
        ldr     r0, L534d74
        mov     r1, #0
        bl      Fn_01b71c
        nop
        nop
        b       L534c8c
L534d70:
        .word   0x008aab48
L534d74:
        .word   0x00989680
        .size   APT_U_Multi3_534c30, . - APT_U_Multi3_534c30

@ FUN_0053516c
        .global APT_U_IsRegistered
        .type   APT_U_IsRegistered, %function
APT_U_IsRegistered:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     r6, r2
        mov     sb, r0
        mov     r7, r3
        ldr     r0, L5352e0
        ldr     r1, [r0]
        ldr     r0, [r0, #4]
        eor     r1, r1, r2
        eor     r0, r0, r3
        orrs    r0, r0, r1
        beq     L5351c8
        ldr     r0, L5352e4
        ldr     r1, [r0]
        ldr     r0, [r0, #4]
        eor     r1, r1, r6
        eor     r0, r0, r7
        orrs    r0, r0, r1
        beq     L5351c8
        svc     #0x28
        mov     r5, r1
        mov     r4, r0
        b       L5351d0
L5351c8:
        mov     r4, #0
        mov     r5, r4
L5351d0:
        ldr     r8, L5352e8
L5351d4:
        nop
        bl      Fn_01d3e0
        mov     r1, sp
        mov     r0, sb
        bl      Fn_013260
        mov     r2, pc
        lsrs    r1, r0, #0x1f
        movne   r1, r2
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        ldrb    r0, [sp]
        cmp     r0, #0
        beq     L53521c
        add     sp, sp, #0xc
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53521c:
        ldr     r0, L5352e0
        ldr     r1, [r0, #4]
        ldr     r2, [r0]
        eor     r1, r1, r7
        eor     r0, r6, r2
        orrs    r0, r0, r1
        beq     L5352bc
        ldr     r0, L5352e4
        ldrd    r2, r3, [r0]
        eor     r0, r6, r2
        eor     r1, r7, r3
        orrs    r0, r0, r1
        beq     L5352c8
        svc     #0x28
        mov     r2, r0
        mov     r0, r1
        subs    r1, r2, r4
        mov     sl, #0
        mov     lr, sl
        sbc     r0, r0, r5
        mov     ip, sl
        mov     r2, #3
        str     sl, [sp]
        umull   sl, r3, r1, r8
        str     lr, [sp, #4]
        umull   fp, lr, r0, r2
        ldr     lr, [sp, #4]
        adds    r3, r3, ip
        asr     sl, r0, #0x1f
        adc     fp, fp, lr
        umull   ip, lr, r0, r8
        mla     lr, sl, r8, lr
        ldr     sl, [sp]
        mla     sl, r0, sl, lr
        umlal   ip, sl, r2, r1
        adds    r0, ip, r3
        adc     r1, sl, fp
        subs    r0, r6, r0
        sbcs    r0, r7, r1
        bge     L5352c8
L5352bc:
        add     sp, sp, #0xc
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5352c8:
        ldr     r0, L5352ec
        mov     r1, #0
        bl      Fn_01b71c
        nop
        nop
        b       L5351d4
L5352e0:
        .word   0x008aab60
L5352e4:
        .word   0x008aab58
L5352e8:
        .word   0xbad34aee
L5352ec:
        .word   0x00989680
        .size   APT_U_IsRegistered, . - APT_U_IsRegistered

@ FUN_005352f0
        .global APT_U_GetAppletManInfo_5352f0
        .type   APT_U_GetAppletManInfo_5352f0, %function
APT_U_GetAppletManInfo_5352f0:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x18
        mov     r8, r0
        ldr     r7, [sp, #0x30]
        mov     r4, r1
        mov     r5, r2
        mov     r6, r3
        bl      Fn_01d3e0
        add     r1, sp, #0x10
        str     r1, [sp]
        add     r3, sp, #0xc
        add     r2, sp, #8
        add     r1, sp, #4
        mov     r0, r8
        bl      Fn_537144
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        cmp     r4, #0
        ldrbne  r0, [sp, #4]
        strbne  r0, [r4]
        cmp     r5, #0
        ldrne   r0, [sp, #8]
        strne   r0, [r5]
        cmp     r6, #0
        ldrne   r0, [sp, #0xc]
        strne   r0, [r6]
        cmp     r7, #0
        ldrne   r0, [sp, #0x10]
        strne   r0, [r7]
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, pc}
        .size   APT_U_GetAppletManInfo_5352f0, . - APT_U_GetAppletManInfo_5352f0

@ FUN_0053540c
        .global APT_U_StartApplication_53540c
        .type   APT_U_StartApplication_53540c, %function
APT_U_StartApplication_53540c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #4
        mov     r4, r1
        mov     r6, r3
        mov     r7, #1
        mov     sl, r0
        mov     fp, r2
        ldr     r5, [sp, #0x38]
        cmp     r5, #0
        bne     L535458
        bl      Fn_5335b8
        bl      Fn_024788
        cmp     r0, #0
        beq     L535450
        bl      Fn_024798
        ldr     r0, L535520
        strb    r7, [r0, #4]
L535450:
        mov     r0, #0
        bl      Fn_012cac
L535458:
        cmp     sl, #0
        moveq   r4, #0
        beq     L53546c
        cmp     r4, #0x300
        movhi   r4, #0x300
L53546c:
        cmp     fp, #0
        moveq   r6, #0
        str     r4, [sp, #8]
        beq     L535484
        cmp     r6, #0x20
        movhi   r6, #0x20
L535484:
        ldr     r7, L535524
        ldr     r8, L535528
        ldr     sb, L53552c
L535490:
        nop
        bl      Fn_01d3e0
        ldr     r1, [sp, #8]
        mov     r3, r6
        mov     r2, fp
        mov     r0, sl
        str     r5, [sp]
        bl      Fn_5371b4
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r7
        mov     r0, r4
        cmpne   r0, r8
        cmpne   r4, sb
        beq     L5354f4
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        cmp     r5, #0
        nop
        bleq    Fn_012c98
        add     sp, sp, #0x14
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5354f4:
        ldr     ip, L535530
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L535490
L535520:
        .word   0x008aab48
L535524:
        .word   0xc8a0cff0
L535528:
        .word   0xe0a0cc08
L53552c:
        .word   0xc8a0cc02
L535530:
        .word   0x000f4240
        .size   APT_U_StartApplication_53540c, . - APT_U_StartApplication_53540c

@ FUN_00535534
        .global APT_U_CloseSystemApplet_535534
        .type   APT_U_CloseSystemApplet_535534, %function
APT_U_CloseSystemApplet_535534:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        bl      Fn_008ca4
        mov     r0, #0
        bl      Fn_012cac
        bl      Fn_01d3e0
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_537250
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        bl      Fn_012c98
        svc     #3
        mov     r0, r4
        pop     {r4, r5, r6, pc}
        .size   APT_U_CloseSystemApplet_535534, . - APT_U_CloseSystemApplet_535534

@ FUN_00535598
        .global APT_U_DoApplicationJump_535598
        .type   APT_U_DoApplicationJump_535598, %function
APT_U_DoApplicationJump_535598:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r5, r1
        mov     r6, r3
        mov     sl, r0
        mov     fp, r2
        mov     r0, #0x12
        bl      Fn_012444
        bl      Fn_5335b8
        bl      Fn_024788
        cmp     r0, #0
        mov     r4, #1
        beq     L5355d4
        bl      Fn_024798
        ldr     r0, L5356bc
        strb    r4, [r0, #4]
L5355d4:
        mov     r0, #0
        bl      Fn_012cac
        nop
        nop
        bl      Fn_01d980
        cmp     sl, #0
        moveq   r5, #0
        beq     L5355fc
        cmp     r5, #0x300
        movhi   r5, #0x300
L5355fc:
        cmp     fp, #0
        moveq   r6, #0
        beq     L535610
        cmp     r6, #0x20
        movhi   r6, #0x20
L535610:
        ldr     r7, L5356c0
        ldr     r8, L5356c4
        ldr     sb, L5356c8
L53561c:
        nop
        bl      Fn_01d3e0
        mov     r3, r6
        mov     r2, fp
        mov     r1, r5
        mov     r0, sl
        bl      Fn_5372a4
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r7
        mov     r0, r4
        cmpne   r0, r8
        cmpne   r4, sb
        beq     L535690
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_012c98
        nop
        nop
        bl      Fn_008ca4
        nop
        nop
        svc     #3
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L535690:
        ldr     ip, L5356cc
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L53561c
L5356bc:
        .word   0x008aab48
L5356c0:
        .word   0xc8a0cff0
L5356c4:
        .word   0xe0a0cc08
L5356c8:
        .word   0xc8a0cc02
L5356cc:
        .word   0x000f4240
        .size   APT_U_DoApplicationJump_535598, . - APT_U_DoApplicationJump_535598

@ FUN_005356d0
        .global APT_U_JumpToApplication_5356d0
        .type   APT_U_JumpToApplication_5356d0, %function
APT_U_JumpToApplication_5356d0:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L535768
        mov     r7, r2
        ldrb    r0, [r4]
        cmp     r0, #0
        blne    Fn_008ca4
        bl      Fn_024788
        cmp     r0, #0
        beq     L535708
        bl      Fn_024798
        mov     r0, #1
        strb    r0, [r4, #4]
L535708:
        mov     r0, #0
        bl      Fn_012cac
        nop
        nop
        bl      Fn_01d3e0
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        bl      Fn_537308
        mov     r5, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        nop
        nop
        bl      Fn_01d534
        nop
        nop
        bl      Fn_012c98
        ldrb    r1, [r4]
        cmp     r1, #0
        svcne   #3
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L535768:
        .word   0x008aab48
        .size   APT_U_JumpToApplication_5356d0, . - APT_U_JumpToApplication_5356d0

@ FUN_0053580c
        .global APT_U_ReceiveDeliverArg_53580c
        .type   APT_U_ReceiveDeliverArg_53580c, %function
APT_U_ReceiveDeliverArg_53580c:
        push    {r4, r5, r6, r7, r8, lr}
        movs    r4, r0
        sub     sp, sp, #0x20
        mov     r5, r2
        addeq   r4, sp, #0x14
        moveq   r1, #0
        ldr     r6, [sp, #0x38]
        cmp     r5, #0
        addeq   r5, sp, #0x18
        moveq   r3, #0
        cmp     r6, #0
        addeq   r6, sp, #0x1c
        cmp     r4, #0
        moveq   r1, #0
        beq     L535850
        cmp     r1, #0x300
        movhi   r1, #0x300
L535850:
        cmp     r5, #0
        mov     r7, r1
        moveq   r3, #0
        beq     L535868
        cmp     r3, #0x20
        movhi   r3, #0x20
L535868:
        mov     r8, r3
        bl      Fn_01d3e0
        add     r1, sp, #0x10
        add     r0, sp, #8
        strd    r0, r1, [sp]
        mov     r3, r8
        mov     r2, r5
        mov     r1, r7
        mov     r0, r4
        bl      Fn_53735c
        mov     r4, r0
        nop
        bl      Fn_01d534
        ldrd    r0, r1, [sp, #8]
        ands    r2, r4, #0x80000000
        lsr     r0, r0, #8
        orr     r0, r0, r1, lsl #24
        lsl     r0, r0, #0xc
        lsr     r0, r0, #0xc
        str     r0, [r6]
        bmi     L5358cc
        ldrb    r0, [sp, #0x10]
        cmp     r0, #0
        movne   r0, #1
        bne     L5358d0
L5358cc:
        mov     r0, #0
L5358d0:
        add     sp, sp, #0x20
        pop     {r4, r5, r6, r7, r8, pc}
        .size   APT_U_ReceiveDeliverArg_53580c, . - APT_U_ReceiveDeliverArg_53580c

@ FUN_0053590c
        .global APT_U_StartSystemApplet_53590c
        .type   APT_U_StartSystemApplet_53590c, %function
APT_U_StartSystemApplet_53590c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, r3
        mov     sl, r1
        mov     fp, r2
        bl      Fn_008c78
        cmp     r0, #0
        bne     L535938
        bl      Fn_012414
        cmp     r0, #0
        ldreq   r0, L535ad4
        beq     L535acc
L535938:
        nop
        bl      Fn_012414
        cmp     r0, #0
        mov     r4, #1
        beq     L535960
        mov     r0, #0
        bl      Fn_012cac
        nop
        nop
        b       L5359b4
L535960:
        nop
        bl      Fn_008c78
        cmp     r0, #0
        nop
        beq     L5359b4
        ldr     r5, L535ad8
        strb    r4, [r5, #1]
        bl      Fn_533650
        nop
        nop
        bl      Fn_024788
        cmp     r0, #0
        nop
        beq     L5359a0
        bl      Fn_024798
        strb    r4, [r5, #4]
L5359a0:
        mov     r0, #0
        bl      Fn_012cac
        nop
        nop
        bl      Fn_01d980
L5359b4:
        nop
        bl      Fn_5339dc
        movs    r5, r0
        movne   r0, #1
        blne    Fn_5339a4
        ldr     r7, L535adc
        ldr     r8, L535ae0
        ldr     sb, L535ae4
L5359d4:
        nop
        bl      Fn_01d3e0
        ldr     r0, [sp]
        mov     r3, r6
        mov     r2, fp
        mov     r1, sl
        bl      Fn_5373e4
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r7
        mov     r0, r4
        cmpne   r0, r8
        cmpne   r4, sb
        beq     L535a34
        cmp     r5, #0
        beq     L535a60
        bl      Fn_5339dc
        cmp     r0, #0
        moveq   r0, #1
        bleq    Fn_008c18
        nop
        nop
        b       L535a74
L535a34:
        ldr     ip, L535ae8
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L5359d4
L535a60:
        nop
        bl      Fn_5339dc
        cmp     r0, #0
        movne   r0, #1
        blne    Fn_5339a4
L535a74:
        mov     r0, r4
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
        nop
        nop
        bl      Fn_012c98
        nop
        nop
        bl      Fn_008c78
        cmp     r0, #0
        nop
        beq     L535ab4
        ldr     r0, [sp]
        bl      Fn_536bec
        mov     r4, r0
L535ab4:
        nop
        bl      Fn_012414
        cmp     r0, #0
        nop
        svcne   #3
        mov     r0, r4
L535acc:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L535ad4:
        .word   0xc8a0cc04
L535ad8:
        .word   0x008aab48
L535adc:
        .word   0xc8a0cff0
L535ae0:
        .word   0xe0a0cc08
L535ae4:
        .word   0xc8a0cc02
L535ae8:
        .word   0x000f4240
        .size   APT_U_StartSystemApplet_53590c, . - APT_U_StartSystemApplet_53590c

@ FUN_00535b20
        .global APT_U_WakeupApplication_535b20
        .type   APT_U_WakeupApplication_535b20, %function
APT_U_WakeupApplication_535b20:
        push    {r4, r5, r6, r7, r8, lr}
        bl      Fn_5335b8
        bl      Fn_024788
        cmp     r0, #0
        mov     r4, #1
        beq     L535b44
        bl      Fn_024798
        ldr     r0, L535bd8
        strb    r4, [r0, #4]
L535b44:
        mov     r0, #0
        bl      Fn_012cac
        ldr     r5, L535bdc
        ldr     r6, L535be0
        ldr     r7, L535be4
L535b58:
        nop
        bl      Fn_01d3e0
        nop
        nop
        bl      Fn_537434
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r5
        mov     r0, r4
        cmpne   r0, r6
        cmpne   r4, r7
        beq     L535bac
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        nop
        nop
        bl      Fn_012c98
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L535bac:
        ldr     ip, L535be8
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L535b58
L535bd8:
        .word   0x008aab48
L535bdc:
        .word   0xc8a0cff0
L535be0:
        .word   0xe0a0cc08
L535be4:
        .word   0xc8a0cc02
L535be8:
        .word   0x000f4240
        .size   APT_U_WakeupApplication_535b20, . - APT_U_WakeupApplication_535b20

@ FUN_00535c00
        .global APT_U_CloseLibraryApplet_535c00
        .type   APT_U_CloseLibraryApplet_535c00, %function
APT_U_CloseLibraryApplet_535c00:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        bl      Fn_008ca4
        mov     r0, #0
        bl      Fn_012cac
        bl      Fn_01d3e0
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_537464
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        bl      Fn_012c98
        svc     #3
        mov     r0, r4
        pop     {r4, r5, r6, pc}
        .size   APT_U_CloseLibraryApplet_535c00, . - APT_U_CloseLibraryApplet_535c00

@ FUN_00535c7c
        .global APT_U_CloseLibraryApplet_535c7c
        .type   APT_U_CloseLibraryApplet_535c7c, %function
APT_U_CloseLibraryApplet_535c7c:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        mov     r0, #0
        bl      Fn_012cac
        bl      Fn_01d3e0
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_537464
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        bl      Fn_012c98
        mov     r0, r4
        pop     {r4, r5, r6, pc}
        .size   APT_U_CloseLibraryApplet_535c7c, . - APT_U_CloseLibraryApplet_535c7c

@ FUN_00535d44
        .global APT_U_StartLibraryApplet_535d44
        .type   APT_U_StartLibraryApplet_535d44, %function
APT_U_StartLibraryApplet_535d44:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, r3
        mov     sl, r0
        mov     fp, r1
        bl      Fn_008c78
        cmp     r0, #0
        bne     L535d70
        bl      Fn_012414
        cmp     r0, #0
        ldreq   r0, L535e90
        beq     L535e88
L535d70:
        nop
        bl      Fn_008c78
        cmp     r0, #0
        mov     r0, #1
        beq     L535d90
        ldr     r1, L535e94
        strb    r0, [r1, #1]
        bl      Fn_533650
L535d90:
        mov     r0, sl
        bl      Fn_53486c
        mov     r0, #0
        nop
        bl      Fn_012cac
        nop
        nop
        bl      Fn_5339dc
        movs    r5, r0
        movne   r0, #1
        blne    Fn_5339a4
        ldr     r7, L535e98
        ldr     r8, L535e9c
        ldr     sb, L535ea0
L535dc8:
        nop
        bl      Fn_01d3e0
        ldr     r2, [sp, #8]
        mov     r3, r6
        mov     r1, fp
        mov     r0, sl
        bl      Fn_537554
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r7
        mov     r0, r4
        cmpne   r0, r8
        cmpne   r4, sb
        beq     L535e28
        cmp     r5, #0
        beq     L535e54
        bl      Fn_5339dc
        cmp     r0, #0
        moveq   r0, #1
        bleq    Fn_008c18
        nop
        nop
        b       L535e68
L535e28:
        ldr     ip, L535ea4
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L535dc8
L535e54:
        nop
        bl      Fn_5339dc
        cmp     r0, #0
        movne   r0, #1
        blne    Fn_5339a4
L535e68:
        mov     r0, r4
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
        nop
        nop
        bl      Fn_012c98
        mov     r0, r4
L535e88:
        add     sp, sp, #0x10
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L535e90:
        .word   0xc8a0cc04
L535e94:
        .word   0x008aab48
L535e98:
        .word   0xc8a0cff0
L535e9c:
        .word   0xe0a0cc08
L535ea0:
        .word   0xc8a0cc02
L535ea4:
        .word   0x000f4240
        .size   APT_U_StartLibraryApplet_535d44, . - APT_U_StartLibraryApplet_535d44

@ FUN_00535eb8
        .global APT_U_LeaveResidentApplet_535eb8
        .type   APT_U_LeaveResidentApplet_535eb8, %function
APT_U_LeaveResidentApplet_535eb8:
        push    {r4, r5, r6, lr}
        mov     r4, r0
        mov     r5, r1
        mov     r6, r2
        bl      Fn_008ca4
        mov     r0, #0
        bl      Fn_012cac
        bl      Fn_01d3e0
        mov     r2, r6
        mov     r1, r5
        mov     r0, r4
        bl      Fn_5375e0
        mov     r4, r0
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        bl      Fn_01d534
        bl      Fn_012c98
        mov     r0, r4
        pop     {r4, r5, r6, pc}
        .size   APT_U_LeaveResidentApplet_535eb8, . - APT_U_LeaveResidentApplet_535eb8

@ FUN_00535f08
        .global APT_U_StartNewestHomeMenu_535f08
        .type   APT_U_StartNewestHomeMenu_535f08, %function
APT_U_StartNewestHomeMenu_535f08:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        mov     r6, r2
        mov     sl, r0
        mov     fp, r1
        bl      Fn_008c78
        cmp     r0, #0
        bne     L535f34
        bl      Fn_012414
        cmp     r0, #0
        ldreq   r0, L536020
        beq     L53601c
L535f34:
        nop
        bl      Fn_012414
        cmp     r0, #0
        movne   r0, #0
        blne    Fn_012cac
        nop
        nop
        bl      Fn_5339dc
        movs    r5, r0
        movne   r0, #1
        blne    Fn_5339a4
        ldr     r7, L536024
        ldr     r8, L536028
        ldr     sb, L53602c
L535f6c:
        nop
        bl      Fn_01d3e0
        mov     r2, r6
        mov     r1, fp
        mov     r0, sl
        bl      Fn_5376a0
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r7
        mov     r0, r4
        cmpne   r0, r8
        cmpne   r4, sb
        beq     L535fc8
        cmp     r5, #0
        beq     L535ff4
        bl      Fn_5339dc
        cmp     r0, #0
        moveq   r0, #1
        bleq    Fn_008c18
        nop
        nop
        b       L536008
L535fc8:
        ldr     ip, L536030
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L535f6c
L535ff4:
        nop
        bl      Fn_5339dc
        cmp     r0, #0
        movne   r0, #1
        blne    Fn_5339a4
L536008:
        mov     r0, r4
        mov     r1, pc
        lsrs    r2, r4, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
L53601c:
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L536020:
        .word   0xc8a0cc04
L536024:
        .word   0xc8a0cff0
L536028:
        .word   0xe0a0cc08
L53602c:
        .word   0xc8a0cc02
L536030:
        .word   0x000f4240
        .size   APT_U_StartNewestHomeMenu_535f08, . - APT_U_StartNewestHomeMenu_535f08

@ FUN_00536034
        .global APT_U_StartResidentApplet_536034
        .type   APT_U_StartResidentApplet_536034, %function
APT_U_StartResidentApplet_536034:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r2
        mov     r8, r0
        mov     sb, r1
        ldr     r0, L5360f8
        bl      Fn_53486c
        mov     r0, #0
        bl      Fn_012cac
        ldr     r5, L5360fc
        ldr     r6, L536100
        ldr     r7, L536104
L536060:
        nop
        bl      Fn_01d3e0
        mov     r2, r4
        mov     r1, sb
        mov     r0, r8
        bl      Fn_5376f4
        mov     sl, r0
        nop
        bl      Fn_01d534
        cmp     sl, r5
        mov     r0, sl
        cmpne   r0, r6
        cmpne   sl, r7
        beq     L5360b0
        ands    r0, sl, #0x80000000
        bmi     L5360dc
        bl      Fn_012c98
        nop
        nop
        b       L5360f0
L5360b0:
        ldr     ip, L536108
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, sl, r1, ip
        mla     r2, r2, ip, sl
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L536060
L5360dc:
        nop
        bl      Fn_0135b4
        mov     r0, #1
        nop
        bl      Fn_012cac
L5360f0:
        mov     r0, sl
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5360f8:
        .word   0x00000501
L5360fc:
        .word   0xc8a0cff0
L536100:
        .word   0xe0a0cc08
L536104:
        .word   0xc8a0cc02
L536108:
        .word   0x000f4240
        .size   APT_U_StartResidentApplet_536034, . - APT_U_StartResidentApplet_536034

@ FUN_00536488
        .global APT_U_PrepareToLeaveHomeMenu_536488
        .type   APT_U_PrepareToLeaveHomeMenu_536488, %function
APT_U_PrepareToLeaveHomeMenu_536488:
        push    {r4, r5, r6, r7, r8, lr}
        bl      Fn_5339dc
        movs    r4, r0
        movne   r0, #1
        blne    Fn_5339a4
        mov     r1, #0
        mov     r0, r1
        bl      Fn_009028
        mov     r0, #0xf
        bl      Fn_012444
        ldr     r5, L53655c
        ldr     r6, L536560
        ldr     r7, L536564
L5364bc:
        nop
        bl      Fn_01d3e0
        nop
        nop
        bl      Fn_53791c
        mov     r8, r0
        nop
        bl      Fn_01d534
        cmp     r8, r5
        mov     r0, r8
        cmpne   r0, r6
        cmpne   r8, r7
        beq     L536514
        cmp     r4, #0
        beq     L536540
        bl      Fn_5339dc
        cmp     r0, #0
        moveq   r0, #1
        bleq    Fn_008c18
        nop
        nop
        b       L536554
L536514:
        ldr     ip, L536568
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r8, r1, ip
        mla     r2, r2, ip, r8
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L5364bc
L536540:
        nop
        bl      Fn_5339dc
        cmp     r0, #0
        movne   r0, #1
        blne    Fn_5339a4
L536554:
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, pc}
L53655c:
        .word   0xc8a0cff0
L536560:
        .word   0xe0a0cc08
L536564:
        .word   0xc8a0cc02
L536568:
        .word   0x000f4240
        .size   APT_U_PrepareToLeaveHomeMenu_536488, . - APT_U_PrepareToLeaveHomeMenu_536488

@ FUN_00536580
        .global APT_U_PrepareToJumpToHomeMenu_536580
        .type   APT_U_PrepareToJumpToHomeMenu_536580, %function
APT_U_PrepareToJumpToHomeMenu_536580:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r0, #0xe
        bl      Fn_012444
        ldr     r4, L5365fc
        ldr     r5, L536600
        ldr     r6, L536604
L536598:
        nop
        bl      Fn_01d3e0
        nop
        nop
        bl      Fn_5379b8
        mov     r7, r0
        nop
        bl      Fn_01d534
        cmp     r7, r4
        mov     r0, r7
        cmpne   r0, r5
        cmpne   r7, r6
        bne     L5365f8
        ldr     ip, L536608
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r7, r1, ip
        mla     r2, r2, ip, r7
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L536598
L5365f8:
        pop     {r4, r5, r6, r7, r8, pc}
L5365fc:
        .word   0xc8a0cff0
L536600:
        .word   0xe0a0cc08
L536604:
        .word   0xc8a0cc02
L536608:
        .word   0x000f4240
        .size   APT_U_PrepareToJumpToHomeMenu_536580, . - APT_U_PrepareToJumpToHomeMenu_536580

@ FUN_00536844
        .global APT_U_PrepareToDoApplicationJump_536844
        .type   APT_U_PrepareToDoApplicationJump_536844, %function
APT_U_PrepareToDoApplicationJump_536844:
        push    {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r4, r2
        mov     r5, r3
        mov     sl, r0
        ldr     r8, [sp, #0x28]
        ldr     r6, L5368d0
        ldr     r7, L5368d4
        ldr     sb, L5368d8
L536864:
        nop
        bl      Fn_01d3e0
        mov     r2, r4
        mov     r3, r5
        mov     r0, sl
        str     r8, [sp]
        bl      Fn_537b48
        mov     fp, r0
        nop
        bl      Fn_01d534
        cmp     fp, r6
        mov     r0, fp
        cmpne   r0, r7
        cmpne   fp, sb
        bne     L5368cc
        ldr     ip, L5368dc
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, fp, r1, ip
        mla     r2, r2, ip, fp
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L536864
L5368cc:
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L5368d0:
        .word   0xc8a0cff0
L5368d4:
        .word   0xe0a0cc08
L5368d8:
        .word   0xc8a0cc02
L5368dc:
        .word   0x000f4240
        .size   APT_U_PrepareToDoApplicationJump_536844, . - APT_U_PrepareToDoApplicationJump_536844

@ FUN_005368e0
        .global APT_U_PrepareToCloseApplication
        .type   APT_U_PrepareToCloseApplication, %function
APT_U_PrepareToCloseApplication:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r1, #0
        mov     r0, r1
        bl      Fn_009028
        mov     r0, #9
        bl      Fn_012444
        ldr     r6, L53697c
        ldr     r7, L536980
        ldr     r8, L536984
L536908:
        nop
        bl      Fn_01d3e0
        eor     r0, r5, #1
        nop
        bl      Fn_00929c
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r6
        mov     r0, r4
        cmpne   r0, r7
        cmpne   r4, r8
        beq     L536950
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_010ccc
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, pc}
L536950:
        ldr     ip, L536988
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L536908
L53697c:
        .word   0xc8a0cff0
L536980:
        .word   0xe0a0cc08
L536984:
        .word   0xc8a0cc02
L536988:
        .word   0x000f4240
        .size   APT_U_PrepareToCloseApplication, . - APT_U_PrepareToCloseApplication

@ FUN_0053698c
        .global APT_U_PrepareToStartApplication_53698c
        .type   APT_U_PrepareToStartApplication_53698c, %function
APT_U_PrepareToStartApplication_53698c:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r8, r1
        mov     r7, r0
        mov     r1, #0
        mov     r0, r1
        bl      Fn_009028
        mov     r0, #1
        bl      Fn_012444
        ldr     r4, L536a1c
        ldr     r5, L536a20
        ldr     r6, L536a24
L5369b8:
        nop
        bl      Fn_01d3e0
        mov     r1, r8
        mov     r0, r7
        bl      Fn_537a80
        mov     sb, r0
        nop
        bl      Fn_01d534
        cmp     sb, r4
        mov     r0, sb
        cmpne   r0, r5
        cmpne   sb, r6
        bne     L536a18
        ldr     r3, L536a28
        mov     r1, #0xa
        mov     ip, #0
        asr     r2, r1, #0x1f
        umull   r0, sb, r1, r3
        mla     r2, r2, r3, sb
        mla     r1, r1, ip, r2
        bl      Fn_01b71c
        nop
        nop
        b       L5369b8
L536a18:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L536a1c:
        .word   0xc8a0cff0
L536a20:
        .word   0xe0a0cc08
L536a24:
        .word   0xc8a0cc02
L536a28:
        .word   0x000f4240
        .size   APT_U_PrepareToStartApplication_53698c, . - APT_U_PrepareToStartApplication_53698c

@ FUN_00536a40
        .global APT_U_PrepareToJumpToApplication_536a40
        .type   APT_U_PrepareToJumpToApplication_536a40, %function
APT_U_PrepareToJumpToApplication_536a40:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r1, #0
        mov     r7, r0
        mov     r0, r1
        bl      Fn_009028
        ldr     r0, L536acc
        ldr     r4, L536ad0
        ldr     r5, L536ad4
        ldr     r6, L536ad8
        strb    r7, [r0]
L536a68:
        nop
        bl      Fn_01d3e0
        mov     r0, r7
        nop
        bl      Fn_537b94
        mov     r8, r0
        nop
        bl      Fn_01d534
        cmp     r8, r4
        mov     r0, r8
        cmpne   r0, r5
        cmpne   r8, r6
        bne     L536ac8
        ldr     ip, L536adc
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r8, r1, ip
        mla     r2, r2, ip, r8
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L536a68
L536ac8:
        pop     {r4, r5, r6, r7, r8, pc}
L536acc:
        .word   0x008aab48
L536ad0:
        .word   0xc8a0cff0
L536ad4:
        .word   0xe0a0cc08
L536ad8:
        .word   0xc8a0cc02
L536adc:
        .word   0x000f4240
        .size   APT_U_PrepareToJumpToApplication_536a40, . - APT_U_PrepareToJumpToApplication_536a40

@ FUN_00536ae0
        .global APT_U_PrepareToStartSystemApplet_536ae0
        .type   APT_U_PrepareToStartSystemApplet_536ae0, %function
APT_U_PrepareToStartSystemApplet_536ae0:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r1, #0
        mov     sb, r0
        mov     r0, r1
        bl      Fn_009028
        mov     r0, #5
        bl      Fn_012444
        bl      Fn_5339dc
        movs    r5, r0
        movne   r0, #1
        blne    Fn_5339a4
        ldr     r6, L536bd8
        ldr     r7, L536bdc
        ldr     r8, L536be0
L536b18:
        nop
        bl      Fn_01d3e0
        mov     r0, sb
        nop
        bl      Fn_537bd0
        mov     r4, r0
        nop
        bl      Fn_01d534
        cmp     r4, r6
        mov     r0, r4
        cmpne   r0, r7
        cmpne   r4, r8
        beq     L536b70
        cmp     r5, #0
        beq     L536b9c
        bl      Fn_5339dc
        cmp     r0, #0
        moveq   r0, #1
        bleq    Fn_008c18
        nop
        nop
        b       L536bb0
L536b70:
        ldr     ip, L536be4
        mov     r1, #0xa
        mov     r3, #0
        asr     r2, r1, #0x1f
        umull   r0, r4, r1, ip
        mla     r2, r2, ip, r4
        mla     r1, r1, r3, r2
        bl      Fn_01b71c
        nop
        nop
        b       L536b18
L536b9c:
        nop
        bl      Fn_5339dc
        cmp     r0, #0
        movne   r0, #1
        blne    Fn_5339a4
L536bb0:
        nop
        bl      Fn_008c78
        cmp     r0, #0
        nop
        beq     L536bd0
        ldr     r0, L536be8
        cmp     r4, r0
        moveq   r4, #0
L536bd0:
        mov     r0, r4
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L536bd8:
        .word   0xc8a0cff0
L536bdc:
        .word   0xe0a0cc08
L536be0:
        .word   0xc8a0cc02
L536be4:
        .word   0x000f4240
L536be8:
        .word   0xc8a0cffc
        .size   APT_U_PrepareToStartSystemApplet_536ae0, . - APT_U_PrepareToStartSystemApplet_536ae0

@ FUN_0053819c
        .global APT_U_Finalize_53819c
        .type   APT_U_Finalize_53819c, %function
APT_U_Finalize_53819c:
        push    {r4, r5, r6, lr}
        bl      Fn_008c48
        ldr     r5, L5381ec
        cmp     r0, #0
        mov     r4, #0
        strbne  r4, [r5, #2]
        bne     L5381dc
        bl      Fn_025914
        bl      Fn_01d3e0
        bl      Fn_01d180
        bl      Fn_538068
        mov     r1, pc
        lsrs    r2, r0, #0x1f
        blne    Fn_01b790
        strb    r4, [r5, #2]
        bl      Fn_01d534
L5381dc:
        nop
        bl      Fn_5349a4
        mov     r0, #0
        pop     {r4, r5, r6, pc}
L5381ec:
        .word   0x008aab48
        .size   APT_U_Finalize_53819c, . - APT_U_Finalize_53819c

@ FUN_005385ec
        .global cam_u_DriverFinalize_5385ec
        .type   cam_u_DriverFinalize_5385ec, %function
cam_u_DriverFinalize_5385ec:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L538624
        ldrb    r0, [r4]
        cmp     r0, #0
        beq     L538620
        bl      Fn_539764
        ldr     r0, [r5]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, #0
        strb    r0, [r4]
L538620:
        pop     {r4, r5, r6, pc}
L538624:
        .word   0x008aab6b
        .size   cam_u_DriverFinalize_5385ec, . - cam_u_DriverFinalize_5385ec

@ FUN_00538628
        .global cam_u_SetFrameRate_538628
        .type   cam_u_SetFrameRate_538628, %function
cam_u_SetFrameRate_538628:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, #0
        mov     r8, r0
        mov     sb, r1
        ldr     r5, L5386a4
        ldr     r6, L5386a8
        add     r7, r5, #0x3fc
L538644:
        mov     r1, sb
        mov     r0, r8
        bl      Fn_539528
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L538690
        cmp     r0, r6
        beq     L5386a0
        and     r1, r0, #0x3fc00
        cmp     r1, #0x2c00
        beq     L538680
        cmp     r0, r7
        beq     L53869c
        lsrs    r0, r2, #0x1f
        blne    Fn_024730
L538680:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L538644
        b       L53869c
L538690:
        cmp     r4, #2
        movlt   r0, #0
        blt     L5386a0
L53869c:
        mov     r0, r5
L5386a0:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5386a4:
        .word   0xf9605002
L5386a8:
        .word   0xc9405001
        .size   cam_u_SetFrameRate_538628, . - cam_u_SetFrameRate_538628

@ FUN_005386ac
        .global cam_u_SetReceiving_5386ac
        .type   cam_u_SetReceiving_5386ac, %function
cam_u_SetReceiving_5386ac:
        push    {r4, r5, lr}
        mov     ip, r1
        ldr     r1, L538714
        sub     sp, sp, #0xc
        mov     r5, #0
        str     r5, [sp, #8]
        ldr     r1, [r1]
        mov     r4, r0
        ldr     r0, [sp, #0x18]
        str     r3, [sp]
        mov     r3, r2
        str     r0, [sp, #4]
        mov     r2, ip
        add     r0, sp, #8
        bl      Fn_5395b8
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L538704
        svc     #0x23
        str     r5, [r4]
L538704:
        ldr     r0, [sp, #8]
        str     r0, [r4]
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L538714:
        .word   0x007e45e0
        .size   cam_u_SetReceiving_5386ac, . - cam_u_SetReceiving_5386ac

@ FUN_00538744
        .global cam_u_DriverInitialize_538744
        .type   cam_u_DriverInitialize_538744, %function
cam_u_DriverInitialize_538744:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, r0
        mov     r6, r1
        mov     r5, r2
        ldr     r8, L53889c
        ldrb    r0, [r8]
        cmp     r0, #0
        ldrne   r0, L5388a0
        bne     L5387d0
        bl      Fn_011b7c
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        mov     r0, r6
        bl      Fn_200e60
        mov     r2, r0
        mov     r3, #1
        mov     r1, r6
        mov     r0, r4
        bl      Fn_011be4
        ands    r1, r0, #0x80000000
        bpl     L5387b0
        ldr     r1, L5388a4
        cmp     r0, r1
        ldreq   r0, L5388a8
        beq     L5387d0
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
L5387b0:
        cmp     r5, #0
        beq     L5387d4
        ldr     r0, [r4]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
        mov     r0, #0
L5387d0:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5387d4:
        ldr     r7, L5388ac
        ldr     r6, L5388b0
        ldr     sb, L5388b4
L5387e0:
        nop
        bl      Fn_539908
        ands    r1, r0, #0x80000000
        nop
        bpl     L538868
        cmp     r0, r6
        bne     L538818
        ldr     r0, [r4]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L538818:
        and     r1, r0, #0x3fc00
        lsr     r1, r1, #0xa
        cmp     r1, #0xb
        bne     L538830
        cmp     r0, sb
        bne     L538858
L538830:
        ldr     r0, [r4]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        nop
        beq     L538884
L538844:
        nop
        bl      Fn_024730
        nop
        nop
        b       L538884
L538858:
        add     r5, r5, #1
        cmp     r5, #2
        blt     L5387e0
        b       L538870
L538868:
        cmp     r5, #2
        blt     L53888c
L538870:
        ldr     r0, [r4]
        svc     #0x23
        lsrs    r0, r0, #0x1f
        nop
        bne     L538844
L538884:
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53888c:
        mov     r0, #1
        strb    r0, [r8]
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53889c:
        .word   0x008aab6b
L5388a0:
        .word   0xd82053f9
L5388a4:
        .word   0xd0401834
L5388a8:
        .word   0xc8a053f9
L5388ac:
        .word   0xf9605002
L5388b0:
        .word   0xc9405001
L5388b4:
        .word   0xd82053f8
        .size   cam_u_DriverInitialize_538744, . - cam_u_DriverInitialize_538744

@ FUN_005388b8
        .global cam_u_SetAutoExposure_5388b8
        .type   cam_u_SetAutoExposure_5388b8, %function
cam_u_SetAutoExposure_5388b8:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, #0
        mov     r8, r0
        mov     sb, r1
        ldr     r5, L538934
        ldr     r6, L538938
        add     r7, r5, #0x3fc
L5388d4:
        mov     r1, sb
        mov     r0, r8
        bl      Fn_539828
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L538920
        cmp     r0, r6
        beq     L538930
        and     r1, r0, #0x3fc00
        cmp     r1, #0x2c00
        beq     L538910
        cmp     r0, r7
        beq     L53892c
        lsrs    r0, r2, #0x1f
        blne    Fn_024730
L538910:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L5388d4
        b       L53892c
L538920:
        cmp     r4, #2
        movlt   r0, #0
        blt     L538930
L53892c:
        mov     r0, r5
L538930:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L538934:
        .word   0xf9605002
L538938:
        .word   0xc9405001
        .size   cam_u_SetAutoExposure_5388b8, . - cam_u_SetAutoExposure_5388b8

@ FUN_0053895c
        .global cam_u_PlayShutterSound_53895c
        .type   cam_u_PlayShutterSound_53895c, %function
cam_u_PlayShutterSound_53895c:
        push    {r4, r5, r6, lr}
        mov     r6, r0
        ldr     r5, L5389ac
        mov     r4, #0
L53896c:
        mov     r0, r6
        bl      Fn_539984
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L538998
        cmp     r2, r5
        beq     L5389a8
        add     r4, r4, #1
        cmp     r4, #2
        blt     L53896c
        b       L5389a4
L538998:
        cmp     r4, #2
        movlt   r0, #0
        blt     L5389a8
L5389a4:
        ldr     r0, L5389b0
L5389a8:
        pop     {r4, r5, r6, pc}
L5389ac:
        .word   0xc9405001
L5389b0:
        .word   0xf9605002
        .size   cam_u_PlayShutterSound_53895c, . - cam_u_PlayShutterSound_53895c

@ FUN_005389ec
        .global cam_u_SetAutoWhiteBalance_5389ec
        .type   cam_u_SetAutoWhiteBalance_5389ec, %function
cam_u_SetAutoWhiteBalance_5389ec:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, #0
        mov     r8, r0
        mov     sb, r1
        ldr     r5, L538a68
        ldr     r6, L538a6c
        add     r7, r5, #0x3fc
L538a08:
        mov     r1, sb
        mov     r0, r8
        bl      Fn_539c68
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L538a54
        cmp     r0, r6
        beq     L538a64
        and     r1, r0, #0x3fc00
        cmp     r1, #0x2c00
        beq     L538a44
        cmp     r0, r7
        beq     L538a60
        lsrs    r0, r2, #0x1f
        blne    Fn_024730
L538a44:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L538a08
        b       L538a60
L538a54:
        cmp     r4, #2
        movlt   r0, #0
        blt     L538a64
L538a60:
        mov     r0, r5
L538a64:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L538a68:
        .word   0xf9605002
L538a6c:
        .word   0xc9405001
        .size   cam_u_SetAutoWhiteBalance_5389ec, . - cam_u_SetAutoWhiteBalance_5389ec

@ FUN_00538a70
        .global cam_u_GetVsyncInterruptEvent_538a70
        .type   cam_u_GetVsyncInterruptEvent_538a70, %function
cam_u_GetVsyncInterruptEvent_538a70:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_539dc8
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L538aa4
        svc     #0x23
        str     r5, [r4]
L538aa4:
        ldr     r0, [sp]
        str     r0, [r4]
        pop     {r3, r4, r5, pc}
        .size   cam_u_GetVsyncInterruptEvent_538a70, . - cam_u_GetVsyncInterruptEvent_538a70

@ FUN_00538ab0
        .global cam_u_SetTrimmingParamsCenter_538ab0
        .type   cam_u_SetTrimmingParamsCenter_538ab0, %function
cam_u_SetTrimmingParamsCenter_538ab0:
        push    {r3, lr}
        ldr     ip, [sp, #8]
        str     ip, [sp]
        bl      Fn_539e5c
        lsrs    r0, r0, #0x1f
        beq     L538ad0
        pop     {r3, lr}
        b       Fn_024730
L538ad0:
        pop     {r3, pc}
        .size   cam_u_SetTrimmingParamsCenter_538ab0, . - cam_u_SetTrimmingParamsCenter_538ab0

@ FUN_00538ad4
        .global cam_u_GetBufferErrorInterruptEvent_538ad4
        .type   cam_u_GetBufferErrorInterruptEvent_538ad4, %function
cam_u_GetBufferErrorInterruptEvent_538ad4:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        mov     r5, #0
        mov     r0, sp
        str     r5, [sp]
        bl      Fn_53a040
        lsrs    r0, r0, #0x1f
        blne    Fn_024730
        ldr     r0, [r4]
        cmp     r0, #0
        beq     L538b08
        svc     #0x23
        str     r5, [r4]
L538b08:
        ldr     r0, [sp]
        str     r0, [r4]
        pop     {r3, r4, r5, pc}
        .size   cam_u_GetBufferErrorInterruptEvent_538ad4, . - cam_u_GetBufferErrorInterruptEvent_538ad4

@ FUN_00538e7c
        .global cam_u_GetSuitableY2rStandardCoefficient_538e7c
        .type   cam_u_GetSuitableY2rStandardCoefficient_538e7c, %function
cam_u_GetSuitableY2rStandardCoefficient_538e7c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, #0
        mov     r8, r0
        ldr     r5, L538ef0
        ldr     r7, L538ef4
        add     r6, r5, #0x3fc
L538e94:
        mov     r0, r8
        bl      Fn_53a2ec
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L538edc
        cmp     r0, r7
        beq     L538eec
        and     r1, r0, #0x3fc00
        cmp     r1, #0x2c00
        beq     L538ecc
        cmp     r0, r6
        beq     L538ee8
        lsrs    r0, r2, #0x1f
        blne    Fn_024730
L538ecc:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L538e94
        b       L538ee8
L538edc:
        cmp     r4, #2
        movlt   r0, #0
        blt     L538eec
L538ee8:
        mov     r0, r5
L538eec:
        pop     {r4, r5, r6, r7, r8, pc}
L538ef0:
        .word   0xf9605002
L538ef4:
        .word   0xc9405001
        .size   cam_u_GetSuitableY2rStandardCoefficient_538e7c, . - cam_u_GetSuitableY2rStandardCoefficient_538e7c

@ FUN_0053a530
        .global cam_u_SetSize_53a530
        .type   cam_u_SetSize_53a530, %function
cam_u_SetSize_53a530:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r4, #0
        mov     r8, r0
        mov     sb, r1
        ldr     r5, L53a5b4
        ldr     r6, L53a5b8
        mov     sl, r2
        add     r7, r5, #0x3fc
L53a550:
        mov     r2, sl
        mov     r1, sb
        mov     r0, r8
        bl      Fn_53a420
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L53a5a0
        cmp     r0, r6
        beq     L53a5b0
        and     r1, r0, #0x3fc00
        cmp     r1, #0x2c00
        beq     L53a590
        cmp     r0, r7
        beq     L53a5ac
        lsrs    r0, r2, #0x1f
        blne    Fn_024730
L53a590:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L53a550
        b       L53a5ac
L53a5a0:
        cmp     r4, #2
        movlt   r0, #0
        blt     L53a5b0
L53a5ac:
        mov     r0, r5
L53a5b0:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53a5b4:
        .word   0xf9605002
L53a5b8:
        .word   0xc9405001
        .size   cam_u_SetSize_53a530, . - cam_u_SetSize_53a530

@ FUN_0053a5bc
        .global cam_u_Activate
        .type   cam_u_Activate, %function
cam_u_Activate:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, #0
        mov     r8, r0
        ldr     r5, L53a630
        ldr     r7, L53a634
        add     r6, r5, #0x3fc
L53a5d4:
        mov     r0, r8
        bl      Fn_025d38
        ands    r1, r0, #0x80000000
        mov     r2, r0
        bpl     L53a61c
        cmp     r0, r7
        beq     L53a62c
        and     r1, r0, #0x3fc00
        cmp     r1, #0x2c00
        beq     L53a60c
        cmp     r0, r6
        beq     L53a628
        lsrs    r0, r2, #0x1f
        blne    Fn_024730
L53a60c:
        add     r4, r4, #1
        cmp     r4, #2
        blt     L53a5d4
        b       L53a628
L53a61c:
        cmp     r4, #2
        movlt   r0, #0
        blt     L53a62c
L53a628:
        mov     r0, r5
L53a62c:
        pop     {r4, r5, r6, r7, r8, pc}
L53a630:
        .word   0xf9605002
L53a634:
        .word   0xc9405001
        .size   cam_u_Activate, . - cam_u_Activate

@ FUN_0053b2e8
        .global frd_u_Multi2_53b2e8
        .type   frd_u_Multi2_53b2e8, %function
frd_u_Multi2_53b2e8:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x130
        ldr     r4, L53b43c
        mov     r0, r4
        bl      Fn_0244c8
        bl      Fn_53e748
        cmp     r0, #0
        ldrne   r5, L53b440
        bne     L53b428
        ldr     r5, L53b43c
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r6, L53b444
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r7, #0
        beq     L53b350
        ldr     r0, [r6, #4]
        mov     r5, #0
        add     r0, r0, #1
        str     r0, [r6, #4]
        b       L53b428
L53b350:
        nop
        bl      Fn_011b7c
        lsrs    r1, r0, #0x1f
        nop
        beq     L53b36c
L53b364:
        mov     r5, r0
        b       L53b428
L53b36c:
        add     r5, pc, #0xd4
        mov     r0, r5
        bl      Fn_200e60
        mov     r2, r0
        ldr     r0, L53b450
        mov     r3, #0
        mov     r1, r5
        bl      Fn_011be4
        lsrs    r1, r0, #0x1f
        nop
        bne     L53b364
        ldr     r0, [r6, #4]
        add     r0, r0, #1
        str     r0, [r6, #4]
        ldr     r0, L53b454
        bl      Fn_541128
        ldr     r0, L53b458
        nop
        bl      Fn_01b624
        mov     r0, #0
        strb    r0, [r6]
        ldr     r0, L53b45c
        bl      Fn_01b624
        ldr     r5, L53b43c
        mov     r7, sp
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r8, #0
        nop
        bne     L53b40c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53b460
        beq     L53b414
L53b40c:
        mov     r0, r7
        bl      Fn_540a60
L53b414:
        mov     r5, r0
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp, #8]
        strge   r0, [r6, #8]
L53b428:
        mov     r0, r4
        bl      Fn_024568
        add     sp, sp, #0x130
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L53b43c:
        .word   0x009a108c
L53b440:
        .word   0xd8a0c7f9
L53b444:
        .word   0x008aac08
        .word   0x3a647266
        .word   0x00000075
L53b450:
        .word   0x008b7ccc
L53b454:
        .word   0x060100c8
L53b458:
        .word   0x009a1074
L53b45c:
        .word   0x009a1080
L53b460:
        .word   0xd8a0c7f8
        .size   frd_u_Multi2_53b2e8, . - frd_u_Multi2_53b2e8

@ FUN_0053b464
        .global frd_u_GetFriendAttributeFlags_53b464
        .type   frd_u_GetFriendAttributeFlags_53b464, %function
frd_u_GetFriendAttributeFlags_53b464:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r4, r0
        sub     sp, sp, #0x18
        ldr     r5, L53b594
        mov     r6, r2
        mov     r7, r3
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, L53b598
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r8, #0
        bne     L53b4b4
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53b530
L53b4b4:
        ldrb    r0, [r4, #0x2e]
        cmp     r0, #0
        ldrne   r0, [r4, #8]
        cmpne   r0, #0
        beq     L53b530
        ldr     r0, [r4, #0x14]
        cmp     r0, #0
        beq     L53b530
        ldr     r2, [r4, #0xc]
        mov     r0, #1
        mov     r1, #0
        bl      Fn_202058
        and     r0, r0, r6
        and     r1, r1, r7
        orrs    r0, r0, r1
        beq     L53b57c
        ldr     r0, [r4]
        tst     r0, #0x80000000
        bne     L53b57c
        ldr     r0, [r4, #4]
        cmp     r0, #1
        beq     L53b588
        cmp     r0, #2
        beq     L53b544
        cmp     r0, #3
        beq     L53b538
        cmp     r0, #4
        bne     L53b57c
        ldrb    r0, [r4, #0x2d]
        cmp     r0, #0
        bne     L53b588
L53b530:
        add     sp, sp, #0x18
        pop     {r4, r5, r6, r7, r8, pc}
L53b538:
        ldrb    r0, [r4, #0x2d]
        cmp     r0, #0
        beq     L53b530
L53b544:
        ldr     r2, [r4, #0x10]
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp, #0x10]
        str     r2, [sp, #8]
        mov     r2, #1
        add     r1, sp, #8
        mov     r0, sp
        bl      Fn_541634
        ldr     r1, [sp]
        and     r1, r1, #1
        sub     r1, r1, #1
        orrs    r0, r1, r0, lsr #31
        beq     L53b588
L53b57c:
        add     sp, sp, #0x18
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
L53b588:
        add     sp, sp, #0x18
        mov     r0, #1
        pop     {r4, r5, r6, r7, r8, pc}
L53b594:
        .word   0x009a108c
L53b598:
        .word   0x008aac08
        .size   frd_u_GetFriendAttributeFlags_53b464, . - frd_u_GetFriendAttributeFlags_53b464

@ FUN_0053b59c
        .global frd_u_HasLoggedIn_53b59c
        .type   frd_u_HasLoggedIn_53b59c, %function
frd_u_HasLoggedIn_53b59c:
        push    {r3, r4, r5, lr}
        ldr     r4, L53b5f8
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53b5fc
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L53b5dc
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53b5f4
L53b5dc:
        mov     r0, sp
        bl      Fn_540878
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrsbge r0, [sp]
        movlt   r0, #0
L53b5f4:
        pop     {r3, r4, r5, pc}
L53b5f8:
        .word   0x009a108c
L53b5fc:
        .word   0x008aac08
        .size   frd_u_HasLoggedIn_53b59c, . - frd_u_HasLoggedIn_53b59c

@ FUN_0053cc3c
        .global frd_u_GetFriendMii_53cc3c
        .type   frd_u_GetFriendMii_53cc3c, %function
frd_u_GetFriendMii_53cc3c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r4, L53cccc
        mov     r5, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53ccd0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53cc8c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53ccd4
        beq     L53ccc8
L53cc8c:
        ldr     r0, L53ccd8
        cmp     r6, #0
        cmpne   r7, #0
        beq     L53ccc8
        cmp     r5, #0
        moveq   r0, #0
        beq     L53ccc8
        cmp     r5, #0x64
        ldrhi   r0, L53ccdc
        bhi     L53ccc8
        mov     r2, r5
        mov     r1, r7
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_5408b4
L53ccc8:
        pop     {r4, r5, r6, r7, r8, pc}
L53cccc:
        .word   0x009a108c
L53ccd0:
        .word   0x008aac08
L53ccd4:
        .word   0xd8a0c7f8
L53ccd8:
        .word   0xe0e0c7f6
L53ccdc:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendMii_53cc3c, . - frd_u_GetFriendMii_53cc3c

@ FUN_0053cce0
        .global frd_u_GetFriendMii_53cce0
        .type   frd_u_GetFriendMii_53cce0, %function
frd_u_GetFriendMii_53cce0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     r5, r1
        mov     fp, r0
        ldr     r6, L53ce40
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53ce44
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53ce48
        cmp     r7, #0
        bne     L53cd38
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53cdf4
L53cd38:
        ldr     r7, L53ce4c
        cmp     r5, #0
        beq     L53ce04
        cmp     r4, #0
        beq     L53ce14
        cmp     r4, #0x64
        sub     r8, r7, #0xd
        bhi     L53cde4
        cmp     r4, #0
        mov     sb, sp
        mov     r2, #0
        bls     L53cd8c
L53cd68:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, sb, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53cd68
L53cd8c:
        ldr     r5, L53ce40
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53cdcc
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53cdf4
L53cdcc:
        cmp     fp, #0
        beq     L53ce04
        cmp     r4, #0
        beq     L53ce14
        cmp     r4, #0x64
        bls     L53ce24
L53cde4:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53cdf4:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ce04:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ce14:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ce24:
        mov     r2, r4
        mov     r1, sb
        mov     r0, fp
        bl      Fn_5408b4
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ce40:
        .word   0x009a108c
L53ce44:
        .word   0x008aac08
L53ce48:
        .word   0xd8a0c7f8
L53ce4c:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendMii_53cce0, . - frd_u_GetFriendMii_53cce0

@ FUN_0053cf38
        .global frd_a_RemoveFriend_53cf38
        .type   frd_a_RemoveFriend_53cf38, %function
frd_a_RemoveFriend_53cf38:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53cf84
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53cf88
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        ldreq   r0, L53cf8c
        beq     L53cf80
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_53b718
L53cf80:
        pop     {r4, r5, r6, pc}
L53cf84:
        .word   0x009a108c
L53cf88:
        .word   0x008b7cc8
L53cf8c:
        .word   0xd8a0c7f8
        .size   frd_a_RemoveFriend_53cf38, . - frd_a_RemoveFriend_53cf38

@ FUN_0053d030
        .global frd_u_GetFriendInfo_53d030
        .type   frd_u_GetFriendInfo_53d030, %function
frd_u_GetFriendInfo_53d030:
        push    {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        mov     r5, r2
        mov     r6, r0
        mov     r7, r1
        mov     sb, r3
        ldr     r4, L53d0cc
        ldr     r8, [sp, #0x28]
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53d0d0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     sl, #0
        bne     L53d088
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d0d4
        beq     L53d0c8
L53d088:
        ldr     r0, L53d0d8
        cmp     r6, #0
        cmpne   r7, #0
        beq     L53d0c8
        cmp     r5, #0
        moveq   r0, #0
        beq     L53d0c8
        cmp     r5, #0x64
        ldrhi   r0, L53d0dc
        bhi     L53d0c8
        mov     r3, sb
        mov     r2, r5
        mov     r1, r7
        mov     r0, r6
        str     r8, [sp]
        bl      Fn_540990
L53d0c8:
        pop     {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53d0cc:
        .word   0x009a108c
L53d0d0:
        .word   0x008aac08
L53d0d4:
        .word   0xd8a0c7f8
L53d0d8:
        .word   0xe0e0c7f6
L53d0dc:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendInfo_53d030, . - frd_u_GetFriendInfo_53d030

@ FUN_0053d0e0
        .global frd_u_GetFriendInfo_53d0e0
        .type   frd_u_GetFriendInfo_53d0e0, %function
frd_u_GetFriendInfo_53d0e0:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
        sub     sp, sp, #0x650
        mov     r4, r2
        mov     r5, r1
        ldr     r6, L53d244
        ldr     fp, [sp, #0x688]
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sb, L53d248
        ldr     r0, [sb, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53d24c
        cmp     r7, #0
        bne     L53d134
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53d200
L53d134:
        ldr     r7, L53d250
        cmp     r5, #0
        beq     L53d20c
        cmp     r4, #0
        beq     L53d218
        cmp     r4, #0x64
        sub     r8, r7, #0xd
        bhi     L53d1f4
        cmp     r4, #0
        add     ip, sp, #8
        mov     r3, #0
        bls     L53d188
L53d164:
        ldr     r0, [r5, r3, lsl #2]
        add     r1, ip, r3, lsl #4
        mov     r2, #0
        str     r0, [r1], #8
        mov     sl, r2
        add     r3, r3, #1
        stm     r1, {r2, sl}
        cmp     r4, r3
        bhi     L53d164
L53d188:
        ldr     r0, [sp, #0x65c]
        mov     sl, fp
        ldr     fp, L53d244
        str     r0, [sp, #0x648]
        ldr     r5, [sp, #0x650]
        mov     r0, fp
        str     ip, [sp, #4]
        bl      Fn_0244c8
        ldr     r0, [sb, #4]
        cmp     r0, #0
        movne   sb, #1
        moveq   sb, #0
        mov     r0, fp
        bl      Fn_024568
        cmp     sb, #0
        nop
        bne     L53d1dc
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53d200
L53d1dc:
        cmp     r5, #0
        beq     L53d20c
        cmp     r4, #0
        beq     L53d218
        cmp     r4, #0x64
        bls     L53d224
L53d1f4:
        add     sp, sp, #0x660
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L53d200:
        add     sp, sp, #0x660
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L53d20c:
        add     sp, sp, #0x660
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L53d218:
        add     sp, sp, #0x660
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L53d224:
        ldr     r1, [sp, #4]
        ldr     r3, [sp, #0x648]
        mov     r2, r4
        mov     r0, r5
        str     sl, [sp]
        bl      Fn_540990
        add     sp, sp, #0x660
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
L53d244:
        .word   0x009a108c
L53d248:
        .word   0x008aac08
L53d24c:
        .word   0xd8a0c7f8
L53d250:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendInfo_53d0e0, . - frd_u_GetFriendInfo_53d0e0

@ FUN_0053d2cc
        .global frd_u_GetMyPresence_53d2cc
        .type   frd_u_GetMyPresence_53d2cc, %function
frd_u_GetMyPresence_53d2cc:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53d330
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53d334
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        bne     L53d314
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d338
        beq     L53d32c
L53d314:
        cmp     r5, #0
        ldreq   r0, L53d33c
        beq     L53d32c
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_540a60
L53d32c:
        pop     {r4, r5, r6, pc}
L53d330:
        .word   0x009a108c
L53d334:
        .word   0x008aac08
L53d338:
        .word   0xd8a0c7f8
L53d33c:
        .word   0xe0e0c7f6
        .size   frd_u_GetMyPresence_53d2cc, . - frd_u_GetMyPresence_53d2cc

@ FUN_0053d438
        .global frd_u_GetMyFriendKey_53d438
        .type   frd_u_GetMyFriendKey_53d438, %function
frd_u_GetMyFriendKey_53d438:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53d49c
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53d4a0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        bne     L53d480
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d4a4
        beq     L53d498
L53d480:
        cmp     r5, #0
        ldreq   r0, L53d4a8
        beq     L53d498
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_540aec
L53d498:
        pop     {r4, r5, r6, pc}
L53d49c:
        .word   0x009a108c
L53d4a0:
        .word   0x008aac08
L53d4a4:
        .word   0xd8a0c7f8
L53d4a8:
        .word   0xe0e0c7f6
        .size   frd_u_GetMyFriendKey_53d438, . - frd_u_GetMyFriendKey_53d438

@ FUN_0053d53c
        .global frd_u_SendInvitation_53d53c
        .type   frd_u_SendInvitation_53d53c, %function
frd_u_SendInvitation_53d53c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53d5a8
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53d5ac
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        bne     L53d588
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d5b0
        beq     L53d5a4
L53d588:
        cmp     r5, #0
        ldreq   r0, L53d5b4
        beq     L53d5a4
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_540b88
L53d5a4:
        pop     {r4, r5, r6, r7, r8, pc}
L53d5a8:
        .word   0x009a108c
L53d5ac:
        .word   0x008aac08
L53d5b0:
        .word   0xd8a0c7f8
L53d5b4:
        .word   0xe0e0c7f6
        .size   frd_u_SendInvitation_53d53c, . - frd_u_SendInvitation_53d53c

@ FUN_0053d5b8
        .global frd_u_SendInvitation_53d5b8
        .type   frd_u_SendInvitation_53d5b8, %function
frd_u_SendInvitation_53d5b8:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        sub     sp, sp, #0x640
        ldr     r6, L53d6b8
        mov     r4, r1
        mov     r0, r6
        bl      Fn_0244c8
        ldr     r8, L53d6bc
        ldr     r0, [r8, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        cmp     r7, #0
        ldr     r7, L53d6c0
        bne     L53d608
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53d6ac
L53d608:
        cmp     r5, #0
        ldreq   r0, L53d6c4
        beq     L53d6a4
        cmp     r4, #0x64
        ldrhi   r0, L53d6c8
        bhi     L53d6a4
        cmp     r4, #0
        mov     r6, sp
        mov     r1, #0
        bls     L53d654
L53d630:
        ldr     r2, [r5, r1, lsl #2]
        add     r0, r6, r1, lsl #4
        mov     r3, #0
        str     r2, [r0], #8
        mov     ip, r3
        add     r1, r1, #1
        stm     r0, {r3, ip}
        cmp     r4, r1
        bhi     L53d630
L53d654:
        ldr     r0, L53d6b8
        mov     r5, r4
        mov     r4, r0
        bl      Fn_0244c8
        ldr     r0, [r8, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        nop
        bne     L53d698
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53d6ac
L53d698:
        mov     r1, r5
        mov     r0, r6
        bl      Fn_540b88
L53d6a4:
        add     sp, sp, #0x640
        pop     {r4, r5, r6, r7, r8, pc}
L53d6ac:
        add     sp, sp, #0x640
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, pc}
L53d6b8:
        .word   0x009a108c
L53d6bc:
        .word   0x008aac08
L53d6c0:
        .word   0xd8a0c7f8
L53d6c4:
        .word   0xe0e0c7f6
L53d6c8:
        .word   0xe0e0c7e9
        .size   frd_u_SendInvitation_53d5b8, . - frd_u_SendInvitation_53d5b8

@ FUN_0053d6cc
        .global frd_u_UpdateMyPresence_53d6cc
        .type   frd_u_UpdateMyPresence_53d6cc, %function
frd_u_UpdateMyPresence_53d6cc:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        sub     sp, sp, #0x30
        mov     r7, r1
        ldr     r4, L53d778
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r5, L53d77c
        ldr     r0, [r5, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53d71c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d780
        beq     L53d770
L53d71c:
        cmp     r7, #0
        ldreq   r0, L53d784
        beq     L53d770
        ldr     r4, L53d788
        mov     r0, r4
        bl      Fn_0244c8
        ldm     r6, {r0, r1, r2, r3, r8, sb, sl, ip}
        add     r6, r6, #0x20
        stm     sp, {r0, r1, r2, r3, r8, sb, sl, ip}
        add     r3, sp, #0x20
        ldm     r6, {r0, r1, r2}
        stm     r3, {r0, r1, r2}
        mov     r1, r7
        ldr     r0, [r5, #8]
        str     r0, [sp, #8]
        mov     r0, sp
        bl      Fn_540bd4
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
L53d770:
        add     sp, sp, #0x30
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53d778:
        .word   0x009a108c
L53d77c:
        .word   0x008aac08
L53d780:
        .word   0xd8a0c7f8
L53d784:
        .word   0xe0e0c7f6
L53d788:
        .word   0x009a1080
        .size   frd_u_UpdateMyPresence_53d6cc, . - frd_u_UpdateMyPresence_53d6cc

@ FUN_0053d78c
        .global frd_u_GetMyPreference_53d78c
        .type   frd_u_GetMyPreference_53d78c, %function
frd_u_GetMyPreference_53d78c:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53d7fc
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53d800
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        bne     L53d7d8
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d804
        beq     L53d7f8
L53d7d8:
        ldr     r0, L53d808
        cmp     r5, #0
        cmpne   r6, #0
        beq     L53d7f8
        mov     r2, sp
        mov     r1, r6
        mov     r0, r5
        bl      Fn_540c30
L53d7f8:
        pop     {r3, r4, r5, r6, r7, pc}
L53d7fc:
        .word   0x009a108c
L53d800:
        .word   0x008aac08
L53d804:
        .word   0xd8a0c7f8
L53d808:
        .word   0xe0e0c7f6
        .size   frd_u_GetMyPreference_53d78c, . - frd_u_GetMyPreference_53d78c

@ FUN_0053d80c
        .global frd_u_GetMyPreference_53d80c
        .type   frd_u_GetMyPreference_53d80c, %function
frd_u_GetMyPreference_53d80c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53d88c
        mov     r7, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53d890
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53d85c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53d894
        beq     L53d888
L53d85c:
        ldr     r0, L53d898
        cmp     r5, #0
        cmpne   r6, #0
        beq     L53d888
        cmp     r7, #0
        beq     L53d888
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_540c30
L53d888:
        pop     {r4, r5, r6, r7, r8, pc}
L53d88c:
        .word   0x009a108c
L53d890:
        .word   0x008aac08
L53d894:
        .word   0xd8a0c7f8
L53d898:
        .word   0xe0e0c7f6
        .size   frd_u_GetMyPreference_53d80c, . - frd_u_GetMyPreference_53d80c

@ FUN_0053d910
        .global frd_u_SetClientSdkVersion_53d910
        .type   frd_u_SetClientSdkVersion_53d910, %function
frd_u_SetClientSdkVersion_53d910:
        push    {r4, r5, r6, r7, r8, lr}
        ldr     r4, L53da30
        mov     r0, r4
        bl      Fn_0244c8
        bl      Fn_53d340
        cmp     r0, #0
        beq     L53d940
        ldr     r5, L53da34
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L53d940:
        ldr     r5, L53da30
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r6, L53da38
        ldr     r0, [r6]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     r7, #0
        nop
        beq     L53d994
        ldr     r0, [r6]
        mov     r5, #0
        add     r0, r0, #1
        str     r0, [r6]
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L53d994:
        nop
        bl      Fn_011b7c
        lsrs    r1, r0, #0x1f
        nop
        bne     L53d9d4
        add     r5, pc, #0x8c
        mov     r0, r5
        bl      Fn_200e60
        mov     r2, r0
        ldr     r0, L53da44
        mov     r3, #0
        mov     r1, r5
        bl      Fn_011be4
        lsrs    r1, r0, #0x1f
        nop
        beq     L53d9e8
L53d9d4:
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, pc}
L53d9e8:
        ldr     r1, L53da44
        ldr     r0, L53da48
        ldr     r1, [r1]
        str     r1, [r0]
        ldr     r0, [r6]
        add     r0, r0, #1
        str     r0, [r6]
        ldr     r0, L53da4c
        bl      Fn_541128
        nop
        nop
        bl      Fn_540650
        nop
        nop
        bl      Fn_53f068
        nop
        nop
        b       L53d9d4
L53da30:
        .word   0x009a108c
L53da34:
        .word   0xd8a0c7f9
L53da38:
        .word   0x008b7cc8
        .word   0x3a647266
        .word   0x00000061
L53da44:
        .word   0x008b8790
L53da48:
        .word   0x008b7ccc
L53da4c:
        .word   0x060100c8
        .size   frd_u_SetClientSdkVersion_53d910, . - frd_u_SetClientSdkVersion_53d910

@ FUN_0053da50
        .global frd_u_GetFriendComment_53da50
        .type   frd_u_GetFriendComment_53da50, %function
frd_u_GetFriendComment_53da50:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r4, L53dae4
        mov     r5, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53dae8
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53daa0
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53daec
        beq     L53dae0
L53daa0:
        ldr     r0, L53daf0
        cmp     r6, #0
        cmpne   r7, #0
        beq     L53dae0
        cmp     r5, #0
        moveq   r0, #0
        beq     L53dae0
        cmp     r5, #0x64
        ldrhi   r0, L53daf4
        bhi     L53dae0
        add     r2, r5, r5, lsl #4
        mov     r3, r5
        mov     r1, r7
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_540cc8
L53dae0:
        pop     {r4, r5, r6, r7, r8, pc}
L53dae4:
        .word   0x009a108c
L53dae8:
        .word   0x008aac08
L53daec:
        .word   0xd8a0c7f8
L53daf0:
        .word   0xe0e0c7f6
L53daf4:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendComment_53da50, . - frd_u_GetFriendComment_53da50

@ FUN_0053daf8
        .global frd_u_GetFriendComment_53daf8
        .type   frd_u_GetFriendComment_53daf8, %function
frd_u_GetFriendComment_53daf8:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     sb, r0
        mov     r5, r1
        ldr     r6, L53dc5c
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53dc60
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53dc64
        cmp     r7, #0
        bne     L53db50
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53dc0c
L53db50:
        ldr     r7, L53dc68
        cmp     sb, #0
        beq     L53dc1c
        cmp     r4, #0
        beq     L53dc2c
        cmp     r4, #0x64
        sub     fp, r7, #0xd
        bhi     L53dbfc
        cmp     r4, #0
        mov     r8, sp
        mov     r2, #0
        bls     L53dba4
L53db80:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, r8, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53db80
L53dba4:
        ldr     r5, L53dc5c
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53dbe4
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53dc0c
L53dbe4:
        cmp     sb, #0
        beq     L53dc1c
        cmp     r4, #0
        beq     L53dc2c
        cmp     r4, #0x64
        bls     L53dc3c
L53dbfc:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, fp
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dc0c:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dc1c:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dc2c:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dc3c:
        add     r2, r4, r4, lsl #4
        mov     r3, r4
        mov     r1, r8
        mov     r0, sb
        bl      Fn_540cc8
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dc5c:
        .word   0x009a108c
L53dc60:
        .word   0x008aac08
L53dc64:
        .word   0xd8a0c7f8
L53dc68:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendComment_53daf8, . - frd_u_GetFriendComment_53daf8

@ FUN_0053dd0c
        .global frd_u_GetFriendProfile_53dd0c
        .type   frd_u_GetFriendProfile_53dd0c, %function
frd_u_GetFriendProfile_53dd0c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53dd90
        mov     r7, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53dd94
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53dd5c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53dd98
        beq     L53dd8c
L53dd5c:
        ldr     r0, L53dd9c
        cmp     r5, #0
        cmpne   r6, #0
        beq     L53dd8c
        cmp     r7, #0x64
        ldrhi   r0, L53dda0
        bhi     L53dd8c
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_540d9c
L53dd8c:
        pop     {r4, r5, r6, r7, r8, pc}
L53dd90:
        .word   0x009a108c
L53dd94:
        .word   0x008aac08
L53dd98:
        .word   0xd8a0c7f8
L53dd9c:
        .word   0xe0e0c7f6
L53dda0:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendProfile_53dd0c, . - frd_u_GetFriendProfile_53dd0c

@ FUN_0053dda4
        .global frd_u_GetFriendProfile_53dda4
        .type   frd_u_GetFriendProfile_53dda4, %function
frd_u_GetFriendProfile_53dda4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     r5, r1
        mov     fp, r0
        ldr     r6, L53dee4
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53dee8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53deec
        cmp     r7, #0
        bne     L53ddfc
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53dea8
L53ddfc:
        ldr     r7, L53def0
        cmp     r5, #0
        beq     L53deb8
        cmp     r4, #0x64
        sub     r8, r7, #0xd
        bhi     L53de98
        cmp     r4, #0
        mov     sb, sp
        mov     r2, #0
        bls     L53de48
L53de24:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, sb, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53de24
L53de48:
        ldr     r5, L53dee4
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53de88
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53dea8
L53de88:
        cmp     fp, #0
        beq     L53deb8
        cmp     r4, #0x64
        bls     L53dec8
L53de98:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dea8:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53deb8:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dec8:
        mov     r2, r4
        mov     r1, sb
        mov     r0, fp
        bl      Fn_540d9c
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53dee4:
        .word   0x009a108c
L53dee8:
        .word   0x008aac08
L53deec:
        .word   0xd8a0c7f8
L53def0:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendProfile_53dda4, . - frd_u_GetFriendProfile_53dda4

@ FUN_0053df68
        .global frd_u_GetMyFriendKey_53df68
        .type   frd_u_GetMyFriendKey_53df68, %function
frd_u_GetMyFriendKey_53df68:
        push    {r4, r5, lr}
        sub     sp, sp, #0x14
        ldr     r4, L53dfcc
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53dfd0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L53dfac
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53dfc4
L53dfac:
        mov     r0, sp
        bl      Fn_540aec
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrge   r0, [sp]
        movlt   r0, #0
L53dfc4:
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
L53dfcc:
        .word   0x009a108c
L53dfd0:
        .word   0x008aac08
        .size   frd_u_GetMyFriendKey_53df68, . - frd_u_GetMyFriendKey_53df68

@ FUN_0053e054
        .global frd_a_LoadLocalAccount_53e054
        .type   frd_a_LoadLocalAccount_53e054, %function
frd_a_LoadLocalAccount_53e054:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53e0a0
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e0a4
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        ldreq   r0, L53e0a8
        beq     L53e09c
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_53bcf0
L53e09c:
        pop     {r4, r5, r6, pc}
L53e0a0:
        .word   0x009a108c
L53e0a4:
        .word   0x008b7cc8
L53e0a8:
        .word   0xd8a0c7f8
        .size   frd_a_LoadLocalAccount_53e054, . - frd_a_LoadLocalAccount_53e054

@ FUN_0053e0ac
        .global frd_u_UpdateMyPresence_53e0ac
        .type   frd_u_UpdateMyPresence_53e0ac, %function
frd_u_UpdateMyPresence_53e0ac:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53e140
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r7, L53e144
        ldr     r0, [r7, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53e0f8
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53e148
        beq     L53e13c
L53e0f8:
        cmp     r6, #0
        ldreq   r0, L53e14c
        beq     L53e13c
        ldr     r4, L53e150
        mov     r0, r4
        bl      Fn_0244c8
        mov     r1, r6
        mov     r0, r5
        bl      Fn_540bd4
        mov     r6, r0
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrge   r0, [r5, #8]
        strge   r0, [r7, #8]
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r6
L53e13c:
        pop     {r4, r5, r6, r7, r8, pc}
L53e140:
        .word   0x009a108c
L53e144:
        .word   0x008aac08
L53e148:
        .word   0xd8a0c7f8
L53e14c:
        .word   0xe0e0c7f6
L53e150:
        .word   0x009a1080
        .size   frd_u_UpdateMyPresence_53e0ac, . - frd_u_UpdateMyPresence_53e0ac

@ FUN_0053e154
        .global frd_a_UpdatePreference_53e154
        .type   frd_a_UpdatePreference_53e154, %function
frd_a_UpdatePreference_53e154:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53e1b0
        mov     r7, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e1b4
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        ldreq   r0, L53e1b8
        beq     L53e1ac
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_53bd2c
L53e1ac:
        pop     {r4, r5, r6, r7, r8, pc}
L53e1b0:
        .word   0x009a108c
L53e1b4:
        .word   0x008b7cc8
L53e1b8:
        .word   0xd8a0c7f8
        .size   frd_a_UpdatePreference_53e154, . - frd_a_UpdatePreference_53e154

@ FUN_0053e23c
        .global frd_u_GetMyPresence_53e23c
        .type   frd_u_GetMyPresence_53e23c, %function
frd_u_GetMyPresence_53e23c:
        push    {r4, r5, r6, r7, r8, lr}
        sub     sp, sp, #0x130
        mov     r4, r0
        mov     r5, r2
        bl      Fn_53e8b0
        ands    r1, r0, #0x80000000
        bmi     L53e320
        ldr     r0, L53e328
        mov     r8, sp
        mov     r7, r0
        bl      Fn_0244c8
        ldr     r0, L53e32c
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r7
        bl      Fn_024568
        cmp     r6, #0
        bne     L53e29c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53e330
        beq     L53e2a4
L53e29c:
        mov     r0, r8
        bl      Fn_540a60
L53e2a4:
        ands    r1, r0, #0x80000000
        bmi     L53e320
        cmp     r5, #0
        mov     r1, #0
        movhi   r3, #0
        bls     L53e320
L53e2bc:
        ldr     r2, [sp, #8]
        cmp     r2, #0
        beq     L53e2dc
        add     ip, r1, r1, lsl #1
        add     ip, r4, ip, lsl #4
        ldr     ip, [ip, #8]
        cmp     r2, ip
        beq     L53e314
L53e2dc:
        add     r2, r1, r1, lsl #1
        add     ip, r4, r2, lsl #4
        strb    r3, [ip, #0x2d]
        str     r3, [ip]
        str     r3, [ip, #4]
        str     r3, [ip, #8]
        str     r3, [ip, #0xc]
        str     r3, [ip, #0x10]
        str     r3, [ip, #0x14]
        str     r3, [ip, #0x18]
        str     r3, [ip, #0x1c]
        str     r3, [ip, #0x20]
        str     r3, [ip, #0x24]
        str     r3, [ip, #0x28]
L53e314:
        add     r1, r1, #1
        cmp     r1, r5
        blo     L53e2bc
L53e320:
        add     sp, sp, #0x130
        pop     {r4, r5, r6, r7, r8, pc}
L53e328:
        .word   0x009a108c
L53e32c:
        .word   0x008aac08
L53e330:
        .word   0xd8a0c7f8
        .size   frd_u_GetMyPresence_53e23c, . - frd_u_GetMyPresence_53e23c

@ FUN_0053e540
        .global frd_a_UpdatePlayingGame_53e540
        .type   frd_a_UpdatePlayingGame_53e540, %function
frd_a_UpdatePlayingGame_53e540:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53e58c
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e590
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        ldreq   r0, L53e594
        beq     L53e588
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_53bf68
L53e588:
        pop     {r4, r5, r6, pc}
L53e58c:
        .word   0x009a108c
L53e590:
        .word   0x008b7cc8
L53e594:
        .word   0xd8a0c7f8
        .size   frd_a_UpdatePlayingGame_53e540, . - frd_a_UpdatePlayingGame_53e540

@ FUN_0053e598
        .global frd_a_CreateLocalAccount_53e598
        .type   frd_a_CreateLocalAccount_53e598, %function
frd_a_CreateLocalAccount_53e598:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r5, r0
        mov     r6, r1
        mov     r7, r2
        ldr     r4, L53e5fc
        mov     r8, r3
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e600
        ldr     r0, [r0]
        cmp     r0, #0
        movne   sb, #1
        moveq   sb, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     sb, #0
        ldreq   r0, L53e604
        beq     L53e5f8
        mov     r3, r8
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, sb, sl, lr}
        b       Fn_53bfb0
L53e5f8:
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L53e5fc:
        .word   0x009a108c
L53e600:
        .word   0x008b7cc8
L53e604:
        .word   0xd8a0c7f8
        .size   frd_a_CreateLocalAccount_53e598, . - frd_a_CreateLocalAccount_53e598

@ FUN_0053e608
        .global frd_a_DeleteLocalAccount_53e608
        .type   frd_a_DeleteLocalAccount_53e608, %function
frd_a_DeleteLocalAccount_53e608:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53e654
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e658
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        ldreq   r0, L53e65c
        beq     L53e650
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_53c000
L53e650:
        pop     {r4, r5, r6, pc}
L53e654:
        .word   0x009a108c
L53e658:
        .word   0x008b7cc8
L53e65c:
        .word   0xd8a0c7f8
        .size   frd_a_DeleteLocalAccount_53e608, . - frd_a_DeleteLocalAccount_53e608

@ FUN_0053e6f8
        .global frd_a_IncrementMoveCount_53e6f8
        .type   frd_a_IncrementMoveCount_53e6f8, %function
frd_a_IncrementMoveCount_53e6f8:
        push    {r4, r5, r6, lr}
        ldr     r4, L53e73c
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e740
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        ldreq   r0, L53e744
        beq     L53e738
        pop     {r4, r5, r6, lr}
        b       Fn_53c078
L53e738:
        pop     {r4, r5, r6, pc}
L53e73c:
        .word   0x009a108c
L53e740:
        .word   0x008b7cc8
L53e744:
        .word   0xd8a0c7f8
        .size   frd_a_IncrementMoveCount_53e6f8, . - frd_a_IncrementMoveCount_53e6f8

@ FUN_0053e784
        .global frd_a_UnloadLocalAccount_53e784
        .type   frd_a_UnloadLocalAccount_53e784, %function
frd_a_UnloadLocalAccount_53e784:
        push    {r4, r5, r6, lr}
        ldr     r4, L53e7c8
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e7cc
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        ldreq   r0, L53e7d0
        beq     L53e7c4
        pop     {r4, r5, r6, lr}
        b       Fn_53c0a8
L53e7c4:
        pop     {r4, r5, r6, pc}
L53e7c8:
        .word   0x009a108c
L53e7cc:
        .word   0x008b7cc8
L53e7d0:
        .word   0xd8a0c7f8
        .size   frd_a_UnloadLocalAccount_53e784, . - frd_a_UnloadLocalAccount_53e784

@ FUN_0053e7d4
        .global frd_a_UpdateFavoriteGame_53e7d4
        .type   frd_a_UpdateFavoriteGame_53e7d4, %function
frd_a_UpdateFavoriteGame_53e7d4:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53e820
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53e824
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        ldreq   r0, L53e828
        beq     L53e81c
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_53c0dc
L53e81c:
        pop     {r4, r5, r6, pc}
L53e820:
        .word   0x009a108c
L53e824:
        .word   0x008b7cc8
L53e828:
        .word   0xd8a0c7f8
        .size   frd_a_UpdateFavoriteGame_53e7d4, . - frd_a_UpdateFavoriteGame_53e7d4

@ FUN_0053ea50
        .global frd_u_GetMyLocalAccountId_53ea50
        .type   frd_u_GetMyLocalAccountId_53ea50, %function
frd_u_GetMyLocalAccountId_53ea50:
        push    {r3, r4, r5, lr}
        ldr     r4, L53eaac
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53eab0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L53ea90
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53eaa8
L53ea90:
        mov     r0, sp
        bl      Fn_5410ec
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrbge  r0, [sp]
        movlt   r0, #0
L53eaa8:
        pop     {r3, r4, r5, pc}
L53eaac:
        .word   0x009a108c
L53eab0:
        .word   0x008aac08
        .size   frd_u_GetMyLocalAccountId_53ea50, . - frd_u_GetMyLocalAccountId_53ea50

@ FUN_0053eab4
        .global frd_u_GetMyPreference_53eab4
        .type   frd_u_GetMyPreference_53eab4, %function
frd_u_GetMyPreference_53eab4:
        push    {r4, r5, lr}
        sub     sp, sp, #0xc
        ldr     r4, L53eb24
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53eb28
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L53eaf8
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53eb1c
L53eaf8:
        mov     r2, sp
        add     r1, sp, #8
        add     r0, sp, #4
        bl      Fn_540c30
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrsbge r0, [sp]
        eorge   r0, r0, #1
        movlt   r0, #0
L53eb1c:
        add     sp, sp, #0xc
        pop     {r4, r5, pc}
L53eb24:
        .word   0x009a108c
L53eb28:
        .word   0x008aac08
        .size   frd_u_GetMyPreference_53eab4, . - frd_u_GetMyPreference_53eab4

@ FUN_0053ec24
        .global frd_a_SetNcPrincipalId_53ec24
        .type   frd_a_SetNcPrincipalId_53ec24, %function
frd_a_SetNcPrincipalId_53ec24:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53ec70
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53ec74
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        ldreq   r0, L53ec78
        beq     L53ec6c
        mov     r0, r5
        pop     {r4, r5, r6, lr}
        b       Fn_53c2b0
L53ec6c:
        pop     {r4, r5, r6, pc}
L53ec70:
        .word   0x009a108c
L53ec74:
        .word   0x008b7cc8
L53ec78:
        .word   0xd8a0c7f8
        .size   frd_a_SetNcPrincipalId_53ec24, . - frd_a_SetNcPrincipalId_53ec24

@ FUN_0053ec7c
        .global frd_u_GetEventNotification_53ec7c
        .type   frd_u_GetEventNotification_53ec7c, %function
frd_u_GetEventNotification_53ec7c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        sub     sp, sp, #8
        ldr     r4, L53ed04
        mov     r7, r1
        mov     r5, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53ed08
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53eccc
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53ecfc
L53eccc:
        cmp     r6, #0
        moveq   r0, #0
        beq     L53ecfc
        mov     r3, sp
        add     r2, sp, #4
        mov     r1, r7
        mov     r0, r6
        bl      Fn_5411a0
        cmp     r5, #0
        ldrbne  r0, [sp, #4]
        strbne  r0, [r5]
        ldr     r0, [sp]
L53ecfc:
        add     sp, sp, #8
        pop     {r4, r5, r6, r7, r8, pc}
L53ed04:
        .word   0x009a108c
L53ed08:
        .word   0x008aac08
        .size   frd_u_GetEventNotification_53ec7c, . - frd_u_GetEventNotification_53ec7c

@ FUN_0053ed0c
        .global frd_u_GetFriendPlayingGame_53ed0c
        .type   frd_u_GetFriendPlayingGame_53ed0c, %function
frd_u_GetFriendPlayingGame_53ed0c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r6, r0
        mov     r7, r1
        ldr     r4, L53ed9c
        mov     r5, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53eda0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53ed5c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53eda4
        beq     L53ed98
L53ed5c:
        ldr     r0, L53eda8
        cmp     r6, #0
        cmpne   r7, #0
        beq     L53ed98
        cmp     r5, #0x64
        ldrhi   r0, L53edac
        bhi     L53ed98
        cmp     r5, #0
        moveq   r0, #0
        beq     L53ed98
        mov     r2, r5
        mov     r1, r7
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_541218
L53ed98:
        pop     {r4, r5, r6, r7, r8, pc}
L53ed9c:
        .word   0x009a108c
L53eda0:
        .word   0x008aac08
L53eda4:
        .word   0xd8a0c7f8
L53eda8:
        .word   0xe0e0c7f6
L53edac:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendPlayingGame_53ed0c, . - frd_u_GetFriendPlayingGame_53ed0c

@ FUN_0053edb0
        .global frd_u_GetFriendPlayingGame_53edb0
        .type   frd_u_GetFriendPlayingGame_53edb0, %function
frd_u_GetFriendPlayingGame_53edb0:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     sb, r0
        mov     r5, r1
        ldr     r6, L53ef10
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53ef14
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53ef18
        cmp     r7, #0
        bne     L53ee08
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53eebc
L53ee08:
        ldr     r7, L53ef1c
        cmp     sb, #0
        beq     L53eecc
        cmp     r4, #0
        beq     L53ef00
        cmp     r4, #0x64
        sub     fp, r7, #0xd
        bhi     L53eeac
        cmp     r4, #0
        mov     r8, sp
        mov     r2, #0
        bls     L53ee5c
L53ee38:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, r8, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53ee38
L53ee5c:
        ldr     r5, L53ef10
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53ee9c
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53eebc
L53ee9c:
        cmp     sb, #0
        beq     L53eecc
        cmp     r4, #0x64
        bls     L53eedc
L53eeac:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, fp
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53eebc:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53eecc:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53eedc:
        cmp     r4, #0
        beq     L53ef00
        mov     r2, r4
        mov     r1, r8
        mov     r0, sb
        bl      Fn_541218
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ef00:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ef10:
        .word   0x009a108c
L53ef14:
        .word   0x008aac08
L53ef18:
        .word   0xd8a0c7f8
L53ef1c:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendPlayingGame_53edb0, . - frd_u_GetFriendPlayingGame_53edb0

@ FUN_0053ef20
        .global frd_u_GetMyApproachContext_53ef20
        .type   frd_u_GetMyApproachContext_53ef20, %function
frd_u_GetMyApproachContext_53ef20:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53efdc
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53efe0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        bne     L53ef68
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53efe4
        beq     L53efa8
L53ef68:
        cmp     r5, #0
        ldreq   r0, L53efe8
        beq     L53efa8
        ldr     r4, L53efec
        mov     r0, r4
        bl      Fn_0244c8
        nop
        nop
        bl      Fn_53eb2c
        cmp     r0, #0
        nop
        beq     L53efac
        ldr     r5, L53eff0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
L53efa8:
        pop     {r4, r5, r6, pc}
L53efac:
        mov     r0, r5
        bl      Fn_541274
        mov     r6, r0
        ands    r0, r0, #0x80000000
        bpl     L53efcc
        mov     r1, #0x200
        mov     r0, r5
        bl      Fn_1fddd8
L53efcc:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r6
        pop     {r4, r5, r6, pc}
L53efdc:
        .word   0x009a108c
L53efe0:
        .word   0x008aac08
L53efe4:
        .word   0xd8a0c7f8
L53efe8:
        .word   0xe0e0c7f6
L53efec:
        .word   0x009a1074
L53eff0:
        .word   0xd8a0c4f9
        .size   frd_u_GetMyApproachContext_53ef20, . - frd_u_GetMyApproachContext_53ef20

@ FUN_0053eff4
        .global frd_u_GetMyFriendKey_53eff4
        .type   frd_u_GetMyFriendKey_53eff4, %function
frd_u_GetMyFriendKey_53eff4:
        push    {r4, r5, lr}
        sub     sp, sp, #0x14
        ldr     r4, L53f060
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53f064
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L53f038
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53f050
L53f038:
        mov     r0, sp
        bl      Fn_540aec
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrdge  r0, r1, [sp, #8]
        bge     L53f058
L53f050:
        mov     r0, #0
        mov     r1, r0
L53f058:
        add     sp, sp, #0x14
        pop     {r4, r5, pc}
L53f060:
        .word   0x009a108c
L53f064:
        .word   0x008aac08
        .size   frd_u_GetMyFriendKey_53eff4, . - frd_u_GetMyFriendKey_53eff4

@ FUN_0053f068
        .global frd_u_GetMyPresence_53f068
        .type   frd_u_GetMyPresence_53f068, %function
frd_u_GetMyPresence_53f068:
        push    {r4, r5, r6, r7, lr}
        sub     sp, sp, #0x12c
        ldr     r0, L53f0dc
        bl      Fn_01b624
        ldr     r4, L53f0e0
        mov     r5, sp
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r6, L53f0e4
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        bne     L53f0bc
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53f0e8
        beq     L53f0c4
L53f0bc:
        mov     r0, r5
        bl      Fn_540a60
L53f0c4:
        and     r1, r0, #0x80000000
        cmp     r1, #0
        ldrge   r1, [sp, #8]
        strge   r1, [r6, #8]
        add     sp, sp, #0x12c
        pop     {r4, r5, r6, r7, pc}
L53f0dc:
        .word   0x009a1080
L53f0e0:
        .word   0x009a108c
L53f0e4:
        .word   0x008aac08
L53f0e8:
        .word   0xd8a0c7f8
        .size   frd_u_GetMyPresence_53f068, . - frd_u_GetMyPresence_53f068

@ FUN_0053f0ec
        .global frd_u_AddFriendWithApproach_53f0ec
        .type   frd_u_AddFriendWithApproach_53f0ec, %function
frd_u_AddFriendWithApproach_53f0ec:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53f1bc
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53f1c0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        bne     L53f138
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53f1c4
        beq     L53f188
L53f138:
        cmp     r5, #0
        ldreq   r0, L53f1c8
        beq     L53f188
        ldr     r0, [r5]
        cmp     r0, #0
        ldreq   r0, L53f1cc
        beq     L53f188
        ldr     r4, L53f1d0
        mov     r0, r4
        bl      Fn_0244c8
        nop
        nop
        bl      Fn_53eb2c
        cmp     r0, #0
        nop
        beq     L53f18c
        ldr     r5, L53f1d4
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
L53f188:
        pop     {r3, r4, r5, r6, r7, pc}
L53f18c:
        mov     r0, #0
        str     r0, [sp]
        ldr     r0, [r5]
        mov     r3, #1
        mov     r2, sp
        mov     r1, r6
        bl      Fn_5412c4
        mov     r5, r0
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
        pop     {r3, r4, r5, r6, r7, pc}
L53f1bc:
        .word   0x009a108c
L53f1c0:
        .word   0x008aac08
L53f1c4:
        .word   0xd8a0c7f8
L53f1c8:
        .word   0xe0e0c7f6
L53f1cc:
        .word   0xe0e0c7f7
L53f1d0:
        .word   0x009a1074
L53f1d4:
        .word   0xd8a0c4f9
        .size   frd_u_AddFriendWithApproach_53f0ec, . - frd_u_AddFriendWithApproach_53f0ec

@ FUN_0053f298
        .global frd_u_DecryptApproachContext_53f298
        .type   frd_u_DecryptApproachContext_53f298, %function
frd_u_DecryptApproachContext_53f298:
        push    {r4, r5, r6, r7, lr}
        mov     r5, r0
        sub     sp, sp, #0x204
        ldr     r4, L53f33c
        mov     r6, r1
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53f340
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        bne     L53f2e8
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53f344
        beq     L53f334
L53f2e8:
        cmp     r5, #0
        ldreq   r0, L53f348
        beq     L53f334
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp, #0x58]
        mov     r3, #1
        mov     r2, r3
        mov     r1, r6
        mov     r0, sp
        bl      Fn_541538
        mov     r4, r0
        ands    r0, r0, #0x80000000
        bmi     L53f330
        mov     r2, #0x60
        add     r1, sp, #0x60
        mov     r0, r5
        bl      Fn_20004c
L53f330:
        mov     r0, r4
L53f334:
        add     sp, sp, #0x204
        pop     {r4, r5, r6, r7, pc}
L53f33c:
        .word   0x009a108c
L53f340:
        .word   0x008aac08
L53f344:
        .word   0xd8a0c7f8
L53f348:
        .word   0xe0e0c7f6
        .size   frd_u_DecryptApproachContext_53f298, . - frd_u_DecryptApproachContext_53f298

@ FUN_0053f34c
        .global frd_u_GetFriendFavoriteGame_53f34c
        .type   frd_u_GetFriendFavoriteGame_53f34c, %function
frd_u_GetFriendFavoriteGame_53f34c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53f3d0
        mov     r7, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53f3d4
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53f39c
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53f3d8
        beq     L53f3cc
L53f39c:
        ldr     r0, L53f3dc
        cmp     r5, #0
        cmpne   r6, #0
        beq     L53f3cc
        cmp     r7, #0x64
        ldrhi   r0, L53f3e0
        bhi     L53f3cc
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_541328
L53f3cc:
        pop     {r4, r5, r6, r7, r8, pc}
L53f3d0:
        .word   0x009a108c
L53f3d4:
        .word   0x008aac08
L53f3d8:
        .word   0xd8a0c7f8
L53f3dc:
        .word   0xe0e0c7f6
L53f3e0:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendFavoriteGame_53f34c, . - frd_u_GetFriendFavoriteGame_53f34c

@ FUN_0053f3e4
        .global frd_u_GetFriendFavoriteGame_53f3e4
        .type   frd_u_GetFriendFavoriteGame_53f3e4, %function
frd_u_GetFriendFavoriteGame_53f3e4:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     r5, r1
        mov     fp, r0
        ldr     r6, L53f524
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53f528
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53f52c
        cmp     r7, #0
        bne     L53f43c
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53f4e8
L53f43c:
        ldr     r7, L53f530
        cmp     r5, #0
        beq     L53f4f8
        cmp     r4, #0x64
        sub     r8, r7, #0xd
        bhi     L53f4d8
        cmp     r4, #0
        mov     sb, sp
        mov     r2, #0
        bls     L53f488
L53f464:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, sb, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53f464
L53f488:
        ldr     r5, L53f524
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53f4c8
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53f4e8
L53f4c8:
        cmp     fp, #0
        beq     L53f4f8
        cmp     r4, #0x64
        bls     L53f508
L53f4d8:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f4e8:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f4f8:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f508:
        mov     r2, r4
        mov     r1, sb
        mov     r0, fp
        bl      Fn_541328
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f524:
        .word   0x009a108c
L53f528:
        .word   0x008aac08
L53f52c:
        .word   0xd8a0c7f8
L53f530:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendFavoriteGame_53f3e4, . - frd_u_GetFriendFavoriteGame_53f3e4

@ FUN_0053f534
        .global frd_u_GetFriendRelationship_53f534
        .type   frd_u_GetFriendRelationship_53f534, %function
frd_u_GetFriendRelationship_53f534:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53f5b8
        mov     r7, r2
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53f5bc
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r8, #1
        moveq   r8, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r8, #0
        bne     L53f584
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53f5c0
        beq     L53f5b4
L53f584:
        ldr     r0, L53f5c4
        cmp     r5, #0
        cmpne   r6, #0
        beq     L53f5b4
        cmp     r7, #0x64
        ldrhi   r0, L53f5c8
        bhi     L53f5b4
        mov     r2, r7
        mov     r1, r6
        mov     r0, r5
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_54138c
L53f5b4:
        pop     {r4, r5, r6, r7, r8, pc}
L53f5b8:
        .word   0x009a108c
L53f5bc:
        .word   0x008aac08
L53f5c0:
        .word   0xd8a0c7f8
L53f5c4:
        .word   0xe0e0c7f6
L53f5c8:
        .word   0xe0e0c7e9
        .size   frd_u_GetFriendRelationship_53f534, . - frd_u_GetFriendRelationship_53f534

@ FUN_0053f5cc
        .global frd_u_GetFriendRelationship_53f5cc
        .type   frd_u_GetFriendRelationship_53f5cc, %function
frd_u_GetFriendRelationship_53f5cc:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     r5, r1
        mov     fp, r0
        ldr     r6, L53f70c
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53f710
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53f714
        cmp     r7, #0
        bne     L53f624
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53f6d0
L53f624:
        ldr     r7, L53f718
        cmp     r5, #0
        beq     L53f6e0
        cmp     r4, #0x64
        sub     r8, r7, #0xd
        bhi     L53f6c0
        cmp     r4, #0
        mov     sb, sp
        mov     r2, #0
        bls     L53f670
L53f64c:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, sb, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53f64c
L53f670:
        ldr     r5, L53f70c
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53f6b0
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53f6d0
L53f6b0:
        cmp     fp, #0
        beq     L53f6e0
        cmp     r4, #0x64
        bls     L53f6f0
L53f6c0:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f6d0:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f6e0:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f6f0:
        mov     r2, r4
        mov     r1, sb
        mov     r0, fp
        bl      Fn_54138c
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53f70c:
        .word   0x009a108c
L53f710:
        .word   0x008aac08
L53f714:
        .word   0xd8a0c7f8
L53f718:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendRelationship_53f5cc, . - frd_u_GetFriendRelationship_53f5cc

@ FUN_0053fa1c
        .global frd_u_HasLoggedIn_53fa1c
        .type   frd_u_HasLoggedIn_53fa1c, %function
frd_u_HasLoggedIn_53fa1c:
        push    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0xc
        mov     r5, r0
        add     r0, sp, #0x40
        mov     r7, r2
        mov     r8, r3
        ldr     r4, L53fb28
        ldm     r0, {sb, sl}
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r6, L53fb2c
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   fp, #1
        moveq   fp, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     fp, #0
        bne     L53fa78
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53fb30
        beq     L53fb14
L53fa78:
        ldr     r4, L53fb28
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, [r6, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        nop
        bne     L53fab8
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53fb1c
L53fab8:
        mov     r0, sp
        bl      Fn_540878
        ands    r0, r0, #0x80000000
        nop
        bmi     L53fb1c
        ldrb    r0, [sp]
        cmp     r0, #0
        beq     L53fb1c
        ldr     r0, L53fb34
        cmp     r5, #0
        cmpne   r7, #0
        beq     L53fb14
        cmp     r8, #0
        beq     L53fb14
        ldr     r0, [r5]
        cmp     r0, #0
        ldreq   r0, L53fb38
        beq     L53fb14
        stm     sp, {sb, sl}
        ldr     r1, [sp, #0x10]
        mov     r3, r8
        mov     r2, r7
        bl      Fn_5414b4
L53fb14:
        add     sp, sp, #0x1c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53fb1c:
        add     sp, sp, #0x1c
        ldr     r0, L53fb3c
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53fb28:
        .word   0x009a108c
L53fb2c:
        .word   0x008aac08
L53fb30:
        .word   0xd8a0c7f8
L53fb34:
        .word   0xe0e0c7f6
L53fb38:
        .word   0xe0e0c7f7
L53fb3c:
        .word   0xd8a0c402
        .size   frd_u_HasLoggedIn_53fa1c, . - frd_u_HasLoggedIn_53fa1c

@ FUN_0053fb40
        .global frd_u_GetMyApproachContext_53fb40
        .type   frd_u_GetMyApproachContext_53fb40, %function
frd_u_GetMyApproachContext_53fb40:
        push    {r4, r5, r6, lr}
        mov     r5, r0
        ldr     r4, L53fc08
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53fc0c
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r6, #1
        moveq   r6, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r6, #0
        bne     L53fb88
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L53fc10
        beq     L53fbc8
L53fb88:
        cmp     r5, #0
        ldreq   r0, L53fc14
        beq     L53fbc8
        ldr     r4, L53fc18
        mov     r0, r4
        bl      Fn_0244c8
        nop
        nop
        bl      Fn_53eb2c
        cmp     r0, #0
        nop
        beq     L53fbcc
        ldr     r5, L53fc1c
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r5
L53fbc8:
        pop     {r4, r5, r6, pc}
L53fbcc:
        mov     r0, r5
        bl      Fn_541274
        ldr     r1, L53fc20
        cmp     r0, r1
        moveq   r0, #0
        ands    r1, r0, #0x80000000
        mov     r6, r0
        bpl     L53fbf8
        mov     r1, #0x200
        mov     r0, r5
        bl      Fn_1fddd8
L53fbf8:
        mov     r0, r4
        bl      Fn_024568
        mov     r0, r6
        pop     {r4, r5, r6, pc}
L53fc08:
        .word   0x009a108c
L53fc0c:
        .word   0x008aac08
L53fc10:
        .word   0xd8a0c7f8
L53fc14:
        .word   0xe0e0c7f6
L53fc18:
        .word   0x009a1074
L53fc1c:
        .word   0xd8a0c4f9
L53fc20:
        .word   0xd860c4f2
        .size   frd_u_GetMyApproachContext_53fb40, . - frd_u_GetMyApproachContext_53fb40

@ FUN_0053fd10
        .global frd_u_GetFriendAttributeFlags_53fd10
        .type   frd_u_GetFriendAttributeFlags_53fd10, %function
frd_u_GetFriendAttributeFlags_53fd10:
        push    {r3, r4, r5, r6, r7, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L53fd70
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L53fd74
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        bne     L53fd58
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53fd6c
L53fd58:
        mov     r2, r5
        mov     r3, r6
        mov     r0, sp
        bl      Fn_5415f0
        ldr     r0, [sp]
L53fd6c:
        pop     {r3, r4, r5, r6, r7, pc}
L53fd70:
        .word   0x009a108c
L53fd74:
        .word   0x008aac08
        .size   frd_u_GetFriendAttributeFlags_53fd10, . - frd_u_GetFriendAttributeFlags_53fd10

@ FUN_0053fe10
        .global frd_u_GetFriendAttributeFlags_53fe10
        .type   frd_u_GetFriendAttributeFlags_53fe10, %function
frd_u_GetFriendAttributeFlags_53fe10:
        push    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
        sub     sp, sp, #0x400
        sub     sp, sp, #0x244
        mov     r5, r1
        mov     fp, r0
        ldr     r6, L53ff50
        mov     r4, r2
        mov     r0, r6
        bl      Fn_0244c8
        ldr     sl, L53ff54
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r6
        bl      Fn_024568
        ldr     r6, L53ff58
        cmp     r7, #0
        bne     L53fe68
        bl      Fn_53e748
        cmp     r0, #0
        beq     L53ff14
L53fe68:
        ldr     r7, L53ff5c
        cmp     r5, #0
        beq     L53ff24
        cmp     r4, #0x64
        sub     r8, r7, #0xd
        bhi     L53ff04
        cmp     r4, #0
        mov     sb, sp
        mov     r2, #0
        bls     L53feb4
L53fe90:
        ldr     r0, [r5, r2, lsl #2]
        add     r1, sb, r2, lsl #4
        mov     r3, #0
        str     r0, [r1], #8
        mov     ip, r3
        add     r2, r2, #1
        stm     r1, {r3, ip}
        cmp     r4, r2
        bhi     L53fe90
L53feb4:
        ldr     r5, L53ff50
        mov     r0, r5
        bl      Fn_0244c8
        ldr     r0, [sl, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r5
        bl      Fn_024568
        cmp     sl, #0
        nop
        bne     L53fef4
        bl      Fn_53e748
        cmp     r0, #0
        nop
        beq     L53ff14
L53fef4:
        cmp     fp, #0
        beq     L53ff24
        cmp     r4, #0x64
        bls     L53ff34
L53ff04:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r8
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ff14:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ff24:
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        mov     r0, r7
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ff34:
        mov     r2, r4
        mov     r1, sb
        mov     r0, fp
        bl      Fn_541634
        add     sp, sp, #0x400
        add     sp, sp, #0x244
        pop     {r4, r5, r6, r7, r8, sb, sl, fp, pc}
L53ff50:
        .word   0x009a108c
L53ff54:
        .word   0x008aac08
L53ff58:
        .word   0xd8a0c7f8
L53ff5c:
        .word   0xe0e0c7f6
        .size   frd_u_GetFriendAttributeFlags_53fe10, . - frd_u_GetFriendAttributeFlags_53fe10

@ FUN_005400fc
        .global frd_u_HasLoggedIn_5400fc
        .type   frd_u_HasLoggedIn_5400fc, %function
frd_u_HasLoggedIn_5400fc:
        .word   0xe0e0c7f6
        .word   0xe92d4ff8
        .word   0xe1a05000
        .word   0xe1a07002
        .word   0xe1a09001
        .word   0xe1a0a003
        .word   0xe59f40dc
        .word   0xe59d8028
        .word   0xe1a00004
        .word   0xebeb90e8
        .word   0xe59f60d0
        .word   0xe5960004
        .word   0xe3500000
        .word   0x13a0b001
        .word   0x03a0b000
        .word   0xe1a00004
        .word   0xebeb9109
        .word   0xe35b0000
        .word   0x1a000003
        .word   0xebfff97e
        .word   0xe3500000
        .word   0x059f00a8
        .word   0x0a000024
        .word   0xe59f4098
        .word   0xe1a00004
        .word   0xebeb90d8
        .word   0xe5960004
        .word   0xe3500000
        .word   0x13a06001
        .word   0x03a06000
        .word   0xe1a00004
        .word   0xebeb90fa
        .word   0xe3560000
        .word   0xe320f000
        .word   0x1a000003
        .word   0xebfff96e
        .word   0xe3500000
        .word   0xe320f000
        .word   0x0a000015
        .word   0xe1a0000d
        .word   0xeb0001b5
        .word   0xe2100102
        .word   0xe320f000
        .word   0x4a000010
        .word   0xe5dd0000
        .word   0xe3500000
        .word   0x0a00000d
        .word   0xe59f0044
        .word   0xe3550000
        .word   0x13570000
        .word   0x0a000008
        .word   0xe5950000
        .word   0xe3500000
        .word   0x059f0030
        .word   0x0a000004
        .word   0xe1a0300a
        .word   0xe1a02007
        .word   0xe1a01009
        .word   0xe58d8000
        .word   0xeb000561
        .word   0xe8bd8ff8
        .word   0xe59f0014
        .word   0xe8bd8ff8
        .size   frd_u_HasLoggedIn_5400fc, . - frd_u_HasLoggedIn_5400fc

@ FUN_0054031c
        .global frd_u_DecryptApproachContext_54031c
        .type   frd_u_DecryptApproachContext_54031c, %function
frd_u_DecryptApproachContext_54031c:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        mov     r6, r0
        sub     sp, sp, #0x200
        mov     r7, r1
        ldr     r4, L5403f4
        mov     r8, r2
        mov     r5, r3
        mov     sb, #1
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L5403f8
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     sl, #0
        bne     L540378
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L5403fc
        beq     L5403ec
L540378:
        cmp     r6, #0
        ldreq   r0, L540400
        beq     L5403ec
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp, #0x58]
        mov     r3, sb
        mov     r2, r8
        mov     r1, r7
        mov     r0, sp
        bl      Fn_541538
        ands    r1, r0, #0x80000000
        nop
        bmi     L5403ec
        ldr     r1, [sp, #0xc0]
        cmp     r5, #0
        str     r1, [r6]
        ldr     r1, [sp, #0xc4]
        str     r1, [r6, #4]
        ldr     r1, [sp, #0xc8]
        str     r1, [r6, #8]
        ldr     r1, [sp, #0xcc]
        str     r1, [r6, #0xc]
        ldr     r1, [sp, #0xd0]
        str     r1, [r6, #0x10]
        ldrh    r1, [sp, #0xd4]
        strh    r1, [r6, #0x14]
        ldrbne  r1, [sp, #6]
        strbne  r1, [r5]
L5403ec:
        add     sp, sp, #0x200
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5403f4:
        .word   0x009a108c
L5403f8:
        .word   0x008aac08
L5403fc:
        .word   0xd8a0c7f8
L540400:
        .word   0xe0e0c7f6
        .size   frd_u_DecryptApproachContext_54031c, . - frd_u_DecryptApproachContext_54031c

@ FUN_00540404
        .global frd_u_DecryptApproachContext_540404
        .type   frd_u_DecryptApproachContext_540404, %function
frd_u_DecryptApproachContext_540404:
        push    {r4, r5, r6, r7, r8, sb, sl, lr}
        sub     sp, sp, #0x200
        mov     r6, r0
        mov     r8, r1
        ldr     r4, L5404dc
        ldr     r7, [sp, #0x220]
        mov     sb, r2
        mov     r5, r3
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L5404e0
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   sl, #1
        moveq   sl, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     sl, #0
        bne     L540460
        bl      Fn_53e748
        cmp     r0, #0
        ldreq   r0, L5404e4
        beq     L5404d4
L540460:
        cmp     r6, #0
        ldreq   r0, L5404e8
        beq     L5404d4
        mov     r0, #0
        mov     r1, r0
        strd    r0, r1, [sp, #0x58]
        mov     r3, r7
        mov     r2, sb
        mov     r1, r8
        mov     r0, sp
        bl      Fn_541538
        ands    r1, r0, #0x80000000
        nop
        bmi     L5404d4
        ldr     r1, [sp, #0xc0]
        cmp     r5, #0
        str     r1, [r6]
        ldr     r1, [sp, #0xc4]
        str     r1, [r6, #4]
        ldr     r1, [sp, #0xc8]
        str     r1, [r6, #8]
        ldr     r1, [sp, #0xcc]
        str     r1, [r6, #0xc]
        ldr     r1, [sp, #0xd0]
        str     r1, [r6, #0x10]
        ldrh    r1, [sp, #0xd4]
        strh    r1, [r6, #0x14]
        ldrbne  r1, [sp, #6]
        strbne  r1, [r5]
L5404d4:
        add     sp, sp, #0x200
        pop     {r4, r5, r6, r7, r8, sb, sl, pc}
L5404dc:
        .word   0x009a108c
L5404e0:
        .word   0x008aac08
L5404e4:
        .word   0xd8a0c7f8
L5404e8:
        .word   0xe0e0c7f6
        .size   frd_u_DecryptApproachContext_540404, . - frd_u_DecryptApproachContext_540404

@ FUN_00541ad8
        .global frd_u_IsOnline_541ad8
        .type   frd_u_IsOnline_541ad8, %function
frd_u_IsOnline_541ad8:
        push    {r3, r4, r5, lr}
        ldr     r4, L541b34
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L541b38
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        bne     L541b18
        bl      Fn_53e748
        cmp     r0, #0
        beq     L541b30
L541b18:
        mov     r0, sp
        bl      Fn_541970
        and     r0, r0, #0x80000000
        cmp     r0, #0
        ldrsbge r0, [sp]
        movlt   r0, #0
L541b30:
        pop     {r3, r4, r5, pc}
L541b34:
        .word   0x009a108c
L541b38:
        .word   0x008aac08
        .size   frd_u_IsOnline_541ad8, . - frd_u_IsOnline_541ad8

@ FUN_00541b3c
        .global frd_a_AddFriendOnline_541b3c
        .type   frd_a_AddFriendOnline_541b3c, %function
frd_a_AddFriendOnline_541b3c:
        push    {r4, r5, r6, r7, r8, lr}
        mov     r5, r0
        mov     r6, r1
        ldr     r4, L541bac
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L541bb0
        ldr     r0, [r0]
        cmp     r0, #0
        movne   r7, #1
        moveq   r7, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r7, #0
        ldreq   r0, L541bb4
        beq     L541ba8
        cmp     r5, #0
        ldreq   r0, L541bb8
        beq     L541ba8
        ldr     r0, [r5]
        cmp     r0, #0
        ldreq   r0, L541bbc
        beq     L541ba8
        mov     r1, r0
        mov     r0, r6
        pop     {r4, r5, r6, r7, r8, lr}
        b       Fn_53ba44
L541ba8:
        pop     {r4, r5, r6, r7, r8, pc}
L541bac:
        .word   0x009a108c
L541bb0:
        .word   0x008b7cc8
L541bb4:
        .word   0xd8a0c7f8
L541bb8:
        .word   0xe0e0c7f6
L541bbc:
        .word   0xe0e0c7f7
        .size   frd_a_AddFriendOnline_541b3c, . - frd_a_AddFriendOnline_541b3c

@ FUN_0061d5c0
        .global mic_u_SetPower_61d5c0
        .type   mic_u_SetPower_61d5c0, %function
mic_u_SetPower_61d5c0:
        push    {r4, lr}
        mov     r4, r0
        bl      Fn_503c2c
        ands    r1, r0, #0x80000000
        bpl     L61d5e4
        ldr     r1, L61d644
        cmp     r0, r1
        lsrsne  r0, r0, #0x1f
        blne    Fn_024730
L61d5e4:
        mov     r0, #0
        bl      Fn_503bec
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
        nop
        nop
        bl      Fn_5036bc
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
        nop
        nop
        bl      Fn_503f20
        lsrs    r0, r0, #0x1f
        nop
        blne    Fn_024730
        ldr     r0, [r4, #0x18]!
        cmp     r0, #0
        beq     L61d640
        svc     #0x23
        mov     r0, #0
        str     r0, [r4]
L61d640:
        pop     {r4, pc}
L61d644:
        .word   0xc9408c01
        .size   mic_u_SetPower_61d5c0, . - mic_u_SetPower_61d5c0

@ FUN_00631664
        .global fs_USER_cmd804
        .type   fs_USER_cmd804, %function
fs_USER_cmd804:
        push    {r3, r4, r5, lr}
        mov     r4, r0
        ldr     r0, [r0, #4]
        mov     r5, r1
        cmp     r0, #0
        ldreq   r0, L63169c
        moveq   r1, pc
        bleq    Fn_010ccc
        ldr     r0, [r4, #4]
        mov     r1, r5
        str     r0, [sp]
        mov     r0, sp
        bl      Fn_4ef628
        pop     {r3, r4, r5, pc}
L63169c:
        .word   0xe0a046da
        .size   fs_USER_cmd804, . - fs_USER_cmd804

@ FUN_00668ddc
        .global ac_IsConnected_668ddc
        .type   ac_IsConnected_668ddc, %function
ac_IsConnected_668ddc:
        push    {r3, r4, r5, lr}
        ldr     r4, L668e3c
        mov     r0, r4
        bl      Fn_0244c8
        ldr     r0, L668e40
        ldr     r0, [r0, #4]
        cmp     r0, #0
        movne   r5, #1
        moveq   r5, #0
        mov     r0, r4
        bl      Fn_024568
        cmp     r5, #0
        mov     r4, #0
        bne     L668e24
        bl      Fn_4e19c8
        cmp     r0, #0
        moveq   r0, r4
        beq     L668e38
L668e24:
        mov     r1, sp
        mov     r0, #0
        strb    r4, [sp]
        bl      Fn_4e1d94
        ldrsb   r0, [sp]
L668e38:
        pop     {r3, r4, r5, pc}
L668e3c:
        .word   0x009a0ea8
L668e40:
        .word   0x008aab30
        .size   ac_IsConnected_668ddc, . - ac_IsConnected_668ddc
