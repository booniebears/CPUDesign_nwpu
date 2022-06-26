module alu(
    input         clk,
    input         reset,
    input  [40:0] alu_op,
    input  [31:0] alu_src1,
    input  [31:0] alu_src2,
    output [31:0] alu_result,
    input  [ 2:0] Overflow_inst, //可能涉及整型溢出例外的三条指令:add,addi,sub
    output m_axis_dout_tvalid, //该信号为1表明有符号除法运算完毕
    output m_axis_dout_tvalidu, //该信号为1表明无符号除法运算完毕
    output Overflow_ex, //有整型溢出置为1
    input es_ex,
    input m1s_ex
);

wire op_add;   //加法操作
wire op_sub;   //减法操作
wire op_slt;   //有符号比较，小于置位
wire op_sltu;  //无符号比较，小于置位
wire op_and;   //按位与
wire op_nor;   //按位或非
wire op_or;    //按位或
wire op_xor;   //按位异或
wire op_sll;   //逻辑左移
wire op_srl;   //逻辑右移
wire op_sra;   //算术右移
wire op_lui;   //立即数置于高半部分
wire op_div;   //带符号除法
wire op_divu;  //无符号除法
wire op_mult;  //带符号乘法
wire op_multu; //无符号乘法
wire op_mfhi;  //将HI寄存器的值写入寄存器rd中
wire op_mflo;  //将LO寄存器的值写入寄存器rd中
wire op_mthi;  //将寄存器rs的值写入HI寄存器中
wire op_mtlo;  //将寄存器rs的值写入LO寄存器中
wire op_clo;   //统计32位数第一个0的数之前1的个数
wire op_clz;   //统计32位数第一个1的数之前0的个数
wire cloclz_type; //0-clo,1-clz
wire op_madd;
wire op_maddu;
wire op_msub;
wire op_msubu;
wire op_mul;
wire op_movn;
wire op_movz;
wire op_teq;
wire op_teqi;
wire op_tne;
wire op_tnei;
wire op_tge;
wire op_tgei;
wire op_tgeu;
wire op_tgeiu;
wire op_tlt;
wire op_tlti;
wire op_tltu;
wire op_tltiu;

// control code decomposition
assign op_add  = alu_op[ 0];
assign op_sub  = alu_op[ 1];
assign op_slt  = alu_op[ 2];
assign op_sltu = alu_op[ 3];
assign op_and  = alu_op[ 4];
assign op_nor  = alu_op[ 5];
assign op_or   = alu_op[ 6];
assign op_xor  = alu_op[ 7];
assign op_sll  = alu_op[ 8];
assign op_srl  = alu_op[ 9];
assign op_sra  = alu_op[10];
assign op_lui  = alu_op[11];
assign op_div  = alu_op[12];
assign op_divu = alu_op[13];
assign op_mult = alu_op[14];
assign op_multu= alu_op[15];
assign op_mfhi = alu_op[16];
assign op_mflo = alu_op[17];
assign op_mthi = alu_op[18];
assign op_mtlo = alu_op[19];
assign op_clo  = alu_op[20];
assign op_clz  = alu_op[21];
assign op_madd = alu_op[22];
assign op_maddu= alu_op[23];
assign op_msub = alu_op[24];
assign op_msubu= alu_op[25];
assign op_mul  = alu_op[26];
assign op_movn = alu_op[27];
assign op_movz = alu_op[28];
assign op_teq  = alu_op[29];
assign op_teqi = alu_op[30];
assign op_tne  = alu_op[31];
assign op_tnei = alu_op[32];
assign op_tge  = alu_op[33];
assign op_tgei = alu_op[34];
assign op_tgeu = alu_op[35];
assign op_tgeiu= alu_op[36];
assign op_tlt  = alu_op[37];
assign op_tlti = alu_op[38];
assign op_tltu = alu_op[39];
assign op_tltiu= alu_op[40];

wire [31:0] add_sub_result; 
wire [31:0] slt_result    ; 
wire [31:0] sltu_result   ;
wire [31:0] and_result    ;
wire [31:0] nor_result    ;
wire [31:0] or_result     ;
wire [31:0] xor_result    ;
wire [31:0] lui_result    ;
wire [31:0] sll_result    ; 
wire [63:0] sr64_result   ; 
wire [31:0] sr_result     ; 
wire [63:0] mult_result   ; 
wire [63:0] multu_result  ; 
wire [63:0] div_result    ; 
wire [63:0] divu_result   ; 
wire [31:0] mfhi_result   ;
wire [31:0] mflo_result   ;
wire [31:0] cloclz_result ;
wire [63:0] madd_result   ;
wire [63:0] maddu_result  ;
wire [63:0] msub_result   ;
wire [63:0] msubu_result  ;
wire [63:0] mul_result    ;
wire [31:0] movn_result   ;
wire [31:0] movz_result   ;
wire [31:0] result_out    ;

reg  [3:0]  trap_op       ;

// 32-bit adder
wire [31:0] adder_a;
wire [31:0] adder_b;
wire        adder_cin;
wire [31:0] adder_result;
wire        adder_cout;

assign adder_a   = alu_src1;
assign adder_b   = (op_sub | op_slt | op_sltu) ? ~alu_src2 : alu_src2; //sub,slt,sltu作减法
assign adder_cin = (op_sub | op_slt | op_sltu) ? 1'b1      : 1'b0;
assign {adder_cout, adder_result} = adder_a + adder_b + adder_cin;

//lab8添加
assign Overflow_ex = Overflow_inst[2] | Overflow_inst[1] ? //add或者addi
                    (!alu_src1[31]&&!alu_src2[31]&&adder_result[31] ? 1'b1 : //正数+正数=负数
                      alu_src1[31]&&alu_src2[31]&&!adder_result[31] ? 1'b1 : 1'b0) : //负数+负数=正数
                     Overflow_inst[0] ? //sub
                     (!alu_src1[31]&&alu_src2[31]&&adder_result[31] ? 1'b1 : //正数-负数=负数
                      alu_src1[31]&&!alu_src2[31]&&!adder_result[31] ? 1'b1 : 1'b0): //负数-正数=正数
                     1'b0;

// ADD, SUB result
assign add_sub_result = adder_result;

// SLT result
assign slt_result[31:1] = 31'b0;
assign slt_result[0]    = (alu_src1[31] & ~alu_src2[31])
                        | (~(alu_src1[31] ^ alu_src2[31]) & adder_result[31]);

// SLTU result
assign sltu_result[31:1] = 31'b0;
assign sltu_result[0]    = ~adder_cout;

// bitwise operation
assign and_result = alu_src1 & alu_src2;
assign or_result  = alu_src1 | alu_src2 ;
assign nor_result = ~or_result;
assign xor_result = alu_src1 ^ alu_src2;
assign lui_result = {alu_src2[15:0], 16'b0};

// SLL result 
assign sll_result = alu_src2 << alu_src1[4:0];

// SRL, SRA result
assign sr64_result = {{32{op_sra & alu_src2[31]}}, alu_src2[31:0]} >> alu_src1[4:0];

assign sr_result   = sr64_result[31:0];

assign mult_result=$signed(alu_src1)*$signed(alu_src2);
assign multu_result=alu_src1*alu_src2;

cloclz_cnt U_cloclz_cnt(
    .cloclz_in   (alu_src1),
    .cloclz_type (op_clz),
    .cloclz_out  (cloclz_result)
);

trap U_trap(
     .trap_op(trap_op),
     .trap_src1(alu_src1),
     .trap_src2(alu_src2),
     .result_out(result_out)
);

//always@(*) 
//begin
//case(trap_op[3:0])  
//4'b0001:alu_op[40:29]=12'b000000000001;
//4'b0010:alu_op[40:29]=12'b000000000010;
//4'b0011:alu_op[40:29]=12'b000000000100;
//4'b0100:alu_op[40:29]=12'b000000001000;
//4'b0101:alu_op[40:29]=12'b000000010000;
//4'b0110:alu_op[40:29]=12'b000000100000;
//4'b0111:alu_op[40:29]=12'b000001000000;
//4'b1000:alu_op[40:29]=12'b000010000000;
//4'b1001:alu_op[40:29]=12'b000100000000;
//4'b1010:alu_op[40:29]=12'b001000000000;
//4'b1011:alu_op[40:29]=12'b010000000000;
//4'b1100:alu_op[40:29]=12'b100000000000;
//default alu_op[40:29]=12'b000000000000;
//endcase
//end

always@(*) 
begin
    case(alu_op[40:29]) 
        12'b000000000001:trap_op = 4'b0001;
        12'b000000000010:trap_op = 4'b0010;
        12'b000000000100:trap_op = 4'b0011;
        12'b000000001000:trap_op = 4'b0100;
        12'b000000010000:trap_op = 4'b0101;
        12'b000000100000:trap_op = 4'b0110;
        12'b000001000000:trap_op = 4'b0111;
        12'b000010000000:trap_op = 4'b1000;
        12'b000100000000:trap_op = 4'b1001;
        12'b001000000000:trap_op = 4'b1010;
        12'b010000000000:trap_op = 4'b1011;
        12'b100000000000:trap_op = 4'b1100;
         default:trap_op = 4'b0000;
    endcase
end

//lab添加 HI LO寄存器
reg [31:0] HI;
reg [31:0] LO;

assign madd_result = {HI,LO} + $signed(alu_src1)*$signed(alu_src2);
assign maddu_result= {HI,LO} + alu_src1*alu_src2;
assign msub_result = {HI,LO} - $signed(alu_src1)*$signed(alu_src2);
assign msubu_result= {HI,LO} - alu_src1*alu_src2;

//lab6添加 以下为mydiv模块用到的信号
//valid信号与ready信号是一对握手信号,同时为1后除法器工作.ready信号周期性出现(变为1),valid信号则可以人为控制
reg s_axis_divisor_tvalid; 
wire s_axis_divisor_tready;
reg s_axis_dividend_tvalid;
wire s_axis_dividend_tready;
// wire m_axis_dout_tvalid; //已经在output端口定义
//lab6添加 以下为mydiv_unsigned模块用到的信号 
reg s_axis_divisor_tvalidu; 
wire s_axis_divisor_treadyu;
reg s_axis_dividend_tvalidu;
wire s_axis_dividend_treadyu;
// wire m_axis_dout_tvalidu; //已经在output端口定义
//带符号除法
mydiv u_mydiv(
    .aclk                    (clk),
    .s_axis_divisor_tvalid   (s_axis_divisor_tvalid),
    .s_axis_divisor_tready   (s_axis_divisor_tready),
    .s_axis_divisor_tdata    (alu_src2), //src2为除数
    .s_axis_dividend_tvalid  (s_axis_dividend_tvalid),
    .s_axis_dividend_tready  (s_axis_dividend_tready),
    .s_axis_dividend_tdata   (alu_src1), //src1为被除数
    .m_axis_dout_tvalid      (m_axis_dout_tvalid),
    .m_axis_dout_tdata       (div_result)
);

//无符号除法
mydiv_unsigned u_mydiv_unsigned(
    .aclk                    (clk),
    .s_axis_divisor_tvalid   (s_axis_divisor_tvalidu),
    .s_axis_divisor_tready   (s_axis_divisor_treadyu),
    .s_axis_divisor_tdata    (alu_src2), //src2为除数
    .s_axis_dividend_tvalid  (s_axis_dividend_tvalidu),
    .s_axis_dividend_tready  (s_axis_dividend_treadyu),
    .s_axis_dividend_tdata   (alu_src1), //src1为被除数
    .m_axis_dout_tvalid      (m_axis_dout_tvalidu),
    .m_axis_dout_tdata       (divu_result)
);

//lab6添加 状态机控制有符号和无符号除法的valid信号
parameter Idle=1'b0,Start=1'b1;
reg state,next_state;
always @(posedge clk) begin 
    if(reset) state<=Idle;
    else state<=next_state;
end

always @(*) begin
    case(state)
        Idle:
            if(op_div&&s_axis_divisor_tready&&s_axis_divisor_tvalid)
                next_state<=Start;
            else if(op_divu&&s_axis_divisor_treadyu&&s_axis_divisor_tvalidu)
                next_state<=Start;
            else
                next_state<=Idle;
        Start:
            if(op_div|op_divu) next_state<=Start;
            else next_state<=Idle;
        default: next_state<=Idle;
    endcase
end

always @(posedge clk) begin
    if(op_div) begin
        if(next_state==Start) begin
            s_axis_divisor_tvalid<=1'b0;
            s_axis_dividend_tvalid<=1'b0;
        end
        else begin
            s_axis_divisor_tvalid<=1'b1;
            s_axis_dividend_tvalid<=1'b1;
        end
    end
    else if(op_divu) begin
        if(next_state==Start) begin
            s_axis_divisor_tvalidu<=1'b0;
            s_axis_dividend_tvalidu<=1'b0;
        end
        else begin
            s_axis_divisor_tvalidu<=1'b1;
            s_axis_dividend_tvalidu<=1'b1;
        end
    end
    else begin
        s_axis_divisor_tvalid<=1'b0;
        s_axis_dividend_tvalid<=1'b0;
        s_axis_divisor_tvalidu<=1'b0;
        s_axis_dividend_tvalidu<=1'b0;
    end
end


//lab6添加乘除法指令:将结果存入HI,LO寄存器中 除法高位存商,低位存余数
always @(posedge clk) begin //HI LO更新的前提是MEM和WB阶段的指令没有报出异常
    if(reset) begin
        HI <= 32'b0;
        LO <= 32'b0;
    end
    else if(!es_ex && !m1s_ex) begin
        if(op_div) begin
            HI <= div_result[31:0];//商写LO,余数写HI
            LO <= div_result[63:32];
        end
        else if(op_divu) begin
            HI <= divu_result[31:0];
            LO <= divu_result[63:32];
        end
        else if(op_mult) begin
            HI <= mult_result[63:32];
            LO <= mult_result[31:0];
        end
        else if(op_multu) begin
            HI <= multu_result[63:32];
            LO <= multu_result[31:0];
        end
        else if(op_mthi) begin
            HI <= alu_src1;
        end
        else if(op_mtlo) begin
            LO <= alu_src1;
        end
        else if(op_madd) begin
            HI <= madd_result[63:32];
            LO <= madd_result[31:0];
        end
        else if(op_maddu) begin
            HI <= maddu_result[63:32];
            LO <= maddu_result[31:0];
        end
        else if(op_msub) begin
            HI <= msub_result[63:32];
            LO <= msub_result[31:0];
        end
        else if(op_msubu) begin
            HI <= msubu_result[63:32];
            LO <= msubu_result[31:0];
        end
    end
end

assign mfhi_result=HI;
assign mflo_result=LO;

assign movn_result =(~(alu_src1==0))?alu_src2:32'b0;
assign movz_result = (alu_src1==0)?alu_src2:32'b0;

// final result mux 这个组合非常巧妙 各个结果用或运算连接 为0的项对于最终结果没有任何影响
assign alu_result = ({32{op_add|op_sub}} & add_sub_result)
                  | ({32{op_slt       }} & slt_result)
                  | ({32{op_sltu      }} & sltu_result)
                  | ({32{op_and       }} & and_result)
                  | ({32{op_nor       }} & nor_result)
                  | ({32{op_or        }} & or_result)
                  | ({32{op_xor       }} & xor_result)
                  | ({32{op_lui       }} & lui_result)
                  | ({32{op_sll       }} & sll_result)
                  | ({32{op_srl|op_sra}} & sr_result)
                  | ({32{op_mfhi      }} & mfhi_result)
                  | ({32{op_mflo      }} & mflo_result)
                  | ({32{op_clo       }} & cloclz_result)
                  | ({32{op_clz       }} & cloclz_result)
                  | ({32{op_mul       }} & mul_result[31:0])
                  | ({32{op_movn      }} & movn_result)
                  | ({32{op_movz      }} & movz_result)
                  | ({32{op_teq  | op_teqi | op_tge  | op_tgei | op_tgeiu 
                       | op_tgeu | op_tlt  | op_tlti |op_tltiu | op_tltiu 
                       | op_tne  | op_tnei }} & result_out);

endmodule
