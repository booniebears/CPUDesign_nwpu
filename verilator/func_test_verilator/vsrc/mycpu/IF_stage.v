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
    input [`BRESULT_WD  -1:0]      BResult,
    //to ps
    output [`BPU_TO_PS_BUS_WD-1:0] BPU_to_ps_bus,
    //to ds
    output                         fs_to_ds_valid, 
    output [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus,
    output [`BPU_TO_DS_BUS_WD-1:0] BPU_to_ds_bus,
    input                          br_flush,
    input                          flush, //flush=1时表明需要处理异常
    input                          icache_busy,
    input  [31:0]                  inst_rdata
);
wire [31:0] prefs_pc;

wire [ 5:0]  pre_inst_op;
wire [ 4:0]  pre_inst_rt;
wire [10:0]  pre_inst_last;

wire [31:0]  ja_target;
wire         inst_is_ja;
wire         inst_is_jr;

assign       pre_inst_op = inst_rdata[31:26]; 
assign       pre_inst_rt = inst_rdata[20:16];  
assign       pre_inst_last = inst_rdata[10: 0] ;
assign       inst_is_ja = ( pre_inst_op[5:1] == 5'b00001); /*   J指令 和 JAL指令 的op段前五位都是00001，
                                                                    最后一位分别是0和1，所以我们只对前五位进行
                                                                    提前译码，判断是否是 J指令 或者是 JAL指令*/
assign       ja_target  = { prefs_pc[31:28] , inst_rdata[25:0] , 2'b0};

// assign       inst_is_jr = (pre_inst_op == 6'b0) & (pre_inst_rt == 5'b0) & (pre_inst_last[10:1] == 10'b0000000100);



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

/******************ps_to_fs_bus Total: 39bits******************/
assign {
    fs_inst_valid, //38:38
    temp_fs_pc,    //37:6
    ps_ex,         //5:5
    ps_Exctype     //4:0
} = ps_to_fs_bus_r;

assign prefs_pc = ps_to_fs_bus[37:6];

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

wire [31:0] BPU_target;
wire BPU_valid;
wire predict_valid;
assign predict_valid = BPU_valid & fs_valid & fs_inst_valid;

/******************fs_to_ds_bus Total: 71bits******************/
assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_Exctype, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                      };

/******************fs_to_ds_bus Total: 33bits******************/
assign BPU_to_ps_bus = {
                        BPU_target  , //32:1
                        predict_valid //0:0
                       };

assign fs_ex      = (ps_ex & ~br_flush);
assign fs_Exctype = ps_Exctype;

assign fs_inst    = (br_flush | ~fs_inst_valid) ? 32'b0 : inst_rdata; 
//在ID阶段有一条确实有效的跳转指令时,将fs_pc复位为跳转指令本身(依旧作nop指令处理),保证EPC写入正确
assign fs_pc      = br_flush ? temp_fs_pc - 8 : temp_fs_pc;

wire to_BPU_pc_valid;
assign to_BPU_pc_valid = ps_to_fs_valid & fs_allowin;

BPU u_BPU(
    .clk                (clk),
    .reset              (reset),
    .pre_pc             (prefs_pc),
    .fs_pc              (temp_fs_pc),
    .pc_valid           (to_BPU_pc_valid),
    .ds_allowin         (ds_allowin),
    .BResult            (BResult),
    .ja_target          (ja_target ),
    // .stack_addr         (stack_addr),
    .inst_is_ja         (inst_is_ja),    
    // .inst_is_jr         (inst_is_jr),    
    //***********output************//
    .target             (BPU_target),
    .BPU_valid          (BPU_valid),
    .BPU_to_ds_bus      (BPU_to_ds_bus)
);

endmodule
