/* 80034838 00031778  7C 80 2E 70 */	srawi r0, r4, 5
/* 8003483C 0003177C  54 00 10 3A */	slwi r0, r0, 2
/* 80034840 00031780  7C C3 02 14 */	add r6, r3, r0
/* 80034844 00031784  80 A6 00 08 */	lwz r5, 8(r6)
/* 80034848 00031788  38 60 00 01 */	li r3, 1
/* 8003484C 0003178C  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034850 00031790  7C 60 00 30 */	slw r0, r3, r0
/* 80034854 00031794  7C A0 00 78 */	andc r0, r5, r0
/* 80034858 00031798  90 06 00 08 */	stw r0, 8(r6)
/* 8003485C 0003179C  4E 80 00 20 */	blr 