/* 80015D44 00012C84  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80015D48 00012C88  7C 08 02 A6 */ mflr r0
/* 80015D4C 00012C8C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80015D50 00012C90  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80015D54 00012C94  93 C1 00 08 */ stw r30, 8(r1)
/* 80015D58 00012C98  7C 7E 1B 79 */ or. r30, r3, r3
/* 80015D5C 00012C9C  7C 9F 23 78 */ mr r31, r4
/* 80015D60 00012CA0  41 82 00 28 */ beq lbl_80015D88
/* 80015D64 00012CA4  3C 80 80 3A */ lis r4, lbl_803A34C8@ha
/* 80015D68 00012CA8  38 04 34 C8 */ addi r0, r4, lbl_803A34C8@l
/* 80015D6C 00012CAC  90 1E 00 10 */ stw r0, 0x10(r30)
/* 80015D70 00012CB0  38 80 00 00 */ li r4, 0
/* 80015D74 00012CB4  4B FF FB 89 */ bl mDoDvdThd_command_c_NS_dtor
/* 80015D78 00012CB8  7F E0 07 35 */ extsh. r0, r31
/* 80015D7C 00012CBC  40 81 00 0C */ ble lbl_80015D88
/* 80015D80 00012CC0  7F C3 F3 78 */ mr r3, r30
/* 80015D84 00012CC4  48 2B 8F B9 */ bl __dl__FPv
lbl_80015D88:
/* 80015D88 00012CC8  7F C3 F3 78 */ mr r3, r30
/* 80015D8C 00012CCC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80015D90 00012CD0  83 C1 00 08 */ lwz r30, 8(r1)
/* 80015D94 00012CD4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80015D98 00012CD8  7C 08 03 A6 */ mtlr r0
/* 80015D9C 00012CDC  38 21 00 10 */ addi r1, r1, 0x10
/* 80015DA0 00012CE0  4E 80 00 20 */ blr
