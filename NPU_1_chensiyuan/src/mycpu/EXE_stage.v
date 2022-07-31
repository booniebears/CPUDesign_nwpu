`include "global_defines.vh"

module exe_stage(
    input         clk ,
    input         reset,
    //allowin                 
    input         m1s_allowin,
    output        es_allowin,
    //from ds                 
    input         ds_to_es_valid,
    input  [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus,
    //to pre_if
    output [`BR_BUS_WD       -1:0] EXE_br_bus,
    //to fs
    output [`BRESULT_WD      -1:0] EXE_BResult,
    output                         es_br_flush,
    //to ms
    output        es_to_m1s_valid,
    output [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus,
    output [ 4:0]                  EXE_dest, // EXE阶段写RF地址 通过旁路送到ID阶段
    output [31:0]                  EXE_result, //EXE阶段 es_alu_result      
    output                         es_load_op, //EXE阶段 判定是否为load指令
    input                          flush, //flush=1时表明需要处理异常
    input                          m1s_ex,
    output                         es_inst_mfc0, //EXE阶段指令为mfc0 前递到ID阶段
    input                          m1s_inst_eret
);

wire [31                 :0] ds_pc;
assign ds_pc = ds_to_es_bus[31:0];
reg         es_valid      ;
wire        es_ready_go   ;

reg  [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus_r;//(*max_fanout = "100"*) 
// wire [40:0] es_alu_op     ;
wire [19:0] es_alu_op     ;
wire        es_src1_is_not_rs_value ;
wire        es_src2_is_not_rt_value ;
wire        es_br_is_imm;
wire        es_br_is_reg;
wire [31:0] es_imm_br_addr;
wire [31:0] es_not_rs_value;
wire [31:0] es_not_rt_value;
wire        es_gr_we      ;
wire        es_mem_we     ;
wire [ 4:0] es_dest       ;
wire [15:0] es_imm        ;
wire [31:0] es_rs_value   ;
wire [31:0] es_rt_value   ;
wire [31:0] es_pc         ;
wire [11:0] es_mem_inst; //lab7添加 区别不同的存取数指令
wire [3:0] sram_wen; //sram写信号,可以区分不同的store指令,最后赋值给 data_sram_wen
wire [31:0] sram_wdata; //写sram的数据,最后赋值给data_sram_wdata

wire [25:0] es_part_inst;
wire [ 2:0] es_sel; 
wire        es_inst_tlbp ;
wire        es_inst_tlbr ;
wire        es_inst_tlbwi;
wire        es_inst_tlbwr;
wire [ 4:0] es_mfc0_rd;
wire        es_inst_mtc0; 
wire        es_inst_eret;
wire        es_bd;
wire        temp_ex; //临时用来承接来自ID的ds_ex信号
wire [ 4:0] temp_ExcCode; //临时用来承接来自ID的ds_ExcCode信号
wire        es_ex;
wire [ 4:0] es_Exctype;
wire        Overflow_ex; //有整型溢出置为1
wire [ 2:0] Overflow_inst; //可能涉及整型溢出例外的三条指令:add,addi,sub
wire        ADES_ex; //地址错例外(写数据)
wire        ADEL_ex; //地址错例外(读数据)

/* verilator lint_off UNOPTFLAT */
wire es_BPU_right;

wire inst_beq   ;
wire inst_bne   ;
wire inst_jal   ;
wire inst_jr    ;
wire inst_j     ;
wire inst_jalr  ;
wire inst_bgez  ;
wire inst_bgtz  ;
wire inst_blez  ;
wire inst_bltz  ;
wire inst_bgezal;
wire inst_bltzal;

wire [31:0] es_BPU_ret_addr;
wire es_BPU_is_taken;
wire es_BPU_valid;
wire [1:0] es_Count;
wire [3:0] es_branch_type;
wire [11:0] es_br_inst;
wire [25:0] es_jidx;
wire es_is_branch;
// wire es_br_stall;
wire es_br_taken;
wire [31:0] es_br_target;

wire es_rs_eq_rt;
//lab7添加 用于辅助判断b型指令的跳转状况
wire        es_rsgez;
wire        es_rsgtz;
wire        es_rslez;
wire        es_rsltz;

assign {
        es_br_is_reg                ,
        es_br_is_imm                ,
        es_imm_br_addr              ,
        es_not_rs_value             ,  //330:299
        es_not_rt_value             ,  //298:267
        es_BPU_ret_addr             ,  //266:235
        es_BPU_is_taken             ,  //234:234
        es_BPU_valid                ,  //233:233
        es_Count                    ,  //232:231
        es_is_branch                ,  //230:230 
        // es_branch_type              ,  //229:226 
        es_br_inst                  ,
        es_part_inst                ,  //225:200
        es_inst_tlbp                ,  //199:199
        es_inst_tlbr                ,  //198:198
        es_inst_tlbwi               ,  //197:197
        es_inst_tlbwr               ,  //196:196
        Overflow_inst               ,  //190:198
        temp_ex                     ,  //197:197 
        temp_ExcCode                ,  //186:182 
        es_bd                       ,  //181:181
        es_inst_eret                ,  //180:180
        es_inst_mtc0                ,  //176:176 
        es_inst_mfc0                ,  //175:175 
        es_mem_inst                 ,  //174:163
        es_alu_op                   ,  //162:122
        es_load_op                  ,  //121:121
        es_src1_is_not_rs_value     ,  //120:120
        es_src2_is_not_rt_value     ,  //119:119
        es_gr_we                    ,  //118:118 --写RF使能
        es_mem_we                   ,  //117:117 --写DM使能
        es_dest                     ,  //116:112 
        es_rs_value                 ,  //95 :64  
        es_rt_value                 ,  //63 :32  
        es_pc                          //31 :0    
       } = ds_to_es_bus_r;

assign {    inst_beq   ,
            inst_bne   ,
            inst_jal   ,
            inst_jr    ,
            inst_j     ,
            inst_jalr  ,
            inst_bgez  ,
            inst_bgtz  ,
            inst_blez  ,
            inst_bltz  ,
            inst_bgezal,
            inst_bltzal     } = es_br_inst;

assign es_rs_eq_rt = (es_rs_value == es_rt_value);

assign es_imm = es_part_inst[15:0];
assign es_sel = es_part_inst[ 2:0];
assign es_mfc0_rd = es_part_inst[15:11];
assign es_jidx = es_part_inst[25:0];

//lab7添加
assign es_rsgez =  (       ~es_rs_value[31] ); //>=0
assign es_rsgtz =  ($signed(es_rs_value) > 0); // >0
assign es_rslez = ~($signed(es_rs_value) > 0); //<=0
assign es_rsltz =  (        es_rs_value[31] ); // <0

assign es_br_target =   es_br_is_imm                ?  es_imm_br_addr     :
                        es_br_is_reg                ? es_rs_value         :
                        /*inst_jal,inst_j*/         {ds_pc[31:28], es_jidx[25:0], 2'b0};

// assign es_br_target = (    es_branch_type == `BRANCH_TYPE_BEQ
//                         || es_branch_type == `BRANCH_TYPE_BNE
//                         || es_branch_type == `BRANCH_TYPE_BGEZ
//                         || es_branch_type == `BRANCH_TYPE_BGTZ
//                         || es_branch_type == `BRANCH_TYPE_BLEZ
//                         || es_branch_type == `BRANCH_TYPE_BLTZ
//                         || es_branch_type == `BRANCH_TYPE_BGEZAL
//                         || es_branch_type == `BRANCH_TYPE_BLTZAL ) ? (ds_pc + {{14{es_imm[15]}}, es_imm[15:0], 2'b0}) :
//                       (    es_branch_type == `BRANCH_TYPE_JR
//                         || es_branch_type == `BRANCH_TYPE_JALR   ) ? es_rs_value    : {ds_pc[31:28], es_jidx[25:0], 2'b0};

assign es_br_taken =  (  inst_beq  &  es_rs_eq_rt
                        | inst_bne  & !es_rs_eq_rt
                        | inst_jal
                        | inst_jr
                        | inst_j
                        | inst_jalr
                        | inst_bgez & es_rsgez
                        | inst_bgtz & es_rsgtz
                        | inst_blez & es_rslez
                        | inst_bltz & es_rsltz
                        | inst_bgezal & es_rsgez
                        | inst_bltzal & es_rsltz
                      ) ;
                    //   ) & es_valid;           



assign EXE_BResult = {  es_pc,
                        es_Count,//
                        es_is_branch,//
                        es_br_taken,//
                        es_br_target//
                    };

assign es_BPU_right = es_br_taken ? ( es_br_target == es_BPU_ret_addr) : ~es_BPU_is_taken;

assign EXE_br_bus       = { 
                            es_BPU_valid, // 该条指令BPU进行了预测
                            es_is_branch, // 该条指令是跳转指令
                            es_br_taken,  //ID阶段确定该条指令需要进行跳转
                            es_BPU_right, // BPU预测正确
                            es_br_target, //ID阶段确定跳转的地址
                            es_pc       
                        };

assign es_br_flush = es_BPU_valid ? ( es_is_branch & ~es_BPU_right ) : es_br_taken;

wire [31:0] es_alu_src1   ;
wire [31:0] es_alu_src2   ;
wire [31:0] temp_alu_result ; //临时接收alu计算得到的结果
wire [31:0] es_alu_result ; //除了考虑alu运算结果,还考虑mtc0指令携带的rt数据;
wire        es_res_from_mem;

//MUL DIV控制信号
wire        m_axis_dout_tvalid;
wire        m_axis_dout_tvalidu;
wire        isMul;
wire        isDiv;
wire        mul_finished;

wire        inst_is_sb;
wire        inst_is_sh;
wire        inst_is_swl;
wire        inst_is_swr;
assign      inst_is_sb  = es_mem_inst[8];
assign      inst_is_sh  = es_mem_inst[9];
assign      inst_is_swl = es_mem_inst[10];
assign      inst_is_swr = es_mem_inst[11];
//lab8添加 需要处理地址错例外,要考虑地址的有效性
wire        inst_is_sw;
wire        inst_is_lh;
wire        inst_is_lhu;
wire        inst_is_lw;
assign      inst_is_sw  = es_mem_inst[1];
assign      inst_is_lh  = es_mem_inst[4];
assign      inst_is_lhu = es_mem_inst[5];
assign      inst_is_lw  = es_mem_inst[0];


assign es_res_from_mem = es_load_op;
assign es_to_m1s_bus = {
                       sram_wdata     ,  //174:143
                       sram_wen       ,  //142:139
                       es_mem_we      ,  //138:138
                       es_inst_tlbp   ,  //137:137
                       es_inst_tlbr   ,  //136:136
                       es_inst_tlbwi  ,  //135:135
                       es_inst_tlbwr  ,  //134:134
                      //TODO:es_alu_result目前暂代data_sram_addr
                       es_load_op     ,  //133:133
                       //es_alu_result  ,  //164:133 --读写sram的地址
                       es_mfc0_rd     ,  //132:128
                       es_ex          ,  //127:127
                       es_Exctype     ,  //126:122 
                       es_bd          ,  //121:121
                       es_inst_eret   ,  //120:120
                       es_sel         ,  //119:117 
                       es_inst_mtc0   ,  //116:116 
                       es_inst_mfc0   ,  //115:115 
                       es_rt_value    ,  //114:83
                       es_mem_inst    ,  //82:71 
                       es_res_from_mem,  //70:70 --是否为load指令(使用DM中数)
                       es_gr_we       ,  //69:69 --写RF使能
                       es_dest        ,  //68:64 --写RF的地址
                       es_alu_result  ,  //63:32 --16位立即数
                       es_pc             //31:0 --EXE阶段 PC值
                      };

assign es_ready_go     = (~isMul & ~isDiv) | (isDiv & (m_axis_dout_tvalid | m_axis_dout_tvalidu))
                         | (isMul & mul_finished);
                         
assign es_allowin      = !es_valid || es_ready_go && m1s_allowin;
assign es_to_m1s_valid =  es_valid && es_ready_go;

always @(posedge clk) begin
    if (reset) begin
        es_valid <= 1'b0;
    end
    else if (es_allowin) begin
        es_valid <= ds_to_es_valid;
    end
end

always @(posedge clk ) begin
    if (reset)
        ds_to_es_bus_r <= 0;
    else if (flush ) //清除流水线
        ds_to_es_bus_r <= 0;
    else if (ds_to_es_valid && es_allowin) begin
        ds_to_es_bus_r <= ds_to_es_bus;
    end
end

assign es_alu_src1 = es_src1_is_not_rs_value ? es_not_rs_value : es_rs_value;

//lab6修改 对于es_src2_is_imm,非立即数:2'b00 立即数零扩展:2'b01 立即数有符号扩展:2'b10 
assign es_alu_src2 = es_src2_is_not_rt_value ? es_not_rt_value : es_rt_value;

//lab7 处理送入DM存储器的数据 store指令共五类
assign sram_wdata = inst_is_sb  ? {4{es_rt_value[7:0]}}:
                    inst_is_sh  ? {2{es_rt_value[15:0]}}:
                    inst_is_swl ? (es_alu_result[1:0] == 2'b00 ? {24'd0, es_rt_value[31:24]} :
                                   es_alu_result[1:0] == 2'b01 ? {16'd0, es_rt_value[31:16]} :
                                   es_alu_result[1:0] == 2'b10 ? { 8'd0, es_rt_value[31:8]}  :
                                   es_rt_value):
                    inst_is_swr ? (es_alu_result[1:0] == 2'b00 ?  es_rt_value :
                                   es_alu_result[1:0] == 2'b01 ? {es_rt_value[23:0], 8'd0}   :
                                   es_alu_result[1:0] == 2'b10 ? {es_rt_value[15:0], 16'd0}  :
                                   {es_rt_value[7:0], 24'd0}):
                                   es_rt_value;

assign sram_wen   = inst_is_sb  ? (es_alu_result[1:0] == 2'b00 ? 4'b0001 :
                                   es_alu_result[1:0] == 2'b01 ? 4'b0010 :
                                   es_alu_result[1:0] == 2'b10 ? 4'b0100 :
                                                                 4'b1000):
                    inst_is_sh  ? (es_alu_result[1:0] == 2'b00 ? 4'b0011 :
                                                                 4'b1100):
                    inst_is_swl ? (es_alu_result[1:0] == 2'b00 ? 4'b0001 :
                                   es_alu_result[1:0] == 2'b01 ? 4'b0011 :
                                   es_alu_result[1:0] == 2'b10 ? 4'b0111 :
                                                                 4'b1111):
                    inst_is_swr ? (es_alu_result[1:0] == 2'b00 ? 4'b1111 :
                                   es_alu_result[1:0] == 2'b01 ? 4'b1110 :
                                   es_alu_result[1:0] == 2'b10 ? 4'b1100 :
                                                                 4'b1000):
                                                                 4'b1111;

alu u_alu(
    .clk                 (clk                 ),
    .reset               (reset               ),
    .alu_op              (es_alu_op           ),
    .alu_src1            (es_alu_src1         ),
    .alu_src2            (es_alu_src2         ),
    .alu_result          (temp_alu_result     ),
    .Overflow_inst       (Overflow_inst       ),
    .m_axis_dout_tvalid  (m_axis_dout_tvalid  ),
    .m_axis_dout_tvalidu (m_axis_dout_tvalidu ),
    // .isMul               (isMul               ),//TODO
    // .isDiv               (isDiv               ),//TODO
    .mul_finished        (mul_finished        ),
    .Overflow_ex         (Overflow_ex         ),
    .es_ex               (es_ex               ),
    .m1s_ex              (m1s_ex              )
);

assign isMul = es_alu_op[14] | es_alu_op[15];
assign isDiv = es_alu_op[13] | es_alu_op[12];

//lab8添加 当该指令为mtc0 把es_alu_result保存为es_rt_value;否则即为alu运算得到的值
assign es_alu_result = es_inst_mtc0 ? es_rt_value : temp_alu_result; 

//lab8添加 处理整型溢出例外 处理地址错例外(写数据)和地址错例外(读数据)
//TODO:es_alu_result目前暂代data_sram_addr
assign ADES_ex = inst_is_sh && es_alu_result[0] ? 1'b1 :
                 inst_is_sw && (es_alu_result[1:0] != 0) ? 1'b1 : 1'b0;
                 
assign ADEL_ex = (inst_is_lh | inst_is_lhu) && es_alu_result[0] ? 1'b1 :
                 inst_is_lw && (es_alu_result[1:0] != 0) ? 1'b1 : 1'b0;

assign es_ex      = temp_ex | Overflow_ex | ADES_ex | ADEL_ex; 
assign es_Exctype = temp_ex     ? temp_ExcCode:
                    Overflow_ex ?       `Ov   : 
                    ADES_ex     ?       `AdES : 
                    ADEL_ex     ?       `AdEL : `NO_EX;

assign EXE_dest   = es_dest & {5{es_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑es_valid有效性
assign EXE_result = es_alu_result;

endmodule
