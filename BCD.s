	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"BCD.cpp"
	.text
	.align	2
	.global	_ZN3BCDC2Ev
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN3BCDC2Ev, %function
_ZN3BCDC2Ev:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3]
	mov	r0, #24
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.cantunwind
	.fnend
	.size	_ZN3BCDC2Ev, .-_ZN3BCDC2Ev
	.global	_ZN3BCDC1Ev
	.set	_ZN3BCDC1Ev,_ZN3BCDC2Ev
	.align	2
	.global	_ZN3BCDC2Ei
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN3BCDC2Ei, %function
_ZN3BCDC2Ei:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r0, [fp, #-12]
	bl	_Z16convertirDecimali
	mov	r2, r0
	ldr	r3, [fp, #-8]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN3BCDC2Ei, .-_ZN3BCDC2Ei
	.global	_ZN3BCDC1Ei
	.set	_ZN3BCDC1Ei,_ZN3BCDC2Ei
	.align	2
	.global	_ZN3BCD6setBCDEi
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN3BCD6setBCDEi, %function
_ZN3BCD6setBCDEi:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free
	ldr	r0, [fp, #-12]
	bl	_Z16convertirDecimali
	mov	r2, r0
	ldr	r3, [fp, #-8]
	str	r2, [r3, #4]
.L7:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN3BCD6setBCDEi, .-_ZN3BCD6setBCDEi
	.align	2
	.global	_ZN3BCD15incrementar_BCDEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN3BCD15incrementar_BCDEv, %function
_ZN3BCD15incrementar_BCDEv:
	.fnstart
.LFB13:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-8]
.L11:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	bhi	.L13
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3]
	add	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r3, #1
	ble	.L14
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L11
.L14:
	nop
.L13:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN3BCD15incrementar_BCDEv, .-_ZN3BCD15incrementar_BCDEv
	.align	2
	.global	_ZN3BCD7getSumaEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN3BCD7getSumaEv, %function
_ZN3BCD7getSumaEv:
	.fnstart
.LFB14:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN3BCD7getSumaEv, .-_ZN3BCD7getSumaEv
	.align	2
	.global	_Z16convertirDecimali
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z16convertirDecimali, %function
_Z16convertirDecimali:
	.fnstart
.LFB15:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r0, #24
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-8]
	bl	_Z2CDPii
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.cantunwind
	.fnend
	.size	_Z16convertirDecimali, .-_Z16convertirDecimali
	.align	2
	.global	_Z2CDPii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2CDPii, %function
_Z2CDPii:
	.fnstart
.LFB16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
.L21:
	ldr	r3, [fp, #-8]
	cmp	r3, #5
	bgt	.L20
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r1, r2, r3
	ldr	r2, [fp, #-20]
	asr	r3, r2, #31
	lsr	r3, r3, #31
	add	r2, r2, r3
	and	r2, r2, #1
	sub	r3, r2, r3
	str	r3, [r1]
	ldr	r3, [fp, #-20]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L21
.L20:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2CDPii, .-_Z2CDPii
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
