/* 800F1AAC 000EE9EC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F1AB0 000EE9F0  7C 08 02 A6 */ mflr r0
/* 800F1AB4 000EE9F4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F1AB8 000EE9F8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F1ABC 000EE9FC  7C 7F 1B 78 */ mr r31, r3
/* 800F1AC0 000EEA00  38 80 00 43 */ li r4, 0x43
/* 800F1AC4 000EEA04  4B FD 04 A9 */ bl daAlink_c_NS_commonProcInit
/* 800F1AC8 000EEA08  A0 1F 1F 80 */ lhz r0, 0x1f80(r31)
/* 800F1ACC 000EEA0C  28 00 00 19 */ cmplwi r0, 0x19
/* 800F1AD0 000EEA10  40 82 00 14 */ bne lbl_800F1AE4
/* 800F1AD4 000EEA14  7F E3 FB 78 */ mr r3, r31
/* 800F1AD8 000EEA18  38 80 00 02 */ li r4, 2
/* 800F1ADC 000EEA1C  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F1AE0 000EEA20  4B FB C0 0D */ bl daAlink_c_NS_resetUnderAnime
lbl_800F1AE4:
/* 800F1AE4 000EEA24  7F E3 FB 78 */ mr r3, r31
/* 800F1AE8 000EEA28  38 80 00 50 */ li r4, 0x50
/* 800F1AEC 000EEA2C  3C A0 80 39 */ lis r5, lbl_8038DC9C@ha
/* 800F1AF0 000EEA30  38 A5 DC 9C */ addi r5, r5, lbl_8038DC9C@l
/* 800F1AF4 000EEA34  38 A5 00 28 */ addi r5, r5, 0x28
/* 800F1AF8 000EEA38  4B FB B5 FD */ bl daAlink_c_NS_setSingleAnimeParam
/* 800F1AFC 000EEA3C  7F E3 FB 78 */ mr r3, r31
/* 800F1B00 000EEA40  38 80 00 2B */ li r4, 0x2b
/* 800F1B04 000EEA44  4B FD FA 29 */ bl daAlink_c_NS_setCutType
/* 800F1B08 000EEA48  7F E3 FB 78 */ mr r3, r31
/* 800F1B0C 000EEA4C  38 80 00 01 */ li r4, 1
/* 800F1B10 000EEA50  4B FF CE 09 */ bl daAlink_c_NS_setSyncRide
/* 800F1B14 000EEA54  3C 60 80 39 */ lis r3, lbl_8038DC9C@ha
/* 800F1B18 000EEA58  38 63 DC 9C */ addi r3, r3, lbl_8038DC9C@l
/* 800F1B1C 000EEA5C  C0 03 00 50 */ lfs f0, 0x50(r3)
/* 800F1B20 000EEA60  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800F1B24 000EEA64  4B FD F4 39 */ bl daAlink_c_NS_getSwordAtType
/* 800F1B28 000EEA68  7C 64 1B 78 */ mr r4, r3
/* 800F1B2C 000EEA6C  7F E3 FB 78 */ mr r3, r31
/* 800F1B30 000EEA70  38 A0 00 01 */ li r5, 1
/* 800F1B34 000EEA74  38 C0 00 03 */ li r6, 3
/* 800F1B38 000EEA78  38 E0 00 01 */ li r7, 1
/* 800F1B3C 000EEA7C  39 00 00 03 */ li r8, 3
/* 800F1B40 000EEA80  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F1B44 000EEA84  C0 1F 34 78 */ lfs f0, 0x3478(r31)
/* 800F1B48 000EEA88  EC 21 00 32 */ fmuls f1, f1, f0
/* 800F1B4C 000EEA8C  C0 42 93 68 */ lfs f2, lbl_80452D68-_SDA2_BASE_(r2)
/* 800F1B50 000EEA90  4B FD F9 F1 */ bl daAlink_c_NS_setCylAtParam
/* 800F1B54 000EEA94  3C 60 80 39 */ lis r3, lbl_8038DC9C@ha
/* 800F1B58 000EEA98  38 63 DC 9C */ addi r3, r3, lbl_8038DC9C@l
/* 800F1B5C 000EEA9C  A8 03 00 3E */ lha r0, 0x3e(r3)
/* 800F1B60 000EEAA0  B0 1F 30 10 */ sth r0, 0x3010(r31)
/* 800F1B64 000EEAA4  7F E3 FB 78 */ mr r3, r31
/* 800F1B68 000EEAA8  3C 80 00 01 */ lis r4, 0x00010051@ha
/* 800F1B6C 000EEAAC  38 84 00 51 */ addi r4, r4, 0x00010051@l
/* 800F1B70 000EEAB0  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800F1B74 000EEAB4  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800F1B78 000EEAB8  7D 89 03 A6 */ mtctr r12
/* 800F1B7C 000EEABC  4E 80 04 21 */ bctrl
/* 800F1B80 000EEAC0  7F E3 FB 78 */ mr r3, r31
/* 800F1B84 000EEAC4  48 03 25 C1 */ bl daAlink_c_NS_setCutWaterDropEffect
/* 800F1B88 000EEAC8  4B FF AC 29 */ bl daAlink_c_NS_setHorseZeldaDamage
/* 800F1B8C 000EEACC  38 60 00 01 */ li r3, 1
/* 800F1B90 000EEAD0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F1B94 000EEAD4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F1B98 000EEAD8  7C 08 03 A6 */ mtlr r0
/* 800F1B9C 000EEADC  38 21 00 10 */ addi r1, r1, 0x10
/* 800F1BA0 000EEAE0  4E 80 00 20 */ blr