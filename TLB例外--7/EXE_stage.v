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
    output [ 4:0] EXE_dest, // EXE�׶�дRF��ַ ͨ����·�͵�ID�׶�
    output [31:0] EXE_result, //EXE�׶� es_alu_result      
    output        es_load_op, //EXE�׶� �ж��Ƿ�Ϊloadָ��
    input         flush, //flush=1ʱ������Ҫ�����쳣
    output        es_ex, // TODO û�б�Ҫ�͵�myCPU_top����
    //input         ms_ex, //�ж�MEM�׶��Ƿ��б����Ϊ�����ָ��
    input         m1s_ex,
    output        es_inst_mfc0, //EXE�׶�ָ��Ϊmfc0 ǰ�ݵ�ID�׶�
    input         m1s_inst_eret
    //input         ms_inst_eret, //MEM�׶�ָ��Ϊeret ǰ�ݵ�EXE ����SRAM��д
    //input         ws_inst_eret, //WB�׶�ָ��Ϊeret ǰ�ݵ�EXE ����SRAM��д;ǰ�ݵ�IF�׶��޸�nextpc
    //Attention:CPU��DCache�Ľ����ź�����;
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
wire [11:0] es_mem_inst; //lab7��� ����ͬ�Ĵ�ȡ��ָ��
wire [3:0] sram_wen; //sramд�ź�,�������ֲ�ͬ��storeָ��,���ֵ�� data_sram_wen
wire [31:0] sram_wdata; //дsram������,���ֵ��data_sram_wdata

wire [2:0] es_sel; 
wire [4:0] es_mfc0_rd;
wire es_inst_mtc0; 
// wire es_inst_mfc0; //���ź���ģ��˿ڶ���
wire es_inst_eret;
wire es_bd;
wire temp_ex; //��ʱ�����н�����ID��ds_ex�ź�
wire [4:0] temp_ExcCode; //��ʱ�����н�����ID��ds_ExcCode�ź�
// wire es_ex;
wire [4:0] es_Exctype;
wire Overflow_ex; //�����������Ϊ1
wire [ 2:0] Overflow_inst; //�����漰����������������ָ��:add,addi,sub
wire ADES_ex; //��ַ������(д����)
wire ADEL_ex; //��ַ������(������)

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
        es_gr_we       ,  //118:118 --дRFʹ��
        es_mem_we      ,  //117:117 --дDMʹ��
        es_dest        ,  //116:112 
        es_imm         ,  //111:96
        es_rs_value    ,  //95 :64
        es_rt_value    ,  //63 :32
        es_pc             //31 :0
       } = ds_to_es_bus_r;

wire [31:0] es_alu_src1   ;
wire [31:0] es_alu_src2   ;
wire [31:0] temp_alu_result ; //��ʱ����alu����õ��Ľ��
wire [31:0] es_alu_result ; //���˿���alu������,������mtc0ָ��Я����rt����;
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
//lab8��� ��Ҫ�����ַ������,Ҫ���ǵ�ַ����Ч��
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
                      //TODO:es_alu_resultĿǰ�ݴ�data_sram_addr
                       es_load_op     ,  //133:133
                       //es_alu_result  ,  //164:133 --��дsram�ĵ�ַ
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
                       es_res_from_mem,  //70:70 --�Ƿ�Ϊloadָ��(ʹ��DM����)
                       es_gr_we       ,  //69:69 --дRFʹ��
                       es_dest        ,  //68:64 --дRF�ĵ�ַ
                       es_alu_result  ,  //63:32 --16λ������
                       es_pc             //31:0 --EXE�׶� PCֵ
                      };

//m_axis_dout_tvalid��������ź� es_alu_op[12]Ϊdivָ�� es_alu_op[13]Ϊdivuָ��
//���EXE��Ӧһ��loadָ��,��ô�ȴ�data_data_ok,���ܽ���ָ����е�MEM�׶Ρ�������Ŀ����߼���,data_ok��
//����data_rdataҪ��pcֵ��ǰһ��ʱ�����ڵ���MEM�׶Ρ�
//TODO:�����storeָ��,ֱ�ӷ���???(�ο���CPU���ʵս��P243)
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
    else if (flush ) //�����ˮ��
        ds_to_es_bus_r <= 0;
    else if (ds_to_es_valid && es_allowin) begin
        ds_to_es_bus_r <= ds_to_es_bus;
    end
end

assign es_alu_src1 = es_src1_is_sa  ? {27'b0, es_imm[10:6]} : 
                     es_src1_is_pc  ? es_pc[31:0] :
                                      es_rs_value;

//lab6�޸� ����es_src2_is_imm,��������:2'b00 ����������չ:2'b01 �������з�����չ:2'b10 
assign es_alu_src2 = es_src2_is_imm==2'b01 ? {16'b0 , es_imm[15:0]}:
                     es_src2_is_imm==2'b10 ? {{16{es_imm[15]}}, es_imm[15:0]}:
                     es_src2_is_8          ? 32'd8 : es_rt_value;

//lab7 ��������DM�洢�������� storeָ�����
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

//lab8��� ����ָ��Ϊmtc0 ��es_alu_result����Ϊes_rt_value;����Ϊalu����õ���ֵ
assign es_alu_result = es_inst_mtc0 ? es_rt_value : temp_alu_result; 

//lab8��� ��������������� �����ַ������(д����)�͵�ַ������(������)
//TODO:es_alu_resultĿǰ�ݴ�data_sram_addr
assign ADES_ex = inst_is_sh && es_alu_result[0] ? 1'b1 :
                 inst_is_sw && es_alu_result[1:0] ? 1'b1 : 1'b0;
                 
assign ADEL_ex = (inst_is_lh | inst_is_lhu) && es_alu_result[0] ? 1'b1 :
                 inst_is_lw && es_alu_result[1:0] ? 1'b1 : 1'b0;

assign es_ex      = temp_ex | Overflow_ex | ADES_ex | ADEL_ex; 
assign es_Exctype = Overflow_ex ? `Ov   : 
                    ADES_ex     ? `AdES : 
                    ADEL_ex     ? `AdEL : temp_ExcCode;


/*******************CPU��DCache�Ľ����źŸ�ֵ����******************/
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
//                    es_mem_we ? sram_wen : 4'h0; //ȥ����es_valid
//assign data_wdata = sram_wdata;
/*******************CPU��DCache�Ľ����źŸ�ֵ����******************/

assign EXE_dest   = es_dest & {5{es_valid}}; //дRF��ַͨ����·�͵�ID�׶� ע�⿼��es_valid��Ч��
assign EXE_result = es_alu_result;

endmodule
