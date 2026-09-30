	.arm
	.global ParseClim
ParseClim: @ file 0x00542C30
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r8, r1
	mov r7, r0
	beq .L00542CEC
	tst r8, #0x7f
	bne .L00542CEC
	tst r2, #3
	bne .L00542CEC
	cmp r2, #0x28
	bls .L00542CEC
	add sb, r8, r2
	ldr r0, [sb, #-4]!
	cmp r2, r0
	bls .L00542CEC
	add r0, r0, #3
	bic r0, r0, #3
	add r5, r8, r0
	ldr r2, .L00542D00 @ 0x02020000
	ldr r1, .L00542D04 @ 0x4D494C43
	mov r3, #1
	mov r0, r5
	bl FUN_00541ce0
	cmp r0, #0
	beq .L00542CEC
	ldrh r0, [r5, #0x10]
	mov r6, #0
	mov r1, r6
	cmp r0, #0
	ldrgt sl, .L00542D08 @ 0x989E9297
	mov r4, r6
	ble .L00542CEC
.L00542CAC:
	mov r0, r5
	bl FUN_00541d60
	mov r1, r0
	ldr r0, [r0]
	add r4, r4, #1
	adds r0, r0, sl
	ldrh r0, [r5, #0x10]
	moveq r6, r1
	cmp r0, r4
	bgt .L00542CAC
	cmp r6, #0
	beq .L00542CEC
	str r8, [r7], #4
	mov r0, #1
	stm r7, {r6, sb}
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
.L00542CEC:
	mov r0, #0
	str r0, [r7]
	str r0, [r7, #4]
	str r0, [r7, #8]
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
.L00542D00:
	.word 0x02020000
.L00542D04:
	.word 0x4D494C43
.L00542D08:
	.word 0x989E9297
