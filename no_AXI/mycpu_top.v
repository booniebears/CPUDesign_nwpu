`include "global_defines.vh"

module mycpu_top(
    // 外部中断信号
    input [5:0]   ext_int, //6个外部硬件中断输入
    input         clk,
    input         resetn,
    // inst sram interface 调用IP核
    output        inst_sram_en,
    output [ 3:0] inst_sram_wen,
    output [31:0] inst_sram_addr,
    output [31:0] inst_sram_wdata,
    input  [31:0] inst_sram_rdata,
    // data sram interface 调用IP核
    output        data_sram_en,
    output [ 3:0] data_sram_wen,
    output [31:0] data_sram_addr,
    output [31:0] data_sram_wdata,
    input  [31:0] data_sram_rdata,
    // trace debug interface
    output [31:0] debug_wb_pc,
    output [ 3:0] debug_wb_rf_wen,
    output [ 4:0] debug_wb_rf_wnum,
    output [31:0] debug_wb_rf_wdata

);
reg         reset;
always @(posedge clk) reset <= ~resetn;

wire         ds_allowin;
wire         es_allowin;
wire         ms_allowin;
wire         ws_allowin;
wire         fs_to_ds_valid;
wire         ds_to_es_valid;
wire         es_to_ms_valid;
wire         ms_to_ws_valid;
wire [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus;
wire [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus;
wire [`ES_TO_MS_BUS_WD -1:0] es_to_ms_bus;
wire [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus;
wire [`WS_TO_RF_BUS_WD -1:0] ws_to_rf_bus;
wire [`BR_BUS_WD       -1:0] br_bus;

wire [4:0] EXE_dest; // EXE阶段写RF地址 通过旁路送到ID阶段
wire [4:0] MEM_dest; // MEM阶段写RF地址 通过旁路送到ID阶段
wire [4:0] WB_dest; // WB阶段写RF地址 通过旁路送到ID阶段
wire [31:0] EXE_result; //EXE阶段 es_alu_result
wire [31:0] MEM_result; //MEM阶段 ms_final_result 
wire [31:0] WB_result; //WB阶段 ws_final_result
wire es_load_op; //EXE阶段 判定是否为load指令

wire flush; 
wire ms_ex;
wire ws_ex;
wire [31:0] CP0_EPC;
wire CP0_Cause_TI;
wire CP0_Status_IE; //IE=1,全局中断使能开启
wire CP0_Status_EXL; //EXL=0,没有例外正在处理
wire [7:0] CP0_Status_IM; //IM对应各个中断源屏蔽位
wire [7:0] CP0_Cause_IP; //待处理中断标识
wire es_inst_mfc0;
wire ms_inst_mfc0;
wire ms_inst_eret; //MEM阶段指令为eret 前递到EXE 控制SRAM读写
wire ws_inst_eret; //WB阶段指令为eret 前递到EXE 控制SRAM读写;前递到IF阶段修改nextpc



// IF stage
if_stage if_stage(
    .clk            (clk            ),
    .reset          (reset          ),
    //allowin
    .ds_allowin     (ds_allowin     ),
    //brbus
    .br_bus         (br_bus         ),
    //outputs
    .fs_to_ds_valid (fs_to_ds_valid ),
    .fs_to_ds_bus   (fs_to_ds_bus   ),
    // inst sram interface
    .inst_sram_en   (inst_sram_en   ),
    .inst_sram_wen  (inst_sram_wen  ),
    .inst_sram_addr (inst_sram_addr ),
    .inst_sram_wdata(inst_sram_wdata),
    .inst_sram_rdata(inst_sram_rdata),
    //lab8添加
    .flush          (flush          ),
    .CP0_EPC        (CP0_EPC        ), 
    .ws_inst_eret   (ws_inst_eret   ) 
);
// ID stage
id_stage id_stage(
    .clk            (clk            ),
    .reset          (reset          ),
    //allowin
    .es_allowin     (es_allowin     ),
    .ds_allowin     (ds_allowin     ),
    //from fs
    .fs_to_ds_valid (fs_to_ds_valid ),
    .fs_to_ds_bus   (fs_to_ds_bus   ),
    //to es
    .ds_to_es_valid (ds_to_es_valid ),
    .ds_to_es_bus   (ds_to_es_bus   ),
    //to fs
    .br_bus         (br_bus         ),
    //to rf: for write back
    .ws_to_rf_bus   (ws_to_rf_bus   ),
    .EXE_dest       (EXE_dest       ),
    .MEM_dest       (MEM_dest       ),
    .WB_dest        (WB_dest        ),
    .EXE_result     (EXE_result     ),
    .MEM_result     (MEM_result     ),
    .WB_result      (WB_result      ),
    .es_load_op     (es_load_op     ),
    .flush          (flush          ),
    .es_inst_mfc0   (es_inst_mfc0   ),
    .ms_inst_mfc0   (ms_inst_mfc0   ),
    .CP0_Status_IE  (CP0_Status_IE  ), 
    .CP0_Status_EXL (CP0_Status_EXL ), 
    .CP0_Status_IM  (CP0_Status_IM  ),
    .CP0_Cause_IP   (CP0_Cause_IP   ),
    .CP0_Cause_TI   (CP0_Cause_TI   )
);
// EXE stage
exe_stage exe_stage(
    .clk            (clk            ),
    .reset          (reset          ),
    //allowin
    .ms_allowin     (ms_allowin     ),
    .es_allowin     (es_allowin     ),
    //from ds
    .ds_to_es_valid (ds_to_es_valid ),
    .ds_to_es_bus   (ds_to_es_bus   ),
    //to ms
    .es_to_ms_valid (es_to_ms_valid ),
    .es_to_ms_bus   (es_to_ms_bus   ),
    // data sram interface
    .data_sram_en   (data_sram_en   ),
    .data_sram_wen  (data_sram_wen  ),
    .data_sram_addr (data_sram_addr ),
    .data_sram_wdata(data_sram_wdata),
    .EXE_dest       (EXE_dest       ),
    .EXE_result     (EXE_result     ),
    .es_load_op     (es_load_op     ),
    .flush          (flush          ),  
    .ms_ex          (ms_ex          ),  
    .ws_ex          (ws_ex          ),
    .es_inst_mfc0   (es_inst_mfc0   ),
    .ms_inst_eret   (ms_inst_eret   ),
    .ws_inst_eret   (ws_inst_eret   )
);
// MEM stage
mem_stage mem_stage(
    .clk            (clk            ),
    .reset          (reset          ),
    //allowin
    .ws_allowin     (ws_allowin     ),
    .ms_allowin     (ms_allowin     ),
    //from es
    .es_to_ms_valid (es_to_ms_valid ),
    .es_to_ms_bus   (es_to_ms_bus   ),
    //to ws
    .ms_to_ws_valid (ms_to_ws_valid ),
    .ms_to_ws_bus   (ms_to_ws_bus   ),
    //from data-sram
    .data_sram_rdata(data_sram_rdata),
    .MEM_dest       (MEM_dest       ), 
    .MEM_result     (MEM_result     ),
    .flush          (flush          ), 
    .ms_ex          (ms_ex          ), 
    .ms_inst_mfc0   (ms_inst_mfc0   ), 
    .ms_inst_eret   (ms_inst_eret   ) 
);
// WB stage
wb_stage wb_stage(
    .clk            (clk            ),
    .reset          (reset          ),
    //allowin
    .ws_allowin     (ws_allowin     ),
    //from ms
    .ms_to_ws_valid (ms_to_ws_valid ),
    .ms_to_ws_bus   (ms_to_ws_bus   ),
    //to rf: for write back
    .ws_to_rf_bus   (ws_to_rf_bus   ),
    //trace debug interface
    .debug_wb_pc      (debug_wb_pc      ),
    .debug_wb_rf_wen  (debug_wb_rf_wen  ),
    .debug_wb_rf_wnum (debug_wb_rf_wnum ),
    .debug_wb_rf_wdata(debug_wb_rf_wdata),
    .WB_dest          (WB_dest          ), 
    .WB_result        (WB_result        ),
    .flush            (flush            ), 
    .ws_ex            (ws_ex            ), 
    .CP0_EPC          (CP0_EPC          ), 
    .CP0_Status_IE    (CP0_Status_IE    ), 
    .CP0_Status_EXL   (CP0_Status_EXL   ), 
    .CP0_Status_IM    (CP0_Status_IM    ),
    .CP0_Cause_IP     (CP0_Cause_IP     ),
    .CP0_Cause_TI     (CP0_Cause_TI     ), 
    .ws_inst_eret     (ws_inst_eret     ), 
    .ext_int        (ext_int        )
);


endmodule
