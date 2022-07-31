// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite_AXI4Buffer.h"

VL_ATTR_COLD void VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf__0\n"); );
    // Init
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_6;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_7;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_8;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_9;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_10;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_6;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_7;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_8;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_9;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_10;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_6;
    // Body
    __PVT__bundleOut_0_w_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[0U] 
        = __PVT__bundleOut_0_w_deq__DOT___RAND_0;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[1U] 
        = __PVT__bundleOut_0_w_deq__DOT___RAND_0;
    __PVT__bundleOut_0_w_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[0U] 
        = (0xfU & __PVT__bundleOut_0_w_deq__DOT___RAND_1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[1U] 
        = (0xfU & __PVT__bundleOut_0_w_deq__DOT___RAND_1);
    __PVT__bundleOut_0_w_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[0U] 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[1U] 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__initvar = 2U;
    __PVT__bundleOut_0_w_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value = 
        (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_3);
    __PVT__bundleOut_0_w_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_4);
    __PVT__bundleOut_0_w_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_5);
    __PVT__bundleIn_0_b_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleIn_0_b_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleIn_0_b_deq__DOT___RAND_0);
    __PVT__bundleIn_0_b_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[0U] 
        = (3U & __PVT__bundleIn_0_b_deq__DOT___RAND_1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[1U] 
        = (3U & __PVT__bundleIn_0_b_deq__DOT___RAND_1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__initvar = 2U;
    __PVT__bundleIn_0_b_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value = (1U 
                                                   & __PVT__bundleIn_0_b_deq__DOT___RAND_2);
    __PVT__bundleIn_0_b_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1 = 
        (1U & __PVT__bundleIn_0_b_deq__DOT___RAND_3);
    __PVT__bundleIn_0_b_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full 
        = (1U & __PVT__bundleIn_0_b_deq__DOT___RAND_4);
    __PVT__bundleIn_0_r_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleIn_0_r_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleIn_0_r_deq__DOT___RAND_0);
    __PVT__bundleIn_0_r_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[0U] 
        = __PVT__bundleIn_0_r_deq__DOT___RAND_1;
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[1U] 
        = __PVT__bundleIn_0_r_deq__DOT___RAND_1;
    __PVT__bundleIn_0_r_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[0U] 
        = (3U & __PVT__bundleIn_0_r_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[1U] 
        = (3U & __PVT__bundleIn_0_r_deq__DOT___RAND_2);
    __PVT__bundleIn_0_r_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[0U] 
        = (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[1U] 
        = (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__initvar = 2U;
    __PVT__bundleIn_0_r_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value = (1U 
                                                   & __PVT__bundleIn_0_r_deq__DOT___RAND_4);
    __PVT__bundleIn_0_r_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1 = 
        (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_5);
    __PVT__bundleIn_0_r_deq__DOT___RAND_6 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full 
        = (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_6);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_0);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[0U] 
        = __PVT__bundleOut_0_aw_deq__DOT___RAND_1;
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[1U] 
        = __PVT__bundleOut_0_aw_deq__DOT___RAND_1;
    __PVT__bundleOut_0_aw_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[0U] 
        = (0xffU & __PVT__bundleOut_0_aw_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[1U] 
        = (0xffU & __PVT__bundleOut_0_aw_deq__DOT___RAND_2);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[0U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[1U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_3);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[0U] 
        = (3U & __PVT__bundleOut_0_aw_deq__DOT___RAND_4);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[1U] 
        = (3U & __PVT__bundleOut_0_aw_deq__DOT___RAND_4);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[0U] 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_5);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[1U] 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_5);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_6 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[0U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_6);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[1U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_6);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_7 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[0U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[1U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__initvar = 2U;
    __PVT__bundleOut_0_aw_deq__DOT___RAND_8 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value = 
        (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_8);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_9 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_9);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_10 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_10);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_0);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[0U] 
        = __PVT__bundleOut_0_ar_deq__DOT___RAND_1;
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[1U] 
        = __PVT__bundleOut_0_ar_deq__DOT___RAND_1;
    __PVT__bundleOut_0_ar_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[0U] 
        = (0xffU & __PVT__bundleOut_0_ar_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[1U] 
        = (0xffU & __PVT__bundleOut_0_ar_deq__DOT___RAND_2);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[0U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[1U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_3);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[0U] 
        = (3U & __PVT__bundleOut_0_ar_deq__DOT___RAND_4);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[1U] 
        = (3U & __PVT__bundleOut_0_ar_deq__DOT___RAND_4);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[0U] 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_5);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[1U] 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_5);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_6 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[0U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_6);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[1U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_6);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_7 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[0U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[1U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__initvar = 2U;
    __PVT__bundleOut_0_ar_deq__DOT___RAND_8 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value = 
        (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_8);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_9 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_9);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_10 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_10);
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf_2__0(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf_2__0\n"); );
    // Init
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_6;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_7;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_8;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_9;
    IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT___RAND_10;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_6;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_7;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_8;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_9;
    IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT___RAND_10;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_0;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_1;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_2;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_3;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_4;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_5;
    IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT___RAND_6;
    // Body
    __PVT__bundleOut_0_w_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[0U] 
        = __PVT__bundleOut_0_w_deq__DOT___RAND_0;
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[1U] 
        = __PVT__bundleOut_0_w_deq__DOT___RAND_0;
    __PVT__bundleOut_0_w_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[0U] 
        = (0xfU & __PVT__bundleOut_0_w_deq__DOT___RAND_1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[1U] 
        = (0xfU & __PVT__bundleOut_0_w_deq__DOT___RAND_1);
    __PVT__bundleOut_0_w_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[0U] 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[1U] 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__initvar = 2U;
    __PVT__bundleOut_0_w_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value = 
        (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_3);
    __PVT__bundleOut_0_w_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_4);
    __PVT__bundleOut_0_w_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full 
        = (1U & __PVT__bundleOut_0_w_deq__DOT___RAND_5);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_0);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[0U] 
        = __PVT__bundleOut_0_aw_deq__DOT___RAND_1;
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[1U] 
        = __PVT__bundleOut_0_aw_deq__DOT___RAND_1;
    __PVT__bundleOut_0_aw_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[0U] 
        = (0xffU & __PVT__bundleOut_0_aw_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[1U] 
        = (0xffU & __PVT__bundleOut_0_aw_deq__DOT___RAND_2);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[0U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[1U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_3);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[0U] 
        = (3U & __PVT__bundleOut_0_aw_deq__DOT___RAND_4);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[1U] 
        = (3U & __PVT__bundleOut_0_aw_deq__DOT___RAND_4);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[0U] 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_5);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[1U] 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_5);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_6 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[0U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_6);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[1U] 
        = (0xfU & __PVT__bundleOut_0_aw_deq__DOT___RAND_6);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_7 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[0U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[1U] 
        = (7U & __PVT__bundleOut_0_aw_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__initvar = 2U;
    __PVT__bundleOut_0_aw_deq__DOT___RAND_8 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value = 
        (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_8);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_9 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_9);
    __PVT__bundleOut_0_aw_deq__DOT___RAND_10 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full 
        = (1U & __PVT__bundleOut_0_aw_deq__DOT___RAND_10);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_0);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[0U] 
        = __PVT__bundleOut_0_ar_deq__DOT___RAND_1;
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[1U] 
        = __PVT__bundleOut_0_ar_deq__DOT___RAND_1;
    __PVT__bundleOut_0_ar_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[0U] 
        = (0xffU & __PVT__bundleOut_0_ar_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[1U] 
        = (0xffU & __PVT__bundleOut_0_ar_deq__DOT___RAND_2);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[0U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[1U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_3);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[0U] 
        = (3U & __PVT__bundleOut_0_ar_deq__DOT___RAND_4);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[1U] 
        = (3U & __PVT__bundleOut_0_ar_deq__DOT___RAND_4);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[0U] 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_5);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[1U] 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_5);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_6 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[0U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_6);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[1U] 
        = (0xfU & __PVT__bundleOut_0_ar_deq__DOT___RAND_6);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_7 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[0U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[1U] 
        = (7U & __PVT__bundleOut_0_ar_deq__DOT___RAND_7);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__initvar = 2U;
    __PVT__bundleOut_0_ar_deq__DOT___RAND_8 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value = 
        (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_8);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_9 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_9);
    __PVT__bundleOut_0_ar_deq__DOT___RAND_10 = VL_RANDOM_I();
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full 
        = (1U & __PVT__bundleOut_0_ar_deq__DOT___RAND_10);
    __PVT__bundleIn_0_b_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleIn_0_b_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleIn_0_b_deq__DOT___RAND_0);
    __PVT__bundleIn_0_b_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[0U] 
        = (3U & __PVT__bundleIn_0_b_deq__DOT___RAND_1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[1U] 
        = (3U & __PVT__bundleIn_0_b_deq__DOT___RAND_1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__initvar = 2U;
    __PVT__bundleIn_0_b_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value = (1U 
                                                   & __PVT__bundleIn_0_b_deq__DOT___RAND_2);
    __PVT__bundleIn_0_b_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1 = 
        (1U & __PVT__bundleIn_0_b_deq__DOT___RAND_3);
    __PVT__bundleIn_0_b_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full 
        = (1U & __PVT__bundleIn_0_b_deq__DOT___RAND_4);
    __PVT__bundleIn_0_r_deq__DOT___RAND_0 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[0U] 
        = (0xfU & __PVT__bundleIn_0_r_deq__DOT___RAND_0);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[1U] 
        = (0xfU & __PVT__bundleIn_0_r_deq__DOT___RAND_0);
    __PVT__bundleIn_0_r_deq__DOT___RAND_1 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[0U] 
        = __PVT__bundleIn_0_r_deq__DOT___RAND_1;
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[1U] 
        = __PVT__bundleIn_0_r_deq__DOT___RAND_1;
    __PVT__bundleIn_0_r_deq__DOT___RAND_2 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[0U] 
        = (3U & __PVT__bundleIn_0_r_deq__DOT___RAND_2);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[1U] 
        = (3U & __PVT__bundleIn_0_r_deq__DOT___RAND_2);
    __PVT__bundleIn_0_r_deq__DOT___RAND_3 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[0U] 
        = (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[1U] 
        = (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_3);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__initvar = 2U;
    __PVT__bundleIn_0_r_deq__DOT___RAND_4 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value = (1U 
                                                   & __PVT__bundleIn_0_r_deq__DOT___RAND_4);
    __PVT__bundleIn_0_r_deq__DOT___RAND_5 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1 = 
        (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_5);
    __PVT__bundleIn_0_r_deq__DOT___RAND_6 = VL_RANDOM_I();
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full 
        = (1U & __PVT__bundleIn_0_r_deq__DOT___RAND_6);
}

VL_ATTR_COLD void VSocLite_AXI4Buffer___ctor_var_reset(VSocLite_AXI4Buffer* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite_AXI4Buffer___ctor_var_reset\n"); );
    // Body
    vlSelf->clock = VL_RAND_RESET_I(1);
    vlSelf->reset = VL_RAND_RESET_I(1);
    vlSelf->auto_in_aw_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_in_aw_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_in_aw_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_in_aw_bits_addr = VL_RAND_RESET_I(32);
    vlSelf->auto_in_aw_bits_len = VL_RAND_RESET_I(8);
    vlSelf->auto_in_aw_bits_size = VL_RAND_RESET_I(3);
    vlSelf->auto_in_aw_bits_burst = VL_RAND_RESET_I(2);
    vlSelf->auto_in_aw_bits_lock = VL_RAND_RESET_I(1);
    vlSelf->auto_in_aw_bits_cache = VL_RAND_RESET_I(4);
    vlSelf->auto_in_aw_bits_prot = VL_RAND_RESET_I(3);
    vlSelf->auto_in_w_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_in_w_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_in_w_bits_data = VL_RAND_RESET_I(32);
    vlSelf->auto_in_w_bits_strb = VL_RAND_RESET_I(4);
    vlSelf->auto_in_w_bits_last = VL_RAND_RESET_I(1);
    vlSelf->auto_in_b_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_in_b_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_in_b_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_in_b_bits_resp = VL_RAND_RESET_I(2);
    vlSelf->auto_in_ar_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_in_ar_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_in_ar_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_in_ar_bits_addr = VL_RAND_RESET_I(32);
    vlSelf->auto_in_ar_bits_len = VL_RAND_RESET_I(8);
    vlSelf->auto_in_ar_bits_size = VL_RAND_RESET_I(3);
    vlSelf->auto_in_ar_bits_burst = VL_RAND_RESET_I(2);
    vlSelf->auto_in_ar_bits_lock = VL_RAND_RESET_I(1);
    vlSelf->auto_in_ar_bits_cache = VL_RAND_RESET_I(4);
    vlSelf->auto_in_ar_bits_prot = VL_RAND_RESET_I(3);
    vlSelf->auto_in_r_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_in_r_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_in_r_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_in_r_bits_data = VL_RAND_RESET_I(32);
    vlSelf->auto_in_r_bits_resp = VL_RAND_RESET_I(2);
    vlSelf->auto_in_r_bits_last = VL_RAND_RESET_I(1);
    vlSelf->auto_out_aw_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_out_aw_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_out_aw_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_out_aw_bits_addr = VL_RAND_RESET_I(32);
    vlSelf->auto_out_aw_bits_len = VL_RAND_RESET_I(8);
    vlSelf->auto_out_aw_bits_size = VL_RAND_RESET_I(3);
    vlSelf->auto_out_aw_bits_burst = VL_RAND_RESET_I(2);
    vlSelf->auto_out_aw_bits_lock = VL_RAND_RESET_I(1);
    vlSelf->auto_out_aw_bits_cache = VL_RAND_RESET_I(4);
    vlSelf->auto_out_aw_bits_prot = VL_RAND_RESET_I(3);
    vlSelf->auto_out_w_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_out_w_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_out_w_bits_data = VL_RAND_RESET_I(32);
    vlSelf->auto_out_w_bits_strb = VL_RAND_RESET_I(4);
    vlSelf->auto_out_w_bits_last = VL_RAND_RESET_I(1);
    vlSelf->auto_out_b_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_out_b_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_out_b_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_out_b_bits_resp = VL_RAND_RESET_I(2);
    vlSelf->auto_out_ar_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_out_ar_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_out_ar_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_out_ar_bits_addr = VL_RAND_RESET_I(32);
    vlSelf->auto_out_ar_bits_len = VL_RAND_RESET_I(8);
    vlSelf->auto_out_ar_bits_size = VL_RAND_RESET_I(3);
    vlSelf->auto_out_ar_bits_burst = VL_RAND_RESET_I(2);
    vlSelf->auto_out_ar_bits_lock = VL_RAND_RESET_I(1);
    vlSelf->auto_out_ar_bits_cache = VL_RAND_RESET_I(4);
    vlSelf->auto_out_ar_bits_prot = VL_RAND_RESET_I(3);
    vlSelf->auto_out_r_ready = VL_RAND_RESET_I(1);
    vlSelf->auto_out_r_valid = VL_RAND_RESET_I(1);
    vlSelf->auto_out_r_bits_id = VL_RAND_RESET_I(4);
    vlSelf->auto_out_r_bits_data = VL_RAND_RESET_I(32);
    vlSelf->auto_out_r_bits_resp = VL_RAND_RESET_I(2);
    vlSelf->auto_out_r_bits_last = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data = VL_RAND_RESET_I(8);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size[__Vi0] = VL_RAND_RESET_I(3);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data = VL_RAND_RESET_I(3);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst[__Vi0] = VL_RAND_RESET_I(2);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data = VL_RAND_RESET_I(2);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock[__Vi0] = VL_RAND_RESET_I(1);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot[__Vi0] = VL_RAND_RESET_I(3);
    }
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data = VL_RAND_RESET_I(3);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__maybe_full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__ptr_match = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__empty = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_enq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__do_deq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_aw_deq__DOT__initvar = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last[__Vi0] = VL_RAND_RESET_I(1);
    }
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__maybe_full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__ptr_match = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__empty = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_enq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__do_deq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_w_deq__DOT__initvar = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp[__Vi0] = VL_RAND_RESET_I(2);
    }
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data = VL_RAND_RESET_I(2);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__maybe_full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__ptr_match = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__empty = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_enq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__do_deq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_b_deq__DOT__initvar = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data = VL_RAND_RESET_I(8);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size[__Vi0] = VL_RAND_RESET_I(3);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data = VL_RAND_RESET_I(3);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst[__Vi0] = VL_RAND_RESET_I(2);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data = VL_RAND_RESET_I(2);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock[__Vi0] = VL_RAND_RESET_I(1);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot[__Vi0] = VL_RAND_RESET_I(3);
    }
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data = VL_RAND_RESET_I(3);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__maybe_full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__ptr_match = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__empty = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_enq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__do_deq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleOut_0_ar_deq__DOT__initvar = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id[__Vi0] = VL_RAND_RESET_I(4);
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data = VL_RAND_RESET_I(4);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp[__Vi0] = VL_RAND_RESET_I(2);
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data = VL_RAND_RESET_I(2);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last[__Vi0] = VL_RAND_RESET_I(1);
    }
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__maybe_full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__ptr_match = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__empty = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__full = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_enq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__do_deq = VL_RAND_RESET_I(1);
    vlSelf->__PVT__bundleIn_0_r_deq__DOT__initvar = VL_RAND_RESET_I(32);
    vlSelf->__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0 = 0;
    vlSelf->__Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0 = VL_RAND_RESET_I(4);
    vlSelf->__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0 = 0;
    vlSelf->__Vdly__bundleOut_0_aw_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__bundleIn_0_b_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0 = 0;
    vlSelf->__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0 = 0;
    vlSelf->__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0 = 0;
    vlSelf->__Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0 = VL_RAND_RESET_I(4);
    vlSelf->__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0 = 0;
    vlSelf->__Vdly__bundleOut_0_ar_deq__DOT__value_1 = VL_RAND_RESET_I(1);
    vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0 = 0;
    vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0 = 0;
    vlSelf->__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0 = 0;
    vlSelf->__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0 = VL_RAND_RESET_I(32);
    vlSelf->__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0 = 0;
    vlSelf->__Vdly__bundleIn_0_r_deq__DOT__value_1 = VL_RAND_RESET_I(1);
}
