#include "emu.h"


const char *reg_name[32] = {
  "$0", "at", "v0", "v1", "a0", "a1", "a2", "a3",
  "t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7",
  "s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7",
  "t8", "t9", "k0", "k1", "gp", "sp", "fp", "ra"};
// VerilatedVcdC *tfp = NULL;
int vcdstep = 0;
int nowclock = 0;
long long traceclockup   = 2000000000;//小于Traceclockup则开始记录波形
long long traceclockdown = 233500000;//大于Traceclockdown则开始记录波形
Emulator:: Emulator()
{
    dut_ptr = new VSocLite;
    // const char* command[2];
    // command[0]="-b";
    // command[1]="-i";
    // command[2]="/root/nemu-mips32/nemu-mips32/build/gzrom-NO-PASSWORD.bin";
    // ref_napi_init(3,command);
    // printf("Initial NEMU Finish\n");
    // init_ram("./ceo/ucore.coe");   // ceo/ucore.coe
    init_ram("./ceo/gzrom.coe");   // pmon.coe
    //vcd
    tfp = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    dut_ptr->trace(tfp, 99);
    tfp->open("./build/difftest.vcd");
    //vcdend
    reset(100);
    printf("Reset finish, start running\n\n");
    printf("=======================\n\n");
}

void Emulator::emu_get_regs(rtlreg_t *r,int* arr)
{
    for (int i = 0; i < 32; i++)
        r[i] = *(arr+i);
}

// reset
void Emulator::reset(int n)
{
    nowclock += n;
    for (int i = 0; i < n; i++)
    {
        dut_ptr->reset = 1;
        dut_ptr->clock = 0;
        dut_ptr->eval();
        tfp->dump(vcdstep++);
        dut_ptr->clock = 1;
        dut_ptr->eval();
        tfp->dump(vcdstep++);
        // dut_ptr->reset = 0;
    }
        dut_ptr->reset = 0;
    
}
// single_step
void Emulator::step()
{
        if(nowclock>traceclockdown && nowclock <traceclockup){//大于Traceclock则开始记录波形
            dut_ptr->clock = 0;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
            dut_ptr->clock = 1;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
        }else{
            dut_ptr->clock = 0;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
            dut_ptr->clock = 1;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
        }
        nowclock++;
            // dut_ptr->clock = 0;
            // dut_ptr->eval();
            // dut_ptr->clock = 1;
            // dut_ptr->eval();
}

void Emulator::execute()
{
    // while(n>0){
    //     this.step();
    //     n--;


    // }


}
void Emulator::print_info(int pc,int instr,rtlreg_t *reg_sv)
{
     printf("Verilator PC:0x%08x Instr:%08x\n",pc,instr);
        //   printf("\nNum:%x Data:%x\n",wnum,wdata);
          printf("Regs:--------------------------\n");
          for (int i = 0; i <= 31; i++)
          {
            printf("%s:%08x\t",reg_name[i],reg_sv[i]);
            if(i%4==3){
              printf("\n");
            }
          }
          printf("\nRegs_end-----------------------\n\n");
          printf("now execute instructions:%d !!! \n\n\n",nowclock);
}
