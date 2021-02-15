PrintChar equ &BB5A
WaitChar   equ &BB06

Org &8000		;25:48
	ld a, 'y'  ;Call WaitChar
	Call PrintChar
	ld (temp), a
	ld a,'|'
	Call PrintChar
	ld (temp2),a
	ld a,'x'
	Call PrintChar
	ld a,(temp2)
	call PrintChar
	ld a,(temp)
	Call PrintChar

	;ld a,13
	;Call PrintChar

	Call WaitChar
	Call PrintChar
	push af
		ld a,'|'
		Call PrintChar
		push af
			ld a,'x'
			Call PrintChar

		pop af
		Call PrintChar

	pop af
	Call PrintChar
ret


Temp: db 0
Temp2: db 0