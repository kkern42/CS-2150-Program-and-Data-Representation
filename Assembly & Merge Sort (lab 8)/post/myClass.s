	.text
	.intel_syntax noprefix
	.file	"myClass.cpp"
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
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	mov	dword ptr [rdi + 4], 5
	add	rdi, 8
	call	_ZNSt7__cxx114listIiSaIiEEC2Ev
	pop	rax
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
	ret
.Lfunc_end6:
	.size	_ZN7myClass11passCharValEc, .Lfunc_end6-_ZN7myClass11passCharValEc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myClass12passFloatRefERf # -- Begin function _ZN7myClass12passFloatRefERf
	.p2align	4, 0x90
	.type	_ZN7myClass12passFloatRefERf,@function
_ZN7myClass12passFloatRefERf:           # @_ZN7myClass12passFloatRefERf
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
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
.Lfunc_end14:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev, .Lfunc_end14-_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev
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
.Lfunc_end15:
	.size	__clang_call_terminate, .Lfunc_end15-__clang_call_terminate
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
.Lfunc_end16:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev, .Lfunc_end16-_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv # -- Begin function _ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv,@function
_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv: # @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rdi], rdi
	mov	qword ptr [rdi + 8], rdi
.Ltmp3:
	xor	eax, eax
	mov	esi, eax
	call	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm
.Ltmp4:
	jmp	.LBB17_1
.LBB17_1:
	add	rsp, 24
	ret
.LBB17_2:
.Ltmp5:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 12], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end17:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv, .Lfunc_end17-_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table17:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp3-.Lfunc_begin1    # >> Call Site 1 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin1    #     jumps to .Ltmp5
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
.Lfunc_end18:
	.size	_ZNSaISt10_List_nodeIiEEC2Ev, .Lfunc_end18-_ZNSaISt10_List_nodeIiEEC2Ev
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
.Lfunc_end19:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev, .Lfunc_end19-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev
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
.Lfunc_end20:
	.size	_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm, .Lfunc_end20-_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm
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
.Lfunc_end21:
	.size	_ZNSt10_List_nodeImE9_M_valptrEv, .Lfunc_end21-_ZNSt10_List_nodeImE9_M_valptrEv
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
.Lfunc_end22:
	.size	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv, .Lfunc_end22-_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
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
.Lfunc_end23:
	.size	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv, .Lfunc_end23-_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_myClass.cpp
	.type	_GLOBAL__sub_I_myClass.cpp,@function
_GLOBAL__sub_I_myClass.cpp:             # @_GLOBAL__sub_I_myClass.cpp
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	call	__cxx_global_var_init
	pop	rax
	ret
.Lfunc_end24:
	.size	_GLOBAL__sub_I_myClass.cpp, .Lfunc_end24-_GLOBAL__sub_I_myClass.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_myClass.cpp

	.globl	_ZN7myClassC1Ev
	.type	_ZN7myClassC1Ev,@function
_ZN7myClassC1Ev = _ZN7myClassC2Ev
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
