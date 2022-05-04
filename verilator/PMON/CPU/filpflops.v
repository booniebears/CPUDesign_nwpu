`include "MacroDef.v"

module PC (
	clk,rst,PCWr,PC_Flush,
	NPC,Instr_Flush,

	PF_PC,PF_Instr_Flush
);
	input 			clk;
	input 			rst;
	input 			PCWr;
	input			PC_Flush;
	input [31:0]	NPC;
	input [1:0]		Instr_Flush;

	output reg[31:0]PF_PC;
	output reg		PF_Instr_Flush;

	always @(posedge clk) begin
		if(!rst | PC_Flush)begin
			PF_PC <= 32'hbfc0_0000;
			PF_Instr_Flush <= 1'b0;
		end
		else if ( PCWr ) begin
			PF_PC <= NPC;
			PF_Instr_Flush <= Instr_Flush;
		end
	end

endmodule

module PF_IF(
	clk,rst,wr,PF_PC,PF_Exception,PF_ExcCode,PF_TLBRill_Exc,
	PF_TLB_Exc, valid, icache_sel, uncache_valid,PPC,PF_Flush,

	IF_PC,IF_Exception,IF_ExcCode,IF_TLBRill_Exc,IF_TLB_Exc,
	IF_valid, IF_icache_sel, IF_uncache_valid, IF_PPC
);
	input 			clk;
	input 			rst;
	input 			wr;
	input 			PF_Exception;
	input [4:0] 	PF_ExcCode;
	input [31:0] 	PPC;
	input [31:0] 	PF_PC;
	input 			PF_TLBRill_Exc;
	input 			PF_TLB_Exc;
	input 			valid;
	input 			icache_sel;
	input 			uncache_valid;
	input 			PF_Flush;

	output reg [31:0] IF_PC;
	output reg [31:0] IF_PPC;
	output reg 		IF_Exception;
	output reg [4:0] IF_ExcCode;
	output reg 		IF_TLB_Exc;
	output reg 		IF_TLBRill_Exc;
	output reg 		IF_valid;
	output reg 		IF_icache_sel;
	output reg 		IF_uncache_valid;

    always@(posedge clk)
		if(!rst | PF_Flush)
		begin
			IF_ExcCode <= 5'b0;
			IF_Exception <= 1'b0;
			IF_PC <= 32'h0;
			IF_TLBRill_Exc <= 1'b0;
			IF_TLB_Exc <= 1'b0;
			IF_valid <= 1'b0;
			IF_icache_sel <= 1'b0;
			IF_uncache_valid <= 1'b0;
			IF_PPC <= 32'd0;
		end
		else if(wr)
		begin
			IF_ExcCode <= PF_ExcCode;
			IF_Exception <= PF_Exception;
			IF_PC <= PF_PC;
			IF_TLBRill_Exc <= PF_TLBRill_Exc;
			IF_TLB_Exc <= PF_TLB_Exc;
			IF_valid <= valid;
			IF_icache_sel <= icache_sel;
			IF_uncache_valid <= uncache_valid;
			IF_PPC <= PPC;
		end

endmodule


module IF_ID(
	clk,rst,IF_IDWr,IF_Flush,IF_PC,Instr,IF_Exception,
	IF_ExcCode,IF_TLBRill_Exc,IF_TLB_Exc,

	ID_PC,ID_Instr,Temp_ID_Excetion,Temp_ID_ExcCode,
	ID_TLBRill_Exc,ID_TLB_Exc
);
	input 			clk;
	input 			rst;
	input 			IF_IDWr;
	input 			IF_Flush;
	input 			IF_Exception;
	input [31:0] 	Instr;
	input [31:0] 	IF_PC;
	input [4:0] 	IF_ExcCode;
	input 			IF_TLBRill_Exc;
	input 			IF_TLB_Exc;

	output reg [31:0] ID_PC;
	output reg [31:0] ID_Instr;
	output reg 		Temp_ID_Excetion;
	output reg [4:0] Temp_ID_ExcCode;
	output reg 		ID_TLBRill_Exc;
	output reg 		ID_TLB_Exc;

	always@(posedge clk)
		if(!rst || IF_Flush) begin
			//ID_PC <= 32'h0000_0000;
			ID_Instr <= 32'h0000_0000;
			Temp_ID_Excetion <= 1'b0;
			Temp_ID_ExcCode <= 5'b0;
			ID_TLBRill_Exc <= 1'b0;
			ID_TLB_Exc <= 1'b0;
		end
		else if(IF_IDWr) begin
			ID_PC <= IF_PC;
			ID_Instr <= Instr;
			Temp_ID_Excetion <= IF_Exception;
			Temp_ID_ExcCode <= IF_ExcCode;
			ID_TLBRill_Exc <= IF_TLBRill_Exc;
			ID_TLB_Exc <= IF_TLB_Exc;
		end

endmodule

module ID_EX(
	clk, rst, ID_EXWr,ID_Flush, RHLSel_Rd, PC, ALU1Op, ALU2Op, MUX1Sel, MUX3Sel, ALU1Sel, DMWr, DMSel,
	DMRd, RFWr, RHLWr, RHLSel_Wr, MUX2Sel, GPR_RS, GPR_RT, RS, RT, RD, Imm32, shamt,
	eret_flush, CP0WrEn, Exception, ExcCode, isBD, isBranch, CP0Addr, CP0Rd, start,ID_dcache_en,
	ID_TLBRill_Exc,ID_MUX11Sel,ID_MUX12Sel,ID_tlb_searchen,ID_TLB_Exc,TLB_flush,TLB_writeen,TLB_readen,
	LoadOp,StoreOp,LL_signal,SC_signal,icache_valid_CI, icache_op_CI, dcache_valid_CI, dcache_op_CI,

	EX_eret_flush, EX_CP0WrEn, EX_Exception, EX_ExcCode, EX_isBD, EX_isBranch, EX_RHLSel_Rd,
	EX_DMWr, EX_DMRd, EX_MUX3Sel, EX_ALU1Sel, EX_RFWr, EX_RHLWr, EX_ALU2Op, EX_MUX1Sel, EX_RHLSel_Wr,
	EX_DMSel, EX_MUX2Sel, EX_ALU1Op, EX_RS, EX_RT, EX_RD, EX_shamt, EX_PC, EX_GPR_RS, EX_GPR_RT,
	EX_Imm32, EX_CP0Addr, EX_CP0Rd, EX_start,EX_dcache_en,EX_TLBRill_Exc,EX_MUX11Sel,
	EX_MUX12Sel,EX_tlb_searchen,EX_TLB_Exc,EX_TLB_flush,EX_TLB_writeen,EX_TLB_readen,EX_LoadOp,
	EX_StoreOp,EX_LL_signal,EX_SC_signal, EX_icache_valid_CI, EX_icache_op_CI, EX_dcache_valid_CI, 
	EX_dcache_op_CI
);
	input 			clk;
	input 			rst;
	input 			ID_EXWr;
	input 			ID_Flush;
	input 			DMWr;
	input 			DMRd;
	input 			MUX3Sel;
	input 			ALU1Sel;
	input 			RFWr;
	input 			RHLWr;
	input 			RHLSel_Rd;
	input 			eret_flush;
	input 			CP0WrEn;
	input 			Exception;
	input [4:0] 	ExcCode;
	input 			isBD;
	input 			isBranch;
	input [1:0] 	RHLSel_Wr;
	input [1:0] 	MUX1Sel;
	input [3:0] 	ALU2Op;
	input [2:0] 	MUX2Sel;
	input [2:0] 	DMSel;
	input [4:0] 	ALU1Op;
	input [4:0] 	RS;
	input [4:0]		RT;
	input [4:0]		RD;
	input [4:0]		shamt;
	input [31:0]	PC;
	input [31:0] 	GPR_RS;
	input [31:0] 	GPR_RT;
	input [31:0] 	Imm32;
	input [7:0] 	CP0Addr;
	input 			CP0Rd;
	input 			start;
	input 			ID_dcache_en;
	input 			ID_TLBRill_Exc;
	input 			ID_TLB_Exc;
	input 			ID_MUX11Sel;
	input 			ID_MUX12Sel;
	input 			ID_tlb_searchen;
	input 			TLB_flush;
	input 			TLB_writeen;
	input 			TLB_readen;
	input [1:0] 	StoreOp;
	input [1:0] 	LoadOp;
	input 			LL_signal;
	input 			SC_signal;
	input 			icache_valid_CI;
	input 			icache_op_CI;
	input 			dcache_valid_CI;
	input [1:0] 	dcache_op_CI;

	output reg 		EX_eret_flush;
	output reg 		EX_CP0WrEn;
	output reg 		EX_Exception;
	output reg [4:0] EX_ExcCode;
	output reg 		EX_isBD;
	output reg 		EX_isBranch;
	output reg 		EX_RHLSel_Rd;
	output reg 		EX_DMWr;
	output reg 		EX_DMRd;
	output reg 		EX_MUX3Sel;
	output reg 		EX_ALU1Sel;
	output reg 		EX_RFWr;
	output reg 		EX_RHLWr;
	output reg [3:0] EX_ALU2Op;
	output reg [1:0] EX_MUX1Sel;
	output reg [1:0] EX_RHLSel_Wr;
	output reg [2:0] EX_DMSel;
	output reg [2:0] EX_MUX2Sel;
	output reg [4:0] EX_ALU1Op;
	output reg [4:0] EX_RS;
	output reg [4:0] EX_RT;
	output reg [4:0] EX_RD;
	output reg [4:0] EX_shamt;
	output reg [31:0]EX_PC;
	output reg [31:0]EX_GPR_RS;
	output reg [31:0]EX_GPR_RT;
	output reg [31:0]EX_Imm32;
	output reg [7:0]EX_CP0Addr;
	output reg 		EX_CP0Rd;
	output reg 		EX_start;
	output reg 		EX_dcache_en;
	output reg 		EX_TLB_Exc;
	output reg 		EX_TLBRill_Exc;
	output reg 		EX_MUX11Sel;
	output reg 		EX_tlb_searchen;
	output reg 		EX_MUX12Sel;
	output reg 		EX_TLB_flush;
	output reg 		EX_TLB_writeen;
	output reg 		EX_TLB_readen;
	output reg [1:0]EX_StoreOp;
	output reg [1:0]EX_LoadOp;
	output reg 		EX_LL_signal;
	output reg 		EX_SC_signal;
	output reg 		EX_icache_valid_CI;
	output reg 		EX_icache_op_CI;
	output reg 		EX_dcache_valid_CI;
	output reg [1:0]EX_dcache_op_CI;

	always@(posedge clk)
		if(!rst || ID_Flush) begin
			EX_eret_flush <= 1'b0;
			EX_CP0WrEn <= 1'b0;
			EX_Exception <= 1'b0;
			EX_ExcCode <= 5'd0;
			EX_isBD <= 1'b0;
			EX_isBranch <= 1'b0;
			EX_RHLSel_Rd <= 1'b0;
			EX_DMWr <= 1'b0;
			EX_DMRd <= 1'b0;
			EX_MUX3Sel <= 1'b0;
			EX_ALU1Sel <= 1'b0;
			EX_RFWr <= 1'b0;
			EX_RHLWr <= 1'b0;
			EX_ALU2Op <= 4'b0;
			EX_MUX1Sel <= 2'b00;
			EX_RHLSel_Wr <= 2'b00;
			EX_DMSel <= 3'b000;
			EX_MUX2Sel <= 3'b000;
			EX_ALU1Op <= 5'h0;
			EX_RS <= 5'd0;
			EX_RT <= 5'd0;
			EX_RD <= 5'd0;
			EX_shamt <= 5'd0;
			//EX_PC <= 32'd0;
			EX_GPR_RS <= 32'd0;
			EX_GPR_RT <= 32'd0;
			EX_Imm32 <= 32'd0;
			EX_CP0Addr <= 32'd0;
			EX_CP0Rd <= 1'b0;
			EX_start <= 1'b0;
			EX_dcache_en<=1'b0;
			EX_TLBRill_Exc <= 1'b0;
			EX_MUX11Sel <= 1'b0;
			EX_MUX12Sel <= 1'b0;
			EX_tlb_searchen <= 1'b0;
			EX_TLB_Exc <= 1'b0;
			EX_TLB_flush <= 1'b0;
			EX_TLB_writeen <= 1'b0;
			EX_TLB_readen <= 1'b0;
			EX_LoadOp <= 2'b00;
			EX_StoreOp <= 2'b00;
			EX_LL_signal <= 1'b0;
			EX_SC_signal <= 1'b0;
			EX_icache_valid_CI <= 1'b0;
			EX_icache_op_CI <= 1'b0;
			EX_dcache_valid_CI <= 1'b0;
			EX_dcache_op_CI <= 2'b00;
		end
		else if(ID_EXWr)
		begin
			EX_eret_flush <= eret_flush;
			EX_CP0WrEn <= CP0WrEn;
			EX_Exception <= Exception;
			EX_ExcCode <= ExcCode;
			EX_isBD <= isBD;
			EX_isBranch <= isBranch;
			EX_RHLSel_Rd <= RHLSel_Rd;
			EX_DMWr <= DMWr;
			EX_DMRd <= DMRd;
			EX_MUX3Sel <= MUX3Sel;
			EX_ALU1Sel <= ALU1Sel;
			EX_RFWr <= RFWr;
			EX_RHLWr <= RHLWr;
			EX_ALU2Op <= ALU2Op;
			EX_MUX1Sel <= MUX1Sel;
			EX_RHLSel_Wr <= RHLSel_Wr;
			EX_DMSel <= DMSel;
			EX_MUX2Sel <= MUX2Sel;
			EX_ALU1Op <= ALU1Op;
			EX_RS <= RS;
			EX_RT <= RT;
			EX_RD <= RD;
			EX_shamt <= shamt;
			EX_PC <= PC;
			EX_GPR_RS <= GPR_RS;
			EX_GPR_RT <= GPR_RT;
			EX_Imm32 <= Imm32;
			EX_CP0Addr <= CP0Addr;
			EX_CP0Rd <= CP0Rd;
			EX_start <= start;
			EX_dcache_en <= ID_dcache_en;
			EX_TLBRill_Exc <= ID_TLBRill_Exc;
			EX_MUX11Sel <= ID_MUX11Sel;
			EX_MUX12Sel <= ID_MUX12Sel;
			EX_tlb_searchen <= ID_tlb_searchen;
			EX_TLB_Exc <= ID_TLB_Exc;
			EX_TLB_flush <= TLB_flush;
			EX_TLB_writeen <= TLB_writeen;
			EX_TLB_readen <= TLB_readen;
			EX_LoadOp <= LoadOp;
			EX_StoreOp <= StoreOp;
			EX_LL_signal <= LL_signal;
			EX_SC_signal <= SC_signal;
			EX_icache_valid_CI <= icache_valid_CI;
			EX_icache_op_CI <= icache_op_CI;
			EX_dcache_valid_CI <= dcache_valid_CI;
			EX_dcache_op_CI <= dcache_op_CI;
		end
endmodule

module EX_MEM1(
		clk, rst, EX_MEM1Wr, Imm32, EX_PC, DMWr, DMSel, DMRd, RFWr, MUX2Sel,RHLOut,
        ALU1Out, GPR_RT, RD, EX_Flush, eret_flush, CP0WrEn, Exception, ExcCode, isBD,
        CP0Addr, CP0Rd, EX_dcache_en, Overflow,EX_TLBRill_Exc,EX_tlb_searchen,EX_MUX11Sel,
		EX_MUX12Sel,EX_TLB_Exc,EX_TLB_flush,EX_TLB_writeen,EX_TLB_readen,EX_LoadOp,EX_StoreOp,
		MULOut,EX_start,Trap,EX_LL_signal,EX_SC_signal, EX_icache_valid_CI, EX_icache_op_CI,
		EX_dcache_valid_CI, EX_dcache_op_CI,

		MEM1_DMWr, MEM1_DMRd, MEM1_RFWr,MEM1_eret_flush, MEM1_CP0WrEn, MEM1_Exception, MEM1_ExcCode,
        MEM1_isBD, MEM1_DMSel, MEM1_MUX2Sel, MEM1_RD, MEM1_PC, MEM1_RHLOut, MEM1_ALU1Out, MEM1_GPR_RT,
        MEM1_Imm32, MEM1_CP0Addr, MEM1_CP0Rd, MEM1_dcache_en, MEM1_Overflow,MEM1_TLBRill_Exc,MEM1_tlb_searchen,
		MEM1_MUX11Sel,MEM1_MUX12Sel,MEM1_TLB_Exc,MEM1_TLB_flush,MEM1_TLB_writeen,MEM1_TLB_readen,MEM1_LoadOp,
		MEM1_StoreOp,MEM1_MULOut,MEM1_start,MEM1_Trap,MEM1_LL_signal,MEM1_SC_signal,
		MEM1_icache_valid_CI, MEM1_icache_op_CI, MEM1_dcache_valid_CI, MEM1_dcache_op_CI,
	);
	input 			clk;
	input 			rst;
	input 			EX_MEM1Wr;
	input 			EX_Flush;
	input 			DMWr;
	input 			DMRd;
	input 			RFWr;
	input 			Overflow;
	input 			eret_flush;
	input 			CP0WrEn;
	input 			Exception;
	input [4:0] 	ExcCode;
	input 			isBD;
	input [2:0] 	MUX2Sel;
	input [2:0] 	DMSel;
	input [4:0] 	RD;
	input [31:0] 	EX_PC;
	input [31:0] 	RHLOut;
	input [31:0] 	ALU1Out;
	input [31:0] 	GPR_RT;
	input [31:0] 	Imm32;
	input [7:0] 	CP0Addr;
	input 			CP0Rd;
	input 			EX_dcache_en;
	input 			EX_TLBRill_Exc;
	input 			EX_tlb_searchen;
	input 			EX_MUX11Sel;
	input 			EX_TLB_Exc;
	input 			EX_TLB_flush;
	input 			EX_TLB_writeen;
	input 			EX_TLB_readen;
	input 			EX_MUX12Sel;
	input [1:0] 	EX_StoreOp;
	input [1:0] 	EX_LoadOp;
	input [31:0] 	MULOut;
	input 			EX_start;
	input 			Trap;
	input	 		EX_LL_signal;
	input	 		EX_SC_signal;
	input 			EX_icache_valid_CI;
	input 			EX_icache_op_CI;
	input 			EX_dcache_valid_CI;
	input [1:0]		EX_dcache_op_CI;

	output reg 		MEM1_DMWr;
	output reg 		MEM1_DMRd;
	output reg 		MEM1_RFWr;
	output reg 		MEM1_eret_flush;
	output reg 		MEM1_CP0WrEn;
	output reg 		MEM1_Exception;
	output reg [4:0]MEM1_ExcCode;
	output reg 		MEM1_isBD;
	output reg [2:0]MEM1_MUX2Sel;
	output reg [2:0]MEM1_DMSel;
	output reg [4:0]MEM1_RD;
	output reg [31:0] MEM1_PC;
	output reg [31:0] MEM1_RHLOut;
	output reg [31:0] MEM1_ALU1Out;
	output reg [31:0] MEM1_GPR_RT;
	output reg [31:0] MEM1_Imm32;
	output reg [7:0] MEM1_CP0Addr;
	output reg 		MEM1_CP0Rd;
	output reg 		MEM1_dcache_en;
	output reg 		MEM1_Overflow;
	output reg 		MEM1_TLBRill_Exc;
	output reg		MEM1_tlb_searchen;
	output reg		MEM1_MUX11Sel;
	output reg		MEM1_TLB_Exc;
	output reg		MEM1_TLB_flush;
	output reg		MEM1_TLB_writeen;
	output reg		MEM1_TLB_readen;
	output reg 		MEM1_MUX12Sel;
	output reg [1:0]MEM1_StoreOp;
	output reg [1:0]MEM1_LoadOp;
	output reg [31:0] MEM1_MULOut;
	output reg 		MEM1_start;
	output reg 		MEM1_Trap;
	output reg 		MEM1_LL_signal;
	output reg 		MEM1_SC_signal;
	output reg 		MEM1_icache_valid_CI;
	output reg 		MEM1_icache_op_CI;
	output reg 		MEM1_dcache_valid_CI;
	output reg [1:0]MEM1_dcache_op_CI;

	always@(posedge clk)
		if(!rst || EX_Flush) begin
			MEM1_DMWr <= 1'b0;
			MEM1_DMRd <= 1'b0;
			MEM1_RFWr <= 1'b0;
			MEM1_eret_flush <= 1'b0;
			MEM1_CP0WrEn <= 1'b0;
			MEM1_isBD <= 1'b0;
			MEM1_DMRd <= 1'b0;
			MEM1_DMSel <= 3'd0;
			MEM1_MUX2Sel <= 3'd0;
			MEM1_RD <= 5'd0;
			//MEM1_PC <= 32'd0;
			MEM1_RHLOut <= 32'd0;
			MEM1_ALU1Out <= 32'd0;
			MEM1_GPR_RT <= 32'd0;
			MEM1_Imm32 <= 32'd0;
			MEM1_CP0Addr <= 7'd0;
			MEM1_CP0Rd <= 1'b0;
			MEM1_dcache_en<=1'b0;
			MEM1_ExcCode <= 5'd0;
			MEM1_Exception <= 1'b0;
			MEM1_Overflow <= 1'b0;
			MEM1_TLBRill_Exc   <= 1'b0;
			MEM1_tlb_searchen <= 1'b0;
			MEM1_MUX11Sel <= 1'b0;
			MEM1_MUX12Sel <= 1'b0;
			MEM1_TLB_Exc <= 1'b0;
			MEM1_TLB_flush <= 1'b0;
			MEM1_TLB_writeen <= 1'b0;
			MEM1_TLB_readen <= 1'b0;
			MEM1_LoadOp <= 2'b0;
			MEM1_StoreOp <= 2'b0;
			MEM1_MULOut <= 32'b0;
			MEM1_start <= 1'b0;
			MEM1_Trap <= 1'b0;
	 		MEM1_LL_signal <= 1'b0;
	 		MEM1_SC_signal <= 1'b0;
			MEM1_icache_valid_CI <= 1'b0;
			MEM1_icache_op_CI <= 1'b0;
			MEM1_dcache_valid_CI <= 1'b0;
			MEM1_dcache_op_CI <= 2'b00;
		end
		else if (EX_MEM1Wr) begin
			MEM1_DMWr <= DMWr;
			MEM1_DMRd <= DMRd;
			MEM1_RFWr <= RFWr;
			MEM1_eret_flush <= eret_flush;
			MEM1_CP0WrEn <= CP0WrEn;
			MEM1_isBD <= isBD;
			MEM1_DMSel <= DMSel;
			MEM1_MUX2Sel <= MUX2Sel;
			MEM1_RD <= RD;
			MEM1_PC <= EX_PC;
			MEM1_RHLOut <= RHLOut;
			MEM1_ALU1Out <= ALU1Out;
			MEM1_GPR_RT <= GPR_RT;
			MEM1_Imm32 <= Imm32;
			MEM1_CP0Addr <= CP0Addr;
			MEM1_CP0Rd <= CP0Rd;
			MEM1_dcache_en <= EX_dcache_en;
			MEM1_ExcCode <= ExcCode;
			MEM1_Exception <= Exception;
			MEM1_Overflow <= Overflow;
			MEM1_TLBRill_Exc   <= EX_TLBRill_Exc;
			MEM1_tlb_searchen <= EX_tlb_searchen;
			MEM1_MUX11Sel <= EX_MUX11Sel;
			MEM1_MUX12Sel <= EX_MUX12Sel;
			MEM1_TLB_Exc <= EX_TLB_Exc;
			MEM1_TLB_flush <= EX_TLB_flush;
			MEM1_TLB_writeen <= EX_TLB_writeen;
			MEM1_TLB_readen <= EX_TLB_readen;
			MEM1_LoadOp	<= EX_LoadOp;
			MEM1_StoreOp <= EX_StoreOp;
			MEM1_MULOut <= MULOut;
			MEM1_start <= EX_start;
			MEM1_Trap <= Trap;
			MEM1_LL_signal <= EX_LL_signal;
	 		MEM1_SC_signal <= EX_SC_signal;
			MEM1_icache_valid_CI <= EX_icache_valid_CI;
			MEM1_icache_op_CI <= EX_icache_op_CI;
			MEM1_dcache_valid_CI <= EX_dcache_valid_CI;
			MEM1_dcache_op_CI <= EX_dcache_op_CI;
		end

endmodule

module MEM1_MEM2(
		clk,rst,PC,RFWr,MUX2Sel,MUX6Out,ALU1Out,RD,MEM1_Flush,CP0Out,MEM1_MEM2Wr,
		DMSel,cache_sel,DMWen, Exception,eret_flush,uncache_valid,DMen,Paddr,
		MEM1_dCache_wstrb,GPR_RT,DMRd,CP0Rd,MEM1_TLB_flush,MEM1_TLB_writeen,
		MEM1_TLB_readen,MEM1_LoadOp,MEM1_wdata,MEM1_SCOut, MEM1_icache_valid_CI,

		MEM2_RFWr,MEM2_MUX2Sel, MEM2_RD, MEM2_PC, MEM2_ALU1Out, MEM2_MUX6Out, MEM2_CP0Out,
        MEM2_DMSel, MEM2_cache_sel, MEM2_DMWen, MEM2_Exception, MEM2_eret_flush,
		MEM2_uncache_valid, MEM2_DMen,MEM2_Paddr, MEM2_unCache_wstrb, MEM2_GPR_RT,
		MEM2_DMRd, MEM2_CP0Rd,MEM2_TLB_flush,MEM2_TLB_writeen,MEM2_TLB_readen,MEM2_LoadOp,
		MEM2_wdata,MEM2_SCOut, MEM2_icache_valid_CI
		);
	input 			clk;
	input 			rst;
	input 			MEM1_Flush;
	input 			MEM1_MEM2Wr;
	input [31:0] 	PC;
	input 			RFWr;
	input [2:0] 	MUX2Sel;
	input [31:0] 	MUX6Out;
	input [31:0] 	ALU1Out;
	input [4:0] 	RD;
	input [31:0] 	CP0Out;
	input [2:0] 	DMSel;
	input 			cache_sel;
	input 			DMWen;
	input 			Exception;
	input 			eret_flush;
	input 			uncache_valid;
	input 			DMen;
	input [31:0] 	Paddr;
	input [3:0] 	MEM1_dCache_wstrb;
	input [31:0] 	GPR_RT;
	input 			DMRd;
	input 			CP0Rd;
	input 			MEM1_TLB_flush;
	input 			MEM1_TLB_writeen;
	input 			MEM1_TLB_readen;
	input [1:0] 	MEM1_LoadOp;
	input [31:0] 	MEM1_wdata;
	input [31:0] 	MEM1_SCOut;
	input			MEM1_icache_valid_CI;

	output reg [31:0] MEM2_PC;
	output reg 		MEM2_RFWr;
	output reg [2:0] MEM2_MUX2Sel;
	output reg [31:0] MEM2_MUX6Out;
	output reg [31:0] MEM2_ALU1Out;
	output reg [4:0] MEM2_RD;
	output reg [31:0] MEM2_CP0Out;
	output reg [2:0] MEM2_DMSel;
	output reg 		MEM2_cache_sel;
	output reg 		MEM2_DMWen;
	output reg 		MEM2_Exception;
	output reg 		MEM2_eret_flush;
	output reg 		MEM2_uncache_valid;
	output reg 		MEM2_DMen;
	output reg [31:0] MEM2_Paddr;
	output reg [3:0] MEM2_unCache_wstrb;
	output reg [31:0] MEM2_GPR_RT;
	output reg 		MEM2_DMRd;
	output reg 		MEM2_CP0Rd;
	output reg 		MEM2_TLB_flush;
	output reg 		MEM2_TLB_writeen;
	output reg 		MEM2_TLB_readen;
	output reg [1:0] MEM2_LoadOp;
	output reg [31:0] MEM2_wdata;
	output reg [31:0] MEM2_SCOut;
	output reg		MEM2_icache_valid_CI;

	always@(posedge clk)
		if(!rst || MEM1_Flush) begin
			//MEM2_PC <= 32'd0;
			MEM2_RFWr <= 1'b0;
			MEM2_MUX2Sel <= 3'd0;
			MEM2_MUX6Out <= 32'd0;
			MEM2_ALU1Out <= 32'd0;
			MEM2_RD <= 5'd0;
			MEM2_CP0Out <= 32'd0;
			MEM2_DMSel <= 3'd0;
			MEM2_cache_sel <= 1'b0;
			MEM2_DMWen <= 1'b0;
			MEM2_Exception <= 1'b0;
			MEM2_eret_flush <= 1'b0;
			MEM2_uncache_valid <= 1'b0;
			MEM2_DMen <= 1'b0;
			MEM2_Paddr <= 32'd0;
			MEM2_unCache_wstrb <= 4'd0;
			MEM2_GPR_RT <= 32'd0;
			MEM2_DMRd <= 1'b0;
			MEM2_CP0Rd <= 1'b0;
			MEM2_TLB_flush  <=   1'b0;
			MEM2_TLB_writeen<=   1'b0;
			MEM2_TLB_readen<= 1'b0;
			MEM2_LoadOp <= 2'b0;
			MEM2_wdata <= 32'b0;
			MEM2_SCOut <= 32'b0;
			MEM2_icache_valid_CI <= 1'b0;
		end
		else if(MEM1_MEM2Wr) begin
			MEM2_PC <= PC;
			MEM2_RFWr <= RFWr;
			MEM2_MUX2Sel <= MUX2Sel;
			MEM2_MUX6Out <= MUX6Out;
			MEM2_ALU1Out <= ALU1Out;
			MEM2_RD <= RD;
			MEM2_CP0Out <= CP0Out;
			MEM2_DMSel <= DMSel;
			MEM2_cache_sel <= cache_sel;
			MEM2_DMWen <= DMWen;
			MEM2_Exception <= Exception;
			MEM2_eret_flush <= eret_flush;
			MEM2_uncache_valid <= uncache_valid;
			MEM2_DMen <= DMen;
			MEM2_Paddr <= Paddr;
			MEM2_unCache_wstrb <= MEM1_dCache_wstrb;
			MEM2_GPR_RT <= GPR_RT;
			MEM2_DMRd <= DMRd;
			MEM2_CP0Rd <= CP0Rd;
			MEM2_TLB_flush  <=   MEM1_TLB_flush;
			MEM2_TLB_writeen<=   MEM1_TLB_writeen;
			MEM2_TLB_readen<= MEM1_TLB_readen;
			MEM2_LoadOp <= MEM1_LoadOp;
			MEM2_wdata <= MEM1_wdata;
			MEM2_SCOut <= MEM1_SCOut;
			MEM2_icache_valid_CI <= MEM1_icache_valid_CI;
		end
endmodule

module MEM2_WB(
	clk, rst,MEM2_WBWr, MEM2_Flush,PC, MUX2Out, MUX2Sel,
	RD, RFWr, DMOut,MEM2_TLB_writeen,MEM2_TLB_readen,MEM2_TLB_flush, MEM2_icache_valid_CI,

	WB_PC, WB_MUX2Out, WB_MUX2Sel, WB_RD, WB_RFWr, WB_DMOut,
	WB_TLB_writeen,WB_TLB_readen,WB_TLB_flush, WB_icache_valid_CI
	);
	input 			clk;
	input 			rst;
	input 			MEM2_WBWr;
	input 			MEM2_Flush;
	input 			MEM2_TLB_writeen;
	input 			MEM2_TLB_readen;
	input 			MEM2_TLB_flush;
	input [31:0]	PC;
	input [31:0] 	MUX2Out;
	input [2:0] 	MUX2Sel;
	input [4:0] 	RD;
	input  			RFWr;
	input [31:0] 	DMOut;
	input 			MEM2_icache_valid_CI;

	output reg [31:0] WB_PC;
	output reg [31:0] WB_MUX2Out;
	output reg [2:0] WB_MUX2Sel;
	output reg [4:0] WB_RD;
	output reg  	WB_RFWr;
	output reg [31:0] WB_DMOut;
	output reg 		WB_TLB_writeen;
	output reg 		WB_TLB_readen;
	output reg 		WB_TLB_flush;
	output reg 		WB_icache_valid_CI;

	always@(posedge clk)
		if(!rst || MEM2_Flush) begin
			//WB_PC <= 32'd0;
			WB_MUX2Out <= 32'd0;
			WB_MUX2Sel <= 3'd0;
			WB_RD <= 5'd0;
			WB_RFWr <= 1'b0;
			WB_DMOut <= 32'd0;
	    	WB_TLB_writeen<= 1'b0 ;
			WB_TLB_readen <= 1'b0 ;
			WB_TLB_flush  <= 1'b0 ;
			WB_icache_valid_CI <= 1'b0;
		end
		else if(MEM2_WBWr) begin
			WB_PC <= PC;
			WB_MUX2Out <= MUX2Out;
			WB_MUX2Sel <= MUX2Sel;
			WB_RD <= RD;
			WB_RFWr <= RFWr;
			WB_DMOut <= DMOut;
	    	WB_TLB_writeen<= MEM2_TLB_writeen ;
			WB_TLB_readen <= MEM2_TLB_readen ;
			WB_TLB_flush  <= MEM2_TLB_flush ;
			WB_icache_valid_CI <= MEM2_icache_valid_CI;
		end

endmodule