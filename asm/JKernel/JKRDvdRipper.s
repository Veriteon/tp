.include "macros.inc"

.section .text, "ax" # 802DA7DC

.global __sinit_JKRDvdRipper_cpp
__sinit_JKRDvdRipper_cpp:
/* 802DA7DC 002D771C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DA7E0 002D7720  7C 08 02 A6 */	mflr r0
/* 802DA7E4 002D7724  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DA7E8 002D7728  3C 60 80 43 */	lis r3, lbl_80434384@ha
/* 802DA7EC 002D772C  38 63 43 84 */	addi r3, r3, lbl_80434384@l
/* 802DA7F0 002D7730  48 00 17 25 */	bl initiate__10JSUPtrListFv
/* 802DA7F4 002D7734  3C 60 80 43 */	lis r3, lbl_80434384@ha
/* 802DA7F8 002D7738  38 63 43 84 */	addi r3, r3, lbl_80434384@l
.global JSUList_NS_dtor_X8_
/* 802DA7FC 002D773C  3C 80 80 2E */	lis r4, JSUList_NS_dtor_X8_@ha
.global JSUList_NS_dtor_X8_
/* 802DA800 002D7740  38 84 A8 20 */	addi r4, r4, JSUList_NS_dtor_X8_@l
/* 802DA804 002D7744  3C A0 80 43 */	lis r5, lbl_80434378@ha
/* 802DA808 002D7748  38 A5 43 78 */	addi r5, r5, lbl_80434378@l
/* 802DA80C 002D774C  48 08 74 19 */	bl func_80361C24
/* 802DA810 002D7750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DA814 002D7754  7C 08 03 A6 */	mtlr r0
/* 802DA818 002D7758  38 21 00 10 */	addi r1, r1, 0x10
/* 802DA81C 002D775C  4E 80 00 20 */	blr 
.global JSUList_NS_dtor_X8_
JSUList_NS_dtor_X8_:
/* 802DA820 002D7760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DA824 002D7764  7C 08 02 A6 */	mflr r0
/* 802DA828 002D7768  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DA82C 002D776C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DA830 002D7770  93 C1 00 08 */	stw r30, 8(r1)
/* 802DA834 002D7774  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DA838 002D7778  7C 9F 23 78 */	mr r31, r4
/* 802DA83C 002D777C  41 82 00 1C */	beq lbl_802DA858
/* 802DA840 002D7780  38 80 00 00 */	li r4, 0
/* 802DA844 002D7784  48 00 16 69 */	bl __dt__10JSUPtrListFv
/* 802DA848 002D7788  7F E0 07 35 */	extsh. r0, r31
/* 802DA84C 002D778C  40 81 00 0C */	ble lbl_802DA858
/* 802DA850 002D7790  7F C3 F3 78 */	mr r3, r30
/* 802DA854 002D7794  4B FF 44 E9 */	bl __dl__FPv
lbl_802DA858:
/* 802DA858 002D7798  7F C3 F3 78 */	mr r3, r30
/* 802DA85C 002D779C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DA860 002D77A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DA864 002D77A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DA868 002D77A8  7C 08 03 A6 */	mtlr r0
/* 802DA86C 002D77AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802DA870 002D77B0  4E 80 00 20 */	blr 

