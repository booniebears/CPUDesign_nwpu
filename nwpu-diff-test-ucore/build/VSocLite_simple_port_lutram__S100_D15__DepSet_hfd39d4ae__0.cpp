// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite_simple_port_lutram__S100_D15.h"

VL_INLINE_OPT void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0(VSocLite_simple_port_lutram__S100_D15* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+              VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*20:0*/ __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we))) {
        __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_wdata;
        __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (__Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__1(VSocLite_simple_port_lutram__S100_D15* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+              VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__1\n"); );
    // Body
    vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg 
        = vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem
        [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
}

VL_INLINE_OPT void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag__0(VSocLite_simple_port_lutram__S100_D15* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+              VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*20:0*/ __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we))) {
        __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_wdata;
        __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (__Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__0(VSocLite_simple_port_lutram__S100_D15* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+              VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*20:0*/ __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we))) {
        __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_wdata;
        __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_index;
    }
    if (__Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__1(VSocLite_simple_port_lutram__S100_D15* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+              VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__1\n"); );
    // Body
    vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg 
        = vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem
        [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_index];
}

VL_INLINE_OPT void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag__0(VSocLite_simple_port_lutram__S100_D15* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+              VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*20:0*/ __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we))) {
        __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_wdata;
        __Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_index;
    }
    if (__Vdlyvset__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}
