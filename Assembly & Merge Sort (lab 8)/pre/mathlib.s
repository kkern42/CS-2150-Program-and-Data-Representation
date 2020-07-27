; Kevin Kern(kjk9cd), mathlib.s, prelab8, 11/4/2019
; 
; Purpose : This file contains the implementation of the function
;           product that will mulitply the two parameters
;
; Parameter 1 (in rdi) first integer
; Parameter 2 (in rsi) isecond integer
; Return product
;

	global product

	section .text

product:
	; Subroutine body:
	xor	rax, rax	 ; zero out the return register
	xor	r10, r10	 ; zero out the counter i
start:	
	cmp	r10, rsi	 ; does i == y?
	je	done		 ; if so, we are done with the loop
	add	rax, rdi         ; add rdi to rax
	inc	r10		 ; increment our counter i
	jmp	start		 ; we are done with this loop iteration
done:	

	; Standard epilogue: the return value is already in rax, we
	; do not have any callee-saved registers to restore, and we do not
	; have any local variables to deallocate, so all we do is return
	ret


; Parameter 1 (in rdi) first integer
; Parameter 2 (in rsi) second integer
; Return value is the the first integer to the powe rof the second integer
;

	global power

	section .text

power:
	; Subroutine body:
	xor	r10, r10   	 ; zero out the counter i
	xor     rax, rax
	inc     rax
start2:
	cmp	r10, rsi	 ; does i == y?
	je	done2		 ; if so, we are done with the loop
        sub	rsi, 1           ; subtract 1 from rsi
	call    power		 ; where is the return value stored
	mov     rsi, rax         ; move rax to rsi
	call	product  	 ; call product on rdi and rsi
done2:	
	; Standard epilogue: the return value is already in rax, we
	; do not have any callee-saved registers to restore, and we do not
	; have any local variables to deallocate, so all we do is return
	ret
