`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:52 12/03/2014 
// Design Name: 
// Module Name:    DOT_TEST 
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
module DOT_TEST(
						input		clk,
						input		rstn,
						output	reg [8:1]	dot_r,
						output	reg [8:1]	dot_c

					);		
		reg	[43:0]	cnt;
	    reg clk_div16M;
	    reg clk_div32M;
	    reg clk_div64M;
	    reg clk_div128M;

		always @(posedge clk or negedge rstn)begin
			if(!rstn)
				cnt <= 44'h0;
			else cnt <= cnt +1'b1;
		end

		always @(posedge clk ) begin
			if(!rstn)
			begin
				clk_div16M	<=  1'b0;
				clk_div32M	<=  1'b0;
				clk_div64M	<=  1'b0;
				clk_div128M	<=  1'b0;
			end
			else
			begin
				clk_div16M	<=	cnt[0];
				clk_div32M	<=	cnt[1];
				clk_div64M	<=	cnt[2];
				clk_div128M	<=	cnt[3];
			end

		end
	
		always @(posedge clk or negedge rstn ) begin
				if(!rstn)begin
				dot_r <= 8'h11;
				dot_c <= 8'h11;
				end
				else if(clk_div128M==0&&clk_div64M==0&&clk_div32M==0&&clk_div16M==0)
				begin
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==0&&clk_div64M==0&&clk_div32M==0&&clk_div16M==1)
				begin
				  dot_r[3] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[3] <=1'b1;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==0&&clk_div64M==0&&clk_div32M==1&&clk_div16M==0)
				begin
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
				  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[3] <=1'b1;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==0&&clk_div64M==0&&clk_div32M==1&&clk_div16M==1)
				begin
				  dot_r[1] <=1'b1;
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
				  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[3] <=1'b1;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				end
				else if(clk_div128M==0&&clk_div64M==1&&clk_div32M==0&&clk_div16M==0)
				begin
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
				  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[3] <=1'b1;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==0&&clk_div64M==1&&clk_div32M==0&&clk_div16M==1)
				begin
				  dot_r[3] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[3] <=1'b1;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==0&&clk_div64M==1&&clk_div32M==1&&clk_div16M==0)
				begin
 				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==0&&clk_div64M==1&&clk_div32M==1&&clk_div16M==1)
				begin
				  dot_r[4] <=1'b0;
				  dot_r[5] <=1'b0;
				  dot_c[4] <=1'b0;
				  dot_c[5] <=1'b0;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;
				end
				else if(clk_div128M==1&&clk_div64M==0&&clk_div32M==0&&clk_div16M==0)
				begin
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;			  
				end
				else if(clk_div128M==1&&clk_div64M==0&&clk_div32M==0&&clk_div16M==1)
				begin
				  dot_r[4] <=1'b0;
				  dot_r[5] <=1'b0;
				  dot_c[4] <=1'b0;
				  dot_c[5] <=1'b0;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;			  
				end
				else if(clk_div128M==1&&clk_div64M==0&&clk_div32M==1&&clk_div16M==0)
				begin
				  dot_r[4] <=1'b1;
				  dot_r[5] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[1] <=1'b0;
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_r[8] <=1'b0;
				  dot_c[1] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				  dot_c[8] <=1'b0;				  
				end
				else if(clk_div128M==1&&clk_div64M==0&&clk_div32M==1&&clk_div16M==1)
				begin
				  dot_r[1] <=1'b1; 
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;	
				  dot_r[2] <=1'b0;
				  dot_r[3] <=1'b0; 
				  dot_r[4] <=1'b0;
				  dot_r[5] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_r[7] <=1'b0;
				  dot_c[2] <=1'b0;
				  dot_c[3] <=1'b0; 
				  dot_c[4] <=1'b0;
				  dot_c[5] <=1'b0;
				  dot_c[6] <=1'b0;
				  dot_c[7] <=1'b0;
				end
				else if(clk_div128M==1&&clk_div64M==1&&clk_div32M==0&&clk_div16M==0)
				begin
				  dot_r[1] <=1'b1; 
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;	
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
		 		  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b0; 
				  dot_r[4] <=1'b0;
				  dot_r[5] <=1'b0;
				  dot_r[6] <=1'b0;
				  dot_c[3] <=1'b0; 
				  dot_c[4] <=1'b0;
				  dot_c[5] <=1'b0;
				  dot_c[6] <=1'b0;
				end
				else if(clk_div128M==1&&clk_div64M==1&&clk_div32M==0&&clk_div16M==1)
				begin
				  dot_r[1] <=1'b1; 
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;	
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
		 		  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1; 
				  dot_c[3] <=1'b1; 
				  dot_r[6] <=1'b1;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b0;
				  dot_c[4] <=1'b0;
				  dot_r[5] <=1'b0;
				  dot_c[5] <=1'b0;
				end
				else if(clk_div128M==1&&clk_div64M==1&&clk_div32M==1&&clk_div16M==0)
				begin
				  dot_r[1] <=1'b1; 
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;	
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
		 		  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1; 
				  dot_c[3] <=1'b1; 
				  dot_r[5] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[6] <=1'b1;
				end
				// else if(clk_div128M==1&&clk_div64M==1&&clk_div32M==1&&clk_div16M==1)
				// begin
				//   dot_r[1] <=0; 
				//   dot_r[8] <=0;
				//   dot_r[2] <=1;
				//   dot_r[7] <=0;
				//   dot_r[3] <=0; 
				//   dot_r[5] <=0;
				//   dot_r[4] <=1;
				//   dot_r[6] <=1;
				//   dot_c[1] <=0;
				//   dot_c[8] <=0;
				// end
				// else if(clk_div128M==1&&clk_div64M==1&&clk_div32M==1&&clk_div16M==0)
				// begin
				//   dot_r[1] <=0; 
				//   dot_r[8] <=0;
				//   dot_r[2] <=0;
				//   dot_r[7] <=0;
				//   dot_r[3] <=1; 
				//   dot_r[5] <=1;
				//   dot_r[4] <=0;
				//   dot_r[6] <=0;
				//   dot_c[1] <=0;
				//   dot_c[8] <=0;
				// end
				else if(clk_div128M==1&&clk_div64M==1&&clk_div32M==1&&clk_div16M==1)
				begin
				  dot_r[1] <=1'b1; 
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;	
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
		 		  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1; 
				  dot_c[3] <=1'b1; 
				  dot_r[5] <=1'b0;
				  dot_c[5] <=1'b0;
				  dot_r[6] <=1'b1;
				  dot_c[4] <=1'b0;
				  dot_c[6] <=1'b1;
				  dot_r[4] <=1'b0;

				end
				else 
				begin
				  dot_r[1] <=1'b1; 
				  dot_r[8] <=1'b1;
				  dot_c[1] <=1'b1;
				  dot_c[8] <=1'b1;	
				  dot_r[2] <=1'b1;
				  dot_r[7] <=1'b1;
				  dot_c[2] <=1'b1;
		 		  dot_c[7] <=1'b1;
				  dot_r[3] <=1'b1; 
				  dot_c[3] <=1'b1; 
				  dot_r[5] <=1'b1;
				  dot_c[5] <=1'b1;
				  dot_r[4] <=1'b1;
				  dot_r[6] <=1'b1;
				  dot_c[4] <=1'b1;
				  dot_c[6] <=1'b1;
				end
		end

		// always @(posedge clk or negedge rstn)begin
		// 	if(!rstn)begin
		// 		dot_r <= 8'h00;
		// 		dot_c <= 8'h00;
		// 	end
		// 	else if(!cnt[3]) begin
		// 		dot_c <= 8'h00;
		// 		if(!(|dot_r) | (&dot_r))	dot_r <= 8'h01;
		// 		else	dot_r <= {dot_r[7:1], dot_r[8]};
		// 	end 
		// 	else begin
		// 		dot_r <= 8'hff;
		// 		if(!(|dot_c))	dot_c <= 8'hfe;
		// 		else dot_c <= {dot_c[7:1], dot_c[8]};
		// 	end
		// end

endmodule
