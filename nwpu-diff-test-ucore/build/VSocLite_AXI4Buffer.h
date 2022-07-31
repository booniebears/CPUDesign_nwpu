// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VSocLite.h for the primary calling header

#ifndef VERILATED_VSOCLITE_AXI4BUFFER_H_
#define VERILATED_VSOCLITE_AXI4BUFFER_H_  // guard

#include "verilated.h"
#include "verilated_save.h"

class VSocLite__Syms;
VL_MODULE(VSocLite_AXI4Buffer) {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        VL_IN8(clock,0,0);
        VL_IN8(reset,0,0);
        VL_OUT8(auto_in_aw_ready,0,0);
        VL_IN8(auto_in_aw_valid,0,0);
        VL_IN8(auto_in_aw_bits_id,3,0);
        VL_IN8(auto_in_aw_bits_len,7,0);
        VL_IN8(auto_in_aw_bits_size,2,0);
        VL_IN8(auto_in_aw_bits_burst,1,0);
        VL_IN8(auto_in_aw_bits_lock,0,0);
        VL_IN8(auto_in_aw_bits_cache,3,0);
        VL_IN8(auto_in_aw_bits_prot,2,0);
        VL_OUT8(auto_in_w_ready,0,0);
        VL_IN8(auto_in_w_valid,0,0);
        VL_IN8(auto_in_w_bits_strb,3,0);
        VL_IN8(auto_in_w_bits_last,0,0);
        VL_IN8(auto_in_b_ready,0,0);
        VL_OUT8(auto_in_b_valid,0,0);
        VL_OUT8(auto_in_b_bits_id,3,0);
        VL_OUT8(auto_in_b_bits_resp,1,0);
        VL_OUT8(auto_in_ar_ready,0,0);
        VL_IN8(auto_in_ar_valid,0,0);
        VL_IN8(auto_in_ar_bits_id,3,0);
        VL_IN8(auto_in_ar_bits_len,7,0);
        VL_IN8(auto_in_ar_bits_size,2,0);
        VL_IN8(auto_in_ar_bits_burst,1,0);
        VL_IN8(auto_in_ar_bits_lock,0,0);
        VL_IN8(auto_in_ar_bits_cache,3,0);
        VL_IN8(auto_in_ar_bits_prot,2,0);
        VL_IN8(auto_in_r_ready,0,0);
        VL_OUT8(auto_in_r_valid,0,0);
        VL_OUT8(auto_in_r_bits_id,3,0);
        VL_OUT8(auto_in_r_bits_resp,1,0);
        VL_OUT8(auto_in_r_bits_last,0,0);
        VL_IN8(auto_out_aw_ready,0,0);
        VL_OUT8(auto_out_aw_valid,0,0);
        VL_OUT8(auto_out_aw_bits_id,3,0);
        VL_OUT8(auto_out_aw_bits_len,7,0);
        VL_OUT8(auto_out_aw_bits_size,2,0);
        VL_OUT8(auto_out_aw_bits_burst,1,0);
        VL_OUT8(auto_out_aw_bits_lock,0,0);
        VL_OUT8(auto_out_aw_bits_cache,3,0);
        VL_OUT8(auto_out_aw_bits_prot,2,0);
        VL_IN8(auto_out_w_ready,0,0);
        VL_OUT8(auto_out_w_valid,0,0);
        VL_OUT8(auto_out_w_bits_strb,3,0);
        VL_OUT8(auto_out_w_bits_last,0,0);
        VL_OUT8(auto_out_b_ready,0,0);
        VL_IN8(auto_out_b_valid,0,0);
        VL_IN8(auto_out_b_bits_id,3,0);
        VL_IN8(auto_out_b_bits_resp,1,0);
        VL_IN8(auto_out_ar_ready,0,0);
        VL_OUT8(auto_out_ar_valid,0,0);
        VL_OUT8(auto_out_ar_bits_id,3,0);
        VL_OUT8(auto_out_ar_bits_len,7,0);
        VL_OUT8(auto_out_ar_bits_size,2,0);
        VL_OUT8(auto_out_ar_bits_burst,1,0);
        VL_OUT8(auto_out_ar_bits_lock,0,0);
        VL_OUT8(auto_out_ar_bits_cache,3,0);
        VL_OUT8(auto_out_ar_bits_prot,2,0);
        VL_OUT8(auto_out_r_ready,0,0);
        VL_IN8(auto_out_r_valid,0,0);
        VL_IN8(auto_out_r_bits_id,3,0);
        VL_IN8(auto_out_r_bits_resp,1,0);
        VL_IN8(auto_out_r_bits_last,0,0);
    };
    struct {
        CData/*3:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        CData/*7:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data;
        CData/*2:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data;
        CData/*1:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
        CData/*3:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
        CData/*2:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__value;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__value_1;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__maybe_full;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__ptr_match;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__empty;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__full;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__do_enq;
        CData/*0:0*/ __PVT__bundleOut_0_aw_deq__DOT__do_deq;
        CData/*3:0*/ __PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__value;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__value_1;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__maybe_full;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__ptr_match;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__empty;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__full;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__do_enq;
        CData/*0:0*/ __PVT__bundleOut_0_w_deq__DOT__do_deq;
        CData/*3:0*/ __PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        CData/*1:0*/ __PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__value;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__value_1;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__maybe_full;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__ptr_match;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__empty;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__full;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__do_enq;
        CData/*0:0*/ __PVT__bundleIn_0_b_deq__DOT__do_deq;
        CData/*3:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        CData/*7:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data;
        CData/*2:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data;
        CData/*1:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
        CData/*3:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
        CData/*2:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__value;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__value_1;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__maybe_full;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__ptr_match;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__empty;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__full;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__do_enq;
        CData/*0:0*/ __PVT__bundleOut_0_ar_deq__DOT__do_deq;
        CData/*3:0*/ __PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data;
        CData/*1:0*/ __PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__value;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__value_1;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__maybe_full;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__ptr_match;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__empty;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__full;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__do_enq;
        CData/*0:0*/ __PVT__bundleIn_0_r_deq__DOT__do_deq;
        CData/*0:0*/ __Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0;
        CData/*3:0*/ __Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
        CData/*0:0*/ __Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0;
    };
    struct {
        CData/*0:0*/ __Vdly__bundleOut_0_aw_deq__DOT__value_1;
        CData/*0:0*/ __Vdly__bundleIn_0_b_deq__DOT__value_1;
        CData/*0:0*/ __Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0;
        CData/*0:0*/ __Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0;
        CData/*0:0*/ __Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0;
        CData/*3:0*/ __Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
        CData/*0:0*/ __Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0;
        CData/*0:0*/ __Vdly__bundleOut_0_ar_deq__DOT__value_1;
        CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0;
        CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0;
        CData/*0:0*/ __Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0;
        CData/*0:0*/ __Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0;
        CData/*0:0*/ __Vdly__bundleIn_0_r_deq__DOT__value_1;
        VL_IN(auto_in_aw_bits_addr,31,0);
        VL_IN(auto_in_w_bits_data,31,0);
        VL_IN(auto_in_ar_bits_addr,31,0);
        VL_OUT(auto_in_r_bits_data,31,0);
        VL_OUT(auto_out_aw_bits_addr,31,0);
        VL_OUT(auto_out_w_bits_data,31,0);
        VL_OUT(auto_out_ar_bits_addr,31,0);
        VL_IN(auto_out_r_bits_data,31,0);
        IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
        IData/*31:0*/ __PVT__bundleOut_0_aw_deq__DOT__initvar;
        IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data;
        IData/*31:0*/ __PVT__bundleOut_0_w_deq__DOT__initvar;
        IData/*31:0*/ __PVT__bundleIn_0_b_deq__DOT__initvar;
        IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
        IData/*31:0*/ __PVT__bundleOut_0_ar_deq__DOT__initvar;
        IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data;
        IData/*31:0*/ __PVT__bundleIn_0_r_deq__DOT__initvar;
        IData/*31:0*/ __Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_id;
        VlUnpacked<IData/*31:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_addr;
        VlUnpacked<CData/*7:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_len;
        VlUnpacked<CData/*2:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_size;
        VlUnpacked<CData/*1:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_burst;
        VlUnpacked<CData/*0:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_lock;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_cache;
        VlUnpacked<CData/*2:0*/, 2> __PVT__bundleOut_0_aw_deq__DOT__ram_prot;
        VlUnpacked<IData/*31:0*/, 2> __PVT__bundleOut_0_w_deq__DOT__ram_data;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleOut_0_w_deq__DOT__ram_strb;
        VlUnpacked<CData/*0:0*/, 2> __PVT__bundleOut_0_w_deq__DOT__ram_last;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleIn_0_b_deq__DOT__ram_id;
        VlUnpacked<CData/*1:0*/, 2> __PVT__bundleIn_0_b_deq__DOT__ram_resp;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_id;
        VlUnpacked<IData/*31:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_addr;
        VlUnpacked<CData/*7:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_len;
        VlUnpacked<CData/*2:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_size;
        VlUnpacked<CData/*1:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_burst;
        VlUnpacked<CData/*0:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_lock;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_cache;
        VlUnpacked<CData/*2:0*/, 2> __PVT__bundleOut_0_ar_deq__DOT__ram_prot;
        VlUnpacked<CData/*3:0*/, 2> __PVT__bundleIn_0_r_deq__DOT__ram_id;
        VlUnpacked<IData/*31:0*/, 2> __PVT__bundleIn_0_r_deq__DOT__ram_data;
        VlUnpacked<CData/*1:0*/, 2> __PVT__bundleIn_0_r_deq__DOT__ram_resp;
        VlUnpacked<CData/*0:0*/, 2> __PVT__bundleIn_0_r_deq__DOT__ram_last;
    };

    // INTERNAL VARIABLES
    VSocLite__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
    VSocLite_AXI4Buffer(const char* name);
    ~VSocLite_AXI4Buffer();
    VL_UNCOPYABLE(VSocLite_AXI4Buffer);

    // INTERNAL METHODS
    void __Vconfigure(VSocLite__Syms* symsp, bool first);
    void __Vserialize(VerilatedSerialize& os);
    void __Vdeserialize(VerilatedDeserialize& os);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
