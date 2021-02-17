;Mode 2 - 640x200, 2 colours

org &8000
	ld ix,image
	ld hl,&C000	;Point to the screen
	ld b,192
loop2:
	ld c,20
loop1:
	ld a,(ix)
	ld (hl),a
	
	inc ix
	inc hl

	dec c
	jr nz,loop1
	ld a,60
sc_loop
	inc hl
	dec a
	jr nz,sc_loop
	dec b
	jr nz,loop2

	;inc l		
	;jp nz,loop1	

	;inc h		
	;jp nz,loop1

	ret


; ASM source file created by SevenuP v1.20
; SevenuP (C) Copyright 2002-2006 by Jaime Tejedor Gomez, aka Metalbrain

;GRAPHIC DATA
;Pixel Size      (162, 192) 20 bytes per line
;Char Size       ( 21,  24)
;Sort Priorities  X char, Char line, Y char
;Data Outputted  Gfx+Attr
;Interleave      Sprite
;Mask            No

image:
	DEFB	237,  7,239,216,226,150,109, 42
	DEFB	 87,132,  7, 95,148,  1, 42,170
	DEFB	170,234,165,234,170, 81,  0,  3
	DEFB	255,248, 85, 97,213,126,  0,161
	DEFB	254,  3,148,212, 85, 69, 36, 18
	DEFB	 22, 85,171,131,231,255,248,184
	DEFB	163,170, 94, 65,  0,126,163,194
	DEFB	170, 43,170,162, 27,186, 42, 84
	DEFB	 20, 39,227,249, 71,124, 65, 24
	DEFB	 24,  7,255,143,224, 65, 80, 65
	DEFB	 28, 88,  2, 85,228, 12,119,235
	DEFB	248,234,249,138, 10,100,  7,255
	DEFB	191,248, 89, 10,106,134,106,150
	DEFB	170, 91, 19,249,225,243, 30,  5
	DEFB	152, 80,  0, 89,253,255,255,134
	DEFB	212, 69,154,165, 84, 21,106, 23
	DEFB	248,233,239,254,170,162,133,240
	DEFB	 57,255,255,255,147,169, 43,238
	DEFB	 59,170,106, 85,103,255,121,239
	DEFB	193, 88,109, 31,252,127,231,247
	DEFB	254, 20,130,144, 16, 64, 17, 81
	DEFB	168,127,251,234,143,242,  0,234
	DEFB	 61,254,123,247,160,222, 96,  8
	DEFB	 42,155,170,138,106, 87,127,253
	DEFB	253,255,224, 31, 21,123,127,253
	DEFB	239,159,252,  9, 32, 84, 88, 32
	DEFB	117, 69,230,127,255,255,255,225
	DEFB	 31,162,255,191,255,255, 63,254
	DEFB	  0,  1,186,165,154, 42,170,101
	DEFB	127,255,255,255,228,120, 84,214
	DEFB	151,252, 94,135,252, 25,152, 65
	DEFB	 20, 85, 82, 85,218,255,255,255
	DEFB	255,192,120,166,217,111,190, 63
	DEFB	  1,252, 39,153, 30,174,153,132
	DEFB	170,102,127, 31,255,249,249, 64
	DEFB	149,126, 97,220,124,125,249,143
	DEFB	208,209, 65, 85,123, 69,170,125
	DEFB	159,255,255,249,128, 11,255, 42
	DEFB	126,252, 23,250, 31,144, 27, 91
	DEFB	131,170,170, 93, 23,223,199,229
	DEFB	190,127,214,153,150, 30,216,  0
	DEFB	252,127,255,144, 96, 88, 65, 85
	DEFB	  0,158,159,231,243,254,255,135
	DEFB	168,142, 30,210,  3,120,127,215
	DEFB	193,139,162,170,170,136, 31, 63
	DEFB	231,252,126,  8, 31,255, 97,152
	DEFB	198,237,253,253,185,224,144,140
	DEFB	 90, 69,  0, 63,190,233,252,120
	DEFB	  3,255,255,159,250,167,110,126
	DEFB	127,121,232, 42,102,168, 42,133
	DEFB	255,255,121,255,255,227,255,127
	DEFB	239,196,  0,247,223,248, 88,226
	DEFB	214,153, 83,213,174, 95,254, 39
	DEFB	255,254, 39,254,255,255,226,  4
	DEFB	 41,175,251,232, 98, 42,170,170
	DEFB	106,224,159,255,223,255,216,135
	DEFB	223,165,250,110,151,227,247,169
	DEFB	120, 96, 85, 17, 89,149,224,159
	DEFB	255,223,255,234,143,159,167,255
	DEFB	201, 31,107,183,230,248,224,230
	DEFB	122,138, 42,133, 30,127,117,215
	DEFB	192,127,251,247,255,254,192, 98
	DEFB	 31,215,104, 37, 17, 69, 49, 85
	DEFB	154,255,127,249,255,234,127,127
	DEFB	219,255,110,118,255, 95,227,216
	DEFB	224,  1, 24,160,170,158,105, 25
	DEFB	169,107,213,126,213,185,255,251
	DEFB	 89,255,223,220,114,248,144, 64
	DEFB	 87, 85, 91,225,141,251,176, 63
	DEFB	255,235,188,255,253,137,255,253
	DEFB	223,118,230, 41,  2,126,106,254
	DEFB	 29, 23,165,207,192, 30,126,  3
	DEFB	 91,239,251,106, 17,145,128,230
	DEFB	128,148, 65, 85,187, 89,  7,230
	DEFB	159,135,223,190,145,127,255,253
	DEFB	251,127,133,194,230,132,130,122
	DEFB	170, 30,255, 30, 39,224, 19,247
	DEFB	214,  4, 99,248, 23,128,125,150
	DEFB	  8,198,191, 36, 73, 85, 86,183
	DEFB	 12,167,  0,  7,255,238,  2, 99
	DEFB	224, 21,133,251,238, 24,198,127
	DEFB	 97,178,106,  0,221, 19,128,  0
	DEFB	  7,255,182,128,121,128, 15, 97
	DEFB	255,250,  1,135,127,248,  5,129
	DEFB	250,255,225,212,  0, 39,255,254
	DEFB	 21,189,128, 14,199,255,246, 85
	DEFB	  1,255,248,185, 42, 93, 85, 95
	DEFB	 88,  0,  7,253,220,117, 86,129
	DEFB	 31,158, 25,249,255,223, 31,250
	DEFB	133,  5,191,187,223,120, 32,  3
	DEFB	191,236,167,127,128, 29,186,163
	DEFB	249,255,222,127,250,162, 42, 85
	DEFB	 85,121, 65, 88,  3,232, 48, 96
	DEFB	  0,126, 27, 64,  5,124,125,245
	DEFB	255,156, 30, 81,255,254,239, 64
	DEFB	 72,  3,179, 26, 83,160,230, 15
	DEFB	 24, 21,126,159,253,255,248, 89
	DEFB	190, 85, 85, 85, 97,  0,  7,204
	DEFB	214,129, 97,127, 38, 64, 67,254
	DEFB	 30,233,253,154,127,213,187,191
	DEFB	251,230,  0,  1,228,158, 15, 67
	DEFB	127,158, 96,115,255, 15,228,126
	DEFB	222, 91,235,213, 85, 85,  0,  0
	DEFB	  1,254,  1,243,100,253,190,  4
	DEFB	109, 86,131,241,254, 62,127,149
	DEFB	255,239,234,  0,  1,  0,254,134
	DEFB	 54,255,125,184,130,105,126,  1
	DEFB	251,255,190, 27,234,149, 85, 94
	DEFB	  0,  0,  0,254, 17,140,255, 85
	DEFB	191, 30,  8,111,216,120,235,255
	DEFB	 22, 20,251,251,116,  0,  0,  2
	DEFB	255,  0, 25,255, 67,185, 54,131
	DEFB	255,221,186,127,255,135, 42, 85
	DEFB	 85, 70, 64,  2, 12, 63,135,192
	DEFB	 59,156,153,154, 94,108,252,  0
	DEFB	 87,250,160,129,255,175,104,  0
	DEFB	  2, 13,  7,127,255,159, 30,152
	DEFB	188, 38,238,252,  0,167,248,130
	DEFB	175, 85,213,152, 96,  4,  6,128
	DEFB	255,255,143,128, 24,197,206,238
	DEFB	248,  0,  7,249, 30, 93,190,251
	DEFB	104,144,  1,  2, 97,255,255,  7
	DEFB	224, 24, 95,253,249,240,  0,  7
	DEFB	251, 29,191, 85, 85,113,  8,  0
	DEFB	129, 31,254,248,  1, 16, 31,102
	DEFB	  3,129,128,  5, 17,120,135,215
	DEFB	250,255,184, 16,  1,  0,255,253
	DEFB	152,  0,  8, 63,187,111,143,248
	DEFB	  0,120,121, 38,186, 93, 85, 64
	DEFB	  0,  0,128,254,224,  0,  0,  0
	DEFB	 63,156, 30, 10,232,  2,  6,135
	DEFB	231,213,239,235,224,  0,  0,  0
	DEFB	 36,  0,  0,  0,  0, 15,239,220
	DEFB	139,240,  1,120,231,163,234, 85
	DEFB	 85, 56,  0,  0, 10,  0,  0,  0
	DEFB	128,  0, 15,207,254, 28,112,  0
	DEFB	  7,  5,168, 81,207,255,224,129
	DEFB	128,  0,  0,  0,  0,  0,  0,  7
	DEFB	199,254, 30,112,  0, 26, 27,240
	DEFB	170,117, 85,104,  0,  0, 40,  0
	DEFB	  0,  0,  0,  1,128,195,191, 68
	DEFB	 16, 41, 10,212,105,133,255,187
	DEFB	168,  0,128,  8,  0,  0,  1,  0
	DEFB	  0,128,  1,158,228, 96,  0,  7
	DEFB	170,106,170, 85, 85,104,  0,  0
	DEFB	 16,  0,  0,  0, 34,111,  0,  0
	DEFB	201,240, 65, 20,  0, 17,  0, 85
	DEFB	190,254,136,  0,128, 32,  0,  0
	DEFB	  0,  0, 22, 32,  0, 19,250, 66
	DEFB	152,  5,232,136,170, 85, 87,112
	DEFB	  0,  0, 64,  0,  0,  1,137, 24
	DEFB	128,  0,  9,248, 96,  0,128, 22
	DEFB	 87, 85,255,238,152,  0,  0,  0
	DEFB	  0,  0,  1,132, 24,130,  0,  7
	DEFB	248, 32,  0,  0, 59,160,170, 85
	DEFB	 85,240,  0,  1,128,  0,  1, 20
	DEFB	102,214,184, 16,  7,248,160, 16
	DEFB	  5,200, 93, 85,254,238,104,  0
	DEFB	 64,128,  0,  1,134,250,104,152
	DEFB	  0,  0, 72,128, 24,  0,169,171
	DEFB	170, 85, 85,240,  0,  1,  0,  0
	DEFB	  4,255, 95, 85,255, 88,  8,  0
	DEFB	  0,  0,  6, 89, 84, 85,255,251
	DEFB	112,  0,  2,  0,  0,  1,191,235
	DEFB	106,234,160,128,  0,  0,  0,  0
	DEFB	 45,167,170, 85, 93,120,  0,  0
	DEFB	128,  0, 87,215,125,117,255,255
	DEFB	  8,  0,  0,  0,  0, 80, 16, 81
	DEFB	254,  8,184,  0,  1, 64,  0, 36
	DEFB	 22,154,238,166,  0,160,128,  5
	DEFB	128,  2,106,139,170,107, 32, 92
	DEFB	  0,  0,  1,123,  1,230,125, 89
	DEFB	 85,218,133,  8,  0,  1,  0, 85
	DEFB	 80, 85,231, 32,216,  0,  0,  0
	DEFB	 69,  4,103,109,105, 72,138,128
	DEFB	 88,  4,  8,128,170,105,170,125
	DEFB	133,176,  0,  8,  0, 55, 87,125
	DEFB	251,255,251,180,181,  0, 18, 65
	DEFB	  1, 85, 85,149,255,112,168,  0
	DEFB	  8,  1, 27,150, 94,103,217,166
	DEFB	178,160,  1,  2,  2,  0, 90, 11
	DEFB	170, 88,249,192,  0,  0,  0,253
	DEFB	 21,247,253,127,255,140,255,100
	DEFB	  0,192,  2, 36,120, 85,254,248
	DEFB	232,  0,  8,  0,127,  5,255,255
	DEFB	255,186,171,254,104,  8,  0,  1
	DEFB	174, 39,170, 88,249,128,  0, 16
	DEFB	  1, 86,119, 93,255,255,255,228
	DEFB	234,128,129,128,  0,145,212, 85
	DEFB	  7,255,224,  0,  4,  1,190, 87
	DEFB	255,255,254,238,162,239,200,  4
	DEFB	144,  1,122,150,170, 87,247,224
	DEFB	  0,  0,  5, 85, 85, 85,125,255
	DEFB	127,254, 85, 48,  1,  0,  0,134
	DEFB	 69, 85,  7,251,240,  0, 24, 21
	DEFB	235,159,255,255,255,254,174,234
	DEFB	142,  1,  0,  0,136,233, 42, 31
	DEFB	255,240,  0,  0,  1, 85,101,119
	DEFB	255,223,255,250, 85,240, 80,  0
	DEFB	  0,115, 36,213,159,255,240,  0
	DEFB	  0,  5,238, 93,223,255,254,255
	DEFB	234,254,110, 25,  0,  0, 37,197
	DEFB	170, 63,225,224,  0,  0, 23, 85
	DEFB	103,119,223,255,255,190, 85,240
	DEFB	 98, 32,  8,101, 53, 69, 63,227
	DEFB	240,  0,  0,  7,235, 87,255,255
	DEFB	191,255,254,171,190,146,  8,128
	DEFB	 90,170,170,127,255,224,  0, 40
	DEFB	 25, 85,122,151,189,255,126,213
	DEFB	 85,234,  8,128,  1, 97, 22,145
	DEFB	127,255,248,  0, 32, 29, 85,159
	DEFB	255,255,238,255,248,170,154, 20
	DEFB	  8,  0,102,170,106, 63,255,240
	DEFB	  0,  0, 71, 22,121, 87,127,255
	DEFB	253,127,149,100,  8,  0,  3, 88
	DEFB	 81,149,127,255,240,  0, 32, 15
	DEFB	 86,173,246,255,255,238,251,138
	DEFB	 97,  1,  0,  2,174,171, 42, 31
	DEFB	255,240,  0,  8, 85, 23,117, 95
	DEFB	149,223,183, 94,245,108,164,128
	DEFB	  1,161, 68, 85,161,255,240,  0
	DEFB	  0, 29,153,239,102,255,127,239
	DEFB	239,218,181,  6,132,  2,155,169
	DEFB	170,  7,253,160,  0,104, 87, 25
	DEFB	 22,255,239,255,253,121, 89, 70
	DEFB	 16,  0,  5, 80, 22, 85,  3,254
	DEFB	 32,  0, 64, 47, 95, 63,111,255
	DEFB	191,126,254,234, 88,146, 64,  2
	DEFB	168,170,234, 24, 80,136,  0,  0
	DEFB	 85, 84,213,247,117,245,255,230
	DEFB	 90, 90,  0,  0, 21, 71,149, 21
	DEFB	110,139,250,  0,  0, 31, 95,255
	DEFB	123,255,255,255,254,166,168,160
	DEFB	 16, 30,234,154,174,249,245, 94
	DEFB	  0, 64, 85, 17,119,223,125,254
	DEFB	127,239,217, 90,  1,  0,  2, 33
	DEFB	 85, 85,249,255,158,  2, 96, 31
	DEFB	173,187,255,255,255,255,238,111
	DEFB	181,  1,  0,  4,132,185,106, 95
	DEFB	 85,119,  0,  0, 21, 17,223,119
	DEFB	221, 87,117,251,208, 68,128, 84
	DEFB	 22, 55, 65, 85,170,254,255,  0
	DEFB	  0, 95, 90,251, 95,239,255,191
	DEFB	255,118,164,128,144, 10,184,154
	DEFB	170,255, 85, 85,128, 32, 21, 21
	DEFB	175,247,253, 93,255,234, 89, 86
	DEFB	  0,  4, 25, 71,102, 85,174,191
	DEFB	187,128,  8, 31,102,154,127,186
	DEFB	255,255,232,  5,252,128,  2, 26
	DEFB	 43,170, 42,255, 85, 89,  1, 16
	DEFB	 21, 64,  0,  5,223,149,148, 64
	DEFB	  0, 82,  1,  0, 85,224, 18, 85
	DEFB	255,190,239,129,  0, 29,224,  1
	DEFB	 91,255,255,253,  4,  0,116,128
	DEFB	  8,128,234, 43,106, 85, 85, 85
	DEFB	128, 16, 23,  5,128,  0, 31,106
	DEFB	144,  0, 16, 39,  1,129,  5,225
	DEFB	 84, 85,171,255,255,224,  0, 26
	DEFB	  0,  0,  1,151,234,168,  0,  0
	DEFB	 15,  1,  1,  5,167, 98,106,213
	DEFB	 85, 85, 64,  0, 94,159,234,  0
	DEFB	 21,104,128, 27,253, 86,128,  0
	DEFB	159,216, 93,145,255,255,255,162
	DEFB	  8, 30,155,170,  0, 85,168,160
	DEFB	  9,157, 23,128, 65, 23,214, 58
	DEFB	170, 85, 85, 85,128, 16, 23, 95
	DEFB	255,234,  7,168,153,127,251,134
	DEFB	128,  0, 92, 20,197, 85,251,191
	DEFB	 59,192,  0, 30,119,250,251,  5
	DEFB	184,139,251,255, 11,  0,  0, 62
	DEFB	154,171,106, 85, 85,213, 96,  0
	DEFB	119,222, 31,133,103, 90,116, 14
	DEFB	 16,117,132,  2, 96, 86, 20, 81
	DEFB	144,191,255,160,  0, 21,172,127
	DEFB	225, 39,234,  8,127,207, 44,128
	DEFB	  2,120, 40,174,254,130,213,101
	DEFB	 97,200, 95,145,128, 25,133, 88
	DEFB	161,128,113, 67,128, 22,231,130
	DEFB	 82, 85,192,255,255,227, 64, 63
	DEFB	160,  2,  4, 67,234,  0,  8,  9
	DEFB	 22,131,203,234,  2,170,187, 38
	DEFB	153,103, 88, 96, 87,136, 34,163
	DEFB	117,120, 88,128,129, 85, 36, 37
	DEFB	103,184, 21, 85, 27, 13,255,234
	DEFB	 96, 63,128,104, 57,233,232,121
	DEFB	128,  1, 26,148, 47,231,168,231
	DEFB	254,248,241, 85, 40,  8, 93,121
	DEFB	 96,102,127,123,197,164,231, 69
	DEFB	192,  1,191,254, 24, 85,217,170
	DEFB	191,152, 16,127,120,185,247,233
	DEFB	234,223,225,167,165, 65, 14,127
	DEFB	252, 58,187,  0,255,133,120,136
	DEFB	 23,217, 95,109,127,125,116,126
	DEFB	239, 81,160, 81,134, 26,133, 85
	DEFB	254,190,129,234, 24, 63,188, 27
	DEFB	133,235,234,144,238,174,191,161
	DEFB	 23,167,190,134,110, 85, 85,255
	DEFB	126,200, 87, 87,  0,117, 85,189
	DEFB	191,  0, 85,193,128, 21,158,214
	DEFB	118, 85,191,254,191,254,160,127
	DEFB	187, 64,103,255,236,250,128,251
	DEFB	187,160,150,159,171,106,106, 85
	DEFB	 87,197, 87,170, 23, 85,127,126
	DEFB	 85,119, 95,126, 85,196,133, 86
	DEFB	 87,228,153, 85,255,255,167,254
	DEFB	138, 95,191, 89,181,251,234,238
	DEFB	138,239,234,133, 30,191,233, 72
	DEFB	238, 89, 85,249, 87,120, 25, 85
	DEFB	 87,223, 85,125,119,245, 85,149
	DEFB	133, 85, 65,117, 87, 21,191,251
	DEFB	251,195,104, 95,186,127,171,191
	DEFB	110,167,106,186,170,137,230,137
	DEFB	226,186,250, 85, 85, 92,125,218
	DEFB	 23, 85, 85,254,197,245,253,234
	DEFB	 85, 84, 17, 26, 49, 21, 69, 21
	DEFB	255, 87,184,166,218, 31,247,122
	DEFB	239,215,110,255,122,254,170,155
	DEFB	 58,167,170,150,170, 85,253,239
	DEFB	128, 18,133,  5,167,118,125,250
	DEFB	 87,221, 85,  0, 24,201,148, 84
	DEFB	 90, 85,251,254, 94,193,154, 31
	DEFB	246,111,255,175,190,253,170,174
	DEFB	168,158,238,194, 27,185,234, 85
	DEFB	103,251, 55,144,133,  5, 85, 84
	DEFB	247,230,167,126, 85,  1, 26, 17
	DEFB	 25,100, 69, 21,255,183,255, 95
	DEFB	152,151,175,225,245,255,235,239
	DEFB	235,254,168,186,173,166,105,138
	DEFB	170, 85,223,149, 21,216,  5, 17
	DEFB	 31, 93,103,253,117,124, 85,  1
	DEFB	 28,145, 97,166,118,149,187,255
	DEFB	191,135,232, 21,171, 87,251,255
	DEFB	255,247,254,171,160, 30, 38,166
	DEFB	171,150,106, 85, 85,232,254,134
	DEFB	197, 20, 93, 92, 21,152, 69,134
	DEFB	 85,  5,180, 84,133, 20, 37, 85
	DEFB	255,254,143,250,146,133,101,111
	DEFB	108,191,255,229,250,239,104, 46
	DEFB	170,109,169,169,170, 85, 87, 39
	DEFB	253,216,165, 21, 85,245,  0,254
	DEFB	  7, 94,160,248,102, 68, 81, 81
	DEFB	 85, 85,187,187, 15,254,144,133
	DEFB	 22,121,188,101,254,  7,254,235
	DEFB	186, 30,142,234,170, 42,234, 85
	DEFB	 85, 63,255,151,161, 69,  7,214
	DEFB	  0,161, 31,215,104,200,120, 81
	DEFB	  1, 73,101, 21,255,255, 63,255
	DEFB	145,161,  7,103,254, 40,226, 30
	DEFB	186,234,170,122, 73,171,165,168
	DEFB	174, 85, 86, 95,255,238,165, 84
	DEFB	 21, 95,129, 29,127,239,104,168
	DEFB	 88,118, 84, 85, 87, 85,190,231
	DEFB	 31,255,239,165,151, 23,127,169
	DEFB	217,127,191,186,168,122,104,170
	DEFB	171,234,170, 85, 85,127,190,164
	DEFB	225,  0, 85,217, 97, 89,245,246
	DEFB	200,144,120,134, 40, 16, 21, 85
	DEFB	255,253,224,255,247,128,168, 23
	DEFB	191,242, 97,239,254,170,168,120
	DEFB	169,170,166,168,239, 85, 86,126
	DEFB	254,254,153, 65, 85,253,220, 15
	DEFB	246, 91,224,  0, 64, 69, 84, 21
	DEFB	151, 85,187,191,250,255,254,144
	DEFB	161,167,251,254, 39,255,255,170
	DEFB	129,136, 42,170, 26,170,187, 85
	DEFB	 85, 94,254,126,249,  5, 85,109
	DEFB	 95,254, 85,168,144, 20, 17,148
	DEFB	 68, 97, 85, 85,239,239,234,249
	DEFB	127,248,161, 85,217, 95,255,251
	DEFB	222,170,  4,  2,208,237,191,186
	DEFB	254, 85, 85,127,121,252,249,  5
	DEFB	 87,191,249, 96, 93,182,160,162
	DEFB	 86, 31, 16,128, 69, 85,254,187
	DEFB	251, 96,255,248,170,110,255,160
	DEFB	 98, 93,254,168,162,148, 26, 58
	DEFB	161,106,171, 85, 85,110,239,100
	DEFB	253,128, 17,164,  0,  0,  2, 70
	DEFB	161,134,199,254,129, 37, 25, 85
	DEFB	254,255,129,148,102, 92,255,106
	DEFB	186,  0,  0,255,170,160,166, 62
	DEFB	255,174,250, 46,138, 85, 85,  5
	DEFB	127,255,242, 21, 25, 64, 69,  0
	DEFB	  0, 21,169, 14, 87,164, 17,  5
	DEFB	209,  0,239,190,133, 95,254,224
	DEFB	221, 27,128,128,  0,224,162,170
	DEFB	 74,190,248,170,171,154, 34, 85
	DEFB	 85,  3,249,228, 98, 23, 85,160
	DEFB	 32, 26,255,222,148, 31, 81,166
	DEFB	 64,  0,129,  0,238,239,  3,253
	DEFB	233,128, 93, 23, 82, 74,208,255
	DEFB	138,234,158,126,234,170,171,174
	DEFB	 47,117, 85,  5, 88,120,241, 23
	DEFB	 84,248,  0, 26,247,245, 24, 26
	DEFB	130, 20,133, 68, 16, 69,191,187
	DEFB	103,249, 96,209, 95, 22,248,  2
	DEFB	106,255,235,186, 47,184, 42,234
	DEFB	 98,154, 59, 85,213,  2, 64,114
	DEFB	112,  5, 87,158,128,  0,167, 84
	DEFB	132,103,  2,209, 16,132,165, 85
	DEFB	190,255,255,255,245,165, 23,149
	DEFB	126,  0,128,  7,234,234, 95,  0
	DEFB	169,154,170,150,254, 85, 85, 85
	DEFB	 85, 99, 53, 69,  5,234,160,  1
	DEFB	 85, 90,252,114, 69,228, 20,  0
	DEFB	  0, 85,255,187,187,187, 37,123
	DEFB	 23, 69,231,162,  0, 21,234,186
	DEFB	236,129,170,190, 42,128,106, 85
	DEFB	 85, 85, 85,228, 13,  1, 21,108
	DEFB	100,103,223,100,216,117, 57,225
	DEFB	128,128,  1, 85,254,190,190,239
	DEFB	167,166,  5, 70,250,  0,  0, 31
	DEFB	170,184,229, 56,234,  0, 32,128
	DEFB	234, 85, 85, 85, 85,102,141, 81
	DEFB	 22,109,253,191,245,230,232,112
	DEFB	255,248,190,137, 31, 21,191,255
	DEFB	255,251,178,  5,  9,  7, 95,226
	DEFB	234,170,186,240,225,127,248,126
	DEFB	133,158,170, 85, 85, 85, 85, 90
	DEFB	 22, 17, 84,181, 95,191,255,132
	DEFB	128, 96,126,  7, 66, 39,255,145
	DEFB	255,238,239,255,216,142,132,127
	DEFB	175,127,171,254,254,224,100,254
	DEFB	155,174,  5,255, 47, 89, 85, 85
	DEFB	 85,102, 25, 18, 23, 81,213,254
	DEFB	 85,150,  0,  3,255,248, 81, 95
	DEFB	230,223,123,255,251,187,234, 10
	DEFB	146, 31,239,247,127, 91,174,128
	DEFB	 19,255,239,187,159,231,191,237
	DEFB	 85, 85, 85, 21,117,  5, 85, 16
	DEFB	  5,214,104,250,  4, 15,223,240
	DEFB	  0,  7,239,247,254,191,239,251
	DEFB	182,234,146,141,191,191,251,174
	DEFB	250,136,  7,191,234,170,103,239
	DEFB	255,103, 85, 85, 85, 86, 89,  5
	DEFB	161,  0, 64, 93,145,128,  0, 19
	DEFB	199,241,132,  5,121,127,255,254
	DEFB	251,239,170,167,144, 34, 26,190
	DEFB	255,250,232, 32,  1,247,234,170
	DEFB	129,231,255,166, 85, 85, 85, 86
	DEFB	165,  7,218,  0,  1, 16,  0,  1
	DEFB	 68, 17,237,228,132, 15,255,247
	DEFB	128,255,255,251,255,106, 30,171
	DEFB	 47,255,191,255,160,136,  0,255
	DEFB	169,170,159,251,255,127, 85, 85
	DEFB	 85, 85,213,  1, 84,193, 93, 84
	DEFB	152,  6, 16,  0,127,196, 73, 87
	DEFB	255,255,110,171,187,191,187,154
	DEFB	 23,169,169,159,250,166, 36, 25
	DEFB	  0, 63,234,234,143,255,255, 87
	DEFB	213, 85, 85, 85,106,  0,  0, 82
	DEFB	 81,  8, 96, 65, 64,128, 30,161
	DEFB	  0, 23,215,255, 94,191,255,255
	DEFB	255,110,  5,169,138, 71, 98, 40
	DEFB	  0,168,  0, 15,170,232, 79,215
	DEFB	255, 22,229, 85, 85, 85, 80, 22
	DEFB	 81,182,120,  8,233,106,  1,128
	DEFB	  4, 82,  3,113, 31,253, 30,171
	DEFB	235,187,171,248,  6,170,174,180
	DEFB	 34,128, 23,193,  0,  2,161,170
	DEFB	 88, 31,255, 64, 85, 85, 85, 85
	DEFB	 64, 21,  1, 86, 87,196,189, 80
	DEFB	 31,128,  0, 21, 81,127,191,149
	DEFB	239,239,239,255,187,240,  6,170
	DEFB	170,170,170,164,154,  7,  0,  0
	DEFB	 90,152, 24, 31,255,117, 85, 85
	DEFB	 85, 68,  0, 21, 65, 84, 68, 65
	DEFB	 89, 85, 68,128,  0, 37,  1,129
	DEFB	247,157,  1,254,251,187,167,224
	DEFB	  5,170,170,170,170,170,165, 10
	DEFB	128,  0, 26,129,131,253,255,255
	DEFB	 21, 85, 85, 84,  0, 21, 65,  4
	DEFB	 17,  1, 90, 85,117,128,  0,  1
	DEFB	  7,152,  3,213,169,255,175,251
	DEFB	171,128, 10,170,170,170,170,230
	DEFB	105,122, 32,  0,  6,135,233,165
	DEFB	255,249, 22, 85, 85, 84,128, 31
	DEFB	 69, 84, 21, 69, 21, 87, 86,128
	DEFB	  0,  0, 20, 96,  7,253,169,137
	DEFB	251,235,186,  0, 31,170,170,170
	DEFB	170,232,189,126,  0,  0,  0, 23
	DEFB	160, 71,255,255,249, 85, 85, 64
	DEFB	  0, 21, 16,  1, 16, 16, 87, 87
	DEFB	130,128,  0,  0, 10,128,  1,215
	DEFB	238,187,175,233,160,  0,  5,128
	DEFB	 40,170,170, 34,  6,234,  0,  0
	DEFB	  0,  8,122,139,234,119,233,213
	DEFB	 86,128,  0, 31,122,129, 84, 65
	DEFB	221, 85, 85,128,  0,  0,  1,232
	DEFB	 16,  4,187,235,235,175,  0,  0
	DEFB	 23, 40,  8,170,170,169,  6,170
	DEFB	160,  0,  0,  1,234,129,170, 85
	DEFB	 85, 85, 80,  0,  0, 21,218,226
	DEFB	  1, 17, 85, 87,213,  0,  0,  0
	DEFB	  1,122,188,  0,238,254,239,232
	DEFB	  0,  0, 23,106,  2,170,170,165
	DEFB	 95,250,128,  0,  0,  0,121,169
	DEFB	170, 85, 85, 85, 32,  0,  0, 21
	DEFB	154,168, 65, 68, 87, 82,138,  0
	DEFB	  0,  0,  0, 25, 68,  4,235,190
	DEFB	251,128,  0,  0, 31,127, 40,170
	DEFB	169,229, 94,170,160,  0,  0,  0
	DEFB	 26,170,170, 85, 85, 22,  0,  0
	DEFB	  0,  5, 97,234,  1, 17,127, 86
	DEFB	170,  0,  0,  0,  0,  4, 22,  0
	DEFB	  4, 39, 39, 55,  7,  4,  4,  4
	DEFB	  6,  7,  7, 23,  7,  7,  4,  4
	DEFB	  4,  4,  4,  4,  4,  4, 39, 55
	DEFB	  7, 39,  7, 39,  4, 23, 23, 23
	DEFB	 23, 55,  7,  7,  7,  4,  4,  4
	DEFB	  4,  4, 39,  7, 55,  7, 55, 39
	DEFB	 39, 55, 55, 23, 55, 55, 23, 55
	DEFB	 23, 23,  7,  4,  4,  4,  4, 39
	DEFB	 28, 39, 39,  7,  4, 55, 55, 55
	DEFB	 23,  7,  7, 23, 23, 23, 23, 38
	DEFB	  7,  7,  4,  4, 12, 12, 12,  4
	DEFB	  6,  7, 55, 55, 23, 23,  7,  7
	DEFB	 23, 23, 55,  7,  7, 39, 55,  4
	DEFB	 39, 12, 12,  4,  6,  6,  7, 23
	DEFB	 23, 23,  2, 23, 23, 23, 55, 55
	DEFB	  7,  7,  7,  7, 39, 38, 12, 12
	DEFB	  4,  6,  6,  7,  7,  7,  6,  6
	DEFB	  6,  7,  7, 23, 23,  2,  7,  4
	DEFB	  4,  7,  4, 12, 12,  4,  0,  7
	DEFB	  7,  0,  6,  6,  7, 55,  6,  6
	DEFB	  7,  7,  2,  7,  7,  4,  4,  4
	DEFB	 28, 39,  4,  0,  7,  6,  2, 55
	DEFB	 55, 55, 55, 55, 55,  2,  6,  7
	DEFB	  6,  7,  4,  4,  4, 39, 55,  7
	DEFB	  0,  6,  2, 30, 55, 55, 55, 55
	DEFB	 55, 55, 30,  6,  7,  7,  6,  4
	DEFB	  4,  4, 39, 55,  7,  0,  6,  2
	DEFB	 55, 55, 55, 55, 55, 55, 55, 55
	DEFB	 55,  7,  6,  4,  4,  4,  4, 28
	DEFB	 12, 12,  4,  6,  2, 55,  7, 55
	DEFB	 55, 55, 55, 23, 55, 55,  7,  6
	DEFB	  4,  4,  4,  4, 12, 12, 12,  4
	DEFB	  6,  2,  2,  6,  2,  7, 55,  2
	DEFB	  6,  6, 23,  7,  7, 39,  4,  4
	DEFB	  4, 39, 28, 28,  4,  6,  2, 22
	DEFB	  6,  7, 23, 55, 23,  7,  2, 55
	DEFB	  7,  4,  4,  7,  4, 12, 12, 12
	DEFB	 28, 28,  2,  2, 30, 55, 55, 55
	DEFB	 55, 23, 55, 30, 22,  6,  4,  4
	DEFB	  4,  4,  4, 12, 28, 28, 39, 22
	DEFB	  2, 22, 55, 55, 23, 55, 23, 55
	DEFB	 30, 21,  2,  4,  4,  4,  4,  4
	DEFB	 12, 12, 39, 55, 22,  2, 22, 55
	DEFB	 55, 21,  2, 23, 23, 22,  2,  6
	DEFB	  4,  4,  4,  4,  4, 12, 12, 28
	DEFB	  7,  7,  7, 20, 55, 23, 23, 23
	DEFB	 23, 23, 22,  6,  7,  4,  4,  4
	DEFB	  4, 12, 12, 12, 39, 39,  7, 39
	DEFB	  2, 55, 23, 21, 23,  2, 55, 22
	DEFB	  7, 38,  4,  4,  4,  4, 39, 12
	DEFB	 12, 12, 12,  4,  4,  2, 55, 23
	DEFB	 55, 23, 23, 55,  2,  7, 39,  4
	DEFB	  4,  5,  7,  4, 28, 12, 12, 12
	DEFB	  4,  4,  6,  2, 55, 55, 23, 55
	DEFB	  6,  6,  7, 39,  4,  4,  7,  7
	DEFB	 39, 39, 12, 12, 12, 12,  4,  2
	DEFB	 20,  2,  2, 22,  2,  6,  6,  6
	DEFB	  7,  4,  4,  4,  7, 39, 28, 12
	DEFB	 12, 12,  4,  4,  2, 20, 20, 20
	DEFB	 20,  2,  2, 55,  7,  0,  4,  6
	DEFB	 38, 39,  7, 12, 12, 12,  4,  4
	DEFB	  0,  6, 55, 21, 20, 20,  2, 55
	DEFB	 55,  7,  0,  0,  7,  4,  4,  5