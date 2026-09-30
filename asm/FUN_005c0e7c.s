	.arm
	.global GetText
GetText: @ file 0x005C0E7C
	mov ip, r0
	ldr r0, .L005C0EC4 @ 0x008AA7A4
	push {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq .L005C0EBC
	and r1, r2, #0xff
	mov r5, #1
	stm sp, {r1, r3, r5}
	and r1, r2, #0xff00
	mov r2, r4
	lsr r3, r1, #8
	mov r1, ip
	bl FUN_0056ed00
.L005C0EBC:
	add sp, sp, #0xc
	pop {r4, r5, pc}
.L005C0EC4:
	.word 0x008AA7A4
