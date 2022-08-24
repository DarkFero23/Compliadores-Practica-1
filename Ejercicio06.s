	.file	"Ejercicio06.cpp"
	.text
# ! ----------------------------------------------------------------
	.globl	__Z3divii
	.def	__Z3divii;	.scl	2;	.type	32;	.endef
__Z3divii:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	# * --------------------
	cltd
	idivl	12(%ebp) # * se realiza la division con signo
	popl	%ebp
	# * --------------------
	# * Se tiene el proceso de la division
	
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
# ! ----------------------------------------------------------------
# ! Se define la función "div"
LFE0:
	.globl	__Z4div4i
	.def	__Z4div4i;	.scl	2;	.type	32;	.endef
__Z4div4i:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	cltd
	andl	$3, %edx
	addl	%edx, %eax
	sarl	$2, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "abcdef\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	movl	$LC0, 44(%esp)
	movl	$11148, 40(%esp)
	movl	40(%esp), %eax
	cltd
	andl	$7, %edx
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, 36(%esp)
	movl	40(%esp), %eax
	cltd
	andl	$3, %edx
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 28(%esp)
	# ? --------------------------------
	movl	$4, 4(%esp)  	# * parámetro 4
	movl	$5, (%esp)   	# * parámetro 5
	call	__Z3divii		# ! Invocacion
	movl	%eax, 24(%esp) 	# * Se gurda el resultado
	# ? --------------------------------
	# ? Se realiza la invocacion a la función
	movl	$5, (%esp)
	call	__Z4div4i
	movl	%eax, 20(%esp)
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
