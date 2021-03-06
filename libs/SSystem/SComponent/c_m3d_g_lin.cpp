/* c_m3d_g_lin.cpp autogenerated by split.py v0.3 at 2021-01-01 14:48:45.519641 */

#include "SComponent/c_m3d_g_lin.h"
#include "mtx_vec.h"

// __ct__8cM3dGLinFRC4cXyzRC4cXyz
cM3dGLin::cM3dGLin(const cXyz& pStart, const cXyz& pEnd) : mStart(pStart), mEnd(pEnd) {}

// SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
void cM3dGLin::SetStartEnd(const cXyz& pStart, const cXyz& pEnd) {
    mStart = pStart;
    mEnd = pEnd;
}

// SetStartEnd__8cM3dGLinFRC3VecRC3Vec
void cM3dGLin::SetStartEnd(const Vec& pStart, const Vec& pEnd) {
    mStart = pStart;
    mEnd = pEnd;
}

// CalcPos__8cM3dGLinCFP3Vecf
void cM3dGLin::CalcPos(Vec* pOut, f32 pScale) const {
    Vec tmp;
    PSVECSubtract(&mEnd, &mStart, &tmp);
    PSVECScale(&tmp, &tmp, pScale);
    PSVECAdd(&tmp, &mStart, pOut);
}

// SetEnd__8cM3dGLinFRC4cXyz
void cM3dGLin::SetEnd(const cXyz& pEnd) {
    mEnd = pEnd;
}