`include "global_defines.vh"

module pre_if_stage(
    input                          clk,
    input                          reset,
    //allowin                  
    input                          fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    input  [`BPU_TO_PS_BUS_WD-1:0] BPU_to_ps_bus,
    //to ds
    output [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    output                         ps_to_fs_valid,

    input                          flush, //flush=1ʱ������Ҫ�����쳣
    input                          flush_refill, //��֪PRE-IF�׶� M!�׶δ�����������TLB Refill
    input  [31:0]                  CP0_EPC_out, //CP0�Ĵ�����,EPC��ֵ
    input                          m1s_inst_eret,

    //CPU��ICache�Ľ����ź�����
 
    output     [ 7:0]              inst_index,
    output     [19:0]              inst_tag,
    output     [ 3:0]              inst_offset,
    input                          icache_busy, //
    //������תָ����ID�׶�ʱ�����ӳٲ������һ��ָ���Ѿ�����prefs_pc����,�������ж�ʱ��ҪУ��
    output reg [31:0]              prefs_pc,
    input                          ITLB_found,
    input      [ 3:0]              ITLB_index,
    input      [19:0]              ITLB_pfn,
    input      [ 2:0]              ITLB_c,
    input                          ITLB_d,
    input                          ITLB_v,
    input      [3:0]               ITLB_asid,
    input                          TLB_Buffer_Flush,
    output                         inst_valid_end
);

wire         ps_ready_go;
wire         ps_allowin;

wire [31:0]  ITLB_RAddr; //ʵ��ַ
wire         ps_ex;
wire         ADEL_ex;//����ȡָ���ַ������ADEL
wire         ITLB_EX_Refill;
wire         ITLB_EX_Invalid;
wire [4:0]   ps_Exctype;
wire         ITLB_Buffer_Wr  ;
wire         ITLB_Buffer_Stall;
wire         ITLB_Buffer_Valid_ps;
reg          inst_valid         ;
//PC_reg
reg   [31:0] nextpc;
wire  [31:0] seq_pc;
reg          flush_delayed;

wire         br_taken;
wire [ 31:0] br_target;
wire         br_stall;      //ID�׶μ�⵽branchָ��,����loadָ����EXE�׶�,�޷�ʹ��forward,������ͣ
wire         prefs_bdd; //��תָ���������?

wire [31:0]  BPU_target;
wire         BPU_valid;

assign {BPU_target,BPU_valid} = BPU_to_ps_bus;

assign {br_stall,br_taken,br_target} = br_bus; 
assign ps_ready_go    = ~icache_busy;
assign ps_allowin     = flush ? 1'b1 : fs_allowin & ps_ready_go;
assign ps_to_fs_valid = ps_ready_go;
assign ps_to_fs_bus   = {
                          inst_valid_end, //39:39
                          prefs_bdd, //38:38
                          prefs_pc, //37:6
                          ps_ex,      //5:5
                          ps_Exctype  //4:0
                        };

assign seq_pc = prefs_pc + 3'd4;
always @(*) begin //nextpc
    if(m1s_inst_eret)
        nextpc = CP0_EPC_out;
    else if(flush) begin
        if(flush_refill) 
            nextpc = `REFILL_EX_PC;
        else 
            nextpc = `GENERAL_EX_PC;
    end
    else if(br_taken)
        nextpc = br_target;
    else if(BPU_valid)
        nextpc = BPU_target;
    else
        nextpc = seq_pc;
end

always @(posedge clk) begin //prefs_pc
    if(reset)
        prefs_pc <= `RESET_PC;
    else if((~icache_busy & ps_allowin) | flush)
        prefs_pc <= nextpc;
end

ITLB_stage ITLB(
        .clk                  (clk                 ),
        .reset                (reset               ),
        .ITLB_found           (ITLB_found          ),
        .ITLB_VAddr           (prefs_pc            ), 
        .ITLB_RAddr           (ITLB_RAddr          ),
        .ITLB_index           (ITLB_index          ),
        .ITLB_pfn             (ITLB_pfn            ),
        .ITLB_asid            (ITLB_asid           ),
        .ITLB_c               (ITLB_c              ),
        .ITLB_d               (ITLB_d              ),
        .ITLB_v               (ITLB_v              ),
        .ITLB_EX_Refill       (ITLB_EX_Refill      ),
        .ITLB_EX_Invalid      (ITLB_EX_Invalid     ),
        .ITLB_Buffer_Wr       (ITLB_Buffer_Wr      ),
        .ITLB_Buffer_Stall    (ITLB_Buffer_Stall   ),
        .TLB_Buffer_Flush     (TLB_Buffer_Flush    ),
        .ITLB_Buffer_Valid_ps (ITLB_Buffer_Valid_ps)
);

assign ADEL_ex    = prefs_pc[1:0] == 2'b00 ? 1'b0 : 1'b1; 
assign ps_ex      = ADEL_ex | ITLB_EX_Refill | ITLB_EX_Invalid;
assign ps_Exctype = ADEL_ex         ? `AdEL            :
                    ITLB_EX_Refill  ? `ITLB_EX_Refill  : 
                    ITLB_EX_Invalid ? `ITLB_EX_Invalid : `NO_EX;

/*******************CPU��ICache�Ľ����źŸ�ֵ����******************/
always @(posedge clk) begin
    if(reset) 
        flush_delayed <= 1'b0;
    else if(flush)
        flush_delayed <= 1'b1;
    else if(~icache_busy)
        flush_delayed <= 1'b0;
end

assign prefs_bdd = br_taken; //br_taken = 1,����prefs_pc��Ӧָ������תָ���������?
always @(*) begin
    if(flush_delayed & ~icache_busy)
        inst_valid = 1'b1;
    else if(prefs_pc[1:0] != 2'b00)
        inst_valid = 1'b0;
    else if(~icache_busy & ps_allowin) begin
        // if(br_taken & ~br_stall) 
        //     inst_valid = 1'b0;
        // else
            inst_valid = 1'b1;
    end
    else
        inst_valid = 1'b0;
end

assign inst_valid_end = inst_valid && ITLB_Buffer_Valid_ps;
assign {inst_tag,inst_index,inst_offset} = ITLB_RAddr;
/*******************CPU��ICache�Ľ����źŸ�ֵ����******************/
endmodule
