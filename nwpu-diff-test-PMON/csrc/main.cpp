#include "VSocLite.h"
#include "VSocLite___024root.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "common.h"
#include "ram.h"
#include "difftest.h"
#define trace_enable 0
//差分测试New add
#include <stdio.h>
#include <stdlib.h>
#include "/usr/include/dlfcn.h"
#include <cassert>
#include "emu.h"
// typedef unsigned long long   uint64_t;
// typedef uint64_t paddr_t;

unsigned end_pc = 0xa000015c;
unsigned int nowPoint = 0;
unsigned int scores = 0;
int have_print = 0;
int lastPC = 0;
int pc = 0;
bool pc_different = true;
int circleTime;
int end;

double sc_time_stamp()
{
  return 0;
}

int main(int argc, char **argv)
{
  auto emu = Emulator();

  difftest_init();
  rtlreg_t reg_sv[31];
  int count_pc = 0;
  int begin = 0;
  int check = 0;
  int exec = 0;
  for (int i = 0; i < 2000000000; i++)
  {
    if (i % 10000000 == 0)
      printf("now have executed %d instructions\n", i);

        emu.step(); //执行一次

        exec++;
    lastPC = pc;
    pc = emu.dut_ptr->debug_wb_pc;
    pc_different = (pc != lastPC);
    int wen = emu.dut_ptr->debug_wb_rf_wen;
    int wnum = emu.dut_ptr->debug_wb_rf_wnum;
    int wdata = emu.dut_ptr->debug_wb_rf_wdata;
    int winstr = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_inst_r;
    int *arr = (int *)&(emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf); //获取寄存器的值
    int store_wen = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__data_wstrb_r;
    int store_data = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__data_wdata_r;
    int store_vaddr = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_final_result_r;
    // int emu_timer_interrupt = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__Time_int;
    int prc_store_len = 0;
    int prc_store_data = 0;

    // abort when detecting 10 nop 1n a row & slience for 2000 clk
    if (winstr == 0 && begin == 1 && wen)
      check++;
    else if (winstr != 0)
      check = 0;
    if (check == 100 || exec > 2000)
    {
      if (check == 100)
      {
        printf("\n fail!! , with 100 times instr = 0\n");
        printf("current pc 0x%08x", pc - 40);
      }
      else if (exec > 2000)
      {
        printf("\nslience for 2000 clk!!!\n");
        printf("current pc 0x%08x", pc);
      }
      disp_rertire_queue();
      emu.print_info(pc, winstr, reg_sv);
      assert(0);
    }

    // wait until emu first commit
    if (pc == 0xbfc00000)
    {
      begin = 1;
    }

    // pretreatment for sim
    if ((wen || store_wen != 0) && begin && (pc != 0 && wdata != 0))
    {
      // std::cout << "[main] wen is      : " << wen << std::endl;
      // std::cout << "[main] store_wen is: " << store_wen << std::endl;
      exec = 0;
      // forwarding in WB
      emu.emu_get_regs(reg_sv, arr);
      if (wen)
      {
        reg_sv[wnum] = wdata; // forwarding for WB
      }

      // handle store type compare , change emu store to nemu store mode!!!
      switch (store_wen)
      {
      case 1:
        prc_store_len = 1;
        prc_store_data = store_data & 0xff;
        break;
      case 2:
        prc_store_len = 1;
        prc_store_data = (store_data & 0xff00) >> 8;
        break;
      case 3:
        prc_store_len = 2;
        prc_store_data = store_data & 0xffff;
        break;
      case 4:
        prc_store_len = 1;
        prc_store_data = (store_data & 0xff0000) >> 16;
        break;
      case 8:
        prc_store_len = 1;
        prc_store_data = (store_data & 0xff000000) >> 24;
        break;
      case 12:
        prc_store_len = 2;
        prc_store_data = (store_data & 0xffff0000) >> 16;
        break;
      case 15:
        prc_store_len = 4;
        prc_store_data = store_data;
        break;
      }

          /********************start difftest****************************/
      if (pc_different && difftest_rtl_nemu(reg_sv, pc, winstr, prc_store_len, prc_store_data, store_vaddr, wdata, wnum))
      {
            
            printf("WRONG!!!\n");
            emu.print_info(pc, winstr, reg_sv);
            emu.step(); 
            // tfp->close();
            emu.tfp->close();

            assert(0);

      }
    }

        // first process commit in WB then process timer interrupt
    // if (emu_timer_interrupt == 1)
    // {
    //   // set timer interrupt
    //   difftest_handle_timer_int();
    // }
  }
  printf("\n\naftering executing No Error!!!\n\n");
}
