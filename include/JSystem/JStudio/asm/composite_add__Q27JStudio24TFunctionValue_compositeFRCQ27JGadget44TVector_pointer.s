/* 80282094 0027EFD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80282098 0027EFD8  7C 08 02 A6 */	mflr r0
/* 8028209C 0027EFDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802820A0 0027EFE0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802820A4 0027EFE4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802820A8 0027EFE8  FF C0 08 90 */	fmr f30, f1
/* 802820AC 0027EFEC  CB E4 00 00 */	lfd f31, 0(r4)
/* 802820B0 0027EFF0  80 03 00 08 */	lwz r0, 8(r3)
/* 802820B4 0027EFF4  80 63 00 04 */	lwz r3, 4(r3)
/* 802820B8 0027EFF8  90 61 00 08 */	stw r3, 8(r1)
/* 802820BC 0027EFFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802820C0 0027F000  48 00 00 2C */	b lbl_802820EC
lbl_802820C4:
/* 802820C4 0027F004  80 61 00 08 */	lwz r3, 8(r1)
/* 802820C8 0027F008  38 03 00 04 */	addi r0, r3, 4
/* 802820CC 0027F00C  90 01 00 08 */	stw r0, 8(r1)
/* 802820D0 0027F010  80 63 00 00 */	lwz r3, 0(r3)
/* 802820D4 0027F014  FC 20 F0 90 */	fmr f1, f30
/* 802820D8 0027F018  81 83 00 00 */	lwz r12, 0(r3)
/* 802820DC 0027F01C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802820E0 0027F020  7D 89 03 A6 */	mtctr r12
/* 802820E4 0027F024  4E 80 04 21 */	bctrl 
/* 802820E8 0027F028  FF FF 08 2A */	fadd f31, f31, f1
lbl_802820EC:
/* 802820EC 0027F02C  80 61 00 08 */	lwz r3, 8(r1)
/* 802820F0 0027F030  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802820F4 0027F034  7C 03 00 40 */	cmplw r3, r0
/* 802820F8 0027F038  40 82 FF CC */	bne lbl_802820C4
/* 802820FC 0027F03C  FC 20 F8 90 */	fmr f1, f31
/* 80282100 0027F040  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80282104 0027F044  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80282108 0027F048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028210C 0027F04C  7C 08 03 A6 */	mtlr r0
/* 80282110 0027F050  38 21 00 20 */	addi r1, r1, 0x20
/* 80282114 0027F054  4E 80 00 20 */	blr 