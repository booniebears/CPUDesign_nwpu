// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VSocLite__Syms.h"


void VSocLite___024root__trace_chg_sub_0(VSocLite___024root* vlSelf, VerilatedVcd* tracep);

void VSocLite___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root__trace_chg_top_0\n"); );
    // Init
    VSocLite___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VSocLite___024root*>(voidSelf);
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    VSocLite___024root__trace_chg_sub_0((&vlSymsp->TOP), tracep);
}

void VSocLite___024root__trace_chg_sub_0(VSocLite___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root__trace_chg_sub_0\n"); );
    // Init
    vluint32_t* const oldp VL_ATTR_UNUSED = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    VlWide<4>/*127:0*/ __Vtemp_hceabb219__0;
    VlWide<3>/*95:0*/ __Vtemp_hba79ffa6__0;
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[0U])) {
        tracep->chgIData(oldp+0,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__initvar),32);
        tracep->chgIData(oldp+1,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_dirty__DOT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+2,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_dirty__DOT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+3,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+4,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__initvar),32);
        tracep->chgIData(oldp+5,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__initvar),32);
        tracep->chgIData(oldp+6,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__initvar),32);
        tracep->chgIData(oldp+7,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__initvar),32);
        tracep->chgIData(oldp+8,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__initvar),32);
        tracep->chgIData(oldp+9,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__initvar),32);
        tracep->chgIData(oldp+10,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__initvar),32);
        tracep->chgIData(oldp+11,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__initvar),32);
        tracep->chgIData(oldp+12,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__initvar),32);
        tracep->chgIData(oldp+13,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__initvar),32);
        tracep->chgIData(oldp+14,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__initvar),32);
        tracep->chgIData(oldp+15,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__initvar),32);
        tracep->chgIData(oldp+16,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__initvar),32);
        tracep->chgIData(oldp+17,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__initvar),32);
        tracep->chgIData(oldp+18,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__initvar),32);
        tracep->chgIData(oldp+19,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+20,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+21,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+22,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+23,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+24,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+25,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+26,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+27,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+28,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+29,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+30,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+31,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+32,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+33,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+34,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+35,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+36,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+37,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
        tracep->chgIData(oldp+38,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__init_zeroes__DOT__initword),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        tracep->chgBit(oldp+39,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__full)))));
        tracep->chgBit(oldp+40,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid));
        tracep->chgCData(oldp+41,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? 3U : ((2U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                 ? 1U
                                                 : 0U))
                                    : 0U)),4);
        tracep->chgIData(oldp+42,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))
                                            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_Addr
                                            : 0U) : 
                                       ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                         ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_Addr
                                             : 0U) : 
                                        ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                          ? 0U : 0U)))
                                    : 0U)),32);
        tracep->chgCData(oldp+43,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? 0U : ((2U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                 ? 3U
                                                 : 0U))
                                    : 0U)),8);
        tracep->chgCData(oldp+44,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? 2U : ((2U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                 ? 2U
                                                 : 0U))
                                    : 0U)),3);
        tracep->chgCData(oldp+45,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? 1U : ((2U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                 ? 1U
                                                 : 0U))
                                    : 0U)),2);
        tracep->chgBit(oldp+46,(0U));
        tracep->chgCData(oldp+47,(0U),4);
        tracep->chgCData(oldp+48,(0U),3);
        tracep->chgBit(oldp+49,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__full)))));
        tracep->chgBit(oldp+50,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid));
        tracep->chgIData(oldp+51,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_WData
                                        : ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                            ? ((2U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[0U]
                                                : (
                                                   (3U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                    ? 
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[1U]
                                                    : 
                                                   ((4U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                     ? 
                                                    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[2U]
                                                     : 
                                                    ((5U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                      ? 
                                                     vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[3U]
                                                      : 0U))))
                                            : ((3U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                ? 0U
                                                : 0U)))
                                    : 0U)),32);
        tracep->chgCData(oldp+52,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? (0xfU & ((1U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_WStrb)
                                                : (
                                                   (2U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                    ? 0xfU
                                                    : 
                                                   ((3U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                     ? 0U
                                                     : 0U))))
                                    : 0U)),4);
        tracep->chgBit(oldp+53,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                  ? (1U & ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                            ? (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))
                                            : ((2U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                ? (5U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                : (
                                                   (3U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                    ? 0U
                                                    : 0U))))
                                  : 0U)));
        tracep->chgBit(oldp+54,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                  ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                      ? 1U : ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                               ? 1U
                                               : 0U))
                                  : 0U)));
        tracep->chgBit(oldp+55,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__empty)))));
        tracep->chgCData(oldp+56,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data),4);
        tracep->chgCData(oldp+57,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data),2);
        tracep->chgBit(oldp+58,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__full)))));
        tracep->chgBit(oldp+59,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid));
        tracep->chgIData(oldp+60,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                                            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_Addr
                                            : 0U) : 
                                       ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                         ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))
                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_Addr
                                             : 0U) : 
                                        ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                          ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))
                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_Addr
                                              : 0U)
                                          : 0U))) : 0U)),32);
        tracep->chgCData(oldp+61,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? 0U : ((2U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                 ? 3U
                                                 : 
                                                ((3U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                  ? 3U
                                                  : 0U)))
                                    : 0U)),8);
        tracep->chgCData(oldp+62,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? (7U & ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                              ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_load_size)
                                              : ((2U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                  ? 2U
                                                  : 
                                                 ((3U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                   ? 2U
                                                   : 0U))))
                                    : 0U)),3);
        tracep->chgCData(oldp+63,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                    ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                        ? 1U : ((2U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                 ? 1U
                                                 : 
                                                ((3U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                  ? 1U
                                                  : 0U)))
                                    : 0U)),2);
        tracep->chgBit(oldp+64,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                  ? (1U & ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                            ? (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                                            : ((2U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready)
                                                : (
                                                   (3U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                    ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready)
                                                    : 0U))))
                                  : 0U)));
        tracep->chgBit(oldp+65,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__empty)))));
        tracep->chgCData(oldp+66,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data),4);
        tracep->chgIData(oldp+67,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data),32);
        tracep->chgCData(oldp+68,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data),2);
        tracep->chgBit(oldp+69,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data));
        tracep->chgIData(oldp+70,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[0U]),32);
        tracep->chgBit(oldp+71,((0U != (0xfU & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__rf_we)))))));
        tracep->chgCData(oldp+72,((0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U])),5);
        tracep->chgIData(oldp+73,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U]),32);
        tracep->chgBit(oldp+74,((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_ready) 
                                  & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__latched) 
                                     | (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)))) 
                                 & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_63))));
        tracep->chgBit(oldp+75,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__empty)))));
        tracep->chgCData(oldp+76,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data),4);
        tracep->chgIData(oldp+77,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data),32);
        tracep->chgCData(oldp+78,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data),8);
        tracep->chgCData(oldp+79,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data),3);
        tracep->chgCData(oldp+80,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data),2);
        tracep->chgBit(oldp+81,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data));
        tracep->chgCData(oldp+82,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data),4);
        tracep->chgCData(oldp+83,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data),3);
        tracep->chgBit(oldp+84,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_ready) 
                                 & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid))));
        tracep->chgBit(oldp+85,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__empty)))));
        tracep->chgIData(oldp+86,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data),32);
        tracep->chgCData(oldp+87,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data),4);
        tracep->chgBit(oldp+88,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data));
        tracep->chgBit(oldp+89,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)))));
        tracep->chgBit(oldp+90,(vlSelf->SocLite__DOT__axi4xbar_auto_in_b_valid));
        tracep->chgCData(oldp+91,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_77) 
                                   | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_78))),4);
        tracep->chgCData(oldp+92,((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_0)
                                     ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_resp
                                    [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value_1]
                                     : 0U) | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_1)
                                               ? vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_resp
                                              [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value_1]
                                               : 0U))),2);
        tracep->chgBit(oldp+93,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_ready) 
                                 & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___GEN_47))));
        tracep->chgBit(oldp+94,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__empty)))));
        tracep->chgCData(oldp+95,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data),4);
        tracep->chgIData(oldp+96,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data),32);
        tracep->chgCData(oldp+97,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data),8);
        tracep->chgCData(oldp+98,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data),3);
        tracep->chgCData(oldp+99,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data),2);
        tracep->chgBit(oldp+100,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data));
        tracep->chgCData(oldp+101,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data),4);
        tracep->chgCData(oldp+102,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data),3);
        tracep->chgBit(oldp+103,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)))));
        tracep->chgBit(oldp+104,(vlSelf->SocLite__DOT__axi4xbar_auto_in_r_valid));
        tracep->chgCData(oldp+105,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_54) 
                                    | (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___T_55))),4);
        tracep->chgIData(oldp+106,((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0)
                                      ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_data
                                     [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]
                                      : 0U) | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1)
                                                ? vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_data
                                               [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]
                                                : 0U))),32);
        tracep->chgCData(oldp+107,((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0)
                                      ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_resp
                                     [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]
                                      : 0U) | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1)
                                                ? vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_resp
                                               [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]
                                                : 0U))),2);
        tracep->chgBit(oldp+108,((((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0) 
                                   & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data)) 
                                  | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1) 
                                     & (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data)))));
        tracep->chgBit(oldp+109,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__full)))));
        tracep->chgBit(oldp+110,(vlSelf->SocLite__DOT__axi4xbar_auto_out_1_aw_valid));
        tracep->chgBit(oldp+111,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__full)))));
        tracep->chgBit(oldp+112,(vlSelf->SocLite__DOT__axi4xbar_auto_out_1_w_valid));
        tracep->chgBit(oldp+113,((1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)) 
                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
                                            ? (~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5) 
                                                  >> 1U))
                                            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_1))))));
        tracep->chgBit(oldp+114,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty)))));
        tracep->chgCData(oldp+115,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value_1]),4);
        tracep->chgCData(oldp+116,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_resp
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+117,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__full)))));
        tracep->chgBit(oldp+118,(vlSelf->SocLite__DOT__axi4xbar_auto_out_1_ar_valid));
        tracep->chgBit(oldp+119,((1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
                                            ? (~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2) 
                                                  >> 1U))
                                            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_1))))));
        tracep->chgBit(oldp+120,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty)))));
        tracep->chgCData(oldp+121,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]),4);
        tracep->chgIData(oldp+122,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_data
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]),32);
        tracep->chgCData(oldp+123,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_resp
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+124,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data));
        tracep->chgBit(oldp+125,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__full)))));
        tracep->chgBit(oldp+126,(vlSelf->SocLite__DOT__axi4xbar_auto_out_0_aw_valid));
        tracep->chgBit(oldp+127,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__full)))));
        tracep->chgBit(oldp+128,(vlSelf->SocLite__DOT__axi4xbar_auto_out_0_w_valid));
        tracep->chgBit(oldp+129,((1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)) 
                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
                                            ? (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5))
                                            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_0))))));
        tracep->chgBit(oldp+130,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty)))));
        tracep->chgCData(oldp+131,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value_1]),4);
        tracep->chgCData(oldp+132,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_resp
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+133,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__full)))));
        tracep->chgBit(oldp+134,(vlSelf->SocLite__DOT__axi4xbar_auto_out_0_ar_valid));
        tracep->chgBit(oldp+135,((1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                        & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
                                            ? (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2))
                                            : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_0))))));
        tracep->chgBit(oldp+136,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty)))));
        tracep->chgCData(oldp+137,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]),4);
        tracep->chgIData(oldp+138,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_data
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]),32);
        tracep->chgCData(oldp+139,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_resp
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+140,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data));
        tracep->chgBit(oldp+141,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__w_busy)))));
        tracep->chgBit(oldp+142,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__empty)))));
        tracep->chgCData(oldp+143,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),4);
        tracep->chgIData(oldp+144,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),32);
        tracep->chgBit(oldp+145,((1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__empty)) 
                                        | (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__w_busy)))));
        tracep->chgBit(oldp+146,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__empty)))));
        tracep->chgIData(oldp+147,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_data
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1]),32);
        tracep->chgCData(oldp+148,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1]),4);
        tracep->chgBit(oldp+149,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data));
        tracep->chgBit(oldp+150,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__full)))));
        tracep->chgBit(oldp+151,(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_b_valid_r));
        tracep->chgCData(oldp+152,(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_b_bits_id_r),4);
        tracep->chgBit(oldp+153,((1U & ((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                        | (~ (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__r_busy))))));
        tracep->chgBit(oldp+154,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__empty)))));
        tracep->chgCData(oldp+155,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__value_1]),4);
        tracep->chgIData(oldp+156,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data),32);
        tracep->chgCData(oldp+157,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data),8);
        tracep->chgCData(oldp+158,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data),3);
        tracep->chgCData(oldp+159,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data),2);
        tracep->chgBit(oldp+160,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__full)))));
        tracep->chgBit(oldp+161,(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_r_valid_r));
        tracep->chgCData(oldp+162,(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_r_bits_id_r),4);
        tracep->chgIData(oldp+163,(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_r_bits_data_r),32);
        tracep->chgBit(oldp+164,(((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value) 
                                  == (IData)(vlSelf->SocLite__DOT__axi_ram__DOT___GEN_0))));
        tracep->chgBit(oldp+165,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_awready));
        tracep->chgBit(oldp+166,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__empty)))));
        tracep->chgCData(oldp+167,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),4);
        tracep->chgIData(oldp+168,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_addr
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),32);
        tracep->chgCData(oldp+169,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_len
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),8);
        tracep->chgCData(oldp+170,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_size
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),3);
        tracep->chgCData(oldp+171,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_burst
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+172,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_lock
                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]));
        tracep->chgCData(oldp+173,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_cache
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),4);
        tracep->chgCData(oldp+174,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_prot
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),3);
        tracep->chgBit(oldp+175,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_wready_reg));
        tracep->chgBit(oldp+176,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__empty)))));
        tracep->chgIData(oldp+177,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_data
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1]),32);
        tracep->chgCData(oldp+178,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1]),4);
        tracep->chgBit(oldp+179,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_last
                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1]));
        tracep->chgBit(oldp+180,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__full)))));
        tracep->chgBit(oldp+181,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_bvalid_reg));
        tracep->chgCData(oldp+182,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_id),4);
        tracep->chgBit(oldp+183,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_arready));
        tracep->chgBit(oldp+184,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__empty)))));
        tracep->chgCData(oldp+185,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_id
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),4);
        tracep->chgIData(oldp+186,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_addr
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),32);
        tracep->chgCData(oldp+187,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_len
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),8);
        tracep->chgCData(oldp+188,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_size
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),3);
        tracep->chgCData(oldp+189,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_burst
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+190,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_lock
                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]));
        tracep->chgCData(oldp+191,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_cache
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),4);
        tracep->chgCData(oldp+192,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_prot
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),3);
        tracep->chgBit(oldp+193,((1U & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__full)))));
        tracep->chgBit(oldp+194,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rvalid_reg));
        tracep->chgIData(oldp+195,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rdata_reg),32);
        tracep->chgBit(oldp+196,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rlast_reg));
        tracep->chgCData(oldp+197,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_len
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),8);
        tracep->chgCData(oldp+198,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_size
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),3);
        tracep->chgCData(oldp+199,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_burst
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),2);
        tracep->chgBit(oldp+200,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_lock
                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]));
        tracep->chgCData(oldp+201,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_cache
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),4);
        tracep->chgCData(oldp+202,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_prot
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]),3);
        tracep->chgBit(oldp+203,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_lock
                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__value_1]));
        tracep->chgCData(oldp+204,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_cache
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__value_1]),4);
        tracep->chgCData(oldp+205,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_prot
                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__value_1]),3);
        tracep->chgBit(oldp+206,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full)))));
        tracep->chgBit(oldp+207,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_valid));
        tracep->chgCData(oldp+208,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_enq_bits),2);
        tracep->chgBit(oldp+209,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_ready));
        tracep->chgBit(oldp+210,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_valid));
        tracep->chgCData(oldp+211,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits),2);
        tracep->chgBit(oldp+212,(vlSelf->SocLite__DOT__axi4xbar__DOT__requestARIO_0_0));
        tracep->chgBit(oldp+213,((0ULL == (0x90000000ULL 
                                           & (QData)((IData)(
                                                             (0x90000000U 
                                                              ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data)))))));
        tracep->chgBit(oldp+214,(vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0));
        tracep->chgBit(oldp+215,((0ULL == (0x90000000ULL 
                                           & (QData)((IData)(
                                                             (0x90000000U 
                                                              ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data)))))));
        tracep->chgBit(oldp+216,((1U & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits))));
        tracep->chgBit(oldp+217,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0_io_deq_bits) 
                                        >> 1U))));
        tracep->chgBit(oldp+218,(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2));
        tracep->chgCData(oldp+219,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo),2);
        tracep->chgCData(oldp+220,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask),2);
        tracep->chgCData(oldp+221,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo) 
                                    & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask)))),2);
        tracep->chgCData(oldp+222,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter),4);
        tracep->chgCData(oldp+223,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready),4);
        tracep->chgCData(oldp+224,((3U & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2)))),2);
        tracep->chgBit(oldp+225,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2)))));
        tracep->chgBit(oldp+226,(vlSelf->SocLite__DOT__axi4xbar__DOT__winner_2_0));
        tracep->chgBit(oldp+227,(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_0));
        tracep->chgBit(oldp+228,(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_0));
        tracep->chgBit(oldp+229,((1U & (~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2) 
                                           >> 1U)))));
        tracep->chgBit(oldp+230,(vlSelf->SocLite__DOT__axi4xbar__DOT__winner_2_1));
        tracep->chgBit(oldp+231,(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_1));
        tracep->chgBit(oldp+232,(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_2_1));
        tracep->chgCData(oldp+233,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id),4);
        tracep->chgBit(oldp+234,(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3));
        tracep->chgCData(oldp+235,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo_1),2);
        tracep->chgCData(oldp+236,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask_1),2);
        tracep->chgCData(oldp+237,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_lo_1) 
                                    & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_mask_1)))),2);
        tracep->chgCData(oldp+238,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_filter_1),4);
        tracep->chgCData(oldp+239,(vlSelf->SocLite__DOT__axi4xbar__DOT__readys_unready_1),4);
        tracep->chgCData(oldp+240,((3U & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5)))),2);
        tracep->chgBit(oldp+241,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5)))));
        tracep->chgBit(oldp+242,(vlSelf->SocLite__DOT__axi4xbar__DOT__winner_3_0));
        tracep->chgBit(oldp+243,(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_0));
        tracep->chgBit(oldp+244,(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_0));
        tracep->chgBit(oldp+245,((1U & (~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5) 
                                           >> 1U)))));
        tracep->chgBit(oldp+246,(vlSelf->SocLite__DOT__axi4xbar__DOT__winner_3_1));
        tracep->chgBit(oldp+247,(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_1));
        tracep->chgBit(oldp+248,(vlSelf->SocLite__DOT__axi4xbar__DOT__muxState_3_1));
        tracep->chgCData(oldp+249,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id),4);
        tracep->chgSData(oldp+250,((0xffffU & ((IData)(1U) 
                                               << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data)))),16);
        tracep->chgSData(oldp+251,((0xffffU & ((IData)(1U) 
                                               << (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data)))),16);
        tracep->chgSData(oldp+252,((0xffffU & ((IData)(1U) 
                                               << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_id)))),16);
        tracep->chgSData(oldp+253,((0xffffU & ((IData)(1U) 
                                               << (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_b_bits_id)))),16);
        tracep->chgBit(oldp+254,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                        >> 1U))));
        tracep->chgBit(oldp+255,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                        >> 1U))));
        tracep->chgBit(oldp+256,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_ready));
        tracep->chgCData(oldp+257,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_count),3);
        tracep->chgBit(oldp+258,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_last));
        tracep->chgBit(oldp+259,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+260,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_15_count)))));
        tracep->chgCData(oldp+261,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_count),3);
        tracep->chgBit(oldp+262,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_last));
        tracep->chgBit(oldp+263,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+264,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_14_count)))));
        tracep->chgCData(oldp+265,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_count),3);
        tracep->chgBit(oldp+266,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_last));
        tracep->chgBit(oldp+267,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+268,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_13_count)))));
        tracep->chgCData(oldp+269,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_count),3);
        tracep->chgBit(oldp+270,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_last));
        tracep->chgBit(oldp+271,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+272,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_12_count)))));
        tracep->chgCData(oldp+273,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_count),3);
        tracep->chgBit(oldp+274,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_last));
        tracep->chgBit(oldp+275,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+276,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_11_count)))));
        tracep->chgCData(oldp+277,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_count),3);
        tracep->chgBit(oldp+278,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_last));
        tracep->chgBit(oldp+279,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+280,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_10_count)))));
        tracep->chgCData(oldp+281,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_count),3);
        tracep->chgBit(oldp+282,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_last));
        tracep->chgBit(oldp+283,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+284,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_9_count)))));
        tracep->chgCData(oldp+285,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_count),3);
        tracep->chgBit(oldp+286,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_last));
        tracep->chgBit(oldp+287,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+288,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_8_count)))));
        tracep->chgCData(oldp+289,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_count),3);
        tracep->chgBit(oldp+290,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_last));
        tracep->chgBit(oldp+291,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+292,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_7_count)))));
        tracep->chgCData(oldp+293,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_count),3);
        tracep->chgBit(oldp+294,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_last));
        tracep->chgBit(oldp+295,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+296,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_6_count)))));
        tracep->chgCData(oldp+297,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_count),3);
        tracep->chgBit(oldp+298,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_last));
        tracep->chgBit(oldp+299,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+300,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_5_count)))));
        tracep->chgCData(oldp+301,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_count),3);
        tracep->chgBit(oldp+302,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_last));
        tracep->chgBit(oldp+303,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+304,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_4_count)))));
        tracep->chgCData(oldp+305,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_count),3);
        tracep->chgBit(oldp+306,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_last));
        tracep->chgBit(oldp+307,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+308,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_3_count)))));
        tracep->chgCData(oldp+309,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_count),3);
        tracep->chgBit(oldp+310,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_last));
        tracep->chgBit(oldp+311,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+312,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_2_count)))));
        tracep->chgCData(oldp+313,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_count),3);
        tracep->chgBit(oldp+314,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_last));
        tracep->chgBit(oldp+315,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+316,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_1_count)))));
        tracep->chgCData(oldp+317,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_count),3);
        tracep->chgBit(oldp+318,(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_last));
        tracep->chgBit(oldp+319,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+320,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___arTag_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__arFIFOMap_0_count)))));
        tracep->chgBit(oldp+321,(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid));
        tracep->chgBit(oldp+322,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
                                   ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid)
                                   : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_r_valid_T_2))));
        tracep->chgBit(oldp+323,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_r_bits_last));
        tracep->chgBit(oldp+324,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_ready));
        tracep->chgBit(oldp+325,(vlSelf->SocLite__DOT__axi4xbar__DOT__latched));
        tracep->chgCData(oldp+326,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_count),3);
        tracep->chgBit(oldp+327,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_last));
        tracep->chgBit(oldp+328,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+329,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_15_count)))));
        tracep->chgCData(oldp+330,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_count),3);
        tracep->chgBit(oldp+331,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_last));
        tracep->chgBit(oldp+332,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+333,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_14_count)))));
        tracep->chgCData(oldp+334,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_count),3);
        tracep->chgBit(oldp+335,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_last));
        tracep->chgBit(oldp+336,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+337,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_13_count)))));
        tracep->chgCData(oldp+338,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_count),3);
        tracep->chgBit(oldp+339,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_last));
        tracep->chgBit(oldp+340,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+341,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_12_count)))));
        tracep->chgCData(oldp+342,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_count),3);
        tracep->chgBit(oldp+343,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_last));
        tracep->chgBit(oldp+344,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+345,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_11_count)))));
        tracep->chgCData(oldp+346,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_count),3);
        tracep->chgBit(oldp+347,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_last));
        tracep->chgBit(oldp+348,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+349,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_10_count)))));
        tracep->chgCData(oldp+350,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_count),3);
        tracep->chgBit(oldp+351,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_last));
        tracep->chgBit(oldp+352,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+353,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_9_count)))));
        tracep->chgCData(oldp+354,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_count),3);
        tracep->chgBit(oldp+355,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_last));
        tracep->chgBit(oldp+356,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+357,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_8_count)))));
        tracep->chgCData(oldp+358,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_count),3);
        tracep->chgBit(oldp+359,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_last));
        tracep->chgBit(oldp+360,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+361,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_7_count)))));
        tracep->chgCData(oldp+362,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_count),3);
        tracep->chgBit(oldp+363,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_last));
        tracep->chgBit(oldp+364,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+365,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_6_count)))));
        tracep->chgCData(oldp+366,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_count),3);
        tracep->chgBit(oldp+367,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_last));
        tracep->chgBit(oldp+368,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+369,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_5_count)))));
        tracep->chgCData(oldp+370,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_count),3);
        tracep->chgBit(oldp+371,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_last));
        tracep->chgBit(oldp+372,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+373,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_4_count)))));
        tracep->chgCData(oldp+374,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_count),3);
        tracep->chgBit(oldp+375,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_last));
        tracep->chgBit(oldp+376,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+377,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_3_count)))));
        tracep->chgCData(oldp+378,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_count),3);
        tracep->chgBit(oldp+379,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_last));
        tracep->chgBit(oldp+380,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+381,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_2_count)))));
        tracep->chgCData(oldp+382,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_count),3);
        tracep->chgBit(oldp+383,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_last));
        tracep->chgBit(oldp+384,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+385,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_1_count)))));
        tracep->chgCData(oldp+386,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_count),3);
        tracep->chgBit(oldp+387,(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_last));
        tracep->chgBit(oldp+388,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_last) 
                                  == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                            >> 1U)))));
        tracep->chgBit(oldp+389,((((0U == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_count)) 
                                   | ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_last) 
                                      == (1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___awIn_0_io_enq_bits_T) 
                                                >> 1U)))) 
                                  & (7U != (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awFIFOMap_0_count)))));
        tracep->chgBit(oldp+390,(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid_1));
        tracep->chgBit(oldp+391,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
                                   ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__anyValid_1)
                                   : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___in_0_b_valid_T_2))));
        tracep->chgBit(oldp+392,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_valid));
        tracep->chgBit(oldp+393,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_valid));
        tracep->chgBit(oldp+394,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_valid));
        tracep->chgBit(oldp+395,(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_w_ready));
        tracep->chgBit(oldp+396,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_valid) 
                                  & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestARIO_0_0))));
        tracep->chgBit(oldp+397,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_ar_valid) 
                                  & (0ULL == (0x90000000ULL 
                                              & (QData)((IData)(
                                                                (0x90000000U 
                                                                 ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))))));
        tracep->chgBit(oldp+398,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_valid) 
                                  & (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__requestAWIO_0_0))));
        tracep->chgBit(oldp+399,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__in_0_aw_valid) 
                                  & (0ULL == (0x90000000ULL 
                                              & (QData)((IData)(
                                                                (0x90000000U 
                                                                 ^ vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data))))))));
        tracep->chgBit(oldp+400,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
                                         ? (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2))
                                         : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_0)))));
        tracep->chgBit(oldp+401,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_2)
                                         ? (~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_2) 
                                               >> 1U))
                                         : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_2_1)))));
        tracep->chgBit(oldp+402,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
                                         ? (~ (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5))
                                         : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_0)))));
        tracep->chgBit(oldp+403,((1U & ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__idle_3)
                                         ? (~ ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT___readys_readys_T_5) 
                                               >> 1U))
                                         : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__state_3_1)))));
        tracep->chgCData(oldp+404,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__ram[0]),2);
        tracep->chgCData(oldp+405,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__ram[1]),2);
        tracep->chgCData(oldp+406,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__ram
                                   [vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__deq_ptr_value]),2);
        tracep->chgBit(oldp+407,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__deq_ptr_value));
        tracep->chgBit(oldp+408,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__enq_ptr_value));
        tracep->chgBit(oldp+409,(((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__empty)
                                   ? (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___GEN_9)
                                   : (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT___do_enq_T))));
        tracep->chgBit(oldp+410,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__maybe_full));
        tracep->chgBit(oldp+411,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__ptr_match));
        tracep->chgBit(oldp+412,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__empty));
        tracep->chgBit(oldp+413,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__full));
        tracep->chgBit(oldp+414,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__do_enq));
        tracep->chgBit(oldp+415,(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__do_deq));
        tracep->chgCData(oldp+416,((0xfU & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__rf_we))))),4);
        tracep->chgCData(oldp+417,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                     ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                         ? 1U : ((2U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                  ? 1U
                                                  : 0U))
                                     : 0U)),4);
        tracep->chgCData(oldp+418,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                     ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                         ? 0U : ((2U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                  ? 3U
                                                  : 
                                                 ((3U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                   ? 3U
                                                   : 0U)))
                                     : 0U)),4);
        tracep->chgCData(oldp+419,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                     ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                         ? 0U : ((2U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                  ? 3U
                                                  : 0U))
                                     : 0U)),4);
        tracep->chgBit(oldp+420,((1U & (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
                                          ? ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                              ? 0U : 
                                             ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                               ? 0U
                                               : ((3U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                                                   ? 0U
                                                   : 0U)))
                                          : 0U) >> 1U))));
        tracep->chgCData(oldp+421,(0U),2);
        tracep->chgBit(oldp+422,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset));
        tracep->chgBit(oldp+423,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_allowin));
        tracep->chgBit(oldp+424,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_allowin));
        tracep->chgBit(oldp+425,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_allowin));
        tracep->chgBit(oldp+426,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_allowin));
        tracep->chgBit(oldp+427,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_allowin));
        tracep->chgBit(oldp+428,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_ready_go));
        tracep->chgBit(oldp+429,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_valid));
        tracep->chgBit(oldp+430,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_valid));
        tracep->chgBit(oldp+431,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_to_m1s_valid));
        tracep->chgBit(oldp+432,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_to_ms_valid));
        tracep->chgBit(oldp+433,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_to_ws_valid));
        tracep->chgQData(oldp+434,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus),36);
        tracep->chgWData(oldp+436,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_to_m1s_bus),180);
        __Vtemp_hceabb219__0[0U] = (IData)((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result)) 
                                             << 0x20U) 
                                            | (QData)((IData)(
                                                              vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[0U]))));
        __Vtemp_hceabb219__0[1U] = (IData)(((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result)) 
                                              << 0x20U) 
                                             | (QData)((IData)(
                                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[0U]))) 
                                            >> 0x20U));
        __Vtemp_hceabb219__0[2U] = ((0xfff80000U & 
                                     vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U]) 
                                    | ((0x7ff80U & 
                                        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U]) 
                                       | ((0x40U & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U]) 
                                          | ((0x20U 
                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U]) 
                                             | (0x1fU 
                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U])))));
        __Vtemp_hceabb219__0[3U] = ((0x100000U & ((
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                                   << 0xaU) 
                                                  & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__store_record)) 
                                                     << 0x14U))) 
                                    | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_ex) 
                                        << 0x13U) | 
                                       (0x7ffffU & 
                                        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U])));
        tracep->chgWData(oldp+442,(__Vtemp_hceabb219__0),117);
        tracep->chgWData(oldp+446,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_to_ws_bus),71);
        tracep->chgQData(oldp+449,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ws_to_rf_bus),38);
        tracep->chgIData(oldp+451,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_inst),32);
        tracep->chgIData(oldp+452,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_inst),32);
        tracep->chgIData(oldp+453,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_inst),32);
        tracep->chgCData(oldp+454,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_data_wstrb),4);
        tracep->chgIData(oldp+455,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_data_wdata),32);
        tracep->chgBit(oldp+456,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__is_branch));
        tracep->chgIData(oldp+457,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]),32);
        tracep->chgCData(oldp+458,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest),5);
        tracep->chgCData(oldp+459,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest),5);
        tracep->chgCData(oldp+460,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest),5);
        tracep->chgCData(oldp+461,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__WB_dest),5);
        tracep->chgIData(oldp+462,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result),32);
        tracep->chgIData(oldp+463,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result),32);
        tracep->chgIData(oldp+464,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result),32);
        tracep->chgBit(oldp+465,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                        >> 9U))));
        tracep->chgBit(oldp+466,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                        >> 5U))));
        tracep->chgBit(oldp+467,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush));
        tracep->chgBit(oldp+468,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_ex));
        tracep->chgIData(oldp+469,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EPC),32);
        tracep->chgBit(oldp+470,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_TI));
        tracep->chgBit(oldp+471,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IE));
        tracep->chgBit(oldp+472,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_EXL));
        tracep->chgCData(oldp+473,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IM),8);
        tracep->chgCData(oldp+474,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_IP),8);
        tracep->chgIData(oldp+475,((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_Bev)
                                      ? 0xbfc00200U
                                      : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EBase) 
                                    + ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)) 
                                         | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype))) 
                                        | (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)))
                                        ? 0U : 0x180U))),32);
        tracep->chgBit(oldp+476,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                        >> 0x16U))));
        tracep->chgBit(oldp+477,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                        >> 0x13U))));
        tracep->chgBit(oldp+478,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                        >> 0x18U))));
        tracep->chgBit(oldp+479,((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match))));
        tracep->chgIData(oldp+480,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]),20);
        tracep->chgCData(oldp+481,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]),3);
        tracep->chgBit(oldp+482,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]));
        tracep->chgBit(oldp+483,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]));
        tracep->chgIData(oldp+484,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]),20);
        tracep->chgCData(oldp+485,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]),3);
        tracep->chgBit(oldp+486,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]));
        tracep->chgBit(oldp+487,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index]));
        tracep->chgBit(oldp+488,((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match))));
        tracep->chgIData(oldp+489,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]),20);
        tracep->chgCData(oldp+490,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]),3);
        tracep->chgBit(oldp+491,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]));
        tracep->chgBit(oldp+492,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]));
        tracep->chgIData(oldp+493,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]),20);
        tracep->chgCData(oldp+494,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]),3);
        tracep->chgBit(oldp+495,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]));
        tracep->chgBit(oldp+496,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index]));
        tracep->chgIData(oldp+497,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc),32);
        tracep->chgIData(oldp+498,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[0U]),32);
        tracep->chgBit(oldp+499,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_refetch));
        tracep->chgBit(oldp+500,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                                        >> 0x13U))));
        tracep->chgBit(oldp+501,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                                        >> 0x12U))));
        tracep->chgBit(oldp+502,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ICacheInst_delayed));
        tracep->chgCData(oldp+503,((7U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                                          >> 0xfU))),3);
        tracep->chgBit(oldp+504,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state))));
        tracep->chgIData(oldp+505,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_tag 
                                     << 0xcU) | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index) 
                                                 << 4U))),32);
        tracep->chgBit(oldp+506,((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))));
        tracep->chgBit(oldp+507,((6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))));
        tracep->chgWData(oldp+508,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data),128);
        tracep->chgBit(oldp+512,((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))));
        tracep->chgIData(oldp+513,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                     << 0xcU) | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                                 << 4U))),32);
        tracep->chgBit(oldp+514,((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))));
        tracep->chgBit(oldp+515,((6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))));
        tracep->chgWData(oldp+516,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data),128);
        tracep->chgBit(oldp+520,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_wr_req));
        tracep->chgIData(oldp+521,(((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type))
                                     ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_tag_rdata
                                         [(1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag)] 
                                         << 0xcU) | 
                                        ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                         << 4U)) : 
                                    ((7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type))
                                      ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                          << 0xcU) 
                                         | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                             << 4U) 
                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset)))
                                      : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_tag_rdata
                                          [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru
                                          [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index]] 
                                          << 0xcU) 
                                         | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                            << 4U))))),32);
        tracep->chgWData(oldp+522,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_wr_data),128);
        tracep->chgBit(oldp+526,((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))));
        tracep->chgBit(oldp+527,((7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))));
        tracep->chgBit(oldp+528,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__udcache_rd_req));
        tracep->chgIData(oldp+529,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                     << 0xcU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                                  << 4U) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset)))),32);
        tracep->chgCData(oldp+530,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_load_size),3);
        tracep->chgBit(oldp+531,((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))));
        tracep->chgBit(oldp+532,((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))));
        tracep->chgIData(oldp+533,(((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_RData
                                     : 0U)),32);
        tracep->chgBit(oldp+534,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state))));
        tracep->chgIData(oldp+535,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[2U] 
                                     << 0x1cU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[1U] 
                                                  >> 4U))),32);
        tracep->chgCData(oldp+536,((0xfU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[0U])),4);
        tracep->chgIData(oldp+537,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[1U] 
                                     << 0x1cU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[0U] 
                                                  >> 4U))),32);
        tracep->chgBit(oldp+538,((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))));
        tracep->chgBit(oldp+539,((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))));
        tracep->chgCData(oldp+540,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_index),8);
        tracep->chgIData(oldp+541,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_PFN),20);
        tracep->chgCData(oldp+542,((0xfU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc)),4);
        tracep->chgBit(oldp+543,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy));
        tracep->chgIData(oldp+544,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata),32);
        tracep->chgBit(oldp+545,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid));
        tracep->chgBit(oldp+546,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                        >> 0xaU))));
        tracep->chgCData(oldp+547,((0xffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                             >> 4U))),8);
        tracep->chgIData(oldp+548,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB_PFN),20);
        tracep->chgCData(oldp+549,((0xfU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U])),4);
        tracep->chgCData(oldp+550,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_wstrb),4);
        tracep->chgIData(oldp+551,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                                     << 0x11U) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                                  >> 0xfU))),32);
        tracep->chgIData(oldp+552,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata),32);
        tracep->chgCData(oldp+553,(((IData)((0U != 
                                             (0x600U 
                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U])))
                                     ? 0U : ((IData)(
                                                     (0U 
                                                      != 
                                                      (0x1800U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U])))
                                              ? 1U : 2U))),3);
        tracep->chgBit(oldp+554,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache));
        tracep->chgBit(oldp+555,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_busy));
        tracep->chgBit(oldp+556,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__store_record));
        tracep->chgIData(oldp+557,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__es_to_m1s_bus[0U]),32);
        tracep->chgIData(oldp+558,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ms_to_ws_bus[0U]),32);
        tracep->chgBit(oldp+559,((1U & ((((((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                             >> 6U) 
                                            | (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined))) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall)) 
                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break)) 
                                         | (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type))) 
                                        | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type))))));
        tracep->chgCData(oldp+560,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype),5);
        tracep->chgIData(oldp+561,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                   [0x1fU]),32);
        tracep->chgIData(oldp+562,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                   [0x1dU]),32);
        tracep->chgBit(oldp+563,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                        >> 7U))));
        tracep->chgBit(oldp+564,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                        >> 6U))));
        tracep->chgBit(oldp+565,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                        >> 9U))));
        tracep->chgIData(oldp+566,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]),19);
        tracep->chgCData(oldp+567,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]),8);
        tracep->chgCData(oldp+568,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_index),4);
        tracep->chgIData(oldp+569,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]),20);
        tracep->chgCData(oldp+570,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]),3);
        tracep->chgBit(oldp+571,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]));
        tracep->chgBit(oldp+572,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]));
        tracep->chgBit(oldp+573,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]));
        tracep->chgIData(oldp+574,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]),20);
        tracep->chgCData(oldp+575,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1
                                   [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]),3);
        tracep->chgBit(oldp+576,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]));
        tracep->chgBit(oldp+577,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index]));
        tracep->chgIData(oldp+578,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entryhi_VPN2),19);
        tracep->chgCData(oldp+579,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entryhi_ASID),8);
        tracep->chgIData(oldp+580,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_PFN0),20);
        tracep->chgCData(oldp+581,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_C0),3);
        tracep->chgBit(oldp+582,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_D0));
        tracep->chgBit(oldp+583,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_V0));
        tracep->chgBit(oldp+584,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_G0));
        tracep->chgIData(oldp+585,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_PFN1),20);
        tracep->chgCData(oldp+586,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_C1),3);
        tracep->chgBit(oldp+587,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_D1));
        tracep->chgBit(oldp+588,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_V1));
        tracep->chgBit(oldp+589,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_G1));
        tracep->chgCData(oldp+590,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index),4);
        tracep->chgCData(oldp+591,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Random_Random),4);
        tracep->chgIData(oldp+592,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U]),32);
        tracep->chgBit(oldp+593,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__TLB_Buffer_Flush));
        tracep->chgIData(oldp+594,(((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_Addr
                                     : 0U)),32);
        tracep->chgBit(oldp+595,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))));
        tracep->chgBit(oldp+596,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_arready));
        tracep->chgCData(oldp+597,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rid),4);
        tracep->chgIData(oldp+598,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rdata),32);
        tracep->chgCData(oldp+599,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rresp),2);
        tracep->chgBit(oldp+600,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rlast));
        tracep->chgBit(oldp+601,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_rvalid));
        tracep->chgBit(oldp+602,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready));
        tracep->chgBit(oldp+603,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_awready));
        tracep->chgBit(oldp+604,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_wready));
        tracep->chgCData(oldp+605,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bid),4);
        tracep->chgCData(oldp+606,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bresp),2);
        tracep->chgBit(oldp+607,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__i_bus_resp_axi_bvalid));
        tracep->chgIData(oldp+608,(((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_Addr
                                     : 0U)),32);
        tracep->chgBit(oldp+609,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))));
        tracep->chgBit(oldp+610,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_arready));
        tracep->chgCData(oldp+611,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rid),4);
        tracep->chgIData(oldp+612,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rdata),32);
        tracep->chgCData(oldp+613,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rresp),2);
        tracep->chgBit(oldp+614,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rlast));
        tracep->chgBit(oldp+615,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_rvalid));
        tracep->chgBit(oldp+616,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready));
        tracep->chgIData(oldp+617,(((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_Addr
                                     : 0U)),32);
        tracep->chgBit(oldp+618,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))));
        tracep->chgBit(oldp+619,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_awready));
        tracep->chgIData(oldp+620,(((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[0U]
                                     : ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                         ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[1U]
                                         : ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[2U]
                                             : ((5U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                 ? 
                                                vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData[3U]
                                                 : 0U))))),32);
        tracep->chgBit(oldp+621,((5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))));
        tracep->chgBit(oldp+622,(((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state)) 
                                    | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))) 
                                   | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))) 
                                  | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state)))));
        tracep->chgBit(oldp+623,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_wready));
        tracep->chgCData(oldp+624,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bid),4);
        tracep->chgCData(oldp+625,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bresp),2);
        tracep->chgBit(oldp+626,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_bus_resp_axi_bvalid));
        tracep->chgIData(oldp+627,(((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_Addr
                                     : 0U)),32);
        tracep->chgCData(oldp+628,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_load_size),3);
        tracep->chgBit(oldp+629,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))));
        tracep->chgBit(oldp+630,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_arready));
        tracep->chgCData(oldp+631,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rid),4);
        tracep->chgIData(oldp+632,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rdata),32);
        tracep->chgCData(oldp+633,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rresp),2);
        tracep->chgBit(oldp+634,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rlast));
        tracep->chgBit(oldp+635,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_rvalid));
        tracep->chgBit(oldp+636,((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))));
        tracep->chgIData(oldp+637,(((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))
                                     ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_Addr
                                     : 0U)),32);
        tracep->chgBit(oldp+638,((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))));
        tracep->chgBit(oldp+639,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_awready));
        tracep->chgIData(oldp+640,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_WData),32);
        tracep->chgCData(oldp+641,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_WStrb),4);
        tracep->chgBit(oldp+642,((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state))));
        tracep->chgBit(oldp+643,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_wready));
        tracep->chgCData(oldp+644,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bid),4);
        tracep->chgCData(oldp+645,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bresp),2);
        tracep->chgBit(oldp+646,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_bus_resp_axi_bvalid));
        tracep->chgCData(oldp+647,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state),3);
        tracep->chgCData(oldp+648,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_nextstate),3);
        tracep->chgCData(oldp+649,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_DataReady),3);
        tracep->chgIData(oldp+650,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_Addr),32);
        tracep->chgWData(oldp+651,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_I_RData),128);
        tracep->chgCData(oldp+655,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state),3);
        tracep->chgCData(oldp+656,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_nextstate),3);
        tracep->chgCData(oldp+657,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_DataReady),3);
        tracep->chgIData(oldp+658,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_Addr),32);
        tracep->chgWData(oldp+659,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_RData),128);
        tracep->chgCData(oldp+663,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state),3);
        tracep->chgCData(oldp+664,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_nextstate),3);
        tracep->chgIData(oldp+665,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_Addr),32);
        tracep->chgWData(oldp+666,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_WData),128);
        tracep->chgCData(oldp+670,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state),2);
        tracep->chgCData(oldp+671,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_nextstate),2);
        tracep->chgIData(oldp+672,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_Addr),32);
        tracep->chgIData(oldp+673,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_U_RData),32);
        tracep->chgCData(oldp+674,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state),3);
        tracep->chgCData(oldp+675,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_nextstate),3);
        tracep->chgIData(oldp+676,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_Addr),32);
        tracep->chgBit(oldp+677,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_valid));
        tracep->chgBit(oldp+678,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_valid));
        tracep->chgBit(oldp+679,((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))));
        tracep->chgBit(oldp+680,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy));
        tracep->chgCData(oldp+681,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__select),3);
        tracep->chgCData(oldp+682,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index),3);
        tracep->chgCData(oldp+683,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state),3);
        tracep->chgCData(oldp+684,(((4U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
                                     ? ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
                                         ? 0U : ((1U 
                                                  & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
                                                  ? 0U
                                                  : 
                                                 ((6U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))
                                                   ? 5U
                                                   : 4U)))
                                     : ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
                                         ? ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
                                             ? ((0U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))
                                                 ? 4U
                                                 : 3U)
                                             : ((7U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                 ? 3U
                                                 : 2U))
                                         : ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
                                             ? ((0U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))
                                                 ? 2U
                                                 : 1U)
                                             : (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_isUncache) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_is_DCacheInst))
                                                 ? 0U
                                                 : 
                                                (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid) 
                                                  & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)))
                                                  ? 
                                                 ((1U 
                                                   & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit) 
                                                      >> 
                                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru
                                                      [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index]))
                                                   ? 1U
                                                   : 3U)
                                                  : 0U)))))),3);
        tracep->chgCData(oldp+685,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state),3);
        tracep->chgCData(oldp+686,(((4U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state))
                                     ? ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state))
                                         ? 0U : ((1U 
                                                  & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state))
                                                  ? 0U
                                                  : 
                                                 (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid) 
                                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache))
                                                   ? 
                                                  ((0x400U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                    ? 2U
                                                    : 1U)
                                                   : 0U)))
                                     : ((2U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state))
                                         ? ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state))
                                             ? ((3U 
                                                 == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                                                 ? 4U
                                                 : 3U)
                                             : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_full)
                                                 ? 2U
                                                 : 4U))
                                         : ((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state))
                                             ? ((((0U 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state)) 
                                                  & (0U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state))) 
                                                 & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_empty))
                                                 ? 3U
                                                 : 1U)
                                             : ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid) 
                                                  & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache)) 
                                                 & (~ 
                                                    (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                                                     >> 0x12U)))
                                                 ? 
                                                ((0x400U 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                  ? 2U
                                                  : 1U)
                                                 : 0U))))),3);
        tracep->chgBit(oldp+687,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_state));
        tracep->chgBit(oldp+688,((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)) 
                                  & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op))));
        tracep->chgCData(oldp+689,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state),2);
        tracep->chgCData(oldp+690,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_nextstate),2);
        tracep->chgCData(oldp+691,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state),2);
        tracep->chgCData(oldp+692,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_nextstate),2);
        tracep->chgBit(oldp+693,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_flush));
        tracep->chgBit(oldp+694,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid));
        tracep->chgBit(oldp+695,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op));
        tracep->chgCData(oldp+696,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index),8);
        tracep->chgIData(oldp+697,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag),20);
        tracep->chgCData(oldp+698,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset),4);
        tracep->chgIData(oldp+699,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wdata),32);
        tracep->chgCData(oldp+700,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wstrb),4);
        tracep->chgBit(oldp+701,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_isUncache));
        tracep->chgBit(oldp+702,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_is_DCacheInst));
        tracep->chgCData(oldp+703,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type),3);
        tracep->chgBit(oldp+704,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_en));
        tracep->chgCData(oldp+705,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_index),8);
        tracep->chgCData(oldp+706,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_hit),2);
        tracep->chgIData(oldp+707,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_tag),20);
        tracep->chgCData(oldp+708,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_offset),4);
        tracep->chgIData(oldp+709,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_wdata),32);
        tracep->chgCData(oldp+710,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit),2);
        tracep->chgBit(oldp+711,((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__hit))));
        tracep->chgCData(oldp+712,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit),2);
        tracep->chgBit(oldp+713,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit));
        tracep->chgBit(oldp+714,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit_wr));
        tracep->chgBit(oldp+715,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_read_en));
        tracep->chgCData(oldp+716,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we),2);
        tracep->chgCData(oldp+717,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we),2);
        tracep->chgCData(oldp+718,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[0]),4);
        tracep->chgCData(oldp+719,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[1]),4);
        tracep->chgCData(oldp+720,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_index),8);
        tracep->chgCData(oldp+721,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_index),8);
        tracep->chgCData(oldp+722,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index),8);
        tracep->chgCData(oldp+723,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index),8);
        tracep->chgIData(oldp+724,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_wdata),21);
        tracep->chgBit(oldp+725,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_wbit));
        tracep->chgCData(oldp+726,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit),2);
        tracep->chgIData(oldp+727,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata[0]),20);
        tracep->chgIData(oldp+728,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tag_rdata[1]),20);
        tracep->chgBit(oldp+729,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata[0]));
        tracep->chgBit(oldp+730,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__valid_rdata[1]));
        tracep->chgIData(oldp+731,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[0]),32);
        tracep->chgIData(oldp+732,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[1]),32);
        tracep->chgIData(oldp+733,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[2]),32);
        tracep->chgIData(oldp+734,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[3]),32);
        tracep->chgIData(oldp+735,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [0U][0U]),32);
        tracep->chgIData(oldp+736,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [0U][1U]),32);
        tracep->chgIData(oldp+737,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [0U][2U]),32);
        tracep->chgIData(oldp+738,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [0U][3U]),32);
        tracep->chgIData(oldp+739,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [1U][0U]),32);
        tracep->chgIData(oldp+740,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [1U][1U]),32);
        tracep->chgIData(oldp+741,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [1U][2U]),32);
        tracep->chgIData(oldp+742,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata
                                   [1U][3U]),32);
        tracep->chgIData(oldp+743,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata_sel[0]),32);
        tracep->chgIData(oldp+744,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata_sel[1]),32);
        tracep->chgIData(oldp+745,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_write_data),32);
        tracep->chgIData(oldp+746,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_rdata),32);
        tracep->chgIData(oldp+747,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_tag_rdata[0]),20);
        tracep->chgIData(oldp+748,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_tag_rdata[1]),20);
        tracep->chgBit(oldp+749,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))));
        tracep->chgBit(oldp+750,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en));
        tracep->chgBit(oldp+751,((1U & (~ ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state)) 
                                           | (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state)))))));
        tracep->chgBit(oldp+752,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_busy));
        tracep->chgBit(oldp+753,((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))));
        __Vtemp_hba79ffa6__0[0U] = (((IData)((((QData)((IData)(
                                                               ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                                                 << 0xcU) 
                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                                                    << 4U) 
                                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset))))) 
                                               << 0x20U) 
                                              | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wdata)))) 
                                     << 4U) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wstrb));
        __Vtemp_hba79ffa6__0[1U] = (((IData)((((QData)((IData)(
                                                               ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                                                 << 0xcU) 
                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                                                    << 4U) 
                                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset))))) 
                                               << 0x20U) 
                                              | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wdata)))) 
                                     >> 0x1cU) | ((IData)(
                                                          ((((QData)((IData)(
                                                                             ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                                                               << 0xcU) 
                                                                              | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                                                                << 4U) 
                                                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset))))) 
                                                             << 0x20U) 
                                                            | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wdata))) 
                                                           >> 0x20U)) 
                                                  << 4U));
        __Vtemp_hba79ffa6__0[2U] = ((IData)(((((QData)((IData)(
                                                               ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                                                 << 0xcU) 
                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index) 
                                                                    << 4U) 
                                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_offset))))) 
                                               << 0x20U) 
                                              | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_wdata))) 
                                             >> 0x20U)) 
                                    >> 0x1cU);
        tracep->chgWData(oldp+754,(__Vtemp_hba79ffa6__0),68);
        tracep->chgBit(oldp+757,(((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state)) 
                                  & (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)))));
        tracep->chgBit(oldp+758,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_wr_en));
        tracep->chgBit(oldp+759,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_full));
        tracep->chgBit(oldp+760,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_empty));
        tracep->chgWData(oldp+761,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout),68);
        tracep->chgWData(oldp+764,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[0]),68);
        tracep->chgWData(oldp+767,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[1]),68);
        tracep->chgWData(oldp+770,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[2]),68);
        tracep->chgWData(oldp+773,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[3]),68);
        tracep->chgWData(oldp+776,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[4]),68);
        tracep->chgWData(oldp+779,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[5]),68);
        tracep->chgWData(oldp+782,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[6]),68);
        tracep->chgWData(oldp+785,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[7]),68);
        tracep->chgWData(oldp+788,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[8]),68);
        tracep->chgWData(oldp+791,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[9]),68);
        tracep->chgWData(oldp+794,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[10]),68);
        tracep->chgWData(oldp+797,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[11]),68);
        tracep->chgWData(oldp+800,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[12]),68);
        tracep->chgWData(oldp+803,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[13]),68);
        tracep->chgWData(oldp+806,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[14]),68);
        tracep->chgWData(oldp+809,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[15]),68);
        tracep->chgWData(oldp+812,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[16]),68);
        tracep->chgWData(oldp+815,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[17]),68);
        tracep->chgWData(oldp+818,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[18]),68);
        tracep->chgWData(oldp+821,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[19]),68);
        tracep->chgWData(oldp+824,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[20]),68);
        tracep->chgWData(oldp+827,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[21]),68);
        tracep->chgWData(oldp+830,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[22]),68);
        tracep->chgWData(oldp+833,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[23]),68);
        tracep->chgWData(oldp+836,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[24]),68);
        tracep->chgWData(oldp+839,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[25]),68);
        tracep->chgWData(oldp+842,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[26]),68);
        tracep->chgWData(oldp+845,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[27]),68);
        tracep->chgWData(oldp+848,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[28]),68);
        tracep->chgWData(oldp+851,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[29]),68);
        tracep->chgWData(oldp+854,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[30]),68);
        tracep->chgWData(oldp+857,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer[31]),68);
        tracep->chgCData(oldp+860,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__read_ptr),5);
        tracep->chgCData(oldp+861,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__write_ptr),5);
        tracep->chgIData(oldp+862,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__i),32);
        tracep->chgBit(oldp+863,((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we))));
        tracep->chgBit(oldp+864,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_dirty__DOT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_index]));
        tracep->chgBit(oldp+865,((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we) 
                                        >> 1U))));
        tracep->chgBit(oldp+866,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_dirty__DOT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem
                                 [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_index]));
        tracep->chgBit(oldp+867,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__0__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+868,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__0__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+869,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__0__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+870,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__100__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+871,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__100__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+872,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__100__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+873,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__101__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+874,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__101__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+875,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__101__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+876,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__102__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+877,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__102__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+878,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__102__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+879,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__103__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+880,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__103__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+881,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__103__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+882,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__104__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+883,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__104__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+884,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__104__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+885,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__105__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+886,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__105__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+887,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__105__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+888,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__106__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+889,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__106__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+890,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__106__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+891,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__107__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+892,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__107__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+893,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__107__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+894,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__108__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+895,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__108__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+896,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__108__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+897,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__109__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+898,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__109__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+899,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__109__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+900,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__10__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+901,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__10__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+902,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__10__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+903,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__110__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+904,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__110__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+905,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__110__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+906,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__111__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+907,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__111__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+908,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__111__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+909,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__112__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+910,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__112__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+911,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__112__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+912,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__113__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+913,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__113__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+914,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__113__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+915,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__114__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+916,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__114__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+917,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__114__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+918,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__115__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+919,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__115__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+920,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__115__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+921,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__116__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+922,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__116__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+923,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__116__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+924,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__117__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+925,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__117__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+926,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__117__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+927,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__118__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+928,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__118__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+929,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__118__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+930,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__119__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+931,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__119__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+932,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__119__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+933,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__11__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+934,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__11__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+935,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__11__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+936,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__120__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+937,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__120__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+938,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__120__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+939,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__121__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+940,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__121__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+941,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__121__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+942,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__122__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+943,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__122__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+944,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__122__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+945,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__123__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+946,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__123__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+947,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__123__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+948,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__124__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+949,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__124__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+950,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__124__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+951,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__125__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+952,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__125__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+953,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__125__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+954,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__126__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+955,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__126__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+956,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__126__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+957,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__127__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+958,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__127__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+959,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__127__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+960,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__128__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+961,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__128__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+962,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__128__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+963,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__129__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+964,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__129__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+965,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__129__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+966,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__12__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+967,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__12__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+968,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__12__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+969,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__130__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+970,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__130__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+971,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__130__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+972,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__131__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+973,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__131__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+974,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__131__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+975,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__132__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+976,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__132__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+977,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__132__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+978,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__133__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+979,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__133__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+980,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__133__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+981,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__134__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+982,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__134__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+983,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__134__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+984,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__135__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+985,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__135__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+986,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__135__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+987,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__136__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+988,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__136__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+989,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__136__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+990,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__137__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+991,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__137__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+992,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__137__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+993,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__138__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+994,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__138__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+995,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__138__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+996,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__139__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+997,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__139__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+998,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__139__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+999,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__13__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1000,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__13__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1001,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__13__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1002,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__140__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1003,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__140__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1004,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__140__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1005,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__141__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1006,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__141__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1007,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__141__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1008,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__142__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1009,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__142__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1010,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__142__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1011,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__143__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1012,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__143__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1013,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__143__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1014,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__144__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1015,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__144__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1016,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__144__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1017,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__145__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1018,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__145__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1019,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__145__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1020,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__146__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1021,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__146__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1022,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__146__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1023,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__147__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1024,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__147__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1025,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__147__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1026,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__148__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1027,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__148__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1028,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__148__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1029,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__149__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1030,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__149__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1031,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__149__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1032,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__14__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1033,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__14__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1034,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__14__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1035,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__150__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1036,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__150__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1037,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__150__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1038,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__151__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1039,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__151__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1040,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__151__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1041,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__152__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1042,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__152__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1043,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__152__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1044,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__153__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1045,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__153__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1046,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__153__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1047,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__154__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1048,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__154__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1049,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__154__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1050,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__155__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1051,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__155__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1052,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__155__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1053,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__156__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1054,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__156__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1055,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__156__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1056,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__157__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1057,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__157__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1058,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__157__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1059,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__158__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1060,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__158__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1061,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__158__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1062,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__159__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1063,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__159__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1064,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__159__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1065,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__15__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1066,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__15__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1067,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__15__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1068,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__160__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1069,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__160__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1070,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__160__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1071,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__161__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1072,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__161__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1073,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__161__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1074,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__162__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1075,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__162__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1076,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__162__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1077,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__163__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1078,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__163__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1079,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__163__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1080,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__164__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1081,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__164__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1082,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__164__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1083,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__165__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1084,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__165__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1085,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__165__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1086,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__166__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1087,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__166__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1088,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__166__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1089,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__167__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1090,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__167__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1091,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__167__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1092,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__168__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1093,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__168__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1094,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__168__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1095,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__169__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1096,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__169__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1097,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__169__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1098,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__16__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1099,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__16__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1100,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__16__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1101,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__170__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1102,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__170__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1103,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__170__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1104,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__171__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1105,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__171__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1106,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__171__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1107,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__172__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1108,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__172__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1109,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__172__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1110,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__173__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1111,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__173__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1112,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__173__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1113,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__174__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1114,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__174__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1115,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__174__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1116,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__175__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1117,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__175__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1118,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__175__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1119,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__176__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1120,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__176__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1121,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__176__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1122,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__177__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1123,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__177__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1124,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__177__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1125,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__178__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1126,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__178__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1127,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__178__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1128,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__179__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1129,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__179__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1130,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__179__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1131,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__17__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1132,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__17__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1133,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__17__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1134,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__180__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1135,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__180__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1136,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__180__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1137,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__181__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1138,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__181__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1139,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__181__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1140,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__182__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1141,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__182__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1142,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__182__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1143,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__183__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1144,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__183__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1145,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__183__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1146,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__184__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1147,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__184__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1148,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__184__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1149,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__185__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1150,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__185__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1151,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__185__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1152,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__186__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1153,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__186__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1154,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__186__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1155,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__187__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1156,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__187__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1157,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__187__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1158,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__188__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1159,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__188__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1160,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__188__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1161,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__189__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1162,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__189__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1163,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__189__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1164,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__18__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1165,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__18__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1166,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__18__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1167,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__190__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1168,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__190__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1169,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__190__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1170,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__191__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1171,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__191__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1172,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__191__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1173,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__192__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1174,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__192__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1175,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__192__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1176,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__193__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1177,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__193__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1178,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__193__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1179,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__194__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1180,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__194__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1181,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__194__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1182,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__195__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1183,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__195__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1184,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__195__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1185,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__196__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1186,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__196__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1187,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__196__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1188,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__197__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1189,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__197__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1190,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__197__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1191,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__198__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1192,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__198__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1193,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__198__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1194,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__199__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1195,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__199__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1196,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__199__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1197,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__19__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1198,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__19__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1199,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__19__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1200,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__1__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1201,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__1__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1202,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__1__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1203,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__200__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1204,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__200__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1205,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__200__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1206,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__201__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1207,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__201__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1208,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__201__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1209,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__202__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1210,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__202__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1211,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__202__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1212,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__203__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1213,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__203__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1214,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__203__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1215,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__204__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1216,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__204__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1217,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__204__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1218,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__205__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1219,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__205__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1220,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__205__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1221,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__206__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1222,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__206__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1223,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__206__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1224,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__207__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1225,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__207__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1226,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__207__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1227,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__208__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1228,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__208__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1229,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__208__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1230,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__209__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1231,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__209__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1232,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__209__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1233,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__20__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1234,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__20__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1235,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__20__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1236,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__210__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1237,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__210__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1238,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__210__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1239,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__211__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1240,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__211__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1241,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__211__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1242,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__212__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1243,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__212__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1244,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__212__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1245,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__213__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1246,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__213__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1247,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__213__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1248,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__214__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1249,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__214__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1250,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__214__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1251,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__215__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1252,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__215__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1253,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__215__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1254,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__216__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1255,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__216__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1256,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__216__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1257,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__217__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1258,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__217__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1259,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__217__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1260,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__218__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1261,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__218__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1262,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__218__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1263,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__219__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1264,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__219__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1265,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__219__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1266,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__21__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1267,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__21__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1268,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__21__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1269,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__220__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1270,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__220__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1271,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__220__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1272,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__221__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1273,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__221__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1274,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__221__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1275,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__222__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1276,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__222__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1277,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__222__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1278,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__223__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1279,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__223__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1280,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__223__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1281,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__224__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1282,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__224__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1283,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__224__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1284,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__225__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1285,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__225__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1286,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__225__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1287,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__226__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1288,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__226__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1289,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__226__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1290,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__227__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1291,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__227__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1292,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__227__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1293,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__228__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1294,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__228__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1295,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__228__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1296,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__229__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1297,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__229__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1298,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__229__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1299,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__22__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1300,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__22__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1301,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__22__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1302,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__230__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1303,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__230__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1304,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__230__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1305,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__231__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1306,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__231__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1307,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__231__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1308,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__232__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1309,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__232__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1310,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__232__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1311,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__233__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1312,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__233__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1313,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__233__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1314,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__234__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1315,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__234__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1316,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__234__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1317,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__235__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1318,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__235__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1319,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__235__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1320,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__236__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1321,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__236__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1322,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__236__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1323,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__237__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1324,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__237__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1325,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__237__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1326,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__238__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1327,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__238__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1328,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__238__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1329,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__239__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1330,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__239__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1331,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__239__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1332,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__23__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1333,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__23__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1334,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__23__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1335,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__240__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1336,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__240__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1337,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__240__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1338,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__241__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1339,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__241__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1340,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__241__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1341,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__242__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1342,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__242__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1343,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__242__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1344,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__243__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1345,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__243__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1346,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__243__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1347,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__244__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1348,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__244__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1349,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__244__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1350,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__245__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1351,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__245__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1352,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__245__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1353,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__246__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1354,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__246__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1355,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__246__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1356,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__247__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1357,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__247__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1358,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__247__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1359,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__248__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1360,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__248__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1361,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__248__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1362,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__249__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1363,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__249__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1364,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__249__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1365,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__24__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1366,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__24__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1367,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__24__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1368,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__250__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1369,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__250__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1370,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__250__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1371,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__251__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1372,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__251__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1373,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__251__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1374,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__252__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1375,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__252__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1376,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__252__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1377,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__253__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1378,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__253__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1379,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__253__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1380,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__254__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1381,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__254__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1382,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__254__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1383,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__255__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1384,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__255__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1385,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__255__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1386,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__25__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1387,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__25__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1388,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__25__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1389,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__26__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1390,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__26__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1391,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__26__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1392,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__27__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1393,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__27__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1394,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__27__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1395,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__28__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1396,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__28__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1397,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__28__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1398,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__29__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1399,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__29__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1400,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__29__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1401,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__2__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1402,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__2__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1403,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__2__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1404,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__30__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1405,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__30__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1406,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__30__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1407,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__31__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1408,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__31__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1409,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__31__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1410,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__32__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1411,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__32__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1412,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__32__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1413,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__33__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1414,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__33__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1415,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__33__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1416,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__34__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1417,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__34__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1418,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__34__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1419,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__35__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1420,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__35__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1421,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__35__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1422,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__36__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1423,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__36__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1424,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__36__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1425,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__37__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1426,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__37__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1427,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__37__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1428,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__38__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1429,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__38__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1430,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__38__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1431,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__39__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1432,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__39__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1433,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__39__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1434,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__3__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1435,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__3__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1436,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__3__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1437,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__40__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1438,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__40__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1439,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__40__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1440,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__41__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1441,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__41__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1442,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__41__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1443,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__42__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1444,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__42__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1445,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__42__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1446,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__43__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1447,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__43__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1448,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__43__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1449,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__44__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1450,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__44__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1451,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__44__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1452,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__45__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1453,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__45__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1454,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__45__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1455,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__46__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1456,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__46__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1457,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__46__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1458,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__47__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1459,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__47__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1460,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__47__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1461,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__48__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1462,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__48__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1463,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__48__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1464,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__49__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1465,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__49__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1466,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__49__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1467,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__4__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1468,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__4__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1469,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__4__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1470,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__50__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1471,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__50__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1472,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__50__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1473,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__51__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1474,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__51__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1475,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__51__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1476,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__52__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1477,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__52__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1478,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__52__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1479,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__53__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1480,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__53__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1481,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__53__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1482,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__54__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1483,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__54__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1484,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__54__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1485,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__55__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1486,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__55__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1487,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__55__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1488,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__56__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1489,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__56__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1490,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__56__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1491,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__57__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1492,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__57__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1493,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__57__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1494,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__58__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1495,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__58__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1496,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__58__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1497,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__59__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1498,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__59__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1499,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__59__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1500,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__5__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1501,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__5__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1502,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__5__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1503,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__60__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1504,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__60__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1505,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__60__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1506,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__61__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1507,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__61__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1508,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__61__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1509,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__62__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1510,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__62__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1511,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__62__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1512,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__63__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1513,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__63__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1514,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__63__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1515,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__64__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1516,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__64__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1517,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__64__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1518,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__65__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1519,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__65__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1520,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__65__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1521,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__66__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1522,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__66__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1523,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__66__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1524,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__67__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1525,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__67__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1526,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__67__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1527,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__68__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1528,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__68__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1529,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__68__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1530,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__69__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1531,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__69__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1532,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__69__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1533,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__6__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1534,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__6__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1535,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__6__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1536,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__70__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1537,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__70__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1538,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__70__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1539,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__71__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1540,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__71__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1541,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__71__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1542,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__72__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1543,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__72__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1544,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__72__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1545,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__73__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1546,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__73__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1547,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__73__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1548,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__74__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1549,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__74__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1550,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__74__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1551,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__75__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1552,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__75__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1553,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__75__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1554,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__76__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1555,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__76__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1556,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__76__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1557,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__77__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1558,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__77__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1559,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__77__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1560,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__78__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1561,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__78__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1562,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__78__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1563,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__79__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1564,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__79__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1565,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__79__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1566,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__7__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1567,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__7__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1568,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__7__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1569,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__80__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1570,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__80__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1571,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__80__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1572,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__81__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1573,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__81__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1574,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__81__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1575,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__82__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1576,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__82__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1577,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__82__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1578,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__83__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1579,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__83__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1580,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__83__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1581,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__84__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1582,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__84__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1583,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__84__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1584,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__85__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1585,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__85__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1586,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__85__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1587,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__86__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1588,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__86__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1589,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__86__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1590,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__87__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1591,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__87__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1592,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__87__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1593,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__88__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1594,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__88__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1595,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__88__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1596,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__89__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1597,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__89__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1598,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__89__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1599,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__8__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1600,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__8__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1601,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__8__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1602,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__90__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1603,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__90__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1604,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__90__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1605,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__91__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1606,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__91__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1607,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__91__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1608,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__92__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1609,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__92__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1610,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__92__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1611,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__93__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1612,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__93__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1613,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__93__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1614,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__94__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1615,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__94__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1616,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__94__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1617,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__95__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1618,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__95__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1619,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__95__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1620,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__96__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1621,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__96__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1622,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__96__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1623,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__97__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1624,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__97__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1625,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__97__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1626,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__98__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1627,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__98__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1628,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__98__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1629,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__99__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1630,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__99__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1631,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__99__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1632,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__9__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1633,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__9__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1634,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__9__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgCData(oldp+1635,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state),2);
        tracep->chgCData(oldp+1636,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_nextstate),2);
        tracep->chgBit(oldp+1637,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid));
        tracep->chgCData(oldp+1638,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index),8);
        tracep->chgIData(oldp+1639,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_tag),20);
        tracep->chgCData(oldp+1640,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_offset),4);
        tracep->chgCData(oldp+1641,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit),2);
        tracep->chgBit(oldp+1642,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_cache_hit));
        tracep->chgCData(oldp+1643,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we),2);
        tracep->chgCData(oldp+1644,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we),2);
        tracep->chgCData(oldp+1645,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr),8);
        tracep->chgIData(oldp+1646,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_wdata),21);
        tracep->chgIData(oldp+1647,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata[0]),20);
        tracep->chgIData(oldp+1648,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tag_rdata[1]),20);
        tracep->chgBit(oldp+1649,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata[0]));
        tracep->chgBit(oldp+1650,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__valid_rdata[1]));
        tracep->chgIData(oldp+1651,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[0]),32);
        tracep->chgIData(oldp+1652,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[1]),32);
        tracep->chgIData(oldp+1653,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[2]),32);
        tracep->chgIData(oldp+1654,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[3]),32);
        tracep->chgIData(oldp+1655,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [0U][0U]),32);
        tracep->chgIData(oldp+1656,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [0U][1U]),32);
        tracep->chgIData(oldp+1657,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [0U][2U]),32);
        tracep->chgIData(oldp+1658,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [0U][3U]),32);
        tracep->chgIData(oldp+1659,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [1U][0U]),32);
        tracep->chgIData(oldp+1660,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [1U][1U]),32);
        tracep->chgIData(oldp+1661,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [1U][2U]),32);
        tracep->chgIData(oldp+1662,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata
                                    [1U][3U]),32);
        tracep->chgIData(oldp+1663,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata_sel[0]),32);
        tracep->chgIData(oldp+1664,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata_sel[1]),32);
        tracep->chgBit(oldp+1665,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))));
        tracep->chgBit(oldp+1666,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__0__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1667,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__0__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1668,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__0__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1669,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__100__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1670,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__100__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1671,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__100__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1672,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__101__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1673,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__101__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1674,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__101__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1675,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__102__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1676,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__102__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1677,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__102__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1678,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__103__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1679,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__103__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1680,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__103__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1681,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__104__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1682,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__104__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1683,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__104__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1684,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__105__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1685,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__105__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1686,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__105__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1687,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__106__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1688,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__106__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1689,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__106__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1690,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__107__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1691,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__107__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1692,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__107__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1693,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__108__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1694,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__108__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1695,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__108__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1696,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__109__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1697,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__109__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1698,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__109__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1699,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__10__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1700,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__10__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1701,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__10__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1702,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__110__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1703,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__110__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1704,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__110__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1705,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__111__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1706,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__111__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1707,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__111__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1708,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__112__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1709,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__112__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1710,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__112__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1711,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__113__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1712,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__113__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1713,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__113__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1714,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__114__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1715,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__114__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1716,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__114__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1717,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__115__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1718,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__115__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1719,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__115__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1720,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__116__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1721,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__116__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1722,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__116__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1723,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__117__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1724,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__117__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1725,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__117__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1726,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__118__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1727,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__118__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1728,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__118__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1729,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__119__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1730,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__119__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1731,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__119__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1732,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__11__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1733,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__11__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1734,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__11__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1735,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__120__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1736,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__120__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1737,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__120__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1738,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__121__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1739,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__121__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1740,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__121__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1741,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__122__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1742,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__122__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1743,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__122__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1744,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__123__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1745,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__123__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1746,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__123__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1747,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__124__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1748,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__124__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1749,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__124__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1750,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__125__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1751,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__125__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1752,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__125__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1753,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__126__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1754,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__126__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1755,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__126__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1756,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__127__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1757,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__127__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1758,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__127__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1759,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__128__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1760,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__128__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1761,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__128__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1762,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__129__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1763,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__129__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1764,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__129__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1765,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__12__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1766,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__12__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1767,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__12__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1768,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__130__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1769,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__130__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1770,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__130__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1771,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__131__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1772,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__131__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1773,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__131__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1774,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__132__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1775,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__132__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1776,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__132__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1777,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__133__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1778,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__133__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1779,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__133__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1780,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__134__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1781,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__134__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1782,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__134__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1783,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__135__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1784,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__135__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1785,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__135__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1786,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__136__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1787,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__136__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1788,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__136__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1789,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__137__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1790,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__137__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1791,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__137__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1792,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__138__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1793,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__138__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1794,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__138__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1795,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__139__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1796,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__139__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1797,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__139__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1798,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__13__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1799,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__13__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1800,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__13__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1801,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__140__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1802,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__140__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1803,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__140__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1804,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__141__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1805,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__141__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1806,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__141__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1807,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__142__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1808,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__142__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1809,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__142__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1810,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__143__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1811,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__143__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1812,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__143__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1813,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__144__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1814,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__144__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1815,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__144__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1816,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__145__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1817,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__145__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1818,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__145__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1819,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__146__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1820,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__146__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1821,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__146__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1822,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__147__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1823,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__147__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1824,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__147__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1825,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__148__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1826,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__148__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1827,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__148__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1828,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__149__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1829,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__149__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1830,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__149__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1831,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__14__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1832,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__14__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1833,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__14__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1834,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__150__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1835,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__150__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1836,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__150__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1837,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__151__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1838,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__151__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1839,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__151__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1840,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__152__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1841,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__152__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1842,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__152__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1843,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__153__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1844,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__153__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1845,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__153__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1846,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__154__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1847,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__154__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1848,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__154__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1849,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__155__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1850,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__155__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1851,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__155__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1852,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__156__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1853,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__156__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1854,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__156__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1855,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__157__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1856,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__157__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1857,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__157__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1858,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__158__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1859,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__158__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1860,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__158__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1861,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__159__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1862,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__159__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1863,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__159__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1864,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__15__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1865,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__15__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1866,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__15__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1867,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__160__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1868,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__160__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1869,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__160__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1870,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__161__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1871,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__161__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1872,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__161__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1873,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__162__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1874,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__162__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1875,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__162__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1876,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__163__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1877,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__163__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1878,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__163__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1879,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__164__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1880,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__164__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1881,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__164__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1882,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__165__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1883,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__165__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1884,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__165__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1885,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__166__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1886,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__166__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1887,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__166__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1888,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__167__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1889,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__167__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1890,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__167__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1891,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__168__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1892,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__168__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1893,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__168__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1894,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__169__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1895,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__169__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1896,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__169__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1897,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__16__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1898,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__16__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1899,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__16__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1900,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__170__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1901,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__170__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1902,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__170__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1903,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__171__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1904,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__171__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1905,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__171__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1906,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__172__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1907,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__172__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1908,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__172__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1909,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__173__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1910,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__173__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1911,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__173__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1912,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__174__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1913,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__174__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1914,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__174__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1915,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__175__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1916,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__175__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1917,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__175__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1918,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__176__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1919,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__176__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1920,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__176__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1921,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__177__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1922,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__177__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1923,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__177__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1924,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__178__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1925,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__178__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1926,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__178__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1927,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__179__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1928,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__179__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1929,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__179__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1930,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__17__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1931,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__17__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1932,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__17__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1933,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__180__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1934,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__180__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1935,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__180__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1936,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__181__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1937,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__181__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1938,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__181__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1939,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__182__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1940,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__182__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1941,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__182__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1942,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__183__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1943,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__183__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1944,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__183__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1945,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__184__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1946,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__184__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1947,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__184__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1948,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__185__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1949,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__185__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1950,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__185__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1951,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__186__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1952,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__186__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1953,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__186__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1954,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__187__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1955,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__187__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1956,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__187__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1957,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__188__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1958,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__188__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1959,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__188__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1960,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__189__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1961,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__189__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1962,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__189__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1963,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__18__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1964,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__18__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1965,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__18__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1966,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__190__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1967,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__190__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1968,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__190__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1969,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__191__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1970,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__191__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1971,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__191__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1972,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__192__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1973,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__192__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1974,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__192__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1975,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__193__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1976,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__193__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1977,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__193__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1978,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__194__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1979,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__194__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1980,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__194__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1981,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__195__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1982,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__195__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1983,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__195__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1984,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__196__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1985,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__196__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1986,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__196__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1987,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__197__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1988,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__197__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1989,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__197__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1990,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__198__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1991,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__198__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1992,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__198__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1993,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__199__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1994,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__199__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1995,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__199__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1996,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__19__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+1997,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__19__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+1998,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__19__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+1999,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__1__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2000,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__1__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2001,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__1__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2002,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__200__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2003,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__200__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2004,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__200__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2005,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__201__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2006,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__201__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2007,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__201__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2008,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__202__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2009,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__202__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2010,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__202__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2011,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__203__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2012,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__203__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2013,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__203__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2014,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__204__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2015,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__204__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2016,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__204__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2017,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__205__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2018,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__205__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2019,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__205__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2020,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__206__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2021,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__206__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2022,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__206__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2023,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__207__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2024,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__207__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2025,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__207__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2026,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__208__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2027,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__208__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2028,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__208__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2029,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__209__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2030,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__209__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2031,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__209__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2032,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__20__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2033,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__20__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2034,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__20__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2035,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__210__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2036,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__210__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2037,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__210__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2038,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__211__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2039,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__211__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2040,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__211__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2041,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__212__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2042,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__212__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2043,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__212__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2044,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__213__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2045,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__213__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2046,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__213__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2047,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__214__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2048,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__214__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2049,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__214__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2050,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__215__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2051,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__215__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2052,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__215__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2053,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__216__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2054,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__216__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2055,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__216__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2056,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__217__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2057,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__217__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2058,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__217__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2059,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__218__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2060,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__218__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2061,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__218__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2062,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__219__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2063,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__219__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2064,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__219__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2065,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__21__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2066,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__21__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2067,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__21__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2068,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__220__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2069,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__220__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2070,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__220__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2071,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__221__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2072,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__221__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2073,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__221__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2074,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__222__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2075,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__222__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2076,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__222__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2077,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__223__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2078,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__223__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2079,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__223__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2080,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__224__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2081,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__224__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2082,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__224__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2083,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__225__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2084,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__225__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2085,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__225__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2086,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__226__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2087,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__226__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2088,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__226__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2089,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__227__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2090,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__227__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2091,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__227__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2092,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__228__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2093,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__228__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2094,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__228__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2095,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__229__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2096,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__229__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2097,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__229__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2098,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__22__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2099,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__22__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2100,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__22__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2101,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__230__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2102,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__230__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2103,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__230__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2104,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__231__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2105,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__231__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2106,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__231__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2107,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__232__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2108,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__232__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2109,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__232__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2110,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__233__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2111,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__233__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2112,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__233__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2113,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__234__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2114,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__234__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2115,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__234__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2116,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__235__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2117,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__235__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2118,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__235__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2119,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__236__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2120,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__236__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2121,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__236__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2122,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__237__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2123,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__237__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2124,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__237__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2125,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__238__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2126,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__238__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2127,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__238__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2128,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__239__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2129,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__239__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2130,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__239__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2131,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__23__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2132,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__23__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2133,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__23__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2134,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__240__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2135,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__240__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2136,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__240__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2137,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__241__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2138,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__241__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2139,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__241__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2140,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__242__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2141,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__242__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2142,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__242__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2143,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__243__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2144,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__243__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2145,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__243__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2146,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__244__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2147,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__244__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2148,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__244__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2149,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__245__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2150,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__245__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2151,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__245__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2152,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__246__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2153,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__246__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2154,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__246__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2155,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__247__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2156,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__247__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2157,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__247__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2158,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__248__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2159,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__248__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2160,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__248__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2161,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__249__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2162,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__249__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2163,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__249__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2164,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__24__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2165,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__24__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2166,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__24__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2167,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__250__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2168,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__250__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2169,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__250__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2170,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__251__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2171,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__251__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2172,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__251__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2173,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__252__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2174,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__252__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2175,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__252__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2176,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__253__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2177,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__253__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2178,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__253__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2179,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__254__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2180,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__254__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2181,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__254__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2182,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__255__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2183,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__255__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2184,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__255__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2185,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__25__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2186,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__25__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2187,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__25__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2188,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__26__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2189,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__26__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2190,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__26__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2191,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__27__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2192,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__27__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2193,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__27__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2194,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__28__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2195,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__28__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2196,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__28__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2197,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__29__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2198,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__29__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2199,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__29__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2200,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__2__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2201,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__2__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2202,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__2__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2203,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__30__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2204,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__30__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2205,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__30__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2206,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__31__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2207,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__31__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2208,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__31__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2209,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__32__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2210,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__32__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2211,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__32__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2212,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__33__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2213,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__33__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2214,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__33__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2215,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__34__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2216,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__34__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2217,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__34__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2218,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__35__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2219,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__35__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2220,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__35__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2221,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__36__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2222,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__36__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2223,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__36__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2224,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__37__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2225,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__37__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2226,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__37__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2227,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__38__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2228,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__38__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2229,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__38__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2230,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__39__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2231,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__39__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2232,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__39__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2233,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__3__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2234,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__3__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2235,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__3__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2236,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__40__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2237,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__40__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2238,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__40__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2239,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__41__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2240,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__41__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2241,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__41__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2242,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__42__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2243,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__42__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2244,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__42__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2245,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__43__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2246,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__43__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2247,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__43__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2248,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__44__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2249,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__44__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2250,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__44__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2251,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__45__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2252,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__45__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2253,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__45__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2254,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__46__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2255,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__46__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2256,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__46__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2257,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__47__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2258,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__47__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2259,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__47__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2260,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__48__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2261,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__48__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2262,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__48__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2263,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__49__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2264,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__49__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2265,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__49__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2266,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__4__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2267,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__4__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2268,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__4__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2269,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__50__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2270,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__50__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2271,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__50__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2272,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__51__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2273,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__51__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2274,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__51__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2275,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__52__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2276,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__52__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2277,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__52__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2278,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__53__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2279,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__53__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2280,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__53__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2281,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__54__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2282,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__54__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2283,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__54__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2284,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__55__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2285,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__55__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2286,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__55__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2287,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__56__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2288,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__56__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2289,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__56__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2290,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__57__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2291,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__57__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2292,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__57__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2293,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__58__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2294,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__58__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2295,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__58__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2296,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__59__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2297,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__59__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2298,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__59__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2299,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__5__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2300,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__5__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2301,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__5__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2302,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__60__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2303,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__60__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2304,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__60__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2305,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__61__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2306,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__61__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2307,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__61__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2308,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__62__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2309,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__62__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2310,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__62__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2311,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__63__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2312,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__63__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2313,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__63__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2314,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__64__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2315,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__64__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2316,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__64__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2317,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__65__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2318,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__65__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2319,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__65__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2320,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__66__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2321,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__66__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2322,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__66__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2323,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__67__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2324,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__67__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2325,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__67__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2326,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__68__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2327,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__68__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2328,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__68__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2329,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__69__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2330,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__69__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2331,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__69__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2332,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__6__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2333,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__6__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2334,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__6__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2335,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__70__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2336,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__70__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2337,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__70__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2338,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__71__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2339,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__71__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2340,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__71__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2341,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__72__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2342,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__72__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2343,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__72__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2344,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__73__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2345,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__73__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2346,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__73__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2347,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__74__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2348,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__74__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2349,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__74__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2350,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__75__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2351,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__75__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2352,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__75__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2353,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__76__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2354,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__76__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2355,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__76__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2356,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__77__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2357,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__77__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2358,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__77__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2359,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__78__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2360,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__78__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2361,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__78__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2362,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__79__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2363,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__79__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2364,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__79__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2365,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__7__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2366,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__7__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2367,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__7__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2368,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__80__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2369,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__80__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2370,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__80__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2371,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__81__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2372,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__81__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2373,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__81__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2374,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__82__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2375,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__82__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2376,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__82__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2377,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__83__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2378,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__83__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2379,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__83__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2380,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__84__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2381,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__84__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2382,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__84__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2383,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__85__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2384,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__85__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2385,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__85__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2386,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__86__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2387,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__86__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2388,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__86__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2389,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__87__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2390,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__87__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2391,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__87__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2392,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__88__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2393,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__88__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2394,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__88__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2395,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__89__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2396,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__89__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2397,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__89__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2398,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__8__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2399,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__8__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2400,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__8__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2401,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__90__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2402,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__90__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2403,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__90__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2404,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__91__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2405,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__91__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2406,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__91__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2407,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__92__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2408,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__92__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2409,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__92__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2410,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__93__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2411,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__93__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2412,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__93__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2413,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__94__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2414,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__94__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2415,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__94__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2416,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__95__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2417,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__95__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2418,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__95__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2419,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__96__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2420,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__96__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2421,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__96__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2422,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__97__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2423,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__97__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2424,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__97__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2425,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__98__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2426,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__98__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2427,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__98__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2428,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__99__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2429,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__99__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2430,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__99__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgBit(oldp+2431,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__9__KET____DOT__U_PLRU__update));
        tracep->chgBit(oldp+2432,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__9__KET____DOT__U_PLRU__DOT__state));
        tracep->chgBit(oldp+2433,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__9__KET____DOT__U_PLRU__DOT__nextstate));
        tracep->chgIData(oldp+2434,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                     >> 0xdU)),19);
        tracep->chgIData(oldp+2435,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                     >> 0xdU)),19);
        tracep->chgIData(oldp+2436,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[0]),19);
        tracep->chgIData(oldp+2437,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[1]),19);
        tracep->chgIData(oldp+2438,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[2]),19);
        tracep->chgIData(oldp+2439,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[3]),19);
        tracep->chgIData(oldp+2440,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[4]),19);
        tracep->chgIData(oldp+2441,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[5]),19);
        tracep->chgIData(oldp+2442,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[6]),19);
        tracep->chgIData(oldp+2443,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[7]),19);
        tracep->chgIData(oldp+2444,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[8]),19);
        tracep->chgIData(oldp+2445,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[9]),19);
        tracep->chgIData(oldp+2446,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[10]),19);
        tracep->chgIData(oldp+2447,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[11]),19);
        tracep->chgIData(oldp+2448,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[12]),19);
        tracep->chgIData(oldp+2449,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[13]),19);
        tracep->chgIData(oldp+2450,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[14]),19);
        tracep->chgIData(oldp+2451,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_vpn2[15]),19);
        tracep->chgCData(oldp+2452,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[0]),8);
        tracep->chgCData(oldp+2453,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[1]),8);
        tracep->chgCData(oldp+2454,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[2]),8);
        tracep->chgCData(oldp+2455,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[3]),8);
        tracep->chgCData(oldp+2456,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[4]),8);
        tracep->chgCData(oldp+2457,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[5]),8);
        tracep->chgCData(oldp+2458,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[6]),8);
        tracep->chgCData(oldp+2459,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[7]),8);
        tracep->chgCData(oldp+2460,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[8]),8);
        tracep->chgCData(oldp+2461,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[9]),8);
        tracep->chgCData(oldp+2462,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[10]),8);
        tracep->chgCData(oldp+2463,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[11]),8);
        tracep->chgCData(oldp+2464,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[12]),8);
        tracep->chgCData(oldp+2465,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[13]),8);
        tracep->chgCData(oldp+2466,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[14]),8);
        tracep->chgCData(oldp+2467,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_asid[15]),8);
        tracep->chgBit(oldp+2468,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[0]));
        tracep->chgBit(oldp+2469,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[1]));
        tracep->chgBit(oldp+2470,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[2]));
        tracep->chgBit(oldp+2471,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[3]));
        tracep->chgBit(oldp+2472,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[4]));
        tracep->chgBit(oldp+2473,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[5]));
        tracep->chgBit(oldp+2474,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[6]));
        tracep->chgBit(oldp+2475,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[7]));
        tracep->chgBit(oldp+2476,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[8]));
        tracep->chgBit(oldp+2477,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[9]));
        tracep->chgBit(oldp+2478,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[10]));
        tracep->chgBit(oldp+2479,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[11]));
        tracep->chgBit(oldp+2480,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[12]));
        tracep->chgBit(oldp+2481,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[13]));
        tracep->chgBit(oldp+2482,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[14]));
        tracep->chgBit(oldp+2483,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_g[15]));
        tracep->chgIData(oldp+2484,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[0]),20);
        tracep->chgIData(oldp+2485,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[1]),20);
        tracep->chgIData(oldp+2486,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[2]),20);
        tracep->chgIData(oldp+2487,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[3]),20);
        tracep->chgIData(oldp+2488,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[4]),20);
        tracep->chgIData(oldp+2489,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[5]),20);
        tracep->chgIData(oldp+2490,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[6]),20);
        tracep->chgIData(oldp+2491,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[7]),20);
        tracep->chgIData(oldp+2492,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[8]),20);
        tracep->chgIData(oldp+2493,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[9]),20);
        tracep->chgIData(oldp+2494,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[10]),20);
        tracep->chgIData(oldp+2495,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[11]),20);
        tracep->chgIData(oldp+2496,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[12]),20);
        tracep->chgIData(oldp+2497,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[13]),20);
        tracep->chgIData(oldp+2498,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[14]),20);
        tracep->chgIData(oldp+2499,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn0[15]),20);
        tracep->chgCData(oldp+2500,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[0]),3);
        tracep->chgCData(oldp+2501,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[1]),3);
        tracep->chgCData(oldp+2502,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[2]),3);
        tracep->chgCData(oldp+2503,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[3]),3);
        tracep->chgCData(oldp+2504,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[4]),3);
        tracep->chgCData(oldp+2505,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[5]),3);
        tracep->chgCData(oldp+2506,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[6]),3);
        tracep->chgCData(oldp+2507,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[7]),3);
        tracep->chgCData(oldp+2508,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[8]),3);
        tracep->chgCData(oldp+2509,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[9]),3);
        tracep->chgCData(oldp+2510,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[10]),3);
        tracep->chgCData(oldp+2511,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[11]),3);
        tracep->chgCData(oldp+2512,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[12]),3);
        tracep->chgCData(oldp+2513,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[13]),3);
        tracep->chgCData(oldp+2514,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[14]),3);
        tracep->chgCData(oldp+2515,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c0[15]),3);
        tracep->chgBit(oldp+2516,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[0]));
        tracep->chgBit(oldp+2517,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[1]));
        tracep->chgBit(oldp+2518,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[2]));
        tracep->chgBit(oldp+2519,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[3]));
        tracep->chgBit(oldp+2520,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[4]));
        tracep->chgBit(oldp+2521,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[5]));
        tracep->chgBit(oldp+2522,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[6]));
        tracep->chgBit(oldp+2523,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[7]));
        tracep->chgBit(oldp+2524,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[8]));
        tracep->chgBit(oldp+2525,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[9]));
        tracep->chgBit(oldp+2526,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[10]));
        tracep->chgBit(oldp+2527,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[11]));
        tracep->chgBit(oldp+2528,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[12]));
        tracep->chgBit(oldp+2529,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[13]));
        tracep->chgBit(oldp+2530,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[14]));
        tracep->chgBit(oldp+2531,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d0[15]));
        tracep->chgBit(oldp+2532,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[0]));
        tracep->chgBit(oldp+2533,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[1]));
        tracep->chgBit(oldp+2534,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[2]));
        tracep->chgBit(oldp+2535,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[3]));
        tracep->chgBit(oldp+2536,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[4]));
        tracep->chgBit(oldp+2537,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[5]));
        tracep->chgBit(oldp+2538,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[6]));
        tracep->chgBit(oldp+2539,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[7]));
        tracep->chgBit(oldp+2540,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[8]));
        tracep->chgBit(oldp+2541,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[9]));
        tracep->chgBit(oldp+2542,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[10]));
        tracep->chgBit(oldp+2543,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[11]));
        tracep->chgBit(oldp+2544,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[12]));
        tracep->chgBit(oldp+2545,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[13]));
        tracep->chgBit(oldp+2546,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[14]));
        tracep->chgBit(oldp+2547,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v0[15]));
        tracep->chgIData(oldp+2548,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[0]),20);
        tracep->chgIData(oldp+2549,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[1]),20);
        tracep->chgIData(oldp+2550,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[2]),20);
        tracep->chgIData(oldp+2551,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[3]),20);
        tracep->chgIData(oldp+2552,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[4]),20);
        tracep->chgIData(oldp+2553,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[5]),20);
        tracep->chgIData(oldp+2554,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[6]),20);
        tracep->chgIData(oldp+2555,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[7]),20);
        tracep->chgIData(oldp+2556,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[8]),20);
        tracep->chgIData(oldp+2557,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[9]),20);
        tracep->chgIData(oldp+2558,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[10]),20);
        tracep->chgIData(oldp+2559,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[11]),20);
        tracep->chgIData(oldp+2560,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[12]),20);
        tracep->chgIData(oldp+2561,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[13]),20);
        tracep->chgIData(oldp+2562,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[14]),20);
        tracep->chgIData(oldp+2563,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_pfn1[15]),20);
        tracep->chgCData(oldp+2564,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[0]),3);
        tracep->chgCData(oldp+2565,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[1]),3);
        tracep->chgCData(oldp+2566,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[2]),3);
        tracep->chgCData(oldp+2567,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[3]),3);
        tracep->chgCData(oldp+2568,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[4]),3);
        tracep->chgCData(oldp+2569,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[5]),3);
        tracep->chgCData(oldp+2570,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[6]),3);
        tracep->chgCData(oldp+2571,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[7]),3);
        tracep->chgCData(oldp+2572,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[8]),3);
        tracep->chgCData(oldp+2573,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[9]),3);
        tracep->chgCData(oldp+2574,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[10]),3);
        tracep->chgCData(oldp+2575,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[11]),3);
        tracep->chgCData(oldp+2576,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[12]),3);
        tracep->chgCData(oldp+2577,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[13]),3);
        tracep->chgCData(oldp+2578,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[14]),3);
        tracep->chgCData(oldp+2579,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_c1[15]),3);
        tracep->chgBit(oldp+2580,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[0]));
        tracep->chgBit(oldp+2581,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[1]));
        tracep->chgBit(oldp+2582,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[2]));
        tracep->chgBit(oldp+2583,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[3]));
        tracep->chgBit(oldp+2584,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[4]));
        tracep->chgBit(oldp+2585,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[5]));
        tracep->chgBit(oldp+2586,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[6]));
        tracep->chgBit(oldp+2587,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[7]));
        tracep->chgBit(oldp+2588,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[8]));
        tracep->chgBit(oldp+2589,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[9]));
        tracep->chgBit(oldp+2590,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[10]));
        tracep->chgBit(oldp+2591,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[11]));
        tracep->chgBit(oldp+2592,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[12]));
        tracep->chgBit(oldp+2593,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[13]));
        tracep->chgBit(oldp+2594,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[14]));
        tracep->chgBit(oldp+2595,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_d1[15]));
        tracep->chgBit(oldp+2596,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[0]));
        tracep->chgBit(oldp+2597,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[1]));
        tracep->chgBit(oldp+2598,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[2]));
        tracep->chgBit(oldp+2599,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[3]));
        tracep->chgBit(oldp+2600,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[4]));
        tracep->chgBit(oldp+2601,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[5]));
        tracep->chgBit(oldp+2602,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[6]));
        tracep->chgBit(oldp+2603,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[7]));
        tracep->chgBit(oldp+2604,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[8]));
        tracep->chgBit(oldp+2605,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[9]));
        tracep->chgBit(oldp+2606,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[10]));
        tracep->chgBit(oldp+2607,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[11]));
        tracep->chgBit(oldp+2608,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[12]));
        tracep->chgBit(oldp+2609,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[13]));
        tracep->chgBit(oldp+2610,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[14]));
        tracep->chgBit(oldp+2611,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__tlb_v1[15]));
        tracep->chgSData(oldp+2612,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_match),16);
        tracep->chgSData(oldp+2613,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__common_match),16);
        tracep->chgCData(oldp+2614,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__ITLB_index),4);
        tracep->chgCData(oldp+2615,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__write_index),4);
        tracep->chgIData(oldp+2616,((0x7ffffU & ((0x200U 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                  ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entryhi_VPN2
                                                  : 
                                                 ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                                   << 0x13U) 
                                                  | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                                     >> 0xdU))))),19);
        tracep->chgCData(oldp+2617,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_index),4);
        tracep->chgCData(oldp+2618,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_asid),8);
        tracep->chgIData(oldp+2619,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_ITLB_vpn2),19);
        tracep->chgIData(oldp+2620,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__latched_common_vpn2),19);
        tracep->chgIData(oldp+2621,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__i),32);
        tracep->chgBit(oldp+2622,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_valid));
        tracep->chgBit(oldp+2623,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_ready_go));
        tracep->chgWData(oldp+2624,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r),345);
        tracep->chgIData(oldp+2635,((0x1fffffffU & 
                                     ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                       << 4U) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                                 >> 0x1cU)))),29);
        tracep->chgBit(oldp+2636,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 8U))));
        tracep->chgBit(oldp+2637,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 7U))));
        tracep->chgIData(oldp+2638,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] 
                                      << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] 
                                                  >> 0x12U))),32);
        tracep->chgIData(oldp+2639,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[7U] 
                                      << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] 
                                                  >> 0x12U))),32);
        tracep->chgCData(oldp+2640,((7U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                           >> 0x14U))),3);
        tracep->chgCData(oldp+2641,((7U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                           >> 0x17U))),3);
        tracep->chgBit(oldp+2642,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x1bU))));
        tracep->chgBit(oldp+2643,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x1aU))));
        tracep->chgBit(oldp+2644,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x12U))));
        tracep->chgBit(oldp+2645,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x13U))));
        tracep->chgIData(oldp+2646,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                      << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[8U] 
                                                  >> 0x12U))),32);
        tracep->chgBit(oldp+2647,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 6U))));
        tracep->chgBit(oldp+2648,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 5U))));
        tracep->chgCData(oldp+2649,((0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U])),5);
        tracep->chgSData(oldp+2650,((0xffffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                                >> 7U))),16);
        tracep->chgIData(oldp+2651,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U]),32);
        tracep->chgIData(oldp+2652,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[1U]),32);
        tracep->chgIData(oldp+2653,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0U]),32);
        tracep->chgSData(oldp+2654,((0xfffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                               >> 0xaU))),12);
        tracep->chgCData(oldp+2655,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wen),4);
        tracep->chgIData(oldp+2656,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__sram_wdata),32);
        tracep->chgIData(oldp+2657,((0x3ffffffU & (
                                                   (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                    << 0x19U) 
                                                   | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                                      >> 7U)))),26);
        tracep->chgCData(oldp+2658,((7U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                           >> 7U))),3);
        tracep->chgBit(oldp+2659,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                         >> 6U))));
        tracep->chgBit(oldp+2660,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                         >> 5U))));
        tracep->chgBit(oldp+2661,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                         >> 4U))));
        tracep->chgBit(oldp+2662,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                         >> 3U))));
        tracep->chgCData(oldp+2663,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U] 
                                              >> 0x12U))),5);
        tracep->chgBit(oldp+2664,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x17U))));
        tracep->chgBit(oldp+2665,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x18U))));
        tracep->chgBit(oldp+2666,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x19U))));
        tracep->chgBit(oldp+2667,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                   >> 0x1fU)));
        tracep->chgCData(oldp+2668,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                              >> 0x1aU))),5);
        tracep->chgBit(oldp+2669,((((((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                       >> 0x1fU) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__Overflow_ex)) 
                                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADES_ex)) 
                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADEL_ex)) 
                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__trap_ex))));
        tracep->chgCData(oldp+2670,((0x1fU & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                               >> 0x1fU)
                                               ? ((
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                                   << 6U) 
                                                  | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                                     >> 0x1aU))
                                               : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__trap_ex)
                                                   ? 0x10U
                                                   : 
                                                  ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__Overflow_ex)
                                                    ? 0xeU
                                                    : 
                                                   ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADES_ex)
                                                     ? 0xaU
                                                     : 
                                                    ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADEL_ex)
                                                      ? 9U
                                                      : 0x1fU))))))),5);
        tracep->chgBit(oldp+2671,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__Overflow_ex));
        tracep->chgCData(oldp+2672,((7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[4U])),3);
        tracep->chgBit(oldp+2673,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADES_ex));
        tracep->chgBit(oldp+2674,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ADEL_ex));
        tracep->chgBit(oldp+2675,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__trap_ex));
        tracep->chgBit(oldp+2676,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 0xcU))));
        tracep->chgBit(oldp+2677,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 0xbU))));
        tracep->chgBit(oldp+2678,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 0xaU))));
        tracep->chgBit(oldp+2679,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 9U))));
        tracep->chgBit(oldp+2680,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 8U))));
        tracep->chgBit(oldp+2681,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 7U))));
        tracep->chgBit(oldp+2682,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 6U))));
        tracep->chgBit(oldp+2683,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 5U))));
        tracep->chgBit(oldp+2684,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 4U))));
        tracep->chgBit(oldp+2685,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 3U))));
        tracep->chgBit(oldp+2686,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 2U))));
        tracep->chgBit(oldp+2687,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 1U))));
        tracep->chgIData(oldp+2688,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[6U] 
                                      << 0xeU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                                  >> 0x12U))),32);
        tracep->chgBit(oldp+2689,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 0x11U))));
        tracep->chgBit(oldp+2690,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 0x10U))));
        tracep->chgCData(oldp+2691,((3U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                           >> 0xeU))),2);
        tracep->chgSData(oldp+2692,((0xfffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                               >> 1U))),12);
        tracep->chgBit(oldp+2693,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[5U] 
                                         >> 0xdU))));
        tracep->chgBit(oldp+2694,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_taken));
        tracep->chgBit(oldp+2695,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_rs_eq_rt));
        tracep->chgBit(oldp+2696,((1U & (~ (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                                            >> 0x1fU)))));
        tracep->chgBit(oldp+2697,(VL_LTS_III(32, 0U, 
                                             vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U])));
        tracep->chgBit(oldp+2698,(VL_GTES_III(32, 0U, 
                                              vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U])));
        tracep->chgBit(oldp+2699,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[2U] 
                                   >> 0x1fU)));
        tracep->chgIData(oldp+2700,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1),32);
        tracep->chgIData(oldp+2701,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2),32);
        tracep->chgIData(oldp+2702,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__temp_alu_result),32);
        tracep->chgBit(oldp+2703,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__m_axis_dout_tvalid));
        tracep->chgBit(oldp+2704,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__m_axis_dout_tvalidu));
        tracep->chgBit(oldp+2705,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isMul));
        tracep->chgBit(oldp+2706,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__isDiv));
        tracep->chgBit(oldp+2707,((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mul_state))));
        tracep->chgBit(oldp+2708,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x12U))));
        tracep->chgBit(oldp+2709,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x13U))));
        tracep->chgBit(oldp+2710,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x14U))));
        tracep->chgBit(oldp+2711,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0x15U))));
        tracep->chgBit(oldp+2712,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0xbU))));
        tracep->chgBit(oldp+2713,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0xeU))));
        tracep->chgBit(oldp+2714,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0xfU))));
        tracep->chgBit(oldp+2715,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 0xaU))));
        tracep->chgBit(oldp+2716,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x1cU))));
        tracep->chgBit(oldp+2717,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x1dU))));
        tracep->chgBit(oldp+2718,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                         >> 0x1eU))));
        tracep->chgBit(oldp+2719,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U] 
                                   >> 0x1fU)));
        tracep->chgBit(oldp+2720,((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])));
        tracep->chgBit(oldp+2721,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 1U))));
        tracep->chgBit(oldp+2722,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 2U))));
        tracep->chgBit(oldp+2723,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 3U))));
        tracep->chgBit(oldp+2724,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 4U))));
        tracep->chgBit(oldp+2725,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 5U))));
        tracep->chgBit(oldp+2726,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 6U))));
        tracep->chgBit(oldp+2727,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 7U))));
        tracep->chgBit(oldp+2728,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 8U))));
        tracep->chgBit(oldp+2729,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 9U))));
        tracep->chgBit(oldp+2730,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0xaU))));
        tracep->chgBit(oldp+2731,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0xbU))));
        tracep->chgBit(oldp+2732,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0xcU))));
        tracep->chgBit(oldp+2733,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0xdU))));
        tracep->chgBit(oldp+2734,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0xeU))));
        tracep->chgBit(oldp+2735,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0xfU))));
        tracep->chgBit(oldp+2736,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x10U))));
        tracep->chgBit(oldp+2737,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x11U))));
        tracep->chgBit(oldp+2738,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x12U))));
        tracep->chgBit(oldp+2739,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x13U))));
        tracep->chgBit(oldp+2740,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x14U))));
        tracep->chgBit(oldp+2741,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x15U))));
        tracep->chgBit(oldp+2742,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x16U))));
        tracep->chgBit(oldp+2743,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x17U))));
        tracep->chgBit(oldp+2744,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                         >> 0x18U))));
        tracep->chgIData(oldp+2745,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__adder_result),32);
        tracep->chgIData(oldp+2746,(VL_LTS_III(32, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgIData(oldp+2747,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                     < vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgIData(oldp+2748,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgIData(oldp+2749,((~ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__or_result)),32);
        tracep->chgIData(oldp+2750,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__or_result),32);
        tracep->chgIData(oldp+2751,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                     ^ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgIData(oldp+2752,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                     << 0x10U)),32);
        tracep->chgIData(oldp+2753,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                     << (0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1))),32);
        tracep->chgIData(oldp+2754,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                     >> (0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1))),32);
        tracep->chgIData(oldp+2755,(VL_SHIFTRS_III(32,32,5, vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2, 
                                                   (0x1fU 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1))),32);
        tracep->chgQData(oldp+2756,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mult_result),64);
        tracep->chgQData(oldp+2758,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result),64);
        tracep->chgQData(oldp+2760,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__div_result),64);
        tracep->chgQData(oldp+2762,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__divu_result),64);
        tracep->chgIData(oldp+2764,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI),32);
        tracep->chgIData(oldp+2765,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO),32);
        tracep->chgIData(oldp+2766,(((0x20000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU])
                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clz_out
                                      : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clo_out)),32);
        tracep->chgQData(oldp+2767,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__madd_result),64);
        tracep->chgQData(oldp+2769,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__maddu_result),64);
        tracep->chgQData(oldp+2771,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__msub_result),64);
        tracep->chgQData(oldp+2773,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__msubu_result),64);
        tracep->chgIData(oldp+2775,(((0U != vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2
                                      : 0U)),32);
        tracep->chgIData(oldp+2776,(((0U == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2
                                      : 0U)),32);
        tracep->chgIData(oldp+2777,(((0x20000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                                      ? (~ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                                      : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgIData(oldp+2778,(((0x20000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[9U])
                                      ? 1U : 0U)),32);
        tracep->chgIData(oldp+2779,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                     - vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgIData(oldp+2780,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                     + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgBit(oldp+2781,((1U & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                          >> 0xaU) 
                                         & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                             ^ vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2) 
                                            >> 0x1fU)))));
        tracep->chgIData(oldp+2782,(((IData)(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                               >> 0xaU) 
                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1 
                                                 >> 0x1fU)))
                                      ? (- vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)
                                      : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src1)),32);
        tracep->chgIData(oldp+2783,(((IData)(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[0xaU] 
                                               >> 0xaU) 
                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2 
                                                 >> 0x1fU)))
                                      ? (- vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)
                                      : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_src2)),32);
        tracep->chgCData(oldp+2784,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mul_state),2);
        tracep->chgCData(oldp+2785,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__mul_nextstate),2);
        tracep->chgBit(oldp+2786,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalid));
        tracep->chgBit(oldp+2787,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_dividend_tvalid));
        tracep->chgBit(oldp+2788,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalidu));
        tracep->chgBit(oldp+2789,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_dividend_tvalidu));
        tracep->chgBit(oldp+2790,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__div_state));
        tracep->chgBit(oldp+2791,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__div_nextstate));
        tracep->chgIData(oldp+2792,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clo_out),32);
        tracep->chgIData(oldp+2793,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_cloclz_cnt__DOT__clz_out),32);
        tracep->chgIData(oldp+2794,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_multiplier__DOT__A_reg),32);
        tracep->chgIData(oldp+2795,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__U_multiplier__DOT__B_reg),32);
        tracep->chgBit(oldp+2796,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__reset)))));
        tracep->chgQData(oldp+2797,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__temp),64);
        tracep->chgCData(oldp+2799,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state),3);
        tracep->chgCData(oldp+2800,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__i),5);
        tracep->chgCData(oldp+2801,((((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state)) 
                                      & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__start))
                                      ? 4U : (((4U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__state)) 
                                               & (0xaU 
                                                  > (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__i)))
                                               ? 4U
                                               : ((0xaU 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__i))
                                                   ? 5U
                                                   : 0U)))),3);
        tracep->chgBit(oldp+2802,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__start));
        tracep->chgQData(oldp+2803,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__temp),64);
        tracep->chgCData(oldp+2805,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state),3);
        tracep->chgCData(oldp+2806,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__i),5);
        tracep->chgCData(oldp+2807,((((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state)) 
                                      & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__start))
                                      ? 3U : (((3U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__state)) 
                                               & (0xaU 
                                                  > (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__i)))
                                               ? 3U
                                               : ((0xaU 
                                                   == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__i))
                                                   ? 5U
                                                   : 0U)))),3);
        tracep->chgBit(oldp+2808,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__start));
        tracep->chgBit(oldp+2809,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__ds_valid));
        tracep->chgBit(oldp+2810,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__ds_ready_go));
        tracep->chgSData(oldp+2811,(((0x800U & ((IData)(
                                                        (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                         >> 4U)) 
                                                << 0xbU)) 
                                     | ((0x400U & ((IData)(
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
                                                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal))))))))))))),12);
        tracep->chgWData(oldp+2812,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r),71);
        tracep->chgIData(oldp+2815,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]),32);
        tracep->chgCData(oldp+2816,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                              >> 0xbU))),5);
        tracep->chgBit(oldp+2817,((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U])));
        tracep->chgBit(oldp+2818,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                         >> 6U))));
        tracep->chgCData(oldp+2819,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                              >> 1U))),5);
        tracep->chgCData(oldp+2820,((0x1fU & ((0x40U 
                                               & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U])
                                               ? ((
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                   << 0x1fU) 
                                                  | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[2U] 
                                                     >> 1U))
                                               : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall)
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
                                                      : 0x1fU))))))),5);
        tracep->chgBit(oldp+2821,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_defined));
        tracep->chgCData(oldp+2822,((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add) 
                                      << 2U) | ((2U 
                                                 & ((IData)(
                                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                             >> 8U)) 
                                                    << 1U)) 
                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub)))),3);
        tracep->chgCData(oldp+2823,((3U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                   >> 0x21U)))),2);
        tracep->chgIData(oldp+2824,((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus)),32);
        tracep->chgBit(oldp+2825,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                 >> 0x20U)))));
        tracep->chgBit(oldp+2826,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
                                                 >> 0x23U)))));
        tracep->chgBit(oldp+2827,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ws_to_rf_bus 
                                                 >> 0x25U)))));
        tracep->chgCData(oldp+2828,((0x1fU & (IData)(
                                                     (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ws_to_rf_bus 
                                                      >> 0x20U)))),5);
        tracep->chgIData(oldp+2829,((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ws_to_rf_bus)),32);
        tracep->chgBit(oldp+2830,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr) 
                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr))));
        tracep->chgBit(oldp+2831,((IData)((((((((0ULL 
                                                 != 
                                                 (0x30ULL 
                                                  & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                                | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez)) 
                                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz)) 
                                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez)) 
                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz)) 
                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)))));
        tracep->chgIData(oldp+2832,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__alu_op),29);
        tracep->chgBit(oldp+2833,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__load_op));
        tracep->chgBit(oldp+2834,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa) 
                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc))));
        tracep->chgBit(oldp+2835,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa));
        tracep->chgBit(oldp+2836,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc));
        tracep->chgBit(oldp+2837,((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8) 
                                    | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext)) 
                                   | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext))));
        tracep->chgBit(oldp+2838,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8));
        tracep->chgBit(oldp+2839,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__gr_we));
        tracep->chgBit(oldp+2840,((IData)((0ULL != 
                                           (0x4f0000000000ULL 
                                            & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)))));
        tracep->chgCData(oldp+2841,(((1U & (((IData)(
                                                     (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                      >> 3U)) 
                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)))
                                      ? 0x1fU : (0x1fU 
                                                 & ((IData)(
                                                            (((0ULL 
                                                               != 
                                                               (0x7f00007f00ULL 
                                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                                              | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui)) 
                                                             | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0)))
                                                     ? 
                                                    ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                      << 0x10U) 
                                                     | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                        >> 0x10U))
                                                     : 
                                                    ((IData)(
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
                                                         >> 0xbU))))))),5);
        tracep->chgSData(oldp+2842,((0xffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])),16);
        tracep->chgIData(oldp+2843,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_sa)
                                      ? (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 6U))
                                      : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src1_is_pc)
                                          ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[0U]
                                          : 0U))),32);
        tracep->chgIData(oldp+2844,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait)
                                      ? (((0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x15U)) 
                                          == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))
                                          ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result
                                          : (((0x1fU 
                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x15U)) 
                                              == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))
                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result
                                              : (((0x1fU 
                                                   & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                      >> 0x15U)) 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest))
                                                  ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result
                                                  : 
                                                 vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))
                                      : ((0U == (0x1fU 
                                                 & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                    >> 0x15U)))
                                          ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                         [(0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x15U))]))),32);
        tracep->chgIData(oldp+2845,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext)
                                      ? (0xffffU & 
                                         vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])
                                      : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext)
                                          ? (((- (IData)(
                                                         (1U 
                                                          & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                             >> 0xfU)))) 
                                              << 0x10U) 
                                             | (0xffffU 
                                                & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U]))
                                          : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__src2_is_8)
                                              ? 8U : 0U)))),32);
        tracep->chgIData(oldp+2846,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait)
                                      ? (((0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x10U)) 
                                          == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))
                                          ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_alu_result
                                          : (((0x1fU 
                                               & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x10U)) 
                                              == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))
                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_final_result
                                              : (((0x1fU 
                                                   & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                      >> 0x10U)) 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__MEM_dest))
                                                  ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_final_result
                                                  : 
                                                 vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))
                                      : ((0U == (0x1fU 
                                                 & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                    >> 0x10U)))
                                          ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                         [(0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x10U))]))),32);
        tracep->chgCData(oldp+2847,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                     >> 0x1aU)),6);
        tracep->chgCData(oldp+2848,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                              >> 0x15U))),5);
        tracep->chgCData(oldp+2849,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                              >> 0x10U))),5);
        tracep->chgCData(oldp+2850,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                              >> 6U))),5);
        tracep->chgCData(oldp+2851,((0x3fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])),6);
        tracep->chgIData(oldp+2852,((0x3ffffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U])),26);
        tracep->chgQData(oldp+2853,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d),64);
        tracep->chgIData(oldp+2855,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_d),32);
        tracep->chgIData(oldp+2856,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_d),32);
        tracep->chgIData(oldp+2857,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rd_d),32);
        tracep->chgIData(oldp+2858,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__sa_d),32);
        tracep->chgQData(oldp+2859,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__func_d),64);
        tracep->chgBit(oldp+2861,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_addu));
        tracep->chgBit(oldp+2862,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_subu));
        tracep->chgBit(oldp+2863,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_slt));
        tracep->chgBit(oldp+2864,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sltu));
        tracep->chgBit(oldp+2865,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_and));
        tracep->chgBit(oldp+2866,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_or));
        tracep->chgBit(oldp+2867,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_xor));
        tracep->chgBit(oldp+2868,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_nor));
        tracep->chgBit(oldp+2869,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sll));
        tracep->chgBit(oldp+2870,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srl));
        tracep->chgBit(oldp+2871,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sra));
        tracep->chgBit(oldp+2872,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 9U)))));
        tracep->chgBit(oldp+2873,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui));
        tracep->chgBit(oldp+2874,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x23U)))));
        tracep->chgBit(oldp+2875,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x2bU)))));
        tracep->chgBit(oldp+2876,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 4U)))));
        tracep->chgBit(oldp+2877,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 5U)))));
        tracep->chgBit(oldp+2878,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 3U)))));
        tracep->chgBit(oldp+2879,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jr));
        tracep->chgBit(oldp+2880,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_add));
        tracep->chgBit(oldp+2881,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 8U)))));
        tracep->chgBit(oldp+2882,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sub));
        tracep->chgBit(oldp+2883,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0xaU)))));
        tracep->chgBit(oldp+2884,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0xbU)))));
        tracep->chgBit(oldp+2885,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0xcU)))));
        tracep->chgBit(oldp+2886,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0xdU)))));
        tracep->chgBit(oldp+2887,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0xeU)))));
        tracep->chgBit(oldp+2888,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sllv));
        tracep->chgBit(oldp+2889,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srav));
        tracep->chgBit(oldp+2890,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_srlv));
        tracep->chgBit(oldp+2891,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mult));
        tracep->chgBit(oldp+2892,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_multu));
        tracep->chgBit(oldp+2893,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_div));
        tracep->chgBit(oldp+2894,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_divu));
        tracep->chgBit(oldp+2895,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfhi));
        tracep->chgBit(oldp+2896,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mflo));
        tracep->chgBit(oldp+2897,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mthi));
        tracep->chgBit(oldp+2898,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtlo));
        tracep->chgBit(oldp+2899,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgez));
        tracep->chgBit(oldp+2900,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgtz));
        tracep->chgBit(oldp+2901,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_blez));
        tracep->chgBit(oldp+2902,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltz));
        tracep->chgBit(oldp+2903,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal));
        tracep->chgBit(oldp+2904,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal));
        tracep->chgBit(oldp+2905,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 2U)))));
        tracep->chgBit(oldp+2906,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_jalr));
        tracep->chgBit(oldp+2907,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x2aU)))));
        tracep->chgBit(oldp+2908,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x2eU)))));
        tracep->chgBit(oldp+2909,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x28U)))));
        tracep->chgBit(oldp+2910,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x29U)))));
        tracep->chgBit(oldp+2911,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x20U)))));
        tracep->chgBit(oldp+2912,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x24U)))));
        tracep->chgBit(oldp+2913,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x21U)))));
        tracep->chgBit(oldp+2914,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x25U)))));
        tracep->chgBit(oldp+2915,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x22U)))));
        tracep->chgBit(oldp+2916,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x26U)))));
        tracep->chgSData(oldp+2917,(((0x800U & ((IData)(
                                                        (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                         >> 0x2eU)) 
                                                << 0xbU)) 
                                     | ((0x400U & ((IData)(
                                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                            >> 0x2aU)) 
                                                   << 0xaU)) 
                                        | ((0x200U 
                                            & ((IData)(
                                                       (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                        >> 0x29U)) 
                                               << 9U)) 
                                           | ((0x100U 
                                               & ((IData)(
                                                          (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                           >> 0x28U)) 
                                                  << 8U)) 
                                              | ((0x80U 
                                                  & ((IData)(
                                                             (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                              >> 0x26U)) 
                                                     << 7U)) 
                                                 | ((0x40U 
                                                     & ((IData)(
                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                 >> 0x22U)) 
                                                        << 6U)) 
                                                    | ((0x20U 
                                                        & ((IData)(
                                                                   (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                    >> 0x25U)) 
                                                           << 5U)) 
                                                       | ((0x10U 
                                                           & ((IData)(
                                                                      (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                       >> 0x21U)) 
                                                              << 4U)) 
                                                          | ((8U 
                                                              & ((IData)(
                                                                         (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                          >> 0x24U)) 
                                                                 << 3U)) 
                                                             | ((4U 
                                                                 & ((IData)(
                                                                            (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                             >> 0x20U)) 
                                                                    << 2U)) 
                                                                | ((2U 
                                                                    & ((IData)(
                                                                               (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x2bU)) 
                                                                       << 1U)) 
                                                                   | (1U 
                                                                      & (IData)(
                                                                                (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                                                >> 0x23U))))))))))))))),12);
        tracep->chgBit(oldp+2918,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mtc0));
        tracep->chgBit(oldp+2919,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0));
        tracep->chgBit(oldp+2920,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_eret));
        tracep->chgBit(oldp+2921,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_syscall));
        tracep->chgBit(oldp+2922,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_break));
        tracep->chgBit(oldp+2923,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbp));
        tracep->chgBit(oldp+2924,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbr));
        tracep->chgBit(oldp+2925,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwi));
        tracep->chgBit(oldp+2926,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlbwr));
        tracep->chgBit(oldp+2927,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clo));
        tracep->chgBit(oldp+2928,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_clz));
        tracep->chgBit(oldp+2929,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_madd));
        tracep->chgBit(oldp+2930,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_maddu));
        tracep->chgBit(oldp+2931,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msub));
        tracep->chgBit(oldp+2932,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_msubu));
        tracep->chgBit(oldp+2933,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mul));
        tracep->chgBit(oldp+2934,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movn));
        tracep->chgBit(oldp+2935,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_movz));
        tracep->chgBit(oldp+2936,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq));
        tracep->chgBit(oldp+2937,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi));
        tracep->chgBit(oldp+2938,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge));
        tracep->chgBit(oldp+2939,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei));
        tracep->chgBit(oldp+2940,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeiu));
        tracep->chgBit(oldp+2941,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu));
        tracep->chgBit(oldp+2942,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlt));
        tracep->chgBit(oldp+2943,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tlti));
        tracep->chgBit(oldp+2944,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltiu));
        tracep->chgBit(oldp+2945,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tltu));
        tracep->chgBit(oldp+2946,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tne));
        tracep->chgBit(oldp+2947,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tnei));
        tracep->chgCData(oldp+2948,((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teq) 
                                      | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_teqi))
                                      ? 6U : (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tge) 
                                               | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgei))
                                               ? 1U
                                               : (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_tgeu) 
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
                                                      : 0U))))))),3);
        tracep->chgCData(oldp+2949,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__FPU_inst_type),2);
        tracep->chgBit(oldp+2950,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x2fU)))));
        tracep->chgCData(oldp+2951,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type),3);
        tracep->chgBit(oldp+2952,((((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type)) 
                                    | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                   | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type)))));
        tracep->chgBit(oldp+2953,(((((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type)) 
                                     | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                    | (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type))) 
                                   | (7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__CacheInst_type)))));
        tracep->chgBit(oldp+2954,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                 >> 0x33U)))));
        tracep->chgBit(oldp+2955,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_sync));
        tracep->chgBit(oldp+2956,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_wait));
        tracep->chgBit(oldp+2957,((1U & (((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d 
                                                   >> 3U)) 
                                          | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bgezal)) 
                                         | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_bltzal)))));
        tracep->chgBit(oldp+2958,((IData)((((0ULL != 
                                             (0x7f00007f00ULL 
                                              & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui)) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_mfc0)))));
        tracep->chgIData(oldp+2959,(((0U == (0x1fU 
                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                >> 0x15U)))
                                      ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                     [(0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                >> 0x15U))])),32);
        tracep->chgIData(oldp+2960,(((0U == (0x1fU 
                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                >> 0x10U)))
                                      ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf
                                     [(0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                >> 0x10U))])),32);
        tracep->chgBit(oldp+2961,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait));
        tracep->chgBit(oldp+2962,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait));
        tracep->chgBit(oldp+2963,((IData)((((((((((
                                                   (0ULL 
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
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_wait)))));
        tracep->chgBit(oldp+2964,((1U & (IData)((((0ULL 
                                                   != 
                                                   (0x7f08ULL 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__op_d)) 
                                                  | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__load_op)) 
                                                 | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__inst_lui))))));
        tracep->chgBit(oldp+2965,(((((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait) 
                                       & ((0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x15U)) 
                                          == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))) 
                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                         >> 9U)) | 
                                     (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait) 
                                       & ((0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x15U)) 
                                          == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))) 
                                      & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                         >> 5U))) | 
                                    (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait) 
                                      & ((0x1fU & (
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                   >> 0x10U)) 
                                         == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest))) 
                                     & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                        >> 5U))) | 
                                   (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait) 
                                     & ((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x10U)) 
                                        == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))) 
                                    & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                       >> 9U)))));
        tracep->chgBit(oldp+2966,(((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rs_wait) 
                                     & ((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                  >> 0x15U)) 
                                        == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest))) 
                                    | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__rt_wait) 
                                       & ((0x1fU & 
                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                            >> 0x10U)) 
                                          == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__EXE_dest)))) 
                                   & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__ds_to_es_bus_r[3U] 
                                      >> 0x16U))));
        tracep->chgBit(oldp+2967,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_zero_ext));
        tracep->chgBit(oldp+2968,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__imm_sign_ext));
        tracep->chgIData(oldp+2969,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[0]),32);
        tracep->chgIData(oldp+2970,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[1]),32);
        tracep->chgIData(oldp+2971,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[2]),32);
        tracep->chgIData(oldp+2972,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[3]),32);
        tracep->chgIData(oldp+2973,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[4]),32);
        tracep->chgIData(oldp+2974,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[5]),32);
        tracep->chgIData(oldp+2975,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[6]),32);
        tracep->chgIData(oldp+2976,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[7]),32);
        tracep->chgIData(oldp+2977,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[8]),32);
        tracep->chgIData(oldp+2978,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[9]),32);
        tracep->chgIData(oldp+2979,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[10]),32);
        tracep->chgIData(oldp+2980,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[11]),32);
        tracep->chgIData(oldp+2981,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[12]),32);
        tracep->chgIData(oldp+2982,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[13]),32);
        tracep->chgIData(oldp+2983,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[14]),32);
        tracep->chgIData(oldp+2984,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[15]),32);
        tracep->chgIData(oldp+2985,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[16]),32);
        tracep->chgIData(oldp+2986,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[17]),32);
        tracep->chgIData(oldp+2987,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[18]),32);
        tracep->chgIData(oldp+2988,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[19]),32);
        tracep->chgIData(oldp+2989,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[20]),32);
        tracep->chgIData(oldp+2990,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[21]),32);
        tracep->chgIData(oldp+2991,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[22]),32);
        tracep->chgIData(oldp+2992,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[23]),32);
        tracep->chgIData(oldp+2993,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[24]),32);
        tracep->chgIData(oldp+2994,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[25]),32);
        tracep->chgIData(oldp+2995,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[26]),32);
        tracep->chgIData(oldp+2996,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[27]),32);
        tracep->chgIData(oldp+2997,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[28]),32);
        tracep->chgIData(oldp+2998,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[29]),32);
        tracep->chgIData(oldp+2999,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[30]),32);
        tracep->chgIData(oldp+3000,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf[31]),32);
        tracep->chgIData(oldp+3001,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__i),32);
        tracep->chgCData(oldp+3002,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                                     >> 0x1aU)),6);
        tracep->chgCData(oldp+3003,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                                              >> 0x10U))),5);
        tracep->chgSData(oldp+3004,((0x7ffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata)),11);
        tracep->chgBit(oldp+3005,((1U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                                          >> 0x1bU))));
        tracep->chgBit(oldp+3006,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__fs_valid));
        tracep->chgBit(oldp+3007,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)))));
        tracep->chgCData(oldp+3008,((0x1fU & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r))),5);
        tracep->chgQData(oldp+3009,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r),39);
        tracep->chgBit(oldp+3011,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                 >> 5U)))));
        tracep->chgIData(oldp+3012,((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                             >> 6U))),32);
        tracep->chgBit(oldp+3013,((1U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                 >> 0x26U)))));
        tracep->chgBit(oldp+3014,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__BPU_valid));
        tracep->chgBit(oldp+3015,((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__BPU_valid) 
                                    & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__fs_valid)) 
                                   & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                              >> 0x26U)))));
        tracep->chgBit(oldp+3016,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__to_BPU_pc_valid));
        tracep->chgIData(oldp+3017,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_es_pc),32);
        tracep->chgCData(oldp+3018,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_old_Count),2);
        tracep->chgBit(oldp+3019,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_is_branch));
        tracep->chgBit(oldp+3020,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_br_taken));
        tracep->chgIData(oldp+3021,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_br_target),32);
        tracep->chgCData(oldp+3022,((0xffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_es_pc 
                                              >> 2U))),8);
        tracep->chgIData(oldp+3023,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_es_pc 
                                     >> 0xaU)),22);
        tracep->chgCData(oldp+3024,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_new_Count),2);
        tracep->chgQData(oldp+3025,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_wr_data),56);
        tracep->chgIData(oldp+3027,((0x3fffffU & (IData)(
                                                         (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data 
                                                          >> 0x20U)))),22);
        tracep->chgIData(oldp+3028,((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data)),32);
        tracep->chgCData(oldp+3029,((3U & (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data 
                                                   >> 0x36U)))),2);
        tracep->chgBit(oldp+3030,(((0x3fffffU & (IData)(
                                                        (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data 
                                                         >> 0x20U))) 
                                   == (0x3fffffU & (IData)(
                                                           (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                            >> 0x10U))))));
        tracep->chgQData(oldp+3031,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data),56);
        tracep->chgIData(oldp+3033,((0x3fffffU & (IData)(
                                                         (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                          >> 0x10U)))),22);
        tracep->chgBit(oldp+3034,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_valid_reg));
        tracep->chgIData(oldp+3035,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_ret_addr_reg),32);
        tracep->chgCData(oldp+3036,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_Count_reg),2);
        tracep->chgBit(oldp+3037,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_is_taken_reg));
        tracep->chgBit(oldp+3038,(((1U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                                           >> 0x1bU))
                                    ? 1U : (1U & (~ 
                                                  (1U 
                                                   & (IData)(
                                                             (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data 
                                                              >> 0x37U))))))));
        tracep->chgBit(oldp+3039,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__valid));
        tracep->chgQData(oldp+3040,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__doutb_bypass),56);
        tracep->chgQData(oldp+3042,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),56);
        tracep->chgBit(oldp+3044,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_valid));
        tracep->chgBit(oldp+3045,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_ready_go));
        tracep->chgWData(oldp+3046,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r),180);
        tracep->chgBit(oldp+3052,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U] 
                                         >> 6U))));
        tracep->chgBit(oldp+3053,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U] 
                                         >> 5U))));
        tracep->chgCData(oldp+3054,((0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U])),5);
        tracep->chgSData(oldp+3055,((0xfffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U] 
                                               >> 7U))),12);
        tracep->chgIData(oldp+3056,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                      << 0xdU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U] 
                                                  >> 0x13U))),32);
        tracep->chgCData(oldp+3057,((7U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                           >> 0x15U))),3);
        tracep->chgCData(oldp+3058,((0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])),5);
        tracep->chgBit(oldp+3059,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                         >> 0x14U))));
        tracep->chgBit(oldp+3060,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                         >> 0x19U))));
        tracep->chgBit(oldp+3061,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                   >> 0x1fU)));
        tracep->chgBit(oldp+3062,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__has_int));
        tracep->chgBit(oldp+3063,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB_ex));
        tracep->chgCData(oldp+3064,((0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                              >> 0x1aU))),5);
        tracep->chgCData(oldp+3065,((((7U < (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                             >> 0x1cU)) 
                                      & (0xcU > (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                                 >> 0x1cU)))
                                      ? 0x1fU : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit)
                                                  ? 
                                                 ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_found)
                                                   ? 
                                                  ((0x1000U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U])
                                                    ? 
                                                   ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_v1)
                                                     ? 
                                                    ((1U 
                                                      & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_d1)) 
                                                         & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                                            >> 0xaU)))
                                                      ? 8U
                                                      : 0x1fU)
                                                     : 
                                                    ((0x20U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                      ? 5U
                                                      : 
                                                     ((0x400U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                       ? 7U
                                                       : 0x1fU)))
                                                    : 
                                                   ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_v0)
                                                     ? 
                                                    ((1U 
                                                      & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_d0)) 
                                                         & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                                            >> 0xaU)))
                                                      ? 8U
                                                      : 0x1fU)
                                                     : 
                                                    ((0x20U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                      ? 5U
                                                      : 
                                                     ((0x400U 
                                                       & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                       ? 7U
                                                       : 0x1fU))))
                                                   : 
                                                  ((0x20U 
                                                    & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                    ? 4U
                                                    : 
                                                   ((0x400U 
                                                     & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
                                                     ? 6U
                                                     : 0x1fU)))
                                                  : 0x1fU))),5);
        tracep->chgBit(oldp+3066,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit)))));
        tracep->chgBit(oldp+3067,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__eret_flush));
        tracep->chgBit(oldp+3068,((1U & (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                           >> 7U) | 
                                          ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                            >> 8U) 
                                           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__TLBInst_flow))) 
                                         | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                             >> 0x14U) 
                                            & (0xaU 
                                               == (0x1fU 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])))))));
        tracep->chgCData(oldp+3069,((7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config)),3);
        tracep->chgIData(oldp+3070,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__CP0_data),32);
        tracep->chgBit(oldp+3071,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                         >> 8U))));
        tracep->chgBit(oldp+3072,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__TLBInst_flow));
        tracep->chgCData(oldp+3073,((0xfU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                             >> 0xbU))),4);
        tracep->chgBit(oldp+3074,((1U & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                          >> 0xaU) 
                                         & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__store_record))))));
        tracep->chgBit(oldp+3075,((((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                     >> 0xaU) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache))));
        tracep->chgBit(oldp+3076,((((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                     >> 5U) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_valid)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache))));
        tracep->chgIData(oldp+3077,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                     >> 0xcU)),20);
        tracep->chgBit(oldp+3078,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_state));
        tracep->chgBit(oldp+3079,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_nextstate));
        tracep->chgBit(oldp+3080,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit));
        tracep->chgBit(oldp+3081,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_valid));
        tracep->chgBit(oldp+3082,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_found));
        tracep->chgCData(oldp+3083,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_index),4);
        tracep->chgIData(oldp+3084,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_pfn0),20);
        tracep->chgCData(oldp+3085,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_c0),3);
        tracep->chgBit(oldp+3086,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_d0));
        tracep->chgBit(oldp+3087,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_v0));
        tracep->chgIData(oldp+3088,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_pfn1),20);
        tracep->chgCData(oldp+3089,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_c1),3);
        tracep->chgBit(oldp+3090,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_d1));
        tracep->chgBit(oldp+3091,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_v1));
        tracep->chgIData(oldp+3092,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_vpn2),19);
        tracep->chgCData(oldp+3093,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr),8);
        tracep->chgBit(oldp+3094,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__mtc0_we));
        tracep->chgIData(oldp+3095,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_Bev)
                                      ? 0xbfc00200U
                                      : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EBase)),32);
        tracep->chgIData(oldp+3096,(((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)) 
                                       | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype))) 
                                      | (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)))
                                      ? 0U : 0x180U)),32);
        tracep->chgBit(oldp+3097,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_CU0));
        tracep->chgBit(oldp+3098,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_Bev));
        tracep->chgBit(oldp+3099,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_UM));
        tracep->chgBit(oldp+3100,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_ERL));
        tracep->chgIData(oldp+3101,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Count),32);
        tracep->chgIData(oldp+3102,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Compare),32);
        tracep->chgBit(oldp+3103,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__tick));
        tracep->chgBit(oldp+3104,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_BD));
        tracep->chgCData(oldp+3105,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_CE),2);
        tracep->chgCData(oldp+3106,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_ExcCode),5);
        tracep->chgBit(oldp+3107,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Count 
                                   == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Compare)));
        tracep->chgCData(oldp+3108,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Wired_Wired),4);
        tracep->chgCData(oldp+3109,((0xfU & ((IData)(1U) 
                                             + (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Random_Random)))),4);
        tracep->chgSData(oldp+3110,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Context_PTEBase),9);
        tracep->chgIData(oldp+3111,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Context_BadVPN2),19);
        tracep->chgIData(oldp+3112,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_PageMask),32);
        tracep->chgIData(oldp+3113,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_BadVAddr),32);
        tracep->chgBit(oldp+3114,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_P));
        tracep->chgIData(oldp+3115,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config),32);
        tracep->chgIData(oldp+3116,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Prid),32);
        tracep->chgIData(oldp+3117,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EBase),32);
        tracep->chgBit(oldp+3118,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_M));
        tracep->chgCData(oldp+3119,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_MMUSize),6);
        tracep->chgCData(oldp+3120,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IS),3);
        tracep->chgCData(oldp+3121,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IL),3);
        tracep->chgBit(oldp+3122,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_valid));
        tracep->chgBit(oldp+3123,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__ms_ready_go));
        tracep->chgWData(oldp+3124,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r),117);
        tracep->chgBit(oldp+3128,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                         >> 6U))));
        tracep->chgBit(oldp+3129,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                         >> 5U))));
        tracep->chgCData(oldp+3130,((0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U])),5);
        tracep->chgIData(oldp+3131,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]),32);
        tracep->chgIData(oldp+3132,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[0U]),32);
        tracep->chgBit(oldp+3133,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                         >> 0x13U))));
        tracep->chgBit(oldp+3134,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                         >> 0x14U))));
        tracep->chgSData(oldp+3135,((0xfffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                               >> 7U))),12);
        tracep->chgIData(oldp+3136,(((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                      << 0xdU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                                  >> 0x13U))),32);
        tracep->chgBit(oldp+3137,((1U & ((0U == (3U 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                          ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                             >> 7U)
                                          : ((1U == 
                                              (3U & 
                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                              ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                 >> 0xfU)
                                              : ((2U 
                                                  == 
                                                  (3U 
                                                   & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                                  ? 
                                                 (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                  >> 0x17U)
                                                  : 
                                                 (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                  >> 0x1fU)))))));
        tracep->chgBit(oldp+3138,((1U & ((0U == (3U 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                          ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                             >> 0xfU)
                                          : ((2U == 
                                              (3U & 
                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U])) 
                                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                >> 0x1fU))))));
        tracep->chgIData(oldp+3139,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__mem_result_lb),32);
        tracep->chgIData(oldp+3140,((0xffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__mem_result_lb)),32);
        tracep->chgIData(oldp+3141,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__mem_result_lh),32);
        tracep->chgIData(oldp+3142,((0xffffU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__mem_result_lh)),32);
        tracep->chgIData(oldp+3143,(((0U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                      ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                          << 0x18U) 
                                         | (0xffffffU 
                                            & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                                << 0xdU) 
                                               | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                                  >> 0x13U))))
                                      : ((1U == (3U 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                          ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                              << 0x10U) 
                                             | (0xffffU 
                                                & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                                    << 0xdU) 
                                                   | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                                      >> 0x13U))))
                                          : ((2U == 
                                              (3U & 
                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                              ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                  << 8U) 
                                                 | (0xffU 
                                                    & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                                       >> 0x13U)))
                                              : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata)))),32);
        tracep->chgIData(oldp+3144,(((0U == (3U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata
                                      : ((1U == (3U 
                                                 & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                          ? ((0xff000000U 
                                              & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                                 << 0xdU)) 
                                             | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                >> 8U))
                                          : ((2U == 
                                              (3U & 
                                               vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[1U]))
                                              ? ((0xffff0000U 
                                                  & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                                     << 0xdU)) 
                                                 | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                    >> 0x10U))
                                              : ((0xffffff00U 
                                                  & ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[3U] 
                                                      << 0xdU) 
                                                     | (0x1f00U 
                                                        & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__m1s_to_ms_bus_r[2U] 
                                                           >> 0x13U)))) 
                                                 | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__data_rdata 
                                                    >> 0x18U)))))),32);
        tracep->chgIData(oldp+3145,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__mem_stage__DOT__mem_data),32);
        tracep->chgBit(oldp+3146,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_allowin));
        tracep->chgBit(oldp+3147,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_ex));
        tracep->chgCData(oldp+3148,((((7U < (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                             >> 0x1cU)) 
                                      & (0xcU > (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                 >> 0x1cU)))
                                      ? 0x1fU : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit)
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
                                                  : 0x1fU))),5);
        tracep->chgBit(oldp+3149,((1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit)))));
        tracep->chgIData(oldp+3150,(((IData)(4U) + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc)),32);
        tracep->chgBit(oldp+3151,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__flush_delayed));
        tracep->chgBit(oldp+3152,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__refetch_delayed));
        tracep->chgCData(oldp+3153,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__cache_index_delayed),8);
        tracep->chgIData(oldp+3154,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                     >> 0xcU)),20);
        tracep->chgBit(oldp+3155,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_state));
        tracep->chgBit(oldp+3156,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_nextstate));
        tracep->chgBit(oldp+3157,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit));
        tracep->chgBit(oldp+3158,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_valid));
        tracep->chgBit(oldp+3159,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_found));
        tracep->chgIData(oldp+3160,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_vpn2),19);
        tracep->chgIData(oldp+3161,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_pfn0),20);
        tracep->chgCData(oldp+3162,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_c0),3);
        tracep->chgBit(oldp+3163,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_d0));
        tracep->chgBit(oldp+3164,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_v0));
        tracep->chgIData(oldp+3165,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_pfn1),20);
        tracep->chgCData(oldp+3166,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_c1),3);
        tracep->chgBit(oldp+3167,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_d1));
        tracep->chgBit(oldp+3168,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_v1));
        tracep->chgBit(oldp+3169,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_valid));
        tracep->chgWData(oldp+3170,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r),71);
        tracep->chgBit(oldp+3173,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U] 
                                         >> 6U))));
        tracep->chgBit(oldp+3174,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U] 
                                         >> 5U))));
        tracep->chgCData(oldp+3175,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__data_wstrb_r),4);
        tracep->chgIData(oldp+3176,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__data_wdata_r),32);
        tracep->chgIData(oldp+3177,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_final_result_r),32);
        tracep->chgIData(oldp+3178,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_inst_r),32);
        tracep->chgBit(oldp+3179,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__rf_we));
        tracep->chgIData(oldp+3180,(((IData)((0xffffffULL 
                                              & (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T)
                                                   ? vlSelf->SocLite__DOT__axi_ram__DOT___T_6
                                                   : vlSelf->SocLite__DOT__axi_ram__DOT__raddr_r) 
                                                 >> 2U))) 
                                     + (IData)((QData)((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_1))))),32);
        tracep->chgIData(oldp+3181,(vlSelf->SocLite__DOT__axi_ram__DOT__mem_rdata),32);
        tracep->chgIData(oldp+3182,((0x3fffffffU & 
                                     ((0xffffffU & 
                                       (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___waddr_T)
                                          ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr
                                         [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]
                                          : vlSelf->SocLite__DOT__axi_ram__DOT__waddr_r) 
                                        >> 2U)) + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_2)))),32);
        tracep->chgIData(oldp+3183,((((((8U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                         [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                         ? 0xffU : 0U) 
                                       << 0x18U) | 
                                      (((4U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                         [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                         ? 0xffU : 0U) 
                                       << 0x10U)) | 
                                     ((((2U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                         [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                         ? 0xffU : 0U) 
                                       << 8U) | ((1U 
                                                  & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                  [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                  ? 0xffU
                                                  : 0U)))),32);
        tracep->chgBit(oldp+3184,(((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T_25) 
                                   & (0x1000000U > 
                                      (0x3fffffffU 
                                       & ((0xffffffU 
                                           & (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___waddr_T)
                                                ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr
                                               [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]
                                                : vlSelf->SocLite__DOT__axi_ram__DOT__waddr_r) 
                                              >> 2U)) 
                                          + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_2)))))));
        tracep->chgCData(oldp+3185,(((1U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                      [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                      ? 0xffU : 0U)),8);
        tracep->chgCData(oldp+3186,(((2U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                      [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                      ? 0xffU : 0U)),8);
        tracep->chgCData(oldp+3187,(((4U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                      [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                      ? 0xffU : 0U)),8);
        tracep->chgCData(oldp+3188,(((8U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                      [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                      ? 0xffU : 0U)),8);
        tracep->chgSData(oldp+3189,(((((2U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                        [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                        ? 0xffU : 0U) 
                                      << 8U) | ((1U 
                                                 & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                 ? 0xffU
                                                 : 0U))),16);
        tracep->chgSData(oldp+3190,(((((8U & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                        [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                        ? 0xffU : 0U) 
                                      << 8U) | ((4U 
                                                 & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                 [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                 ? 0xffU
                                                 : 0U))),16);
        tracep->chgCData(oldp+3191,(vlSelf->SocLite__DOT__axi_ram__DOT__value),8);
        tracep->chgCData(oldp+3192,(vlSelf->SocLite__DOT__axi_ram__DOT__value_1),8);
        tracep->chgBit(oldp+3193,(vlSelf->SocLite__DOT__axi_ram__DOT__r_busy));
        tracep->chgCData(oldp+3194,(vlSelf->SocLite__DOT__axi_ram__DOT__r),8);
        tracep->chgCData(oldp+3195,(vlSelf->SocLite__DOT__axi_ram__DOT__r_1),2);
        tracep->chgQData(oldp+3196,(vlSelf->SocLite__DOT__axi_ram__DOT__raddr_r),39);
        tracep->chgBit(oldp+3198,(vlSelf->SocLite__DOT__axi_ram__DOT__in_r_bits_last));
        tracep->chgBit(oldp+3199,(vlSelf->SocLite__DOT__axi_ram__DOT__ren_REG));
        tracep->chgBit(oldp+3200,(vlSelf->SocLite__DOT__axi_ram__DOT__ren));
        tracep->chgCData(oldp+3201,(vlSelf->SocLite__DOT__axi_ram__DOT__value_2),8);
        tracep->chgBit(oldp+3202,(vlSelf->SocLite__DOT__axi_ram__DOT__w_busy));
        tracep->chgIData(oldp+3203,(vlSelf->SocLite__DOT__axi_ram__DOT__waddr_r),32);
        tracep->chgIData(oldp+3204,((0x3fffffffU & 
                                     ((0xffffffU & 
                                       (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___waddr_T)
                                          ? vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr
                                         [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]
                                          : vlSelf->SocLite__DOT__axi_ram__DOT__waddr_r) 
                                        >> 2U)) + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_2)))),30);
        tracep->chgQData(oldp+3205,((0x1fffffffffULL 
                                     & ((0xffffffULL 
                                         & (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T)
                                              ? vlSelf->SocLite__DOT__axi_ram__DOT___T_6
                                              : vlSelf->SocLite__DOT__axi_ram__DOT__raddr_r) 
                                            >> 2U)) 
                                        + (QData)((IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_1))))),37);
        tracep->chgIData(oldp+3207,((0xffU & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_data
                                     [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])),32);
        tracep->chgBit(oldp+3208,(((((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___T_25) 
                                     & (0x1000000U 
                                        > (0x3fffffffU 
                                           & ((0xffffffU 
                                               & (((IData)(vlSelf->SocLite__DOT__axi_ram__DOT___waddr_T)
                                                    ? 
                                                   vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr
                                                   [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1]
                                                    : vlSelf->SocLite__DOT__axi_ram__DOT__waddr_r) 
                                                  >> 2U)) 
                                              + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_2))))) 
                                    & (0xffU == (((
                                                   ((8U 
                                                     & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                     [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                     ? 0xffU
                                                     : 0U) 
                                                   << 0x18U) 
                                                  | (((4U 
                                                       & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                       [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                       ? 0xffU
                                                       : 0U) 
                                                     << 0x10U)) 
                                                 | ((((2U 
                                                       & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                       [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                       ? 0xffU
                                                       : 0U) 
                                                     << 8U) 
                                                    | ((1U 
                                                        & vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb
                                                        [vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1])
                                                        ? 0xffU
                                                        : 0U))))) 
                                   & (0x1fe40000U == vlSelf->SocLite__DOT__axi_ram__DOT__waddr_r))));
        tracep->chgSData(oldp+3209,((0xffffU & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__led_data)),16);
        tracep->chgCData(oldp+3210,((3U & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__led_rg0_data)),2);
        tracep->chgCData(oldp+3211,((3U & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__led_rg1_data)),2);
        tracep->chgCData(oldp+3212,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_num_csn),8);
        tracep->chgCData(oldp+3213,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_num_a_g),7);
        tracep->chgCData(oldp+3214,(((0U == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                      ? 0U : ((1U == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                               ? 0xeU
                                               : ((2U 
                                                   == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                   ? 0xdU
                                                   : 
                                                  ((3U 
                                                    == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                    ? 0xbU
                                                    : 
                                                   ((4U 
                                                     == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                     ? 7U
                                                     : 0U)))))),4);
        tracep->chgCData(oldp+3215,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask),5);
        tracep->chgCData(oldp+3216,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_lock
                                    [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1]),2);
        tracep->chgCData(oldp+3217,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_lock
                                    [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1]),2);
        tracep->chgIData(oldp+3218,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr0),32);
        tracep->chgIData(oldp+3219,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr1),32);
        tracep->chgIData(oldp+3220,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr2),32);
        tracep->chgIData(oldp+3221,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr3),32);
        tracep->chgIData(oldp+3222,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr4),32);
        tracep->chgIData(oldp+3223,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr5),32);
        tracep->chgIData(oldp+3224,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr6),32);
        tracep->chgIData(oldp+3225,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__cr7),32);
        tracep->chgIData(oldp+3226,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__led_data),32);
        tracep->chgIData(oldp+3227,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__led_rg0_data),32);
        tracep->chgIData(oldp+3228,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__led_rg1_data),32);
        tracep->chgIData(oldp+3229,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__num_data),32);
        tracep->chgIData(oldp+3230,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_key_r),32);
        tracep->chgIData(oldp+3231,(((2U & ((~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_step0_r)) 
                                            << 1U)) 
                                     | (1U & (~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_step1_r))))),32);
        tracep->chgIData(oldp+3232,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__timer_r2),32);
        tracep->chgIData(oldp+3233,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__simu_flag),32);
        tracep->chgIData(oldp+3234,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__io_simu),32);
        tracep->chgCData(oldp+3235,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__virtual_uart_data),8);
        tracep->chgBit(oldp+3236,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__num_monitor));
        tracep->chgBit(oldp+3237,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__busy));
        tracep->chgBit(oldp+3238,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__R_or_W));
        tracep->chgBit(oldp+3239,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__empty)) 
                                   & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_arready))));
        tracep->chgBit(oldp+3240,((((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rvalid_reg) 
                                    & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__full))) 
                                   & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rlast_reg))));
        tracep->chgBit(oldp+3241,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__empty)) 
                                   & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_awready))));
        tracep->chgBit(oldp+3242,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter));
        tracep->chgBit(oldp+3243,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_bvalid_reg) 
                                   & (~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__full)))));
        tracep->chgIData(oldp+3244,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr),32);
        tracep->chgCData(oldp+3245,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_len),8);
        tracep->chgCData(oldp+3246,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_size),3);
        tracep->chgBit(oldp+3247,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x8000U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3248,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x8004U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3249,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x8008U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3250,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x800cU == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3251,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x8010U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3252,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x8014U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3253,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x8018U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3254,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0x801cU == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3255,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__write_timer_begin));
        tracep->chgBit(oldp+3256,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__write_timer_end_r1));
        tracep->chgBit(oldp+3257,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__write_timer_end_r2));
        tracep->chgIData(oldp+3258,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__timer_r1),32);
        tracep->chgBit(oldp+3259,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xe000U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3260,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xffecU == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3261,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xfff8U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3262,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xfffcU == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgCData(oldp+3263,((0xffU & vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_data
                                     [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1])),8);
        tracep->chgBit(oldp+3264,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xfff0U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgIData(oldp+3265,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23),23);
        tracep->chgBit(oldp+3266,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__no_mask));
        tracep->chgBit(oldp+3267,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__short_delay));
        tracep->chgBit(oldp+3268,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xf000U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgSData(oldp+3269,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_key_r),16);
        tracep->chgCData(oldp+3270,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state),3);
        tracep->chgCData(oldp+3271,(((0U == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                      ? ((0x80000U 
                                          & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__key_count)
                                          ? 1U : 0U)
                                      : ((1U == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                          ? 7U : ((2U 
                                                   == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                   ? 7U
                                                   : 
                                                  ((3U 
                                                    == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                    ? 7U
                                                    : 
                                                   ((4U 
                                                     == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                     ? 7U
                                                     : 
                                                    ((7U 
                                                      == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))
                                                      ? 7U
                                                      : 0U))))))),3);
        tracep->chgBit(oldp+3272,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__key_flag));
        tracep->chgIData(oldp+3273,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__key_count),20);
        tracep->chgCData(oldp+3274,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state_count),4);
        tracep->chgBit(oldp+3275,((0U == (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__state))));
        tracep->chgBit(oldp+3276,((1U & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__key_count 
                                         >> 0x13U))));
        tracep->chgBit(oldp+3277,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_step0_r));
        tracep->chgBit(oldp+3278,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_step1_r));
        tracep->chgBit(oldp+3279,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__step0_flag));
        tracep->chgIData(oldp+3280,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__step0_count),20);
        tracep->chgBit(oldp+3281,((1U & (~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_step0_r)))));
        tracep->chgBit(oldp+3282,((1U & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__step0_count 
                                         >> 0x13U))));
        tracep->chgBit(oldp+3283,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__step1_flag));
        tracep->chgIData(oldp+3284,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__step1_count),20);
        tracep->chgBit(oldp+3285,((1U & (~ (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__btn_step1_r)))));
        tracep->chgBit(oldp+3286,((1U & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__step1_count 
                                         >> 0x13U))));
        tracep->chgBit(oldp+3287,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xf004U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3288,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xf008U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgBit(oldp+3289,(((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__w_enter) 
                                   & (0xf010U == (0xffffU 
                                                  & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__buf_addr)))));
        tracep->chgIData(oldp+3290,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__count),20);
        tracep->chgCData(oldp+3291,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__scan_data),4);
        tracep->chgIData(oldp+3292,((0xffU & vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_data
                                     [vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1])),32);
        tracep->chgCData(oldp+3293,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3294,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3295,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__value_1));
        tracep->chgBit(oldp+3296,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__value));
        tracep->chgBit(oldp+3297,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_in_b_valid))));
        tracep->chgCData(oldp+3298,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_resp[0]),2);
        tracep->chgCData(oldp+3299,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ram_resp[1]),2);
        tracep->chgBit(oldp+3300,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3301,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3302,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__empty));
        tracep->chgBit(oldp+3303,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__full));
        tracep->chgBit(oldp+3304,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__do_enq));
        tracep->chgBit(oldp+3305,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_b_deq__DOT__do_deq));
        tracep->chgCData(oldp+3306,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3307,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3308,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__value_1));
        tracep->chgBit(oldp+3309,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__value));
        tracep->chgBit(oldp+3310,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_in_r_valid))));
        tracep->chgIData(oldp+3311,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_data[0]),32);
        tracep->chgIData(oldp+3312,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_data[1]),32);
        tracep->chgCData(oldp+3313,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_resp[0]),2);
        tracep->chgCData(oldp+3314,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_resp[1]),2);
        tracep->chgBit(oldp+3315,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_last[0]));
        tracep->chgBit(oldp+3316,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ram_last[1]));
        tracep->chgBit(oldp+3317,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3318,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3319,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__empty));
        tracep->chgBit(oldp+3320,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__full));
        tracep->chgBit(oldp+3321,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__do_enq));
        tracep->chgBit(oldp+3322,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleIn_0_r_deq__DOT__do_deq));
        tracep->chgCData(oldp+3323,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3324,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3325,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__value_1));
        tracep->chgBit(oldp+3326,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__value));
        tracep->chgBit(oldp+3327,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid))));
        tracep->chgIData(oldp+3328,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr[0]),32);
        tracep->chgIData(oldp+3329,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_addr[1]),32);
        tracep->chgCData(oldp+3330,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_len[0]),8);
        tracep->chgCData(oldp+3331,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_len[1]),8);
        tracep->chgCData(oldp+3332,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_size[0]),3);
        tracep->chgCData(oldp+3333,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_size[1]),3);
        tracep->chgCData(oldp+3334,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_burst[0]),2);
        tracep->chgCData(oldp+3335,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_burst[1]),2);
        tracep->chgBit(oldp+3336,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_lock[0]));
        tracep->chgBit(oldp+3337,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_lock[1]));
        tracep->chgCData(oldp+3338,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_cache[0]),4);
        tracep->chgCData(oldp+3339,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_cache[1]),4);
        tracep->chgCData(oldp+3340,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_prot[0]),3);
        tracep->chgCData(oldp+3341,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ram_prot[1]),3);
        tracep->chgBit(oldp+3342,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3343,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3344,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__empty));
        tracep->chgBit(oldp+3345,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__full));
        tracep->chgBit(oldp+3346,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__do_enq));
        tracep->chgBit(oldp+3347,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_ar_deq__DOT__do_deq));
        tracep->chgCData(oldp+3348,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3349,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3350,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__value_1));
        tracep->chgBit(oldp+3351,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__value));
        tracep->chgBit(oldp+3352,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid))));
        tracep->chgIData(oldp+3353,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr[0]),32);
        tracep->chgIData(oldp+3354,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_addr[1]),32);
        tracep->chgCData(oldp+3355,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_len[0]),8);
        tracep->chgCData(oldp+3356,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_len[1]),8);
        tracep->chgCData(oldp+3357,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_size[0]),3);
        tracep->chgCData(oldp+3358,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_size[1]),3);
        tracep->chgCData(oldp+3359,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_burst[0]),2);
        tracep->chgCData(oldp+3360,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_burst[1]),2);
        tracep->chgBit(oldp+3361,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_lock[0]));
        tracep->chgBit(oldp+3362,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_lock[1]));
        tracep->chgCData(oldp+3363,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_cache[0]),4);
        tracep->chgCData(oldp+3364,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_cache[1]),4);
        tracep->chgCData(oldp+3365,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_prot[0]),3);
        tracep->chgCData(oldp+3366,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ram_prot[1]),3);
        tracep->chgBit(oldp+3367,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3368,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3369,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__empty));
        tracep->chgBit(oldp+3370,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__full));
        tracep->chgBit(oldp+3371,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__do_enq));
        tracep->chgBit(oldp+3372,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_aw_deq__DOT__do_deq));
        tracep->chgIData(oldp+3373,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_data[0]),32);
        tracep->chgIData(oldp+3374,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_data[1]),32);
        tracep->chgBit(oldp+3375,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__value_1));
        tracep->chgBit(oldp+3376,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__value));
        tracep->chgBit(oldp+3377,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid))));
        tracep->chgCData(oldp+3378,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_strb[0]),4);
        tracep->chgCData(oldp+3379,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_strb[1]),4);
        tracep->chgBit(oldp+3380,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_last[0]));
        tracep->chgBit(oldp+3381,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ram_last[1]));
        tracep->chgBit(oldp+3382,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3383,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3384,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__empty));
        tracep->chgBit(oldp+3385,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__full));
        tracep->chgBit(oldp+3386,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__do_enq));
        tracep->chgBit(oldp+3387,(vlSymsp->TOP__SocLite__DOT__axi4buf.__PVT__bundleOut_0_w_deq__DOT__do_deq));
        tracep->chgCData(oldp+3388,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3389,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3390,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value_1));
        tracep->chgBit(oldp+3391,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__value));
        tracep->chgBit(oldp+3392,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_b_valid_r))));
        tracep->chgCData(oldp+3393,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_resp[0]),2);
        tracep->chgCData(oldp+3394,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ram_resp[1]),2);
        tracep->chgBit(oldp+3395,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3396,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3397,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__empty));
        tracep->chgBit(oldp+3398,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__full));
        tracep->chgBit(oldp+3399,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__do_enq));
        tracep->chgBit(oldp+3400,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_b_deq__DOT__do_deq));
        tracep->chgCData(oldp+3401,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3402,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3403,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value_1));
        tracep->chgBit(oldp+3404,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__value));
        tracep->chgBit(oldp+3405,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__bundleIn_0_r_valid_r))));
        tracep->chgIData(oldp+3406,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_data[0]),32);
        tracep->chgIData(oldp+3407,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_data[1]),32);
        tracep->chgCData(oldp+3408,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_resp[0]),2);
        tracep->chgCData(oldp+3409,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_resp[1]),2);
        tracep->chgBit(oldp+3410,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_last[0]));
        tracep->chgBit(oldp+3411,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ram_last[1]));
        tracep->chgBit(oldp+3412,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3413,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3414,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__empty));
        tracep->chgBit(oldp+3415,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__full));
        tracep->chgBit(oldp+3416,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__do_enq));
        tracep->chgBit(oldp+3417,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleIn_0_r_deq__DOT__do_deq));
        tracep->chgCData(oldp+3418,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3419,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3420,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__value_1));
        tracep->chgBit(oldp+3421,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__value));
        tracep->chgBit(oldp+3422,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_out_0_ar_valid))));
        tracep->chgIData(oldp+3423,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_addr[0]),32);
        tracep->chgIData(oldp+3424,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_addr[1]),32);
        tracep->chgCData(oldp+3425,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_len[0]),8);
        tracep->chgCData(oldp+3426,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_len[1]),8);
        tracep->chgCData(oldp+3427,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_size[0]),3);
        tracep->chgCData(oldp+3428,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_size[1]),3);
        tracep->chgCData(oldp+3429,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_burst[0]),2);
        tracep->chgCData(oldp+3430,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_burst[1]),2);
        tracep->chgBit(oldp+3431,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_lock[0]));
        tracep->chgBit(oldp+3432,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_lock[1]));
        tracep->chgCData(oldp+3433,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_cache[0]),4);
        tracep->chgCData(oldp+3434,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_cache[1]),4);
        tracep->chgCData(oldp+3435,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_prot[0]),3);
        tracep->chgCData(oldp+3436,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ram_prot[1]),3);
        tracep->chgBit(oldp+3437,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3438,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3439,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__empty));
        tracep->chgBit(oldp+3440,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__full));
        tracep->chgBit(oldp+3441,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__do_enq));
        tracep->chgBit(oldp+3442,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_ar_deq__DOT__do_deq));
        tracep->chgCData(oldp+3443,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3444,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3445,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value_1));
        tracep->chgBit(oldp+3446,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__value));
        tracep->chgBit(oldp+3447,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_out_0_aw_valid))));
        tracep->chgIData(oldp+3448,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr[0]),32);
        tracep->chgIData(oldp+3449,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_addr[1]),32);
        tracep->chgCData(oldp+3450,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_len[0]),8);
        tracep->chgCData(oldp+3451,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_len[1]),8);
        tracep->chgCData(oldp+3452,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_size[0]),3);
        tracep->chgCData(oldp+3453,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_size[1]),3);
        tracep->chgCData(oldp+3454,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_burst[0]),2);
        tracep->chgCData(oldp+3455,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_burst[1]),2);
        tracep->chgBit(oldp+3456,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_lock[0]));
        tracep->chgBit(oldp+3457,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_lock[1]));
        tracep->chgCData(oldp+3458,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_cache[0]),4);
        tracep->chgCData(oldp+3459,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_cache[1]),4);
        tracep->chgCData(oldp+3460,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_prot[0]),3);
        tracep->chgCData(oldp+3461,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ram_prot[1]),3);
        tracep->chgBit(oldp+3462,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3463,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3464,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__empty));
        tracep->chgBit(oldp+3465,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__full));
        tracep->chgBit(oldp+3466,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__do_enq));
        tracep->chgBit(oldp+3467,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_aw_deq__DOT__do_deq));
        tracep->chgIData(oldp+3468,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_data[0]),32);
        tracep->chgIData(oldp+3469,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_data[1]),32);
        tracep->chgBit(oldp+3470,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value_1));
        tracep->chgBit(oldp+3471,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__value));
        tracep->chgBit(oldp+3472,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_out_0_w_valid))));
        tracep->chgCData(oldp+3473,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb[0]),4);
        tracep->chgCData(oldp+3474,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_strb[1]),4);
        tracep->chgBit(oldp+3475,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_last[0]));
        tracep->chgBit(oldp+3476,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ram_last[1]));
        tracep->chgBit(oldp+3477,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3478,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3479,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__empty));
        tracep->chgBit(oldp+3480,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__full));
        tracep->chgBit(oldp+3481,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__do_enq));
        tracep->chgBit(oldp+3482,(vlSymsp->TOP__SocLite__DOT__axi4buf_1.__PVT__bundleOut_0_w_deq__DOT__do_deq));
        tracep->chgCData(oldp+3483,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3484,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3485,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value_1));
        tracep->chgBit(oldp+3486,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__value));
        tracep->chgBit(oldp+3487,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_bvalid_reg))));
        tracep->chgCData(oldp+3488,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_resp[0]),2);
        tracep->chgCData(oldp+3489,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ram_resp[1]),2);
        tracep->chgBit(oldp+3490,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3491,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3492,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__empty));
        tracep->chgBit(oldp+3493,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__full));
        tracep->chgBit(oldp+3494,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__do_enq));
        tracep->chgBit(oldp+3495,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_b_deq__DOT__do_deq));
        tracep->chgCData(oldp+3496,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3497,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3498,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value_1));
        tracep->chgBit(oldp+3499,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__value));
        tracep->chgBit(oldp+3500,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__conf_rvalid_reg))));
        tracep->chgIData(oldp+3501,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_data[0]),32);
        tracep->chgIData(oldp+3502,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_data[1]),32);
        tracep->chgCData(oldp+3503,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_resp[0]),2);
        tracep->chgCData(oldp+3504,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_resp[1]),2);
        tracep->chgBit(oldp+3505,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_last[0]));
        tracep->chgBit(oldp+3506,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ram_last[1]));
        tracep->chgBit(oldp+3507,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3508,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3509,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__empty));
        tracep->chgBit(oldp+3510,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__full));
        tracep->chgBit(oldp+3511,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__do_enq));
        tracep->chgBit(oldp+3512,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleIn_0_r_deq__DOT__do_deq));
        tracep->chgCData(oldp+3513,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3514,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3515,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value_1));
        tracep->chgBit(oldp+3516,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__value));
        tracep->chgBit(oldp+3517,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_out_1_ar_valid))));
        tracep->chgIData(oldp+3518,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_addr[0]),32);
        tracep->chgIData(oldp+3519,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_addr[1]),32);
        tracep->chgCData(oldp+3520,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_len[0]),8);
        tracep->chgCData(oldp+3521,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_len[1]),8);
        tracep->chgCData(oldp+3522,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_size[0]),3);
        tracep->chgCData(oldp+3523,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_size[1]),3);
        tracep->chgCData(oldp+3524,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_burst[0]),2);
        tracep->chgCData(oldp+3525,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_burst[1]),2);
        tracep->chgBit(oldp+3526,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_lock[0]));
        tracep->chgBit(oldp+3527,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_lock[1]));
        tracep->chgCData(oldp+3528,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_cache[0]),4);
        tracep->chgCData(oldp+3529,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_cache[1]),4);
        tracep->chgCData(oldp+3530,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_prot[0]),3);
        tracep->chgCData(oldp+3531,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ram_prot[1]),3);
        tracep->chgBit(oldp+3532,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3533,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3534,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__empty));
        tracep->chgBit(oldp+3535,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__full));
        tracep->chgBit(oldp+3536,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__do_enq));
        tracep->chgBit(oldp+3537,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_ar_deq__DOT__do_deq));
        tracep->chgCData(oldp+3538,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_id[0]),4);
        tracep->chgCData(oldp+3539,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_id[1]),4);
        tracep->chgBit(oldp+3540,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value_1));
        tracep->chgBit(oldp+3541,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__value));
        tracep->chgBit(oldp+3542,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_out_1_aw_valid))));
        tracep->chgIData(oldp+3543,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_addr[0]),32);
        tracep->chgIData(oldp+3544,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_addr[1]),32);
        tracep->chgCData(oldp+3545,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_len[0]),8);
        tracep->chgCData(oldp+3546,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_len[1]),8);
        tracep->chgCData(oldp+3547,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_size[0]),3);
        tracep->chgCData(oldp+3548,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_size[1]),3);
        tracep->chgCData(oldp+3549,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_burst[0]),2);
        tracep->chgCData(oldp+3550,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_burst[1]),2);
        tracep->chgBit(oldp+3551,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_lock[0]));
        tracep->chgBit(oldp+3552,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_lock[1]));
        tracep->chgCData(oldp+3553,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_cache[0]),4);
        tracep->chgCData(oldp+3554,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_cache[1]),4);
        tracep->chgCData(oldp+3555,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_prot[0]),3);
        tracep->chgCData(oldp+3556,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ram_prot[1]),3);
        tracep->chgBit(oldp+3557,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3558,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3559,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__empty));
        tracep->chgBit(oldp+3560,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__full));
        tracep->chgBit(oldp+3561,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__do_enq));
        tracep->chgBit(oldp+3562,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_aw_deq__DOT__do_deq));
        tracep->chgIData(oldp+3563,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_data[0]),32);
        tracep->chgIData(oldp+3564,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_data[1]),32);
        tracep->chgBit(oldp+3565,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value_1));
        tracep->chgBit(oldp+3566,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__value));
        tracep->chgBit(oldp+3567,(((~ (IData)(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__full)) 
                                   & (IData)(vlSelf->SocLite__DOT__axi4xbar_auto_out_1_w_valid))));
        tracep->chgCData(oldp+3568,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_strb[0]),4);
        tracep->chgCData(oldp+3569,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_strb[1]),4);
        tracep->chgBit(oldp+3570,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_last[0]));
        tracep->chgBit(oldp+3571,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ram_last[1]));
        tracep->chgBit(oldp+3572,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__maybe_full));
        tracep->chgBit(oldp+3573,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__ptr_match));
        tracep->chgBit(oldp+3574,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__empty));
        tracep->chgBit(oldp+3575,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__full));
        tracep->chgBit(oldp+3576,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__do_enq));
        tracep->chgBit(oldp+3577,(vlSymsp->TOP__SocLite__DOT__axi4buf_2.__PVT__bundleOut_0_w_deq__DOT__do_deq));
        tracep->chgBit(oldp+3578,((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we))));
        tracep->chgIData(oldp+3579,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg),21);
        tracep->chgBit(oldp+3580,((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we) 
                                         >> 1U))));
        tracep->chgIData(oldp+3581,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg),21);
        tracep->chgBit(oldp+3582,((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we))));
        tracep->chgIData(oldp+3583,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg),21);
        tracep->chgBit(oldp+3584,((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we) 
                                         >> 1U))));
        tracep->chgIData(oldp+3585,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag.__PVT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_a__DOT__douta_reg),21);
        tracep->chgBit(oldp+3586,((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we))));
        tracep->chgIData(oldp+3587,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                                    [0U]),32);
        tracep->chgIData(oldp+3588,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3589,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3590,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3591,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgIData(oldp+3592,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                                    [1U]),32);
        tracep->chgIData(oldp+3593,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3594,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3595,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3596,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgIData(oldp+3597,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                                    [2U]),32);
        tracep->chgIData(oldp+3598,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3599,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3600,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3601,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgIData(oldp+3602,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata
                                    [3U]),32);
        tracep->chgIData(oldp+3603,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3604,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3605,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3606,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3607,((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we) 
                                         >> 1U))));
        tracep->chgIData(oldp+3608,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3609,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3610,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3611,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgIData(oldp+3612,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3613,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3614,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3615,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgIData(oldp+3616,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3617,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3618,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3619,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgIData(oldp+3620,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3621,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__valid));
        tracep->chgIData(oldp+3622,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3623,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3624,((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                   [0U])));
        tracep->chgIData(oldp+3625,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                                    [0U]),32);
        tracep->chgIData(oldp+3626,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3627,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3628,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3629,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3630,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                         [0U] >> 1U))));
        tracep->chgIData(oldp+3631,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                                    [1U]),32);
        tracep->chgIData(oldp+3632,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3633,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3634,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3635,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3636,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                         [0U] >> 2U))));
        tracep->chgIData(oldp+3637,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                                    [2U]),32);
        tracep->chgIData(oldp+3638,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3639,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3640,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3641,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3642,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                         [0U] >> 3U))));
        tracep->chgIData(oldp+3643,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata
                                    [3U]),32);
        tracep->chgIData(oldp+3644,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3645,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3646,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3647,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3648,((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                   [1U])));
        tracep->chgIData(oldp+3649,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3650,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3651,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3652,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3653,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                         [1U] >> 1U))));
        tracep->chgIData(oldp+3654,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3655,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3656,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3657,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3658,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                         [1U] >> 2U))));
        tracep->chgIData(oldp+3659,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3660,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3661,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3662,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
        tracep->chgBit(oldp+3663,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                                         [1U] >> 3U))));
        tracep->chgIData(oldp+3664,(((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__valid)
                                      ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
                                      : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg)),32);
        tracep->chgBit(oldp+3665,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__valid));
        tracep->chgIData(oldp+3666,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__doutb_bypass),32);
        tracep->chgIData(oldp+3667,(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg),32);
    }
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        tracep->chgIData(oldp+3668,((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U] 
                                     + (((- (IData)(
                                                    (1U 
                                                     & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                                        >> 0xfU)))) 
                                         << 0x12U) 
                                        | (0x3fffcU 
                                           & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__fs_to_ds_bus_r[1U] 
                                              << 2U))))),32);
        tracep->chgIData(oldp+3669,((((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus 
                                               >> 0x22U)) 
                                      << 0x1cU) | (0xffffffcU 
                                                   & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata 
                                                      << 2U)))),32);
        tracep->chgBit(oldp+3670,((1U & ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                  >> 5U)) 
                                         & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush))))));
        tracep->chgIData(oldp+3671,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush)
                                      ? ((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                  >> 6U)) 
                                         - (IData)(8U))
                                      : (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                 >> 6U)))),32);
        tracep->chgIData(oldp+3672,(((1U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush) 
                                            | (~ (IData)(
                                                         (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__ps_to_fs_bus_r 
                                                          >> 0x26U)))))
                                      ? 0U : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_rdata)),32);
        tracep->chgCData(oldp+3673,((0xffU & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_is_branch)
                                               ? (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_es_pc 
                                                  >> 2U)
                                               : (IData)(
                                                         (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus 
                                                          >> 8U))))),8);
        tracep->chgCData(oldp+3674,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ADEL_ex)
                                      ? 9U : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_ex)
                                               ? ((
                                                   (7U 
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
                                               : 0x1fU))),5);
        tracep->chgIData(oldp+3675,(((0x1000000U & 
                                      vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U])
                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EPC
                                      : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__flush)
                                          ? ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_refetch)
                                              ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[0U]
                                              : (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_Bev)
                                                   ? 0xbfc00200U
                                                   : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EBase) 
                                                 + 
                                                 ((((2U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)) 
                                                    | (4U 
                                                       == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype))) 
                                                   | (6U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_Exctype)))
                                                   ? 0U
                                                   : 0x180U)))
                                          : ((IData)(
                                                     ((0xcU 
                                                       == 
                                                       (0xcU 
                                                        & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])) 
                                                      & (~ 
                                                         vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])))
                                              ? ((2U 
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
                                                   + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc))))))),32);
        tracep->chgIData(oldp+3676,(((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus))
                                      ? (IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus 
                                                 >> 1U))
                                      : ((IData)(4U) 
                                         + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc))),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        tracep->chgQData(oldp+3677,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus),39);
        tracep->chgWData(oldp+3679,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus),71);
        tracep->chgWData(oldp+3682,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus),345);
        tracep->chgWData(oldp+3693,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus),68);
        tracep->chgQData(oldp+3696,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus),33);
        tracep->chgWData(oldp+3698,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BResult),68);
        tracep->chgBit(oldp+3701,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush));
        tracep->chgBit(oldp+3702,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid));
        tracep->chgIData(oldp+3703,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[0U]),32);
        tracep->chgIData(oldp+3704,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ds_to_es_bus[0U]),32);
        tracep->chgIData(oldp+3705,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_bus[1U]),32);
        tracep->chgCData(oldp+3706,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__hit),2);
        tracep->chgBit(oldp+3707,((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__hit))));
        tracep->chgBit(oldp+3708,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit_wr));
        tracep->chgBit(oldp+3709,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_read_en));
        tracep->chgBit(oldp+3710,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_BPU_right));
        tracep->chgIData(oldp+3711,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__es_br_target),32);
        tracep->chgIData(oldp+3712,((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus 
                                             >> 6U))),32);
        tracep->chgIData(oldp+3713,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_ret_addr),32);
        tracep->chgCData(oldp+3714,((0xffU & (IData)(
                                                     (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ps_to_fs_bus 
                                                      >> 8U)))),8);
        tracep->chgBit(oldp+3715,(((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_valid) 
                                   & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_flush)))));
        tracep->chgBit(oldp+3716,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ADEL_ex));
        tracep->chgBit(oldp+3717,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ps_ex));
        tracep->chgIData(oldp+3718,(((2U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])
                                      ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[1U]
                                      : ((IData)(8U) 
                                         + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[0U]))),32);
        tracep->chgBit(oldp+3719,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U] 
                                         >> 1U))));
        tracep->chgIData(oldp+3720,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[1U]),32);
        tracep->chgBit(oldp+3721,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U] 
                                         >> 3U))));
        tracep->chgBit(oldp+3722,((1U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U] 
                                         >> 2U))));
        tracep->chgBit(oldp+3723,((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[2U])));
        tracep->chgIData(oldp+3724,(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__br_bus[0U]),32);
        tracep->chgIData(oldp+3725,((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus 
                                             >> 1U))),32);
        tracep->chgBit(oldp+3726,((1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ps_bus))));
    }
    tracep->chgBit(oldp+3727,(vlSelf->clock));
    tracep->chgBit(oldp+3728,(vlSelf->reset));
    tracep->chgIData(oldp+3729,(vlSelf->debug_wb_pc),32);
    tracep->chgBit(oldp+3730,(vlSelf->debug_wb_rf_wen));
    tracep->chgCData(oldp+3731,(vlSelf->debug_wb_rf_wnum),5);
    tracep->chgIData(oldp+3732,(vlSelf->debug_wb_rf_wdata),32);
    tracep->chgBit(oldp+3733,((1U & (~ (IData)(vlSelf->reset)))));
    tracep->chgBit(oldp+3734,(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__open_trace));
}

void VSocLite___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root__trace_cleanup\n"); );
    // Init
    VSocLite___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VSocLite___024root*>(voidSelf);
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
