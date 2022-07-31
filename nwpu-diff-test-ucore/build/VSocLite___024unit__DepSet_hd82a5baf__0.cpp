// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VSocLite.h for the primary calling header

#include "verilated.h"
#include "verilated_dpi.h"

#include "VSocLite__Syms.h"
#include "VSocLite___024unit.h"

extern "C" void uart_write_helper(int uart_data);

VL_INLINE_OPT void VSocLite___024unit____Vdpiimwrap_uart_write_helper_TOP____024unit(IData/*31:0*/ uart_data) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite___024unit____Vdpiimwrap_uart_write_helper_TOP____024unit\n"); );
    // Body
    int uart_data__Vcvt;
    for (size_t uart_data__Vidx = 0; uart_data__Vidx < 1; ++uart_data__Vidx) uart_data__Vcvt = uart_data;
    uart_write_helper(uart_data__Vcvt);
}

extern "C" void ram_write_helper(int wIdx, int wdata, int wmask, svBit wen);

VL_INLINE_OPT void VSocLite___024unit____Vdpiimwrap_ram_write_helper_TOP____024unit(IData/*31:0*/ wIdx, IData/*31:0*/ wdata, IData/*31:0*/ wmask, CData/*0:0*/ wen) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite___024unit____Vdpiimwrap_ram_write_helper_TOP____024unit\n"); );
    // Body
    int wIdx__Vcvt;
    for (size_t wIdx__Vidx = 0; wIdx__Vidx < 1; ++wIdx__Vidx) wIdx__Vcvt = wIdx;
    int wdata__Vcvt;
    for (size_t wdata__Vidx = 0; wdata__Vidx < 1; ++wdata__Vidx) wdata__Vcvt = wdata;
    int wmask__Vcvt;
    for (size_t wmask__Vidx = 0; wmask__Vidx < 1; ++wmask__Vidx) wmask__Vcvt = wmask;
    svBit wen__Vcvt;
    for (size_t wen__Vidx = 0; wen__Vidx < 1; ++wen__Vidx) wen__Vcvt = wen;
    ram_write_helper(wIdx__Vcvt, wdata__Vcvt, wmask__Vcvt, wen__Vcvt);
}

extern "C" int ram_read_helper(svBit en, int rIdx);

VL_INLINE_OPT void VSocLite___024unit____Vdpiimwrap_ram_read_helper_TOP____024unit(CData/*0:0*/ en, IData/*31:0*/ rIdx, IData/*31:0*/ &ram_read_helper__Vfuncrtn) {
    VL_DEBUG_IF(VL_DBG_MSGF("+        VSocLite___024unit____Vdpiimwrap_ram_read_helper_TOP____024unit\n"); );
    // Body
    svBit en__Vcvt;
    for (size_t en__Vidx = 0; en__Vidx < 1; ++en__Vidx) en__Vcvt = en;
    int rIdx__Vcvt;
    for (size_t rIdx__Vidx = 0; rIdx__Vidx < 1; ++rIdx__Vidx) rIdx__Vcvt = rIdx;
    int ram_read_helper__Vfuncrtn__Vcvt;
    ram_read_helper__Vfuncrtn__Vcvt = ram_read_helper(en__Vcvt, rIdx__Vcvt);
    ram_read_helper__Vfuncrtn = ram_read_helper__Vfuncrtn__Vcvt;
}
