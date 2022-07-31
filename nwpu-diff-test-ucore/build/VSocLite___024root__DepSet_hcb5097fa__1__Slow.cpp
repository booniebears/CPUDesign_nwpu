// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite___024root.h"

void VSocLite___024unit____Vdpiimwrap_ram_read_helper_TOP____024unit(CData/*0:0*/ en, IData/*31:0*/ rIdx, IData/*31:0*/ &ram_read_helper__Vfuncrtn);
extern const VlUnpacked<CData/*2:0*/, 128> VSocLite__ConstPool__TABLE_hc4b04eba_0;
extern const VlUnpacked<CData/*2:0*/, 128> VSocLite__ConstPool__TABLE_hc0caf2f2_0;
extern const VlUnpacked<CData/*1:0*/, 256> VSocLite__ConstPool__TABLE_h08a5b10d_0;
extern const VlUnpacked<CData/*2:0*/, 512> VSocLite__ConstPool__TABLE_h2cebe250_0;

VL_ATTR_COLD void VSocLite___024root___settle__TOP__2(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___settle__TOP__2\n"); );
    // Init
    CData/*0:0*/ SocLite__DOT__axi4xbar__DOT___GEN_37;
    CData/*0:0*/ SocLite__DOT__axi4xbar__DOT___GEN_43;
    CData/*0:0*/ SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1;
    CData/*0:0*/ SocLite__DOT__axi4xbar__DOT___GEN_53;
    CData/*0:0*/ SocLite__DOT__axi4xbar__DOT___GEN_59;
    CData/*0:0*/ SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1;
    CData/*0:0*/ SocLite__DOT__axi_ram__DOT___w_busy_T_1;
    SData/*8:0*/ __Vtableidx1;
    SData/*8:0*/ __Vtableidx2;
    CData/*6:0*/ __Vtableidx3;
    CData/*7:0*/ __Vtableidx4;
    CData/*6:0*/ __Vtableidx5;
    // Body
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter 
        = (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__empty)) 
            & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_wready_reg)) 
           & vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_last
           [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1]);
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_arready 
        = (1U & ((~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__busy)) 
                 & ((~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__R_or_W)) 
                    | (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__empty))));
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_awready 
        = ((~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__busy)) 
           & ((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__R_or_W) 
              | (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__empty)));
    vlSelf->SocLite__DOT__axi_ram__DOT___T_6 = ((QData)((IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data)) 
                                                & (~ 
                                                   ((QData)((IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data)) 
                                                    << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data))));
    SocLite__DOT__axi_ram__DOT___w_busy_T_1 = ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__full)) 
                                               & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_b_valid_r));
    vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_b_valid_T_2 
        = (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_0) 
            & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty))) 
           | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_1) 
              & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid_1 
        = (1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty)) 
                 | (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo_1 
        = ((2U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty)) 
                  << 1U)) | (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi_ram__DOT___ren_T_1 = 
        ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__full)) 
         & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_r_valid_r));
    vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_r_valid_T_2 
        = (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_0) 
            & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty))) 
           | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_1) 
              & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid = 
        (1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty)) 
               | (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo 
        = ((2U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty)) 
                  << 1U)) | (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi_ram__DOT___waddr_T = 
        (1U & ((~ (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__w_busy)) 
               & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi_ram__DOT___T_25 = (1U 
                                                 & (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__empty)) 
                                                     | (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__w_busy)) 
                                                    & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi_ram__DOT___T = (1U & 
                                              (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                                | (~ (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__r_busy))) 
                                               & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bid = 0U;
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy) {
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bid 
                        = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data;
                }
            }
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bid = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bid 
                = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bid = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bid 
                    = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data;
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bresp = 0U;
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bresp 
                        = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
                }
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bresp = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bresp = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bresp 
                = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bresp = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bresp 
                    = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rid = 0U;
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rid 
                        = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data;
                }
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rid = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rid = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rid 
                = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rid = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rid 
                    = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data;
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rdata = 0U;
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rdata 
                        = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data;
                }
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rdata = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rdata = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rdata 
                = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rdata = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rdata 
                    = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data;
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rresp = 0U;
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rresp 
                        = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
                }
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rresp = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rresp = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rresp 
                = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rresp = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rresp 
                    = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
            }
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rlast = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rlast 
                = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rlast = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rlast 
                        = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data;
                }
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rlast = 0U;
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rlast 
                    = vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data;
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rlast = 0U;
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bresp = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bresp = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bresp = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rdata = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rdata = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rdata = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rresp = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rresp = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rresp = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rlast = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rlast = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rlast = 0U;
    }
    vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0 
        = ((0ULL == (0x80000000ULL & (QData)((IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data)))) 
           | (0ULL == (0x90000000ULL & (QData)((IData)(
                                                       (0x80000000U 
                                                        ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__requestARIO_0_0 
        = ((0ULL == (0x80000000ULL & (QData)((IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data)))) 
           | (0ULL == (0x90000000ULL & (QData)((IData)(
                                                       (0x80000000U 
                                                        ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_wready = 0U;
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy) {
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_wready 
                        = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__full)));
                }
            }
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_wready = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_wready 
                = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__full)));
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_wready = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_wready 
                    = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__full)));
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bvalid = 0U;
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bvalid 
                        = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__empty)));
                }
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bvalid = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bvalid = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bvalid 
                = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__empty)));
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bvalid = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bvalid 
                    = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__empty)));
            }
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rvalid = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rvalid 
                = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__empty)));
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid 
                        = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__empty)));
                }
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid = 0U;
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid 
                    = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__empty)));
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_awready = 0U;
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_awready 
                        = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__full)));
                }
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_awready = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_awready = 0U;
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_awready 
                = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__full)));
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_awready = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_awready 
                    = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__full)));
            }
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_wready = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_wready = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_awready = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_awready = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_awready = 0U;
    }
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_valid 
        = (1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__empty)) 
                 & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__latched))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_arready = 0U;
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy) {
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_arready 
                = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__full)));
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_arready = 0U;
        if ((1U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            if ((2U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_arready 
                        = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__full)));
                }
            }
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_arready = 0U;
            if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_arready 
                    = (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__full)));
            }
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_arready = 0U;
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_arready = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_arready = 0U;
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata[0U] 
        = (0xfffffU & (vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg 
                       >> 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata[0U] 
        = (1U & vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata[1U] 
        = (0xfffffU & (vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg 
                       >> 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata[1U] 
        = (1U & vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata[0U] 
        = (0xfffffU & (vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg 
                       >> 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata[0U] 
        = (1U & vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata[1U] 
        = (0xfffffU & (vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg 
                       >> 1U));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata[1U] 
        = (1U & vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg);
    vlSelf->SocLite__DOT__axi4xbar_auto_in_b_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
            ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid_1)
            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_b_valid_T_2));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4 
        = ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)) 
           & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
               ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid_1)
               : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_b_valid_T_2)));
    vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_1 
        = ((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo_1) 
             & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask_1))) 
            << 2U) | ((2U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty)) 
                             << 1U)) | (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty)))));
    vlSelf->SocLite__DOT__axi4xbar_auto_in_r_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
            ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid)
            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_r_valid_T_2));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4 
        = ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)) 
           & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
               ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid)
               : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_r_valid_T_2)));
    vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter 
        = ((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo) 
             & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask))) 
            << 2U) | ((2U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty)) 
                             << 1U)) | (1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty)))));
    vlSelf->SocLite__DOT__axi_ram__DOT___GEN_16 = ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___waddr_T) 
                                                   | ((~ (IData)(SocLite__DOT__axi_ram__DOT___w_busy_T_1)) 
                                                      & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__w_busy)));
    vlSelf->SocLite__DOT__axi_ram__DOT___GEN_18 = (
                                                   ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T_25) 
                                                    & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data)) 
                                                   | ((~ (IData)(SocLite__DOT__axi_ram__DOT___w_busy_T_1)) 
                                                      & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_b_valid_r)));
    VSocLite___024unit____Vdpiimwrap_ram_read_helper_TOP____024unit(1U, 
                                                                    ((IData)(
                                                                             (0xffffffULL 
                                                                              & (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T)
                                                                                 ? vlSelf->SocLite__DOT__axi_ram__DOT___T_6
                                                                                 : vlSelf->SocLite__DOT__axi_ram__DOT__raddr_r) 
                                                                                >> 2U))) 
                                                                     + (IData)((QData)((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_1)))), vlSelf->__Vfunc_ram_read_helper__0__Vfuncout);
    vlSelf->SocLite__DOT__axi_ram__DOT__mem_rdata = vlSelf->__Vfunc_ram_read_helper__0__Vfuncout;
    vlSelf->SocLite__DOT__axi_ram__DOT___GEN_0 = ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T)
                                                   ? (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data)
                                                   : (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__r));
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_bits 
        = (((0ULL == (0x90000000ULL & (QData)((IData)(
                                                      (0x90000000U 
                                                       ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))) 
            << 1U) | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T 
        = (((0ULL == (0x90000000ULL & (QData)((IData)(
                                                      (0x90000000U 
                                                       ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))) 
            << 1U) | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_ready 
        = (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0) 
            & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__full))) 
           | ((0ULL == (0x90000000ULL & (QData)((IData)(
                                                        (0x90000000U 
                                                         ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))) 
              & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__full))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T = 
        (((0ULL == (0x90000000ULL & (QData)((IData)(
                                                    (0x90000000U 
                                                     ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))) 
          << 1U) | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestARIO_0_0));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_ready 
        = (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestARIO_0_0) 
            & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__full))) 
           | ((0ULL == (0x90000000ULL & (QData)((IData)(
                                                        (0x90000000U 
                                                         ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))) 
              & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__full))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_DataReady 
        = ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
             & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid)) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready))
            ? 1U : ((((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
                      & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid)) 
                     & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready))
                     ? 2U : ((((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
                               & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid)) 
                              & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready))
                              ? 3U : ((((5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
                                        & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid)) 
                                       & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready))
                                       ? 4U : 0U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_DataReady 
        = ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)) 
             & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid)) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready))
            ? 1U : ((((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)) 
                      & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid)) 
                     & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready))
                     ? 2U : ((((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)) 
                               & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid)) 
                              & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready))
                              ? 3U : ((((5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)) 
                                        & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid)) 
                                       & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready))
                                       ? 4U : 0U))));
    __Vtableidx5 = (((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state)) 
                     << 6U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_awready) 
                                << 5U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_wready) 
                                           << 4U) | 
                                          (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bvalid) 
                                            << 3U) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_nextstate 
        = VSocLite__ConstPool__TABLE_hc4b04eba_0[__Vtableidx5];
    __Vtableidx3 = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_wr_req) 
                     << 6U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_awready) 
                                << 5U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_wready) 
                                           << 4U) | 
                                          (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bvalid) 
                                            << 3U) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_nextstate 
        = VSocLite__ConstPool__TABLE_hc0caf2f2_0[__Vtableidx3];
    vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_64 = 
        (((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)) 
          & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_valid)) 
         | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__latched));
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___do_enq_T 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_valid));
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid 
        = (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_valid) 
                 | (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__empty))));
    __Vtableidx4 = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__udcache_rd_req) 
                     << 7U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_arready) 
                                << 6U) | (((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state)) 
                                           << 5U) | 
                                          (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rlast) 
                                            << 4U) 
                                           | (((2U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state)) 
                                               << 3U) 
                                              | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rvalid) 
                                                  << 2U) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_nextstate 
        = VSocLite__ConstPool__TABLE_h08a5b10d_0[__Vtableidx4];
    __Vtableidx1 = (((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)) 
                     << 8U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_arready) 
                                << 7U) | (((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
                                           << 6U) | 
                                          (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rlast) 
                                            << 5U) 
                                           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready) 
                                               << 4U) 
                                              | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid) 
                                                  << 3U) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_nextstate 
        = VSocLite__ConstPool__TABLE_h2cebe250_0[__Vtableidx1];
    __Vtableidx2 = (((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)) 
                     << 8U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_arready) 
                                << 7U) | (((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)) 
                                           << 6U) | 
                                          (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rlast) 
                                            << 5U) 
                                           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready) 
                                               << 4U) 
                                              | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid) 
                                                  << 3U) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)))))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_nextstate 
        = VSocLite__ConstPool__TABLE_h2cebe250_0[__Vtableidx2];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_nextstate 
        = ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))
            ? ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))
                ? ((7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                    ? 0U : 3U) : ((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                   ? 3U : 2U)) : ((1U 
                                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))
                                                   ? 
                                                  (((5U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)) 
                                                    | (6U 
                                                       == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)))
                                                    ? 0U
                                                    : 
                                                   ((4U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type))
                                                     ? 
                                                    ((1U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag)
                                                      ? 
                                                     ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit) 
                                                        >> 1U) 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata
                                                       [1U])
                                                       ? 2U
                                                       : 0U)
                                                      : 
                                                     (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit) 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata
                                                       [0U])
                                                       ? 2U
                                                       : 0U))
                                                     : 
                                                    ((7U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type))
                                                      ? 
                                                     (((1U 
                                                        == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)) 
                                                       & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit))
                                                       ? 2U
                                                       : 
                                                      (((2U 
                                                         == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)) 
                                                        & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit) 
                                                           >> 1U))
                                                        ? 2U
                                                        : 0U))
                                                      : 0U)))
                                                   : 
                                                  ((1U 
                                                    & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                                                        >> 0x12U) 
                                                       & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_busy))))
                                                    ? 1U
                                                    : 0U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit 
        = ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit)) 
           | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid)
               ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata
                   [0U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata
                           [0U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB_PFN)) 
                  & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache)))
               : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata
                   [0U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata
                           [0U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag)) 
                  & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_isUncache)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit 
        = ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit)) 
           | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid)
                ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata
                    [1U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata
                            [1U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB_PFN)) 
                   & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache)))
                : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata
                    [1U] & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata
                            [1U] == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag)) 
                   & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_isUncache)))) 
              << 1U));
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
    vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_79 = 
        ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4) 
         | ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid_1)) 
            & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)));
    vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready_1 
        = ((7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_1) 
                   >> 1U) | (3U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_1) 
                                   >> 2U)))) | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask_1) 
                                                << 2U));
    vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_76 = 
        ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4) 
         | ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid)) 
            & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)));
    vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready 
        = ((7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter) 
                   >> 1U) | (3U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter) 
                                   >> 2U)))) | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask) 
                                                << 2U));
    vlSelf->SocLite__DOT__axi_ram__DOT__in_r_bits_last 
        = ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value) 
           == (IData)(vlSelf->SocLite__DOT__axi_ram__DOT___GEN_0));
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__empty)
            ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_bits)
            : vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__ram
           [vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__deq_ptr_value]);
    SocLite__DOT__axi4xbar__DOT___GEN_53 = ((5U == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                             ? (((0U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_count)) 
                                                 | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_last) 
                                                    == 
                                                    (1U 
                                                     & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                        >> 1U)))) 
                                                & (7U 
                                                   != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_count)))
                                             : ((4U 
                                                 == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                 ? 
                                                (((0U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_count)) 
                                                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_last) 
                                                     == 
                                                     (1U 
                                                      & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                         >> 1U)))) 
                                                 & (7U 
                                                    != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_count)))
                                                 : 
                                                ((3U 
                                                  == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                  ? 
                                                 (((0U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_count)) 
                                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_last) 
                                                      == 
                                                      (1U 
                                                       & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                          >> 1U)))) 
                                                  & (7U 
                                                     != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_count)))
                                                  : 
                                                 ((2U 
                                                   == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                   ? 
                                                  (((0U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_count)) 
                                                    | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_last) 
                                                       == 
                                                       (1U 
                                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                           >> 1U)))) 
                                                   & (7U 
                                                      != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_count)))
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                    ? 
                                                   (((0U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_count)) 
                                                     | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_last) 
                                                        == 
                                                        (1U 
                                                         & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                            >> 1U)))) 
                                                    & (7U 
                                                       != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_count)))
                                                    : 
                                                   (((0U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_count)) 
                                                     | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_last) 
                                                        == 
                                                        (1U 
                                                         & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                            >> 1U)))) 
                                                    & (7U 
                                                       != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_count))))))));
    SocLite__DOT__axi4xbar__DOT___GEN_37 = ((5U == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                             ? (((0U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_count)) 
                                                 | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_last) 
                                                    == 
                                                    (1U 
                                                     & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                        >> 1U)))) 
                                                & (7U 
                                                   != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_count)))
                                             : ((4U 
                                                 == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                 ? 
                                                (((0U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_count)) 
                                                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_last) 
                                                     == 
                                                     (1U 
                                                      & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                         >> 1U)))) 
                                                 & (7U 
                                                    != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_count)))
                                                 : 
                                                ((3U 
                                                  == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                  ? 
                                                 (((0U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_count)) 
                                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_last) 
                                                      == 
                                                      (1U 
                                                       & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                          >> 1U)))) 
                                                  & (7U 
                                                     != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_count)))
                                                  : 
                                                 ((2U 
                                                   == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                   ? 
                                                  (((0U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_count)) 
                                                    | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_last) 
                                                       == 
                                                       (1U 
                                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                           >> 1U)))) 
                                                   & (7U 
                                                      != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_count)))
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                    ? 
                                                   (((0U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_count)) 
                                                     | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_last) 
                                                        == 
                                                        (1U 
                                                         & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                            >> 1U)))) 
                                                    & (7U 
                                                       != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_count)))
                                                    : 
                                                   (((0U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_count)) 
                                                     | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_last) 
                                                        == 
                                                        (1U 
                                                         & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                            >> 1U)))) 
                                                    & (7U 
                                                       != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_count))))))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_valid 
        = ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__empty)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid));
    vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5 
        = (3U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready_1) 
                  >> 2U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2 
        = (3U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready) 
                  >> 2U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready)));
    vlSelf->SocLite__DOT__axi_ram__DOT___GEN_9 = ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T) 
                                                  | ((~ 
                                                      ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___ren_T_1) 
                                                       & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__in_r_bits_last))) 
                                                     & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__r_busy)));
    vlSelf->SocLite__DOT__axi_ram__DOT__ren = ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__ren_REG) 
                                               | ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___ren_T_1) 
                                                  & (~ (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__in_r_bits_last))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_ready 
        = (1U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits) 
                  & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__full))) 
                 | (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits) 
                     >> 1U) & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__full)))));
    SocLite__DOT__axi4xbar__DOT___GEN_59 = ((0xbU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                             ? (((0U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_count)) 
                                                 | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_last) 
                                                    == 
                                                    (1U 
                                                     & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                        >> 1U)))) 
                                                & (7U 
                                                   != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_count)))
                                             : ((0xaU 
                                                 == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                 ? 
                                                (((0U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_count)) 
                                                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_last) 
                                                     == 
                                                     (1U 
                                                      & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                         >> 1U)))) 
                                                 & (7U 
                                                    != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_count)))
                                                 : 
                                                ((9U 
                                                  == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                  ? 
                                                 (((0U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_count)) 
                                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_last) 
                                                      == 
                                                      (1U 
                                                       & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                          >> 1U)))) 
                                                  & (7U 
                                                     != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_count)))
                                                  : 
                                                 ((8U 
                                                   == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                   ? 
                                                  (((0U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_count)) 
                                                    | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_last) 
                                                       == 
                                                       (1U 
                                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                           >> 1U)))) 
                                                   & (7U 
                                                      != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_count)))
                                                   : 
                                                  ((7U 
                                                    == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                    ? 
                                                   (((0U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_count)) 
                                                     | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_last) 
                                                        == 
                                                        (1U 
                                                         & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                            >> 1U)))) 
                                                    & (7U 
                                                       != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_count)))
                                                    : 
                                                   ((6U 
                                                     == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                     ? 
                                                    (((0U 
                                                       == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_count)) 
                                                      | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_last) 
                                                         == 
                                                         (1U 
                                                          & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                             >> 1U)))) 
                                                     & (7U 
                                                        != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_count)))
                                                     : (IData)(SocLite__DOT__axi4xbar__DOT___GEN_53)))))));
    SocLite__DOT__axi4xbar__DOT___GEN_43 = ((0xbU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                             ? (((0U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_count)) 
                                                 | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_last) 
                                                    == 
                                                    (1U 
                                                     & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                        >> 1U)))) 
                                                & (7U 
                                                   != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_count)))
                                             : ((0xaU 
                                                 == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                 ? 
                                                (((0U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_count)) 
                                                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_last) 
                                                     == 
                                                     (1U 
                                                      & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                         >> 1U)))) 
                                                 & (7U 
                                                    != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_count)))
                                                 : 
                                                ((9U 
                                                  == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                  ? 
                                                 (((0U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_count)) 
                                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_last) 
                                                      == 
                                                      (1U 
                                                       & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                          >> 1U)))) 
                                                  & (7U 
                                                     != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_count)))
                                                  : 
                                                 ((8U 
                                                   == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                   ? 
                                                  (((0U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_count)) 
                                                    | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_last) 
                                                       == 
                                                       (1U 
                                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                           >> 1U)))) 
                                                   & (7U 
                                                      != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_count)))
                                                   : 
                                                  ((7U 
                                                    == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                    ? 
                                                   (((0U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_count)) 
                                                     | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_last) 
                                                        == 
                                                        (1U 
                                                         & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                            >> 1U)))) 
                                                    & (7U 
                                                       != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_count)))
                                                    : 
                                                   ((6U 
                                                     == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                                                     ? 
                                                    (((0U 
                                                       == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_count)) 
                                                      | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_last) 
                                                         == 
                                                         (1U 
                                                          & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                             >> 1U)))) 
                                                     & (7U 
                                                        != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_count)))
                                                     : (IData)(SocLite__DOT__axi4xbar__DOT___GEN_37)))))));
    vlSelf->SocLite__DOT__axi4xbar_auto_out_1_w_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_valid) 
           & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits) 
              >> 1U));
    vlSelf->SocLite__DOT__axi4xbar_auto_out_0_w_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_valid) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits));
    vlSelf->SocLite__DOT__axi4xbar__DOT___readys_mask_T_5 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo_1));
    vlSelf->SocLite__DOT__axi4xbar__DOT__winner_3_0 
        = (1U & ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5)) 
                 & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__winner_3_1 
        = (1U & ((~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5) 
                     >> 1U)) & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___readys_mask_T 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo));
    vlSelf->SocLite__DOT__axi4xbar__DOT__winner_2_0 
        = (1U & ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2)) 
                 & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__winner_2_1 
        = (1U & ((~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2) 
                     >> 1U)) & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty))));
    vlSelf->SocLite__DOT__axi_ram__DOT___GEN_11 = (
                                                   ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__ren) 
                                                    & ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T) 
                                                       | (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__r_busy))) 
                                                   | ((~ (IData)(vlSelf->SocLite__DOT__axi_ram__DOT___ren_T_1)) 
                                                      & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_r_valid_r)));
    vlSelf->SocLite__DOT__axi_ram__DOT___GEN_7 = ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T)
                                                   ? 
                                                  ((vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data 
                                                    >> (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data)) 
                                                   & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data))
                                                   : 
                                                  (0xffU 
                                                   & ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__ren)
                                                       ? 
                                                      (((2U 
                                                         == 
                                                         ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T)
                                                           ? (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data)
                                                           : (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__r_1))) 
                                                        & ((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_1) 
                                                           == (IData)(vlSelf->SocLite__DOT__axi_ram__DOT___GEN_0)))
                                                        ? 0U
                                                        : 
                                                       ((IData)(1U) 
                                                        + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_1)))
                                                       : (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_1))));
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_ready 
        = (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__empty)) 
            & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_ready));
    vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_63 = 
        ((0xfU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
          ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_count)) 
              | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_last) 
                 == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                           >> 1U)))) & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_count)))
          : ((0xeU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
              ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_count)) 
                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_last) 
                     == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                               >> 1U)))) & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_count)))
              : ((0xdU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                  ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_count)) 
                      | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_last) 
                         == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                   >> 1U)))) & (7U 
                                                != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_count)))
                  : ((0xcU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                      ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_count)) 
                          | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_last) 
                             == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                       >> 1U)))) & 
                         (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_count)))
                      : (IData)(SocLite__DOT__axi4xbar__DOT___GEN_59)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_47 = 
        ((0xfU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
          ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_count)) 
              | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_last) 
                 == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                           >> 1U)))) & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_count)))
          : ((0xeU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
              ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_count)) 
                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_last) 
                     == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                               >> 1U)))) & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_count)))
              : ((0xdU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                  ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_count)) 
                      | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_last) 
                         == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                   >> 1U)))) & (7U 
                                                != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_count)))
                  : ((0xcU == (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data))
                      ? (((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_count)) 
                          | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_last) 
                             == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                       >> 1U)))) & 
                         (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_count)))
                      : (IData)(SocLite__DOT__axi4xbar__DOT___GEN_43)))));
    if (vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3) {
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_0 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__winner_3_0;
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_1 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__winner_3_1;
    } else {
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_0 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_0;
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_1 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_1;
    }
    if (vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2) {
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__winner_2_0;
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__winner_2_1;
    } else {
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_0;
        vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1 
            = vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_1;
    }
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__do_deq 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__empty)) 
           & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_ready) 
              & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid)));
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___GEN_9 
        = ((~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_ready)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___do_enq_T));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_valid 
        = (((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__empty)) 
            & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__latched) 
               | (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)))) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_63));
    SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1 = 
        ((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_ready) 
           & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__latched) 
              | (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)))) 
          & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_63)) 
         & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__empty)));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_valid 
        = ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__empty)) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_47));
    SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1 = 
        (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_ready) 
          & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_47)) 
         & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__empty)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___T_77 = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_0)
                                                   ? 
                                                  vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_id
                                                  [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value_1]
                                                   : 0U);
    vlSelf->SocLite__DOT__axi4xbar__DOT___T_78 = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_1)
                                                   ? 
                                                  vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_id
                                                  [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value_1]
                                                   : 0U);
    vlSelf->SocLite__DOT__axi4xbar__DOT___T_54 = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0)
                                                   ? 
                                                  vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_id
                                                  [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]
                                                   : 0U);
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last 
        = (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0) 
            & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data)) 
           | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1) 
              & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___T_55 = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1)
                                                   ? 
                                                  vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_id
                                                  [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]
                                                   : 0U);
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__do_enq 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__empty)
            ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___GEN_9)
            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___do_enq_T));
    vlSelf->SocLite__DOT__axi4xbar_auto_out_1_aw_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_valid) 
           & (0ULL == (0x90000000ULL & (QData)((IData)(
                                                       (0x90000000U 
                                                        ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))));
    vlSelf->SocLite__DOT__axi4xbar_auto_out_0_aw_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_valid) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_2 
        = (0xffffU & (((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_1_T_2 
        = (0x7fffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                       >> 1U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_2_T_2 
        = (0x3fffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                       >> 2U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_3_T_2 
        = (0x1fffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                       >> 3U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_4_T_2 
        = (0xfffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 4U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_5_T_2 
        = (0x7ffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 5U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_6_T_2 
        = (0x3ffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 6U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_7_T_2 
        = (0x1ffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 7U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_8_T_2 
        = (0xffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 8U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_9_T_2 
        = (0x7fU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 9U) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_10_T_2 
        = (0x3fU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 0xaU) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_11_T_2 
        = (0x1fU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 0xbU) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_12_T_2 
        = (0xfU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                    >> 0xcU) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_13_T_2 
        = (7U & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                  >> 0xdU) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_14_T_2 
        = (3U & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                  >> 0xeU) & (IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_15_T_2 
        = ((IData)(SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_1) 
           & (((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
              >> 0xfU));
    vlSelf->SocLite__DOT__axi4xbar_auto_out_1_ar_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_valid) 
           & (0ULL == (0x90000000ULL & (QData)((IData)(
                                                       (0x90000000U 
                                                        ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))));
    vlSelf->SocLite__DOT__axi4xbar_auto_out_0_ar_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_valid) 
           & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestARIO_0_0));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_2 
        = (0xffffU & (((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_1_T_2 
        = (0x7fffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                       >> 1U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_2_T_2 
        = (0x3fffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                       >> 2U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_3_T_2 
        = (0x1fffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                       >> 3U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_4_T_2 
        = (0xfffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 4U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_5_T_2 
        = (0x7ffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 5U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_6_T_2 
        = (0x3ffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 6U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_7_T_2 
        = (0x1ffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                      >> 7U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_8_T_2 
        = (0xffU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 8U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_9_T_2 
        = (0x7fU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 9U) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_10_T_2 
        = (0x3fU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 0xaU) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_11_T_2 
        = (0x1fU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                     >> 0xbU) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_12_T_2 
        = (0xfU & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                    >> 0xcU) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_13_T_2 
        = (7U & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                  >> 0xdU) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_14_T_2 
        = (3U & ((((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
                  >> 0xeU) & (IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1)));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_15_T_2 
        = ((IData)(SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_1) 
           & (((IData)(1U) << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)) 
              >> 0xfU));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_77) 
           | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_78));
    vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_54) 
           | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_55));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_2)) 
                 - (0xffffU & (((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                               & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_1_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_1_T_2)) 
                 - (0x7fffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                                >> 1U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_2_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_2_T_2)) 
                 - (0x3fffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                                >> 2U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_3_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_3_T_2)) 
                 - (0x1fffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                                >> 3U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_4_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_4_T_2)) 
                 - (0xfffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                               >> 4U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_5_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_5_T_2)) 
                 - (0x7ffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                               >> 5U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_6_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_6_T_2)) 
                 - (0x3ffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                               >> 6U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_7_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_7_T_2)) 
                 - (0x1ffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                               >> 7U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_8_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_8_T_2)) 
                 - (0xffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                              >> 8U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_9_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_9_T_2)) 
                 - (0x7fU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                              >> 9U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_10_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_10_T_2)) 
                 - (0x3fU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                              >> 0xaU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_11_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_11_T_2)) 
                 - (0x1fU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                              >> 0xbU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_12_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_12_T_2)) 
                 - (0xfU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                             >> 0xcU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_13_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_13_T_2)) 
                 - (7U & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                           >> 0xdU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_14_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_14_T_2)) 
                 - (3U & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                           >> 0xeU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_15_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_15_T_2)) 
                 - (1U & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)) 
                           >> 0xfU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awFIFOMap_0_T_4)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_2)) 
                 - (0xffffU & ((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                               & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_1_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_1_T_2)) 
                 - (0x7fffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                 >> 1U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                               & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_2_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_2_T_2)) 
                 - (0x3fffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                 >> 2U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                               & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_3_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_3_T_2)) 
                 - (0x1fffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                 >> 3U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                               & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_4_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_4_T_2)) 
                 - (0xfffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                >> 4U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                              & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_5_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_5_T_2)) 
                 - (0x7ffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                >> 5U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                              & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_6_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_6_T_2)) 
                 - (0x3ffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                >> 6U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                              & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_7_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_7_T_2)) 
                 - (0x1ffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                                >> 7U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                              & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_8_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_8_T_2)) 
                 - (0xffU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                               >> 8U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                             & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_9_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_9_T_2)) 
                 - (0x7fU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                               >> 9U) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                             & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_10_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_10_T_2)) 
                 - (0x3fU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                               >> 0xaU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                             & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_11_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_11_T_2)) 
                 - (0x1fU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                               >> 0xbU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                             & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_12_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_12_T_2)) 
                 - (0xfU & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                              >> 0xcU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                            & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_13_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_13_T_2)) 
                 - (7U & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                            >> 0xdU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                          & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_14_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_14_T_2)) 
                 - (3U & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                            >> 0xeU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                          & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
    vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_15_count_T_3 
        = (7U & (((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_count) 
                  + (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_15_T_2)) 
                 - (1U & (((((IData)(1U) << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)) 
                            >> 0xfU) & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arFIFOMap_0_T_4)) 
                          & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last)))));
}

VL_ATTR_COLD void VSocLite___024root___initial__TOP__0(VSocLite___024root* vlSelf);
VL_ATTR_COLD void VSocLite_simple_port_lutram__S100_D15___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0(VSocLite_simple_port_lutram__S100_D15* vlSelf);
VL_ATTR_COLD void VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0(VSocLite_simple_port_ram__S100* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf_2__0(VSocLite_AXI4Buffer* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf__0(VSocLite_AXI4Buffer* vlSelf);

VL_ATTR_COLD void VSocLite___024root___eval_initial(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___eval_initial\n"); );
    // Body
    VSocLite___024root___initial__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
    VSocLite_simple_port_lutram__S100_D15___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag));
    VSocLite_simple_port_lutram__S100_D15___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag));
    VSocLite_simple_port_lutram__S100_D15___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag));
    VSocLite_simple_port_lutram__S100_D15___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data));
    VSocLite_simple_port_ram__S100___initial__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank__0((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data));
    VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf_2__0((&vlSymsp->TOP__SocLite__DOT__axi4buf_2));
    VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf__0((&vlSymsp->TOP__SocLite__DOT__axi4buf_1));
    VSocLite_AXI4Buffer___initial__TOP__SocLite__DOT__axi4buf__0((&vlSymsp->TOP__SocLite__DOT__axi4buf));
    vlSelf->__Vclklast__TOP__clock = vlSelf->clock;
}

VL_ATTR_COLD void VSocLite___024root___settle__TOP__0(VSocLite___024root* vlSelf);
VL_ATTR_COLD void VSocLite___024root___settle__TOP__1(VSocLite___024root* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__0(VSocLite_AXI4Buffer* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__0(VSocLite_AXI4Buffer* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__0(VSocLite_AXI4Buffer* vlSelf);
void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__1(VSocLite_simple_port_lutram__S100_D15* vlSelf);
void VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__1(VSocLite_simple_port_lutram__S100_D15* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__1(VSocLite_AXI4Buffer* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__1(VSocLite_AXI4Buffer* vlSelf);
VL_ATTR_COLD void VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__1(VSocLite_AXI4Buffer* vlSelf);

VL_ATTR_COLD void VSocLite___024root___eval_settle(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___eval_settle\n"); );
    // Body
    VSocLite___024root___settle__TOP__0(vlSelf);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
    VSocLite___024root___settle__TOP__1(vlSelf);
    VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__0((&vlSymsp->TOP__SocLite__DOT__axi4buf_2));
    VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__0((&vlSymsp->TOP__SocLite__DOT__axi4buf_1));
    VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__0((&vlSymsp->TOP__SocLite__DOT__axi4buf));
    VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__1((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag));
    VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag__1((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag));
    VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__1((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag));
    VSocLite_simple_port_lutram__S100_D15___sequent__TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag__1((&vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag));
    VSocLite___024root___settle__TOP__2(vlSelf);
    VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_2__1((&vlSymsp->TOP__SocLite__DOT__axi4buf_2));
    VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf__1((&vlSymsp->TOP__SocLite__DOT__axi4buf));
    VSocLite_AXI4Buffer___settle__TOP__SocLite__DOT__axi4buf_1__1((&vlSymsp->TOP__SocLite__DOT__axi4buf_1));
}
