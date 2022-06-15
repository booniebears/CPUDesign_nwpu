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
    input         flush, //flush=1ʱ������Ҫ�����쳣
    input  [31:0] CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    input         ws_inst_eret,
    //Attention:CPU��ICache�Ľ����ź�����;����Ŀǰû��ʵ�֡�CPU���ʵս���е�wstrb��wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
);



endmodule
