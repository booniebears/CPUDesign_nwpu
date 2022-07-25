#ifndef EMU
#define EMU

#include "VSocLite.h"
#include "VSocLite___024root.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "common.h"
#include "ram.h"
#include "difftest.h"
#include <stdio.h>
#include <stdlib.h>
#include "/usr/include/dlfcn.h"
#include <cassert>
extern const char *reg_name[32];
class Emulator{
    public : VSocLite *dut_ptr;
    public : VerilatedVcdC *tfp;
    public :
        Emulator();      
        void emu_get_regs(rtlreg_t*,int*);
        void reset(int );
        void step();
        void execute();
        void print_info(int,int,rtlreg_t *);

};

#endif