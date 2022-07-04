module cmp(
	GPR_RS,
	GPR_RT,
	
	CMPOut1,
	CMPOut2,
	CMPOut3
);
	input[31:0] GPR_RS, GPR_RT;

	output reg CMPOut1;
	output reg[1:0] CMPOut2;
	output CMPOut3;

	always@(GPR_RS, GPR_RT)
		if(GPR_RS == GPR_RT)
			CMPOut1 = 1'b0;		//equal
		else
			CMPOut1 = 1'b1;		//unequal

	always@(GPR_RS)
		if(GPR_RS == 32'd0)		//zero
			CMPOut2 = 2'b00;
		else if(GPR_RS[31] == 0)
			CMPOut2 = 2'b01;	//positive
		else
			CMPOut2 = 2'b10;	//negative

	assign CMPOut3 = GPR_RT==32'b0;

endmodule
