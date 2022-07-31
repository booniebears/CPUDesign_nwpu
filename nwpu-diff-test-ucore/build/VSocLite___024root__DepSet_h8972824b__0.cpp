// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite___024root.h"

extern const VlUnpacked<CData/*1:0*/, 8> VSocLite__ConstPool__TABLE_h1938ab40_0;
extern const VlUnpacked<CData/*2:0*/, 64> VSocLite__ConstPool__TABLE_h724c8c88_0;

VL_INLINE_OPT void VSocLite___024root___sequent__TOP__2(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___sequent__TOP__2\n"); );
    // Init
    CData/*5:0*/ __Vtableidx9;
    CData/*2:0*/ __Vtableidx10;
    // Body
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__temp = 0ULL;
    }
    if ((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state))) {
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__start) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__temp 
                = (((QData)((IData)(VL_DIVS_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))) 
                    << 0x20U) | (QData)((IData)(VL_MODDIVS_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))));
        }
    }
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__temp = 0ULL;
    }
    if ((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state))) {
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__start) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__temp 
                = (((QData)((IData)(VL_DIV_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))) 
                    << 0x20U) | (QData)((IData)(VL_MODDIV_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))));
        }
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__maddu_result 
        = ((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI)) 
             << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO))) 
           + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__msubu_result 
        = ((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI)) 
             << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO))) 
           - vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_multiplier__DOT__B_reg 
        = ((IData)(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                     >> 0xaU) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                 >> 0x1fU))) ? (- vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
            : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_multiplier__DOT__A_reg 
        = ((IData)(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                     >> 0xaU) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                 >> 0x1fU))) ? (- vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
            : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__has_int 
        = (((0U != ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_IP) 
                    & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IM))) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IE)) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_EXL)));
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Compare = 0xffffffffU;
    } else if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__mtc0_we) 
                & (0x58U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Compare 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U];
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_state 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset)) 
           & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid) 
               & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)) 
              & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfffeU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
               == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
               [0U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                         == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                         [0U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                        [0U])));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfffdU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [1U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [1U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [1U])) << 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfffbU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [2U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [2U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [2U])) << 2U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfff7U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [3U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [3U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [3U])) << 3U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xffefU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [4U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [4U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [4U])) << 4U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xffdfU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [5U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [5U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [5U])) << 5U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xffbfU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [6U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [6U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [6U])) << 6U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xff7fU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [7U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [7U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [7U])) << 7U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfeffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [8U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [8U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [8U])) << 8U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfdffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [9U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [9U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [9U])) << 9U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xfbffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xaU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xaU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xaU])) << 0xaU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xf7ffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xbU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xbU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xbU])) << 0xbU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xefffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xcU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xcU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xcU])) << 0xcU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xdfffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xdU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xdU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xdU])) << 0xdU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0xbfffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xeU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xeU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xeU])) << 0xeU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match 
        = ((0x7fffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xfU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xfU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xfU])) << 0xfU));
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_inst = 0U;
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index;
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_inst = 0U;
        } else if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_to_m1s_valid) 
                    & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_allowin))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_inst 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_inst;
        }
    }
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_state) {
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_state) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_nextstate 
                = (1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit)));
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_nextstate 
            = (1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit)));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_ready_go 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_ex 
        = ((~ ((7U < (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                      >> 0x1cU)) & (0xcU > (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                            >> 0x1cU)))) 
           & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit) 
              & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_found)) 
                 | (~ (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                         >> 0xcU) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_v1)) 
                       | ((~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                              >> 0xcU)) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_v0)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__start 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalid) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_dividend_tvalid));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__start 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalidu) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_dividend_tvalidu));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index 
        = (((((((((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
                  | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                 | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                | (8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
               | (0x10U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
              | (0x20U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
             | (0x40U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
            | (0x80U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)))
            ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                ? 0U : ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                         ? 1U : ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                  ? 2U : ((8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                           ? 3U : (
                                                   (0x10U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                    ? 4U
                                                    : 
                                                   ((0x20U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                     ? 5U
                                                     : 
                                                    ((0x40U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                      ? 6U
                                                      : 7U)))))))
            : (((((((((0x100U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)) 
                      | (0x200U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                     | (0x400U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                    | (0x800U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                   | (0x1000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                  | (0x2000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                 | (0x4000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))) 
                | (0x8000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match)))
                ? ((0x100U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                    ? 8U : ((0x200U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                             ? 9U : ((0x400U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                      ? 0xaU : ((0x800U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                 ? 0xbU
                                                 : 
                                                ((0x1000U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                  ? 0xcU
                                                  : 
                                                 ((0x2000U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                   ? 0xdU
                                                   : 
                                                  ((0x4000U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))
                                                    ? 0xeU
                                                    : 0xfU)))))))
                : 0U));
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit = 0U;
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__next_state;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__next_state;
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] = 0U;
        } else if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_valid) 
                    & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_allowin))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[0U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[1U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[2U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[3U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[4U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[5U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[6U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[7U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[8U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[9U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[0xaU];
        }
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit_wr) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit 
                = (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit));
        }
    }
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) 
         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_flush))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op = 0U;
    } else if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op 
            = (1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                     >> 0xaU));
    }
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_inst = 0U;
    } else {
        if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__mtc0_we) 
             & (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr)))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index 
                = (0xfU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U]);
        } else if (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                     >> 9U) & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index;
        }
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_inst = 0U;
        } else if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_valid) 
                    & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_allowin))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_inst 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U];
        }
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfffeU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
               == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
               [0U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                         == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                         [0U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                        [0U])));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfffdU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [1U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [1U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [1U])) << 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfffbU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [2U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [2U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [2U])) << 2U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfff7U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [3U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [3U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [3U])) << 3U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xffefU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [4U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [4U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [4U])) << 4U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xffdfU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [5U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [5U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [5U])) << 5U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xffbfU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [6U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [6U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [6U])) << 6U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xff7fU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [7U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [7U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [7U])) << 7U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfeffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [8U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [8U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [8U])) << 8U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfdffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [9U]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                          == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                          [9U]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                         [9U])) << 9U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xfbffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xaU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xaU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xaU])) << 0xaU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xf7ffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xbU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xbU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xbU])) << 0xbU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xefffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xcU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xcU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xcU])) << 0xcU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xdfffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xdU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xdU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xdU])) << 0xdU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0xbfffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xeU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xeU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xeU])) << 0xeU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match 
        = ((0x7fffU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2 
                == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                [0xfU]) & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid) 
                            == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                            [0xfU]) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                           [0xfU])) << 0xfU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__next_state 
        = (((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state)) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__start))
            ? 4U : (((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state)) 
                     & (0xaU > (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__i)))
                     ? 4U : ((0xaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__i))
                              ? 5U : 0U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__next_state 
        = (((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state)) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__start))
            ? 3U : (((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state)) 
                     & (0xaU > (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__i)))
                     ? 3U : ((0xaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__i))
                              ? 5U : 0U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__div_nextstate 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__div_state)
            ? ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__div_state) 
               & (IData)((0U != (0x300U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU]))))
            : (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                 >> 8U) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalid)) 
               | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                   >> 9U) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalidu))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
        = ((0x80U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])
            ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] 
                << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] 
                            >> 0x12U)) : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U]);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isDiv 
        = (IData)((0U != (0x300U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isMul 
        = (IData)((0U != (0x7c0c00U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_rs_eq_rt 
        = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
           == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U]);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
        = ((0x100U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])
            ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] 
                << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] 
                            >> 0x12U)) : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U]);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest 
        = (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                    & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_valid)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_en 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_busy 
        = ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid) 
             & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_isUncache))) 
            & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_is_DCacheInst))) 
           & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)) 
              | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit) 
                 & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index 
        = (((((((((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
                  | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                 | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                | (8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
               | (0x10U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
              | (0x20U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
             | (0x40U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
            | (0x80U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)))
            ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                ? 0U : ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                         ? 1U : ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                  ? 2U : ((8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                           ? 3U : (
                                                   (0x10U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                    ? 4U
                                                    : 
                                                   ((0x20U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                     ? 5U
                                                     : 
                                                    ((0x40U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                      ? 6U
                                                      : 7U)))))))
            : (((((((((0x100U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)) 
                      | (0x200U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                     | (0x400U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                    | (0x800U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                   | (0x1000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                  | (0x2000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                 | (0x4000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))) 
                | (0x8000U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match)))
                ? ((0x100U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                    ? 8U : ((0x200U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                             ? 9U : ((0x400U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                      ? 0xaU : ((0x800U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                 ? 0xbU
                                                 : 
                                                ((0x1000U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                  ? 0xcU
                                                  : 
                                                 ((0x2000U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                   ? 0xdU
                                                   : 
                                                  ((0x4000U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))
                                                    ? 0xeU
                                                    : 0xfU)))))))
                : 0U));
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] = 0U;
    } else if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] = 0U;
    } else if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_valid) 
                & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_allowin))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[1U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[2U];
    }
    __Vtableidx10 = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isMul) 
                      << 2U) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mul_state));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mul_nextstate 
        = VSocLite__ConstPool__TABLE_h1938ab40_0[__Vtableidx10];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_ready_go 
        = (1U & ((((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isMul)) 
                   & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isDiv))) 
                  | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isDiv) 
                     & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__m_axis_dout_tvalid) 
                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__m_axis_dout_tvalidu)))) 
                 | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isMul) 
                    & (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mul_state)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken 
        = (1U & (((((((((0U != (0x780U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U])) 
                        | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                            >> 0xcU) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_rs_eq_rt))) 
                       | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                           >> 0xbU) & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_rs_eq_rt)))) 
                      | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                          >> 6U) & (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                                       >> 0x1fU)))) 
                     | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                         >> 5U) & VL_LTS_III(32, 0U, 
                                             vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U]))) 
                    | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                        >> 4U) & VL_GTES_III(32, 0U, 
                                             vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U]))) 
                   | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                       >> 3U) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                                 >> 0x1fU))) | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                 >> 2U) 
                                                & (~ 
                                                   (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                                                    >> 0x1fU)))) 
                 | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                     >> 1U) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                               >> 0x1fU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__trap_ex 
        = ((0x400000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
            ? ((0x200000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                ? ((~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                       >> 0x14U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                     == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))
                : ((0x100000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                    ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                       < vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                    : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                       != vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)))
            : ((0x200000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                ? ((0x100000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                    ? VL_LTS_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                    : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                       >= vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))
                : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                    >> 0x14U) & VL_GTES_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2))));
    if ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
         >> 0x1fU)) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clo_out 
            = ((0x40000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                ? ((0x20000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                    ? ((0x10000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                        ? ((0x8000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                            ? ((0x4000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                ? ((0x2000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                    ? ((0x1000000U 
                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                        ? ((0x800000U 
                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                            ? ((0x400000U 
                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                ? (
                                                   (0x200000U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                    ? 
                                                   ((0x100000U 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                     ? 
                                                    ((0x80000U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                      ? 
                                                     ((0x40000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                       ? 
                                                      ((0x20000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                        ? 
                                                       ((0x10000U 
                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                         ? 
                                                        ((0x8000U 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                          ? 
                                                         ((0x4000U 
                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                           ? 
                                                          ((0x2000U 
                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                            ? 
                                                           ((0x1000U 
                                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                             ? 
                                                            ((0x800U 
                                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                              ? 
                                                             ((0x400U 
                                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                               ? 
                                                              ((0x200U 
                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                ? 
                                                               ((0x100U 
                                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                 ? 
                                                                ((0x80U 
                                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                  ? 
                                                                 ((0x40U 
                                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                   ? 
                                                                  ((0x20U 
                                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                    ? 
                                                                   ((0x10U 
                                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                     ? 
                                                                    ((8U 
                                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                      ? 
                                                                     ((4U 
                                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                       ? 
                                                                      ((2U 
                                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                        ? 
                                                                       ((1U 
                                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                         ? 0x20U
                                                                         : 0x1fU)
                                                                        : 0x1eU)
                                                                       : 0x1dU)
                                                                      : 0x1cU)
                                                                     : 0x1bU)
                                                                    : 0x1aU)
                                                                   : 0x19U)
                                                                  : 0x18U)
                                                                 : 0x17U)
                                                                : 0x16U)
                                                               : 0x15U)
                                                              : 0x14U)
                                                             : 0x13U)
                                                            : 0x12U)
                                                           : 0x11U)
                                                          : 0x10U)
                                                         : 0xfU)
                                                        : 0xeU)
                                                       : 0xdU)
                                                      : 0xcU)
                                                     : 0xbU)
                                                    : 0xaU)
                                                : 9U)
                                            : 8U) : 7U)
                                    : 6U) : 5U) : 4U)
                        : 3U) : 2U) : 1U);
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clz_out = 0U;
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clo_out = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clz_out 
            = ((0x40000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                ? 1U : ((0x20000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                         ? 2U : ((0x10000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                  ? 3U : ((0x8000000U 
                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                           ? 4U : (
                                                   (0x4000000U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                    ? 5U
                                                    : 
                                                   ((0x2000000U 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                     ? 6U
                                                     : 
                                                    ((0x1000000U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                      ? 7U
                                                      : 
                                                     ((0x800000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                       ? 8U
                                                       : 
                                                      ((0x400000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                        ? 9U
                                                        : 
                                                       ((0x200000U 
                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                         ? 0xaU
                                                         : 
                                                        ((0x100000U 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                          ? 0xbU
                                                          : 
                                                         ((0x80000U 
                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                           ? 0xcU
                                                           : 
                                                          ((0x40000U 
                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                            ? 0xdU
                                                            : 
                                                           ((0x20000U 
                                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                             ? 0xeU
                                                             : 
                                                            ((0x10000U 
                                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                              ? 0xfU
                                                              : 
                                                             ((0x8000U 
                                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                               ? 0x10U
                                                               : 
                                                              ((0x4000U 
                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                ? 0x11U
                                                                : 
                                                               ((0x2000U 
                                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                 ? 0x12U
                                                                 : 
                                                                ((0x1000U 
                                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                  ? 0x13U
                                                                  : 
                                                                 ((0x800U 
                                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                   ? 0x14U
                                                                   : 
                                                                  ((0x400U 
                                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                    ? 0x15U
                                                                    : 
                                                                   ((0x200U 
                                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                     ? 0x16U
                                                                     : 
                                                                    ((0x100U 
                                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                      ? 0x17U
                                                                      : 
                                                                     ((0x80U 
                                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                       ? 0x18U
                                                                       : 
                                                                      ((0x40U 
                                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                        ? 0x19U
                                                                        : 
                                                                       ((0x20U 
                                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                         ? 0x1aU
                                                                         : 
                                                                        ((0x10U 
                                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                          ? 0x1bU
                                                                          : 
                                                                         ((8U 
                                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                           ? 0x1cU
                                                                           : 
                                                                          ((4U 
                                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                            ? 0x1dU
                                                                            : 
                                                                           ((2U 
                                                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                             ? 0x1eU
                                                                             : 
                                                                            ((1U 
                                                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                                              ? 0x1fU
                                                                              : 0x20U)))))))))))))))))))))))))))))));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__or_result 
        = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
           | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mult_result 
        = ((1U & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                   >> 0xaU) & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                ^ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2) 
                               >> 0x1fU))) ? (- vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result)
            : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result 
        = ((0x20000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
            ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
               - vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
            : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
               + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_busy 
        = (1U & (((~ ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state)) 
                      | (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state)))) 
                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_busy)) 
                 | (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__fs_valid) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__madd_result 
        = ((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI)) 
             << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO))) 
           + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mult_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__msub_result 
        = ((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI)) 
             << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO))) 
           - vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mult_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__Overflow_ex 
        = (1U & ((IData)((0U != (6U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U])))
                  ? ((((~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                           >> 0x1fU)) & (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                            >> 0x1fU))) 
                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result 
                         >> 0x1fU)) | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2) 
                                        >> 0x1fU) & 
                                       (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result 
                                           >> 0x1fU))))
                  : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                     & ((((~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                              >> 0x1fU)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                            >> 0x1fU)) 
                         & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result 
                            >> 0x1fU)) | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                            >> 0x1fU) 
                                           & (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                                 >> 0x1fU))) 
                                          & (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result 
                                                >> 0x1fU)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__temp_alu_result 
        = ((IData)((0U != (0x30000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])))
            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result
            : ((0x40000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                ? VL_LTS_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                    >> 0x1fU) ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                 < vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                    : ((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                        ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                        : ((2U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                            ? (~ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__or_result)
                            : ((4U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__or_result
                                : ((8U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                    ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                       ^ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                                    : ((0x80U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                        ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                           << 0x10U)
                                        : ((0x10U & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                            ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                               << (0x1fU 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1))
                                            : ((0x20U 
                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                                   >> 
                                                   (0x1fU 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1))
                                                : (
                                                   (0x40U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                    ? 
                                                   VL_SHIFTRS_III(32,32,5, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2, 
                                                                  (0x1fU 
                                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1))
                                                    : 
                                                   ((0x1000U 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI
                                                     : 
                                                    ((0x2000U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO
                                                      : 
                                                     ((IData)(
                                                              (0U 
                                                               != 
                                                               (0x30000U 
                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])))
                                                       ? 
                                                      ((0x20000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                        ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clz_out
                                                        : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clo_out)
                                                       : 
                                                      ((0x400000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                        ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mult_result)
                                                        : 
                                                       ((0x800000U 
                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                         ? 
                                                        ((0U 
                                                          != vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                          ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2
                                                          : 0U)
                                                         : 
                                                        ((0x1000000U 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                                          ? 
                                                         ((0U 
                                                           == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                                           ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2
                                                           : 0U)
                                                          : 0U)))))))))))))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_ready_go 
        = (1U & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                  >> 0x14U) | (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_busy))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type 
        = ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
            >> 0x1fU) ? ((0x40000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                          ? ((0x20000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                              ? ((0x10000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                  ? ((0x8000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                      ? 0U : ((0x4000000U 
                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                               ? 2U
                                               : 0U))
                                  : ((0x8000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                      ? 0U : ((0x4000000U 
                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                               ? 2U
                                               : 0U)))
                              : ((0x10000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                  ? ((0x8000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                      ? 0U : ((0x4000000U 
                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                               ? 2U
                                               : 0U))
                                  : ((0x8000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                      ? 0U : ((0x4000000U 
                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                               ? 2U
                                               : 0U))))
                          : 0U) : ((0x40000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                    ? ((0x20000000U 
                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                        ? 0U : ((0x10000000U 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                 ? 0U
                                                 : 
                                                ((0x8000000U 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                  ? 0U
                                                  : 
                                                 ((0x4000000U 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                   ? 
                                                  ((0x2000000U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                    ? 
                                                   ((0x1000000U 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                     ? 1U
                                                     : 
                                                    ((0x800000U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                      ? 
                                                     ((0x400000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                       ? 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 
                                                       ((0x20U 
                                                         == 
                                                         (0x3fU 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                                         ? 2U
                                                         : 
                                                        ((0x28U 
                                                          == 
                                                          (0x3fU 
                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                                          ? 2U
                                                          : 1U)))
                                                       : 1U)
                                                      : 
                                                     ((0x400000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                       ? 1U
                                                       : 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 
                                                       ((0x20U 
                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                         ? 
                                                        ((0x10U 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                          ? 2U
                                                          : 
                                                         ((8U 
                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                           ? 1U
                                                           : 
                                                          ((4U 
                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                            ? 
                                                           ((2U 
                                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                             ? 1U
                                                             : 
                                                            ((1U 
                                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                              ? 1U
                                                              : 2U))
                                                            : 1U)))
                                                         : 
                                                        ((0x10U 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                          ? 
                                                         ((8U 
                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                           ? 1U
                                                           : 
                                                          ((4U 
                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                            ? 1U
                                                            : 
                                                           ((2U 
                                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                             ? 2U
                                                             : 
                                                            ((1U 
                                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                              ? 2U
                                                              : 1U))))
                                                          : 
                                                         ((8U 
                                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                           ? 
                                                          ((4U 
                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                            ? 2U
                                                            : 1U)
                                                           : 2U)))))))
                                                    : 
                                                   ((0x1000000U 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                     ? 
                                                    ((0x800000U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                      ? 1U
                                                      : 
                                                     ((0x400000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                       ? 1U
                                                       : 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 2U)))
                                                     : 
                                                    ((0x800000U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                      ? 
                                                     ((0x400000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                       ? 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 2U)
                                                       : 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 2U))
                                                      : 
                                                     ((0x400000U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                       ? 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 2U)
                                                       : 
                                                      ((0x200000U 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        ? 1U
                                                        : 2U)))))
                                                   : 0U))))
                                    : ((0x20000000U 
                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                        ? 0U : ((0x10000000U 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                 ? 0U
                                                 : 
                                                ((0x8000000U 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                  ? 0U
                                                  : 
                                                 ((0x4000000U 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                   ? 0U
                                                   : 
                                                  ((1U 
                                                    == 
                                                    (0x3fU 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                                    ? 2U
                                                    : 0U)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xfffffff8U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((2U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0xbU))) << 2U) | 
              (((1U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                 >> 0xbU))) << 1U) 
               | (0U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0xbU))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xffffffc7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((5U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0xbU))) << 5U) | 
              (((4U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                 >> 0xbU))) << 4U) 
               | ((3U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 3U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xfffffe3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((8U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0xbU))) << 8U) | 
              (((7U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                 >> 0xbU))) << 7U) 
               | ((6U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 6U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xfffff1ffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0xbU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0xbU))) << 0xbU) 
              | (((0xaU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0xbU))) << 0xaU) 
                 | ((9U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0xbU))) << 9U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xffff8fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0xeU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0xbU))) << 0xeU) 
              | (((0xdU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0xbU))) << 0xdU) 
                 | ((0xcU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0xbU))) << 0xcU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xfffc7fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0x11U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 0x11U) 
              | (((0x10U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0xbU))) << 0x10U) 
                 | ((0xfU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0xbU))) << 0xfU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xffe3ffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0x14U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 0x14U) 
              | (((0x13U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0xbU))) << 0x13U) 
                 | ((0x12U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0xbU))) 
                    << 0x12U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xff1fffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0x17U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 0x17U) 
              | (((0x16U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0xbU))) << 0x16U) 
                 | ((0x15U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0xbU))) 
                    << 0x15U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xf8ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0x1aU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 0x1aU) 
              | (((0x19U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0xbU))) << 0x19U) 
                 | ((0x18U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0xbU))) 
                    << 0x18U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0xc7ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0x1dU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 0x1dU) 
              | (((0x1cU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0xbU))) << 0x1cU) 
                 | ((0x1bU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0xbU))) 
                    << 0x1bU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d 
        = ((0x3fffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
           | (((0x1fU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0xbU))) << 0x1fU) 
              | ((0x1eU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0xbU))) << 0x1eU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xfffffff8U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((2U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0x15U))) << 2U) 
              | (((1U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 1U) 
                 | (0U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                    >> 0x15U))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xffffffc7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((5U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0x15U))) << 5U) 
              | (((4U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 4U) 
                 | ((3U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x15U))) << 3U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xfffffe3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((8U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0x15U))) << 8U) 
              | (((7U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 7U) 
                 | ((6U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x15U))) << 6U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xfffff1ffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0xbU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0x15U))) << 0xbU) 
              | (((0xaU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x15U))) << 0xaU) 
                 | ((9U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x15U))) << 9U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xffff8fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0xeU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0x15U))) << 0xeU) 
              | (((0xdU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x15U))) << 0xdU) 
                 | ((0xcU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0x15U))) 
                    << 0xcU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xfffc7fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0x11U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 0x11U) 
              | (((0x10U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x15U))) << 0x10U) 
                 | ((0xfU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0x15U))) 
                    << 0xfU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xffe3ffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0x14U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 0x14U) 
              | (((0x13U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x15U))) << 0x13U) 
                 | ((0x12U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x15U))) 
                    << 0x12U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xff1fffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0x17U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 0x17U) 
              | (((0x16U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x15U))) << 0x16U) 
                 | ((0x15U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x15U))) 
                    << 0x15U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xf8ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0x1aU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 0x1aU) 
              | (((0x19U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x15U))) << 0x19U) 
                 | ((0x18U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x15U))) 
                    << 0x18U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0xc7ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0x1dU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 0x1dU) 
              | (((0x1cU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x15U))) << 0x1cU) 
                 | ((0x1bU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x15U))) 
                    << 0x1bU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
        = ((0x3fffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
           | (((0x1fU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x15U))) << 0x1fU) 
              | ((0x1eU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x15U))) << 0x1eU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xfffffff8U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((2U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 6U))) << 2U) | (
                                                   ((1U 
                                                     == 
                                                     (0x1fU 
                                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                         >> 6U))) 
                                                    << 1U) 
                                                   | (0U 
                                                      == 
                                                      (0x1fU 
                                                       & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                          >> 6U))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xffffffc7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((5U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 6U))) << 5U) | (
                                                   ((4U 
                                                     == 
                                                     (0x1fU 
                                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                         >> 6U))) 
                                                    << 4U) 
                                                   | ((3U 
                                                       == 
                                                       (0x1fU 
                                                        & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                           >> 6U))) 
                                                      << 3U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xfffffe3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((8U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 6U))) << 8U) | (
                                                   ((7U 
                                                     == 
                                                     (0x1fU 
                                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                         >> 6U))) 
                                                    << 7U) 
                                                   | ((6U 
                                                       == 
                                                       (0x1fU 
                                                        & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                           >> 6U))) 
                                                      << 6U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xfffff1ffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0xbU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 6U))) << 0xbU) 
              | (((0xaU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 6U))) << 0xaU) 
                 | ((9U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 6U))) << 9U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xffff8fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0xeU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 6U))) << 0xeU) 
              | (((0xdU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 6U))) << 0xdU) 
                 | ((0xcU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 6U))) << 0xcU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xfffc7fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0x11U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 6U))) << 0x11U) 
              | (((0x10U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 6U))) << 0x10U) 
                 | ((0xfU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 6U))) << 0xfU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xffe3ffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0x14U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 6U))) << 0x14U) 
              | (((0x13U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 6U))) << 0x13U) 
                 | ((0x12U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 6U))) << 0x12U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xff1fffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0x17U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 6U))) << 0x17U) 
              | (((0x16U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 6U))) << 0x16U) 
                 | ((0x15U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 6U))) << 0x15U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xf8ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0x1aU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 6U))) << 0x1aU) 
              | (((0x19U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 6U))) << 0x19U) 
                 | ((0x18U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 6U))) << 0x18U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0xc7ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0x1dU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 6U))) << 0x1dU) 
              | (((0x1cU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 6U))) << 0x1cU) 
                 | ((0x1bU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 6U))) << 0x1bU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d 
        = ((0x3fffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d) 
           | (((0x1fU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 6U))) << 0x1fU) 
              | ((0x1eU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 6U))) << 0x1eU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xfffffff8U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((2U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0x10U))) << 2U) 
              | (((1U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 1U) 
                 | (0U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                    >> 0x10U))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xffffffc7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((5U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0x10U))) << 5U) 
              | (((4U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 4U) 
                 | ((3U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x10U))) << 3U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xfffffe3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((8U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                >> 0x10U))) << 8U) 
              | (((7U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 7U) 
                 | ((6U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x10U))) << 6U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xfffff1ffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0xbU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0x10U))) << 0xbU) 
              | (((0xaU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x10U))) << 0xaU) 
                 | ((9U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x10U))) << 9U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xffff8fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0xeU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                  >> 0x10U))) << 0xeU) 
              | (((0xdU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x10U))) << 0xdU) 
                 | ((0xcU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0x10U))) 
                    << 0xcU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xfffc7fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0x11U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 0x11U) 
              | (((0x10U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x10U))) << 0x10U) 
                 | ((0xfU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0x10U))) 
                    << 0xfU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xffe3ffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0x14U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 0x14U) 
              | (((0x13U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x10U))) << 0x13U) 
                 | ((0x12U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x10U))) 
                    << 0x12U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xff1fffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0x17U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 0x17U) 
              | (((0x16U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x10U))) << 0x16U) 
                 | ((0x15U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x10U))) 
                    << 0x15U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xf8ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0x1aU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 0x1aU) 
              | (((0x19U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x10U))) << 0x19U) 
                 | ((0x18U == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x10U))) 
                    << 0x18U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0xc7ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0x1dU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 0x1dU) 
              | (((0x1cU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                      >> 0x10U))) << 0x1cU) 
                 | ((0x1bU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x10U))) 
                    << 0x1bU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
        = ((0x3fffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
           | (((0x1fU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                   >> 0x10U))) << 0x1fU) 
              | ((0x1eU == (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x10U))) << 0x1eU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffffffffffff8ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | (IData)((IData)((((2U == (0x3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                               << 2U) | (((1U == (0x3fU 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                          << 1U) | 
                                         (0U == (0x3fU 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffffffffffffc7ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((5U == (0x3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((4U == (0x3fU 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (3U == (0x3fU 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 3U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffffffffffe3fULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((8U == (0x3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((7U == (0x3fU 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (6U == (0x3fU 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 6U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffffffffff1ffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0xbU == (0x3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0xaU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (9U == (0x3fU 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 9U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffffffffff8fffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0xeU == (0x3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0xdU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0xcU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0xcU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffffffffc7fffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x11U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x10U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0xfU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0xfU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffffffffe3ffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x14U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x13U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x12U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x12U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffffffff1fffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x17U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x16U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x15U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x15U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffffff8ffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x1aU == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x19U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x18U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x18U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffffffc7ffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x1dU == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x1cU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x1bU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x1bU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffffe3fffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x20U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x1fU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x1eU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x1eU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffff1ffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x23U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x22U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x21U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x21U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffff8fffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x26U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x25U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x24U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x24U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfffffc7fffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x29U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x28U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x27U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x27U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffffe3ffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x2cU == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x2bU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x2aU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x2aU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffff1fffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x2fU == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x2eU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x2dU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x2dU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfff8ffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x32U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x31U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x30U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x30U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xffc7ffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x35U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x34U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x33U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x33U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xfe3fffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x38U == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x37U == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x36U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x36U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0xf1ffffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x3bU == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x3aU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x39U == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x39U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
        = ((0x8fffffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d) 
           | ((QData)((IData)((((0x3eU == (0x3fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                << 2U) | (((0x3dU == 
                                            (0x3fU 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])) 
                                           << 1U) | 
                                          (0x3cU == 
                                           (0x3fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])))))) 
              << 0x3cU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffffffffffff8ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | (IData)((IData)((((2U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                       >> 0x1aU)) << 2U) 
                              | (((1U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                          >> 0x1aU)) 
                                  << 1U) | (0U == (
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                   >> 0x1aU)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffffffffffffc7ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((5U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x1aU)) 
                                << 2U) | (((4U == (
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                   >> 0x1aU)) 
                                           << 1U) | 
                                          (3U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x1aU)))))) 
              << 3U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffffffffffe3fULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((8U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                        >> 0x1aU)) 
                                << 2U) | (((7U == (
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                   >> 0x1aU)) 
                                           << 1U) | 
                                          (6U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x1aU)))))) 
              << 6U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffffffffff1ffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0xbU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                          >> 0x1aU)) 
                                << 2U) | (((0xaU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (9U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x1aU)))))) 
              << 9U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffffffffff8fffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0xeU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                          >> 0x1aU)) 
                                << 2U) | (((0xdU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0xcU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0xcU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffffffffc7fffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x11U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x10U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0xfU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0xfU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffffffffe3ffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x14U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x13U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x12U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x12U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffffffff1fffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x17U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x16U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x15U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x15U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffffff8ffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x1aU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x19U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x18U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x18U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffffffc7ffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x1dU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x1cU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x1bU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x1bU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffffe3fffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x20U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x1fU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x1eU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x1eU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffff1ffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x23U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x22U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x21U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x21U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffff8fffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x26U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x25U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x24U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x24U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfffffc7fffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x29U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x28U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x27U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x27U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffffe3ffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x2cU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x2bU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x2aU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x2aU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffff1fffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x2fU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x2eU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x2dU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x2dU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfff8ffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x32U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x31U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x30U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x30U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xffc7ffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x35U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x34U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x33U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x33U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xfe3fffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x38U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x37U == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x36U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x36U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0xf1ffffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x3bU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x3aU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x39U == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x39U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
        = ((0x8fffffffffffffffULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
           | ((QData)((IData)((((0x3eU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                           >> 0x1aU)) 
                                << 2U) | (((0x3dU == 
                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                             >> 0x1aU)) 
                                           << 1U) | 
                                          (0x3cU == 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x1aU)))))) 
              << 0x3cU));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result 
        = ((0x800000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])
            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U]
            : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__temp_alu_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_allowin 
        = (1U & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_valid)) 
                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_ready_go)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_to_ws_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_valid) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_ready_go));
    __Vtableidx9 = ((0x3eU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                              >> 0xfU)) | (1U & (IData)(
                                                        (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                         >> 0x2fU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type 
        = VSocLite__ConstPool__TABLE_h724c8c88_0[__Vtableidx9];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0xdU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbp 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 8U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwi 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 2U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwr 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 6U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbr 
        = (1U & (((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                           >> 0x10U)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                 >> 1U))) 
                 & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                    >> 0x19U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clo 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 0x21U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clz 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 0x20U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_madd 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_maddu 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 1U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msub 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 4U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msubu 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 5U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mul 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x1cU)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 2U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movn 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0xbU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movz 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0xaU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_and 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x24U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_or 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x25U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_nor 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x27U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srav 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 7U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mult 
        = (1U & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                   & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                              >> 0x18U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_multu 
        = (1U & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                   & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                              >> 0x19U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_div 
        = (1U & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                   & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                              >> 0x1aU))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_divu 
        = (1U & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                   & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                              >> 0x1bU))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_subu 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x23U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_slt 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x2aU))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sltu 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x2bU))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfhi 
        = (1U & (((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                    & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                               >> 0x10U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mflo 
        = (1U & (((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                    & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                               >> 0x12U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d) 
                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_addu 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x21U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_xor 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x26U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sllv 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 4U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srlv 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 6U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x22U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 0x20U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtc0 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d 
                                        >> 4U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_eret 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 0x18U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0xcU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0x34U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0x30U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0x31U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlt 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0x32U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltu 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0x33U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tne 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0x36U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sync 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                 & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                            >> 0xfU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_wait 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0x10U)) & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                                                >> 0x20U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sra 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 3U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sll 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d)) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srl 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                  & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                             >> 2U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mthi 
        = (1U & (((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                    & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                               >> 0x11U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtlo 
        = (1U & (((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                    & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                               >> 0x13U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 9U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 0xbU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 0xcU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 8U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 0xaU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 0xeU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 1U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 7U)) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 6U)) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr 
        = (1U & (((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                    & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                               >> 8U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 0x11U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 1U)) & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d 
                                     >> 0x10U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr 
        = (1U & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d) 
                   & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d 
                              >> 9U))) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d) 
                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__load_op 
        = (IData)((0ULL != (0x7f00000000ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui 
        = (1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                          >> 0xfU)) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d));
    if ((0x40000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
            = ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                << 0x18U) | ((0xff0000U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                                           << 0x10U)) 
                             | ((0xff00U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                                            << 8U)) 
                                | (0xffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U]))));
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen 
            = ((0U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))
                ? 1U : ((1U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))
                         ? 2U : ((2U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))
                                  ? 4U : 8U)));
    } else if ((0x80000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
            = ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                << 0x10U) | (0xffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U]));
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen 
            = ((0U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))
                ? 3U : 0xcU);
    } else if ((0x100000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])) {
        if ((0U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                   >> 0x18U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 1U;
        } else if ((1U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                   >> 0x10U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 3U;
        } else if ((2U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                   >> 8U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 7U;
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 0xfU;
        }
    } else if ((0x200000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])) {
        if ((0U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U];
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 0xfU;
        } else if ((1U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                   << 8U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 0xeU;
        } else if ((2U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                   << 0x10U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 0xcU;
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U] 
                   << 0x18U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 8U;
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen = 0xfU;
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADES_ex 
        = (1U & (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                   >> 0x13U) & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result) 
                 | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                     >> 0xbU) & (0U != (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADEL_ex 
        = (1U & (((IData)((0U != (0xc000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U]))) 
                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result) 
                 | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                     >> 0xaU) & (0U != (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest 
        = (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                    & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_to_ws_valid)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1e1fffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msub) 
               << 0x18U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_maddu) 
                             << 0x17U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_madd) 
                                           << 0x16U) 
                                          | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clz) 
                                             << 0x15U)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movz) 
               << 0x1cU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movn) 
                             << 0x1bU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mul) 
                                           << 0x1aU) 
                                          | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msubu) 
                                             << 0x19U)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1fffff8fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | ((0x40U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_or) 
                         | (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                    >> 0xdU))) << 6U)) 
              | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_nor) 
                  << 5U) | (0x10U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_and) 
                                      | (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0xcU))) 
                                     << 4U)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1ffe1fffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfhi) 
               << 0x10U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_multu) 
                             << 0xfU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mult) 
                                          << 0xeU) 
                                         | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_divu) 
                                            << 0xdU)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1ffffff1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | ((8U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sltu) 
                      | (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                 >> 0xbU))) << 3U)) 
              | ((4U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_slt) 
                         | (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                    >> 0xaU))) << 2U)) 
                 | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_subu) 
                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub)) 
                    << 1U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa 
        = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sll) 
            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srl)) 
           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sra));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1ffffc7fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srl) 
                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srlv)) 
               << 9U) | ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sll) 
                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sllv)) 
                          << 8U) | (0x80U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_xor) 
                                              | (IData)(
                                                        (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                         >> 0xeU))) 
                                             << 7U)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1fe1ffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clo) 
               << 0x14U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtlo) 
                             << 0x13U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mthi) 
                                           << 0x12U) 
                                          | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mflo) 
                                             << 0x11U)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext 
        = (1U & (IData)((((((0ULL != (0xcf7f00000f00ULL 
                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei)) 
                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti)) 
                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi)) 
                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__gr_we 
        = (IData)((((((((((((((((((((((((((0ULL == 
                                           (0x8cf0000000034ULL 
                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                          & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr))) 
                                         & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez))) 
                                        & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz))) 
                                       & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez))) 
                                      & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz))) 
                                     & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mthi))) 
                                    & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtlo))) 
                                   & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtc0))) 
                                  & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_eret))) 
                                 & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall))) 
                                & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq))) 
                               & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi))) 
                              & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge))) 
                             & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei))) 
                            & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu))) 
                           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu))) 
                          & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlt))) 
                         & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti))) 
                        & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltu))) 
                       & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu))) 
                      & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tne))) 
                     & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei))) 
                    & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sync))) 
                   & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_wait))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc 
        = (1U & ((((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                            >> 3U)) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)) 
                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8 
        = (1U & ((((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                            >> 3U)) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)) 
                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1ffffffeU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | ((((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_addu) 
                  | (0ULL != (0xcf7f00000308ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d))) 
                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add)) 
                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)) 
              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__is_branch 
        = (1U & (IData)((((((((((0ULL != (0x3cULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez)) 
                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz)) 
                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez)) 
                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz)) 
                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)) 
                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr)) 
                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext 
        = (IData)(((((0ULL != (0x7000ULL & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui)) 
                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu)) 
                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
        = ((0x1fffe3ffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_div) 
               << 0xcU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui) 
                            << 0xbU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sra) 
                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srav)) 
                                        << 0xaU))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined 
        = (((((((((((((((((((((((((((((((((((((((((
                                                   (((((((((((((((((((((((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_addu) 
                                                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_subu)) 
                                                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_slt)) 
                                                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sltu)) 
                                                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_and)) 
                                                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_or)) 
                                                                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_xor)) 
                                                                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_nor)) 
                                                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sll)) 
                                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srl)) 
                                                                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sra)) 
                                                                 | (0ULL 
                                                                    != 
                                                                    (0x8cf7f00007f3cULL 
                                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d))) 
                                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui)) 
                                                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr)) 
                                                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add)) 
                                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub)) 
                                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sllv)) 
                                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srav)) 
                                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srlv)) 
                                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mult)) 
                                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_multu)) 
                                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_div)) 
                                                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_divu)) 
                                                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfhi)) 
                                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mflo)) 
                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mthi)) 
                                                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtlo)) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez)) 
                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz)) 
                                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez)) 
                                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz)) 
                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr)) 
                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtc0)) 
                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0)) 
                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_eret)) 
                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall)) 
                                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break)) 
                                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbp)) 
                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbr)) 
                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwi)) 
                                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwr)) 
                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clo)) 
                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clz)) 
                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_madd)) 
                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_maddu)) 
                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msub)) 
                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msubu)) 
                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mul)) 
                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movn)) 
                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movz)) 
                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq)) 
                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi)) 
                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge)) 
                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei)) 
                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu)) 
                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu)) 
                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlt)) 
                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti)) 
                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu)) 
               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltu)) 
              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tne)) 
             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei)) 
            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sync)) 
           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_wait));
}

VL_INLINE_OPT void VSocLite___024root___combo__TOP__0(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___combo__TOP__0\n"); );
    // Init
    VlWide<6>/*191:0*/ __Vtemp_h5329c517__0;
    VlWide<6>/*191:0*/ __Vtemp_hf9f20257__0;
    VlWide<7>/*223:0*/ __Vtemp_he75d125b__0;
    VlWide<7>/*223:0*/ __Vtemp_hbcdb2365__0;
    VlWide<3>/*95:0*/ __Vtemp_h8037b7b2__0;
    VlWide<4>/*127:0*/ __Vtemp_hdf26fee5__0;
    VlWide<4>/*127:0*/ __Vtemp_h8ebc800c__0;
    // Body
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush 
        = (1U & ((0x10000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U])
                  ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                      >> 0xdU) & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right)))
                  : (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ADEL_ex 
        = ((0U != (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc)) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
        = (IData)((((QData)((IData)(((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush) 
                                            | (~ (IData)(
                                                         (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                          >> 0x26U)))))
                                      ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata))) 
                    << 0x20U) | (QData)((IData)(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush)
                                                  ? 
                                                 ((IData)(
                                                          (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                           >> 6U)) 
                                                  - (IData)(8U))
                                                  : (IData)(
                                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                             >> 6U)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[1U] 
        = (IData)(((((QData)((IData)(((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush) 
                                             | (~ (IData)(
                                                          (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                           >> 0x26U)))))
                                       ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata))) 
                     << 0x20U) | (QData)((IData)(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush)
                                                   ? 
                                                  ((IData)(
                                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                            >> 6U)) 
                                                   - (IData)(8U))
                                                   : (IData)(
                                                             (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                              >> 6U)))))) 
                   >> 0x20U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[2U] 
        = ((0x40U & (((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                               >> 5U)) & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush))) 
                     << 6U)) | ((0x3eU & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r) 
                                          << 1U)) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__is_branch)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_ex 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ADEL_ex) 
           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_ex));
    __Vtemp_h5329c517__0[0U] = (IData)((((QData)((IData)(
                                                         (1U 
                                                          & (IData)(
                                                                    (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                                     >> 0x23U))))) 
                                         << 0x37U) 
                                        | (((QData)((IData)(
                                                            (1U 
                                                             & (IData)(
                                                                       (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                                        >> 0x20U))))) 
                                            << 0x36U) 
                                           | (((QData)((IData)(
                                                               (3U 
                                                                & (IData)(
                                                                          (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                                           >> 0x21U))))) 
                                               << 0x34U) 
                                              | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__is_branch)) 
                                                  << 0x33U) 
                                                 | (((QData)((IData)(
                                                                     ((0x800U 
                                                                       & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 4U)) 
                                                                          << 0xbU)) 
                                                                      | ((0x400U 
                                                                          & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 5U)) 
                                                                             << 0xaU)) 
                                                                         | ((0x200U 
                                                                             & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 3U)) 
                                                                                << 9U)) 
                                                                            | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr) 
                                                                                << 8U) 
                                                                               | ((0x80U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 2U)) 
                                                                                << 7U)) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr) 
                                                                                << 6U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez) 
                                                                                << 5U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz) 
                                                                                << 4U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez) 
                                                                                << 3U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz) 
                                                                                << 2U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal) 
                                                                                << 1U) 
                                                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)))))))))))))) 
                                                     << 0x27U) 
                                                    | (((QData)((IData)(
                                                                        (0x3ffffffU 
                                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))) 
                                                        << 0xdU) 
                                                       | (QData)((IData)(
                                                                         (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbp) 
                                                                           << 0xcU) 
                                                                          | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbr) 
                                                                              << 0xbU) 
                                                                             | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwi) 
                                                                                << 0xaU) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwr) 
                                                                                << 9U) 
                                                                                | ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add) 
                                                                                << 8U) 
                                                                                | ((0x80U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 8U)) 
                                                                                << 7U)) 
                                                                                | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub) 
                                                                                << 6U))) 
                                                                                | ((0x20U 
                                                                                & ((((((0x7fffffe0U 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                                                >> 1U)) 
                                                                                | ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined)) 
                                                                                << 5U)) 
                                                                                | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall) 
                                                                                << 5U)) 
                                                                                | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break) 
                                                                                << 5U)) 
                                                                                | ((1U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type)) 
                                                                                << 5U)) 
                                                                                | ((2U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type)) 
                                                                                << 5U))) 
                                                                                | (0x1fU 
                                                                                & ((0x40U 
                                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U])
                                                                                 ? 
                                                                                ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                                                << 0x1fU) 
                                                                                | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                                                >> 1U))
                                                                                 : 
                                                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall)
                                                                                 ? 0xbU
                                                                                 : 
                                                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break)
                                                                                 ? 0xcU
                                                                                 : 
                                                                                ((2U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type))
                                                                                 ? 0xfU
                                                                                 : 
                                                                                ((1U 
                                                                                & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined)) 
                                                                                | (1U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type))))
                                                                                 ? 0xdU
                                                                                 : 0x1fU)))))))))))))))))))));
    __Vtemp_h5329c517__0[1U] = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus) 
                                 << 0x18U) | (IData)(
                                                     ((((QData)((IData)(
                                                                        (1U 
                                                                         & (IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                                                >> 0x23U))))) 
                                                        << 0x37U) 
                                                       | (((QData)((IData)(
                                                                           (1U 
                                                                            & (IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                                                >> 0x20U))))) 
                                                           << 0x36U) 
                                                          | (((QData)((IData)(
                                                                              (3U 
                                                                               & (IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                                                >> 0x21U))))) 
                                                              << 0x34U) 
                                                             | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__is_branch)) 
                                                                 << 0x33U) 
                                                                | (((QData)((IData)(
                                                                                ((0x800U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 4U)) 
                                                                                << 0xbU)) 
                                                                                | ((0x400U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 5U)) 
                                                                                << 0xaU)) 
                                                                                | ((0x200U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 3U)) 
                                                                                << 9U)) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr) 
                                                                                << 8U) 
                                                                                | ((0x80U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 2U)) 
                                                                                << 7U)) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr) 
                                                                                << 6U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez) 
                                                                                << 5U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz) 
                                                                                << 4U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez) 
                                                                                << 3U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz) 
                                                                                << 2U) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal) 
                                                                                << 1U) 
                                                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)))))))))))))) 
                                                                    << 0x27U) 
                                                                   | (((QData)((IData)(
                                                                                (0x3ffffffU 
                                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))) 
                                                                       << 0xdU) 
                                                                      | (QData)((IData)(
                                                                                (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbp) 
                                                                                << 0xcU) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbr) 
                                                                                << 0xbU) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwi) 
                                                                                << 0xaU) 
                                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwr) 
                                                                                << 9U) 
                                                                                | ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add) 
                                                                                << 8U) 
                                                                                | ((0x80U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 8U)) 
                                                                                << 7U)) 
                                                                                | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub) 
                                                                                << 6U))) 
                                                                                | ((0x20U 
                                                                                & ((((((0x7fffffe0U 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                                                >> 1U)) 
                                                                                | ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined)) 
                                                                                << 5U)) 
                                                                                | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall) 
                                                                                << 5U)) 
                                                                                | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break) 
                                                                                << 5U)) 
                                                                                | ((1U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type)) 
                                                                                << 5U)) 
                                                                                | ((2U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type)) 
                                                                                << 5U))) 
                                                                                | (0x1fU 
                                                                                & ((0x40U 
                                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U])
                                                                                 ? 
                                                                                ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                                                << 0x1fU) 
                                                                                | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                                                >> 1U))
                                                                                 : 
                                                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall)
                                                                                 ? 0xbU
                                                                                 : 
                                                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break)
                                                                                 ? 0xcU
                                                                                 : 
                                                                                ((2U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type))
                                                                                 ? 0xfU
                                                                                 : 
                                                                                ((1U 
                                                                                & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined)) 
                                                                                | (1U 
                                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type))))
                                                                                 ? 0xdU
                                                                                 : 0x1fU)))))))))))))))))))) 
                                                      >> 0x20U)));
    __Vtemp_h5329c517__0[4U] = (((IData)((((QData)((IData)(
                                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
                                                            + 
                                                            (((- (IData)(
                                                                         (1U 
                                                                          & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                             >> 0xfU)))) 
                                                              << 0x12U) 
                                                             | (0x3fffcU 
                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                   << 2U)))))) 
                                           << 0x20U) 
                                          | (QData)((IData)(
                                                            ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa)
                                                              ? 
                                                             (0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 6U))
                                                              : 
                                                             ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)
                                                               ? 
                                                              vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]
                                                               : 0U)))))) 
                                 >> 8U) | ((IData)(
                                                   ((((QData)((IData)(
                                                                      (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
                                                                       + 
                                                                       (((- (IData)(
                                                                                (1U 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                >> 0xfU)))) 
                                                                         << 0x12U) 
                                                                        | (0x3fffcU 
                                                                           & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                              << 2U)))))) 
                                                      << 0x20U) 
                                                     | (QData)((IData)(
                                                                       ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa)
                                                                         ? 
                                                                        (0x1fU 
                                                                         & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                            >> 6U))
                                                                         : 
                                                                        ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)
                                                                          ? 
                                                                         vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]
                                                                          : 0U))))) 
                                                    >> 0x20U)) 
                                           << 0x18U));
    __Vtemp_hf9f20257__0[5U] = ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr) 
                                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr)) 
                                 << 0x19U) | (((IData)(
                                                       (((((((0ULL 
                                                              != 
                                                              (0x30ULL 
                                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez)) 
                                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz)) 
                                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez)) 
                                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz)) 
                                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal))) 
                                               << 0x18U) 
                                              | ((IData)(
                                                         ((((QData)((IData)(
                                                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
                                                                             + 
                                                                             (((- (IData)(
                                                                                (1U 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                >> 0xfU)))) 
                                                                               << 0x12U) 
                                                                              | (0x3fffcU 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                << 2U)))))) 
                                                            << 0x20U) 
                                                           | (QData)((IData)(
                                                                             ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa)
                                                                               ? 
                                                                              (0x1fU 
                                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                >> 6U))
                                                                               : 
                                                                              ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)
                                                                                ? 
                                                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]
                                                                                : 0U))))) 
                                                          >> 0x20U)) 
                                                 >> 8U)));
    __Vtemp_he75d125b__0[3U] = ((1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext)
                                         ? (0xffffU 
                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                         : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext)
                                             ? (((- (IData)(
                                                            (1U 
                                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                >> 0xfU)))) 
                                                 << 0x10U) 
                                                | (0xffffU 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                             : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8)
                                                 ? 8U
                                                 : 0U))) 
                                       >> 7U)) | ((0x1fffffeU 
                                                   & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext)
                                                        ? 
                                                       (0xffffU 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                                        : 
                                                       ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext)
                                                         ? 
                                                        (((- (IData)(
                                                                     (1U 
                                                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                         >> 0xfU)))) 
                                                          << 0x10U) 
                                                         | (0xffffU 
                                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                                         : 
                                                        ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8)
                                                          ? 8U
                                                          : 0U))) 
                                                      >> 7U)) 
                                                  | ((IData)(
                                                             (((QData)((IData)(
                                                                               (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
                                                                                + 
                                                                                (((- (IData)(
                                                                                (1U 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                >> 0xfU)))) 
                                                                                << 0x12U) 
                                                                                | (0x3fffcU 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                << 2U)))))) 
                                                               << 0x20U) 
                                                              | (QData)((IData)(
                                                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa)
                                                                                 ? 
                                                                                (0x1fU 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                >> 6U))
                                                                                 : 
                                                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)
                                                                                 ? 
                                                                                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]
                                                                                 : 0U)))))) 
                                                     << 0x19U)));
    __Vtemp_he75d125b__0[4U] = ((1U & ((IData)((((QData)((IData)(
                                                                 (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
                                                                  + 
                                                                  (((- (IData)(
                                                                               (1U 
                                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                                >> 0xfU)))) 
                                                                    << 0x12U) 
                                                                   | (0x3fffcU 
                                                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                         << 2U)))))) 
                                                 << 0x20U) 
                                                | (QData)((IData)(
                                                                  ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa)
                                                                    ? 
                                                                   (0x1fU 
                                                                    & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                       >> 6U))
                                                                    : 
                                                                   ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)
                                                                     ? 
                                                                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]
                                                                     : 0U)))))) 
                                       >> 7U)) | (__Vtemp_h5329c517__0[4U] 
                                                  << 1U));
    __Vtemp_hbcdb2365__0[6U] = (((((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type)) 
                                   | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                  | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                 << 2U) | ((((((4U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type)) 
                                               | (5U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                              | (6U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                             | (7U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                            << 1U) 
                                           | ((1U & 
                                               ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type) 
                                                >> 2U)) 
                                              | ((1U 
                                                  & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq) 
                                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi))
                                                       ? 6U
                                                       : 
                                                      (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge) 
                                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei))
                                                        ? 1U
                                                        : 
                                                       (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu) 
                                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu))
                                                         ? 2U
                                                         : 
                                                        (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlt) 
                                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti))
                                                          ? 3U
                                                          : 
                                                         (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltu) 
                                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu))
                                                           ? 5U
                                                           : 
                                                          (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tne) 
                                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei))
                                                            ? 4U
                                                            : 0U)))))) 
                                                     >> 5U)) 
                                                 | (__Vtemp_hf9f20257__0[5U] 
                                                    >> 0x1fU)))));
    __Vtemp_h8037b7b2__0[1U] = (IData)((((QData)((IData)(
                                                         ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait)
                                                           ? 
                                                          (((0x1fU 
                                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                >> 0x15U)) 
                                                            == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))
                                                            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result
                                                            : 
                                                           (((0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 0x15U)) 
                                                             == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))
                                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result
                                                             : 
                                                            (((0x1fU 
                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                  >> 0x15U)) 
                                                              == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest))
                                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result
                                                              : 
                                                             vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))
                                                           : 
                                                          ((0U 
                                                            == 
                                                            (0x1fU 
                                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                >> 0x15U)))
                                                            ? 0U
                                                            : 
                                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                                           [
                                                           (0x1fU 
                                                            & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                               >> 0x15U))])))) 
                                         << 0x20U) 
                                        | (QData)((IData)(
                                                          ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait)
                                                            ? 
                                                           (((0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 0x10U)) 
                                                             == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))
                                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result
                                                             : 
                                                            (((0x1fU 
                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                  >> 0x10U)) 
                                                              == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))
                                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result
                                                              : 
                                                             (((0x1fU 
                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                   >> 0x10U)) 
                                                               == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest))
                                                               ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result
                                                               : 
                                                              vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))
                                                            : 
                                                           ((0U 
                                                             == 
                                                             (0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 0x10U)))
                                                             ? 0U
                                                             : 
                                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                                            [
                                                            (0x1fU 
                                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                >> 0x10U))]))))));
    __Vtemp_h8037b7b2__0[2U] = (IData)(((((QData)((IData)(
                                                          ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait)
                                                            ? 
                                                           (((0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 0x15U)) 
                                                             == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))
                                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result
                                                             : 
                                                            (((0x1fU 
                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                  >> 0x15U)) 
                                                              == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))
                                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result
                                                              : 
                                                             (((0x1fU 
                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                   >> 0x15U)) 
                                                               == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest))
                                                               ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result
                                                               : 
                                                              vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))
                                                            : 
                                                           ((0U 
                                                             == 
                                                             (0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 0x15U)))
                                                             ? 0U
                                                             : 
                                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                                            [
                                                            (0x1fU 
                                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                >> 0x15U))])))) 
                                          << 0x20U) 
                                         | (QData)((IData)(
                                                           ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait)
                                                             ? 
                                                            (((0x1fU 
                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                  >> 0x10U)) 
                                                              == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))
                                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result
                                                              : 
                                                             (((0x1fU 
                                                                & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                   >> 0x10U)) 
                                                               == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))
                                                               ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result
                                                               : 
                                                              (((0x1fU 
                                                                 & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                    >> 0x10U)) 
                                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest))
                                                                ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result
                                                                : 
                                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))
                                                             : 
                                                            ((0U 
                                                              == 
                                                              (0x1fU 
                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                  >> 0x10U)))
                                                              ? 0U
                                                              : 
                                                             vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                                             [
                                                             (0x1fU 
                                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                 >> 0x10U))]))))) 
                                        >> 0x20U));
    __Vtemp_hdf26fee5__0[3U] = ((1U & (((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 3U)) 
                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)))
                                 ? 0x1fU : (0x1fU & 
                                            ((IData)(
                                                     (((0ULL 
                                                        != 
                                                        (0x7f00007f00ULL 
                                                         & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui)) 
                                                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0)))
                                              ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  << 0x10U) 
                                                 | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                    >> 0x10U))
                                              : ((IData)(
                                                         ((((((((((0ULL 
                                                                   != 
                                                                   (0x8cf0000000034ULL 
                                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                                                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr)) 
                                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez)) 
                                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz)) 
                                                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez)) 
                                                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz)) 
                                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall)) 
                                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_eret)) 
                                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sync)) 
                                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_wait)))
                                                  ? 0U
                                                  : 
                                                 ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                   << 0x15U) 
                                                  | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                     >> 0xbU))))));
    __Vtemp_h8ebc800c__0[3U] = ((0xfffffc00U & ((0x200000U 
                                                 & ((IData)(
                                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                             >> 0x2eU)) 
                                                    << 0x15U)) 
                                                | ((0x100000U 
                                                    & ((IData)(
                                                               (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                >> 0x2aU)) 
                                                       << 0x14U)) 
                                                   | ((0x80000U 
                                                       & ((IData)(
                                                                  (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                   >> 0x29U)) 
                                                          << 0x13U)) 
                                                      | ((0x40000U 
                                                          & ((IData)(
                                                                     (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                      >> 0x28U)) 
                                                             << 0x12U)) 
                                                         | ((0x20000U 
                                                             & ((IData)(
                                                                        (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                         >> 0x26U)) 
                                                                << 0x11U)) 
                                                            | ((0x10000U 
                                                                & ((IData)(
                                                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                            >> 0x22U)) 
                                                                   << 0x10U)) 
                                                               | ((0x8000U 
                                                                   & ((IData)(
                                                                              (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                               >> 0x25U)) 
                                                                      << 0xfU)) 
                                                                  | ((0x4000U 
                                                                      & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x21U)) 
                                                                         << 0xeU)) 
                                                                     | ((0x2000U 
                                                                         & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x24U)) 
                                                                            << 0xdU)) 
                                                                        | ((0x1000U 
                                                                            & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x20U)) 
                                                                               << 0xcU)) 
                                                                           | ((0x800U 
                                                                               & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x2bU)) 
                                                                                << 0xbU)) 
                                                                              | (0x400U 
                                                                                & ((IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x23U)) 
                                                                                << 0xaU)))))))))))))) 
                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__load_op) 
                                    << 9U) | ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa) 
                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)) 
                                               << 8U) 
                                              | (((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8) 
                                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext)) 
                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext)) 
                                                  << 7U) 
                                                 | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__gr_we) 
                                                     << 6U) 
                                                    | (((IData)(
                                                                (0ULL 
                                                                 != 
                                                                 (0x4f0000000000ULL 
                                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d))) 
                                                        << 5U) 
                                                       | __Vtemp_hdf26fee5__0[3U]))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[1U] 
        = __Vtemp_h8037b7b2__0[1U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[2U] 
        = __Vtemp_h8037b7b2__0[2U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[3U] 
        = (((__Vtemp_h5329c517__0[0U] << 0x1aU) | (0x2000000U 
                                                   & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                      << 0x19U))) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_eret) 
               << 0x18U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtc0) 
                             << 0x17U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0) 
                                           << 0x16U) 
                                          | __Vtemp_h8ebc800c__0[3U]))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[4U] 
        = ((0x1ffffffU & (__Vtemp_h5329c517__0[0U] 
                          >> 6U)) | ((0x2000000U & 
                                      (__Vtemp_h5329c517__0[0U] 
                                       >> 6U)) | (__Vtemp_h5329c517__0[1U] 
                                                  << 0x1aU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[5U] 
        = ((0x1ffffffU & (__Vtemp_h5329c517__0[1U] 
                          >> 6U)) | ((0x2000000U & 
                                      (__Vtemp_h5329c517__0[1U] 
                                       >> 6U)) | (0xfc000000U 
                                                  & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus) 
                                                     << 0x12U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[6U] 
        = ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus) 
             >> 0xeU) | (0x1fc0000U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext)
                                         ? (0xffffU 
                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                         : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext)
                                             ? (((- (IData)(
                                                            (1U 
                                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                                >> 0xfU)))) 
                                                 << 0x10U) 
                                                | (0xffffU 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                             : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8)
                                                 ? 8U
                                                 : 0U))) 
                                       << 0x12U))) 
           | (__Vtemp_he75d125b__0[3U] << 0x19U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[7U] 
        = ((__Vtemp_he75d125b__0[3U] >> 7U) | (__Vtemp_he75d125b__0[4U] 
                                               << 0x19U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[8U] 
        = ((__Vtemp_he75d125b__0[4U] >> 7U) | ((0x2000000U 
                                                & (__Vtemp_h5329c517__0[4U] 
                                                   >> 6U)) 
                                               | (__Vtemp_hf9f20257__0[5U] 
                                                  << 0x1aU)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[9U] 
        = (((0x1800000U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type) 
                           << 0x17U)) | ((0x1f00000U 
                                          & ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq) 
                                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi))
                                               ? 6U
                                               : (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge) 
                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei))
                                                   ? 1U
                                                   : 
                                                  (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu) 
                                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu))
                                                    ? 2U
                                                    : 
                                                   (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlt) 
                                                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti))
                                                     ? 3U
                                                     : 
                                                    (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltu) 
                                                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu))
                                                      ? 5U
                                                      : 
                                                     (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tne) 
                                                       | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei))
                                                       ? 4U
                                                       : 0U)))))) 
                                             << 0x14U)) 
                                         | (0x1ffffffU 
                                            & (__Vtemp_hf9f20257__0[5U] 
                                               >> 6U)))) 
           | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
               << 0x1cU) | (__Vtemp_hbcdb2365__0[6U] 
                            << 0x19U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[0xaU] 
        = ((0x1ffffffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op 
                          >> 4U)) | (__Vtemp_hbcdb2365__0[6U] 
                                     >> 7U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid 
        = ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__flush_delayed) 
             & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy))) 
            & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__refetch_delayed))) 
           | ((~ ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_ex) 
                  | (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit)))) 
              & (((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)) 
                  & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_allowin)) 
                 & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__refetch_delayed)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target 
        = ((0x40000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
            ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] 
                            >> 0x12U)) : ((0x80000U 
                                           & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                                           ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U]
                                           : ((0xf0000000U 
                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[0U]) 
                                              | (0xffffffcU 
                                                 & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                     << 0x1bU) 
                                                    | (0x7fffffcU 
                                                       & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                                          >> 5U)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit_wr 
        = ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)) 
           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en 
        = ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)) 
           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__hit 
        = ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__hit)) 
           | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid)
               ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata
                  [0U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata
                          [0U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_PFN))
               : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata
                  [0U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata
                          [0U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_tag))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__hit 
        = ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__hit)) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid)
                ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata
                   [1U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata
                           [1U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_PFN))
                : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata
                   [1U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata
                           [1U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_tag))) 
              << 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus 
        = (((QData)((IData)(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid) 
                             & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush))))) 
            << 0x26U) | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc)) 
                          << 6U) | (QData)((IData)(
                                                   (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_ex) 
                                                     << 5U) 
                                                    | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ADEL_ex)
                                                        ? 9U
                                                        : 
                                                       ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_ex)
                                                         ? 
                                                        (((7U 
                                                           < 
                                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                            >> 0x1cU)) 
                                                          & (0xcU 
                                                             > 
                                                             (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                              >> 0x1cU)))
                                                          ? 0x1fU
                                                          : 
                                                         ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit)
                                                           ? 
                                                          ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_found)
                                                            ? 
                                                           ((((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                               >> 0xcU) 
                                                              & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_v1)) 
                                                             | ((~ 
                                                                 (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                                  >> 0xcU)) 
                                                                & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_v0)))
                                                             ? 0x1fU
                                                             : 3U)
                                                            : 2U)
                                                           : 0x1fU))
                                                         : 0x1fU)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken)
                  ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target 
                     == ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] 
                          << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                      >> 0x12U))) : 
                 (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                     >> 0x11U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BResult[0U] 
        = (IData)((((QData)((IData)((3U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                           >> 0xeU)))) 
                    << 0x22U) | (((QData)((IData)((1U 
                                                   & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                      >> 0xdU)))) 
                                  << 0x21U) | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken)) 
                                                << 0x20U) 
                                               | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BResult[1U] 
        = ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U] 
            << 4U) | (IData)(((((QData)((IData)((3U 
                                                 & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                    >> 0xeU)))) 
                                << 0x22U) | (((QData)((IData)(
                                                              (1U 
                                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                                  >> 0xdU)))) 
                                              << 0x21U) 
                                             | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken)) 
                                                 << 0x20U) 
                                                | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target))))) 
                              >> 0x20U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BResult[2U] 
        = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U] 
           >> 0x1cU);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[0U] 
        = (IData)((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target)) 
                    << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U]))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[1U] 
        = (IData)(((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target)) 
                     << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U]))) 
                   >> 0x20U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U] 
        = ((8U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                  >> 0xdU)) | ((4U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                      >> 0xbU)) | (
                                                   ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken) 
                                                    << 1U) 
                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_ret_addr 
        = ((1U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                   >> 0x1bU)) ? (((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus 
                                           >> 0x22U)) 
                                  << 0x1cU) | (0xffffffcU 
                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                                                  << 2U)))
            : ((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data 
                              >> 0x37U))) ? ((IData)(8U) 
                                             + (IData)(
                                                       (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                        >> 6U)))
                : (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus 
        = (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_ret_addr)) 
            << 1U) | (QData)((IData)((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__BPU_valid) 
                                       & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__fs_valid)) 
                                      & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                 >> 0x26U))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__nextpc 
        = ((0x1000000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U])
            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EPC
            : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush)
                ? ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_refetch)
                    ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[0U]
                    : (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_Bev)
                         ? 0xbfc00200U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EBase) 
                       + ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)) 
                            | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype))) 
                           | (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)))
                           ? 0U : 0x180U))) : ((IData)(
                                                       ((0xcU 
                                                         == 
                                                         (0xcU 
                                                          & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])) 
                                                        & (~ 
                                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])))
                                                ? (
                                                   (2U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])
                                                    ? 
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[1U]
                                                    : 
                                                   ((IData)(8U) 
                                                    + 
                                                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[0U]))
                                                : ((IData)(
                                                           (6U 
                                                            == 
                                                            (0xeU 
                                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])))
                                                    ? 
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[1U]
                                                    : 
                                                   ((1U 
                                                     & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus))
                                                     ? (IData)(
                                                               (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus 
                                                                >> 1U))
                                                     : 
                                                    ((IData)(4U) 
                                                     + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc))))));
}

QData VSocLite___024root___change_request_1(VSocLite___024root* vlSelf);

VL_INLINE_OPT QData VSocLite___024root___change_request(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___change_request\n"); );
    // Body
    return (VSocLite___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData VSocLite___024root___change_request_1(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    __req |= ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right ^ vlSelf->__Vchglast__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right));
    VL_DEBUG_IF( if(__req && ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right ^ vlSelf->__Vchglast__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right))) VL_DBG_MSGF("        CHANGE: vsrc/mycpu/EXE_stage.v:84: SocLite.axi_cpu.my_cpu.exe_stage.es_BPU_right\n"); );
    // Final
    vlSelf->__Vchglast__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right;
    return __req;
}

#ifdef VL_DEBUG
void VSocLite___024root___eval_debug_assertions(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
