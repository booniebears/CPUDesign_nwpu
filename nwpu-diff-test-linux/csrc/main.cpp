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

double sc_time_stamp()
{
  return 0;
}

int lastPC = 0;
int pc = 0;
int realpc = 0;
bool pc_different = true;
bool interrup_appear = false;

int main(int argc, char **argv)
{
  difftest_init();
  auto emu = Emulator();

  rtlreg_t   reg_sv[31];
  int count_pc = 0; 
  int begin = 0;
  int check = 0;
  int exec = 0;
  int target_set_cycle = -1;

  for (long long i = 0; i < 500000000; i++)
  {
    if (i%1000000 == 0) printf("now have executed %lld instructions\n",i);
      // printf("pc:0x%x,instr:0x%x\n",emu.dut_ptr->debug_wb_pc,emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_TOP_WB__DOT__WB_Instr);

    emu.step();//执行一次
    lastPC = pc;
    pc = emu.dut_ptr->debug_wb_pc;
    realpc = pc + 0x1704;
    pc_different = (pc != lastPC);
    if(pc_different)exec++;
    int wen = emu.dut_ptr->debug_wb_rf_wen;
    int wnum = emu.dut_ptr->debug_wb_rf_wnum;
    int wdata = emu.dut_ptr->debug_wb_rf_wdata;
    int winstr = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_inst_r;
    int *arr = (int *)&(emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__id_stage__DOT__u_regfile__DOT__rf); //获取寄存器的值
    int store_wen = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__data_wstrb_r;
    int store_data = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__data_wdata_r;
    int store_vaddr = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__wb_stage__DOT__ws_final_result_r;
    int CP0_Compare = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Compare;
    int CP0_Count = emu.dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__m1_stage__DOT__u_CP0_Reg__DOT__CP0_Count;
    int emu_timer_interrupt = (CP0_Compare == CP0_Count);
    int prc_store_len = 0;
    int prc_store_data = 0;


    // if(emu_timer_interrupt || interrup_appear)
    // {
    //   interrup_appear = true;
    //   std::cout << "PC is: " << std::hex << pc << std::endl;
    //   // difftest_handle_timer_int();
    //   if(pc == 0x8000c9a4)
    //   {
    //     HINT
    //     char c = getchar();
    //     if(c=='q')
    //       assert(0);
    //   }

    //   char c = getchar();

    //   if(c=='q')
    //     assert(0);
    //   continue;
    // }
      // for emu timerinterrupt need to delay 2 cycle then commit to nemu
      if (emu_timer_interrupt){
        target_set_cycle=exec;
      }

      // #ifdef VM_SAVEABLE
      // if (i%100 == 0)
      // printf("pc:0x%x,instr:0x%x",pc,winstr);
      // #endif

      // abort when detecting 10000 nop 1n a row & emu slience for 20000 clk
      if (winstr == 0 && begin == 1 && wen ) check++;
      else if (winstr != 0 ) check = 0;
      if (check == 10000 ||exec > 20000 ){
        if (check == 10000){
          printf("\n fail!! , with 10000 times instr = 0\n");
          printf("current pc 0x%08x",realpc-40);
        }
        else if (exec>20000){
          printf("\nslience for 20000 clk!!!\n");
          printf("current pc 0x%08x",realpc);
        }
        disp_rertire_queue();
        emu.print_info(realpc,winstr,reg_sv);
        assert(0);
      }
      #ifdef VM_SAVEABLE
      begin = 1;
      #else
      // wait until emu first commit 
      if(pc == 0x80202aec){begin = 1;}
      #endif
      // std::cout <<"pc is:" << std::hex << pc << std::endl;
      // getchar();
      // printf("333\n");

      //pretreatment for sim 
      // std::cout <<"begin is:" << begin << std::endl;
      if((wen || store_wen !=0 )&& begin &&(pc !=0 && wdata !=0)){
          exec = 0;
          //forwarding in WB
          emu.emu_get_regs(reg_sv,arr);
          if (wen){
            reg_sv[wnum] = wdata;  // forwarding for WB
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
         if (pc_different && difftest_rtl_nemu(reg_sv,realpc,winstr,prc_store_len,prc_store_data,store_vaddr,wdata,wnum))
         {
           printf("WRONG!!!\n");
           emu.print_info(realpc,winstr,reg_sv);
            // tfp->close();
           emu.tfp->close();
           assert(0);
         }
      }
      // first process commit in WB then process timer interrupt
      if (exec==target_set_cycle){
        HINT
          FILE * fp = fopen("./save_restore/save_nemu_ti.txt","a");
          // set timer interrupt 
          difftest_handle_timer_int();
          target_set_cycle = -1;
          fprintf(fp,"%d\n",nemu_ninstr);
          fclose(fp);
      }
      if (i%10000000 == 0 && i != 0){
        emu.save_present_state(emu.dut_ptr,nemu_ninstr);
      }
  }
  printf("\n\naftering executing No Error!!!\n\n");
}
