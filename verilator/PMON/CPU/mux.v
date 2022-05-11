module mux1(
	RT, RD, MUX1Sel,

	Addr3
	);
	input[4:0] RT, RD;
	input[1:0] MUX1Sel;
	output reg[4:0] Addr3;

	always@(RT, RD, MUX1Sel)
		case(MUX1Sel)
			2'b00:	Addr3 = RT;	//rt
			2'b01:	Addr3 = RD;	//rd
			default:Addr3 = 5'h1f;			//31
		endcase

endmodule

module mux2(
	MUX6Out, CP0Out,
	MUX2Sel, MEM2_SCOut,

	WD
	);
	input [31:0] 		MUX6Out;
	input [31:0]		CP0Out;
	input [31:0]		MEM2_SCOut;
	input [2:0] 		MUX2Sel;

	output[31:0] 		WD;

	assign WD = ( MUX2Sel == 3'b101 ) ? CP0Out :
				( MUX2Sel == 3'b111 ) ? MEM2_SCOut :
										MUX6Out;

endmodule

module mux3(
	RD2, Imm32, MUX3Sel,

	B
	);
	input[31:0] RD2,Imm32;
	input MUX3Sel;
	output reg[31:0] B;

	always@(RD2, Imm32, MUX3Sel)
		case(MUX3Sel)
			1'b0:	B = RD2;
			default:B = Imm32;
		endcase

endmodule

module mux4(
	GPR_RS, data_EX,
	data_MEM1, data_MEM2, MUX4Sel,

	out
	);
	input[31:0] GPR_RS, data_EX, data_MEM1, data_MEM2;
	input[1:0] MUX4Sel;
	output reg[31:0] out;

	always@(GPR_RS, data_EX, data_MEM1, data_MEM2, MUX4Sel)
		case(MUX4Sel)
			2'b00:	out = GPR_RS;
			2'b01:	out = data_EX;
			2'b10:	out = data_MEM1;
			default:out = data_MEM2;
		endcase

endmodule

module mux5(
	GPR_RT, data_EX,
	data_MEM1, data_MEM2, MUX5Sel,

	out
	);
	input[31:0] GPR_RT, data_EX, data_MEM1, data_MEM2;
	input[1:0] MUX5Sel;
	output reg[31:0] out;

	always@(GPR_RT, data_EX, data_MEM1, data_MEM2, MUX5Sel)
		case(MUX5Sel)
			2'b00:	out = GPR_RT;
			2'b01:	out = data_EX;
			2'b10:	out = data_MEM1;
			default:out = data_MEM2;
		endcase

endmodule

module mux6(
	RHLOut, ALU1Out, PC,
	MEM1_MULOut, Imm32, MUX6Sel,

	out
	);
	input[31:0] RHLOut, ALU1Out, PC, Imm32, MEM1_MULOut;
	input[2:0] MUX6Sel;
	output reg[31:0] out;

	always@(RHLOut, ALU1Out, MEM1_MULOut, PC, Imm32, MUX6Sel)
		case(MUX6Sel)
			3'b000:	out = RHLOut;
			3'b001:	out = Imm32;
			3'b010:	out = ALU1Out;
			3'b100: out = MEM1_MULOut;
			default:out = PC + 8;
		endcase

endmodule

module mux7(
	WRSign, MUX7Sel,

	MUX7Out
	);
	input[3:0] WRSign;
	input MUX7Sel;
	output[3:0] MUX7Out;

	assign MUX7Out = MUX7Sel ? 4'b0000 : WRSign;

endmodule

module mux8(
	GPR_RS, data_MEM1, data_MEM2, MUX8Sel,

	out
	);
	input[31:0] GPR_RS, data_MEM1, data_MEM2;
	input[1:0] MUX8Sel;
	output reg[31:0] out;

	always@(GPR_RS, data_MEM1, data_MEM2, MUX8Sel)
		case(MUX8Sel)
			2'b00:	out = GPR_RS;
			2'b01:	out = data_MEM1;
			default:out = data_MEM2;
		endcase
endmodule

module mux9(
	GPR_RT, data_MEM1, data_MEM2, MUX9Sel,

	out
	);
	input[31:0] GPR_RT, data_MEM1, data_MEM2;
	input[1:0] MUX9Sel;
	output reg[31:0] out;

	always@(GPR_RT, data_MEM1, data_MEM2, MUX9Sel)
		case(MUX9Sel)
			2'b00:	out = GPR_RT;
			2'b01:	out = data_MEM1;
			default:out = data_MEM2;
		endcase

endmodule

module mux10(WB_MUX2Out, WB_DMOut, WB_MUX2Sel, MUX10Out);
	input[31:0] WB_MUX2Out;
	input[31:0] WB_DMOut;
	input[2:0] WB_MUX2Sel;
	output[31:0] MUX10Out;

	assign MUX10Out = (WB_MUX2Sel == 3'b100) ? WB_DMOut : WB_MUX2Out;
endmodule

module mux11(
	vpn2, alu1out, MUX11_Sel,

	out
);
	input [18:0] vpn2, alu1out;
	input MUX11_Sel;

	output [18:0] out;

	assign out = MUX11_Sel ? vpn2 : alu1out;
endmodule

module mux12 (
	index, random, MUX12_Sel,

	out
);
	input [3:0] index, random;
	input MUX12_Sel;

	output [3:0] out;

	assign out = MUX12_Sel ? index : random;

endmodule