/* 800E0244 000DD184  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E0248 000DD188  7C 08 02 A6 */ mflr r0
/* 800E024C 000DD18C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E0250 000DD190  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E0254 000DD194  93 C1 00 08 */ stw r30, 8(r1)
/* 800E0258 000DD198  7C 7E 1B 78 */ mr r30, r3
/* 800E025C 000DD19C  3B E0 00 00 */ li r31, 0
/* 800E0260 000DD1A0  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800E0264 000DD1A4  28 00 01 02 */ cmplwi r0, 0x102
/* 800E0268 000DD1A8  41 82 00 14 */ beq lbl_800E027C
/* 800E026C 000DD1AC  48 00 01 D5 */ bl daAlink_c_NS_checkBoomerangAnime
/* 800E0270 000DD1B0  2C 03 00 00 */ cmpwi r3, 0
/* 800E0274 000DD1B4  41 82 00 08 */ beq lbl_800E027C
/* 800E0278 000DD1B8  3B E0 00 01 */ li r31, 1
lbl_800E027C:
/* 800E027C 000DD1BC  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 800E0280 000DD1C0  41 82 00 0C */ beq lbl_800E028C
/* 800E0284 000DD1C4  38 60 00 01 */ li r3, 1
/* 800E0288 000DD1C8  48 00 00 18 */ b lbl_800E02A0
lbl_800E028C:
/* 800E028C 000DD1CC  7F C3 F3 78 */ mr r3, r30
/* 800E0290 000DD1D0  4B FF FF 81 */ bl daAlink_c_NS_getBoomerangActor
/* 800E0294 000DD1D4  30 03 FF FF */ addic r0, r3, -1
/* 800E0298 000DD1D8  7C 00 19 10 */ subfe r0, r0, r3
/* 800E029C 000DD1DC  54 03 06 3E */ clrlwi r3, r0, 0x18
lbl_800E02A0:
/* 800E02A0 000DD1E0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E02A4 000DD1E4  83 C1 00 08 */ lwz r30, 8(r1)
/* 800E02A8 000DD1E8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E02AC 000DD1EC  7C 08 03 A6 */ mtlr r0
/* 800E02B0 000DD1F0  38 21 00 10 */ addi r1, r1, 0x10
/* 800E02B4 000DD1F4  4E 80 00 20 */ blr
