/* 800E79F8 000E4938  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800E79FC 000E493C  7C 08 02 A6 */ mflr r0
/* 800E7A00 000E4940  90 01 00 54 */ stw r0, 0x54(r1)
/* 800E7A04 000E4944  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 800E7A08 000E4948  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 800E7A0C 000E494C  DB C1 00 30 */ stfd f30, 0x30(r1)
/* 800E7A10 000E4950  F3 C1 00 38 */ psq_st f30, 56(r1), 0, 0
/* 800E7A14 000E4954  39 61 00 30 */ addi r11, r1, 0x30
/* 800E7A18 000E4958  48 27 A7 C5 */ bl _savegpr_29
/* 800E7A1C 000E495C  7C 7D 1B 78 */ mr r29, r3
/* 800E7A20 000E4960  80 03 28 48 */ lwz r0, 0x2848(r3)
/* 800E7A24 000E4964  28 00 00 00 */ cmplwi r0, 0
/* 800E7A28 000E4968  40 82 00 14 */ bne lbl_800E7A3C
/* 800E7A2C 000E496C  38 00 00 00 */ li r0, 0
/* 800E7A30 000E4970  98 1D 2F A3 */ stb r0, 0x2fa3(r29)
/* 800E7A34 000E4974  38 60 00 00 */ li r3, 0
/* 800E7A38 000E4978  48 00 00 8C */ b lbl_800E7AC4
lbl_800E7A3C:
/* 800E7A3C 000E497C  3B FD 35 4C */ addi r31, r29, 0x354c
/* 800E7A40 000E4980  3B C0 00 00 */ li r30, 0
/* 800E7A44 000E4984  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E7A48 000E4988  C3 E2 94 7C */ lfs f31, lbl_80452E7C-_SDA2_BASE_(r2)
lbl_800E7A4C:
/* 800E7A4C 000E498C  C0 3D 04 D8 */ lfs f1, 0x4d8(r29)
/* 800E7A50 000E4990  C0 1D 04 D0 */ lfs f0, 0x4d0(r29)
/* 800E7A54 000E4994  D0 01 00 08 */ stfs f0, 8(r1)
/* 800E7A58 000E4998  D3 C1 00 0C */ stfs f30, 0xc(r1)
/* 800E7A5C 000E499C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800E7A60 000E49A0  C0 3F 00 08 */ lfs f1, 8(r31)
/* 800E7A64 000E49A4  C0 1F 00 00 */ lfs f0, 0(r31)
/* 800E7A68 000E49A8  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800E7A6C 000E49AC  D3 C1 00 18 */ stfs f30, 0x18(r1)
/* 800E7A70 000E49B0  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 800E7A74 000E49B4  38 61 00 08 */ addi r3, r1, 8
/* 800E7A78 000E49B8  38 81 00 14 */ addi r4, r1, 0x14
/* 800E7A7C 000E49BC  48 25 F9 21 */ bl PSVECSquareDistance
/* 800E7A80 000E49C0  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 800E7A84 000E49C4  40 80 00 2C */ bge lbl_800E7AB0
/* 800E7A88 000E49C8  C0 3D 04 D4 */ lfs f1, 0x4d4(r29)
/* 800E7A8C 000E49CC  C0 1F 00 04 */ lfs f0, 4(r31)
/* 800E7A90 000E49D0  EC 01 00 28 */ fsubs f0, f1, f0
/* 800E7A94 000E49D4  FC 00 02 10 */ fabs f0, f0
/* 800E7A98 000E49D8  FC 20 00 18 */ frsp f1, f0
/* 800E7A9C 000E49DC  C0 02 93 50 */ lfs f0, lbl_80452D50-_SDA2_BASE_(r2)
/* 800E7AA0 000E49E0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E7AA4 000E49E4  40 80 00 0C */ bge lbl_800E7AB0
/* 800E7AA8 000E49E8  38 7E 00 01 */ addi r3, r30, 1
/* 800E7AAC 000E49EC  48 00 00 18 */ b lbl_800E7AC4
lbl_800E7AB0:
/* 800E7AB0 000E49F0  3B DE 00 01 */ addi r30, r30, 1
/* 800E7AB4 000E49F4  2C 1E 00 04 */ cmpwi r30, 4
/* 800E7AB8 000E49F8  3B FF 00 0C */ addi r31, r31, 0xc
/* 800E7ABC 000E49FC  41 80 FF 90 */ blt lbl_800E7A4C
/* 800E7AC0 000E4A00  38 60 00 00 */ li r3, 0
lbl_800E7AC4:
/* 800E7AC4 000E4A04  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 800E7AC8 000E4A08  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 800E7ACC 000E4A0C  E3 C1 00 38 */ psq_l f30, 56(r1), 0, 0
/* 800E7AD0 000E4A10  CB C1 00 30 */ lfd f30, 0x30(r1)
/* 800E7AD4 000E4A14  39 61 00 30 */ addi r11, r1, 0x30
/* 800E7AD8 000E4A18  48 27 A7 51 */ bl _restgpr_29
/* 800E7ADC 000E4A1C  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800E7AE0 000E4A20  7C 08 03 A6 */ mtlr r0
/* 800E7AE4 000E4A24  38 21 00 50 */ addi r1, r1, 0x50
/* 800E7AE8 000E4A28  4E 80 00 20 */ blr
