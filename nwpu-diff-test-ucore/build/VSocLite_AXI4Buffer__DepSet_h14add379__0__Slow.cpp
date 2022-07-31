// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite_AXI4Buffer.h"
#include "VSocLite__Syms.h"

VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__0\n"); );
    // Body
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id
        [vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp
        [vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1));
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
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr
        [vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size
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
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr
        [vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
                                                   & (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq = 
        (1U & (((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                 ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                     ? 1U : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                              ? 1U : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                       ? 0U : 0U)))
                 : 0U) & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq = 
        (1U & (((IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                 ? ((1U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                     ? (2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                     : ((2U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                         ? (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready)
                         : ((3U == (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                             ? (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready)
                             : 0U))) : 0U) & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid));
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__1(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__1\n"); );
    // Body
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_b_valid));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_in_r_valid));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq = 
        (((IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__in_0_w_ready) 
          & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid)) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty)));
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
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__0\n"); );
    // Body
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last
        [vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1];
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1));
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
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty = 
        ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match) 
                                                   & (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full));
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
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq 
        = (1U & (((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
                  | (~ (IData)(vlSymsp->TOP.SocLite__DOT__axi_ram__DOT__r_busy))) 
                 & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty))));
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__1(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__1\n"); );
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
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_w_valid));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_aw_valid));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_0_ar_valid));
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__0\n"); );
    // Body
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data 
        = vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last
        [vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1];
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match 
        = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value) 
           == (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1));
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
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__full = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                  & (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty = ((IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match) 
                                                   & (~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full)));
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq = 
        ((IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_wready_reg) 
         & (~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty)));
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_b_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_bvalid_reg));
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rvalid_reg));
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__1(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__1\n"); );
    // Body
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq 
        = ((IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg_arready) 
           & (~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty)));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq 
        = ((IData)(vlSymsp->TOP.SocLite__DOT__confreg_wrapper__DOT__u_confreg_awready) 
           & (~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty)));
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
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = 
        ((~ (IData)(vlSelf->__PVT__bundleOut_0_w_deq__DOT__full)) 
         & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_w_valid));
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_aw_valid));
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq 
        = ((~ (IData)(vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full)) 
           & (IData)(vlSymsp->TOP.SocLite__DOT__axi4xbar_auto_out_1_ar_valid));
}
