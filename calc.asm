org &8000

	ld a, (&9000) ;action
	ld bc, (&9001) ;number

	cp 0 ; also or a
	jr z,MathAdd
	cp 1
	jr z,MathSub
	cp 2
	jr z,MathMult
	cp 3
	jr z,MathDiv

	ld a,0 ; also xor a
SaveResult:
	ld (&9003),a
ret

MathSub: 
	ld a,c ; ld a,b  neg add c also
	sub b
jr SaveResult

MathAdd
	ld a,c
	add b
jr SaveResult

MathMult:
	ld a,b
	cp 0
	jr z,SaveResult
	ld a,0
MathMultAgain:
	add c
	djnz MathMultAgain ;decrease b and jump
jr SaveResult

MathDiv:
	ld a,c
	cp 0
	jr z,SaveResult
	ld d,0
MathDivAgain:
	sub b
	inc d
	jr nc, MathDivAgain
	dec d
	ld a,d
jr SaveResult

