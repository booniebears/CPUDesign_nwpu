 `include "MacroDef.v"

 module ctrl(
	 	clk, rst, OP, Funct, rs, rt, CMPOut1, CMPOut2, EXE_isBranch,
 		Temp_ID_Excetion, IF_Flush,Temp_ID_ExcCode,ID_TLB_Exc,rd,CMPOut3,shamt,

		MUX1Sel, MUX2Sel, MUX3Sel, RFWr, RHLWr, DMWr, DMRd, NPCOp, EXTOp, ALU1Op,
		ALU1Sel, ALU2Op,RHLSel_Rd, RHLSel_Wr, DMSel,B_JOp, eret_flush, CP0WrEn,
		ID_ExcCode, ID_Exception, isBD, isBranch,CP0Rd, start, RHL_visit,dcache_en,
		ID_MUX11Sel,ID_MUX12Sel,ID_tlb_searchen,TLB_flush,TLB_writeen,TLB_readen,
		LoadOp,StoreOp,movz_movn,Branch_flush,LL_signal,SC_signal,Jump,
		icache_valid_CI, icache_op_CI, dcache_valid_CI, dcache_op_CI
	);
	input 			clk;
	input 			rst;
	input [5:0] 	OP;
	input [5:0] 	Funct;
	input [4:0] 	rs;
	input [4:0] 	rt;
	input [4:0] 	rd;
	input 			CMPOut1;
	input [1:0] 	CMPOut2;
	input 			EXE_isBranch;
	input 			Temp_ID_Excetion;
	input 			IF_Flush;
	input [4:0] 	Temp_ID_ExcCode;
	input 			ID_TLB_Exc;
	input 			CMPOut3;
	input [4:0]		shamt;

	output reg [1:0]MUX1Sel;
	output reg [2:0]MUX2Sel;
	output reg 		MUX3Sel;
	output reg 		RFWr;
	output reg 		RHLWr;
	output reg 		DMWr;
	output reg 		DMRd;
	output reg 		RHLSel_Rd;
	output reg 		B_JOp;
	output reg [1:0]NPCOp;
	output reg [1:0]EXTOp;
	output reg [4:0]ALU1Op;
	output reg 		ALU1Sel;
	output reg [3:0]ALU2Op;
	output reg [1:0]RHLSel_Wr;
	output reg [2:0]DMSel;
	output reg 		eret_flush;
	output reg 		CP0WrEn;
	output reg 		CP0Rd;
	output reg 		ID_Exception;
	output reg [4:0]ID_ExcCode;
	output 			isBD;
	output reg 		isBranch;
	output reg 		start;
	output reg 		RHL_visit;
	output reg 		dcache_en;
	output reg 		ID_MUX11Sel;
	output 			ID_MUX12Sel;
	output reg 		ID_tlb_searchen;
	output 			TLB_flush;
	output			TLB_readen;
	output			TLB_writeen;
	output reg [1:0]StoreOp;
	output reg [1:0]LoadOp;
	output  		movz_movn;
	output reg 		Branch_flush;
	output 			LL_signal;
	output 			SC_signal;
	output 			Jump;

	output reg 		icache_valid_CI;
	output reg 		icache_op_CI;
	output reg 		dcache_valid_CI;
	output reg [1:0]dcache_op_CI;

	wire 			ri;			//reserved instr
	reg 			rst_sign;
	reg 			Trap_Op;
	reg 			Cpu_Op;
	reg 			Cache_OP;

	always @(posedge clk) begin
		if (!rst)
			rst_sign <= 1'b1;
		else
			rst_sign <= 1'b0;
	end

	assign ri =
		RFWr || RHLWr || DMWr || (OP == `R_type && (Funct == `break || Funct == `syscall || Funct == `sync)) ||
		(OP == `cop0) || B_JOp || (OP == `j) || (OP == `jal) || Trap_Op || (OP == `pref) || Cpu_Op
		|| Cache_OP;

	always @(OP or Funct) begin		/* the generation of eret_flush */
		if (OP == `cop0 && Funct == `eret)
			eret_flush <= 1'b1;
		else
			eret_flush <= 1'b0;
	end

	always @(OP or rs) begin		/* the generation of CP0WrEn */
		if (OP == `cop0 && rs == `mtc0)
			CP0WrEn <= 1'b1;
		else
			CP0WrEn <= 1'b0;
	end

	always @(*) begin	/* the generation of Exception and ExcCode */
		if (Temp_ID_Excetion) begin
			ID_Exception <= 1'b1;
			ID_ExcCode <= Temp_ID_ExcCode;
		end
		else if (!ri && !rst_sign && !IF_Flush) begin
			ID_Exception <= 1'b1;
			ID_ExcCode <= `RI;
		end
		else if (Cpu_Op && !IF_Flush) begin
			ID_Exception <= 1'b1;
			ID_ExcCode <= `Cpu;
		end
		else if (OP == `R_type && Funct == `break) begin
			ID_Exception <= 1'b1;
			ID_ExcCode <= `Bp;
		end
		else if (OP == `R_type && Funct == `syscall) begin
			ID_Exception <= 1'b1;
			ID_ExcCode <= `Sys;
		end
		else begin
			ID_Exception <= 1'b0;
			ID_ExcCode <= 5'd0;
		end
	end

	always @(OP or Funct or rt) begin		/* the genenration of isBranch */
		 case (OP)
			6'b000100: isBranch <= 1;		/* BEQ */
			6'b000101: isBranch <= 1;		/* BNE */
			6'b000111: isBranch <= 1;		/* BGTZ */
			6'b000110: isBranch <= 1;		/* BLEZ */
			6'b000001:
				case (rt)
					5'b00001:			/* BGEZ */
						isBranch <= 1;
					5'b00011:			/* BGEZL */
						isBranch <= 1;
					5'b00000:			/* BLTZ */
						isBranch <= 1;
					5'b00010:			/* BLTZL */
						isBranch <= 1;
					5'b10001:			/* BGEZAL */
						isBranch <= 1;
					5'b10011:			/* BGEZALL */
						isBranch <= 1;
					5'b10000:			/* BLTZAL */
						isBranch <= 1;
					5'b10010:			/* BLTZALL */
						isBranch <= 1;
					default:
						isBranch <= 0;
				endcase
			6'b010100: isBranch <= 1;		/* BEQL */
			6'b010101: isBranch <= 1;		/* BNEl */
			6'b010111:
				if ( rt == 5'b0 )
					isBranch <= 1;		/* BGTZL */
				else
					isBranch <= 0;
			6'b010110:
				if ( rt == 5'b0 )
					isBranch <= 1;		/* BLEZL */
				else
					isBranch <= 0;
			6'b000000:
				if (Funct == 6'b001000 || Funct == 6'b001001)	/* JR, JALR */
					isBranch <= 1;
				else
					isBranch <= 0;
			6'b000010: isBranch <= 1;        /* J */
			6'b000011: isBranch <= 1;        /* JAL */
			default: isBranch <= 0;
		endcase
	end

	assign isBD = EXE_isBranch;		/* the generation of isBD */

	always @(OP or Funct or rt) begin		/* the genenration of B_JOp */
		 case (OP)
			6'b000100: B_JOp <= 1;		/* BEQ */
			6'b000101: B_JOp <= 1;		/* BNE */
			6'b000111: B_JOp <= 1;		/* BGTZ */
			6'b000110: B_JOp <= 1;		/* BLEZ */
			6'b000001:
				case (rt)
					5'b00001:			/* BGEZ */
						B_JOp <= 1;
					5'b00011:			/* BGEZL */
						B_JOp <= 1;
					5'b00000:			/* BLTZ */
						B_JOp <= 1;
					5'b00010:			/* BLTZL */
						B_JOp <= 1;
					5'b10001:			/* BGEZAL */
						B_JOp <= 1;
					5'b10011:			/* BGEZALL */
						B_JOp <= 1;
					5'b10000:			/* BLTZAL */
						B_JOp <= 1;
					5'b10010:			/* BLTZALL */
						B_JOp <= 1;
					default:
						B_JOp <= 0;
				endcase
			6'b010100: B_JOp <= 1;		/* BEQL */
			6'b010101: B_JOp <= 1;		/* BNEl */
			6'b010111:
				if ( rt == 5'b0)
					B_JOp <= 1;		/* BGTZL */
				else
					B_JOp <= 0;
			6'b010110:
				if ( rt == 5'b0 )
					B_JOp <= 1;		/* BLEZL */
				else
					B_JOp <= 0;
			6'b000000:
				if (Funct == 6'b001000 || Funct == 6'b001001)	/* JR, JALR */
					B_JOp <= 1;
				else
					B_JOp <= 0;
			default:   B_JOp <= 0;
		endcase
	end

	always @(OP or Funct or rt or rs) begin			/* the generation of RFWr */
		case (OP)
			6'b000000:
			case (Funct)
				6'b100000: RFWr <= 1;	/* ADD */
				6'b100001: RFWr <= 1;	/* ADDU */
				6'b100010: RFWr <= 1;	/* SUB */
				6'b100011: RFWr <= 1;	/* SUBU */
				6'b100101: RFWr <= 1;	/* OR */
				6'b100100: RFWr <= 1;	/* AND */
				6'b100111: RFWr <= 1;	/* NOR */
				6'b100110: RFWr <= 1;	/* XOR */
				6'b000100: RFWr <= 1;	/* SLLV */
				6'b000000: RFWr <= 1;	/* SLL */
				6'b000110: RFWr <= 1;	/* SRLV */
				6'b000010: RFWr <= 1;	/* SRL */
				6'b000111: RFWr <= 1;	/* SRAV */
				6'b000011: RFWr <= 1;	/* SRA */
				6'b101010: RFWr <= 1;	/* SLT */
				6'b101011: RFWr <= 1;	/* SLTU */
				6'b001001: RFWr <= 1;	/* JALR */
				6'b010000: RFWr <= 1;	/* MFHI */
				6'b010010: RFWr <= 1;	/* MFLO */
				6'b001010: RFWr <= 1;	/* MOVZ */
				6'b001011: RFWr <= 1;	/* MOVN */
				default: RFWr <= 0;
			endcase
			6'b001000: RFWr <= 1;		/* ADDI */
			6'b001001: RFWr <= 1;		/* ADDUI */
			6'b001111: RFWr <= 1;		/* LUI */
			6'b001101: RFWr <= 1;		/* ORI */
			6'b001100: RFWr <= 1;		/* ANDI */
			6'b001110: RFWr <= 1;		/* XORI */
			6'b001010: RFWr <= 1;		/* SLTI */
			6'b001011: RFWr <= 1;		/* SLTIU */
			6'b000001:
				case (rt)
					5'b10001,5'b10000,5'b10011,5'b10010:
						RFWr <= 1;/* BGEZAL BLTZAL BGEZALL BLTZALL */
					default:
						RFWr <= 0;
				endcase
			6'b000011: RFWr <= 1;		/* JAL */
			6'b011100:
				case(Funct)
					`clo :	RFWr <= 1;		/* CLO */
					`clz :	RFWr <= 1;		/* CLZ */
					`mul :	RFWr <= 1;		/* MUL */
					default: RFWr <= 0;
				endcase
			6'b100100: RFWr <= 1;		/* LBU */
			6'b100000: RFWr <= 1;		/* LB */
			6'b100101: RFWr <= 1;		/* LHU */
			6'b100001: RFWr <= 1;		/* LH */
			6'b100011: RFWr <= 1;		/* LW */
			6'b100010: RFWr <= 1;		/* LWL */
			6'b100110: RFWr <= 1;		/* LWR */
			6'b110000: RFWr <= 1;		/* LL */
			6'b111000: RFWr <= 1;		/* SC */
			`cop0:
				if (rs == `mfc0)
					RFWr <= 1;
				else
					RFWr <= 0;
			default: RFWr <= 0;
		endcase
	end

	always @(OP or Funct) begin			/* the generation of RHLWr */
		if (OP == 6'b000000) begin
			case (Funct)
				6'b010001: RHLWr <= 1;	/* MTHI */
				6'b010011: RHLWr <= 1;	/* MTLO */
				6'b011010: RHLWr <= 1;	/* DIV */
				6'b011011: RHLWr <= 1;	/* DIVU */
				6'b011000: RHLWr <= 1;	/* MULT */
				6'b011001: RHLWr <= 1;	/* MULTU */
				default: RHLWr <= 0;
			endcase
		end
		else if ( OP == `special2 ) begin
			case (Funct)
				`madd:	RHLWr <= 1;
				`maddu:	RHLWr <= 1;
				`msub:	RHLWr <= 1;
				`msubu:	RHLWr <= 1;
				default: RHLWr <= 0;
			endcase
		end
		else
			RHLWr <= 0;
	end

	always @(OP or Funct) begin			/* the generation of start */
		if (OP == 6'b000000) begin
			case (Funct)
				6'b011010: start <= 1;	/* DIV */
				6'b011011: start <= 1;	/* DIVU */
				6'b011000: start <= 1;	/* MULT */
				6'b011001: start <= 1;	/* MULTU */
				default: start <= 0;
			endcase
		end
		else if ( OP == `special2 ) begin
			case (Funct)
				`madd:	start <= 1;
				`maddu:	start <= 1;
				`msub:	start <= 1;
				`msubu:	start <= 1;
				`mul:	start <= 1;
				default: start <= 0;
			endcase
		end
		else
			start <= 0;
	end

	always @(OP) begin			/* the generation of DMWr */
		case (OP)
			6'b101000: DMWr <= 1;	/* SB */
			6'b101001: DMWr <= 1;	/* SH */
			6'b101011: DMWr <= 1;	/* SW */
			6'b101010: DMWr <= 1;	/* SWL */
			6'b101110: DMWr <= 1;	/* SWR */
			6'b111000: DMWr <= 1;	/* SC */
			default: DMWr <= 0;
		endcase
	end

	always @(OP) begin		/* the generation of DMRd */
		case (OP)
			6'b100100: DMRd <= 1;		/* LBU */
			6'b100000: DMRd <= 1;		/* LB */
			6'b100101: DMRd <= 1;		/* LHU */
			6'b100001: DMRd <= 1;		/* LH */
			6'b100011: DMRd <= 1;		/* LW */
			6'b100010: DMRd <= 1;		/* LWL */
			6'b100110: DMRd <= 1;		/* LWR */
			6'b110000: DMRd <= 1;		/* LL */
			default: DMRd <= 0;
		endcase
	end

	always @(OP or rs) begin		/* the generation of CP0Rd */
		if (OP == `cop0 && rs == `mfc0)
			CP0Rd <= 1'b1;
		else
			CP0Rd <= 1'b0;
	end

	always @(OP, Funct, rt) begin		/* the generation of ALU1Op */
		case (OP)
			6'b000000:
				case (Funct)
					6'b100000: ALU1Op <= 5'b00000;	/* ADD */
					6'b100010: ALU1Op <= 5'b00001;	/* SUB */
					6'b100101: ALU1Op <= 5'b00010;	/* OR */
					6'b100100: ALU1Op <= 5'b00011;	/* AND */
					6'b100111: ALU1Op <= 5'b00100;	/* NOR */
					6'b100110: ALU1Op <= 5'b00101;	/* XOR */
					6'b000100: ALU1Op <= 5'b00110;	/* SLLV */
					6'b000000: ALU1Op <= 5'b00110;	/* SLL */
					6'b000110: ALU1Op <= 5'b00111;	/* SRLV */
					6'b000010: ALU1Op <= 5'b00111;	/* SRL */
					6'b000111: ALU1Op <= 5'b01000;	/* SRAV */
					6'b000011: ALU1Op <= 5'b01000;	/* SRA */
					6'b101010: ALU1Op <= 5'b01001;	/* SLT */
					6'b101011: ALU1Op <= 5'b01010;	/* SLTU */
					6'b001010: ALU1Op <= 5'b01011;	/* MOVZ */
					6'b001011: ALU1Op <= 5'b01011;	/* MOVN */
					6'b100001: ALU1Op <= 5'b01100;	/* ADDU */
					6'b100011: ALU1Op <= 5'b10000;	/* SUBU */
					`teq:	   ALU1Op <= 5'b10001;
					`tge:	   ALU1Op <= 5'b10010;
					`tgeu:	   ALU1Op <= 5'b10011;
					`tlt:	   ALU1Op <= 5'b10100;
					`tltu:	   ALU1Op <= 5'b10101;
					`tne:	   ALU1Op <= 5'b10110;

					default: ALU1Op <= 5'b11111;
				endcase
			6'b001000: ALU1Op <= 5'b00000;		/* ADDI */
			6'b001001: ALU1Op <= 5'b01100;		/* ADDUI */
			6'b001101: ALU1Op <= 5'b00010;		/* ORI */
			6'b001100: ALU1Op <= 5'b00011;		/* ANDI */
			6'b001110: ALU1Op <= 5'b00101;		/* XORI */
			6'b001010: ALU1Op <= 5'b01001;		/* SLTI */
			6'b001011: ALU1Op <= 5'b01010;		/* SLTIU */
			6'b101000: ALU1Op <= 5'b00000;		/* SB */
			6'b101001: ALU1Op <= 5'b00000;		/* SH */
			6'b101011: ALU1Op <= 5'b00000;		/* SW */
			6'b101010: ALU1Op <= 5'b00000;		/* SWL */
			6'b101110: ALU1Op <= 5'b00000;		/* SWR */
			6'b111000: ALU1Op <= 5'b00000;		/* SC */
			6'b100100: ALU1Op <= 5'b00000;		/* LBU */
			6'b100000: ALU1Op <= 5'b00000;		/* LB */
			6'b100101: ALU1Op <= 5'b00000;		/* LHU */
			6'b100001: ALU1Op <= 5'b00000;		/* LH */
			6'b100011: ALU1Op <= 5'b00000;		/* LW */
			6'b100010: ALU1Op <= 5'b00000;		/* LWL */
			6'b100110: ALU1Op <= 5'b00000;		/* LWR */
			6'b110000: ALU1Op <= 5'b00000;		/* LL */
			6'b101111: ALU1Op <= 5'b00000;		/* CACHE */
			6'b011100:
				case(Funct)
					`clo :	ALU1Op  <= 5'b01101;		/*CLO*/
					`clz :	ALU1Op  <= 5'b01110;		/*CLZ*/
					default: ALU1Op <= 5'b11111;
				endcase
			6'b000001:
				case(rt)
					`teqi:	   ALU1Op <= 5'b10001;
					`tgei:	   ALU1Op <= 5'b10010;
					`tgeiu:	   ALU1Op <= 5'b10011;
					`tlti:	   ALU1Op <= 5'b10100;
					`tltiu:	   ALU1Op <= 5'b10101;
					`tnei:	   ALU1Op <= 5'b10110;
					default:   ALU1Op <= 5'b11111;
				endcase

			default: ALU1Op <= 5'b11111;
		endcase
	end

	always @(OP or Funct) begin		/* the generation of ALU2Op */
		case (OP)
			6'b000000:
				case (Funct)
					6'b011001: ALU2Op <= 4'b0000;		/* MULTU */
					6'b011000: ALU2Op <= 4'b0001;		/* MULT */
					6'b011011: ALU2Op <= 4'b0010;		/* DIVU */
					6'b011010: ALU2Op <= 4'b0011;		/* DIV */
					default:   ALU2Op <= 4'b0000;
				endcase
			`special2:
				case (Funct)
					`maddu:	ALU2Op <= 4'b0100;
					`madd:	ALU2Op <= 4'b0101;
					`msub:	ALU2Op <= 4'b0110;
					`msubu:	ALU2Op <= 4'b0111;
					`mul:	ALU2Op <= 4'b1000;
					default:ALU2Op <= 4'b0000;
				endcase
			default: ALU2Op <= 4'b0000;
		endcase
	end

	always @(OP or Funct) begin		/* the generation of ALU1Sel */
		if (OP == 6'b000000) begin
			case (Funct)
				6'b000000: ALU1Sel <= 1'b1;		/* SLL */
				6'b000011: ALU1Sel <= 1'b1;		/* SRA */
				6'b000010: ALU1Sel <= 1'b1;		/* SRL */
				default: ALU1Sel <= 1'b0;
			endcase
		end
		else
			ALU1Sel <= 1'b0;
	end

	always @(OP or Funct) begin		/* the generation of RHLSel_Wr */
		case (OP)
			6'b000000:
				case (Funct)
					6'b011001: RHLSel_Wr <= 2'b10;		/* MULTU */
					6'b011000: RHLSel_Wr <= 2'b10;		/* MULT */
					6'b011011: RHLSel_Wr <= 2'b10;		/* DIVU */
					6'b011010: RHLSel_Wr <= 2'b10;		/* DIV */
					6'b010001: RHLSel_Wr <= 2'b01;		/* MTHI */
					6'b010011: RHLSel_Wr <= 2'b00;		/* MTLO */
					default: RHLSel_Wr <= 2'b00;
				endcase
			`special2:
				case (Funct)
					`maddu:	RHLSel_Wr <= 2'b10;
					`madd:	RHLSel_Wr <= 2'b10;
					`msub:	RHLSel_Wr <= 2'b10;
					`msubu:	RHLSel_Wr <= 2'b10;
					default:RHLSel_Wr <= 2'b00;
				endcase
			default: RHLSel_Wr <= 2'b00;
		endcase
	end

	always @(OP or Funct) begin		/* the generation of RHL_visit */
		case (OP)
			6'b000000:
				case (Funct)
					6'b011001: RHL_visit <= 1'b1;		/* MULTU */
					6'b011000: RHL_visit <= 1'b1;		/* MULT */
					6'b011011: RHL_visit <= 1'b1;		/* DIVU */
					6'b011010: RHL_visit <= 1'b1;		/* DIV */
					6'b010001: RHL_visit <= 1'b1;		/* MTHI */
					6'b010011: RHL_visit <= 1'b1;		/* MTLO */
					6'b010000: RHL_visit <= 1'b1;		/* MFHI */
					6'b010010: RHL_visit <= 1'b1;		/* MFLO */
					default:   RHL_visit <= 1'b0;
				endcase
			`special2:
				case (Funct)
					`maddu:	RHL_visit <= 1'b1;
					`madd:	RHL_visit <= 1'b1;
					`msub:	RHL_visit <= 1'b1;
					`msubu:	RHL_visit <= 1'b1;
					default:RHL_visit <= 1'b0;
				endcase
			default: RHL_visit <= 1'b0;
		endcase
	end

	always @(OP or Funct) begin		/* the generation of RHLSel_Rd */
		case (OP)
			6'b000000:
			case (Funct)
				6'b010000: RHLSel_Rd <= 1'b1;		/* MFHI */
				6'b010010: RHLSel_Rd <= 1'b0;		/* MFLO */
				default: RHLSel_Rd <= 1'b0;
			endcase
			default: RHLSel_Rd <= 1'b0;
		endcase
	end

	always @(OP or rt) begin		/* the generation of EXTOp */
		case (OP)
			6'b001000: EXTOp <= 2'b01;			/* ADDI */
			6'b001001: EXTOp <= 2'b01;			/* ADDUI */
			6'b001010: EXTOp <= 2'b01;			/* SLTI */
			6'b001011: EXTOp <= 2'b01;			/* SLTUI */
			6'b001101: EXTOp <= 2'b00;			/* ORI */
			6'b001100: EXTOp <= 2'b00;			/* ANDI */
			6'b001110: EXTOp <= 2'b00;			/* XORI */
			6'b001111: EXTOp <= 2'b10;			/* LUI */
			6'b101000: EXTOp <= 2'b01;	      	/* SB */
			6'b101001: EXTOp <= 2'b01;	      	/* SH */
			6'b101011: EXTOp <= 2'b01;	   		/* SW */
			6'b101010: EXTOp <= 2'b01;			/* SWL */
			6'b101110: EXTOp <= 2'b01;			/* SWR */
			6'b111000: EXTOp <= 2'b01;			/* SC */
			6'b100100: EXTOp <= 2'b01;	  		/* LBU */
			6'b100000: EXTOp <= 2'b01;	  		/* LB */
			6'b100101: EXTOp <= 2'b01;	   		/* LHU */
			6'b100001: EXTOp <= 2'b01;	   		/* LH */
			6'b100011: EXTOp <= 2'b01;	        /* LW */
			6'b100010: EXTOp <= 2'b01;			/* LWL */
			6'b100110: EXTOp <= 2'b01;			/* LWR */
			6'b110000: EXTOp <= 2'b01;			/* LL */
			6'b000001:
				case ( rt )
					`teqi 	:	EXTOp <= 2'b01;
					`tgei 	:	EXTOp <= 2'b01;
					`tgeiu	:	EXTOp <= 2'b01;
					`tlti 	:	EXTOp <= 2'b01;
					`tltiu	:	EXTOp <= 2'b01;
					`tnei 	:	EXTOp <= 2'b01;
					default:	EXTOp <= 2'b00;
				endcase

			default: EXTOp <= 2'b00;
		endcase
	end

	always @(OP or rt or Funct or CMPOut1 or CMPOut2) begin		/* the genenration of NPCOp */
		 case (OP)
			6'b000100:				/* BEQ */
				if (CMPOut1 == 0)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b010100:				/* BEQL */
				if (CMPOut1 == 0)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b000101:				/* BNE */
				if (CMPOut1 == 1)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b010101:				/* BNEL */
				if (CMPOut1 == 1)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b000001:
				case (rt)
					5'b00001:			/* BGEZ */
						if (CMPOut2 != 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b00011:			/* BGEZL */
						if (CMPOut2 != 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b00000:			/* BLTZ */
						if (CMPOut2 == 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b00010:			/* BLTZL */
						if (CMPOut2 == 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b10001:			/* BGEZAL */
						if (CMPOut2 != 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b10011:			/* BGEZALL */
						if (CMPOut2 != 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b10000:			/* BLTZAL */
						if (CMPOut2 == 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;
					5'b10010:			/* BLTZALL */
						if (CMPOut2 == 2'b10)
							NPCOp <= 2'b01;
						else
							NPCOp <= 2'b00;

					default: NPCOp <= 2'b00;
				endcase
			6'b000110:				/* BLEZ */
				if(CMPOut2 != 2'b01)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b010110:				/* BLEZL */
				if(CMPOut2 != 2'b01 && rt == 5'b0)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b000111:				/* BGTZ */
				if(CMPOut2 == 2'b01)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b010111:				/* BGTZL */
				if(CMPOut2 == 2'b01 && rt == 5'b0)
					NPCOp <= 2'b01;
				else
					NPCOp <= 2'b00;
			6'b000010: NPCOp <= 2'b10;	/* J */
			6'b000011: NPCOp <= 2'b10;	/* JAL */
			6'b000000:
				if (Funct == 6'b001000 || Funct == 6'b001001)	/* JR or JALR */
					NPCOp <= 2'b11;
				else
					NPCOp <= 2'b00;
				default: NPCOp <= 2'b00;
		endcase
	end

	assign Jump = NPCOp != 2'b0;//imply the pipeline will jump or the branch is taken

	always @(OP or Funct) begin		/* the genenration of MUX1Sel, choose the TARGET REG */
		 case (OP)
			6'b000000: MUX1Sel <= 2'b01;
			6'b000001: MUX1Sel <= 2'b10;		/* BGEZAL, BLTZAL, BGEZALL, BLTZALL */
			/*此处没有对trap 型指令进行控制，由于之前已经将RFWr 置零*/
			6'b000011: MUX1Sel <= 2'b10;		/* JAL */
			`special2:
				case(Funct)
					`mul:	MUX1Sel <= 2'b01;
					default:MUX1Sel <= 2'b00;
				endcase

			default: MUX1Sel <= 2'b00;/* The target reg is RT reg */
		endcase
	end

	always @(OP or Funct or rs) begin		/* the genenration of MUX2Sel */
		 case (OP)
			6'b000000:
				case (Funct)
					6'b010000: MUX2Sel <= 3'b000;	/* MFHI */
					6'b010010: MUX2Sel <= 3'b000;	/* MFLO */
					6'b001001: MUX2Sel <= 3'b011;	/* JALR */
					6'b011001: MUX2Sel <= 3'b000;	/* MULTU */
					6'b011000: MUX2Sel <= 3'b000;	/* MULT */
					6'b011011: MUX2Sel <= 3'b000;	/* DIVU */
					6'b011010: MUX2Sel <= 3'b000;	/* DIV */
					default: MUX2Sel <= 3'b010;
				endcase
			`special2:
				case (Funct)
					`maddu:	MUX2Sel <= 3'b000;
					`madd:	MUX2Sel <= 3'b000;
					`msub:	MUX2Sel <= 3'b000;
					`msubu:	MUX2Sel <= 3'b000;
					`mul:	MUX2Sel <= 3'b000;
					default:MUX2Sel <= 3'b010;
				endcase
			6'b100000: MUX2Sel <= 3'b100;		/* LB */
			6'b100100: MUX2Sel <= 3'b100;		/* LBU */
			6'b100001: MUX2Sel <= 3'b100;		/* LH */
			6'b100010: MUX2Sel <= 3'b100;		/* LWL */
			6'b100110: MUX2Sel <= 3'b100;		/* LWR */
			6'b100101: MUX2Sel <= 3'b100;		/* LHU */
			6'b100011: MUX2Sel <= 3'b100;		/* LW */
			6'b110000: MUX2Sel <= 3'b100;		/* LL */
			6'b000001: MUX2Sel <= 3'b011;		/* BGEZAL or BLTZAL */
			6'b001111: MUX2Sel <= 3'b001;		/* LUI */
			6'b000011: MUX2Sel <= 3'b011;		/* JAL */
			`cop0:
				if (rs == `mfc0)
					MUX2Sel <= 3'b101;
				else
					MUX2Sel <= 3'b010;
			6'b111000: MUX2Sel <= 3'b111;		/* SC */

			default: MUX2Sel <= 3'b010;
		endcase
	end

	always @(OP or Funct) begin		/* the genenration of MUX3Sel */
		 case (OP)
			6'b000000: MUX3Sel <= 0;
			default: MUX3Sel <= 1;
		endcase
	end

	always @(OP or Funct) begin		/* the genenration of DMSel */
		 case (OP)
			6'b101000: DMSel <= 3'b000;		/* SB */
			6'b101001: DMSel <= 3'b001;		/* SH */
			6'b101011: DMSel <= 3'b010;		/* SW */
			6'b111000: DMSel <= 3'b010;		/* SC */
			6'b100100: DMSel <= 3'b011;		/* LBU */
			6'b100000: DMSel <= 3'b100;		/* LB */
			6'b100101: DMSel <= 3'b101;		/* LHU */
			6'b100001: DMSel <= 3'b110;		/* LH */
			default:   DMSel <= 3'b111;		/* LW LWL LWR */
		endcase
	end

	always @(OP) begin
		case(OP)
			6'b101000: dcache_en<= 1'b1;	      	/* SB */
			6'b101001: dcache_en<= 1'b1;	      	/* SH */
			6'b101011: dcache_en<= 1'b1;	   		/* SW */
			6'b111000: dcache_en<= 1'b1;	   		/* SC */
			6'b101010: dcache_en<= 1'b1;			/* SWL */
			6'b101110: dcache_en<= 1'b1;			/* SWR */
			6'b100100: dcache_en<= 1'b1;	  		/* LBU */
			6'b100000: dcache_en<= 1'b1;	  		/* LB */
			6'b100101: dcache_en<= 1'b1;	   		/* LHU */
			6'b100001: dcache_en<= 1'b1;	   		/* LH */
			6'b100011: dcache_en<= 1'b1;	        /* LW */
			6'b100010: dcache_en<= 1'b1;			/* LWL */
			6'b100110: dcache_en<= 1'b1;			/* LWR */
			6'b110000: dcache_en<= 1'b1;			/* LL */
			default: dcache_en <= 1'b0;
	endcase
	end

	always @(OP or Funct) begin		/* the genenration of MUX11Sel */
		if ( OP == `tlb && Funct == `tlbp)
		begin
			ID_tlb_searchen = 1'b1;
			ID_MUX11Sel = 1'b1;
		end
		else
		begin
			ID_tlb_searchen = 1'b0;
			ID_MUX11Sel = 1'b0;
		end
	end

	////used for the TLBR ,TLBWI, mtc0 entryHi, mtc0 Config, to clear the instrs after the two instr
	assign TLB_flush =
		( OP == `tlb && (Funct == `tlbr || Funct == `tlbwi || Funct == `tlbwr)) ||
		(CP0WrEn == 1'b1 && {rd,Funct[2:0]} == 8'b01010_000)	||
		(CP0WrEn == 1'b1 && {rd,Funct[2:0]} == 8'b10000_000);

	assign TLB_readen = ( OP == `tlb && (Funct == `tlbr));
	assign TLB_writeen = ( OP == `tlb && (Funct == `tlbwi || Funct == `tlbwr));

	//MUX12 for select w_index from the Index[3:0] and Random[3:0]
	assign ID_MUX12Sel = (OP == `tlb) && (Funct == `tlbwi);

	always @( OP ) begin
		case (OP)
			6'b100010: LoadOp <= 2'b10;			/* LWL */
			6'b100110: LoadOp <= 2'b11;			/* LWR */
			default :  LoadOp <= 2'b0;
		endcase
	end

	always @( OP ) begin
		case (OP)
			6'b101010: StoreOp <= 2'b10;			/* SWL */
			6'b101110: StoreOp <= 2'b11;			/* SWR */
			default :  StoreOp <= 2'b00;
		endcase
	end

	/*
		movz_movn = 1 imply that the instr is movz or movn and the condition is OK or
		the instr is not the movn or movz
	*/
	assign movz_movn = ~( (OP == 6'b0) && ((Funct==`movn&&CMPOut3) || (Funct==`movz&&!CMPOut3)) );

	//Trap instr
	always @(OP or Funct or rt) begin
		case (OP)
			6'b000000:
				case (Funct)
					`teq	:	Trap_Op <= 1'b1;
					`tge	:	Trap_Op <= 1'b1;
					`tgeu	:	Trap_Op <= 1'b1;
					`tlt	:	Trap_Op <= 1'b1;
					`tltu	:	Trap_Op <= 1'b1;
					`tne	:	Trap_Op <= 1'b1;
					default:	Trap_Op <= 1'b0;
				endcase
			6'b000001:
				case ( rt )
					`teqi 	:	Trap_Op <= 1'b1;
					`tgei 	:	Trap_Op <= 1'b1;
					`tgeiu	:	Trap_Op <= 1'b1;
					`tlti 	:	Trap_Op <= 1'b1;
					`tltiu	:	Trap_Op <= 1'b1;
					`tnei 	:	Trap_Op <= 1'b1;
					default:	Trap_Op <= 1'b0;
				endcase

			default:	Trap_Op <= 1'b0;
		endcase
	end

	/*
		Branch_flush, if the branch is taken, the Branch_flush = 0.
		Execute the delay slot only if the branch is taken
	*/
	always @(OP or rt or CMPOut1 or CMPOut2) begin
		case (OP)
			6'b010100:				/* BEQL */
				if (CMPOut1 == 0)
					Branch_flush <= 0;
				else
					Branch_flush <= 1;
			6'b010101:				/* BNEL */
				if (CMPOut1 == 1)
					Branch_flush <= 0;
				else
					Branch_flush <= 1;
			6'b000001:
				case (rt)
					5'b00011:			/* BGEZL */
						if (CMPOut2 != 2'b10)
							Branch_flush <= 0;
						else
							Branch_flush <= 1;
					5'b00010:			/* BLTZL */
						if (CMPOut2 == 2'b10)
							Branch_flush <= 0;
						else
							Branch_flush <= 1;
					5'b10011:			/* BGEZALL */
						if (CMPOut2 != 2'b10)
							Branch_flush <= 0;
						else
							Branch_flush <= 1;
					5'b10010:			/* BLTZALL */
						if (CMPOut2 == 2'b10)
							Branch_flush <= 0;
						else
							Branch_flush <= 1;

					default: Branch_flush <= 0;
				endcase
			6'b010110:				/* BLEZL */
				if(CMPOut2 != 2'b01 && rt == 5'b0)
					Branch_flush <= 0;
				else
					Branch_flush <= 1;
			6'b010111:				/* BGTZL */
				if(CMPOut2 == 2'b01 && rt == 5'b0)
					Branch_flush <= 0;
				else
					Branch_flush <= 1;

			default: Branch_flush <= 0;
		endcase
	end

	//LL SC signal
	assign LL_signal = (OP == 6'b110000);
	assign SC_signal = (OP == 6'b111000);

	//Cpu_Op signal
	always @(*) begin
		case (OP)
			6'b010001,6'b010010:
				case ( rs )
					5'b01000:
						Cpu_Op <= 1'b1;
					default: Cpu_Op <= 1'b0;
				endcase
			6'b011000,6'b011001:
				Cpu_Op <= 1'b1;
			6'b000000:
				if ( Funct == 6'b111111 && rs == 5'b0)
					Cpu_Op <= 1'b1;
				else if ( Funct == 6'b111111 && shamt == 5'b0)
					Cpu_Op <= 1'b1;
				else
					Cpu_Op <= 1'b0;

			default: Cpu_Op <= 1'b0;
		endcase
	end

		always@(OP or rt)	//generation of icache_valid_CI
		if(OP == 6'b101111) begin
			case(rt)
				5'b00000: icache_valid_CI = 1'b1;	/* Index Invalid */
				5'b10000: icache_valid_CI = 1'b1;	/* Hit Invalid */
				default:  icache_valid_CI = 1'b0;
			endcase
		end
		else
			icache_valid_CI = 1'b0;

	always@(OP or rt)		//generation of icache_op_CI
		if(OP == 6'b101111 && rt == 5'b00000)
			icache_op_CI = 1'b1;	/* Index Invalid */
		else
			icache_op_CI = 1'b0;	/* Hit Invalid */

	always@(OP or rt)		//generation of dcache_valid_CI
		if(OP == 6'b101111) begin
			case(rt)
				5'b00001: dcache_valid_CI = 1'b1;	/* Index Writeback Invalid */
				5'b10001: dcache_valid_CI = 1'b1;	/* Hit Invalid */
				5'b10101: dcache_valid_CI = 1'b1;	/* Hit Writeback Invalid */
				default:  dcache_valid_CI = 1'b0;
			endcase
		end
		else
			dcache_valid_CI = 1'b0;

	always@(OP or rt)		//generation of dcache_op_CI
		if(OP == 6'b101111) begin
			case(rt)
				5'b00001: dcache_op_CI = 2'b10;	/* Index Writeback Invalid */
				5'b10001: dcache_op_CI = 2'b01;	/* Hit Invalid */
				5'b10101: dcache_op_CI = 2'b11;	/* Hit Writeback Invalid */
				default:  dcache_op_CI = 2'b00;
			endcase
		end
		else
			dcache_op_CI = 2'b00;

	always @(OP or rt) begin
		if(OP == 6'b101111) begin
			case (rt)
				5'b00000:	Cache_OP = 1'b1;
				5'b01000:	Cache_OP = 1'b1;
				5'b10000:	Cache_OP = 1'b1;
				5'b00001:	Cache_OP = 1'b1;
				5'b01001:	Cache_OP = 1'b1;
				5'b10001:	Cache_OP = 1'b1;
				5'b10101:	Cache_OP = 1'b1;
				default:	Cache_OP = 1'b0;
			endcase
		end
		else
			Cache_OP = 1'b0;
	end

endmodule