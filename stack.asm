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

Org &8100
	ld hl,Introduction
	call PrintString

	call newline

	ld hl,Message
	call Printstring

ret

Printstring:
	ld a,(hl)
	cp 255
	ret z
	inc hl
	call PrintChar
jr Printstrin

Introduction:
	db 'Thought of the day...',255 ;string ends with 255

Message:	db 'Z80 is Awesome!',255

Newline:
	ld a,13
	call Printchar
	ld a,10
	jp printchar


org &8200





SquareBrackets: db '[]'
CurlyBrackets: db '()'


Temp: db 0
Temp2: db 0