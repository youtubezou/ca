	.ORIG x3000
	AND R0, R0, #0
	ADD R0, R0, #1
	LEA R1, INIT
	LDW R1, R1, #0
	STW R0, R1, #0
	LEA R0, COUNT
	LDW R0, R0, #0; R0 = 20
	AND R2, R2, #0
	LEA R1, DATA
	LDW R1, R1, #0
TODO	LDB R3, R1, #0
	ADD R2, R2, R3
	ADD R1, R1, #1
	ADD R0, R0, #-1
	BRp TODO
	LEA R0, STORE
	LDW R0, R0, #0		
	STW R2, R0, #0
	HALT
COUNT	.FILL x0014
INIT	.FILL x4000
DATA	.FILL xC000
STORE	.FILL x0000
	.END
