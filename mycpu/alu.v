module alu(
    input         clk,
    input         reset,
    input  [40:0] alu_op,
    input  [31:0] alu_src1,
    input  [31:0] alu_src2,
    output [31:0] alu_result,
    input  [ 2:0] Overflow_inst, //可能涉及整型溢出例外的三条指令:add,addi,sub
    output        m_axis_dout_tvalid, //该信号为1表明有符号除法运算完毕
    output        m_axis_dout_tvalidu, //该信号为1表明无符号除法运算完毕
    output        isMul, //指令要用到乘法器
    output        isDiv, //该信号为1表明乘法运算完毕
    output        mul_finished, //该信号为1表明乘法运算完毕
    output        Overflow_ex, //有整型溢出置为1
    input         es_ex,
    input         m1s_ex
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

// control code decomposition
assign op_add   = alu_op[ 0];
assign op_sub   = alu_op[ 1];
assign op_slt   = alu_op[ 2];
assign op_sltu  = alu_op[ 3];
assign op_and   = alu_op[ 4];
assign op_nor   = alu_op[ 5];
assign op_or    = alu_op[ 6];
assign op_xor   = alu_op[ 7];
assign op_sll   = alu_op[ 8];
assign op_srl   = alu_op[ 9];
assign op_sra   = alu_op[10];
assign op_lui   = alu_op[11];
assign op_div   = alu_op[12];
assign op_divu  = alu_op[13];
assign op_mult  = alu_op[14];
assign op_multu = alu_op[15];
assign op_mfhi  = alu_op[16];
assign op_mflo  = alu_op[17];
assign op_mthi  = alu_op[18];
assign op_mtlo  = alu_op[19];

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
wire [63:0] multi_result  ; 
wire [63:0] multu_result  ; 
wire [63:0] div_result    ; 
wire [63:0] divu_result   ; 
wire [31:0] mfhi_result   ;
wire [31:0] mflo_result   ;

// 32-bit adder
wire [31:0] adder_a;
wire [31:0] adder_b;
wire [31:0] adder_cin;
wire [31:0] adder_result;
wire        adder_cout;

assign adder_a   = alu_src1;
assign adder_b   = (op_sub | op_slt | op_sltu) ? ~alu_src2 : alu_src2; //sub,slt,sltu作减法
assign adder_cin = (op_sub | op_slt | op_sltu) ? 32'b1      : 32'b0;
assign {adder_cout, adder_result} = adder_a + adder_b + adder_cin;

//lab8添加
assign Overflow_ex = Overflow_inst[2] | Overflow_inst[1] ? //add或者addi
                    (~alu_src1[31] & ~alu_src2[31] & adder_result[31]  ? 1'b1 : //正数+正数=负数
                      alu_src1[31] & alu_src2[31] & ~adder_result[31]  ? 1'b1 : 1'b0) : //负数+负数=正数
                     Overflow_inst[0] ? //sub 
                    (~alu_src1[31] & alu_src2[31] & adder_result[31]   ? 1'b1 : //正数-负数=负数
                      alu_src1[31] & ~alu_src2[31] & ~adder_result[31] ? 1'b1 : 1'b0): //负数-正数=正数
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

//lab添加 HI LO寄存器
reg  [31:0] HI;
reg  [31:0] LO;
wire        mul_isSigned; //乘法是有符号乘
wire        isNegative;   //乘法结果应为负数
wire [31:0] multiplicantA;
wire [31:0] multiplicantB;

multiplier U_multiplier( //Unsigned multiplier 3拍返回
    .CLK(clk),
    .A  (multiplicantA),
    .B  (multiplicantB),
    .P  (multi_result )
);

assign mul_isSigned  = op_mult;
assign multiplicantA = mul_isSigned & alu_src1[31] ? -alu_src1 : alu_src1;
assign multiplicantB = mul_isSigned & alu_src2[31] ? -alu_src2 : alu_src2;
assign isNegative    = mul_isSigned & (alu_src1[31] ^ alu_src2[31]);
assign mult_result   = isNegative ? -multi_result : multi_result;
assign multu_result  = multi_result;

//乘法时序控制状态机
reg [1:0] mul_state;
reg [1:0] mul_nextstate;

parameter MUL_IDLE   = 2'd0,
          MUL_STAGE1 = 2'd1,
          MUL_STAGE2 = 2'd2,
          MUL_STAGE3 = 2'd3;

always @(posedge clk) begin
    if(reset)
        mul_state <= MUL_IDLE;
    else
        mul_state <= mul_nextstate;
end

assign isMul = op_mult | op_multu;

assign mul_finished = (mul_state == MUL_STAGE3);

always @(*) begin
    case (mul_state)
        MUL_IDLE: 
            if(isMul) 
                mul_nextstate = MUL_STAGE1;
            else
                mul_nextstate = MUL_IDLE;
        
        MUL_STAGE1:
            mul_nextstate = MUL_STAGE2;
        
        MUL_STAGE2:
            mul_nextstate = MUL_STAGE3;

        MUL_STAGE3:
            mul_nextstate = MUL_IDLE;

        default: mul_nextstate = MUL_IDLE;
    endcase
end

//lab6添加 以下为mydiv模块用到的信号
//valid信号与ready信号是一对握手信号,同时为1后除法器工作.ready信号周期性出现(变为1),valid信号则可以人为控制
reg s_axis_divisor_tvalid; 
wire s_axis_divisor_tready;
reg s_axis_dividend_tvalid;
wire s_axis_dividend_tready;
//lab6添加 以下为mydiv_unsigned模块用到的信号 
reg  s_axis_divisor_tvalidu; 
wire s_axis_divisor_treadyu;
reg  s_axis_dividend_tvalidu;
wire s_axis_dividend_treadyu;

//带符号除法
mydiv u_mydiv(
    .aclk                    (clk),
`ifdef OPEN_VA
    .aresetn                 (~reset),
`endif
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
`ifdef OPEN_VA
    .aresetn                 (~reset),
`endif
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
parameter DIV_IDLE  = 1'b0,
          DIV_START = 1'b1;

reg       div_state;
reg       div_nextstate;

always @(posedge clk) begin 
    if(reset) 
        div_state <= DIV_IDLE;
    else 
        div_state <= div_nextstate;
end

assign isDiv = op_div | op_divu;
always @(*) begin
    case(div_state)
        DIV_IDLE:
            if(op_div & s_axis_divisor_tready & s_axis_divisor_tvalid)
                div_nextstate = DIV_START;
            else if(op_divu & s_axis_divisor_treadyu & s_axis_divisor_tvalidu)
                div_nextstate = DIV_START;
            else
                div_nextstate = DIV_IDLE;

        DIV_START:
            if(op_div | op_divu) 
                div_nextstate = DIV_START;
            else 
                div_nextstate = DIV_IDLE;

        default: 
            div_nextstate = DIV_IDLE;
    endcase
end

always @(posedge clk) begin
    if(op_div) begin
        if(div_nextstate==DIV_START) begin
            s_axis_divisor_tvalid<=1'b0;
            s_axis_dividend_tvalid<=1'b0;
        end
        else begin
            s_axis_divisor_tvalid<=1'b1;
            s_axis_dividend_tvalid<=1'b1;
        end
    end
    else if(op_divu) begin
        if(div_nextstate==DIV_START) begin
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
    else if(!m1s_ex) begin
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
    end
end

assign mfhi_result = HI;
assign mflo_result = LO;

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
                  | ({32{op_mflo      }} & mflo_result);

endmodule
