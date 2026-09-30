	.arm
	.global TextResource_Lookup
TextResource_Lookup: @ file 0x0056ED00
	push {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	mov r4, r0
	mov r6, r1
	mov r7, r2
	mov sl, #1
	mov sb, #0
	ldr fp, .L0056EF7C @ 0x008AA7A4
	ldr r8, [sp, #0x38]
	ldrb r0, [fp]
	cmp r0, #0
	bne .L0056EDC4
	ldr r5, .L0056EF80 @ 0x009A0600
	add r0, r5, #0x400
	add r0, r0, #0x318
	bl FUN_0001611c
	add r0, r5, #0x710
	bl FUN_0001611c
	ldr r1, [r5, #0x708]
	sub r1, r1, #1
	str r1, [r5, #0x708]
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	str r1, [r5]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1, #0x18]
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldrne r2, [r0, #0x14]
	strne r2, [r1, #0x14]
	str sb, [r0, #0x14]
	str sb, [r0, #0x18]
	ldr r1, [r5, #4]
	cmp r1, #0
	streq r0, [r5, #4]
	beq .L0056EDA4
	str r1, [r0, #0x14]
	ldr r1, [r5, #4]
	str r0, [r1, #0x18]
	str r0, [r5, #4]
.L0056EDA4:
	add r0, r5, #0x710
	bl FUN_00016288
	add r0, r5, #0x720
	nop
	bl FUN_00016288
	mov r0, r4
	strb sl, [fp]
	bl FUN_0056eb20
.L0056EDC4:
	cmp r6, #0
	beq .L0056EF4C
	ldr r0, .L0056EF84 @ 0x009A04F4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x3c]
	strh sb, [r0, #0xa]
	ldr r3, [r4, #4]
	ldr r1, [r3, r1, lsl #2]
	cmp r1, #0
	ldrne r3, [r1]
	cmpne r3, r8
	bls .L0056EE34
	add r1, r1, r8, lsl #2
	ldr r1, [r1, #4]
	ldr r3, [r1]
	cmp r3, r2
	bls .L0056EE34
	add r1, r1, r2, lsl #1
	ldr r2, [r4, #8]
	ldrh r1, [r1, #4]
	add r1, r2, r1, lsl #3
	ldr r2, [r1]
	str r2, [r0]
	ldrh r2, [r1, #4]
	str r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #8]
	strh sl, [r0, #0xa]
.L0056EE34:
	ldr r1, [r0, #4]
	add r1, r1, #1
	cmp r1, r7
	bls .L0056EE50
	cmp r7, #0
	strbne sb, [r6]
	b .L0056EF4C
.L0056EE50:
	ldr r2, [r0]
	ldr r1, [r4, #0xc]
	ldrh r0, [r0, #8]
	add r2, r2, r1
	cmp r0, #1
	beq .L0056EF58
	cmp r0, #2
	strbeq sb, [r6]
	beq .L0056EEE0
	ldrb r0, [r2]
	mov r1, r6
	cmp r0, #0
	beq .L0056EEE0
.L0056EE84:
	and r0, r0, #0xff
	tst r0, #0x80
	addeq r2, r2, #1
	beq .L0056EEA4
	ldrb r3, [r2, #1]
	and r0, r0, #0x7f
	add r2, r2, #2
	orr r0, r3, r0, lsl #8
.L0056EEA4:
	add r3, r4, #0x10
	ldm r3, {r3, ip}
	add r0, r3, r0, lsl #1
	ldrh r0, [r0]
	ldrb r3, [r0, ip]!
	cmp r3, #0
	beq .L0056EED0
.L0056EEC0:
	strb r3, [r1], #1
	ldrb r3, [r0, #1]!
	cmp r3, #0
	bne .L0056EEC0
.L0056EED0:
	strb sb, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	bne .L0056EE84
.L0056EEE0:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq .L0056EF70
	add r4, r4, #0x10000
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq .L0056EF70
	mov r0, r6
	bl FUN_00200e60
	add r0, r0, #1
	mov r2, #0x10
	mov r1, #0
	bl FUN_00021ca0
	mov r5, r0
	mov r1, r6
	bl FUN_00202a48
	ldr r0, [r4, #0x1c]
	mov r3, r5
	mov r2, r7
	mov r1, r6
	bl FUN_005f1f08
	mov r4, r0
	mov r0, r5
	bl FUN_001fcd88
	cmp r4, #0
	nop
	bge .L0056EF70
.L0056EF4C:
	add sp, sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
.L0056EF58:
	mov r1, r2
	mov r0, r6
	bl FUN_00202a48
	nop
	nop
	b .L0056EEE0
.L0056EF70:
	add sp, sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
.L0056EF7C:
	.word 0x008AA7A4
.L0056EF80:
	.word 0x009A0600
.L0056EF84:
	.word 0x009A04F4
