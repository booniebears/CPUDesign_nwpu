`include "global_defines.vh"

module preif_stage(
    input         clk,
    input         reset,
    //allowin
    input         fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
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
);



endmodule
