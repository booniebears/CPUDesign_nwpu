`include "global_defines.vh"

module if_stage(
    input                          clk,
    input                          reset,
    //allowin
    output                         fs_allowin, 
    input                          ds_allowin, 
    input [`PS_TO_FS_BUS_WD -1:0]  ps_to_fs_bus,
    input                          ps_to_fs_valid,
    //brbus
    input                          fs_bd, 
    //to ds
    output                         fs_to_ds_valid, 
    output [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus,
    input                          flush, //flush=1时表明需要处理异常
    input                          icache_busy,
    input  [31:0]                  inst_rdata
);

reg          fs_valid;
wire         fs_ready_go;

wire                          fs_ex;
wire [4:0]                    fs_Exctype;
reg  [`PS_TO_FS_BUS_WD -1:0]  ps_to_fs_bus_r;
wire                          ps_ex;
wire [4:0]                    ps_Exctype;                         
wire [31:0]                   temp_fs_pc;
wire [31:0]                   fs_pc;
wire [31:0]                   fs_inst;
wire                          fs_inst_valid;
wire                          fs_bdd;

assign {
    fs_inst_valid,
    fs_bdd,
    temp_fs_pc,
    ps_ex,
    ps_Exctype
} = ps_to_fs_bus_r;

assign fs_ready_go    = ~icache_busy;
assign fs_allowin     = !fs_valid || fs_ready_go && ds_allowin;
assign fs_to_ds_valid = fs_valid && fs_ready_go;

always @(posedge clk) begin
    if(reset) begin
        fs_valid <= 1'b0;
    end
    else if(fs_allowin) begin
        fs_valid <= ps_to_fs_valid;
    end
end

always @(posedge clk) begin
    if(reset)
        ps_to_fs_bus_r <= 0;
    else if(flush) 
        ps_to_fs_bus_r <= 0;
    else if(ps_to_fs_valid & fs_allowin)
        ps_to_fs_bus_r <= ps_to_fs_bus;
end

assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_Exctype, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                       };

assign fs_ex      = ps_ex;
assign fs_Exctype = ps_Exctype;

assign fs_inst    = (fs_bdd | ~fs_inst_valid) ? 32'b0 : inst_rdata; 
//在ID阶段有一条确实有效的跳转指令时,将fs_pc复位为跳转指令本身(依旧作nop指令处理),保证EPC写入正确
assign fs_pc      = fs_bdd ? temp_fs_pc - 4'h8 : temp_fs_pc;

endmodule
