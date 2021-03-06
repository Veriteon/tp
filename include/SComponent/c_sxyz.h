#ifndef C_SXYZ_H_
#define C_SXYZ_H_

#include "global.h"

class csXyz {
private:
    s16 mX, mY, mZ;

public:
    csXyz(s16, s16, s16);
    csXyz operator+(csXyz&);
    void operator+=(csXyz&);
    csXyz operator-(csXyz&);
    csXyz operator*(f32);
};

extern csXyz lbl_80451160;  // SComponent::csXyz::Zero

// additional symbols needed for csXyz
extern "C" {
void __pl__FsRC7cSAngle(void);
void __mi__FsRC7cSAngle(void);
}

#endif