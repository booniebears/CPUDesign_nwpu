#include "VSocLite.h"
#include "VSocLite___024root.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include "common.h"
#include "ram.h"


unsigned end_pc=0xbfc00100;
unsigned int nowPoint = 0;
unsigned int scores = 0;
int have_print=0;
unsigned int lastPC;
int circleTime;
int end;
double sc_time_stamp()
{
  return 0;
}

int trace(VSocLite *dut_ptr, FILE *fp, int if_print)
{
  // FILE *fp = fopen(trace_file, "r");
  // if (fp == NULL)
  // {
  //   printf("Can not open %s\n", trace_file);
  //   assert(0);
  // }
  char line[256];
  unsigned int flag;
  unsigned int pc;
  unsigned int wnum;
  unsigned int wdata;
  unsigned int wen;

  unsigned int ref_flag;
  unsigned int ref_pc;
  unsigned int ref_wnum;
  unsigned int ref_wdata;
  //   output [31:0] debug_wb_pc,
  //   output        debug_wb_rf_wen,
  //   output [4:0]  debug_wb_rf_wnum,
  //   output [31:0] debug_wb_rf_wdata
  flag = dut_ptr->rootp->SocLite__DOT__confreg_wrapper__DOT__u_confreg__DOT__open_trace;
  pc = dut_ptr->debug_wb_pc;
  wen = dut_ptr->debug_wb_rf_wen;
  wnum = dut_ptr->debug_wb_rf_wnum;
  wdata = dut_ptr->debug_wb_rf_wdata;

  if(pc==end_pc){
      end=1;
      return 1;
  }

  if (if_print)
  {
    printf("now pc is %x\n\n", pc);
  }
  // if (wen && wnum!=0)
  // {
//
    // if (wnum == 16)
    // {
      // nowPoint = wdata;
    // }
    // if (wnum == 19)
    // {
      // scores = wdata;
      // have_print=0;
    // }
    // if (nowPoint > scores + 1 &&nowPoint)
    // {
      // printf("\n\nnow:%d score:%d\n",nowPoint,scores);
      // printf("\n\n=====unknown error occur====\n");
      // printf("pc:0x%x\twnum:0x%x\twdata:0x%x\n", pc, wnum, wdata);
      // return 0;
    // }
    // else if (nowPoint == scores && scores && !have_print)
    // {
      // have_print=1;
      // printf("\n---- Number %d Functional Test Point PASS!!!\n", scores);
    // }
//
    // ref_flag=0;
    // while(flag &&!ref_flag && !feof(fp)){
        // fscanf(fp, "%d %x %x %x", &ref_flag, &ref_pc, &ref_wnum, &ref_wdata);
        // printf("%d %x %x %x\n", ref_flag, ref_pc, ref_wnum, ref_wdata);
    // }
    // if (flag &&(ref_pc != pc || ref_wdata != wdata || ref_wnum != wnum))
    // {
      // printf("\n\n========ERROR==========\n");
      // printf("standard:\n");
      // printf("pc:0x%x\twnum:0x%x\twdata:0x%x\n", ref_pc, ref_wnum, ref_wdata);
      // printf("errors:\n");
      // printf("pc:0x%x\twnum:0x%x\twdata:0x%x\n", pc, wnum, wdata);
      // return 0;
    // }
  // }
  return 1;
}

void reset(VSocLite *dut_ptr)
{
  for (int i = 0; i < 100; i++)
  {
    dut_ptr->reset = 1;
    dut_ptr->clock = 0;
    dut_ptr->eval();
    dut_ptr->clock = 1;
    dut_ptr->eval();
    dut_ptr->reset = 0;
  }
}

void step(VSocLite *dut_ptr)
{
  dut_ptr->clock = 0;
  dut_ptr->eval();
  dut_ptr->clock = 1;
  dut_ptr->eval();
}

int main(int argc, char **argv)
{
  VSocLite *dut_ptr = new VSocLite;
  init_ram("./ceo/stream_copy.coe");
  char tracefile[] = "./golden_trace.txt";
  FILE *fp = fopen(tracefile, "r");
  if (fp == NULL)
  {
    printf("Can not open %s\n", tracefile);
    assert(0);
  }
  //
  VerilatedVcdC *tfp = new VerilatedVcdC;
  Verilated::traceEverOn(true);
  dut_ptr->trace(tfp, 99);
  tfp->open("./build/run.vcd");
  //   reset(dut_ptr);
  int i = 0;
  dut_ptr->clock = 1;
  for (i = 0; i < 100; i++)
  {
    dut_ptr->reset = 1;
    dut_ptr->clock = !dut_ptr->clock;
    dut_ptr->eval();

    tfp->dump(i);
  }
  dut_ptr->reset = 0;
  printf("Reset finish, start running\n\n");
  printf("=======================\n\n");
  for (; !Verilated::gotFinish(); i++)
  {
    dut_ptr->clock = !dut_ptr->clock;

    dut_ptr->eval();
    tfp->dump(i);
    if (!dut_ptr->clock)
    {
      int if_print = (i % 300 == 0);

      if (!trace(dut_ptr, fp, 0))
      {

        printf("pass %d points\n",scores);
        break;
      }
      else if(end){

          printf("\n\n----Test End\nPass!!!\n");
          break;
      }
    }
  }
  tfp->close();

  delete dut_ptr;
}
