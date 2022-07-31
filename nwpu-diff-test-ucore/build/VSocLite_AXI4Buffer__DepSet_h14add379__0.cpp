// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite_AXI4Buffer.h"
#include "VSocLite__Syms.h"

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf__0\n"); );
    // Init
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_aw_deq__DOT__value_1;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_aw_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*7:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*1:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_w_deq__DOT__value_1;
    CData/*0:0*/ __Vdly__bundleOut_0_w_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_b_deq__DOT__value_1;
    CData/*0:0*/ __Vdly__bundleIn_0_b_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0;
    CData/*1:0*/ __Vdlyvval__bundleIn_0_b_deq__DOT__ram_resp__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_ar_deq__DOT__value_1;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_ar_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*7:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*1:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_r_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0;
    CData/*1:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_resp__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0;
    IData/*31:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_r_deq__DOT__value_1;
    // Body
    __Vdly__bundleOut_0_w_deq__DOT__value = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0 = 0U;
    __Vdly__bundleOut_0_w_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0 = 0U;
    __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0 = 0U;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0 = 0U;
    __Vdly__bundleIn_0_b_deq__DOT__value = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    __Vdly__bundleIn_0_b_deq__DOT__value_1 = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1;
    __Vdly__bundleIn_0_r_deq__DOT__value = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0 = 0U;
    __Vdly__bundleIn_0_r_deq__DOT__value_1 = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 0U;
    __Vdly__bundleOut_0_aw_deq__DOT__value = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    __Vdly__bundleOut_0_ar_deq__DOT__value = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 0U;
    __Vdly__bundleOut_0_aw_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1;
    __Vdly__bundleOut_0_ar_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0 = 0U;
    __Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 0U;
    if (vlSymsp->TOP.reset) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full = 0U;
        __Vdly__bundleOut_0_w_deq__DOT__value = 0U;
    } else {
        if (((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq;
        }
        if (vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_w_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value)));
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid))) {
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? (1U & ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                          ? (2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))
                          : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                              ? (5U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                              : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                  ? 0U : 0U)))) : 0U);
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_w_deq__DOT__value_1 = 0U;
    } else if (vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq) {
        __Vdly__bundleOut_0_w_deq__DOT__value_1 = (1U 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1)));
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid))) {
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? (0xfU & ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                            ? (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_WStrb)
                            : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                ? 0xfU : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                           ? 0U : 0U))))
                : 0U);
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_b_valid))) {
        __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___T_77) 
               | (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___T_78));
        __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid))) {
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                    ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_WData
                    : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                        ? ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                            ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[0U]
                            : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[1U]
                                : ((4U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                    ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[2U]
                                    : ((5U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                        ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[3U]
                                        : 0U)))) : 
                       ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                         ? 0U : 0U))) : 0U);
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full = 0U;
    } else if (((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq) 
                != (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq))) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_r_valid))) {
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___T_54) 
               | (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___T_55));
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleIn_0_b_deq__DOT__value = 0U;
        __Vdly__bundleIn_0_b_deq__DOT__value_1 = 0U;
        __Vdly__bundleIn_0_r_deq__DOT__value = 0U;
    } else {
        if (vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq) {
            __Vdly__bundleIn_0_b_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq) {
            __Vdly__bundleIn_0_b_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq) {
            __Vdly__bundleIn_0_r_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value)));
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_r_valid))) {
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0 
            = (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_2_0) 
                & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data)) 
               | ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_2_1) 
                  & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data)));
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleIn_0_r_deq__DOT__value_1 = 0U;
    } else if (vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq) {
        __Vdly__bundleIn_0_r_deq__DOT__value_1 = (1U 
                                                  & ((IData)(1U) 
                                                     + (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1)));
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid))) {
        if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy) {
            if ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0 = 2U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0 = 0U;
            } else if ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0 = 2U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0 = 3U;
            } else {
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
                __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0 = 0U;
            }
        } else {
            __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 0U;
            __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0 
                = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
            __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
            __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0 
                = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
            __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0 = 0U;
            __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0 
                = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
            __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
            __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0 
                = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
            __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0 = 0U;
        }
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 0U;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid))) {
        if (vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy) {
            if ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 = 0U;
            } else if ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 = 3U;
            } else if ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 = 3U;
            } else {
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
                __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
                __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
                    = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
                __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 = 0U;
            }
        } else {
            __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 0U;
            __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
                = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
            __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
            __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
                = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
            __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
            __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
            __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
                = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
            __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 = 0U;
        }
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 0U;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_aw_deq__DOT__value = 0U;
        __Vdly__bundleOut_0_ar_deq__DOT__value = 0U;
    } else {
        if (vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_aw_deq__DOT__value 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_ar_deq__DOT__value 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value)));
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                    ? 3U : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                             ? 1U : 0U)) : 0U);
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                    ? 3U : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                             ? 1U : 0U)) : 0U);
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_aw_deq__DOT__value_1 = 0U;
        __Vdly__bundleOut_0_ar_deq__DOT__value_1 = 0U;
    } else {
        if (vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq) {
            __Vdly__bundleOut_0_aw_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq) {
            __Vdly__bundleOut_0_ar_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1)));
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? (7U & ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                          ? (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_load_size)
                          : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                              ? 2U : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                       ? 2U : 0U))))
                : 0U);
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_b_valid))) {
        __Vdlyvval__bundleIn_0_b_deq__DOT__ram_resp__v0 
            = (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_3_0)
                 ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_resp
                [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value_1]
                 : 0U) | ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_3_1)
                           ? vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_resp
                          [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value_1]
                           : 0U));
        __Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0 
            = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                    ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                        ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_Addr
                        : 0U) : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                  ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))
                                      ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_Addr
                                      : 0U) : ((3U 
                                                == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                ? (
                                                   (1U 
                                                    == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))
                                                    ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_Addr
                                                    : 0U)
                                                : 0U)))
                : 0U);
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                    ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))
                        ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_Addr
                        : 0U) : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                  ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                      ? vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_Addr
                                      : 0U) : ((3U 
                                                == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                ? 0U
                                                : 0U)))
                : 0U);
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_r_valid))) {
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_resp__v0 
            = (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_2_0)
                 ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_resp
                [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]
                 : 0U) | ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_2_1)
                           ? vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_resp
                          [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]
                           : 0U));
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0 
            = (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_2_0)
                 ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_data
                [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]
                 : 0U) | ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__muxState_2_1)
                           ? vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_data
                          [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]
                           : 0U));
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0;
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1 
        = __Vdly__bundleOut_0_w_deq__DOT__value_1;
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0;
    }
    if (__Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0;
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value = __Vdly__bundleOut_0_w_deq__DOT__value;
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0;
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1 = __Vdly__bundleIn_0_b_deq__DOT__value_1;
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0;
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1 = __Vdly__bundleIn_0_r_deq__DOT__value_1;
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1 
        = __Vdly__bundleOut_0_aw_deq__DOT__value_1;
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1 
        = __Vdly__bundleOut_0_ar_deq__DOT__value_1;
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0;
    }
    if (__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0] 
            = __Vdlyvval__bundleIn_0_b_deq__DOT__ram_resp__v0;
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value = __Vdly__bundleIn_0_b_deq__DOT__value;
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value = __Vdly__bundleOut_0_ar_deq__DOT__value;
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value = __Vdly__bundleOut_0_aw_deq__DOT__value;
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_resp__v0;
    }
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value = __Vdly__bundleIn_0_r_deq__DOT__value;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id
        [vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp
        [vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
                                                   & (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf__1(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf__1\n"); );
    // Body
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq = 
        (1U & (((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                 ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                     ? 1U : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                              ? 1U : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                       ? 0U : 0U)))
                 : 0U) & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq = 
        (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__in_0_w_ready) 
          & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid)) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq = 
        (1U & (((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                 ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                     ? (2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                     : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                         ? (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready)
                         : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                             ? (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready)
                             : 0U))) : 0U) & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf__2(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf__2\n"); );
    // Body
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq 
        = ((((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__in_0_aw_ready) 
             & ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__latched) 
                | (~ (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)))) 
            & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___GEN_63)) 
           & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty)));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq 
        = (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__in_0_ar_ready) 
            & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___GEN_47)) 
           & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_b_valid));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_r_valid));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_1__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_1__0\n"); );
    // Init
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_aw_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*7:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*1:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_w_deq__DOT__value_1;
    CData/*0:0*/ __Vdly__bundleOut_0_w_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_b_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_ar_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*7:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*1:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_r_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0;
    // Body
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0 = 0U;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0 = 0U;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0 = 0U;
    __Vdly__bundleOut_0_w_deq__DOT__value = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    __Vdly__bundleOut_0_w_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0 = 0U;
    vlSelf->__Vdly__bundleOut_0_aw_deq__DOT__value_1 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1;
    __Vdly__bundleOut_0_aw_deq__DOT__value = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0 = 0U;
    vlSelf->__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 0U;
    __Vdly__bundleOut_0_ar_deq__DOT__value = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    vlSelf->__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 0U;
    vlSelf->__Vdly__bundleOut_0_ar_deq__DOT__value_1 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0 = 0U;
    vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 0U;
    __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0 = 0U;
    vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 0U;
    vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0 = 0U;
    __Vdly__bundleIn_0_b_deq__DOT__value = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 
        = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1;
    __Vdly__bundleIn_0_r_deq__DOT__value = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1;
    if (vlSymsp->TOP.reset) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full = 0U;
    } else if (((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq) 
                != (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq))) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_w_valid))) {
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_w_deq__DOT__value = 0U;
        __Vdly__bundleOut_0_w_deq__DOT__value_1 = 0U;
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full = 0U;
    } else {
        if (vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_w_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq) {
            __Vdly__bundleOut_0_w_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1)));
        }
        if (((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq;
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_aw_valid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_ar_valid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        vlSelf->__Vdly__bundleOut_0_aw_deq__DOT__value_1 = 0U;
        __Vdly__bundleOut_0_aw_deq__DOT__value = 0U;
    } else {
        if (vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq) {
            vlSelf->__Vdly__bundleOut_0_aw_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_aw_deq__DOT__value 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value)));
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_ar_valid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_aw_valid))) {
        vlSelf->__Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        vlSelf->__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_ar_deq__DOT__value = 0U;
    } else if (vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq) {
        __Vdly__bundleOut_0_ar_deq__DOT__value = (1U 
                                                  & ((IData)(1U) 
                                                     + (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value)));
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_ar_valid))) {
        vlSelf->__Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        vlSelf->__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        vlSelf->__Vdly__bundleOut_0_ar_deq__DOT__value_1 = 0U;
    } else if (vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq) {
        vlSelf->__Vdly__bundleOut_0_ar_deq__DOT__value_1 
            = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1)));
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_aw_valid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_ar_valid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full = 0U;
    } else {
        if (((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq;
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_b_valid_r))) {
        vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0 
            = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
        __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_b_bits_id_r;
        __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_r_valid_r))) {
        vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        vlSelf->__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_r_bits_data_r;
        vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0 
            = ((IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__value) 
               == (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT___GEN_0));
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0 
            = vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_r_bits_id_r;
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleIn_0_b_deq__DOT__value = 0U;
        vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 = 0U;
        __Vdly__bundleIn_0_r_deq__DOT__value = 0U;
        vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 = 0U;
    } else {
        if (vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq) {
            __Vdly__bundleIn_0_b_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq) {
            vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq) {
            __Vdly__bundleIn_0_r_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq) {
            vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1)));
        }
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0;
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0;
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0;
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value = __Vdly__bundleOut_0_w_deq__DOT__value;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1 
        = __Vdly__bundleOut_0_w_deq__DOT__value_1;
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value = __Vdly__bundleOut_0_aw_deq__DOT__value;
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value = __Vdly__bundleOut_0_ar_deq__DOT__value;
    if (__Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0;
    }
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0;
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value = __Vdly__bundleIn_0_b_deq__DOT__value;
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value = __Vdly__bundleIn_0_r_deq__DOT__value;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
                                                   & (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_1__1(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_1__1\n"); );
    // Body
    if (vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[vlSelf->__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0] = 0U;
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1 = vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1;
    if (vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0] = 0U;
    }
    if (vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0] 
            = vlSelf->__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1 = vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1;
    if (vlSelf->__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[vlSelf->__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0] 
            = vlSelf->__Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1 
        = vlSelf->__Vdly__bundleOut_0_aw_deq__DOT__value_1;
    if (vlSelf->__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[vlSelf->__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0] 
            = vlSelf->__Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1 
        = vlSelf->__Vdly__bundleOut_0_ar_deq__DOT__value_1;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_w_valid));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_b_valid_r));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__bundleIn_0_r_valid_r));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq 
        = (1U & ((~ (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__w_busy)) 
                 & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty))));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq = 
        (1U & (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty)) 
                | (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__w_busy)) 
               & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty))));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_aw_valid));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq 
        = (1U & (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
                  | (~ (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__r_busy))) 
                 & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty))));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_ar_valid));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_1__2(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_1__2\n"); );
    // Body
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq = 
        (1U & (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)) 
                & ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__idle_3)
                    ? (~ (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___readys_readys_T_5))
                    : (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__state_3_0))) 
               & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq = 
        (1U & (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)) 
                & ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__idle_2)
                    ? (~ (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___readys_readys_T_2))
                    : (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__state_2_0))) 
               & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty))));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_2__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_2__0\n"); );
    // Init
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_aw_deq__DOT__value_1;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_aw_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*7:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*1:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_w_deq__DOT__value_1;
    CData/*0:0*/ __Vdly__bundleOut_0_w_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_b_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    IData/*31:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_ar_deq__DOT__value_1;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    CData/*0:0*/ __Vdly__bundleOut_0_ar_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*7:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*3:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*2:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*1:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    CData/*0:0*/ __Vdly__bundleIn_0_r_deq__DOT__value;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0;
    CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*3:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0;
    CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0;
    // Body
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0 = 0U;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0 = 0U;
    __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0 = 0U;
    __Vdly__bundleOut_0_w_deq__DOT__value = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    __Vdly__bundleOut_0_w_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 0U;
    __Vdly__bundleOut_0_aw_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1;
    __Vdly__bundleOut_0_aw_deq__DOT__value = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    __Vdly__bundleOut_0_ar_deq__DOT__value_1 = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1;
    __Vdly__bundleOut_0_ar_deq__DOT__value = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 0U;
    __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0 = 0U;
    __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0 = 0U;
    vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 0U;
    __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0 = 0U;
    vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 0U;
    vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0 = 0U;
    __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0 = 0U;
    __Vdly__bundleIn_0_b_deq__DOT__value = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 
        = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1;
    __Vdly__bundleIn_0_r_deq__DOT__value = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1;
    if (vlSymsp->TOP.reset) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full = 0U;
    } else if (((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq) 
                != (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq))) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_w_valid))) {
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
        __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0 
            = vlSelf->__PVT__bundleOut_0_w_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_w_deq__DOT__value = 0U;
        __Vdly__bundleOut_0_w_deq__DOT__value_1 = 0U;
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full = 0U;
    } else {
        if (vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_w_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq) {
            __Vdly__bundleOut_0_w_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1)));
        }
        if (((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq;
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_aw_valid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_ar_valid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleOut_0_aw_deq__DOT__value_1 = 0U;
        __Vdly__bundleOut_0_aw_deq__DOT__value = 0U;
        __Vdly__bundleOut_0_ar_deq__DOT__value_1 = 0U;
        __Vdly__bundleOut_0_ar_deq__DOT__value = 0U;
    } else {
        if (vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq) {
            __Vdly__bundleOut_0_aw_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_aw_deq__DOT__value 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq) {
            __Vdly__bundleOut_0_ar_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq) {
            __Vdly__bundleOut_0_ar_deq__DOT__value 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value)));
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_aw_valid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_ar_valid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_aw_valid))) {
        __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0 
            = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_ar_valid))) {
        __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0 
            = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
        __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0 = 1U;
        __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0 
            = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full = 0U;
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full = 0U;
    } else {
        if (((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq;
        }
        if (((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq) 
             != (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq))) {
            vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full 
                = vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq;
        }
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_bvalid_reg))) {
        vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0 
            = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
        __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0 
            = vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_id;
        __Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleIn_0_b_deq__DOT__value;
    }
    if (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rvalid_reg))) {
        vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        vlSelf->__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0 
            = vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rdata_reg;
        vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 1U;
        vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0 
            = vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_id;
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
        __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0 
            = vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rlast_reg;
        __Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0 = 1U;
        __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0 
            = vlSelf->__PVT__bundleIn_0_r_deq__DOT__value;
    }
    if (vlSymsp->TOP.reset) {
        __Vdly__bundleIn_0_b_deq__DOT__value = 0U;
        vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 = 0U;
        __Vdly__bundleIn_0_r_deq__DOT__value = 0U;
        vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 = 0U;
    } else {
        if (vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq) {
            __Vdly__bundleIn_0_b_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq) {
            vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1)));
        }
        if (vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq) {
            __Vdly__bundleIn_0_r_deq__DOT__value = 
                (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value)));
        }
        if (vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq) {
            vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 
                = (1U & ((IData)(1U) + (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1)));
        }
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_strb__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_strb__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_strb__v0;
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_data__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_data__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_data__v0;
    }
    if (__Vdlyvset__bundleOut_0_w_deq__DOT__ram_last__v0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[__Vdlyvdim0__bundleOut_0_w_deq__DOT__ram_last__v0] 
            = __Vdlyvval__bundleOut_0_w_deq__DOT__ram_last__v0;
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value = __Vdly__bundleOut_0_w_deq__DOT__value;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1 
        = __Vdly__bundleOut_0_w_deq__DOT__value_1;
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_burst__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_burst__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_burst__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_prot__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_prot__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_prot__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_size__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_size__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_size__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_cache__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_cache__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_cache__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_len__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_len__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_len__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_lock__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_lock__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_lock__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_burst__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_burst__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_burst__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_prot__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_prot__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_prot__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_size__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_size__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_size__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_cache__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_cache__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_cache__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_len__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_len__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_len__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_lock__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_lock__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_lock__v0;
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1 
        = __Vdly__bundleOut_0_aw_deq__DOT__value_1;
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1 
        = __Vdly__bundleOut_0_ar_deq__DOT__value_1;
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_addr__v0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_addr__v0] 
            = __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_addr__v0;
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value = __Vdly__bundleOut_0_aw_deq__DOT__value;
    if (__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_addr__v0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_addr__v0] 
            = __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_addr__v0;
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value = __Vdly__bundleOut_0_ar_deq__DOT__value;
    if (__Vdlyvset__bundleIn_0_b_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleIn_0_b_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_id__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_id__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_id__v0;
    }
    if (__Vdlyvset__bundleIn_0_r_deq__DOT__ram_last__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_last__v0] 
            = __Vdlyvval__bundleIn_0_r_deq__DOT__ram_last__v0;
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value = __Vdly__bundleIn_0_b_deq__DOT__value;
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value = __Vdly__bundleIn_0_r_deq__DOT__value;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
                                                   & (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq = 
        ((IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_wready_reg) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty)));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_2__1(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_2__1\n"); );
    // Body
    if (vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[vlSelf->__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0] = 0U;
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1 = vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1;
    if (vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0] = 0U;
    }
    if (vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0] 
            = vlSelf->__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1 = vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1;
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq 
        = ((IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg_arready) 
           & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty)));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq 
        = ((IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg_awready) 
           & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty)));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_w_valid));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_ar_valid));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_aw_valid));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_bvalid_reg));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rvalid_reg));
}

VL_INLINE_OPT void VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_2__2(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___sequent__TOP__SocLite__DOT__axi4buf_2__2\n"); );
    // Body
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq = 
        (1U & (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)) 
                & ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__idle_3)
                    ? (~ ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___readys_readys_T_5) 
                          >> 1U)) : (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__state_3_1))) 
               & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq = 
        (1U & (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)) 
                & ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__idle_2)
                    ? (~ ((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT___readys_readys_T_2) 
                          >> 1U)) : (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__state_2_1))) 
               & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty))));
}
