// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Prototypes for DPI import and export functions.
//
// Verilator includes this file in all generated .cpp files that use DPI functions.
// Manually include this file where DPI .c import functions are declared to ensure
// the C functions match the expectations of the DPI imports.

#ifndef VERILATED_VSOCLITE__DPI_H_
#define VERILATED_VSOCLITE__DPI_H_  // guard

#include "svdpi.h"

#ifdef __cplusplus
extern "C" {
#endif


    // DPI IMPORTS
    // DPI import at vsrc/ram.v:9:29
    extern int ram_read_helper(svBit en, int rIdx);
    // DPI import at vsrc/ram.v:1:30
    extern void ram_write_helper(int wIdx, int wdata, int wmask, svBit wen);
    // DPI import at vsrc/uart.v:1:30
    extern void uart_write_helper(int uart_data);

#ifdef __cplusplus
}
#endif

#endif  // guard
