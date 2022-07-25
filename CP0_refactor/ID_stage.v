`include "global_defines.vh"

module id_stage(
    input        clk,
    input        reset,
    output [31:0] ds_inst,
`ifdef ILA_debug
    output        ds_ex,
    output [31:0] ra,
    output [31:0] sp,
`endif
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
    // output [`BR_BUS_WD       -1:0] br_bus,
    // output [`BRESULT_WD      -1:0] BResult,
    output                         is_branch,
    //to rf: for write back
    input  [`WS_TO_RF_BUS_WD -1:0] ws_to_rf_bus,
    input [ 4:0] EXE_dest, // EXE阶段写RF地址 通过旁路送到ID阶段
    input [ 4:0] MEM_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    input [ 4:0] M1s_dest,
    input [ 4:0] WB_dest, // WB阶段写RF地址 通过旁路送到ID阶段
    input [31:0] EXE_result, //EXE阶段 es_alu_result
    input [31:0] MEM_result, //MEM阶段 ms_final_result 
    input [31:0] M1s_result,
    input [31:0] WB_result, //WB阶段 ws_final_result mfc0读出的数据也会前递到ID阶段
    input        es_load_op, //EXE阶段 判定是否为load指令
    input        m1s_load_op,
    // input        ms_load_op,
    input        flush, //flush=1时表明需要处理异常
    input        es_inst_mfc0,
    input        m1s_inst_mfc0,
    input        CP0_Status_IE_out, //IE=1,全局中断使能开启
    input        CP0_Status_EXL_out, //EXL=0,没有例外正在处理
    input [ 7:0] CP0_Status_IM_out, //IM对应各个中断源屏蔽位
    input [ 7:0] CP0_Cause_IP_out, //待处理中断标识
    input        CP0_Cause_TI_out,  //TI为1,触发定时中断;我们将该中断标记在ID阶段
    input        icache_busy,
    input        dcache_busy
);

reg         ds_valid   ;
wire        ds_ready_go; //数据流从ID流向EXE阶段的控制信号

wire [11:0] ds_br_inst;

wire [31                 :0] fs_pc;
reg  [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus_r;//流水正常运作的话就等于fs_to_ds_bus,内容参考IF模块
assign fs_pc = fs_to_ds_bus[31:0];

wire [31:0] ds_pc  ;
//lab8添加
wire [4:0]  mfc0_rd  ; //mfc0中的rd域 指定CP0寄存器的读写地址
wire        ds_bd  ; //ID阶段 当前指令若在延迟槽中,则置为1
wire        temp_ex; //临时用来承接来自IF的fs_ex信号
wire [4:0]  temp_Exctype; //临时用来承接来自IF的fs_ExcCode信号
//处理例外 Sys,Bp和RI
wire [ 4:0] ds_Exctype; //例外编码
wire        inst_defined; //该指令已经被指令集定义过
`ifndef ILA_debug
wire        ds_ex; //ID阶段 发现异常则置为1
`endif
wire [ 2:0] Overflow_inst; //可能涉及整型溢出例外的三条指令:add,addi,sub

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

reg [3:0] branch_type;

/******************BPU_to_ds_bus Total: 36bits******************/
assign {
        BPU_is_taken, //35:35
        Count,        //34:33
        BPU_valid,    //32:32
        BPU_ret_addr  //31:0
       } = BPU_to_ds_bus;

wire        rf_we   ;
wire [ 4:0] rf_waddr;
wire [31:0] rf_wdata;
assign {rf_we   ,  //37:37
        rf_waddr,  //36:32
        rf_wdata   //31:0
       } = ws_to_rf_bus;

wire        br_taken;
wire        br_is_reg;
wire        br_is_imm;
wire [31:0] imm_br_addr;

// wire [31:0] br_target;

wire [`ALUOP_WD-1:0] alu_op; //ALUOP_WD = 29
wire        load_op;
wire        src1_is_not_rs_value;
wire        src1_is_sa;
wire        src1_is_pc;
wire        src2_is_not_rt_value;
wire        src2_is_8;
wire        gr_we;
wire        mem_we;
wire [ 4:0] dest;
wire [15:0] imm;
wire [31:0] not_rs_value;
wire [31:0] rs_value;
wire [31:0] not_rt_value;
wire [31:0] rt_value;

wire [ 5:0] op;
wire [ 4:0] rs;
wire [ 4:0] rt;
wire [ 4:0] rd;
wire [ 4:0] sa;
wire [ 5:0] func;
wire [25:0] part_inst;
wire [63:0] op_d;
wire [31:0] rs_d;
wire [31:0] rt_d;
wire [31:0] rd_d;
wire [31:0] sa_d;
wire [63:0] func_d;

//判断是什么指令 根据op funct sa rs等对下面信号进行赋值
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
//lab6添加 添加指令add,addi,sub,slti,sltiu,andi,ori,xori,sllv,srav,srlv
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
//lab7修改 添加转移指令bgez,bgtz,blez,bltz,bgezal,bltzal,j,jalr 全部在ID阶段完成
wire        inst_bgez;
wire        inst_bgtz;
wire        inst_blez;
wire        inst_bltz;
wire        inst_bgezal;
wire        inst_bltzal;
wire        inst_j;
wire        inst_jalr;
//lab7修改 添加存数指令swl,swr,sb,sh,取数指令lb,lbu,lh,lhu,lwl,lwr
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
wire [11:0] mem_inst; //lab7添加 区别不同的存取数指令
assign mem_inst = { inst_swr, inst_swl, inst_sh, 
                    inst_sb , inst_lwr, inst_lwl, 
                    inst_lhu, inst_lh , inst_lbu,
                    inst_lb , inst_sw , inst_lw};

//lab8添加 添加指令MTC0,MFC0,ERET,SYSCALL,BREAK
wire        inst_mtc0;
wire        inst_mfc0;
wire        inst_eret;
wire        inst_syscall;
wire        inst_break;

//tlb添加 添加指令TLBWI,TLBWR,TLBP,TLBR
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
reg  [2:0]  trap_op;

reg  [1:0]  FPU_inst_type; //2'b00:非FPU指令;2'b01:FPU保留指令;2'b10:FPU指令

//cache指令
wire        inst_cache;
reg  [2:0]  CacheInst_type; //Cache指令类型
wire        is_ICacheInst; //指令针对ICache
wire        is_DCacheInst; //指令针对DCache

//pref,sync指令
wire        inst_pref; 
wire        inst_sync; 
wire        inst_wait; 

wire        dst_is_r31;  
wire        dst_is_rt;   

wire [31:0] rf_rdata1;
wire [31:0] rf_rdata2;

wire        rs_wait;
wire        rt_wait;
wire        inst_no_dest; //指令用不着写RF时为1,否则为0
wire        src1_no_rs;    //指令 rs 域非 0，且不是从寄存器堆读 rs 的数据
wire        src2_no_rt;    //指令 rt 域非 0，且不是从寄存器堆读 rt 的数据
wire        load_stall;    //因为EXE阶段的load指令引发的流水线暂停 
wire        mfc0_stall;
wire        br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停

/******************ds_to_es_bus Total: 316 + 29 bits******************/
assign ds_to_es_bus = {
                       alu_op              , //344:316 --alu指令控制
                       is_ICacheInst       , //315:315
                       is_DCacheInst       , //314:314
                       CacheInst_type      , //313:311
                       trap_op             , //310:308
                       br_is_reg           , //307:307
                       br_is_imm           , //306:306
                       imm_br_addr         , //305:274
                       not_rs_value        , //273:242
                       not_rt_value        , //241:210
                       BPU_ret_addr        , //209:178
                       BPU_is_taken        , //177:177
                       BPU_valid           , //176:176
                       Count               , //175:174
                       is_branch           , //173:173
                       ds_br_inst          , //172:161
                       part_inst           , //160:135
                       inst_tlbp           , //134:134
                       inst_tlbr           , //133:133
                       inst_tlbwi          , //132:132
                       inst_tlbwr          , //131:131                          
                       Overflow_inst       , //130:128 --可能涉及整型溢出例外的三条指令:add,addi,sub
                       ds_ex               , //127:127 --ID阶段 发现异常则置为1
                       ds_Exctype          , //126:122 --例外编码
                       ds_bd               , //121:121 --ID阶段 当前指令若在延迟槽中,则置为1
                       inst_eret           , //120:120 --eret指令要送到M1阶段处理
                       inst_mtc0           , //119:119 --mtc0指令要送到M1阶段处理
                       inst_mfc0           , //118:118 --mfc0指令要送到M1阶段处理
                       mem_inst            , //117:106 --区分不同的存取指令
                       load_op             , //105:105 --是否为load指令
                       src1_is_not_rs_value, //104:104 
                       src2_is_not_rt_value, //103:103 
                       gr_we               , //102:102 --写RF使能
                       mem_we              , //101:101 --写DM使能
                       dest                , //100:96  --写RF的地址
                       rs_value            , //95 :64  --32位rs
                       rt_value            , //63 :32  --32位rt
                       ds_pc                 //31 :0   --ID阶段 PC值
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
    else if (flush) //清除流水线
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
assign mfc0_rd = rd;

assign part_inst = ds_inst[25:0];

// 译码器 便于使用assign
decoder_6_64 u_dec0(.in(op  ), .out(op_d  ));
decoder_6_64 u_dec1(.in(func), .out(func_d));
decoder_5_32 u_dec2(.in(rs  ), .out(rs_d  ));
decoder_5_32 u_dec3(.in(rt  ), .out(rt_d  ));
decoder_5_32 u_dec4(.in(rd  ), .out(rd_d  ));
decoder_5_32 u_dec5(.in(sa  ), .out(sa_d  ));

//解码后直接看位 不用变量作比较 这便于使用assign 注意h开头都是16进制的表示
assign inst_addu   = op_d[6'h00] & func_d[6'h21] & sa_d[5'h00];
assign inst_subu   = op_d[6'h00] & func_d[6'h23] & sa_d[5'h00];
assign inst_slt    = op_d[6'h00] & func_d[6'h2a] & sa_d[5'h00];
assign inst_sltu   = op_d[6'h00] & func_d[6'h2b] & sa_d[5'h00];
assign inst_and    = op_d[6'h00] & func_d[6'h24] & sa_d[5'h00];
assign inst_or     = op_d[6'h00] & func_d[6'h25] & sa_d[5'h00];
assign inst_xor    = op_d[6'h00] & func_d[6'h26] & sa_d[5'h00];
assign inst_nor    = op_d[6'h00] & func_d[6'h27] & sa_d[5'h00];
assign inst_sll    = op_d[6'h00] & func_d[6'h00] & rs_d[5'h00]; //nop指令当做这个算了吧 其实不太严谨 但不影响结果
assign inst_srl    = op_d[6'h00] & func_d[6'h02] & rs_d[5'h00];
assign inst_sra    = op_d[6'h00] & func_d[6'h03] & rs_d[5'h00];
assign inst_addiu  = op_d[6'h09];
assign inst_lui    = op_d[6'h0f] & rs_d[5'h00];
assign inst_lw     = op_d[6'h23];
assign inst_sw     = op_d[6'h2b];
assign inst_beq    = op_d[6'h04];
assign inst_bne    = op_d[6'h05];
assign inst_jal    = op_d[6'h03];
assign inst_j      = op_d[6'h02];
assign inst_jr     = op_d[6'h00] & func_d[6'h08] & rt_d[5'h00] & rd_d[5'h00] & sa_d[5'h00];
assign inst_jalr   = op_d[6'h00] & func_d[6'h09] & rt_d[5'h00] & sa_d[5'h00];
//lab6添加 添加指令add,addi,sub,slti,sltiu,andi,ori,xori,sllv,srav,srlv
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
//lab7添加 添加转移指令bgez,bgtz,blez,bltz,bgezal,bltzal,j,jalr 全部在ID阶段完成
assign inst_bgez   = op_d[6'h01] & rt_d[5'h01];
assign inst_bgtz   = op_d[6'h07] & rt_d[5'h00];
assign inst_blez   = op_d[6'h06] & rt_d[5'h00];
assign inst_bltz   = op_d[6'h01] & rt_d[5'h00];
assign inst_bgezal = op_d[6'h01] & rt_d[5'h11];
assign inst_bltzal = op_d[6'h01] & rt_d[5'h10];
//lab7添加 添加存数指令swl,swr,sb,sh,取数指令lb,lbu,lh,lhu,lwl,lwr 
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
//lab8添加 添加指令MTC0,MFC0,ERET,SYSCALL
assign inst_mtc0   = op_d[6'h10] & rs_d[5'h04];
assign inst_mfc0   = op_d[6'h10] & rs_d[5'h00];
assign inst_eret   = op_d[6'h10] & func_d[6'h18];
assign inst_syscall= op_d[6'h00] & func_d[6'h0c];
assign inst_break  = op_d[6'h00] & func_d[6'h0d];

//tlb添加 添加指令TLBWI,TLBWR,TLBP,TLBR 
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
assign inst_movn   = op_d[6'h00] & func_d[6'h0b];
assign inst_movz   = op_d[6'h00] & func_d[6'h0a];
//trap 
assign inst_teq    = op_d[6'h00] & func_d[6'h34];
assign inst_teqi   = op_d[6'h01] & rt_d[5'h0c];
assign inst_tge    = op_d[6'h00] & func_d[6'h30];
assign inst_tgei   = op_d[6'h01] & rt_d[5'h08];
assign inst_tgeiu  = op_d[6'h01] & rt_d[5'h09];
assign inst_tgeu   = op_d[6'h00] & func_d[6'h31];
assign inst_tlt    = op_d[6'h00] & func_d[6'h32];
assign inst_tlti   = op_d[6'h01] & rt_d[5'h0a];
assign inst_tltiu  = op_d[6'h01] & rt_d[5'h0b];
assign inst_tltu   = op_d[6'h00] & func_d[6'h33];
assign inst_tne    = op_d[6'h00] & func_d[6'h36];
assign inst_tnei   = op_d[6'h01] & rt_d[5'h0e];
//cache 
assign inst_cache  = op_d[6'h2f];
//pref,sync,wait 只译码 当做nop处理掉了
assign inst_pref   = op_d[6'h33];
assign inst_sync   = op_d[6'h00] & func_d[6'h0f];
assign inst_wait   = op_d[6'h10] & func_d[6'h20];

//已经在该mips指令集中定义过的指令
assign inst_defined = inst_addu | inst_subu | inst_slt | inst_sltu | inst_and | inst_or | inst_xor | 
inst_nor | inst_sll | inst_srl | inst_sra | inst_addiu | inst_lui | inst_lw | inst_sw | inst_beq |
inst_bne | inst_jal | inst_jr | inst_add | inst_addi | inst_sub | inst_slti | inst_sltiu | inst_andi|  
inst_ori | inst_xori | inst_sllv | inst_srav | inst_srlv | inst_mult | inst_multu | inst_div |
inst_divu | inst_mfhi | inst_mflo | inst_mthi | inst_mtlo | inst_bgez | inst_bgtz | inst_blez | 
inst_bltz | inst_bgezal | inst_bltzal | inst_j | inst_jalr | inst_swl | inst_swr | inst_sb | 
inst_sh | inst_lb | inst_lbu | inst_lh | inst_lhu | inst_lwl | inst_lwr | inst_mtc0 | inst_mfc0 | 
inst_eret | inst_syscall | inst_break | inst_tlbp | inst_tlbr | inst_tlbwi | inst_tlbwr | inst_clo | 
inst_clz | inst_madd | inst_maddu | inst_msub | inst_msubu | inst_mul | inst_movn | inst_movz | 
inst_teq | inst_teqi | inst_tge | inst_tgei | inst_tgeiu | inst_tgeu | inst_tlt | inst_tlti | 
inst_tltiu | inst_tltu | inst_tne | inst_tnei | inst_cache | inst_pref | inst_sync | inst_wait;

`ifdef FPU_EX_Valid
    always @(*) begin
        case (op)
            6'b000000: begin // MOCVI(MOVF,MOVT)
                if(func == 6'b000001)
                    FPU_inst_type = `FPU_INST;
                else 
                    FPU_inst_type = `NOT_FPU;
            end
            6'b110101: //LDC1
                FPU_inst_type = `FPU_INST;
            6'b111101: //SDC1
                FPU_inst_type = `FPU_INST;
            6'b110001: //LWC1
                FPU_inst_type = `FPU_INST;
            6'b111001: //SWC1
                FPU_inst_type = `FPU_INST;
            6'b010001: begin //COP1
                case(rs)
                    5'b00000: FPU_inst_type = `FPU_INST; // MFC1
                    5'b00010: FPU_inst_type = `FPU_INST; // CFC1
                    5'b00100: FPU_inst_type = `FPU_INST; // MTC1
                    5'b00110: FPU_inst_type = `FPU_INST; // CTC1
                    5'b01000: FPU_inst_type = `FPU_INST; // BC1
                    5'b10000: begin
                        casez (func)
                            6'b000000: FPU_inst_type = `FPU_INST;  // OP_FPU_ADD
                            6'b000001: FPU_inst_type = `FPU_INST;  // OP_FPU_SUB
                            6'b000010: FPU_inst_type = `FPU_INST;  // OP_FPU_MUL
                            6'b000011: FPU_inst_type = `FPU_INST;  // OP_FPU_DIV
                            6'b000100: FPU_inst_type = `FPU_INST;  // OP_FPU_SQRT
                            6'b000101: FPU_inst_type = `FPU_INST;  // OP_FPU_ABS
                            6'b000111: FPU_inst_type = `FPU_INST;  // OP_FPU_NEG
                            6'b001100: FPU_inst_type = `FPU_INST;  // OP_FPU_ROUND
                            6'b001101: FPU_inst_type = `FPU_INST;  // OP_FPU_TRUNC
                            6'b001110: FPU_inst_type = `FPU_INST;  // OP_FPU_CEIL
                            6'b001111: FPU_inst_type = `FPU_INST;  // OP_FPU_FLOOR
                            6'b100100: FPU_inst_type = `FPU_INST;  // OP_FPU_CVTW
                            6'b000110: FPU_inst_type = `FPU_INST;  // OP_FPU_MOV
                            6'b010001: FPU_inst_type = `FPU_INST;  // OP_FPU_CMOV
                            6'b01001?: FPU_inst_type = `FPU_INST;  // OP_FPU_CMOV
                            6'b11????: FPU_inst_type = `FPU_INST;  // OP_FPU_COND
                            default  : FPU_inst_type = `FPU_RESERVED;  // 浮点指令的保留指令例外
                        endcase
                    end
                    5'b10110 : begin
                        casez(func)
                            6'b100000: FPU_inst_type = `FPU_INST;  // CVTS.PU
                            6'b101000: FPU_inst_type = `FPU_INST;  // CVTS.PL
                            default  : FPU_inst_type = `FPU_RESERVED;  // 浮点指令的保留指令例外
                        endcase
                    end       
                    default:  FPU_inst_type = `FPU_RESERVED;
                endcase
            end
            default: FPU_inst_type = `NOT_FPU;
        endcase
    end
`endif

`ifdef CacheInst_EN
    always @(*) begin
        if(inst_cache) begin
            case (rt) //rt即为Cache指令所需op
                5'b00000: 
                    CacheInst_type = `ICache_IDX_INVALID;  
                5'b01000:
                    CacheInst_type = `ICache_IDX_STORETAG;
                5'b10000:
                    CacheInst_type = `ICache_HIT_INVALID;
                5'b00001:
                    CacheInst_type = `DCache_IDX_WB_INVALID;
                5'b01001:
                    CacheInst_type = `DCache_IDX_STORETAG;
                5'b10001:
                    CacheInst_type = `DCache_HIT_INVALID;
                5'b10101:
                    CacheInst_type = `DCache_HIT_WB_INVALID;
                default: 
                    CacheInst_type = `NOT_CACHEINST;
            endcase
        end
        else
            CacheInst_type = `NOT_CACHEINST;
    end
    assign is_ICacheInst = (CacheInst_type == `ICache_IDX_INVALID) | 
                           (CacheInst_type == `ICache_IDX_STORETAG) |
                           (CacheInst_type == `ICache_HIT_INVALID);
    assign is_DCacheInst = (CacheInst_type == `DCache_IDX_WB_INVALID) |
                           (CacheInst_type == `DCache_IDX_STORETAG) |
                           (CacheInst_type == `DCache_HIT_INVALID) |
                           (CacheInst_type == `DCache_HIT_WB_INVALID);
`else
    always @(*) begin
        if(inst_cache)
            CacheInst_type = `NOT_CACHEINST;
        else
            CacheInst_type = `NOT_CACHEINST;
    end
    assign is_ICacheInst = 1'b0;
    assign is_DCacheInst = 1'b0;
`endif 

//lab8添加 这里总共处理三种例外以及中断(定时中断,软件中断)
wire has_int; //判定是否接收到中断 需要满足下面的条件
assign has_int = ((CP0_Cause_IP_out & CP0_Status_IM_out) != 0) && CP0_Status_IE_out && !CP0_Status_EXL_out;

reg Time_int; //定时中断信号
reg Soft_int; //软件中断信号

//处理定时中断
parameter Time_Idle     = 2'd0,
          Time_Start    = 2'd1,
          Time_Rollback = 2'd2; 
reg [1:0] Time_state,Time_nextstate;
always @(*) begin //该状态机同时处理next_state和Soft_int
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

//处理软件中断
parameter Soft_Idle     = 2'd0,
          Soft_Start    = 2'd1,
          Soft_Rollback = 2'd2; 
reg [1:0] Soft_state,Soft_nextstate;

always @(*) begin //该状态机同时处理next_state和Soft_int
    case (Soft_state)
        Soft_Idle: 
            if(has_int && ds_valid) begin
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
            if(~has_int) begin
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

`ifdef FPU_EX_Valid
    assign ds_ex = temp_ex | !inst_defined | inst_syscall | inst_break | 
                  (has_int & (Time_int | Soft_int)) | (FPU_inst_type == `FPU_RESERVED) |
                  (FPU_inst_type == `FPU_INST);
    assign ds_Exctype = temp_ex             ? temp_Exctype :
                        Time_int | Soft_int ?         `Int :
                        inst_syscall        ?         `Sys : 
                        inst_break          ?          `Bp : 
                        (FPU_inst_type == `FPU_INST) ? `CpU:
                        ~inst_defined | (FPU_inst_type == `FPU_RESERVED)? `RI : `NO_EX; 
`else
    assign ds_ex = temp_ex | !inst_defined | inst_syscall | inst_break | 
              (has_int & (Time_int | Soft_int));
    assign ds_Exctype = temp_ex             ? temp_Exctype :
                        Time_int | Soft_int ?         `Int :
                        ~inst_defined       ?          `RI : 
                        inst_syscall        ?         `Sys : 
                        inst_break          ?          `Bp : `NO_EX; 
`endif

assign Overflow_inst = {inst_add,inst_addi,inst_sub};

//alu_op译码
assign alu_op[ 0] = inst_addu | inst_addiu | inst_lw | inst_sw | inst_jal | inst_add 
                    | inst_addi | inst_bgezal | inst_bltzal | inst_jalr | inst_sb | inst_sh
                    | inst_swl | inst_swr | inst_lb | inst_lbu | inst_lh | inst_lhu | inst_lwl
                    | inst_lwr | inst_cache; //加法操作
assign alu_op[ 1] = inst_subu | inst_sub; //减法操作
assign alu_op[ 2] = inst_slt | inst_slti; //有符号比较，小于置位
assign alu_op[ 3] = inst_sltu | inst_sltiu; //无符号比较，小于置位
assign alu_op[ 4] = inst_and | inst_andi; //按位与
assign alu_op[ 5] = inst_nor; //按位或非
assign alu_op[ 6] = inst_or | inst_ori; //按位或
assign alu_op[ 7] = inst_xor | inst_xori; //按位异或 
assign alu_op[ 8] = inst_sll | inst_sllv; //逻辑左移
assign alu_op[ 9] = inst_srl | inst_srlv; //逻辑右移
assign alu_op[10] = inst_sra | inst_srav; //算术右移
assign alu_op[11] = inst_lui; //立即数置于高半部分
assign alu_op[12] = inst_div; //有符号除法
assign alu_op[13] = inst_divu; //无符号除法
assign alu_op[14] = inst_mult; //有符号乘法
assign alu_op[15] = inst_multu; //无符号乘法
assign alu_op[16] = inst_mfhi; //将HI寄存器的值写入寄存器rd中
assign alu_op[17] = inst_mflo; //将LO寄存器的值写入寄存器rd中
assign alu_op[18] = inst_mthi; //将寄存器rs的值写入HI寄存器中
assign alu_op[19] = inst_mtlo; //将寄存器rs的值写入LO寄存器中
assign alu_op[20] = inst_clo ; 
assign alu_op[21] = inst_clz ; 
assign alu_op[22] = inst_madd;
assign alu_op[23] = inst_maddu;
assign alu_op[24] = inst_msub;
assign alu_op[25] = inst_msubu;
assign alu_op[26] = inst_mul;
assign alu_op[27] = inst_movn;
assign alu_op[28] = inst_movz;

always @(*) begin //trap指令编码
    if(inst_teq | inst_teqi)
        trap_op = `TEQ_TYPE;
    else if(inst_tge | inst_tgei)
        trap_op = `TGE_TYPE;
    else if(inst_tgeu | inst_tgeiu)
        trap_op = `TGEU_TYPE;
    else if(inst_tlt | inst_tlti)
        trap_op = `TLT_TYPE;
    else if(inst_tltu | inst_tltiu)
        trap_op = `TLTU_TYPE;
    else if(inst_tne | inst_tnei)
        trap_op = `TNE_TYPE;
    else
        trap_op = `NOT_TRAP;
end

wire   imm_zero_ext; //立即数零扩展
wire   imm_sign_ext; //立即数符号扩展
assign imm_zero_ext = inst_andi | inst_ori | inst_xori | inst_lui | inst_tgeiu | inst_tltiu;
assign imm_sign_ext = inst_addiu | inst_lw | inst_sw | inst_addi | inst_slti | inst_sltiu |
                      inst_sb | inst_sh | inst_swl | inst_swr | inst_lb | inst_lbu | inst_lh |
                      inst_lhu | inst_lwl | inst_lwr | inst_tgei | inst_tlti | inst_teqi | inst_tnei|
                      inst_cache;

assign load_op      = inst_lw | inst_lb | inst_lbu | inst_lh | inst_lhu | inst_lwl | inst_lwr;
assign src1_is_sa   = inst_sll | inst_srl | inst_sra;
assign src1_is_pc   = inst_jal | inst_bgezal | inst_bltzal | inst_jalr;
assign src1_is_not_rs_value = src1_is_sa | src1_is_pc;

assign not_rs_value = src1_is_sa  ? {27'b0, imm[10:6]} : 
                      src1_is_pc  ? ds_pc[31:0] :
                                      32'b0;

assign src2_is_8    = inst_jal | inst_bgezal | inst_bltzal | inst_jalr;
assign src2_is_not_rt_value = src2_is_8 | imm_zero_ext | imm_sign_ext;

assign not_rt_value = imm_zero_ext ? {16'b0 , imm[15:0]}:
                      imm_sign_ext ? {{16{imm[15]}}, imm[15:0]}:
                      src2_is_8          ? 32'd8 : 32'b0;

assign dst_is_r31   = inst_jal | inst_bgezal | inst_bltzal;
assign dst_is_rt    = inst_addiu | inst_lui | inst_lw | inst_addi | inst_slti | inst_sltiu |
                      inst_andi | inst_ori | inst_xori | inst_lb | inst_lbu | inst_lh | inst_lhu |
                      inst_lwl | inst_lwr | inst_mfc0;
assign gr_we        = ~inst_sw & ~inst_beq & ~inst_bne &  ~inst_jr & ~inst_bgez & ~inst_bgtz &
                      ~inst_blez & ~inst_bltz & ~inst_j & ~inst_mthi & ~inst_mtlo & ~inst_sb &
                      ~inst_sh & ~inst_swl & ~inst_swr & ~inst_mtc0 & ~inst_eret & ~inst_syscall &
                      ~inst_teq & ~inst_teqi & ~inst_tge & ~inst_tgei & ~inst_tgeu & ~inst_tgeiu &
                      ~inst_tlt & ~inst_tlti & ~inst_tltu & ~inst_tltiu & ~inst_tne & ~inst_tnei &
                      ~inst_cache & ~inst_pref & ~inst_sync & ~inst_wait;
assign mem_we       = inst_sw | inst_sb | inst_sh | inst_swl | inst_swr;

regfile u_regfile(
    .clk            (clk        ),
`ifdef ILA_debug
    .ra             (ra         ),
    .sp             (sp         ),
`endif
    .raddr1         (rs         ),
    .rdata1         (rf_rdata1  ),
    .raddr2         (rt         ),
    .rdata2         (rf_rdata2  ),
    .we             (rf_we      ),
    .waddr          (rf_waddr   ),
    .wdata          (rf_wdata   ),
    .reset          (reset      )
    );

assign rs_value = rs_wait ? (rs == EXE_dest ?  EXE_result :
                             rs == M1s_dest  ?  M1s_result  :
                             rs == MEM_dest ?  MEM_result : WB_result)
                            : rf_rdata1;
assign rt_value = rt_wait ? (rt == EXE_dest ?  EXE_result :
                             rt == M1s_dest  ?  M1s_result  :
                             rt == MEM_dest ?  MEM_result : WB_result)
                            : rf_rdata2;

// assign rs_eq_rt  = (rs_value == rt_value);
assign is_branch = inst_beq | inst_bne | inst_bgez | inst_bgtz | inst_blez | inst_bltz | inst_bgezal 
| inst_bltzal | inst_jr | inst_jalr | inst_jal | inst_j;

assign ds_br_inst = {
                        inst_beq    , 
                        inst_bne    , 
                        inst_jal    , 
                        inst_jr     , 
                        inst_j      , 
                        inst_jalr   , 
                        inst_bgez   , 
                        inst_bgtz   , 
                        inst_blez   , 
                        inst_bltz   , 
                        inst_bgezal , 
                        inst_bltzal };


assign imm_br_addr = fs_pc + {{14{imm[15]}}, imm[15:0], 2'b0};
assign br_is_imm = inst_beq | inst_bne | inst_bgez | inst_bgtz | inst_blez | inst_bltz | inst_bgezal | inst_bltzal;
assign br_is_reg = inst_jr | inst_jalr;

assign src1_no_rs = 1'b0;
assign src2_no_rt = inst_addiu | load_op | inst_jal | inst_lui | inst_addi | inst_slti 
                    | inst_sltiu | inst_andi | inst_ori | inst_xori;

//ID阶段的读RF地址rs,rt和后面阶段的写RF地址rd冲突,则考虑暂停流水线
assign rs_wait = ~src1_no_rs & (rs!=5'd0) & ds_valid
                 & ( (rs==EXE_dest) | (rs==M1s_dest) | (rs==MEM_dest) | (rs==WB_dest) ); 
assign rt_wait = ~src2_no_rt & (rt!=5'd0) & ds_valid
                 & ( (rt==EXE_dest) | (rt==M1s_dest) | (rt==MEM_dest) | (rt==WB_dest) );

//TODO:inst_no_dest列的不全,有漏洞!是否能与gr_we进行类比??
assign inst_no_dest = inst_beq | inst_bne | inst_jr | inst_sw | inst_bgez | inst_bgtz | inst_blez 
| inst_bltz | inst_j | inst_sb | inst_sh | inst_swl | inst_swr | inst_syscall | inst_eret | inst_cache
| inst_pref | inst_sync | inst_wait;

assign dest         = dst_is_r31   ? 5'd31 :
                      dst_is_rt    ? rt    : 
                      inst_no_dest ? 5'd0  : rd;

assign load_stall = (rs_wait & (rs == EXE_dest ) & es_load_op  ) ||
                    (rs_wait & (rs == M1s_dest ) & m1s_load_op ) ||
                    (rt_wait & (rt == M1s_dest ) & m1s_load_op ) ||                   
                    (rt_wait & (rt == EXE_dest ) & es_load_op  );
                      
//lab8添加 处理mfc0引起的冒险问题 mfc0指令如果在WB阶段可以forward,否则只能stall
assign mfc0_stall = ((rs_wait & (rs == EXE_dest) & es_inst_mfc0) ||
                     (rt_wait & (rt == EXE_dest) & es_inst_mfc0));

//采取forward的方法处理冒险 Attention:删掉ds_valid
assign ds_ready_go    = ~load_stall & ~mfc0_stall & ~icache_busy & ~dcache_busy; 

endmodule
