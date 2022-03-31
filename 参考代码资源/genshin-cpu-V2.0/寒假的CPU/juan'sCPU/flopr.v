module flopr
#(parameter n = 32)
(
    input            clk,
    input            rst,
    input [n-1:0]    flopr_data_in,
    input Wr,
    output [n-1:0]   flopr_data_out
);

reg [n-1:0]flopr;

always @(posedge clk,posedge rst) begin
    if(rst==1'b1)flopr<=0;
    else if(Wr==1'b1)flopr<=flopr_data_in;
    else flopr<=flopr;
end

assign flopr_data_out=flopr;


endmodule