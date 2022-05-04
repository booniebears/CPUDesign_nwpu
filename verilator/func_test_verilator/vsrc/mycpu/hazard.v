module bypass(
	EX_RS, EX_RT, ID_RS, ID_RT, 
	MEM1_RD, MEM2_RD, EX_RD, WB_RD,
	MEM1_RFWr, MEM2_RFWr, EX_RFWr, WB_RFWr,
	
	MUX4Sel, MUX5Sel,
	MUX8Sel, MUX9Sel
	);
	input MEM1_RFWr, MEM2_RFWr, EX_RFWr, WB_RFWr;
	input[4:0] ID_RS, ID_RT, EX_RS, EX_RT, MEM1_RD, MEM2_RD, EX_RD, WB_RD;

	output reg[1:0] MUX4Sel, MUX5Sel;
	output reg[1:0] MUX8Sel, MUX9Sel;


	always@(EX_RFWr, MEM1_RFWr, MEM2_RFWr, ID_RS, MEM1_RD, MEM2_RD, EX_RD)
		if(EX_RFWr && (EX_RD != 5'd0) && (EX_RD == ID_RS))
			MUX4Sel = 2'b01;		//EX->ID/MEM1->EX for RS
		else if (MEM1_RFWr && (MEM1_RD != 5'd0) && (MEM1_RD == ID_RS))
			MUX4Sel = 2'b10;		//MEM1->ID/MEM2->EX for RS
		else if(MEM2_RFWr && (MEM2_RD != 5'd0) && (MEM2_RD == ID_RS))
			MUX4Sel = 2'b11;		//MEM2->ID/WB->EX for RS
		else
			MUX4Sel = 2'b00;		//NO bypass for RS

 	always@(EX_RFWr, MEM1_RFWr, MEM2_RFWr, ID_RT, MEM1_RD, MEM2_RD, EX_RD)
	 	if(EX_RFWr && (EX_RD != 5'd0) && (EX_RD == ID_RT))
			MUX5Sel = 2'b01;		//EX->ID/MEM1->EX for RT
		else if (MEM1_RFWr && (MEM1_RD != 5'd0) && (MEM1_RD == ID_RT))
			MUX5Sel = 2'b10;		//MEM1->ID/MEM2->EX for RT
		else if(MEM2_RFWr && (MEM2_RD != 5'd0) && (MEM2_RD == ID_RT))
			MUX5Sel = 2'b11;		//MEM2->ID/WB->EX for RT
		else
			MUX5Sel = 2'b00;		//NO bypass for RT

	always@(WB_RFWr, MEM1_RFWr, MEM2_RFWr, ID_RS, MEM1_RD, MEM2_RD, WB_RD)
		if (MEM1_RFWr && (MEM1_RD != 5'd0) && (MEM1_RD == ID_RS))
			MUX8Sel = 2'b10;		//MEM1->ID for RS
		else if(MEM2_RFWr && (MEM2_RD != 5'd0) && (MEM2_RD == ID_RS))
			MUX8Sel = 2'b11;		//MEM2->ID for RS
		else if(WB_RFWr && (WB_RD != 5'd0) && (WB_RD == ID_RS))
			MUX8Sel = 2'b01;		//WB->ID for RS
		else
			MUX8Sel = 2'b00;		//NO bypass for RS

 	always@(WB_RFWr, MEM1_RFWr, MEM2_RFWr, ID_RT, MEM1_RD, MEM2_RD, WB_RD)
		if (MEM1_RFWr && (MEM1_RD != 5'd0) && (MEM1_RD == ID_RT))
			MUX9Sel = 2'b10;		//MEM1->ID for RT
		else if(MEM2_RFWr && (MEM2_RD != 5'd0) && (MEM2_RD == ID_RT))
			MUX9Sel = 2'b11;		//MEM2->ID for RT
		else if(WB_RFWr && (WB_RD != 5'd0) && (WB_RD == ID_RT))
			MUX9Sel = 2'b01;		//WB->ID for RT
		else
			MUX9Sel = 2'b00;		//NO bypass for RT


endmodule

module stall(
	EX_RT, MEM1_RT, MEM2_RT, ID_RS, ID_RT,
	EX_DMRd, MEM1_DMRd, MEM2_DMRd, 
	BJOp, EX_RFWr,EX_CP0Rd, MEM1_CP0Rd,
	MEM1_ex, MEM1_RFWr, MEM2_RFWr,
	MEM1_eret_flush,isbusy, RHL_visit,
	iCache_data_ok,dCache_data_ok, MEM2_dCache_en,MEM_dCache_addr_ok,
    MEM1_cache_sel,MEM1_dCache_en, MEM1_dcache_valid_except_icache,
	MEM_last_stall, dcache_last_conflict,

	PCWr, IF_IDWr, MUX7Sel,isStall, data_ok,
	dcache_stall, icache_stall_0, icache_stall_1, ID_EXWr, EX_MEM1Wr, MEM1_MEM2Wr, MEM2_WBWr, PF_IFWr
	);
	input[4:0] EX_RT, MEM1_RT,MEM2_RT, ID_RS, ID_RT;
	input EX_DMRd, MEM1_DMRd, MEM2_DMRd, BJOp, EX_RFWr, MEM1_RFWr, MEM2_RFWr;
	input EX_CP0Rd, MEM1_CP0Rd, MEM1_ex, MEM1_eret_flush;
	input isbusy, RHL_visit;
	input iCache_data_ok;
	input dCache_data_ok;
	input MEM2_dCache_en;
	input MEM1_cache_sel;
	input MEM_dCache_addr_ok;
	input MEM1_dCache_en;
	input MEM1_dcache_valid_except_icache;
	input MEM_last_stall;
	input dcache_last_conflict;

	output reg PCWr, IF_IDWr, MUX7Sel;
	output isStall;
	output dcache_stall, icache_stall_0, icache_stall_1;
	output reg ID_EXWr,EX_MEM1Wr,MEM1_MEM2Wr,MEM2_WBWr;
	output reg PF_IFWr;
	output data_ok;

	wire addr_ok;
	wire conflict;
	wire stall_0, stall_1,stall_2;
	wire data_stall;
	
	assign addr_ok = MEM1_cache_sel | MEM_dCache_addr_ok;
	assign conflict = ~MEM1_cache_sel & dcache_last_conflict;

	assign stall_0 = (EX_DMRd | EX_CP0Rd | BJOp) & ((EX_RT == ID_RS) | (EX_RT == ID_RT) ) & EX_RFWr;
	assign stall_1 = (MEM1_DMRd | MEM1_CP0Rd) & ((MEM1_RT == ID_RS) | (MEM1_RT == ID_RT) ) & MEM1_RFWr;
	assign stall_2 = (BJOp & MEM2_DMRd) & ((MEM2_RT == ID_RS) | (MEM2_RT == ID_RT)) & MEM2_RFWr;

	assign data_stall = stall_0|stall_1|stall_2;
	assign data_ok = dCache_data_ok | ~MEM2_dCache_en;

	assign dcache_stall = ((~dCache_data_ok &MEM2_dCache_en) | (~addr_ok &MEM1_dCache_en) |~iCache_data_ok);
	assign isStall=(~(MEM1_ex | MEM1_eret_flush))&(dcache_stall | (isbusy & RHL_visit) | data_stall);
	//assign isStall = ~PCWr;
	assign icache_stall_0 = 
				(MEM_last_stall &MEM2_dCache_en) | (conflict &MEM1_dcache_valid_except_icache) | 
				(isbusy & RHL_visit) | data_stall ;
	assign icache_stall_1 = 
				(~dCache_data_ok &MEM2_dCache_en) | (~addr_ok &MEM1_dcache_valid_except_icache) | 
				(isbusy & RHL_visit) | data_stall ;

	always@(data_stall,MEM1_ex, MEM1_eret_flush, isbusy, RHL_visit, dcache_stall,data_ok)
	    if(MEM1_ex | MEM1_eret_flush) begin
			PCWr = 1'b1;
			PF_IFWr = 1'b1;
			IF_IDWr = 1'b1;
			ID_EXWr = 1'b1;
			EX_MEM1Wr =1'b1;
			MEM1_MEM2Wr = data_ok;
			MEM2_WBWr = data_ok;
			MUX7Sel = 1'b0;
		end
		else if(dcache_stall) begin
			PCWr = 1'b0;
			PF_IFWr = 1'b0;
			IF_IDWr = 1'b0;
			ID_EXWr = 1'b0;
			EX_MEM1Wr =1'b0;
			MEM1_MEM2Wr = 1'b0;
			MEM2_WBWr = 1'b0;
			MUX7Sel = 1'b1;
		end
		else if(isbusy & RHL_visit) begin
			PCWr = 1'b0;
			PF_IFWr = 1'b0;
			IF_IDWr = 1'b0;
			ID_EXWr = 1'b1;
			EX_MEM1Wr =1'b1;
			MEM1_MEM2Wr = 1'b1;
			MEM2_WBWr = 1'b1;
			MUX7Sel = 1'b1;
		end
		else if(data_stall) begin
			PCWr = 1'b0;
			PF_IFWr = 1'b0;
			IF_IDWr = 1'b0;
			ID_EXWr = 1'b1;
			EX_MEM1Wr =1'b1;
			MEM1_MEM2Wr = 1'b1;
			MEM2_WBWr = 1'b1;
			MUX7Sel = 1'b1;
		end
		else begin
			PCWr = 1'b1;
			PF_IFWr = 1'b1;
			IF_IDWr = 1'b1;
			ID_EXWr = 1'b1;
			EX_MEM1Wr =1'b1;
			MEM1_MEM2Wr = 1'b1;
			MEM2_WBWr = 1'b1;
			MUX7Sel = 1'b0;
		end

endmodule
