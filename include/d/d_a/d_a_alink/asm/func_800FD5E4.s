/* 800FD5E4 000FA524  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800FD5E8 000FA528  7C 08 02 A6 */ mflr r0
/* 800FD5EC 000FA52C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800FD5F0 000FA530  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800FD5F4 000FA534  7C 7F 1B 78 */ mr r31, r3
/* 800FD5F8 000FA538  38 80 00 33 */ li r4, 0x33
/* 800FD5FC 000FA53C  4B FB 5C 55 */ bl setDoStatus__9daAlink_cFUc
/* 800FD600 000FA540  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 800FD604 000FA544  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FD608 000FA548  41 82 00 28 */ beq lbl_800FD630
/* 800FD60C 000FA54C  38 00 00 00 */ li r0, 0
/* 800FD610 000FA550  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 800FD614 000FA554  7F E3 FB 78 */ mr r3, r31
/* 800FD618 000FA558  38 80 00 01 */ li r4, 1
/* 800FD61C 000FA55C  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 800FD620 000FA560  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 800FD624 000FA564  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 800FD628 000FA568  4B FC 94 21 */ bl daAlink_c_NS_procFallInit
/* 800FD62C 000FA56C  48 00 00 08 */ b lbl_800FD634
lbl_800FD630:
/* 800FD630 000FA570  38 60 00 00 */ li r3, 0
lbl_800FD634:
/* 800FD634 000FA574  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800FD638 000FA578  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800FD63C 000FA57C  7C 08 03 A6 */ mtlr r0
/* 800FD640 000FA580  38 21 00 10 */ addi r1, r1, 0x10
/* 800FD644 000FA584  4E 80 00 20 */ blr
