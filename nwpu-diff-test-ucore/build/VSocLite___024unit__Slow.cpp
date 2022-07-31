// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite___024unit.h"

void VSocLite___024unit___ctor_var_reset(VSocLite___024unit* vlSelf);

VSocLite___024unit::VSocLite___024unit(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VSocLite___024unit___ctor_var_reset(this);
}

void VSocLite___024unit::__Vconfigure(VSocLite__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VSocLite___024unit::~VSocLite___024unit() {
}

// Savable
void VSocLite___024unit::__Vserialize(VerilatedSerialize& os) {
    vluint64_t __Vcheckval = 0xe3b0c44298fc1c14ULL;
    os << __Vcheckval;
    os << vlSymsp->_vm_contextp__;
}
void VSocLite___024unit::__Vdeserialize(VerilatedDeserialize& os) {
    vluint64_t __Vcheckval = 0xe3b0c44298fc1c14ULL;
    os.readAssert(__Vcheckval);
    os >> vlSymsp->_vm_contextp__;
}
