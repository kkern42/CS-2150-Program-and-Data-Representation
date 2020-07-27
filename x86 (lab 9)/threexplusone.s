; Kevin Kern (kjk9cd)
; CS 2150 Pre-Lab 9
; 11/17/2019
; threexplusone.s

	;; Optimizations
	;; Reduced memory access by using registers and did not push or
	;; pop in the program
	;; Divided by 2 by off setting register using shr avoiding using div
	;; in even case 

	global threexplusone
	section .text

threexplusone:
	xor rax, rax
	xor rdx, rdx
	xor rcx, rcx
	mov r8, 2
	mov r10, 3
start:
	mov rsi, 1
	cmp rdi, rsi
	je base1
	mov rax, rdi
	div r8
	cmp rdx, rcx
	je even1
	jne odd1
base1:
	jmp done
odd1:
	imul rdi, r10
	inc rdi
	call threexplusone
	inc rax
	jmp done
even1:
	shr rdi, 1
	call threexplusone
	inc rax 
	jmp done
done:
	ret
