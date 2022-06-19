`include "global_defines.vh"

module pre_if_stage(
    input         clk,
    input         reset,
    input [31:0]  fs_pc,
    //allowin
    input         fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    //input                          ps_bd,
    //to ds
    output [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    input         flush, //flush=1时表明需要处理异常
    // input         flush_refill,
    input  [31:0] CP0_EPC_out, //CP0寄存器中,EPC的值
    input         m1s_inst_eret,
    // input  [4:0]  tlb_refill_if_ex,
    // input  [4:0]  tlb_invalid_if_ex,
    //Attention:CPU和ICache的交互信号如下;本人目前没有实现《CPU设计实战》中的wstrb和wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
    input         inst_addr_ok,
    input         inst_data_ok,
    input         mfc0_stall //TODO: 临时把mfc0_stall信号送到IF阶段,确保nextpc跳转的正确性
);

//wire        ps_allowin; //仅在IF阶段中作用 fs_allowin=1,IF阶段允许指令流入 是fs_valid fs_pc inst_sram_en的控制信号
wire        br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停

wire [31:0] seq_pc;
reg [31:0] nextpc;

wire         br_taken;
wire [ 31:0] br_target;
assign {br_stall,br_taken,br_target} = br_bus; 

//wire  [31:0] fs_inst;
assign ps_to_fs_bus = {
                       nextpc    
                       };

reg npc_block;
always @(posedge clk)begin
    npc_block <= fs_allowin & inst_addr_ok;
end

reg flush_r; //Attention:引入flush_r，延长flush作用时间
always @(posedge clk) begin
    if(reset) flush_r <= 1'b0;
    else if(flush & ~m1s_inst_eret) flush_r <= 1'b1;
    else if(inst_data_ok) flush_r <= 1'b0;
end

// pre-IF stage
//lab8修改 存在当WB阶段发现例外时,ID阶段发现br_stall的问题;这种情况下例外必然具有最高优先级
assign seq_pc          = fs_pc + 3'h4;
reg [31:0] nextpc_buffer;
reg [31:0] nextpc_timely;
always @(*) begin
    if(m1s_inst_eret)
        nextpc_timely <= CP0_EPC_out;
    else if(flush | flush_r)
        nextpc_timely <= 32'hbfc00380;
    else if(npc_block)begin
        if(br_taken && ~br_stall && ~mfc0_stall)
            nextpc_timely <= br_target;
        else
            nextpc_timely <= seq_pc;
    end
    else
        nextpc_timely <= 32'b0;
end

always @(posedge clk) begin
    if(reset)
        nextpc_buffer <= 32'b0;
    else if(m1s_inst_eret | flush | npc_block)
        nextpc_buffer <= nextpc_timely;
end

always @(*) begin
    if(m1s_inst_eret)
        nextpc <= nextpc_timely;
    else if(flush | flush_r)
        nextpc <= nextpc_timely;
    else if(npc_block)begin
        nextpc <= nextpc_timely;
    end
    else
        nextpc <= nextpc_buffer;
end

always @(*) begin///CHANGE
    if(flush)
        inst_valid <= 1'b1;
    else if(nextpc[1:0] != 2'b00)
        inst_valid <= 1'b0;
    else if(inst_addr_ok & fs_allowin) 
        inst_valid <= 1'b1;
    else
        inst_valid <= 1'b0;
end

assign inst_op    = 1'b0; //读
assign {inst_tag,inst_index,inst_offset} = nextpc;

/*******************CPU与ICache的交互信号赋值如上******************/
endmodule
