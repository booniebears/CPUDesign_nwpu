// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VSOCLITE_H_
#define VERILATED_VSOCLITE_H_  // guard

#include "verilated.h"
#include "verilated_save.h"
#include "svdpi.h"

class VSocLite__Syms;
class VSocLite___024root;
class VerilatedVcdC;
class VSocLite___024unit;
class VSocLite_AXI4Buffer;
class VSocLite_simple_port_lutram__S100_D15;
class VSocLite_simple_port_ram__S100;


// This class is the main interface to the Verilated model
class VSocLite VL_NOT_FINAL {
  private:
    // Symbol table holding complete model state (owned by this class)
    VSocLite__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(&clock,0,0);
    VL_IN8(&reset,0,0);
    VL_OUT8(&debug_wb_rf_wen,0,0);
    VL_OUT8(&debug_wb_rf_wnum,4,0);
    VL_OUT(&debug_wb_pc,31,0);
    VL_OUT(&debug_wb_rf_wdata,31,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    VSocLite___024unit* const __PVT____024unit;
    VSocLite_AXI4Buffer* const __PVT__SocLite__DOT__axi4buf;
    VSocLite_AXI4Buffer* const __PVT__SocLite__DOT__axi4buf_1;
    VSocLite_AXI4Buffer* const __PVT__SocLite__DOT__axi4buf_2;
    VSocLite_simple_port_lutram__S100_D15* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__ram_tag;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank;
    VSocLite_simple_port_lutram__S100_D15* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__ram_tag;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__ram_bank;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_Icache__DOT__genblk4__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__ram_bank;
    VSocLite_simple_port_lutram__S100_D15* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__dcache_ram_tag;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_lutram__S100_D15* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__dcache_ram_tag;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__2__KET____DOT__dcache_ram_data;
    VSocLite_simple_port_ram__S100* const __PVT__SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_DCache__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__3__KET____DOT__dcache_ram_data;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VSocLite___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VSocLite(VerilatedContext* contextp, const char* name = "TOP");
    explicit VSocLite(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VSocLite();
  private:
    VL_UNCOPYABLE(VSocLite);  ///< Copying not allowed

  public:
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    /// Return current simulation context for this model.
    /// Used to get to e.g. simulation time via contextp()->time()
    VerilatedContext* contextp() const;
    /// Retrieve name of this model instance (as passed to constructor).
    const char* name() const;

    // Serialization functions
    friend VerilatedSerialize& operator<<(VerilatedSerialize& os, VSocLite& rhs);
    friend VerilatedDeserialize& operator>>(VerilatedDeserialize& os, VSocLite& rhs);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
