/* 800E3218 000E0158  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 800E321C 000E015C  7C 08 02 A6 */ mflr r0
/* 800E3220 000E0160  90 01 00 74 */ stw r0, 0x74(r1)
/* 800E3224 000E0164  93 E1 00 6C */ stw r31, 0x6c(r1)
/* 800E3228 000E0168  7C 7F 1B 78 */ mr r31, r3
/* 800E322C 000E016C  38 61 00 2C */ addi r3, r1, 0x2c
/* 800E3230 000E0170  38 9F 36 9C */ addi r4, r31, 0x369c
/* 800E3234 000E0174  48 18 3A FD */ bl normZP__4cXyzCFv
/* 800E3238 000E0178  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800E323C 000E017C  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 800E3240 000E0180  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 800E3244 000E0184  D0 01 00 48 */ stfs f0, 0x48(r1)
/* 800E3248 000E0188  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800E324C 000E018C  D0 01 00 4C */ stfs f0, 0x4c(r1)
/* 800E3250 000E0190  38 61 00 44 */ addi r3, r1, 0x44
/* 800E3254 000E0194  38 9F 38 34 */ addi r4, r31, 0x3834
/* 800E3258 000E0198  48 26 3F 3D */ bl PSVECDotProduct
/* 800E325C 000E019C  38 61 00 50 */ addi r3, r1, 0x50
/* 800E3260 000E01A0  38 81 00 44 */ addi r4, r1, 0x44
/* 800E3264 000E01A4  FC 20 08 50 */ fneg f1, f1
/* 800E3268 000E01A8  48 18 C1 75 */ bl __ct__8cM3dGPlaFPC4cXyzf
/* 800E326C 000E01AC  38 61 00 20 */ addi r3, r1, 0x20
/* 800E3270 000E01B0  38 9F 36 B4 */ addi r4, r31, 0x36b4
/* 800E3274 000E01B4  38 BF 36 9C */ addi r5, r31, 0x369c
/* 800E3278 000E01B8  48 18 38 6D */ bl __pl__4cXyzCFRC3Vec
/* 800E327C 000E01BC  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 800E3280 000E01C0  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 800E3284 000E01C4  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 800E3288 000E01C8  D0 01 00 48 */ stfs f0, 0x48(r1)
/* 800E328C 000E01CC  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 800E3290 000E01D0  D0 01 00 4C */ stfs f0, 0x4c(r1)
/* 800E3294 000E01D4  38 61 00 50 */ addi r3, r1, 0x50
/* 800E3298 000E01D8  38 9F 36 B4 */ addi r4, r31, 0x36b4
/* 800E329C 000E01DC  38 A1 00 44 */ addi r5, r1, 0x44
/* 800E32A0 000E01E0  38 C1 00 38 */ addi r6, r1, 0x38
/* 800E32A4 000E01E4  48 18 C1 65 */ bl crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz
/* 800E32A8 000E01E8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E32AC 000E01EC  40 82 00 18 */ bne lbl_800E32C4
/* 800E32B0 000E01F0  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800E32B4 000E01F4  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800E32B8 000E01F8  90 01 00 60 */ stw r0, 0x60(r1)
/* 800E32BC 000E01FC  38 60 00 00 */ li r3, 0
/* 800E32C0 000E0200  48 00 01 80 */ b lbl_800E3440
lbl_800E32C4:
/* 800E32C4 000E0204  38 61 00 14 */ addi r3, r1, 0x14
/* 800E32C8 000E0208  38 9F 36 9C */ addi r4, r31, 0x369c
/* 800E32CC 000E020C  C0 22 93 14 */ lfs f1, lbl_80452D14-_SDA2_BASE_(r2)
/* 800E32D0 000E0210  48 18 38 B5 */ bl __ml__4cXyzCFf
/* 800E32D4 000E0214  38 61 00 08 */ addi r3, r1, 8
/* 800E32D8 000E0218  38 81 00 38 */ addi r4, r1, 0x38
/* 800E32DC 000E021C  38 A1 00 14 */ addi r5, r1, 0x14
/* 800E32E0 000E0220  48 18 38 05 */ bl __pl__4cXyzCFRC3Vec
/* 800E32E4 000E0224  C0 01 00 08 */ lfs f0, 8(r1)
/* 800E32E8 000E0228  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 800E32EC 000E022C  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800E32F0 000E0230  D0 01 00 48 */ stfs f0, 0x48(r1)
/* 800E32F4 000E0234  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800E32F8 000E0238  D0 01 00 4C */ stfs f0, 0x4c(r1)
/* 800E32FC 000E023C  7F E3 FB 78 */ mr r3, r31
/* 800E3300 000E0240  38 81 00 38 */ addi r4, r1, 0x38
/* 800E3304 000E0244  38 A1 00 44 */ addi r5, r1, 0x44
/* 800E3308 000E0248  4B FF F1 A9 */ bl daAlink_c_NS_commonMagneLineCheck
/* 800E330C 000E024C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E3310 000E0250  40 82 00 18 */ bne lbl_800E3328
/* 800E3314 000E0254  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800E3318 000E0258  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800E331C 000E025C  90 01 00 60 */ stw r0, 0x60(r1)
/* 800E3320 000E0260  38 60 00 00 */ li r3, 0
/* 800E3324 000E0264  48 00 01 1C */ b lbl_800E3440
lbl_800E3328:
/* 800E3328 000E0268  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E332C 000E026C  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E3330 000E0270  41 82 00 1C */ beq lbl_800E334C
/* 800E3334 000E0274  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E3338 000E0278  54 00 05 24 */ rlwinm r0, r0, 0, 0x14, 0x12
/* 800E333C 000E027C  90 1F 05 70 */ stw r0, 0x570(r31)
/* 800E3340 000E0280  38 7F 2C A8 */ addi r3, r31, 0x2ca8
/* 800E3344 000E0284  38 80 00 01 */ li r4, 1
/* 800E3348 000E0288  48 1E 07 A5 */ bl setMagnetized__14Z2CreatureLinkFb
lbl_800E334C:
/* 800E334C 000E028C  7F E3 FB 78 */ mr r3, r31
/* 800E3350 000E0290  38 80 00 CC */ li r4, 0xcc
/* 800E3354 000E0294  4B FD EC 19 */ bl daAlink_c_NS_commonProcInit
/* 800E3358 000E0298  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E335C 000E029C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E3360 000E02A0  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800E3364 000E02A4  38 9F 1D C0 */ addi r4, r31, 0x1dc0
/* 800E3368 000E02A8  38 A1 00 50 */ addi r5, r1, 0x50
/* 800E336C 000E02AC  4B F9 13 D9 */ bl cBgS_NS_GetTriPla
/* 800E3370 000E02B0  38 7F 1E 2C */ addi r3, r31, 0x1e2c
/* 800E3374 000E02B4  38 9F 1D C0 */ addi r4, r31, 0x1dc0
/* 800E3378 000E02B8  48 18 4D D1 */ bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800E337C 000E02BC  C0 1F 1D DC */ lfs f0, 0x1ddc(r31)
/* 800E3380 000E02C0  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800E3384 000E02C4  C0 1F 1D E0 */ lfs f0, 0x1de0(r31)
/* 800E3388 000E02C8  D0 1F 37 CC */ stfs f0, 0x37cc(r31)
/* 800E338C 000E02CC  C0 1F 1D E4 */ lfs f0, 0x1de4(r31)
/* 800E3390 000E02D0  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800E3394 000E02D4  7F E3 FB 78 */ mr r3, r31
/* 800E3398 000E02D8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E339C 000E02DC  C0 5F 05 34 */ lfs f2, 0x534(r31)
/* 800E33A0 000E02E0  38 80 00 00 */ li r4, 0
/* 800E33A4 000E02E4  4B FD 83 CD */ bl setSpecialGravity__9daAlink_cFffi
/* 800E33A8 000E02E8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E33AC 000E02EC  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 800E33B0 000E02F0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800E33B4 000E02F4  7F E3 FB 78 */ mr r3, r31
/* 800E33B8 000E02F8  38 80 01 15 */ li r4, 0x115
/* 800E33BC 000E02FC  4B FC 9B C5 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800E33C0 000E0300  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 800E33C4 000E0304  28 03 01 03 */ cmplwi r3, 0x103
/* 800E33C8 000E0308  41 82 00 24 */ beq lbl_800E33EC
/* 800E33CC 000E030C  48 07 B7 C5 */ bl daPy_py_c_NS_checkBowItem
/* 800E33D0 000E0310  2C 03 00 00 */ cmpwi r3, 0
/* 800E33D4 000E0314  40 82 00 18 */ bne lbl_800E33EC
/* 800E33D8 000E0318  7F E3 FB 78 */ mr r3, r31
/* 800E33DC 000E031C  38 80 00 00 */ li r4, 0
/* 800E33E0 000E0320  38 A0 00 01 */ li r5, 1
/* 800E33E4 000E0324  4B FD DE F9 */ bl daAlink_c_NS_deleteEquipItem
/* 800E33E8 000E0328  48 00 00 0C */ b lbl_800E33F4
lbl_800E33EC:
/* 800E33EC 000E032C  7F E3 FB 78 */ mr r3, r31
/* 800E33F0 000E0330  48 02 D4 51 */ bl daAlink_c_NS_offKandelaarModel
lbl_800E33F4:
/* 800E33F4 000E0334  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E33F8 000E0338  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800E33FC 000E033C  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800E3400 000E0340  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800E3404 000E0344  C0 03 00 30 */ lfs f0, 0x30(r3)
/* 800E3408 000E0348  D0 1F 05 94 */ stfs f0, 0x594(r31)
/* 800E340C 000E034C  38 00 00 00 */ li r0, 0
/* 800E3410 000E0350  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800E3414 000E0354  7F E3 FB 78 */ mr r3, r31
/* 800E3418 000E0358  3C 80 00 01 */ lis r4, 0x0001005C@ha
/* 800E341C 000E035C  38 84 00 5C */ addi r4, r4, 0x0001005C@l
/* 800E3420 000E0360  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800E3424 000E0364  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800E3428 000E0368  7D 89 03 A6 */ mtctr r12
/* 800E342C 000E036C  4E 80 04 21 */ bctrl
/* 800E3430 000E0370  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800E3434 000E0374  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800E3438 000E0378  90 01 00 60 */ stw r0, 0x60(r1)
/* 800E343C 000E037C  38 60 00 01 */ li r3, 1
lbl_800E3440:
/* 800E3440 000E0380  83 E1 00 6C */ lwz r31, 0x6c(r1)
/* 800E3444 000E0384  80 01 00 74 */ lwz r0, 0x74(r1)
/* 800E3448 000E0388  7C 08 03 A6 */ mtlr r0
/* 800E344C 000E038C  38 21 00 70 */ addi r1, r1, 0x70
/* 800E3450 000E0390  4E 80 00 20 */ blr