`include "global_defines.vh"

module if_stage(
    input         clk,
    input         reset,
    output [31:0] fs_pc,
    //allowin
    output        fs_allowin, 
    input         ds_allowin, 
    input [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    input                          fs_bd, 
    //to ds
    output reg                     fs_to_ds_valid, 
    output [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus,
    input         flush, //flush=1时表明需要处理异常
   // output [19:0] inst_tag,
   // output [ 3:0] inst_offset,
    input         inst_data_ok,
    input  [31:0] inst_rdata
   // input         mfc0_stall //TODO: 临时把mfc0_stall信号送到IF阶段,确保nextpc跳转的正确性
);

/*
    TODO: 如果使用fs_pc请求icache，同时将返回的指令送到id阶段，则也许可能不需要考虑nextpc的阻塞，后期可以尝试一下
*/

//wire        br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停
wire        ADEL_ex;//处理取指令地址错例外ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;
wire [31:0] nextpc;
reg  [`PS_TO_FS_BUS_WD -1:0]   ps_to_fs_bus_r;
wire  [31:0] fs_inst;

assign nextpc = ps_to_fs_bus[31:0];

assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_ExcCode, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                       };




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
end

always @(posedge clk) begin
    if (reset) 
        ps_to_fs_bus_r <= 32'hbfbffffc;
    //我们认为，在nextpc!=2'b00,必然是出现了ADEL_ex,这个时候fs_pc直接更新,不向Cache发请求,fs_to_ds_valid放行
    else if ((nextpc[1:0] != 2'b00 && fs_allowin) | (fs_allowin && inst_data_ok))  
        ps_to_fs_bus_r <= ps_to_fs_bus;
end
assign fs_pc = ps_to_fs_bus_r;

//异常的报出和fs_pc同拍,而inst_sram的使能信号则要与nextpc的更新同拍,后者比前者快一拍
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111; //TODO:全1目前代表无异常

//TODO:flush情况下,为了防止可能被错误读进来的跳转指令,强行设置为0
//TODO:fs_pc==2'b00情况下,为了防止可能被错误读进来的rdata,强行设置为0
assign fs_inst         = (flush | fs_pc[1:0] != 2'b00) ? 32'b0 : inst_rdata; 

endmodule
