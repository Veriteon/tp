/* 802C0B70 002BDAB0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C0B74 002BDAB4  7C 08 02 A6 */ mflr r0
/* 802C0B78 002BDAB8  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C0B7C 002BDABC  80 04 00 00 */ lwz r0, 0(r4)
/* 802C0B80 002BDAC0  90 01 00 08 */ stw r0, 8(r1)
/* 802C0B84 002BDAC4  38 81 00 08 */ addi r4, r1, 8
/* 802C0B88 002BDAC8  81 83 00 80 */ lwz r12, 0x80(r3)
/* 802C0B8C 002BDACC  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 802C0B90 002BDAD0  7D 89 03 A6 */ mtctr r12
/* 802C0B94 002BDAD4  38 63 00 70 */ addi r3, r3, 0x70
/* 802C0B98 002BDAD8  4E 80 04 21 */ bctrl
/* 802C0B9C 002BDADC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C0BA0 002BDAE0  7C 08 03 A6 */ mtlr r0
/* 802C0BA4 002BDAE4  38 21 00 10 */ addi r1, r1, 0x10
/* 802C0BA8 002BDAE8  4E 80 00 20 */ blr