/* 80117B90 00114AD0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80117B94 00114AD4  7C 08 02 A6 */ mflr r0
/* 80117B98 00114AD8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80117B9C 00114ADC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80117BA0 00114AE0  7C 7F 1B 78 */ mr r31, r3
/* 80117BA4 00114AE4  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 80117BA8 00114AE8  38 C4 D6 58 */ addi r6, r4, lbl_8038D658@l
/* 80117BAC 00114AEC  3C 80 00 01 */ lis r4, 0x0000FFFF@ha
/* 80117BB0 00114AF0  38 04 FF FF */ addi r0, r4, 0x0000FFFF@l
/* 80117BB4 00114AF4  B0 03 21 44 */ sth r0, 0x2144(r3)
/* 80117BB8 00114AF8  B0 03 21 1C */ sth r0, 0x211c(r3)
/* 80117BBC 00114AFC  B0 03 21 30 */ sth r0, 0x2130(r3)
/* 80117BC0 00114B00  B0 03 1F 5C */ sth r0, 0x1f5c(r3)
/* 80117BC4 00114B04  B0 03 1F 58 */ sth r0, 0x1f58(r3)
/* 80117BC8 00114B08  B0 03 21 40 */ sth r0, 0x2140(r3)
/* 80117BCC 00114B0C  B0 03 21 18 */ sth r0, 0x2118(r3)
/* 80117BD0 00114B10  B0 03 21 2C */ sth r0, 0x212c(r3)
/* 80117BD4 00114B14  80 03 05 74 */ lwz r0, 0x574(r3)
/* 80117BD8 00114B18  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 80117BDC 00114B1C  41 82 00 2C */ beq lbl_80117C08
/* 80117BE0 00114B20  38 80 00 00 */ li r4, 0
/* 80117BE4 00114B24  38 A6 18 D0 */ addi r5, r6, 0x18d0
/* 80117BE8 00114B28  C0 25 00 14 */ lfs f1, 0x14(r5)
/* 80117BEC 00114B2C  38 A6 17 D0 */ addi r5, r6, 0x17d0
/* 80117BF0 00114B30  C0 45 00 94 */ lfs f2, 0x94(r5)
/* 80117BF4 00114B34  48 01 1A E5 */ bl daAlink_c_NS_setSingleAnimeWolfBaseSpeed
/* 80117BF8 00114B38  7F E3 FB 78 */ mr r3, r31
/* 80117BFC 00114B3C  38 80 00 19 */ li r4, 0x19
/* 80117C00 00114B40  4B F9 7D A9 */ bl daAlink_c_NS_setFaceBasicAnime
/* 80117C04 00114B44  48 00 00 1C */ b lbl_80117C20
lbl_80117C08:
/* 80117C08 00114B48  38 80 00 19 */ li r4, 0x19
/* 80117C0C 00114B4C  38 A6 00 64 */ addi r5, r6, 0x64
/* 80117C10 00114B50  C0 25 00 1C */ lfs f1, 0x1c(r5)
/* 80117C14 00114B54  38 A6 00 0C */ addi r5, r6, 0xc
/* 80117C18 00114B58  C0 45 00 18 */ lfs f2, 0x18(r5)
/* 80117C1C 00114B5C  4B F9 53 C5 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
lbl_80117C20:
/* 80117C20 00114B60  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80117C24 00114B64  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80117C28 00114B68  7C 08 03 A6 */ mtlr r0
/* 80117C2C 00114B6C  38 21 00 10 */ addi r1, r1, 0x10
/* 80117C30 00114B70  4E 80 00 20 */ blr