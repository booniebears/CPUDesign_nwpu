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

    input                          br_flush,
    input                          flush, //flush=1时表明需要处理异常
    input  [31:0]                  CP0_EPC_out, //CP0寄存器中,EPC的值
    input                          m1s_inst_eret,

    //CPU和ICache的交互信号如下
    output     [ 7:0]              inst_index,
    output     [19:0]              inst_tag,
    output     [ 3:0]              inst_offset,
    input                          icache_busy, //
    //由于跳转指令在ID阶段时，其延迟槽下面的一条指令已经来到prefs_pc上了,在遇到中断时需要校正
    output reg                     inst_valid //
);
wire         inst_valid_end;

wire         ps_ready_go;
wire         ps_allowin;

wire [31:12] ITLB_PFN; //实地址
wire         ps_ex;
wire         ADEL_ex;//处理取指令地址错例外ADEL
wire [ 4:0]  ps_Exctype;

//PC_reg
reg   [31:0] nextpc;
wire  [31:0] seq_pc;
wire  [31:0] right_flow_pc;
wire  [31:0] wrong_flow_pc;
reg   [31:0] prefs_pc;
reg          flush_delayed;


wire         br_taken;
wire  [31:0] br_target;
wire         br_BPU_valid;
wire         is_branch;
wire         br_BPU_right;
wire [ 31:0] br_es_pc;
// wire         br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停
wire         prefs_bdd; //跳转指令的下下条

wire [31:0]  BPU_target;
wire         BPU_valid;

assign {BPU_target,BPU_valid} = BPU_to_ps_bus;



assign {
        br_BPU_valid,
        is_branch,
        br_taken,
        br_BPU_right,
        br_target,
        br_es_pc
        } = br_bus; 

//计数使用，可以注掉//
reg [31:0] br_ds_pc_buffer;
reg [31:0] branch_count;
reg [31:0] right_count;
`ifdef OPEN_VA_PERF
    always_latch @(br_es_pc) begin
        if(reset)begin
            branch_count = 0;
            right_count = 0;
        end

        if(is_branch)begin
        branch_count = branch_count + 1;
        end

        if(is_branch & br_BPU_right)begin
            right_count = right_count + 1;
        end
    end
    always @(posedge clk) begin
        br_ds_pc_buffer <= br_es_pc;
    end
`else

    // always @(br_es_pc) begin
    //     if(reset)begin
    //         branch_count = 0;
    //         right_count = 0;
    //     end

    //     if(is_branch)begin
    //         branch_count = branch_count + 1;
    //     end

    //     if(is_branch & br_BPU_right)begin
    //         right_count = right_count + 1;
    //     end
    // end
    // always @(posedge clk) begin
    //     br_ds_pc_buffer <= br_es_pc;
    // end

 `endif 

////////////////////

assign ps_ready_go    = ~icache_busy;
assign ps_allowin     = flush ? 1'b1 : fs_allowin & ps_ready_go;
assign ps_to_fs_valid = ps_ready_go;
assign inst_valid_end = inst_valid & ~br_flush;
assign ps_to_fs_bus   = {
                          inst_valid_end, //38:38
                          prefs_pc, //37:6
                          ps_ex,      //5:5
                          ps_Exctype  //4:0
                        };

assign seq_pc = prefs_pc + 4;
assign right_flow_pc = BPU_valid ? BPU_target : seq_pc;
assign wrong_flow_pc = br_taken ? br_target : br_es_pc + 8;

always @(*) begin //nextpc
    if(m1s_inst_eret)
        nextpc = CP0_EPC_out;
    else if(flush) begin
            nextpc = `GENERAL_EX_PC;
    end
    else if(is_branch)begin
        if(br_BPU_valid)begin
            if(br_BPU_right)begin
                nextpc = right_flow_pc;
            end
            else begin
                nextpc = wrong_flow_pc;
            end
        end
        else begin
            if (br_taken) begin
                nextpc = br_target;
            end
            else begin
                nextpc = right_flow_pc;
            end
        end
    end
    else 
        nextpc = right_flow_pc;
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
    .ITLB_VPN             (prefs_pc[31:12]     ), 
    .ITLB_PFN             (ITLB_PFN            )
);

assign ADEL_ex    = (prefs_pc[1:0] != 2'b00) & ~br_flush; 
assign ps_ex      = ADEL_ex;
assign ps_Exctype = ADEL_ex ? `AdEL : `NO_EX;

/*******************CPU与ICache的交互信号赋值如下******************/
always @(posedge clk) begin
    if(reset) 
        flush_delayed <= 1'b0;
    else if(flush)
        flush_delayed <= 1'b1;
    else if(~icache_busy)
        flush_delayed <= 1'b0;
end

always @(*) begin
    if(flush_delayed & ~icache_busy)
        inst_valid = 1'b1;
    else if(prefs_pc[1:0] != 2'b00)
        inst_valid = 1'b0;
    else if(~icache_busy & ps_allowin) 
        inst_valid = 1'b1;
    else
        inst_valid = 1'b0;
end

assign inst_tag    = ITLB_PFN;
assign inst_index  = prefs_pc[11:4];
assign inst_offset = prefs_pc[3:0];
/*******************CPU与ICache的交互信号赋值如上******************/
endmodule
