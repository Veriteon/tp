.include "macros.inc"

.section .text, "ax" # 8033bbe4


.global __OSLoadFPUContext
__OSLoadFPUContext:
/* 8033BBE4 00338B24  A0 A4 01 A2 */	lhz r5, 0x1a2(r4)
/* 8033BBE8 00338B28  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 8033BBEC 00338B2C  41 82 01 18 */	beq lbl_8033BD04
/* 8033BBF0 00338B30  C8 04 01 90 */	lfd f0, 0x190(r4)
/* 8033BBF4 00338B34  FD FE 05 8E */	mtfsf 0xff, f0
/* 8033BBF8 00338B38  7C B8 E2 A6 */	mfspr r5, 0x398
/* 8033BBFC 00338B3C  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 8033BC00 00338B40  41 82 00 84 */	beq lbl_8033BC84
/* 8033BC04 00338B44  E0 04 01 C8 */	psq_l f0, 456(r4), 0, qr0
/* 8033BC08 00338B48  E0 24 01 D0 */	psq_l f1, 464(r4), 0, qr0
/* 8033BC0C 00338B4C  E0 44 01 D8 */	psq_l f2, 472(r4), 0, qr0
/* 8033BC10 00338B50  E0 64 01 E0 */	psq_l f3, 480(r4), 0, qr0
/* 8033BC14 00338B54  E0 84 01 E8 */	psq_l f4, 488(r4), 0, qr0
/* 8033BC18 00338B58  E0 A4 01 F0 */	psq_l f5, 496(r4), 0, qr0
/* 8033BC1C 00338B5C  E0 C4 01 F8 */	psq_l f6, 504(r4), 0, qr0
/* 8033BC20 00338B60  E0 E4 02 00 */	psq_l f7, 512(r4), 0, qr0
/* 8033BC24 00338B64  E1 04 02 08 */	psq_l f8, 520(r4), 0, qr0
/* 8033BC28 00338B68  E1 24 02 10 */	psq_l f9, 528(r4), 0, qr0
/* 8033BC2C 00338B6C  E1 44 02 18 */	psq_l f10, 536(r4), 0, qr0
/* 8033BC30 00338B70  E1 64 02 20 */	psq_l f11, 544(r4), 0, qr0
/* 8033BC34 00338B74  E1 84 02 28 */	psq_l f12, 552(r4), 0, qr0
/* 8033BC38 00338B78  E1 A4 02 30 */	psq_l f13, 560(r4), 0, qr0
/* 8033BC3C 00338B7C  E1 C4 02 38 */	psq_l f14, 568(r4), 0, qr0
/* 8033BC40 00338B80  E1 E4 02 40 */	psq_l f15, 576(r4), 0, qr0
/* 8033BC44 00338B84  E2 04 02 48 */	psq_l f16, 584(r4), 0, qr0
/* 8033BC48 00338B88  E2 24 02 50 */	psq_l f17, 592(r4), 0, qr0
/* 8033BC4C 00338B8C  E2 44 02 58 */	psq_l f18, 600(r4), 0, qr0
/* 8033BC50 00338B90  E2 64 02 60 */	psq_l f19, 608(r4), 0, qr0
/* 8033BC54 00338B94  E2 84 02 68 */	psq_l f20, 616(r4), 0, qr0
/* 8033BC58 00338B98  E2 A4 02 70 */	psq_l f21, 624(r4), 0, qr0
/* 8033BC5C 00338B9C  E2 C4 02 78 */	psq_l f22, 632(r4), 0, qr0
/* 8033BC60 00338BA0  E2 E4 02 80 */	psq_l f23, 640(r4), 0, qr0
/* 8033BC64 00338BA4  E3 04 02 88 */	psq_l f24, 648(r4), 0, qr0
/* 8033BC68 00338BA8  E3 24 02 90 */	psq_l f25, 656(r4), 0, qr0
/* 8033BC6C 00338BAC  E3 44 02 98 */	psq_l f26, 664(r4), 0, qr0
/* 8033BC70 00338BB0  E3 64 02 A0 */	psq_l f27, 672(r4), 0, qr0
/* 8033BC74 00338BB4  E3 84 02 A8 */	psq_l f28, 680(r4), 0, qr0
/* 8033BC78 00338BB8  E3 A4 02 B0 */	psq_l f29, 688(r4), 0, qr0
/* 8033BC7C 00338BBC  E3 C4 02 B8 */	psq_l f30, 696(r4), 0, qr0
/* 8033BC80 00338BC0  E3 E4 02 C0 */	psq_l f31, 704(r4), 0, qr0
lbl_8033BC84:
/* 8033BC84 00338BC4  C8 04 00 90 */	lfd f0, 0x90(r4)
/* 8033BC88 00338BC8  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 8033BC8C 00338BCC  C8 44 00 A0 */	lfd f2, 0xa0(r4)
/* 8033BC90 00338BD0  C8 64 00 A8 */	lfd f3, 0xa8(r4)
/* 8033BC94 00338BD4  C8 84 00 B0 */	lfd f4, 0xb0(r4)
/* 8033BC98 00338BD8  C8 A4 00 B8 */	lfd f5, 0xb8(r4)
/* 8033BC9C 00338BDC  C8 C4 00 C0 */	lfd f6, 0xc0(r4)
/* 8033BCA0 00338BE0  C8 E4 00 C8 */	lfd f7, 0xc8(r4)
/* 8033BCA4 00338BE4  C9 04 00 D0 */	lfd f8, 0xd0(r4)
/* 8033BCA8 00338BE8  C9 24 00 D8 */	lfd f9, 0xd8(r4)
/* 8033BCAC 00338BEC  C9 44 00 E0 */	lfd f10, 0xe0(r4)
/* 8033BCB0 00338BF0  C9 64 00 E8 */	lfd f11, 0xe8(r4)
/* 8033BCB4 00338BF4  C9 84 00 F0 */	lfd f12, 0xf0(r4)
/* 8033BCB8 00338BF8  C9 A4 00 F8 */	lfd f13, 0xf8(r4)
/* 8033BCBC 00338BFC  C9 C4 01 00 */	lfd f14, 0x100(r4)
/* 8033BCC0 00338C00  C9 E4 01 08 */	lfd f15, 0x108(r4)
/* 8033BCC4 00338C04  CA 04 01 10 */	lfd f16, 0x110(r4)
/* 8033BCC8 00338C08  CA 24 01 18 */	lfd f17, 0x118(r4)
/* 8033BCCC 00338C0C  CA 44 01 20 */	lfd f18, 0x120(r4)
/* 8033BCD0 00338C10  CA 64 01 28 */	lfd f19, 0x128(r4)
/* 8033BCD4 00338C14  CA 84 01 30 */	lfd f20, 0x130(r4)
/* 8033BCD8 00338C18  CA A4 01 38 */	lfd f21, 0x138(r4)
/* 8033BCDC 00338C1C  CA C4 01 40 */	lfd f22, 0x140(r4)
/* 8033BCE0 00338C20  CA E4 01 48 */	lfd f23, 0x148(r4)
/* 8033BCE4 00338C24  CB 04 01 50 */	lfd f24, 0x150(r4)
/* 8033BCE8 00338C28  CB 24 01 58 */	lfd f25, 0x158(r4)
/* 8033BCEC 00338C2C  CB 44 01 60 */	lfd f26, 0x160(r4)
/* 8033BCF0 00338C30  CB 64 01 68 */	lfd f27, 0x168(r4)
/* 8033BCF4 00338C34  CB 84 01 70 */	lfd f28, 0x170(r4)
/* 8033BCF8 00338C38  CB A4 01 78 */	lfd f29, 0x178(r4)
/* 8033BCFC 00338C3C  CB C4 01 80 */	lfd f30, 0x180(r4)
/* 8033BD00 00338C40  CB E4 01 88 */	lfd f31, 0x188(r4)
lbl_8033BD04:
/* 8033BD04 00338C44  4E 80 00 20 */	blr 

.global __OSSaveFPUContext
__OSSaveFPUContext:
/* 8033BD08 00338C48  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 8033BD0C 00338C4C  60 63 00 01 */	ori r3, r3, 1
/* 8033BD10 00338C50  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 8033BD14 00338C54  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 8033BD18 00338C58  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 8033BD1C 00338C5C  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 8033BD20 00338C60  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 8033BD24 00338C64  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 8033BD28 00338C68  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 8033BD2C 00338C6C  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 8033BD30 00338C70  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 8033BD34 00338C74  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 8033BD38 00338C78  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 8033BD3C 00338C7C  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 8033BD40 00338C80  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 8033BD44 00338C84  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 8033BD48 00338C88  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 8033BD4C 00338C8C  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 8033BD50 00338C90  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 8033BD54 00338C94  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 8033BD58 00338C98  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 8033BD5C 00338C9C  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 8033BD60 00338CA0  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 8033BD64 00338CA4  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 8033BD68 00338CA8  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 8033BD6C 00338CAC  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 8033BD70 00338CB0  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 8033BD74 00338CB4  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 8033BD78 00338CB8  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 8033BD7C 00338CBC  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 8033BD80 00338CC0  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 8033BD84 00338CC4  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 8033BD88 00338CC8  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 8033BD8C 00338CCC  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 8033BD90 00338CD0  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 8033BD94 00338CD4  FC 00 04 8E */	mffs f0
/* 8033BD98 00338CD8  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 8033BD9C 00338CDC  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 8033BDA0 00338CE0  7C 78 E2 A6 */	mfspr r3, 0x398
/* 8033BDA4 00338CE4  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 8033BDA8 00338CE8  41 82 00 84 */	beq lbl_8033BE2C
/* 8033BDAC 00338CEC  F0 05 01 C8 */	psq_st f0, 456(r5), 0, qr0
/* 8033BDB0 00338CF0  F0 25 01 D0 */	psq_st f1, 464(r5), 0, qr0
/* 8033BDB4 00338CF4  F0 45 01 D8 */	psq_st f2, 472(r5), 0, qr0
/* 8033BDB8 00338CF8  F0 65 01 E0 */	psq_st f3, 480(r5), 0, qr0
/* 8033BDBC 00338CFC  F0 85 01 E8 */	psq_st f4, 488(r5), 0, qr0
/* 8033BDC0 00338D00  F0 A5 01 F0 */	psq_st f5, 496(r5), 0, qr0
/* 8033BDC4 00338D04  F0 C5 01 F8 */	psq_st f6, 504(r5), 0, qr0
/* 8033BDC8 00338D08  F0 E5 02 00 */	psq_st f7, 512(r5), 0, qr0
/* 8033BDCC 00338D0C  F1 05 02 08 */	psq_st f8, 520(r5), 0, qr0
/* 8033BDD0 00338D10  F1 25 02 10 */	psq_st f9, 528(r5), 0, qr0
/* 8033BDD4 00338D14  F1 45 02 18 */	psq_st f10, 536(r5), 0, qr0
/* 8033BDD8 00338D18  F1 65 02 20 */	psq_st f11, 544(r5), 0, qr0
/* 8033BDDC 00338D1C  F1 85 02 28 */	psq_st f12, 552(r5), 0, qr0
/* 8033BDE0 00338D20  F1 A5 02 30 */	psq_st f13, 560(r5), 0, qr0
/* 8033BDE4 00338D24  F1 C5 02 38 */	psq_st f14, 568(r5), 0, qr0
/* 8033BDE8 00338D28  F1 E5 02 40 */	psq_st f15, 576(r5), 0, qr0
/* 8033BDEC 00338D2C  F2 05 02 48 */	psq_st f16, 584(r5), 0, qr0
/* 8033BDF0 00338D30  F2 25 02 50 */	psq_st f17, 592(r5), 0, qr0
/* 8033BDF4 00338D34  F2 45 02 58 */	psq_st f18, 600(r5), 0, qr0
/* 8033BDF8 00338D38  F2 65 02 60 */	psq_st f19, 608(r5), 0, qr0
/* 8033BDFC 00338D3C  F2 85 02 68 */	psq_st f20, 616(r5), 0, qr0
/* 8033BE00 00338D40  F2 A5 02 70 */	psq_st f21, 624(r5), 0, qr0
/* 8033BE04 00338D44  F2 C5 02 78 */	psq_st f22, 632(r5), 0, qr0
/* 8033BE08 00338D48  F2 E5 02 80 */	psq_st f23, 640(r5), 0, qr0
/* 8033BE0C 00338D4C  F3 05 02 88 */	psq_st f24, 648(r5), 0, qr0
/* 8033BE10 00338D50  F3 25 02 90 */	psq_st f25, 656(r5), 0, qr0
/* 8033BE14 00338D54  F3 45 02 98 */	psq_st f26, 664(r5), 0, qr0
/* 8033BE18 00338D58  F3 65 02 A0 */	psq_st f27, 672(r5), 0, qr0
/* 8033BE1C 00338D5C  F3 85 02 A8 */	psq_st f28, 680(r5), 0, qr0
/* 8033BE20 00338D60  F3 A5 02 B0 */	psq_st f29, 688(r5), 0, qr0
/* 8033BE24 00338D64  F3 C5 02 B8 */	psq_st f30, 696(r5), 0, qr0
/* 8033BE28 00338D68  F3 E5 02 C0 */	psq_st f31, 704(r5), 0, qr0
lbl_8033BE2C:
/* 8033BE2C 00338D6C  4E 80 00 20 */	blr 

.global OSSaveFPUContext
OSSaveFPUContext:
/* 8033BE30 00338D70  38 A3 00 00 */	addi r5, r3, 0
/* 8033BE34 00338D74  4B FF FE D4 */	b __OSSaveFPUContext

.global OSSetCurrentContext
OSSetCurrentContext:
/* 8033BE38 00338D78  3C 80 80 00 */	lis r4, 0x800000D4@ha
/* 8033BE3C 00338D7C  90 64 00 D4 */	stw r3, 0x800000D4@l(r4)
/* 8033BE40 00338D80  54 65 00 BE */	clrlwi r5, r3, 2
/* 8033BE44 00338D84  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 8033BE48 00338D88  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 8033BE4C 00338D8C  7C 05 18 00 */	cmpw r5, r3
/* 8033BE50 00338D90  40 82 00 20 */	bne lbl_8033BE70
/* 8033BE54 00338D94  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8033BE58 00338D98  60 C6 20 00 */	ori r6, r6, 0x2000
/* 8033BE5C 00338D9C  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8033BE60 00338DA0  7C C0 00 A6 */	mfmsr r6
/* 8033BE64 00338DA4  60 C6 00 02 */	ori r6, r6, 2
/* 8033BE68 00338DA8  7C C0 01 24 */	mtmsr r6
/* 8033BE6C 00338DAC  4E 80 00 20 */	blr 
lbl_8033BE70:
/* 8033BE70 00338DB0  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8033BE74 00338DB4  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8033BE78 00338DB8  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8033BE7C 00338DBC  7C C0 00 A6 */	mfmsr r6
/* 8033BE80 00338DC0  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8033BE84 00338DC4  60 C6 00 02 */	ori r6, r6, 2
/* 8033BE88 00338DC8  7C C0 01 24 */	mtmsr r6
/* 8033BE8C 00338DCC  4C 00 01 2C */	isync 
/* 8033BE90 00338DD0  4E 80 00 20 */	blr 

.global OSGetCurrentContext
OSGetCurrentContext:
/* 8033BE94 00338DD4  3C 60 80 00 */	lis r3, 0x800000D4@ha
/* 8033BE98 00338DD8  80 63 00 D4 */	lwz r3, 0x800000D4@l(r3)
/* 8033BE9C 00338DDC  4E 80 00 20 */	blr 

.global OSSaveContext
OSSaveContext:
/* 8033BEA0 00338DE0  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 8033BEA4 00338DE4  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033BEA8 00338DE8  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 8033BEAC 00338DEC  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033BEB0 00338DF0  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 8033BEB4 00338DF4  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033BEB8 00338DF8  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8033BEBC 00338DFC  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033BEC0 00338E00  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 8033BEC4 00338E04  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033BEC8 00338E08  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 8033BECC 00338E0C  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033BED0 00338E10  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 8033BED4 00338E14  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033BED8 00338E18  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8033BEDC 00338E1C  7C 00 00 26 */	mfcr r0
/* 8033BEE0 00338E20  90 03 00 80 */	stw r0, 0x80(r3)
/* 8033BEE4 00338E24  7C 08 02 A6 */	mflr r0
/* 8033BEE8 00338E28  90 03 00 84 */	stw r0, 0x84(r3)
/* 8033BEEC 00338E2C  90 03 01 98 */	stw r0, 0x198(r3)
/* 8033BEF0 00338E30  7C 00 00 A6 */	mfmsr r0
/* 8033BEF4 00338E34  90 03 01 9C */	stw r0, 0x19c(r3)
/* 8033BEF8 00338E38  7C 09 02 A6 */	mfctr r0
/* 8033BEFC 00338E3C  90 03 00 88 */	stw r0, 0x88(r3)
/* 8033BF00 00338E40  7C 01 02 A6 */	mfxer r0
/* 8033BF04 00338E44  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8033BF08 00338E48  90 23 00 04 */	stw r1, 4(r3)
/* 8033BF0C 00338E4C  90 43 00 08 */	stw r2, 8(r3)
/* 8033BF10 00338E50  38 00 00 01 */	li r0, 1
/* 8033BF14 00338E54  90 03 00 0C */	stw r0, 0xc(r3)
/* 8033BF18 00338E58  38 60 00 00 */	li r3, 0
/* 8033BF1C 00338E5C  4E 80 00 20 */	blr 

.global OSLoadContext
OSLoadContext:
/* 8033BF20 00338E60  3C 80 80 34 */	lis r4, __RAS_OSDisableInterrupts_begin @ha
/* 8033BF24 00338E64  80 C3 01 98 */	lwz r6, 0x198(r3)
/* 8033BF28 00338E68  38 A4 D6 F4 */	addi r5, r4, __RAS_OSDisableInterrupts_begin @l
/* 8033BF2C 00338E6C  7C 06 28 40 */	cmplw r6, r5
/* 8033BF30 00338E70  40 81 00 18 */	ble lbl_8033BF48
.global __RAS_OSDisableInterrupts_end 
/* 8033BF34 00338E74  3C 80 80 34 */	lis r4, __RAS_OSDisableInterrupts_end @ha
.global __RAS_OSDisableInterrupts_end 
/* 8033BF38 00338E78  38 04 D7 00 */	addi r0, r4, __RAS_OSDisableInterrupts_end @l
/* 8033BF3C 00338E7C  7C 06 00 40 */	cmplw r6, r0
/* 8033BF40 00338E80  40 80 00 08 */	bge lbl_8033BF48
/* 8033BF44 00338E84  90 A3 01 98 */	stw r5, 0x198(r3)
lbl_8033BF48:
/* 8033BF48 00338E88  80 03 00 00 */	lwz r0, 0(r3)
/* 8033BF4C 00338E8C  80 23 00 04 */	lwz r1, 4(r3)
/* 8033BF50 00338E90  80 43 00 08 */	lwz r2, 8(r3)
/* 8033BF54 00338E94  A0 83 01 A2 */	lhz r4, 0x1a2(r3)
/* 8033BF58 00338E98  54 85 07 BD */	rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 8033BF5C 00338E9C  41 82 00 14 */	beq lbl_8033BF70
/* 8033BF60 00338EA0  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8033BF64 00338EA4  B0 83 01 A2 */	sth r4, 0x1a2(r3)
/* 8033BF68 00338EA8  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 8033BF6C 00338EAC  48 00 00 08 */	b lbl_8033BF74
lbl_8033BF70:
/* 8033BF70 00338EB0  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_8033BF74:
/* 8033BF74 00338EB4  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 8033BF78 00338EB8  7C 91 E3 A6 */	mtspr 0x391, r4
/* 8033BF7C 00338EBC  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 8033BF80 00338EC0  7C 92 E3 A6 */	mtspr 0x392, r4
/* 8033BF84 00338EC4  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 8033BF88 00338EC8  7C 93 E3 A6 */	mtspr 0x393, r4
/* 8033BF8C 00338ECC  80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 8033BF90 00338ED0  7C 94 E3 A6 */	mtspr 0x394, r4
/* 8033BF94 00338ED4  80 83 01 B8 */	lwz r4, 0x1b8(r3)
/* 8033BF98 00338ED8  7C 95 E3 A6 */	mtspr 0x395, r4
/* 8033BF9C 00338EDC  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 8033BFA0 00338EE0  7C 96 E3 A6 */	mtspr 0x396, r4
/* 8033BFA4 00338EE4  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 8033BFA8 00338EE8  7C 97 E3 A6 */	mtspr 0x397, r4
/* 8033BFAC 00338EEC  80 83 00 80 */	lwz r4, 0x80(r3)
/* 8033BFB0 00338EF0  7C 8F F1 20 */	mtcrf 0xff, r4
/* 8033BFB4 00338EF4  80 83 00 84 */	lwz r4, 0x84(r3)
/* 8033BFB8 00338EF8  7C 88 03 A6 */	mtlr r4
/* 8033BFBC 00338EFC  80 83 00 88 */	lwz r4, 0x88(r3)
/* 8033BFC0 00338F00  7C 89 03 A6 */	mtctr r4
/* 8033BFC4 00338F04  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 8033BFC8 00338F08  7C 81 03 A6 */	mtxer r4
/* 8033BFCC 00338F0C  7C 80 00 A6 */	mfmsr r4
/* 8033BFD0 00338F10  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 8033BFD4 00338F14  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8033BFD8 00338F18  7C 80 01 24 */	mtmsr r4
/* 8033BFDC 00338F1C  80 83 01 98 */	lwz r4, 0x198(r3)
/* 8033BFE0 00338F20  7C 9A 03 A6 */	mtspr 0x1a, r4
/* 8033BFE4 00338F24  80 83 01 9C */	lwz r4, 0x19c(r3)
/* 8033BFE8 00338F28  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 8033BFEC 00338F2C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8033BFF0 00338F30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8033BFF4 00338F34  4C 00 00 64 */	rfi 

.global OSGetStackPointer
OSGetStackPointer:
/* 8033BFF8 00338F38  7C 23 0B 78 */	mr r3, r1
/* 8033BFFC 00338F3C  4E 80 00 20 */	blr 

.global OSClearContext
OSClearContext:
/* 8033C000 00338F40  38 A0 00 00 */	li r5, 0
/* 8033C004 00338F44  B0 A3 01 A0 */	sth r5, 0x1a0(r3)
/* 8033C008 00338F48  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 8033C00C 00338F4C  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 8033C010 00338F50  80 04 00 D8 */	lwz r0, 0x800000D8@l(r4)
/* 8033C014 00338F54  7C 03 00 40 */	cmplw r3, r0
/* 8033C018 00338F58  40 82 00 08 */	bne lbl_8033C020
/* 8033C01C 00338F5C  90 A4 00 D8 */	stw r5, 0xd8(r4)
lbl_8033C020:
/* 8033C020 00338F60  4E 80 00 20 */	blr 

.global OSInitContext
OSInitContext:
/* 8033C024 00338F64  90 83 01 98 */	stw r4, 0x198(r3)
/* 8033C028 00338F68  90 A3 00 04 */	stw r5, 4(r3)
/* 8033C02C 00338F6C  39 60 00 00 */	li r11, 0
/* 8033C030 00338F70  61 6B 90 32 */	ori r11, r11, 0x9032
/* 8033C034 00338F74  91 63 01 9C */	stw r11, 0x19c(r3)
/* 8033C038 00338F78  38 00 00 00 */	li r0, 0
/* 8033C03C 00338F7C  90 03 00 80 */	stw r0, 0x80(r3)
/* 8033C040 00338F80  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8033C044 00338F84  90 43 00 08 */	stw r2, 8(r3)
/* 8033C048 00338F88  91 A3 00 34 */	stw r13, 0x34(r3)
/* 8033C04C 00338F8C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8033C050 00338F90  90 03 00 10 */	stw r0, 0x10(r3)
/* 8033C054 00338F94  90 03 00 14 */	stw r0, 0x14(r3)
/* 8033C058 00338F98  90 03 00 18 */	stw r0, 0x18(r3)
/* 8033C05C 00338F9C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8033C060 00338FA0  90 03 00 20 */	stw r0, 0x20(r3)
/* 8033C064 00338FA4  90 03 00 24 */	stw r0, 0x24(r3)
/* 8033C068 00338FA8  90 03 00 28 */	stw r0, 0x28(r3)
/* 8033C06C 00338FAC  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8033C070 00338FB0  90 03 00 30 */	stw r0, 0x30(r3)
/* 8033C074 00338FB4  90 03 00 38 */	stw r0, 0x38(r3)
/* 8033C078 00338FB8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8033C07C 00338FBC  90 03 00 40 */	stw r0, 0x40(r3)
/* 8033C080 00338FC0  90 03 00 44 */	stw r0, 0x44(r3)
/* 8033C084 00338FC4  90 03 00 48 */	stw r0, 0x48(r3)
/* 8033C088 00338FC8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8033C08C 00338FCC  90 03 00 50 */	stw r0, 0x50(r3)
/* 8033C090 00338FD0  90 03 00 54 */	stw r0, 0x54(r3)
/* 8033C094 00338FD4  90 03 00 58 */	stw r0, 0x58(r3)
/* 8033C098 00338FD8  90 03 00 5C */	stw r0, 0x5c(r3)
/* 8033C09C 00338FDC  90 03 00 60 */	stw r0, 0x60(r3)
/* 8033C0A0 00338FE0  90 03 00 64 */	stw r0, 0x64(r3)
/* 8033C0A4 00338FE4  90 03 00 68 */	stw r0, 0x68(r3)
/* 8033C0A8 00338FE8  90 03 00 6C */	stw r0, 0x6c(r3)
/* 8033C0AC 00338FEC  90 03 00 70 */	stw r0, 0x70(r3)
/* 8033C0B0 00338FF0  90 03 00 74 */	stw r0, 0x74(r3)
/* 8033C0B4 00338FF4  90 03 00 78 */	stw r0, 0x78(r3)
/* 8033C0B8 00338FF8  90 03 00 7C */	stw r0, 0x7c(r3)
/* 8033C0BC 00338FFC  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 8033C0C0 00339000  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 8033C0C4 00339004  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 8033C0C8 00339008  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8033C0CC 0033900C  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 8033C0D0 00339010  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 8033C0D4 00339014  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 8033C0D8 00339018  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8033C0DC 0033901C  4B FF FF 24 */	b OSClearContext

.global OSDumpContext
OSDumpContext:
/* 8033C0E0 00339020  7C 08 02 A6 */	mflr r0
/* 8033C0E4 00339024  90 01 00 04 */	stw r0, 4(r1)
/* 8033C0E8 00339028  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 8033C0EC 0033902C  BF 21 02 DC */	stmw r25, 0x2dc(r1)
/* 8033C0F0 00339030  7C 7C 1B 78 */	mr r28, r3
/* 8033C0F4 00339034  3C 60 80 3D */	lis r3, lbl_803CF740@ha
/* 8033C0F8 00339038  4C C6 31 82 */	crclr 6
/* 8033C0FC 0033903C  3B E3 F7 40 */	addi r31, r3, lbl_803CF740@l
/* 8033C100 00339040  7F E3 FB 78 */	mr r3, r31
/* 8033C104 00339044  7F 84 E3 78 */	mr r4, r28
/* 8033C108 00339048  4B CC A9 B5 */	bl OSReport
/* 8033C10C 0033904C  3B 20 00 00 */	li r25, 0
/* 8033C110 00339050  57 20 10 3A */	slwi r0, r25, 2
/* 8033C114 00339054  7F 7C 02 14 */	add r27, r28, r0
/* 8033C118 00339058  48 00 00 04 */	b lbl_8033C11C
lbl_8033C11C:
/* 8033C11C 0033905C  48 00 00 04 */	b lbl_8033C120
lbl_8033C120:
/* 8033C120 00339060  48 00 00 04 */	b lbl_8033C124
lbl_8033C124:
/* 8033C124 00339064  81 1B 00 40 */	lwz r8, 0x40(r27)
/* 8033C128 00339068  7F 24 CB 78 */	mr r4, r25
/* 8033C12C 0033906C  80 BB 00 00 */	lwz r5, 0(r27)
/* 8033C130 00339070  38 7F 00 44 */	addi r3, r31, 0x44
/* 8033C134 00339074  4C C6 31 82 */	crclr 6
/* 8033C138 00339078  7C A6 2B 78 */	mr r6, r5
/* 8033C13C 0033907C  7D 09 43 78 */	mr r9, r8
/* 8033C140 00339080  38 F9 00 10 */	addi r7, r25, 0x10
/* 8033C144 00339084  4B CC A9 79 */	bl OSReport
/* 8033C148 00339088  3B 7B 00 04 */	addi r27, r27, 4
/* 8033C14C 0033908C  3B 39 00 01 */	addi r25, r25, 1
/* 8033C150 00339090  28 19 00 10 */	cmplwi r25, 0x10
/* 8033C154 00339094  41 80 FF D0 */	blt lbl_8033C124
/* 8033C158 00339098  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 8033C15C 0033909C  38 7F 00 74 */	addi r3, r31, 0x74
/* 8033C160 003390A0  80 BC 00 80 */	lwz r5, 0x80(r28)
/* 8033C164 003390A4  4C C6 31 82 */	crclr 6
/* 8033C168 003390A8  4B CC A9 55 */	bl OSReport
/* 8033C16C 003390AC  80 9C 01 98 */	lwz r4, 0x198(r28)
/* 8033C170 003390B0  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 8033C174 003390B4  80 BC 01 9C */	lwz r5, 0x19c(r28)
/* 8033C178 003390B8  4C C6 31 82 */	crclr 6
/* 8033C17C 003390BC  4B CC A9 41 */	bl OSReport
/* 8033C180 003390C0  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8033C184 003390C4  4C C6 31 82 */	crclr 6
/* 8033C188 003390C8  4B CC A9 35 */	bl OSReport
/* 8033C18C 003390CC  3B 20 00 00 */	li r25, 0
/* 8033C190 003390D0  57 20 10 3A */	slwi r0, r25, 2
/* 8033C194 003390D4  7F 7C 02 14 */	add r27, r28, r0
/* 8033C198 003390D8  48 00 00 04 */	b lbl_8033C19C
lbl_8033C19C:
/* 8033C19C 003390DC  48 00 00 04 */	b lbl_8033C1A0
lbl_8033C1A0:
/* 8033C1A0 003390E0  48 00 00 04 */	b lbl_8033C1A4
lbl_8033C1A4:
/* 8033C1A4 003390E4  80 BB 01 A4 */	lwz r5, 0x1a4(r27)
/* 8033C1A8 003390E8  7F 24 CB 78 */	mr r4, r25
/* 8033C1AC 003390EC  80 FB 01 B4 */	lwz r7, 0x1b4(r27)
/* 8033C1B0 003390F0  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 8033C1B4 003390F4  38 D9 00 04 */	addi r6, r25, 4
/* 8033C1B8 003390F8  4C C6 31 82 */	crclr 6
/* 8033C1BC 003390FC  4B CC A9 01 */	bl OSReport
/* 8033C1C0 00339100  3B 7B 00 04 */	addi r27, r27, 4
/* 8033C1C4 00339104  3B 39 00 01 */	addi r25, r25, 1
/* 8033C1C8 00339108  28 19 00 04 */	cmplwi r25, 4
/* 8033C1CC 0033910C  41 80 FF D8 */	blt lbl_8033C1A4
/* 8033C1D0 00339110  A0 1C 01 A2 */	lhz r0, 0x1a2(r28)
/* 8033C1D4 00339114  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8033C1D8 00339118  28 00 00 00 */	cmplwi r0, 0
/* 8033C1DC 0033911C  41 82 01 3C */	beq lbl_8033C318
/* 8033C1E0 00339120  48 00 15 15 */	bl __RAS_OSDisableInterrupts_begin 
/* 8033C1E4 00339124  3C C0 80 00 */	lis r6, 0x800000D4@ha
/* 8033C1E8 00339128  80 06 00 D4 */	lwz r0, 0x800000D4@l(r6)
/* 8033C1EC 0033912C  38 A0 00 00 */	li r5, 0
/* 8033C1F0 00339130  38 81 00 10 */	addi r4, r1, 0x10
/* 8033C1F4 00339134  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 8033C1F8 00339138  7C 1E 03 78 */	mr r30, r0
/* 8033C1FC 0033913C  7C 7D 1B 78 */	mr r29, r3
/* 8033C200 00339140  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8033C204 00339144  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 8033C208 00339148  7C 04 00 40 */	cmplw r4, r0
/* 8033C20C 0033914C  40 82 00 08 */	bne lbl_8033C214
/* 8033C210 00339150  90 A6 00 D8 */	stw r5, 0xd8(r6)
lbl_8033C214:
/* 8033C214 00339154  38 61 00 10 */	addi r3, r1, 0x10
/* 8033C218 00339158  4B FF FC 21 */	bl OSSetCurrentContext
/* 8033C21C 0033915C  38 7F 01 0C */	addi r3, r31, 0x10c
/* 8033C220 00339160  4C C6 31 82 */	crclr 6
/* 8033C224 00339164  4B CC A8 99 */	bl OSReport
/* 8033C228 00339168  3B 20 00 00 */	li r25, 0
/* 8033C22C 0033916C  57 20 18 38 */	slwi r0, r25, 3
/* 8033C230 00339170  7F 5C 02 14 */	add r26, r28, r0
/* 8033C234 00339174  48 00 00 04 */	b lbl_8033C238
lbl_8033C238:
/* 8033C238 00339178  48 00 00 04 */	b lbl_8033C23C
lbl_8033C23C:
/* 8033C23C 0033917C  48 00 00 04 */	b lbl_8033C240
lbl_8033C240:
/* 8033C240 00339180  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 8033C244 00339184  48 02 5E 69 */	bl func_803620AC
/* 8033C248 00339188  7C 7B 1B 78 */	mr r27, r3
/* 8033C24C 0033918C  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 8033C250 00339190  48 02 5E 5D */	bl func_803620AC
/* 8033C254 00339194  7C 65 1B 78 */	mr r5, r3
/* 8033C258 00339198  4C C6 31 82 */	crclr 6
/* 8033C25C 0033919C  7F 24 CB 78 */	mr r4, r25
/* 8033C260 003391A0  7F 67 DB 78 */	mr r7, r27
/* 8033C264 003391A4  38 7F 01 20 */	addi r3, r31, 0x120
/* 8033C268 003391A8  38 D9 00 01 */	addi r6, r25, 1
/* 8033C26C 003391AC  4B CC A8 51 */	bl OSReport
/* 8033C270 003391B0  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8033C274 003391B4  3B 39 00 02 */	addi r25, r25, 2
/* 8033C278 003391B8  28 19 00 20 */	cmplwi r25, 0x20
/* 8033C27C 003391BC  41 80 FF C4 */	blt lbl_8033C240
/* 8033C280 003391C0  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8033C284 003391C4  4C C6 31 82 */	crclr 6
/* 8033C288 003391C8  4B CC A8 35 */	bl OSReport
/* 8033C28C 003391CC  3B 20 00 00 */	li r25, 0
/* 8033C290 003391D0  57 20 18 38 */	slwi r0, r25, 3
/* 8033C294 003391D4  7F 5C 02 14 */	add r26, r28, r0
/* 8033C298 003391D8  48 00 00 04 */	b lbl_8033C29C
lbl_8033C29C:
/* 8033C29C 003391DC  48 00 00 04 */	b lbl_8033C2A0
lbl_8033C2A0:
/* 8033C2A0 003391E0  48 00 00 04 */	b lbl_8033C2A4
lbl_8033C2A4:
/* 8033C2A4 003391E4  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 8033C2A8 003391E8  48 02 5E 05 */	bl func_803620AC
/* 8033C2AC 003391EC  7C 7B 1B 78 */	mr r27, r3
/* 8033C2B0 003391F0  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 8033C2B4 003391F4  48 02 5D F9 */	bl func_803620AC
/* 8033C2B8 003391F8  7C 65 1B 78 */	mr r5, r3
/* 8033C2BC 003391FC  4C C6 31 82 */	crclr 6
/* 8033C2C0 00339200  7F 24 CB 78 */	mr r4, r25
/* 8033C2C4 00339204  7F 67 DB 78 */	mr r7, r27
/* 8033C2C8 00339208  38 7F 01 50 */	addi r3, r31, 0x150
/* 8033C2CC 0033920C  38 D9 00 01 */	addi r6, r25, 1
/* 8033C2D0 00339210  4B CC A7 ED */	bl OSReport
/* 8033C2D4 00339214  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8033C2D8 00339218  3B 39 00 02 */	addi r25, r25, 2
/* 8033C2DC 0033921C  28 19 00 20 */	cmplwi r25, 0x20
/* 8033C2E0 00339220  41 80 FF C4 */	blt lbl_8033C2A4
/* 8033C2E4 00339224  38 A0 00 00 */	li r5, 0
/* 8033C2E8 00339228  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 8033C2EC 0033922C  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 8033C2F0 00339230  38 81 00 10 */	addi r4, r1, 0x10
/* 8033C2F4 00339234  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8033C2F8 00339238  80 03 00 D8 */	lwz r0, 0x800000D8@l(r3)
/* 8033C2FC 0033923C  7C 04 00 40 */	cmplw r4, r0
/* 8033C300 00339240  40 82 00 08 */	bne lbl_8033C308
/* 8033C304 00339244  90 A3 00 D8 */	stw r5, 0xd8(r3)
lbl_8033C308:
/* 8033C308 00339248  7F C3 F3 78 */	mr r3, r30
/* 8033C30C 0033924C  4B FF FB 2D */	bl OSSetCurrentContext
/* 8033C310 00339250  7F A3 EB 78 */	mr r3, r29
/* 8033C314 00339254  48 00 14 09 */	bl OSRestoreInterrupts
lbl_8033C318:
/* 8033C318 00339258  38 7F 01 70 */	addi r3, r31, 0x170
/* 8033C31C 0033925C  4C C6 31 82 */	crclr 6
/* 8033C320 00339260  4B CC A7 9D */	bl OSReport
/* 8033C324 00339264  83 3C 00 04 */	lwz r25, 4(r28)
/* 8033C328 00339268  3B 40 00 00 */	li r26, 0
/* 8033C32C 0033926C  48 00 00 04 */	b lbl_8033C330
lbl_8033C330:
/* 8033C330 00339270  48 00 00 04 */	b lbl_8033C334
lbl_8033C334:
/* 8033C334 00339274  48 00 00 20 */	b lbl_8033C354
lbl_8033C338:
/* 8033C338 00339278  80 B9 00 00 */	lwz r5, 0(r25)
/* 8033C33C 0033927C  7F 24 CB 78 */	mr r4, r25
/* 8033C340 00339280  80 D9 00 04 */	lwz r6, 4(r25)
/* 8033C344 00339284  38 7F 01 98 */	addi r3, r31, 0x198
/* 8033C348 00339288  4C C6 31 82 */	crclr 6
/* 8033C34C 0033928C  4B CC A7 71 */	bl OSReport
/* 8033C350 00339290  83 39 00 00 */	lwz r25, 0(r25)
lbl_8033C354:
/* 8033C354 00339294  28 19 00 00 */	cmplwi r25, 0
/* 8033C358 00339298  41 82 00 1C */	beq lbl_8033C374
/* 8033C35C 0033929C  3C 19 00 01 */	addis r0, r25, 1
/* 8033C360 003392A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8033C364 003392A4  41 82 00 10 */	beq lbl_8033C374
/* 8033C368 003392A8  28 1A 00 10 */	cmplwi r26, 0x10
/* 8033C36C 003392AC  3B 5A 00 01 */	addi r26, r26, 1
/* 8033C370 003392B0  41 80 FF C8 */	blt lbl_8033C338
lbl_8033C374:
/* 8033C374 003392B4  BB 21 02 DC */	lmw r25, 0x2dc(r1)
/* 8033C378 003392B8  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 8033C37C 003392BC  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 8033C380 003392C0  7C 08 03 A6 */	mtlr r0
/* 8033C384 003392C4  4E 80 00 20 */	blr 
.global OSSwitchFPUContext
OSSwitchFPUContext:
/* 8033C388 003392C8  7C A0 00 A6 */	mfmsr r5
/* 8033C38C 003392CC  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8033C390 003392D0  7C A0 01 24 */	mtmsr r5
/* 8033C394 003392D4  4C 00 01 2C */	isync 
/* 8033C398 003392D8  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 8033C39C 003392DC  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8033C3A0 003392E0  7C BB 03 A6 */	mtspr 0x1b, r5
/* 8033C3A4 003392E4  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 8033C3A8 003392E8  80 A3 00 D8 */	lwz r5, 0x800000D8@l(r3)
/* 8033C3AC 003392EC  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 8033C3B0 003392F0  7C 05 20 00 */	cmpw r5, r4
/* 8033C3B4 003392F4  41 82 00 14 */	beq lbl_8033C3C8
/* 8033C3B8 003392F8  2C 05 00 00 */	cmpwi r5, 0
/* 8033C3BC 003392FC  41 82 00 08 */	beq lbl_8033C3C4
/* 8033C3C0 00339300  4B FF F9 49 */	bl __OSSaveFPUContext
lbl_8033C3C4:
/* 8033C3C4 00339304  4B FF F8 21 */	bl __OSLoadFPUContext
lbl_8033C3C8:
/* 8033C3C8 00339308  80 64 00 80 */	lwz r3, 0x80(r4)
/* 8033C3CC 0033930C  7C 6F F1 20 */	mtcrf 0xff, r3
/* 8033C3D0 00339310  80 64 00 84 */	lwz r3, 0x84(r4)
/* 8033C3D4 00339314  7C 68 03 A6 */	mtlr r3
/* 8033C3D8 00339318  80 64 01 98 */	lwz r3, 0x198(r4)
/* 8033C3DC 0033931C  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 8033C3E0 00339320  80 64 00 88 */	lwz r3, 0x88(r4)
/* 8033C3E4 00339324  7C 69 03 A6 */	mtctr r3
/* 8033C3E8 00339328  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 8033C3EC 0033932C  7C 61 03 A6 */	mtxer r3
/* 8033C3F0 00339330  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8033C3F4 00339334  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 8033C3F8 00339338  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 8033C3FC 0033933C  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8033C400 00339340  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8033C404 00339344  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8033C408 00339348  4C 00 00 64 */	rfi 

.global __OSContextInit
__OSContextInit:
/* 8033C40C 0033934C  7C 08 02 A6 */	mflr r0
/* 8033C410 00339350  90 01 00 04 */	stw r0, 4(r1)
/* 8033C414 00339354  94 21 FF F8 */	stwu r1, -8(r1)
.global OSSwitchFPUContext
/* 8033C418 00339358  3C 60 80 34 */	lis r3, OSSwitchFPUContext@ha
.global OSSwitchFPUContext
/* 8033C41C 0033935C  38 83 C3 88 */	addi r4, r3, OSSwitchFPUContext@l
/* 8033C420 00339360  38 60 00 07 */	li r3, 7
/* 8033C424 00339364  4B FF E2 C5 */	bl __OSDBJUMPEND 
/* 8033C428 00339368  38 00 00 00 */	li r0, 0
/* 8033C42C 0033936C  4C C6 31 82 */	crclr 6
/* 8033C430 00339370  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 8033C434 00339374  3C 60 80 3D */	lis r3, lbl_803CF8F4@ha
/* 8033C438 00339378  90 04 00 D8 */	stw r0, 0x800000D8@l(r4)
/* 8033C43C 0033937C  38 63 F8 F4 */	addi r3, r3, lbl_803CF8F4@l
/* 8033C440 00339380  48 00 9F F5 */	bl DBPrintf
/* 8033C444 00339384  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033C448 00339388  38 21 00 08 */	addi r1, r1, 8
/* 8033C44C 0033938C  7C 08 03 A6 */	mtlr r0
/* 8033C450 00339390  4E 80 00 20 */	blr 

.global OSFillFPUContext
OSFillFPUContext:
/* 8033C454 00339394  7C A0 00 A6 */	mfmsr r5
/* 8033C458 00339398  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8033C45C 0033939C  7C A0 01 24 */	mtmsr r5
/* 8033C460 003393A0  4C 00 01 2C */	isync 
/* 8033C464 003393A4  D8 03 00 90 */	stfd f0, 0x90(r3)
/* 8033C468 003393A8  D8 23 00 98 */	stfd f1, 0x98(r3)
/* 8033C46C 003393AC  D8 43 00 A0 */	stfd f2, 0xa0(r3)
/* 8033C470 003393B0  D8 63 00 A8 */	stfd f3, 0xa8(r3)
/* 8033C474 003393B4  D8 83 00 B0 */	stfd f4, 0xb0(r3)
/* 8033C478 003393B8  D8 A3 00 B8 */	stfd f5, 0xb8(r3)
/* 8033C47C 003393BC  D8 C3 00 C0 */	stfd f6, 0xc0(r3)
/* 8033C480 003393C0  D8 E3 00 C8 */	stfd f7, 0xc8(r3)
/* 8033C484 003393C4  D9 03 00 D0 */	stfd f8, 0xd0(r3)
/* 8033C488 003393C8  D9 23 00 D8 */	stfd f9, 0xd8(r3)
/* 8033C48C 003393CC  D9 43 00 E0 */	stfd f10, 0xe0(r3)
/* 8033C490 003393D0  D9 63 00 E8 */	stfd f11, 0xe8(r3)
/* 8033C494 003393D4  D9 83 00 F0 */	stfd f12, 0xf0(r3)
/* 8033C498 003393D8  D9 A3 00 F8 */	stfd f13, 0xf8(r3)
/* 8033C49C 003393DC  D9 C3 01 00 */	stfd f14, 0x100(r3)
/* 8033C4A0 003393E0  D9 E3 01 08 */	stfd f15, 0x108(r3)
/* 8033C4A4 003393E4  DA 03 01 10 */	stfd f16, 0x110(r3)
/* 8033C4A8 003393E8  DA 23 01 18 */	stfd f17, 0x118(r3)
/* 8033C4AC 003393EC  DA 43 01 20 */	stfd f18, 0x120(r3)
/* 8033C4B0 003393F0  DA 63 01 28 */	stfd f19, 0x128(r3)
/* 8033C4B4 003393F4  DA 83 01 30 */	stfd f20, 0x130(r3)
/* 8033C4B8 003393F8  DA A3 01 38 */	stfd f21, 0x138(r3)
/* 8033C4BC 003393FC  DA C3 01 40 */	stfd f22, 0x140(r3)
/* 8033C4C0 00339400  DA E3 01 48 */	stfd f23, 0x148(r3)
/* 8033C4C4 00339404  DB 03 01 50 */	stfd f24, 0x150(r3)
/* 8033C4C8 00339408  DB 23 01 58 */	stfd f25, 0x158(r3)
/* 8033C4CC 0033940C  DB 43 01 60 */	stfd f26, 0x160(r3)
/* 8033C4D0 00339410  DB 63 01 68 */	stfd f27, 0x168(r3)
/* 8033C4D4 00339414  DB 83 01 70 */	stfd f28, 0x170(r3)
/* 8033C4D8 00339418  DB A3 01 78 */	stfd f29, 0x178(r3)
/* 8033C4DC 0033941C  DB C3 01 80 */	stfd f30, 0x180(r3)
/* 8033C4E0 00339420  DB E3 01 88 */	stfd f31, 0x188(r3)
/* 8033C4E4 00339424  FC 00 04 8E */	mffs f0
/* 8033C4E8 00339428  D8 03 01 90 */	stfd f0, 0x190(r3)
/* 8033C4EC 0033942C  C8 03 00 90 */	lfd f0, 0x90(r3)
/* 8033C4F0 00339430  7C B8 E2 A6 */	mfspr r5, 0x398
/* 8033C4F4 00339434  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 8033C4F8 00339438  41 82 00 84 */	beq lbl_8033C57C
/* 8033C4FC 0033943C  F0 03 01 C8 */	psq_st f0, 456(r3), 0, qr0
/* 8033C500 00339440  F0 23 01 D0 */	psq_st f1, 464(r3), 0, qr0
/* 8033C504 00339444  F0 43 01 D8 */	psq_st f2, 472(r3), 0, qr0
/* 8033C508 00339448  F0 63 01 E0 */	psq_st f3, 480(r3), 0, qr0
/* 8033C50C 0033944C  F0 83 01 E8 */	psq_st f4, 488(r3), 0, qr0
/* 8033C510 00339450  F0 A3 01 F0 */	psq_st f5, 496(r3), 0, qr0
/* 8033C514 00339454  F0 C3 01 F8 */	psq_st f6, 504(r3), 0, qr0
/* 8033C518 00339458  F0 E3 02 00 */	psq_st f7, 512(r3), 0, qr0
/* 8033C51C 0033945C  F1 03 02 08 */	psq_st f8, 520(r3), 0, qr0
/* 8033C520 00339460  F1 23 02 10 */	psq_st f9, 528(r3), 0, qr0
/* 8033C524 00339464  F1 43 02 18 */	psq_st f10, 536(r3), 0, qr0
/* 8033C528 00339468  F1 63 02 20 */	psq_st f11, 544(r3), 0, qr0
/* 8033C52C 0033946C  F1 83 02 28 */	psq_st f12, 552(r3), 0, qr0
/* 8033C530 00339470  F1 A3 02 30 */	psq_st f13, 560(r3), 0, qr0
/* 8033C534 00339474  F1 C3 02 38 */	psq_st f14, 568(r3), 0, qr0
/* 8033C538 00339478  F1 E3 02 40 */	psq_st f15, 576(r3), 0, qr0
/* 8033C53C 0033947C  F2 03 02 48 */	psq_st f16, 584(r3), 0, qr0
/* 8033C540 00339480  F2 23 02 50 */	psq_st f17, 592(r3), 0, qr0
/* 8033C544 00339484  F2 43 02 58 */	psq_st f18, 600(r3), 0, qr0
/* 8033C548 00339488  F2 63 02 60 */	psq_st f19, 608(r3), 0, qr0
/* 8033C54C 0033948C  F2 83 02 68 */	psq_st f20, 616(r3), 0, qr0
/* 8033C550 00339490  F2 A3 02 70 */	psq_st f21, 624(r3), 0, qr0
/* 8033C554 00339494  F2 C3 02 78 */	psq_st f22, 632(r3), 0, qr0
/* 8033C558 00339498  F2 E3 02 80 */	psq_st f23, 640(r3), 0, qr0
/* 8033C55C 0033949C  F3 03 02 88 */	psq_st f24, 648(r3), 0, qr0
/* 8033C560 003394A0  F3 23 02 90 */	psq_st f25, 656(r3), 0, qr0
/* 8033C564 003394A4  F3 43 02 98 */	psq_st f26, 664(r3), 0, qr0
/* 8033C568 003394A8  F3 63 02 A0 */	psq_st f27, 672(r3), 0, qr0
/* 8033C56C 003394AC  F3 83 02 A8 */	psq_st f28, 680(r3), 0, qr0
/* 8033C570 003394B0  F3 A3 02 B0 */	psq_st f29, 688(r3), 0, qr0
/* 8033C574 003394B4  F3 C3 02 B8 */	psq_st f30, 696(r3), 0, qr0
/* 8033C578 003394B8  F3 E3 02 C0 */	psq_st f31, 704(r3), 0, qr0
lbl_8033C57C:
/* 8033C57C 003394BC  4E 80 00 20 */	blr 
