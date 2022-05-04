module rhl(clk, Din_64, Din_32, RHLWr, RHLSel_Rd, RHLSel_Wr, RHLOut);
	input[63:0] Din_64;
	input[31:0] Din_32;
	input clk, RHLWr, RHLSel_Rd;
	input[1:0] RHLSel_Wr;
	output reg[31:0] RHLOut;
	reg[63:0] register;

	always@(posedge clk)
		if(RHLWr) 
			case(RHLSel_Wr)
				2'b00: register[31:0] <= Din_32;	// wr LO
				2'b01: register[63:32] <= Din_32;	// wr HI
				default: register <= Din_64;		// wr HI+LO
			endcase

	always@(RHLSel_Rd, RHLSel_Wr, Din_64, Din_32, RHLWr)
		if(RHLWr) begin
			if(RHLSel_Rd == 1'b0) begin				// rd LO
				if(RHLSel_Wr == 2'b00)
					RHLOut = Din_32;
				else if(RHLSel_Wr == 2'b10)
					RHLOut = Din_64[31:0];
				else
					RHLOut = register[31:0];
			end
			else begin								//rd HI
				if(RHLSel_Wr == 2'b01)
					RHLOut = Din_32;
				else if(RHLSel_Wr == 2'b10)
					RHLOut = Din_64[63:32];
				else
					RHLOut = register[63:32];
			end
		end
		else if(RHLSel_Rd)
			RHLOut = register[63:32];
		else
			RHLOut = register[31:0];


endmodule
