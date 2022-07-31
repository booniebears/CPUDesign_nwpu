// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite_simple_port_lutram__S100_D15.h"

void VSocLite_simple_port_lutram__S100_D15___ctor_var_reset(VSocLite_simple_port_lutram__S100_D15* vlSelf);

VSocLite_simple_port_lutram__S100_D15::VSocLite_simple_port_lutram__S100_D15(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VSocLite_simple_port_lutram__S100_D15___ctor_var_reset(this);
}

void VSocLite_simple_port_lutram__S100_D15::__Vconfigure(VSocLite__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VSocLite_simple_port_lutram__S100_D15::~VSocLite_simple_port_lutram__S100_D15() {
}

// Savable
void VSocLite_simple_port_lutram__S100_D15::__Vserialize(VerilatedSerialize& os) {
    vluint64_t __Vcheckval = 0xf6fa192f179d445dULL;
    os << __Vcheckval;
    os << vlSymsp->_vm_contextp__;
    os<<clka;
    os<<rsta;
    os<<wea;
    os<<ena;
    os<<addra;
    os<<dina;
    os<<douta;
    os<<__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__douta_bb;
    os<<__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__doutb_bb;
    os<<__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword;
    os<<__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg;
    for (int __Vi0=0; __Vi0<256; ++__Vi0) {
        os<<__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vi0];
    }
}
void VSocLite_simple_port_lutram__S100_D15::__Vdeserialize(VerilatedDeserialize& os) {
    vluint64_t __Vcheckval = 0xf6fa192f179d445dULL;
    os.readAssert(__Vcheckval);
    os >> vlSymsp->_vm_contextp__;
    os>>clka;
    os>>rsta;
    os>>wea;
    os>>ena;
    os>>addra;
    os>>dina;
    os>>douta;
    os>>__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__douta_bb;
    os>>__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__doutb_bb;
    os>>__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword;
    os>>__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg;
    for (int __Vi0=0; __Vi0<256; ++__Vi0) {
        os>>__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vi0];
    }
}
