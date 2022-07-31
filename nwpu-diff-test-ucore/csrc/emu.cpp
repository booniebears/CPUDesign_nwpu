#include "emu.h"
#include "common.h"

const char *reg_name[32] = {
  "$0", "at", "v0", "v1", "a0", "a1", "a2", "a3",
  "t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7",
  "s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7",
  "t8", "t9", "k0", "k1", "gp", "sp", "fp", "ra"};
// VerilatedVcdC *tfp = NULL
int vcdstep = 0;
int nowclock = 0;
// 记录Traceclockdown   -->>  Traceclockup 波形
int traceclockup   = 500000000;
int traceclockdown = 393200000; 
Emulator:: Emulator()
{
    /****************** restore !!!****************/
    #ifdef VM_SAVEABLE 
    int restore_nemu_instr = 0;
    restore_ram_file = fopen("./save_restore/save_ram.txt","r");
    restore_nemu     = fopen("./save_restore/save_nemu.txt","r");
    assert(restore_ram_file);
    assert(restore_nemu);
    /******************restore state*************/
    printf("start to restore data from file!!!\n");
    HINT
    fscanf(restore_nemu,"%d",&restore_nemu_instr);
    HINT
    restore_ram(restore_ram_file);        // restore data 
    HINT
    printf("resore ram_finish\n");
    nemu_state_restore(restore_nemu_instr); // restore nemu_exec_cycles 
    HINT
    printf("restore nemu finish\n");

    /****************restore model **************/
    restore_dut_ptr  = "./save_restore/save_dut_ptr";
    VerilatedRestore os;
    dut_ptr = new VSocLite;
    os.open(restore_dut_ptr);
    // assert(os);
    HINT
    os >> *dut_ptr;
    HINT
    printf("dut_ptr_finish\n");
    // printf("Emu restore pc:0x%x,instr:0x%x\n",dut_ptr->debug_wb_pc,dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_TOP_WB__DOT__WB_Instr);
    #else 
    dut_ptr = new VSocLite;
    init_ram("./ceo/ucore.coe");        // ceo/ucore.coe
    // init_ram("./ceo/axi_ram.coe");   // ceo/ucore.coe
    /*********************reset *****************/
    reset(100);
    printf("Reset finish, start running\n\n");
    printf("=======================\n\n");
    #endif

    /*******************vcd init*****************/
    tfp = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    dut_ptr->trace(tfp, 99);
    tfp->open("./build/difftest.vcd");
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
        dut_ptr->clock = 1;
        dut_ptr->eval();
    }
        dut_ptr->reset = 0;
    
}
// single_step
void Emulator::step()
{
        // printf("nowclk%d , traceclk%d \n",nowclock,traceclockup);
        if(nowclock>=traceclockdown && nowclock <=traceclockup){//大于Traceclock则开始记录波形
            dut_ptr->clock = 0;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
            dut_ptr->clock = 1;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
            // printf("exec over");
        }else{
            dut_ptr->clock = 0;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
            dut_ptr->clock = 1;
            dut_ptr->eval();
            // tfp->dump(vcdstep++);
        }
        nowclock++;
}

void Emulator::execute()
{

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

void Emulator::save_present_state(VSocLite*dut_ptr,uint32_t nemu_ninstr)
{
    /***************save ram & nemu***************/
    printf("\nstart to save present state into files!!!\n");
    save_ram_file = fopen("./save_restore/save_ram.txt", "w");        // open as only write mode will clear the file
    assert(save_ram_file);
    save_nemu = fopen("./save_restore/save_nemu.txt","w"); // open as only write mode will clear the file
    assert(save_nemu);
    fprintf(save_nemu,"%d",nemu_ninstr);
    save_ram(save_ram_file);  
    fclose(save_nemu);

    /***************save model***************/
    save_dut_ptr_file = "./save_restore/save_dut_ptr";
    VerilatedSave os;
    FILE *fp = fopen(save_dut_ptr_file,"w");  // clear
    fclose(fp);
    os.open(save_dut_ptr_file);
    // os << main_time;  // user code must save the timestamp, etc
    os << *dut_ptr;
    // printf("pc:0x%x,instr:0x%x\n",dut_ptr->debug_wb_pc,dut_ptr->rootp->SocLite__DOT__axi_cpu__DOT__my_cpu__DOT__U_TOP_WB__DOT__WB_Instr);

    printf("finish saving files !!!\n");
}

