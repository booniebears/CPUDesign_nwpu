`include "Ctrl_encoding_def.v"

module ALU(busA,busB,ALUop,s,ALUout);
input [31:0] busA,busB;
input [3:0] ALUop;
input [4:0] s;  // 移位字段
output [31:0] ALUout;
 
reg [31:0] ALUout_r;
wire [31:0] ALUMinus;
always @(busA,busB,ALUop,ALUMinus) begin
    // if (ALUop==ALUop_ADD)
    //     ALUout=busA+busB;
    // else if  (ALUop=ALUop_SUB)
    //     ALUout=busA-busB;
    // else if  (ALUop=ALUop_ORI)
    //     ALUout=busA | busB;

    case (ALUop)
        `ALUop_ADD :  ALUout_r = busA + busB;
        `ALUop_SUB :  ALUout_r = busA - busB;
        `ALUop_ORI :  ALUout_r = busA | busB;
        `ALUop_AND :  ALUout_r = busA & busB;
        `ALUop_NOR :  ALUout_r = ~(busA | busB);
        `ALUop_SLL :  ALUout_r = busB << s;
        `ALUop_SRL :  ALUout_r = busB >> s;
        `ALUop_SRA :  ALUout_r = ($signed(busB)) >>> s;
        `ALUop_SLT :  begin
            if ($signed(busA) < $signed(busB) )  ALUout_r = 32'b1;
            else  ALUout_r = 32'b0;
        end
        `ALUop_SLTU : begin
            if ($unsigned(busA) < $unsigned(busB) ) ALUout_r = 32'b1;
            else  ALUout_r = 32'b0;
        end
        `ALUop_XOR :  ALUout_r = busA ^ busB;
        default: ;
    endcase
    
end 
assign ALUout = ALUout_r;
assign ALUMinus = busA - busB;
endmodule