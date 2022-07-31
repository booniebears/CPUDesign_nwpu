// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite___024root.h"

extern const VlUnpacked<CData/*1:0*/, 8> VSocLite__ConstPool__TABLE_hbbd4bbd8_0;
extern const VlUnpacked<CData/*1:0*/, 64> VSocLite__ConstPool__TABLE_h65a6d3e2_0;
extern const VlUnpacked<CData/*1:0*/, 32> VSocLite__ConstPool__TABLE_h85ee62d1_0;
extern const VlUnpacked<CData/*1:0*/, 8> VSocLite__ConstPool__TABLE_h1938ab40_0;
extern const VlUnpacked<CData/*2:0*/, 64> VSocLite__ConstPool__TABLE_h724c8c88_0;

VL_ATTR_COLD void VSocLite___024root___settle__TOP__0(VSocLite___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VSocLite__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VSocLite___024root___settle__TOP__0\n"); );
    // Init
    CData/*5:0*/ __Vtableidx6;
    CData/*4:0*/ __Vtableidx7;
    CData/*2:0*/ __Vtableidx8;
    CData/*5:0*/ __Vtableidx9;
    CData/*2:0*/ __Vtableidx10;
    // Body
    vlSelf->debug_wb_pc = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[0U];
    vlSelf->debug_wb_rf_wnum = (0x1fU & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U]);
    vlSelf->debug_wb_rf_wdata = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__Random_next 
        = (0xfU & ((IData)(1U) + (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Random_Random)));
    __Vtableidx8 = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_br_taken) 
                     << 2U) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_old_Count));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_new_Count 
        = VSocLite__ConstPool__TABLE_hbbd4bbd8_0[__Vtableidx8];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__rf_we 
        = (IData)(((0x20U == (0x60U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U])) 
                   & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_valid)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_full 
        = (((IData)(1U) + (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__write_ptr)) 
           == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__read_ptr));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_empty 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__write_ptr) 
           == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__read_ptr));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__BPU_to_ds_bus 
        = (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_is_taken_reg)) 
            << 0x23U) | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_Count_reg)) 
                          << 0x21U) | (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_valid_reg)) 
                                        << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_ret_addr_reg)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__0__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__1__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__2__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__3__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__4__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__5__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__6__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__7__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__8__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__9__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__10__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__11__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__12__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__13__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__14__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__15__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x10U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__16__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x11U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__17__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x12U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__18__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x13U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__19__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x14U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__20__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x15U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__21__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x16U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__22__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x17U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__23__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x18U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__24__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x19U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__25__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x1aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__26__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x1bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__27__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x1cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__28__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x1dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__29__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x1eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__30__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x1fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__31__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x20U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__32__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x21U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__33__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x22U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__34__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x23U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__35__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x24U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__36__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x25U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__37__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x26U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__38__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x27U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__39__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x28U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__40__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x29U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__41__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x2aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__42__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x2bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__43__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x2cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__44__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x2dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__45__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x2eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__46__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x2fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__47__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x30U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__48__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x31U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__49__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x32U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__50__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x33U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__51__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x34U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__52__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x35U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__53__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x36U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__54__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x37U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__55__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x38U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__56__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x39U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__57__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x3aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__58__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x3bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__59__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x3cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__60__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x3dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__61__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x3eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__62__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x3fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__63__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x40U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__64__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x41U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__65__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x42U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__66__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x43U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__67__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x44U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__68__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x45U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__69__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x46U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__70__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x47U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__71__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x48U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__72__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x49U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__73__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x4aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__74__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x4bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__75__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x4cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__76__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x4dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__77__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x4eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__78__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x4fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__79__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x50U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__80__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x51U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__81__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x52U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__82__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x53U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__83__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x54U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__84__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x55U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__85__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x56U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__86__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x57U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__87__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x58U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__88__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x59U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__89__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x5aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__90__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x5bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__91__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x5cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__92__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x5dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__93__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x5eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__94__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x5fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__95__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x60U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__96__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x61U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__97__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x62U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__98__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x63U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__99__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x64U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__100__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x65U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__101__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x66U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__102__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x67U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__103__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x68U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__104__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x69U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__105__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x6aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__106__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x6bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__107__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x6cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__108__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x6dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__109__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x6eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__110__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x6fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__111__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x70U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__112__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x71U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__113__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x72U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__114__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x73U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__115__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x74U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__116__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x75U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__117__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x76U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__118__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x77U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__119__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x78U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__120__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x79U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__121__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x7aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__122__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x7bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__123__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x7cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__124__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x7dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__125__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x7eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__126__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x7fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__127__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x80U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__128__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x81U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__129__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x82U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__130__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x83U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__131__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x84U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__132__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x85U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__133__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x86U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__134__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x87U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__135__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x88U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__136__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x89U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__137__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x8aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__138__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x8bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__139__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x8cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__140__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x8dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__141__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x8eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__142__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x8fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__143__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x90U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__144__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x91U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__145__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x92U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__146__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x93U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__147__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x94U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__148__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x95U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__149__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x96U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__150__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x97U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__151__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x98U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__152__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x99U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__153__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x9aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__154__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x9bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__155__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x9cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__156__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x9dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__157__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x9eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__158__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0x9fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__159__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__160__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__161__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__162__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__163__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__164__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__165__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__166__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__167__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__168__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xa9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__169__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xaaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__170__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xabU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__171__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xacU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__172__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xadU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__173__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xaeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__174__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xafU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__175__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__176__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__177__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__178__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__179__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__180__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__181__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__182__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__183__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__184__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xb9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__185__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__186__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__187__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__188__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__189__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__190__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xbfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__191__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__192__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__193__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__194__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__195__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__196__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__197__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__198__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__199__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__200__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xc9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__201__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xcaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__202__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xcbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__203__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xccU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__204__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xcdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__205__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xceU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__206__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xcfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__207__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__208__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__209__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__210__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__211__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__212__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__213__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__214__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__215__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__216__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xd9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__217__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xdaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__218__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xdbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__219__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xdcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__220__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xddU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__221__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xdeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__222__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xdfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__223__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__224__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__225__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__226__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__227__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__228__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__229__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__230__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__231__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__232__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xe9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__233__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xeaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__234__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xebU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__235__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xecU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__236__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xedU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__237__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xeeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__238__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xefU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__239__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__240__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__241__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__242__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__243__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__244__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__245__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__246__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__247__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__248__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xf9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__249__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xfaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__250__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xfbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__251__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xfcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__252__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xfdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__253__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xfeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__254__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru[0xffU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__255__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__WB_dest 
        = (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U] 
                    & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_valid)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer
        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__read_ptr][0U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer
        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__read_ptr][1U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellout__U_FIFO__dout[2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__fifo_buffer
        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__U_FIFO__DOT__read_ptr][2U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__0__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__1__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__2__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__3__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__4__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__5__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__6__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__7__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__8__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__9__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__10__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__11__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__12__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__13__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__14__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__15__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x10U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__16__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x11U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__17__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x12U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__18__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x13U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__19__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x14U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__20__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x15U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__21__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x16U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__22__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x17U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__23__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x18U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__24__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x19U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__25__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x1aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__26__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x1bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__27__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x1cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__28__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x1dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__29__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x1eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__30__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x1fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__31__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x20U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__32__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x21U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__33__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x22U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__34__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x23U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__35__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x24U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__36__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x25U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__37__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x26U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__38__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x27U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__39__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x28U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__40__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x29U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__41__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x2aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__42__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x2bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__43__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x2cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__44__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x2dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__45__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x2eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__46__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x2fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__47__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x30U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__48__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x31U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__49__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x32U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__50__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x33U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__51__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x34U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__52__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x35U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__53__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x36U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__54__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x37U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__55__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x38U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__56__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x39U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__57__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x3aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__58__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x3bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__59__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x3cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__60__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x3dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__61__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x3eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__62__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x3fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__63__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x40U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__64__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x41U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__65__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x42U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__66__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x43U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__67__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x44U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__68__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x45U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__69__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x46U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__70__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x47U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__71__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x48U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__72__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x49U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__73__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x4aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__74__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x4bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__75__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x4cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__76__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x4dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__77__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x4eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__78__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x4fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__79__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x50U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__80__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x51U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__81__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x52U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__82__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x53U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__83__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x54U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__84__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x55U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__85__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x56U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__86__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x57U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__87__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x58U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__88__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x59U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__89__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x5aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__90__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x5bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__91__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x5cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__92__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x5dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__93__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x5eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__94__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x5fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__95__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x60U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__96__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x61U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__97__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x62U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__98__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x63U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__99__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x64U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__100__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x65U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__101__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x66U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__102__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x67U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__103__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x68U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__104__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x69U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__105__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x6aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__106__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x6bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__107__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x6cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__108__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x6dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__109__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x6eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__110__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x6fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__111__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x70U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__112__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x71U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__113__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x72U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__114__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x73U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__115__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x74U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__116__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x75U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__117__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x76U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__118__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x77U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__119__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x78U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__120__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x79U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__121__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x7aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__122__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x7bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__123__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x7cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__124__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x7dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__125__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x7eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__126__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x7fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__127__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x80U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__128__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x81U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__129__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x82U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__130__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x83U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__131__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x84U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__132__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x85U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__133__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x86U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__134__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x87U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__135__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x88U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__136__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x89U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__137__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x8aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__138__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x8bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__139__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x8cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__140__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x8dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__141__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x8eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__142__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x8fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__143__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x90U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__144__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x91U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__145__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x92U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__146__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x93U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__147__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x94U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__148__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x95U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__149__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x96U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__150__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x97U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__151__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x98U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__152__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x99U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__153__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x9aU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__154__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x9bU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__155__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x9cU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__156__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x9dU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__157__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x9eU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__158__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0x9fU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__159__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__160__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__161__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__162__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__163__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__164__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__165__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__166__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__167__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__168__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xa9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__169__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xaaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__170__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xabU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__171__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xacU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__172__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xadU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__173__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xaeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__174__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xafU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__175__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__176__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__177__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__178__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__179__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__180__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__181__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__182__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__183__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__184__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xb9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__185__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__186__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__187__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__188__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__189__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__190__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xbfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__191__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__192__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__193__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__194__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__195__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__196__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__197__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__198__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__199__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__200__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xc9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__201__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xcaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__202__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xcbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__203__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xccU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__204__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xcdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__205__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xceU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__206__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xcfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__207__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__208__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__209__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__210__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__211__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__212__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__213__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__214__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__215__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__216__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xd9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__217__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xdaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__218__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xdbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__219__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xdcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__220__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xddU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__221__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xdeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__222__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xdfU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__223__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__224__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__225__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__226__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__227__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__228__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__229__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__230__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__231__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__232__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xe9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__233__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xeaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__234__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xebU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__235__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xecU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__236__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xedU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__237__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xeeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__238__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xefU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__239__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__240__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__241__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__242__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__243__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf4U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__244__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf5U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__245__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf6U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__246__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf7U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__247__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf8U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__248__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xf9U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__249__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xfaU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__250__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xfbU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__251__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xfcU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__252__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xfdU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__253__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xfeU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__254__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[0xffU] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__255__KET____DOT__U_PLRU__DOT__state;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_cache_hit)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__maddu_result 
        = ((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI)) 
             << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO))) 
           + vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__msubu_result 
        = ((((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__HI)) 
             << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__LO))) 
           - vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__multi_result);
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask 
        = ((0x1eU & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask)) 
           | (1U & (((IData)((0x100400U == (0x100400U 
                                            & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23))) 
                     & ((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__short_delay) 
                        | ((vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                            >> 0xbU) ^ (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                        >> 5U)))) | (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__no_mask))));
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask 
        = ((0x1dU & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask)) 
           | (2U & ((((IData)((0x20200U == (0x20200U 
                                            & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23))) 
                      << 1U) & (((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__short_delay) 
                                 << 1U) | ((0x1ffffeU 
                                            & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                               >> 0xbU)) 
                                           ^ (0x1ffffffeU 
                                              & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                                 >> 3U))))) 
                    | ((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__no_mask) 
                       << 1U))));
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask 
        = ((0x1bU & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask)) 
           | (4U & ((((0x3fffffcU & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                     >> 6U)) ^ (0xffcU 
                                                & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                                   >> 0x14U))) 
                     & (((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__short_delay) 
                         << 2U) | ((0x1ffffcU & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                                 >> 0xbU)) 
                                   ^ (0x7ffffffcU & 
                                      (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                       >> 1U))))) | 
                    ((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__no_mask) 
                     << 2U))));
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask 
        = ((0x17U & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask)) 
           | (8U & ((((IData)((0x80080U == (0x80080U 
                                            & vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23))) 
                      << 3U) & (((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__short_delay) 
                                 << 3U) | ((0x1ffff8U 
                                            & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                               >> 0xbU)) 
                                           ^ (0xfffffff8U 
                                              & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                                 << 1U))))) 
                    | ((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__no_mask) 
                       << 3U))));
    vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask 
        = ((0xfU & (IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg_ram_random_mask)) 
           | (0x10U & ((((0x3ffffff0U & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                         >> 2U)) ^ 
                         (0xffff0U & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                      >> 0xcU))) & 
                        (((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__short_delay) 
                          << 4U) | ((0x1ffff0U & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                                  >> 0xbU)) 
                                    ^ (0xfffffff0U 
                                       & (vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__pseudo_random_23 
                                          << 3U))))) 
                       | ((IData)(vlSelf->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__no_mask) 
                          << 4U))));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_Hit 
        = (((0xcU > (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                     >> 0x1cU)) & (7U < (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                         >> 0x1cU))) 
           | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                >> 0xdU) == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_vpn2) 
              & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_valid)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__has_int 
        = (((0U != ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_IP) 
                    & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IM))) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IE)) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_EXL)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv__DOT__start 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalid) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_dividend_tvalid));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__u_mydiv_unsigned__DOT__start 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_divisor_tvalidu) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__exe_stage__DOT__u_alu__DOT__s_axis_dividend_tvalidu));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB_PFN 
        = (((0xaU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                      >> 0x1cU)) | (0xbU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                             >> 0x1cU)))
            ? (0x1ffffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                           >> 0xcU)) : (((8U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                 >> 0x1cU)) 
                                         | (9U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                                   >> 0x1cU)))
                                         ? (0x7ffffU 
                                            & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                                               >> 0xcU))
                                         : ((0x1000U 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc)
                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_pfn1
                                             : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__ITLB__DOT__ITLB_Buffer_pfn0)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_index 
        = (0xffU & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ICacheInst_delayed)
                     ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__pre_if_stage__DOT__cache_index_delayed)
                     : (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__prefs_pc 
                        >> 4U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_wbit 
        = (1U & (~ ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)) 
                    | (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_wdata 
        = ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))
            ? 0U : (0x1fffffU & (1U | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag 
                                       << 1U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_index 
        = ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))
            ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)
            : (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_index));
    __Vtableidx6 = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_cache_hit) 
                     << 5U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
                                << 4U) | (((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
                                           << 3U) | 
                                          (((6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
                                            << 2U) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_nextstate 
        = VSocLite__ConstPool__TABLE_h65a6d3e2_0[__Vtableidx6];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_valid 
        = ((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)) 
           | (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_valid 
        = ((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state)) 
           | (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)));
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy) {
        if ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid 
                = (1U & (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)));
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid 
                = (1U & (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)));
        } else if ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid 
                = (1U & (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state)));
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid 
                = (1U & ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state)) 
                           | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))) 
                          | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))) 
                         | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_WR_state))));
        } else if ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid 
                = (1U & 0U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid 
                = (1U & 0U);
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid 
                = (1U & 0U);
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid 
                = (1U & 0U);
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_awvalid = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_wvalid = 0U;
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__0__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__1__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__2__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__3__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__4__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__5__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__6__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__7__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__8__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__9__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__10__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__11__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__12__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__13__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__14__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__15__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__16__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x10U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__17__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x11U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__18__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x12U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__19__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x13U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__20__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x14U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__21__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x15U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__22__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x16U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__23__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x17U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__24__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x18U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__25__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x19U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__26__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x1aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__27__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x1bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__28__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x1cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__29__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x1dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__30__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x1eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__31__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x1fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__32__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x20U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__33__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x21U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__34__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x22U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__35__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x23U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__36__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x24U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__37__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x25U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__38__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x26U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__39__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x27U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__40__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x28U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__41__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x29U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__42__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x2aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__43__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x2bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__44__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x2cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__45__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x2dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__46__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x2eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__47__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x2fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__48__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x30U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__49__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x31U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__50__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x32U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__51__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x33U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__52__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x34U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__53__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x35U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__54__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x36U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__55__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x37U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__56__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x38U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__57__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x39U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__58__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x3aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__59__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x3bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__60__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x3cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__61__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x3dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__62__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x3eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__63__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x3fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__64__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x40U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__65__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x41U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__66__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x42U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__67__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x43U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__68__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x44U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__69__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x45U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__70__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x46U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__71__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x47U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__72__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x48U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__73__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x49U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__74__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x4aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__75__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x4bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__76__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x4cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__77__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x4dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__78__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x4eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__79__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x4fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__80__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x50U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__81__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x51U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__82__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x52U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__83__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x53U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__84__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x54U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__85__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x55U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__86__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x56U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__87__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x57U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__88__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x58U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__89__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x59U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__90__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x5aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__91__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x5bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__92__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x5cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__93__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x5dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__94__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x5eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__95__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x5fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__96__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x60U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__97__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x61U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__98__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x62U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__99__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x63U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__100__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x64U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__101__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x65U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__102__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x66U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__103__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x67U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__104__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x68U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__105__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x69U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__106__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x6aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__107__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x6bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__108__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x6cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__109__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x6dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__110__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x6eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__111__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x6fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__112__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x70U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__113__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x71U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__114__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x72U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__115__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x73U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__116__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x74U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__117__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x75U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__118__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x76U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__119__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x77U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__120__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x78U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__121__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x79U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__122__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x7aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__123__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x7bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__124__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x7cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__125__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x7dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__126__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x7eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__127__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x7fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__128__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x80U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__129__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x81U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__130__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x82U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__131__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x83U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__132__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x84U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__133__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x85U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__134__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x86U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__135__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x87U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__136__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x88U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__137__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x89U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__138__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x8aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__139__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x8bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__140__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x8cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__141__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x8dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__142__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x8eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__143__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x8fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__144__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x90U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__145__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x91U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__146__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x92U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__147__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x93U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__148__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x94U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__149__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x95U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__150__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x96U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__151__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x97U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__152__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x98U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__153__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x99U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__154__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x9aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__155__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x9bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__156__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x9cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__157__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x9dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__158__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x9eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__159__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0x9fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__160__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__161__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__162__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__163__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__164__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__165__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__166__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__167__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__168__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__169__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xa9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__170__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xaaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__171__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xabU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__172__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xacU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__173__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xadU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__174__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xaeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__175__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xafU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__176__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__177__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__178__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__179__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__180__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__181__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__182__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__183__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__184__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__185__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xb9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__186__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__187__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__188__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__189__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__190__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__191__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xbfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__192__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__193__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__194__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__195__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__196__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__197__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__198__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__199__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__200__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__201__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xc9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__202__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xcaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__203__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xcbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__204__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xccU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__205__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xcdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__206__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xceU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__207__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xcfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__208__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__209__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__210__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__211__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__212__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__213__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__214__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__215__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__216__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__217__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xd9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__218__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xdaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__219__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xdbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__220__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xdcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__221__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xddU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__222__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xdeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__223__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xdfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__224__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__225__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__226__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__227__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__228__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__229__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__230__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__231__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__232__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__233__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xe9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__234__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xeaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__235__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xebU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__236__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xecU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__237__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xedU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__238__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xeeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__239__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xefU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__240__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__241__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__242__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__243__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__244__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__245__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__246__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__247__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__248__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__249__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xf9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__250__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xfaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__251__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xfbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__252__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xfcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__253__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xfdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__254__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xfeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__255__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_valid) 
           & (0xffU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__0__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__1__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__2__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__3__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__4__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__5__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__6__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__7__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__8__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__9__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__10__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__11__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__12__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__13__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__14__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__15__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__16__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x10U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__17__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x11U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__18__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x12U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__19__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x13U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__20__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x14U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__21__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x15U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__22__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x16U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__23__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x17U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__24__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x18U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__25__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x19U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__26__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x1aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__27__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x1bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__28__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x1cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__29__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x1dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__30__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x1eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__31__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x1fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__32__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x20U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__33__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x21U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__34__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x22U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__35__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x23U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__36__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x24U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__37__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x25U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__38__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x26U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__39__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x27U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__40__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x28U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__41__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x29U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__42__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x2aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__43__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x2bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__44__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x2cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__45__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x2dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__46__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x2eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__47__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x2fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__48__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x30U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__49__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x31U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__50__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x32U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__51__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x33U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__52__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x34U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__53__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x35U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__54__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x36U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__55__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x37U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__56__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x38U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__57__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x39U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__58__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x3aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__59__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x3bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__60__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x3cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__61__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x3dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__62__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x3eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__63__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x3fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__64__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x40U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__65__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x41U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__66__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x42U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__67__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x43U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__68__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x44U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__69__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x45U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__70__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x46U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__71__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x47U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__72__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x48U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__73__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x49U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__74__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x4aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__75__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x4bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__76__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x4cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__77__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x4dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__78__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x4eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__79__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x4fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__80__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x50U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__81__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x51U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__82__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x52U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__83__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x53U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__84__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x54U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__85__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x55U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__86__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x56U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__87__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x57U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__88__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x58U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__89__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x59U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__90__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x5aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__91__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x5bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__92__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x5cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__93__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x5dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__94__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x5eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__95__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x5fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__96__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x60U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__97__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x61U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__98__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x62U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__99__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x63U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__100__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x64U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__101__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x65U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__102__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x66U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__103__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x67U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__104__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x68U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__105__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x69U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__106__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x6aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__107__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x6bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__108__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x6cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__109__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x6dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__110__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x6eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__111__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x6fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__112__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x70U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__113__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x71U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__114__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x72U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__115__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x73U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__116__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x74U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__117__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x75U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__118__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x76U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__119__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x77U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__120__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x78U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__121__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x79U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__122__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x7aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__123__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x7bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__124__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x7cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__125__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x7dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__126__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x7eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__127__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x7fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__128__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x80U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__129__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x81U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__130__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x82U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__131__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x83U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__132__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x84U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__133__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x85U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__134__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x86U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__135__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x87U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__136__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x88U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__137__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x89U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__138__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x8aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__139__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x8bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__140__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x8cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__141__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x8dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__142__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x8eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__143__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x8fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__144__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x90U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__145__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x91U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__146__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x92U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__147__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x93U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__148__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x94U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__149__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x95U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__150__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x96U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__151__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x97U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__152__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x98U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__153__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x99U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__154__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x9aU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__155__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x9bU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__156__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x9cU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__157__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x9dU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__158__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x9eU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__159__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0x9fU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__160__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__161__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__162__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__163__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__164__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__165__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__166__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__167__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__168__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__169__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xa9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__170__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xaaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__171__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xabU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__172__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xacU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__173__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xadU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__174__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xaeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__175__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xafU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__176__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__177__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__178__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__179__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__180__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__181__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__182__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__183__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__184__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__185__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xb9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__186__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__187__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__188__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__189__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__190__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__191__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xbfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__192__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__193__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__194__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__195__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__196__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__197__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__198__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__199__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__200__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__201__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xc9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__202__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xcaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__203__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xcbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__204__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xccU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__205__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xcdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__206__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xceU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__207__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xcfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__208__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__209__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__210__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__211__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__212__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__213__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__214__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__215__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__216__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__217__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xd9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__218__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xdaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__219__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xdbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__220__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xdcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__221__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xddU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__222__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xdeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__223__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xdfU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__224__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__225__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__226__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__227__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__228__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__229__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__230__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__231__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__232__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__233__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xe9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__234__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xeaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__235__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xebU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__236__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xecU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__237__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xedU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__238__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xeeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__239__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xefU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__240__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__241__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__242__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__243__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__244__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__245__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__246__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__247__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf7U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__248__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf8U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__249__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xf9U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__250__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xfaU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__251__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xfbU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__252__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xfcU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__253__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xfdU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__254__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xfeU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__255__KET____DOT__U_PLRU__update 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru_en) 
           & (0xffU == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__master_req_axi_arvalid 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__busy)
            ? (1U & ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                      ? (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_RD_state))
                      : ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                          ? (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))
                          : ((3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__index))
                              ? (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))
                              : 0U)))) : 0U);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_wr_req 
        = ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)) 
           | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__inst_rready 
        = ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)) 
             | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))) 
            | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))) 
           | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__data_rready 
        = ((((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)) 
             | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))) 
            | (4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))) 
           | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)));
    if ((6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[0U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_I_RData[0U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[1U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_I_RData[1U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[2U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_I_RData[2U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[3U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_I_RData[3U];
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[0U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[1U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[2U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[3U] = 0U;
    }
    if ((6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[0U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_RData[0U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[1U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_RData[1U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[2U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_RData[2U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[3U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__AXI_D_RData[3U];
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[0U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[1U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[2U] = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[3U] = 0U;
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_index 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_state)
            ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_index)
            : (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_en 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_flush 
        = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op) 
            & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid)) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_busy 
        = ((((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_valid) 
             & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_isUncache))) 
            & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_is_DCacheInst))) 
           & ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)) 
              | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit) 
                 & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_op))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__TLB_Buffer_Flush 
        = (1U & (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                   >> 7U) | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                              >> 8U) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__TLBInst_flow))) 
                 | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                     >> 0x14U) & (0xaU == (0x1fU & 
                                           vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__read_index 
        = (0xffU & (((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)) 
                     | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)))
                     ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)
                     : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                         << 0x1cU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                      >> 4U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_tlb__DOT__write_index 
        = ((0x80U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])
            ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index)
            : (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Random_Random));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB_PFN 
        = (((0xaU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                      >> 0x1cU)) | (0xbU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                             >> 0x1cU)))
            ? (0x1ffffU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                           >> 0xcU)) : (((8U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                                 >> 0x1cU)) 
                                         | (9U == (
                                                   vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                                   >> 0x1cU)))
                                         ? (0x7ffffU 
                                            & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                               >> 0xcU))
                                         : ((0x1000U 
                                             & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U])
                                             ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_pfn1
                                             : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_pfn0)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__isUncache 
        = (((0xaU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                      >> 0x1cU)) | (0xbU == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                             >> 0x1cU))) 
           | (((8U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                       >> 0x1cU)) | (9U == (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                            >> 0x1cU)))
               ? (3U != (7U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config))
               : ((0x1000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U])
                   ? (3U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_c1))
                   : (3U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_c0)))));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_index 
        = (0xffU & ((((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)) 
                      | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))) 
                     | (1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state)))
                     ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index)
                     : ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                         << 0x1cU) | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                      >> 4U))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr 
        = ((0xf8U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                     << 3U)) | (7U & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                                      >> 0x15U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1s_refetch 
        = (1U & ((((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                    >> 7U) | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                               >> 8U) & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__TLBInst_flow))) 
                  | ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[3U] 
                      >> 0x14U) & (0xaU == (0x1fU & 
                                            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])))) 
                 | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[5U] 
                    >> 0x13U)));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__M1s_dest 
        = (0x1fU & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[2U] 
                    & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__m1s_valid)))));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit 
        = (1U & (((0xcU > (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                           >> 0x1cU)) & (7U < (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                               >> 0x1cU))) 
                 | ((~ (IData)((0U != (0x420U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])))) 
                    | (((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                         >> 0xdU) == vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_vpn2) 
                       & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_valid)))));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_rd_data 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__valid)
            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__doutb_bypass
            : vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_ram_data__DOT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__ptr_match 
        = ((IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__enq_ptr_value) 
           == (IData)(vlSelf->SocLite__DOT__axi4xbar__DOT__awIn_0__DOT__deq_ptr_value));
    vlSelf->SocLite__DOT__axi_ram__DOT___value_T_7 
        = (0xffU & ((IData)(1U) + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value_2)));
    vlSelf->SocLite__DOT__axi_ram__DOT___value_T_3 
        = (0xffU & ((IData)(1U) + (IData)(vlSelf->SocLite__DOT__axi_ram__DOT__value)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[0U][0U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[0U][1U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[0U][2U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[0U][3U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[1U][0U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[1U][1U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[1U][2U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_rdata[1U][3U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[0U][0U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[0U][1U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[0U][2U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[0U][3U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[1U][0U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[1U][1U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[1U][2U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_rdata[1U][3U] 
        = ((IData)(vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__valid)
            ? vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__doutb_bypass
            : vlSymsp->TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data.__PVT__xpm_memory_sdpram_inst__DOT__xpm_memory_base_inst__DOT__gen_rd_b__DOT__doutb_reg);
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__PHT_wr_data 
        = (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_new_Count)) 
            << 0x36U) | (((QData)((IData)((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_es_pc 
                                           >> 0xaU))) 
                          << 0x20U) | (QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__u_BPU__DOT__BPU_br_target))));
    vlSelf->debug_wb_rf_wen = (0U != (0xfU & (- (IData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__rf_we)))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ws_to_rf_bus 
        = (((QData)((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__rf_we)) 
            << 0x25U) | (0x1fffffffffULL & (((QData)((IData)(
                                                             vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[2U])) 
                                             << 0x20U) 
                                            | (QData)((IData)(
                                                              vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ms_to_ws_bus_r[1U])))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_wr_en 
        = ((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state)) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_full)));
    __Vtableidx7 = (((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)) 
                     << 4U) | (((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_WR_state)) 
                                << 3U) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_empty) 
                                           << 2U) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state))));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_nextstate 
        = VSocLite__ConstPool__TABLE_h85ee62d1_0[__Vtableidx7];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__udcache_rd_req 
        = (((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__uncache_state)) 
            & (0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__fifo_state))) 
           & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__FIFO_empty));
    if (((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)) 
         & (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we 
            = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we) 
               | (3U & ((IData)(1U) << vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru
                        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index])));
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__data_we = 0U;
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[0U] = 0U;
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[1U] = 0U;
    if (((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state)) 
         & (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__D_RD_state)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru[vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index]] = 0xfU;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we 
            = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we) 
               | (3U & ((IData)(1U) << vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru
                        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index])));
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we 
            = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we) 
               | (3U & ((IData)(1U) << vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__plru
                        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_index])));
    } else {
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_state) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[(1U 
                                                                                & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))] 
                = (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we
                   [(1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))] 
                   | (0xfU & ((IData)(1U) << (3U & 
                                              ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_offset) 
                                               >> 2U)))));
        } else {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[0U] = 0U;
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__data_we[1U] = 0U;
        }
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__tagv_we 
            = ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))
                ? (3U & (((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)) 
                          | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)))
                          ? ((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag)
                              ? 2U : 1U) : (((6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)) 
                                             | (7U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)))
                                             ? ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)
                                                 ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)
                                                 : 0U)
                                             : 0U)))
                : 0U);
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_we 
            = (3U & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__write_state)
                      ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)
                      : ((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__CacheInst_state))
                          ? (((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)) 
                              | (5U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)))
                              ? ((1U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_data_tag)
                                  ? 2U : 1U) : (((6U 
                                                  == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)) 
                                                 | (7U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__reqbuffer_CacheInst_type)))
                                                 ? 
                                                ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_cache_hit)
                                                  ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)
                                                  : 0U)
                                                 : 0U))
                          : 0U)));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_wdata 
        = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ICacheInst_delayed) 
            & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)))
            ? 0U : (0x1fffffU & (1U | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_tag 
                                       << 1U))));
    if (((2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)) 
         & (6U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we = 0U;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we 
            = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we) 
               | (3U & ((IData)(1U) << vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__plru
                        [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index])));
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__tagv_we 
            = (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__ICacheInst_delayed) 
                & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)))
                ? 3U : 0U);
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__fs_to_ds_valid 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__if_stage__DOT__fs_valid) 
           & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_busy)));
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__index_addr 
        = ((((1U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)) 
             | (2U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state))) 
            | (3U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_state)))
            ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__reqbuffer_inst_index)
            : (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__inst_index));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__U_BusArbiter_dut__DOT__select 
        = ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__u_valid)
            ? 1U : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__d_valid)
                     ? 2U : ((0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_AXI_Interface__DOT__I_RD_state))
                              ? 3U : 0U)));
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__0__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__0__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__0__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__0__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__1__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__1__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__1__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__1__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__2__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__2__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__2__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__2__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__3__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__3__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__3__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__3__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__4__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__4__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__4__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__4__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__5__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__5__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__5__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__5__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__6__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__6__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__6__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__6__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__7__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__7__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__7__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__7__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__8__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__8__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__8__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__8__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__9__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__9__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__9__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__9__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__10__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__10__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__10__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__10__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__11__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__11__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__11__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__11__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__12__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__12__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__12__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__12__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__13__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__13__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__13__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__13__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__14__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__14__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__14__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__14__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__15__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__15__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__15__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__15__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__16__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__16__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__16__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__16__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__17__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__17__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__17__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__17__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__18__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__18__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__18__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__18__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__19__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__19__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__19__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__19__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__20__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__20__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__20__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__20__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__21__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__21__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__21__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__21__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__22__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__22__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__22__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__22__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__23__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__23__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__23__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__23__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__24__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__24__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__24__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__24__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__25__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__25__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__25__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__25__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__26__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__26__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__26__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__26__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__27__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__27__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__27__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__27__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__28__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__28__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__28__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__28__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__29__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__29__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__29__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__29__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__30__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__30__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__30__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__30__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__31__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__31__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__31__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__31__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__32__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__32__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__32__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__32__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__33__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__33__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__33__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__33__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__34__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__34__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__34__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__34__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__35__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__35__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__35__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__35__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__36__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__36__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__36__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__36__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__37__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__37__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__37__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__37__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__38__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__38__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__38__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__38__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__39__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__39__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__39__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__39__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__40__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__40__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__40__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__40__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__41__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__41__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__41__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__41__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__42__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__42__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__42__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__42__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__43__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__43__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__43__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__43__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__44__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__44__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__44__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__44__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__45__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__45__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__45__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__45__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__46__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__46__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__46__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__46__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__47__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__47__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__47__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__47__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__48__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__48__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__48__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__48__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__49__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__49__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__49__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__49__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__50__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__50__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__50__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__50__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__51__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__51__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__51__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__51__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__52__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__52__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__52__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__52__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__53__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__53__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__53__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__53__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__54__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__54__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__54__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__54__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__55__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__55__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__55__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__55__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__56__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__56__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__56__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__56__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__57__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__57__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__57__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__57__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__58__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__58__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__58__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__58__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__59__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__59__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__59__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__59__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__60__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__60__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__60__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__60__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__61__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__61__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__61__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__61__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__62__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__62__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__62__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__62__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__63__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__63__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__63__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__63__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__64__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__64__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__64__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__64__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__65__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__65__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__65__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__65__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__66__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__66__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__66__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__66__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__67__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__67__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__67__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__67__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__68__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__68__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__68__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__68__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__69__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__69__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__69__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__69__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__70__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__70__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__70__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__70__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__71__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__71__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__71__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__71__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__72__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__72__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__72__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__72__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__73__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__73__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__73__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__73__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__74__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__74__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__74__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__74__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__75__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__75__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__75__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__75__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__76__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__76__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__76__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__76__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__77__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__77__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__77__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__77__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__78__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__78__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__78__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__78__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__79__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__79__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__79__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__79__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__80__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__80__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__80__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__80__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__81__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__81__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__81__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__81__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__82__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__82__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__82__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__82__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__83__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__83__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__83__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__83__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__84__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__84__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__84__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__84__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__85__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__85__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__85__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__85__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__86__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__86__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__86__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__86__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__87__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__87__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__87__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__87__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__88__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__88__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__88__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__88__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__89__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__89__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__89__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__89__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__90__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__90__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__90__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__90__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__91__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__91__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__91__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__91__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__92__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__92__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__92__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__92__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__93__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__93__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__93__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__93__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__94__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__94__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__94__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__94__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__95__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__95__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__95__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__95__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__96__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__96__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__96__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__96__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__97__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__97__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__97__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__97__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__98__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__98__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__98__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__98__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__99__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__99__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__99__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__99__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__100__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__100__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__100__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__100__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__101__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__101__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__101__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__101__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__102__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__102__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__102__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__102__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__103__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__103__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__103__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__103__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__104__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__104__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__104__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__104__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__105__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__105__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__105__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__105__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__106__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__106__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__106__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__106__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__107__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__107__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__107__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__107__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__108__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__108__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__108__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__108__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__109__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__109__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__109__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__109__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__110__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__110__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__110__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__110__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__111__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__111__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__111__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__111__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__112__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__112__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__112__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__112__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__113__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__113__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__113__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__113__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__114__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__114__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__114__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__114__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__115__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__115__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__115__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__115__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__116__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__116__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__116__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__116__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__117__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__117__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__117__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__117__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__118__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__118__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__118__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__118__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__119__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__119__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__119__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__119__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__120__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__120__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__120__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__120__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__121__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__121__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__121__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__121__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__122__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__122__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__122__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__122__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__123__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__123__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__123__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__123__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__124__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__124__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__124__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__124__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__125__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__125__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__125__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__125__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__126__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__126__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__126__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__126__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__127__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__127__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__127__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__127__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__128__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__128__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__128__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__128__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__129__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__129__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__129__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__129__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__130__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__130__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__130__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__130__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__131__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__131__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__131__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__131__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__132__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__132__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__132__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__132__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__133__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__133__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__133__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__133__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__134__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__134__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__134__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__134__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__135__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__135__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__135__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__135__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__136__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__136__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__136__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__136__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__137__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__137__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__137__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__137__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__138__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__138__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__138__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__138__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__139__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__139__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__139__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__139__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__140__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__140__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__140__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__140__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__141__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__141__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__141__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__141__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__142__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__142__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__142__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__142__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__143__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__143__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__143__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__143__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__144__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__144__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__144__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__144__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__145__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__145__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__145__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__145__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__146__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__146__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__146__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__146__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__147__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__147__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__147__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__147__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__148__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__148__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__148__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__148__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__149__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__149__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__149__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__149__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__150__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__150__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__150__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__150__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__151__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__151__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__151__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__151__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__152__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__152__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__152__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__152__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__153__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__153__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__153__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__153__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__154__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__154__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__154__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__154__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__155__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__155__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__155__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__155__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__156__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__156__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__156__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__156__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__157__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__157__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__157__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__157__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__158__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__158__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__158__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__158__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__159__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__159__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__159__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__159__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__160__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__160__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__160__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__160__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__161__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__161__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__161__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__161__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__162__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__162__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__162__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__162__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__163__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__163__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__163__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__163__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__164__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__164__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__164__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__164__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__165__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__165__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__165__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__165__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__166__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__166__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__166__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__166__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__167__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__167__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__167__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__167__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__168__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__168__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__168__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__168__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__169__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__169__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__169__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__169__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__170__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__170__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__170__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__170__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__171__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__171__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__171__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__171__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__172__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__172__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__172__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__172__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__173__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__173__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__173__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__173__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__174__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__174__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__174__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__174__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__175__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__175__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__175__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__175__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__176__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__176__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__176__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__176__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__177__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__177__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__177__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__177__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__178__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__178__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__178__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__178__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__179__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__179__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__179__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__179__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__180__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__180__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__180__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__180__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__181__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__181__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__181__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__181__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__182__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__182__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__182__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__182__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__183__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__183__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__183__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__183__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__184__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__184__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__184__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__184__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__185__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__185__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__185__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__185__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__186__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__186__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__186__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__186__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__187__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__187__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__187__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__187__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__188__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__188__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__188__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__188__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__189__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__189__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__189__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__189__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__190__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__190__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__190__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__190__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__191__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__191__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__191__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__191__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__192__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__192__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__192__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__192__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__193__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__193__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__193__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__193__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__194__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__194__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__194__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__194__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__195__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__195__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__195__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__195__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__196__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__196__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__196__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__196__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__197__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__197__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__197__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__197__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__198__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__198__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__198__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__198__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__199__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__199__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__199__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__199__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__200__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__200__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__200__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__200__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__201__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__201__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__201__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__201__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__202__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__202__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__202__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__202__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__203__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__203__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__203__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__203__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__204__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__204__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__204__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__204__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__205__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__205__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__205__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__205__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__206__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__206__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__206__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__206__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__207__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__207__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__207__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__207__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__208__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__208__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__208__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__208__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__209__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__209__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__209__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__209__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__210__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__210__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__210__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__210__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__211__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__211__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__211__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__211__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__212__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__212__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__212__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__212__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__213__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__213__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__213__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__213__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__214__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__214__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__214__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__214__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__215__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__215__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__215__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__215__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__216__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__216__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__216__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__216__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__217__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__217__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__217__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__217__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__218__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__218__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__218__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__218__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__219__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__219__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__219__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__219__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__220__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__220__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__220__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__220__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__221__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__221__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__221__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__221__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__222__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__222__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__222__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__222__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__223__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__223__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__223__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__223__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__224__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__224__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__224__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__224__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__225__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__225__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__225__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__225__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__226__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__226__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__226__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__226__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__227__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__227__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__227__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__227__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__228__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__228__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__228__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__228__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__229__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__229__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__229__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__229__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__230__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__230__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__230__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__230__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__231__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__231__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__231__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__231__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__232__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__232__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__232__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__232__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__233__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__233__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__233__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__233__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__234__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__234__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__234__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__234__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__235__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__235__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__235__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__235__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__236__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__236__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__236__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__236__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__237__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__237__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__237__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__237__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__238__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__238__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__238__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__238__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__239__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__239__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__239__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__239__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__240__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__240__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__240__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__240__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__241__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__241__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__241__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__241__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__242__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__242__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__242__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__242__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__243__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__243__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__243__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__243__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__244__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__244__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__244__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__244__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__245__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__245__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__245__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__245__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__246__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__246__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__246__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__246__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__247__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__247__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__247__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__247__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__248__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__248__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__248__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__248__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__249__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__249__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__249__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__249__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__250__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__250__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__250__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__250__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__251__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__251__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__251__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__251__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__252__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__252__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__252__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__252__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__253__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__253__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__253__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__253__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__254__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__254__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__254__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__254__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__255__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__255__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT____Vcellinp__genblk5__BRA__255__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk5__BRA__255__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__0__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__0__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__0__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__0__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__1__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__1__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__1__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__1__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__2__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__2__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__2__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__2__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__3__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__3__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__3__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__3__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__4__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__4__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__4__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__4__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__5__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__5__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__5__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__5__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__6__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__6__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__6__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__6__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__7__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__7__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__7__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__7__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__8__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__8__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__8__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__8__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__9__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__9__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__9__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__9__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__10__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__10__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__10__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__10__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__11__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__11__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__11__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__11__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__12__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__12__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__12__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__12__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__13__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__13__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__13__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__13__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__14__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__14__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__14__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__14__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__15__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__15__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__15__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__15__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__16__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__16__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__16__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__16__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__17__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__17__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__17__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__17__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__18__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__18__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__18__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__18__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__19__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__19__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__19__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__19__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__20__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__20__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__20__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__20__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__21__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__21__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__21__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__21__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__22__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__22__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__22__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__22__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__23__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__23__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__23__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__23__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__24__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__24__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__24__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__24__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__25__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__25__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__25__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__25__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__26__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__26__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__26__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__26__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__27__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__27__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__27__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__27__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__28__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__28__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__28__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__28__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__29__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__29__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__29__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__29__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__30__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__30__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__30__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__30__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__31__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__31__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__31__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__31__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__32__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__32__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__32__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__32__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__33__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__33__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__33__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__33__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__34__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__34__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__34__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__34__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__35__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__35__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__35__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__35__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__36__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__36__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__36__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__36__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__37__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__37__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__37__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__37__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__38__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__38__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__38__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__38__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__39__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__39__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__39__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__39__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__40__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__40__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__40__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__40__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__41__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__41__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__41__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__41__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__42__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__42__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__42__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__42__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__43__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__43__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__43__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__43__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__44__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__44__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__44__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__44__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__45__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__45__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__45__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__45__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__46__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__46__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__46__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__46__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__47__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__47__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__47__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__47__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__48__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__48__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__48__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__48__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__49__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__49__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__49__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__49__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__50__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__50__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__50__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__50__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__51__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__51__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__51__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__51__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__52__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__52__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__52__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__52__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__53__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__53__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__53__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__53__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__54__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__54__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__54__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__54__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__55__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__55__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__55__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__55__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__56__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__56__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__56__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__56__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__57__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__57__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__57__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__57__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__58__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__58__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__58__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__58__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__59__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__59__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__59__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__59__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__60__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__60__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__60__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__60__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__61__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__61__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__61__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__61__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__62__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__62__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__62__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__62__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__63__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__63__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__63__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__63__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__64__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__64__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__64__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__64__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__65__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__65__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__65__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__65__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__66__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__66__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__66__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__66__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__67__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__67__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__67__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__67__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__68__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__68__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__68__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__68__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__69__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__69__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__69__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__69__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__70__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__70__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__70__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__70__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__71__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__71__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__71__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__71__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__72__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__72__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__72__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__72__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__73__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__73__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__73__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__73__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__74__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__74__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__74__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__74__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__75__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__75__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__75__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__75__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__76__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__76__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__76__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__76__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__77__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__77__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__77__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__77__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__78__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__78__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__78__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__78__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__79__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__79__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__79__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__79__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__80__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__80__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__80__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__80__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__81__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__81__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__81__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__81__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__82__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__82__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__82__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__82__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__83__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__83__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__83__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__83__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__84__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__84__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__84__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__84__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__85__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__85__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__85__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__85__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__86__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__86__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__86__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__86__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__87__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__87__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__87__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__87__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__88__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__88__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__88__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__88__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__89__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__89__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__89__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__89__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__90__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__90__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__90__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__90__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__91__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__91__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__91__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__91__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__92__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__92__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__92__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__92__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__93__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__93__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__93__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__93__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__94__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__94__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__94__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__94__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__95__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__95__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__95__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__95__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__96__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__96__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__96__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__96__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__97__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__97__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__97__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__97__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__98__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__98__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__98__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__98__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__99__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__99__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__99__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__99__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__100__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__100__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__100__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__100__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__101__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__101__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__101__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__101__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__102__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__102__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__102__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__102__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__103__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__103__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__103__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__103__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__104__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__104__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__104__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__104__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__105__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__105__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__105__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__105__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__106__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__106__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__106__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__106__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__107__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__107__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__107__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__107__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__108__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__108__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__108__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__108__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__109__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__109__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__109__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__109__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__110__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__110__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__110__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__110__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__111__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__111__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__111__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__111__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__112__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__112__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__112__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__112__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__113__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__113__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__113__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__113__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__114__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__114__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__114__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__114__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__115__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__115__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__115__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__115__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__116__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__116__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__116__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__116__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__117__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__117__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__117__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__117__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__118__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__118__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__118__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__118__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__119__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__119__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__119__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__119__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__120__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__120__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__120__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__120__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__121__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__121__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__121__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__121__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__122__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__122__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__122__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__122__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__123__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__123__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__123__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__123__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__124__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__124__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__124__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__124__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__125__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__125__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__125__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__125__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__126__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__126__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__126__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__126__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__127__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__127__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__127__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__127__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__128__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__128__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__128__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__128__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__129__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__129__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__129__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__129__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__130__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__130__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__130__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__130__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__131__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__131__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__131__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__131__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__132__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__132__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__132__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__132__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__133__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__133__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__133__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__133__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__134__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__134__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__134__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__134__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__135__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__135__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__135__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__135__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__136__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__136__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__136__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__136__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__137__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__137__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__137__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__137__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__138__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__138__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__138__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__138__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__139__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__139__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__139__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__139__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__140__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__140__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__140__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__140__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__141__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__141__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__141__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__141__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__142__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__142__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__142__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__142__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__143__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__143__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__143__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__143__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__144__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__144__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__144__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__144__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__145__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__145__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__145__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__145__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__146__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__146__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__146__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__146__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__147__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__147__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__147__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__147__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__148__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__148__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__148__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__148__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__149__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__149__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__149__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__149__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__150__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__150__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__150__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__150__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__151__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__151__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__151__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__151__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__152__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__152__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__152__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__152__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__153__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__153__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__153__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__153__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__154__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__154__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__154__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__154__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__155__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__155__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__155__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__155__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__156__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__156__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__156__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__156__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__157__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__157__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__157__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__157__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__158__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__158__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__158__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__158__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__159__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__159__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__159__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__159__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__160__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__160__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__160__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__160__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__161__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__161__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__161__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__161__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__162__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__162__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__162__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__162__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__163__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__163__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__163__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__163__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__164__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__164__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__164__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__164__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__165__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__165__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__165__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__165__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__166__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__166__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__166__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__166__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__167__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__167__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__167__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__167__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__168__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__168__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__168__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__168__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__169__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__169__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__169__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__169__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__170__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__170__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__170__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__170__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__171__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__171__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__171__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__171__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__172__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__172__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__172__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__172__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__173__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__173__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__173__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__173__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__174__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__174__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__174__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__174__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__175__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__175__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__175__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__175__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__176__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__176__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__176__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__176__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__177__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__177__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__177__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__177__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__178__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__178__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__178__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__178__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__179__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__179__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__179__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__179__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__180__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__180__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__180__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__180__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__181__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__181__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__181__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__181__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__182__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__182__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__182__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__182__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__183__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__183__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__183__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__183__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__184__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__184__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__184__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__184__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__185__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__185__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__185__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__185__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__186__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__186__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__186__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__186__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__187__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__187__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__187__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__187__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__188__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__188__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__188__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__188__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__189__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__189__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__189__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__189__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__190__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__190__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__190__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__190__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__191__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__191__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__191__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__191__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__192__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__192__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__192__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__192__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__193__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__193__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__193__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__193__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__194__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__194__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__194__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__194__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__195__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__195__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__195__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__195__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__196__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__196__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__196__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__196__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__197__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__197__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__197__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__197__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__198__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__198__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__198__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__198__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__199__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__199__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__199__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__199__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__200__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__200__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__200__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__200__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__201__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__201__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__201__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__201__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__202__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__202__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__202__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__202__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__203__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__203__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__203__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__203__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__204__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__204__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__204__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__204__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__205__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__205__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__205__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__205__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__206__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__206__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__206__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__206__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__207__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__207__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__207__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__207__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__208__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__208__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__208__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__208__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__209__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__209__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__209__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__209__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__210__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__210__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__210__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__210__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__211__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__211__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__211__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__211__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__212__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__212__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__212__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__212__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__213__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__213__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__213__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__213__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__214__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__214__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__214__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__214__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__215__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__215__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__215__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__215__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__216__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__216__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__216__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__216__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__217__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__217__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__217__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__217__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__218__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__218__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__218__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__218__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__219__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__219__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__219__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__219__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__220__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__220__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__220__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__220__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__221__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__221__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__221__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__221__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__222__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__222__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__222__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__222__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__223__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__223__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__223__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__223__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__224__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__224__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__224__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__224__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__225__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__225__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__225__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__225__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__226__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__226__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__226__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__226__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__227__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__227__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__227__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__227__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__228__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__228__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__228__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__228__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__229__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__229__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__229__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__229__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__230__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__230__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__230__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__230__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__231__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__231__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__231__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__231__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__232__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__232__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__232__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__232__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__233__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__233__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__233__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__233__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__234__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__234__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__234__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__234__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__235__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__235__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__235__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__235__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__236__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__236__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__236__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__236__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__237__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__237__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__237__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__237__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__238__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__238__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__238__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__238__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__239__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__239__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__239__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__239__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__240__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__240__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__240__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__240__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__241__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__241__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__241__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__241__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__242__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__242__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__242__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__242__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__243__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__243__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__243__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__243__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__244__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__244__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__244__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__244__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__245__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__245__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__245__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__245__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__246__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__246__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__246__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__246__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__247__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__247__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__247__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__247__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__248__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__248__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__248__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__248__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__249__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__249__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__249__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__249__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__250__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__250__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__250__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__250__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__251__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__251__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__251__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__251__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__252__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__252__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__252__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__252__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__253__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__253__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__253__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__253__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__254__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__254__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__254__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__254__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__255__KET____DOT__U_PLRU__DOT__nextstate 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__255__KET____DOT__U_PLRU__DOT__state;
    if (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT____Vcellinp__genblk7__BRA__255__KET____DOT__U_PLRU__update) 
         & (0U != (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit)))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk7__BRA__255__KET____DOT__U_PLRU__DOT__nextstate 
            = (1U & (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__delayed_hit));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[0U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[0U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[1U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[1U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[2U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[2U];
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__icache_wdata[3U] 
        = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__icache_ret_data[3U];
    if ((4U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_state))) {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[0U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[0U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[1U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[1U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[2U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[2U];
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[3U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__dcache_ret_data[3U];
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[0U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_wdata;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[1U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_wdata;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[2U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_wdata;
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dcache_wdata[3U] 
            = vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__writebuffer_data_wdata;
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_rbit 
        = ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_dirty__DOT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem
            [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_index] 
            << 1U) | vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_dirty__DOT__xpm_memory_spram_inst__DOT__xpm_memory_base_inst__DOT__mem
           [vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__dirty_index]);
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
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__CP0_data 
        = ((0x40U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
            ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_BadVAddr
            : ((0x48U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Count
                : ((0x58U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                    ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Compare
                    : ((0x60U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                        ? (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_CU0) 
                            << 0x1cU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_Bev) 
                                          << 0x16U) 
                                         | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IM) 
                                             << 8U) 
                                            | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_UM) 
                                                << 4U) 
                                               | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_ERL) 
                                                   << 2U) 
                                                  | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_EXL) 
                                                      << 1U) 
                                                     | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Status_IE)))))))
                        : ((0x68U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                            ? (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_BD) 
                                << 0x1fU) | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_TI) 
                                              << 0x1eU) 
                                             | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_CE) 
                                                 << 0x1cU) 
                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_IP) 
                                                    << 8U) 
                                                   | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Cause_ExcCode) 
                                                      << 2U)))))
                            : ((0x70U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EPC
                                : ((0U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                    ? (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_P) 
                                        << 0x1fU) | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Index_Index))
                                    : ((0x50U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                        ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entryhi_VPN2 
                                            << 0xdU) 
                                           | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entryhi_ASID))
                                        : ((0x10U == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                            ? ((vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_PFN0 
                                                << 6U) 
                                               | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_C0) 
                                                   << 3U) 
                                                  | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_D0) 
                                                      << 2U) 
                                                     | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_V0) 
                                                         << 1U) 
                                                        | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo0_G0)))))
                                            : ((0x18U 
                                                == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                ? (
                                                   (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_PFN1 
                                                    << 6U) 
                                                   | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_C1) 
                                                       << 3U) 
                                                      | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_D1) 
                                                          << 2U) 
                                                         | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_V1) 
                                                             << 1U) 
                                                            | (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Entrylo1_G1)))))
                                                : (
                                                   (8U 
                                                    == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                    ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Random_Random)
                                                    : 
                                                   ((0x30U 
                                                     == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                     ? (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Wired_Wired)
                                                     : 
                                                    ((0x20U 
                                                      == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                      ? 
                                                     (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Context_PTEBase) 
                                                       << 0x17U) 
                                                      | (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Context_BadVPN2 
                                                         << 4U))
                                                      : 
                                                     ((0x78U 
                                                       == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                       ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Prid
                                                       : 
                                                      ((0x79U 
                                                        == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                        ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_EBase
                                                        : 
                                                       ((0x80U 
                                                         == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                         ? vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config
                                                         : 
                                                        ((0x81U 
                                                          == (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Addr))
                                                          ? 
                                                         (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_M) 
                                                           << 0x1fU) 
                                                          | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_MMUSize) 
                                                              << 0x19U) 
                                                             | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IS) 
                                                                 << 0x16U) 
                                                                | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IL) 
                                                                    << 0x13U) 
                                                                   | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IL) 
                                                                       << 0x10U) 
                                                                      | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IS) 
                                                                          << 0xdU) 
                                                                         | (((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IL) 
                                                                             << 0xaU) 
                                                                            | ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Config1_IL) 
                                                                               << 7U))))))))
                                                          : 0U)))))))))))))))));
    if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_state) {
        if (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_state) {
            vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_nextstate 
                = (1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit)));
        }
    } else {
        vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_nextstate 
            = (1U & (~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit)));
    }
    vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB_ex 
        = ((~ ((7U < (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                      >> 0x1cU)) & (0xcU > (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U] 
                                            >> 0x1cU)))) 
           & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_Hit) 
              & ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_found)
                  ? ((0x1000U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[1U])
                      ? ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_v1)
                          ? ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_d1)) 
                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                >> 0xaU)) : (IData)(
                                                    (0U 
                                                     != 
                                                     (0x420U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U]))))
                      : ((IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_v0)
                          ? ((~ (IData)(vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__DTLB__DOT__DTLB_Buffer_d0)) 
                             & (vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U] 
                                >> 0xaU)) : (IData)(
                                                    (0U 
                                                     != 
                                                     (0x420U 
                                                      & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U])))))
                  : (IData)((0U != (0x420U & vlSelf->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__es_to_m1s_bus_r[4U]))))));
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
}
