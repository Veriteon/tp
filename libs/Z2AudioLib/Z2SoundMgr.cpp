/* Z2SoundMgr.cpp autogenerated by split.py v0.3 at 2021-01-04 23:01:21.950031 */

#include "Z2AudioLib/Z2SoundMgr/Z2SoundMgr.h"
#include "JSystem/JAudio2/JAISeCategoryMgr.h"
#include "JSystem/JAudio2/JAISeMgr/JAISeMgr.h"
#include "JSystem/JAudio2/JAISeqMgr.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "JSystem/JAudio2/JAIStreamMgr.h"
#include "JSystem/JAudio2/JASDriver.h"
#include "JSystem/JAudio2/JASTrack.h"
#include "JSystem/JAudio2/JAUSectionHeap.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SoundInfo/Z2SoundInfo.h"
#include "Z2AudioLib/Z2SpeechMgr2/Z2SpeechMgr2.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"

extern "C" {
void func_803664DC(void);
}

extern "C" {
// seqCallback__FP8JASTrackUs
// seqCallback(JASTrack*, unsigned short)
asm void seqCallback(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802A9BC8.s"
}

// __ct__10Z2SoundMgrFv
// Z2SoundMgr::Z2SoundMgr(void)
asm void Z2SoundMgr_NS_ctor(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802A9E80.s"
}

// startSound__10Z2SoundMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>
// Z2SoundMgr::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f>)
asm void func_802A9EE8(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802A9EE8.s"
}

// calc__10Z2SoundMgrFv
// Z2SoundMgr::calc(void)
asm void Z2SoundMgr_NS_calc(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA1B0.s"
}

// setIIR__10Z2SoundMgrFP8JAISoundPCs
// Z2SoundMgr::setIIR(JAISound*, const short*)
asm void Z2SoundMgr_NS_setIIR(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA270.s"
}

// setFilterOff__10Z2SoundMgrFP8JAISound
// Z2SoundMgr::setFilterOff(JAISound*)
asm void Z2SoundMgr_NS_setFilterOff(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA33C.s"
}

// resetFilterAll__10Z2SoundMgrFv
// Z2SoundMgr::resetFilterAll(void)
asm void resetFilterAll__10Z2SoundMgrFv(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA430.s"
}

// mixOut__10Z2SoundMgrFv
// Z2SoundMgr::mixOut(void)
asm void Z2SoundMgr_NS_mixOut(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA528.s"
}

// framework__10Z2SoundMgrFv
// Z2SoundMgr::framework(void)
asm void Z2SoundMgr_NS_framework(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA67C.s"
}

// pauseAllGameSound__10Z2SoundMgrFb
// Z2SoundMgr::pauseAllGameSound(bool)

asm void Z2SoundMgr_NS_pauseAllGameSound(Z2SoundMgr* p0, bool p1) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA6B0.s"
}

// stopSoundID__10Z2SoundMgrF10JAISoundID
// Z2SoundMgr::stopSoundID(JAISoundID)
asm void Z2SoundMgr_NS_stopSoundID(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA7DC.s"
}

// stopSync__10Z2SoundMgrFv
// Z2SoundMgr::stopSync(void)
asm void Z2SoundMgr_NS_stopSync(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA84C.s"
}

// stop__10Z2SoundMgrFv
// Z2SoundMgr::stop(void)
asm void Z2SoundMgr_NS_stop(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA8C8.s"
}

// initParams__10Z2SoundMgrFv
// Z2SoundMgr::initParams(void)
asm void Z2SoundMgr_NS_initParams(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA908.s"
}

// multiVolumeSoundID__10Z2SoundMgrF10JAISoundIDf
// Z2SoundMgr::multiVolumeSoundID(JAISoundID, float)
asm void Z2SoundMgr_NS_multiVolumeSoundID(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AA9E8.s"
}

// isPlayingSoundID__10Z2SoundMgrF10JAISoundID
// Z2SoundMgr::isPlayingSoundID(JAISoundID)
asm void Z2SoundMgr_NS_isPlayingSoundID(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundMgr/asm/func_802AAAC4.s"
}
};
