`include "global_defines.vh"

module id_stage(
    input        clk,
    input        reset,
    //allowin
    input        es_allowin,
    output       ds_allowin,
    //from fs
    input        fs_to_ds_valid,
    input  [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus,
    input  [`BPU_TO_DS_BUS_WD -1:0] BPU_to_ds_bus,
    //to es
    output       ds_to_es_valid,
    output [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus,
    //to fs
    output [`BR_BUS_WD       -1:0] br_bus,
    output [`BRESULT_WD      -1:0] BResult,
    output                         is_branch,
    //to rf: for write back
    input  [`WS_TO_RF_BUS_WD -1:0] ws_to_rf_bus,
    input [ 4:0] EXE_dest, // EXE�׶�дRF��ַ ͨ����·�͵�ID�׶�
    input [ 4:0] MEM_dest, // MEM�׶�дRF��ַ ͨ����·�͵�ID�׶�
    input [ 4:0] M1s_dest,
    input [ 4:0] WB_dest, // WB�׶�дRF��ַ ͨ����·�͵�ID�׶�
    input [31:0] EXE_result, //EXE�׶� es_alu_result
    input [31:0] MEM_result, //MEM�׶� ms_final_result 
    input [31:0] M1s_result,
    input [31:0] WB_result, //WB�׶� ws_final_result mfc0����������Ҳ��ǰ�ݵ�ID�׶�
    input        es_load_op, //EXE�׶� �ж��Ƿ�Ϊloadָ��
    input        m1s_load_op,
    input        flush, //flush=1ʱ������Ҫ�����쳣
    input        es_inst_mfc0,
    input        m1s_inst_mfc0,
    input        CP0_Status_IE_out, //IE=1,ȫ���ж�ʹ�ܿ���
    input        CP0_Status_EXL_out, //EXL=0,û���������ڴ���
    input [ 7:0] CP0_Status_IM_out, //IM��Ӧ�����ж�Դ����λ
    input [ 7:0] CP0_Cause_IP_out, //�������жϱ�ʶ
    input        CP0_Cause_TI_out,  //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
    output       mfc0_stall,   //TODO: ��ʱ��mfc0_stall�ź��͵�IF�׶�,ȷ��nextpc��ת����ȷ��
    output       ds_ex,         //��������źŸ�PREIF�׶�
    input        icache_busy,
    input        dcache_busy
);


reg         ds_valid   ;
wire        ds_ready_go; //��������ID����EXE�׶εĿ����ź�

wire [31                 :0] fs_pc;
reg  [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus_r;//��ˮ���������Ļ��͵���fs_to_ds_bus,���ݲο�IFģ��
assign fs_pc = fs_to_ds_bus[31:0];

wire [31:0] ds_inst;
wire [31:0] ds_pc  ;
//lab8����
wire [4:0]  mfc0_rd  ; //mfc0�е�rd�� ָ��CP0�Ĵ����Ķ�д��ַ
wire        ds_bd  ; //ID�׶� ��ǰָ�������ӳٲ���,����Ϊ1
wire        temp_ex; //��ʱ�����н�����IF��fs_ex�ź�
wire [4:0]  temp_Exctype; //��ʱ�����н�����IF��fs_ExcCode�ź�
//�������� Sys,Bp��RI
wire [ 4:0] ds_Exctype; //�������
wire        inst_defined; //��ָ���Ѿ���ָ������
// wire        ds_ex; //ID�׶� �����쳣����Ϊ1
wire [ 2:0] Overflow_inst; //�����漰����������������ָ��:add,addi,sub

assign {
        temp_ex     ,
        temp_Exctype,
        ds_bd     ,
        ds_inst   ,
        ds_pc  } = fs_to_ds_bus_r;

wire [1:0] Count;
wire [31:0] BPU_ret_addr;
wire BPU_valid;
wire BPU_is_taken;

assign {
        BPU_is_taken,
        Count, 
        BPU_valid, 
        BPU_ret_addr} = BPU_to_ds_bus;

wire        rf_we   ;
wire [ 4:0] rf_waddr;
wire [31:0] rf_wdata;
assign {rf_we   ,  //37:37
        rf_waddr,  //36:32
        rf_wdata   //31:0
       } = ws_to_rf_bus;

wire        br_taken;
wire [31:0] br_target;

wire [40:0] alu_op; //12��ALUָ��
wire        load_op;
wire        src1_is_sa;
wire        src1_is_pc;
wire [ 1:0] src2_is_imm; //lab6�޸� Ҫ��������չ���з�����չ
wire        src2_is_8;
wire        gr_we;
wire        mem_we;
wire [ 4:0] dest;
wire [15:0] imm;
wire [31:0] rs_value;
wire [31:0] rt_value;

wire [ 5:0] op;
wire [ 4:0] rs;
wire [ 4:0] rt;
wire [ 4:0] rd;
wire [ 4:0] sa;
wire [ 5:0] func;
wire [25:0] jidx;
wire [ 2:0] sel;
wire [63:0] op_d;
wire [31:0] rs_d;
wire [31:0] rt_d;
wire [31:0] rd_d;
wire [31:0] sa_d;
wire [63:0] func_d;

//�ж���ʲôָ�� ����op funct sa rs�ȶ������źŽ��и�ֵ
wire        inst_addu;
wire        inst_subu;
wire        inst_slt;
wire        inst_sltu;
wire        inst_and;
wire        inst_or;
wire        inst_xor;
wire        inst_nor;
wire        inst_sll;
wire        inst_srl;
wire        inst_sra;
wire        inst_addiu;
wire        inst_lui;
wire        inst_lw;
wire        inst_sw;
wire        inst_beq;
wire        inst_bne;
wire        inst_jal;
wire        inst_jr;
//lab6���� ����ָ��add,addi,sub,slti,sltiu,andi,ori,xori,sllv,srav,srlv
wire        inst_add;
wire        inst_addi;
wire        inst_sub;
wire        inst_slti; 
wire        inst_sltiu;
wire        inst_andi;
wire        inst_ori; 
wire        inst_xori;
wire        inst_sllv;
wire        inst_srav;
wire        inst_srlv;
wire        inst_mult;
wire        inst_multu;
wire        inst_div;
wire        inst_divu;
wire        inst_mfhi;
wire        inst_mflo;
wire        inst_mthi;
wire        inst_mtlo;
//lab7�޸� ����ת��ָ��bgez,bgtz,blez,bltz,bgezal,bltzal,j,jalr ȫ����ID�׶����
wire        inst_bgez;
wire        inst_bgtz;
wire        inst_blez;
wire        inst_bltz;
wire        inst_bgezal;
wire        inst_bltzal;
wire        inst_j;
wire        inst_jalr;
//lab7�޸� ���Ӵ���ָ��swl,swr,sb,sh,ȡ��ָ��lb,lbu,lh,lhu,lwl,lwr
wire        inst_swl;
wire        inst_swr;
wire        inst_sb;
wire        inst_sh;
wire        inst_lb;
wire        inst_lbu;
wire        inst_lh;
wire        inst_lhu;
wire        inst_lwl;
wire        inst_lwr;
wire [11:0] mem_inst; //lab7���� ����ͬ�Ĵ�ȡ��ָ��
assign mem_inst = { inst_swr, inst_swl, inst_sh, 
                    inst_sb , inst_lwr, inst_lwl, 
                    inst_lhu, inst_lh , inst_lbu,
                    inst_lb , inst_sw , inst_lw};

//lab8���� ����ָ��MTC0,MFC0,ERET,SYSCALL,BREAK
wire        inst_mtc0;
wire        inst_mfc0;
wire        inst_eret;
wire        inst_syscall;
wire        inst_break;

//tlb���� ����ָ��TLBWI,TLBWR,TLBP,TLBR
wire        inst_tlbp;
wire        inst_tlbr;
wire        inst_tlbwi;
wire        inst_tlbwr;
//clo_clz
wire        inst_clo;
wire        inst_clz;

//madd maddu msub msubu
wire        inst_madd;
wire        inst_maddu;
wire        inst_msub;
wire        inst_msubu;
wire        inst_mul;
wire        inst_movn;
wire        inst_movz;

//trap
wire        inst_teq;
wire        inst_teqi;
wire        inst_tge;
wire        inst_tgei;
wire        inst_tgeiu;
wire        inst_tgeu;
wire        inst_tlt;
wire        inst_tlti;
wire        inst_tltiu;
wire        inst_tltu;
wire        inst_tne;
wire        inst_tnei;

wire        dst_is_r31;  
wire        dst_is_rt;   

wire [ 4:0] rf_raddr1; //Ŀǰ��rs
wire [31:0] rf_rdata1;
wire [ 4:0] rf_raddr2; //Ŀǰ��rt
wire [31:0] rf_rdata2;

wire        rs_eq_rt; //rs==rt

//lab4����
wire rs_wait;
wire rt_wait;
wire inst_no_dest; //ָ���ò���дRFʱΪ1,����Ϊ0
wire src1_no_rs;    //ָ�� rs ��� 0���Ҳ��ǴӼĴ����Ѷ� rs ������
wire src2_no_rt;    //ָ�� rt ��� 0���Ҳ��ǴӼĴ����Ѷ� rt ������
wire load_stall;    //��ΪEXE�׶ε�loadָ����������ˮ����ͣ 
wire br_stall;      //ID�׶μ�⵽branchָ��,����loadָ����EXE�׶�,�޷�ʹ��forward,������ͣ

//lab7���� ���ڸ����ж�b��ָ�����ת״��
wire        rsgez;
wire        rsgtz;
wire        rslez;
wire        rsltz;

wire br_right; // 指令跳转了，并且BPU预测跳转正确
wire BPU_right; // BPU预测正确

assign br_bus       = { 
                        BPU_valid, // 该条指令BPU进行了预测
                        is_branch, // 该条指令是跳转指令
                        br_stall,   //
                        br_taken,   //ID阶段确认该条指令需要跳转
                        BPU_right, // BPU预测正确
                        br_target, //ID阶段确认跳转的地址
                        ds_pc       
                        };

assign ds_to_es_bus = {
                       inst_tlbp   ,  //181:181
                       inst_tlbr   ,  //180:180
                       inst_tlbwi  ,  //179:179
                       inst_tlbwr  ,  //178:178                          
                       mfc0_rd     ,  //177:173 --mfc0�е�rd�� ָ��CP0�Ĵ����Ķ�д��ַ
                       Overflow_inst, //172:170 --�����漰����������������ָ��:add,addi,sub
                       ds_ex       ,  //169:169 --ID�׶� �����쳣����Ϊ1
                       ds_Exctype  ,  //168:164 --�������
                       ds_bd       ,  //163:163 --ID�׶� ��ǰָ�������ӳٲ���,����Ϊ1
                       inst_eret   ,  //162:162 --eretָ��Ҫ�͵�WB�׶δ���
                       sel         ,  //161:159 --ָ��sel��Ҫ�͵�WB�׶δ���
                       inst_mtc0   ,  //158:158 --mtc0ָ��Ҫ�͵�WB�׶δ���
                       inst_mfc0   ,  //157:157 --mfc0ָ��Ҫ�͵�WB�׶δ���
                       mem_inst    ,  //156:145 --���ֲ�ͬ�Ĵ�ȡָ��
                       alu_op      ,  //144:125 --aluָ�����
                       load_op     ,  //124:124 --�Ƿ�Ϊloadָ��
                       src1_is_sa  ,  //123:123 --��λsa?
                       src1_is_pc  ,  //122:123 --pc?
                       src2_is_imm ,  //121:120 --������?
                       src2_is_8   ,  //119:119 --jalָ����Ҫ��8?
                       gr_we       ,  //118:118 --дRFʹ��
                       mem_we      ,  //117:117 --дDMʹ��
                       dest        ,  //116:112 --дRF�ĵ�ַ
                       imm         ,  //111:96  --16λ������
                       rs_value    ,  //95 :64  --32λrs
                       rt_value    ,  //63 :32  --32λrt
                       ds_pc          //31 :0   --ID�׶� PCֵ
                      };

assign ds_allowin     = !ds_valid || ds_ready_go && es_allowin;
assign ds_to_es_valid = ds_valid && ds_ready_go;
always @(posedge clk) begin
    if(reset) begin
        ds_valid <= 1'b0;
    end
    else if(ds_allowin) begin
        ds_valid <= fs_to_ds_valid;
    end
end

always @(posedge clk) begin
    if (reset)
        fs_to_ds_bus_r <= 0;
    else if (flush) 
        fs_to_ds_bus_r <= 0;
    else if (fs_to_ds_valid & ds_allowin) begin
        fs_to_ds_bus_r <= fs_to_ds_bus;
    end
end

assign op   = ds_inst[31:26];
assign rs   = ds_inst[25:21];
assign rt   = ds_inst[20:16];
assign rd   = ds_inst[15:11];
assign sa   = ds_inst[10: 6];
assign func = ds_inst[ 5: 0];
assign imm  = ds_inst[15: 0];
assign jidx = ds_inst[25: 0];
assign sel  = ds_inst[ 2: 0];
assign mfc0_rd = rd;

// ������ ����ʹ��assign
decoder_6_64 u_dec0(.in(op  ), .out(op_d  ));
decoder_6_64 u_dec1(.in(func), .out(func_d));
decoder_5_32 u_dec2(.in(rs  ), .out(rs_d  ));
decoder_5_32 u_dec3(.in(rt  ), .out(rt_d  ));
decoder_5_32 u_dec4(.in(rd  ), .out(rd_d  ));
decoder_5_32 u_dec5(.in(sa  ), .out(sa_d  ));

//�����ֱ�ӿ�λ ���ñ������Ƚ� �����ʹ��assign ע��h��ͷ����16���Ƶı�ʾ
assign inst_addu   = op_d[6'h00] & func_d[6'h21] & sa_d[5'h00];
assign inst_subu   = op_d[6'h00] & func_d[6'h23] & sa_d[5'h00];
assign inst_slt    = op_d[6'h00] & func_d[6'h2a] & sa_d[5'h00];
assign inst_sltu   = op_d[6'h00] & func_d[6'h2b] & sa_d[5'h00];
assign inst_and    = op_d[6'h00] & func_d[6'h24] & sa_d[5'h00];
assign inst_or     = op_d[6'h00] & func_d[6'h25] & sa_d[5'h00];
assign inst_xor    = op_d[6'h00] & func_d[6'h26] & sa_d[5'h00];
assign inst_nor    = op_d[6'h00] & func_d[6'h27] & sa_d[5'h00];
assign inst_sll    = op_d[6'h00] & func_d[6'h00] & rs_d[5'h00];
assign inst_srl    = op_d[6'h00] & func_d[6'h02] & rs_d[5'h00];
assign inst_sra    = op_d[6'h00] & func_d[6'h03] & rs_d[5'h00];
assign inst_addiu  = op_d[6'h09];
assign inst_lui    = op_d[6'h0f] & rs_d[5'h00];
assign inst_lw     = op_d[6'h23];
assign inst_sw     = op_d[6'h2b];
assign inst_beq    = op_d[6'h04];
assign inst_bne    = op_d[6'h05];
assign inst_jal    = op_d[6'h03];
assign inst_jr     = op_d[6'h00] & func_d[6'h08] & rt_d[5'h00] & rd_d[5'h00] & sa_d[5'h00];
//lab6���� ����ָ��add,addi,sub,slti,sltiu,andi,ori,xori,sllv,srav,srlv
assign inst_add    = op_d[6'h00] & func_d[6'h20] & sa_d[5'h00];
assign inst_addi   = op_d[6'h08];
assign inst_sub    = op_d[6'h00] & func_d[6'h22] & sa_d[5'h00];
assign inst_slti   = op_d[6'h0a];
assign inst_sltiu  = op_d[6'h0b];
assign inst_andi   = op_d[6'h0c];
assign inst_ori    = op_d[6'h0d];
assign inst_xori   = op_d[6'h0e];
assign inst_sllv   = op_d[6'h00] & func_d[6'h04] & sa_d[5'h00];
assign inst_srav   = op_d[6'h00] & func_d[6'h07] & sa_d[5'h00];
assign inst_srlv   = op_d[6'h00] & func_d[6'h06] & sa_d[5'h00];
assign inst_mult   = op_d[6'h00] & func_d[6'h18] & rd_d[5'h00] & sa_d[5'h00];
assign inst_multu  = op_d[6'h00] & func_d[6'h19] & rd_d[5'h00] & sa_d[5'h00];
assign inst_div    = op_d[6'h00] & func_d[6'h1a] & rd_d[5'h00] & sa_d[5'h00];
assign inst_divu   = op_d[6'h00] & func_d[6'h1b] & rd_d[5'h00] & sa_d[5'h00];
assign inst_mfhi   = op_d[6'h00] & func_d[6'h10] & rs_d[5'h00] & rt_d[5'h00] & sa_d[5'h00];
assign inst_mflo   = op_d[6'h00] & func_d[6'h12] & rs_d[5'h00] & rt_d[5'h00] & sa_d[5'h00];
assign inst_mthi   = op_d[6'h00] & func_d[6'h11] & rt_d[5'h00] & rd_d[5'h00] & sa_d[5'h00];
assign inst_mtlo   = op_d[6'h00] & func_d[6'h13] & rt_d[5'h00] & rd_d[5'h00] & sa_d[5'h00];
//lab7���� ����ת��ָ��bgez,bgtz,blez,bltz,bgezal,bltzal,j,jalr ȫ����ID�׶����
assign inst_bgez   = op_d[6'h01] & rt_d[5'h01];
assign inst_bgtz   = op_d[6'h07] & rt_d[5'h00];
assign inst_blez   = op_d[6'h06] & rt_d[5'h00];
assign inst_bltz   = op_d[6'h01] & rt_d[5'h00];
assign inst_bgezal = op_d[6'h01] & rt_d[5'h11];
assign inst_bltzal = op_d[6'h01] & rt_d[5'h10];
assign inst_j      = op_d[6'h02];
assign inst_jalr   = op_d[6'h00] & func_d[6'h09] & rt_d[5'h00] & sa_d[5'h00];
//lab7���� ���Ӵ���ָ��swl,swr,sb,sh,ȡ��ָ��lb,lbu,lh,lhu,lwl,lwr 
assign inst_swl    = op_d[6'h2a];
assign inst_swr    = op_d[6'h2e];
assign inst_sb     = op_d[6'h28];
assign inst_sh     = op_d[6'h29];
assign inst_lb     = op_d[6'h20];
assign inst_lbu    = op_d[6'h24];
assign inst_lh     = op_d[6'h21];
assign inst_lhu    = op_d[6'h25];
assign inst_lwl    = op_d[6'h22];
assign inst_lwr    = op_d[6'h26];
//lab8���� ����ָ��MTC0,MFC0,ERET,SYSCALL
assign inst_mtc0   = op_d[6'h10] & rs_d[5'h04];
assign inst_mfc0   = op_d[6'h10] & rs_d[5'h00];
assign inst_eret   = op_d[6'h10] & func_d[6'h18];
assign inst_syscall= op_d[6'h00] & func_d[6'h0c];
assign inst_break  = op_d[6'h00] & func_d[6'h0d];

//tlb���� ����ָ��TLBWI,TLBWR,TLBP,TLBR 
assign inst_tlbp   = op_d[6'h10] & func_d[6'h08];
assign inst_tlbr   = op_d[6'h10] & func_d[6'h01];
assign inst_tlbwi  = op_d[6'h10] & func_d[6'h02];
assign inst_tlbwr  = op_d[6'h00] & func_d[6'h06];

//clo_clz
assign inst_clo    = op_d[6'h1c] & func_d[6'h21];
assign inst_clz    = op_d[6'h1c] & func_d[6'h20];

//madd maddu msub msubu
assign inst_madd   = op_d[6'h1c] & func_d[6'h00];
assign inst_maddu  = op_d[6'h1c] & func_d[6'h01];
assign inst_msub   = op_d[6'h1c] & func_d[6'h04];
assign inst_msubu  = op_d[6'h1c] & func_d[6'h05];

//mul
assign inst_mul    = op_d[6'h1c] & func_d[6'h02];

//movn, movz
assign inst_movn  = op_d[6'h00] & func_d[6'h0b];
assign inst_movz  = op_d[6'h00] & func_d[6'h0a];
//trap
assign inst_teq   = op_d[6'h00] & func_d[6'h34];
assign inst_teqi  = op_d[6'h01] & rt_d[5'h0c];
assign inst_tge   = op_d[6'h00] & func_d[6'h30];
assign inst_tgei  = op_d[6'h01] & rt_d[5'h08];
assign inst_tgeiu = op_d[6'h01] & rt_d[5'h09];
assign inst_tgeu  = op_d[6'h00] & func_d[6'h31];
assign inst_tlt   = op_d[6'h00] & func_d[6'h32];
assign inst_tlti  = op_d[6'h01] & rt_d[5'h0a];
assign inst_tltiu = op_d[6'h01] & rt_d[5'h0b];
assign inst_tltu   = op_d[6'h00] & func_d[6'h33];
assign inst_tne   = op_d[6'h00] & func_d[6'h36];
assign inst_tnei  = op_d[6'h01] & rt_d[5'h0e];

//�Ѿ��ڸ�mipsָ��ж������ָ��
assign inst_defined= inst_addu | inst_subu | inst_slt | inst_sltu | inst_and | inst_or | inst_xor 
| inst_nor | inst_sll | inst_srl | inst_sra | inst_addiu | inst_lui | inst_lw | inst_sw | inst_beq
| inst_bne | inst_jal | inst_jr | inst_add | inst_addi | inst_sub | inst_slti | inst_sltiu | inst_andi
| inst_ori | inst_xori | inst_sllv | inst_srav | inst_srlv | inst_mult | inst_multu | inst_div
| inst_divu | inst_mfhi | inst_mflo | inst_mthi | inst_mtlo | inst_bgez | inst_bgtz | inst_blez
| inst_bltz | inst_bgezal | inst_bltzal | inst_j | inst_jalr | inst_swl | inst_swr | inst_sb
| inst_sh | inst_lb | inst_lbu | inst_lh | inst_lhu | inst_lwl | inst_lwr | inst_mtc0 | inst_mfc0
| inst_eret | inst_syscall | inst_break | inst_tlbp | inst_tlbr | inst_tlbwi | inst_tlbwr | inst_clo
| inst_clz | inst_madd | inst_maddu | inst_msub | inst_msubu | inst_mul | inst_movn | inst_movz | inst_teq | inst_teqi 
| inst_tge | inst_tgei | inst_tgeiu | inst_tgeu | inst_tlt | inst_tlti | inst_tltiu | inst_tltu | inst_tne | inst_tnei;


//lab7����
assign rsgez=(rs_value[31]==1'b0||rs_value==32'b0); //>=0
assign rsgtz=(rs_value[31]==1'b0&&rs_value!=32'b0); //>0
assign rslez=(rs_value[31]==1'b1||rs_value==32'b0); //<=0
assign rsltz=(rs_value[31]==1'b1&&rs_value!=32'b0); //<0

//lab8���� �����ܹ��������������Լ��ж�(��ʱ�ж�,�����ж�)
wire has_int; //�ж��Ƿ���յ��ж� ��Ҫ�������������
assign has_int = ((CP0_Cause_IP_out & CP0_Status_IM_out) != 0) && CP0_Status_IE_out && !CP0_Status_EXL_out;

reg Time_int; //��ʱ�ж��ź�
reg Soft_int; //�����ж��ź�

//������ʱ�ж�
parameter Time_Idle     = 2'd0,
          Time_Start    = 2'd1,
          Time_Rollback = 2'd2; 
reg [1:0] Time_state,Time_nextstate;
always @(*) begin //��״̬��ͬʱ����next_state��Soft_int
    case (Time_state)
        Time_Idle: 
            if(CP0_Cause_TI_out && has_int && ds_valid) begin
                Time_nextstate = Time_Start;
                Time_int       = 1'b1;
            end
            else begin
                Time_nextstate = Time_Idle;
                Time_int       = 1'b0;
            end
        Time_Start:
            if(ds_to_es_valid && es_allowin) begin
                Time_nextstate = Time_Rollback;
                Time_int       = 1'b1;
            end
            else begin
                Time_nextstate = Time_Start;
                Time_int       = 1'b1;
            end
        Time_Rollback:
            if(~CP0_Cause_TI_out && ~has_int) begin
                Time_nextstate = Time_Idle;
                Time_int       = 1'b0;
            end
            else begin
                Time_nextstate = Time_Rollback;
                Time_int       = 1'b0;
            end
        default: begin
            Time_nextstate = Time_Idle;
            Time_int       = 1'b0;
        end
    endcase
end


always @(posedge clk) begin
    if(reset) 
        Time_state <= Time_Idle;
    else 
        Time_state <= Time_nextstate;
end

//���������ж�
parameter Soft_Idle     = 2'd0,
          Soft_Start    = 2'd1,
          Soft_Rollback = 2'd2; 
reg [1:0] Soft_state,Soft_nextstate;

always @(*) begin //��״̬��ͬʱ����next_state��Soft_int
    case (Soft_state)
        Soft_Idle: 
            if(CP0_Cause_IP_out[1:0] != 0 && has_int && ds_valid) begin
                Soft_nextstate = Soft_Start;
                Soft_int       = 1'b1;
            end
            else begin
                Soft_nextstate = Soft_Idle;
                Soft_int       = 1'b0;
            end
        Soft_Start:
            if(ds_to_es_valid && es_allowin) begin
                Soft_nextstate = Soft_Rollback;
                Soft_int       = 1'b1;
            end
            else begin
                Soft_nextstate = Soft_Start;
                Soft_int       = 1'b1;
            end
        Soft_Rollback:
            if(CP0_Cause_IP_out[1:0] == 0 && ~has_int) begin
                Soft_nextstate = Soft_Idle;
                Soft_int       = 1'b0;
            end
            else begin
                Soft_nextstate = Soft_Rollback;
                Soft_int       = 1'b0;
            end
        default: begin
            Soft_nextstate = Soft_Idle;
            Soft_int       = 1'b0;
        end
    endcase
end

always @(posedge clk) begin
    if(reset) 
        Soft_state <= Soft_Idle;
    else 
        Soft_state <= Soft_nextstate;
end


assign ds_ex      = temp_ex | !inst_defined | inst_syscall | inst_break | 
                    has_int & (Time_int | Soft_int);
assign ds_Exctype = Time_int | Soft_int ? `Int :
                    !inst_defined       ?  `RI : 
                    inst_syscall        ? `Sys : 
                    inst_break          ?  `Bp : temp_Exctype; 
assign Overflow_inst = {inst_add,inst_addi,inst_sub};

//alu_op����
assign alu_op[ 0] = inst_addu | inst_addiu | inst_lw | inst_sw | inst_jal | inst_add 
                    | inst_addi | inst_bgezal | inst_bltzal | inst_jalr | inst_sb | inst_sh
                    | inst_swl | inst_swr | inst_lb | inst_lbu | inst_lh | inst_lhu | inst_lwl
                    | inst_lwr; //�ӷ�����
assign alu_op[ 1] = inst_subu | inst_sub; //��������
assign alu_op[ 2] = inst_slt | inst_slti; //�з��űȽϣ�С����λ
assign alu_op[ 3] = inst_sltu | inst_sltiu; //�޷��űȽϣ�С����λ
assign alu_op[ 4] = inst_and | inst_andi; //��λ��
assign alu_op[ 5] = inst_nor; //��λ���
assign alu_op[ 6] = inst_or | inst_ori; //��λ��
assign alu_op[ 7] = inst_xor | inst_xori; //��λ��� 
assign alu_op[ 8] = inst_sll | inst_sllv; //�߼�����
assign alu_op[ 9] = inst_srl | inst_srlv; //�߼�����
assign alu_op[10] = inst_sra | inst_srav; //��������
assign alu_op[11] = inst_lui; //���������ڸ߰벿��
assign alu_op[12] = inst_div; //�з��ų���
assign alu_op[13] = inst_divu; //�޷��ų���
assign alu_op[14] = inst_mult; //�з��ų˷�
assign alu_op[15] = inst_multu; //�޷��ų˷�
assign alu_op[16] = inst_mfhi; //��HI�Ĵ�����ֵд��Ĵ���rd��
assign alu_op[17] = inst_mflo; //��LO�Ĵ�����ֵд��Ĵ���rd��
assign alu_op[18] = inst_mthi; //���Ĵ���rs��ֵд��HI�Ĵ�����
assign alu_op[19] = inst_mtlo; //���Ĵ���rs��ֵд��LO�Ĵ�����
assign alu_op[20] = inst_clo ; 
assign alu_op[21] = inst_clz ; 
assign alu_op[22] = inst_madd;
assign alu_op[23] = inst_maddu;
assign alu_op[24] = inst_msub;
assign alu_op[25] = inst_msubu;
assign alu_op[26] = inst_mul;
assign alu_op[27] = inst_movn;
assign alu_op[28] = inst_movz;
assign alu_op[29] = inst_teq;
assign alu_op[30] = inst_teqi;
assign alu_op[31] = inst_tge;
assign alu_op[32] = inst_tgei;
assign alu_op[33] = inst_tgeiu;
assign alu_op[34] = inst_tgeu;
assign alu_op[35] = inst_tlt;
assign alu_op[36] = inst_tlti;
assign alu_op[37] = inst_tltiu;
assign alu_op[38] = inst_tltu;
assign alu_op[39] = inst_tne;
assign alu_op[40] = inst_tnei;

//lab6����
wire imm_zero_ext; //����������չ
wire imm_sign_ext; //������������չ
assign imm_zero_ext  = inst_andi | inst_ori | inst_xori | inst_lui | inst_teqi | inst_tgei | inst_tlti | inst_tnei;
assign imm_sign_ext  = inst_addiu | inst_lw | inst_sw | inst_addi | inst_slti | inst_sltiu 
                           | inst_sb | inst_sh | inst_swl | inst_swr | inst_lb | inst_lbu | inst_lh 
                           | inst_lhu | inst_lwl | inst_lwr | inst_tgeiu | inst_tltiu;

assign load_op      = inst_lw | inst_lb | inst_lbu | inst_lh | inst_lhu | inst_lwl | inst_lwr;
assign src1_is_sa   = inst_sll | inst_srl | inst_sra;
assign src1_is_pc   = inst_jal | inst_bgezal | inst_bltzal | inst_jalr;
//lab6�޸� ��������:2'b00 ����������չ:2'b01 �������з�����չ:2'b10
assign src2_is_imm  = imm_zero_ext ? 2'b01 : 
                      imm_sign_ext ? 2'b10 : 2'b00; 
assign src2_is_8    = inst_jal | inst_bgezal | inst_bltzal | inst_jalr;
assign dst_is_r31   = inst_jal | inst_bgezal | inst_bltzal;
assign dst_is_rt    = inst_addiu | inst_lui | inst_lw | inst_addi | inst_slti | inst_sltiu
                      | inst_andi | inst_ori | inst_xori | inst_lb | inst_lbu | inst_lh | inst_lhu 
                      | inst_lwl | inst_lwr | inst_mfc0;
assign gr_we        = ~inst_sw & ~inst_beq & ~inst_bne & ~inst_jr & ~inst_bgez & ~inst_bgtz
& ~inst_blez & ~inst_bltz & ~inst_j & ~inst_mthi & ~ inst_mtlo & ~inst_sb & ~inst_sh & ~inst_swl 
& ~inst_swr & ~inst_mtc0 & ~inst_eret & ~inst_syscall;
assign mem_we       = inst_sw | inst_sb | inst_sh | inst_swl | inst_swr;

assign rf_raddr1 = rs;
assign rf_raddr2 = rt;
regfile u_regfile(
    .clk    (clk      ),
    .raddr1 (rf_raddr1),
    .rdata1 (rf_rdata1),
    .raddr2 (rf_raddr2),
    .rdata2 (rf_rdata2),
    .we     (rf_we    ),
    .waddr  (rf_waddr ),
    .wdata  (rf_wdata ),
    .reset  (reset    )
    );

assign rs_value = rs_wait ? (rs == EXE_dest ?  EXE_result :
                             rs == M1s_dest  ?  M1s_result  :
                             rs == MEM_dest ?  MEM_result : WB_result)
                            : rf_rdata1;
assign rt_value = rt_wait ? (rt == EXE_dest ?  EXE_result :
                             rt == M1s_dest  ?  M1s_result  :
                             rt == MEM_dest ?  MEM_result : WB_result)
                            : rf_rdata2;

assign rs_eq_rt  = (rs_value == rt_value);
assign is_branch = inst_beq | inst_bne | inst_bgez | inst_bgtz | inst_blez | inst_bltz | inst_bgezal 
| inst_bltzal | inst_jr | inst_jalr | inst_jal | inst_j; //lab8����

assign BPU_right = br_taken ? ( br_target == BPU_ret_addr) : ~BPU_is_taken;

assign br_right = br_taken & BPU_right; // 

assign br_taken =  (  inst_beq  &  rs_eq_rt
                   || inst_bne  & !rs_eq_rt
                   || inst_jal
                   || inst_jr
                   || inst_j
                   || inst_jalr
                   || inst_bgez & rsgez
                   || inst_bgtz & rsgtz
                   || inst_blez & rslez
                   || inst_bltz & rsltz
                   || inst_bgezal & rsgez
                   || inst_bltzal & rsltz
                   ) & ds_valid; 


assign br_target = 
                   (inst_beq | inst_bne | inst_bgez | inst_bgtz | inst_blez | inst_bltz 
                   | inst_bgezal | inst_bltzal) ? (fs_pc + {{14{imm[15]}}, imm[15:0], 2'b0}) :
                   (inst_jr | inst_jalr)              ? rs_value :
                   /*inst_jal,inst_j*/              {fs_pc[31:28], jidx[25:0], 2'b0};

assign src1_no_rs = 1'b0;
assign src2_no_rt = inst_addiu | load_op | inst_jal | inst_lui | inst_addi | inst_slti 
                    | inst_sltiu | inst_andi | inst_ori | inst_xori;

//ID�׶εĶ�RF��ַrs,rt�ͺ���׶ε�дRF��ַrd��ͻ,������ͣ��ˮ��
assign rs_wait = ~src1_no_rs & (rs!=5'd0) & ds_valid
                 & ( (rs==EXE_dest) | (rs==M1s_dest) | (rs==MEM_dest) | (rs==WB_dest) ); 
assign rt_wait = ~src2_no_rt & (rt!=5'd0) & ds_valid
                 & ( (rt==EXE_dest) | (rt==M1s_dest) | (rt==MEM_dest) | (rt==WB_dest) );

assign inst_no_dest = inst_beq | inst_bne | inst_jr | inst_sw | inst_bgez | inst_bgtz | inst_blez 
| inst_bltz | inst_j | inst_sb | inst_sh | inst_swl | inst_swr | inst_syscall | inst_eret;

assign dest         = dst_is_r31   ? 5'd31 :
                      dst_is_rt    ? rt    : 
                      inst_no_dest ? 5'd0  : rd;

assign load_stall = (rs_wait & (rs == EXE_dest) & es_load_op ) ||
                    (rs_wait & (rs == M1s_dest ) & m1s_load_op ) ||
                    (rt_wait & (rt == M1s_dest ) & m1s_load_op ) ||                   
                    (rt_wait & (rt == EXE_dest) & es_load_op );  
assign br_stall   = (load_stall | mfc0_stall) & br_taken; //Attention:ɾ��ds_valid
//lab8���� ����mfc0�����ð������ mfc0ָ�������WB�׶ο���forward,����ֻ��stall
assign mfc0_stall = ((rs_wait & (rs == EXE_dest) & es_inst_mfc0) ||
                    (rt_wait & (rt == EXE_dest) & es_inst_mfc0));

//��ȡforward�ķ�������ð�� Attention:ɾ��ds_valid
assign ds_ready_go    = ~load_stall & ~mfc0_stall & ~icache_busy & ~dcache_busy; 


assign BResult = {  ds_pc,
                    Count,
                    is_branch,
                    br_stall,
                    br_taken,
                    br_target
                    };

endmodule
