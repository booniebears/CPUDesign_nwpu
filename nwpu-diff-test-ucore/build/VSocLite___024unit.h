// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VSocLite.h for the primary calling header

#ifndef VERILATED_VSOCLITE___024UNIT_H_
#define VERILATED_VSOCLITE___024UNIT_H_  // guard

#include "verilated.h"
#include "verilated_save.h"

class VSocLite__Syms;
VL_MODULE(VSocLite___024unit) {
  public:

    // INTERNAL VARIABLES
    VSocLite__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
    VSocLite___024unit(const char* name);
    ~VSocLite___024unit();
    VL_UNCOPYABLE(VSocLite___024unit);

    // INTERNAL METHODS
    void __Vconfigure(VSocLite__Syms* symsp, bool first);
    void __Vserialize(VerilatedSerialize& os);
    void __Vdeserialize(VerilatedDeserialize& os);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
