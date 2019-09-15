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
	.file	"binClock.cpp"
	.text
	.align	2
	.global	_ZN9bin_ClockC2Ev
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_ClockC2Ev, %function
_ZN9bin_ClockC2Ev:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	mov	r2, #0
	mov	r1, #0
	ldr	r0, [fp, #-8]
	bl	_ZN9bin_Clock9set_ClockEii
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_ClockC2Ev, .-_ZN9bin_ClockC2Ev
	.global	_ZN9bin_ClockC1Ev
	.set	_ZN9bin_ClockC1Ev,_ZN9bin_ClockC2Ev
	.align	2
	.global	_ZN9bin_ClockC2Eii
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_ClockC2Eii, %function
_ZN9bin_ClockC2Eii:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	_ZN9bin_Clock9set_ClockEii
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_ClockC2Eii, .-_ZN9bin_ClockC2Eii
	.global	_ZN9bin_ClockC1Eii
	.set	_ZN9bin_ClockC1Eii,_ZN9bin_ClockC2Eii
	.align	2
	.global	_ZN9bin_ClockC2Eiii
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_ClockC2Eiii, %function
_ZN9bin_ClockC2Eiii:
	.fnstart
.LFB13:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	mov	r0, r3
	bl	_ZN3BCDC1Ev
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	_ZN9bin_Clock9set_ClockEiii
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_ClockC2Eiii, .-_ZN9bin_ClockC2Eiii
	.global	_ZN9bin_ClockC1Eiii
	.set	_ZN9bin_ClockC1Eiii,_ZN9bin_ClockC2Eiii
	.align	2
	.global	_ZN9bin_Clock9set_ClockEiii
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_Clock9set_ClockEiii, %function
_ZN9bin_Clock9set_ClockEiii:
	.fnstart
.LFB15:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #59
	ble	.L8
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L8:
	ldr	r3, [fp, #-12]
	cmp	r3, #24
	ble	.L9
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
.L9:
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_Clock9set_ClockEiii, .-_ZN9bin_Clock9set_ClockEiii
	.align	2
	.global	_ZN9bin_Clock9set_ClockEii
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_Clock9set_ClockEii, %function
_ZN9bin_Clock9set_ClockEii:
	.fnstart
.LFB16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #59
	ble	.L11
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L11:
	ldr	r3, [fp, #-12]
	cmp	r3, #24
	ble	.L12
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
.L12:
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	mov	r1, #0
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_Clock9set_ClockEii, .-_ZN9bin_Clock9set_ClockEii
	.align	2
	.global	_ZN9bin_Clock11reset_ClockEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_Clock11reset_ClockEv, %function
_ZN9bin_Clock11reset_ClockEv:
	.fnstart
.LFB17:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r2, #0
	mov	r1, #0
	ldr	r0, [fp, #-8]
	bl	_ZN9bin_Clock9set_ClockEii
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_Clock11reset_ClockEv, .-_ZN9bin_Clock11reset_ClockEv
	.align	2
	.global	_ZN9bin_Clock18incrementar_ClockSEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_Clock18incrementar_ClockSEv, %function
_ZN9bin_Clock18incrementar_ClockSEv:
	.fnstart
.LFB18:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
	bl	_ZN3BCD15incrementar_BCDEv
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	cmp	r3, #60
	bne	.L16
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN3BCD15incrementar_BCDEv
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r1, #0
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #60
	bne	.L16
	ldr	r3, [fp, #-8]
	mov	r1, #0
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
.L16:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_Clock18incrementar_ClockSEv, .-_ZN9bin_Clock18incrementar_ClockSEv
	.align	2
	.global	_ZN9bin_Clock17incrementar_ClockEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN9bin_Clock17incrementar_ClockEv, %function
_ZN9bin_Clock17incrementar_ClockEv:
	.fnstart
.LFB19:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
	bl	_ZN3BCD15incrementar_BCDEv
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	cmp	r3, #60
	bne	.L19
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN3BCD15incrementar_BCDEv
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r1, #0
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #60
	bne	.L19
	ldr	r3, [fp, #-8]
	mov	r1, #0
	mov	r0, r3
	bl	_ZN3BCD6setBCDEi
.L19:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN9bin_Clock17incrementar_ClockEv, .-_ZN9bin_Clock17incrementar_ClockEv
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
