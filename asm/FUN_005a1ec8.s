	.arm
	.global MakeStr
MakeStr: @ file 0x005A1EC8
	push {r4, r5, r6, lr}
	mov r6, #0
	str r6, [r0]
	str r6, [r0, #0x14]
	str r6, [r0, #0xc]
	str r6, [r0, #0x10]
	str r6, [r0, #4]
	movs r5, r1
	mov r4, r0
	str r6, [r0, #8]
	beq .L005A1F94
	mov r0, r1
	bl FUN_00200e60
	ldr r2, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, r2
	ble .L005A1F64
	ldr r0, [r4]
	str r6, [r4, #0x14]
	cmp r0, #0
	beq .L005A1F2C
	mov r1, #0
	bl FUN_00029ed4
	str r6, [r4]
.L005A1F2C:
	ldr r0, [r4, #0xc]
	mov r2, #0
	mov r1, #0x10
	add r0, r0, #0x3f
	bic r0, r0, #0x3f
	str r0, [r4, #0x14]
	add r0, r0, r0, lsl #3
	bl FUN_000152e0
	str r0, [r4]
	ldr r1, [r4, #0x14]
	bl FUN_0001a4d4
	ldr r0, [r4]
	cmp r0, #0
	beq .L005A1F9C
.L005A1F64:
	ldr r0, [r4, #0x14]
	ldr r2, [r4]
	add r1, r4, #4
	add r0, r2, r0, lsl #3
	stm r1, {r0, r2}
	mov r1, r5
	ldr r2, [r4, #0xc]
	bl FUN_000317dc
	mov r0, r4
	nop
	bl FUN_005a1c98
	str r0, [r4, #0x10]
.L005A1F94:
	mov r0, r4
	pop {r4, r5, r6, pc}
.L005A1F9C:
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	str r6, [r4, #4]
	str r6, [r4, #8]
	b .L005A1F94
