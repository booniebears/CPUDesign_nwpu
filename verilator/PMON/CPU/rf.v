module rf(
	Addr1, Addr2, Addr3, WD, RFWr, clk, rst,

	RD1, RD2
);
	input [4:0] 	Addr1;
	input [4:0] 	Addr2;
	input [4:0] 	Addr3;
	input [31:0] 	WD;
	input 			RFWr;
	input 			clk;
	input 			rst;
	output[31:0] 	RD1;
	output[31:0] 	RD2;
	reg[31:0] register[31:0];

	integer i;

	always@(posedge clk)
		if(!rst)
			for(i = 0; i <= 31; i = i + 1)
				register[i] <= 32'h0000_0000;
		else if(RFWr && Addr3 != 5'b0)
			register[Addr3] <= WD;

	assign RD1 = ((Addr1 == Addr3) && RFWr) ? WD : register[Addr1];
	assign RD2 = ((Addr2 == Addr3) && RFWr) ? WD : register[Addr2];

endmodule
