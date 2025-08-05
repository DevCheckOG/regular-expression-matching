	.file	"regular-expression-matching.c"
	.text
	.globl	isMatch                         
	.p2align	4
	.type	isMatch,@function
isMatch:                      
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
                                       
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
                                  
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                              
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_4
# %bb.2:                               
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                               
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movb	$1, (%rax)
	movl	$1, -40(%rbp)
.LBB0_5:                             
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB0_10
# %bb.6:                                
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$42, %eax
	jne	.LBB0_8
# %bb.7:                             
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	andb	$1, %dl
	movb	%dl, (%rax,%rcx)
.LBB0_8:                           
	jmp	.LBB0_9
.LBB0_9:                             
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_10:
	movl	$1, -44(%rbp)
.LBB0_11:                             
                                      
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_30
# %bb.12:                               
	movl	$1, -48(%rbp)
.LBB0_13:                        
                                       
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB0_28
# %bb.14:                              
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$42, %eax
	jne	.LBB0_22
# %bb.15:                           
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-48(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	movb	$1, %al
	testb	$1, (%rcx,%rdx)
	movb	%al, -57(%rbp)         
	jne	.LBB0_21
# %bb.16:                           
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%eax, %eax
                                    
	testb	$1, (%rcx,%rdx)
	movb	%al, -58(%rbp)            
	je	.LBB0_20
# %bb.17:                              
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %ecx
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movsbl	(%rax,%rdx), %edx
	movb	$1, %al
	cmpl	%edx, %ecx
	movb	%al, -59(%rbp)        
	je	.LBB0_19
# %bb.18:                          
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$46, %eax
	sete	%al
	movb	%al, -59(%rbp)         
.LBB0_19:                          
	movb	-59(%rbp), %al       
	movb	%al, -58(%rbp)             
.LBB0_20:                           
	movb	-58(%rbp), %al              
	movb	%al, -57(%rbp)            
.LBB0_21:                               
	movb	-57(%rbp), %dl              
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-48(%rbp), %rcx
	andb	$1, %dl
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_26
.LBB0_22:                             
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$46, %eax
	je	.LBB0_24
# %bb.23:                              
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_25
.LBB0_24:                             
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-48(%rbp), %rcx
	andb	$1, %dl
	movb	%dl, (%rax,%rcx)
.LBB0_25:                              
	jmp	.LBB0_26
.LBB0_26:                              
	jmp	.LBB0_27
.LBB0_27:                              
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_13
.LBB0_28:                             
	jmp	.LBB0_29
.LBB0_29:                              
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_11
.LBB0_30:
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %al
	andb	$1, %al
	movb	%al, -49(%rbp)
	movl	$0, -56(%rbp)
.LBB0_31:                              
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_34
# %bb.32:                              
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.33:                               
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_31
.LBB0_34:
	movq	-32(%rbp), %rdi
	callq	free@PLT
	movb	-49(%rbp), %al
	andb	$1, %al
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	isMatch, .Lfunc_end0-isMatch
	.cfi_endproc
                                     
	.globl	main                       
	.p2align	4
	.type	main,@function
main:                                  
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -100(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	.L__const.main.test_cases(%rip), %rsi
	movl	$80, %edx
	callq	memcpy@PLT
	movl	$0, -104(%rbp)
.LBB1_1:                                
	cmpl	$5, -104(%rbp)
	jge	.LBB1_4
# %bb.2:                                
	movslq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movslq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	isMatch
	andb	$1, %al
	movb	%al, -121(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movb	-121(%rbp), %dil
	leaq	.L.str.11(%rip), %rcx
	leaq	.L.str.10(%rip), %rax
	testb	$1, %dil
	cmovneq	%rax, %rcx
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.3:                               
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_6
# %bb.5:
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_6:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                      
	.type	.L.str,@object                
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"aa"
	.size	.L.str, 3

	.type	.L.str.1,@object             
.L.str.1:
	.asciz	"a"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                
.L.str.2:
	.asciz	"a*"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                
.L.str.3:
	.asciz	"ab"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                
.L.str.4:
	.asciz	".*"
	.size	.L.str.4, 3

	.type	.L.str.5,@object               
.L.str.5:
	.asciz	"aab"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                
.L.str.6:
	.asciz	"c*a*b"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                
.L.str.7:
	.asciz	"mississippi"
	.size	.L.str.7, 12

	.type	.L.str.8,@object          
.L.str.8:
	.asciz	"mis*is*p*."
	.size	.L.str.8, 11

	.type	.L__const.main.test_cases,@object 
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const.main.test_cases:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.size	.L__const.main.test_cases, 80

	.type	.L.str.9,@object             
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"s = \"%s\", p = \"%s\" -> %s\n"
	.size	.L.str.9, 26

	.type	.L.str.10,@object             
.L.str.10:
	.asciz	"true"
	.size	.L.str.10, 5

	.type	.L.str.11,@object             
.L.str.11:
	.asciz	"false"
	.size	.L.str.11, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isMatch
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym calloc
	.addrsig_sym free
	.addrsig_sym printf
	.addrsig_sym __stack_chk_fail
