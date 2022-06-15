`include "global_defines.vh"

module preif_stage(
    input         clk,
    input         reset,
    //allowin
    input         fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, // id阶段发来
    //to ds
    output reg                     prefs_to_fs_valid, 
    output [`FS_TO_DS_BUS_WD -1:0] prefs_to_fs_bus,
    input         flush, //flush=1时表明需要处理异常
    input  [31:0] CP0_EPC, //CP0寄存器中,EPC的值
    input         ws_inst_eret,
    //Attention:CPU和ICache的交互信号如下;本人目前没有实现《CPU设计实战》中的wstrb和wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
    input         inst_addr_ok,
    input         mfc0_stall //TODO: 临时把mfc0_stall信号送到IF阶段,确保nextpc跳转的正确性   
);

wire        prefs_allowin; 

assign prefs_allowin     =  flush ? 1'b1 : inst_addr_ok; 


wire [31:0] seq_pc;
wire        br_stall;     
wire        fs_bd;  //IF阶段 当前指令若在延迟槽中,则置为1
wire         br_taken;
wire [ 31:0] br_target;

assign {fs_bd,br_stall,br_taken,br_target} = br_bus; //这里的fs_bd即为ID阶段的is_branch信号 

wire [31:0] nextpc;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret特权指令 这个具有最高优先级,最先判断
                         flush ? 32'hbfc00380 : //flush=1时表明需要处理异常.如果是eret指令,上面会先判断,
                         //然后跳转到CP0_EPC; 否则说明发生异常,此时PC值更新为0xbfc00380
                         br_taken && ~br_stall && ~mfc0_stall? br_target : seq_pc; //nextpc在branch指令指定的pc和seq_pc中产生



















wire        ADEL_ex;//处理取指令地址错例外ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;




wire  [31:0] fs_inst;
reg  [31:0] fs_pc;
assign prefs_to_fs_bus = {
                    //    fs_ex     , //70:70
                    //    fs_ExcCode, //69:65
                    //    fs_bd     , //64:64
                    //    fs_inst   , //63:32
                       fs_pc       //31:0
                       };


// reg npc_block;
// always @(posedge clk)begin
//     npc_block <= fs_allowin & inst_addr_ok;
// end
// pre-IF stage
//lab8修改 存在当WB阶段发现例外时,ID阶段发现br_stall的问题;这种情况下例外必然具有最高优先级
assign seq_pc          = fs_pc + 3'h4;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret特权指令 这个具有最高优先级,最先判断
                         flush ? 32'hbfc00380 : //flush=1时表明需要处理异常.如果是eret指令,上面会先判断,
                         //然后跳转到CP0_EPC; 否则说明发生异常,此时PC值更新为0xbfc00380
                         br_taken && ~br_stall && ~mfc0_stall? br_target : seq_pc; //nextpc在branch指令指定的pc和seq_pc中产生




reg icache_receive;
always @(posedge clk) begin
    if(reset)
        icache_receive <= 0;
    else
        icache_receive <= inst_valid;
end

always @(posedge clk) begin
    if (reset) 
        prefs_to_fs_valid <= 1'b0;
    else if(~fs_allowin) 
        prefs_to_fs_valid <= prefs_to_fs_valid; 
    // else if(inst_data_ok | (nextpc[1:0] != 2'b00))
    //     prefs_to_fs_valid <= 1'b1;
    else
        prefs_to_fs_valid <= 1'b0;

    
end

//异常的报出和fs_pc同拍,而inst_sram的使能信号则要与nextpc的更新同拍,后者比前者快一拍
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111; //TODO:全1目前代表无异常

 


/*******************CPU与ICache的交互信号赋值如下******************/
//Attention:有异常flush,立即发请求;如果IF_ID寄存器没有阻塞,立即发请求
always @(*) begin///CHANGE
    if(flush | reset)
        inst_valid <= 1'b1;
    else if(nextpc[1:0] != 2'b00)
        inst_valid <= 1'b0;
    else if(fs_allowin) 
        inst_valid <= 1'b1;
    else
        inst_valid <= 1'b0;
end

assign inst_op    = 1'b0; //读
assign {inst_tag,inst_index,inst_offset} = nextpc;

/*******************CPU与ICache的交互信号赋值如上******************/
endmodule
