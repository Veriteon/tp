/* 80284500 00281440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284504 00281444  7C 08 02 A6 */	mflr r0
/* 80284508 00281448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028450C 0028144C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284510 00281450  7C 7F 1B 78 */	mr r31, r3
/* 80284514 00281454  7F E5 FB 78 */	mr r5, r31
/* 80284518 00281458  80 84 00 00 */	lwz r4, 0(r4)
/* 8028451C 0028145C  A0 04 00 06 */	lhz r0, 6(r4)
/* 80284520 00281460  38 60 00 00 */	li r3, 0
/* 80284524 00281464  28 00 00 00 */	cmplwi r0, 0
/* 80284528 00281468  41 82 00 08 */	beq lbl_80284530
/* 8028452C 0028146C  38 64 00 08 */	addi r3, r4, 8
lbl_80284530:
/* 80284530 00281470  90 65 00 00 */	stw r3, 0(r5)
/* 80284534 00281474  90 05 00 04 */	stw r0, 4(r5)
/* 80284538 00281478  3C 60 80 3C */	lis r3, lbl_803C4AB0@ha
/* 8028453C 0028147C  38 03 4A B0 */	addi r0, r3, lbl_803C4AB0@l
/* 80284540 00281480  90 05 00 08 */	stw r0, 8(r5)
/* 80284544 00281484  38 00 00 00 */	li r0, 0
/* 80284548 00281488  90 05 00 0C */	stw r0, 0xc(r5)
/* 8028454C 0028148C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80284550 00281490  38 7F 00 18 */	addi r3, r31, 0x18
/* 80284554 00281494  90 65 00 14 */	stw r3, 0x14(r5)
/* 80284558 00281498  3C 80 80 3C */	lis r4, lbl_803C4A60@ha
/* 8028455C 0028149C  38 04 4A 60 */	addi r0, r4, lbl_803C4A60@l
/* 80284560 002814A0  90 1F 00 08 */	stw r0, 8(r31)
/* 80284564 002814A4  4B FF E7 D1 */	bl __ct__Q27JStudio29TFunctionValue_list_parameterFv
/* 80284568 002814A8  7F E3 FB 78 */	mr r3, r31
/* 8028456C 002814AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284570 002814B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284574 002814B4  7C 08 03 A6 */	mtlr r0
/* 80284578 002814B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028457C 002814BC  4E 80 00 20 */	blr 