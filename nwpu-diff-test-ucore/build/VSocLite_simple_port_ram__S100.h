// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VSocLite.h for the primary calling header

#ifndef VERILATED_VSOCLITE_SIMPLE_PORT_RAM__S100_H_
#define VERILATED_VSOCLITE_SIMPLE_PORT_RAM__S100_H_  // guard

#include "verilated.h"
#include "verilated_save.h"

class VSocLite__Syms;
VL_MODULE(VSocLite_simple_port_ram__S100) {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    VL_IN8(wea,0,0);
    VL_IN8(ena,0,0);
    VL_IN8(enb,0,0);
    VL_IN8(addra,7,0);
    VL_IN8(addrb,7,0);
    CData/*0:0*/ __PVT__valid;
    VL_IN(dina,31,0);
    VL_OUT(doutb,31,0);
    IData/*31:0*/ __PVT__doutb_bypass;
    IData/*31:0*/ __PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__douta_bb;
    IData/*31:0*/ __PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__doutb_bb;
    IData/*31:0*/ __PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword;
    IData/*31:0*/ __PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg;
    VlUnpacked<IData/*31:0*/, 256> __PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem;

    // INTERNAL VARIABLES
    VSocLite__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
    VSocLite_simple_port_ram__S100(const char* name);
    ~VSocLite_simple_port_ram__S100();
    VL_UNCOPYABLE(VSocLite_simple_port_ram__S100);

    // INTERNAL METHODS
    void __Vconfigure(VSocLite__Syms* symsp, bool first);
    void __Vserialize(VerilatedSerialize& os);
    void __Vdeserialize(VerilatedDeserialize& os);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
