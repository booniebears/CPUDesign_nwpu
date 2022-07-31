// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VSOCLITE__SYMS_H_
#define VERILATED_VSOCLITE__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VSocLite.h"

// INCLUDE MODULE CLASSES
#include "VSocLite___024root.h"
#include "VSocLite___024unit.h"
#include "VSocLite_AXI4Buffer.h"
#include "VSocLite_simple_port_lutram__S100_D15.h"
#include "VSocLite_simple_port_ram__S100.h"

// DPI TYPES for DPI Export callbacks (Internal use)

// SYMS CLASS (contains all model state)
class VSocLite__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VSocLite* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VSocLite___024root             TOP;
    VSocLite_AXI4Buffer            TOP__SocLite__DOT__axi4buf;
    VSocLite_AXI4Buffer            TOP__SocLite__DOT__axi4buf_1;
    VSocLite_AXI4Buffer            TOP__SocLite__DOT__axi4buf_2;
    VSocLite_simple_port_lutram__S100_D15 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_lutram__S100_D15 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank;
    VSocLite_simple_port_lutram__S100_D15 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank;
    VSocLite_simple_port_lutram__S100_D15 TOP__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag;
    VSocLite___024unit             TOP____024unit;

    // SCOPE NAMES
    VerilatedScope __Vscope_SocLite__axi4xbar;
    VerilatedScope __Vscope_SocLite__axi_ram;
    VerilatedScope __Vscope_SocLite__confreg_wrapper__u_confreg;

    // CONSTRUCTORS
    VSocLite__Syms(VerilatedContext* contextp, const char* namep, VSocLite* modelp);
    ~VSocLite__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
    void __Vserialize(VerilatedSerialize& os);
    void __Vdeserialize(VerilatedDeserialize& os);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
