/* 801A1D64 0019ECA4  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 801A1D68 0019ECA8  7C 08 02 A6 */ mflr r0
/* 801A1D6C 0019ECAC  90 01 00 54 */ stw r0, 0x54(r1)
/* 801A1D70 0019ECB0  39 61 00 50 */ addi r11, r1, 0x50
/* 801A1D74 0019ECB4  48 1C 04 5D */ bl _savegpr_26
/* 801A1D78 0019ECB8  7C 7A 1B 78 */ mr r26, r3
/* 801A1D7C 0019ECBC  7C BB 2B 78 */ mr r27, r5
/* 801A1D80 0019ECC0  7C DC 33 78 */ mr r28, r6
/* 801A1D84 0019ECC4  7C FD 3B 78 */ mr r29, r7
/* 801A1D88 0019ECC8  7D 1E 43 78 */ mr r30, r8
/* 801A1D8C 0019ECCC  7D 3F 4B 78 */ mr r31, r9
/* 801A1D90 0019ECD0  88 05 03 81 */ lbz r0, 0x381(r5)
/* 801A1D94 0019ECD4  28 00 00 FF */ cmplwi r0, 0xff
/* 801A1D98 0019ECD8  41 82 00 50 */ beq lbl_801A1DE8
/* 801A1D9C 0019ECDC  C8 22 A2 80 */ lfd f1, lbl_80453C80-_SDA2_BASE_(r2)
/* 801A1DA0 0019ECE0  90 01 00 2C */ stw r0, 0x2c(r1)
/* 801A1DA4 0019ECE4  3C 00 43 30 */ lis r0, 0x4330
/* 801A1DA8 0019ECE8  90 01 00 28 */ stw r0, 0x28(r1)
/* 801A1DAC 0019ECEC  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 801A1DB0 0019ECF0  EC 20 08 28 */ fsubs f1, f0, f1
/* 801A1DB4 0019ECF4  C0 02 A2 94 */ lfs f0, lbl_80453C94-_SDA2_BASE_(r2)
/* 801A1DB8 0019ECF8  EC 21 00 24 */ fdivs f1, f1, f0
/* 801A1DBC 0019ECFC  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A1DC0 0019ED00  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A1DC4 0019ED04  A8 03 12 C0 */ lha r0, 0x12c0(r3)
/* 801A1DC8 0019ED08  2C 00 00 64 */ cmpwi r0, 0x64
/* 801A1DCC 0019ED0C  40 82 00 64 */ bne lbl_801A1E30
/* 801A1DD0 0019ED10  38 7B 03 74 */ addi r3, r27, 0x374
/* 801A1DD4 0019ED14  C0 42 A2 EC */ lfs f2, lbl_80453CEC-_SDA2_BASE_(r2)
/* 801A1DD8 0019ED18  C0 62 A3 08 */ lfs f3, lbl_80453D08-_SDA2_BASE_(r2)
/* 801A1DDC 0019ED1C  C0 82 A3 10 */ lfs f4, lbl_80453D10-_SDA2_BASE_(r2)
/* 801A1DE0 0019ED20  48 0C DB 9D */ bl cLib_addCalc__FPfffff
/* 801A1DE4 0019ED24  48 00 00 4C */ b lbl_801A1E30
lbl_801A1DE8:
/* 801A1DE8 0019ED28  88 7B 03 80 */ lbz r3, 0x380(r27)
/* 801A1DEC 0019ED2C  7C 60 07 75 */ extsb. r0, r3
/* 801A1DF0 0019ED30  41 80 00 38 */ blt lbl_801A1E28
/* 801A1DF4 0019ED34  98 7B 03 7C */ stb r3, 0x37c(r27)
/* 801A1DF8 0019ED38  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A1DFC 0019ED3C  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A1E00 0019ED40  A8 03 12 C0 */ lha r0, 0x12c0(r3)
/* 801A1E04 0019ED44  2C 00 00 64 */ cmpwi r0, 0x64
/* 801A1E08 0019ED48  40 82 00 28 */ bne lbl_801A1E30
/* 801A1E0C 0019ED4C  38 7B 03 74 */ addi r3, r27, 0x374
/* 801A1E10 0019ED50  C0 22 A2 48 */ lfs f1, lbl_80453C48-_SDA2_BASE_(r2)
/* 801A1E14 0019ED54  C0 42 A2 EC */ lfs f2, lbl_80453CEC-_SDA2_BASE_(r2)
/* 801A1E18 0019ED58  C0 62 A3 08 */ lfs f3, lbl_80453D08-_SDA2_BASE_(r2)
/* 801A1E1C 0019ED5C  C0 82 A3 10 */ lfs f4, lbl_80453D10-_SDA2_BASE_(r2)
/* 801A1E20 0019ED60  48 0C DB 5D */ bl cLib_addCalc__FPfffff
/* 801A1E24 0019ED64  48 00 00 0C */ b lbl_801A1E30
lbl_801A1E28:
/* 801A1E28 0019ED68  38 00 00 00 */ li r0, 0
/* 801A1E2C 0019ED6C  98 1B 03 7C */ stb r0, 0x37c(r27)
lbl_801A1E30:
/* 801A1E30 0019ED70  88 1B 03 7A */ lbz r0, 0x37a(r27)
/* 801A1E34 0019ED74  28 00 00 01 */ cmplwi r0, 1
/* 801A1E38 0019ED78  41 80 00 0C */ blt lbl_801A1E44
/* 801A1E3C 0019ED7C  28 00 00 07 */ cmplwi r0, 7
/* 801A1E40 0019ED80  40 81 00 18 */ ble lbl_801A1E58
lbl_801A1E44:
/* 801A1E44 0019ED84  28 00 00 09 */ cmplwi r0, 9
/* 801A1E48 0019ED88  40 82 00 38 */ bne lbl_801A1E80
/* 801A1E4C 0019ED8C  48 00 A7 31 */ bl dKy_darkworld_check
/* 801A1E50 0019ED90  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801A1E54 0019ED94  41 82 00 2C */ beq lbl_801A1E80
lbl_801A1E58:
/* 801A1E58 0019ED98  88 1B 03 7A */ lbz r0, 0x37a(r27)
/* 801A1E5C 0019ED9C  28 00 00 02 */ cmplwi r0, 2
/* 801A1E60 0019EDA0  41 82 00 0C */ beq lbl_801A1E6C
/* 801A1E64 0019EDA4  28 00 00 03 */ cmplwi r0, 3
/* 801A1E68 0019EDA8  40 82 00 10 */ bne lbl_801A1E78
lbl_801A1E6C:
/* 801A1E6C 0019EDAC  48 00 A7 11 */ bl dKy_darkworld_check
/* 801A1E70 0019EDB0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801A1E74 0019EDB4  41 82 00 0C */ beq lbl_801A1E80
lbl_801A1E78:
/* 801A1E78 0019EDB8  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A1E7C 0019EDBC  D0 1B 03 74 */ stfs f0, 0x374(r27)
lbl_801A1E80:
/* 801A1E80 0019EDC0  88 7B 03 7D */ lbz r3, 0x37d(r27)
/* 801A1E84 0019EDC4  88 1B 03 7C */ lbz r0, 0x37c(r27)
/* 801A1E88 0019EDC8  7C 03 00 40 */ cmplw r3, r0
/* 801A1E8C 0019EDCC  41 82 00 30 */ beq lbl_801A1EBC
/* 801A1E90 0019EDD0  C0 3B 03 70 */ lfs f1, 0x370(r27)
/* 801A1E94 0019EDD4  C0 02 A2 48 */ lfs f0, lbl_80453C48-_SDA2_BASE_(r2)
/* 801A1E98 0019EDD8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801A1E9C 0019EDDC  4C 41 13 82 */ cror 2, 1, 2
/* 801A1EA0 0019EDE0  41 82 00 14 */ beq lbl_801A1EB4
/* 801A1EA4 0019EDE4  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A1EA8 0019EDE8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801A1EAC 0019EDEC  4C 40 13 82 */ cror 2, 0, 2
/* 801A1EB0 0019EDF0  40 82 00 0C */ bne lbl_801A1EBC
lbl_801A1EB4:
/* 801A1EB4 0019EDF4  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A1EB8 0019EDF8  D0 1B 03 70 */ stfs f0, 0x370(r27)
lbl_801A1EBC:
/* 801A1EBC 0019EDFC  88 1B 03 7A */ lbz r0, 0x37a(r27)
/* 801A1EC0 0019EE00  28 00 00 08 */ cmplwi r0, 8
/* 801A1EC4 0019EE04  41 82 00 40 */ beq lbl_801A1F04
/* 801A1EC8 0019EE08  7F 43 D3 78 */ mr r3, r26
/* 801A1ECC 0019EE0C  7F 64 DB 78 */ mr r4, r27
/* 801A1ED0 0019EE10  7F A5 EB 78 */ mr r5, r29
/* 801A1ED4 0019EE14  7F C6 F3 78 */ mr r6, r30
/* 801A1ED8 0019EE18  7F E7 FB 78 */ mr r7, r31
/* 801A1EDC 0019EE1C  4B FF F7 E5 */ bl dScnKy_env_light_c_NS_setLight_actor
/* 801A1EE0 0019EE20  A8 1B 03 48 */ lha r0, 0x348(r27)
/* 801A1EE4 0019EE24  B0 1C 00 00 */ sth r0, 0(r28)
/* 801A1EE8 0019EE28  A8 1B 03 4A */ lha r0, 0x34a(r27)
/* 801A1EEC 0019EE2C  B0 1C 00 02 */ sth r0, 2(r28)
/* 801A1EF0 0019EE30  A8 1B 03 4C */ lha r0, 0x34c(r27)
/* 801A1EF4 0019EE34  B0 1C 00 04 */ sth r0, 4(r28)
/* 801A1EF8 0019EE38  A8 1B 03 4E */ lha r0, 0x34e(r27)
/* 801A1EFC 0019EE3C  B0 1C 00 06 */ sth r0, 6(r28)
/* 801A1F00 0019EE40  48 00 00 40 */ b lbl_801A1F40
lbl_801A1F04:
/* 801A1F04 0019EE44  7F 43 D3 78 */ mr r3, r26
/* 801A1F08 0019EE48  7F 64 DB 78 */ mr r4, r27
/* 801A1F0C 0019EE4C  38 A1 00 08 */ addi r5, r1, 8
/* 801A1F10 0019EE50  7F A6 EB 78 */ mr r6, r29
/* 801A1F14 0019EE54  7F C7 F3 78 */ mr r7, r30
/* 801A1F18 0019EE58  7F E8 FB 78 */ mr r8, r31
/* 801A1F1C 0019EE5C  4B FF F4 21 */ bl dScnKy_env_light_c_NS_setLight_bg
/* 801A1F20 0019EE60  A8 01 00 08 */ lha r0, 8(r1)
/* 801A1F24 0019EE64  B0 1C 00 00 */ sth r0, 0(r28)
/* 801A1F28 0019EE68  A8 01 00 0A */ lha r0, 0xa(r1)
/* 801A1F2C 0019EE6C  B0 1C 00 02 */ sth r0, 2(r28)
/* 801A1F30 0019EE70  A8 01 00 0C */ lha r0, 0xc(r1)
/* 801A1F34 0019EE74  B0 1C 00 04 */ sth r0, 4(r28)
/* 801A1F38 0019EE78  A8 01 00 0E */ lha r0, 0xe(r1)
/* 801A1F3C 0019EE7C  B0 1C 00 06 */ sth r0, 6(r28)
lbl_801A1F40:
/* 801A1F40 0019EE80  39 61 00 50 */ addi r11, r1, 0x50
/* 801A1F44 0019EE84  48 1C 02 D9 */ bl _restgpr_26
/* 801A1F48 0019EE88  80 01 00 54 */ lwz r0, 0x54(r1)
/* 801A1F4C 0019EE8C  7C 08 03 A6 */ mtlr r0
/* 801A1F50 0019EE90  38 21 00 50 */ addi r1, r1, 0x50
/* 801A1F54 0019EE94  4E 80 00 20 */ blr