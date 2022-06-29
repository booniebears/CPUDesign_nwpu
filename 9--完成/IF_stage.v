`include "global_defines.vh"

module if_stage(
    input         clk,
    input         reset,
    input [31:0]  ps_to_fs_nextpc,
    output reg [31:0] fs_pc,
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
    input         flush_r, //flush=1时表明需要处理异常
    input         inst_data_ok,
    input  [31:0] inst_rdata,
    input             ds_ex,
    input             es_ex,
    input             m1s_ex
);

/*
    TODO: 如果使用fs_pc请求icache，同时将返回的指令送到id阶段，则也许可能不需要考虑ps_to_fs_nextpc的阻塞，后期可以尝试一下
*/

wire                           ADEL_ex;//处理取指令地址错例外ADEL
wire                           fs_ex;
wire [4:0]                     fs_Exctype;
reg  [`PS_TO_FS_BUS_WD -1:0]   ps_to_fs_bus_r;
wire                           ps_ex;
wire [4:0]                     ps_Exctype;                         
wire [31:0]                    fs_inst;

assign {
    ps_ex,
    ps_Exctype
} = ps_to_fs_bus_r;

always @(posedge clk) begin
    if(reset)
        ps_to_fs_bus_r <= 6'b0;
    else if(((ps_to_fs_nextpc[1:0] != 2'b00 | ds_ex | es_ex | m1s_ex) && fs_allowin) | (fs_allowin && inst_data_ok) ) 
        ps_to_fs_bus_r <= ps_to_fs_bus;
end

assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_Exctype, //69:65
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
    else if(inst_data_ok | (ps_to_fs_nextpc[1:0] != 2'b00 | ds_ex | es_ex | m1s_ex))
        fs_to_ds_valid <= 1'b1;
    else
        fs_to_ds_valid <= 1'b0;
end

always @(posedge clk) begin
    if (reset) 
        fs_pc <= 32'hbfbffffc;
    //我们认为，在ps_to_fs_nextpc!=2'b00,必然是出现了ADEL_ex,这个时候fs_pc直接更新,不向Cache发请求,fs_to_ds_valid放行
    else if (((ps_to_fs_nextpc[1:0] != 2'b00 | ds_ex | es_ex | m1s_ex) && fs_allowin) | (fs_allowin && inst_data_ok))  
        fs_pc <= ps_to_fs_nextpc;
end

//异常的报出和fs_pc同拍,而inst_sram的使能信号则要与ps_to_fs_nextpc的更新同拍,后者比前者快一拍
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex | ps_ex;
assign fs_Exctype = ADEL_ex ? `AdEL : ps_Exctype;

//TODO:flush情况下,为了防止可能被错误读进来的跳转指令,强行设置为0
//TODO:fs_pc==2'b00情况下,为了防止可能被错误读进来的rdata,强行设置为0
assign fs_inst         = (flush | flush_r | fs_ex | ds_ex | es_ex) ? 32'b0 : inst_rdata; 

endmodule
