/* 800F3E4C 000F0D8C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800F3E50 000F0D90  7C 08 02 A6 */ mflr r0
/* 800F3E54 000F0D94  90 01 00 24 */ stw r0, 0x24(r1)
/* 800F3E58 000F0D98  39 61 00 20 */ addi r11, r1, 0x20
/* 800F3E5C 000F0D9C  48 26 E3 81 */ bl _savegpr_29
/* 800F3E60 000F0DA0  7C 7D 1B 78 */ mr r29, r3
/* 800F3E64 000F0DA4  7C 9E 23 78 */ mr r30, r4
/* 800F3E68 000F0DA8  3B E0 00 00 */ li r31, 0
/* 800F3E6C 000F0DAC  4B FF FE ED */ bl daAlink_c_NS_checkFishingRodAndLureItem
/* 800F3E70 000F0DB0  2C 03 00 00 */ cmpwi r3, 0
/* 800F3E74 000F0DB4  41 82 00 28 */ beq lbl_800F3E9C
/* 800F3E78 000F0DB8  80 7D 28 24 */ lwz r3, 0x2824(r29)
/* 800F3E7C 000F0DBC  28 1E 00 00 */ cmplwi r30, 0
/* 800F3E80 000F0DC0  41 82 00 0C */ beq lbl_800F3E8C
/* 800F3E84 000F0DC4  80 1E 00 04 */ lwz r0, 4(r30)
/* 800F3E88 000F0DC8  48 00 00 08 */ b lbl_800F3E90
lbl_800F3E8C:
/* 800F3E8C 000F0DCC  38 00 FF FF */ li r0, -1
lbl_800F3E90:
/* 800F3E90 000F0DD0  7C 03 00 40 */ cmplw r3, r0
/* 800F3E94 000F0DD4  40 82 00 08 */ bne lbl_800F3E9C
/* 800F3E98 000F0DD8  3B E0 00 01 */ li r31, 1
lbl_800F3E9C:
/* 800F3E9C 000F0DDC  57 E3 06 3E */ clrlwi r3, r31, 0x18
/* 800F3EA0 000F0DE0  39 61 00 20 */ addi r11, r1, 0x20
/* 800F3EA4 000F0DE4  48 26 E3 85 */ bl _restgpr_29
/* 800F3EA8 000F0DE8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800F3EAC 000F0DEC  7C 08 03 A6 */ mtlr r0
/* 800F3EB0 000F0DF0  38 21 00 20 */ addi r1, r1, 0x20
/* 800F3EB4 000F0DF4  4E 80 00 20 */ blr