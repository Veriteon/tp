/* 802C5D9C 002C2CDC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C5DA0 002C2CE0  7C 08 02 A6 */ mflr r0
/* 802C5DA4 002C2CE4  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C5DA8 002C2CE8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C5DAC 002C2CEC  7C 7F 1B 78 */ mr r31, r3
/* 802C5DB0 002C2CF0  80 63 00 04 */ lwz r3, 4(r3)
/* 802C5DB4 002C2CF4  28 03 00 00 */ cmplwi r3, 0
/* 802C5DB8 002C2CF8  41 82 00 C4 */ beq lbl_802C5E7C
/* 802C5DBC 002C2CFC  C0 22 C3 48 */ lfs f1, lbl_80455D48-_SDA2_BASE_(r2)
/* 802C5DC0 002C2D00  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 802C5DC4 002C2D04  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802C5DC8 002C2D08  40 82 00 44 */ bne lbl_802C5E0C
/* 802C5DCC 002C2D0C  C0 1F 00 14 */ lfs f0, 0x14(r31)
/* 802C5DD0 002C2D10  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802C5DD4 002C2D14  40 82 00 38 */ bne lbl_802C5E0C
/* 802C5DD8 002C2D18  C0 1F 00 18 */ lfs f0, 0x18(r31)
/* 802C5DDC 002C2D1C  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802C5DE0 002C2D20  40 82 00 2C */ bne lbl_802C5E0C
/* 802C5DE4 002C2D24  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5DE8 002C2D28  C0 22 C3 60 */ lfs f1, lbl_80455D60-_SDA2_BASE_(r2)
/* 802C5DEC 002C2D2C  38 80 00 00 */ li r4, 0
/* 802C5DF0 002C2D30  4B FD D0 CD */ bl JAISoundParamsMove_NS_movePan
/* 802C5DF4 002C2D34  80 7F 00 04 */ lwz r3, 4(r31)
/* 802C5DF8 002C2D38  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5DFC 002C2D3C  C0 22 C3 60 */ lfs f1, lbl_80455D60-_SDA2_BASE_(r2)
/* 802C5E00 002C2D40  38 80 00 00 */ li r4, 0
/* 802C5E04 002C2D44  4B FD D1 11 */ bl JAISoundParamsMove_NS_moveDolby
/* 802C5E08 002C2D48  48 00 00 74 */ b lbl_802C5E7C
lbl_802C5E0C:
/* 802C5E0C 002C2D4C  80 6D 85 C4 */ lwz r3, lbl_80450B44-_SDA_BASE_(r13)
/* 802C5E10 002C2D50  38 9F 00 10 */ addi r4, r31, 0x10
/* 802C5E14 002C2D54  7C 85 23 78 */ mr r5, r4
/* 802C5E18 002C2D58  38 C0 00 00 */ li r6, 0
/* 802C5E1C 002C2D5C  4B FF 7B 11 */ bl Z2Audience_NS_convertAbsToRel
/* 802C5E20 002C2D60  38 7F 00 10 */ addi r3, r31, 0x10
/* 802C5E24 002C2D64  7C 64 1B 78 */ mr r4, r3
/* 802C5E28 002C2D68  48 07 3C 09 */ bl JMAFastVECNormalize
/* 802C5E2C 002C2D6C  80 6D 85 C4 */ lwz r3, lbl_80450B44-_SDA_BASE_(r13)
/* 802C5E30 002C2D70  38 9F 00 10 */ addi r4, r31, 0x10
/* 802C5E34 002C2D74  38 A0 00 00 */ li r5, 0
/* 802C5E38 002C2D78  4B FF 7C 0D */ bl Z2Audience_NS_calcRelPosPan
/* 802C5E3C 002C2D7C  D0 3F 00 08 */ stfs f1, 8(r31)
/* 802C5E40 002C2D80  80 6D 85 C4 */ lwz r3, lbl_80450B44-_SDA_BASE_(r13)
/* 802C5E44 002C2D84  38 9F 00 10 */ addi r4, r31, 0x10
/* 802C5E48 002C2D88  38 A0 00 00 */ li r5, 0
/* 802C5E4C 002C2D8C  4B FF 7C F9 */ bl Z2Audience_NS_calcRelPosDolby
/* 802C5E50 002C2D90  D0 3F 00 0C */ stfs f1, 0xc(r31)
/* 802C5E54 002C2D94  80 7F 00 04 */ lwz r3, 4(r31)
/* 802C5E58 002C2D98  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5E5C 002C2D9C  C0 3F 00 08 */ lfs f1, 8(r31)
/* 802C5E60 002C2DA0  38 80 00 00 */ li r4, 0
/* 802C5E64 002C2DA4  4B FD D0 59 */ bl JAISoundParamsMove_NS_movePan
/* 802C5E68 002C2DA8  80 7F 00 04 */ lwz r3, 4(r31)
/* 802C5E6C 002C2DAC  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5E70 002C2DB0  C0 3F 00 0C */ lfs f1, 0xc(r31)
/* 802C5E74 002C2DB4  38 80 00 00 */ li r4, 0
/* 802C5E78 002C2DB8  4B FD D0 9D */ bl JAISoundParamsMove_NS_moveDolby
lbl_802C5E7C:
/* 802C5E7C 002C2DBC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C5E80 002C2DC0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C5E84 002C2DC4  7C 08 03 A6 */ mtlr r0
/* 802C5E88 002C2DC8  38 21 00 10 */ addi r1, r1, 0x10
/* 802C5E8C 002C2DCC  4E 80 00 20 */ blr
