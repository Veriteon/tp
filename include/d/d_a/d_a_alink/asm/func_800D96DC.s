/* 800D96DC 000D661C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800D96E0 000D6620  7C 08 02 A6 */ mflr r0
/* 800D96E4 000D6624  90 01 00 54 */ stw r0, 0x54(r1)
/* 800D96E8 000D6628  39 61 00 50 */ addi r11, r1, 0x50
/* 800D96EC 000D662C  48 28 8A D1 */ bl _savegpr_21
/* 800D96F0 000D6630  7C 75 1B 78 */ mr r21, r3
/* 800D96F4 000D6634  7C 96 23 78 */ mr r22, r4
/* 800D96F8 000D6638  7C B7 2B 78 */ mr r23, r5
/* 800D96FC 000D663C  7C D8 33 78 */ mr r24, r6
/* 800D9700 000D6640  7C F9 3B 78 */ mr r25, r7
/* 800D9704 000D6644  7D 1D 43 78 */ mr r29, r8
/* 800D9708 000D6648  7D 3A 4B 78 */ mr r26, r9
/* 800D970C 000D664C  3C 60 80 39 */ lis r3, lbl_8038D658@ha
/* 800D9710 000D6650  3B E3 D6 58 */ addi r31, r3, lbl_8038D658@l
/* 800D9714 000D6654  38 00 00 00 */ li r0, 0
/* 800D9718 000D6658  88 75 2F AA */ lbz r3, 0x2faa(r21)
/* 800D971C 000D665C  28 03 00 01 */ cmplwi r3, 1
/* 800D9720 000D6660  41 82 00 0C */ beq lbl_800D972C
/* 800D9724 000D6664  28 03 00 02 */ cmplwi r3, 2
/* 800D9728 000D6668  40 82 00 08 */ bne lbl_800D9730
lbl_800D972C:
/* 800D972C 000D666C  38 00 00 01 */ li r0, 1
lbl_800D9730:
/* 800D9730 000D6670  54 1E 06 3E */ clrlwi r30, r0, 0x18
/* 800D9734 000D6674  7E A3 AB 78 */ mr r3, r21
/* 800D9738 000D6678  38 80 01 59 */ li r4, 0x159
/* 800D973C 000D667C  4B FE 96 69 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 800D9740 000D6680  2C 03 00 00 */ cmpwi r3, 0
/* 800D9744 000D6684  40 82 00 0C */ bne lbl_800D9750
/* 800D9748 000D6688  38 60 00 00 */ li r3, 0
/* 800D974C 000D668C  48 00 07 24 */ b lbl_800D9E70
lbl_800D9750:
/* 800D9750 000D6690  80 75 28 40 */ lwz r3, 0x2840(r21)
/* 800D9754 000D6694  28 03 00 00 */ cmplwi r3, 0
/* 800D9758 000D6698  41 82 00 0C */ beq lbl_800D9764
/* 800D975C 000D669C  38 63 07 40 */ addi r3, r3, 0x740
/* 800D9760 000D66A0  48 08 55 9D */ bl daPy_actorKeep_c_NS_clearData
lbl_800D9764:
/* 800D9764 000D66A4  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800D9768 000D66A8  D0 15 34 80 */ stfs f0, 0x3480(r21)
/* 800D976C 000D66AC  38 00 00 00 */ li r0, 0
/* 800D9770 000D66B0  B0 15 30 14 */ sth r0, 0x3014(r21)
/* 800D9774 000D66B4  2C 16 FF FD */ cmpwi r22, -3
/* 800D9778 000D66B8  40 82 00 70 */ bne lbl_800D97E8
/* 800D977C 000D66BC  A8 15 2F FE */ lha r0, 0x2ffe(r21)
/* 800D9780 000D66C0  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9784 000D66C4  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D9788 000D66C8  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D978C 000D66CC  7C 03 00 50 */ subf r0, r3, r0
/* 800D9790 000D66D0  7C 03 07 34 */ extsh r3, r0
/* 800D9794 000D66D4  4B FD 9D 01 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800D9798 000D66D8  7C 7D 1B 78 */ mr r29, r3
/* 800D979C 000D66DC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D97A0 000D66E0  D0 21 00 08 */ stfs f1, 8(r1)
/* 800D97A4 000D66E4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800D97A8 000D66E8  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800D97AC 000D66EC  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800D97B0 000D66F0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D97B4 000D66F4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D97B8 000D66F8  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800D97BC 000D66FC  38 80 00 06 */ li r4, 6
/* 800D97C0 000D6700  38 A0 00 1F */ li r5, 0x1f
/* 800D97C4 000D6704  38 C1 00 08 */ addi r6, r1, 8
/* 800D97C8 000D6708  4B F9 62 5D */ bl dVibration_c_NS_StartShock
/* 800D97CC 000D670C  7E A3 AB 78 */ mr r3, r21
/* 800D97D0 000D6710  80 95 31 8C */ lwz r4, 0x318c(r21)
/* 800D97D4 000D6714  4B FF DC A5 */ bl daAlink_c_NS_setDamagePointNormal
/* 800D97D8 000D6718  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D97DC 000D671C  60 00 40 00 */ ori r0, r0, 0x4000
/* 800D97E0 000D6720  90 15 05 74 */ stw r0, 0x574(r21)
/* 800D97E4 000D6724  48 00 02 18 */ b lbl_800D99FC
lbl_800D97E8:
/* 800D97E8 000D6728  2C 16 FF FC */ cmpwi r22, -4
/* 800D97EC 000D672C  40 82 00 1C */ bne lbl_800D9808
/* 800D97F0 000D6730  3B A0 00 01 */ li r29, 1
/* 800D97F4 000D6734  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D97F8 000D6738  3C 63 00 01 */ addis r3, r3, 1
/* 800D97FC 000D673C  38 03 80 00 */ addi r0, r3, -32768
/* 800D9800 000D6740  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9804 000D6744  48 00 01 F8 */ b lbl_800D99FC
lbl_800D9808:
/* 800D9808 000D6748  2C 16 FF FE */ cmpwi r22, -2
/* 800D980C 000D674C  40 82 00 64 */ bne lbl_800D9870
/* 800D9810 000D6750  80 15 06 0C */ lwz r0, 0x60c(r21)
/* 800D9814 000D6754  7C 1D 03 78 */ mr r29, r0
/* 800D9818 000D6758  2C 00 00 00 */ cmpwi r0, 0
/* 800D981C 000D675C  40 82 00 10 */ bne lbl_800D982C
/* 800D9820 000D6760  A8 15 04 E6 */ lha r0, 0x4e6(r21)
/* 800D9824 000D6764  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9828 000D6768  48 00 01 D4 */ b lbl_800D99FC
lbl_800D982C:
/* 800D982C 000D676C  2C 00 00 02 */ cmpwi r0, 2
/* 800D9830 000D6770  40 82 00 14 */ bne lbl_800D9844
/* 800D9834 000D6774  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D9838 000D6778  38 03 40 00 */ addi r0, r3, 0x4000
/* 800D983C 000D677C  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9840 000D6780  48 00 01 BC */ b lbl_800D99FC
lbl_800D9844:
/* 800D9844 000D6784  2C 00 00 03 */ cmpwi r0, 3
/* 800D9848 000D6788  40 82 00 14 */ bne lbl_800D985C
/* 800D984C 000D678C  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D9850 000D6790  38 03 C0 00 */ addi r0, r3, -16384
/* 800D9854 000D6794  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9858 000D6798  48 00 01 A4 */ b lbl_800D99FC
lbl_800D985C:
/* 800D985C 000D679C  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D9860 000D67A0  3C 63 00 01 */ addis r3, r3, 1
/* 800D9864 000D67A4  38 03 80 00 */ addi r0, r3, -32768
/* 800D9868 000D67A8  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D986C 000D67AC  48 00 01 90 */ b lbl_800D99FC
lbl_800D9870:
/* 800D9870 000D67B0  2C 16 FF FB */ cmpwi r22, -5
/* 800D9874 000D67B4  40 82 00 3C */ bne lbl_800D98B0
/* 800D9878 000D67B8  2C 1A 00 01 */ cmpwi r26, 1
/* 800D987C 000D67BC  40 82 00 10 */ bne lbl_800D988C
/* 800D9880 000D67C0  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9884 000D67C4  64 00 40 00 */ oris r0, r0, 0x4000
/* 800D9888 000D67C8  90 15 05 74 */ stw r0, 0x574(r21)
lbl_800D988C:
/* 800D988C 000D67CC  A8 15 31 1E */ lha r0, 0x311e(r21)
/* 800D9890 000D67D0  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9894 000D67D4  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D9898 000D67D8  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D989C 000D67DC  7C 03 00 50 */ subf r0, r3, r0
/* 800D98A0 000D67E0  7C 03 07 34 */ extsh r3, r0
/* 800D98A4 000D67E4  4B FD 9B F1 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800D98A8 000D67E8  7C 7D 1B 78 */ mr r29, r3
/* 800D98AC 000D67EC  48 00 01 50 */ b lbl_800D99FC
lbl_800D98B0:
/* 800D98B0 000D67F0  2C 16 FF FF */ cmpwi r22, -1
/* 800D98B4 000D67F4  40 82 00 6C */ bne lbl_800D9920
/* 800D98B8 000D67F8  28 1D 00 00 */ cmplwi r29, 0
/* 800D98BC 000D67FC  41 82 00 48 */ beq lbl_800D9904
/* 800D98C0 000D6800  7E A3 AB 78 */ mr r3, r21
/* 800D98C4 000D6804  7F A4 EB 78 */ mr r4, r29
/* 800D98C8 000D6808  4B FF DC 2D */ bl daAlink_c_NS_getDamageVec
/* 800D98CC 000D680C  48 18 D8 5D */ bl cXyz_NS_atan2sX_Z
/* 800D98D0 000D6810  B0 75 04 DE */ sth r3, 0x4de(r21)
/* 800D98D4 000D6814  7F A3 EB 78 */ mr r3, r29
/* 800D98D8 000D6818  4B FA AC 71 */ bl dCcD_GObjInf_NS_GetTgHitGObj
/* 800D98DC 000D681C  28 03 00 00 */ cmplwi r3, 0
/* 800D98E0 000D6820  41 82 00 24 */ beq lbl_800D9904
/* 800D98E4 000D6824  7F A3 EB 78 */ mr r3, r29
/* 800D98E8 000D6828  4B FA AC 61 */ bl dCcD_GObjInf_NS_GetTgHitGObj
/* 800D98EC 000D682C  88 03 00 75 */ lbz r0, 0x75(r3)
/* 800D98F0 000D6830  28 00 00 02 */ cmplwi r0, 2
/* 800D98F4 000D6834  40 82 00 10 */ bne lbl_800D9904
/* 800D98F8 000D6838  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D98FC 000D683C  64 00 40 00 */ oris r0, r0, 0x4000
/* 800D9900 000D6840  90 15 05 74 */ stw r0, 0x574(r21)
lbl_800D9904:
/* 800D9904 000D6844  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D9908 000D6848  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D990C 000D684C  7C 03 00 50 */ subf r0, r3, r0
/* 800D9910 000D6850  7C 03 07 34 */ extsh r3, r0
/* 800D9914 000D6854  4B FD 9B 81 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800D9918 000D6858  7C 7D 1B 78 */ mr r29, r3
/* 800D991C 000D685C  48 00 00 E0 */ b lbl_800D99FC
lbl_800D9920:
/* 800D9920 000D6860  2C 16 FF FA */ cmpwi r22, -6
/* 800D9924 000D6864  40 82 00 44 */ bne lbl_800D9968
/* 800D9928 000D6868  A8 75 31 02 */ lha r3, 0x3102(r21)
/* 800D992C 000D686C  3C 63 00 01 */ addis r3, r3, 1
/* 800D9930 000D6870  38 03 80 00 */ addi r0, r3, -32768
/* 800D9934 000D6874  B0 15 04 DE */ sth r0, 0x4de(r21)
/* 800D9938 000D6878  A8 75 04 E6 */ lha r3, 0x4e6(r21)
/* 800D993C 000D687C  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D9940 000D6880  7C 03 00 50 */ subf r0, r3, r0
/* 800D9944 000D6884  7C 03 07 34 */ extsh r3, r0
/* 800D9948 000D6888  4B FD 9B 4D */ bl daAlink_c_NS_getDirectionFromAngle
/* 800D994C 000D688C  7C 7D 1B 78 */ mr r29, r3
/* 800D9950 000D6890  80 15 31 A0 */ lwz r0, 0x31a0(r21)
/* 800D9954 000D6894  54 00 07 76 */ rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800D9958 000D6898  90 15 31 A0 */ stw r0, 0x31a0(r21)
/* 800D995C 000D689C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800D9960 000D68A0  D0 15 34 80 */ stfs f0, 0x3480(r21)
/* 800D9964 000D68A4  48 00 00 98 */ b lbl_800D99FC
lbl_800D9968:
/* 800D9968 000D68A8  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D996C 000D68AC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9970 000D68B0  41 82 00 3C */ beq lbl_800D99AC
/* 800D9974 000D68B4  2C 16 00 2D */ cmpwi r22, 0x2d
/* 800D9978 000D68B8  40 82 00 0C */ bne lbl_800D9984
/* 800D997C 000D68BC  3B A0 00 01 */ li r29, 1
/* 800D9980 000D68C0  48 00 00 60 */ b lbl_800D99E0
lbl_800D9984:
/* 800D9984 000D68C4  2C 16 00 2E */ cmpwi r22, 0x2e
/* 800D9988 000D68C8  40 82 00 0C */ bne lbl_800D9994
/* 800D998C 000D68CC  3B A0 00 02 */ li r29, 2
/* 800D9990 000D68D0  48 00 00 50 */ b lbl_800D99E0
lbl_800D9994:
/* 800D9994 000D68D4  2C 16 00 2F */ cmpwi r22, 0x2f
/* 800D9998 000D68D8  40 82 00 0C */ bne lbl_800D99A4
/* 800D999C 000D68DC  3B A0 00 03 */ li r29, 3
/* 800D99A0 000D68E0  48 00 00 40 */ b lbl_800D99E0
lbl_800D99A4:
/* 800D99A4 000D68E4  3B A0 00 00 */ li r29, 0
/* 800D99A8 000D68E8  48 00 00 38 */ b lbl_800D99E0
lbl_800D99AC:
/* 800D99AC 000D68EC  2C 16 00 88 */ cmpwi r22, 0x88
/* 800D99B0 000D68F0  40 82 00 0C */ bne lbl_800D99BC
/* 800D99B4 000D68F4  3B A0 00 01 */ li r29, 1
/* 800D99B8 000D68F8  48 00 00 28 */ b lbl_800D99E0
lbl_800D99BC:
/* 800D99BC 000D68FC  2C 16 00 89 */ cmpwi r22, 0x89
/* 800D99C0 000D6900  40 82 00 0C */ bne lbl_800D99CC
/* 800D99C4 000D6904  3B A0 00 02 */ li r29, 2
/* 800D99C8 000D6908  48 00 00 18 */ b lbl_800D99E0
lbl_800D99CC:
/* 800D99CC 000D690C  2C 16 00 8A */ cmpwi r22, 0x8a
/* 800D99D0 000D6910  40 82 00 0C */ bne lbl_800D99DC
/* 800D99D4 000D6914  3B A0 00 03 */ li r29, 3
/* 800D99D8 000D6918  48 00 00 08 */ b lbl_800D99E0
lbl_800D99DC:
/* 800D99DC 000D691C  3B A0 00 00 */ li r29, 0
lbl_800D99E0:
/* 800D99E0 000D6920  7E A3 AB 78 */ mr r3, r21
/* 800D99E4 000D6924  7F 04 C3 78 */ mr r4, r24
/* 800D99E8 000D6928  38 A0 00 00 */ li r5, 0
/* 800D99EC 000D692C  7F 26 CB 78 */ mr r6, r25
/* 800D99F0 000D6930  4B FD 41 89 */ bl daAlink_c_NS_setOldRootQuaternion
/* 800D99F4 000D6934  38 00 00 01 */ li r0, 1
/* 800D99F8 000D6938  B0 15 30 14 */ sth r0, 0x3014(r21)
lbl_800D99FC:
/* 800D99FC 000D693C  2C 1D 00 00 */ cmpwi r29, 0
/* 800D9A00 000D6940  40 82 00 48 */ bne lbl_800D9A48
/* 800D9A04 000D6944  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9A08 000D6948  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9A0C 000D694C  41 82 00 18 */ beq lbl_800D9A24
/* 800D9A10 000D6950  38 00 00 29 */ li r0, 0x29
/* 800D9A14 000D6954  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9A18 000D6958  38 00 00 00 */ li r0, 0
/* 800D9A1C 000D695C  B0 15 30 0C */ sth r0, 0x300c(r21)
/* 800D9A20 000D6960  48 00 00 14 */ b lbl_800D9A34
lbl_800D9A24:
/* 800D9A24 000D6964  38 00 00 84 */ li r0, 0x84
/* 800D9A28 000D6968  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9A2C 000D696C  38 00 3F FF */ li r0, 0x3fff
/* 800D9A30 000D6970  B0 15 30 0C */ sth r0, 0x300c(r21)
lbl_800D9A34:
/* 800D9A34 000D6974  38 00 00 01 */ li r0, 1
/* 800D9A38 000D6978  B0 15 30 0E */ sth r0, 0x300e(r21)
/* 800D9A3C 000D697C  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D9A40 000D6980  B0 15 04 E6 */ sth r0, 0x4e6(r21)
/* 800D9A44 000D6984  48 00 00 EC */ b lbl_800D9B30
lbl_800D9A48:
/* 800D9A48 000D6988  2C 1D 00 03 */ cmpwi r29, 3
/* 800D9A4C 000D698C  40 82 00 4C */ bne lbl_800D9A98
/* 800D9A50 000D6990  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9A54 000D6994  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9A58 000D6998  41 82 00 18 */ beq lbl_800D9A70
/* 800D9A5C 000D699C  38 00 00 2A */ li r0, 0x2a
/* 800D9A60 000D69A0  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9A64 000D69A4  38 00 20 00 */ li r0, 0x2000
/* 800D9A68 000D69A8  B0 15 30 0C */ sth r0, 0x300c(r21)
/* 800D9A6C 000D69AC  48 00 00 14 */ b lbl_800D9A80
lbl_800D9A70:
/* 800D9A70 000D69B0  38 00 00 85 */ li r0, 0x85
/* 800D9A74 000D69B4  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9A78 000D69B8  38 00 3F FF */ li r0, 0x3fff
/* 800D9A7C 000D69BC  B0 15 30 0C */ sth r0, 0x300c(r21)
lbl_800D9A80:
/* 800D9A80 000D69C0  38 00 00 00 */ li r0, 0
/* 800D9A84 000D69C4  B0 15 30 0E */ sth r0, 0x300e(r21)
/* 800D9A88 000D69C8  A8 75 04 DE */ lha r3, 0x4de(r21)
/* 800D9A8C 000D69CC  38 03 40 00 */ addi r0, r3, 0x4000
/* 800D9A90 000D69D0  B0 15 04 E6 */ sth r0, 0x4e6(r21)
/* 800D9A94 000D69D4  48 00 00 9C */ b lbl_800D9B30
lbl_800D9A98:
/* 800D9A98 000D69D8  2C 1D 00 02 */ cmpwi r29, 2
/* 800D9A9C 000D69DC  40 82 00 4C */ bne lbl_800D9AE8
/* 800D9AA0 000D69E0  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9AA4 000D69E4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9AA8 000D69E8  41 82 00 18 */ beq lbl_800D9AC0
/* 800D9AAC 000D69EC  38 00 00 2B */ li r0, 0x2b
/* 800D9AB0 000D69F0  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9AB4 000D69F4  38 00 E0 00 */ li r0, -8192
/* 800D9AB8 000D69F8  B0 15 30 0C */ sth r0, 0x300c(r21)
/* 800D9ABC 000D69FC  48 00 00 14 */ b lbl_800D9AD0
lbl_800D9AC0:
/* 800D9AC0 000D6A00  38 00 00 86 */ li r0, 0x86
/* 800D9AC4 000D6A04  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9AC8 000D6A08  38 00 C0 01 */ li r0, -16383
/* 800D9ACC 000D6A0C  B0 15 30 0C */ sth r0, 0x300c(r21)
lbl_800D9AD0:
/* 800D9AD0 000D6A10  38 00 00 00 */ li r0, 0
/* 800D9AD4 000D6A14  B0 15 30 0E */ sth r0, 0x300e(r21)
/* 800D9AD8 000D6A18  A8 75 04 DE */ lha r3, 0x4de(r21)
/* 800D9ADC 000D6A1C  38 03 C0 00 */ addi r0, r3, -16384
/* 800D9AE0 000D6A20  B0 15 04 E6 */ sth r0, 0x4e6(r21)
/* 800D9AE4 000D6A24  48 00 00 4C */ b lbl_800D9B30
lbl_800D9AE8:
/* 800D9AE8 000D6A28  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9AEC 000D6A2C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9AF0 000D6A30  41 82 00 18 */ beq lbl_800D9B08
/* 800D9AF4 000D6A34  38 00 00 28 */ li r0, 0x28
/* 800D9AF8 000D6A38  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9AFC 000D6A3C  38 00 C0 01 */ li r0, -16383
/* 800D9B00 000D6A40  B0 15 30 0C */ sth r0, 0x300c(r21)
/* 800D9B04 000D6A44  48 00 00 14 */ b lbl_800D9B18
lbl_800D9B08:
/* 800D9B08 000D6A48  38 00 00 83 */ li r0, 0x83
/* 800D9B0C 000D6A4C  90 15 31 98 */ stw r0, 0x3198(r21)
/* 800D9B10 000D6A50  38 00 C0 01 */ li r0, -16383
/* 800D9B14 000D6A54  B0 15 30 0C */ sth r0, 0x300c(r21)
lbl_800D9B18:
/* 800D9B18 000D6A58  38 00 00 01 */ li r0, 1
/* 800D9B1C 000D6A5C  B0 15 30 0E */ sth r0, 0x300e(r21)
/* 800D9B20 000D6A60  A8 75 04 DE */ lha r3, 0x4de(r21)
/* 800D9B24 000D6A64  3C 63 00 01 */ addis r3, r3, 1
/* 800D9B28 000D6A68  38 03 80 00 */ addi r0, r3, -32768
/* 800D9B2C 000D6A6C  B0 15 04 E6 */ sth r0, 0x4e6(r21)
lbl_800D9B30:
/* 800D9B30 000D6A70  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9B34 000D6A74  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9B38 000D6A78  41 82 00 64 */ beq lbl_800D9B9C
/* 800D9B3C 000D6A7C  2C 17 00 00 */ cmpwi r23, 0
/* 800D9B40 000D6A80  3B 1F 1C B0 */ addi r24, r31, 0x1cb0
/* 800D9B44 000D6A84  41 82 00 08 */ beq lbl_800D9B4C
/* 800D9B48 000D6A88  3B 1F 1C 44 */ addi r24, r31, 0x1c44
lbl_800D9B4C:
/* 800D9B4C 000D6A8C  7F 1C C3 78 */ mr r28, r24
/* 800D9B50 000D6A90  7E A3 AB 78 */ mr r3, r21
/* 800D9B54 000D6A94  C0 38 00 54 */ lfs f1, 0x54(r24)
/* 800D9B58 000D6A98  C0 55 05 34 */ lfs f2, 0x534(r21)
/* 800D9B5C 000D6A9C  38 80 00 00 */ li r4, 0
/* 800D9B60 000D6AA0  4B FE 1C 11 */ bl setSpecialGravity__9daAlink_cFffi
/* 800D9B64 000D6AA4  A8 18 00 50 */ lha r0, 0x50(r24)
/* 800D9B68 000D6AA8  B0 15 30 10 */ sth r0, 0x3010(r21)
/* 800D9B6C 000D6AAC  C0 18 00 64 */ lfs f0, 0x64(r24)
/* 800D9B70 000D6AB0  D0 15 34 78 */ stfs f0, 0x3478(r21)
/* 800D9B74 000D6AB4  C0 18 00 68 */ lfs f0, 0x68(r24)
/* 800D9B78 000D6AB8  D0 15 34 7C */ stfs f0, 0x347c(r21)
/* 800D9B7C 000D6ABC  7E A3 AB 78 */ mr r3, r21
/* 800D9B80 000D6AC0  80 95 31 98 */ lwz r4, 0x3198(r21)
/* 800D9B84 000D6AC4  C0 38 00 58 */ lfs f1, 0x58(r24)
/* 800D9B88 000D6AC8  48 04 FB 21 */ bl daAlink_c_NS_setSingleAnimeWolfBaseMorf
/* 800D9B8C 000D6ACC  7E A3 AB 78 */ mr r3, r21
/* 800D9B90 000D6AD0  38 80 00 91 */ li r4, 0x91
/* 800D9B94 000D6AD4  4B FD 5D 0D */ bl daAlink_c_NS_setFaceBasicTexture
/* 800D9B98 000D6AD8  48 00 00 54 */ b lbl_800D9BEC
lbl_800D9B9C:
/* 800D9B9C 000D6ADC  2C 17 00 00 */ cmpwi r23, 0
/* 800D9BA0 000D6AE0  3B 1F 0D 14 */ addi r24, r31, 0xd14
/* 800D9BA4 000D6AE4  41 82 00 08 */ beq lbl_800D9BAC
/* 800D9BA8 000D6AE8  3B 1F 0C 58 */ addi r24, r31, 0xc58
lbl_800D9BAC:
/* 800D9BAC 000D6AEC  7F 1B C3 78 */ mr r27, r24
/* 800D9BB0 000D6AF0  7E A3 AB 78 */ mr r3, r21
/* 800D9BB4 000D6AF4  C0 38 00 A4 */ lfs f1, 0xa4(r24)
/* 800D9BB8 000D6AF8  C0 55 05 34 */ lfs f2, 0x534(r21)
/* 800D9BBC 000D6AFC  38 80 00 00 */ li r4, 0
/* 800D9BC0 000D6B00  4B FE 1B B1 */ bl setSpecialGravity__9daAlink_cFffi
/* 800D9BC4 000D6B04  A8 18 00 A0 */ lha r0, 0xa0(r24)
/* 800D9BC8 000D6B08  B0 15 30 10 */ sth r0, 0x3010(r21)
/* 800D9BCC 000D6B0C  C0 18 00 B4 */ lfs f0, 0xb4(r24)
/* 800D9BD0 000D6B10  D0 15 34 78 */ stfs f0, 0x3478(r21)
/* 800D9BD4 000D6B14  C0 18 00 B8 */ lfs f0, 0xb8(r24)
/* 800D9BD8 000D6B18  D0 15 34 7C */ stfs f0, 0x347c(r21)
/* 800D9BDC 000D6B1C  7E A3 AB 78 */ mr r3, r21
/* 800D9BE0 000D6B20  80 95 31 98 */ lwz r4, 0x3198(r21)
/* 800D9BE4 000D6B24  C0 38 00 A8 */ lfs f1, 0xa8(r24)
/* 800D9BE8 000D6B28  4B FD 33 C9 */ bl daAlink_c_NS_setSingleAnimeBaseMorf
lbl_800D9BEC:
/* 800D9BEC 000D6B2C  2C 16 00 00 */ cmpwi r22, 0
/* 800D9BF0 000D6B30  40 80 01 A0 */ bge lbl_800D9D90
/* 800D9BF4 000D6B34  80 15 05 78 */ lwz r0, 0x578(r21)
/* 800D9BF8 000D6B38  54 00 01 D1 */ rlwinm. r0, r0, 0, 7, 8
/* 800D9BFC 000D6B3C  41 82 00 40 */ beq lbl_800D9C3C
/* 800D9C00 000D6B40  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D9C04 000D6B44  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D9C08 000D6B48  80 63 5D B8 */ lwz r3, 0x5db8(r3)
/* 800D9C0C 000D6B4C  28 03 00 00 */ cmplwi r3, 0
/* 800D9C10 000D6B50  41 82 00 2C */ beq lbl_800D9C3C
/* 800D9C14 000D6B54  A8 03 17 08 */ lha r0, 0x1708(r3)
/* 800D9C18 000D6B58  7C 00 07 35 */ extsh. r0, r0
/* 800D9C1C 000D6B5C  41 82 00 20 */ beq lbl_800D9C3C
/* 800D9C20 000D6B60  C0 02 93 B0 */ lfs f0, lbl_80452DB0-_SDA2_BASE_(r2)
/* 800D9C24 000D6B64  D0 15 33 98 */ stfs f0, 0x3398(r21)
/* 800D9C28 000D6B68  D0 15 04 FC */ stfs f0, 0x4fc(r21)
/* 800D9C2C 000D6B6C  80 15 31 A0 */ lwz r0, 0x31a0(r21)
/* 800D9C30 000D6B70  60 00 20 00 */ ori r0, r0, 0x2000
/* 800D9C34 000D6B74  90 15 31 A0 */ stw r0, 0x31a0(r21)
/* 800D9C38 000D6B78  48 00 00 8C */ b lbl_800D9CC4
lbl_800D9C3C:
/* 800D9C3C 000D6B7C  2C 17 00 00 */ cmpwi r23, 0
/* 800D9C40 000D6B80  40 82 00 28 */ bne lbl_800D9C68
/* 800D9C44 000D6B84  7E A3 AB 78 */ mr r3, r21
/* 800D9C48 000D6B88  4B FF D1 7D */ bl daAlink_c_NS_checkMiddleBossGoronRoom
/* 800D9C4C 000D6B8C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D9C50 000D6B90  41 82 00 18 */ beq lbl_800D9C68
/* 800D9C54 000D6B94  C0 02 93 B4 */ lfs f0, lbl_80452DB4-_SDA2_BASE_(r2)
/* 800D9C58 000D6B98  D0 15 33 98 */ stfs f0, 0x3398(r21)
/* 800D9C5C 000D6B9C  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800D9C60 000D6BA0  D0 15 04 FC */ stfs f0, 0x4fc(r21)
/* 800D9C64 000D6BA4  48 00 00 60 */ b lbl_800D9CC4
lbl_800D9C68:
/* 800D9C68 000D6BA8  2C 16 FF FD */ cmpwi r22, -3
/* 800D9C6C 000D6BAC  40 82 00 18 */ bne lbl_800D9C84
/* 800D9C70 000D6BB0  C0 15 34 08 */ lfs f0, 0x3408(r21)
/* 800D9C74 000D6BB4  D0 15 33 98 */ stfs f0, 0x3398(r21)
/* 800D9C78 000D6BB8  C0 15 34 0C */ lfs f0, 0x340c(r21)
/* 800D9C7C 000D6BBC  D0 15 04 FC */ stfs f0, 0x4fc(r21)
/* 800D9C80 000D6BC0  48 00 00 44 */ b lbl_800D9CC4
lbl_800D9C84:
/* 800D9C84 000D6BC4  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9C88 000D6BC8  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9C8C 000D6BCC  41 82 00 18 */ beq lbl_800D9CA4
/* 800D9C90 000D6BD0  C0 1C 00 5C */ lfs f0, 0x5c(r28)
/* 800D9C94 000D6BD4  D0 15 33 98 */ stfs f0, 0x3398(r21)
/* 800D9C98 000D6BD8  C0 1C 00 60 */ lfs f0, 0x60(r28)
/* 800D9C9C 000D6BDC  D0 15 04 FC */ stfs f0, 0x4fc(r21)
/* 800D9CA0 000D6BE0  48 00 00 14 */ b lbl_800D9CB4
lbl_800D9CA4:
/* 800D9CA4 000D6BE4  C0 1B 00 AC */ lfs f0, 0xac(r27)
/* 800D9CA8 000D6BE8  D0 15 33 98 */ stfs f0, 0x3398(r21)
/* 800D9CAC 000D6BEC  C0 1B 00 B0 */ lfs f0, 0xb0(r27)
/* 800D9CB0 000D6BF0  D0 15 04 FC */ stfs f0, 0x4fc(r21)
lbl_800D9CB4:
/* 800D9CB4 000D6BF4  2C 16 FF FA */ cmpwi r22, -6
/* 800D9CB8 000D6BF8  40 82 00 0C */ bne lbl_800D9CC4
/* 800D9CBC 000D6BFC  C0 02 93 B8 */ lfs f0, lbl_80452DB8-_SDA2_BASE_(r2)
/* 800D9CC0 000D6C00  D0 15 34 78 */ stfs f0, 0x3478(r21)
lbl_800D9CC4:
/* 800D9CC4 000D6C04  2C 1A 00 02 */ cmpwi r26, 2
/* 800D9CC8 000D6C08  41 82 01 38 */ beq lbl_800D9E00
/* 800D9CCC 000D6C0C  2C 16 FF FA */ cmpwi r22, -6
/* 800D9CD0 000D6C10  41 82 00 74 */ beq lbl_800D9D44
/* 800D9CD4 000D6C14  80 75 05 74 */ lwz r3, 0x574(r21)
/* 800D9CD8 000D6C18  54 60 01 8D */ rlwinm. r0, r3, 0, 6, 6
/* 800D9CDC 000D6C1C  41 82 00 24 */ beq lbl_800D9D00
/* 800D9CE0 000D6C20  7E A3 AB 78 */ mr r3, r21
/* 800D9CE4 000D6C24  3C 80 00 01 */ lis r4, 0x00010034@ha
/* 800D9CE8 000D6C28  38 84 00 34 */ addi r4, r4, 0x00010034@l
/* 800D9CEC 000D6C2C  81 95 06 28 */ lwz r12, 0x628(r21)
/* 800D9CF0 000D6C30  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800D9CF4 000D6C34  7D 89 03 A6 */ mtctr r12
/* 800D9CF8 000D6C38  4E 80 04 21 */ bctrl
/* 800D9CFC 000D6C3C  48 00 00 48 */ b lbl_800D9D44
lbl_800D9D00:
/* 800D9D00 000D6C40  54 60 00 43 */ rlwinm. r0, r3, 0, 1, 1
/* 800D9D04 000D6C44  41 82 00 24 */ beq lbl_800D9D28
/* 800D9D08 000D6C48  7E A3 AB 78 */ mr r3, r21
/* 800D9D0C 000D6C4C  3C 80 00 01 */ lis r4, 0x00010053@ha
/* 800D9D10 000D6C50  38 84 00 53 */ addi r4, r4, 0x00010053@l
/* 800D9D14 000D6C54  81 95 06 28 */ lwz r12, 0x628(r21)
/* 800D9D18 000D6C58  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800D9D1C 000D6C5C  7D 89 03 A6 */ mtctr r12
/* 800D9D20 000D6C60  4E 80 04 21 */ bctrl
/* 800D9D24 000D6C64  48 00 00 20 */ b lbl_800D9D44
lbl_800D9D28:
/* 800D9D28 000D6C68  7E A3 AB 78 */ mr r3, r21
/* 800D9D2C 000D6C6C  3C 80 00 01 */ lis r4, 0x00010003@ha
/* 800D9D30 000D6C70  38 84 00 03 */ addi r4, r4, 0x00010003@l
/* 800D9D34 000D6C74  81 95 06 28 */ lwz r12, 0x628(r21)
/* 800D9D38 000D6C78  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800D9D3C 000D6C7C  7D 89 03 A6 */ mtctr r12
/* 800D9D40 000D6C80  4E 80 04 21 */ bctrl
lbl_800D9D44:
/* 800D9D44 000D6C84  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9D48 000D6C88  54 00 00 43 */ rlwinm. r0, r0, 0, 1, 1
/* 800D9D4C 000D6C8C  41 82 00 24 */ beq lbl_800D9D70
/* 800D9D50 000D6C90  7E A3 AB 78 */ mr r3, r21
/* 800D9D54 000D6C94  3C 80 00 02 */ lis r4, 0x0002004C@ha
/* 800D9D58 000D6C98  38 84 00 4C */ addi r4, r4, 0x0002004C@l
/* 800D9D5C 000D6C9C  81 95 06 28 */ lwz r12, 0x628(r21)
/* 800D9D60 000D6CA0  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800D9D64 000D6CA4  7D 89 03 A6 */ mtctr r12
/* 800D9D68 000D6CA8  4E 80 04 21 */ bctrl
/* 800D9D6C 000D6CAC  48 00 00 94 */ b lbl_800D9E00
lbl_800D9D70:
/* 800D9D70 000D6CB0  7E A3 AB 78 */ mr r3, r21
/* 800D9D74 000D6CB4  3C 80 00 02 */ lis r4, 0x00020015@ha
/* 800D9D78 000D6CB8  38 84 00 15 */ addi r4, r4, 0x00020015@l
/* 800D9D7C 000D6CBC  81 95 06 28 */ lwz r12, 0x628(r21)
/* 800D9D80 000D6CC0  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800D9D84 000D6CC4  7D 89 03 A6 */ mtctr r12
/* 800D9D88 000D6CC8  4E 80 04 21 */ bctrl
/* 800D9D8C 000D6CCC  48 00 00 74 */ b lbl_800D9E00
lbl_800D9D90:
/* 800D9D90 000D6CD0  80 15 05 74 */ lwz r0, 0x574(r21)
/* 800D9D94 000D6CD4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9D98 000D6CD8  41 82 00 10 */ beq lbl_800D9DA8
/* 800D9D9C 000D6CDC  C0 1C 00 64 */ lfs f0, 0x64(r28)
/* 800D9DA0 000D6CE0  D0 15 33 98 */ stfs f0, 0x3398(r21)
/* 800D9DA4 000D6CE4  48 00 00 0C */ b lbl_800D9DB0
lbl_800D9DA8:
/* 800D9DA8 000D6CE8  C0 1B 00 B4 */ lfs f0, 0xb4(r27)
/* 800D9DAC 000D6CEC  D0 15 33 98 */ stfs f0, 0x3398(r21)
lbl_800D9DB0:
/* 800D9DB0 000D6CF0  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D9DB4 000D6CF4  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D9DB8 000D6CF8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800D9DBC 000D6CFC  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800D9DC0 000D6D00  7C 03 04 2E */ lfsx f0, r3, r0
/* 800D9DC4 000D6D04  C0 35 04 D0 */ lfs f1, 0x4d0(r21)
/* 800D9DC8 000D6D08  C0 42 93 BC */ lfs f2, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800D9DCC 000D6D0C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800D9DD0 000D6D10  EC 01 00 2A */ fadds f0, f1, f0
/* 800D9DD4 000D6D14  D0 15 04 D0 */ stfs f0, 0x4d0(r21)
/* 800D9DD8 000D6D18  A8 15 04 DE */ lha r0, 0x4de(r21)
/* 800D9DDC 000D6D1C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D9DE0 000D6D20  7C 63 02 14 */ add r3, r3, r0
/* 800D9DE4 000D6D24  C0 03 00 04 */ lfs f0, 4(r3)
/* 800D9DE8 000D6D28  C0 35 04 D8 */ lfs f1, 0x4d8(r21)
/* 800D9DEC 000D6D2C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800D9DF0 000D6D30  EC 01 00 2A */ fadds f0, f1, f0
/* 800D9DF4 000D6D34  D0 15 04 D8 */ stfs f0, 0x4d8(r21)
/* 800D9DF8 000D6D38  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D9DFC 000D6D3C  D0 15 04 FC */ stfs f0, 0x4fc(r21)
lbl_800D9E00:
/* 800D9E00 000D6D40  38 00 00 00 */ li r0, 0
/* 800D9E04 000D6D44  B0 15 05 9C */ sth r0, 0x59c(r21)
/* 800D9E08 000D6D48  B0 15 05 9E */ sth r0, 0x59e(r21)
/* 800D9E0C 000D6D4C  B0 15 05 A0 */ sth r0, 0x5a0(r21)
/* 800D9E10 000D6D50  B0 15 30 08 */ sth r0, 0x3008(r21)
/* 800D9E14 000D6D54  B2 F5 30 0A */ sth r23, 0x300a(r21)
/* 800D9E18 000D6D58  38 00 00 14 */ li r0, 0x14
/* 800D9E1C 000D6D5C  B0 15 30 12 */ sth r0, 0x3012(r21)
/* 800D9E20 000D6D60  80 15 05 78 */ lwz r0, 0x578(r21)
/* 800D9E24 000D6D64  54 00 01 D1 */ rlwinm. r0, r0, 0, 7, 8
/* 800D9E28 000D6D68  41 82 00 28 */ beq lbl_800D9E50
/* 800D9E2C 000D6D6C  80 15 19 9C */ lwz r0, 0x199c(r21)
/* 800D9E30 000D6D70  60 00 00 04 */ ori r0, r0, 4
/* 800D9E34 000D6D74  90 15 19 9C */ stw r0, 0x199c(r21)
/* 800D9E38 000D6D78  80 15 19 9C */ lwz r0, 0x199c(r21)
/* 800D9E3C 000D6D7C  54 00 04 E2 */ rlwinm r0, r0, 0, 0x13, 0x11
/* 800D9E40 000D6D80  90 15 19 9C */ stw r0, 0x199c(r21)
/* 800D9E44 000D6D84  80 15 31 A0 */ lwz r0, 0x31a0(r21)
/* 800D9E48 000D6D88  60 00 40 00 */ ori r0, r0, 0x4000
/* 800D9E4C 000D6D8C  90 15 31 A0 */ stw r0, 0x31a0(r21)
lbl_800D9E50:
/* 800D9E50 000D6D90  28 1E 00 00 */ cmplwi r30, 0
/* 800D9E54 000D6D94  41 82 00 18 */ beq lbl_800D9E6C
/* 800D9E58 000D6D98  80 15 31 A0 */ lwz r0, 0x31a0(r21)
/* 800D9E5C 000D6D9C  60 00 20 00 */ ori r0, r0, 0x2000
/* 800D9E60 000D6DA0  90 15 31 A0 */ stw r0, 0x31a0(r21)
/* 800D9E64 000D6DA4  38 00 00 05 */ li r0, 5
/* 800D9E68 000D6DA8  90 15 32 CC */ stw r0, 0x32cc(r21)
lbl_800D9E6C:
/* 800D9E6C 000D6DAC  38 60 00 01 */ li r3, 1
lbl_800D9E70:
/* 800D9E70 000D6DB0  39 61 00 50 */ addi r11, r1, 0x50
/* 800D9E74 000D6DB4  48 28 83 95 */ bl _restgpr_21
/* 800D9E78 000D6DB8  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800D9E7C 000D6DBC  7C 08 03 A6 */ mtlr r0
/* 800D9E80 000D6DC0  38 21 00 50 */ addi r1, r1, 0x50
/* 800D9E84 000D6DC4  4E 80 00 20 */ blr