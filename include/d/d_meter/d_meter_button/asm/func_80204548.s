/* 80204548 00201488  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8020454C 0020148C  7C 08 02 A6 */ mflr r0
/* 80204550 00201490  90 01 00 24 */ stw r0, 0x24(r1)
/* 80204554 00201494  39 61 00 20 */ addi r11, r1, 0x20
/* 80204558 00201498  48 15 DC 85 */ bl _savegpr_29
/* 8020455C 0020149C  7C 7E 1B 78 */ mr r30, r3
/* 80204560 002014A0  7C 9F 23 78 */ mr r31, r4
/* 80204564 002014A4  7C BD 2B 78 */ mr r29, r5
/* 80204568 002014A8  54 80 04 63 */ rlwinm. r0, r4, 0, 0x11, 0x11
/* 8020456C 002014AC  40 82 00 7C */ bne lbl_802045E8
/* 80204570 002014B0  48 03 3C BD */ bl dMsgObject_c_NS_getStatus
/* 80204574 002014B4  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 80204578 002014B8  20 60 00 01 */ subfic r3, r0, 1
/* 8020457C 002014BC  30 03 FF FF */ addic r0, r3, -1
/* 80204580 002014C0  7C 00 19 10 */ subfe r0, r0, r3
/* 80204584 002014C4  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80204588 002014C8  40 82 00 60 */ bne lbl_802045E8
/* 8020458C 002014CC  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80204590 002014D0  41 82 00 58 */ beq lbl_802045E8
/* 80204594 002014D4  57 E0 06 73 */ rlwinm. r0, r31, 0, 0x19, 0x19
/* 80204598 002014D8  41 82 00 30 */ beq lbl_802045C8
/* 8020459C 002014DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802045A0 002014E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802045A4 002014E4  88 03 4F AD */ lbz r0, 0x4fad(r3)
/* 802045A8 002014E8  28 00 00 00 */ cmplwi r0, 0
/* 802045AC 002014EC  41 82 00 10 */ beq lbl_802045BC
/* 802045B0 002014F0  A0 03 4F A4 */ lhz r0, 0x4fa4(r3)
/* 802045B4 002014F4  54 00 07 FE */ clrlwi r0, r0, 0x1f
/* 802045B8 002014F8  48 00 00 08 */ b lbl_802045C0
lbl_802045BC:
/* 802045BC 002014FC  38 00 00 00 */ li r0, 0
lbl_802045C0:
/* 802045C0 00201500  54 00 04 3F */ clrlwi. r0, r0, 0x10
/* 802045C4 00201504  40 82 00 24 */ bne lbl_802045E8
lbl_802045C8:
/* 802045C8 00201508  57 E0 05 EF */ rlwinm. r0, r31, 0, 0x17, 0x17
/* 802045CC 0020150C  40 82 00 1C */ bne lbl_802045E8
/* 802045D0 00201510  57 E0 07 39 */ rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 802045D4 00201514  40 82 00 14 */ bne lbl_802045E8
/* 802045D8 00201518  57 E0 06 F7 */ rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 802045DC 0020151C  40 82 00 0C */ bne lbl_802045E8
/* 802045E0 00201520  57 E0 06 B5 */ rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 802045E4 00201524  41 82 00 10 */ beq lbl_802045F4
lbl_802045E8:
/* 802045E8 00201528  7F C3 F3 78 */ mr r3, r30
/* 802045EC 0020152C  48 00 47 99 */ bl dMeterButton_c_NS_setAlphaButtonNunZAnimeMin
/* 802045F0 00201530  48 00 00 14 */ b lbl_80204604
lbl_802045F4:
/* 802045F4 00201534  7F C3 F3 78 */ mr r3, r30
/* 802045F8 00201538  48 00 48 25 */ bl dMeterButton_c_NS_setAlphaButtonNunZAnimeMax
/* 802045FC 0020153C  38 60 00 01 */ li r3, 1
/* 80204600 00201540  48 00 00 08 */ b lbl_80204608
lbl_80204604:
/* 80204604 00201544  38 60 00 00 */ li r3, 0
lbl_80204608:
/* 80204608 00201548  39 61 00 20 */ addi r11, r1, 0x20
/* 8020460C 0020154C  48 15 DC 1D */ bl _restgpr_29
/* 80204610 00201550  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80204614 00201554  7C 08 03 A6 */ mtlr r0
/* 80204618 00201558  38 21 00 20 */ addi r1, r1, 0x20
/* 8020461C 0020155C  4E 80 00 20 */ blr