/* 802BDBDC 002BAB1C  54 80 10 3A */ slwi r0, r4, 2
/* 802BDBE0 002BAB20  7C 83 02 14 */ add r4, r3, r0
/* 802BDBE4 002BAB24  C0 04 00 0C */ lfs f0, 0xc(r4)
/* 802BDBE8 002BAB28  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802BDBEC 002BAB2C  40 81 00 0C */ ble lbl_802BDBF8
/* 802BDBF0 002BAB30  C0 23 00 4C */ lfs f1, 0x4c(r3)
/* 802BDBF4 002BAB34  4E 80 00 20 */ blr
lbl_802BDBF8:
/* 802BDBF8 002BAB38  C0 03 00 48 */ lfs f0, 0x48(r3)
/* 802BDBFC 002BAB3C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802BDC00 002BAB40  40 80 00 0C */ bge lbl_802BDC0C
/* 802BDC04 002BAB44  C0 22 C0 A4 */ lfs f1, lbl_80455AA4-_SDA2_BASE_(r2)
/* 802BDC08 002BAB48  4E 80 00 20 */ blr
lbl_802BDC0C:
/* 802BDC0C 002BAB4C  C0 62 C0 A4 */ lfs f3, lbl_80455AA4-_SDA2_BASE_(r2)
/* 802BDC10 002BAB50  C0 44 00 7C */ lfs f2, 0x7c(r4)
/* 802BDC14 002BAB54  EC 01 00 28 */ fsubs f0, f1, f0
/* 802BDC18 002BAB58  EC 02 00 32 */ fmuls f0, f2, f0
/* 802BDC1C 002BAB5C  EC 03 00 2A */ fadds f0, f3, f0
/* 802BDC20 002BAB60  C0 22 C0 A0 */ lfs f1, lbl_80455AA0-_SDA2_BASE_(r2)
/* 802BDC24 002BAB64  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802BDC28 002BAB68  4D 80 00 20 */ bltlr
/* 802BDC2C 002BAB6C  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 802BDC30 002BAB70  40 81 00 0C */ ble lbl_802BDC3C
/* 802BDC34 002BAB74  FC 20 18 90 */ fmr f1, f3
/* 802BDC38 002BAB78  4E 80 00 20 */ blr
lbl_802BDC3C:
/* 802BDC3C 002BAB7C  FC 20 00 90 */ fmr f1, f0
/* 802BDC40 002BAB80  4E 80 00 20 */ blr
