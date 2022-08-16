`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:28 12/02/2014 
// Design Name: 
// Module Name:    NUM_TEST 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module NUM_TEST(
						
	 input				clk,
	 input				clk_div8M,
	 input				rstn,
	 input	[7:0]	sw,
	 
	 output	reg [7:0]	num_csn,
	 output	reg		num_a,
	 output	reg		num_b,
	 output	reg		num_c,
	 output	reg		num_d,
	 output	reg		num_e,
	 output	reg		num_f,
	 output	reg		num_g,
	 output	reg		num_dp
						
    );
	 
	 
	 
	 reg		[31:0]		num;

	 always @ (posedge clk_div8M or negedge rstn)begin
		if(!rstn)
			num <= 32'b0;
		else
			num <= num + 1'b1;
	end

	//assign	num_csn = 4*num[2]+2*num[1]+num[0];
	//  reg	[43:0]	cnt;

	//  always @(posedge clk or negedge rstn)begin
	//  	if(!rstn)
	//  		cnt <= 44'h0;
	//  	else cnt <= cnt +1'b1;
	//  end
	always @(posedge clk_div8M ) begin
		 if (num[2:0]==3'b000)
		num_csn <= 8'b01111111;
		else if (num[2:0]==3'b001)
		num_csn <= 8'b10111111;
		else if (num[2:0]==3'b010)
		num_csn <= 8'b11011111;
		else if (num[2:0]==3'b011)
		num_csn <= 8'b11101111;
		else if (num[2:0]==3'b100)
		num_csn <= 8'b11110111;
		else if (num[2:0]==3'b101)
		num_csn <= 8'b11111011;
		else if (num[2:0]==3'b110)
		num_csn <= 8'b11111101;
		else if (num[2:0]==3'b111)
		num_csn <= 8'b11111110;
		else
		num_csn <= 8'b00000000;
		
	end
	 
	always @ (posedge clk_div8M)begin
		case(num[2:0])
			3'h7: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'h6e;	//H
			3'h6: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'h9e;	//E
			3'h5: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'h1c;	//L
			3'h4: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'h1c;	//L
			3'h3: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'hfc;	//O
			3'h2: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'hec;	//N
			3'h1: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'hce;	//P	
			3'h0: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'h7c;	//U
			default: {num_a, num_b, num_c ,num_d, num_e, num_f, num_g, num_dp}	<= 8'h00;	//8.
		endcase
	end

endmodule
