/* m_Do_machine_exception.cpp autogenerated by split.py v0.4 at 2021-01-31 21:28:06.026493 */

#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

// additional symbols needed for m_Do_machine_exception.cpp
// autogenerated by split.py v0.4 at 2021-01-31 21:28:06.026518
extern "C" {
void DynamicModuleControlBase_NS_dump(void);
void JUTConsole_NS_dumpToTerminal(void);
void JUTConsole_NS_print(void);
void JUTConsole_print_f_va_(void);
void _restgpr_23(void);
void _savegpr_23(void);
void cr1(void);
void dRes_control_c_NS_dump(void);
void dispConsoleToTerminal(void);
void dispDateInfo(void);
void dispGameInfo(void);
void dispHeapInfo(void);
void dump__11JKRAramHeapFv(void);
void exception_addition(void);
void getFreeSize__7JKRHeapCFv(void);
void getTotalFreeSize__7JKRHeapCFv(void);
void print(void);
void print_f(void);
}

// additional symbols needed for m_Do_machine_exception.cpp
// autogenerated by split.py v0.4 at 2021-01-31 21:28:06.026523
extern u8 lbl_80374460;
extern u32 lbl_80450B08;
extern u32 lbl_80450B0C;
extern u8 lbl_80450B10;
extern u8 lbl_80450B14;
extern u8 lbl_80450C28;
extern u8 lbl_80450C2C;
extern u8 lbl_80450C34;
extern u8 lbl_80450C90;
extern u8 lbl_804511B8;

extern "C" {
// print_f__FPCce
// print_f(const s8*, varargs...)
asm void print_f(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_80017D7C.s"
}

// print__FPCc
// print(const s8*)
asm void print(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_80017E08.s"
}

// dispHeapInfo__Fv
// dispHeapInfo(void)
asm void dispHeapInfo(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_80017E30.s"
}

// dispGameInfo__Fv
// dispGameInfo(void)
asm void dispGameInfo(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_80017F8C.s"
}

// dispDateInfo__Fv
// dispDateInfo(void)
asm void dispDateInfo(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_80017FD0.s"
}

// dispConsoleToTerminal__Fv
// dispConsoleToTerminal(void)
asm void dispConsoleToTerminal(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_80018124.s"
}

// exception_addition__FP10JUTConsole
// exception_addition(JUTConsole*)
asm void exception_addition(void) {
    nofralloc
#include "m_Do/m_Do_machine_exception/asm/func_8001814C.s"
}
};
