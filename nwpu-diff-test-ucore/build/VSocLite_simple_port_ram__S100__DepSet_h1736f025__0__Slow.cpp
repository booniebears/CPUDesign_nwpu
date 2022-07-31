// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite_simple_port_ram__S100.h"

VL_ATTR_COLD void VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0\n"); );
    // Body
    vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword = 0U;
    while (VL_GTS_III(32, 0x100U, vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword)) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[(0xffU 
                                                                                & vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword)] = 0U;
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword 
            = ((IData)(1U) + vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword);
    }
}

VL_ATTR_COLD void VSocLite_simple_port_ram__S100___ctor_var_reset(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->wea = VL_RAND_RESET_I(1);
    vlSelf->ena = VL_RAND_RESET_I(1);
    vlSelf->enb = VL_RAND_RESET_I(1);
    vlSelf->addra = VL_RAND_RESET_I(8);
    vlSelf->addrb = VL_RAND_RESET_I(8);
    vlSelf->dina = VL_RAND_RESET_I(32);
    vlSelf->doutb = VL_RAND_RESET_I(32);
    vlSelf->__PVT__valid = VL_RAND_RESET_I(1);
    vlSelf->__PVT__doutb_bypass = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<256; ++__Vi0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__douta_bb = VL_RAND_RESET_I(32);
    vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__doutb_bb = VL_RAND_RESET_I(32);
    vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword = VL_RAND_RESET_I(32);
    vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = VL_RAND_RESET_I(32);
}
