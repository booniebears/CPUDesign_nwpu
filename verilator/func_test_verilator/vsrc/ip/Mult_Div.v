
`include "MacroDef.v"


`define free        3'd0
`define mult_zero   3'd1
`define mult_sign   3'd2
`define div_zero    3'd3
`define div_sign    3'd4
`define finish      3'd5

module Divider (
  aclk,                                      // input wire aclk
  aresetn,                                // input wire aresetn
  s_axis_divisor_tvalid,    // input wire s_axis_divisor_tvalid
  s_axis_divisor_tdata,      // input wire [31 : 0] s_axis_divisor_tdata
  s_axis_dividend_tvalid,  // input wire s_axis_dividend_tvalid
  s_axis_dividend_tdata,    // input wire [31 : 0] s_axis_dividend_tdata
  m_axis_dout_tvalid,          // output wire m_axis_dout_tvalid
  m_axis_dout_tdata            // output wire [63 : 0] m_axis_dout_tdata
);
    input aclk;
    input aresetn;
    input s_axis_divisor_tvalid;    // input wire s_axis_divisor_tvalid
    input [31:0] s_axis_divisor_tdata;      // input wire [31 : 0] s_axis_divisor_tdata
    input s_axis_dividend_tvalid;  // input wire s_axis_dividend_tvalid
    input [31:0]s_axis_dividend_tdata;    // input wire [31 : 0] s_axis_dividend_tdata
    output reg m_axis_dout_tvalid;          // output wire m_axis_dout_tvalid
    output reg [63:0]m_axis_dout_tdata;            // output wire [63 : 0] m_axis_dout_tdata

    reg [63:0] temp;
    reg [2:0]  state;
    reg [4:0] i;
    reg [2:0] next_state;
always @(posedge aclk) begin
    if(!aresetn)
    begin
        state<=`free;
        temp<=0;
        i<=0;
        m_axis_dout_tvalid<=0;
    end
    else
    begin
        state<=next_state;
    end
end
wire start;
assign start=(s_axis_divisor_tvalid&s_axis_dividend_tvalid);
always @(*) begin
    if(state==`free && start  )
        next_state=`div_sign;
    else if(state==`div_sign && i < 10)
        next_state=`div_sign;
    else if(i==10)
        next_state=`finish;
    else
        next_state=`free;
end


always @(posedge aclk )
begin
    case(state)
    `free:
    begin
        if(start)
        begin
        temp <={{$signed(s_axis_dividend_tdata) / $signed(s_axis_divisor_tdata)},{$signed(s_axis_dividend_tdata) % $signed(s_axis_divisor_tdata)}};
        end
        m_axis_dout_tvalid <=0;
    end
    `div_sign:
    begin
        i<=i+1;
    end
    `finish:
    begin
        m_axis_dout_tdata <= temp;
        m_axis_dout_tvalid <=1;
        i       <=0;
    end
    default:
    begin
        m_axis_dout_tvalid <=0;
    end
    endcase
end



endmodule

module Divider_Unsighed(
  aclk,                                      // input wire aclk
  aresetn,                                // input wire aresetn
  s_axis_divisor_tvalid,    // input wire s_axis_divisor_tvalid
  s_axis_divisor_tdata,      // input wire [31 : 0] s_axis_divisor_tdata
  s_axis_dividend_tvalid,  // input wire s_axis_dividend_tvalid
  s_axis_dividend_tdata,    // input wire [31 : 0] s_axis_dividend_tdata
  m_axis_dout_tvalid,          // output wire m_axis_dout_tvalid
  m_axis_dout_tdata            // output wire [63 : 0] m_axis_dout_tdata
);

  input aclk;
    input aresetn;
    input s_axis_divisor_tvalid;    // input wire s_axis_divisor_tvalid
    input [31:0] s_axis_divisor_tdata;      // input wire [31 : 0] s_axis_divisor_tdata
    input s_axis_dividend_tvalid;  // input wire s_axis_dividend_tvalid
    input [31:0]s_axis_dividend_tdata;    // input wire [31 : 0] s_axis_dividend_tdata
    output reg m_axis_dout_tvalid;          // output wire m_axis_dout_tvalid
    output reg [63:0]m_axis_dout_tdata;            // output wire [63 : 0] m_axis_dout_tdata

    reg [63:0] temp;
    reg [2:0]  state;
    reg [4:0] i;
    reg [2:0] next_state;
always @(posedge aclk) begin
    if(!aresetn)
    begin
        state<=`free;
        temp<=0;
        i<=0;
        m_axis_dout_tvalid<=0;
    end
    else
    begin
        state<=next_state;
    end
end
wire start;
assign start=(s_axis_divisor_tvalid&s_axis_dividend_tvalid);
always @(*) begin
    if(state==`free && start  )
        next_state=`div_zero;
    else if(state==`div_zero && i < 10)
        next_state=`div_zero;
    else if(i==10)
        next_state=`finish;
    else
        next_state=`free;
end


always @(posedge aclk )
begin
    case(state)
    `free:
    begin
        if(start)
        begin
            temp<={ {s_axis_dividend_tdata / s_axis_divisor_tdata},{s_axis_dividend_tdata % s_axis_divisor_tdata}};
        end
        m_axis_dout_tvalid <=0;
    end
    `div_zero:
    begin
        i<=i+1;
    end
    `finish:
    begin
        m_axis_dout_tdata <= temp;
        m_axis_dout_tvalid <=1;
        i       <=0;
    end
    default:
    begin
        m_axis_dout_tvalid <=0;
    end
    endcase
end



endmodule
module multiplier_signed (
	CLK,
	A,
	B,
	CE,
	P
);
    input CLK;
    input [31:0] A;
    input [31:0] B;
    input CE;
    output reg [63:0] P;
    reg[1:0] state;
    reg[1:0] next_state;

    parameter free = 2'b0;
    parameter busy = 2'b1;

    always@(posedge CLK)
    begin
        state<=next_state;
    end

always @(state,CE)
begin
    case (state)
        free: begin
            if(CE)
                next_state=busy;
            else
                next_state=free;
        end
        busy: begin
            if(CE)
                next_state=busy;
            else
                next_state=free;
            end
            default : begin
                next_state=free;
                end
            endcase
end

always@(posedge CLK)
begin
    if(CE && state==free)
    begin
        P <=$signed(A) * $signed(B);
    end
end


endmodule

module multiplier_unsigned (
	CLK,
	A,
	B,
	CE,
	P
);

	input CLK;
	input[31:0] A;
	input[31:0] B;
	input CE;
	output reg [63:0] P;


    reg [63:0] temp;
    reg [2:0]  state;
    reg[31:0] A_reg;
    reg[31:0] B_reg;

    always@(posedge CLK)
        if((state == `free) && CE) begin
            A_reg <= A;
            B_reg <= B;
        end


    always @(posedge CLK ) begin
        if(CE)
        begin
            state <= `mult_zero;
            P <=A_reg*B_reg;
        end
        else
        begin
            state <= `free;
            P <= 0;
        end
    end

endmodule
