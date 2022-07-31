// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite_simple_port_ram__S100.h"

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [0U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [0U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [1U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [1U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [2U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [2U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [3U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        if ((1U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [3U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [0U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__valid = (1U & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we) 
                                      >> 1U));
        if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [0U];
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [1U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__valid = (1U & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we) 
                                      >> 1U));
        if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [1U];
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [2U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__valid = (1U & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we) 
                                      >> 1U));
        if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [2U];
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
            [3U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__valid = (1U & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we) 
                                      >> 1U));
        if ((2U & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))) {
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                [3U];
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [0U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [0U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if ((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
             [0U] & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                     == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [0U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [0U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [1U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if (((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
              [0U] >> 1U) & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                             == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [1U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((4U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [0U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [2U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if (((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
              [0U] >> 2U) & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                             == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [2U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((8U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [0U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [3U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if (((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
              [0U] >> 3U) & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                             == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [3U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((1U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [1U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [0U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if ((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
             [1U] & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                     == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [0U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((2U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [1U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [1U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if (((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
              [1U] >> 1U) & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                             == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [1U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((4U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [1U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [2U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if (((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
              [1U] >> 2U) & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                             == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [2U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}

VL_INLINE_OPT void VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data__0(VSocLite_simple_port_ram__S100* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+                VSocLite_simple_port_ram__S100___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data__0\n"); );
    // Init
    CData/*7:0*/ __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    IData/*31:0*/ __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    CData/*0:0*/ __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    // Body
    __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 0U;
    if ((8U & vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
         [1U])) {
        __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
            [3U];
        __Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 = 1U;
        __Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index;
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        if (((vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
              [1U] >> 3U) & ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index) 
                             == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index)))) {
            vlSelf->__PVT__valid = 1U;
            vlSelf->__PVT__doutb_bypass = vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                [3U];
        } else {
            vlSelf->__PVT__valid = 0U;
        }
    }
    if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg = 0U;
    } else if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg 
            = vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index];
    }
    if (__Vdlyvset__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0) {
        vlSelf->__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem[__Vdlyvdim0__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0] 
            = __Vdlyvval__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__mem__v0;
    }
}
