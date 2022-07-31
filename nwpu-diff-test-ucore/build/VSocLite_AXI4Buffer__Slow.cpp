// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite_AXI4Buffer.h"
#include "VSocLite__Syms.h"

void VSocLite_AXI4Buffer___ctor_var_reset(VSocLite_AXI4Buffer* vlSelf);

VSocLite_AXI4Buffer::VSocLite_AXI4Buffer(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VSocLite_AXI4Buffer___ctor_var_reset(this);
}

void VSocLite_AXI4Buffer::__Vconfigure(VSocLite__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VSocLite_AXI4Buffer::~VSocLite_AXI4Buffer() {
}

// Savable
void VSocLite_AXI4Buffer::__Vserialize(VerilatedSerialize& os) {
    vluint64_t __Vcheckval = 0x85ceea0f3ebc4de1ULL;
    os << __Vcheckval;
    os << vlSymsp->_vm_contextp__;
    os<<clock;
    os<<reset;
    os<<auto_in_aw_ready;
    os<<auto_in_aw_valid;
    os<<auto_in_aw_bits_id;
    os<<auto_in_aw_bits_len;
    os<<auto_in_aw_bits_size;
    os<<auto_in_aw_bits_burst;
    os<<auto_in_aw_bits_lock;
    os<<auto_in_aw_bits_cache;
    os<<auto_in_aw_bits_prot;
    os<<auto_in_w_ready;
    os<<auto_in_w_valid;
    os<<auto_in_w_bits_strb;
    os<<auto_in_w_bits_last;
    os<<auto_in_b_ready;
    os<<auto_in_b_valid;
    os<<auto_in_b_bits_id;
    os<<auto_in_b_bits_resp;
    os<<auto_in_ar_ready;
    os<<auto_in_ar_valid;
    os<<auto_in_ar_bits_id;
    os<<auto_in_ar_bits_len;
    os<<auto_in_ar_bits_size;
    os<<auto_in_ar_bits_burst;
    os<<auto_in_ar_bits_lock;
    os<<auto_in_ar_bits_cache;
    os<<auto_in_ar_bits_prot;
    os<<auto_in_r_ready;
    os<<auto_in_r_valid;
    os<<auto_in_r_bits_id;
    os<<auto_in_r_bits_resp;
    os<<auto_in_r_bits_last;
    os<<auto_out_aw_ready;
    os<<auto_out_aw_valid;
    os<<auto_out_aw_bits_id;
    os<<auto_out_aw_bits_len;
    os<<auto_out_aw_bits_size;
    os<<auto_out_aw_bits_burst;
    os<<auto_out_aw_bits_lock;
    os<<auto_out_aw_bits_cache;
    os<<auto_out_aw_bits_prot;
    os<<auto_out_w_ready;
    os<<auto_out_w_valid;
    os<<auto_out_w_bits_strb;
    os<<auto_out_w_bits_last;
    os<<auto_out_b_ready;
    os<<auto_out_b_valid;
    os<<auto_out_b_bits_id;
    os<<auto_out_b_bits_resp;
    os<<auto_out_ar_ready;
    os<<auto_out_ar_valid;
    os<<auto_out_ar_bits_id;
    os<<auto_out_ar_bits_len;
    os<<auto_out_ar_bits_size;
    os<<auto_out_ar_bits_burst;
    os<<auto_out_ar_bits_lock;
    os<<auto_out_ar_bits_cache;
    os<<auto_out_ar_bits_prot;
    os<<auto_out_r_ready;
    os<<auto_out_r_valid;
    os<<auto_out_r_bits_id;
    os<<auto_out_r_bits_resp;
    os<<auto_out_r_bits_last;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__value;
    os<<__PVT__bundleOut_0_aw_deq__DOT__value_1;
    os<<__PVT__bundleOut_0_aw_deq__DOT__maybe_full;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ptr_match;
    os<<__PVT__bundleOut_0_aw_deq__DOT__empty;
    os<<__PVT__bundleOut_0_aw_deq__DOT__full;
    os<<__PVT__bundleOut_0_aw_deq__DOT__do_enq;
    os<<__PVT__bundleOut_0_aw_deq__DOT__do_deq;
    os<<__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_w_deq__DOT__value;
    os<<__PVT__bundleOut_0_w_deq__DOT__value_1;
    os<<__PVT__bundleOut_0_w_deq__DOT__maybe_full;
    os<<__PVT__bundleOut_0_w_deq__DOT__ptr_match;
    os<<__PVT__bundleOut_0_w_deq__DOT__empty;
    os<<__PVT__bundleOut_0_w_deq__DOT__full;
    os<<__PVT__bundleOut_0_w_deq__DOT__do_enq;
    os<<__PVT__bundleOut_0_w_deq__DOT__do_deq;
    os<<__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os<<__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
    os<<__PVT__bundleIn_0_b_deq__DOT__value;
    os<<__PVT__bundleIn_0_b_deq__DOT__value_1;
    os<<__PVT__bundleIn_0_b_deq__DOT__maybe_full;
    os<<__PVT__bundleIn_0_b_deq__DOT__ptr_match;
    os<<__PVT__bundleIn_0_b_deq__DOT__empty;
    os<<__PVT__bundleIn_0_b_deq__DOT__full;
    os<<__PVT__bundleIn_0_b_deq__DOT__do_enq;
    os<<__PVT__bundleIn_0_b_deq__DOT__do_deq;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__value;
    os<<__PVT__bundleOut_0_ar_deq__DOT__value_1;
    os<<__PVT__bundleOut_0_ar_deq__DOT__maybe_full;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ptr_match;
    os<<__PVT__bundleOut_0_ar_deq__DOT__empty;
    os<<__PVT__bundleOut_0_ar_deq__DOT__full;
    os<<__PVT__bundleOut_0_ar_deq__DOT__do_enq;
    os<<__PVT__bundleOut_0_ar_deq__DOT__do_deq;
    os<<__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os<<__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
    os<<__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data;
    os<<__PVT__bundleIn_0_r_deq__DOT__value;
    os<<__PVT__bundleIn_0_r_deq__DOT__value_1;
    os<<__PVT__bundleIn_0_r_deq__DOT__maybe_full;
    os<<__PVT__bundleIn_0_r_deq__DOT__ptr_match;
    os<<__PVT__bundleIn_0_r_deq__DOT__empty;
    os<<__PVT__bundleIn_0_r_deq__DOT__full;
    os<<__PVT__bundleIn_0_r_deq__DOT__do_enq;
    os<<__PVT__bundleIn_0_r_deq__DOT__do_deq;
    os<<__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0;
    os<<__Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    os<<__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0;
    os<<__Vdly__bundleOut_0_aw_deq__DOT__value_1;
    os<<__Vdly__bundleIn_0_b_deq__DOT__value_1;
    os<<__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0;
    os<<__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0;
    os<<__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0;
    os<<__Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    os<<__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0;
    os<<__Vdly__bundleOut_0_ar_deq__DOT__value_1;
    os<<__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0;
    os<<__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0;
    os<<__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0;
    os<<__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0;
    os<<__Vdly__bundleIn_0_r_deq__DOT__value_1;
    os<<auto_in_aw_bits_addr;
    os<<auto_in_w_bits_data;
    os<<auto_in_ar_bits_addr;
    os<<auto_in_r_bits_data;
    os<<auto_out_aw_bits_addr;
    os<<auto_out_w_bits_data;
    os<<auto_out_ar_bits_addr;
    os<<auto_out_r_bits_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_aw_deq__DOT__initvar;
    os<<__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_w_deq__DOT__initvar;
    os<<__PVT__bundleIn_0_b_deq__DOT__initvar;
    os<<__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
    os<<__PVT__bundleOut_0_ar_deq__DOT__initvar;
    os<<__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data;
    os<<__PVT__bundleIn_0_r_deq__DOT__initvar;
    os<<__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_addr[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_len[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_size[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_burst[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_lock[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_cache[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_aw_deq__DOT__ram_prot[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_w_deq__DOT__ram_data[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_w_deq__DOT__ram_strb[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_w_deq__DOT__ram_last[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleIn_0_b_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleIn_0_b_deq__DOT__ram_resp[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_addr[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_len[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_size[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_burst[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_lock[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_cache[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleOut_0_ar_deq__DOT__ram_prot[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleIn_0_r_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleIn_0_r_deq__DOT__ram_data[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleIn_0_r_deq__DOT__ram_resp[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os<<__PVT__bundleIn_0_r_deq__DOT__ram_last[__Vi0];
    }
}
void VSocLite_AXI4Buffer::__Vdeserialize(VerilatedDeserialize& os) {
    vluint64_t __Vcheckval = 0x85ceea0f3ebc4de1ULL;
    os.readAssert(__Vcheckval);
    os >> vlSymsp->_vm_contextp__;
    os>>clock;
    os>>reset;
    os>>auto_in_aw_ready;
    os>>auto_in_aw_valid;
    os>>auto_in_aw_bits_id;
    os>>auto_in_aw_bits_len;
    os>>auto_in_aw_bits_size;
    os>>auto_in_aw_bits_burst;
    os>>auto_in_aw_bits_lock;
    os>>auto_in_aw_bits_cache;
    os>>auto_in_aw_bits_prot;
    os>>auto_in_w_ready;
    os>>auto_in_w_valid;
    os>>auto_in_w_bits_strb;
    os>>auto_in_w_bits_last;
    os>>auto_in_b_ready;
    os>>auto_in_b_valid;
    os>>auto_in_b_bits_id;
    os>>auto_in_b_bits_resp;
    os>>auto_in_ar_ready;
    os>>auto_in_ar_valid;
    os>>auto_in_ar_bits_id;
    os>>auto_in_ar_bits_len;
    os>>auto_in_ar_bits_size;
    os>>auto_in_ar_bits_burst;
    os>>auto_in_ar_bits_lock;
    os>>auto_in_ar_bits_cache;
    os>>auto_in_ar_bits_prot;
    os>>auto_in_r_ready;
    os>>auto_in_r_valid;
    os>>auto_in_r_bits_id;
    os>>auto_in_r_bits_resp;
    os>>auto_in_r_bits_last;
    os>>auto_out_aw_ready;
    os>>auto_out_aw_valid;
    os>>auto_out_aw_bits_id;
    os>>auto_out_aw_bits_len;
    os>>auto_out_aw_bits_size;
    os>>auto_out_aw_bits_burst;
    os>>auto_out_aw_bits_lock;
    os>>auto_out_aw_bits_cache;
    os>>auto_out_aw_bits_prot;
    os>>auto_out_w_ready;
    os>>auto_out_w_valid;
    os>>auto_out_w_bits_strb;
    os>>auto_out_w_bits_last;
    os>>auto_out_b_ready;
    os>>auto_out_b_valid;
    os>>auto_out_b_bits_id;
    os>>auto_out_b_bits_resp;
    os>>auto_out_ar_ready;
    os>>auto_out_ar_valid;
    os>>auto_out_ar_bits_id;
    os>>auto_out_ar_bits_len;
    os>>auto_out_ar_bits_size;
    os>>auto_out_ar_bits_burst;
    os>>auto_out_ar_bits_lock;
    os>>auto_out_ar_bits_cache;
    os>>auto_out_ar_bits_prot;
    os>>auto_out_r_ready;
    os>>auto_out_r_valid;
    os>>auto_out_r_bits_id;
    os>>auto_out_r_bits_resp;
    os>>auto_out_r_bits_last;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_len_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_size_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__value;
    os>>__PVT__bundleOut_0_aw_deq__DOT__value_1;
    os>>__PVT__bundleOut_0_aw_deq__DOT__maybe_full;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ptr_match;
    os>>__PVT__bundleOut_0_aw_deq__DOT__empty;
    os>>__PVT__bundleOut_0_aw_deq__DOT__full;
    os>>__PVT__bundleOut_0_aw_deq__DOT__do_enq;
    os>>__PVT__bundleOut_0_aw_deq__DOT__do_deq;
    os>>__PVT__bundleOut_0_w_deq__DOT__ram_strb_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_w_deq__DOT__ram_last_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_w_deq__DOT__value;
    os>>__PVT__bundleOut_0_w_deq__DOT__value_1;
    os>>__PVT__bundleOut_0_w_deq__DOT__maybe_full;
    os>>__PVT__bundleOut_0_w_deq__DOT__ptr_match;
    os>>__PVT__bundleOut_0_w_deq__DOT__empty;
    os>>__PVT__bundleOut_0_w_deq__DOT__full;
    os>>__PVT__bundleOut_0_w_deq__DOT__do_enq;
    os>>__PVT__bundleOut_0_w_deq__DOT__do_deq;
    os>>__PVT__bundleIn_0_b_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os>>__PVT__bundleIn_0_b_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
    os>>__PVT__bundleIn_0_b_deq__DOT__value;
    os>>__PVT__bundleIn_0_b_deq__DOT__value_1;
    os>>__PVT__bundleIn_0_b_deq__DOT__maybe_full;
    os>>__PVT__bundleIn_0_b_deq__DOT__ptr_match;
    os>>__PVT__bundleIn_0_b_deq__DOT__empty;
    os>>__PVT__bundleIn_0_b_deq__DOT__full;
    os>>__PVT__bundleIn_0_b_deq__DOT__do_enq;
    os>>__PVT__bundleIn_0_b_deq__DOT__do_deq;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_len_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_size_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_burst_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_lock_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_cache_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_prot_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__value;
    os>>__PVT__bundleOut_0_ar_deq__DOT__value_1;
    os>>__PVT__bundleOut_0_ar_deq__DOT__maybe_full;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ptr_match;
    os>>__PVT__bundleOut_0_ar_deq__DOT__empty;
    os>>__PVT__bundleOut_0_ar_deq__DOT__full;
    os>>__PVT__bundleOut_0_ar_deq__DOT__do_enq;
    os>>__PVT__bundleOut_0_ar_deq__DOT__do_deq;
    os>>__PVT__bundleIn_0_r_deq__DOT__ram_id_io_deq_bits_MPORT_data;
    os>>__PVT__bundleIn_0_r_deq__DOT__ram_resp_io_deq_bits_MPORT_data;
    os>>__PVT__bundleIn_0_r_deq__DOT__ram_last_io_deq_bits_MPORT_data;
    os>>__PVT__bundleIn_0_r_deq__DOT__value;
    os>>__PVT__bundleIn_0_r_deq__DOT__value_1;
    os>>__PVT__bundleIn_0_r_deq__DOT__maybe_full;
    os>>__PVT__bundleIn_0_r_deq__DOT__ptr_match;
    os>>__PVT__bundleIn_0_r_deq__DOT__empty;
    os>>__PVT__bundleIn_0_r_deq__DOT__full;
    os>>__PVT__bundleIn_0_r_deq__DOT__do_enq;
    os>>__PVT__bundleIn_0_r_deq__DOT__do_deq;
    os>>__Vdlyvdim0__bundleOut_0_aw_deq__DOT__ram_id__v0;
    os>>__Vdlyvval__bundleOut_0_aw_deq__DOT__ram_id__v0;
    os>>__Vdlyvset__bundleOut_0_aw_deq__DOT__ram_id__v0;
    os>>__Vdly__bundleOut_0_aw_deq__DOT__value_1;
    os>>__Vdly__bundleIn_0_b_deq__DOT__value_1;
    os>>__Vdlyvdim0__bundleIn_0_b_deq__DOT__ram_resp__v0;
    os>>__Vdlyvset__bundleIn_0_b_deq__DOT__ram_resp__v0;
    os>>__Vdlyvdim0__bundleOut_0_ar_deq__DOT__ram_id__v0;
    os>>__Vdlyvval__bundleOut_0_ar_deq__DOT__ram_id__v0;
    os>>__Vdlyvset__bundleOut_0_ar_deq__DOT__ram_id__v0;
    os>>__Vdly__bundleOut_0_ar_deq__DOT__value_1;
    os>>__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_resp__v0;
    os>>__Vdlyvset__bundleIn_0_r_deq__DOT__ram_resp__v0;
    os>>__Vdlyvdim0__bundleIn_0_r_deq__DOT__ram_data__v0;
    os>>__Vdlyvset__bundleIn_0_r_deq__DOT__ram_data__v0;
    os>>__Vdly__bundleIn_0_r_deq__DOT__value_1;
    os>>auto_in_aw_bits_addr;
    os>>auto_in_w_bits_data;
    os>>auto_in_ar_bits_addr;
    os>>auto_in_r_bits_data;
    os>>auto_out_aw_bits_addr;
    os>>auto_out_w_bits_data;
    os>>auto_out_ar_bits_addr;
    os>>auto_out_r_bits_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_aw_deq__DOT__initvar;
    os>>__PVT__bundleOut_0_w_deq__DOT__ram_data_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_w_deq__DOT__initvar;
    os>>__PVT__bundleIn_0_b_deq__DOT__initvar;
    os>>__PVT__bundleOut_0_ar_deq__DOT__ram_addr_io_deq_bits_MPORT_data;
    os>>__PVT__bundleOut_0_ar_deq__DOT__initvar;
    os>>__PVT__bundleIn_0_r_deq__DOT__ram_data_io_deq_bits_MPORT_data;
    os>>__PVT__bundleIn_0_r_deq__DOT__initvar;
    os>>__Vdlyvval__bundleIn_0_r_deq__DOT__ram_data__v0;
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_addr[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_len[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_size[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_burst[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_lock[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_cache[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_aw_deq__DOT__ram_prot[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_w_deq__DOT__ram_data[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_w_deq__DOT__ram_strb[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_w_deq__DOT__ram_last[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleIn_0_b_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleIn_0_b_deq__DOT__ram_resp[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_addr[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_len[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_size[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_burst[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_lock[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_cache[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleOut_0_ar_deq__DOT__ram_prot[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleIn_0_r_deq__DOT__ram_id[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleIn_0_r_deq__DOT__ram_data[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleIn_0_r_deq__DOT__ram_resp[__Vi0];
    }
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        os>>__PVT__bundleIn_0_r_deq__DOT__ram_last[__Vi0];
    }
}
