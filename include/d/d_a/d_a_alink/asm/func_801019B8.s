/* 801019B8 000FE8F8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801019BC 000FE8FC  7C 08 02 A6 */ mflr r0
/* 801019C0 000FE900  90 01 00 14 */ stw r0, 0x14(r1)
/* 801019C4 000FE904  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801019C8 000FE908  93 C1 00 08 */ stw r30, 8(r1)
/* 801019CC 000FE90C  7C 7E 1B 78 */ mr r30, r3
/* 801019D0 000FE910  3B E0 00 00 */ li r31, 0
/* 801019D4 000FE914  38 80 00 C9 */ li r4, 0xc9
/* 801019D8 000FE918  4B FA AB 81 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 801019DC 000FE91C  2C 03 00 00 */ cmpwi r3, 0
/* 801019E0 000FE920  40 82 00 18 */ bne lbl_801019F8
/* 801019E4 000FE924  7F C3 F3 78 */ mr r3, r30
/* 801019E8 000FE928  38 80 00 C8 */ li r4, 0xc8
/* 801019EC 000FE92C  4B FA AB 6D */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 801019F0 000FE930  2C 03 00 00 */ cmpwi r3, 0
/* 801019F4 000FE934  41 82 00 08 */ beq lbl_801019FC
lbl_801019F8:
/* 801019F8 000FE938  3B E0 00 01 */ li r31, 1
lbl_801019FC:
/* 801019FC 000FE93C  7F E3 FB 78 */ mr r3, r31
/* 80101A00 000FE940  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80101A04 000FE944  83 C1 00 08 */ lwz r30, 8(r1)
/* 80101A08 000FE948  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80101A0C 000FE94C  7C 08 03 A6 */ mtlr r0
/* 80101A10 000FE950  38 21 00 10 */ addi r1, r1, 0x10
/* 80101A14 000FE954  4E 80 00 20 */ blr
