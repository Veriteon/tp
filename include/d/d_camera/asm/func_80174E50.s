/* 80174E50 00171D90  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80174E54 00171D94  7C 08 02 A6 */ mflr r0
/* 80174E58 00171D98  90 01 00 14 */ stw r0, 0x14(r1)
/* 80174E5C 00171D9C  7C 6B 1B 78 */ mr r11, r3
/* 80174E60 00171DA0  7C 8A 23 78 */ mr r10, r4
/* 80174E64 00171DA4  7C A9 2B 78 */ mr r9, r5
/* 80174E68 00171DA8  7C C0 33 78 */ mr r0, r6
/* 80174E6C 00171DAC  7C E8 3B 78 */ mr r8, r7
/* 80174E70 00171DB0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80174E74 00171DB4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80174E78 00171DB8  38 63 23 3C */ addi r3, r3, 0x233c
/* 80174E7C 00171DBC  7D 64 5B 78 */ mr r4, r11
/* 80174E80 00171DC0  7D 45 53 78 */ mr r5, r10
/* 80174E84 00171DC4  C0 22 9D CC */ lfs f1, lbl_804537CC-_SDA2_BASE_(r2)
/* 80174E88 00171DC8  7D 26 4B 78 */ mr r6, r9
/* 80174E8C 00171DCC  7C 07 03 78 */ mr r7, r0
/* 80174E90 00171DD0  4B F1 1E FD */ bl dCcS_NS_ChkCamera
/* 80174E94 00171DD4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80174E98 00171DD8  7C 08 03 A6 */ mtlr r0
/* 80174E9C 00171DDC  38 21 00 10 */ addi r1, r1, 0x10
/* 80174EA0 00171DE0  4E 80 00 20 */ blr
