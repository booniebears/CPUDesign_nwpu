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
    public :
    VSocLite *dut_ptr;
    VerilatedVcdC *tfp;
    FILE *save_ram_file;
    FILE *save_nemu;
    char *save_dut_ptr_file;
    #ifdef VM_SAVEABLE
    FILE *restore_ram_file;
    FILE *restore_nemu;
    char *restore_dut_ptr;
    #endif
    public :
        Emulator();      
        void emu_get_regs(rtlreg_t*,int*);
        void reset(int );
        void step();
        void execute();
        void print_info(int,int,rtlreg_t *);
        // save present state ! 
        // #ifdef VM_SAVEABLE
        void save_present_state(VSocLite*,uint32_t);
        // #endif

};

#endif