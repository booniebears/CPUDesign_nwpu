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
    //to ms
    output        es_to_m1s_valid,
    output [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus,
    output [ 4:0] EXE_dest, // EXE阶段写RF地址 通过旁路送到ID阶段
    output [31:0] EXE_result, //EXE阶段 es_alu_result      
    output        es_load_op, //EXE阶段 判定是否为load指令
    input         flush, //flush=1时表明需要处理异常
    output        es_ex, // TODO 没有必要送到myCPU_top里面
    //input         ms_ex, //判定MEM阶段是否有被标记为例外的指令
    input         m1s_ex,
    output        es_inst_mfc0, //EXE阶段指令为mfc0 前递到ID阶段
    input         m1s_inst_eret
    //input         ms_inst_eret, //MEM阶段指令为eret 前递到EXE 控制SRAM读写
    //input         ws_inst_eret, //WB阶段指令为eret 前递到EXE 控制SRAM读写;前递到IF阶段修改nextpc
    //Attention:CPU和DCache的交互信号如下;
);

reg         es_valid      ;
wire        es_ready_go   ;

reg  [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus_r;
wire [40:0] es_alu_op     ;
wire        es_src1_is_sa ;  
wire        es_src1_is_pc ;
wire [ 1:0] es_src2_is_imm; 
wire        es_src2_is_8  ;
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

wire [2:0] es_sel; 
wire [4:0] es_mfc0_rd;
wire es_inst_mtc0; 
// wire es_inst_mfc0; //该信号在模块端口定义
wire es_inst_eret;
wire es_bd;
wire temp_ex; //临时用来承接来自ID的ds_ex信号
wire [4:0] temp_ExcCode; //临时用来承接来自ID的ds_ExcCode信号
// wire es_ex;
wire [4:0] es_Exctype;
wire Overflow_ex; //有整型溢出置为1
wire [ 2:0] Overflow_inst; //可能涉及整型溢出例外的三条指令:add,addi,sub
wire ADES_ex; //地址错例外(写数据)
wire ADEL_ex; //地址错例外(读数据)

wire es_inst_tlbp ;
wire es_inst_tlbr ;
wire es_inst_tlbwi;
wire es_inst_tlbwr;

assign {
        es_inst_tlbp   ,  //181:181
        es_inst_tlbr   ,  //180:180
        es_inst_tlbwi  ,  //179:179
        es_inst_tlbwr  ,  //178:178
        es_mfc0_rd     ,  //177:173 
        Overflow_inst  ,  //172:170
        temp_ex        ,  //169:169 
        temp_ExcCode   ,  //168:164 
        es_bd          ,  //163:163
        es_inst_eret   ,  //162:162
        es_sel         ,  //161:159 
        es_inst_mtc0   ,  //158:158 
        es_inst_mfc0   ,  //157:157 
        es_mem_inst    ,  //156:145
        es_alu_op      ,  //144:125
        es_load_op     ,  //124:124
        es_src1_is_sa  ,  //123:123
        es_src1_is_pc  ,  //122:122
        es_src2_is_imm ,  //121:120
        es_src2_is_8   ,  //119:119
        es_gr_we       ,  //118:118 --写RF使能
        es_mem_we      ,  //117:117 --写DM使能
        es_dest        ,  //116:112 
        es_imm         ,  //111:96
        es_rs_value    ,  //95 :64
        es_rt_value    ,  //63 :32
        es_pc             //31 :0
       } = ds_to_es_bus_r;

wire [31:0] es_alu_src1   ;
wire [31:0] es_alu_src2   ;
wire [31:0] temp_alu_result ; //临时接收alu计算得到的结果
wire [31:0] es_alu_result ; //除了考虑alu运算结果,还考虑mtc0指令携带的rt数据;
wire        es_res_from_mem;
wire m_axis_dout_tvalid;
wire m_axis_dout_tvalidu;
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

//m_axis_dout_tvalid除法完成信号 es_alu_op[12]为div指令 es_alu_op[13]为divu指令
//如果EXE对应一条load指令,那么等待data_data_ok,才能将该指令放行到MEM阶段。在下面的控制逻辑中,data_ok和
//数据data_rdata要比pc值提前一个时钟周期到达MEM阶段。
//TODO:如果是store指令,直接放行???(参考《CPU设计实战》P243)
assign es_ready_go    =  
                         ((!es_alu_op[12] & ~es_alu_op[13])
                         |(es_alu_op[12] & m_axis_dout_tvalid)
                         |(es_alu_op[13] & m_axis_dout_tvalidu));

assign es_allowin     = !es_valid || es_ready_go && m1s_allowin;
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

assign es_alu_src1 = es_src1_is_sa  ? {27'b0, es_imm[10:6]} : 
                     es_src1_is_pc  ? es_pc[31:0] :
                                      es_rs_value;

//lab6修改 对于es_src2_is_imm,非立即数:2'b00 立即数零扩展:2'b01 立即数有符号扩展:2'b10 
assign es_alu_src2 = es_src2_is_imm==2'b01 ? {16'b0 , es_imm[15:0]}:
                     es_src2_is_imm==2'b10 ? {{16{es_imm[15]}}, es_imm[15:0]}:
                     es_src2_is_8          ? 32'd8 : es_rt_value;

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
    .clk                (clk          ),
    .reset              (reset        ),
    .alu_op             (es_alu_op    ),
    .alu_src1           (es_alu_src1  ),
    .alu_src2           (es_alu_src2  ),
    .alu_result         (temp_alu_result),
    .Overflow_inst      (Overflow_inst),
    .m_axis_dout_tvalid (m_axis_dout_tvalid),
    .m_axis_dout_tvalidu(m_axis_dout_tvalidu),
    .Overflow_ex        (Overflow_ex),
    .es_ex              (es_ex),
    .m1s_ex              (m1s_ex)
);

//lab8添加 当该指令为mtc0 把es_alu_result保存为es_rt_value;否则即为alu运算得到的值
assign es_alu_result = es_inst_mtc0 ? es_rt_value : temp_alu_result; 

//lab8添加 处理整型溢出例外 处理地址错例外(写数据)和地址错例外(读数据)
//TODO:es_alu_result目前暂代data_sram_addr
assign ADES_ex = inst_is_sh && es_alu_result[0] ? 1'b1 :
                 inst_is_sw && es_alu_result[1:0] ? 1'b1 : 1'b0;
                 
assign ADEL_ex = (inst_is_lh | inst_is_lhu) && es_alu_result[0] ? 1'b1 :
                 inst_is_lw && es_alu_result[1:0] ? 1'b1 : 1'b0;

assign es_ex      = temp_ex | Overflow_ex | ADES_ex | ADEL_ex; 
assign es_Exctype = Overflow_ex ? `Ov   : 
                    ADES_ex     ? `AdES : 
                    ADEL_ex     ? `AdEL : temp_ExcCode;


/*******************CPU与DCache的交互信号赋值如下******************/
//always @(*) begin
//    if(es_ex | m1s_ex | m1s_inst_eret )
//        data_valid <= 1'b0;
//    else if((es_load_op | es_mem_we) & data_addr_ok & m1s_allowin & es_valid)
//        data_valid <= 1'b1;
//    else
//        data_valid <= 1'b0;
//end
//
//assign data_op    = es_mem_we ? 1'b1 : 1'b0;
//assign {data_tag,data_index,data_offset} = (es_load_op | es_mem_we) ? es_alu_result : {data_tag,data_index,data_offset};
//assign data_wstrb = es_ex | m1s_ex | m1s_inst_eret  ? 4'b0 :
//                    es_mem_we ? sram_wen : 4'h0; //去掉了es_valid
//assign data_wdata = sram_wdata;
/*******************CPU与DCache的交互信号赋值如上******************/

assign EXE_dest   = es_dest & {5{es_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑es_valid有效性
assign EXE_result = es_alu_result;

endmodule
