`include "global_defines.vh"

module pre_if_stage(
    input                          clk,
    input                          reset,
    //allowin                  
    input                          fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    //to ds
    output [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    output                         ps_to_fs_valid,

    input                          flush, //flush=1时表明需要处理异常
    // output reg                     flush_r, //flush=1时表明需要处理异常
    input                          flush_refill, //告知PRE-IF阶段 M!阶段处理的例外是TLB Refill
    input  [31:0]                  CP0_EPC_out, //CP0寄存器中,EPC的值
    input                          m1s_inst_eret,

    //CPU和ICache的交互信号如下
    output reg                     inst_valid,
    output     [ 7:0]              inst_index,
    output     [19:0]              inst_tag,
    output     [ 3:0]              inst_offset,
    input                          icache_busy, //
    // input             mfc0_stall, //TODO: 临时把mfc0_stall信号送到IF阶段,确保nextpc跳转的正确性
    input                          ITLB_found,
    input      [ 3:0]              ITLB_index,
    input      [19:0]              ITLB_pfn,
    input      [ 2:0]              ITLB_c,
    input                          ITLB_d,
    input                          ITLB_v,
    input      [3:0]               ITLB_asid
    // input             ds_ex,
    // input             es_ex,
    // input             m1s_ex
);

wire         ps_ready_go;
wire         ps_allowin;

wire [31:0]  ITLB_RAddr; //实地址
wire         ps_ex;
wire         ADEL_ex;//处理取指令地址错例外ADEL
wire         ITLB_EX_Refill;
wire         ITLB_EX_Invalid;
wire [4:0]   ps_Exctype;

//PC_reg
reg   [31:0] nextpc;
reg   [31:0] prefs_pc;
wire  [31:0] seq_pc;

wire         br_taken;
wire [ 31:0] br_target;
wire         br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停

assign {br_stall,br_taken,br_target} = br_bus; 

assign ps_ready_go    = ~icache_busy;
assign ps_allowin     = flush ? 1'b1 : fs_allowin & ps_ready_go;
assign ps_to_fs_valid = ps_ready_go;
assign ps_to_fs_bus   = {
                          inst_valid, //38:38
                          prefs_pc,   //37:6
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
    else
        nextpc = seq_pc;
end

always @(posedge clk) begin //prefs_pc
    if(reset)
        prefs_pc <= `RESET_PC;
    else if(~icache_busy & ps_allowin)
        prefs_pc <= nextpc;
end

ITLB_stage ITLB(
        .clk               (clk               ),
        .reset             (reset             ),
        .ITLB_found        (ITLB_found        ),
        .ITLB_VAddr        (prefs_pc          ), 
        .ITLB_RAddr        (ITLB_RAddr        ),
        .ITLB_index        (ITLB_index        ),
        .ITLB_pfn          (ITLB_pfn          ),
        .ITLB_asid         (ITLB_asid         ),
        .ITLB_c            (ITLB_c            ),
        .ITLB_d            (ITLB_d            ),
        .ITLB_v            (ITLB_v            ),
        .ITLB_EX_Refill    (ITLB_EX_Refill    ),
        .ITLB_EX_Invalid   (ITLB_EX_Invalid   )
);

assign ADEL_ex    = prefs_pc[1:0] == 2'b00 ? 1'b0 : 1'b1; 
assign ps_ex      = ADEL_ex | ITLB_EX_Refill | ITLB_EX_Invalid;
assign ps_Exctype = ADEL_ex         ? `AdEL            :
                    ITLB_EX_Refill  ? `ITLB_EX_Refill  : 
                    ITLB_EX_Invalid ? `ITLB_EX_Invalid : `NO_EX;

/*******************CPU与ICache的交互信号赋值如下******************/
always @(*) begin
    if(flush)
        inst_valid = 1'b1;
    else if(prefs_pc[1:0] != 2'b00)
        inst_valid = 1'b0;
    else if(~icache_busy & ps_allowin) begin
        if(br_taken & ~br_stall) 
            inst_valid = 1'b0;
        else
            inst_valid = 1'b1;
    end
    else
        inst_valid = 1'b0;
end

assign {inst_tag,inst_index,inst_offset} = ITLB_RAddr;
/*******************CPU与ICache的交互信号赋值如上******************/
endmodule
