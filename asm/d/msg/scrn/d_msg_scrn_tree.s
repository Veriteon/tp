.include "macros.inc"

.section .text, "ax" # 80248954


.global dMsgScrnTree_c
dMsgScrnTree_c:
/* 80248954 00245894  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80248958 00245898  7C 08 02 A6 */	mflr r0
/* 8024895C 0024589C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80248960 002458A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80248964 002458A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80248968 002458A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8024896C 002458AC  48 11 98 69 */	bl _savegpr_27
/* 80248970 002458B0  7C 7F 1B 78 */	mr r31, r3
/* 80248974 002458B4  7C 9C 23 78 */	mr r28, r4
/* 80248978 002458B8  7C BB 2B 78 */	mr r27, r5
/* 8024897C 002458BC  4B FF 37 61 */	bl dMsgScrnBase_c
/* 80248980 002458C0  3C 80 80 3C */	lis r4, lbl_803C1420@ha
/* 80248984 002458C4  38 04 14 20 */	addi r0, r4, lbl_803C1420@l
/* 80248988 002458C8  90 1F 00 00 */	stw r0, 0(r31)
/* 8024898C 002458CC  28 1B 00 00 */	cmplwi r27, 0
/* 80248990 002458D0  41 82 00 0C */	beq lbl_8024899C
/* 80248994 002458D4  93 7F 00 D8 */	stw r27, 0xd8(r31)
/* 80248998 002458D8  48 00 00 10 */	b lbl_802489A8
lbl_8024899C:
/* 8024899C 002458DC  38 60 00 07 */	li r3, 7
/* 802489A0 002458E0  4B DE 5A 31 */	bl dComIfGp_getSubHeap2D
/* 802489A4 002458E4  90 7F 00 D8 */	stw r3, 0xd8(r31)
lbl_802489A8:
/* 802489A8 002458E8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 802489AC 002458EC  48 08 5D D9 */	bl getTotalFreeSize__7JKRHeapCFv
/* 802489B0 002458F0  7F E3 FB 78 */	mr r3, r31
/* 802489B4 002458F4  4B FF 37 B9 */	bl dMsgScrnBase_c_NS_init
/* 802489B8 002458F8  28 1C 00 00 */	cmplwi r28, 0
/* 802489BC 002458FC  40 82 00 10 */	bne lbl_802489CC
/* 802489C0 00245900  4B DC C0 31 */	bl mDoExt_getMesgFont
/* 802489C4 00245904  90 7F 00 54 */	stw r3, 0x54(r31)
/* 802489C8 00245908  48 00 00 08 */	b lbl_802489D0
lbl_802489CC:
/* 802489CC 0024590C  93 9F 00 54 */	stw r28, 0x54(r31)
lbl_802489D0:
/* 802489D0 00245910  38 60 01 18 */	li r3, 0x118
/* 802489D4 00245914  48 08 62 79 */	bl __nw__FUl
/* 802489D8 00245918  7C 60 1B 79 */	or. r0, r3, r3
/* 802489DC 0024591C  41 82 00 0C */	beq lbl_802489E8
/* 802489E0 00245920  48 0A FA B9 */	bl __ct__9J2DScreenFv
/* 802489E4 00245924  7C 60 1B 78 */	mr r0, r3
lbl_802489E8:
/* 802489E8 00245928  90 1F 00 04 */	stw r0, 4(r31)
/* 802489EC 0024592C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802489F0 00245930  3C 80 80 3A */	lis r4, lbl_80399C30@ha
/* 802489F4 00245934  38 84 9C 30 */	addi r4, r4, lbl_80399C30@l
/* 802489F8 00245938  3C A0 01 02 */	lis r5, 0x102
/* 802489FC 0024593C  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80248A00 00245940  3B 66 61 C0 */	addi r27, r6, g_dComIfG_gameInfo@l
/* 80248A04 00245944  80 DB 5C 74 */	lwz r6, 0x5c74(r27)
/* 80248A08 00245948  48 0A FC 41 */	bl J2DScreen_NS_setPriority
/* 80248A0C 0024594C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248A10 00245950  48 00 C6 D9 */	bl dPaneClass_showNullPane
/* 80248A14 00245954  38 60 00 04 */	li r3, 4
/* 80248A18 00245958  64 63 00 04 */	oris r3, r3, 4
/* 80248A1C 0024595C  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80248A20 00245960  38 60 00 05 */	li r3, 5
/* 80248A24 00245964  64 63 00 05 */	oris r3, r3, 5
/* 80248A28 00245968  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80248A2C 0024596C  38 60 00 06 */	li r3, 6
/* 80248A30 00245970  64 63 00 06 */	oris r3, r3, 6
/* 80248A34 00245974  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80248A38 00245978  38 60 00 07 */	li r3, 7
/* 80248A3C 0024597C  64 63 00 07 */	oris r3, r3, 7
/* 80248A40 00245980  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80248A44 00245984  3C 80 80 3A */	lis r4, lbl_80399C30@ha
/* 80248A48 00245988  38 84 9C 30 */	addi r4, r4, lbl_80399C30@l
/* 80248A4C 0024598C  38 64 00 18 */	addi r3, r4, 0x18
/* 80248A50 00245990  80 9B 5C 74 */	lwz r4, 0x5c74(r27)
/* 80248A54 00245994  48 08 B8 1D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80248A58 00245998  48 0C 00 15 */	bl J2DAnmLoaderDataBase_NS_load
/* 80248A5C 0024599C  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 80248A60 002459A0  3C 80 80 3A */	lis r4, lbl_80399C30@ha
/* 80248A64 002459A4  38 84 9C 30 */	addi r4, r4, lbl_80399C30@l
/* 80248A68 002459A8  38 64 00 30 */	addi r3, r4, 0x30
/* 80248A6C 002459AC  80 9B 5C 74 */	lwz r4, 0x5c74(r27)
/* 80248A70 002459B0  48 08 B8 01 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80248A74 002459B4  48 0B FF F9 */	bl J2DAnmLoaderDataBase_NS_load
/* 80248A78 002459B8  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80248A7C 002459BC  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80248A80 002459C0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248A84 002459C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80248A88 002459C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80248A8C 002459CC  7D 89 03 A6 */	mtctr r12
/* 80248A90 002459D0  4E 80 04 21 */	bctrl 
/* 80248A94 002459D4  C0 02 B3 58 */	lfs f0, lbl_80454D58-_SDA2_BASE_(r2)
/* 80248A98 002459D8  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 80248A9C 002459DC  3C 80 80 3A */	lis r4, lbl_80399C30@ha
/* 80248AA0 002459E0  38 84 9C 30 */	addi r4, r4, lbl_80399C30@l
/* 80248AA4 002459E4  38 64 00 48 */	addi r3, r4, 0x48
/* 80248AA8 002459E8  80 9B 5C 74 */	lwz r4, 0x5c74(r27)
/* 80248AAC 002459EC  48 08 B7 C5 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80248AB0 002459F0  48 0B FF BD */	bl J2DAnmLoaderDataBase_NS_load
/* 80248AB4 002459F4  90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 80248AB8 002459F8  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80248ABC 002459FC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248AC0 00245A00  81 83 00 00 */	lwz r12, 0(r3)
/* 80248AC4 00245A04  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80248AC8 00245A08  7D 89 03 A6 */	mtctr r12
/* 80248ACC 00245A0C  4E 80 04 21 */	bctrl 
/* 80248AD0 00245A10  C0 02 B3 58 */	lfs f0, lbl_80454D58-_SDA2_BASE_(r2)
/* 80248AD4 00245A14  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 80248AD8 00245A18  38 60 00 6C */	li r3, 0x6c
/* 80248ADC 00245A1C  48 08 61 71 */	bl __nw__FUl
/* 80248AE0 00245A20  7C 60 1B 79 */	or. r0, r3, r3
/* 80248AE4 00245A24  41 82 00 24 */	beq lbl_80248B08
/* 80248AE8 00245A28  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248AEC 00245A2C  3C A0 73 69 */	lis r5, 0x73697A65@ha
/* 80248AF0 00245A30  38 C5 7A 65 */	addi r6, r5, 0x73697A65@l
/* 80248AF4 00245A34  38 A0 6E 5F */	li r5, 0x6e5f
/* 80248AF8 00245A38  38 E0 00 02 */	li r7, 2
/* 80248AFC 00245A3C  39 00 00 00 */	li r8, 0
/* 80248B00 00245A40  48 00 AE 85 */	bl CPaneMgr_X1_
/* 80248B04 00245A44  7C 60 1B 78 */	mr r0, r3
lbl_80248B08:
/* 80248B08 00245A48  90 1F 00 08 */	stw r0, 8(r31)
/* 80248B0C 00245A4C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B10 00245A50  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B14 00245A54  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80248B18 00245A58  81 83 00 00 */	lwz r12, 0(r3)
/* 80248B1C 00245A5C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80248B20 00245A60  7D 89 03 A6 */	mtctr r12
/* 80248B24 00245A64  4E 80 04 21 */	bctrl 
/* 80248B28 00245A68  C0 02 B3 5C */	lfs f0, lbl_80454D5C-_SDA2_BASE_(r2)
/* 80248B2C 00245A6C  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80248B30 00245A70  D0 04 00 08 */	stfs f0, 8(r4)
/* 80248B34 00245A74  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B38 00245A78  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B3C 00245A7C  48 0A F4 91 */	bl animationTransform__7J2DPaneFv
/* 80248B40 00245A80  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B44 00245A84  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B48 00245A88  38 80 00 00 */	li r4, 0
/* 80248B4C 00245A8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80248B50 00245A90  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80248B54 00245A94  7D 89 03 A6 */	mtctr r12
/* 80248B58 00245A98  4E 80 04 21 */	bctrl 
/* 80248B5C 00245A9C  3C 80 80 43 */	lis r4, lbl_8043028C@ha
/* 80248B60 00245AA0  38 A4 02 8C */	addi r5, r4, lbl_8043028C@l
/* 80248B64 00245AA4  C0 25 00 B0 */	lfs f1, 0xb0(r5)
/* 80248B68 00245AA8  80 9F 00 08 */	lwz r4, 8(r31)
/* 80248B6C 00245AAC  80 64 00 04 */	lwz r3, 4(r4)
/* 80248B70 00245AB0  C0 05 00 84 */	lfs f0, 0x84(r5)
/* 80248B74 00245AB4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80248B78 00245AB8  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80248B7C 00245ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 80248B80 00245AC0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80248B84 00245AC4  7D 89 03 A6 */	mtctr r12
/* 80248B88 00245AC8  4E 80 04 21 */	bctrl 
/* 80248B8C 00245ACC  38 60 00 6C */	li r3, 0x6c
/* 80248B90 00245AD0  48 08 60 BD */	bl __nw__FUl
/* 80248B94 00245AD4  7C 60 1B 79 */	or. r0, r3, r3
/* 80248B98 00245AD8  41 82 00 24 */	beq lbl_80248BBC
/* 80248B9C 00245ADC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248BA0 00245AE0  3C A0 63 6B */	lis r5, 0x636B5F62@ha
/* 80248BA4 00245AE4  38 C5 5F 62 */	addi r6, r5, 0x636B5F62@l
/* 80248BA8 00245AE8  38 A0 62 61 */	li r5, 0x6261
/* 80248BAC 00245AEC  38 E0 00 00 */	li r7, 0
/* 80248BB0 00245AF0  39 00 00 00 */	li r8, 0
/* 80248BB4 00245AF4  48 00 AD D1 */	bl CPaneMgr_X1_
/* 80248BB8 00245AF8  7C 60 1B 78 */	mr r0, r3
lbl_80248BBC:
/* 80248BBC 00245AFC  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 80248BC0 00245B00  38 60 00 6C */	li r3, 0x6c
/* 80248BC4 00245B04  48 08 60 89 */	bl __nw__FUl
/* 80248BC8 00245B08  7C 60 1B 79 */	or. r0, r3, r3
/* 80248BCC 00245B0C  41 82 00 24 */	beq lbl_80248BF0
/* 80248BD0 00245B10  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248BD4 00245B14  3C A0 6F 74 */	lis r5, 0x6F743030@ha
/* 80248BD8 00245B18  38 C5 30 30 */	addi r6, r5, 0x6F743030@l
/* 80248BDC 00245B1C  38 A0 73 70 */	li r5, 0x7370
/* 80248BE0 00245B20  38 E0 00 00 */	li r7, 0
/* 80248BE4 00245B24  39 00 00 00 */	li r8, 0
/* 80248BE8 00245B28  48 00 AD 9D */	bl CPaneMgr_X1_
/* 80248BEC 00245B2C  7C 60 1B 78 */	mr r0, r3
lbl_80248BF0:
/* 80248BF0 00245B30  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80248BF4 00245B34  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80248BF8 00245B38  80 64 00 04 */	lwz r3, 4(r4)
/* 80248BFC 00245B3C  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 80248C00 00245B40  81 83 00 00 */	lwz r12, 0(r3)
/* 80248C04 00245B44  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80248C08 00245B48  7D 89 03 A6 */	mtctr r12
/* 80248C0C 00245B4C  4E 80 04 21 */	bctrl 
/* 80248C10 00245B50  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248C14 00245B54  3C 80 74 65 */	lis r4, 0x74655F6D@ha
/* 80248C18 00245B58  38 C4 5F 6D */	addi r6, r4, 0x74655F6D@l
/* 80248C1C 00245B5C  3C 80 00 77 */	lis r4, 0x00776869@ha
/* 80248C20 00245B60  38 A4 68 69 */	addi r5, r4, 0x00776869@l
/* 80248C24 00245B64  81 83 00 00 */	lwz r12, 0(r3)
/* 80248C28 00245B68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248C2C 00245B6C  7D 89 03 A6 */	mtctr r12
/* 80248C30 00245B70  4E 80 04 21 */	bctrl 
/* 80248C34 00245B74  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 80248C38 00245B78  81 83 00 00 */	lwz r12, 0(r3)
/* 80248C3C 00245B7C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80248C40 00245B80  7D 89 03 A6 */	mtctr r12
/* 80248C44 00245B84  4E 80 04 21 */	bctrl 
/* 80248C48 00245B88  3B C0 00 00 */	li r30, 0
/* 80248C4C 00245B8C  3B A0 00 00 */	li r29, 0
/* 80248C50 00245B90  3B 80 00 00 */	li r28, 0
/* 80248C54 00245B94  3C 80 80 3A */	lis r4, lbl_80399C30@ha
/* 80248C58 00245B98  3B 64 9C 30 */	addi r27, r4, lbl_80399C30@l
lbl_80248C5C:
/* 80248C5C 00245B9C  38 60 00 6C */	li r3, 0x6c
/* 80248C60 00245BA0  48 08 5F ED */	bl __nw__FUl
/* 80248C64 00245BA4  7C 64 1B 79 */	or. r4, r3, r3
/* 80248C68 00245BA8  41 82 00 2C */	beq lbl_80248C94
/* 80248C6C 00245BAC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80248C70 00245BB0  3C A0 80 3A */	lis r5, lbl_80399C18@ha
/* 80248C74 00245BB4  38 05 9C 18 */	addi r0, r5, lbl_80399C18@l
/* 80248C78 00245BB8  7C C0 E2 14 */	add r6, r0, r28
/* 80248C7C 00245BBC  80 A6 00 00 */	lwz r5, 0(r6)
/* 80248C80 00245BC0  80 C6 00 04 */	lwz r6, 4(r6)
/* 80248C84 00245BC4  38 E0 00 00 */	li r7, 0
/* 80248C88 00245BC8  39 00 00 00 */	li r8, 0
/* 80248C8C 00245BCC  48 00 AC F9 */	bl CPaneMgr_X1_
/* 80248C90 00245BD0  7C 64 1B 78 */	mr r4, r3
lbl_80248C94:
/* 80248C94 00245BD4  38 1D 00 0C */	addi r0, r29, 0xc
/* 80248C98 00245BD8  7C 9F 01 2E */	stwx r4, r31, r0
/* 80248C9C 00245BDC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248CA0 00245BE0  80 64 00 04 */	lwz r3, 4(r4)
/* 80248CA4 00245BE4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 80248CA8 00245BE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80248CAC 00245BEC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80248CB0 00245BF0  7D 89 03 A6 */	mtctr r12
/* 80248CB4 00245BF4  4E 80 04 21 */	bctrl 
/* 80248CB8 00245BF8  38 1D 00 0C */	addi r0, r29, 0xc
/* 80248CBC 00245BFC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248CC0 00245C00  80 64 00 04 */	lwz r3, 4(r4)
/* 80248CC4 00245C04  38 80 02 00 */	li r4, 0x200
/* 80248CC8 00245C08  38 BB 00 63 */	addi r5, r27, 0x63
/* 80248CCC 00245C0C  4C C6 31 82 */	crclr 6
/* 80248CD0 00245C10  48 0B 7A 7D */	bl J2DTextBox_NS_setString_X1_
/* 80248CD4 00245C14  3B DE 00 01 */	addi r30, r30, 1
/* 80248CD8 00245C18  2C 1E 00 03 */	cmpwi r30, 3
/* 80248CDC 00245C1C  3B BD 00 04 */	addi r29, r29, 4
/* 80248CE0 00245C20  3B 9C 00 08 */	addi r28, r28, 8
/* 80248CE4 00245C24  41 80 FF 78 */	blt lbl_80248C5C
/* 80248CE8 00245C28  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248CEC 00245C2C  3C 80 6C 69 */	lis r4, 0x6C696E65@ha
/* 80248CF0 00245C30  38 C4 6E 65 */	addi r6, r4, 0x6C696E65@l
/* 80248CF4 00245C34  3C 80 00 6E */	lis r4, 0x006E5F33@ha
/* 80248CF8 00245C38  38 A4 5F 33 */	addi r5, r4, 0x006E5F33@l
/* 80248CFC 00245C3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80248D00 00245C40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248D04 00245C44  7D 89 03 A6 */	mtctr r12
/* 80248D08 00245C48  4E 80 04 21 */	bctrl 
/* 80248D0C 00245C4C  38 00 00 00 */	li r0, 0
/* 80248D10 00245C50  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80248D14 00245C54  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248D18 00245C58  3C 80 6C 69 */	lis r4, 0x6C696E65@ha
/* 80248D1C 00245C5C  38 C4 6E 65 */	addi r6, r4, 0x6C696E65@l
/* 80248D20 00245C60  3C 80 6E 5F */	lis r4, 0x6E5F3366@ha
/* 80248D24 00245C64  38 A4 33 66 */	addi r5, r4, 0x6E5F3366@l
/* 80248D28 00245C68  81 83 00 00 */	lwz r12, 0(r3)
/* 80248D2C 00245C6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248D30 00245C70  7D 89 03 A6 */	mtctr r12
/* 80248D34 00245C74  4E 80 04 21 */	bctrl 
/* 80248D38 00245C78  38 00 00 00 */	li r0, 0
/* 80248D3C 00245C7C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80248D40 00245C80  80 7F 00 04 */	lwz r3, 4(r31)
/* 80248D44 00245C84  3C 80 6C 69 */	lis r4, 0x6C696E65@ha
/* 80248D48 00245C88  38 C4 6E 65 */	addi r6, r4, 0x6C696E65@l
/* 80248D4C 00245C8C  3C 80 6E 5F */	lis r4, 0x6E5F6534@ha
/* 80248D50 00245C90  38 A4 65 34 */	addi r5, r4, 0x6E5F6534@l
/* 80248D54 00245C94  81 83 00 00 */	lwz r12, 0(r3)
/* 80248D58 00245C98  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80248D5C 00245C9C  7D 89 03 A6 */	mtctr r12
/* 80248D60 00245CA0  4E 80 04 21 */	bctrl 
/* 80248D64 00245CA4  38 00 00 01 */	li r0, 1
/* 80248D68 00245CA8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80248D6C 00245CAC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248D70 00245CB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80248D74 00245CB4  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80248D78 00245CB8  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80248D7C 00245CBC  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 80248D80 00245CC0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80248D84 00245CC4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248D88 00245CC8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248D8C 00245CCC  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80248D90 00245CD0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80248D94 00245CD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248D98 00245CD8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80248D9C 00245CDC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248DA0 00245CE0  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DA4 00245CE4  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80248DA8 00245CE8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80248DAC 00245CEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248DB0 00245CF0  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80248DB4 00245CF4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248DB8 00245CF8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DBC 00245CFC  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 80248DC0 00245D00  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80248DC4 00245D04  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80248DC8 00245D08  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DCC 00245D0C  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80248DD0 00245D10  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80248DD4 00245D14  3B 60 00 00 */	li r27, 0
/* 80248DD8 00245D18  3B C0 00 00 */	li r30, 0
/* 80248DDC 00245D1C  C3 E2 B3 60 */	lfs f31, lbl_80454D60-_SDA2_BASE_(r2)
lbl_80248DE0:
/* 80248DE0 00245D20  38 1E 00 0C */	addi r0, r30, 0xc
/* 80248DE4 00245D24  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248DE8 00245D28  80 84 00 04 */	lwz r4, 4(r4)
/* 80248DEC 00245D2C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80248DF0 00245D30  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 80248DF4 00245D34  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248DF8 00245D38  80 64 00 04 */	lwz r3, 4(r4)
/* 80248DFC 00245D3C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80248E00 00245D40  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80248E04 00245D44  EC 41 00 28 */	fsubs f2, f1, f0
/* 80248E08 00245D48  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80248E0C 00245D4C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80248E10 00245D50  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248E14 00245D54  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80248E18 00245D58  81 83 00 00 */	lwz r12, 0(r3)
/* 80248E1C 00245D5C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80248E20 00245D60  7D 89 03 A6 */	mtctr r12
/* 80248E24 00245D64  4E 80 04 21 */	bctrl 
/* 80248E28 00245D68  3B 7B 00 01 */	addi r27, r27, 1
/* 80248E2C 00245D6C  2C 1B 00 03 */	cmpwi r27, 3
/* 80248E30 00245D70  3B DE 00 04 */	addi r30, r30, 4
/* 80248E34 00245D74  41 80 FF AC */	blt lbl_80248DE0
/* 80248E38 00245D78  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80248E3C 00245D7C  48 00 B4 AD */	bl CPaneMgr_NS_getGlobalPosX
/* 80248E40 00245D80  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 80248E44 00245D84  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80248E48 00245D88  48 00 B5 1D */	bl CPaneMgr_NS_getGlobalPosY
/* 80248E4C 00245D8C  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 80248E50 00245D90  C0 02 B3 58 */	lfs f0, lbl_80454D58-_SDA2_BASE_(r2)
/* 80248E54 00245D94  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80248E58 00245D98  3B 60 00 00 */	li r27, 0
/* 80248E5C 00245D9C  3B C0 00 00 */	li r30, 0
lbl_80248E60:
/* 80248E60 00245DA0  38 1E 00 28 */	addi r0, r30, 0x28
/* 80248E64 00245DA4  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248E68 00245DA8  28 04 00 00 */	cmplwi r4, 0
/* 80248E6C 00245DAC  41 82 00 74 */	beq lbl_80248EE0
/* 80248E70 00245DB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80248E74 00245DB4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80248E78 00245DB8  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 80248E7C 00245DBC  2C 1B 00 00 */	cmpwi r27, 0
/* 80248E80 00245DC0  40 82 00 24 */	bne lbl_80248EA4
/* 80248E84 00245DC4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80248E88 00245DC8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248E8C 00245DCC  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80248E90 00245DD0  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80248E94 00245DD4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80248E98 00245DD8  80 84 00 04 */	lwz r4, 4(r4)
/* 80248E9C 00245DDC  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80248EA0 00245DE0  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_80248EA4:
/* 80248EA4 00245DE4  38 1E 00 28 */	addi r0, r30, 0x28
/* 80248EA8 00245DE8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80248EAC 00245DEC  80 64 00 04 */	lwz r3, 4(r4)
/* 80248EB0 00245DF0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80248EB4 00245DF4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80248EB8 00245DF8  EC 41 00 28 */	fsubs f2, f1, f0
/* 80248EBC 00245DFC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80248EC0 00245E00  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80248EC4 00245E04  EC 21 00 28 */	fsubs f1, f1, f0
/* 80248EC8 00245E08  C0 02 B3 60 */	lfs f0, lbl_80454D60-_SDA2_BASE_(r2)
/* 80248ECC 00245E0C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80248ED0 00245E10  81 83 00 00 */	lwz r12, 0(r3)
/* 80248ED4 00245E14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80248ED8 00245E18  7D 89 03 A6 */	mtctr r12
/* 80248EDC 00245E1C  4E 80 04 21 */	bctrl 
lbl_80248EE0:
/* 80248EE0 00245E20  3B 7B 00 01 */	addi r27, r27, 1
/* 80248EE4 00245E24  2C 1B 00 03 */	cmpwi r27, 3
/* 80248EE8 00245E28  3B DE 00 04 */	addi r30, r30, 4
/* 80248EEC 00245E2C  41 80 FF 74 */	blt lbl_80248E60
/* 80248EF0 00245E30  7F E3 FB 78 */	mr r3, r31
/* 80248EF4 00245E34  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80248EF8 00245E38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80248EFC 00245E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80248F00 00245E40  48 11 93 21 */	bl _restgpr_27
/* 80248F04 00245E44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80248F08 00245E48  7C 08 03 A6 */	mtlr r0
/* 80248F0C 00245E4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80248F10 00245E50  4E 80 00 20 */	blr 
/* 80248F14 00245E54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80248F18 00245E58  7C 08 02 A6 */	mflr r0
/* 80248F1C 00245E5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80248F20 00245E60  39 61 00 20 */	addi r11, r1, 0x20
/* 80248F24 00245E64  48 11 92 B1 */	bl _savegpr_27
/* 80248F28 00245E68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80248F2C 00245E6C  7C 9F 23 78 */	mr r31, r4
/* 80248F30 00245E70  41 82 01 CC */	beq lbl_802490FC
/* 80248F34 00245E74  3C 60 80 3C */	lis r3, lbl_803C1420@ha
/* 80248F38 00245E78  38 03 14 20 */	addi r0, r3, lbl_803C1420@l
/* 80248F3C 00245E7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80248F40 00245E80  80 7E 00 04 */	lwz r3, 4(r30)
/* 80248F44 00245E84  28 03 00 00 */	cmplwi r3, 0
/* 80248F48 00245E88  41 82 00 18 */	beq lbl_80248F60
/* 80248F4C 00245E8C  38 80 00 01 */	li r4, 1
/* 80248F50 00245E90  81 83 00 00 */	lwz r12, 0(r3)
/* 80248F54 00245E94  81 8C 00 08 */	lwz r12, 8(r12)
/* 80248F58 00245E98  7D 89 03 A6 */	mtctr r12
/* 80248F5C 00245E9C  4E 80 04 21 */	bctrl 
lbl_80248F60:
/* 80248F60 00245EA0  38 00 00 00 */	li r0, 0
/* 80248F64 00245EA4  90 1E 00 04 */	stw r0, 4(r30)
/* 80248F68 00245EA8  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 80248F6C 00245EAC  28 03 00 00 */	cmplwi r3, 0
/* 80248F70 00245EB0  41 82 00 18 */	beq lbl_80248F88
/* 80248F74 00245EB4  38 80 00 01 */	li r4, 1
/* 80248F78 00245EB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80248F7C 00245EBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80248F80 00245EC0  7D 89 03 A6 */	mtctr r12
/* 80248F84 00245EC4  4E 80 04 21 */	bctrl 
lbl_80248F88:
/* 80248F88 00245EC8  38 00 00 00 */	li r0, 0
/* 80248F8C 00245ECC  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80248F90 00245ED0  80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 80248F94 00245ED4  28 03 00 00 */	cmplwi r3, 0
/* 80248F98 00245ED8  41 82 00 18 */	beq lbl_80248FB0
/* 80248F9C 00245EDC  38 80 00 01 */	li r4, 1
/* 80248FA0 00245EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80248FA4 00245EE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80248FA8 00245EE8  7D 89 03 A6 */	mtctr r12
/* 80248FAC 00245EEC  4E 80 04 21 */	bctrl 
lbl_80248FB0:
/* 80248FB0 00245EF0  38 00 00 00 */	li r0, 0
/* 80248FB4 00245EF4  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 80248FB8 00245EF8  80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 80248FBC 00245EFC  28 03 00 00 */	cmplwi r3, 0
/* 80248FC0 00245F00  41 82 00 18 */	beq lbl_80248FD8
/* 80248FC4 00245F04  38 80 00 01 */	li r4, 1
/* 80248FC8 00245F08  81 83 00 00 */	lwz r12, 0(r3)
/* 80248FCC 00245F0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80248FD0 00245F10  7D 89 03 A6 */	mtctr r12
/* 80248FD4 00245F14  4E 80 04 21 */	bctrl 
lbl_80248FD8:
/* 80248FD8 00245F18  38 00 00 00 */	li r0, 0
/* 80248FDC 00245F1C  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 80248FE0 00245F20  80 7E 00 08 */	lwz r3, 8(r30)
/* 80248FE4 00245F24  28 03 00 00 */	cmplwi r3, 0
/* 80248FE8 00245F28  41 82 00 18 */	beq lbl_80249000
/* 80248FEC 00245F2C  38 80 00 01 */	li r4, 1
/* 80248FF0 00245F30  81 83 00 00 */	lwz r12, 0(r3)
/* 80248FF4 00245F34  81 8C 00 08 */	lwz r12, 8(r12)
/* 80248FF8 00245F38  7D 89 03 A6 */	mtctr r12
/* 80248FFC 00245F3C  4E 80 04 21 */	bctrl 
lbl_80249000:
/* 80249000 00245F40  38 00 00 00 */	li r0, 0
/* 80249004 00245F44  90 1E 00 08 */	stw r0, 8(r30)
/* 80249008 00245F48  80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 8024900C 00245F4C  28 03 00 00 */	cmplwi r3, 0
/* 80249010 00245F50  41 82 00 18 */	beq lbl_80249028
/* 80249014 00245F54  38 80 00 01 */	li r4, 1
/* 80249018 00245F58  81 83 00 00 */	lwz r12, 0(r3)
/* 8024901C 00245F5C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80249020 00245F60  7D 89 03 A6 */	mtctr r12
/* 80249024 00245F64  4E 80 04 21 */	bctrl 
lbl_80249028:
/* 80249028 00245F68  38 00 00 00 */	li r0, 0
/* 8024902C 00245F6C  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 80249030 00245F70  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 80249034 00245F74  28 03 00 00 */	cmplwi r3, 0
/* 80249038 00245F78  41 82 00 18 */	beq lbl_80249050
/* 8024903C 00245F7C  38 80 00 01 */	li r4, 1
/* 80249040 00245F80  81 83 00 00 */	lwz r12, 0(r3)
/* 80249044 00245F84  81 8C 00 08 */	lwz r12, 8(r12)
/* 80249048 00245F88  7D 89 03 A6 */	mtctr r12
/* 8024904C 00245F8C  4E 80 04 21 */	bctrl 
lbl_80249050:
/* 80249050 00245F90  3B A0 00 00 */	li r29, 0
/* 80249054 00245F94  93 BE 00 C8 */	stw r29, 0xc8(r30)
/* 80249058 00245F98  3B 60 00 00 */	li r27, 0
lbl_8024905C:
/* 8024905C 00245F9C  7F 9E EA 14 */	add r28, r30, r29
/* 80249060 00245FA0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80249064 00245FA4  28 03 00 00 */	cmplwi r3, 0
/* 80249068 00245FA8  41 82 00 18 */	beq lbl_80249080
/* 8024906C 00245FAC  38 80 00 01 */	li r4, 1
/* 80249070 00245FB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80249074 00245FB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80249078 00245FB8  7D 89 03 A6 */	mtctr r12
/* 8024907C 00245FBC  4E 80 04 21 */	bctrl 
lbl_80249080:
/* 80249080 00245FC0  38 00 00 00 */	li r0, 0
/* 80249084 00245FC4  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80249088 00245FC8  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8024908C 00245FCC  28 03 00 00 */	cmplwi r3, 0
/* 80249090 00245FD0  41 82 00 24 */	beq lbl_802490B4
/* 80249094 00245FD4  41 82 00 18 */	beq lbl_802490AC
/* 80249098 00245FD8  38 80 00 01 */	li r4, 1
/* 8024909C 00245FDC  81 83 00 00 */	lwz r12, 0(r3)
/* 802490A0 00245FE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802490A4 00245FE4  7D 89 03 A6 */	mtctr r12
/* 802490A8 00245FE8  4E 80 04 21 */	bctrl 
lbl_802490AC:
/* 802490AC 00245FEC  38 00 00 00 */	li r0, 0
/* 802490B0 00245FF0  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_802490B4:
/* 802490B4 00245FF4  3B 7B 00 01 */	addi r27, r27, 1
/* 802490B8 00245FF8  2C 1B 00 03 */	cmpwi r27, 3
/* 802490BC 00245FFC  3B BD 00 04 */	addi r29, r29, 4
/* 802490C0 00246000  41 80 FF 9C */	blt lbl_8024905C
/* 802490C4 00246004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802490C8 00246008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802490CC 0024600C  80 63 5C 74 */	lwz r3, 0x5c74(r3)
/* 802490D0 00246010  81 83 00 00 */	lwz r12, 0(r3)
/* 802490D4 00246014  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802490D8 00246018  7D 89 03 A6 */	mtctr r12
/* 802490DC 0024601C  4E 80 04 21 */	bctrl 
/* 802490E0 00246020  7F C3 F3 78 */	mr r3, r30
/* 802490E4 00246024  38 80 00 00 */	li r4, 0
/* 802490E8 00246028  4B FF 30 3D */	bl dMsgScrnBase_c_NS_dtor
/* 802490EC 0024602C  7F E0 07 35 */	extsh. r0, r31
/* 802490F0 00246030  40 81 00 0C */	ble lbl_802490FC
/* 802490F4 00246034  7F C3 F3 78 */	mr r3, r30
/* 802490F8 00246038  48 08 5C 45 */	bl __dl__FPv
lbl_802490FC:
/* 802490FC 0024603C  7F C3 F3 78 */	mr r3, r30
/* 80249100 00246040  39 61 00 20 */	addi r11, r1, 0x20
/* 80249104 00246044  48 11 91 1D */	bl _restgpr_27
/* 80249108 00246048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024910C 0024604C  7C 08 03 A6 */	mtlr r0
/* 80249110 00246050  38 21 00 20 */	addi r1, r1, 0x20
/* 80249114 00246054  4E 80 00 20 */	blr 
/* 80249118 00246058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024911C 0024605C  7C 08 02 A6 */	mflr r0
/* 80249120 00246060  90 01 00 24 */	stw r0, 0x24(r1)
/* 80249124 00246064  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80249128 00246068  7C 7F 1B 78 */	mr r31, r3
/* 8024912C 0024606C  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 80249130 00246070  C0 02 B3 5C */	lfs f0, lbl_80454D5C-_SDA2_BASE_(r2)
/* 80249134 00246074  EC 01 00 2A */	fadds f0, f1, f0
/* 80249138 00246078  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 8024913C 0024607C  80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 80249140 00246080  A8 03 00 06 */	lha r0, 6(r3)
/* 80249144 00246084  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80249148 00246088  C8 22 B3 68 */	lfd f1, lbl_80454D68-_SDA2_BASE_(r2)
/* 8024914C 0024608C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80249150 00246090  90 61 00 0C */	stw r3, 0xc(r1)
/* 80249154 00246094  3C 00 43 30 */	lis r0, 0x4330
/* 80249158 00246098  90 01 00 08 */	stw r0, 8(r1)
/* 8024915C 0024609C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80249160 002460A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80249164 002460A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80249168 002460A8  4C 41 13 82 */	cror 2, 1, 2
/* 8024916C 002460AC  40 82 00 1C */	bne lbl_80249188
/* 80249170 002460B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80249174 002460B4  90 01 00 08 */	stw r0, 8(r1)
/* 80249178 002460B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024917C 002460BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80249180 002460C0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80249184 002460C4  D0 1F 00 DC */	stfs f0, 0xdc(r31)
lbl_80249188:
/* 80249188 002460C8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8024918C 002460CC  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80249190 002460D0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80249194 002460D4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80249198 002460D8  C0 02 B3 5C */	lfs f0, lbl_80454D5C-_SDA2_BASE_(r2)
/* 8024919C 002460DC  EC 01 00 2A */	fadds f0, f1, f0
/* 802491A0 002460E0  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 802491A4 002460E4  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 802491A8 002460E8  A8 03 00 06 */	lha r0, 6(r3)
/* 802491AC 002460EC  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 802491B0 002460F0  C8 22 B3 68 */	lfd f1, lbl_80454D68-_SDA2_BASE_(r2)
/* 802491B4 002460F4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802491B8 002460F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802491BC 002460FC  3C 00 43 30 */	lis r0, 0x4330
/* 802491C0 00246100  90 01 00 08 */	stw r0, 8(r1)
/* 802491C4 00246104  C8 01 00 08 */	lfd f0, 8(r1)
/* 802491C8 00246108  EC 00 08 28 */	fsubs f0, f0, f1
/* 802491CC 0024610C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802491D0 00246110  4C 41 13 82 */	cror 2, 1, 2
/* 802491D4 00246114  40 82 00 1C */	bne lbl_802491F0
/* 802491D8 00246118  90 61 00 0C */	stw r3, 0xc(r1)
/* 802491DC 0024611C  90 01 00 08 */	stw r0, 8(r1)
/* 802491E0 00246120  C8 01 00 08 */	lfd f0, 8(r1)
/* 802491E4 00246124  EC 00 08 28 */	fsubs f0, f0, f1
/* 802491E8 00246128  EC 02 00 28 */	fsubs f0, f2, f0
/* 802491EC 0024612C  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
lbl_802491F0:
/* 802491F0 00246130  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 802491F4 00246134  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 802491F8 00246138  D0 03 00 08 */	stfs f0, 8(r3)
/* 802491FC 0024613C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80249200 00246140  48 0B 04 91 */	bl J2DScreen_NS_animation
/* 80249204 00246144  7F E3 FB 78 */	mr r3, r31
/* 80249208 00246148  4B FF 33 6D */	bl dMsgScrnBase_c_NS_isTalkNow
/* 8024920C 0024614C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80249210 00246150  41 82 00 1C */	beq lbl_8024922C
/* 80249214 00246154  7F E3 FB 78 */	mr r3, r31
/* 80249218 00246158  C0 22 B3 5C */	lfs f1, lbl_80454D5C-_SDA2_BASE_(r2)
/* 8024921C 0024615C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80249220 00246160  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80249224 00246164  7D 89 03 A6 */	mtctr r12
/* 80249228 00246168  4E 80 04 21 */	bctrl 
lbl_8024922C:
/* 8024922C 0024616C  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 80249230 00246170  38 83 02 8C */	addi r4, r3, lbl_8043028C@l
/* 80249234 00246174  C0 24 00 B0 */	lfs f1, 0xb0(r4)
/* 80249238 00246178  80 7F 00 08 */	lwz r3, 8(r31)
/* 8024923C 0024617C  80 63 00 04 */	lwz r3, 4(r3)
/* 80249240 00246180  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 80249244 00246184  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80249248 00246188  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8024924C 0024618C  81 83 00 00 */	lwz r12, 0(r3)
/* 80249250 00246190  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80249254 00246194  7D 89 03 A6 */	mtctr r12
/* 80249258 00246198  4E 80 04 21 */	bctrl 
/* 8024925C 0024619C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80249260 002461A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80249264 002461A4  7C 08 03 A6 */	mtlr r0
/* 80249268 002461A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8024926C 002461AC  4E 80 00 20 */	blr 
/* 80249270 002461B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249274 002461B4  7C 08 02 A6 */	mflr r0
/* 80249278 002461B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024927C 002461BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249280 002461C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80249284 002461C4  7C 7E 1B 78 */	mr r30, r3
/* 80249288 002461C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024928C 002461CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80249290 002461D0  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80249294 002461D4  7F E3 FB 78 */	mr r3, r31
/* 80249298 002461D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8024929C 002461DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802492A0 002461E0  7D 89 03 A6 */	mtctr r12
/* 802492A4 002461E4  4E 80 04 21 */	bctrl 
/* 802492A8 002461E8  80 7E 00 04 */	lwz r3, 4(r30)
/* 802492AC 002461EC  C0 22 B3 58 */	lfs f1, lbl_80454D58-_SDA2_BASE_(r2)
/* 802492B0 002461F0  FC 40 08 90 */	fmr f2, f1
/* 802492B4 002461F4  7F E4 FB 78 */	mr r4, r31
/* 802492B8 002461F8  48 0A FC 1D */	bl J2DScreen_NS_draw
/* 802492BC 002461FC  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 802492C0 00246200  38 80 00 00 */	li r4, 0
/* 802492C4 00246204  C0 22 B3 58 */	lfs f1, lbl_80454D58-_SDA2_BASE_(r2)
/* 802492C8 00246208  FC 40 08 90 */	fmr f2, f1
/* 802492CC 0024620C  C0 62 B3 5C */	lfs f3, lbl_80454D5C-_SDA2_BASE_(r2)
/* 802492D0 00246210  81 83 00 00 */	lwz r12, 0(r3)
/* 802492D4 00246214  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802492D8 00246218  7D 89 03 A6 */	mtctr r12
/* 802492DC 0024621C  4E 80 04 21 */	bctrl 
/* 802492E0 00246220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802492E4 00246224  83 C1 00 08 */	lwz r30, 8(r1)
/* 802492E8 00246228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802492EC 0024622C  7C 08 03 A6 */	mtlr r0
/* 802492F0 00246230  38 21 00 10 */	addi r1, r1, 0x10
/* 802492F4 00246234  4E 80 00 20 */	blr 
/* 802492F8 00246238  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802492FC 0024623C  7C 08 02 A6 */	mflr r0
/* 80249300 00246240  90 01 00 34 */	stw r0, 0x34(r1)
/* 80249304 00246244  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80249308 00246248  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8024930C 0024624C  39 61 00 20 */	addi r11, r1, 0x20
/* 80249310 00246250  48 11 8E C9 */	bl _savegpr_28
/* 80249314 00246254  7C 7C 1B 78 */	mr r28, r3
/* 80249318 00246258  FF E0 08 90 */	fmr f31, f1
/* 8024931C 0024625C  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 80249320 00246260  48 00 C4 B1 */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 80249324 00246264  80 7C 00 08 */	lwz r3, 8(r28)
/* 80249328 00246268  3C 80 80 43 */	lis r4, lbl_8043028C@ha
/* 8024932C 0024626C  38 84 02 8C */	addi r4, r4, lbl_8043028C@l
/* 80249330 00246270  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80249334 00246274  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80249338 00246278  48 00 C4 99 */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 8024933C 0024627C  80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 80249340 00246280  FC 20 F8 90 */	fmr f1, f31
/* 80249344 00246284  48 00 C4 8D */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 80249348 00246288  3B A0 00 00 */	li r29, 0
/* 8024934C 0024628C  3B E0 00 00 */	li r31, 0
lbl_80249350:
/* 80249350 00246290  7F DC FA 14 */	add r30, r28, r31
/* 80249354 00246294  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80249358 00246298  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 8024935C 0024629C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80249360 002462A0  48 00 C4 71 */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 80249364 002462A4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80249368 002462A8  28 03 00 00 */	cmplwi r3, 0
/* 8024936C 002462AC  41 82 00 10 */	beq lbl_8024937C
/* 80249370 002462B0  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80249374 002462B4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80249378 002462B8  48 00 C4 59 */	bl CPaneMgrAlpha_NS_setAlphaRate
lbl_8024937C:
/* 8024937C 002462BC  3B BD 00 01 */	addi r29, r29, 1
/* 80249380 002462C0  2C 1D 00 03 */	cmpwi r29, 3
/* 80249384 002462C4  3B FF 00 04 */	addi r31, r31, 4
/* 80249388 002462C8  41 80 FF C8 */	blt lbl_80249350
/* 8024938C 002462CC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80249390 002462D0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80249394 002462D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80249398 002462D8  48 11 8E 8D */	bl _restgpr_28
/* 8024939C 002462DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802493A0 002462E0  7C 08 03 A6 */	mtlr r0
/* 802493A4 002462E4  38 21 00 30 */	addi r1, r1, 0x30
/* 802493A8 002462E8  4E 80 00 20 */	blr 
/* 802493AC 002462EC  4E 80 00 20 */	blr 
/* 802493B0 002462F0  4E 80 00 20 */	blr 
