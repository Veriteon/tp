/* 802D1E1C 002CED5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1E20 002CED60  7C 08 02 A6 */	mflr r0
/* 802D1E24 002CED64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1E28 002CED68  38 A0 00 00 */	li r5, 0
/* 802D1E2C 002CED6C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D1E30 002CED70  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D1E34 002CED74  7D 89 03 A6 */	mtctr r12
/* 802D1E38 002CED78  4E 80 04 21 */	bctrl 
/* 802D1E3C 002CED7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1E40 002CED80  7C 08 03 A6 */	mtlr r0
/* 802D1E44 002CED84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1E48 002CED88  4E 80 00 20 */	blr 