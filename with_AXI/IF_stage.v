`include "global_defines.vh"

module if_stage(
    input         clk,
    input         reset,
    //allowin
    input         ds_allowin, 
    //brbus
    input  [`BR_BUS_WD-1:0] br_bus, 
    //to ds
    output reg                     fs_to_ds_valid, 
    output [`FS_TO_DS_BUS_WD-1:0] fs_to_ds_bus,
    input         flush, //flush=1时表明需要处理异常
    input         flush_refill,
    input  [31:0] CP0_EPC, //CP0寄存器中,EPC的值
    input         ws_inst_eret,
    input  [4:0]  tlb_refill_if_ex,
    input  [4:0]  tlb_invalid_if_ex,
    //Attention:CPU和ICache的交互信号如下;本人目前没有实现《CPU设计实战》中的wstrb和wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
    input         inst_addr_ok,
    input         inst_data_ok,
    input  [31:0] inst_rdata,
    input         mfc0_stall //TODO: 临时把mfc0_stall信号送到IF阶段,确保nextpc跳转的正确性
);

/*
    TODO: 如果使用fs_pc请求icache，同时将返回的指令送到id阶段，则也许可能不需要考虑nextpc的阻塞，后期可以尝试一下
*/

wire        fs_allowin; //仅在IF阶段中作用 fs_allowin=1,IF阶段允许指令流入 是fs_valid fs_pc inst_sram_en的控制信号
wire        br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停
wire        fs_bd;  //IF阶段 当前指令若在延迟槽中,则置为1
wire        ADEL_ex;//处理取指令地址错例外ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;

wire [31:0] seq_pc;
wire [31:0] nextpc;

wire         br_taken;
wire [ 31:0] br_target;
assign {fs_bd,br_stall,br_taken,br_target} = br_bus; //这里的fs_bd即为ID阶段的is_branch信号 

wire  [31:0] fs_inst;
reg  [31:0] fs_pc;
assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_ExcCode, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                       };


reg npc_block;
always @(posedge clk)begin
    npc_block <= fs_allowin & inst_addr_ok;
end
// pre-IF stage
//lab8修改 存在当WB阶段发现例外时,ID阶段发现br_stall的问题;这种情况下例外必然具有最高优先级
assign seq_pc          = fs_pc + 3'h4;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret特权指令 这个具有最高优先级,最先判断
                          // flush_refill ? 32'hbfc00200:
                         flush ? 32'hbfc00380 : //flush=1时表明需要处理异常.如果是eret指令,上面会先判断,
                         //然后跳转到CP0_EPC; 否则说明发生异常,此时PC值更新为0xbfc00380
                         npc_block ? ( 
                         br_taken && ~br_stall && ~mfc0_stall? br_target : seq_pc ) : nextpc; //nextpc在branch指令指定的pc和seq_pc中产生


assign fs_allowin     =  flush ? 1'b1 : ds_allowin; 

always @(posedge clk) begin
    if (reset) 
        fs_to_ds_valid <= 1'b0;
    else if(~ds_allowin) 
        fs_to_ds_valid <= fs_to_ds_valid; 
    else if(inst_data_ok | (nextpc[1:0] != 2'b00))
        fs_to_ds_valid <= 1'b1;
    else
        fs_to_ds_valid <= 1'b0;

    if (reset) 
        fs_pc <= 32'hbfbffffc;
    //我们认为，在nextpc!=2'b00,必然是出现了ADEL_ex,这个时候fs_pc直接更新,不向Cache发请求,fs_to_ds_valid放行
    else if ((nextpc[1:0] != 2'b00 && fs_allowin) | (fs_allowin && inst_data_ok))  
        fs_pc <= nextpc;
end

//异常的报出和fs_pc同拍,而inst_sram的使能信号则要与nextpc的更新同拍,后者比前者快一拍
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111;   
                                
//TODO:flush情况下,为了防止可能被错误读进来的跳转指令,强行设置为0
//TODO:fs_pc==2'b00情况下,为了防止可能被错误读进来的rdata,强行设置为0
assign fs_inst         = (flush | fs_pc[1:0] != 2'b00) ? 32'b0 : inst_rdata; 

//TODO:flush情况下,为了防止可能被错误读进来的跳转指令,强行设置为0
//TODO:fs_pc==2'b00情况下,为了防止可能被错误读进来的rdata,强行设置为0
assign fs_inst         = (flush | fs_pc[1:0] != 2'b00) ? 32'b0 : inst_rdata; 

/*******************CPU与ICache的交互信号赋值如下******************/
//Attention:有异常flush,立即发请求;如果IF_ID寄存器没有阻塞,立即发请求
always @(flush ,inst_addr_ok,ds_allowin) begin///CHANGE
    if(flush | reset)
        inst_valid <= 1'b1;
    else if(nextpc[1:0] != 2'b00)
        inst_valid <= 1'b0;
    else if(inst_addr_ok & ds_allowin) 
        inst_valid <= 1'b1;
    else
        inst_valid <= 1'b0;
end

assign inst_op    = 1'b0; //读
assign {inst_tag,inst_index,inst_offset} = nextpc;


endmodule
