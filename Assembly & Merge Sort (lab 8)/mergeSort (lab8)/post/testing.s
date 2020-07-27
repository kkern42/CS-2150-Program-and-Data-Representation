	.text
	.intel_syntax noprefix
	.file	"testing.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	movabs	rdi, offset _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	movabs	rdi, offset _ZNSt8ios_base4InitD1Ev
	movabs	rsi, offset _ZStL8__ioinit
	movabs	rdx, offset __dso_handle
	call	__cxa_atexit
	mov	dword ptr [rsp + 4], eax # 4-byte Spill
	pop	rax
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN7myClassC2Ev         # -- Begin function _ZN7myClassC2Ev
	.p2align	4, 0x90
	.type	_ZN7myClassC2Ev,@function
_ZN7myClassC2Ev:                        # @_ZN7myClassC2Ev
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	rax, rdi
	add	rax, 8
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSt7__cxx114listIiSaIiEEC2Ev
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	dword ptr [rax + 4], 4
	add	rsp, 24
	ret
.Lfunc_end1:
	.size	_ZN7myClassC2Ev, .Lfunc_end1-_ZN7myClassC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEEC2Ev,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEEC2Ev,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEEC2Ev # -- Begin function _ZNSt7__cxx114listIiSaIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEEC2Ev,@function
_ZNSt7__cxx114listIiSaIiEEC2Ev:         # @_ZNSt7__cxx114listIiSaIiEEC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
.Ltmp0:
	call	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
.Ltmp1:
	jmp	.LBB2_1
.LBB2_1:
	add	rsp, 24
	ret
.LBB2_2:
.Ltmp2:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 12], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end2:
	.size	_ZNSt7__cxx114listIiSaIiEEC2Ev, .Lfunc_end2-_ZNSt7__cxx114listIiSaIiEEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN7myClass15passByReferenceERi # -- Begin function _ZN7myClass15passByReferenceERi
	.p2align	4, 0x90
	.type	_ZN7myClass15passByReferenceERi,@function
_ZN7myClass15passByReferenceERi:        # @_ZN7myClass15passByReferenceERi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 16]
	mov	dword ptr [rsi], 5
	ret
.Lfunc_end3:
	.size	_ZN7myClass15passByReferenceERi, .Lfunc_end3-_ZN7myClass15passByReferenceERi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass11passByValueEi # -- Begin function _ZN7myClass11passByValueEi
	.p2align	4, 0x90
	.type	_ZN7myClass11passByValueEi,@function
_ZN7myClass11passByValueEi:             # @_ZN7myClass11passByValueEi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	dword ptr [rsp - 12], esi
	mov	dword ptr [rsp - 12], 4
	ret
.Lfunc_end4:
	.size	_ZN7myClass11passByValueEi, .Lfunc_end4-_ZN7myClass11passByValueEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass11passCharRefERc # -- Begin function _ZN7myClass11passCharRefERc
	.p2align	4, 0x90
	.type	_ZN7myClass11passCharRefERc,@function
_ZN7myClass11passCharRefERc:            # @_ZN7myClass11passCharRefERc
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 16]
	mov	byte ptr [rsi], 97
	ret
.Lfunc_end5:
	.size	_ZN7myClass11passCharRefERc, .Lfunc_end5-_ZN7myClass11passCharRefERc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass11passCharValEc # -- Begin function _ZN7myClass11passCharValEc
	.p2align	4, 0x90
	.type	_ZN7myClass11passCharValEc,@function
_ZN7myClass11passCharValEc:             # @_ZN7myClass11passCharValEc
	.cfi_startproc
# %bb.0:
	mov	al, sil
	mov	qword ptr [rsp - 8], rdi
	mov	byte ptr [rsp - 9], al
	mov	byte ptr [rsp - 9], 97
	ret
.Lfunc_end6:
	.size	_ZN7myClass11passCharValEc, .Lfunc_end6-_ZN7myClass11passCharValEc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZN7myClass12passFloatRefERf
.LCPI7_0:
	.long	1074580685              # float 2.20000005
	.text
	.globl	_ZN7myClass12passFloatRefERf
	.p2align	4, 0x90
	.type	_ZN7myClass12passFloatRefERf,@function
_ZN7myClass12passFloatRefERf:           # @_ZN7myClass12passFloatRefERf
	.cfi_startproc
# %bb.0:
	movss	xmm0, dword ptr [rip + .LCPI7_0] # xmm0 = mem[0],zero,zero,zero
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 16]
	movss	dword ptr [rsi], xmm0
	ret
.Lfunc_end7:
	.size	_ZN7myClass12passFloatRefERf, .Lfunc_end7-_ZN7myClass12passFloatRefERf
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass12passFloatValEf # -- Begin function _ZN7myClass12passFloatValEf
	.p2align	4, 0x90
	.type	_ZN7myClass12passFloatValEf,@function
_ZN7myClass12passFloatValEf:            # @_ZN7myClass12passFloatValEf
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	movss	dword ptr [rsp - 12], xmm0
	ret
.Lfunc_end8:
	.size	_ZN7myClass12passFloatValEf, .Lfunc_end8-_ZN7myClass12passFloatValEf
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass14passPointerValEPi # -- Begin function _ZN7myClass14passPointerValEPi
	.p2align	4, 0x90
	.type	_ZN7myClass14passPointerValEPi,@function
_ZN7myClass14passPointerValEPi:         # @_ZN7myClass14passPointerValEPi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	ret
.Lfunc_end9:
	.size	_ZN7myClass14passPointerValEPi, .Lfunc_end9-_ZN7myClass14passPointerValEPi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass14passPointerRefERi # -- Begin function _ZN7myClass14passPointerRefERi
	.p2align	4, 0x90
	.type	_ZN7myClass14passPointerRefERi,@function
_ZN7myClass14passPointerRefERi:         # @_ZN7myClass14passPointerRefERi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	ret
.Lfunc_end10:
	.size	_ZN7myClass14passPointerRefERi, .Lfunc_end10-_ZN7myClass14passPointerRefERi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE # -- Begin function _ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE
	.p2align	4, 0x90
	.type	_ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE,@function
_ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE: # @_ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi # 8-byte Spill
	ret
.Lfunc_end11:
	.size	_ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE, .Lfunc_end11-_ZN7myClass13passObjectValENSt7__cxx114listIiSaIiEEE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE # -- Begin function _ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE
	.p2align	4, 0x90
	.type	_ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE,@function
_ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE: # @_ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	ret
.Lfunc_end12:
	.size	_ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE, .Lfunc_end12-_ZN7myClass13passObjectRefERNSt7__cxx114listIiSaIiEEE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass9passArrayEPi # -- Begin function _ZN7myClass9passArrayEPi
	.p2align	4, 0x90
	.type	_ZN7myClass9passArrayEPi,@function
_ZN7myClass9passArrayEPi:               # @_ZN7myClass9passArrayEPi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	ret
.Lfunc_end13:
	.size	_ZN7myClass9passArrayEPi, .Lfunc_end13-_ZN7myClass9passArrayEPi
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	sub	rsp, 184
	.cfi_def_cfa_offset 192
	mov	dword ptr [rsp + 180], 0
	mov	dword ptr [rsp + 176], 5
	lea	rax, [rsp + 152]
	mov	rdi, rax
	mov	qword ptr [rsp + 16], rax # 8-byte Spill
	call	_ZNSt7__cxx114listIiSaIiEEC2Ev
	mov	dword ptr [rsp + 148], 5
.Ltmp3:
	lea	rsi, [rsp + 148]
	mov	rdi, qword ptr [rsp + 16] # 8-byte Reload
	call	_ZNSt7__cxx114listIiSaIiEE9push_backEOi
.Ltmp4:
	jmp	.LBB14_1
.LBB14_1:
	lea	rdi, [rsp + 152]
	call	_ZNSt7__cxx114listIiSaIiEE5frontEv
.Ltmp5:
	lea	rdi, [rsp + 64]
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	call	_ZN7myClassC1Ev
.Ltmp6:
	jmp	.LBB14_2
.LBB14_2:
	lea	rax, [rsp + 176]
	mov	qword ptr [rsp + 56], rax
.Ltmp8:
	lea	rdi, [rsp + 64]
	lea	rsi, [rsp + 32]
	call	_ZN7myClass9passArrayEPi
.Ltmp9:
	jmp	.LBB14_3
.LBB14_3:
	mov	esi, dword ptr [rsp + 176]
.Ltmp10:
	lea	rdi, [rsp + 64]
	call	_ZN7myClass11passByValueEi
.Ltmp11:
	jmp	.LBB14_4
.LBB14_4:
.Ltmp12:
	lea	rdi, [rsp + 64]
	lea	rsi, [rsp + 176]
	call	_ZN7myClass15passByReferenceERi
.Ltmp13:
	jmp	.LBB14_5
.LBB14_5:
.Ltmp14:
	lea	rdi, [rsp + 64]
	mov	esi, 97
	call	_ZN7myClass11passCharValEc
.Ltmp15:
	jmp	.LBB14_6
.LBB14_6:
	mov	byte ptr [rsp + 31], 97
.Ltmp16:
	lea	rdi, [rsp + 64]
	lea	rsi, [rsp + 31]
	call	_ZN7myClass11passCharRefERc
.Ltmp17:
	jmp	.LBB14_7
.LBB14_7:
	mov	rsi, qword ptr [rsp + 56]
.Ltmp18:
	lea	rdi, [rsp + 64]
	call	_ZN7myClass14passPointerValEPi
.Ltmp19:
	jmp	.LBB14_8
.LBB14_8:
	mov	rsi, qword ptr [rsp + 56]
.Ltmp20:
	lea	rdi, [rsp + 64]
	call	_ZN7myClass14passPointerRefERi
.Ltmp21:
	jmp	.LBB14_9
.LBB14_9:
	lea	rdi, [rsp + 64]
	mov	dword ptr [rsp + 180], 0
	call	_ZN7myClassD2Ev
	lea	rdi, [rsp + 152]
	call	_ZNSt7__cxx114listIiSaIiEED2Ev
	mov	eax, dword ptr [rsp + 180]
	add	rsp, 184
	ret
.LBB14_10:
.Ltmp7:
	mov	ecx, edx
	mov	qword ptr [rsp + 136], rax
	mov	dword ptr [rsp + 132], ecx
	jmp	.LBB14_12
.LBB14_11:
.Ltmp22:
	lea	rdi, [rsp + 64]
	mov	ecx, edx
	mov	qword ptr [rsp + 136], rax
	mov	dword ptr [rsp + 132], ecx
	call	_ZN7myClassD2Ev
.LBB14_12:
	lea	rdi, [rsp + 152]
	call	_ZNSt7__cxx114listIiSaIiEED2Ev
# %bb.13:
	mov	rdi, qword ptr [rsp + 136]
	call	_Unwind_Resume
.Lfunc_end14:
	.size	main, .Lfunc_end14-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Ltmp3-.Lfunc_begin1    # >> Call Site 1 <<
	.long	.Ltmp6-.Ltmp3           #   Call between .Ltmp3 and .Ltmp6
	.long	.Ltmp7-.Lfunc_begin1    #     jumps to .Ltmp7
	.byte	0                       #   On action: cleanup
	.long	.Ltmp8-.Lfunc_begin1    # >> Call Site 2 <<
	.long	.Ltmp21-.Ltmp8          #   Call between .Ltmp8 and .Ltmp21
	.long	.Ltmp22-.Lfunc_begin1   #     jumps to .Ltmp22
	.byte	0                       #   On action: cleanup
	.long	.Ltmp21-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Lfunc_end14-.Ltmp21    #   Call between .Ltmp21 and .Lfunc_end14
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE9push_backEOi,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE9push_backEOi,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE9push_backEOi # -- Begin function _ZNSt7__cxx114listIiSaIiEE9push_backEOi
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEE9push_backEOi,@function
_ZNSt7__cxx114listIiSaIiEE9push_backEOi: # @_ZNSt7__cxx114listIiSaIiEE9push_backEOi
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	rsi, qword ptr [rsp + 32]
	mov	rdi, rsi
	mov	qword ptr [rsp + 8], rsi # 8-byte Spill
	call	_ZNSt7__cxx114listIiSaIiEE3endEv
	mov	qword ptr [rsp + 16], rax
	mov	rdi, qword ptr [rsp + 24]
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	mov	rdx, rax
	call	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_
	add	rsp, 40
	ret
.Lfunc_end15:
	.size	_ZNSt7__cxx114listIiSaIiEE9push_backEOi, .Lfunc_end15-_ZNSt7__cxx114listIiSaIiEE9push_backEOi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE5frontEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE5frontEv,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE5frontEv # -- Begin function _ZNSt7__cxx114listIiSaIiEE5frontEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEE5frontEv,@function
_ZNSt7__cxx114listIiSaIiEE5frontEv:     # @_ZNSt7__cxx114listIiSaIiEE5frontEv
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	call	_ZNSt7__cxx114listIiSaIiEE5beginEv
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 8], rax
	call	_ZNKSt14_List_iteratorIiEdeEv
	add	rsp, 24
	ret
.Lfunc_end16:
	.size	_ZNSt7__cxx114listIiSaIiEE5frontEv, .Lfunc_end16-_ZNSt7__cxx114listIiSaIiEE5frontEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7myClassD2Ev,"axG",@progbits,_ZN7myClassD2Ev,comdat
	.weak	_ZN7myClassD2Ev         # -- Begin function _ZN7myClassD2Ev
	.p2align	4, 0x90
	.type	_ZN7myClassD2Ev,@function
_ZN7myClassD2Ev:                        # @_ZN7myClassD2Ev
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	add	rdi, 8
	call	_ZNSt7__cxx114listIiSaIiEED2Ev
	pop	rax
	ret
.Lfunc_end17:
	.size	_ZN7myClassD2Ev, .Lfunc_end17-_ZN7myClassD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEED2Ev,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEED2Ev,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEED2Ev # -- Begin function _ZNSt7__cxx114listIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEED2Ev,@function
_ZNSt7__cxx114listIiSaIiEED2Ev:         # @_ZNSt7__cxx114listIiSaIiEED2Ev
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	pop	rax
	ret
.Lfunc_end18:
	.size	_ZNSt7__cxx114listIiSaIiEED2Ev, .Lfunc_end18-_ZNSt7__cxx114listIiSaIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev,@function
_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev:  # @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	add	rsp, 24
	ret
.Lfunc_end19:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev, .Lfunc_end19-_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv: # @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	sub	rsp, 56
	.cfi_def_cfa_offset 64
	mov	qword ptr [rsp + 48], rdi
	mov	rdi, qword ptr [rsp + 48]
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 40], rax
	mov	qword ptr [rsp + 16], rdi # 8-byte Spill
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsp + 40]
	mov	rcx, qword ptr [rsp + 16] # 8-byte Reload
	cmp	rax, rcx
	je	.LBB20_5
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 32], rax
	mov	rax, qword ptr [rsp + 32]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 40], rax
	mov	rdi, qword ptr [rsp + 32]
.Ltmp23:
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
.Ltmp24:
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	jmp	.LBB20_3
.LBB20_3:                               #   in Loop: Header=BB20_1 Depth=1
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	qword ptr [rsp + 24], rax
	mov	rdi, qword ptr [rsp + 16] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	mov	rsi, qword ptr [rsp + 24]
.Ltmp25:
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
.Ltmp26:
	jmp	.LBB20_4
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	mov	rsi, qword ptr [rsp + 32]
	mov	rdi, qword ptr [rsp + 16] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
	jmp	.LBB20_1
.LBB20_5:
	add	rsp, 56
	ret
.LBB20_6:
.Ltmp27:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 4], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end20:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv, .Lfunc_end20-_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table20:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp23-.Lfunc_begin2   # >> Call Site 1 <<
	.long	.Ltmp26-.Ltmp23         #   Call between .Ltmp23 and .Ltmp26
	.long	.Ltmp27-.Lfunc_begin2   #     jumps to .Ltmp27
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev: # @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZNSaISt10_List_nodeIiEED2Ev
	pop	rax
	ret
.Lfunc_end21:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev, .Lfunc_end21-_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_List_nodeIiE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeIiE9_M_valptrEv,comdat
	.weak	_ZNSt10_List_nodeIiE9_M_valptrEv # -- Begin function _ZNSt10_List_nodeIiE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNSt10_List_nodeIiE9_M_valptrEv,@function
_ZNSt10_List_nodeIiE9_M_valptrEv:       # @_ZNSt10_List_nodeIiE9_M_valptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	add	rdi, 16
	call	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	pop	rcx
	ret
.Lfunc_end22:
	.size	_ZNSt10_List_nodeIiE9_M_valptrEv, .Lfunc_end22-_ZNSt10_List_nodeIiE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	push	rax
	call	__cxa_begin_catch
	mov	qword ptr [rsp], rax    # 8-byte Spill
	call	_ZSt9terminatev
.Lfunc_end23:
	.size	__clang_call_terminate, .Lfunc_end23-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_ # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_,@function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_: # @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rdi    # 8-byte Spill
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	add	rsp, 24
	ret
.Lfunc_end24:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_, .Lfunc_end24-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv: # @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, rdi
	ret
.Lfunc_end25:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv, .Lfunc_end25-_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE: # @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
.Ltmp28:
	mov	eax, 1
	mov	edx, eax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
.Ltmp29:
	jmp	.LBB26_1
.LBB26_1:
	add	rsp, 24
	ret
.LBB26_2:
.Ltmp30:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 4], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end26:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE, .Lfunc_end26-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table26:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp28-.Lfunc_begin3   # >> Call Site 1 <<
	.long	.Ltmp29-.Ltmp28         #   Call between .Ltmp28 and .Ltmp29
	.long	.Ltmp30-.Lfunc_begin3   #     jumps to .Ltmp30
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv,@function
_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv: # @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	pop	rcx
	ret
.Lfunc_end27:
	.size	_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv, .Lfunc_end27-_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv,@function
_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv: # @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, rdi
	ret
.Lfunc_end28:
	.size	_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv, .Lfunc_end28-_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	ret
.Lfunc_end29:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_, .Lfunc_end29-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m,@function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m: # @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	add	rsp, 40
	ret
.Lfunc_end30:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m, .Lfunc_end30-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdx
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, rdx
	call	_ZdlPv
	add	rsp, 24
	ret
.Lfunc_end31:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m, .Lfunc_end31-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaISt10_List_nodeIiEED2Ev,"axG",@progbits,_ZNSaISt10_List_nodeIiEED2Ev,comdat
	.weak	_ZNSaISt10_List_nodeIiEED2Ev # -- Begin function _ZNSaISt10_List_nodeIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt10_List_nodeIiEED2Ev,@function
_ZNSaISt10_List_nodeIiEED2Ev:           # @_ZNSaISt10_List_nodeIiEED2Ev
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	pop	rax
	ret
.Lfunc_end32:
	.size	_ZNSaISt10_List_nodeIiEED2Ev, .Lfunc_end32-_ZNSaISt10_List_nodeIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	ret
.Lfunc_end33:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev, .Lfunc_end33-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev,@function
_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev:  # @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
	add	rsp, 24
	ret
.Lfunc_end34:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev, .Lfunc_end34-_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev: # @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSaISt10_List_nodeIiEEC2Ev
	xor	esi, esi
	mov	ecx, 24
	mov	edx, ecx
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	rdi, rax
	call	memset
	add	rsp, 24
	ret
.Lfunc_end35:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev, .Lfunc_end35-_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv: # @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rdi], rdi
	mov	qword ptr [rdi + 8], rdi
.Ltmp31:
	xor	eax, eax
	mov	esi, eax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm
.Ltmp32:
	jmp	.LBB36_1
.LBB36_1:
	add	rsp, 24
	ret
.LBB36_2:
.Ltmp33:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 12], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end36:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv, .Lfunc_end36-_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table36:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp31-.Lfunc_begin4   # >> Call Site 1 <<
	.long	.Ltmp32-.Ltmp31         #   Call between .Ltmp31 and .Ltmp32
	.long	.Ltmp33-.Lfunc_begin4   #     jumps to .Ltmp33
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaISt10_List_nodeIiEEC2Ev,"axG",@progbits,_ZNSaISt10_List_nodeIiEEC2Ev,comdat
	.weak	_ZNSaISt10_List_nodeIiEEC2Ev # -- Begin function _ZNSaISt10_List_nodeIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt10_List_nodeIiEEC2Ev,@function
_ZNSaISt10_List_nodeIiEEC2Ev:           # @_ZNSaISt10_List_nodeIiEEC2Ev
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	pop	rax
	ret
.Lfunc_end37:
	.size	_ZNSaISt10_List_nodeIiEEC2Ev, .Lfunc_end37-_ZNSaISt10_List_nodeIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	ret
.Lfunc_end38:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev, .Lfunc_end38-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm: # @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZNSt10_List_nodeImE9_M_valptrEv
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	mov	qword ptr [rax], rsi
	add	rsp, 24
	ret
.Lfunc_end39:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm, .Lfunc_end39-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_List_nodeImE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeImE9_M_valptrEv,comdat
	.weak	_ZNSt10_List_nodeImE9_M_valptrEv # -- Begin function _ZNSt10_List_nodeImE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNSt10_List_nodeImE9_M_valptrEv,@function
_ZNSt10_List_nodeImE9_M_valptrEv:       # @_ZNSt10_List_nodeImE9_M_valptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	add	rdi, 16
	call	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	pop	rcx
	ret
.Lfunc_end40:
	.size	_ZNSt10_List_nodeImE9_M_valptrEv, .Lfunc_end40-_ZNSt10_List_nodeImE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv,@function
_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv: # @_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	pop	rcx
	ret
.Lfunc_end41:
	.size	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv, .Lfunc_end41-_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv,@function
_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv: # @_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, rdi
	ret
.Lfunc_end42:
	.size	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv, .Lfunc_end42-_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_ # -- Begin function _ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_,@function
_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_: # @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rsi
	mov	qword ptr [rsp + 24], rdi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp], rdx    # 8-byte Spill
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdi, qword ptr [rsp]    # 8-byte Reload
	mov	rsi, rax
	call	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 32]
	mov	rdi, rax
	call	_ZNSt8__detail15_List_node_base7_M_hookEPS0_
	mov	ecx, 1
	mov	esi, ecx
	mov	rax, qword ptr [rsp]    # 8-byte Reload
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	add	rsp, 40
	ret
.Lfunc_end43:
	.size	_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_, .Lfunc_end43-_ZNSt7__cxx114listIiSaIiEE9_M_insertIJiEEEvSt14_List_iteratorIiEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE3endEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE3endEv,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE3endEv # -- Begin function _ZNSt7__cxx114listIiSaIiEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEE3endEv,@function
_ZNSt7__cxx114listIiSaIiEE3endEv:       # @_ZNSt7__cxx114listIiSaIiEE3endEv
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 8], rdi
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rdi    # 8-byte Spill
	mov	rdi, rax
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	call	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	mov	rax, qword ptr [rsp + 16]
	add	rsp, 24
	ret
.Lfunc_end44:
	.size	_ZNSt7__cxx114listIiSaIiEE3endEv, .Lfunc_end44-_ZNSt7__cxx114listIiSaIiEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_ # -- Begin function _ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.p2align	4, 0x90
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,@function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_: # @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.Lfunc_end45:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .Lfunc_end45-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_ # -- Begin function _ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_,@function
_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_: # @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	sub	rsp, 104
	.cfi_def_cfa_offset 112
	mov	qword ptr [rsp + 96], rdi
	mov	qword ptr [rsp + 88], rsi
	mov	rsi, qword ptr [rsp + 96]
	mov	rdi, rsi
	mov	qword ptr [rsp + 32], rsi # 8-byte Spill
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	mov	qword ptr [rsp + 80], rax
	mov	rdi, qword ptr [rsp + 32] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv
	mov	qword ptr [rsp + 72], rax
	mov	rsi, qword ptr [rsp + 72]
	mov	rdx, qword ptr [rsp + 80]
	lea	rdi, [rsp + 56]
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	mov	rdi, qword ptr [rsp + 72]
	mov	rax, qword ptr [rsp + 80]
.Ltmp34:
	mov	qword ptr [rsp + 24], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
.Ltmp35:
	mov	qword ptr [rsp + 16], rax # 8-byte Spill
	jmp	.LBB46_1
.LBB46_1:
	mov	rdi, qword ptr [rsp + 88]
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
.Ltmp36:
	mov	rdi, qword ptr [rsp + 24] # 8-byte Reload
	mov	rsi, qword ptr [rsp + 16] # 8-byte Reload
	mov	rdx, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_
.Ltmp37:
	jmp	.LBB46_2
.LBB46_2:
	lea	rdi, [rsp + 56]
	xor	eax, eax
	mov	esi, eax
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	lea	rdi, [rsp + 56]
	mov	rsi, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
	mov	rax, qword ptr [rsp]    # 8-byte Reload
	add	rsp, 104
	ret
.LBB46_3:
.Ltmp38:
	lea	rdi, [rsp + 56]
	mov	ecx, edx
	mov	qword ptr [rsp + 48], rax
	mov	dword ptr [rsp + 44], ecx
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
# %bb.4:
	mov	rdi, qword ptr [rsp + 48]
	call	_Unwind_Resume
.Lfunc_end46:
	.size	_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_, .Lfunc_end46-_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJiEEEPSt10_List_nodeIiEDpOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table46:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin5-.Lfunc_begin5 # >> Call Site 1 <<
	.long	.Ltmp34-.Lfunc_begin5   #   Call between .Lfunc_begin5 and .Ltmp34
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp34-.Lfunc_begin5   # >> Call Site 2 <<
	.long	.Ltmp37-.Ltmp34         #   Call between .Ltmp34 and .Ltmp37
	.long	.Ltmp38-.Lfunc_begin5   #     jumps to .Ltmp38
	.byte	0                       #   On action: cleanup
	.long	.Ltmp37-.Lfunc_begin5   # >> Call Site 3 <<
	.long	.Lfunc_end46-.Ltmp37    #   Call between .Ltmp37 and .Lfunc_end46
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE # -- Begin function _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,@function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE: # @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.Lfunc_end47:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .Lfunc_end47-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm: # @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZNSt10_List_nodeImE9_M_valptrEv
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	add	rsi, qword ptr [rax]
	mov	qword ptr [rax], rsi
	add	rsp, 24
	ret
.Lfunc_end48:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm, .Lfunc_end48-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv: # @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	eax, 1
	mov	esi, eax
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	pop	rcx
	ret
.Lfunc_end49:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv, .Lfunc_end49-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_,comdat
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_ # -- Begin function _ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	.p2align	4, 0x90
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_,@function
_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_: # @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rdi, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	call	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [rdx + 8], rax
	add	rsp, 40
	ret
.Lfunc_end50:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_, .Lfunc_end50-_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_: # @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	mov	rdx, rax
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_
	add	rsp, 40
	ret
.Lfunc_end51:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_, .Lfunc_end51-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJiEEEvRS2_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn,comdat
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn # -- Begin function _ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	.p2align	4, 0x90
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn,@function
_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn: # @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 8]
	mov	qword ptr [rsi + 8], 0
	mov	rax, rsi
	ret
.Lfunc_end52:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn, .Lfunc_end52-_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev,comdat
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev # -- Begin function _ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev,@function
_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev: # @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	cmp	qword ptr [rdi + 8], 0
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	je	.LBB53_3
# %bb.1:
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
.Ltmp39:
	mov	ecx, 1
	mov	edx, ecx
	call	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m
.Ltmp40:
	jmp	.LBB53_2
.LBB53_2:
	jmp	.LBB53_3
.LBB53_3:
	add	rsp, 24
	ret
.LBB53_4:
.Ltmp41:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 4], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end53:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev, .Lfunc_end53-_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table53:
.Lexception6:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp39-.Lfunc_begin6   # >> Call Site 1 <<
	.long	.Ltmp40-.Ltmp39         #   Call between .Ltmp39 and .Ltmp40
	.long	.Ltmp41-.Lfunc_begin6   #     jumps to .Ltmp41
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m,@function
_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m: # @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	xor	eax, eax
	mov	edx, eax
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rdi    # 8-byte Spill
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	add	rsp, 24
	ret
.Lfunc_end54:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m, .Lfunc_end54-_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdi, qword ptr [rsp + 32]
	mov	rdx, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	call	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	cmp	rdx, rax
	jbe	.LBB55_2
# %bb.1:
	call	_ZSt17__throw_bad_allocv
.LBB55_2:
	imul	rdi, qword ptr [rsp + 24], 24
	call	_Znwm
	add	rsp, 40
	ret
.Lfunc_end55:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv, .Lfunc_end55-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	movabs	rax, 768614336404564650
	mov	qword ptr [rsp - 8], rdi
	ret
.Lfunc_end56:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv, .Lfunc_end56-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_,comdat
	.weak	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_ # -- Begin function _ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	.p2align	4, 0x90
	.type	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_,@function
_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_: # @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.Lfunc_end57:
	.size	_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_, .Lfunc_end57-_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	dword ptr [rax], ecx
	add	rsp, 40
	ret
.Lfunc_end58:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_, .Lfunc_end58-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJiEEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE,comdat
	.weak	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE # -- Begin function _ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	.p2align	4, 0x90
	.type	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE,@function
_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE: # @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 8]
	mov	rdi, qword ptr [rsp - 16]
	mov	qword ptr [rsi], rdi
	ret
.Lfunc_end59:
	.size	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE, .Lfunc_end59-_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE5beginEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE5beginEv,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE5beginEv # -- Begin function _ZNSt7__cxx114listIiSaIiEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listIiSaIiEE5beginEv,@function
_ZNSt7__cxx114listIiSaIiEE5beginEv:     # @_ZNSt7__cxx114listIiSaIiEE5beginEv
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 8], rdi
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE
	mov	rax, qword ptr [rsp + 16]
	add	rsp, 24
	ret
.Lfunc_end60:
	.size	_ZNSt7__cxx114listIiSaIiEE5beginEv, .Lfunc_end60-_ZNSt7__cxx114listIiSaIiEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt14_List_iteratorIiEdeEv,"axG",@progbits,_ZNKSt14_List_iteratorIiEdeEv,comdat
	.weak	_ZNKSt14_List_iteratorIiEdeEv # -- Begin function _ZNKSt14_List_iteratorIiEdeEv
	.p2align	4, 0x90
	.type	_ZNKSt14_List_iteratorIiEdeEv,@function
_ZNKSt14_List_iteratorIiEdeEv:          # @_ZNKSt14_List_iteratorIiEdeEv
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	rdi, qword ptr [rdi]
.Ltmp42:
	call	_ZNSt10_List_nodeIiE9_M_valptrEv
.Ltmp43:
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	jmp	.LBB61_1
.LBB61_1:
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	add	rsp, 24
	ret
.LBB61_2:
.Ltmp44:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 4], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end61:
	.size	_ZNKSt14_List_iteratorIiEdeEv, .Lfunc_end61-_ZNKSt14_List_iteratorIiEdeEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table61:
.Lexception7:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp42-.Lfunc_begin7   # >> Call Site 1 <<
	.long	.Ltmp43-.Ltmp42         #   Call between .Ltmp42 and .Ltmp43
	.long	.Ltmp44-.Lfunc_begin7   #     jumps to .Ltmp44
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_testing.cpp
	.type	_GLOBAL__sub_I_testing.cpp,@function
_GLOBAL__sub_I_testing.cpp:             # @_GLOBAL__sub_I_testing.cpp
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	call	__cxx_global_var_init
	pop	rax
	ret
.Lfunc_end62:
	.size	_GLOBAL__sub_I_testing.cpp, .Lfunc_end62-_GLOBAL__sub_I_testing.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_testing.cpp

	.globl	_ZN7myClassC1Ev
	.type	_ZN7myClassC1Ev,@function
_ZN7myClassC1Ev = _ZN7myClassC2Ev
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
