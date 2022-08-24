	.file	"Ejercicio05.cpp"
	.section .rdata,"dr"
__ZStL19piecewise_construct:
	.space 1
.lcomm __ZStL8__ioinit,1,1
	.text
# ! ----------------------------------------------------------------
	.globl	__Z4div4i
	.def	__Z4div4i;	.scl	2;	.type	32;	.endef
__Z4div4i:
LFB1445:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	# * -----------------------------------
	cltd
	andl	$3, %edx
	addl	%edx, %eax
	sarl	$2, %eax # * se recorre 2 bits a la derecha (2^2 = 4) para la división en 4
	popl	%ebp
	# * -----------------------------------
	# * Se Tiene el proceso de division

	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
# ! ----------------------------------------------------------------
# ! Se define la la función "div4"
LFE1445:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "abcdef\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1446:
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

	# ? ------------------------------
	movl	$5, (%esp) # * parámetro 5
	call	__Z4div4i # ! Invocacion
	movl	%eax, 24(%esp) # * Se guarda el resultado
	# ? ------------------------------
	# ? Se Realiza la invocación a la función

	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1446:
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB1871:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitD1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1871:
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB1870:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	L8
	cmpl	$65535, 12(%ebp)
	jne	L8
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
L8:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1870:
	.def	__GLOBAL__sub_I__Z4div4i;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I__Z4div4i:
LFB1872:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1872:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I__Z4div4i
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
